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
x1=0.00014992043
x2=0.00015011554
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="6 15"
node="RWL
PreCh"
linewidth_mult=6
hilight_wave=2}
B 2 1640 -1040 2440 -640 {flags=graph
y1=-3.2e-05
y2=3.4e-06
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.00014992043
x2=0.00015011554
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
linewidth_mult=6
color=7
node=i(vpwr)
}
B 2 1630 -600 2430 -200 {flags=graph
y1=-0.32
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.00014992043
x2=0.00015011554
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
color=4
node=RBL
linewidth_mult=6}
B 2 800 -1490 1600 -1090 {flags=graph
y1=0
y2=1.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.00014992043
x2=0.00015011554
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
y2=1.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.00014992043
x2=0.00015011554
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
y1=-0.21
y2=1.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.00014992043
x2=0.00015011554
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
N 500 -880 500 -860 {lab=GND}
N 500 -1020 500 -1000 {lab=GND}
N 170 -235 220 -235 {lab=WWL}
N 670 -1030 670 -990 {lab=VPWR}
N 670 -930 670 -890 {lab=GND}
N 170 -380 220 -380 {lab=RWL}
N 260 -880 260 -860 {lab=GND}
N 555 -305 575 -305 {lab=NodeC}
N 260 -960 260 -940 {lab=RWL}
N 500 -1100 500 -1080 {lab=WBL}
N 500 -960 500 -940 {lab=WWL}
N 455 -505 455 -475 {lab=VPWR}
N 555 -375 575 -375 {lab=RBL}
N 260 -1020 260 -1000 {lab=GND}
N 260 -1100 260 -1080 {lab=PreCh}
N 190 -425 220 -425 {lab=PreCh}
N 170 -265 220 -265 {lab=WBL}
N 415 -200 415 -165 {lab=GND}
C {title-3.sym} 0 0 0 0 {name=l2 author=" " rev=1.0 lock=true}
C {devices/gnd.sym} 500 -860 0 0 {name=l26 lab=GND}
C {devices/vsource.sym} 500 -910 0 1 {name=vpulse spice_ignore=False value="pulse(0 \{VPWR\} 50050n 1n 1n 10n 100u)"
}
C {devices/gnd.sym} 500 -1000 0 1 {name=l53 lab=GND}
C {devices/code_shown.sym} 0 -1700 0 0 {name=NGSPICE
only_toplevel=true 
value="
.include ../../../netlist/pex/dramcell_2_0_c_magic_pex_3.spice
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
tran 10n 800u
write @schname\\\\.raw

unset appendwrite
set wr_vecnames
set wr_singlescale
*wrdata ../plot_simulations/data/@schname\\\\.txt

*quit
.endc
"}
C {devices/launcher.sym} 920 -1560 0 0 {name=h2
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
C {devices/lab_pin.sym} 170 -235 2 1 {name=l6 sig_type=std_logic lab=WWL}
C {devices/lab_pin.sym} 170 -380 2 1 {name=l7 sig_type=std_logic lab=RWL}
C {devices/vsource.sym} 670 -960 0 0 {name=VPWR value=\{VPWR\}}
C {devices/gnd.sym} 670 -890 0 0 {name=l19 lab=GND}
C {devices/lab_pin.sym} 670 -1030 3 1 {name=l11 sig_type=std_logic lab=VPWR}
C {devices/vsource.sym} 500 -1050 0 1 {name=vpulse1 value="pulse(0 \{VPWR\} 50u 1n 1n 100n 400u)"
}
C {devices/lab_pin.sym} 575 -305 0 1 {name=l4 sig_type=std_logic lab=NodeC}
C {devices/vsource.sym} 260 -910 0 1 {name=vpulse3 spice_ignore=False value="pulse(0 \{VPWR\} 150040n 1n 1n 30n 200u)"
}
C {devices/lab_pin.sym} 260 -960 0 1 {name=l3 sig_type=std_logic lab=RWL}
C {devices/lab_pin.sym} 500 -1100 0 1 {name=l17 sig_type=std_logic lab=WBL}
C {devices/lab_pin.sym} 500 -960 2 1 {name=l18 sig_type=std_logic lab=WWL}
C {devices/lab_pin.sym} 170 -265 2 1 {name=l25 sig_type=std_logic lab=WBL}
C {devices/lab_pin.sym} 455 -505 3 1 {name=l32 sig_type=std_logic lab=VPWR}
C {devices/lab_pin.sym} 575 -375 0 1 {name=l14 sig_type=std_logic lab=RBL}
C {devices/gnd.sym} 260 -860 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 260 -1050 0 1 {name=vpulse2 spice_ignore=False value="pulse(\{VPWR\} 0 150008n 1n 1n 10n 200u)"
}
C {devices/lab_pin.sym} 260 -1100 0 1 {name=l12 sig_type=std_logic lab=PreCh}
C {devices/gnd.sym} 260 -1000 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} 190 -425 2 1 {name=l16 sig_type=std_logic lab=PreCh}
C {devices/gnd.sym} 415 -165 0 0 {name=l5 lab=GND}
C {dramcell_2_0_c.sym} -265 -405 0 0 {name=x2
spice_ignore=true}
C {dramcell_2_0_c_pex.sym} -260 -70 0 0 {name=x3
spice_ignore=true}
C {dramcell_2_0_c.sym} 415 -175 0 0 {name=x1
}
