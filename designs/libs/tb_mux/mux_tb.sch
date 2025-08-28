v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -480 570 360 820 {flags=graph
y1=-1.0757307
y2=3.9009095
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.7459451e-07
x2=1.7705204e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=out
color=7
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/mux_tb.raw
hilight_wave=0
sim_type=tran}
B 2 -480 320 360 570 {flags=graph
y1=-1.0106849
y2=3.9659553
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.7459451e-07
x2=1.7705204e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=scan_enable
color=4
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
autoload=0
sim_type=tran}
N 110 -130 120 -130 {lab=vdd}
N -230 -60 -180 -60 {lab=data}
N -230 -40 -180 -40 {lab=scan_data}
N -230 -20 -180 -20 {lab=scan_enable}
N -460 100 -450 100 {lab=#net1}
N -450 100 -450 150 {lab=#net1}
N -390 80 -390 150 {lab=#net2}
N -230 80 -230 150 {lab=#net3}
N -450 210 -450 240 {lab=GND}
N 120 120 120 210 {lab=GND}
N -450 210 120 210 {lab=GND}
N 120 -130 120 -60 {lab=vdd}
N 120 60 120 120 {lab=GND}
N 120 -60 140 -60 {lab=vdd}
N 120 20 160 20 {lab=GND}
N 120 20 160 20 {lab=GND}
N 160 20 160 60 {lab=GND}
N 120 60 160 60 {lab=GND}
N 120 40 160 40 {lab=GND}
N 120 -40 140 -40 {lab=vdd}
N 120 -20 140 -20 {lab=vdd}
N 140 -60 140 -20 {lab=vdd}
N -540 210 -450 210 {lab=GND}
N -390 40 -390 80 {lab=#net2}
N -430 40 -390 40 {lab=#net2}
N -230 20 -230 80 {lab=#net3}
N -240 20 -230 20 {lab=#net3}
N 210 60 210 210 {lab=GND}
N 120 210 210 210 {lab=GND}
N 210 0 270 0 {lab=out}
N 120 0 130 0 {lab=out}
N 190 0 210 -0 {lab=out}
N 130 0 190 -0 {lab=out}
C {lab_pin.sym} 110 -130 0 0 {name=p1 sig_type=std_logic lab=vdd
}
C {lab_pin.sym} 270 0 0 1 {name=p3 sig_type=std_logic lab=out}
C {lab_pin.sym} -230 -60 0 0 {name=p4 sig_type=std_logic lab=data}
C {lab_pin.sym} -230 -40 0 0 {name=p5 sig_type=std_logic lab=scan_data}
C {lab_pin.sym} -230 -20 0 0 {name=p6 sig_type=std_logic lab=scan_enable}
C {vsource.sym} -450 180 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} -390 180 0 0 {name=V2 value=0 savecurrent=false}
C {vsource.sym} -230 180 0 0 {name=V3 value="PULSE(0 3.3 0 0ns 0ns 5ns 10ns 10000)" savecurrent=false}
C {lab_pin.sym} -490 40 0 0 {name=p7 sig_type=std_logic lab=data}
C {lab_pin.sym} -520 100 0 0 {name=p8 sig_type=std_logic lab=scan_data}
C {lab_pin.sym} -300 20 0 0 {name=p9 sig_type=std_logic lab=scan_enable}
C {gnd.sym} -450 240 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 350 -190 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 340 -70 0 0 {name=s1 only_toplevel=false value="
.include /foss/designs/voidwalkers-scandff-gf180mcu/simulation/charlib/netlist/mux_toplevel_postlayout.spice
.control
save all
tran 0.1n 1u
write mux_tb.raw
plot out

.endc
"}
C {launcher.sym} -300 300 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/mux_tb.raw tran"
}
C {vsource.sym} -540 180 0 0 {name=V4 value=3.3 savecurrent=false}
C {lab_pin.sym} -600 150 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {voidwalkers-scandff-gf180mcu/simulation/charlib/netlist/mux_toplevel_postlayout.sym} 210 190 0 0 {}
C {res.sym} -460 40 1 0 {name=R1
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} -490 100 1 0 {name=R2
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} -570 150 1 0 {name=R3
value=10
footprint=1206
device=resistor
m=1}
C {res.sym} -270 20 1 0 {name=R4
value=50
footprint=1206
device=resistor
m=1}
C {capa.sym} 210 30 0 0 {name=C1
m=1
value=20f
footprint=1206
device="ceramic capacitor"}
