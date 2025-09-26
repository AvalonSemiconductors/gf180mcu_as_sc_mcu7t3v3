* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__and2_2.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__and2_2 VDD VNW VPW VSS B A Y
X0 VDD B a_28_68# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X1 a_172_68# A a_28_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X2 Y a_28_68# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X3 VSS a_28_68# Y VPW nfet_03v3 ad=0.52p pd=3.04u as=0.26p ps=1.52u w=1u l=0.28u
X4 VDD a_28_68# Y VNW pfet_03v3 ad=0.7176p pd=3.8u as=0.3588p ps=1.9u w=1.38u l=0.28u
X5 Y a_28_68# VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X6 a_28_68# A VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X7 VSS B a_172_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__and2_4.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__and2_4 VDD VNW VPW VSS B A Y
X0 VSS a_28_68# Y VPW nfet_03v3 ad=0.6p pd=3.2u as=0.26p ps=1.52u w=1u l=0.28u
X1 VDD B a_28_68# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X2 Y a_28_68# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X3 a_172_68# A a_28_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X4 Y a_28_68# VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X5 Y a_28_68# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X6 VDD a_28_68# Y VNW pfet_03v3 ad=0.828p pd=3.96u as=0.3588p ps=1.9u w=1.38u l=0.28u
X7 VSS a_28_68# Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X8 VDD a_28_68# Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X9 Y a_28_68# VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X10 a_28_68# A VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X11 VSS B a_172_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__ao21_2.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__ao21_2 VDD VNW VPW VSS Y A B C
X0 VSS a_332_68# Y VPW nfet_03v3 ad=0.44p pd=2.88u as=0.3025p ps=1.605u w=1u l=0.28u
X1 a_28_440# B VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X2 a_172_68# A VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X3 a_332_68# C a_28_440# VNW pfet_03v3 ad=0.6072p pd=3.64u as=0.3588p ps=1.9u w=1.38u l=0.28u
X4 Y a_332_68# VDD VNW pfet_03v3 ad=0.41745p pd=1.985u as=0.6072p ps=3.64u w=1.38u l=0.28u
X5 VSS C a_332_68# VPW nfet_03v3 ad=0.58p pd=2.16u as=0.26p ps=1.52u w=1u l=0.28u
X6 Y a_332_68# VSS VPW nfet_03v3 ad=0.3025p pd=1.605u as=0.58p ps=2.16u w=1u l=0.28u
X7 VDD a_332_68# Y VNW pfet_03v3 ad=0.6072p pd=3.64u as=0.41745p ps=1.985u w=1.38u l=0.28u
X8 VDD A a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X9 a_332_68# B a_172_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__ao21_4.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__ao21_4 VDD VNW VPW VSS Y A B C
X0 VSS a_332_68# Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.3025p ps=1.605u w=1u l=0.28u
X1 a_28_440# B VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X2 Y a_332_68# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X3 a_172_68# A VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X4 a_332_68# C a_28_440# VNW pfet_03v3 ad=0.6072p pd=3.64u as=0.3588p ps=1.9u w=1.38u l=0.28u
X5 Y a_332_68# VDD VNW pfet_03v3 ad=0.41745p pd=1.985u as=0.6072p ps=3.64u w=1.38u l=0.28u
X6 VDD a_332_68# Y VNW pfet_03v3 ad=0.6279p pd=3.67u as=0.3588p ps=1.9u w=1.38u l=0.28u
X7 VSS a_332_68# Y VPW nfet_03v3 ad=0.455p pd=2.91u as=0.26p ps=1.52u w=1u l=0.28u
X8 VSS C a_332_68# VPW nfet_03v3 ad=0.58p pd=2.16u as=0.26p ps=1.52u w=1u l=0.28u
X9 Y a_332_68# VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X10 Y a_332_68# VSS VPW nfet_03v3 ad=0.3025p pd=1.605u as=0.58p ps=2.16u w=1u l=0.28u
X11 VDD a_332_68# Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.41745p ps=1.985u w=1.38u l=0.28u
X12 VDD A a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X13 a_332_68# B a_172_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__ao22_2.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__ao22_2 VDD VNW VPW VSS A B C D Y
X0 a_620_68# C a_28_440# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X1 a_28_440# B a_172_440# VNW pfet_03v3 ad=0.6072p pd=3.64u as=0.3588p ps=1.9u w=1.38u l=0.28u
X2 a_172_440# C VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X3 a_172_68# A VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X4 VDD a_28_440# Y VNW pfet_03v3 ad=0.7176p pd=3.8u as=0.3588p ps=1.9u w=1.38u l=0.28u
X5 VSS a_28_440# Y VPW nfet_03v3 ad=0.52p pd=3.04u as=0.26p ps=1.52u w=1u l=0.28u
X6 VDD D a_172_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X7 Y a_28_440# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X8 Y a_28_440# VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X9 VSS D a_620_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X10 a_172_440# A a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X11 a_28_440# B a_172_68# VPW nfet_03v3 ad=0.44p pd=2.88u as=0.26p ps=1.52u w=1u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__ao22_4.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__ao22_4 VDD VNW VPW VSS A B C D Y
X0 a_620_68# C a_28_440# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X1 a_28_440# B a_172_440# VNW pfet_03v3 ad=0.6072p pd=3.64u as=0.3588p ps=1.9u w=1.38u l=0.28u
X2 a_172_440# C VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X3 Y a_28_440# VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X4 a_172_68# A VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X5 VDD a_28_440# Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X6 VSS a_28_440# Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X7 VDD D a_172_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X8 Y a_28_440# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X9 Y a_28_440# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X10 Y a_28_440# VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X11 VDD a_28_440# Y VNW pfet_03v3 ad=0.6072p pd=3.64u as=0.3588p ps=1.9u w=1.38u l=0.28u
X12 VSS D a_620_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X13 a_172_440# A a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X14 VSS a_28_440# Y VPW nfet_03v3 ad=0.44p pd=2.88u as=0.26p ps=1.52u w=1u l=0.28u
X15 a_28_440# B a_172_68# VPW nfet_03v3 ad=0.44p pd=2.88u as=0.26p ps=1.52u w=1u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__ao31_2.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__ao31_2 VDD VNW VPW VSS D A B C Y
X0 VSS a_28_440# Y VPW nfet_03v3 ad=0.44p pd=2.88u as=0.26p ps=1.52u w=1u l=0.28u
X1 VDD A a_172_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X2 Y a_28_440# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X3 a_28_440# D VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X4 Y a_28_440# VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X5 a_172_440# B VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X6 VDD a_28_440# Y VNW pfet_03v3 ad=0.6072p pd=3.64u as=0.3588p ps=1.9u w=1.38u l=0.28u
X7 VSS C a_492_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X8 VDD C a_172_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X9 a_492_68# B a_332_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X10 a_172_440# D a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X11 a_332_68# A a_28_440# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__ao31_4.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__ao31_4 VDD VNW VPW VSS D A B C Y
X0 VSS a_28_440# Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X1 VDD A a_172_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X2 Y a_28_440# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X3 a_28_440# D VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X4 VDD a_28_440# Y VNW pfet_03v3 ad=0.6072p pd=3.64u as=0.3588p ps=1.9u w=1.38u l=0.28u
X5 Y a_28_440# VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X6 a_172_440# B VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X7 VDD a_28_440# Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X8 VSS C a_492_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X9 VSS a_28_440# Y VPW nfet_03v3 ad=0.44p pd=2.88u as=0.26p ps=1.52u w=1u l=0.28u
X10 VDD C a_172_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X11 a_492_68# B a_332_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X12 Y a_28_440# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X13 Y a_28_440# VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X14 a_172_440# D a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X15 a_332_68# A a_28_440# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__aoi21_2.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__aoi21_2 VDD VNW VPW VSS Y C B A
X0 VSS C Y VPW nfet_03v3 ad=0.45p pd=2.9u as=0.26p ps=1.52u w=1u l=0.28u
X1 a_28_440# B VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X2 Y C a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X3 a_172_68# A VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X4 Y C VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X5 VDD B a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X6 a_28_440# C Y VNW pfet_03v3 ad=0.621p pd=3.66u as=0.3588p ps=1.9u w=1.38u l=0.28u
X7 VSS A a_492_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X8 a_28_440# A VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X9 a_492_68# B Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X10 VDD A a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X11 Y B a_172_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__aoi21_4.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__aoi21_4 VDD VNW VPW VSS Y C B A
X0 Y A a_812_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X1 a_28_440# C Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X2 VDD B a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X3 Y C VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X4 VSS B a_812_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X5 a_28_440# A VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X6 VDD B a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X7 a_812_68# B VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X8 VDD A a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X9 a_28_440# B VDD VNW pfet_03v3 ad=0.6348p pd=3.68u as=0.3588p ps=1.9u w=1.38u l=0.28u
X10 a_812_68# A Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X11 Y C a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X12 a_28_440# A VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X13 VSS C Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X14 Y A a_812_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X15 a_28_440# C Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X16 Y C VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X17 VSS B a_812_68# VPW nfet_03v3 ad=0.46p pd=2.92u as=0.26p ps=1.52u w=1u l=0.28u
X18 VDD A a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X19 a_28_440# B VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X20 a_812_68# A Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X21 Y C a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X22 VSS C Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X23 a_812_68# B VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__aoi22_2.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__aoi22_2 VDD VNW VPW VSS Y A B C D
X0 a_172_440# D VDD VNW pfet_03v3 ad=0.7797p pd=3.89u as=0.3588p ps=1.9u w=1.38u l=0.28u
X1 Y A a_172_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X2 VSS A a_28_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X3 a_803_68# D VSS VPW nfet_03v3 ad=0.565p pd=3.13u as=0.26p ps=1.52u w=1u l=0.28u
X4 a_172_440# C VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X5 VSS D a_803_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X6 a_172_440# B Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X7 a_28_68# B Y VPW nfet_03v3 ad=0.44p pd=2.88u as=0.26p ps=1.52u w=1u l=0.28u
X8 a_803_68# C Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X9 Y B a_172_440# VNW pfet_03v3 ad=0.6072p pd=3.64u as=0.3588p ps=1.9u w=1.38u l=0.28u
X10 Y B a_28_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X11 VDD D a_172_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X12 VDD C a_172_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X13 a_172_440# A Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X14 a_28_68# A VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X15 Y C a_803_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__aoi22_4.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__aoi22_4 VDD VNW VPW VSS Y A B C D
X0 a_28_440# C VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X1 a_28_68# B Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X2 a_28_440# A Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X3 Y B a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X4 VDD D a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X5 VSS A a_28_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X6 VSS D a_1436_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X7 a_28_440# D VDD VNW pfet_03v3 ad=0.6072p pd=3.64u as=0.3588p ps=1.9u w=1.38u l=0.28u
X8 a_28_440# B Y VNW pfet_03v3 ad=0.8004p pd=2.54u as=0.3588p ps=1.9u w=1.38u l=0.28u
X9 VDD C a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.8004p ps=2.54u w=1.38u l=0.28u
X10 Y C a_1436_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X11 Y B a_28_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X12 a_1436_68# C Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X13 a_28_440# C VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X14 Y A a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X15 a_1436_68# C Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X16 a_1436_68# D VSS VPW nfet_03v3 ad=0.44p pd=2.88u as=0.26p ps=1.52u w=1u l=0.28u
X17 a_28_440# B Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X18 a_28_68# A VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X19 a_28_440# D VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X20 a_28_68# B Y VPW nfet_03v3 ad=0.44p pd=2.88u as=0.26p ps=1.52u w=1u l=0.28u
X21 a_28_440# A Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X22 Y C a_1436_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X23 VDD D a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X24 VSS A a_28_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X25 VSS D a_1436_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X26 Y B a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X27 VDD C a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X28 Y B a_28_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X29 Y A a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X30 a_1436_68# D VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X31 a_28_68# A VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__aoi31_2.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__aoi31_2 VDD VNW VPW VSS A B C Y D
X0 a_28_440# A VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X1 VSS D Y VPW nfet_03v3 ad=0.2625p pd=1.525u as=0.26p ps=1.52u w=1u l=0.28u
X2 VSS A a_28_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X3 a_28_440# C VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X4 Y C a_492_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X5 VDD B a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X6 a_28_68# B a_492_68# VPW nfet_03v3 ad=0.44p pd=2.88u as=0.26p ps=1.52u w=1u l=0.28u
X7 Y D a_28_440# VNW pfet_03v3 ad=0.36225p pd=1.905u as=0.3588p ps=1.9u w=1.38u l=0.28u
X8 a_28_440# B VDD VNW pfet_03v3 ad=0.8004p pd=2.54u as=0.3588p ps=1.9u w=1.38u l=0.28u
X9 VDD C a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.8004p ps=2.54u w=1.38u l=0.28u
X10 a_492_68# C Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X11 a_492_68# B a_28_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X12 Y D VSS VPW nfet_03v3 ad=0.44p pd=2.88u as=0.2625p ps=1.525u w=1u l=0.28u
X13 VDD A a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X14 a_28_440# D Y VNW pfet_03v3 ad=0.6072p pd=3.64u as=0.36225p ps=1.905u w=1.38u l=0.28u
X15 a_28_68# A VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__aoi31_4.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__aoi31_4 VDD VNW VPW VSS A B C D Y
X0 a_28_440# C VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X1 a_28_68# B a_812_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X2 a_28_440# A VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X3 VDD B a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X4 Y D a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X5 VSS A a_28_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X6 VSS D Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X7 a_28_440# D Y VNW pfet_03v3 ad=1.2696p pd=4.6u as=0.3588p ps=1.9u w=1.38u l=0.28u
X8 a_28_440# B VDD VNW pfet_03v3 ad=0.8004p pd=2.54u as=0.3588p ps=1.9u w=1.38u l=0.28u
X9 VDD C a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.8004p ps=2.54u w=1.38u l=0.28u
X10 a_812_68# C Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X11 a_812_68# B a_28_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X12 Y C a_812_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X13 a_28_440# C VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X14 VDD A a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X15 Y C a_812_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X16 Y D VSS VPW nfet_03v3 ad=0.44p pd=2.88u as=0.26p ps=1.52u w=1u l=0.28u
X17 a_28_440# B VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X18 a_28_68# A VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X19 a_28_440# D Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X20 a_28_68# B a_812_68# VPW nfet_03v3 ad=0.44p pd=2.88u as=0.26p ps=1.52u w=1u l=0.28u
X21 a_28_440# A VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X22 a_812_68# C Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X23 Y D a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X24 VSS A a_28_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X25 VSS D Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X26 VDD B a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X27 VDD C a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X28 a_812_68# B a_28_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X29 VDD A a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X30 Y D VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X31 a_28_68# A VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__buff_12.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__buff_12 VDD VNW VPW VSS A Y
X0 VSS a_172_68# Y VPW nfet_03v3 ad=0.985p pd=3.97u as=0.26p ps=1.52u w=1u l=0.28u
X1 VSS a_172_68# Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X2 VDD A a_172_68# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X3 Y a_172_68# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X4 Y a_172_68# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X5 VDD a_172_68# Y VNW pfet_03v3 ad=1.3593p pd=4.73u as=0.3588p ps=1.9u w=1.38u l=0.28u
X6 a_172_68# A VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X7 VSS a_172_68# Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X8 VDD a_172_68# Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X9 Y a_172_68# VDD VNW pfet_03v3 ad=0.36915p pd=1.915u as=0.3588p ps=1.9u w=1.38u l=0.28u
X10 VDD a_172_68# Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X11 Y a_172_68# VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X12 Y a_172_68# VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X13 Y a_172_68# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X14 Y a_172_68# VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X15 a_172_68# A VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X16 VSS a_172_68# Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X17 VDD a_172_68# Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X18 VSS A a_172_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X19 VSS a_172_68# Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X20 VSS a_172_68# Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.2675p ps=1.535u w=1u l=0.28u
X21 VDD A a_172_68# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X22 Y a_172_68# VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X23 Y a_172_68# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X24 a_172_68# A VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X25 Y a_172_68# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X26 VDD a_172_68# Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X27 Y a_172_68# VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X28 a_172_68# A VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X29 VDD a_172_68# Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.36915p ps=1.915u w=1.38u l=0.28u
X30 VSS A a_172_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X31 Y a_172_68# VSS VPW nfet_03v3 ad=0.2675p pd=1.535u as=0.26p ps=1.52u w=1u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__buff_2.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__buff_2 VDD VNW VPW VSS A Y
X0 Y a_28_68# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X1 VSS A a_28_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X2 VDD a_28_68# Y VNW pfet_03v3 ad=1.0488p pd=4.28u as=0.3588p ps=1.9u w=1.38u l=0.28u
X3 VSS a_28_68# Y VPW nfet_03v3 ad=0.76p pd=3.52u as=0.26p ps=1.52u w=1u l=0.28u
X4 VDD A a_28_68# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X5 Y a_28_68# VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__buff_4.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__buff_4 VDD VNW VPW VSS A Y
X0 Y a_28_68# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X1 VDD a_28_68# Y VNW pfet_03v3 ad=1.1592p pd=4.44u as=0.3588p ps=1.9u w=1.38u l=0.28u
X2 VSS A a_28_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X3 VSS a_28_68# Y VPW nfet_03v3 ad=0.84p pd=3.68u as=0.26p ps=1.52u w=1u l=0.28u
X4 VDD a_28_68# Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X5 Y a_28_68# VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X6 Y a_28_68# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X7 VSS a_28_68# Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X8 VDD A a_28_68# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X9 Y a_28_68# VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__buff_8.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__buff_8 VDD VNW VPW VSS A Y
X0 VSS a_172_68# Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X1 VDD A a_172_68# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X2 Y a_172_68# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X3 a_172_68# A VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X4 VSS a_172_68# Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X5 VDD a_172_68# Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X6 Y a_172_68# VDD VNW pfet_03v3 ad=1.4904p pd=4.92u as=0.3588p ps=1.9u w=1.38u l=0.28u
X7 Y a_172_68# VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X8 Y a_172_68# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X9 Y a_172_68# VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X10 a_172_68# A VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X11 VDD a_172_68# Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X12 VSS a_172_68# a_172_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X13 VSS a_172_68# Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X14 VDD a_172_68# a_172_68# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X15 a_172_68# A VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X16 Y a_172_68# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X17 VDD a_172_68# Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X18 Y a_172_68# VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X19 a_172_68# A VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X20 VSS A a_172_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X21 Y a_172_68# VSS VPW nfet_03v3 ad=1.08p pd=4.16u as=0.26p ps=1.52u w=1u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__clkbuff_12.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__clkbuff_12 VDD VNW VPW VSS A Y
X0 VSS a_172_68# Y VPW nfet_03v3 ad=0.7092p pd=3.41u as=0.1872p ps=1.24u w=0.72u l=0.28u
X1 VSS a_172_68# Y VPW nfet_03v3 ad=0.1872p pd=1.24u as=0.1872p ps=1.24u w=0.72u l=0.28u
X2 VDD A a_172_68# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X3 Y a_172_68# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X4 Y a_172_68# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X5 VDD a_172_68# Y VNW pfet_03v3 ad=1.3593p pd=4.73u as=0.3588p ps=1.9u w=1.38u l=0.28u
X6 a_172_68# A VSS VPW nfet_03v3 ad=0.1872p pd=1.24u as=0.3168p ps=2.32u w=0.72u l=0.28u
X7 VSS a_172_68# Y VPW nfet_03v3 ad=0.1872p pd=1.24u as=0.1872p ps=1.24u w=0.72u l=0.28u
X8 VDD a_172_68# Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X9 Y a_172_68# VDD VNW pfet_03v3 ad=0.36915p pd=1.915u as=0.3588p ps=1.9u w=1.38u l=0.28u
X10 VDD a_172_68# Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X11 Y a_172_68# VSS VPW nfet_03v3 ad=0.1872p pd=1.24u as=0.1872p ps=1.24u w=0.72u l=0.28u
X12 Y a_172_68# VSS VPW nfet_03v3 ad=0.1872p pd=1.24u as=0.1872p ps=1.24u w=0.72u l=0.28u
X13 Y a_172_68# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X14 Y a_172_68# VSS VPW nfet_03v3 ad=0.1872p pd=1.24u as=0.1872p ps=1.24u w=0.72u l=0.28u
X15 a_172_68# A VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X16 VSS a_172_68# Y VPW nfet_03v3 ad=0.1872p pd=1.24u as=0.1872p ps=1.24u w=0.72u l=0.28u
X17 VDD a_172_68# Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X18 VSS A a_172_68# VPW nfet_03v3 ad=0.1872p pd=1.24u as=0.1872p ps=1.24u w=0.72u l=0.28u
X19 VSS a_172_68# Y VPW nfet_03v3 ad=0.1872p pd=1.24u as=0.1872p ps=1.24u w=0.72u l=0.28u
X20 VSS a_172_68# Y VPW nfet_03v3 ad=0.1872p pd=1.24u as=0.1926p ps=1.255u w=0.72u l=0.28u
X21 VDD A a_172_68# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X22 Y a_172_68# VSS VPW nfet_03v3 ad=0.1872p pd=1.24u as=0.1872p ps=1.24u w=0.72u l=0.28u
X23 Y a_172_68# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X24 a_172_68# A VSS VPW nfet_03v3 ad=0.1872p pd=1.24u as=0.1872p ps=1.24u w=0.72u l=0.28u
X25 Y a_172_68# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X26 VDD a_172_68# Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X27 Y a_172_68# VSS VPW nfet_03v3 ad=0.1872p pd=1.24u as=0.1872p ps=1.24u w=0.72u l=0.28u
X28 a_172_68# A VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X29 VDD a_172_68# Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.36915p ps=1.915u w=1.38u l=0.28u
X30 VSS A a_172_68# VPW nfet_03v3 ad=0.1872p pd=1.24u as=0.1872p ps=1.24u w=0.72u l=0.28u
X31 Y a_172_68# VSS VPW nfet_03v3 ad=0.1926p pd=1.255u as=0.1872p ps=1.24u w=0.72u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__clkbuff_4.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__clkbuff_4 VDD VNW VPW VSS A Y
X0 Y a_28_68# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X1 VDD a_28_68# Y VNW pfet_03v3 ad=1.1592p pd=4.44u as=0.3588p ps=1.9u w=1.38u l=0.28u
X2 VSS A a_28_68# VPW nfet_03v3 ad=0.1872p pd=1.24u as=0.3168p ps=2.32u w=0.72u l=0.28u
X3 VSS a_28_68# Y VPW nfet_03v3 ad=0.6048p pd=3.12u as=0.1872p ps=1.24u w=0.72u l=0.28u
X4 VDD a_28_68# Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X5 Y a_28_68# VSS VPW nfet_03v3 ad=0.1872p pd=1.24u as=0.1872p ps=1.24u w=0.72u l=0.28u
X6 Y a_28_68# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X7 VSS a_28_68# Y VPW nfet_03v3 ad=0.1872p pd=1.24u as=0.1872p ps=1.24u w=0.72u l=0.28u
X8 VDD A a_28_68# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X9 Y a_28_68# VSS VPW nfet_03v3 ad=0.1872p pd=1.24u as=0.1872p ps=1.24u w=0.72u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__clkbuff_8.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__clkbuff_8 VDD VNW VPW VSS A Y
X0 VSS a_172_68# Y VPW nfet_03v3 ad=0.1872p pd=1.24u as=0.1872p ps=1.24u w=0.72u l=0.28u
X1 VDD A a_172_68# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X2 Y a_172_68# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X3 a_172_68# A VSS VPW nfet_03v3 ad=0.1872p pd=1.24u as=0.3168p ps=2.32u w=0.72u l=0.28u
X4 VSS a_172_68# Y VPW nfet_03v3 ad=0.1872p pd=1.24u as=0.1872p ps=1.24u w=0.72u l=0.28u
X5 VDD a_172_68# Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X6 Y a_172_68# VDD VNW pfet_03v3 ad=1.4904p pd=4.92u as=0.3588p ps=1.9u w=1.38u l=0.28u
X7 Y a_172_68# VSS VPW nfet_03v3 ad=0.1872p pd=1.24u as=0.1872p ps=1.24u w=0.72u l=0.28u
X8 Y a_172_68# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X9 Y a_172_68# VSS VPW nfet_03v3 ad=0.1872p pd=1.24u as=0.1872p ps=1.24u w=0.72u l=0.28u
X10 a_172_68# A VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X11 VDD a_172_68# Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X12 VSS a_172_68# a_172_68# VPW nfet_03v3 ad=0.1872p pd=1.24u as=0.1872p ps=1.24u w=0.72u l=0.28u
X13 VSS a_172_68# Y VPW nfet_03v3 ad=0.1872p pd=1.24u as=0.1872p ps=1.24u w=0.72u l=0.28u
X14 VDD a_172_68# a_172_68# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X15 a_172_68# A VSS VPW nfet_03v3 ad=0.1872p pd=1.24u as=0.1872p ps=1.24u w=0.72u l=0.28u
X16 Y a_172_68# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X17 VDD a_172_68# Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X18 Y a_172_68# VSS VPW nfet_03v3 ad=0.1872p pd=1.24u as=0.1872p ps=1.24u w=0.72u l=0.28u
X19 a_172_68# A VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X20 VSS A a_172_68# VPW nfet_03v3 ad=0.1872p pd=1.24u as=0.1872p ps=1.24u w=0.72u l=0.28u
X21 Y a_172_68# VSS VPW nfet_03v3 ad=0.7776p pd=3.6u as=0.1872p ps=1.24u w=0.72u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__decap_16.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__decap_16 VDD VNW VPW VSS
X0 a_126_406# a_28_498# VSS VPW nfet_03v3 ad=0.4356p pd=2.86u as=0.4851p ps=2.96u w=0.99u l=7.75u
X1 VDD a_126_406# a_28_498# VNW pfet_03v3 ad=0.4796p pd=3.06u as=0.5341p ps=3.16u w=1.09u l=7.75u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__decap_4.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__decap_4 VDD VNW VPW VSS
X0 a_126_408# a_28_500# VSS VPW nfet_03v3 ad=0.44p pd=2.88u as=0.49p ps=2.98u w=1u l=1.03u
X1 VDD a_126_408# a_28_500# VNW pfet_03v3 ad=0.4752p pd=3.04u as=0.5292p ps=3.14u w=1.08u l=1.03u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__decap_8.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__decap_8 VDD VNW VPW VSS
X0 a_126_406# a_28_498# VSS VPW nfet_03v3 ad=0.4356p pd=2.86u as=0.4851p ps=2.96u w=0.99u l=3.27u
X1 VDD a_126_406# a_28_498# VNW pfet_03v3 ad=0.4796p pd=3.06u as=0.5341p ps=3.16u w=1.09u l=3.27u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__dfxtn_2.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__dfxtn_2 VDD VNW VPW VSS CLK D Q
X0 a_1709_68# a_332_68# a_1315_24# VNW pfet_03v3 ad=0.8418p pd=2.6u as=0.83145p ps=2.585u w=1.38u l=0.28u
X1 a_853_68# D a_629_68# VPW nfet_03v3 ad=0.875p pd=2.75u as=0.42p ps=1.84u w=1u l=0.28u
X2 VSS a_1315_24# a_1259_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.14p ps=1.28u w=1u l=0.28u
X3 a_1709_68# a_28_68# a_1315_24# VPW nfet_03v3 ad=0.625p pd=2.25u as=0.305p ps=1.61u w=1u l=0.28u
X4 a_2015_68# a_332_68# a_1709_68# VPW nfet_03v3 ad=0.43p pd=1.86u as=0.625p ps=2.25u w=1u l=0.28u
X5 a_332_68# a_28_68# VDD VNW pfet_03v3 ad=0.6693p pd=3.73u as=0.3588p ps=1.9u w=1.38u l=0.28u
X6 VSS CLK a_28_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X7 a_1259_68# a_28_68# a_853_68# VPW nfet_03v3 ad=0.14p pd=1.28u as=0.875p ps=2.75u w=1u l=0.28u
X8 VDD a_2187_24# a_2128_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.20355p ps=1.675u w=1.38u l=0.28u
X9 a_2187_24# a_1709_68# VSS VPW nfet_03v3 ad=0.55p pd=3.1u as=0.26p ps=1.52u w=1u l=0.28u
X10 VDD a_1315_24# a_1064_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.86595p ps=2.635u w=1.38u l=0.28u
X11 a_735_440# a_28_68# VDD VNW pfet_03v3 ad=0.2139p pd=1.69u as=1.3317p ps=4.69u w=1.38u l=0.285u
X12 a_853_68# D a_735_440# VNW pfet_03v3 ad=0.5313p pd=2.15u as=0.2139p ps=1.69u w=1.38u l=0.28u
X13 a_629_68# a_332_68# VSS VPW nfet_03v3 ad=0.42p pd=1.84u as=0.44p ps=2.88u w=1u l=0.28u
X14 VSS a_2187_24# Q VPW nfet_03v3 ad=0.615p pd=3.23u as=0.26p ps=1.52u w=1u l=0.28u
X15 VSS a_2187_24# a_2015_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.43p ps=1.86u w=1u l=0.28u
X16 a_1315_24# a_853_68# VDD VNW pfet_03v3 ad=0.83145p pd=2.585u as=0.3588p ps=1.9u w=1.38u l=0.28u
X17 Q a_2187_24# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X18 a_2187_24# a_1709_68# VDD VNW pfet_03v3 ad=0.759p pd=3.86u as=0.3588p ps=1.9u w=1.38u l=0.28u
X19 Q a_2187_24# VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X20 a_1064_440# a_332_68# a_853_68# VNW pfet_03v3 ad=0.86595p pd=2.635u as=0.5313p ps=2.15u w=1.38u l=0.285u
X21 a_2128_440# a_28_68# a_1709_68# VNW pfet_03v3 ad=0.20355p pd=1.675u as=0.8418p ps=2.6u w=1.38u l=0.28u
X22 a_1315_24# a_853_68# VSS VPW nfet_03v3 ad=0.305p pd=1.61u as=0.26p ps=1.52u w=1u l=0.28u
X23 VDD a_2187_24# Q VNW pfet_03v3 ad=0.8487p pd=3.99u as=0.3588p ps=1.9u w=1.38u l=0.28u
X24 VDD CLK a_28_68# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X25 a_332_68# a_28_68# VSS VPW nfet_03v3 ad=0.485p pd=2.97u as=0.26p ps=1.52u w=1u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__dfxtp_2.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__dfxtp_2 VDD VNW VPW VSS CLK D Q
X0 a_1709_68# a_28_68# a_1315_24# VNW pfet_03v3 ad=0.8418p pd=2.6u as=0.83145p ps=2.585u w=1.38u l=0.28u
X1 a_853_68# D a_629_68# VPW nfet_03v3 ad=0.875p pd=2.75u as=0.42p ps=1.84u w=1u l=0.28u
X2 VSS a_1315_24# a_1259_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.14p ps=1.28u w=1u l=0.28u
X3 a_1709_68# a_332_68# a_1315_24# VPW nfet_03v3 ad=0.625p pd=2.25u as=0.305p ps=1.61u w=1u l=0.28u
X4 a_2015_68# a_28_68# a_1709_68# VPW nfet_03v3 ad=0.43p pd=1.86u as=0.625p ps=2.25u w=1u l=0.28u
X5 a_332_68# a_28_68# VDD VNW pfet_03v3 ad=0.6693p pd=3.73u as=0.3588p ps=1.9u w=1.38u l=0.28u
X6 VSS CLK a_28_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X7 a_1259_68# a_332_68# a_853_68# VPW nfet_03v3 ad=0.14p pd=1.28u as=0.875p ps=2.75u w=1u l=0.28u
X8 VDD a_2187_24# a_2128_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.20355p ps=1.675u w=1.38u l=0.28u
X9 a_2187_24# a_1709_68# VSS VPW nfet_03v3 ad=0.55p pd=3.1u as=0.26p ps=1.52u w=1u l=0.28u
X10 VDD a_1315_24# a_1064_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.86595p ps=2.635u w=1.38u l=0.28u
X11 a_735_440# a_332_68# VDD VNW pfet_03v3 ad=0.2139p pd=1.69u as=1.3317p ps=4.69u w=1.38u l=0.285u
X12 a_853_68# D a_735_440# VNW pfet_03v3 ad=0.5313p pd=2.15u as=0.2139p ps=1.69u w=1.38u l=0.28u
X13 a_629_68# a_28_68# VSS VPW nfet_03v3 ad=0.42p pd=1.84u as=0.44p ps=2.88u w=1u l=0.28u
X14 VSS a_2187_24# Q VPW nfet_03v3 ad=0.615p pd=3.23u as=0.26p ps=1.52u w=1u l=0.28u
X15 VSS a_2187_24# a_2015_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.43p ps=1.86u w=1u l=0.28u
X16 a_1315_24# a_853_68# VDD VNW pfet_03v3 ad=0.83145p pd=2.585u as=0.3588p ps=1.9u w=1.38u l=0.28u
X17 Q a_2187_24# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X18 a_2187_24# a_1709_68# VDD VNW pfet_03v3 ad=0.759p pd=3.86u as=0.3588p ps=1.9u w=1.38u l=0.28u
X19 Q a_2187_24# VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X20 a_1064_440# a_28_68# a_853_68# VNW pfet_03v3 ad=0.86595p pd=2.635u as=0.5313p ps=2.15u w=1.38u l=0.285u
X21 a_2128_440# a_332_68# a_1709_68# VNW pfet_03v3 ad=0.20355p pd=1.675u as=0.8418p ps=2.6u w=1.38u l=0.28u
X22 a_1315_24# a_853_68# VSS VPW nfet_03v3 ad=0.305p pd=1.61u as=0.26p ps=1.52u w=1u l=0.28u
X23 VDD a_2187_24# Q VNW pfet_03v3 ad=0.8487p pd=3.99u as=0.3588p ps=1.9u w=1.38u l=0.28u
X24 VDD CLK a_28_68# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X25 a_332_68# a_28_68# VSS VPW nfet_03v3 ad=0.485p pd=2.97u as=0.26p ps=1.52u w=1u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__diode_2.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__diode_2 VDD VNW VPW VSS DIODE
D0 DIODE VNW diode_pd2nw_03v3 pj=1.93u area=0.2295p
D1 VPW DIODE diode_nd2ps_03v3 pj=1.83u area=0.209p
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__fill_1.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__fill_1 VDD VNW VPW VSS
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__fill_2.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__fill_2 VDD VNW VPW VSS
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__fill_4.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__fill_4 VDD VNW VPW VSS
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__fill_8.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__fill_8 VDD VNW VPW VSS
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__inv_2.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__inv_2 VDD VNW VPW VSS Y A
X0 VDD A Y VNW pfet_03v3 ad=0.6072p pd=3.64u as=0.3588p ps=1.9u w=1.38u l=0.28u
X1 Y A VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X2 Y A VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X3 VSS A Y VPW nfet_03v3 ad=0.44p pd=2.88u as=0.26p ps=1.52u w=1u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__inv_4.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__inv_4 VDD VNW VPW VSS Y A
X0 VDD A Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X1 Y A VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X2 Y A VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X3 VSS A Y VPW nfet_03v3 ad=0.52p pd=3.04u as=0.26p ps=1.52u w=1u l=0.28u
X4 VDD A Y VNW pfet_03v3 ad=0.7176p pd=3.8u as=0.3588p ps=1.9u w=1.38u l=0.28u
X5 Y A VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X6 Y A VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X7 VSS A Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__inv_6.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__inv_6 VDD VNW VPW VSS Y A
X0 VSS A Y VPW nfet_03v3 ad=0.6p pd=3.2u as=0.26p ps=1.52u w=1u l=0.28u
X1 VDD A Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X2 Y A VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X3 Y A VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X4 Y A VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X5 Y A VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X6 VDD A Y VNW pfet_03v3 ad=0.828p pd=3.96u as=0.3588p ps=1.9u w=1.38u l=0.28u
X7 VSS A Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X8 VDD A Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X9 Y A VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X10 Y A VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X11 VSS A Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__maj3_2.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__maj3_2 VDD VNW VPW VSS Y A B C
X0 a_436_68# B VSS VPW nfet_03v3 ad=0.12p pd=1.24u as=0.26p ps=1.52u w=1u l=0.28u
X1 VSS A a_700_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.12p ps=1.24u w=1u l=0.28u
X2 Y a_28_68# VDD VNW pfet_03v3 ad=0.4485p pd=2.03u as=0.3588p ps=1.9u w=1.38u l=0.28u
X3 a_172_68# A a_28_68# VPW nfet_03v3 ad=0.12p pd=1.24u as=0.44p ps=2.88u w=1u l=0.28u
X4 VSS a_28_68# Y VPW nfet_03v3 ad=0.83p pd=3.66u as=0.325p ps=1.65u w=1u l=0.28u
X5 VSS B a_172_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.12p ps=1.24u w=1u l=0.28u
X6 VDD B a_172_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.1656p ps=1.62u w=1.38u l=0.28u
X7 a_700_440# C a_28_68# VNW pfet_03v3 ad=0.1656p pd=1.62u as=0.3588p ps=1.9u w=1.38u l=0.28u
X8 a_700_68# C a_28_68# VPW nfet_03v3 ad=0.12p pd=1.24u as=0.26p ps=1.52u w=1u l=0.28u
X9 a_436_440# B VDD VNW pfet_03v3 ad=0.1656p pd=1.62u as=0.3588p ps=1.9u w=1.38u l=0.28u
X10 a_28_68# C a_436_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.12p ps=1.24u w=1u l=0.28u
X11 VDD A a_700_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.1656p ps=1.62u w=1.38u l=0.28u
X12 Y a_28_68# VSS VPW nfet_03v3 ad=0.325p pd=1.65u as=0.26p ps=1.52u w=1u l=0.28u
X13 a_28_68# C a_436_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.1656p ps=1.62u w=1.38u l=0.28u
X14 a_172_440# A a_28_68# VNW pfet_03v3 ad=0.1656p pd=1.62u as=0.6072p ps=3.64u w=1.38u l=0.28u
X15 VDD a_28_68# Y VNW pfet_03v3 ad=1.1454p pd=4.42u as=0.4485p ps=2.03u w=1.38u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__maj3_4.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__maj3_4 VDD VNW VPW VSS Y A B C
X0 Y a_28_68# VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X1 a_436_68# B VSS VPW nfet_03v3 ad=0.12p pd=1.24u as=0.26p ps=1.52u w=1u l=0.28u
X2 VSS A a_700_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.12p ps=1.24u w=1u l=0.28u
X3 Y a_28_68# VDD VNW pfet_03v3 ad=0.4485p pd=2.03u as=0.3588p ps=1.9u w=1.38u l=0.28u
X4 a_172_68# A a_28_68# VPW nfet_03v3 ad=0.12p pd=1.24u as=0.44p ps=2.88u w=1u l=0.28u
X5 VSS a_28_68# Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.325p ps=1.65u w=1u l=0.28u
X6 VSS B a_172_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.12p ps=1.24u w=1u l=0.28u
X7 VDD B a_172_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.1656p ps=1.62u w=1.38u l=0.28u
X8 a_700_440# C a_28_68# VNW pfet_03v3 ad=0.1656p pd=1.62u as=0.3588p ps=1.9u w=1.38u l=0.28u
X9 Y a_28_68# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X10 a_700_68# C a_28_68# VPW nfet_03v3 ad=0.12p pd=1.24u as=0.26p ps=1.52u w=1u l=0.28u
X11 a_436_440# B VDD VNW pfet_03v3 ad=0.1656p pd=1.62u as=0.3588p ps=1.9u w=1.38u l=0.28u
X12 a_28_68# C a_436_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.12p ps=1.24u w=1u l=0.28u
X13 VDD A a_700_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.1656p ps=1.62u w=1.38u l=0.28u
X14 VDD a_28_68# Y VNW pfet_03v3 ad=0.8211p pd=3.95u as=0.3588p ps=1.9u w=1.38u l=0.28u
X15 VSS a_28_68# Y VPW nfet_03v3 ad=0.575p pd=3.15u as=0.26p ps=1.52u w=1u l=0.28u
X16 Y a_28_68# VSS VPW nfet_03v3 ad=0.325p pd=1.65u as=0.26p ps=1.52u w=1u l=0.28u
X17 a_28_68# C a_436_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.1656p ps=1.62u w=1.38u l=0.28u
X18 a_172_440# A a_28_68# VNW pfet_03v3 ad=0.1656p pd=1.62u as=0.6072p ps=3.64u w=1.38u l=0.28u
X19 VDD a_28_68# Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.4485p ps=2.03u w=1.38u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__mux2_2.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__mux2_2 VDD VNW VPW VSS S B A Y
X0 a_744_440# S a_464_68# VNW pfet_03v3 ad=0.1932p pd=1.66u as=0.3588p ps=1.9u w=1.38u l=0.28u
X1 VDD A a_744_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.1932p ps=1.66u w=1.38u l=0.28u
X2 a_332_440# B VDD VNW pfet_03v3 ad=0.6762p pd=2.36u as=0.3588p ps=1.9u w=1.38u l=0.28u
X3 a_464_68# S a_332_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.19p ps=1.38u w=1u l=0.28u
X4 VSS S a_28_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X5 Y a_464_68# VDD VNW pfet_03v3 ad=0.3726p pd=1.92u as=0.3588p ps=1.9u w=1.38u l=0.28u
X6 Y a_464_68# VSS VPW nfet_03v3 ad=0.27p pd=1.54u as=0.26p ps=1.52u w=1u l=0.28u
X7 VSS A a_624_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=1.88u w=1u l=0.28u
X8 VDD a_464_68# Y VNW pfet_03v3 ad=0.828p pd=3.96u as=0.3726p ps=1.92u w=1.38u l=0.28u
X9 VSS a_464_68# Y VPW nfet_03v3 ad=0.6p pd=3.2u as=0.27p ps=1.54u w=1u l=0.28u
X10 a_464_68# a_28_68# a_332_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6762p ps=2.36u w=1.38u l=0.28u
X11 VDD S a_28_68# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X12 a_624_68# a_28_68# a_464_68# VPW nfet_03v3 ad=0.44p pd=1.88u as=0.26p ps=1.52u w=1u l=0.28u
X13 a_332_68# B VSS VPW nfet_03v3 ad=0.19p pd=1.38u as=0.26p ps=1.52u w=1u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__mux2_4.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__mux2_4 VDD VNW VPW VSS S B A Y
X0 a_744_440# S a_464_68# VNW pfet_03v3 ad=0.1932p pd=1.66u as=0.3588p ps=1.9u w=1.38u l=0.28u
X1 VDD A a_744_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.1932p ps=1.66u w=1.38u l=0.28u
X2 VDD a_464_68# Y VNW pfet_03v3 ad=0.828p pd=3.96u as=0.3588p ps=1.9u w=1.38u l=0.28u
X3 a_332_440# B VDD VNW pfet_03v3 ad=0.6762p pd=2.36u as=0.3588p ps=1.9u w=1.38u l=0.28u
X4 a_464_68# S a_332_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.19p ps=1.38u w=1u l=0.28u
X5 VSS S a_28_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X6 Y a_464_68# VDD VNW pfet_03v3 ad=0.3726p pd=1.92u as=0.3588p ps=1.9u w=1.38u l=0.28u
X7 Y a_464_68# VSS VPW nfet_03v3 ad=0.27p pd=1.54u as=0.26p ps=1.52u w=1u l=0.28u
X8 VSS a_464_68# Y VPW nfet_03v3 ad=0.6p pd=3.2u as=0.26p ps=1.52u w=1u l=0.28u
X9 VSS A a_624_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=1.88u w=1u l=0.28u
X10 VDD a_464_68# Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3726p ps=1.92u w=1.38u l=0.28u
X11 Y a_464_68# VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X12 Y a_464_68# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X13 VSS a_464_68# Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.27p ps=1.54u w=1u l=0.28u
X14 a_464_68# a_28_68# a_332_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6762p ps=2.36u w=1.38u l=0.28u
X15 VDD S a_28_68# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X16 a_624_68# a_28_68# a_464_68# VPW nfet_03v3 ad=0.44p pd=1.88u as=0.26p ps=1.52u w=1u l=0.28u
X17 a_332_68# B VSS VPW nfet_03v3 ad=0.19p pd=1.38u as=0.26p ps=1.52u w=1u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__nand2_2.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__nand2_2 VDD VNW VPW VSS Y B A
X0 VDD A Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X1 VSS A a_28_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X2 Y B VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X3 a_28_68# B Y VPW nfet_03v3 ad=0.515p pd=3.03u as=0.26p ps=1.52u w=1u l=0.28u
X4 VDD B Y VNW pfet_03v3 ad=0.7176p pd=3.8u as=0.3588p ps=1.9u w=1.38u l=0.28u
X5 Y B a_28_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X6 Y A VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X7 a_28_68# A VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__nand2_4.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__nand2_4 VDD VNW VPW VSS Y A B
X0 a_28_68# B Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X1 VDD A Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X2 Y B VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X3 VSS A a_28_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X4 VDD B Y VNW pfet_03v3 ad=0.9384p pd=4.12u as=0.3588p ps=1.9u w=1.38u l=0.28u
X5 Y B a_28_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X6 Y A VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X7 VDD B Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X8 a_28_68# A VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X9 a_28_68# B Y VPW nfet_03v3 ad=0.68p pd=3.36u as=0.26p ps=1.52u w=1u l=0.28u
X10 VDD A Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X11 VSS A a_28_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X12 Y B VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X13 Y B a_28_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X14 Y A VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X15 a_28_68# A VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__nand2b_2.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__nand2b_2 VDD VNW VPW VSS Y B A
X0 a_364_68# a_220_68# VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X1 a_220_68# A VSS VPW nfet_03v3 ad=0.44p pd=2.88u as=0.46p ps=2.92u w=1u l=0.28u
X2 VSS a_220_68# a_364_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X3 a_220_68# A VDD VNW pfet_03v3 ad=0.6072p pd=3.64u as=0.6348p ps=3.68u w=1.38u l=0.28u
X4 Y a_220_68# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X5 VDD B Y VNW pfet_03v3 ad=0.7176p pd=3.8u as=0.3588p ps=1.9u w=1.38u l=0.28u
X6 a_364_68# B Y VPW nfet_03v3 ad=0.515p pd=3.03u as=0.26p ps=1.52u w=1u l=0.28u
X7 VDD a_220_68# Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X8 Y B a_364_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X9 Y B VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__nand2b_4.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__nand2b_4 VDD VNW VPW VSS Y A B
X0 VDD B Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X1 a_364_68# a_220_68# VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X2 a_364_68# B Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X3 a_220_68# A VSS VPW nfet_03v3 ad=0.44p pd=2.88u as=0.44p ps=2.88u w=1u l=0.28u
X4 VSS a_220_68# a_364_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X5 a_220_68# A VDD VNW pfet_03v3 ad=0.6072p pd=3.64u as=0.6072p ps=3.64u w=1.38u l=0.28u
X6 Y a_220_68# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X7 VDD a_220_68# Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X8 Y B a_364_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X9 Y B VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X10 Y B VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X11 VDD B Y VNW pfet_03v3 ad=0.9384p pd=4.12u as=0.3588p ps=1.9u w=1.38u l=0.28u
X12 a_364_68# a_220_68# VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X13 a_364_68# B Y VPW nfet_03v3 ad=0.68p pd=3.36u as=0.26p ps=1.52u w=1u l=0.28u
X14 VDD a_220_68# Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X15 VSS a_220_68# a_364_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X16 Y B a_364_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X17 Y a_220_68# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__nand3_2.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__nand3_2 VDD VNW VPW VSS A B C Y
X0 VDD A Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X1 VSS A a_28_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X2 VDD C Y VNW pfet_03v3 ad=0.621p pd=3.66u as=0.3588p ps=1.9u w=1.38u l=0.28u
X3 a_492_68# C Y VPW nfet_03v3 ad=0.45p pd=2.9u as=0.26p ps=1.52u w=1u l=0.28u
X4 Y B VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X5 a_28_68# B a_492_68# VPW nfet_03v3 ad=0.44p pd=2.88u as=0.26p ps=1.52u w=1u l=0.28u
X6 VDD B Y VNW pfet_03v3 ad=0.8004p pd=2.54u as=0.3588p ps=1.9u w=1.38u l=0.28u
X7 Y C VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.8004p ps=2.54u w=1.38u l=0.28u
X8 Y C a_492_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X9 a_492_68# B a_28_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X10 Y A VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X11 a_28_68# A VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__nand4_2.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__nand4_2 VDD VNW VPW VSS A B C D Y
X0 VDD A Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X1 Y D a_796_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X2 VSS A a_28_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X3 VDD C Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X4 a_796_68# C a_492_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X5 Y B VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X6 a_28_68# B a_492_68# VPW nfet_03v3 ad=0.44p pd=2.88u as=0.26p ps=1.52u w=1u l=0.28u
X7 Y D VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X8 VDD B Y VNW pfet_03v3 ad=0.8004p pd=2.54u as=0.3588p ps=1.9u w=1.38u l=0.28u
X9 Y C VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.8004p ps=2.54u w=1.38u l=0.28u
X10 a_492_68# C a_796_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X11 a_492_68# B a_28_68# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X12 VDD D Y VNW pfet_03v3 ad=0.6348p pd=3.68u as=0.3588p ps=1.9u w=1.38u l=0.28u
X13 Y A VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X14 a_796_68# D Y VPW nfet_03v3 ad=0.46p pd=2.92u as=0.26p ps=1.52u w=1u l=0.28u
X15 a_28_68# A VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__nor2_2.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__nor2_2 VDD VNW VPW VSS Y B A
X0 a_28_440# A VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X1 Y A VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X2 Y B a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X3 VSS B Y VPW nfet_03v3 ad=0.515p pd=3.03u as=0.26p ps=1.52u w=1u l=0.28u
X4 a_28_440# B Y VNW pfet_03v3 ad=0.7176p pd=3.8u as=0.3588p ps=1.9u w=1.38u l=0.28u
X5 Y B VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X6 VDD A a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X7 VSS A Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__nor2_4.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__nor2_4 VDD VNW VPW VSS Y A B
X0 VSS B Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X1 a_28_440# A VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X2 Y B a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X3 Y A VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X4 a_28_440# B Y VNW pfet_03v3 ad=0.9384p pd=4.12u as=0.3588p ps=1.9u w=1.38u l=0.28u
X5 Y B VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X6 VDD A a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X7 a_28_440# B Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X8 VSS A Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X9 VSS B Y VPW nfet_03v3 ad=0.68p pd=3.36u as=0.26p ps=1.52u w=1u l=0.28u
X10 a_28_440# A VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X11 Y A VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X12 Y B a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X13 Y B VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X14 VDD A a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X15 VSS A Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__nor2b_2.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__nor2b_2 VDD VNW VPW VSS Y B A
X0 VSS a_220_68# Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X1 a_220_68# A VSS VPW nfet_03v3 ad=0.44p pd=2.88u as=0.445p ps=2.89u w=1u l=0.28u
X2 Y a_220_68# VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X3 a_220_68# A VDD VNW pfet_03v3 ad=0.6072p pd=3.64u as=0.6141p ps=3.65u w=1.38u l=0.28u
X4 VDD a_220_68# a_364_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X5 a_364_440# B Y VNW pfet_03v3 ad=0.7176p pd=3.8u as=0.3588p ps=1.9u w=1.38u l=0.28u
X6 VSS B Y VPW nfet_03v3 ad=0.515p pd=3.03u as=0.26p ps=1.52u w=1u l=0.28u
X7 a_364_440# a_220_68# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X8 Y B VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X9 Y B a_364_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__nor2b_4.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__nor2b_4 VDD VNW VPW VSS Y A B
X0 a_364_440# B Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X1 VSS a_220_68# Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X2 VSS B Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X3 a_220_68# A VSS VPW nfet_03v3 ad=0.44p pd=2.88u as=0.445p ps=2.89u w=1u l=0.28u
X4 Y a_220_68# VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X5 a_220_68# A VDD VNW pfet_03v3 ad=0.6072p pd=3.64u as=0.6141p ps=3.65u w=1.38u l=0.28u
X6 VDD a_220_68# a_364_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X7 a_364_440# a_220_68# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X8 Y B VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X9 Y B a_364_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X10 Y B a_364_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X11 a_364_440# B Y VNW pfet_03v3 ad=0.9384p pd=4.12u as=0.3588p ps=1.9u w=1.38u l=0.28u
X12 VSS a_220_68# Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X13 VSS B Y VPW nfet_03v3 ad=0.68p pd=3.36u as=0.26p ps=1.52u w=1u l=0.28u
X14 a_364_440# a_220_68# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X15 Y a_220_68# VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X16 Y B VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X17 VDD a_220_68# a_364_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__nor3_2.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__nor3_2 VDD VNW VPW VSS A B C Y
X0 a_28_440# A VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X1 Y A VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X2 a_492_440# C Y VNW pfet_03v3 ad=0.621p pd=3.66u as=0.3588p ps=1.9u w=1.38u l=0.28u
X3 VSS C Y VPW nfet_03v3 ad=0.45p pd=2.9u as=0.26p ps=1.52u w=1u l=0.28u
X4 a_492_440# B a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X5 VSS B Y VPW nfet_03v3 ad=0.58p pd=2.16u as=0.26p ps=1.52u w=1u l=0.28u
X6 a_28_440# B a_492_440# VNW pfet_03v3 ad=0.6072p pd=3.64u as=0.3588p ps=1.9u w=1.38u l=0.28u
X7 Y C a_492_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X8 Y C VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.58p ps=2.16u w=1u l=0.28u
X9 Y B VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X10 VDD A a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X11 VSS A Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__or2_2.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__or2_2 VDD VNW VPW VSS B A Y
X0 VDD B a_172_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X1 a_28_440# A VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X2 Y a_28_440# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X3 VSS a_28_440# Y VPW nfet_03v3 ad=0.52p pd=3.04u as=0.26p ps=1.52u w=1u l=0.28u
X4 VDD a_28_440# Y VNW pfet_03v3 ad=0.7176p pd=3.8u as=0.3588p ps=1.9u w=1.38u l=0.28u
X5 Y a_28_440# VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X6 a_172_440# A a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X7 VSS B a_28_440# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__or2_4.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__or2_4 VDD VNW VPW VSS B A Y
X0 VSS a_28_440# Y VPW nfet_03v3 ad=0.6p pd=3.2u as=0.26p ps=1.52u w=1u l=0.28u
X1 VDD B a_172_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X2 Y a_28_440# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X3 a_28_440# A VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.44p ps=2.88u w=1u l=0.28u
X4 Y a_28_440# VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X5 Y a_28_440# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X6 VDD a_28_440# Y VNW pfet_03v3 ad=0.828p pd=3.96u as=0.3588p ps=1.9u w=1.38u l=0.28u
X7 VSS a_28_440# Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X8 VDD a_28_440# Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X9 Y a_28_440# VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X10 a_172_440# A a_28_440# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X11 VSS B a_28_440# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__tap_2.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__tap_2 VDD VSS
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__tieh_4.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__tieh_4 VDD VNW VPW VSS ONE
X0 a_112_319# a_112_319# VSS VPW nfet_03v3 ad=0.44p pd=2.88u as=0.44p ps=2.88u w=1u l=0.28u
X1 ONE a_112_319# VDD VNW pfet_03v3 ad=0.6072p pd=3.64u as=0.6072p ps=3.64u w=1.38u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__tiel_4.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__tiel_4 VDD VNW VPW VSS ZERO
X0 ZERO a_112_319# VSS VPW nfet_03v3 ad=0.44p pd=2.88u as=0.44p ps=2.88u w=1u l=0.28u
X1 a_112_319# a_112_319# VDD VNW pfet_03v3 ad=0.6072p pd=3.64u as=0.6072p ps=3.64u w=1.38u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__xnor2_2.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__xnor2_2 VDD VNW VPW VSS B A Y
X0 VSS a_556_68# Y VPW nfet_03v3 ad=0.85p pd=3.7u as=0.285p ps=1.57u w=1u l=0.28u
X1 VDD a_556_68# Y VNW pfet_03v3 ad=1.173p pd=4.46u as=0.3933p ps=1.95u w=1.38u l=0.28u
X2 Y a_556_68# VSS VPW nfet_03v3 ad=0.285p pd=1.57u as=0.26p ps=1.52u w=1u l=0.28u
X3 a_332_440# A VDD VNW pfet_03v3 ad=0.5796p pd=2.22u as=0.3588p ps=1.9u w=1.38u l=0.28u
X4 VSS A a_28_68# VPW nfet_03v3 ad=0.54p pd=2.08u as=0.44p ps=2.88u w=1u l=0.28u
X5 a_556_68# a_500_24# a_444_68# VPW nfet_03v3 ad=0.62p pd=2.24u as=0.14p ps=1.28u w=1u l=0.28u
X6 a_500_24# A a_556_68# VPW nfet_03v3 ad=0.31p pd=1.62u as=0.62p ps=2.24u w=1u l=0.28u
X7 a_500_24# a_28_68# a_556_68# VNW pfet_03v3 ad=0.7866p pd=2.52u as=0.4968p ps=2.1u w=1.38u l=0.28u
X8 VDD B a_500_24# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.7866p ps=2.52u w=1.38u l=0.28u
X9 VSS B a_500_24# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.31p ps=1.62u w=1u l=0.28u
X10 a_444_68# a_28_68# VSS VPW nfet_03v3 ad=0.14p pd=1.28u as=0.54p ps=2.08u w=1u l=0.28u
X11 Y a_556_68# VDD VNW pfet_03v3 ad=0.3933p pd=1.95u as=0.3588p ps=1.9u w=1.38u l=0.28u
X12 VDD A a_28_68# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X13 a_556_68# a_500_24# a_332_440# VNW pfet_03v3 ad=0.4968p pd=2.1u as=0.5796p ps=2.22u w=1.38u l=0.28u
.ends

* NGSPICE file created from gf180mcu_as_sc_mcu7t3v3__xnor2_4.ext - technology: gf180mcuD

.subckt gf180mcu_as_sc_mcu7t3v3__xnor2_4 VDD VNW VPW VSS B A Y
X0 VSS a_556_68# Y VPW nfet_03v3 ad=0.26p pd=1.52u as=0.285p ps=1.57u w=1u l=0.28u
X1 VDD a_556_68# Y VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3933p ps=1.95u w=1.38u l=0.28u
X2 Y a_556_68# VSS VPW nfet_03v3 ad=0.285p pd=1.57u as=0.26p ps=1.52u w=1u l=0.28u
X3 a_332_440# A VDD VNW pfet_03v3 ad=0.5796p pd=2.22u as=0.3588p ps=1.9u w=1.38u l=0.28u
X4 VSS A a_28_68# VPW nfet_03v3 ad=0.54p pd=2.08u as=0.44p ps=2.88u w=1u l=0.28u
X5 a_556_68# a_500_24# a_444_68# VPW nfet_03v3 ad=0.62p pd=2.24u as=0.14p ps=1.28u w=1u l=0.28u
X6 Y a_556_68# VDD VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.3588p ps=1.9u w=1.38u l=0.28u
X7 a_500_24# A a_556_68# VPW nfet_03v3 ad=0.31p pd=1.62u as=0.62p ps=2.24u w=1u l=0.28u
X8 a_500_24# a_28_68# a_556_68# VNW pfet_03v3 ad=0.7866p pd=2.52u as=0.4968p ps=2.1u w=1.38u l=0.28u
X9 VDD B a_500_24# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.7866p ps=2.52u w=1.38u l=0.28u
X10 VSS B a_500_24# VPW nfet_03v3 ad=0.26p pd=1.52u as=0.31p ps=1.62u w=1u l=0.28u
X11 VSS a_556_68# Y VPW nfet_03v3 ad=0.56p pd=3.12u as=0.26p ps=1.52u w=1u l=0.28u
X12 VDD a_556_68# Y VNW pfet_03v3 ad=0.7314p pd=3.82u as=0.3588p ps=1.9u w=1.38u l=0.28u
X13 a_444_68# a_28_68# VSS VPW nfet_03v3 ad=0.14p pd=1.28u as=0.54p ps=2.08u w=1u l=0.28u
X14 Y a_556_68# VSS VPW nfet_03v3 ad=0.26p pd=1.52u as=0.26p ps=1.52u w=1u l=0.28u
X15 Y a_556_68# VDD VNW pfet_03v3 ad=0.3933p pd=1.95u as=0.3588p ps=1.9u w=1.38u l=0.28u
X16 VDD A a_28_68# VNW pfet_03v3 ad=0.3588p pd=1.9u as=0.6072p ps=3.64u w=1.38u l=0.28u
X17 a_556_68# a_500_24# a_332_440# VNW pfet_03v3 ad=0.4968p pd=2.1u as=0.5796p ps=2.22u w=1.38u l=0.28u
.ends

