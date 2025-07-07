#!/usr/bin/python
"""
Update KLayout Library Names for FOSS Flow

Scans GDS files under /foss/designs/libs and changes their library name 
from default (usually 'LIB') to match their base filename (without extension).
Optionally creates symbolic links to ~/.klayout/libraries/ for KLayout access.

This CI script is designed to work within the FOSS design flow environment.
Forces library name updates to match the base filename for consistency.

Usage:
    python designs/CI/update_klayout_library.py [--dry-run] [--backup] [--no-symlinks]
"""

import os
import sys
import argparse
import shutil
from pathlib import Path

# Add project root to path for imports
sys.path.insert(0, str(Path(__file__).parent.parent))

try:
    import pya
    print("✓ Using KLayout Python API")
except ImportError:
    print("✗ KLayout Python API not available")
    print("Please run in KLayout environment or install klayout package")
    sys.exit(1)


def find_gds_files(base_dir):
    """Find all GDS files under the base directory."""
    gds_files = []
    for root, dirs, files in os.walk(base_dir):
        for file in files:
            if file.endswith('.gds'):
                gds_files.append(os.path.join(root, file))
    return sorted(gds_files)


def get_library_info(gds_file):
    """Get current library name and top cell name from GDS file."""
    try:
        ly = pya.Layout()
        ly.read(gds_file)
        
        # Get top cell
        top_cell = ly.top_cell()
        if not top_cell:
            return None, None, "No top cell found"
            
        top_cell_name = top_cell.name
        
        # Force library name to match base filename (without extension)
        base_filename = os.path.splitext(os.path.basename(gds_file))[0]
        
        # Always report "needs update" so we force update to filename
        current_lib_name = "LIB"  # Always report as LIB to force update
        target_lib_name = base_filename  # Use filename as target
        
        return current_lib_name, target_lib_name, None
        
    except Exception as e:
        return None, None, str(e)


def update_gds_library_name(gds_file, new_lib_name, backup=False):
    """Update the library name in a GDS file."""
    try:
        # Create backup if requested
        if backup:
            backup_file = gds_file + '.backup'
            shutil.copy2(gds_file, backup_file)
            print(f"  Created backup: {backup_file}")
        
        # Read the GDS file
        ly = pya.Layout()
        ly.read(gds_file)
        
        # Set up save options with new library name
        opt = pya.SaveLayoutOptions()
        opt.format = "GDS2"
        opt.gds2_libname = new_lib_name
        
        # Write back to same file
        ly.write(gds_file, opt)
        
        return True, None
        
    except Exception as e:
        return False, str(e)


def create_klayout_symlink(gds_file, cell_name, dry_run=False):
    """Create symbolic link to ~/.klayout/libraries/ if it doesn't exist."""
    try:
        # Get absolute path to GDS file
        abs_gds_path = os.path.abspath(gds_file)
        
        # Create KLayout libraries directory if it doesn't exist
        klayout_libs_dir = Path.home() / ".klayout" / "libraries"
        
        if not dry_run:
            klayout_libs_dir.mkdir(parents=True, exist_ok=True)
        
        # Create symlink with cell name
        symlink_name = f"{cell_name}.gds"
        symlink_path = klayout_libs_dir / symlink_name
        
        if symlink_path.exists() or symlink_path.is_symlink():
            # Check if it points to the same file
            if symlink_path.is_symlink():
                current_target = os.readlink(symlink_path)
                if os.path.abspath(current_target) == abs_gds_path:
                    return True, "Symlink already exists and points to correct file"
                else:
                    return False, f"Symlink exists but points to different file: {current_target}"
            else:
                return False, f"File exists but is not a symlink: {symlink_path}"
        
        if dry_run:
            return True, f"Would create symlink: {symlink_path} → {abs_gds_path}"
        
        # Create the symbolic link
        os.symlink(abs_gds_path, symlink_path)
        return True, f"Created symlink: {symlink_path} → {abs_gds_path}"
        
    except Exception as e:
        return False, f"Failed to create symlink: {str(e)}"


def main():
    parser = argparse.ArgumentParser(description="Update GDS library names to match base filenames")
    parser.add_argument("--dry-run", action="store_true", 
                       help="Show what would be done without making changes")
    parser.add_argument("--backup", action="store_true",
                       help="Create backup files before modifying")
    parser.add_argument("--base-dir", default="/foss/designs/libs",
                       help="Base directory to scan for GDS files (default: /foss/designs/libs)")
    parser.add_argument("--no-symlinks", action="store_true",
                       help="Skip creating symbolic links to ~/.klayout/libraries/")
    
    args = parser.parse_args()
    
    base_dir = Path(args.base_dir)
    if not base_dir.exists():
        print(f"✗ Base directory '{base_dir}' does not exist")
        return 1
    
    print(f"Scanning for GDS files under: {base_dir}")
    gds_files = find_gds_files(base_dir)
    
    if not gds_files:
        print("No GDS files found")
        return 0
    
    print(f"Found {len(gds_files)} GDS file(s):")
    
    updates_needed = []
    symlink_actions = []
    errors = []
    
    # First pass: analyze all files
    for gds_file in gds_files:
        rel_path = os.path.relpath(gds_file)
        print(f"\nAnalyzing: {rel_path}")
        
        current_lib, target_lib, error = get_library_info(gds_file)
        
        if error:
            print(f"  ✗ Error: {error}")
            errors.append((gds_file, error))
            continue
            
        print(f"  Current library name: {current_lib}")
        print(f"  Target library name: {target_lib}")
        
        if current_lib == target_lib:
            print(f"  ✓ Library name already matches target")
        else:
            print(f"  → Will update library name: '{current_lib}' → '{target_lib}'")
            updates_needed.append((gds_file, target_lib))
        
        # Check symlink status
        if not args.no_symlinks:
            success, message = create_klayout_symlink(gds_file, target_lib, dry_run=True)
            if success:
                if "already exists" in message:
                    print(f"  ✓ KLayout symlink: {message}")
                else:
                    print(f"  → KLayout symlink: {message}")
                    symlink_actions.append((gds_file, target_lib))
            else:
                print(f"  ✗ KLayout symlink: {message}")
    
    # Summary
    print(f"\n{'='*60}")
    print(f"Summary:")
    print(f"  Files analyzed: {len(gds_files)}")
    print(f"  Updates needed: {len(updates_needed)}")
    if not args.no_symlinks:
        print(f"  Symlinks to create: {len(symlink_actions)}")
    print(f"  Errors: {len(errors)}")
    
    if errors:
        print(f"\nErrors encountered:")
        for gds_file, error in errors:
            print(f"  {os.path.relpath(gds_file)}: {error}")
    
    if not updates_needed and not symlink_actions:
        print("\nNo actions needed!")
        return 0
    
    if args.dry_run:
        print(f"\nDry run mode - no changes made")
        return 0
    
    # Second pass: apply updates
    success_count = 0
    symlink_success_count = 0
    
    if updates_needed:
        print(f"\nApplying library name updates...")
        for gds_file, new_lib_name in updates_needed:
            rel_path = os.path.relpath(gds_file)
            print(f"\nUpdating: {rel_path}")
            print(f"  Setting library name to: {new_lib_name}")
            
            success, error = update_gds_library_name(gds_file, new_lib_name, args.backup)
            
            if success:
                print(f"  ✓ Successfully updated")
                success_count += 1
            else:
                print(f"  ✗ Failed: {error}")
    
    # Create symlinks
    if symlink_actions and not args.no_symlinks:
        print(f"\nCreating KLayout symlinks...")
        for gds_file, cell_name in symlink_actions:
            rel_path = os.path.relpath(gds_file)
            print(f"\nCreating symlink for: {rel_path}")
            
            success, message = create_klayout_symlink(gds_file, cell_name, dry_run=False)
            
            if success:
                print(f"  ✓ {message}")
                symlink_success_count += 1
            else:
                print(f"  ✗ {message}")
    
    print(f"\n{'='*60}")
    print(f"Final Summary:")
    if updates_needed:
        print(f"  Library updates attempted: {len(updates_needed)}")
        print(f"  Successful updates: {success_count}")
        print(f"  Failed updates: {len(updates_needed) - success_count}")
    
    if symlink_actions and not args.no_symlinks:
        print(f"  Symlinks attempted: {len(symlink_actions)}")
        print(f"  Successful symlinks: {symlink_success_count}")
        print(f"  Failed symlinks: {len(symlink_actions) - symlink_success_count}")
    
    total_attempted = len(updates_needed) + len(symlink_actions)
    total_successful = success_count + symlink_success_count
    
    return 0 if total_successful == total_attempted else 1


if __name__ == "__main__":
    sys.exit(main()) 