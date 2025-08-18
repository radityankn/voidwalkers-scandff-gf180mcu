v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 700 -650 1500 -250 {flags=graph
y1=0
y2=3.3
ypos1=0.1
ypos2=2.1
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
color="4 5 6 7 4"
node="a
b
s
y
x1.tg_out"
digital=1
legend=1}
N 300 -930 300 -910 {lab=VDD}
N 300 -850 300 -830 {lab=#net1}
N 420 -850 420 -830 {lab=#net2}
N 660 -850 660 -830 {lab=#net3}
N 900 -850 900 -830 {lab=#net4}
N 600 -1100 660 -1100 {lab=#net5}
C {devices/code_shown.sym} 90 -400 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 90 -640 0 0 {name=NGSPICE1 only_toplevel=true
value="
.options method=trap rawfile=binary
.options solver=klu nomod
.control
save all

tran 0.1n 1u

write testbench_mux_tg.raw
quit
.endc
"}
C {devices/launcher.sym} 135 -255 0 0 {name=h1
descr="Click left mouse button here with control key
pressed to load/unload waveforms in graph."
tclcommand="
xschem raw_read $netlist_dir/testbench_mux_tg.raw tran"
}
C {vsource.sym} 420 -800 0 0 {name=V6 value="PULSE(0 3.3 0n 1n 1n 50n 100n)" savecurrent=false
}
C {vsource.sym} 660 -800 0 0 {name=V7 value="PULSE(0 3.3 0n 1n 1n 100n 200n)"  savecurrent=false}
C {vsource.sym} 900 -800 0 0 {name=V8 value="PULSE(0 3.3 0n 1n 1n 200n 400n)" savecurrent=false}
C {lab_wire.sym} 420 -910 0 0 {name=p17 sig_type=std_logic lab=A
}
C {lab_wire.sym} 900 -910 0 0 {name=p18 sig_type=std_logic lab=S}
C {lab_wire.sym} 660 -910 0 0 {name=p19 sig_type=std_logic lab=B}
C {voidwalkers-scandff-gf180mcu/designs/libs/mux2x1_transmission_gate/mux_toplevel_ilmi.sym} 450 -1120 0 0 {name=x1}
C {vsource.sym} 300 -800 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 160 -800 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} 160 -770 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 160 -830 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 300 -770 2 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 300 -930 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {res.sym} 300 -880 0 0 {name=R1
value=5
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 420 -770 2 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 660 -770 2 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 900 -770 2 0 {name=p6 sig_type=std_logic lab=VSS}
C {res.sym} 420 -880 0 0 {name=R2
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 660 -880 0 0 {name=R3
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 900 -880 0 0 {name=R4
value=50
footprint=1206
device=resistor
m=1}
C {parax_cap.sym} 500 -900 0 0 {name=C1 gnd=0 value=20p m=1}
C {parax_cap.sym} 740 -900 0 0 {name=C2 gnd=0 value=20p m=1}
C {parax_cap.sym} 980 -900 0 0 {name=C3 gnd=0 value=20p m=1}
C {lab_wire.sym} 500 -910 0 0 {name=p7 sig_type=std_logic lab=A
}
C {lab_wire.sym} 740 -910 0 0 {name=p8 sig_type=std_logic lab=B}
C {res.sym} 690 -1100 3 1 {name=R5
value=50
footprint=1206
device=resistor
m=1}
C {parax_cap.sym} 600 -1090 0 0 {name=C4 gnd=0 value=20p m=1}
C {lab_wire.sym} 980 -910 0 0 {name=p9 sig_type=std_logic lab=S}
C {lab_wire.sym} 300 -1140 0 0 {name=p10 lab=A}
C {lab_wire.sym} 300 -1120 0 0 {name=p11 lab=B}
C {lab_wire.sym} 600 -1140 0 1 {name=p12 lab=VDD}
C {lab_wire.sym} 300 -1100 0 0 {name=p13 lab=S}
C {lab_wire.sym} 600 -1120 0 1 {name=p14 lab=VSS}
C {lab_wire.sym} 720 -1100 0 1 {name=p15 lab=OUT}
C {title.sym} 180 -80 0 0 {name=l1 author="Ahmad Jabar Ilmi"}
