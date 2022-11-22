.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel sqrtf
/* 81810 800C7010 03E00008 */  jr         $ra
/* 81814 800C7014 46006004 */   sqrt.s    $f0, $f12
/* 81818 800C7018 00000000 */  nop
/* 8181C 800C701C 00000000 */  nop
