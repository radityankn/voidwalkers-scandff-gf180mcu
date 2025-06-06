v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 60 -210 80 -210 {lab=#net1}
N 0 -280 120 -280 {lab=vdd}
N 120 -280 130 -280 {lab=vdd}
N -10 -280 0 -280 {lab=vdd}
N 0 -160 0 -140 {lab=#net1}
N 0 -160 60 -160 {lab=#net1}
N 60 -210 60 -160 {lab=#net1}
N 120 -170 120 -140 {lab=out}
N -0 -60 0 -30 {lab=#net2}
N 60 -30 120 -30 {lab=#net2}
N 120 -60 120 -30 {lab=#net2}
N 60 -30 60 0 {lab=#net2}
N 10 -90 10 -40 {lab=vss}
N 70 -40 110 -40 {lab=vss}
N 110 -90 110 -40 {lab=vss}
N 70 -40 70 50 {lab=vss}
N 60 80 60 100 {lab=vss}
N -120 100 60 100 {lab=vss}
N 120 -280 120 -250 {lab=vdd}
N 130 -280 130 -220 {lab=vdd}
N 0 -280 0 -250 {lab=vdd}
N -10 -280 -10 -220 {lab=vdd}
N -150 -280 -10 -280 {lab=vdd}
N -120 80 -120 100 {lab=vss}
N -130 50 -130 100 {lab=vss}
N -60 40 20 40 {lab=i_bias}
N -60 -20 -60 40 {lab=i_bias}
N -120 -20 -60 -20 {lab=i_bias}
N -120 -20 -120 0 {lab=i_bias}
N -120 -40 -120 -20 {lab=i_bias}
N -150 -40 -120 -40 {lab=i_bias}
N -70 -100 -40 -100 {lab=in_p}
N 0 -170 0 -160 {lab=#net1}
N 40 -210 60 -210 {lab=#net1}
N 0 -30 60 -30 {lab=#net2}
N 10 -40 70 -40 {lab=vss}
N -130 100 -120 100 {lab=vss}
N -160 100 -130 100 {lab=vss}
N -80 40 -60 40 {lab=i_bias}
N 160 -100 190 -100 {lab=in_n}
N 120 -160 200 -160 {lab=out}
N 70 50 70 100 {lab=vss}
N 60 100 70 100 {lab=vss}
C {libs/core_analog/unit_nmos/unit_nmos.sym} 20 40 0 0 {name=XMN_TAIL M=2}
C {libs/core_analog/unit_pmos/unit_pmos.sym} 80 -210 0 0 {name=XMP_N M=1}
C {libs/core_analog/unit_nmos/unit_nmos.sym} -80 40 0 1 {name=XMN_DIO M=1}
C {libs/core_analog/unit_pmos/unit_pmos.sym} 40 -210 0 1 {name=XMP_P M=1}
C {libs/core_analog/unit_nmos/unit_nmos.sym} -40 -100 0 0 {name=XMN_P M=2}
C {libs/core_analog/unit_nmos/unit_nmos.sym} 160 -100 0 1 {name=XMN_N M=1}
C {devices/ipin.sym} -70 -100 0 0 {name=p1 lab=in_p}
C {devices/ipin.sym} 190 -100 0 1 {name=p2 lab=in_n}
C {devices/ipin.sym} -150 -40 0 0 {name=p3 lab=i_bias}
C {devices/ipin.sym} -150 -280 0 0 {name=p4 lab=vdd}
C {devices/ipin.sym} -160 100 0 0 {name=p5 lab=vss}
C {devices/opin.sym} 200 -160 0 0 {name=p6 lab=out}
