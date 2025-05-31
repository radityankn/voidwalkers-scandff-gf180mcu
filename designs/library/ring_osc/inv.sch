v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 40 -40 40 40 {lab=out}
N -40 -70 -0 -70 {lab=in}
N -40 -70 -40 70 {lab=in}
N -40 70 0 70 {lab=in}
N 40 0 110 -0 {lab=out}
N -110 0 -40 0 {lab=in}
N 40 -150 40 -100 {lab=vdd}
N 40 -70 60 -70 {lab=vdd}
N 60 -150 60 -70 {lab=vdd}
N 40 -150 60 -150 {lab=vdd}
N 40 -180 40 -150 {lab=vdd}
N 40 70 60 70 {lab=vss}
N 60 70 60 130 {lab=vss}
N 40 130 60 130 {lab=vss}
N 40 100 40 130 {lab=vss}
N 40 130 40 160 {lab=vss}
C {symbols/nfet_03v3.sym} 20 70 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 20 -70 0 0 {name=M2
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
C {devices/ipin.sym} -110 0 0 0 {name=p1 lab=in}
C {devices/opin.sym} 110 0 0 0 {name=p2 lab=out}
C {devices/iopin.sym} 40 -180 0 0 {name=p3 lab=vdd}
C {devices/iopin.sym} 40 160 0 0 {name=p4 lab=vss}
