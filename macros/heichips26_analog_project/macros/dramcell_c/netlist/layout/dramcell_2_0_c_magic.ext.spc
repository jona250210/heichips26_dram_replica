* NGSPICE file created from dramcell_2_0_c.ext - technology: ihp-sg13cmos5l

.subckt dramcell_2_0_c RWL WBL VPWR VGND RBL PreCh WWL NodeC
X0 a_n724_15# a_n1032_15# WBL VGND sg13_lv_nmos ad=0.1005p pd=1.34u as=0.1005p ps=1.34u w=0.15u l=0.13u
X1 RBL a_310_0# VPWR VPWR sg13_lv_pmos ad=0.1005p pd=1.34u as=0.1005p ps=1.34u w=0.15u l=0.13u
X2 a_n724_15# RWL RBL VGND sg13_lv_nmos ad=0.1005p pd=1.34u as=0.1005p ps=1.34u w=0.15u l=0.13u
X3 a_310_0# PreCh VPWR VPWR sg13_lv_pmos ad=0.1005p pd=1.34u as=0.1005p ps=1.34u w=0.15u l=0.13u
X4 a_208_0# NodeC VGND VGND sg13_lv_nmos ad=57f pd=0.68u as=0.102p ps=1.28u w=0.3u l=0.13u
X5 RBL a_310_0# VGND VGND sg13_lv_nmos ad=0.1005p pd=1.34u as=0.1005p ps=1.34u w=0.15u l=0.13u
X6 NodeC WWL a_n724_15# VGND sg13_lv_nmos ad=0.102p pd=1.28u as=0.102p ps=1.28u w=0.3u l=0.13u
X7 a_208_0# RWL a_310_0# VGND sg13_lv_nmos ad=57f pd=0.68u as=57f ps=0.68u w=0.3u l=0.13u
X8 a_n1032_15# RWL VPWR VPWR sg13_lv_pmos ad=0.1005p pd=1.34u as=0.1005p ps=1.34u w=0.15u l=0.13u
X9 a_n724_15# a_n1032_15# RBL VPWR sg13_lv_pmos ad=0.1005p pd=1.34u as=0.1005p ps=1.34u w=0.15u l=0.13u
X10 a_310_0# RWL a_208_0# VGND sg13_lv_nmos ad=57f pd=0.68u as=57f ps=0.68u w=0.3u l=0.13u
X11 a_310_0# RWL a_208_0# VGND sg13_lv_nmos ad=0.102p pd=1.28u as=57f ps=0.68u w=0.3u l=0.13u
X12 a_n724_15# RWL WBL VPWR sg13_lv_pmos ad=0.1005p pd=1.34u as=0.1005p ps=1.34u w=0.15u l=0.13u
X13 a_n1032_15# RWL VGND VGND sg13_lv_nmos ad=0.1005p pd=1.34u as=0.1005p ps=1.34u w=0.15u l=0.13u
.ends

