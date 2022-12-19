.include "macros.inc"


.section .sbss, "wa"  # 0x8016BB20 - 0x803D4BD4

.global drain_wawa_ok
drain_wawa_ok:
	.skip 0x4
.global drain_wawa_xrot
drain_wawa_xrot:
	.skip 0x2
.global drain_wawa_yrot
drain_wawa_yrot:
	.skip 0x2
.global drain_ang
drain_ang:
	.skip 0x2
.global lbl_803D3BEA
lbl_803D3BEA:
	.skip 0x2
.global lbl_803D3BEC
lbl_803D3BEC:
	.skip 0x4
.global drain_wawa_model
drain_wawa_model:
	.skip 0x4
.global crunchtime_attack_phase
crunchtime_attack_phase:
	.skip 0x4
.global earth_attack_wait
earth_attack_wait:
	.skip 0x4
.global water_attack_wait
water_attack_wait:
	.skip 0x4
.global water_last_chute
water_last_chute:
	.skip 0x4
.global fire_attack_wait
fire_attack_wait:
	.skip 0x4
.global weather_attack_wait
weather_attack_wait:
	.skip 0x4
.global spaceuka_angle
spaceuka_angle:
	.skip 0x2
.global lbl_803D3C0E
lbl_803D3C0E:
	.skip 0x2
.global lbl_803D3C10
lbl_803D3C10:
	.skip 0x4
.global SpaceCrunch_Punch
SpaceCrunch_Punch:
	.skip 0x4
.global SpaceCortex_Back
SpaceCortex_Back:
	.skip 0x4
.global mechlight_fade
mechlight_fade:
	.skip 0x4
.global buglight_fade
buglight_fade:
	.skip 0x4
.global buglight_ang
buglight_ang:
	.skip 0x2
.global lbl_803D3C26
lbl_803D3C26:
	.skip 0x2
.global lbl_803D3C28
lbl_803D3C28:
	.skip 0x2
.global lbl_803D3C2A
lbl_803D3C2A:
	.skip 0x2
.global bug_scale
bug_scale:
	.skip 0x4
.global bug_fade
bug_fade:
	.skip 0x4
.global bug_xrot
bug_xrot:
	.skip 0x2
.global bug_yrot
bug_yrot:
	.skip 0x2
.global bug_splratio
bug_splratio:
	.skip 0x4
.global ctmtl
ctmtl:
	.skip 0x4
.global ghg_inst_count
ghg_inst_count:
	.skip 0x4
.global scene_inst_count
scene_inst_count:
	.skip 0x4
.global JCamAngY_208
JCamAngY_208:
	.skip 0x2
.global JCamAngX_209
JCamAngX_209:
	.skip 0x2
.global JCamMag_210
JCamMag_210:
	.skip 0x4
.global AngVelY_212
AngVelY_212:
	.skip 0x4
.global VelSet_213
VelSet_213:
	.skip 0x4
.global BackJeepCamX_216
BackJeepCamX_216:
	.skip 0x4
.global BackJeepCamY_217
BackJeepCamY_217:
	.skip 0x4
.global FinalPosition_273
FinalPosition_273:
	.skip 0x4
.global LastBossAct_310
LastBossAct_310:
	.skip 0x4
.global DontDropRocks_312
DontDropRocks_312:
	.skip 0x4
.global JustFromIntro_313
JustFromIntro_313:
	.skip 0x4
.global LastVehicleControl_314
LastVehicleControl_314:
	.skip 0x4
.global WaterCurrentAngleY_342
WaterCurrentAngleY_342:
	.skip 0x4
.global JeepCamX
JeepCamX:
	.skip 0x4
.global JeepCamY
JeepCamY:
	.skip 0x4
.global fade_mtl
fade_mtl:
	.skip 0x4
.global fadecol
fadecol:
	.skip 0x4
.global level_clearcolour
level_clearcolour:
	.skip 0x4
.global level_fogcolour
level_fogcolour:
	.skip 0x4
.global c_154
c_154:
	.skip 0x4
.global LastFireButton_174
LastFireButton_174:
	.skip 0x4
.global FireBleepTimer_175
FireBleepTimer_175:
	.skip 0x4
.global VehCamX_360
VehCamX_360:
	.skip 0x4
.global VehCamY_361
VehCamY_361:
	.skip 0x4
.global VehCamX_365
VehCamX_365:
	.skip 0x4
.global VehCamY_366
VehCamY_366:
	.skip 0x4
.global WasLastOn_522
WasLastOn_522:
	.skip 0x4
.global LastVulnerableOn_523
LastVulnerableOn_523:
	.skip 0x4
.global Timer_549
Timer_549:
	.skip 0x4
.global CamAngY_550
CamAngY_550:
	.skip 0x4
.global FarmResetTimer
FarmResetTimer:
	.skip 0x4
.global ZoffaCollisionCounter
ZoffaCollisionCounter:
	.skip 0x4
.global ZoffaTeleportIndx
ZoffaTeleportIndx:
	.skip 0x4
.global CurrentAggressor
CurrentAggressor:
	.skip 0x4
.global LevelResetTimer
LevelResetTimer:
	.skip 0x4
.global vscnt
vscnt:
	.skip 0x4
.global vsdata
vsdata:
	.skip 0x4
.global active_cutscene_instances
active_cutscene_instances:
	.skip 0x4
.global zx
zx:
	.skip 0x4
.global zy
zy:
	.skip 0x4
.global primdefs
primdefs:
	.skip 0x4
.global primdefs_sorted
primdefs_sorted:
	.skip 0x4
.global timer_210
timer_210:
	.skip 0x4
.global haze_backbuffer_mtl
haze_backbuffer_mtl:
	.skip 0x4
.global haze_tid
haze_tid:
	.skip 0x4
.global lighthaze_mtl
lighthaze_mtl:
	.skip 0x4
.global NuRndrFogNear
NuRndrFogNear:
	.skip 0x4
.global NuRndrFogFar
NuRndrFogFar:
	.skip 0x4
.global NuRndrFogCol
NuRndrFogCol:
	.skip 0x4
.global NuRndrFogBlur
NuRndrFogBlur:
	.skip 0x4
.global labtabcnt
labtabcnt:
	.skip 0x4
.global xdeflabtabcnt
xdeflabtabcnt:
	.skip 0x4
.global parprog
parprog:
	.skip 0x4
.global nta_sig_on
nta_sig_on:
	.skip 0x4
.global nta_sig_off
nta_sig_off:
	.skip 0x4
.global nta_sig_old
nta_sig_old:
	.skip 0x4
.global vport_inval
vport_inval:
	.skip 0x4
.global dynamicWaterHeightSourceTex
dynamicWaterHeightSourceTex:
	.skip 0x4
.global dynamicWaterHeightTargetTex
dynamicWaterHeightTargetTex:
	.skip 0x4
.global dynamicWaterForceStepOneTex
dynamicWaterForceStepOneTex:
	.skip 0x4
.global dynamicWaterForceTex
dynamicWaterForceTex:
	.skip 0x4
.global dynamicWaterVelocitySourceTex
dynamicWaterVelocitySourceTex:
	.skip 0x4
.global dynamicWaterVelocityTargetTex
dynamicWaterVelocityTargetTex:
	.skip 0x4
.global dynamicWaterNormalTex
dynamicWaterNormalTex:
	.skip 0x4
.global dynamicWaterBlurTex
dynamicWaterBlurTex:
	.skip 0x4
.global dynamicWaterFlipState
dynamicWaterFlipState:
	.skip 0x4
.global nufile
nufile:
	.skip 0x4
.global nuline
nuline:
	.skip 0x4
.global old_line_pos
old_line_pos:
	.skip 0x4
.global memext
memext:
	.skip 0x8
.global g_dwRenderWidth
g_dwRenderWidth:
	.skip 0x4
.global g_dwRenderHeight
g_dwRenderHeight:
	.skip 0x4
.global g_pd3dDevice
g_pd3dDevice:
	.skip 0x4
.global g_pddsBackBuffer
g_pddsBackBuffer:
	.skip 0x4
.global g_pddsZBuffer
g_pddsZBuffer:
	.skip 0x4
.global g_pddsStencilBuffer
g_pddsStencilBuffer:
	.skip 0x4
.global g_dwNumRT
g_dwNumRT:
	.skip 0x4
.global g_dwCurrentRT
g_dwCurrentRT:
	.skip 0x4
.global g_dwFreeRT
g_dwFreeRT:
	.skip 0x4
.global g_dwAllocRT
g_dwAllocRT:
	.skip 0x4
.global s_223
s_223:
	.skip 0x4
.global t_224
t_224:
	.skip 0x4
.global u_225
u_225:
	.skip 0x4
.global vibration
vibration:
	.skip 0x1
.global sfx_volume
sfx_volume:
	.skip 0x1
.global music_volume_N1
music_volume_N1:
	.skip 0x2
.global ClientImage
ClientImage:
	.skip 0x4
.global ImageSize
ImageSize:
	.skip 0x4
.global HostId
HostId:
	.skip 0x4
.global DiskId
DiskId:
	.skip 0x4
.global DefaultFifo
DefaultFifo:
	.skip 0x4
.global DefaultFifoObj
DefaultFifoObj:
	.skip 0x4
.global rmode
rmode:
	.skip 0x4
.global FrameCount
FrameCount:
	.skip 0x4
.global FrameMissThreshold
FrameMissThreshold:
	.skip 0x60
.global GS_TexList
GS_TexList:
	.skip 0x4
.global GS_NumTextures
GS_NumTextures:
	.skip 0x4
.global __AMStackLocation
__AMStackLocation:
	.skip 0x4
.global __AMFreeBytes
__AMFreeBytes:
	.skip 0x4
.global __DTKCurrentTrack
__DTKCurrentTrack:
	.skip 0x4
.global __DTKPlayListHead
__DTKPlayListHead:
	.skip 0x4
.global __DTKPlayListTail
__DTKPlayListTail:
	.skip 0x4
.global __DTKState
__DTKState:
	.skip 0x8
.global __DTKRepeatMode
__DTKRepeatMode:
	.skip 0x4
.global __DTKPosition
__DTKPosition:
	.skip 0x4
.global __DTKInterruptFrequency
__DTKInterruptFrequency:
	.skip 0x4
.global __DTKVolumeL
__DTKVolumeL:
	.skip 0x1
.global __DTKVolumeR
__DTKVolumeR:
	.skip 0x3
.global __DTKShutdownFlag
__DTKShutdownFlag:
	.skip 0x4
.global __DTKTrackEnded
__DTKTrackEnded:
	.skip 0x4
.global __DTKFlushCallback
__DTKFlushCallback:
	.skip 0x4
.global __MIXDvdStreamAttenCurrent
__MIXDvdStreamAttenCurrent:
	.skip 0x4
.global __MIXDvdStreamAttenUser
__MIXDvdStreamAttenUser:
	.skip 0x4
.global __MIXSoundMode
__MIXSoundMode:
	.skip 0x4
.global aramZeroBase
aramZeroBase:
	.skip 0x4
.global aramUserBase
aramUserBase:
	.skip 0x4
.global aramUserBase2
aramUserBase2:
	.skip 0x4
.global nFPS_15
nFPS_15:
	.skip 0x8
.global aFPS_16
aFPS_16:
	.skip 0x8
.global MxFPS_17
MxFPS_17:
	.skip 0x8
.global MnFPS_18
MnFPS_18:
	.skip 0x8
.global freqi_19
freqi_19:
	.skip 0x4
.global Time3i_20
Time3i_20:
	.skip 0x4
.global OldTime3_21
OldTime3_21:
	.skip 0x8
.global Time3_22
Time3_22:
	.skip 0x8
.global freq_23
freq_23:
	.skip 0x8
.global nowTime_24
nowTime_24:
	.skip 0x8
.global aveTime_28
aveTime_28:
	.skip 0x8
.global tplIcons_174
tplIcons_174:
	.skip 0x4
.global tdpIcons_175
tdpIcons_175:
	.skip 0x4
.global CardWorkArea
CardWorkArea:
	.skip 0x4
.global s_13
s_13:
	.skip 0x4
.global initialized_10
initialized_10:
	.skip 0x8
.global BootInfo
BootInfo:
	.skip 0x4
.global BI2DebugFlag
BI2DebugFlag:
	.skip 0x4
.global BI2DebugFlagHolder
BI2DebugFlagHolder:
	.skip 0x10
.global AreWeInitialized
AreWeInitialized:
	.skip 0x4
.global OSExceptionTable
OSExceptionTable:
	.skip 0x4
.global __OSInIPL
__OSInIPL:
	.skip 0x8
.global __OSStartTime
__OSStartTime:
	.skip 0x4
.global lbl_803D3F04
lbl_803D3F04:
	.skip 0x4
.global AlarmQueue
AlarmQueue:
	.skip 0x8
.global HeapArray
HeapArray:
	.skip 0x4
.global NumHeaps
NumHeaps:
	.skip 0x4
.global ArenaStart
ArenaStart:
	.skip 0x4
.global ArenaEnd
ArenaEnd:
	.skip 0x4
.global __OSArenaHi
__OSArenaHi:
	.skip 0x8
.global InterruptHandlerTable
InterruptHandlerTable:
	.skip 0x4
.global __OSLastInterruptSrr0
__OSLastInterruptSrr0:
	.skip 0x4
.global __OSLastInterrupt
__OSLastInterrupt:
	.skip 0x8
.global __OSLastInterruptTime
__OSLastInterruptTime:
	.skip 0x4
.global lbl_803D3F3C
lbl_803D3F3C:
	.skip 0x4
.global ResetFunctionQueue
ResetFunctionQueue:
	.skip 0x8
.global ResetCallback
ResetCallback:
	.skip 0x4
.global Down
Down:
	.skip 0x4
.global LastState
LastState:
	.skip 0x8
.global HoldUp
HoldUp:
	.skip 0x4
.global lbl_803D3F5C
lbl_803D3F5C:
	.skip 0x4
.global HoldDown
HoldDown:
	.skip 0x4
.global lbl_803D3F64
lbl_803D3F64:
	.skip 0x4
.global RunQueueBits
RunQueueBits:
	.skip 0x4
.global RunQueueHint
RunQueueHint:
	.skip 0x4
.global Reschedule
Reschedule:
	.skip 0x8
.global SaveStart
SaveStart:
	.skip 0x4
.global SaveEnd
SaveEnd:
	.skip 0x4
.global Prepared
Prepared:
	.skip 0x8
.global __DBInterface
__DBInterface:
	.skip 0x4
.global DBVerbose
DBVerbose:
	.skip 0x4
.global BootInfo_N1
BootInfo_N1:
	.skip 0x4
.global FstStart
FstStart:
	.skip 0x4
.global FstStringStart
FstStringStart:
	.skip 0x4
.global MaxEntryNum
MaxEntryNum:
	.skip 0x4
.global currentDirectory
currentDirectory:
	.skip 0x4
.global __DVDLongFileNameFlag
__DVDLongFileNameFlag:
	.skip 0x4
.global __DVDThreadQueue
__DVDThreadQueue:
	.skip 0x8
.global executing
executing:
	.skip 0x8
.global currID
currID:
	.skip 0x4
.global bootInfo
bootInfo:
	.skip 0x4
.global PauseFlag
PauseFlag:
	.skip 0x4
.global PausingFlag
PausingFlag:
	.skip 0x4
.global AutoFinishing
AutoFinishing:
	.skip 0x4
.global FatalErrorFlag
FatalErrorFlag:
	.skip 0x4
.global CurrCommand
CurrCommand:
	.skip 0x4
.global Canceling
Canceling:
	.skip 0x4
.global CancelCallback
CancelCallback:
	.skip 0x4
.global ResumeFromHere
ResumeFromHere:
	.skip 0x4
.global CancelLastError
CancelLastError:
	.skip 0x4
.global LastError
LastError:
	.skip 0x4
.global NumInternalRetry
NumInternalRetry:
	.skip 0x4
.global ResetRequired
ResetRequired:
	.skip 0xC
.global FirstTimeInBootrom
FirstTimeInBootrom:
	.skip 0x4
.global DVDInitialized
DVDInitialized:
	.skip 0x4
.global LastState_N1
LastState_N1:
	.skip 0x8
.global status
status:
	.skip 0x4
.global bb2
bb2:
	.skip 0x4
.global idTmp
idTmp:
	.skip 0x8
.global StopAtNextInt
StopAtNextInt:
	.skip 0x4
.global LastLength
LastLength:
	.skip 0x4
.global Callback_N1
Callback_N1:
	.skip 0x4
.global ResetCoverCallback
ResetCoverCallback:
	.skip 0x4
.global LastResetEnd
LastResetEnd:
	.skip 0x4
.global lbl_803D402C
lbl_803D402C:
	.skip 0x4
.global ResetOccurred
ResetOccurred:
	.skip 0x4
.global WaitingCoverClose
WaitingCoverClose:
	.skip 0x4
.global Breaking
Breaking:
	.skip 0x4
.global WorkAroundType
WorkAroundType:
	.skip 0x4
.global WorkAroundSeekLocation
WorkAroundSeekLocation:
	.skip 0x8
.global LastReadFinished
LastReadFinished:
	.skip 0x4
.global lbl_803D404C
lbl_803D404C:
	.skip 0x4
.global LastReadIssued
LastReadIssued:
	.skip 0x4
.global lbl_803D4054
lbl_803D4054:
	.skip 0x4
.global LastCommandWasRead
LastCommandWasRead:
	.skip 0x4
.global NextCommandNumber
NextCommandNumber:
	.skip 0x4
.global retraceCount
retraceCount:
	.skip 0x4
.global flushFlag
flushFlag:
	.skip 0x4
.global retraceQueue
retraceQueue:
	.skip 0x8
.global PreCB
PreCB:
	.skip 0x4
.global PostCB
PostCB:
	.skip 0x4
.global encoderType
encoderType:
	.skip 0x4
.global displayOffsetH
displayOffsetH:
	.skip 0x2
.global displayOffsetV
displayOffsetV:
	.skip 0x2
.global changeMode
changeMode:
	.skip 0x8
.global changed
changed:
	.skip 0x4
.global lbl_803D408C
lbl_803D408C:
	.skip 0x4
.global shdwChangeMode
shdwChangeMode:
	.skip 0x8
.global shdwChanged
shdwChanged:
	.skip 0x4
.global lbl_803D409C
lbl_803D409C:
	.skip 0x4
.global CurrTiming
CurrTiming:
	.skip 0x4
.global CurrTvMode
CurrTvMode:
	.skip 0x4
.global FBSet
FBSet:
	.skip 0x4
.global message$332
message$332:
	.skip 0x4
.global Initialized
Initialized:
	.skip 0x4
.global EnabledBits
EnabledBits:
	.skip 0x4
.global ResettingBits
ResettingBits:
	.skip 0x4
.global RecalibrateBits
RecalibrateBits:
	.skip 0x4
.global WaitingBits
WaitingBits:
	.skip 0x4
.global CheckingBits
CheckingBits:
	.skip 0x4
.global PendingBits
PendingBits:
	.skip 0x8
.global SamplingCallback
SamplingCallback:
	.skip 0x4
.global recalibrated$396
recalibrated$396:
	.skip 0x4
.global __PADSpec
__PADSpec:
	.skip 0x8
.global __AIS_Callback
__AIS_Callback:
	.skip 0x4
.global __AID_Callback
__AID_Callback:
	.skip 0x4
.global __CallbackStack
__CallbackStack:
	.skip 0x4
.global __OldStack
__OldStack:
	.skip 0x4
.global __AI_init_flag
__AI_init_flag:
	.skip 0x8
.global bound_32KHz
bound_32KHz:
	.skip 0x4
.global lbl_803D40FC
lbl_803D40FC:
	.skip 0x4
.global bound_48KHz
bound_48KHz:
	.skip 0x4
.global lbl_803D4104
lbl_803D4104:
	.skip 0x4
.global min_wait
min_wait:
	.skip 0x4
.global lbl_803D410C
lbl_803D410C:
	.skip 0x4
.global max_wait
max_wait:
	.skip 0x4
.global lbl_803D4114
lbl_803D4114:
	.skip 0x4
.global buffer
buffer:
	.skip 0x4
.global lbl_803D411C
lbl_803D411C:
	.skip 0x14
.global __AR_Callback
__AR_Callback:
	.skip 0x4
.global __AR_Size
__AR_Size:
	.skip 0x4
.global __AR_InternalSize
__AR_InternalSize:
	.skip 0x4
.global __AR_ExpansionSize
__AR_ExpansionSize:
	.skip 0x4
.global __AR_StackPointer
__AR_StackPointer:
	.skip 0x4
.global __AR_FreeBlocks
__AR_FreeBlocks:
	.skip 0x4
.global __AR_BlockLength
__AR_BlockLength:
	.skip 0x4
.global __AR_init_flag
__AR_init_flag:
	.skip 0x4
.global __ARQRequestQueueHi
__ARQRequestQueueHi:
	.skip 0x4
.global __ARQRequestTailHi
__ARQRequestTailHi:
	.skip 0x4
.global __ARQRequestQueueLo
__ARQRequestQueueLo:
	.skip 0x4
.global __ARQRequestTailLo
__ARQRequestTailLo:
	.skip 0xC
.global __ARQRequestPendingHi
__ARQRequestPendingHi:
	.skip 0x4
.global __ARQRequestPendingLo
__ARQRequestPendingLo:
	.skip 0x4
.global __ARQCallbackHi
__ARQCallbackHi:
	.skip 0x4
.global __ARQCallbackLo
__ARQCallbackLo:
	.skip 0x4
.global __ARQChunkSize
__ARQChunkSize:
	.skip 0x4
.global __ARQ_init_flag
__ARQ_init_flag:
	.skip 0x4
.global __AXCallbackStack
__AXCallbackStack:
	.skip 0x8
.global __AXCallbackAuxA
__AXCallbackAuxA:
	.skip 0x4
.global __AXCallbackAuxB
__AXCallbackAuxB:
	.skip 0x4
.global __AXContextAuxA
__AXContextAuxA:
	.skip 0x4
.global __AXContextAuxB
__AXContextAuxB:
	.skip 0x4
.global __AXAuxADspWrite
__AXAuxADspWrite:
	.skip 0x4
.global __AXAuxADspRead
__AXAuxADspRead:
	.skip 0x4
.global __AXAuxBDspWrite
__AXAuxBDspWrite:
	.skip 0x4
.global __AXAuxBDspRead
__AXAuxBDspRead:
	.skip 0x4
.global __AXAuxDspWritePosition
__AXAuxDspWritePosition:
	.skip 0x4
.global __AXAuxDspReadPosition
__AXAuxDspReadPosition:
	.skip 0x4
.global __AXAuxCpuReadWritePosition
__AXAuxCpuReadWritePosition:
	.skip 0x8
.global __AXCommandListPosition
__AXCommandListPosition:
	.skip 0x4
.global __AXClWrite
__AXClWrite:
	.skip 0x4
.global __AXCommandListCycles
__AXCommandListCycles:
	.skip 0x4
.global __AXClMode
__AXClMode:
	.skip 0x4
.global __AXOutFrame
__AXOutFrame:
	.skip 0x4
.global __AXOutDspReady
__AXOutDspReady:
	.skip 0x4
.global __AXOsTime
__AXOsTime:
	.skip 0x4
.global lbl_803D41D4
lbl_803D41D4:
	.skip 0x4
.global __AXUserFrameCallback
__AXUserFrameCallback:
	.skip 0x4
.global __AXDSPInitFlag
__AXDSPInitFlag:
	.skip 0x4
.global __AXDSPDoneFlag
__AXDSPDoneFlag:
	.skip 0x4
.global __AXDebugSteppingMode
__AXDebugSteppingMode:
	.skip 0x4
.global __AXSpbAL
__AXSpbAL:
	.skip 0x4
.global __AXSpbAR
__AXSpbAR:
	.skip 0x4
.global __AXSpbAS
__AXSpbAS:
	.skip 0x4
.global __AXSpbAAL
__AXSpbAAL:
	.skip 0x4
.global __AXSpbAAR
__AXSpbAAR:
	.skip 0x4
.global __AXSpbAAS
__AXSpbAAS:
	.skip 0x4
.global __AXSpbABL
__AXSpbABL:
	.skip 0x4
.global __AXSpbABR
__AXSpbABR:
	.skip 0x4
.global __AXSpbABS
__AXSpbABS:
	.skip 0x8
.global __AXMaxDspCycles
__AXMaxDspCycles:
	.skip 0x4
.global __AXRecDspCycles
__AXRecDspCycles:
	.skip 0x4
.global __AXNumVoices
__AXNumVoices:
	.skip 0x8
.global __AXProfile
__AXProfile:
	.skip 0x4
.global __AXMaxProfiles
__AXMaxProfiles:
	.skip 0x4
.global __AXCurrentProfile
__AXCurrentProfile:
	.skip 0x4
.global __AXProfileInitialized
__AXProfileInitialized:
	.skip 0x4
.global __DSP_init_flag
__DSP_init_flag:
	.skip 0x14
.global __DSP_rude_task_pending
__DSP_rude_task_pending:
	.skip 0x4
.global __DSP_rude_task
__DSP_rude_task:
	.skip 0x4
.global __DSP_tmp_task
__DSP_tmp_task:
	.skip 0x4
.global __DSP_last_task
__DSP_last_task:
	.skip 0x4
.global __DSP_first_task
__DSP_first_task:
	.skip 0x4
.global __DSP_curr_task
__DSP_curr_task:
	.skip 0x8
.global __piReg
__piReg:
	.skip 0x4
.global __cpReg
__cpReg:
	.skip 0x4
.global __peReg
__peReg:
	.skip 0x4
.global __memReg
__memReg:
	.skip 0x4
.global CPUFifo
CPUFifo:
	.skip 0x4
.global GPFifo
GPFifo:
	.skip 0x4
.global __GXCurrentThread
__GXCurrentThread:
	.skip 0x4
.global CPGPLinked
CPGPLinked:
	.skip 0x4
.global GXOverflowSuspendInProgress
GXOverflowSuspendInProgress:
	.skip 0x4
.global BreakPointCB
BreakPointCB:
	.skip 0x4
.global __GXOverflowCount
__GXOverflowCount:
	.skip 0x8
.global TokenCB
TokenCB:
	.skip 0x4
.global DrawDoneCB
DrawDoneCB:
	.skip 0x4
.global DrawDone
DrawDone:
	.skip 0x4
.global FinishQueue
FinishQueue:
	.skip 0x14
.global MTRCallback
MTRCallback:
	.skip 0x4
.global DBGCallback
DBGCallback:
	.skip 0x4
.global SendMailData
SendMailData:
	.skip 0x4
.global RecvDataLeng
RecvDataLeng:
	.skip 0x4
.global pEXIInputFlag
pEXIInputFlag:
	.skip 0x4
.global EXIInputFlag
EXIInputFlag:
	.skip 0x4
.global Chan
Chan:
	.skip 0x4
.global Dev
Dev:
	.skip 0x4
.global Enabled
Enabled:
	.skip 0x4
.global BarnacleEnabled
BarnacleEnabled:
	.skip 0x4
.global cmdTypeAndStatus$77
cmdTypeAndStatus$77:
	.skip 0x4
.global cmdTypeAndStatus$371
cmdTypeAndStatus$371:
	.skip 0x4
.global __PADFixBits
__PADFixBits:
	.skip 0x8
.global SamplingRate
SamplingRate:
	.skip 0x8
.global __GBAReset
__GBAReset:
	.skip 0x18
.global LEVELAICOUNT
LEVELAICOUNT:
	.skip 0x4
.global LEVELAITYPES
LEVELAITYPES:
	.skip 0x4
.global DrainDamage_Intro
DrainDamage_Intro:
	.skip 0x4
.global temp_creature_i
temp_creature_i:
	.skip 0x4
.global fire_attack_on
fire_attack_on:
	.skip 0x4
.global earth_attack_on
earth_attack_on:
	.skip 0x4
.global water_attack_on
water_attack_on:
	.skip 0x4
.global CrunchTime_Intro
CrunchTime_Intro:
	.skip 0x4
.global SpaceCortex_Defeated
SpaceCortex_Defeated:
	.skip 0x4
.global temp_iRAIL
temp_iRAIL:
	.skip 0x3
.global lbl_803D432F
lbl_803D432F:
	.skip 0x1
.global temp_iALONG
temp_iALONG:
	.skip 0x2
.global lbl_803D4332
lbl_803D4332:
	.skip 0x2
.global temp_fALONG
temp_fALONG:
	.skip 0x4
.global jcrunch
jcrunch:
	.skip 0x4
.global temp_xrot
temp_xrot:
	.skip 0x2
.global temp_zrot
temp_zrot:
	.skip 0x2
.global plr_crates
plr_crates:
	.skip 0x2
.global lbl_803D4342
lbl_803D4342:
	.skip 0x2
.global lbl_803D4344
lbl_803D4344:
	.skip 0x4
.global DESTRUCTIBLECRATECOUNT
DESTRUCTIBLECRATECOUNT:
	.skip 0x4
.global buglight_enable
buglight_enable:
	.skip 0x4
.global GemPath
GemPath:
	.skip 0x4
.global VEHICLECONTROL
VEHICLECONTROL:
	.skip 0x4
.global best_cRPos
best_cRPos:
	.skip 0x4
.global nRAILS
nRAILS:
	.skip 0x4
.global temp_fACROSS
temp_fACROSS:
	.skip 0x4
.global cRPosCOUNT
cRPosCOUNT:
	.skip 0x4
.global temp_best_cRPos
temp_best_cRPos:
	.skip 0x4
.global temp_cRPosCOUNT
temp_cRPosCOUNT:
	.skip 0x4
.global pVIS
pVIS:
	.skip 0x4
.global cut_on
cut_on:
	.skip 0x4
.global pNuCam
pNuCam:
	.skip 0x4
.global iVIS
iVIS:
	.skip 0x4
.global best_railangle
best_railangle:
	.skip 0x4
.global pCam
pCam:
	.skip 0x4
.global GameMode
GameMode:
	.skip 0x4
.global vtog_time
vtog_time:
	.skip 0x4
.global vtog_duration
vtog_duration:
	.skip 0x4
.global vtog_blend
vtog_blend:
	.skip 0x4
.global pVTog
pVTog:
	.skip 0x4
.global pos_START
pos_START:
	.skip 0x4
.global ResetAtlasCamera
ResetAtlasCamera:
	.skip 0x4
.global WesternCountdown
WesternCountdown:
	.skip 0x4
.global death_pCAM
death_pCAM:
	.skip 0x4
.global iTEMP
iTEMP:
	.skip 0x4
.global bonus_duration
bonus_duration:
	.skip 0x4
.global bonus_time
bonus_time:
	.skip 0x4
.global bonus_pCAM
bonus_pCAM:
	.skip 0x4
.global death_time
death_time:
	.skip 0x4
.global death_duration
death_duration:
	.skip 0x4
.global gempath_time
gempath_time:
	.skip 0x4
.global gempath_duration
gempath_duration:
	.skip 0x4
.global gempath_pCAM
gempath_pCAM:
	.skip 0x4
.global jonframe1
jonframe1:
	.skip 0x4
.global temp_action
temp_action:
	.skip 0x4
.global temp_time
temp_time:
	.skip 0x4
.global temp_pGroup
temp_pGroup:
	.skip 0x4
.global temp_pCrate
temp_pCrate:
	.skip 0x4
.global temp_crate_bounce
temp_crate_bounce:
	.skip 0x3
.global lbl_803D43E7
lbl_803D43E7:
	.skip 0x1
.global DESTRUCTIBLEBONUSCRATECOUNT
DESTRUCTIBLEBONUSCRATECOUNT:
	.skip 0x4
.global iBOXEXP
iBOXEXP:
	.skip 0x4
.global CrateMat2
CrateMat2:
	.skip 0x4
.global CrateMat
CrateMat:
	.skip 0x4
.global temp_crate_type
temp_crate_type:
	.skip 0x4
.global temp_ratio
temp_ratio:
	.skip 0x4
.global temp_face
temp_face:
	.skip 0x4
.global temp_crate_y_ceiling_adjust
temp_crate_y_ceiling_adjust:
	.skip 0x4
.global temp_crate_y_floor_adjust
temp_crate_y_floor_adjust:
	.skip 0x4
.global temp_crate_xz_adjust
temp_crate_xz_adjust:
	.skip 0x4
.global mask_crates
mask_crates:
	.skip 0x4
.global TimeTrialWait
TimeTrialWait:
	.skip 0x4
.global cp_iRAIL
cp_iRAIL:
	.skip 0x4
.global cp_iALONG
cp_iALONG:
	.skip 0x4
.global EShadY
EShadY:
	.skip 0x4
.global temp_surface_xrot
temp_surface_xrot:
	.skip 0x2
.global temp_surface_yrot
temp_surface_yrot:
	.skip 0x2
.global temp_surface_zrot
temp_surface_zrot:
	.skip 0x8
.global plr_bonus_wumpas
plr_bonus_wumpas:
	.skip 0x2
.global lbl_803D4432
lbl_803D4432:
	.skip 0x2
.global lbl_803D4434
lbl_803D4434:
	.skip 0x1
.global lbl_803D4435
lbl_803D4435:
	.skip 0x1
.global lbl_803D4436
lbl_803D4436:
	.skip 0x2
.global bonus_wumpa_delay
bonus_wumpa_delay:
	.skip 0x4
.global bonus_wumpa_wait
bonus_wumpa_wait:
	.skip 0x4
.global save_bonus_crates_destroyed
save_bonus_crates_destroyed:
	.skip 0x4
.global bonus_finish_frame
bonus_finish_frame:
	.skip 0x4
.global bonus_crates_wait
bonus_crates_wait:
	.skip 0x4
.global bonus_lives
bonus_lives:
	.skip 0x4
.global bonus_life_delay
bonus_life_delay:
	.skip 0x4
.global bonus_lives_wait
bonus_lives_wait:
	.skip 0x4
.global plr_lives
plr_lives:
	.skip 0x1
.global lbl_803D4459
lbl_803D4459:
	.skip 0x1
.global lbl_803D445A
lbl_803D445A:
	.skip 0x2
.global lbl_803D445C
lbl_803D445C:
	.skip 0x4
.global clock_ok
clock_ok:
	.skip 0x4
.global plr_items
plr_items:
	.skip 0x4
.global superbuffer_ptr
superbuffer_ptr:
	.skip 0x4
.global crash_loaded
crash_loaded:
	.skip 0x4
.global tumble_time
tumble_time:
	.skip 0x4
.global tumble_action
tumble_action:
	.skip 0x2
.global lbl_803D4476
lbl_803D4476:
	.skip 0x2
.global tumble_duration
tumble_duration:
	.skip 0x4
.global plr_wumpas
plr_wumpas:
	.skip 0x1
.global lbl_803D447D
lbl_803D447D:
	.skip 0x1
.global lbl_803D447E
lbl_803D447E:
	.skip 0x2
.global lbl_803D4480
lbl_803D4480:
	.skip 0x4
.global SAFEY
SAFEY:
	.skip 0x4
.global plr_vehicle_time
plr_vehicle_time:
	.skip 0x4
.global plr_vehicle_speedmul
plr_vehicle_speedmul:
	.skip 0x4
.global VEHICLETIME
VEHICLETIME:
	.skip 0x4
.global vtog_angle
vtog_angle:
	.skip 0x2
.global new_lev_flags
new_lev_flags:
	.skip 0x2
.global tumble_item_starttime
tumble_item_starttime:
	.skip 0x4
.global temp_lev_flags
temp_lev_flags:
	.skip 0x4
.global tumble_cycleduration
tumble_cycleduration:
	.skip 0x4
.global tumble_moveduration
tumble_moveduration:
	.skip 0x4
.global tumble_hdg
tumble_hdg:
	.skip 0x4
.global FireBossHoldPlayer
FireBossHoldPlayer:
	.skip 0x4
.global SmokeyCountDownValue
SmokeyCountDownValue:
	.skip 0x3
.global lbl_803D44B3
lbl_803D44B3:
	.skip 0x1
.global offroader_speedtime
offroader_speedtime:
	.skip 0x4
.global plr_target_found
plr_target_found:
	.skip 0x4
.global plr_target_frame
plr_target_frame:
	.skip 0x4
.global in_speed
in_speed:
	.skip 0x4
.global in_s_friction
in_s_friction:
	.skip 0x4
.global in_f_friction
in_f_friction:
	.skip 0x4
.global app_tbset
app_tbset:
	.skip 0x4
.global ChrisJointOveride
ChrisJointOveride:
	.skip 0x4
.global ChrisJointList
ChrisJointList:
	.skip 0x4
.global ChrisNumJoints
ChrisNumJoints:
	.skip 0x4
.global CREDITCOUNT
CREDITCOUNT:
	.skip 0x4
.global credit_time
credit_time:
	.skip 0x4
.global cutworldix
cutworldix:
	.skip 0x4
.global next_cut_movie
next_cut_movie:
	.skip 0x4
.global cutang_FRONTEND
cutang_FRONTEND:
	.skip 0x2
.global lbl_803D44EE
lbl_803D44EE:
	.skip 0x2
.global cutang_SPACE
cutang_SPACE:
	.skip 0x2
.global lbl_803D44F2
lbl_803D44F2:
	.skip 0x2
.global lbl_803D44F4
lbl_803D44F4:
	.skip 0x4
.global gamecut_hold
gamecut_hold:
	.skip 0x4
.global superbuffer_end
superbuffer_end:
	.skip 0x4
.global PANEL3DMULX
PANEL3DMULX:
	.skip 0x4
.global PANEL3DMULY
PANEL3DMULY:
	.skip 0x4
.global rsfxpt
rsfxpt:
	.skip 0x4
.global rsfxcount
rsfxcount:
	.skip 0x4
.global torndist
torndist:
	.skip 0x4
.global debpt
debpt:
	.skip 0x4
.global firedroppt
firedroppt:
	.skip 0x4
.global dropfire
dropfire:
	.skip 0x4
.global hutexplode
hutexplode:
	.skip 0x4
.global hutframe
hutframe:
	.skip 0x4
.global exroty
exroty:
	.skip 0x4
.global subprop
subprop:
	.skip 0x4
.global water1
water1:
	.skip 0x4
.global water2
water2:
	.skip 0x4
.global wdir
wdir:
	.skip 0x4
.global wtimer
wtimer:
	.skip 0x4
.global lcrunch
lcrunch:
	.skip 0x4
.global cmask
cmask:
	.skip 0x4
.global dmask
dmask:
	.skip 0x4
.global maskx
maskx:
	.skip 0x4
.global masky
masky:
	.skip 0x4
.global maskoff
maskoff:
	.skip 0x4
.global maskrot
maskrot:
	.skip 0x4
.global rockpt
rockpt:
	.skip 0x4
.global floor1
floor1:
	.skip 0x4
.global roof1
roof1:
	.skip 0x4
.global roofon
roofon:
	.skip 0x4
.global flooron
flooron:
	.skip 0x4
.global exkey
exkey:
	.skip 0x4
.global ShadRoofY
ShadRoofY:
	.skip 0x4
.global font3d_xright
font3d_xright:
	.skip 0x4
.global font3d_xmid
font3d_xmid:
	.skip 0x4
.global font3d_dx
font3d_dx:
	.skip 0x4
.global font3d_dy
font3d_dy:
	.skip 0x4
.global font3d_xleft
font3d_xleft:
	.skip 0x4
.global font3d_ybottom
font3d_ybottom:
	.skip 0x4
.global font3d_ymid
font3d_ymid:
	.skip 0x4
.global font3d_ytop
font3d_ytop:
	.skip 0x4
.global probecol
probecol:
	.skip 0x4
.global probeon
probeon:
	.skip 0x4
.global probey
probey:
	.skip 0x4
.global probetime
probetime:
	.skip 0x4
.global temp_hublevel
temp_hublevel:
	.skip 0x4
.global temp_hub
temp_hub:
	.skip 0x4
.global tumble_item_addtime
tumble_item_addtime:
	.skip 0x4
.global finish_frame
finish_frame:
	.skip 0x4
.global finish_frames
finish_frames:
	.skip 0x4
.global HubLevel
HubLevel:
	.skip 0x4
.global hubleveltext_pos
hubleveltext_pos:
	.skip 0x4
.global HubLevel_available
HubLevel_available:
	.skip 0x4
.global hubleveltext_i
hubleveltext_i:
	.skip 0x4
.global hubleveltext_open
hubleveltext_open:
	.skip 0x4
.global hubleveltext_level
hubleveltext_level:
	.skip 0x4
.global vtog_action
vtog_action:
	.skip 0x4
.global finish_type
finish_type:
	.skip 0x4
.global new_hub_flags
new_hub_flags:
	.skip 0x4
.global newleveltime_slot
newleveltime_slot:
	.skip 0x4
.global WUMPACOUNT
WUMPACOUNT:
	.skip 0x4
.global game
game:
	.skip 0x4
.global cp_fALONG
cp_fALONG:
	.skip 0x4
.global nCheckLetters
nCheckLetters:
	.skip 0x4
.global check_delay
check_delay:
	.skip 0x4
.global nPointLetters
nPointLetters:
	.skip 0x4
.global point_delay
point_delay:
	.skip 0x4
.global temp_hours
temp_hours:
	.skip 0x4
.global temp_minutes
temp_minutes:
	.skip 0x4
.global temp_hundredths
temp_hundredths:
	.skip 0x4
.global temp_tenths
temp_tenths:
	.skip 0x4
.global temp_seconds
temp_seconds:
	.skip 0x4
.global pausestats_frame
pausestats_frame:
	.skip 0x4
.global start_time
start_time:
	.skip 0x4
.global timetrial_frame
timetrial_frame:
	.skip 0x4
.global tt_sx
tt_sx:
	.skip 0x4
.global tt_sy
tt_sy:
	.skip 0x4
.global sapphire_relics
sapphire_relics:
	.skip 0x4
.global platinum_relics
platinum_relics:
	.skip 0x4
.global gold_relics
gold_relics:
	.skip 0x4
.global bonus_pPLAT
bonus_pPLAT:
	.skip 0x4
.global bonus_crate_delay
bonus_crate_delay:
	.skip 0x4
.global bonus_panel_wait
bonus_panel_wait:
	.skip 0x4
.global death_begun
death_begun:
	.skip 0x4
.global death_lock
death_lock:
	.skip 0x4
.global death_pPLAT
death_pPLAT:
	.skip 0x4
.global gempath_begun
gempath_begun:
	.skip 0x4
.global gempath_open
gempath_open:
	.skip 0x4
.global gempath_lock
gempath_lock:
	.skip 0x4
.global gempath_pPLAT
gempath_pPLAT:
	.skip 0x4
.global bonus_crates_destroyed
bonus_crates_destroyed:
	.skip 0x12
.global panel_head_yrot
panel_head_yrot:
	.skip 0x2
.global panel_head_xrot
panel_head_xrot:
	.skip 0x4
.global AshesMechInZ
AshesMechInZ:
	.skip 0x4
.global AshesMechOutZ
AshesMechOutZ:
	.skip 0x4
.global FlyingLevelCompleteTimer
FlyingLevelCompleteTimer:
	.skip 0x4
.global ChrisBigBossDead
ChrisBigBossDead:
	.skip 0x4
.global SmokeyFinished
SmokeyFinished:
	.skip 0x4
.global SmokeyPosition
SmokeyPosition:
	.skip 0x4
.global mg_wumpatot
mg_wumpatot:
	.skip 0x4
.global superbuffer_base
superbuffer_base:
	.skip 0x4
.global new_power
new_power:
	.skip 0x4
.global plr_crystal
plr_crystal:
	.skip 0x2
.global lbl_803D469A
lbl_803D469A:
	.skip 0x2
.global lbl_803D469C
lbl_803D469C:
	.skip 0x4
.global plr_crategem
plr_crategem:
	.skip 0x2
.global lbl_803D46A2
lbl_803D46A2:
	.skip 0x2
.global lbl_803D46A4
lbl_803D46A4:
	.skip 0x4
.global plr_bonusgem
plr_bonusgem:
	.skip 0x2
.global lbl_803D46AA
lbl_803D46AA:
	.skip 0x2
.global lbl_803D46AC
lbl_803D46AC:
	.skip 0x3
.global lbl_803D46AF
lbl_803D46AF:
	.skip 0x1
.global FlyingLevelExtro
FlyingLevelExtro:
	.skip 0x4
.global bonus_frame
bonus_frame:
	.skip 0x4
.global SFXCOUNT_ALL
SFXCOUNT_ALL:
	.skip 0x4
.global GAMEOBJECTCOUNT
GAMEOBJECTCOUNT:
	.skip 0x4
.global temp_cuboid_side
temp_cuboid_side:
	.skip 0x4
.global temp_cuboid_bounce_angle
temp_cuboid_bounce_angle:
	.skip 0x4
.global temp_yrot
temp_yrot:
	.skip 0x4
.global temp_xzmomset
temp_xzmomset:
	.skip 0x4
.global plr_conveyor_yrot
plr_conveyor_yrot:
	.skip 0x2
.global temp_roof_xrot
temp_roof_xrot:
	.skip 0x2
.global temp_roof_zrot
temp_roof_zrot:
	.skip 0x4
.global crates_destroyed
crates_destroyed:
	.skip 0x2
.global lbl_803D46DA
lbl_803D46DA:
	.skip 0x2
.global crate_wumpa
crate_wumpa:
	.skip 0x2
.global lbl_803D46DE
lbl_803D46DE:
	.skip 0x2
.global old_bonus_crates
old_bonus_crates:
	.skip 0x4
.global JeepFrame
JeepFrame:
	.skip 0x4
.global JeepInControl
JeepInControl:
	.skip 0x4
.global FireBossHealth
FireBossHealth:
	.skip 0x4
.global JeepBaseAng
JeepBaseAng:
	.skip 0x4
.global JeepRailCamTween2
JeepRailCamTween2:
	.skip 0x4
.global JeepCamTween
JeepCamTween:
	.skip 0x4
.global JeepRailCamTween
JeepRailCamTween:
	.skip 0x4
.global ResetJeepCamera
ResetJeepCamera:
	.skip 0x4
.global JeepCamSnapShot
JeepCamSnapShot:
	.skip 0x4
.global JeepIntroCamSpline
JeepIntroCamSpline:
	.skip 0x4
.global JeepIntroLookSpline
JeepIntroLookSpline:
	.skip 0x4
.global SmokeyCam
SmokeyCam:
	.skip 0x4
.global HighCam
HighCam:
	.skip 0x4
.global WesternTime
WesternTime:
	.skip 0x4
.global WallOfFireOn
WallOfFireOn:
	.skip 0x4
.global WallOfFireAngleY
WallOfFireAngleY:
	.skip 0x4
.global FireBossWaterSoundTimer
FireBossWaterSoundTimer:
	.skip 0x4
.global WallOfFireAttatched
WallOfFireAttatched:
	.skip 0x4
.global WallOfFireHurtTimer
WallOfFireHurtTimer:
	.skip 0x4
.global FireBossFinished
FireBossFinished:
	.skip 0x4
.global FireBossWon
FireBossWon:
	.skip 0x4
.global WaterTimer
WaterTimer:
	.skip 0x10
.global POINTCOUNT
POINTCOUNT:
	.skip 0x4
.global LIGHTCOUNT
LIGHTCOUNT:
	.skip 0x4
.global AMBIENTCOUNT
AMBIENTCOUNT:
	.skip 0x4
.global DIRECTCOUNT
DIRECTCOUNT:
	.skip 0x4
.global numtl_white
numtl_white:
	.skip 0x4
.global superbuffersize
superbuffersize:
	.skip 0x4
.global superbuffer_reset_base
superbuffer_reset_base:
	.skip 0x4
.global ShadowMat
ShadowMat:
	.skip 0x4
.global pause_rndr_mtl
pause_rndr_mtl:
	.skip 0x4
.global pause_src_mtl
pause_src_mtl:
	.skip 0x4
.global GBABG_tid
GBABG_tid:
	.skip 0x4
.global PadData
PadData:
	.skip 0x4
.global AtmosphericPressureHackedZ
AtmosphericPressureHackedZ:
	.skip 0x4
.global save_paused
save_paused:
	.skip 0x4
.global snowflake_scale
snowflake_scale:
	.skip 0x30
.global WeatherBossSkeletonTimer
WeatherBossSkeletonTimer:
	.skip 0x4
.global WeatherBossDead
WeatherBossDead:
	.skip 0x4
.global GS_FrameBufferCopydataptr
GS_FrameBufferCopydataptr:
	.skip 0x4
.global MAXVPSIZEX
MAXVPSIZEX:
	.skip 0x4
.global MAXVPSIZEY
MAXVPSIZEY:
	.skip 0x4
.global MINVPSIZEX
MINVPSIZEX:
	.skip 0x4
.global MINVPSIZEY
MINVPSIZEY:
	.skip 0x4
.global plr_tocam_wait
plr_tocam_wait:
	.skip 0x4
.global plr_tocam_turn
plr_tocam_turn:
	.skip 0x4
.global plr_tumblehack
plr_tumblehack:
	.skip 0x4
.global carpet_yrot
carpet_yrot:
	.skip 0x2
.global carpet_xrot
carpet_xrot:
	.skip 0x2
.global carpet_time
carpet_time:
	.skip 0x4
.global carpet_panelpos
carpet_panelpos:
	.skip 0x4
.global CARPETLOOPTIME
CARPETLOOPTIME:
	.skip 0x4
.global opptub_action
opptub_action:
	.skip 0x2
.global lbl_803D47EA
lbl_803D47EA:
	.skip 0x2
.global opptub_wait
opptub_wait:
	.skip 0x4
.global race_finished
race_finished:
	.skip 0x4
.global TubLink
TubLink:
	.skip 0x4
.global arrow_xrot
arrow_xrot:
	.skip 0x2
.global arrow_yrot
arrow_yrot:
	.skip 0x2
.global FlyingLevelVictoryDance
FlyingLevelVictoryDance:
	.skip 0x4
.global CurSfxTabLocal
CurSfxTabLocal:
	.skip 0x4
.global WBIntroOn
WBIntroOn:
	.skip 0x4
.global FireFlyIntroTween
FireFlyIntroTween:
	.skip 0x4
.global Level_GliderSpeed
Level_GliderSpeed:
	.skip 0x4
.global Level_TargetTime
Level_TargetTime:
	.skip 0x4
.global WeatherBossTargetAppearTimer
WeatherBossTargetAppearTimer:
	.skip 0x4
.global Level_GliderCentreZ
Level_GliderCentreZ:
	.skip 0x4
.global Level_GliderCentreX
Level_GliderCentreX:
	.skip 0x4
.global Level_GliderRadius
Level_GliderRadius:
	.skip 0x4
.global Level_GliderFloor
Level_GliderFloor:
	.skip 0x4
.global Level_GliderCurrentCeiling
Level_GliderCurrentCeiling:
	.skip 0x4
.global Level_GliderCeiling
Level_GliderCeiling:
	.skip 0x4
.global VehicleLevelImmune
VehicleLevelImmune:
	.skip 0x4
.global Level_DeadTime
Level_DeadTime:
	.skip 0x4
.global GliderRumble
GliderRumble:
	.skip 0x4
.global SatelliteCharacterId
SatelliteCharacterId:
	.skip 0x4
.global GliderBulletReflectMtx
GliderBulletReflectMtx:
	.skip 0x4
.global FreeEnemyGliderBulletNum
FreeEnemyGliderBulletNum:
	.skip 0x4
.global FreeGliderBulletNum
FreeGliderBulletNum:
	.skip 0x4
.global UsedEnemyGliderBulletNum
UsedEnemyGliderBulletNum:
	.skip 0x4
.global UsedGliderBulletNum
UsedGliderBulletNum:
	.skip 0x4
.global BulletEnemyNumFrees
BulletEnemyNumFrees:
	.skip 0x4
.global BulletNumFrees
BulletNumFrees:
	.skip 0x4
.global GliderCamHighTimer
GliderCamHighTimer:
	.skip 0x4
.global WBIntroTweenTimer
WBIntroTweenTimer:
	.skip 0x4
.global FireFlyIntroOn
FireFlyIntroOn:
	.skip 0x4
.global ExtroAngOff
ExtroAngOff:
	.skip 0x4
.global ActiveAsteroidListNum
ActiveAsteroidListNum:
	.skip 0x4
.global BigGunIndx
BigGunIndx:
	.skip 0x4
.global BazookaIconOn
BazookaIconOn:
	.skip 0x4
.global CamOveride
CamOveride:
	.skip 0x4
.global WeatherBossSkeletonGlitchTimer
WeatherBossSkeletonGlitchTimer:
	.skip 0x4
.global VulnerableA
VulnerableA:
	.skip 0x4
.global VulnerableB
VulnerableB:
	.skip 0x4
.global VulnerableRad
VulnerableRad:
	.skip 0x4
.global VulnerableSection
VulnerableSection:
	.skip 0x4
.global GliderFrameCounter
GliderFrameCounter:
	.skip 0x4
.global FireFlyIntroAction
FireFlyIntroAction:
	.skip 0x4
.global FlyingLevelVictoryDanceTimer
FlyingLevelVictoryDanceTimer:
	.skip 0x4
.global FireFlyIntroOldAction
FireFlyIntroOldAction:
	.skip 0x4
.global AtlasWhackValue
AtlasWhackValue:
	.skip 0x4
.global AtlasWhackTimer
AtlasWhackTimer:
	.skip 0x4
.global ATLASLOOPVOL
ATLASLOOPVOL:
	.skip 0x4
.global AtlasFrame
AtlasFrame:
	.skip 0x4
.global RumbleCamTweenDest
RumbleCamTweenDest:
	.skip 0x4
.global RumbleCamTween
RumbleCamTween:
	.skip 0x4
.global DavesGay
DavesGay:
	.skip 0x4
.global kj
kj:
	.skip 0x4
.global ShootRockSound
ShootRockSound:
	.skip 0x4
.global JonnyOn
JonnyOn:
	.skip 0x4
.global RumbleCamTweenInterest
RumbleCamTweenInterest:
	.skip 0x4
.global EarthBossDeathEffect
EarthBossDeathEffect:
	.skip 0x4
.global EarthBossDeathTimer
EarthBossDeathTimer:
	.skip 0x4
.global EarthBossJustEntered
EarthBossJustEntered:
	.skip 0x4
.global RumbleDisplayMode
RumbleDisplayMode:
	.skip 0x4
.global RumbleCamTweenInterestDest
RumbleCamTweenInterestDest:
	.skip 0x4
.global RockPanelRotX
RockPanelRotX:
	.skip 0x8
.global RockPanelRotY
RockPanelRotY:
	.skip 0x8
.global RockPanelRotZ
RockPanelRotZ:
	.skip 0x8
.global RumbleDisplayY
RumbleDisplayY:
	.skip 0x4
.global EarthBossVortexOpen
EarthBossVortexOpen:
	.skip 0x4
.global lbl_803D4900
lbl_803D4900:
	.skip 0x4
.global HitMag
HitMag:
	.skip 0x4
.global AtlasHitsLost
AtlasHitsLost:
	.skip 0x4
.global BIGIMPACT
BIGIMPACT:
	.skip 0x4
.global trailair
trailair:
	.skip 0x4
.global trailpt
trailpt:
	.skip 0x4
.global IntoTrail
IntoTrail:
	.skip 0x4
.global CurrentIntensity
CurrentIntensity:
	.skip 0x4
.global AtlasTrailType
AtlasTrailType:
	.skip 0x4
.global lbl_803D4924
lbl_803D4924:
	.skip 0x4
.global RumbleStoreTotalRoks
RumbleStoreTotalRoks:
	.skip 0x4
.global RumbleStoreCrunchRoks
RumbleStoreCrunchRoks:
	.skip 0x4
.global RumbleStoreCrashRoks
RumbleStoreCrashRoks:
	.skip 0x4
.global RumbleCamY
RumbleCamY:
	.skip 0x30
.global globaltime
globaltime:
	.skip 0x4
.global freechunkcontrolsptr
freechunkcontrolsptr:
	.skip 0x4
.global debris_chunk_control_stack_index
debris_chunk_control_stack_index:
	.skip 0x4
.global freeDmaDebType
freeDmaDebType:
	.skip 0x4
.global freedebchkptr
freedebchkptr:
	.skip 0x4
.global freedebkeyptr
freedebkeyptr:
	.skip 0x4
.global debris_emitter_stack_index
debris_emitter_stack_index:
	.skip 0x4
.global globalframes
globalframes:
	.skip 0x4
.global edanim_nearest_param_id
edanim_nearest_param_id:
	.skip 0x4
.global edanim_particle_mode
edanim_particle_mode:
	.skip 0x4
.global edanim_sound_mode
edanim_sound_mode:
	.skip 0x4
.global edanim_nearest
edanim_nearest:
	.skip 0x4
.global edanim_next_param
edanim_next_param:
	.skip 0x28
.global edSfxGlobalTab
edSfxGlobalTab:
	.skip 0x4
.global edSfxLevelTab
edSfxLevelTab:
	.skip 0x4
.global edSfxGlobalCount
edSfxGlobalCount:
	.skip 0x4
.global edSfxAllCount
edSfxAllCount:
	.skip 0x4
.global edbits_base_scene
edbits_base_scene:
	.skip 0x4
.global edbits_what_game
edbits_what_game:
	.skip 0x4
.global edgra_clumps_used
edgra_clumps_used:
	.skip 0x4
.global edgra_units_used
edgra_units_used:
	.skip 0x4
.global edgra_next_clump
edgra_next_clump:
	.skip 0x4
.global edgra_nearest
edgra_nearest:
	.skip 0x24
.global edobj_particle_mode
edobj_particle_mode:
	.skip 0x4
.global edobj_sound_mode
edobj_sound_mode:
	.skip 0x4
.global edobj_nearest
edobj_nearest:
	.skip 0x4
.global edobj_next_instance
edobj_next_instance:
	.skip 0x4
.global edobj_waypoint_mode
edobj_waypoint_mode:
	.skip 0x4
.global edobj_copy_mode
edobj_copy_mode:
	.skip 0x4
.global edpp_nearest
edpp_nearest:
	.skip 0x4
.global edpp_nextalloc
edpp_nextalloc:
	.skip 0x4
.global balls
balls:
	.skip 0x4
.global BridgeFree
BridgeFree:
	.skip 0x4
.global NuBridgeProc
NuBridgeProc:
	.skip 0x4
.global NuWindMtxIndex
NuWindMtxIndex:
	.skip 0x4
.global NuWindDir
NuWindDir:
	.skip 0x4
.global NuWindDir2
NuWindDir2:
	.skip 0x4
.global NuWindWave
NuWindWave:
	.skip 0x4
.global NuWindGCount
NuWindGCount:
	.skip 0x4
.global crashdata
crashdata:
	.skip 0x4
.global curSphereter
curSphereter:
	.skip 0x4
.global TerrShapeAdjCnt
TerrShapeAdjCnt:
	.skip 0x4
.global curPickInst
curPickInst:
	.skip 0x4
.global terraincnt
terraincnt:
	.skip 0x4
.global platinrange
platinrange:
	.skip 0x4
.global ShadPoly
ShadPoly:
	.skip 0x4
.global TerrPoly
TerrPoly:
	.skip 0x4
.global PlatImpactId
PlatImpactId:
	.skip 0x4
.global situtotal
situtotal:
	.skip 0x2
.global lbl_803D4A6A
lbl_803D4A6A:
	.skip 0x2
.global terlistptr
terlistptr:
	.skip 0x2
.global lbl_803D4A6E
lbl_803D4A6E:
	.skip 0x2
.global CurTerr
CurTerr:
	.skip 0x4
.global TerI
TerI:
	.skip 0x4
.global ScaleTerrain
ScaleTerrain:
	.skip 0x4
.global castnum
castnum:
	.skip 0x2
.global ecastnum
ecastnum:
	.skip 0x2
.global eshadroofhit
eshadroofhit:
	.skip 0x4
.global EShadRoofY
EShadRoofY:
	.skip 0x4
.global EShadRoofPoly
EShadRoofPoly:
	.skip 0x4
.global ecastroofnum
ecastroofnum:
	.skip 0x2
.global eshadhit
eshadhit:
	.skip 0x2
.global EShadPoly
EShadPoly:
	.skip 0x4
.global shadroofhit
shadroofhit:
	.skip 0x4
.global ShadRoofPoly
ShadRoofPoly:
	.skip 0x4
.global castroofnum
castroofnum:
	.skip 0x2
.global shadhit
shadhit:
	.skip 0x2
.global WallSplCount
WallSplCount:
	.skip 0x4
.global PlatCrush
PlatCrush:
	.skip 0x4
.global plathitid
plathitid:
	.skip 0x4
.global TerrPolyObj
TerrPolyObj:
	.skip 0x4
.global terrhitflags
terrhitflags:
	.skip 0x4
.global CurTrackInfo
CurTrackInfo:
	.skip 0x4
.global TerrShape
TerrShape:
	.skip 0x4
.global testlock
testlock:
	.skip 0x4
.global TempStackPtr
TempStackPtr:
	.skip 0x8
.global stritot
stritot:
	.skip 0x4
.global totaldupes
totaldupes:
	.skip 0x4
.global totalpts
totalpts:
	.skip 0x4
.global tritot
tritot:
	.skip 0x8
.global glass_mtl
glass_mtl:
	.skip 0x4
.global glass_mtl_blendskin
glass_mtl_blendskin:
	.skip 0x4
.global glass_mtl_blendskin2
glass_mtl_blendskin2:
	.skip 0x4
.global depthMtl
depthMtl:
	.skip 0x4
.global haze_mtl
haze_mtl:
	.skip 0x4
.global haze_surf
haze_surf:
	.skip 0x4
.global NuLightHazePolymtl
NuLightHazePolymtl:
	.skip 0x4
.global NuLightHazePolyus
NuLightHazePolyus:
	.skip 0x4
.global lbl_803D4AFC
lbl_803D4AFC:
	.skip 0x4
.global NuLightHazePolyvs
NuLightHazePolyvs:
	.skip 0x4
.global lbl_803D4B04
lbl_803D4B04:
	.skip 0x8
.global buglight_distance_N1
buglight_distance_N1:
	.skip 0x4
.global NuLightAddMat
NuLightAddMat:
	.skip 0x4
.global NuLgtArcLaserCnt
NuLgtArcLaserCnt:
	.skip 0x4
.global NuLgtArcLaserFrame
NuLgtArcLaserFrame:
	.skip 0x4
.global NuLgtArcV0
NuLgtArcV0:
	.skip 0x4
.global NuLgtArcV1
NuLgtArcV1:
	.skip 0x4
.global NuLgtArcLaserOldCnt
NuLgtArcLaserOldCnt:
	.skip 0x4
.global NuLgtArcMtl
NuLgtArcMtl:
	.skip 0x4
.global NuLgtArcU0
NuLgtArcU0:
	.skip 0x4
.global NuLgtArcU1
NuLgtArcU1:
	.skip 0x4
.global NuRndrShadowCnt
NuRndrShadowCnt:
	.skip 0x4
.global NuRndrFootFree
NuRndrFootFree:
	.skip 0x4
.global NuRndrShadMaskCount
NuRndrShadMaskCount:
	.skip 0x4
.global NuRndrWaterRipCnt
NuRndrWaterRipCnt:
	.skip 0x4
.global pDropletTex
pDropletTex:
	.skip 0x4
.global DropletTID
DropletTID:
	.skip 0x4
.global dynamicWaterMaterial
dynamicWaterMaterial:
	.skip 0x4
.global water_copy_mtl
water_copy_mtl:
	.skip 0x4
.global bpointer
bpointer:
	.skip 0x4
.global datafull
datafull:
	.skip 0x4
.global vpdmatag_curr
vpdmatag_curr:
	.skip 0x4
.global PadDemoEnd
PadDemoEnd:
	.skip 0x8
.global timerfreq
timerfreq:
	.skip 0x8
.global timer_start
timer_start:
	.skip 0x8
.global frame_counter
frame_counter:
	.skip 0x4
.global globalix1
globalix1:
	.skip 0x4
.global globalix2
globalix2:
	.skip 0xC
.global DemoFrameBuffer1
DemoFrameBuffer1:
	.skip 0x4
.global GS_FrameBufferCopySize
GS_FrameBufferCopySize:
	.skip 0x4
.global GS_CurrentMaterialAmbient
GS_CurrentMaterialAmbient:
	.skip 0x4
.global GS_CurrentMaterialDiffuse
GS_CurrentMaterialDiffuse:
	.skip 0x4
.global GS_CurrentMaterialDiffuseGX
GS_CurrentMaterialDiffuseGX:
	.skip 0x1
.global lbl_803D4B9D
lbl_803D4B9D:
	.skip 0x1
.global lbl_803D4B9E
lbl_803D4B9E:
	.skip 0x1
.global lbl_803D4B9F
lbl_803D4B9F:
	.skip 0x1
.global GS_CurrentMaterialEmissive
GS_CurrentMaterialEmissive:
	.skip 0x4
.global GS_CurrentMaterialEmissivergba
GS_CurrentMaterialEmissivergba:
	.skip 0x4
.global GS_CurrentMaterialEmissiveGX
GS_CurrentMaterialEmissiveGX:
	.skip 0x1
.global lbl_803D4BA9
lbl_803D4BA9:
	.skip 0x1
.global lbl_803D4BAA
lbl_803D4BAA:
	.skip 0x1
.global lbl_803D4BAB
lbl_803D4BAB:
	.skip 0x5
.global flush_flag
flush_flag:
	.skip 0x4
.global byteNotUsed
byteNotUsed:
	.skip 0x4
.global filesNotUsed
filesNotUsed:
	.skip 0x4
.global fileNo
fileNo:
	.skip 0x4
.global sectorSize
sectorSize:
	.skip 0x8
.global CV_SKINMTX
CV_SKINMTX:
	.skip 0x4
.global GS_SkinVertexSource
GS_SkinVertexSource:
	.skip 0x4
.global GS_BlendSource
GS_BlendSource:
	.skip 0x4
