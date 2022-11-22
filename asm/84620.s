.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800C9E20
/* 84620 800C9E20 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 84624 800C9E24 03E00008 */  jr         $ra
/* 84628 800C9E28 00811025 */   or        $v0, $a0, $at
/* 8462C 800C9E2C 00000000 */  nop
