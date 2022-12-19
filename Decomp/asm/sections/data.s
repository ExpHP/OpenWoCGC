.include "macros.inc"


.section .data, "wa"  # 0x80123BA0 - 0x8016BB20
	.incbin "baserom.dol", 0x120BA0, 0x6264
.global punchpos1
punchpos1:
	.incbin "baserom.dol", 0x126E04, 0x30
.global punchpos2
punchpos2:
	.incbin "baserom.dol", 0x126E34, 0xA38
.global crunchtime_arena_midpos
crunchtime_arena_midpos:
	.incbin "baserom.dol", 0x12786C, 0x4
.global crunchtime_arena_midpos_4_
crunchtime_arena_midpos_4_:
	.incbin "baserom.dol", 0x127870, 0x8
.global water_attack_pos
water_attack_pos:
	.incbin "baserom.dol", 0x127878, 0x30
.global fire_backpos
fire_backpos:
	.incbin "baserom.dol", 0x1278A8, 0x48
.global fire_frontpos_12_
fire_frontpos_12_:
	.incbin "baserom.dol", 0x1278F0, 0x30
.global weather_srcpos
weather_srcpos:
	.incbin "baserom.dol", 0x127920, 0x8
.global weather_srcpos_8_
weather_srcpos_8_:
	.incbin "baserom.dol", 0x127928, 0x64
.global weather_dstpos
weather_dstpos:
	.incbin "baserom.dol", 0x12798C, 0x6C
.global space_buttonpos
space_buttonpos:
	.incbin "baserom.dol", 0x1279F8, 0xB04
.global AIType
AIType:
	.incbin "baserom.dol", 0x1284FC, 0x8
.global s_penguin_pooof_8012b504
s_penguin_pooof_8012b504:
	.incbin "baserom.dol", 0x128504, 0xBAC
.global tRailExt
tRailExt:
	.incbin "baserom.dol", 0x1290B0, 0x20
.global BOSSCAMPOS
BOSSCAMPOS:
	.incbin "baserom.dol", 0x1290D0, 0xC
.global BOSSCAMPOS2
BOSSCAMPOS2:
	.incbin "baserom.dol", 0x1290DC, 0xC
.global grscale
grscale:
	.incbin "baserom.dol", 0x1290E8, 0xC
.global grvel
grvel:
	.incbin "baserom.dol", 0x1290F4, 0xC
.global crate_list
crate_list:
	.incbin "baserom.dol", 0x129100, 0x4
.global crate_list_4_
crate_list_4_:
	.incbin "baserom.dol", 0x129104, 0xC
.global crate_list_16_
crate_list_16_:
	.incbin "baserom.dol", 0x129110, 0x234
.global tntsfxtime
tntsfxtime:
	.incbin "baserom.dol", 0x129344, 0x1C
.global uvs
uvs:
	.incbin "baserom.dol", 0x129360, 0xF0
.global CrashAnim_GLIDER
CrashAnim_GLIDER:
	.incbin "baserom.dol", 0x129450, 0x78
.global CrashAnim_MOSQUITO
CrashAnim_MOSQUITO:
	.incbin "baserom.dol", 0x1294C8, 0x48
.global CrashAnim_ATLASPHERE
CrashAnim_ATLASPHERE:
	.incbin "baserom.dol", 0x129510, 0x108
.global CrashAnim_GYRO
CrashAnim_GYRO:
	.incbin "baserom.dol", 0x129618, 0xA8
.global CrashAnim_MINETUB
CrashAnim_MINETUB:
	.incbin "baserom.dol", 0x1296C0, 0x78
.global CrashAnim_CREDITS
CrashAnim_CREDITS:
	.incbin "baserom.dol", 0x129738, 0x8B8
.global CocoAnim_DROPSHIP
CocoAnim_DROPSHIP:
	.incbin "baserom.dol", 0x129FF0, 0x2FB8
.global CData
CData:
	.incbin "baserom.dol", 0x12CFA8, 0x18
.global CData_24_
CData_24_:
	.incbin "baserom.dol", 0x12CFC0, 0x14
.global CData_44_
CData_44_:
	.incbin "baserom.dol", 0x12CFD4, 0x66C
.global CData_1688_
CData_1688_:
	.incbin "baserom.dol", 0x12D640, 0x460
.global lbl_80130AA0
lbl_80130AA0:
	.incbin "baserom.dol", 0x12DAA0, 0x5E4
.global lbl_80131084
lbl_80131084:
	.incbin "baserom.dol", 0x12E084, 0x10
.global CData_4332_
CData_4332_:
	.incbin "baserom.dol", 0x12E094, 0x948
.global lbl_801319DC
lbl_801319DC:
	.incbin "baserom.dol", 0x12E9DC, 0xC9C
.global Credit
Credit:
	.incbin "baserom.dol", 0x12F678, 0xA18
.global cutdir
cutdir:
	.incbin "baserom.dol", 0x130090, 0x24
.global cutdircol
cutdircol:
	.incbin "baserom.dol", 0x1300B4, 0x24
.global cutambcol
cutambcol:
	.incbin "baserom.dol", 0x1300D8, 0xC
.global csc_titles
csc_titles:
	.incbin "baserom.dol", 0x1300E4, 0x24
.global csd_titles
csd_titles:
	.incbin "baserom.dol", 0x130108, 0x30
.global csc_intro1
csc_intro1:
	.incbin "baserom.dol", 0x130138, 0x6C
.global csd_intro1
csd_intro1:
	.incbin "baserom.dol", 0x1301A4, 0x40
.global csc_intro2
csc_intro2:
	.incbin "baserom.dol", 0x1301E4, 0xF0
.global csd_intro2
csd_intro2:
	.incbin "baserom.dol", 0x1302D4, 0x90
.global csc_outro
csc_outro:
	.incbin "baserom.dol", 0x130364, 0x60
.global csd_outro
csd_outro:
	.incbin "baserom.dol", 0x1303C4, 0x20
.global csc_outro2
csc_outro2:
	.incbin "baserom.dol", 0x1303E4, 0xB4
.global csd_outro2
csd_outro2:
	.incbin "baserom.dol", 0x130498, 0x40
.global cutscene_locatorfns
cutscene_locatorfns:
	.incbin "baserom.dol", 0x1304D8, 0x10
.global cutcampos_FRONTEND
cutcampos_FRONTEND:
	.incbin "baserom.dol", 0x1304E8, 0xC
.global cutcamlook_FRONTEND
cutcamlook_FRONTEND:
	.incbin "baserom.dol", 0x1304F4, 0xC
.global cutpos_CRASH
cutpos_CRASH:
	.incbin "baserom.dol", 0x130500, 0xC
.global cutpos_FRONTEND
cutpos_FRONTEND:
	.incbin "baserom.dol", 0x13050C, 0x18
.global cutpos_SPACE
cutpos_SPACE:
	.incbin "baserom.dol", 0x130524, 0x24
.global campos_SPACE
campos_SPACE:
	.incbin "baserom.dol", 0x130548, 0x2700
.global SpaceGameCutTab
SpaceGameCutTab:
	.incbin "baserom.dol", 0x132C48, 0xD0
.global rsfxJung
rsfxJung:
	.incbin "baserom.dol", 0x132D18, 0x14
.global HotRocks
HotRocks:
	.incbin "baserom.dol", 0x132D2C, 0x124
.global HotCoals
HotCoals:
	.incbin "baserom.dol", 0x132E50, 0x34
.global HutList
HutList:
	.incbin "baserom.dol", 0x132E84, 0x6C
.global Deb3Emit
Deb3Emit:
	.incbin "baserom.dol", 0x132EF0, 0x18
.global Deb3Emit_24_
Deb3Emit_24_:
	.incbin "baserom.dol", 0x132F08, 0x8
.global Deb3Emit_32_
Deb3Emit_32_:
	.incbin "baserom.dol", 0x132F10, 0xDC
.global Deb3Info
Deb3Info:
	.incbin "baserom.dol", 0x132FEC, 0x360
.global H2OElec
H2OElec:
	.incbin "baserom.dol", 0x13334C, 0x268
.global H2OElec_616_
H2OElec_616_:
	.incbin "baserom.dol", 0x1335B4, 0x58
.global Font3DTab
Font3DTab:
	.incbin "baserom.dol", 0x13360C, 0x8
.global Font3DTab_8_
Font3DTab_8_:
	.incbin "baserom.dol", 0x133614, 0x3D8
.global Font3DAccentTab
Font3DAccentTab:
	.incbin "baserom.dol", 0x1339EC, 0x4
.global Font3DAccentTab_4_
Font3DAccentTab_4_:
	.incbin "baserom.dol", 0x1339F0, 0x50
.global Font3DObjTab
Font3DObjTab:
	.incbin "baserom.dol", 0x133A40, 0x138
.global Font3DMtlTab
Font3DMtlTab:
	.incbin "baserom.dol", 0x133B78, 0x4
.global Font3DMtlTab_4_
Font3DMtlTab_4_:
	.incbin "baserom.dol", 0x133B7C, 0x24
.global j_bd
j_bd:
	.incbin "baserom.dol", 0x133BA0, 0x52
.global j_bc
j_bc:
	.incbin "baserom.dol", 0x133BF2, 0x16
.global DemoLevel
DemoLevel:
	.incbin "baserom.dol", 0x133C08, 0x10
.global v000
v000:
	.incbin "baserom.dol", 0x133C18, 0xC
.global v010
v010:
	.incbin "baserom.dol", 0x133C24, 0xC
.global v001
v001:
	.incbin "baserom.dol", 0x133C30, 0xC
.global cortex_gameover_tab
cortex_gameover_tab:
	.incbin "baserom.dol", 0x133C3C, 0x1C
.global HData
HData:
	.incbin "baserom.dol", 0x133C58, 0x48
.global hubmidpos
hubmidpos:
	.incbin "baserom.dol", 0x133CA0, 0x8DC
.global LData
LData:
	.incbin "baserom.dol", 0x13457C, 0xF20
.global NameInputTable
NameInputTable:
	.incbin "baserom.dol", 0x13549C, 0x24
.global SplTab
SplTab:
	.incbin "baserom.dol", 0x1354C0, 0x18
.global SplTab_24_
SplTab_24_:
	.incbin "baserom.dol", 0x1354D8, 0xA8
.global SplTab_192_
SplTab_192_:
	.incbin "baserom.dol", 0x135580, 0x18
.global SplTab_216_
SplTab_216_:
	.incbin "baserom.dol", 0x135598, 0x18
.global SplTab_240_
SplTab_240_:
	.incbin "baserom.dol", 0x1355B0, 0x18
.global SplTab_264_
SplTab_264_:
	.incbin "baserom.dol", 0x1355C8, 0x138
.global SplTab_576_
SplTab_576_:
	.incbin "baserom.dol", 0x135700, 0x18
.global SplTab_600_
SplTab_600_:
	.incbin "baserom.dol", 0x135718, 0x18
.global SplTab_624_
SplTab_624_:
	.incbin "baserom.dol", 0x135730, 0x18
.global SplTab_648_
SplTab_648_:
	.incbin "baserom.dol", 0x135748, 0x18
.global SplTab_672_
SplTab_672_:
	.incbin "baserom.dol", 0x135760, 0x348
.global SplTab_1512_
SplTab_1512_:
	.incbin "baserom.dol", 0x135AA8, 0x18
.global SplTab_1536_
SplTab_1536_:
	.incbin "baserom.dol", 0x135AC0, 0x90
.global SplTab_1680_
SplTab_1680_:
	.incbin "baserom.dol", 0x135B50, 0x18
.global SplTab_1704_
SplTab_1704_:
	.incbin "baserom.dol", 0x135B68, 0x18
.global SplTab_1728_
SplTab_1728_:
	.incbin "baserom.dol", 0x135B80, 0x18
.global ObjTab
ObjTab:
	.incbin "baserom.dol", 0x135B98, 0x6D
.global ObjTab_109_
ObjTab_109_:
	.incbin "baserom.dol", 0x135C05, 0x17
.global ObjTab_132_
ObjTab_132_:
	.incbin "baserom.dol", 0x135C1C, 0x920
.global ObjTab_2468_
ObjTab_2468_:
	.incbin "baserom.dol", 0x13653C, 0x1A0
.global ObjTab_2884_
ObjTab_2884_:
	.incbin "baserom.dol", 0x1366DC, 0x160
.global ObjTab_3236_
ObjTab_3236_:
	.incbin "baserom.dol", 0x13683C, 0x100
.global ObjTab_3492_
ObjTab_3492_:
	.incbin "baserom.dol", 0x13693C, 0xA0
.global ObjTab_3652_
ObjTab_3652_:
	.incbin "baserom.dol", 0x1369DC, 0xE0
.global ObjTab_3876_
ObjTab_3876_:
	.incbin "baserom.dol", 0x136ABC, 0x9FC
.global vLSZ
vLSZ:
	.incbin "baserom.dol", 0x1374B8, 0x30
.global loadsavepos
loadsavepos:
	.incbin "baserom.dol", 0x1374E8, 0x10
.global GDeb
GDeb:
	.incbin "baserom.dol", 0x1374F8, 0x140
.global GDeb_320_
GDeb_320_:
	.incbin "baserom.dol", 0x137638, 0xD0
.global GDeb_528_
GDeb_528_:
	.incbin "baserom.dol", 0x137708, 0x20
.global GDeb_560_
GDeb_560_:
	.incbin "baserom.dol", 0x137728, 0x10
.global GDeb_576_
GDeb_576_:
	.incbin "baserom.dol", 0x137738, 0x30
.global GDeb_624_
GDeb_624_:
	.incbin "baserom.dol", 0x137768, 0x30
.global GDeb_672_
GDeb_672_:
	.incbin "baserom.dol", 0x137798, 0x10
.global GDeb_688_
GDeb_688_:
	.incbin "baserom.dol", 0x1377A8, 0x10
.global GDeb_704_
GDeb_704_:
	.incbin "baserom.dol", 0x1377B8, 0x110
.global GDeb_976_
GDeb_976_:
	.incbin "baserom.dol", 0x1378C8, 0x20
.global GDeb_1008_
GDeb_1008_:
	.incbin "baserom.dol", 0x1378E8, 0xD0
.global GDeb_1216_
GDeb_1216_:
	.incbin "baserom.dol", 0x1379B8, 0x10
.global GDeb_1232_
GDeb_1232_:
	.incbin "baserom.dol", 0x1379C8, 0x120
.global GDeb_1520_
GDeb_1520_:
	.incbin "baserom.dol", 0x137AE8, 0x30
.global GDeb_1568_
GDeb_1568_:
	.incbin "baserom.dol", 0x137B18, 0xA0
.global GDeb_1728_
GDeb_1728_:
	.incbin "baserom.dol", 0x137BB8, 0x70
.global GDeb_1840_
GDeb_1840_:
	.incbin "baserom.dol", 0x137C28, 0x70
.global GDeb_1952_
GDeb_1952_:
	.incbin "baserom.dol", 0x137C98, 0x10
.global GDeb_1968_
GDeb_1968_:
	.incbin "baserom.dol", 0x137CA8, 0x10
.global GDeb_1984_
GDeb_1984_:
	.incbin "baserom.dol", 0x137CB8, 0x10
.global GDeb_2000_
GDeb_2000_:
	.incbin "baserom.dol", 0x137CC8, 0x60
.global GDeb_2096_
GDeb_2096_:
	.incbin "baserom.dol", 0x137D28, 0x20
.global GDeb_2128_
GDeb_2128_:
	.incbin "baserom.dol", 0x137D48, 0x100
.global GDeb_2384_
GDeb_2384_:
	.incbin "baserom.dol", 0x137E48, 0x20
.global GDeb_2416_
GDeb_2416_:
	.incbin "baserom.dol", 0x137E68, 0x40
.global GDeb_2480_
GDeb_2480_:
	.incbin "baserom.dol", 0x137EA8, 0x10
.global GDeb_2496_
GDeb_2496_:
	.incbin "baserom.dol", 0x137EB8, 0x40
.global GDeb_2560_
GDeb_2560_:
	.incbin "baserom.dol", 0x137EF8, 0x20
.global GDeb_2592_
GDeb_2592_:
	.incbin "baserom.dol", 0x137F18, 0x80
.global ADeb
ADeb:
	.incbin "baserom.dol", 0x137F98, 0x1500
.global mechbits
mechbits:
	.incbin "baserom.dol", 0x139498, 0x1C
.global atlasbits
atlasbits:
	.incbin "baserom.dol", 0x1394B4, 0x1C
.global helibits
helibits:
	.incbin "baserom.dol", 0x1394D0, 0x1C
.global jeepbits
jeepbits:
	.incbin "baserom.dol", 0x1394EC, 0x24
.global TerSurface
TerSurface:
	.incbin "baserom.dol", 0x139510, 0x80
.global TerLayer
TerLayer:
	.incbin "baserom.dol", 0x139590, 0x58
.global PData
PData:
	.incbin "baserom.dol", 0x1395E8, 0x1
.global PData_1_
PData_1_:
	.incbin "baserom.dol", 0x1395E9, 0xC
.global PData_13_
PData_13_:
	.incbin "baserom.dol", 0x1395F5, 0xC
.global PData_25_
PData_25_:
	.incbin "baserom.dol", 0x139601, 0xC
.global PData_37_
PData_37_:
	.incbin "baserom.dol", 0x13960D, 0xC
.global PData_49_
PData_49_:
	.incbin "baserom.dol", 0x139619, 0xC
.global PData_61_
PData_61_:
	.incbin "baserom.dol", 0x139625, 0x3B
.global WesternPlayerStart
WesternPlayerStart:
	.incbin "baserom.dol", 0x139660, 0xC
.global WesternRestartPoints
WesternRestartPoints:
	.incbin "baserom.dol", 0x13966C, 0xB0
.global ExhaustPos
ExhaustPos:
	.incbin "baserom.dol", 0x13971C, 0x18
.global MinHeight_174
MinHeight_174:
	.incbin "baserom.dol", 0x139734, 0x1C
.global FIREBOSSSCALE
FIREBOSSSCALE:
	.incbin "baserom.dol", 0x139750, 0x34
.global ThrowList
ThrowList:
	.incbin "baserom.dol", 0x139784, 0x24
.global InMechZ
InMechZ:
	.incbin "baserom.dol", 0x1397A8, 0x10
.global OutMechZ
OutMechZ:
	.incbin "baserom.dol", 0x1397B8, 0x10
.global InMechPos
InMechPos:
	.incbin "baserom.dol", 0x1397C8, 0x30
.global OutMechPos
OutMechPos:
	.incbin "baserom.dol", 0x1397F8, 0x30
.global EndChase
EndChase:
	.incbin "baserom.dol", 0x139828, 0x10
.global lcutdir
lcutdir:
	.incbin "baserom.dol", 0x139838, 0x24
.global lcutdircol
lcutdircol:
	.incbin "baserom.dol", 0x13985C, 0x24
.global lcutambcol
lcutambcol:
	.incbin "baserom.dol", 0x139880, 0xC
.global titledir
titledir:
	.incbin "baserom.dol", 0x13988C, 0x24
.global titlergb
titlergb:
	.incbin "baserom.dol", 0x1398B0, 0xC
.global titlergb2
titlergb2:
	.incbin "baserom.dol", 0x1398BC, 0x30
.global creditsdircol
creditsdircol:
	.incbin "baserom.dol", 0x1398EC, 0x24
.global creditsrgb
creditsrgb:
	.incbin "baserom.dol", 0x139910, 0x18
.global creditsang
creditsang:
	.incbin "baserom.dol", 0x139928, 0xC
.global ldir
ldir:
	.incbin "baserom.dol", 0x139934, 0x24
.global lcol
lcol:
	.incbin "baserom.dol", 0x139958, 0x24
.global acol
acol:
	.incbin "baserom.dol", 0x13997C, 0xC
.global foot_u
foot_u:
	.incbin "baserom.dol", 0x139988, 0x80
.global foot_v
foot_v:
	.incbin "baserom.dol", 0x139A08, 0x80
.global texanimscripts
texanimscripts:
	.incbin "baserom.dol", 0x139A88, 0x180
.global world_scene
world_scene:
	.incbin "baserom.dol", 0x139C08, 0x4
.global world_scene_4_
world_scene_4_:
	.incbin "baserom.dol", 0x139C0C, 0x4
.global world_scene_8_
world_scene_8_:
	.incbin "baserom.dol", 0x139C10, 0x4
.global world_scene_12_
world_scene_12_:
	.incbin "baserom.dol", 0x139C14, 0x4
.global world_scene_16_
world_scene_16_:
	.incbin "baserom.dol", 0x139C18, 0x70
.global world_scene2
world_scene2:
	.incbin "baserom.dol", 0x139C88, 0x4
.global world_scene2_4_
world_scene2_4_:
	.incbin "baserom.dol", 0x139C8C, 0x4
.global world_scene2_8_
world_scene2_8_:
	.incbin "baserom.dol", 0x139C90, 0xF8
.global lbl_8013CD88
lbl_8013CD88:
	.incbin "baserom.dol", 0x139D88, 0x30
.global lbl_8013CDB8
lbl_8013CDB8:
	.incbin "baserom.dol", 0x139DB8, 0x98
.global CrashMoveInfo
CrashMoveInfo:
	.incbin "baserom.dol", 0x139E50, 0x8
.global CrashMoveInfo_8_
CrashMoveInfo_8_:
	.incbin "baserom.dol", 0x139E58, 0x40
.global SwimmingMoveInfo
SwimmingMoveInfo:
	.incbin "baserom.dol", 0x139E98, 0x48
.global CocoMoveInfo
CocoMoveInfo:
	.incbin "baserom.dol", 0x139EE0, 0x48
.global ScooterMoveInfo
ScooterMoveInfo:
	.incbin "baserom.dol", 0x139F28, 0x48
.global SnowBoardMoveInfo
SnowBoardMoveInfo:
	.incbin "baserom.dol", 0x139F70, 0x48
.global OffRoaderMoveInfo
OffRoaderMoveInfo:
	.incbin "baserom.dol", 0x139FB8, 0x48
.global MechMoveInfo
MechMoveInfo:
	.incbin "baserom.dol", 0x13A000, 0x48
.global FireEngineMoveInfo
FireEngineMoveInfo:
	.incbin "baserom.dol", 0x13A048, 0x48
.global GyroMoveInfo
GyroMoveInfo:
	.incbin "baserom.dol", 0x13A090, 0x36
.global GyroMoveInfo_54_
GyroMoveInfo_54_:
	.incbin "baserom.dol", 0x13A0C6, 0x12
.global SubmarineMoveInfo
SubmarineMoveInfo:
	.incbin "baserom.dol", 0x13A0D8, 0x10
.global SubmarineMoveInfo_16_
SubmarineMoveInfo_16_:
	.incbin "baserom.dol", 0x13A0E8, 0x38
.global MineCartMoveInfo
MineCartMoveInfo:
	.incbin "baserom.dol", 0x13A120, 0x2C
.global MineCartMoveInfo_44_
MineCartMoveInfo_44_:
	.incbin "baserom.dol", 0x13A14C, 0x1C
.global MineTubMoveInfo
MineTubMoveInfo:
	.incbin "baserom.dol", 0x13A168, 0x48
.global TubLinkCR
TubLinkCR:
	.incbin "baserom.dol", 0x13A1B0, 0x36
.global TubLinkGT
TubLinkGT:
	.incbin "baserom.dol", 0x13A1E6, 0x6E
.global DefaultMoveInfo
DefaultMoveInfo:
	.incbin "baserom.dol", 0x13A254, 0x48
.global PDebInfo
PDebInfo:
	.incbin "baserom.dol", 0x13A29C, 0x54
.global SfxTabGLOBAL
SfxTabGLOBAL:
	.incbin "baserom.dol", 0x13A2F0, 0x1B12
.global lbl_8013EE02
lbl_8013EE02:
	.incbin "baserom.dol", 0x13BE02, 0x270
.global lbl_8013F072
lbl_8013F072:
	.incbin "baserom.dol", 0x13C072, 0x3AE
.global SfxTabESKIMO
SfxTabESKIMO:
	.incbin "baserom.dol", 0x13C420, 0x150
.global SfxTabBURN
SfxTabBURN:
	.incbin "baserom.dol", 0x13C570, 0x270
.global SfxTabOHNO
SfxTabOHNO:
	.incbin "baserom.dol", 0x13C7E0, 0x150
.global SfxTabSMOKEY
SfxTabSMOKEY:
	.incbin "baserom.dol", 0x13C930, 0xC0
.global SfxTabREACTOR
SfxTabREACTOR:
	.incbin "baserom.dol", 0x13C9F0, 0xF0
.global SfxTabAVALANCHE
SfxTabAVALANCHE:
	.incbin "baserom.dol", 0x13CAE0, 0x1B0
.global SfxTabCORAL
SfxTabCORAL:
	.incbin "baserom.dol", 0x13CC90, 0x120
.global SfxTabARCTIC
SfxTabARCTIC:
	.incbin "baserom.dol", 0x13CDB0, 0x150
.global SfxTabJUNGLE
SfxTabJUNGLE:
	.incbin "baserom.dol", 0x13CF00, 0x150
.global SfxTabNATURE
SfxTabNATURE:
	.incbin "baserom.dol", 0x13D050, 0x150
.global SfxTabGAUNTLET
SfxTabGAUNTLET:
	.incbin "baserom.dol", 0x13D1A0, 0xC0
.global SfxTabBAMBOO
SfxTabBAMBOO:
	.incbin "baserom.dol", 0x13D260, 0xF0
.global SfxTabBANZAI
SfxTabBANZAI:
	.incbin "baserom.dol", 0x13D350, 0x1B0
.global SfxTabTORNADO
SfxTabTORNADO:
	.incbin "baserom.dol", 0x13D500, 0x90
.global SfxTabTSUNAMI
SfxTabTSUNAMI:
	.incbin "baserom.dol", 0x13D590, 0x300
.global SfxTabFRENZY
SfxTabFRENZY:
	.incbin "baserom.dol", 0x13D890, 0x1E0
.global SfxTabMADNESS
SfxTabMADNESS:
	.incbin "baserom.dol", 0x13DA70, 0x90
.global SfxTabLIZARDS
SfxTabLIZARDS:
	.incbin "baserom.dol", 0x13DB00, 0x210
.global SfxTabSINKING
SfxTabSINKING:
	.incbin "baserom.dol", 0x13DD10, 0x3F0
.global SfxTabGOLD
SfxTabGOLD:
	.incbin "baserom.dol", 0x13E100, 0x270
.global SfxTabVOID
SfxTabVOID:
	.incbin "baserom.dol", 0x13E370, 0xF0
.global SfxTabROKS
SfxTabROKS:
	.incbin "baserom.dol", 0x13E460, 0x330
.global SfxTabASHES
SfxTabASHES:
	.incbin "baserom.dol", 0x13E790, 0x360
.global SfxTabDRAIN
SfxTabDRAIN:
	.incbin "baserom.dol", 0x13EAF0, 0x210
.global SfxTabPRESSURE
SfxTabPRESSURE:
	.incbin "baserom.dol", 0x13ED00, 0x180
.global SfxTabCRUNCH
SfxTabCRUNCH:
	.incbin "baserom.dol", 0x13EE80, 0x150
.global SfxTabOIDS
SfxTabOIDS:
	.incbin "baserom.dol", 0x13EFD0, 0x3C0
.global SfxTabTOWN
SfxTabTOWN:
	.incbin "baserom.dol", 0x13F390, 0x90
.global SfxTabICE
SfxTabICE:
	.incbin "baserom.dol", 0x13F420, 0x120
.global SfxTabHEIGHTS
SfxTabHEIGHTS:
	.incbin "baserom.dol", 0x13F540, 0x60
.global SfxTabBALLS
SfxTabBALLS:
	.incbin "baserom.dol", 0x13F5A0, 0x120
.global SfxTabBOWLER
SfxTabBOWLER:
	.incbin "baserom.dol", 0x13F6C0, 0x90
.global SfxTabVORTEX
SfxTabVORTEX:
	.incbin "baserom.dol", 0x13F750, 0x90
.global SfxTabSEA
SfxTabSEA:
	.incbin "baserom.dol", 0x13F7E0, 0xF0
.global SfxTabFRONTEND
SfxTabFRONTEND:
	.incbin "baserom.dol", 0x13F8D0, 0x3C0
.global SfxTabGAMEOVER
SfxTabGAMEOVER:
	.incbin "baserom.dol", 0x13FC90, 0x1B0
.global SfxTabSPACE
SfxTabSPACE:
	.incbin "baserom.dol", 0x13FE40, 0x570
.global SfxTabCREDITS
SfxTabCREDITS:
	.incbin "baserom.dol", 0x1403B0, 0x60
.global LanguageName
LanguageName:
	.incbin "baserom.dol", 0x140410, 0x60
.global HubName
HubName:
	.incbin "baserom.dol", 0x140470, 0x90
.global LevelName
LevelName:
	.incbin "baserom.dol", 0x140500, 0x420
.global PlaceName
PlaceName:
	.incbin "baserom.dol", 0x140920, 0x78
.global PlaceName3
PlaceName3:
	.incbin "baserom.dol", 0x140998, 0x78
.global tNEWGAME
tNEWGAME:
	.incbin "baserom.dol", 0x140A10, 0x18
.global tDEMO
tDEMO:
	.incbin "baserom.dol", 0x140A28, 0x18
.global tBONUS
tBONUS:
	.incbin "baserom.dol", 0x140A40, 0x18
.global tCHECK
tCHECK:
	.incbin "baserom.dol", 0x140A58, 0x18
.global tPOINT
tPOINT:
	.incbin "baserom.dol", 0x140A70, 0x30
.global tENTERINGTIMETRIAL
tENTERINGTIMETRIAL:
	.incbin "baserom.dol", 0x140AA0, 0x18
.global tRESUME
tRESUME:
	.incbin "baserom.dol", 0x140AB8, 0x18
.global tOPTIONS
tOPTIONS:
	.incbin "baserom.dol", 0x140AD0, 0x18
.global tQUIT
tQUIT:
	.incbin "baserom.dol", 0x140AE8, 0x18
.global tWARPROOM
tWARPROOM:
	.incbin "baserom.dol", 0x140B00, 0x18
.global tRESTARTTRIAL
tRESTARTTRIAL:
	.incbin "baserom.dol", 0x140B18, 0x18
.global tRESTARTRACE
tRESTARTRACE:
	.incbin "baserom.dol", 0x140B30, 0x30
.global tBESTTIME
tBESTTIME:
	.incbin "baserom.dol", 0x140B60, 0x18
.global t2NDBESTTIME
t2NDBESTTIME:
	.incbin "baserom.dol", 0x140B78, 0x18
.global t3RDBESTTIME
t3RDBESTTIME:
	.incbin "baserom.dol", 0x140B90, 0x18
.global tNONEWTIME
tNONEWTIME:
	.incbin "baserom.dol", 0x140BA8, 0x18
.global tCONTINUE
tCONTINUE:
	.incbin "baserom.dol", 0x140BC0, 0x18
.global tGAMEOVER
tGAMEOVER:
	.incbin "baserom.dol", 0x140BD8, 0xC
.global tGAMEOVER_12_
tGAMEOVER_12_:
	.incbin "baserom.dol", 0x140BE4, 0xC
.global tYES
tYES:
	.incbin "baserom.dol", 0x140BF0, 0xC
.global tYES_12_
tYES_12_:
	.incbin "baserom.dol", 0x140BFC, 0xC
.global tNO
tNO:
	.incbin "baserom.dol", 0x140C08, 0x18
.global tON
tON:
	.incbin "baserom.dol", 0x140C20, 0x18
.global tOFF
tOFF:
	.incbin "baserom.dol", 0x140C38, 0x30
.global tOK
tOK:
	.incbin "baserom.dol", 0x140C68, 0x18
.global tDONE
tDONE:
	.incbin "baserom.dol", 0x140C80, 0x18
.global tCANCEL
tCANCEL:
	.incbin "baserom.dol", 0x140C98, 0x18
.global tEXIT
tEXIT:
	.incbin "baserom.dol", 0x140CB0, 0x18
.global tVIBRATION
tVIBRATION:
	.incbin "baserom.dol", 0x140CC8, 0x30
.global tSOUNDOPTIONS
tSOUNDOPTIONS:
	.incbin "baserom.dol", 0x140CF8, 0x18
.global tSFXVOLUME
tSFXVOLUME:
	.incbin "baserom.dol", 0x140D10, 0x18
.global tMUSICVOLUME
tMUSICVOLUME:
	.incbin "baserom.dol", 0x140D28, 0x18
.global tLANGUAGE
tLANGUAGE:
	.incbin "baserom.dol", 0x140D40, 0x30
.global tRELICSREQUIRED
tRELICSREQUIRED:
	.incbin "baserom.dol", 0x140D70, 0x18
.global tCRYSTALS
tCRYSTALS:
	.incbin "baserom.dol", 0x140D88, 0x14
.global tCRYSTALS_20_
tCRYSTALS_20_:
	.incbin "baserom.dol", 0x140D9C, 0x4
.global tGEMS
tGEMS:
	.incbin "baserom.dol", 0x140DA0, 0xC
.global tGEMS_12_
tGEMS_12_:
	.incbin "baserom.dol", 0x140DAC, 0xC
.global tRELICS
tRELICS:
	.incbin "baserom.dol", 0x140DB8, 0xC
.global tRELICS_12_
tRELICS_12_:
	.incbin "baserom.dol", 0x140DC4, 0x8
.global tRELICS_20_
tRELICS_20_:
	.incbin "baserom.dol", 0x140DCC, 0x4
.global tTIMES
tTIMES:
	.incbin "baserom.dol", 0x140DD0, 0x18
.global tPOWERS
tPOWERS:
	.incbin "baserom.dol", 0x140DE8, 0x18
.global tSUPERBELLYFLOP
tSUPERBELLYFLOP:
	.incbin "baserom.dol", 0x140E00, 0x18
.global tSUPERBELLYFLOPTEXT
tSUPERBELLYFLOPTEXT:
	.incbin "baserom.dol", 0x140E18, 0x3C
.global tSUPERBELLYFLOPTEXT_60_
tSUPERBELLYFLOPTEXT_60_:
	.incbin "baserom.dol", 0x140E54, 0x6C
.global tDEATHTORNADOSPIN
tDEATHTORNADOSPIN:
	.incbin "baserom.dol", 0x140EC0, 0x18
.global tDEATHTORNADOSPINTEXT
tDEATHTORNADOSPINTEXT:
	.incbin "baserom.dol", 0x140ED8, 0xA8
.global tDOUBLEJUMP
tDOUBLEJUMP:
	.incbin "baserom.dol", 0x140F80, 0x18
.global tDOUBLEJUMPTEXT
tDOUBLEJUMPTEXT:
	.incbin "baserom.dol", 0x140F98, 0xA8
.global tFRUITBAZOOKA
tFRUITBAZOOKA:
	.incbin "baserom.dol", 0x141040, 0x18
.global tFRUITBAZOOKATEXT
tFRUITBAZOOKATEXT:
	.incbin "baserom.dol", 0x141058, 0xA8
.global tSPEEDSHOES
tSPEEDSHOES:
	.incbin "baserom.dol", 0x141100, 0x18
.global tSPEEDSHOESTEXT
tSPEEDSHOESTEXT:
	.incbin "baserom.dol", 0x141118, 0xA8
.global tSNEAKSHOES
tSNEAKSHOES:
	.incbin "baserom.dol", 0x1411C0, 0x18
.global tSNEAKSHOESTEXT
tSNEAKSHOESTEXT:
	.incbin "baserom.dol", 0x1411D8, 0xA8
.global tPRESSxTOCONTINUE
tPRESSxTOCONTINUE:
	.incbin "baserom.dol", 0x141280, 0x30
.global tEMPTY
tEMPTY:
	.incbin "baserom.dol", 0x1412B0, 0x18
.global tLOAD
tLOAD:
	.incbin "baserom.dol", 0x1412C8, 0x18
.global tSAVE
tSAVE:
	.incbin "baserom.dol", 0x1412E0, 0x18
.global tDELETE
tDELETE:
	.incbin "baserom.dol", 0x1412F8, 0x18
.global tLOADGAME
tLOADGAME:
	.incbin "baserom.dol", 0x141310, 0x18
.global tSAVEGAME
tSAVEGAME:
	.incbin "baserom.dol", 0x141328, 0x18
.global tDELETEGAME
tDELETEGAME:
	.incbin "baserom.dol", 0x141340, 0x60
.global tNODATAAVAILABLE
tNODATAAVAILABLE:
	.incbin "baserom.dol", 0x1413A0, 0x30
.global tCONFIRMLOAD
tCONFIRMLOAD:
	.incbin "baserom.dol", 0x1413D0, 0x18
.global tCONFIRMSAVE
tCONFIRMSAVE:
	.incbin "baserom.dol", 0x1413E8, 0x60
.global tCONFIRMDELETE
tCONFIRMDELETE:
	.incbin "baserom.dol", 0x141448, 0x18
.global tCONFIRMFORMAT
tCONFIRMFORMAT:
	.incbin "baserom.dol", 0x141460, 0x18
.global tCONFIRMOVERWRITE
tCONFIRMOVERWRITE:
	.incbin "baserom.dol", 0x141478, 0x30
.global tLOADING
tLOADING:
	.incbin "baserom.dol", 0x1414A8, 0x78
.global tFAILEDTOSAVE
tFAILEDTOSAVE:
	.incbin "baserom.dol", 0x141520, 0x18
.global tFAILEDTODELETE
tFAILEDTODELETE:
	.incbin "baserom.dol", 0x141538, 0x18
.global tTCR_CONTENTPROTECTIONFAULT
tTCR_CONTENTPROTECTIONFAULT:
	.incbin "baserom.dol", 0x141550, 0x18
.global tTCR_ABANDONTHISGAME
tTCR_ABANDONTHISGAME:
	.incbin "baserom.dol", 0x141568, 0x18
.global tTCR_ABANDONTHISLEVEL
tTCR_ABANDONTHISLEVEL:
	.incbin "baserom.dol", 0x141580, 0x18
.global tTCR_PRESSSTARTTORESUME
tTCR_PRESSSTARTTORESUME:
	.incbin "baserom.dol", 0x141598, 0x18
.global tTCR_SAVEBANK
tTCR_SAVEBANK:
	.incbin "baserom.dol", 0x1415B0, 0x18
.global tMEMCARDRETRY
tMEMCARDRETRY:
	.incbin "baserom.dol", 0x1415C8, 0x18
.global tMEMCARDMANAGE
tMEMCARDMANAGE:
	.incbin "baserom.dol", 0x1415E0, 0x18
.global tMEMCARDCONTINUE
tMEMCARDCONTINUE:
	.incbin "baserom.dol", 0x1415F8, 0x18
.global tNOCARD
tNOCARD:
	.incbin "baserom.dol", 0x141610, 0x18
.global tCORRUPTED
tCORRUPTED:
	.incbin "baserom.dol", 0x141628, 0x30
.global tOTHERMARKET
tOTHERMARKET:
	.incbin "baserom.dol", 0x141658, 0x60
.global tDAMAGED
tDAMAGED:
	.incbin "baserom.dol", 0x1416B8, 0x30
.global tWRONGDEV
tWRONGDEV:
	.incbin "baserom.dol", 0x1416E8, 0x30
.global tINSUFFICIENTSPACE
tINSUFFICIENTSPACE:
	.incbin "baserom.dol", 0x141718, 0x48
.global tNOTCOMPAT
tNOTCOMPAT:
	.incbin "baserom.dol", 0x141760, 0x30
.global tCORRUPTDATA
tCORRUPTDATA:
	.incbin "baserom.dol", 0x141790, 0x30
.global tMEMCARDACCESS
tMEMCARDACCESS:
	.incbin "baserom.dol", 0x1417C0, 0x30
.global tFORMAT
tFORMAT:
	.incbin "baserom.dol", 0x1417F0, 0x18
.global tPLAYCRASHBLAST
tPLAYCRASHBLAST:
	.incbin "baserom.dol", 0x141808, 0x18
.global tLOADCRASHBLAST
tLOADCRASHBLAST:
	.incbin "baserom.dol", 0x141820, 0x18
.global tCONNECTGBA
tCONNECTGBA:
	.incbin "baserom.dol", 0x141838, 0x48
.global tCONNECTING
tCONNECTING:
	.incbin "baserom.dol", 0x141880, 0x18
.global tPLEASEWAIT
tPLEASEWAIT:
	.incbin "baserom.dol", 0x141898, 0x18
.global tDOWNLOADING
tDOWNLOADING:
	.incbin "baserom.dol", 0x1418B0, 0x18
.global tCANTDOWNLOAD
tCANTDOWNLOAD:
	.incbin "baserom.dol", 0x1418C8, 0x18
.global tGAMEINST
tGAMEINST:
	.incbin "baserom.dol", 0x1418E0, 0x48
.global tFSERR1
tFSERR1:
	.incbin "baserom.dol", 0x141928, 0x48
.global tFSERR2
tFSERR2:
	.incbin "baserom.dol", 0x141970, 0x48
.global tFSERR3
tFSERR3:
	.incbin "baserom.dol", 0x1419B8, 0x48
.global tFSERR4
tFSERR4:
	.incbin "baserom.dol", 0x141A00, 0x48
.global ExhaustPosA
ExhaustPosA:
	.incbin "baserom.dol", 0x141A48, 0xC
.global ExhaustPosB
ExhaustPosB:
	.incbin "baserom.dol", 0x141A54, 0xC
.global SpaceFirePosA
SpaceFirePosA:
	.incbin "baserom.dol", 0x141A60, 0xC
.global SpaceFirePosB
SpaceFirePosB:
	.incbin "baserom.dol", 0x141A6C, 0xC
.global ZoffaStartPoints
ZoffaStartPoints:
	.incbin "baserom.dol", 0x141A78, 0x100
.global TeleportPos
TeleportPos:
	.incbin "baserom.dol", 0x141B78, 0x30
.global TeleportVel
TeleportVel:
	.incbin "baserom.dol", 0x141BA8, 0x30
.global ZoffaFirePosA
ZoffaFirePosA:
	.incbin "baserom.dol", 0x141BD8, 0xC
.global ZoffaFirePosB
ZoffaFirePosB:
	.incbin "baserom.dol", 0x141BE4, 0xC
.global SPACETRAN
SPACETRAN:
	.incbin "baserom.dol", 0x141BF0, 0xC
.global Scale_344
Scale_344:
	.incbin "baserom.dol", 0x141BFC, 0xC
.global ZepplinGliderOffset
ZepplinGliderOffset:
	.incbin "baserom.dol", 0x141C08, 0xC
.global FarmCameraStart
FarmCameraStart:
	.incbin "baserom.dol", 0x141C14, 0xC
.global FarmZepplinStart
FarmZepplinStart:
	.incbin "baserom.dol", 0x141C20, 0x18
.global ExtroIdealPos
ExtroIdealPos:
	.incbin "baserom.dol", 0x141C38, 0xC
.global TORNADOCAMIDEAL
TORNADOCAMIDEAL:
	.incbin "baserom.dol", 0x141C44, 0xC
.global GliderCollPoints
GliderCollPoints:
	.incbin "baserom.dol", 0x141C50, 0x3C
.global NullVec_413
NullVec_413:
	.incbin "baserom.dol", 0x141C8C, 0xC
.global BattleShipCollScale
BattleShipCollScale:
	.incbin "baserom.dol", 0x141C98, 0xC
.global BSTab
BSTab:
	.incbin "baserom.dol", 0x141CA4, 0x18
.global WBMASKONHIGH
WBMASKONHIGH:
	.incbin "baserom.dol", 0x141CBC, 0xC
.global WBAKUMASKONHIGH
WBAKUMASKONHIGH:
	.incbin "baserom.dol", 0x141CC8, 0xC
.global WBMASKLEFT
WBMASKLEFT:
	.incbin "baserom.dol", 0x141CD4, 0xC
.global WBMASKRIGHT
WBMASKRIGHT:
	.incbin "baserom.dol", 0x141CE0, 0xC
.global WBMASKEYES
WBMASKEYES:
	.incbin "baserom.dol", 0x141CEC, 0xC
.global WBMASKCHEST
WBMASKCHEST:
	.incbin "baserom.dol", 0x141CF8, 0xC
.global WBLeftFirePos
WBLeftFirePos:
	.incbin "baserom.dol", 0x141D04, 0x18
.global FireFlyStart
FireFlyStart:
	.incbin "baserom.dol", 0x141D1C, 0xC
.global WRStartPos
WRStartPos:
	.incbin "baserom.dol", 0x141D28, 0xC
.global CrashteroidsStart
CrashteroidsStart:
	.incbin "baserom.dol", 0x141D34, 0xC
.global LighteningHailVel
LighteningHailVel:
	.incbin "baserom.dol", 0x141D40, 0x8
.global LighteningHailVel_8_
LighteningHailVel_8_:
	.incbin "baserom.dol", 0x141D48, 0x1C
.global NullNuVec
NullNuVec:
	.incbin "baserom.dol", 0x141D64, 0xC
.global WorldAxis
WorldAxis:
	.incbin "baserom.dol", 0x141D70, 0xC
.global WorldAxis_12_
WorldAxis_12_:
	.incbin "baserom.dol", 0x141D7C, 0x18
.global TempX_179
TempX_179:
	.incbin "baserom.dol", 0x141D94, 0xC
.global TempY_180
TempY_180:
	.incbin "baserom.dol", 0x141DA0, 0xC
.global TempZ_181
TempZ_181:
	.incbin "baserom.dol", 0x141DAC, 0x18
.global effecttypes
effecttypes:
	.incbin "baserom.dol", 0x141DC4, 0x2D8
.global lbl_8014509C
lbl_8014509C:
	.incbin "baserom.dol", 0x14209C, 0x1A728
.global debtab
debtab:
	.incbin "baserom.dol", 0x15C7C4, 0x200
.global gensorttab
gensorttab:
	.incbin "baserom.dol", 0x15C9C4, 0x2C
.global gencodetab
gencodetab:
	.incbin "baserom.dol", 0x15C9F0, 0x1C
.global cam_axes
cam_axes:
	.incbin "baserom.dol", 0x15CA0C, 0xC
.global glass_col
glass_col:
	.incbin "baserom.dol", 0x15CA18, 0x18
.global janim_arrayHGobjEval2
janim_arrayHGobjEval2:
	.incbin "baserom.dol", 0x15CA30, 0x400
.global janim_array_198
janim_array_198:
	.incbin "baserom.dol", 0x15CE30, 0x400
.global janim_array_203
janim_array_203:
	.incbin "baserom.dol", 0x15D230, 0x400
.global nutexanimcomtab
nutexanimcomtab:
	.incbin "baserom.dol", 0x15D630, 0x98
.global fpointers
fpointers:
	.incbin "baserom.dol", 0x15D6C8, 0x128
.global fmode
fmode:
	.incbin "baserom.dol", 0x15D7F0, 0x8
.global forig
forig:
	.incbin "baserom.dol", 0x15D7F8, 0x2C
.global gm
gm:
	.incbin "baserom.dol", 0x15D824, 0x40
.global ang
ang:
	.incbin "baserom.dol", 0x15D864, 0x404
.global dummypos
dummypos:
	.incbin "baserom.dol", 0x15DC68, 0x4C
.global padmap
padmap:
	.incbin "baserom.dol", 0x15DCB4, 0x40
.global DebugText
DebugText:
	.incbin "baserom.dol", 0x15DCF4, 0x11C
.global Motor
Motor:
	.incbin "baserom.dol", 0x15DE10, 0x10
.global __MIXVolumeTable
__MIXVolumeTable:
	.incbin "baserom.dol", 0x15DE20, 0x78C
.global __MIXPanTableL
__MIXPanTableL:
	.incbin "baserom.dol", 0x15E5AC, 0x200
.global __MIXPanTableR
__MIXPanTableR:
	.incbin "baserom.dol", 0x15E7AC, 0x234
.global VolConvert
VolConvert:
	.incbin "baserom.dol", 0x15E9E0, 0x200
.global REMAP_GLOBAL
REMAP_GLOBAL:
	.incbin "baserom.dol", 0x15EBE0, 0x244
.global soundbanknames
soundbanknames:
	.incbin "baserom.dol", 0x15EE24, 0x17C
.global SyFontBitmap
SyFontBitmap:
	.incbin "baserom.dol", 0x15EFA0, 0xCA0
.global MC_fileName
MC_fileName:
	.incbin "baserom.dol", 0x15FC40, 0x21
.global BackupHeader
BackupHeader:
	.incbin "baserom.dol", 0x15FC61, 0x40
.global lbl_80162CA1
lbl_80162CA1:
	.incbin "baserom.dol", 0x15FCA1, 0x400
.global lbl_801630A1
lbl_801630A1:
	.incbin "baserom.dol", 0x1600A1, 0x21F
.global CrashSave
CrashSave:
	.incbin "baserom.dol", 0x1602C0, 0x40
.global lbl_80163300
lbl_80163300:
	.incbin "baserom.dol", 0x160300, 0x400
.global lbl_80163700
lbl_80163700:
	.incbin "baserom.dol", 0x160700, 0x200
.global lbl_80163900
lbl_80163900:
	.incbin "baserom.dol", 0x160900, 0x19BC
.global lbl_801652BC
lbl_801652BC:
	.incbin "baserom.dol", 0x1622BC, 0x4
.global Shaders
Shaders:
	.incbin "baserom.dol", 0x1622C0, 0x118
.global Lockupbuffer1
Lockupbuffer1:
	.incbin "baserom.dol", 0x1623D8, 0x80
.global Lockupbuffer2
Lockupbuffer2:
	.incbin "baserom.dol", 0x162458, 0x80
.global Lockupbuffer3
Lockupbuffer3:
	.incbin "baserom.dol", 0x1624D8, 0x80
.global date_string
date_string:
	.incbin "baserom.dol", 0x162558, 0x20
.global time_string
time_string:
	.incbin "baserom.dol", 0x162578, 0x20
.global months
months:
	.incbin "baserom.dol", 0x162598, 0x38
.global wdbmsg
wdbmsg:
	.incbin "baserom.dol", 0x1625D0, 0x40
.global commandtable
commandtable:
	.incbin "baserom.dol", 0x162610, 0x1C
.global fscmdtab
fscmdtab:
	.incbin "baserom.dol", 0x16262C, 0x34
.global fscommand
fscommand:
	.incbin "baserom.dol", 0x162660, 0x18
.global fsstop
fsstop:
	.incbin "baserom.dol", 0x162678, 0x4
.global fscmderrstr
fscmderrstr:
	.incbin "baserom.dol", 0x16267C, 0x1C
.global fscmderrstr2
fscmderrstr2:
	.incbin "baserom.dol", 0x162698, 0x19
.global FSNotAvailable
FSNotAvailable:
	.incbin "baserom.dol", 0x1626B1, 0x3F
.global indebugger
indebugger:
	.incbin "baserom.dol", 0x1626F0, 0x30
.global intmodemsg
intmodemsg:
	.incbin "baserom.dol", 0x162720, 0x38
.global ddhjmp
ddhjmp:
	.incbin "baserom.dol", 0x162758, 0x1C
.global gdevjmp
gdevjmp:
	.incbin "baserom.dol", 0x162774, 0x1C
.global PPCHaltData
PPCHaltData:
	.incbin "baserom.dol", 0x162790, 0x18
.global cmderrstr
cmderrstr:
	.incbin "baserom.dol", 0x1627A8, 0x19
.global cmderrstr2
cmderrstr2:
	.incbin "baserom.dol", 0x1627C1, 0x20
.global pausetext
pausetext:
	.incbin "baserom.dol", 0x1627E1, 0x17
.global commserror
commserror:
	.incbin "baserom.dol", 0x1627F8, 0x10
.global exception_notification_packet
exception_notification_packet:
	.incbin "baserom.dol", 0x162808, 0x8
.global lower_9
lower_9:
	.incbin "baserom.dol", 0x162810, 0x330
.global ___data_0
___data_0:
	.incbin "baserom.dol", 0x162B40, 0x3A8
.global ___data_0_N2
___data_0_N2:
	.incbin "baserom.dol", 0x162EE8, 0x398
.global DSPInitCode
DSPInitCode:
	.incbin "baserom.dol", 0x163280, 0x80
.global ___data_0_N3
___data_0_N3:
	.incbin "baserom.dol", 0x163300, 0x230
.global ___data_0_N4
___data_0_N4:
	.incbin "baserom.dol", 0x163530, 0x1B4
.global _74_N1
_74_N1:
	.incbin "baserom.dol", 0x1636E4, 0x24
.global ___data_0_N5
___data_0_N5:
	.incbin "baserom.dol", 0x163708, 0x2DC
.global _43
_43:
	.incbin "baserom.dol", 0x1639E4, 0x44
.global InterruptPrioTable
InterruptPrioTable:
	.incbin "baserom.dol", 0x163A28, 0x80
.global ResetFunctionInfo
ResetFunctionInfo:
	.incbin "baserom.dol", 0x163AA8, 0x820
.global YearDays
YearDays:
	.incbin "baserom.dol", 0x1642C8, 0x30
.global LeapYearDays
LeapYearDays:
	.incbin "baserom.dol", 0x1642F8, 0x30
.global _7
_7:
	.incbin "baserom.dol", 0x164328, 0x28
.global ___data_0_N7
___data_0_N7:
	.incbin "baserom.dol", 0x164350, 0xC8
.global _138
_138:
	.incbin "baserom.dol", 0x164418, 0x38
.global _237
_237:
	.incbin "baserom.dol", 0x164450, 0x34
.global _263
_263:
	.incbin "baserom.dol", 0x164484, 0x2BC
.global ___data_0_N8
___data_0_N8:
	.incbin "baserom.dol", 0x164740, 0x4C
.global _293
_293:
	.incbin "baserom.dol", 0x16478C, 0x20
.global _331
_331:
	.incbin "baserom.dol", 0x1647AC, 0x40
.global _835
_835:
	.incbin "baserom.dol", 0x1647EC, 0x34
.global _936
_936:
	.incbin "baserom.dol", 0x164820, 0x1A0
.global ErrorTable
ErrorTable:
	.incbin "baserom.dol", 0x1649C0, 0x48
.global ___data_0_N10
___data_0_N10:
	.incbin "baserom.dol", 0x164A08, 0x70
.global ___data_0_N11
___data_0_N11:
	.incbin "baserom.dol", 0x164A78, 0x164
.global _92_N1
_92_N1:
	.incbin "baserom.dol", 0x164BDC, 0x164
.global ResetFunctionInfo_N1
ResetFunctionInfo_N1:
	.incbin "baserom.dol", 0x164D40, 0x10
.global __AXSrcCycles
__AXSrcCycles:
	.incbin "baserom.dol", 0x164D50, 0x14
.global __AXMixCycles
__AXMixCycles:
	.incbin "baserom.dol", 0x164D64, 0x9C
.global axDspSlave
axDspSlave:
	.incbin "baserom.dol", 0x164E00, 0x19E0
.global ___data_0_N12
___data_0_N12:
	.incbin "baserom.dol", 0x1667E0, 0x38
.global ___data_0_N13
___data_0_N13:
	.incbin "baserom.dol", 0x166818, 0x140
.global ResetFunctionInfo_N2
ResetFunctionInfo_N2:
	.incbin "baserom.dol", 0x166958, 0x10
.global SectorSizeTable
SectorSizeTable:
	.incbin "baserom.dol", 0x166968, 0x20
.global LatencyTable
LatencyTable:
	.incbin "baserom.dol", 0x166988, 0x38
.global CardData
CardData:
	.incbin "baserom.dol", 0x1669C0, 0x160
.global _128
_128:
	.incbin "baserom.dol", 0x166B20, 0x68
.global _189
_189:
	.incbin "baserom.dol", 0x166B88, 0x68
.global _252
_252:
	.incbin "baserom.dol", 0x166BF0, 0x68
.global _298
_298:
	.incbin "baserom.dol", 0x166C58, 0x44
.global _325
_325:
	.incbin "baserom.dol", 0x166C9C, 0x44
.global _389
_389:
	.incbin "baserom.dol", 0x166CE0, 0x44
.global _495
_495:
	.incbin "baserom.dol", 0x166D24, 0x1C
.global _494
_494:
	.incbin "baserom.dol", 0x166D40, 0x1A0
.global GXNtsc480IntDf
GXNtsc480IntDf:
	.incbin "baserom.dol", 0x166EE0, 0x21C
.global GXMpal480IntDf
GXMpal480IntDf:
	.incbin "baserom.dol", 0x1670FC, 0x1A4
.global GXPal528IntDf
GXPal528IntDf:
	.incbin "baserom.dol", 0x1672A0, 0x1A4
.global GXEurgb60Hz480IntDf
GXEurgb60Hz480IntDf:
	.incbin "baserom.dol", 0x167444, 0xF4
.global _133
_133:
	.incbin "baserom.dol", 0x167538, 0x20
.global _34_N1
_34_N1:
	.incbin "baserom.dol", 0x167558, 0xF4
.global _92_N2
_92_N2:
	.incbin "baserom.dol", 0x16764C, 0xF4
.global _133_N1
_133_N1:
	.incbin "baserom.dol", 0x167740, 0xF4
.global _168
_168:
	.incbin "baserom.dol", 0x167834, 0x3C
.global c2r$71
c2r$71:
	.incbin "baserom.dol", 0x167870, 0x28
.global p2f$194
p2f$194:
	.incbin "baserom.dol", 0x167898, 0x20
.global _242
_242:
	.incbin "baserom.dol", 0x1678B8, 0x5C
.global _241
_241:
	.incbin "baserom.dol", 0x167914, 0x90
.global _310
_310:
	.incbin "baserom.dol", 0x1679A4, 0x114
.global ___data_0_N15
___data_0_N15:
	.incbin "baserom.dol", 0x167AB8, 0x14
.global Type
Type:
	.incbin "baserom.dol", 0x167ACC, 0xBC
.global ___data_0_N16
___data_0_N16:
	.incbin "baserom.dol", 0x167B88, 0x98
.global ResetFunctionInfo_N3
ResetFunctionInfo_N3:
	.incbin "baserom.dol", 0x167C20, 0x10
.global ___data_0_N17
___data_0_N17:
	.incbin "baserom.dol", 0x167C30, 0x30
.global D35
D35:
	.incbin "baserom.dol", 0x167C60, 0x380
.global _10_N1
_10_N1:
	.incbin "baserom.dol", 0x167FE0, 0xC
.global _11_N1
_11_N1:
	.incbin "baserom.dol", 0x167FEC, 0xB34
