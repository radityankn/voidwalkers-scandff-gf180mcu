v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1260 150 2060 550 {flags=graph
y1=0
y2=3.4
ypos1=0
ypos2=3.4
divy=5
subdivy=4
unity=1
x1=-1.254091e-07
x2=7.1301254e-07
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
autoload=1
rainbow=1
hilight_wave=2
rawfile=$netlist_dir/mux_nand_tb.raw
sim_type=tran
color="4 5 6 5"
node="a
b
s
y"}
N 1040 420 1097.5 420 {lab=y}
N 1040 400 1140 400 {lab=#net1}
N 1140 460 1140 550 {lab=GND}
N 1040 550 1140 550 {lab=GND}
N 1040 440 1040 550 {lab=GND}
N 600 230 680 230 {lab=#net2}
N 680 230 680 400 {lab=#net2}
N 680 400 740 400 {lab=#net2}
N 600 550 680 550 {lab=#net3}
N 680 440 680 550 {lab=#net3}
N 680 440 740 440 {lab=#net3}
N 590 420 740 420 {lab=#net4}
N 600 610 950 610 {lab=GND}
N 950 550 950 610 {lab=GND}
N 950 550 1040 550 {lab=GND}
N 590 480 590 510 {lab=GND}
N 590 510 590 520 {lab=GND}
N 590 520 590 540 {lab=GND}
N 590 540 950 540 {lab=GND}
N 950 540 950 550 {lab=GND}
N 600 290 600 390 {lab=GND}
N 540 390 600 390 {lab=GND}
N 540 390 540 540 {lab=GND}
N 540 540 590 540 {lab=GND}
C {opin.sym} 1095 420 0 0 {name=p1 lab=y}
C {devices/code_shown.sym} 1130 -430 0 0 {name=NGSPICE1 only_toplevel=true
value="
.options method=trap rawfile=binary
.options solver=klu nomod
.control
save all

tran 1n 500n

write mux_tb.raw
.endc
"}
C {devices/code_shown.sym} 1030 -180 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {vsource.sym} 1140 430 0 0 {name=V4 value=3.3 savecurrent=false}
C {devices/launcher.sym} 1325 -5 0 0 {name=h2
descr="Click left mouse button here with control key
pressed to load/unload waveforms in graph."
tclcommand="
xschem raw_read $netlist_dir/mux_tb.raw tran"
}
C {gnd.sym} 1290 1680 0 0 {name=l1 lab=GND}
C {gnd.sym} 1040 550 0 0 {name=l2 lab=GND}
C {vsource.sym} 590 450 0 0 {name=V3 value="PULSE(0 3.3 150n 1n 1n 200n 400n)" savecurrent=false}
C {vsource.sym} 600 580 0 0 {name=V1 value="PULSE(0 3.3 50n 1n 1n 100n 200n)" savecurrent=false}
C {vsource.sym} 600 260 0 0 {name=V2 value="PULSE(0 3.3 0n 1n 1n 100n 200n)" savecurrent=false}
C {voidwalkers-scandff-gf180mcu/designs/schematics/mux2x1/mux.sym} 890 420 0 0 {name=x1}
