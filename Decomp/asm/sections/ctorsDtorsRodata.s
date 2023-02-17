.include "macros.inc"

.section .ctorsDtorsRodata, "wa"  # 0x80104920 - 0x80123BA0
.global __CTOR_LIST__
__CTOR_LIST__:
	.incbin "baserom.dol", 0x101920, 0x27C
.global s__s_ai_80104b9c
s__s_ai_80104b9c:
	.incbin "baserom.dol", 0x101B9C, 0x8
.global lbl_80104BA4
lbl_80104BA4:
	.incbin "baserom.dol", 0x101BA4, 0x10
.global lbl_80104BB4
lbl_80104BB4:
	.incbin "baserom.dol", 0x101BB4, 0x4
.global lbl_80104BB8
lbl_80104BB8:
	.incbin "baserom.dol", 0x101BB8, 0x4
.global lbl_80104BBC
lbl_80104BBC:
	.incbin "baserom.dol", 0x101BBC, 0x4
.global lbl_80104BC0
lbl_80104BC0:
	.incbin "baserom.dol", 0x101BC0, 0x4
.global lbl_80104BC4
lbl_80104BC4:
	.incbin "baserom.dol", 0x101BC4, 0x4
.global lbl_80104BC8
lbl_80104BC8:
	.incbin "baserom.dol", 0x101BC8, 0x4
.global lbl_80104BCC
lbl_80104BCC:
	.incbin "baserom.dol", 0x101BCC, 0x10
.global lbl_80104BDC
lbl_80104BDC:
	.incbin "baserom.dol", 0x101BDC, 0x4
.global lbl_80104BE0
lbl_80104BE0:
	.incbin "baserom.dol", 0x101BE0, 0x4
.global lbl_80104BE4
lbl_80104BE4:
	.incbin "baserom.dol", 0x101BE4, 0x4
.global lbl_80104BE8
lbl_80104BE8:
	.incbin "baserom.dol", 0x101BE8, 0x4
.global lbl_80104BEC
lbl_80104BEC:
	.incbin "baserom.dol", 0x101BEC, 0x4
.global lbl_80104BF0
lbl_80104BF0:
	.incbin "baserom.dol", 0x101BF0, 0x4
.global lbl_80104BF4
lbl_80104BF4:
	.incbin "baserom.dol", 0x101BF4, 0x4
.global lbl_80104BF8
lbl_80104BF8:
	.incbin "baserom.dol", 0x101BF8, 0x8
.global lbl_80104C00
lbl_80104C00:
	.incbin "baserom.dol", 0x101C00, 0x8
.global lbl_80104C08
lbl_80104C08:
	.incbin "baserom.dol", 0x101C08, 0x4
.global lbl_80104C0C
lbl_80104C0C:
	.incbin "baserom.dol", 0x101C0C, 0x4
.global lbl_80104C10
lbl_80104C10:
	.incbin "baserom.dol", 0x101C10, 0x4
.global lbl_80104C14
lbl_80104C14:
	.incbin "baserom.dol", 0x101C14, 0x4
.global lbl_80104C18
lbl_80104C18:
	.incbin "baserom.dol", 0x101C18, 0x4
.global lbl_80104C1C
lbl_80104C1C:
	.incbin "baserom.dol", 0x101C1C, 0x4
.global lbl_80104C20
lbl_80104C20:
	.incbin "baserom.dol", 0x101C20, 0x4
.global lbl_80104C24
lbl_80104C24:
	.incbin "baserom.dol", 0x101C24, 0x4
.global lbl_80104C28
lbl_80104C28:
	.incbin "baserom.dol", 0x101C28, 0x4
.global lbl_80104C2C
lbl_80104C2C:
	.incbin "baserom.dol", 0x101C2C, 0x14
.global lbl_80104C40
lbl_80104C40:
	.incbin "baserom.dol", 0x101C40, 0x4
.global lbl_80104C44
lbl_80104C44:
	.incbin "baserom.dol", 0x101C44, 0x4
.global lbl_80104C48
lbl_80104C48:
	.incbin "baserom.dol", 0x101C48, 0x4
.global lbl_80104C4C
lbl_80104C4C:
	.incbin "baserom.dol", 0x101C4C, 0x4
.global lbl_80104C50
lbl_80104C50:
	.incbin "baserom.dol", 0x101C50, 0x4
.global lbl_80104C54
lbl_80104C54:
	.incbin "baserom.dol", 0x101C54, 0x4
.global s_gongbong1_80104c58
s_gongbong1_80104c58:
	.incbin "baserom.dol", 0x101C58, 0xC
.global s_gongbong2_80104c64
s_gongbong2_80104c64:
	.incbin "baserom.dol", 0x101C64, 0xC
.global s_gongbong3_80104c70
s_gongbong3_80104c70:
	.incbin "baserom.dol", 0x101C70, 0xC
.global lbl_80104C7C
lbl_80104C7C:
	.incbin "baserom.dol", 0x101C7C, 0x4
.global lbl_80104C80
lbl_80104C80:
	.incbin "baserom.dol", 0x101C80, 0x4
.global lbl_80104C84
lbl_80104C84:
	.incbin "baserom.dol", 0x101C84, 0x4
.global lbl_80104C88
lbl_80104C88:
	.incbin "baserom.dol", 0x101C88, 0x4
.global lbl_80104C8C
lbl_80104C8C:
	.incbin "baserom.dol", 0x101C8C, 0x4
.global lbl_80104C90
lbl_80104C90:
	.incbin "baserom.dol", 0x101C90, 0x8
.global lbl_80104C98
lbl_80104C98:
	.incbin "baserom.dol", 0x101C98, 0x8
.global lbl_80104CA0
lbl_80104CA0:
	.incbin "baserom.dol", 0x101CA0, 0x4
.global lbl_80104CA4
lbl_80104CA4:
	.incbin "baserom.dol", 0x101CA4, 0x4
.global lbl_80104CA8
lbl_80104CA8:
	.incbin "baserom.dol", 0x101CA8, 0x4
.global lbl_80104CAC
lbl_80104CAC:
	.incbin "baserom.dol", 0x101CAC, 0x4
.global lbl_80104CB0
lbl_80104CB0:
	.incbin "baserom.dol", 0x101CB0, 0x4
.global lbl_80104CB4
lbl_80104CB4:
	.incbin "baserom.dol", 0x101CB4, 0x4
.global lbl_80104CB8
lbl_80104CB8:
	.incbin "baserom.dol", 0x101CB8, 0x4
.global lbl_80104CBC
lbl_80104CBC:
	.incbin "baserom.dol", 0x101CBC, 0x4
.global lbl_80104CC0
lbl_80104CC0:
	.incbin "baserom.dol", 0x101CC0, 0x4
.global lbl_80104CC4
lbl_80104CC4:
	.incbin "baserom.dol", 0x101CC4, 0x4
.global lbl_80104CC8
lbl_80104CC8:
	.incbin "baserom.dol", 0x101CC8, 0x4
.global lbl_80104CCC
lbl_80104CCC:
	.incbin "baserom.dol", 0x101CCC, 0x240
.global lbl_80104F0C
lbl_80104F0C:
	.incbin "baserom.dol", 0x101F0C, 0x4
.global lbl_80104F10
lbl_80104F10:
	.incbin "baserom.dol", 0x101F10, 0x8
.global lbl_80104F18
lbl_80104F18:
	.incbin "baserom.dol", 0x101F18, 0x8
.global lbl_80104F20
lbl_80104F20:
	.incbin "baserom.dol", 0x101F20, 0x4
.global lbl_80104F24
lbl_80104F24:
	.incbin "baserom.dol", 0x101F24, 0x4
.global lbl_80104F28
lbl_80104F28:
	.incbin "baserom.dol", 0x101F28, 0x4
.global lbl_80104F2C
lbl_80104F2C:
	.incbin "baserom.dol", 0x101F2C, 0x4
.global lbl_80104F30
lbl_80104F30:
	.incbin "baserom.dol", 0x101F30, 0x4
.global lbl_80104F34
lbl_80104F34:
	.incbin "baserom.dol", 0x101F34, 0x4
.global lbl_80104F38
lbl_80104F38:
	.incbin "baserom.dol", 0x101F38, 0x4
.global lbl_80104F3C
lbl_80104F3C:
	.incbin "baserom.dol", 0x101F3C, 0x4
.global lbl_80104F40
lbl_80104F40:
	.incbin "baserom.dol", 0x101F40, 0x4
.global lbl_80104F44
lbl_80104F44:
	.incbin "baserom.dol", 0x101F44, 0x4
.global lbl_80104F48
lbl_80104F48:
	.incbin "baserom.dol", 0x101F48, 0x4
.global lbl_80104F4C
lbl_80104F4C:
	.incbin "baserom.dol", 0x101F4C, 0x4
.global lbl_80104F50
lbl_80104F50:
	.incbin "baserom.dol", 0x101F50, 0x244
.global lbl_80105194
lbl_80105194:
	.incbin "baserom.dol", 0x102194, 0x4
.global lbl_80105198
lbl_80105198:
	.incbin "baserom.dol", 0x102198, 0x4
.global lbl_8010519C
lbl_8010519C:
	.incbin "baserom.dol", 0x10219C, 0x64
.global lbl_80105200
lbl_80105200:
	.incbin "baserom.dol", 0x102200, 0x4
.global s_death_80105204
s_death_80105204:
	.incbin "baserom.dol", 0x102204, 0x8
.global s_bonus_8010520c
s_bonus_8010520c:
	.incbin "baserom.dol", 0x10220C, 0x1C
.global lbl_80105228
lbl_80105228:
	.incbin "baserom.dol", 0x102228, 0x8
.global lbl_80105230
lbl_80105230:
	.incbin "baserom.dol", 0x102230, 0x4
.global lbl_80105234
lbl_80105234:
	.incbin "baserom.dol", 0x102234, 0x4
.global lbl_80105238
lbl_80105238:
	.incbin "baserom.dol", 0x102238, 0x4
.global lbl_8010523C
lbl_8010523C:
	.incbin "baserom.dol", 0x10223C, 0x4
.global lbl_80105240
lbl_80105240:
	.incbin "baserom.dol", 0x102240, 0x4
.global lbl_80105244
lbl_80105244:
	.incbin "baserom.dol", 0x102244, 0x4
.global lbl_80105248
lbl_80105248:
	.incbin "baserom.dol", 0x102248, 0x8
.global lbl_80105250
lbl_80105250:
	.incbin "baserom.dol", 0x102250, 0x4
.global lbl_80105254
lbl_80105254:
	.incbin "baserom.dol", 0x102254, 0x4
.global lbl_80105258
lbl_80105258:
	.incbin "baserom.dol", 0x102258, 0x4
.global lbl_8010525C
lbl_8010525C:
	.incbin "baserom.dol", 0x10225C, 0x4
.global lbl_80105260
lbl_80105260:
	.incbin "baserom.dol", 0x102260, 0x4
.global lbl_80105264
lbl_80105264:
	.incbin "baserom.dol", 0x102264, 0x4
.global lbl_80105268
lbl_80105268:
	.incbin "baserom.dol", 0x102268, 0x4
.global lbl_8010526C
lbl_8010526C:
	.incbin "baserom.dol", 0x10226C, 0x4
.global lbl_80105270
lbl_80105270:
	.incbin "baserom.dol", 0x102270, 0x4
.global lbl_80105274
lbl_80105274:
	.incbin "baserom.dol", 0x102274, 0x4
.global lbl_80105278
lbl_80105278:
	.incbin "baserom.dol", 0x102278, 0x4
.global lbl_8010527C
lbl_8010527C:
	.incbin "baserom.dol", 0x10227C, 0x4
.global lbl_80105280
lbl_80105280:
	.incbin "baserom.dol", 0x102280, 0x4
.global lbl_80105284
lbl_80105284:
	.incbin "baserom.dol", 0x102284, 0x4
.global lbl_80105288
lbl_80105288:
	.incbin "baserom.dol", 0x102288, 0x4
.global lbl_8010528C
lbl_8010528C:
	.incbin "baserom.dol", 0x10228C, 0x4
.global lbl_80105290
lbl_80105290:
	.incbin "baserom.dol", 0x102290, 0x4
.global lbl_80105294
lbl_80105294:
	.incbin "baserom.dol", 0x102294, 0x4
.global lbl_80105298
lbl_80105298:
	.incbin "baserom.dol", 0x102298, 0x4
.global lbl_8010529C
lbl_8010529C:
	.incbin "baserom.dol", 0x10229C, 0x4
.global lbl_801052A0
lbl_801052A0:
	.incbin "baserom.dol", 0x1022A0, 0x4
.global lbl_801052A4
lbl_801052A4:
	.incbin "baserom.dol", 0x1022A4, 0x4
.global lbl_801052A8
lbl_801052A8:
	.incbin "baserom.dol", 0x1022A8, 0x4
.global lbl_801052AC
lbl_801052AC:
	.incbin "baserom.dol", 0x1022AC, 0x4
.global lbl_801052B0
lbl_801052B0:
	.incbin "baserom.dol", 0x1022B0, 0x8
.global lbl_801052B8
lbl_801052B8:
	.incbin "baserom.dol", 0x1022B8, 0x8
.global lbl_801052C0
lbl_801052C0:
	.incbin "baserom.dol", 0x1022C0, 0x4
.global lbl_801052C4
lbl_801052C4:
	.incbin "baserom.dol", 0x1022C4, 0x4
.global lbl_801052C8
lbl_801052C8:
	.incbin "baserom.dol", 0x1022C8, 0x8
.global lbl_801052D0
lbl_801052D0:
	.incbin "baserom.dol", 0x1022D0, 0x8
.global lbl_801052D8
lbl_801052D8:
	.incbin "baserom.dol", 0x1022D8, 0x4
.global lbl_801052DC
lbl_801052DC:
	.incbin "baserom.dol", 0x1022DC, 0x4
.global lbl_801052E0
lbl_801052E0:
	.incbin "baserom.dol", 0x1022E0, 0x4
.global lbl_801052E4
lbl_801052E4:
	.incbin "baserom.dol", 0x1022E4, 0x4
.global lbl_801052E8
lbl_801052E8:
	.incbin "baserom.dol", 0x1022E8, 0x4
.global lbl_801052EC
lbl_801052EC:
	.incbin "baserom.dol", 0x1022EC, 0x4
.global lbl_801052F0
lbl_801052F0:
	.incbin "baserom.dol", 0x1022F0, 0x4
.global lbl_801052F4
lbl_801052F4:
	.incbin "baserom.dol", 0x1022F4, 0x4
.global lbl_801052F8
lbl_801052F8:
	.incbin "baserom.dol", 0x1022F8, 0x4
.global lbl_801052FC
lbl_801052FC:
	.incbin "baserom.dol", 0x1022FC, 0x4
.global lbl_80105300
lbl_80105300:
	.incbin "baserom.dol", 0x102300, 0x4
.global lbl_80105304
lbl_80105304:
	.incbin "baserom.dol", 0x102304, 0x4
.global lbl_80105308
lbl_80105308:
	.incbin "baserom.dol", 0x102308, 0x4
.global lbl_8010530C
lbl_8010530C:
	.incbin "baserom.dol", 0x10230C, 0x4
.global lbl_80105310
lbl_80105310:
	.incbin "baserom.dol", 0x102310, 0x8
.global lbl_80105318
lbl_80105318:
	.incbin "baserom.dol", 0x102318, 0x8
.global lbl_80105320
lbl_80105320:
	.incbin "baserom.dol", 0x102320, 0x4
.global lbl_80105324
lbl_80105324:
	.incbin "baserom.dol", 0x102324, 0x240
.global s_chase___2i__80105564
s_chase___2i__80105564:
	.incbin "baserom.dol", 0x102564, 0xC
.global s_trigger_80105570
s_trigger_80105570:
	.incbin "baserom.dol", 0x102570, 0x8
.global s__s__2i_80105578
s__s__2i_80105578:
	.incbin "baserom.dol", 0x102578, 0x8
.global s__s__2i__80105580
s__s__2i__80105580:
	.incbin "baserom.dol", 0x102580, 0x8
.global s_trigger_event__80105588
s_trigger_event__80105588:
	.incbin "baserom.dol", 0x102588, 0x10
.global s_trigger_misc__80105598
s_trigger_misc__80105598:
	.incbin "baserom.dol", 0x102598, 0x10
.global lbl_801055A8
lbl_801055A8:
	.incbin "baserom.dol", 0x1025A8, 0x4
.global s_door1_801055ac
s_door1_801055ac:
	.incbin "baserom.dol", 0x1025AC, 0x8
.global s_door2_801055b4
s_door2_801055b4:
	.incbin "baserom.dol", 0x1025B4, 0x8
.global s_door3_801055bc
s_door3_801055bc:
	.incbin "baserom.dol", 0x1025BC, 0x8
.global s_door4_801055c4
s_door4_801055c4:
	.incbin "baserom.dol", 0x1025C4, 0x8
.global s_door25_801055cc
s_door25_801055cc:
	.incbin "baserom.dol", 0x1025CC, 0x8
.global s_door26_801055d4
s_door26_801055d4:
	.incbin "baserom.dol", 0x1025D4, 0x8
.global s_door27_801055dc
s_door27_801055dc:
	.incbin "baserom.dol", 0x1025DC, 0x8
.global s_door28_801055e4
s_door28_801055e4:
	.incbin "baserom.dol", 0x1025E4, 0x8
.global s_00000000_801055ec
s_00000000_801055ec:
	.incbin "baserom.dol", 0x1025EC, 0xC
.global lbl_801055F8
lbl_801055F8:
	.incbin "baserom.dol", 0x1025F8, 0xC
.global lbl_80105604
lbl_80105604:
	.incbin "baserom.dol", 0x102604, 0xC
.global s_door5_80105610
s_door5_80105610:
	.incbin "baserom.dol", 0x102610, 0x8
.global s_door6_80105618
s_door6_80105618:
	.incbin "baserom.dol", 0x102618, 0x8
.global s_door7_80105620
s_door7_80105620:
	.incbin "baserom.dol", 0x102620, 0x8
.global s_door8_80105628
s_door8_80105628:
	.incbin "baserom.dol", 0x102628, 0x8
.global s_door29_80105630
s_door29_80105630:
	.incbin "baserom.dol", 0x102630, 0x8
.global s_door30_80105638
s_door30_80105638:
	.incbin "baserom.dol", 0x102638, 0x8
.global s_door31_80105640
s_door31_80105640:
	.incbin "baserom.dol", 0x102640, 0x8
.global s_door32_80105648
s_door32_80105648:
	.incbin "baserom.dol", 0x102648, 0x8
.global lbl_80105650
lbl_80105650:
	.incbin "baserom.dol", 0x102650, 0x8
.global lbl_80105658
lbl_80105658:
	.incbin "baserom.dol", 0x102658, 0x8
.global lbl_80105660
lbl_80105660:
	.incbin "baserom.dol", 0x102660, 0x4
.global lbl_80105664
lbl_80105664:
	.incbin "baserom.dol", 0x102664, 0x4
.global lbl_80105668
lbl_80105668:
	.incbin "baserom.dol", 0x102668, 0x8
.global lbl_80105670
lbl_80105670:
	.incbin "baserom.dol", 0x102670, 0x4
.global lbl_80105674
lbl_80105674:
	.incbin "baserom.dol", 0x102674, 0x8
.global lbl_8010567C
lbl_8010567C:
	.incbin "baserom.dol", 0x10267C, 0x4
.global lbl_80105680
lbl_80105680:
	.incbin "baserom.dol", 0x102680, 0x8
.global lbl_80105688
lbl_80105688:
	.incbin "baserom.dol", 0x102688, 0x8
.global lbl_80105690
lbl_80105690:
	.incbin "baserom.dol", 0x102690, 0x4
.global lbl_80105694
lbl_80105694:
	.incbin "baserom.dol", 0x102694, 0x4
.global lbl_80105698
lbl_80105698:
	.incbin "baserom.dol", 0x102698, 0x4
.global lbl_8010569C
lbl_8010569C:
	.incbin "baserom.dol", 0x10269C, 0x4
.global lbl_801056A0
lbl_801056A0:
	.incbin "baserom.dol", 0x1026A0, 0x4
.global lbl_801056A4
lbl_801056A4:
	.incbin "baserom.dol", 0x1026A4, 0x4
.global lbl_801056A8
lbl_801056A8:
	.incbin "baserom.dol", 0x1026A8, 0x4
.global lbl_801056AC
lbl_801056AC:
	.incbin "baserom.dol", 0x1026AC, 0x4
.global lbl_801056B0
lbl_801056B0:
	.incbin "baserom.dol", 0x1026B0, 0x4
.global lbl_801056B4
lbl_801056B4:
	.incbin "baserom.dol", 0x1026B4, 0x240
.global s_gfx_cloudslo_bmp_801058f4
s_gfx_cloudslo_bmp_801058f4:
	.incbin "baserom.dol", 0x1028F4, 0x14
.global s_C__source_crashwoc_code_gamecode_80105908
s_C__source_crashwoc_code_gamecode_80105908:
	.incbin "baserom.dol", 0x102908, 0x2C
.global lbl_80105934
lbl_80105934:
	.incbin "baserom.dol", 0x102934, 0x1C
.global lbl_80105950
lbl_80105950:
	.incbin "baserom.dol", 0x102950, 0x4
.global lbl_80105954
lbl_80105954:
	.incbin "baserom.dol", 0x102954, 0x4
.global lbl_80105958
lbl_80105958:
	.incbin "baserom.dol", 0x102958, 0x8
.global lbl_80105960
lbl_80105960:
	.incbin "baserom.dol", 0x102960, 0x8
.global lbl_80105968
lbl_80105968:
	.incbin "baserom.dol", 0x102968, 0x8
.global lbl_80105970
lbl_80105970:
	.incbin "baserom.dol", 0x102970, 0x3F8
.global lbl_80105D68
lbl_80105D68:
	.incbin "baserom.dol", 0x102D68, 0x8
.global lbl_80105D70
lbl_80105D70:
	.incbin "baserom.dol", 0x102D70, 0x8
.global lbl_80105D78
lbl_80105D78:
	.incbin "baserom.dol", 0x102D78, 0x4
.global lbl_80105D7C
lbl_80105D7C:
	.incbin "baserom.dol", 0x102D7C, 0x4
.global lbl_80105D80
lbl_80105D80:
	.incbin "baserom.dol", 0x102D80, 0x8
.global lbl_80105D88
lbl_80105D88:
	.incbin "baserom.dol", 0x102D88, 0x8
.global lbl_80105D90
lbl_80105D90:
	.incbin "baserom.dol", 0x102D90, 0x4
.global lbl_80105D94
lbl_80105D94:
	.incbin "baserom.dol", 0x102D94, 0x4
.global lbl_80105D98
lbl_80105D98:
	.incbin "baserom.dol", 0x102D98, 0x4
.global lbl_80105D9C
lbl_80105D9C:
	.incbin "baserom.dol", 0x102D9C, 0x4
.global lbl_80105DA0
lbl_80105DA0:
	.incbin "baserom.dol", 0x102DA0, 0x4
.global lbl_80105DA4
lbl_80105DA4:
	.incbin "baserom.dol", 0x102DA4, 0x4
.global lbl_80105DA8
lbl_80105DA8:
	.incbin "baserom.dol", 0x102DA8, 0x4
.global lbl_80105DAC
lbl_80105DAC:
	.incbin "baserom.dol", 0x102DAC, 0x4
.global s__s_crt_80105db0
s__s_crt_80105db0:
	.incbin "baserom.dol", 0x102DB0, 0x8
.global lbl_80105DB8
lbl_80105DB8:
	.incbin "baserom.dol", 0x102DB8, 0x4
.global lbl_80105DBC
lbl_80105DBC:
	.incbin "baserom.dol", 0x102DBC, 0x4
.global lbl_80105DC0
lbl_80105DC0:
	.incbin "baserom.dol", 0x102DC0, 0x4
.global lbl_80105DC4
lbl_80105DC4:
	.incbin "baserom.dol", 0x102DC4, 0x4
.global lbl_80105DC8
lbl_80105DC8:
	.incbin "baserom.dol", 0x102DC8, 0x4
.global lbl_80105DCC
lbl_80105DCC:
	.incbin "baserom.dol", 0x102DCC, 0x4
.global lbl_80105DD0
lbl_80105DD0:
	.incbin "baserom.dol", 0x102DD0, 0x4
.global lbl_80105DD4
lbl_80105DD4:
	.incbin "baserom.dol", 0x102DD4, 0x4
.global lbl_80105DD8
lbl_80105DD8:
	.incbin "baserom.dol", 0x102DD8, 0x4
.global lbl_80105DDC
lbl_80105DDC:
	.incbin "baserom.dol", 0x102DDC, 0x4
.global lbl_80105DE0
lbl_80105DE0:
	.incbin "baserom.dol", 0x102DE0, 0x4
.global lbl_80105DE4
lbl_80105DE4:
	.incbin "baserom.dol", 0x102DE4, 0x4
.global lbl_80105DE8
lbl_80105DE8:
	.incbin "baserom.dol", 0x102DE8, 0x4
.global lbl_80105DEC
lbl_80105DEC:
	.incbin "baserom.dol", 0x102DEC, 0x4
.global lbl_80105DF0
lbl_80105DF0:
	.incbin "baserom.dol", 0x102DF0, 0x4
.global lbl_80105DF4
lbl_80105DF4:
	.incbin "baserom.dol", 0x102DF4, 0x4
.global lbl_80105DF8
lbl_80105DF8:
	.incbin "baserom.dol", 0x102DF8, 0x4
.global lbl_80105DFC
lbl_80105DFC:
	.incbin "baserom.dol", 0x102DFC, 0x4
.global lbl_80105E00
lbl_80105E00:
	.incbin "baserom.dol", 0x102E00, 0x4
.global lbl_80105E04
lbl_80105E04:
	.incbin "baserom.dol", 0x102E04, 0x4
.global lbl_80105E08
lbl_80105E08:
	.incbin "baserom.dol", 0x102E08, 0x4
.global lbl_80105E0C
lbl_80105E0C:
	.incbin "baserom.dol", 0x102E0C, 0x4
.global lbl_80105E10
lbl_80105E10:
	.incbin "baserom.dol", 0x102E10, 0x4
.global lbl_80105E14
lbl_80105E14:
	.incbin "baserom.dol", 0x102E14, 0x4
.global lbl_80105E18
lbl_80105E18:
	.incbin "baserom.dol", 0x102E18, 0x4
.global lbl_80105E1C
lbl_80105E1C:
	.incbin "baserom.dol", 0x102E1C, 0x4
.global lbl_80105E20
lbl_80105E20:
	.incbin "baserom.dol", 0x102E20, 0x4
.global lbl_80105E24
lbl_80105E24:
	.incbin "baserom.dol", 0x102E24, 0x4
.global lbl_80105E28
lbl_80105E28:
	.incbin "baserom.dol", 0x102E28, 0x8
.global lbl_80105E30
lbl_80105E30:
	.incbin "baserom.dol", 0x102E30, 0x4
.global lbl_80105E34
lbl_80105E34:
	.incbin "baserom.dol", 0x102E34, 0x4
.global lbl_80105E38
lbl_80105E38:
	.incbin "baserom.dol", 0x102E38, 0x4
.global lbl_80105E3C
lbl_80105E3C:
	.incbin "baserom.dol", 0x102E3C, 0x4
.global lbl_80105E40
lbl_80105E40:
	.incbin "baserom.dol", 0x102E40, 0x8
.global lbl_80105E48
lbl_80105E48:
	.incbin "baserom.dol", 0x102E48, 0x4
.global lbl_80105E4C
lbl_80105E4C:
	.incbin "baserom.dol", 0x102E4C, 0x4
.global lbl_80105E50
lbl_80105E50:
	.incbin "baserom.dol", 0x102E50, 0x4
.global lbl_80105E54
lbl_80105E54:
	.incbin "baserom.dol", 0x102E54, 0x4
.global lbl_80105E58
lbl_80105E58:
	.incbin "baserom.dol", 0x102E58, 0x4
.global lbl_80105E5C
lbl_80105E5C:
	.incbin "baserom.dol", 0x102E5C, 0x4
.global lbl_80105E60
lbl_80105E60:
	.incbin "baserom.dol", 0x102E60, 0x4
.global lbl_80105E64
lbl_80105E64:
	.incbin "baserom.dol", 0x102E64, 0xC
.global lbl_80105E70
lbl_80105E70:
	.incbin "baserom.dol", 0x102E70, 0x4
.global lbl_80105E74
lbl_80105E74:
	.incbin "baserom.dol", 0x102E74, 0x4
.global lbl_80105E78
lbl_80105E78:
	.incbin "baserom.dol", 0x102E78, 0x8
.global lbl_80105E80
lbl_80105E80:
	.incbin "baserom.dol", 0x102E80, 0x8
.global lbl_80105E88
lbl_80105E88:
	.incbin "baserom.dol", 0x102E88, 0x4
.global lbl_80105E8C
lbl_80105E8C:
	.incbin "baserom.dol", 0x102E8C, 0x4
.global lbl_80105E90
lbl_80105E90:
	.incbin "baserom.dol", 0x102E90, 0x4
.global lbl_80105E94
lbl_80105E94:
	.incbin "baserom.dol", 0x102E94, 0x4
.global lbl_80105E98
lbl_80105E98:
	.incbin "baserom.dol", 0x102E98, 0x4
.global lbl_80105E9C
lbl_80105E9C:
	.incbin "baserom.dol", 0x102E9C, 0x4
.global lbl_80105EA0
lbl_80105EA0:
	.incbin "baserom.dol", 0x102EA0, 0x4
.global lbl_80105EA4
lbl_80105EA4:
	.incbin "baserom.dol", 0x102EA4, 0xC
.global lbl_80105EB0
lbl_80105EB0:
	.incbin "baserom.dol", 0x102EB0, 0x8
.global lbl_80105EB8
lbl_80105EB8:
	.incbin "baserom.dol", 0x102EB8, 0x10
.global lbl_80105EC8
lbl_80105EC8:
	.incbin "baserom.dol", 0x102EC8, 0x4
.global lbl_80105ECC
lbl_80105ECC:
	.incbin "baserom.dol", 0x102ECC, 0x8
.global lbl_80105ED4
lbl_80105ED4:
	.incbin "baserom.dol", 0x102ED4, 0x4
.global lbl_80105ED8
lbl_80105ED8:
	.incbin "baserom.dol", 0x102ED8, 0x4
.global lbl_80105EDC
lbl_80105EDC:
	.incbin "baserom.dol", 0x102EDC, 0x4
.global lbl_80105EE0
lbl_80105EE0:
	.incbin "baserom.dol", 0x102EE0, 0x10
.global lbl_80105EF0
lbl_80105EF0:
	.incbin "baserom.dol", 0x102EF0, 0x14
.global lbl_80105F04
lbl_80105F04:
	.incbin "baserom.dol", 0x102F04, 0x4
.global lbl_80105F08
lbl_80105F08:
	.incbin "baserom.dol", 0x102F08, 0x8
.global lbl_80105F10
lbl_80105F10:
	.incbin "baserom.dol", 0x102F10, 0x4
.global lbl_80105F14
lbl_80105F14:
	.incbin "baserom.dol", 0x102F14, 0x4
.global lbl_80105F18
lbl_80105F18:
	.incbin "baserom.dol", 0x102F18, 0x8
.global lbl_80105F20
lbl_80105F20:
	.incbin "baserom.dol", 0x102F20, 0x4
.global lbl_80105F24
lbl_80105F24:
	.incbin "baserom.dol", 0x102F24, 0x4
.global lbl_80105F28
lbl_80105F28:
	.incbin "baserom.dol", 0x102F28, 0x4
.global lbl_80105F2C
lbl_80105F2C:
	.incbin "baserom.dol", 0x102F2C, 0x4
.global lbl_80105F30
lbl_80105F30:
	.incbin "baserom.dol", 0x102F30, 0x4
.global lbl_80105F34
lbl_80105F34:
	.incbin "baserom.dol", 0x102F34, 0x4
.global lbl_80105F38
lbl_80105F38:
	.incbin "baserom.dol", 0x102F38, 0x4
.global lbl_80105F3C
lbl_80105F3C:
	.incbin "baserom.dol", 0x102F3C, 0x2414
.global lbl_80108350
lbl_80108350:
	.incbin "baserom.dol", 0x105350, 0x4
.global lbl_80108354
lbl_80108354:
	.incbin "baserom.dol", 0x105354, 0x4
.global lbl_80108358
lbl_80108358:
	.incbin "baserom.dol", 0x105358, 0x4
.global lbl_8010835C
lbl_8010835C:
	.incbin "baserom.dol", 0x10535C, 0x4
.global lbl_80108360
lbl_80108360:
	.incbin "baserom.dol", 0x105360, 0x4
.global lbl_80108364
lbl_80108364:
	.incbin "baserom.dol", 0x105364, 0x4
.global lbl_80108368
lbl_80108368:
	.incbin "baserom.dol", 0x105368, 0x8
.global lbl_80108370
lbl_80108370:
	.incbin "baserom.dol", 0x105370, 0x8
.global lbl_80108378
lbl_80108378:
	.incbin "baserom.dol", 0x105378, 0x8
.global lbl_80108380
lbl_80108380:
	.incbin "baserom.dol", 0x105380, 0x4
.global lbl_80108384
lbl_80108384:
	.incbin "baserom.dol", 0x105384, 0x4
.global lbl_80108388
lbl_80108388:
	.incbin "baserom.dol", 0x105388, 0x4
.global lbl_8010838C
lbl_8010838C:
	.incbin "baserom.dol", 0x10538C, 0x4
.global lbl_80108390
lbl_80108390:
	.incbin "baserom.dol", 0x105390, 0x8
.global lbl_80108398
lbl_80108398:
	.incbin "baserom.dol", 0x105398, 0x4
.global lbl_8010839C
lbl_8010839C:
	.incbin "baserom.dol", 0x10539C, 0x8
.global lbl_801083A4
lbl_801083A4:
	.incbin "baserom.dol", 0x1053A4, 0x8
.global lbl_801083AC
lbl_801083AC:
	.incbin "baserom.dol", 0x1053AC, 0x8
.global lbl_801083B4
lbl_801083B4:
	.incbin "baserom.dol", 0x1053B4, 0x4
.global lbl_801083B8
lbl_801083B8:
	.incbin "baserom.dol", 0x1053B8, 0x4
.global lbl_801083BC
lbl_801083BC:
	.incbin "baserom.dol", 0x1053BC, 0x4
.global lbl_801083C0
lbl_801083C0:
	.incbin "baserom.dol", 0x1053C0, 0x4
.global lbl_801083C4
lbl_801083C4:
	.incbin "baserom.dol", 0x1053C4, 0x4
.global lbl_801083C8
lbl_801083C8:
	.incbin "baserom.dol", 0x1053C8, 0x4
.global lbl_801083CC
lbl_801083CC:
	.incbin "baserom.dol", 0x1053CC, 0x4
.global lbl_801083D0
lbl_801083D0:
	.incbin "baserom.dol", 0x1053D0, 0x8
.global lbl_801083D8
lbl_801083D8:
	.incbin "baserom.dol", 0x1053D8, 0x4
.global lbl_801083DC
lbl_801083DC:
	.incbin "baserom.dol", 0x1053DC, 0x4
.global lbl_801083E0
lbl_801083E0:
	.incbin "baserom.dol", 0x1053E0, 0x4
.global lbl_801083E4
lbl_801083E4:
	.incbin "baserom.dol", 0x1053E4, 0x4
.global lbl_801083E8
lbl_801083E8:
	.incbin "baserom.dol", 0x1053E8, 0x4
.global lbl_801083EC
lbl_801083EC:
	.incbin "baserom.dol", 0x1053EC, 0x14
.global lbl_80108400
lbl_80108400:
	.incbin "baserom.dol", 0x105400, 0x4
.global lbl_80108404
lbl_80108404:
	.incbin "baserom.dol", 0x105404, 0x4
.global lbl_80108408
lbl_80108408:
	.incbin "baserom.dol", 0x105408, 0x4
.global lbl_8010840C
lbl_8010840C:
	.incbin "baserom.dol", 0x10540C, 0x4
.global lbl_80108410
lbl_80108410:
	.incbin "baserom.dol", 0x105410, 0x4
.global lbl_80108414
lbl_80108414:
	.incbin "baserom.dol", 0x105414, 0x4
.global lbl_80108418
lbl_80108418:
	.incbin "baserom.dol", 0x105418, 0x4
.global lbl_8010841C
lbl_8010841C:
	.incbin "baserom.dol", 0x10541C, 0x4
.global lbl_80108420
lbl_80108420:
	.incbin "baserom.dol", 0x105420, 0x4
.global lbl_80108424
lbl_80108424:
	.incbin "baserom.dol", 0x105424, 0x4
.global lbl_80108428
lbl_80108428:
	.incbin "baserom.dol", 0x105428, 0x4
.global lbl_8010842C
lbl_8010842C:
	.incbin "baserom.dol", 0x10542C, 0x4
.global lbl_80108430
lbl_80108430:
	.incbin "baserom.dol", 0x105430, 0x8
.global lbl_80108438
lbl_80108438:
	.incbin "baserom.dol", 0x105438, 0x8
.global lbl_80108440
lbl_80108440:
	.incbin "baserom.dol", 0x105440, 0x4
.global lbl_80108444
lbl_80108444:
	.incbin "baserom.dol", 0x105444, 0x4
.global lbl_80108448
lbl_80108448:
	.incbin "baserom.dol", 0x105448, 0x4
.global lbl_8010844C
lbl_8010844C:
	.incbin "baserom.dol", 0x10544C, 0x4
.global lbl_80108450
lbl_80108450:
	.incbin "baserom.dol", 0x105450, 0x8
.global lbl_80108458
lbl_80108458:
	.incbin "baserom.dol", 0x105458, 0x8
.global lbl_80108460
lbl_80108460:
	.incbin "baserom.dol", 0x105460, 0x8
.global lbl_80108468
lbl_80108468:
	.incbin "baserom.dol", 0x105468, 0x8
.global lbl_80108470
lbl_80108470:
	.incbin "baserom.dol", 0x105470, 0x4
.global lbl_80108474
lbl_80108474:
	.incbin "baserom.dol", 0x105474, 0x4
.global lbl_80108478
lbl_80108478:
	.incbin "baserom.dol", 0x105478, 0x4
.global lbl_8010847C
lbl_8010847C:
	.incbin "baserom.dol", 0x10547C, 0x4
.global lbl_80108480
lbl_80108480:
	.incbin "baserom.dol", 0x105480, 0x4
.global lbl_80108484
lbl_80108484:
	.incbin "baserom.dol", 0x105484, 0x4
.global lbl_80108488
lbl_80108488:
	.incbin "baserom.dol", 0x105488, 0x4
.global lbl_8010848C
lbl_8010848C:
	.incbin "baserom.dol", 0x10548C, 0x4
.global lbl_80108490
lbl_80108490:
	.incbin "baserom.dol", 0x105490, 0x4
.global lbl_80108494
lbl_80108494:
	.incbin "baserom.dol", 0x105494, 0x4
.global lbl_80108498
lbl_80108498:
	.incbin "baserom.dol", 0x105498, 0x4
.global lbl_8010849C
lbl_8010849C:
	.incbin "baserom.dol", 0x10549C, 0x4
.global lbl_801084A0
lbl_801084A0:
	.incbin "baserom.dol", 0x1054A0, 0x4
.global lbl_801084A4
lbl_801084A4:
	.incbin "baserom.dol", 0x1054A4, 0x4
.global lbl_801084A8
lbl_801084A8:
	.incbin "baserom.dol", 0x1054A8, 0x4
.global lbl_801084AC
lbl_801084AC:
	.incbin "baserom.dol", 0x1054AC, 0x4
.global lbl_801084B0
lbl_801084B0:
	.incbin "baserom.dol", 0x1054B0, 0x4
.global lbl_801084B4
lbl_801084B4:
	.incbin "baserom.dol", 0x1054B4, 0x4
.global lbl_801084B8
lbl_801084B8:
	.incbin "baserom.dol", 0x1054B8, 0x8
.global lbl_801084C0
lbl_801084C0:
	.incbin "baserom.dol", 0x1054C0, 0x8
.global lbl_801084C8
lbl_801084C8:
	.incbin "baserom.dol", 0x1054C8, 0x4
.global lbl_801084CC
lbl_801084CC:
	.incbin "baserom.dol", 0x1054CC, 0x4
.global lbl_801084D0
lbl_801084D0:
	.incbin "baserom.dol", 0x1054D0, 0x8
.global lbl_801084D8
lbl_801084D8:
	.incbin "baserom.dol", 0x1054D8, 0x8
.global lbl_801084E0
lbl_801084E0:
	.incbin "baserom.dol", 0x1054E0, 0x8
.global lbl_801084E8
lbl_801084E8:
	.incbin "baserom.dol", 0x1054E8, 0x8
.global lbl_801084F0
lbl_801084F0:
	.incbin "baserom.dol", 0x1054F0, 0x4
.global lbl_801084F4
lbl_801084F4:
	.incbin "baserom.dol", 0x1054F4, 0x4
.global lbl_801084F8
lbl_801084F8:
	.incbin "baserom.dol", 0x1054F8, 0x4
.global lbl_801084FC
lbl_801084FC:
	.incbin "baserom.dol", 0x1054FC, 0x4
.global lbl_80108500
lbl_80108500:
	.incbin "baserom.dol", 0x105500, 0x4
.global lbl_80108504
lbl_80108504:
	.incbin "baserom.dol", 0x105504, 0x4
.global lbl_80108508
lbl_80108508:
	.incbin "baserom.dol", 0x105508, 0x4
.global lbl_8010850C
lbl_8010850C:
	.incbin "baserom.dol", 0x10550C, 0x4
.global lbl_80108510
lbl_80108510:
	.incbin "baserom.dol", 0x105510, 0x8
.global lbl_80108518
lbl_80108518:
	.incbin "baserom.dol", 0x105518, 0x110C
.global lbl_80109624
lbl_80109624:
	.incbin "baserom.dol", 0x106624, 0x4
.global lbl_80109628
lbl_80109628:
	.incbin "baserom.dol", 0x106628, 0x8
.global lbl_80109630
lbl_80109630:
	.incbin "baserom.dol", 0x106630, 0x4
.global lbl_80109634
lbl_80109634:
	.incbin "baserom.dol", 0x106634, 0x4
.global lbl_80109638
lbl_80109638:
	.incbin "baserom.dol", 0x106638, 0x8
.global lbl_80109640
lbl_80109640:
	.incbin "baserom.dol", 0x106640, 0x8
.global lbl_80109648
lbl_80109648:
	.incbin "baserom.dol", 0x106648, 0x4
.global lbl_8010964C
lbl_8010964C:
	.incbin "baserom.dol", 0x10664C, 0x4
.global lbl_80109650
lbl_80109650:
	.incbin "baserom.dol", 0x106650, 0x10
.global lbl_80109660
lbl_80109660:
	.incbin "baserom.dol", 0x106660, 0x4
.global lbl_80109664
lbl_80109664:
	.incbin "baserom.dol", 0x106664, 0xC82
.global lbl_8010A2E6
lbl_8010A2E6:
	.incbin "baserom.dol", 0x1072E6, 0x12
.global lbl_8010A2F8
lbl_8010A2F8:
	.incbin "baserom.dol", 0x1072F8, 0x4
.global lbl_8010A2FC
lbl_8010A2FC:
	.incbin "baserom.dol", 0x1072FC, 0xC
.global lbl_8010A308
lbl_8010A308:
	.incbin "baserom.dol", 0x107308, 0x4
.global lbl_8010A30C
lbl_8010A30C:
	.incbin "baserom.dol", 0x10730C, 0x4
.global lbl_8010A310
lbl_8010A310:
	.incbin "baserom.dol", 0x107310, 0x4
.global s_ats_levels_title_ats_8010a314
s_ats_levels_title_ats_8010a314:
	.incbin "baserom.dol", 0x107314, 0x18
.global s_levels_b_titles_titles_dat_8010a32c
s_levels_b_titles_titles_dat_8010a32c:
	.incbin "baserom.dol", 0x10732C, 0x1C
.global s_ats_splash_ripples_ats_8010a348
s_ats_splash_ripples_ats_8010a348:
	.incbin "baserom.dol", 0x107348, 0x18
.global s_ats_elecy_elecy2_ats_8010a360
s_ats_elecy_elecy2_ats_8010a360:
	.incbin "baserom.dol", 0x107360, 0x18
.global s_levels_b_outro_outro_dat_8010a378
s_levels_b_outro_outro_dat_8010a378:
	.incbin "baserom.dol", 0x107378, 0x1C
.global s_levels_b_outro2_outro2chars_dat_8010a394
s_levels_b_outro2_outro2chars_dat_8010a394:
	.incbin "baserom.dol", 0x107394, 0x20
.global lbl_8010A3B4
lbl_8010A3B4:
	.incbin "baserom.dol", 0x1073B4, 0x4
.global lbl_8010A3B8
lbl_8010A3B8:
	.incbin "baserom.dol", 0x1073B8, 0x4
.global lbl_8010A3BC
lbl_8010A3BC:
	.incbin "baserom.dol", 0x1073BC, 0x4
.global lbl_8010A3C0
lbl_8010A3C0:
	.incbin "baserom.dol", 0x1073C0, 0x4
.global lbl_8010A3C4
lbl_8010A3C4:
	.incbin "baserom.dol", 0x1073C4, 0x4
.global lbl_8010A3C8
lbl_8010A3C8:
	.incbin "baserom.dol", 0x1073C8, 0x48
.global lbl_8010A410
lbl_8010A410:
	.incbin "baserom.dol", 0x107410, 0xC
.global lbl_8010A41C
lbl_8010A41C:
	.incbin "baserom.dol", 0x10741C, 0x4
.global lbl_8010A420
lbl_8010A420:
	.incbin "baserom.dol", 0x107420, 0x4
.global lbl_8010A424
lbl_8010A424:
	.incbin "baserom.dol", 0x107424, 0x4
.global lbl_8010A428
lbl_8010A428:
	.incbin "baserom.dol", 0x107428, 0x4
.global lbl_8010A42C
lbl_8010A42C:
	.incbin "baserom.dol", 0x10742C, 0x4
.global lbl_8010A430
lbl_8010A430:
	.incbin "baserom.dol", 0x107430, 0x4
.global lbl_8010A434
lbl_8010A434:
	.incbin "baserom.dol", 0x107434, 0x4
.global lbl_8010A438
lbl_8010A438:
	.incbin "baserom.dol", 0x107438, 0x130
.global lbl_8010A568
lbl_8010A568:
	.incbin "baserom.dol", 0x107568, 0x4
.global lbl_8010A56C
lbl_8010A56C:
	.incbin "baserom.dol", 0x10756C, 0x4
.global lbl_8010A570
lbl_8010A570:
	.incbin "baserom.dol", 0x107570, 0x4
.global lbl_8010A574
lbl_8010A574:
	.incbin "baserom.dol", 0x107574, 0x4
.global lbl_8010A578
lbl_8010A578:
	.incbin "baserom.dol", 0x107578, 0x4
.global lbl_8010A57C
lbl_8010A57C:
	.incbin "baserom.dol", 0x10757C, 0x4
.global lbl_8010A580
lbl_8010A580:
	.incbin "baserom.dol", 0x107580, 0x4
.global lbl_8010A584
lbl_8010A584:
	.incbin "baserom.dol", 0x107584, 0x4
.global lbl_8010A588
lbl_8010A588:
	.incbin "baserom.dol", 0x107588, 0x4
.global lbl_8010A58C
lbl_8010A58C:
	.incbin "baserom.dol", 0x10758C, 0x4
.global lbl_8010A590
lbl_8010A590:
	.incbin "baserom.dol", 0x107590, 0x4
.global lbl_8010A594
lbl_8010A594:
	.incbin "baserom.dol", 0x107594, 0x4
.global lbl_8010A598
lbl_8010A598:
	.incbin "baserom.dol", 0x107598, 0x4
.global lbl_8010A59C
lbl_8010A59C:
	.incbin "baserom.dol", 0x10759C, 0x4
.global lbl_8010A5A0
lbl_8010A5A0:
	.incbin "baserom.dol", 0x1075A0, 0x4
.global lbl_8010A5A4
lbl_8010A5A4:
	.incbin "baserom.dol", 0x1075A4, 0x4
.global lbl_8010A5A8
lbl_8010A5A8:
	.incbin "baserom.dol", 0x1075A8, 0x4
.global lbl_8010A5AC
lbl_8010A5AC:
	.incbin "baserom.dol", 0x1075AC, 0x4
.global lbl_8010A5B0
lbl_8010A5B0:
	.incbin "baserom.dol", 0x1075B0, 0x4
.global lbl_8010A5B4
lbl_8010A5B4:
	.incbin "baserom.dol", 0x1075B4, 0x4
.global lbl_8010A5B8
lbl_8010A5B8:
	.incbin "baserom.dol", 0x1075B8, 0x248
.global lbl_8010A800
lbl_8010A800:
	.incbin "baserom.dol", 0x107800, 0x8
.global lbl_8010A808
lbl_8010A808:
	.incbin "baserom.dol", 0x107808, 0xD4
.global lbl_8010A8DC
lbl_8010A8DC:
	.incbin "baserom.dol", 0x1078DC, 0x4
.global lbl_8010A8E0
lbl_8010A8E0:
	.incbin "baserom.dol", 0x1078E0, 0x4
.global lbl_8010A8E4
lbl_8010A8E4:
	.incbin "baserom.dol", 0x1078E4, 0x4
.global lbl_8010A8E8
lbl_8010A8E8:
	.incbin "baserom.dol", 0x1078E8, 0x4
.global lbl_8010A8EC
lbl_8010A8EC:
	.incbin "baserom.dol", 0x1078EC, 0x4
.global lbl_8010A8F0
lbl_8010A8F0:
	.incbin "baserom.dol", 0x1078F0, 0x4
.global lbl_8010A8F4
lbl_8010A8F4:
	.incbin "baserom.dol", 0x1078F4, 0xC
.global lbl_8010A900
lbl_8010A900:
	.incbin "baserom.dol", 0x107900, 0x8
.global lbl_8010A908
lbl_8010A908:
	.incbin "baserom.dol", 0x107908, 0x4
.global lbl_8010A90C
lbl_8010A90C:
	.incbin "baserom.dol", 0x10790C, 0x4
.global lbl_8010A910
lbl_8010A910:
	.incbin "baserom.dol", 0x107910, 0x4
.global lbl_8010A914
lbl_8010A914:
	.incbin "baserom.dol", 0x107914, 0x4
.global lbl_8010A918
lbl_8010A918:
	.incbin "baserom.dol", 0x107918, 0x4
.global lbl_8010A91C
lbl_8010A91C:
	.incbin "baserom.dol", 0x10791C, 0x4
.global lbl_8010A920
lbl_8010A920:
	.incbin "baserom.dol", 0x107920, 0x8
.global lbl_8010A928
lbl_8010A928:
	.incbin "baserom.dol", 0x107928, 0x8
.global lbl_8010A930
lbl_8010A930:
	.incbin "baserom.dol", 0x107930, 0x4
.global lbl_8010A934
lbl_8010A934:
	.incbin "baserom.dol", 0x107934, 0x4
.global lbl_8010A938
lbl_8010A938:
	.incbin "baserom.dol", 0x107938, 0x4
.global lbl_8010A93C
lbl_8010A93C:
	.incbin "baserom.dol", 0x10793C, 0x4
.global lbl_8010A940
lbl_8010A940:
	.incbin "baserom.dol", 0x107940, 0x4
.global lbl_8010A944
lbl_8010A944:
	.incbin "baserom.dol", 0x107944, 0x4
.global lbl_8010A948
lbl_8010A948:
	.incbin "baserom.dol", 0x107948, 0x4
.global lbl_8010A94C
lbl_8010A94C:
	.incbin "baserom.dol", 0x10794C, 0x4
.global lbl_8010A950
lbl_8010A950:
	.incbin "baserom.dol", 0x107950, 0x8
.global lbl_8010A958
lbl_8010A958:
	.incbin "baserom.dol", 0x107958, 0x4
.global lbl_8010A95C
lbl_8010A95C:
	.incbin "baserom.dol", 0x10795C, 0x4
.global lbl_8010A960
lbl_8010A960:
	.incbin "baserom.dol", 0x107960, 0x4
.global lbl_8010A964
lbl_8010A964:
	.incbin "baserom.dol", 0x107964, 0x4
.global lbl_8010A968
lbl_8010A968:
	.incbin "baserom.dol", 0x107968, 0x4
.global lbl_8010A96C
lbl_8010A96C:
	.incbin "baserom.dol", 0x10796C, 0x4
.global lbl_8010A970
lbl_8010A970:
	.incbin "baserom.dol", 0x107970, 0x4
.global lbl_8010A974
lbl_8010A974:
	.incbin "baserom.dol", 0x107974, 0x4
.global lbl_8010A978
lbl_8010A978:
	.incbin "baserom.dol", 0x107978, 0x4
.global lbl_8010A97C
lbl_8010A97C:
	.incbin "baserom.dol", 0x10797C, 0x4
.global lbl_8010A980
lbl_8010A980:
	.incbin "baserom.dol", 0x107980, 0x4
.global lbl_8010A984
lbl_8010A984:
	.incbin "baserom.dol", 0x107984, 0x4
.global lbl_8010A988
lbl_8010A988:
	.incbin "baserom.dol", 0x107988, 0x4
.global lbl_8010A98C
lbl_8010A98C:
	.incbin "baserom.dol", 0x10798C, 0x4
.global lbl_8010A990
lbl_8010A990:
	.incbin "baserom.dol", 0x107990, 0x4
.global lbl_8010A994
lbl_8010A994:
	.incbin "baserom.dol", 0x107994, 0x4
.global lbl_8010A998
lbl_8010A998:
	.incbin "baserom.dol", 0x107998, 0x4
.global lbl_8010A99C
lbl_8010A99C:
	.incbin "baserom.dol", 0x10799C, 0x4
.global lbl_8010A9A0
lbl_8010A9A0:
	.incbin "baserom.dol", 0x1079A0, 0x4
.global lbl_8010A9A4
lbl_8010A9A4:
	.incbin "baserom.dol", 0x1079A4, 0x4
.global lbl_8010A9A8
lbl_8010A9A8:
	.incbin "baserom.dol", 0x1079A8, 0x8
.global lbl_8010A9B0
lbl_8010A9B0:
	.incbin "baserom.dol", 0x1079B0, 0x4
.global lbl_8010A9B4
lbl_8010A9B4:
	.incbin "baserom.dol", 0x1079B4, 0x4
.global lbl_8010A9B8
lbl_8010A9B8:
	.incbin "baserom.dol", 0x1079B8, 0x4
.global lbl_8010A9BC
lbl_8010A9BC:
	.incbin "baserom.dol", 0x1079BC, 0x4
.global lbl_8010A9C0
lbl_8010A9C0:
	.incbin "baserom.dol", 0x1079C0, 0x4
.global lbl_8010A9C4
lbl_8010A9C4:
	.incbin "baserom.dol", 0x1079C4, 0x4
.global lbl_8010A9C8
lbl_8010A9C8:
	.incbin "baserom.dol", 0x1079C8, 0x4
.global lbl_8010A9CC
lbl_8010A9CC:
	.incbin "baserom.dol", 0x1079CC, 0x4
.global lbl_8010A9D0
lbl_8010A9D0:
	.incbin "baserom.dol", 0x1079D0, 0x4
.global lbl_8010A9D4
lbl_8010A9D4:
	.incbin "baserom.dol", 0x1079D4, 0x4
.global lbl_8010A9D8
lbl_8010A9D8:
	.incbin "baserom.dol", 0x1079D8, 0x8
.global lbl_8010A9E0
lbl_8010A9E0:
	.incbin "baserom.dol", 0x1079E0, 0x4
.global lbl_8010A9E4
lbl_8010A9E4:
	.incbin "baserom.dol", 0x1079E4, 0x8
.global lbl_8010A9EC
lbl_8010A9EC:
	.incbin "baserom.dol", 0x1079EC, 0x4
.global lbl_8010A9F0
lbl_8010A9F0:
	.incbin "baserom.dol", 0x1079F0, 0x4
.global lbl_8010A9F4
lbl_8010A9F4:
	.incbin "baserom.dol", 0x1079F4, 0x4
.global lbl_8010A9F8
lbl_8010A9F8:
	.incbin "baserom.dol", 0x1079F8, 0x4
.global lbl_8010A9FC
lbl_8010A9FC:
	.incbin "baserom.dol", 0x1079FC, 0x4
.global lbl_8010AA00
lbl_8010AA00:
	.incbin "baserom.dol", 0x107A00, 0x4
.global lbl_8010AA04
lbl_8010AA04:
	.incbin "baserom.dol", 0x107A04, 0x4
.global lbl_8010AA08
lbl_8010AA08:
	.incbin "baserom.dol", 0x107A08, 0x4
.global lbl_8010AA0C
lbl_8010AA0C:
	.incbin "baserom.dol", 0x107A0C, 0x4
.global lbl_8010AA10
lbl_8010AA10:
	.incbin "baserom.dol", 0x107A10, 0x4
.global lbl_8010AA14
lbl_8010AA14:
	.incbin "baserom.dol", 0x107A14, 0x4
.global lbl_8010AA18
lbl_8010AA18:
	.incbin "baserom.dol", 0x107A18, 0x4
.global lbl_8010AA1C
lbl_8010AA1C:
	.incbin "baserom.dol", 0x107A1C, 0x4
.global lbl_8010AA20
lbl_8010AA20:
	.incbin "baserom.dol", 0x107A20, 0x4
.global lbl_8010AA24
lbl_8010AA24:
	.incbin "baserom.dol", 0x107A24, 0x4
.global lbl_8010AA28
lbl_8010AA28:
	.incbin "baserom.dol", 0x107A28, 0x4
.global lbl_8010AA2C
lbl_8010AA2C:
	.incbin "baserom.dol", 0x107A2C, 0x4
.global lbl_8010AA30
lbl_8010AA30:
	.incbin "baserom.dol", 0x107A30, 0x4
.global lbl_8010AA34
lbl_8010AA34:
	.incbin "baserom.dol", 0x107A34, 0x4
.global lbl_8010AA38
lbl_8010AA38:
	.incbin "baserom.dol", 0x107A38, 0x4
.global lbl_8010AA3C
lbl_8010AA3C:
	.incbin "baserom.dol", 0x107A3C, 0x4
.global lbl_8010AA40
lbl_8010AA40:
	.incbin "baserom.dol", 0x107A40, 0x4
.global lbl_8010AA44
lbl_8010AA44:
	.incbin "baserom.dol", 0x107A44, 0x4
.global lbl_8010AA48
lbl_8010AA48:
	.incbin "baserom.dol", 0x107A48, 0x4
.global lbl_8010AA4C
lbl_8010AA4C:
	.incbin "baserom.dol", 0x107A4C, 0x4
.global lbl_8010AA50
lbl_8010AA50:
	.incbin "baserom.dol", 0x107A50, 0x4
.global lbl_8010AA54
lbl_8010AA54:
	.incbin "baserom.dol", 0x107A54, 0x4
.global lbl_8010AA58
lbl_8010AA58:
	.incbin "baserom.dol", 0x107A58, 0x4
.global lbl_8010AA5C
lbl_8010AA5C:
	.incbin "baserom.dol", 0x107A5C, 0x4
.global lbl_8010AA60
lbl_8010AA60:
	.incbin "baserom.dol", 0x107A60, 0x4
.global lbl_8010AA64
lbl_8010AA64:
	.incbin "baserom.dol", 0x107A64, 0x4
.global lbl_8010AA68
lbl_8010AA68:
	.incbin "baserom.dol", 0x107A68, 0x4
.global lbl_8010AA6C
lbl_8010AA6C:
	.incbin "baserom.dol", 0x107A6C, 0x4
.global lbl_8010AA70
lbl_8010AA70:
	.incbin "baserom.dol", 0x107A70, 0x8
.global lbl_8010AA78
lbl_8010AA78:
	.incbin "baserom.dol", 0x107A78, 0x8
.global lbl_8010AA80
lbl_8010AA80:
	.incbin "baserom.dol", 0x107A80, 0x4
.global lbl_8010AA84
lbl_8010AA84:
	.incbin "baserom.dol", 0x107A84, 0x4
.global lbl_8010AA88
lbl_8010AA88:
	.incbin "baserom.dol", 0x107A88, 0x4
.global lbl_8010AA8C
lbl_8010AA8C:
	.incbin "baserom.dol", 0x107A8C, 0x4
.global lbl_8010AA90
lbl_8010AA90:
	.incbin "baserom.dol", 0x107A90, 0x4
.global lbl_8010AA94
lbl_8010AA94:
	.incbin "baserom.dol", 0x107A94, 0x4
.global lbl_8010AA98
lbl_8010AA98:
	.incbin "baserom.dol", 0x107A98, 0x4
.global lbl_8010AA9C
lbl_8010AA9C:
	.incbin "baserom.dol", 0x107A9C, 0x8
.global lbl_8010AAA4
lbl_8010AAA4:
	.incbin "baserom.dol", 0x107AA4, 0xC
.global lbl_8010AAB0
lbl_8010AAB0:
	.incbin "baserom.dol", 0x107AB0, 0x8
.global lbl_8010AAB8
lbl_8010AAB8:
	.incbin "baserom.dol", 0x107AB8, 0x4
.global lbl_8010AABC
lbl_8010AABC:
	.incbin "baserom.dol", 0x107ABC, 0x4
.global lbl_8010AAC0
lbl_8010AAC0:
	.incbin "baserom.dol", 0x107AC0, 0x4
.global lbl_8010AAC4
lbl_8010AAC4:
	.incbin "baserom.dol", 0x107AC4, 0x4
.global lbl_8010AAC8
lbl_8010AAC8:
	.incbin "baserom.dol", 0x107AC8, 0x4
.global lbl_8010AACC
lbl_8010AACC:
	.incbin "baserom.dol", 0x107ACC, 0x3D4
.global lbl_8010AEA0
lbl_8010AEA0:
	.incbin "baserom.dol", 0x107EA0, 0x4
.global lbl_8010AEA4
lbl_8010AEA4:
	.incbin "baserom.dol", 0x107EA4, 0x4
.global lbl_8010AEA8
lbl_8010AEA8:
	.incbin "baserom.dol", 0x107EA8, 0x4
.global lbl_8010AEAC
lbl_8010AEAC:
	.incbin "baserom.dol", 0x107EAC, 0x4
.global lbl_8010AEB0
lbl_8010AEB0:
	.incbin "baserom.dol", 0x107EB0, 0x4
.global lbl_8010AEB4
lbl_8010AEB4:
	.incbin "baserom.dol", 0x107EB4, 0x4
.global lbl_8010AEB8
lbl_8010AEB8:
	.incbin "baserom.dol", 0x107EB8, 0x4
.global lbl_8010AEBC
lbl_8010AEBC:
	.incbin "baserom.dol", 0x107EBC, 0x4
.global lbl_8010AEC0
lbl_8010AEC0:
	.incbin "baserom.dol", 0x107EC0, 0x4
.global lbl_8010AEC4
lbl_8010AEC4:
	.incbin "baserom.dol", 0x107EC4, 0x4
.global lbl_8010AEC8
lbl_8010AEC8:
	.incbin "baserom.dol", 0x107EC8, 0x4
.global lbl_8010AECC
lbl_8010AECC:
	.incbin "baserom.dol", 0x107ECC, 0x4
.global lbl_8010AED0
lbl_8010AED0:
	.incbin "baserom.dol", 0x107ED0, 0x4
.global lbl_8010AED4
lbl_8010AED4:
	.incbin "baserom.dol", 0x107ED4, 0x4
.global lbl_8010AED8
lbl_8010AED8:
	.incbin "baserom.dol", 0x107ED8, 0x4
.global lbl_8010AEDC
lbl_8010AEDC:
	.incbin "baserom.dol", 0x107EDC, 0x4
.global lbl_8010AEE0
lbl_8010AEE0:
	.incbin "baserom.dol", 0x107EE0, 0x4
.global lbl_8010AEE4
lbl_8010AEE4:
	.incbin "baserom.dol", 0x107EE4, 0x4
.global lbl_8010AEE8
lbl_8010AEE8:
	.incbin "baserom.dol", 0x107EE8, 0x8
.global lbl_8010AEF0
lbl_8010AEF0:
	.incbin "baserom.dol", 0x107EF0, 0x4
.global lbl_8010AEF4
lbl_8010AEF4:
	.incbin "baserom.dol", 0x107EF4, 0x4
.global lbl_8010AEF8
lbl_8010AEF8:
	.incbin "baserom.dol", 0x107EF8, 0x4
.global lbl_8010AEFC
lbl_8010AEFC:
	.incbin "baserom.dol", 0x107EFC, 0x4
.global lbl_8010AF00
lbl_8010AF00:
	.incbin "baserom.dol", 0x107F00, 0x4
.global lbl_8010AF04
lbl_8010AF04:
	.incbin "baserom.dol", 0x107F04, 0x240
.global lbl_8010B144
lbl_8010B144:
	.incbin "baserom.dol", 0x108144, 0x4
.global lbl_8010B148
lbl_8010B148:
	.incbin "baserom.dol", 0x108148, 0x4
.global lbl_8010B14C
lbl_8010B14C:
	.incbin "baserom.dol", 0x10814C, 0x4
.global lbl_8010B150
lbl_8010B150:
	.incbin "baserom.dol", 0x108150, 0x4
.global lbl_8010B154
lbl_8010B154:
	.incbin "baserom.dol", 0x108154, 0x4
.global lbl_8010B158
lbl_8010B158:
	.incbin "baserom.dol", 0x108158, 0x4
.global lbl_8010B15C
lbl_8010B15C:
	.incbin "baserom.dol", 0x10815C, 0x4
.global lbl_8010B160
lbl_8010B160:
	.incbin "baserom.dol", 0x108160, 0x4
.global lbl_8010B164
lbl_8010B164:
	.incbin "baserom.dol", 0x108164, 0x4
.global lbl_8010B168
lbl_8010B168:
	.incbin "baserom.dol", 0x108168, 0x8
.global lbl_8010B170
lbl_8010B170:
	.incbin "baserom.dol", 0x108170, 0x4
.global lbl_8010B174
lbl_8010B174:
	.incbin "baserom.dol", 0x108174, 0x4
.global lbl_8010B178
lbl_8010B178:
	.incbin "baserom.dol", 0x108178, 0x8
.global lbl_8010B180
lbl_8010B180:
	.incbin "baserom.dol", 0x108180, 0x8
.global lbl_8010B188
lbl_8010B188:
	.incbin "baserom.dol", 0x108188, 0x4
.global lbl_8010B18C
lbl_8010B18C:
	.incbin "baserom.dol", 0x10818C, 0x4
.global lbl_8010B190
lbl_8010B190:
	.incbin "baserom.dol", 0x108190, 0x4
.global lbl_8010B194
lbl_8010B194:
	.incbin "baserom.dol", 0x108194, 0x4
.global lbl_8010B198
lbl_8010B198:
	.incbin "baserom.dol", 0x108198, 0x4
.global lbl_8010B19C
lbl_8010B19C:
	.incbin "baserom.dol", 0x10819C, 0x4
.global lbl_8010B1A0
lbl_8010B1A0:
	.incbin "baserom.dol", 0x1081A0, 0x4
.global lbl_8010B1A4
lbl_8010B1A4:
	.incbin "baserom.dol", 0x1081A4, 0x4
.global lbl_8010B1A8
lbl_8010B1A8:
	.incbin "baserom.dol", 0x1081A8, 0x4
.global lbl_8010B1AC
lbl_8010B1AC:
	.incbin "baserom.dol", 0x1081AC, 0x4
.global lbl_8010B1B0
lbl_8010B1B0:
	.incbin "baserom.dol", 0x1081B0, 0x4
.global lbl_8010B1B4
lbl_8010B1B4:
	.incbin "baserom.dol", 0x1081B4, 0x4
.global lbl_8010B1B8
lbl_8010B1B8:
	.incbin "baserom.dol", 0x1081B8, 0x4
.global lbl_8010B1BC
lbl_8010B1BC:
	.incbin "baserom.dol", 0x1081BC, 0x4
.global lbl_8010B1C0
lbl_8010B1C0:
	.incbin "baserom.dol", 0x1081C0, 0x4
.global lbl_8010B1C4
lbl_8010B1C4:
	.incbin "baserom.dol", 0x1081C4, 0x4
.global lbl_8010B1C8
lbl_8010B1C8:
	.incbin "baserom.dol", 0x1081C8, 0x4
.global lbl_8010B1CC
lbl_8010B1CC:
	.incbin "baserom.dol", 0x1081CC, 0x4
.global lbl_8010B1D0
lbl_8010B1D0:
	.incbin "baserom.dol", 0x1081D0, 0x4
.global lbl_8010B1D4
lbl_8010B1D4:
	.incbin "baserom.dol", 0x1081D4, 0x4
.global lbl_8010B1D8
lbl_8010B1D8:
	.incbin "baserom.dol", 0x1081D8, 0x4
.global lbl_8010B1DC
lbl_8010B1DC:
	.incbin "baserom.dol", 0x1081DC, 0x4
.global lbl_8010B1E0
lbl_8010B1E0:
	.incbin "baserom.dol", 0x1081E0, 0x4
.global lbl_8010B1E4
lbl_8010B1E4:
	.incbin "baserom.dol", 0x1081E4, 0x4
.global lbl_8010B1E8
lbl_8010B1E8:
	.incbin "baserom.dol", 0x1081E8, 0x4
.global lbl_8010B1EC
lbl_8010B1EC:
	.incbin "baserom.dol", 0x1081EC, 0x4
.global lbl_8010B1F0
lbl_8010B1F0:
	.incbin "baserom.dol", 0x1081F0, 0x4
.global lbl_8010B1F4
lbl_8010B1F4:
	.incbin "baserom.dol", 0x1081F4, 0x4
.global lbl_8010B1F8
lbl_8010B1F8:
	.incbin "baserom.dol", 0x1081F8, 0x4
.global lbl_8010B1FC
lbl_8010B1FC:
	.incbin "baserom.dol", 0x1081FC, 0x4
.global lbl_8010B200
lbl_8010B200:
	.incbin "baserom.dol", 0x108200, 0x4
.global lbl_8010B204
lbl_8010B204:
	.incbin "baserom.dol", 0x108204, 0x4
.global lbl_8010B208
lbl_8010B208:
	.incbin "baserom.dol", 0x108208, 0x4
.global lbl_8010B20C
lbl_8010B20C:
	.incbin "baserom.dol", 0x10820C, 0x4
.global lbl_8010B210
lbl_8010B210:
	.incbin "baserom.dol", 0x108210, 0x4
.global lbl_8010B214
lbl_8010B214:
	.incbin "baserom.dol", 0x108214, 0x4
.global lbl_8010B218
lbl_8010B218:
	.incbin "baserom.dol", 0x108218, 0x4
.global lbl_8010B21C
lbl_8010B21C:
	.incbin "baserom.dol", 0x10821C, 0x4
.global lbl_8010B220
lbl_8010B220:
	.incbin "baserom.dol", 0x108220, 0x4
.global lbl_8010B224
lbl_8010B224:
	.incbin "baserom.dol", 0x108224, 0x4
.global lbl_8010B228
lbl_8010B228:
	.incbin "baserom.dol", 0x108228, 0x4
.global lbl_8010B22C
lbl_8010B22C:
	.incbin "baserom.dol", 0x10822C, 0x4
.global lbl_8010B230
lbl_8010B230:
	.incbin "baserom.dol", 0x108230, 0x8
.global lbl_8010B238
lbl_8010B238:
	.incbin "baserom.dol", 0x108238, 0x8
.global lbl_8010B240
lbl_8010B240:
	.incbin "baserom.dol", 0x108240, 0x4
.global lbl_8010B244
lbl_8010B244:
	.incbin "baserom.dol", 0x108244, 0x4
.global lbl_8010B248
lbl_8010B248:
	.incbin "baserom.dol", 0x108248, 0x4
.global lbl_8010B24C
lbl_8010B24C:
	.incbin "baserom.dol", 0x10824C, 0x4
.global lbl_8010B250
lbl_8010B250:
	.incbin "baserom.dol", 0x108250, 0x4
.global lbl_8010B254
lbl_8010B254:
	.incbin "baserom.dol", 0x108254, 0x4
.global lbl_8010B258
lbl_8010B258:
	.incbin "baserom.dol", 0x108258, 0x4
.global lbl_8010B25C
lbl_8010B25C:
	.incbin "baserom.dol", 0x10825C, 0x4
.global lbl_8010B260
lbl_8010B260:
	.incbin "baserom.dol", 0x108260, 0x4
.global lbl_8010B264
lbl_8010B264:
	.incbin "baserom.dol", 0x108264, 0x4
.global lbl_8010B268
lbl_8010B268:
	.incbin "baserom.dol", 0x108268, 0x4
.global lbl_8010B26C
lbl_8010B26C:
	.incbin "baserom.dol", 0x10826C, 0x4
.global lbl_8010B270
lbl_8010B270:
	.incbin "baserom.dol", 0x108270, 0x4
.global lbl_8010B274
lbl_8010B274:
	.incbin "baserom.dol", 0x108274, 0x4
.global lbl_8010B278
lbl_8010B278:
	.incbin "baserom.dol", 0x108278, 0x8
.global lbl_8010B280
lbl_8010B280:
	.incbin "baserom.dol", 0x108280, 0x4
.global lbl_8010B284
lbl_8010B284:
	.incbin "baserom.dol", 0x108284, 0x4
.global lbl_8010B288
lbl_8010B288:
	.incbin "baserom.dol", 0x108288, 0x4
.global lbl_8010B28C
lbl_8010B28C:
	.incbin "baserom.dol", 0x10828C, 0x4
.global lbl_8010B290
lbl_8010B290:
	.incbin "baserom.dol", 0x108290, 0x8
.global lbl_8010B298
lbl_8010B298:
	.incbin "baserom.dol", 0x108298, 0x314
.global lbl_8010B5AC
lbl_8010B5AC:
	.incbin "baserom.dol", 0x1085AC, 0x4
.global s_vehicle_trigger___2i_in_8010b5b0
s_vehicle_trigger___2i_in_8010b5b0:
	.incbin "baserom.dol", 0x1085B0, 0x18
.global s_vehicle_trigger___2i_out_8010b5c8
s_vehicle_trigger___2i_out_8010b5c8:
	.incbin "baserom.dol", 0x1085C8, 0x1C
.global s_vehicle_cam___2i_8010b5e4
s_vehicle_cam___2i_8010b5e4:
	.incbin "baserom.dol", 0x1085E4, 0x14
.global s_vehicle_look___2i_8010b5f8
s_vehicle_look___2i_8010b5f8:
	.incbin "baserom.dol", 0x1085F8, 0x14
.global lbl_8010B60C
lbl_8010B60C:
	.incbin "baserom.dol", 0x10860C, 0x4
.global lbl_8010B610
lbl_8010B610:
	.incbin "baserom.dol", 0x108610, 0x4
.global lbl_8010B614
lbl_8010B614:
	.incbin "baserom.dol", 0x108614, 0x4
.global lbl_8010B618
lbl_8010B618:
	.incbin "baserom.dol", 0x108618, 0x4
.global lbl_8010B61C
lbl_8010B61C:
	.incbin "baserom.dol", 0x10861C, 0x4
.global lbl_8010B620
lbl_8010B620:
	.incbin "baserom.dol", 0x108620, 0x4
.global lbl_8010B624
lbl_8010B624:
	.incbin "baserom.dol", 0x108624, 0x4
.global lbl_8010B628
lbl_8010B628:
	.incbin "baserom.dol", 0x108628, 0x4
.global lbl_8010B62C
lbl_8010B62C:
	.incbin "baserom.dol", 0x10862C, 0x4
.global lbl_8010B630
lbl_8010B630:
	.incbin "baserom.dol", 0x108630, 0x4
.global lbl_8010B634
lbl_8010B634:
	.incbin "baserom.dol", 0x108634, 0x4
.global lbl_8010B638
lbl_8010B638:
	.incbin "baserom.dol", 0x108638, 0x4
.global lbl_8010B63C
lbl_8010B63C:
	.incbin "baserom.dol", 0x10863C, 0x4
.global lbl_8010B640
lbl_8010B640:
	.incbin "baserom.dol", 0x108640, 0x4
.global lbl_8010B644
lbl_8010B644:
	.incbin "baserom.dol", 0x108644, 0x4
.global lbl_8010B648
lbl_8010B648:
	.incbin "baserom.dol", 0x108648, 0x4
.global lbl_8010B64C
lbl_8010B64C:
	.incbin "baserom.dol", 0x10864C, 0x4
.global lbl_8010B650
lbl_8010B650:
	.incbin "baserom.dol", 0x108650, 0x4
.global lbl_8010B654
lbl_8010B654:
	.incbin "baserom.dol", 0x108654, 0x4
.global lbl_8010B658
lbl_8010B658:
	.incbin "baserom.dol", 0x108658, 0x4
.global lbl_8010B65C
lbl_8010B65C:
	.incbin "baserom.dol", 0x10865C, 0x4
.global lbl_8010B660
lbl_8010B660:
	.incbin "baserom.dol", 0x108660, 0x4
.global lbl_8010B664
lbl_8010B664:
	.incbin "baserom.dol", 0x108664, 0x4
.global lbl_8010B668
lbl_8010B668:
	.incbin "baserom.dol", 0x108668, 0x8
.global lbl_8010B670
lbl_8010B670:
	.incbin "baserom.dol", 0x108670, 0x4
.global lbl_8010B674
lbl_8010B674:
	.incbin "baserom.dol", 0x108674, 0x4
.global lbl_8010B678
lbl_8010B678:
	.incbin "baserom.dol", 0x108678, 0x4
.global lbl_8010B67C
lbl_8010B67C:
	.incbin "baserom.dol", 0x10867C, 0x4
.global lbl_8010B680
lbl_8010B680:
	.incbin "baserom.dol", 0x108680, 0x4
.global lbl_8010B684
lbl_8010B684:
	.incbin "baserom.dol", 0x108684, 0x4
.global lbl_8010B688
lbl_8010B688:
	.incbin "baserom.dol", 0x108688, 0x4
.global s__i__i_8010b68c
s__i__i_8010b68c:
	.incbin "baserom.dol", 0x10868C, 0x8
.global lbl_8010B694
lbl_8010B694:
	.incbin "baserom.dol", 0x108694, 0x4
.global lbl_8010B698
lbl_8010B698:
	.incbin "baserom.dol", 0x108698, 0x8
.global lbl_8010B6A0
lbl_8010B6A0:
	.incbin "baserom.dol", 0x1086A0, 0x4
.global s__s_wmp_8010b6a4
s__s_wmp_8010b6a4:
	.incbin "baserom.dol", 0x1086A4, 0x8
.global lbl_8010B6AC
lbl_8010B6AC:
	.incbin "baserom.dol", 0x1086AC, 0x4
.global lbl_8010B6B0
lbl_8010B6B0:
	.incbin "baserom.dol", 0x1086B0, 0x4
.global lbl_8010B6B4
lbl_8010B6B4:
	.incbin "baserom.dol", 0x1086B4, 0x4
.global lbl_8010B6B8
lbl_8010B6B8:
	.incbin "baserom.dol", 0x1086B8, 0x4
.global lbl_8010B6BC
lbl_8010B6BC:
	.incbin "baserom.dol", 0x1086BC, 0x4
.global lbl_8010B6C0
lbl_8010B6C0:
	.incbin "baserom.dol", 0x1086C0, 0x4
.global lbl_8010B6C4
lbl_8010B6C4:
	.incbin "baserom.dol", 0x1086C4, 0x4
.global lbl_8010B6C8
lbl_8010B6C8:
	.incbin "baserom.dol", 0x1086C8, 0x4
.global lbl_8010B6CC
lbl_8010B6CC:
	.incbin "baserom.dol", 0x1086CC, 0x4
.global lbl_8010B6D0
lbl_8010B6D0:
	.incbin "baserom.dol", 0x1086D0, 0x4
.global lbl_8010B6D4
lbl_8010B6D4:
	.incbin "baserom.dol", 0x1086D4, 0x4
.global lbl_8010B6D8
lbl_8010B6D8:
	.incbin "baserom.dol", 0x1086D8, 0x4
.global lbl_8010B6DC
lbl_8010B6DC:
	.incbin "baserom.dol", 0x1086DC, 0x4
.global lbl_8010B6E0
lbl_8010B6E0:
	.incbin "baserom.dol", 0x1086E0, 0x4
.global lbl_8010B6E4
lbl_8010B6E4:
	.incbin "baserom.dol", 0x1086E4, 0x4
.global lbl_8010B6E8
lbl_8010B6E8:
	.incbin "baserom.dol", 0x1086E8, 0x4
.global lbl_8010B6EC
lbl_8010B6EC:
	.incbin "baserom.dol", 0x1086EC, 0x4
.global lbl_8010B6F0
lbl_8010B6F0:
	.incbin "baserom.dol", 0x1086F0, 0x4
.global lbl_8010B6F4
lbl_8010B6F4:
	.incbin "baserom.dol", 0x1086F4, 0x4
.global lbl_8010B6F8
lbl_8010B6F8:
	.incbin "baserom.dol", 0x1086F8, 0x4
.global lbl_8010B6FC
lbl_8010B6FC:
	.incbin "baserom.dol", 0x1086FC, 0x4
.global lbl_8010B700
lbl_8010B700:
	.incbin "baserom.dol", 0x108700, 0x4
.global lbl_8010B704
lbl_8010B704:
	.incbin "baserom.dol", 0x108704, 0x4
.global lbl_8010B708
lbl_8010B708:
	.incbin "baserom.dol", 0x108708, 0x8
.global lbl_8010B710
lbl_8010B710:
	.incbin "baserom.dol", 0x108710, 0x8
.global lbl_8010B718
lbl_8010B718:
	.incbin "baserom.dol", 0x108718, 0x4
.global lbl_8010B71C
lbl_8010B71C:
	.incbin "baserom.dol", 0x10871C, 0x4
.global lbl_8010B720
lbl_8010B720:
	.incbin "baserom.dol", 0x108720, 0x4
.global lbl_8010B724
lbl_8010B724:
	.incbin "baserom.dol", 0x108724, 0x4
.global lbl_8010B728
lbl_8010B728:
	.incbin "baserom.dol", 0x108728, 0x4
.global lbl_8010B72C
lbl_8010B72C:
	.incbin "baserom.dol", 0x10872C, 0x4
.global lbl_8010B730
lbl_8010B730:
	.incbin "baserom.dol", 0x108730, 0x4
.global lbl_8010B734
lbl_8010B734:
	.incbin "baserom.dol", 0x108734, 0x4
.global lbl_8010B738
lbl_8010B738:
	.incbin "baserom.dol", 0x108738, 0x8
.global lbl_8010B740
lbl_8010B740:
	.incbin "baserom.dol", 0x108740, 0x8
.global lbl_8010B748
lbl_8010B748:
	.incbin "baserom.dol", 0x108748, 0x4
.global lbl_8010B74C
lbl_8010B74C:
	.incbin "baserom.dol", 0x10874C, 0x4
.global lbl_8010B750
lbl_8010B750:
	.incbin "baserom.dol", 0x108750, 0x4
.global lbl_8010B754
lbl_8010B754:
	.incbin "baserom.dol", 0x108754, 0x4
.global lbl_8010B758
lbl_8010B758:
	.incbin "baserom.dol", 0x108758, 0x4
.global lbl_8010B75C
lbl_8010B75C:
	.incbin "baserom.dol", 0x10875C, 0x4
.global lbl_8010B760
lbl_8010B760:
	.incbin "baserom.dol", 0x108760, 0x4
.global lbl_8010B764
lbl_8010B764:
	.incbin "baserom.dol", 0x108764, 0x4
.global lbl_8010B768
lbl_8010B768:
	.incbin "baserom.dol", 0x108768, 0x4
.global lbl_8010B76C
lbl_8010B76C:
	.incbin "baserom.dol", 0x10876C, 0x4
.global lbl_8010B770
lbl_8010B770:
	.incbin "baserom.dol", 0x108770, 0x4
.global lbl_8010B774
lbl_8010B774:
	.incbin "baserom.dol", 0x108774, 0x4
.global lbl_8010B778
lbl_8010B778:
	.incbin "baserom.dol", 0x108778, 0x4
.global lbl_8010B77C
lbl_8010B77C:
	.incbin "baserom.dol", 0x10877C, 0x4
.global lbl_8010B780
lbl_8010B780:
	.incbin "baserom.dol", 0x108780, 0x4
.global lbl_8010B784
lbl_8010B784:
	.incbin "baserom.dol", 0x108784, 0x4
.global lbl_8010B788
lbl_8010B788:
	.incbin "baserom.dol", 0x108788, 0x8
.global lbl_8010B790
lbl_8010B790:
	.incbin "baserom.dol", 0x108790, 0x8
.global lbl_8010B798
lbl_8010B798:
	.incbin "baserom.dol", 0x108798, 0x4
.global lbl_8010B79C
lbl_8010B79C:
	.incbin "baserom.dol", 0x10879C, 0x4
.global lbl_8010B7A0
lbl_8010B7A0:
	.incbin "baserom.dol", 0x1087A0, 0x4
.global lbl_8010B7A4
lbl_8010B7A4:
	.incbin "baserom.dol", 0x1087A4, 0x4
.global lbl_8010B7A8
lbl_8010B7A8:
	.incbin "baserom.dol", 0x1087A8, 0x4
.global lbl_8010B7AC
lbl_8010B7AC:
	.incbin "baserom.dol", 0x1087AC, 0x4
.global lbl_8010B7B0
lbl_8010B7B0:
	.incbin "baserom.dol", 0x1087B0, 0x4
.global lbl_8010B7B4
lbl_8010B7B4:
	.incbin "baserom.dol", 0x1087B4, 0x4
.global lbl_8010B7B8
lbl_8010B7B8:
	.incbin "baserom.dol", 0x1087B8, 0x4
.global lbl_8010B7BC
lbl_8010B7BC:
	.incbin "baserom.dol", 0x1087BC, 0x4
.global lbl_8010B7C0
lbl_8010B7C0:
	.incbin "baserom.dol", 0x1087C0, 0x4
.global lbl_8010B7C4
lbl_8010B7C4:
	.incbin "baserom.dol", 0x1087C4, 0x4
.global lbl_8010B7C8
lbl_8010B7C8:
	.incbin "baserom.dol", 0x1087C8, 0x4
.global lbl_8010B7CC
lbl_8010B7CC:
	.incbin "baserom.dol", 0x1087CC, 0x4
.global lbl_8010B7D0
lbl_8010B7D0:
	.incbin "baserom.dol", 0x1087D0, 0x4
.global lbl_8010B7D4
lbl_8010B7D4:
	.incbin "baserom.dol", 0x1087D4, 0x4
.global lbl_8010B7D8
lbl_8010B7D8:
	.incbin "baserom.dol", 0x1087D8, 0x4
.global lbl_8010B7DC
lbl_8010B7DC:
	.incbin "baserom.dol", 0x1087DC, 0x4
.global lbl_8010B7E0
lbl_8010B7E0:
	.incbin "baserom.dol", 0x1087E0, 0x4
.global lbl_8010B7E4
lbl_8010B7E4:
	.incbin "baserom.dol", 0x1087E4, 0x4
.global lbl_8010B7E8
lbl_8010B7E8:
	.incbin "baserom.dol", 0x1087E8, 0x4
.global lbl_8010B7EC
lbl_8010B7EC:
	.incbin "baserom.dol", 0x1087EC, 0x4
.global lbl_8010B7F0
lbl_8010B7F0:
	.incbin "baserom.dol", 0x1087F0, 0x8
.global lbl_8010B7F8
lbl_8010B7F8:
	.incbin "baserom.dol", 0x1087F8, 0x4
.global lbl_8010B7FC
lbl_8010B7FC:
	.incbin "baserom.dol", 0x1087FC, 0x4
.global lbl_8010B800
lbl_8010B800:
	.incbin "baserom.dol", 0x108800, 0x4
.global lbl_8010B804
lbl_8010B804:
	.incbin "baserom.dol", 0x108804, 0x4
.global lbl_8010B808
lbl_8010B808:
	.incbin "baserom.dol", 0x108808, 0x4
.global lbl_8010B80C
lbl_8010B80C:
	.incbin "baserom.dol", 0x10880C, 0x4
.global s_CRASH____8010b810
s_CRASH____8010b810:
	.incbin "baserom.dol", 0x108810, 0xC
.global lbl_8010B81C
lbl_8010B81C:
	.incbin "baserom.dol", 0x10881C, 0x4
.global lbl_8010B820
lbl_8010B820:
	.incbin "baserom.dol", 0x108820, 0x10
.global s_CRASH_8010b830
s_CRASH_8010b830:
	.incbin "baserom.dol", 0x108830, 0xC
.global s__8010b83c
s__8010b83c:
	.incbin "baserom.dol", 0x10883C, 0xC
.global s_WOMBAT_8010b848
s_WOMBAT_8010b848:
	.incbin "baserom.dol", 0x108848, 0x8
.global lbl_8010B850
lbl_8010B850:
	.incbin "baserom.dol", 0x108850, 0x4
.global lbl_8010B854
lbl_8010B854:
	.incbin "baserom.dol", 0x108854, 0x4
.global lbl_8010B858
lbl_8010B858:
	.incbin "baserom.dol", 0x108858, 0x4
.global lbl_8010B85C
lbl_8010B85C:
	.incbin "baserom.dol", 0x10885C, 0x4
.global lbl_8010B860
lbl_8010B860:
	.incbin "baserom.dol", 0x108860, 0x8
.global lbl_8010B868
lbl_8010B868:
	.incbin "baserom.dol", 0x108868, 0x8
.global lbl_8010B870
lbl_8010B870:
	.incbin "baserom.dol", 0x108870, 0x8
.global lbl_8010B878
lbl_8010B878:
	.incbin "baserom.dol", 0x108878, 0x4
.global lbl_8010B87C
lbl_8010B87C:
	.incbin "baserom.dol", 0x10887C, 0x4
.global lbl_8010B880
lbl_8010B880:
	.incbin "baserom.dol", 0x108880, 0x4
.global lbl_8010B884
lbl_8010B884:
	.incbin "baserom.dol", 0x108884, 0x4
.global lbl_8010B888
lbl_8010B888:
	.incbin "baserom.dol", 0x108888, 0x4
.global lbl_8010B88C
lbl_8010B88C:
	.incbin "baserom.dol", 0x10888C, 0x4
.global lbl_8010B890
lbl_8010B890:
	.incbin "baserom.dol", 0x108890, 0x4
.global lbl_8010B894
lbl_8010B894:
	.incbin "baserom.dol", 0x108894, 0x4
.global s__s___s_8010b898
s__s___s_8010b898:
	.incbin "baserom.dol", 0x108898, 0x8
.global s__s___s_8010b8a0
s__s___s_8010b8a0:
	.incbin "baserom.dol", 0x1088A0, 0xC
.global s__c__i____c_8010b8ac
s__c__i____c_8010b8ac:
	.incbin "baserom.dol", 0x1088AC, 0xC
.global s_R_E_S_T_A_R_T_L_E_V_E_L_8010b8b8
s_R_E_S_T_A_R_T_L_E_V_E_L_8010b8b8:
	.incbin "baserom.dol", 0x1088B8, 0x1C
.global s_RESTART_LEVEL_8010b8d4
s_RESTART_LEVEL_8010b8d4:
	.incbin "baserom.dol", 0x1088D4, 0x10
.global s_R_E_S_E_T_L_E_V_E_L_8010b8e4
s_R_E_S_E_T_L_E_V_E_L_8010b8e4:
	.incbin "baserom.dol", 0x1088E4, 0x18
.global s_RESET_LEVEL_8010b8fc
s_RESET_LEVEL_8010b8fc:
	.incbin "baserom.dol", 0x1088FC, 0xC
.global s_G_O_T_O_L_E_V_E_L_8010b908
s_G_O_T_O_L_E_V_E_L_8010b908:
	.incbin "baserom.dol", 0x108908, 0x18
.global s_GOTO_LEVEL_8010b920
s_GOTO_LEVEL_8010b920:
	.incbin "baserom.dol", 0x108920, 0xC
.global lbl_8010B92C
lbl_8010B92C:
	.incbin "baserom.dol", 0x10892C, 0x8
.global s_I_N_V_I_N_C_I_B_I_L_I_T_Y___8010b934
s_I_N_V_I_N_C_I_B_I_L_I_T_Y___8010b934:
	.incbin "baserom.dol", 0x108934, 0x20
.global lbl_8010B954
lbl_8010B954:
	.incbin "baserom.dol", 0x108954, 0x10
.global s_G_O_T_O_N_E_X_T_C_H_E_C_K_P_O_I_N_8010b964
s_G_O_T_O_N_E_X_T_C_H_E_C_K_P_O_I_N_8010b964:
	.incbin "baserom.dol", 0x108964, 0x2C
.global s_GOTO_NEXT_CHECKPOINT_8010b990
s_GOTO_NEXT_CHECKPOINT_8010b990:
	.incbin "baserom.dol", 0x108990, 0x18
.global s_G_O_T_O_L_A_S_T_C_H_E_C_K_P_O_I_N_8010b9a8
s_G_O_T_O_L_A_S_T_C_H_E_C_K_P_O_I_N_8010b9a8:
	.incbin "baserom.dol", 0x1089A8, 0x2C
.global s_GOTO_LAST_CHECKPOINT_8010b9d4
s_GOTO_LAST_CHECKPOINT_8010b9d4:
	.incbin "baserom.dol", 0x1089D4, 0x18
.global s_O_P_E_N_G_A_M_E_8010b9ec
s_O_P_E_N_G_A_M_E_8010b9ec:
	.incbin "baserom.dol", 0x1089EC, 0x14
.global s_OPEN_GAME_8010ba00
s_OPEN_GAME_8010ba00:
	.incbin "baserom.dol", 0x108A00, 0xC
.global s_L_I_F_T_P_L_A_Y_E_R___8010ba0c
s_L_I_F_T_P_L_A_Y_E_R___8010ba0c:
	.incbin "baserom.dol", 0x108A0C, 0x1C
.global lbl_8010BA28
lbl_8010BA28:
	.incbin "baserom.dol", 0x108A28, 0x10
.global s_P_L_A_Y_E_R_C_O_O_R_D_I_N_A_T_E___8010ba38
s_P_L_A_Y_E_R_C_O_O_R_D_I_N_A_T_E___8010ba38:
	.incbin "baserom.dol", 0x108A38, 0x28
.global lbl_8010BA60
lbl_8010BA60:
	.incbin "baserom.dol", 0x108A60, 0x14
.global s_E_X_T_R_A_M_O_V_E_S___8010ba74
s_E_X_T_R_A_M_O_V_E_S___8010ba74:
	.incbin "baserom.dol", 0x108A74, 0x1C
.global lbl_8010BA90
lbl_8010BA90:
	.incbin "baserom.dol", 0x108A90, 0x10
.global s_R_E_S_E_T_G_A_M_E_8010baa0
s_R_E_S_E_T_G_A_M_E_8010baa0:
	.incbin "baserom.dol", 0x108AA0, 0x18
.global lbl_8010BAB8
lbl_8010BAB8:
	.incbin "baserom.dol", 0x108AB8, 0xC
.global s_L_O_G_O_S_8010bac4
s_L_O_G_O_S_8010bac4:
	.incbin "baserom.dol", 0x108AC4, 0xC
.global s_LOGOS_8010bad0
s_LOGOS_8010bad0:
	.incbin "baserom.dol", 0x108AD0, 0x8
.global s_I_N_T_R_O_1_8010bad8
s_I_N_T_R_O_1_8010bad8:
	.incbin "baserom.dol", 0x108AD8, 0x10
.global s_INTRO1_8010bae8
s_INTRO1_8010bae8:
	.incbin "baserom.dol", 0x108AE8, 0x8
.global s_I_N_T_R_O_2_8010baf0
s_I_N_T_R_O_2_8010baf0:
	.incbin "baserom.dol", 0x108AF0, 0x10
.global s_INTRO2_8010bb00
s_INTRO2_8010bb00:
	.incbin "baserom.dol", 0x108B00, 0x8
.global s_O_U_T_R_O_8010bb08
s_O_U_T_R_O_8010bb08:
	.incbin "baserom.dol", 0x108B08, 0xC
.global s_OUTRO_8010bb14
s_OUTRO_8010bb14:
	.incbin "baserom.dol", 0x108B14, 0x8
.global s_O_U_T_R_O_2_8010bb1c
s_O_U_T_R_O_2_8010bb1c:
	.incbin "baserom.dol", 0x108B1C, 0x10
.global lbl_8010BB2C
lbl_8010BB2C:
	.incbin "baserom.dol", 0x108B2C, 0x8
.global s_DRAW_DISTANCE___i__i_8010bb34
s_DRAW_DISTANCE___i__i_8010bb34:
	.incbin "baserom.dol", 0x108B34, 0x18
.global s_FOG_NEAR___i__i_8010bb4c
s_FOG_NEAR___i__i_8010bb4c:
	.incbin "baserom.dol", 0x108B4C, 0x10
.global s_FOG_FAR___i__i_8010bb5c
s_FOG_FAR___i__i_8010bb5c:
	.incbin "baserom.dol", 0x108B5C, 0x10
.global s_FOG_RED___i_255_8010bb6c
s_FOG_RED___i_255_8010bb6c:
	.incbin "baserom.dol", 0x108B6C, 0x10
.global s_FOG_GREEN___i_255_8010bb7c
s_FOG_GREEN___i_255_8010bb7c:
	.incbin "baserom.dol", 0x108B7C, 0x14
.global s_FOG_BLUE___i_255_8010bb90
s_FOG_BLUE___i_255_8010bb90:
	.incbin "baserom.dol", 0x108B90, 0x14
.global s_FOG_OPACITY___i_127_8010bba4
s_FOG_OPACITY___i_127_8010bba4:
	.incbin "baserom.dol", 0x108BA4, 0x14
.global s_HAZE_RED___i_255_8010bbb8
s_HAZE_RED___i_255_8010bbb8:
	.incbin "baserom.dol", 0x108BB8, 0x14
.global s_HAZE_GREEN___i_255_8010bbcc
s_HAZE_GREEN___i_255_8010bbcc:
	.incbin "baserom.dol", 0x108BCC, 0x14
.global s_HAZE_BLUE___i_255_8010bbe0
s_HAZE_BLUE___i_255_8010bbe0:
	.incbin "baserom.dol", 0x108BE0, 0x14
.global s_HAZE_WOBBLE___i_255_8010bbf4
s_HAZE_WOBBLE___i_255_8010bbf4:
	.incbin "baserom.dol", 0x108BF4, 0x14
.global s_SUPERBUFFER_USED____2fMB___2fMB_8010bc08
s_SUPERBUFFER_USED____2fMB___2fMB_8010bc08:
	.incbin "baserom.dol", 0x108C08, 0x20
.global s_HIGHALLOCADDR____2fMB_32_00MB_8010bc28
s_HIGHALLOCADDR____2fMB_32_00MB_8010bc28:
	.incbin "baserom.dol", 0x108C28, 0x24
.global s__s___s_8010bc4c
s__s___s_8010bc4c:
	.incbin "baserom.dol", 0x108C4C, 0x8
.global s__s__s_8010bc54
s__s__s_8010bc54:
	.incbin "baserom.dol", 0x108C54, 0x8
.global lbl_8010BC5C
lbl_8010BC5C:
	.incbin "baserom.dol", 0x108C5C, 0x4
.global lbl_8010BC60
lbl_8010BC60:
	.incbin "baserom.dol", 0x108C60, 0x8
.global lbl_8010BC68
lbl_8010BC68:
	.incbin "baserom.dol", 0x108C68, 0x8
.global lbl_8010BC70
lbl_8010BC70:
	.incbin "baserom.dol", 0x108C70, 0x4
.global lbl_8010BC74
lbl_8010BC74:
	.incbin "baserom.dol", 0x108C74, 0x4
.global lbl_8010BC78
lbl_8010BC78:
	.incbin "baserom.dol", 0x108C78, 0x4
.global lbl_8010BC7C
lbl_8010BC7C:
	.incbin "baserom.dol", 0x108C7C, 0x4
.global lbl_8010BC80
lbl_8010BC80:
	.incbin "baserom.dol", 0x108C80, 0x4
.global lbl_8010BC84
lbl_8010BC84:
	.incbin "baserom.dol", 0x108C84, 0x4
.global lbl_8010BC88
lbl_8010BC88:
	.incbin "baserom.dol", 0x108C88, 0x4
.global lbl_8010BC8C
lbl_8010BC8C:
	.incbin "baserom.dol", 0x108C8C, 0x4
.global lbl_8010BC90
lbl_8010BC90:
	.incbin "baserom.dol", 0x108C90, 0x4
.global lbl_8010BC94
lbl_8010BC94:
	.incbin "baserom.dol", 0x108C94, 0x4
.global lbl_8010BC98
lbl_8010BC98:
	.incbin "baserom.dol", 0x108C98, 0x4
.global lbl_8010BC9C
lbl_8010BC9C:
	.incbin "baserom.dol", 0x108C9C, 0x4
.global lbl_8010BCA0
lbl_8010BCA0:
	.incbin "baserom.dol", 0x108CA0, 0x8
.global lbl_8010BCA8
lbl_8010BCA8:
	.incbin "baserom.dol", 0x108CA8, 0x8
.global lbl_8010BCB0
lbl_8010BCB0:
	.incbin "baserom.dol", 0x108CB0, 0x8
.global lbl_8010BCB8
lbl_8010BCB8:
	.incbin "baserom.dol", 0x108CB8, 0x4
.global lbl_8010BCBC
lbl_8010BCBC:
	.incbin "baserom.dol", 0x108CBC, 0x4
.global lbl_8010BCC0
lbl_8010BCC0:
	.incbin "baserom.dol", 0x108CC0, 0x4
.global lbl_8010BCC4
lbl_8010BCC4:
	.incbin "baserom.dol", 0x108CC4, 0x4
.global lbl_8010BCC8
lbl_8010BCC8:
	.incbin "baserom.dol", 0x108CC8, 0x4
.global lbl_8010BCCC
lbl_8010BCCC:
	.incbin "baserom.dol", 0x108CCC, 0x4
.global lbl_8010BCD0
lbl_8010BCD0:
	.incbin "baserom.dol", 0x108CD0, 0x4
.global lbl_8010BCD4
lbl_8010BCD4:
	.incbin "baserom.dol", 0x108CD4, 0x4
.global lbl_8010BCD8
lbl_8010BCD8:
	.incbin "baserom.dol", 0x108CD8, 0x4
.global lbl_8010BCDC
lbl_8010BCDC:
	.incbin "baserom.dol", 0x108CDC, 0x4
.global lbl_8010BCE0
lbl_8010BCE0:
	.incbin "baserom.dol", 0x108CE0, 0x4
.global lbl_8010BCE4
lbl_8010BCE4:
	.incbin "baserom.dol", 0x108CE4, 0x4
.global lbl_8010BCE8
lbl_8010BCE8:
	.incbin "baserom.dol", 0x108CE8, 0x4
.global lbl_8010BCEC
lbl_8010BCEC:
	.incbin "baserom.dol", 0x108CEC, 0x4
.global lbl_8010BCF0
lbl_8010BCF0:
	.incbin "baserom.dol", 0x108CF0, 0x4
.global lbl_8010BCF4
lbl_8010BCF4:
	.incbin "baserom.dol", 0x108CF4, 0x4
.global lbl_8010BCF8
lbl_8010BCF8:
	.incbin "baserom.dol", 0x108CF8, 0x4
.global lbl_8010BCFC
lbl_8010BCFC:
	.incbin "baserom.dol", 0x108CFC, 0x4
.global lbl_8010BD00
lbl_8010BD00:
	.incbin "baserom.dol", 0x108D00, 0x4
.global lbl_8010BD04
lbl_8010BD04:
	.incbin "baserom.dol", 0x108D04, 0x4
.global lbl_8010BD08
lbl_8010BD08:
	.incbin "baserom.dol", 0x108D08, 0x8
.global lbl_8010BD10
lbl_8010BD10:
	.incbin "baserom.dol", 0x108D10, 0x4
.global s__i__c_c__c_c_8010bd14
s__i__c_c__c_c_8010bd14:
	.incbin "baserom.dol", 0x108D14, 0x10
.global s__s__s_8010bd24
s__s__s_8010bd24:
	.incbin "baserom.dol", 0x108D24, 0x8
.global s__s__s_8010bd2c
s__s__s_8010bd2c:
	.incbin "baserom.dol", 0x108D2C, 0x8
.global lbl_8010BD34
lbl_8010BD34:
	.incbin "baserom.dol", 0x108D34, 0x4
.global lbl_8010BD38
lbl_8010BD38:
	.incbin "baserom.dol", 0x108D38, 0x4
.global lbl_8010BD3C
lbl_8010BD3C:
	.incbin "baserom.dol", 0x108D3C, 0x4
.global lbl_8010BD40
lbl_8010BD40:
	.incbin "baserom.dol", 0x108D40, 0x4
.global lbl_8010BD44
lbl_8010BD44:
	.incbin "baserom.dol", 0x108D44, 0x4
.global lbl_8010BD48
lbl_8010BD48:
	.incbin "baserom.dol", 0x108D48, 0x4
.global lbl_8010BD4C
lbl_8010BD4C:
	.incbin "baserom.dol", 0x108D4C, 0x4
.global lbl_8010BD50
lbl_8010BD50:
	.incbin "baserom.dol", 0x108D50, 0x4
.global lbl_8010BD54
lbl_8010BD54:
	.incbin "baserom.dol", 0x108D54, 0x4
.global lbl_8010BD58
lbl_8010BD58:
	.incbin "baserom.dol", 0x108D58, 0x4
.global lbl_8010BD5C
lbl_8010BD5C:
	.incbin "baserom.dol", 0x108D5C, 0x4
.global lbl_8010BD60
lbl_8010BD60:
	.incbin "baserom.dol", 0x108D60, 0x4
.global lbl_8010BD64
lbl_8010BD64:
	.incbin "baserom.dol", 0x108D64, 0x4
.global s_MIDGET_8010bd68
s_MIDGET_8010bd68:
	.incbin "baserom.dol", 0x108D68, 0xC
.global lbl_8010BD74
lbl_8010BD74:
	.incbin "baserom.dol", 0x108D74, 0x4
.global lbl_8010BD78
lbl_8010BD78:
	.incbin "baserom.dol", 0x108D78, 0x4
.global lbl_8010BD7C
lbl_8010BD7C:
	.incbin "baserom.dol", 0x108D7C, 0x4
.global lbl_8010BD80
lbl_8010BD80:
	.incbin "baserom.dol", 0x108D80, 0x4
.global lbl_8010BD84
lbl_8010BD84:
	.incbin "baserom.dol", 0x108D84, 0x4
.global lbl_8010BD88
lbl_8010BD88:
	.incbin "baserom.dol", 0x108D88, 0x4
.global lbl_8010BD8C
lbl_8010BD8C:
	.incbin "baserom.dol", 0x108D8C, 0x4
.global lbl_8010BD90
lbl_8010BD90:
	.incbin "baserom.dol", 0x108D90, 0x4
.global lbl_8010BD94
lbl_8010BD94:
	.incbin "baserom.dol", 0x108D94, 0x4
.global lbl_8010BD98
lbl_8010BD98:
	.incbin "baserom.dol", 0x108D98, 0x4
.global lbl_8010BD9C
lbl_8010BD9C:
	.incbin "baserom.dol", 0x108D9C, 0x4
.global lbl_8010BDA0
lbl_8010BDA0:
	.incbin "baserom.dol", 0x108DA0, 0x4
.global lbl_8010BDA4
lbl_8010BDA4:
	.incbin "baserom.dol", 0x108DA4, 0x4
.global lbl_8010BDA8
lbl_8010BDA8:
	.incbin "baserom.dol", 0x108DA8, 0x4
.global lbl_8010BDAC
lbl_8010BDAC:
	.incbin "baserom.dol", 0x108DAC, 0x4
.global lbl_8010BDB0
lbl_8010BDB0:
	.incbin "baserom.dol", 0x108DB0, 0x4
.global lbl_8010BDB4
lbl_8010BDB4:
	.incbin "baserom.dol", 0x108DB4, 0x4
.global lbl_8010BDB8
lbl_8010BDB8:
	.incbin "baserom.dol", 0x108DB8, 0x4
.global lbl_8010BDBC
lbl_8010BDBC:
	.incbin "baserom.dol", 0x108DBC, 0x4
.global lbl_8010BDC0
lbl_8010BDC0:
	.incbin "baserom.dol", 0x108DC0, 0x4
.global lbl_8010BDC4
lbl_8010BDC4:
	.incbin "baserom.dol", 0x108DC4, 0x4
.global lbl_8010BDC8
lbl_8010BDC8:
	.incbin "baserom.dol", 0x108DC8, 0x4
.global lbl_8010BDCC
lbl_8010BDCC:
	.incbin "baserom.dol", 0x108DCC, 0x4
.global lbl_8010BDD0
lbl_8010BDD0:
	.incbin "baserom.dol", 0x108DD0, 0x4
.global lbl_8010BDD4
lbl_8010BDD4:
	.incbin "baserom.dol", 0x108DD4, 0x4
.global lbl_8010BDD8
lbl_8010BDD8:
	.incbin "baserom.dol", 0x108DD8, 0x4
.global lbl_8010BDDC
lbl_8010BDDC:
	.incbin "baserom.dol", 0x108DDC, 0x4
.global lbl_8010BDE0
lbl_8010BDE0:
	.incbin "baserom.dol", 0x108DE0, 0x4
.global lbl_8010BDE4
lbl_8010BDE4:
	.incbin "baserom.dol", 0x108DE4, 0x4
.global lbl_8010BDE8
lbl_8010BDE8:
	.incbin "baserom.dol", 0x108DE8, 0x4
.global lbl_8010BDEC
lbl_8010BDEC:
	.incbin "baserom.dol", 0x108DEC, 0x4
.global lbl_8010BDF0
lbl_8010BDF0:
	.incbin "baserom.dol", 0x108DF0, 0x4
.global lbl_8010BDF4
lbl_8010BDF4:
	.incbin "baserom.dol", 0x108DF4, 0x4
.global lbl_8010BDF8
lbl_8010BDF8:
	.incbin "baserom.dol", 0x108DF8, 0x4
.global lbl_8010BDFC
lbl_8010BDFC:
	.incbin "baserom.dol", 0x108DFC, 0x4
.global lbl_8010BE00
lbl_8010BE00:
	.incbin "baserom.dol", 0x108E00, 0x4
.global lbl_8010BE04
lbl_8010BE04:
	.incbin "baserom.dol", 0x108E04, 0x4
.global lbl_8010BE08
lbl_8010BE08:
	.incbin "baserom.dol", 0x108E08, 0x4
.global lbl_8010BE0C
lbl_8010BE0C:
	.incbin "baserom.dol", 0x108E0C, 0x4
.global lbl_8010BE10
lbl_8010BE10:
	.incbin "baserom.dol", 0x108E10, 0x4
.global lbl_8010BE14
lbl_8010BE14:
	.incbin "baserom.dol", 0x108E14, 0x4
.global lbl_8010BE18
lbl_8010BE18:
	.incbin "baserom.dol", 0x108E18, 0x4
.global lbl_8010BE1C
lbl_8010BE1C:
	.incbin "baserom.dol", 0x108E1C, 0x4
.global lbl_8010BE20
lbl_8010BE20:
	.incbin "baserom.dol", 0x108E20, 0x4
.global lbl_8010BE24
lbl_8010BE24:
	.incbin "baserom.dol", 0x108E24, 0x4
.global lbl_8010BE28
lbl_8010BE28:
	.incbin "baserom.dol", 0x108E28, 0x4
.global lbl_8010BE2C
lbl_8010BE2C:
	.incbin "baserom.dol", 0x108E2C, 0x4
.global lbl_8010BE30
lbl_8010BE30:
	.incbin "baserom.dol", 0x108E30, 0x4
.global lbl_8010BE34
lbl_8010BE34:
	.incbin "baserom.dol", 0x108E34, 0x4
.global lbl_8010BE38
lbl_8010BE38:
	.incbin "baserom.dol", 0x108E38, 0x4
.global lbl_8010BE3C
lbl_8010BE3C:
	.incbin "baserom.dol", 0x108E3C, 0x4
.global lbl_8010BE40
lbl_8010BE40:
	.incbin "baserom.dol", 0x108E40, 0x4
.global lbl_8010BE44
lbl_8010BE44:
	.incbin "baserom.dol", 0x108E44, 0x4
.global lbl_8010BE48
lbl_8010BE48:
	.incbin "baserom.dol", 0x108E48, 0x4
.global lbl_8010BE4C
lbl_8010BE4C:
	.incbin "baserom.dol", 0x108E4C, 0x4
.global lbl_8010BE50
lbl_8010BE50:
	.incbin "baserom.dol", 0x108E50, 0x4
.global lbl_8010BE54
lbl_8010BE54:
	.incbin "baserom.dol", 0x108E54, 0x4
.global lbl_8010BE58
lbl_8010BE58:
	.incbin "baserom.dol", 0x108E58, 0x4
.global lbl_8010BE5C
lbl_8010BE5C:
	.incbin "baserom.dol", 0x108E5C, 0x4
.global lbl_8010BE60
lbl_8010BE60:
	.incbin "baserom.dol", 0x108E60, 0x4
.global lbl_8010BE64
lbl_8010BE64:
	.incbin "baserom.dol", 0x108E64, 0x4
.global lbl_8010BE68
lbl_8010BE68:
	.incbin "baserom.dol", 0x108E68, 0x4
.global lbl_8010BE6C
lbl_8010BE6C:
	.incbin "baserom.dol", 0x108E6C, 0x4
.global lbl_8010BE70
lbl_8010BE70:
	.incbin "baserom.dol", 0x108E70, 0x4
.global lbl_8010BE74
lbl_8010BE74:
	.incbin "baserom.dol", 0x108E74, 0x4
.global lbl_8010BE78
lbl_8010BE78:
	.incbin "baserom.dol", 0x108E78, 0x4
.global lbl_8010BE7C
lbl_8010BE7C:
	.incbin "baserom.dol", 0x108E7C, 0x4
.global lbl_8010BE80
lbl_8010BE80:
	.incbin "baserom.dol", 0x108E80, 0x4
.global lbl_8010BE84
lbl_8010BE84:
	.incbin "baserom.dol", 0x108E84, 0x4
.global lbl_8010BE88
lbl_8010BE88:
	.incbin "baserom.dol", 0x108E88, 0x4
.global lbl_8010BE8C
lbl_8010BE8C:
	.incbin "baserom.dol", 0x108E8C, 0x4
.global lbl_8010BE90
lbl_8010BE90:
	.incbin "baserom.dol", 0x108E90, 0x4
.global lbl_8010BE94
lbl_8010BE94:
	.incbin "baserom.dol", 0x108E94, 0x4
.global lbl_8010BE98
lbl_8010BE98:
	.incbin "baserom.dol", 0x108E98, 0x4
.global lbl_8010BE9C
lbl_8010BE9C:
	.incbin "baserom.dol", 0x108E9C, 0x4
.global lbl_8010BEA0
lbl_8010BEA0:
	.incbin "baserom.dol", 0x108EA0, 0x4
.global lbl_8010BEA4
lbl_8010BEA4:
	.incbin "baserom.dol", 0x108EA4, 0x4
.global lbl_8010BEA8
lbl_8010BEA8:
	.incbin "baserom.dol", 0x108EA8, 0x4
.global lbl_8010BEAC
lbl_8010BEAC:
	.incbin "baserom.dol", 0x108EAC, 0x4
.global lbl_8010BEB0
lbl_8010BEB0:
	.incbin "baserom.dol", 0x108EB0, 0x4
.global lbl_8010BEB4
lbl_8010BEB4:
	.incbin "baserom.dol", 0x108EB4, 0x4
.global lbl_8010BEB8
lbl_8010BEB8:
	.incbin "baserom.dol", 0x108EB8, 0x4
.global lbl_8010BEBC
lbl_8010BEBC:
	.incbin "baserom.dol", 0x108EBC, 0x4
.global lbl_8010BEC0
lbl_8010BEC0:
	.incbin "baserom.dol", 0x108EC0, 0x4
.global lbl_8010BEC4
lbl_8010BEC4:
	.incbin "baserom.dol", 0x108EC4, 0x4
.global lbl_8010BEC8
lbl_8010BEC8:
	.incbin "baserom.dol", 0x108EC8, 0x4
.global lbl_8010BECC
lbl_8010BECC:
	.incbin "baserom.dol", 0x108ECC, 0x4
.global lbl_8010BED0
lbl_8010BED0:
	.incbin "baserom.dol", 0x108ED0, 0x4
.global lbl_8010BED4
lbl_8010BED4:
	.incbin "baserom.dol", 0x108ED4, 0x4
.global lbl_8010BED8
lbl_8010BED8:
	.incbin "baserom.dol", 0x108ED8, 0x4
.global lbl_8010BEDC
lbl_8010BEDC:
	.incbin "baserom.dol", 0x108EDC, 0x4
.global lbl_8010BEE0
lbl_8010BEE0:
	.incbin "baserom.dol", 0x108EE0, 0x4
.global lbl_8010BEE4
lbl_8010BEE4:
	.incbin "baserom.dol", 0x108EE4, 0x4
.global lbl_8010BEE8
lbl_8010BEE8:
	.incbin "baserom.dol", 0x108EE8, 0x4
.global lbl_8010BEEC
lbl_8010BEEC:
	.incbin "baserom.dol", 0x108EEC, 0x4
.global lbl_8010BEF0
lbl_8010BEF0:
	.incbin "baserom.dol", 0x108EF0, 0x3EC
.global lbl_8010C2DC
lbl_8010C2DC:
	.incbin "baserom.dol", 0x1092DC, 0x4
.global lbl_8010C2E0
lbl_8010C2E0:
	.incbin "baserom.dol", 0x1092E0, 0x4
.global lbl_8010C2E4
lbl_8010C2E4:
	.incbin "baserom.dol", 0x1092E4, 0x4
.global lbl_8010C2E8
lbl_8010C2E8:
	.incbin "baserom.dol", 0x1092E8, 0x8
.global lbl_8010C2F0
lbl_8010C2F0:
	.incbin "baserom.dol", 0x1092F0, 0x8
.global lbl_8010C2F8
lbl_8010C2F8:
	.incbin "baserom.dol", 0x1092F8, 0x8
.global lbl_8010C300
lbl_8010C300:
	.incbin "baserom.dol", 0x109300, 0x8
.global lbl_8010C308
lbl_8010C308:
	.incbin "baserom.dol", 0x109308, 0x7E4
.global lbl_8010CAEC
lbl_8010CAEC:
	.incbin "baserom.dol", 0x109AEC, 0x4
.global lbl_8010CAF0
lbl_8010CAF0:
	.incbin "baserom.dol", 0x109AF0, 0x4
.global lbl_8010CAF4
lbl_8010CAF4:
	.incbin "baserom.dol", 0x109AF4, 0x4
.global lbl_8010CAF8
lbl_8010CAF8:
	.incbin "baserom.dol", 0x109AF8, 0x4
.global lbl_8010CAFC
lbl_8010CAFC:
	.incbin "baserom.dol", 0x109AFC, 0x4
.global lbl_8010CB00
lbl_8010CB00:
	.incbin "baserom.dol", 0x109B00, 0x4
.global lbl_8010CB04
lbl_8010CB04:
	.incbin "baserom.dol", 0x109B04, 0x4
.global lbl_8010CB08
lbl_8010CB08:
	.incbin "baserom.dol", 0x109B08, 0x4
.global lbl_8010CB0C
lbl_8010CB0C:
	.incbin "baserom.dol", 0x109B0C, 0x4
.global lbl_8010CB10
lbl_8010CB10:
	.incbin "baserom.dol", 0x109B10, 0x4
.global lbl_8010CB14
lbl_8010CB14:
	.incbin "baserom.dol", 0x109B14, 0x4
.global lbl_8010CB18
lbl_8010CB18:
	.incbin "baserom.dol", 0x109B18, 0x4
.global lbl_8010CB1C
lbl_8010CB1C:
	.incbin "baserom.dol", 0x109B1C, 0x4
.global lbl_8010CB20
lbl_8010CB20:
	.incbin "baserom.dol", 0x109B20, 0x4
.global lbl_8010CB24
lbl_8010CB24:
	.incbin "baserom.dol", 0x109B24, 0x8
.global lbl_8010CB2C
lbl_8010CB2C:
	.incbin "baserom.dol", 0x109B2C, 0x4
.global lbl_8010CB30
lbl_8010CB30:
	.incbin "baserom.dol", 0x109B30, 0x4
.global lbl_8010CB34
lbl_8010CB34:
	.incbin "baserom.dol", 0x109B34, 0x4
.global lbl_8010CB38
lbl_8010CB38:
	.incbin "baserom.dol", 0x109B38, 0x10
.global lbl_8010CB48
lbl_8010CB48:
	.incbin "baserom.dol", 0x109B48, 0x4
.global lbl_8010CB4C
lbl_8010CB4C:
	.incbin "baserom.dol", 0x109B4C, 0x4
.global lbl_8010CB50
lbl_8010CB50:
	.incbin "baserom.dol", 0x109B50, 0x4
.global lbl_8010CB54
lbl_8010CB54:
	.incbin "baserom.dol", 0x109B54, 0x914
.global lbl_8010D468
lbl_8010D468:
	.incbin "baserom.dol", 0x10A468, 0x4
.global lbl_8010D46C
lbl_8010D46C:
	.incbin "baserom.dol", 0x10A46C, 0x4
.global lbl_8010D470
lbl_8010D470:
	.incbin "baserom.dol", 0x10A470, 0x8
.global lbl_8010D478
lbl_8010D478:
	.incbin "baserom.dol", 0x10A478, 0x4
.global lbl_8010D47C
lbl_8010D47C:
	.incbin "baserom.dol", 0x10A47C, 0x4
.global lbl_8010D480
lbl_8010D480:
	.incbin "baserom.dol", 0x10A480, 0x4
.global lbl_8010D484
lbl_8010D484:
	.incbin "baserom.dol", 0x10A484, 0x4
.global lbl_8010D488
lbl_8010D488:
	.incbin "baserom.dol", 0x10A488, 0x4
.global lbl_8010D48C
lbl_8010D48C:
	.incbin "baserom.dol", 0x10A48C, 0x4
.global lbl_8010D490
lbl_8010D490:
	.incbin "baserom.dol", 0x10A490, 0x4
.global lbl_8010D494
lbl_8010D494:
	.incbin "baserom.dol", 0x10A494, 0x240
.global lbl_8010D6D4
lbl_8010D6D4:
	.incbin "baserom.dol", 0x10A6D4, 0x4
.global lbl_8010D6D8
lbl_8010D6D8:
	.incbin "baserom.dol", 0x10A6D8, 0x4
.global lbl_8010D6DC
lbl_8010D6DC:
	.incbin "baserom.dol", 0x10A6DC, 0x4
.global lbl_8010D6E0
lbl_8010D6E0:
	.incbin "baserom.dol", 0x10A6E0, 0x4
.global lbl_8010D6E4
lbl_8010D6E4:
	.incbin "baserom.dol", 0x10A6E4, 0x4
.global lbl_8010D6E8
lbl_8010D6E8:
	.incbin "baserom.dol", 0x10A6E8, 0x8
.global lbl_8010D6F0
lbl_8010D6F0:
	.incbin "baserom.dol", 0x10A6F0, 0x4
.global lbl_8010D6F4
lbl_8010D6F4:
	.incbin "baserom.dol", 0x10A6F4, 0x4
.global lbl_8010D6F8
lbl_8010D6F8:
	.incbin "baserom.dol", 0x10A6F8, 0x4
.global lbl_8010D6FC
lbl_8010D6FC:
	.incbin "baserom.dol", 0x10A6FC, 0x4
.global lbl_8010D700
lbl_8010D700:
	.incbin "baserom.dol", 0x10A700, 0x4
.global lbl_8010D704
lbl_8010D704:
	.incbin "baserom.dol", 0x10A704, 0x4
.global lbl_8010D708
lbl_8010D708:
	.incbin "baserom.dol", 0x10A708, 0x4
.global lbl_8010D70C
lbl_8010D70C:
	.incbin "baserom.dol", 0x10A70C, 0x4
.global lbl_8010D710
lbl_8010D710:
	.incbin "baserom.dol", 0x10A710, 0x4
.global lbl_8010D714
lbl_8010D714:
	.incbin "baserom.dol", 0x10A714, 0x4
.global lbl_8010D718
lbl_8010D718:
	.incbin "baserom.dol", 0x10A718, 0x4
.global lbl_8010D71C
lbl_8010D71C:
	.incbin "baserom.dol", 0x10A71C, 0x4
.global lbl_8010D720
lbl_8010D720:
	.incbin "baserom.dol", 0x10A720, 0x8
.global lbl_8010D728
lbl_8010D728:
	.incbin "baserom.dol", 0x10A728, 0x8
.global lbl_8010D730
lbl_8010D730:
	.incbin "baserom.dol", 0x10A730, 0x4
.global lbl_8010D734
lbl_8010D734:
	.incbin "baserom.dol", 0x10A734, 0x4
.global lbl_8010D738
lbl_8010D738:
	.incbin "baserom.dol", 0x10A738, 0x8
.global lbl_8010D740
lbl_8010D740:
	.incbin "baserom.dol", 0x10A740, 0x4
.global lbl_8010D744
lbl_8010D744:
	.incbin "baserom.dol", 0x10A744, 0x4
.global lbl_8010D748
lbl_8010D748:
	.incbin "baserom.dol", 0x10A748, 0x4
.global lbl_8010D74C
lbl_8010D74C:
	.incbin "baserom.dol", 0x10A74C, 0x4
.global lbl_8010D750
lbl_8010D750:
	.incbin "baserom.dol", 0x10A750, 0x4
.global lbl_8010D754
lbl_8010D754:
	.incbin "baserom.dol", 0x10A754, 0x4
.global lbl_8010D758
lbl_8010D758:
	.incbin "baserom.dol", 0x10A758, 0x8
.global lbl_8010D760
lbl_8010D760:
	.incbin "baserom.dol", 0x10A760, 0x4
.global lbl_8010D764
lbl_8010D764:
	.incbin "baserom.dol", 0x10A764, 0x4
.global lbl_8010D768
lbl_8010D768:
	.incbin "baserom.dol", 0x10A768, 0x4
.global lbl_8010D76C
lbl_8010D76C:
	.incbin "baserom.dol", 0x10A76C, 0x4
.global lbl_8010D770
lbl_8010D770:
	.incbin "baserom.dol", 0x10A770, 0x8
.global lbl_8010D778
lbl_8010D778:
	.incbin "baserom.dol", 0x10A778, 0x8
.global lbl_8010D780
lbl_8010D780:
	.incbin "baserom.dol", 0x10A780, 0x4
.global lbl_8010D784
lbl_8010D784:
	.incbin "baserom.dol", 0x10A784, 0x4
.global lbl_8010D788
lbl_8010D788:
	.incbin "baserom.dol", 0x10A788, 0x4
.global lbl_8010D78C
lbl_8010D78C:
	.incbin "baserom.dol", 0x10A78C, 0x4
.global lbl_8010D790
lbl_8010D790:
	.incbin "baserom.dol", 0x10A790, 0x8
.global lbl_8010D798
lbl_8010D798:
	.incbin "baserom.dol", 0x10A798, 0x4
.global lbl_8010D79C
lbl_8010D79C:
	.incbin "baserom.dol", 0x10A79C, 0x4
.global lbl_8010D7A0
lbl_8010D7A0:
	.incbin "baserom.dol", 0x10A7A0, 0x4
.global lbl_8010D7A4
lbl_8010D7A4:
	.incbin "baserom.dol", 0x10A7A4, 0x4
.global lbl_8010D7A8
lbl_8010D7A8:
	.incbin "baserom.dol", 0x10A7A8, 0x4
.global lbl_8010D7AC
lbl_8010D7AC:
	.incbin "baserom.dol", 0x10A7AC, 0x4
.global lbl_8010D7B0
lbl_8010D7B0:
	.incbin "baserom.dol", 0x10A7B0, 0x4
.global lbl_8010D7B4
lbl_8010D7B4:
	.incbin "baserom.dol", 0x10A7B4, 0x4
.global lbl_8010D7B8
lbl_8010D7B8:
	.incbin "baserom.dol", 0x10A7B8, 0x4
.global lbl_8010D7BC
lbl_8010D7BC:
	.incbin "baserom.dol", 0x10A7BC, 0x4
.global lbl_8010D7C0
lbl_8010D7C0:
	.incbin "baserom.dol", 0x10A7C0, 0x4
.global lbl_8010D7C4
lbl_8010D7C4:
	.incbin "baserom.dol", 0x10A7C4, 0x4
.global lbl_8010D7C8
lbl_8010D7C8:
	.incbin "baserom.dol", 0x10A7C8, 0x4
.global lbl_8010D7CC
lbl_8010D7CC:
	.incbin "baserom.dol", 0x10A7CC, 0x4
.global lbl_8010D7D0
lbl_8010D7D0:
	.incbin "baserom.dol", 0x10A7D0, 0x4
.global lbl_8010D7D4
lbl_8010D7D4:
	.incbin "baserom.dol", 0x10A7D4, 0x4
.global lbl_8010D7D8
lbl_8010D7D8:
	.incbin "baserom.dol", 0x10A7D8, 0x4
.global lbl_8010D7DC
lbl_8010D7DC:
	.incbin "baserom.dol", 0x10A7DC, 0x4
.global lbl_8010D7E0
lbl_8010D7E0:
	.incbin "baserom.dol", 0x10A7E0, 0x4
.global lbl_8010D7E4
lbl_8010D7E4:
	.incbin "baserom.dol", 0x10A7E4, 0x4
.global lbl_8010D7E8
lbl_8010D7E8:
	.incbin "baserom.dol", 0x10A7E8, 0x4
.global lbl_8010D7EC
lbl_8010D7EC:
	.incbin "baserom.dol", 0x10A7EC, 0x4
.global lbl_8010D7F0
lbl_8010D7F0:
	.incbin "baserom.dol", 0x10A7F0, 0x4
.global lbl_8010D7F4
lbl_8010D7F4:
	.incbin "baserom.dol", 0x10A7F4, 0x4
.global lbl_8010D7F8
lbl_8010D7F8:
	.incbin "baserom.dol", 0x10A7F8, 0x4
.global lbl_8010D7FC
lbl_8010D7FC:
	.incbin "baserom.dol", 0x10A7FC, 0x4
.global lbl_8010D800
lbl_8010D800:
	.incbin "baserom.dol", 0x10A800, 0x4
.global lbl_8010D804
lbl_8010D804:
	.incbin "baserom.dol", 0x10A804, 0x4
.global lbl_8010D808
lbl_8010D808:
	.incbin "baserom.dol", 0x10A808, 0x8
.global lbl_8010D810
lbl_8010D810:
	.incbin "baserom.dol", 0x10A810, 0x4
.global lbl_8010D814
lbl_8010D814:
	.incbin "baserom.dol", 0x10A814, 0x4
.global lbl_8010D818
lbl_8010D818:
	.incbin "baserom.dol", 0x10A818, 0x4
.global lbl_8010D81C
lbl_8010D81C:
	.incbin "baserom.dol", 0x10A81C, 0x4
.global lbl_8010D820
lbl_8010D820:
	.incbin "baserom.dol", 0x10A820, 0x4
.global lbl_8010D824
lbl_8010D824:
	.incbin "baserom.dol", 0x10A824, 0x4
.global lbl_8010D828
lbl_8010D828:
	.incbin "baserom.dol", 0x10A828, 0x4
.global lbl_8010D82C
lbl_8010D82C:
	.incbin "baserom.dol", 0x10A82C, 0x4
.global lbl_8010D830
lbl_8010D830:
	.incbin "baserom.dol", 0x10A830, 0x4
.global lbl_8010D834
lbl_8010D834:
	.incbin "baserom.dol", 0x10A834, 0x4
.global lbl_8010D838
lbl_8010D838:
	.incbin "baserom.dol", 0x10A838, 0x4
.global lbl_8010D83C
lbl_8010D83C:
	.incbin "baserom.dol", 0x10A83C, 0x4
.global lbl_8010D840
lbl_8010D840:
	.incbin "baserom.dol", 0x10A840, 0x4
.global lbl_8010D844
lbl_8010D844:
	.incbin "baserom.dol", 0x10A844, 0x4
.global lbl_8010D848
lbl_8010D848:
	.incbin "baserom.dol", 0x10A848, 0x4
.global lbl_8010D84C
lbl_8010D84C:
	.incbin "baserom.dol", 0x10A84C, 0x4
.global lbl_8010D850
lbl_8010D850:
	.incbin "baserom.dol", 0x10A850, 0x4
.global lbl_8010D854
lbl_8010D854:
	.incbin "baserom.dol", 0x10A854, 0x4
.global lbl_8010D858
lbl_8010D858:
	.incbin "baserom.dol", 0x10A858, 0x4
.global lbl_8010D85C
lbl_8010D85C:
	.incbin "baserom.dol", 0x10A85C, 0x4
.global lbl_8010D860
lbl_8010D860:
	.incbin "baserom.dol", 0x10A860, 0x4
.global lbl_8010D864
lbl_8010D864:
	.incbin "baserom.dol", 0x10A864, 0x4
.global lbl_8010D868
lbl_8010D868:
	.incbin "baserom.dol", 0x10A868, 0x4
.global lbl_8010D86C
lbl_8010D86C:
	.incbin "baserom.dol", 0x10A86C, 0x4
.global lbl_8010D870
lbl_8010D870:
	.incbin "baserom.dol", 0x10A870, 0x4
.global lbl_8010D874
lbl_8010D874:
	.incbin "baserom.dol", 0x10A874, 0x4
.global lbl_8010D878
lbl_8010D878:
	.incbin "baserom.dol", 0x10A878, 0x4
.global lbl_8010D87C
lbl_8010D87C:
	.incbin "baserom.dol", 0x10A87C, 0x4
.global lbl_8010D880
lbl_8010D880:
	.incbin "baserom.dol", 0x10A880, 0x4
.global lbl_8010D884
lbl_8010D884:
	.incbin "baserom.dol", 0x10A884, 0x4
.global lbl_8010D888
lbl_8010D888:
	.incbin "baserom.dol", 0x10A888, 0x8
.global lbl_8010D890
lbl_8010D890:
	.incbin "baserom.dol", 0x10A890, 0x8
.global lbl_8010D898
lbl_8010D898:
	.incbin "baserom.dol", 0x10A898, 0x8
.global lbl_8010D8A0
lbl_8010D8A0:
	.incbin "baserom.dol", 0x10A8A0, 0x4
.global lbl_8010D8A4
lbl_8010D8A4:
	.incbin "baserom.dol", 0x10A8A4, 0x4
.global lbl_8010D8A8
lbl_8010D8A8:
	.incbin "baserom.dol", 0x10A8A8, 0x8
.global lbl_8010D8B0
lbl_8010D8B0:
	.incbin "baserom.dol", 0x10A8B0, 0x8
.global lbl_8010D8B8
lbl_8010D8B8:
	.incbin "baserom.dol", 0x10A8B8, 0x8
.global lbl_8010D8C0
lbl_8010D8C0:
	.incbin "baserom.dol", 0x10A8C0, 0xC
.global lbl_8010D8CC
lbl_8010D8CC:
	.incbin "baserom.dol", 0x10A8CC, 0x4
.global lbl_8010D8D0
lbl_8010D8D0:
	.incbin "baserom.dol", 0x10A8D0, 0x4
.global lbl_8010D8D4
lbl_8010D8D4:
	.incbin "baserom.dol", 0x10A8D4, 0x4
.global lbl_8010D8D8
lbl_8010D8D8:
	.incbin "baserom.dol", 0x10A8D8, 0x4
.global lbl_8010D8DC
lbl_8010D8DC:
	.incbin "baserom.dol", 0x10A8DC, 0x4
.global lbl_8010D8E0
lbl_8010D8E0:
	.incbin "baserom.dol", 0x10A8E0, 0x4
.global lbl_8010D8E4
lbl_8010D8E4:
	.incbin "baserom.dol", 0x10A8E4, 0x4
.global lbl_8010D8E8
lbl_8010D8E8:
	.incbin "baserom.dol", 0x10A8E8, 0x4
.global lbl_8010D8EC
lbl_8010D8EC:
	.incbin "baserom.dol", 0x10A8EC, 0x4
.global lbl_8010D8F0
lbl_8010D8F0:
	.incbin "baserom.dol", 0x10A8F0, 0x4
.global lbl_8010D8F4
lbl_8010D8F4:
	.incbin "baserom.dol", 0x10A8F4, 0x4
.global lbl_8010D8F8
lbl_8010D8F8:
	.incbin "baserom.dol", 0x10A8F8, 0x4
.global lbl_8010D8FC
lbl_8010D8FC:
	.incbin "baserom.dol", 0x10A8FC, 0x4
.global lbl_8010D900
lbl_8010D900:
	.incbin "baserom.dol", 0x10A900, 0x484
.global lbl_8010DD84
lbl_8010DD84:
	.incbin "baserom.dol", 0x10AD84, 0x4
.global lbl_8010DD88
lbl_8010DD88:
	.incbin "baserom.dol", 0x10AD88, 0x4
.global lbl_8010DD8C
lbl_8010DD8C:
	.incbin "baserom.dol", 0x10AD8C, 0x4
.global lbl_8010DD90
lbl_8010DD90:
	.incbin "baserom.dol", 0x10AD90, 0x8
.global lbl_8010DD98
lbl_8010DD98:
	.incbin "baserom.dol", 0x10AD98, 0x4
.global lbl_8010DD9C
lbl_8010DD9C:
	.incbin "baserom.dol", 0x10AD9C, 0x4
.global lbl_8010DDA0
lbl_8010DDA0:
	.incbin "baserom.dol", 0x10ADA0, 0x4
.global lbl_8010DDA4
lbl_8010DDA4:
	.incbin "baserom.dol", 0x10ADA4, 0x4
.global lbl_8010DDA8
lbl_8010DDA8:
	.incbin "baserom.dol", 0x10ADA8, 0x8
.global lbl_8010DDB0
lbl_8010DDB0:
	.incbin "baserom.dol", 0x10ADB0, 0x4
.global lbl_8010DDB4
lbl_8010DDB4:
	.incbin "baserom.dol", 0x10ADB4, 0x4
.global lbl_8010DDB8
lbl_8010DDB8:
	.incbin "baserom.dol", 0x10ADB8, 0x4
.global lbl_8010DDBC
lbl_8010DDBC:
	.incbin "baserom.dol", 0x10ADBC, 0x4
.global lbl_8010DDC0
lbl_8010DDC0:
	.incbin "baserom.dol", 0x10ADC0, 0x4
.global lbl_8010DDC4
lbl_8010DDC4:
	.incbin "baserom.dol", 0x10ADC4, 0x4
.global lbl_8010DDC8
lbl_8010DDC8:
	.incbin "baserom.dol", 0x10ADC8, 0x8
.global lbl_8010DDD0
lbl_8010DDD0:
	.incbin "baserom.dol", 0x10ADD0, 0x8
.global lbl_8010DDD8
lbl_8010DDD8:
	.incbin "baserom.dol", 0x10ADD8, 0x8
.global lbl_8010DDE0
lbl_8010DDE0:
	.incbin "baserom.dol", 0x10ADE0, 0x8
.global lbl_8010DDE8
lbl_8010DDE8:
	.incbin "baserom.dol", 0x10ADE8, 0x4
.global lbl_8010DDEC
lbl_8010DDEC:
	.incbin "baserom.dol", 0x10ADEC, 0x4
.global lbl_8010DDF0
lbl_8010DDF0:
	.incbin "baserom.dol", 0x10ADF0, 0x4
.global lbl_8010DDF4
lbl_8010DDF4:
	.incbin "baserom.dol", 0x10ADF4, 0x4
.global lbl_8010DDF8
lbl_8010DDF8:
	.incbin "baserom.dol", 0x10ADF8, 0x4
.global lbl_8010DDFC
lbl_8010DDFC:
	.incbin "baserom.dol", 0x10ADFC, 0x4
.global lbl_8010DE00
lbl_8010DE00:
	.incbin "baserom.dol", 0x10AE00, 0xC
.global lbl_8010DE0C
lbl_8010DE0C:
	.incbin "baserom.dol", 0x10AE0C, 0x4
.global lbl_8010DE10
lbl_8010DE10:
	.incbin "baserom.dol", 0x10AE10, 0x4
.global lbl_8010DE14
lbl_8010DE14:
	.incbin "baserom.dol", 0x10AE14, 0x4
.global lbl_8010DE18
lbl_8010DE18:
	.incbin "baserom.dol", 0x10AE18, 0x4
.global lbl_8010DE1C
lbl_8010DE1C:
	.incbin "baserom.dol", 0x10AE1C, 0x4
.global lbl_8010DE20
lbl_8010DE20:
	.incbin "baserom.dol", 0x10AE20, 0x4
.global lbl_8010DE24
lbl_8010DE24:
	.incbin "baserom.dol", 0x10AE24, 0x4
.global lbl_8010DE28
lbl_8010DE28:
	.incbin "baserom.dol", 0x10AE28, 0x4
.global lbl_8010DE2C
lbl_8010DE2C:
	.incbin "baserom.dol", 0x10AE2C, 0x4
.global lbl_8010DE30
lbl_8010DE30:
	.incbin "baserom.dol", 0x10AE30, 0x4
.global lbl_8010DE34
lbl_8010DE34:
	.incbin "baserom.dol", 0x10AE34, 0x4
.global lbl_8010DE38
lbl_8010DE38:
	.incbin "baserom.dol", 0x10AE38, 0x4
.global lbl_8010DE3C
lbl_8010DE3C:
	.incbin "baserom.dol", 0x10AE3C, 0x4
.global lbl_8010DE40
lbl_8010DE40:
	.incbin "baserom.dol", 0x10AE40, 0x4
.global lbl_8010DE44
lbl_8010DE44:
	.incbin "baserom.dol", 0x10AE44, 0x4
.global lbl_8010DE48
lbl_8010DE48:
	.incbin "baserom.dol", 0x10AE48, 0x4
.global lbl_8010DE4C
lbl_8010DE4C:
	.incbin "baserom.dol", 0x10AE4C, 0x4
.global lbl_8010DE50
lbl_8010DE50:
	.incbin "baserom.dol", 0x10AE50, 0x4
.global lbl_8010DE54
lbl_8010DE54:
	.incbin "baserom.dol", 0x10AE54, 0x4
.global lbl_8010DE58
lbl_8010DE58:
	.incbin "baserom.dol", 0x10AE58, 0x4
.global lbl_8010DE5C
lbl_8010DE5C:
	.incbin "baserom.dol", 0x10AE5C, 0x4
.global lbl_8010DE60
lbl_8010DE60:
	.incbin "baserom.dol", 0x10AE60, 0x4
.global lbl_8010DE64
lbl_8010DE64:
	.incbin "baserom.dol", 0x10AE64, 0x4
.global lbl_8010DE68
lbl_8010DE68:
	.incbin "baserom.dol", 0x10AE68, 0x4
.global lbl_8010DE6C
lbl_8010DE6C:
	.incbin "baserom.dol", 0x10AE6C, 0x4
.global lbl_8010DE70
lbl_8010DE70:
	.incbin "baserom.dol", 0x10AE70, 0x8
.global lbl_8010DE78
lbl_8010DE78:
	.incbin "baserom.dol", 0x10AE78, 0x8
.global lbl_8010DE80
lbl_8010DE80:
	.incbin "baserom.dol", 0x10AE80, 0x4
.global lbl_8010DE84
lbl_8010DE84:
	.incbin "baserom.dol", 0x10AE84, 0x4
.global lbl_8010DE88
lbl_8010DE88:
	.incbin "baserom.dol", 0x10AE88, 0x4
.global lbl_8010DE8C
lbl_8010DE8C:
	.incbin "baserom.dol", 0x10AE8C, 0x4
.global lbl_8010DE90
lbl_8010DE90:
	.incbin "baserom.dol", 0x10AE90, 0x4
.global lbl_8010DE94
lbl_8010DE94:
	.incbin "baserom.dol", 0x10AE94, 0x4
.global lbl_8010DE98
lbl_8010DE98:
	.incbin "baserom.dol", 0x10AE98, 0x4
.global lbl_8010DE9C
lbl_8010DE9C:
	.incbin "baserom.dol", 0x10AE9C, 0x4
.global lbl_8010DEA0
lbl_8010DEA0:
	.incbin "baserom.dol", 0x10AEA0, 0x4
.global lbl_8010DEA4
lbl_8010DEA4:
	.incbin "baserom.dol", 0x10AEA4, 0x4
.global lbl_8010DEA8
lbl_8010DEA8:
	.incbin "baserom.dol", 0x10AEA8, 0x4
.global lbl_8010DEAC
lbl_8010DEAC:
	.incbin "baserom.dol", 0x10AEAC, 0x4
.global lbl_8010DEB0
lbl_8010DEB0:
	.incbin "baserom.dol", 0x10AEB0, 0x4
.global lbl_8010DEB4
lbl_8010DEB4:
	.incbin "baserom.dol", 0x10AEB4, 0x4
.global lbl_8010DEB8
lbl_8010DEB8:
	.incbin "baserom.dol", 0x10AEB8, 0x4
.global lbl_8010DEBC
lbl_8010DEBC:
	.incbin "baserom.dol", 0x10AEBC, 0x4
.global lbl_8010DEC0
lbl_8010DEC0:
	.incbin "baserom.dol", 0x10AEC0, 0x4
.global lbl_8010DEC4
lbl_8010DEC4:
	.incbin "baserom.dol", 0x10AEC4, 0x4
.global lbl_8010DEC8
lbl_8010DEC8:
	.incbin "baserom.dol", 0x10AEC8, 0x4
.global lbl_8010DECC
lbl_8010DECC:
	.incbin "baserom.dol", 0x10AECC, 0x4
.global lbl_8010DED0
lbl_8010DED0:
	.incbin "baserom.dol", 0x10AED0, 0x4
.global lbl_8010DED4
lbl_8010DED4:
	.incbin "baserom.dol", 0x10AED4, 0x4
.global lbl_8010DED8
lbl_8010DED8:
	.incbin "baserom.dol", 0x10AED8, 0x4
.global lbl_8010DEDC
lbl_8010DEDC:
	.incbin "baserom.dol", 0x10AEDC, 0x4
.global lbl_8010DEE0
lbl_8010DEE0:
	.incbin "baserom.dol", 0x10AEE0, 0x4
.global lbl_8010DEE4
lbl_8010DEE4:
	.incbin "baserom.dol", 0x10AEE4, 0x4
.global lbl_8010DEE8
lbl_8010DEE8:
	.incbin "baserom.dol", 0x10AEE8, 0x4
.global lbl_8010DEEC
lbl_8010DEEC:
	.incbin "baserom.dol", 0x10AEEC, 0x4
.global lbl_8010DEF0
lbl_8010DEF0:
	.incbin "baserom.dol", 0x10AEF0, 0x4
.global lbl_8010DEF4
lbl_8010DEF4:
	.incbin "baserom.dol", 0x10AEF4, 0x4
.global lbl_8010DEF8
lbl_8010DEF8:
	.incbin "baserom.dol", 0x10AEF8, 0x4
.global lbl_8010DEFC
lbl_8010DEFC:
	.incbin "baserom.dol", 0x10AEFC, 0x4
.global lbl_8010DF00
lbl_8010DF00:
	.incbin "baserom.dol", 0x10AF00, 0x4
.global lbl_8010DF04
lbl_8010DF04:
	.incbin "baserom.dol", 0x10AF04, 0x4
.global lbl_8010DF08
lbl_8010DF08:
	.incbin "baserom.dol", 0x10AF08, 0x4
.global lbl_8010DF0C
lbl_8010DF0C:
	.incbin "baserom.dol", 0x10AF0C, 0x4
.global lbl_8010DF10
lbl_8010DF10:
	.incbin "baserom.dol", 0x10AF10, 0x4
.global lbl_8010DF14
lbl_8010DF14:
	.incbin "baserom.dol", 0x10AF14, 0xC
.global lbl_8010DF20
lbl_8010DF20:
	.incbin "baserom.dol", 0x10AF20, 0x4
.global lbl_8010DF24
lbl_8010DF24:
	.incbin "baserom.dol", 0x10AF24, 0x4
.global lbl_8010DF28
lbl_8010DF28:
	.incbin "baserom.dol", 0x10AF28, 0x4
.global lbl_8010DF2C
lbl_8010DF2C:
	.incbin "baserom.dol", 0x10AF2C, 0x4
.global lbl_8010DF30
lbl_8010DF30:
	.incbin "baserom.dol", 0x10AF30, 0x4
.global lbl_8010DF34
lbl_8010DF34:
	.incbin "baserom.dol", 0x10AF34, 0x4
.global lbl_8010DF38
lbl_8010DF38:
	.incbin "baserom.dol", 0x10AF38, 0x8
.global lbl_8010DF40
lbl_8010DF40:
	.incbin "baserom.dol", 0x10AF40, 0x8
.global lbl_8010DF48
lbl_8010DF48:
	.incbin "baserom.dol", 0x10AF48, 0x4
.global lbl_8010DF4C
lbl_8010DF4C:
	.incbin "baserom.dol", 0x10AF4C, 0x4
.global lbl_8010DF50
lbl_8010DF50:
	.incbin "baserom.dol", 0x10AF50, 0x8
.global lbl_8010DF58
lbl_8010DF58:
	.incbin "baserom.dol", 0x10AF58, 0x8
.global lbl_8010DF60
lbl_8010DF60:
	.incbin "baserom.dol", 0x10AF60, 0x8
.global lbl_8010DF68
lbl_8010DF68:
	.incbin "baserom.dol", 0x10AF68, 0x8
.global lbl_8010DF70
lbl_8010DF70:
	.incbin "baserom.dol", 0x10AF70, 0x4
.global lbl_8010DF74
lbl_8010DF74:
	.incbin "baserom.dol", 0x10AF74, 0x4
.global lbl_8010DF78
lbl_8010DF78:
	.incbin "baserom.dol", 0x10AF78, 0x4
.global lbl_8010DF7C
lbl_8010DF7C:
	.incbin "baserom.dol", 0x10AF7C, 0x4
.global lbl_8010DF80
lbl_8010DF80:
	.incbin "baserom.dol", 0x10AF80, 0x4
.global lbl_8010DF84
lbl_8010DF84:
	.incbin "baserom.dol", 0x10AF84, 0x4
.global lbl_8010DF88
lbl_8010DF88:
	.incbin "baserom.dol", 0x10AF88, 0x4
.global lbl_8010DF8C
lbl_8010DF8C:
	.incbin "baserom.dol", 0x10AF8C, 0x4
.global lbl_8010DF90
lbl_8010DF90:
	.incbin "baserom.dol", 0x10AF90, 0x4
.global lbl_8010DF94
lbl_8010DF94:
	.incbin "baserom.dol", 0x10AF94, 0x4
.global lbl_8010DF98
lbl_8010DF98:
	.incbin "baserom.dol", 0x10AF98, 0x8
.global lbl_8010DFA0
lbl_8010DFA0:
	.incbin "baserom.dol", 0x10AFA0, 0x4
.global lbl_8010DFA4
lbl_8010DFA4:
	.incbin "baserom.dol", 0x10AFA4, 0x4
.global lbl_8010DFA8
lbl_8010DFA8:
	.incbin "baserom.dol", 0x10AFA8, 0x4
.global lbl_8010DFAC
lbl_8010DFAC:
	.incbin "baserom.dol", 0x10AFAC, 0x4
.global lbl_8010DFB0
lbl_8010DFB0:
	.incbin "baserom.dol", 0x10AFB0, 0x4
.global lbl_8010DFB4
lbl_8010DFB4:
	.incbin "baserom.dol", 0x10AFB4, 0x4
.global lbl_8010DFB8
lbl_8010DFB8:
	.incbin "baserom.dol", 0x10AFB8, 0x4
.global lbl_8010DFBC
lbl_8010DFBC:
	.incbin "baserom.dol", 0x10AFBC, 0x4
.global lbl_8010DFC0
lbl_8010DFC0:
	.incbin "baserom.dol", 0x10AFC0, 0x4
.global lbl_8010DFC4
lbl_8010DFC4:
	.incbin "baserom.dol", 0x10AFC4, 0x4
.global lbl_8010DFC8
lbl_8010DFC8:
	.incbin "baserom.dol", 0x10AFC8, 0x4
.global lbl_8010DFCC
lbl_8010DFCC:
	.incbin "baserom.dol", 0x10AFCC, 0x4
.global lbl_8010DFD0
lbl_8010DFD0:
	.incbin "baserom.dol", 0x10AFD0, 0x8
.global lbl_8010DFD8
lbl_8010DFD8:
	.incbin "baserom.dol", 0x10AFD8, 0x8
.global lbl_8010DFE0
lbl_8010DFE0:
	.incbin "baserom.dol", 0x10AFE0, 0x4
.global lbl_8010DFE4
lbl_8010DFE4:
	.incbin "baserom.dol", 0x10AFE4, 0x4
.global lbl_8010DFE8
lbl_8010DFE8:
	.incbin "baserom.dol", 0x10AFE8, 0x4
.global lbl_8010DFEC
lbl_8010DFEC:
	.incbin "baserom.dol", 0x10AFEC, 0x4
.global lbl_8010DFF0
lbl_8010DFF0:
	.incbin "baserom.dol", 0x10AFF0, 0x4
.global lbl_8010DFF4
lbl_8010DFF4:
	.incbin "baserom.dol", 0x10AFF4, 0x4
.global lbl_8010DFF8
lbl_8010DFF8:
	.incbin "baserom.dol", 0x10AFF8, 0x4
.global lbl_8010DFFC
lbl_8010DFFC:
	.incbin "baserom.dol", 0x10AFFC, 0x4
.global lbl_8010E000
lbl_8010E000:
	.incbin "baserom.dol", 0x10B000, 0x4
.global lbl_8010E004
lbl_8010E004:
	.incbin "baserom.dol", 0x10B004, 0x4
.global lbl_8010E008
lbl_8010E008:
	.incbin "baserom.dol", 0x10B008, 0x4
.global lbl_8010E00C
lbl_8010E00C:
	.incbin "baserom.dol", 0x10B00C, 0x4
.global lbl_8010E010
lbl_8010E010:
	.incbin "baserom.dol", 0x10B010, 0x4
.global lbl_8010E014
lbl_8010E014:
	.incbin "baserom.dol", 0x10B014, 0x4
.global lbl_8010E018
lbl_8010E018:
	.incbin "baserom.dol", 0x10B018, 0x4
.global lbl_8010E01C
lbl_8010E01C:
	.incbin "baserom.dol", 0x10B01C, 0xC
.global lbl_8010E028
lbl_8010E028:
	.incbin "baserom.dol", 0x10B028, 0x4
.global lbl_8010E02C
lbl_8010E02C:
	.incbin "baserom.dol", 0x10B02C, 0x4
.global lbl_8010E030
lbl_8010E030:
	.incbin "baserom.dol", 0x10B030, 0x4
.global lbl_8010E034
lbl_8010E034:
	.incbin "baserom.dol", 0x10B034, 0x4
.global lbl_8010E038
lbl_8010E038:
	.incbin "baserom.dol", 0x10B038, 0x8
.global lbl_8010E040
lbl_8010E040:
	.incbin "baserom.dol", 0x10B040, 0x4
.global lbl_8010E044
lbl_8010E044:
	.incbin "baserom.dol", 0x10B044, 0x4
.global lbl_8010E048
lbl_8010E048:
	.incbin "baserom.dol", 0x10B048, 0x4
.global lbl_8010E04C
lbl_8010E04C:
	.incbin "baserom.dol", 0x10B04C, 0x4
.global lbl_8010E050
lbl_8010E050:
	.incbin "baserom.dol", 0x10B050, 0x8
.global lbl_8010E058
lbl_8010E058:
	.incbin "baserom.dol", 0x10B058, 0x8
.global lbl_8010E060
lbl_8010E060:
	.incbin "baserom.dol", 0x10B060, 0x4
.global lbl_8010E064
lbl_8010E064:
	.incbin "baserom.dol", 0x10B064, 0x4
.global lbl_8010E068
lbl_8010E068:
	.incbin "baserom.dol", 0x10B068, 0x4
.global lbl_8010E06C
lbl_8010E06C:
	.incbin "baserom.dol", 0x10B06C, 0x4
.global lbl_8010E070
lbl_8010E070:
	.incbin "baserom.dol", 0x10B070, 0x4
.global lbl_8010E074
lbl_8010E074:
	.incbin "baserom.dol", 0x10B074, 0x4
.global lbl_8010E078
lbl_8010E078:
	.incbin "baserom.dol", 0x10B078, 0x4
.global lbl_8010E07C
lbl_8010E07C:
	.incbin "baserom.dol", 0x10B07C, 0x4
.global lbl_8010E080
lbl_8010E080:
	.incbin "baserom.dol", 0x10B080, 0x4
.global lbl_8010E084
lbl_8010E084:
	.incbin "baserom.dol", 0x10B084, 0x8
.global lbl_8010E08C
lbl_8010E08C:
	.incbin "baserom.dol", 0x10B08C, 0x4
.global lbl_8010E090
lbl_8010E090:
	.incbin "baserom.dol", 0x10B090, 0x4
.global lbl_8010E094
lbl_8010E094:
	.incbin "baserom.dol", 0x10B094, 0x4
.global lbl_8010E098
lbl_8010E098:
	.incbin "baserom.dol", 0x10B098, 0x4
.global lbl_8010E09C
lbl_8010E09C:
	.incbin "baserom.dol", 0x10B09C, 0x4
.global lbl_8010E0A0
lbl_8010E0A0:
	.incbin "baserom.dol", 0x10B0A0, 0x4
.global lbl_8010E0A4
lbl_8010E0A4:
	.incbin "baserom.dol", 0x10B0A4, 0x4
.global lbl_8010E0A8
lbl_8010E0A8:
	.incbin "baserom.dol", 0x10B0A8, 0x4
.global lbl_8010E0AC
lbl_8010E0AC:
	.incbin "baserom.dol", 0x10B0AC, 0x4
.global lbl_8010E0B0
lbl_8010E0B0:
	.incbin "baserom.dol", 0x10B0B0, 0x8
.global lbl_8010E0B8
lbl_8010E0B8:
	.incbin "baserom.dol", 0x10B0B8, 0x4
.global lbl_8010E0BC
lbl_8010E0BC:
	.incbin "baserom.dol", 0x10B0BC, 0x4
.global lbl_8010E0C0
lbl_8010E0C0:
	.incbin "baserom.dol", 0x10B0C0, 0x8
.global lbl_8010E0C8
lbl_8010E0C8:
	.incbin "baserom.dol", 0x10B0C8, 0x8
.global lbl_8010E0D0
lbl_8010E0D0:
	.incbin "baserom.dol", 0x10B0D0, 0x4
.global lbl_8010E0D4
lbl_8010E0D4:
	.incbin "baserom.dol", 0x10B0D4, 0x4
.global lbl_8010E0D8
lbl_8010E0D8:
	.incbin "baserom.dol", 0x10B0D8, 0x4
.global lbl_8010E0DC
lbl_8010E0DC:
	.incbin "baserom.dol", 0x10B0DC, 0x4
.global lbl_8010E0E0
lbl_8010E0E0:
	.incbin "baserom.dol", 0x10B0E0, 0xC
.global lbl_8010E0EC
lbl_8010E0EC:
	.incbin "baserom.dol", 0x10B0EC, 0x4
.global lbl_8010E0F0
lbl_8010E0F0:
	.incbin "baserom.dol", 0x10B0F0, 0x4
.global lbl_8010E0F4
lbl_8010E0F4:
	.incbin "baserom.dol", 0x10B0F4, 0x4
.global lbl_8010E0F8
lbl_8010E0F8:
	.incbin "baserom.dol", 0x10B0F8, 0x4
.global lbl_8010E0FC
lbl_8010E0FC:
	.incbin "baserom.dol", 0x10B0FC, 0x4
.global lbl_8010E100
lbl_8010E100:
	.incbin "baserom.dol", 0x10B100, 0x4
.global lbl_8010E104
lbl_8010E104:
	.incbin "baserom.dol", 0x10B104, 0x4
.global lbl_8010E108
lbl_8010E108:
	.incbin "baserom.dol", 0x10B108, 0x4
.global lbl_8010E10C
lbl_8010E10C:
	.incbin "baserom.dol", 0x10B10C, 0x4
.global lbl_8010E110
lbl_8010E110:
	.incbin "baserom.dol", 0x10B110, 0x8
.global lbl_8010E118
lbl_8010E118:
	.incbin "baserom.dol", 0x10B118, 0x8
.global lbl_8010E120
lbl_8010E120:
	.incbin "baserom.dol", 0x10B120, 0x4
.global lbl_8010E124
lbl_8010E124:
	.incbin "baserom.dol", 0x10B124, 0x4
.global lbl_8010E128
lbl_8010E128:
	.incbin "baserom.dol", 0x10B128, 0x4
.global lbl_8010E12C
lbl_8010E12C:
	.incbin "baserom.dol", 0x10B12C, 0x4
.global lbl_8010E130
lbl_8010E130:
	.incbin "baserom.dol", 0x10B130, 0x4
.global lbl_8010E134
lbl_8010E134:
	.incbin "baserom.dol", 0x10B134, 0x4
.global lbl_8010E138
lbl_8010E138:
	.incbin "baserom.dol", 0x10B138, 0x4
.global lbl_8010E13C
lbl_8010E13C:
	.incbin "baserom.dol", 0x10B13C, 0x4
.global lbl_8010E140
lbl_8010E140:
	.incbin "baserom.dol", 0x10B140, 0x4
.global lbl_8010E144
lbl_8010E144:
	.incbin "baserom.dol", 0x10B144, 0x4
.global lbl_8010E148
lbl_8010E148:
	.incbin "baserom.dol", 0x10B148, 0xC
.global lbl_8010E154
lbl_8010E154:
	.incbin "baserom.dol", 0x10B154, 0x4
.global lbl_8010E158
lbl_8010E158:
	.incbin "baserom.dol", 0x10B158, 0x4
.global lbl_8010E15C
lbl_8010E15C:
	.incbin "baserom.dol", 0x10B15C, 0x4
.global lbl_8010E160
lbl_8010E160:
	.incbin "baserom.dol", 0x10B160, 0x4
.global lbl_8010E164
lbl_8010E164:
	.incbin "baserom.dol", 0x10B164, 0x4
.global lbl_8010E168
lbl_8010E168:
	.incbin "baserom.dol", 0x10B168, 0x4
.global lbl_8010E16C
lbl_8010E16C:
	.incbin "baserom.dol", 0x10B16C, 0x4
.global lbl_8010E170
lbl_8010E170:
	.incbin "baserom.dol", 0x10B170, 0x4
.global lbl_8010E174
lbl_8010E174:
	.incbin "baserom.dol", 0x10B174, 0x4
.global lbl_8010E178
lbl_8010E178:
	.incbin "baserom.dol", 0x10B178, 0x4
.global lbl_8010E17C
lbl_8010E17C:
	.incbin "baserom.dol", 0x10B17C, 0x4
.global lbl_8010E180
lbl_8010E180:
	.incbin "baserom.dol", 0x10B180, 0x4
.global lbl_8010E184
lbl_8010E184:
	.incbin "baserom.dol", 0x10B184, 0x4
.global lbl_8010E188
lbl_8010E188:
	.incbin "baserom.dol", 0x10B188, 0x4
.global lbl_8010E18C
lbl_8010E18C:
	.incbin "baserom.dol", 0x10B18C, 0x4
.global lbl_8010E190
lbl_8010E190:
	.incbin "baserom.dol", 0x10B190, 0x4
.global lbl_8010E194
lbl_8010E194:
	.incbin "baserom.dol", 0x10B194, 0x4
.global lbl_8010E198
lbl_8010E198:
	.incbin "baserom.dol", 0x10B198, 0x4
.global lbl_8010E19C
lbl_8010E19C:
	.incbin "baserom.dol", 0x10B19C, 0x4
.global lbl_8010E1A0
lbl_8010E1A0:
	.incbin "baserom.dol", 0x10B1A0, 0x4
.global lbl_8010E1A4
lbl_8010E1A4:
	.incbin "baserom.dol", 0x10B1A4, 0x4
.global lbl_8010E1A8
lbl_8010E1A8:
	.incbin "baserom.dol", 0x10B1A8, 0x4
.global lbl_8010E1AC
lbl_8010E1AC:
	.incbin "baserom.dol", 0x10B1AC, 0x4
.global lbl_8010E1B0
lbl_8010E1B0:
	.incbin "baserom.dol", 0x10B1B0, 0x4
.global lbl_8010E1B4
lbl_8010E1B4:
	.incbin "baserom.dol", 0x10B1B4, 0x4
.global lbl_8010E1B8
lbl_8010E1B8:
	.incbin "baserom.dol", 0x10B1B8, 0x4
.global lbl_8010E1BC
lbl_8010E1BC:
	.incbin "baserom.dol", 0x10B1BC, 0x4
.global lbl_8010E1C0
lbl_8010E1C0:
	.incbin "baserom.dol", 0x10B1C0, 0x8
.global lbl_8010E1C8
lbl_8010E1C8:
	.incbin "baserom.dol", 0x10B1C8, 0x8
.global lbl_8010E1D0
lbl_8010E1D0:
	.incbin "baserom.dol", 0x10B1D0, 0x4
.global lbl_8010E1D4
lbl_8010E1D4:
	.incbin "baserom.dol", 0x10B1D4, 0x4
.global lbl_8010E1D8
lbl_8010E1D8:
	.incbin "baserom.dol", 0x10B1D8, 0x4
.global lbl_8010E1DC
lbl_8010E1DC:
	.incbin "baserom.dol", 0x10B1DC, 0x4
.global lbl_8010E1E0
lbl_8010E1E0:
	.incbin "baserom.dol", 0x10B1E0, 0x4
.global lbl_8010E1E4
lbl_8010E1E4:
	.incbin "baserom.dol", 0x10B1E4, 0x4
.global lbl_8010E1E8
lbl_8010E1E8:
	.incbin "baserom.dol", 0x10B1E8, 0x4
.global lbl_8010E1EC
lbl_8010E1EC:
	.incbin "baserom.dol", 0x10B1EC, 0x4
.global lbl_8010E1F0
lbl_8010E1F0:
	.incbin "baserom.dol", 0x10B1F0, 0x4
.global lbl_8010E1F4
lbl_8010E1F4:
	.incbin "baserom.dol", 0x10B1F4, 0x4
.global lbl_8010E1F8
lbl_8010E1F8:
	.incbin "baserom.dol", 0x10B1F8, 0x4
.global lbl_8010E1FC
lbl_8010E1FC:
	.incbin "baserom.dol", 0x10B1FC, 0x4
.global lbl_8010E200
lbl_8010E200:
	.incbin "baserom.dol", 0x10B200, 0x4
.global lbl_8010E204
lbl_8010E204:
	.incbin "baserom.dol", 0x10B204, 0x4
.global lbl_8010E208
lbl_8010E208:
	.incbin "baserom.dol", 0x10B208, 0x4
.global lbl_8010E20C
lbl_8010E20C:
	.incbin "baserom.dol", 0x10B20C, 0x4
.global lbl_8010E210
lbl_8010E210:
	.incbin "baserom.dol", 0x10B210, 0x4
.global lbl_8010E214
lbl_8010E214:
	.incbin "baserom.dol", 0x10B214, 0x4
.global lbl_8010E218
lbl_8010E218:
	.incbin "baserom.dol", 0x10B218, 0x8
.global lbl_8010E220
lbl_8010E220:
	.incbin "baserom.dol", 0x10B220, 0x4
.global lbl_8010E224
lbl_8010E224:
	.incbin "baserom.dol", 0x10B224, 0x4
.global lbl_8010E228
lbl_8010E228:
	.incbin "baserom.dol", 0x10B228, 0x244
.global s__s_lgt_8010e46c
s__s_lgt_8010e46c:
	.incbin "baserom.dol", 0x10B46C, 0x8
.global lbl_8010E474
lbl_8010E474:
	.incbin "baserom.dol", 0x10B474, 0x4
.global lbl_8010E478
lbl_8010E478:
	.incbin "baserom.dol", 0x10B478, 0x8
.global lbl_8010E480
lbl_8010E480:
	.incbin "baserom.dol", 0x10B480, 0x8
.global lbl_8010E488
lbl_8010E488:
	.incbin "baserom.dol", 0x10B488, 0x8
.global lbl_8010E490
lbl_8010E490:
	.incbin "baserom.dol", 0x10B490, 0x8
.global lbl_8010E498
lbl_8010E498:
	.incbin "baserom.dol", 0x10B498, 0x4
.global lbl_8010E49C
lbl_8010E49C:
	.incbin "baserom.dol", 0x10B49C, 0x4
.global lbl_8010E4A0
lbl_8010E4A0:
	.incbin "baserom.dol", 0x10B4A0, 0x8
.global lbl_8010E4A8
lbl_8010E4A8:
	.incbin "baserom.dol", 0x10B4A8, 0x8
.global lbl_8010E4B0
lbl_8010E4B0:
	.incbin "baserom.dol", 0x10B4B0, 0x4
.global lbl_8010E4B4
lbl_8010E4B4:
	.incbin "baserom.dol", 0x10B4B4, 0x4
.global lbl_8010E4B8
lbl_8010E4B8:
	.incbin "baserom.dol", 0x10B4B8, 0x8
.global lbl_8010E4C0
lbl_8010E4C0:
	.incbin "baserom.dol", 0x10B4C0, 0x8
.global lbl_8010E4C8
lbl_8010E4C8:
	.incbin "baserom.dol", 0x10B4C8, 0x8
.global lbl_8010E4D0
lbl_8010E4D0:
	.incbin "baserom.dol", 0x10B4D0, 0x4
.global lbl_8010E4D4
lbl_8010E4D4:
	.incbin "baserom.dol", 0x10B4D4, 0x4
.global lbl_8010E4D8
lbl_8010E4D8:
	.incbin "baserom.dol", 0x10B4D8, 0x484
.global lbl_8010E95C
lbl_8010E95C:
	.incbin "baserom.dol", 0x10B95C, 0x10
.global lbl_8010E96C
lbl_8010E96C:
	.incbin "baserom.dol", 0x10B96C, 0x10
.global s__02d__02d__02d__02d__02d_8010e97c
s__02d__02d__02d__02d__02d_8010e97c:
	.incbin "baserom.dol", 0x10B97C, 0x1C
.global lbl_8010E998
lbl_8010E998:
	.incbin "baserom.dol", 0x10B998, 0x4
.global lbl_8010E99C
lbl_8010E99C:
	.incbin "baserom.dol", 0x10B99C, 0x4
.global lbl_8010E9A0
lbl_8010E9A0:
	.incbin "baserom.dol", 0x10B9A0, 0x4
.global lbl_8010E9A4
lbl_8010E9A4:
	.incbin "baserom.dol", 0x10B9A4, 0x4
.global lbl_8010E9A8
lbl_8010E9A8:
	.incbin "baserom.dol", 0x10B9A8, 0x4
.global lbl_8010E9AC
lbl_8010E9AC:
	.incbin "baserom.dol", 0x10B9AC, 0x4
.global lbl_8010E9B0
lbl_8010E9B0:
	.incbin "baserom.dol", 0x10B9B0, 0x4
.global lbl_8010E9B4
lbl_8010E9B4:
	.incbin "baserom.dol", 0x10B9B4, 0x4
.global lbl_8010E9B8
lbl_8010E9B8:
	.incbin "baserom.dol", 0x10B9B8, 0x4
.global lbl_8010E9BC
lbl_8010E9BC:
	.incbin "baserom.dol", 0x10B9BC, 0x4
.global lbl_8010E9C0
lbl_8010E9C0:
	.incbin "baserom.dol", 0x10B9C0, 0x40
.global lbl_8010EA00
lbl_8010EA00:
	.incbin "baserom.dol", 0x10BA00, 0x45C
.global lbl_8010EE5C
lbl_8010EE5C:
	.incbin "baserom.dol", 0x10BE5C, 0x4
.global s_stuff_font_nus_8010ee60
s_stuff_font_nus_8010ee60:
	.incbin "baserom.dol", 0x10BE60, 0x10
.global s_C__source_crashwoc_code_gamecode_8010ee70
s_C__source_crashwoc_code_gamecode_8010ee70:
	.incbin "baserom.dol", 0x10BE70, 0x28
.global lbl_8010EE98
lbl_8010EE98:
	.incbin "baserom.dol", 0x10BE98, 0x38
.global s__s_ptl_8010eed0
s__s_ptl_8010eed0:
	.incbin "baserom.dol", 0x10BED0, 0x8
.global s_stuff_general_ptl_8010eed8
s_stuff_general_ptl_8010eed8:
	.incbin "baserom.dol", 0x10BED8, 0x14
.global s__s_cpt_8010eeec
s__s_cpt_8010eeec:
	.incbin "baserom.dol", 0x10BEEC, 0x8
.global lbl_8010EEF4
lbl_8010EEF4:
	.incbin "baserom.dol", 0x10BEF4, 0x8
.global lbl_8010EEFC
lbl_8010EEFC:
	.incbin "baserom.dol", 0x10BEFC, 0x8
.global lbl_8010EF04
lbl_8010EF04:
	.incbin "baserom.dol", 0x10BF04, 0x8
.global lbl_8010EF0C
lbl_8010EF0C:
	.incbin "baserom.dol", 0x10BF0C, 0x8
.global lbl_8010EF14
lbl_8010EF14:
	.incbin "baserom.dol", 0x10BF14, 0x8
.global s_levels_a_tsunami_wave_nus_8010ef1c
s_levels_a_tsunami_wave_nus_8010ef1c:
	.incbin "baserom.dol", 0x10BF1C, 0x1C
.global s_levels_b_intro_intro1_nus_8010ef38
s_levels_b_intro_intro1_nus_8010ef38:
	.incbin "baserom.dol", 0x10BF38, 0x1C
.global s_levels_b_intro_intro2_nus_8010ef54
s_levels_b_intro_intro2_nus_8010ef54:
	.incbin "baserom.dol", 0x10BF54, 0x1C
.global s_levels_b_intro_corridor_nus_8010ef70
s_levels_b_intro_corridor_nus_8010ef70:
	.incbin "baserom.dol", 0x10BF70, 0x1C
.global s_levels_b_intro_mystic_nus_8010ef8c
s_levels_b_intro_mystic_nus_8010ef8c:
	.incbin "baserom.dol", 0x10BF8C, 0x1C
.global s_levels_b_intro_space_nus_8010efa8
s_levels_b_intro_space_nus_8010efa8:
	.incbin "baserom.dol", 0x10BFA8, 0x1C
.global s_stuff_redbits_nus_8010efc4
s_stuff_redbits_nus_8010efc4:
	.incbin "baserom.dol", 0x10BFC4, 0x14
.global s_stuff_jeepbits_nus_8010efd8
s_stuff_jeepbits_nus_8010efd8:
	.incbin "baserom.dol", 0x10BFD8, 0x14
.global s_stuff_crates_nus_8010efec
s_stuff_crates_nus_8010efec:
	.incbin "baserom.dol", 0x10BFEC, 0x14
.global s_levels_b_pause_pause_nus_8010f000
s_levels_b_pause_pause_nus_8010f000:
	.incbin "baserom.dol", 0x10C000, 0x1C
.global s__s_obj_8010f01c
s__s_obj_8010f01c:
	.incbin "baserom.dol", 0x10C01C, 0x8
.global s__s_anm_8010f024
s__s_anm_8010f024:
	.incbin "baserom.dol", 0x10C024, 0x8
.global s__s_gra_8010f02c
s__s_gra_8010f02c:
	.incbin "baserom.dol", 0x10C02C, 0x8
.global s_stuff_gradient_raw_8010f034
s_stuff_gradient_raw_8010f034:
	.incbin "baserom.dol", 0x10C034, 0x14
.global lbl_8010F048
lbl_8010F048:
	.incbin "baserom.dol", 0x10C048, 0x8
.global lbl_8010F050
lbl_8010F050:
	.incbin "baserom.dol", 0x10C050, 0x8
.global lbl_8010F058
lbl_8010F058:
	.incbin "baserom.dol", 0x10C058, 0x8
.global lbl_8010F060
lbl_8010F060:
	.incbin "baserom.dol", 0x10C060, 0x8
.global lbl_8010F068
lbl_8010F068:
	.incbin "baserom.dol", 0x10C068, 0x8
.global lbl_8010F070
lbl_8010F070:
	.incbin "baserom.dol", 0x10C070, 0x8
.global lbl_8010F078
lbl_8010F078:
	.incbin "baserom.dol", 0x10C078, 0x8
.global lbl_8010F080
lbl_8010F080:
	.incbin "baserom.dol", 0x10C080, 0x4
.global lbl_8010F084
lbl_8010F084:
	.incbin "baserom.dol", 0x10C084, 0x4
.global s_stuff_box_raw_8010f088
s_stuff_box_raw_8010f088:
	.incbin "baserom.dol", 0x10C088, 0x10
.global s_stuff_boxyellow_raw_8010f098
s_stuff_boxyellow_raw_8010f098:
	.incbin "baserom.dol", 0x10C098, 0x14
.global s_stuff_wumpa_nus_8010f0ac
s_stuff_wumpa_nus_8010f0ac:
	.incbin "baserom.dol", 0x10C0AC, 0x10
.global lbl_8010F0BC
lbl_8010F0BC:
	.incbin "baserom.dol", 0x10C0BC, 0x8
.global lbl_8010F0C4
lbl_8010F0C4:
	.incbin "baserom.dol", 0x10C0C4, 0x8
.global lbl_8010F0CC
lbl_8010F0CC:
	.incbin "baserom.dol", 0x10C0CC, 0x4
.global lbl_8010F0D0
lbl_8010F0D0:
	.incbin "baserom.dol", 0x10C0D0, 0x4
.global lbl_8010F0D4
lbl_8010F0D4:
	.incbin "baserom.dol", 0x10C0D4, 0x4
.global lbl_8010F0D8
lbl_8010F0D8:
	.incbin "baserom.dol", 0x10C0D8, 0x8
.global lbl_8010F0E0
lbl_8010F0E0:
	.incbin "baserom.dol", 0x10C0E0, 0x8
.global lbl_8010F0E8
lbl_8010F0E8:
	.incbin "baserom.dol", 0x10C0E8, 0x4
.global lbl_8010F0EC
lbl_8010F0EC:
	.incbin "baserom.dol", 0x10C0EC, 0x4
.global lbl_8010F0F0
lbl_8010F0F0:
	.incbin "baserom.dol", 0x10C0F0, 0x8
.global lbl_8010F0F8
lbl_8010F0F8:
	.incbin "baserom.dol", 0x10C0F8, 0x4
.global lbl_8010F0FC
lbl_8010F0FC:
	.incbin "baserom.dol", 0x10C0FC, 0x4
.global lbl_8010F100
lbl_8010F100:
	.incbin "baserom.dol", 0x10C100, 0x4
.global lbl_8010F104
lbl_8010F104:
	.incbin "baserom.dol", 0x10C104, 0x4
.global lbl_8010F108
lbl_8010F108:
	.incbin "baserom.dol", 0x10C108, 0x38
.global lbl_8010F140
lbl_8010F140:
	.incbin "baserom.dol", 0x10C140, 0x8
.global lbl_8010F148
lbl_8010F148:
	.incbin "baserom.dol", 0x10C148, 0x4
.global lbl_8010F14C
lbl_8010F14C:
	.incbin "baserom.dol", 0x10C14C, 0xC
.global s_Filecopy_took___2f_seconds_8010f158
s_Filecopy_took___2f_seconds_8010f158:
	.incbin "baserom.dol", 0x10C158, 0x20
.global lbl_8010F178
lbl_8010F178:
	.incbin "baserom.dol", 0x10C178, 0x8
.global lbl_8010F180
lbl_8010F180:
	.incbin "baserom.dol", 0x10C180, 0x4
.global s_gfx_crash2gb_s3_8010f184
s_gfx_crash2gb_s3_8010f184:
	.incbin "baserom.dol", 0x10C184, 0x10
.global lbl_8010F194
lbl_8010F194:
	.incbin "baserom.dol", 0x10C194, 0x4
.global lbl_8010F198
lbl_8010F198:
	.incbin "baserom.dol", 0x10C198, 0x4
.global s_SS_StopAllSFX_8010f19c
s_SS_StopAllSFX_8010f19c:
	.incbin "baserom.dol", 0x10C19C, 0x10
.global s_SS_TrackStop_8010f1ac
s_SS_TrackStop_8010f1ac:
	.incbin "baserom.dol", 0x10C1AC, 0x10
.global s_GXAbortFrame_8010f1bc
s_GXAbortFrame_8010f1bc:
	.incbin "baserom.dol", 0x10C1BC, 0x10
.global s_GXDrawDone_8010f1cc
s_GXDrawDone_8010f1cc:
	.incbin "baserom.dol", 0x10C1CC, 0xC
.global s_VISetBlack_8010f1d8
s_VISetBlack_8010f1d8:
	.incbin "baserom.dol", 0x10C1D8, 0xC
.global s_VIFlush_8010f1e4
s_VIFlush_8010f1e4:
	.incbin "baserom.dol", 0x10C1E4, 0xC
.global s_VIWaitForRetrace_8010f1f0
s_VIWaitForRetrace_8010f1f0:
	.incbin "baserom.dol", 0x10C1F0, 0x14
.global s_OSResetSystem_8010f204
s_OSResetSystem_8010f204:
	.incbin "baserom.dol", 0x10C204, 0x10
.global s_gfx_licnin_s3_8010f214
s_gfx_licnin_s3_8010f214:
	.incbin "baserom.dol", 0x10C214, 0x10
.global s_gfx_copyr1_s3_8010f224
s_gfx_copyr1_s3_8010f224:
	.incbin "baserom.dol", 0x10C224, 0x10
.global s_gfx_euro_s3_8010f234
s_gfx_euro_s3_8010f234:
	.incbin "baserom.dol", 0x10C234, 0xC
.global lbl_8010F240
lbl_8010F240:
	.incbin "baserom.dol", 0x10C240, 0x4
.global lbl_8010F244
lbl_8010F244:
	.incbin "baserom.dol", 0x10C244, 0x10
.global s_Chars_8010f254
s_Chars_8010f254:
	.incbin "baserom.dol", 0x10C254, 0x10
.global lbl_8010F264
lbl_8010F264:
	.incbin "baserom.dol", 0x10C264, 0x4
.global s_Crash_8010f268
s_Crash_8010f268:
	.incbin "baserom.dol", 0x10C268, 0x8
.global s_World_8010f270
s_World_8010f270:
	.incbin "baserom.dol", 0x10C270, 0x8
.global s_Crates_8010f278
s_Crates_8010f278:
	.incbin "baserom.dol", 0x10C278, 0x8
.global s_Wumpa_8010f280
s_Wumpa_8010f280:
	.incbin "baserom.dol", 0x10C280, 0x8
.global lbl_8010F288
lbl_8010F288:
	.incbin "baserom.dol", 0x10C288, 0x8
.global s_Panel_8010f290
s_Panel_8010f290:
	.incbin "baserom.dol", 0x10C290, 0x8
.global lbl_8010F298
lbl_8010F298:
	.incbin "baserom.dol", 0x10C298, 0x8
.global lbl_8010F2A0
lbl_8010F2A0:
	.incbin "baserom.dol", 0x10C2A0, 0x4
.global lbl_8010F2A4
lbl_8010F2A4:
	.incbin "baserom.dol", 0x10C2A4, 0x4
.global lbl_8010F2A8
lbl_8010F2A8:
	.incbin "baserom.dol", 0x10C2A8, 0x4
.global lbl_8010F2AC
lbl_8010F2AC:
	.incbin "baserom.dol", 0x10C2AC, 0x4
.global lbl_8010F2B0
lbl_8010F2B0:
	.incbin "baserom.dol", 0x10C2B0, 0x4
.global lbl_8010F2B4
lbl_8010F2B4:
	.incbin "baserom.dol", 0x10C2B4, 0x4
.global lbl_8010F2B8
lbl_8010F2B8:
	.incbin "baserom.dol", 0x10C2B8, 0x4
.global lbl_8010F2BC
lbl_8010F2BC:
	.incbin "baserom.dol", 0x10C2BC, 0x4
.global lbl_8010F2C0
lbl_8010F2C0:
	.incbin "baserom.dol", 0x10C2C0, 0x4
.global lbl_8010F2C4
lbl_8010F2C4:
	.incbin "baserom.dol", 0x10C2C4, 0x4
.global lbl_8010F2C8
lbl_8010F2C8:
	.incbin "baserom.dol", 0x10C2C8, 0x4
.global lbl_8010F2CC
lbl_8010F2CC:
	.incbin "baserom.dol", 0x10C2CC, 0x4
.global lbl_8010F2D0
lbl_8010F2D0:
	.incbin "baserom.dol", 0x10C2D0, 0x4
.global lbl_8010F2D4
lbl_8010F2D4:
	.incbin "baserom.dol", 0x10C2D4, 0x8
.global lbl_8010F2DC
lbl_8010F2DC:
	.incbin "baserom.dol", 0x10C2DC, 0x4
.global lbl_8010F2E0
lbl_8010F2E0:
	.incbin "baserom.dol", 0x10C2E0, 0x8
.global lbl_8010F2E8
lbl_8010F2E8:
	.incbin "baserom.dol", 0x10C2E8, 0x4
.global lbl_8010F2EC
lbl_8010F2EC:
	.incbin "baserom.dol", 0x10C2EC, 0x4
.global lbl_8010F2F0
lbl_8010F2F0:
	.incbin "baserom.dol", 0x10C2F0, 0x4
.global lbl_8010F2F4
lbl_8010F2F4:
	.incbin "baserom.dol", 0x10C2F4, 0x240
.global s_player_trigger___2i__8010f534
s_player_trigger___2i__8010f534:
	.incbin "baserom.dol", 0x10C534, 0x18
.global lbl_8010F54C
lbl_8010F54C:
	.incbin "baserom.dol", 0x10C54C, 0x4
.global lbl_8010F550
lbl_8010F550:
	.incbin "baserom.dol", 0x10C550, 0x4
.global lbl_8010F554
lbl_8010F554:
	.incbin "baserom.dol", 0x10C554, 0x4
.global lbl_8010F558
lbl_8010F558:
	.incbin "baserom.dol", 0x10C558, 0x4
.global lbl_8010F55C
lbl_8010F55C:
	.incbin "baserom.dol", 0x10C55C, 0x4
.global lbl_8010F560
lbl_8010F560:
	.incbin "baserom.dol", 0x10C560, 0x8
.global lbl_8010F568
lbl_8010F568:
	.incbin "baserom.dol", 0x10C568, 0x4
.global lbl_8010F56C
lbl_8010F56C:
	.incbin "baserom.dol", 0x10C56C, 0x4
.global lbl_8010F570
lbl_8010F570:
	.incbin "baserom.dol", 0x10C570, 0x4
.global lbl_8010F574
lbl_8010F574:
	.incbin "baserom.dol", 0x10C574, 0x4
.global lbl_8010F578
lbl_8010F578:
	.incbin "baserom.dol", 0x10C578, 0x4
.global lbl_8010F57C
lbl_8010F57C:
	.incbin "baserom.dol", 0x10C57C, 0x4
.global lbl_8010F580
lbl_8010F580:
	.incbin "baserom.dol", 0x10C580, 0x4
.global lbl_8010F584
lbl_8010F584:
	.incbin "baserom.dol", 0x10C584, 0x4
.global lbl_8010F588
lbl_8010F588:
	.incbin "baserom.dol", 0x10C588, 0x8
.global lbl_8010F590
lbl_8010F590:
	.incbin "baserom.dol", 0x10C590, 0x8
.global lbl_8010F598
lbl_8010F598:
	.incbin "baserom.dol", 0x10C598, 0x4
.global lbl_8010F59C
lbl_8010F59C:
	.incbin "baserom.dol", 0x10C59C, 0x4
.global lbl_8010F5A0
lbl_8010F5A0:
	.incbin "baserom.dol", 0x10C5A0, 0x8
.global lbl_8010F5A8
lbl_8010F5A8:
	.incbin "baserom.dol", 0x10C5A8, 0x4
.global lbl_8010F5AC
lbl_8010F5AC:
	.incbin "baserom.dol", 0x10C5AC, 0x4
.global lbl_8010F5B0
lbl_8010F5B0:
	.incbin "baserom.dol", 0x10C5B0, 0x4
.global lbl_8010F5B4
lbl_8010F5B4:
	.incbin "baserom.dol", 0x10C5B4, 0x4
.global lbl_8010F5B8
lbl_8010F5B8:
	.incbin "baserom.dol", 0x10C5B8, 0x8
.global lbl_8010F5C0
lbl_8010F5C0:
	.incbin "baserom.dol", 0x10C5C0, 0x8
.global lbl_8010F5C8
lbl_8010F5C8:
	.incbin "baserom.dol", 0x10C5C8, 0x4
.global lbl_8010F5CC
lbl_8010F5CC:
	.incbin "baserom.dol", 0x10C5CC, 0x4
.global lbl_8010F5D0
lbl_8010F5D0:
	.incbin "baserom.dol", 0x10C5D0, 0x8
.global lbl_8010F5D8
lbl_8010F5D8:
	.incbin "baserom.dol", 0x10C5D8, 0x4
.global lbl_8010F5DC
lbl_8010F5DC:
	.incbin "baserom.dol", 0x10C5DC, 0x4
.global lbl_8010F5E0
lbl_8010F5E0:
	.incbin "baserom.dol", 0x10C5E0, 0x4
.global lbl_8010F5E4
lbl_8010F5E4:
	.incbin "baserom.dol", 0x10C5E4, 0x4
.global lbl_8010F5E8
lbl_8010F5E8:
	.incbin "baserom.dol", 0x10C5E8, 0x4
.global lbl_8010F5EC
lbl_8010F5EC:
	.incbin "baserom.dol", 0x10C5EC, 0x4
.global lbl_8010F5F0
lbl_8010F5F0:
	.incbin "baserom.dol", 0x10C5F0, 0x4
.global lbl_8010F5F4
lbl_8010F5F4:
	.incbin "baserom.dol", 0x10C5F4, 0x4
.global lbl_8010F5F8
lbl_8010F5F8:
	.incbin "baserom.dol", 0x10C5F8, 0x4
.global lbl_8010F5FC
lbl_8010F5FC:
	.incbin "baserom.dol", 0x10C5FC, 0x4
.global lbl_8010F600
lbl_8010F600:
	.incbin "baserom.dol", 0x10C600, 0x4
.global lbl_8010F604
lbl_8010F604:
	.incbin "baserom.dol", 0x10C604, 0x4
.global lbl_8010F608
lbl_8010F608:
	.incbin "baserom.dol", 0x10C608, 0x4
.global lbl_8010F60C
lbl_8010F60C:
	.incbin "baserom.dol", 0x10C60C, 0x4
.global lbl_8010F610
lbl_8010F610:
	.incbin "baserom.dol", 0x10C610, 0x4
.global lbl_8010F614
lbl_8010F614:
	.incbin "baserom.dol", 0x10C614, 0x4
.global lbl_8010F618
lbl_8010F618:
	.incbin "baserom.dol", 0x10C618, 0x4
.global lbl_8010F61C
lbl_8010F61C:
	.incbin "baserom.dol", 0x10C61C, 0x4
.global lbl_8010F620
lbl_8010F620:
	.incbin "baserom.dol", 0x10C620, 0x8
.global lbl_8010F628
lbl_8010F628:
	.incbin "baserom.dol", 0x10C628, 0x8
.global lbl_8010F630
lbl_8010F630:
	.incbin "baserom.dol", 0x10C630, 0x4
.global lbl_8010F634
lbl_8010F634:
	.incbin "baserom.dol", 0x10C634, 0x4
.global lbl_8010F638
lbl_8010F638:
	.incbin "baserom.dol", 0x10C638, 0x8
.global lbl_8010F640
lbl_8010F640:
	.incbin "baserom.dol", 0x10C640, 0x8
.global lbl_8010F648
lbl_8010F648:
	.incbin "baserom.dol", 0x10C648, 0x4
.global lbl_8010F64C
lbl_8010F64C:
	.incbin "baserom.dol", 0x10C64C, 0x4
.global lbl_8010F650
lbl_8010F650:
	.incbin "baserom.dol", 0x10C650, 0x4
.global lbl_8010F654
lbl_8010F654:
	.incbin "baserom.dol", 0x10C654, 0x4
.global lbl_8010F658
lbl_8010F658:
	.incbin "baserom.dol", 0x10C658, 0x4
.global lbl_8010F65C
lbl_8010F65C:
	.incbin "baserom.dol", 0x10C65C, 0x4
.global lbl_8010F660
lbl_8010F660:
	.incbin "baserom.dol", 0x10C660, 0x4
.global lbl_8010F664
lbl_8010F664:
	.incbin "baserom.dol", 0x10C664, 0x4
.global lbl_8010F668
lbl_8010F668:
	.incbin "baserom.dol", 0x10C668, 0x4
.global lbl_8010F66C
lbl_8010F66C:
	.incbin "baserom.dol", 0x10C66C, 0x4
.global lbl_8010F670
lbl_8010F670:
	.incbin "baserom.dol", 0x10C670, 0x4
.global lbl_8010F674
lbl_8010F674:
	.incbin "baserom.dol", 0x10C674, 0x4
.global lbl_8010F678
lbl_8010F678:
	.incbin "baserom.dol", 0x10C678, 0x4
.global lbl_8010F67C
lbl_8010F67C:
	.incbin "baserom.dol", 0x10C67C, 0x4
.global lbl_8010F680
lbl_8010F680:
	.incbin "baserom.dol", 0x10C680, 0x4
.global lbl_8010F684
lbl_8010F684:
	.incbin "baserom.dol", 0x10C684, 0x4
.global lbl_8010F688
lbl_8010F688:
	.incbin "baserom.dol", 0x10C688, 0x4
.global lbl_8010F68C
lbl_8010F68C:
	.incbin "baserom.dol", 0x10C68C, 0x4
.global lbl_8010F690
lbl_8010F690:
	.incbin "baserom.dol", 0x10C690, 0x4
.global lbl_8010F694
lbl_8010F694:
	.incbin "baserom.dol", 0x10C694, 0x4
.global lbl_8010F698
lbl_8010F698:
	.incbin "baserom.dol", 0x10C698, 0x4
.global lbl_8010F69C
lbl_8010F69C:
	.incbin "baserom.dol", 0x10C69C, 0x4
.global lbl_8010F6A0
lbl_8010F6A0:
	.incbin "baserom.dol", 0x10C6A0, 0x4
.global lbl_8010F6A4
lbl_8010F6A4:
	.incbin "baserom.dol", 0x10C6A4, 0x4
.global lbl_8010F6A8
lbl_8010F6A8:
	.incbin "baserom.dol", 0x10C6A8, 0x4
.global lbl_8010F6AC
lbl_8010F6AC:
	.incbin "baserom.dol", 0x10C6AC, 0x4
.global lbl_8010F6B0
lbl_8010F6B0:
	.incbin "baserom.dol", 0x10C6B0, 0x4
.global lbl_8010F6B4
lbl_8010F6B4:
	.incbin "baserom.dol", 0x10C6B4, 0x4
.global lbl_8010F6B8
lbl_8010F6B8:
	.incbin "baserom.dol", 0x10C6B8, 0x4
.global lbl_8010F6BC
lbl_8010F6BC:
	.incbin "baserom.dol", 0x10C6BC, 0x4
.global lbl_8010F6C0
lbl_8010F6C0:
	.incbin "baserom.dol", 0x10C6C0, 0x8
.global lbl_8010F6C8
lbl_8010F6C8:
	.incbin "baserom.dol", 0x10C6C8, 0x4
.global lbl_8010F6CC
lbl_8010F6CC:
	.incbin "baserom.dol", 0x10C6CC, 0x4
.global lbl_8010F6D0
lbl_8010F6D0:
	.incbin "baserom.dol", 0x10C6D0, 0x4
.global lbl_8010F6D4
lbl_8010F6D4:
	.incbin "baserom.dol", 0x10C6D4, 0x4
.global lbl_8010F6D8
lbl_8010F6D8:
	.incbin "baserom.dol", 0x10C6D8, 0x4
.global lbl_8010F6DC
lbl_8010F6DC:
	.incbin "baserom.dol", 0x10C6DC, 0x4
.global lbl_8010F6E0
lbl_8010F6E0:
	.incbin "baserom.dol", 0x10C6E0, 0x4
.global lbl_8010F6E4
lbl_8010F6E4:
	.incbin "baserom.dol", 0x10C6E4, 0x4
.global lbl_8010F6E8
lbl_8010F6E8:
	.incbin "baserom.dol", 0x10C6E8, 0x8
.global lbl_8010F6F0
lbl_8010F6F0:
	.incbin "baserom.dol", 0x10C6F0, 0x8
.global lbl_8010F6F8
lbl_8010F6F8:
	.incbin "baserom.dol", 0x10C6F8, 0x4
.global lbl_8010F6FC
lbl_8010F6FC:
	.incbin "baserom.dol", 0x10C6FC, 0x4
.global lbl_8010F700
lbl_8010F700:
	.incbin "baserom.dol", 0x10C700, 0x4
.global lbl_8010F704
lbl_8010F704:
	.incbin "baserom.dol", 0x10C704, 0x4
.global lbl_8010F708
lbl_8010F708:
	.incbin "baserom.dol", 0x10C708, 0x4
.global lbl_8010F70C
lbl_8010F70C:
	.incbin "baserom.dol", 0x10C70C, 0x4
.global lbl_8010F710
lbl_8010F710:
	.incbin "baserom.dol", 0x10C710, 0x4
.global lbl_8010F714
lbl_8010F714:
	.incbin "baserom.dol", 0x10C714, 0x4
.global lbl_8010F718
lbl_8010F718:
	.incbin "baserom.dol", 0x10C718, 0x8
.global lbl_8010F720
lbl_8010F720:
	.incbin "baserom.dol", 0x10C720, 0x8
.global lbl_8010F728
lbl_8010F728:
	.incbin "baserom.dol", 0x10C728, 0x4
.global lbl_8010F72C
lbl_8010F72C:
	.incbin "baserom.dol", 0x10C72C, 0x4
.global lbl_8010F730
lbl_8010F730:
	.incbin "baserom.dol", 0x10C730, 0x4
.global lbl_8010F734
lbl_8010F734:
	.incbin "baserom.dol", 0x10C734, 0x4
.global lbl_8010F738
lbl_8010F738:
	.incbin "baserom.dol", 0x10C738, 0x4
.global lbl_8010F73C
lbl_8010F73C:
	.incbin "baserom.dol", 0x10C73C, 0x4
.global lbl_8010F740
lbl_8010F740:
	.incbin "baserom.dol", 0x10C740, 0x4
.global lbl_8010F744
lbl_8010F744:
	.incbin "baserom.dol", 0x10C744, 0x4
.global lbl_8010F748
lbl_8010F748:
	.incbin "baserom.dol", 0x10C748, 0x4
.global lbl_8010F74C
lbl_8010F74C:
	.incbin "baserom.dol", 0x10C74C, 0x4
.global lbl_8010F750
lbl_8010F750:
	.incbin "baserom.dol", 0x10C750, 0x4
.global lbl_8010F754
lbl_8010F754:
	.incbin "baserom.dol", 0x10C754, 0x4
.global lbl_8010F758
lbl_8010F758:
	.incbin "baserom.dol", 0x10C758, 0x4
.global lbl_8010F75C
lbl_8010F75C:
	.incbin "baserom.dol", 0x10C75C, 0x4
.global lbl_8010F760
lbl_8010F760:
	.incbin "baserom.dol", 0x10C760, 0x4
.global lbl_8010F764
lbl_8010F764:
	.incbin "baserom.dol", 0x10C764, 0x4
.global lbl_8010F768
lbl_8010F768:
	.incbin "baserom.dol", 0x10C768, 0x4
.global lbl_8010F76C
lbl_8010F76C:
	.incbin "baserom.dol", 0x10C76C, 0x4
.global lbl_8010F770
lbl_8010F770:
	.incbin "baserom.dol", 0x10C770, 0x8
.global lbl_8010F778
lbl_8010F778:
	.incbin "baserom.dol", 0x10C778, 0x248
.global lbl_8010F9C0
lbl_8010F9C0:
	.incbin "baserom.dol", 0x10C9C0, 0x8
.global lbl_8010F9C8
lbl_8010F9C8:
	.incbin "baserom.dol", 0x10C9C8, 0x8
.global lbl_8010F9D0
lbl_8010F9D0:
	.incbin "baserom.dol", 0x10C9D0, 0x4
.global lbl_8010F9D4
lbl_8010F9D4:
	.incbin "baserom.dol", 0x10C9D4, 0x4
.global lbl_8010F9D8
lbl_8010F9D8:
	.incbin "baserom.dol", 0x10C9D8, 0x8
.global lbl_8010F9E0
lbl_8010F9E0:
	.incbin "baserom.dol", 0x10C9E0, 0x4
.global lbl_8010F9E4
lbl_8010F9E4:
	.incbin "baserom.dol", 0x10C9E4, 0x4
.global lbl_8010F9E8
lbl_8010F9E8:
	.incbin "baserom.dol", 0x10C9E8, 0x4
.global lbl_8010F9EC
lbl_8010F9EC:
	.incbin "baserom.dol", 0x10C9EC, 0x4
.global lbl_8010F9F0
lbl_8010F9F0:
	.incbin "baserom.dol", 0x10C9F0, 0x4
.global lbl_8010F9F4
lbl_8010F9F4:
	.incbin "baserom.dol", 0x10C9F4, 0x4
.global lbl_8010F9F8
lbl_8010F9F8:
	.incbin "baserom.dol", 0x10C9F8, 0x4
.global lbl_8010F9FC
lbl_8010F9FC:
	.incbin "baserom.dol", 0x10C9FC, 0x4
.global lbl_8010FA00
lbl_8010FA00:
	.incbin "baserom.dol", 0x10CA00, 0x8
.global lbl_8010FA08
lbl_8010FA08:
	.incbin "baserom.dol", 0x10CA08, 0x4
.global lbl_8010FA0C
lbl_8010FA0C:
	.incbin "baserom.dol", 0x10CA0C, 0x4
.global lbl_8010FA10
lbl_8010FA10:
	.incbin "baserom.dol", 0x10CA10, 0x4
.global lbl_8010FA14
lbl_8010FA14:
	.incbin "baserom.dol", 0x10CA14, 0x4
.global lbl_8010FA18
lbl_8010FA18:
	.incbin "baserom.dol", 0x10CA18, 0x4
.global lbl_8010FA1C
lbl_8010FA1C:
	.incbin "baserom.dol", 0x10CA1C, 0x4
.global lbl_8010FA20
lbl_8010FA20:
	.incbin "baserom.dol", 0x10CA20, 0x4
.global lbl_8010FA24
lbl_8010FA24:
	.incbin "baserom.dol", 0x10CA24, 0x4
.global lbl_8010FA28
lbl_8010FA28:
	.incbin "baserom.dol", 0x10CA28, 0x4
.global lbl_8010FA2C
lbl_8010FA2C:
	.incbin "baserom.dol", 0x10CA2C, 0x4
.global lbl_8010FA30
lbl_8010FA30:
	.incbin "baserom.dol", 0x10CA30, 0x4
.global lbl_8010FA34
lbl_8010FA34:
	.incbin "baserom.dol", 0x10CA34, 0x4
.global lbl_8010FA38
lbl_8010FA38:
	.incbin "baserom.dol", 0x10CA38, 0x4
.global lbl_8010FA3C
lbl_8010FA3C:
	.incbin "baserom.dol", 0x10CA3C, 0x4
.global lbl_8010FA40
lbl_8010FA40:
	.incbin "baserom.dol", 0x10CA40, 0x4
.global lbl_8010FA44
lbl_8010FA44:
	.incbin "baserom.dol", 0x10CA44, 0x4
.global lbl_8010FA48
lbl_8010FA48:
	.incbin "baserom.dol", 0x10CA48, 0x4
.global lbl_8010FA4C
lbl_8010FA4C:
	.incbin "baserom.dol", 0x10CA4C, 0x4
.global lbl_8010FA50
lbl_8010FA50:
	.incbin "baserom.dol", 0x10CA50, 0x4
.global lbl_8010FA54
lbl_8010FA54:
	.incbin "baserom.dol", 0x10CA54, 0x4
.global lbl_8010FA58
lbl_8010FA58:
	.incbin "baserom.dol", 0x10CA58, 0x4
.global lbl_8010FA5C
lbl_8010FA5C:
	.incbin "baserom.dol", 0x10CA5C, 0x4
.global lbl_8010FA60
lbl_8010FA60:
	.incbin "baserom.dol", 0x10CA60, 0x8
.global s_X___2f_Y___2f_Z___2f_8010fa68
s_X___2f_Y___2f_Z___2f_8010fa68:
	.incbin "baserom.dol", 0x10CA68, 0x18
.global lbl_8010FA80
lbl_8010FA80:
	.incbin "baserom.dol", 0x10CA80, 0x8
.global s___i__c___8010fa88
s___i__c___8010fa88:
	.incbin "baserom.dol", 0x10CA88, 0xC
.global s__i__i_8010fa94
s__i__i_8010fa94:
	.incbin "baserom.dol", 0x10CA94, 0x8
.global lbl_8010FA9C
lbl_8010FA9C:
	.incbin "baserom.dol", 0x10CA9C, 0x4
.global s___c__s_8010faa0
s___c__s_8010faa0:
	.incbin "baserom.dol", 0x10CAA0, 0xC
.global s________s_8010faac
s________s_8010faac:
	.incbin "baserom.dol", 0x10CAAC, 0xC
.global s___s_8010fab8
s___s_8010fab8:
	.incbin "baserom.dol", 0x10CAB8, 0xC
.global s___c__s_8010fac4
s___c__s_8010fac4:
	.incbin "baserom.dol", 0x10CAC4, 0x8
.global s______s_8010facc
s______s_8010facc:
	.incbin "baserom.dol", 0x10CACC, 0x8
.global s___s_8010fad4
s___s_8010fad4:
	.incbin "baserom.dol", 0x10CAD4, 0x8
.global s___3i___8010fadc
s___3i___8010fadc:
	.incbin "baserom.dol", 0x10CADC, 0x8
.global lbl_8010FAE4
lbl_8010FAE4:
	.incbin "baserom.dol", 0x10CAE4, 0x4
.global lbl_8010FAE8
lbl_8010FAE8:
	.incbin "baserom.dol", 0x10CAE8, 0x4
.global lbl_8010FAEC
lbl_8010FAEC:
	.incbin "baserom.dol", 0x10CAEC, 0x4
.global lbl_8010FAF0
lbl_8010FAF0:
	.incbin "baserom.dol", 0x10CAF0, 0x8
.global lbl_8010FAF8
lbl_8010FAF8:
	.incbin "baserom.dol", 0x10CAF8, 0x4
.global lbl_8010FAFC
lbl_8010FAFC:
	.incbin "baserom.dol", 0x10CAFC, 0x4
.global lbl_8010FB00
lbl_8010FB00:
	.incbin "baserom.dol", 0x10CB00, 0x4
.global lbl_8010FB04
lbl_8010FB04:
	.incbin "baserom.dol", 0x10CB04, 0x4
.global lbl_8010FB08
lbl_8010FB08:
	.incbin "baserom.dol", 0x10CB08, 0x4
.global lbl_8010FB0C
lbl_8010FB0C:
	.incbin "baserom.dol", 0x10CB0C, 0x4
.global lbl_8010FB10
lbl_8010FB10:
	.incbin "baserom.dol", 0x10CB10, 0x4
.global lbl_8010FB14
lbl_8010FB14:
	.incbin "baserom.dol", 0x10CB14, 0x4
.global lbl_8010FB18
lbl_8010FB18:
	.incbin "baserom.dol", 0x10CB18, 0x4
.global lbl_8010FB1C
lbl_8010FB1C:
	.incbin "baserom.dol", 0x10CB1C, 0x4
.global lbl_8010FB20
lbl_8010FB20:
	.incbin "baserom.dol", 0x10CB20, 0x4
.global lbl_8010FB24
lbl_8010FB24:
	.incbin "baserom.dol", 0x10CB24, 0x4
.global lbl_8010FB28
lbl_8010FB28:
	.incbin "baserom.dol", 0x10CB28, 0x8
.global lbl_8010FB30
lbl_8010FB30:
	.incbin "baserom.dol", 0x10CB30, 0x4
.global lbl_8010FB34
lbl_8010FB34:
	.incbin "baserom.dol", 0x10CB34, 0x4
.global lbl_8010FB38
lbl_8010FB38:
	.incbin "baserom.dol", 0x10CB38, 0x4
.global lbl_8010FB3C
lbl_8010FB3C:
	.incbin "baserom.dol", 0x10CB3C, 0x4
.global lbl_8010FB40
lbl_8010FB40:
	.incbin "baserom.dol", 0x10CB40, 0x4
.global lbl_8010FB44
lbl_8010FB44:
	.incbin "baserom.dol", 0x10CB44, 0x4
.global lbl_8010FB48
lbl_8010FB48:
	.incbin "baserom.dol", 0x10CB48, 0x4
.global lbl_8010FB4C
lbl_8010FB4C:
	.incbin "baserom.dol", 0x10CB4C, 0x4
.global lbl_8010FB50
lbl_8010FB50:
	.incbin "baserom.dol", 0x10CB50, 0x4
.global lbl_8010FB54
lbl_8010FB54:
	.incbin "baserom.dol", 0x10CB54, 0x4
.global lbl_8010FB58
lbl_8010FB58:
	.incbin "baserom.dol", 0x10CB58, 0x4
.global lbl_8010FB5C
lbl_8010FB5C:
	.incbin "baserom.dol", 0x10CB5C, 0x4
.global lbl_8010FB60
lbl_8010FB60:
	.incbin "baserom.dol", 0x10CB60, 0x4
.global lbl_8010FB64
lbl_8010FB64:
	.incbin "baserom.dol", 0x10CB64, 0x4
.global lbl_8010FB68
lbl_8010FB68:
	.incbin "baserom.dol", 0x10CB68, 0x4
.global lbl_8010FB6C
lbl_8010FB6C:
	.incbin "baserom.dol", 0x10CB6C, 0x4
.global lbl_8010FB70
lbl_8010FB70:
	.incbin "baserom.dol", 0x10CB70, 0x4
.global lbl_8010FB74
lbl_8010FB74:
	.incbin "baserom.dol", 0x10CB74, 0x4
.global lbl_8010FB78
lbl_8010FB78:
	.incbin "baserom.dol", 0x10CB78, 0x4
.global lbl_8010FB7C
lbl_8010FB7C:
	.incbin "baserom.dol", 0x10CB7C, 0x4
.global lbl_8010FB80
lbl_8010FB80:
	.incbin "baserom.dol", 0x10CB80, 0x4
.global lbl_8010FB84
lbl_8010FB84:
	.incbin "baserom.dol", 0x10CB84, 0x4
.global lbl_8010FB88
lbl_8010FB88:
	.incbin "baserom.dol", 0x10CB88, 0x4
.global lbl_8010FB8C
lbl_8010FB8C:
	.incbin "baserom.dol", 0x10CB8C, 0x4
.global lbl_8010FB90
lbl_8010FB90:
	.incbin "baserom.dol", 0x10CB90, 0x4
.global lbl_8010FB94
lbl_8010FB94:
	.incbin "baserom.dol", 0x10CB94, 0x4
.global lbl_8010FB98
lbl_8010FB98:
	.incbin "baserom.dol", 0x10CB98, 0x8
.global lbl_8010FBA0
lbl_8010FBA0:
	.incbin "baserom.dol", 0x10CBA0, 0x4
.global lbl_8010FBA4
lbl_8010FBA4:
	.incbin "baserom.dol", 0x10CBA4, 0x4
.global lbl_8010FBA8
lbl_8010FBA8:
	.incbin "baserom.dol", 0x10CBA8, 0x4
.global lbl_8010FBAC
lbl_8010FBAC:
	.incbin "baserom.dol", 0x10CBAC, 0x4
.global lbl_8010FBB0
lbl_8010FBB0:
	.incbin "baserom.dol", 0x10CBB0, 0x4
.global lbl_8010FBB4
lbl_8010FBB4:
	.incbin "baserom.dol", 0x10CBB4, 0x4
.global lbl_8010FBB8
lbl_8010FBB8:
	.incbin "baserom.dol", 0x10CBB8, 0x4
.global lbl_8010FBBC
lbl_8010FBBC:
	.incbin "baserom.dol", 0x10CBBC, 0x4
.global lbl_8010FBC0
lbl_8010FBC0:
	.incbin "baserom.dol", 0x10CBC0, 0x4
.global lbl_8010FBC4
lbl_8010FBC4:
	.incbin "baserom.dol", 0x10CBC4, 0x4
.global lbl_8010FBC8
lbl_8010FBC8:
	.incbin "baserom.dol", 0x10CBC8, 0x8
.global lbl_8010FBD0
lbl_8010FBD0:
	.incbin "baserom.dol", 0x10CBD0, 0x4
.global lbl_8010FBD4
lbl_8010FBD4:
	.incbin "baserom.dol", 0x10CBD4, 0x4
.global lbl_8010FBD8
lbl_8010FBD8:
	.incbin "baserom.dol", 0x10CBD8, 0x4
.global lbl_8010FBDC
lbl_8010FBDC:
	.incbin "baserom.dol", 0x10CBDC, 0x4
.global lbl_8010FBE0
lbl_8010FBE0:
	.incbin "baserom.dol", 0x10CBE0, 0x4
.global lbl_8010FBE4
lbl_8010FBE4:
	.incbin "baserom.dol", 0x10CBE4, 0x4
.global lbl_8010FBE8
lbl_8010FBE8:
	.incbin "baserom.dol", 0x10CBE8, 0x4
.global lbl_8010FBEC
lbl_8010FBEC:
	.incbin "baserom.dol", 0x10CBEC, 0x4
.global lbl_8010FBF0
lbl_8010FBF0:
	.incbin "baserom.dol", 0x10CBF0, 0x4
.global lbl_8010FBF4
lbl_8010FBF4:
	.incbin "baserom.dol", 0x10CBF4, 0x4
.global lbl_8010FBF8
lbl_8010FBF8:
	.incbin "baserom.dol", 0x10CBF8, 0x8
.global lbl_8010FC00
lbl_8010FC00:
	.incbin "baserom.dol", 0x10CC00, 0x8
.global lbl_8010FC08
lbl_8010FC08:
	.incbin "baserom.dol", 0x10CC08, 0x4
.global lbl_8010FC0C
lbl_8010FC0C:
	.incbin "baserom.dol", 0x10CC0C, 0x4
.global lbl_8010FC10
lbl_8010FC10:
	.incbin "baserom.dol", 0x10CC10, 0x4
.global lbl_8010FC14
lbl_8010FC14:
	.incbin "baserom.dol", 0x10CC14, 0x4
.global lbl_8010FC18
lbl_8010FC18:
	.incbin "baserom.dol", 0x10CC18, 0x8
.global lbl_8010FC20
lbl_8010FC20:
	.incbin "baserom.dol", 0x10CC20, 0x10
.global lbl_8010FC30
lbl_8010FC30:
	.incbin "baserom.dol", 0x10CC30, 0x4
.global lbl_8010FC34
lbl_8010FC34:
	.incbin "baserom.dol", 0x10CC34, 0x2094
.global lbl_80111CC8
lbl_80111CC8:
	.incbin "baserom.dol", 0x10ECC8, 0x8
.global lbl_80111CD0
lbl_80111CD0:
	.incbin "baserom.dol", 0x10ECD0, 0x4
.global s_No_local_SFX_table_available_80111cd4
s_No_local_SFX_table_available_80111cd4:
	.incbin "baserom.dol", 0x10ECD4, 0x20
.global lbl_80111CF4
lbl_80111CF4:
	.incbin "baserom.dol", 0x10ECF4, 0x4
.global lbl_80111CF8
lbl_80111CF8:
	.incbin "baserom.dol", 0x10ECF8, 0x4
.global lbl_80111CFC
lbl_80111CFC:
	.incbin "baserom.dol", 0x10ECFC, 0x4
.global lbl_80111D00
lbl_80111D00:
	.incbin "baserom.dol", 0x10ED00, 0x4
.global lbl_80111D04
lbl_80111D04:
	.incbin "baserom.dol", 0x10ED04, 0x4
.global lbl_80111D08
lbl_80111D08:
	.incbin "baserom.dol", 0x10ED08, 0x4
.global lbl_80111D0C
lbl_80111D0C:
	.incbin "baserom.dol", 0x10ED0C, 0x4
.global lbl_80111D10
lbl_80111D10:
	.incbin "baserom.dol", 0x10ED10, 0x4
.global lbl_80111D14
lbl_80111D14:
	.incbin "baserom.dol", 0x10ED14, 0x4
.global lbl_80111D18
lbl_80111D18:
	.incbin "baserom.dol", 0x10ED18, 0x63EC
.global lbl_80118104
lbl_80118104:
	.incbin "baserom.dol", 0x115104, 0x4
.global lbl_80118108
lbl_80118108:
	.incbin "baserom.dol", 0x115108, 0x4
.global lbl_8011810C
lbl_8011810C:
	.incbin "baserom.dol", 0x11510C, 0x4
.global lbl_80118110
lbl_80118110:
	.incbin "baserom.dol", 0x115110, 0x4
.global lbl_80118114
lbl_80118114:
	.incbin "baserom.dol", 0x115114, 0x4
.global lbl_80118118
lbl_80118118:
	.incbin "baserom.dol", 0x115118, 0x4
.global lbl_8011811C
lbl_8011811C:
	.incbin "baserom.dol", 0x11511C, 0x4
.global lbl_80118120
lbl_80118120:
	.incbin "baserom.dol", 0x115120, 0x4
.global lbl_80118124
lbl_80118124:
	.incbin "baserom.dol", 0x115124, 0x4
.global lbl_80118128
lbl_80118128:
	.incbin "baserom.dol", 0x115128, 0x4
.global lbl_8011812C
lbl_8011812C:
	.incbin "baserom.dol", 0x11512C, 0x4
.global lbl_80118130
lbl_80118130:
	.incbin "baserom.dol", 0x115130, 0x4
.global lbl_80118134
lbl_80118134:
	.incbin "baserom.dol", 0x115134, 0xC
.global lbl_80118140
lbl_80118140:
	.incbin "baserom.dol", 0x115140, 0x4
.global lbl_80118144
lbl_80118144:
	.incbin "baserom.dol", 0x115144, 0x4
.global lbl_80118148
lbl_80118148:
	.incbin "baserom.dol", 0x115148, 0x4
.global lbl_8011814C
lbl_8011814C:
	.incbin "baserom.dol", 0x11514C, 0x4
.global lbl_80118150
lbl_80118150:
	.incbin "baserom.dol", 0x115150, 0x4
.global lbl_80118154
lbl_80118154:
	.incbin "baserom.dol", 0x115154, 0x4
.global lbl_80118158
lbl_80118158:
	.incbin "baserom.dol", 0x115158, 0x4
.global lbl_8011815C
lbl_8011815C:
	.incbin "baserom.dol", 0x11515C, 0x4
.global lbl_80118160
lbl_80118160:
	.incbin "baserom.dol", 0x115160, 0x4
.global lbl_80118164
lbl_80118164:
	.incbin "baserom.dol", 0x115164, 0x4
.global lbl_80118168
lbl_80118168:
	.incbin "baserom.dol", 0x115168, 0x4
.global lbl_8011816C
lbl_8011816C:
	.incbin "baserom.dol", 0x11516C, 0x8
.global lbl_80118174
lbl_80118174:
	.incbin "baserom.dol", 0x115174, 0x4
.global lbl_80118178
lbl_80118178:
	.incbin "baserom.dol", 0x115178, 0x4
.global lbl_8011817C
lbl_8011817C:
	.incbin "baserom.dol", 0x11517C, 0x4
.global lbl_80118180
lbl_80118180:
	.incbin "baserom.dol", 0x115180, 0x4
.global lbl_80118184
lbl_80118184:
	.incbin "baserom.dol", 0x115184, 0x4
.global lbl_80118188
lbl_80118188:
	.incbin "baserom.dol", 0x115188, 0x4
.global lbl_8011818C
lbl_8011818C:
	.incbin "baserom.dol", 0x11518C, 0x4
.global lbl_80118190
lbl_80118190:
	.incbin "baserom.dol", 0x115190, 0x4
.global lbl_80118194
lbl_80118194:
	.incbin "baserom.dol", 0x115194, 0x4
.global lbl_80118198
lbl_80118198:
	.incbin "baserom.dol", 0x115198, 0x4
.global lbl_8011819C
lbl_8011819C:
	.incbin "baserom.dol", 0x11519C, 0x4
.global lbl_801181A0
lbl_801181A0:
	.incbin "baserom.dol", 0x1151A0, 0x4
.global lbl_801181A4
lbl_801181A4:
	.incbin "baserom.dol", 0x1151A4, 0x4
.global lbl_801181A8
lbl_801181A8:
	.incbin "baserom.dol", 0x1151A8, 0x4
.global lbl_801181AC
lbl_801181AC:
	.incbin "baserom.dol", 0x1151AC, 0x4
.global lbl_801181B0
lbl_801181B0:
	.incbin "baserom.dol", 0x1151B0, 0x4
.global lbl_801181B4
lbl_801181B4:
	.incbin "baserom.dol", 0x1151B4, 0x4
.global lbl_801181B8
lbl_801181B8:
	.incbin "baserom.dol", 0x1151B8, 0x4
.global lbl_801181BC
lbl_801181BC:
	.incbin "baserom.dol", 0x1151BC, 0x4
.global lbl_801181C0
lbl_801181C0:
	.incbin "baserom.dol", 0x1151C0, 0x4
.global lbl_801181C4
lbl_801181C4:
	.incbin "baserom.dol", 0x1151C4, 0x4
.global lbl_801181C8
lbl_801181C8:
	.incbin "baserom.dol", 0x1151C8, 0x4
.global lbl_801181CC
lbl_801181CC:
	.incbin "baserom.dol", 0x1151CC, 0x4
.global lbl_801181D0
lbl_801181D0:
	.incbin "baserom.dol", 0x1151D0, 0x4
.global lbl_801181D4
lbl_801181D4:
	.incbin "baserom.dol", 0x1151D4, 0x4
.global lbl_801181D8
lbl_801181D8:
	.incbin "baserom.dol", 0x1151D8, 0x8
.global lbl_801181E0
lbl_801181E0:
	.incbin "baserom.dol", 0x1151E0, 0x4
.global lbl_801181E4
lbl_801181E4:
	.incbin "baserom.dol", 0x1151E4, 0x4
.global lbl_801181E8
lbl_801181E8:
	.incbin "baserom.dol", 0x1151E8, 0x4
.global lbl_801181EC
lbl_801181EC:
	.incbin "baserom.dol", 0x1151EC, 0x4
.global lbl_801181F0
lbl_801181F0:
	.incbin "baserom.dol", 0x1151F0, 0x4
.global lbl_801181F4
lbl_801181F4:
	.incbin "baserom.dol", 0x1151F4, 0x4
.global lbl_801181F8
lbl_801181F8:
	.incbin "baserom.dol", 0x1151F8, 0x8
.global lbl_80118200
lbl_80118200:
	.incbin "baserom.dol", 0x115200, 0x4
.global lbl_80118204
lbl_80118204:
	.incbin "baserom.dol", 0x115204, 0x4
.global lbl_80118208
lbl_80118208:
	.incbin "baserom.dol", 0x115208, 0x4
.global lbl_8011820C
lbl_8011820C:
	.incbin "baserom.dol", 0x11520C, 0x4
.global lbl_80118210
lbl_80118210:
	.incbin "baserom.dol", 0x115210, 0x4
.global lbl_80118214
lbl_80118214:
	.incbin "baserom.dol", 0x115214, 0x4
.global lbl_80118218
lbl_80118218:
	.incbin "baserom.dol", 0x115218, 0x4
.global lbl_8011821C
lbl_8011821C:
	.incbin "baserom.dol", 0x11521C, 0x4
.global lbl_80118220
lbl_80118220:
	.incbin "baserom.dol", 0x115220, 0x4
.global lbl_80118224
lbl_80118224:
	.incbin "baserom.dol", 0x115224, 0x4
.global lbl_80118228
lbl_80118228:
	.incbin "baserom.dol", 0x115228, 0x4
.global lbl_8011822C
lbl_8011822C:
	.incbin "baserom.dol", 0x11522C, 0x4
.global lbl_80118230
lbl_80118230:
	.incbin "baserom.dol", 0x115230, 0x4
.global lbl_80118234
lbl_80118234:
	.incbin "baserom.dol", 0x115234, 0x4
.global lbl_80118238
lbl_80118238:
	.incbin "baserom.dol", 0x115238, 0x4
.global lbl_8011823C
lbl_8011823C:
	.incbin "baserom.dol", 0x11523C, 0x4
.global lbl_80118240
lbl_80118240:
	.incbin "baserom.dol", 0x115240, 0x4
.global lbl_80118244
lbl_80118244:
	.incbin "baserom.dol", 0x115244, 0x4
.global lbl_80118248
lbl_80118248:
	.incbin "baserom.dol", 0x115248, 0x4
.global lbl_8011824C
lbl_8011824C:
	.incbin "baserom.dol", 0x11524C, 0x4
.global lbl_80118250
lbl_80118250:
	.incbin "baserom.dol", 0x115250, 0x4
.global lbl_80118254
lbl_80118254:
	.incbin "baserom.dol", 0x115254, 0x4
.global lbl_80118258
lbl_80118258:
	.incbin "baserom.dol", 0x115258, 0x4
.global lbl_8011825C
lbl_8011825C:
	.incbin "baserom.dol", 0x11525C, 0x4
.global lbl_80118260
lbl_80118260:
	.incbin "baserom.dol", 0x115260, 0x4
.global lbl_80118264
lbl_80118264:
	.incbin "baserom.dol", 0x115264, 0x4
.global lbl_80118268
lbl_80118268:
	.incbin "baserom.dol", 0x115268, 0x4
.global lbl_8011826C
lbl_8011826C:
	.incbin "baserom.dol", 0x11526C, 0x4
.global lbl_80118270
lbl_80118270:
	.incbin "baserom.dol", 0x115270, 0x4
.global lbl_80118274
lbl_80118274:
	.incbin "baserom.dol", 0x115274, 0x4
.global lbl_80118278
lbl_80118278:
	.incbin "baserom.dol", 0x115278, 0x4
.global lbl_8011827C
lbl_8011827C:
	.incbin "baserom.dol", 0x11527C, 0x4
.global lbl_80118280
lbl_80118280:
	.incbin "baserom.dol", 0x115280, 0x4
.global lbl_80118284
lbl_80118284:
	.incbin "baserom.dol", 0x115284, 0x4
.global lbl_80118288
lbl_80118288:
	.incbin "baserom.dol", 0x115288, 0x4
.global lbl_8011828C
lbl_8011828C:
	.incbin "baserom.dol", 0x11528C, 0x4
.global lbl_80118290
lbl_80118290:
	.incbin "baserom.dol", 0x115290, 0x4
.global lbl_80118294
lbl_80118294:
	.incbin "baserom.dol", 0x115294, 0x4
.global lbl_80118298
lbl_80118298:
	.incbin "baserom.dol", 0x115298, 0x4
.global lbl_8011829C
lbl_8011829C:
	.incbin "baserom.dol", 0x11529C, 0x4
.global lbl_801182A0
lbl_801182A0:
	.incbin "baserom.dol", 0x1152A0, 0x4
.global lbl_801182A4
lbl_801182A4:
	.incbin "baserom.dol", 0x1152A4, 0x4
.global lbl_801182A8
lbl_801182A8:
	.incbin "baserom.dol", 0x1152A8, 0x4
.global lbl_801182AC
lbl_801182AC:
	.incbin "baserom.dol", 0x1152AC, 0x4
.global lbl_801182B0
lbl_801182B0:
	.incbin "baserom.dol", 0x1152B0, 0x4
.global lbl_801182B4
lbl_801182B4:
	.incbin "baserom.dol", 0x1152B4, 0x4
.global lbl_801182B8
lbl_801182B8:
	.incbin "baserom.dol", 0x1152B8, 0x4
.global lbl_801182BC
lbl_801182BC:
	.incbin "baserom.dol", 0x1152BC, 0x4
.global lbl_801182C0
lbl_801182C0:
	.incbin "baserom.dol", 0x1152C0, 0x4
.global lbl_801182C4
lbl_801182C4:
	.incbin "baserom.dol", 0x1152C4, 0x4
.global lbl_801182C8
lbl_801182C8:
	.incbin "baserom.dol", 0x1152C8, 0x4
.global lbl_801182CC
lbl_801182CC:
	.incbin "baserom.dol", 0x1152CC, 0x4
.global lbl_801182D0
lbl_801182D0:
	.incbin "baserom.dol", 0x1152D0, 0x4
.global lbl_801182D4
lbl_801182D4:
	.incbin "baserom.dol", 0x1152D4, 0x4
.global lbl_801182D8
lbl_801182D8:
	.incbin "baserom.dol", 0x1152D8, 0x4
.global lbl_801182DC
lbl_801182DC:
	.incbin "baserom.dol", 0x1152DC, 0x4
.global lbl_801182E0
lbl_801182E0:
	.incbin "baserom.dol", 0x1152E0, 0x4
.global lbl_801182E4
lbl_801182E4:
	.incbin "baserom.dol", 0x1152E4, 0x4
.global lbl_801182E8
lbl_801182E8:
	.incbin "baserom.dol", 0x1152E8, 0x4
.global lbl_801182EC
lbl_801182EC:
	.incbin "baserom.dol", 0x1152EC, 0x4
.global lbl_801182F0
lbl_801182F0:
	.incbin "baserom.dol", 0x1152F0, 0xC
.global lbl_801182FC
lbl_801182FC:
	.incbin "baserom.dol", 0x1152FC, 0x4
.global lbl_80118300
lbl_80118300:
	.incbin "baserom.dol", 0x115300, 0x4
.global lbl_80118304
lbl_80118304:
	.incbin "baserom.dol", 0x115304, 0x4
.global lbl_80118308
lbl_80118308:
	.incbin "baserom.dol", 0x115308, 0x4
.global lbl_8011830C
lbl_8011830C:
	.incbin "baserom.dol", 0x11530C, 0x4
.global lbl_80118310
lbl_80118310:
	.incbin "baserom.dol", 0x115310, 0x4
.global lbl_80118314
lbl_80118314:
	.incbin "baserom.dol", 0x115314, 0x4
.global lbl_80118318
lbl_80118318:
	.incbin "baserom.dol", 0x115318, 0x4
.global lbl_8011831C
lbl_8011831C:
	.incbin "baserom.dol", 0x11531C, 0x4
.global lbl_80118320
lbl_80118320:
	.incbin "baserom.dol", 0x115320, 0x8
.global lbl_80118328
lbl_80118328:
	.incbin "baserom.dol", 0x115328, 0x4
.global lbl_8011832C
lbl_8011832C:
	.incbin "baserom.dol", 0x11532C, 0x4
.global lbl_80118330
lbl_80118330:
	.incbin "baserom.dol", 0x115330, 0x4
.global lbl_80118334
lbl_80118334:
	.incbin "baserom.dol", 0x115334, 0x4
.global lbl_80118338
lbl_80118338:
	.incbin "baserom.dol", 0x115338, 0x4
.global lbl_8011833C
lbl_8011833C:
	.incbin "baserom.dol", 0x11533C, 0xC
.global lbl_80118348
lbl_80118348:
	.incbin "baserom.dol", 0x115348, 0x4
.global lbl_8011834C
lbl_8011834C:
	.incbin "baserom.dol", 0x11534C, 0x4
.global lbl_80118350
lbl_80118350:
	.incbin "baserom.dol", 0x115350, 0x4
.global lbl_80118354
lbl_80118354:
	.incbin "baserom.dol", 0x115354, 0x4
.global lbl_80118358
lbl_80118358:
	.incbin "baserom.dol", 0x115358, 0x4
.global lbl_8011835C
lbl_8011835C:
	.incbin "baserom.dol", 0x11535C, 0x4
.global lbl_80118360
lbl_80118360:
	.incbin "baserom.dol", 0x115360, 0x4
.global lbl_80118364
lbl_80118364:
	.incbin "baserom.dol", 0x115364, 0x4
.global lbl_80118368
lbl_80118368:
	.incbin "baserom.dol", 0x115368, 0x4
.global lbl_8011836C
lbl_8011836C:
	.incbin "baserom.dol", 0x11536C, 0x4
.global lbl_80118370
lbl_80118370:
	.incbin "baserom.dol", 0x115370, 0x4
.global lbl_80118374
lbl_80118374:
	.incbin "baserom.dol", 0x115374, 0x4
.global lbl_80118378
lbl_80118378:
	.incbin "baserom.dol", 0x115378, 0x4
.global lbl_8011837C
lbl_8011837C:
	.incbin "baserom.dol", 0x11537C, 0x4
.global lbl_80118380
lbl_80118380:
	.incbin "baserom.dol", 0x115380, 0x4
.global lbl_80118384
lbl_80118384:
	.incbin "baserom.dol", 0x115384, 0x4
.global lbl_80118388
lbl_80118388:
	.incbin "baserom.dol", 0x115388, 0x4
.global lbl_8011838C
lbl_8011838C:
	.incbin "baserom.dol", 0x11538C, 0x4
.global lbl_80118390
lbl_80118390:
	.incbin "baserom.dol", 0x115390, 0x4
.global lbl_80118394
lbl_80118394:
	.incbin "baserom.dol", 0x115394, 0x4
.global lbl_80118398
lbl_80118398:
	.incbin "baserom.dol", 0x115398, 0x4
.global lbl_8011839C
lbl_8011839C:
	.incbin "baserom.dol", 0x11539C, 0x4
.global lbl_801183A0
lbl_801183A0:
	.incbin "baserom.dol", 0x1153A0, 0x4
.global lbl_801183A4
lbl_801183A4:
	.incbin "baserom.dol", 0x1153A4, 0x4
.global lbl_801183A8
lbl_801183A8:
	.incbin "baserom.dol", 0x1153A8, 0x4
.global lbl_801183AC
lbl_801183AC:
	.incbin "baserom.dol", 0x1153AC, 0x4
.global lbl_801183B0
lbl_801183B0:
	.incbin "baserom.dol", 0x1153B0, 0x4
.global lbl_801183B4
lbl_801183B4:
	.incbin "baserom.dol", 0x1153B4, 0x4
.global lbl_801183B8
lbl_801183B8:
	.incbin "baserom.dol", 0x1153B8, 0x4
.global lbl_801183BC
lbl_801183BC:
	.incbin "baserom.dol", 0x1153BC, 0x4
.global lbl_801183C0
lbl_801183C0:
	.incbin "baserom.dol", 0x1153C0, 0x4
.global lbl_801183C4
lbl_801183C4:
	.incbin "baserom.dol", 0x1153C4, 0x4
.global lbl_801183C8
lbl_801183C8:
	.incbin "baserom.dol", 0x1153C8, 0x8
.global lbl_801183D0
lbl_801183D0:
	.incbin "baserom.dol", 0x1153D0, 0x4
.global lbl_801183D4
lbl_801183D4:
	.incbin "baserom.dol", 0x1153D4, 0x4
.global lbl_801183D8
lbl_801183D8:
	.incbin "baserom.dol", 0x1153D8, 0x4
.global lbl_801183DC
lbl_801183DC:
	.incbin "baserom.dol", 0x1153DC, 0x4
.global lbl_801183E0
lbl_801183E0:
	.incbin "baserom.dol", 0x1153E0, 0x4
.global lbl_801183E4
lbl_801183E4:
	.incbin "baserom.dol", 0x1153E4, 0x4
.global lbl_801183E8
lbl_801183E8:
	.incbin "baserom.dol", 0x1153E8, 0x4
.global lbl_801183EC
lbl_801183EC:
	.incbin "baserom.dol", 0x1153EC, 0x4
.global lbl_801183F0
lbl_801183F0:
	.incbin "baserom.dol", 0x1153F0, 0x4
.global lbl_801183F4
lbl_801183F4:
	.incbin "baserom.dol", 0x1153F4, 0x4
.global lbl_801183F8
lbl_801183F8:
	.incbin "baserom.dol", 0x1153F8, 0x4
.global lbl_801183FC
lbl_801183FC:
	.incbin "baserom.dol", 0x1153FC, 0x4
.global lbl_80118400
lbl_80118400:
	.incbin "baserom.dol", 0x115400, 0x4
.global lbl_80118404
lbl_80118404:
	.incbin "baserom.dol", 0x115404, 0x4
.global lbl_80118408
lbl_80118408:
	.incbin "baserom.dol", 0x115408, 0x4
.global lbl_8011840C
lbl_8011840C:
	.incbin "baserom.dol", 0x11540C, 0x4
.global lbl_80118410
lbl_80118410:
	.incbin "baserom.dol", 0x115410, 0x4
.global lbl_80118414
lbl_80118414:
	.incbin "baserom.dol", 0x115414, 0x4
.global lbl_80118418
lbl_80118418:
	.incbin "baserom.dol", 0x115418, 0x4
.global lbl_8011841C
lbl_8011841C:
	.incbin "baserom.dol", 0x11541C, 0x4
.global lbl_80118420
lbl_80118420:
	.incbin "baserom.dol", 0x115420, 0x4
.global lbl_80118424
lbl_80118424:
	.incbin "baserom.dol", 0x115424, 0x4
.global lbl_80118428
lbl_80118428:
	.incbin "baserom.dol", 0x115428, 0x4
.global lbl_8011842C
lbl_8011842C:
	.incbin "baserom.dol", 0x11542C, 0x4
.global lbl_80118430
lbl_80118430:
	.incbin "baserom.dol", 0x115430, 0x4
.global lbl_80118434
lbl_80118434:
	.incbin "baserom.dol", 0x115434, 0x4
.global lbl_80118438
lbl_80118438:
	.incbin "baserom.dol", 0x115438, 0x4
.global lbl_8011843C
lbl_8011843C:
	.incbin "baserom.dol", 0x11543C, 0x4
.global lbl_80118440
lbl_80118440:
	.incbin "baserom.dol", 0x115440, 0x4
.global lbl_80118444
lbl_80118444:
	.incbin "baserom.dol", 0x115444, 0x4
.global lbl_80118448
lbl_80118448:
	.incbin "baserom.dol", 0x115448, 0x4
.global lbl_8011844C
lbl_8011844C:
	.incbin "baserom.dol", 0x11544C, 0x4
.global lbl_80118450
lbl_80118450:
	.incbin "baserom.dol", 0x115450, 0x8
.global lbl_80118458
lbl_80118458:
	.incbin "baserom.dol", 0x115458, 0x4
.global lbl_8011845C
lbl_8011845C:
	.incbin "baserom.dol", 0x11545C, 0x4
.global lbl_80118460
lbl_80118460:
	.incbin "baserom.dol", 0x115460, 0x4
.global lbl_80118464
lbl_80118464:
	.incbin "baserom.dol", 0x115464, 0x4
.global lbl_80118468
lbl_80118468:
	.incbin "baserom.dol", 0x115468, 0x4
.global lbl_8011846C
lbl_8011846C:
	.incbin "baserom.dol", 0x11546C, 0x4
.global lbl_80118470
lbl_80118470:
	.incbin "baserom.dol", 0x115470, 0x4
.global lbl_80118474
lbl_80118474:
	.incbin "baserom.dol", 0x115474, 0x4
.global lbl_80118478
lbl_80118478:
	.incbin "baserom.dol", 0x115478, 0x4
.global lbl_8011847C
lbl_8011847C:
	.incbin "baserom.dol", 0x11547C, 0x4
.global lbl_80118480
lbl_80118480:
	.incbin "baserom.dol", 0x115480, 0x8
.global lbl_80118488
lbl_80118488:
	.incbin "baserom.dol", 0x115488, 0x4
.global lbl_8011848C
lbl_8011848C:
	.incbin "baserom.dol", 0x11548C, 0x4
.global lbl_80118490
lbl_80118490:
	.incbin "baserom.dol", 0x115490, 0x8
.global lbl_80118498
lbl_80118498:
	.incbin "baserom.dol", 0x115498, 0x8
.global lbl_801184A0
lbl_801184A0:
	.incbin "baserom.dol", 0x1154A0, 0x4
.global lbl_801184A4
lbl_801184A4:
	.incbin "baserom.dol", 0x1154A4, 0x4
.global lbl_801184A8
lbl_801184A8:
	.incbin "baserom.dol", 0x1154A8, 0x4
.global lbl_801184AC
lbl_801184AC:
	.incbin "baserom.dol", 0x1154AC, 0x4
.global lbl_801184B0
lbl_801184B0:
	.incbin "baserom.dol", 0x1154B0, 0xC
.global lbl_801184BC
lbl_801184BC:
	.incbin "baserom.dol", 0x1154BC, 0x4
.global lbl_801184C0
lbl_801184C0:
	.incbin "baserom.dol", 0x1154C0, 0x4
.global lbl_801184C4
lbl_801184C4:
	.incbin "baserom.dol", 0x1154C4, 0x4
.global lbl_801184C8
lbl_801184C8:
	.incbin "baserom.dol", 0x1154C8, 0x4
.global lbl_801184CC
lbl_801184CC:
	.incbin "baserom.dol", 0x1154CC, 0x4
.global lbl_801184D0
lbl_801184D0:
	.incbin "baserom.dol", 0x1154D0, 0x4
.global lbl_801184D4
lbl_801184D4:
	.incbin "baserom.dol", 0x1154D4, 0x4
.global lbl_801184D8
lbl_801184D8:
	.incbin "baserom.dol", 0x1154D8, 0x4
.global lbl_801184DC
lbl_801184DC:
	.incbin "baserom.dol", 0x1154DC, 0x4
.global lbl_801184E0
lbl_801184E0:
	.incbin "baserom.dol", 0x1154E0, 0x4
.global lbl_801184E4
lbl_801184E4:
	.incbin "baserom.dol", 0x1154E4, 0x4
.global lbl_801184E8
lbl_801184E8:
	.incbin "baserom.dol", 0x1154E8, 0x4
.global lbl_801184EC
lbl_801184EC:
	.incbin "baserom.dol", 0x1154EC, 0x4
.global lbl_801184F0
lbl_801184F0:
	.incbin "baserom.dol", 0x1154F0, 0x4
.global lbl_801184F4
lbl_801184F4:
	.incbin "baserom.dol", 0x1154F4, 0x4
.global lbl_801184F8
lbl_801184F8:
	.incbin "baserom.dol", 0x1154F8, 0x4
.global lbl_801184FC
lbl_801184FC:
	.incbin "baserom.dol", 0x1154FC, 0x4
.global lbl_80118500
lbl_80118500:
	.incbin "baserom.dol", 0x115500, 0x4
.global lbl_80118504
lbl_80118504:
	.incbin "baserom.dol", 0x115504, 0x4
.global lbl_80118508
lbl_80118508:
	.incbin "baserom.dol", 0x115508, 0x4
.global lbl_8011850C
lbl_8011850C:
	.incbin "baserom.dol", 0x11550C, 0x4
.global lbl_80118510
lbl_80118510:
	.incbin "baserom.dol", 0x115510, 0xC
.global lbl_8011851C
lbl_8011851C:
	.incbin "baserom.dol", 0x11551C, 0x4
.global lbl_80118520
lbl_80118520:
	.incbin "baserom.dol", 0x115520, 0x8
.global lbl_80118528
lbl_80118528:
	.incbin "baserom.dol", 0x115528, 0x8
.global lbl_80118530
lbl_80118530:
	.incbin "baserom.dol", 0x115530, 0x4
.global lbl_80118534
lbl_80118534:
	.incbin "baserom.dol", 0x115534, 0x4
.global lbl_80118538
lbl_80118538:
	.incbin "baserom.dol", 0x115538, 0x4
.global lbl_8011853C
lbl_8011853C:
	.incbin "baserom.dol", 0x11553C, 0x8
.global lbl_80118544
lbl_80118544:
	.incbin "baserom.dol", 0x115544, 0x4
.global lbl_80118548
lbl_80118548:
	.incbin "baserom.dol", 0x115548, 0x8
.global lbl_80118550
lbl_80118550:
	.incbin "baserom.dol", 0x115550, 0x4
.global lbl_80118554
lbl_80118554:
	.incbin "baserom.dol", 0x115554, 0x8
.global lbl_8011855C
lbl_8011855C:
	.incbin "baserom.dol", 0x11555C, 0x8
.global lbl_80118564
lbl_80118564:
	.incbin "baserom.dol", 0x115564, 0x4
.global lbl_80118568
lbl_80118568:
	.incbin "baserom.dol", 0x115568, 0x4
.global lbl_8011856C
lbl_8011856C:
	.incbin "baserom.dol", 0x11556C, 0x4
.global lbl_80118570
lbl_80118570:
	.incbin "baserom.dol", 0x115570, 0x4
.global lbl_80118574
lbl_80118574:
	.incbin "baserom.dol", 0x115574, 0x4
.global lbl_80118578
lbl_80118578:
	.incbin "baserom.dol", 0x115578, 0x4
.global lbl_8011857C
lbl_8011857C:
	.incbin "baserom.dol", 0x11557C, 0x4
.global lbl_80118580
lbl_80118580:
	.incbin "baserom.dol", 0x115580, 0x4
.global lbl_80118584
lbl_80118584:
	.incbin "baserom.dol", 0x115584, 0x4
.global lbl_80118588
lbl_80118588:
	.incbin "baserom.dol", 0x115588, 0x4
.global lbl_8011858C
lbl_8011858C:
	.incbin "baserom.dol", 0x11558C, 0x4
.global lbl_80118590
lbl_80118590:
	.incbin "baserom.dol", 0x115590, 0x4
.global lbl_80118594
lbl_80118594:
	.incbin "baserom.dol", 0x115594, 0x4
.global lbl_80118598
lbl_80118598:
	.incbin "baserom.dol", 0x115598, 0x4
.global lbl_8011859C
lbl_8011859C:
	.incbin "baserom.dol", 0x11559C, 0x4
.global lbl_801185A0
lbl_801185A0:
	.incbin "baserom.dol", 0x1155A0, 0x4
.global lbl_801185A4
lbl_801185A4:
	.incbin "baserom.dol", 0x1155A4, 0x4
.global lbl_801185A8
lbl_801185A8:
	.incbin "baserom.dol", 0x1155A8, 0x4
.global lbl_801185AC
lbl_801185AC:
	.incbin "baserom.dol", 0x1155AC, 0x4
.global lbl_801185B0
lbl_801185B0:
	.incbin "baserom.dol", 0x1155B0, 0x4
.global lbl_801185B4
lbl_801185B4:
	.incbin "baserom.dol", 0x1155B4, 0x4
.global lbl_801185B8
lbl_801185B8:
	.incbin "baserom.dol", 0x1155B8, 0x4
.global lbl_801185BC
lbl_801185BC:
	.incbin "baserom.dol", 0x1155BC, 0x4
.global lbl_801185C0
lbl_801185C0:
	.incbin "baserom.dol", 0x1155C0, 0x4
.global lbl_801185C4
lbl_801185C4:
	.incbin "baserom.dol", 0x1155C4, 0x4
.global lbl_801185C8
lbl_801185C8:
	.incbin "baserom.dol", 0x1155C8, 0x8
.global lbl_801185D0
lbl_801185D0:
	.incbin "baserom.dol", 0x1155D0, 0x4
.global lbl_801185D4
lbl_801185D4:
	.incbin "baserom.dol", 0x1155D4, 0x4
.global lbl_801185D8
lbl_801185D8:
	.incbin "baserom.dol", 0x1155D8, 0x4
.global lbl_801185DC
lbl_801185DC:
	.incbin "baserom.dol", 0x1155DC, 0x4
.global lbl_801185E0
lbl_801185E0:
	.incbin "baserom.dol", 0x1155E0, 0x4
.global lbl_801185E4
lbl_801185E4:
	.incbin "baserom.dol", 0x1155E4, 0x4
.global lbl_801185E8
lbl_801185E8:
	.incbin "baserom.dol", 0x1155E8, 0x4
.global lbl_801185EC
lbl_801185EC:
	.incbin "baserom.dol", 0x1155EC, 0x4
.global lbl_801185F0
lbl_801185F0:
	.incbin "baserom.dol", 0x1155F0, 0x4
.global lbl_801185F4
lbl_801185F4:
	.incbin "baserom.dol", 0x1155F4, 0x4
.global lbl_801185F8
lbl_801185F8:
	.incbin "baserom.dol", 0x1155F8, 0x4
.global lbl_801185FC
lbl_801185FC:
	.incbin "baserom.dol", 0x1155FC, 0x4
.global lbl_80118600
lbl_80118600:
	.incbin "baserom.dol", 0x115600, 0x4
.global lbl_80118604
lbl_80118604:
	.incbin "baserom.dol", 0x115604, 0x4
.global lbl_80118608
lbl_80118608:
	.incbin "baserom.dol", 0x115608, 0x4
.global lbl_8011860C
lbl_8011860C:
	.incbin "baserom.dol", 0x11560C, 0x4
.global lbl_80118610
lbl_80118610:
	.incbin "baserom.dol", 0x115610, 0x4
.global lbl_80118614
lbl_80118614:
	.incbin "baserom.dol", 0x115614, 0x4
.global lbl_80118618
lbl_80118618:
	.incbin "baserom.dol", 0x115618, 0x8
.global lbl_80118620
lbl_80118620:
	.incbin "baserom.dol", 0x115620, 0x4
.global lbl_80118624
lbl_80118624:
	.incbin "baserom.dol", 0x115624, 0x4
.global lbl_80118628
lbl_80118628:
	.incbin "baserom.dol", 0x115628, 0x4
.global lbl_8011862C
lbl_8011862C:
	.incbin "baserom.dol", 0x11562C, 0x4
.global lbl_80118630
lbl_80118630:
	.incbin "baserom.dol", 0x115630, 0x4
.global lbl_80118634
lbl_80118634:
	.incbin "baserom.dol", 0x115634, 0x4
.global lbl_80118638
lbl_80118638:
	.incbin "baserom.dol", 0x115638, 0x4
.global lbl_8011863C
lbl_8011863C:
	.incbin "baserom.dol", 0x11563C, 0x4
.global lbl_80118640
lbl_80118640:
	.incbin "baserom.dol", 0x115640, 0x4
.global lbl_80118644
lbl_80118644:
	.incbin "baserom.dol", 0x115644, 0x4
.global lbl_80118648
lbl_80118648:
	.incbin "baserom.dol", 0x115648, 0x4
.global lbl_8011864C
lbl_8011864C:
	.incbin "baserom.dol", 0x11564C, 0x4
.global lbl_80118650
lbl_80118650:
	.incbin "baserom.dol", 0x115650, 0x8
.global lbl_80118658
lbl_80118658:
	.incbin "baserom.dol", 0x115658, 0x8
.global lbl_80118660
lbl_80118660:
	.incbin "baserom.dol", 0x115660, 0x4
.global lbl_80118664
lbl_80118664:
	.incbin "baserom.dol", 0x115664, 0x4
.global lbl_80118668
lbl_80118668:
	.incbin "baserom.dol", 0x115668, 0x4
.global lbl_8011866C
lbl_8011866C:
	.incbin "baserom.dol", 0x11566C, 0x4
.global lbl_80118670
lbl_80118670:
	.incbin "baserom.dol", 0x115670, 0x4
.global lbl_80118674
lbl_80118674:
	.incbin "baserom.dol", 0x115674, 0x4
.global lbl_80118678
lbl_80118678:
	.incbin "baserom.dol", 0x115678, 0x4
.global lbl_8011867C
lbl_8011867C:
	.incbin "baserom.dol", 0x11567C, 0x4
.global lbl_80118680
lbl_80118680:
	.incbin "baserom.dol", 0x115680, 0x4
.global lbl_80118684
lbl_80118684:
	.incbin "baserom.dol", 0x115684, 0x4
.global lbl_80118688
lbl_80118688:
	.incbin "baserom.dol", 0x115688, 0x4
.global lbl_8011868C
lbl_8011868C:
	.incbin "baserom.dol", 0x11568C, 0x8
.global lbl_80118694
lbl_80118694:
	.incbin "baserom.dol", 0x115694, 0x4
.global lbl_80118698
lbl_80118698:
	.incbin "baserom.dol", 0x115698, 0x4
.global lbl_8011869C
lbl_8011869C:
	.incbin "baserom.dol", 0x11569C, 0x4
.global lbl_801186A0
lbl_801186A0:
	.incbin "baserom.dol", 0x1156A0, 0xC
.global lbl_801186AC
lbl_801186AC:
	.incbin "baserom.dol", 0x1156AC, 0x4
.global lbl_801186B0
lbl_801186B0:
	.incbin "baserom.dol", 0x1156B0, 0x4
.global lbl_801186B4
lbl_801186B4:
	.incbin "baserom.dol", 0x1156B4, 0x4
.global lbl_801186B8
lbl_801186B8:
	.incbin "baserom.dol", 0x1156B8, 0x4
.global lbl_801186BC
lbl_801186BC:
	.incbin "baserom.dol", 0x1156BC, 0x4
.global lbl_801186C0
lbl_801186C0:
	.incbin "baserom.dol", 0x1156C0, 0xC
.global lbl_801186CC
lbl_801186CC:
	.incbin "baserom.dol", 0x1156CC, 0x4
.global lbl_801186D0
lbl_801186D0:
	.incbin "baserom.dol", 0x1156D0, 0x4
.global lbl_801186D4
lbl_801186D4:
	.incbin "baserom.dol", 0x1156D4, 0x4
.global lbl_801186D8
lbl_801186D8:
	.incbin "baserom.dol", 0x1156D8, 0x4
.global lbl_801186DC
lbl_801186DC:
	.incbin "baserom.dol", 0x1156DC, 0x4
.global lbl_801186E0
lbl_801186E0:
	.incbin "baserom.dol", 0x1156E0, 0x4
.global lbl_801186E4
lbl_801186E4:
	.incbin "baserom.dol", 0x1156E4, 0x8
.global lbl_801186EC
lbl_801186EC:
	.incbin "baserom.dol", 0x1156EC, 0x4
.global lbl_801186F0
lbl_801186F0:
	.incbin "baserom.dol", 0x1156F0, 0x8
.global lbl_801186F8
lbl_801186F8:
	.incbin "baserom.dol", 0x1156F8, 0x4
.global lbl_801186FC
lbl_801186FC:
	.incbin "baserom.dol", 0x1156FC, 0x4
.global lbl_80118700
lbl_80118700:
	.incbin "baserom.dol", 0x115700, 0x4
.global lbl_80118704
lbl_80118704:
	.incbin "baserom.dol", 0x115704, 0x4
.global lbl_80118708
lbl_80118708:
	.incbin "baserom.dol", 0x115708, 0x4
.global lbl_8011870C
lbl_8011870C:
	.incbin "baserom.dol", 0x11570C, 0x8
.global lbl_80118714
lbl_80118714:
	.incbin "baserom.dol", 0x115714, 0x4
.global lbl_80118718
lbl_80118718:
	.incbin "baserom.dol", 0x115718, 0x4
.global lbl_8011871C
lbl_8011871C:
	.incbin "baserom.dol", 0x11571C, 0x4
.global lbl_80118720
lbl_80118720:
	.incbin "baserom.dol", 0x115720, 0x4
.global lbl_80118724
lbl_80118724:
	.incbin "baserom.dol", 0x115724, 0x4
.global lbl_80118728
lbl_80118728:
	.incbin "baserom.dol", 0x115728, 0x8
.global lbl_80118730
lbl_80118730:
	.incbin "baserom.dol", 0x115730, 0x4
.global lbl_80118734
lbl_80118734:
	.incbin "baserom.dol", 0x115734, 0x4
.global lbl_80118738
lbl_80118738:
	.incbin "baserom.dol", 0x115738, 0x4
.global lbl_8011873C
lbl_8011873C:
	.incbin "baserom.dol", 0x11573C, 0x8
.global lbl_80118744
lbl_80118744:
	.incbin "baserom.dol", 0x115744, 0x4
.global lbl_80118748
lbl_80118748:
	.incbin "baserom.dol", 0x115748, 0x4
.global lbl_8011874C
lbl_8011874C:
	.incbin "baserom.dol", 0x11574C, 0x4
.global lbl_80118750
lbl_80118750:
	.incbin "baserom.dol", 0x115750, 0x4
.global lbl_80118754
lbl_80118754:
	.incbin "baserom.dol", 0x115754, 0x4
.global lbl_80118758
lbl_80118758:
	.incbin "baserom.dol", 0x115758, 0x4
.global lbl_8011875C
lbl_8011875C:
	.incbin "baserom.dol", 0x11575C, 0x4
.global lbl_80118760
lbl_80118760:
	.incbin "baserom.dol", 0x115760, 0x4
.global lbl_80118764
lbl_80118764:
	.incbin "baserom.dol", 0x115764, 0x4
.global lbl_80118768
lbl_80118768:
	.incbin "baserom.dol", 0x115768, 0x4
.global lbl_8011876C
lbl_8011876C:
	.incbin "baserom.dol", 0x11576C, 0x4
.global lbl_80118770
lbl_80118770:
	.incbin "baserom.dol", 0x115770, 0x4
.global lbl_80118774
lbl_80118774:
	.incbin "baserom.dol", 0x115774, 0x4
.global lbl_80118778
lbl_80118778:
	.incbin "baserom.dol", 0x115778, 0x4
.global lbl_8011877C
lbl_8011877C:
	.incbin "baserom.dol", 0x11577C, 0x4
.global lbl_80118780
lbl_80118780:
	.incbin "baserom.dol", 0x115780, 0x4
.global lbl_80118784
lbl_80118784:
	.incbin "baserom.dol", 0x115784, 0x4
.global lbl_80118788
lbl_80118788:
	.incbin "baserom.dol", 0x115788, 0x4
.global lbl_8011878C
lbl_8011878C:
	.incbin "baserom.dol", 0x11578C, 0xC
.global lbl_80118798
lbl_80118798:
	.incbin "baserom.dol", 0x115798, 0x4
.global lbl_8011879C
lbl_8011879C:
	.incbin "baserom.dol", 0x11579C, 0x4
.global lbl_801187A0
lbl_801187A0:
	.incbin "baserom.dol", 0x1157A0, 0x4
.global lbl_801187A4
lbl_801187A4:
	.incbin "baserom.dol", 0x1157A4, 0x4
.global lbl_801187A8
lbl_801187A8:
	.incbin "baserom.dol", 0x1157A8, 0x4
.global lbl_801187AC
lbl_801187AC:
	.incbin "baserom.dol", 0x1157AC, 0x4
.global lbl_801187B0
lbl_801187B0:
	.incbin "baserom.dol", 0x1157B0, 0x4
.global lbl_801187B4
lbl_801187B4:
	.incbin "baserom.dol", 0x1157B4, 0x4
.global lbl_801187B8
lbl_801187B8:
	.incbin "baserom.dol", 0x1157B8, 0x4
.global lbl_801187BC
lbl_801187BC:
	.incbin "baserom.dol", 0x1157BC, 0x4
.global lbl_801187C0
lbl_801187C0:
	.incbin "baserom.dol", 0x1157C0, 0x4
.global lbl_801187C4
lbl_801187C4:
	.incbin "baserom.dol", 0x1157C4, 0x4
.global lbl_801187C8
lbl_801187C8:
	.incbin "baserom.dol", 0x1157C8, 0x4
.global lbl_801187CC
lbl_801187CC:
	.incbin "baserom.dol", 0x1157CC, 0x4
.global lbl_801187D0
lbl_801187D0:
	.incbin "baserom.dol", 0x1157D0, 0x8
.global lbl_801187D8
lbl_801187D8:
	.incbin "baserom.dol", 0x1157D8, 0x4
.global lbl_801187DC
lbl_801187DC:
	.incbin "baserom.dol", 0x1157DC, 0x4
.global lbl_801187E0
lbl_801187E0:
	.incbin "baserom.dol", 0x1157E0, 0x4
.global lbl_801187E4
lbl_801187E4:
	.incbin "baserom.dol", 0x1157E4, 0x4
.global lbl_801187E8
lbl_801187E8:
	.incbin "baserom.dol", 0x1157E8, 0x4
.global lbl_801187EC
lbl_801187EC:
	.incbin "baserom.dol", 0x1157EC, 0x4
.global lbl_801187F0
lbl_801187F0:
	.incbin "baserom.dol", 0x1157F0, 0x4
.global lbl_801187F4
lbl_801187F4:
	.incbin "baserom.dol", 0x1157F4, 0x4
.global lbl_801187F8
lbl_801187F8:
	.incbin "baserom.dol", 0x1157F8, 0x4
.global lbl_801187FC
lbl_801187FC:
	.incbin "baserom.dol", 0x1157FC, 0x4
.global lbl_80118800
lbl_80118800:
	.incbin "baserom.dol", 0x115800, 0x4
.global lbl_80118804
lbl_80118804:
	.incbin "baserom.dol", 0x115804, 0x4
.global lbl_80118808
lbl_80118808:
	.incbin "baserom.dol", 0x115808, 0x4
.global lbl_8011880C
lbl_8011880C:
	.incbin "baserom.dol", 0x11580C, 0x4
.global lbl_80118810
lbl_80118810:
	.incbin "baserom.dol", 0x115810, 0x4
.global lbl_80118814
lbl_80118814:
	.incbin "baserom.dol", 0x115814, 0x4
.global lbl_80118818
lbl_80118818:
	.incbin "baserom.dol", 0x115818, 0x4
.global lbl_8011881C
lbl_8011881C:
	.incbin "baserom.dol", 0x11581C, 0x4
.global lbl_80118820
lbl_80118820:
	.incbin "baserom.dol", 0x115820, 0x4
.global lbl_80118824
lbl_80118824:
	.incbin "baserom.dol", 0x115824, 0x4
.global lbl_80118828
lbl_80118828:
	.incbin "baserom.dol", 0x115828, 0x10
.global lbl_80118838
lbl_80118838:
	.incbin "baserom.dol", 0x115838, 0x4
.global lbl_8011883C
lbl_8011883C:
	.incbin "baserom.dol", 0x11583C, 0x8
.global lbl_80118844
lbl_80118844:
	.incbin "baserom.dol", 0x115844, 0x4
.global lbl_80118848
lbl_80118848:
	.incbin "baserom.dol", 0x115848, 0x10
.global lbl_80118858
lbl_80118858:
	.incbin "baserom.dol", 0x115858, 0x8
.global lbl_80118860
lbl_80118860:
	.incbin "baserom.dol", 0x115860, 0x4
.global lbl_80118864
lbl_80118864:
	.incbin "baserom.dol", 0x115864, 0x4
.global lbl_80118868
lbl_80118868:
	.incbin "baserom.dol", 0x115868, 0x8
.global lbl_80118870
lbl_80118870:
	.incbin "baserom.dol", 0x115870, 0x4
.global lbl_80118874
lbl_80118874:
	.incbin "baserom.dol", 0x115874, 0x14
.global lbl_80118888
lbl_80118888:
	.incbin "baserom.dol", 0x115888, 0x8
.global lbl_80118890
lbl_80118890:
	.incbin "baserom.dol", 0x115890, 0x8
.global lbl_80118898
lbl_80118898:
	.incbin "baserom.dol", 0x115898, 0x4
.global lbl_8011889C
lbl_8011889C:
	.incbin "baserom.dol", 0x11589C, 0x4
.global lbl_801188A0
lbl_801188A0:
	.incbin "baserom.dol", 0x1158A0, 0x4
.global lbl_801188A4
lbl_801188A4:
	.incbin "baserom.dol", 0x1158A4, 0x4
.global lbl_801188A8
lbl_801188A8:
	.incbin "baserom.dol", 0x1158A8, 0x4
.global lbl_801188AC
lbl_801188AC:
	.incbin "baserom.dol", 0x1158AC, 0x4
.global lbl_801188B0
lbl_801188B0:
	.incbin "baserom.dol", 0x1158B0, 0x4
.global lbl_801188B4
lbl_801188B4:
	.incbin "baserom.dol", 0x1158B4, 0x4
.global lbl_801188B8
lbl_801188B8:
	.incbin "baserom.dol", 0x1158B8, 0x4
.global lbl_801188BC
lbl_801188BC:
	.incbin "baserom.dol", 0x1158BC, 0x4
.global lbl_801188C0
lbl_801188C0:
	.incbin "baserom.dol", 0x1158C0, 0x4
.global lbl_801188C4
lbl_801188C4:
	.incbin "baserom.dol", 0x1158C4, 0x4
.global lbl_801188C8
lbl_801188C8:
	.incbin "baserom.dol", 0x1158C8, 0x8
.global lbl_801188D0
lbl_801188D0:
	.incbin "baserom.dol", 0x1158D0, 0x8
.global lbl_801188D8
lbl_801188D8:
	.incbin "baserom.dol", 0x1158D8, 0x4
.global lbl_801188DC
lbl_801188DC:
	.incbin "baserom.dol", 0x1158DC, 0x4
.global lbl_801188E0
lbl_801188E0:
	.incbin "baserom.dol", 0x1158E0, 0x4
.global lbl_801188E4
lbl_801188E4:
	.incbin "baserom.dol", 0x1158E4, 0x4
.global lbl_801188E8
lbl_801188E8:
	.incbin "baserom.dol", 0x1158E8, 0x4
.global lbl_801188EC
lbl_801188EC:
	.incbin "baserom.dol", 0x1158EC, 0x4
.global lbl_801188F0
lbl_801188F0:
	.incbin "baserom.dol", 0x1158F0, 0x4
.global lbl_801188F4
lbl_801188F4:
	.incbin "baserom.dol", 0x1158F4, 0x4
.global lbl_801188F8
lbl_801188F8:
	.incbin "baserom.dol", 0x1158F8, 0x4
.global lbl_801188FC
lbl_801188FC:
	.incbin "baserom.dol", 0x1158FC, 0x4
.global lbl_80118900
lbl_80118900:
	.incbin "baserom.dol", 0x115900, 0x4
.global lbl_80118904
lbl_80118904:
	.incbin "baserom.dol", 0x115904, 0x4
.global lbl_80118908
lbl_80118908:
	.incbin "baserom.dol", 0x115908, 0x4
.global lbl_8011890C
lbl_8011890C:
	.incbin "baserom.dol", 0x11590C, 0x4
.global lbl_80118910
lbl_80118910:
	.incbin "baserom.dol", 0x115910, 0x4
.global lbl_80118914
lbl_80118914:
	.incbin "baserom.dol", 0x115914, 0x4
.global lbl_80118918
lbl_80118918:
	.incbin "baserom.dol", 0x115918, 0x4
.global lbl_8011891C
lbl_8011891C:
	.incbin "baserom.dol", 0x11591C, 0x4
.global lbl_80118920
lbl_80118920:
	.incbin "baserom.dol", 0x115920, 0x8
.global lbl_80118928
lbl_80118928:
	.incbin "baserom.dol", 0x115928, 0x8
.global lbl_80118930
lbl_80118930:
	.incbin "baserom.dol", 0x115930, 0x4
.global lbl_80118934
lbl_80118934:
	.incbin "baserom.dol", 0x115934, 0x4
.global lbl_80118938
lbl_80118938:
	.incbin "baserom.dol", 0x115938, 0x4
.global lbl_8011893C
lbl_8011893C:
	.incbin "baserom.dol", 0x11593C, 0x4
.global lbl_80118940
lbl_80118940:
	.incbin "baserom.dol", 0x115940, 0x4
.global lbl_80118944
lbl_80118944:
	.incbin "baserom.dol", 0x115944, 0x4
.global lbl_80118948
lbl_80118948:
	.incbin "baserom.dol", 0x115948, 0x8
.global lbl_80118950
lbl_80118950:
	.incbin "baserom.dol", 0x115950, 0x4
.global lbl_80118954
lbl_80118954:
	.incbin "baserom.dol", 0x115954, 0x4
.global lbl_80118958
lbl_80118958:
	.incbin "baserom.dol", 0x115958, 0x4
.global lbl_8011895C
lbl_8011895C:
	.incbin "baserom.dol", 0x11595C, 0x4
.global lbl_80118960
lbl_80118960:
	.incbin "baserom.dol", 0x115960, 0x4
.global lbl_80118964
lbl_80118964:
	.incbin "baserom.dol", 0x115964, 0x4
.global lbl_80118968
lbl_80118968:
	.incbin "baserom.dol", 0x115968, 0x4
.global lbl_8011896C
lbl_8011896C:
	.incbin "baserom.dol", 0x11596C, 0x4
.global lbl_80118970
lbl_80118970:
	.incbin "baserom.dol", 0x115970, 0x4
.global lbl_80118974
lbl_80118974:
	.incbin "baserom.dol", 0x115974, 0x4
.global lbl_80118978
lbl_80118978:
	.incbin "baserom.dol", 0x115978, 0x4
.global lbl_8011897C
lbl_8011897C:
	.incbin "baserom.dol", 0x11597C, 0x4
.global lbl_80118980
lbl_80118980:
	.incbin "baserom.dol", 0x115980, 0x4
.global lbl_80118984
lbl_80118984:
	.incbin "baserom.dol", 0x115984, 0x4
.global lbl_80118988
lbl_80118988:
	.incbin "baserom.dol", 0x115988, 0x4
.global lbl_8011898C
lbl_8011898C:
	.incbin "baserom.dol", 0x11598C, 0x4
.global lbl_80118990
lbl_80118990:
	.incbin "baserom.dol", 0x115990, 0x4
.global lbl_80118994
lbl_80118994:
	.incbin "baserom.dol", 0x115994, 0x4
.global lbl_80118998
lbl_80118998:
	.incbin "baserom.dol", 0x115998, 0x4
.global lbl_8011899C
lbl_8011899C:
	.incbin "baserom.dol", 0x11599C, 0x4
.global lbl_801189A0
lbl_801189A0:
	.incbin "baserom.dol", 0x1159A0, 0x4
.global lbl_801189A4
lbl_801189A4:
	.incbin "baserom.dol", 0x1159A4, 0x4
.global lbl_801189A8
lbl_801189A8:
	.incbin "baserom.dol", 0x1159A8, 0x4
.global lbl_801189AC
lbl_801189AC:
	.incbin "baserom.dol", 0x1159AC, 0x4
.global lbl_801189B0
lbl_801189B0:
	.incbin "baserom.dol", 0x1159B0, 0x4
.global lbl_801189B4
lbl_801189B4:
	.incbin "baserom.dol", 0x1159B4, 0x4
.global lbl_801189B8
lbl_801189B8:
	.incbin "baserom.dol", 0x1159B8, 0x4
.global lbl_801189BC
lbl_801189BC:
	.incbin "baserom.dol", 0x1159BC, 0x4
.global lbl_801189C0
lbl_801189C0:
	.incbin "baserom.dol", 0x1159C0, 0x4
.global lbl_801189C4
lbl_801189C4:
	.incbin "baserom.dol", 0x1159C4, 0x4
.global lbl_801189C8
lbl_801189C8:
	.incbin "baserom.dol", 0x1159C8, 0x4
.global lbl_801189CC
lbl_801189CC:
	.incbin "baserom.dol", 0x1159CC, 0x4
.global lbl_801189D0
lbl_801189D0:
	.incbin "baserom.dol", 0x1159D0, 0x4
.global lbl_801189D4
lbl_801189D4:
	.incbin "baserom.dol", 0x1159D4, 0x4
.global lbl_801189D8
lbl_801189D8:
	.incbin "baserom.dol", 0x1159D8, 0x4
.global lbl_801189DC
lbl_801189DC:
	.incbin "baserom.dol", 0x1159DC, 0x4
.global lbl_801189E0
lbl_801189E0:
	.incbin "baserom.dol", 0x1159E0, 0x4
.global lbl_801189E4
lbl_801189E4:
	.incbin "baserom.dol", 0x1159E4, 0x4
.global lbl_801189E8
lbl_801189E8:
	.incbin "baserom.dol", 0x1159E8, 0x4
.global lbl_801189EC
lbl_801189EC:
	.incbin "baserom.dol", 0x1159EC, 0x4
.global lbl_801189F0
lbl_801189F0:
	.incbin "baserom.dol", 0x1159F0, 0x8
.global lbl_801189F8
lbl_801189F8:
	.incbin "baserom.dol", 0x1159F8, 0x8
.global lbl_80118A00
lbl_80118A00:
	.incbin "baserom.dol", 0x115A00, 0x4
.global lbl_80118A04
lbl_80118A04:
	.incbin "baserom.dol", 0x115A04, 0x4
.global lbl_80118A08
lbl_80118A08:
	.incbin "baserom.dol", 0x115A08, 0x4
.global lbl_80118A0C
lbl_80118A0C:
	.incbin "baserom.dol", 0x115A0C, 0x4
.global lbl_80118A10
lbl_80118A10:
	.incbin "baserom.dol", 0x115A10, 0x4
.global lbl_80118A14
lbl_80118A14:
	.incbin "baserom.dol", 0x115A14, 0x4
.global lbl_80118A18
lbl_80118A18:
	.incbin "baserom.dol", 0x115A18, 0x4
.global lbl_80118A1C
lbl_80118A1C:
	.incbin "baserom.dol", 0x115A1C, 0x4
.global lbl_80118A20
lbl_80118A20:
	.incbin "baserom.dol", 0x115A20, 0x4
.global lbl_80118A24
lbl_80118A24:
	.incbin "baserom.dol", 0x115A24, 0x4
.global lbl_80118A28
lbl_80118A28:
	.incbin "baserom.dol", 0x115A28, 0x8
.global lbl_80118A30
lbl_80118A30:
	.incbin "baserom.dol", 0x115A30, 0x8
.global lbl_80118A38
lbl_80118A38:
	.incbin "baserom.dol", 0x115A38, 0x4
.global lbl_80118A3C
lbl_80118A3C:
	.incbin "baserom.dol", 0x115A3C, 0x4
.global lbl_80118A40
lbl_80118A40:
	.incbin "baserom.dol", 0x115A40, 0x4
.global lbl_80118A44
lbl_80118A44:
	.incbin "baserom.dol", 0x115A44, 0x4
.global lbl_80118A48
lbl_80118A48:
	.incbin "baserom.dol", 0x115A48, 0x4
.global lbl_80118A4C
lbl_80118A4C:
	.incbin "baserom.dol", 0x115A4C, 0x4
.global lbl_80118A50
lbl_80118A50:
	.incbin "baserom.dol", 0x115A50, 0x4
.global lbl_80118A54
lbl_80118A54:
	.incbin "baserom.dol", 0x115A54, 0x4
.global lbl_80118A58
lbl_80118A58:
	.incbin "baserom.dol", 0x115A58, 0x4
.global lbl_80118A5C
lbl_80118A5C:
	.incbin "baserom.dol", 0x115A5C, 0x4
.global lbl_80118A60
lbl_80118A60:
	.incbin "baserom.dol", 0x115A60, 0x4
.global lbl_80118A64
lbl_80118A64:
	.incbin "baserom.dol", 0x115A64, 0x4
.global lbl_80118A68
lbl_80118A68:
	.incbin "baserom.dol", 0x115A68, 0x4
.global lbl_80118A6C
lbl_80118A6C:
	.incbin "baserom.dol", 0x115A6C, 0x4
.global lbl_80118A70
lbl_80118A70:
	.incbin "baserom.dol", 0x115A70, 0x4
.global lbl_80118A74
lbl_80118A74:
	.incbin "baserom.dol", 0x115A74, 0x4
.global lbl_80118A78
lbl_80118A78:
	.incbin "baserom.dol", 0x115A78, 0x4
.global lbl_80118A7C
lbl_80118A7C:
	.incbin "baserom.dol", 0x115A7C, 0x4
.global lbl_80118A80
lbl_80118A80:
	.incbin "baserom.dol", 0x115A80, 0x4
.global lbl_80118A84
lbl_80118A84:
	.incbin "baserom.dol", 0x115A84, 0x4
.global lbl_80118A88
lbl_80118A88:
	.incbin "baserom.dol", 0x115A88, 0x4
.global lbl_80118A8C
lbl_80118A8C:
	.incbin "baserom.dol", 0x115A8C, 0x4
.global lbl_80118A90
lbl_80118A90:
	.incbin "baserom.dol", 0x115A90, 0x4
.global lbl_80118A94
lbl_80118A94:
	.incbin "baserom.dol", 0x115A94, 0x4
.global lbl_80118A98
lbl_80118A98:
	.incbin "baserom.dol", 0x115A98, 0x4
.global lbl_80118A9C
lbl_80118A9C:
	.incbin "baserom.dol", 0x115A9C, 0x4
.global lbl_80118AA0
lbl_80118AA0:
	.incbin "baserom.dol", 0x115AA0, 0x4
.global lbl_80118AA4
lbl_80118AA4:
	.incbin "baserom.dol", 0x115AA4, 0x4
.global lbl_80118AA8
lbl_80118AA8:
	.incbin "baserom.dol", 0x115AA8, 0x4
.global lbl_80118AAC
lbl_80118AAC:
	.incbin "baserom.dol", 0x115AAC, 0x4
.global lbl_80118AB0
lbl_80118AB0:
	.incbin "baserom.dol", 0x115AB0, 0x4
.global lbl_80118AB4
lbl_80118AB4:
	.incbin "baserom.dol", 0x115AB4, 0x4
.global lbl_80118AB8
lbl_80118AB8:
	.incbin "baserom.dol", 0x115AB8, 0x4
.global lbl_80118ABC
lbl_80118ABC:
	.incbin "baserom.dol", 0x115ABC, 0x4
.global lbl_80118AC0
lbl_80118AC0:
	.incbin "baserom.dol", 0x115AC0, 0x4
.global lbl_80118AC4
lbl_80118AC4:
	.incbin "baserom.dol", 0x115AC4, 0x14
.global lbl_80118AD8
lbl_80118AD8:
	.incbin "baserom.dol", 0x115AD8, 0x4
.global lbl_80118ADC
lbl_80118ADC:
	.incbin "baserom.dol", 0x115ADC, 0x4
.global lbl_80118AE0
lbl_80118AE0:
	.incbin "baserom.dol", 0x115AE0, 0x4
.global lbl_80118AE4
lbl_80118AE4:
	.incbin "baserom.dol", 0x115AE4, 0x4
.global lbl_80118AE8
lbl_80118AE8:
	.incbin "baserom.dol", 0x115AE8, 0x4
.global lbl_80118AEC
lbl_80118AEC:
	.incbin "baserom.dol", 0x115AEC, 0x4
.global lbl_80118AF0
lbl_80118AF0:
	.incbin "baserom.dol", 0x115AF0, 0x4
.global lbl_80118AF4
lbl_80118AF4:
	.incbin "baserom.dol", 0x115AF4, 0x4
.global lbl_80118AF8
lbl_80118AF8:
	.incbin "baserom.dol", 0x115AF8, 0x4
.global lbl_80118AFC
lbl_80118AFC:
	.incbin "baserom.dol", 0x115AFC, 0x4
.global lbl_80118B00
lbl_80118B00:
	.incbin "baserom.dol", 0x115B00, 0x4
.global lbl_80118B04
lbl_80118B04:
	.incbin "baserom.dol", 0x115B04, 0x4
.global lbl_80118B08
lbl_80118B08:
	.incbin "baserom.dol", 0x115B08, 0x4
.global lbl_80118B0C
lbl_80118B0C:
	.incbin "baserom.dol", 0x115B0C, 0x4
.global lbl_80118B10
lbl_80118B10:
	.incbin "baserom.dol", 0x115B10, 0x4
.global lbl_80118B14
lbl_80118B14:
	.incbin "baserom.dol", 0x115B14, 0x4
.global lbl_80118B18
lbl_80118B18:
	.incbin "baserom.dol", 0x115B18, 0x4
.global lbl_80118B1C
lbl_80118B1C:
	.incbin "baserom.dol", 0x115B1C, 0x4
.global lbl_80118B20
lbl_80118B20:
	.incbin "baserom.dol", 0x115B20, 0x4
.global lbl_80118B24
lbl_80118B24:
	.incbin "baserom.dol", 0x115B24, 0x4
.global lbl_80118B28
lbl_80118B28:
	.incbin "baserom.dol", 0x115B28, 0x4
.global lbl_80118B2C
lbl_80118B2C:
	.incbin "baserom.dol", 0x115B2C, 0x4
.global lbl_80118B30
lbl_80118B30:
	.incbin "baserom.dol", 0x115B30, 0x4
.global lbl_80118B34
lbl_80118B34:
	.incbin "baserom.dol", 0x115B34, 0x4
.global lbl_80118B38
lbl_80118B38:
	.incbin "baserom.dol", 0x115B38, 0x8
.global lbl_80118B40
lbl_80118B40:
	.incbin "baserom.dol", 0x115B40, 0x8
.global lbl_80118B48
lbl_80118B48:
	.incbin "baserom.dol", 0x115B48, 0x4
.global lbl_80118B4C
lbl_80118B4C:
	.incbin "baserom.dol", 0x115B4C, 0x4
.global lbl_80118B50
lbl_80118B50:
	.incbin "baserom.dol", 0x115B50, 0x4
.global lbl_80118B54
lbl_80118B54:
	.incbin "baserom.dol", 0x115B54, 0x8
.global lbl_80118B5C
lbl_80118B5C:
	.incbin "baserom.dol", 0x115B5C, 0x4
.global lbl_80118B60
lbl_80118B60:
	.incbin "baserom.dol", 0x115B60, 0x4
.global lbl_80118B64
lbl_80118B64:
	.incbin "baserom.dol", 0x115B64, 0x4
.global lbl_80118B68
lbl_80118B68:
	.incbin "baserom.dol", 0x115B68, 0x4
.global lbl_80118B6C
lbl_80118B6C:
	.incbin "baserom.dol", 0x115B6C, 0x4
.global lbl_80118B70
lbl_80118B70:
	.incbin "baserom.dol", 0x115B70, 0x4
.global lbl_80118B74
lbl_80118B74:
	.incbin "baserom.dol", 0x115B74, 0x4
.global lbl_80118B78
lbl_80118B78:
	.incbin "baserom.dol", 0x115B78, 0x4
.global lbl_80118B7C
lbl_80118B7C:
	.incbin "baserom.dol", 0x115B7C, 0x4
.global lbl_80118B80
lbl_80118B80:
	.incbin "baserom.dol", 0x115B80, 0x4
.global lbl_80118B84
lbl_80118B84:
	.incbin "baserom.dol", 0x115B84, 0x4
.global lbl_80118B88
lbl_80118B88:
	.incbin "baserom.dol", 0x115B88, 0x4
.global lbl_80118B8C
lbl_80118B8C:
	.incbin "baserom.dol", 0x115B8C, 0x4
.global lbl_80118B90
lbl_80118B90:
	.incbin "baserom.dol", 0x115B90, 0x4
.global lbl_80118B94
lbl_80118B94:
	.incbin "baserom.dol", 0x115B94, 0x4
.global lbl_80118B98
lbl_80118B98:
	.incbin "baserom.dol", 0x115B98, 0x4
.global lbl_80118B9C
lbl_80118B9C:
	.incbin "baserom.dol", 0x115B9C, 0x4
.global lbl_80118BA0
lbl_80118BA0:
	.incbin "baserom.dol", 0x115BA0, 0x4
.global lbl_80118BA4
lbl_80118BA4:
	.incbin "baserom.dol", 0x115BA4, 0xC
.global lbl_80118BB0
lbl_80118BB0:
	.incbin "baserom.dol", 0x115BB0, 0x8
.global lbl_80118BB8
lbl_80118BB8:
	.incbin "baserom.dol", 0x115BB8, 0x4
.global lbl_80118BBC
lbl_80118BBC:
	.incbin "baserom.dol", 0x115BBC, 0x4
.global lbl_80118BC0
lbl_80118BC0:
	.incbin "baserom.dol", 0x115BC0, 0x4
.global lbl_80118BC4
lbl_80118BC4:
	.incbin "baserom.dol", 0x115BC4, 0x4
.global lbl_80118BC8
lbl_80118BC8:
	.incbin "baserom.dol", 0x115BC8, 0x4
.global lbl_80118BCC
lbl_80118BCC:
	.incbin "baserom.dol", 0x115BCC, 0x4
.global lbl_80118BD0
lbl_80118BD0:
	.incbin "baserom.dol", 0x115BD0, 0x4
.global lbl_80118BD4
lbl_80118BD4:
	.incbin "baserom.dol", 0x115BD4, 0x4
.global lbl_80118BD8
lbl_80118BD8:
	.incbin "baserom.dol", 0x115BD8, 0x4
.global lbl_80118BDC
lbl_80118BDC:
	.incbin "baserom.dol", 0x115BDC, 0x4
.global lbl_80118BE0
lbl_80118BE0:
	.incbin "baserom.dol", 0x115BE0, 0x8
.global lbl_80118BE8
lbl_80118BE8:
	.incbin "baserom.dol", 0x115BE8, 0x8
.global lbl_80118BF0
lbl_80118BF0:
	.incbin "baserom.dol", 0x115BF0, 0x4
.global lbl_80118BF4
lbl_80118BF4:
	.incbin "baserom.dol", 0x115BF4, 0x4
.global lbl_80118BF8
lbl_80118BF8:
	.incbin "baserom.dol", 0x115BF8, 0x4
.global lbl_80118BFC
lbl_80118BFC:
	.incbin "baserom.dol", 0x115BFC, 0x4
.global lbl_80118C00
lbl_80118C00:
	.incbin "baserom.dol", 0x115C00, 0x4
.global lbl_80118C04
lbl_80118C04:
	.incbin "baserom.dol", 0x115C04, 0x8
.global lbl_80118C0C
lbl_80118C0C:
	.incbin "baserom.dol", 0x115C0C, 0x4
.global lbl_80118C10
lbl_80118C10:
	.incbin "baserom.dol", 0x115C10, 0x8
.global lbl_80118C18
lbl_80118C18:
	.incbin "baserom.dol", 0x115C18, 0xC
.global lbl_80118C24
lbl_80118C24:
	.incbin "baserom.dol", 0x115C24, 0x4
.global lbl_80118C28
lbl_80118C28:
	.incbin "baserom.dol", 0x115C28, 0x4
.global lbl_80118C2C
lbl_80118C2C:
	.incbin "baserom.dol", 0x115C2C, 0x4
.global lbl_80118C30
lbl_80118C30:
	.incbin "baserom.dol", 0x115C30, 0x4
.global lbl_80118C34
lbl_80118C34:
	.incbin "baserom.dol", 0x115C34, 0x4
.global lbl_80118C38
lbl_80118C38:
	.incbin "baserom.dol", 0x115C38, 0x4
.global lbl_80118C3C
lbl_80118C3C:
	.incbin "baserom.dol", 0x115C3C, 0x4
.global lbl_80118C40
lbl_80118C40:
	.incbin "baserom.dol", 0x115C40, 0x4
.global lbl_80118C44
lbl_80118C44:
	.incbin "baserom.dol", 0x115C44, 0x4
.global lbl_80118C48
lbl_80118C48:
	.incbin "baserom.dol", 0x115C48, 0x4
.global lbl_80118C4C
lbl_80118C4C:
	.incbin "baserom.dol", 0x115C4C, 0x4
.global lbl_80118C50
lbl_80118C50:
	.incbin "baserom.dol", 0x115C50, 0x4
.global lbl_80118C54
lbl_80118C54:
	.incbin "baserom.dol", 0x115C54, 0x4
.global lbl_80118C58
lbl_80118C58:
	.incbin "baserom.dol", 0x115C58, 0x4
.global lbl_80118C5C
lbl_80118C5C:
	.incbin "baserom.dol", 0x115C5C, 0x4
.global lbl_80118C60
lbl_80118C60:
	.incbin "baserom.dol", 0x115C60, 0x4
.global lbl_80118C64
lbl_80118C64:
	.incbin "baserom.dol", 0x115C64, 0x4
.global lbl_80118C68
lbl_80118C68:
	.incbin "baserom.dol", 0x115C68, 0x4
.global lbl_80118C6C
lbl_80118C6C:
	.incbin "baserom.dol", 0x115C6C, 0x4
.global lbl_80118C70
lbl_80118C70:
	.incbin "baserom.dol", 0x115C70, 0x8
.global lbl_80118C78
lbl_80118C78:
	.incbin "baserom.dol", 0x115C78, 0x4
.global lbl_80118C7C
lbl_80118C7C:
	.incbin "baserom.dol", 0x115C7C, 0x4
.global lbl_80118C80
lbl_80118C80:
	.incbin "baserom.dol", 0x115C80, 0x4
.global lbl_80118C84
lbl_80118C84:
	.incbin "baserom.dol", 0x115C84, 0x4
.global lbl_80118C88
lbl_80118C88:
	.incbin "baserom.dol", 0x115C88, 0x4
.global lbl_80118C8C
lbl_80118C8C:
	.incbin "baserom.dol", 0x115C8C, 0x4
.global lbl_80118C90
lbl_80118C90:
	.incbin "baserom.dol", 0x115C90, 0x4
.global lbl_80118C94
lbl_80118C94:
	.incbin "baserom.dol", 0x115C94, 0x4
.global lbl_80118C98
lbl_80118C98:
	.incbin "baserom.dol", 0x115C98, 0x4
.global lbl_80118C9C
lbl_80118C9C:
	.incbin "baserom.dol", 0x115C9C, 0x4
.global lbl_80118CA0
lbl_80118CA0:
	.incbin "baserom.dol", 0x115CA0, 0x4
.global lbl_80118CA4
lbl_80118CA4:
	.incbin "baserom.dol", 0x115CA4, 0x4
.global lbl_80118CA8
lbl_80118CA8:
	.incbin "baserom.dol", 0x115CA8, 0x4
.global lbl_80118CAC
lbl_80118CAC:
	.incbin "baserom.dol", 0x115CAC, 0x4
.global lbl_80118CB0
lbl_80118CB0:
	.incbin "baserom.dol", 0x115CB0, 0x4
.global lbl_80118CB4
lbl_80118CB4:
	.incbin "baserom.dol", 0x115CB4, 0x4
.global lbl_80118CB8
lbl_80118CB8:
	.incbin "baserom.dol", 0x115CB8, 0x4
.global lbl_80118CBC
lbl_80118CBC:
	.incbin "baserom.dol", 0x115CBC, 0x4
.global lbl_80118CC0
lbl_80118CC0:
	.incbin "baserom.dol", 0x115CC0, 0x4
.global lbl_80118CC4
lbl_80118CC4:
	.incbin "baserom.dol", 0x115CC4, 0xC
.global lbl_80118CD0
lbl_80118CD0:
	.incbin "baserom.dol", 0x115CD0, 0x4
.global lbl_80118CD4
lbl_80118CD4:
	.incbin "baserom.dol", 0x115CD4, 0x4
.global lbl_80118CD8
lbl_80118CD8:
	.incbin "baserom.dol", 0x115CD8, 0x8
.global lbl_80118CE0
lbl_80118CE0:
	.incbin "baserom.dol", 0x115CE0, 0x8
.global lbl_80118CE8
lbl_80118CE8:
	.incbin "baserom.dol", 0x115CE8, 0x4
.global lbl_80118CEC
lbl_80118CEC:
	.incbin "baserom.dol", 0x115CEC, 0x4
.global lbl_80118CF0
lbl_80118CF0:
	.incbin "baserom.dol", 0x115CF0, 0x4
.global lbl_80118CF4
lbl_80118CF4:
	.incbin "baserom.dol", 0x115CF4, 0x4
.global lbl_80118CF8
lbl_80118CF8:
	.incbin "baserom.dol", 0x115CF8, 0x4
.global lbl_80118CFC
lbl_80118CFC:
	.incbin "baserom.dol", 0x115CFC, 0x4
.global lbl_80118D00
lbl_80118D00:
	.incbin "baserom.dol", 0x115D00, 0x4
.global lbl_80118D04
lbl_80118D04:
	.incbin "baserom.dol", 0x115D04, 0x4
.global lbl_80118D08
lbl_80118D08:
	.incbin "baserom.dol", 0x115D08, 0x4
.global lbl_80118D0C
lbl_80118D0C:
	.incbin "baserom.dol", 0x115D0C, 0x4
.global lbl_80118D10
lbl_80118D10:
	.incbin "baserom.dol", 0x115D10, 0x4
.global lbl_80118D14
lbl_80118D14:
	.incbin "baserom.dol", 0x115D14, 0x4
.global lbl_80118D18
lbl_80118D18:
	.incbin "baserom.dol", 0x115D18, 0x4
.global lbl_80118D1C
lbl_80118D1C:
	.incbin "baserom.dol", 0x115D1C, 0x4
.global lbl_80118D20
lbl_80118D20:
	.incbin "baserom.dol", 0x115D20, 0x4
.global lbl_80118D24
lbl_80118D24:
	.incbin "baserom.dol", 0x115D24, 0x4
.global lbl_80118D28
lbl_80118D28:
	.incbin "baserom.dol", 0x115D28, 0x4
.global lbl_80118D2C
lbl_80118D2C:
	.incbin "baserom.dol", 0x115D2C, 0x4
.global lbl_80118D30
lbl_80118D30:
	.incbin "baserom.dol", 0x115D30, 0x4
.global lbl_80118D34
lbl_80118D34:
	.incbin "baserom.dol", 0x115D34, 0x4
.global lbl_80118D38
lbl_80118D38:
	.incbin "baserom.dol", 0x115D38, 0x4
.global lbl_80118D3C
lbl_80118D3C:
	.incbin "baserom.dol", 0x115D3C, 0x4
.global lbl_80118D40
lbl_80118D40:
	.incbin "baserom.dol", 0x115D40, 0x4
.global lbl_80118D44
lbl_80118D44:
	.incbin "baserom.dol", 0x115D44, 0x4
.global lbl_80118D48
lbl_80118D48:
	.incbin "baserom.dol", 0x115D48, 0x4
.global lbl_80118D4C
lbl_80118D4C:
	.incbin "baserom.dol", 0x115D4C, 0x4
.global lbl_80118D50
lbl_80118D50:
	.incbin "baserom.dol", 0x115D50, 0x4
.global lbl_80118D54
lbl_80118D54:
	.incbin "baserom.dol", 0x115D54, 0x4
.global lbl_80118D58
lbl_80118D58:
	.incbin "baserom.dol", 0x115D58, 0x4
.global lbl_80118D5C
lbl_80118D5C:
	.incbin "baserom.dol", 0x115D5C, 0x4
.global lbl_80118D60
lbl_80118D60:
	.incbin "baserom.dol", 0x115D60, 0x4
.global lbl_80118D64
lbl_80118D64:
	.incbin "baserom.dol", 0x115D64, 0x4
.global lbl_80118D68
lbl_80118D68:
	.incbin "baserom.dol", 0x115D68, 0x4
.global lbl_80118D6C
lbl_80118D6C:
	.incbin "baserom.dol", 0x115D6C, 0x4
.global lbl_80118D70
lbl_80118D70:
	.incbin "baserom.dol", 0x115D70, 0x4
.global lbl_80118D74
lbl_80118D74:
	.incbin "baserom.dol", 0x115D74, 0x4
.global lbl_80118D78
lbl_80118D78:
	.incbin "baserom.dol", 0x115D78, 0x4
.global lbl_80118D7C
lbl_80118D7C:
	.incbin "baserom.dol", 0x115D7C, 0x4
.global lbl_80118D80
lbl_80118D80:
	.incbin "baserom.dol", 0x115D80, 0x4
.global lbl_80118D84
lbl_80118D84:
	.incbin "baserom.dol", 0x115D84, 0x4
.global lbl_80118D88
lbl_80118D88:
	.incbin "baserom.dol", 0x115D88, 0x4
.global lbl_80118D8C
lbl_80118D8C:
	.incbin "baserom.dol", 0x115D8C, 0x4
.global lbl_80118D90
lbl_80118D90:
	.incbin "baserom.dol", 0x115D90, 0x4
.global lbl_80118D94
lbl_80118D94:
	.incbin "baserom.dol", 0x115D94, 0x4
.global lbl_80118D98
lbl_80118D98:
	.incbin "baserom.dol", 0x115D98, 0x4
.global lbl_80118D9C
lbl_80118D9C:
	.incbin "baserom.dol", 0x115D9C, 0x4
.global lbl_80118DA0
lbl_80118DA0:
	.incbin "baserom.dol", 0x115DA0, 0x4
.global lbl_80118DA4
lbl_80118DA4:
	.incbin "baserom.dol", 0x115DA4, 0x4
.global lbl_80118DA8
lbl_80118DA8:
	.incbin "baserom.dol", 0x115DA8, 0xC
.global lbl_80118DB4
lbl_80118DB4:
	.incbin "baserom.dol", 0x115DB4, 0x4
.global lbl_80118DB8
lbl_80118DB8:
	.incbin "baserom.dol", 0x115DB8, 0x4
.global lbl_80118DBC
lbl_80118DBC:
	.incbin "baserom.dol", 0x115DBC, 0x4
.global lbl_80118DC0
lbl_80118DC0:
	.incbin "baserom.dol", 0x115DC0, 0x4
.global lbl_80118DC4
lbl_80118DC4:
	.incbin "baserom.dol", 0x115DC4, 0x4
.global lbl_80118DC8
lbl_80118DC8:
	.incbin "baserom.dol", 0x115DC8, 0x4
.global lbl_80118DCC
lbl_80118DCC:
	.incbin "baserom.dol", 0x115DCC, 0x4
.global lbl_80118DD0
lbl_80118DD0:
	.incbin "baserom.dol", 0x115DD0, 0x8
.global lbl_80118DD8
lbl_80118DD8:
	.incbin "baserom.dol", 0x115DD8, 0x4
.global lbl_80118DDC
lbl_80118DDC:
	.incbin "baserom.dol", 0x115DDC, 0x4
.global lbl_80118DE0
lbl_80118DE0:
	.incbin "baserom.dol", 0x115DE0, 0x4
.global lbl_80118DE4
lbl_80118DE4:
	.incbin "baserom.dol", 0x115DE4, 0x4
.global lbl_80118DE8
lbl_80118DE8:
	.incbin "baserom.dol", 0x115DE8, 0x4
.global lbl_80118DEC
lbl_80118DEC:
	.incbin "baserom.dol", 0x115DEC, 0x4
.global lbl_80118DF0
lbl_80118DF0:
	.incbin "baserom.dol", 0x115DF0, 0x4
.global lbl_80118DF4
lbl_80118DF4:
	.incbin "baserom.dol", 0x115DF4, 0x4
.global lbl_80118DF8
lbl_80118DF8:
	.incbin "baserom.dol", 0x115DF8, 0x4
.global lbl_80118DFC
lbl_80118DFC:
	.incbin "baserom.dol", 0x115DFC, 0x4
.global lbl_80118E00
lbl_80118E00:
	.incbin "baserom.dol", 0x115E00, 0x4
.global lbl_80118E04
lbl_80118E04:
	.incbin "baserom.dol", 0x115E04, 0x4
.global lbl_80118E08
lbl_80118E08:
	.incbin "baserom.dol", 0x115E08, 0x4
.global lbl_80118E0C
lbl_80118E0C:
	.incbin "baserom.dol", 0x115E0C, 0x4
.global lbl_80118E10
lbl_80118E10:
	.incbin "baserom.dol", 0x115E10, 0x8
.global lbl_80118E18
lbl_80118E18:
	.incbin "baserom.dol", 0x115E18, 0x4
.global lbl_80118E1C
lbl_80118E1C:
	.incbin "baserom.dol", 0x115E1C, 0x4
.global lbl_80118E20
lbl_80118E20:
	.incbin "baserom.dol", 0x115E20, 0x4
.global lbl_80118E24
lbl_80118E24:
	.incbin "baserom.dol", 0x115E24, 0x4
.global lbl_80118E28
lbl_80118E28:
	.incbin "baserom.dol", 0x115E28, 0x4
.global lbl_80118E2C
lbl_80118E2C:
	.incbin "baserom.dol", 0x115E2C, 0x4
.global lbl_80118E30
lbl_80118E30:
	.incbin "baserom.dol", 0x115E30, 0x4
.global lbl_80118E34
lbl_80118E34:
	.incbin "baserom.dol", 0x115E34, 0x4
.global lbl_80118E38
lbl_80118E38:
	.incbin "baserom.dol", 0x115E38, 0x4
.global lbl_80118E3C
lbl_80118E3C:
	.incbin "baserom.dol", 0x115E3C, 0x4
.global lbl_80118E40
lbl_80118E40:
	.incbin "baserom.dol", 0x115E40, 0x4
.global lbl_80118E44
lbl_80118E44:
	.incbin "baserom.dol", 0x115E44, 0x4
.global lbl_80118E48
lbl_80118E48:
	.incbin "baserom.dol", 0x115E48, 0x4
.global lbl_80118E4C
lbl_80118E4C:
	.incbin "baserom.dol", 0x115E4C, 0x4
.global lbl_80118E50
lbl_80118E50:
	.incbin "baserom.dol", 0x115E50, 0x4
.global lbl_80118E54
lbl_80118E54:
	.incbin "baserom.dol", 0x115E54, 0x4
.global lbl_80118E58
lbl_80118E58:
	.incbin "baserom.dol", 0x115E58, 0x4
.global lbl_80118E5C
lbl_80118E5C:
	.incbin "baserom.dol", 0x115E5C, 0x4
.global lbl_80118E60
lbl_80118E60:
	.incbin "baserom.dol", 0x115E60, 0x4
.global lbl_80118E64
lbl_80118E64:
	.incbin "baserom.dol", 0x115E64, 0x4
.global lbl_80118E68
lbl_80118E68:
	.incbin "baserom.dol", 0x115E68, 0x4
.global lbl_80118E6C
lbl_80118E6C:
	.incbin "baserom.dol", 0x115E6C, 0x4
.global lbl_80118E70
lbl_80118E70:
	.incbin "baserom.dol", 0x115E70, 0x4
.global lbl_80118E74
lbl_80118E74:
	.incbin "baserom.dol", 0x115E74, 0x4
.global lbl_80118E78
lbl_80118E78:
	.incbin "baserom.dol", 0x115E78, 0x4
.global lbl_80118E7C
lbl_80118E7C:
	.incbin "baserom.dol", 0x115E7C, 0x14
.global lbl_80118E90
lbl_80118E90:
	.incbin "baserom.dol", 0x115E90, 0x8
.global lbl_80118E98
lbl_80118E98:
	.incbin "baserom.dol", 0x115E98, 0x4
.global lbl_80118E9C
lbl_80118E9C:
	.incbin "baserom.dol", 0x115E9C, 0x4
.global lbl_80118EA0
lbl_80118EA0:
	.incbin "baserom.dol", 0x115EA0, 0x4
.global lbl_80118EA4
lbl_80118EA4:
	.incbin "baserom.dol", 0x115EA4, 0x4
.global lbl_80118EA8
lbl_80118EA8:
	.incbin "baserom.dol", 0x115EA8, 0x4
.global lbl_80118EAC
lbl_80118EAC:
	.incbin "baserom.dol", 0x115EAC, 0x4
.global lbl_80118EB0
lbl_80118EB0:
	.incbin "baserom.dol", 0x115EB0, 0x8
.global lbl_80118EB8
lbl_80118EB8:
	.incbin "baserom.dol", 0x115EB8, 0x8
.global lbl_80118EC0
lbl_80118EC0:
	.incbin "baserom.dol", 0x115EC0, 0x8
.global lbl_80118EC8
lbl_80118EC8:
	.incbin "baserom.dol", 0x115EC8, 0x8
.global lbl_80118ED0
lbl_80118ED0:
	.incbin "baserom.dol", 0x115ED0, 0x4
.global lbl_80118ED4
lbl_80118ED4:
	.incbin "baserom.dol", 0x115ED4, 0x4
.global lbl_80118ED8
lbl_80118ED8:
	.incbin "baserom.dol", 0x115ED8, 0x4
.global lbl_80118EDC
lbl_80118EDC:
	.incbin "baserom.dol", 0x115EDC, 0x4
.global lbl_80118EE0
lbl_80118EE0:
	.incbin "baserom.dol", 0x115EE0, 0xC
.global lbl_80118EEC
lbl_80118EEC:
	.incbin "baserom.dol", 0x115EEC, 0x4
.global lbl_80118EF0
lbl_80118EF0:
	.incbin "baserom.dol", 0x115EF0, 0x4
.global lbl_80118EF4
lbl_80118EF4:
	.incbin "baserom.dol", 0x115EF4, 0x4
.global lbl_80118EF8
lbl_80118EF8:
	.incbin "baserom.dol", 0x115EF8, 0x4
.global lbl_80118EFC
lbl_80118EFC:
	.incbin "baserom.dol", 0x115EFC, 0x4
.global lbl_80118F00
lbl_80118F00:
	.incbin "baserom.dol", 0x115F00, 0x4
.global lbl_80118F04
lbl_80118F04:
	.incbin "baserom.dol", 0x115F04, 0x4
.global lbl_80118F08
lbl_80118F08:
	.incbin "baserom.dol", 0x115F08, 0x4
.global lbl_80118F0C
lbl_80118F0C:
	.incbin "baserom.dol", 0x115F0C, 0x4
.global lbl_80118F10
lbl_80118F10:
	.incbin "baserom.dol", 0x115F10, 0x4
.global lbl_80118F14
lbl_80118F14:
	.incbin "baserom.dol", 0x115F14, 0x4
.global lbl_80118F18
lbl_80118F18:
	.incbin "baserom.dol", 0x115F18, 0x4
.global lbl_80118F1C
lbl_80118F1C:
	.incbin "baserom.dol", 0x115F1C, 0x4
.global lbl_80118F20
lbl_80118F20:
	.incbin "baserom.dol", 0x115F20, 0x4
.global lbl_80118F24
lbl_80118F24:
	.incbin "baserom.dol", 0x115F24, 0x4
.global lbl_80118F28
lbl_80118F28:
	.incbin "baserom.dol", 0x115F28, 0x4
.global lbl_80118F2C
lbl_80118F2C:
	.incbin "baserom.dol", 0x115F2C, 0x4
.global lbl_80118F30
lbl_80118F30:
	.incbin "baserom.dol", 0x115F30, 0x8
.global lbl_80118F38
lbl_80118F38:
	.incbin "baserom.dol", 0x115F38, 0x8
.global lbl_80118F40
lbl_80118F40:
	.incbin "baserom.dol", 0x115F40, 0x4
.global lbl_80118F44
lbl_80118F44:
	.incbin "baserom.dol", 0x115F44, 0x4
.global lbl_80118F48
lbl_80118F48:
	.incbin "baserom.dol", 0x115F48, 0x4
.global lbl_80118F4C
lbl_80118F4C:
	.incbin "baserom.dol", 0x115F4C, 0x4
.global lbl_80118F50
lbl_80118F50:
	.incbin "baserom.dol", 0x115F50, 0x8
.global lbl_80118F58
lbl_80118F58:
	.incbin "baserom.dol", 0x115F58, 0x4
.global lbl_80118F5C
lbl_80118F5C:
	.incbin "baserom.dol", 0x115F5C, 0x4
.global lbl_80118F60
lbl_80118F60:
	.incbin "baserom.dol", 0x115F60, 0x4
.global lbl_80118F64
lbl_80118F64:
	.incbin "baserom.dol", 0x115F64, 0x4
.global lbl_80118F68
lbl_80118F68:
	.incbin "baserom.dol", 0x115F68, 0x4
.global lbl_80118F6C
lbl_80118F6C:
	.incbin "baserom.dol", 0x115F6C, 0x4
.global lbl_80118F70
lbl_80118F70:
	.incbin "baserom.dol", 0x115F70, 0x4
.global lbl_80118F74
lbl_80118F74:
	.incbin "baserom.dol", 0x115F74, 0x4
.global lbl_80118F78
lbl_80118F78:
	.incbin "baserom.dol", 0x115F78, 0x4
.global lbl_80118F7C
lbl_80118F7C:
	.incbin "baserom.dol", 0x115F7C, 0x4
.global lbl_80118F80
lbl_80118F80:
	.incbin "baserom.dol", 0x115F80, 0x4
.global lbl_80118F84
lbl_80118F84:
	.incbin "baserom.dol", 0x115F84, 0x4
.global lbl_80118F88
lbl_80118F88:
	.incbin "baserom.dol", 0x115F88, 0x4
.global lbl_80118F8C
lbl_80118F8C:
	.incbin "baserom.dol", 0x115F8C, 0x4
.global lbl_80118F90
lbl_80118F90:
	.incbin "baserom.dol", 0x115F90, 0x4
.global lbl_80118F94
lbl_80118F94:
	.incbin "baserom.dol", 0x115F94, 0x4
.global lbl_80118F98
lbl_80118F98:
	.incbin "baserom.dol", 0x115F98, 0xC
.global lbl_80118FA4
lbl_80118FA4:
	.incbin "baserom.dol", 0x115FA4, 0x4
.global lbl_80118FA8
lbl_80118FA8:
	.incbin "baserom.dol", 0x115FA8, 0x4
.global lbl_80118FAC
lbl_80118FAC:
	.incbin "baserom.dol", 0x115FAC, 0x4
.global lbl_80118FB0
lbl_80118FB0:
	.incbin "baserom.dol", 0x115FB0, 0x4
.global lbl_80118FB4
lbl_80118FB4:
	.incbin "baserom.dol", 0x115FB4, 0x4
.global lbl_80118FB8
lbl_80118FB8:
	.incbin "baserom.dol", 0x115FB8, 0x4
.global lbl_80118FBC
lbl_80118FBC:
	.incbin "baserom.dol", 0x115FBC, 0x4
.global lbl_80118FC0
lbl_80118FC0:
	.incbin "baserom.dol", 0x115FC0, 0x4
.global lbl_80118FC4
lbl_80118FC4:
	.incbin "baserom.dol", 0x115FC4, 0x4
.global lbl_80118FC8
lbl_80118FC8:
	.incbin "baserom.dol", 0x115FC8, 0x4
.global lbl_80118FCC
lbl_80118FCC:
	.incbin "baserom.dol", 0x115FCC, 0x4
.global lbl_80118FD0
lbl_80118FD0:
	.incbin "baserom.dol", 0x115FD0, 0x4
.global lbl_80118FD4
lbl_80118FD4:
	.incbin "baserom.dol", 0x115FD4, 0x4
.global lbl_80118FD8
lbl_80118FD8:
	.incbin "baserom.dol", 0x115FD8, 0x4
.global lbl_80118FDC
lbl_80118FDC:
	.incbin "baserom.dol", 0x115FDC, 0x4
.global lbl_80118FE0
lbl_80118FE0:
	.incbin "baserom.dol", 0x115FE0, 0x8
.global lbl_80118FE8
lbl_80118FE8:
	.incbin "baserom.dol", 0x115FE8, 0x4
.global lbl_80118FEC
lbl_80118FEC:
	.incbin "baserom.dol", 0x115FEC, 0x4
.global lbl_80118FF0
lbl_80118FF0:
	.incbin "baserom.dol", 0x115FF0, 0x4
.global lbl_80118FF4
lbl_80118FF4:
	.incbin "baserom.dol", 0x115FF4, 0x4
.global lbl_80118FF8
lbl_80118FF8:
	.incbin "baserom.dol", 0x115FF8, 0x4
.global lbl_80118FFC
lbl_80118FFC:
	.incbin "baserom.dol", 0x115FFC, 0x4
.global lbl_80119000
lbl_80119000:
	.incbin "baserom.dol", 0x116000, 0x4
.global lbl_80119004
lbl_80119004:
	.incbin "baserom.dol", 0x116004, 0x4
.global lbl_80119008
lbl_80119008:
	.incbin "baserom.dol", 0x116008, 0x8
.global lbl_80119010
lbl_80119010:
	.incbin "baserom.dol", 0x116010, 0x4
.global lbl_80119014
lbl_80119014:
	.incbin "baserom.dol", 0x116014, 0x4
.global lbl_80119018
lbl_80119018:
	.incbin "baserom.dol", 0x116018, 0x4
.global lbl_8011901C
lbl_8011901C:
	.incbin "baserom.dol", 0x11601C, 0x4
.global lbl_80119020
lbl_80119020:
	.incbin "baserom.dol", 0x116020, 0x4
.global lbl_80119024
lbl_80119024:
	.incbin "baserom.dol", 0x116024, 0x4
.global lbl_80119028
lbl_80119028:
	.incbin "baserom.dol", 0x116028, 0x4
.global lbl_8011902C
lbl_8011902C:
	.incbin "baserom.dol", 0x11602C, 0x4
.global lbl_80119030
lbl_80119030:
	.incbin "baserom.dol", 0x116030, 0x4
.global lbl_80119034
lbl_80119034:
	.incbin "baserom.dol", 0x116034, 0x8
.global lbl_8011903C
lbl_8011903C:
	.incbin "baserom.dol", 0x11603C, 0x4
.global lbl_80119040
lbl_80119040:
	.incbin "baserom.dol", 0x116040, 0x8
.global lbl_80119048
lbl_80119048:
	.incbin "baserom.dol", 0x116048, 0x4
.global lbl_8011904C
lbl_8011904C:
	.incbin "baserom.dol", 0x11604C, 0x4
.global lbl_80119050
lbl_80119050:
	.incbin "baserom.dol", 0x116050, 0x4
.global lbl_80119054
lbl_80119054:
	.incbin "baserom.dol", 0x116054, 0x240
.global lbl_80119294
lbl_80119294:
	.incbin "baserom.dol", 0x116294, 0x4
.global lbl_80119298
lbl_80119298:
	.incbin "baserom.dol", 0x116298, 0x4
.global lbl_8011929C
lbl_8011929C:
	.incbin "baserom.dol", 0x11629C, 0x4
.global lbl_801192A0
lbl_801192A0:
	.incbin "baserom.dol", 0x1162A0, 0x4
.global lbl_801192A4
lbl_801192A4:
	.incbin "baserom.dol", 0x1162A4, 0x4
.global lbl_801192A8
lbl_801192A8:
	.incbin "baserom.dol", 0x1162A8, 0x8
.global lbl_801192B0
lbl_801192B0:
	.incbin "baserom.dol", 0x1162B0, 0x4
.global lbl_801192B4
lbl_801192B4:
	.incbin "baserom.dol", 0x1162B4, 0x4
.global lbl_801192B8
lbl_801192B8:
	.incbin "baserom.dol", 0x1162B8, 0x8
.global lbl_801192C0
lbl_801192C0:
	.incbin "baserom.dol", 0x1162C0, 0x4
.global lbl_801192C4
lbl_801192C4:
	.incbin "baserom.dol", 0x1162C4, 0x4
.global lbl_801192C8
lbl_801192C8:
	.incbin "baserom.dol", 0x1162C8, 0x8
.global lbl_801192D0
lbl_801192D0:
	.incbin "baserom.dol", 0x1162D0, 0x4
.global lbl_801192D4
lbl_801192D4:
	.incbin "baserom.dol", 0x1162D4, 0x4
.global lbl_801192D8
lbl_801192D8:
	.incbin "baserom.dol", 0x1162D8, 0x8
.global lbl_801192E0
lbl_801192E0:
	.incbin "baserom.dol", 0x1162E0, 0x4
.global lbl_801192E4
lbl_801192E4:
	.incbin "baserom.dol", 0x1162E4, 0x4
.global lbl_801192E8
lbl_801192E8:
	.incbin "baserom.dol", 0x1162E8, 0x8
.global lbl_801192F0
lbl_801192F0:
	.incbin "baserom.dol", 0x1162F0, 0x4
.global lbl_801192F4
lbl_801192F4:
	.incbin "baserom.dol", 0x1162F4, 0x4
.global lbl_801192F8
lbl_801192F8:
	.incbin "baserom.dol", 0x1162F8, 0x8
.global lbl_80119300
lbl_80119300:
	.incbin "baserom.dol", 0x116300, 0x8
.global lbl_80119308
lbl_80119308:
	.incbin "baserom.dol", 0x116308, 0x8
.global lbl_80119310
lbl_80119310:
	.incbin "baserom.dol", 0x116310, 0x8
.global lbl_80119318
lbl_80119318:
	.incbin "baserom.dol", 0x116318, 0x8
.global lbl_80119320
lbl_80119320:
	.incbin "baserom.dol", 0x116320, 0x4
.global lbl_80119324
lbl_80119324:
	.incbin "baserom.dol", 0x116324, 0x4
.global lbl_80119328
lbl_80119328:
	.incbin "baserom.dol", 0x116328, 0x4
.global lbl_8011932C
lbl_8011932C:
	.incbin "baserom.dol", 0x11632C, 0x4
.global lbl_80119330
lbl_80119330:
	.incbin "baserom.dol", 0x116330, 0x4
.global lbl_80119334
lbl_80119334:
	.incbin "baserom.dol", 0x116334, 0x4
.global lbl_80119338
lbl_80119338:
	.incbin "baserom.dol", 0x116338, 0x8
.global lbl_80119340
lbl_80119340:
	.incbin "baserom.dol", 0x116340, 0x4
.global lbl_80119344
lbl_80119344:
	.incbin "baserom.dol", 0x116344, 0x4
.global lbl_80119348
lbl_80119348:
	.incbin "baserom.dol", 0x116348, 0x8
.global lbl_80119350
lbl_80119350:
	.incbin "baserom.dol", 0x116350, 0x8
.global lbl_80119358
lbl_80119358:
	.incbin "baserom.dol", 0x116358, 0x4
.global lbl_8011935C
lbl_8011935C:
	.incbin "baserom.dol", 0x11635C, 0x4
.global lbl_80119360
lbl_80119360:
	.incbin "baserom.dol", 0x116360, 0x4
.global lbl_80119364
lbl_80119364:
	.incbin "baserom.dol", 0x116364, 0x4
.global lbl_80119368
lbl_80119368:
	.incbin "baserom.dol", 0x116368, 0x4
.global lbl_8011936C
lbl_8011936C:
	.incbin "baserom.dol", 0x11636C, 0x4
.global lbl_80119370
lbl_80119370:
	.incbin "baserom.dol", 0x116370, 0x4
.global lbl_80119374
lbl_80119374:
	.incbin "baserom.dol", 0x116374, 0x4
.global lbl_80119378
lbl_80119378:
	.incbin "baserom.dol", 0x116378, 0x8
.global lbl_80119380
lbl_80119380:
	.incbin "baserom.dol", 0x116380, 0x4
.global lbl_80119384
lbl_80119384:
	.incbin "baserom.dol", 0x116384, 0x4
.global lbl_80119388
lbl_80119388:
	.incbin "baserom.dol", 0x116388, 0x4
.global lbl_8011938C
lbl_8011938C:
	.incbin "baserom.dol", 0x11638C, 0x4
.global lbl_80119390
lbl_80119390:
	.incbin "baserom.dol", 0x116390, 0x8
.global lbl_80119398
lbl_80119398:
	.incbin "baserom.dol", 0x116398, 0x244
.global lbl_801195DC
lbl_801195DC:
	.incbin "baserom.dol", 0x1165DC, 0x4
.global lbl_801195E0
lbl_801195E0:
	.incbin "baserom.dol", 0x1165E0, 0x10
.global lbl_801195F0
lbl_801195F0:
	.incbin "baserom.dol", 0x1165F0, 0x4
.global lbl_801195F4
lbl_801195F4:
	.incbin "baserom.dol", 0x1165F4, 0x4
.global lbl_801195F8
lbl_801195F8:
	.incbin "baserom.dol", 0x1165F8, 0x8
.global lbl_80119600
lbl_80119600:
	.incbin "baserom.dol", 0x116600, 0xC
.global lbl_8011960C
lbl_8011960C:
	.incbin "baserom.dol", 0x11660C, 0x10
.global lbl_8011961C
lbl_8011961C:
	.incbin "baserom.dol", 0x11661C, 0x4
.global lbl_80119620
lbl_80119620:
	.incbin "baserom.dol", 0x116620, 0x4
.global lbl_80119624
lbl_80119624:
	.incbin "baserom.dol", 0x116624, 0x4
.global lbl_80119628
lbl_80119628:
	.incbin "baserom.dol", 0x116628, 0x4
.global lbl_8011962C
lbl_8011962C:
	.incbin "baserom.dol", 0x11662C, 0x4
.global lbl_80119630
lbl_80119630:
	.incbin "baserom.dol", 0x116630, 0x4
.global lbl_80119634
lbl_80119634:
	.incbin "baserom.dol", 0x116634, 0x4
.global lbl_80119638
lbl_80119638:
	.incbin "baserom.dol", 0x116638, 0x4
.global lbl_8011963C
lbl_8011963C:
	.incbin "baserom.dol", 0x11663C, 0x4
.global lbl_80119640
lbl_80119640:
	.incbin "baserom.dol", 0x116640, 0x4
.global lbl_80119644
lbl_80119644:
	.incbin "baserom.dol", 0x116644, 0x4
.global lbl_80119648
lbl_80119648:
	.incbin "baserom.dol", 0x116648, 0x4
.global lbl_8011964C
lbl_8011964C:
	.incbin "baserom.dol", 0x11664C, 0x8
.global lbl_80119654
lbl_80119654:
	.incbin "baserom.dol", 0x116654, 0x8
.global lbl_8011965C
lbl_8011965C:
	.incbin "baserom.dol", 0x11665C, 0x4
.global lbl_80119660
lbl_80119660:
	.incbin "baserom.dol", 0x116660, 0x4
.global lbl_80119664
lbl_80119664:
	.incbin "baserom.dol", 0x116664, 0x4
.global lbl_80119668
lbl_80119668:
	.incbin "baserom.dol", 0x116668, 0x4
.global lbl_8011966C
lbl_8011966C:
	.incbin "baserom.dol", 0x11666C, 0x4
.global lbl_80119670
lbl_80119670:
	.incbin "baserom.dol", 0x116670, 0x4
.global lbl_80119674
lbl_80119674:
	.incbin "baserom.dol", 0x116674, 0x4
.global lbl_80119678
lbl_80119678:
	.incbin "baserom.dol", 0x116678, 0x4
.global lbl_8011967C
lbl_8011967C:
	.incbin "baserom.dol", 0x11667C, 0x4
.global lbl_80119680
lbl_80119680:
	.incbin "baserom.dol", 0x116680, 0x8
.global lbl_80119688
lbl_80119688:
	.incbin "baserom.dol", 0x116688, 0x8
.global lbl_80119690
lbl_80119690:
	.incbin "baserom.dol", 0x116690, 0x4
.global lbl_80119694
lbl_80119694:
	.incbin "baserom.dol", 0x116694, 0x4
.global lbl_80119698
lbl_80119698:
	.incbin "baserom.dol", 0x116698, 0x4
.global lbl_8011969C
lbl_8011969C:
	.incbin "baserom.dol", 0x11669C, 0x240
.global lbl_801198DC
lbl_801198DC:
	.incbin "baserom.dol", 0x1168DC, 0x4
.global lbl_801198E0
lbl_801198E0:
	.incbin "baserom.dol", 0x1168E0, 0x4
.global lbl_801198E4
lbl_801198E4:
	.incbin "baserom.dol", 0x1168E4, 0x240
.global lbl_80119B24
lbl_80119B24:
	.incbin "baserom.dol", 0x116B24, 0x4
.global lbl_80119B28
lbl_80119B28:
	.incbin "baserom.dol", 0x116B28, 0x4
.global s_C__source_crashwoc_code_gamecode_80119b2c
s_C__source_crashwoc_code_gamecode_80119b2c:
	.incbin "baserom.dol", 0x116B2C, 0x2C
.global lbl_80119B58
lbl_80119B58:
	.incbin "baserom.dol", 0x116B58, 0x25C
.global lbl_80119DB4
lbl_80119DB4:
	.incbin "baserom.dol", 0x116DB4, 0x4
.global lbl_80119DB8
lbl_80119DB8:
	.incbin "baserom.dol", 0x116DB8, 0x4
.global lbl_80119DBC
lbl_80119DBC:
	.incbin "baserom.dol", 0x116DBC, 0x4
.global lbl_80119DC0
lbl_80119DC0:
	.incbin "baserom.dol", 0x116DC0, 0x8
.global lbl_80119DC8
lbl_80119DC8:
	.incbin "baserom.dol", 0x116DC8, 0x8
.global lbl_80119DD0
lbl_80119DD0:
	.incbin "baserom.dol", 0x116DD0, 0x8
.global lbl_80119DD8
lbl_80119DD8:
	.incbin "baserom.dol", 0x116DD8, 0x4
.global lbl_80119DDC
lbl_80119DDC:
	.incbin "baserom.dol", 0x116DDC, 0x4
.global lbl_80119DE0
lbl_80119DE0:
	.incbin "baserom.dol", 0x116DE0, 0x8
.global lbl_80119DE8
lbl_80119DE8:
	.incbin "baserom.dol", 0x116DE8, 0x4
.global lbl_80119DEC
lbl_80119DEC:
	.incbin "baserom.dol", 0x116DEC, 0x4
.global lbl_80119DF0
lbl_80119DF0:
	.incbin "baserom.dol", 0x116DF0, 0x8
.global lbl_80119DF8
lbl_80119DF8:
	.incbin "baserom.dol", 0x116DF8, 0x8
.global lbl_80119E00
lbl_80119E00:
	.incbin "baserom.dol", 0x116E00, 0x8
.global lbl_80119E08
lbl_80119E08:
	.incbin "baserom.dol", 0x116E08, 0x8
.global lbl_80119E10
lbl_80119E10:
	.incbin "baserom.dol", 0x116E10, 0x8
.global lbl_80119E18
lbl_80119E18:
	.incbin "baserom.dol", 0x116E18, 0x8
.global lbl_80119E20
lbl_80119E20:
	.incbin "baserom.dol", 0x116E20, 0x8
.global lbl_80119E28
lbl_80119E28:
	.incbin "baserom.dol", 0x116E28, 0x4
.global lbl_80119E2C
lbl_80119E2C:
	.incbin "baserom.dol", 0x116E2C, 0x4
.global lbl_80119E30
lbl_80119E30:
	.incbin "baserom.dol", 0x116E30, 0xC
.global lbl_80119E3C
lbl_80119E3C:
	.incbin "baserom.dol", 0x116E3C, 0x4
.global lbl_80119E40
lbl_80119E40:
	.incbin "baserom.dol", 0x116E40, 0x8
.global lbl_80119E48
lbl_80119E48:
	.incbin "baserom.dol", 0x116E48, 0x4
.global lbl_80119E4C
lbl_80119E4C:
	.incbin "baserom.dol", 0x116E4C, 0x4
.global lbl_80119E50
lbl_80119E50:
	.incbin "baserom.dol", 0x116E50, 0x8
.global lbl_80119E58
lbl_80119E58:
	.incbin "baserom.dol", 0x116E58, 0x8
.global lbl_80119E60
lbl_80119E60:
	.incbin "baserom.dol", 0x116E60, 0x8
.global lbl_80119E68
lbl_80119E68:
	.incbin "baserom.dol", 0x116E68, 0x4
.global lbl_80119E6C
lbl_80119E6C:
	.incbin "baserom.dol", 0x116E6C, 0x4
.global lbl_80119E70
lbl_80119E70:
	.incbin "baserom.dol", 0x116E70, 0x8
.global lbl_80119E78
lbl_80119E78:
	.incbin "baserom.dol", 0x116E78, 0x8
.global lbl_80119E80
lbl_80119E80:
	.incbin "baserom.dol", 0x116E80, 0x8
.global lbl_80119E88
lbl_80119E88:
	.incbin "baserom.dol", 0x116E88, 0x8
.global lbl_80119E90
lbl_80119E90:
	.incbin "baserom.dol", 0x116E90, 0x8
.global lbl_80119E98
lbl_80119E98:
	.incbin "baserom.dol", 0x116E98, 0x8
.global lbl_80119EA0
lbl_80119EA0:
	.incbin "baserom.dol", 0x116EA0, 0x8
.global lbl_80119EA8
lbl_80119EA8:
	.incbin "baserom.dol", 0x116EA8, 0x4
.global lbl_80119EAC
lbl_80119EAC:
	.incbin "baserom.dol", 0x116EAC, 0x4
.global lbl_80119EB0
lbl_80119EB0:
	.incbin "baserom.dol", 0x116EB0, 0x8
.global lbl_80119EB8
lbl_80119EB8:
	.incbin "baserom.dol", 0x116EB8, 0x4
.global lbl_80119EBC
lbl_80119EBC:
	.incbin "baserom.dol", 0x116EBC, 0x4
.global lbl_80119EC0
lbl_80119EC0:
	.incbin "baserom.dol", 0x116EC0, 0x4
.global lbl_80119EC4
lbl_80119EC4:
	.incbin "baserom.dol", 0x116EC4, 0x4
.global lbl_80119EC8
lbl_80119EC8:
	.incbin "baserom.dol", 0x116EC8, 0x8
.global lbl_80119ED0
lbl_80119ED0:
	.incbin "baserom.dol", 0x116ED0, 0x8
.global lbl_80119ED8
lbl_80119ED8:
	.incbin "baserom.dol", 0x116ED8, 0x4
.global lbl_80119EDC
lbl_80119EDC:
	.incbin "baserom.dol", 0x116EDC, 0x4
.global lbl_80119EE0
lbl_80119EE0:
	.incbin "baserom.dol", 0x116EE0, 0x4
.global lbl_80119EE4
lbl_80119EE4:
	.incbin "baserom.dol", 0x116EE4, 0x4
.global s_stuff_particle_raw_80119ee8
s_stuff_particle_raw_80119ee8:
	.incbin "baserom.dol", 0x116EE8, 0x18
.global lbl_80119F00
lbl_80119F00:
	.incbin "baserom.dol", 0x116F00, 0x8
.global lbl_80119F08
lbl_80119F08:
	.incbin "baserom.dol", 0x116F08, 0x4
.global lbl_80119F0C
lbl_80119F0C:
	.incbin "baserom.dol", 0x116F0C, 0x4
.global lbl_80119F10
lbl_80119F10:
	.incbin "baserom.dol", 0x116F10, 0x4
.global lbl_80119F14
lbl_80119F14:
	.incbin "baserom.dol", 0x116F14, 0x4
.global lbl_80119F18
lbl_80119F18:
	.incbin "baserom.dol", 0x116F18, 0x4
.global lbl_80119F1C
lbl_80119F1C:
	.incbin "baserom.dol", 0x116F1C, 0x4
.global lbl_80119F20
lbl_80119F20:
	.incbin "baserom.dol", 0x116F20, 0x8
.global lbl_80119F28
lbl_80119F28:
	.incbin "baserom.dol", 0x116F28, 0x4
.global lbl_80119F2C
lbl_80119F2C:
	.incbin "baserom.dol", 0x116F2C, 0x4
.global lbl_80119F30
lbl_80119F30:
	.incbin "baserom.dol", 0x116F30, 0x8
.global lbl_80119F38
lbl_80119F38:
	.incbin "baserom.dol", 0x116F38, 0x8
.global lbl_80119F40
lbl_80119F40:
	.incbin "baserom.dol", 0x116F40, 0x4
.global lbl_80119F44
lbl_80119F44:
	.incbin "baserom.dol", 0x116F44, 0x4
.global lbl_80119F48
lbl_80119F48:
	.incbin "baserom.dol", 0x116F48, 0x4
.global lbl_80119F4C
lbl_80119F4C:
	.incbin "baserom.dol", 0x116F4C, 0x4
.global lbl_80119F50
lbl_80119F50:
	.incbin "baserom.dol", 0x116F50, 0x4
.global lbl_80119F54
lbl_80119F54:
	.incbin "baserom.dol", 0x116F54, 0x4
.global lbl_80119F58
lbl_80119F58:
	.incbin "baserom.dol", 0x116F58, 0x4
.global lbl_80119F5C
lbl_80119F5C:
	.incbin "baserom.dol", 0x116F5C, 0x4
.global lbl_80119F60
lbl_80119F60:
	.incbin "baserom.dol", 0x116F60, 0x4
.global lbl_80119F64
lbl_80119F64:
	.incbin "baserom.dol", 0x116F64, 0x4
.global lbl_80119F68
lbl_80119F68:
	.incbin "baserom.dol", 0x116F68, 0x8
.global lbl_80119F70
lbl_80119F70:
	.incbin "baserom.dol", 0x116F70, 0x8
.global lbl_80119F78
lbl_80119F78:
	.incbin "baserom.dol", 0x116F78, 0x4
.global lbl_80119F7C
lbl_80119F7C:
	.incbin "baserom.dol", 0x116F7C, 0x4
.global lbl_80119F80
lbl_80119F80:
	.incbin "baserom.dol", 0x116F80, 0x4
.global lbl_80119F84
lbl_80119F84:
	.incbin "baserom.dol", 0x116F84, 0x240
.global lbl_8011A1C4
lbl_8011A1C4:
	.incbin "baserom.dol", 0x1171C4, 0x4
.global lbl_8011A1C8
lbl_8011A1C8:
	.incbin "baserom.dol", 0x1171C8, 0x8
.global lbl_8011A1D0
lbl_8011A1D0:
	.incbin "baserom.dol", 0x1171D0, 0x8
.global lbl_8011A1D8
lbl_8011A1D8:
	.incbin "baserom.dol", 0x1171D8, 0x8
.global lbl_8011A1E0
lbl_8011A1E0:
	.incbin "baserom.dol", 0x1171E0, 0x8
.global lbl_8011A1E8
lbl_8011A1E8:
	.incbin "baserom.dol", 0x1171E8, 0x4
.global lbl_8011A1EC
lbl_8011A1EC:
	.incbin "baserom.dol", 0x1171EC, 0x47C
.global lbl_8011A668
lbl_8011A668:
	.incbin "baserom.dol", 0x117668, 0x248
.global lbl_8011A8B0
lbl_8011A8B0:
	.incbin "baserom.dol", 0x1178B0, 0x8
.global lbl_8011A8B8
lbl_8011A8B8:
	.incbin "baserom.dol", 0x1178B8, 0x4
.global lbl_8011A8BC
lbl_8011A8BC:
	.incbin "baserom.dol", 0x1178BC, 0x4
.global lbl_8011A8C0
lbl_8011A8C0:
	.incbin "baserom.dol", 0x1178C0, 0x4
.global lbl_8011A8C4
lbl_8011A8C4:
	.incbin "baserom.dol", 0x1178C4, 0x4
.global lbl_8011A8C8
lbl_8011A8C8:
	.incbin "baserom.dol", 0x1178C8, 0x4
.global lbl_8011A8CC
lbl_8011A8CC:
	.incbin "baserom.dol", 0x1178CC, 0x4
.global lbl_8011A8D0
lbl_8011A8D0:
	.incbin "baserom.dol", 0x1178D0, 0x8
.global lbl_8011A8D8
lbl_8011A8D8:
	.incbin "baserom.dol", 0x1178D8, 0x4
.global lbl_8011A8DC
lbl_8011A8DC:
	.incbin "baserom.dol", 0x1178DC, 0x240
.global lbl_8011AB1C
lbl_8011AB1C:
	.incbin "baserom.dol", 0x117B1C, 0x4
.global lbl_8011AB20
lbl_8011AB20:
	.incbin "baserom.dol", 0x117B20, 0x4
.global lbl_8011AB24
lbl_8011AB24:
	.incbin "baserom.dol", 0x117B24, 0x4
.global lbl_8011AB28
lbl_8011AB28:
	.incbin "baserom.dol", 0x117B28, 0x8
.global lbl_8011AB30
lbl_8011AB30:
	.incbin "baserom.dol", 0x117B30, 0x8
.global lbl_8011AB38
lbl_8011AB38:
	.incbin "baserom.dol", 0x117B38, 0x4
.global lbl_8011AB3C
lbl_8011AB3C:
	.incbin "baserom.dol", 0x117B3C, 0x4
.global lbl_8011AB40
lbl_8011AB40:
	.incbin "baserom.dol", 0x117B40, 0x8
.global lbl_8011AB48
lbl_8011AB48:
	.incbin "baserom.dol", 0x117B48, 0x8
.global lbl_8011AB50
lbl_8011AB50:
	.incbin "baserom.dol", 0x117B50, 0x4
.global lbl_8011AB54
lbl_8011AB54:
	.incbin "baserom.dol", 0x117B54, 0x4
.global lbl_8011AB58
lbl_8011AB58:
	.incbin "baserom.dol", 0x117B58, 0x8
.global lbl_8011AB60
lbl_8011AB60:
	.incbin "baserom.dol", 0x117B60, 0x4
.global lbl_8011AB64
lbl_8011AB64:
	.incbin "baserom.dol", 0x117B64, 0x4
.global lbl_8011AB68
lbl_8011AB68:
	.incbin "baserom.dol", 0x117B68, 0x8
.global lbl_8011AB70
lbl_8011AB70:
	.incbin "baserom.dol", 0x117B70, 0x8
.global lbl_8011AB78
lbl_8011AB78:
	.incbin "baserom.dol", 0x117B78, 0x4
.global lbl_8011AB7C
lbl_8011AB7C:
	.incbin "baserom.dol", 0x117B7C, 0x4
.global lbl_8011AB80
lbl_8011AB80:
	.incbin "baserom.dol", 0x117B80, 0x248
.global lbl_8011ADC8
lbl_8011ADC8:
	.incbin "baserom.dol", 0x117DC8, 0x8
.global lbl_8011ADD0
lbl_8011ADD0:
	.incbin "baserom.dol", 0x117DD0, 0x4
.global lbl_8011ADD4
lbl_8011ADD4:
	.incbin "baserom.dol", 0x117DD4, 0x4
.global lbl_8011ADD8
lbl_8011ADD8:
	.incbin "baserom.dol", 0x117DD8, 0x4
.global lbl_8011ADDC
lbl_8011ADDC:
	.incbin "baserom.dol", 0x117DDC, 0x4
.global lbl_8011ADE0
lbl_8011ADE0:
	.incbin "baserom.dol", 0x117DE0, 0x4
.global lbl_8011ADE4
lbl_8011ADE4:
	.incbin "baserom.dol", 0x117DE4, 0x4
.global lbl_8011ADE8
lbl_8011ADE8:
	.incbin "baserom.dol", 0x117DE8, 0x244
.global s_C__source_crashwoc_code_gamelib__8011b02c
s_C__source_crashwoc_code_gamelib__8011b02c:
	.incbin "baserom.dol", 0x11802C, 0x2C
.global lbl_8011B058
lbl_8011B058:
	.incbin "baserom.dol", 0x118058, 0x5C
.global lbl_8011B0B4
lbl_8011B0B4:
	.incbin "baserom.dol", 0x1180B4, 0x3C
.global lbl_8011B0F0
lbl_8011B0F0:
	.incbin "baserom.dol", 0x1180F0, 0x4
.global lbl_8011B0F4
lbl_8011B0F4:
	.incbin "baserom.dol", 0x1180F4, 0x4
.global lbl_8011B0F8
lbl_8011B0F8:
	.incbin "baserom.dol", 0x1180F8, 0x4
.global lbl_8011B0FC
lbl_8011B0FC:
	.incbin "baserom.dol", 0x1180FC, 0x4
.global lbl_8011B100
lbl_8011B100:
	.incbin "baserom.dol", 0x118100, 0x4
.global lbl_8011B104
lbl_8011B104:
	.incbin "baserom.dol", 0x118104, 0x4
.global lbl_8011B108
lbl_8011B108:
	.incbin "baserom.dol", 0x118108, 0x4
.global lbl_8011B10C
lbl_8011B10C:
	.incbin "baserom.dol", 0x11810C, 0x28
.global lbl_8011B134
lbl_8011B134:
	.incbin "baserom.dol", 0x118134, 0x4
.global lbl_8011B138
lbl_8011B138:
	.incbin "baserom.dol", 0x118138, 0x4
.global lbl_8011B13C
lbl_8011B13C:
	.incbin "baserom.dol", 0x11813C, 0x4
.global lbl_8011B140
lbl_8011B140:
	.incbin "baserom.dol", 0x118140, 0x4
.global lbl_8011B144
lbl_8011B144:
	.incbin "baserom.dol", 0x118144, 0x4
.global lbl_8011B148
lbl_8011B148:
	.incbin "baserom.dol", 0x118148, 0x4
.global lbl_8011B14C
lbl_8011B14C:
	.incbin "baserom.dol", 0x11814C, 0x4
.global lbl_8011B150
lbl_8011B150:
	.incbin "baserom.dol", 0x118150, 0x4
.global lbl_8011B154
lbl_8011B154:
	.incbin "baserom.dol", 0x118154, 0x4
.global lbl_8011B158
lbl_8011B158:
	.incbin "baserom.dol", 0x118158, 0x4
.global lbl_8011B15C
lbl_8011B15C:
	.incbin "baserom.dol", 0x11815C, 0x4
.global lbl_8011B160
lbl_8011B160:
	.incbin "baserom.dol", 0x118160, 0x4
.global lbl_8011B164
lbl_8011B164:
	.incbin "baserom.dol", 0x118164, 0x4
.global lbl_8011B168
lbl_8011B168:
	.incbin "baserom.dol", 0x118168, 0x8
.global lbl_8011B170
lbl_8011B170:
	.incbin "baserom.dol", 0x118170, 0x8
.global lbl_8011B178
lbl_8011B178:
	.incbin "baserom.dol", 0x118178, 0x27C
.global lbl_8011B3F4
lbl_8011B3F4:
	.incbin "baserom.dol", 0x1183F4, 0x4
.global lbl_8011B3F8
lbl_8011B3F8:
	.incbin "baserom.dol", 0x1183F8, 0x4
.global lbl_8011B3FC
lbl_8011B3FC:
	.incbin "baserom.dol", 0x1183FC, 0x4
.global lbl_8011B400
lbl_8011B400:
	.incbin "baserom.dol", 0x118400, 0x4
.global lbl_8011B404
lbl_8011B404:
	.incbin "baserom.dol", 0x118404, 0x4
.global lbl_8011B408
lbl_8011B408:
	.incbin "baserom.dol", 0x118408, 0x244
.global s_to_many_sections_n_8011b64c
s_to_many_sections_n_8011b64c:
	.incbin "baserom.dol", 0x11864C, 0x14
.global lbl_8011B660
lbl_8011B660:
	.incbin "baserom.dol", 0x118660, 0x4
.global lbl_8011B664
lbl_8011B664:
	.incbin "baserom.dol", 0x118664, 0x4
.global lbl_8011B668
lbl_8011B668:
	.incbin "baserom.dol", 0x118668, 0x8
.global lbl_8011B670
lbl_8011B670:
	.incbin "baserom.dol", 0x118670, 0x8
.global lbl_8011B678
lbl_8011B678:
	.incbin "baserom.dol", 0x118678, 0x8
.global lbl_8011B680
lbl_8011B680:
	.incbin "baserom.dol", 0x118680, 0x8
.global lbl_8011B688
lbl_8011B688:
	.incbin "baserom.dol", 0x118688, 0x4
.global lbl_8011B68C
lbl_8011B68C:
	.incbin "baserom.dol", 0x11868C, 0x4
.global lbl_8011B690
lbl_8011B690:
	.incbin "baserom.dol", 0x118690, 0x4
.global lbl_8011B694
lbl_8011B694:
	.incbin "baserom.dol", 0x118694, 0x4
.global lbl_8011B698
lbl_8011B698:
	.incbin "baserom.dol", 0x118698, 0x4
.global lbl_8011B69C
lbl_8011B69C:
	.incbin "baserom.dol", 0x11869C, 0x4
.global lbl_8011B6A0
lbl_8011B6A0:
	.incbin "baserom.dol", 0x1186A0, 0x4
.global lbl_8011B6A4
lbl_8011B6A4:
	.incbin "baserom.dol", 0x1186A4, 0x4
.global lbl_8011B6A8
lbl_8011B6A8:
	.incbin "baserom.dol", 0x1186A8, 0x4
.global lbl_8011B6AC
lbl_8011B6AC:
	.incbin "baserom.dol", 0x1186AC, 0x240
.global lbl_8011B8EC
lbl_8011B8EC:
	.incbin "baserom.dol", 0x1188EC, 0x4
.global lbl_8011B8F0
lbl_8011B8F0:
	.incbin "baserom.dol", 0x1188F0, 0x4
.global lbl_8011B8F4
lbl_8011B8F4:
	.incbin "baserom.dol", 0x1188F4, 0x4
.global lbl_8011B8F8
lbl_8011B8F8:
	.incbin "baserom.dol", 0x1188F8, 0x4
.global lbl_8011B8FC
lbl_8011B8FC:
	.incbin "baserom.dol", 0x1188FC, 0x4
.global lbl_8011B900
lbl_8011B900:
	.incbin "baserom.dol", 0x118900, 0x4
.global lbl_8011B904
lbl_8011B904:
	.incbin "baserom.dol", 0x118904, 0x4
.global lbl_8011B908
lbl_8011B908:
	.incbin "baserom.dol", 0x118908, 0x8
.global lbl_8011B910
lbl_8011B910:
	.incbin "baserom.dol", 0x118910, 0x8
.global lbl_8011B918
lbl_8011B918:
	.incbin "baserom.dol", 0x118918, 0x4
.global lbl_8011B91C
lbl_8011B91C:
	.incbin "baserom.dol", 0x11891C, 0x4
.global lbl_8011B920
lbl_8011B920:
	.incbin "baserom.dol", 0x118920, 0x4
.global lbl_8011B924
lbl_8011B924:
	.incbin "baserom.dol", 0x118924, 0x4
.global lbl_8011B928
lbl_8011B928:
	.incbin "baserom.dol", 0x118928, 0x4
.global lbl_8011B92C
lbl_8011B92C:
	.incbin "baserom.dol", 0x11892C, 0x4
.global lbl_8011B930
lbl_8011B930:
	.incbin "baserom.dol", 0x118930, 0x4
.global lbl_8011B934
lbl_8011B934:
	.incbin "baserom.dol", 0x118934, 0x4
.global lbl_8011B938
lbl_8011B938:
	.incbin "baserom.dol", 0x118938, 0x24C
.global lbl_8011BB84
lbl_8011BB84:
	.incbin "baserom.dol", 0x118B84, 0x8
.global lbl_8011BB8C
lbl_8011BB8C:
	.incbin "baserom.dol", 0x118B8C, 0x4
.global lbl_8011BB90
lbl_8011BB90:
	.incbin "baserom.dol", 0x118B90, 0x4
.global lbl_8011BB94
lbl_8011BB94:
	.incbin "baserom.dol", 0x118B94, 0x4
.global lbl_8011BB98
lbl_8011BB98:
	.incbin "baserom.dol", 0x118B98, 0x8
.global lbl_8011BBA0
lbl_8011BBA0:
	.incbin "baserom.dol", 0x118BA0, 0x8
.global lbl_8011BBA8
lbl_8011BBA8:
	.incbin "baserom.dol", 0x118BA8, 0x4
.global lbl_8011BBAC
lbl_8011BBAC:
	.incbin "baserom.dol", 0x118BAC, 0x4
.global lbl_8011BBB0
lbl_8011BBB0:
	.incbin "baserom.dol", 0x118BB0, 0x8
.global lbl_8011BBB8
lbl_8011BBB8:
	.incbin "baserom.dol", 0x118BB8, 0x4
.global lbl_8011BBBC
lbl_8011BBBC:
	.incbin "baserom.dol", 0x118BBC, 0x4
.global lbl_8011BBC0
lbl_8011BBC0:
	.incbin "baserom.dol", 0x118BC0, 0x4
.global lbl_8011BBC4
lbl_8011BBC4:
	.incbin "baserom.dol", 0x118BC4, 0x4
.global lbl_8011BBC8
lbl_8011BBC8:
	.incbin "baserom.dol", 0x118BC8, 0x4
.global lbl_8011BBCC
lbl_8011BBCC:
	.incbin "baserom.dol", 0x118BCC, 0x4
.global lbl_8011BBD0
lbl_8011BBD0:
	.incbin "baserom.dol", 0x118BD0, 0x4
.global lbl_8011BBD4
lbl_8011BBD4:
	.incbin "baserom.dol", 0x118BD4, 0x4
.global lbl_8011BBD8
lbl_8011BBD8:
	.incbin "baserom.dol", 0x118BD8, 0x4
.global lbl_8011BBDC
lbl_8011BBDC:
	.incbin "baserom.dol", 0x118BDC, 0x4
.global lbl_8011BBE0
lbl_8011BBE0:
	.incbin "baserom.dol", 0x118BE0, 0x4
.global lbl_8011BBE4
lbl_8011BBE4:
	.incbin "baserom.dol", 0x118BE4, 0x4
.global lbl_8011BBE8
lbl_8011BBE8:
	.incbin "baserom.dol", 0x118BE8, 0x4
.global lbl_8011BBEC
lbl_8011BBEC:
	.incbin "baserom.dol", 0x118BEC, 0x4
.global lbl_8011BBF0
lbl_8011BBF0:
	.incbin "baserom.dol", 0x118BF0, 0x4
.global lbl_8011BBF4
lbl_8011BBF4:
	.incbin "baserom.dol", 0x118BF4, 0x4
.global lbl_8011BBF8
lbl_8011BBF8:
	.incbin "baserom.dol", 0x118BF8, 0x4
.global lbl_8011BBFC
lbl_8011BBFC:
	.incbin "baserom.dol", 0x118BFC, 0x4
.global lbl_8011BC00
lbl_8011BC00:
	.incbin "baserom.dol", 0x118C00, 0x4
.global lbl_8011BC04
lbl_8011BC04:
	.incbin "baserom.dol", 0x118C04, 0x4
.global lbl_8011BC08
lbl_8011BC08:
	.incbin "baserom.dol", 0x118C08, 0x4
.global lbl_8011BC0C
lbl_8011BC0C:
	.incbin "baserom.dol", 0x118C0C, 0x4
.global lbl_8011BC10
lbl_8011BC10:
	.incbin "baserom.dol", 0x118C10, 0x4
.global lbl_8011BC14
lbl_8011BC14:
	.incbin "baserom.dol", 0x118C14, 0x4
.global lbl_8011BC18
lbl_8011BC18:
	.incbin "baserom.dol", 0x118C18, 0x4
.global lbl_8011BC1C
lbl_8011BC1C:
	.incbin "baserom.dol", 0x118C1C, 0x4
.global lbl_8011BC20
lbl_8011BC20:
	.incbin "baserom.dol", 0x118C20, 0x4
.global lbl_8011BC24
lbl_8011BC24:
	.incbin "baserom.dol", 0x118C24, 0x4
.global lbl_8011BC28
lbl_8011BC28:
	.incbin "baserom.dol", 0x118C28, 0x4
.global lbl_8011BC2C
lbl_8011BC2C:
	.incbin "baserom.dol", 0x118C2C, 0x4
.global lbl_8011BC30
lbl_8011BC30:
	.incbin "baserom.dol", 0x118C30, 0x4
.global lbl_8011BC34
lbl_8011BC34:
	.incbin "baserom.dol", 0x118C34, 0x4
.global lbl_8011BC38
lbl_8011BC38:
	.incbin "baserom.dol", 0x118C38, 0x4
.global lbl_8011BC3C
lbl_8011BC3C:
	.incbin "baserom.dol", 0x118C3C, 0x4
.global lbl_8011BC40
lbl_8011BC40:
	.incbin "baserom.dol", 0x118C40, 0x4
.global lbl_8011BC44
lbl_8011BC44:
	.incbin "baserom.dol", 0x118C44, 0x4
.global lbl_8011BC48
lbl_8011BC48:
	.incbin "baserom.dol", 0x118C48, 0x4
.global lbl_8011BC4C
lbl_8011BC4C:
	.incbin "baserom.dol", 0x118C4C, 0x4
.global lbl_8011BC50
lbl_8011BC50:
	.incbin "baserom.dol", 0x118C50, 0x4
.global lbl_8011BC54
lbl_8011BC54:
	.incbin "baserom.dol", 0x118C54, 0x4
.global lbl_8011BC58
lbl_8011BC58:
	.incbin "baserom.dol", 0x118C58, 0x4
.global lbl_8011BC5C
lbl_8011BC5C:
	.incbin "baserom.dol", 0x118C5C, 0x4
.global lbl_8011BC60
lbl_8011BC60:
	.incbin "baserom.dol", 0x118C60, 0x4
.global lbl_8011BC64
lbl_8011BC64:
	.incbin "baserom.dol", 0x118C64, 0x4
.global lbl_8011BC68
lbl_8011BC68:
	.incbin "baserom.dol", 0x118C68, 0x4
.global lbl_8011BC6C
lbl_8011BC6C:
	.incbin "baserom.dol", 0x118C6C, 0x4
.global lbl_8011BC70
lbl_8011BC70:
	.incbin "baserom.dol", 0x118C70, 0x4
.global lbl_8011BC74
lbl_8011BC74:
	.incbin "baserom.dol", 0x118C74, 0x4
.global lbl_8011BC78
lbl_8011BC78:
	.incbin "baserom.dol", 0x118C78, 0x4
.global lbl_8011BC7C
lbl_8011BC7C:
	.incbin "baserom.dol", 0x118C7C, 0x4
.global lbl_8011BC80
lbl_8011BC80:
	.incbin "baserom.dol", 0x118C80, 0x4
.global lbl_8011BC84
lbl_8011BC84:
	.incbin "baserom.dol", 0x118C84, 0x4
.global lbl_8011BC88
lbl_8011BC88:
	.incbin "baserom.dol", 0x118C88, 0x4
.global lbl_8011BC8C
lbl_8011BC8C:
	.incbin "baserom.dol", 0x118C8C, 0x4
.global lbl_8011BC90
lbl_8011BC90:
	.incbin "baserom.dol", 0x118C90, 0x4
.global lbl_8011BC94
lbl_8011BC94:
	.incbin "baserom.dol", 0x118C94, 0x4
.global lbl_8011BC98
lbl_8011BC98:
	.incbin "baserom.dol", 0x118C98, 0x4
.global lbl_8011BC9C
lbl_8011BC9C:
	.incbin "baserom.dol", 0x118C9C, 0x4
.global lbl_8011BCA0
lbl_8011BCA0:
	.incbin "baserom.dol", 0x118CA0, 0x4
.global lbl_8011BCA4
lbl_8011BCA4:
	.incbin "baserom.dol", 0x118CA4, 0x4
.global lbl_8011BCA8
lbl_8011BCA8:
	.incbin "baserom.dol", 0x118CA8, 0x4
.global lbl_8011BCAC
lbl_8011BCAC:
	.incbin "baserom.dol", 0x118CAC, 0x4
.global lbl_8011BCB0
lbl_8011BCB0:
	.incbin "baserom.dol", 0x118CB0, 0x4
.global lbl_8011BCB4
lbl_8011BCB4:
	.incbin "baserom.dol", 0x118CB4, 0x4
.global lbl_8011BCB8
lbl_8011BCB8:
	.incbin "baserom.dol", 0x118CB8, 0x4
.global lbl_8011BCBC
lbl_8011BCBC:
	.incbin "baserom.dol", 0x118CBC, 0x4
.global lbl_8011BCC0
lbl_8011BCC0:
	.incbin "baserom.dol", 0x118CC0, 0x4
.global lbl_8011BCC4
lbl_8011BCC4:
	.incbin "baserom.dol", 0x118CC4, 0x4
.global lbl_8011BCC8
lbl_8011BCC8:
	.incbin "baserom.dol", 0x118CC8, 0x4
.global lbl_8011BCCC
lbl_8011BCCC:
	.incbin "baserom.dol", 0x118CCC, 0x4
.global lbl_8011BCD0
lbl_8011BCD0:
	.incbin "baserom.dol", 0x118CD0, 0x4
.global lbl_8011BCD4
lbl_8011BCD4:
	.incbin "baserom.dol", 0x118CD4, 0x4
.global lbl_8011BCD8
lbl_8011BCD8:
	.incbin "baserom.dol", 0x118CD8, 0x4
.global lbl_8011BCDC
lbl_8011BCDC:
	.incbin "baserom.dol", 0x118CDC, 0x4
.global lbl_8011BCE0
lbl_8011BCE0:
	.incbin "baserom.dol", 0x118CE0, 0x4
.global lbl_8011BCE4
lbl_8011BCE4:
	.incbin "baserom.dol", 0x118CE4, 0x4
.global lbl_8011BCE8
lbl_8011BCE8:
	.incbin "baserom.dol", 0x118CE8, 0x4
.global lbl_8011BCEC
lbl_8011BCEC:
	.incbin "baserom.dol", 0x118CEC, 0x4
.global lbl_8011BCF0
lbl_8011BCF0:
	.incbin "baserom.dol", 0x118CF0, 0x4
.global lbl_8011BCF4
lbl_8011BCF4:
	.incbin "baserom.dol", 0x118CF4, 0x4
.global lbl_8011BCF8
lbl_8011BCF8:
	.incbin "baserom.dol", 0x118CF8, 0x4
.global lbl_8011BCFC
lbl_8011BCFC:
	.incbin "baserom.dol", 0x118CFC, 0x4
.global lbl_8011BD00
lbl_8011BD00:
	.incbin "baserom.dol", 0x118D00, 0x4
.global lbl_8011BD04
lbl_8011BD04:
	.incbin "baserom.dol", 0x118D04, 0x4
.global lbl_8011BD08
lbl_8011BD08:
	.incbin "baserom.dol", 0x118D08, 0x4
.global lbl_8011BD0C
lbl_8011BD0C:
	.incbin "baserom.dol", 0x118D0C, 0x4
.global lbl_8011BD10
lbl_8011BD10:
	.incbin "baserom.dol", 0x118D10, 0x4
.global lbl_8011BD14
lbl_8011BD14:
	.incbin "baserom.dol", 0x118D14, 0x4
.global lbl_8011BD18
lbl_8011BD18:
	.incbin "baserom.dol", 0x118D18, 0x4
.global lbl_8011BD1C
lbl_8011BD1C:
	.incbin "baserom.dol", 0x118D1C, 0x4
.global lbl_8011BD20
lbl_8011BD20:
	.incbin "baserom.dol", 0x118D20, 0x4
.global lbl_8011BD24
lbl_8011BD24:
	.incbin "baserom.dol", 0x118D24, 0x4
.global lbl_8011BD28
lbl_8011BD28:
	.incbin "baserom.dol", 0x118D28, 0x4
.global lbl_8011BD2C
lbl_8011BD2C:
	.incbin "baserom.dol", 0x118D2C, 0x4
.global lbl_8011BD30
lbl_8011BD30:
	.incbin "baserom.dol", 0x118D30, 0x4
.global lbl_8011BD34
lbl_8011BD34:
	.incbin "baserom.dol", 0x118D34, 0x4
.global lbl_8011BD38
lbl_8011BD38:
	.incbin "baserom.dol", 0x118D38, 0x4
.global lbl_8011BD3C
lbl_8011BD3C:
	.incbin "baserom.dol", 0x118D3C, 0x4
.global lbl_8011BD40
lbl_8011BD40:
	.incbin "baserom.dol", 0x118D40, 0x4
.global lbl_8011BD44
lbl_8011BD44:
	.incbin "baserom.dol", 0x118D44, 0x4
.global lbl_8011BD48
lbl_8011BD48:
	.incbin "baserom.dol", 0x118D48, 0x4
.global lbl_8011BD4C
lbl_8011BD4C:
	.incbin "baserom.dol", 0x118D4C, 0x4
.global lbl_8011BD50
lbl_8011BD50:
	.incbin "baserom.dol", 0x118D50, 0x4
.global lbl_8011BD54
lbl_8011BD54:
	.incbin "baserom.dol", 0x118D54, 0x4
.global lbl_8011BD58
lbl_8011BD58:
	.incbin "baserom.dol", 0x118D58, 0x4
.global lbl_8011BD5C
lbl_8011BD5C:
	.incbin "baserom.dol", 0x118D5C, 0x4
.global lbl_8011BD60
lbl_8011BD60:
	.incbin "baserom.dol", 0x118D60, 0x4
.global lbl_8011BD64
lbl_8011BD64:
	.incbin "baserom.dol", 0x118D64, 0x4
.global lbl_8011BD68
lbl_8011BD68:
	.incbin "baserom.dol", 0x118D68, 0x4
.global lbl_8011BD6C
lbl_8011BD6C:
	.incbin "baserom.dol", 0x118D6C, 0x4
.global lbl_8011BD70
lbl_8011BD70:
	.incbin "baserom.dol", 0x118D70, 0x4
.global lbl_8011BD74
lbl_8011BD74:
	.incbin "baserom.dol", 0x118D74, 0x4
.global lbl_8011BD78
lbl_8011BD78:
	.incbin "baserom.dol", 0x118D78, 0x4
.global lbl_8011BD7C
lbl_8011BD7C:
	.incbin "baserom.dol", 0x118D7C, 0x4
.global lbl_8011BD80
lbl_8011BD80:
	.incbin "baserom.dol", 0x118D80, 0x60
.global lbl_8011BDE0
lbl_8011BDE0:
	.incbin "baserom.dol", 0x118DE0, 0x4
.global lbl_8011BDE4
lbl_8011BDE4:
	.incbin "baserom.dol", 0x118DE4, 0x4
.global lbl_8011BDE8
lbl_8011BDE8:
	.incbin "baserom.dol", 0x118DE8, 0x4
.global lbl_8011BDEC
lbl_8011BDEC:
	.incbin "baserom.dol", 0x118DEC, 0x4
.global lbl_8011BDF0
lbl_8011BDF0:
	.incbin "baserom.dol", 0x118DF0, 0x4
.global lbl_8011BDF4
lbl_8011BDF4:
	.incbin "baserom.dol", 0x118DF4, 0x4
.global lbl_8011BDF8
lbl_8011BDF8:
	.incbin "baserom.dol", 0x118DF8, 0x4
.global lbl_8011BDFC
lbl_8011BDFC:
	.incbin "baserom.dol", 0x118DFC, 0x4
.global lbl_8011BE00
lbl_8011BE00:
	.incbin "baserom.dol", 0x118E00, 0x4
.global lbl_8011BE04
lbl_8011BE04:
	.incbin "baserom.dol", 0x118E04, 0x4
.global lbl_8011BE08
lbl_8011BE08:
	.incbin "baserom.dol", 0x118E08, 0x4
.global lbl_8011BE0C
lbl_8011BE0C:
	.incbin "baserom.dol", 0x118E0C, 0x4
.global lbl_8011BE10
lbl_8011BE10:
	.incbin "baserom.dol", 0x118E10, 0x4
.global lbl_8011BE14
lbl_8011BE14:
	.incbin "baserom.dol", 0x118E14, 0x4
.global lbl_8011BE18
lbl_8011BE18:
	.incbin "baserom.dol", 0x118E18, 0x4
.global lbl_8011BE1C
lbl_8011BE1C:
	.incbin "baserom.dol", 0x118E1C, 0x4
.global lbl_8011BE20
lbl_8011BE20:
	.incbin "baserom.dol", 0x118E20, 0x4
.global lbl_8011BE24
lbl_8011BE24:
	.incbin "baserom.dol", 0x118E24, 0x4
.global lbl_8011BE28
lbl_8011BE28:
	.incbin "baserom.dol", 0x118E28, 0x4
.global lbl_8011BE2C
lbl_8011BE2C:
	.incbin "baserom.dol", 0x118E2C, 0x4
.global lbl_8011BE30
lbl_8011BE30:
	.incbin "baserom.dol", 0x118E30, 0x4
.global lbl_8011BE34
lbl_8011BE34:
	.incbin "baserom.dol", 0x118E34, 0x4
.global lbl_8011BE38
lbl_8011BE38:
	.incbin "baserom.dol", 0x118E38, 0x4
.global lbl_8011BE3C
lbl_8011BE3C:
	.incbin "baserom.dol", 0x118E3C, 0x4
.global lbl_8011BE40
lbl_8011BE40:
	.incbin "baserom.dol", 0x118E40, 0x4
.global lbl_8011BE44
lbl_8011BE44:
	.incbin "baserom.dol", 0x118E44, 0x4
.global lbl_8011BE48
lbl_8011BE48:
	.incbin "baserom.dol", 0x118E48, 0x4
.global lbl_8011BE4C
lbl_8011BE4C:
	.incbin "baserom.dol", 0x118E4C, 0x4
.global lbl_8011BE50
lbl_8011BE50:
	.incbin "baserom.dol", 0x118E50, 0x4
.global lbl_8011BE54
lbl_8011BE54:
	.incbin "baserom.dol", 0x118E54, 0x4
.global lbl_8011BE58
lbl_8011BE58:
	.incbin "baserom.dol", 0x118E58, 0x4
.global lbl_8011BE5C
lbl_8011BE5C:
	.incbin "baserom.dol", 0x118E5C, 0x4
.global lbl_8011BE60
lbl_8011BE60:
	.incbin "baserom.dol", 0x118E60, 0x4
.global lbl_8011BE64
lbl_8011BE64:
	.incbin "baserom.dol", 0x118E64, 0x4
.global lbl_8011BE68
lbl_8011BE68:
	.incbin "baserom.dol", 0x118E68, 0x4
.global lbl_8011BE6C
lbl_8011BE6C:
	.incbin "baserom.dol", 0x118E6C, 0x4
.global lbl_8011BE70
lbl_8011BE70:
	.incbin "baserom.dol", 0x118E70, 0x4
.global lbl_8011BE74
lbl_8011BE74:
	.incbin "baserom.dol", 0x118E74, 0x4
.global lbl_8011BE78
lbl_8011BE78:
	.incbin "baserom.dol", 0x118E78, 0x4
.global lbl_8011BE7C
lbl_8011BE7C:
	.incbin "baserom.dol", 0x118E7C, 0x4
.global lbl_8011BE80
lbl_8011BE80:
	.incbin "baserom.dol", 0x118E80, 0x4
.global lbl_8011BE84
lbl_8011BE84:
	.incbin "baserom.dol", 0x118E84, 0x4
.global lbl_8011BE88
lbl_8011BE88:
	.incbin "baserom.dol", 0x118E88, 0x4
.global lbl_8011BE8C
lbl_8011BE8C:
	.incbin "baserom.dol", 0x118E8C, 0x240
.global lbl_8011C0CC
lbl_8011C0CC:
	.incbin "baserom.dol", 0x1190CC, 0x4
.global s_C__source_crashwoc_code_nu3dx_nu_8011c0d0
s_C__source_crashwoc_code_nu3dx_nu_8011c0d0:
	.incbin "baserom.dol", 0x1190D0, 0x28
.global lbl_8011C0F8
lbl_8011C0F8:
	.incbin "baserom.dol", 0x1190F8, 0x8
.global lbl_8011C100
lbl_8011C100:
	.incbin "baserom.dol", 0x119100, 0x4
.global lbl_8011C104
lbl_8011C104:
	.incbin "baserom.dol", 0x119104, 0x4
.global lbl_8011C108
lbl_8011C108:
	.incbin "baserom.dol", 0x119108, 0x8
.global lbl_8011C110
lbl_8011C110:
	.incbin "baserom.dol", 0x119110, 0x8
.global lbl_8011C118
lbl_8011C118:
	.incbin "baserom.dol", 0x119118, 0x8
.global lbl_8011C120
lbl_8011C120:
	.incbin "baserom.dol", 0x119120, 0x4
.global lbl_8011C124
lbl_8011C124:
	.incbin "baserom.dol", 0x119124, 0x4
.global lbl_8011C128
lbl_8011C128:
	.incbin "baserom.dol", 0x119128, 0x8
.global lbl_8011C130
lbl_8011C130:
	.incbin "baserom.dol", 0x119130, 0x4
.global lbl_8011C134
lbl_8011C134:
	.incbin "baserom.dol", 0x119134, 0x4
.global lbl_8011C138
lbl_8011C138:
	.incbin "baserom.dol", 0x119138, 0x4
.global lbl_8011C13C
lbl_8011C13C:
	.incbin "baserom.dol", 0x11913C, 0x4
.global lbl_8011C140
lbl_8011C140:
	.incbin "baserom.dol", 0x119140, 0x4
.global lbl_8011C144
lbl_8011C144:
	.incbin "baserom.dol", 0x119144, 0x4
.global lbl_8011C148
lbl_8011C148:
	.incbin "baserom.dol", 0x119148, 0x4
.global lbl_8011C14C
lbl_8011C14C:
	.incbin "baserom.dol", 0x11914C, 0x4
.global lbl_8011C150
lbl_8011C150:
	.incbin "baserom.dol", 0x119150, 0x4
.global lbl_8011C154
lbl_8011C154:
	.incbin "baserom.dol", 0x119154, 0x4
.global lbl_8011C158
lbl_8011C158:
	.incbin "baserom.dol", 0x119158, 0x4
.global lbl_8011C15C
lbl_8011C15C:
	.incbin "baserom.dol", 0x11915C, 0x4
.global lbl_8011C160
lbl_8011C160:
	.incbin "baserom.dol", 0x119160, 0x4
.global lbl_8011C164
lbl_8011C164:
	.incbin "baserom.dol", 0x119164, 0x4
.global lbl_8011C168
lbl_8011C168:
	.incbin "baserom.dol", 0x119168, 0x4
.global lbl_8011C16C
lbl_8011C16C:
	.incbin "baserom.dol", 0x11916C, 0x50
.global lbl_8011C1BC
lbl_8011C1BC:
	.incbin "baserom.dol", 0x1191BC, 0x48
.global lbl_8011C204
lbl_8011C204:
	.incbin "baserom.dol", 0x119204, 0x3C
.global lbl_8011C240
lbl_8011C240:
	.incbin "baserom.dol", 0x119240, 0x50
.global lbl_8011C290
lbl_8011C290:
	.incbin "baserom.dol", 0x119290, 0x8
.global lbl_8011C298
lbl_8011C298:
	.incbin "baserom.dol", 0x119298, 0x4
.global lbl_8011C29C
lbl_8011C29C:
	.incbin "baserom.dol", 0x11929C, 0x4
.global lbl_8011C2A0
lbl_8011C2A0:
	.incbin "baserom.dol", 0x1192A0, 0x244
.global lbl_8011C4E4
lbl_8011C4E4:
	.incbin "baserom.dol", 0x1194E4, 0x4
.global lbl_8011C4E8
lbl_8011C4E8:
	.incbin "baserom.dol", 0x1194E8, 0x4
.global lbl_8011C4EC
lbl_8011C4EC:
	.incbin "baserom.dol", 0x1194EC, 0x4
.global lbl_8011C4F0
lbl_8011C4F0:
	.incbin "baserom.dol", 0x1194F0, 0x4
.global lbl_8011C4F4
lbl_8011C4F4:
	.incbin "baserom.dol", 0x1194F4, 0x4
.global lbl_8011C4F8
lbl_8011C4F8:
	.incbin "baserom.dol", 0x1194F8, 0x4
.global lbl_8011C4FC
lbl_8011C4FC:
	.incbin "baserom.dol", 0x1194FC, 0x4
.global lbl_8011C500
lbl_8011C500:
	.incbin "baserom.dol", 0x119500, 0x4
.global s_C__source_crashwoc_code_nu3dx_nu_8011c504
s_C__source_crashwoc_code_nu3dx_nu_8011c504:
	.incbin "baserom.dol", 0x119504, 0x2C
.global lbl_8011C530
lbl_8011C530:
	.incbin "baserom.dol", 0x119530, 0x8
.global lbl_8011C538
lbl_8011C538:
	.incbin "baserom.dol", 0x119538, 0x4
.global lbl_8011C53C
lbl_8011C53C:
	.incbin "baserom.dol", 0x11953C, 0x4
.global lbl_8011C540
lbl_8011C540:
	.incbin "baserom.dol", 0x119540, 0x244
.global s_C__source_crashwoc_code_nu3dx_nu_8011c784
s_C__source_crashwoc_code_nu3dx_nu_8011c784:
	.incbin "baserom.dol", 0x119784, 0x2C
.global lbl_8011C7B0
lbl_8011C7B0:
	.incbin "baserom.dol", 0x1197B0, 0x28
.global lbl_8011C7D8
lbl_8011C7D8:
	.incbin "baserom.dol", 0x1197D8, 0x8
.global lbl_8011C7E0
lbl_8011C7E0:
	.incbin "baserom.dol", 0x1197E0, 0x8
.global lbl_8011C7E8
lbl_8011C7E8:
	.incbin "baserom.dol", 0x1197E8, 0x44
.global lbl_8011C82C
lbl_8011C82C:
	.incbin "baserom.dol", 0x11982C, 0x4
.global lbl_8011C830
lbl_8011C830:
	.incbin "baserom.dol", 0x119830, 0x4
.global lbl_8011C834
lbl_8011C834:
	.incbin "baserom.dol", 0x119834, 0x268
.global s_gfx_spectxtf_bmp_8011ca9c
s_gfx_spectxtf_bmp_8011ca9c:
	.incbin "baserom.dol", 0x119A9C, 0x14
.global lbl_8011CAB0
lbl_8011CAB0:
	.incbin "baserom.dol", 0x119AB0, 0x4
.global lbl_8011CAB4
lbl_8011CAB4:
	.incbin "baserom.dol", 0x119AB4, 0x4
.global s_C__source_crashwoc_code_nu3dx_nu_8011cab8
s_C__source_crashwoc_code_nu3dx_nu_8011cab8:
	.incbin "baserom.dol", 0x119AB8, 0x28
.global lbl_8011CAE0
lbl_8011CAE0:
	.incbin "baserom.dol", 0x119AE0, 0x8
.global lbl_8011CAE8
lbl_8011CAE8:
	.incbin "baserom.dol", 0x119AE8, 0x4
.global lbl_8011CAEC
lbl_8011CAEC:
	.incbin "baserom.dol", 0x119AEC, 0x4
.global lbl_8011CAF0
lbl_8011CAF0:
	.incbin "baserom.dol", 0x119AF0, 0x4
.global lbl_8011CAF4
lbl_8011CAF4:
	.incbin "baserom.dol", 0x119AF4, 0x240
.global lbl_8011CD34
lbl_8011CD34:
	.incbin "baserom.dol", 0x119D34, 0x4
.global lbl_8011CD38
lbl_8011CD38:
	.incbin "baserom.dol", 0x119D38, 0x4
.global lbl_8011CD3C
lbl_8011CD3C:
	.incbin "baserom.dol", 0x119D3C, 0x4
.global lbl_8011CD40
lbl_8011CD40:
	.incbin "baserom.dol", 0x119D40, 0x4
.global lbl_8011CD44
lbl_8011CD44:
	.incbin "baserom.dol", 0x119D44, 0x4
.global s_C__source_crashwoc_code_nu3dx_nu_8011cd48
s_C__source_crashwoc_code_nu3dx_nu_8011cd48:
	.incbin "baserom.dol", 0x119D48, 0x4C
.global lbl_8011CD94
lbl_8011CD94:
	.incbin "baserom.dol", 0x119D94, 0x4
.global lbl_8011CD98
lbl_8011CD98:
	.incbin "baserom.dol", 0x119D98, 0x4
.global lbl_8011CD9C
lbl_8011CD9C:
	.incbin "baserom.dol", 0x119D9C, 0x4
.global lbl_8011CDA0
lbl_8011CDA0:
	.incbin "baserom.dol", 0x119DA0, 0x4
.global lbl_8011CDA4
lbl_8011CDA4:
	.incbin "baserom.dol", 0x119DA4, 0x28
.global lbl_8011CDCC
lbl_8011CDCC:
	.incbin "baserom.dol", 0x119DCC, 0x40
.global lbl_8011CE0C
lbl_8011CE0C:
	.incbin "baserom.dol", 0x119E0C, 0x260
.global lbl_8011D06C
lbl_8011D06C:
	.incbin "baserom.dol", 0x11A06C, 0x4
.global lbl_8011D070
lbl_8011D070:
	.incbin "baserom.dol", 0x11A070, 0x4
.global lbl_8011D074
lbl_8011D074:
	.incbin "baserom.dol", 0x11A074, 0x4
.global lbl_8011D078
lbl_8011D078:
	.incbin "baserom.dol", 0x11A078, 0x28C
.global lbl_8011D304
lbl_8011D304:
	.incbin "baserom.dol", 0x11A304, 0x4
.global s_C__source_crashwoc_code_nu3dx_nu_8011d308
s_C__source_crashwoc_code_nu3dx_nu_8011d308:
	.incbin "baserom.dol", 0x11A308, 0x28
.global lbl_8011D330
lbl_8011D330:
	.incbin "baserom.dol", 0x11A330, 0x1C
.global lbl_8011D34C
lbl_8011D34C:
	.incbin "baserom.dol", 0x11A34C, 0x24
.global lbl_8011D370
lbl_8011D370:
	.incbin "baserom.dol", 0x11A370, 0x24
.global lbl_8011D394
lbl_8011D394:
	.incbin "baserom.dol", 0x11A394, 0x20
.global lbl_8011D3B4
lbl_8011D3B4:
	.incbin "baserom.dol", 0x11A3B4, 0x4
.global lbl_8011D3B8
lbl_8011D3B8:
	.incbin "baserom.dol", 0x11A3B8, 0x4
.global lbl_8011D3BC
lbl_8011D3BC:
	.incbin "baserom.dol", 0x11A3BC, 0x240
.global lbl_8011D5FC
lbl_8011D5FC:
	.incbin "baserom.dol", 0x11A5FC, 0x4
.global lbl_8011D600
lbl_8011D600:
	.incbin "baserom.dol", 0x11A600, 0x4
.global lbl_8011D604
lbl_8011D604:
	.incbin "baserom.dol", 0x11A604, 0x4
.global lbl_8011D608
lbl_8011D608:
	.incbin "baserom.dol", 0x11A608, 0x8
.global lbl_8011D610
lbl_8011D610:
	.incbin "baserom.dol", 0x11A610, 0x4
.global lbl_8011D614
lbl_8011D614:
	.incbin "baserom.dol", 0x11A614, 0x4
.global s_C__source_crashwoc_code_nu3dx_nu_8011d618
s_C__source_crashwoc_code_nu3dx_nu_8011d618:
	.incbin "baserom.dol", 0x11A618, 0x28
.global lbl_8011D640
lbl_8011D640:
	.incbin "baserom.dol", 0x11A640, 0x28
.global lbl_8011D668
lbl_8011D668:
	.incbin "baserom.dol", 0x11A668, 0x4
.global lbl_8011D66C
lbl_8011D66C:
	.incbin "baserom.dol", 0x11A66C, 0x4
.global lbl_8011D670
lbl_8011D670:
	.incbin "baserom.dol", 0x11A670, 0x4
.global lbl_8011D674
lbl_8011D674:
	.incbin "baserom.dol", 0x11A674, 0x4
.global lbl_8011D678
lbl_8011D678:
	.incbin "baserom.dol", 0x11A678, 0x4
.global lbl_8011D67C
lbl_8011D67C:
	.incbin "baserom.dol", 0x11A67C, 0x4
.global lbl_8011D680
lbl_8011D680:
	.incbin "baserom.dol", 0x11A680, 0x8
.global lbl_8011D688
lbl_8011D688:
	.incbin "baserom.dol", 0x11A688, 0x8
.global lbl_8011D690
lbl_8011D690:
	.incbin "baserom.dol", 0x11A690, 0x4
.global lbl_8011D694
lbl_8011D694:
	.incbin "baserom.dol", 0x11A694, 0x4
.global lbl_8011D698
lbl_8011D698:
	.incbin "baserom.dol", 0x11A698, 0xC
.global lbl_8011D6A4
lbl_8011D6A4:
	.incbin "baserom.dol", 0x11A6A4, 0x4
.global lbl_8011D6A8
lbl_8011D6A8:
	.incbin "baserom.dol", 0x11A6A8, 0x4
.global lbl_8011D6AC
lbl_8011D6AC:
	.incbin "baserom.dol", 0x11A6AC, 0x4
.global lbl_8011D6B0
lbl_8011D6B0:
	.incbin "baserom.dol", 0x11A6B0, 0x244
.global lbl_8011D8F4
lbl_8011D8F4:
	.incbin "baserom.dol", 0x11A8F4, 0x4
.global lbl_8011D8F8
lbl_8011D8F8:
	.incbin "baserom.dol", 0x11A8F8, 0x4
.global s_C__source_crashwoc_code_nu3dx_nu_8011d8fc
s_C__source_crashwoc_code_nu3dx_nu_8011d8fc:
	.incbin "baserom.dol", 0x11A8FC, 0x28
.global lbl_8011D924
lbl_8011D924:
	.incbin "baserom.dol", 0x11A924, 0x74
.global lbl_8011D998
lbl_8011D998:
	.incbin "baserom.dol", 0x11A998, 0x14
.global lbl_8011D9AC
lbl_8011D9AC:
	.incbin "baserom.dol", 0x11A9AC, 0x4
.global lbl_8011D9B0
lbl_8011D9B0:
	.incbin "baserom.dol", 0x11A9B0, 0x8
.global lbl_8011D9B8
lbl_8011D9B8:
	.incbin "baserom.dol", 0x11A9B8, 0x20
.global lbl_8011D9D8
lbl_8011D9D8:
	.incbin "baserom.dol", 0x11A9D8, 0x4
.global lbl_8011D9DC
lbl_8011D9DC:
	.incbin "baserom.dol", 0x11A9DC, 0x240
.global s_C__source_crashwoc_code_nu3dx_nu_8011dc1c
s_C__source_crashwoc_code_nu3dx_nu_8011dc1c:
	.incbin "baserom.dol", 0x11AC1C, 0x28
.global lbl_8011DC44
lbl_8011DC44:
	.incbin "baserom.dol", 0x11AC44, 0x24
.global lbl_8011DC68
lbl_8011DC68:
	.incbin "baserom.dol", 0x11AC68, 0x28
.global lbl_8011DC90
lbl_8011DC90:
	.incbin "baserom.dol", 0x11AC90, 0x8
.global lbl_8011DC98
lbl_8011DC98:
	.incbin "baserom.dol", 0x11AC98, 0x8
.global lbl_8011DCA0
lbl_8011DCA0:
	.incbin "baserom.dol", 0x11ACA0, 0x28
.global lbl_8011DCC8
lbl_8011DCC8:
	.incbin "baserom.dol", 0x11ACC8, 0x2C
.global lbl_8011DCF4
lbl_8011DCF4:
	.incbin "baserom.dol", 0x11ACF4, 0x24
.global lbl_8011DD18
lbl_8011DD18:
	.incbin "baserom.dol", 0x11AD18, 0x28
.global lbl_8011DD40
lbl_8011DD40:
	.incbin "baserom.dol", 0x11AD40, 0x20
.global lbl_8011DD60
lbl_8011DD60:
	.incbin "baserom.dol", 0x11AD60, 0x24
.global lbl_8011DD84
lbl_8011DD84:
	.incbin "baserom.dol", 0x11AD84, 0x28
.global lbl_8011DDAC
lbl_8011DDAC:
	.incbin "baserom.dol", 0x11ADAC, 0x20
.global lbl_8011DDCC
lbl_8011DDCC:
	.incbin "baserom.dol", 0x11ADCC, 0x90
.global lbl_8011DE5C
lbl_8011DE5C:
	.incbin "baserom.dol", 0x11AE5C, 0x8
.global lbl_8011DE64
lbl_8011DE64:
	.incbin "baserom.dol", 0x11AE64, 0x4
.global lbl_8011DE68
lbl_8011DE68:
	.incbin "baserom.dol", 0x11AE68, 0x4
.global lbl_8011DE6C
lbl_8011DE6C:
	.incbin "baserom.dol", 0x11AE6C, 0x4
.global lbl_8011DE70
lbl_8011DE70:
	.incbin "baserom.dol", 0x11AE70, 0x4
.global lbl_8011DE74
lbl_8011DE74:
	.incbin "baserom.dol", 0x11AE74, 0x28
.global lbl_8011DE9C
lbl_8011DE9C:
	.incbin "baserom.dol", 0x11AE9C, 0x4
.global lbl_8011DEA0
lbl_8011DEA0:
	.incbin "baserom.dol", 0x11AEA0, 0x4
.global lbl_8011DEA4
lbl_8011DEA4:
	.incbin "baserom.dol", 0x11AEA4, 0x30
.global lbl_8011DED4
lbl_8011DED4:
	.incbin "baserom.dol", 0x11AED4, 0x4
.global lbl_8011DED8
lbl_8011DED8:
	.incbin "baserom.dol", 0x11AED8, 0x8
.global lbl_8011DEE0
lbl_8011DEE0:
	.incbin "baserom.dol", 0x11AEE0, 0x8
.global lbl_8011DEE8
lbl_8011DEE8:
	.incbin "baserom.dol", 0x11AEE8, 0x4
.global lbl_8011DEEC
lbl_8011DEEC:
	.incbin "baserom.dol", 0x11AEEC, 0x28
.global lbl_8011DF14
lbl_8011DF14:
	.incbin "baserom.dol", 0x11AF14, 0x4
.global lbl_8011DF18
lbl_8011DF18:
	.incbin "baserom.dol", 0x11AF18, 0x4
.global lbl_8011DF1C
lbl_8011DF1C:
	.incbin "baserom.dol", 0x11AF1C, 0x4
.global lbl_8011DF20
lbl_8011DF20:
	.incbin "baserom.dol", 0x11AF20, 0x4
.global lbl_8011DF24
lbl_8011DF24:
	.incbin "baserom.dol", 0x11AF24, 0x4
.global lbl_8011DF28
lbl_8011DF28:
	.incbin "baserom.dol", 0x11AF28, 0x8
.global lbl_8011DF30
lbl_8011DF30:
	.incbin "baserom.dol", 0x11AF30, 0x4
.global lbl_8011DF34
lbl_8011DF34:
	.incbin "baserom.dol", 0x11AF34, 0x4
.global lbl_8011DF38
lbl_8011DF38:
	.incbin "baserom.dol", 0x11AF38, 0x8
.global lbl_8011DF40
lbl_8011DF40:
	.incbin "baserom.dol", 0x11AF40, 0x8
.global lbl_8011DF48
lbl_8011DF48:
	.incbin "baserom.dol", 0x11AF48, 0x4
.global lbl_8011DF4C
lbl_8011DF4C:
	.incbin "baserom.dol", 0x11AF4C, 0x4
.global lbl_8011DF50
lbl_8011DF50:
	.incbin "baserom.dol", 0x11AF50, 0x4
.global lbl_8011DF54
lbl_8011DF54:
	.incbin "baserom.dol", 0x11AF54, 0x4
.global lbl_8011DF58
lbl_8011DF58:
	.incbin "baserom.dol", 0x11AF58, 0x8
.global lbl_8011DF60
lbl_8011DF60:
	.incbin "baserom.dol", 0x11AF60, 0x4
.global lbl_8011DF64
lbl_8011DF64:
	.incbin "baserom.dol", 0x11AF64, 0x4
.global lbl_8011DF68
lbl_8011DF68:
	.incbin "baserom.dol", 0x11AF68, 0x4
.global lbl_8011DF6C
lbl_8011DF6C:
	.incbin "baserom.dol", 0x11AF6C, 0x240
.global s_C__source_crashwoc_code_nu3dx_nu_8011e1ac
s_C__source_crashwoc_code_nu3dx_nu_8011e1ac:
	.incbin "baserom.dol", 0x11B1AC, 0x28
.global lbl_8011E1D4
lbl_8011E1D4:
	.incbin "baserom.dol", 0x11B1D4, 0x2C
.global lbl_8011E200
lbl_8011E200:
	.incbin "baserom.dol", 0x11B200, 0x40
.global lbl_8011E240
lbl_8011E240:
	.incbin "baserom.dol", 0x11B240, 0x4
.global lbl_8011E244
lbl_8011E244:
	.incbin "baserom.dol", 0x11B244, 0x250
.global s_C__source_crashwoc_code_nu3dx_nu_8011e494
s_C__source_crashwoc_code_nu3dx_nu_8011e494:
	.incbin "baserom.dol", 0x11B494, 0x28
.global lbl_8011E4BC
lbl_8011E4BC:
	.incbin "baserom.dol", 0x11B4BC, 0x8
.global lbl_8011E4C4
lbl_8011E4C4:
	.incbin "baserom.dol", 0x11B4C4, 0x3C
.global s_Cannot_open_file___s_8011e500
s_Cannot_open_file___s_8011e500:
	.incbin "baserom.dol", 0x11B500, 0x254
.global s_C__source_crashwoc_code_nu3dx_nu_8011e754
s_C__source_crashwoc_code_nu3dx_nu_8011e754:
	.incbin "baserom.dol", 0x11B754, 0x2C
.global lbl_8011E780
lbl_8011E780:
	.incbin "baserom.dol", 0x11B780, 0x1C
.global lbl_8011E79C
lbl_8011E79C:
	.incbin "baserom.dol", 0x11B79C, 0x24
.global lbl_8011E7C0
lbl_8011E7C0:
	.incbin "baserom.dol", 0x11B7C0, 0x30
.global lbl_8011E7F0
lbl_8011E7F0:
	.incbin "baserom.dol", 0x11B7F0, 0xBC
.global lbl_8011E8AC
lbl_8011E8AC:
	.incbin "baserom.dol", 0x11B8AC, 0x38
.global lbl_8011E8E4
lbl_8011E8E4:
	.incbin "baserom.dol", 0x11B8E4, 0x38
.global lbl_8011E91C
lbl_8011E91C:
	.incbin "baserom.dol", 0x11B91C, 0x40
.global lbl_8011E95C
lbl_8011E95C:
	.incbin "baserom.dol", 0x11B95C, 0x38
.global lbl_8011E994
lbl_8011E994:
	.incbin "baserom.dol", 0x11B994, 0x27C
.global lbl_8011EC10
lbl_8011EC10:
	.incbin "baserom.dol", 0x11BC10, 0x8
.global lbl_8011EC18
lbl_8011EC18:
	.incbin "baserom.dol", 0x11BC18, 0x8
.global lbl_8011EC20
lbl_8011EC20:
	.incbin "baserom.dol", 0x11BC20, 0x8
.global lbl_8011EC28
lbl_8011EC28:
	.incbin "baserom.dol", 0x11BC28, 0x8
.global lbl_8011EC30
lbl_8011EC30:
	.incbin "baserom.dol", 0x11BC30, 0x4
.global lbl_8011EC34
lbl_8011EC34:
	.incbin "baserom.dol", 0x11BC34, 0x4
.global lbl_8011EC38
lbl_8011EC38:
	.incbin "baserom.dol", 0x11BC38, 0x244
.global s_stuff_Droplet1_dds_8011ee7c
s_stuff_Droplet1_dds_8011ee7c:
	.incbin "baserom.dol", 0x11BE7C, 0x18
.global lbl_8011EE94
lbl_8011EE94:
	.incbin "baserom.dol", 0x11BE94, 0x4
.global lbl_8011EE98
lbl_8011EE98:
	.incbin "baserom.dol", 0x11BE98, 0x4
.global lbl_8011EE9C
lbl_8011EE9C:
	.incbin "baserom.dol", 0x11BE9C, 0x4
.global lbl_8011EEA0
lbl_8011EEA0:
	.incbin "baserom.dol", 0x11BEA0, 0x4
.global lbl_8011EEA4
lbl_8011EEA4:
	.incbin "baserom.dol", 0x11BEA4, 0x4
.global lbl_8011EEA8
lbl_8011EEA8:
	.incbin "baserom.dol", 0x11BEA8, 0x4
.global lbl_8011EEAC
lbl_8011EEAC:
	.incbin "baserom.dol", 0x11BEAC, 0x4
.global lbl_8011EEB0
lbl_8011EEB0:
	.incbin "baserom.dol", 0x11BEB0, 0x4
.global lbl_8011EEB4
lbl_8011EEB4:
	.incbin "baserom.dol", 0x11BEB4, 0x4
.global lbl_8011EEB8
lbl_8011EEB8:
	.incbin "baserom.dol", 0x11BEB8, 0x4
.global lbl_8011EEBC
lbl_8011EEBC:
	.incbin "baserom.dol", 0x11BEBC, 0x4
.global lbl_8011EEC0
lbl_8011EEC0:
	.incbin "baserom.dol", 0x11BEC0, 0x4
.global lbl_8011EEC4
lbl_8011EEC4:
	.incbin "baserom.dol", 0x11BEC4, 0x4
.global lbl_8011EEC8
lbl_8011EEC8:
	.incbin "baserom.dol", 0x11BEC8, 0x8
.global lbl_8011EED0
lbl_8011EED0:
	.incbin "baserom.dol", 0x11BED0, 0x8
.global lbl_8011EED8
lbl_8011EED8:
	.incbin "baserom.dol", 0x11BED8, 0x8
.global lbl_8011EEE0
lbl_8011EEE0:
	.incbin "baserom.dol", 0x11BEE0, 0x4
.global lbl_8011EEE4
lbl_8011EEE4:
	.incbin "baserom.dol", 0x11BEE4, 0x4
.global lbl_8011EEE8
lbl_8011EEE8:
	.incbin "baserom.dol", 0x11BEE8, 0x4
.global lbl_8011EEEC
lbl_8011EEEC:
	.incbin "baserom.dol", 0x11BEEC, 0x4
.global lbl_8011EEF0
lbl_8011EEF0:
	.incbin "baserom.dol", 0x11BEF0, 0x8
.global lbl_8011EEF8
lbl_8011EEF8:
	.incbin "baserom.dol", 0x11BEF8, 0x4
.global lbl_8011EEFC
lbl_8011EEFC:
	.incbin "baserom.dol", 0x11BEFC, 0x4
.global lbl_8011EF00
lbl_8011EF00:
	.incbin "baserom.dol", 0x11BF00, 0x8
.global lbl_8011EF08
lbl_8011EF08:
	.incbin "baserom.dol", 0x11BF08, 0x8
.global s_C__source_crashwoc_code_nu3dx_nu_8011ef10
s_C__source_crashwoc_code_nu3dx_nu_8011ef10:
	.incbin "baserom.dol", 0x11BF10, 0x28
.global lbl_8011EF38
lbl_8011EF38:
	.incbin "baserom.dol", 0x11BF38, 0x8
.global lbl_8011EF40
lbl_8011EF40:
	.incbin "baserom.dol", 0x11BF40, 0x4
.global lbl_8011EF44
lbl_8011EF44:
	.incbin "baserom.dol", 0x11BF44, 0x4
.global lbl_8011EF48
lbl_8011EF48:
	.incbin "baserom.dol", 0x11BF48, 0x4
.global lbl_8011EF4C
lbl_8011EF4C:
	.incbin "baserom.dol", 0x11BF4C, 0x4
.global lbl_8011EF50
lbl_8011EF50:
	.incbin "baserom.dol", 0x11BF50, 0x4
.global lbl_8011EF54
lbl_8011EF54:
	.incbin "baserom.dol", 0x11BF54, 0x4
.global lbl_8011EF58
lbl_8011EF58:
	.incbin "baserom.dol", 0x11BF58, 0x4
.global lbl_8011EF5C
lbl_8011EF5C:
	.incbin "baserom.dol", 0x11BF5C, 0x4
.global lbl_8011EF60
lbl_8011EF60:
	.incbin "baserom.dol", 0x11BF60, 0x4
.global lbl_8011EF64
lbl_8011EF64:
	.incbin "baserom.dol", 0x11BF64, 0x4
.global lbl_8011EF68
lbl_8011EF68:
	.incbin "baserom.dol", 0x11BF68, 0x244
.global s_NuError____s_Line__d___8011f1ac
s_NuError____s_Line__d___8011f1ac:
	.incbin "baserom.dol", 0x11C1AC, 0x298
.global lbl_8011F444
lbl_8011F444:
	.incbin "baserom.dol", 0x11C444, 0x4
.global lbl_8011F448
lbl_8011F448:
	.incbin "baserom.dol", 0x11C448, 0x4
.global lbl_8011F44C
lbl_8011F44C:
	.incbin "baserom.dol", 0x11C44C, 0x4
.global s_C__source_crashwoc_code_nucore_n_8011f450
s_C__source_crashwoc_code_nucore_n_8011f450:
	.incbin "baserom.dol", 0x11C450, 0x28
.global lbl_8011F478
lbl_8011F478:
	.incbin "baserom.dol", 0x11C478, 0x8
.global lbl_8011F480
lbl_8011F480:
	.incbin "baserom.dol", 0x11C480, 0x18
.global lbl_8011F498
lbl_8011F498:
	.incbin "baserom.dol", 0x11C498, 0x1C
.global lbl_8011F4B4
lbl_8011F4B4:
	.incbin "baserom.dol", 0x11C4B4, 0x4
.global lbl_8011F4B8
lbl_8011F4B8:
	.incbin "baserom.dol", 0x11C4B8, 0x4A4
.global s_C__source_crashwoc_code_nucore_n_8011f95c
s_C__source_crashwoc_code_nucore_n_8011f95c:
	.incbin "baserom.dol", 0x11C95C, 0x28
.global lbl_8011F984
lbl_8011F984:
	.incbin "baserom.dol", 0x11C984, 0x264
.global lbl_8011FBE8
lbl_8011FBE8:
	.incbin "baserom.dol", 0x11CBE8, 0x240
.global lbl_8011FE28
lbl_8011FE28:
	.incbin "baserom.dol", 0x11CE28, 0x4
.global lbl_8011FE2C
lbl_8011FE2C:
	.incbin "baserom.dol", 0x11CE2C, 0x4
.global lbl_8011FE30
lbl_8011FE30:
	.incbin "baserom.dol", 0x11CE30, 0x244
.global mident_153
mident_153:
	.incbin "baserom.dol", 0x11D074, 0x40
.global lbl_801200B4
lbl_801200B4:
	.incbin "baserom.dol", 0x11D0B4, 0x4
.global lbl_801200B8
lbl_801200B8:
	.incbin "baserom.dol", 0x11D0B8, 0x4
.global lbl_801200BC
lbl_801200BC:
	.incbin "baserom.dol", 0x11D0BC, 0x4
.global lbl_801200C0
lbl_801200C0:
	.incbin "baserom.dol", 0x11D0C0, 0x4
.global lbl_801200C4
lbl_801200C4:
	.incbin "baserom.dol", 0x11D0C4, 0x4
.global lbl_801200C8
lbl_801200C8:
	.incbin "baserom.dol", 0x11D0C8, 0x4
.global lbl_801200CC
lbl_801200CC:
	.incbin "baserom.dol", 0x11D0CC, 0x4
.global lbl_801200D0
lbl_801200D0:
	.incbin "baserom.dol", 0x11D0D0, 0x4
.global lbl_801200D4
lbl_801200D4:
	.incbin "baserom.dol", 0x11D0D4, 0x4
.global lbl_801200D8
lbl_801200D8:
	.incbin "baserom.dol", 0x11D0D8, 0x4
.global lbl_801200DC
lbl_801200DC:
	.incbin "baserom.dol", 0x11D0DC, 0x4
.global lbl_801200E0
lbl_801200E0:
	.incbin "baserom.dol", 0x11D0E0, 0x4
.global lbl_801200E4
lbl_801200E4:
	.incbin "baserom.dol", 0x11D0E4, 0x4
.global lbl_801200E8
lbl_801200E8:
	.incbin "baserom.dol", 0x11D0E8, 0x4
.global lbl_801200EC
lbl_801200EC:
	.incbin "baserom.dol", 0x11D0EC, 0x4
.global lbl_801200F0
lbl_801200F0:
	.incbin "baserom.dol", 0x11D0F0, 0x4
.global lbl_801200F4
lbl_801200F4:
	.incbin "baserom.dol", 0x11D0F4, 0x4
.global lbl_801200F8
lbl_801200F8:
	.incbin "baserom.dol", 0x11D0F8, 0x4
.global lbl_801200FC
lbl_801200FC:
	.incbin "baserom.dol", 0x11D0FC, 0x4
.global lbl_80120100
lbl_80120100:
	.incbin "baserom.dol", 0x11D100, 0x4
.global lbl_80120104
lbl_80120104:
	.incbin "baserom.dol", 0x11D104, 0x4
.global lbl_80120108
lbl_80120108:
	.incbin "baserom.dol", 0x11D108, 0x8
.global lbl_80120110
lbl_80120110:
	.incbin "baserom.dol", 0x11D110, 0x10
.global lbl_80120120
lbl_80120120:
	.incbin "baserom.dol", 0x11D120, 0x4
.global lbl_80120124
lbl_80120124:
	.incbin "baserom.dol", 0x11D124, 0x4
.global lbl_80120128
lbl_80120128:
	.incbin "baserom.dol", 0x11D128, 0x4
.global lbl_8012012C
lbl_8012012C:
	.incbin "baserom.dol", 0x11D12C, 0x4
.global lbl_80120130
lbl_80120130:
	.incbin "baserom.dol", 0x11D130, 0x4
.global lbl_80120134
lbl_80120134:
	.incbin "baserom.dol", 0x11D134, 0x4
.global lbl_80120138
lbl_80120138:
	.incbin "baserom.dol", 0x11D138, 0x18
.global lbl_80120150
lbl_80120150:
	.incbin "baserom.dol", 0x11D150, 0x4
.global lbl_80120154
lbl_80120154:
	.incbin "baserom.dol", 0x11D154, 0x4
.global lbl_80120158
lbl_80120158:
	.incbin "baserom.dol", 0x11D158, 0x4
.global lbl_8012015C
lbl_8012015C:
	.incbin "baserom.dol", 0x11D15C, 0x480
.global lbl_801205DC
lbl_801205DC:
	.incbin "baserom.dol", 0x11D5DC, 0xC
.global lbl_801205E8
lbl_801205E8:
	.incbin "baserom.dol", 0x11D5E8, 0x8
.global lbl_801205F0
lbl_801205F0:
	.incbin "baserom.dol", 0x11D5F0, 0x4
.global lbl_801205F4
lbl_801205F4:
	.incbin "baserom.dol", 0x11D5F4, 0x4
.global lbl_801205F8
lbl_801205F8:
	.incbin "baserom.dol", 0x11D5F8, 0x4
.global lbl_801205FC
lbl_801205FC:
	.incbin "baserom.dol", 0x11D5FC, 0x4
.global lbl_80120600
lbl_80120600:
	.incbin "baserom.dol", 0x11D600, 0x8
.global lbl_80120608
lbl_80120608:
	.incbin "baserom.dol", 0x11D608, 0x8
.global lbl_80120610
lbl_80120610:
	.incbin "baserom.dol", 0x11D610, 0x8
.global lbl_80120618
lbl_80120618:
	.incbin "baserom.dol", 0x11D618, 0x8
.global lbl_80120620
lbl_80120620:
	.incbin "baserom.dol", 0x11D620, 0x244
.global lbl_80120864
lbl_80120864:
	.incbin "baserom.dol", 0x11D864, 0x244
.global lbl_80120AA8
lbl_80120AA8:
	.incbin "baserom.dol", 0x11DAA8, 0x8
.global lbl_80120AB0
lbl_80120AB0:
	.incbin "baserom.dol", 0x11DAB0, 0x4
.global lbl_80120AB4
lbl_80120AB4:
	.incbin "baserom.dol", 0x11DAB4, 0x4
.global lbl_80120AB8
lbl_80120AB8:
	.incbin "baserom.dol", 0x11DAB8, 0x244
.global lbl_80120CFC
lbl_80120CFC:
	.incbin "baserom.dol", 0x11DCFC, 0x4
.global lbl_80120D00
lbl_80120D00:
	.incbin "baserom.dol", 0x11DD00, 0x4
.global lbl_80120D04
lbl_80120D04:
	.incbin "baserom.dol", 0x11DD04, 0x4
.global lbl_80120D08
lbl_80120D08:
	.incbin "baserom.dol", 0x11DD08, 0x4
.global lbl_80120D0C
lbl_80120D0C:
	.incbin "baserom.dol", 0x11DD0C, 0x240
.global lbl_80120F4C
lbl_80120F4C:
	.incbin "baserom.dol", 0x11DF4C, 0x8
.global lbl_80120F54
lbl_80120F54:
	.incbin "baserom.dol", 0x11DF54, 0x240
.global lbl_80121194
lbl_80121194:
	.incbin "baserom.dol", 0x11E194, 0x4
.global lbl_80121198
lbl_80121198:
	.incbin "baserom.dol", 0x11E198, 0x8
.global lbl_801211A0
lbl_801211A0:
	.incbin "baserom.dol", 0x11E1A0, 0x4
.global lbl_801211A4
lbl_801211A4:
	.incbin "baserom.dol", 0x11E1A4, 0x4
.global lbl_801211A8
lbl_801211A8:
	.incbin "baserom.dol", 0x11E1A8, 0x4
.global lbl_801211AC
lbl_801211AC:
	.incbin "baserom.dol", 0x11E1AC, 0x4
.global lbl_801211B0
lbl_801211B0:
	.incbin "baserom.dol", 0x11E1B0, 0x244
.global lbl_801213F4
lbl_801213F4:
	.incbin "baserom.dol", 0x11E3F4, 0x4
.global lbl_801213F8
lbl_801213F8:
	.incbin "baserom.dol", 0x11E3F8, 0x4
.global lbl_801213FC
lbl_801213FC:
	.incbin "baserom.dol", 0x11E3FC, 0x250
.global numtx_identity
numtx_identity:
	.incbin "baserom.dol", 0x11E64C, 0x40
.global s_C__source_crashwoc_code_nuxbox_d_8012168c
s_C__source_crashwoc_code_nuxbox_d_8012168c:
	.incbin "baserom.dol", 0x11E68C, 0x2C
.global lbl_801216B8
lbl_801216B8:
	.incbin "baserom.dol", 0x11E6B8, 0x30
.global lbl_801216E8
lbl_801216E8:
	.incbin "baserom.dol", 0x11E6E8, 0x4
.global lbl_801216EC
lbl_801216EC:
	.incbin "baserom.dol", 0x11E6EC, 0x4
.global lbl_801216F0
lbl_801216F0:
	.incbin "baserom.dol", 0x11E6F0, 0x4
.global lbl_801216F4
lbl_801216F4:
	.incbin "baserom.dol", 0x11E6F4, 0x4
.global lbl_801216F8
lbl_801216F8:
	.incbin "baserom.dol", 0x11E6F8, 0x4
.global lbl_801216FC
lbl_801216FC:
	.incbin "baserom.dol", 0x11E6FC, 0x4
.global lbl_80121700
lbl_80121700:
	.incbin "baserom.dol", 0x11E700, 0x4
.global lbl_80121704
lbl_80121704:
	.incbin "baserom.dol", 0x11E704, 0x4
.global lbl_80121708
lbl_80121708:
	.incbin "baserom.dol", 0x11E708, 0x4
.global lbl_8012170C
lbl_8012170C:
	.incbin "baserom.dol", 0x11E70C, 0x4
.global lbl_80121710
lbl_80121710:
	.incbin "baserom.dol", 0x11E710, 0x4
.global lbl_80121714
lbl_80121714:
	.incbin "baserom.dol", 0x11E714, 0x4
.global lbl_80121718
lbl_80121718:
	.incbin "baserom.dol", 0x11E718, 0x4
.global lbl_8012171C
lbl_8012171C:
	.incbin "baserom.dol", 0x11E71C, 0x4
.global lbl_80121720
lbl_80121720:
	.incbin "baserom.dol", 0x11E720, 0x8
.global lbl_80121728
lbl_80121728:
	.incbin "baserom.dol", 0x11E728, 0x4
.global lbl_8012172C
lbl_8012172C:
	.incbin "baserom.dol", 0x11E72C, 0x4
.global lbl_80121730
lbl_80121730:
	.incbin "baserom.dol", 0x11E730, 0x8
.global lbl_80121738
lbl_80121738:
	.incbin "baserom.dol", 0x11E738, 0xC
.global lbl_80121744
lbl_80121744:
	.incbin "baserom.dol", 0x11E744, 0x8
.global lbl_8012174C
lbl_8012174C:
	.incbin "baserom.dol", 0x11E74C, 0x4
.global lbl_80121750
lbl_80121750:
	.incbin "baserom.dol", 0x11E750, 0x8
.global lbl_80121758
lbl_80121758:
	.incbin "baserom.dol", 0x11E758, 0x8
.global lbl_80121760
lbl_80121760:
	.incbin "baserom.dol", 0x11E760, 0x8
.global lbl_80121768
lbl_80121768:
	.incbin "baserom.dol", 0x11E768, 0x8
.global lbl_80121770
lbl_80121770:
	.incbin "baserom.dol", 0x11E770, 0x8
.global lbl_80121778
lbl_80121778:
	.incbin "baserom.dol", 0x11E778, 0x4
.global lbl_8012177C
lbl_8012177C:
	.incbin "baserom.dol", 0x11E77C, 0x4
.global lbl_80121780
lbl_80121780:
	.incbin "baserom.dol", 0x11E780, 0x4
.global lbl_80121784
lbl_80121784:
	.incbin "baserom.dol", 0x11E784, 0x4
.global lbl_80121788
lbl_80121788:
	.incbin "baserom.dol", 0x11E788, 0x8
.global lbl_80121790
lbl_80121790:
	.incbin "baserom.dol", 0x11E790, 0x8
.global lbl_80121798
lbl_80121798:
	.incbin "baserom.dol", 0x11E798, 0x8
.global lbl_801217A0
lbl_801217A0:
	.incbin "baserom.dol", 0x11E7A0, 0x8
.global lbl_801217A8
lbl_801217A8:
	.incbin "baserom.dol", 0x11E7A8, 0x4
.global lbl_801217AC
lbl_801217AC:
	.incbin "baserom.dol", 0x11E7AC, 0x4
.global lbl_801217B0
lbl_801217B0:
	.incbin "baserom.dol", 0x11E7B0, 0x4
.global lbl_801217B4
lbl_801217B4:
	.incbin "baserom.dol", 0x11E7B4, 0x4
.global lbl_801217B8
lbl_801217B8:
	.incbin "baserom.dol", 0x11E7B8, 0x4
.global lbl_801217BC
lbl_801217BC:
	.incbin "baserom.dol", 0x11E7BC, 0x4
.global lbl_801217C0
lbl_801217C0:
	.incbin "baserom.dol", 0x11E7C0, 0x264
.global s_C__source_crashwoc_code_system_g_80121a24
s_C__source_crashwoc_code_system_g_80121a24:
	.incbin "baserom.dol", 0x11EA24, 0x28
.global s_GCFileRead_Attempt_to_read_less_t_80121a4c
s_GCFileRead_Attempt_to_read_less_t_80121a4c:
	.incbin "baserom.dol", 0x11EA4C, 0x38
.global s_GCFileRead_Buf_not_aligned_80121a84
s_GCFileRead_Buf_not_aligned_80121a84:
	.incbin "baserom.dol", 0x11EA84, 0x1C
.global s_GCFileRead_Seek_offset_must_be_m_80121aa0
s_GCFileRead_Seek_offset_must_be_m_80121aa0:
	.incbin "baserom.dol", 0x11EAA0, 0x30
.global s_GCFileRead_Seek_offset_outside_o_80121ad0
s_GCFileRead_Seek_offset_outside_o_80121ad0:
	.incbin "baserom.dol", 0x11EAD0, 0x28
.global s_fd__d_size__d_count__d_offset__d_80121af8
s_fd__d_size__d_count__d_offset__d_80121af8:
	.incbin "baserom.dol", 0x11EAF8, 0x2C
.global s_fread_80121b24
s_fread_80121b24:
	.incbin "baserom.dol", 0x11EB24, 0x8
.global s_fseek_80121b2c
s_fseek_80121b2c:
	.incbin "baserom.dol", 0x11EB2C, 0xC
.global PadChanMask
PadChanMask:
	.incbin "baserom.dol", 0x11EB38, 0x10
.global lbl_80121B48
lbl_80121B48:
	.incbin "baserom.dol", 0x11EB48, 0x8
.global s_Timeout_to_JOYBOOT__chan__d___80121b50
s_Timeout_to_JOYBOOT__chan__d___80121b50:
	.incbin "baserom.dol", 0x11EB50, 0xA0
.global s_GbaSetport__An_error_occurred_to_80121bf0
s_GbaSetport__An_error_occurred_to_80121bf0:
	.incbin "baserom.dol", 0x11EBF0, 0x174
.global s_GbaSetport__An_error_occurred_to_80121d64
s_GbaSetport__An_error_occurred_to_80121d64:
	.incbin "baserom.dol", 0x11ED64, 0x98
.global s_Timeout_to_JOYREBOOT__chan__d___80121dfc
s_Timeout_to_JOYREBOOT__chan__d___80121dfc:
	.incbin "baserom.dol", 0x11EDFC, 0x24
.global s_C__source_crashwoc_code_system_g_80121e20
s_C__source_crashwoc_code_system_g_80121e20:
	.incbin "baserom.dol", 0x11EE20, 0x28
.global s_Unkonwn_status__80121e48
s_Unkonwn_status__80121e48:
	.incbin "baserom.dol", 0x11EE48, 0x58
.global s__crashoot_bin_80121ea0
s__crashoot_bin_80121ea0:
	.incbin "baserom.dol", 0x11EEA0, 0x10
.global s_The_client_file_does_not_found__80121eb0
s_The_client_file_does_not_found__80121eb0:
	.incbin "baserom.dol", 0x11EEB0, 0x24
.global s_The_client_file_size_is_too_larg_80121ed4
s_The_client_file_size_is_too_larg_80121ed4:
	.incbin "baserom.dol", 0x11EED4, 0x24
.global s_The_client_file_cannot_read__80121ef8
s_The_client_file_cannot_read__80121ef8:
	.incbin "baserom.dol", 0x11EEF8, 0x20
.global s_NOGBA_80121f18
s_NOGBA_80121f18:
	.incbin "baserom.dol", 0x11EF18, 0x8
.global s_Booted_80121f20
s_Booted_80121f20:
	.incbin "baserom.dol", 0x11EF20, 0x98
.global s_C__source_crashwoc_code_system_g_80121fb8
s_C__source_crashwoc_code_system_g_80121fb8:
	.incbin "baserom.dol", 0x11EFB8, 0x2C
.global s_DEMOInit__invalid_TV_format_80121fe4
s_DEMOInit__invalid_TV_format_80121fe4:
	.incbin "baserom.dol", 0x11EFE4, 0x24
.global lbl_80122008
lbl_80122008:
	.incbin "baserom.dol", 0x11F008, 0x8
.global lbl_80122010
lbl_80122010:
	.incbin "baserom.dol", 0x11F010, 0x4
.global lbl_80122014
lbl_80122014:
	.incbin "baserom.dol", 0x11F014, 0x4
.global lbl_80122018
lbl_80122018:
	.incbin "baserom.dol", 0x11F018, 0x8
.global lbl_80122020
lbl_80122020:
	.incbin "baserom.dol", 0x11F020, 0x4
.global lbl_80122024
lbl_80122024:
	.incbin "baserom.dol", 0x11F024, 0x7C
.global s_GP_status__d_d_d_d_d_d_____801220a0
s_GP_status__d_d_d_d_d_d_____801220a0:
	.incbin "baserom.dol", 0x11F0A0, 0x1C
.global s_GP_hang_due_to_XF_stall_bug__801220bc
s_GP_hang_due_to_XF_stall_bug__801220bc:
	.incbin "baserom.dol", 0x11F0BC, 0x20
.global s_GP_hang_due_to_unterminated_prim_801220dc
s_GP_hang_due_to_unterminated_prim_801220dc:
	.incbin "baserom.dol", 0x11F0DC, 0x28
.global s_GP_hang_due_to_illegal_instructi_80122104
s_GP_hang_due_to_illegal_instructi_80122104:
	.incbin "baserom.dol", 0x11F104, 0x28
.global s_GP_appears_to_be_not_hung__waiti_8012212c
s_GP_appears_to_be_not_hung__waiti_8012212c:
	.incbin "baserom.dol", 0x11F12C, 0x30
.global s_GP_is_in_unknown_state__8012215c
s_GP_is_in_unknown_state__8012215c:
	.incbin "baserom.dol", 0x11F15C, 0x1C
.global lbl_80122178
lbl_80122178:
	.incbin "baserom.dol", 0x11F178, 0x8
.global lbl_80122180
lbl_80122180:
	.incbin "baserom.dol", 0x11F180, 0x8
.global lbl_80122188
lbl_80122188:
	.incbin "baserom.dol", 0x11F188, 0x8
.global lbl_80122190
lbl_80122190:
	.incbin "baserom.dol", 0x11F190, 0x8
.global lbl_80122198
lbl_80122198:
	.incbin "baserom.dol", 0x11F198, 0x4
.global lbl_8012219C
lbl_8012219C:
	.incbin "baserom.dol", 0x11F19C, 0xCC
.global lbl_80122268
lbl_80122268:
	.incbin "baserom.dol", 0x11F268, 0x4
.global lbl_8012226C
lbl_8012226C:
	.incbin "baserom.dol", 0x11F26C, 0x4
.global lbl_80122270
lbl_80122270:
	.incbin "baserom.dol", 0x11F270, 0x4
.global lbl_80122274
lbl_80122274:
	.incbin "baserom.dol", 0x11F274, 0x4
.global s_C__source_crashwoc_code_system_g_80122278
s_C__source_crashwoc_code_system_g_80122278:
	.incbin "baserom.dol", 0x11F278, 0x28
.global s_Out_Of_Memory___Frame_Buffer_Cop_801222a0
s_Out_Of_Memory___Frame_Buffer_Cop_801222a0:
	.incbin "baserom.dol", 0x11F2A0, 0x28
.global lbl_801222C8
lbl_801222C8:
	.incbin "baserom.dol", 0x11F2C8, 0x4
.global lbl_801222CC
lbl_801222CC:
	.incbin "baserom.dol", 0x11F2CC, 0x4
.global lbl_801222D0
lbl_801222D0:
	.incbin "baserom.dol", 0x11F2D0, 0x4
.global lbl_801222D4
lbl_801222D4:
	.incbin "baserom.dol", 0x11F2D4, 0x4
.global s_FATAL_ERROR___GAME_HALTED_801222d8
s_FATAL_ERROR___GAME_HALTED_801222d8:
	.incbin "baserom.dol", 0x11F2D8, 0x1C
.global s_REPORT_THE_FOLLOWING_MESSAGE_AND_801222f4
s_REPORT_THE_FOLLOWING_MESSAGE_AND_801222f4:
	.incbin "baserom.dol", 0x11F2F4, 0x34
.global lbl_80122328
lbl_80122328:
	.incbin "baserom.dol", 0x11F328, 0x4
.global lbl_8012232C
lbl_8012232C:
	.incbin "baserom.dol", 0x11F32C, 0x4
.global lbl_80122330
lbl_80122330:
	.incbin "baserom.dol", 0x11F330, 0x4
.global lbl_80122334
lbl_80122334:
	.incbin "baserom.dol", 0x11F334, 0x4
.global s_ZCMP_En__d_Up__d_Mo__d_80122338
s_ZCMP_En__d_Up__d_Mo__d_80122338:
	.incbin "baserom.dol", 0x11F338, 0x18
.global s_BLEND_En__d_Sr__d_Ds__d_80122350
s_BLEND_En__d_Sr__d_Ds__d_80122350:
	.incbin "baserom.dol", 0x11F350, 0x1C
.global lbl_8012236C
lbl_8012236C:
	.incbin "baserom.dol", 0x11F36C, 0x4
.global lbl_80122370
lbl_80122370:
	.incbin "baserom.dol", 0x11F370, 0x4
.global lbl_80122374
lbl_80122374:
	.incbin "baserom.dol", 0x11F374, 0x4
.global lbl_80122378
lbl_80122378:
	.incbin "baserom.dol", 0x11F378, 0x4
.global lbl_8012237C
lbl_8012237C:
	.incbin "baserom.dol", 0x11F37C, 0x4
.global lbl_80122380
lbl_80122380:
	.incbin "baserom.dol", 0x11F380, 0x4
.global lbl_80122384
lbl_80122384:
	.incbin "baserom.dol", 0x11F384, 0x4
.global lbl_80122388
lbl_80122388:
	.incbin "baserom.dol", 0x11F388, 0x4
.global lbl_8012238C
lbl_8012238C:
	.incbin "baserom.dol", 0x11F38C, 0x4
.global lbl_80122390
lbl_80122390:
	.incbin "baserom.dol", 0x11F390, 0x4
.global lbl_80122394
lbl_80122394:
	.incbin "baserom.dol", 0x11F394, 0x4
.global s_C__source_crashwoc_code_system_g_80122398
s_C__source_crashwoc_code_system_g_80122398:
	.incbin "baserom.dol", 0x11F398, 0x3C
.global s_GS_TexSelect1_801223d4
s_GS_TexSelect1_801223d4:
	.incbin "baserom.dol", 0x11F3D4, 0x10
.global s_GS_TexSelect2_801223e4
s_GS_TexSelect2_801223e4:
	.incbin "baserom.dol", 0x11F3E4, 0x2C
.global s__sfx__s_adp_80122410
s__sfx__s_adp_80122410:
	.incbin "baserom.dol", 0x11F410, 0xC
.global s_Cannot_open__s_8012241c
s_Cannot_open__s_8012241c:
	.incbin "baserom.dol", 0x11F41C, 0x10
.global s_AMPushBuffered____Unable_to_open_8012242c
s_AMPushBuffered____Unable_to_open_8012242c:
	.incbin "baserom.dol", 0x11F42C, 0x2C
.global s_C__source_crashwoc_code_system_g_80122458
s_C__source_crashwoc_code_system_g_80122458:
	.incbin "baserom.dol", 0x11F458, 0x2C
.global s_AM__FATAL_ERROR_80122484
s_AM__FATAL_ERROR_80122484:
	.incbin "baserom.dol", 0x11F484, 0x14
.global s_Channel_out_of_range_80122498
s_Channel_out_of_range_80122498:
	.incbin "baserom.dol", 0x11F498, 0x34
.global s__sfx_generic_global_spd_801224cc
s__sfx_generic_global_spd_801224cc:
	.incbin "baserom.dol", 0x11F4CC, 0x14C
.global s__sfx_levspec__s_spt_80122618
s__sfx_levspec__s_spt_80122618:
	.incbin "baserom.dol", 0x11F618, 0x14
.global s__sfx_levspec__s_spd_8012262c
s__sfx_levspec__s_spd_8012262c:
	.incbin "baserom.dol", 0x11F62C, 0x14
.global lbl_80122640
lbl_80122640:
	.incbin "baserom.dol", 0x11F640, 0x8
.global lbl_80122648
lbl_80122648:
	.incbin "baserom.dol", 0x11F648, 0x4
.global lbl_8012264C
lbl_8012264C:
	.incbin "baserom.dol", 0x11F64C, 0x4
.global lbl_80122650
lbl_80122650:
	.incbin "baserom.dol", 0x11F650, 0x8
.global lbl_80122658
lbl_80122658:
	.incbin "baserom.dol", 0x11F658, 0x8
.global lbl_80122660
lbl_80122660:
	.incbin "baserom.dol", 0x11F660, 0x8
.global lbl_80122668
lbl_80122668:
	.incbin "baserom.dol", 0x11F668, 0x8
.global lbl_80122670
lbl_80122670:
	.incbin "baserom.dol", 0x11F670, 0x8
.global lbl_80122678
lbl_80122678:
	.incbin "baserom.dol", 0x11F678, 0x244
.global s_RGB16_RGBA16_801228bc
s_RGB16_RGBA16_801228bc:
	.incbin "baserom.dol", 0x11F8BC, 0x10
.global s_RGB24_801228cc
s_RGB24_801228cc:
	.incbin "baserom.dol", 0x11F8CC, 0x8
.global s_RGB32_801228d4
s_RGB32_801228d4:
	.incbin "baserom.dol", 0x11F8D4, 0x8
.global lbl_801228DC
lbl_801228DC:
	.incbin "baserom.dol", 0x11F8DC, 0x8
.global lbl_801228E4
lbl_801228E4:
	.incbin "baserom.dol", 0x11F8E4, 0x8
.global s_C__source_crashwoc_code_system_c_801228ec
s_C__source_crashwoc_code_system_c_801228ec:
	.incbin "baserom.dol", 0x11F8EC, 0x2C
.global lbl_80122918
lbl_80122918:
	.incbin "baserom.dol", 0x11F918, 0x28
.global lbl_80122940
lbl_80122940:
	.incbin "baserom.dol", 0x11F940, 0x8
.global lbl_80122948
lbl_80122948:
	.incbin "baserom.dol", 0x11F948, 0x4
.global lbl_8012294C
lbl_8012294C:
	.incbin "baserom.dol", 0x11F94C, 0x4
.global lbl_80122950
lbl_80122950:
	.incbin "baserom.dol", 0x11F950, 0x4
.global lbl_80122954
lbl_80122954:
	.incbin "baserom.dol", 0x11F954, 0x1AC
.global lbl_80122B00
lbl_80122B00:
	.incbin "baserom.dol", 0x11FB00, 0x4
.global lbl_80122B04
lbl_80122B04:
	.incbin "baserom.dol", 0x11FB04, 0x4
.global s_C__source_crashwoc_code_system_m_80122b08
s_C__source_crashwoc_code_system_m_80122b08:
	.incbin "baserom.dol", 0x11FB08, 0x2C
.global s_invalid_version_number_for_textu_80122b34
s_invalid_version_number_for_textu_80122b34:
	.incbin "baserom.dol", 0x11FB34, 0x2C
.global s__icon_tpl_80122b60
s__icon_tpl_80122b60:
	.incbin "baserom.dol", 0x11FB60, 0xC
.global s__d____d_80122b6c
s__d____d_80122b6c:
	.incbin "baserom.dol", 0x11FB6C, 0xC
.global s_done____d__80122b78
s_done____d__80122b78:
	.incbin "baserom.dol", 0x11FB78, 0xC
.global s_CARDCheck_80122b84
s_CARDCheck_80122b84:
	.incbin "baserom.dol", 0x11FB84, 0xC
.global s_failed____d__80122b90
s_failed____d__80122b90:
	.incbin "baserom.dol", 0x11FB90, 0x10
.global s_CRASHWOC_80122ba0
s_CRASHWOC_80122ba0:
	.incbin "baserom.dol", 0x11FBA0, 0xC
.global s_Header_failed_80122bac
s_Header_failed_80122bac:
	.incbin "baserom.dol", 0x11FBAC, 0x10
.global s_Header_OK_80122bbc
s_Header_OK_80122bbc:
	.incbin "baserom.dol", 0x11FBBC, 0xC
.global s_Saving_80122bc8
s_Saving_80122bc8:
	.incbin "baserom.dol", 0x11FBC8, 0x8
.global s_CARDMount1_80122bd0
s_CARDMount1_80122bd0:
	.incbin "baserom.dol", 0x11FBD0, 0xC
.global s_CARDFreeBlocks_80122bdc
s_CARDFreeBlocks_80122bdc:
	.incbin "baserom.dol", 0x11FBDC, 0x10
.global s__d_bytes___d_blocks__free___d_fi_80122bec
s__d_bytes___d_blocks__free___d_fi_80122bec:
	.incbin "baserom.dol", 0x11FBEC, 0x2C
.global s_Loading_1_80122c18
s_Loading_1_80122c18:
	.incbin "baserom.dol", 0x11FC18, 0xC
.global s_Loading_2___flag__d_80122c24
s_Loading_2___flag__d_80122c24:
	.incbin "baserom.dol", 0x11FC24, 0x18
.global s_DoOpen____d__80122c3c
s_DoOpen____d__80122c3c:
	.incbin "baserom.dol", 0x11FC3C, 0x4A0
.global s_C__source_crashwoc_code_system_p_801230dc
s_C__source_crashwoc_code_system_p_801230dc:
	.incbin "baserom.dol", 0x1200DC, 0x28
.global s_D3DDevice_SetVertexShader_80123104
s_D3DDevice_SetVertexShader_80123104:
	.incbin "baserom.dol", 0x120104, 0x1C
.global lbl_80123120
lbl_80123120:
	.incbin "baserom.dol", 0x120120, 0x8
.global lbl_80123128
lbl_80123128:
	.incbin "baserom.dol", 0x120128, 0x4
.global lbl_8012312C
lbl_8012312C:
	.incbin "baserom.dol", 0x12012C, 0x4
.global lbl_80123130
lbl_80123130:
	.incbin "baserom.dol", 0x120130, 0x4
.global lbl_80123134
lbl_80123134:
	.incbin "baserom.dol", 0x120134, 0x4
.global lbl_80123138
lbl_80123138:
	.incbin "baserom.dol", 0x120138, 0xC
.global lbl_80123144
lbl_80123144:
	.incbin "baserom.dol", 0x120144, 0x4
.global lbl_80123148
lbl_80123148:
	.incbin "baserom.dol", 0x120148, 0x4
.global lbl_8012314C
lbl_8012314C:
	.incbin "baserom.dol", 0x12014C, 0x4
.global lbl_80123150
lbl_80123150:
	.incbin "baserom.dol", 0x120150, 0x4
.global lbl_80123154
lbl_80123154:
	.incbin "baserom.dol", 0x120154, 0x4
.global lbl_80123158
lbl_80123158:
	.incbin "baserom.dol", 0x120158, 0x8
.global lbl_80123160
lbl_80123160:
	.incbin "baserom.dol", 0x120160, 0x4
.global lbl_80123164
lbl_80123164:
	.incbin "baserom.dol", 0x120164, 0x4
.global lbl_80123168
lbl_80123168:
	.incbin "baserom.dol", 0x120168, 0x4
.global lbl_8012316C
lbl_8012316C:
	.incbin "baserom.dol", 0x12016C, 0x4
.global lbl_80123170
lbl_80123170:
	.incbin "baserom.dol", 0x120170, 0x4
.global lbl_80123174
lbl_80123174:
	.incbin "baserom.dol", 0x120174, 0x4
.global lbl_80123178
lbl_80123178:
	.incbin "baserom.dol", 0x120178, 0x4
.global lbl_8012317C
lbl_8012317C:
	.incbin "baserom.dol", 0x12017C, 0x240
.global lbl_801233BC
lbl_801233BC:
	.incbin "baserom.dol", 0x1203BC, 0x4
.global lbl_801233C0
lbl_801233C0:
	.incbin "baserom.dol", 0x1203C0, 0xC
.global s_FILE___s_801233cc
s_FILE___s_801233cc:
	.incbin "baserom.dol", 0x1203CC, 0xC
.global s_LINE___d_801233d8
s_LINE___d_801233d8:
	.incbin "baserom.dol", 0x1203D8, 0xC
.global s_MSG___s_801233e4
s_MSG___s_801233e4:
	.incbin "baserom.dol", 0x1203E4, 0x3C
.global s_VERSION___c_c_02d_c_c__c_c_c_c_80123420
s_VERSION___c_c_02d_c_c__c_c_c_c_80123420:
	.incbin "baserom.dol", 0x120420, 0x260
.global lbl_80123680
lbl_80123680:
	.incbin "baserom.dol", 0x120680, 0x8
.global lbl_80123688
lbl_80123688:
	.incbin "baserom.dol", 0x120688, 0x8
.global lbl_80123690
lbl_80123690:
	.incbin "baserom.dol", 0x120690, 0x4
.global s_Out_of_Memory_allocating__d_byte_80123694
s_Out_of_Memory_allocating__d_byte_80123694:
	.incbin "baserom.dol", 0x120694, 0x38
.global s_C__source_crashwoc_code_system_x_801236cc
s_C__source_crashwoc_code_system_x_801236cc:
	.incbin "baserom.dol", 0x1206CC, 0x274
.global lbl_80123940
lbl_80123940:
	.incbin "baserom.dol", 0x120940, 0x9
.global _ctype__1_
_ctype__1_:
	.incbin "baserom.dol", 0x120949, 0x107
.global lbl_80123A50
lbl_80123A50:
	.incbin "baserom.dol", 0x120A50, 0x8
.global lbl_80123A58
lbl_80123A58:
	.incbin "baserom.dol", 0x120A58, 0x8
.global lbl_80123A60
lbl_80123A60:
	.incbin "baserom.dol", 0x120A60, 0x8
.global lbl_80123A68
lbl_80123A68:
	.incbin "baserom.dol", 0x120A68, 0x8
.global lbl_80123A70
lbl_80123A70:
	.incbin "baserom.dol", 0x120A70, 0x8
.global lbl_80123A78
lbl_80123A78:
	.incbin "baserom.dol", 0x120A78, 0x28
.global lbl_80123AA0
lbl_80123AA0:
	.incbin "baserom.dol", 0x120AA0, 0x14
.global s__null__80123ab4
s__null__80123ab4:
	.incbin "baserom.dol", 0x120AB4, 0x8
.global lbl_80123ABC
lbl_80123ABC:
	.incbin "baserom.dol", 0x120ABC, 0x14
.global s_bug_in_vfprintf__bad_base_80123ad0
s_bug_in_vfprintf__bad_base_80123ad0:
	.incbin "baserom.dol", 0x120AD0, 0x20
.global lbl_80123AF0
lbl_80123AF0:
	.incbin "baserom.dol", 0x120AF0, 0x8
.global lbl_80123AF8
lbl_80123AF8:
	.incbin "baserom.dol", 0x120AF8, 0x8
.global lbl_80123B00
lbl_80123B00:
	.incbin "baserom.dol", 0x120B00, 0x8
.global lbl_80123B08
lbl_80123B08:
	.incbin "baserom.dol", 0x120B08, 0x8
.global lconv
lconv:
	.incbin "baserom.dol", 0x120B10, 0x90
