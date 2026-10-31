v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 342.9935484285515 -20 1142.993548428552 380 {flags=graph
y1=0.031026997
y2=1.8325269
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=4e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="in
out"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
rawfile=$netlist_dir/inversor_test.raw
autoload=1
smz0=50}
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
C {inversor.sym} 0 0 0 0 {name=x1}
C {vsource.sym} -310 30 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} -200 30 0 0 {name=V2 value="PULSE(0 1.8 0 1n 1n 5n 10n 4)" savecurrent=false}
C {ipin.sym} -230 0 0 0 {name=p1 lab=in
}
C {opin.sym} 210 0 0 0 {name=p2 lab=out}
C {gnd.sym} 0 110 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/corner.sym} 90 -210 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code.sym} 250 -210 0 0 {name=s1
only_toplevel=false
value="
   .control
     run
     tran 0.01n 40n
     meas tran tphl TRIG v(in) VAL=0.9 RISE=1 TARG v(out) VAL=0.9 FALL=1
     meas tran tplh TRIG v(in) VAL=0.9 FALL=1 TARG v(out) VAL=0.9 RISE=1
     write inversor_test.raw
   .endc
   .save all
"}
C {capa.sym} 190 60 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
