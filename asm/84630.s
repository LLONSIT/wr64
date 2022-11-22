.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800C9E30
/* 84630 800C9E30 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 84634 800C9E34 AFBF0024 */  sw         $ra, 0x24($sp)
/* 84638 800C9E38 AFB30020 */  sw         $s3, 0x20($sp)
/* 8463C 800C9E3C AFB2001C */  sw         $s2, 0x1C($sp)
/* 84640 800C9E40 AFB10018 */  sw         $s1, 0x18($sp)
/* 84644 800C9E44 AFB00014 */  sw         $s0, 0x14($sp)
/* 84648 800C9E48 AFA5005C */  sw         $a1, 0x5C($sp)
/* 8464C 800C9E4C AFA60060 */  sw         $a2, 0x60($sp)
/* 84650 800C9E50 8C8E0000 */  lw         $t6, 0x0($a0)
/* 84654 800C9E54 00808825 */  or         $s1, $a0, $zero
/* 84658 800C9E58 31CF0001 */  andi       $t7, $t6, 0x1
/* 8465C 800C9E5C 15E00003 */  bnez       $t7, .L800C9E6C
/* 84660 800C9E60 00009025 */   or        $s2, $zero, $zero
/* 84664 800C9E64 10000035 */  b          .L800C9F3C
/* 84668 800C9E68 24020005 */   addiu     $v0, $zero, 0x5
.L800C9E6C:
/* 8466C 800C9E6C 0C03375F */  jal        func_800CDD7C
/* 84670 800C9E70 02202025 */   or        $a0, $s1, $zero
/* 84674 800C9E74 24010002 */  addiu      $at, $zero, 0x2
/* 84678 800C9E78 14410003 */  bne        $v0, $at, .L800C9E88
/* 8467C 800C9E7C 00000000 */   nop
/* 84680 800C9E80 1000002E */  b          .L800C9F3C
/* 84684 800C9E84 24020002 */   addiu     $v0, $zero, 0x2
.L800C9E88:
/* 84688 800C9E88 92380065 */  lbu        $t8, 0x65($s1)
/* 8468C 800C9E8C 02202025 */  or         $a0, $s1, $zero
/* 84690 800C9E90 13000007 */  beqz       $t8, .L800C9EB0
/* 84694 800C9E94 00000000 */   nop
/* 84698 800C9E98 0C03384C */  jal        func_800CE130
/* 8469C 800C9E9C A2200065 */   sb        $zero, 0x65($s1)
/* 846A0 800C9EA0 10400003 */  beqz       $v0, .L800C9EB0
/* 846A4 800C9EA4 00000000 */   nop
/* 846A8 800C9EA8 10000025 */  b          .L800C9F40
/* 846AC 800C9EAC 8FBF0024 */   lw        $ra, 0x24($sp)
.L800C9EB0:
/* 846B0 800C9EB0 8E390050 */  lw         $t9, 0x50($s1)
/* 846B4 800C9EB4 00008025 */  or         $s0, $zero, $zero
/* 846B8 800C9EB8 1B200019 */  blez       $t9, .L800C9F20
/* 846BC 800C9EBC 27B30030 */   addiu     $s3, $sp, 0x30
.L800C9EC0:
/* 846C0 800C9EC0 8E28005C */  lw         $t0, 0x5C($s1)
/* 846C4 800C9EC4 8E240004 */  lw         $a0, 0x4($s1)
/* 846C8 800C9EC8 01103021 */  addu       $a2, $t0, $s0
/* 846CC 800C9ECC 30C9FFFF */  andi       $t1, $a2, 0xFFFF
/* 846D0 800C9ED0 8E250008 */  lw         $a1, 0x8($s1)
/* 846D4 800C9ED4 01203025 */  or         $a2, $t1, $zero
/* 846D8 800C9ED8 0C033B04 */  jal        func_800CEC10
/* 846DC 800C9EDC 02603825 */   or        $a3, $s3, $zero
/* 846E0 800C9EE0 10400004 */  beqz       $v0, .L800C9EF4
/* 846E4 800C9EE4 97AA0034 */   lhu       $t2, 0x34($sp)
/* 846E8 800C9EE8 10000015 */  b          .L800C9F40
/* 846EC 800C9EEC 8FBF0024 */   lw        $ra, 0x24($sp)
/* 846F0 800C9EF0 97AA0034 */  lhu        $t2, 0x34($sp)
.L800C9EF4:
/* 846F4 800C9EF4 8FAB0030 */  lw         $t3, 0x30($sp)
/* 846F8 800C9EF8 11400004 */  beqz       $t2, .L800C9F0C
/* 846FC 800C9EFC 00000000 */   nop
/* 84700 800C9F00 11600002 */  beqz       $t3, .L800C9F0C
/* 84704 800C9F04 00000000 */   nop
/* 84708 800C9F08 26520001 */  addiu      $s2, $s2, 0x1
.L800C9F0C:
/* 8470C 800C9F0C 8E2C0050 */  lw         $t4, 0x50($s1)
/* 84710 800C9F10 26100001 */  addiu      $s0, $s0, 0x1
/* 84714 800C9F14 020C082A */  slt        $at, $s0, $t4
/* 84718 800C9F18 1420FFE9 */  bnez       $at, .L800C9EC0
/* 8471C 800C9F1C 00000000 */   nop
.L800C9F20:
/* 84720 800C9F20 8FAD0060 */  lw         $t5, 0x60($sp)
/* 84724 800C9F24 00001025 */  or         $v0, $zero, $zero
/* 84728 800C9F28 ADB20000 */  sw         $s2, 0x0($t5)
/* 8472C 800C9F2C 8FAF005C */  lw         $t7, 0x5C($sp)
/* 84730 800C9F30 8E2E0050 */  lw         $t6, 0x50($s1)
/* 84734 800C9F34 00000000 */  nop
/* 84738 800C9F38 ADEE0000 */  sw         $t6, 0x0($t7)
.L800C9F3C:
/* 8473C 800C9F3C 8FBF0024 */  lw         $ra, 0x24($sp)
.L800C9F40:
/* 84740 800C9F40 8FB00014 */  lw         $s0, 0x14($sp)
/* 84744 800C9F44 8FB10018 */  lw         $s1, 0x18($sp)
/* 84748 800C9F48 8FB2001C */  lw         $s2, 0x1C($sp)
/* 8474C 800C9F4C 8FB30020 */  lw         $s3, 0x20($sp)
/* 84750 800C9F50 03E00008 */  jr         $ra
/* 84754 800C9F54 27BD0058 */   addiu     $sp, $sp, 0x58
/* 84758 800C9F58 00000000 */  nop
/* 8475C 800C9F5C 00000000 */  nop
