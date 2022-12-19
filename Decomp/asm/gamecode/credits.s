.include "macros.inc"

.section .text, "ax"  # 0x800032A0 - 0x80104920

.global InitCredits
InitCredits:
/* 8001FEA4 0001CEA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001FEA8 0001CEA8  3D 20 80 13 */	lis r9, Credit@ha
/* 8001FEAC 0001CEAC  3D 60 80 11 */	lis r11, lbl_80109624@ha
/* 8001FEB0 0001CEB0  38 E9 26 78 */	addi r7, r9, Credit@l
/* 8001FEB4 0001CEB4  39 40 00 00 */	li r10, 0
/* 8001FEB8 0001CEB8  A1 07 00 06 */	lhz r8, 6(r7)
/* 8001FEBC 0001CEBC  C1 8B 96 24 */	lfs f12, lbl_80109624@l(r11)
/* 8001FEC0 0001CEC0  7D 00 07 34 */	extsh r0, r8
/* 8001FEC4 0001CEC4  91 4D A2 7C */	stw r10, CREDITCOUNT-_SDA_BASE_(r13)
/* 8001FEC8 0001CEC8  2C 00 00 00 */	cmpwi r0, 0
/* 8001FECC 0001CECC  40 81 00 60 */	ble lbl_8001FF2C
/* 8001FED0 0001CED0  3D 60 80 11 */	lis r11, lbl_80109630@ha
/* 8001FED4 0001CED4  3D 20 80 11 */	lis r9, lbl_80109628@ha
/* 8001FED8 0001CED8  C1 6B 96 30 */	lfs f11, lbl_80109630@l(r11)
/* 8001FEDC 0001CEDC  3D 40 43 30 */	lis r10, 0x4330
/* 8001FEE0 0001CEE0  C9 A9 96 28 */	lfd f13, lbl_80109628@l(r9)
/* 8001FEE4 0001CEE4  39 60 00 00 */	li r11, 0
lbl_8001FEE8:
/* 8001FEE8 0001CEE8  7D 00 07 34 */	extsh r0, r8
/* 8001FEEC 0001CEEC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8001FEF0 0001CEF0  38 E7 00 08 */	addi r7, r7, 8
/* 8001FEF4 0001CEF4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8001FEF8 0001CEF8  39 6B 00 01 */	addi r11, r11, 1
/* 8001FEFC 0001CEFC  A1 07 00 06 */	lhz r8, 6(r7)
/* 8001FF00 0001CF00  91 41 00 08 */	stw r10, 8(r1)
/* 8001FF04 0001CF04  7D 00 07 34 */	extsh r0, r8
/* 8001FF08 0001CF08  C8 01 00 08 */	lfd f0, 8(r1)
/* 8001FF0C 0001CF0C  2C 00 00 00 */	cmpwi r0, 0
/* 8001FF10 0001CF10  FC 00 68 28 */	fsub f0, f0, f13
/* 8001FF14 0001CF14  FC 00 00 18 */	frsp f0, f0
/* 8001FF18 0001CF18  EC 00 58 24 */	fdivs f0, f0, f11
/* 8001FF1C 0001CF1C  EC 00 00 2A */	fadds f0, f0, f0
/* 8001FF20 0001CF20  ED 8C 00 2A */	fadds f12, f12, f0
/* 8001FF24 0001CF24  41 81 FF C4 */	bgt lbl_8001FEE8
/* 8001FF28 0001CF28  91 6D A2 7C */	stw r11, CREDITCOUNT-_SDA_BASE_(r13)
lbl_8001FF2C:
/* 8001FF2C 0001CF2C  3D 20 80 11 */	lis r9, lbl_80109634@ha
/* 8001FF30 0001CF30  C0 0D 81 7C */	lfs f0, credit_speed-_SDA_BASE_(r13)
/* 8001FF34 0001CF34  C1 A9 96 34 */	lfs f13, lbl_80109634@l(r9)
/* 8001FF38 0001CF38  ED 8C 68 2A */	fadds f12, f12, f13
/* 8001FF3C 0001CF3C  EC 0C 00 24 */	fdivs f0, f12, f0
/* 8001FF40 0001CF40  D0 0D A2 80 */	stfs f0, credit_time-_SDA_BASE_(r13)
/* 8001FF44 0001CF44  38 21 00 10 */	addi r1, r1, 0x10
/* 8001FF48 0001CF48  4E 80 00 20 */	blr 

.global DrawCredits
DrawCredits:
/* 8001FF4C 0001CF4C  94 21 FF 48 */	stwu r1, -0xb8(r1)
/* 8001FF50 0001CF50  7C 08 02 A6 */	mflr r0
/* 8001FF54 0001CF54  DB 01 00 78 */	stfd f24, 0x78(r1)
/* 8001FF58 0001CF58  DB 21 00 80 */	stfd f25, 0x80(r1)
/* 8001FF5C 0001CF5C  DB 41 00 88 */	stfd f26, 0x88(r1)
/* 8001FF60 0001CF60  DB 61 00 90 */	stfd f27, 0x90(r1)
/* 8001FF64 0001CF64  DB 81 00 98 */	stfd f28, 0x98(r1)
/* 8001FF68 0001CF68  DB A1 00 A0 */	stfd f29, 0xa0(r1)
/* 8001FF6C 0001CF6C  DB C1 00 A8 */	stfd f30, 0xa8(r1)
/* 8001FF70 0001CF70  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 8001FF74 0001CF74  BE C1 00 50 */	stmw r22, 0x50(r1)
/* 8001FF78 0001CF78  90 01 00 BC */	stw r0, 0xbc(r1)
/* 8001FF7C 0001CF7C  3D 20 80 30 */	lis r9, GameTimer_12_@ha
/* 8001FF80 0001CF80  3D 60 80 11 */	lis r11, lbl_80109638@ha
/* 8001FF84 0001CF84  C1 89 2A 38 */	lfs f12, GameTimer_12_@l(r9)
/* 8001FF88 0001CF88  3D 40 80 13 */	lis r10, Credit@ha
/* 8001FF8C 0001CF8C  C1 AB 96 38 */	lfs f13, lbl_80109638@l(r11)
/* 8001FF90 0001CF90  3B A0 00 00 */	li r29, 0
/* 8001FF94 0001CF94  C0 0D 81 7C */	lfs f0, credit_speed-_SDA_BASE_(r13)
/* 8001FF98 0001CF98  3B CA 26 78 */	addi r30, r10, Credit@l
/* 8001FF9C 0001CF9C  80 0D A2 7C */	lwz r0, CREDITCOUNT-_SDA_BASE_(r13)
/* 8001FFA0 0001CFA0  EF CC 68 3A */	fmadds f30, f12, f0, f13
/* 8001FFA4 0001CFA4  7C 1D 00 00 */	cmpw r29, r0
/* 8001FFA8 0001CFA8  40 80 01 14 */	bge lbl_800200BC
/* 8001FFAC 0001CFAC  3D 60 80 11 */	lis r11, lbl_80109648@ha
/* 8001FFB0 0001CFB0  3D 20 80 11 */	lis r9, lbl_80109640@ha
/* 8001FFB4 0001CFB4  C3 0B 96 48 */	lfs f24, lbl_80109648@l(r11)
/* 8001FFB8 0001CFB8  3D 40 80 11 */	lis r10, lbl_8010964C@ha
/* 8001FFBC 0001CFBC  CB 89 96 40 */	lfd f28, lbl_80109640@l(r9)
/* 8001FFC0 0001CFC0  3D 00 80 11 */	lis r8, lbl_80109650@ha
/* 8001FFC4 0001CFC4  3D 60 80 11 */	lis r11, lbl_80109664@ha
/* 8001FFC8 0001CFC8  3D 20 80 30 */	lis r9, Game@ha
/* 8001FFCC 0001CFCC  C3 2A 96 4C */	lfs f25, lbl_8010964C@l(r10)
/* 8001FFD0 0001CFD0  3A C9 23 E4 */	addi r22, r9, Game@l
/* 8001FFD4 0001CFD4  C3 48 96 50 */	lfs f26, lbl_80109650@l(r8)
/* 8001FFD8 0001CFD8  3E E0 43 30 */	lis r23, 0x4330
/* 8001FFDC 0001CFDC  C3 6B 96 64 */	lfs f27, lbl_80109664@l(r11)
/* 8001FFE0 0001CFE0  3F 80 80 23 */	lis r28, 0x8023
/* 8001FFE4 0001CFE4  3F 00 80 11 */	lis r24, 0x8011
/* 8001FFE8 0001CFE8  3F 20 80 11 */	lis r25, 0x8011
/* 8001FFEC 0001CFEC  3F 40 80 11 */	lis r26, 0x8011
/* 8001FFF0 0001CFF0  3F 60 80 11 */	lis r27, 0x8011
lbl_8001FFF4:
/* 8001FFF4 0001CFF4  A8 1E 00 06 */	lha r0, 6(r30)
/* 8001FFF8 0001CFF8  80 9E 00 00 */	lwz r4, 0(r30)
/* 8001FFFC 0001CFFC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80020000 0001D000  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80020004 0001D004  2C 04 00 00 */	cmpwi r4, 0
/* 80020008 0001D008  92 E1 00 48 */	stw r23, 0x48(r1)
/* 8002000C 0001D00C  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80020010 0001D010  FC 00 E0 28 */	fsub f0, f0, f28
/* 80020014 0001D014  FC 00 00 18 */	frsp f0, f0
/* 80020018 0001D018  EF E0 C0 24 */	fdivs f31, f0, f24
/* 8002001C 0001D01C  41 82 00 80 */	beq lbl_8002009C
/* 80020020 0001D020  FC 1E C8 00 */	fcmpu cr0, f30, f25
/* 80020024 0001D024  40 81 00 78 */	ble lbl_8002009C
/* 80020028 0001D028  FC 1E D0 00 */	fcmpu cr0, f30, f26
/* 8002002C 0001D02C  40 80 00 70 */	bge lbl_8002009C
/* 80020030 0001D030  38 7C 68 3C */	addi r3, r28, 0x683c
/* 80020034 0001D034  3F E0 80 23 */	lis r31, 0x8023
/* 80020038 0001D038  48 0B B2 D1 */	bl gcc2_compiled__N133
/* 8002003C 0001D03C  38 7C 68 3C */	addi r3, r28, 0x683c
/* 80020040 0001D040  38 98 8E B4 */	addi r4, r24, -29004
/* 80020044 0001D044  48 0B B1 89 */	bl gcc2_compiled__N131
/* 80020048 0001D048  2C 03 00 00 */	cmpwi r3, 0
/* 8002004C 0001D04C  C3 B9 96 54 */	lfs f29, -0x69ac(r25)
/* 80020050 0001D050  41 82 00 08 */	beq lbl_80020058
/* 80020054 0001D054  C3 BA 96 58 */	lfs f29, -0x69a8(r26)
lbl_80020058:
/* 80020058 0001D058  88 16 00 0F */	lbz r0, 0xf(r22)
/* 8002005C 0001D05C  2C 00 00 63 */	cmpwi r0, 0x63
/* 80020060 0001D060  40 82 00 10 */	bne lbl_80020070
/* 80020064 0001D064  38 7F 68 3C */	addi r3, r31, 0x683c
/* 80020068 0001D068  38 80 00 01 */	li r4, 1
/* 8002006C 0001D06C  48 04 1D 05 */	bl AddSpacesIntoText
lbl_80020070:
/* 80020070 0001D070  3D 20 80 11 */	lis r9, lbl_80109660@ha
/* 80020074 0001D074  C0 3B 96 5C */	lfs f1, -0x69a4(r27)
/* 80020078 0001D078  C0 69 96 60 */	lfs f3, lbl_80109660@l(r9)
/* 8002007C 0001D07C  38 7F 68 3C */	addi r3, r31, 0x683c
/* 80020080 0001D080  A8 BE 00 04 */	lha r5, 4(r30)
/* 80020084 0001D084  EC 9F 07 72 */	fmuls f4, f31, f29
/* 80020088 0001D088  FC 40 F0 90 */	fmr f2, f30
/* 8002008C 0001D08C  38 80 00 02 */	li r4, 2
/* 80020090 0001D090  FC A0 F8 90 */	fmr f5, f31
/* 80020094 0001D094  EC DF F8 2A */	fadds f6, f31, f31
/* 80020098 0001D098  48 00 7B 2D */	bl Text3D
lbl_8002009C:
/* 8002009C 0001D09C  EC 1F 06 F2 */	fmuls f0, f31, f27
/* 800200A0 0001D0A0  80 0D A2 7C */	lwz r0, CREDITCOUNT-_SDA_BASE_(r13)
/* 800200A4 0001D0A4  EC 00 00 2A */	fadds f0, f0, f0
/* 800200A8 0001D0A8  3B BD 00 01 */	addi r29, r29, 1
/* 800200AC 0001D0AC  EF DE 00 28 */	fsubs f30, f30, f0
/* 800200B0 0001D0B0  7C 1D 00 00 */	cmpw r29, r0
/* 800200B4 0001D0B4  3B DE 00 08 */	addi r30, r30, 8
/* 800200B8 0001D0B8  41 80 FF 3C */	blt lbl_8001FFF4
lbl_800200BC:
/* 800200BC 0001D0BC  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 800200C0 0001D0C0  7C 08 03 A6 */	mtlr r0
/* 800200C4 0001D0C4  BA C1 00 50 */	lmw r22, 0x50(r1)
/* 800200C8 0001D0C8  CB 01 00 78 */	lfd f24, 0x78(r1)
/* 800200CC 0001D0CC  CB 21 00 80 */	lfd f25, 0x80(r1)
/* 800200D0 0001D0D0  CB 41 00 88 */	lfd f26, 0x88(r1)
/* 800200D4 0001D0D4  CB 61 00 90 */	lfd f27, 0x90(r1)
/* 800200D8 0001D0D8  CB 81 00 98 */	lfd f28, 0x98(r1)
/* 800200DC 0001D0DC  CB A1 00 A0 */	lfd f29, 0xa0(r1)
/* 800200E0 0001D0E0  CB C1 00 A8 */	lfd f30, 0xa8(r1)
/* 800200E4 0001D0E4  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 800200E8 0001D0E8  38 21 00 B8 */	addi r1, r1, 0xb8
/* 800200EC 0001D0EC  4E 80 00 20 */	blr 
