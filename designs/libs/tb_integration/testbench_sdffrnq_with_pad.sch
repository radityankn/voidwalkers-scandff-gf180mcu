v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 470 20 1270 420 {flags=graph
y1=0
y2=3.4
ypos1=1.19
ypos2=4.59
divy=5
subdivy=4
unity=1
x1=3.4720378e-07
x2=3.9262359e-07
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
autoload=1
rainbow=1
hilight_wave=2
rawfile=$netlist_dir/testbench_top_level.raw
sim_type=tran}
N -20 -230 -10 -230 {lab=VDD}
N -20 -190 -10 -190 {lab=VSS}
N -20 -210 -10 -210 {lab=Q}
N -10 -190 -10 -140 {lab=VSS}
N -10 -140 0 -140 {lab=VSS}
N -10 -300 0 -300 {lab=VDD}
N -10 -300 -10 -230 {lab=VDD}
N -10 -210 60 -210 {lab=Q}
N 0 -140 140 -140 {lab=VSS}
N -350 -230 -320 -230 {lab=S}
N -350 -210 -320 -210 {lab=B}
N -350 -190 -320 -190 {lab=CLK}
N -350 -170 -320 -170 {lab=A}
N -350 -150 -320 -150 {lab=RN}
C {vsource.sym} -360 -1120 0 0 {name=V1 value="PULSE(0 3.3 0n 0.1n 0.1n 5n 10n)" savecurrent=false}
C {lab_wire.sym} -360 -1150 3 1 {name=p24 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 0 -300 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -350 -190 0 0 {name=p4 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 60 -210 0 1 {name=p6 sig_type=std_logic lab=Q}
C {vsource.sym} -460 -1120 0 0 {name=V3 value=3.3 savecurrent=false}
C {lab_wire.sym} -460 -1150 3 1 {name=p10 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} -1060 120 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include /foss/designs/gf180mcu_voidwalkers_sc_sdffrnq_4_flattened_pex.spice
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
C {lab_wire.sym} -360 -1090 3 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -460 -1090 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {vsource.sym} -550 -1120 0 0 {name=V4 value=0 savecurrent=false}
C {lab_wire.sym} -550 -1150 3 1 {name=p11 sig_type=std_logic lab=VSS}
C {gnd.sym} -550 -1090 0 1 {name=l1 lab=GND}
C {lab_wire.sym} 140 -140 0 1 {name=p12 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -350 -150 0 0 {name=p5 sig_type=std_logic lab=RN}
C {devices/launcher.sym} 1035 -195 0 0 {name=h1
descr="Click left mouse button here with control key
pressed to load/unload waveforms in graph."
tclcommand="
xschem raw_read $netlist_dir/testbench_top_level.raw tran"
}
C {vsource.sym} -280 -1300 0 0 {name=V5 value="PULSE(0 3.3 0n 0.1n 0.1n 50n 100n)" savecurrent=false
}
C {lab_wire.sym} -280 -1330 3 1 {name=p3 sig_type=std_logic lab=A}
C {lab_wire.sym} -280 -1270 3 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 530 -1200 3 1 {name=p19 sig_type=std_logic lab=B}
C {lab_wire.sym} 530 -1140 3 0 {name=p20 sig_type=std_logic lab=VSS}
C {vsource.sym} 530 -1170 0 0 {name=V6 value="PULSE(0 3.3 0n 0.1n 0.1n 100n 200n)"  savecurrent=false}
C {vsource.sym} 280 -1170 0 0 {name=V7 value="PULSE(0 3.3 0n 0.1n 0.1n 200n 400n)" savecurrent=false}
C {lab_wire.sym} 280 -1140 3 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 280 -1200 3 1 {name=p22 sig_type=std_logic lab=S}
C {lab_wire.sym} -350 -170 0 0 {name=p23 sig_type=std_logic lab=A}
C {lab_wire.sym} -350 -210 0 0 {name=p25 sig_type=std_logic lab=B}
C {lab_wire.sym} -350 -230 0 0 {name=p26 sig_type=std_logic lab=S}
C {vsource.sym} 1640 -1180 0 0 {name=V2 value="PWL(0n 0V 500n 0V 500.1n 3.3V)" savecurrent=false}
C {lab_wire.sym} 1640 -1210 3 1 {name=p2 sig_type=std_logic lab=RN}
C {lab_wire.sym} 1640 -1150 3 0 {name=p8 sig_type=std_logic lab=VSS}
C {io_bi_t.sym} 170 -970 2 0 {name=IO1
model=gf180mcu_fd_io__bi_t
spiceprefix=X
}
C {voidwalkers-scandff-gf180mcu/designs/cells/gf180mcu_voidwalkers_sc_sdffrnq_4/sch/gf180mcu_voidwalkers_sc_sdffrnq_4_flattened_pex.sym} -170 -190 0 0 {name=x2}
C {io_bi_t.sym} -320 -630 2 0 {name=IO2
model=gf180mcu_fd_io__bi_t
spiceprefix=X
}
C {io_bi_t.sym} 170 -640 2 0 {name=IO3
model=gf180mcu_fd_io__bi_t
spiceprefix=X
}
C {io_bi_t.sym} 640 -970 2 0 {name=IO4
model=gf180mcu_fd_io__bi_t
spiceprefix=X
}
C {io_bi_t.sym} -320 -970 2 0 {name=IO5
model=gf180mcu_fd_io__bi_t
spiceprefix=X
}
