v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 580 -1470 1380 -1070 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5e-07
x2=1.05e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=""
color=""
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -430 420 370 820 {flags=graph
y1=-1.6
y2=0.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.118093e-06
x2=1.0748129e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="y
i(v3)
i(v2)
i(v1)"
color="6 9 8 7"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/mux_nand_tb.raw}
T {.include mux_nand.spice
.include nand.spice
.include inv.spice
.control
save all
tran 1n 1u
plot V(A) V(B) V(S) V(Y)
.endc
} 375 5 0 0 0.4 0.4 {}
N 202.5 -20 257.5 -20 {lab=y}
N -315 -112.5 -197.5 -112.5 {lab=#net1}
N -197.5 -112.5 -197.5 -22.5 {lab=#net1}
N -197.5 -22.5 -100 -20 {lab=#net1}
N -575 0 -100 0 {lab=#net2}
N -580 115 -475 115 {lab=GND}
N -475 115 -475 157.5 {lab=GND}
N -475 132.5 -317.5 132.5 {lab=GND}
N -475 132.5 -475 157.5 {lab=GND}
N -642.5 -52.5 -315 -52.5 {lab=GND}
N -642.5 -52.5 -642.5 140 {lab=GND}
N -642.5 140 -642.5 160 {lab=GND}
N -642.5 160 -475 157.5 {lab=GND}
N -580 115 -575 62.5 {lab=GND}
N -575 60 -575 62.5 {lab=GND}
N 200 -20 202.5 -20 {lab=y}
N -317.5 22.5 -317.5 70 {lab=#net3}
N -317.5 22.5 -100 20 {lab=#net3}
C {vsource.sym} -315 -82.5 0 0 {name=V1 value="PULSE(0 5 0n 1n 1n 100n 200n)" savecurrent=false
}
C {vsource.sym} -317.5 102.5 0 0 {name=V2 value="PULSE(0 5 0n 1n 1n 100n 200n)"  savecurrent=false}
C {vsource.sym} -575 30 0 0 {name=V3 value="PULSE(0 5 0n 1n 1n 300n 600n)" savecurrent=false}
C {opin.sym} 255 -20 0 0 {name=p1 lab=y}
C {gnd.sym} -475 157.5 0 0 {name=l1 lab=GND}
C {voidwalkers-scandff-gf180mcu/designs/schematics/mux2x1/mux_nand.sym} 50 0 0 0 {name=x1}
C {devices/code_shown.sym} -1050 -510 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -1030 -810 0 0 {name=NGSPICE only_toplevel=true
value="
.options method=trap rawfile=binary
.options solver=klu nomod
.temp 85
.control
save all
tran 1n 2u
write mux_nand_tb.raw
plot v(A) v(B) v(S) v(MUX_OUT)
.endc
"}
