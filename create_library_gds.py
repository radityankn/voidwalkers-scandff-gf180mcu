#!/usr/bin/env python3
"""
Create a library GDS that contains `unit_nmos` and `unit_pmos` as separate top-level
cells so they can be instantiated directly from KLayout's library panel.

The script simply merges the two source GDS files without adding any additional
hierarchy, leaving both imported cells as top cells in the output file.
"""

# Try to import the KLayout Python module.  When the script is executed inside
# KLayout's bundled Python interpreter `import pya` works out-of-the-box.  When
# run with a standalone Python installation we fall back to the PyPI package
# `klayout` which exposes the same DB API under `klayout.db`.
try:
    import pya  # type: ignore
    if not hasattr(pya, "Layout"):
        raise ImportError  # trigger fallback below if "Layout" is missing
except ImportError:
    from klayout import db as pya  # type: ignore

import os
import sys

NMOS_GDS = "designs/klayout_libs/unit_nmos.gds"
PMOS_GDS = "designs/klayout_libs/unit_pmos.gds"
# Hard-coded aggregation order.  Update paths or add more entries as needed.
ORDERED_GDS = [
    "designs/libs/core_analog/unit_nmos/unit_nmos.gds",
    "designs/libs/core_analog/unit_pmos/unit_pmos.gds",
    "designs/libs/core_analog/inv/inv.gds",
]

OUTPUT_GDS = "designs/klayout_libs/analog_unit_devices.gds"  # library file name


def build_library():
    for src in ORDERED_GDS:
        if not os.path.exists(src):
            print(f"Error: source GDS not found: {src}")
            return False

    # Create empty layout and merge inputs
    layout = pya.Layout()  # type: ignore[attr-defined]
    # Read the first file to set dbu, then merge the rest in order
    first = ORDERED_GDS[0]
    layout.read(first)
    for g in ORDERED_GDS[1:]:
        layout.read(g)

    # ------------------------------------------------------------------
    # Post-merge clean-up: remove only *orphan* duplicate cells whose names
    # contain a "$" and have no parents.  Duplicates that live *inside* other
    # hierarchy (e.g. unit_nmos$1 under some macro) must be preserved.
    # ------------------------------------------------------------------
    for cell in list(layout.each_cell()):
        if "$" in cell.name and cell.parent_cells() == 0:
            print(f"  - Deleting orphan duplicate top cell {cell.name}")
            layout.delete_cell(cell.cell_index())

    # ------------------------------------------------------------------
    # If the canonical unit cell (unit_nmos / unit_pmos) acquired a parent it
    # will no longer be a top cell.  Create a thin wrapper with the original
    # name to restore top-level visibility while leaving all existing
    # references intact.
    # ------------------------------------------------------------------
    for base in ("unit_nmos", "unit_pmos"):
        cell = layout.cell(base)
        if cell is None:
            continue

        core_name = f"{base}_core"

        # If no *_core yet, rename the canonical cell
        if not layout.cell(core_name):
            cell.name = core_name
        else:
            core_name = layout.cell(core_name).name

        # Ensure wrapper exists with the original base name
        if not layout.cell(base):
            wrapper = layout.create_cell(base)
            core_idx = layout.cell(core_name).cell_index()
            wrapper.insert(pya.CellInstArray(core_idx, pya.Trans()))  # type: ignore[attr-defined]
            print(f"  - Wrapper cell '{base}' created (references '{core_name}')")

    # ------------------------------------------------------------------
    # Final summary
    # ------------------------------------------------------------------
    top_cells = [c for c in layout.each_cell() if c.parent_cells() == 0]
    print("\nTop-level cells in aggregated library:")
    for c in top_cells:
        print(f"  - {c.name}")

    # Write library gds
    layout.write(OUTPUT_GDS)
    print(f"Library GDS written to: {OUTPUT_GDS}\nDatabase unit: {layout.dbu} µm")
    return True


if __name__ == "__main__":
    print("Creating analog unit-device library GDS ...")
    ok = build_library()
    sys.exit(0 if ok else 1) 