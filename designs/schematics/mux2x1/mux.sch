v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -200 -20 -160 -20 {lab=I0}
N -210 70 -160 70 {lab=I1}
N 140 0 250 -0 {lab=y}
N 250 0 250 40 {lab=y}
N 140 90 250 90 {lab=y}
N 250 40 250 90 {lab=y}
N -700 10 -630 10 {lab=sel}
N -660 -20 -660 10 {lab=sel}
N -660 -20 -290 -20 {lab=sel}
N -290 -20 -290 0 {lab=sel}
N -290 0 -160 -0 {lab=sel}
N -330 30 -230 30 {lab=#net1}
N -230 20 -230 30 {lab=#net1}
N -230 20 -160 20 {lab=#net1}
N -660 10 -660 100 {lab=sel}
N -660 100 -660 110 {lab=sel}
N -660 110 -160 110 {lab=sel}
N -270 30 -270 90 {lab=#net1}
N -270 90 -160 90 {lab=#net1}
N -330 10 -280 10 {lab=vcc}
N -280 -130 -280 10 {lab=vcc}
N -280 -130 -110 -130 {lab=vcc}
N -150 -130 -150 -80 {lab=vcc}
N -150 -80 170 -80 {lab=vcc}
N 170 -80 170 -20 {lab=vcc}
N 140 -20 170 -20 {lab=vcc}
N 170 -20 170 70 {lab=vcc}
N 140 70 170 70 {lab=vcc}
N 140 20 210 20 {lab=gnd}
N 210 20 210 110 {lab=gnd}
N 140 110 210 110 {lab=gnd}
N 140 110 140 150 {lab=gnd}
N -330 150 140 150 {lab=gnd}
N -330 50 -330 150 {lab=gnd}
N -100 150 -100 200 {lab=gnd}
N -100 200 -100 210 {lab=gnd}
N -100 210 110 210 {lab=gnd}
N 250 50 300 50 {lab=y}
C {voidwalkers-scandff-gf180mcu/designs/schematics/mux2x1/inv.sym} -480 30 0 0 {name=x3}
C {ipin.sym} -200 -20 0 0 {name=p1 lab=I0}
C {ipin.sym} -210 70 0 0 {name=p2 lab=I1
}
C {opin.sym} 300 50 0 0 {name=p4 lab=y}
C {iopin.sym} -110 -130 0 0 {name=p6 lab=vcc}
C {iopin.sym} 110 210 0 0 {name=p5 lab=gnd
}
C {ipin.sym} -700 10 0 0 {name=p3 lab=sel}
C {voidwalkers-scandff-gf180mcu/designs/schematics/mux2x1/tg.sym} -10 0 0 0 {name=x4}
C {voidwalkers-scandff-gf180mcu/designs/schematics/mux2x1/tg.sym} -10 90 0 0 {name=x1}
