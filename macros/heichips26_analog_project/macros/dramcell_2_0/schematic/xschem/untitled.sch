v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -1300 -100 -1240 -100 {lab=WWL}
N -1300 -80 -1240 -80 {lab=WBL}
N -1300 -60 -1240 -60 {lab=RWL}
N -1300 -40 -1240 -40 {lab=RBL}
N -1300 -20 -1240 -20 {lab=NodeC}
N -1300 -120 -1240 -120 {lab=PreCh}
N -100 0 -60 0 {lab=CWBL}
N -30 -90 -30 0 {lab=VGND}
N -30 40 -30 70 {lab=WWL}
N 180 30 180 60 {lab=VGND}
N 110 -230 140 -230 {lab=RWL}
N 180 -230 260 -230 {lab=VGND}
N 180 0 250 0 {lab=VGND}
N 180 -200 180 -30 {lab=#net1}
N 80 0 140 0 {lab=NodeC}
N 0 0 80 0 {lab=NodeC}
N 80 -60 80 0 {lab=NodeC}
N 180 -470 180 -460 {lab=VPWR}
N 110 -430 140 -430 {lab=PreCh}
N 180 -430 200 -430 {lab=VPWR}
N 200 -470 200 -430 {lab=VPWR}
N 180 -470 200 -470 {lab=VPWR}
N 180 -480 180 -470 {lab=VPWR}
N 180 -320 180 -260 {lab=~RBL}
N -320 -160 -320 0 {lab=CWBL}
N -380 -160 -380 0 {lab=WBL}
N -420 -30 -420 20 {lab=GND}
N -420 -30 -350 -30 {lab=GND}
N -350 -30 -350 0 {lab=GND}
N -410 -180 -410 -140 {lab=VPWR}
N -410 -140 -350 -140 {lab=VPWR}
N -350 -160 -350 -140 {lab=VPWR}
N -350 40 -350 50 {lab=~ReFr}
N -320 -500 -320 -340 {lab=CWBL}
N -380 -500 -380 -340 {lab=RBL}
N -420 -370 -420 -320 {lab=GND}
N -420 -370 -350 -370 {lab=GND}
N -350 -370 -350 -340 {lab=GND}
N -410 -520 -410 -480 {lab=VPWR}
N -410 -480 -350 -480 {lab=VPWR}
N -350 -500 -350 -480 {lab=VPWR}
N -350 -300 -350 -200 {lab=RWL}
N -350 -570 -350 -540 {lab=~ReFr}
N -620 -280 -620 -260 {lab=VPWR}
N -620 -120 -590 -120 {lab=GND}
N -620 -70 -620 -50 {lab=GND}
N -620 -280 -590 -280 {lab=VPWR}
N -620 -310 -620 -280 {lab=VPWR}
N -590 -280 -590 -230 {lab=VPWR}
N -620 -230 -590 -230 {lab=VPWR}
N -620 -70 -590 -70 {lab=GND}
N -620 -90 -620 -70 {lab=GND}
N -590 -120 -590 -70 {lab=GND}
N -660 -230 -660 -120 {lab=RWL}
N -620 -180 -620 -150 {lab=~ReFr}
N -620 -180 -590 -180 {lab=~ReFr}
N -620 -200 -620 -180 {lab=~ReFr}
N 480 -420 480 -400 {lab=VPWR}
N 480 -260 510 -260 {lab=GND}
N 480 -210 480 -190 {lab=GND}
N 440 -320 440 -260 {lab=~RBL}
N 480 -420 510 -420 {lab=VPWR}
N 480 -450 480 -420 {lab=VPWR}
N 510 -420 510 -370 {lab=VPWR}
N 480 -370 510 -370 {lab=VPWR}
N 480 -210 510 -210 {lab=GND}
N 480 -230 480 -210 {lab=GND}
N 510 -260 510 -210 {lab=GND}
N 440 -370 440 -320 {lab=~RBL}
N 480 -320 480 -290 {lab=RBL}
N 480 -320 500 -320 {lab=RBL}
N 480 -340 480 -320 {lab=RBL}
N 180 -320 440 -320 {lab=~RBL}
N 180 -400 180 -320 {lab=~RBL}
N -1300 -140 -1240 -140 {lab=VGND}
N -1300 -160 -1240 -160 {lab=VPWR}
C {devices/opin.sym} -1300 -40 2 0 {name=p1 lab=RBL}
C {devices/ipin.sym} -1300 -100 2 1 {name=p2 lab=WWL}
C {devices/ipin.sym} -1300 -80 2 1 {name=p3 lab=WBL}
C {devices/ipin.sym} -1300 -60 2 1 {name=p4 lab=RWL}
C {devices/iopin.sym} -1300 -140 2 0 {name=p6 lab=VGND}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} -30 20 3 0 {name=M4
l=0.13u
w=0.3u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} -100 0 0 0 {name=p7 sig_type=std_logic lab=CWBL}
C {lab_pin.sym} -30 -90 0 0 {name=p8 sig_type=std_logic lab=VGND}
C {lab_pin.sym} -30 70 0 0 {name=p9 sig_type=std_logic lab=WWL}
C {lab_pin.sym} 180 60 0 0 {name=p10 sig_type=std_logic lab=VGND}
C {lab_pin.sym} 110 -230 0 0 {name=p11 sig_type=std_logic lab=RWL}
C {lab_pin.sym} 180 -290 2 0 {name=p12 sig_type=std_logic lab=~RBL}
C {lab_pin.sym} 250 0 2 0 {name=p13 sig_type=std_logic lab=VGND
}
C {lab_pin.sym} 260 -230 2 0 {name=p14 sig_type=std_logic lab=VGND
}
C {sg13cmos5l_pr/annotate_fet_params.sym} 230 70 0 0 {name=annot2 ref="M5"}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 160 0 0 0 {name=M5
l=0.13u
w=0.3u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 160 -230 0 0 {name=M6
l=0.13u
w=0.9u
ng=3
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/iopin.sym} -1300 -20 2 0 {name=p19 lab=NodeC}
C {lab_pin.sym} 80 -60 0 0 {name=p15 sig_type=std_logic lab=NodeC}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 160 -430 0 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/lab_pin.sym} 180 -480 3 1 {name=l8 sig_type=std_logic lab=VPWR
}
C {devices/lab_pin.sym} 110 -430 2 1 {name=l16 sig_type=std_logic lab=PreCh}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} -350 -180 3 1 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} -350 20 3 0 {name=M7
l=0.13u
w=0.15u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/gnd.sym} -420 20 0 0 {name=l23 lab=GND}
C {devices/lab_pin.sym} -380 -90 2 1 {name=l25 sig_type=std_logic lab=WBL}
C {devices/lab_pin.sym} -320 -90 0 1 {name=l27 sig_type=std_logic lab=CWBL}
C {devices/lab_pin.sym} -410 -180 3 1 {name=l22 sig_type=std_logic lab=VPWR}
C {devices/lab_pin.sym} -350 50 1 1 {name=l31 sig_type=std_logic lab=~ReFr}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} -350 -520 3 1 {name=M3
l=0.13u
w=0.15u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} -350 -320 3 0 {name=M8
l=0.13u
w=0.15u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/gnd.sym} -420 -320 0 0 {name=l20 lab=GND}
C {devices/lab_pin.sym} -320 -430 0 1 {name=l35 sig_type=std_logic lab=CWBL}
C {devices/lab_pin.sym} -410 -520 3 1 {name=l36 sig_type=std_logic lab=VPWR}
C {devices/lab_pin.sym} -350 -570 3 1 {name=l37 sig_type=std_logic lab=~ReFr}
C {devices/lab_pin.sym} -380 -420 2 1 {name=l21 sig_type=std_logic lab=RBL}
C {devices/lab_pin.sym} -350 -250 2 1 {name=l30 sig_type=std_logic lab=RWL}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} -640 -230 0 0 {name=M9
l=0.13u
w=0.15u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/lab_pin.sym} -620 -310 3 1 {name=l32 sig_type=std_logic lab=VPWR}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} -640 -120 0 0 {name=M10
l=0.13u
w=0.15u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/gnd.sym} -620 -50 0 0 {name=l33 lab=GND}
C {lab_wire.sym} -590 -180 2 0 {name=p5 sig_type=std_logic lab=~ReFr}
C {devices/lab_pin.sym} -660 -180 2 1 {name=l34 sig_type=std_logic lab=RWL}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 460 -370 0 0 {name=M11
l=0.13u
w=0.15u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 460 -260 0 0 {name=M12
l=0.13u
w=0.15u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 480 -190 0 0 {name=l15 lab=GND}
C {devices/lab_pin.sym} 480 -450 3 1 {name=l24 sig_type=std_logic lab=VPWR}
C {devices/lab_pin.sym} 500 -320 0 1 {name=l14 sig_type=std_logic lab=RBL}
C {conn_8x1.sym} -1220 -140 0 1 {name=c1 footprint=connector(8,1)}
C {devices/iopin.sym} -1300 -160 2 0 {name=p16 lab=VPWR}
C {devices/ipin.sym} -1300 -120 2 1 {name=p17 lab=PreCh}
