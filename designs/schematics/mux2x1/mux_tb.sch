v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 410 -240 1210 160 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.0587912e-22
x2=1e-05
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
sim_type=tran}
C {vsource.sym} -100 120 0 0 {name=V1 value="PULSE(0 3.3 0 0ns 0ns 50ns 100ns 1)" savecurrent=false}
C {lab_pin.sym} -40 30 0 0 {name=p1 sig_type=std_logic lab=in
}
C {code_shown.sym} 100 -110 0 0 {name=s1 only_toplevel=false value="
.temp 85
.control
save all
tran 0.1n 100n
write inverter_trial_2.raw
plot in out
.endc
.end
"
}
C {code_shown.sym} 40 220 0 0 {name=MODELS only_toplevel=false value=" 
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
