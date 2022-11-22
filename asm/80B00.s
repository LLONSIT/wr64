.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800C6300
/* 80B00 800C6300 3C0EA410 */  lui        $t6, %hi(D_A410000C)
/* 80B04 800C6304 03E00008 */  jr         $ra
/* 80B08 800C6308 ADC4000C */   sw        $a0, %lo(D_A410000C)($t6)
/* 80B0C 800C630C 00000000 */  nop
