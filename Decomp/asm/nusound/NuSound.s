.include "macros.inc"

.section .text, "ax"  # 0x800032A0 - 0x80104920

.global NuSoundApply3d
NuSoundApply3d:
/* 800C20D0 000BF0D0  94 21 FF 88 */	stwu r1, -0x78(r1)
/* 800C20D4 000BF0D4  7C 08 02 A6 */	mflr r0
/* 800C20D8 000BF0D8  DB 81 00 58 */	stfd f28, 0x58(r1)
/* 800C20DC 000BF0DC  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 800C20E0 000BF0E0  DB C1 00 68 */	stfd f30, 0x68(r1)
/* 800C20E4 000BF0E4  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 800C20E8 000BF0E8  BF A1 00 4C */	stmw r29, 0x4c(r1)
/* 800C20EC 000BF0EC  90 01 00 7C */	stw r0, 0x7c(r1)
/* 800C20F0 000BF0F0  3D 20 80 32 */	lis r9, global_camera@ha
/* 800C20F4 000BF0F4  7C 7F 1B 78 */	mr r31, r3
/* 800C20F8 000BF0F8  39 29 13 74 */	addi r9, r9, global_camera@l
/* 800C20FC 000BF0FC  C1 BF 00 04 */	lfs f13, 4(r31)
/* 800C2100 000BF100  C1 89 00 34 */	lfs f12, 0x34(r9)
/* 800C2104 000BF104  7C 9E 23 78 */	mr r30, r4
/* 800C2108 000BF108  C0 1F 00 00 */	lfs f0, 0(r31)
/* 800C210C 000BF10C  7C BD 2B 78 */	mr r29, r5
/* 800C2110 000BF110  C1 69 00 30 */	lfs f11, 0x30(r9)
/* 800C2114 000BF114  ED AD 60 28 */	fsubs f13, f13, f12
/* 800C2118 000BF118  C1 49 00 38 */	lfs f10, 0x38(r9)
/* 800C211C 000BF11C  ED AD 03 72 */	fmuls f13, f13, f13
/* 800C2120 000BF120  C0 3F 00 08 */	lfs f1, 8(r31)
/* 800C2124 000BF124  EC 00 58 28 */	fsubs f0, f0, f11
/* 800C2128 000BF128  EC 00 68 3A */	fmadds f0, f0, f0, f13
/* 800C212C 000BF12C  EC 21 50 28 */	fsubs f1, f1, f10
/* 800C2130 000BF130  EC 21 00 7A */	fmadds f1, f1, f1, f0
/* 800C2134 000BF134  4B FF C6 41 */	bl NuFsqrt
/* 800C2138 000BF138  C0 0D 8F 9C */	lfs f0, nusound_fade_end-_SDA_BASE_(r13)
/* 800C213C 000BF13C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 800C2140 000BF140  40 81 00 0C */	ble lbl_800C214C
/* 800C2144 000BF144  38 60 00 00 */	li r3, 0
/* 800C2148 000BF148  48 00 01 B4 */	b lbl_800C22FC
lbl_800C214C:
/* 800C214C 000BF14C  C1 AD 8F 98 */	lfs f13, nusound_fade_start-_SDA_BASE_(r13)
/* 800C2150 000BF150  FC 01 68 00 */	fcmpu cr0, f1, f13
/* 800C2154 000BF154  40 81 00 14 */	ble lbl_800C2168
/* 800C2158 000BF158  ED A0 68 28 */	fsubs f13, f0, f13
/* 800C215C 000BF15C  EC 00 08 28 */	fsubs f0, f0, f1
/* 800C2160 000BF160  EF A0 68 24 */	fdivs f29, f0, f13
/* 800C2164 000BF164  48 00 00 0C */	b lbl_800C2170
lbl_800C2168:
/* 800C2168 000BF168  3D 20 80 12 */	lis r9, lbl_80121194@ha
/* 800C216C 000BF16C  C3 A9 11 94 */	lfs f29, lbl_80121194@l(r9)
lbl_800C2170:
/* 800C2170 000BF170  80 1E 00 00 */	lwz r0, 0(r30)
/* 800C2174 000BF174  3C C0 43 30 */	lis r6, 0x4330
/* 800C2178 000BF178  81 3D 00 00 */	lwz r9, 0(r29)
/* 800C217C 000BF17C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800C2180 000BF180  7D 68 5B 78 */	mr r8, r11
/* 800C2184 000BF184  90 01 00 44 */	stw r0, 0x44(r1)
/* 800C2188 000BF188  6D 29 80 00 */	xoris r9, r9, 0x8000
/* 800C218C 000BF18C  3D 40 80 12 */	lis r10, lbl_80121198@ha
/* 800C2190 000BF190  3C E0 80 12 */	lis r7, lbl_80121194@ha
/* 800C2194 000BF194  90 C1 00 40 */	stw r6, 0x40(r1)
/* 800C2198 000BF198  C9 AA 11 98 */	lfd f13, lbl_80121198@l(r10)
/* 800C219C 000BF19C  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 800C21A0 000BF1A0  91 21 00 44 */	stw r9, 0x44(r1)
/* 800C21A4 000BF1A4  FC 00 68 28 */	fsub f0, f0, f13
/* 800C21A8 000BF1A8  C1 9F 00 00 */	lfs f12, 0(r31)
/* 800C21AC 000BF1AC  90 C1 00 40 */	stw r6, 0x40(r1)
/* 800C21B0 000BF1B0  FF C0 00 18 */	frsp f30, f0
/* 800C21B4 000BF1B4  C1 5F 00 08 */	lfs f10, 8(r31)
/* 800C21B8 000BF1B8  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 800C21BC 000BF1BC  C1 7F 00 04 */	lfs f11, 4(r31)
/* 800C21C0 000BF1C0  C3 87 11 94 */	lfs f28, lbl_80121194@l(r7)
/* 800C21C4 000BF1C4  FC 00 68 28 */	fsub f0, f0, f13
/* 800C21C8 000BF1C8  D1 81 00 08 */	stfs f12, 8(r1)
/* 800C21CC 000BF1CC  FF E0 00 18 */	frsp f31, f0
/* 800C21D0 000BF1D0  D1 61 00 0C */	stfs f11, 0xc(r1)
/* 800C21D4 000BF1D4  D1 41 00 10 */	stfs f10, 0x10(r1)
/* 800C21D8 000BF1D8  D3 81 00 14 */	stfs f28, 0x14(r1)
/* 800C21DC 000BF1DC  4B FE AD 05 */	bl NuCameraGetMtx
/* 800C21E0 000BF1E0  7C 65 1B 78 */	mr r5, r3
/* 800C21E4 000BF1E4  38 61 00 08 */	addi r3, r1, 8
/* 800C21E8 000BF1E8  7C 64 1B 78 */	mr r4, r3
/* 800C21EC 000BF1EC  4B FF F9 91 */	bl NuVec4MtxTransform
/* 800C21F0 000BF1F0  3D 20 80 12 */	lis r9, lbl_801211A0@ha
/* 800C21F4 000BF1F4  C1 A1 00 14 */	lfs f13, 0x14(r1)
/* 800C21F8 000BF1F8  C1 89 11 A0 */	lfs f12, lbl_801211A0@l(r9)
/* 800C21FC 000BF1FC  FC 0D 60 00 */	fcmpu cr0, f13, f12
/* 800C2200 000BF200  41 82 00 10 */	beq lbl_800C2210
/* 800C2204 000BF204  C0 01 00 08 */	lfs f0, 8(r1)
/* 800C2208 000BF208  EC 00 68 24 */	fdivs f0, f0, f13
/* 800C220C 000BF20C  D0 01 00 08 */	stfs f0, 8(r1)
lbl_800C2210:
/* 800C2210 000BF210  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 800C2214 000BF214  FC 00 60 00 */	fcmpu cr0, f0, f12
/* 800C2218 000BF218  40 80 00 10 */	bge lbl_800C2228
/* 800C221C 000BF21C  C0 01 00 08 */	lfs f0, 8(r1)
/* 800C2220 000BF220  FC 00 00 50 */	fneg f0, f0
/* 800C2224 000BF224  D0 01 00 08 */	stfs f0, 8(r1)
lbl_800C2228:
/* 800C2228 000BF228  C0 01 00 08 */	lfs f0, 8(r1)
/* 800C222C 000BF22C  FF 80 E0 00 */	fcmpu cr7, f0, f28
/* 800C2230 000BF230  41 9D 00 14 */	bgt cr7, lbl_800C2244
/* 800C2234 000BF234  3D 20 80 12 */	lis r9, lbl_801211A4@ha
/* 800C2238 000BF238  C1 A9 11 A4 */	lfs f13, lbl_801211A4@l(r9)
/* 800C223C 000BF23C  FC 00 68 00 */	fcmpu cr0, f0, f13
/* 800C2240 000BF240  41 80 00 14 */	blt lbl_800C2254
lbl_800C2244:
/* 800C2244 000BF244  FD 60 00 90 */	fmr f11, f0
/* 800C2248 000BF248  40 9D 00 10 */	ble cr7, lbl_800C2258
/* 800C224C 000BF24C  FD 60 E0 90 */	fmr f11, f28
/* 800C2250 000BF250  48 00 00 08 */	b lbl_800C2258
lbl_800C2254:
/* 800C2254 000BF254  FD 60 68 90 */	fmr f11, f13
lbl_800C2258:
/* 800C2258 000BF258  3D 20 80 12 */	lis r9, lbl_80121194@ha
/* 800C225C 000BF25C  3D 60 80 12 */	lis r11, lbl_801211A8@ha
/* 800C2260 000BF260  C0 09 11 94 */	lfs f0, lbl_80121194@l(r9)
/* 800C2264 000BF264  3D 40 80 12 */	lis r10, lbl_801211AC@ha
/* 800C2268 000BF268  C1 8B 11 A8 */	lfs f12, lbl_801211A8@l(r11)
/* 800C226C 000BF26C  ED A0 58 28 */	fsubs f13, f0, f11
/* 800C2270 000BF270  C1 4A 11 AC */	lfs f10, lbl_801211AC@l(r10)
/* 800C2274 000BF274  EC 0B 00 2A */	fadds f0, f11, f0
/* 800C2278 000BF278  D1 61 00 08 */	stfs f11, 8(r1)
/* 800C227C 000BF27C  ED AD 03 32 */	fmuls f13, f13, f12
/* 800C2280 000BF280  EC 00 03 32 */	fmuls f0, f0, f12
/* 800C2284 000BF284  ED AD 07 72 */	fmuls f13, f13, f29
/* 800C2288 000BF288  EC 00 07 72 */	fmuls f0, f0, f29
/* 800C228C 000BF28C  EF DE 03 72 */	fmuls f30, f30, f13
/* 800C2290 000BF290  EF FF 00 32 */	fmuls f31, f31, f0
/* 800C2294 000BF294  FC 1E 50 00 */	fcmpu cr0, f30, f10
/* 800C2298 000BF298  40 81 00 08 */	ble lbl_800C22A0
/* 800C229C 000BF29C  FF C0 50 90 */	fmr f30, f10
lbl_800C22A0:
/* 800C22A0 000BF2A0  FC 1F 50 00 */	fcmpu cr0, f31, f10
/* 800C22A4 000BF2A4  40 81 00 08 */	ble lbl_800C22AC
/* 800C22A8 000BF2A8  FF E0 50 90 */	fmr f31, f10
lbl_800C22AC:
/* 800C22AC 000BF2AC  3D 20 80 12 */	lis r9, lbl_801211B0@ha
/* 800C22B0 000BF2B0  C0 09 11 B0 */	lfs f0, lbl_801211B0@l(r9)
/* 800C22B4 000BF2B4  FC 1E 00 00 */	fcmpu cr0, f30, f0
/* 800C22B8 000BF2B8  40 80 00 08 */	bge lbl_800C22C0
/* 800C22BC 000BF2BC  FF C0 00 90 */	fmr f30, f0
lbl_800C22C0:
/* 800C22C0 000BF2C0  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 800C22C4 000BF2C4  40 80 00 08 */	bge lbl_800C22CC
/* 800C22C8 000BF2C8  FF E0 00 90 */	fmr f31, f0
lbl_800C22CC:
/* 800C22CC 000BF2CC  FC 00 F0 90 */	fmr f0, f30
/* 800C22D0 000BF2D0  FD A0 00 1E */	fctiwz f13, f0
/* 800C22D4 000BF2D4  7D 69 5B 78 */	mr r9, r11
/* 800C22D8 000BF2D8  D9 A1 00 40 */	stfd f13, 0x40(r1)
/* 800C22DC 000BF2DC  FD 80 F8 90 */	fmr f12, f31
/* 800C22E0 000BF2E0  FC 00 60 1E */	fctiwz f0, f12
/* 800C22E4 000BF2E4  38 60 00 01 */	li r3, 1
/* 800C22E8 000BF2E8  81 61 00 44 */	lwz r11, 0x44(r1)
/* 800C22EC 000BF2EC  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 800C22F0 000BF2F0  91 7E 00 00 */	stw r11, 0(r30)
/* 800C22F4 000BF2F4  81 21 00 44 */	lwz r9, 0x44(r1)
/* 800C22F8 000BF2F8  91 3D 00 00 */	stw r9, 0(r29)
lbl_800C22FC:
/* 800C22FC 000BF2FC  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 800C2300 000BF300  7C 08 03 A6 */	mtlr r0
/* 800C2304 000BF304  BB A1 00 4C */	lmw r29, 0x4c(r1)
/* 800C2308 000BF308  CB 81 00 58 */	lfd f28, 0x58(r1)
/* 800C230C 000BF30C  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 800C2310 000BF310  CB C1 00 68 */	lfd f30, 0x68(r1)
/* 800C2314 000BF314  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 800C2318 000BF318  38 21 00 78 */	addi r1, r1, 0x78
/* 800C231C 000BF31C  4E 80 00 20 */	blr 

.global NuSoundFindLoopInfo
NuSoundFindLoopInfo:
/* 800C2320 000BF320  38 00 00 08 */	li r0, 8
/* 800C2324 000BF324  3D 20 80 3D */	lis r9, NuSndLoopInfo@ha
/* 800C2328 000BF328  7C 09 03 A6 */	mtctr r0
/* 800C232C 000BF32C  7C 68 1B 78 */	mr r8, r3
/* 800C2330 000BF330  39 29 89 18 */	addi r9, r9, NuSndLoopInfo@l
/* 800C2334 000BF334  38 E0 FF FF */	li r7, -1
/* 800C2338 000BF338  39 40 00 00 */	li r10, 0
/* 800C233C 000BF33C  7D 23 4B 78 */	mr r3, r9
lbl_800C2340:
/* 800C2340 000BF340  A8 09 00 08 */	lha r0, 8(r9)
/* 800C2344 000BF344  7C 6B 1B 78 */	mr r11, r3
/* 800C2348 000BF348  2C 00 00 00 */	cmpwi r0, 0
/* 800C234C 000BF34C  40 82 00 08 */	bne lbl_800C2354
/* 800C2350 000BF350  7D 47 53 78 */	mr r7, r10
lbl_800C2354:
/* 800C2354 000BF354  80 09 00 00 */	lwz r0, 0(r9)
/* 800C2358 000BF358  7C 00 40 00 */	cmpw r0, r8
/* 800C235C 000BF35C  4D 82 00 20 */	beqlr 
/* 800C2360 000BF360  38 6B 00 10 */	addi r3, r11, 0x10
/* 800C2364 000BF364  39 29 00 10 */	addi r9, r9, 0x10
/* 800C2368 000BF368  39 4A 00 01 */	addi r10, r10, 1
/* 800C236C 000BF36C  42 00 FF D4 */	bdnz lbl_800C2340
/* 800C2370 000BF370  2C 07 FF FF */	cmpwi r7, -1
/* 800C2374 000BF374  41 82 00 24 */	beq lbl_800C2398
/* 800C2378 000BF378  3D 20 80 3D */	lis r9, NuSndLoopInfo@ha
/* 800C237C 000BF37C  54 E0 20 36 */	slwi r0, r7, 4
/* 800C2380 000BF380  39 29 89 18 */	addi r9, r9, NuSndLoopInfo@l
/* 800C2384 000BF384  39 60 00 00 */	li r11, 0
/* 800C2388 000BF388  7C 60 4A 14 */	add r3, r0, r9
/* 800C238C 000BF38C  7D 09 01 2E */	stwx r8, r9, r0
/* 800C2390 000BF390  B1 63 00 04 */	sth r11, 4(r3)
/* 800C2394 000BF394  4E 80 00 20 */	blr 
lbl_800C2398:
/* 800C2398 000BF398  38 60 00 00 */	li r3, 0
/* 800C239C 000BF39C  4E 80 00 20 */	blr 

.global NuSoundInitLoopInfo
NuSoundInitLoopInfo:
/* 800C23A0 000BF3A0  39 60 00 08 */	li r11, 8
/* 800C23A4 000BF3A4  3D 20 80 3D */	lis r9, NuSndLoopInfo@ha
/* 800C23A8 000BF3A8  7D 69 03 A6 */	mtctr r11
/* 800C23AC 000BF3AC  38 00 00 00 */	li r0, 0
/* 800C23B0 000BF3B0  39 29 89 18 */	addi r9, r9, NuSndLoopInfo@l
lbl_800C23B4:
/* 800C23B4 000BF3B4  90 09 00 00 */	stw r0, 0(r9)
/* 800C23B8 000BF3B8  B0 09 00 08 */	sth r0, 8(r9)
/* 800C23BC 000BF3BC  B0 09 00 04 */	sth r0, 4(r9)
/* 800C23C0 000BF3C0  B0 09 00 06 */	sth r0, 6(r9)
/* 800C23C4 000BF3C4  39 29 00 10 */	addi r9, r9, 0x10
/* 800C23C8 000BF3C8  42 00 FF EC */	bdnz lbl_800C23B4
/* 800C23CC 000BF3CC  4E 80 00 20 */	blr 

.global NuSoundInit
NuSoundInit:
/* 800C23D0 000BF3D0  94 21 FF F8 */	stwu r1, -8(r1)
/* 800C23D4 000BF3D4  7C 08 02 A6 */	mflr r0
/* 800C23D8 000BF3D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 800C23DC 000BF3DC  4B FF FF C5 */	bl NuSoundInitLoopInfo
/* 800C23E0 000BF3E0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800C23E4 000BF3E4  7C 08 03 A6 */	mtlr r0
/* 800C23E8 000BF3E8  38 21 00 08 */	addi r1, r1, 8
/* 800C23EC 000BF3EC  4E 80 00 20 */	blr 

.global NuSoundPlay
NuSoundPlay:
/* 800C23F0 000BF3F0  94 21 FF F8 */	stwu r1, -8(r1)
/* 800C23F4 000BF3F4  7C 08 02 A6 */	mflr r0
/* 800C23F8 000BF3F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 800C23FC 000BF3FC  4C C6 31 82 */	crclr 6
/* 800C2400 000BF400  48 00 B9 0D */	bl SS_PlaySFX
/* 800C2404 000BF404  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800C2408 000BF408  7C 08 03 A6 */	mtlr r0
/* 800C240C 000BF40C  38 21 00 08 */	addi r1, r1, 8
/* 800C2410 000BF410  4E 80 00 20 */	blr 

.global NuSoundPlayLoop
NuSoundPlayLoop:
/* 800C2414 000BF414  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C2418 000BF418  7C 08 02 A6 */	mflr r0
/* 800C241C 000BF41C  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 800C2420 000BF420  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C2424 000BF424  7C 7B 1B 78 */	mr r27, r3
/* 800C2428 000BF428  7C 9E 23 78 */	mr r30, r4
/* 800C242C 000BF42C  3C 60 80 16 */	lis r3, dummypos@ha
/* 800C2430 000BF430  7C BD 2B 78 */	mr r29, r5
/* 800C2434 000BF434  7C DC 33 78 */	mr r28, r6
/* 800C2438 000BF438  38 63 0C 68 */	addi r3, r3, dummypos@l
/* 800C243C 000BF43C  4B FF FE E5 */	bl NuSoundFindLoopInfo
/* 800C2440 000BF440  7C 7F 1B 79 */	or. r31, r3, r3
/* 800C2444 000BF444  41 82 00 6C */	beq lbl_800C24B0
/* 800C2448 000BF448  A8 1F 00 04 */	lha r0, 4(r31)
/* 800C244C 000BF44C  2C 00 00 00 */	cmpwi r0, 0
/* 800C2450 000BF450  40 82 00 2C */	bne lbl_800C247C
/* 800C2454 000BF454  38 00 00 01 */	li r0, 1
/* 800C2458 000BF458  7F 63 DB 78 */	mr r3, r27
/* 800C245C 000BF45C  B0 1F 00 04 */	sth r0, 4(r31)
/* 800C2460 000BF460  7F 86 E3 78 */	mr r6, r28
/* 800C2464 000BF464  7F C4 F3 78 */	mr r4, r30
/* 800C2468 000BF468  7F A5 EB 78 */	mr r5, r29
/* 800C246C 000BF46C  4C C6 31 82 */	crclr 6
/* 800C2470 000BF470  48 00 B8 9D */	bl SS_PlaySFX
/* 800C2474 000BF474  B0 7F 00 06 */	sth r3, 6(r31)
/* 800C2478 000BF478  48 00 00 28 */	b lbl_800C24A0
lbl_800C247C:
/* 800C247C 000BF47C  A8 7F 00 06 */	lha r3, 6(r31)
/* 800C2480 000BF480  7F C4 F3 78 */	mr r4, r30
/* 800C2484 000BF484  7F A5 EB 78 */	mr r5, r29
/* 800C2488 000BF488  4C C6 31 82 */	crclr 6
/* 800C248C 000BF48C  48 00 B7 2D */	bl SS_SetChannelVolume
/* 800C2490 000BF490  A8 7F 00 06 */	lha r3, 6(r31)
/* 800C2494 000BF494  7F 84 E3 78 */	mr r4, r28
/* 800C2498 000BF498  4C C6 31 82 */	crclr 6
/* 800C249C 000BF49C  48 00 B7 ED */	bl SS_SetChannelPitch
lbl_800C24A0:
/* 800C24A0 000BF4A0  38 00 00 0C */	li r0, 0xc
/* 800C24A4 000BF4A4  B3 DF 00 0C */	sth r30, 0xc(r31)
/* 800C24A8 000BF4A8  B0 1F 00 08 */	sth r0, 8(r31)
/* 800C24AC 000BF4AC  B3 BF 00 0E */	sth r29, 0xe(r31)
lbl_800C24B0:
/* 800C24B0 000BF4B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C24B4 000BF4B4  7C 08 03 A6 */	mtlr r0
/* 800C24B8 000BF4B8  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 800C24BC 000BF4BC  38 21 00 20 */	addi r1, r1, 0x20
/* 800C24C0 000BF4C0  4E 80 00 20 */	blr 

.global NuSoundPlay3d
NuSoundPlay3d:
/* 800C24C4 000BF4C4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800C24C8 000BF4C8  7C 08 02 A6 */	mflr r0
/* 800C24CC 000BF4CC  BF C1 00 10 */	stmw r30, 0x10(r1)
/* 800C24D0 000BF4D0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800C24D4 000BF4D4  90 A1 00 08 */	stw r5, 8(r1)
/* 800C24D8 000BF4D8  7C 9F 23 78 */	mr r31, r4
/* 800C24DC 000BF4DC  90 C1 00 0C */	stw r6, 0xc(r1)
/* 800C24E0 000BF4E0  7C FE 3B 78 */	mr r30, r7
/* 800C24E4 000BF4E4  38 81 00 08 */	addi r4, r1, 8
/* 800C24E8 000BF4E8  38 A1 00 0C */	addi r5, r1, 0xc
/* 800C24EC 000BF4EC  4B FF FB E5 */	bl NuSoundApply3d
/* 800C24F0 000BF4F0  2C 03 00 00 */	cmpwi r3, 0
/* 800C24F4 000BF4F4  41 82 00 1C */	beq lbl_800C2510
/* 800C24F8 000BF4F8  80 81 00 08 */	lwz r4, 8(r1)
/* 800C24FC 000BF4FC  7F E3 FB 78 */	mr r3, r31
/* 800C2500 000BF500  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 800C2504 000BF504  7F C6 F3 78 */	mr r6, r30
/* 800C2508 000BF508  4C C6 31 82 */	crclr 6
/* 800C250C 000BF50C  48 00 B8 01 */	bl SS_PlaySFX
lbl_800C2510:
/* 800C2510 000BF510  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800C2514 000BF514  7C 08 03 A6 */	mtlr r0
/* 800C2518 000BF518  BB C1 00 10 */	lmw r30, 0x10(r1)
/* 800C251C 000BF51C  38 21 00 18 */	addi r1, r1, 0x18
/* 800C2520 000BF520  4E 80 00 20 */	blr 

.global NuSoundPlay3dLoopSfx
NuSoundPlay3dLoopSfx:
/* 800C2524 000BF524  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 800C2528 000BF528  7C 08 02 A6 */	mflr r0
/* 800C252C 000BF52C  BF 61 00 14 */	stmw r27, 0x14(r1)
/* 800C2530 000BF530  90 01 00 2C */	stw r0, 0x2c(r1)
/* 800C2534 000BF534  90 A1 00 08 */	stw r5, 8(r1)
/* 800C2538 000BF538  7C 7F 1B 78 */	mr r31, r3
/* 800C253C 000BF53C  7C 9D 23 78 */	mr r29, r4
/* 800C2540 000BF540  7C BB 2B 78 */	mr r27, r5
/* 800C2544 000BF544  7C FE 3B 78 */	mr r30, r7
/* 800C2548 000BF548  7C DC 33 78 */	mr r28, r6
/* 800C254C 000BF54C  90 C1 00 0C */	stw r6, 0xc(r1)
/* 800C2550 000BF550  38 81 00 08 */	addi r4, r1, 8
/* 800C2554 000BF554  38 A1 00 0C */	addi r5, r1, 0xc
/* 800C2558 000BF558  4B FF FB 79 */	bl NuSoundApply3d
/* 800C255C 000BF55C  2C 03 00 00 */	cmpwi r3, 0
/* 800C2560 000BF560  41 82 00 7C */	beq lbl_800C25DC
/* 800C2564 000BF564  7F E3 FB 78 */	mr r3, r31
/* 800C2568 000BF568  4B FF FD B9 */	bl NuSoundFindLoopInfo
/* 800C256C 000BF56C  7C 7F 1B 79 */	or. r31, r3, r3
/* 800C2570 000BF570  41 82 00 6C */	beq lbl_800C25DC
/* 800C2574 000BF574  A8 1F 00 04 */	lha r0, 4(r31)
/* 800C2578 000BF578  2C 00 00 00 */	cmpwi r0, 0
/* 800C257C 000BF57C  40 82 00 2C */	bne lbl_800C25A8
/* 800C2580 000BF580  38 00 00 01 */	li r0, 1
/* 800C2584 000BF584  7F A3 EB 78 */	mr r3, r29
/* 800C2588 000BF588  B0 1F 00 04 */	sth r0, 4(r31)
/* 800C258C 000BF58C  7F C6 F3 78 */	mr r6, r30
/* 800C2590 000BF590  80 81 00 08 */	lwz r4, 8(r1)
/* 800C2594 000BF594  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 800C2598 000BF598  4C C6 31 82 */	crclr 6
/* 800C259C 000BF59C  48 00 B7 71 */	bl SS_PlaySFX
/* 800C25A0 000BF5A0  B0 7F 00 06 */	sth r3, 6(r31)
/* 800C25A4 000BF5A4  48 00 00 28 */	b lbl_800C25CC
lbl_800C25A8:
/* 800C25A8 000BF5A8  80 81 00 08 */	lwz r4, 8(r1)
/* 800C25AC 000BF5AC  A8 7F 00 06 */	lha r3, 6(r31)
/* 800C25B0 000BF5B0  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 800C25B4 000BF5B4  4C C6 31 82 */	crclr 6
/* 800C25B8 000BF5B8  48 00 B6 01 */	bl SS_SetChannelVolume
/* 800C25BC 000BF5BC  A8 7F 00 06 */	lha r3, 6(r31)
/* 800C25C0 000BF5C0  7F C4 F3 78 */	mr r4, r30
/* 800C25C4 000BF5C4  4C C6 31 82 */	crclr 6
/* 800C25C8 000BF5C8  48 00 B6 C1 */	bl SS_SetChannelPitch
lbl_800C25CC:
/* 800C25CC 000BF5CC  38 00 00 0C */	li r0, 0xc
/* 800C25D0 000BF5D0  B3 7F 00 0C */	sth r27, 0xc(r31)
/* 800C25D4 000BF5D4  B0 1F 00 08 */	sth r0, 8(r31)
/* 800C25D8 000BF5D8  B3 9F 00 0E */	sth r28, 0xe(r31)
lbl_800C25DC:
/* 800C25DC 000BF5DC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 800C25E0 000BF5E0  7C 08 03 A6 */	mtlr r0
/* 800C25E4 000BF5E4  BB 61 00 14 */	lmw r27, 0x14(r1)
/* 800C25E8 000BF5E8  38 21 00 28 */	addi r1, r1, 0x28
/* 800C25EC 000BF5EC  4E 80 00 20 */	blr 

.global NuSoundPlayStereo
NuSoundPlayStereo:
/* 800C25F0 000BF5F0  94 21 FF F8 */	stwu r1, -8(r1)
/* 800C25F4 000BF5F4  7C 08 02 A6 */	mflr r0
/* 800C25F8 000BF5F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 800C25FC 000BF5FC  7C A4 2B 78 */	mr r4, r5
/* 800C2600 000BF600  38 A0 00 00 */	li r5, 0
/* 800C2604 000BF604  4C C6 31 82 */	crclr 6
/* 800C2608 000BF608  48 00 9B 79 */	bl gcc2_compiled__N81
/* 800C260C 000BF60C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800C2610 000BF610  7C 08 03 A6 */	mtlr r0
/* 800C2614 000BF614  38 21 00 08 */	addi r1, r1, 8
/* 800C2618 000BF618  4E 80 00 20 */	blr 

.global NuSoundPlayStereo2
NuSoundPlayStereo2:
/* 800C261C 000BF61C  94 21 FF F8 */	stwu r1, -8(r1)
/* 800C2620 000BF620  7C 08 02 A6 */	mflr r0
/* 800C2624 000BF624  90 01 00 0C */	stw r0, 0xc(r1)
/* 800C2628 000BF628  7C A4 2B 78 */	mr r4, r5
/* 800C262C 000BF62C  38 A0 00 02 */	li r5, 2
/* 800C2630 000BF630  4C C6 31 82 */	crclr 6
/* 800C2634 000BF634  48 00 9B 4D */	bl gcc2_compiled__N81
/* 800C2638 000BF638  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800C263C 000BF63C  7C 08 03 A6 */	mtlr r0
/* 800C2640 000BF640  38 21 00 08 */	addi r1, r1, 8
/* 800C2644 000BF644  4E 80 00 20 */	blr 

.global NuSoundStopStream
NuSoundStopStream:
/* 800C2648 000BF648  94 21 FF F8 */	stwu r1, -8(r1)
/* 800C264C 000BF64C  7C 08 02 A6 */	mflr r0
/* 800C2650 000BF650  90 01 00 0C */	stw r0, 0xc(r1)
/* 800C2654 000BF654  4C C6 31 82 */	crclr 6
/* 800C2658 000BF658  48 00 C3 6D */	bl SS_TrackStop
/* 800C265C 000BF65C  38 60 00 01 */	li r3, 1
/* 800C2660 000BF660  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800C2664 000BF664  7C 08 03 A6 */	mtlr r0
/* 800C2668 000BF668  38 21 00 08 */	addi r1, r1, 8
/* 800C266C 000BF66C  4E 80 00 20 */	blr 

.global NuSoundUpdate
NuSoundUpdate:
/* 800C2670 000BF670  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800C2674 000BF674  7C 08 02 A6 */	mflr r0
/* 800C2678 000BF678  BF C1 00 10 */	stmw r30, 0x10(r1)
/* 800C267C 000BF67C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800C2680 000BF680  3D 20 80 3D */	lis r9, NuSndLoopInfo@ha
/* 800C2684 000BF684  3B E9 89 18 */	addi r31, r9, NuSndLoopInfo@l
/* 800C2688 000BF688  3B DF 00 70 */	addi r30, r31, 0x70
lbl_800C268C:
/* 800C268C 000BF68C  A1 3F 00 08 */	lhz r9, 8(r31)
/* 800C2690 000BF690  2C 09 00 00 */	cmpwi r9, 0
/* 800C2694 000BF694  41 82 00 A4 */	beq lbl_800C2738
/* 800C2698 000BF698  38 09 FF FF */	addi r0, r9, -1
/* 800C269C 000BF69C  7C 09 07 34 */	extsh r9, r0
/* 800C26A0 000BF6A0  B0 1F 00 08 */	sth r0, 8(r31)
/* 800C26A4 000BF6A4  2C 09 00 00 */	cmpwi r9, 0
/* 800C26A8 000BF6A8  40 82 00 08 */	bne lbl_800C26B0
/* 800C26AC 000BF6AC  B1 3F 00 04 */	sth r9, 4(r31)
lbl_800C26B0:
/* 800C26B0 000BF6B0  A9 5F 00 08 */	lha r10, 8(r31)
/* 800C26B4 000BF6B4  2C 0A 00 07 */	cmpwi r10, 7
/* 800C26B8 000BF6B8  41 81 00 80 */	bgt lbl_800C2738
/* 800C26BC 000BF6BC  A8 1F 00 0C */	lha r0, 0xc(r31)
/* 800C26C0 000BF6C0  7D 60 51 D7 */	mullw. r11, r0, r10
/* 800C26C4 000BF6C4  40 80 00 08 */	bge lbl_800C26CC
/* 800C26C8 000BF6C8  39 6B 00 07 */	addi r11, r11, 7
lbl_800C26CC:
/* 800C26CC 000BF6CC  A9 3F 00 0E */	lha r9, 0xe(r31)
/* 800C26D0 000BF6D0  7D 60 1E 70 */	srawi r0, r11, 3
/* 800C26D4 000BF6D4  90 01 00 08 */	stw r0, 8(r1)
/* 800C26D8 000BF6D8  7D 29 51 D7 */	mullw. r9, r9, r10
/* 800C26DC 000BF6DC  40 80 00 08 */	bge lbl_800C26E4
/* 800C26E0 000BF6E0  39 29 00 07 */	addi r9, r9, 7
lbl_800C26E4:
/* 800C26E4 000BF6E4  80 7F 00 00 */	lwz r3, 0(r31)
/* 800C26E8 000BF6E8  7D 20 1E 70 */	srawi r0, r9, 3
/* 800C26EC 000BF6EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 800C26F0 000BF6F0  2C 03 00 00 */	cmpwi r3, 0
/* 800C26F4 000BF6F4  41 82 00 30 */	beq lbl_800C2724
/* 800C26F8 000BF6F8  38 81 00 08 */	addi r4, r1, 8
/* 800C26FC 000BF6FC  38 A1 00 0C */	addi r5, r1, 0xc
/* 800C2700 000BF700  4B FF F9 D1 */	bl NuSoundApply3d
/* 800C2704 000BF704  2C 03 00 00 */	cmpwi r3, 0
/* 800C2708 000BF708  40 82 00 1C */	bne lbl_800C2724
/* 800C270C 000BF70C  A8 7F 00 06 */	lha r3, 6(r31)
/* 800C2710 000BF710  38 80 00 00 */	li r4, 0
/* 800C2714 000BF714  38 A0 00 00 */	li r5, 0
/* 800C2718 000BF718  4C C6 31 82 */	crclr 6
/* 800C271C 000BF71C  48 00 B4 9D */	bl SS_SetChannelVolume
/* 800C2720 000BF720  48 00 00 18 */	b lbl_800C2738
lbl_800C2724:
/* 800C2724 000BF724  A8 7F 00 06 */	lha r3, 6(r31)
/* 800C2728 000BF728  80 81 00 08 */	lwz r4, 8(r1)
/* 800C272C 000BF72C  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 800C2730 000BF730  4C C6 31 82 */	crclr 6
/* 800C2734 000BF734  48 00 B4 85 */	bl SS_SetChannelVolume
lbl_800C2738:
/* 800C2738 000BF738  3B FF 00 10 */	addi r31, r31, 0x10
/* 800C273C 000BF73C  7C 1F F0 00 */	cmpw r31, r30
/* 800C2740 000BF740  40 81 FF 4C */	ble lbl_800C268C
/* 800C2744 000BF744  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800C2748 000BF748  7C 08 03 A6 */	mtlr r0
/* 800C274C 000BF74C  BB C1 00 10 */	lmw r30, 0x10(r1)
/* 800C2750 000BF750  38 21 00 18 */	addi r1, r1, 0x18
/* 800C2754 000BF754  4E 80 00 20 */	blr 

.global NuXboxSoundUpdate
NuXboxSoundUpdate:
/* 800C2758 000BF758  94 21 FF F8 */	stwu r1, -8(r1)
/* 800C275C 000BF75C  7C 08 02 A6 */	mflr r0
/* 800C2760 000BF760  90 01 00 0C */	stw r0, 0xc(r1)
/* 800C2764 000BF764  4B FF FF 0D */	bl NuSoundUpdate
/* 800C2768 000BF768  3D 20 80 30 */	lis r9, Game_12_@ha
/* 800C276C 000BF76C  88 69 23 F0 */	lbz r3, Game_12_@l(r9)
/* 800C2770 000BF770  4C C6 31 82 */	crclr 6
/* 800C2774 000BF774  48 00 9B 49 */	bl SS_Update
/* 800C2778 000BF778  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800C277C 000BF77C  7C 08 03 A6 */	mtlr r0
/* 800C2780 000BF780  38 21 00 08 */	addi r1, r1, 8
/* 800C2784 000BF784  4E 80 00 20 */	blr 

.global NuSoundLocalSet
NuSoundLocalSet:
/* 800C2788 000BF788  94 21 FF F8 */	stwu r1, -8(r1)
/* 800C278C 000BF78C  7C 08 02 A6 */	mflr r0
/* 800C2790 000BF790  90 01 00 0C */	stw r0, 0xc(r1)
/* 800C2794 000BF794  48 00 B8 85 */	bl SS_LoadBank
/* 800C2798 000BF798  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800C279C 000BF79C  7C 08 03 A6 */	mtlr r0
/* 800C27A0 000BF7A0  38 21 00 08 */	addi r1, r1, 8
/* 800C27A4 000BF7A4  4E 80 00 20 */	blr 

.global NuSoundSetLevelAmbience
NuSoundSetLevelAmbience:
/* 800C27A8 000BF7A8  81 2D 81 2C */	lwz r9, player-_SDA_BASE_(r13)
/* 800C27AC 000BF7AC  81 6D 82 A8 */	lwz r11, Level-_SDA_BASE_(r13)
/* 800C27B0 000BF7B0  88 09 00 48 */	lbz r0, 0x48(r9)
/* 800C27B4 000BF7B4  A9 49 00 4A */	lha r10, 0x4a(r9)
/* 800C27B8 000BF7B8  2C 0B 00 12 */	cmpwi r11, 0x12
/* 800C27BC 000BF7BC  7C 00 07 74 */	extsb r0, r0
/* 800C27C0 000BF7C0  4D 82 00 20 */	beqlr 
/* 800C27C4 000BF7C4  41 81 00 58 */	bgt lbl_800C281C
/* 800C27C8 000BF7C8  2C 0B 00 07 */	cmpwi r11, 7
/* 800C27CC 000BF7CC  4D 82 00 20 */	beqlr 
/* 800C27D0 000BF7D0  41 81 00 28 */	bgt lbl_800C27F8
/* 800C27D4 000BF7D4  2C 0B 00 02 */	cmpwi r11, 2
/* 800C27D8 000BF7D8  4D 82 00 20 */	beqlr 
/* 800C27DC 000BF7DC  41 81 00 10 */	bgt lbl_800C27EC
/* 800C27E0 000BF7E0  2C 0B 00 01 */	cmpwi r11, 1
/* 800C27E4 000BF7E4  4D 82 00 20 */	beqlr 
/* 800C27E8 000BF7E8  4E 80 00 20 */	blr 
lbl_800C27EC:
/* 800C27EC 000BF7EC  2C 0B 00 04 */	cmpwi r11, 4
/* 800C27F0 000BF7F0  4D 82 00 20 */	beqlr 
/* 800C27F4 000BF7F4  4E 80 00 20 */	blr 
lbl_800C27F8:
/* 800C27F8 000BF7F8  2C 0B 00 0D */	cmpwi r11, 0xd
/* 800C27FC 000BF7FC  4D 82 00 20 */	beqlr 
/* 800C2800 000BF800  41 81 00 10 */	bgt lbl_800C2810
/* 800C2804 000BF804  2C 0B 00 08 */	cmpwi r11, 8
/* 800C2808 000BF808  41 82 00 4C */	beq lbl_800C2854
/* 800C280C 000BF80C  4E 80 00 20 */	blr 
lbl_800C2810:
/* 800C2810 000BF810  2C 0B 00 0F */	cmpwi r11, 0xf
/* 800C2814 000BF814  4D 82 00 20 */	beqlr 
/* 800C2818 000BF818  4E 80 00 20 */	blr 
lbl_800C281C:
/* 800C281C 000BF81C  2C 0B 00 1C */	cmpwi r11, 0x1c
/* 800C2820 000BF820  4D 82 00 20 */	beqlr 
/* 800C2824 000BF824  41 81 00 20 */	bgt lbl_800C2844
/* 800C2828 000BF828  2C 0B 00 1A */	cmpwi r11, 0x1a
/* 800C282C 000BF82C  4D 81 00 20 */	bgtlr 
/* 800C2830 000BF830  2C 0B 00 15 */	cmpwi r11, 0x15
/* 800C2834 000BF834  4C 80 00 20 */	bgelr 
/* 800C2838 000BF838  2C 0B 00 13 */	cmpwi r11, 0x13
/* 800C283C 000BF83C  41 82 00 30 */	beq lbl_800C286C
/* 800C2840 000BF840  4E 80 00 20 */	blr 
lbl_800C2844:
/* 800C2844 000BF844  2C 0B 00 21 */	cmpwi r11, 0x21
/* 800C2848 000BF848  4D 82 00 20 */	beqlr 
/* 800C284C 000BF84C  4C 81 00 20 */	blelr 
/* 800C2850 000BF850  4E 80 00 20 */	blr 
lbl_800C2854:
/* 800C2854 000BF854  2C 00 00 00 */	cmpwi r0, 0
/* 800C2858 000BF858  4C 82 00 20 */	bnelr 
/* 800C285C 000BF85C  38 0A FF B3 */	addi r0, r10, -77
/* 800C2860 000BF860  28 00 00 02 */	cmplwi r0, 2
/* 800C2864 000BF864  4C 81 00 20 */	blelr 
/* 800C2868 000BF868  4E 80 00 20 */	blr 
lbl_800C286C:
/* 800C286C 000BF86C  2C 00 00 00 */	cmpwi r0, 0
/* 800C2870 000BF870  4E 80 00 20 */	blr 

.global NuSoundKillAllAudio
NuSoundKillAllAudio:
/* 800C2874 000BF874  94 21 FF F8 */	stwu r1, -8(r1)
/* 800C2878 000BF878  7C 08 02 A6 */	mflr r0
/* 800C287C 000BF87C  90 01 00 0C */	stw r0, 0xc(r1)
/* 800C2880 000BF880  48 00 B7 75 */	bl SS_StopAllSFX
/* 800C2884 000BF884  38 60 FF FF */	li r3, -1
/* 800C2888 000BF888  4C C6 31 82 */	crclr 6
/* 800C288C 000BF88C  48 00 C1 39 */	bl SS_TrackStop
/* 800C2890 000BF890  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800C2894 000BF894  7C 08 03 A6 */	mtlr r0
/* 800C2898 000BF898  38 21 00 08 */	addi r1, r1, 8
/* 800C289C 000BF89C  4E 80 00 20 */	blr 

.global NuSoundPauseSfx
NuSoundPauseSfx:
/* 800C28A0 000BF8A0  94 21 FF F8 */	stwu r1, -8(r1)
/* 800C28A4 000BF8A4  7C 08 02 A6 */	mflr r0
/* 800C28A8 000BF8A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 800C28AC 000BF8AC  48 00 B8 5D */	bl SS_PauseSFX
/* 800C28B0 000BF8B0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800C28B4 000BF8B4  7C 08 03 A6 */	mtlr r0
/* 800C28B8 000BF8B8  38 21 00 08 */	addi r1, r1, 8
/* 800C28BC 000BF8BC  4E 80 00 20 */	blr 

.global NuSoundResumeSfx
NuSoundResumeSfx:
/* 800C28C0 000BF8C0  94 21 FF F8 */	stwu r1, -8(r1)
/* 800C28C4 000BF8C4  7C 08 02 A6 */	mflr r0
/* 800C28C8 000BF8C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 800C28CC 000BF8CC  48 00 B8 A1 */	bl SS_ResumeSFX
/* 800C28D0 000BF8D0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800C28D4 000BF8D4  7C 08 03 A6 */	mtlr r0
/* 800C28D8 000BF8D8  38 21 00 08 */	addi r1, r1, 8
/* 800C28DC 000BF8DC  4E 80 00 20 */	blr 

.global NuSoundPlayChan
NuSoundPlayChan:
/* 800C28E0 000BF8E0  94 21 FF F8 */	stwu r1, -8(r1)
/* 800C28E4 000BF8E4  7C 08 02 A6 */	mflr r0
/* 800C28E8 000BF8E8  90 01 00 0C */	stw r0, 0xc(r1)
/* 800C28EC 000BF8EC  7C E5 3B 78 */	mr r5, r7
/* 800C28F0 000BF8F0  4C C6 31 82 */	crclr 6
/* 800C28F4 000BF8F4  48 00 98 8D */	bl gcc2_compiled__N81
/* 800C28F8 000BF8F8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800C28FC 000BF8FC  7C 08 03 A6 */	mtlr r0
/* 800C2900 000BF900  38 21 00 08 */	addi r1, r1, 8
/* 800C2904 000BF904  4E 80 00 20 */	blr 

.global NuSoundKeyStatus
NuSoundKeyStatus:
/* 800C2908 000BF908  80 0D 91 B4 */	lwz r0, SS_CurrentChannel-_SDA_BASE_(r13)
/* 800C290C 000BF90C  7C 00 18 00 */	cmpw r0, r3
/* 800C2910 000BF910  40 82 00 14 */	bne lbl_800C2924
/* 800C2914 000BF914  80 0D 91 B0 */	lwz r0, SS_TrackPlayingFlag-_SDA_BASE_(r13)
/* 800C2918 000BF918  38 60 00 01 */	li r3, 1
/* 800C291C 000BF91C  2C 00 00 00 */	cmpwi r0, 0
/* 800C2920 000BF920  4C 82 00 20 */	bnelr 
lbl_800C2924:
/* 800C2924 000BF924  38 60 00 00 */	li r3, 0
/* 800C2928 000BF928  4E 80 00 20 */	blr 