import os


def run_ngspice(netlist, sim_dir):
    os.makedirs(sim_dir, exist_ok=True)
    with open(f"{sim_dir}/netlist.spice", "w") as f:
        f.write(netlist)
    print(f"Running ngspice in {sim_dir}")
    os.system(f"ngspice -b {sim_dir}/netlist.spice")

#======================================================
# Testbench Main
#======================================================
def netlist_test_bench(netlist_file):
    with open(netlist_file, "r") as f:
        return f.read()

#======================================================
# PVT Header
#======================================================
def netlist_pvt_header():
    netlist = ""
    netlist += netlist_model()
    netlist += netlist_power(vdda=3.3)
    netlist += netlist_bias(i_bias=50e-6)
    return netlist

def netlist_model(corner="TT"):

    return f"""
    * ======================================================
    * Model
    * ======================================================
    .include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
    .lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
    """
def netlist_power(vdda=3.3):
    return f"""
    * ======================================================
    * Power Supplies
    * ======================================================
    V_vssa vssa GND 0
    V_vdda vdda vssa {vdda}
    """

def netlist_bias(i_bias=50e-6):
    return f"""
    * ======================================================
    * Bias Current
    * ======================================================
    I_bias vdda i_bias {i_bias}
    """

#======================================================
# Testbench Wiring
#======================================================
def netlist_feedback_unity():
    return f"""
    * ======================================================
    * Feedback Connections
    * ======================================================
    V_jumper_fb out in_n 0
    V_jumper_in in in_p 0
    """
def netlist_stimulus_dc(vin_dc=1.5):
    return f"""
    * ======================================================
    * Stimulus
    * ======================================================
    V_src in vssa {vin_dc}
    """

#======================================================
# Simulation Control Blocks
#======================================================
def netlist_sim_op(filename="op.log"):
    return f"""
    * ======================================================
    * Simulation DC operating point
    * ======================================================
    .control
    OP
    show all > {filename}
    .endc

    """

def netlist_sim_dc(start=0, stop=3.3, step=0.01, filename="results.raw"):
    return f"""
    * ======================================================
    * Simulation DC sweep
    * ======================================================
    .control
    save all
    DC V_src {start} {stop} {step}
    write {filename}
    .endc

    """