v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Inverter with Dummies and with LV Transistors} 610 -1700 0 0 1 1 {}
N 1270 -800 1270 -770 {lab=VGND}
N 1030 -830 1070 -830 {lab=Data_in}
N 1270 -1120 1270 -1090 {lab=Data_out}
N 1100 -790 1100 -750 {lab=~W}
N 1200 -1060 1230 -1060 {lab=~R}
N 1270 -1060 1350 -1060 {lab=VPWR}
N 1100 -940 1100 -830 {lab=VPWR}
N 1270 -830 1340 -830 {lab=VPWR}
N 510 -1040 570 -1040 {lab=#net1}
N 510 -980 570 -980 {lab=~W}
N 510 -960 570 -960 {lab=Data_in}
N 510 -940 570 -940 {lab=~R}
N 510 -920 570 -920 {lab=Data_out}
N 510 -900 570 -900 {lab=#net2}
N 510 -1020 570 -1020 {lab=VPWR}
N 510 -1000 570 -1000 {lab=VGND}
N 1270 -1030 1270 -860 {lab=#net3}
N 1130 -830 1230 -830 {lab=#net4}
C {title-3.sym} 0 0 0 0 {name=l1 author="Barnabs Hidvegi" rev=1.0 lock=true}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 1100 -810 3 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 1250 -1060 0 0 {name=M3
l=0.13u
w=0.15u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} 1270 -770 0 0 {name=p20 sig_type=std_logic lab=VGND}
C {lab_pin.sym} 1030 -830 0 0 {name=p21 sig_type=std_logic lab=Data_in}
C {lab_pin.sym} 1200 -1060 0 0 {name=p23 sig_type=std_logic lab=~R}
C {lab_pin.sym} 1100 -750 0 0 {name=p24 sig_type=std_logic lab=~W}
C {lab_pin.sym} 1270 -1120 2 0 {name=p67 sig_type=std_logic lab=Data_out}
C {lab_pin.sym} 1100 -940 2 0 {name=p80 sig_type=std_logic lab=VPWR
}
C {lab_pin.sym} 1340 -830 2 0 {name=p81 sig_type=std_logic lab=VPWR
}
C {lab_pin.sym} 1350 -1060 2 0 {name=p82 sig_type=std_logic lab=VPWR
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 1250 -830 0 0 {name=M1
l=\{l\}
w=\{w\}
ng=60
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/annotate_fet_params.sym} 1320 -760 0 0 {name="annot1" ref="M1"}
C {devices/opin.sym} 510 -920 2 0 {name=p60 lab=Data_out}
C {devices/ipin.sym} 510 -980 2 1 {name=p15 lab=~W}
C {devices/ipin.sym} 510 -960 2 1 {name=p16 lab=Data_in}
C {devices/ipin.sym} 510 -940 2 1 {name=p17 lab=~R}
C {conn_8x1.sym} 590 -1020 0 1 {name=c1 footprint=connector(8,1)}
C {devices/iopin.sym} 510 -1020 2 0 {name=p61 lab=VPWR}
C {devices/iopin.sym} 510 -1000 2 0 {name=p62 lab=VGND}
C {noconn.sym} 510 -900 0 0 {name=l20}
C {noconn.sym} 510 -1040 0 0 {name=l2}
