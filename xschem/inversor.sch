v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -40 -30 -40 30 {lab=Vout}
N -100 -60 -80 -60 {lab=xxx}
N -100 -60 -100 60 {lab=xxx}
N -100 60 -80 60 {lab=xxx}
N -40 90 -40 140 {lab=Vss}
N -40 -140 -40 -90 {lab=Vdd}
N -40 -0 10 -0 {lab=Vout}
N -40 60 -30 60 {lab=Vss}
N -30 60 -30 90 {lab=Vss}
N -40 90 -30 90 {lab=Vss}
N -40 -60 -30 -60 {lab=Vdd}
N -30 -90 -30 -60 {lab=Vdd}
N -40 -90 -30 -90 {lab=Vdd}
N -140 -0 -100 0 {lab=xxx}
C {sky130_fd_pr/pfet_01v8.sym} -60 -60 0 0 {name=M1
W=2.1
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -60 60 0 0 {name=M2
W=1.05
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {ipin.sym} -40 -140 0 0 {name=p1 lab=Vdd}
C {ipin.sym} -40 140 0 0 {name=p2 lab=Vss}
C {opin.sym} 10 0 0 0 {name=p3 lab=Vout}
C {ipin.sym} -140 0 0 0 {name=p4 lab=Vin}
