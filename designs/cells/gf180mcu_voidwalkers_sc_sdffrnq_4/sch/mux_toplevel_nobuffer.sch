v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 20 -210 20 110 {lab=#net1}
N 20 -210 100 -210 {lab=#net1}
N 20 -40 100 -40 {lab=#net1}
N 40 -190 100 -190 {lab=SELECTOR}
N 40 -60 100 -60 {lab=SELECTOR}
N 400 -280 440 -280 {lab=vdd}
N 400 -40 430 -40 {lab=vss}
N 400 -180 420 -180 {lab=vss}
N 420 -180 430 -180 {lab=vss}
N 400 -130 430 -130 {lab=vdd}
N -60 90 -40 90 {lab=vdd}
N -40 40 -40 90 {lab=vdd}
N -40 170 -40 210 {lab=vss}
N 430 -30 430 10 {lab=vss}
N 430 -180 430 -170 {lab=vss}
N 440 -310 440 -280 {lab=vdd}
N -410 -80 100 -80 {lab=INPUT_2}
N -410 -230 100 -230 {lab=INPUT_1}
N -410 120 -360 120 {lab=SELECTOR}
N 430 -150 430 -130 {lab=vdd}
N 530 -160 580 -160 {lab=#net2}
N -60 120 20 120 {lab=#net1}
N 20 110 20 120 {lab=#net1}
N -60 150 -40 150 {lab=vss}
N -40 150 -40 170 {lab=vss}
N 40 -190 40 -60 {lab=SELECTOR}
N -380 10 -380 120 {lab=SELECTOR}
N -380 10 40 10 {lab=SELECTOR}
N 40 -60 40 10 {lab=SELECTOR}
N 430 -40 430 -30 {lab=vss}
N 400 -210 530 -210 {lab=#net2}
N 400 -60 530 -60 {lab=#net2}
N 530 -210 530 -60 {lab=#net2}
N 400 -130 400 -80 {lab=vdd}
N 400 -190 400 -180 {lab=vss}
N 400 -280 400 -230 {lab=vdd}
N -360 100 -360 120 {lab=SELECTOR}
N -60 90 -60 100 {lab=vdd}
N -60 140 -60 150 {lab=vss}
N 580 -160 600 -160 {lab=out}
C {iopin.sym} 440 -310 0 0 {name=p1 lab=vdd}
C {opin.sym} 600 -160 0 0 {name=p5 lab=out}
C {ipin.sym} -410 -230 0 0 {name=p6 lab=INPUT_1}
C {ipin.sym} -410 -80 0 0 {name=p7 lab=INPUT_2}
C {ipin.sym} -410 120 0 0 {name=p8 lab=SELECTOR}
C {iopin.sym} 430 -150 0 0 {name=p3 lab=vdd}
C {iopin.sym} 430 10 0 0 {name=p4 lab=vss}
C {iopin.sym} -40 210 0 0 {name=p9 lab=vss}
C {iopin.sym} -40 40 0 0 {name=p10 lab=vdd}
C {iopin.sym} 430 -170 0 0 {name=p11 lab=vss}
C {voidwalkers-scandff-gf180mcu/designs/libs/core_digital/mux2x1_transmission_gate/mux_tg.sym} 250 -210 0 0 {name=x2}
C {voidwalkers-scandff-gf180mcu/designs/libs/core_digital/mux2x1_transmission_gate/mux_tg.sym} 250 -60 0 0 {name=x3}
C {voidwalkers-scandff-gf180mcu/designs/libs/core_digital/mux2x1_transmission_gate/mux_inverter.sym} -210 120 0 0 {name=x1}
