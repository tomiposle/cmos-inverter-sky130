v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 310 70 1110 470 {flags=graph
y1=-0.027626407
y2=1.972373
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3.9168817e-11
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/inversor_test.raw
color="4 7"
node="in
out"
smz0=50
autoload=1
x2=4.0039172e-08
hilight_wave=-1}
N -310 -120 -310 0 {lab=#net1}
N -310 -120 -0 -120 {lab=#net1}
N -0 -120 0 -50 {lab=#net1}
N -0 50 0 110 {lab=GND}
N -310 110 0 110 {lab=GND}
N -310 60 -310 110 {lab=GND}
N -230 -0 -200 0 {lab=in}
N -200 -0 -60 -0 {lab=in}
N -200 60 -200 110 {lab=GND}
N 80 -0 210 0 {lab=out}
N 190 -0 190 30 {lab=out}
N 190 90 190 110 {lab=GND}
N 0 110 190 110 {lab=GND}
N 170 60 170 110 {lab=GND}
C {inversor.sym} 0 0 0 0 {name=x1}
C {vsource.sym} -310 30 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} -200 30 0 0 {name=V2 value="PULSE(0 1.8 0 1n 1n 5n 10n 4)" savecurrent=false}
C {ipin.sym} -230 0 0 0 {name=p1 lab=in
}
C {opin.sym} 210 0 0 0 {name=p2 lab=out}
C {gnd.sym} 0 110 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/res_iso_pw.sym} 190 60 0 0 {name=R1
W=2.65
L=2.65
model=res_iso_pw
spiceprefix=X
mult=1}
C {sky130_fd_pr/corner.sym} 90 -210 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code.sym} 250 -210 0 0 {name=s1
only_toplevel=false
value="
.control
  run
  tran 0.1n 40n
  write inversor_test.raw
.endc
.save all
"}
