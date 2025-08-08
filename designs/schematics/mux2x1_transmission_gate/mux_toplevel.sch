v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 590 -160 {}
N 20 -210 20 110 {lab=#net1}
N 20 -210 100 -210 {lab=#net1}
N 20 -40 100 -40 {lab=#net1}
N 40 -190 100 -190 {lab=se_in}
N 40 -60 100 -60 {lab=se_in}
N 400 -280 440 -280 {lab=vdd}
N 400 -30 430 -30 {lab=vss}
N 400 -180 420 -180 {lab=vss}
N 420 -180 430 -180 {lab=vss}
N 400 -230 530 -230 {lab=out}
N 400 -80 530 -80 {lab=out}
N 400 -130 430 -130 {lab=vdd}
N -60 90 -40 90 {lab=vdd}
N -40 40 -40 90 {lab=vdd}
N -40 170 -40 210 {lab=vss}
N 430 -30 430 10 {lab=vss}
N 430 -180 430 -170 {lab=vss}
N 440 -310 440 -280 {lab=vdd}
N -410 -80 100 -80 {lab=scan_data}
N -410 -230 100 -230 {lab=data}
N -410 120 -360 120 {lab=se_in}
N 430 -150 430 -130 {lab=vdd}
N 530 -230 530 -80 {lab=out}
N 530 -160 580 -160 {lab=out}
N -60 120 20 120 {lab=#net1}
N 20 110 20 120 {lab=#net1}
N -60 150 -40 150 {lab=vss}
N -40 150 -40 170 {lab=vss}
N 40 -190 40 -60 {lab=se_in}
N -380 10 -380 120 {lab=se_in}
N -380 10 40 10 {lab=se_in}
N 40 -60 40 10 {lab=se_in}
C {iopin.sym} 440 -310 0 0 {name=p1 lab=vdd}
C {opin.sym} 580 -160 0 0 {name=p5 lab=out}
C {ipin.sym} -410 -230 0 0 {name=p6 lab=data}
C {ipin.sym} -410 -80 0 0 {name=p7 lab=scan_data}
C {ipin.sym} -410 120 0 0 {name=p8 lab=se_in}
C {iopin.sym} 430 -150 0 0 {name=p3 lab=vdd}
C {iopin.sym} 430 10 0 0 {name=p4 lab=vss}
C {iopin.sym} -40 210 0 0 {name=p9 lab=vss}
C {iopin.sym} -40 40 0 0 {name=p10 lab=vdd}
C {iopin.sym} 430 -170 0 0 {name=p11 lab=vss}
C {schematics/mux2x1_transmission_gate/mux_tg.sym} 250 -230 0 0 {name=x2}
C {schematics/mux2x1_transmission_gate/mux_tg.sym} 250 -80 0 0 {name=x3}
C {schematics/mux2x1_transmission_gate/mux_ctrl_logic.sym} -210 120 0 0 {name=x1}
