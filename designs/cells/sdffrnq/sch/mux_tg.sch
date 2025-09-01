v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 190 -80 240 -80 {lab=OUT}
N 240 -80 240 90 {lab=OUT}
N 190 90 240 90 {lab=OUT}
N 100 -80 130 -80 {lab=IN}
N 100 -80 100 90 {lab=IN}
N 160 130 160 150 {lab=N_GATE}
N 240 10 370 10 {lab=OUT}
N 100 90 130 90 {lab=IN}
N 160 -150 160 -120 {lab=P_GATE}
N -50 150 160 150 {lab=N_GATE}
N -50 -150 160 -150 {lab=P_GATE}
N -50 0 100 0 {lab=IN}
N 160 -80 160 -50 {lab=VDD}
N 160 -50 210 -50 {lab=VDD}
N 210 -160 210 -50 {lab=VDD}
N 160 60 160 90 {lab=VSS}
N 160 60 200 60 {lab=VSS}
N 200 60 200 200 {lab=VSS}
C {symbols/nfet_03v3.sym} 160 110 3 0 {name=M1
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
C {symbols/pfet_03v3.sym} 160 -100 1 0 {name=M2
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
C {iopin.sym} 210 -160 0 0 {name=p1 lab=VDD}
C {iopin.sym} 200 200 0 0 {name=p2 lab=VSS
}
C {opin.sym} 370 10 0 0 {name=p3 lab=OUT}
C {ipin.sym} -50 0 2 1 {name=p4 lab=IN}
C {ipin.sym} -50 -150 2 1 {name=p5 lab=P_GATE}
C {ipin.sym} -50 150 2 1 {name=p6 lab=N_GATE}
