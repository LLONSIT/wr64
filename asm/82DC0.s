.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800C85C0
/* 82DC0 800C85C0 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 82DC4 800C85C4 AFBF003C */  sw         $ra, 0x3C($sp)
/* 82DC8 800C85C8 AFB5002C */  sw         $s5, 0x2C($sp)
/* 82DCC 800C85CC AFB20020 */  sw         $s2, 0x20($sp)
/* 82DD0 800C85D0 AFB1001C */  sw         $s1, 0x1C($sp)
/* 82DD4 800C85D4 00809025 */  or         $s2, $a0, $zero
/* 82DD8 800C85D8 AFBE0038 */  sw         $fp, 0x38($sp)
/* 82DDC 800C85DC AFB70034 */  sw         $s7, 0x34($sp)
/* 82DE0 800C85E0 AFB60030 */  sw         $s6, 0x30($sp)
/* 82DE4 800C85E4 AFB40028 */  sw         $s4, 0x28($sp)
/* 82DE8 800C85E8 AFB30024 */  sw         $s3, 0x24($sp)
/* 82DEC 800C85EC AFB00018 */  sw         $s0, 0x18($sp)
/* 82DF0 800C85F0 AFA50074 */  sw         $a1, 0x74($sp)
/* 82DF4 800C85F4 0000A825 */  or         $s5, $zero, $zero
/* 82DF8 800C85F8 0C032E54 */  jal        func_800CB950
/* 82DFC 800C85FC 24110003 */   addiu     $s1, $zero, 0x3
/* 82E00 800C8600 3C1E801E */  lui        $fp, %hi(D_801DABA1)
/* 82E04 800C8604 3C13801E */  lui        $s3, %hi(D_801DABF0)
/* 82E08 800C8608 2673ABF0 */  addiu      $s3, $s3, %lo(D_801DABF0)
/* 82E0C 800C860C 27DEABA1 */  addiu      $fp, $fp, %lo(D_801DABA1)
/* 82E10 800C8610 00008025 */  or         $s0, $zero, $zero
/* 82E14 800C8614 27B70054 */  addiu      $s7, $sp, 0x54
/* 82E18 800C8618 27B60067 */  addiu      $s6, $sp, 0x67
/* 82E1C 800C861C 27B40068 */  addiu      $s4, $sp, 0x68
.L800C8620:
/* 82E20 800C8620 0C0321D5 */  jal        func_800C8754
/* 82E24 800C8624 00002025 */   or        $a0, $zero, $zero
/* 82E28 800C8628 24040001 */  addiu      $a0, $zero, 0x1
/* 82E2C 800C862C 0C032E70 */  jal        func_800CB9C0
/* 82E30 800C8630 02602825 */   or        $a1, $s3, $zero
/* 82E34 800C8634 02402025 */  or         $a0, $s2, $zero
/* 82E38 800C8638 02802825 */  or         $a1, $s4, $zero
/* 82E3C 800C863C 0C031718 */  jal        func_800C5C60
/* 82E40 800C8640 24060001 */   addiu     $a2, $zero, 0x1
/* 82E44 800C8644 00002025 */  or         $a0, $zero, $zero
/* 82E48 800C8648 0C032E70 */  jal        func_800CB9C0
/* 82E4C 800C864C 02602825 */   or        $a1, $s3, $zero
/* 82E50 800C8650 AFA2006C */  sw         $v0, 0x6C($sp)
/* 82E54 800C8654 02402025 */  or         $a0, $s2, $zero
/* 82E58 800C8658 02802825 */  or         $a1, $s4, $zero
/* 82E5C 800C865C 0C031718 */  jal        func_800C5C60
/* 82E60 800C8660 24060001 */   addiu     $a2, $zero, 0x1
/* 82E64 800C8664 02C02025 */  or         $a0, $s6, $zero
/* 82E68 800C8668 0C03220D */  jal        func_800C8834
/* 82E6C 800C866C 02E02825 */   or        $a1, $s7, $zero
/* 82E70 800C8670 93C30000 */  lbu        $v1, 0x0($fp)
/* 82E74 800C8674 27A20054 */  addiu      $v0, $sp, 0x54
/* 82E78 800C8678 1860000C */  blez       $v1, .L800C86AC
/* 82E7C 800C867C 00000000 */   nop
.L800C8680:
/* 82E80 800C8680 904E0002 */  lbu        $t6, 0x2($v0)
/* 82E84 800C8684 00000000 */  nop
/* 82E88 800C8688 31CF0004 */  andi       $t7, $t6, 0x4
/* 82E8C 800C868C 15E00003 */  bnez       $t7, .L800C869C
/* 82E90 800C8690 00000000 */   nop
/* 82E94 800C8694 10000005 */  b          .L800C86AC
/* 82E98 800C8698 2631FFFF */   addiu     $s1, $s1, -0x1
.L800C869C:
/* 82E9C 800C869C 26100001 */  addiu      $s0, $s0, 0x1
/* 82EA0 800C86A0 0203082A */  slt        $at, $s0, $v1
/* 82EA4 800C86A4 1420FFF6 */  bnez       $at, .L800C8680
/* 82EA8 800C86A8 24420004 */   addiu     $v0, $v0, 0x4
.L800C86AC:
/* 82EAC 800C86AC 02031026 */  xor        $v0, $s0, $v1
/* 82EB0 800C86B0 14400002 */  bnez       $v0, .L800C86BC
/* 82EB4 800C86B4 00008025 */   or        $s0, $zero, $zero
/* 82EB8 800C86B8 00008825 */  or         $s1, $zero, $zero
.L800C86BC:
/* 82EBC 800C86BC 1E20FFD8 */  bgtz       $s1, .L800C8620
/* 82EC0 800C86C0 00000000 */   nop
/* 82EC4 800C86C4 18600011 */  blez       $v1, .L800C870C
/* 82EC8 800C86C8 27A20054 */   addiu     $v0, $sp, 0x54
.L800C86CC:
/* 82ECC 800C86CC 90580003 */  lbu        $t8, 0x3($v0)
/* 82ED0 800C86D0 00000000 */  nop
/* 82ED4 800C86D4 17000009 */  bnez       $t8, .L800C86FC
/* 82ED8 800C86D8 00000000 */   nop
/* 82EDC 800C86DC 90590002 */  lbu        $t9, 0x2($v0)
/* 82EE0 800C86E0 24090001 */  addiu      $t1, $zero, 0x1
/* 82EE4 800C86E4 33280001 */  andi       $t0, $t9, 0x1
/* 82EE8 800C86E8 11000004 */  beqz       $t0, .L800C86FC
/* 82EEC 800C86EC 02095004 */   sllv      $t2, $t1, $s0
/* 82EF0 800C86F0 02AAA825 */  or         $s5, $s5, $t2
/* 82EF4 800C86F4 32AB00FF */  andi       $t3, $s5, 0xFF
/* 82EF8 800C86F8 0160A825 */  or         $s5, $t3, $zero
.L800C86FC:
/* 82EFC 800C86FC 26100001 */  addiu      $s0, $s0, 0x1
/* 82F00 800C8700 0203082A */  slt        $at, $s0, $v1
/* 82F04 800C8704 1420FFF1 */  bnez       $at, .L800C86CC
/* 82F08 800C8708 24420004 */   addiu     $v0, $v0, 0x4
.L800C870C:
/* 82F0C 800C870C 0C032E65 */  jal        func_800CB994
/* 82F10 800C8710 00000000 */   nop
/* 82F14 800C8714 8FAC0074 */  lw         $t4, 0x74($sp)
/* 82F18 800C8718 00000000 */  nop
/* 82F1C 800C871C A1950000 */  sb         $s5, 0x0($t4)
/* 82F20 800C8720 8FBF003C */  lw         $ra, 0x3C($sp)
/* 82F24 800C8724 8FBE0038 */  lw         $fp, 0x38($sp)
/* 82F28 800C8728 8FB70034 */  lw         $s7, 0x34($sp)
/* 82F2C 800C872C 8FB60030 */  lw         $s6, 0x30($sp)
/* 82F30 800C8730 8FB5002C */  lw         $s5, 0x2C($sp)
/* 82F34 800C8734 8FB40028 */  lw         $s4, 0x28($sp)
/* 82F38 800C8738 8FB30024 */  lw         $s3, 0x24($sp)
/* 82F3C 800C873C 8FB20020 */  lw         $s2, 0x20($sp)
/* 82F40 800C8740 8FB1001C */  lw         $s1, 0x1C($sp)
/* 82F44 800C8744 8FB00018 */  lw         $s0, 0x18($sp)
/* 82F48 800C8748 8FA2006C */  lw         $v0, 0x6C($sp)
/* 82F4C 800C874C 03E00008 */  jr         $ra
/* 82F50 800C8750 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_800C8754
/* 82F54 800C8754 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 82F58 800C8758 308E00FF */  andi       $t6, $a0, 0xFF
/* 82F5C 800C875C AFA40018 */  sw         $a0, 0x18($sp)
/* 82F60 800C8760 3C01801E */  lui        $at, %hi(D_801DABA0)
/* 82F64 800C8764 3C03801E */  lui        $v1, %hi(D_801DABF0)
/* 82F68 800C8768 3C02801E */  lui        $v0, %hi(D_801DAC30)
/* 82F6C 800C876C 01C02025 */  or         $a0, $t6, $zero
/* 82F70 800C8770 A02EABA0 */  sb         $t6, %lo(D_801DABA0)($at)
/* 82F74 800C8774 2442AC30 */  addiu      $v0, $v0, %lo(D_801DAC30)
/* 82F78 800C8778 2463ABF0 */  addiu      $v1, $v1, %lo(D_801DABF0)
.L800C877C:
/* 82F7C 800C877C 24630004 */  addiu      $v1, $v1, 0x4
/* 82F80 800C8780 0062082B */  sltu       $at, $v1, $v0
/* 82F84 800C8784 1420FFFD */  bnez       $at, .L800C877C
/* 82F88 800C8788 AC60FFFC */   sw        $zero, -0x4($v1)
/* 82F8C 800C878C 3C05801E */  lui        $a1, %hi(D_801DABF0)
/* 82F90 800C8790 24A3ABF0 */  addiu      $v1, $a1, %lo(D_801DABF0)
/* 82F94 800C8794 240F0001 */  addiu      $t7, $zero, 0x1
/* 82F98 800C8798 AC6F003C */  sw         $t7, 0x3C($v1)
/* 82F9C 800C879C 3C06801E */  lui        $a2, %hi(D_801DABA1)
/* 82FA0 800C87A0 24C6ABA1 */  addiu      $a2, $a2, %lo(D_801DABA1)
/* 82FA4 800C87A4 90CD0000 */  lbu        $t5, 0x0($a2)
/* 82FA8 800C87A8 241800FF */  addiu      $t8, $zero, 0xFF
/* 82FAC 800C87AC 24190001 */  addiu      $t9, $zero, 0x1
/* 82FB0 800C87B0 24080003 */  addiu      $t0, $zero, 0x3
/* 82FB4 800C87B4 240900FF */  addiu      $t1, $zero, 0xFF
/* 82FB8 800C87B8 240A00FF */  addiu      $t2, $zero, 0xFF
/* 82FBC 800C87BC 240B00FF */  addiu      $t3, $zero, 0xFF
/* 82FC0 800C87C0 240C00FF */  addiu      $t4, $zero, 0xFF
/* 82FC4 800C87C4 A3B8000C */  sb         $t8, 0xC($sp)
/* 82FC8 800C87C8 A3B9000D */  sb         $t9, 0xD($sp)
/* 82FCC 800C87CC A3A8000E */  sb         $t0, 0xE($sp)
/* 82FD0 800C87D0 A3A4000F */  sb         $a0, 0xF($sp)
/* 82FD4 800C87D4 A3A90010 */  sb         $t1, 0x10($sp)
/* 82FD8 800C87D8 A3AA0011 */  sb         $t2, 0x11($sp)
/* 82FDC 800C87DC A3AB0012 */  sb         $t3, 0x12($sp)
/* 82FE0 800C87E0 A3AC0013 */  sb         $t4, 0x13($sp)
/* 82FE4 800C87E4 19A0000F */  blez       $t5, .L800C8824
/* 82FE8 800C87E8 00001025 */   or        $v0, $zero, $zero
/* 82FEC 800C87EC 27A4000C */  addiu      $a0, $sp, 0xC
.L800C87F0:
/* 82FF0 800C87F0 8C810000 */  lw         $at, 0x0($a0)
/* 82FF4 800C87F4 24420001 */  addiu      $v0, $v0, 0x1
/* 82FF8 800C87F8 A8610000 */  swl        $at, 0x0($v1)
/* 82FFC 800C87FC B8610003 */  swr        $at, 0x3($v1)
/* 83000 800C8800 8C8F0004 */  lw         $t7, 0x4($a0)
/* 83004 800C8804 24630008 */  addiu      $v1, $v1, 0x8
/* 83008 800C8808 A86FFFFC */  swl        $t7, -0x4($v1)
/* 8300C 800C880C B86FFFFF */  swr        $t7, -0x1($v1)
/* 83010 800C8810 90D80000 */  lbu        $t8, 0x0($a2)
/* 83014 800C8814 00000000 */  nop
/* 83018 800C8818 0058082A */  slt        $at, $v0, $t8
/* 8301C 800C881C 1420FFF4 */  bnez       $at, .L800C87F0
/* 83020 800C8820 00000000 */   nop
.L800C8824:
/* 83024 800C8824 241900FE */  addiu      $t9, $zero, 0xFE
/* 83028 800C8828 A0790000 */  sb         $t9, 0x0($v1)
/* 8302C 800C882C 03E00008 */  jr         $ra
/* 83030 800C8830 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800C8834
/* 83034 800C8834 3C07801E */  lui        $a3, %hi(D_801DABA1)
/* 83038 800C8838 24E7ABA1 */  addiu      $a3, $a3, %lo(D_801DABA1)
/* 8303C 800C883C 90EE0000 */  lbu        $t6, 0x0($a3)
/* 83040 800C8840 3C03801E */  lui        $v1, %hi(D_801DABF0)
/* 83044 800C8844 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 83048 800C8848 00001025 */  or         $v0, $zero, $zero
/* 8304C 800C884C 2463ABF0 */  addiu      $v1, $v1, %lo(D_801DABF0)
/* 83050 800C8850 19C00022 */  blez       $t6, .L800C88DC
/* 83054 800C8854 00003025 */   or        $a2, $zero, $zero
/* 83058 800C8858 27A8000C */  addiu      $t0, $sp, 0xC
.L800C885C:
/* 8305C 800C885C 88610000 */  lwl        $at, 0x0($v1)
/* 83060 800C8860 98610003 */  lwr        $at, 0x3($v1)
/* 83064 800C8864 24630008 */  addiu      $v1, $v1, 0x8
/* 83068 800C8868 AD010000 */  sw         $at, 0x0($t0)
/* 8306C 800C886C 8878FFFC */  lwl        $t8, -0x4($v1)
/* 83070 800C8870 9878FFFF */  lwr        $t8, -0x1($v1)
/* 83074 800C8874 00000000 */  nop
/* 83078 800C8878 AD180004 */  sw         $t8, 0x4($t0)
/* 8307C 800C887C 93B9000E */  lbu        $t9, 0xE($sp)
/* 83080 800C8880 00000000 */  nop
/* 83084 800C8884 332900C0 */  andi       $t1, $t9, 0xC0
/* 83088 800C8888 00095103 */  sra        $t2, $t1, 4
/* 8308C 800C888C 314B00FF */  andi       $t3, $t2, 0xFF
/* 83090 800C8890 1560000D */  bnez       $t3, .L800C88C8
/* 83094 800C8894 A0AA0003 */   sb        $t2, 0x3($a1)
/* 83098 800C8898 93AC0011 */  lbu        $t4, 0x11($sp)
/* 8309C 800C889C 93AE0010 */  lbu        $t6, 0x10($sp)
/* 830A0 800C88A0 000C6A00 */  sll        $t5, $t4, 8
/* 830A4 800C88A4 24190001 */  addiu      $t9, $zero, 0x1
/* 830A8 800C88A8 01AE7825 */  or         $t7, $t5, $t6
/* 830AC 800C88AC A4AF0000 */  sh         $t7, 0x0($a1)
/* 830B0 800C88B0 00D94804 */  sllv       $t1, $t9, $a2
/* 830B4 800C88B4 93B80012 */  lbu        $t8, 0x12($sp)
/* 830B8 800C88B8 00491025 */  or         $v0, $v0, $t1
/* 830BC 800C88BC 304A00FF */  andi       $t2, $v0, 0xFF
/* 830C0 800C88C0 01401025 */  or         $v0, $t2, $zero
/* 830C4 800C88C4 A0B80002 */  sb         $t8, 0x2($a1)
.L800C88C8:
/* 830C8 800C88C8 90EB0000 */  lbu        $t3, 0x0($a3)
/* 830CC 800C88CC 24C60001 */  addiu      $a2, $a2, 0x1
/* 830D0 800C88D0 00CB082A */  slt        $at, $a2, $t3
/* 830D4 800C88D4 1420FFE1 */  bnez       $at, .L800C885C
/* 830D8 800C88D8 24A50004 */   addiu     $a1, $a1, 0x4
.L800C88DC:
/* 830DC 800C88DC A0820000 */  sb         $v0, 0x0($a0)
/* 830E0 800C88E0 03E00008 */  jr         $ra
/* 830E4 800C88E4 27BD0018 */   addiu     $sp, $sp, 0x18
/* 830E8 800C88E8 00000000 */  nop
/* 830EC 800C88EC 00000000 */  nop
