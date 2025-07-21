v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -640 190 -590 190 {lab=S}
N -290 190 -240 190 {lab=VDD}
N -240 140 -240 190 {lab=VDD}
N -290 230 -240 260 {lab=GND}
N -290 210 -200 210 {lab=#net4}
N -200 150 -200 210 {lab=#net4}
N -200 150 -140 150 {lab=#net4}
N -200 210 -200 290 {lab=#net4}
N -200 290 -140 290 {lab=#net4}
N -150 270 -140 270 {lab=B}
N -170 130 -140 130 {lab=A}
N 160 130 310 140 {lab=#net5}
N 160 270 240 270 {lab=#net6}
N 240 160 240 270 {lab=#net6}
N 240 160 310 160 {lab=#net6}
N 610 140 680 140 {lab=MUX_OUT}
C {voidwalkers-scandff-gf180mcu/designs/schematics/mux2x1/inv.sym} -440 210 0 0 {name=x1}
C {voidwalkers-scandff-gf180mcu/designs/schematics/mux2x1/nand.sym} 10 140 0 0 {name=x2}
C {voidwalkers-scandff-gf180mcu/designs/schematics/mux2x1/nand.sym} 10 280 0 0 {name=x3}
C {voidwalkers-scandff-gf180mcu/designs/schematics/mux2x1/nand.sym} 460 150 0 0 {name=x4}
C {vdd.sym} -240 140 0 0 {name=l1 lab=VDD}
C {gnd.sym} -240 260 0 0 {name=l2 lab=GND}
C {ipin.sym} -640 190 0 0 {name=p1 lab=S}
C {ipin.sym} -170 130 0 0 {name=p2 lab=A
}
C {ipin.sym} -150 270 0 0 {name=p3 lab=B}
C {opin.sym} 670 140 0 0 {name=p4 lab=MUX_OUT}
