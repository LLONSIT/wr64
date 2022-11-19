.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800B4750
/* 6EF50 800B4750 3C01801D */  lui        $at, %hi(D_801D7DB0)
/* 6EF54 800B4754 3C03801D */  lui        $v1, %hi(D_801D7B70)
/* 6EF58 800B4758 3C02801D */  lui        $v0, %hi(D_801D7DB0)
/* 6EF5C 800B475C AC207DB0 */  sw         $zero, %lo(D_801D7DB0)($at)
/* 6EF60 800B4760 24427DB0 */  addiu      $v0, $v0, %lo(D_801D7DB0)
/* 6EF64 800B4764 24637B70 */  addiu      $v1, $v1, %lo(D_801D7B70)
.L800B4768:
/* 6EF68 800B4768 24630090 */  addiu      $v1, $v1, 0x90
/* 6EF6C 800B476C AC60FF94 */  sw         $zero, -0x6C($v1)
/* 6EF70 800B4770 AC60FFB8 */  sw         $zero, -0x48($v1)
/* 6EF74 800B4774 AC60FFDC */  sw         $zero, -0x24($v1)
/* 6EF78 800B4778 1462FFFB */  bne        $v1, $v0, .L800B4768
/* 6EF7C 800B477C AC60FF70 */   sw        $zero, -0x90($v1)
/* 6EF80 800B4780 03E00008 */  jr         $ra
/* 6EF84 800B4784 00000000 */   nop

glabel func_800B4788
/* 6EF88 800B4788 3C0E801D */  lui        $t6, %hi(D_801D7DB0)
/* 6EF8C 800B478C 8DCE7DB0 */  lw         $t6, %lo(D_801D7DB0)($t6)
/* 6EF90 800B4790 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 6EF94 800B4794 3C18801D */  lui        $t8, %hi(D_801D7B70)
/* 6EF98 800B4798 000E78C0 */  sll        $t7, $t6, 3
/* 6EF9C 800B479C 01EE7821 */  addu       $t7, $t7, $t6
/* 6EFA0 800B47A0 000F7880 */  sll        $t7, $t7, 2
/* 6EFA4 800B47A4 27187B70 */  addiu      $t8, $t8, %lo(D_801D7B70)
/* 6EFA8 800B47A8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 6EFAC 800B47AC F7B60018 */  sdc1       $f22, 0x18($sp)
/* 6EFB0 800B47B0 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 6EFB4 800B47B4 AFA60038 */  sw         $a2, 0x38($sp)
/* 6EFB8 800B47B8 AFA7003C */  sw         $a3, 0x3C($sp)
/* 6EFBC 800B47BC 01F81821 */  addu       $v1, $t7, $t8
/* 6EFC0 800B47C0 24190001 */  addiu      $t9, $zero, 0x1
/* 6EFC4 800B47C4 00044080 */  sll        $t0, $a0, 2
/* 6EFC8 800B47C8 3C09800E */  lui        $t1, %hi(D_800E6E30)
/* 6EFCC 800B47CC AC790000 */  sw         $t9, 0x0($v1)
/* 6EFD0 800B47D0 AC600004 */  sw         $zero, 0x4($v1)
/* 6EFD4 800B47D4 01284821 */  addu       $t1, $t1, $t0
/* 6EFD8 800B47D8 8D296E30 */  lw         $t1, %lo(D_800E6E30)($t1)
/* 6EFDC 800B47DC 00045080 */  sll        $t2, $a0, 2
/* 6EFE0 800B47E0 01445023 */  subu       $t2, $t2, $a0
/* 6EFE4 800B47E4 3C0B800E */  lui        $t3, %hi(D_800E6DD0)
/* 6EFE8 800B47E8 256B6DD0 */  addiu      $t3, $t3, %lo(D_800E6DD0)
/* 6EFEC 800B47EC 000A5080 */  sll        $t2, $t2, 2
/* 6EFF0 800B47F0 014B1021 */  addu       $v0, $t2, $t3
/* 6EFF4 800B47F4 AC690020 */  sw         $t1, 0x20($v1)
/* 6EFF8 800B47F8 44857000 */  mtc1       $a1, $f14
/* 6EFFC 800B47FC C4540000 */  lwc1       $f20, 0x0($v0)
/* 6F000 800B4800 C4400004 */  lwc1       $f0, 0x4($v0)
/* 6F004 800B4804 C4560008 */  lwc1       $f22, 0x8($v0)
/* 6F008 800B4808 46147100 */  add.s      $f4, $f14, $f20
/* 6F00C 800B480C 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 6F010 800B4810 44816000 */  mtc1       $at, $f12
/* 6F014 800B4814 E4640008 */  swc1       $f4, 0x8($v1)
/* 6F018 800B4818 C7A60038 */  lwc1       $f6, 0x38($sp)
/* 6F01C 800B481C 46003200 */  add.s      $f8, $f6, $f0
/* 6F020 800B4820 E468000C */  swc1       $f8, 0xC($v1)
/* 6F024 800B4824 C7AA003C */  lwc1       $f10, 0x3C($sp)
/* 6F028 800B4828 46165400 */  add.s      $f16, $f10, $f22
/* 6F02C 800B482C E4700010 */  swc1       $f16, 0x10($v1)
/* 6F030 800B4830 0C07B4CE */  jal        func_801ED338
/* 6F034 800B4834 AFA3002C */   sw        $v1, 0x2C($sp)
/* 6F038 800B4838 4614A482 */  mul.s      $f18, $f20, $f20
/* 6F03C 800B483C 00000000 */  nop
/* 6F040 800B4840 4616B102 */  mul.s      $f4, $f22, $f22
/* 6F044 800B4844 0C031C04 */  jal        func_800C7010
/* 6F048 800B4848 46049300 */   add.s     $f12, $f18, $f4
/* 6F04C 800B484C 44803000 */  mtc1       $zero, $f6
/* 6F050 800B4850 8FA3002C */  lw         $v1, 0x2C($sp)
/* 6F054 800B4854 46000086 */  mov.s      $f2, $f0
/* 6F058 800B4858 4600303C */  c.lt.s     $f6, $f0
/* 6F05C 800B485C 3C014140 */  lui        $at, (0x41400000 >> 16)
/* 6F060 800B4860 45000004 */  bc1f       .L800B4874
/* 6F064 800B4864 00000000 */   nop
/* 6F068 800B4868 44814000 */  mtc1       $at, $f8
/* 6F06C 800B486C 00000000 */  nop
/* 6F070 800B4870 46004083 */  div.s      $f2, $f8, $f0
.L800B4874:
/* 6F074 800B4874 4602A502 */  mul.s      $f20, $f20, $f2
/* 6F078 800B4878 2404000C */  addiu      $a0, $zero, 0xC
/* 6F07C 800B487C AFA3002C */  sw         $v1, 0x2C($sp)
/* 6F080 800B4880 4602B582 */  mul.s      $f22, $f22, $f2
/* 6F084 800B4884 0C07B4C1 */  jal        func_801ED304
/* 6F088 800B4888 00000000 */   nop
/* 6F08C 800B488C 44829000 */  mtc1       $v0, $f18
/* 6F090 800B4890 C7AA0040 */  lwc1       $f10, 0x40($sp)
/* 6F094 800B4894 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 6F098 800B4898 46809120 */  cvt.s.w    $f4, $f18
/* 6F09C 800B489C 8FA3002C */  lw         $v1, 0x2C($sp)
/* 6F0A0 800B48A0 44813000 */  mtc1       $at, $f6
/* 6F0A4 800B48A4 3C04801D */  lui        $a0, %hi(D_801D7DB0)
/* 6F0A8 800B48A8 24847DB0 */  addiu      $a0, $a0, %lo(D_801D7DB0)
/* 6F0AC 800B48AC 460AA400 */  add.s      $f16, $f20, $f10
/* 6F0B0 800B48B0 46062200 */  add.s      $f8, $f4, $f6
/* 6F0B4 800B48B4 E4700014 */  swc1       $f16, 0x14($v1)
/* 6F0B8 800B48B8 C7AA0044 */  lwc1       $f10, 0x44($sp)
/* 6F0BC 800B48BC 460A4400 */  add.s      $f16, $f8, $f10
/* 6F0C0 800B48C0 E4700018 */  swc1       $f16, 0x18($v1)
/* 6F0C4 800B48C4 C7B20048 */  lwc1       $f18, 0x48($sp)
/* 6F0C8 800B48C8 4612B100 */  add.s      $f4, $f22, $f18
/* 6F0CC 800B48CC E464001C */  swc1       $f4, 0x1C($v1)
/* 6F0D0 800B48D0 8C8C0000 */  lw         $t4, 0x0($a0)
/* 6F0D4 800B48D4 8FBF0024 */  lw         $ra, 0x24($sp)
/* 6F0D8 800B48D8 D7B60018 */  ldc1       $f22, 0x18($sp)
/* 6F0DC 800B48DC 258D0001 */  addiu      $t5, $t4, 0x1
/* 6F0E0 800B48E0 01A07025 */  or         $t6, $t5, $zero
/* 6F0E4 800B48E4 AC8D0000 */  sw         $t5, 0x0($a0)
/* 6F0E8 800B48E8 05C10004 */  bgez       $t6, .L800B48FC
/* 6F0EC 800B48EC 31CF000F */   andi      $t7, $t6, 0xF
/* 6F0F0 800B48F0 11E00002 */  beqz       $t7, .L800B48FC
/* 6F0F4 800B48F4 00000000 */   nop
/* 6F0F8 800B48F8 25EFFFF0 */  addiu      $t7, $t7, -0x10
.L800B48FC:
/* 6F0FC 800B48FC D7B40010 */  ldc1       $f20, 0x10($sp)
/* 6F100 800B4900 AC8F0000 */  sw         $t7, 0x0($a0)
/* 6F104 800B4904 03E00008 */  jr         $ra
/* 6F108 800B4908 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_800B490C
/* 6F10C 800B490C 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 6F110 800B4910 F7BA0038 */  sdc1       $f26, 0x38($sp)
/* 6F114 800B4914 F7B80030 */  sdc1       $f24, 0x30($sp)
/* 6F118 800B4918 AFB10058 */  sw         $s1, 0x58($sp)
/* 6F11C 800B491C AFB00054 */  sw         $s0, 0x54($sp)
/* 6F120 800B4920 F7BE0048 */  sdc1       $f30, 0x48($sp)
/* 6F124 800B4924 F7BC0040 */  sdc1       $f28, 0x40($sp)
/* 6F128 800B4928 F7B60028 */  sdc1       $f22, 0x28($sp)
/* 6F12C 800B492C F7B40020 */  sdc1       $f20, 0x20($sp)
/* 6F130 800B4930 4486C000 */  mtc1       $a2, $f24
/* 6F134 800B4934 4487D000 */  mtc1       $a3, $f26
/* 6F138 800B4938 46006506 */  mov.s      $f20, $f12
/* 6F13C 800B493C 46007586 */  mov.s      $f22, $f14
/* 6F140 800B4940 AFBF005C */  sw         $ra, 0x5C($sp)
/* 6F144 800B4944 C7BC0070 */  lwc1       $f28, 0x70($sp)
/* 6F148 800B4948 C7BE0074 */  lwc1       $f30, 0x74($sp)
/* 6F14C 800B494C 00008025 */  or         $s0, $zero, $zero
/* 6F150 800B4950 24110008 */  addiu      $s1, $zero, 0x8
/* 6F154 800B4954 4405A000 */  mfc1       $a1, $f20
.L800B4958:
/* 6F158 800B4958 4406B000 */  mfc1       $a2, $f22
/* 6F15C 800B495C 4407C000 */  mfc1       $a3, $f24
/* 6F160 800B4960 02002025 */  or         $a0, $s0, $zero
/* 6F164 800B4964 E7BA0010 */  swc1       $f26, 0x10($sp)
/* 6F168 800B4968 E7BC0014 */  swc1       $f28, 0x14($sp)
/* 6F16C 800B496C 0C02D1E2 */  jal        func_800B4788
/* 6F170 800B4970 E7BE0018 */   swc1      $f30, 0x18($sp)
/* 6F174 800B4974 26100001 */  addiu      $s0, $s0, 0x1
/* 6F178 800B4978 5611FFF7 */  bnel       $s0, $s1, .L800B4958
/* 6F17C 800B497C 4405A000 */   mfc1      $a1, $f20
/* 6F180 800B4980 3C0141C0 */  lui        $at, (0x41C00000 >> 16)
/* 6F184 800B4984 44812000 */  mtc1       $at, $f4
/* 6F188 800B4988 4406C000 */  mfc1       $a2, $f24
/* 6F18C 800B498C 4600A306 */  mov.s      $f12, $f20
/* 6F190 800B4990 0C02BD0F */  jal        func_800AF43C
/* 6F194 800B4994 4604B380 */   add.s     $f14, $f22, $f4
/* 6F198 800B4998 8FBF005C */  lw         $ra, 0x5C($sp)
/* 6F19C 800B499C D7B40020 */  ldc1       $f20, 0x20($sp)
/* 6F1A0 800B49A0 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 6F1A4 800B49A4 D7B80030 */  ldc1       $f24, 0x30($sp)
/* 6F1A8 800B49A8 D7BA0038 */  ldc1       $f26, 0x38($sp)
/* 6F1AC 800B49AC D7BC0040 */  ldc1       $f28, 0x40($sp)
/* 6F1B0 800B49B0 D7BE0048 */  ldc1       $f30, 0x48($sp)
/* 6F1B4 800B49B4 8FB00054 */  lw         $s0, 0x54($sp)
/* 6F1B8 800B49B8 8FB10058 */  lw         $s1, 0x58($sp)
/* 6F1BC 800B49BC 03E00008 */  jr         $ra
/* 6F1C0 800B49C0 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_800B49C4
/* 6F1C4 800B49C4 3C01C300 */  lui        $at, (0xC3000000 >> 16)
/* 6F1C8 800B49C8 44816000 */  mtc1       $at, $f12
/* 6F1CC 800B49CC 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
/* 6F1D0 800B49D0 3C03801D */  lui        $v1, %hi(D_801D7B70)
/* 6F1D4 800B49D4 3C04801D */  lui        $a0, %hi(D_801D7DB0)
/* 6F1D8 800B49D8 44811000 */  mtc1       $at, $f2
/* 6F1DC 800B49DC 24847DB0 */  addiu      $a0, $a0, %lo(D_801D7DB0)
/* 6F1E0 800B49E0 24637B70 */  addiu      $v1, $v1, %lo(D_801D7B70)
/* 6F1E4 800B49E4 8C6E0000 */  lw         $t6, 0x0($v1)
.L800B49E8:
/* 6F1E8 800B49E8 24620024 */  addiu      $v0, $v1, 0x24
/* 6F1EC 800B49EC 51C00017 */  beql       $t6, $zero, .L800B4A4C
/* 6F1F0 800B49F0 8C790024 */   lw        $t9, 0x24($v1)
/* 6F1F4 800B49F4 C4600018 */  lwc1       $f0, 0x18($v1)
/* 6F1F8 800B49F8 C46A000C */  lwc1       $f10, 0xC($v1)
/* 6F1FC 800B49FC C4640008 */  lwc1       $f4, 0x8($v1)
/* 6F200 800B4A00 C4660014 */  lwc1       $f6, 0x14($v1)
/* 6F204 800B4A04 46005400 */  add.s      $f16, $f10, $f0
/* 6F208 800B4A08 C4720010 */  lwc1       $f18, 0x10($v1)
/* 6F20C 800B4A0C 8C6F0004 */  lw         $t7, 0x4($v1)
/* 6F210 800B4A10 46062200 */  add.s      $f8, $f4, $f6
/* 6F214 800B4A14 E470000C */  swc1       $f16, 0xC($v1)
/* 6F218 800B4A18 C46A000C */  lwc1       $f10, 0xC($v1)
/* 6F21C 800B4A1C C464001C */  lwc1       $f4, 0x1C($v1)
/* 6F220 800B4A20 E4680008 */  swc1       $f8, 0x8($v1)
/* 6F224 800B4A24 460C503C */  c.lt.s     $f10, $f12
/* 6F228 800B4A28 25F80001 */  addiu      $t8, $t7, 0x1
/* 6F22C 800B4A2C 46020201 */  sub.s      $f8, $f0, $f2
/* 6F230 800B4A30 AC780004 */  sw         $t8, 0x4($v1)
/* 6F234 800B4A34 46049180 */  add.s      $f6, $f18, $f4
/* 6F238 800B4A38 E4680018 */  swc1       $f8, 0x18($v1)
/* 6F23C 800B4A3C 45000002 */  bc1f       .L800B4A48
/* 6F240 800B4A40 E4660010 */   swc1      $f6, 0x10($v1)
/* 6F244 800B4A44 AC600000 */  sw         $zero, 0x0($v1)
.L800B4A48:
/* 6F248 800B4A48 8C790024 */  lw         $t9, 0x24($v1)
.L800B4A4C:
/* 6F24C 800B4A4C 24630048 */  addiu      $v1, $v1, 0x48
/* 6F250 800B4A50 13200016 */  beqz       $t9, .L800B4AAC
/* 6F254 800B4A54 00000000 */   nop
/* 6F258 800B4A58 C4400018 */  lwc1       $f0, 0x18($v0)
/* 6F25C 800B4A5C C446000C */  lwc1       $f6, 0xC($v0)
/* 6F260 800B4A60 C4500008 */  lwc1       $f16, 0x8($v0)
/* 6F264 800B4A64 C4520014 */  lwc1       $f18, 0x14($v0)
/* 6F268 800B4A68 46003200 */  add.s      $f8, $f6, $f0
/* 6F26C 800B4A6C C44A0010 */  lwc1       $f10, 0x10($v0)
/* 6F270 800B4A70 8C480004 */  lw         $t0, 0x4($v0)
/* 6F274 800B4A74 46128100 */  add.s      $f4, $f16, $f18
/* 6F278 800B4A78 E448000C */  swc1       $f8, 0xC($v0)
/* 6F27C 800B4A7C C446000C */  lwc1       $f6, 0xC($v0)
/* 6F280 800B4A80 C450001C */  lwc1       $f16, 0x1C($v0)
/* 6F284 800B4A84 E4440008 */  swc1       $f4, 0x8($v0)
/* 6F288 800B4A88 460C303C */  c.lt.s     $f6, $f12
/* 6F28C 800B4A8C 25090001 */  addiu      $t1, $t0, 0x1
/* 6F290 800B4A90 46020101 */  sub.s      $f4, $f0, $f2
/* 6F294 800B4A94 AC490004 */  sw         $t1, 0x4($v0)
/* 6F298 800B4A98 46105480 */  add.s      $f18, $f10, $f16
/* 6F29C 800B4A9C E4440018 */  swc1       $f4, 0x18($v0)
/* 6F2A0 800B4AA0 45000002 */  bc1f       .L800B4AAC
/* 6F2A4 800B4AA4 E4520010 */   swc1      $f18, 0x10($v0)
/* 6F2A8 800B4AA8 AC400000 */  sw         $zero, 0x0($v0)
.L800B4AAC:
/* 6F2AC 800B4AAC 5464FFCE */  bnel       $v1, $a0, .L800B49E8
/* 6F2B0 800B4AB0 8C6E0000 */   lw        $t6, 0x0($v1)
/* 6F2B4 800B4AB4 03E00008 */  jr         $ra
/* 6F2B8 800B4AB8 00000000 */   nop

glabel func_800B4ABC
/* 6F2BC 800B4ABC 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 6F2C0 800B4AC0 AFBF004C */  sw         $ra, 0x4C($sp)
/* 6F2C4 800B4AC4 AFB70048 */  sw         $s7, 0x48($sp)
/* 6F2C8 800B4AC8 AFB60044 */  sw         $s6, 0x44($sp)
/* 6F2CC 800B4ACC AFB50040 */  sw         $s5, 0x40($sp)
/* 6F2D0 800B4AD0 AFB4003C */  sw         $s4, 0x3C($sp)
/* 6F2D4 800B4AD4 AFB30038 */  sw         $s3, 0x38($sp)
/* 6F2D8 800B4AD8 AFB20034 */  sw         $s2, 0x34($sp)
/* 6F2DC 800B4ADC AFB10030 */  sw         $s1, 0x30($sp)
/* 6F2E0 800B4AE0 AFB0002C */  sw         $s0, 0x2C($sp)
/* 6F2E4 800B4AE4 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 6F2E8 800B4AE8 AFA40050 */  sw         $a0, 0x50($sp)
/* 6F2EC 800B4AEC 8C910000 */  lw         $s1, 0x0($a0)
/* 6F2F0 800B4AF0 3C0FB600 */  lui        $t7, (0xB6000000 >> 16)
/* 6F2F4 800B4AF4 2418FFFF */  addiu      $t8, $zero, -0x1
/* 6F2F8 800B4AF8 02201025 */  or         $v0, $s1, $zero
/* 6F2FC 800B4AFC 26310008 */  addiu      $s1, $s1, 0x8
/* 6F300 800B4B00 02201825 */  or         $v1, $s1, $zero
/* 6F304 800B4B04 AC4F0000 */  sw         $t7, 0x0($v0)
/* 6F308 800B4B08 AC580004 */  sw         $t8, 0x4($v0)
/* 6F30C 800B4B0C 26310008 */  addiu      $s1, $s1, 0x8
/* 6F310 800B4B10 3C080003 */  lui        $t0, (0x32205 >> 16)
/* 6F314 800B4B14 35082205 */  ori        $t0, $t0, (0x32205 & 0xFFFF)
/* 6F318 800B4B18 3C19B700 */  lui        $t9, (0xB7000000 >> 16)
/* 6F31C 800B4B1C 02202825 */  or         $a1, $s1, $zero
/* 6F320 800B4B20 AC790000 */  sw         $t9, 0x0($v1)
/* 6F324 800B4B24 AC680004 */  sw         $t0, 0x4($v1)
/* 6F328 800B4B28 3C09BB00 */  lui        $t1, (0xBB000001 >> 16)
/* 6F32C 800B4B2C 3C0A8000 */  lui        $t2, (0x80008000 >> 16)
/* 6F330 800B4B30 354A8000 */  ori        $t2, $t2, (0x80008000 & 0xFFFF)
/* 6F334 800B4B34 35290001 */  ori        $t1, $t1, (0xBB000001 & 0xFFFF)
/* 6F338 800B4B38 26310008 */  addiu      $s1, $s1, 0x8
/* 6F33C 800B4B3C ACA90000 */  sw         $t1, 0x0($a1)
/* 6F340 800B4B40 ACAA0004 */  sw         $t2, 0x4($a1)
/* 6F344 800B4B44 02203025 */  or         $a2, $s1, $zero
/* 6F348 800B4B48 3C0BE700 */  lui        $t3, (0xE7000000 >> 16)
/* 6F34C 800B4B4C ACCB0000 */  sw         $t3, 0x0($a2)
/* 6F350 800B4B50 26310008 */  addiu      $s1, $s1, 0x8
/* 6F354 800B4B54 ACC00004 */  sw         $zero, 0x4($a2)
/* 6F358 800B4B58 02203825 */  or         $a3, $s1, $zero
/* 6F35C 800B4B5C 3C0CBA00 */  lui        $t4, (0xBA001402 >> 16)
/* 6F360 800B4B60 358C1402 */  ori        $t4, $t4, (0xBA001402 & 0xFFFF)
/* 6F364 800B4B64 26310008 */  addiu      $s1, $s1, 0x8
/* 6F368 800B4B68 ACEC0000 */  sw         $t4, 0x0($a3)
/* 6F36C 800B4B6C 3C0D0010 */  lui        $t5, (0x100000 >> 16)
/* 6F370 800B4B70 02201025 */  or         $v0, $s1, $zero
/* 6F374 800B4B74 ACED0004 */  sw         $t5, 0x4($a3)
/* 6F378 800B4B78 26310008 */  addiu      $s1, $s1, 0x8
/* 6F37C 800B4B7C 3C0EBA00 */  lui        $t6, (0xBA001301 >> 16)
/* 6F380 800B4B80 35CE1301 */  ori        $t6, $t6, (0xBA001301 & 0xFFFF)
/* 6F384 800B4B84 3C0F0008 */  lui        $t7, (0x80000 >> 16)
/* 6F388 800B4B88 02201825 */  or         $v1, $s1, $zero
/* 6F38C 800B4B8C AC4F0004 */  sw         $t7, 0x4($v0)
/* 6F390 800B4B90 AC4E0000 */  sw         $t6, 0x0($v0)
/* 6F394 800B4B94 26310008 */  addiu      $s1, $s1, 0x8
/* 6F398 800B4B98 3C18BA00 */  lui        $t8, (0xBA000C02 >> 16)
/* 6F39C 800B4B9C 37180C02 */  ori        $t8, $t8, (0xBA000C02 & 0xFFFF)
/* 6F3A0 800B4BA0 24192000 */  addiu      $t9, $zero, 0x2000
/* 6F3A4 800B4BA4 02202025 */  or         $a0, $s1, $zero
/* 6F3A8 800B4BA8 AC790004 */  sw         $t9, 0x4($v1)
/* 6F3AC 800B4BAC AC780000 */  sw         $t8, 0x0($v1)
/* 6F3B0 800B4BB0 26310008 */  addiu      $s1, $s1, 0x8
/* 6F3B4 800B4BB4 3C09FF13 */  lui        $t1, (0xFF13FFFF >> 16)
/* 6F3B8 800B4BB8 3C08FC12 */  lui        $t0, (0xFC121804 >> 16)
/* 6F3BC 800B4BBC 35081804 */  ori        $t0, $t0, (0xFC121804 & 0xFFFF)
/* 6F3C0 800B4BC0 3529FFFF */  ori        $t1, $t1, (0xFF13FFFF & 0xFFFF)
/* 6F3C4 800B4BC4 02202825 */  or         $a1, $s1, $zero
/* 6F3C8 800B4BC8 AC890004 */  sw         $t1, 0x4($a0)
/* 6F3CC 800B4BCC AC880000 */  sw         $t0, 0x0($a0)
/* 6F3D0 800B4BD0 26310008 */  addiu      $s1, $s1, 0x8
/* 6F3D4 800B4BD4 3C0BC811 */  lui        $t3, (0xC8112078 >> 16)
/* 6F3D8 800B4BD8 3C0AB900 */  lui        $t2, (0xB900031D >> 16)
/* 6F3DC 800B4BDC 354A031D */  ori        $t2, $t2, (0xB900031D & 0xFFFF)
/* 6F3E0 800B4BE0 356B2078 */  ori        $t3, $t3, (0xC8112078 & 0xFFFF)
/* 6F3E4 800B4BE4 02203025 */  or         $a2, $s1, $zero
/* 6F3E8 800B4BE8 ACAB0004 */  sw         $t3, 0x4($a1)
/* 6F3EC 800B4BEC ACAA0000 */  sw         $t2, 0x0($a1)
/* 6F3F0 800B4BF0 3C0CB900 */  lui        $t4, (0xB9000002 >> 16)
/* 6F3F4 800B4BF4 358C0002 */  ori        $t4, $t4, (0xB9000002 & 0xFFFF)
/* 6F3F8 800B4BF8 3C10801D */  lui        $s0, %hi(D_801D7B70)
/* 6F3FC 800B4BFC 3C12801B */  lui        $s2, %hi(D_801AE950)
/* 6F400 800B4C00 3C13801B */  lui        $s3, %hi(D_801AE948)
/* 6F404 800B4C04 3C140102 */  lui        $s4, (0x1020040 >> 16)
/* 6F408 800B4C08 3C150500 */  lui        $s5, %hi(D_5000000)
/* 6F40C 800B4C0C 3C17801D */  lui        $s7, %hi(D_801D7DB0)
/* 6F410 800B4C10 4480A000 */  mtc1       $zero, $f20
/* 6F414 800B4C14 ACCC0000 */  sw         $t4, 0x0($a2)
/* 6F418 800B4C18 ACC00004 */  sw         $zero, 0x4($a2)
/* 6F41C 800B4C1C 26310008 */  addiu      $s1, $s1, 0x8
/* 6F420 800B4C20 26F77DB0 */  addiu      $s7, $s7, %lo(D_801D7DB0)
/* 6F424 800B4C24 26B50000 */  addiu      $s5, $s5, %lo(D_5000000)
/* 6F428 800B4C28 36940040 */  ori        $s4, $s4, (0x1020040 & 0xFFFF)
/* 6F42C 800B4C2C 2673E948 */  addiu      $s3, $s3, %lo(D_801AE948)
/* 6F430 800B4C30 2652E950 */  addiu      $s2, $s2, %lo(D_801AE950)
/* 6F434 800B4C34 26107B70 */  addiu      $s0, $s0, %lo(D_801D7B70)
/* 6F438 800B4C38 3C160600 */  lui        $s6, (0x6000000 >> 16)
/* 6F43C 800B4C3C 8E0D0000 */  lw         $t5, 0x0($s0)
.L800B4C40:
/* 6F440 800B4C40 51A0002A */  beql       $t5, $zero, .L800B4CEC
/* 6F444 800B4C44 26100024 */   addiu     $s0, $s0, 0x24
/* 6F448 800B4C48 8E190004 */  lw         $t9, 0x4($s0)
/* 6F44C 800B4C4C C606001C */  lwc1       $f6, 0x1C($s0)
/* 6F450 800B4C50 8E4F0000 */  lw         $t7, 0x0($s2)
/* 6F454 800B4C54 00194023 */  negu       $t0, $t9
/* 6F458 800B4C58 000848C0 */  sll        $t1, $t0, 3
/* 6F45C 800B4C5C 44892000 */  mtc1       $t1, $f4
/* 6F460 800B4C60 8E6E0000 */  lw         $t6, 0x0($s3)
/* 6F464 800B4C64 46003207 */  neg.s      $f8, $f6
/* 6F468 800B4C68 46802120 */  cvt.s.w    $f4, $f4
/* 6F46C 800B4C6C C60A0014 */  lwc1       $f10, 0x14($s0)
/* 6F470 800B4C70 C6100008 */  lwc1       $f16, 0x8($s0)
/* 6F474 800B4C74 C612000C */  lwc1       $f18, 0xC($s0)
/* 6F478 800B4C78 000FC180 */  sll        $t8, $t7, 6
/* 6F47C 800B4C7C 44064000 */  mfc1       $a2, $f8
/* 6F480 800B4C80 44052000 */  mfc1       $a1, $f4
/* 6F484 800B4C84 C6040010 */  lwc1       $f4, 0x10($s0)
/* 6F488 800B4C88 4407A000 */  mfc1       $a3, $f20
/* 6F48C 800B4C8C 01D82021 */  addu       $a0, $t6, $t8
/* 6F490 800B4C90 24844140 */  addiu      $a0, $a0, 0x4140
/* 6F494 800B4C94 E7AA0010 */  swc1       $f10, 0x10($sp)
/* 6F498 800B4C98 E7B00014 */  swc1       $f16, 0x14($sp)
/* 6F49C 800B4C9C E7B20018 */  swc1       $f18, 0x18($sp)
/* 6F4A0 800B4CA0 0C07B91B */  jal        func_801EE46C
/* 6F4A4 800B4CA4 E7A4001C */   swc1      $f4, 0x1C($sp)
/* 6F4A8 800B4CA8 02201025 */  or         $v0, $s1, $zero
/* 6F4AC 800B4CAC AC540000 */  sw         $s4, 0x0($v0)
/* 6F4B0 800B4CB0 8E4A0000 */  lw         $t2, 0x0($s2)
/* 6F4B4 800B4CB4 26310008 */  addiu      $s1, $s1, 0x8
/* 6F4B8 800B4CB8 02201825 */  or         $v1, $s1, $zero
/* 6F4BC 800B4CBC 000A5980 */  sll        $t3, $t2, 6
/* 6F4C0 800B4CC0 02AB6021 */  addu       $t4, $s5, $t3
/* 6F4C4 800B4CC4 258D4140 */  addiu      $t5, $t4, 0x4140
/* 6F4C8 800B4CC8 AC4D0004 */  sw         $t5, 0x4($v0)
/* 6F4CC 800B4CCC 8E4F0000 */  lw         $t7, 0x0($s2)
/* 6F4D0 800B4CD0 26310008 */  addiu      $s1, $s1, 0x8
/* 6F4D4 800B4CD4 25EE0001 */  addiu      $t6, $t7, 0x1
/* 6F4D8 800B4CD8 AE4E0000 */  sw         $t6, 0x0($s2)
/* 6F4DC 800B4CDC AC760000 */  sw         $s6, 0x0($v1)
/* 6F4E0 800B4CE0 8E180020 */  lw         $t8, 0x20($s0)
/* 6F4E4 800B4CE4 AC780004 */  sw         $t8, 0x4($v1)
/* 6F4E8 800B4CE8 26100024 */  addiu      $s0, $s0, 0x24
.L800B4CEC:
/* 6F4EC 800B4CEC 5617FFD4 */  bnel       $s0, $s7, .L800B4C40
/* 6F4F0 800B4CF0 8E0D0000 */   lw        $t5, 0x0($s0)
/* 6F4F4 800B4CF4 8FB90050 */  lw         $t9, 0x50($sp)
/* 6F4F8 800B4CF8 AF310000 */  sw         $s1, 0x0($t9)
/* 6F4FC 800B4CFC 8FBF004C */  lw         $ra, 0x4C($sp)
/* 6F500 800B4D00 8FB70048 */  lw         $s7, 0x48($sp)
/* 6F504 800B4D04 8FB60044 */  lw         $s6, 0x44($sp)
/* 6F508 800B4D08 8FB50040 */  lw         $s5, 0x40($sp)
/* 6F50C 800B4D0C 8FB4003C */  lw         $s4, 0x3C($sp)
/* 6F510 800B4D10 8FB30038 */  lw         $s3, 0x38($sp)
/* 6F514 800B4D14 8FB20034 */  lw         $s2, 0x34($sp)
/* 6F518 800B4D18 8FB10030 */  lw         $s1, 0x30($sp)
/* 6F51C 800B4D1C 8FB0002C */  lw         $s0, 0x2C($sp)
/* 6F520 800B4D20 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 6F524 800B4D24 03E00008 */  jr         $ra
/* 6F528 800B4D28 27BD0050 */   addiu     $sp, $sp, 0x50
/* 6F52C 800B4D2C 00000000 */  nop
