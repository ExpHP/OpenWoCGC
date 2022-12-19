.include "macros.inc"


.section .bss, "wa"  # 0x8016BB20 - 0x803D4BD4

.global drain_wawa_pos
drain_wawa_pos:
	.skip 0xC
.global drain_wawa_anim
drain_wawa_anim:
	.skip 0x1C
.global space_ukapos
space_ukapos:
	.skip 0xC
.global bug_pos
bug_pos:
	.skip 0xC
.global bug_splpos
bug_splpos:
	.skip 0xC
.global CutScene
CutScene:
	.skip 0x80
.global CutInst
CutInst:
	.skip 0x80
.global cutdebgroups
cutdebgroups:
	.skip 0x80
.global ghg_insts
ghg_insts:
	.skip 0x100
.global scene_insts
scene_insts:
	.skip 0x100
.global mtxLOCATOR_168
mtxLOCATOR_168:
	.skip 0x400
.global mtxLOCATOR_172
mtxLOCATOR_172:
	.skip 0x400
.global m_513
m_513:
	.skip 0x40
.global Vel_211
Vel_211:
	.skip 0xC
.global TweenTargPos_214
TweenTargPos_214:
	.skip 0xC
.global BackCamPos_215
BackCamPos_215:
	.skip 0xC
.global FileName_254
FileName_254:
	.skip 0x100
.global name_153
name_153:
	.skip 0x100
.global objname_155
objname_155:
	.skip 0x20
.global buf_159
buf_159:
	.skip 0x100
.global LastVel_367
LastVel_367:
	.skip 0xC
.global VulnerablePos_524
VulnerablePos_524:
	.skip 0xC
.global GliderAutoPosition
GliderAutoPosition:
	.skip 0xC
.global WeatherStartPos
WeatherStartPos:
	.skip 0xC
.global Ret_168
Ret_168:
	.skip 0xC
.global RetA_172
RetA_172:
	.skip 0xC
.global BaseMat_179
BaseMat_179:
	.skip 0x40
.global visidat
visidat:
	.skip 0xC8
.global BitCountTable
BitCountTable:
	.skip 0x100
.global global_reflect
global_reflect:
	.skip 0x4
.global lbl_8016CCC4
lbl_8016CCC4:
	.skip 0x80
.global vmtx
vmtx:
	.skip 0x40
.global pmtx
pmtx:
	.skip 0xC0
.global vpmtx
vpmtx:
	.skip 0x40
.global vpc_vport_mtx
vpc_vport_mtx:
	.skip 0x40
.global vpcmtx
vpcmtx:
	.skip 0x40
.global vpcsmtx
vpcsmtx:
	.skip 0x80
.global icsmtx
icsmtx:
	.skip 0x40
.global ivpcsmtx
ivpcsmtx:
	.skip 0x40
.global frustrumplanes
frustrumplanes:
	.skip 0x60
.global stats
stats:
	.skip 0x3C
.global mtxused
mtxused:
	.skip 0x100
.global glass_inst
glass_inst:
	.skip 0x400
.global glassGobj
glassGobj:
	.skip 0x400
.global glassMtx
glassMtx:
	.skip 0x400
.global wobble_lookup
wobble_lookup:
	.skip 0x640
.global wobble_table
wobble_table:
	.skip 0x180
.global light
light:
	.skip 0x12C
.global StoredLights
StoredLights:
	.skip 0x40740
.global otitem
otitem:
	.skip 0x7E80
.global ot
ot:
	.skip 0x404
.global faceonitem
faceonitem:
	.skip 0x1800
.global faceonmtllist
faceonmtllist:
	.skip 0xC8
.global stenitem
stenitem:
	.skip 0x2000
.global dynamic_glass_items
dynamic_glass_items:
	.skip 0x400
.global wateritem
wateritem:
	.skip 0x1800
.global scale_array0_202
scale_array0_202:
	.skip 0xC00
.global vtx_247
vtx_247:
	.skip 0x12000
.global vtx_263
vtx_263:
	.skip 0x4
.global lbl_801CF11C
lbl_801CF11C:
	.skip 0x11FFC
.global vtx_270
vtx_270:
	.skip 0x90
.global vtx2_271
vtx2_271:
	.skip 0x10
.global indexlist_272
indexlist_272:
	.skip 0x40
.global vtx_282
vtx_282:
	.skip 0x90
.global vtx2_283
vtx2_283:
	.skip 0x10
.global rndrmtx
rndrmtx:
	.skip 0x18000
.global geomitem
geomitem:
	.skip 0x12000
.global rndr_blend_shape_deformer_wts
rndr_blend_shape_deformer_wts:
	.skip 0x1000
.global rndr_blend_shape_deformer_wt_ptrs
rndr_blend_shape_deformer_wt_ptrs:
	.skip 0x2000
.global palette_198
palette_198:
	.skip 0x400
.global string_199
string_199:
	.skip 0x80
.global labtab
labtab:
	.skip 0x540
.global xdeflabtab
xdeflabtab:
	.skip 0x1500
.global vpDevice
vpDevice:
	.skip 0x40
.global vpCurrent
vpCurrent:
	.skip 0x40
.global cmtx_N1
cmtx_N1:
	.skip 0x40
.global smtx_N1
smtx_N1:
	.skip 0x40
.global winst
winst:
	.skip 0x400
.global wgsc
wgsc:
	.skip 0x400
.global dynamicWaterTextureIds
dynamicWaterTextureIds:
	.skip 0x18
.global dynamicWaterSurfaces
dynamicWaterSurfaces:
	.skip 0x18
.global dynamicWaterUVOffsets
dynamicWaterUVOffsets:
	.skip 0x4C0
.global captxt
captxt:
	.skip 0x100
.global name_171
name_171:
	.skip 0x80
.global blkinfo
blkinfo:
	.skip 0x3000
.global memfiles
memfiles:
	.skip 0x190
.global datfiles
datfiles:
	.skip 0x190
.global file_info
file_info:
	.skip 0x200
.global g_rcScreenRect
g_rcScreenRect:
	.skip 0x10
.global g_pRTArray
g_pRTArray:
	.skip 0x1C0
.global Param
Param:
	.skip 0x4
.global lbl_802147BC
lbl_802147BC:
	.skip 0x54
.global lbl_80214810
lbl_80214810:
	.skip 0x104
.global lbl_80214914
lbl_80214914:
	.skip 0x74
.global rmodeobj
rmodeobj:
	.skip 0x3C
.global fontTexObj
fontTexObj:
	.skip 0x20
.global GS_ViewPort
GS_ViewPort:
	.skip 0x18
.global GS_LightList
GS_LightList:
	.skip 0x4
.global lbl_80214A00
lbl_80214A00:
	.skip 0x140
.global GS_TexWrapMode_s
GS_TexWrapMode_s:
	.skip 0x10
.global GS_TexWrapMode_t
GS_TexWrapMode_t:
	.skip 0x10
.global TexStages
TexStages:
	.skip 0x20
.global __AMZeroBuffer
__AMZeroBuffer:
	.skip 0x100
.global __AMStackPointer
__AMStackPointer:
	.skip 0x10
.global __AMReadInfo
__AMReadInfo:
	.skip 0x3C
.global lbl_80214CCC
lbl_80214CCC:
	.skip 0x1D4
.global __block_for_run_callback
__block_for_run_callback:
	.skip 0x30
.global __block_for_prep_callback
__block_for_prep_callback:
	.skip 0x30
.global __block_for_stream_status
__block_for_stream_status:
	.skip 0x30
.global __block_for_ais_isr
__block_for_ais_isr:
	.skip 0x30
.global __block_for_flushtracks
__block_for_flushtracks:
	.skip 0x60
.global __block_for_set_state
__block_for_set_state:
	.skip 0x90
.global __MIXChannel
__MIXChannel:
	.skip 0x1600
.global aramMemArray
aramMemArray:
	.skip 0xC
.global CardStatTemplate
CardStatTemplate:
	.skip 0x6C
.global CardStatTemplateRead
CardStatTemplateRead:
	.skip 0x28
.global lbl_802166F0
lbl_802166F0:
	.skip 0x4
.global lbl_802166F4
lbl_802166F4:
	.skip 0x40
.global identmtx
identmtx:
	.skip 0x1040
.global SNstack
SNstack:
	.skip 0x20
.global SNworkspace
SNworkspace:
	.skip 0x16D4
.global str_22
str_22:
	.skip 0x80
.global __OSErrorTable
__OSErrorTable:
	.skip 0x58
.global Scb
Scb:
	.skip 0x58
.global RunQueue
RunQueue:
	.skip 0x9E8
.global Header
Header:
	.skip 0x1020
.global tmpBuffer
tmpBuffer:
	.skip 0x80
.global DummyCommandBlock
DummyCommandBlock:
	.skip 0x58
.global WaitingQueue
WaitingQueue:
	.skip 0x20
.global bb2Buf
bb2Buf:
	.skip 0x40
.global block$16
block$16:
	.skip 0x30
.global CommandList
CommandList:
	.skip 0x68
.global AlarmForTimeout
AlarmForTimeout:
	.skip 0x68
.global regs
regs:
	.skip 0x78
.global shdwRegs
shdwRegs:
	.skip 0x78
.global HorVer
HorVer:
	.skip 0x58
.global Type_N1
Type_N1:
	.skip 0x10
.global Origin
Origin:
	.skip 0x70
.global __AXStackHead
__AXStackHead:
	.skip 0x80
.global __AXStackTail
__AXStackTail:
	.skip 0x80
.global __AXBufferAuxA
__AXBufferAuxA:
	.skip 0x1680
.global __AXBufferAuxB
__AXBufferAuxB:
	.skip 0x1680
.global __AXCommandList
__AXCommandList:
	.skip 0x600
.global __AXOutBuffer
__AXOutBuffer:
	.skip 0x7B8
.global task
task:
	.skip 0x4068
.global __AXStudio
__AXStudio:
	.skip 0x40
.global __AXPB
__AXPB:
	.skip 0xFE00
.global ___bss_0_N13
___bss_0_N13:
	.skip 0x220
.global __CARDDiskNone
__CARDDiskNone:
	.skip 0x20
.global gxData
gxData:
	.skip 0x588
.global Ecb
Ecb:
	.skip 0xC0
.global Packet
Packet:
	.skip 0x80
.global Alarm
Alarm:
	.skip 0xA0
.global TypeTime
TypeTime:
	.skip 0x20
.global XferTime
XferTime:
	.skip 0x20
.global TypeCallback
TypeCallback:
	.skip 0x40
.global RDSTHandler
RDSTHandler:
	.skip 0x78
.global SecParams
SecParams:
	.skip 0x100
.global __GBA
__GBA:
	.skip 0x400
.global AITab
AITab:
	.skip 0x14
.global AITab_20_
AITab_20_:
	.skip 0x2FEC
.global LevelAIType
LevelAIType:
	.skip 0x6C
.global weather_attack_on
weather_attack_on:
	.skip 0x24
.global ai_lookpos
ai_lookpos:
	.skip 0xC
.global tbuf
tbuf:
	.skip 0x1
.global tbuf_1_
tbuf_1_:
	.skip 0x3
.global tbuf_4_
tbuf_4_:
	.skip 0x4
.global tbuf_8_
tbuf_8_:
	.skip 0x78
.global LevelFileName
LevelFileName:
	.skip 0x20
.global Chase
Chase:
	.skip 0x15FD8
.global CRemap
CRemap:
	.skip 0x1
.global CRemap_1_
CRemap_1_:
	.skip 0x1
.global CRemap_2_
CRemap_2_:
	.skip 0x1
.global CRemap_3_
CRemap_3_:
	.skip 0x1
.global CRemap_4_
CRemap_4_:
	.skip 0x4
.global CRemap_8_
CRemap_8_:
	.skip 0x2
.global CRemap_10_
CRemap_10_:
	.skip 0x1
.global CRemap_11_
CRemap_11_:
	.skip 0x2B
.global CRemap_54_
CRemap_54_:
	.skip 0x19
.global CRemap_79_
CRemap_79_:
	.skip 0x4
.global CRemap_83_
CRemap_83_:
	.skip 0x2
.global CRemap_85_
CRemap_85_:
	.skip 0x1
.global CRemap_86_
CRemap_86_:
	.skip 0x1
.global CRemap_87_
CRemap_87_:
	.skip 0x1
.global CRemap_88_
CRemap_88_:
	.skip 0x8
.global CRemap_96_
CRemap_96_:
	.skip 0x13
.global CRemap_115_
CRemap_115_:
	.skip 0xE
.global CRemap_129_
CRemap_129_:
	.skip 0xA
.global CRemap_139_
CRemap_139_:
	.skip 0xC
.global CRemap_151_
CRemap_151_:
	.skip 0x6
.global CRemap_157_
CRemap_157_:
	.skip 0x1
.global CRemap_158_
CRemap_158_:
	.skip 0x10
.global CRemap_174_
CRemap_174_:
	.skip 0x3
.global CRemap_177_
CRemap_177_:
	.skip 0x6
.global CRemap_183_
CRemap_183_:
	.skip 0x9
.global Rail
Rail:
	.skip 0xC
.global Rail_12_
Rail_12_:
	.skip 0xBC
.global Rail_200_
Rail_200_:
	.skip 0x26
.global Rail_238_
Rail_238_:
	.skip 0x2
.global Rail_240_
Rail_240_:
	.skip 0x26
.global Rail_278_
Rail_278_:
	.skip 0x2
.global Rail_280_
Rail_280_:
	.skip 0x26
.global Rail_318_
Rail_318_:
	.skip 0x2
.global gempath_RPos
gempath_RPos:
	.skip 0x24
.global Character
Character:
	.skip 0x6C
.global Character_108_
Character_108_:
	.skip 0xC78
.global Character_3300_
Character_3300_:
	.skip 0x6720
.global CModel
CModel:
	.skip 0x177EC
.global NuTrigTable
NuTrigTable:
	.skip 0x40000
.global GameCam
GameCam:
	.skip 0x30
.global GameCam_48_
GameCam_48_:
	.skip 0x74
.global GameCam_164_
GameCam_164_:
	.skip 0x54
.global GameCam_248_
GameCam_248_:
	.skip 0x2
.global GameCam_250_
GameCam_250_:
	.skip 0x12
.global GameCam_268_
GameCam_268_:
	.skip 0x10
.global debkeydata
debkeydata:
	.skip 0x400
.global debkeydata_1024_
debkeydata_1024_:
	.skip 0x40
.global debkeydata_1088_
debkeydata_1088_:
	.skip 0x567C0
.global Game
Game:
	.skip 0x9
.global Game_9_
Game_9_:
	.skip 0x2
.global Game_11_
Game_11_:
	.skip 0x1
.global Game_12_
Game_12_:
	.skip 0x3
.global Game_15_
Game_15_:
	.skip 0x1
.global Game_16_
Game_16_:
	.skip 0x14
.global Game_36_
Game_36_:
	.skip 0x8
.global Game_44_
Game_44_:
	.skip 0x60
.global lbl_80302470
lbl_80302470:
	.skip 0x370
.global Game_1020_
Game_1020_:
	.skip 0x4
.global Game_1024_
Game_1024_:
	.skip 0x5
.global Game_1029_
Game_1029_:
	.skip 0x1
.global Game_1030_
Game_1030_:
	.skip 0x2
.global Game_1032_
Game_1032_:
	.skip 0xC
.global BugArea
BugArea:
	.skip 0x40
.global BugAnim_N1
BugAnim_N1:
	.skip 0x1C
.global cRPos
cRPos:
	.skip 0x6C
.global temp_cRPos
temp_cRPos:
	.skip 0x6C
.global TempRPos
TempRPos:
	.skip 0x24
.global cutscenecammtx
cutscenecammtx:
	.skip 0x30
.global cutscenecammtx_48_
cutscenecammtx_48_:
	.skip 0x10
.global TempAnim
TempAnim:
	.skip 0x10
.global TempAnim_16_
TempAnim_16_:
	.skip 0xC
.global Cursor
Cursor:
	.skip 0x76
.global Cursor_118_
Cursor_118_:
	.skip 0x3
.global Cursor_121_
Cursor_121_:
	.skip 0x7
.global GameTimer
GameTimer:
	.skip 0xC
.global GameTimer_12_
GameTimer_12_:
	.skip 0x8
.global JeepvObj
JeepvObj:
	.skip 0xC
.global JeepvPos
JeepvPos:
	.skip 0xC
.global GlobalTimer
GlobalTimer:
	.skip 0x14
.global chase_midpos
chase_midpos:
	.skip 0x24
.global ShadNorm
ShadNorm:
	.skip 0x4
.global ShadNorm_4_
ShadNorm_4_:
	.skip 0x8
.global tmtx
tmtx:
	.skip 0x4000
.global groff
groff:
	.skip 0xF0
.global grphase
grphase:
	.skip 0xF0
.global grphaserate
grphaserate:
	.skip 0x8
.global grphaserate_8_
grphaserate_8_:
	.skip 0xE8
.global LockCrate
LockCrate:
	.skip 0x28
.global MarkerCrate
MarkerCrate:
	.skip 0x28
.global HighlightCrate
HighlightCrate:
	.skip 0x28
.global FlashCrate
FlashCrate:
	.skip 0x28
.global CrateGroup
CrateGroup:
	.skip 0x1800
.global Crate
Crate:
	.skip 0x9000
.global CrateTypeData
CrateTypeData:
	.skip 0x100
.global BoxExpList
BoxExpList:
	.skip 0x76C0
.global cpGOTO
cpGOTO:
	.skip 0xC
.global vNEWMASK
vNEWMASK:
	.skip 0xC
.global vTEMP
vTEMP:
	.skip 0xC
.global CLetter
CLetter:
	.skip 0x76
.global CLetter_118_
CLetter_118_:
	.skip 0x1
.global CLetter_119_
CLetter_119_:
	.skip 0x49
.global cpPOS
cpPOS:
	.skip 0xC
.global Mask
Mask:
	.skip 0x16E
.global Mask_366_
Mask_366_:
	.skip 0x22
.global demopad
demopad:
	.skip 0xF0
.global vtog_oldpos
vtog_oldpos:
	.skip 0xC
.global vtog_newpos
vtog_newpos:
	.skip 0xC
.global tumble_newpos
tumble_newpos:
	.skip 0xC
.global tumble_oldpos
tumble_oldpos:
	.skip 0xC
.global plr_target_firepos
plr_target_firepos:
	.skip 0xC
.global plr_target_pos
plr_target_pos:
	.skip 0xC
.global plr_target_pos_12_
plr_target_pos_12_:
	.skip 0xC
.global plr_target_dir
plr_target_dir:
	.skip 0xC
.global plr_target_sightpos
plr_target_sightpos:
	.skip 0x4C
.global mTEMP
mTEMP:
	.skip 0x30
.global mTEMP_48_
mTEMP_48_:
	.skip 0x10
.global CutAudio
CutAudio:
	.skip 0x80
.global chardatfilename
chardatfilename:
	.skip 0x80
.global CutAnim
CutAnim:
	.skip 0x1B
.global CutAnim_27_
CutAnim_27_:
	.skip 0x1
.global CutVortexAnim
CutVortexAnim:
	.skip 0x1C
.global CutTimer
CutTimer:
	.skip 0x14
.global texanimbuff
texanimbuff:
	.skip 0x8000
.global global_camera
global_camera:
	.skip 0x30
.global global_camera_48_
global_camera_48_:
	.skip 0x24
.global global_camera_84_
global_camera_84_:
	.skip 0xC
.global rbclass
rbclass:
	.skip 0x40
.global rbclass_64_
rbclass_64_:
	.skip 0x4
.global rbclass_68_
rbclass_68_:
	.skip 0x138
.global firedrop
firedrop:
	.skip 0x140
.global deb3
deb3:
	.skip 0x380C
.global Font3DRemap
Font3DRemap:
	.skip 0x200
.global proberot
proberot:
	.skip 0x4
.global proberot_4_
proberot_4_:
	.skip 0x8
.global probepos
probepos:
	.skip 0xC
.global in_finish_pos
in_finish_pos:
	.skip 0xC
.global probedpos
probedpos:
	.skip 0xC
.global probespk
probespk:
	.skip 0xC
.global probepos2
probepos2:
	.skip 0xC
.global TempLights
TempLights:
	.skip 0xB0
.global TempAnim2
TempAnim2:
	.skip 0x1C
.global TempLights2
TempLights2:
	.skip 0xB0
.global Award
Award:
	.skip 0x90
.global hublevelopen
hublevelopen:
	.skip 0x24
.global hubwarp_oldpos
hubwarp_oldpos:
	.skip 0xC
.global hubwarp_newpos
hubwarp_newpos:
	.skip 0xC
.global hub_vr_pos
hub_vr_pos:
	.skip 0xC
.global VTog
VTog:
	.skip 0x294
.global VTog_660_
VTog_660_:
	.skip 0x84
.global Kaboom
Kaboom:
	.skip 0xA20
.global Wumpa
Wumpa:
	.skip 0x4C00
.global Wumpa_19456_
Wumpa_19456_:
	.skip 0x1300
.global start_pos
start_pos:
	.skip 0xC
.global finish_newpos
finish_newpos:
	.skip 0xC
.global finish_oldpos
finish_oldpos:
	.skip 0xC
.global TimeTrialTimer
TimeTrialTimer:
	.skip 0x4
.global TimeTrialTimer_4_
TimeTrialTimer_4_:
	.skip 0x10
.global WInfo
WInfo:
	.skip 0x280
.global NewWumpa
NewWumpa:
	.skip 0x480
.global WScr
WScr:
	.skip 0x400
.global MaskFeathers
MaskFeathers:
	.skip 0x240
.global edit_txt
edit_txt:
	.skip 0x40
.global MenuTimer
MenuTimer:
	.skip 0x14
.global PauseTimer
PauseTimer:
	.skip 0x14
.global TTScrPos
TTScrPos:
	.skip 0xC
.global bonus_obj
bonus_obj:
	.skip 0x188
.global bonus_obj_392_
bonus_obj_392_:
	.skip 0x188
.global death_obj
death_obj:
	.skip 0x188
.global gempath_obj
gempath_obj:
	.skip 0x68
.global gempath_obj_104_
gempath_obj_104_:
	.skip 0x120
.global akuaku_advice_played
akuaku_advice_played:
	.skip 0x10
.global lev_ambpos
lev_ambpos:
	.skip 0x5C
.global AshesMechInPos
AshesMechInPos:
	.skip 0xC
.global AshesMechOutPos
AshesMechOutPos:
	.skip 0xC
.global pObj
pObj:
	.skip 0x100
.global PlrTub
PlrTub:
	.skip 0x7
.global PlrTub_7_
PlrTub_7_:
	.skip 0xD
.global PlrTub_20_
PlrTub_20_:
	.skip 0xB
.global PlrTub_31_
PlrTub_31_:
	.skip 0x1
.global SaveSlot
SaveSlot:
	.skip 0x414
.global SaveSlot_1044_
SaveSlot_1044_:
	.skip 0x414
.global SaveSlot_2088_
SaveSlot_2088_:
	.skip 0x414
.global SaveSlot_3132_
SaveSlot_3132_:
	.skip 0x414
.global plr_conveyor_mom
plr_conveyor_mom:
	.skip 0xC
.global Projectile
Projectile:
	.skip 0x1B00
.global EShadNorm
EShadNorm:
	.skip 0xC
.global ShadRoofNorm
ShadRoofNorm:
	.skip 0xC
.global BaseWheelPosition
BaseWheelPosition:
	.skip 0x48
.global PlayerJeep
PlayerJeep:
	.skip 0x7B4
.global PlayerJeep_1972_
PlayerJeep_1972_:
	.skip 0x60
.global PlayerJeep_2068_
PlayerJeep_2068_:
	.skip 0x30
.global PlayerJeep_2116_
PlayerJeep_2116_:
	.skip 0x20
.global PlayerJeep_2148_
PlayerJeep_2148_:
	.skip 0x124
.global IdealCamPos
IdealCamPos:
	.skip 0xC
.global IdealObjPos
IdealObjPos:
	.skip 0xC
.global JeepFollowSpline
JeepFollowSpline:
	.skip 0x30
.global JeepCamPosTween
JeepCamPosTween:
	.skip 0xC
.global JeepCamPos2
JeepCamPos2:
	.skip 0xC
.global FireBossPosition
FireBossPosition:
	.skip 0xC
.global EnemyJeep
EnemyJeep:
	.skip 0x1D00
.global BuggyDataMax
BuggyDataMax:
	.skip 0x10
.global BuggyData
BuggyData:
	.skip 0x10
.global JeepTrail
JeepTrail:
	.skip 0x5000
.global TrailAir
TrailAir:
	.skip 0x50
.global TrailPntr
TrailPntr:
	.skip 0x50
.global NewIntoTrail
NewIntoTrail:
	.skip 0x50
.global NewCurrentIntensity
NewCurrentIntensity:
	.skip 0x50
.global TrailActive
TrailActive:
	.skip 0x50
.global FireBoss
FireBoss:
	.skip 0x408
.global FireBoss_1032_
FireBoss_1032_:
	.skip 0x10
.global FireBoss_1048_
FireBoss_1048_:
	.skip 0x1D8
.global FireBoss_1520_
FireBoss_1520_:
	.skip 0x98
.global WallOfFirePosition
WallOfFirePosition:
	.skip 0xC
.global RelTemp
RelTemp:
	.skip 0xC
.global JeepBalloon
JeepBalloon:
	.skip 0x120
.global GenericTrail
GenericTrail:
	.skip 0x78
.global Lights
Lights:
	.skip 0x4
.global Lights_4_
Lights_4_:
	.skip 0x59FC
.global PadRecordPath
PadRecordPath:
	.skip 0x370
.global DebMat
DebMat:
	.skip 0x10
.global DebMat_16_
DebMat_16_:
	.skip 0x8
.global DebMat_24_
DebMat_24_:
	.skip 0x8
.global OppTubCreature
OppTubCreature:
	.skip 0xCE4
.global PlrEvent
PlrEvent:
	.skip 0x4C0
.global jeeptyrepos
jeeptyrepos:
	.skip 0xC
.global gyropos
gyropos:
	.skip 0xC
.global carpet_pos
carpet_pos:
	.skip 0xC
.global carpet_oldpos
carpet_oldpos:
	.skip 0xC
.global carpet_RPos
carpet_RPos:
	.skip 0x24
.global carpet_anim
carpet_anim:
	.skip 0x1C
.global carpet_lights
carpet_lights:
	.skip 0xB0
.global carpet_splpos
carpet_splpos:
	.skip 0xC
.global carpet_mom
carpet_mom:
	.skip 0xC
.global OppTub
OppTub:
	.skip 0x14
.global OppTub_20_
OppTub_20_:
	.skip 0xC
.global TempTubPos
TempTubPos:
	.skip 0xC
.global ring_yrot
ring_yrot:
	.skip 0x60
.global ring_xrot
ring_xrot:
	.skip 0x60
.global ring_pos
ring_pos:
	.skip 0xC
.global PDeb
PDeb:
	.skip 0x800
.global SfxInfo
SfxInfo:
	.skip 0x3870
.global sfxpath
sfxpath:
	.skip 0x40
.global PlayerGlider
PlayerGlider:
	.skip 0x30
.global PlayerGlider_48_
PlayerGlider_48_:
	.skip 0x8
.global PlayerGlider_56_
PlayerGlider_56_:
	.skip 0x10
.global PlayerGlider_72_
PlayerGlider_72_:
	.skip 0x38
.global PlayerGlider_128_
PlayerGlider_128_:
	.skip 0x4
.global PlayerGlider_132_
PlayerGlider_132_:
	.skip 0x30
.global PlayerGlider_180_
PlayerGlider_180_:
	.skip 0x4
.global PlayerGlider_184_
PlayerGlider_184_:
	.skip 0x58
.global PlayerGlider_272_
PlayerGlider_272_:
	.skip 0x8
.global PlayerGlider_280_
PlayerGlider_280_:
	.skip 0xC
.global PlayerGlider_292_
PlayerGlider_292_:
	.skip 0xC
.global PlayerGlider_304_
PlayerGlider_304_:
	.skip 0x2F4
.global PlayerGlider_1060_
PlayerGlider_1060_:
	.skip 0x18
.global PlayerGlider_1084_
PlayerGlider_1084_:
	.skip 0x4
.global GliderTargetPos
GliderTargetPos:
	.skip 0xC
.global WeatherBossFirePoint
WeatherBossFirePoint:
	.skip 0xC
.global WeatherBossTargetPos
WeatherBossTargetPos:
	.skip 0xC
.global WeatherBossTargetVel
WeatherBossTargetVel:
	.skip 0xC
.global WeatherBossCamMtx
WeatherBossCamMtx:
	.skip 0x30
.global WeatherBossCamMtx_48_
WeatherBossCamMtx_48_:
	.skip 0x10
.global WBIntroGliderPos
WBIntroGliderPos:
	.skip 0x8
.global WBIntroGliderPos_8_
WBIntroGliderPos_8_:
	.skip 0x4
.global EnemyZoffa
EnemyZoffa:
	.skip 0xE0
.global EnemyZoffa_224_
EnemyZoffa_224_:
	.skip 0x14
.global EnemyZoffa_244_
EnemyZoffa_244_:
	.skip 0x15CC
.global HovaBlimp
HovaBlimp:
	.skip 0x738
.global TornadoList
TornadoList:
	.skip 0x660
.global jontorn
jontorn:
	.skip 0x4
.global jontorn_4_
jontorn_4_:
	.skip 0x4C
.global SatelliteList
SatelliteList:
	.skip 0xA44
.global SpaceStationList
SpaceStationList:
	.skip 0x270
.global FreeGliderBulletList
FreeGliderBulletList:
	.skip 0x100
.global GliderBullet
GliderBullet:
	.skip 0x1400
.global FreeEnemyGliderBulletList
FreeEnemyGliderBulletList:
	.skip 0x190
.global EnemyGliderBullet
EnemyGliderBullet:
	.skip 0x1F40
.global UsedEnemyGliderBulletList
UsedEnemyGliderBulletList:
	.skip 0x190
.global UsedGliderBulletList
UsedGliderBulletList:
	.skip 0x100
.global GliderBulletReflectPos
GliderBulletReflectPos:
	.skip 0xC
.global GliderBombs
GliderBombs:
	.skip 0x2A8
.global PlayerPlane
PlayerPlane:
	.skip 0x104
.global WeatherBossCamSpline
WeatherBossCamSpline:
	.skip 0x30
.global GliderIntroInterest
GliderIntroInterest:
	.skip 0xC
.global GliderIntroCamPos
GliderIntroCamPos:
	.skip 0xC
.global ExtroStillCamPos
ExtroStillCamPos:
	.skip 0xC
.global ExtroStillVelocity
ExtroStillVelocity:
	.skip 0xC
.global ExtroStillInterest
ExtroStillInterest:
	.skip 0x4C
.global AsteroidList
AsteroidList:
	.skip 0x1DB0
.global ActiveAsteroidList
ActiveAsteroidList:
	.skip 0x190
.global EnemyGliderBombs
EnemyGliderBombs:
	.skip 0x7F8
.global GliderBombCollisionPos
GliderBombCollisionPos:
	.skip 0xC
.global GunBoatList
GunBoatList:
	.skip 0x4D0
.global BigGunList
BigGunList:
	.skip 0xFF0
.global BattleShipList
BattleShipList:
	.skip 0x1FF8
.global WeatherBoss
WeatherBoss:
	.skip 0x5D0
.global WeatherBoss_1488_
WeatherBoss_1488_:
	.skip 0x34
.global WeatherBoss_1540_
WeatherBoss_1540_:
	.skip 0x58
.global BazookaTokenPos
BazookaTokenPos:
	.skip 0xC
.global BazookaTokenCurrentPos
BazookaTokenCurrentPos:
	.skip 0xC
.global IconMainDraw
IconMainDraw:
	.skip 0xE0
.global ElectricalPosition
ElectricalPosition:
	.skip 0xC
.global HailList
HailList:
	.skip 0x438
.global BoltMtxC
BoltMtxC:
	.skip 0x40
.global BoltList
BoltList:
	.skip 0x12F8
.global BoltList_4856_
BoltList_4856_:
	.skip 0x388
.global BoltMtxA
BoltMtxA:
	.skip 0x30
.global BoltMtxA_48_
BoltMtxA_48_:
	.skip 0x10
.global BoltMtxB
BoltMtxB:
	.skip 0x30
.global BoltMtxB_48_
BoltMtxB_48_:
	.skip 0x10
.global WeatherBossIntroSpline
WeatherBossIntroSpline:
	.skip 0x30
.global EarthBoss
EarthBoss:
	.skip 0x10
.global EarthBoss_16_
EarthBoss_16_:
	.skip 0x1C
.global EarthBoss_44_
EarthBoss_44_:
	.skip 0x1E0
.global EarthBoss_524_
EarthBoss_524_:
	.skip 0x16C
.global EarthBoss_888_
EarthBoss_888_:
	.skip 0xC
.global PlayerAtlas
PlayerAtlas:
	.skip 0x10
.global PlayerAtlas_16_
PlayerAtlas_16_:
	.skip 0x14
.global PlayerAtlas_36_
PlayerAtlas_36_:
	.skip 0x18
.global PlayerAtlas_60_
PlayerAtlas_60_:
	.skip 0x200
.global PlayerAtlas_572_
PlayerAtlas_572_:
	.skip 0xFC
.global PlayerAtlas_824_
PlayerAtlas_824_:
	.skip 0x40
.global PlayerAtlas_888_
PlayerAtlas_888_:
	.skip 0xC
.global ebpos
ebpos:
	.skip 0x4
.global ebpos_4_
ebpos_4_:
	.skip 0x20
.global ebtime
ebtime:
	.skip 0xC
.global RumbleCamPos
RumbleCamPos:
	.skip 0xC
.global JeepRock
JeepRock:
	.skip 0x18
.global JeepRock_24_
JeepRock_24_:
	.skip 0x16E0
.global EarthBossAimLocation
EarthBossAimLocation:
	.skip 0xC
.global EarthBossAimVelocity
EarthBossAimVelocity:
	.skip 0xC
.global RockPanelDest
RockPanelDest:
	.skip 0x30
.global RockPanelObj
RockPanelObj:
	.skip 0x10
.global RockPanelData
RockPanelData:
	.skip 0x30
.global trail
trail:
	.skip 0x1C
.global trail_28_
trail_28_:
	.skip 0xFE4
.global VehicleMask
VehicleMask:
	.skip 0x318
.global freechunkcontrols
freechunkcontrols:
	.skip 0x800
.global debris_chunk_control_stack
debris_chunk_control_stack:
	.skip 0x80
.global freedebchunks
freedebchunks:
	.skip 0x400
.global freedebkeys
freedebkeys:
	.skip 0x200
.global debris_emitter_stack
debris_emitter_stack:
	.skip 0x80
.global debris_chunk_controls
debris_chunk_controls:
	.skip 0x5800
.global DmaDebTypes
DmaDebTypes:
	.skip 0x200
.global ParticleChunkRenderStack
ParticleChunkRenderStack:
	.skip 0x4
.global ParticleChunkRenderStack_4_
ParticleChunkRenderStack_4_:
	.skip 0x57FC
.global object_switches
object_switches:
	.skip 0x80
.global AnimParams
AnimParams:
	.skip 0x4
.global AnimParams_4_
AnimParams_4_:
	.skip 0x4
.global AnimParams_8_
AnimParams_8_:
	.skip 0x8
.global AnimParams_16_
AnimParams_16_:
	.skip 0x4
.global AnimParams_20_
AnimParams_20_:
	.skip 0xA8
.global AnimParams_188_
AnimParams_188_:
	.skip 0xC0
.global AnimParams_380_
AnimParams_380_:
	.skip 0x144
.global AnimParams_704_
AnimParams_704_:
	.skip 0x4
.global AnimParams_708_
AnimParams_708_:
	.skip 0x4
.global AnimParams_712_
AnimParams_712_:
	.skip 0x4
.global AnimParams_716_
AnimParams_716_:
	.skip 0xB134
.global edanim_cam_pos
edanim_cam_pos:
	.skip 0xC
.global GrassClumps
GrassClumps:
	.skip 0x4
.global GrassClumps_4_
GrassClumps_4_:
	.skip 0x4
.global GrassClumps_8_
GrassClumps_8_:
	.skip 0x8F8
.global edgra_cam_pos
edgra_cam_pos:
	.skip 0xC
.global ObjectInstance
ObjectInstance:
	.skip 0x30
.global ObjectInstance_48_
ObjectInstance_48_:
	.skip 0x10
.global ObjectInstance_64_
ObjectInstance_64_:
	.skip 0x13C0
.global ObjectPath
ObjectPath:
	.skip 0x14
.global ObjectPath_20_
ObjectPath_20_:
	.skip 0x8
.global ObjectPath_28_
ObjectPath_28_:
	.skip 0x4
.global ObjectPath_32_
ObjectPath_32_:
	.skip 0x4
.global ObjectPath_36_
ObjectPath_36_:
	.skip 0x8
.global ObjectPath_44_
ObjectPath_44_:
	.skip 0xE0
.global ObjectPath_268_
ObjectPath_268_:
	.skip 0x24
.global ObjectPath_304_
ObjectPath_304_:
	.skip 0x4
.global ObjectPath_308_
ObjectPath_308_:
	.skip 0x4
.global ObjectPath_312_
ObjectPath_312_:
	.skip 0x4
.global ObjectPath_316_
ObjectPath_316_:
	.skip 0xA0
.global ObjectPath_476_
ObjectPath_476_:
	.skip 0x20
.global ObjectPath_508_
ObjectPath_508_:
	.skip 0x20
.global ObjectPath_540_
ObjectPath_540_:
	.skip 0x84
.global ObjectPath_672_
ObjectPath_672_:
	.skip 0xC0
.global ObjectPath_864_
ObjectPath_864_:
	.skip 0x88
.global ObjectPath_1000_
ObjectPath_1000_:
	.skip 0xF718
.global ObjectAnim
ObjectAnim:
	.skip 0x100
.global edobj_cam_pos
edobj_cam_pos:
	.skip 0xC
.global ObjectInstAnim
ObjectInstAnim:
	.skip 0x1840
.global edpp_ptls
edpp_ptls:
	.skip 0x20
.global edpp_ptls_32_
edpp_ptls_32_:
	.skip 0x4BE0
.global edpp_cam_pos
edpp_cam_pos:
	.skip 0xC
.global Bridges
Bridges:
	.skip 0xB28
.global Bridges_2856_
Bridges_2856_:
	.skip 0x4F38
.global ropemat
ropemat:
	.skip 0x18
.global ropemat_24_
ropemat_24_:
	.skip 0x28
.global NuWindGroup
NuWindGroup:
	.skip 0xA00
.global NuWindMtxs
NuWindMtxs:
	.skip 0x8000
.global EShadRoofNorm
EShadRoofNorm:
	.skip 0xC
.global WallSplList
WallSplList:
	.skip 0x600
.global SphereData
SphereData:
	.skip 0x100
.global ScaleTerrainT1
ScaleTerrainT1:
	.skip 0xC800
.global TerrPolyInfo
TerrPolyInfo:
	.skip 0x64
.global ScaleTerrainT2
ScaleTerrainT2:
	.skip 0xC800
.global tertempmat
tertempmat:
	.skip 0x40
.global tertempvec4
tertempvec4:
	.skip 0x10
.global PlatImpactNorm
PlatImpactNorm:
	.skip 0xC
.global PlatImpactTer
PlatImpactTer:
	.skip 0x64
.global TempScanStack
TempScanStack:
	.skip 0x2000
.global depthTexture
depthTexture:
	.skip 0x18
.global CV_WOBBLETABLE_START
CV_WOBBLETABLE_START:
	.skip 0x200
.global NuLgtArcLaserData
NuLgtArcLaserData:
	.skip 0xC
.global NuLgtArcLaserData_12_
NuLgtArcLaserData_12_:
	.skip 0x4
.global NuLgtArcLaserData_16_
NuLgtArcLaserData_16_:
	.skip 0x4
.global NuLgtArcLaserData_20_
NuLgtArcLaserData_20_:
	.skip 0x10
.global NuLgtArcLaserData_36_
NuLgtArcLaserData_36_:
	.skip 0x3DC
.global NuRndrWaterRipDat
NuRndrWaterRipDat:
	.skip 0x480
.global mtx_arrayHGobj
mtx_arrayHGobj:
	.skip 0x4000
.global mtx_array2HGobj
mtx_array2HGobj:
	.skip 0x4000
.global scale_arrayHGobjEval2
scale_arrayHGobjEval2:
	.skip 0xC00
.global VtxBuffer
VtxBuffer:
	.skip 0x4C00
.global NuRndrFootData
NuRndrFootData:
	.skip 0xD00
.global NuRndrShadPolDat
NuRndrShadPolDat:
	.skip 0xC00
.global tinfo
tinfo:
	.skip 0xA01C
.global ntalsysbuff
ntalsysbuff:
	.skip 0x300
.global nta_labels
nta_labels:
	.skip 0x100
.global DropletTex
DropletTex:
	.skip 0x1C
.global waterUVOffset
waterUVOffset:
	.skip 0x200
.global NuSndLoopInfo
NuSndLoopInfo:
	.skip 0x80
.global tempvec
tempvec:
	.skip 0xC
.global tempvec4
tempvec4:
	.skip 0x10
.global CausticTextures
CausticTextures:
	.skip 0x4080
.global debmtx
debmtx:
	.skip 0x40
.global MAHFile
MAHFile:
	.skip 0x34
.global MAHFile_52_
MAHFile_52_:
	.skip 0x8
.global namesave
namesave:
	.skip 0x80
.global temp
temp:
	.skip 0xC0
.global GS_FrameBufferCopyPause
GS_FrameBufferCopyPause:
	.skip 0x34
.global GS_CommandBuffer
GS_CommandBuffer:
	.skip 0x80
.global GS_MatProjection
GS_MatProjection:
	.skip 0x40
.global GS_MatView
GS_MatView:
	.skip 0x40
.global GS_ViewIdentity
GS_ViewIdentity:
	.skip 0x40
.global GS_MatWorld
GS_MatWorld:
	.skip 0x40
.global GS_CurrentMaterial
GS_CurrentMaterial:
	.skip 0x44
.global GS_CurMat
GS_CurMat:
	.skip 0x40
.global GS_LightMat
GS_LightMat:
	.skip 0x40
.global GS_LightViewMat
GS_LightViewMat:
	.skip 0x40
.global XFLightPos
XFLightPos:
	.skip 0xC
.global GSLights
GSLights:
	.skip 0x200
.global SS_Voices
SS_Voices:
	.skip 0x60C
.global xfer_buffer
xfer_buffer:
	.skip 0x4000
.global SS_DTKTrack
SS_DTKTrack:
	.skip 0x50
.global timers
timers:
	.skip 0x190
.global DBTimers
DBTimers:
	.skip 0x320
.global BufferTypes
BufferTypes:
	.skip 0xCC
.global CV_MTL_COLOR
CV_MTL_COLOR:
	.skip 0x10
.global CV_LIGHT3_COLOR
CV_LIGHT3_COLOR:
	.skip 0x10
.global CV_AMBIENT_COLOR
CV_AMBIENT_COLOR:
	.skip 0x10
.global CV_LIGHT1_POS
CV_LIGHT1_POS:
	.skip 0x10
.global CV_LIGHT2_POS
CV_LIGHT2_POS:
	.skip 0x10
.global CV_LIGHT3_POS
CV_LIGHT3_POS:
	.skip 0x10
.global CV_LIGHT1_COLOR
CV_LIGHT1_COLOR:
	.skip 0x10
.global CV_LIGHT2_COLOR
CV_LIGHT2_COLOR:
	.skip 0x10
.global matView
matView:
	.skip 0x30
.global matView_48_
matView_48_:
	.skip 0x10
.global invWorld
invWorld:
	.skip 0x40
.global matWorldViewProj
matWorldViewProj:
	.skip 0x40
.global matProj
matProj:
	.skip 0x40
.global matWorld
matWorld:
	.skip 0x40
.global matWorldView
matWorldView:
	.skip 0x40
.global invWorldView
invWorldView:
	.skip 0x40
.global matViewProj
matViewProj:
	.skip 0x40
.global CV_WORLDVIEWPROJ
CV_WORLDVIEWPROJ:
	.skip 0x40
.global CV_WORLDVIEW
CV_WORLDVIEW:
	.skip 0x40
.global CV_WORLDVIEWIT
CV_WORLDVIEWIT:
	.skip 0x30
.global CV_CONSTANTS
CV_CONSTANTS:
	.skip 0x20
.global CV_SHADER_PARAMS
CV_SHADER_PARAMS:
	.skip 0x10
.global CV_SCREEN_PARAMS
CV_SCREEN_PARAMS:
	.skip 0x10
.global CV_EYE_POSITION
CV_EYE_POSITION:
	.skip 0x10
.global CV_LIGHT_POSITION
CV_LIGHT_POSITION:
	.skip 0x10
.global CV_LIGHT_DIRECTION
CV_LIGHT_DIRECTION:
	.skip 0x10
.global CV_SCREENSPACE_OFFSET
CV_SCREENSPACE_OFFSET:
	.skip 0x10
.global CV_WORLD_0
CV_WORLD_0:
	.skip 0xA8
.global ver_string
ver_string:
	.skip 0x40
.global xpad
xpad:
	.skip 0xF0
.global pad
pad:
	.skip 0x30
.global XDEVICE_TYPE_GAMEPAD_TABLE
XDEVICE_TYPE_GAMEPAD_TABLE:
	.skip 0xC
.global XDEVICE_TYPE_MEMORY_UNIT_TABLE
XDEVICE_TYPE_MEMORY_UNIT_TABLE:
	.skip 0xC
.global __bss_end
__bss_end:
	.skip 0x4
