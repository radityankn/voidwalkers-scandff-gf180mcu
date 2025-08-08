v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -530 150 270 550 {flags=graph
y1=-0.045
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=6e-09
x2=4.6e-08
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
node="y
in"
color="4 6"
dataset=-1
unitx=1
logx=0
logy=0
}
N -390 -30 -370 -30 {lab=#net1}
N -390 10 -380 10 {lab=GND}
N -380 10 -380 30 {lab=GND}
N -370 -30 -300 -30 {lab=#net1}
N -380 30 -300 30 {lab=GND}
N -760 -30 -690 -30 {lab=in}
N -760 -30 -760 -20 {lab=in}
N -390 -10 -350 -10 {lab=y}
N -760 40 -500 40 {lab=GND}
N -500 30 -500 40 {lab=GND}
N -500 30 -380 30 {lab=GND}
N -740 -50 -740 -30 {lab=in}
C {devices/code_shown.sym} -80 -80 0 0 {name=NGSPICE1 only_toplevel=true
value="
.options method=trap rawfile=binary
.options solver=klu nomod
.control
save all

tran 1n 40n

write untitled-1.raw
.endc
"}
C {devices/launcher.sym} -165 -215 0 0 {name=h1
descr="Click left mouse button here with control key
pressed to load/unload waveforms in graph."
tclcommand="
xschem raw_read $netlist_dir/untitled-1.raw tran"
}
C {devices/code_shown.sym} -450 -390 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {gnd.sym} -380 30 0 0 {name=l1 lab=GND}
C {vsource.sym} -760 10 0 0 {name=V1 value="PULSE(0 3.3 0n 1n 1n 10n 20n)" savecurrent=false}
C {lab_wire.sym} -350 -10 0 0 {name=p1 sig_type=std_logic lab=y}
C {vsource.sym} -300 0 0 0 {name=V2 value=3.3 savecurrent=false}
C {lab_wire.sym} -740 -50 0 0 {name=p2 sig_type=std_logic lab=in}
C {schematics/mux2x1/inv.sym} -540 -10 0 0 {name=x1}
