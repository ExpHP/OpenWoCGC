.include "macros.inc"

.section .text, "ax"  # 0x800032A0 - 0x80104920

.global CreateAlphaBlendTexture256_32
CreateAlphaBlendTexture256_32:
/* 8008C560 00089560  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8008C564 00089564  7C 08 02 A6 */	mflr r0
/* 8008C568 00089568  BF 41 00 28 */	stmw r26, 0x28(r1)
/* 8008C56C 0008956C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8008C570 00089570  7C 7E 1B 78 */	mr r30, r3
/* 8008C574 00089574  7C FC 3B 78 */	mr r28, r7
/* 8008C578 00089578  7C 9D 23 78 */	mr r29, r4
/* 8008C57C 0008957C  7C BB 2B 78 */	mr r27, r5
/* 8008C580 00089580  7C DF 33 78 */	mr r31, r6
/* 8008C584 00089584  3C 60 00 04 */	lis r3, 4
/* 8008C588 00089588  4C C6 31 82 */	crclr 6
/* 8008C58C 0008958C  48 03 21 91 */	bl malloc_x
/* 8008C590 00089590  3B 40 00 02 */	li r26, 2
/* 8008C594 00089594  7C 60 1B 78 */	mr r0, r3
/* 8008C598 00089598  3C A0 00 04 */	lis r5, 4
/* 8008C59C 0008959C  7C 04 03 78 */	mr r4, r0
/* 8008C5A0 000895A0  7F C3 F3 78 */	mr r3, r30
/* 8008C5A4 000895A4  90 0D A7 C4 */	stw r0, balls-_SDA_BASE_(r13)
/* 8008C5A8 000895A8  48 03 15 49 */	bl NuFileLoadBuffer
/* 8008C5AC 000895AC  81 4D A7 C4 */	lwz r10, balls-_SDA_BASE_(r13)
/* 8008C5B0 000895B0  39 60 01 00 */	li r11, 0x100
/* 8008C5B4 000895B4  38 00 00 03 */	li r0, 3
/* 8008C5B8 000895B8  39 20 00 01 */	li r9, 1
/* 8008C5BC 000895BC  90 01 00 08 */	stw r0, 8(r1)
/* 8008C5C0 000895C0  38 60 00 01 */	li r3, 1
/* 8008C5C4 000895C4  91 61 00 10 */	stw r11, 0x10(r1)
/* 8008C5C8 000895C8  91 21 00 14 */	stw r9, 0x14(r1)
/* 8008C5CC 000895CC  91 61 00 0C */	stw r11, 0xc(r1)
/* 8008C5D0 000895D0  91 41 00 18 */	stw r10, 0x18(r1)
/* 8008C5D4 000895D4  48 02 65 E5 */	bl NuMtlCreate
/* 8008C5D8 000895D8  7C 7E 1B 78 */	mr r30, r3
/* 8008C5DC 000895DC  3D 20 80 12 */	lis r9, lbl_8011B3F4@ha
/* 8008C5E0 000895E0  80 1E 00 04 */	lwz r0, 4(r30)
/* 8008C5E4 000895E4  3D 60 80 12 */	lis r11, lbl_8011B3F8@ha
/* 8008C5E8 000895E8  C0 09 B3 F4 */	lfs f0, lbl_8011B3F4@l(r9)
/* 8008C5EC 000895EC  2C 1D 00 00 */	cmpwi r29, 0
/* 8008C5F0 000895F0  53 40 A2 96 */	rlwimi r0, r26, 0x14, 0xa, 0xb
/* 8008C5F4 000895F4  C1 AB B3 F8 */	lfs f13, lbl_8011B3F8@l(r11)
/* 8008C5F8 000895F8  53 80 93 1A */	rlwimi r0, r28, 0x12, 0xc, 0xd
/* 8008C5FC 000895FC  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 8008C600 00089600  7C 09 03 78 */	mr r9, r0
/* 8008C604 00089604  D1 BE 00 34 */	stfs f13, 0x34(r30)
/* 8008C608 00089608  53 69 F0 02 */	rlwimi r9, r27, 0x1e, 0, 1
/* 8008C60C 0008960C  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 8008C610 00089610  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 8008C614 00089614  91 3E 00 04 */	stw r9, 4(r30)
/* 8008C618 00089618  41 82 00 0C */	beq lbl_8008C624
/* 8008C61C 0008961C  61 20 00 01 */	ori r0, r9, 1
/* 8008C620 00089620  90 1E 00 04 */	stw r0, 4(r30)
lbl_8008C624:
/* 8008C624 00089624  38 61 00 08 */	addi r3, r1, 8
/* 8008C628 00089628  48 02 D2 31 */	bl NuTexCreate
/* 8008C62C 0008962C  80 1E 00 04 */	lwz r0, 4(r30)
/* 8008C630 00089630  90 7E 00 38 */	stw r3, 0x38(r30)
/* 8008C634 00089634  53 40 83 9E */	rlwimi r0, r26, 0x10, 0xe, 0xf
/* 8008C638 00089638  B3 FE 00 3C */	sth r31, 0x3c(r30)
/* 8008C63C 0008963C  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 8008C640 00089640  7F C3 F3 78 */	mr r3, r30
/* 8008C644 00089644  90 1E 00 04 */	stw r0, 4(r30)
/* 8008C648 00089648  48 02 67 DD */	bl NuMtlUpdate
/* 8008C64C 0008964C  80 6D A7 C4 */	lwz r3, balls-_SDA_BASE_(r13)
/* 8008C650 00089650  4C C6 31 82 */	crclr 6
/* 8008C654 00089654  48 03 20 F5 */	bl free_x
/* 8008C658 00089658  38 00 00 00 */	li r0, 0
/* 8008C65C 0008965C  7F C3 F3 78 */	mr r3, r30
/* 8008C660 00089660  90 01 00 18 */	stw r0, 0x18(r1)
/* 8008C664 00089664  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8008C668 00089668  7C 08 03 A6 */	mtlr r0
/* 8008C66C 0008966C  BB 41 00 28 */	lmw r26, 0x28(r1)
/* 8008C670 00089670  38 21 00 40 */	addi r1, r1, 0x40
/* 8008C674 00089674  4E 80 00 20 */	blr 

.global CreateAlphaBlendTexture256128_32
CreateAlphaBlendTexture256128_32:
/* 8008C678 00089678  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8008C67C 0008967C  7C 08 02 A6 */	mflr r0
/* 8008C680 00089680  BF 41 00 28 */	stmw r26, 0x28(r1)
/* 8008C684 00089684  90 01 00 44 */	stw r0, 0x44(r1)
/* 8008C688 00089688  7C 7E 1B 78 */	mr r30, r3
/* 8008C68C 0008968C  7C FC 3B 78 */	mr r28, r7
/* 8008C690 00089690  3C 60 00 01 */	lis r3, 0x0001000C@h
/* 8008C694 00089694  7C 9D 23 78 */	mr r29, r4
/* 8008C698 00089698  7C BB 2B 78 */	mr r27, r5
/* 8008C69C 0008969C  7C DF 33 78 */	mr r31, r6
/* 8008C6A0 000896A0  60 63 00 0C */	ori r3, r3, 0x0001000C@l
/* 8008C6A4 000896A4  3B 40 00 02 */	li r26, 2
/* 8008C6A8 000896A8  4C C6 31 82 */	crclr 6
/* 8008C6AC 000896AC  48 03 20 71 */	bl malloc_x
/* 8008C6B0 000896B0  7C 60 1B 78 */	mr r0, r3
/* 8008C6B4 000896B4  3C A0 00 01 */	lis r5, 0x0001000C@h
/* 8008C6B8 000896B8  7C 04 03 78 */	mr r4, r0
/* 8008C6BC 000896BC  7F C3 F3 78 */	mr r3, r30
/* 8008C6C0 000896C0  60 A5 00 0C */	ori r5, r5, 0x0001000C@l
/* 8008C6C4 000896C4  90 0D A7 C4 */	stw r0, balls-_SDA_BASE_(r13)
/* 8008C6C8 000896C8  48 03 14 29 */	bl NuFileLoadBuffer
/* 8008C6CC 000896CC  81 0D A7 C4 */	lwz r8, balls-_SDA_BASE_(r13)
/* 8008C6D0 000896D0  39 60 00 01 */	li r11, 1
/* 8008C6D4 000896D4  39 40 00 80 */	li r10, 0x80
/* 8008C6D8 000896D8  38 00 20 0C */	li r0, 0x200c
/* 8008C6DC 000896DC  39 20 00 03 */	li r9, 3
/* 8008C6E0 000896E0  90 0D 86 E8 */	stw r0, iss3cmp-_SDA_BASE_(r13)
/* 8008C6E4 000896E4  91 21 00 08 */	stw r9, 8(r1)
/* 8008C6E8 000896E8  38 60 00 01 */	li r3, 1
/* 8008C6EC 000896EC  91 61 00 14 */	stw r11, 0x14(r1)
/* 8008C6F0 000896F0  91 6D 91 60 */	stw r11, DoNotSiwzzle-_SDA_BASE_(r13)
/* 8008C6F4 000896F4  91 41 00 10 */	stw r10, 0x10(r1)
/* 8008C6F8 000896F8  91 01 00 18 */	stw r8, 0x18(r1)
/* 8008C6FC 000896FC  91 41 00 0C */	stw r10, 0xc(r1)
/* 8008C700 00089700  48 02 64 B9 */	bl NuMtlCreate
/* 8008C704 00089704  7C 7E 1B 78 */	mr r30, r3
/* 8008C708 00089708  3D 20 80 12 */	lis r9, lbl_8011B3FC@ha
/* 8008C70C 0008970C  80 1E 00 04 */	lwz r0, 4(r30)
/* 8008C710 00089710  3D 60 80 12 */	lis r11, lbl_8011B400@ha
/* 8008C714 00089714  C0 09 B3 FC */	lfs f0, lbl_8011B3FC@l(r9)
/* 8008C718 00089718  2C 1D 00 00 */	cmpwi r29, 0
/* 8008C71C 0008971C  53 40 A2 96 */	rlwimi r0, r26, 0x14, 0xa, 0xb
/* 8008C720 00089720  C1 AB B4 00 */	lfs f13, lbl_8011B400@l(r11)
/* 8008C724 00089724  53 80 93 1A */	rlwimi r0, r28, 0x12, 0xc, 0xd
/* 8008C728 00089728  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 8008C72C 0008972C  7C 09 03 78 */	mr r9, r0
/* 8008C730 00089730  D1 BE 00 34 */	stfs f13, 0x34(r30)
/* 8008C734 00089734  53 69 F0 02 */	rlwimi r9, r27, 0x1e, 0, 1
/* 8008C738 00089738  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 8008C73C 0008973C  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 8008C740 00089740  91 3E 00 04 */	stw r9, 4(r30)
/* 8008C744 00089744  41 82 00 0C */	beq lbl_8008C750
/* 8008C748 00089748  61 20 00 01 */	ori r0, r9, 1
/* 8008C74C 0008974C  90 1E 00 04 */	stw r0, 4(r30)
lbl_8008C750:
/* 8008C750 00089750  38 61 00 08 */	addi r3, r1, 8
/* 8008C754 00089754  48 02 D1 05 */	bl NuTexCreate
/* 8008C758 00089758  80 1E 00 04 */	lwz r0, 4(r30)
/* 8008C75C 0008975C  90 7E 00 38 */	stw r3, 0x38(r30)
/* 8008C760 00089760  53 40 83 9E */	rlwimi r0, r26, 0x10, 0xe, 0xf
/* 8008C764 00089764  B3 FE 00 3C */	sth r31, 0x3c(r30)
/* 8008C768 00089768  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 8008C76C 0008976C  7F C3 F3 78 */	mr r3, r30
/* 8008C770 00089770  90 1E 00 04 */	stw r0, 4(r30)
/* 8008C774 00089774  48 02 66 B1 */	bl NuMtlUpdate
/* 8008C778 00089778  80 6D A7 C4 */	lwz r3, balls-_SDA_BASE_(r13)
/* 8008C77C 0008977C  4C C6 31 82 */	crclr 6
/* 8008C780 00089780  48 03 1F C9 */	bl free_x
/* 8008C784 00089784  38 00 00 00 */	li r0, 0
/* 8008C788 00089788  7F C3 F3 78 */	mr r3, r30
/* 8008C78C 0008978C  90 0D 86 E8 */	stw r0, iss3cmp-_SDA_BASE_(r13)
/* 8008C790 00089790  90 01 00 18 */	stw r0, 0x18(r1)
/* 8008C794 00089794  90 0D 91 60 */	stw r0, DoNotSiwzzle-_SDA_BASE_(r13)
/* 8008C798 00089798  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8008C79C 0008979C  7C 08 03 A6 */	mtlr r0
/* 8008C7A0 000897A0  BB 41 00 28 */	lmw r26, 0x28(r1)
/* 8008C7A4 000897A4  38 21 00 40 */	addi r1, r1, 0x40
/* 8008C7A8 000897A8  4E 80 00 20 */	blr 

.global CreateAlphaBlendTexture64
CreateAlphaBlendTexture64:
/* 8008C7AC 000897AC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8008C7B0 000897B0  7C 08 02 A6 */	mflr r0
/* 8008C7B4 000897B4  BF 61 00 2C */	stmw r27, 0x2c(r1)
/* 8008C7B8 000897B8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8008C7BC 000897BC  7C 7E 1B 78 */	mr r30, r3
/* 8008C7C0 000897C0  7C 9D 23 78 */	mr r29, r4
/* 8008C7C4 000897C4  7C BC 2B 78 */	mr r28, r5
/* 8008C7C8 000897C8  7C DF 33 78 */	mr r31, r6
/* 8008C7CC 000897CC  38 60 40 00 */	li r3, 0x4000
/* 8008C7D0 000897D0  3B 60 00 00 */	li r27, 0
/* 8008C7D4 000897D4  4C C6 31 82 */	crclr 6
/* 8008C7D8 000897D8  48 03 1F 45 */	bl malloc_x
/* 8008C7DC 000897DC  7C 60 1B 78 */	mr r0, r3
/* 8008C7E0 000897E0  38 A0 40 00 */	li r5, 0x4000
/* 8008C7E4 000897E4  7C 04 03 78 */	mr r4, r0
/* 8008C7E8 000897E8  7F C3 F3 78 */	mr r3, r30
/* 8008C7EC 000897EC  90 0D A7 C4 */	stw r0, balls-_SDA_BASE_(r13)
/* 8008C7F0 000897F0  48 03 13 01 */	bl NuFileLoadBuffer
/* 8008C7F4 000897F4  81 6D A7 C4 */	lwz r11, balls-_SDA_BASE_(r13)
/* 8008C7F8 000897F8  39 20 00 40 */	li r9, 0x40
/* 8008C7FC 000897FC  38 00 00 03 */	li r0, 3
/* 8008C800 00089800  91 21 00 10 */	stw r9, 0x10(r1)
/* 8008C804 00089804  90 01 00 08 */	stw r0, 8(r1)
/* 8008C808 00089808  38 60 00 01 */	li r3, 1
/* 8008C80C 0008980C  91 61 00 18 */	stw r11, 0x18(r1)
/* 8008C810 00089810  91 21 00 0C */	stw r9, 0xc(r1)
/* 8008C814 00089814  93 61 00 14 */	stw r27, 0x14(r1)
/* 8008C818 00089818  48 02 63 A1 */	bl NuMtlCreate
/* 8008C81C 0008981C  7C 7E 1B 78 */	mr r30, r3
/* 8008C820 00089820  39 40 00 02 */	li r10, 2
/* 8008C824 00089824  80 1E 00 04 */	lwz r0, 4(r30)
/* 8008C828 00089828  3D 20 80 12 */	lis r9, lbl_8011B404@ha
/* 8008C82C 0008982C  C0 09 B4 04 */	lfs f0, lbl_8011B404@l(r9)
/* 8008C830 00089830  3D 60 80 12 */	lis r11, lbl_8011B408@ha
/* 8008C834 00089834  51 40 A2 96 */	rlwimi r0, r10, 0x14, 0xa, 0xb
/* 8008C838 00089838  C1 AB B4 08 */	lfs f13, lbl_8011B408@l(r11)
/* 8008C83C 0008983C  54 00 03 56 */	rlwinm r0, r0, 0, 0xd, 0xb
/* 8008C840 00089840  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 8008C844 00089844  64 00 00 04 */	oris r0, r0, 4
/* 8008C848 00089848  D1 BE 00 34 */	stfs f13, 0x34(r30)
/* 8008C84C 0008984C  51 40 83 9E */	rlwimi r0, r10, 0x10, 0xe, 0xf
/* 8008C850 00089850  2C 1D 00 00 */	cmpwi r29, 0
/* 8008C854 00089854  7C 09 03 78 */	mr r9, r0
/* 8008C858 00089858  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 8008C85C 0008985C  53 89 F0 02 */	rlwimi r9, r28, 0x1e, 0, 1
/* 8008C860 00089860  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 8008C864 00089864  91 3E 00 04 */	stw r9, 4(r30)
/* 8008C868 00089868  41 82 00 0C */	beq lbl_8008C874
/* 8008C86C 0008986C  61 20 00 01 */	ori r0, r9, 1
/* 8008C870 00089870  90 1E 00 04 */	stw r0, 4(r30)
lbl_8008C874:
/* 8008C874 00089874  38 61 00 08 */	addi r3, r1, 8
/* 8008C878 00089878  48 02 CF E1 */	bl NuTexCreate
/* 8008C87C 0008987C  80 1E 00 04 */	lwz r0, 4(r30)
/* 8008C880 00089880  90 7E 00 38 */	stw r3, 0x38(r30)
/* 8008C884 00089884  53 60 83 9E */	rlwimi r0, r27, 0x10, 0xe, 0xf
/* 8008C888 00089888  B3 FE 00 3C */	sth r31, 0x3c(r30)
/* 8008C88C 0008988C  90 1E 00 04 */	stw r0, 4(r30)
/* 8008C890 00089890  7F C3 F3 78 */	mr r3, r30
/* 8008C894 00089894  48 02 65 91 */	bl NuMtlUpdate
/* 8008C898 00089898  80 6D A7 C4 */	lwz r3, balls-_SDA_BASE_(r13)
/* 8008C89C 0008989C  4C C6 31 82 */	crclr 6
/* 8008C8A0 000898A0  48 03 1E A9 */	bl free_x
/* 8008C8A4 000898A4  7F C3 F3 78 */	mr r3, r30
/* 8008C8A8 000898A8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8008C8AC 000898AC  7C 08 03 A6 */	mtlr r0
/* 8008C8B0 000898B0  BB 61 00 2C */	lmw r27, 0x2c(r1)
/* 8008C8B4 000898B4  38 21 00 40 */	addi r1, r1, 0x40
/* 8008C8B8 000898B8  4E 80 00 20 */	blr 
