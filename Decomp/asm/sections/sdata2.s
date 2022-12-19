.include "macros.inc"


.section .sdata2, "wa"  # 0x803D4BE0 - 0x803D5D80

.global Black
Black:
	.incbin "baserom.dol", 0x16A5A0, 0x4
.global Blue
Blue:
	.incbin "baserom.dol", 0x16A4A4, 0x4
.global Red
Red:
	.incbin "baserom.dol", 0x16A4A8, 0x4
.global Green
Green:
	.incbin "baserom.dol", 0x16A4AC, 0x4
.global White
White:
	.incbin "baserom.dol", 0x16A4B0, 0x4
.global Yellow
Yellow:
	.incbin "baserom.dol", 0x16A4B4, 0x4
.global one
one:
	.incbin "baserom.dol", 0x16A4B8, 0x8
.global pi
pi:
	.incbin "baserom.dol", 0x16A4C0, 0x8
.global pio2_hi
pio2_hi:
	.incbin "baserom.dol", 0x16A4C8, 0x8
.global pio2_lo
pio2_lo:
	.incbin "baserom.dol", 0x16A4D0, 0x8
.global pS0
pS0:
	.incbin "baserom.dol", 0x16A4D8, 0x8
.global pS1
pS1:
	.incbin "baserom.dol", 0x16A4E0, 0x8
.global pS2
pS2:
	.incbin "baserom.dol", 0x16A4E8, 0x8
.global pS3
pS3:
	.incbin "baserom.dol", 0x16A4F0, 0x8
.global pS4
pS4:
	.incbin "baserom.dol", 0x16A4F8, 0x8
.global pS5
pS5:
	.incbin "baserom.dol", 0x16A500, 0x8
.global qS1
qS1:
	.incbin "baserom.dol", 0x16A508, 0x8
.global qS2
qS2:
	.incbin "baserom.dol", 0x16A510, 0x8
.global qS3
qS3:
	.incbin "baserom.dol", 0x16A518, 0x8
.global qS4
qS4:
	.incbin "baserom.dol", 0x16A520, 0x8

.global tiny
tiny:
	.incbin "baserom.dol", 0x16A528, 0x8
.global zero
zero:
	.incbin "baserom.dol", 0x16A530, 0x8
.global pi_o_4
pi_o_4:
	.incbin "baserom.dol", 0x16A538, 0x8
.global pi_o_2
pi_o_2:
	.incbin "baserom.dol", 0x16A540, 0x8
.global pi_2
pi_2:
	.incbin "baserom.dol", 0x16A548, 0x8
.global pi_lo
pi_lo:
	.incbin "baserom.dol", 0x16A550, 0x8
.global one_2
one_2:
	.incbin "baserom.dol", 0x16A558, 0x8
.global Zero
Zero:
	.incbin "baserom.dol", 0x16A560, 0x10
.global bp
bp:
	.incbin "baserom.dol", 0x16A570, 0x10
.global dp_h
dp_h:
	.incbin "baserom.dol", 0x16A580, 0x10
.global dp_l
dp_l:
	.incbin "baserom.dol", 0x16A590, 0xF8
.global atanhi
atanhi:
	.incbin "baserom.dol", 0x16A688, 0x18
.global lbl_803D4DE0
lbl_803D4DE0:
	.incbin "baserom.dol", 0x16A6A0, 0x8
.global atanlo
atanlo:
	.incbin "baserom.dol", 0x16A6A8, 0x18
.global lbl_803D4E00
lbl_803D4E00:
	.incbin "baserom.dol", 0x16A6C0, 0x8
.global aT
aT:
	.incbin "baserom.dol", 0x16A6C8, 0x8
.global lbl_803D4E10
lbl_803D4E10:
	.incbin "baserom.dol", 0x16A6D0, 0x8
.global lbl_803D4E18
lbl_803D4E18:
	.incbin "baserom.dol", 0x16A6D8, 0x8
.global lbl_803D4E20
lbl_803D4E20:
	.incbin "baserom.dol", 0x16A6E0, 0x8
.global lbl_803D4E28
lbl_803D4E28:
	.incbin "baserom.dol", 0x16A6E8, 0x8
.global lbl_803D4E30
lbl_803D4E30:
	.incbin "baserom.dol", 0x16A6F0, 0x8
.global lbl_803D4E38
lbl_803D4E38:
	.incbin "baserom.dol", 0x16A6F8, 0x8
.global lbl_803D4E40
lbl_803D4E40:
	.incbin "baserom.dol", 0x16A700, 0x8
.global lbl_803D4E48
lbl_803D4E48:
	.incbin "baserom.dol", 0x16A708, 0x8
.global lbl_803D4E50
lbl_803D4E50:
	.incbin "baserom.dol", 0x16A710, 0x8
.global lbl_803D4E58
lbl_803D4E58:
	.incbin "baserom.dol", 0x16A718, 0xD0
.global T
T:
	.incbin "baserom.dol", 0x16A7E8, 0x8
.global lbl_803D4F30
lbl_803D4F30:
	.incbin "baserom.dol", 0x16A7F0, 0x8
.global lbl_803D4F38
lbl_803D4F38:
	.incbin "baserom.dol", 0x16A7F8, 0x8
.global lbl_803D4F40
lbl_803D4F40:
	.incbin "baserom.dol", 0x16A800, 0x8
.global lbl_803D4F48
lbl_803D4F48:
	.incbin "baserom.dol", 0x16A808, 0x8
.global lbl_803D4F50
lbl_803D4F50:
	.incbin "baserom.dol", 0x16A810, 0x8
.global lbl_803D4F58
lbl_803D4F58:
	.incbin "baserom.dol", 0x16A818, 0x8
.global lbl_803D4F60
lbl_803D4F60:
	.incbin "baserom.dol", 0x16A820, 0x8
.global lbl_803D4F68
lbl_803D4F68:
	.incbin "baserom.dol", 0x16A828, 0x8
.global lbl_803D4F70
lbl_803D4F70:
	.incbin "baserom.dol", 0x16A830, 0x8
.global lbl_803D4F78
lbl_803D4F78:
	.incbin "baserom.dol", 0x16A838, 0x8
.global lbl_803D4F80
lbl_803D4F80:
	.incbin "baserom.dol", 0x16A840, 0x8
.global lbl_803D4F88
lbl_803D4F88:
	.incbin "baserom.dol", 0x16A848, 0x8
.global two_over_pi
two_over_pi:
	.incbin "baserom.dol", 0x16A850, 0x108
.global npio2_hw
npio2_hw:
	.incbin "baserom.dol", 0x16A958, 0xD0
.global init_jk
init_jk:
	.incbin "baserom.dol", 0x16AA28, 0x10
.global PIo2
PIo2:
	.incbin "baserom.dol", 0x16AA38, 0x60
.global __clz_tab
__clz_tab:
	.incbin "baserom.dol", 0x16AA98, 0x100
.global __clz_tab_N1
__clz_tab_N1:
	.incbin "baserom.dol", 0x16AB98, 0x100
.global __clz_tab_N2
__clz_tab_N2:
	.incbin "baserom.dol", 0x16AC98, 0x100
.global __clz_tab_N3
__clz_tab_N3:
	.incbin "baserom.dol", 0x16AD98, 0x120
.global _94_N1
_94_N1:
	.incbin "baserom.dol", 0x16AEB8, 0x4
.global _95_N2
_95_N2:
	.incbin "baserom.dol", 0x16AEBC, 0x3C
.global _97_N2
_97_N2:
	.incbin "baserom.dol", 0x16AEF8, 0x4
.global _98_N2
_98_N2:
	.incbin "baserom.dol", 0x16AEFC, 0x4
.global _99_N1
_99_N1:
	.incbin "baserom.dol", 0x16AF00, 0x4
.global _100_N1
_100_N1:
	.incbin "baserom.dol", 0x16AF04, 0x4
.global _103
_103:
	.incbin "baserom.dol", 0x16AF08, 0x4
.global _104
_104:
	.incbin "baserom.dol", 0x16AF0C, 0x74
.global _121_N1
_121_N1:
	.incbin "baserom.dol", 0x16AF80, 0x4
.global _122_N1
_122_N1:
	.incbin "baserom.dol", 0x16AF84, 0x4
.global _123
_123:
	.incbin "baserom.dol", 0x16AF88, 0x4
.global _177
_177:
	.incbin "baserom.dol", 0x16AF8C, 0x4
.global _178
_178:
	.incbin "baserom.dol", 0x16AF90, 0x4
.global _179
_179:
	.incbin "baserom.dol", 0x16AF94, 0x4
.global _181_N1
_181_N1:
	.incbin "baserom.dol", 0x16AF98, 0x8
.global _83_N1
_83_N1:
	.incbin "baserom.dol", 0x16AFA0, 0x8
.global _138_N1
_138_N1:
	.incbin "baserom.dol", 0x16AFA8, 0x28
.global _121_N2
_121_N2:
	.incbin "baserom.dol", 0x16AFD0, 0x4
.global _122_N2
_122_N2:
	.incbin "baserom.dol", 0x16AFD4, 0x4
.global _123_N1
_123_N1:
	.incbin "baserom.dol", 0x16AFD8, 0x4
.global _124
_124:
	.incbin "baserom.dol", 0x16AFDC, 0x4
.global _125
_125:
	.incbin "baserom.dol", 0x16AFE0, 0x4
.global _126
_126:
	.incbin "baserom.dol", 0x16AFE4, 0x4
.global _127
_127:
	.incbin "baserom.dol", 0x16AFE8, 0x4
.global _128_N1
_128_N1:
	.incbin "baserom.dol", 0x16AFEC, 0x4
.global _129
_129:
	.incbin "baserom.dol", 0x16AFF0, 0x4
.global _130
_130:
	.incbin "baserom.dol", 0x16AFF4, 0x4
.global _131
_131:
	.incbin "baserom.dol", 0x16AFF8, 0x4
.global _132
_132:
	.incbin "baserom.dol", 0x16AFFC, 0x24
.global _164
_164:
	.incbin "baserom.dol", 0x16B020, 0x8
.global _166_N1
_166_N1:
	.incbin "baserom.dol", 0x16B028, 0x8
.global _192
_192:
	.incbin "baserom.dol", 0x16B030, 0x4
.global _193_N1
_193_N1:
	.incbin "baserom.dol", 0x16B034, 0x4
.global _194
_194:
	.incbin "baserom.dol", 0x16B038, 0x4
.global _195
_195:
	.incbin "baserom.dol", 0x16B03C, 0x4
.global _196
_196:
	.incbin "baserom.dol", 0x16B040, 0x4
.global _197
_197:
	.incbin "baserom.dol", 0x16B044, 0x4C
.global _125_N1
_125_N1:
	.incbin "baserom.dol", 0x16B090, 0x4
.global _126_N1
_126_N1:
	.incbin "baserom.dol", 0x16B094, 0x4
.global _127_N1
_127_N1:
	.incbin "baserom.dol", 0x16B098, 0x8
.global _128_N2
_128_N2:
	.incbin "baserom.dol", 0x16B0A0, 0x8
.global _129_N1
_129_N1:
	.incbin "baserom.dol", 0x16B0A8, 0x8
.global _130_N1
_130_N1:
	.incbin "baserom.dol", 0x16B0B0, 0x8
.global _132_N1
_132_N1:
	.incbin "baserom.dol", 0x16B0B8, 0x38
.global _16_N3
_16_N3:
	.incbin "baserom.dol", 0x16B0F0, 0x10
.global _63_N2
_63_N2:
	.incbin "baserom.dol", 0x16B100, 0x4
.global _64_N2
_64_N2:
	.incbin "baserom.dol", 0x16B104, 0xD8
.global T_N1
T_N1:
	.incbin "baserom.dol", 0x16B1DC, 0x4
.global lbl_803D5920
lbl_803D5920:
	.incbin "baserom.dol", 0x16B1E0, 0x4
.global lbl_803D5924
lbl_803D5924:
	.incbin "baserom.dol", 0x16B1E4, 0x4
.global lbl_803D5928
lbl_803D5928:
	.incbin "baserom.dol", 0x16B1E8, 0x4
.global lbl_803D592C
lbl_803D592C:
	.incbin "baserom.dol", 0x16B1EC, 0x4
.global lbl_803D5930
lbl_803D5930:
	.incbin "baserom.dol", 0x16B1F0, 0x4
.global lbl_803D5934
lbl_803D5934:
	.incbin "baserom.dol", 0x16B1F4, 0x4
.global lbl_803D5938
lbl_803D5938:
	.incbin "baserom.dol", 0x16B1F8, 0x4
.global lbl_803D593C
lbl_803D593C:
	.incbin "baserom.dol", 0x16B1FC, 0x4
.global lbl_803D5940
lbl_803D5940:
	.incbin "baserom.dol", 0x16B200, 0x4
.global lbl_803D5944
lbl_803D5944:
	.incbin "baserom.dol", 0x16B204, 0x4
.global lbl_803D5948
lbl_803D5948:
	.incbin "baserom.dol", 0x16B208, 0x4
.global lbl_803D594C
lbl_803D594C:
	.incbin "baserom.dol", 0x16B20C, 0x4
.global two_over_pi_N1
two_over_pi_N1:
	.incbin "baserom.dol", 0x16B210, 0x318
.global npio2_hw_N1
npio2_hw_N1:
	.incbin "baserom.dol", 0x16B528, 0xA8
.global init_jk_N1
init_jk_N1:
	.incbin "baserom.dol", 0x16B5D0, 0xC
.global PIo2_N1
PIo2_N1:
	.incbin "baserom.dol", 0x16B5DC, 0x64
