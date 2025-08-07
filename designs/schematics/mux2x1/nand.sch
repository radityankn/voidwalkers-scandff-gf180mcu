v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 70 -580 70 -560 {lab=vcc}
N 70 -580 280 -580 {lab=vcc}
N 170 -630 170 -580 {lab=vcc}
N 70 -500 70 -470 {lab=OUT}
N 70 -470 280 -470 {lab=OUT}
N 180 -470 180 -440 {lab=OUT}
N 180 -440 240 -440 {lab=OUT}
N -20 -530 30 -530 {lab=A}
N 180 -440 180 -380 {lab=OUT}
N 180 -210 180 -180 {lab=gnd}
N 180 -320 180 -270 {lab=#net1}
N 70 -530 90 -530 {lab=vcc}
N 90 -560 90 -530 {lab=vcc}
N 70 -560 90 -560 {lab=vcc}
N 280 -500 280 -470 {lab=OUT}
N 280 -580 280 -560 {lab=vcc}
N 280 -530 300 -530 {lab=vcc}
N 300 -570 300 -530 {lab=vcc}
N 280 -570 300 -570 {lab=vcc}
N 180 -240 200 -240 {lab=gnd}
N 180 -350 200 -350 {lab=gnd}
N 200 -350 200 -240 {lab=gnd}
N 200 -240 200 -210 {lab=gnd}
N 180 -210 200 -210 {lab=gnd}
N -20 -530 -20 -400 {lab=A}
N -110 -400 -20 -400 {lab=A}
N -20 -400 -20 -240 {lab=A}
N -20 -240 140 -240 {lab=A}
N -110 -350 140 -350 {lab=B}
N 140 -530 240 -530 {lab=B}
N 110 -530 140 -530 {lab=B}
N 110 -530 110 -350 {lab=B}
C {symbols/nfet_03v3.sym} 160 -350 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} 160 -240 0 0 {name=M2
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
C {symbols/pfet_03v3.sym} 50 -530 0 0 {name=M3
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
C {symbols/pfet_03v3.sym} 260 -530 0 0 {name=M4
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
C {ipin.sym} -110 -400 0 0 {name=p1 lab=A}
C {ipin.sym} -110 -350 0 0 {name=p2 lab=B}
C {opin.sym} 240 -440 0 0 {name=p3 lab=OUT
}
C {iopin.sym} 170 -630 0 0 {name=p4 lab=vcc}
C {iopin.sym} 180 -180 0 0 {name=p5 lab=gnd
}
