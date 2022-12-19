.include "macros.inc"

.section .text, "ax"  # 0x800032A0 - 0x80104920

.global PtInsideSpline
PtInsideSpline:
/* 8007D570 0007A570  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8007D574 0007A574  7C 08 02 A6 */	mflr r0
/* 8007D578 0007A578  BF 61 00 2C */	stmw r27, 0x2c(r1)
/* 8007D57C 0007A57C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8007D580 0007A580  7C 9C 23 78 */	mr r28, r4
/* 8007D584 0007A584  7C 7D 1B 78 */	mr r29, r3
/* 8007D588 0007A588  A9 5C 00 00 */	lha r10, 0(r28)
/* 8007D58C 0007A58C  3D 20 80 12 */	lis r9, lbl_801198DC@ha
/* 8007D590 0007A590  C1 69 98 DC */	lfs f11, lbl_801198DC@l(r9)
/* 8007D594 0007A594  3D 60 80 12 */	lis r11, lbl_801198E0@ha
/* 8007D598 0007A598  C1 BD 00 04 */	lfs f13, 4(r29)
/* 8007D59C 0007A59C  1D 2A 00 0C */	mulli r9, r10, 0xc
/* 8007D5A0 0007A5A0  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8007D5A4 0007A5A4  3B 60 00 00 */	li r27, 0
/* 8007D5A8 0007A5A8  C1 9D 00 08 */	lfs f12, 8(r29)
/* 8007D5AC 0007A5AC  ED AD 02 F2 */	fmuls f13, f13, f11
/* 8007D5B0 0007A5B0  EC 00 6A FA */	fmadds f0, f0, f11, f13
/* 8007D5B4 0007A5B4  80 1C 00 08 */	lwz r0, 8(r28)
/* 8007D5B8 0007A5B8  C1 4B 98 E0 */	lfs f10, lbl_801198E0@l(r11)
/* 8007D5BC 0007A5BC  EC 00 60 2A */	fadds f0, f0, f12
/* 8007D5C0 0007A5C0  39 29 FF F4 */	addi r9, r9, -12
/* 8007D5C4 0007A5C4  FC 00 00 50 */	fneg f0, f0
/* 8007D5C8 0007A5C8  7C 80 4A 14 */	add r4, r0, r9
/* 8007D5CC 0007A5CC  7C 1F 03 78 */	mr r31, r0
/* 8007D5D0 0007A5D0  D1 41 00 20 */	stfs f10, 0x20(r1)
/* 8007D5D4 0007A5D4  7C 1B 50 00 */	cmpw r27, r10
/* 8007D5D8 0007A5D8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8007D5DC 0007A5DC  3B C0 00 00 */	li r30, 0
/* 8007D5E0 0007A5E0  D1 61 00 18 */	stfs f11, 0x18(r1)
/* 8007D5E4 0007A5E4  D1 61 00 1C */	stfs f11, 0x1c(r1)
/* 8007D5E8 0007A5E8  40 80 00 4C */	bge lbl_8007D634
lbl_8007D5EC:
/* 8007D5EC 0007A5EC  38 61 00 18 */	addi r3, r1, 0x18
/* 8007D5F0 0007A5F0  7F E5 FB 78 */	mr r5, r31
/* 8007D5F4 0007A5F4  38 C1 00 08 */	addi r6, r1, 8
/* 8007D5F8 0007A5F8  48 04 33 3D */	bl NuPlnLine
/* 8007D5FC 0007A5FC  2C 03 00 00 */	cmpwi r3, 0
/* 8007D600 0007A600  41 82 00 1C */	beq lbl_8007D61C
/* 8007D604 0007A604  C1 A1 00 08 */	lfs f13, 8(r1)
/* 8007D608 0007A608  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8007D60C 0007A60C  FC 0D 00 00 */	fcmpu cr0, f13, f0
/* 8007D610 0007A610  4C 62 0B 82 */	cror 3, 2, 1
/* 8007D614 0007A614  40 83 00 08 */	bns lbl_8007D61C
/* 8007D618 0007A618  3B 7B 00 01 */	addi r27, r27, 1
lbl_8007D61C:
/* 8007D61C 0007A61C  A8 1C 00 00 */	lha r0, 0(r28)
/* 8007D620 0007A620  7F E4 FB 78 */	mr r4, r31
/* 8007D624 0007A624  3B DE 00 01 */	addi r30, r30, 1
/* 8007D628 0007A628  3B FF 00 0C */	addi r31, r31, 0xc
/* 8007D62C 0007A62C  7C 1E 00 00 */	cmpw r30, r0
/* 8007D630 0007A630  41 80 FF BC */	blt lbl_8007D5EC
lbl_8007D634:
/* 8007D634 0007A634  57 63 07 FE */	clrlwi r3, r27, 0x1f
/* 8007D638 0007A638  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8007D63C 0007A63C  7C 08 03 A6 */	mtlr r0
/* 8007D640 0007A640  BB 61 00 2C */	lmw r27, 0x2c(r1)
/* 8007D644 0007A644  38 21 00 40 */	addi r1, r1, 0x40
/* 8007D648 0007A648  4E 80 00 20 */	blr 

.global ApplyVisiTable
ApplyVisiTable:
/* 8007D64C 0007A64C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8007D650 0007A650  7C 08 02 A6 */	mflr r0
/* 8007D654 0007A654  BF 81 00 08 */	stmw r28, 8(r1)
/* 8007D658 0007A658  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8007D65C 0007A65C  80 0D 9A 70 */	lwz r0, vscnt-_SDA_BASE_(r13)
/* 8007D660 0007A660  7C 9D 23 78 */	mr r29, r4
/* 8007D664 0007A664  2C 00 00 00 */	cmpwi r0, 0
/* 8007D668 0007A668  41 82 01 08 */	beq lbl_8007D770
/* 8007D66C 0007A66C  2C 1D 00 00 */	cmpwi r29, 0
/* 8007D670 0007A670  40 82 00 44 */	bne lbl_8007D6B4
/* 8007D674 0007A674  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8007D678 0007A678  3B C0 00 00 */	li r30, 0
/* 8007D67C 0007A67C  7C 1E 00 00 */	cmpw r30, r0
/* 8007D680 0007A680  40 80 00 F0 */	bge lbl_8007D770
/* 8007D684 0007A684  39 40 00 00 */	li r10, 0
lbl_8007D688:
/* 8007D688 0007A688  81 23 00 1C */	lwz r9, 0x1c(r3)
/* 8007D68C 0007A68C  3B DE 00 01 */	addi r30, r30, 1
/* 8007D690 0007A690  7D 2A 4A 14 */	add r9, r10, r9
/* 8007D694 0007A694  80 09 00 44 */	lwz r0, 0x44(r9)
/* 8007D698 0007A698  39 4A 00 50 */	addi r10, r10, 0x50
/* 8007D69C 0007A69C  64 00 20 00 */	oris r0, r0, 0x2000
/* 8007D6A0 0007A6A0  90 09 00 44 */	stw r0, 0x44(r9)
/* 8007D6A4 0007A6A4  81 63 00 18 */	lwz r11, 0x18(r3)
/* 8007D6A8 0007A6A8  7C 1E 58 00 */	cmpw r30, r11
/* 8007D6AC 0007A6AC  41 80 FF DC */	blt lbl_8007D688
/* 8007D6B0 0007A6B0  48 00 00 C0 */	b lbl_8007D770
lbl_8007D6B4:
/* 8007D6B4 0007A6B4  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8007D6B8 0007A6B8  3B C0 00 00 */	li r30, 0
/* 8007D6BC 0007A6BC  7C 1E 00 00 */	cmpw r30, r0
/* 8007D6C0 0007A6C0  40 80 00 30 */	bge lbl_8007D6F0
/* 8007D6C4 0007A6C4  39 40 00 00 */	li r10, 0
lbl_8007D6C8:
/* 8007D6C8 0007A6C8  81 23 00 1C */	lwz r9, 0x1c(r3)
/* 8007D6CC 0007A6CC  3B DE 00 01 */	addi r30, r30, 1
/* 8007D6D0 0007A6D0  7D 2A 4A 14 */	add r9, r10, r9
/* 8007D6D4 0007A6D4  80 09 00 44 */	lwz r0, 0x44(r9)
/* 8007D6D8 0007A6D8  39 4A 00 50 */	addi r10, r10, 0x50
/* 8007D6DC 0007A6DC  54 00 00 C2 */	rlwinm r0, r0, 0, 3, 1
/* 8007D6E0 0007A6E0  90 09 00 44 */	stw r0, 0x44(r9)
/* 8007D6E4 0007A6E4  81 63 00 18 */	lwz r11, 0x18(r3)
/* 8007D6E8 0007A6E8  7C 1E 58 00 */	cmpw r30, r11
/* 8007D6EC 0007A6EC  41 80 FF DC */	blt lbl_8007D6C8
lbl_8007D6F0:
/* 8007D6F0 0007A6F0  80 0D 9A 70 */	lwz r0, vscnt-_SDA_BASE_(r13)
/* 8007D6F4 0007A6F4  3B C0 00 00 */	li r30, 0
/* 8007D6F8 0007A6F8  7C 1E 00 00 */	cmpw r30, r0
/* 8007D6FC 0007A6FC  40 80 00 74 */	bge lbl_8007D770
/* 8007D700 0007A700  3D 20 80 17 */	lis r9, visidat@ha
/* 8007D704 0007A704  3B 89 CA F8 */	addi r28, r9, visidat@l
lbl_8007D708:
/* 8007D708 0007A708  57 C0 10 3A */	slwi r0, r30, 2
/* 8007D70C 0007A70C  7F A3 EB 78 */	mr r3, r29
/* 8007D710 0007A710  7F FC 00 2E */	lwzx r31, r28, r0
/* 8007D714 0007A714  80 9F 00 00 */	lwz r4, 0(r31)
/* 8007D718 0007A718  4B FF FE 59 */	bl PtInsideSpline
/* 8007D71C 0007A71C  38 FE 00 01 */	addi r7, r30, 1
/* 8007D720 0007A720  2C 03 00 00 */	cmpwi r3, 0
/* 8007D724 0007A724  41 82 00 3C */	beq lbl_8007D760
/* 8007D728 0007A728  80 1F 00 04 */	lwz r0, 4(r31)
/* 8007D72C 0007A72C  39 00 00 00 */	li r8, 0
/* 8007D730 0007A730  7C 08 00 00 */	cmpw r8, r0
/* 8007D734 0007A734  40 80 00 2C */	bge lbl_8007D760
/* 8007D738 0007A738  39 5F 00 08 */	addi r10, r31, 8
lbl_8007D73C:
/* 8007D73C 0007A73C  81 2A 00 00 */	lwz r9, 0(r10)
/* 8007D740 0007A740  39 08 00 01 */	addi r8, r8, 1
/* 8007D744 0007A744  39 4A 00 04 */	addi r10, r10, 4
/* 8007D748 0007A748  80 09 00 44 */	lwz r0, 0x44(r9)
/* 8007D74C 0007A74C  64 00 20 00 */	oris r0, r0, 0x2000
/* 8007D750 0007A750  90 09 00 44 */	stw r0, 0x44(r9)
/* 8007D754 0007A754  81 7F 00 04 */	lwz r11, 4(r31)
/* 8007D758 0007A758  7C 08 58 00 */	cmpw r8, r11
/* 8007D75C 0007A75C  41 80 FF E0 */	blt lbl_8007D73C
lbl_8007D760:
/* 8007D760 0007A760  80 0D 9A 70 */	lwz r0, vscnt-_SDA_BASE_(r13)
/* 8007D764 0007A764  7C FE 3B 78 */	mr r30, r7
/* 8007D768 0007A768  7C 1E 00 00 */	cmpw r30, r0
/* 8007D76C 0007A76C  41 80 FF 9C */	blt lbl_8007D708
lbl_8007D770:
/* 8007D770 0007A770  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8007D774 0007A774  7C 08 03 A6 */	mtlr r0
/* 8007D778 0007A778  BB 81 00 08 */	lmw r28, 8(r1)
/* 8007D77C 0007A77C  38 21 00 18 */	addi r1, r1, 0x18
/* 8007D780 0007A780  4E 80 00 20 */	blr 

.global VSAddObjs
VSAddObjs:
/* 8007D784 0007A784  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8007D788 0007A788  7C 08 02 A6 */	mflr r0
/* 8007D78C 0007A78C  7D 80 00 26 */	mfcr r12
/* 8007D790 0007A790  BE E1 00 1C */	stmw r23, 0x1c(r1)
/* 8007D794 0007A794  90 01 00 44 */	stw r0, 0x44(r1)
/* 8007D798 0007A798  91 81 00 18 */	stw r12, 0x18(r1)
/* 8007D79C 0007A79C  7C 9D 23 78 */	mr r29, r4
/* 8007D7A0 0007A7A0  3B 00 00 00 */	li r24, 0
/* 8007D7A4 0007A7A4  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 8007D7A8 0007A7A8  7C B7 2B 78 */	mr r23, r5
/* 8007D7AC 0007A7AC  39 00 00 00 */	li r8, 0
/* 8007D7B0 0007A7B0  7C 18 00 00 */	cmpw r24, r0
/* 8007D7B4 0007A7B4  40 80 00 9C */	bge lbl_8007D850
/* 8007D7B8 0007A7B8  7C 7C 1B 78 */	mr r28, r3
/* 8007D7BC 0007A7BC  2E 03 00 00 */	cmpwi cr4, r3, 0
lbl_8007D7C0:
/* 8007D7C0 0007A7C0  1C 08 00 50 */	mulli r0, r8, 0x50
/* 8007D7C4 0007A7C4  81 7D 00 1C */	lwz r11, 0x1c(r29)
/* 8007D7C8 0007A7C8  81 5D 00 14 */	lwz r10, 0x14(r29)
/* 8007D7CC 0007A7CC  3B 60 00 00 */	li r27, 0
/* 8007D7D0 0007A7D0  7D 60 5A 14 */	add r11, r0, r11
/* 8007D7D4 0007A7D4  81 2B 00 40 */	lwz r9, 0x40(r11)
/* 8007D7D8 0007A7D8  55 29 10 3A */	slwi r9, r9, 2
/* 8007D7DC 0007A7DC  7F E9 50 2E */	lwzx r31, r9, r10
/* 8007D7E0 0007A7E0  83 5F 00 48 */	lwz r26, 0x48(r31)
/* 8007D7E4 0007A7E4  7C 1E 03 78 */	mr r30, r0
/* 8007D7E8 0007A7E8  3B 28 00 01 */	addi r25, r8, 1
/* 8007D7EC 0007A7EC  48 00 00 0C */	b lbl_8007D7F8
lbl_8007D7F0:
/* 8007D7F0 0007A7F0  3B FF 00 64 */	addi r31, r31, 0x64
/* 8007D7F4 0007A7F4  3B 7B 00 01 */	addi r27, r27, 1
lbl_8007D7F8:
/* 8007D7F8 0007A7F8  7C 1B D0 00 */	cmpw r27, r26
/* 8007D7FC 0007A7FC  40 80 00 44 */	bge lbl_8007D840
/* 8007D800 0007A800  80 BD 00 1C */	lwz r5, 0x1c(r29)
/* 8007D804 0007A804  38 61 00 08 */	addi r3, r1, 8
/* 8007D808 0007A808  38 9F 00 34 */	addi r4, r31, 0x34
/* 8007D80C 0007A80C  7C A5 F2 14 */	add r5, r5, r30
/* 8007D810 0007A810  48 04 3B B1 */	bl NuVecMtxTransform
/* 8007D814 0007A814  38 61 00 08 */	addi r3, r1, 8
/* 8007D818 0007A818  7E E4 BB 78 */	mr r4, r23
/* 8007D81C 0007A81C  4B FF FD 55 */	bl PtInsideSpline
/* 8007D820 0007A820  2C 03 00 00 */	cmpwi r3, 0
/* 8007D824 0007A824  41 82 FF CC */	beq lbl_8007D7F0
/* 8007D828 0007A828  41 92 00 10 */	beq cr4, lbl_8007D838
/* 8007D82C 0007A82C  80 1D 00 1C */	lwz r0, 0x1c(r29)
/* 8007D830 0007A830  7C 00 F2 14 */	add r0, r0, r30
/* 8007D834 0007A834  90 1C 00 00 */	stw r0, 0(r28)
lbl_8007D838:
/* 8007D838 0007A838  3B 9C 00 04 */	addi r28, r28, 4
/* 8007D83C 0007A83C  3B 18 00 01 */	addi r24, r24, 1
lbl_8007D840:
/* 8007D840 0007A840  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 8007D844 0007A844  7F 28 CB 78 */	mr r8, r25
/* 8007D848 0007A848  7C 08 00 00 */	cmpw r8, r0
/* 8007D84C 0007A84C  41 80 FF 74 */	blt lbl_8007D7C0
lbl_8007D850:
/* 8007D850 0007A850  7F 03 C3 78 */	mr r3, r24
/* 8007D854 0007A854  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8007D858 0007A858  81 81 00 18 */	lwz r12, 0x18(r1)
/* 8007D85C 0007A85C  7C 08 03 A6 */	mtlr r0
/* 8007D860 0007A860  BA E1 00 1C */	lmw r23, 0x1c(r1)
/* 8007D864 0007A864  7D 80 81 20 */	mtcrf 8, r12
/* 8007D868 0007A868  38 21 00 40 */	addi r1, r1, 0x40
/* 8007D86C 0007A86C  4E 80 00 20 */	blr 

.global BuildVisiTable
BuildVisiTable:
/* 8007D870 0007A870  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8007D874 0007A874  7C 08 02 A6 */	mflr r0
/* 8007D878 0007A878  BF 21 00 0C */	stmw r25, 0xc(r1)
/* 8007D87C 0007A87C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8007D880 0007A880  7C 7E 1B 78 */	mr r30, r3
/* 8007D884 0007A884  38 00 00 00 */	li r0, 0
/* 8007D888 0007A888  81 3E 00 2C */	lwz r9, 0x2c(r30)
/* 8007D88C 0007A88C  3B 60 00 00 */	li r27, 0
/* 8007D890 0007A890  90 0D 9A 70 */	stw r0, vscnt-_SDA_BASE_(r13)
/* 8007D894 0007A894  3B A0 00 00 */	li r29, 0
/* 8007D898 0007A898  7C 1B 48 00 */	cmpw r27, r9
/* 8007D89C 0007A89C  40 80 00 60 */	bge lbl_8007D8FC
/* 8007D8A0 0007A8A0  3F 80 80 12 */	lis r28, lbl_801198E4@ha
/* 8007D8A4 0007A8A4  3B E0 00 00 */	li r31, 0
lbl_8007D8A8:
/* 8007D8A8 0007A8A8  81 3E 00 30 */	lwz r9, 0x30(r30)
/* 8007D8AC 0007A8AC  38 9C 98 E4 */	addi r4, r28, lbl_801198E4@l
/* 8007D8B0 0007A8B0  7D 3F 4A 14 */	add r9, r31, r9
/* 8007D8B4 0007A8B4  80 69 00 04 */	lwz r3, 4(r9)
/* 8007D8B8 0007A8B8  48 05 DD ED */	bl gcc2_compiled__N139
/* 8007D8BC 0007A8BC  2C 03 00 00 */	cmpwi r3, 0
/* 8007D8C0 0007A8C0  41 82 00 28 */	beq lbl_8007D8E8
/* 8007D8C4 0007A8C4  81 2D 9A 70 */	lwz r9, vscnt-_SDA_BASE_(r13)
/* 8007D8C8 0007A8C8  38 60 00 00 */	li r3, 0
/* 8007D8CC 0007A8CC  80 BE 00 30 */	lwz r5, 0x30(r30)
/* 8007D8D0 0007A8D0  7F C4 F3 78 */	mr r4, r30
/* 8007D8D4 0007A8D4  39 29 00 01 */	addi r9, r9, 1
/* 8007D8D8 0007A8D8  91 2D 9A 70 */	stw r9, vscnt-_SDA_BASE_(r13)
/* 8007D8DC 0007A8DC  7C A5 FA 14 */	add r5, r5, r31
/* 8007D8E0 0007A8E0  4B FF FE A5 */	bl VSAddObjs
/* 8007D8E4 0007A8E4  7F BD 1A 14 */	add r29, r29, r3
lbl_8007D8E8:
/* 8007D8E8 0007A8E8  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 8007D8EC 0007A8EC  3B 7B 00 01 */	addi r27, r27, 1
/* 8007D8F0 0007A8F0  3B FF 00 0C */	addi r31, r31, 0xc
/* 8007D8F4 0007A8F4  7C 1B 00 00 */	cmpw r27, r0
/* 8007D8F8 0007A8F8  41 80 FF B0 */	blt lbl_8007D8A8
lbl_8007D8FC:
/* 8007D8FC 0007A8FC  3B 80 00 00 */	li r28, 0
/* 8007D900 0007A900  2C 1D 00 00 */	cmpwi r29, 0
/* 8007D904 0007A904  93 8D 9A 74 */	stw r28, vsdata-_SDA_BASE_(r13)
/* 8007D908 0007A908  41 82 00 C0 */	beq lbl_8007D9C8
/* 8007D90C 0007A90C  80 6D 9A 70 */	lwz r3, vscnt-_SDA_BASE_(r13)
/* 8007D910 0007A910  57 A0 10 3A */	slwi r0, r29, 2
/* 8007D914 0007A914  1C 63 00 0C */	mulli r3, r3, 0xc
/* 8007D918 0007A918  7C 63 02 14 */	add r3, r3, r0
/* 8007D91C 0007A91C  48 04 0C D1 */	bl NuMemAlloc
/* 8007D920 0007A920  90 6D 9A 74 */	stw r3, vsdata-_SDA_BASE_(r13)
/* 8007D924 0007A924  2C 03 00 00 */	cmpwi r3, 0
/* 8007D928 0007A928  41 82 00 A0 */	beq lbl_8007D9C8
/* 8007D92C 0007A92C  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 8007D930 0007A930  3B 60 00 00 */	li r27, 0
/* 8007D934 0007A934  7C 7F 1B 78 */	mr r31, r3
/* 8007D938 0007A938  93 8D 9A 70 */	stw r28, vscnt-_SDA_BASE_(r13)
/* 8007D93C 0007A93C  7C 1B 00 00 */	cmpw r27, r0
/* 8007D940 0007A940  40 80 00 88 */	bge lbl_8007D9C8
/* 8007D944 0007A944  3D 20 80 17 */	lis r9, visidat@ha
/* 8007D948 0007A948  3F 20 80 12 */	lis r25, lbl_801198E4@ha
/* 8007D94C 0007A94C  3B 49 CA F8 */	addi r26, r9, visidat@l
lbl_8007D950:
/* 8007D950 0007A950  81 3E 00 30 */	lwz r9, 0x30(r30)
/* 8007D954 0007A954  38 99 98 E4 */	addi r4, r25, lbl_801198E4@l
/* 8007D958 0007A958  7D 3C 4A 14 */	add r9, r28, r9
/* 8007D95C 0007A95C  80 69 00 04 */	lwz r3, 4(r9)
/* 8007D960 0007A960  48 05 DD 45 */	bl gcc2_compiled__N139
/* 8007D964 0007A964  2C 03 00 00 */	cmpwi r3, 0
/* 8007D968 0007A968  41 82 00 4C */	beq lbl_8007D9B4
/* 8007D96C 0007A96C  81 2D 9A 70 */	lwz r9, vscnt-_SDA_BASE_(r13)
/* 8007D970 0007A970  38 7F 00 08 */	addi r3, r31, 8
/* 8007D974 0007A974  7F C4 F3 78 */	mr r4, r30
/* 8007D978 0007A978  55 20 10 3A */	slwi r0, r9, 2
/* 8007D97C 0007A97C  7F FA 01 2E */	stwx r31, r26, r0
/* 8007D980 0007A980  39 29 00 01 */	addi r9, r9, 1
/* 8007D984 0007A984  91 2D 9A 70 */	stw r9, vscnt-_SDA_BASE_(r13)
/* 8007D988 0007A988  80 BE 00 30 */	lwz r5, 0x30(r30)
/* 8007D98C 0007A98C  7C A5 E2 14 */	add r5, r5, r28
/* 8007D990 0007A990  4B FF FD F5 */	bl VSAddObjs
/* 8007D994 0007A994  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 8007D998 0007A998  7C 7D 1B 78 */	mr r29, r3
/* 8007D99C 0007A99C  57 A9 10 3A */	slwi r9, r29, 2
/* 8007D9A0 0007A9A0  93 BF 00 04 */	stw r29, 4(r31)
/* 8007D9A4 0007A9A4  7C 00 E2 14 */	add r0, r0, r28
/* 8007D9A8 0007A9A8  39 29 00 0C */	addi r9, r9, 0xc
/* 8007D9AC 0007A9AC  90 1F 00 00 */	stw r0, 0(r31)
/* 8007D9B0 0007A9B0  7F FF 4A 14 */	add r31, r31, r9
lbl_8007D9B4:
/* 8007D9B4 0007A9B4  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 8007D9B8 0007A9B8  3B 7B 00 01 */	addi r27, r27, 1
/* 8007D9BC 0007A9BC  3B 9C 00 0C */	addi r28, r28, 0xc
/* 8007D9C0 0007A9C0  7C 1B 00 00 */	cmpw r27, r0
/* 8007D9C4 0007A9C4  41 80 FF 8C */	blt lbl_8007D950
lbl_8007D9C8:
/* 8007D9C8 0007A9C8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8007D9CC 0007A9CC  7C 08 03 A6 */	mtlr r0
/* 8007D9D0 0007A9D0  BB 21 00 0C */	lmw r25, 0xc(r1)
/* 8007D9D4 0007A9D4  38 21 00 28 */	addi r1, r1, 0x28
/* 8007D9D8 0007A9D8  4E 80 00 20 */	blr 

.global ReleaseVisiTable
ReleaseVisiTable:
/* 8007D9DC 0007A9DC  94 21 FF F8 */	stwu r1, -8(r1)
/* 8007D9E0 0007A9E0  7C 08 02 A6 */	mflr r0
/* 8007D9E4 0007A9E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8007D9E8 0007A9E8  80 6D 9A 74 */	lwz r3, vsdata-_SDA_BASE_(r13)
/* 8007D9EC 0007A9EC  2C 03 00 00 */	cmpwi r3, 0
/* 8007D9F0 0007A9F0  41 82 00 08 */	beq lbl_8007D9F8
/* 8007D9F4 0007A9F4  48 04 0D 09 */	bl NuMemFree
lbl_8007D9F8:
/* 8007D9F8 0007A9F8  38 00 00 00 */	li r0, 0
/* 8007D9FC 0007A9FC  90 0D 9A 74 */	stw r0, vsdata-_SDA_BASE_(r13)
/* 8007DA00 0007AA00  90 0D 9A 70 */	stw r0, vscnt-_SDA_BASE_(r13)
/* 8007DA04 0007AA04  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8007DA08 0007AA08  7C 08 03 A6 */	mtlr r0
/* 8007DA0C 0007AA0C  38 21 00 08 */	addi r1, r1, 8
/* 8007DA10 0007AA10  4E 80 00 20 */	blr 