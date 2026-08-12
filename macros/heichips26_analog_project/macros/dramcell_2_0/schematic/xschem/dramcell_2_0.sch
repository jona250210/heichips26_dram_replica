v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Inverter with Dummies and with LV Transistors} 610 -1700 0 0 1 1 {}
N 790 -900 850 -900 {lab=WWL}
N 790 -880 850 -880 {lab=WBL}
N 790 -860 850 -860 {lab=RWL}
N 790 -840 850 -840 {lab=RBL}
N 790 -820 850 -820 {lab=NodeC}
N 790 -920 850 -920 {lab=VGND}
N 1200 -800 1240 -800 {lab=WBL}
N 1270 -890 1270 -800 {lab=VGND}
N 1270 -760 1270 -730 {lab=WWL}
N 1480 -770 1480 -740 {lab=VGND}
N 1480 -1090 1480 -1060 {lab=RBL}
N 1410 -1030 1440 -1030 {lab=RWL}
N 1480 -1030 1560 -1030 {lab=VGND}
N 1480 -800 1550 -800 {lab=VGND}
N 1480 -1000 1480 -830 {lab=#net1}
N 1380 -800 1440 -800 {lab=NodeC}
N 1380 -650 1380 -610 {lab=VGND}
N 1380 -800 1380 -710 {lab=NodeC}
N 1300 -800 1380 -800 {lab=NodeC}
N 1380 -860 1380 -800 {lab=NodeC}
C {title-3.sym} 0 0 0 0 {name=l1 author="Abdelaziz Ider, Barnabs Hidvegi" rev=1.0 lock=true}
C {devices/opin.sym} 790 -840 2 0 {name=p1 lab=RBL}
C {devices/ipin.sym} 790 -900 2 1 {name=p2 lab=WWL}
C {devices/ipin.sym} 790 -880 2 1 {name=p3 lab=WBL}
C {devices/ipin.sym} 790 -860 2 1 {name=p4 lab=RWL}
C {devices/iopin.sym} 790 -920 2 0 {name=p6 lab=VGND}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 1270 -780 3 0 {name=M4
l=0.13u
w=0.5u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} 1200 -800 0 0 {name=p7 sig_type=std_logic lab=WBL}
C {lab_pin.sym} 1270 -890 0 0 {name=p8 sig_type=std_logic lab=VGND}
C {lab_pin.sym} 1270 -730 0 0 {name=p9 sig_type=std_logic lab=WWL}
C {lab_pin.sym} 1480 -740 0 0 {name=p10 sig_type=std_logic lab=VGND}
C {lab_pin.sym} 1410 -1030 0 0 {name=p11 sig_type=std_logic lab=RWL}
C {lab_pin.sym} 1480 -1090 2 0 {name=p12 sig_type=std_logic lab=RBL}
C {lab_pin.sym} 1550 -800 2 0 {name=p13 sig_type=std_logic lab=VGND
}
C {lab_pin.sym} 1560 -1030 2 0 {name=p14 sig_type=std_logic lab=VGND
}
C {sg13cmos5l_pr/annotate_fet_params.sym} 1530 -730 0 0 {name=annot2 ref="M5"}
C {sg13cmos5l_pr/cap_cmomi.sym} 1380 -680 0 0 {name=C3
model=cap_cmomi
w=3e-6
l=3e-6
mmin=1
mmax=4
feed=double
subblock=0
m=1
mm_ok=1
spiceprefix=X
spice_ignore=true}
C {lab_pin.sym} 1380 -610 0 0 {name=p18 sig_type=std_logic lab=VGND}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 1460 -800 0 0 {name=M5
l=0.13u
w=0.5u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 1460 -1030 0 0 {name=M6
l=0.13u
w=1u
ng=2
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {capa.sym} 1610 -600 0 0 {name=C4
m=1
value=50f
footprint=1206
device="ceramic capacitor"
spice_ignore=true}
C {devices/iopin.sym} 790 -820 2 0 {name=p19 lab=NodeC}
C {lab_pin.sym} 1380 -860 0 0 {name=p15 sig_type=std_logic lab=NodeC}
C {conn_6x1.sym} 870 -900 0 1 {name=c1 footprint=connector(6,1)}
