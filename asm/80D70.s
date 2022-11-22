.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800C6570
/* 80D70 800C6570 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 80D74 800C6574 AFBF001C */  sw         $ra, 0x1C($sp)
/* 80D78 800C6578 AFA40028 */  sw         $a0, 0x28($sp)
/* 80D7C 800C657C AFB10018 */  sw         $s1, 0x18($sp)
/* 80D80 800C6580 0C032AB4 */  jal        __osDisableInt
/* 80D84 800C6584 AFB00014 */   sw        $s0, 0x14($sp)
/* 80D88 800C6588 8FAE0028 */  lw         $t6, 0x28($sp)
/* 80D8C 800C658C 24010001 */  addiu      $at, $zero, 0x1
/* 80D90 800C6590 00408025 */  or         $s0, $v0, $zero
/* 80D94 800C6594 95D10010 */  lhu        $s1, 0x10($t6)
/* 80D98 800C6598 1221000C */  beq        $s1, $at, .L800C65CC
/* 80D9C 800C659C 24010008 */   addiu     $at, $zero, 0x8
/* 80DA0 800C65A0 1621002A */  bne        $s1, $at, .L800C664C
/* 80DA4 800C65A4 00000000 */   nop
/* 80DA8 800C65A8 8FB80028 */  lw         $t8, 0x28($sp)
/* 80DAC 800C65AC 240F0002 */  addiu      $t7, $zero, 0x2
/* 80DB0 800C65B0 3C04800F */  lui        $a0, %hi(D_800E9008)
/* 80DB4 800C65B4 A70F0010 */  sh         $t7, 0x10($t8)
/* 80DB8 800C65B8 8FA50028 */  lw         $a1, 0x28($sp)
/* 80DBC 800C65BC 0C032C88 */  jal        func_800CB220
/* 80DC0 800C65C0 24849008 */   addiu     $a0, $a0, %lo(D_800E9008)
/* 80DC4 800C65C4 10000021 */  b          .L800C664C
/* 80DC8 800C65C8 00000000 */   nop
.L800C65CC:
/* 80DCC 800C65CC 8FB90028 */  lw         $t9, 0x28($sp)
/* 80DD0 800C65D0 8F280008 */  lw         $t0, 0x8($t9)
/* 80DD4 800C65D4 11000005 */  beqz       $t0, .L800C65EC
/* 80DD8 800C65D8 00000000 */   nop
/* 80DDC 800C65DC 3C09800F */  lui        $t1, %hi(D_800E9008)
/* 80DE0 800C65E0 25299008 */  addiu      $t1, $t1, %lo(D_800E9008)
/* 80DE4 800C65E4 1509000A */  bne        $t0, $t1, .L800C6610
/* 80DE8 800C65E8 00000000 */   nop
.L800C65EC:
/* 80DEC 800C65EC 8FAB0028 */  lw         $t3, 0x28($sp)
/* 80DF0 800C65F0 240A0002 */  addiu      $t2, $zero, 0x2
/* 80DF4 800C65F4 3C04800F */  lui        $a0, %hi(D_800E9008)
/* 80DF8 800C65F8 A56A0010 */  sh         $t2, 0x10($t3)
/* 80DFC 800C65FC 8FA50028 */  lw         $a1, 0x28($sp)
/* 80E00 800C6600 0C032C88 */  jal        func_800CB220
/* 80E04 800C6604 24849008 */   addiu     $a0, $a0, %lo(D_800E9008)
/* 80E08 800C6608 10000010 */  b          .L800C664C
/* 80E0C 800C660C 00000000 */   nop
.L800C6610:
/* 80E10 800C6610 8FAD0028 */  lw         $t5, 0x28($sp)
/* 80E14 800C6614 240C0008 */  addiu      $t4, $zero, 0x8
/* 80E18 800C6618 A5AC0010 */  sh         $t4, 0x10($t5)
/* 80E1C 800C661C 8FAE0028 */  lw         $t6, 0x28($sp)
/* 80E20 800C6620 8DC40008 */  lw         $a0, 0x8($t6)
/* 80E24 800C6624 0C032C88 */  jal        func_800CB220
/* 80E28 800C6628 01C02825 */   or        $a1, $t6, $zero
/* 80E2C 800C662C 8FAF0028 */  lw         $t7, 0x28($sp)
/* 80E30 800C6630 0C032C9A */  jal        func_800CB268
/* 80E34 800C6634 8DE40008 */   lw        $a0, 0x8($t7)
/* 80E38 800C6638 00408825 */  or         $s1, $v0, $zero
/* 80E3C 800C663C 3C04800F */  lui        $a0, %hi(D_800E9008)
/* 80E40 800C6640 24849008 */  addiu      $a0, $a0, %lo(D_800E9008)
/* 80E44 800C6644 0C032C88 */  jal        func_800CB220
/* 80E48 800C6648 02202825 */   or        $a1, $s1, $zero
.L800C664C:
/* 80E4C 800C664C 3C18800F */  lui        $t8, %hi(D_800E9010)
/* 80E50 800C6650 8F189010 */  lw         $t8, %lo(D_800E9010)($t8)
/* 80E54 800C6654 17000005 */  bnez       $t8, .L800C666C
/* 80E58 800C6658 00000000 */   nop
/* 80E5C 800C665C 0C032C9E */  jal        func_800CB278
/* 80E60 800C6660 00000000 */   nop
/* 80E64 800C6664 1000000F */  b          .L800C66A4
/* 80E68 800C6668 00000000 */   nop
.L800C666C:
/* 80E6C 800C666C 3C19800F */  lui        $t9, %hi(D_800E9010)
/* 80E70 800C6670 3C09800F */  lui        $t1, %hi(D_800E9008)
/* 80E74 800C6674 8D299008 */  lw         $t1, %lo(D_800E9008)($t1)
/* 80E78 800C6678 8F399010 */  lw         $t9, %lo(D_800E9010)($t9)
/* 80E7C 800C667C 8D2A0004 */  lw         $t2, 0x4($t1)
/* 80E80 800C6680 8F280004 */  lw         $t0, 0x4($t9)
/* 80E84 800C6684 010A082A */  slt        $at, $t0, $t2
/* 80E88 800C6688 10200006 */  beqz       $at, .L800C66A4
/* 80E8C 800C668C 00000000 */   nop
/* 80E90 800C6690 240B0002 */  addiu      $t3, $zero, 0x2
/* 80E94 800C6694 3C04800F */  lui        $a0, %hi(D_800E9008)
/* 80E98 800C6698 A72B0010 */  sh         $t3, 0x10($t9)
/* 80E9C 800C669C 0C032C64 */  jal        func_800CB190
/* 80EA0 800C66A0 24849008 */   addiu     $a0, $a0, %lo(D_800E9008)
.L800C66A4:
/* 80EA4 800C66A4 0C032ABC */  jal        __osRestoreInt
/* 80EA8 800C66A8 02002025 */   or        $a0, $s0, $zero
/* 80EAC 800C66AC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 80EB0 800C66B0 8FB00014 */  lw         $s0, 0x14($sp)
/* 80EB4 800C66B4 8FB10018 */  lw         $s1, 0x18($sp)
/* 80EB8 800C66B8 03E00008 */  jr         $ra
/* 80EBC 800C66BC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800C66C0
/* 80EC0 800C66C0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 80EC4 800C66C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 80EC8 800C66C8 0C032FC4 */  jal        func_800CBF10
/* 80ECC 800C66CC AFA40020 */   sw        $a0, 0x20($sp)
/* 80ED0 800C66D0 AFA2001C */  sw         $v0, 0x1C($sp)
/* 80ED4 800C66D4 8FAE001C */  lw         $t6, 0x1C($sp)
/* 80ED8 800C66D8 31CF0100 */  andi       $t7, $t6, 0x100
/* 80EDC 800C66DC 11E00004 */  beqz       $t7, .L800C66F0
/* 80EE0 800C66E0 00000000 */   nop
/* 80EE4 800C66E4 24180001 */  addiu      $t8, $zero, 0x1
/* 80EE8 800C66E8 10000002 */  b          .L800C66F4
/* 80EEC 800C66EC AFB80018 */   sw        $t8, 0x18($sp)
.L800C66F0:
/* 80EF0 800C66F0 AFA00018 */  sw         $zero, 0x18($sp)
.L800C66F4:
/* 80EF4 800C66F4 8FB9001C */  lw         $t9, 0x1C($sp)
/* 80EF8 800C66F8 33280080 */  andi       $t0, $t9, 0x80
/* 80EFC 800C66FC 1100000B */  beqz       $t0, .L800C672C
/* 80F00 800C6700 00000000 */   nop
/* 80F04 800C6704 8FA90020 */  lw         $t1, 0x20($sp)
/* 80F08 800C6708 8FAB0018 */  lw         $t3, 0x18($sp)
/* 80F0C 800C670C 2401FFFD */  addiu      $at, $zero, -0x3
/* 80F10 800C6710 8D2A0004 */  lw         $t2, 0x4($t1)
/* 80F14 800C6714 014B6025 */  or         $t4, $t2, $t3
/* 80F18 800C6718 AD2C0004 */  sw         $t4, 0x4($t1)
/* 80F1C 800C671C 8FAD0020 */  lw         $t5, 0x20($sp)
/* 80F20 800C6720 8DAE0004 */  lw         $t6, 0x4($t5)
/* 80F24 800C6724 01C17824 */  and        $t7, $t6, $at
/* 80F28 800C6728 ADAF0004 */  sw         $t7, 0x4($t5)
.L800C672C:
/* 80F2C 800C672C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 80F30 800C6730 8FA20018 */  lw         $v0, 0x18($sp)
/* 80F34 800C6734 27BD0020 */  addiu      $sp, $sp, 0x20
/* 80F38 800C6738 03E00008 */  jr         $ra
/* 80F3C 800C673C 00000000 */   nop

# Handwritten function
glabel func_800C6740
/* 80F40 800C6740 3C088000 */  lui        $t0, 0x8000
/* 80F44 800C6744 240A2000 */  addiu      $t2, $zero, 0x2000
/* 80F48 800C6748 010A4821 */  addu       $t1, $t0, $t2
/* 80F4C 800C674C 2529FFF0 */  addiu      $t1, $t1, -0x10
.L800C6750:
/* 80F50 800C6750 BD010000 */  cache      0x01, 0x0($t0)
/* 80F54 800C6754 0109082B */  sltu       $at, $t0, $t1
/* 80F58 800C6758 1420FFFD */  bnez       $at, .L800C6750
/* 80F5C 800C675C 25080010 */   addiu     $t0, $t0, 0x10
/* 80F60 800C6760 03E00008 */  jr         $ra
/* 80F64 800C6764 00000000 */   nop
/* 80F68 800C6768 00000000 */  nop
/* 80F6C 800C676C 00000000 */  nop
