.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800C5DA0
/* 805A0 800C5DA0 3C0EA410 */  lui        $t6, %hi(D_A410000C)
/* 805A4 800C5DA4 03E00008 */  jr         $ra
/* 805A8 800C5DA8 8DC2000C */   lw        $v0, %lo(D_A410000C)($t6)
/* 805AC 800C5DAC 00000000 */  nop
/* 805B0 800C5DB0 00000000 */  nop
/* 805B4 800C5DB4 00000000 */  nop
/* 805B8 800C5DB8 00000000 */  nop
/* 805BC 800C5DBC 00000000 */  nop
/* 805C0 800C5DC0 00000000 */  nop
/* 805C4 800C5DC4 00000000 */  nop
/* 805C8 800C5DC8 00000000 */  nop
/* 805CC 800C5DCC 00000000 */  nop
/* 805D0 800C5DD0 00000000 */  nop
/* 805D4 800C5DD4 00000000 */  nop
/* 805D8 800C5DD8 00000000 */  nop
/* 805DC 800C5DDC 00000000 */  nop
/* 805E0 800C5DE0 00000000 */  nop
/* 805E4 800C5DE4 00000000 */  nop
/* 805E8 800C5DE8 00000000 */  nop
/* 805EC 800C5DEC 00000000 */  nop
