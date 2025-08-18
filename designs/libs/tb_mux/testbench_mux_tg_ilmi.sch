v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -20 330 780 730 {flags=graph
y1=0
y2=3.3
ypos1=-0.1
ypos2=1.9
divy=5
subdivy=4
unity=1
x1=0
x2=1e-06
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="4 5 6 7"
node="a
b
s
y"
digital=1
legend=1}
N -330 60 -160 60 {lab=B}
N 140 60 197.5 60 {lab=y}
N -330 30 -330 60 {lab=B}
N -240 80 -240 120 {lab=S}
N -200 40 -160 40 {lab=A}
N -200 20 -200 40 {lab=A}
N -260 -60 -260 40 {lab=A}
N -380 -60 -260 -60 {lab=A}
N -380 -60 -380 -50 {lab=A}
N -680 10 -380 10 {lab=GND}
N -240 80 -160 80 {lab=S}
N -390 80 -240 80 {lab=S}
N -390 80 -390 130 {lab=S}
N -490 190 -390 190 {lab=GND}
N -640 120 -640 190 {lab=GND}
N -640 190 -490 190 {lab=GND}
N -490 190 -490 230 {lab=GND}
N -680 190 -640 190 {lab=GND}
N -680 10 -680 190 {lab=GND}
N -640 60 -330 60 {lab=B}
N -260 40 -200 40 {lab=A}
N 140 80 140 190 {lab=GND}
N -390 190 140 190 {lab=GND}
N 140 40 240 40 {lab=#net1}
N 240 100 240 190 {lab=GND}
N 140 190 240 190 {lab=GND}
C {devices/code_shown.sym} 340 170 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 460 -80 0 0 {name=NGSPICE1 only_toplevel=true
value="
.options method=trap rawfile=binary
.options solver=klu nomod
.control
save all

tran 0.1n 1u

write testbench_mux_tg.raw
.endc
"}
C {devices/launcher.sym} -595 415 0 0 {name=h1
descr="Click left mouse button here with control key
pressed to load/unload waveforms in graph."
tclcommand="
xschem raw_read $netlist_dir/testbench_mux_tg.raw tran"
}
C {vsource.sym} -380 -20 0 0 {name=V6 value="PULSE(0 3.3 0n 1n 1n 50n 100n)" savecurrent=false
}
C {vsource.sym} -640 90 0 0 {name=V7 value="PULSE(0 3.3 0n 1n 1n 100n 200n)"  savecurrent=false}
C {vsource.sym} -390 160 0 0 {name=V8 value="PULSE(0 3.3 0n 1n 1n 200n 400n)" savecurrent=false}
C {opin.sym} 195 60 0 0 {name=p16 lab=y}
C {lab_wire.sym} -200 20 0 0 {name=p17 sig_type=std_logic lab=A
}
C {lab_wire.sym} -240 120 0 0 {name=p18 sig_type=std_logic lab=S}
C {lab_wire.sym} -330 30 0 0 {name=p19 sig_type=std_logic lab=B}
C {gnd.sym} -490 230 0 0 {name=l1 lab=GND}
C {vsource.sym} 240 70 0 0 {name=V9 value=3.3 savecurrent=false}
C {schematics/mux2x1_transmission_gate/mux_toplevel_ilmi.sym} -10 60 0 0 {name=x1}
