* NGSPICE file created from dramcell_c.ext - technology: ihp-sg13cmos5l

.subckt dramcell_c RWL WBL VPWR VGND RBL PreCh WWL NodeC
X0 NodeC WWL a_470_550# VGND sg13_lv_nmos ad=0.102p pd=1.28u as=0.102p ps=1.28u w=0.3u l=0.13u
X1 a_1504_535# PreCh VPWR VPWR sg13_lv_pmos ad=0.1005p pd=1.34u as=0.1005p ps=1.34u w=0.15u l=0.13u
X2 a_470_550# a_162_550# WBL VGND sg13_lv_nmos ad=0.1005p pd=1.34u as=0.1005p ps=1.34u w=0.15u l=0.13u
X3 a_470_550# RWL WBL VPWR sg13_lv_pmos ad=0.1005p pd=1.34u as=0.1005p ps=1.34u w=0.15u l=0.13u
X4 a_1402_535# NodeC VGND VGND sg13_lv_nmos ad=57f pd=0.68u as=0.102p ps=1.28u w=0.3u l=0.13u
X5 a_1504_535# RWL a_1402_535# VGND sg13_lv_nmos ad=57f pd=0.68u as=57f ps=0.68u w=0.3u l=0.13u
X6 a_1402_535# RWL a_1504_535# VGND sg13_lv_nmos ad=57f pd=0.68u as=57f ps=0.68u w=0.3u l=0.13u
X7 RBL a_1504_535# VGND VGND sg13_lv_nmos ad=0.1005p pd=1.34u as=0.1005p ps=1.34u w=0.15u l=0.13u
X8 a_1504_535# RWL a_1402_535# VGND sg13_lv_nmos ad=0.102p pd=1.28u as=57f ps=0.68u w=0.3u l=0.13u
X9 a_162_550# RWL VGND VGND sg13_lv_nmos ad=0.1005p pd=1.34u as=0.1005p ps=1.34u w=0.15u l=0.13u
X10 a_470_550# RWL RBL VGND sg13_lv_nmos ad=0.1005p pd=1.34u as=0.1005p ps=1.34u w=0.15u l=0.13u
X11 RBL a_1504_535# VPWR VPWR sg13_lv_pmos ad=0.1005p pd=1.34u as=0.1005p ps=1.34u w=0.15u l=0.13u
X12 a_470_550# a_162_550# RBL VPWR sg13_lv_pmos ad=0.1005p pd=1.34u as=0.1005p ps=1.34u w=0.15u l=0.13u
X13 a_162_550# RWL VPWR VPWR sg13_lv_pmos ad=0.1005p pd=1.34u as=0.1005p ps=1.34u w=0.15u l=0.13u
.ends

