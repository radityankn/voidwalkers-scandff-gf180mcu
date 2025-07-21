v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 70 -580 70 -560 {lab=VDD}
N 70 -580 280 -580 {lab=VDD}
N 280 -580 280 -560 {lab=VDD}
N 170 -630 170 -580 {lab=VDD}
N 70 -500 70 -470 {lab=#net1}
N 70 -470 280 -470 {lab=#net1}
N 280 -500 280 -470 {lab=#net1}
N 180 -470 180 -440 {lab=#net1}
N 180 -440 240 -440 {lab=#net1}
N -20 -530 30 -530 {lab=A}
N 200 -530 240 -530 {lab=B}
N 180 -440 180 -380 {lab=#net1}
N 180 -210 180 -180 {lab=GND}
N 180 -320 180 -270 {lab=#net2}
N 20 -350 140 -350 {lab=A}
N 20 -530 20 -350 {lab=A}
N 70 -530 90 -530 {lab=VDD}
N 90 -560 90 -530 {lab=VDD}
N 70 -560 90 -560 {lab=VDD}
N 280 -530 300 -530 {lab=VDD}
N 300 -560 300 -530 {lab=VDD}
N 280 -560 300 -560 {lab=VDD}
N 180 -240 180 -210 {lab=GND}
N 180 -350 200 -350 {lab=GND}
N 200 -350 200 -210 {lab=GND}
N 180 -210 200 -210 {lab=GND}
N 220 -530 220 -490 {lab=B}
N 350 -490 350 -120 {lab=B}
N 110 -120 350 -120 {lab=B}
N 110 -240 110 -120 {lab=B}
N 110 -240 140 -240 {lab=B}
N 220 -490 350 -490 {lab=B}
C {symbols/nfet_03v3.sym} 160 -350 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} 160 -240 0 0 {name=M2
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
C {symbols/pfet_03v3.sym} 50 -530 0 0 {name=M3
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
C {symbols/pfet_03v3.sym} 260 -530 0 0 {name=M4
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
C {ipin.sym} 200 -530 0 0 {name=p1 lab=B}
C {ipin.sym} -20 -530 0 0 {name=p2 lab=A}
C {vdd.sym} 170 -630 0 0 {name=l1 lab=VDD}
C {gnd.sym} 180 -180 0 0 {name=l2 lab=GND}
C {opin.sym} 240 -440 0 0 {name=p3 lab=OUT
}
