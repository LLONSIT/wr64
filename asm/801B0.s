.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800C59B0
/* 801B0 800C59B0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 801B4 800C59B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 801B8 800C59B8 0C032AB4 */  jal        func_800CAAD0
/* 801BC 800C59BC AFA40020 */   sw        $a0, 0x20($sp)
/* 801C0 800C59C0 3C0F800F */  lui        $t7, %hi(D_800E90B4)
/* 801C4 800C59C4 8DEF90B4 */  lw         $t7, %lo(D_800E90B4)($t7)
/* 801C8 800C59C8 8FAE0020 */  lw         $t6, 0x20($sp)
/* 801CC 800C59CC AFA2001C */  sw         $v0, 0x1C($sp)
/* 801D0 800C59D0 3C18800F */  lui        $t8, %hi(D_800E90B4)
/* 801D4 800C59D4 ADEE0004 */  sw         $t6, 0x4($t7)
/* 801D8 800C59D8 8F1890B4 */  lw         $t8, %lo(D_800E90B4)($t8)
/* 801DC 800C59DC 97190000 */  lhu        $t9, 0x0($t8)
/* 801E0 800C59E0 37280010 */  ori        $t0, $t9, 0x10
/* 801E4 800C59E4 A7080000 */  sh         $t0, 0x0($t8)
/* 801E8 800C59E8 0C032ABC */  jal        func_800CAAF0
/* 801EC 800C59EC 8FA4001C */   lw        $a0, 0x1C($sp)
/* 801F0 800C59F0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 801F4 800C59F4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 801F8 800C59F8 03E00008 */  jr         $ra
/* 801FC 800C59FC 00000000 */   nop

glabel func_800C5A00
/* 80200 800C5A00 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 80204 800C5A04 AFBF0014 */  sw         $ra, 0x14($sp)
/* 80208 800C5A08 AFA40020 */  sw         $a0, 0x20($sp)
/* 8020C 800C5A0C 0C032E54 */  jal        func_800CB950
/* 80210 800C5A10 AFA0001C */   sw        $zero, 0x1C($sp)
/* 80214 800C5A14 3C0E801E */  lui        $t6, %hi(D_801DABA0)
/* 80218 800C5A18 91CEABA0 */  lbu        $t6, %lo(D_801DABA0)($t6)
/* 8021C 800C5A1C 24010001 */  addiu      $at, $zero, 0x1
/* 80220 800C5A20 11C1000C */  beq        $t6, $at, .L800C5A54
/* 80224 800C5A24 00000000 */   nop
/* 80228 800C5A28 0C0316DB */  jal        func_800C5B6C
/* 8022C 800C5A2C 00000000 */   nop
/* 80230 800C5A30 3C05801E */  lui        $a1, %hi(D_801DAB60)
/* 80234 800C5A34 24A5AB60 */  addiu      $a1, $a1, %lo(D_801DAB60)
/* 80238 800C5A38 0C032E70 */  jal        func_800CB9C0
/* 8023C 800C5A3C 24040001 */   addiu     $a0, $zero, 0x1
/* 80240 800C5A40 AFA2001C */  sw         $v0, 0x1C($sp)
/* 80244 800C5A44 8FA40020 */  lw         $a0, 0x20($sp)
/* 80248 800C5A48 00002825 */  or         $a1, $zero, $zero
/* 8024C 800C5A4C 0C031718 */  jal        func_800C5C60
/* 80250 800C5A50 24060001 */   addiu     $a2, $zero, 0x1
.L800C5A54:
/* 80254 800C5A54 AFA00018 */  sw         $zero, 0x18($sp)
.L800C5A58:
/* 80258 800C5A58 8FB80018 */  lw         $t8, 0x18($sp)
/* 8025C 800C5A5C 8FA80018 */  lw         $t0, 0x18($sp)
/* 80260 800C5A60 3C01801E */  lui        $at, %hi(D_801DAB60)
/* 80264 800C5A64 0018C880 */  sll        $t9, $t8, 2
/* 80268 800C5A68 00390821 */  addu       $at, $at, $t9
/* 8026C 800C5A6C 240F00FF */  addiu      $t7, $zero, 0xFF
/* 80270 800C5A70 AC2FAB60 */  sw         $t7, %lo(D_801DAB60)($at)
/* 80274 800C5A74 25090001 */  addiu      $t1, $t0, 0x1
/* 80278 800C5A78 29210010 */  slti       $at, $t1, 0x10
/* 8027C 800C5A7C 1420FFF6 */  bnez       $at, .L800C5A58
/* 80280 800C5A80 AFA90018 */   sw        $t1, 0x18($sp)
/* 80284 800C5A84 3C01801E */  lui        $at, %hi(D_801DAB9C)
/* 80288 800C5A88 3C05801E */  lui        $a1, %hi(D_801DAB60)
/* 8028C 800C5A8C AC20AB9C */  sw         $zero, %lo(D_801DAB9C)($at)
/* 80290 800C5A90 24A5AB60 */  addiu      $a1, $a1, %lo(D_801DAB60)
/* 80294 800C5A94 0C032E70 */  jal        func_800CB9C0
/* 80298 800C5A98 00002025 */   or        $a0, $zero, $zero
/* 8029C 800C5A9C 240A0001 */  addiu      $t2, $zero, 0x1
/* 802A0 800C5AA0 3C01801E */  lui        $at, %hi(D_801DABA0)
/* 802A4 800C5AA4 AFA2001C */  sw         $v0, 0x1C($sp)
/* 802A8 800C5AA8 0C032E65 */  jal        func_800CB994
/* 802AC 800C5AAC A02AABA0 */   sb        $t2, %lo(D_801DABA0)($at)
/* 802B0 800C5AB0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 802B4 800C5AB4 8FA2001C */  lw         $v0, 0x1C($sp)
/* 802B8 800C5AB8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 802BC 800C5ABC 03E00008 */  jr         $ra
/* 802C0 800C5AC0 00000000 */   nop

glabel func_800C5AC4
/* 802C4 800C5AC4 3C0F801E */  lui        $t7, %hi(D_801DABA1)
/* 802C8 800C5AC8 91EFABA1 */  lbu        $t7, %lo(D_801DABA1)($t7)
/* 802CC 800C5ACC 3C0E801E */  lui        $t6, %hi(D_801DAB60)
/* 802D0 800C5AD0 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 802D4 800C5AD4 25CEAB60 */  addiu      $t6, $t6, %lo(D_801DAB60)
/* 802D8 800C5AD8 AFAE000C */  sw         $t6, 0xC($sp)
/* 802DC 800C5ADC 19E00021 */  blez       $t7, .L800C5B64
/* 802E0 800C5AE0 AFA00000 */   sw        $zero, 0x0($sp)
.L800C5AE4:
/* 802E4 800C5AE4 8FB9000C */  lw         $t9, 0xC($sp)
/* 802E8 800C5AE8 27B80004 */  addiu      $t8, $sp, 0x4
/* 802EC 800C5AEC 8B210000 */  lwl        $at, 0x0($t9)
/* 802F0 800C5AF0 9B210003 */  lwr        $at, 0x3($t9)
/* 802F4 800C5AF4 AF010000 */  sw         $at, 0x0($t8)
/* 802F8 800C5AF8 8B290004 */  lwl        $t1, 0x4($t9)
/* 802FC 800C5AFC 9B290007 */  lwr        $t1, 0x7($t9)
/* 80300 800C5B00 AF090004 */  sw         $t1, 0x4($t8)
/* 80304 800C5B04 93AA0006 */  lbu        $t2, 0x6($sp)
/* 80308 800C5B08 314B00C0 */  andi       $t3, $t2, 0xC0
/* 8030C 800C5B0C 000B6103 */  sra        $t4, $t3, 4
/* 80310 800C5B10 A08C0004 */  sb         $t4, 0x4($a0)
/* 80314 800C5B14 908D0004 */  lbu        $t5, 0x4($a0)
/* 80318 800C5B18 15A00007 */  bnez       $t5, .L800C5B38
/* 8031C 800C5B1C 00000000 */   nop
/* 80320 800C5B20 97AE0008 */  lhu        $t6, 0x8($sp)
/* 80324 800C5B24 A48E0000 */  sh         $t6, 0x0($a0)
/* 80328 800C5B28 83AF000A */  lb         $t7, 0xA($sp)
/* 8032C 800C5B2C A08F0002 */  sb         $t7, 0x2($a0)
/* 80330 800C5B30 83A8000B */  lb         $t0, 0xB($sp)
/* 80334 800C5B34 A0880003 */  sb         $t0, 0x3($a0)
.L800C5B38:
/* 80338 800C5B38 8FB80000 */  lw         $t8, 0x0($sp)
/* 8033C 800C5B3C 3C0B801E */  lui        $t3, %hi(D_801DABA1)
/* 80340 800C5B40 916BABA1 */  lbu        $t3, %lo(D_801DABA1)($t3)
/* 80344 800C5B44 8FA9000C */  lw         $t1, 0xC($sp)
/* 80348 800C5B48 27190001 */  addiu      $t9, $t8, 0x1
/* 8034C 800C5B4C 032B082A */  slt        $at, $t9, $t3
/* 80350 800C5B50 252A0008 */  addiu      $t2, $t1, 0x8
/* 80354 800C5B54 AFAA000C */  sw         $t2, 0xC($sp)
/* 80358 800C5B58 AFB90000 */  sw         $t9, 0x0($sp)
/* 8035C 800C5B5C 1420FFE1 */  bnez       $at, .L800C5AE4
/* 80360 800C5B60 24840006 */   addiu     $a0, $a0, 0x6
.L800C5B64:
/* 80364 800C5B64 03E00008 */  jr         $ra
/* 80368 800C5B68 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_800C5B6C
/* 8036C 800C5B6C 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 80370 800C5B70 3C0E801E */  lui        $t6, %hi(D_801DAB60)
/* 80374 800C5B74 25CEAB60 */  addiu      $t6, $t6, %lo(D_801DAB60)
/* 80378 800C5B78 AFAE000C */  sw         $t6, 0xC($sp)
/* 8037C 800C5B7C AFA00000 */  sw         $zero, 0x0($sp)
.L800C5B80:
/* 80380 800C5B80 8FAF0000 */  lw         $t7, 0x0($sp)
/* 80384 800C5B84 8FB90000 */  lw         $t9, 0x0($sp)
/* 80388 800C5B88 3C01801E */  lui        $at, %hi(D_801DAB60)
/* 8038C 800C5B8C 000FC080 */  sll        $t8, $t7, 2
/* 80390 800C5B90 00380821 */  addu       $at, $at, $t8
/* 80394 800C5B94 AC20AB60 */  sw         $zero, %lo(D_801DAB60)($at)
/* 80398 800C5B98 27280001 */  addiu      $t0, $t9, 0x1
/* 8039C 800C5B9C 29010010 */  slti       $at, $t0, 0x10
/* 803A0 800C5BA0 1420FFF7 */  bnez       $at, .L800C5B80
/* 803A4 800C5BA4 AFA80000 */   sw        $t0, 0x0($sp)
/* 803A8 800C5BA8 3C19801E */  lui        $t9, %hi(D_801DABA1)
/* 803AC 800C5BAC 9339ABA1 */  lbu        $t9, %lo(D_801DABA1)($t9)
/* 803B0 800C5BB0 24090001 */  addiu      $t1, $zero, 0x1
/* 803B4 800C5BB4 3C01801E */  lui        $at, %hi(D_801DAB9C)
/* 803B8 800C5BB8 240A00FF */  addiu      $t2, $zero, 0xFF
/* 803BC 800C5BBC 240B0001 */  addiu      $t3, $zero, 0x1
/* 803C0 800C5BC0 240C0004 */  addiu      $t4, $zero, 0x4
/* 803C4 800C5BC4 240D0001 */  addiu      $t5, $zero, 0x1
/* 803C8 800C5BC8 340EFFFF */  ori        $t6, $zero, 0xFFFF
/* 803CC 800C5BCC 240FFFFF */  addiu      $t7, $zero, -0x1
/* 803D0 800C5BD0 2418FFFF */  addiu      $t8, $zero, -0x1
/* 803D4 800C5BD4 AC29AB9C */  sw         $t1, %lo(D_801DAB9C)($at)
/* 803D8 800C5BD8 A3AA0004 */  sb         $t2, 0x4($sp)
/* 803DC 800C5BDC A3AB0005 */  sb         $t3, 0x5($sp)
/* 803E0 800C5BE0 A3AC0006 */  sb         $t4, 0x6($sp)
/* 803E4 800C5BE4 A3AD0007 */  sb         $t5, 0x7($sp)
/* 803E8 800C5BE8 A7AE0008 */  sh         $t6, 0x8($sp)
/* 803EC 800C5BEC A3AF000A */  sb         $t7, 0xA($sp)
/* 803F0 800C5BF0 A3B8000B */  sb         $t8, 0xB($sp)
/* 803F4 800C5BF4 1B200013 */  blez       $t9, .L800C5C44
/* 803F8 800C5BF8 AFA00000 */   sw        $zero, 0x0($sp)
.L800C5BFC:
/* 803FC 800C5BFC 27A90004 */  addiu      $t1, $sp, 0x4
/* 80400 800C5C00 8D210000 */  lw         $at, 0x0($t1)
/* 80404 800C5C04 8FA8000C */  lw         $t0, 0xC($sp)
/* 80408 800C5C08 3C18801E */  lui        $t8, %hi(D_801DABA1)
/* 8040C 800C5C0C A9010000 */  swl        $at, 0x0($t0)
/* 80410 800C5C10 B9010003 */  swr        $at, 0x3($t0)
/* 80414 800C5C14 8D2B0004 */  lw         $t3, 0x4($t1)
/* 80418 800C5C18 A90B0004 */  swl        $t3, 0x4($t0)
/* 8041C 800C5C1C B90B0007 */  swr        $t3, 0x7($t0)
/* 80420 800C5C20 8FAE0000 */  lw         $t6, 0x0($sp)
/* 80424 800C5C24 9318ABA1 */  lbu        $t8, %lo(D_801DABA1)($t8)
/* 80428 800C5C28 8FAC000C */  lw         $t4, 0xC($sp)
/* 8042C 800C5C2C 25CF0001 */  addiu      $t7, $t6, 0x1
/* 80430 800C5C30 01F8082A */  slt        $at, $t7, $t8
/* 80434 800C5C34 258D0008 */  addiu      $t5, $t4, 0x8
/* 80438 800C5C38 AFAF0000 */  sw         $t7, 0x0($sp)
/* 8043C 800C5C3C 1420FFEF */  bnez       $at, .L800C5BFC
/* 80440 800C5C40 AFAD000C */   sw        $t5, 0xC($sp)
.L800C5C44:
/* 80444 800C5C44 8FAA000C */  lw         $t2, 0xC($sp)
/* 80448 800C5C48 241900FE */  addiu      $t9, $zero, 0xFE
/* 8044C 800C5C4C 27BD0010 */  addiu      $sp, $sp, 0x10
/* 80450 800C5C50 03E00008 */  jr         $ra
/* 80454 800C5C54 A1590000 */   sb        $t9, 0x0($t2)
/* 80458 800C5C58 00000000 */  nop
/* 8045C 800C5C5C 00000000 */  nop
