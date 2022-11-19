.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800BC880
/* 77080 800BC880 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 77084 800BC884 AFBF0014 */  sw         $ra, 0x14($sp)
/* 77088 800BC888 908E0000 */  lbu        $t6, 0x0($a0)
/* 7708C 800BC88C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 77090 800BC890 44810000 */  mtc1       $at, $f0
/* 77094 800BC894 31D8FF7F */  andi       $t8, $t6, 0xFF7F
/* 77098 800BC898 330800BF */  andi       $t0, $t8, 0xBF
/* 7709C 800BC89C A0980000 */  sb         $t8, 0x0($a0)
/* 770A0 800BC8A0 310A00DF */  andi       $t2, $t0, 0xDF
/* 770A4 800BC8A4 A0880000 */  sb         $t0, 0x0($a0)
/* 770A8 800BC8A8 314C00EF */  andi       $t4, $t2, 0xEF
/* 770AC 800BC8AC A08A0000 */  sb         $t2, 0x0($a0)
/* 770B0 800BC8B0 318E00F7 */  andi       $t6, $t4, 0xF7
/* 770B4 800BC8B4 A08C0000 */  sb         $t4, 0x0($a0)
/* 770B8 800BC8B8 31D800FB */  andi       $t8, $t6, 0xFB
/* 770BC 800BC8BC 24020800 */  addiu      $v0, $zero, 0x800
/* 770C0 800BC8C0 A08E0000 */  sb         $t6, 0x0($a0)
/* 770C4 800BC8C4 3C0C800F */  lui        $t4, %hi(D_800ED004)
/* 770C8 800BC8C8 00802825 */  or         $a1, $a0, $zero
/* 770CC 800BC8CC A0980000 */  sb         $t8, 0x0($a0)
/* 770D0 800BC8D0 331900FD */  andi       $t9, $t8, 0xFD
/* 770D4 800BC8D4 240800FF */  addiu      $t0, $zero, 0xFF
/* 770D8 800BC8D8 24090040 */  addiu      $t1, $zero, 0x40
/* 770DC 800BC8DC 240A0080 */  addiu      $t2, $zero, 0x80
/* 770E0 800BC8E0 240B0003 */  addiu      $t3, $zero, 0x3
/* 770E4 800BC8E4 258CD004 */  addiu      $t4, $t4, %lo(D_800ED004)
/* 770E8 800BC8E8 240D0020 */  addiu      $t5, $zero, 0x20
/* 770EC 800BC8EC A4820010 */  sh         $v0, 0x10($a0)
/* 770F0 800BC8F0 A482000C */  sh         $v0, 0xC($a0)
/* 770F4 800BC8F4 A480001E */  sh         $zero, 0x1E($a0)
/* 770F8 800BC8F8 A0990000 */  sb         $t9, 0x0($a0)
/* 770FC 800BC8FC A0800008 */  sb         $zero, 0x8($a0)
/* 77100 800BC900 A0880001 */  sb         $t0, 0x1($a0)
/* 77104 800BC904 A0800078 */  sb         $zero, 0x78($a0)
/* 77108 800BC908 A0890009 */  sb         $t1, 0x9($a0)
/* 7710C 800BC90C A08A000A */  sb         $t2, 0xA($a0)
/* 77110 800BC910 AC800038 */  sw         $zero, 0x38($a0)
/* 77114 800BC914 A0800007 */  sb         $zero, 0x7($a0)
/* 77118 800BC918 A0800004 */  sb         $zero, 0x4($a0)
/* 7711C 800BC91C A08B0005 */  sb         $t3, 0x5($a0)
/* 77120 800BC920 A480001A */  sh         $zero, 0x1A($a0)
/* 77124 800BC924 AC8C0080 */  sw         $t4, 0x80($a0)
/* 77128 800BC928 A08D007C */  sb         $t5, 0x7C($a0)
/* 7712C 800BC92C A080007D */  sb         $zero, 0x7D($a0)
/* 77130 800BC930 A4800012 */  sh         $zero, 0x12($a0)
/* 77134 800BC934 A480000E */  sh         $zero, 0xE($a0)
/* 77138 800BC938 A4800014 */  sh         $zero, 0x14($a0)
/* 7713C 800BC93C A4800016 */  sh         $zero, 0x16($a0)
/* 77140 800BC940 A4800018 */  sh         $zero, 0x18($a0)
/* 77144 800BC944 E4800024 */  swc1       $f0, 0x24($a0)
/* 77148 800BC948 E4800020 */  swc1       $f0, 0x20($a0)
/* 7714C 800BC94C E4800030 */  swc1       $f0, 0x30($a0)
/* 77150 800BC950 00002025 */  or         $a0, $zero, $zero
/* 77154 800BC954 2402FFFF */  addiu      $v0, $zero, -0x1
/* 77158 800BC958 00A01825 */  or         $v1, $a1, $zero
/* 7715C 800BC95C 24060008 */  addiu      $a2, $zero, 0x8
.L800BC960:
/* 77160 800BC960 24840004 */  addiu      $a0, $a0, 0x4
/* 77164 800BC964 A0620059 */  sb         $v0, 0x59($v1)
/* 77168 800BC968 A062005A */  sb         $v0, 0x5A($v1)
/* 7716C 800BC96C A062005B */  sb         $v0, 0x5B($v1)
/* 77170 800BC970 24630004 */  addiu      $v1, $v1, 0x4
/* 77174 800BC974 1486FFFA */  bne        $a0, $a2, .L800BC960
/* 77178 800BC978 A0620054 */   sb        $v0, 0x54($v1)
/* 7717C 800BC97C 90AE0000 */  lbu        $t6, 0x0($a1)
/* 77180 800BC980 24A40084 */  addiu      $a0, $a1, 0x84
/* 77184 800BC984 31CFFFFE */  andi       $t7, $t6, 0xFFFE
/* 77188 800BC988 0C02ECC0 */  jal        func_800BB300
/* 7718C 800BC98C A0AF0000 */   sb        $t7, 0x0($a1)
/* 77190 800BC990 8FBF0014 */  lw         $ra, 0x14($sp)
/* 77194 800BC994 27BD0018 */  addiu      $sp, $sp, 0x18
/* 77198 800BC998 03E00008 */  jr         $ra
/* 7719C 800BC99C 00000000 */   nop

glabel func_800BC9A0
/* 771A0 800BC9A0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 771A4 800BC9A4 00057880 */  sll        $t7, $a1, 2
/* 771A8 800BC9A8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 771AC 800BC9AC AFA40028 */  sw         $a0, 0x28($sp)
/* 771B0 800BC9B0 008F3021 */  addu       $a2, $a0, $t7
/* 771B4 800BC9B4 8CC70048 */  lw         $a3, 0x48($a2)
/* 771B8 800BC9B8 14E0000B */  bnez       $a3, .L800BC9E8
/* 771BC 800BC9BC 00E02025 */   or        $a0, $a3, $zero
/* 771C0 800BC9C0 3C048004 */  lui        $a0, %hi(D_80044750)
/* 771C4 800BC9C4 24844750 */  addiu      $a0, $a0, %lo(D_80044750)
/* 771C8 800BC9C8 0C02F3FB */  jal        func_800BCFEC
/* 771CC 800BC9CC AFA6001C */   sw        $a2, 0x1C($sp)
/* 771D0 800BC9D0 8FA6001C */  lw         $a2, 0x1C($sp)
/* 771D4 800BC9D4 14400007 */  bnez       $v0, .L800BC9F4
/* 771D8 800BC9D8 ACC20048 */   sw        $v0, 0x48($a2)
/* 771DC 800BC9DC ACC00048 */  sw         $zero, 0x48($a2)
/* 771E0 800BC9E0 1000002D */  b          .L800BCA98
/* 771E4 800BC9E4 2402FFFF */   addiu     $v0, $zero, -0x1
.L800BC9E8:
/* 771E8 800BC9E8 0C02EC42 */  jal        func_800BB108
/* 771EC 800BC9EC AFA6001C */   sw        $a2, 0x1C($sp)
/* 771F0 800BC9F0 8FA6001C */  lw         $a2, 0x1C($sp)
.L800BC9F4:
/* 771F4 800BC9F4 8CC30048 */  lw         $v1, 0x48($a2)
/* 771F8 800BC9F8 8FB80028 */  lw         $t8, 0x28($sp)
/* 771FC 800BC9FC 44803000 */  mtc1       $zero, $f6
/* 77200 800BCA00 906B0000 */  lbu        $t3, 0x0($v1)
/* 77204 800BCA04 AC78004C */  sw         $t8, 0x4C($v1)
/* 77208 800BCA08 8FB90028 */  lw         $t9, 0x28($sp)
/* 7720C 800BCA0C 356D0080 */  ori        $t5, $t3, 0x80
/* 77210 800BCA10 31AF00DF */  andi       $t7, $t5, 0xDF
/* 77214 800BCA14 8F21007C */  lw         $at, 0x7C($t9)
/* 77218 800BCA18 31E800EF */  andi       $t0, $t7, 0xEF
/* 7721C 800BCA1C 240B0080 */  addiu      $t3, $zero, 0x80
/* 77220 800BCA20 AC610018 */  sw         $at, 0x18($v1)
/* 77224 800BCA24 8F290080 */  lw         $t1, 0x80($t9)
/* 77228 800BCA28 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 7722C 800BCA2C A06D0000 */  sb         $t5, 0x0($v1)
/* 77230 800BCA30 AC69001C */  sw         $t1, 0x1C($v1)
/* 77234 800BCA34 44812000 */  mtc1       $at, $f4
/* 77238 800BCA38 310900BF */  andi       $t1, $t0, 0xBF
/* 7723C 800BCA3C A06F0000 */  sb         $t7, 0x0($v1)
/* 77240 800BCA40 A0680000 */  sb         $t0, 0x0($v1)
/* 77244 800BCA44 312A00FD */  andi       $t2, $t1, 0xFD
/* 77248 800BCA48 240C0040 */  addiu      $t4, $zero, 0x40
/* 7724C 800BCA4C 240D00FF */  addiu      $t5, $zero, 0xFF
/* 77250 800BCA50 A0690000 */  sb         $t1, 0x0($v1)
/* 77254 800BCA54 00001025 */  or         $v0, $zero, $zero
/* 77258 800BCA58 A0600018 */  sb         $zero, 0x18($v1)
/* 7725C 800BCA5C A06A0000 */  sb         $t2, 0x0($v1)
/* 77260 800BCA60 A0600008 */  sb         $zero, 0x8($v1)
/* 77264 800BCA64 A0600068 */  sb         $zero, 0x68($v1)
/* 77268 800BCA68 A0600002 */  sb         $zero, 0x2($v1)
/* 7726C 800BCA6C A06B0003 */  sb         $t3, 0x3($v1)
/* 77270 800BCA70 A06C0005 */  sb         $t4, 0x5($v1)
/* 77274 800BCA74 A4600022 */  sh         $zero, 0x22($v1)
/* 77278 800BCA78 A4600038 */  sh         $zero, 0x38($v1)
/* 7727C 800BCA7C A460003A */  sh         $zero, 0x3A($v1)
/* 77280 800BCA80 A460003C */  sh         $zero, 0x3C($v1)
/* 77284 800BCA84 AC600040 */  sw         $zero, 0x40($v1)
/* 77288 800BCA88 AC600044 */  sw         $zero, 0x44($v1)
/* 7728C 800BCA8C A06D0001 */  sb         $t5, 0x1($v1)
/* 77290 800BCA90 E4660028 */  swc1       $f6, 0x28($v1)
/* 77294 800BCA94 E4640024 */  swc1       $f4, 0x24($v1)
.L800BCA98:
/* 77298 800BCA98 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7729C 800BCA9C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 772A0 800BCAA0 03E00008 */  jr         $ra
/* 772A4 800BCAA4 00000000 */   nop

glabel func_800BCAA8
/* 772A8 800BCAA8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 772AC 800BCAAC 10800009 */  beqz       $a0, .L800BCAD4
/* 772B0 800BCAB0 AFBF0014 */   sw        $ra, 0x14($sp)
/* 772B4 800BCAB4 0C02EC42 */  jal        func_800BB108
/* 772B8 800BCAB8 AFA40018 */   sw        $a0, 0x18($sp)
/* 772BC 800BCABC 8FA40018 */  lw         $a0, 0x18($sp)
/* 772C0 800BCAC0 908E0000 */  lbu        $t6, 0x0($a0)
/* 772C4 800BCAC4 31D9FF7F */  andi       $t9, $t6, 0xFF7F
/* 772C8 800BCAC8 37280040 */  ori        $t0, $t9, 0x40
/* 772CC 800BCACC A0990000 */  sb         $t9, 0x0($a0)
/* 772D0 800BCAD0 A0880000 */  sb         $t0, 0x0($a0)
.L800BCAD4:
/* 772D4 800BCAD4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 772D8 800BCAD8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 772DC 800BCADC 03E00008 */  jr         $ra
/* 772E0 800BCAE0 00000000 */   nop

glabel func_800BCAE4
/* 772E4 800BCAE4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 772E8 800BCAE8 00057080 */  sll        $t6, $a1, 2
/* 772EC 800BCAEC AFBF0014 */  sw         $ra, 0x14($sp)
/* 772F0 800BCAF0 008E1021 */  addu       $v0, $a0, $t6
/* 772F4 800BCAF4 8C460048 */  lw         $a2, 0x48($v0)
/* 772F8 800BCAF8 3C048004 */  lui        $a0, %hi(D_80044750)
/* 772FC 800BCAFC 24844750 */  addiu      $a0, $a0, %lo(D_80044750)
/* 77300 800BCB00 10C00008 */  beqz       $a2, .L800BCB24
/* 77304 800BCB04 24C5006C */   addiu     $a1, $a2, 0x6C
/* 77308 800BCB08 AFA20018 */  sw         $v0, 0x18($sp)
/* 7730C 800BCB0C 0C02F3EB */  jal        func_800BCFAC
/* 77310 800BCB10 AFA6001C */   sw        $a2, 0x1C($sp)
/* 77314 800BCB14 0C02F2AA */  jal        func_800BCAA8
/* 77318 800BCB18 8FA4001C */   lw        $a0, 0x1C($sp)
/* 7731C 800BCB1C 8FA20018 */  lw         $v0, 0x18($sp)
/* 77320 800BCB20 AC400048 */  sw         $zero, 0x48($v0)
.L800BCB24:
/* 77324 800BCB24 8FBF0014 */  lw         $ra, 0x14($sp)
/* 77328 800BCB28 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7732C 800BCB2C 03E00008 */  jr         $ra
/* 77330 800BCB30 00000000 */   nop

glabel func_800BCB34
/* 77334 800BCB34 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 77338 800BCB38 AFB20020 */  sw         $s2, 0x20($sp)
/* 7733C 800BCB3C AFB1001C */  sw         $s1, 0x1C($sp)
/* 77340 800BCB40 AFB00018 */  sw         $s0, 0x18($sp)
/* 77344 800BCB44 00808825 */  or         $s1, $a0, $zero
/* 77348 800BCB48 AFBF0024 */  sw         $ra, 0x24($sp)
/* 7734C 800BCB4C 00008025 */  or         $s0, $zero, $zero
/* 77350 800BCB50 24120004 */  addiu      $s2, $zero, 0x4
/* 77354 800BCB54 02202025 */  or         $a0, $s1, $zero
.L800BCB58:
/* 77358 800BCB58 0C02F2B9 */  jal        func_800BCAE4
/* 7735C 800BCB5C 02002825 */   or        $a1, $s0, $zero
/* 77360 800BCB60 26100001 */  addiu      $s0, $s0, 0x1
/* 77364 800BCB64 5612FFFC */  bnel       $s0, $s2, .L800BCB58
/* 77368 800BCB68 02202025 */   or        $a0, $s1, $zero
/* 7736C 800BCB6C 0C02ED00 */  jal        func_800BB400
/* 77370 800BCB70 26240084 */   addiu     $a0, $s1, 0x84
/* 77374 800BCB74 922E0000 */  lbu        $t6, 0x0($s1)
/* 77378 800BCB78 31D9FF7F */  andi       $t9, $t6, 0xFF7F
/* 7737C 800BCB7C A2390000 */  sb         $t9, 0x0($s1)
/* 77380 800BCB80 37280040 */  ori        $t0, $t9, 0x40
/* 77384 800BCB84 A2280000 */  sb         $t0, 0x0($s1)
/* 77388 800BCB88 8FBF0024 */  lw         $ra, 0x24($sp)
/* 7738C 800BCB8C 8FB20020 */  lw         $s2, 0x20($sp)
/* 77390 800BCB90 8FB1001C */  lw         $s1, 0x1C($sp)
/* 77394 800BCB94 8FB00018 */  lw         $s0, 0x18($sp)
/* 77398 800BCB98 03E00008 */  jr         $ra
/* 7739C 800BCB9C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800BCBA0
/* 773A0 800BCBA0 3C038004 */  lui        $v1, %hi(D_800401C8)
/* 773A4 800BCBA4 3C028004 */  lui        $v0, %hi(D_80042688)
/* 773A8 800BCBA8 24422688 */  addiu      $v0, $v0, %lo(D_80042688)
/* 773AC 800BCBAC 246301C8 */  addiu      $v1, $v1, %lo(D_800401C8)
/* 773B0 800BCBB0 8C6E0044 */  lw         $t6, 0x44($v1)
.L800BCBB4:
/* 773B4 800BCBB4 55C00004 */  bnel       $t6, $zero, .L800BCBC8
/* 773B8 800BCBB8 8C6F0108 */   lw        $t7, 0x108($v1)
/* 773BC 800BCBBC 03E00008 */  jr         $ra
/* 773C0 800BCBC0 00601025 */   or        $v0, $v1, $zero
/* 773C4 800BCBC4 8C6F0108 */  lw         $t7, 0x108($v1)
.L800BCBC8:
/* 773C8 800BCBC8 55E00004 */  bnel       $t7, $zero, .L800BCBDC
/* 773CC 800BCBCC 8C7801CC */   lw        $t8, 0x1CC($v1)
/* 773D0 800BCBD0 03E00008 */  jr         $ra
/* 773D4 800BCBD4 246200C4 */   addiu     $v0, $v1, 0xC4
/* 773D8 800BCBD8 8C7801CC */  lw         $t8, 0x1CC($v1)
.L800BCBDC:
/* 773DC 800BCBDC 57000004 */  bnel       $t8, $zero, .L800BCBF0
/* 773E0 800BCBE0 8C790290 */   lw        $t9, 0x290($v1)
/* 773E4 800BCBE4 03E00008 */  jr         $ra
/* 773E8 800BCBE8 24620188 */   addiu     $v0, $v1, 0x188
/* 773EC 800BCBEC 8C790290 */  lw         $t9, 0x290($v1)
.L800BCBF0:
/* 773F0 800BCBF0 57200004 */  bnel       $t9, $zero, .L800BCC04
/* 773F4 800BCBF4 24630310 */   addiu     $v1, $v1, 0x310
/* 773F8 800BCBF8 03E00008 */  jr         $ra
/* 773FC 800BCBFC 2462024C */   addiu     $v0, $v1, 0x24C
/* 77400 800BCC00 24630310 */  addiu      $v1, $v1, 0x310
.L800BCC04:
/* 77404 800BCC04 5462FFEB */  bnel       $v1, $v0, .L800BCBB4
/* 77408 800BCC08 8C6E0044 */   lw        $t6, 0x44($v1)
/* 7740C 800BCC0C 3C028004 */  lui        $v0, %hi(D_80044688)
/* 77410 800BCC10 24424688 */  addiu      $v0, $v0, %lo(D_80044688)
/* 77414 800BCC14 03E00008 */  jr         $ra
/* 77418 800BCC18 00000000 */   nop

glabel func_800BCC1C
/* 7741C 800BCC1C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 77420 800BCC20 AFBE0038 */  sw         $fp, 0x38($sp)
/* 77424 800BCC24 AFB70034 */  sw         $s7, 0x34($sp)
/* 77428 800BCC28 AFB60030 */  sw         $s6, 0x30($sp)
/* 7742C 800BCC2C AFB30024 */  sw         $s3, 0x24($sp)
/* 77430 800BCC30 AFB1001C */  sw         $s1, 0x1C($sp)
/* 77434 800BCC34 AFA50044 */  sw         $a1, 0x44($sp)
/* 77438 800BCC38 30AEFFFF */  andi       $t6, $a1, 0xFFFF
/* 7743C 800BCC3C 3C178004 */  lui        $s7, %hi(D_80044688)
/* 77440 800BCC40 3C1E8004 */  lui        $fp, %hi(D_80045630)
/* 77444 800BCC44 01C02825 */  or         $a1, $t6, $zero
/* 77448 800BCC48 00808825 */  or         $s1, $a0, $zero
/* 7744C 800BCC4C AFBF003C */  sw         $ra, 0x3C($sp)
/* 77450 800BCC50 AFB5002C */  sw         $s5, 0x2C($sp)
/* 77454 800BCC54 AFB40028 */  sw         $s4, 0x28($sp)
/* 77458 800BCC58 AFB20020 */  sw         $s2, 0x20($sp)
/* 7745C 800BCC5C AFB00018 */  sw         $s0, 0x18($sp)
/* 77460 800BCC60 27DE5630 */  addiu      $fp, $fp, %lo(D_80045630)
/* 77464 800BCC64 26F74688 */  addiu      $s7, $s7, %lo(D_80044688)
/* 77468 800BCC68 00009825 */  or         $s3, $zero, $zero
/* 7746C 800BCC6C 24160001 */  addiu      $s6, $zero, 0x1
.L800BCC70:
/* 77470 800BCC70 30AF0001 */  andi       $t7, $a1, 0x1
/* 77474 800BCC74 11E00022 */  beqz       $t7, .L800BCD00
/* 77478 800BCC78 00A0A825 */   or        $s5, $a1, $zero
/* 7747C 800BCC7C 0013C080 */  sll        $t8, $s3, 2
/* 77480 800BCC80 02389021 */  addu       $s2, $s1, $t8
/* 77484 800BCC84 8E500030 */  lw         $s0, 0x30($s2)
/* 77488 800BCC88 02E0A025 */  or         $s4, $s7, $zero
/* 7748C 800BCC8C 0217C826 */  xor        $t9, $s0, $s7
/* 77490 800BCC90 0019C82B */  sltu       $t9, $zero, $t9
/* 77494 800BCC94 16D90007 */  bne        $s6, $t9, .L800BCCB4
/* 77498 800BCC98 00000000 */   nop
/* 7749C 800BCC9C 8E080044 */  lw         $t0, 0x44($s0)
/* 774A0 800BCCA0 16280004 */  bne        $s1, $t0, .L800BCCB4
/* 774A4 800BCCA4 00000000 */   nop
/* 774A8 800BCCA8 0C02F2CD */  jal        func_800BCB34
/* 774AC 800BCCAC 02002025 */   or        $a0, $s0, $zero
/* 774B0 800BCCB0 AE000044 */  sw         $zero, 0x44($s0)
.L800BCCB4:
/* 774B4 800BCCB4 0C02F2E8 */  jal        func_800BCBA0
/* 774B8 800BCCB8 00000000 */   nop
/* 774BC 800BCCBC 14540006 */  bne        $v0, $s4, .L800BCCD8
/* 774C0 800BCCC0 00408025 */   or        $s0, $v0, $zero
/* 774C4 800BCCC4 3C010001 */  lui        $at, (0x10000 >> 16)
/* 774C8 800BCCC8 02615021 */  addu       $t2, $s3, $at
/* 774CC 800BCCCC AFCA0000 */  sw         $t2, 0x0($fp)
/* 774D0 800BCCD0 1000000B */  b          .L800BCD00
/* 774D4 800BCCD4 AE420030 */   sw        $v0, 0x30($s2)
.L800BCCD8:
/* 774D8 800BCCD8 0C02F220 */  jal        func_800BC880
/* 774DC 800BCCDC 02002025 */   or        $a0, $s0, $zero
/* 774E0 800BCCE0 AE500030 */  sw         $s0, 0x30($s2)
/* 774E4 800BCCE4 AE110044 */  sw         $s1, 0x44($s0)
/* 774E8 800BCCE8 922B0005 */  lbu        $t3, 0x5($s1)
/* 774EC 800BCCEC A20B0006 */  sb         $t3, 0x6($s0)
/* 774F0 800BCCF0 922C0003 */  lbu        $t4, 0x3($s1)
/* 774F4 800BCCF4 A20C0003 */  sb         $t4, 0x3($s0)
/* 774F8 800BCCF8 922D0002 */  lbu        $t5, 0x2($s1)
/* 774FC 800BCCFC A20D0002 */  sb         $t5, 0x2($s0)
.L800BCD00:
/* 77500 800BCD00 00152843 */  sra        $a1, $s5, 1
/* 77504 800BCD04 26730001 */  addiu      $s3, $s3, 0x1
/* 77508 800BCD08 24010010 */  addiu      $at, $zero, 0x10
/* 7750C 800BCD0C 30AEFFFF */  andi       $t6, $a1, 0xFFFF
/* 77510 800BCD10 1661FFD7 */  bne        $s3, $at, .L800BCC70
/* 77514 800BCD14 01C02825 */   or        $a1, $t6, $zero
/* 77518 800BCD18 8FBF003C */  lw         $ra, 0x3C($sp)
/* 7751C 800BCD1C 8FB00018 */  lw         $s0, 0x18($sp)
/* 77520 800BCD20 8FB1001C */  lw         $s1, 0x1C($sp)
/* 77524 800BCD24 8FB20020 */  lw         $s2, 0x20($sp)
/* 77528 800BCD28 8FB30024 */  lw         $s3, 0x24($sp)
/* 7752C 800BCD2C 8FB40028 */  lw         $s4, 0x28($sp)
/* 77530 800BCD30 8FB5002C */  lw         $s5, 0x2C($sp)
/* 77534 800BCD34 8FB60030 */  lw         $s6, 0x30($sp)
/* 77538 800BCD38 8FB70034 */  lw         $s7, 0x34($sp)
/* 7753C 800BCD3C 8FBE0038 */  lw         $fp, 0x38($sp)
/* 77540 800BCD40 03E00008 */  jr         $ra
/* 77544 800BCD44 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_800BCD48
/* 77548 800BCD48 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 7754C 800BCD4C AFB50028 */  sw         $s5, 0x28($sp)
/* 77550 800BCD50 AFB70030 */  sw         $s7, 0x30($sp)
/* 77554 800BCD54 AFB6002C */  sw         $s6, 0x2C($sp)
/* 77558 800BCD58 AFB40024 */  sw         $s4, 0x24($sp)
/* 7755C 800BCD5C AFB10018 */  sw         $s1, 0x18($sp)
/* 77560 800BCD60 AFA5003C */  sw         $a1, 0x3C($sp)
/* 77564 800BCD64 30AEFFFF */  andi       $t6, $a1, 0xFFFF
/* 77568 800BCD68 3C158004 */  lui        $s5, %hi(D_80044688)
/* 7756C 800BCD6C 01C02825 */  or         $a1, $t6, $zero
/* 77570 800BCD70 0080A025 */  or         $s4, $a0, $zero
/* 77574 800BCD74 AFBF0034 */  sw         $ra, 0x34($sp)
/* 77578 800BCD78 AFB30020 */  sw         $s3, 0x20($sp)
/* 7757C 800BCD7C AFB2001C */  sw         $s2, 0x1C($sp)
/* 77580 800BCD80 AFB00014 */  sw         $s0, 0x14($sp)
/* 77584 800BCD84 26B54688 */  addiu      $s5, $s5, %lo(D_80044688)
/* 77588 800BCD88 00008825 */  or         $s1, $zero, $zero
/* 7758C 800BCD8C 24160001 */  addiu      $s6, $zero, 0x1
/* 77590 800BCD90 24170010 */  addiu      $s7, $zero, 0x10
.L800BCD94:
/* 77594 800BCD94 30AF0001 */  andi       $t7, $a1, 0x1
/* 77598 800BCD98 11E0000F */  beqz       $t7, .L800BCDD8
/* 7759C 800BCD9C 00A09025 */   or        $s2, $a1, $zero
/* 775A0 800BCDA0 0011C080 */  sll        $t8, $s1, 2
/* 775A4 800BCDA4 02989821 */  addu       $s3, $s4, $t8
/* 775A8 800BCDA8 8E700030 */  lw         $s0, 0x30($s3)
/* 775AC 800BCDAC 0215C826 */  xor        $t9, $s0, $s5
/* 775B0 800BCDB0 0019C82B */  sltu       $t9, $zero, $t9
/* 775B4 800BCDB4 56D90009 */  bnel       $s6, $t9, .L800BCDDC
/* 775B8 800BCDB8 00122843 */   sra       $a1, $s2, 1
/* 775BC 800BCDBC 8E080044 */  lw         $t0, 0x44($s0)
/* 775C0 800BCDC0 56880005 */  bnel       $s4, $t0, .L800BCDD8
/* 775C4 800BCDC4 AE750030 */   sw        $s5, 0x30($s3)
/* 775C8 800BCDC8 0C02F2CD */  jal        func_800BCB34
/* 775CC 800BCDCC 02002025 */   or        $a0, $s0, $zero
/* 775D0 800BCDD0 AE000044 */  sw         $zero, 0x44($s0)
/* 775D4 800BCDD4 AE750030 */  sw         $s5, 0x30($s3)
.L800BCDD8:
/* 775D8 800BCDD8 00122843 */  sra        $a1, $s2, 1
.L800BCDDC:
/* 775DC 800BCDDC 26310001 */  addiu      $s1, $s1, 0x1
/* 775E0 800BCDE0 30A9FFFF */  andi       $t1, $a1, 0xFFFF
/* 775E4 800BCDE4 1637FFEB */  bne        $s1, $s7, .L800BCD94
/* 775E8 800BCDE8 01202825 */   or        $a1, $t1, $zero
/* 775EC 800BCDEC 8FBF0034 */  lw         $ra, 0x34($sp)
/* 775F0 800BCDF0 8FB00014 */  lw         $s0, 0x14($sp)
/* 775F4 800BCDF4 8FB10018 */  lw         $s1, 0x18($sp)
/* 775F8 800BCDF8 8FB2001C */  lw         $s2, 0x1C($sp)
/* 775FC 800BCDFC 8FB30020 */  lw         $s3, 0x20($sp)
/* 77600 800BCE00 8FB40024 */  lw         $s4, 0x24($sp)
/* 77604 800BCE04 8FB50028 */  lw         $s5, 0x28($sp)
/* 77608 800BCE08 8FB6002C */  lw         $s6, 0x2C($sp)
/* 7760C 800BCE0C 8FB70030 */  lw         $s7, 0x30($sp)
/* 77610 800BCE10 03E00008 */  jr         $ra
/* 77614 800BCE14 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_800BCE18
/* 77618 800BCE18 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7761C 800BCE1C 30AE00FF */  andi       $t6, $a1, 0xFF
/* 77620 800BCE20 000E7880 */  sll        $t7, $t6, 2
/* 77624 800BCE24 AFBF0024 */  sw         $ra, 0x24($sp)
/* 77628 800BCE28 AFB30020 */  sw         $s3, 0x20($sp)
/* 7762C 800BCE2C AFB2001C */  sw         $s2, 0x1C($sp)
/* 77630 800BCE30 AFB10018 */  sw         $s1, 0x18($sp)
/* 77634 800BCE34 AFB00014 */  sw         $s0, 0x14($sp)
/* 77638 800BCE38 AFA5002C */  sw         $a1, 0x2C($sp)
/* 7763C 800BCE3C 008FC021 */  addu       $t8, $a0, $t7
/* 77640 800BCE40 8F120030 */  lw         $s2, 0x30($t8)
/* 77644 800BCE44 3C198004 */  lui        $t9, %hi(D_80044688)
/* 77648 800BCE48 27394688 */  addiu      $t9, $t9, %lo(D_80044688)
/* 7764C 800BCE4C 1659000A */  bne        $s2, $t9, .L800BCE78
/* 77650 800BCE50 00008025 */   or        $s0, $zero, $zero
/* 77654 800BCE54 3C098004 */  lui        $t1, %hi(D_8003FCC8)
/* 77658 800BCE58 2529FCC8 */  addiu      $t1, $t1, %lo(D_8003FCC8)
/* 7765C 800BCE5C 10890019 */  beq        $a0, $t1, .L800BCEC4
/* 77660 800BCE60 3C0A8004 */   lui       $t2, %hi(D_8003FE08)
/* 77664 800BCE64 254AFE08 */  addiu      $t2, $t2, %lo(D_8003FE08)
/* 77668 800BCE68 548A0017 */  bnel       $a0, $t2, .L800BCEC8
/* 7766C 800BCE6C 8FBF0024 */   lw        $ra, 0x24($sp)
/* 77670 800BCE70 10000015 */  b          .L800BCEC8
/* 77674 800BCE74 8FBF0024 */   lw        $ra, 0x24($sp)
.L800BCE78:
/* 77678 800BCE78 924C0000 */  lbu        $t4, 0x0($s2)
/* 7767C 800BCE7C A2400078 */  sb         $zero, 0x78($s2)
/* 77680 800BCE80 AE460060 */  sw         $a2, 0x60($s2)
/* 77684 800BCE84 358E0080 */  ori        $t6, $t4, 0x80
/* 77688 800BCE88 A24E0000 */  sb         $t6, 0x0($s2)
/* 7768C 800BCE8C 31CF00BF */  andi       $t7, $t6, 0xBF
/* 77690 800BCE90 A24F0000 */  sb         $t7, 0x0($s2)
/* 77694 800BCE94 A640001A */  sh         $zero, 0x1A($s2)
/* 77698 800BCE98 02408825 */  or         $s1, $s2, $zero
/* 7769C 800BCE9C 24130004 */  addiu      $s3, $zero, 0x4
.L800BCEA0:
/* 776A0 800BCEA0 8E380048 */  lw         $t8, 0x48($s1)
/* 776A4 800BCEA4 02402025 */  or         $a0, $s2, $zero
/* 776A8 800BCEA8 53000004 */  beql       $t8, $zero, .L800BCEBC
/* 776AC 800BCEAC 26100001 */   addiu     $s0, $s0, 0x1
/* 776B0 800BCEB0 0C02F2B9 */  jal        func_800BCAE4
/* 776B4 800BCEB4 02002825 */   or        $a1, $s0, $zero
/* 776B8 800BCEB8 26100001 */  addiu      $s0, $s0, 0x1
.L800BCEBC:
/* 776BC 800BCEBC 1613FFF8 */  bne        $s0, $s3, .L800BCEA0
/* 776C0 800BCEC0 26310004 */   addiu     $s1, $s1, 0x4
.L800BCEC4:
/* 776C4 800BCEC4 8FBF0024 */  lw         $ra, 0x24($sp)
.L800BCEC8:
/* 776C8 800BCEC8 8FB00014 */  lw         $s0, 0x14($sp)
/* 776CC 800BCECC 8FB10018 */  lw         $s1, 0x18($sp)
/* 776D0 800BCED0 8FB2001C */  lw         $s2, 0x1C($sp)
/* 776D4 800BCED4 8FB30020 */  lw         $s3, 0x20($sp)
/* 776D8 800BCED8 03E00008 */  jr         $ra
/* 776DC 800BCEDC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800BCEE0
/* 776E0 800BCEE0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 776E4 800BCEE4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 776E8 800BCEE8 AFA40018 */  sw         $a0, 0x18($sp)
/* 776EC 800BCEEC 0C02F352 */  jal        func_800BCD48
/* 776F0 800BCEF0 3405FFFF */   ori       $a1, $zero, 0xFFFF
/* 776F4 800BCEF4 8FA60018 */  lw         $a2, 0x18($sp)
/* 776F8 800BCEF8 0C02ED00 */  jal        func_800BB400
/* 776FC 800BCEFC 24C40094 */   addiu     $a0, $a2, 0x94
/* 77700 800BCF00 8FA60018 */  lw         $a2, 0x18($sp)
/* 77704 800BCF04 3C0A8004 */  lui        $t2, %hi(D_8003EBB8)
/* 77708 800BCF08 254AEBB8 */  addiu      $t2, $t2, %lo(D_8003EBB8)
/* 7770C 800BCF0C 90CF0000 */  lbu        $t7, 0x0($a2)
/* 77710 800BCF10 90C90004 */  lbu        $t1, 0x4($a2)
/* 77714 800BCF14 3C048004 */  lui        $a0, %hi(D_8003E7A0)
/* 77718 800BCF18 35F90040 */  ori        $t9, $t7, 0x40
/* 7771C 800BCF1C 3328007F */  andi       $t0, $t9, 0x7F
/* 77720 800BCF20 A0D90000 */  sb         $t9, 0x0($a2)
/* 77724 800BCF24 A0C80000 */  sb         $t0, 0x0($a2)
/* 77728 800BCF28 012A1021 */  addu       $v0, $t1, $t2
/* 7772C 800BCF2C 904B0000 */  lbu        $t3, 0x0($v0)
/* 77730 800BCF30 240C0003 */  addiu      $t4, $zero, 0x3
/* 77734 800BCF34 240F0004 */  addiu      $t7, $zero, 0x4
/* 77738 800BCF38 29610002 */  slti       $at, $t3, 0x2
/* 7773C 800BCF3C 14200002 */  bnez       $at, .L800BCF48
/* 77740 800BCF40 2484E7A0 */   addiu     $a0, $a0, %lo(D_8003E7A0)
/* 77744 800BCF44 A04C0000 */  sb         $t4, 0x0($v0)
.L800BCF48:
/* 77748 800BCF48 90C20005 */  lbu        $v0, 0x5($a2)
/* 7774C 800BCF4C 3C0D8004 */  lui        $t5, %hi(D_8003EB78)
/* 77750 800BCF50 25ADEB78 */  addiu      $t5, $t5, %lo(D_8003EB78)
/* 77754 800BCF54 004D1821 */  addu       $v1, $v0, $t5
/* 77758 800BCF58 906E0000 */  lbu        $t6, 0x0($v1)
/* 7775C 800BCF5C 24190001 */  addiu      $t9, $zero, 0x1
/* 77760 800BCF60 29C10002 */  slti       $at, $t6, 0x2
/* 77764 800BCF64 54200004 */  bnel       $at, $zero, .L800BCF78
/* 77768 800BCF68 8C9801B0 */   lw        $t8, 0x1B0($a0)
/* 7776C 800BCF6C A06F0000 */  sb         $t7, 0x0($v1)
/* 77770 800BCF70 90C20005 */  lbu        $v0, 0x5($a2)
/* 77774 800BCF74 8C9801B0 */  lw         $t8, 0x1B0($a0)
.L800BCF78:
/* 77778 800BCF78 00401825 */  or         $v1, $v0, $zero
/* 7777C 800BCF7C 54580004 */  bnel       $v0, $t8, .L800BCF90
/* 77780 800BCF80 8C8801BC */   lw        $t0, 0x1BC($a0)
/* 77784 800BCF84 10000005 */  b          .L800BCF9C
/* 77788 800BCF88 AC990194 */   sw        $t9, 0x194($a0)
/* 7778C 800BCF8C 8C8801BC */  lw         $t0, 0x1BC($a0)
.L800BCF90:
/* 77790 800BCF90 54680003 */  bnel       $v1, $t0, .L800BCFA0
/* 77794 800BCF94 8FBF0014 */   lw        $ra, 0x14($sp)
/* 77798 800BCF98 AC800194 */  sw         $zero, 0x194($a0)
.L800BCF9C:
/* 7779C 800BCF9C 8FBF0014 */  lw         $ra, 0x14($sp)
.L800BCFA0:
/* 777A0 800BCFA0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 777A4 800BCFA4 03E00008 */  jr         $ra
/* 777A8 800BCFA8 00000000 */   nop

glabel func_800BCFAC
/* 777AC 800BCFAC 8CAE0000 */  lw         $t6, 0x0($a1)
/* 777B0 800BCFB0 15C0000C */  bnez       $t6, .L800BCFE4
/* 777B4 800BCFB4 00000000 */   nop
/* 777B8 800BCFB8 8C8F0000 */  lw         $t7, 0x0($a0)
/* 777BC 800BCFBC ADE50004 */  sw         $a1, 0x4($t7)
/* 777C0 800BCFC0 8C980000 */  lw         $t8, 0x0($a0)
/* 777C4 800BCFC4 ACA40004 */  sw         $a0, 0x4($a1)
/* 777C8 800BCFC8 ACB80000 */  sw         $t8, 0x0($a1)
/* 777CC 800BCFCC 8C990008 */  lw         $t9, 0x8($a0)
/* 777D0 800BCFD0 8C89000C */  lw         $t1, 0xC($a0)
/* 777D4 800BCFD4 AC850000 */  sw         $a1, 0x0($a0)
/* 777D8 800BCFD8 27280001 */  addiu      $t0, $t9, 0x1
/* 777DC 800BCFDC AC880008 */  sw         $t0, 0x8($a0)
/* 777E0 800BCFE0 ACA9000C */  sw         $t1, 0xC($a1)
.L800BCFE4:
/* 777E4 800BCFE4 03E00008 */  jr         $ra
/* 777E8 800BCFE8 00000000 */   nop

glabel func_800BCFEC
/* 777EC 800BCFEC 8C830000 */  lw         $v1, 0x0($a0)
/* 777F0 800BCFF0 54640004 */  bnel       $v1, $a0, .L800BD004
/* 777F4 800BCFF4 8C6E0000 */   lw        $t6, 0x0($v1)
/* 777F8 800BCFF8 03E00008 */  jr         $ra
/* 777FC 800BCFFC 00001025 */   or        $v0, $zero, $zero
/* 77800 800BD000 8C6E0000 */  lw         $t6, 0x0($v1)
.L800BD004:
/* 77804 800BD004 ADC40004 */  sw         $a0, 0x4($t6)
/* 77808 800BD008 8C6F0000 */  lw         $t7, 0x0($v1)
/* 7780C 800BD00C AC8F0000 */  sw         $t7, 0x0($a0)
/* 77810 800BD010 AC600000 */  sw         $zero, 0x0($v1)
/* 77814 800BD014 8C980008 */  lw         $t8, 0x8($a0)
/* 77818 800BD018 2719FFFF */  addiu      $t9, $t8, -0x1
/* 7781C 800BD01C AC990008 */  sw         $t9, 0x8($a0)
/* 77820 800BD020 8C620008 */  lw         $v0, 0x8($v1)
/* 77824 800BD024 03E00008 */  jr         $ra
/* 77828 800BD028 00000000 */   nop

glabel func_800BD02C
/* 7782C 800BD02C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 77830 800BD030 AFB2001C */  sw         $s2, 0x1C($sp)
/* 77834 800BD034 3C128004 */  lui        $s2, %hi(D_80044750)
/* 77838 800BD038 26524750 */  addiu      $s2, $s2, %lo(D_80044750)
/* 7783C 800BD03C AFB30020 */  sw         $s3, 0x20($sp)
/* 77840 800BD040 AFB10018 */  sw         $s1, 0x18($sp)
/* 77844 800BD044 AFB00014 */  sw         $s0, 0x14($sp)
/* 77848 800BD048 3C108004 */  lui        $s0, %hi(D_80042688)
/* 7784C 800BD04C 3C118004 */  lui        $s1, %hi(D_800426F4)
/* 77850 800BD050 3C138004 */  lui        $s3, %hi(D_800446F4)
/* 77854 800BD054 AFBF0024 */  sw         $ra, 0x24($sp)
/* 77858 800BD058 AE520000 */  sw         $s2, 0x0($s2)
/* 7785C 800BD05C AE520004 */  sw         $s2, 0x4($s2)
/* 77860 800BD060 AE400008 */  sw         $zero, 0x8($s2)
/* 77864 800BD064 AE40000C */  sw         $zero, 0xC($s2)
/* 77868 800BD068 267346F4 */  addiu      $s3, $s3, %lo(D_800446F4)
/* 7786C 800BD06C 263126F4 */  addiu      $s1, $s1, %lo(D_800426F4)
/* 77870 800BD070 26102688 */  addiu      $s0, $s0, %lo(D_80042688)
.L800BD074:
/* 77874 800BD074 AE100074 */  sw         $s0, 0x74($s0)
/* 77878 800BD078 AE00006C */  sw         $zero, 0x6C($s0)
/* 7787C 800BD07C 02402025 */  or         $a0, $s2, $zero
/* 77880 800BD080 0C02F3EB */  jal        func_800BCFAC
/* 77884 800BD084 02202825 */   or        $a1, $s1, $zero
/* 77888 800BD088 26310080 */  addiu      $s1, $s1, 0x80
/* 7788C 800BD08C 1633FFF9 */  bne        $s1, $s3, .L800BD074
/* 77890 800BD090 26100080 */   addiu     $s0, $s0, 0x80
/* 77894 800BD094 8FBF0024 */  lw         $ra, 0x24($sp)
/* 77898 800BD098 8FB00014 */  lw         $s0, 0x14($sp)
/* 7789C 800BD09C 8FB10018 */  lw         $s1, 0x18($sp)
/* 778A0 800BD0A0 8FB2001C */  lw         $s2, 0x1C($sp)
/* 778A4 800BD0A4 8FB30020 */  lw         $s3, 0x20($sp)
/* 778A8 800BD0A8 03E00008 */  jr         $ra
/* 778AC 800BD0AC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800BD0B0
/* 778B0 800BD0B0 8C850000 */  lw         $a1, 0x0($a0)
/* 778B4 800BD0B4 90A20000 */  lbu        $v0, 0x0($a1)
/* 778B8 800BD0B8 24AE0001 */  addiu      $t6, $a1, 0x1
/* 778BC 800BD0BC 03E00008 */  jr         $ra
/* 778C0 800BD0C0 AC8E0000 */   sw        $t6, 0x0($a0)

glabel func_800BD0C4
/* 778C4 800BD0C4 8C850000 */  lw         $a1, 0x0($a0)
/* 778C8 800BD0C8 90A30000 */  lbu        $v1, 0x0($a1)
/* 778CC 800BD0CC 24B90001 */  addiu      $t9, $a1, 0x1
/* 778D0 800BD0D0 AC990000 */  sw         $t9, 0x0($a0)
/* 778D4 800BD0D4 93280000 */  lbu        $t0, 0x0($t9)
/* 778D8 800BD0D8 0003C200 */  sll        $t8, $v1, 8
/* 778DC 800BD0DC 272B0001 */  addiu      $t3, $t9, 0x1
/* 778E0 800BD0E0 01181825 */  or         $v1, $t0, $t8
/* 778E4 800BD0E4 00034C00 */  sll        $t1, $v1, 16
/* 778E8 800BD0E8 00091403 */  sra        $v0, $t1, 16
/* 778EC 800BD0EC 03E00008 */  jr         $ra
/* 778F0 800BD0F0 AC8B0000 */   sw        $t3, 0x0($a0)

glabel func_800BD0F4
/* 778F4 800BD0F4 8C820000 */  lw         $v0, 0x0($a0)
/* 778F8 800BD0F8 90430000 */  lbu        $v1, 0x0($v0)
/* 778FC 800BD0FC 244E0001 */  addiu      $t6, $v0, 0x1
/* 77900 800BD100 AC8E0000 */  sw         $t6, 0x0($a0)
/* 77904 800BD104 306F0080 */  andi       $t7, $v1, 0x80
/* 77908 800BD108 11E00009 */  beqz       $t7, .L800BD130
/* 7790C 800BD10C 00602825 */   or        $a1, $v1, $zero
/* 77910 800BD110 91C80000 */  lbu        $t0, 0x0($t6)
/* 77914 800BD114 00051A00 */  sll        $v1, $a1, 8
/* 77918 800BD118 30797F00 */  andi       $t9, $v1, 0x7F00
/* 7791C 800BD11C 01191825 */  or         $v1, $t0, $t9
/* 77920 800BD120 3069FFFF */  andi       $t1, $v1, 0xFFFF
/* 77924 800BD124 25CA0001 */  addiu      $t2, $t6, 0x1
/* 77928 800BD128 AC8A0000 */  sw         $t2, 0x0($a0)
/* 7792C 800BD12C 01201825 */  or         $v1, $t1, $zero
.L800BD130:
/* 77930 800BD130 03E00008 */  jr         $ra
/* 77934 800BD134 00601025 */   or        $v0, $v1, $zero

glabel func_800BD138
/* 77938 800BD138 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 7793C 800BD13C 240E0001 */  addiu      $t6, $zero, 0x1
/* 77940 800BD140 AFBF002C */  sw         $ra, 0x2C($sp)
/* 77944 800BD144 AFB40028 */  sw         $s4, 0x28($sp)
/* 77948 800BD148 AFB30024 */  sw         $s3, 0x24($sp)
/* 7794C 800BD14C AFB20020 */  sw         $s2, 0x20($sp)
/* 77950 800BD150 AFB1001C */  sw         $s1, 0x1C($sp)
/* 77954 800BD154 AFB00018 */  sw         $s0, 0x18($sp)
/* 77958 800BD158 AFAE0044 */  sw         $t6, 0x44($sp)
/* 7795C 800BD15C 8C820000 */  lw         $v0, 0x0($a0)
/* 77960 800BD160 00808825 */  or         $s1, $a0, $zero
/* 77964 800BD164 00027FC2 */  srl        $t7, $v0, 31
/* 77968 800BD168 51E00299 */  beql       $t7, $zero, .L800BDBD0
/* 7796C 800BD16C 8FBF002C */   lw        $ra, 0x2C($sp)
/* 77970 800BD170 84830038 */  lh         $v1, 0x38($a0)
/* 77974 800BD174 00024080 */  sll        $t0, $v0, 2
/* 77978 800BD178 000278C0 */  sll        $t7, $v0, 3
/* 7797C 800BD17C 28610002 */  slti       $at, $v1, 0x2
/* 77980 800BD180 1420000E */  bnez       $at, .L800BD1BC
/* 77984 800BD184 2478FFFF */   addiu     $t8, $v1, -0x1
/* 77988 800BD188 05000290 */  bltz       $t0, .L800BDBCC
/* 7798C 800BD18C A4980038 */   sh        $t8, 0x38($a0)
/* 77990 800BD190 8489003A */  lh         $t1, 0x3A($a0)
/* 77994 800BD194 848A0038 */  lh         $t2, 0x38($a0)
/* 77998 800BD198 012A082A */  slt        $at, $t1, $t2
/* 7799C 800BD19C 5420028C */  bnel       $at, $zero, .L800BDBD0
/* 779A0 800BD1A0 8FBF002C */   lw        $ra, 0x2C($sp)
/* 779A4 800BD1A4 0C02EC42 */  jal        func_800BB108
/* 779A8 800BD1A8 00000000 */   nop
/* 779AC 800BD1AC 922C0000 */  lbu        $t4, 0x0($s1)
/* 779B0 800BD1B0 358D0020 */  ori        $t5, $t4, 0x20
/* 779B4 800BD1B4 10000285 */  b          .L800BDBCC
/* 779B8 800BD1B8 A22D0000 */   sb        $t5, 0x0($s1)
.L800BD1BC:
/* 779BC 800BD1BC 05E20004 */  bltzl      $t7, .L800BD1D0
/* 779C0 800BD1C0 92220008 */   lbu       $v0, 0x8($s1)
/* 779C4 800BD1C4 0C02EC42 */  jal        func_800BB108
/* 779C8 800BD1C8 02202025 */   or        $a0, $s1, $zero
/* 779CC 800BD1CC 92220008 */  lbu        $v0, 0x8($s1)
.L800BD1D0:
/* 779D0 800BD1D0 2401FF7F */  addiu      $at, $zero, -0x81
/* 779D4 800BD1D4 0041C024 */  and        $t8, $v0, $at
/* 779D8 800BD1D8 24010001 */  addiu      $at, $zero, 0x1
/* 779DC 800BD1DC 13010003 */  beq        $t8, $at, .L800BD1EC
/* 779E0 800BD1E0 24010002 */   addiu     $at, $zero, 0x2
/* 779E4 800BD1E4 57010003 */  bnel       $t8, $at, .L800BD1F4
/* 779E8 800BD1E8 8E22004C */   lw        $v0, 0x4C($s1)
.L800BD1EC:
/* 779EC 800BD1EC A2200008 */  sb         $zero, 0x8($s1)
/* 779F0 800BD1F0 8E22004C */  lw         $v0, 0x4C($s1)
.L800BD1F4:
/* 779F4 800BD1F4 92280000 */  lbu        $t0, 0x0($s1)
/* 779F8 800BD1F8 26300050 */  addiu      $s0, $s1, 0x50
/* 779FC 800BD1FC 8C540044 */  lw         $s4, 0x44($v0)
/* 77A00 800BD200 35090004 */  ori        $t1, $t0, 0x4
/* 77A04 800BD204 A2290000 */  sb         $t1, 0x0($s1)
/* 77A08 800BD208 97B3004A */  lhu        $s3, 0x4A($sp)
/* 77A0C 800BD20C AFA20068 */  sw         $v0, 0x68($sp)
.L800BD210:
/* 77A10 800BD210 0C02F42C */  jal        func_800BD0B0
/* 77A14 800BD214 02002025 */   or        $a0, $s0, $zero
/* 77A18 800BD218 284100C1 */  slti       $at, $v0, 0xC1
/* 77A1C 800BD21C 305200FF */  andi       $s2, $v0, 0xFF
/* 77A20 800BD220 142000F7 */  bnez       $at, .L800BD600
/* 77A24 800BD224 00402825 */   or        $a1, $v0, $zero
/* 77A28 800BD228 284100CD */  slti       $at, $v0, 0xCD
/* 77A2C 800BD22C 1420000A */  bnez       $at, .L800BD258
/* 77A30 800BD230 24ABFF3F */   addiu     $t3, $a1, -0xC1
/* 77A34 800BD234 244AFF0C */  addiu      $t2, $v0, -0xF4
/* 77A38 800BD238 2D41000C */  sltiu      $at, $t2, 0xC
/* 77A3C 800BD23C 102000D7 */  beqz       $at, L800BD59C
/* 77A40 800BD240 000A5080 */   sll       $t2, $t2, 2
/* 77A44 800BD244 3C01800F */  lui        $at, %hi(jtbl_800EBCC0_main)
/* 77A48 800BD248 002A0821 */  addu       $at, $at, $t2
/* 77A4C 800BD24C 8C2ABCC0 */  lw         $t2, %lo(jtbl_800EBCC0_main)($at)
/* 77A50 800BD250 01400008 */  jr         $t2
/* 77A54 800BD254 00000000 */   nop
.L800BD258:
/* 77A58 800BD258 2D61000C */  sltiu      $at, $t3, 0xC
/* 77A5C 800BD25C 102000CF */  beqz       $at, L800BD59C
/* 77A60 800BD260 000B5880 */   sll       $t3, $t3, 2
/* 77A64 800BD264 3C01800F */  lui        $at, %hi(jtbl_800EBCF0_main)
/* 77A68 800BD268 002B0821 */  addu       $at, $at, $t3
/* 77A6C 800BD26C 8C2BBCF0 */  lw         $t3, %lo(jtbl_800EBCF0_main)($at)
/* 77A70 800BD270 01600008 */  jr         $t3
/* 77A74 800BD274 00000000 */   nop
glabel L800BD278
/* 77A78 800BD278 92030018 */  lbu        $v1, 0x18($s0)
/* 77A7C 800BD27C 14600005 */  bnez       $v1, .L800BD294
/* 77A80 800BD280 2462FFFF */   addiu     $v0, $v1, -0x1
/* 77A84 800BD284 0C02F2AA */  jal        func_800BCAA8
/* 77A88 800BD288 02202025 */   or        $a0, $s1, $zero
/* 77A8C 800BD28C 10000250 */  b          .L800BDBD0
/* 77A90 800BD290 8FBF002C */   lw        $ra, 0x2C($sp)
.L800BD294:
/* 77A94 800BD294 304C00FF */  andi       $t4, $v0, 0xFF
/* 77A98 800BD298 000C6880 */  sll        $t5, $t4, 2
/* 77A9C 800BD29C 020D7021 */  addu       $t6, $s0, $t5
/* 77AA0 800BD2A0 A20C0018 */  sb         $t4, 0x18($s0)
/* 77AA4 800BD2A4 8DCF0004 */  lw         $t7, 0x4($t6)
/* 77AA8 800BD2A8 1000FFD9 */  b          .L800BD210
/* 77AAC 800BD2AC AE0F0000 */   sw        $t7, 0x0($s0)
glabel L800BD2B0
/* 77AB0 800BD2B0 0C02F431 */  jal        func_800BD0C4
/* 77AB4 800BD2B4 02002025 */   or        $a0, $s0, $zero
/* 77AB8 800BD2B8 92190018 */  lbu        $t9, 0x18($s0)
/* 77ABC 800BD2BC 8E180000 */  lw         $t8, 0x0($s0)
/* 77AC0 800BD2C0 304DFFFF */  andi       $t5, $v0, 0xFFFF
/* 77AC4 800BD2C4 00194080 */  sll        $t0, $t9, 2
/* 77AC8 800BD2C8 02084821 */  addu       $t1, $s0, $t0
/* 77ACC 800BD2CC AD380004 */  sw         $t8, 0x4($t1)
/* 77AD0 800BD2D0 920A0018 */  lbu        $t2, 0x18($s0)
/* 77AD4 800BD2D4 3053FFFF */  andi       $s3, $v0, 0xFFFF
/* 77AD8 800BD2D8 254B0001 */  addiu      $t3, $t2, 0x1
/* 77ADC 800BD2DC A20B0018 */  sb         $t3, 0x18($s0)
/* 77AE0 800BD2E0 8E8C0014 */  lw         $t4, 0x14($s4)
/* 77AE4 800BD2E4 018D7021 */  addu       $t6, $t4, $t5
/* 77AE8 800BD2E8 1000FFC9 */  b          .L800BD210
/* 77AEC 800BD2EC AE0E0000 */   sw        $t6, 0x0($s0)
glabel L800BD2F0
/* 77AF0 800BD2F0 0C02F42C */  jal        func_800BD0B0
/* 77AF4 800BD2F4 02002025 */   or        $a0, $s0, $zero
/* 77AF8 800BD2F8 920F0018 */  lbu        $t7, 0x18($s0)
/* 77AFC 800BD2FC 020FC821 */  addu       $t9, $s0, $t7
/* 77B00 800BD300 A3220014 */  sb         $v0, 0x14($t9)
/* 77B04 800BD304 92180018 */  lbu        $t8, 0x18($s0)
/* 77B08 800BD308 8E080000 */  lw         $t0, 0x0($s0)
/* 77B0C 800BD30C 00184880 */  sll        $t1, $t8, 2
/* 77B10 800BD310 02095021 */  addu       $t2, $s0, $t1
/* 77B14 800BD314 AD480004 */  sw         $t0, 0x4($t2)
/* 77B18 800BD318 920B0018 */  lbu        $t3, 0x18($s0)
/* 77B1C 800BD31C 256C0001 */  addiu      $t4, $t3, 0x1
/* 77B20 800BD320 1000FFBB */  b          .L800BD210
/* 77B24 800BD324 A20C0018 */   sb        $t4, 0x18($s0)
glabel L800BD328
/* 77B28 800BD328 920D0018 */  lbu        $t5, 0x18($s0)
/* 77B2C 800BD32C 020D1021 */  addu       $v0, $s0, $t5
/* 77B30 800BD330 904E0013 */  lbu        $t6, 0x13($v0)
/* 77B34 800BD334 25CFFFFF */  addiu      $t7, $t6, -0x1
/* 77B38 800BD338 A04F0013 */  sb         $t7, 0x13($v0)
/* 77B3C 800BD33C 92030018 */  lbu        $v1, 0x18($s0)
/* 77B40 800BD340 0203C821 */  addu       $t9, $s0, $v1
/* 77B44 800BD344 93380013 */  lbu        $t8, 0x13($t9)
/* 77B48 800BD348 00602025 */  or         $a0, $v1, $zero
/* 77B4C 800BD34C 00044880 */  sll        $t1, $a0, 2
/* 77B50 800BD350 13000005 */  beqz       $t8, .L800BD368
/* 77B54 800BD354 246BFFFF */   addiu     $t3, $v1, -0x1
/* 77B58 800BD358 02094021 */  addu       $t0, $s0, $t1
/* 77B5C 800BD35C 8D0A0000 */  lw         $t2, 0x0($t0)
/* 77B60 800BD360 1000FFAB */  b          .L800BD210
/* 77B64 800BD364 AE0A0000 */   sw        $t2, 0x0($s0)
.L800BD368:
/* 77B68 800BD368 1000FFA9 */  b          .L800BD210
/* 77B6C 800BD36C A20B0018 */   sb        $t3, 0x18($s0)
glabel L800BD370
/* 77B70 800BD370 0C02F431 */  jal        func_800BD0C4
/* 77B74 800BD374 02002025 */   or        $a0, $s0, $zero
/* 77B78 800BD378 8E8C0014 */  lw         $t4, 0x14($s4)
/* 77B7C 800BD37C 304DFFFF */  andi       $t5, $v0, 0xFFFF
/* 77B80 800BD380 3053FFFF */  andi       $s3, $v0, 0xFFFF
/* 77B84 800BD384 018D7021 */  addu       $t6, $t4, $t5
/* 77B88 800BD388 1000FFA1 */  b          .L800BD210
/* 77B8C 800BD38C AE0E0000 */   sw        $t6, 0x0($s0)
glabel L800BD390
/* 77B90 800BD390 0C02F42C */  jal        func_800BD0B0
/* 77B94 800BD394 02002025 */   or        $a0, $s0, $zero
/* 77B98 800BD398 8E0F0000 */  lw         $t7, 0x0($s0)
/* 77B9C 800BD39C 0002CE00 */  sll        $t9, $v0, 24
/* 77BA0 800BD3A0 0019C603 */  sra        $t8, $t9, 24
/* 77BA4 800BD3A4 01F84821 */  addu       $t1, $t7, $t8
/* 77BA8 800BD3A8 1000FF99 */  b          .L800BD210
/* 77BAC 800BD3AC AE090000 */   sw        $t1, 0x0($s0)
glabel L800BD3B0
/* 77BB0 800BD3B0 8E030000 */  lw         $v1, 0x0($s0)
/* 77BB4 800BD3B4 240100C1 */  addiu      $at, $zero, 0xC1
/* 77BB8 800BD3B8 90640000 */  lbu        $a0, 0x0($v1)
/* 77BBC 800BD3BC 24680001 */  addiu      $t0, $v1, 0x1
/* 77BC0 800BD3C0 14A10008 */  bne        $a1, $at, .L800BD3E4
/* 77BC4 800BD3C4 AE080000 */   sw        $t0, 0x0($s0)
/* 77BC8 800BD3C8 00840019 */  multu      $a0, $a0
/* 77BCC 800BD3CC 00005012 */  mflo       $t2
/* 77BD0 800BD3D0 448A2000 */  mtc1       $t2, $f4
/* 77BD4 800BD3D4 00000000 */  nop
/* 77BD8 800BD3D8 468021A0 */  cvt.s.w    $f6, $f4
/* 77BDC 800BD3DC 1000FF8C */  b          .L800BD210
/* 77BE0 800BD3E0 E6260028 */   swc1      $f6, 0x28($s1)
.L800BD3E4:
/* 77BE4 800BD3E4 1000FF8A */  b          .L800BD210
/* 77BE8 800BD3E8 A2240005 */   sb        $a0, 0x5($s1)
glabel L800BD3EC
/* 77BEC 800BD3EC 8E030000 */  lw         $v1, 0x0($s0)
/* 77BF0 800BD3F0 240100C9 */  addiu      $at, $zero, 0xC9
/* 77BF4 800BD3F4 90640000 */  lbu        $a0, 0x0($v1)
/* 77BF8 800BD3F8 246B0001 */  addiu      $t3, $v1, 0x1
/* 77BFC 800BD3FC 14A10003 */  bne        $a1, $at, .L800BD40C
/* 77C00 800BD400 AE0B0000 */   sw        $t3, 0x0($s0)
/* 77C04 800BD404 1000FF82 */  b          .L800BD210
/* 77C08 800BD408 A2240003 */   sb        $a0, 0x3($s1)
.L800BD40C:
/* 77C0C 800BD40C 1000FF80 */  b          .L800BD210
/* 77C10 800BD410 A6240022 */   sh        $a0, 0x22($s1)
glabel L800BD414
/* 77C14 800BD414 240100C4 */  addiu      $at, $zero, 0xC4
/* 77C18 800BD418 54A10006 */  bnel       $a1, $at, .L800BD434
/* 77C1C 800BD41C 92390000 */   lbu       $t9, 0x0($s1)
/* 77C20 800BD420 922D0000 */  lbu        $t5, 0x0($s1)
/* 77C24 800BD424 35AE0010 */  ori        $t6, $t5, 0x10
/* 77C28 800BD428 10000004 */  b          .L800BD43C
/* 77C2C 800BD42C A22E0000 */   sb        $t6, 0x0($s1)
/* 77C30 800BD430 92390000 */  lbu        $t9, 0x0($s1)
.L800BD434:
/* 77C34 800BD434 332FFFEF */  andi       $t7, $t9, 0xFFEF
/* 77C38 800BD438 A22F0000 */  sb         $t7, 0x0($s1)
.L800BD43C:
/* 77C3C 800BD43C 0C02EC42 */  jal        func_800BB108
/* 77C40 800BD440 02202025 */   or        $a0, $s1, $zero
/* 77C44 800BD444 1000FF72 */  b          .L800BD210
/* 77C48 800BD448 00000000 */   nop
glabel L800BD44C
/* 77C4C 800BD44C 0C02F43D */  jal        func_800BD0F4
/* 77C50 800BD450 02002025 */   or        $a0, $s0, $zero
/* 77C54 800BD454 3053FFFF */  andi       $s3, $v0, 0xFFFF
/* 77C58 800BD458 1000FF6D */  b          .L800BD210
/* 77C5C 800BD45C A6220034 */   sh        $v0, 0x34($s1)
glabel L800BD460
/* 77C60 800BD460 0C02F42C */  jal        func_800BD0B0
/* 77C64 800BD464 02002025 */   or        $a0, $s0, $zero
/* 77C68 800BD468 2841007F */  slti       $at, $v0, 0x7F
/* 77C6C 800BD46C 305200FF */  andi       $s2, $v0, 0xFF
/* 77C70 800BD470 1420000D */  bnez       $at, .L800BD4A8
/* 77C74 800BD474 00402825 */   or        $a1, $v0, $zero
/* 77C78 800BD478 2401007F */  addiu      $at, $zero, 0x7F
/* 77C7C 800BD47C 54410004 */  bnel       $v0, $at, .L800BD490
/* 77C80 800BD480 A2220001 */   sb        $v0, 0x1($s1)
/* 77C84 800BD484 10000003 */  b          .L800BD494
/* 77C88 800BD488 A2200001 */   sb        $zero, 0x1($s1)
/* 77C8C 800BD48C A2220001 */  sb         $v0, 0x1($s1)
.L800BD490:
/* 77C90 800BD490 AE200044 */  sw         $zero, 0x44($s1)
.L800BD494:
/* 77C94 800BD494 240100FF */  addiu      $at, $zero, 0xFF
/* 77C98 800BD498 14A1FF5D */  bne        $a1, $at, .L800BD210
/* 77C9C 800BD49C 00000000 */   nop
/* 77CA0 800BD4A0 1000FF5B */  b          .L800BD210
/* 77CA4 800BD4A4 A2200018 */   sb        $zero, 0x18($s1)
.L800BD4A8:
/* 77CA8 800BD4A8 8FA40068 */  lw         $a0, 0x68($sp)
/* 77CAC 800BD4AC 324500FF */  andi       $a1, $s2, 0xFF
/* 77CB0 800BD4B0 26260044 */  addiu      $a2, $s1, 0x44
/* 77CB4 800BD4B4 0C02F6FB */  jal        func_800BDBEC
/* 77CB8 800BD4B8 26270018 */   addiu     $a3, $s1, 0x18
/* 77CBC 800BD4BC 1440FF54 */  bnez       $v0, .L800BD210
/* 77CC0 800BD4C0 A2220001 */   sb        $v0, 0x1($s1)
/* 77CC4 800BD4C4 241800FF */  addiu      $t8, $zero, 0xFF
/* 77CC8 800BD4C8 1000FF51 */  b          .L800BD210
/* 77CCC 800BD4CC A2380001 */   sb        $t8, 0x1($s1)
glabel L800BD4D0
/* 77CD0 800BD4D0 0C02F42C */  jal        func_800BD0B0
/* 77CD4 800BD4D4 02002025 */   or        $a0, $s0, $zero
/* 77CD8 800BD4D8 A2220008 */  sb         $v0, 0x8($s1)
/* 77CDC 800BD4DC 0C02F42C */  jal        func_800BD0B0
/* 77CE0 800BD4E0 02002025 */   or        $a0, $s0, $zero
/* 77CE4 800BD4E4 8FA90068 */  lw         $t1, 0x68($sp)
/* 77CE8 800BD4E8 862B0022 */  lh         $t3, 0x22($s1)
/* 77CEC 800BD4EC 868D000C */  lh         $t5, 0xC($s4)
/* 77CF0 800BD4F0 8528001E */  lh         $t0, 0x1E($t1)
/* 77CF4 800BD4F4 00485021 */  addu       $t2, $v0, $t0
/* 77CF8 800BD4F8 014B6021 */  addu       $t4, $t2, $t3
/* 77CFC 800BD4FC 018D9021 */  addu       $s2, $t4, $t5
/* 77D00 800BD500 324E00FF */  andi       $t6, $s2, 0xFF
/* 77D04 800BD504 29C10080 */  slti       $at, $t6, 0x80
/* 77D08 800BD508 14200002 */  bnez       $at, .L800BD514
/* 77D0C 800BD50C 01C09025 */   or        $s2, $t6, $zero
/* 77D10 800BD510 00009025 */  or         $s2, $zero, $zero
.L800BD514:
/* 77D14 800BD514 92390008 */  lbu        $t9, 0x8($s1)
/* 77D18 800BD518 A2320004 */  sb         $s2, 0x4($s1)
/* 77D1C 800BD51C 332F0080 */  andi       $t7, $t9, 0x80
/* 77D20 800BD520 11E00008 */  beqz       $t7, .L800BD544
/* 77D24 800BD524 00000000 */   nop
/* 77D28 800BD528 8E180000 */  lw         $t8, 0x0($s0)
/* 77D2C 800BD52C 93090000 */  lbu        $t1, 0x0($t8)
/* 77D30 800BD530 A6290020 */  sh         $t1, 0x20($s1)
/* 77D34 800BD534 8E080000 */  lw         $t0, 0x0($s0)
/* 77D38 800BD538 250A0001 */  addiu      $t2, $t0, 0x1
/* 77D3C 800BD53C 1000FF34 */  b          .L800BD210
/* 77D40 800BD540 AE0A0000 */   sw        $t2, 0x0($s0)
.L800BD544:
/* 77D44 800BD544 0C02F43D */  jal        func_800BD0F4
/* 77D48 800BD548 02002025 */   or        $a0, $s0, $zero
/* 77D4C 800BD54C 3053FFFF */  andi       $s3, $v0, 0xFFFF
/* 77D50 800BD550 1000FF2F */  b          .L800BD210
/* 77D54 800BD554 A6220020 */   sh        $v0, 0x20($s1)
glabel L800BD558
/* 77D58 800BD558 1000FF2D */  b          .L800BD210
/* 77D5C 800BD55C A2200008 */   sb        $zero, 0x8($s1)
glabel L800BD560
/* 77D60 800BD560 0C02F431 */  jal        func_800BD0C4
/* 77D64 800BD564 02002025 */   or        $a0, $s0, $zero
/* 77D68 800BD568 8E8B0014 */  lw         $t3, 0x14($s4)
/* 77D6C 800BD56C 304CFFFF */  andi       $t4, $v0, 0xFFFF
/* 77D70 800BD570 3053FFFF */  andi       $s3, $v0, 0xFFFF
/* 77D74 800BD574 016C6821 */  addu       $t5, $t3, $t4
/* 77D78 800BD578 AE2D001C */  sw         $t5, 0x1C($s1)
/* 77D7C 800BD57C 0C02F42C */  jal        func_800BD0B0
/* 77D80 800BD580 02002025 */   or        $a0, $s0, $zero
/* 77D84 800BD584 1000FF22 */  b          .L800BD210
/* 77D88 800BD588 A2220018 */   sb        $v0, 0x18($s1)
glabel L800BD58C
/* 77D8C 800BD58C 92390000 */  lbu        $t9, 0x0($s1)
/* 77D90 800BD590 372F0002 */  ori        $t7, $t9, 0x2
/* 77D94 800BD594 1000FF1E */  b          .L800BD210
/* 77D98 800BD598 A22F0000 */   sb        $t7, 0x0($s1)
glabel L800BD59C
/* 77D9C 800BD59C 30A300F0 */  andi       $v1, $a1, 0xF0
/* 77DA0 800BD5A0 240100D0 */  addiu      $at, $zero, 0xD0
/* 77DA4 800BD5A4 10610005 */  beq        $v1, $at, .L800BD5BC
/* 77DA8 800BD5A8 240100E0 */   addiu     $at, $zero, 0xE0
/* 77DAC 800BD5AC 5061000F */  beql       $v1, $at, .L800BD5EC
/* 77DB0 800BD5B0 8E8B0090 */   lw        $t3, 0x90($s4)
/* 77DB4 800BD5B4 1000FF16 */  b          .L800BD210
/* 77DB8 800BD5B8 00000000 */   nop
.L800BD5BC:
/* 77DBC 800BD5BC 8E98008C */  lw         $t8, 0x8C($s4)
/* 77DC0 800BD5C0 30A9000F */  andi       $t1, $a1, 0xF
/* 77DC4 800BD5C4 03094021 */  addu       $t0, $t8, $t1
/* 77DC8 800BD5C8 91130000 */  lbu        $s3, 0x0($t0)
/* 77DCC 800BD5CC 02730019 */  multu      $s3, $s3
/* 77DD0 800BD5D0 00005012 */  mflo       $t2
/* 77DD4 800BD5D4 448A4000 */  mtc1       $t2, $f8
/* 77DD8 800BD5D8 00000000 */  nop
/* 77DDC 800BD5DC 468042A0 */  cvt.s.w    $f10, $f8
/* 77DE0 800BD5E0 1000FF0B */  b          .L800BD210
/* 77DE4 800BD5E4 E62A0028 */   swc1      $f10, 0x28($s1)
/* 77DE8 800BD5E8 8E8B0090 */  lw         $t3, 0x90($s4)
.L800BD5EC:
/* 77DEC 800BD5EC 30AC000F */  andi       $t4, $a1, 0xF
/* 77DF0 800BD5F0 016C6821 */  addu       $t5, $t3, $t4
/* 77DF4 800BD5F4 91AE0000 */  lbu        $t6, 0x0($t5)
/* 77DF8 800BD5F8 1000FF05 */  b          .L800BD210
/* 77DFC 800BD5FC A22E0003 */   sb        $t6, 0x3($s1)
.L800BD600:
/* 77E00 800BD600 240100C0 */  addiu      $at, $zero, 0xC0
/* 77E04 800BD604 14A10008 */  bne        $a1, $at, .L800BD628
/* 77E08 800BD608 30A300C0 */   andi      $v1, $a1, 0xC0
/* 77E0C 800BD60C 0C02F43D */  jal        func_800BD0F4
/* 77E10 800BD610 02002025 */   or        $a0, $s0, $zero
/* 77E14 800BD614 922F0000 */  lbu        $t7, 0x0($s1)
/* 77E18 800BD618 A6220038 */  sh         $v0, 0x38($s1)
/* 77E1C 800BD61C 35F80020 */  ori        $t8, $t7, 0x20
/* 77E20 800BD620 10000130 */  b          .L800BDAE4
/* 77E24 800BD624 A2380000 */   sb        $t8, 0x0($s1)
.L800BD628:
/* 77E28 800BD628 92290000 */  lbu        $t1, 0x0($s1)
/* 77E2C 800BD62C 24010001 */  addiu      $at, $zero, 0x1
/* 77E30 800BD630 3128FFDF */  andi       $t0, $t1, 0xFFDF
/* 77E34 800BD634 A2280000 */  sb         $t0, 0x0($s1)
/* 77E38 800BD638 8FAA0068 */  lw         $t2, 0x68($sp)
/* 77E3C 800BD63C 8D4B0000 */  lw         $t3, 0x0($t2)
/* 77E40 800BD640 000B6180 */  sll        $t4, $t3, 6
/* 77E44 800BD644 000C6FC2 */  srl        $t5, $t4, 31
/* 77E48 800BD648 15A1003E */  bne        $t5, $at, .L800BD744
/* 77E4C 800BD64C 00000000 */   nop
/* 77E50 800BD650 30A300C0 */  andi       $v1, $a1, 0xC0
/* 77E54 800BD654 10600007 */  beqz       $v1, .L800BD674
/* 77E58 800BD658 24010040 */   addiu     $at, $zero, 0x40
/* 77E5C 800BD65C 10610014 */  beq        $v1, $at, .L800BD6B0
/* 77E60 800BD660 24010080 */   addiu     $at, $zero, 0x80
/* 77E64 800BD664 1061001D */  beq        $v1, $at, .L800BD6DC
/* 77E68 800BD668 02602025 */   or        $a0, $s3, $zero
/* 77E6C 800BD66C 10000026 */  b          .L800BD708
/* 77E70 800BD670 8FA60034 */   lw        $a2, 0x34($sp)
.L800BD674:
/* 77E74 800BD674 0C02F43D */  jal        func_800BD0F4
/* 77E78 800BD678 02002025 */   or        $a0, $s0, $zero
/* 77E7C 800BD67C 8E030000 */  lw         $v1, 0x0($s0)
/* 77E80 800BD680 3053FFFF */  andi       $s3, $v0, 0xFFFF
/* 77E84 800BD684 02602025 */  or         $a0, $s3, $zero
/* 77E88 800BD688 90660000 */  lbu        $a2, 0x0($v1)
/* 77E8C 800BD68C 246E0001 */  addiu      $t6, $v1, 0x1
/* 77E90 800BD690 AE0E0000 */  sw         $t6, 0x0($s0)
/* 77E94 800BD694 91CF0000 */  lbu        $t7, 0x0($t6)
/* 77E98 800BD698 A22F0003 */  sb         $t7, 0x3($s1)
/* 77E9C 800BD69C 8E180000 */  lw         $t8, 0x0($s0)
/* 77EA0 800BD6A0 27090001 */  addiu      $t1, $t8, 0x1
/* 77EA4 800BD6A4 AE090000 */  sw         $t1, 0x0($s0)
/* 77EA8 800BD6A8 10000017 */  b          .L800BD708
/* 77EAC 800BD6AC A6220036 */   sh        $v0, 0x36($s1)
.L800BD6B0:
/* 77EB0 800BD6B0 0C02F43D */  jal        func_800BD0F4
/* 77EB4 800BD6B4 02002025 */   or        $a0, $s0, $zero
/* 77EB8 800BD6B8 8E030000 */  lw         $v1, 0x0($s0)
/* 77EBC 800BD6BC 3053FFFF */  andi       $s3, $v0, 0xFFFF
/* 77EC0 800BD6C0 02602025 */  or         $a0, $s3, $zero
/* 77EC4 800BD6C4 90660000 */  lbu        $a2, 0x0($v1)
/* 77EC8 800BD6C8 24680001 */  addiu      $t0, $v1, 0x1
/* 77ECC 800BD6CC AE080000 */  sw         $t0, 0x0($s0)
/* 77ED0 800BD6D0 A2200003 */  sb         $zero, 0x3($s1)
/* 77ED4 800BD6D4 1000000C */  b          .L800BD708
/* 77ED8 800BD6D8 A6220036 */   sh        $v0, 0x36($s1)
.L800BD6DC:
/* 77EDC 800BD6DC 8E030000 */  lw         $v1, 0x0($s0)
/* 77EE0 800BD6E0 96330036 */  lhu        $s3, 0x36($s1)
/* 77EE4 800BD6E4 90660000 */  lbu        $a2, 0x0($v1)
/* 77EE8 800BD6E8 246A0001 */  addiu      $t2, $v1, 0x1
/* 77EEC 800BD6EC AE0A0000 */  sw         $t2, 0x0($s0)
/* 77EF0 800BD6F0 914C0000 */  lbu        $t4, 0x0($t2)
/* 77EF4 800BD6F4 02602025 */  or         $a0, $s3, $zero
/* 77EF8 800BD6F8 A22C0003 */  sb         $t4, 0x3($s1)
/* 77EFC 800BD6FC 8E0D0000 */  lw         $t5, 0x0($s0)
/* 77F00 800BD700 25AE0001 */  addiu      $t6, $t5, 0x1
/* 77F04 800BD704 AE0E0000 */  sw         $t6, 0x0($s0)
.L800BD708:
/* 77F08 800BD708 28C10080 */  slti       $at, $a2, 0x80
/* 77F0C 800BD70C 50200004 */  beql       $at, $zero, .L800BD720
/* 77F10 800BD710 2406007F */   addiu     $a2, $zero, 0x7F
/* 77F14 800BD714 04C30003 */  bgezl      $a2, .L800BD724
/* 77F18 800BD718 44868000 */   mtc1      $a2, $f16
/* 77F1C 800BD71C 2406007F */  addiu      $a2, $zero, 0x7F
.L800BD720:
/* 77F20 800BD720 44868000 */  mtc1       $a2, $f16
.L800BD724:
/* 77F24 800BD724 325900C0 */  andi       $t9, $s2, 0xC0
/* 77F28 800BD728 02599023 */  subu       $s2, $s2, $t9
/* 77F2C 800BD72C 46808020 */  cvt.s.w    $f0, $f16
/* 77F30 800BD730 324F00FF */  andi       $t7, $s2, 0xFF
/* 77F34 800BD734 01E09025 */  or         $s2, $t7, $zero
/* 77F38 800BD738 46000482 */  mul.s      $f18, $f0, $f0
/* 77F3C 800BD73C 10000018 */  b          .L800BD7A0
/* 77F40 800BD740 E6320028 */   swc1      $f18, 0x28($s1)
.L800BD744:
/* 77F44 800BD744 10600007 */  beqz       $v1, .L800BD764
/* 77F48 800BD748 24010040 */   addiu     $at, $zero, 0x40
/* 77F4C 800BD74C 1061000B */  beq        $v1, $at, .L800BD77C
/* 77F50 800BD750 24010080 */   addiu     $at, $zero, 0x80
/* 77F54 800BD754 5061000D */  beql       $v1, $at, .L800BD78C
/* 77F58 800BD758 96330036 */   lhu       $s3, 0x36($s1)
/* 77F5C 800BD75C 1000000C */  b          .L800BD790
/* 77F60 800BD760 02602025 */   or        $a0, $s3, $zero
.L800BD764:
/* 77F64 800BD764 0C02F43D */  jal        func_800BD0F4
/* 77F68 800BD768 02002025 */   or        $a0, $s0, $zero
/* 77F6C 800BD76C 3053FFFF */  andi       $s3, $v0, 0xFFFF
/* 77F70 800BD770 A6220036 */  sh         $v0, 0x36($s1)
/* 77F74 800BD774 10000006 */  b          .L800BD790
/* 77F78 800BD778 02602025 */   or        $a0, $s3, $zero
.L800BD77C:
/* 77F7C 800BD77C 96330034 */  lhu        $s3, 0x34($s1)
/* 77F80 800BD780 10000003 */  b          .L800BD790
/* 77F84 800BD784 02602025 */   or        $a0, $s3, $zero
/* 77F88 800BD788 96330036 */  lhu        $s3, 0x36($s1)
.L800BD78C:
/* 77F8C 800BD78C 02602025 */  or         $a0, $s3, $zero
.L800BD790:
/* 77F90 800BD790 325800C0 */  andi       $t8, $s2, 0xC0
/* 77F94 800BD794 02589023 */  subu       $s2, $s2, $t8
/* 77F98 800BD798 324900FF */  andi       $t1, $s2, 0xFF
/* 77F9C 800BD79C 01209025 */  or         $s2, $t1, $zero
.L800BD7A0:
/* 77FA0 800BD7A0 92280003 */  lbu        $t0, 0x3($s1)
/* 77FA4 800BD7A4 A6240038 */  sh         $a0, 0x38($s1)
/* 77FA8 800BD7A8 01040019 */  multu      $t0, $a0
/* 77FAC 800BD7AC 00005012 */  mflo       $t2
/* 77FB0 800BD7B0 000A5A03 */  sra        $t3, $t2, 8
/* 77FB4 800BD7B4 A62B003A */  sh         $t3, 0x3A($s1)
/* 77FB8 800BD7B8 8E8C0000 */  lw         $t4, 0x0($s4)
/* 77FBC 800BD7BC 8FB90068 */  lw         $t9, 0x68($sp)
/* 77FC0 800BD7C0 8FA90068 */  lw         $t1, 0x68($sp)
/* 77FC4 800BD7C4 000C7080 */  sll        $t6, $t4, 2
/* 77FC8 800BD7C8 05C30006 */  bgezl      $t6, .L800BD7E4
/* 77FCC 800BD7CC 8D230000 */   lw        $v1, 0x0($t1)
/* 77FD0 800BD7D0 932F0003 */  lbu        $t7, 0x3($t9)
/* 77FD4 800BD7D4 31F80040 */  andi       $t8, $t7, 0x40
/* 77FD8 800BD7D8 57000008 */  bnel       $t8, $zero, .L800BD7FC
/* 77FDC 800BD7DC 922C0000 */   lbu       $t4, 0x0($s1)
/* 77FE0 800BD7E0 8D230000 */  lw         $v1, 0x0($t1)
.L800BD7E4:
/* 77FE4 800BD7E4 8FAF0068 */  lw         $t7, 0x68($sp)
/* 77FE8 800BD7E8 8FAE0068 */  lw         $t6, 0x68($sp)
/* 77FEC 800BD7EC 000350C0 */  sll        $t2, $v1, 3
/* 77FF0 800BD7F0 05410005 */  bgez       $t2, .L800BD808
/* 77FF4 800BD7F4 0003C900 */   sll       $t9, $v1, 4
/* 77FF8 800BD7F8 922C0000 */  lbu        $t4, 0x0($s1)
.L800BD7FC:
/* 77FFC 800BD7FC 358D0020 */  ori        $t5, $t4, 0x20
/* 78000 800BD800 100000B8 */  b          .L800BDAE4
/* 78004 800BD804 A22D0000 */   sb        $t5, 0x0($s1)
.L800BD808:
/* 78008 800BD808 92240001 */  lbu        $a0, 0x1($s1)
/* 7800C 800BD80C 240100FF */  addiu      $at, $zero, 0xFF
/* 78010 800BD810 14810004 */  bne        $a0, $at, .L800BD824
/* 78014 800BD814 00801025 */   or        $v0, $a0, $zero
/* 78018 800BD818 072300ED */  bgezl      $t9, .L800BDBD0
/* 7801C 800BD81C 8FBF002C */   lw        $ra, 0x2C($sp)
/* 78020 800BD820 85E2001C */  lh         $v0, 0x1C($t7)
.L800BD824:
/* 78024 800BD824 5440001F */  bnel       $v0, $zero, .L800BD8A4
/* 78028 800BD828 868C000C */   lh        $t4, 0xC($s4)
/* 7802C 800BD82C 8FB80068 */  lw         $t8, 0x68($sp)
/* 78030 800BD830 862A0022 */  lh         $t2, 0x22($s1)
/* 78034 800BD834 8709001E */  lh         $t1, 0x1E($t8)
/* 78038 800BD838 93040006 */  lbu        $a0, 0x6($t8)
/* 7803C 800BD83C 02494021 */  addu       $t0, $s2, $t1
/* 78040 800BD840 010A9021 */  addu       $s2, $t0, $t2
/* 78044 800BD844 0C02EA82 */  jal        func_800BAA08
/* 78048 800BD848 324500FF */   andi      $a1, $s2, 0xFF
/* 7804C 800BD84C 14400007 */  bnez       $v0, .L800BD86C
/* 78050 800BD850 24430004 */   addiu     $v1, $v0, 0x4
/* 78054 800BD854 922D0000 */  lbu        $t5, 0x0($s1)
/* 78058 800BD858 86390038 */  lh         $t9, 0x38($s1)
/* 7805C 800BD85C 35AE0020 */  ori        $t6, $t5, 0x20
/* 78060 800BD860 A22E0000 */  sb         $t6, 0x0($s1)
/* 78064 800BD864 100000D9 */  b          .L800BDBCC
/* 78068 800BD868 A639003C */   sh        $t9, 0x3C($s1)
.L800BD86C:
/* 7806C 800BD86C 8C4F000C */  lw         $t7, 0xC($v0)
/* 78070 800BD870 8E280000 */  lw         $t0, 0x0($s1)
/* 78074 800BD874 AE2F001C */  sw         $t7, 0x1C($s1)
/* 78078 800BD878 90490000 */  lbu        $t1, 0x0($v0)
/* 7807C 800BD87C 00085980 */  sll        $t3, $t0, 6
/* 78080 800BD880 05600003 */  bltz       $t3, .L800BD890
/* 78084 800BD884 A2290018 */   sb        $t1, 0x18($s1)
/* 78088 800BD888 90580001 */  lbu        $t8, 0x1($v0)
/* 7808C 800BD88C A2380005 */  sb         $t8, 0x5($s1)
.L800BD890:
/* 78090 800BD890 AE230048 */  sw         $v1, 0x48($s1)
/* 78094 800BD894 C4640004 */  lwc1       $f4, 0x4($v1)
/* 78098 800BD898 10000090 */  b          .L800BDADC
/* 7809C 800BD89C E6240024 */   swc1      $f4, 0x24($s1)
/* 780A0 800BD8A0 868C000C */  lh         $t4, 0xC($s4)
.L800BD8A4:
/* 780A4 800BD8A4 85D9001E */  lh         $t9, 0x1E($t6)
/* 780A8 800BD8A8 86290022 */  lh         $t1, 0x22($s1)
/* 780AC 800BD8AC 024C6821 */  addu       $t5, $s2, $t4
/* 780B0 800BD8B0 01B97821 */  addu       $t7, $t5, $t9
/* 780B4 800BD8B4 01E99021 */  addu       $s2, $t7, $t1
/* 780B8 800BD8B8 324500FF */  andi       $a1, $s2, 0xFF
/* 780BC 800BD8BC 28A10080 */  slti       $at, $a1, 0x80
/* 780C0 800BD8C0 14200005 */  bnez       $at, .L800BD8D8
/* 780C4 800BD8C4 00A09025 */   or        $s2, $a1, $zero
/* 780C8 800BD8C8 922B0000 */  lbu        $t3, 0x0($s1)
/* 780CC 800BD8CC 35780020 */  ori        $t8, $t3, 0x20
/* 780D0 800BD8D0 10000082 */  b          .L800BDADC
/* 780D4 800BD8D4 A2380000 */   sb        $t8, 0x0($s1)
.L800BD8D8:
/* 780D8 800BD8D8 240100FF */  addiu      $at, $zero, 0xFF
/* 780DC 800BD8DC 14810003 */  bne        $a0, $at, .L800BD8EC
/* 780E0 800BD8E0 8FAC0068 */   lw        $t4, 0x68($sp)
/* 780E4 800BD8E4 10000002 */  b          .L800BD8F0
/* 780E8 800BD8E8 8D840040 */   lw        $a0, 0x40($t4)
.L800BD8EC:
/* 780EC 800BD8EC 8E240044 */  lw         $a0, 0x44($s1)
.L800BD8F0:
/* 780F0 800BD8F0 922E0008 */  lbu        $t6, 0x8($s1)
/* 780F4 800BD8F4 11C00061 */  beqz       $t6, .L800BDA7C
/* 780F8 800BD8F8 00000000 */   nop
/* 780FC 800BD8FC 92220004 */  lbu        $v0, 0x4($s1)
/* 78100 800BD900 0045082A */  slt        $at, $v0, $a1
/* 78104 800BD904 10200003 */  beqz       $at, .L800BD914
/* 78108 800BD908 00403025 */   or        $a2, $v0, $zero
/* 7810C 800BD90C 10000001 */  b          .L800BD914
/* 78110 800BD910 00A03025 */   or        $a2, $a1, $zero
.L800BD914:
/* 78114 800BD914 1080000A */  beqz       $a0, .L800BD940
/* 78118 800BD918 3C013F80 */   lui       $at, (0x3F800000 >> 16)
/* 7811C 800BD91C 0C02EA2B */  jal        func_800BA8AC
/* 78120 800BD920 00C02825 */   or        $a1, $a2, $zero
/* 78124 800BD924 8E2D0048 */  lw         $t5, 0x48($s1)
/* 78128 800BD928 004DC826 */  xor        $t9, $v0, $t5
/* 7812C 800BD92C 2F390001 */  sltiu      $t9, $t9, 0x1
/* 78130 800BD930 AFB90044 */  sw         $t9, 0x44($sp)
/* 78134 800BD934 AE220048 */  sw         $v0, 0x48($s1)
/* 78138 800BD938 10000003 */  b          .L800BD948
/* 7813C 800BD93C C4400004 */   lwc1      $f0, 0x4($v0)
.L800BD940:
/* 78140 800BD940 44810000 */  mtc1       $at, $f0
/* 78144 800BD944 AE200048 */  sw         $zero, 0x48($s1)
.L800BD948:
/* 78148 800BD948 3C03800F */  lui        $v1, %hi(D_800ECDE4)
/* 7814C 800BD94C 92280004 */  lbu        $t0, 0x4($s1)
/* 78150 800BD950 2463CDE4 */  addiu      $v1, $v1, %lo(D_800ECDE4)
/* 78154 800BD954 00127880 */  sll        $t7, $s2, 2
/* 78158 800BD958 006F4821 */  addu       $t1, $v1, $t7
/* 7815C 800BD95C C5260000 */  lwc1       $f6, 0x0($t1)
/* 78160 800BD960 92380008 */  lbu        $t8, 0x8($s1)
/* 78164 800BD964 00085080 */  sll        $t2, $t0, 2
/* 78168 800BD968 006A5821 */  addu       $t3, $v1, $t2
/* 7816C 800BD96C C5680000 */  lwc1       $f8, 0x0($t3)
/* 78170 800BD970 46003082 */  mul.s      $f2, $f6, $f0
/* 78174 800BD974 2401FF7F */  addiu      $at, $zero, -0x81
/* 78178 800BD978 03016024 */  and        $t4, $t8, $at
/* 7817C 800BD97C 258EFFFF */  addiu      $t6, $t4, -0x1
/* 78180 800BD980 2DC10005 */  sltiu      $at, $t6, 0x5
/* 78184 800BD984 46004302 */  mul.s      $f12, $f8, $f0
/* 78188 800BD988 10200008 */  beqz       $at, L800BD9AC
/* 7818C 800BD98C 000E7080 */   sll       $t6, $t6, 2
/* 78190 800BD990 3C01800F */  lui        $at, %hi(jtbl_800EBD20_main)
/* 78194 800BD994 002E0821 */  addu       $at, $at, $t6
/* 78198 800BD998 8C2EBD20 */  lw         $t6, %lo(jtbl_800EBD20_main)($at)
/* 7819C 800BD99C 01C00008 */  jr         $t6
/* 781A0 800BD9A0 00000000 */   nop
glabel L800BD9A4
/* 781A4 800BD9A4 10000002 */  b          .L800BD9B0
/* 781A8 800BD9A8 46006006 */   mov.s     $f0, $f12
glabel L800BD9AC
/* 781AC 800BD9AC 46001006 */  mov.s      $f0, $f2
.L800BD9B0:
/* 781B0 800BD9B0 46001283 */  div.s      $f10, $f2, $f0
/* 781B4 800BD9B4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 781B8 800BD9B8 44818000 */  mtc1       $at, $f16
/* 781BC 800BD9BC 26220008 */  addiu      $v0, $s1, 0x8
/* 781C0 800BD9C0 3C0146FE */  lui        $at, (0x46FE0000 >> 16)
/* 781C4 800BD9C4 46105481 */  sub.s      $f18, $f10, $f16
/* 781C8 800BD9C8 E452000C */  swc1       $f18, 0xC($v0)
/* 781CC 800BD9CC 922D0008 */  lbu        $t5, 0x8($s1)
/* 781D0 800BD9D0 31B90080 */  andi       $t9, $t5, 0x80
/* 781D4 800BD9D4 53200017 */  beql       $t9, $zero, .L800BDA34
/* 781D8 800BD9D8 962B0020 */   lhu       $t3, 0x20($s1)
/* 781DC 800BD9DC 968F0008 */  lhu        $t7, 0x8($s4)
/* 781E0 800BD9E0 3C088004 */  lui        $t0, %hi(D_8004554C)
/* 781E4 800BD9E4 8508554C */  lh         $t0, %lo(D_8004554C)($t0)
/* 781E8 800BD9E8 448F2000 */  mtc1       $t7, $f4
/* 781EC 800BD9EC 86290038 */  lh         $t1, 0x38($s1)
/* 781F0 800BD9F0 44814000 */  mtc1       $at, $f8
/* 781F4 800BD9F4 468021A0 */  cvt.s.w    $f6, $f4
/* 781F8 800BD9F8 44882000 */  mtc1       $t0, $f4
/* 781FC 800BD9FC 44898000 */  mtc1       $t1, $f16
/* 78200 800BDA00 962A0020 */  lhu        $t2, 0x20($s1)
/* 78204 800BDA04 468084A0 */  cvt.s.w    $f18, $f16
/* 78208 800BDA08 46083282 */  mul.s      $f10, $f6, $f8
/* 7820C 800BDA0C 448A8000 */  mtc1       $t2, $f16
/* 78210 800BDA10 468021A0 */  cvt.s.w    $f6, $f4
/* 78214 800BDA14 46808120 */  cvt.s.w    $f4, $f16
/* 78218 800BDA18 46069202 */  mul.s      $f8, $f18, $f6
/* 7821C 800BDA1C 00000000 */  nop
/* 78220 800BDA20 46044482 */  mul.s      $f18, $f8, $f4
/* 78224 800BDA24 46125183 */  div.s      $f6, $f10, $f18
/* 78228 800BDA28 10000009 */  b          .L800BDA50
/* 7822C 800BDA2C E4460008 */   swc1      $f6, 0x8($v0)
/* 78230 800BDA30 962B0020 */  lhu        $t3, 0x20($s1)
.L800BDA34:
/* 78234 800BDA34 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
/* 78238 800BDA38 44818000 */  mtc1       $at, $f16
/* 7823C 800BDA3C 448B4000 */  mtc1       $t3, $f8
/* 78240 800BDA40 00000000 */  nop
/* 78244 800BDA44 46804120 */  cvt.s.w    $f4, $f8
/* 78248 800BDA48 46048283 */  div.s      $f10, $f16, $f4
/* 7824C 800BDA4C E44A0008 */  swc1       $f10, 0x8($v0)
.L800BDA50:
/* 78250 800BDA50 44809000 */  mtc1       $zero, $f18
/* 78254 800BDA54 2401FF7F */  addiu      $at, $zero, -0x81
/* 78258 800BDA58 E4520004 */  swc1       $f18, 0x4($v0)
/* 7825C 800BDA5C 92380008 */  lbu        $t8, 0x8($s1)
/* 78260 800BDA60 E6200024 */  swc1       $f0, 0x24($s1)
/* 78264 800BDA64 03016024 */  and        $t4, $t8, $at
/* 78268 800BDA68 24010005 */  addiu      $at, $zero, 0x5
/* 7826C 800BDA6C 5581001C */  bnel       $t4, $at, .L800BDAE0
/* 78270 800BDA70 862A0038 */   lh        $t2, 0x38($s1)
/* 78274 800BDA74 10000019 */  b          .L800BDADC
/* 78278 800BDA78 A2320004 */   sb        $s2, 0x4($s1)
.L800BDA7C:
/* 7827C 800BDA7C 10800011 */  beqz       $a0, .L800BDAC4
/* 78280 800BDA80 3C03800F */   lui       $v1, %hi(D_800ECDE4)
/* 78284 800BDA84 0C02EA2B */  jal        func_800BA8AC
/* 78288 800BDA88 00000000 */   nop
/* 7828C 800BDA8C 8E2E0048 */  lw         $t6, 0x48($s1)
/* 78290 800BDA90 3C03800F */  lui        $v1, %hi(D_800ECDE4)
/* 78294 800BDA94 2463CDE4 */  addiu      $v1, $v1, %lo(D_800ECDE4)
/* 78298 800BDA98 004E6826 */  xor        $t5, $v0, $t6
/* 7829C 800BDA9C 2DAD0001 */  sltiu      $t5, $t5, 0x1
/* 782A0 800BDAA0 AFAD0044 */  sw         $t5, 0x44($sp)
/* 782A4 800BDAA4 AE220048 */  sw         $v0, 0x48($s1)
/* 782A8 800BDAA8 0012C880 */  sll        $t9, $s2, 2
/* 782AC 800BDAAC 00797821 */  addu       $t7, $v1, $t9
/* 782B0 800BDAB0 C5E60000 */  lwc1       $f6, 0x0($t7)
/* 782B4 800BDAB4 C4480004 */  lwc1       $f8, 0x4($v0)
/* 782B8 800BDAB8 46083402 */  mul.s      $f16, $f6, $f8
/* 782BC 800BDABC 10000007 */  b          .L800BDADC
/* 782C0 800BDAC0 E6300024 */   swc1      $f16, 0x24($s1)
.L800BDAC4:
/* 782C4 800BDAC4 2463CDE4 */  addiu      $v1, $v1, %lo(D_800ECDE4)
/* 782C8 800BDAC8 00124880 */  sll        $t1, $s2, 2
/* 782CC 800BDACC AE200048 */  sw         $zero, 0x48($s1)
/* 782D0 800BDAD0 00694021 */  addu       $t0, $v1, $t1
/* 782D4 800BDAD4 C5040000 */  lwc1       $f4, 0x0($t0)
/* 782D8 800BDAD8 E6240024 */  swc1       $f4, 0x24($s1)
.L800BDADC:
/* 782DC 800BDADC 862A0038 */  lh         $t2, 0x38($s1)
.L800BDAE0:
/* 782E0 800BDAE0 A62A003C */  sh         $t2, 0x3C($s1)
.L800BDAE4:
/* 782E4 800BDAE4 8E220000 */  lw         $v0, 0x0($s1)
/* 782E8 800BDAE8 24010001 */  addiu      $at, $zero, 0x1
/* 782EC 800BDAEC 00025880 */  sll        $t3, $v0, 2
/* 782F0 800BDAF0 000BC7C2 */  srl        $t8, $t3, 31
/* 782F4 800BDAF4 1701000B */  bne        $t8, $at, .L800BDB24
/* 782F8 800BDAF8 000278C0 */   sll       $t7, $v0, 3
/* 782FC 800BDAFC 8E2C0040 */  lw         $t4, 0x40($s1)
/* 78300 800BDB00 000268C0 */  sll        $t5, $v0, 3
/* 78304 800BDB04 15800003 */  bnez       $t4, .L800BDB14
/* 78308 800BDB08 00000000 */   nop
/* 7830C 800BDB0C 05A30030 */  bgezl      $t5, .L800BDBD0
/* 78310 800BDB10 8FBF002C */   lw        $ra, 0x2C($sp)
.L800BDB14:
/* 78314 800BDB14 0C02EC42 */  jal        func_800BB108
/* 78318 800BDB18 02202025 */   or        $a0, $s1, $zero
/* 7831C 800BDB1C 1000002C */  b          .L800BDBD0
/* 78320 800BDB20 8FBF002C */   lw        $ra, 0x2C($sp)
.L800BDB24:
/* 78324 800BDB24 05E00003 */  bltz       $t7, .L800BDB34
/* 78328 800BDB28 00009025 */   or        $s2, $zero, $zero
/* 7832C 800BDB2C 1000001A */  b          .L800BDB98
/* 78330 800BDB30 24120001 */   addiu     $s2, $zero, 0x1
.L800BDB34:
/* 78334 800BDB34 8E240040 */  lw         $a0, 0x40($s1)
/* 78338 800BDB38 10800005 */  beqz       $a0, .L800BDB50
/* 7833C 800BDB3C 00000000 */   nop
/* 78340 800BDB40 92290002 */  lbu        $t1, 0x2($s1)
/* 78344 800BDB44 8FA80044 */  lw         $t0, 0x44($sp)
/* 78348 800BDB48 15200003 */  bnez       $t1, .L800BDB58
/* 7834C 800BDB4C 00000000 */   nop
.L800BDB50:
/* 78350 800BDB50 10000011 */  b          .L800BDB98
/* 78354 800BDB54 24120001 */   addiu     $s2, $zero, 0x1
.L800BDB58:
/* 78358 800BDB58 55000006 */  bnel       $t0, $zero, .L800BDB74
/* 7835C 800BDB5C 8C8A0044 */   lw        $t2, 0x44($a0)
/* 78360 800BDB60 0C02EC42 */  jal        func_800BB108
/* 78364 800BDB64 02202025 */   or        $a0, $s1, $zero
/* 78368 800BDB68 1000000B */  b          .L800BDB98
/* 7836C 800BDB6C 24120001 */   addiu     $s2, $zero, 0x1
/* 78370 800BDB70 8C8A0044 */  lw         $t2, 0x44($a0)
.L800BDB74:
/* 78374 800BDB74 522A0004 */  beql       $s1, $t2, .L800BDB88
/* 78378 800BDB78 8E2B0048 */   lw        $t3, 0x48($s1)
/* 7837C 800BDB7C 10000006 */  b          .L800BDB98
/* 78380 800BDB80 24120001 */   addiu     $s2, $zero, 0x1
/* 78384 800BDB84 8E2B0048 */  lw         $t3, 0x48($s1)
.L800BDB88:
/* 78388 800BDB88 15600003 */  bnez       $t3, .L800BDB98
/* 7838C 800BDB8C 00000000 */   nop
/* 78390 800BDB90 0C02EC93 */  jal        func_800BB24C
/* 78394 800BDB94 02202825 */   or        $a1, $s1, $zero
.L800BDB98:
/* 78398 800BDB98 52400005 */  beql       $s2, $zero, .L800BDBB0
/* 7839C 800BDB9C 8E240040 */   lw        $a0, 0x40($s1)
/* 783A0 800BDBA0 0C02EE8B */  jal        func_800BBA2C
/* 783A4 800BDBA4 02202025 */   or        $a0, $s1, $zero
/* 783A8 800BDBA8 AE220040 */  sw         $v0, 0x40($s1)
/* 783AC 800BDBAC 8E240040 */  lw         $a0, 0x40($s1)
.L800BDBB0:
/* 783B0 800BDBB0 50800007 */  beql       $a0, $zero, .L800BDBD0
/* 783B4 800BDBB4 8FBF002C */   lw        $ra, 0x2C($sp)
/* 783B8 800BDBB8 8C980044 */  lw         $t8, 0x44($a0)
/* 783BC 800BDBBC 56380004 */  bnel       $s1, $t8, .L800BDBD0
/* 783C0 800BDBC0 8FBF002C */   lw        $ra, 0x2C($sp)
/* 783C4 800BDBC4 0C02F12C */  jal        func_800BC4B0
/* 783C8 800BDBC8 00000000 */   nop
.L800BDBCC:
/* 783CC 800BDBCC 8FBF002C */  lw         $ra, 0x2C($sp)
.L800BDBD0:
/* 783D0 800BDBD0 8FB00018 */  lw         $s0, 0x18($sp)
/* 783D4 800BDBD4 8FB1001C */  lw         $s1, 0x1C($sp)
/* 783D8 800BDBD8 8FB20020 */  lw         $s2, 0x20($sp)
/* 783DC 800BDBDC 8FB30024 */  lw         $s3, 0x24($sp)
/* 783E0 800BDBE0 8FB40028 */  lw         $s4, 0x28($sp)
/* 783E4 800BDBE4 03E00008 */  jr         $ra
/* 783E8 800BDBE8 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_800BDBEC
/* 783EC 800BDBEC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 783F0 800BDBF0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 783F4 800BDBF4 AFA40018 */  sw         $a0, 0x18($sp)
/* 783F8 800BDBF8 AFA5001C */  sw         $a1, 0x1C($sp)
/* 783FC 800BDBFC AFA60020 */  sw         $a2, 0x20($sp)
/* 78400 800BDC00 AFA70024 */  sw         $a3, 0x24($sp)
/* 78404 800BDC04 90840006 */  lbu        $a0, 0x6($a0)
/* 78408 800BDC08 0C02EA3A */  jal        func_800BA8E8
/* 7840C 800BDC0C 93A5001F */   lbu       $a1, 0x1F($sp)
/* 78410 800BDC10 93A4001F */  lbu        $a0, 0x1F($sp)
/* 78414 800BDC14 8FA50020 */  lw         $a1, 0x20($sp)
/* 78418 800BDC18 8FA60024 */  lw         $a2, 0x24($sp)
/* 7841C 800BDC1C 14400004 */  bnez       $v0, .L800BDC30
/* 78420 800BDC20 00401825 */   or        $v1, $v0, $zero
/* 78424 800BDC24 ACA00000 */  sw         $zero, 0x0($a1)
/* 78428 800BDC28 10000008 */  b          .L800BDC4C
/* 7842C 800BDC2C 00001025 */   or        $v0, $zero, $zero
.L800BDC30:
/* 78430 800BDC30 8C6F0004 */  lw         $t7, 0x4($v1)
/* 78434 800BDC34 24840001 */  addiu      $a0, $a0, 0x1
/* 78438 800BDC38 308200FF */  andi       $v0, $a0, 0xFF
/* 7843C 800BDC3C ACCF0004 */  sw         $t7, 0x4($a2)
/* 78440 800BDC40 90780003 */  lbu        $t8, 0x3($v1)
/* 78444 800BDC44 A0D80000 */  sb         $t8, 0x0($a2)
/* 78448 800BDC48 ACA30000 */  sw         $v1, 0x0($a1)
.L800BDC4C:
/* 7844C 800BDC4C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 78450 800BDC50 27BD0018 */  addiu      $sp, $sp, 0x18
/* 78454 800BDC54 03E00008 */  jr         $ra
/* 78458 800BDC58 00000000 */   nop

glabel func_800BDC5C
/* 7845C 800BDC5C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 78460 800BDC60 30AE00FF */  andi       $t6, $a1, 0xFF
/* 78464 800BDC64 AFA5001C */  sw         $a1, 0x1C($sp)
/* 78468 800BDC68 29C10080 */  slti       $at, $t6, 0x80
/* 7846C 800BDC6C 01C02825 */  or         $a1, $t6, $zero
/* 78470 800BDC70 AFBF0014 */  sw         $ra, 0x14($sp)
/* 78474 800BDC74 14200004 */  bnez       $at, .L800BDC88
/* 78478 800BDC78 01C01025 */   or        $v0, $t6, $zero
/* 7847C 800BDC7C A48E001C */  sh         $t6, 0x1C($a0)
/* 78480 800BDC80 10000014 */  b          .L800BDCD4
/* 78484 800BDC84 AC800040 */   sw        $zero, 0x40($a0)
.L800BDC88:
/* 78488 800BDC88 2401007F */  addiu      $at, $zero, 0x7F
/* 7848C 800BDC8C 14410005 */  bne        $v0, $at, .L800BDCA4
/* 78490 800BDC90 24860040 */   addiu     $a2, $a0, 0x40
/* 78494 800BDC94 240F0001 */  addiu      $t7, $zero, 0x1
/* 78498 800BDC98 A480001C */  sh         $zero, 0x1C($a0)
/* 7849C 800BDC9C 1000000D */  b          .L800BDCD4
/* 784A0 800BDCA0 AC8F0040 */   sw        $t7, 0x40($a0)
.L800BDCA4:
/* 784A4 800BDCA4 2487007C */  addiu      $a3, $a0, 0x7C
/* 784A8 800BDCA8 0C02F6FB */  jal        func_800BDBEC
/* 784AC 800BDCAC AFA40018 */   sw        $a0, 0x18($sp)
/* 784B0 800BDCB0 8FA40018 */  lw         $a0, 0x18($sp)
/* 784B4 800BDCB4 0002C400 */  sll        $t8, $v0, 16
/* 784B8 800BDCB8 0018CC03 */  sra        $t9, $t8, 16
/* 784BC 800BDCBC 17200005 */  bnez       $t9, .L800BDCD4
/* 784C0 800BDCC0 A482001C */   sh        $v0, 0x1C($a0)
/* 784C4 800BDCC4 90880000 */  lbu        $t0, 0x0($a0)
/* 784C8 800BDCC8 3109FFF7 */  andi       $t1, $t0, 0xFFF7
/* 784CC 800BDCCC 10000004 */  b          .L800BDCE0
/* 784D0 800BDCD0 A0890000 */   sb        $t1, 0x0($a0)
.L800BDCD4:
/* 784D4 800BDCD4 908B0000 */  lbu        $t3, 0x0($a0)
/* 784D8 800BDCD8 356C0008 */  ori        $t4, $t3, 0x8
/* 784DC 800BDCDC A08C0000 */  sb         $t4, 0x0($a0)
.L800BDCE0:
/* 784E0 800BDCE0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 784E4 800BDCE4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 784E8 800BDCE8 03E00008 */  jr         $ra
/* 784EC 800BDCEC 00000000 */   nop

glabel func_800BDCF0
/* 784F0 800BDCF0 30AE00FF */  andi       $t6, $a1, 0xFF
/* 784F4 800BDCF4 448E2000 */  mtc1       $t6, $f4
/* 784F8 800BDCF8 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
/* 784FC 800BDCFC 44814000 */  mtc1       $at, $f8
/* 78500 800BDD00 468021A0 */  cvt.s.w    $f6, $f4
/* 78504 800BDD04 AFA50004 */  sw         $a1, 0x4($sp)
/* 78508 800BDD08 46083283 */  div.s      $f10, $f6, $f8
/* 7850C 800BDD0C 03E00008 */  jr         $ra
/* 78510 800BDD10 E48A0024 */   swc1      $f10, 0x24($a0)

glabel func_800BDD14
/* 78514 800BDD14 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 78518 800BDD18 AFBF002C */  sw         $ra, 0x2C($sp)
/* 7851C 800BDD1C AFB40028 */  sw         $s4, 0x28($sp)
/* 78520 800BDD20 AFB30024 */  sw         $s3, 0x24($sp)
/* 78524 800BDD24 AFB20020 */  sw         $s2, 0x20($sp)
/* 78528 800BDD28 AFB1001C */  sw         $s1, 0x1C($sp)
/* 7852C 800BDD2C AFB00018 */  sw         $s0, 0x18($sp)
/* 78530 800BDD30 8C820000 */  lw         $v0, 0x0($a0)
/* 78534 800BDD34 00809025 */  or         $s2, $a0, $zero
/* 78538 800BDD38 000277C2 */  srl        $t6, $v0, 31
/* 7853C 800BDD3C 11C002BE */  beqz       $t6, .L800BE838
/* 78540 800BDD40 0002C080 */   sll       $t8, $v0, 2
/* 78544 800BDD44 0701000D */  bgez       $t8, .L800BDD7C
/* 78548 800BDD48 00008025 */   or        $s0, $zero, $zero
/* 7854C 800BDD4C 00808825 */  or         $s1, $a0, $zero
/* 78550 800BDD50 24120010 */  addiu      $s2, $zero, 0x10
.L800BDD54:
/* 78554 800BDD54 8E240048 */  lw         $a0, 0x48($s1)
/* 78558 800BDD58 50800004 */  beql       $a0, $zero, .L800BDD6C
/* 7855C 800BDD5C 26100004 */   addiu     $s0, $s0, 0x4
/* 78560 800BDD60 0C02F44E */  jal        func_800BD138
/* 78564 800BDD64 00000000 */   nop
/* 78568 800BDD68 26100004 */  addiu      $s0, $s0, 0x4
.L800BDD6C:
/* 7856C 800BDD6C 1612FFF9 */  bne        $s0, $s2, .L800BDD54
/* 78570 800BDD70 26310004 */   addiu     $s1, $s1, 0x4
/* 78574 800BDD74 100002B1 */  b          .L800BE83C
/* 78578 800BDD78 8FBF002C */   lw        $ra, 0x2C($sp)
.L800BDD7C:
/* 7857C 800BDD7C 8E540044 */  lw         $s4, 0x44($s2)
/* 78580 800BDD80 8E990000 */  lw         $t9, 0x0($s4)
/* 78584 800BDD84 00195080 */  sll        $t2, $t9, 2
/* 78588 800BDD88 05430006 */  bgezl      $t2, .L800BDDA4
/* 7858C 800BDD8C 9643001A */   lhu       $v1, 0x1A($s2)
/* 78590 800BDD90 924B0003 */  lbu        $t3, 0x3($s2)
/* 78594 800BDD94 316C0080 */  andi       $t4, $t3, 0x80
/* 78598 800BDD98 558002A8 */  bnel       $t4, $zero, .L800BE83C
/* 7859C 800BDD9C 8FBF002C */   lw        $ra, 0x2C($sp)
/* 785A0 800BDDA0 9643001A */  lhu        $v1, 0x1A($s2)
.L800BDDA4:
/* 785A4 800BDDA4 26510060 */  addiu      $s1, $s2, 0x60
/* 785A8 800BDDA8 10600004 */  beqz       $v1, .L800BDDBC
/* 785AC 800BDDAC 00601025 */   or        $v0, $v1, $zero
/* 785B0 800BDDB0 246DFFFF */  addiu      $t5, $v1, -0x1
/* 785B4 800BDDB4 A64D001A */  sh         $t5, 0x1A($s2)
/* 785B8 800BDDB8 31A2FFFF */  andi       $v0, $t5, 0xFFFF
.L800BDDBC:
/* 785BC 800BDDBC 14400293 */  bnez       $v0, L800BE80C
/* 785C0 800BDDC0 83B3004B */   lb        $s3, 0x4B($sp)
glabel L800BDDC4
/* 785C4 800BDDC4 0C02F42C */  jal        func_800BD0B0
/* 785C8 800BDDC8 02202025 */   or        $a0, $s1, $zero
/* 785CC 800BDDCC 284100C1 */  slti       $at, $v0, 0xC1
/* 785D0 800BDDD0 305000FF */  andi       $s0, $v0, 0xFF
/* 785D4 800BDDD4 14200203 */  bnez       $at, .L800BE5E4
/* 785D8 800BDDD8 00401825 */   or        $v1, $v0, $zero
/* 785DC 800BDDDC 244EFF3F */  addiu      $t6, $v0, -0xC1
/* 785E0 800BDDE0 2DC1003F */  sltiu      $at, $t6, 0x3F
/* 785E4 800BDDE4 1020FFF7 */  beqz       $at, L800BDDC4
/* 785E8 800BDDE8 000E7080 */   sll       $t6, $t6, 2
/* 785EC 800BDDEC 3C01800F */  lui        $at, %hi(jtbl_800EBD34_main)
/* 785F0 800BDDF0 002E0821 */  addu       $at, $at, $t6
/* 785F4 800BDDF4 8C2EBD34 */  lw         $t6, %lo(jtbl_800EBD34_main)($at)
/* 785F8 800BDDF8 01C00008 */  jr         $t6
/* 785FC 800BDDFC 00000000 */   nop
glabel L800BDE00
/* 78600 800BDE00 92240018 */  lbu        $a0, 0x18($s1)
/* 78604 800BDE04 14800005 */  bnez       $a0, .L800BDE1C
/* 78608 800BDE08 2482FFFF */   addiu     $v0, $a0, -0x1
/* 7860C 800BDE0C 0C02F2CD */  jal        func_800BCB34
/* 78610 800BDE10 02402025 */   or        $a0, $s2, $zero
/* 78614 800BDE14 1000027E */  b          .L800BE810
/* 78618 800BDE18 02408825 */   or        $s1, $s2, $zero
.L800BDE1C:
/* 7861C 800BDE1C 304F00FF */  andi       $t7, $v0, 0xFF
/* 78620 800BDE20 000FC080 */  sll        $t8, $t7, 2
/* 78624 800BDE24 0238C821 */  addu       $t9, $s1, $t8
/* 78628 800BDE28 A22F0018 */  sb         $t7, 0x18($s1)
/* 7862C 800BDE2C 8F290004 */  lw         $t1, 0x4($t9)
/* 78630 800BDE30 1000FFE4 */  b          L800BDDC4
/* 78634 800BDE34 AE290000 */   sw        $t1, 0x0($s1)
glabel L800BDE38
/* 78638 800BDE38 0C02F43D */  jal        func_800BD0F4
/* 7863C 800BDE3C 02202025 */   or        $a0, $s1, $zero
/* 78640 800BDE40 10000272 */  b          L800BE80C
/* 78644 800BDE44 A642001A */   sh        $v0, 0x1A($s2)
glabel L800BDE48
/* 78648 800BDE48 924B0000 */  lbu        $t3, 0x0($s2)
/* 7864C 800BDE4C 356C0020 */  ori        $t4, $t3, 0x20
/* 78650 800BDE50 1000026E */  b          L800BE80C
/* 78654 800BDE54 A24C0000 */   sb        $t4, 0x0($s2)
glabel L800BDE58
/* 78658 800BDE58 0C02F431 */  jal        func_800BD0C4
/* 7865C 800BDE5C 02202025 */   or        $a0, $s1, $zero
/* 78660 800BDE60 922E0018 */  lbu        $t6, 0x18($s1)
/* 78664 800BDE64 8E2D0000 */  lw         $t5, 0x0($s1)
/* 78668 800BDE68 304BFFFF */  andi       $t3, $v0, 0xFFFF
/* 7866C 800BDE6C 000E7880 */  sll        $t7, $t6, 2
/* 78670 800BDE70 022FC021 */  addu       $t8, $s1, $t7
/* 78674 800BDE74 AF0D0004 */  sw         $t5, 0x4($t8)
/* 78678 800BDE78 92390018 */  lbu        $t9, 0x18($s1)
/* 7867C 800BDE7C 27290001 */  addiu      $t1, $t9, 0x1
/* 78680 800BDE80 A2290018 */  sb         $t1, 0x18($s1)
/* 78684 800BDE84 8E8A0014 */  lw         $t2, 0x14($s4)
/* 78688 800BDE88 014B6021 */  addu       $t4, $t2, $t3
/* 7868C 800BDE8C 1000FFCD */  b          L800BDDC4
/* 78690 800BDE90 AE2C0000 */   sw        $t4, 0x0($s1)
glabel L800BDE94
/* 78694 800BDE94 0C02F42C */  jal        func_800BD0B0
/* 78698 800BDE98 02202025 */   or        $a0, $s1, $zero
/* 7869C 800BDE9C 922E0018 */  lbu        $t6, 0x18($s1)
/* 786A0 800BDEA0 022E7821 */  addu       $t7, $s1, $t6
/* 786A4 800BDEA4 A1E20014 */  sb         $v0, 0x14($t7)
/* 786A8 800BDEA8 92380018 */  lbu        $t8, 0x18($s1)
/* 786AC 800BDEAC 8E2D0000 */  lw         $t5, 0x0($s1)
/* 786B0 800BDEB0 0018C880 */  sll        $t9, $t8, 2
/* 786B4 800BDEB4 02394821 */  addu       $t1, $s1, $t9
/* 786B8 800BDEB8 AD2D0004 */  sw         $t5, 0x4($t1)
/* 786BC 800BDEBC 922A0018 */  lbu        $t2, 0x18($s1)
/* 786C0 800BDEC0 254B0001 */  addiu      $t3, $t2, 0x1
/* 786C4 800BDEC4 1000FFBF */  b          L800BDDC4
/* 786C8 800BDEC8 A22B0018 */   sb        $t3, 0x18($s1)
glabel L800BDECC
/* 786CC 800BDECC 922C0018 */  lbu        $t4, 0x18($s1)
/* 786D0 800BDED0 022C1021 */  addu       $v0, $s1, $t4
/* 786D4 800BDED4 904E0013 */  lbu        $t6, 0x13($v0)
/* 786D8 800BDED8 25CFFFFF */  addiu      $t7, $t6, -0x1
/* 786DC 800BDEDC A04F0013 */  sb         $t7, 0x13($v0)
/* 786E0 800BDEE0 92240018 */  lbu        $a0, 0x18($s1)
/* 786E4 800BDEE4 0224C021 */  addu       $t8, $s1, $a0
/* 786E8 800BDEE8 93190013 */  lbu        $t9, 0x13($t8)
/* 786EC 800BDEEC 00801825 */  or         $v1, $a0, $zero
/* 786F0 800BDEF0 00036880 */  sll        $t5, $v1, 2
/* 786F4 800BDEF4 13200005 */  beqz       $t9, .L800BDF0C
/* 786F8 800BDEF8 248BFFFF */   addiu     $t3, $a0, -0x1
/* 786FC 800BDEFC 022D4821 */  addu       $t1, $s1, $t5
/* 78700 800BDF00 8D2A0000 */  lw         $t2, 0x0($t1)
/* 78704 800BDF04 1000FFAF */  b          L800BDDC4
/* 78708 800BDF08 AE2A0000 */   sw        $t2, 0x0($s1)
.L800BDF0C:
/* 7870C 800BDF0C 1000FFAD */  b          L800BDDC4
/* 78710 800BDF10 A22B0018 */   sb        $t3, 0x18($s1)
glabel L800BDF14
/* 78714 800BDF14 922C0018 */  lbu        $t4, 0x18($s1)
/* 78718 800BDF18 258EFFFF */  addiu      $t6, $t4, -0x1
/* 7871C 800BDF1C 1000FFA9 */  b          L800BDDC4
/* 78720 800BDF20 A22E0018 */   sb        $t6, 0x18($s1)
glabel L800BDF24
/* 78724 800BDF24 0C02F431 */  jal        func_800BD0C4
/* 78728 800BDF28 02202025 */   or        $a0, $s1, $zero
/* 7872C 800BDF2C 240100FA */  addiu      $at, $zero, 0xFA
/* 78730 800BDF30 16010003 */  bne        $s0, $at, .L800BDF40
/* 78734 800BDF34 02001825 */   or        $v1, $s0, $zero
/* 78738 800BDF38 1660FFA2 */  bnez       $s3, L800BDDC4
/* 7873C 800BDF3C 00000000 */   nop
.L800BDF40:
/* 78740 800BDF40 240100F9 */  addiu      $at, $zero, 0xF9
/* 78744 800BDF44 54610004 */  bnel       $v1, $at, .L800BDF58
/* 78748 800BDF48 240100F5 */   addiu     $at, $zero, 0xF5
/* 7874C 800BDF4C 0661FF9D */  bgez       $s3, L800BDDC4
/* 78750 800BDF50 00000000 */   nop
/* 78754 800BDF54 240100F5 */  addiu      $at, $zero, 0xF5
.L800BDF58:
/* 78758 800BDF58 54610004 */  bnel       $v1, $at, .L800BDF6C
/* 7875C 800BDF5C 8E8F0014 */   lw        $t7, 0x14($s4)
/* 78760 800BDF60 0660FF98 */  bltz       $s3, L800BDDC4
/* 78764 800BDF64 00000000 */   nop
/* 78768 800BDF68 8E8F0014 */  lw         $t7, 0x14($s4)
.L800BDF6C:
/* 7876C 800BDF6C 3058FFFF */  andi       $t8, $v0, 0xFFFF
/* 78770 800BDF70 01F8C821 */  addu       $t9, $t7, $t8
/* 78774 800BDF74 1000FF93 */  b          L800BDDC4
/* 78778 800BDF78 AE390000 */   sw        $t9, 0x0($s1)
glabel L800BDF7C
/* 7877C 800BDF7C 0C02F42C */  jal        func_800BD0B0
/* 78780 800BDF80 02202025 */   or        $a0, $s1, $zero
/* 78784 800BDF84 240100F3 */  addiu      $at, $zero, 0xF3
/* 78788 800BDF88 16010003 */  bne        $s0, $at, .L800BDF98
/* 7878C 800BDF8C 02001825 */   or        $v1, $s0, $zero
/* 78790 800BDF90 1660FF8C */  bnez       $s3, L800BDDC4
/* 78794 800BDF94 00000000 */   nop
.L800BDF98:
/* 78798 800BDF98 240100F2 */  addiu      $at, $zero, 0xF2
/* 7879C 800BDF9C 54610004 */  bnel       $v1, $at, .L800BDFB0
/* 787A0 800BDFA0 8E2D0000 */   lw        $t5, 0x0($s1)
/* 787A4 800BDFA4 0661FF87 */  bgez       $s3, L800BDDC4
/* 787A8 800BDFA8 00000000 */   nop
/* 787AC 800BDFAC 8E2D0000 */  lw         $t5, 0x0($s1)
.L800BDFB0:
/* 787B0 800BDFB0 00024E00 */  sll        $t1, $v0, 24
/* 787B4 800BDFB4 00095603 */  sra        $t2, $t1, 24
/* 787B8 800BDFB8 01AA5821 */  addu       $t3, $t5, $t2
/* 787BC 800BDFBC 1000FF81 */  b          L800BDDC4
/* 787C0 800BDFC0 AE2B0000 */   sw        $t3, 0x0($s1)
glabel L800BDFC4
/* 787C4 800BDFC4 26500084 */  addiu      $s0, $s2, 0x84
/* 787C8 800BDFC8 0C02ED00 */  jal        func_800BB400
/* 787CC 800BDFCC 02002025 */   or        $a0, $s0, $zero
/* 787D0 800BDFD0 0C02F42C */  jal        func_800BD0B0
/* 787D4 800BDFD4 02202025 */   or        $a0, $s1, $zero
/* 787D8 800BDFD8 02002025 */  or         $a0, $s0, $zero
/* 787DC 800BDFDC 0C02ED58 */  jal        func_800BB560
/* 787E0 800BDFE0 00402825 */   or        $a1, $v0, $zero
/* 787E4 800BDFE4 1000FF77 */  b          L800BDDC4
/* 787E8 800BDFE8 00000000 */   nop
glabel L800BDFEC
/* 787EC 800BDFEC 0C02ED00 */  jal        func_800BB400
/* 787F0 800BDFF0 26440084 */   addiu     $a0, $s2, 0x84
/* 787F4 800BDFF4 1000FF73 */  b          L800BDDC4
/* 787F8 800BDFF8 00000000 */   nop
glabel L800BDFFC
/* 787FC 800BDFFC 0C02F431 */  jal        func_800BD0C4
/* 78800 800BE000 02202025 */   or        $a0, $s1, $zero
/* 78804 800BE004 8E8C0014 */  lw         $t4, 0x14($s4)
/* 78808 800BE008 304EFFFF */  andi       $t6, $v0, 0xFFFF
/* 7880C 800BE00C 018E7821 */  addu       $t7, $t4, $t6
/* 78810 800BE010 1000FF6C */  b          L800BDDC4
/* 78814 800BE014 AE4F0034 */   sw        $t7, 0x34($s2)
glabel L800BE018
/* 78818 800BE018 2401FFFF */  addiu      $at, $zero, -0x1
/* 7881C 800BE01C 1261FF69 */  beq        $s3, $at, L800BDDC4
/* 78820 800BE020 00000000 */   nop
/* 78824 800BE024 8E580034 */  lw         $t8, 0x34($s2)
/* 78828 800BE028 0013C840 */  sll        $t9, $s3, 1
/* 7882C 800BE02C 8E8C0014 */  lw         $t4, 0x14($s4)
/* 78830 800BE030 03191821 */  addu       $v1, $t8, $t9
/* 78834 800BE034 906D0000 */  lbu        $t5, 0x0($v1)
/* 78838 800BE038 90690001 */  lbu        $t1, 0x1($v1)
/* 7883C 800BE03C 000D5200 */  sll        $t2, $t5, 8
/* 78840 800BE040 012A3821 */  addu       $a3, $t1, $t2
/* 78844 800BE044 30EBFFFF */  andi       $t3, $a3, 0xFFFF
/* 78848 800BE048 018B7021 */  addu       $t6, $t4, $t3
/* 7884C 800BE04C 1000FF5D */  b          L800BDDC4
/* 78850 800BE050 AE4E0034 */   sw        $t6, 0x34($s2)
glabel L800BE054
/* 78854 800BE054 0C02F42C */  jal        func_800BD0B0
/* 78858 800BE058 02202025 */   or        $a0, $s1, $zero
/* 7885C 800BE05C 928F0004 */  lbu        $t7, 0x4($s4)
/* 78860 800BE060 3C038004 */  lui        $v1, %hi(D_80045510)
/* 78864 800BE064 8C635510 */  lw         $v1, %lo(D_80045510)($v1)
/* 78868 800BE068 000FC040 */  sll        $t8, $t7, 1
/* 7886C 800BE06C 3C048004 */  lui        $a0, %hi(D_8003E7A0)
/* 78870 800BE070 0078C821 */  addu       $t9, $v1, $t8
/* 78874 800BE074 97270000 */  lhu        $a3, 0x0($t9)
/* 78878 800BE078 2484E7A0 */  addiu      $a0, $a0, %lo(D_8003E7A0)
/* 7887C 800BE07C 24050002 */  addiu      $a1, $zero, 0x2
/* 78880 800BE080 00E36821 */  addu       $t5, $a3, $v1
/* 78884 800BE084 91A80000 */  lbu        $t0, 0x0($t5)
/* 78888 800BE088 00E84821 */  addu       $t1, $a3, $t0
/* 7888C 800BE08C 01225023 */  subu       $t2, $t1, $v0
/* 78890 800BE090 01435821 */  addu       $t3, $t2, $v1
/* 78894 800BE094 91700000 */  lbu        $s0, 0x0($t3)
/* 78898 800BE098 0C02E047 */  jal        func_800B811C
/* 7889C 800BE09C 02003025 */   or        $a2, $s0, $zero
/* 788A0 800BE0A0 10400002 */  beqz       $v0, L800BE0AC
/* 788A4 800BE0A4 00000000 */   nop
/* 788A8 800BE0A8 A2500006 */  sb         $s0, 0x6($s2)
glabel L800BE0AC
/* 788AC 800BE0AC 0C02F42C */  jal        func_800BD0B0
/* 788B0 800BE0B0 02202025 */   or        $a0, $s1, $zero
/* 788B4 800BE0B4 02402025 */  or         $a0, $s2, $zero
/* 788B8 800BE0B8 0C02F717 */  jal        func_800BDC5C
/* 788BC 800BE0BC 304500FF */   andi      $a1, $v0, 0xFF
/* 788C0 800BE0C0 1000FF40 */  b          L800BDDC4
/* 788C4 800BE0C4 00000000 */   nop
glabel L800BE0C8
/* 788C8 800BE0C8 924C0000 */  lbu        $t4, 0x0($s2)
/* 788CC 800BE0CC 318EFFFD */  andi       $t6, $t4, 0xFFFD
/* 788D0 800BE0D0 1000FF3C */  b          L800BDDC4
/* 788D4 800BE0D4 A24E0000 */   sb        $t6, 0x0($s2)
glabel L800BE0D8
/* 788D8 800BE0D8 92580000 */  lbu        $t8, 0x0($s2)
/* 788DC 800BE0DC 37190002 */  ori        $t9, $t8, 0x2
/* 788E0 800BE0E0 1000FF38 */  b          L800BDDC4
/* 788E4 800BE0E4 A2590000 */   sb        $t9, 0x0($s2)
glabel L800BE0E8
/* 788E8 800BE0E8 0C02F42C */  jal        func_800BD0B0
/* 788EC 800BE0EC 02202025 */   or        $a0, $s1, $zero
/* 788F0 800BE0F0 02402025 */  or         $a0, $s2, $zero
/* 788F4 800BE0F4 0C02F73C */  jal        func_800BDCF0
/* 788F8 800BE0F8 304500FF */   andi      $a1, $v0, 0xFF
/* 788FC 800BE0FC 92490001 */  lbu        $t1, 0x1($s2)
/* 78900 800BE100 352A0040 */  ori        $t2, $t1, 0x40
/* 78904 800BE104 1000FF2F */  b          L800BDDC4
/* 78908 800BE108 A24A0001 */   sb        $t2, 0x1($s2)
glabel L800BE10C
/* 7890C 800BE10C 0C02F42C */  jal        func_800BD0B0
/* 78910 800BE110 02202025 */   or        $a0, $s1, $zero
/* 78914 800BE114 44822000 */  mtc1       $v0, $f4
/* 78918 800BE118 3C013C00 */  lui        $at, (0x3C000000 >> 16)
/* 7891C 800BE11C 44814000 */  mtc1       $at, $f8
/* 78920 800BE120 468021A0 */  cvt.s.w    $f6, $f4
/* 78924 800BE124 924C0001 */  lbu        $t4, 0x1($s2)
/* 78928 800BE128 358E0040 */  ori        $t6, $t4, 0x40
/* 7892C 800BE12C A24E0001 */  sb         $t6, 0x1($s2)
/* 78930 800BE130 46083282 */  mul.s      $f10, $f6, $f8
/* 78934 800BE134 1000FF23 */  b          L800BDDC4
/* 78938 800BE138 E64A0020 */   swc1      $f10, 0x20($s2)
glabel L800BE13C
/* 7893C 800BE13C 0C02F431 */  jal        func_800BD0C4
/* 78940 800BE140 02202025 */   or        $a0, $s1, $zero
/* 78944 800BE144 304FFFFF */  andi       $t7, $v0, 0xFFFF
/* 78948 800BE148 448F8000 */  mtc1       $t7, $f16
/* 7894C 800BE14C 3C014700 */  lui        $at, (0x47000000 >> 16)
/* 78950 800BE150 44812000 */  mtc1       $at, $f4
/* 78954 800BE154 468084A0 */  cvt.s.w    $f18, $f16
/* 78958 800BE158 92590001 */  lbu        $t9, 0x1($s2)
/* 7895C 800BE15C 372D0080 */  ori        $t5, $t9, 0x80
/* 78960 800BE160 A24D0001 */  sb         $t5, 0x1($s2)
/* 78964 800BE164 46049183 */  div.s      $f6, $f18, $f4
/* 78968 800BE168 1000FF16 */  b          L800BDDC4
/* 7896C 800BE16C E6460030 */   swc1      $f6, 0x30($s2)
glabel L800BE170
/* 78970 800BE170 0C02F42C */  jal        func_800BD0B0
/* 78974 800BE174 02202025 */   or        $a0, $s1, $zero
/* 78978 800BE178 2449007F */  addiu      $t1, $v0, 0x7F
/* 7897C 800BE17C 312A00FF */  andi       $t2, $t1, 0xFF
/* 78980 800BE180 924E0001 */  lbu        $t6, 0x1($s2)
/* 78984 800BE184 000A5880 */  sll        $t3, $t2, 2
/* 78988 800BE188 3C01800F */  lui        $at, %hi(D_800EC9E4)
/* 7898C 800BE18C 002B0821 */  addu       $at, $at, $t3
/* 78990 800BE190 C428C9E4 */  lwc1       $f8, %lo(D_800EC9E4)($at)
/* 78994 800BE194 35CF0080 */  ori        $t7, $t6, 0x80
/* 78998 800BE198 A24F0001 */  sb         $t7, 0x1($s2)
/* 7899C 800BE19C 1000FF09 */  b          L800BDDC4
/* 789A0 800BE1A0 E6480030 */   swc1      $f8, 0x30($s2)
glabel L800BE1A4
/* 789A4 800BE1A4 0C02F42C */  jal        func_800BD0B0
/* 789A8 800BE1A8 02202025 */   or        $a0, $s1, $zero
/* 789AC 800BE1AC 92590001 */  lbu        $t9, 0x1($s2)
/* 789B0 800BE1B0 A2420009 */  sb         $v0, 0x9($s2)
/* 789B4 800BE1B4 372D0020 */  ori        $t5, $t9, 0x20
/* 789B8 800BE1B8 1000FF02 */  b          L800BDDC4
/* 789BC 800BE1BC A24D0001 */   sb        $t5, 0x1($s2)
glabel L800BE1C0
/* 789C0 800BE1C0 0C02F42C */  jal        func_800BD0B0
/* 789C4 800BE1C4 02202025 */   or        $a0, $s1, $zero
/* 789C8 800BE1C8 924A0001 */  lbu        $t2, 0x1($s2)
/* 789CC 800BE1CC A242000A */  sb         $v0, 0xA($s2)
/* 789D0 800BE1D0 354B0020 */  ori        $t3, $t2, 0x20
/* 789D4 800BE1D4 1000FEFB */  b          L800BDDC4
/* 789D8 800BE1D8 A24B0001 */   sb        $t3, 0x1($s2)
glabel L800BE1DC
/* 789DC 800BE1DC 8E220000 */  lw         $v0, 0x0($s1)
/* 789E0 800BE1E0 80430000 */  lb         $v1, 0x0($v0)
/* 789E4 800BE1E4 244C0001 */  addiu      $t4, $v0, 0x1
/* 789E8 800BE1E8 AE2C0000 */  sw         $t4, 0x0($s1)
/* 789EC 800BE1EC 1000FEF5 */  b          L800BDDC4
/* 789F0 800BE1F0 A643001E */   sh        $v1, 0x1E($s2)
glabel L800BE1F4
/* 789F4 800BE1F4 0C02F431 */  jal        func_800BD0C4
/* 789F8 800BE1F8 02202025 */   or        $a0, $s1, $zero
/* 789FC 800BE1FC 8E8E0014 */  lw         $t6, 0x14($s4)
/* 78A00 800BE200 304FFFFF */  andi       $t7, $v0, 0xFFFF
/* 78A04 800BE204 01CFC021 */  addu       $t8, $t6, $t7
/* 78A08 800BE208 1000FEEE */  b          L800BDDC4
/* 78A0C 800BE20C AE580080 */   sw        $t8, 0x80($s2)
glabel L800BE210
/* 78A10 800BE210 0C02F42C */  jal        func_800BD0B0
/* 78A14 800BE214 02202025 */   or        $a0, $s1, $zero
/* 78A18 800BE218 1000FEEA */  b          L800BDDC4
/* 78A1C 800BE21C A242007C */   sb        $v0, 0x7C($s2)
glabel L800BE220
/* 78A20 800BE220 0C02F42C */  jal        func_800BD0B0
/* 78A24 800BE224 02202025 */   or        $a0, $s1, $zero
/* 78A28 800BE228 0002C8C0 */  sll        $t9, $v0, 3
/* 78A2C 800BE22C A6590012 */  sh         $t9, 0x12($s2)
/* 78A30 800BE230 A640000E */  sh         $zero, 0xE($s2)
/* 78A34 800BE234 1000FEE3 */  b          L800BDDC4
/* 78A38 800BE238 A6400016 */   sh        $zero, 0x16($s2)
glabel L800BE23C
/* 78A3C 800BE23C 0C02F42C */  jal        func_800BD0B0
/* 78A40 800BE240 02202025 */   or        $a0, $s1, $zero
/* 78A44 800BE244 00021940 */  sll        $v1, $v0, 5
/* 78A48 800BE248 A6430010 */  sh         $v1, 0x10($s2)
/* 78A4C 800BE24C A643000C */  sh         $v1, 0xC($s2)
/* 78A50 800BE250 1000FEDC */  b          L800BDDC4
/* 78A54 800BE254 A6400014 */   sh        $zero, 0x14($s2)
glabel L800BE258
/* 78A58 800BE258 0C02F42C */  jal        func_800BD0B0
/* 78A5C 800BE25C 02202025 */   or        $a0, $s1, $zero
/* 78A60 800BE260 000268C0 */  sll        $t5, $v0, 3
/* 78A64 800BE264 A64D000E */  sh         $t5, 0xE($s2)
/* 78A68 800BE268 0C02F42C */  jal        func_800BD0B0
/* 78A6C 800BE26C 02202025 */   or        $a0, $s1, $zero
/* 78A70 800BE270 000248C0 */  sll        $t1, $v0, 3
/* 78A74 800BE274 A6490012 */  sh         $t1, 0x12($s2)
/* 78A78 800BE278 0C02F42C */  jal        func_800BD0B0
/* 78A7C 800BE27C 02202025 */   or        $a0, $s1, $zero
/* 78A80 800BE280 00025100 */  sll        $t2, $v0, 4
/* 78A84 800BE284 1000FECF */  b          L800BDDC4
/* 78A88 800BE288 A64A0016 */   sh        $t2, 0x16($s2)
glabel L800BE28C
/* 78A8C 800BE28C 0C02F42C */  jal        func_800BD0B0
/* 78A90 800BE290 02202025 */   or        $a0, $s1, $zero
/* 78A94 800BE294 00025940 */  sll        $t3, $v0, 5
/* 78A98 800BE298 A64B000C */  sh         $t3, 0xC($s2)
/* 78A9C 800BE29C 0C02F42C */  jal        func_800BD0B0
/* 78AA0 800BE2A0 02202025 */   or        $a0, $s1, $zero
/* 78AA4 800BE2A4 00026140 */  sll        $t4, $v0, 5
/* 78AA8 800BE2A8 A64C0010 */  sh         $t4, 0x10($s2)
/* 78AAC 800BE2AC 0C02F42C */  jal        func_800BD0B0
/* 78AB0 800BE2B0 02202025 */   or        $a0, $s1, $zero
/* 78AB4 800BE2B4 00027100 */  sll        $t6, $v0, 4
/* 78AB8 800BE2B8 1000FEC2 */  b          L800BDDC4
/* 78ABC 800BE2BC A64E0014 */   sh        $t6, 0x14($s2)
glabel L800BE2C0
/* 78AC0 800BE2C0 0C02F42C */  jal        func_800BD0B0
/* 78AC4 800BE2C4 02202025 */   or        $a0, $s1, $zero
/* 78AC8 800BE2C8 00027900 */  sll        $t7, $v0, 4
/* 78ACC 800BE2CC 1000FEBD */  b          L800BDDC4
/* 78AD0 800BE2D0 A64F0018 */   sh        $t7, 0x18($s2)
glabel L800BE2D4
/* 78AD4 800BE2D4 0C02F42C */  jal        func_800BD0B0
/* 78AD8 800BE2D8 02202025 */   or        $a0, $s1, $zero
/* 78ADC 800BE2DC 1000FEB9 */  b          L800BDDC4
/* 78AE0 800BE2E0 A2420004 */   sb        $v0, 0x4($s2)
glabel L800BE2E4
/* 78AE4 800BE2E4 0C02F42C */  jal        func_800BD0B0
/* 78AE8 800BE2E8 02202025 */   or        $a0, $s1, $zero
/* 78AEC 800BE2EC 92980004 */  lbu        $t8, 0x4($s4)
/* 78AF0 800BE2F0 3C038004 */  lui        $v1, %hi(D_80045510)
/* 78AF4 800BE2F4 8C635510 */  lw         $v1, %lo(D_80045510)($v1)
/* 78AF8 800BE2F8 0018C840 */  sll        $t9, $t8, 1
/* 78AFC 800BE2FC 3C048004 */  lui        $a0, %hi(D_8003E7A0)
/* 78B00 800BE300 00796821 */  addu       $t5, $v1, $t9
/* 78B04 800BE304 95A70000 */  lhu        $a3, 0x0($t5)
/* 78B08 800BE308 2484E7A0 */  addiu      $a0, $a0, %lo(D_8003E7A0)
/* 78B0C 800BE30C 24050002 */  addiu      $a1, $zero, 0x2
/* 78B10 800BE310 00E34821 */  addu       $t1, $a3, $v1
/* 78B14 800BE314 91280000 */  lbu        $t0, 0x0($t1)
/* 78B18 800BE318 00E85021 */  addu       $t2, $a3, $t0
/* 78B1C 800BE31C 01425823 */  subu       $t3, $t2, $v0
/* 78B20 800BE320 01636021 */  addu       $t4, $t3, $v1
/* 78B24 800BE324 91900000 */  lbu        $s0, 0x0($t4)
/* 78B28 800BE328 0C02E047 */  jal        func_800B811C
/* 78B2C 800BE32C 02003025 */   or        $a2, $s0, $zero
/* 78B30 800BE330 1040FEA4 */  beqz       $v0, L800BDDC4
/* 78B34 800BE334 00000000 */   nop
/* 78B38 800BE338 1000FEA2 */  b          L800BDDC4
/* 78B3C 800BE33C A2500006 */   sb        $s0, 0x6($s2)
glabel L800BE340
/* 78B40 800BE340 326E00FF */  andi       $t6, $s3, 0xFF
/* 78B44 800BE344 AFAE0034 */  sw         $t6, 0x34($sp)
/* 78B48 800BE348 0C02F42C */  jal        func_800BD0B0
/* 78B4C 800BE34C 02202025 */   or        $a0, $s1, $zero
/* 78B50 800BE350 305000FF */  andi       $s0, $v0, 0xFF
/* 78B54 800BE354 0C02F431 */  jal        func_800BD0C4
/* 78B58 800BE358 02202025 */   or        $a0, $s1, $zero
/* 78B5C 800BE35C 8E8F0014 */  lw         $t7, 0x14($s4)
/* 78B60 800BE360 8FB90034 */  lw         $t9, 0x34($sp)
/* 78B64 800BE364 3058FFFF */  andi       $t8, $v0, 0xFFFF
/* 78B68 800BE368 01F81821 */  addu       $v1, $t7, $t8
/* 78B6C 800BE36C 03306821 */  addu       $t5, $t9, $s0
/* 78B70 800BE370 1000FE94 */  b          L800BDDC4
/* 78B74 800BE374 A06D0000 */   sb        $t5, 0x0($v1)
glabel L800BE378
/* 78B78 800BE378 0C02F42C */  jal        func_800BD0B0
/* 78B7C 800BE37C 02202025 */   or        $a0, $s1, $zero
/* 78B80 800BE380 240100C8 */  addiu      $at, $zero, 0xC8
/* 78B84 800BE384 16010005 */  bne        $s0, $at, .L800BE39C
/* 78B88 800BE388 02001825 */   or        $v1, $s0, $zero
/* 78B8C 800BE38C 02629823 */  subu       $s3, $s3, $v0
/* 78B90 800BE390 00135E00 */  sll        $t3, $s3, 24
/* 78B94 800BE394 1000FE8B */  b          L800BDDC4
/* 78B98 800BE398 000B9E03 */   sra       $s3, $t3, 24
.L800BE39C:
/* 78B9C 800BE39C 240100CC */  addiu      $at, $zero, 0xCC
/* 78BA0 800BE3A0 14610005 */  bne        $v1, $at, .L800BE3B8
/* 78BA4 800BE3A4 02629824 */   and       $s3, $s3, $v0
/* 78BA8 800BE3A8 00029E00 */  sll        $s3, $v0, 24
/* 78BAC 800BE3AC 00137603 */  sra        $t6, $s3, 24
/* 78BB0 800BE3B0 1000FE84 */  b          L800BDDC4
/* 78BB4 800BE3B4 01C09825 */   or        $s3, $t6, $zero
.L800BE3B8:
/* 78BB8 800BE3B8 0013CE00 */  sll        $t9, $s3, 24
/* 78BBC 800BE3BC 1000FE81 */  b          L800BDDC4
/* 78BC0 800BE3C0 00199E03 */   sra       $s3, $t9, 24
glabel L800BE3C4
/* 78BC4 800BE3C4 0C02F42C */  jal        func_800BD0B0
/* 78BC8 800BE3C8 02202025 */   or        $a0, $s1, $zero
/* 78BCC 800BE3CC 1000FE7D */  b          L800BDDC4
/* 78BD0 800BE3D0 A2420003 */   sb        $v0, 0x3($s2)
glabel L800BE3D4
/* 78BD4 800BE3D4 0C02F431 */  jal        func_800BD0C4
/* 78BD8 800BE3D8 02202025 */   or        $a0, $s1, $zero
/* 78BDC 800BE3DC 8E890014 */  lw         $t1, 0x14($s4)
/* 78BE0 800BE3E0 304AFFFF */  andi       $t2, $v0, 0xFFFF
/* 78BE4 800BE3E4 01535821 */  addu       $t3, $t2, $s3
/* 78BE8 800BE3E8 012B6021 */  addu       $t4, $t1, $t3
/* 78BEC 800BE3EC 1000FE75 */  b          L800BDDC4
/* 78BF0 800BE3F0 81930000 */   lb        $s3, 0x0($t4)
glabel L800BE3F4
/* 78BF4 800BE3F4 0C02F42C */  jal        func_800BD0B0
/* 78BF8 800BE3F8 02202025 */   or        $a0, $s1, $zero
/* 78BFC 800BE3FC 92590000 */  lbu        $t9, 0x0($s2)
/* 78C00 800BE400 00027880 */  sll        $t7, $v0, 2
/* 78C04 800BE404 31F80004 */  andi       $t8, $t7, 0x4
/* 78C08 800BE408 332DFFFB */  andi       $t5, $t9, 0xFFFB
/* 78C0C 800BE40C 030D5025 */  or         $t2, $t8, $t5
/* 78C10 800BE410 1000FE6C */  b          L800BDDC4
/* 78C14 800BE414 A24A0000 */   sb        $t2, 0x0($s2)
glabel L800BE418
/* 78C18 800BE418 0C02F42C */  jal        func_800BD0B0
/* 78C1C 800BE41C 02202025 */   or        $a0, $s1, $zero
/* 78C20 800BE420 1000FE68 */  b          L800BDDC4
/* 78C24 800BE424 A2420002 */   sb        $v0, 0x2($s2)
glabel L800BE428
/* 78C28 800BE428 0C02F42C */  jal        func_800BD0B0
/* 78C2C 800BE42C 02202025 */   or        $a0, $s1, $zero
/* 78C30 800BE430 1000FE64 */  b          L800BDDC4
/* 78C34 800BE434 A242007D */   sb        $v0, 0x7D($s2)
glabel L800BE438
/* 78C38 800BE438 0C02F42C */  jal        func_800BD0B0
/* 78C3C 800BE43C 02202025 */   or        $a0, $s1, $zero
/* 78C40 800BE440 1000FE60 */  b          L800BDDC4
/* 78C44 800BE444 A2420007 */   sb        $v0, 0x7($s2)
glabel L800BE448
/* 78C48 800BE448 2401FFFF */  addiu      $at, $zero, -0x1
/* 78C4C 800BE44C 1261FE5D */  beq        $s3, $at, L800BDDC4
/* 78C50 800BE450 00000000 */   nop
/* 78C54 800BE454 92240018 */  lbu        $a0, 0x18($s1)
/* 78C58 800BE458 8E2B0000 */  lw         $t3, 0x0($s1)
/* 78C5C 800BE45C 8E490034 */  lw         $t1, 0x34($s2)
/* 78C60 800BE460 00046080 */  sll        $t4, $a0, 2
/* 78C64 800BE464 022C7021 */  addu       $t6, $s1, $t4
/* 78C68 800BE468 ADCB0004 */  sw         $t3, 0x4($t6)
/* 78C6C 800BE46C 922F0018 */  lbu        $t7, 0x18($s1)
/* 78C70 800BE470 00131040 */  sll        $v0, $s3, 1
/* 78C74 800BE474 01221821 */  addu       $v1, $t1, $v0
/* 78C78 800BE478 25F90001 */  addiu      $t9, $t7, 0x1
/* 78C7C 800BE47C A2390018 */  sb         $t9, 0x18($s1)
/* 78C80 800BE480 906D0000 */  lbu        $t5, 0x0($v1)
/* 78C84 800BE484 90780001 */  lbu        $t8, 0x1($v1)
/* 78C88 800BE488 8E8C0014 */  lw         $t4, 0x14($s4)
/* 78C8C 800BE48C 000D5200 */  sll        $t2, $t5, 8
/* 78C90 800BE490 030A3821 */  addu       $a3, $t8, $t2
/* 78C94 800BE494 30E9FFFF */  andi       $t1, $a3, 0xFFFF
/* 78C98 800BE498 01895821 */  addu       $t3, $t4, $t1
/* 78C9C 800BE49C 1000FE49 */  b          L800BDDC4
/* 78CA0 800BE4A0 AE2B0000 */   sw        $t3, 0x0($s1)
glabel L800BE4A4
/* 78CA4 800BE4A4 0C02F42C */  jal        func_800BD0B0
/* 78CA8 800BE4A8 02202025 */   or        $a0, $s1, $zero
/* 78CAC 800BE4AC 1000FE45 */  b          L800BDDC4
/* 78CB0 800BE4B0 A2420008 */   sb        $v0, 0x8($s2)
glabel L800BE4B4
/* 78CB4 800BE4B4 0C02F431 */  jal        func_800BD0C4
/* 78CB8 800BE4B8 02202025 */   or        $a0, $s1, $zero
/* 78CBC 800BE4BC 8E8E0014 */  lw         $t6, 0x14($s4)
/* 78CC0 800BE4C0 304FFFFF */  andi       $t7, $v0, 0xFFFF
/* 78CC4 800BE4C4 01CF1821 */  addu       $v1, $t6, $t7
/* 78CC8 800BE4C8 90790000 */  lbu        $t9, 0x0($v1)
/* 78CCC 800BE4CC 24630007 */  addiu      $v1, $v1, 0x7
/* 78CD0 800BE4D0 A2590003 */  sb         $t9, 0x3($s2)
/* 78CD4 800BE4D4 906DFFFA */  lbu        $t5, -0x6($v1)
/* 78CD8 800BE4D8 92590001 */  lbu        $t9, 0x1($s2)
/* 78CDC 800BE4DC A24D0002 */  sb         $t5, 0x2($s2)
/* 78CE0 800BE4E0 9078FFFB */  lbu        $t8, -0x5($v1)
/* 78CE4 800BE4E4 372D0020 */  ori        $t5, $t9, 0x20
/* 78CE8 800BE4E8 A2580005 */  sb         $t8, 0x5($s2)
/* 78CEC 800BE4EC 806AFFFC */  lb         $t2, -0x4($v1)
/* 78CF0 800BE4F0 A64A001E */  sh         $t2, 0x1E($s2)
/* 78CF4 800BE4F4 9069FFFD */  lbu        $t1, -0x3($v1)
/* 78CF8 800BE4F8 A2490009 */  sb         $t1, 0x9($s2)
/* 78CFC 800BE4FC 906CFFFE */  lbu        $t4, -0x2($v1)
/* 78D00 800BE500 A24C000A */  sb         $t4, 0xA($s2)
/* 78D04 800BE504 906BFFFF */  lbu        $t3, -0x1($v1)
/* 78D08 800BE508 A24B0004 */  sb         $t3, 0x4($s2)
/* 78D0C 800BE50C 906E0000 */  lbu        $t6, 0x0($v1)
/* 78D10 800BE510 A24D0001 */  sb         $t5, 0x1($s2)
/* 78D14 800BE514 1000FE2B */  b          L800BDDC4
/* 78D18 800BE518 A24E0007 */   sb        $t6, 0x7($s2)
glabel L800BE51C
/* 78D1C 800BE51C 0C02F42C */  jal        func_800BD0B0
/* 78D20 800BE520 02202025 */   or        $a0, $s1, $zero
/* 78D24 800BE524 A2420003 */  sb         $v0, 0x3($s2)
/* 78D28 800BE528 0C02F42C */  jal        func_800BD0B0
/* 78D2C 800BE52C 02202025 */   or        $a0, $s1, $zero
/* 78D30 800BE530 A2420002 */  sb         $v0, 0x2($s2)
/* 78D34 800BE534 0C02F42C */  jal        func_800BD0B0
/* 78D38 800BE538 02202025 */   or        $a0, $s1, $zero
/* 78D3C 800BE53C A2420005 */  sb         $v0, 0x5($s2)
/* 78D40 800BE540 0C02F42C */  jal        func_800BD0B0
/* 78D44 800BE544 02202025 */   or        $a0, $s1, $zero
/* 78D48 800BE548 0002C600 */  sll        $t8, $v0, 24
/* 78D4C 800BE54C 00185603 */  sra        $t2, $t8, 24
/* 78D50 800BE550 A64A001E */  sh         $t2, 0x1E($s2)
/* 78D54 800BE554 0C02F42C */  jal        func_800BD0B0
/* 78D58 800BE558 02202025 */   or        $a0, $s1, $zero
/* 78D5C 800BE55C A2420009 */  sb         $v0, 0x9($s2)
/* 78D60 800BE560 0C02F42C */  jal        func_800BD0B0
/* 78D64 800BE564 02202025 */   or        $a0, $s1, $zero
/* 78D68 800BE568 A242000A */  sb         $v0, 0xA($s2)
/* 78D6C 800BE56C 0C02F42C */  jal        func_800BD0B0
/* 78D70 800BE570 02202025 */   or        $a0, $s1, $zero
/* 78D74 800BE574 A2420004 */  sb         $v0, 0x4($s2)
/* 78D78 800BE578 0C02F42C */  jal        func_800BD0B0
/* 78D7C 800BE57C 02202025 */   or        $a0, $s1, $zero
/* 78D80 800BE580 924C0001 */  lbu        $t4, 0x1($s2)
/* 78D84 800BE584 A2420007 */  sb         $v0, 0x7($s2)
/* 78D88 800BE588 358B0020 */  ori        $t3, $t4, 0x20
/* 78D8C 800BE58C 1000FE0D */  b          L800BDDC4
/* 78D90 800BE590 A24B0001 */   sb        $t3, 0x1($s2)
glabel L800BE594
/* 78D94 800BE594 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 78D98 800BE598 44815000 */  mtc1       $at, $f10
/* 78D9C 800BE59C A6400012 */  sh         $zero, 0x12($s2)
/* 78DA0 800BE5A0 A640000E */  sh         $zero, 0xE($s2)
/* 78DA4 800BE5A4 A6400016 */  sh         $zero, 0x16($s2)
/* 78DA8 800BE5A8 A6400010 */  sh         $zero, 0x10($s2)
/* 78DAC 800BE5AC A640000C */  sh         $zero, 0xC($s2)
/* 78DB0 800BE5B0 A6400014 */  sh         $zero, 0x14($s2)
/* 78DB4 800BE5B4 1000FE03 */  b          L800BDDC4
/* 78DB8 800BE5B8 E64A0030 */   swc1      $f10, 0x30($s2)
glabel L800BE5BC
/* 78DBC 800BE5BC 0C02F42C */  jal        func_800BD0B0
/* 78DC0 800BE5C0 02202025 */   or        $a0, $s1, $zero
/* 78DC4 800BE5C4 1000FDFF */  b          L800BDDC4
/* 78DC8 800BE5C8 A2420005 */   sb        $v0, 0x5($s2)
glabel L800BE5CC
/* 78DCC 800BE5CC 0C02F431 */  jal        func_800BD0C4
/* 78DD0 800BE5D0 02202025 */   or        $a0, $s1, $zero
/* 78DD4 800BE5D4 0C02F42C */  jal        func_800BD0B0
/* 78DD8 800BE5D8 02202025 */   or        $a0, $s1, $zero
/* 78DDC 800BE5DC 1000FDF9 */  b          L800BDDC4
/* 78DE0 800BE5E0 00000000 */   nop
.L800BE5E4:
/* 78DE4 800BE5E4 306E00F0 */  andi       $t6, $v1, 0xF0
/* 78DE8 800BE5E8 3064000F */  andi       $a0, $v1, 0xF
/* 78DEC 800BE5EC 2DC100B1 */  sltiu      $at, $t6, 0xB1
/* 78DF0 800BE5F0 1020FDF4 */  beqz       $at, L800BDDC4
/* 78DF4 800BE5F4 308800FF */   andi      $t0, $a0, 0xFF
/* 78DF8 800BE5F8 000E7080 */  sll        $t6, $t6, 2
/* 78DFC 800BE5FC 3C01800F */  lui        $at, %hi(jtbl_800EBE30_main)
/* 78E00 800BE600 002E0821 */  addu       $at, $at, $t6
/* 78E04 800BE604 8C2EBE30 */  lw         $t6, %lo(jtbl_800EBE30_main)($at)
/* 78E08 800BE608 01C00008 */  jr         $t6
/* 78E0C 800BE60C 00000000 */   nop
glabel L800BE610
/* 78E10 800BE610 308F00FF */  andi       $t7, $a0, 0xFF
/* 78E14 800BE614 000FC880 */  sll        $t9, $t7, 2
/* 78E18 800BE618 02596821 */  addu       $t5, $s2, $t9
/* 78E1C 800BE61C 8DA30048 */  lw         $v1, 0x48($t5)
/* 78E20 800BE620 10600007 */  beqz       $v1, .L800BE640
/* 78E24 800BE624 00000000 */   nop
/* 78E28 800BE628 8C730000 */  lw         $s3, 0x0($v1)
/* 78E2C 800BE62C 0013C040 */  sll        $t8, $s3, 1
/* 78E30 800BE630 001857C2 */  srl        $t2, $t8, 31
/* 78E34 800BE634 000A4E00 */  sll        $t1, $t2, 24
/* 78E38 800BE638 1000FDE2 */  b          L800BDDC4
/* 78E3C 800BE63C 00099E03 */   sra       $s3, $t1, 24
.L800BE640:
/* 78E40 800BE640 1000FDE0 */  b          L800BDDC4
/* 78E44 800BE644 2413FFFF */   addiu     $s3, $zero, -0x1
glabel L800BE648
/* 78E48 800BE648 308B00FF */  andi       $t3, $a0, 0xFF
/* 78E4C 800BE64C 024B7021 */  addu       $t6, $s2, $t3
/* 78E50 800BE650 1000FDDC */  b          L800BDDC4
/* 78E54 800BE654 A1D30058 */   sb        $s3, 0x58($t6)
glabel L800BE658
/* 78E58 800BE658 308300FF */  andi       $v1, $a0, 0xFF
/* 78E5C 800BE65C 02432821 */  addu       $a1, $s2, $v1
/* 78E60 800BE660 28610004 */  slti       $at, $v1, 0x4
/* 78E64 800BE664 1020FDD7 */  beqz       $at, L800BDDC4
/* 78E68 800BE668 80B30058 */   lb        $s3, 0x58($a1)
/* 78E6C 800BE66C 240FFFFF */  addiu      $t7, $zero, -0x1
/* 78E70 800BE670 1000FDD4 */  b          L800BDDC4
/* 78E74 800BE674 A0AF0058 */   sb        $t7, 0x58($a1)
glabel L800BE678
/* 78E78 800BE678 309900FF */  andi       $t9, $a0, 0xFF
/* 78E7C 800BE67C 02596821 */  addu       $t5, $s2, $t9
/* 78E80 800BE680 81B80058 */  lb         $t8, 0x58($t5)
/* 78E84 800BE684 02789823 */  subu       $s3, $s3, $t8
/* 78E88 800BE688 00135600 */  sll        $t2, $s3, 24
/* 78E8C 800BE68C 1000FDCD */  b          L800BDDC4
/* 78E90 800BE690 000A9E03 */   sra       $s3, $t2, 24
glabel L800BE694
/* 78E94 800BE694 308C00FF */  andi       $t4, $a0, 0xFF
/* 78E98 800BE698 1000005C */  b          L800BE80C
/* 78E9C 800BE69C A64C001A */   sh        $t4, 0x1A($s2)
glabel L800BE6A0
/* 78EA0 800BE6A0 0C02F431 */  jal        func_800BD0C4
/* 78EA4 800BE6A4 02202025 */   or        $a0, $s1, $zero
/* 78EA8 800BE6A8 02003025 */  or         $a2, $s0, $zero
/* 78EAC 800BE6AC 30C5000F */  andi       $a1, $a2, 0xF
/* 78EB0 800BE6B0 00A03025 */  or         $a2, $a1, $zero
/* 78EB4 800BE6B4 AFA50034 */  sw         $a1, 0x34($sp)
/* 78EB8 800BE6B8 02402025 */  or         $a0, $s2, $zero
/* 78EBC 800BE6BC 0C02F268 */  jal        func_800BC9A0
/* 78EC0 800BE6C0 A7A20052 */   sh        $v0, 0x52($sp)
/* 78EC4 800BE6C4 8FA60034 */  lw         $a2, 0x34($sp)
/* 78EC8 800BE6C8 1440FDBE */  bnez       $v0, L800BDDC4
/* 78ECC 800BE6CC 97A70052 */   lhu       $a3, 0x52($sp)
/* 78ED0 800BE6D0 8E8E0014 */  lw         $t6, 0x14($s4)
/* 78ED4 800BE6D4 0006C880 */  sll        $t9, $a2, 2
/* 78ED8 800BE6D8 02596821 */  addu       $t5, $s2, $t9
/* 78EDC 800BE6DC 8DB80048 */  lw         $t8, 0x48($t5)
/* 78EE0 800BE6E0 01C77821 */  addu       $t7, $t6, $a3
/* 78EE4 800BE6E4 1000FDB7 */  b          L800BDDC4
/* 78EE8 800BE6E8 AF0F0050 */   sw        $t7, 0x50($t8)
glabel L800BE6EC
/* 78EEC 800BE6EC 02002825 */  or         $a1, $s0, $zero
/* 78EF0 800BE6F0 30AA000F */  andi       $t2, $a1, 0xF
/* 78EF4 800BE6F4 01402825 */  or         $a1, $t2, $zero
/* 78EF8 800BE6F8 0C02F2B9 */  jal        func_800BCAE4
/* 78EFC 800BE6FC 02402025 */   or        $a0, $s2, $zero
/* 78F00 800BE700 1000FDB0 */  b          L800BDDC4
/* 78F04 800BE704 00000000 */   nop
glabel L800BE708
/* 78F08 800BE708 2401FFFF */  addiu      $at, $zero, -0x1
/* 78F0C 800BE70C 1261FDAD */  beq        $s3, $at, L800BDDC4
/* 78F10 800BE710 02402025 */   or        $a0, $s2, $zero
/* 78F14 800BE714 02003025 */  or         $a2, $s0, $zero
/* 78F18 800BE718 30C5000F */  andi       $a1, $a2, 0xF
/* 78F1C 800BE71C 00A03025 */  or         $a2, $a1, $zero
/* 78F20 800BE720 0C02F268 */  jal        func_800BC9A0
/* 78F24 800BE724 AFA50034 */   sw        $a1, 0x34($sp)
/* 78F28 800BE728 2401FFFF */  addiu      $at, $zero, -0x1
/* 78F2C 800BE72C 1041FDA5 */  beq        $v0, $at, L800BDDC4
/* 78F30 800BE730 8FA60034 */   lw        $a2, 0x34($sp)
/* 78F34 800BE734 8E4C0034 */  lw         $t4, 0x34($s2)
/* 78F38 800BE738 00135840 */  sll        $t3, $s3, 1
/* 78F3C 800BE73C 8E980014 */  lw         $t8, 0x14($s4)
/* 78F40 800BE740 018B1821 */  addu       $v1, $t4, $t3
/* 78F44 800BE744 90790000 */  lbu        $t9, 0x0($v1)
/* 78F48 800BE748 906E0001 */  lbu        $t6, 0x1($v1)
/* 78F4C 800BE74C 00064880 */  sll        $t1, $a2, 2
/* 78F50 800BE750 00196A00 */  sll        $t5, $t9, 8
/* 78F54 800BE754 02496021 */  addu       $t4, $s2, $t1
/* 78F58 800BE758 01CD3821 */  addu       $a3, $t6, $t5
/* 78F5C 800BE75C 8D8B0048 */  lw         $t3, 0x48($t4)
/* 78F60 800BE760 30EFFFFF */  andi       $t7, $a3, 0xFFFF
/* 78F64 800BE764 030F5021 */  addu       $t2, $t8, $t7
/* 78F68 800BE768 1000FD96 */  b          L800BDDC4
/* 78F6C 800BE76C AD6A0050 */   sw        $t2, 0x50($t3)
glabel L800BE770
/* 78F70 800BE770 0C02F431 */  jal        func_800BD0C4
/* 78F74 800BE774 02202025 */   or        $a0, $s1, $zero
/* 78F78 800BE778 8E8E0014 */  lw         $t6, 0x14($s4)
/* 78F7C 800BE77C 02002825 */  or         $a1, $s0, $zero
/* 78F80 800BE780 30B9000F */  andi       $t9, $a1, 0xF
/* 78F84 800BE784 304DFFFF */  andi       $t5, $v0, 0xFFFF
/* 78F88 800BE788 03202825 */  or         $a1, $t9, $zero
/* 78F8C 800BE78C 02802025 */  or         $a0, $s4, $zero
/* 78F90 800BE790 0C02F386 */  jal        func_800BCE18
/* 78F94 800BE794 01CD3021 */   addu      $a2, $t6, $t5
/* 78F98 800BE798 1000FD8A */  b          L800BDDC4
/* 78F9C 800BE79C 00000000 */   nop
glabel L800BE7A0
/* 78FA0 800BE7A0 3218000F */  andi       $t8, $s0, 0xF
/* 78FA4 800BE7A4 00184880 */  sll        $t1, $t8, 2
/* 78FA8 800BE7A8 02896021 */  addu       $t4, $s4, $t1
/* 78FAC 800BE7AC 0C02F2CD */  jal        func_800BCB34
/* 78FB0 800BE7B0 8D840030 */   lw        $a0, 0x30($t4)
/* 78FB4 800BE7B4 1000FD83 */  b          L800BDDC4
/* 78FB8 800BE7B8 00000000 */   nop
glabel L800BE7BC
/* 78FBC 800BE7BC 02202025 */  or         $a0, $s1, $zero
/* 78FC0 800BE7C0 0C02F42C */  jal        func_800BD0B0
/* 78FC4 800BE7C4 A3A80055 */   sb        $t0, 0x55($sp)
/* 78FC8 800BE7C8 93A80055 */  lbu        $t0, 0x55($sp)
/* 78FCC 800BE7CC 00085080 */  sll        $t2, $t0, 2
/* 78FD0 800BE7D0 028A5821 */  addu       $t3, $s4, $t2
/* 78FD4 800BE7D4 8D790030 */  lw         $t9, 0x30($t3)
/* 78FD8 800BE7D8 03227021 */  addu       $t6, $t9, $v0
/* 78FDC 800BE7DC 1000FD79 */  b          L800BDDC4
/* 78FE0 800BE7E0 A1D30058 */   sb        $s3, 0x58($t6)
glabel L800BE7E4
/* 78FE4 800BE7E4 02202025 */  or         $a0, $s1, $zero
/* 78FE8 800BE7E8 0C02F42C */  jal        func_800BD0B0
/* 78FEC 800BE7EC A3A80055 */   sb        $t0, 0x55($sp)
/* 78FF0 800BE7F0 93A80055 */  lbu        $t0, 0x55($sp)
/* 78FF4 800BE7F4 00086880 */  sll        $t5, $t0, 2
/* 78FF8 800BE7F8 028D7821 */  addu       $t7, $s4, $t5
/* 78FFC 800BE7FC 8DF80030 */  lw         $t8, 0x30($t7)
/* 79000 800BE800 03024821 */  addu       $t1, $t8, $v0
/* 79004 800BE804 1000FD6F */  b          L800BDDC4
/* 79008 800BE808 81330058 */   lb        $s3, 0x58($t1)
glabel L800BE80C
/* 7900C 800BE80C 02408825 */  or         $s1, $s2, $zero
.L800BE810:
/* 79010 800BE810 24120010 */  addiu      $s2, $zero, 0x10
/* 79014 800BE814 00008025 */  or         $s0, $zero, $zero
.L800BE818:
/* 79018 800BE818 8E240048 */  lw         $a0, 0x48($s1)
/* 7901C 800BE81C 50800004 */  beql       $a0, $zero, .L800BE830
/* 79020 800BE820 26100004 */   addiu     $s0, $s0, 0x4
/* 79024 800BE824 0C02F44E */  jal        func_800BD138
/* 79028 800BE828 00000000 */   nop
/* 7902C 800BE82C 26100004 */  addiu      $s0, $s0, 0x4
.L800BE830:
/* 79030 800BE830 1612FFF9 */  bne        $s0, $s2, .L800BE818
/* 79034 800BE834 26310004 */   addiu     $s1, $s1, 0x4
.L800BE838:
/* 79038 800BE838 8FBF002C */  lw         $ra, 0x2C($sp)
.L800BE83C:
/* 7903C 800BE83C 8FB00018 */  lw         $s0, 0x18($sp)
/* 79040 800BE840 8FB1001C */  lw         $s1, 0x1C($sp)
/* 79044 800BE844 8FB20020 */  lw         $s2, 0x20($sp)
/* 79048 800BE848 8FB30024 */  lw         $s3, 0x24($sp)
/* 7904C 800BE84C 8FB40028 */  lw         $s4, 0x28($sp)
/* 79050 800BE850 03E00008 */  jr         $ra
/* 79054 800BE854 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_800BE858
/* 79058 800BE858 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 7905C 800BE85C AFBF002C */  sw         $ra, 0x2C($sp)
/* 79060 800BE860 AFB30028 */  sw         $s3, 0x28($sp)
/* 79064 800BE864 AFB20024 */  sw         $s2, 0x24($sp)
/* 79068 800BE868 AFB10020 */  sw         $s1, 0x20($sp)
/* 7906C 800BE86C AFB0001C */  sw         $s0, 0x1C($sp)
/* 79070 800BE870 8C820000 */  lw         $v0, 0x0($a0)
/* 79074 800BE874 00808825 */  or         $s1, $a0, $zero
/* 79078 800BE878 24010001 */  addiu      $at, $zero, 0x1
/* 7907C 800BE87C 000277C2 */  srl        $t6, $v0, 31
/* 79080 800BE880 11C00209 */  beqz       $t6, .L800BF0A8
/* 79084 800BE884 00027900 */   sll       $t7, $v0, 4
/* 79088 800BE888 000FC7C2 */  srl        $t8, $t7, 31
/* 7908C 800BE88C 17010030 */  bne        $t8, $at, .L800BE950
/* 79090 800BE890 000240C0 */   sll       $t0, $v0, 3
/* 79094 800BE894 24900104 */  addiu      $s0, $a0, 0x104
/* 79098 800BE898 02002025 */  or         $a0, $s0, $zero
/* 7909C 800BE89C 00002825 */  or         $a1, $zero, $zero
/* 790A0 800BE8A0 0C031718 */  jal        func_800C5C60
/* 790A4 800BE8A4 00003025 */   or        $a2, $zero, $zero
/* 790A8 800BE8A8 2401FFFF */  addiu      $at, $zero, -0x1
/* 790AC 800BE8AC 504101FF */  beql       $v0, $at, .L800BF0AC
/* 790B0 800BE8B0 8FBF002C */   lw        $ra, 0x2C($sp)
/* 790B4 800BE8B4 8E39013C */  lw         $t9, 0x13C($s1)
/* 790B8 800BE8B8 3C0A8004 */  lui        $t2, %hi(D_80045518)
/* 790BC 800BE8BC 5720001C */  bnel       $t9, $zero, .L800BE930
/* 790C0 800BE8C0 26390120 */   addiu     $t9, $s1, 0x120
/* 790C4 800BE8C4 92280000 */  lbu        $t0, 0x0($s1)
/* 790C8 800BE8C8 92230006 */  lbu        $v1, 0x6($s1)
/* 790CC 800BE8CC 3C0C8004 */  lui        $t4, %hi(D_8004550C)
/* 790D0 800BE8D0 3109FFF7 */  andi       $t1, $t0, 0xFFF7
/* 790D4 800BE8D4 A2290000 */  sb         $t1, 0x0($s1)
/* 790D8 800BE8D8 8D4A5518 */  lw         $t2, %lo(D_80045518)($t2)
/* 790DC 800BE8DC 00035880 */  sll        $t3, $v1, 2
/* 790E0 800BE8E0 01635823 */  subu       $t3, $t3, $v1
/* 790E4 800BE8E4 8D8C550C */  lw         $t4, %lo(D_8004550C)($t4)
/* 790E8 800BE8E8 000B5880 */  sll        $t3, $t3, 2
/* 790EC 800BE8EC 014B1021 */  addu       $v0, $t2, $t3
/* 790F0 800BE8F0 8C440004 */  lw         $a0, 0x4($v0)
/* 790F4 800BE8F4 000368C0 */  sll        $t5, $v1, 3
/* 790F8 800BE8F8 018D7021 */  addu       $t6, $t4, $t5
/* 790FC 800BE8FC 8DC50004 */  lw         $a1, 0x4($t6)
/* 79100 800BE900 90460001 */  lbu        $a2, 0x1($v0)
/* 79104 800BE904 90470002 */  lbu        $a3, 0x2($v0)
/* 79108 800BE908 0C02E586 */  jal        func_800B9618
/* 7910C 800BE90C 2484FFFC */   addiu     $a0, $a0, -0x4
/* 79110 800BE910 922F0006 */  lbu        $t7, 0x6($s1)
/* 79114 800BE914 3C038004 */  lui        $v1, %hi(D_8003EB78)
/* 79118 800BE918 2463EB78 */  addiu      $v1, $v1, %lo(D_8003EB78)
/* 7911C 800BE91C 24040002 */  addiu      $a0, $zero, 0x2
/* 79120 800BE920 006FC021 */  addu       $t8, $v1, $t7
/* 79124 800BE924 100001E0 */  b          .L800BF0A8
/* 79128 800BE928 A3040000 */   sb        $a0, 0x0($t8)
/* 7912C 800BE92C 26390120 */  addiu      $t9, $s1, 0x120
.L800BE930:
/* 79130 800BE930 AFB90010 */  sw         $t9, 0x10($sp)
/* 79134 800BE934 26240138 */  addiu      $a0, $s1, 0x138
/* 79138 800BE938 26250134 */  addiu      $a1, $s1, 0x134
/* 7913C 800BE93C 2626013C */  addiu      $a2, $s1, 0x13C
/* 79140 800BE940 0C02E362 */  jal        func_800B8D88
/* 79144 800BE944 02003825 */   or        $a3, $s0, $zero
/* 79148 800BE948 100001D8 */  b          .L800BF0AC
/* 7914C 800BE94C 8FBF002C */   lw        $ra, 0x2C($sp)
.L800BE950:
/* 79150 800BE950 00084FC2 */  srl        $t1, $t0, 31
/* 79154 800BE954 24010001 */  addiu      $at, $zero, 0x1
/* 79158 800BE958 1521000E */  bne        $t1, $at, .L800BE994
/* 7915C 800BE95C 262400D4 */   addiu     $a0, $s1, 0xD4
/* 79160 800BE960 00002825 */  or         $a1, $zero, $zero
/* 79164 800BE964 0C031718 */  jal        func_800C5C60
/* 79168 800BE968 00003025 */   or        $a2, $zero, $zero
/* 7916C 800BE96C 2401FFFF */  addiu      $at, $zero, -0x1
/* 79170 800BE970 104101CD */  beq        $v0, $at, .L800BF0A8
/* 79174 800BE974 24040002 */   addiu     $a0, $zero, 0x2
/* 79178 800BE978 922A0000 */  lbu        $t2, 0x0($s1)
/* 7917C 800BE97C 922C0004 */  lbu        $t4, 0x4($s1)
/* 79180 800BE980 3C018004 */  lui        $at, %hi(D_8003EBB8)
/* 79184 800BE984 314BFFEF */  andi       $t3, $t2, 0xFFEF
/* 79188 800BE988 A22B0000 */  sb         $t3, 0x0($s1)
/* 7918C 800BE98C 002C0821 */  addu       $at, $at, $t4
/* 79190 800BE990 A024EBB8 */  sb         $a0, %lo(D_8003EBB8)($at)
.L800BE994:
/* 79194 800BE994 922D0004 */  lbu        $t5, 0x4($s1)
/* 79198 800BE998 3C0E8004 */  lui        $t6, %hi(D_8003EBB8)
/* 7919C 800BE99C 25CEEBB8 */  addiu      $t6, $t6, %lo(D_8003EBB8)
/* 791A0 800BE9A0 01AE1021 */  addu       $v0, $t5, $t6
/* 791A4 800BE9A4 904F0000 */  lbu        $t7, 0x0($v0)
/* 791A8 800BE9A8 24040002 */  addiu      $a0, $zero, 0x2
/* 791AC 800BE9AC 29F80002 */  slti       $t8, $t7, 0x2
/* 791B0 800BE9B0 17000009 */  bnez       $t8, .L800BE9D8
/* 791B4 800BE9B4 00000000 */   nop
/* 791B8 800BE9B8 92390005 */  lbu        $t9, 0x5($s1)
/* 791BC 800BE9BC 3C038004 */  lui        $v1, %hi(D_8003EB78)
/* 791C0 800BE9C0 2463EB78 */  addiu      $v1, $v1, %lo(D_8003EB78)
/* 791C4 800BE9C4 00794021 */  addu       $t0, $v1, $t9
/* 791C8 800BE9C8 91090000 */  lbu        $t1, 0x0($t0)
/* 791CC 800BE9CC 292A0002 */  slti       $t2, $t1, 0x2
/* 791D0 800BE9D0 51400006 */  beql       $t2, $zero, .L800BE9EC
/* 791D4 800BE9D4 A0440000 */   sb        $a0, 0x0($v0)
.L800BE9D8:
/* 791D8 800BE9D8 0C02F3B8 */  jal        func_800BCEE0
/* 791DC 800BE9DC 02202025 */   or        $a0, $s1, $zero
/* 791E0 800BE9E0 100001B2 */  b          .L800BF0AC
/* 791E4 800BE9E4 8FBF002C */   lw        $ra, 0x2C($sp)
/* 791E8 800BE9E8 A0440000 */  sb         $a0, 0x0($v0)
.L800BE9EC:
/* 791EC 800BE9EC 922B0005 */  lbu        $t3, 0x5($s1)
/* 791F0 800BE9F0 006B6021 */  addu       $t4, $v1, $t3
/* 791F4 800BE9F4 A1840000 */  sb         $a0, 0x0($t4)
/* 791F8 800BE9F8 8E2D0000 */  lw         $t5, 0x0($s1)
/* 791FC 800BE9FC 000D7880 */  sll        $t7, $t5, 2
/* 79200 800BEA00 05E30006 */  bgezl      $t7, .L800BEA1C
/* 79204 800BEA04 9628000A */   lhu       $t0, 0xA($s1)
/* 79208 800BEA08 92380003 */  lbu        $t8, 0x3($s1)
/* 7920C 800BEA0C 33190080 */  andi       $t9, $t8, 0x80
/* 79210 800BEA10 572001A6 */  bnel       $t9, $zero, .L800BF0AC
/* 79214 800BEA14 8FBF002C */   lw        $ra, 0x2C($sp)
/* 79218 800BEA18 9628000A */  lhu        $t0, 0xA($s1)
.L800BEA1C:
/* 7921C 800BEA1C 96290008 */  lhu        $t1, 0x8($s1)
/* 79220 800BEA20 3C038004 */  lui        $v1, %hi(D_8004554C)
/* 79224 800BEA24 01095021 */  addu       $t2, $t0, $t1
/* 79228 800BEA28 A62A000A */  sh         $t2, 0xA($s1)
/* 7922C 800BEA2C 8463554C */  lh         $v1, %lo(D_8004554C)($v1)
/* 79230 800BEA30 3142FFFF */  andi       $v0, $t2, 0xFFFF
/* 79234 800BEA34 0043082A */  slt        $at, $v0, $v1
/* 79238 800BEA38 5420019C */  bnel       $at, $zero, .L800BF0AC
/* 7923C 800BEA3C 8FBF002C */   lw        $ra, 0x2C($sp)
/* 79240 800BEA40 9624000E */  lhu        $a0, 0xE($s1)
/* 79244 800BEA44 00436023 */  subu       $t4, $v0, $v1
/* 79248 800BEA48 A62C000A */  sh         $t4, 0xA($s1)
/* 7924C 800BEA4C 28810002 */  slti       $at, $a0, 0x2
/* 79250 800BEA50 14200003 */  bnez       $at, .L800BEA60
/* 79254 800BEA54 248DFFFF */   addiu     $t5, $a0, -0x1
/* 79258 800BEA58 10000180 */  b          .L800BF05C
/* 7925C 800BEA5C A62D000E */   sh        $t5, 0xE($s1)
.L800BEA60:
/* 79260 800BEA60 922F0000 */  lbu        $t7, 0x0($s1)
/* 79264 800BEA64 26300070 */  addiu      $s0, $s1, 0x70
/* 79268 800BEA68 35F80004 */  ori        $t8, $t7, 0x4
/* 7926C 800BEA6C A2380000 */  sb         $t8, 0x0($s1)
/* 79270 800BEA70 8FB30058 */  lw         $s3, 0x58($sp)
glabel L800BEA74
/* 79274 800BEA74 0C02F42C */  jal        func_800BD0B0
/* 79278 800BEA78 02002025 */   or        $a0, $s0, $zero
/* 7927C 800BEA7C 240100FF */  addiu      $at, $zero, 0xFF
/* 79280 800BEA80 1441000E */  bne        $v0, $at, .L800BEABC
/* 79284 800BEA84 305200FF */   andi      $s2, $v0, 0xFF
/* 79288 800BEA88 92040018 */  lbu        $a0, 0x18($s0)
/* 7928C 800BEA8C 14800005 */  bnez       $a0, .L800BEAA4
/* 79290 800BEA90 2483FFFF */   addiu     $v1, $a0, -0x1
/* 79294 800BEA94 0C02F3B8 */  jal        func_800BCEE0
/* 79298 800BEA98 02202025 */   or        $a0, $s1, $zero
/* 7929C 800BEA9C 1000016F */  b          .L800BF05C
/* 792A0 800BEAA0 00000000 */   nop
.L800BEAA4:
/* 792A4 800BEAA4 307900FF */  andi       $t9, $v1, 0xFF
/* 792A8 800BEAA8 00194080 */  sll        $t0, $t9, 2
/* 792AC 800BEAAC 02084821 */  addu       $t1, $s0, $t0
/* 792B0 800BEAB0 A2190018 */  sb         $t9, 0x18($s0)
/* 792B4 800BEAB4 8D2A0004 */  lw         $t2, 0x4($t1)
/* 792B8 800BEAB8 AE0A0000 */  sw         $t2, 0x0($s0)
.L800BEABC:
/* 792BC 800BEABC 304300FF */  andi       $v1, $v0, 0xFF
/* 792C0 800BEAC0 240100FD */  addiu      $at, $zero, 0xFD
/* 792C4 800BEAC4 14610005 */  bne        $v1, $at, .L800BEADC
/* 792C8 800BEAC8 306200F0 */   andi      $v0, $v1, 0xF0
/* 792CC 800BEACC 0C02F43D */  jal        func_800BD0F4
/* 792D0 800BEAD0 02002025 */   or        $a0, $s0, $zero
/* 792D4 800BEAD4 10000161 */  b          .L800BF05C
/* 792D8 800BEAD8 A622000E */   sh        $v0, 0xE($s1)
.L800BEADC:
/* 792DC 800BEADC 240100FE */  addiu      $at, $zero, 0xFE
/* 792E0 800BEAE0 14610004 */  bne        $v1, $at, .L800BEAF4
/* 792E4 800BEAE4 246CFF38 */   addiu     $t4, $v1, -0xC8
/* 792E8 800BEAE8 240B0001 */  addiu      $t3, $zero, 0x1
/* 792EC 800BEAEC 1000015B */  b          .L800BF05C
/* 792F0 800BEAF0 A62B000E */   sh        $t3, 0xE($s1)
.L800BEAF4:
/* 792F4 800BEAF4 286100C0 */  slti       $at, $v1, 0xC0
/* 792F8 800BEAF8 14200125 */  bnez       $at, .L800BEF90
/* 792FC 800BEAFC 2D810038 */   sltiu     $at, $t4, 0x38
/* 79300 800BEB00 1020FFDC */  beqz       $at, L800BEA74
/* 79304 800BEB04 000C6080 */   sll       $t4, $t4, 2
/* 79308 800BEB08 3C01800F */  lui        $at, %hi(jtbl_800EC0F4_main)
/* 7930C 800BEB0C 002C0821 */  addu       $at, $at, $t4
/* 79310 800BEB10 8C2CC0F4 */  lw         $t4, %lo(jtbl_800EC0F4_main)($at)
/* 79314 800BEB14 01800008 */  jr         $t4
/* 79318 800BEB18 00000000 */   nop
glabel L800BEB1C
/* 7931C 800BEB1C 0C02F431 */  jal        func_800BD0C4
/* 79320 800BEB20 02002025 */   or        $a0, $s0, $zero
/* 79324 800BEB24 920E0018 */  lbu        $t6, 0x18($s0)
/* 79328 800BEB28 8E0D0000 */  lw         $t5, 0x0($s0)
/* 7932C 800BEB2C 304AFFFF */  andi       $t2, $v0, 0xFFFF
/* 79330 800BEB30 000E7880 */  sll        $t7, $t6, 2
/* 79334 800BEB34 020FC021 */  addu       $t8, $s0, $t7
/* 79338 800BEB38 AF0D0004 */  sw         $t5, 0x4($t8)
/* 7933C 800BEB3C 92190018 */  lbu        $t9, 0x18($s0)
/* 79340 800BEB40 27280001 */  addiu      $t0, $t9, 0x1
/* 79344 800BEB44 A2080018 */  sb         $t0, 0x18($s0)
/* 79348 800BEB48 8E290014 */  lw         $t1, 0x14($s1)
/* 7934C 800BEB4C 012A5821 */  addu       $t3, $t1, $t2
/* 79350 800BEB50 1000FFC8 */  b          L800BEA74
/* 79354 800BEB54 AE0B0000 */   sw        $t3, 0x0($s0)
/* 79358 800BEB58 1000FFC6 */  b          L800BEA74
/* 7935C 800BEB5C 00000000 */   nop
glabel L800BEB60
/* 79360 800BEB60 0C02F42C */  jal        func_800BD0B0
/* 79364 800BEB64 02002025 */   or        $a0, $s0, $zero
/* 79368 800BEB68 920C0018 */  lbu        $t4, 0x18($s0)
/* 7936C 800BEB6C 020C7021 */  addu       $t6, $s0, $t4
/* 79370 800BEB70 A1C20014 */  sb         $v0, 0x14($t6)
/* 79374 800BEB74 920D0018 */  lbu        $t5, 0x18($s0)
/* 79378 800BEB78 8E0F0000 */  lw         $t7, 0x0($s0)
/* 7937C 800BEB7C 000DC080 */  sll        $t8, $t5, 2
/* 79380 800BEB80 0218C821 */  addu       $t9, $s0, $t8
/* 79384 800BEB84 AF2F0004 */  sw         $t7, 0x4($t9)
/* 79388 800BEB88 92080018 */  lbu        $t0, 0x18($s0)
/* 7938C 800BEB8C 25090001 */  addiu      $t1, $t0, 0x1
/* 79390 800BEB90 1000FFB8 */  b          L800BEA74
/* 79394 800BEB94 A2090018 */   sb        $t1, 0x18($s0)
glabel L800BEB98
/* 79398 800BEB98 920A0018 */  lbu        $t2, 0x18($s0)
/* 7939C 800BEB9C 020A1021 */  addu       $v0, $s0, $t2
/* 793A0 800BEBA0 904B0013 */  lbu        $t3, 0x13($v0)
/* 793A4 800BEBA4 256CFFFF */  addiu      $t4, $t3, -0x1
/* 793A8 800BEBA8 A04C0013 */  sb         $t4, 0x13($v0)
/* 793AC 800BEBAC 92040018 */  lbu        $a0, 0x18($s0)
/* 793B0 800BEBB0 02047021 */  addu       $t6, $s0, $a0
/* 793B4 800BEBB4 91CD0013 */  lbu        $t5, 0x13($t6)
/* 793B8 800BEBB8 00801825 */  or         $v1, $a0, $zero
/* 793BC 800BEBBC 0003C080 */  sll        $t8, $v1, 2
/* 793C0 800BEBC0 11A00005 */  beqz       $t5, .L800BEBD8
/* 793C4 800BEBC4 2488FFFF */   addiu     $t0, $a0, -0x1
/* 793C8 800BEBC8 02187821 */  addu       $t7, $s0, $t8
/* 793CC 800BEBCC 8DF90000 */  lw         $t9, 0x0($t7)
/* 793D0 800BEBD0 1000FFA8 */  b          L800BEA74
/* 793D4 800BEBD4 AE190000 */   sw        $t9, 0x0($s0)
.L800BEBD8:
/* 793D8 800BEBD8 1000FFA6 */  b          L800BEA74
/* 793DC 800BEBDC A2080018 */   sb        $t0, 0x18($s0)
glabel L800BEBE0
/* 793E0 800BEBE0 0C02F431 */  jal        func_800BD0C4
/* 793E4 800BEBE4 02002025 */   or        $a0, $s0, $zero
/* 793E8 800BEBE8 240100FA */  addiu      $at, $zero, 0xFA
/* 793EC 800BEBEC 16410003 */  bne        $s2, $at, .L800BEBFC
/* 793F0 800BEBF0 02401825 */   or        $v1, $s2, $zero
/* 793F4 800BEBF4 1660FF9F */  bnez       $s3, L800BEA74
/* 793F8 800BEBF8 00000000 */   nop
.L800BEBFC:
/* 793FC 800BEBFC 240100F9 */  addiu      $at, $zero, 0xF9
/* 79400 800BEC00 54610004 */  bnel       $v1, $at, .L800BEC14
/* 79404 800BEC04 240100F5 */   addiu     $at, $zero, 0xF5
/* 79408 800BEC08 0661FF9A */  bgez       $s3, L800BEA74
/* 7940C 800BEC0C 00000000 */   nop
/* 79410 800BEC10 240100F5 */  addiu      $at, $zero, 0xF5
.L800BEC14:
/* 79414 800BEC14 54610004 */  bnel       $v1, $at, .L800BEC28
/* 79418 800BEC18 8E290014 */   lw        $t1, 0x14($s1)
/* 7941C 800BEC1C 0660FF95 */  bltz       $s3, L800BEA74
/* 79420 800BEC20 00000000 */   nop
/* 79424 800BEC24 8E290014 */  lw         $t1, 0x14($s1)
.L800BEC28:
/* 79428 800BEC28 304AFFFF */  andi       $t2, $v0, 0xFFFF
/* 7942C 800BEC2C 012A5821 */  addu       $t3, $t1, $t2
/* 79430 800BEC30 1000FF90 */  b          L800BEA74
/* 79434 800BEC34 AE0B0000 */   sw        $t3, 0x0($s0)
glabel L800BEC38
/* 79438 800BEC38 0C02F42C */  jal        func_800BD0B0
/* 7943C 800BEC3C 02002025 */   or        $a0, $s0, $zero
/* 79440 800BEC40 240100F3 */  addiu      $at, $zero, 0xF3
/* 79444 800BEC44 16410003 */  bne        $s2, $at, .L800BEC54
/* 79448 800BEC48 02401825 */   or        $v1, $s2, $zero
/* 7944C 800BEC4C 1660FF89 */  bnez       $s3, L800BEA74
/* 79450 800BEC50 00000000 */   nop
.L800BEC54:
/* 79454 800BEC54 240100F2 */  addiu      $at, $zero, 0xF2
/* 79458 800BEC58 54610004 */  bnel       $v1, $at, .L800BEC6C
/* 7945C 800BEC5C 8E0C0000 */   lw        $t4, 0x0($s0)
/* 79460 800BEC60 0661FF84 */  bgez       $s3, L800BEA74
/* 79464 800BEC64 00000000 */   nop
/* 79468 800BEC68 8E0C0000 */  lw         $t4, 0x0($s0)
.L800BEC6C:
/* 7946C 800BEC6C 00027600 */  sll        $t6, $v0, 24
/* 79470 800BEC70 000E6E03 */  sra        $t5, $t6, 24
/* 79474 800BEC74 018DC021 */  addu       $t8, $t4, $t5
/* 79478 800BEC78 1000FF7E */  b          L800BEA74
/* 7947C 800BEC7C AE180000 */   sw        $t8, 0x0($s0)
glabel L800BEC80
/* 79480 800BEC80 26240094 */  addiu      $a0, $s1, 0x94
/* 79484 800BEC84 0C02ED00 */  jal        func_800BB400
/* 79488 800BEC88 AFA40038 */   sw        $a0, 0x38($sp)
/* 7948C 800BEC8C 0C02F42C */  jal        func_800BD0B0
/* 79490 800BEC90 02002025 */   or        $a0, $s0, $zero
/* 79494 800BEC94 8FA40038 */  lw         $a0, 0x38($sp)
/* 79498 800BEC98 0C02ED58 */  jal        func_800BB560
/* 7949C 800BEC9C 00402825 */   or        $a1, $v0, $zero
/* 794A0 800BECA0 1000FF74 */  b          L800BEA74
/* 794A4 800BECA4 00000000 */   nop
glabel L800BECA8
/* 794A8 800BECA8 0C02ED00 */  jal        func_800BB400
/* 794AC 800BECAC 26240094 */   addiu     $a0, $s1, 0x94
/* 794B0 800BECB0 1000FF70 */  b          L800BEA74
/* 794B4 800BECB4 00000000 */   nop
glabel L800BECB8
/* 794B8 800BECB8 A620000C */  sh         $zero, 0xC($s1)
glabel L800BECBC
/* 794BC 800BECBC 0C02F42C */  jal        func_800BD0B0
/* 794C0 800BECC0 02002025 */   or        $a0, $s0, $zero
/* 794C4 800BECC4 862F000C */  lh         $t7, 0xC($s1)
/* 794C8 800BECC8 0002CE00 */  sll        $t9, $v0, 24
/* 794CC 800BECCC 00194603 */  sra        $t0, $t9, 24
/* 794D0 800BECD0 01E84821 */  addu       $t1, $t7, $t0
/* 794D4 800BECD4 1000FF67 */  b          L800BEA74
/* 794D8 800BECD8 A629000C */   sh        $t1, 0xC($s1)
glabel L800BECDC
/* 794DC 800BECDC 0C02F42C */  jal        func_800BD0B0
/* 794E0 800BECE0 02002025 */   or        $a0, $s0, $zero
/* 794E4 800BECE4 240100DD */  addiu      $at, $zero, 0xDD
/* 794E8 800BECE8 16410007 */  bne        $s2, $at, .L800BED08
/* 794EC 800BECEC 3C038004 */   lui       $v1, %hi(D_8004554C)
/* 794F0 800BECF0 304A00FF */  andi       $t2, $v0, 0xFF
/* 794F4 800BECF4 000A5880 */  sll        $t3, $t2, 2
/* 794F8 800BECF8 016A5823 */  subu       $t3, $t3, $t2
/* 794FC 800BECFC 000B5900 */  sll        $t3, $t3, 4
/* 79500 800BED00 10000009 */  b          .L800BED28
/* 79504 800BED04 A62B0008 */   sh        $t3, 0x8($s1)
.L800BED08:
/* 79508 800BED08 00026600 */  sll        $t4, $v0, 24
/* 7950C 800BED0C 000C6E03 */  sra        $t5, $t4, 24
/* 79510 800BED10 962E0008 */  lhu        $t6, 0x8($s1)
/* 79514 800BED14 000DC080 */  sll        $t8, $t5, 2
/* 79518 800BED18 030DC023 */  subu       $t8, $t8, $t5
/* 7951C 800BED1C 0018C100 */  sll        $t8, $t8, 4
/* 79520 800BED20 01D8C821 */  addu       $t9, $t6, $t8
/* 79524 800BED24 A6390008 */  sh         $t9, 0x8($s1)
.L800BED28:
/* 79528 800BED28 8463554C */  lh         $v1, %lo(D_8004554C)($v1)
/* 7952C 800BED2C 96220008 */  lhu        $v0, 0x8($s1)
/* 79530 800BED30 24090001 */  addiu      $t1, $zero, 0x1
/* 79534 800BED34 0062082A */  slt        $at, $v1, $v0
/* 79538 800BED38 50200004 */  beql       $at, $zero, .L800BED4C
/* 7953C 800BED3C 00027C00 */   sll       $t7, $v0, 16
/* 79540 800BED40 A6230008 */  sh         $v1, 0x8($s1)
/* 79544 800BED44 3062FFFF */  andi       $v0, $v1, 0xFFFF
/* 79548 800BED48 00027C00 */  sll        $t7, $v0, 16
.L800BED4C:
/* 7954C 800BED4C 000F4403 */  sra        $t0, $t7, 16
/* 79550 800BED50 1D00FF48 */  bgtz       $t0, L800BEA74
/* 79554 800BED54 00000000 */   nop
/* 79558 800BED58 1000FF46 */  b          L800BEA74
/* 7955C 800BED5C A6290008 */   sh        $t1, 0x8($s1)
glabel L800BED60
/* 79560 800BED60 0C02F42C */  jal        func_800BD0B0
/* 79564 800BED64 02002025 */   or        $a0, $s0, $zero
/* 79568 800BED68 305200FF */  andi       $s2, $v0, 0xFF
/* 7956C 800BED6C 0C02F431 */  jal        func_800BD0C4
/* 79570 800BED70 02002025 */   or        $a0, $s0, $zero
/* 79574 800BED74 12400008 */  beqz       $s2, .L800BED98
/* 79578 800BED78 02401825 */   or        $v1, $s2, $zero
/* 7957C 800BED7C 24010001 */  addiu      $at, $zero, 0x1
/* 79580 800BED80 10610005 */  beq        $v1, $at, .L800BED98
/* 79584 800BED84 24010002 */   addiu     $at, $zero, 0x2
/* 79588 800BED88 1061000A */  beq        $v1, $at, .L800BEDB4
/* 7958C 800BED8C 304BFFFF */   andi      $t3, $v0, 0xFFFF
/* 79590 800BED90 1000FF38 */  b          L800BEA74
/* 79594 800BED94 00000000 */   nop
.L800BED98:
/* 79598 800BED98 922A0001 */  lbu        $t2, 0x1($s1)
/* 7959C 800BED9C 24010002 */  addiu      $at, $zero, 0x2
/* 795A0 800BEDA0 1141FF34 */  beq        $t2, $at, L800BEA74
/* 795A4 800BEDA4 00000000 */   nop
/* 795A8 800BEDA8 A6220012 */  sh         $v0, 0x12($s1)
/* 795AC 800BEDAC 1000FF31 */  b          L800BEA74
/* 795B0 800BEDB0 A2320001 */   sb        $s2, 0x1($s1)
.L800BEDB4:
/* 795B4 800BEDB4 448B5000 */  mtc1       $t3, $f10
/* 795B8 800BEDB8 44802000 */  mtc1       $zero, $f4
/* 795BC 800BEDBC C6260018 */  lwc1       $f6, 0x18($s1)
/* 795C0 800BEDC0 46805420 */  cvt.s.w    $f16, $f10
/* 795C4 800BEDC4 A6220010 */  sh         $v0, 0x10($s1)
/* 795C8 800BEDC8 A2320001 */  sb         $s2, 0x1($s1)
/* 795CC 800BEDCC 46062201 */  sub.s      $f8, $f4, $f6
/* 795D0 800BEDD0 46104483 */  div.s      $f18, $f8, $f16
/* 795D4 800BEDD4 1000FF27 */  b          L800BEA74
/* 795D8 800BEDD8 E632001C */   swc1      $f18, 0x1C($s1)
glabel L800BEDDC
/* 795DC 800BEDDC 0C02F42C */  jal        func_800BD0B0
/* 795E0 800BEDE0 02002025 */   or        $a0, $s0, $zero
/* 795E4 800BEDE4 92230001 */  lbu        $v1, 0x1($s1)
/* 795E8 800BEDE8 24010001 */  addiu      $at, $zero, 0x1
/* 795EC 800BEDEC 5060000B */  beql       $v1, $zero, .L800BEE1C
/* 795F0 800BEDF0 96230012 */   lhu       $v1, 0x12($s1)
/* 795F4 800BEDF4 10610005 */  beq        $v1, $at, .L800BEE0C
/* 795F8 800BEDF8 24010002 */   addiu     $at, $zero, 0x2
/* 795FC 800BEDFC 1061FF1D */  beq        $v1, $at, L800BEA74
/* 79600 800BEE00 00000000 */   nop
/* 79604 800BEE04 1000FF1B */  b          L800BEA74
/* 79608 800BEE08 00000000 */   nop
.L800BEE0C:
/* 7960C 800BEE0C 44802000 */  mtc1       $zero, $f4
/* 79610 800BEE10 A2200001 */  sb         $zero, 0x1($s1)
/* 79614 800BEE14 E6240018 */  swc1       $f4, 0x18($s1)
/* 79618 800BEE18 96230012 */  lhu        $v1, 0x12($s1)
.L800BEE1C:
/* 7961C 800BEE1C 1060000E */  beqz       $v1, .L800BEE58
/* 79620 800BEE20 A6230010 */   sh        $v1, 0x10($s1)
/* 79624 800BEE24 44823000 */  mtc1       $v0, $f6
/* 79628 800BEE28 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
/* 7962C 800BEE2C 44814000 */  mtc1       $at, $f8
/* 79630 800BEE30 468032A0 */  cvt.s.w    $f10, $f6
/* 79634 800BEE34 306CFFFF */  andi       $t4, $v1, 0xFFFF
/* 79638 800BEE38 448C3000 */  mtc1       $t4, $f6
/* 7963C 800BEE3C C6320018 */  lwc1       $f18, 0x18($s1)
/* 79640 800BEE40 46085403 */  div.s      $f16, $f10, $f8
/* 79644 800BEE44 468032A0 */  cvt.s.w    $f10, $f6
/* 79648 800BEE48 46128101 */  sub.s      $f4, $f16, $f18
/* 7964C 800BEE4C 460A2203 */  div.s      $f8, $f4, $f10
/* 79650 800BEE50 1000FF08 */  b          L800BEA74
/* 79654 800BEE54 E628001C */   swc1      $f8, 0x1C($s1)
.L800BEE58:
/* 79658 800BEE58 44828000 */  mtc1       $v0, $f16
/* 7965C 800BEE5C 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
/* 79660 800BEE60 44813000 */  mtc1       $at, $f6
/* 79664 800BEE64 468084A0 */  cvt.s.w    $f18, $f16
/* 79668 800BEE68 46069103 */  div.s      $f4, $f18, $f6
/* 7966C 800BEE6C 1000FF01 */  b          L800BEA74
/* 79670 800BEE70 E6240018 */   swc1      $f4, 0x18($s1)
glabel L800BEE74
/* 79674 800BEE74 0C02F42C */  jal        func_800BD0B0
/* 79678 800BEE78 02002025 */   or        $a0, $s0, $zero
/* 7967C 800BEE7C 00026E00 */  sll        $t5, $v0, 24
/* 79680 800BEE80 000D7603 */  sra        $t6, $t5, 24
/* 79684 800BEE84 448E5000 */  mtc1       $t6, $f10
/* 79688 800BEE88 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
/* 7968C 800BEE8C 44818000 */  mtc1       $at, $f16
/* 79690 800BEE90 46805220 */  cvt.s.w    $f8, $f10
/* 79694 800BEE94 46104483 */  div.s      $f18, $f8, $f16
/* 79698 800BEE98 1000FEF6 */  b          L800BEA74
/* 7969C 800BEE9C E6320028 */   swc1      $f18, 0x28($s1)
glabel L800BEEA0
/* 796A0 800BEEA0 0C02F431 */  jal        func_800BD0C4
/* 796A4 800BEEA4 02002025 */   or        $a0, $s0, $zero
/* 796A8 800BEEA8 02202025 */  or         $a0, $s1, $zero
/* 796AC 800BEEAC 0C02F307 */  jal        func_800BCC1C
/* 796B0 800BEEB0 3045FFFF */   andi      $a1, $v0, 0xFFFF
/* 796B4 800BEEB4 1000FEEF */  b          L800BEA74
/* 796B8 800BEEB8 00000000 */   nop
glabel L800BEEBC
/* 796BC 800BEEBC 0C02F431 */  jal        func_800BD0C4
/* 796C0 800BEEC0 02002025 */   or        $a0, $s0, $zero
/* 796C4 800BEEC4 02202025 */  or         $a0, $s1, $zero
/* 796C8 800BEEC8 0C02F352 */  jal        func_800BCD48
/* 796CC 800BEECC 3045FFFF */   andi      $a1, $v0, 0xFFFF
/* 796D0 800BEED0 1000FEE8 */  b          L800BEA74
/* 796D4 800BEED4 00000000 */   nop
glabel L800BEED8
/* 796D8 800BEED8 0C02F42C */  jal        func_800BD0B0
/* 796DC 800BEEDC 02002025 */   or        $a0, $s0, $zero
/* 796E0 800BEEE0 0002C600 */  sll        $t8, $v0, 24
/* 796E4 800BEEE4 0018CE03 */  sra        $t9, $t8, 24
/* 796E8 800BEEE8 44993000 */  mtc1       $t9, $f6
/* 796EC 800BEEEC 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
/* 796F0 800BEEF0 44815000 */  mtc1       $at, $f10
/* 796F4 800BEEF4 46803120 */  cvt.s.w    $f4, $f6
/* 796F8 800BEEF8 460A2203 */  div.s      $f8, $f4, $f10
/* 796FC 800BEEFC 1000FEDD */  b          L800BEA74
/* 79700 800BEF00 E6280024 */   swc1      $f8, 0x24($s1)
glabel L800BEF04
/* 79704 800BEF04 92280000 */  lbu        $t0, 0x0($s1)
/* 79708 800BEF08 35090020 */  ori        $t1, $t0, 0x20
/* 7970C 800BEF0C 1000FED9 */  b          L800BEA74
/* 79710 800BEF10 A2290000 */   sb        $t1, 0x0($s1)
glabel L800BEF14
/* 79714 800BEF14 0C02F42C */  jal        func_800BD0B0
/* 79718 800BEF18 02002025 */   or        $a0, $s0, $zero
/* 7971C 800BEF1C 1000FED5 */  b          L800BEA74
/* 79720 800BEF20 A2220003 */   sb        $v0, 0x3($s1)
glabel L800BEF24
/* 79724 800BEF24 0C02F431 */  jal        func_800BD0C4
/* 79728 800BEF28 02002025 */   or        $a0, $s0, $zero
/* 7972C 800BEF2C 8E2A0014 */  lw         $t2, 0x14($s1)
/* 79730 800BEF30 304BFFFF */  andi       $t3, $v0, 0xFFFF
/* 79734 800BEF34 240100D2 */  addiu      $at, $zero, 0xD2
/* 79738 800BEF38 16410003 */  bne        $s2, $at, .L800BEF48
/* 7973C 800BEF3C 014B1821 */   addu      $v1, $t2, $t3
/* 79740 800BEF40 1000FECC */  b          L800BEA74
/* 79744 800BEF44 AE23008C */   sw        $v1, 0x8C($s1)
.L800BEF48:
/* 79748 800BEF48 1000FECA */  b          L800BEA74
/* 7974C 800BEF4C AE230090 */   sw        $v1, 0x90($s1)
glabel L800BEF50
/* 79750 800BEF50 0C02F42C */  jal        func_800BD0B0
/* 79754 800BEF54 02002025 */   or        $a0, $s0, $zero
/* 79758 800BEF58 1000FEC6 */  b          L800BEA74
/* 7975C 800BEF5C A2220002 */   sb        $v0, 0x2($s1)
glabel L800BEF60
/* 79760 800BEF60 0C02F42C */  jal        func_800BD0B0
/* 79764 800BEF64 02002025 */   or        $a0, $s0, $zero
/* 79768 800BEF68 1000FEC2 */  b          L800BEA74
/* 7976C 800BEF6C 00409825 */   or        $s3, $v0, $zero
glabel L800BEF70
/* 79770 800BEF70 0C02F42C */  jal        func_800BD0B0
/* 79774 800BEF74 02002025 */   or        $a0, $s0, $zero
/* 79778 800BEF78 1000FEBE */  b          L800BEA74
/* 7977C 800BEF7C 02629824 */   and       $s3, $s3, $v0
glabel L800BEF80
/* 79780 800BEF80 0C02F42C */  jal        func_800BD0B0
/* 79784 800BEF84 02002025 */   or        $a0, $s0, $zero
/* 79788 800BEF88 1000FEBA */  b          L800BEA74
/* 7978C 800BEF8C 02629823 */   subu      $s3, $s3, $v0
.L800BEF90:
/* 79790 800BEF90 28410011 */  slti       $at, $v0, 0x11
/* 79794 800BEF94 14200010 */  bnez       $at, .L800BEFD8
/* 79798 800BEF98 28410021 */   slti      $at, $v0, 0x21
/* 7979C 800BEF9C 14200009 */  bnez       $at, .L800BEFC4
/* 797A0 800BEFA0 244CFFC0 */   addiu     $t4, $v0, -0x40
/* 797A4 800BEFA4 2D810061 */  sltiu      $at, $t4, 0x61
/* 797A8 800BEFA8 1020FEB2 */  beqz       $at, L800BEA74
/* 797AC 800BEFAC 000C6080 */   sll       $t4, $t4, 2
/* 797B0 800BEFB0 3C01800F */  lui        $at, %hi(jtbl_800EC1D4_main)
/* 797B4 800BEFB4 002C0821 */  addu       $at, $at, $t4
/* 797B8 800BEFB8 8C2CC1D4 */  lw         $t4, %lo(jtbl_800EC1D4_main)($at)
/* 797BC 800BEFBC 01800008 */  jr         $t4
/* 797C0 800BEFC0 00000000 */   nop
.L800BEFC4:
/* 797C4 800BEFC4 24010020 */  addiu      $at, $zero, 0x20
/* 797C8 800BEFC8 1041FEAA */  beq        $v0, $at, L800BEA74
/* 797CC 800BEFCC 00000000 */   nop
/* 797D0 800BEFD0 1000FEA8 */  b          L800BEA74
/* 797D4 800BEFD4 00000000 */   nop
.L800BEFD8:
/* 797D8 800BEFD8 10400006 */  beqz       $v0, .L800BEFF4
/* 797DC 800BEFDC 306E000F */   andi      $t6, $v1, 0xF
/* 797E0 800BEFE0 24010010 */  addiu      $at, $zero, 0x10
/* 797E4 800BEFE4 1041FEA3 */  beq        $v0, $at, L800BEA74
/* 797E8 800BEFE8 00000000 */   nop
/* 797EC 800BEFEC 1000FEA1 */  b          L800BEA74
/* 797F0 800BEFF0 00000000 */   nop
.L800BEFF4:
/* 797F4 800BEFF4 000EC080 */  sll        $t8, $t6, 2
/* 797F8 800BEFF8 0238C821 */  addu       $t9, $s1, $t8
/* 797FC 800BEFFC 8F2F0030 */  lw         $t7, 0x30($t9)
/* 79800 800BF000 8DF30000 */  lw         $s3, 0x0($t7)
/* 79804 800BF004 00134040 */  sll        $t0, $s3, 1
/* 79808 800BF008 1000FE9A */  b          L800BEA74
/* 7980C 800BF00C 00089FC2 */   srl       $s3, $t0, 31
glabel L800BF010
/* 79810 800BF010 822A0007 */  lb         $t2, 0x7($s1)
/* 79814 800BF014 1000FE97 */  b          L800BEA74
/* 79818 800BF018 026A9823 */   subu      $s3, $s3, $t2
glabel L800BF01C
/* 7981C 800BF01C 1000FE95 */  b          L800BEA74
/* 79820 800BF020 A2330007 */   sb        $s3, 0x7($s1)
glabel L800BF024
/* 79824 800BF024 1000FE93 */  b          L800BEA74
/* 79828 800BF028 82330007 */   lb        $s3, 0x7($s1)
glabel L800BF02C
/* 7982C 800BF02C 0C02F431 */  jal        func_800BD0C4
/* 79830 800BF030 02002025 */   or        $a0, $s0, $zero
/* 79834 800BF034 8E2C0014 */  lw         $t4, 0x14($s1)
/* 79838 800BF038 02402825 */  or         $a1, $s2, $zero
/* 7983C 800BF03C 30AB000F */  andi       $t3, $a1, 0xF
/* 79840 800BF040 304DFFFF */  andi       $t5, $v0, 0xFFFF
/* 79844 800BF044 01602825 */  or         $a1, $t3, $zero
/* 79848 800BF048 02202025 */  or         $a0, $s1, $zero
/* 7984C 800BF04C 0C02F386 */  jal        func_800BCE18
/* 79850 800BF050 018D3021 */   addu      $a2, $t4, $t5
/* 79854 800BF054 1000FE87 */  b          L800BEA74
/* 79858 800BF058 00000000 */   nop
.L800BF05C:
/* 7985C 800BF05C 3C108004 */  lui        $s0, %hi(D_80044688)
/* 79860 800BF060 02201825 */  or         $v1, $s1, $zero
/* 79864 800BF064 24110040 */  addiu      $s1, $zero, 0x40
/* 79868 800BF068 26104688 */  addiu      $s0, $s0, %lo(D_80044688)
/* 7986C 800BF06C 00001025 */  or         $v0, $zero, $zero
.L800BF070:
/* 79870 800BF070 8C640030 */  lw         $a0, 0x30($v1)
/* 79874 800BF074 24010001 */  addiu      $at, $zero, 0x1
/* 79878 800BF078 02047026 */  xor        $t6, $s0, $a0
/* 7987C 800BF07C 000E702B */  sltu       $t6, $zero, $t6
/* 79880 800BF080 55C10007 */  bnel       $t6, $at, .L800BF0A0
/* 79884 800BF084 24420004 */   addiu     $v0, $v0, 0x4
/* 79888 800BF088 AFA20034 */  sw         $v0, 0x34($sp)
/* 7988C 800BF08C 0C02F745 */  jal        func_800BDD14
/* 79890 800BF090 AFA30030 */   sw        $v1, 0x30($sp)
/* 79894 800BF094 8FA20034 */  lw         $v0, 0x34($sp)
/* 79898 800BF098 8FA30030 */  lw         $v1, 0x30($sp)
/* 7989C 800BF09C 24420004 */  addiu      $v0, $v0, 0x4
.L800BF0A0:
/* 798A0 800BF0A0 1451FFF3 */  bne        $v0, $s1, .L800BF070
/* 798A4 800BF0A4 24630004 */   addiu     $v1, $v1, 0x4
.L800BF0A8:
/* 798A8 800BF0A8 8FBF002C */  lw         $ra, 0x2C($sp)
.L800BF0AC:
/* 798AC 800BF0AC 8FB0001C */  lw         $s0, 0x1C($sp)
/* 798B0 800BF0B0 8FB10020 */  lw         $s1, 0x20($sp)
/* 798B4 800BF0B4 8FB20024 */  lw         $s2, 0x24($sp)
/* 798B8 800BF0B8 8FB30028 */  lw         $s3, 0x28($sp)
/* 798BC 800BF0BC 03E00008 */  jr         $ra
/* 798C0 800BF0C0 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_800BF0C4
/* 798C4 800BF0C4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 798C8 800BF0C8 AFB20020 */  sw         $s2, 0x20($sp)
/* 798CC 800BF0CC AFB00018 */  sw         $s0, 0x18($sp)
/* 798D0 800BF0D0 AFB1001C */  sw         $s1, 0x1C($sp)
/* 798D4 800BF0D4 3C108004 */  lui        $s0, %hi(D_8003FCC8)
/* 798D8 800BF0D8 3C128004 */  lui        $s2, %hi(D_800401C8)
/* 798DC 800BF0DC AFBF0024 */  sw         $ra, 0x24($sp)
/* 798E0 800BF0E0 AFA40028 */  sw         $a0, 0x28($sp)
/* 798E4 800BF0E4 265201C8 */  addiu      $s2, $s2, %lo(D_800401C8)
/* 798E8 800BF0E8 2610FCC8 */  addiu      $s0, $s0, %lo(D_8003FCC8)
/* 798EC 800BF0EC 24110001 */  addiu      $s1, $zero, 0x1
/* 798F0 800BF0F0 8E0E0000 */  lw         $t6, 0x0($s0)
.L800BF0F4:
/* 798F4 800BF0F4 000E7FC2 */  srl        $t7, $t6, 31
/* 798F8 800BF0F8 562F0006 */  bnel       $s1, $t7, .L800BF114
/* 798FC 800BF0FC 26100140 */   addiu     $s0, $s0, 0x140
/* 79900 800BF100 0C02FA16 */  jal        func_800BE858
/* 79904 800BF104 02002025 */   or        $a0, $s0, $zero
/* 79908 800BF108 0C02EFF5 */  jal        func_800BBFD4
/* 7990C 800BF10C 02002025 */   or        $a0, $s0, $zero
/* 79910 800BF110 26100140 */  addiu      $s0, $s0, 0x140
.L800BF114:
/* 79914 800BF114 5612FFF7 */  bnel       $s0, $s2, .L800BF0F4
/* 79918 800BF118 8E0E0000 */   lw        $t6, 0x0($s0)
/* 7991C 800BF11C 0C02EAE5 */  jal        func_800BAB94
/* 79920 800BF120 00000000 */   nop
/* 79924 800BF124 8FBF0024 */  lw         $ra, 0x24($sp)
/* 79928 800BF128 8FB00018 */  lw         $s0, 0x18($sp)
/* 7992C 800BF12C 8FB1001C */  lw         $s1, 0x1C($sp)
/* 79930 800BF130 8FB20020 */  lw         $s2, 0x20($sp)
/* 79934 800BF134 03E00008 */  jr         $ra
/* 79938 800BF138 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800BF13C
/* 7993C 800BF13C 00047080 */  sll        $t6, $a0, 2
/* 79940 800BF140 01C47021 */  addu       $t6, $t6, $a0
/* 79944 800BF144 3C0F8004 */  lui        $t7, %hi(D_8003FCC8)
/* 79948 800BF148 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7994C 800BF14C 25EFFCC8 */  addiu      $t7, $t7, %lo(D_8003FCC8)
/* 79950 800BF150 000E7180 */  sll        $t6, $t6, 6
/* 79954 800BF154 AFBF0014 */  sw         $ra, 0x14($sp)
/* 79958 800BF158 01CF2021 */  addu       $a0, $t6, $t7
/* 7995C 800BF15C 0C02F3B8 */  jal        func_800BCEE0
/* 79960 800BF160 AFA40018 */   sw        $a0, 0x18($sp)
/* 79964 800BF164 8FA40018 */  lw         $a0, 0x18($sp)
/* 79968 800BF168 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 7996C 800BF16C 44810000 */  mtc1       $at, $f0
/* 79970 800BF170 44801000 */  mtc1       $zero, $f2
/* 79974 800BF174 90980000 */  lbu        $t8, 0x0($a0)
/* 79978 800BF178 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 7997C 800BF17C 44812000 */  mtc1       $at, $f4
/* 79980 800BF180 3C0B800F */  lui        $t3, %hi(D_800ECFE4)
/* 79984 800BF184 3C0C800F */  lui        $t4, %hi(D_800ECFF4)
/* 79988 800BF188 24080001 */  addiu      $t0, $zero, 0x1
/* 7998C 800BF18C 24091680 */  addiu      $t1, $zero, 0x1680
/* 79990 800BF190 240A00E0 */  addiu      $t2, $zero, 0xE0
/* 79994 800BF194 256BCFE4 */  addiu      $t3, $t3, %lo(D_800ECFE4)
/* 79998 800BF198 258CCFF4 */  addiu      $t4, $t4, %lo(D_800ECFF4)
/* 7999C 800BF19C 3319FFDF */  andi       $t9, $t8, 0xFFDF
/* 799A0 800BF1A0 A0990000 */  sb         $t9, 0x0($a0)
/* 799A4 800BF1A4 A480000E */  sh         $zero, 0xE($a0)
/* 799A8 800BF1A8 A0880001 */  sb         $t0, 0x1($a0)
/* 799AC 800BF1AC A4800010 */  sh         $zero, 0x10($a0)
/* 799B0 800BF1B0 A4800012 */  sh         $zero, 0x12($a0)
/* 799B4 800BF1B4 A480000A */  sh         $zero, 0xA($a0)
/* 799B8 800BF1B8 A4890008 */  sh         $t1, 0x8($a0)
/* 799BC 800BF1BC A480000C */  sh         $zero, 0xC($a0)
/* 799C0 800BF1C0 A08A0003 */  sb         $t2, 0x3($a0)
/* 799C4 800BF1C4 A0800002 */  sb         $zero, 0x2($a0)
/* 799C8 800BF1C8 AC8B008C */  sw         $t3, 0x8C($a0)
/* 799CC 800BF1CC AC8C0090 */  sw         $t4, 0x90($a0)
/* 799D0 800BF1D0 E4800018 */  swc1       $f0, 0x18($a0)
/* 799D4 800BF1D4 E4800028 */  swc1       $f0, 0x28($a0)
/* 799D8 800BF1D8 E482001C */  swc1       $f2, 0x1C($a0)
/* 799DC 800BF1DC E4820020 */  swc1       $f2, 0x20($a0)
/* 799E0 800BF1E0 E4840024 */  swc1       $f4, 0x24($a0)
/* 799E4 800BF1E4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 799E8 800BF1E8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 799EC 800BF1EC 03E00008 */  jr         $ra
/* 799F0 800BF1F0 00000000 */   nop

glabel func_800BF1F4
/* 799F4 800BF1F4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 799F8 800BF1F8 3C0E8004 */  lui        $t6, %hi(D_800401C8)
/* 799FC 800BF1FC 25C601C8 */  addiu      $a2, $t6, %lo(D_800401C8)
/* 79A00 800BF200 3C078004 */  lui        $a3, %hi(D_80042688)
/* 79A04 800BF204 AFBF0034 */  sw         $ra, 0x34($sp)
/* 79A08 800BF208 AFB70030 */  sw         $s7, 0x30($sp)
/* 79A0C 800BF20C AFB6002C */  sw         $s6, 0x2C($sp)
/* 79A10 800BF210 AFB50028 */  sw         $s5, 0x28($sp)
/* 79A14 800BF214 AFB40024 */  sw         $s4, 0x24($sp)
/* 79A18 800BF218 AFB30020 */  sw         $s3, 0x20($sp)
/* 79A1C 800BF21C AFB2001C */  sw         $s2, 0x1C($sp)
/* 79A20 800BF220 AFB10018 */  sw         $s1, 0x18($sp)
/* 79A24 800BF224 AFB00014 */  sw         $s0, 0x14($sp)
/* 79A28 800BF228 24E72688 */  addiu      $a3, $a3, %lo(D_80042688)
/* 79A2C 800BF22C 00C02825 */  or         $a1, $a2, $zero
/* 79A30 800BF230 24040040 */  addiu      $a0, $zero, 0x40
.L800BF234:
/* 79A34 800BF234 90AF0000 */  lbu        $t7, 0x0($a1)
/* 79A38 800BF238 ACA00044 */  sw         $zero, 0x44($a1)
/* 79A3C 800BF23C 00001025 */  or         $v0, $zero, $zero
/* 79A40 800BF240 31F8FF7F */  andi       $t8, $t7, 0xFF7F
/* 79A44 800BF244 A0B80000 */  sb         $t8, 0x0($a1)
/* 79A48 800BF248 00C01825 */  or         $v1, $a2, $zero
.L800BF24C:
/* 79A4C 800BF24C 24420004 */  addiu      $v0, $v0, 0x4
/* 79A50 800BF250 AC60004C */  sw         $zero, 0x4C($v1)
/* 79A54 800BF254 AC600050 */  sw         $zero, 0x50($v1)
/* 79A58 800BF258 AC600054 */  sw         $zero, 0x54($v1)
/* 79A5C 800BF25C 24630010 */  addiu      $v1, $v1, 0x10
/* 79A60 800BF260 1444FFFA */  bne        $v0, $a0, .L800BF24C
/* 79A64 800BF264 AC600038 */   sw        $zero, 0x38($v1)
/* 79A68 800BF268 24C600C4 */  addiu      $a2, $a2, 0xC4
/* 79A6C 800BF26C 00C7082B */  sltu       $at, $a2, $a3
/* 79A70 800BF270 1420FFF0 */  bnez       $at, .L800BF234
/* 79A74 800BF274 24A500C4 */   addiu     $a1, $a1, 0xC4
/* 79A78 800BF278 0C02F40B */  jal        func_800BD02C
/* 79A7C 800BF27C 00000000 */   nop
/* 79A80 800BF280 3C028004 */  lui        $v0, %hi(D_80042688)
/* 79A84 800BF284 3C038004 */  lui        $v1, %hi(D_80044688)
/* 79A88 800BF288 24634688 */  addiu      $v1, $v1, %lo(D_80044688)
/* 79A8C 800BF28C 24422688 */  addiu      $v0, $v0, %lo(D_80042688)
.L800BF290:
/* 79A90 800BF290 90590000 */  lbu        $t9, 0x0($v0)
/* 79A94 800BF294 24420080 */  addiu      $v0, $v0, 0x80
/* 79A98 800BF298 0043082B */  sltu       $at, $v0, $v1
/* 79A9C 800BF29C 3328FF7F */  andi       $t0, $t9, 0xFF7F
/* 79AA0 800BF2A0 AC40FFCC */  sw         $zero, -0x34($v0)
/* 79AA4 800BF2A4 1420FFFA */  bnez       $at, .L800BF290
/* 79AA8 800BF2A8 A048FF80 */   sb        $t0, -0x80($v0)
/* 79AAC 800BF2AC 3C098004 */  lui        $t1, %hi(D_8003FCC8)
/* 79AB0 800BF2B0 2532FCC8 */  addiu      $s2, $t1, %lo(D_8003FCC8)
/* 79AB4 800BF2B4 3C158004 */  lui        $s5, %hi(D_8003FD5C)
/* 79AB8 800BF2B8 3C108004 */  lui        $s0, %hi(D_80044688)
/* 79ABC 800BF2BC 26104688 */  addiu      $s0, $s0, %lo(D_80044688)
/* 79AC0 800BF2C0 26B5FD5C */  addiu      $s5, $s5, %lo(D_8003FD5C)
/* 79AC4 800BF2C4 0240A025 */  or         $s4, $s2, $zero
/* 79AC8 800BF2C8 00009825 */  or         $s3, $zero, $zero
/* 79ACC 800BF2CC 24170004 */  addiu      $s7, $zero, 0x4
/* 79AD0 800BF2D0 2416FFFF */  addiu      $s6, $zero, -0x1
/* 79AD4 800BF2D4 24110010 */  addiu      $s1, $zero, 0x10
.L800BF2D8:
/* 79AD8 800BF2D8 00001025 */  or         $v0, $zero, $zero
/* 79ADC 800BF2DC 02801825 */  or         $v1, $s4, $zero
.L800BF2E0:
/* 79AE0 800BF2E0 24420004 */  addiu      $v0, $v0, 0x4
/* 79AE4 800BF2E4 AC700034 */  sw         $s0, 0x34($v1)
/* 79AE8 800BF2E8 AC700038 */  sw         $s0, 0x38($v1)
/* 79AEC 800BF2EC AC70003C */  sw         $s0, 0x3C($v1)
/* 79AF0 800BF2F0 24630010 */  addiu      $v1, $v1, 0x10
/* 79AF4 800BF2F4 1451FFFA */  bne        $v0, $s1, .L800BF2E0
/* 79AF8 800BF2F8 AC700020 */   sw        $s0, 0x20($v1)
/* 79AFC 800BF2FC 924A0000 */  lbu        $t2, 0x0($s2)
/* 79B00 800BF300 A2560007 */  sb         $s6, 0x7($s2)
/* 79B04 800BF304 02A02025 */  or         $a0, $s5, $zero
/* 79B08 800BF308 314CFFF7 */  andi       $t4, $t2, 0xFFF7
/* 79B0C 800BF30C A24C0000 */  sb         $t4, 0x0($s2)
/* 79B10 800BF310 318D00EF */  andi       $t5, $t4, 0xEF
/* 79B14 800BF314 0C02ECC0 */  jal        func_800BB300
/* 79B18 800BF318 A24D0000 */   sb        $t5, 0x0($s2)
/* 79B1C 800BF31C 0C02FC4F */  jal        func_800BF13C
/* 79B20 800BF320 02602025 */   or        $a0, $s3, $zero
/* 79B24 800BF324 26730001 */  addiu      $s3, $s3, 0x1
/* 79B28 800BF328 26940140 */  addiu      $s4, $s4, 0x140
/* 79B2C 800BF32C 26520140 */  addiu      $s2, $s2, 0x140
/* 79B30 800BF330 1677FFE9 */  bne        $s3, $s7, .L800BF2D8
/* 79B34 800BF334 26B50140 */   addiu     $s5, $s5, 0x140
/* 79B38 800BF338 8FBF0034 */  lw         $ra, 0x34($sp)
/* 79B3C 800BF33C 8FB00014 */  lw         $s0, 0x14($sp)
/* 79B40 800BF340 8FB10018 */  lw         $s1, 0x18($sp)
/* 79B44 800BF344 8FB2001C */  lw         $s2, 0x1C($sp)
/* 79B48 800BF348 8FB30020 */  lw         $s3, 0x20($sp)
/* 79B4C 800BF34C 8FB40024 */  lw         $s4, 0x24($sp)
/* 79B50 800BF350 8FB50028 */  lw         $s5, 0x28($sp)
/* 79B54 800BF354 8FB6002C */  lw         $s6, 0x2C($sp)
/* 79B58 800BF358 8FB70030 */  lw         $s7, 0x30($sp)
/* 79B5C 800BF35C 03E00008 */  jr         $ra
/* 79B60 800BF360 27BD0038 */   addiu     $sp, $sp, 0x38
/* 79B64 800BF364 00000000 */  nop
/* 79B68 800BF368 00000000 */  nop
/* 79B6C 800BF36C 00000000 */  nop
