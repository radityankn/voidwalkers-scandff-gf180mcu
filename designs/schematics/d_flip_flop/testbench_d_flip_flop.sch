v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 80 -260 880 140 {flags=graph
y1=0
y2=3.4
ypos1=-0.68
ypos2=2.72
divy=5
subdivy=4
unity=1
x1=9.0111568e-08
x2=2.119432e-07
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
node="clk
d
q
probe[0]
probe[1]
probe[2]
probe[3]"
color="4 6 15 7 8 9 10"
dataset=-1
unitx=1
logx=0
logy=0
legend=0
digital=1
autoload=0
rainbow=1
hilight_wave=2}
N -550 -60 -550 -40 {lab=CLK}
N -550 20 -550 50 {lab=VSS}
N -300 -70 -300 -50 {lab=D}
N -300 10 -300 40 {lab=VSS}
N -480 -250 -480 -230 {lab=VDD}
N -480 -170 -480 -140 {lab=VSS}
N -30 -210 -10 -210 {lab=Q}
N -30 -230 -10 -230 {lab=CLK_INV}
N -30 -190 -10 -190 {lab=QN}
N -30 -170 -10 -170 {lab=PROBE[3:0]}
C {vsource.sym} -550 -10 0 0 {name=V1 value="PULSE(0 3.3 0n 0.1n 0.1n 5n 10n)" savecurrent=false}
C {lab_wire.sym} -550 -60 3 1 {name=p24 sig_type=std_logic lab=CLK}
C {lab_wire.sym} -330 -230 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -330 -190 0 0 {name=p3 sig_type=std_logic lab=D}
C {lab_wire.sym} -330 -170 0 0 {name=p4 sig_type=std_logic lab=CLK}
C {lab_wire.sym} -10 -210 0 1 {name=p6 sig_type=std_logic lab=Q}
C {vsource.sym} -300 -20 0 0 {name=V2 value="PULSE(0 3.3 0n 0.1n 0.1n 50n 100n)" savecurrent=false}
C {lab_wire.sym} -300 -70 3 1 {name=p8 sig_type=std_logic lab=D}
C {vsource.sym} -480 -200 0 0 {name=V3 value=3.3 savecurrent=false}
C {lab_wire.sym} -480 -250 3 1 {name=p10 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} -550 190 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -30 210 0 0 {name=NGSPICE only_toplevel=true
value="
.options method=trap rawfile=binary
.options solver=klu nomod
.control
save all

tran 0.1n 5u

write testbench_d_flip_flop.raw
.endc
"}
C {lab_wire.sym} -300 40 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -550 50 3 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -480 -140 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {vsource.sym} -550 -220 0 0 {name=V4 value=0 savecurrent=false}
C {lab_wire.sym} -550 -250 3 1 {name=p11 sig_type=std_logic lab=VSS}
C {gnd.sym} -550 -190 0 1 {name=l1 lab=GND}
C {lab_wire.sym} -330 -210 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -330 -150 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/launcher.sym} 175 -365 0 0 {name=h1
descr="Click left mouse button here with control key
pressed to load/unload waveforms in graph."
tclcommand="
xschem raw_read $netlist_dir/testbench_d_flip_flop.raw tran"
}
C {lab_wire.sym} -10 -230 0 1 {name=p13 sig_type=std_logic lab=CLK_INV}
C {lab_wire.sym} -10 -170 0 1 {name=p14 sig_type=std_logic lab=PROBE[3:0]}
C {lab_wire.sym} -10 -190 0 1 {name=p15 sig_type=std_logic lab=QN}
C {schematics/d_flip_flop.sym} -180 -190 0 0 {name=x1}
