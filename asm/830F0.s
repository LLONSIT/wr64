.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800C88F0
/* 830F0 800C88F0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 830F4 800C88F4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 830F8 800C88F8 AFB00018 */  sw         $s0, 0x18($sp)
/* 830FC 800C88FC 00A08025 */  or         $s0, $a1, $zero
/* 83100 800C8900 AFA40028 */  sw         $a0, 0x28($sp)
/* 83104 800C8904 0C032E54 */  jal        func_800CB950
/* 83108 800C8908 AFA60030 */   sw        $a2, 0x30($sp)
/* 8310C 800C890C 8FA40028 */  lw         $a0, 0x28($sp)
/* 83110 800C8910 8FA50030 */  lw         $a1, 0x30($sp)
/* 83114 800C8914 0C032262 */  jal        func_800C8988
/* 83118 800C8918 00000000 */   nop
/* 8311C 800C891C 0C032E65 */  jal        func_800CB994
/* 83120 800C8920 AFA20024 */   sw        $v0, 0x24($sp)
/* 83124 800C8924 8FA30024 */  lw         $v1, 0x24($sp)
/* 83128 800C8928 8FAE0028 */  lw         $t6, 0x28($sp)
/* 8312C 800C892C 10600003 */  beqz       $v1, .L800C893C
/* 83130 800C8930 02002025 */   or        $a0, $s0, $zero
/* 83134 800C8934 10000010 */  b          .L800C8978
/* 83138 800C8938 00601025 */   or        $v0, $v1, $zero
.L800C893C:
/* 8313C 800C893C AE0E0004 */  sw         $t6, 0x4($s0)
/* 83140 800C8940 8FAF0030 */  lw         $t7, 0x30($sp)
/* 83144 800C8944 AE000000 */  sw         $zero, 0x0($s0)
/* 83148 800C8948 0C0336DE */  jal        func_800CDB78
/* 8314C 800C894C AE0F0008 */   sw        $t7, 0x8($s0)
/* 83150 800C8950 10400003 */  beqz       $v0, .L800C8960
/* 83154 800C8954 00000000 */   nop
/* 83158 800C8958 10000008 */  b          .L800C897C
/* 8315C 800C895C 8FBF001C */   lw        $ra, 0x1C($sp)
.L800C8960:
/* 83160 800C8960 0C033868 */  jal        func_800CE1A0
/* 83164 800C8964 02002025 */   or        $a0, $s0, $zero
/* 83168 800C8968 8E180000 */  lw         $t8, 0x0($s0)
/* 8316C 800C896C 00000000 */  nop
/* 83170 800C8970 37190001 */  ori        $t9, $t8, 0x1
/* 83174 800C8974 AE190000 */  sw         $t9, 0x0($s0)
.L800C8978:
/* 83178 800C8978 8FBF001C */  lw         $ra, 0x1C($sp)
.L800C897C:
/* 8317C 800C897C 8FB00018 */  lw         $s0, 0x18($sp)
/* 83180 800C8980 03E00008 */  jr         $ra
/* 83184 800C8984 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800C8988
/* 83188 800C8988 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 8318C 800C898C AFBF0014 */  sw         $ra, 0x14($sp)
/* 83190 800C8990 AFA40040 */  sw         $a0, 0x40($sp)
/* 83194 800C8994 AFA50044 */  sw         $a1, 0x44($sp)
/* 83198 800C8998 0C0321D5 */  jal        func_800C8754
/* 8319C 800C899C 00002025 */   or        $a0, $zero, $zero
/* 831A0 800C89A0 3C05801E */  lui        $a1, %hi(D_801DABF0)
/* 831A4 800C89A4 24A5ABF0 */  addiu      $a1, $a1, %lo(D_801DABF0)
/* 831A8 800C89A8 0C032E70 */  jal        func_800CB9C0
/* 831AC 800C89AC 24040001 */   addiu     $a0, $zero, 0x1
/* 831B0 800C89B0 8FA40040 */  lw         $a0, 0x40($sp)
/* 831B4 800C89B4 27A50038 */  addiu      $a1, $sp, 0x38
/* 831B8 800C89B8 0C031718 */  jal        func_800C5C60
/* 831BC 800C89BC 24060001 */   addiu     $a2, $zero, 0x1
/* 831C0 800C89C0 3C05801E */  lui        $a1, %hi(D_801DABF0)
/* 831C4 800C89C4 24A5ABF0 */  addiu      $a1, $a1, %lo(D_801DABF0)
/* 831C8 800C89C8 0C032E70 */  jal        func_800CB9C0
/* 831CC 800C89CC 00002025 */   or        $a0, $zero, $zero
/* 831D0 800C89D0 8FA40040 */  lw         $a0, 0x40($sp)
/* 831D4 800C89D4 AFA2003C */  sw         $v0, 0x3C($sp)
/* 831D8 800C89D8 27A50038 */  addiu      $a1, $sp, 0x38
/* 831DC 800C89DC 0C031718 */  jal        func_800C5C60
/* 831E0 800C89E0 24060001 */   addiu     $a2, $zero, 0x1
/* 831E4 800C89E4 27A40037 */  addiu      $a0, $sp, 0x37
/* 831E8 800C89E8 0C03220D */  jal        func_800C8834
/* 831EC 800C89EC 27A50024 */   addiu     $a1, $sp, 0x24
/* 831F0 800C89F0 8FAE0044 */  lw         $t6, 0x44($sp)
/* 831F4 800C89F4 27B80024 */  addiu      $t8, $sp, 0x24
/* 831F8 800C89F8 000E7880 */  sll        $t7, $t6, 2
/* 831FC 800C89FC 01F81821 */  addu       $v1, $t7, $t8
/* 83200 800C8A00 90620002 */  lbu        $v0, 0x2($v1)
/* 83204 800C8A04 8FBF0014 */  lw         $ra, 0x14($sp)
/* 83208 800C8A08 30440001 */  andi       $a0, $v0, 0x1
/* 8320C 800C8A0C 10800005 */  beqz       $a0, .L800C8A24
/* 83210 800C8A10 30590002 */   andi      $t9, $v0, 0x2
/* 83214 800C8A14 13200003 */  beqz       $t9, .L800C8A24
/* 83218 800C8A18 00000000 */   nop
/* 8321C 800C8A1C 1000000F */  b          .L800C8A5C
/* 83220 800C8A20 24020002 */   addiu     $v0, $zero, 0x2
.L800C8A24:
/* 83224 800C8A24 90680003 */  lbu        $t0, 0x3($v1)
/* 83228 800C8A28 00000000 */  nop
/* 8322C 800C8A2C 15000003 */  bnez       $t0, .L800C8A3C
/* 83230 800C8A30 00000000 */   nop
/* 83234 800C8A34 14800003 */  bnez       $a0, .L800C8A44
/* 83238 800C8A38 30490004 */   andi      $t1, $v0, 0x4
.L800C8A3C:
/* 8323C 800C8A3C 10000007 */  b          .L800C8A5C
/* 83240 800C8A40 24020001 */   addiu     $v0, $zero, 0x1
.L800C8A44:
/* 83244 800C8A44 11200004 */  beqz       $t1, .L800C8A58
/* 83248 800C8A48 8FA2003C */   lw        $v0, 0x3C($sp)
/* 8324C 800C8A4C 10000003 */  b          .L800C8A5C
/* 83250 800C8A50 24020004 */   addiu     $v0, $zero, 0x4
/* 83254 800C8A54 8FA2003C */  lw         $v0, 0x3C($sp)
.L800C8A58:
/* 83258 800C8A58 00000000 */  nop
.L800C8A5C:
/* 8325C 800C8A5C 03E00008 */  jr         $ra
/* 83260 800C8A60 27BD0040 */   addiu     $sp, $sp, 0x40
/* 83264 800C8A64 00000000 */  nop
/* 83268 800C8A68 00000000 */  nop
/* 8326C 800C8A6C 00000000 */  nop
