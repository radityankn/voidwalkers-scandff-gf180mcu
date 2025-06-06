v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 60 -210 80 -210 {lab=#net1}
N -10 -280 0 -280 {lab=vdd}
N 0 -160 60 -160 {lab=#net1}
N 60 -210 60 -160 {lab=#net1}
N 60 -30 120 -30 {lab=#net2}
N 70 -40 110 -40 {lab=vss}
N -120 100 60 100 {lab=vss}
N -150 -280 -10 -280 {lab=vdd}
N -60 40 20 40 {lab=i_bias}
N -60 -20 -60 40 {lab=i_bias}
N -120 -20 -60 -20 {lab=i_bias}
N -120 -40 -120 -20 {lab=i_bias}
N -150 -40 -120 -40 {lab=i_bias}
N -70 -100 -40 -100 {lab=in_p}
N 40 -210 60 -210 {lab=#net1}
N 0 -30 60 -30 {lab=#net2}
N 10 -40 70 -40 {lab=vss}
N -130 100 -120 100 {lab=vss}
N -160 100 -130 100 {lab=vss}
N -80 40 -60 40 {lab=i_bias}
N 160 -100 190 -100 {lab=in_n}
N 120 -160 200 -160 {lab=out}
N -120 -20 -120 10 {lab=i_bias}
N -120 70 -120 100 {lab=vss}
N -130 40 -120 40 {lab=vss}
N -130 40 -130 100 {lab=vss}
N 60 70 60 100 {lab=vss}
N 60 -30 60 10 {lab=#net2}
N 110 -100 120 -100 {lab=vss}
N 110 -100 110 -40 {lab=vss}
N -0 -100 10 -100 {lab=vss}
N 10 -100 10 -40 {lab=vss}
N 0 -70 -0 -30 {lab=#net2}
N 120 -70 120 -30 {lab=#net2}
N 120 -180 120 -130 {lab=out}
N 120 -280 120 -240 {lab=vdd}
N 0 -180 0 -130 {lab=#net1}
N -10 -210 0 -210 {lab=vdd}
N -10 -280 -10 -210 {lab=vdd}
N 0 -280 0 -240 {lab=vdd}
N 0 -280 120 -280 {lab=vdd}
N 60 100 70 100 {lab=vss}
N 70 -40 70 100 {lab=vss}
N 60 40 70 40 {lab=vss}
N 120 -210 130 -210 {lab=vdd}
N 130 -280 130 -210 {lab=vdd}
N 120 -280 130 -280 {lab=vdd}
C {devices/ipin.sym} -70 -100 0 0 {name=p1 lab=in_p}
C {devices/ipin.sym} 190 -100 0 1 {name=p2 lab=in_n}
C {devices/ipin.sym} -150 -40 0 0 {name=p3 lab=i_bias}
C {devices/ipin.sym} -150 -280 0 0 {name=p4 lab=vdd}
C {devices/ipin.sym} -160 100 0 0 {name=p5 lab=vss}
C {devices/opin.sym} 200 -160 0 0 {name=p6 lab=out}
C {symbols/pfet_03v3.sym} 100 -210 0 0 {name=M2
L=0.5u
W=5u
nf=2
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} -100 40 0 1 {name=M3
L=0.5u
W=5u
nf=2
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 40 40 0 0 {name=M1
L=0.5u
W=5u
nf=2
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} -20 -100 0 0 {name=M4
L=0.5u
W=5u
nf=2
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 140 -100 0 1 {name=M5
L=0.5u
W=5u
nf=2
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 20 -210 0 1 {name=M6
L=0.5u
W=5u
nf=2
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
