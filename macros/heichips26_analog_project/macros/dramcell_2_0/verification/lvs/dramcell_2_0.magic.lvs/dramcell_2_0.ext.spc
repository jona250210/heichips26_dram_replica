* NGSPICE file created from dramcell_2_0.ext - technology: ihp-sg13cmos5l

.subckt dramcell_2_0 WWL NodeC RBL VGND
X0 a_208_0# NodeC VGND VGND sg13_lv_nmos ad=57f pd=0.68u as=0.102p ps=1.28u w=0.3u l=0.13u
X1 NodeC WWL WBL VGND sg13_lv_nmos ad=0.102p pd=1.28u as=0.102p ps=1.28u w=0.3u l=0.13u
X2 a_208_0# RWL RBL VGND sg13_lv_nmos ad=57f pd=0.68u as=57f ps=0.68u w=0.3u l=0.13u
X3 RBL RWL a_208_0# VGND sg13_lv_nmos ad=57f pd=0.68u as=57f ps=0.68u w=0.3u l=0.13u
X4 RBL RWL a_208_0# VGND sg13_lv_nmos ad=0.102p pd=1.28u as=57f ps=0.68u w=0.3u l=0.13u
.ends

