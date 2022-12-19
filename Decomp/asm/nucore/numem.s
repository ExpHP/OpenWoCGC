.include "macros.inc"

.section .text, "ax"  # 0x800032A0 - 0x80104920

.global NuMemSetExternal
NuMemSetExternal:
/* 800BE5C8 000BB5C8  7C 63 1B 79 */	or. r3, r3, r3
/* 800BE5CC 000BB5CC  41 82 00 18 */	beq lbl_800BE5E4
/* 800BE5D0 000BB5D0  39 2D 9A F8 */	addi r9, r13, memext-_SDA_BASE_
/* 800BE5D4 000BB5D4  90 89 00 04 */	stw r4, 4(r9)
/* 800BE5D8 000BB5D8  90 69 00 00 */	stw r3, 0(r9)
/* 800BE5DC 000BB5DC  91 2D 8F 7C */	stw r9, memexternal-_SDA_BASE_(r13)
/* 800BE5E0 000BB5E0  4E 80 00 20 */	blr 
lbl_800BE5E4:
/* 800BE5E4 000BB5E4  90 6D 8F 7C */	stw r3, memexternal-_SDA_BASE_(r13)
/* 800BE5E8 000BB5E8  4E 80 00 20 */	blr 

.global NuMemAlloc
NuMemAlloc:
/* 800BE5EC 000BB5EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BE5F0 000BB5F0  7C 08 02 A6 */	mflr r0
/* 800BE5F4 000BB5F4  BF C1 00 08 */	stmw r30, 8(r1)
/* 800BE5F8 000BB5F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BE5FC 000BB5FC  81 4D 8F 7C */	lwz r10, memexternal-_SDA_BASE_(r13)
/* 800BE600 000BB600  7C 7F 1B 78 */	mr r31, r3
/* 800BE604 000BB604  2C 0A 00 00 */	cmpwi r10, 0
/* 800BE608 000BB608  41 82 00 60 */	beq lbl_800BE668
/* 800BE60C 000BB60C  81 6A 00 00 */	lwz r11, 0(r10)
/* 800BE610 000BB610  81 2B 00 00 */	lwz r9, 0(r11)
/* 800BE614 000BB614  39 29 00 0F */	addi r9, r9, 0xf
/* 800BE618 000BB618  55 29 00 36 */	rlwinm r9, r9, 0, 0, 0x1b
/* 800BE61C 000BB61C  91 2B 00 00 */	stw r9, 0(r11)
/* 800BE620 000BB620  81 6A 00 04 */	lwz r11, 4(r10)
/* 800BE624 000BB624  2C 0B 00 00 */	cmpwi r11, 0
/* 800BE628 000BB628  41 82 00 24 */	beq lbl_800BE64C
/* 800BE62C 000BB62C  81 2A 00 00 */	lwz r9, 0(r10)
/* 800BE630 000BB630  80 0B 00 00 */	lwz r0, 0(r11)
/* 800BE634 000BB634  81 69 00 00 */	lwz r11, 0(r9)
/* 800BE638 000BB638  7C 0B 00 50 */	subf r0, r11, r0
/* 800BE63C 000BB63C  7C 00 F8 40 */	cmplw r0, r31
/* 800BE640 000BB640  40 80 00 0C */	bge lbl_800BE64C
/* 800BE644 000BB644  38 60 00 00 */	li r3, 0
/* 800BE648 000BB648  48 00 00 A0 */	b lbl_800BE6E8
lbl_800BE64C:
/* 800BE64C 000BB64C  81 2D 8F 7C */	lwz r9, memexternal-_SDA_BASE_(r13)
/* 800BE650 000BB650  81 69 00 00 */	lwz r11, 0(r9)
/* 800BE654 000BB654  83 CB 00 00 */	lwz r30, 0(r11)
/* 800BE658 000BB658  7C 1E FA 14 */	add r0, r30, r31
/* 800BE65C 000BB65C  7F C3 F3 78 */	mr r3, r30
/* 800BE660 000BB660  90 0B 00 00 */	stw r0, 0(r11)
/* 800BE664 000BB664  48 00 00 84 */	b lbl_800BE6E8
lbl_800BE668:
/* 800BE668 000BB668  80 0D 8F 74 */	lwz r0, totalloc-_SDA_BASE_(r13)
/* 800BE66C 000BB66C  7F E3 FB 78 */	mr r3, r31
/* 800BE670 000BB670  7C 00 FA 14 */	add r0, r0, r31
/* 800BE674 000BB674  90 0D 8F 74 */	stw r0, totalloc-_SDA_BASE_(r13)
/* 800BE678 000BB678  48 01 64 BD */	bl malloc
/* 800BE67C 000BB67C  7C 7E 1B 79 */	or. r30, r3, r3
/* 800BE680 000BB680  40 82 00 30 */	bne lbl_800BE6B0
/* 800BE684 000BB684  3C 60 80 12 */	lis r3, s_C__source_crashwoc_code_nucore_n_8011f95c@ha
/* 800BE688 000BB688  38 80 00 BF */	li r4, 0xbf
/* 800BE68C 000BB68C  38 63 F9 5C */	addi r3, r3, s_C__source_crashwoc_code_nucore_n_8011f95c@l
/* 800BE690 000BB690  4B FF ED AD */	bl NuErrorProlog
/* 800BE694 000BB694  7C 60 1B 78 */	mr r0, r3
/* 800BE698 000BB698  7F E4 FB 78 */	mr r4, r31
/* 800BE69C 000BB69C  3C 60 80 12 */	lis r3, lbl_8011F984@ha
/* 800BE6A0 000BB6A0  7C 08 03 A6 */	mtlr r0
/* 800BE6A4 000BB6A4  38 63 F9 84 */	addi r3, r3, lbl_8011F984@l
/* 800BE6A8 000BB6A8  4C C6 31 82 */	crclr 6
/* 800BE6AC 000BB6AC  4E 80 00 21 */	blrl 
lbl_800BE6B0:
/* 800BE6B0 000BB6B0  7F C3 F3 78 */	mr r3, r30
/* 800BE6B4 000BB6B4  38 80 00 00 */	li r4, 0
/* 800BE6B8 000BB6B8  7F E5 FB 78 */	mr r5, r31
/* 800BE6BC 000BB6BC  48 01 C9 51 */	bl gcc2_compiled__N128
/* 800BE6C0 000BB6C0  80 0D 8F 80 */	lwz r0, highallocaddr-_SDA_BASE_(r13)
/* 800BE6C4 000BB6C4  7C 7E FA 14 */	add r3, r30, r31
/* 800BE6C8 000BB6C8  7C 03 00 00 */	cmpw r3, r0
/* 800BE6CC 000BB6CC  40 81 00 08 */	ble lbl_800BE6D4
/* 800BE6D0 000BB6D0  90 6D 8F 80 */	stw r3, highallocaddr-_SDA_BASE_(r13)
lbl_800BE6D4:
/* 800BE6D4 000BB6D4  80 0D 8F 84 */	lwz r0, peakallocaddr-_SDA_BASE_(r13)
/* 800BE6D8 000BB6D8  7C 03 00 00 */	cmpw r3, r0
/* 800BE6DC 000BB6DC  40 81 00 08 */	ble lbl_800BE6E4
/* 800BE6E0 000BB6E0  90 6D 8F 84 */	stw r3, peakallocaddr-_SDA_BASE_(r13)
lbl_800BE6E4:
/* 800BE6E4 000BB6E4  7F C3 F3 78 */	mr r3, r30
lbl_800BE6E8:
/* 800BE6E8 000BB6E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BE6EC 000BB6EC  7C 08 03 A6 */	mtlr r0
/* 800BE6F0 000BB6F0  BB C1 00 08 */	lmw r30, 8(r1)
/* 800BE6F4 000BB6F4  38 21 00 10 */	addi r1, r1, 0x10
/* 800BE6F8 000BB6F8  4E 80 00 20 */	blr 

.global NuMemFree
NuMemFree:
/* 800BE6FC 000BB6FC  94 21 FF F8 */	stwu r1, -8(r1)
/* 800BE700 000BB700  7C 08 02 A6 */	mflr r0
/* 800BE704 000BB704  90 01 00 0C */	stw r0, 0xc(r1)
/* 800BE708 000BB708  48 01 65 15 */	bl free
/* 800BE70C 000BB70C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800BE710 000BB710  7C 08 03 A6 */	mtlr r0
/* 800BE714 000BB714  38 21 00 08 */	addi r1, r1, 8
/* 800BE718 000BB718  4E 80 00 20 */	blr 

.global malloc_x
malloc_x:
/* 800BE71C 000BB71C  94 21 FF F8 */	stwu r1, -8(r1)
/* 800BE720 000BB720  7C 08 02 A6 */	mflr r0
/* 800BE724 000BB724  90 01 00 0C */	stw r0, 0xc(r1)
/* 800BE728 000BB728  81 2D 8F 88 */	lwz r9, malloced-_SDA_BASE_(r13)
/* 800BE72C 000BB72C  39 29 00 01 */	addi r9, r9, 1
/* 800BE730 000BB730  91 2D 8F 88 */	stw r9, malloced-_SDA_BASE_(r13)
/* 800BE734 000BB734  48 01 64 01 */	bl malloc
/* 800BE738 000BB738  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800BE73C 000BB73C  7C 08 03 A6 */	mtlr r0
/* 800BE740 000BB740  38 21 00 08 */	addi r1, r1, 8
/* 800BE744 000BB744  4E 80 00 20 */	blr 

.global free_x
free_x:
/* 800BE748 000BB748  94 21 FF F8 */	stwu r1, -8(r1)
/* 800BE74C 000BB74C  7C 08 02 A6 */	mflr r0
/* 800BE750 000BB750  90 01 00 0C */	stw r0, 0xc(r1)
/* 800BE754 000BB754  81 2D 8F 88 */	lwz r9, malloced-_SDA_BASE_(r13)
/* 800BE758 000BB758  39 29 FF FF */	addi r9, r9, -1
/* 800BE75C 000BB75C  91 2D 8F 88 */	stw r9, malloced-_SDA_BASE_(r13)
/* 800BE760 000BB760  48 01 64 BD */	bl free
/* 800BE764 000BB764  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800BE768 000BB768  7C 08 03 A6 */	mtlr r0
/* 800BE76C 000BB76C  38 21 00 08 */	addi r1, r1, 8
/* 800BE770 000BB770  4E 80 00 20 */	blr 