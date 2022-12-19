.include "macros.inc"


.section .sdata, "wa"  # 0x803D2260 - 0x803D3BE0

.global __SDATA_START__
__SDATA_START__:
	.incbin "baserom.dol", 0x168B20, 0x4
.global crunch_vulnerable
crunch_vulnerable:
	.incbin "baserom.dol", 0x168B24, 0x4
.global SPACEUKAHACKY
SPACEUKAHACKY:
	.incbin "baserom.dol", 0x168B28, 0x4
.global SPACEUKADIST
SPACEUKADIST:
	.incbin "baserom.dol", 0x168B2C, 0x4
.global SPACEUKAFRAMEHACK
SPACEUKAFRAMEHACK:
	.incbin "baserom.dol", 0x168B30, 0x4
.global crunchtime_phase1tab
crunchtime_phase1tab:
	.incbin "baserom.dol", 0x168B34, 0x4
.global crunchtime_phase2tab
crunchtime_phase2tab:
	.incbin "baserom.dol", 0x168B38, 0x4
.global crunchtime_phase3tab
crunchtime_phase3tab:
	.incbin "baserom.dol", 0x168B3C, 0x4
.global crunchtime_phase4tab
crunchtime_phase4tab:
	.incbin "baserom.dol", 0x168B40, 0x8
.global BUGFADETIME
BUGFADETIME:
	.incbin "baserom.dol", 0x168B48, 0x4
.global mechlight_distance
mechlight_distance:
	.incbin "baserom.dol", 0x168B4C, 0x8
.global buglight_distance
buglight_distance:
	.incbin "baserom.dol", 0x168B54, 0x14
.global SIDECAMDISTANCE
SIDECAMDISTANCE:
	.incbin "baserom.dol", 0x168B68, 0xC
.global CAMSTOPNEAR
CAMSTOPNEAR:
	.incbin "baserom.dol", 0x168B74, 0x4
.global CAMSTOPFAR
CAMSTOPFAR:
	.incbin "baserom.dol", 0x168B78, 0x4
.global ATLASCAMHEIGHT
ATLASCAMHEIGHT:
	.incbin "baserom.dol", 0x168B7C, 0x4
.global temp_rail_end
temp_rail_end:
	.incbin "baserom.dol", 0x168B80, 0x4
.global LOGOCAMX
LOGOCAMX:
	.incbin "baserom.dol", 0x168B84, 0x4
.global LOGOCAMY
LOGOCAMY:
	.incbin "baserom.dol", 0x168B88, 0x4
.global LOGOCAMZ
LOGOCAMZ:
	.incbin "baserom.dol", 0x168B8C, 0x4
.global tInPlatRail
tInPlatRail:
	.incbin "baserom.dol", 0x168B90, 0x4
.global tInCamRail
tInCamRail:
	.incbin "baserom.dol", 0x168B94, 0x4
.global tLeftRail
tLeftRail:
	.incbin "baserom.dol", 0x168B98, 0x4
.global tCamRail
tCamRail:
	.incbin "baserom.dol", 0x168B9C, 0x4
.global tRightRail
tRightRail:
	.incbin "baserom.dol", 0x168BA0, 0x4
.global tOutCamRail
tOutCamRail:
	.incbin "baserom.dol", 0x168BA4, 0x4
.global tOutPlatRail
tOutPlatRail:
	.incbin "baserom.dol", 0x168BA8, 0x10
.global Blend_183
Blend_183:
	.incbin "baserom.dol", 0x168BB8, 0x4
.global LIGHTCHASECHARACTERS
LIGHTCHASECHARACTERS:
	.incbin "baserom.dol", 0x168BBC, 0x4
.global MAXCLOUDSIZE
MAXCLOUDSIZE:
	.incbin "baserom.dol", 0x168BC0, 0x4
.global CLOUDRNG
CLOUDRNG:
	.incbin "baserom.dol", 0x168BC4, 0x4
.global PARTICLESIZE
PARTICLESIZE:
	.incbin "baserom.dol", 0x168BC8, 0x4
.global cloudmtl
cloudmtl:
	.incbin "baserom.dol", 0x168BCC, 0x4
.global cloudGobj
cloudGobj:
	.incbin "baserom.dol", 0x168BD0, 0x4
.global disable_clouds
disable_clouds:
	.incbin "baserom.dol", 0x168BD4, 0x4
.global crates
crates:
	.incbin "baserom.dol", 0x168BD8, 0x4
.global marker_crate
marker_crate:
	.incbin "baserom.dol", 0x168BDC, 0x4
.global flash_crate
flash_crate:
	.incbin "baserom.dol", 0x168BE0, 0x4
.global lock_crate
lock_crate:
	.incbin "baserom.dol", 0x168BE4, 0x4
.global locked_crate
locked_crate:
	.incbin "baserom.dol", 0x168BE8, 0x4
.global triggerorigin_crate
triggerorigin_crate:
	.incbin "baserom.dol", 0x168BEC, 0x4
.global triggerdest_crate
triggerdest_crate:
	.incbin "baserom.dol", 0x168BF0, 0x4
.global highlight_crate
highlight_crate:
	.incbin "baserom.dol", 0x168BF4, 0x4
.global highlighted_crate
highlighted_crate:
	.incbin "baserom.dol", 0x168BF8, 0x7
.global lbl_803D233F
lbl_803D233F:
	.incbin "baserom.dol", 0x168BFF, 0x1
.global CRATEGROUPCOUNT
CRATEGROUPCOUNT:
	.incbin "baserom.dol", 0x168C00, 0x4
.global CRATECOUNT
CRATECOUNT:
	.incbin "baserom.dol", 0x168C04, 0x2
.global lbl_803D2346
lbl_803D2346:
	.incbin "baserom.dol", 0x168C06, 0x2
.global num_crates_used
num_crates_used:
	.incbin "baserom.dol", 0x168C08, 0x4
.global CRATEGRAVITY
CRATEGRAVITY:
	.incbin "baserom.dol", 0x168C0C, 0x4
.global CRATEHOPSPEED
CRATEHOPSPEED:
	.incbin "baserom.dol", 0x168C10, 0x4
.global METALCRATEBOUNCESPEED
METALCRATEBOUNCESPEED:
	.incbin "baserom.dol", 0x168C14, 0x4
.global JUMPONCRATEBREAKSPEED
JUMPONCRATEBREAKSPEED:
	.incbin "baserom.dol", 0x168C18, 0x4
.global FALLONCRATEBREAKSPEED
FALLONCRATEBREAKSPEED:
	.incbin "baserom.dol", 0x168C1C, 0x4
.global plr_invisibility_time
plr_invisibility_time:
	.incbin "baserom.dol", 0x168C20, 0x4
.global DRAWCRATESHADOWS
DRAWCRATESHADOWS:
	.incbin "baserom.dol", 0x168C24, 0x4
.global i_cratetypedata
i_cratetypedata:
	.incbin "baserom.dol", 0x168C28, 0x4
.global last_questionmark_extralife
last_questionmark_extralife:
	.incbin "baserom.dol", 0x168C2C, 0xC
.global SFX_CHANGER
SFX_CHANGER:
	.incbin "baserom.dol", 0x168C38, 0x6
.global lbl_803D237E
lbl_803D237E:
	.incbin "baserom.dol", 0x168C3E, 0x2
.global CRATEBALLOONOFFSET
CRATEBALLOONOFFSET:
	.incbin "baserom.dol", 0x168C40, 0x4
.global CRATEBALLOONRADIUS
CRATEBALLOONRADIUS:
	.incbin "baserom.dol", 0x168C44, 0x4
.global cp_goto
cp_goto:
	.incbin "baserom.dol", 0x168C48, 0x4
.global player
player:
	.incbin "baserom.dol", 0x168C4C, 0x4
.global IDLEWAIT
IDLEWAIT:
	.incbin "baserom.dol", 0x168C50, 0x4
.global plr_died
plr_died:
	.incbin "baserom.dol", 0x168C54, 0x4
.global c_slot
c_slot:
	.incbin "baserom.dol", 0x168C58, 0x4
.global AIVISRANGE
AIVISRANGE:
	.incbin "baserom.dol", 0x168C5C, 0x8
.global SMOKEYSPEED
SMOKEYSPEED:
	.incbin "baserom.dol", 0x168C64, 0x4
.global SMOKEYBOOSTSPEED
SMOKEYBOOSTSPEED:
	.incbin "baserom.dol", 0x168C68, 0x4
.global OFFROADERSEEK
OFFROADERSEEK:
	.incbin "baserom.dol", 0x168C6C, 0x4
.global plr_terrain_ok
plr_terrain_ok:
	.incbin "baserom.dol", 0x168C70, 0x4
.global plr_allow_jump
plr_allow_jump:
	.incbin "baserom.dol", 0x168C74, 0x4
.global LIGHTCREATURES
LIGHTCREATURES:
	.incbin "baserom.dol", 0x168C78, 0x4
.global plr_render
plr_render:
	.incbin "baserom.dol", 0x168C7C, 0x4
.global jeep_draw
jeep_draw:
	.incbin "baserom.dol", 0x168C80, 0x7
.global lbl_803D23C7
lbl_803D23C7:
	.incbin "baserom.dol", 0x168C87, 0x1
.global glass_draw
glass_draw:
	.incbin "baserom.dol", 0x168C88, 0x4
.global glass_phase
glass_phase:
	.incbin "baserom.dol", 0x168C8C, 0x4
.global DRAWCREATURESHADOWS
DRAWCREATURESHADOWS:
	.incbin "baserom.dol", 0x168C90, 0x4
.global HUBREFLECTY
HUBREFLECTY:
	.incbin "baserom.dol", 0x168C94, 0x4
.global ATLASPLAYERLIFT
ATLASPLAYERLIFT:
	.incbin "baserom.dol", 0x168C98, 0x4
.global credit_speed
credit_speed:
	.incbin "baserom.dol", 0x168C9C, 0x4
.global logos_played
logos_played:
	.incbin "baserom.dol", 0x168CA0, 0x4
.global TITLESTARTTIME
TITLESTARTTIME:
	.incbin "baserom.dol", 0x168CA4, 0x4
.global TITLEFPS
TITLEFPS:
	.incbin "baserom.dol", 0x168CA8, 0x4
.global cutmovie_hold
cutmovie_hold:
	.incbin "baserom.dol", 0x168CAC, 0x4
.global loadcut_chardatfile
loadcut_chardatfile:
	.incbin "baserom.dol", 0x168CB0, 0x4
.global CutChar
CutChar:
	.incbin "baserom.dol", 0x168CB4, 0x4
.global hCutLoadScreenThread
hCutLoadScreenThread:
	.incbin "baserom.dol", 0x168CB8, 0x4
.global cut_loading_finished
cut_loading_finished:
	.incbin "baserom.dol", 0x168CBC, 0x4
.global cut_load_framecount
cut_load_framecount:
	.incbin "baserom.dol", 0x168CC0, 0x4
.global cutratefrig
cutratefrig:
	.incbin "baserom.dol", 0x168CC4, 0x4
.global cutmovie
cutmovie:
	.incbin "baserom.dol", 0x168CC8, 0x4
.global cutang_CRASH
cutang_CRASH:
	.incbin "baserom.dol", 0x168CCC, 0x4
.global gamecut
gamecut:
	.incbin "baserom.dol", 0x168CD0, 0x4
.global gamecut_start
gamecut_start:
	.incbin "baserom.dol", 0x168CD4, 0x4
.global gamecut_finished
gamecut_finished:
	.incbin "baserom.dol", 0x168CD8, 0x4
.global gamecut_newlevel
gamecut_newlevel:
	.incbin "baserom.dol", 0x168CDC, 0x4
.global gamecut_sfx
gamecut_sfx:
	.incbin "baserom.dol", 0x168CE0, 0x4
.global music_volume
music_volume:
	.incbin "baserom.dol", 0x168CE4, 0x3
.global lbl_803D2427
lbl_803D2427:
	.incbin "baserom.dol", 0x168CE7, 0x1
.global pCutAnim
pCutAnim:
	.incbin "baserom.dol", 0x168CE8, 0x4
.global gamecut_hack
gamecut_hack:
	.incbin "baserom.dol", 0x168CEC, 0x4
.global SPACEMASKADJUSTY
SPACEMASKADJUSTY:
	.incbin "baserom.dol", 0x168CF0, 0x4
.global FRONTENDCORTEXADJUSTY
FRONTENDCORTEXADJUSTY:
	.incbin "baserom.dol", 0x168CF4, 0x4
.global HUBHOLOSCALE
HUBHOLOSCALE:
	.incbin "baserom.dol", 0x168CF8, 0x4
.global gauntletFarOffset
gauntletFarOffset:
	.incbin "baserom.dol", 0x168CFC, 0x4
.global gauntletWobble
gauntletWobble:
	.incbin "baserom.dol", 0x168D00, 0x4
.global font3d_initialised
font3d_initialised:
	.incbin "baserom.dol", 0x168D04, 0x4
.global FONT3DSIZE
FONT3DSIZE:
	.incbin "baserom.dol", 0x168D08, 0x4
.global FONT3DYMUL
FONT3DYMUL:
	.incbin "baserom.dol", 0x168D0C, 0x4
.global FONT3D_JSCALEDX
FONT3D_JSCALEDX:
	.incbin "baserom.dol", 0x168D10, 0x4
.global FONT3D_JSCALEX
FONT3D_JSCALEX:
	.incbin "baserom.dol", 0x168D14, 0x4
.global rrri
rrri:
	.incbin "baserom.dol", 0x168D18, 0x2
.global rrrt
rrrt:
	.incbin "baserom.dol", 0x168D1A, 0x6
.global DestMenu
DestMenu:
	.incbin "baserom.dol", 0x168D20, 0x4
.global SaveMenu
SaveMenu:
	.incbin "baserom.dol", 0x168D24, 0x4
.global BackMenu
BackMenu:
	.incbin "baserom.dol", 0x168D28, 0x8
.global i_demolevel
i_demolevel:
	.incbin "baserom.dol", 0x168D30, 0x4
.global new_mode
new_mode:
	.incbin "baserom.dol", 0x168D34, 0x4
.global Demo
Demo:
	.incbin "baserom.dol", 0x168D38, 0x4
.global PLAYERCOUNT
PLAYERCOUNT:
	.incbin "baserom.dol", 0x168D3C, 0x4
.global Paused
Paused:
	.incbin "baserom.dol", 0x168D40, 0x4
.global pause_dir
pause_dir:
	.incbin "baserom.dol", 0x168D44, 0x4
.global temprotate
temprotate:
	.incbin "baserom.dol", 0x168D48, 0x4
.global cortex_gameover_i
cortex_gameover_i:
	.incbin "baserom.dol", 0x168D4C, 0x4
.global cortex_continue_i
cortex_continue_i:
	.incbin "baserom.dol", 0x168D50, 0x4
.global cortex_quit_i
cortex_quit_i:
	.incbin "baserom.dol", 0x168D54, 0x4
.global temp_character
temp_character:
	.incbin "baserom.dol", 0x168D58, 0x4
.global temp_character2
temp_character2:
	.incbin "baserom.dol", 0x168D5C, 0x4
.global temp_character_action
temp_character_action:
	.incbin "baserom.dol", 0x168D60, 0x4
.global temp_character2_action
temp_character2_action:
	.incbin "baserom.dol", 0x168D64, 0x4
.global tempanim_waitaudio
tempanim_waitaudio:
	.incbin "baserom.dol", 0x168D68, 0x4
.global tempanim_nextaction
tempanim_nextaction:
	.incbin "baserom.dol", 0x168D6C, 0x2
.global lbl_803D24AE
lbl_803D24AE:
	.incbin "baserom.dol", 0x168D6E, 0x2
.global gameover_hack
gameover_hack:
	.incbin "baserom.dol", 0x168D70, 0x4
.global DISCOXOFFSET
DISCOXOFFSET:
	.incbin "baserom.dol", 0x168D74, 0x4
.global Hub
Hub:
	.incbin "baserom.dol", 0x168D78, 0x4
.global HubLevelText
HubLevelText:
	.incbin "baserom.dol", 0x168D7C, 0x4
.global HubLevelAngle
HubLevelAngle:
	.incbin "baserom.dol", 0x168D80, 0x2
.global hub_vr_xrot
hub_vr_xrot:
	.incbin "baserom.dol", 0x168D82, 0x2
.global hub_vr_yrot
hub_vr_yrot:
	.incbin "baserom.dol", 0x168D84, 0x4
.global hub_vr_level
hub_vr_level:
	.incbin "baserom.dol", 0x168D88, 0x4
.global hub_vr_image
hub_vr_image:
	.incbin "baserom.dol", 0x168D8C, 0x4
.global hub_vr_scale
hub_vr_scale:
	.incbin "baserom.dol", 0x168D90, 0x4
.global hub_vr_newscale
hub_vr_newscale:
	.incbin "baserom.dol", 0x168D94, 0x4
.global i_award
i_award:
	.incbin "baserom.dol", 0x168D98, 0x4
.global tumble_character
tumble_character:
	.incbin "baserom.dol", 0x168D9C, 0x4
.global last_hub
last_hub:
	.incbin "baserom.dol", 0x168DA0, 0x4
.global last_character
last_character:
	.incbin "baserom.dol", 0x168DA4, 0x4
.global last_used_character
last_used_character:
	.incbin "baserom.dol", 0x168DA8, 0x4
.global plr_rebound
plr_rebound:
	.incbin "baserom.dol", 0x168DAC, 0x4
.global FINISHRADIUSHUB
FINISHRADIUSHUB:
	.incbin "baserom.dol", 0x168DB0, 0x4
.global FINISHRADIUSLEVEL
FINISHRADIUSLEVEL:
	.incbin "baserom.dol", 0x168DB4, 0x4
.global LDATA
LDATA:
	.incbin "baserom.dol", 0x168DB8, 0x8
.global LBIT
LBIT:
	.incbin "baserom.dol", 0x168DC0, 0x4
.global lbl_803D2504
lbl_803D2504:
	.incbin "baserom.dol", 0x168DC4, 0x4
.global Level
Level:
	.incbin "baserom.dol", 0x168DC8, 0x4
.global new_level
new_level:
	.incbin "baserom.dol", 0x168DCC, 0x4
.global last_level
last_level:
	.incbin "baserom.dol", 0x168DD0, 0x4
.global warp_level
warp_level:
	.incbin "baserom.dol", 0x168DD4, 0x4
.global level_part_2
level_part_2:
	.incbin "baserom.dol", 0x168DD8, 0x4
.global i_kaboom
i_kaboom:
	.incbin "baserom.dol", 0x168DDC, 0x4
.global TT_RELICX
TT_RELICX:
	.incbin "baserom.dol", 0x168DE0, 0x4
.global TT_RELICY
TT_RELICY:
	.incbin "baserom.dol", 0x168DE4, 0x4
.global bonusgem_ok
bonusgem_ok:
	.incbin "baserom.dol", 0x168DE8, 0x4
.global in_finish_range
in_finish_range:
	.incbin "baserom.dol", 0x168DEC, 0x4
.global CRATECOUNT3DSCALE
CRATECOUNT3DSCALE:
	.incbin "baserom.dol", 0x168DF0, 0x4
.global CRATECOUNT3DSEPERATION
CRATECOUNT3DSEPERATION:
	.incbin "baserom.dol", 0x168DF4, 0x8
.global qseed
qseed:
	.incbin "baserom.dol", 0x168DFC, 0x4
.global wumpa_a
wumpa_a:
	.incbin "baserom.dol", 0x168E00, 0x8
.global i_screenwumpa
i_screenwumpa:
	.incbin "baserom.dol", 0x168E08, 0x4
.global i_newwumpa
i_newwumpa:
	.incbin "baserom.dol", 0x168E0C, 0x4
.global sw_hack
sw_hack:
	.incbin "baserom.dol", 0x168E10, 0x8
.global i_tempwumpa
i_tempwumpa:
	.incbin "baserom.dol", 0x168E18, 0x4
.global LIGHTMASK
LIGHTMASK:
	.incbin "baserom.dol", 0x168E1C, 0x4
.global i_maskfeathers
i_maskfeathers:
	.incbin "baserom.dol", 0x168E20, 0x4
.global MENUDY
MENUDY:
	.incbin "baserom.dol", 0x168E24, 0x4
.global i_nameinput
i_nameinput:
	.incbin "baserom.dol", 0x168E28, 0x4
.global input_alphabet
input_alphabet:
	.incbin "baserom.dol", 0x168E2C, 0x4
.global menu_pulsate
menu_pulsate:
	.incbin "baserom.dol", 0x168E30, 0x4
.global menu_pulsate_ang
menu_pulsate_ang:
	.incbin "baserom.dol", 0x168E34, 0x4
.global menu_pulsate_rate
menu_pulsate_rate:
	.incbin "baserom.dol", 0x168E38, 0x1C
.global InvincibilityCHEAT
InvincibilityCHEAT:
	.incbin "baserom.dol", 0x168E54, 0x4
.global ShowPlayerCoordinate
ShowPlayerCoordinate:
	.incbin "baserom.dol", 0x168E58, 0x8
.global ExtraMoves
ExtraMoves:
	.incbin "baserom.dol", 0x168E60, 0x10
.global ForceRestart
ForceRestart:
	.incbin "baserom.dol", 0x168E70, 0x4
.global cheating
cheating:
	.incbin "baserom.dol", 0x168E74, 0x4
.global memtest_done
memtest_done:
	.incbin "baserom.dol", 0x168E78, 0x4
.global advice_wait
advice_wait:
	.incbin "baserom.dol", 0x168E7C, 0x8
.global NotEnoughSpace_NewGame
NotEnoughSpace_NewGame:
	.incbin "baserom.dol", 0x168E84, 0x4
.global wasloadgame
wasloadgame:
	.incbin "baserom.dol", 0x168E88, 0x4
.global old_lang_356
old_lang_356:
	.incbin "baserom.dol", 0x168E8C, 0x4
.global dme_sx
dme_sx:
	.incbin "baserom.dol", 0x168E90, 0x4
.global dme_sy
dme_sy:
	.incbin "baserom.dol", 0x168E94, 0x4
.global dme_symul
dme_symul:
	.incbin "baserom.dol", 0x168E98, 0x4
.global dme_yadj
dme_yadj:
	.incbin "baserom.dol", 0x168E9C, 0x8
.global POWERTEXTY
POWERTEXTY:
	.incbin "baserom.dol", 0x168EA4, 0x4
.global PANELMENUX
PANELMENUX:
	.incbin "baserom.dol", 0x168EA8, 0x4
.global GAMENAMEY
GAMENAMEY:
	.incbin "baserom.dol", 0x168EAC, 0x4
.global LivesLost
LivesLost:
	.incbin "baserom.dol", 0x168EB0, 0x4
.global LostLife
LostLife:
	.incbin "baserom.dol", 0x168EB4, 0x4
.global CHECKWAIT
CHECKWAIT:
	.incbin "baserom.dol", 0x168EB8, 0x4
.global POINTWAIT
POINTWAIT:
	.incbin "baserom.dol", 0x168EBC, 0x4
.global check_time
check_time:
	.incbin "baserom.dol", 0x168EC0, 0x4
.global check_duration
check_duration:
	.incbin "baserom.dol", 0x168EC4, 0x4
.global point_time
point_time:
	.incbin "baserom.dol", 0x168EC8, 0x4
.global point_duration
point_duration:
	.incbin "baserom.dol", 0x168ECC, 0x4
.global CPLTIME
CPLTIME:
	.incbin "baserom.dol", 0x168ED0, 0x4
.global CPLDELAY
CPLDELAY:
	.incbin "baserom.dol", 0x168ED4, 0x4
.global tt_flash
tt_flash:
	.incbin "baserom.dol", 0x168ED8, 0x4
.global Adventure
Adventure:
	.incbin "baserom.dol", 0x168EDC, 0x4
.global TimeTrial
TimeTrial:
	.incbin "baserom.dol", 0x168EE0, 0x4
.global TT_SCALE
TT_SCALE:
	.incbin "baserom.dol", 0x168EE4, 0x4
.global TEXTZMUL
TEXTZMUL:
	.incbin "baserom.dol", 0x168EE8, 0x8
.global Bonus
Bonus:
	.incbin "baserom.dol", 0x168EF0, 0x4
.global bonus_restart
bonus_restart:
	.incbin "baserom.dol", 0x168EF4, 0x4
.global Death
Death:
	.incbin "baserom.dol", 0x168EF8, 0x4
.global force_menu
force_menu:
	.incbin "baserom.dol", 0x168EFC, 0x4
.global BAZOOKATARGETHACK
BAZOOKATARGETHACK:
	.incbin "baserom.dol", 0x168F00, 0x4
.global MECHTARGETHACK
MECHTARGETHACK:
	.incbin "baserom.dol", 0x168F04, 0x8
.global newmask_advise
newmask_advise:
	.incbin "baserom.dol", 0x168F0C, 0x4
.global boss_dead
boss_dead:
	.incbin "baserom.dol", 0x168F10, 0x4
.global i_projectile
i_projectile:
	.incbin "baserom.dol", 0x168F14, 0x4
.global jonwidth
jonwidth:
	.incbin "baserom.dol", 0x168F18, 0x4
.global jonwidth2
jonwidth2:
	.incbin "baserom.dol", 0x168F1C, 0x8
.global sceneinst_pool
sceneinst_pool:
	.incbin "baserom.dol", 0x168F24, 0x4
.global animdatainst_pool
animdatainst_pool:
	.incbin "baserom.dol", 0x168F28, 0x4
.global PYROTILTX
PYROTILTX:
	.incbin "baserom.dol", 0x168F2C, 0x4
.global AKUAKUTILTX
AKUAKUTILTX:
	.incbin "baserom.dol", 0x168F30, 0x8
.global DropAdj
DropAdj:
	.incbin "baserom.dol", 0x168F38, 0x8
.global JCDist
JCDist:
	.incbin "baserom.dol", 0x168F40, 0x8
.global FIREBOSSTHROWSPEED
FIREBOSSTHROWSPEED:
	.incbin "baserom.dol", 0x168F48, 0x4
.global FIREBOSSCHASESPEED
FIREBOSSCHASESPEED:
	.incbin "baserom.dol", 0x168F4C, 0x4
.global FIREBOSSSCAREDSPEED
FIREBOSSSCAREDSPEED:
	.incbin "baserom.dol", 0x168F50, 0x4
.global FIREBOSSENDRUNAWAY
FIREBOSSENDRUNAWAY:
	.incbin "baserom.dol", 0x168F54, 0x4
.global FIREBOSSSTART
FIREBOSSSTART:
	.incbin "baserom.dol", 0x168F58, 0x4
.global FIREBOSSHOLDPLAYERTIME
FIREBOSSHOLDPLAYERTIME:
	.incbin "baserom.dol", 0x168F5C, 0x4
.global FIREBOSSHOLDINTROTIME
FIREBOSSHOLDINTROTIME:
	.incbin "baserom.dol", 0x168F60, 0x4
.global FIREBOSSENDCHASE
FIREBOSSENDCHASE:
	.incbin "baserom.dol", 0x168F64, 0x4
.global FIREBOSSTURNTOMECH
FIREBOSSTURNTOMECH:
	.incbin "baserom.dol", 0x168F68, 0x4
.global FIREBOSSTURNFROMMECH
FIREBOSSTURNFROMMECH:
	.incbin "baserom.dol", 0x168F6C, 0x4
.global FIREBOSSWALLFIREDIST
FIREBOSSWALLFIREDIST:
	.incbin "baserom.dol", 0x168F70, 0x4
.global FOOTJUDDERTIME
FOOTJUDDERTIME:
	.incbin "baserom.dol", 0x168F74, 0x4
.global FOOTSTEPVOL
FOOTSTEPVOL:
	.incbin "baserom.dol", 0x168F78, 0x4
.global TRANSLATEFIREBOSS
TRANSLATEFIREBOSS:
	.incbin "baserom.dol", 0x168F7C, 0x4
.global FIREBOSSRUNAHEADTIMER
FIREBOSSRUNAHEADTIMER:
	.incbin "baserom.dol", 0x168F80, 0x4
.global FOOTRUMBLEPOWER
FOOTRUMBLEPOWER:
	.incbin "baserom.dol", 0x168F84, 0x4
.global FIREVOL
FIREVOL:
	.incbin "baserom.dol", 0x168F88, 0x4
.global BREAKVOL
BREAKVOL:
	.incbin "baserom.dol", 0x168F8C, 0x4
.global BOSSBANGVOL
BOSSBANGVOL:
	.incbin "baserom.dol", 0x168F90, 0x4
.global BOSSANGRYVOL
BOSSANGRYVOL:
	.incbin "baserom.dol", 0x168F94, 0x4
.global BOSSBREATHVOL
BOSSBREATHVOL:
	.incbin "baserom.dol", 0x168F98, 0x4
.global BOSSBREATHFRAME
BOSSBREATHFRAME:
	.incbin "baserom.dol", 0x168F9C, 0x4
.global FireIndx_311
FireIndx_311:
	.incbin "baserom.dol", 0x168FA0, 0x4
.global SMASHRUMPOWER
SMASHRUMPOWER:
	.incbin "baserom.dol", 0x168FA4, 0x4
.global FBSCREAMVOL
FBSCREAMVOL:
	.incbin "baserom.dol", 0x168FA8, 0x4
.global FIREWATERSOUNDTIME
FIREWATERSOUNDTIME:
	.incbin "baserom.dol", 0x168FAC, 0x4
.global WATERFIRESOUNDVOL
WATERFIRESOUNDVOL:
	.incbin "baserom.dol", 0x168FB0, 0x4
.global WaterLength
WaterLength:
	.incbin "baserom.dol", 0x168FB4, 0x4
.global WaterWidth
WaterWidth:
	.incbin "baserom.dol", 0x168FB8, 0x4
.global SEEKANGSPEED
SEEKANGSPEED:
	.incbin "baserom.dol", 0x168FBC, 0x4
.global MAXWATERTIME
MAXWATERTIME:
	.incbin "baserom.dol", 0x168FC0, 0x4
.global sf
sf:
	.incbin "baserom.dol", 0x168FC4, 0x4
.global sf2
sf2:
	.incbin "baserom.dol", 0x168FC8, 0x4
.global intensity
intensity:
	.incbin "baserom.dol", 0x168FCC, 0x4
.global DatPtr
DatPtr:
	.incbin "baserom.dol", 0x168FD0, 0x4
.global DatSize
DatSize:
	.incbin "baserom.dol", 0x168FD4, 0x4
.global loadsave_frame
loadsave_frame:
	.incbin "baserom.dol", 0x168FD8, 0xC
.global memcard_gamesavailable
memcard_gamesavailable:
	.incbin "baserom.dol", 0x168FE4, 0x4
.global memcard_loadattempted
memcard_loadattempted:
	.incbin "baserom.dol", 0x168FE8, 0x4
.global memcard_loadcompleted
memcard_loadcompleted:
	.incbin "baserom.dol", 0x168FEC, 0x4
.global memcard_saveneeded
memcard_saveneeded:
	.incbin "baserom.dol", 0x168FF0, 0x4
.global memcard_savestarted
memcard_savestarted:
	.incbin "baserom.dol", 0x168FF4, 0x4
.global memcard_deleteneeded
memcard_deleteneeded:
	.incbin "baserom.dol", 0x168FF8, 0x4
.global memcard_deletestarted
memcard_deletestarted:
	.incbin "baserom.dol", 0x168FFC, 0x4
.global memcard_formatme
memcard_formatme:
	.incbin "baserom.dol", 0x169000, 0x4
.global memcard_formatting
memcard_formatting:
	.incbin "baserom.dol", 0x169004, 0x4
.global memcard_loadmessage_delay
memcard_loadmessage_delay:
	.incbin "baserom.dol", 0x169008, 0x4
.global memcard_savemessage_delay
memcard_savemessage_delay:
	.incbin "baserom.dol", 0x16900C, 0x4
.global memcard_formatmessage_delay
memcard_formatmessage_delay:
	.incbin "baserom.dol", 0x169010, 0x4
.global memcard_loadresult_delay
memcard_loadresult_delay:
	.incbin "baserom.dol", 0x169014, 0x4
.global memcard_saveresult_delay
memcard_saveresult_delay:
	.incbin "baserom.dol", 0x169018, 0x4
.global SLOTPANELSX
SLOTPANELSX:
	.incbin "baserom.dol", 0x16901C, 0x4
.global SLOTPANELSZ
SLOTPANELSZ:
	.incbin "baserom.dol", 0x169020, 0x4
.global SLOTPANELDX
SLOTPANELDX:
	.incbin "baserom.dol", 0x169024, 0x4
.global SLOTPANELDY
SLOTPANELDY:
	.incbin "baserom.dol", 0x169028, 0xC
.global CurrentCausticTexture
CurrentCausticTexture:
	.incbin "baserom.dol", 0x169034, 0x4
.global lost_controller
lost_controller:
	.incbin "baserom.dol", 0x169038, 0x4
.global PHYSICAL_SCREEN_X
PHYSICAL_SCREEN_X:
	.incbin "baserom.dol", 0x16903C, 0x4
.global SWIDTH
SWIDTH:
	.incbin "baserom.dol", 0x169040, 0x4
.global PHYSICAL_SCREEN_Y
PHYSICAL_SCREEN_Y:
	.incbin "baserom.dol", 0x169044, 0x4
.global SHEIGHT
SHEIGHT:
	.incbin "baserom.dol", 0x169048, 0x8
.global NODEBRIS
NODEBRIS:
	.incbin "baserom.dol", 0x169050, 0x4
.global number_of_times_played
number_of_times_played:
	.incbin "baserom.dol", 0x169054, 0x4
.global pad_record
pad_record:
	.incbin "baserom.dol", 0x169058, 0x4
.global FixFrameRate
FixFrameRate:
	.incbin "baserom.dol", 0x16905C, 0x4
.global pad_play
pad_play:
	.incbin "baserom.dol", 0x169060, 0x4
.global ForcePlayRecord
ForcePlayRecord:
	.incbin "baserom.dol", 0x169064, 0x4
.global texanimbits
texanimbits:
	.incbin "baserom.dol", 0x169068, 0x4
.global Pad
Pad:
	.incbin "baserom.dol", 0x16906C, 0x8
.global world_vd
world_vd:
	.incbin "baserom.dol", 0x169074, 0x4
.global wumpa_scene
wumpa_scene:
	.incbin "baserom.dol", 0x169078, 0x4
.global wumpa_scene2
wumpa_scene2:
	.incbin "baserom.dol", 0x16907C, 0x4
.global crate_scene
crate_scene:
	.incbin "baserom.dol", 0x169080, 0x4
.global crate_scene2
crate_scene2:
	.incbin "baserom.dol", 0x169084, 0x4
.global font3d_scene
font3d_scene:
	.incbin "baserom.dol", 0x169088, 0x4
.global font3d_scene2
font3d_scene2:
	.incbin "baserom.dol", 0x16908C, 0x4
.global pause_scene
pause_scene:
	.incbin "baserom.dol", 0x169090, 0x4
.global pause_scene2
pause_scene2:
	.incbin "baserom.dol", 0x169094, 0x4
.global screendump
screendump:
	.incbin "baserom.dol", 0x169098, 0x4
.global fadeval
fadeval:
	.incbin "baserom.dol", 0x16909C, 0x4
.global fadehack
fadehack:
	.incbin "baserom.dol", 0x1690A0, 0x4
.global fade_rate
fade_rate:
	.incbin "baserom.dol", 0x1690A4, 0x4
.global ShadowMatBodge
ShadowMatBodge:
	.incbin "baserom.dol", 0x1690A8, 0x4
.global YTOL
YTOL:
	.incbin "baserom.dol", 0x1690AC, 0x4
.global hLoadScreenThread
hLoadScreenThread:
	.incbin "baserom.dol", 0x1690B0, 0x4
.global load_anim_data
load_anim_data:
	.incbin "baserom.dol", 0x1690B4, 0x4
.global loadcount
loadcount:
	.incbin "baserom.dol", 0x1690B8, 0x4
.global IsLoadingScreen
IsLoadingScreen:
	.incbin "baserom.dol", 0x1690BC, 0x4
.global stick_bits
stick_bits:
	.incbin "baserom.dol", 0x1690C0, 0x4
.global stick_bits_db
stick_bits_db:
	.incbin "baserom.dol", 0x1690C4, 0x4
.global stick_oldbits
stick_oldbits:
	.incbin "baserom.dol", 0x1690C8, 0x8
.global demo_inactivity
demo_inactivity:
	.incbin "baserom.dol", 0x1690D0, 0xC
.global i_tb_code
i_tb_code:
	.incbin "baserom.dol", 0x1690DC, 0x4
.global i_tb_draw
i_tb_draw:
	.incbin "baserom.dol", 0x1690E0, 0x4
.global frameout_count
frameout_count:
	.incbin "baserom.dol", 0x1690E4, 0x4
.global frameout
frameout:
	.incbin "baserom.dol", 0x1690E8, 0x4
.global FRAME
FRAME:
	.incbin "baserom.dol", 0x1690EC, 0x4
.global FRAMES
FRAMES:
	.incbin "baserom.dol", 0x1690F0, 0x8
.global LIFTPLAYER
LIFTPLAYER:
	.incbin "baserom.dol", 0x1690F8, 0x4
.global COMPLEXPLAYERSHADOW
COMPLEXPLAYERSHADOW:
	.incbin "baserom.dol", 0x1690FC, 0x4
.global PANELOFF
PANELOFF:
	.incbin "baserom.dol", 0x169100, 0x4
.global GLASSPLAYER
GLASSPLAYER:
	.incbin "baserom.dol", 0x169104, 0x4
.global SKELETALCRASH
SKELETALCRASH:
	.incbin "baserom.dol", 0x169108, 0x4
.global DRAWCREATUREHACK
DRAWCREATUREHACK:
	.incbin "baserom.dol", 0x16910C, 0x4
.global DRAWWORLDHACK
DRAWWORLDHACK:
	.incbin "baserom.dol", 0x169110, 0x4
.global BLUR
BLUR:
	.incbin "baserom.dol", 0x169114, 0x8
.global NOTERRAINSTOP
NOTERRAINSTOP:
	.incbin "baserom.dol", 0x16911C, 0x8
.global DRAWDEBRISHACK
DRAWDEBRISHACK:
	.incbin "baserom.dol", 0x169124, 0x8
.global USELIGHTS
USELIGHTS:
	.incbin "baserom.dol", 0x16912C, 0x4
.global LANGUAGEOPTION
LANGUAGEOPTION:
	.incbin "baserom.dol", 0x169130, 0x4
.global pause_rndr_on
pause_rndr_on:
	.incbin "baserom.dol", 0x169134, 0x4
.global old_pause_state_234
old_pause_state_234:
	.incbin "baserom.dol", 0x169138, 0xD0
.global iss3cmp
iss3cmp:
	.incbin "baserom.dol", 0x169208, 0x4
.global GBABG_Ptr
GBABG_Ptr:
	.incbin "baserom.dol", 0x16920C, 0x4
.global GBABG_mtl
GBABG_mtl:
	.incbin "baserom.dol", 0x169210, 0x4
.global reset_256
reset_256:
	.incbin "baserom.dol", 0x169214, 0x8
.global just_continued
just_continued:
	.incbin "baserom.dol", 0x16921C, 0x4
.global GRAVITY
GRAVITY:
	.incbin "baserom.dol", 0x169220, 0x4
.global TERMINALVELOCITY
TERMINALVELOCITY:
	.incbin "baserom.dol", 0x169224, 0x4
.global MAXLAPS
MAXLAPS:
	.incbin "baserom.dol", 0x169228, 0x4
.global SWEEPATTACKSTARTTIME
SWEEPATTACKSTARTTIME:
	.incbin "baserom.dol", 0x16922C, 0x4
.global SWEEPATTACKENDTIME
SWEEPATTACKENDTIME:
	.incbin "baserom.dol", 0x169230, 0x4
.global SCOOTERJUMPPAUSEFRAME
SCOOTERJUMPPAUSEFRAME:
	.incbin "baserom.dol", 0x169234, 0x4
.global SNOWBOARDJUMPPAUSEFRAME
SNOWBOARDJUMPPAUSEFRAME:
	.incbin "baserom.dol", 0x169238, 0x4
.global OFFROADERSPEEDTIME
OFFROADERSPEEDTIME:
	.incbin "baserom.dol", 0x16923C, 0x4
.global jeepsfx
jeepsfx:
	.incbin "baserom.dol", 0x169240, 0x8
.global i_jkeepsfx
i_jkeepsfx:
	.incbin "baserom.dol", 0x169248, 0x4
.global MECHRUNNINGJUMPPAUSEFRAME
MECHRUNNINGJUMPPAUSEFRAME:
	.incbin "baserom.dol", 0x16924C, 0x4
.global MECHSTANDINGJUMPPAUSEFRAME
MECHSTANDINGJUMPPAUSEFRAME:
	.incbin "baserom.dol", 0x169250, 0x4
.global mech_land_hack
mech_land_hack:
	.incbin "baserom.dol", 0x169254, 0x4
.global FIREENGINERUNNINGJUMPPAUSEFRAME
FIREENGINERUNNINGJUMPPAUSEFRAME:
	.incbin "baserom.dol", 0x169258, 0x4
.global FIREENGINESTANDINGJUMPPAUSEFRAME
FIREENGINESTANDINGJUMPPAUSEFRAME:
	.incbin "baserom.dol", 0x16925C, 0x4
.global CARPETTIME
CARPETTIME:
	.incbin "baserom.dol", 0x169260, 0x4
.global carpet_character
carpet_character:
	.incbin "baserom.dol", 0x169264, 0x8
.global carpet_place
carpet_place:
	.incbin "baserom.dol", 0x16926C, 0x4
.global carpet_model
carpet_model:
	.incbin "baserom.dol", 0x169270, 0x4
.global lbl_803D29B4
lbl_803D29B4:
	.incbin "baserom.dol", 0x169274, 0x4
.global carpet_action
carpet_action:
	.incbin "baserom.dol", 0x169278, 0x2
.global lbl_803D29BA
lbl_803D29BA:
	.incbin "baserom.dol", 0x16927A, 0x2
.global carpet_overlap
carpet_overlap:
	.incbin "baserom.dol", 0x16927C, 0x4
.global FASTMINECARTMUL
FASTMINECARTMUL:
	.incbin "baserom.dol", 0x169280, 0x4
.global SLOWMINECARTMUL
SLOWMINECARTMUL:
	.incbin "baserom.dol", 0x169284, 0x4
.global cart_sfx
cart_sfx:
	.incbin "baserom.dol", 0x169288, 0x4
.global TUBWAIT
TUBWAIT:
	.incbin "baserom.dol", 0x16928C, 0x4
.global TUBBOOSTFRAMES
TUBBOOSTFRAMES:
	.incbin "baserom.dol", 0x169290, 0x4
.global plr_tub_tilt
plr_tub_tilt:
	.incbin "baserom.dol", 0x169294, 0x4
.global plr_tub_tilttarget
plr_tub_tilttarget:
	.incbin "baserom.dol", 0x169298, 0x4
.global plr_tub_tiltlock
plr_tub_tiltlock:
	.incbin "baserom.dol", 0x16929C, 0x4
.global tub_overlap
tub_overlap:
	.incbin "baserom.dol", 0x1692A0, 0x4
.global plr_gates
plr_gates:
	.incbin "baserom.dol", 0x1692A4, 0x4
.global GATECOUNT
GATECOUNT:
	.incbin "baserom.dol", 0x1692A8, 0x8
.global gate_bits
gate_bits:
	.incbin "baserom.dol", 0x1692B0, 0x4
.global lbl_803D29F4
lbl_803D29F4:
	.incbin "baserom.dol", 0x1692B4, 0x4
.global i_ring
i_ring:
	.incbin "baserom.dol", 0x1692B8, 0x4
.global RINGCOUNT
RINGCOUNT:
	.incbin "baserom.dol", 0x1692BC, 0x4
.global RINGPULL
RINGPULL:
	.incbin "baserom.dol", 0x1692C0, 0x8
.global PANELCRUNCHXROT
PANELCRUNCHXROT:
	.incbin "baserom.dol", 0x1692C8, 0x4
.global PANELCRUNCHX
PANELCRUNCHX:
	.incbin "baserom.dol", 0x1692CC, 0x4
.global PANELCRUNCHY
PANELCRUNCHY:
	.incbin "baserom.dol", 0x1692D0, 0x4
.global PANELCRUNCHZ
PANELCRUNCHZ:
	.incbin "baserom.dol", 0x1692D4, 0x4
.global PANELCRUNCHSCALE
PANELCRUNCHSCALE:
	.incbin "baserom.dol", 0x1692D8, 0x4
.global PANELSINKX
PANELSINKX:
	.incbin "baserom.dol", 0x1692DC, 0x4
.global PANELSINKY
PANELSINKY:
	.incbin "baserom.dol", 0x1692E0, 0x4
.global PANELSINKZ
PANELSINKZ:
	.incbin "baserom.dol", 0x1692E4, 0x4
.global PANELSINKSCALE
PANELSINKSCALE:
	.incbin "baserom.dol", 0x1692E8, 0x4
.global PANELBLIMPX
PANELBLIMPX:
	.incbin "baserom.dol", 0x1692EC, 0x4
.global PANELBLIMPY
PANELBLIMPY:
	.incbin "baserom.dol", 0x1692F0, 0x4
.global PANELBLIMPZ
PANELBLIMPZ:
	.incbin "baserom.dol", 0x1692F4, 0x4
.global PANELBLIMPSCALE
PANELBLIMPSCALE:
	.incbin "baserom.dol", 0x1692F8, 0x14
.global WUMPAOBJSX
WUMPAOBJSX:
	.incbin "baserom.dol", 0x16930C, 0x4
.global WUMPATXTSX
WUMPATXTSX:
	.incbin "baserom.dol", 0x169310, 0x4
.global CRATEOBJSX
CRATEOBJSX:
	.incbin "baserom.dol", 0x169314, 0x4
.global CRATETXTSX
CRATETXTSX:
	.incbin "baserom.dol", 0x169318, 0x4
.global LIVESOBJSX
LIVESOBJSX:
	.incbin "baserom.dol", 0x16931C, 0x4
.global LIVESTXTSX
LIVESTXTSX:
	.incbin "baserom.dol", 0x169320, 0x4
.global PANELSY
PANELSY:
	.incbin "baserom.dol", 0x169324, 0x4
.global BONUSWUMPAOBJSX
BONUSWUMPAOBJSX:
	.incbin "baserom.dol", 0x169328, 0x4
.global BONUSWUMPATXTSX
BONUSWUMPATXTSX:
	.incbin "baserom.dol", 0x16932C, 0x4
.global BONUSCRATEOBJSX
BONUSCRATEOBJSX:
	.incbin "baserom.dol", 0x169330, 0x4
.global BONUSCRATETXTSX
BONUSCRATETXTSX:
	.incbin "baserom.dol", 0x169334, 0x4
.global BONUSLIVESOBJSX
BONUSLIVESOBJSX:
	.incbin "baserom.dol", 0x169338, 0x4
.global BONUSLIVESTXTSX
BONUSLIVESTXTSX:
	.incbin "baserom.dol", 0x16933C, 0x4
.global BONUSPANELSY
BONUSPANELSY:
	.incbin "baserom.dol", 0x169340, 0x4
.global PANELWUMPAYROT
PANELWUMPAYROT:
	.incbin "baserom.dol", 0x169344, 0x2
.global PANELCRATEYROT
PANELCRATEYROT:
	.incbin "baserom.dol", 0x169346, 0x2
.global NEWLIFEOBJSX
NEWLIFEOBJSX:
	.incbin "baserom.dol", 0x169348, 0x4
.global NEWBONUSLIFEOBJSX
NEWBONUSLIFEOBJSX:
	.incbin "baserom.dol", 0x16934C, 0x4
.global LIFESCALE
LIFESCALE:
	.incbin "baserom.dol", 0x169350, 0x4
.global BONUSLIFESCALE
BONUSLIFESCALE:
	.incbin "baserom.dol", 0x169354, 0x4
.global force_panel_wumpa_update
force_panel_wumpa_update:
	.incbin "baserom.dol", 0x169358, 0x4
.global force_panel_crate_update
force_panel_crate_update:
	.incbin "baserom.dol", 0x16935C, 0x4
.global force_panel_lives_update
force_panel_lives_update:
	.incbin "baserom.dol", 0x169360, 0x4
.global force_panel_items_update
force_panel_items_update:
	.incbin "baserom.dol", 0x169364, 0x4
.global DIVPANEL3DX
DIVPANEL3DX:
	.incbin "baserom.dol", 0x169368, 0x4
.global DIVPANEL3DY
DIVPANEL3DY:
	.incbin "baserom.dol", 0x16936C, 0x4
.global CHECKPOINT3DSCALE
CHECKPOINT3DSCALE:
	.incbin "baserom.dol", 0x169370, 0x4
.global CHECKPOINT3DSEPERATION
CHECKPOINT3DSEPERATION:
	.incbin "baserom.dol", 0x169374, 0x4
.global CHECKPOINT3DHEIGHT
CHECKPOINT3DHEIGHT:
	.incbin "baserom.dol", 0x169378, 0x4
.global disable_safearea_clamp
disable_safearea_clamp:
	.incbin "baserom.dol", 0x16937C, 0x4
.global PAUSEPANELZ
PAUSEPANELZ:
	.incbin "baserom.dol", 0x169380, 0x4
.global PAUSEPANELX
PAUSEPANELX:
	.incbin "baserom.dol", 0x169384, 0x4
.global PAUSETEXTZ
PAUSETEXTZ:
	.incbin "baserom.dol", 0x169388, 0x4
.global PAUSENAMEY
PAUSENAMEY:
	.incbin "baserom.dol", 0x16938C, 0x4
.global PAUSEINFOY
PAUSEINFOY:
	.incbin "baserom.dol", 0x169390, 0x4
.global PAUSEPERCENTY
PAUSEPERCENTY:
	.incbin "baserom.dol", 0x169394, 0x4
.global PAUSEHMUL
PAUSEHMUL:
	.incbin "baserom.dol", 0x169398, 0x4
.global PAUSEVMUL
PAUSEVMUL:
	.incbin "baserom.dol", 0x16939C, 0x4
.global TT_MESSAGEY
TT_MESSAGEY:
	.incbin "baserom.dol", 0x1693A0, 0x4
.global TT_TIMESDY
TT_TIMESDY:
	.incbin "baserom.dol", 0x1693A4, 0x4
.global TT_INPUTY
TT_INPUTY:
	.incbin "baserom.dol", 0x1693A8, 0x4
.global RUMBOSSBARX
RUMBOSSBARX:
	.incbin "baserom.dol", 0x1693AC, 0x4
.global RUMBOSSBARY
RUMBOSSBARY:
	.incbin "baserom.dol", 0x1693B0, 0x4
.global RUMBOSSBARZ
RUMBOSSBARZ:
	.incbin "baserom.dol", 0x1693B4, 0x4
.global RUMBOSSBARSCALEX
RUMBOSSBARSCALEX:
	.incbin "baserom.dol", 0x1693B8, 0x4
.global RUMBOSSBARSCALEY
RUMBOSSBARSCALEY:
	.incbin "baserom.dol", 0x1693BC, 0x4
.global ATMBOSSBARX
ATMBOSSBARX:
	.incbin "baserom.dol", 0x1693C0, 0x4
.global ATMBOSSBARY
ATMBOSSBARY:
	.incbin "baserom.dol", 0x1693C4, 0x4
.global ATMBOSSBARZ
ATMBOSSBARZ:
	.incbin "baserom.dol", 0x1693C8, 0x4
.global ATMBOSSBARSCALEX
ATMBOSSBARSCALEX:
	.incbin "baserom.dol", 0x1693CC, 0x4
.global ATMBOSSBARSCALEY
ATMBOSSBARSCALEY:
	.incbin "baserom.dol", 0x1693D0, 0x4
.global FIREBOSSBARX
FIREBOSSBARX:
	.incbin "baserom.dol", 0x1693D4, 0x4
.global FIREBOSSBARY
FIREBOSSBARY:
	.incbin "baserom.dol", 0x1693D8, 0x4
.global FIREBOSSBARZ
FIREBOSSBARZ:
	.incbin "baserom.dol", 0x1693DC, 0x4
.global FIREBOSSBARSCALEX
FIREBOSSBARSCALEX:
	.incbin "baserom.dol", 0x1693E0, 0x4
.global FIREBOSSBARSCALEY
FIREBOSSBARSCALEY:
	.incbin "baserom.dol", 0x1693E4, 0x4
.global PANELRINGX
PANELRINGX:
	.incbin "baserom.dol", 0x1693E8, 0x4
.global PANELRINGY
PANELRINGY:
	.incbin "baserom.dol", 0x1693EC, 0x4
.global PANELRINGSIZE
PANELRINGSIZE:
	.incbin "baserom.dol", 0x1693F0, 0x4
.global i_pdeb
i_pdeb:
	.incbin "baserom.dol", 0x1693F4, 0x8
.global sfxcount_local
sfxcount_local:
	.incbin "baserom.dol", 0x1693FC, 0x4
.global game_music
game_music:
	.incbin "baserom.dol", 0x169400, 0x4
.global gamesfx_channel
gamesfx_channel:
	.incbin "baserom.dol", 0x169404, 0x4
.global gamesfx_effect_volume
gamesfx_effect_volume:
	.incbin "baserom.dol", 0x169408, 0x4
.global gamesfx_volume
gamesfx_volume:
	.incbin "baserom.dol", 0x16940C, 0x4
.global gamesfx_pitch
gamesfx_pitch:
	.incbin "baserom.dol", 0x169410, 0x4
.global gamesfx_edbits
gamesfx_edbits:
	.incbin "baserom.dol", 0x169414, 0x4
.global testglobalsfx
testglobalsfx:
	.incbin "baserom.dol", 0x169418, 0x4
.global last_testglobalsfx
last_testglobalsfx:
	.incbin "baserom.dol", 0x16941C, 0x4
.global testsfx
testsfx:
	.incbin "baserom.dol", 0x169420, 0x4
.global musicvol_mul
musicvol_mul:
	.incbin "baserom.dol", 0x169424, 0x4
.global tJCANCEL2
tJCANCEL2:
	.incbin "baserom.dol", 0x169428, 0x4
.global WBIntroTweenTime
WBIntroTweenTime:
	.incbin "baserom.dol", 0x16942C, 0x4
.global GUNBOATVOLUME
GUNBOATVOLUME:
	.incbin "baserom.dol", 0x169430, 0x4
.global BATTLESHIPAVOLUME
BATTLESHIPAVOLUME:
	.incbin "baserom.dol", 0x169434, 0x4
.global BATTLESHIPBVOLUME
BATTLESHIPBVOLUME:
	.incbin "baserom.dol", 0x169438, 0x4
.global SeekGliderCamTime
SeekGliderCamTime:
	.incbin "baserom.dol", 0x16943C, 0x4
.global SeekTiltZOveride
SeekTiltZOveride:
	.incbin "baserom.dol", 0x169440, 0x4
.global SeekTiltZZero
SeekTiltZZero:
	.incbin "baserom.dol", 0x169444, 0x4
.global SeekTiltZNonZero
SeekTiltZNonZero:
	.incbin "baserom.dol", 0x169448, 0x4
.global RumbleCamVal
RumbleCamVal:
	.incbin "baserom.dol", 0x16944C, 0x4
.global BumpSpeed
BumpSpeed:
	.incbin "baserom.dol", 0x169450, 0x4
.global BumpAmount
BumpAmount:
	.incbin "baserom.dol", 0x169454, 0x6
.global lbl_803D2B9A
lbl_803D2B9A:
	.incbin "baserom.dol", 0x16945A, 0x2
.global CRASHTEROIDSAMBIENTVOL
CRASHTEROIDSAMBIENTVOL:
	.incbin "baserom.dol", 0x16945C, 0x6
.global lbl_803D2BA2
lbl_803D2BA2:
	.incbin "baserom.dol", 0x169462, 0x4
.global lbl_803D2BA6
lbl_803D2BA6:
	.incbin "baserom.dol", 0x169466, 0x6
.global jonemit
jonemit:
	.incbin "baserom.dol", 0x16946C, 0x4
.global FIXVELFADETIME
FIXVELFADETIME:
	.incbin "baserom.dol", 0x169470, 0x4
.global FIXVELTIME
FIXVELTIME:
	.incbin "baserom.dol", 0x169474, 0x4
.global FIXVELBUMPAMOUNT
FIXVELBUMPAMOUNT:
	.incbin "baserom.dol", 0x169478, 0x4
.global WBBULLETSPEED
WBBULLETSPEED:
	.incbin "baserom.dol", 0x16947C, 0x4
.global WBBULLETFIRERATE
WBBULLETFIRERATE:
	.incbin "baserom.dol", 0x169480, 0x4
.global TornFireY
TornFireY:
	.incbin "baserom.dol", 0x169484, 0x4
.global TORPTARGBLEEPTIME
TORPTARGBLEEPTIME:
	.incbin "baserom.dol", 0x169488, 0x4
.global TORPTARGFAILBLEEPTIME
TORPTARGFAILBLEEPTIME:
	.incbin "baserom.dol", 0x16948C, 0x4
.global TORPTARGAQUIREBLEEPTIME
TORPTARGAQUIREBLEEPTIME:
	.incbin "baserom.dol", 0x169490, 0x4
.global BEENHITBUZZTIME
BEENHITBUZZTIME:
	.incbin "baserom.dol", 0x169494, 0x4
.global BEENHITBIGBUZZTIME
BEENHITBIGBUZZTIME:
	.incbin "baserom.dol", 0x169498, 0x4
.global BEENHITBIGRUMTIME
BEENHITBIGRUMTIME:
	.incbin "baserom.dol", 0x16949C, 0xC
.global TorpedoTime
TorpedoTime:
	.incbin "baserom.dol", 0x1694A8, 0x4
.global TARGETBLEEPTIME
TARGETBLEEPTIME:
	.incbin "baserom.dol", 0x1694AC, 0xC
.global CRASHTEROIDSSeekTiltXTimeZero
CRASHTEROIDSSeekTiltXTimeZero:
	.incbin "baserom.dol", 0x1694B8, 0x4
.global CRASHTEROIDSSeekTiltXTimeNonZero
CRASHTEROIDSSeekTiltXTimeNonZero:
	.incbin "baserom.dol", 0x1694BC, 0x4
.global TORNSeekTiltXTimeZero
TORNSeekTiltXTimeZero:
	.incbin "baserom.dol", 0x1694C0, 0x4
.global TORNSeekTiltXTimeNonZero
TORNSeekTiltXTimeNonZero:
	.incbin "baserom.dol", 0x1694C4, 0x14
.global WeatherBossTargetAppearTime
WeatherBossTargetAppearTime:
	.incbin "baserom.dol", 0x1694D8, 0x10
.global WBTARGLIMX
WBTARGLIMX:
	.incbin "baserom.dol", 0x1694E8, 0x4
.global WBTARGLIMY
WBTARGLIMY:
	.incbin "baserom.dol", 0x1694EC, 0x4
.global WBTARGSCALE
WBTARGSCALE:
	.incbin "baserom.dol", 0x1694F0, 0x4
.global WBLIMX
WBLIMX:
	.incbin "baserom.dol", 0x1694F4, 0x4
.global WBMINY
WBMINY:
	.incbin "baserom.dol", 0x1694F8, 0x4
.global WBMAXY
WBMAXY:
	.incbin "baserom.dol", 0x1694FC, 0x4
.global WBTILTXSCALE
WBTILTXSCALE:
	.incbin "baserom.dol", 0x169500, 0x4
.global WBTILTZSCALE
WBTILTZSCALE:
	.incbin "baserom.dol", 0x169504, 0x4
.global WBCamDist
WBCamDist:
	.incbin "baserom.dol", 0x169508, 0x10
.global WBIntroDestTiltX
WBIntroDestTiltX:
	.incbin "baserom.dol", 0x169518, 0x4
.global WBIntroDestTiltZ
WBIntroDestTiltZ:
	.incbin "baserom.dol", 0x16951C, 0x4
.global WBITILTXSCALE
WBITILTXSCALE:
	.incbin "baserom.dol", 0x169520, 0x4
.global WBITILTZSCALE
WBITILTZSCALE:
	.incbin "baserom.dol", 0x169524, 0x4
.global BEENHITTORNRUMTIME
BEENHITTORNRUMTIME:
	.incbin "baserom.dol", 0x169528, 0x4
.global BEENHITTORNBUZZTIME
BEENHITTORNBUZZTIME:
	.incbin "baserom.dol", 0x16952C, 0x8
.global WBFRICX
WBFRICX:
	.incbin "baserom.dol", 0x169534, 0x4
.global WBFRICY
WBFRICY:
	.incbin "baserom.dol", 0x169538, 0x4
.global WBBARRELSEEKSPEEDZERO
WBBARRELSEEKSPEEDZERO:
	.incbin "baserom.dol", 0x16953C, 0x4
.global WBBARRELSEEKSPEEDNONZERO
WBBARRELSEEKSPEEDNONZERO:
	.incbin "baserom.dol", 0x169540, 0x4
.global WBBARRELSPEED
WBBARRELSPEED:
	.incbin "baserom.dol", 0x169544, 0x4
.global GLIDERHITSOUNDFREQUENCY
GLIDERHITSOUNDFREQUENCY:
	.incbin "baserom.dol", 0x169548, 0x4
.global GLIDERHITSOUNDOTHERID
GLIDERHITSOUNDOTHERID:
	.incbin "baserom.dol", 0x16954C, 0x6
.global lbl_803D2C92
lbl_803D2C92:
	.incbin "baserom.dol", 0x169552, 0x4
.global lbl_803D2C96
lbl_803D2C96:
	.incbin "baserom.dol", 0x169556, 0x2
.global MOSENGPITCHSLOPE
MOSENGPITCHSLOPE:
	.incbin "baserom.dol", 0x169558, 0x6
.global lbl_803D2C9E
lbl_803D2C9E:
	.incbin "baserom.dol", 0x16955E, 0x2
.global OIDENGPITCHSLOPE
OIDENGPITCHSLOPE:
	.incbin "baserom.dol", 0x169560, 0x6
.global lbl_803D2CA6
lbl_803D2CA6:
	.incbin "baserom.dol", 0x169566, 0x2
.global OIDZOFPITCHSLOPE
OIDZOFPITCHSLOPE:
	.incbin "baserom.dol", 0x169568, 0x8
.global OIDENGRUMBLESLOPE
OIDENGRUMBLESLOPE:
	.incbin "baserom.dol", 0x169570, 0x8
.global GLIDENGRUMBLESLOPE
GLIDENGRUMBLESLOPE:
	.incbin "baserom.dol", 0x169578, 0x8
.global MOSENGRUMBLESLOPE
MOSENGRUMBLESLOPE:
	.incbin "baserom.dol", 0x169580, 0x6
.global lbl_803D2CC6
lbl_803D2CC6:
	.incbin "baserom.dol", 0x169586, 0x2
.global GLIDENGPITCHSLOPE
GLIDENGPITCHSLOPE:
	.incbin "baserom.dol", 0x169588, 0x6
.global lbl_803D2CCE
lbl_803D2CCE:
	.incbin "baserom.dol", 0x16958E, 0x2
.global GLIDRUMTIM
GLIDRUMTIM:
	.incbin "baserom.dol", 0x169590, 0x4
.global GLIDRUMVOL
GLIDRUMVOL:
	.incbin "baserom.dol", 0x169594, 0x8
.global FarmFrame
FarmFrame:
	.incbin "baserom.dol", 0x16959C, 0x4
.global NumZoffasFiring
NumZoffasFiring:
	.incbin "baserom.dol", 0x1695A0, 0x4
.global LastNumZoffasFiring
LastNumZoffasFiring:
	.incbin "baserom.dol", 0x1695A4, 0x4
.global ZoffaAlter
ZoffaAlter:
	.incbin "baserom.dol", 0x1695A8, 0x4
.global UFOEXPLODEID
UFOEXPLODEID:
	.incbin "baserom.dol", 0x1695AC, 0x4
.global HovaRad
HovaRad:
	.incbin "baserom.dol", 0x1695B0, 0x4
.global HovaY
HovaY:
	.incbin "baserom.dol", 0x1695B4, 0xC
.global PropRad
PropRad:
	.incbin "baserom.dol", 0x1695C0, 0x4
.global PropY
PropY:
	.incbin "baserom.dol", 0x1695C4, 0x4
.global PropYOff
PropYOff:
	.incbin "baserom.dol", 0x1695C8, 0x4
.global BigRad
BigRad:
	.incbin "baserom.dol", 0x1695CC, 0x4
.global jonfirst
jonfirst:
	.incbin "baserom.dol", 0x1695D0, 0x4
.global ACTIVEBLIMPCOUNT
ACTIVEBLIMPCOUNT:
	.incbin "baserom.dol", 0x1695D4, 0x4
.global jtemp1
jtemp1:
	.incbin "baserom.dol", 0x1695D8, 0x4
.global SPACETORNADOSCALE
SPACETORNADOSCALE:
	.incbin "baserom.dol", 0x1695DC, 0x4
.global SPACEMINSPEEDIN
SPACEMINSPEEDIN:
	.incbin "baserom.dol", 0x1695E0, 0x4
.global HITSHIELDVOL
HITSHIELDVOL:
	.incbin "baserom.dol", 0x1695E4, 0x4
.global HITSHIELDVOLA
HITSHIELDVOLA:
	.incbin "baserom.dol", 0x1695E8, 0x4
.global SPACESTATIONEXPLODEVOL
SPACESTATIONEXPLODEVOL:
	.incbin "baserom.dol", 0x1695EC, 0x4
.global SHIELDSCALEY
SHIELDSCALEY:
	.incbin "baserom.dol", 0x1695F0, 0x4
.global FarmZepplinSpeed
FarmZepplinSpeed:
	.incbin "baserom.dol", 0x1695F4, 0x4
.global FarmZepplinTimer
FarmZepplinTimer:
	.incbin "baserom.dol", 0x1695F8, 0x4
.global CameraSeekSpeedAutoPilot
CameraSeekSpeedAutoPilot:
	.incbin "baserom.dol", 0x1695FC, 0x3C
.global ExtroTargAng
ExtroTargAng:
	.incbin "baserom.dol", 0x169638, 0x4
.global TORNADOINTERESTY
TORNADOINTERESTY:
	.incbin "baserom.dol", 0x16963C, 0x4
.global FFTWEENTIME
FFTWEENTIME:
	.incbin "baserom.dol", 0x169640, 0x4
.global ExtroChangeVal
ExtroChangeVal:
	.incbin "baserom.dol", 0x169644, 0x4
.global ExtroStillToEndTime
ExtroStillToEndTime:
	.incbin "baserom.dol", 0x169648, 0x4
.global ExtroSeekZeroTime
ExtroSeekZeroTime:
	.incbin "baserom.dol", 0x16964C, 0x4
.global idx
idx:
	.incbin "baserom.dol", 0x169650, 0x4
.global idy
idy:
	.incbin "baserom.dol", 0x169654, 0x4
.global idz
idz:
	.incbin "baserom.dol", 0x169658, 0x4
.global AsteroidDebug
AsteroidDebug:
	.incbin "baserom.dol", 0x16965C, 0x4
.global SINKTORPVOL
SINKTORPVOL:
	.incbin "baserom.dol", 0x169660, 0x4
.global SINKTORPPITCH
SINKTORPPITCH:
	.incbin "baserom.dol", 0x169664, 0x4
.global WBSCALE
WBSCALE:
	.incbin "baserom.dol", 0x169668, 0x20
.global WBMASKLEFTRAD
WBMASKLEFTRAD:
	.incbin "baserom.dol", 0x169688, 0x4
.global WBMASKRIGHTRAD
WBMASKRIGHTRAD:
	.incbin "baserom.dol", 0x16968C, 0x4
.global WBMASKEYESRAD
WBMASKEYESRAD:
	.incbin "baserom.dol", 0x169690, 0x4
.global WBMASKCHESTRAD
WBMASKCHESTRAD:
	.incbin "baserom.dol", 0x169694, 0x4
.global WBSKELTIME
WBSKELTIME:
	.incbin "baserom.dol", 0x169698, 0x4
.global WBSKELTIMERAND
WBSKELTIMERAND:
	.incbin "baserom.dol", 0x16969C, 0x4
.global EYEBOLTFIRESPEED
EYEBOLTFIRESPEED:
	.incbin "baserom.dol", 0x1696A0, 0x4
.global EYEBOLTFIRESCALEX
EYEBOLTFIRESCALEX:
	.incbin "baserom.dol", 0x1696A4, 0x4
.global EYEBOLTFIRESCALEY
EYEBOLTFIRESCALEY:
	.incbin "baserom.dol", 0x1696A8, 0x4
.global EYEBOLTFIREY
EYEBOLTFIREY:
	.incbin "baserom.dol", 0x1696AC, 0x4
.global WBANGSCALE
WBANGSCALE:
	.incbin "baserom.dol", 0x1696B0, 0x4
.global WBANGOFF
WBANGOFF:
	.incbin "baserom.dol", 0x1696B4, 0x4
.global WBANGSCALE2
WBANGSCALE2:
	.incbin "baserom.dol", 0x1696B8, 0x4
.global WBANGOFF2
WBANGOFF2:
	.incbin "baserom.dol", 0x1696BC, 0x4
.global WBANGSCALE3
WBANGSCALE3:
	.incbin "baserom.dol", 0x1696C0, 0x4
.global WBSNOWBALLSPEED
WBSNOWBALLSPEED:
	.incbin "baserom.dol", 0x1696C4, 0x4
.global WBSNOWCONESPEED
WBSNOWCONESPEED:
	.incbin "baserom.dol", 0x1696C8, 0x4
.global WBLeftStartFrame
WBLeftStartFrame:
	.incbin "baserom.dol", 0x1696CC, 0x4
.global WBLeftStopFrame
WBLeftStopFrame:
	.incbin "baserom.dol", 0x1696D0, 0x4
.global WBLeftStopTurnFrame
WBLeftStopTurnFrame:
	.incbin "baserom.dol", 0x1696D4, 0x4
.global WBDISTANCEYSPEED
WBDISTANCEYSPEED:
	.incbin "baserom.dol", 0x1696D8, 0x4
.global WBDISTANCEYTIME
WBDISTANCEYTIME:
	.incbin "baserom.dol", 0x1696DC, 0x4
.global WBDISTANCESPEED
WBDISTANCESPEED:
	.incbin "baserom.dol", 0x1696E0, 0x4
.global WBDISTANCETIME
WBDISTANCETIME:
	.incbin "baserom.dol", 0x1696E4, 0x4
.global WBLOLOSCALE
WBLOLOSCALE:
	.incbin "baserom.dol", 0x1696E8, 0x4
.global WBLOLOTILTX
WBLOLOTILTX:
	.incbin "baserom.dol", 0x1696EC, 0x4
.global WBAKUAKUSCALE
WBAKUAKUSCALE:
	.incbin "baserom.dol", 0x1696F0, 0x4
.global BALLATTACKVOL
BALLATTACKVOL:
	.incbin "baserom.dol", 0x1696F4, 0x4
.global BEAMVOL
BEAMVOL:
	.incbin "baserom.dol", 0x1696F8, 0x4
.global EYEATTACKVOL
EYEATTACKVOL:
	.incbin "baserom.dol", 0x1696FC, 0x4
.global CHESTATTACKAVOL
CHESTATTACKAVOL:
	.incbin "baserom.dol", 0x169700, 0x4
.global CHESTATTACKBVOL
CHESTATTACKBVOL:
	.incbin "baserom.dol", 0x169704, 0x4
.global CHESTATTACKSOUNDTIME
CHESTATTACKSOUNDTIME:
	.incbin "baserom.dol", 0x169708, 0x4
.global EYESTOPTIME
EYESTOPTIME:
	.incbin "baserom.dol", 0x16970C, 0xC
.global BIGSCALE
BIGSCALE:
	.incbin "baserom.dol", 0x169718, 0x4
.global SMALLSCALE
SMALLSCALE:
	.incbin "baserom.dol", 0x16971C, 0x4
.global FireFlyStartAngle
FireFlyStartAngle:
	.incbin "baserom.dol", 0x169720, 0x4
.global FIREFLYVICDANCETIME
FIREFLYVICDANCETIME:
	.incbin "baserom.dol", 0x169724, 0x4
.global MatchMaxDist
MatchMaxDist:
	.incbin "baserom.dol", 0x169728, 0x4
.global MatchMinDist
MatchMinDist:
	.incbin "baserom.dol", 0x16972C, 0x4
.global MatchTimer
MatchTimer:
	.incbin "baserom.dol", 0x169730, 0x4
.global PrePanTime
PrePanTime:
	.incbin "baserom.dol", 0x169734, 0x4
.global PanSeekSpeed
PanSeekSpeed:
	.incbin "baserom.dol", 0x169738, 0x4
.global MinPanSeekSpeed
MinPanSeekSpeed:
	.incbin "baserom.dol", 0x16973C, 0x4
.global FFINTROHEIGHT
FFINTROHEIGHT:
	.incbin "baserom.dol", 0x169740, 0x4
.global FFINTROCAMYOFF
FFINTROCAMYOFF:
	.incbin "baserom.dol", 0x169744, 0x4
.global WRStartAng
WRStartAng:
	.incbin "baserom.dol", 0x169748, 0x4
.global CrashteroidsStartAngle
CrashteroidsStartAngle:
	.incbin "baserom.dol", 0x16974C, 0x4
.global LighteningFallXMin
LighteningFallXMin:
	.incbin "baserom.dol", 0x169750, 0x4
.global LighteningFallXMax
LighteningFallXMax:
	.incbin "baserom.dol", 0x169754, 0x4
.global HailFallSpeed
HailFallSpeed:
	.incbin "baserom.dol", 0x169758, 0x4
.global HAILFLYUPSPEED
HAILFLYUPSPEED:
	.incbin "baserom.dol", 0x16975C, 0x4
.global HAILTIMERANGE
HAILTIMERANGE:
	.incbin "baserom.dol", 0x169760, 0x4
.global HAILHIDDENTIME
HAILHIDDENTIME:
	.incbin "baserom.dol", 0x169764, 0x4
.global HAILCOLLRAD
HAILCOLLRAD:
	.incbin "baserom.dol", 0x169768, 0x4
.global SkipNum
SkipNum:
	.incbin "baserom.dol", 0x16976C, 0x4
.global SkipLeftA
SkipLeftA:
	.incbin "baserom.dol", 0x169770, 0x4
.global SkipLeftB
SkipLeftB:
	.incbin "baserom.dol", 0x169774, 0x4
.global SkipLeftC
SkipLeftC:
	.incbin "baserom.dol", 0x169778, 0x8
.global BOLTHOMESEEKTIME
BOLTHOMESEEKTIME:
	.incbin "baserom.dol", 0x169780, 0x4
.global BOLTHOMESEEKSPEED
BOLTHOMESEEKSPEED:
	.incbin "baserom.dol", 0x169784, 0x4
.global WBTYPE2SCALETIME
WBTYPE2SCALETIME:
	.incbin "baserom.dol", 0x169788, 0x4
.global WBBOSSINTRODIST
WBBOSSINTRODIST:
	.incbin "baserom.dol", 0x16978C, 0xC
.global WBINTROLOOKAHEAD
WBINTROLOOKAHEAD:
	.incbin "baserom.dol", 0x169798, 0x4
.global AtlasEmbeddedFrame
AtlasEmbeddedFrame:
	.incbin "baserom.dol", 0x16979C, 0x4
.global BALLBUZZSLOPE
BALLBUZZSLOPE:
	.incbin "baserom.dol", 0x1697A0, 0x4
.global BALLBUZZMIN
BALLBUZZMIN:
	.incbin "baserom.dol", 0x1697A4, 0x4
.global BALLBUZZLIMCOS
BALLBUZZLIMCOS:
	.incbin "baserom.dol", 0x1697A8, 0x4
.global BALLHITVOLDIV
BALLHITVOLDIV:
	.incbin "baserom.dol", 0x1697AC, 0x4
.global BALLHITVOLBASE
BALLHITVOLBASE:
	.incbin "baserom.dol", 0x1697B0, 0x4
.global ATLASBOOSTVOL
ATLASBOOSTVOL:
	.incbin "baserom.dol", 0x1697B4, 0x4
.global BALLRUMBLESLOPE
BALLRUMBLESLOPE:
	.incbin "baserom.dol", 0x1697B8, 0x4
.global ATLASBOOSTSPEED
ATLASBOOSTSPEED:
	.incbin "baserom.dol", 0x1697BC, 0x4
.global ebgo
ebgo:
	.incbin "baserom.dol", 0x1697C0, 0x4
.global FORMPITCH
FORMPITCH:
	.incbin "baserom.dol", 0x1697C4, 0x4
.global ROKDEATHTIME
ROKDEATHTIME:
	.incbin "baserom.dol", 0x1697C8, 0x8
.global RUMZOOM
RUMZOOM:
	.incbin "baserom.dol", 0x1697D0, 0x4
.global ROKBPITCH
ROKBPITCH:
	.incbin "baserom.dol", 0x1697D4, 0x4
.global BOSSLANDVOL
BOSSLANDVOL:
	.incbin "baserom.dol", 0x1697D8, 0x4
.global BIGLANDVOL
BIGLANDVOL:
	.incbin "baserom.dol", 0x1697DC, 0x4
.global NumRockPanel
NumRockPanel:
	.incbin "baserom.dol", 0x1697E0, 0x4
.global RockPanelScale
RockPanelScale:
	.incbin "baserom.dol", 0x1697E4, 0x4
.global DISPLAYYSPEED
DISPLAYYSPEED:
	.incbin "baserom.dol", 0x1697E8, 0x4
.global RockPanelEdge
RockPanelEdge:
	.incbin "baserom.dol", 0x1697EC, 0x4
.global RockPanelSpacing
RockPanelSpacing:
	.incbin "baserom.dol", 0x1697F0, 0x4
.global RockPanelSlideSpeed
RockPanelSlideSpeed:
	.incbin "baserom.dol", 0x1697F4, 0x4
.global RockPanelRotIncX
RockPanelRotIncX:
	.incbin "baserom.dol", 0x1697F8, 0x8
.global RockPanelRotIncY
RockPanelRotIncY:
	.incbin "baserom.dol", 0x169800, 0x8
.global RockPanelRotIncZ
RockPanelRotIncZ:
	.incbin "baserom.dol", 0x169808, 0x8
.global RadarX
RadarX:
	.incbin "baserom.dol", 0x169810, 0x4
.global RadarY
RadarY:
	.incbin "baserom.dol", 0x169814, 0x4
.global RadarZ
RadarZ:
	.incbin "baserom.dol", 0x169818, 0x4
.global RADARSCALE
RADARSCALE:
	.incbin "baserom.dol", 0x16981C, 0x4
.global RADARSCALEX
RADARSCALEX:
	.incbin "baserom.dol", 0x169820, 0x8
.global RADARBASESCALE
RADARBASESCALE:
	.incbin "baserom.dol", 0x169828, 0x4
.global DOTSCALE
DOTSCALE:
	.incbin "baserom.dol", 0x16982C, 0x4
.global ROKAMBVOL
ROKAMBVOL:
	.incbin "baserom.dol", 0x169830, 0x4
.global ROKPITCH
ROKPITCH:
	.incbin "baserom.dol", 0x169834, 0x4
.global MINROKVOL
MINROKVOL:
	.incbin "baserom.dol", 0x169838, 0x4
.global TRAILFUDGE
TRAILFUDGE:
	.incbin "baserom.dol", 0x16983C, 0x8
.global ROCKSMASHVOL
ROCKSMASHVOL:
	.incbin "baserom.dol", 0x169844, 0x4
.global AngleY_836
AngleY_836:
	.incbin "baserom.dol", 0x169848, 0x8
.global OldBase_162
OldBase_162:
	.incbin "baserom.dol", 0x169850, 0x4
.global LastJeepWithinBounds_163
LastJeepWithinBounds_163:
	.incbin "baserom.dol", 0x169854, 0x8
.global effect_types_used
effect_types_used:
	.incbin "baserom.dol", 0x16985C, 0x4
.global CutoffCameraVec
CutoffCameraVec:
	.incbin "baserom.dol", 0x169860, 0xC
.global debris_render_group
debris_render_group:
	.incbin "baserom.dol", 0x16986C, 0x4
.global debbuffer
debbuffer:
	.incbin "baserom.dol", 0x169870, 0x4
.global mydebbuffersize
mydebbuffersize:
	.incbin "baserom.dol", 0x169874, 0x4
.global render_debris_enabled
render_debris_enabled:
	.incbin "baserom.dol", 0x169878, 0x4
.global debris_sfx
debris_sfx:
	.incbin "baserom.dol", 0x16987C, 0x4
.global testeffect
testeffect:
	.incbin "baserom.dol", 0x169880, 0x4
.global scaneffect
scaneffect:
	.incbin "baserom.dol", 0x169884, 0x4
.global edanim_base_scene
edanim_base_scene:
	.incbin "baserom.dol", 0x169888, 0xC
.global localframecount_156
localframecount_156:
	.incbin "baserom.dol", 0x169894, 0x4
.global edqseed
edqseed:
	.incbin "baserom.dol", 0x169898, 0x4
.global edbitsSfxVol
edbitsSfxVol:
	.incbin "baserom.dol", 0x16989C, 0x4
.global edfile_handle
edfile_handle:
	.incbin "baserom.dol", 0x1698A0, 0x4
.global edobj_base_scene
edobj_base_scene:
	.incbin "baserom.dol", 0x1698A4, 0x4
.global localframecount_156_N1
localframecount_156_N1:
	.incbin "baserom.dol", 0x1698A8, 0x20
.global do_cameras
do_cameras:
	.incbin "baserom.dol", 0x1698C8, 0x4
.global do_rigids
do_rigids:
	.incbin "baserom.dol", 0x1698CC, 0x4
.global do_chars
do_chars:
	.incbin "baserom.dol", 0x1698D0, 0x4
.global do_locator
do_locator:
	.incbin "baserom.dol", 0x1698D4, 0x4
.global set_cutscenecammtx
set_cutscenecammtx:
	.incbin "baserom.dol", 0x1698D8, 0x4
.global NuCutSceneCharacterRender
NuCutSceneCharacterRender:
	.incbin "baserom.dol", 0x1698DC, 0x8
.global NuCutSceneFindCharacters
NuCutSceneFindCharacters:
	.incbin "baserom.dol", 0x1698E4, 0x4
.global NuCutSceneCharacterCreateData
NuCutSceneCharacterCreateData:
	.incbin "baserom.dol", 0x1698E8, 0x4
.global NuCutSceneRigidCollisionCheck
NuCutSceneRigidCollisionCheck:
	.incbin "baserom.dol", 0x1698EC, 0x4
.global locatorfns
locatorfns:
	.incbin "baserom.dol", 0x1698F0, 0x4
.global NuBridge_base_scene
NuBridge_base_scene:
	.incbin "baserom.dol", 0x1698F4, 0x4
.global ropeu1
ropeu1:
	.incbin "baserom.dol", 0x1698F8, 0x4
.global ropev1
ropev1:
	.incbin "baserom.dol", 0x1698FC, 0x4
.global ropeu2
ropeu2:
	.incbin "baserom.dol", 0x169900, 0x4
.global ropev2
ropev2:
	.incbin "baserom.dol", 0x169904, 0x4
.global NuWindQS
NuWindQS:
	.incbin "baserom.dol", 0x169908, 0x4
.global TerrPlatDis
TerrPlatDis:
	.incbin "baserom.dol", 0x16990C, 0x4
.global isBitCountTable
isBitCountTable:
	.incbin "baserom.dol", 0x169910, 0x4
.global camfx
camfx:
	.incbin "baserom.dol", 0x169914, 0x4
.global clip_enable
clip_enable:
	.incbin "baserom.dol", 0x169918, 0x4
.global num_glass_inst
num_glass_inst:
	.incbin "baserom.dol", 0x16991C, 0x4
.global glass_mix
glass_mix:
	.incbin "baserom.dol", 0x169920, 0x4
.global glass_col_mix
glass_col_mix:
	.incbin "baserom.dol", 0x169924, 0x8
.global glass_mix_speed
glass_mix_speed:
	.incbin "baserom.dol", 0x16992C, 0x8
.global glass_enabled
glass_enabled:
	.incbin "baserom.dol", 0x169934, 0x4
.global glass_col_enabled
glass_col_enabled:
	.incbin "baserom.dol", 0x169938, 0x4
.global spectid
spectid:
	.incbin "baserom.dol", 0x16993C, 0x8
.global WATERBOSSGLASSMIX
WATERBOSSGLASSMIX:
	.incbin "baserom.dol", 0x169944, 0x4
.global ANGELGLASSMIX
ANGELGLASSMIX:
	.incbin "baserom.dol", 0x169948, 0x4
.global MAXGLASSMIX
MAXGLASSMIX:
	.incbin "baserom.dol", 0x16994C, 0x4
.global sysinit
sysinit:
	.incbin "baserom.dol", 0x169950, 0x4
.global sysgobj
sysgobj:
	.incbin "baserom.dol", 0x169954, 0x4
.global num_divisions
num_divisions:
	.incbin "baserom.dol", 0x169958, 0x4
.global num_wobbles
num_wobbles:
	.incbin "baserom.dol", 0x16995C, 0x8
.global initialised
initialised:
	.incbin "baserom.dol", 0x169964, 0x4
.global maxlights
maxlights:
	.incbin "baserom.dol", 0x169968, 0x4
.global numlights
numlights:
	.incbin "baserom.dol", 0x16996C, 0x4
.global freelight
freelight:
	.incbin "baserom.dol", 0x169970, 0x4
.global alloclight
alloclight:
	.incbin "baserom.dol", 0x169974, 0x4
.global num_stored_lights
num_stored_lights:
	.incbin "baserom.dol", 0x169978, 0x4
.global currentlight1
currentlight1:
	.incbin "baserom.dol", 0x16997C, 0x4
.global currentlight2
currentlight2:
	.incbin "baserom.dol", 0x169980, 0x4
.global currentlight3
currentlight3:
	.incbin "baserom.dol", 0x169984, 0x4
.global current_lights_stored
current_lights_stored:
	.incbin "baserom.dol", 0x169988, 0x4
.global HazeValue
HazeValue:
	.incbin "baserom.dol", 0x16998C, 0x4
.global NuLgtSeed
NuLgtSeed:
	.incbin "baserom.dol", 0x169990, 0x4
.global initialised_N1
initialised_N1:
	.incbin "baserom.dol", 0x169994, 0x4
.global nummtls
nummtls:
	.incbin "baserom.dol", 0x169998, 0x4
.global smlist
smlist:
	.incbin "baserom.dol", 0x16999C, 0x4
.global otitem_cnt
otitem_cnt:
	.incbin "baserom.dol", 0x1699A0, 0x4
.global faceonitem_cnt
faceonitem_cnt:
	.incbin "baserom.dol", 0x1699A4, 0x4
.global faceonmtl_cnt
faceonmtl_cnt:
	.incbin "baserom.dol", 0x1699A8, 0x4
.global stenitem_cnt
stenitem_cnt:
	.incbin "baserom.dol", 0x1699AC, 0x4
.global dynamic_glass_item_cnt
dynamic_glass_item_cnt:
	.incbin "baserom.dol", 0x1699B0, 0x4
.global wateritem_cnt
wateritem_cnt:
	.incbin "baserom.dol", 0x1699B4, 0x4
.global stencil_mode
stencil_mode:
	.incbin "baserom.dol", 0x1699B8, 0x8
.global force_glass_screencopy_enable
force_glass_screencopy_enable:
	.incbin "baserom.dol", 0x1699C0, 0x4
.global IsStencil
IsStencil:
	.incbin "baserom.dol", 0x1699C4, 0x4
.global IsObjLit
IsObjLit:
	.incbin "baserom.dol", 0x1699C8, 0x4
.global sinetime_246
sinetime_246:
	.incbin "baserom.dol", 0x1699CC, 0x4
.global rndrmtx_cnt
rndrmtx_cnt:
	.incbin "baserom.dol", 0x1699D0, 0x4
.global geomitem_cnt
geomitem_cnt:
	.incbin "baserom.dol", 0x1699D4, 0x4
.global rndrmtx_cnt_max
rndrmtx_cnt_max:
	.incbin "baserom.dol", 0x1699D8, 0x4
.global geomitem_cnt_max
geomitem_cnt_max:
	.incbin "baserom.dol", 0x1699DC, 0x4
.global rndr_blend_shape_deformer_wt_cnt
rndr_blend_shape_deformer_wt_cnt:
	.incbin "baserom.dol", 0x1699E0, 0x4
.global rndr_blend_shape_deformer_wt_ptrs_cnt
rndr_blend_shape_deformer_wt_ptrs_cnt:
	.incbin "baserom.dol", 0x1699E4, 0x4
.global fog_enabled
fog_enabled:
	.incbin "baserom.dol", 0x1699E8, 0x4
.global nurndr_forced_mtl
nurndr_forced_mtl:
	.incbin "baserom.dol", 0x1699EC, 0x4
.global nurndr_forced_mtl_table
nurndr_forced_mtl_table:
	.incbin "baserom.dol", 0x1699F0, 0x4
.global padflag
padflag:
	.incbin "baserom.dol", 0x1699F4, 0x4
.global hgobj_enabled_231
hgobj_enabled_231:
	.incbin "baserom.dol", 0x1699F8, 0x4
.global initialised_N2
initialised_N2:
	.incbin "baserom.dol", 0x1699FC, 0x4
.global tpid
tpid:
	.incbin "baserom.dol", 0x169A00, 0x4
.global ntex
ntex:
	.incbin "baserom.dol", 0x169A04, 0x4
.global backbuffer_tid
backbuffer_tid:
	.incbin "baserom.dol", 0x169A08, 0x4
.global force_decal
force_decal:
	.incbin "baserom.dol", 0x169A0C, 0x4
.global sys_progs
sys_progs:
	.incbin "baserom.dol", 0x169A10, 0x4
.global ntal_first
ntal_first:
	.incbin "baserom.dol", 0x169A14, 0x4
.global ntal_free
ntal_free:
	.incbin "baserom.dol", 0x169A18, 0x4
.global nwater_mtl
nwater_mtl:
	.incbin "baserom.dol", 0x169A1C, 0x4
.global nwinst
nwinst:
	.incbin "baserom.dol", 0x169A20, 0x4
.global theta_step
theta_step:
	.incbin "baserom.dol", 0x169A24, 0x4
.global dynamicWaterEnabled
dynamicWaterEnabled:
	.incbin "baserom.dol", 0x169A28, 0x4
.global dynamicWaterBlurDist
dynamicWaterBlurDist:
	.incbin "baserom.dol", 0x169A2C, 0x4
.global dynamicWaterDropFrequency
dynamicWaterDropFrequency:
	.incbin "baserom.dol", 0x169A30, 0x4
.global dynamicWaterDropMinScale
dynamicWaterDropMinScale:
	.incbin "baserom.dol", 0x169A34, 0x4
.global dynamicWaterDropMaxScale
dynamicWaterDropMaxScale:
	.incbin "baserom.dol", 0x169A38, 0x4
.global dynamicWaterTurbulenceScale
dynamicWaterTurbulenceScale:
	.incbin "baserom.dol", 0x169A3C, 0x4
.global dynamicWaterTurbulenceFrequency
dynamicWaterTurbulenceFrequency:
	.incbin "baserom.dol", 0x169A40, 0x4
.global dynamicWaterTurbulenceStrength
dynamicWaterTurbulenceStrength:
	.incbin "baserom.dol", 0x169A44, 0x4
.global dynamicWaterScale
dynamicWaterScale:
	.incbin "baserom.dol", 0x169A48, 0x4
.global dynamicWaterBlend
dynamicWaterBlend:
	.incbin "baserom.dol", 0x169A4C, 0x4
.global dynamicWaterInitialised
dynamicWaterInitialised:
	.incbin "baserom.dol", 0x169A50, 0x4
.global watervisible
watervisible:
	.incbin "baserom.dol", 0x169A54, 0x4
.global theta_213
theta_213:
	.incbin "baserom.dol", 0x169A58, 0x4
.global filebuffer
filebuffer:
	.incbin "baserom.dol", 0x169A5C, 0x4
.global blkcnt
blkcnt:
	.incbin "baserom.dol", 0x169A60, 0x8
.global badGameDisc
badGameDisc:
	.incbin "baserom.dol", 0x169A68, 0x4
.global currentpointer
currentpointer:
	.incbin "baserom.dol", 0x169A6C, 0x4
.global bytesleft
bytesleft:
	.incbin "baserom.dol", 0x169A70, 0x4
.global thisbytesread
thisbytesread:
	.incbin "baserom.dol", 0x169A74, 0x4
.global loadscreen
loadscreen:
	.incbin "baserom.dol", 0x169A78, 0xC
.global loadscreenfadedir
loadscreenfadedir:
	.incbin "baserom.dol", 0x169A84, 0x4
.global datacounter
datacounter:
	.incbin "baserom.dol", 0x169A88, 0x4
.global totalbytesread
totalbytesread:
	.incbin "baserom.dol", 0x169A8C, 0x8
.global totalloc
totalloc:
	.incbin "baserom.dol", 0x169A94, 0x8
.global memexternal
memexternal:
	.incbin "baserom.dol", 0x169A9C, 0x4
.global highallocaddr
highallocaddr:
	.incbin "baserom.dol", 0x169AA0, 0x4
.global peakallocaddr
peakallocaddr:
	.incbin "baserom.dol", 0x169AA4, 0x4
.global malloced
malloced:
	.incbin "baserom.dol", 0x169AA8, 0x4
.global global_rand
global_rand:
	.incbin "baserom.dol", 0x169AAC, 0x4
.global fseed
fseed:
	.incbin "baserom.dol", 0x169AB0, 0x4
.global backbuffer_grabbed_this_frame_N1
backbuffer_grabbed_this_frame_N1:
	.incbin "baserom.dol", 0x169AB4, 0x4
.global nusound_fade_start
nusound_fade_start:
	.incbin "baserom.dol", 0x169AB8, 0x4
.global nusound_fade_end
nusound_fade_end:
	.incbin "baserom.dol", 0x169ABC, 0x4
.global GLOBALOFFSET
GLOBALOFFSET:
	.incbin "baserom.dol", 0x169AC0, 0x14
.global saveload_cardchanged
saveload_cardchanged:
	.incbin "baserom.dol", 0x169AD4, 0x4
.global saveload_freespace
saveload_freespace:
	.incbin "baserom.dol", 0x169AD8, 0x4
.global saveload_cardtype
saveload_cardtype:
	.incbin "baserom.dol", 0x169ADC, 0x4
.global saveload_error
saveload_error:
	.incbin "baserom.dol", 0x169AE0, 0x4
.global PadRecInfo
PadRecInfo:
	.incbin "baserom.dol", 0x169AE4, 0x4
.global nuvideo_global_vbcnt
nuvideo_global_vbcnt:
	.incbin "baserom.dol", 0x169AE8, 0xC
.global ps2_scratch_free
ps2_scratch_free:
	.incbin "baserom.dol", 0x169AF4, 0x4
.global dmatag_174
dmatag_174:
	.incbin "baserom.dol", 0x169AF8, 0x4
.global lbl_803D323C
lbl_803D323C:
	.incbin "baserom.dol", 0x169AFC, 0x24
.global maxblend_cnt
maxblend_cnt:
	.incbin "baserom.dol", 0x169B20, 0x4
.global maxblend_cntcnt
maxblend_cntcnt:
	.incbin "baserom.dol", 0x169B24, 0x8
.global gravdiv
gravdiv:
	.incbin "baserom.dol", 0x169B2C, 0x4
.global XboxEffectSystemInitialised
XboxEffectSystemInitialised:
	.incbin "baserom.dol", 0x169B30, 0x10
.global seekoffset
seekoffset:
	.incbin "baserom.dol", 0x169B40, 0x4
.global currentfd
currentfd:
	.incbin "baserom.dol", 0x169B44, 0x4
.global filelength
filelength:
	.incbin "baserom.dol", 0x169B48, 0x4
.global fileoffset
fileoffset:
	.incbin "baserom.dol", 0x169B4C, 0x4
.global amread
amread:
	.incbin "baserom.dol", 0x169B50, 0x4
.global FSStart
FSStart:
	.incbin "baserom.dol", 0x169B54, 0x4
.global ProgressPercent
ProgressPercent:
	.incbin "baserom.dol", 0x169B58, 0x4
.global GBAStatus
GBAStatus:
	.incbin "baserom.dol", 0x169B5C, 0x4
.global nchecks
nchecks:
	.incbin "baserom.dol", 0x169B60, 0x8
.global DemoFirstFrame
DemoFirstFrame:
	.incbin "baserom.dol", 0x169B68, 0x4
.global GPHangWorkaround
GPHangWorkaround:
	.incbin "baserom.dol", 0x169B6C, 0x4
.global do_copy
do_copy:
	.incbin "baserom.dol", 0x169B70, 0x4
.global totalramavailable
totalramavailable:
	.incbin "baserom.dol", 0x169B74, 0x4
.global totalprogramsize
totalprogramsize:
	.incbin "baserom.dol", 0x169B78, 0x10
.global fontShift
fontShift:
	.incbin "baserom.dol", 0x169B88, 0x8
.global DemoStatEnable
DemoStatEnable:
	.incbin "baserom.dol", 0x169B90, 0x20
.global GS_CurrentVertDesc
GS_CurrentVertDesc:
	.incbin "baserom.dol", 0x169BB0, 0x4
.global GS_ScreenWidth
GS_ScreenWidth:
	.incbin "baserom.dol", 0x169BB4, 0x4
.global GS_ScreenHeight
GS_ScreenHeight:
	.incbin "baserom.dol", 0x169BB8, 0x8
.global GS_BgColourBlack
GS_BgColourBlack:
	.incbin "baserom.dol", 0x169BC0, 0x4
.global GS_BgColour
GS_BgColour:
	.incbin "baserom.dol", 0x169BC4, 0x1
.global lbl_803D3305
lbl_803D3305:
	.incbin "baserom.dol", 0x169BC5, 0x1
.global lbl_803D3306
lbl_803D3306:
	.incbin "baserom.dol", 0x169BC6, 0x1
.global lbl_803D3307
lbl_803D3307:
	.incbin "baserom.dol", 0x169BC7, 0x1
.global GS_ZCompareMode
GS_ZCompareMode:
	.incbin "baserom.dol", 0x169BC8, 0x4
.global GS_ZCmpEnable
GS_ZCmpEnable:
	.incbin "baserom.dol", 0x169BCC, 0x3
.global lbl_803D330F
lbl_803D330F:
	.incbin "baserom.dol", 0x169BCF, 0x1
.global GS_ZCmpUpdate
GS_ZCmpUpdate:
	.incbin "baserom.dol", 0x169BD0, 0x3
.global lbl_803D3313
lbl_803D3313:
	.incbin "baserom.dol", 0x169BD3, 0x5
.global GS_BlendEnable
GS_BlendEnable:
	.incbin "baserom.dol", 0x169BD8, 0x4
.global GS_BlendSrc
GS_BlendSrc:
	.incbin "baserom.dol", 0x169BDC, 0x4
.global GS_BlendDest
GS_BlendDest:
	.incbin "baserom.dol", 0x169BE0, 0x4
.global GS_Parallax
GS_Parallax:
	.incbin "baserom.dol", 0x169BE4, 0x4
.global GS_WorldMatIsIdentity
GS_WorldMatIsIdentity:
	.incbin "baserom.dol", 0x169BE8, 0x4
.global GS_IsNewFrame
GS_IsNewFrame:
	.incbin "baserom.dol", 0x169BEC, 0x4
.global cufps
cufps:
	.incbin "baserom.dol", 0x169BF0, 0x4
.global avfps
avfps:
	.incbin "baserom.dol", 0x169BF4, 0x10
.global VersionDisplayFlag
VersionDisplayFlag:
	.incbin "baserom.dol", 0x169C04, 0x4
.global GS_ForceNoAlphaCompareFlag
GS_ForceNoAlphaCompareFlag:
	.incbin "baserom.dol", 0x169C08, 0x4
.global PrintError
PrintError:
	.incbin "baserom.dol", 0x169C0C, 0x10
.global GX_White
GX_White:
	.incbin "baserom.dol", 0x169C1C, 0x8
.global GS_MaterialSourceAmbient
GS_MaterialSourceAmbient:
	.incbin "baserom.dol", 0x169C24, 0x4
.global GS_MaterialSourceEmissive
GS_MaterialSourceEmissive:
	.incbin "baserom.dol", 0x169C28, 0x4
.global GS_EnableColorVertexFlag
GS_EnableColorVertexFlag:
	.incbin "baserom.dol", 0x169C2C, 0x4
.global GS_EnableSpecularFlag
GS_EnableSpecularFlag:
	.incbin "baserom.dol", 0x169C30, 0x4
.global GS_EnableLightingFlag
GS_EnableLightingFlag:
	.incbin "baserom.dol", 0x169C34, 0x24
.global ShadowColour
ShadowColour:
	.incbin "baserom.dol", 0x169C58, 0x8
.global GXWhite
GXWhite:
	.incbin "baserom.dol", 0x169C60, 0x4
.global QBlockverts
QBlockverts:
	.incbin "baserom.dol", 0x169C64, 0xC
.global QuadListColour
QuadListColour:
	.incbin "baserom.dol", 0x169C70, 0x8
.global GS_TexAllocs
GS_TexAllocs:
	.incbin "baserom.dol", 0x169C78, 0x4
.global GS_CurrentTexture
GS_CurrentTexture:
	.incbin "baserom.dol", 0x169C7C, 0x4
.global DoNotSiwzzle
DoNotSiwzzle:
	.incbin "baserom.dol", 0x169C80, 0x4
.global GS_TexInitFlag
GS_TexInitFlag:
	.incbin "baserom.dol", 0x169C84, 0x4
.global ShadowBodge
ShadowBodge:
	.incbin "baserom.dol", 0x169C88, 0x4
.global maxstage_189
maxstage_189:
	.incbin "baserom.dol", 0x169C8C, 0x3
.global lbl_803D33CF
lbl_803D33CF:
	.incbin "baserom.dol", 0x169C8F, 0x1
.global curstream
curstream:
	.incbin "baserom.dol", 0x169C90, 0x4
.global trackcountforintro
trackcountforintro:
	.incbin "baserom.dol", 0x169C94, 0x4
.global tracknext
tracknext:
	.incbin "baserom.dol", 0x169C98, 0x4
.global tracknextvol
tracknextvol:
	.incbin "baserom.dol", 0x169C9C, 0x4
.global tracknextchan
tracknextchan:
	.incbin "baserom.dol", 0x169CA0, 0x8
.global __AMPendingReads
__AMPendingReads:
	.incbin "baserom.dol", 0x169CA8, 0x8
.global SS_TrackDone
SS_TrackDone:
	.incbin "baserom.dol", 0x169CB0, 0x8
.global pSPTable1
pSPTable1:
	.incbin "baserom.dol", 0x169CB8, 0x4
.global pSPTable2
pSPTable2:
	.incbin "baserom.dol", 0x169CBC, 0x4
.global RemapPtr
RemapPtr:
	.incbin "baserom.dol", 0x169CC0, 0x4
.global SS_Paused
SS_Paused:
	.incbin "baserom.dol", 0x169CC4, 0x4
.global SS_CurrentBank
SS_CurrentBank:
	.incbin "baserom.dol", 0x169CC8, 0x8
.global SS_TrackPlayingFlag
SS_TrackPlayingFlag:
	.incbin "baserom.dol", 0x169CD0, 0x4
.global SS_CurrentChannel
SS_CurrentChannel:
	.incbin "baserom.dol", 0x169CD4, 0x4
.global frame_12
frame_12:
	.incbin "baserom.dol", 0x169CD8, 0x4
.global frame_2_13
frame_2_13:
	.incbin "baserom.dol", 0x169CDC, 0x4
.global pcount_f_14
pcount_f_14:
	.incbin "baserom.dol", 0x169CE0, 0x8
.global maxTime_25
maxTime_25:
	.incbin "baserom.dol", 0x169CE8, 0x8
.global minTime_26
minTime_26:
	.incbin "baserom.dol", 0x169CF0, 0x8
.global totalTime_27
totalTime_27:
	.incbin "baserom.dol", 0x169CF8, 0x8
.global ed_loc
ed_loc:
	.incbin "baserom.dol", 0x169D00, 0x4
.global GS_BufferSize
GS_BufferSize:
	.incbin "baserom.dol", 0x169D04, 0x4
.global sectorsizeok
sectorsizeok:
	.incbin "baserom.dol", 0x169D08, 0x4
.global NintendoErrorCode
NintendoErrorCode:
	.incbin "baserom.dol", 0x169D0C, 0x8
.global saveload_status
saveload_status:
	.incbin "baserom.dol", 0x169D14, 0x4
.global HeaderFailed
HeaderFailed:
	.incbin "baserom.dol", 0x169D18, 0x4
.global CheckSumFailed
CheckSumFailed:
	.incbin "baserom.dol", 0x169D1C, 0x4
.global chksize
chksize:
	.incbin "baserom.dol", 0x169D20, 0x4
.global CrashFileEnclosed
CrashFileEnclosed:
	.incbin "baserom.dol", 0x169D24, 0x8
.global xytype
xytype:
	.incbin "baserom.dol", 0x169D2C, 0x4
.global shaderselected
shaderselected:
	.incbin "baserom.dol", 0x169D30, 0x4
.global ShaderHasNormals
ShaderHasNormals:
	.incbin "baserom.dol", 0x169D34, 0x4
.global defaultShader
defaultShader:
	.incbin "baserom.dol", 0x169D38, 0x4
.global currentLevel
currentLevel:
	.incbin "baserom.dol", 0x169D3C, 0x4
.global nobypass
nobypass:
	.incbin "baserom.dol", 0x169D40, 0x4
.global bypassEffectShaders
bypassEffectShaders:
	.incbin "baserom.dol", 0x169D44, 0x4
.global ForceShader
ForceShader:
	.incbin "baserom.dol", 0x169D48, 0x4
.global NEW_CV_COLOR_TYPE
NEW_CV_COLOR_TYPE:
	.incbin "baserom.dol", 0x169D4C, 0x4
.global newCV_LIGHTS_OFF
newCV_LIGHTS_OFF:
	.incbin "baserom.dol", 0x169D50, 0x4
.global refract
refract:
	.incbin "baserom.dol", 0x169D54, 0x4
.global currentshader
currentshader:
	.incbin "baserom.dol", 0x169D58, 0x4
.global currentvtxtype
currentvtxtype:
	.incbin "baserom.dol", 0x169D5C, 0x4
.global IsWaterObj
IsWaterObj:
	.incbin "baserom.dol", 0x169D60, 0x4
.global IsGlassObj
IsGlassObj:
	.incbin "baserom.dol", 0x169D64, 0x4
.global glassmix
glassmix:
	.incbin "baserom.dol", 0x169D68, 0xC
.global c_one
c_one:
	.incbin "baserom.dol", 0x169D74, 0x4
.global SkinLights
SkinLights:
	.incbin "baserom.dol", 0x169D78, 0x4
.global MaxSkinVerts
MaxSkinVerts:
	.incbin "baserom.dol", 0x169D7C, 0xC
.global GotPad
GotPad:
	.incbin "baserom.dol", 0x169D88, 0x4
.global malloctotalram
malloctotalram:
	.incbin "baserom.dol", 0x169D8C, 0x4
.global msize
msize:
	.incbin "baserom.dol", 0x169D90, 0x4
.global mah
mah:
	.incbin "baserom.dol", 0x169D94, 0x4
.global TVertices
TVertices:
	.incbin "baserom.dol", 0x169D98, 0x8
.global first_162
first_162:
	.incbin "baserom.dol", 0x169DA0, 0x8
.global lbl_803D34E8
lbl_803D34E8:
	.incbin "baserom.dol", 0x169DA8, 0x8
.global lbl_803D34F0
lbl_803D34F0:
	.incbin "baserom.dol", 0x169DB0, 0x8
.global lbl_803D34F8
lbl_803D34F8:
	.incbin "baserom.dol", 0x169DB8, 0x8
.global lbl_803D3500
lbl_803D3500:
	.incbin "baserom.dol", 0x169DC0, 0x8
.global lbl_803D3508
lbl_803D3508:
	.incbin "baserom.dol", 0x169DC8, 0x8
.global lbl_803D3510
lbl_803D3510:
	.incbin "baserom.dol", 0x169DD0, 0x8
.global lbl_803D3518
lbl_803D3518:
	.incbin "baserom.dol", 0x169DD8, 0x8
.global lbl_803D3520
lbl_803D3520:
	.incbin "baserom.dol", 0x169DE0, 0x8
.global lbl_803D3528
lbl_803D3528:
	.incbin "baserom.dol", 0x169DE8, 0x8
.global lbl_803D3530
lbl_803D3530:
	.incbin "baserom.dol", 0x169DF0, 0x8
.global lbl_803D3538
lbl_803D3538:
	.incbin "baserom.dol", 0x169DF8, 0x8
.global lbl_803D3540
lbl_803D3540:
	.incbin "baserom.dol", 0x169E00, 0x8
.global lbl_803D3548
lbl_803D3548:
	.incbin "baserom.dol", 0x169E08, 0x8
.global lbl_803D3550
lbl_803D3550:
	.incbin "baserom.dol", 0x169E10, 0x8
.global lbl_803D3558
lbl_803D3558:
	.incbin "baserom.dol", 0x169E18, 0x8
.global lbl_803D3560
lbl_803D3560:
	.incbin "baserom.dol", 0x169E20, 0x8
.global lbl_803D3568
lbl_803D3568:
	.incbin "baserom.dol", 0x169E28, 0x8
.global lbl_803D3570
lbl_803D3570:
	.incbin "baserom.dol", 0x169E30, 0x8
.global lbl_803D3578
lbl_803D3578:
	.incbin "baserom.dol", 0x169E38, 0x8
.global lbl_803D3580
lbl_803D3580:
	.incbin "baserom.dol", 0x169E40, 0x8
.global lbl_803D3588
lbl_803D3588:
	.incbin "baserom.dol", 0x169E48, 0x8
.global lbl_803D3590
lbl_803D3590:
	.incbin "baserom.dol", 0x169E50, 0x8
.global lbl_803D3598
lbl_803D3598:
	.incbin "baserom.dol", 0x169E58, 0x8
.global lbl_803D35A0
lbl_803D35A0:
	.incbin "baserom.dol", 0x169E60, 0x8
.global lbl_803D35A8
lbl_803D35A8:
	.incbin "baserom.dol", 0x169E68, 0x8
.global lbl_803D35B0
lbl_803D35B0:
	.incbin "baserom.dol", 0x169E70, 0x8
.global lbl_803D35B8
lbl_803D35B8:
	.incbin "baserom.dol", 0x169E78, 0x8
.global lbl_803D35C0
lbl_803D35C0:
	.incbin "baserom.dol", 0x169E80, 0x8
.global lbl_803D35C8
lbl_803D35C8:
	.incbin "baserom.dol", 0x169E88, 0x4
.global lbl_803D35CC
lbl_803D35CC:
	.incbin "baserom.dol", 0x169E8C, 0x4
.global lbl_803D35D0
lbl_803D35D0:
	.incbin "baserom.dol", 0x169E90, 0x8
.global lbl_803D35D8
lbl_803D35D8:
	.incbin "baserom.dol", 0x169E98, 0x8
.global lbl_803D35E0
lbl_803D35E0:
	.incbin "baserom.dol", 0x169EA0, 0x8
.global lbl_803D35E8
lbl_803D35E8:
	.incbin "baserom.dol", 0x169EA8, 0x8
.global lbl_803D35F0
lbl_803D35F0:
	.incbin "baserom.dol", 0x169EB0, 0x8
.global lbl_803D35F8
lbl_803D35F8:
	.incbin "baserom.dol", 0x169EB8, 0x8
.global lbl_803D3600
lbl_803D3600:
	.incbin "baserom.dol", 0x169EC0, 0x8
.global lbl_803D3608
lbl_803D3608:
	.incbin "baserom.dol", 0x169EC8, 0x8
.global lbl_803D3610
lbl_803D3610:
	.incbin "baserom.dol", 0x169ED0, 0x8
.global lbl_803D3618
lbl_803D3618:
	.incbin "baserom.dol", 0x169ED8, 0x8
.global lbl_803D3620
lbl_803D3620:
	.incbin "baserom.dol", 0x169EE0, 0x8
.global lbl_803D3628
lbl_803D3628:
	.incbin "baserom.dol", 0x169EE8, 0x8
.global lbl_803D3630
lbl_803D3630:
	.incbin "baserom.dol", 0x169EF0, 0x8
.global lbl_803D3638
lbl_803D3638:
	.incbin "baserom.dol", 0x169EF8, 0x8
.global lbl_803D3640
lbl_803D3640:
	.incbin "baserom.dol", 0x169F00, 0x8
.global lbl_803D3648
lbl_803D3648:
	.incbin "baserom.dol", 0x169F08, 0x8
.global lbl_803D3650
lbl_803D3650:
	.incbin "baserom.dol", 0x169F10, 0x8
.global lbl_803D3658
lbl_803D3658:
	.incbin "baserom.dol", 0x169F18, 0x8
.global lbl_803D3660
lbl_803D3660:
	.incbin "baserom.dol", 0x169F20, 0x8
.global lbl_803D3668
lbl_803D3668:
	.incbin "baserom.dol", 0x169F28, 0x8
.global lbl_803D3670
lbl_803D3670:
	.incbin "baserom.dol", 0x169F30, 0x8
.global lbl_803D3678
lbl_803D3678:
	.incbin "baserom.dol", 0x169F38, 0x8
.global lbl_803D3680
lbl_803D3680:
	.incbin "baserom.dol", 0x169F40, 0x8
.global lbl_803D3688
lbl_803D3688:
	.incbin "baserom.dol", 0x169F48, 0x8
.global lbl_803D3690
lbl_803D3690:
	.incbin "baserom.dol", 0x169F50, 0x8
.global lbl_803D3698
lbl_803D3698:
	.incbin "baserom.dol", 0x169F58, 0x8
.global lbl_803D36A0
lbl_803D36A0:
	.incbin "baserom.dol", 0x169F60, 0x8
.global lbl_803D36A8
lbl_803D36A8:
	.incbin "baserom.dol", 0x169F68, 0x8
.global lbl_803D36B0
lbl_803D36B0:
	.incbin "baserom.dol", 0x169F70, 0x8
.global lbl_803D36B8
lbl_803D36B8:
	.incbin "baserom.dol", 0x169F78, 0x8
.global lbl_803D36C0
lbl_803D36C0:
	.incbin "baserom.dol", 0x169F80, 0x8
.global lbl_803D36C8
lbl_803D36C8:
	.incbin "baserom.dol", 0x169F88, 0x8
.global lbl_803D36D0
lbl_803D36D0:
	.incbin "baserom.dol", 0x169F90, 0x8
.global lbl_803D36D8
lbl_803D36D8:
	.incbin "baserom.dol", 0x169F98, 0x8
.global lbl_803D36E0
lbl_803D36E0:
	.incbin "baserom.dol", 0x169FA0, 0x8
.global lbl_803D36E8
lbl_803D36E8:
	.incbin "baserom.dol", 0x169FA8, 0x8
.global lbl_803D36F0
lbl_803D36F0:
	.incbin "baserom.dol", 0x169FB0, 0x8
.global lbl_803D36F8
lbl_803D36F8:
	.incbin "baserom.dol", 0x169FB8, 0x8
.global lbl_803D3700
lbl_803D3700:
	.incbin "baserom.dol", 0x169FC0, 0x8
.global lbl_803D3708
lbl_803D3708:
	.incbin "baserom.dol", 0x169FC8, 0x8
.global lbl_803D3710
lbl_803D3710:
	.incbin "baserom.dol", 0x169FD0, 0x8
.global lbl_803D3718
lbl_803D3718:
	.incbin "baserom.dol", 0x169FD8, 0x8
.global lbl_803D3720
lbl_803D3720:
	.incbin "baserom.dol", 0x169FE0, 0x8
.global lbl_803D3728
lbl_803D3728:
	.incbin "baserom.dol", 0x169FE8, 0x8
.global lbl_803D3730
lbl_803D3730:
	.incbin "baserom.dol", 0x169FF0, 0x8
.global lbl_803D3738
lbl_803D3738:
	.incbin "baserom.dol", 0x169FF8, 0x8
.global lbl_803D3740
lbl_803D3740:
	.incbin "baserom.dol", 0x16A000, 0x8
.global lbl_803D3748
lbl_803D3748:
	.incbin "baserom.dol", 0x16A008, 0x8
.global lbl_803D3750
lbl_803D3750:
	.incbin "baserom.dol", 0x16A010, 0x8
.global lbl_803D3758
lbl_803D3758:
	.incbin "baserom.dol", 0x16A018, 0x8
.global lbl_803D3760
lbl_803D3760:
	.incbin "baserom.dol", 0x16A020, 0x8
.global lbl_803D3768
lbl_803D3768:
	.incbin "baserom.dol", 0x16A028, 0x8
.global lbl_803D3770
lbl_803D3770:
	.incbin "baserom.dol", 0x16A030, 0x8
.global lbl_803D3778
lbl_803D3778:
	.incbin "baserom.dol", 0x16A038, 0x8
.global lbl_803D3780
lbl_803D3780:
	.incbin "baserom.dol", 0x16A040, 0x8
.global lbl_803D3788
lbl_803D3788:
	.incbin "baserom.dol", 0x16A048, 0x8
.global lbl_803D3790
lbl_803D3790:
	.incbin "baserom.dol", 0x16A050, 0x8
.global lbl_803D3798
lbl_803D3798:
	.incbin "baserom.dol", 0x16A058, 0x8
.global lbl_803D37A0
lbl_803D37A0:
	.incbin "baserom.dol", 0x16A060, 0x8
.global lbl_803D37A8
lbl_803D37A8:
	.incbin "baserom.dol", 0x16A068, 0x8
.global lbl_803D37B0
lbl_803D37B0:
	.incbin "baserom.dol", 0x16A070, 0x8
.global lbl_803D37B8
lbl_803D37B8:
	.incbin "baserom.dol", 0x16A078, 0x8
.global lbl_803D37C0
lbl_803D37C0:
	.incbin "baserom.dol", 0x16A080, 0x8
.global lbl_803D37C8
lbl_803D37C8:
	.incbin "baserom.dol", 0x16A088, 0x8
.global lbl_803D37D0
lbl_803D37D0:
	.incbin "baserom.dol", 0x16A090, 0x8
.global lbl_803D37D8
lbl_803D37D8:
	.incbin "baserom.dol", 0x16A098, 0x8
.global lbl_803D37E0
lbl_803D37E0:
	.incbin "baserom.dol", 0x16A0A0, 0x8
.global lbl_803D37E8
lbl_803D37E8:
	.incbin "baserom.dol", 0x16A0A8, 0x8
.global lbl_803D37F0
lbl_803D37F0:
	.incbin "baserom.dol", 0x16A0B0, 0x8
.global lbl_803D37F8
lbl_803D37F8:
	.incbin "baserom.dol", 0x16A0B8, 0x8
.global lbl_803D3800
lbl_803D3800:
	.incbin "baserom.dol", 0x16A0C0, 0x8
.global lbl_803D3808
lbl_803D3808:
	.incbin "baserom.dol", 0x16A0C8, 0x8
.global lbl_803D3810
lbl_803D3810:
	.incbin "baserom.dol", 0x16A0D0, 0x8
.global lbl_803D3818
lbl_803D3818:
	.incbin "baserom.dol", 0x16A0D8, 0x8
.global lbl_803D3820
lbl_803D3820:
	.incbin "baserom.dol", 0x16A0E0, 0x8
.global lbl_803D3828
lbl_803D3828:
	.incbin "baserom.dol", 0x16A0E8, 0x8
.global lbl_803D3830
lbl_803D3830:
	.incbin "baserom.dol", 0x16A0F0, 0x8
.global lbl_803D3838
lbl_803D3838:
	.incbin "baserom.dol", 0x16A0F8, 0x8
.global lbl_803D3840
lbl_803D3840:
	.incbin "baserom.dol", 0x16A100, 0x8
.global lbl_803D3848
lbl_803D3848:
	.incbin "baserom.dol", 0x16A108, 0x8
.global lbl_803D3850
lbl_803D3850:
	.incbin "baserom.dol", 0x16A110, 0x8
.global lbl_803D3858
lbl_803D3858:
	.incbin "baserom.dol", 0x16A118, 0x8
.global lbl_803D3860
lbl_803D3860:
	.incbin "baserom.dol", 0x16A120, 0x8
.global lbl_803D3868
lbl_803D3868:
	.incbin "baserom.dol", 0x16A128, 0x8
.global lbl_803D3870
lbl_803D3870:
	.incbin "baserom.dol", 0x16A130, 0x8
.global lbl_803D3878
lbl_803D3878:
	.incbin "baserom.dol", 0x16A138, 0x8
.global lbl_803D3880
lbl_803D3880:
	.incbin "baserom.dol", 0x16A140, 0x8
.global __mb_cur_max
__mb_cur_max:
	.incbin "baserom.dol", 0x16A148, 0x14
.global _impure_ptr
_impure_ptr:
	.incbin "baserom.dol", 0x16A15C, 0x14
.global __OSCurrHeap
__OSCurrHeap:
	.incbin "baserom.dol", 0x16A170, 0x8
.global __OSArenaLo
__OSArenaLo:
	.incbin "baserom.dol", 0x16A178, 0x8
.global _32
_32:
	.incbin "baserom.dol", 0x16A180, 0x20
.global _116
_116:
	.incbin "baserom.dol", 0x16A1A0, 0x8
.global autoInvalidation
autoInvalidation:
	.incbin "baserom.dol", 0x16A1A8, 0x40
.global _35_N1
_35_N1:
	.incbin "baserom.dol", 0x16A1E8, 0x4
.global _40_N1
_40_N1:
	.incbin "baserom.dol", 0x16A1EC, 0x4
.global _41_N1
_41_N1:
	.incbin "baserom.dol", 0x16A1F0, 0x8
.global FirstRead
FirstRead:
	.incbin "baserom.dol", 0x16A1F8, 0x8
.global ClampRegion
ClampRegion:
	.incbin "baserom.dol", 0x16A200, 0x8
.global ResettingChan
ResettingChan:
	.incbin "baserom.dol", 0x16A208, 0x4
.global XPatchBits
XPatchBits:
	.incbin "baserom.dol", 0x16A20C, 0x4
.global AnalogMode
AnalogMode:
	.incbin "baserom.dol", 0x16A210, 0x4
.global Spec
Spec:
	.incbin "baserom.dol", 0x16A214, 0x4
.global MakeStatus
MakeStatus:
	.incbin "baserom.dol", 0x16A218, 0x4
.global CmdReadOrigin
CmdReadOrigin:
	.incbin "baserom.dol", 0x16A21C, 0x4
.global CmdCalibrate
CmdCalibrate:
	.incbin "baserom.dol", 0x16A220, 0x8
.global axDspSlaveLength
axDspSlaveLength:
	.incbin "baserom.dol", 0x16A228, 0x8
.global __CARDVendorID
__CARDVendorID:
	.incbin "baserom.dol", 0x16A230, 0x8
.global gx
gx:
	.incbin "baserom.dol", 0x16A238, 0x8
.global tbl1$214
tbl1$214:
	.incbin "baserom.dol", 0x16A240, 0x4
.global tbl2$215
tbl2$215:
	.incbin "baserom.dol", 0x16A244, 0x4
.global tbl3$216
tbl3$216:
	.incbin "baserom.dol", 0x16A248, 0x8
.global GXTexMode0Ids
GXTexMode0Ids:
	.incbin "baserom.dol", 0x16A250, 0x8
.global GXTexMode1Ids
GXTexMode1Ids:
	.incbin "baserom.dol", 0x16A258, 0x8
.global GXTexImage0Ids
GXTexImage0Ids:
	.incbin "baserom.dol", 0x16A260, 0x8
.global GXTexImage1Ids
GXTexImage1Ids:
	.incbin "baserom.dol", 0x16A268, 0x8
.global GXTexImage2Ids
GXTexImage2Ids:
	.incbin "baserom.dol", 0x16A270, 0x8
.global GXTexImage3Ids
GXTexImage3Ids:
	.incbin "baserom.dol", 0x16A278, 0x8
.global GXTexTlutIds
GXTexTlutIds:
	.incbin "baserom.dol", 0x16A280, 0x8
.global GX2HWFiltConv
GX2HWFiltConv:
	.incbin "baserom.dol", 0x16A288, 0x10
.global SendCount
SendCount:
	.incbin "baserom.dol", 0x16A298, 0x50
.global lbl_803D3A28
lbl_803D3A28:
	.incbin "baserom.dol", 0x16A2E8, 0x8
.global lbl_803D3A30
lbl_803D3A30:
	.incbin "baserom.dol", 0x16A2F0, 0x8
.global lbl_803D3A38
lbl_803D3A38:
	.incbin "baserom.dol", 0x16A2F8, 0x8
.global lbl_803D3A40
lbl_803D3A40:
	.incbin "baserom.dol", 0x16A300, 0x8
.global lbl_803D3A48
lbl_803D3A48:
	.incbin "baserom.dol", 0x16A308, 0x8
.global lbl_803D3A50
lbl_803D3A50:
	.incbin "baserom.dol", 0x16A310, 0x8
.global lbl_803D3A58
lbl_803D3A58:
	.incbin "baserom.dol", 0x16A318, 0x8
.global lbl_803D3A60
lbl_803D3A60:
	.incbin "baserom.dol", 0x16A320, 0x8
.global lbl_803D3A68
lbl_803D3A68:
	.incbin "baserom.dol", 0x16A328, 0x8
.global lbl_803D3A70
lbl_803D3A70:
	.incbin "baserom.dol", 0x16A330, 0x8
.global lbl_803D3A78
lbl_803D3A78:
	.incbin "baserom.dol", 0x16A338, 0x8
.global lbl_803D3A80
lbl_803D3A80:
	.incbin "baserom.dol", 0x16A340, 0x8
.global lbl_803D3A88
lbl_803D3A88:
	.incbin "baserom.dol", 0x16A348, 0x8
.global lbl_803D3A90
lbl_803D3A90:
	.incbin "baserom.dol", 0x16A350, 0x8
.global lbl_803D3A98
lbl_803D3A98:
	.incbin "baserom.dol", 0x16A358, 0x8
.global lbl_803D3AA0
lbl_803D3AA0:
	.incbin "baserom.dol", 0x16A360, 0x8
.global lbl_803D3AA8
lbl_803D3AA8:
	.incbin "baserom.dol", 0x16A368, 0x8
.global lbl_803D3AB0
lbl_803D3AB0:
	.incbin "baserom.dol", 0x16A370, 0x8
.global lbl_803D3AB8
lbl_803D3AB8:
	.incbin "baserom.dol", 0x16A378, 0x8
.global lbl_803D3AC0
lbl_803D3AC0:
	.incbin "baserom.dol", 0x16A380, 0x8
.global lbl_803D3AC8
lbl_803D3AC8:
	.incbin "baserom.dol", 0x16A388, 0x8
.global lbl_803D3AD0
lbl_803D3AD0:
	.incbin "baserom.dol", 0x16A390, 0x8
.global lbl_803D3AD8
lbl_803D3AD8:
	.incbin "baserom.dol", 0x16A398, 0x8
.global lbl_803D3AE0
lbl_803D3AE0:
	.incbin "baserom.dol", 0x16A3A0, 0x8
.global lbl_803D3AE8
lbl_803D3AE8:
	.incbin "baserom.dol", 0x16A3A8, 0x8
.global lbl_803D3AF0
lbl_803D3AF0:
	.incbin "baserom.dol", 0x16A3B0, 0x8
.global lbl_803D3AF8
lbl_803D3AF8:
	.incbin "baserom.dol", 0x16A3B8, 0x4
.global lbl_803D3AFC
lbl_803D3AFC:
	.incbin "baserom.dol", 0x16A3BC, 0x4
.global lbl_803D3B00
lbl_803D3B00:
	.incbin "baserom.dol", 0x16A3C0, 0x4
.global lbl_803D3B04
lbl_803D3B04:
	.incbin "baserom.dol", 0x16A3C4, 0x4
.global lbl_803D3B08
lbl_803D3B08:
	.incbin "baserom.dol", 0x16A3C8, 0x4
.global lbl_803D3B0C
lbl_803D3B0C:
	.incbin "baserom.dol", 0x16A3CC, 0x4
.global lbl_803D3B10
lbl_803D3B10:
	.incbin "baserom.dol", 0x16A3D0, 0x4
.global lbl_803D3B14
lbl_803D3B14:
	.incbin "baserom.dol", 0x16A3D4, 0x4
.global lbl_803D3B18
lbl_803D3B18:
	.incbin "baserom.dol", 0x16A3D8, 0x4
.global lbl_803D3B1C
lbl_803D3B1C:
	.incbin "baserom.dol", 0x16A3DC, 0x4
.global lbl_803D3B20
lbl_803D3B20:
	.incbin "baserom.dol", 0x16A3E0, 0x4
.global lbl_803D3B24
lbl_803D3B24:
	.incbin "baserom.dol", 0x16A3E4, 0x4
.global lbl_803D3B28
lbl_803D3B28:
	.incbin "baserom.dol", 0x16A3E8, 0x4
.global lbl_803D3B2C
lbl_803D3B2C:
	.incbin "baserom.dol", 0x16A3EC, 0x4
.global lbl_803D3B30
lbl_803D3B30:
	.incbin "baserom.dol", 0x16A3F0, 0x4
.global lbl_803D3B34
lbl_803D3B34:
	.incbin "baserom.dol", 0x16A3F4, 0x4
.global lbl_803D3B38
lbl_803D3B38:
	.incbin "baserom.dol", 0x16A3F8, 0x4
.global lbl_803D3B3C
lbl_803D3B3C:
	.incbin "baserom.dol", 0x16A3FC, 0x4
.global lbl_803D3B40
lbl_803D3B40:
	.incbin "baserom.dol", 0x16A400, 0x4
.global lbl_803D3B44
lbl_803D3B44:
	.incbin "baserom.dol", 0x16A404, 0x4
.global lbl_803D3B48
lbl_803D3B48:
	.incbin "baserom.dol", 0x16A408, 0x8
.global lbl_803D3B50
lbl_803D3B50:
	.incbin "baserom.dol", 0x16A410, 0x8
.global lbl_803D3B58
lbl_803D3B58:
	.incbin "baserom.dol", 0x16A418, 0x4
.global lbl_803D3B5C
lbl_803D3B5C:
	.incbin "baserom.dol", 0x16A41C, 0x4
.global lbl_803D3B60
lbl_803D3B60:
	.incbin "baserom.dol", 0x16A420, 0x4
.global lbl_803D3B64
lbl_803D3B64:
	.incbin "baserom.dol", 0x16A424, 0x4
.global lbl_803D3B68
lbl_803D3B68:
	.incbin "baserom.dol", 0x16A428, 0x4
.global lbl_803D3B6C
lbl_803D3B6C:
	.incbin "baserom.dol", 0x16A42C, 0x4
.global lbl_803D3B70
lbl_803D3B70:
	.incbin "baserom.dol", 0x16A430, 0x8
.global lbl_803D3B78
lbl_803D3B78:
	.incbin "baserom.dol", 0x16A438, 0x8
.global lbl_803D3B80
lbl_803D3B80:
	.incbin "baserom.dol", 0x16A440, 0x4
.global lbl_803D3B84
lbl_803D3B84:
	.incbin "baserom.dol", 0x16A444, 0x4
.global lbl_803D3B88
lbl_803D3B88:
	.incbin "baserom.dol", 0x16A448, 0x8
.global lbl_803D3B90
lbl_803D3B90:
	.incbin "baserom.dol", 0x16A450, 0x8
.global lbl_803D3B98
lbl_803D3B98:
	.incbin "baserom.dol", 0x16A458, 0x4
.global lbl_803D3B9C
lbl_803D3B9C:
	.incbin "baserom.dol", 0x16A45C, 0x4
.global lbl_803D3BA0
lbl_803D3BA0:
	.incbin "baserom.dol", 0x16A460, 0x4
.global lbl_803D3BA4
lbl_803D3BA4:
	.incbin "baserom.dol", 0x16A464, 0x4
.global lbl_803D3BA8
lbl_803D3BA8:
	.incbin "baserom.dol", 0x16A468, 0x4
.global lbl_803D3BAC
lbl_803D3BAC:
	.incbin "baserom.dol", 0x16A46C, 0x4
.global lbl_803D3BB0
lbl_803D3BB0:
	.incbin "baserom.dol", 0x16A470, 0x8
.global lbl_803D3BB8
lbl_803D3BB8:
	.incbin "baserom.dol", 0x16A478, 0x4
.global lbl_803D3BBC
lbl_803D3BBC:
	.incbin "baserom.dol", 0x16A47C, 0x4
.global lbl_803D3BC0
lbl_803D3BC0:
	.incbin "baserom.dol", 0x16A480, 0x4
.global lbl_803D3BC4
lbl_803D3BC4:
	.incbin "baserom.dol", 0x16A484, 0x4
.global lbl_803D3BC8
lbl_803D3BC8:
	.incbin "baserom.dol", 0x16A488, 0x4
.global lbl_803D3BCC
lbl_803D3BCC:
	.incbin "baserom.dol", 0x16A48C, 0x4
.global fontEncode$60
fontEncode$60:
	.incbin "baserom.dol", 0x16A490, 0x10
