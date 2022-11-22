.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800CA210
/* 84A10 800CA210 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 84A14 800CA214 AFA40020 */  sw         $a0, 0x20($sp)
/* 84A18 800CA218 27AE0024 */  addiu      $t6, $sp, 0x24
/* 84A1C 800CA21C AFBF0014 */  sw         $ra, 0x14($sp)
/* 84A20 800CA220 AFA50024 */  sw         $a1, 0x24($sp)
/* 84A24 800CA224 AFA60028 */  sw         $a2, 0x28($sp)
/* 84A28 800CA228 AFA7002C */  sw         $a3, 0x2C($sp)
/* 84A2C 800CA22C 25CF0004 */  addiu      $t7, $t6, 0x4
/* 84A30 800CA230 3C04800D */  lui        $a0, %hi(func_800CA27C)
/* 84A34 800CA234 AFAF0018 */  sw         $t7, 0x18($sp)
/* 84A38 800CA238 2484A27C */  addiu      $a0, $a0, %lo(func_800CA27C)
/* 84A3C 800CA23C 01E03825 */  or         $a3, $t7, $zero
/* 84A40 800CA240 8FA60024 */  lw         $a2, 0x24($sp)
/* 84A44 800CA244 0C033CCC */  jal        func_800CF330
/* 84A48 800CA248 8FA50020 */   lw        $a1, 0x20($sp)
/* 84A4C 800CA24C AFA2001C */  sw         $v0, 0x1C($sp)
/* 84A50 800CA250 8FB8001C */  lw         $t8, 0x1C($sp)
/* 84A54 800CA254 07000004 */  bltz       $t8, .L800CA268
/* 84A58 800CA258 00000000 */   nop
/* 84A5C 800CA25C 8FB90020 */  lw         $t9, 0x20($sp)
/* 84A60 800CA260 03384021 */  addu       $t0, $t9, $t8
/* 84A64 800CA264 A1000000 */  sb         $zero, 0x0($t0)
.L800CA268:
/* 84A68 800CA268 8FBF0014 */  lw         $ra, 0x14($sp)
/* 84A6C 800CA26C 8FA2001C */  lw         $v0, 0x1C($sp)
/* 84A70 800CA270 27BD0020 */  addiu      $sp, $sp, 0x20
/* 84A74 800CA274 03E00008 */  jr         $ra
/* 84A78 800CA278 00000000 */   nop

glabel func_800CA27C
/* 84A7C 800CA27C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 84A80 800CA280 AFBF0014 */  sw         $ra, 0x14($sp)
/* 84A84 800CA284 AFA40018 */  sw         $a0, 0x18($sp)
/* 84A88 800CA288 AFA5001C */  sw         $a1, 0x1C($sp)
/* 84A8C 800CA28C AFA60020 */  sw         $a2, 0x20($sp)
/* 84A90 800CA290 8FA60020 */  lw         $a2, 0x20($sp)
/* 84A94 800CA294 8FA5001C */  lw         $a1, 0x1C($sp)
/* 84A98 800CA298 0C034130 */  jal        func_800D04C0
/* 84A9C 800CA29C 8FA40018 */   lw        $a0, 0x18($sp)
/* 84AA0 800CA2A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 84AA4 800CA2A4 8FAE0020 */  lw         $t6, 0x20($sp)
/* 84AA8 800CA2A8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 84AAC 800CA2AC 03E00008 */  jr         $ra
/* 84AB0 800CA2B0 004E1021 */   addu      $v0, $v0, $t6
/* 84AB4 800CA2B4 00000000 */  nop
/* 84AB8 800CA2B8 00000000 */  nop
/* 84ABC 800CA2BC 00000000 */  nop
