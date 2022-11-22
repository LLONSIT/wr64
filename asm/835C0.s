.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800C8DC0
/* 835C0 800C8DC0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 835C4 800C8DC4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 835C8 800C8DC8 AFB00018 */  sw         $s0, 0x18($sp)
/* 835CC 800C8DCC AFA50024 */  sw         $a1, 0x24($sp)
/* 835D0 800C8DD0 AFA60028 */  sw         $a2, 0x28($sp)
/* 835D4 800C8DD4 90AF0000 */  lbu        $t7, 0x0($a1)
/* 835D8 800C8DD8 90E20000 */  lbu        $v0, 0x0($a3)
/* 835DC 800C8DDC 00E08025 */  or         $s0, $a3, $zero
/* 835E0 800C8DE0 104F000C */  beq        $v0, $t7, .L800C8E14
/* 835E4 800C8DE4 00A07025 */   or        $t6, $a1, $zero
/* 835E8 800C8DE8 A0A20000 */  sb         $v0, 0x0($a1)
/* 835EC 800C8DEC 91C70000 */  lbu        $a3, 0x0($t6)
/* 835F0 800C8DF0 8FA50028 */  lw         $a1, 0x28($sp)
/* 835F4 800C8DF4 AFA40020 */  sw         $a0, 0x20($sp)
/* 835F8 800C8DF8 0C0337A5 */  jal        func_800CDE94
/* 835FC 800C8DFC 00003025 */   or        $a2, $zero, $zero
/* 83600 800C8E00 8FA40020 */  lw         $a0, 0x20($sp)
/* 83604 800C8E04 10400003 */  beqz       $v0, .L800C8E14
/* 83608 800C8E08 00000000 */   nop
/* 8360C 800C8E0C 10000021 */  b          .L800C8E94
/* 83610 800C8E10 8FBF001C */   lw        $ra, 0x1C($sp)
.L800C8E14:
/* 83614 800C8E14 92190001 */  lbu        $t9, 0x1($s0)
/* 83618 800C8E18 8FB80028 */  lw         $t8, 0x28($sp)
/* 8361C 800C8E1C 00194040 */  sll        $t0, $t9, 1
/* 83620 800C8E20 03084821 */  addu       $t1, $t8, $t0
/* 83624 800C8E24 95210000 */  lhu        $at, 0x0($t1)
/* 83628 800C8E28 00000000 */  nop
/* 8362C 800C8E2C A6010000 */  sh         $at, 0x0($s0)
/* 83630 800C8E30 8C8C0060 */  lw         $t4, 0x60($a0)
/* 83634 800C8E34 3023FFFF */  andi       $v1, $at, 0xFFFF
/* 83638 800C8E38 006C082A */  slt        $at, $v1, $t4
/* 8363C 800C8E3C 1420000E */  bnez       $at, .L800C8E78
/* 83640 800C8E40 24010001 */   addiu     $at, $zero, 0x1
/* 83644 800C8E44 920D0000 */  lbu        $t5, 0x0($s0)
/* 83648 800C8E48 908F0064 */  lbu        $t7, 0x64($a0)
/* 8364C 800C8E4C 00000000 */  nop
/* 83650 800C8E50 01AF082A */  slt        $at, $t5, $t7
/* 83654 800C8E54 10200008 */  beqz       $at, .L800C8E78
/* 83658 800C8E58 24010001 */   addiu     $at, $zero, 0x1
/* 8365C 800C8E5C 92020001 */  lbu        $v0, 0x1($s0)
/* 83660 800C8E60 00000000 */  nop
/* 83664 800C8E64 18400003 */  blez       $v0, .L800C8E74
/* 83668 800C8E68 28410080 */   slti      $at, $v0, 0x80
/* 8366C 800C8E6C 14200008 */  bnez       $at, .L800C8E90
/* 83670 800C8E70 00001025 */   or        $v0, $zero, $zero
.L800C8E74:
/* 83674 800C8E74 24010001 */  addiu      $at, $zero, 0x1
.L800C8E78:
/* 83678 800C8E78 14610003 */  bne        $v1, $at, .L800C8E88
/* 8367C 800C8E7C 00000000 */   nop
/* 83680 800C8E80 10000003 */  b          .L800C8E90
/* 83684 800C8E84 24020005 */   addiu     $v0, $zero, 0x5
.L800C8E88:
/* 83688 800C8E88 10000001 */  b          .L800C8E90
/* 8368C 800C8E8C 24020003 */   addiu     $v0, $zero, 0x3
.L800C8E90:
/* 83690 800C8E90 8FBF001C */  lw         $ra, 0x1C($sp)
.L800C8E94:
/* 83694 800C8E94 8FB00018 */  lw         $s0, 0x18($sp)
/* 83698 800C8E98 03E00008 */  jr         $ra
/* 8369C 800C8E9C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_800C8EA0
/* 836A0 800C8EA0 27BDFE88 */  addiu      $sp, $sp, -0x178
/* 836A4 800C8EA4 AFBF0034 */  sw         $ra, 0x34($sp)
/* 836A8 800C8EA8 AFB40030 */  sw         $s4, 0x30($sp)
/* 836AC 800C8EAC AFB3002C */  sw         $s3, 0x2C($sp)
/* 836B0 800C8EB0 AFB20028 */  sw         $s2, 0x28($sp)
/* 836B4 800C8EB4 AFB10024 */  sw         $s1, 0x24($sp)
/* 836B8 800C8EB8 AFB00020 */  sw         $s0, 0x20($sp)
/* 836BC 800C8EBC AFA60180 */  sw         $a2, 0x180($sp)
/* 836C0 800C8EC0 8C8E0050 */  lw         $t6, 0x50($a0)
/* 836C4 800C8EC4 30D000FF */  andi       $s0, $a2, 0xFF
/* 836C8 800C8EC8 00AE082A */  slt        $at, $a1, $t6
/* 836CC 800C8ECC 00E08825 */  or         $s1, $a3, $zero
/* 836D0 800C8ED0 10200003 */  beqz       $at, .L800C8EE0
/* 836D4 800C8ED4 00809025 */   or        $s2, $a0, $zero
/* 836D8 800C8ED8 04A10004 */  bgez       $a1, .L800C8EEC
/* 836DC 800C8EDC 8FA20188 */   lw        $v0, 0x188($sp)
.L800C8EE0:
/* 836E0 800C8EE0 100000C3 */  b          .L800C91F0
/* 836E4 800C8EE4 24020005 */   addiu     $v0, $zero, 0x5
/* 836E8 800C8EE8 8FA20188 */  lw         $v0, 0x188($sp)
.L800C8EEC:
/* 836EC 800C8EEC 00000000 */  nop
/* 836F0 800C8EF0 18400003 */  blez       $v0, .L800C8F00
/* 836F4 800C8EF4 304F001F */   andi      $t7, $v0, 0x1F
/* 836F8 800C8EF8 11E00003 */  beqz       $t7, .L800C8F08
/* 836FC 800C8EFC 00000000 */   nop
.L800C8F00:
/* 83700 800C8F00 100000BB */  b          .L800C91F0
/* 83704 800C8F04 24020005 */   addiu     $v0, $zero, 0x5
.L800C8F08:
/* 83708 800C8F08 06200003 */  bltz       $s1, .L800C8F18
/* 8370C 800C8F0C 3238001F */   andi      $t8, $s1, 0x1F
/* 83710 800C8F10 13000003 */  beqz       $t8, .L800C8F20
/* 83714 800C8F14 00000000 */   nop
.L800C8F18:
/* 83718 800C8F18 100000B5 */  b          .L800C91F0
/* 8371C 800C8F1C 24020005 */   addiu     $v0, $zero, 0x5
.L800C8F20:
/* 83720 800C8F20 8E590000 */  lw         $t9, 0x0($s2)
/* 83724 800C8F24 02402025 */  or         $a0, $s2, $zero
/* 83728 800C8F28 33280001 */  andi       $t0, $t9, 0x1
/* 8372C 800C8F2C 15000003 */  bnez       $t0, .L800C8F3C
/* 83730 800C8F30 00000000 */   nop
/* 83734 800C8F34 100000AE */  b          .L800C91F0
/* 83738 800C8F38 24020005 */   addiu     $v0, $zero, 0x5
.L800C8F3C:
/* 8373C 800C8F3C 0C03375F */  jal        func_800CDD7C
/* 83740 800C8F40 AFA5017C */   sw        $a1, 0x17C($sp)
/* 83744 800C8F44 24010002 */  addiu      $at, $zero, 0x2
/* 83748 800C8F48 14410003 */  bne        $v0, $at, .L800C8F58
/* 8374C 800C8F4C 00000000 */   nop
/* 83750 800C8F50 100000A7 */  b          .L800C91F0
/* 83754 800C8F54 24020002 */   addiu     $v0, $zero, 0x2
.L800C8F58:
/* 83758 800C8F58 92490065 */  lbu        $t1, 0x65($s2)
/* 8375C 800C8F5C 02402025 */  or         $a0, $s2, $zero
/* 83760 800C8F60 11200007 */  beqz       $t1, .L800C8F80
/* 83764 800C8F64 00000000 */   nop
/* 83768 800C8F68 0C03384C */  jal        func_800CE130
/* 8376C 800C8F6C A2400065 */   sb        $zero, 0x65($s2)
/* 83770 800C8F70 10400003 */  beqz       $v0, .L800C8F80
/* 83774 800C8F74 00000000 */   nop
/* 83778 800C8F78 1000009E */  b          .L800C91F4
/* 8377C 800C8F7C 8FBF0034 */   lw        $ra, 0x34($sp)
.L800C8F80:
/* 83780 800C8F80 8E4A005C */  lw         $t2, 0x5C($s2)
/* 83784 800C8F84 8FAB017C */  lw         $t3, 0x17C($sp)
/* 83788 800C8F88 8E440004 */  lw         $a0, 0x4($s2)
/* 8378C 800C8F8C 014B3021 */  addu       $a2, $t2, $t3
/* 83790 800C8F90 30CCFFFF */  andi       $t4, $a2, 0xFFFF
/* 83794 800C8F94 8E450008 */  lw         $a1, 0x8($s2)
/* 83798 800C8F98 01803025 */  or         $a2, $t4, $zero
/* 8379C 800C8F9C 0C033B04 */  jal        func_800CEC10
/* 837A0 800C8FA0 27A70154 */   addiu     $a3, $sp, 0x154
/* 837A4 800C8FA4 10400004 */  beqz       $v0, .L800C8FB8
/* 837A8 800C8FA8 97AD015A */   lhu       $t5, 0x15A($sp)
/* 837AC 800C8FAC 10000091 */  b          .L800C91F4
/* 837B0 800C8FB0 8FBF0034 */   lw        $ra, 0x34($sp)
/* 837B4 800C8FB4 97AD015A */  lhu        $t5, 0x15A($sp)
.L800C8FB8:
/* 837B8 800C8FB8 8E4E0060 */  lw         $t6, 0x60($s2)
/* 837BC 800C8FBC 93AF015A */  lbu        $t7, 0x15A($sp)
/* 837C0 800C8FC0 01AE082A */  slt        $at, $t5, $t6
/* 837C4 800C8FC4 1420000B */  bnez       $at, .L800C8FF4
/* 837C8 800C8FC8 97A8015A */   lhu       $t0, 0x15A($sp)
/* 837CC 800C8FCC 92580064 */  lbu        $t8, 0x64($s2)
/* 837D0 800C8FD0 93B9015B */  lbu        $t9, 0x15B($sp)
/* 837D4 800C8FD4 01F8082A */  slt        $at, $t7, $t8
/* 837D8 800C8FD8 10200006 */  beqz       $at, .L800C8FF4
/* 837DC 800C8FDC 97A8015A */   lhu       $t0, 0x15A($sp)
/* 837E0 800C8FE0 1B200003 */  blez       $t9, .L800C8FF0
/* 837E4 800C8FE4 2B210080 */   slti      $at, $t9, 0x80
/* 837E8 800C8FE8 14200009 */  bnez       $at, .L800C9010
/* 837EC 800C8FEC 00000000 */   nop
.L800C8FF0:
/* 837F0 800C8FF0 97A8015A */  lhu        $t0, 0x15A($sp)
.L800C8FF4:
/* 837F4 800C8FF4 24010001 */  addiu      $at, $zero, 0x1
/* 837F8 800C8FF8 15010003 */  bne        $t0, $at, .L800C9008
/* 837FC 800C8FFC 00000000 */   nop
/* 83800 800C9000 1000007B */  b          .L800C91F0
/* 83804 800C9004 24020005 */   addiu     $v0, $zero, 0x5
.L800C9008:
/* 83808 800C9008 10000079 */  b          .L800C91F0
/* 8380C 800C900C 24020003 */   addiu     $v0, $zero, 0x3
.L800C9010:
/* 83810 800C9010 16000008 */  bnez       $s0, .L800C9034
/* 83814 800C9014 AFB0003C */   sw        $s0, 0x3C($sp)
/* 83818 800C9018 93AA015C */  lbu        $t2, 0x15C($sp)
/* 8381C 800C901C 00000000 */  nop
/* 83820 800C9020 314B0002 */  andi       $t3, $t2, 0x2
/* 83824 800C9024 15600004 */  bnez       $t3, .L800C9038
/* 83828 800C9028 240C00FF */   addiu     $t4, $zero, 0xFF
/* 8382C 800C902C 10000070 */  b          .L800C91F0
/* 83830 800C9030 24020006 */   addiu     $v0, $zero, 0x6
.L800C9034:
/* 83834 800C9034 240C00FF */  addiu      $t4, $zero, 0xFF
.L800C9038:
/* 83838 800C9038 A3AC0043 */  sb         $t4, 0x43($sp)
/* 8383C 800C903C 27AD015A */  addiu      $t5, $sp, 0x15A
/* 83840 800C9040 27B40050 */  addiu      $s4, $sp, 0x50
/* 83844 800C9044 06210003 */  bgez       $s1, .L800C9054
/* 83848 800C9048 00111143 */   sra       $v0, $s1, 5
/* 8384C 800C904C 2621001F */  addiu      $at, $s1, 0x1F
/* 83850 800C9050 00011143 */  sra        $v0, $at, 5
.L800C9054:
/* 83854 800C9054 95A10000 */  lhu        $at, 0x0($t5)
/* 83858 800C9058 00408025 */  or         $s0, $v0, $zero
/* 8385C 800C905C A6810000 */  sh         $at, 0x0($s4)
/* 83860 800C9060 28410008 */  slti       $at, $v0, 0x8
/* 83864 800C9064 1420000C */  bnez       $at, .L800C9098
/* 83868 800C9068 02402025 */   or        $a0, $s2, $zero
.L800C906C:
/* 8386C 800C906C 27A50043 */  addiu      $a1, $sp, 0x43
/* 83870 800C9070 27A60054 */  addiu      $a2, $sp, 0x54
/* 83874 800C9074 0C032370 */  jal        func_800C8DC0
/* 83878 800C9078 02803825 */   or        $a3, $s4, $zero
/* 8387C 800C907C 10400003 */  beqz       $v0, .L800C908C
/* 83880 800C9080 2610FFF8 */   addiu     $s0, $s0, -0x8
/* 83884 800C9084 1000005B */  b          .L800C91F4
/* 83888 800C9088 8FBF0034 */   lw        $ra, 0x34($sp)
.L800C908C:
/* 8388C 800C908C 2A010008 */  slti       $at, $s0, 0x8
/* 83890 800C9090 1020FFF6 */  beqz       $at, .L800C906C
/* 83894 800C9094 02402025 */   or        $a0, $s2, $zero
.L800C9098:
/* 83898 800C9098 8FA20188 */  lw         $v0, 0x188($sp)
/* 8389C 800C909C 8FB1018C */  lw         $s1, 0x18C($sp)
/* 838A0 800C90A0 04410003 */  bgez       $v0, .L800C90B0
/* 838A4 800C90A4 0002C943 */   sra       $t9, $v0, 5
/* 838A8 800C90A8 2441001F */  addiu      $at, $v0, 0x1F
/* 838AC 800C90AC 0001C943 */  sra        $t9, $at, 5
.L800C90B0:
/* 838B0 800C90B0 1B200031 */  blez       $t9, .L800C9178
/* 838B4 800C90B4 03209825 */   or        $s3, $t9, $zero
.L800C90B8:
/* 838B8 800C90B8 24010008 */  addiu      $at, $zero, 0x8
/* 838BC 800C90BC 16010009 */  bne        $s0, $at, .L800C90E4
/* 838C0 800C90C0 02402025 */   or        $a0, $s2, $zero
/* 838C4 800C90C4 27A50043 */  addiu      $a1, $sp, 0x43
/* 838C8 800C90C8 27A60054 */  addiu      $a2, $sp, 0x54
/* 838CC 800C90CC 0C032370 */  jal        func_800C8DC0
/* 838D0 800C90D0 02803825 */   or        $a3, $s4, $zero
/* 838D4 800C90D4 10400003 */  beqz       $v0, .L800C90E4
/* 838D8 800C90D8 00008025 */   or        $s0, $zero, $zero
/* 838DC 800C90DC 10000045 */  b          .L800C91F4
/* 838E0 800C90E0 8FBF0034 */   lw        $ra, 0x34($sp)
.L800C90E4:
/* 838E4 800C90E4 93A80050 */  lbu        $t0, 0x50($sp)
/* 838E8 800C90E8 92490065 */  lbu        $t1, 0x65($s2)
/* 838EC 800C90EC 02402025 */  or         $a0, $s2, $zero
/* 838F0 800C90F0 11090008 */  beq        $t0, $t1, .L800C9114
/* 838F4 800C90F4 93AA0051 */   lbu       $t2, 0x51($sp)
/* 838F8 800C90F8 0C03384C */  jal        func_800CE130
/* 838FC 800C90FC A2480065 */   sb        $t0, 0x65($s2)
/* 83900 800C9100 10400004 */  beqz       $v0, .L800C9114
/* 83904 800C9104 93AA0051 */   lbu       $t2, 0x51($sp)
/* 83908 800C9108 1000003A */  b          .L800C91F4
/* 8390C 800C910C 8FBF0034 */   lw        $ra, 0x34($sp)
/* 83910 800C9110 93AA0051 */  lbu        $t2, 0x51($sp)
.L800C9114:
/* 83914 800C9114 8FAF003C */  lw         $t7, 0x3C($sp)
/* 83918 800C9118 000A58C0 */  sll        $t3, $t2, 3
/* 8391C 800C911C 01703021 */  addu       $a2, $t3, $s0
/* 83920 800C9120 30CCFFFF */  andi       $t4, $a2, 0xFFFF
/* 83924 800C9124 15E00007 */  bnez       $t7, .L800C9144
/* 83928 800C9128 01803025 */   or        $a2, $t4, $zero
/* 8392C 800C912C 8E440004 */  lw         $a0, 0x4($s2)
/* 83930 800C9130 8E450008 */  lw         $a1, 0x8($s2)
/* 83934 800C9134 0C033B04 */  jal        func_800CEC10
/* 83938 800C9138 02203825 */   or        $a3, $s1, $zero
/* 8393C 800C913C 10000007 */  b          .L800C915C
/* 83940 800C9140 00401825 */   or        $v1, $v0, $zero
.L800C9144:
/* 83944 800C9144 8E440004 */  lw         $a0, 0x4($s2)
/* 83948 800C9148 8E450008 */  lw         $a1, 0x8($s2)
/* 8394C 800C914C AFA00010 */  sw         $zero, 0x10($sp)
/* 83950 800C9150 0C033BE8 */  jal        func_800CEFA0
/* 83954 800C9154 02203825 */   or        $a3, $s1, $zero
/* 83958 800C9158 00401825 */  or         $v1, $v0, $zero
.L800C915C:
/* 8395C 800C915C 10400003 */  beqz       $v0, .L800C916C
/* 83960 800C9160 26310020 */   addiu     $s1, $s1, 0x20
/* 83964 800C9164 10000022 */  b          .L800C91F0
/* 83968 800C9168 00601025 */   or        $v0, $v1, $zero
.L800C916C:
/* 8396C 800C916C 2673FFFF */  addiu      $s3, $s3, -0x1
/* 83970 800C9170 1660FFD1 */  bnez       $s3, .L800C90B8
/* 83974 800C9174 26100001 */   addiu     $s0, $s0, 0x1
.L800C9178:
/* 83978 800C9178 8FAE003C */  lw         $t6, 0x3C($sp)
/* 8397C 800C917C 24010001 */  addiu      $at, $zero, 0x1
/* 83980 800C9180 15C1001B */  bne        $t6, $at, .L800C91F0
/* 83984 800C9184 00001025 */   or        $v0, $zero, $zero
/* 83988 800C9188 93A2015C */  lbu        $v0, 0x15C($sp)
/* 8398C 800C918C 02402025 */  or         $a0, $s2, $zero
/* 83990 800C9190 304D0002 */  andi       $t5, $v0, 0x2
/* 83994 800C9194 15A00015 */  bnez       $t5, .L800C91EC
/* 83998 800C9198 34580002 */   ori       $t8, $v0, 0x2
/* 8399C 800C919C A3B8015C */  sb         $t8, 0x15C($sp)
/* 839A0 800C91A0 0C03384C */  jal        func_800CE130
/* 839A4 800C91A4 A2400065 */   sb        $zero, 0x65($s2)
/* 839A8 800C91A8 10400003 */  beqz       $v0, .L800C91B8
/* 839AC 800C91AC 27A70154 */   addiu     $a3, $sp, 0x154
/* 839B0 800C91B0 10000010 */  b          .L800C91F4
/* 839B4 800C91B4 8FBF0034 */   lw        $ra, 0x34($sp)
.L800C91B8:
/* 839B8 800C91B8 8E59005C */  lw         $t9, 0x5C($s2)
/* 839BC 800C91BC 8FA9017C */  lw         $t1, 0x17C($sp)
/* 839C0 800C91C0 8E440004 */  lw         $a0, 0x4($s2)
/* 839C4 800C91C4 03293021 */  addu       $a2, $t9, $t1
/* 839C8 800C91C8 30C8FFFF */  andi       $t0, $a2, 0xFFFF
/* 839CC 800C91CC 8E450008 */  lw         $a1, 0x8($s2)
/* 839D0 800C91D0 AFA00010 */  sw         $zero, 0x10($sp)
/* 839D4 800C91D4 0C033BE8 */  jal        func_800CEFA0
/* 839D8 800C91D8 01003025 */   or        $a2, $t0, $zero
/* 839DC 800C91DC 10400003 */  beqz       $v0, .L800C91EC
/* 839E0 800C91E0 00000000 */   nop
/* 839E4 800C91E4 10000003 */  b          .L800C91F4
/* 839E8 800C91E8 8FBF0034 */   lw        $ra, 0x34($sp)
.L800C91EC:
/* 839EC 800C91EC 00001025 */  or         $v0, $zero, $zero
.L800C91F0:
/* 839F0 800C91F0 8FBF0034 */  lw         $ra, 0x34($sp)
.L800C91F4:
/* 839F4 800C91F4 8FB00020 */  lw         $s0, 0x20($sp)
/* 839F8 800C91F8 8FB10024 */  lw         $s1, 0x24($sp)
/* 839FC 800C91FC 8FB20028 */  lw         $s2, 0x28($sp)
/* 83A00 800C9200 8FB3002C */  lw         $s3, 0x2C($sp)
/* 83A04 800C9204 8FB40030 */  lw         $s4, 0x30($sp)
/* 83A08 800C9208 03E00008 */  jr         $ra
/* 83A0C 800C920C 27BD0178 */   addiu     $sp, $sp, 0x178

glabel func_800C9210
/* 83A10 800C9210 27BDFD58 */  addiu      $sp, $sp, -0x2A8
/* 83A14 800C9214 AFA502AC */  sw         $a1, 0x2AC($sp)
/* 83A18 800C9218 97AE02AE */  lhu        $t6, 0x2AE($sp)
/* 83A1C 800C921C AFBE0048 */  sw         $fp, 0x48($sp)
/* 83A20 800C9220 AFB70044 */  sw         $s7, 0x44($sp)
/* 83A24 800C9224 AFB5003C */  sw         $s5, 0x3C($sp)
/* 83A28 800C9228 0080A825 */  or         $s5, $a0, $zero
/* 83A2C 800C922C 00E0F025 */  or         $fp, $a3, $zero
/* 83A30 800C9230 AFBF004C */  sw         $ra, 0x4C($sp)
/* 83A34 800C9234 AFB60040 */  sw         $s6, 0x40($sp)
/* 83A38 800C9238 AFB40038 */  sw         $s4, 0x38($sp)
/* 83A3C 800C923C AFB30034 */  sw         $s3, 0x34($sp)
/* 83A40 800C9240 AFB20030 */  sw         $s2, 0x30($sp)
/* 83A44 800C9244 AFB1002C */  sw         $s1, 0x2C($sp)
/* 83A48 800C9248 AFB00028 */  sw         $s0, 0x28($sp)
/* 83A4C 800C924C AFA602B0 */  sw         $a2, 0x2B0($sp)
/* 83A50 800C9250 AFA00298 */  sw         $zero, 0x298($sp)
/* 83A54 800C9254 A3A0006A */  sb         $zero, 0x6A($sp)
/* 83A58 800C9258 11C00003 */  beqz       $t6, .L800C9268
/* 83A5C 800C925C 0000B825 */   or        $s7, $zero, $zero
/* 83A60 800C9260 14C00004 */  bnez       $a2, .L800C9274
/* 83A64 800C9264 8FB102BC */   lw        $s1, 0x2BC($sp)
.L800C9268:
/* 83A68 800C9268 100000DA */  b          .L800C95D4
/* 83A6C 800C926C 24020005 */   addiu     $v0, $zero, 0x5
/* 83A70 800C9270 8FB102BC */  lw         $s1, 0x2BC($sp)
.L800C9274:
/* 83A74 800C9274 8EB90000 */  lw         $t9, 0x0($s5)
/* 83A78 800C9278 263000FF */  addiu      $s0, $s1, 0xFF
/* 83A7C 800C927C 06010003 */  bgez       $s0, .L800C928C
/* 83A80 800C9280 0010C203 */   sra       $t8, $s0, 8
/* 83A84 800C9284 260100FF */  addiu      $at, $s0, 0xFF
/* 83A88 800C9288 0001C203 */  sra        $t8, $at, 8
.L800C928C:
/* 83A8C 800C928C 33290001 */  andi       $t1, $t9, 0x1
/* 83A90 800C9290 03008025 */  or         $s0, $t8, $zero
/* 83A94 800C9294 15200003 */  bnez       $t1, .L800C92A4
/* 83A98 800C9298 03009825 */   or        $s3, $t8, $zero
/* 83A9C 800C929C 100000CD */  b          .L800C95D4
/* 83AA0 800C92A0 24020005 */   addiu     $v0, $zero, 0x5
.L800C92A4:
/* 83AA4 800C92A4 0C03375F */  jal        func_800CDD7C
/* 83AA8 800C92A8 02A02025 */   or        $a0, $s5, $zero
/* 83AAC 800C92AC 24010002 */  addiu      $at, $zero, 0x2
/* 83AB0 800C92B0 14410003 */  bne        $v0, $at, .L800C92C0
/* 83AB4 800C92B4 02A02025 */   or        $a0, $s5, $zero
/* 83AB8 800C92B8 100000C6 */  b          .L800C95D4
/* 83ABC 800C92BC 24020002 */   addiu     $v0, $zero, 0x2
.L800C92C0:
/* 83AC0 800C92C0 8FB202B8 */  lw         $s2, 0x2B8($sp)
/* 83AC4 800C92C4 8FAA02C0 */  lw         $t2, 0x2C0($sp)
/* 83AC8 800C92C8 97A502AE */  lhu        $a1, 0x2AE($sp)
/* 83ACC 800C92CC 8FA602B0 */  lw         $a2, 0x2B0($sp)
/* 83AD0 800C92D0 03C03825 */  or         $a3, $fp, $zero
/* 83AD4 800C92D4 AFB20010 */  sw         $s2, 0x10($sp)
/* 83AD8 800C92D8 0C03229C */  jal        func_800C8A70
/* 83ADC 800C92DC AFAA0014 */   sw        $t2, 0x14($sp)
/* 83AE0 800C92E0 10400005 */  beqz       $v0, .L800C92F8
/* 83AE4 800C92E4 24010005 */   addiu     $at, $zero, 0x5
/* 83AE8 800C92E8 10410004 */  beq        $v0, $at, .L800C92FC
/* 83AEC 800C92EC 8FAB02C0 */   lw        $t3, 0x2C0($sp)
/* 83AF0 800C92F0 100000B9 */  b          .L800C95D8
/* 83AF4 800C92F4 8FBF004C */   lw        $ra, 0x4C($sp)
.L800C92F8:
/* 83AF8 800C92F8 8FAB02C0 */  lw         $t3, 0x2C0($sp)
.L800C92FC:
/* 83AFC 800C92FC 2401FFFF */  addiu      $at, $zero, -0x1
/* 83B00 800C9300 8D6C0000 */  lw         $t4, 0x0($t3)
/* 83B04 800C9304 02A02025 */  or         $a0, $s5, $zero
/* 83B08 800C9308 11810003 */  beq        $t4, $at, .L800C9318
/* 83B0C 800C930C 00000000 */   nop
/* 83B10 800C9310 100000B0 */  b          .L800C95D4
/* 83B14 800C9314 24020009 */   addiu     $v0, $zero, 0x9
.L800C9318:
/* 83B18 800C9318 0C032304 */  jal        func_800C8C10
/* 83B1C 800C931C 27A50060 */   addiu     $a1, $sp, 0x60
/* 83B20 800C9320 8FAD0060 */  lw         $t5, 0x60($sp)
/* 83B24 800C9324 00000000 */  nop
/* 83B28 800C9328 01B1082A */  slt        $at, $t5, $s1
/* 83B2C 800C932C 10200003 */  beqz       $at, .L800C933C
/* 83B30 800C9330 00000000 */   nop
/* 83B34 800C9334 100000A7 */  b          .L800C95D4
/* 83B38 800C9338 24020007 */   addiu     $v0, $zero, 0x7
.L800C933C:
/* 83B3C 800C933C 120000A5 */  beqz       $s0, .L800C95D4
/* 83B40 800C9340 24020005 */   addiu     $v0, $zero, 0x5
/* 83B44 800C9344 8FAE02C0 */  lw         $t6, 0x2C0($sp)
/* 83B48 800C9348 02A02025 */  or         $a0, $s5, $zero
/* 83B4C 800C934C 00002825 */  or         $a1, $zero, $zero
/* 83B50 800C9350 00003025 */  or         $a2, $zero, $zero
/* 83B54 800C9354 00003825 */  or         $a3, $zero, $zero
/* 83B58 800C9358 AFA00010 */  sw         $zero, 0x10($sp)
/* 83B5C 800C935C 0C03229C */  jal        func_800C8A70
/* 83B60 800C9360 AFAE0014 */   sw        $t6, 0x14($sp)
/* 83B64 800C9364 10400005 */  beqz       $v0, .L800C937C
/* 83B68 800C9368 24010005 */   addiu     $at, $zero, 0x5
/* 83B6C 800C936C 10410004 */  beq        $v0, $at, .L800C9380
/* 83B70 800C9370 8FAF02C0 */   lw        $t7, 0x2C0($sp)
/* 83B74 800C9374 10000098 */  b          .L800C95D8
/* 83B78 800C9378 8FBF004C */   lw        $ra, 0x4C($sp)
.L800C937C:
/* 83B7C 800C937C 8FAF02C0 */  lw         $t7, 0x2C0($sp)
.L800C9380:
/* 83B80 800C9380 2401FFFF */  addiu      $at, $zero, -0x1
/* 83B84 800C9384 8DF80000 */  lw         $t8, 0x0($t7)
/* 83B88 800C9388 00000000 */  nop
/* 83B8C 800C938C 17010003 */  bne        $t8, $at, .L800C939C
/* 83B90 800C9390 00000000 */   nop
/* 83B94 800C9394 1000008F */  b          .L800C95D4
/* 83B98 800C9398 24020008 */   addiu     $v0, $zero, 0x8
.L800C939C:
/* 83B9C 800C939C 92B90064 */  lbu        $t9, 0x64($s5)
/* 83BA0 800C93A0 00008825 */  or         $s1, $zero, $zero
/* 83BA4 800C93A4 1B20004D */  blez       $t9, .L800C94DC
/* 83BA8 800C93A8 27B6008C */   addiu     $s6, $sp, 0x8C
/* 83BAC 800C93AC 27B4018C */  addiu      $s4, $sp, 0x18C
/* 83BB0 800C93B0 27B0028C */  addiu      $s0, $sp, 0x28C
.L800C93B4:
/* 83BB4 800C93B4 02A02025 */  or         $a0, $s5, $zero
/* 83BB8 800C93B8 02802825 */  or         $a1, $s4, $zero
/* 83BBC 800C93BC 00003025 */  or         $a2, $zero, $zero
/* 83BC0 800C93C0 0C0337A5 */  jal        func_800CDE94
/* 83BC4 800C93C4 322700FF */   andi      $a3, $s1, 0xFF
/* 83BC8 800C93C8 10400003 */  beqz       $v0, .L800C93D8
/* 83BCC 800C93CC 02A02025 */   or        $a0, $s5, $zero
/* 83BD0 800C93D0 10000081 */  b          .L800C95D8
/* 83BD4 800C93D4 8FBF004C */   lw        $ra, 0x4C($sp)
.L800C93D8:
/* 83BD8 800C93D8 27A902A0 */  addiu      $t1, $sp, 0x2A0
/* 83BDC 800C93DC 27AA029C */  addiu      $t2, $sp, 0x29C
/* 83BE0 800C93E0 AFAA0018 */  sw         $t2, 0x18($sp)
/* 83BE4 800C93E4 AFA90014 */  sw         $t1, 0x14($sp)
/* 83BE8 800C93E8 02802825 */  or         $a1, $s4, $zero
/* 83BEC 800C93EC 02603025 */  or         $a2, $s3, $zero
/* 83BF0 800C93F0 27A702A4 */  addiu      $a3, $sp, 0x2A4
/* 83BF4 800C93F4 0C032581 */  jal        func_800C9604
/* 83BF8 800C93F8 AFB10010 */   sw        $s1, 0x10($sp)
/* 83BFC 800C93FC 10400004 */  beqz       $v0, .L800C9410
/* 83C00 800C9400 8FA802A4 */   lw        $t0, 0x2A4($sp)
/* 83C04 800C9404 10000074 */  b          .L800C95D8
/* 83C08 800C9408 8FBF004C */   lw        $ra, 0x4C($sp)
/* 83C0C 800C940C 8FA802A4 */  lw         $t0, 0x2A4($sp)
.L800C9410:
/* 83C10 800C9410 2401FFFF */  addiu      $at, $zero, -0x1
/* 83C14 800C9414 1101002B */  beq        $t0, $at, .L800C94C4
/* 83C18 800C9418 00000000 */   nop
/* 83C1C 800C941C 16E00004 */  bnez       $s7, .L800C9430
/* 83C20 800C9420 02A02025 */   or        $a0, $s5, $zero
/* 83C24 800C9424 A3A8005D */  sb         $t0, 0x5D($sp)
/* 83C28 800C9428 1000000E */  b          .L800C9464
/* 83C2C 800C942C A3B1005C */   sb        $s1, 0x5C($sp)
.L800C9430:
/* 83C30 800C9430 8FAB0298 */  lw         $t3, 0x298($sp)
/* 83C34 800C9434 02C02825 */  or         $a1, $s6, $zero
/* 83C38 800C9438 000B6040 */  sll        $t4, $t3, 1
/* 83C3C 800C943C 02CC1021 */  addu       $v0, $s6, $t4
/* 83C40 800C9440 A0510000 */  sb         $s1, 0x0($v0)
/* 83C44 800C9444 A0480001 */  sb         $t0, 0x1($v0)
/* 83C48 800C9448 93A7006A */  lbu        $a3, 0x6A($sp)
/* 83C4C 800C944C 0C0337A5 */  jal        func_800CDE94
/* 83C50 800C9450 24060001 */   addiu     $a2, $zero, 0x1
/* 83C54 800C9454 10400004 */  beqz       $v0, .L800C9468
/* 83C58 800C9458 27A3008C */   addiu     $v1, $sp, 0x8C
/* 83C5C 800C945C 1000005E */  b          .L800C95D8
/* 83C60 800C9460 8FBF004C */   lw        $ra, 0x4C($sp)
.L800C9464:
/* 83C64 800C9464 27A3008C */  addiu      $v1, $sp, 0x8C
.L800C9468:
/* 83C68 800C9468 27A2018C */  addiu      $v0, $sp, 0x18C
.L800C946C:
/* 83C6C 800C946C 944E0002 */  lhu        $t6, 0x2($v0)
/* 83C70 800C9470 944F0004 */  lhu        $t7, 0x4($v0)
/* 83C74 800C9474 94580006 */  lhu        $t8, 0x6($v0)
/* 83C78 800C9478 944D0000 */  lhu        $t5, 0x0($v0)
/* 83C7C 800C947C 24420008 */  addiu      $v0, $v0, 0x8
/* 83C80 800C9480 24630008 */  addiu      $v1, $v1, 0x8
/* 83C84 800C9484 A46EFFFA */  sh         $t6, -0x6($v1)
/* 83C88 800C9488 A46FFFFC */  sh         $t7, -0x4($v1)
/* 83C8C 800C948C A478FFFE */  sh         $t8, -0x2($v1)
/* 83C90 800C9490 1450FFF6 */  bne        $v0, $s0, .L800C946C
/* 83C94 800C9494 A46DFFF8 */   sh        $t5, -0x8($v1)
/* 83C98 800C9498 8FA202A0 */  lw         $v0, 0x2A0($sp)
/* 83C9C 800C949C 8FB9029C */  lw         $t9, 0x29C($sp)
/* 83CA0 800C94A0 0053082A */  slt        $at, $v0, $s3
/* 83CA4 800C94A4 A3B1006A */  sb         $s1, 0x6A($sp)
/* 83CA8 800C94A8 26F70001 */  addiu      $s7, $s7, 0x1
/* 83CAC 800C94AC 10200003 */  beqz       $at, .L800C94BC
/* 83CB0 800C94B0 AFB90298 */   sw        $t9, 0x298($sp)
/* 83CB4 800C94B4 10000003 */  b          .L800C94C4
/* 83CB8 800C94B8 02629823 */   subu      $s3, $s3, $v0
.L800C94BC:
/* 83CBC 800C94BC 10000007 */  b          .L800C94DC
/* 83CC0 800C94C0 00009825 */   or        $s3, $zero, $zero
.L800C94C4:
/* 83CC4 800C94C4 92AA0064 */  lbu        $t2, 0x64($s5)
/* 83CC8 800C94C8 26310001 */  addiu      $s1, $s1, 0x1
/* 83CCC 800C94CC 322900FF */  andi       $t1, $s1, 0xFF
/* 83CD0 800C94D0 012A082A */  slt        $at, $t1, $t2
/* 83CD4 800C94D4 1420FFB7 */  bnez       $at, .L800C93B4
/* 83CD8 800C94D8 01208825 */   or        $s1, $t1, $zero
.L800C94DC:
/* 83CDC 800C94DC 8FA802A4 */  lw         $t0, 0x2A4($sp)
/* 83CE0 800C94E0 1E600004 */  bgtz       $s3, .L800C94F4
/* 83CE4 800C94E4 27B6008C */   addiu     $s6, $sp, 0x8C
/* 83CE8 800C94E8 2401FFFF */  addiu      $at, $zero, -0x1
/* 83CEC 800C94EC 15010003 */  bne        $t0, $at, .L800C94FC
/* 83CF0 800C94F0 02A02025 */   or        $a0, $s5, $zero
.L800C94F4:
/* 83CF4 800C94F4 10000037 */  b          .L800C95D4
/* 83CF8 800C94F8 24020003 */   addiu     $v0, $zero, 0x3
.L800C94FC:
/* 83CFC 800C94FC 8FAB0298 */  lw         $t3, 0x298($sp)
/* 83D00 800C9500 02C02825 */  or         $a1, $s6, $zero
/* 83D04 800C9504 000B6040 */  sll        $t4, $t3, 1
/* 83D08 800C9508 02CC1021 */  addu       $v0, $s6, $t4
/* 83D0C 800C950C A0510000 */  sb         $s1, 0x0($v0)
/* 83D10 800C9510 A0480001 */  sb         $t0, 0x1($v0)
/* 83D14 800C9514 93A7006A */  lbu        $a3, 0x6A($sp)
/* 83D18 800C9518 0C0337A5 */  jal        func_800CDE94
/* 83D1C 800C951C 24060001 */   addiu     $a2, $zero, 0x1
/* 83D20 800C9520 10400003 */  beqz       $v0, .L800C9530
/* 83D24 800C9524 27A3007C */   addiu     $v1, $sp, 0x7C
/* 83D28 800C9528 1000002B */  b          .L800C95D8
/* 83D2C 800C952C 8FBF004C */   lw        $ra, 0x4C($sp)
.L800C9530:
/* 83D30 800C9530 97AD005C */  lhu        $t5, 0x5C($sp)
/* 83D34 800C9534 97AE02AE */  lhu        $t6, 0x2AE($sp)
/* 83D38 800C9538 8FAF02B0 */  lw         $t7, 0x2B0($sp)
/* 83D3C 800C953C A7A00076 */  sh         $zero, 0x76($sp)
/* 83D40 800C9540 27A2006C */  addiu      $v0, $sp, 0x6C
/* 83D44 800C9544 A7AD0072 */  sh         $t5, 0x72($sp)
/* 83D48 800C9548 A7AE0070 */  sh         $t6, 0x70($sp)
/* 83D4C 800C954C AFAF006C */  sw         $t7, 0x6C($sp)
.L800C9550:
/* 83D50 800C9550 93D80000 */  lbu        $t8, 0x0($fp)
/* 83D54 800C9554 24420001 */  addiu      $v0, $v0, 0x1
/* 83D58 800C9558 0043082B */  sltu       $at, $v0, $v1
/* 83D5C 800C955C 27DE0001 */  addiu      $fp, $fp, 0x1
/* 83D60 800C9560 1420FFFB */  bnez       $at, .L800C9550
/* 83D64 800C9564 A058000F */   sb        $t8, 0xF($v0)
/* 83D68 800C9568 92590000 */  lbu        $t9, 0x0($s2)
/* 83D6C 800C956C 8FAC02C0 */  lw         $t4, 0x2C0($sp)
/* 83D70 800C9570 A3B90078 */  sb         $t9, 0x78($sp)
/* 83D74 800C9574 92490001 */  lbu        $t1, 0x1($s2)
/* 83D78 800C9578 26520003 */  addiu      $s2, $s2, 0x3
/* 83D7C 800C957C A3A90079 */  sb         $t1, 0x79($sp)
/* 83D80 800C9580 924AFFFF */  lbu        $t2, -0x1($s2)
/* 83D84 800C9584 27A7006C */  addiu      $a3, $sp, 0x6C
/* 83D88 800C9588 A3AA007A */  sb         $t2, 0x7A($sp)
/* 83D8C 800C958C 924B0000 */  lbu        $t3, 0x0($s2)
/* 83D90 800C9590 00000000 */  nop
/* 83D94 800C9594 A3AB007B */  sb         $t3, 0x7B($sp)
/* 83D98 800C9598 8EAE005C */  lw         $t6, 0x5C($s5)
/* 83D9C 800C959C 8D8D0000 */  lw         $t5, 0x0($t4)
/* 83DA0 800C95A0 8EA50008 */  lw         $a1, 0x8($s5)
/* 83DA4 800C95A4 01AE3021 */  addu       $a2, $t5, $t6
/* 83DA8 800C95A8 30CFFFFF */  andi       $t7, $a2, 0xFFFF
/* 83DAC 800C95AC 8EA40004 */  lw         $a0, 0x4($s5)
/* 83DB0 800C95B0 AFA00010 */  sw         $zero, 0x10($sp)
/* 83DB4 800C95B4 0C033BE8 */  jal        func_800CEFA0
/* 83DB8 800C95B8 01E03025 */   or        $a2, $t7, $zero
/* 83DBC 800C95BC 10400003 */  beqz       $v0, .L800C95CC
/* 83DC0 800C95C0 00401825 */   or        $v1, $v0, $zero
/* 83DC4 800C95C4 10000004 */  b          .L800C95D8
/* 83DC8 800C95C8 8FBF004C */   lw        $ra, 0x4C($sp)
.L800C95CC:
/* 83DCC 800C95CC 10000001 */  b          .L800C95D4
/* 83DD0 800C95D0 00601025 */   or        $v0, $v1, $zero
.L800C95D4:
/* 83DD4 800C95D4 8FBF004C */  lw         $ra, 0x4C($sp)
.L800C95D8:
/* 83DD8 800C95D8 8FB00028 */  lw         $s0, 0x28($sp)
/* 83DDC 800C95DC 8FB1002C */  lw         $s1, 0x2C($sp)
/* 83DE0 800C95E0 8FB20030 */  lw         $s2, 0x30($sp)
/* 83DE4 800C95E4 8FB30034 */  lw         $s3, 0x34($sp)
/* 83DE8 800C95E8 8FB40038 */  lw         $s4, 0x38($sp)
/* 83DEC 800C95EC 8FB5003C */  lw         $s5, 0x3C($sp)
/* 83DF0 800C95F0 8FB60040 */  lw         $s6, 0x40($sp)
/* 83DF4 800C95F4 8FB70044 */  lw         $s7, 0x44($sp)
/* 83DF8 800C95F8 8FBE0048 */  lw         $fp, 0x48($sp)
/* 83DFC 800C95FC 03E00008 */  jr         $ra
/* 83E00 800C9600 27BD02A8 */   addiu     $sp, $sp, 0x2A8

glabel func_800C9604
/* 83E04 800C9604 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 83E08 800C9608 AFB40028 */  sw         $s4, 0x28($sp)
/* 83E0C 800C960C 93B40093 */  lbu        $s4, 0x93($sp)
/* 83E10 800C9610 AFBE0038 */  sw         $fp, 0x38($sp)
/* 83E14 800C9614 AFB70034 */  sw         $s7, 0x34($sp)
/* 83E18 800C9618 00C0B825 */  or         $s7, $a2, $zero
/* 83E1C 800C961C 00A0F025 */  or         $fp, $a1, $zero
/* 83E20 800C9620 AFBF003C */  sw         $ra, 0x3C($sp)
/* 83E24 800C9624 AFB60030 */  sw         $s6, 0x30($sp)
/* 83E28 800C9628 AFB5002C */  sw         $s5, 0x2C($sp)
/* 83E2C 800C962C AFB30024 */  sw         $s3, 0x24($sp)
/* 83E30 800C9630 AFB20020 */  sw         $s2, 0x20($sp)
/* 83E34 800C9634 AFB1001C */  sw         $s1, 0x1C($sp)
/* 83E38 800C9638 AFB00018 */  sw         $s0, 0x18($sp)
/* 83E3C 800C963C AFA40080 */  sw         $a0, 0x80($sp)
/* 83E40 800C9640 AFA7008C */  sw         $a3, 0x8C($sp)
/* 83E44 800C9644 1A800003 */  blez       $s4, .L800C9654
/* 83E48 800C9648 00004025 */   or        $t0, $zero, $zero
/* 83E4C 800C964C 10000005 */  b          .L800C9664
/* 83E50 800C9650 24020001 */   addiu     $v0, $zero, 0x1
.L800C9654:
/* 83E54 800C9654 8FAE0080 */  lw         $t6, 0x80($sp)
/* 83E58 800C9658 00000000 */  nop
/* 83E5C 800C965C 8DC20060 */  lw         $v0, 0x60($t6)
/* 83E60 800C9660 00000000 */  nop
.L800C9664:
/* 83E64 800C9664 28410080 */  slti       $at, $v0, 0x80
/* 83E68 800C9668 1020000C */  beqz       $at, .L800C969C
/* 83E6C 800C966C 00408825 */   or        $s1, $v0, $zero
/* 83E70 800C9670 00027840 */  sll        $t7, $v0, 1
/* 83E74 800C9674 03CF8021 */  addu       $s0, $fp, $t7
/* 83E78 800C9678 24160080 */  addiu      $s6, $zero, 0x80
/* 83E7C 800C967C 24130003 */  addiu      $s3, $zero, 0x3
.L800C9680:
/* 83E80 800C9680 96180000 */  lhu        $t8, 0x0($s0)
/* 83E84 800C9684 00000000 */  nop
/* 83E88 800C9688 12780004 */  beq        $s3, $t8, .L800C969C
/* 83E8C 800C968C 00000000 */   nop
/* 83E90 800C9690 26310001 */  addiu      $s1, $s1, 0x1
/* 83E94 800C9694 1636FFFA */  bne        $s1, $s6, .L800C9680
/* 83E98 800C9698 26100002 */   addiu     $s0, $s0, 0x2
.L800C969C:
/* 83E9C 800C969C 24160080 */  addiu      $s6, $zero, 0x80
/* 83EA0 800C96A0 16360006 */  bne        $s1, $s6, .L800C96BC
/* 83EA4 800C96A4 24130003 */   addiu     $s3, $zero, 0x3
/* 83EA8 800C96A8 8FA9008C */  lw         $t1, 0x8C($sp)
/* 83EAC 800C96AC 2419FFFF */  addiu      $t9, $zero, -0x1
/* 83EB0 800C96B0 00001025 */  or         $v0, $zero, $zero
/* 83EB4 800C96B4 10000047 */  b          .L800C97D4
/* 83EB8 800C96B8 AD390000 */   sw        $t9, 0x0($t1)
.L800C96BC:
/* 83EBC 800C96BC 27A20054 */  addiu      $v0, $sp, 0x54
/* 83EC0 800C96C0 27A30074 */  addiu      $v1, $sp, 0x74
.L800C96C4:
/* 83EC4 800C96C4 24420004 */  addiu      $v0, $v0, 0x4
/* 83EC8 800C96C8 A040FFFD */  sb         $zero, -0x3($v0)
/* 83ECC 800C96CC A040FFFE */  sb         $zero, -0x2($v0)
/* 83ED0 800C96D0 A040FFFF */  sb         $zero, -0x1($v0)
/* 83ED4 800C96D4 1443FFFB */  bne        $v0, $v1, .L800C96C4
/* 83ED8 800C96D8 A040FFFC */   sb        $zero, -0x4($v0)
/* 83EDC 800C96DC 8FB20094 */  lw         $s2, 0x94($sp)
/* 83EE0 800C96E0 AFB10078 */  sw         $s1, 0x78($sp)
/* 83EE4 800C96E4 240A0001 */  addiu      $t2, $zero, 0x1
/* 83EE8 800C96E8 02202825 */  or         $a1, $s1, $zero
/* 83EEC 800C96EC 2AE10002 */  slti       $at, $s7, 0x2
/* 83EF0 800C96F0 26310001 */  addiu      $s1, $s1, 0x1
/* 83EF4 800C96F4 14200020 */  bnez       $at, .L800C9778
/* 83EF8 800C96F8 AE4A0000 */   sw        $t2, 0x0($s2)
/* 83EFC 800C96FC 2A210080 */  slti       $at, $s1, 0x80
/* 83F00 800C9700 1020001D */  beqz       $at, .L800C9778
/* 83F04 800C9704 00115840 */   sll       $t3, $s1, 1
/* 83F08 800C9708 03CB8021 */  addu       $s0, $fp, $t3
/* 83F0C 800C970C 27B50054 */  addiu      $s5, $sp, 0x54
.L800C9710:
/* 83F10 800C9710 960C0000 */  lhu        $t4, 0x0($s0)
/* 83F14 800C9714 00056840 */  sll        $t5, $a1, 1
/* 83F18 800C9718 166C000F */  bne        $s3, $t4, .L800C9758
/* 83F1C 800C971C 03CD1021 */   addu      $v0, $fp, $t5
/* 83F20 800C9720 A0540000 */  sb         $s4, 0x0($v0)
/* 83F24 800C9724 A0510001 */  sb         $s1, 0x1($v0)
/* 83F28 800C9728 8FA40080 */  lw         $a0, 0x80($sp)
/* 83F2C 800C972C 02A03025 */  or         $a2, $s5, $zero
/* 83F30 800C9730 0C032601 */  jal        func_800C9804
/* 83F34 800C9734 328700FF */   andi      $a3, $s4, 0xFF
/* 83F38 800C9738 10400003 */  beqz       $v0, .L800C9748
/* 83F3C 800C973C 00404025 */   or        $t0, $v0, $zero
/* 83F40 800C9740 10000025 */  b          .L800C97D8
/* 83F44 800C9744 8FBF003C */   lw        $ra, 0x3C($sp)
.L800C9748:
/* 83F48 800C9748 8E4E0000 */  lw         $t6, 0x0($s2)
/* 83F4C 800C974C 02202825 */  or         $a1, $s1, $zero
/* 83F50 800C9750 25CF0001 */  addiu      $t7, $t6, 0x1
/* 83F54 800C9754 AE4F0000 */  sw         $t7, 0x0($s2)
.L800C9758:
/* 83F58 800C9758 8E580000 */  lw         $t8, 0x0($s2)
/* 83F5C 800C975C 26310001 */  addiu      $s1, $s1, 0x1
/* 83F60 800C9760 0317082A */  slt        $at, $t8, $s7
/* 83F64 800C9764 10200004 */  beqz       $at, .L800C9778
/* 83F68 800C9768 26100002 */   addiu     $s0, $s0, 0x2
/* 83F6C 800C976C 2A210080 */  slti       $at, $s1, 0x80
/* 83F70 800C9770 1420FFE7 */  bnez       $at, .L800C9710
/* 83F74 800C9774 00000000 */   nop
.L800C9778:
/* 83F78 800C9778 8FB90078 */  lw         $t9, 0x78($sp)
/* 83F7C 800C977C 8FA9008C */  lw         $t1, 0x8C($sp)
/* 83F80 800C9780 27B50054 */  addiu      $s5, $sp, 0x54
/* 83F84 800C9784 16360008 */  bne        $s1, $s6, .L800C97A8
/* 83F88 800C9788 AD390000 */   sw        $t9, 0x0($t1)
/* 83F8C 800C978C 8E4A0000 */  lw         $t2, 0x0($s2)
/* 83F90 800C9790 8FAB0098 */  lw         $t3, 0x98($sp)
/* 83F94 800C9794 0157082A */  slt        $at, $t2, $s7
/* 83F98 800C9798 10200003 */  beqz       $at, .L800C97A8
/* 83F9C 800C979C 01001025 */   or        $v0, $t0, $zero
/* 83FA0 800C97A0 1000000C */  b          .L800C97D4
/* 83FA4 800C97A4 AD650000 */   sw        $a1, 0x0($t3)
.L800C97A8:
/* 83FA8 800C97A8 00056840 */  sll        $t5, $a1, 1
/* 83FAC 800C97AC 03CD7021 */  addu       $t6, $fp, $t5
/* 83FB0 800C97B0 240C0001 */  addiu      $t4, $zero, 0x1
/* 83FB4 800C97B4 A5CC0000 */  sh         $t4, 0x0($t6)
/* 83FB8 800C97B8 8FA40080 */  lw         $a0, 0x80($sp)
/* 83FBC 800C97BC 02A03025 */  or         $a2, $s5, $zero
/* 83FC0 800C97C0 0C032601 */  jal        func_800C9804
/* 83FC4 800C97C4 328700FF */   andi      $a3, $s4, 0xFF
/* 83FC8 800C97C8 8FAF0098 */  lw         $t7, 0x98($sp)
/* 83FCC 800C97CC 00000000 */  nop
/* 83FD0 800C97D0 ADE00000 */  sw         $zero, 0x0($t7)
.L800C97D4:
/* 83FD4 800C97D4 8FBF003C */  lw         $ra, 0x3C($sp)
.L800C97D8:
/* 83FD8 800C97D8 8FB00018 */  lw         $s0, 0x18($sp)
/* 83FDC 800C97DC 8FB1001C */  lw         $s1, 0x1C($sp)
/* 83FE0 800C97E0 8FB20020 */  lw         $s2, 0x20($sp)
/* 83FE4 800C97E4 8FB30024 */  lw         $s3, 0x24($sp)
/* 83FE8 800C97E8 8FB40028 */  lw         $s4, 0x28($sp)
/* 83FEC 800C97EC 8FB5002C */  lw         $s5, 0x2C($sp)
/* 83FF0 800C97F0 8FB60030 */  lw         $s6, 0x30($sp)
/* 83FF4 800C97F4 8FB70034 */  lw         $s7, 0x34($sp)
/* 83FF8 800C97F8 8FBE0038 */  lw         $fp, 0x38($sp)
/* 83FFC 800C97FC 03E00008 */  jr         $ra
/* 84000 800C9800 27BD0080 */   addiu     $sp, $sp, 0x80

glabel func_800C9804
/* 84004 800C9804 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 84008 800C9808 AFBF0034 */  sw         $ra, 0x34($sp)
/* 8400C 800C980C AFB40030 */  sw         $s4, 0x30($sp)
/* 84010 800C9810 AFB3002C */  sw         $s3, 0x2C($sp)
/* 84014 800C9814 AFB20028 */  sw         $s2, 0x28($sp)
/* 84018 800C9818 AFB10024 */  sw         $s1, 0x24($sp)
/* 8401C 800C981C AFB00020 */  sw         $s0, 0x20($sp)
/* 84020 800C9820 AFA70044 */  sw         $a3, 0x44($sp)
/* 84024 800C9824 00809025 */  or         $s2, $a0, $zero
/* 84028 800C9828 00A09825 */  or         $s3, $a1, $zero
/* 8402C 800C982C 00C0A025 */  or         $s4, $a2, $zero
/* 84030 800C9830 0C03384C */  jal        func_800CE130
/* 84034 800C9834 A0870065 */   sb        $a3, 0x65($a0)
/* 84038 800C9838 10400003 */  beqz       $v0, .L800C9848
/* 8403C 800C983C 00008025 */   or        $s0, $zero, $zero
/* 84040 800C9840 10000011 */  b          .L800C9888
/* 84044 800C9844 8FBF0034 */   lw        $ra, 0x34($sp)
.L800C9848:
/* 84048 800C9848 001388C0 */  sll        $s1, $s3, 3
/* 8404C 800C984C 24130008 */  addiu      $s3, $zero, 0x8
.L800C9850:
/* 84050 800C9850 8E440004 */  lw         $a0, 0x4($s2)
/* 84054 800C9854 8E450008 */  lw         $a1, 0x8($s2)
/* 84058 800C9858 AFA00010 */  sw         $zero, 0x10($sp)
/* 8405C 800C985C 3226FFFF */  andi       $a2, $s1, 0xFFFF
/* 84060 800C9860 0C033BE8 */  jal        func_800CEFA0
/* 84064 800C9864 02803825 */   or        $a3, $s4, $zero
/* 84068 800C9868 14400003 */  bnez       $v0, .L800C9878
/* 8406C 800C986C 26100001 */   addiu     $s0, $s0, 0x1
/* 84070 800C9870 1613FFF7 */  bne        $s0, $s3, .L800C9850
/* 84074 800C9874 26310001 */   addiu     $s1, $s1, 0x1
.L800C9878:
/* 84078 800C9878 A2400065 */  sb         $zero, 0x65($s2)
/* 8407C 800C987C 0C03384C */  jal        func_800CE130
/* 84080 800C9880 02402025 */   or        $a0, $s2, $zero
/* 84084 800C9884 8FBF0034 */  lw         $ra, 0x34($sp)
.L800C9888:
/* 84088 800C9888 8FB00020 */  lw         $s0, 0x20($sp)
/* 8408C 800C988C 8FB10024 */  lw         $s1, 0x24($sp)
/* 84090 800C9890 8FB20028 */  lw         $s2, 0x28($sp)
/* 84094 800C9894 8FB3002C */  lw         $s3, 0x2C($sp)
/* 84098 800C9898 8FB40030 */  lw         $s4, 0x30($sp)
/* 8409C 800C989C 03E00008 */  jr         $ra
/* 840A0 800C98A0 27BD0038 */   addiu     $sp, $sp, 0x38
/* 840A4 800C98A4 00000000 */  nop
/* 840A8 800C98A8 00000000 */  nop
/* 840AC 800C98AC 00000000 */  nop
