v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {.option
save all

.control
tran 0 1u 
.endc
.end}
E {}
B 2 -480 570 360 820 {flags=graph
y1=-1.0757307
y2=3.9009094
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.1683696e-07
x2=9.9023239e-07
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
rawfile=$netlist_dir/test_result_mux.raw
hilight_wave=0}
B 2 -480 320 360 570 {flags=graph
y1=-1.0106848
y2=3.9659554
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.1683696e-07
x2=9.9023239e-07
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
rawfile=$netlist_dir/test_result_mux.raw
hilight_wave=0
autoload=0}
N 120 -130 120 -20 {lab=vdd}
N 110 -130 120 -130 {lab=vdd}
N 120 20 120 120 {lab=GND}
N 120 -0 210 0 {lab=out}
N -230 -60 -180 -60 {lab=data}
N -230 -40 -180 -40 {lab=scan_data}
N -230 -20 -180 -20 {lab=scan_enable}
N -460 100 -450 100 {lab=scan_data}
N -450 100 -450 150 {lab=scan_data}
N -460 80 -390 80 {lab=data}
N -390 80 -390 150 {lab=data}
N -240 80 -230 80 {lab=scan_enable}
N -230 80 -230 150 {lab=scan_enable}
N -450 210 -450 240 {lab=GND}
N 120 120 120 210 {lab=GND}
N -450 210 120 210 {lab=GND}
C {mux_transmission_gate/mux_toplevel.sym} -30 0 0 0 {name=x1}
C {lab_pin.sym} 110 -130 0 0 {name=p1 sig_type=std_logic lab=vdd
}
C {lab_pin.sym} 210 0 0 1 {name=p3 sig_type=std_logic lab=out}
C {lab_pin.sym} -230 -60 0 0 {name=p4 sig_type=std_logic lab=data}
C {lab_pin.sym} -230 -40 0 0 {name=p5 sig_type=std_logic lab=scan_data}
C {lab_pin.sym} -230 -20 0 0 {name=p6 sig_type=std_logic lab=scan_enable}
C {vsource.sym} -450 180 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} -390 180 0 0 {name=V2 value=0 savecurrent=false}
C {vsource.sym} -230 180 0 0 {name=V3 value="PULSE(0 3.3 0 0ns 0ns 5ns 10ns 10000)" savecurrent=false}
C {lab_pin.sym} -460 80 0 0 {name=p7 sig_type=std_logic lab=data}
C {lab_pin.sym} -460 100 0 0 {name=p8 sig_type=std_logic lab=scan_data}
C {lab_pin.sym} -240 80 0 0 {name=p9 sig_type=std_logic lab=scan_enable}
C {gnd.sym} -450 240 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 350 -190 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice ff
"}
C {code_shown.sym} 360 -60 0 0 {name=s1 only_toplevel=false value="
.temp 25

.control
save all
tran 0.1n 1u
write test_result_mux.raw
plot out

.endc
.end
"}
