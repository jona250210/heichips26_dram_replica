v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1630 -1440 2430 -1040 {flags=graph
y1=0
y2=1.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=3
color=20
node=Data_in}
B 2 1630 -1020 2430 -620 {flags=graph
y1=0
y2=1.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=3
autoload=0
color=6
node=~W
rainbow=1}
B 2 1630 -600 2430 -200 {flags=graph
y1=2.7e-05
y2=1.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=3
autoload=0
hilight_wave=-1
color="20 6 4"
node="Data_out
~Data_out
C"}
T {Testbench for transient analysis - Inverter} 740 -1730 0 0 1 1 {}
N 480 -480 480 -460 {lab=GND}
N 300 -580 300 -560 {lab=GND}
N 400 -720 400 -700 {lab=GND}
N 480 -610 480 -540 {lab=~W}
N 300 -650 300 -640 {lab=Data_in}
N 700 -730 760 -730 {lab=Data_out}
N 480 -610 530 -610 {lab=~W}
N 300 -650 530 -650 {lab=Data_in}
N 480 -780 480 -740 {lab=~R}
N 610 -820 610 -770 {lab=VPWR}
N 1270 -1090 1270 -1050 {lab=VPWR}
N 1270 -990 1270 -950 {lab=GND}
N 400 -780 480 -780 {lab=~R}
N 480 -740 530 -740 {lab=~R}
N 610 -580 610 -560 {lab=GND}
N 1150 -530 1150 -510 {lab=~Data_out}
N 1150 -480 1190 -480 {lab=GND}
N 1190 -480 1190 -430 {lab=GND}
N 1150 -430 1190 -430 {lab=GND}
N 1150 -430 1150 -420 {lab=GND}
N 1150 -450 1150 -430 {lab=GND}
N 1090 -480 1110 -480 {lab=Data_out}
N 1350 -530 1380 -530 {lab=~Data_out}
N 1150 -670 1150 -660 {lab=VPWR}
N 1150 -600 1150 -530 {lab=~Data_out}
N 1150 -630 1180 -630 {lab=VPWR}
N 1180 -670 1180 -630 {lab=VPWR}
N 1150 -670 1180 -670 {lab=VPWR}
N 1150 -710 1150 -670 {lab=VPWR}
N 1090 -630 1090 -480 {lab=Data_out}
N 1090 -630 1110 -630 {lab=Data_out}
N 1040 -480 1090 -480 {lab=Data_out}
N 1250 -450 1250 -430 {lab=GND}
N 1350 -450 1350 -430 {lab=GND}
N 1350 -530 1350 -510 {lab=~Data_out}
N 1250 -530 1350 -530 {lab=~Data_out}
N 1250 -530 1250 -510 {lab=~Data_out}
N 1150 -530 1250 -530 {lab=~Data_out}
N 700 -660 750 -660 {lab=VPWR}
C {title-3.sym} 0 0 0 0 {name=l2 author="Barnabas Hidvegi" rev=1.0 lock=true}
C {devices/gnd.sym} 480 -460 0 0 {name=l26 lab=GND}
C {devices/vsource.sym} 480 -510 0 1 {name=vpulse spice_ignore=False value="pulse(0 \{VPWR\} 0 10n 10n 10m 20m)"
}
C {devices/gnd.sym} 300 -560 0 0 {name=l53 lab=GND}
C {vsource.sym} 400 -750 0 0 {name=V2 value=0 savecurrent=false}
C {devices/gnd.sym} 400 -700 0 0 {name=l54 lab=GND}
C {devices/code_shown.sym} 60 -1580 0 0 {name=NGSPICE
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
.param w=16u
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
tran 10u 80m
write @schname\\\\.raw

unset appendwrite
set wr_vecnames
set wr_singlescale
wrdata ../plot_simulations/data/@schname\\\\.txt

*quit
.endc
"}
C {devices/launcher.sym} 1690 -1610 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1690 -1490 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/[file rootname [file tail [xschem get current_name]]].raw tran"
}
C {devices/launcher.sym} 1690 -1550 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/code_shown.sym} 1950 -1610 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"}
C {/home/bah67de/git/heichips26_dram_replica/macros/heichips26_analog_project/macros/dramcell/schematic/xschem/dramcell.sym} 940 -1260 0 0 {name=x2
spice_ignore=true}
C {devices/lab_pin.sym} 760 -730 0 1 {name=l1 sig_type=std_logic lab=Data_out}
C {devices/lab_pin.sym} 300 -650 2 1 {name=l5 sig_type=std_logic lab=Data_in}
C {devices/lab_pin.sym} 480 -580 0 1 {name=l6 sig_type=std_logic lab=~W}
C {devices/lab_pin.sym} 480 -780 0 1 {name=l7 sig_type=std_logic lab=~R}
C {devices/lab_pin.sym} 610 -820 0 1 {name=l9 sig_type=std_logic lab=VPWR}
C {devices/vsource.sym} 1270 -1020 0 0 {name=VPWR value=\{VPWR\}}
C {devices/gnd.sym} 1270 -950 0 0 {name=l19 lab=GND}
C {devices/lab_pin.sym} 1270 -1090 3 1 {name=l11 sig_type=std_logic lab=VPWR}
C {devices/gnd.sym} 610 -560 0 0 {name=l10 lab=GND}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 1130 -480 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 1150 -420 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} 1150 -710 0 1 {name=l13 sig_type=std_logic lab=VPWR}
C {devices/lab_pin.sym} 1040 -480 2 1 {name=l14 sig_type=std_logic lab=Data_out}
C {devices/lab_pin.sym} 1380 -530 0 1 {name=l15 sig_type=std_logic lab=~Data_out}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 1130 -630 0 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {capa.sym} 1250 -480 0 0 {name=C2
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"
}
C {res.sym} 1350 -480 0 0 {name=R2
value=\{Rload\}
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {devices/gnd.sym} 1250 -430 0 0 {name=l17 lab=GND}
C {devices/gnd.sym} 1350 -430 0 0 {name=l18 lab=GND}
C {devices/vsource.sym} 300 -610 0 1 {name=vpulse1 spice_ignore=False value="pulse(0 \{VPWR\} 2.5m 10n 10n 5m 10m)"
}
C {dramcell.sym} 550 -600 0 0 {name=x1}
C {devices/lab_pin.sym} 750 -660 0 1 {name=l3 sig_type=std_logic lab=C}
C {sg13g2_pr/annotate_fet_params.sym} 1240 -660 0 0 {name=annot1 ref=M2}
