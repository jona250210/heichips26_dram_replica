v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1640 -1490 2440 -1090 {flags=graph
y1=0
y2=1.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=6
node=RWL
linewidth_mult=6}
B 2 1640 -1040 2440 -640 {flags=graph
y1=0
y2=1.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
autoload=0
rainbow=1
color=6
node=PreCh
linewidth_mult=6}
B 2 1630 -600 2430 -200 {flags=graph
y1=2.959956
y2=6.660176
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
autoload=0
hilight_wave=-1
color="6 21"
node="RBL 2 +
~RBL"
linewidth_mult=6}
B 2 800 -1490 1600 -1090 {flags=graph
y1=0
y2=1.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=6
node=WWL
linewidth_mult=6}
B 2 800 -1040 1600 -640 {flags=graph
y1=0
y2=0.01
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=6
color=6
node=WBL}
B 2 800 -600 1600 -200 {flags=graph
y1=-0.018
y2=1.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=6
color=6
node=NodeC
hcursor1_y=0.71029008}
T {Testbench for transient analysis - DRAMcell} 740 -1730 0 0 1 1 {}
T {Abdelaziz Ider, Barnabas Hidvegi} 1240 -140 0 0 0.6 0.6 {}
N 480 -590 480 -570 {lab=GND}
N 480 -750 480 -730 {lab=GND}
N 90 -110 140 -110 {lab=WWL}
N 220 -320 220 -270 {lab=VPWR}
N 670 -1030 670 -990 {lab=VPWR}
N 670 -930 670 -890 {lab=GND}
N 90 -240 140 -240 {lab=RWL}
N 220 -80 220 -60 {lab=GND}
N 320 -480 320 -470 {lab=VPWR}
N 320 -440 350 -440 {lab=VPWR}
N 350 -480 350 -440 {lab=VPWR}
N 320 -480 350 -480 {lab=VPWR}
N 320 -520 320 -480 {lab=VPWR}
N 250 -440 280 -440 {lab=PreCh}
N 240 -590 240 -570 {lab=GND}
N 320 -410 320 -230 {lab=RBL}
N 310 -230 320 -230 {lab=RBL}
N 430 -330 430 -310 {lab=VPWR}
N 310 -160 330 -160 {lab=NodeC}
N 430 -170 460 -170 {lab=GND}
N 430 -230 430 -200 {lab=~RBL}
N 240 -820 240 -800 {lab=PreCh}
N 240 -740 240 -720 {lab=GND}
N 240 -670 240 -650 {lab=RWL}
N 480 -830 480 -810 {lab=WBL}
N 90 -150 140 -150 {lab=WBL}
N 480 -670 480 -650 {lab=WWL}
N 430 -230 460 -230 {lab=~RBL}
N 430 -250 430 -230 {lab=~RBL}
N 430 -120 430 -100 {lab=GND}
N 390 -230 390 -170 {lab=RBL}
N 430 -330 460 -330 {lab=VPWR}
N 430 -360 430 -330 {lab=VPWR}
N 460 -330 460 -280 {lab=VPWR}
N 430 -280 460 -280 {lab=VPWR}
N 430 -120 460 -120 {lab=GND}
N 430 -140 430 -120 {lab=GND}
N 460 -170 460 -120 {lab=GND}
N 320 -230 390 -230 {lab=RBL}
N 390 -280 390 -230 {lab=RBL}
C {title-3.sym} 0 0 0 0 {name=l2 author=" " rev=1.0 lock=true}
C {devices/gnd.sym} 480 -570 0 0 {name=l26 lab=GND}
C {devices/vsource.sym} 480 -620 0 1 {name=vpulse spice_ignore=False value="pulse(0 \{VPWR\} 50n 1n 1n 10n 2m)"
}
C {devices/gnd.sym} 480 -730 0 1 {name=l53 lab=GND}
C {devices/code_shown.sym} 0 -1700 0 0 {name=NGSPICE
only_toplevel=true 
value="
*.include ../../../netlist/pex/heichips26_analog_project_magic_pex_3.spice
*.include heichips26_analog_project.save
.param VPWR=1.5
.csparam VPWR=VPWR
.param VAPWR=1.5
.csparam VAPWR=VAPWR
.param Vcm=VAPWR/2
.param temp=27
.param Cload=10p
.param Rload=1k
.param w=25u
.param l=0.13u
.options savecurrents klu method=gear reltol=1e-3 abstol=1e-12 gmin=1e-12
.control
save all

* Operating Point Analysis
op
remzerovec
write @schname\\\\.raw
set appendwrite

* Transient Analysis
tran 10u 1m
write @schname\\\\.raw

unset appendwrite
set wr_vecnames
set wr_singlescale
*wrdata ../plot_simulations/data/@schname\\\\.txt

*quit
.endc
"}
C {devices/launcher.sym} 930 -1560 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1660 -1560 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/[file rootname [file tail [xschem get current_name]]].raw tran"
}
C {devices/launcher.sym} 1260 -1560 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/code_shown.sym} 1940 -1660 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
.lib cornerCAP.lib cap_typ
"}
C {/home/bah67de/git/heichips26_dram_replica/macros/heichips26_analog_project/macros/dramcell/schematic/xschem/dramcell.sym} 100 -880 0 0 {name=x2
spice_ignore=true}
C {devices/lab_pin.sym} 90 -150 2 1 {name=l5 sig_type=std_logic lab=WBL}
C {devices/lab_pin.sym} 90 -110 2 1 {name=l6 sig_type=std_logic lab=WWL}
C {devices/lab_pin.sym} 90 -240 2 1 {name=l7 sig_type=std_logic lab=RWL}
C {devices/lab_pin.sym} 220 -320 0 1 {name=l9 sig_type=std_logic lab=VPWR}
C {devices/vsource.sym} 670 -960 0 0 {name=VPWR value=\{VPWR\}}
C {devices/gnd.sym} 670 -890 0 0 {name=l19 lab=GND}
C {devices/lab_pin.sym} 670 -1030 3 1 {name=l11 sig_type=std_logic lab=VPWR}
C {devices/gnd.sym} 220 -60 0 0 {name=l10 lab=GND}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 300 -440 0 0 {name=M2
l=0.13u
w=1u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/vsource.sym} 480 -780 0 1 {name=vpulse1 value="pulse(0 \{VPWR\} 0 1n 1n 100n 2m)"
}
C {devices/vsource.sym} 240 -770 0 1 {name=vpulse2 spice_ignore=False value="pulse(0 \{VPWR\} 4075n 1n 1n 10n 6u)"
}
C {devices/lab_pin.sym} 250 -440 2 1 {name=l8 sig_type=std_logic lab=PreCh}
C {devices/lab_pin.sym} 330 -160 0 1 {name=l4 sig_type=std_logic lab=NodeC}
C {devices/gnd.sym} 240 -570 0 0 {name=l12 lab=GND}
C {devices/vsource.sym} 240 -620 0 1 {name=vpulse3 spice_ignore=False value="pulse(0 \{VPWR\} 2m 1n 1n 10n 500n)"
}
C {dramcell_2_0.sym} 160 -100 0 0 {name=x3}
C {devices/lab_pin.sym} 320 -520 3 1 {name=l13 sig_type=std_logic lab=VPWR}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 410 -280 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/lab_pin.sym} 430 -360 3 1 {name=l14 sig_type=std_logic lab=VPWR}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 410 -170 0 0 {name=M4
l=0.13u
w=0.15u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 430 -100 0 0 {name=l15 lab=GND}
C {lab_wire.sym} 330 -230 2 0 {name=p1 sig_type=std_logic lab=RBL}
C {devices/gnd.sym} 240 -720 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 240 -820 2 1 {name=l16 sig_type=std_logic lab=PreCh}
C {devices/lab_pin.sym} 240 -670 0 1 {name=l3 sig_type=std_logic lab=RWL}
C {devices/lab_pin.sym} 480 -830 0 1 {name=l17 sig_type=std_logic lab=WBL}
C {devices/lab_pin.sym} 480 -670 2 1 {name=l18 sig_type=std_logic lab=WWL}
C {devices/lab_pin.sym} 460 -230 0 1 {name=l22 sig_type=std_logic lab=~RBL}
