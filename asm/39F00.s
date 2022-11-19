.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8007F700
/* 39F00 8007F700 3C0E801C */  lui        $t6, %hi(D_801C0578)
/* 39F04 8007F704 8DCE0578 */  lw         $t6, %lo(D_801C0578)($t6)
/* 39F08 8007F708 27BDFF60 */  addiu      $sp, $sp, -0xA0
/* 39F0C 8007F70C 3C06801C */  lui        $a2, %hi(D_801BFD78)
/* 39F10 8007F710 24C3FD78 */  addiu      $v1, $a2, %lo(D_801BFD78)
/* 39F14 8007F714 000E7980 */  sll        $t7, $t6, 6
/* 39F18 8007F718 006F1021 */  addu       $v0, $v1, $t7
/* 39F1C 8007F71C 2442FFC0 */  addiu      $v0, $v0, -0x40
/* 39F20 8007F720 0043082B */  sltu       $at, $v0, $v1
/* 39F24 8007F724 F7BE0030 */  sdc1       $f30, 0x30($sp)
/* 39F28 8007F728 F7BC0028 */  sdc1       $f28, 0x28($sp)
/* 39F2C 8007F72C F7BA0020 */  sdc1       $f26, 0x20($sp)
/* 39F30 8007F730 F7B80018 */  sdc1       $f24, 0x18($sp)
/* 39F34 8007F734 F7B60010 */  sdc1       $f22, 0x10($sp)
/* 39F38 8007F738 F7B40008 */  sdc1       $f20, 0x8($sp)
/* 39F3C 8007F73C 142000E1 */  bnez       $at, .L8007FAC4
/* 39F40 8007F740 00802825 */   or        $a1, $a0, $zero
/* 39F44 8007F744 24890090 */  addiu      $t1, $a0, 0x90
/* 39F48 8007F748 240D0001 */  addiu      $t5, $zero, 0x1
/* 39F4C 8007F74C 240C0160 */  addiu      $t4, $zero, 0x160
/* 39F50 8007F750 240B0100 */  addiu      $t3, $zero, 0x100
/* 39F54 8007F754 240A0020 */  addiu      $t2, $zero, 0x20
/* 39F58 8007F758 8CA40028 */  lw         $a0, 0x28($a1)
.L8007F75C:
/* 39F5C 8007F75C 00043940 */  sll        $a3, $a0, 5
/* 39F60 8007F760 00A74021 */  addu       $t0, $a1, $a3
/* 39F64 8007F764 25060090 */  addiu      $a2, $t0, 0x90
/* 39F68 8007F768 00C9082B */  sltu       $at, $a2, $t1
/* 39F6C 8007F76C 542000D2 */  bnel       $at, $zero, .L8007FAB8
/* 39F70 8007F770 2442FFC0 */   addiu     $v0, $v0, -0x40
.L8007F774:
/* 39F74 8007F774 C4440000 */  lwc1       $f4, 0x0($v0)
/* 39F78 8007F778 C4C60000 */  lwc1       $f6, 0x0($a2)
/* 39F7C 8007F77C C4480004 */  lwc1       $f8, 0x4($v0)
/* 39F80 8007F780 C4CA0004 */  lwc1       $f10, 0x4($a2)
/* 39F84 8007F784 46062081 */  sub.s      $f2, $f4, $f6
/* 39F88 8007F788 C456000C */  lwc1       $f22, 0xC($v0)
/* 39F8C 8007F78C C4C60008 */  lwc1       $f6, 0x8($a2)
/* 39F90 8007F790 460A4001 */  sub.s      $f0, $f8, $f10
/* 39F94 8007F794 4602B202 */  mul.s      $f8, $f22, $f2
/* 39F98 8007F798 C4440008 */  lwc1       $f4, 0x8($v0)
/* 39F9C 8007F79C C4580010 */  lwc1       $f24, 0x10($v0)
/* 39FA0 8007F7A0 C45A0014 */  lwc1       $f26, 0x14($v0)
/* 39FA4 8007F7A4 46180282 */  mul.s      $f10, $f0, $f24
/* 39FA8 8007F7A8 46062301 */  sub.s      $f12, $f4, $f6
/* 39FAC 8007F7AC 461A6182 */  mul.s      $f6, $f12, $f26
/* 39FB0 8007F7B0 460A4100 */  add.s      $f4, $f8, $f10
/* 39FB4 8007F7B4 44804000 */  mtc1       $zero, $f8
/* 39FB8 8007F7B8 46062400 */  add.s      $f16, $f4, $f6
/* 39FBC 8007F7BC 4608803C */  c.lt.s     $f16, $f8
/* 39FC0 8007F7C0 00000000 */  nop
/* 39FC4 8007F7C4 450300B8 */  bc1tl      .L8007FAA8
/* 39FC8 8007F7C8 24C6FFE0 */   addiu     $a2, $a2, -0x20
/* 39FCC 8007F7CC C45C0030 */  lwc1       $f28, 0x30($v0)
/* 39FD0 8007F7D0 4610E03E */  c.le.s     $f28, $f16
/* 39FD4 8007F7D4 00000000 */  nop
/* 39FD8 8007F7D8 450300B3 */  bc1tl      .L8007FAA8
/* 39FDC 8007F7DC 24C6FFE0 */   addiu     $a2, $a2, -0x20
/* 39FE0 8007F7E0 C45E0018 */  lwc1       $f30, 0x18($v0)
/* 39FE4 8007F7E4 C452001C */  lwc1       $f18, 0x1C($v0)
/* 39FE8 8007F7E8 C4540020 */  lwc1       $f20, 0x20($v0)
/* 39FEC 8007F7EC 4602F282 */  mul.s      $f10, $f30, $f2
/* 39FF0 8007F7F0 E7B20054 */  swc1       $f18, 0x54($sp)
/* 39FF4 8007F7F4 E7B40050 */  swc1       $f20, 0x50($sp)
/* 39FF8 8007F7F8 46120102 */  mul.s      $f4, $f0, $f18
/* 39FFC 8007F7FC 46045180 */  add.s      $f6, $f10, $f4
/* 3A000 8007F800 46146202 */  mul.s      $f8, $f12, $f20
/* 3A004 8007F804 44805000 */  mtc1       $zero, $f10
/* 3A008 8007F808 46083380 */  add.s      $f14, $f6, $f8
/* 3A00C 8007F80C 460A703C */  c.lt.s     $f14, $f10
/* 3A010 8007F810 00000000 */  nop
/* 3A014 8007F814 450300A4 */  bc1tl      .L8007FAA8
/* 3A018 8007F818 24C6FFE0 */   addiu     $a2, $a2, -0x20
/* 3A01C 8007F81C C4520034 */  lwc1       $f18, 0x34($v0)
/* 3A020 8007F820 460E903E */  c.le.s     $f18, $f14
/* 3A024 8007F824 E7B2004C */  swc1       $f18, 0x4C($sp)
/* 3A028 8007F828 4503009F */  bc1tl      .L8007FAA8
/* 3A02C 8007F82C 24C6FFE0 */   addiu     $a2, $a2, -0x20
/* 3A030 8007F830 C4440028 */  lwc1       $f4, 0x28($v0)
/* 3A034 8007F834 C4540024 */  lwc1       $f20, 0x24($v0)
/* 3A038 8007F838 E7A40044 */  swc1       $f4, 0x44($sp)
/* 3A03C 8007F83C 4602A202 */  mul.s      $f8, $f20, $f2
/* 3A040 8007F840 C7AA0044 */  lwc1       $f10, 0x44($sp)
/* 3A044 8007F844 C446002C */  lwc1       $f6, 0x2C($v0)
/* 3A048 8007F848 E7B40048 */  swc1       $f20, 0x48($sp)
/* 3A04C 8007F84C 460A0102 */  mul.s      $f4, $f0, $f10
/* 3A050 8007F850 E7A60040 */  swc1       $f6, 0x40($sp)
/* 3A054 8007F854 C7AA0040 */  lwc1       $f10, 0x40($sp)
/* 3A058 8007F858 46044180 */  add.s      $f6, $f8, $f4
/* 3A05C 8007F85C 460A6202 */  mul.s      $f8, $f12, $f10
/* 3A060 8007F860 44802000 */  mtc1       $zero, $f4
/* 3A064 8007F864 46083480 */  add.s      $f18, $f6, $f8
/* 3A068 8007F868 4604903C */  c.lt.s     $f18, $f4
/* 3A06C 8007F86C 00000000 */  nop
/* 3A070 8007F870 4503008D */  bc1tl      .L8007FAA8
/* 3A074 8007F874 24C6FFE0 */   addiu     $a2, $a2, -0x20
/* 3A078 8007F878 C4400038 */  lwc1       $f0, 0x38($v0)
/* 3A07C 8007F87C C7AA004C */  lwc1       $f10, 0x4C($sp)
/* 3A080 8007F880 4612003E */  c.le.s     $f0, $f18
/* 3A084 8007F884 E7A0003C */  swc1       $f0, 0x3C($sp)
/* 3A088 8007F888 C7A6003C */  lwc1       $f6, 0x3C($sp)
/* 3A08C 8007F88C 45030086 */  bc1tl      .L8007FAA8
/* 3A090 8007F890 24C6FFE0 */   addiu     $a2, $a2, -0x20
/* 3A094 8007F894 4610E501 */  sub.s      $f20, $f28, $f16
/* 3A098 8007F898 44804000 */  mtc1       $zero, $f8
/* 3A09C 8007F89C 4610A03C */  c.lt.s     $f20, $f16
/* 3A0A0 8007F8A0 00000000 */  nop
/* 3A0A4 8007F8A4 45020007 */  bc1fl      .L8007F8C4
/* 3A0A8 8007F8A8 4600B086 */   mov.s     $f2, $f22
/* 3A0AC 8007F8AC 4600A406 */  mov.s      $f16, $f20
/* 3A0B0 8007F8B0 4600B087 */  neg.s      $f2, $f22
/* 3A0B4 8007F8B4 4600C007 */  neg.s      $f0, $f24
/* 3A0B8 8007F8B8 10000004 */  b          .L8007F8CC
/* 3A0BC 8007F8BC 4600D307 */   neg.s     $f12, $f26
/* 3A0C0 8007F8C0 4600B086 */  mov.s      $f2, $f22
.L8007F8C4:
/* 3A0C4 8007F8C4 4600C006 */  mov.s      $f0, $f24
/* 3A0C8 8007F8C8 4600D306 */  mov.s      $f12, $f26
.L8007F8CC:
/* 3A0CC 8007F8CC 4610703C */  c.lt.s     $f14, $f16
/* 3A0D0 8007F8D0 460E5501 */  sub.s      $f20, $f10, $f14
/* 3A0D4 8007F8D4 45020006 */  bc1fl      .L8007F8F0
/* 3A0D8 8007F8D8 4610A03C */   c.lt.s    $f20, $f16
/* 3A0DC 8007F8DC 46007406 */  mov.s      $f16, $f14
/* 3A0E0 8007F8E0 4600F086 */  mov.s      $f2, $f30
/* 3A0E4 8007F8E4 C7A00054 */  lwc1       $f0, 0x54($sp)
/* 3A0E8 8007F8E8 C7AC0050 */  lwc1       $f12, 0x50($sp)
/* 3A0EC 8007F8EC 4610A03C */  c.lt.s     $f20, $f16
.L8007F8F0:
/* 3A0F0 8007F8F0 46123381 */  sub.s      $f14, $f6, $f18
/* 3A0F4 8007F8F4 45020008 */  bc1fl      .L8007F918
/* 3A0F8 8007F8F8 4610903C */   c.lt.s    $f18, $f16
/* 3A0FC 8007F8FC C7A00054 */  lwc1       $f0, 0x54($sp)
/* 3A100 8007F900 C7AC0050 */  lwc1       $f12, 0x50($sp)
/* 3A104 8007F904 4600A406 */  mov.s      $f16, $f20
/* 3A108 8007F908 4600F087 */  neg.s      $f2, $f30
/* 3A10C 8007F90C 46000007 */  neg.s      $f0, $f0
/* 3A110 8007F910 46006307 */  neg.s      $f12, $f12
/* 3A114 8007F914 4610903C */  c.lt.s     $f18, $f16
.L8007F918:
/* 3A118 8007F918 00000000 */  nop
/* 3A11C 8007F91C 45020006 */  bc1fl      .L8007F938
/* 3A120 8007F920 4610703C */   c.lt.s    $f14, $f16
/* 3A124 8007F924 46009406 */  mov.s      $f16, $f18
/* 3A128 8007F928 C7A20048 */  lwc1       $f2, 0x48($sp)
/* 3A12C 8007F92C C7A00044 */  lwc1       $f0, 0x44($sp)
/* 3A130 8007F930 C7AC0040 */  lwc1       $f12, 0x40($sp)
/* 3A134 8007F934 4610703C */  c.lt.s     $f14, $f16
.L8007F938:
/* 3A138 8007F938 00000000 */  nop
/* 3A13C 8007F93C 45020009 */  bc1fl      .L8007F964
/* 3A140 8007F940 4608003E */   c.le.s    $f0, $f8
/* 3A144 8007F944 C7A20048 */  lwc1       $f2, 0x48($sp)
/* 3A148 8007F948 C7A00044 */  lwc1       $f0, 0x44($sp)
/* 3A14C 8007F94C C7AC0040 */  lwc1       $f12, 0x40($sp)
/* 3A150 8007F950 46007406 */  mov.s      $f16, $f14
/* 3A154 8007F954 46001087 */  neg.s      $f2, $f2
/* 3A158 8007F958 46000007 */  neg.s      $f0, $f0
/* 3A15C 8007F95C 46006307 */  neg.s      $f12, $f12
/* 3A160 8007F960 4608003E */  c.le.s     $f0, $f8
.L8007F964:
/* 3A164 8007F964 00000000 */  nop
/* 3A168 8007F968 45020008 */  bc1fl      .L8007F98C
/* 3A16C 8007F96C C4CA000C */   lwc1      $f10, 0xC($a2)
/* 3A170 8007F970 50EA004D */  beql       $a3, $t2, .L8007FAA8
/* 3A174 8007F974 24C6FFE0 */   addiu     $a2, $a2, -0x20
/* 3A178 8007F978 50EB004B */  beql       $a3, $t3, .L8007FAA8
/* 3A17C 8007F97C 24C6FFE0 */   addiu     $a2, $a2, -0x20
/* 3A180 8007F980 50EC0049 */  beql       $a3, $t4, .L8007FAA8
/* 3A184 8007F984 24C6FFE0 */   addiu     $a2, $a2, -0x20
/* 3A188 8007F988 C4CA000C */  lwc1       $f10, 0xC($a2)
.L8007F98C:
/* 3A18C 8007F98C 46001107 */  neg.s      $f4, $f2
/* 3A190 8007F990 C4C80010 */  lwc1       $f8, 0x10($a2)
/* 3A194 8007F994 460A2182 */  mul.s      $f6, $f4, $f10
/* 3A198 8007F998 8C58003C */  lw         $t8, 0x3C($v0)
/* 3A19C 8007F99C 01202025 */  or         $a0, $t1, $zero
/* 3A1A0 8007F9A0 46080102 */  mul.s      $f4, $f0, $f8
/* 3A1A4 8007F9A4 C4C80014 */  lwc1       $f8, 0x14($a2)
/* 3A1A8 8007F9A8 24A80210 */  addiu      $t0, $a1, 0x210
/* 3A1AC 8007F9AC 3C01800F */  lui        $at, %hi(D_800EA3F0)
/* 3A1B0 8007F9B0 46043281 */  sub.s      $f10, $f6, $f4
/* 3A1B4 8007F9B4 46086182 */  mul.s      $f6, $f12, $f8
/* 3A1B8 8007F9B8 13000006 */  beqz       $t8, .L8007F9D4
/* 3A1BC 8007F9BC 46065381 */   sub.s     $f14, $f10, $f6
/* 3A1C0 8007F9C0 A4AD15DE */  sh         $t5, 0x15DE($a1)
/* 3A1C4 8007F9C4 C424A3F0 */  lwc1       $f4, %lo(D_800EA3F0)($at)
/* 3A1C8 8007F9C8 460E2482 */  mul.s      $f18, $f4, $f14
/* 3A1CC 8007F9CC 10000003 */  b          .L8007F9DC
/* 3A1D0 8007F9D0 C4A80C48 */   lwc1      $f8, 0xC48($a1)
.L8007F9D4:
/* 3A1D4 8007F9D4 46007486 */  mov.s      $f18, $f14
/* 3A1D8 8007F9D8 C4A80C48 */  lwc1       $f8, 0xC48($a1)
.L8007F9DC:
/* 3A1DC 8007F9DC 46027182 */  mul.s      $f6, $f14, $f2
/* 3A1E0 8007F9E0 4612403C */  c.lt.s     $f8, $f18
/* 3A1E4 8007F9E4 00000000 */  nop
/* 3A1E8 8007F9E8 45020006 */  bc1fl      .L8007FA04
/* 3A1EC 8007F9EC C4CA000C */   lwc1      $f10, 0xC($a2)
/* 3A1F0 8007F9F0 E4B20C48 */  swc1       $f18, 0xC48($a1)
/* 3A1F4 8007F9F4 E4A215B4 */  swc1       $f2, 0x15B4($a1)
/* 3A1F8 8007F9F8 E4A015B8 */  swc1       $f0, 0x15B8($a1)
/* 3A1FC 8007F9FC E4AC15BC */  swc1       $f12, 0x15BC($a1)
/* 3A200 8007FA00 C4CA000C */  lwc1       $f10, 0xC($a2)
.L8007FA04:
/* 3A204 8007FA04 C4C80010 */  lwc1       $f8, 0x10($a2)
/* 3A208 8007FA08 0128082B */  sltu       $at, $t1, $t0
/* 3A20C 8007FA0C 46065100 */  add.s      $f4, $f10, $f6
/* 3A210 8007FA10 46007282 */  mul.s      $f10, $f14, $f0
/* 3A214 8007FA14 E4C4000C */  swc1       $f4, 0xC($a2)
/* 3A218 8007FA18 C4C40014 */  lwc1       $f4, 0x14($a2)
/* 3A21C 8007FA1C 460A4180 */  add.s      $f6, $f8, $f10
/* 3A220 8007FA20 460C7202 */  mul.s      $f8, $f14, $f12
/* 3A224 8007FA24 E4C60010 */  swc1       $f6, 0x10($a2)
/* 3A228 8007FA28 46101082 */  mul.s      $f2, $f2, $f16
/* 3A22C 8007FA2C 00000000 */  nop
/* 3A230 8007FA30 46100002 */  mul.s      $f0, $f0, $f16
/* 3A234 8007FA34 46082280 */  add.s      $f10, $f4, $f8
/* 3A238 8007FA38 46106302 */  mul.s      $f12, $f12, $f16
/* 3A23C 8007FA3C 10200019 */  beqz       $at, .L8007FAA4
/* 3A240 8007FA40 E4CA0014 */   swc1      $f10, 0x14($a2)
/* 3A244 8007FA44 24840020 */  addiu      $a0, $a0, 0x20
/* 3A248 8007FA48 0088082B */  sltu       $at, $a0, $t0
/* 3A24C 8007FA4C 1020000D */  beqz       $at, .L8007FA84
/* 3A250 8007FA50 C49EFFE0 */   lwc1      $f30, -0x20($a0)
.L8007FA54:
/* 3A254 8007FA54 4602F700 */  add.s      $f28, $f30, $f2
/* 3A258 8007FA58 C49AFFE4 */  lwc1       $f26, -0x1C($a0)
/* 3A25C 8007FA5C C498FFE8 */  lwc1       $f24, -0x18($a0)
/* 3A260 8007FA60 C49E0000 */  lwc1       $f30, 0x0($a0)
/* 3A264 8007FA64 4600D680 */  add.s      $f26, $f26, $f0
/* 3A268 8007FA68 24840020 */  addiu      $a0, $a0, 0x20
/* 3A26C 8007FA6C 0088082B */  sltu       $at, $a0, $t0
/* 3A270 8007FA70 460CC600 */  add.s      $f24, $f24, $f12
/* 3A274 8007FA74 E49CFFC0 */  swc1       $f28, -0x40($a0)
/* 3A278 8007FA78 E49AFFC4 */  swc1       $f26, -0x3C($a0)
/* 3A27C 8007FA7C 1420FFF5 */  bnez       $at, .L8007FA54
/* 3A280 8007FA80 E498FFC8 */   swc1      $f24, -0x38($a0)
.L8007FA84:
/* 3A284 8007FA84 C49AFFE4 */  lwc1       $f26, -0x1C($a0)
/* 3A288 8007FA88 C498FFE8 */  lwc1       $f24, -0x18($a0)
/* 3A28C 8007FA8C 4602F700 */  add.s      $f28, $f30, $f2
/* 3A290 8007FA90 4600D680 */  add.s      $f26, $f26, $f0
/* 3A294 8007FA94 E49CFFE0 */  swc1       $f28, -0x20($a0)
/* 3A298 8007FA98 460CC600 */  add.s      $f24, $f24, $f12
/* 3A29C 8007FA9C E49AFFE4 */  swc1       $f26, -0x1C($a0)
/* 3A2A0 8007FAA0 E498FFE8 */  swc1       $f24, -0x18($a0)
.L8007FAA4:
/* 3A2A4 8007FAA4 24C6FFE0 */  addiu      $a2, $a2, -0x20
.L8007FAA8:
/* 3A2A8 8007FAA8 00C9082B */  sltu       $at, $a2, $t1
/* 3A2AC 8007FAAC 1020FF31 */  beqz       $at, .L8007F774
/* 3A2B0 8007FAB0 24E7FFE0 */   addiu     $a3, $a3, -0x20
/* 3A2B4 8007FAB4 2442FFC0 */  addiu      $v0, $v0, -0x40
.L8007FAB8:
/* 3A2B8 8007FAB8 0043082B */  sltu       $at, $v0, $v1
/* 3A2BC 8007FABC 5020FF27 */  beql       $at, $zero, .L8007F75C
/* 3A2C0 8007FAC0 8CA40028 */   lw        $a0, 0x28($a1)
.L8007FAC4:
/* 3A2C4 8007FAC4 D7B40008 */  ldc1       $f20, 0x8($sp)
/* 3A2C8 8007FAC8 D7B60010 */  ldc1       $f22, 0x10($sp)
/* 3A2CC 8007FACC D7B80018 */  ldc1       $f24, 0x18($sp)
/* 3A2D0 8007FAD0 D7BA0020 */  ldc1       $f26, 0x20($sp)
/* 3A2D4 8007FAD4 D7BC0028 */  ldc1       $f28, 0x28($sp)
/* 3A2D8 8007FAD8 D7BE0030 */  ldc1       $f30, 0x30($sp)
/* 3A2DC 8007FADC 03E00008 */  jr         $ra
/* 3A2E0 8007FAE0 27BD00A0 */   addiu     $sp, $sp, 0xA0

glabel func_8007FAE4
/* 3A2E4 8007FAE4 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 3A2E8 8007FAE8 3C0E801C */  lui        $t6, %hi(D_801C0578)
/* 3A2EC 8007FAEC 8DCE0578 */  lw         $t6, %lo(D_801C0578)($t6)
/* 3A2F0 8007FAF0 3C04801C */  lui        $a0, %hi(D_801BFD78)
/* 3A2F4 8007FAF4 2483FD78 */  addiu      $v1, $a0, %lo(D_801BFD78)
/* 3A2F8 8007FAF8 000E7980 */  sll        $t7, $t6, 6
/* 3A2FC 8007FAFC 006F1021 */  addu       $v0, $v1, $t7
/* 3A300 8007FB00 2442FFC0 */  addiu      $v0, $v0, -0x40
/* 3A304 8007FB04 0043082B */  sltu       $at, $v0, $v1
/* 3A308 8007FB08 F7BE0030 */  sdc1       $f30, 0x30($sp)
/* 3A30C 8007FB0C F7BC0028 */  sdc1       $f28, 0x28($sp)
/* 3A310 8007FB10 F7BA0020 */  sdc1       $f26, 0x20($sp)
/* 3A314 8007FB14 F7B80018 */  sdc1       $f24, 0x18($sp)
/* 3A318 8007FB18 F7B60010 */  sdc1       $f22, 0x10($sp)
/* 3A31C 8007FB1C F7B40008 */  sdc1       $f20, 0x8($sp)
/* 3A320 8007FB20 E7AC0088 */  swc1       $f12, 0x88($sp)
/* 3A324 8007FB24 E7AE008C */  swc1       $f14, 0x8C($sp)
/* 3A328 8007FB28 14200088 */  bnez       $at, .L8007FD4C
/* 3A32C 8007FB2C AFA60090 */   sw        $a2, 0x90($sp)
/* 3A330 8007FB30 44809000 */  mtc1       $zero, $f18
/* 3A334 8007FB34 00000000 */  nop
/* 3A338 8007FB38 C4440000 */  lwc1       $f4, 0x0($v0)
.L8007FB3C:
/* 3A33C 8007FB3C C7A60088 */  lwc1       $f6, 0x88($sp)
/* 3A340 8007FB40 C4480004 */  lwc1       $f8, 0x4($v0)
/* 3A344 8007FB44 C7AA008C */  lwc1       $f10, 0x8C($sp)
/* 3A348 8007FB48 46062081 */  sub.s      $f2, $f4, $f6
/* 3A34C 8007FB4C C454000C */  lwc1       $f20, 0xC($v0)
/* 3A350 8007FB50 C7A60090 */  lwc1       $f6, 0x90($sp)
/* 3A354 8007FB54 460A4301 */  sub.s      $f12, $f8, $f10
/* 3A358 8007FB58 4602A202 */  mul.s      $f8, $f20, $f2
/* 3A35C 8007FB5C C4440008 */  lwc1       $f4, 0x8($v0)
/* 3A360 8007FB60 C4560010 */  lwc1       $f22, 0x10($v0)
/* 3A364 8007FB64 C4580014 */  lwc1       $f24, 0x14($v0)
/* 3A368 8007FB68 46166282 */  mul.s      $f10, $f12, $f22
/* 3A36C 8007FB6C 46062381 */  sub.s      $f14, $f4, $f6
/* 3A370 8007FB70 46187182 */  mul.s      $f6, $f14, $f24
/* 3A374 8007FB74 460A4100 */  add.s      $f4, $f8, $f10
/* 3A378 8007FB78 46062680 */  add.s      $f26, $f4, $f6
/* 3A37C 8007FB7C 4612D03C */  c.lt.s     $f26, $f18
/* 3A380 8007FB80 00000000 */  nop
/* 3A384 8007FB84 4503006E */  bc1tl      .L8007FD40
/* 3A388 8007FB88 2442FFC0 */   addiu     $v0, $v0, -0x40
/* 3A38C 8007FB8C C45C0030 */  lwc1       $f28, 0x30($v0)
/* 3A390 8007FB90 461AE03E */  c.le.s     $f28, $f26
/* 3A394 8007FB94 00000000 */  nop
/* 3A398 8007FB98 45030069 */  bc1tl      .L8007FD40
/* 3A39C 8007FB9C 2442FFC0 */   addiu     $v0, $v0, -0x40
/* 3A3A0 8007FBA0 C4500018 */  lwc1       $f16, 0x18($v0)
/* 3A3A4 8007FBA4 C45E001C */  lwc1       $f30, 0x1C($v0)
/* 3A3A8 8007FBA8 C4480020 */  lwc1       $f8, 0x20($v0)
/* 3A3AC 8007FBAC 46028282 */  mul.s      $f10, $f16, $f2
/* 3A3B0 8007FBB0 E7B00054 */  swc1       $f16, 0x54($sp)
/* 3A3B4 8007FBB4 E7A8004C */  swc1       $f8, 0x4C($sp)
/* 3A3B8 8007FBB8 461E6102 */  mul.s      $f4, $f12, $f30
/* 3A3BC 8007FBBC C7A8004C */  lwc1       $f8, 0x4C($sp)
/* 3A3C0 8007FBC0 E7BE0050 */  swc1       $f30, 0x50($sp)
/* 3A3C4 8007FBC4 46045180 */  add.s      $f6, $f10, $f4
/* 3A3C8 8007FBC8 46087282 */  mul.s      $f10, $f14, $f8
/* 3A3CC 8007FBCC 460A3000 */  add.s      $f0, $f6, $f10
/* 3A3D0 8007FBD0 4612003C */  c.lt.s     $f0, $f18
/* 3A3D4 8007FBD4 00000000 */  nop
/* 3A3D8 8007FBD8 45030059 */  bc1tl      .L8007FD40
/* 3A3DC 8007FBDC 2442FFC0 */   addiu     $v0, $v0, -0x40
/* 3A3E0 8007FBE0 C45E0034 */  lwc1       $f30, 0x34($v0)
/* 3A3E4 8007FBE4 4600F03E */  c.le.s     $f30, $f0
/* 3A3E8 8007FBE8 00000000 */  nop
/* 3A3EC 8007FBEC 45030054 */  bc1tl      .L8007FD40
/* 3A3F0 8007FBF0 2442FFC0 */   addiu     $v0, $v0, -0x40
/* 3A3F4 8007FBF4 C4440024 */  lwc1       $f4, 0x24($v0)
/* 3A3F8 8007FBF8 E7A40044 */  swc1       $f4, 0x44($sp)
/* 3A3FC 8007FBFC C4480028 */  lwc1       $f8, 0x28($v0)
/* 3A400 8007FC00 C7AA0044 */  lwc1       $f10, 0x44($sp)
/* 3A404 8007FC04 E7A80040 */  swc1       $f8, 0x40($sp)
/* 3A408 8007FC08 C446002C */  lwc1       $f6, 0x2C($v0)
/* 3A40C 8007FC0C 46025102 */  mul.s      $f4, $f10, $f2
/* 3A410 8007FC10 C7A80040 */  lwc1       $f8, 0x40($sp)
/* 3A414 8007FC14 E7A6003C */  swc1       $f6, 0x3C($sp)
/* 3A418 8007FC18 46086182 */  mul.s      $f6, $f12, $f8
/* 3A41C 8007FC1C C7A8003C */  lwc1       $f8, 0x3C($sp)
/* 3A420 8007FC20 46062280 */  add.s      $f10, $f4, $f6
/* 3A424 8007FC24 46087102 */  mul.s      $f4, $f14, $f8
/* 3A428 8007FC28 46045400 */  add.s      $f16, $f10, $f4
/* 3A42C 8007FC2C 4612803C */  c.lt.s     $f16, $f18
/* 3A430 8007FC30 00000000 */  nop
/* 3A434 8007FC34 45030042 */  bc1tl      .L8007FD40
/* 3A438 8007FC38 2442FFC0 */   addiu     $v0, $v0, -0x40
/* 3A43C 8007FC3C C4420038 */  lwc1       $f2, 0x38($v0)
/* 3A440 8007FC40 4610103E */  c.le.s     $f2, $f16
/* 3A444 8007FC44 E7A20038 */  swc1       $f2, 0x38($sp)
/* 3A448 8007FC48 4503003D */  bc1tl      .L8007FD40
/* 3A44C 8007FC4C 2442FFC0 */   addiu     $v0, $v0, -0x40
/* 3A450 8007FC50 461AE481 */  sub.s      $f18, $f28, $f26
/* 3A454 8007FC54 C7A60038 */  lwc1       $f6, 0x38($sp)
/* 3A458 8007FC58 461A903C */  c.lt.s     $f18, $f26
/* 3A45C 8007FC5C 00000000 */  nop
/* 3A460 8007FC60 45020007 */  bc1fl      .L8007FC80
/* 3A464 8007FC64 4600A086 */   mov.s     $f2, $f20
/* 3A468 8007FC68 46009686 */  mov.s      $f26, $f18
/* 3A46C 8007FC6C 4600A087 */  neg.s      $f2, $f20
/* 3A470 8007FC70 4600B307 */  neg.s      $f12, $f22
/* 3A474 8007FC74 10000004 */  b          .L8007FC88
/* 3A478 8007FC78 4600C387 */   neg.s     $f14, $f24
/* 3A47C 8007FC7C 4600A086 */  mov.s      $f2, $f20
.L8007FC80:
/* 3A480 8007FC80 4600B306 */  mov.s      $f12, $f22
/* 3A484 8007FC84 4600C386 */  mov.s      $f14, $f24
.L8007FC88:
/* 3A488 8007FC88 461A003C */  c.lt.s     $f0, $f26
/* 3A48C 8007FC8C 4600F481 */  sub.s      $f18, $f30, $f0
/* 3A490 8007FC90 45020006 */  bc1fl      .L8007FCAC
/* 3A494 8007FC94 461A903C */   c.lt.s    $f18, $f26
/* 3A498 8007FC98 46000686 */  mov.s      $f26, $f0
/* 3A49C 8007FC9C C7A20054 */  lwc1       $f2, 0x54($sp)
/* 3A4A0 8007FCA0 C7AC0050 */  lwc1       $f12, 0x50($sp)
/* 3A4A4 8007FCA4 C7AE004C */  lwc1       $f14, 0x4C($sp)
/* 3A4A8 8007FCA8 461A903C */  c.lt.s     $f18, $f26
.L8007FCAC:
/* 3A4AC 8007FCAC 46103001 */  sub.s      $f0, $f6, $f16
/* 3A4B0 8007FCB0 45020009 */  bc1fl      .L8007FCD8
/* 3A4B4 8007FCB4 461A803C */   c.lt.s    $f16, $f26
/* 3A4B8 8007FCB8 C7A20054 */  lwc1       $f2, 0x54($sp)
/* 3A4BC 8007FCBC C7AC0050 */  lwc1       $f12, 0x50($sp)
/* 3A4C0 8007FCC0 C7AE004C */  lwc1       $f14, 0x4C($sp)
/* 3A4C4 8007FCC4 46009686 */  mov.s      $f26, $f18
/* 3A4C8 8007FCC8 46001087 */  neg.s      $f2, $f2
/* 3A4CC 8007FCCC 46006307 */  neg.s      $f12, $f12
/* 3A4D0 8007FCD0 46007387 */  neg.s      $f14, $f14
/* 3A4D4 8007FCD4 461A803C */  c.lt.s     $f16, $f26
.L8007FCD8:
/* 3A4D8 8007FCD8 00000000 */  nop
/* 3A4DC 8007FCDC 45020006 */  bc1fl      .L8007FCF8
/* 3A4E0 8007FCE0 461A003C */   c.lt.s    $f0, $f26
/* 3A4E4 8007FCE4 46008686 */  mov.s      $f26, $f16
/* 3A4E8 8007FCE8 C7A20044 */  lwc1       $f2, 0x44($sp)
/* 3A4EC 8007FCEC C7AC0040 */  lwc1       $f12, 0x40($sp)
/* 3A4F0 8007FCF0 C7AE003C */  lwc1       $f14, 0x3C($sp)
/* 3A4F4 8007FCF4 461A003C */  c.lt.s     $f0, $f26
.L8007FCF8:
/* 3A4F8 8007FCF8 00000000 */  nop
/* 3A4FC 8007FCFC 45020009 */  bc1fl      .L8007FD24
/* 3A500 8007FD00 E4E20000 */   swc1      $f2, 0x0($a3)
/* 3A504 8007FD04 C7A20044 */  lwc1       $f2, 0x44($sp)
/* 3A508 8007FD08 C7AC0040 */  lwc1       $f12, 0x40($sp)
/* 3A50C 8007FD0C C7AE003C */  lwc1       $f14, 0x3C($sp)
/* 3A510 8007FD10 46000686 */  mov.s      $f26, $f0
/* 3A514 8007FD14 46001087 */  neg.s      $f2, $f2
/* 3A518 8007FD18 46006307 */  neg.s      $f12, $f12
/* 3A51C 8007FD1C 46007387 */  neg.s      $f14, $f14
/* 3A520 8007FD20 E4E20000 */  swc1       $f2, 0x0($a3)
.L8007FD24:
/* 3A524 8007FD24 8FB80098 */  lw         $t8, 0x98($sp)
/* 3A528 8007FD28 4600D006 */  mov.s      $f0, $f26
/* 3A52C 8007FD2C E70C0000 */  swc1       $f12, 0x0($t8)
/* 3A530 8007FD30 8FB9009C */  lw         $t9, 0x9C($sp)
/* 3A534 8007FD34 10000007 */  b          .L8007FD54
/* 3A538 8007FD38 E72E0000 */   swc1      $f14, 0x0($t9)
/* 3A53C 8007FD3C 2442FFC0 */  addiu      $v0, $v0, -0x40
.L8007FD40:
/* 3A540 8007FD40 0043082B */  sltu       $at, $v0, $v1
/* 3A544 8007FD44 5020FF7D */  beql       $at, $zero, .L8007FB3C
/* 3A548 8007FD48 C4440000 */   lwc1      $f4, 0x0($v0)
.L8007FD4C:
/* 3A54C 8007FD4C 44800000 */  mtc1       $zero, $f0
/* 3A550 8007FD50 00000000 */  nop
.L8007FD54:
/* 3A554 8007FD54 D7B40008 */  ldc1       $f20, 0x8($sp)
/* 3A558 8007FD58 D7B60010 */  ldc1       $f22, 0x10($sp)
/* 3A55C 8007FD5C D7B80018 */  ldc1       $f24, 0x18($sp)
/* 3A560 8007FD60 D7BA0020 */  ldc1       $f26, 0x20($sp)
/* 3A564 8007FD64 D7BC0028 */  ldc1       $f28, 0x28($sp)
/* 3A568 8007FD68 D7BE0030 */  ldc1       $f30, 0x30($sp)
/* 3A56C 8007FD6C 03E00008 */  jr         $ra
/* 3A570 8007FD70 27BD0088 */   addiu     $sp, $sp, 0x88
/* 3A574 8007FD74 00000000 */  nop
/* 3A578 8007FD78 00000000 */  nop
/* 3A57C 8007FD7C 00000000 */  nop
