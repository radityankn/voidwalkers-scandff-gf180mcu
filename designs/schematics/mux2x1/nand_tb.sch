v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -840 -140 -40 260 {flags=graph
y1=-0.5
y2=3.3
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=2e-08
x2=4.2e-07
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
node="a
b

y"
color="8 4 7"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/untitled-2.raw
sim_type=tran}
N -1410 -410 -1410 -390 {lab=B}
N -1410 -410 -1270 -410 {lab=B}
N -1470 -450 -1410 -450 {lab=GND}
N -1470 -450 -1470 -290 {lab=GND}
N -1470 -290 -1250 -290 {lab=GND}
N -1410 -330 -1410 -290 {lab=GND}
N -1410 -510 -1310 -510 {lab=A}
N -1310 -510 -1310 -430 {lab=A}
N -1310 -430 -1270 -430 {lab=A}
N -1330 -550 -1330 -510 {lab=A}
N -1310 -410 -1310 -370 {lab=B}
N -970 -410 -930 -405 {lab=y}
N -970 -430 -840 -440 {lab=#net1}
N -840 -380 -840 -300 {lab=GND}
N -840 -300 -840 -290 {lab=GND}
N -1250 -290 -840 -290 {lab=GND}
N -970 -390 -970 -290 {lab=GND}
C {vsource.sym} -1410 -480 0 0 {name=V1 value="PULSE(0 3.3 0n 1n 1n 50n 100n)" savecurrent=false
}
C {vsource.sym} -1410 -360 0 0 {name=V3 value="PULSE(0 3.3 50n 1n 1n 100n 200n)" savecurrent=false}
C {opin.sym} -930 -405 1 0 {name=p1 lab=y}
C {lab_wire.sym} -1330 -550 0 0 {name=p2 sig_type=std_logic lab=A

}
C {lab_wire.sym} -1310 -370 0 0 {name=p4 sig_type=std_logic lab=B
}
C {gnd.sym} -1250 -290 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 230 -570 0 0 {name=NGSPICE1 only_toplevel=true
value="
.options method=trap rawfile=binary
.options solver=klu nomod
.control
save all

tran 1n 400n

write untitled-2.raw
.endc
"}
C {devices/launcher.sym} 25 -315 0 0 {name=h1
descr="Click left mouse button here with control key
pressed to load/unload waveforms in graph."
tclcommand="
xschem raw_read $netlist_dir/untitled-2.raw tran"
}
C {devices/code_shown.sym} -260 -490 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {voidwalkers-scandff-gf180mcu/designs/schematics/mux2x1/nand.sym} -1120 -410 0 0 {name=x1}
C {vsource.sym} -840 -410 0 0 {name=V2 value=3.3 savecurrent=false}
