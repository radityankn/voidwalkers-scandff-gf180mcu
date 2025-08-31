v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -330 -210 -320 -210 {lab=VSS}
N -330 -170 -320 -170 {lab=CLK}
N -330 -150 -320 -150 {lab=RN}
N -450 -80 -440 -80 {lab=VSS}
N -450 -280 -440 -280 {lab=VDD}
N -450 -210 -380 -210 {lab=#net1}
N -380 -210 -380 -190 {lab=#net1}
N -380 -190 -320 -190 {lab=#net1}
C {ipin.sym} -750 -230 0 0 {name=p2 lab=A}
C {ipin.sym} -750 -210 0 0 {name=p3 lab=B}
C {ipin.sym} -750 -190 0 0 {name=p7 lab=S}
C {iopin.sym} -440 -280 0 0 {name=p9 lab=VDD}
C {iopin.sym} -440 -80 0 0 {name=p10 lab=VSS}
C {opin.sym} -20 -230 0 0 {name=p11 lab=Q}
C {ipin.sym} -330 -150 0 0 {name=p6 lab=RN}
C {ipin.sym} -330 -170 0 0 {name=p13 lab=CLK}
C {lab_wire.sym} -450 -230 0 1 {name=p1 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} -450 -190 0 1 {name=p4 sig_type=std_logic lab=VSS

}
C {lab_wire.sym} -320 -230 0 0 {name=p5 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} -330 -210 0 0 {name=p12 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} -450 -280 0 0 {name=p14 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} -450 -80 0 0 {name=p15 sig_type=std_logic lab=VSS
}
C {mux2x1_transmission_gate/mux_toplevel_ilmi.sym} -600 -210 0 0 {name=x3}
C {d_flip_flop/d_flip_flop_r.sym} -170 -190 0 0 {name=x1}
