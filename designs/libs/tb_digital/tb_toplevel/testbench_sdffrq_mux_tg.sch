v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 40 -120 840 280 {flags=graph
y1=0
y2=3.4
ypos1=0
ypos2=3.4
divy=5
subdivy=4
unity=1
x1=-8.2651709e-08
x2=6.220239e-07
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
node="clk
a
b
s
q
rn"
color="4 5 6 7 8 9"
dataset=-1
unitx=1
logx=0
logy=0
legend=0
digital=1
autoload=0
rainbow=1
hilight_wave=2}
N -20 -230 -10 -230 {lab=VDD}
N -20 -190 -10 -190 {lab=VSS}
N -330 -170 -320 -170 {lab=CLK}
N -330 -150 -320 -150 {lab=RN}
N -20 -210 -10 -210 {lab=Q}
N -330 -230 -320 -230 {lab=A}
N -330 -210 -320 -210 {lab=B}
N -330 -190 -320 -190 {lab=S}
C {vsource.sym} -550 -10 0 0 {name=V1 value="PULSE(0 3.3 0n 0.1n 0.1n 5n 10n)" savecurrent=false}
C {lab_wire.sym} -550 -40 3 1 {name=p24 sig_type=std_logic lab=CLK}
C {lab_wire.sym} -10 -230 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -330 -170 0 0 {name=p4 sig_type=std_logic lab=CLK}
C {lab_wire.sym} -10 -210 0 1 {name=p6 sig_type=std_logic lab=Q}
C {vsource.sym} -150 0 0 0 {name=V3 value=3.3 savecurrent=false}
C {lab_wire.sym} -150 -30 3 1 {name=p10 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} -820 120 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -340 140 0 0 {name=NGSPICE only_toplevel=true
value="
.options method=trap rawfile=binary
.options solver=klu nomod
.control
save all

tran 0.1n 5u

write testbench_top_level.raw
.endc
"}
C {lab_wire.sym} -550 20 3 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -150 30 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {vsource.sym} -270 0 0 0 {name=V4 value=0 savecurrent=false}
C {lab_wire.sym} -270 -30 3 1 {name=p11 sig_type=std_logic lab=VSS}
C {gnd.sym} -270 30 0 1 {name=l1 lab=GND}
C {lab_wire.sym} -10 -190 0 1 {name=p12 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -330 -150 0 0 {name=p5 sig_type=std_logic lab=RN}
C {devices/launcher.sym} 205 -295 0 0 {name=h1
descr="Click left mouse button here with control key
pressed to load/unload waveforms in graph."
tclcommand="
xschem raw_read $netlist_dir/testbench_top_level.raw tran"
}
C {vsource.sym} -800 -10 0 0 {name=V5 value="PULSE(0 3.3 0n 0.1n 0.1n 50n 100n)" savecurrent=false
}
C {lab_wire.sym} -800 -40 3 1 {name=p3 sig_type=std_logic lab=A}
C {lab_wire.sym} -800 20 3 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -570 -400 3 1 {name=p19 sig_type=std_logic lab=B}
C {lab_wire.sym} -570 -340 3 0 {name=p20 sig_type=std_logic lab=VSS}
C {vsource.sym} -570 -370 0 0 {name=V6 value="PULSE(0 3.3 0n 0.1n 0.1n 100n 200n)"  savecurrent=false}
C {vsource.sym} -820 -370 0 0 {name=V7 value="PULSE(0 3.3 0n 0.1n 0.1n 200n 400n)" savecurrent=false}
C {lab_wire.sym} -820 -340 3 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -820 -400 3 1 {name=p22 sig_type=std_logic lab=S}
C {lab_wire.sym} -330 -230 0 0 {name=p23 sig_type=std_logic lab=A}
C {lab_wire.sym} -330 -210 0 0 {name=p25 sig_type=std_logic lab=B}
C {lab_wire.sym} -330 -190 0 0 {name=p26 sig_type=std_logic lab=S}
C {vsource.sym} -290 -370 0 0 {name=V2 value="PWL(0n 0V 500n 0V 500.1n 3.3V)" savecurrent=false}
C {lab_wire.sym} -290 -400 3 1 {name=p2 sig_type=std_logic lab=RN}
C {lab_wire.sym} -290 -340 3 0 {name=p8 sig_type=std_logic lab=VSS}
C {cells/sdffrq/sch/sdffrq.sym} -170 -190 0 0 {name=x1}
