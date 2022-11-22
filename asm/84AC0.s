.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

# Handwritten function
glabel func_800CA2C0
/* 84AC0 800CA2C0 18A0001F */  blez       $a1, .L800CA340
/* 84AC4 800CA2C4 00000000 */   nop
/* 84AC8 800CA2C8 240B2000 */  addiu      $t3, $zero, 0x2000
/* 84ACC 800CA2CC 00AB082B */  sltu       $at, $a1, $t3
/* 84AD0 800CA2D0 1020001D */  beqz       $at, .L800CA348
/* 84AD4 800CA2D4 00000000 */   nop
/* 84AD8 800CA2D8 00804025 */  or         $t0, $a0, $zero
/* 84ADC 800CA2DC 00854821 */  addu       $t1, $a0, $a1
/* 84AE0 800CA2E0 0109082B */  sltu       $at, $t0, $t1
/* 84AE4 800CA2E4 10200016 */  beqz       $at, .L800CA340
/* 84AE8 800CA2E8 00000000 */   nop
/* 84AEC 800CA2EC 310A000F */  andi       $t2, $t0, 0xF
/* 84AF0 800CA2F0 11400007 */  beqz       $t2, .L800CA310
/* 84AF4 800CA2F4 2529FFF0 */   addiu     $t1, $t1, -0x10
/* 84AF8 800CA2F8 010A4023 */  subu       $t0, $t0, $t2
/* 84AFC 800CA2FC BD150000 */  cache      0x15, 0x0($t0)
/* 84B00 800CA300 0109082B */  sltu       $at, $t0, $t1
/* 84B04 800CA304 1020000E */  beqz       $at, .L800CA340
/* 84B08 800CA308 00000000 */   nop
/* 84B0C 800CA30C 25080010 */  addiu      $t0, $t0, 0x10
.L800CA310:
/* 84B10 800CA310 312A000F */  andi       $t2, $t1, 0xF
/* 84B14 800CA314 11400006 */  beqz       $t2, .L800CA330
/* 84B18 800CA318 00000000 */   nop
/* 84B1C 800CA31C 012A4823 */  subu       $t1, $t1, $t2
/* 84B20 800CA320 BD350010 */  cache      0x15, 0x10($t1)
/* 84B24 800CA324 0128082B */  sltu       $at, $t1, $t0
/* 84B28 800CA328 14200005 */  bnez       $at, .L800CA340
/* 84B2C 800CA32C 00000000 */   nop
.L800CA330:
/* 84B30 800CA330 BD110000 */  cache      0x11, 0x0($t0)
/* 84B34 800CA334 0109082B */  sltu       $at, $t0, $t1
/* 84B38 800CA338 1420FFFD */  bnez       $at, .L800CA330
/* 84B3C 800CA33C 25080010 */   addiu     $t0, $t0, 0x10
.L800CA340:
/* 84B40 800CA340 03E00008 */  jr         $ra
/* 84B44 800CA344 00000000 */   nop
.L800CA348:
/* 84B48 800CA348 3C088000 */  lui        $t0, 0x8000
/* 84B4C 800CA34C 010B4821 */  addu       $t1, $t0, $t3
/* 84B50 800CA350 2529FFF0 */  addiu      $t1, $t1, -0x10
.L800CA354:
/* 84B54 800CA354 BD010000 */  cache      0x01, 0x0($t0)
/* 84B58 800CA358 0109082B */  sltu       $at, $t0, $t1
/* 84B5C 800CA35C 1420FFFD */  bnez       $at, .L800CA354
/* 84B60 800CA360 25080010 */   addiu     $t0, $t0, 0x10
/* 84B64 800CA364 03E00008 */  jr         $ra
/* 84B68 800CA368 00000000 */   nop
/* 84B6C 800CA36C 00000000 */  nop
