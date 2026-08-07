v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Inverter with Dummies and with LV Transistors} 610 -1700 0 0 1 1 {}
N 1610 -770 1610 -740 {lab=VGND}
N 1370 -800 1410 -800 {lab=Data_in}
N 1610 -1090 1610 -1060 {lab=Data_out}
N 1440 -760 1440 -720 {lab=~W}
N 1540 -1030 1570 -1030 {lab=~R}
N 1610 -1030 1690 -1030 {lab=VPWR}
N 1440 -910 1440 -800 {lab=VPWR}
N 1610 -800 1680 -800 {lab=VPWR}
N 850 -1010 910 -1010 {lab=#net1}
N 850 -950 910 -950 {lab=~W}
N 850 -930 910 -930 {lab=Data_in}
N 850 -910 910 -910 {lab=~R}
N 850 -890 910 -890 {lab=Data_out}
N 850 -870 910 -870 {lab=#net2}
N 850 -990 910 -990 {lab=VPWR}
N 850 -970 910 -970 {lab=VGND}
N 1610 -1000 1610 -830 {lab=#net3}
N 1470 -800 1570 -800 {lab=#net4}
C {title-3.sym} 0 0 0 0 {name=l1 author="Barnabs Hidvegi" rev=1.0 lock=true}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 1440 -780 3 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 1590 -1030 0 0 {name=M3
l=0.13u
w=0.15u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} 1610 -740 0 0 {name=p20 sig_type=std_logic lab=VGND}
C {lab_pin.sym} 1370 -800 0 0 {name=p21 sig_type=std_logic lab=Data_in}
C {lab_pin.sym} 1540 -1030 0 0 {name=p23 sig_type=std_logic lab=~R}
C {lab_pin.sym} 1440 -720 0 0 {name=p24 sig_type=std_logic lab=~W}
C {lab_pin.sym} 1610 -1090 2 0 {name=p67 sig_type=std_logic lab=Data_out}
C {lab_pin.sym} 1440 -910 2 0 {name=p80 sig_type=std_logic lab=VPWR
}
C {lab_pin.sym} 1680 -800 2 0 {name=p81 sig_type=std_logic lab=VPWR
}
C {lab_pin.sym} 1690 -1030 2 0 {name=p82 sig_type=std_logic lab=VPWR
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 1590 -800 0 0 {name=M1
l=\{l\}
w=\{w\}
ng=60
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/annotate_fet_params.sym} 1660 -730 0 0 {name="annot1" ref="M1"}
C {devices/opin.sym} 850 -890 2 0 {name=p12 lab=Data_out}
C {devices/ipin.sym} 850 -950 2 1 {name=p13 lab=~W}
C {devices/ipin.sym} 850 -930 2 1 {name=p14 lab=Data_in}
C {devices/ipin.sym} 850 -910 2 1 {name=p18 lab=~R}
C {conn_8x1.sym} 930 -990 0 1 {name=c4 footprint=connector(8,1)}
C {devices/iopin.sym} 850 -990 2 0 {name=p19 lab=VPWR}
C {devices/iopin.sym} 850 -970 2 0 {name=p22 lab=VGND}
C {noconn.sym} 850 -1010 0 0 {name=l3}
C {noconn.sym} 850 -870 0 0 {name=l4}
