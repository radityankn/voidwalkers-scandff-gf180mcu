v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -170 130 -140 130 {lab=A}
N -40 10 -40 50 {lab=vcc}
N 160 170 200 170 {lab=gnd}
N 160 130 200 130 {lab=vcc}
N 200 130 220 130 {lab=vcc}
N 160 270 220 270 {lab=vcc}
N -170 270 -140 270 {lab=B}
N -360 310 -290 310 {lab=#net1}
N -290 150 -290 310 {lab=#net1}
N -290 150 -140 150 {lab=#net1}
N -740 290 -660 290 {lab=S}
N -260 290 -140 290 {lab=S}
N -260 210 -260 290 {lab=S}
N -710 210 -260 210 {lab=S}
N -710 210 -710 290 {lab=S}
N 160 150 270 150 {lab=#net2}
N 270 140 270 150 {lab=#net2}
N 270 140 310 140 {lab=#net2}
N 160 290 270 290 {lab=#net3}
N 270 160 270 290 {lab=#net3}
N 270 160 310 160 {lab=#net3}
N 610 160 680 160 {lab=y}
N -360 70 -360 290 {lab=vcc}
N -360 70 -40 70 {lab=vcc}
N -40 10 -40 70 {lab=vcc}
N -40 50 -40 70 {lab=vcc}
N -40 70 210 70 {lab=vcc}
N 210 70 220 70 {lab=vcc}
N 220 70 220 130 {lab=vcc}
N 220 70 600 70 {lab=vcc}
N 600 70 610 70 {lab=vcc}
N 610 70 610 140 {lab=vcc}
N 220 130 220 270 {lab=vcc}
N 200 170 200 310 {lab=gnd}
N 160 310 200 310 {lab=gnd}
N 610 180 610 400 {lab=gnd}
N 0 400 610 400 {lab=gnd}
N 0 400 0 450 {lab=gnd}
N 200 310 200 400 {lab=gnd}
N -360 330 -360 400 {lab=gnd}
N -360 400 -0 400 {lab=gnd}
C {voidwalkers-scandff-gf180mcu/designs/schematics/mux2x1/inv.sym} -510 310 0 0 {name=x1}
C {voidwalkers-scandff-gf180mcu/designs/schematics/mux2x1/nand.sym} 10 150 0 0 {name=x2}
C {voidwalkers-scandff-gf180mcu/designs/schematics/mux2x1/nand.sym} 10 290 0 0 {name=x3}
C {voidwalkers-scandff-gf180mcu/designs/schematics/mux2x1/nand.sym} 460 160 0 0 {name=x4}
C {ipin.sym} -740 290 0 0 {name=p1 lab=S}
C {ipin.sym} -170 130 0 0 {name=p2 lab=A
}
C {ipin.sym} -170 270 0 0 {name=p3 lab=B}
C {opin.sym} 680 160 0 0 {name=p4 lab=y}
C {iopin.sym} -40 10 0 0 {name=p5 lab=vcc}
C {iopin.sym} 0 450 0 0 {name=p6 lab=gnd
}
