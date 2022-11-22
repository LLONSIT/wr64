.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800C7540
/* 81D40 800C7540 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 81D44 800C7544 AFBF0014 */  sw         $ra, 0x14($sp)
/* 81D48 800C7548 AFA5001C */  sw         $a1, 0x1C($sp)
/* 81D4C 800C754C AFA60020 */  sw         $a2, 0x20($sp)
/* 81D50 800C7550 AFA70024 */  sw         $a3, 0x24($sp)
/* 81D54 800C7554 0C033300 */  jal        func_800CCC00
/* 81D58 800C7558 AFA40018 */   sw        $a0, 0x18($sp)
/* 81D5C 800C755C 8FA40018 */  lw         $a0, 0x18($sp)
/* 81D60 800C7560 C7A4001C */  lwc1       $f4, 0x1C($sp)
/* 81D64 800C7564 E4840030 */  swc1       $f4, 0x30($a0)
/* 81D68 800C7568 C7A60020 */  lwc1       $f6, 0x20($sp)
/* 81D6C 800C756C E4860034 */  swc1       $f6, 0x34($a0)
/* 81D70 800C7570 C7A80024 */  lwc1       $f8, 0x24($sp)
/* 81D74 800C7574 E4880038 */  swc1       $f8, 0x38($a0)
/* 81D78 800C7578 8FBF0014 */  lw         $ra, 0x14($sp)
/* 81D7C 800C757C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 81D80 800C7580 03E00008 */  jr         $ra
/* 81D84 800C7584 00000000 */   nop

glabel func_800C7588
/* 81D88 800C7588 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 81D8C 800C758C AFBF0014 */  sw         $ra, 0x14($sp)
/* 81D90 800C7590 AFA40068 */  sw         $a0, 0x68($sp)
/* 81D94 800C7594 AFA5006C */  sw         $a1, 0x6C($sp)
/* 81D98 800C7598 AFA60070 */  sw         $a2, 0x70($sp)
/* 81D9C 800C759C AFA70074 */  sw         $a3, 0x74($sp)
/* 81DA0 800C75A0 0C033300 */  jal        func_800CCC00
/* 81DA4 800C75A4 27A40028 */   addiu     $a0, $sp, 0x28
/* 81DA8 800C75A8 C7A4006C */  lwc1       $f4, 0x6C($sp)
/* 81DAC 800C75AC C7A60070 */  lwc1       $f6, 0x70($sp)
/* 81DB0 800C75B0 C7A80074 */  lwc1       $f8, 0x74($sp)
/* 81DB4 800C75B4 27A40028 */  addiu      $a0, $sp, 0x28
/* 81DB8 800C75B8 8FA50068 */  lw         $a1, 0x68($sp)
/* 81DBC 800C75BC E7A40058 */  swc1       $f4, 0x58($sp)
/* 81DC0 800C75C0 E7A6005C */  swc1       $f6, 0x5C($sp)
/* 81DC4 800C75C4 0C0332C0 */  jal        func_800CCB00
/* 81DC8 800C75C8 E7A80060 */   swc1      $f8, 0x60($sp)
/* 81DCC 800C75CC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 81DD0 800C75D0 27BD0068 */  addiu      $sp, $sp, 0x68
/* 81DD4 800C75D4 03E00008 */  jr         $ra
/* 81DD8 800C75D8 00000000 */   nop
/* 81DDC 800C75DC 00000000 */  nop
