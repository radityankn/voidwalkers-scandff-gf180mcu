v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 100 -80 130 -80 {lab=in}
N 100 -80 100 90 {lab=in}
N 240 10 370 10 {lab=out_inv}
N 100 90 130 90 {lab=in}
N -50 0 100 0 {lab=in}
N 170 -160 170 -110 {lab=vdd}
N 170 -80 190 -80 {lab=vdd}
N 190 -120 190 -80 {lab=vdd}
N 170 -120 190 -120 {lab=vdd}
N 170 -50 170 60 {lab=out_inv}
N 170 90 200 90 {lab=gnd}
N 200 90 200 130 {lab=gnd}
N 170 130 200 130 {lab=gnd}
N 170 120 170 150 {lab=gnd}
N 170 10 240 10 {lab=out_inv}
N 170 150 170 200 {lab=gnd}
N 170 200 200 200 {lab=gnd}
N 170 -220 170 -160 {lab=vdd}
N 170 -220 210 -220 {lab=vdd}
C {symbols/nfet_03v3.sym} 150 90 0 0 {name=M1
L=0.3u
W=0.85u
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
C {symbols/pfet_03v3.sym} 150 -80 0 0 {name=M2
L=0.3u
W=1.7u
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
C {iopin.sym} 210 -220 0 0 {name=p1 lab=vdd}
C {iopin.sym} 200 200 0 0 {name=p2 lab=gnd
}
C {opin.sym} 370 10 0 0 {name=p3 lab=out_inv}
C {ipin.sym} -50 0 2 0 {name=p4 lab=in}
