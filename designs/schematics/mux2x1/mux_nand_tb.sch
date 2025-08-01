v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 360 -260 1160 140 {flags=graph
y1=0
y2=3.4
ypos1=-0.24178381
ypos2=3.6941412
divy=5
subdivy=4
unity=1
x1=4.2275228e-08
x2=8.8069686e-07
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
legend=0
digital=1
autoload=0
rainbow=1
hilight_wave=2
rawfile=$netlist_dir/mux_nand_tb.raw
sim_type=tran
color="4 5 6 7"
node="a
b
s
y"}
N -270 -0 -100 0 {lab=B}
N 200 0 257.5 0 {lab=y}
N -270 -30 -270 -0 {lab=B}
N -180 20 -180 60 {lab=S}
N -140 -20 -100 -20 {lab=A}
N -140 -40 -140 -20 {lab=A}
N -200 -120 -200 -20 {lab=A}
N -320 -120 -200 -120 {lab=A}
N -320 -120 -320 -110 {lab=A}
N -620 -50 -320 -50 {lab=GND}
N -180 20 -100 20 {lab=S}
N -330 20 -180 20 {lab=S}
N -330 20 -330 70 {lab=S}
N -430 130 -330 130 {lab=GND}
N -580 60 -580 130 {lab=GND}
N -580 130 -430 130 {lab=GND}
N -430 130 -430 170 {lab=GND}
N -620 130 -580 130 {lab=GND}
N -620 -50 -620 130 {lab=GND}
N -580 -0 -270 -0 {lab=B}
N -200 -20 -140 -20 {lab=A}
N 200 20 200 130 {lab=GND}
N -330 130 200 130 {lab=GND}
N 200 -20 300 -20 {lab=#net1}
N 300 40 300 130 {lab=GND}
N 200 130 300 130 {lab=GND}
C {vsource.sym} -320 -80 0 0 {name=V1 value="PULSE(0 3.3 0n 1n 1n 50n 100n)" savecurrent=false
}
C {vsource.sym} -580 30 0 0 {name=V2 value="PULSE(0 3.3 0n 1n 1n 100n 200n)"  savecurrent=false}
C {vsource.sym} -330 100 0 0 {name=V3 value="PULSE(0 3.3 0n 1n 1n 200n 400n)" savecurrent=false}
C {opin.sym} 255 0 0 0 {name=p1 lab=y}
C {lab_wire.sym} -140 -40 0 0 {name=p2 sig_type=std_logic lab=A
}
C {lab_wire.sym} -180 60 0 0 {name=p4 sig_type=std_logic lab=S}
C {lab_wire.sym} -270 -30 0 0 {name=p3 sig_type=std_logic lab=B}
C {gnd.sym} -430 170 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 230 -840 0 0 {name=NGSPICE1 only_toplevel=true
value="
.options method=trap rawfile=binary
.options solver=klu nomod
.control
save all

tran 1n 800n

write mux_nand_tb.raw
.endc
"}
C {devices/code_shown.sym} 130 -590 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {vsource.sym} 300 10 0 0 {name=V4 value=3.3 savecurrent=false}
C {devices/launcher.sym} 435 -415 0 0 {name=h2
descr="Click left mouse button here with control key
pressed to load/unload waveforms in graph."
tclcommand="
xschem raw_read $netlist_dir/mux_nand_tb.raw tran"
}
C {mux2x1/mux_nand.sym} 50 0 0 0 {name=x1}
