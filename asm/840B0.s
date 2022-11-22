.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800C98B0
/* 840B0 800C98B0 27BDFE80 */  addiu      $sp, $sp, -0x180
/* 840B4 800C98B4 AFB00028 */  sw         $s0, 0x28($sp)
/* 840B8 800C98B8 30B0FFFF */  andi       $s0, $a1, 0xFFFF
/* 840BC 800C98BC AFB30034 */  sw         $s3, 0x34($sp)
/* 840C0 800C98C0 AFB20030 */  sw         $s2, 0x30($sp)
/* 840C4 800C98C4 AFB1002C */  sw         $s1, 0x2C($sp)
/* 840C8 800C98C8 00C08825 */  or         $s1, $a2, $zero
/* 840CC 800C98CC 00E09025 */  or         $s2, $a3, $zero
/* 840D0 800C98D0 00809825 */  or         $s3, $a0, $zero
/* 840D4 800C98D4 AFBF003C */  sw         $ra, 0x3C($sp)
/* 840D8 800C98D8 AFB40038 */  sw         $s4, 0x38($sp)
/* 840DC 800C98DC AFA50184 */  sw         $a1, 0x184($sp)
/* 840E0 800C98E0 12000003 */  beqz       $s0, .L800C98F0
/* 840E4 800C98E4 A7A00052 */   sh        $zero, 0x52($sp)
/* 840E8 800C98E8 14C00003 */  bnez       $a2, .L800C98F8
/* 840EC 800C98EC 00000000 */   nop
.L800C98F0:
/* 840F0 800C98F0 10000087 */  b          .L800C9B10
/* 840F4 800C98F4 24020005 */   addiu     $v0, $zero, 0x5
.L800C98F8:
/* 840F8 800C98F8 8E6E0000 */  lw         $t6, 0x0($s3)
/* 840FC 800C98FC 00000000 */  nop
/* 84100 800C9900 31CF0001 */  andi       $t7, $t6, 0x1
/* 84104 800C9904 15E00003 */  bnez       $t7, .L800C9914
/* 84108 800C9908 00000000 */   nop
/* 8410C 800C990C 10000080 */  b          .L800C9B10
/* 84110 800C9910 24020005 */   addiu     $v0, $zero, 0x5
.L800C9914:
/* 84114 800C9914 0C03375F */  jal        func_800CDD7C
/* 84118 800C9918 02602025 */   or        $a0, $s3, $zero
/* 8411C 800C991C 24010002 */  addiu      $at, $zero, 0x2
/* 84120 800C9920 14410003 */  bne        $v0, $at, .L800C9930
/* 84124 800C9924 00000000 */   nop
/* 84128 800C9928 10000079 */  b          .L800C9B10
/* 8412C 800C992C 24020002 */   addiu     $v0, $zero, 0x2
.L800C9930:
/* 84130 800C9930 92780065 */  lbu        $t8, 0x65($s3)
/* 84134 800C9934 02602025 */  or         $a0, $s3, $zero
/* 84138 800C9938 13000008 */  beqz       $t8, .L800C995C
/* 8413C 800C993C 8FB90190 */   lw        $t9, 0x190($sp)
/* 84140 800C9940 0C03384C */  jal        func_800CE130
/* 84144 800C9944 A2600065 */   sb        $zero, 0x65($s3)
/* 84148 800C9948 10400004 */  beqz       $v0, .L800C995C
/* 8414C 800C994C 8FB90190 */   lw        $t9, 0x190($sp)
/* 84150 800C9950 10000070 */  b          .L800C9B14
/* 84154 800C9954 8FBF003C */   lw        $ra, 0x3C($sp)
/* 84158 800C9958 8FB90190 */  lw         $t9, 0x190($sp)
.L800C995C:
/* 8415C 800C995C 27A8017C */  addiu      $t0, $sp, 0x17C
/* 84160 800C9960 AFA80014 */  sw         $t0, 0x14($sp)
/* 84164 800C9964 02602025 */  or         $a0, $s3, $zero
/* 84168 800C9968 3205FFFF */  andi       $a1, $s0, 0xFFFF
/* 8416C 800C996C 02203025 */  or         $a2, $s1, $zero
/* 84170 800C9970 02403825 */  or         $a3, $s2, $zero
/* 84174 800C9974 0C03229C */  jal        func_800C8A70
/* 84178 800C9978 AFB90010 */   sw        $t9, 0x10($sp)
/* 8417C 800C997C 10400004 */  beqz       $v0, .L800C9990
/* 84180 800C9980 8FA9017C */   lw        $t1, 0x17C($sp)
/* 84184 800C9984 10000063 */  b          .L800C9B14
/* 84188 800C9988 8FBF003C */   lw        $ra, 0x3C($sp)
/* 8418C 800C998C 8FA9017C */  lw         $t1, 0x17C($sp)
.L800C9990:
/* 84190 800C9990 2401FFFF */  addiu      $at, $zero, -0x1
/* 84194 800C9994 15210003 */  bne        $t1, $at, .L800C99A4
/* 84198 800C9998 27A70054 */   addiu     $a3, $sp, 0x54
/* 8419C 800C999C 1000005C */  b          .L800C9B10
/* 841A0 800C99A0 24020005 */   addiu     $v0, $zero, 0x5
.L800C99A4:
/* 841A4 800C99A4 8E6A005C */  lw         $t2, 0x5C($s3)
/* 841A8 800C99A8 8FAB017C */  lw         $t3, 0x17C($sp)
/* 841AC 800C99AC 8E640004 */  lw         $a0, 0x4($s3)
/* 841B0 800C99B0 014B3021 */  addu       $a2, $t2, $t3
/* 841B4 800C99B4 30CCFFFF */  andi       $t4, $a2, 0xFFFF
/* 841B8 800C99B8 8E650008 */  lw         $a1, 0x8($s3)
/* 841BC 800C99BC 0C033B04 */  jal        func_800CEC10
/* 841C0 800C99C0 01803025 */   or        $a2, $t4, $zero
/* 841C4 800C99C4 10400004 */  beqz       $v0, .L800C99D8
/* 841C8 800C99C8 93B0005A */   lbu       $s0, 0x5A($sp)
/* 841CC 800C99CC 10000051 */  b          .L800C9B14
/* 841D0 800C99D0 8FBF003C */   lw        $ra, 0x3C($sp)
/* 841D4 800C99D4 93B0005A */  lbu        $s0, 0x5A($sp)
.L800C99D8:
/* 841D8 800C99D8 92620064 */  lbu        $v0, 0x64($s3)
/* 841DC 800C99DC 93B2005B */  lbu        $s2, 0x5B($sp)
/* 841E0 800C99E0 0202082A */  slt        $at, $s0, $v0
/* 841E4 800C99E4 1020002D */  beqz       $at, .L800C9A9C
/* 841E8 800C99E8 0200A025 */   or        $s4, $s0, $zero
/* 841EC 800C99EC 27B10074 */  addiu      $s1, $sp, 0x74
.L800C99F0:
/* 841F0 800C99F0 02602025 */  or         $a0, $s3, $zero
/* 841F4 800C99F4 02202825 */  or         $a1, $s1, $zero
/* 841F8 800C99F8 00003025 */  or         $a2, $zero, $zero
/* 841FC 800C99FC 0C0337A5 */  jal        func_800CDE94
/* 84200 800C9A00 320700FF */   andi      $a3, $s0, 0xFF
/* 84204 800C9A04 10400003 */  beqz       $v0, .L800C9A14
/* 84208 800C9A08 02602025 */   or        $a0, $s3, $zero
/* 8420C 800C9A0C 10000041 */  b          .L800C9B14
/* 84210 800C9A10 8FBF003C */   lw        $ra, 0x3C($sp)
.L800C9A14:
/* 84214 800C9A14 27AD0050 */  addiu      $t5, $sp, 0x50
/* 84218 800C9A18 240E0001 */  addiu      $t6, $zero, 0x1
/* 8421C 800C9A1C AFAE0018 */  sw         $t6, 0x18($sp)
/* 84220 800C9A20 AFAD0014 */  sw         $t5, 0x14($sp)
/* 84224 800C9A24 02202825 */  or         $a1, $s1, $zero
/* 84228 800C9A28 324600FF */  andi       $a2, $s2, 0xFF
/* 8422C 800C9A2C 27A70052 */  addiu      $a3, $sp, 0x52
/* 84230 800C9A30 0C0326CC */  jal        func_800C9B30
/* 84234 800C9A34 AFB00010 */   sw        $s0, 0x10($sp)
/* 84238 800C9A38 10400003 */  beqz       $v0, .L800C9A48
/* 8423C 800C9A3C 02602025 */   or        $a0, $s3, $zero
/* 84240 800C9A40 10000034 */  b          .L800C9B14
/* 84244 800C9A44 8FBF003C */   lw        $ra, 0x3C($sp)
.L800C9A48:
/* 84248 800C9A48 02202825 */  or         $a1, $s1, $zero
/* 8424C 800C9A4C 24060001 */  addiu      $a2, $zero, 0x1
/* 84250 800C9A50 0C0337A5 */  jal        func_800CDE94
/* 84254 800C9A54 320700FF */   andi      $a3, $s0, 0xFF
/* 84258 800C9A58 10400004 */  beqz       $v0, .L800C9A6C
/* 8425C 800C9A5C 97AF0050 */   lhu       $t7, 0x50($sp)
/* 84260 800C9A60 1000002C */  b          .L800C9B14
/* 84264 800C9A64 8FBF003C */   lw        $ra, 0x3C($sp)
/* 84268 800C9A68 97AF0050 */  lhu        $t7, 0x50($sp)
.L800C9A6C:
/* 8426C 800C9A6C 24010001 */  addiu      $at, $zero, 0x1
/* 84270 800C9A70 15E10004 */  bne        $t7, $at, .L800C9A84
/* 84274 800C9A74 00000000 */   nop
/* 84278 800C9A78 92620064 */  lbu        $v0, 0x64($s3)
/* 8427C 800C9A7C 10000008 */  b          .L800C9AA0
/* 84280 800C9A80 0282082A */   slt       $at, $s4, $v0
.L800C9A84:
/* 84284 800C9A84 92620064 */  lbu        $v0, 0x64($s3)
/* 84288 800C9A88 93B00050 */  lbu        $s0, 0x50($sp)
/* 8428C 800C9A8C 93B20051 */  lbu        $s2, 0x51($sp)
/* 84290 800C9A90 0202082A */  slt        $at, $s0, $v0
/* 84294 800C9A94 1420FFD6 */  bnez       $at, .L800C99F0
/* 84298 800C9A98 0200A025 */   or        $s4, $s0, $zero
.L800C9A9C:
/* 8429C 800C9A9C 0282082A */  slt        $at, $s4, $v0
.L800C9AA0:
/* 842A0 800C9AA0 14200003 */  bnez       $at, .L800C9AB0
/* 842A4 800C9AA4 27A20054 */   addiu     $v0, $sp, 0x54
/* 842A8 800C9AA8 10000019 */  b          .L800C9B10
/* 842AC 800C9AAC 24020003 */   addiu     $v0, $zero, 0x3
.L800C9AB0:
/* 842B0 800C9AB0 AFA00054 */  sw         $zero, 0x54($sp)
/* 842B4 800C9AB4 A7A00058 */  sh         $zero, 0x58($sp)
/* 842B8 800C9AB8 A7A0005A */  sh         $zero, 0x5A($sp)
/* 842BC 800C9ABC A7A0005E */  sh         $zero, 0x5E($sp)
/* 842C0 800C9AC0 27A30064 */  addiu      $v1, $sp, 0x64
.L800C9AC4:
/* 842C4 800C9AC4 24420001 */  addiu      $v0, $v0, 0x1
/* 842C8 800C9AC8 0043082B */  sltu       $at, $v0, $v1
/* 842CC 800C9ACC 1420FFFD */  bnez       $at, .L800C9AC4
/* 842D0 800C9AD0 A040000F */   sb        $zero, 0xF($v0)
/* 842D4 800C9AD4 A3A00061 */  sb         $zero, 0x61($sp)
/* 842D8 800C9AD8 A3A00062 */  sb         $zero, 0x62($sp)
/* 842DC 800C9ADC A3A00063 */  sb         $zero, 0x63($sp)
/* 842E0 800C9AE0 A3A00060 */  sb         $zero, 0x60($sp)
/* 842E4 800C9AE4 A3A0005C */  sb         $zero, 0x5C($sp)
/* 842E8 800C9AE8 8E78005C */  lw         $t8, 0x5C($s3)
/* 842EC 800C9AEC 8FB9017C */  lw         $t9, 0x17C($sp)
/* 842F0 800C9AF0 8E650008 */  lw         $a1, 0x8($s3)
/* 842F4 800C9AF4 03193021 */  addu       $a2, $t8, $t9
/* 842F8 800C9AF8 30C8FFFF */  andi       $t0, $a2, 0xFFFF
/* 842FC 800C9AFC 8E640004 */  lw         $a0, 0x4($s3)
/* 84300 800C9B00 AFA00010 */  sw         $zero, 0x10($sp)
/* 84304 800C9B04 01003025 */  or         $a2, $t0, $zero
/* 84308 800C9B08 0C033BE8 */  jal        func_800CEFA0
/* 8430C 800C9B0C 27A70054 */   addiu     $a3, $sp, 0x54
.L800C9B10:
/* 84310 800C9B10 8FBF003C */  lw         $ra, 0x3C($sp)
.L800C9B14:
/* 84314 800C9B14 8FB00028 */  lw         $s0, 0x28($sp)
/* 84318 800C9B18 8FB1002C */  lw         $s1, 0x2C($sp)
/* 8431C 800C9B1C 8FB20030 */  lw         $s2, 0x30($sp)
/* 84320 800C9B20 8FB30034 */  lw         $s3, 0x34($sp)
/* 84324 800C9B24 8FB40038 */  lw         $s4, 0x38($sp)
/* 84328 800C9B28 03E00008 */  jr         $ra
/* 8432C 800C9B2C 27BD0180 */   addiu     $sp, $sp, 0x180

glabel func_800C9B30
/* 84330 800C9B30 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 84334 800C9B34 AFA60058 */  sw         $a2, 0x58($sp)
/* 84338 800C9B38 93AE005B */  lbu        $t6, 0x5B($sp)
/* 8433C 800C9B3C AFBF0034 */  sw         $ra, 0x34($sp)
/* 84340 800C9B40 000E7840 */  sll        $t7, $t6, 1
/* 84344 800C9B44 AFB60030 */  sw         $s6, 0x30($sp)
/* 84348 800C9B48 AFB5002C */  sw         $s5, 0x2C($sp)
/* 8434C 800C9B4C AFB40028 */  sw         $s4, 0x28($sp)
/* 84350 800C9B50 AFB30024 */  sw         $s3, 0x24($sp)
/* 84354 800C9B54 AFB20020 */  sw         $s2, 0x20($sp)
/* 84358 800C9B58 AFB1001C */  sw         $s1, 0x1C($sp)
/* 8435C 800C9B5C AFB00018 */  sw         $s0, 0x18($sp)
/* 84360 800C9B60 00AF1821 */  addu       $v1, $a1, $t7
/* 84364 800C9B64 94610000 */  lhu        $at, 0x0($v1)
/* 84368 800C9B68 27B4004C */  addiu      $s4, $sp, 0x4C
/* 8436C 800C9B6C A6810000 */  sh         $at, 0x0($s4)
/* 84370 800C9B70 97A9004C */  lhu        $t1, 0x4C($sp)
/* 84374 800C9B74 24100001 */  addiu      $s0, $zero, 0x1
/* 84378 800C9B78 00809025 */  or         $s2, $a0, $zero
/* 8437C 800C9B7C 00A09825 */  or         $s3, $a1, $zero
/* 84380 800C9B80 1209000B */  beq        $s0, $t1, .L800C9BB0
/* 84384 800C9B84 00E0B025 */   or        $s6, $a3, $zero
/* 84388 800C9B88 93AA004C */  lbu        $t2, 0x4C($sp)
/* 8438C 800C9B8C 93B10063 */  lbu        $s1, 0x63($sp)
/* 84390 800C9B90 19400003 */  blez       $t2, .L800C9BA0
/* 84394 800C9B94 00000000 */   nop
/* 84398 800C9B98 10000003 */  b          .L800C9BA8
/* 8439C 800C9B9C 02001025 */   or        $v0, $s0, $zero
.L800C9BA0:
/* 843A0 800C9BA0 8E420060 */  lw         $v0, 0x60($s2)
/* 843A4 800C9BA4 00000000 */  nop
.L800C9BA8:
/* 843A8 800C9BA8 1000000A */  b          .L800C9BD4
/* 843AC 800C9BAC 93AB004D */   lbu       $t3, 0x4D($sp)
.L800C9BB0:
/* 843B0 800C9BB0 93B10063 */  lbu        $s1, 0x63($sp)
/* 843B4 800C9BB4 00000000 */  nop
/* 843B8 800C9BB8 1A200003 */  blez       $s1, .L800C9BC8
/* 843BC 800C9BBC 00000000 */   nop
/* 843C0 800C9BC0 10000003 */  b          .L800C9BD0
/* 843C4 800C9BC4 02001025 */   or        $v0, $s0, $zero
.L800C9BC8:
/* 843C8 800C9BC8 8E420060 */  lw         $v0, 0x60($s2)
/* 843CC 800C9BCC 00000000 */  nop
.L800C9BD0:
/* 843D0 800C9BD0 93AB004D */  lbu        $t3, 0x4D($sp)
.L800C9BD4:
/* 843D4 800C9BD4 97AC004C */  lhu        $t4, 0x4C($sp)
/* 843D8 800C9BD8 0162082A */  slt        $at, $t3, $v0
/* 843DC 800C9BDC 10200005 */  beqz       $at, .L800C9BF4
/* 843E0 800C9BE0 02402025 */   or        $a0, $s2, $zero
/* 843E4 800C9BE4 120C0004 */  beq        $s0, $t4, .L800C9BF8
/* 843E8 800C9BE8 8FAD0064 */   lw        $t5, 0x64($sp)
/* 843EC 800C9BEC 10000047 */  b          .L800C9D0C
/* 843F0 800C9BF0 24020003 */   addiu     $v0, $zero, 0x3
.L800C9BF4:
/* 843F4 800C9BF4 8FAD0064 */  lw         $t5, 0x64($sp)
.L800C9BF8:
/* 843F8 800C9BF8 96810000 */  lhu        $at, 0x0($s4)
/* 843FC 800C9BFC 24150003 */  addiu      $s5, $zero, 0x3
/* 84400 800C9C00 A5A10000 */  sh         $at, 0x0($t5)
/* 84404 800C9C04 8FB90068 */  lw         $t9, 0x68($sp)
/* 84408 800C9C08 02C03025 */  or         $a2, $s6, $zero
/* 8440C 800C9C0C 17300002 */  bne        $t9, $s0, .L800C9C18
/* 84410 800C9C10 322700FF */   andi      $a3, $s1, 0xFF
/* 84414 800C9C14 A4750000 */  sh         $s5, 0x0($v1)
.L800C9C18:
/* 84418 800C9C18 93A5005B */  lbu        $a1, 0x5B($sp)
/* 8441C 800C9C1C 0C03274D */  jal        func_800C9D34
/* 84420 800C9C20 24150003 */   addiu     $s5, $zero, 0x3
/* 84424 800C9C24 10400004 */  beqz       $v0, .L800C9C38
/* 84428 800C9C28 97B8004C */   lhu       $t8, 0x4C($sp)
/* 8442C 800C9C2C 10000038 */  b          .L800C9D10
/* 84430 800C9C30 8FBF0034 */   lw        $ra, 0x34($sp)
/* 84434 800C9C34 97B8004C */  lhu        $t8, 0x4C($sp)
.L800C9C38:
/* 84438 800C9C38 97A8004C */  lhu        $t0, 0x4C($sp)
/* 8443C 800C9C3C 16180003 */  bne        $s0, $t8, .L800C9C4C
/* 84440 800C9C40 00000000 */   nop
/* 84444 800C9C44 10000031 */  b          .L800C9D0C
/* 84448 800C9C48 00001025 */   or        $v0, $zero, $zero
.L800C9C4C:
/* 8444C 800C9C4C 8E420060 */  lw         $v0, 0x60($s2)
/* 84450 800C9C50 27B00048 */  addiu      $s0, $sp, 0x48
/* 84454 800C9C54 0102082A */  slt        $at, $t0, $v0
/* 84458 800C9C58 14200022 */  bnez       $at, .L800C9CE4
/* 8445C 800C9C5C 97AB004C */   lhu       $t3, 0x4C($sp)
.L800C9C60:
/* 84460 800C9C60 96810000 */  lhu        $at, 0x0($s4)
/* 84464 800C9C64 02402025 */  or         $a0, $s2, $zero
/* 84468 800C9C68 A6010000 */  sh         $at, 0x0($s0)
/* 8446C 800C9C6C 93AB004D */  lbu        $t3, 0x4D($sp)
/* 84470 800C9C70 02C03025 */  or         $a2, $s6, $zero
/* 84474 800C9C74 000B6040 */  sll        $t4, $t3, 1
/* 84478 800C9C78 026C7021 */  addu       $t6, $s3, $t4
/* 8447C 800C9C7C 95C10000 */  lhu        $at, 0x0($t6)
/* 84480 800C9C80 322700FF */  andi       $a3, $s1, 0xFF
/* 84484 800C9C84 A6810000 */  sh         $at, 0x0($s4)
/* 84488 800C9C88 93A50049 */  lbu        $a1, 0x49($sp)
/* 8448C 800C9C8C 00000000 */  nop
/* 84490 800C9C90 0005C040 */  sll        $t8, $a1, 1
/* 84494 800C9C94 02784021 */  addu       $t0, $s3, $t8
/* 84498 800C9C98 0C03274D */  jal        func_800C9D34
/* 8449C 800C9C9C A5150000 */   sh        $s5, 0x0($t0)
/* 844A0 800C9CA0 10400004 */  beqz       $v0, .L800C9CB4
/* 844A4 800C9CA4 93A9004C */   lbu       $t1, 0x4C($sp)
/* 844A8 800C9CA8 10000019 */  b          .L800C9D10
/* 844AC 800C9CAC 8FBF0034 */   lw        $ra, 0x34($sp)
/* 844B0 800C9CB0 93A9004C */  lbu        $t1, 0x4C($sp)
.L800C9CB4:
/* 844B4 800C9CB4 97AA004C */  lhu        $t2, 0x4C($sp)
/* 844B8 800C9CB8 12290004 */  beq        $s1, $t1, .L800C9CCC
/* 844BC 800C9CBC 00000000 */   nop
/* 844C0 800C9CC0 8E420060 */  lw         $v0, 0x60($s2)
/* 844C4 800C9CC4 10000007 */  b          .L800C9CE4
/* 844C8 800C9CC8 97AB004C */   lhu       $t3, 0x4C($sp)
.L800C9CCC:
/* 844CC 800C9CCC 8E420060 */  lw         $v0, 0x60($s2)
/* 844D0 800C9CD0 00000000 */  nop
/* 844D4 800C9CD4 0142082A */  slt        $at, $t2, $v0
/* 844D8 800C9CD8 1020FFE1 */  beqz       $at, .L800C9C60
/* 844DC 800C9CDC 00000000 */   nop
/* 844E0 800C9CE0 97AB004C */  lhu        $t3, 0x4C($sp)
.L800C9CE4:
/* 844E4 800C9CE4 93AC004D */  lbu        $t4, 0x4D($sp)
/* 844E8 800C9CE8 0162082A */  slt        $at, $t3, $v0
/* 844EC 800C9CEC 14200003 */  bnez       $at, .L800C9CFC
/* 844F0 800C9CF0 000C6840 */   sll       $t5, $t4, 1
/* 844F4 800C9CF4 026D7021 */  addu       $t6, $s3, $t5
/* 844F8 800C9CF8 A5D50000 */  sh         $s5, 0x0($t6)
.L800C9CFC:
/* 844FC 800C9CFC 8FAF0064 */  lw         $t7, 0x64($sp)
/* 84500 800C9D00 96810000 */  lhu        $at, 0x0($s4)
/* 84504 800C9D04 00001025 */  or         $v0, $zero, $zero
/* 84508 800C9D08 A5E10000 */  sh         $at, 0x0($t7)
.L800C9D0C:
/* 8450C 800C9D0C 8FBF0034 */  lw         $ra, 0x34($sp)
.L800C9D10:
/* 84510 800C9D10 8FB00018 */  lw         $s0, 0x18($sp)
/* 84514 800C9D14 8FB1001C */  lw         $s1, 0x1C($sp)
/* 84518 800C9D18 8FB20020 */  lw         $s2, 0x20($sp)
/* 8451C 800C9D1C 8FB30024 */  lw         $s3, 0x24($sp)
/* 84520 800C9D20 8FB40028 */  lw         $s4, 0x28($sp)
/* 84524 800C9D24 8FB5002C */  lw         $s5, 0x2C($sp)
/* 84528 800C9D28 8FB60030 */  lw         $s6, 0x30($sp)
/* 8452C 800C9D2C 03E00008 */  jr         $ra
/* 84530 800C9D30 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_800C9D34
/* 84534 800C9D34 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 84538 800C9D38 AFBF002C */  sw         $ra, 0x2C($sp)
/* 8453C 800C9D3C AFB50028 */  sw         $s5, 0x28($sp)
/* 84540 800C9D40 AFB40024 */  sw         $s4, 0x24($sp)
/* 84544 800C9D44 AFB30020 */  sw         $s3, 0x20($sp)
/* 84548 800C9D48 AFB2001C */  sw         $s2, 0x1C($sp)
/* 8454C 800C9D4C AFB10018 */  sw         $s1, 0x18($sp)
/* 84550 800C9D50 AFB00014 */  sw         $s0, 0x14($sp)
/* 84554 800C9D54 AFA50064 */  sw         $a1, 0x64($sp)
/* 84558 800C9D58 AFA7006C */  sw         $a3, 0x6C($sp)
/* 8455C 800C9D5C 30B100FF */  andi       $s1, $a1, 0xFF
/* 84560 800C9D60 00C09025 */  or         $s2, $a2, $zero
/* 84564 800C9D64 00809825 */  or         $s3, $a0, $zero
/* 84568 800C9D68 0C03384C */  jal        func_800CE130
/* 8456C 800C9D6C A0870065 */   sb        $a3, 0x65($a0)
/* 84570 800C9D70 10400003 */  beqz       $v0, .L800C9D80
/* 84574 800C9D74 00008025 */   or        $s0, $zero, $zero
/* 84578 800C9D78 1000001F */  b          .L800C9DF8
/* 8457C 800C9D7C 8FBF002C */   lw        $ra, 0x2C($sp)
.L800C9D80:
/* 84580 800C9D80 0011A0C0 */  sll        $s4, $s1, 3
/* 84584 800C9D84 27B10038 */  addiu      $s1, $sp, 0x38
/* 84588 800C9D88 24150008 */  addiu      $s5, $zero, 0x8
.L800C9D8C:
/* 8458C 800C9D8C 02903021 */  addu       $a2, $s4, $s0
/* 84590 800C9D90 30CFFFFF */  andi       $t7, $a2, 0xFFFF
/* 84594 800C9D94 8E640004 */  lw         $a0, 0x4($s3)
/* 84598 800C9D98 8E650008 */  lw         $a1, 0x8($s3)
/* 8459C 800C9D9C 01E03025 */  or         $a2, $t7, $zero
/* 845A0 800C9DA0 0C033B04 */  jal        func_800CEC10
/* 845A4 800C9DA4 02203825 */   or        $a3, $s1, $zero
/* 845A8 800C9DA8 10400008 */  beqz       $v0, .L800C9DCC
/* 845AC 800C9DAC 02202025 */   or        $a0, $s1, $zero
/* 845B0 800C9DB0 A2600065 */  sb         $zero, 0x65($s3)
/* 845B4 800C9DB4 AFA20058 */  sw         $v0, 0x58($sp)
/* 845B8 800C9DB8 0C03384C */  jal        func_800CE130
/* 845BC 800C9DBC 02602025 */   or        $a0, $s3, $zero
/* 845C0 800C9DC0 8FA20058 */  lw         $v0, 0x58($sp)
/* 845C4 800C9DC4 1000000C */  b          .L800C9DF8
/* 845C8 800C9DC8 8FBF002C */   lw        $ra, 0x2C($sp)
.L800C9DCC:
/* 845CC 800C9DCC 0C033554 */  jal        func_800CD550
/* 845D0 800C9DD0 24050020 */   addiu     $a1, $zero, 0x20
/* 845D4 800C9DD4 96580000 */  lhu        $t8, 0x0($s2)
/* 845D8 800C9DD8 26100001 */  addiu      $s0, $s0, 0x1
/* 845DC 800C9DDC 0058C821 */  addu       $t9, $v0, $t8
/* 845E0 800C9DE0 1615FFEA */  bne        $s0, $s5, .L800C9D8C
/* 845E4 800C9DE4 A6590000 */   sh        $t9, 0x0($s2)
/* 845E8 800C9DE8 A2600065 */  sb         $zero, 0x65($s3)
/* 845EC 800C9DEC 0C03384C */  jal        func_800CE130
/* 845F0 800C9DF0 02602025 */   or        $a0, $s3, $zero
/* 845F4 800C9DF4 8FBF002C */  lw         $ra, 0x2C($sp)
.L800C9DF8:
/* 845F8 800C9DF8 8FB00014 */  lw         $s0, 0x14($sp)
/* 845FC 800C9DFC 8FB10018 */  lw         $s1, 0x18($sp)
/* 84600 800C9E00 8FB2001C */  lw         $s2, 0x1C($sp)
/* 84604 800C9E04 8FB30020 */  lw         $s3, 0x20($sp)
/* 84608 800C9E08 8FB40024 */  lw         $s4, 0x24($sp)
/* 8460C 800C9E0C 8FB50028 */  lw         $s5, 0x28($sp)
/* 84610 800C9E10 03E00008 */  jr         $ra
/* 84614 800C9E14 27BD0060 */   addiu     $sp, $sp, 0x60
/* 84618 800C9E18 00000000 */  nop
/* 8461C 800C9E1C 00000000 */  nop
