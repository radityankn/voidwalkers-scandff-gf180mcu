v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -70 -40 -70 40 {lab=A}
N 20 -10 20 -0 {lab=Y}
N 20 0 20 10 {lab=Y}
N 20 -0 70 0 {lab=Y}
N -70 -70 -70 -40 {lab=A}
N -70 -70 20 -70 {lab=A}
N -70 40 -70 60 {lab=A}
N -70 60 -70 70 {lab=A}
N -70 70 20 70 {lab=A}
N -50 40 -20 40 {lab=EN}
N -60 -40 -20 -40 {lab=ENB}
N 20 -40 40 -40 {lab=vcc}
N 40 -80 40 -40 {lab=vcc}
N 20 40 40 40 {lab=gnd}
C {symbols/nfet_03v3.sym} 0 40 0 0 {name=M1
L=0.28u
W=0.22u
nf=1
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
C {symbols/pfet_03v3.sym} 0 -40 0 0 {name=M3
L=0.28u
W=0.22u
nf=1
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
C {ipin.sym} -70 -70 0 0 {name=p1 lab=A}
C {ipin.sym} -50 40 0 0 {name=p2 lab=EN}
C {opin.sym} 70 0 0 0 {name=p3 lab=Y}
C {ipin.sym} -60 -40 0 0 {name=p4 lab=ENB}
C {iopin.sym} 40 40 0 0 {name=p5 lab=gnd
}
C {iopin.sym} 40 -80 0 0 {name=p6 lab=vcc}
