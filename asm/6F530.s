.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

# Handwritten function
glabel func_800B4D30
/* 6F530 800B4D30 8C870008 */  lw         $a3, 0x8($a0)
/* 6F534 800B4D34 8C99000C */  lw         $t9, 0xC($a0)
/* 6F538 800B4D38 8C980004 */  lw         $t8, 0x4($a0)
/* 6F53C 800B4D3C 00E43820 */  add        $a3, $a3, $a0
/* 6F540 800B4D40 0324C820 */  add        $t9, $t9, $a0
/* 6F544 800B4D44 00003025 */  or         $a2, $zero, $zero
/* 6F548 800B4D48 20840010 */  addi       $a0, $a0, 0x10
/* 6F54C 800B4D4C 0305C020 */  add        $t8, $t8, $a1
.L800B4D50:
/* 6F550 800B4D50 54C00005 */  bnel       $a2, $zero, .L800B4D68
/* 6F554 800B4D54 0100482A */   slt       $t1, $t0, $zero
/* 6F558 800B4D58 8C880000 */  lw         $t0, 0x0($a0)
/* 6F55C 800B4D5C 24060020 */  addiu      $a2, $zero, 0x20
/* 6F560 800B4D60 20840004 */  addi       $a0, $a0, 0x4
/* 6F564 800B4D64 0100482A */  slt        $t1, $t0, $zero
.L800B4D68:
/* 6F568 800B4D68 51200007 */  beql       $t1, $zero, .L800B4D88
/* 6F56C 800B4D6C 94EA0000 */   lhu       $t2, 0x0($a3)
/* 6F570 800B4D70 832A0000 */  lb         $t2, 0x0($t9)
/* 6F574 800B4D74 23390001 */  addi       $t9, $t9, 0x1
/* 6F578 800B4D78 20A50001 */  addi       $a1, $a1, 0x1
/* 6F57C 800B4D7C 1000000D */  b          .L800B4DB4
/* 6F580 800B4D80 A0AAFFFF */   sb        $t2, -0x1($a1)
/* 6F584 800B4D84 94EA0000 */  lhu        $t2, 0x0($a3)
.L800B4D88:
/* 6F588 800B4D88 20E70002 */  addi       $a3, $a3, 0x2
/* 6F58C 800B4D8C 000A5B02 */  srl        $t3, $t2, 12
/* 6F590 800B4D90 314A0FFF */  andi       $t2, $t2, 0xFFF
/* 6F594 800B4D94 00AA4822 */  sub        $t1, $a1, $t2
/* 6F598 800B4D98 216B0003 */  addi       $t3, $t3, 0x3
.L800B4D9C:
/* 6F59C 800B4D9C 812AFFFF */  lb         $t2, -0x1($t1)
/* 6F5A0 800B4DA0 216BFFFF */  addi       $t3, $t3, -0x1
/* 6F5A4 800B4DA4 21290001 */  addi       $t1, $t1, 0x1
/* 6F5A8 800B4DA8 20A50001 */  addi       $a1, $a1, 0x1
/* 6F5AC 800B4DAC 1560FFFB */  bnez       $t3, .L800B4D9C
/* 6F5B0 800B4DB0 A0AAFFFF */   sb        $t2, -0x1($a1)
.L800B4DB4:
/* 6F5B4 800B4DB4 00084040 */  sll        $t0, $t0, 1
/* 6F5B8 800B4DB8 14B8FFE5 */  bne        $a1, $t8, .L800B4D50
/* 6F5BC 800B4DBC 20C6FFFF */   addi      $a2, $a2, -0x1
/* 6F5C0 800B4DC0 03E00008 */  jr         $ra
/* 6F5C4 800B4DC4 00000000 */   nop
/* 6F5C8 800B4DC8 00000000 */  nop
/* 6F5CC 800B4DCC 00000000 */  nop
