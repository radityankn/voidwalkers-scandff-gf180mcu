v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -380 -190 -320 -190 {lab=#net1}
N -330 -230 -320 -230 {lab=VDD}
N -330 -210 -320 -210 {lab=VSS}
N -330 -170 -320 -170 {lab=CLK}
N -330 -150 -320 -150 {lab=RN}
N -450 -230 -450 -190 {lab=VDD}
N -450 -150 -450 -80 {lab=VSS}
N -450 -80 -440 -80 {lab=VSS}
N -400 -190 -380 -190 {lab=#net1}
N -400 -190 -400 -170 {lab=#net1}
N -450 -170 -400 -170 {lab=#net1}
N -450 -280 -440 -280 {lab=VDD}
N -450 -280 -450 -230 {lab=VDD}
N -430 -210 -330 -210 {lab=VSS}
N -430 -210 -430 -110 {lab=VSS}
N -450 -110 -430 -110 {lab=VSS}
N -450 -230 -330 -230 {lab=VDD}
C {ipin.sym} -750 -230 0 0 {name=p2 lab=A}
C {ipin.sym} -750 -210 0 0 {name=p3 lab=B}
C {ipin.sym} -750 -190 0 0 {name=p7 lab=S}
C {opin.sym} -20 -230 0 0 {name=p8 lab=CLK_INV
}
C {iopin.sym} -440 -280 0 0 {name=p9 lab=VDD}
C {iopin.sym} -440 -80 0 0 {name=p10 lab=VSS}
C {opin.sym} -20 -210 0 0 {name=p11 lab=Q}
C {opin.sym} -20 -190 0 0 {name=p18 lab=QN}
C {opin.sym} -20 -170 0 0 {name=p19 lab=PROBE[3:0]}
C {ipin.sym} -330 -150 0 0 {name=p6 lab=RN}
C {ipin.sym} -330 -170 0 0 {name=p13 lab=CLK}
C {schematics/mux2x1_transmission_gate/mux_toplevel.sym} -600 -170 0 0 {name=x1}
C {schematics/d_flip_flop/d_flip_flop_r.sym} -170 -190 0 0 {name=x2}
