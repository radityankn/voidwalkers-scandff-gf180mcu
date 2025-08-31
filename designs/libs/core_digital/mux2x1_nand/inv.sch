v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -160 -170 -160 -60 {lab=IN}
N -180 -120 -160 -120 {lab=IN}
N -120 -140 -120 -120 {lab=OUT}
N -120 -120 -120 -110 {lab=OUT}
N -120 -110 -120 -100 {lab=OUT}
N -120 -100 -120 -90 {lab=OUT}
N -120 -210 -120 -200 {lab=VDD}
N -120 -220 -120 -210 {lab=VDD}
N -120 -30 -120 -20 {lab=VSS}
N -120 -20 -120 -10 {lab=VSS}
N -120 -10 -120 -0 {lab=VSS}
N -120 -170 -100 -170 {lab=VDD}
N -100 -200 -100 -170 {lab=VDD}
N -120 -200 -100 -200 {lab=VDD}
N -120 -60 -110 -60 {lab=VSS}
N -110 -60 -110 -30 {lab=VSS}
N -120 -30 -110 -30 {lab=VSS}
N -220 -120 -180 -120 {lab=IN}
N -120 -120 -40 -120 {lab=OUT}
C {symbols/pfet_03v3.sym} -140 -170 0 0 {name=M2
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
C {symbols/nfet_03v3.sym} -140 -60 0 0 {name=M1
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
C {ipin.sym} -220 -120 0 0 {name=p1 lab=IN
}
C {opin.sym} -40 -120 0 0 {name=p2 lab=OUT
}
C {iopin.sym} -120 -220 0 0 {name=p3 lab=VDD}
C {iopin.sym} -120 0 0 0 {name=p4 lab=VSS
}
