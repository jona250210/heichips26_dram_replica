* NGSPICE file created from heichips26_dram_replica.ext - technology: ihp-sg13cmos5l

.subckt heichips26_dram_replica clk ena rst_n ui_in[0] ui_in[1] ui_in[2] ui_in[3]
+ ui_in[4] ui_in[5] ui_in[6] ui_in[7] uio_in[0] uio_in[1] uio_in[2] uio_in[3] uio_in[4]
+ uio_in[5] uio_in[6] uio_in[7] uio_oe[5] uio_oe[6] uio_oe[7] uio_oe[1] uio_oe[2]
+ uio_out[0] uio_out[1] uio_out[2] uio_out[3] uio_out[4] uio_out[5] uio_out[6] uio_out[7]
+ uo_out[0] uo_out[1] uo_out[2] uo_out[3] uo_out[4] uo_out[5] uio_oe[0] uio_oe[3]
+ uio_oe[4] uo_out[6] uo_out[7] VPWR VGND VAPWR
X0 a_1790_1879# ui_in[2] VGND VGND sg13_lv_nmos ad=0.1005p pd=1.34u as=0.1005p ps=1.34u w=0.15u l=0.13u
X1 a_2816_1865# ui_in[1] a_2098_1879# VGND sg13_lv_nmos ad=0.102p pd=1.28u as=0.102p ps=1.28u w=0.3u l=0.13u
X2 uo_out[0] a_3132_1864# VGND VGND sg13_lv_nmos ad=0.1005p pd=1.34u as=0.1005p ps=1.34u w=0.15u l=0.13u
X3 a_3132_1864# ui_in[2] a_3030_1864# VGND sg13_lv_nmos ad=57f pd=0.68u as=57f ps=0.68u w=0.3u l=0.13u
X4 a_2098_1879# ui_in[2] uo_out[0] VGND sg13_lv_nmos ad=0.1005p pd=1.34u as=0.1005p ps=1.34u w=0.15u l=0.13u
X5 a_2098_1879# ui_in[2] ui_in[0] VPWR sg13_lv_pmos ad=0.1005p pd=1.34u as=0.1005p ps=1.34u w=0.15u l=0.13u
X6 VGND VPWR VGND VGND sg13_lv_pmos ad=3.4p pd=20.68u as=0.22471n ps=0.41501m w=10u l=10u
X7 a_3030_1864# ui_in[2] a_3132_1864# VGND sg13_lv_nmos ad=57f pd=0.68u as=57f ps=0.68u w=0.3u l=0.13u
X8 a_1790_1879# ui_in[2] VPWR VPWR sg13_lv_pmos ad=0.1005p pd=1.34u as=0.1005p ps=1.34u w=0.15u l=0.13u
X9 uo_out[0] a_3132_1864# VPWR VPWR sg13_lv_pmos ad=0.1005p pd=1.34u as=0.1005p ps=1.34u w=0.15u l=0.13u
X10 a_3132_1864# ui_in[3] VPWR VPWR sg13_lv_pmos ad=0.1005p pd=1.34u as=0.1005p ps=1.34u w=0.15u l=0.13u
X11 a_2098_1879# a_1790_1879# uo_out[0] VPWR sg13_lv_pmos ad=0.1005p pd=1.34u as=0.1005p ps=1.34u w=0.15u l=0.13u
X12 a_2098_1879# a_1790_1879# ui_in[0] VGND sg13_lv_nmos ad=0.1005p pd=1.34u as=0.1005p ps=1.34u w=0.15u l=0.13u
X13 a_3030_1864# a_2816_1865# VGND VGND sg13_lv_nmos ad=57f pd=0.68u as=0.102p ps=1.28u w=0.3u l=0.13u
X14 a_3132_1864# ui_in[2] a_3030_1864# VGND sg13_lv_nmos ad=0.102p pd=1.28u as=57f ps=0.68u w=0.3u l=0.13u
X15 VGND VAPWR VGND VGND sg13_lv_pmos ad=3.4p pd=20.68u as=0 ps=0 w=10u l=10u
.ends

