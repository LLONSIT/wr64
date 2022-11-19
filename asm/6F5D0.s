.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800B4DD0
/* 6F5D0 800B4DD0 00067140 */  sll        $t6, $a2, 5
/* 6F5D4 800B4DD4 01C67021 */  addu       $t6, $t6, $a2
/* 6F5D8 800B4DD8 3C0F8004 */  lui        $t7, %hi(D_80038110)
/* 6F5DC 800B4DDC 25EF8110 */  addiu      $t7, $t7, %lo(D_80038110)
/* 6F5E0 800B4DE0 000E70C0 */  sll        $t6, $t6, 3
/* 6F5E4 800B4DE4 01CF3821 */  addu       $a3, $t6, $t7
/* 6F5E8 800B4DE8 90F80004 */  lbu        $t8, 0x4($a3)
/* 6F5EC 800B4DEC 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 6F5F0 800B4DF0 24010001 */  addiu      $at, $zero, 0x1
/* 6F5F4 800B4DF4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6F5F8 800B4DF8 AFA40040 */  sw         $a0, 0x40($sp)
/* 6F5FC 800B4DFC 13010062 */  beq        $t8, $at, .L800B4F88
/* 6F600 800B4E00 AFA50044 */   sw        $a1, 0x44($sp)
/* 6F604 800B4E04 90F90002 */  lbu        $t9, 0x2($a3)
/* 6F608 800B4E08 00056080 */  sll        $t4, $a1, 2
/* 6F60C 800B4E0C 01856021 */  addu       $t4, $t4, $a1
/* 6F610 800B4E10 5720005E */  bnel       $t9, $zero, .L800B4F8C
/* 6F614 800B4E14 90E90004 */   lbu       $t1, 0x4($a3)
/* 6F618 800B4E18 90E80003 */  lbu        $t0, 0x3($a3)
/* 6F61C 800B4E1C 000C6080 */  sll        $t4, $t4, 2
/* 6F620 800B4E20 24050280 */  addiu      $a1, $zero, 0x280
/* 6F624 800B4E24 00084880 */  sll        $t1, $t0, 2
/* 6F628 800B4E28 01284823 */  subu       $t1, $t1, $t0
/* 6F62C 800B4E2C 000948C0 */  sll        $t1, $t1, 3
/* 6F630 800B4E30 01284821 */  addu       $t1, $t1, $t0
/* 6F634 800B4E34 00094880 */  sll        $t1, $t1, 2
/* 6F638 800B4E38 00E95021 */  addu       $t2, $a3, $t1
/* 6F63C 800B4E3C 014C3021 */  addu       $a2, $t2, $t4
/* 6F640 800B4E40 24C60030 */  addiu      $a2, $a2, 0x30
/* 6F644 800B4E44 8CC40004 */  lw         $a0, 0x4($a2)
/* 6F648 800B4E48 AFA70018 */  sw         $a3, 0x18($sp)
/* 6F64C 800B4E4C 0C0328B0 */  jal        func_800CA2C0
/* 6F650 800B4E50 AFA6003C */   sw        $a2, 0x3C($sp)
/* 6F654 800B4E54 8FA6003C */  lw         $a2, 0x3C($sp)
/* 6F658 800B4E58 8FA70018 */  lw         $a3, 0x18($sp)
/* 6F65C 800B4E5C 00002825 */  or         $a1, $zero, $zero
/* 6F660 800B4E60 84CD0010 */  lh         $t5, 0x10($a2)
/* 6F664 800B4E64 00002025 */  or         $a0, $zero, $zero
/* 6F668 800B4E68 05A10003 */  bgez       $t5, .L800B4E78
/* 6F66C 800B4E6C 000D7043 */   sra       $t6, $t5, 1
/* 6F670 800B4E70 25A10001 */  addiu      $at, $t5, 0x1
/* 6F674 800B4E74 00017043 */  sra        $t6, $at, 1
.L800B4E78:
/* 6F678 800B4E78 59C00023 */  blezl      $t6, .L800B4F08
/* 6F67C 800B4E7C 84CE0012 */   lh        $t6, 0x12($a2)
/* 6F680 800B4E80 00001025 */  or         $v0, $zero, $zero
/* 6F684 800B4E84 8CCF0004 */  lw         $t7, 0x4($a2)
.L800B4E88:
/* 6F688 800B4E88 8CC9000C */  lw         $t1, 0xC($a2)
/* 6F68C 800B4E8C 8CE80018 */  lw         $t0, 0x18($a3)
/* 6F690 800B4E90 00051840 */  sll        $v1, $a1, 1
/* 6F694 800B4E94 01E3C021 */  addu       $t8, $t7, $v1
/* 6F698 800B4E98 87190000 */  lh         $t9, 0x0($t8)
/* 6F69C 800B4E9C 00095840 */  sll        $t3, $t1, 1
/* 6F6A0 800B4EA0 010B5021 */  addu       $t2, $t0, $t3
/* 6F6A4 800B4EA4 01426021 */  addu       $t4, $t2, $v0
/* 6F6A8 800B4EA8 A5990000 */  sh         $t9, 0x0($t4)
/* 6F6AC 800B4EAC 8CCD0008 */  lw         $t5, 0x8($a2)
/* 6F6B0 800B4EB0 8CC9000C */  lw         $t1, 0xC($a2)
/* 6F6B4 800B4EB4 8CF8001C */  lw         $t8, 0x1C($a3)
/* 6F6B8 800B4EB8 01A37021 */  addu       $t6, $t5, $v1
/* 6F6BC 800B4EBC 85CF0000 */  lh         $t7, 0x0($t6)
/* 6F6C0 800B4EC0 00094040 */  sll        $t0, $t1, 1
/* 6F6C4 800B4EC4 03085821 */  addu       $t3, $t8, $t0
/* 6F6C8 800B4EC8 01625021 */  addu       $t2, $t3, $v0
/* 6F6CC 800B4ECC A54F0000 */  sh         $t7, 0x0($t2)
/* 6F6D0 800B4ED0 84CC0010 */  lh         $t4, 0x10($a2)
/* 6F6D4 800B4ED4 90F90004 */  lbu        $t9, 0x4($a3)
/* 6F6D8 800B4ED8 24840001 */  addiu      $a0, $a0, 0x1
/* 6F6DC 800B4EDC 24420002 */  addiu      $v0, $v0, 0x2
/* 6F6E0 800B4EE0 00B92821 */  addu       $a1, $a1, $t9
/* 6F6E4 800B4EE4 05810003 */  bgez       $t4, .L800B4EF4
/* 6F6E8 800B4EE8 000C6843 */   sra       $t5, $t4, 1
/* 6F6EC 800B4EEC 25810001 */  addiu      $at, $t4, 0x1
/* 6F6F0 800B4EF0 00016843 */  sra        $t5, $at, 1
.L800B4EF4:
/* 6F6F4 800B4EF4 008D082A */  slt        $at, $a0, $t5
/* 6F6F8 800B4EF8 5420FFE3 */  bnel       $at, $zero, .L800B4E88
/* 6F6FC 800B4EFC 8CCF0004 */   lw        $t7, 0x4($a2)
/* 6F700 800B4F00 00002025 */  or         $a0, $zero, $zero
/* 6F704 800B4F04 84CE0012 */  lh         $t6, 0x12($a2)
.L800B4F08:
/* 6F708 800B4F08 05C10003 */  bgez       $t6, .L800B4F18
/* 6F70C 800B4F0C 000E4843 */   sra       $t1, $t6, 1
/* 6F710 800B4F10 25C10001 */  addiu      $at, $t6, 0x1
/* 6F714 800B4F14 00014843 */  sra        $t1, $at, 1
.L800B4F18:
/* 6F718 800B4F18 5920001C */  blezl      $t1, .L800B4F8C
/* 6F71C 800B4F1C 90E90004 */   lbu       $t1, 0x4($a3)
/* 6F720 800B4F20 00001025 */  or         $v0, $zero, $zero
/* 6F724 800B4F24 8CD80004 */  lw         $t8, 0x4($a2)
.L800B4F28:
/* 6F728 800B4F28 00051840 */  sll        $v1, $a1, 1
/* 6F72C 800B4F2C 8CEF0018 */  lw         $t7, 0x18($a3)
/* 6F730 800B4F30 03034021 */  addu       $t0, $t8, $v1
/* 6F734 800B4F34 850B0000 */  lh         $t3, 0x0($t0)
/* 6F738 800B4F38 01E25021 */  addu       $t2, $t7, $v0
/* 6F73C 800B4F3C 24840001 */  addiu      $a0, $a0, 0x1
/* 6F740 800B4F40 A54B0000 */  sh         $t3, 0x0($t2)
/* 6F744 800B4F44 8CD90008 */  lw         $t9, 0x8($a2)
/* 6F748 800B4F48 8CEE001C */  lw         $t6, 0x1C($a3)
/* 6F74C 800B4F4C 03236021 */  addu       $t4, $t9, $v1
/* 6F750 800B4F50 858D0000 */  lh         $t5, 0x0($t4)
/* 6F754 800B4F54 01C24821 */  addu       $t1, $t6, $v0
/* 6F758 800B4F58 24420002 */  addiu      $v0, $v0, 0x2
/* 6F75C 800B4F5C A52D0000 */  sh         $t5, 0x0($t1)
/* 6F760 800B4F60 84C80012 */  lh         $t0, 0x12($a2)
/* 6F764 800B4F64 90F80004 */  lbu        $t8, 0x4($a3)
/* 6F768 800B4F68 00B82821 */  addu       $a1, $a1, $t8
/* 6F76C 800B4F6C 05010003 */  bgez       $t0, .L800B4F7C
/* 6F770 800B4F70 00087843 */   sra       $t7, $t0, 1
/* 6F774 800B4F74 25010001 */  addiu      $at, $t0, 0x1
/* 6F778 800B4F78 00017843 */  sra        $t7, $at, 1
.L800B4F7C:
/* 6F77C 800B4F7C 008F082A */  slt        $at, $a0, $t7
/* 6F780 800B4F80 5420FFE9 */  bnel       $at, $zero, .L800B4F28
/* 6F784 800B4F84 8CD80004 */   lw        $t8, 0x4($a2)
.L800B4F88:
/* 6F788 800B4F88 90E90004 */  lbu        $t1, 0x4($a3)
.L800B4F8C:
/* 6F78C 800B4F8C 8FAD0040 */  lw         $t5, 0x40($sp)
/* 6F790 800B4F90 90EB0003 */  lbu        $t3, 0x3($a3)
/* 6F794 800B4F94 8FAC0044 */  lw         $t4, 0x44($sp)
/* 6F798 800B4F98 01A9001A */  div        $zero, $t5, $t1
/* 6F79C 800B4F9C 000B5080 */  sll        $t2, $t3, 2
/* 6F7A0 800B4FA0 8CF8000C */  lw         $t8, 0xC($a3)
/* 6F7A4 800B4FA4 014B5023 */  subu       $t2, $t2, $t3
/* 6F7A8 800B4FA8 8CEF0014 */  lw         $t7, 0x14($a3)
/* 6F7AC 800B4FAC 000A50C0 */  sll        $t2, $t2, 3
/* 6F7B0 800B4FB0 00001012 */  mflo       $v0
/* 6F7B4 800B4FB4 014B5021 */  addu       $t2, $t2, $t3
/* 6F7B8 800B4FB8 000C7080 */  sll        $t6, $t4, 2
/* 6F7BC 800B4FBC 000A5080 */  sll        $t2, $t2, 2
/* 6F7C0 800B4FC0 01CC7021 */  addu       $t6, $t6, $t4
/* 6F7C4 800B4FC4 03024021 */  addu       $t0, $t8, $v0
/* 6F7C8 800B4FC8 000E7080 */  sll        $t6, $t6, 2
/* 6F7CC 800B4FCC 00EAC821 */  addu       $t9, $a3, $t2
/* 6F7D0 800B4FD0 010F1823 */  subu       $v1, $t0, $t7
/* 6F7D4 800B4FD4 032E3021 */  addu       $a2, $t9, $t6
/* 6F7D8 800B4FD8 24C60030 */  addiu      $a2, $a2, 0x30
/* 6F7DC 800B4FDC 15200002 */  bnez       $t1, .L800B4FE8
/* 6F7E0 800B4FE0 00000000 */   nop
/* 6F7E4 800B4FE4 0007000D */  break      7
.L800B4FE8:
/* 6F7E8 800B4FE8 2401FFFF */  addiu      $at, $zero, -0x1
/* 6F7EC 800B4FEC 15210004 */  bne        $t1, $at, .L800B5000
/* 6F7F0 800B4FF0 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 6F7F4 800B4FF4 15A10002 */  bne        $t5, $at, .L800B5000
/* 6F7F8 800B4FF8 00000000 */   nop
/* 6F7FC 800B4FFC 0006000D */  break      6
.L800B5000:
/* 6F800 800B5000 00437023 */  subu       $t6, $v0, $v1
/* 6F804 800B5004 0461000A */  bgez       $v1, .L800B5030
/* 6F808 800B5008 00034840 */   sll       $t1, $v1, 1
/* 6F80C 800B500C 00025840 */  sll        $t3, $v0, 1
/* 6F810 800B5010 A4CB0010 */  sh         $t3, 0x10($a2)
/* 6F814 800B5014 A4C00012 */  sh         $zero, 0x12($a2)
/* 6F818 800B5018 8CEA000C */  lw         $t2, 0xC($a3)
/* 6F81C 800B501C ACCA000C */  sw         $t2, 0xC($a2)
/* 6F820 800B5020 8CEC000C */  lw         $t4, 0xC($a3)
/* 6F824 800B5024 0182C821 */  addu       $t9, $t4, $v0
/* 6F828 800B5028 10000007 */  b          .L800B5048
/* 6F82C 800B502C ACF9000C */   sw        $t9, 0xC($a3)
.L800B5030:
/* 6F830 800B5030 000E6840 */  sll        $t5, $t6, 1
/* 6F834 800B5034 A4CD0010 */  sh         $t5, 0x10($a2)
/* 6F838 800B5038 A4C90012 */  sh         $t1, 0x12($a2)
/* 6F83C 800B503C 8CF8000C */  lw         $t8, 0xC($a3)
/* 6F840 800B5040 ACD8000C */  sw         $t8, 0xC($a2)
/* 6F844 800B5044 ACE3000C */  sw         $v1, 0xC($a3)
.L800B5048:
/* 6F848 800B5048 A4C20000 */  sh         $v0, 0x0($a2)
/* 6F84C 800B504C 8FA80040 */  lw         $t0, 0x40($sp)
/* 6F850 800B5050 A4C80002 */  sh         $t0, 0x2($a2)
/* 6F854 800B5054 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6F858 800B5058 27BD0040 */  addiu      $sp, $sp, 0x40
/* 6F85C 800B505C 03E00008 */  jr         $ra
/* 6F860 800B5060 00000000 */   nop

glabel func_800B5064
/* 6F864 800B5064 AFA50004 */  sw         $a1, 0x4($sp)
/* 6F868 800B5068 00A07025 */  or         $t6, $a1, $zero
/* 6F86C 800B506C AFA60008 */  sw         $a2, 0x8($sp)
/* 6F870 800B5070 3C0D0800 */  lui        $t5, (0x8000000 >> 16)
/* 6F874 800B5074 31D8FFFF */  andi       $t8, $t6, 0xFFFF
/* 6F878 800B5078 00801025 */  or         $v0, $a0, $zero
/* 6F87C 800B507C 01C02825 */  or         $a1, $t6, $zero
/* 6F880 800B5080 030DC825 */  or         $t9, $t8, $t5
/* 6F884 800B5084 30E3FFFF */  andi       $v1, $a3, 0xFFFF
/* 6F888 800B5088 30CFFFFF */  andi       $t7, $a2, 0xFFFF
/* 6F88C 800B508C AC430004 */  sw         $v1, 0x4($v0)
/* 6F890 800B5090 AC590000 */  sw         $t9, 0x0($v0)
/* 6F894 800B5094 24880008 */  addiu      $t0, $a0, 0x8
/* 6F898 800B5098 3C0E0400 */  lui        $t6, (0x4000000 >> 16)
/* 6F89C 800B509C 01E03025 */  or         $a2, $t7, $zero
/* 6F8A0 800B50A0 AD0E0000 */  sw         $t6, 0x0($t0)
/* 6F8A4 800B50A4 8FAF0010 */  lw         $t7, 0x10($sp)
/* 6F8A8 800B50A8 3C198004 */  lui        $t9, %hi(D_80038110)
/* 6F8AC 800B50AC 27398110 */  addiu      $t9, $t9, %lo(D_80038110)
/* 6F8B0 800B50B0 000FC140 */  sll        $t8, $t7, 5
/* 6F8B4 800B50B4 030FC021 */  addu       $t8, $t8, $t7
/* 6F8B8 800B50B8 0018C0C0 */  sll        $t8, $t8, 3
/* 6F8BC 800B50BC 03194821 */  addu       $t1, $t8, $t9
/* 6F8C0 800B50C0 8D2E0018 */  lw         $t6, 0x18($t1)
/* 6F8C4 800B50C4 00065040 */  sll        $t2, $a2, 1
/* 6F8C8 800B50C8 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 6F8CC 800B50CC 01CA7821 */  addu       $t7, $t6, $t2
/* 6F8D0 800B50D0 01E1C021 */  addu       $t8, $t7, $at
/* 6F8D4 800B50D4 AD180004 */  sw         $t8, 0x4($t0)
/* 6F8D8 800B50D8 250B0008 */  addiu      $t3, $t0, 0x8
/* 6F8DC 800B50DC 24B90140 */  addiu      $t9, $a1, 0x140
/* 6F8E0 800B50E0 332EFFFF */  andi       $t6, $t9, 0xFFFF
/* 6F8E4 800B50E4 01CD7825 */  or         $t7, $t6, $t5
/* 6F8E8 800B50E8 AD6F0000 */  sw         $t7, 0x0($t3)
/* 6F8EC 800B50EC 256C0008 */  addiu      $t4, $t3, 0x8
/* 6F8F0 800B50F0 AD630004 */  sw         $v1, 0x4($t3)
/* 6F8F4 800B50F4 3C180400 */  lui        $t8, (0x4000000 >> 16)
/* 6F8F8 800B50F8 AD980000 */  sw         $t8, 0x0($t4)
/* 6F8FC 800B50FC 8D39001C */  lw         $t9, 0x1C($t1)
/* 6F900 800B5100 25820008 */  addiu      $v0, $t4, 0x8
/* 6F904 800B5104 032A7021 */  addu       $t6, $t9, $t2
/* 6F908 800B5108 01C17821 */  addu       $t7, $t6, $at
/* 6F90C 800B510C 03E00008 */  jr         $ra
/* 6F910 800B5110 AD8F0004 */   sw        $t7, 0x4($t4)

glabel func_800B5114
/* 6F914 800B5114 AFA50004 */  sw         $a1, 0x4($sp)
/* 6F918 800B5118 00A0C025 */  or         $t8, $a1, $zero
/* 6F91C 800B511C AFA60008 */  sw         $a2, 0x8($sp)
/* 6F920 800B5120 30CFFFFF */  andi       $t7, $a2, 0xFFFF
/* 6F924 800B5124 0018CC00 */  sll        $t9, $t8, 16
/* 6F928 800B5128 00801025 */  or         $v0, $a0, $zero
/* 6F92C 800B512C 30E3FFFF */  andi       $v1, $a3, 0xFFFF
/* 6F930 800B5130 01E03025 */  or         $a2, $t7, $zero
/* 6F934 800B5134 3C0D0800 */  lui        $t5, (0x8000000 >> 16)
/* 6F938 800B5138 03237025 */  or         $t6, $t9, $v1
/* 6F93C 800B513C AC4E0004 */  sw         $t6, 0x4($v0)
/* 6F940 800B5140 AC4D0000 */  sw         $t5, 0x0($v0)
/* 6F944 800B5144 24880008 */  addiu      $t0, $a0, 0x8
/* 6F948 800B5148 3C0F0600 */  lui        $t7, (0x6000000 >> 16)
/* 6F94C 800B514C 03002825 */  or         $a1, $t8, $zero
/* 6F950 800B5150 AD0F0000 */  sw         $t7, 0x0($t0)
/* 6F954 800B5154 8FB80010 */  lw         $t8, 0x10($sp)
/* 6F958 800B5158 3C0E8004 */  lui        $t6, %hi(D_80038110)
/* 6F95C 800B515C 25CE8110 */  addiu      $t6, $t6, %lo(D_80038110)
/* 6F960 800B5160 0018C940 */  sll        $t9, $t8, 5
/* 6F964 800B5164 0338C821 */  addu       $t9, $t9, $t8
/* 6F968 800B5168 0019C8C0 */  sll        $t9, $t9, 3
/* 6F96C 800B516C 032E4821 */  addu       $t1, $t9, $t6
/* 6F970 800B5170 8D2F0018 */  lw         $t7, 0x18($t1)
/* 6F974 800B5174 00065040 */  sll        $t2, $a2, 1
/* 6F978 800B5178 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 6F97C 800B517C 01EAC021 */  addu       $t8, $t7, $t2
/* 6F980 800B5180 0301C821 */  addu       $t9, $t8, $at
/* 6F984 800B5184 AD190004 */  sw         $t9, 0x4($t0)
/* 6F988 800B5188 250B0008 */  addiu      $t3, $t0, 0x8
/* 6F98C 800B518C 24AF0140 */  addiu      $t7, $a1, 0x140
/* 6F990 800B5190 000FC400 */  sll        $t8, $t7, 16
/* 6F994 800B5194 0303C825 */  or         $t9, $t8, $v1
/* 6F998 800B5198 AD790004 */  sw         $t9, 0x4($t3)
/* 6F99C 800B519C 256C0008 */  addiu      $t4, $t3, 0x8
/* 6F9A0 800B51A0 AD6D0000 */  sw         $t5, 0x0($t3)
/* 6F9A4 800B51A4 3C0E0600 */  lui        $t6, (0x6000000 >> 16)
/* 6F9A8 800B51A8 AD8E0000 */  sw         $t6, 0x0($t4)
/* 6F9AC 800B51AC 8D2F001C */  lw         $t7, 0x1C($t1)
/* 6F9B0 800B51B0 25820008 */  addiu      $v0, $t4, 0x8
/* 6F9B4 800B51B4 01EAC021 */  addu       $t8, $t7, $t2
/* 6F9B8 800B51B8 0301C821 */  addu       $t9, $t8, $at
/* 6F9BC 800B51BC 03E00008 */  jr         $ra
/* 6F9C0 800B51C0 AD990004 */   sw        $t9, 0x4($t4)

glabel func_800B51C4
/* 6F9C4 800B51C4 3C088004 */  lui        $t0, %hi(D_80045548)
/* 6F9C8 800B51C8 25085548 */  addiu      $t0, $t0, %lo(D_80045548)
/* 6F9CC 800B51CC 8D030000 */  lw         $v1, 0x0($t0)
/* 6F9D0 800B51D0 00803825 */  or         $a3, $a0, $zero
/* 6F9D4 800B51D4 00001025 */  or         $v0, $zero, $zero
/* 6F9D8 800B51D8 18600026 */  blez       $v1, .L800B5274
/* 6F9DC 800B51DC 00002825 */   or        $a1, $zero, $zero
/* 6F9E0 800B51E0 3C0A8004 */  lui        $t2, %hi(D_80038544)
/* 6F9E4 800B51E4 3C098004 */  lui        $t1, %hi(D_8003FCC0)
/* 6F9E8 800B51E8 2529FCC0 */  addiu      $t1, $t1, %lo(D_8003FCC0)
/* 6F9EC 800B51EC 254A8544 */  addiu      $t2, $t2, %lo(D_80038544)
.L800B51F0:
/* 6F9F0 800B51F0 00670019 */  multu      $v1, $a3
/* 6F9F4 800B51F4 8D2E0000 */  lw         $t6, 0x0($t1)
/* 6F9F8 800B51F8 8D4B0000 */  lw         $t3, 0x0($t2)
/* 6F9FC 800B51FC 00AE2021 */  addu       $a0, $a1, $t6
/* 6FA00 800B5200 8C8C00B0 */  lw         $t4, 0xB0($a0)
/* 6FA04 800B5204 248400B0 */  addiu      $a0, $a0, 0xB0
/* 6FA08 800B5208 000C6FC2 */  srl        $t5, $t4, 31
/* 6FA0C 800B520C 00007812 */  mflo       $t7
/* 6FA10 800B5210 01E2C021 */  addu       $t8, $t7, $v0
/* 6FA14 800B5214 0018C900 */  sll        $t9, $t8, 4
/* 6FA18 800B5218 11A0000D */  beqz       $t5, .L800B5250
/* 6FA1C 800B521C 032B3021 */   addu      $a2, $t9, $t3
/* 6FA20 800B5220 8C810000 */  lw         $at, 0x0($a0)
/* 6FA24 800B5224 ACC10000 */  sw         $at, 0x0($a2)
/* 6FA28 800B5228 8C8F0004 */  lw         $t7, 0x4($a0)
/* 6FA2C 800B522C ACCF0004 */  sw         $t7, 0x4($a2)
/* 6FA30 800B5230 8C810008 */  lw         $at, 0x8($a0)
/* 6FA34 800B5234 ACC10008 */  sw         $at, 0x8($a2)
/* 6FA38 800B5238 8C8F000C */  lw         $t7, 0xC($a0)
/* 6FA3C 800B523C ACCF000C */  sw         $t7, 0xC($a2)
/* 6FA40 800B5240 90980000 */  lbu        $t8, 0x0($a0)
/* 6FA44 800B5244 3319FFBF */  andi       $t9, $t8, 0xFFBF
/* 6FA48 800B5248 10000004 */  b          .L800B525C
/* 6FA4C 800B524C A0990000 */   sb        $t9, 0x0($a0)
.L800B5250:
/* 6FA50 800B5250 90CB0000 */  lbu        $t3, 0x0($a2)
/* 6FA54 800B5254 316CFF7F */  andi       $t4, $t3, 0xFF7F
/* 6FA58 800B5258 A0CC0000 */  sb         $t4, 0x0($a2)
.L800B525C:
/* 6FA5C 800B525C 8D030000 */  lw         $v1, 0x0($t0)
/* 6FA60 800B5260 24420001 */  addiu      $v0, $v0, 0x1
/* 6FA64 800B5264 24A500C0 */  addiu      $a1, $a1, 0xC0
/* 6FA68 800B5268 0043082A */  slt        $at, $v0, $v1
/* 6FA6C 800B526C 1420FFE0 */  bnez       $at, .L800B51F0
/* 6FA70 800B5270 00000000 */   nop
.L800B5274:
/* 6FA74 800B5274 03E00008 */  jr         $ra
/* 6FA78 800B5278 00000000 */   nop

glabel func_800B527C
/* 6FA7C 800B527C 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 6FA80 800B5280 AFB60030 */  sw         $s6, 0x30($sp)
/* 6FA84 800B5284 3C168004 */  lui        $s6, %hi(D_80045520)
/* 6FA88 800B5288 26D65520 */  addiu      $s6, $s6, %lo(D_80045520)
/* 6FA8C 800B528C AFB40028 */  sw         $s4, 0x28($sp)
/* 6FA90 800B5290 86D4000C */  lh         $s4, 0xC($s6)
/* 6FA94 800B5294 AFB70034 */  sw         $s7, 0x34($sp)
/* 6FA98 800B5298 AFB1001C */  sw         $s1, 0x1C($sp)
/* 6FA9C 800B529C 00C08825 */  or         $s1, $a2, $zero
/* 6FAA0 800B52A0 00E0B825 */  or         $s7, $a3, $zero
/* 6FAA4 800B52A4 AFBF003C */  sw         $ra, 0x3C($sp)
/* 6FAA8 800B52A8 AFBE0038 */  sw         $fp, 0x38($sp)
/* 6FAAC 800B52AC AFB5002C */  sw         $s5, 0x2C($sp)
/* 6FAB0 800B52B0 AFB30024 */  sw         $s3, 0x24($sp)
/* 6FAB4 800B52B4 AFB20020 */  sw         $s2, 0x20($sp)
/* 6FAB8 800B52B8 AFB00018 */  sw         $s0, 0x18($sp)
/* 6FABC 800B52BC AFA40060 */  sw         $a0, 0x60($sp)
/* 6FAC0 800B52C0 1A800009 */  blez       $s4, .L800B52E8
/* 6FAC4 800B52C4 AFA50064 */   sw        $a1, 0x64($sp)
.L800B52C8:
/* 6FAC8 800B52C8 2690FFFF */  addiu      $s0, $s4, -0x1
/* 6FACC 800B52CC 0C02FC31 */  jal        func_800BF0C4
/* 6FAD0 800B52D0 02002025 */   or        $a0, $s0, $zero
/* 6FAD4 800B52D4 86CE000C */  lh         $t6, 0xC($s6)
/* 6FAD8 800B52D8 0C02D471 */  jal        func_800B51C4
/* 6FADC 800B52DC 01D42023 */   subu      $a0, $t6, $s4
/* 6FAE0 800B52E0 1E00FFF9 */  bgtz       $s0, .L800B52C8
/* 6FAE4 800B52E4 0200A025 */   or        $s4, $s0, $zero
.L800B52E8:
/* 6FAE8 800B52E8 8FAF0060 */  lw         $t7, 0x60($sp)
/* 6FAEC 800B52EC 3C190700 */  lui        $t9, (0x7000000 >> 16)
/* 6FAF0 800B52F0 0220F025 */  or         $fp, $s1, $zero
/* 6FAF4 800B52F4 25F80008 */  addiu      $t8, $t7, 0x8
/* 6FAF8 800B52F8 AFB80048 */  sw         $t8, 0x48($sp)
/* 6FAFC 800B52FC ADE00004 */  sw         $zero, 0x4($t7)
/* 6FB00 800B5300 ADF90000 */  sw         $t9, 0x0($t7)
/* 6FB04 800B5304 86D4000C */  lh         $s4, 0xC($s6)
/* 6FB08 800B5308 8FB50040 */  lw         $s5, 0x40($sp)
/* 6FB0C 800B530C 01E01025 */  or         $v0, $t7, $zero
/* 6FB10 800B5310 1A800056 */  blez       $s4, .L800B546C
.L800B5314:
/* 6FB14 800B5314 24010001 */   addiu     $at, $zero, 0x1
/* 6FB18 800B5318 86D2000C */  lh         $s2, 0xC($s6)
/* 6FB1C 800B531C 1681000B */  bne        $s4, $at, .L800B534C
/* 6FB20 800B5320 00008825 */   or        $s1, $zero, $zero
/* 6FB24 800B5324 3C098004 */  lui        $t1, %hi(D_80038548)
/* 6FB28 800B5328 3C0B8004 */  lui        $t3, %hi(D_8003B548)
/* 6FB2C 800B532C 256BB548 */  addiu      $t3, $t3, %lo(D_8003B548)
/* 6FB30 800B5330 25298548 */  addiu      $t1, $t1, %lo(D_80038548)
/* 6FB34 800B5334 00154300 */  sll        $t0, $s5, 12
/* 6FB38 800B5338 00155300 */  sll        $t2, $s5, 12
/* 6FB3C 800B533C 014B2021 */  addu       $a0, $t2, $t3
/* 6FB40 800B5340 01091821 */  addu       $v1, $t0, $t1
/* 6FB44 800B5344 10000026 */  b          .L800B53E0
/* 6FB48 800B5348 02E09825 */   or        $s3, $s7, $zero
.L800B534C:
/* 6FB4C 800B534C 02F4001A */  div        $zero, $s7, $s4
/* 6FB50 800B5350 16800002 */  bnez       $s4, .L800B535C
/* 6FB54 800B5354 00000000 */   nop
/* 6FB58 800B5358 0007000D */  break      7
.L800B535C:
/* 6FB5C 800B535C 2401FFFF */  addiu      $at, $zero, -0x1
/* 6FB60 800B5360 16810004 */  bne        $s4, $at, .L800B5374
/* 6FB64 800B5364 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 6FB68 800B5368 16E10002 */  bne        $s7, $at, .L800B5374
/* 6FB6C 800B536C 00000000 */   nop
/* 6FB70 800B5370 0006000D */  break      6
.L800B5374:
/* 6FB74 800B5374 86C50010 */  lh         $a1, 0x10($s6)
/* 6FB78 800B5378 00001012 */  mflo       $v0
/* 6FB7C 800B537C 24150002 */  addiu      $s5, $zero, 0x2
/* 6FB80 800B5380 0045082A */  slt        $at, $v0, $a1
/* 6FB84 800B5384 14200006 */  bnez       $at, .L800B53A0
/* 6FB88 800B5388 00A09825 */   or        $s3, $a1, $zero
/* 6FB8C 800B538C 3C038004 */  lui        $v1, %hi(D_8003A548)
/* 6FB90 800B5390 3C048004 */  lui        $a0, %hi(D_8003D548)
/* 6FB94 800B5394 2484D548 */  addiu      $a0, $a0, %lo(D_8003D548)
/* 6FB98 800B5398 10000011 */  b          .L800B53E0
/* 6FB9C 800B539C 2463A548 */   addiu     $v1, $v1, %lo(D_8003A548)
.L800B53A0:
/* 6FBA0 800B53A0 86C50012 */  lh         $a1, 0x12($s6)
/* 6FBA4 800B53A4 3C038004 */  lui        $v1, %hi(D_80039548)
/* 6FBA8 800B53A8 24639548 */  addiu      $v1, $v1, %lo(D_80039548)
/* 6FBAC 800B53AC 00A2082A */  slt        $at, $a1, $v0
/* 6FBB0 800B53B0 14200008 */  bnez       $at, .L800B53D4
/* 6FBB4 800B53B4 24150001 */   addiu     $s5, $zero, 0x1
/* 6FBB8 800B53B8 3C038004 */  lui        $v1, %hi(D_80038548)
/* 6FBBC 800B53BC 3C048004 */  lui        $a0, %hi(D_8003B548)
/* 6FBC0 800B53C0 2484B548 */  addiu      $a0, $a0, %lo(D_8003B548)
/* 6FBC4 800B53C4 24638548 */  addiu      $v1, $v1, %lo(D_80038548)
/* 6FBC8 800B53C8 00A09825 */  or         $s3, $a1, $zero
/* 6FBCC 800B53CC 10000004 */  b          .L800B53E0
/* 6FBD0 800B53D0 0000A825 */   or        $s5, $zero, $zero
.L800B53D4:
/* 6FBD4 800B53D4 3C048004 */  lui        $a0, %hi(D_8003C548)
/* 6FBD8 800B53D8 2484C548 */  addiu      $a0, $a0, %lo(D_8003C548)
/* 6FBDC 800B53DC 86D3000E */  lh         $s3, 0xE($s6)
.L800B53E0:
/* 6FBE0 800B53E0 3C028004 */  lui        $v0, %hi(D_80038543)
/* 6FBE4 800B53E4 80428543 */  lb         $v0, %lo(D_80038543)($v0)
/* 6FBE8 800B53E8 3C018004 */  lui        $at, %hi(D_8003E548)
/* 6FBEC 800B53EC AC23E548 */  sw         $v1, %lo(D_8003E548)($at)
/* 6FBF0 800B53F0 3C018004 */  lui        $at, %hi(D_8003E54C)
/* 6FBF4 800B53F4 18400011 */  blez       $v0, .L800B543C
/* 6FBF8 800B53F8 AC24E54C */   sw        $a0, %lo(D_8003E54C)($at)
/* 6FBFC 800B53FC 3C108004 */  lui        $s0, %hi(D_80038110)
/* 6FC00 800B5400 26108110 */  addiu      $s0, $s0, %lo(D_80038110)
.L800B5404:
/* 6FC04 800B5404 920C0001 */  lbu        $t4, 0x1($s0)
/* 6FC08 800B5408 02602025 */  or         $a0, $s3, $zero
/* 6FC0C 800B540C 02542823 */  subu       $a1, $s2, $s4
/* 6FC10 800B5410 51800007 */  beql       $t4, $zero, .L800B5430
/* 6FC14 800B5414 26310001 */   addiu     $s1, $s1, 0x1
/* 6FC18 800B5418 0C02D374 */  jal        func_800B4DD0
/* 6FC1C 800B541C 02203025 */   or        $a2, $s1, $zero
/* 6FC20 800B5420 3C028004 */  lui        $v0, %hi(D_80038543)
/* 6FC24 800B5424 80428543 */  lb         $v0, %lo(D_80038543)($v0)
/* 6FC28 800B5428 86D2000C */  lh         $s2, 0xC($s6)
/* 6FC2C 800B542C 26310001 */  addiu      $s1, $s1, 0x1
.L800B5430:
/* 6FC30 800B5430 0222082A */  slt        $at, $s1, $v0
/* 6FC34 800B5434 1420FFF3 */  bnez       $at, .L800B5404
/* 6FC38 800B5438 26100108 */   addiu     $s0, $s0, 0x108
.L800B543C:
/* 6FC3C 800B543C 03C02025 */  or         $a0, $fp, $zero
/* 6FC40 800B5440 02602825 */  or         $a1, $s3, $zero
/* 6FC44 800B5444 8FA60048 */  lw         $a2, 0x48($sp)
/* 6FC48 800B5448 0C02D66A */  jal        func_800B59A8
/* 6FC4C 800B544C 02543823 */   subu      $a3, $s2, $s4
/* 6FC50 800B5450 2694FFFF */  addiu      $s4, $s4, -0x1
/* 6FC54 800B5454 00136880 */  sll        $t5, $s3, 2
/* 6FC58 800B5458 AFA20048 */  sw         $v0, 0x48($sp)
/* 6FC5C 800B545C 02F3B823 */  subu       $s7, $s7, $s3
/* 6FC60 800B5460 1E80FFAC */  bgtz       $s4, .L800B5314
/* 6FC64 800B5464 03CDF021 */   addu      $fp, $fp, $t5
/* 6FC68 800B5468 AFB50040 */  sw         $s5, 0x40($sp)
.L800B546C:
/* 6FC6C 800B546C 3C028004 */  lui        $v0, %hi(D_80038543)
/* 6FC70 800B5470 80428543 */  lb         $v0, %lo(D_80038543)($v0)
/* 6FC74 800B5474 3C0E8004 */  lui        $t6, %hi(D_80038110)
/* 6FC78 800B5478 25D08110 */  addiu      $s0, $t6, %lo(D_80038110)
/* 6FC7C 800B547C 1840000E */  blez       $v0, .L800B54B8
/* 6FC80 800B5480 00027940 */   sll       $t7, $v0, 5
/* 6FC84 800B5484 01E27821 */  addu       $t7, $t7, $v0
/* 6FC88 800B5488 000F78C0 */  sll        $t7, $t7, 3
/* 6FC8C 800B548C 01F01821 */  addu       $v1, $t7, $s0
.L800B5490:
/* 6FC90 800B5490 92020002 */  lbu        $v0, 0x2($s0)
/* 6FC94 800B5494 10400002 */  beqz       $v0, .L800B54A0
/* 6FC98 800B5498 2458FFFF */   addiu     $t8, $v0, -0x1
/* 6FC9C 800B549C A2180002 */  sb         $t8, 0x2($s0)
.L800B54A0:
/* 6FCA0 800B54A0 92190003 */  lbu        $t9, 0x3($s0)
/* 6FCA4 800B54A4 26100108 */  addiu      $s0, $s0, 0x108
/* 6FCA8 800B54A8 0203082B */  sltu       $at, $s0, $v1
/* 6FCAC 800B54AC 3B280001 */  xori       $t0, $t9, 0x1
/* 6FCB0 800B54B0 1420FFF7 */  bnez       $at, .L800B5490
/* 6FCB4 800B54B4 A208FEFB */   sb        $t0, -0x105($s0)
.L800B54B8:
/* 6FCB8 800B54B8 8FA20048 */  lw         $v0, 0x48($sp)
/* 6FCBC 800B54BC 8FAA0060 */  lw         $t2, 0x60($sp)
/* 6FCC0 800B54C0 8FAD0064 */  lw         $t5, 0x64($sp)
/* 6FCC4 800B54C4 004A5823 */  subu       $t3, $v0, $t2
/* 6FCC8 800B54C8 000B60C3 */  sra        $t4, $t3, 3
/* 6FCCC 800B54CC ADAC0000 */  sw         $t4, 0x0($t5)
/* 6FCD0 800B54D0 8FBF003C */  lw         $ra, 0x3C($sp)
/* 6FCD4 800B54D4 8FBE0038 */  lw         $fp, 0x38($sp)
/* 6FCD8 800B54D8 8FB70034 */  lw         $s7, 0x34($sp)
/* 6FCDC 800B54DC 8FB60030 */  lw         $s6, 0x30($sp)
/* 6FCE0 800B54E0 8FB5002C */  lw         $s5, 0x2C($sp)
/* 6FCE4 800B54E4 8FB40028 */  lw         $s4, 0x28($sp)
/* 6FCE8 800B54E8 8FB30024 */  lw         $s3, 0x24($sp)
/* 6FCEC 800B54EC 8FB20020 */  lw         $s2, 0x20($sp)
/* 6FCF0 800B54F0 8FB1001C */  lw         $s1, 0x1C($sp)
/* 6FCF4 800B54F4 8FB00018 */  lw         $s0, 0x18($sp)
/* 6FCF8 800B54F8 03E00008 */  jr         $ra
/* 6FCFC 800B54FC 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_800B5500
/* 6FD00 800B5500 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 6FD04 800B5504 AFB10020 */  sw         $s1, 0x20($sp)
/* 6FD08 800B5508 00068C00 */  sll        $s1, $a2, 16
/* 6FD0C 800B550C 00117403 */  sra        $t6, $s1, 16
/* 6FD10 800B5510 000EC940 */  sll        $t9, $t6, 5
/* 6FD14 800B5514 032EC821 */  addu       $t9, $t9, $t6
/* 6FD18 800B5518 3C0D8004 */  lui        $t5, %hi(D_80038110)
/* 6FD1C 800B551C 25AD8110 */  addiu      $t5, $t5, %lo(D_80038110)
/* 6FD20 800B5520 0019C8C0 */  sll        $t9, $t9, 3
/* 6FD24 800B5524 01C08825 */  or         $s1, $t6, $zero
/* 6FD28 800B5528 032D1821 */  addu       $v1, $t9, $t5
/* 6FD2C 800B552C 906E0003 */  lbu        $t6, 0x3($v1)
/* 6FD30 800B5530 AFA7006C */  sw         $a3, 0x6C($sp)
/* 6FD34 800B5534 00077C00 */  sll        $t7, $a3, 16
/* 6FD38 800B5538 000F3C03 */  sra        $a3, $t7, 16
/* 6FD3C 800B553C 000E7880 */  sll        $t7, $t6, 2
/* 6FD40 800B5540 01EE7823 */  subu       $t7, $t7, $t6
/* 6FD44 800B5544 000F78C0 */  sll        $t7, $t7, 3
/* 6FD48 800B5548 01EE7821 */  addu       $t7, $t7, $t6
/* 6FD4C 800B554C AFBF0024 */  sw         $ra, 0x24($sp)
/* 6FD50 800B5550 AFB0001C */  sw         $s0, 0x1C($sp)
/* 6FD54 800B5554 AFA50064 */  sw         $a1, 0x64($sp)
/* 6FD58 800B5558 AFA60068 */  sw         $a2, 0x68($sp)
/* 6FD5C 800B555C 3C0D0200 */  lui        $t5, (0x2000740 >> 16)
/* 6FD60 800B5560 000F7880 */  sll        $t7, $t7, 2
/* 6FD64 800B5564 35AD0740 */  ori        $t5, $t5, (0x2000740 & 0xFFFF)
/* 6FD68 800B5568 240E0280 */  addiu      $t6, $zero, 0x280
/* 6FD6C 800B556C 006FC021 */  addu       $t8, $v1, $t7
/* 6FD70 800B5570 0007C880 */  sll        $t9, $a3, 2
/* 6FD74 800B5574 AC8E0004 */  sw         $t6, 0x4($a0)
/* 6FD78 800B5578 AC8D0000 */  sw         $t5, 0x0($a0)
/* 6FD7C 800B557C 906F0004 */  lbu        $t7, 0x4($v1)
/* 6FD80 800B5580 0327C821 */  addu       $t9, $t9, $a3
/* 6FD84 800B5584 0019C880 */  sll        $t9, $t9, 2
/* 6FD88 800B5588 03194021 */  addu       $t0, $t8, $t9
/* 6FD8C 800B558C 24010001 */  addiu      $at, $zero, 0x1
/* 6FD90 800B5590 25080030 */  addiu      $t0, $t0, 0x30
/* 6FD94 800B5594 15E10033 */  bne        $t7, $at, .L800B5664
/* 6FD98 800B5598 24900008 */   addiu     $s0, $a0, 0x8
/* 6FD9C 800B559C 9506000E */  lhu        $a2, 0xE($t0)
/* 6FDA0 800B55A0 85070010 */  lh         $a3, 0x10($t0)
/* 6FDA4 800B55A4 AFA8005C */  sw         $t0, 0x5C($sp)
/* 6FDA8 800B55A8 AFA30028 */  sw         $v1, 0x28($sp)
/* 6FDAC 800B55AC AFB10010 */  sw         $s1, 0x10($sp)
/* 6FDB0 800B55B0 02002025 */  or         $a0, $s0, $zero
/* 6FDB4 800B55B4 0C02D419 */  jal        func_800B5064
/* 6FDB8 800B55B8 24050740 */   addiu     $a1, $zero, 0x740
/* 6FDBC 800B55BC 8FA8005C */  lw         $t0, 0x5C($sp)
/* 6FDC0 800B55C0 00408025 */  or         $s0, $v0, $zero
/* 6FDC4 800B55C4 8FA30028 */  lw         $v1, 0x28($sp)
/* 6FDC8 800B55C8 85070012 */  lh         $a3, 0x12($t0)
/* 6FDCC 800B55CC 02002025 */  or         $a0, $s0, $zero
/* 6FDD0 800B55D0 00003025 */  or         $a2, $zero, $zero
/* 6FDD4 800B55D4 50E0000A */  beql       $a3, $zero, .L800B5600
/* 6FDD8 800B55D8 3C0A0800 */   lui       $t2, (0x8000000 >> 16)
/* 6FDDC 800B55DC 85050010 */  lh         $a1, 0x10($t0)
/* 6FDE0 800B55E0 AFA30028 */  sw         $v1, 0x28($sp)
/* 6FDE4 800B55E4 AFB10010 */  sw         $s1, 0x10($sp)
/* 6FDE8 800B55E8 24A50740 */  addiu      $a1, $a1, 0x740
/* 6FDEC 800B55EC 30B8FFFF */  andi       $t8, $a1, 0xFFFF
/* 6FDF0 800B55F0 0C02D419 */  jal        func_800B5064
/* 6FDF4 800B55F4 03002825 */   or        $a1, $t8, $zero
/* 6FDF8 800B55F8 8FA30028 */  lw         $v1, 0x28($sp)
/* 6FDFC 800B55FC 3C0A0800 */  lui        $t2, (0x8000000 >> 16)
.L800B5600:
/* 6FE00 800B5600 24500008 */  addiu      $s0, $v0, 0x8
/* 6FE04 800B5604 24190280 */  addiu      $t9, $zero, 0x280
/* 6FE08 800B5608 AC590004 */  sw         $t9, 0x4($v0)
/* 6FE0C 800B560C AC4A0000 */  sw         $t2, 0x0($v0)
/* 6FE10 800B5610 02002825 */  or         $a1, $s0, $zero
/* 6FE14 800B5614 3C0D0C00 */  lui        $t5, (0xC007FFF >> 16)
/* 6FE18 800B5618 3C0E0740 */  lui        $t6, (0x74004C0 >> 16)
/* 6FE1C 800B561C 35CE04C0 */  ori        $t6, $t6, (0x74004C0 & 0xFFFF)
/* 6FE20 800B5620 35AD7FFF */  ori        $t5, $t5, (0xC007FFF & 0xFFFF)
/* 6FE24 800B5624 ACAD0000 */  sw         $t5, 0x0($a1)
/* 6FE28 800B5628 ACAE0004 */  sw         $t6, 0x4($a1)
/* 6FE2C 800B562C 946F0008 */  lhu        $t7, 0x8($v1)
/* 6FE30 800B5630 34018000 */  ori        $at, $zero, 0x8000
/* 6FE34 800B5634 26100008 */  addiu      $s0, $s0, 0x8
/* 6FE38 800B5638 01E1C021 */  addu       $t8, $t7, $at
/* 6FE3C 800B563C 3319FFFF */  andi       $t9, $t8, 0xFFFF
/* 6FE40 800B5640 3C010C00 */  lui        $at, (0xC000000 >> 16)
/* 6FE44 800B5644 02003025 */  or         $a2, $s0, $zero
/* 6FE48 800B5648 3C0E0740 */  lui        $t6, (0x7400740 >> 16)
/* 6FE4C 800B564C 35CE0740 */  ori        $t6, $t6, (0x7400740 & 0xFFFF)
/* 6FE50 800B5650 03216825 */  or         $t5, $t9, $at
/* 6FE54 800B5654 ACCD0000 */  sw         $t5, 0x0($a2)
/* 6FE58 800B5658 ACCE0004 */  sw         $t6, 0x4($a2)
/* 6FE5C 800B565C 10000078 */  b          .L800B5840
/* 6FE60 800B5660 26100008 */   addiu     $s0, $s0, 0x8
.L800B5664:
/* 6FE64 800B5664 8D02000C */  lw         $v0, 0xC($t0)
/* 6FE68 800B5668 850D0010 */  lh         $t5, 0x10($t0)
/* 6FE6C 800B566C 2401FFF0 */  addiu      $at, $zero, -0x10
/* 6FE70 800B5670 304F0007 */  andi       $t7, $v0, 0x7
/* 6FE74 800B5674 000FC440 */  sll        $t8, $t7, 17
/* 6FE78 800B5678 0018CC03 */  sra        $t9, $t8, 16
/* 6FE7C 800B567C 032D5021 */  addu       $t2, $t9, $t5
/* 6FE80 800B5680 254A000F */  addiu      $t2, $t2, 0xF
/* 6FE84 800B5684 03204825 */  or         $t1, $t9, $zero
/* 6FE88 800B5688 314EFFF0 */  andi       $t6, $t2, 0xFFF0
/* 6FE8C 800B568C 000E7C00 */  sll        $t7, $t6, 16
/* 6FE90 800B5690 000FC403 */  sra        $t8, $t7, 16
/* 6FE94 800B5694 03005025 */  or         $t2, $t8, $zero
/* 6FE98 800B5698 A7AA0058 */  sh         $t2, 0x58($sp)
/* 6FE9C 800B569C A7A9005A */  sh         $t1, 0x5A($sp)
/* 6FEA0 800B56A0 AFA8005C */  sw         $t0, 0x5C($sp)
/* 6FEA4 800B56A4 AFA30028 */  sw         $v1, 0x28($sp)
/* 6FEA8 800B56A8 AFB10010 */  sw         $s1, 0x10($sp)
/* 6FEAC 800B56AC 02002025 */  or         $a0, $s0, $zero
/* 6FEB0 800B56B0 24050020 */  addiu      $a1, $zero, 0x20
/* 6FEB4 800B56B4 05210003 */  bgez       $t1, .L800B56C4
/* 6FEB8 800B56B8 0009C843 */   sra       $t9, $t1, 1
/* 6FEBC 800B56BC 25210001 */  addiu      $at, $t1, 0x1
/* 6FEC0 800B56C0 0001C843 */  sra        $t9, $at, 1
.L800B56C4:
/* 6FEC4 800B56C4 00593023 */  subu       $a2, $v0, $t9
/* 6FEC8 800B56C8 30CDFFFF */  andi       $t5, $a2, 0xFFFF
/* 6FECC 800B56CC 01A03025 */  or         $a2, $t5, $zero
/* 6FED0 800B56D0 0C02D419 */  jal        func_800B5064
/* 6FED4 800B56D4 24070140 */   addiu     $a3, $zero, 0x140
/* 6FED8 800B56D8 8FA8005C */  lw         $t0, 0x5C($sp)
/* 6FEDC 800B56DC 00408025 */  or         $s0, $v0, $zero
/* 6FEE0 800B56E0 8FA30028 */  lw         $v1, 0x28($sp)
/* 6FEE4 800B56E4 850E0012 */  lh         $t6, 0x12($t0)
/* 6FEE8 800B56E8 87A9005A */  lh         $t1, 0x5A($sp)
/* 6FEEC 800B56EC 87AA0058 */  lh         $t2, 0x58($sp)
/* 6FEF0 800B56F0 11C0000D */  beqz       $t6, .L800B5728
/* 6FEF4 800B56F4 02002025 */   or        $a0, $s0, $zero
/* 6FEF8 800B56F8 25450020 */  addiu      $a1, $t2, 0x20
/* 6FEFC 800B56FC 30AFFFFF */  andi       $t7, $a1, 0xFFFF
/* 6FF00 800B5700 24180140 */  addiu      $t8, $zero, 0x140
/* 6FF04 800B5704 030A3823 */  subu       $a3, $t8, $t2
/* 6FF08 800B5708 01E02825 */  or         $a1, $t7, $zero
/* 6FF0C 800B570C 00003025 */  or         $a2, $zero, $zero
/* 6FF10 800B5710 AFB10010 */  sw         $s1, 0x10($sp)
/* 6FF14 800B5714 AFA30028 */  sw         $v1, 0x28($sp)
/* 6FF18 800B5718 0C02D419 */  jal        func_800B5064
/* 6FF1C 800B571C A7A9005A */   sh        $t1, 0x5A($sp)
/* 6FF20 800B5720 8FA30028 */  lw         $v1, 0x28($sp)
/* 6FF24 800B5724 87A9005A */  lh         $t1, 0x5A($sp)
.L800B5728:
/* 6FF28 800B5728 25390020 */  addiu      $t9, $t1, 0x20
/* 6FF2C 800B572C 3C0A0800 */  lui        $t2, (0x8000000 >> 16)
/* 6FF30 800B5730 332DFFFF */  andi       $t5, $t9, 0xFFFF
/* 6FF34 800B5734 01AA7025 */  or         $t6, $t5, $t2
/* 6FF38 800B5738 AC4E0000 */  sw         $t6, 0x0($v0)
/* 6FF3C 800B573C 8FA50064 */  lw         $a1, 0x64($sp)
/* 6FF40 800B5740 3C010740 */  lui        $at, (0x7400000 >> 16)
/* 6FF44 800B5744 3C0B0500 */  lui        $t3, (0x5000000 >> 16)
/* 6FF48 800B5748 00057840 */  sll        $t7, $a1, 1
/* 6FF4C 800B574C 31E5FFFF */  andi       $a1, $t7, 0xFFFF
/* 6FF50 800B5750 00A1C825 */  or         $t9, $a1, $at
/* 6FF54 800B5754 AC590004 */  sw         $t9, 0x4($v0)
/* 6FF58 800B5758 90790000 */  lbu        $t9, 0x0($v1)
/* 6FF5C 800B575C 946E000A */  lhu        $t6, 0xA($v1)
/* 6FF60 800B5760 24500008 */  addiu      $s0, $v0, 0x8
/* 6FF64 800B5764 00196C00 */  sll        $t5, $t9, 16
/* 6FF68 800B5768 01CB7825 */  or         $t7, $t6, $t3
/* 6FF6C 800B576C 01ED7025 */  or         $t6, $t7, $t5
/* 6FF70 800B5770 02003025 */  or         $a2, $s0, $zero
/* 6FF74 800B5774 ACCE0000 */  sw         $t6, 0x0($a2)
/* 6FF78 800B5778 8C780020 */  lw         $t8, 0x20($v1)
/* 6FF7C 800B577C 3C0C8000 */  lui        $t4, (0x80000000 >> 16)
/* 6FF80 800B5780 26100008 */  addiu      $s0, $s0, 0x8
/* 6FF84 800B5784 252F0160 */  addiu      $t7, $t1, 0x160
/* 6FF88 800B5788 030CC821 */  addu       $t9, $t8, $t4
/* 6FF8C 800B578C ACD90004 */  sw         $t9, 0x4($a2)
/* 6FF90 800B5790 31EDFFFF */  andi       $t5, $t7, 0xFFFF
/* 6FF94 800B5794 02003825 */  or         $a3, $s0, $zero
/* 6FF98 800B5798 3C010880 */  lui        $at, (0x8800000 >> 16)
/* 6FF9C 800B579C 00A1C025 */  or         $t8, $a1, $at
/* 6FFA0 800B57A0 01AA7025 */  or         $t6, $t5, $t2
/* 6FFA4 800B57A4 ACEE0000 */  sw         $t6, 0x0($a3)
/* 6FFA8 800B57A8 ACF80004 */  sw         $t8, 0x4($a3)
/* 6FFAC 800B57AC 90780000 */  lbu        $t8, 0x0($v1)
/* 6FFB0 800B57B0 946F000A */  lhu        $t7, 0xA($v1)
/* 6FFB4 800B57B4 26100008 */  addiu      $s0, $s0, 0x8
/* 6FFB8 800B57B8 0018CC00 */  sll        $t9, $t8, 16
/* 6FFBC 800B57BC 01EB6825 */  or         $t5, $t7, $t3
/* 6FFC0 800B57C0 01B97825 */  or         $t7, $t5, $t9
/* 6FFC4 800B57C4 02004025 */  or         $t0, $s0, $zero
/* 6FFC8 800B57C8 AD0F0000 */  sw         $t7, 0x0($t0)
/* 6FFCC 800B57CC 8C6E0024 */  lw         $t6, 0x24($v1)
/* 6FFD0 800B57D0 26100008 */  addiu      $s0, $s0, 0x8
/* 6FFD4 800B57D4 02001025 */  or         $v0, $s0, $zero
/* 6FFD8 800B57D8 01CCC021 */  addu       $t8, $t6, $t4
/* 6FFDC 800B57DC AD180004 */  sw         $t8, 0x4($t0)
/* 6FFE0 800B57E0 26100008 */  addiu      $s0, $s0, 0x8
/* 6FFE4 800B57E4 240D0280 */  addiu      $t5, $zero, 0x280
/* 6FFE8 800B57E8 AC4D0004 */  sw         $t5, 0x4($v0)
/* 6FFEC 800B57EC AC4A0000 */  sw         $t2, 0x0($v0)
/* 6FFF0 800B57F0 02002025 */  or         $a0, $s0, $zero
/* 6FFF4 800B57F4 3C0F0740 */  lui        $t7, (0x74004C0 >> 16)
/* 6FFF8 800B57F8 3C190C00 */  lui        $t9, (0xC007FFF >> 16)
/* 6FFFC 800B57FC 37397FFF */  ori        $t9, $t9, (0xC007FFF & 0xFFFF)
/* 70000 800B5800 35EF04C0 */  ori        $t7, $t7, (0x74004C0 & 0xFFFF)
/* 70004 800B5804 AC8F0004 */  sw         $t7, 0x4($a0)
/* 70008 800B5808 AC990000 */  sw         $t9, 0x0($a0)
/* 7000C 800B580C 946E0008 */  lhu        $t6, 0x8($v1)
/* 70010 800B5810 34018000 */  ori        $at, $zero, 0x8000
/* 70014 800B5814 26100008 */  addiu      $s0, $s0, 0x8
/* 70018 800B5818 01C1C021 */  addu       $t8, $t6, $at
/* 7001C 800B581C 02002825 */  or         $a1, $s0, $zero
/* 70020 800B5820 330DFFFF */  andi       $t5, $t8, 0xFFFF
/* 70024 800B5824 3C010C00 */  lui        $at, (0xC000000 >> 16)
/* 70028 800B5828 3C0F0740 */  lui        $t7, (0x7400740 >> 16)
/* 7002C 800B582C 35EF0740 */  ori        $t7, $t7, (0x7400740 & 0xFFFF)
/* 70030 800B5830 01A1C825 */  or         $t9, $t5, $at
/* 70034 800B5834 ACB90000 */  sw         $t9, 0x0($a1)
/* 70038 800B5838 ACAF0004 */  sw         $t7, 0x4($a1)
/* 7003C 800B583C 26100008 */  addiu      $s0, $s0, 0x8
.L800B5840:
/* 70040 800B5840 8FBF0024 */  lw         $ra, 0x24($sp)
/* 70044 800B5844 02001025 */  or         $v0, $s0, $zero
/* 70048 800B5848 8FB0001C */  lw         $s0, 0x1C($sp)
/* 7004C 800B584C 8FB10020 */  lw         $s1, 0x20($sp)
/* 70050 800B5850 03E00008 */  jr         $ra
/* 70054 800B5854 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_800B5858
/* 70058 800B5858 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 7005C 800B585C AFA50034 */  sw         $a1, 0x34($sp)
/* 70060 800B5860 87B80036 */  lh         $t8, 0x36($sp)
/* 70064 800B5864 3C088004 */  lui        $t0, %hi(D_80038110)
/* 70068 800B5868 25088110 */  addiu      $t0, $t0, %lo(D_80038110)
/* 7006C 800B586C 0018C940 */  sll        $t9, $t8, 5
/* 70070 800B5870 0338C821 */  addu       $t9, $t9, $t8
/* 70074 800B5874 0019C8C0 */  sll        $t9, $t9, 3
/* 70078 800B5878 03281021 */  addu       $v0, $t9, $t0
/* 7007C 800B587C 90490003 */  lbu        $t1, 0x3($v0)
/* 70080 800B5880 00067400 */  sll        $t6, $a2, 16
/* 70084 800B5884 000E7C03 */  sra        $t7, $t6, 16
/* 70088 800B5888 00095080 */  sll        $t2, $t1, 2
/* 7008C 800B588C 01495023 */  subu       $t2, $t2, $t1
/* 70090 800B5890 000A50C0 */  sll        $t2, $t2, 3
/* 70094 800B5894 000F3880 */  sll        $a3, $t7, 2
/* 70098 800B5898 01495021 */  addu       $t2, $t2, $t1
/* 7009C 800B589C 904C0001 */  lbu        $t4, 0x1($v0)
/* 700A0 800B58A0 000A5080 */  sll        $t2, $t2, 2
/* 700A4 800B58A4 00EF3821 */  addu       $a3, $a3, $t7
/* 700A8 800B58A8 00073880 */  sll        $a3, $a3, 2
/* 700AC 800B58AC 004A5821 */  addu       $t3, $v0, $t2
/* 700B0 800B58B0 AFB00020 */  sw         $s0, 0x20($sp)
/* 700B4 800B58B4 01671821 */  addu       $v1, $t3, $a3
/* 700B8 800B58B8 00808025 */  or         $s0, $a0, $zero
/* 700BC 800B58BC AFBF0024 */  sw         $ra, 0x24($sp)
/* 700C0 800B58C0 AFA60038 */  sw         $a2, 0x38($sp)
/* 700C4 800B58C4 11800033 */  beqz       $t4, .L800B5994
/* 700C8 800B58C8 24630030 */   addiu     $v1, $v1, 0x30
/* 700CC 800B58CC 904D0004 */  lbu        $t5, 0x4($v0)
/* 700D0 800B58D0 24010001 */  addiu      $at, $zero, 0x1
/* 700D4 800B58D4 3C190800 */  lui        $t9, (0x8000000 >> 16)
/* 700D8 800B58D8 15A10018 */  bne        $t5, $at, .L800B593C
/* 700DC 800B58DC 3C080740 */   lui       $t0, (0x7400280 >> 16)
/* 700E0 800B58E0 87AE0036 */  lh         $t6, 0x36($sp)
/* 700E4 800B58E4 9466000E */  lhu        $a2, 0xE($v1)
/* 700E8 800B58E8 84670010 */  lh         $a3, 0x10($v1)
/* 700EC 800B58EC AFA3002C */  sw         $v1, 0x2C($sp)
/* 700F0 800B58F0 24050740 */  addiu      $a1, $zero, 0x740
/* 700F4 800B58F4 0C02D445 */  jal        func_800B5114
/* 700F8 800B58F8 AFAE0010 */   sw        $t6, 0x10($sp)
/* 700FC 800B58FC 8FA3002C */  lw         $v1, 0x2C($sp)
/* 70100 800B5900 00408025 */  or         $s0, $v0, $zero
/* 70104 800B5904 00402025 */  or         $a0, $v0, $zero
/* 70108 800B5908 84670012 */  lh         $a3, 0x12($v1)
/* 7010C 800B590C 87B80036 */  lh         $t8, 0x36($sp)
/* 70110 800B5910 50E00021 */  beql       $a3, $zero, .L800B5998
/* 70114 800B5914 8FBF0024 */   lw        $ra, 0x24($sp)
/* 70118 800B5918 84650010 */  lh         $a1, 0x10($v1)
/* 7011C 800B591C AFB80010 */  sw         $t8, 0x10($sp)
/* 70120 800B5920 00003025 */  or         $a2, $zero, $zero
/* 70124 800B5924 24A50740 */  addiu      $a1, $a1, 0x740
/* 70128 800B5928 30AFFFFF */  andi       $t7, $a1, 0xFFFF
/* 7012C 800B592C 0C02D445 */  jal        func_800B5114
/* 70130 800B5930 01E02825 */   or        $a1, $t7, $zero
/* 70134 800B5934 10000017 */  b          .L800B5994
/* 70138 800B5938 00408025 */   or        $s0, $v0, $zero
.L800B593C:
/* 7013C 800B593C 02001825 */  or         $v1, $s0, $zero
/* 70140 800B5940 26100008 */  addiu      $s0, $s0, 0x8
/* 70144 800B5944 35080280 */  ori        $t0, $t0, (0x7400280 & 0xFFFF)
/* 70148 800B5948 AC680004 */  sw         $t0, 0x4($v1)
/* 7014C 800B594C AC790000 */  sw         $t9, 0x0($v1)
/* 70150 800B5950 02002025 */  or         $a0, $s0, $zero
/* 70154 800B5954 3C090600 */  lui        $t1, (0x6000000 >> 16)
/* 70158 800B5958 AC890000 */  sw         $t1, 0x0($a0)
/* 7015C 800B595C 904A0003 */  lbu        $t2, 0x3($v0)
/* 70160 800B5960 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 70164 800B5964 26100008 */  addiu      $s0, $s0, 0x8
/* 70168 800B5968 000A5880 */  sll        $t3, $t2, 2
/* 7016C 800B596C 016A5823 */  subu       $t3, $t3, $t2
/* 70170 800B5970 000B58C0 */  sll        $t3, $t3, 3
/* 70174 800B5974 016A5821 */  addu       $t3, $t3, $t2
/* 70178 800B5978 000B5880 */  sll        $t3, $t3, 2
/* 7017C 800B597C 004B6021 */  addu       $t4, $v0, $t3
/* 70180 800B5980 01876821 */  addu       $t5, $t4, $a3
/* 70184 800B5984 8DAE0034 */  lw         $t6, 0x34($t5)
/* 70188 800B5988 01C17821 */  addu       $t7, $t6, $at
/* 7018C 800B598C AC8F0004 */  sw         $t7, 0x4($a0)
/* 70190 800B5990 A0400000 */  sb         $zero, 0x0($v0)
.L800B5994:
/* 70194 800B5994 8FBF0024 */  lw         $ra, 0x24($sp)
.L800B5998:
/* 70198 800B5998 02001025 */  or         $v0, $s0, $zero
/* 7019C 800B599C 8FB00020 */  lw         $s0, 0x20($sp)
/* 701A0 800B59A0 03E00008 */  jr         $ra
/* 701A4 800B59A4 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_800B59A8
/* 701A8 800B59A8 27BDFF40 */  addiu      $sp, $sp, -0xC0
/* 701AC 800B59AC 3C0A8004 */  lui        $t2, %hi(D_80038543)
/* 701B0 800B59B0 254A8543 */  addiu      $t2, $t2, %lo(D_80038543)
/* 701B4 800B59B4 81480000 */  lb         $t0, 0x0($t2)
/* 701B8 800B59B8 AFBE0040 */  sw         $fp, 0x40($sp)
/* 701BC 800B59BC AFB40030 */  sw         $s4, 0x30($sp)
/* 701C0 800B59C0 AFB20028 */  sw         $s2, 0x28($sp)
/* 701C4 800B59C4 00C0A025 */  or         $s4, $a2, $zero
/* 701C8 800B59C8 00E0F025 */  or         $fp, $a3, $zero
/* 701CC 800B59CC AFBF0044 */  sw         $ra, 0x44($sp)
/* 701D0 800B59D0 AFB7003C */  sw         $s7, 0x3C($sp)
/* 701D4 800B59D4 AFB60038 */  sw         $s6, 0x38($sp)
/* 701D8 800B59D8 AFB50034 */  sw         $s5, 0x34($sp)
/* 701DC 800B59DC AFB3002C */  sw         $s3, 0x2C($sp)
/* 701E0 800B59E0 AFB10024 */  sw         $s1, 0x24($sp)
/* 701E4 800B59E4 AFB00020 */  sw         $s0, 0x20($sp)
/* 701E8 800B59E8 AFA400C0 */  sw         $a0, 0xC0($sp)
/* 701EC 800B59EC AFA500C4 */  sw         $a1, 0xC4($sp)
/* 701F0 800B59F0 1500001D */  bnez       $t0, .L800B5A68
/* 701F4 800B59F4 00009025 */   or        $s2, $zero, $zero
/* 701F8 800B59F8 3C048004 */  lui        $a0, %hi(D_80045548)
/* 701FC 800B59FC 8C845548 */  lw         $a0, %lo(D_80045548)($a0)
/* 70200 800B5A00 00008825 */  or         $s1, $zero, $zero
/* 70204 800B5A04 18800016 */  blez       $a0, .L800B5A60
/* 70208 800B5A08 00000000 */   nop
/* 7020C 800B5A0C 00870019 */  multu      $a0, $a3
/* 70210 800B5A10 3C0E8004 */  lui        $t6, %hi(D_80038544)
/* 70214 800B5A14 8DCE8544 */  lw         $t6, %lo(D_80038544)($t6)
/* 70218 800B5A18 27A50084 */  addiu      $a1, $sp, 0x84
/* 7021C 800B5A1C 00007812 */  mflo       $t7
/* 70220 800B5A20 000FC100 */  sll        $t8, $t7, 4
/* 70224 800B5A24 01D81021 */  addu       $v0, $t6, $t8
.L800B5A28:
/* 70228 800B5A28 8C590000 */  lw         $t9, 0x0($v0)
/* 7022C 800B5A2C 00B26021 */  addu       $t4, $a1, $s2
/* 70230 800B5A30 00195FC2 */  srl        $t3, $t9, 31
/* 70234 800B5A34 51600006 */  beql       $t3, $zero, .L800B5A50
/* 70238 800B5A38 26310001 */   addiu     $s1, $s1, 0x1
/* 7023C 800B5A3C 26520001 */  addiu      $s2, $s2, 0x1
/* 70240 800B5A40 00126C00 */  sll        $t5, $s2, 16
/* 70244 800B5A44 000D9403 */  sra        $s2, $t5, 16
/* 70248 800B5A48 A1910000 */  sb         $s1, 0x0($t4)
/* 7024C 800B5A4C 26310001 */  addiu      $s1, $s1, 0x1
.L800B5A50:
/* 70250 800B5A50 0224082A */  slt        $at, $s1, $a0
/* 70254 800B5A54 1420FFF4 */  bnez       $at, .L800B5A28
/* 70258 800B5A58 24420010 */   addiu     $v0, $v0, 0x10
/* 7025C 800B5A5C 00008825 */  or         $s1, $zero, $zero
.L800B5A60:
/* 70260 800B5A60 10000049 */  b          .L800B5B88
/* 70264 800B5A64 00009825 */   or        $s3, $zero, $zero
.L800B5A68:
/* 70268 800B5A68 19000026 */  blez       $t0, .L800B5B04
/* 7026C 800B5A6C 00009825 */   or        $s3, $zero, $zero
/* 70270 800B5A70 3C048004 */  lui        $a0, %hi(D_80045548)
/* 70274 800B5A74 8C845548 */  lw         $a0, %lo(D_80045548)($a0)
/* 70278 800B5A78 27A50084 */  addiu      $a1, $sp, 0x84
.L800B5A7C:
/* 7027C 800B5A7C 1880001A */  blez       $a0, .L800B5AE8
/* 70280 800B5A80 00008825 */   or        $s1, $zero, $zero
/* 70284 800B5A84 009E0019 */  multu      $a0, $fp
/* 70288 800B5A88 3C098004 */  lui        $t1, %hi(D_80038544)
/* 7028C 800B5A8C 8D298544 */  lw         $t1, %lo(D_80038544)($t1)
/* 70290 800B5A90 00001812 */  mflo       $v1
/* 70294 800B5A94 00000000 */  nop
/* 70298 800B5A98 00000000 */  nop
.L800B5A9C:
/* 7029C 800B5A9C 00037100 */  sll        $t6, $v1, 4
/* 702A0 800B5AA0 01C91021 */  addu       $v0, $t6, $t1
/* 702A4 800B5AA4 8C580000 */  lw         $t8, 0x0($v0)
/* 702A8 800B5AA8 0018CFC2 */  srl        $t9, $t8, 31
/* 702AC 800B5AAC 5320000B */  beql       $t9, $zero, .L800B5ADC
/* 702B0 800B5AB0 26310001 */   addiu     $s1, $s1, 0x1
/* 702B4 800B5AB4 904B0001 */  lbu        $t3, 0x1($v0)
/* 702B8 800B5AB8 00B26821 */  addu       $t5, $a1, $s2
/* 702BC 800B5ABC 000B6142 */  srl        $t4, $t3, 5
/* 702C0 800B5AC0 566C0006 */  bnel       $s3, $t4, .L800B5ADC
/* 702C4 800B5AC4 26310001 */   addiu     $s1, $s1, 0x1
/* 702C8 800B5AC8 26520001 */  addiu      $s2, $s2, 0x1
/* 702CC 800B5ACC 00127C00 */  sll        $t7, $s2, 16
/* 702D0 800B5AD0 000F9403 */  sra        $s2, $t7, 16
/* 702D4 800B5AD4 A1B10000 */  sb         $s1, 0x0($t5)
/* 702D8 800B5AD8 26310001 */  addiu      $s1, $s1, 0x1
.L800B5ADC:
/* 702DC 800B5ADC 0224082A */  slt        $at, $s1, $a0
/* 702E0 800B5AE0 1420FFEE */  bnez       $at, .L800B5A9C
/* 702E4 800B5AE4 24630001 */   addiu     $v1, $v1, 0x1
.L800B5AE8:
/* 702E8 800B5AE8 26730001 */  addiu      $s3, $s3, 0x1
/* 702EC 800B5AEC 0013C400 */  sll        $t8, $s3, 16
/* 702F0 800B5AF0 00189C03 */  sra        $s3, $t8, 16
/* 702F4 800B5AF4 0268082A */  slt        $at, $s3, $t0
/* 702F8 800B5AF8 1420FFE0 */  bnez       $at, .L800B5A7C
/* 702FC 800B5AFC 00000000 */   nop
/* 70300 800B5B00 00009825 */  or         $s3, $zero, $zero
.L800B5B04:
/* 70304 800B5B04 3C048004 */  lui        $a0, %hi(D_80045548)
/* 70308 800B5B08 8C845548 */  lw         $a0, %lo(D_80045548)($a0)
/* 7030C 800B5B0C 27A50084 */  addiu      $a1, $sp, 0x84
/* 70310 800B5B10 00008825 */  or         $s1, $zero, $zero
/* 70314 800B5B14 5880001D */  blezl      $a0, .L800B5B8C
/* 70318 800B5B18 02801025 */   or        $v0, $s4, $zero
/* 7031C 800B5B1C 009E0019 */  multu      $a0, $fp
/* 70320 800B5B20 3C098004 */  lui        $t1, %hi(D_80038544)
/* 70324 800B5B24 8D298544 */  lw         $t1, %lo(D_80038544)($t1)
/* 70328 800B5B28 00001812 */  mflo       $v1
/* 7032C 800B5B2C 00000000 */  nop
/* 70330 800B5B30 00000000 */  nop
.L800B5B34:
/* 70334 800B5B34 00035900 */  sll        $t3, $v1, 4
/* 70338 800B5B38 01691021 */  addu       $v0, $t3, $t1
/* 7033C 800B5B3C 8C4C0000 */  lw         $t4, 0x0($v0)
/* 70340 800B5B40 000C6FC2 */  srl        $t5, $t4, 31
/* 70344 800B5B44 51A0000C */  beql       $t5, $zero, .L800B5B78
/* 70348 800B5B48 26310001 */   addiu     $s1, $s1, 0x1
/* 7034C 800B5B4C 904F0001 */  lbu        $t7, 0x1($v0)
/* 70350 800B5B50 00B2C021 */  addu       $t8, $a1, $s2
/* 70354 800B5B54 000F7142 */  srl        $t6, $t7, 5
/* 70358 800B5B58 01C8082A */  slt        $at, $t6, $t0
/* 7035C 800B5B5C 54200006 */  bnel       $at, $zero, .L800B5B78
/* 70360 800B5B60 26310001 */   addiu     $s1, $s1, 0x1
/* 70364 800B5B64 26520001 */  addiu      $s2, $s2, 0x1
/* 70368 800B5B68 0012CC00 */  sll        $t9, $s2, 16
/* 7036C 800B5B6C 00199403 */  sra        $s2, $t9, 16
/* 70370 800B5B70 A3110000 */  sb         $s1, 0x0($t8)
/* 70374 800B5B74 26310001 */  addiu      $s1, $s1, 0x1
.L800B5B78:
/* 70378 800B5B78 0224082A */  slt        $at, $s1, $a0
/* 7037C 800B5B7C 1420FFED */  bnez       $at, .L800B5B34
/* 70380 800B5B80 24630001 */   addiu     $v1, $v1, 0x1
/* 70384 800B5B84 00008825 */  or         $s1, $zero, $zero
.L800B5B88:
/* 70388 800B5B88 02801025 */  or         $v0, $s4, $zero
.L800B5B8C:
/* 7038C 800B5B8C 3C0C0200 */  lui        $t4, (0x20004C0 >> 16)
/* 70390 800B5B90 358C04C0 */  ori        $t4, $t4, (0x20004C0 & 0xFFFF)
/* 70394 800B5B94 240D0280 */  addiu      $t5, $zero, 0x280
/* 70398 800B5B98 AC4D0004 */  sw         $t5, 0x4($v0)
/* 7039C 800B5B9C AC4C0000 */  sw         $t4, 0x0($v0)
/* 703A0 800B5BA0 814F0000 */  lb         $t7, 0x0($t2)
/* 703A4 800B5BA4 3C178004 */  lui        $s7, %hi(D_8003FCC0)
/* 703A8 800B5BA8 26940008 */  addiu      $s4, $s4, 0x8
/* 703AC 800B5BAC 19E00053 */  blez       $t7, .L800B5CFC
/* 703B0 800B5BB0 26F7FCC0 */   addiu     $s7, $s7, %lo(D_8003FCC0)
/* 703B4 800B5BB4 3C158004 */  lui        $s5, %hi(D_80038544)
/* 703B8 800B5BB8 26B58544 */  addiu      $s5, $s5, %lo(D_80038544)
/* 703BC 800B5BBC 241600C0 */  addiu      $s6, $zero, 0xC0
/* 703C0 800B5BC0 00137140 */  sll        $t6, $s3, 5
.L800B5BC4:
/* 703C4 800B5BC4 01D37021 */  addu       $t6, $t6, $s3
/* 703C8 800B5BC8 3C188004 */  lui        $t8, %hi(D_80038110)
/* 703CC 800B5BCC 27188110 */  addiu      $t8, $t8, %lo(D_80038110)
/* 703D0 800B5BD0 000E70C0 */  sll        $t6, $t6, 3
/* 703D4 800B5BD4 01D8C821 */  addu       $t9, $t6, $t8
/* 703D8 800B5BD8 AFB90060 */  sw         $t9, 0x60($sp)
/* 703DC 800B5BDC 932B0001 */  lbu        $t3, 0x1($t9)
/* 703E0 800B5BE0 3C018004 */  lui        $at, %hi(D_80038542)
/* 703E4 800B5BE4 02802025 */  or         $a0, $s4, $zero
/* 703E8 800B5BE8 000B6600 */  sll        $t4, $t3, 24
/* 703EC 800B5BEC 000C6E03 */  sra        $t5, $t4, 24
/* 703F0 800B5BF0 11A0000A */  beqz       $t5, .L800B5C1C
/* 703F4 800B5BF4 A02B8542 */   sb        $t3, %lo(D_80038542)($at)
/* 703F8 800B5BF8 00133400 */  sll        $a2, $s3, 16
/* 703FC 800B5BFC 001E3C00 */  sll        $a3, $fp, 16
/* 70400 800B5C00 00077403 */  sra        $t6, $a3, 16
/* 70404 800B5C04 00067C03 */  sra        $t7, $a2, 16
/* 70408 800B5C08 01E03025 */  or         $a2, $t7, $zero
/* 7040C 800B5C0C 01C03825 */  or         $a3, $t6, $zero
/* 70410 800B5C10 0C02D540 */  jal        func_800B5500
/* 70414 800B5C14 8FA500C4 */   lw        $a1, 0xC4($sp)
/* 70418 800B5C18 0040A025 */  or         $s4, $v0, $zero
.L800B5C1C:
/* 7041C 800B5C1C 0232082A */  slt        $at, $s1, $s2
/* 70420 800B5C20 10200022 */  beqz       $at, .L800B5CAC
/* 70424 800B5C24 27B80084 */   addiu     $t8, $sp, 0x84
/* 70428 800B5C28 02388021 */  addu       $s0, $s1, $t8
.L800B5C2C:
/* 7042C 800B5C2C 3C198004 */  lui        $t9, %hi(D_80045548)
/* 70430 800B5C30 8F395548 */  lw         $t9, %lo(D_80045548)($t9)
/* 70434 800B5C34 92030000 */  lbu        $v1, 0x0($s0)
/* 70438 800B5C38 8EA90000 */  lw         $t1, 0x0($s5)
/* 7043C 800B5C3C 03D90019 */  multu      $fp, $t9
/* 70440 800B5C40 00035900 */  sll        $t3, $v1, 4
/* 70444 800B5C44 012B6021 */  addu       $t4, $t1, $t3
/* 70448 800B5C48 00001012 */  mflo       $v0
/* 7044C 800B5C4C 00026900 */  sll        $t5, $v0, 4
/* 70450 800B5C50 018D7821 */  addu       $t7, $t4, $t5
/* 70454 800B5C54 91EE0001 */  lbu        $t6, 0x1($t7)
/* 70458 800B5C58 000EC142 */  srl        $t8, $t6, 5
/* 7045C 800B5C5C 56780014 */  bnel       $s3, $t8, .L800B5CB0
/* 70460 800B5C60 8FAE0060 */   lw        $t6, 0x60($sp)
/* 70464 800B5C64 00760019 */  multu      $v1, $s6
/* 70468 800B5C68 8EEB0000 */  lw         $t3, 0x0($s7)
/* 7046C 800B5C6C 8FAF00C4 */  lw         $t7, 0xC4($sp)
/* 70470 800B5C70 00626021 */  addu       $t4, $v1, $v0
/* 70474 800B5C74 000C6900 */  sll        $t5, $t4, 4
/* 70478 800B5C78 01A92821 */  addu       $a1, $t5, $t1
/* 7047C 800B5C7C 8FA700C0 */  lw         $a3, 0xC0($sp)
/* 70480 800B5C80 AFB40014 */  sw         $s4, 0x14($sp)
/* 70484 800B5C84 AFAF0010 */  sw         $t7, 0x10($sp)
/* 70488 800B5C88 0000C812 */  mflo       $t9
/* 7048C 800B5C8C 032B2021 */  addu       $a0, $t9, $t3
/* 70490 800B5C90 0C02D79C */  jal        func_800B5E70
/* 70494 800B5C94 24860010 */   addiu     $a2, $a0, 0x10
/* 70498 800B5C98 26310001 */  addiu      $s1, $s1, 0x1
/* 7049C 800B5C9C 0232082A */  slt        $at, $s1, $s2
/* 704A0 800B5CA0 0040A025 */  or         $s4, $v0, $zero
/* 704A4 800B5CA4 1420FFE1 */  bnez       $at, .L800B5C2C
/* 704A8 800B5CA8 26100001 */   addiu     $s0, $s0, 0x1
.L800B5CAC:
/* 704AC 800B5CAC 8FAE0060 */  lw         $t6, 0x60($sp)
.L800B5CB0:
/* 704B0 800B5CB0 00132C00 */  sll        $a1, $s3, 16
/* 704B4 800B5CB4 0005CC03 */  sra        $t9, $a1, 16
/* 704B8 800B5CB8 91D80001 */  lbu        $t8, 0x1($t6)
/* 704BC 800B5CBC 03202825 */  or         $a1, $t9, $zero
/* 704C0 800B5CC0 02802025 */  or         $a0, $s4, $zero
/* 704C4 800B5CC4 13000005 */  beqz       $t8, .L800B5CDC
/* 704C8 800B5CC8 001E3400 */   sll       $a2, $fp, 16
/* 704CC 800B5CCC 00065C03 */  sra        $t3, $a2, 16
/* 704D0 800B5CD0 0C02D616 */  jal        func_800B5858
/* 704D4 800B5CD4 01603025 */   or        $a2, $t3, $zero
/* 704D8 800B5CD8 0040A025 */  or         $s4, $v0, $zero
.L800B5CDC:
/* 704DC 800B5CDC 3C0F8004 */  lui        $t7, %hi(D_80038543)
/* 704E0 800B5CE0 81EF8543 */  lb         $t7, %lo(D_80038543)($t7)
/* 704E4 800B5CE4 26730001 */  addiu      $s3, $s3, 0x1
/* 704E8 800B5CE8 00136400 */  sll        $t4, $s3, 16
/* 704EC 800B5CEC 000C9C03 */  sra        $s3, $t4, 16
/* 704F0 800B5CF0 026F082A */  slt        $at, $s3, $t7
/* 704F4 800B5CF4 5420FFB3 */  bnel       $at, $zero, .L800B5BC4
/* 704F8 800B5CF8 00137140 */   sll       $t6, $s3, 5
.L800B5CFC:
/* 704FC 800B5CFC 3C158004 */  lui        $s5, %hi(D_80038544)
/* 70500 800B5D00 3C178004 */  lui        $s7, %hi(D_8003FCC0)
/* 70504 800B5D04 0232082A */  slt        $at, $s1, $s2
/* 70508 800B5D08 26F7FCC0 */  addiu      $s7, $s7, %lo(D_8003FCC0)
/* 7050C 800B5D0C 26B58544 */  addiu      $s5, $s5, %lo(D_80038544)
/* 70510 800B5D10 1020002E */  beqz       $at, .L800B5DCC
/* 70514 800B5D14 241600C0 */   addiu     $s6, $zero, 0xC0
/* 70518 800B5D18 27AE0084 */  addiu      $t6, $sp, 0x84
/* 7051C 800B5D1C 022E8021 */  addu       $s0, $s1, $t6
/* 70520 800B5D20 24130001 */  addiu      $s3, $zero, 0x1
.L800B5D24:
/* 70524 800B5D24 3C188004 */  lui        $t8, %hi(D_80045548)
/* 70528 800B5D28 8F185548 */  lw         $t8, %lo(D_80045548)($t8)
/* 7052C 800B5D2C 92030000 */  lbu        $v1, 0x0($s0)
/* 70530 800B5D30 8EA90000 */  lw         $t1, 0x0($s5)
/* 70534 800B5D34 03D80019 */  multu      $fp, $t8
/* 70538 800B5D38 0003C900 */  sll        $t9, $v1, 4
/* 7053C 800B5D3C 01395821 */  addu       $t3, $t1, $t9
/* 70540 800B5D40 3C0F8004 */  lui        $t7, %hi(D_8003EB78)
/* 70544 800B5D44 3C011000 */  lui        $at, (0x10000000 >> 16)
/* 70548 800B5D48 00001012 */  mflo       $v0
/* 7054C 800B5D4C 00026100 */  sll        $t4, $v0, 4
/* 70550 800B5D50 016C6821 */  addu       $t5, $t3, $t4
/* 70554 800B5D54 91A40002 */  lbu        $a0, 0x2($t5)
/* 70558 800B5D58 01E47821 */  addu       $t7, $t7, $a0
/* 7055C 800B5D5C 91EFEB78 */  lbu        $t7, %lo(D_8003EB78)($t7)
/* 70560 800B5D60 29EE0002 */  slti       $t6, $t7, 0x2
/* 70564 800B5D64 39CE0001 */  xori       $t6, $t6, 0x1
/* 70568 800B5D68 166E0010 */  bne        $s3, $t6, .L800B5DAC
/* 7056C 800B5D6C 00117A00 */   sll       $t7, $s1, 8
/* 70570 800B5D70 00760019 */  multu      $v1, $s6
/* 70574 800B5D74 8EF90000 */  lw         $t9, 0x0($s7)
/* 70578 800B5D78 8FAD00C4 */  lw         $t5, 0xC4($sp)
/* 7057C 800B5D7C 00625821 */  addu       $t3, $v1, $v0
/* 70580 800B5D80 000B6100 */  sll        $t4, $t3, 4
/* 70584 800B5D84 01892821 */  addu       $a1, $t4, $t1
/* 70588 800B5D88 8FA700C0 */  lw         $a3, 0xC0($sp)
/* 7058C 800B5D8C AFB40014 */  sw         $s4, 0x14($sp)
/* 70590 800B5D90 AFAD0010 */  sw         $t5, 0x10($sp)
/* 70594 800B5D94 0000C012 */  mflo       $t8
/* 70598 800B5D98 03192021 */  addu       $a0, $t8, $t9
/* 7059C 800B5D9C 0C02D79C */  jal        func_800B5E70
/* 705A0 800B5DA0 24860010 */   addiu     $a2, $a0, 0x10
/* 705A4 800B5DA4 10000005 */  b          .L800B5DBC
/* 705A8 800B5DA8 0040A025 */   or        $s4, $v0, $zero
.L800B5DAC:
/* 705AC 800B5DAC 008F7021 */  addu       $t6, $a0, $t7
/* 705B0 800B5DB0 01C1C021 */  addu       $t8, $t6, $at
/* 705B4 800B5DB4 3C018004 */  lui        $at, %hi(D_80045630)
/* 705B8 800B5DB8 AC385630 */  sw         $t8, %lo(D_80045630)($at)
.L800B5DBC:
/* 705BC 800B5DBC 26310001 */  addiu      $s1, $s1, 0x1
/* 705C0 800B5DC0 0232082A */  slt        $at, $s1, $s2
/* 705C4 800B5DC4 1420FFD7 */  bnez       $at, .L800B5D24
/* 705C8 800B5DC8 26100001 */   addiu     $s0, $s0, 0x1
.L800B5DCC:
/* 705CC 800B5DCC 3C080800 */  lui        $t0, (0x8000000 >> 16)
/* 705D0 800B5DD0 02802025 */  or         $a0, $s4, $zero
/* 705D4 800B5DD4 AC880000 */  sw         $t0, 0x0($a0)
/* 705D8 800B5DD8 8FA300C4 */  lw         $v1, 0xC4($sp)
/* 705DC 800B5DDC 26940008 */  addiu      $s4, $s4, 0x8
/* 705E0 800B5DE0 02802825 */  or         $a1, $s4, $zero
/* 705E4 800B5DE4 0003C840 */  sll        $t9, $v1, 1
/* 705E8 800B5DE8 332BFFFF */  andi       $t3, $t9, 0xFFFF
/* 705EC 800B5DEC AC8B0004 */  sw         $t3, 0x4($a0)
/* 705F0 800B5DF0 26940008 */  addiu      $s4, $s4, 0x8
/* 705F4 800B5DF4 3C0D04C0 */  lui        $t5, (0x4C00600 >> 16)
/* 705F8 800B5DF8 35AD0600 */  ori        $t5, $t5, (0x4C00600 & 0xFFFF)
/* 705FC 800B5DFC 3C0C0D00 */  lui        $t4, (0xD000000 >> 16)
/* 70600 800B5E00 02803025 */  or         $a2, $s4, $zero
/* 70604 800B5E04 ACAC0000 */  sw         $t4, 0x0($a1)
/* 70608 800B5E08 ACAD0004 */  sw         $t5, 0x4($a1)
/* 7060C 800B5E0C 00197840 */  sll        $t7, $t9, 1
/* 70610 800B5E10 31EEFFFF */  andi       $t6, $t7, 0xFFFF
/* 70614 800B5E14 26940008 */  addiu      $s4, $s4, 0x8
/* 70618 800B5E18 ACCE0004 */  sw         $t6, 0x4($a2)
/* 7061C 800B5E1C ACC80000 */  sw         $t0, 0x0($a2)
/* 70620 800B5E20 02803825 */  or         $a3, $s4, $zero
/* 70624 800B5E24 3C180600 */  lui        $t8, (0x6000000 >> 16)
/* 70628 800B5E28 ACF80000 */  sw         $t8, 0x0($a3)
/* 7062C 800B5E2C 8FB900C0 */  lw         $t9, 0xC0($sp)
/* 70630 800B5E30 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 70634 800B5E34 26820008 */  addiu      $v0, $s4, 0x8
/* 70638 800B5E38 03215821 */  addu       $t3, $t9, $at
/* 7063C 800B5E3C ACEB0004 */  sw         $t3, 0x4($a3)
/* 70640 800B5E40 8FBF0044 */  lw         $ra, 0x44($sp)
/* 70644 800B5E44 8FBE0040 */  lw         $fp, 0x40($sp)
/* 70648 800B5E48 8FB7003C */  lw         $s7, 0x3C($sp)
/* 7064C 800B5E4C 8FB60038 */  lw         $s6, 0x38($sp)
/* 70650 800B5E50 8FB50034 */  lw         $s5, 0x34($sp)
/* 70654 800B5E54 8FB40030 */  lw         $s4, 0x30($sp)
/* 70658 800B5E58 8FB3002C */  lw         $s3, 0x2C($sp)
/* 7065C 800B5E5C 8FB20028 */  lw         $s2, 0x28($sp)
/* 70660 800B5E60 8FB10024 */  lw         $s1, 0x24($sp)
/* 70664 800B5E64 8FB00020 */  lw         $s0, 0x20($sp)
/* 70668 800B5E68 03E00008 */  jr         $ra
/* 7066C 800B5E6C 27BD00C0 */   addiu     $sp, $sp, 0xC0

glabel func_800B5E70
/* 70670 800B5E70 27BDFEB8 */  addiu      $sp, $sp, -0x148
/* 70674 800B5E74 AFBF004C */  sw         $ra, 0x4C($sp)
/* 70678 800B5E78 AFBE0048 */  sw         $fp, 0x48($sp)
/* 7067C 800B5E7C AFB70044 */  sw         $s7, 0x44($sp)
/* 70680 800B5E80 AFB60040 */  sw         $s6, 0x40($sp)
/* 70684 800B5E84 AFB5003C */  sw         $s5, 0x3C($sp)
/* 70688 800B5E88 AFB40038 */  sw         $s4, 0x38($sp)
/* 7068C 800B5E8C AFB30034 */  sw         $s3, 0x34($sp)
/* 70690 800B5E90 AFB20030 */  sw         $s2, 0x30($sp)
/* 70694 800B5E94 AFB1002C */  sw         $s1, 0x2C($sp)
/* 70698 800B5E98 AFB00028 */  sw         $s0, 0x28($sp)
/* 7069C 800B5E9C AFA40148 */  sw         $a0, 0x148($sp)
/* 706A0 800B5EA0 AFA70154 */  sw         $a3, 0x154($sp)
/* 706A4 800B5EA4 AFA00130 */  sw         $zero, 0x130($sp)
/* 706A8 800B5EA8 8C8F00B0 */  lw         $t7, 0xB0($a0)
/* 706AC 800B5EAC 00A08825 */  or         $s1, $a1, $zero
/* 706B0 800B5EB0 00C0B825 */  or         $s7, $a2, $zero
/* 706B4 800B5EB4 000FC7C2 */  srl        $t8, $t7, 31
/* 706B8 800B5EB8 57000004 */  bnel       $t8, $zero, .L800B5ECC
/* 706BC 800B5EBC 8E390000 */   lw        $t9, 0x0($s1)
/* 706C0 800B5EC0 1000023E */  b          .L800B67BC
/* 706C4 800B5EC4 8FA2015C */   lw        $v0, 0x15C($sp)
/* 706C8 800B5EC8 8E390000 */  lw         $t9, 0x0($s1)
.L800B5ECC:
/* 706CC 800B5ECC 24130001 */  addiu      $s3, $zero, 0x1
/* 706D0 800B5ED0 00001825 */  or         $v1, $zero, $zero
/* 706D4 800B5ED4 00197040 */  sll        $t6, $t9, 1
/* 706D8 800B5ED8 000E7FC2 */  srl        $t7, $t6, 31
/* 706DC 800B5EDC 166F0009 */  bne        $s3, $t7, .L800B5F04
/* 706E0 800B5EE0 02202825 */   or        $a1, $s1, $zero
/* 706E4 800B5EE4 02601825 */  or         $v1, $s3, $zero
/* 706E8 800B5EE8 A2E00000 */  sb         $zero, 0x0($s7)
/* 706EC 800B5EEC AEE00008 */  sw         $zero, 0x8($s7)
/* 706F0 800B5EF0 A6E00004 */  sh         $zero, 0x4($s7)
/* 706F4 800B5EF4 A6F30010 */  sh         $s3, 0x10($s7)
/* 706F8 800B5EF8 A6F30012 */  sh         $s3, 0x12($s7)
/* 706FC 800B5EFC A2E00002 */  sb         $zero, 0x2($s7)
/* 70700 800B5F00 A2E00003 */  sb         $zero, 0x3($s7)
.L800B5F04:
/* 70704 800B5F04 9638000A */  lhu        $t8, 0xA($s1)
/* 70708 800B5F08 02E03025 */  or         $a2, $s7, $zero
/* 7070C 800B5F0C A7B8011A */  sh         $t8, 0x11A($sp)
/* 70710 800B5F10 96390000 */  lhu        $t9, 0x0($s1)
/* 70714 800B5F14 3318FFFF */  andi       $t8, $t8, 0xFFFF
/* 70718 800B5F18 332E0001 */  andi       $t6, $t9, 0x1
/* 7071C 800B5F1C 8FB90158 */  lw         $t9, 0x158($sp)
/* 70720 800B5F20 25CF0001 */  addiu      $t7, $t6, 0x1
/* 70724 800B5F24 AFAF00BC */  sw         $t7, 0xBC($sp)
/* 70728 800B5F28 03190019 */  multu      $t8, $t9
/* 7072C 800B5F2C 96F80004 */  lhu        $t8, 0x4($s7)
/* 70730 800B5F30 00007012 */  mflo       $t6
/* 70734 800B5F34 000E7840 */  sll        $t7, $t6, 1
/* 70738 800B5F38 01F81021 */  addu       $v0, $t7, $t8
/* 7073C 800B5F3C A6E20004 */  sh         $v0, 0x4($s7)
/* 70740 800B5F40 8E270000 */  lw         $a3, 0x0($s1)
/* 70744 800B5F44 8FA4015C */  lw         $a0, 0x15C($sp)
/* 70748 800B5F48 00028402 */  srl        $s0, $v0, 16
/* 7074C 800B5F4C 00077B80 */  sll        $t7, $a3, 14
/* 70750 800B5F50 05E3000D */  bgezl      $t7, .L800B5F88
/* 70754 800B5F54 8E2F000C */   lw        $t7, 0xC($s1)
/* 70758 800B5F58 0C02D9FB */  jal        func_800B67EC
/* 7075C 800B5F5C 02003825 */   or        $a3, $s0, $zero
/* 70760 800B5F60 8EE60008 */  lw         $a2, 0x8($s7)
/* 70764 800B5F64 0006C040 */  sll        $t8, $a2, 1
/* 70768 800B5F68 27190180 */  addiu      $t9, $t8, 0x180
/* 7076C 800B5F6C A7B900AA */  sh         $t9, 0xAA($sp)
/* 70770 800B5F70 00D07021 */  addu       $t6, $a2, $s0
/* 70774 800B5F74 AEEE0008 */  sw         $t6, 0x8($s7)
/* 70778 800B5F78 8E270000 */  lw         $a3, 0x0($s1)
/* 7077C 800B5F7C 100001D4 */  b          .L800B66D0
/* 70780 800B5F80 AFA2015C */   sw        $v0, 0x15C($sp)
/* 70784 800B5F84 8E2F000C */  lw         $t7, 0xC($s1)
.L800B5F88:
/* 70788 800B5F88 241F0009 */  addiu      $ra, $zero, 0x9
/* 7078C 800B5F8C 3C0D8000 */  lui        $t5, (0x80000000 >> 16)
/* 70790 800B5F90 8DF80000 */  lw         $t8, 0x0($t7)
/* 70794 800B5F94 AFB80138 */  sw         $t8, 0x138($sp)
/* 70798 800B5F98 8F0E0008 */  lw         $t6, 0x8($t8)
/* 7079C 800B5F9C AFAE0134 */  sw         $t6, 0x134($sp)
/* 707A0 800B5FA0 8DCF0004 */  lw         $t7, 0x4($t6)
/* 707A4 800B5FA4 8FAE00BC */  lw         $t6, 0xBC($sp)
/* 707A8 800B5FA8 AFAF00E4 */  sw         $t7, 0xE4($sp)
/* 707AC 800B5FAC 8F180004 */  lw         $t8, 0x4($t8)
/* 707B0 800B5FB0 AFA000AC */  sw         $zero, 0xAC($sp)
/* 707B4 800B5FB4 AFA000B8 */  sw         $zero, 0xB8($sp)
/* 707B8 800B5FB8 19C001C5 */  blez       $t6, .L800B66D0
/* 707BC 800B5FBC AFB800F4 */   sw        $t8, 0xF4($sp)
/* 707C0 800B5FC0 00027C02 */  srl        $t7, $v0, 16
/* 707C4 800B5FC4 AFAF0050 */  sw         $t7, 0x50($sp)
/* 707C8 800B5FC8 AFA3011C */  sw         $v1, 0x11C($sp)
/* 707CC 800B5FCC AFB1014C */  sw         $s1, 0x14C($sp)
/* 707D0 800B5FD0 8FB2015C */  lw         $s2, 0x15C($sp)
.L800B5FD4:
/* 707D4 800B5FD4 8FB90138 */  lw         $t9, 0x138($sp)
/* 707D8 800B5FD8 8FB800BC */  lw         $t8, 0xBC($sp)
/* 707DC 800B5FDC 24010001 */  addiu      $at, $zero, 0x1
/* 707E0 800B5FE0 8F24000C */  lw         $a0, 0xC($t9)
/* 707E4 800B5FE4 0000F025 */  or         $fp, $zero, $zero
/* 707E8 800B5FE8 0000A025 */  or         $s4, $zero, $zero
/* 707EC 800B5FEC 17010003 */  bne        $t8, $at, .L800B5FFC
/* 707F0 800B5FF0 24850008 */   addiu     $a1, $a0, 0x8
/* 707F4 800B5FF4 1000000B */  b          .L800B6024
/* 707F8 800B5FF8 8FAC0050 */   lw        $t4, 0x50($sp)
.L800B5FFC:
/* 707FC 800B5FFC 8FAE0050 */  lw         $t6, 0x50($sp)
/* 70800 800B6000 8FB800B8 */  lw         $t8, 0xB8($sp)
/* 70804 800B6004 8FAC0050 */  lw         $t4, 0x50($sp)
/* 70808 800B6008 31CF0001 */  andi       $t7, $t6, 0x1
/* 7080C 800B600C 11E00005 */  beqz       $t7, .L800B6024
/* 70810 800B6010 2401FFFE */   addiu     $at, $zero, -0x2
/* 70814 800B6014 01C1C824 */  and        $t9, $t6, $at
/* 70818 800B6018 00187840 */  sll        $t7, $t8, 1
/* 7081C 800B601C 10000001 */  b          .L800B6024
/* 70820 800B6020 032F6021 */   addu      $t4, $t9, $t7
.L800B6024:
/* 70824 800B6024 8FAE0130 */  lw         $t6, 0x130($sp)
/* 70828 800B6028 51C5001A */  beql       $t6, $a1, .L800B6094
/* 7082C 800B602C 0007C2C0 */   sll       $t8, $a3, 11
/* 70830 800B6030 AFA50130 */  sw         $a1, 0x130($sp)
/* 70834 800B6034 8C980000 */  lw         $t8, 0x0($a0)
/* 70838 800B6038 8C8F0004 */  lw         $t7, 0x4($a0)
/* 7083C 800B603C 3C0100FF */  lui        $at, (0xFFFFFF >> 16)
/* 70840 800B6040 0018C900 */  sll        $t9, $t8, 4
/* 70844 800B6044 032F0019 */  multu      $t9, $t7
/* 70848 800B6048 3421FFFF */  ori        $at, $at, (0xFFFFFF & 0xFFFF)
/* 7084C 800B604C 8FA6014C */  lw         $a2, 0x14C($sp)
/* 70850 800B6050 02401025 */  or         $v0, $s2, $zero
/* 70854 800B6054 26520008 */  addiu      $s2, $s2, 0x8
/* 70858 800B6058 00001812 */  mflo       $v1
/* 7085C 800B605C 00617024 */  and        $t6, $v1, $at
/* 70860 800B6060 3C010B00 */  lui        $at, (0xB000000 >> 16)
/* 70864 800B6064 01C1C025 */  or         $t8, $t6, $at
/* 70868 800B6068 AC580000 */  sw         $t8, 0x0($v0)
/* 7086C 800B606C 8CD90000 */  lw         $t9, 0x0($a2)
/* 70870 800B6070 00197AC0 */  sll        $t7, $t9, 11
/* 70874 800B6074 8FB90130 */  lw         $t9, 0x130($sp)
/* 70878 800B6078 000F7742 */  srl        $t6, $t7, 29
/* 7087C 800B607C 000EC040 */  sll        $t8, $t6, 1
/* 70880 800B6080 03197821 */  addu       $t7, $t8, $t9
/* 70884 800B6084 01ED7021 */  addu       $t6, $t7, $t5
/* 70888 800B6088 AC4E0004 */  sw         $t6, 0x4($v0)
/* 7088C 800B608C 8CC70000 */  lw         $a3, 0x0($a2)
/* 70890 800B6090 0007C2C0 */  sll        $t8, $a3, 11
.L800B6094:
/* 70894 800B6094 0018CF42 */  srl        $t9, $t8, 29
/* 70898 800B6098 13200003 */  beqz       $t9, .L800B60A8
/* 7089C 800B609C 3C0F800F */   lui       $t7, %hi(D_800EDC70)
/* 708A0 800B60A0 25EFDC70 */  addiu      $t7, $t7, %lo(D_800EDC70)
/* 708A4 800B60A4 AFAF0130 */  sw         $t7, 0x130($sp)
.L800B60A8:
/* 708A8 800B60A8 51800108 */  beql       $t4, $zero, .L800B64CC
/* 708AC 800B60AC 8FA400BC */   lw        $a0, 0xBC($sp)
/* 708B0 800B60B0 8EE60008 */  lw         $a2, 0x8($s7)
.L800B60B4:
/* 708B4 800B60B4 8FAE00E4 */  lw         $t6, 0xE4($sp)
/* 708B8 800B60B8 019E2023 */  subu       $a0, $t4, $fp
/* 708BC 800B60BC 30D3000F */  andi       $s3, $a2, 0xF
/* 708C0 800B60C0 00004825 */  or         $t1, $zero, $zero
/* 708C4 800B60C4 00005025 */  or         $t2, $zero, $zero
/* 708C8 800B60C8 00805825 */  or         $t3, $a0, $zero
/* 708CC 800B60CC 16600005 */  bnez       $s3, .L800B60E4
/* 708D0 800B60D0 01C61823 */   subu      $v1, $t6, $a2
/* 708D4 800B60D4 92F80000 */  lbu        $t8, 0x0($s7)
/* 708D8 800B60D8 57000003 */  bnel       $t8, $zero, .L800B60E8
/* 708DC 800B60DC 24190010 */   addiu     $t9, $zero, 0x10
/* 708E0 800B60E0 24130010 */  addiu      $s3, $zero, 0x10
.L800B60E4:
/* 708E4 800B60E4 24190010 */  addiu      $t9, $zero, 0x10
.L800B60E8:
/* 708E8 800B60E8 03332823 */  subu       $a1, $t9, $s3
/* 708EC 800B60EC 0083082A */  slt        $at, $a0, $v1
/* 708F0 800B60F0 1020000C */  beqz       $at, .L800B6124
/* 708F4 800B60F4 00A0A825 */   or        $s5, $a1, $zero
/* 708F8 800B60F8 00851023 */  subu       $v0, $a0, $a1
/* 708FC 800B60FC 2442000F */  addiu      $v0, $v0, 0xF
/* 70900 800B6100 04410003 */  bgez       $v0, .L800B6110
/* 70904 800B6104 00027903 */   sra       $t7, $v0, 4
/* 70908 800B6108 2441000F */  addiu      $at, $v0, 0xF
/* 7090C 800B610C 00017903 */  sra        $t7, $at, 4
.L800B6110:
/* 70910 800B6110 000F8900 */  sll        $s1, $t7, 4
/* 70914 800B6114 00B17021 */  addu       $t6, $a1, $s1
/* 70918 800B6118 01E04025 */  or         $t0, $t7, $zero
/* 7091C 800B611C 10000013 */  b          .L800B616C
/* 70920 800B6120 01C4B023 */   subu      $s6, $t6, $a0
.L800B6124:
/* 70924 800B6124 00658823 */  subu       $s1, $v1, $a1
/* 70928 800B6128 1E200003 */  bgtz       $s1, .L800B6138
/* 7092C 800B612C 0000B025 */   or        $s6, $zero, $zero
/* 70930 800B6130 00008825 */  or         $s1, $zero, $zero
/* 70934 800B6134 0060A825 */  or         $s5, $v1, $zero
.L800B6138:
/* 70938 800B6138 8FB90134 */  lw         $t9, 0x134($sp)
/* 7093C 800B613C 2628000F */  addiu      $t0, $s1, 0xF
/* 70940 800B6140 05010003 */  bgez       $t0, .L800B6150
/* 70944 800B6144 0008C103 */   sra       $t8, $t0, 4
/* 70948 800B6148 2501000F */  addiu      $at, $t0, 0xF
/* 7094C 800B614C 0001C103 */  sra        $t8, $at, 4
.L800B6150:
/* 70950 800B6150 8F2F0008 */  lw         $t7, 0x8($t9)
/* 70954 800B6154 03004025 */  or         $t0, $t8, $zero
/* 70958 800B6158 51E00004 */  beql       $t7, $zero, .L800B616C
/* 7095C 800B615C 24090001 */   addiu     $t1, $zero, 0x1
/* 70960 800B6160 10000002 */  b          .L800B616C
/* 70964 800B6164 240A0001 */   addiu     $t2, $zero, 0x1
/* 70968 800B6168 24090001 */  addiu      $t1, $zero, 0x1
.L800B616C:
/* 7096C 800B616C 1100003C */  beqz       $t0, .L800B6260
/* 70970 800B6170 8FB80138 */   lw        $t8, 0x138($sp)
/* 70974 800B6174 00D31023 */  subu       $v0, $a2, $s3
/* 70978 800B6178 24420010 */  addiu      $v0, $v0, 0x10
/* 7097C 800B617C 93190001 */  lbu        $t9, 0x1($t8)
/* 70980 800B6180 04410003 */  bgez       $v0, .L800B6190
/* 70984 800B6184 00027103 */   sra       $t6, $v0, 4
/* 70988 800B6188 2441000F */  addiu      $at, $v0, 0xF
/* 7098C 800B618C 00017103 */  sra        $t6, $at, 4
.L800B6190:
/* 70990 800B6190 24010081 */  addiu      $at, $zero, 0x81
/* 70994 800B6194 17210009 */  bne        $t9, $at, .L800B61BC
/* 70998 800B6198 01C01025 */   or        $v0, $t6, $zero
/* 7099C 800B619C 01DF0019 */  multu      $t6, $ra
/* 709A0 800B61A0 8FAE00F4 */  lw         $t6, 0xF4($sp)
/* 709A4 800B61A4 000880C0 */  sll        $s0, $t0, 3
/* 709A8 800B61A8 02088021 */  addu       $s0, $s0, $t0
/* 709AC 800B61AC 00007812 */  mflo       $t7
/* 709B0 800B61B0 01EE2821 */  addu       $a1, $t7, $t6
/* 709B4 800B61B4 10000019 */  b          .L800B621C
/* 709B8 800B61B8 30A8000F */   andi      $t0, $a1, 0xF
.L800B61BC:
/* 709BC 800B61BC 005F0019 */  multu      $v0, $ra
/* 709C0 800B61C0 8FB900F4 */  lw         $t9, 0xF4($sp)
/* 709C4 800B61C4 8FA6011C */  lw         $a2, 0x11C($sp)
/* 709C8 800B61C8 26E70001 */  addiu      $a3, $s7, 0x1
/* 709CC 800B61CC AFA90124 */  sw         $t1, 0x124($sp)
/* 709D0 800B61D0 AFAA0120 */  sw         $t2, 0x120($sp)
/* 709D4 800B61D4 AFAB00E0 */  sw         $t3, 0xE0($sp)
/* 709D8 800B61D8 AFAC00EC */  sw         $t4, 0xEC($sp)
/* 709DC 800B61DC 0000C012 */  mflo       $t8
/* 709E0 800B61E0 03192021 */  addu       $a0, $t8, $t9
/* 709E4 800B61E4 00000000 */  nop
/* 709E8 800B61E8 011F0019 */  multu      $t0, $ra
/* 709EC 800B61EC 00008012 */  mflo       $s0
/* 709F0 800B61F0 02002825 */  or         $a1, $s0, $zero
/* 709F4 800B61F4 0C02E3CF */  jal        func_800B8F3C
/* 709F8 800B61F8 00000000 */   nop
/* 709FC 800B61FC 8FA90124 */  lw         $t1, 0x124($sp)
/* 70A00 800B6200 8FAA0120 */  lw         $t2, 0x120($sp)
/* 70A04 800B6204 8FAB00E0 */  lw         $t3, 0xE0($sp)
/* 70A08 800B6208 8FAC00EC */  lw         $t4, 0xEC($sp)
/* 70A0C 800B620C 3C0D8000 */  lui        $t5, (0x80000000 >> 16)
/* 70A10 800B6210 241F0009 */  addiu      $ra, $zero, 0x9
/* 70A14 800B6214 00402825 */  or         $a1, $v0, $zero
/* 70A18 800B6218 30A8000F */  andi       $t0, $a1, 0xF
.L800B621C:
/* 70A1C 800B621C 02401825 */  or         $v1, $s2, $zero
/* 70A20 800B6220 3C0F0800 */  lui        $t7, (0x80003F0 >> 16)
/* 70A24 800B6224 35EF03F0 */  ori        $t7, $t7, (0x80003F0 & 0xFFFF)
/* 70A28 800B6228 02087021 */  addu       $t6, $s0, $t0
/* 70A2C 800B622C 31D8FFFF */  andi       $t8, $t6, 0xFFFF
/* 70A30 800B6230 AC6F0000 */  sw         $t7, 0x0($v1)
/* 70A34 800B6234 26520008 */  addiu      $s2, $s2, 0x8
/* 70A38 800B6238 AC780004 */  sw         $t8, 0x4($v1)
/* 70A3C 800B623C 02402025 */  or         $a0, $s2, $zero
/* 70A40 800B6240 00A87823 */  subu       $t7, $a1, $t0
/* 70A44 800B6244 01ED7021 */  addu       $t6, $t7, $t5
/* 70A48 800B6248 3C190400 */  lui        $t9, (0x4000000 >> 16)
/* 70A4C 800B624C AC990000 */  sw         $t9, 0x0($a0)
/* 70A50 800B6250 AC8E0004 */  sw         $t6, 0x4($a0)
/* 70A54 800B6254 92E60000 */  lbu        $a2, 0x0($s7)
/* 70A58 800B6258 10000004 */  b          .L800B626C
/* 70A5C 800B625C 26520008 */   addiu     $s2, $s2, 0x8
.L800B6260:
/* 70A60 800B6260 00008825 */  or         $s1, $zero, $zero
/* 70A64 800B6264 00004025 */  or         $t0, $zero, $zero
/* 70A68 800B6268 92E60000 */  lbu        $a2, 0x0($s7)
.L800B626C:
/* 70A6C 800B626C 10C0000D */  beqz       $a2, .L800B62A4
/* 70A70 800B6270 02401025 */   or        $v0, $s2, $zero
/* 70A74 800B6274 3C180F00 */  lui        $t8, (0xF000000 >> 16)
/* 70A78 800B6278 AC580000 */  sw         $t8, 0x0($v0)
/* 70A7C 800B627C 8FB90138 */  lw         $t9, 0x138($sp)
/* 70A80 800B6280 3C018000 */  lui        $at, (0x80000010 >> 16)
/* 70A84 800B6284 34210010 */  ori        $at, $at, (0x80000010 & 0xFFFF)
/* 70A88 800B6288 8F2F0008 */  lw         $t7, 0x8($t9)
/* 70A8C 800B628C 24180002 */  addiu      $t8, $zero, 0x2
/* 70A90 800B6290 26520008 */  addiu      $s2, $s2, 0x8
/* 70A94 800B6294 01E17021 */  addu       $t6, $t7, $at
/* 70A98 800B6298 AC4E0004 */  sw         $t6, 0x4($v0)
/* 70A9C 800B629C AFB8011C */  sw         $t8, 0x11C($sp)
/* 70AA0 800B62A0 A2E00000 */  sb         $zero, 0x0($s7)
.L800B62A4:
/* 70AA4 800B62A4 17C0001D */  bnez       $fp, .L800B631C
/* 70AA8 800B62A8 02401825 */   or        $v1, $s2, $zero
/* 70AAC 800B62AC 251903F0 */  addiu      $t9, $t0, 0x3F0
/* 70AB0 800B62B0 332FFFFF */  andi       $t7, $t9, 0xFFFF
/* 70AB4 800B62B4 3C010800 */  lui        $at, (0x8000000 >> 16)
/* 70AB8 800B62B8 01E17025 */  or         $t6, $t7, $at
/* 70ABC 800B62BC 00113040 */  sll        $a2, $s1, 1
/* 70AC0 800B62C0 30D8FFFF */  andi       $t8, $a2, 0xFFFF
/* 70AC4 800B62C4 3C010180 */  lui        $at, (0x1800000 >> 16)
/* 70AC8 800B62C8 02401025 */  or         $v0, $s2, $zero
/* 70ACC 800B62CC 0301C825 */  or         $t9, $t8, $at
/* 70AD0 800B62D0 AC590004 */  sw         $t9, 0x4($v0)
/* 70AD4 800B62D4 AC4E0000 */  sw         $t6, 0x0($v0)
/* 70AD8 800B62D8 8FAF011C */  lw         $t7, 0x11C($sp)
/* 70ADC 800B62DC 26520008 */  addiu      $s2, $s2, 0x8
/* 70AE0 800B62E0 3C010100 */  lui        $at, (0x1000000 >> 16)
/* 70AE4 800B62E4 31EE00FF */  andi       $t6, $t7, 0xFF
/* 70AE8 800B62E8 000EC400 */  sll        $t8, $t6, 16
/* 70AEC 800B62EC 0301C825 */  or         $t9, $t8, $at
/* 70AF0 800B62F0 02401825 */  or         $v1, $s2, $zero
/* 70AF4 800B62F4 AC790000 */  sw         $t9, 0x0($v1)
/* 70AF8 800B62F8 8EEF000C */  lw         $t7, 0xC($s7)
/* 70AFC 800B62FC 0235C821 */  addu       $t9, $s1, $s5
/* 70B00 800B6300 0013C040 */  sll        $t8, $s3, 1
/* 70B04 800B6304 01ED7021 */  addu       $t6, $t7, $t5
/* 70B08 800B6308 AC6E0004 */  sw         $t6, 0x4($v1)
/* 70B0C 800B630C 26520008 */  addiu      $s2, $s2, 0x8
/* 70B10 800B6310 AFB80104 */  sw         $t8, 0x104($sp)
/* 70B14 800B6314 1000002F */  b          .L800B63D4
/* 70B18 800B6318 03363823 */   subu      $a3, $t9, $s6
.L800B631C:
/* 70B1C 800B631C 250F03F0 */  addiu      $t7, $t0, 0x3F0
/* 70B20 800B6320 31EEFFFF */  andi       $t6, $t7, 0xFFFF
/* 70B24 800B6324 3C010800 */  lui        $at, (0x8000000 >> 16)
/* 70B28 800B6328 01C1C025 */  or         $t8, $t6, $at
/* 70B2C 800B632C 2401FFE0 */  addiu      $at, $zero, -0x20
/* 70B30 800B6330 2682001F */  addiu      $v0, $s4, 0x1F
/* 70B34 800B6334 0041C824 */  and        $t9, $v0, $at
/* 70B38 800B6338 272E0180 */  addiu      $t6, $t9, 0x180
/* 70B3C 800B633C 03201025 */  or         $v0, $t9, $zero
/* 70B40 800B6340 AC780000 */  sw         $t8, 0x0($v1)
/* 70B44 800B6344 00113040 */  sll        $a2, $s1, 1
/* 70B48 800B6348 30D9FFFF */  andi       $t9, $a2, 0xFFFF
/* 70B4C 800B634C 000EC400 */  sll        $t8, $t6, 16
/* 70B50 800B6350 03197825 */  or         $t7, $t8, $t9
/* 70B54 800B6354 AC6F0004 */  sw         $t7, 0x4($v1)
/* 70B58 800B6358 8FAE011C */  lw         $t6, 0x11C($sp)
/* 70B5C 800B635C 26520008 */  addiu      $s2, $s2, 0x8
/* 70B60 800B6360 3C010100 */  lui        $at, (0x1000000 >> 16)
/* 70B64 800B6364 31D800FF */  andi       $t8, $t6, 0xFF
/* 70B68 800B6368 0018CC00 */  sll        $t9, $t8, 16
/* 70B6C 800B636C 03217825 */  or         $t7, $t9, $at
/* 70B70 800B6370 02402025 */  or         $a0, $s2, $zero
/* 70B74 800B6374 AC8F0000 */  sw         $t7, 0x0($a0)
/* 70B78 800B6378 8EEE000C */  lw         $t6, 0xC($s7)
/* 70B7C 800B637C 0013C840 */  sll        $t9, $s3, 1
/* 70B80 800B6380 00597821 */  addu       $t7, $v0, $t9
/* 70B84 800B6384 01CDC021 */  addu       $t8, $t6, $t5
/* 70B88 800B6388 3C0100FF */  lui        $at, (0xFFFFFF >> 16)
/* 70B8C 800B638C AC980004 */  sw         $t8, 0x4($a0)
/* 70B90 800B6390 3421FFFF */  ori        $at, $at, (0xFFFFFF & 0xFFFF)
/* 70B94 800B6394 25EE0180 */  addiu      $t6, $t7, 0x180
/* 70B98 800B6398 01C1C024 */  and        $t8, $t6, $at
/* 70B9C 800B639C 3C010A00 */  lui        $at, (0xA000000 >> 16)
/* 70BA0 800B63A0 26520008 */  addiu      $s2, $s2, 0x8
/* 70BA4 800B63A4 0301C825 */  or         $t9, $t8, $at
/* 70BA8 800B63A8 02357821 */  addu       $t7, $s1, $s5
/* 70BAC 800B63AC 01F63823 */  subu       $a3, $t7, $s6
/* 70BB0 800B63B0 02402825 */  or         $a1, $s2, $zero
/* 70BB4 800B63B4 ACB90000 */  sw         $t9, 0x0($a1)
/* 70BB8 800B63B8 00077840 */  sll        $t7, $a3, 1
/* 70BBC 800B63BC 26980180 */  addiu      $t8, $s4, 0x180
/* 70BC0 800B63C0 0018CC00 */  sll        $t9, $t8, 16
/* 70BC4 800B63C4 31EEFFFF */  andi       $t6, $t7, 0xFFFF
/* 70BC8 800B63C8 032EC025 */  or         $t8, $t9, $t6
/* 70BCC 800B63CC ACB80004 */  sw         $t8, 0x4($a1)
/* 70BD0 800B63D0 26520008 */  addiu      $s2, $s2, 0x8
.L800B63D4:
/* 70BD4 800B63D4 8FAF011C */  lw         $t7, 0x11C($sp)
/* 70BD8 800B63D8 24010001 */  addiu      $at, $zero, 0x1
/* 70BDC 800B63DC 03C7F021 */  addu       $fp, $fp, $a3
/* 70BE0 800B63E0 11E10005 */  beq        $t7, $at, .L800B63F8
/* 70BE4 800B63E4 39E20002 */   xori      $v0, $t7, 0x2
/* 70BE8 800B63E8 10400007 */  beqz       $v0, .L800B6408
/* 70BEC 800B63EC AFA0011C */   sw        $zero, 0x11C($sp)
/* 70BF0 800B63F0 10000008 */  b          .L800B6414
/* 70BF4 800B63F4 00077040 */   sll       $t6, $a3, 1
.L800B63F8:
/* 70BF8 800B63F8 AFA00104 */  sw         $zero, 0x104($sp)
/* 70BFC 800B63FC 00D4A021 */  addu       $s4, $a2, $s4
/* 70C00 800B6400 1000000B */  b          .L800B6430
/* 70C04 800B6404 AFA0011C */   sw        $zero, 0x11C($sp)
.L800B6408:
/* 70C08 800B6408 0007C840 */  sll        $t9, $a3, 1
/* 70C0C 800B640C 10000008 */  b          .L800B6430
/* 70C10 800B6410 0334A021 */   addu      $s4, $t9, $s4
.L800B6414:
/* 70C14 800B6414 52800004 */  beql       $s4, $zero, .L800B6428
/* 70C18 800B6418 0267A021 */   addu      $s4, $s3, $a3
/* 70C1C 800B641C 10000004 */  b          .L800B6430
/* 70C20 800B6420 01D4A021 */   addu      $s4, $t6, $s4
/* 70C24 800B6424 0267A021 */  addu       $s4, $s3, $a3
.L800B6428:
/* 70C28 800B6428 0014C040 */  sll        $t8, $s4, 1
/* 70C2C 800B642C 0300A025 */  or         $s4, $t8, $zero
.L800B6430:
/* 70C30 800B6430 11200019 */  beqz       $t1, .L800B6498
/* 70C34 800B6434 24190001 */   addiu     $t9, $zero, 0x1
/* 70C38 800B6438 3C0100FF */  lui        $at, (0xFFFFFF >> 16)
/* 70C3C 800B643C 3421FFFF */  ori        $at, $at, (0xFFFFFF & 0xFFFF)
/* 70C40 800B6440 268F0180 */  addiu      $t7, $s4, 0x180
/* 70C44 800B6444 01E1C824 */  and        $t9, $t7, $at
/* 70C48 800B6448 8FA3014C */  lw         $v1, 0x14C($sp)
/* 70C4C 800B644C 8FA60148 */  lw         $a2, 0x148($sp)
/* 70C50 800B6450 3C010200 */  lui        $at, (0x2000000 >> 16)
/* 70C54 800B6454 02401025 */  or         $v0, $s2, $zero
/* 70C58 800B6458 019EC023 */  subu       $t8, $t4, $fp
/* 70C5C 800B645C 00187840 */  sll        $t7, $t8, 1
/* 70C60 800B6460 03217025 */  or         $t6, $t9, $at
/* 70C64 800B6464 AC4E0000 */  sw         $t6, 0x0($v0)
/* 70C68 800B6468 AC4F0004 */  sw         $t7, 0x4($v0)
/* 70C6C 800B646C 906E0000 */  lbu        $t6, 0x0($v1)
/* 70C70 800B6470 26520008 */  addiu      $s2, $s2, 0x8
/* 70C74 800B6474 35D80020 */  ori        $t8, $t6, 0x20
/* 70C78 800B6478 A0780000 */  sb         $t8, 0x0($v1)
/* 70C7C 800B647C 90D900B0 */  lbu        $t9, 0xB0($a2)
/* 70C80 800B6480 372E0020 */  ori        $t6, $t9, 0x20
/* 70C84 800B6484 A0CE00B0 */  sb         $t6, 0xB0($a2)
/* 70C88 800B6488 90D800B0 */  lbu        $t8, 0xB0($a2)
/* 70C8C 800B648C 330FFF7F */  andi       $t7, $t8, 0xFF7F
/* 70C90 800B6490 1000000D */  b          .L800B64C8
/* 70C94 800B6494 A0CF00B0 */   sb        $t7, 0xB0($a2)
.L800B6498:
/* 70C98 800B6498 51400007 */  beql       $t2, $zero, .L800B64B8
/* 70C9C 800B649C 8EEF0008 */   lw        $t7, 0x8($s7)
/* 70CA0 800B64A0 A2F90000 */  sb         $t9, 0x0($s7)
/* 70CA4 800B64A4 8FAE0134 */  lw         $t6, 0x134($sp)
/* 70CA8 800B64A8 8DD80000 */  lw         $t8, 0x0($t6)
/* 70CAC 800B64AC 10000004 */  b          .L800B64C0
/* 70CB0 800B64B0 AEF80008 */   sw        $t8, 0x8($s7)
/* 70CB4 800B64B4 8EEF0008 */  lw         $t7, 0x8($s7)
.L800B64B8:
/* 70CB8 800B64B8 01EBC821 */  addu       $t9, $t7, $t3
/* 70CBC 800B64BC AEF90008 */  sw         $t9, 0x8($s7)
.L800B64C0:
/* 70CC0 800B64C0 57CCFEFC */  bnel       $fp, $t4, .L800B60B4
/* 70CC4 800B64C4 8EE60008 */   lw        $a2, 0x8($s7)
.L800B64C8:
/* 70CC8 800B64C8 8FA400BC */  lw         $a0, 0xBC($sp)
.L800B64CC:
/* 70CCC 800B64CC 24010001 */  addiu      $at, $zero, 0x1
/* 70CD0 800B64D0 8FA3014C */  lw         $v1, 0x14C($sp)
/* 70CD4 800B64D4 10810009 */  beq        $a0, $at, .L800B64FC
/* 70CD8 800B64D8 8FB80104 */   lw        $t8, 0x104($sp)
/* 70CDC 800B64DC 24010002 */  addiu      $at, $zero, 0x2
/* 70CE0 800B64E0 1081000D */  beq        $a0, $at, .L800B6518
/* 70CE4 800B64E4 8FAE00B8 */   lw        $t6, 0xB8($sp)
/* 70CE8 800B64E8 8C670000 */  lw         $a3, 0x0($v1)
/* 70CEC 800B64EC 00072880 */  sll        $a1, $a3, 2
/* 70CF0 800B64F0 000577C2 */  srl        $t6, $a1, 31
/* 70CF4 800B64F4 1000006A */  b          .L800B66A0
/* 70CF8 800B64F8 01C02825 */   or        $a1, $t6, $zero
.L800B64FC:
/* 70CFC 800B64FC 270F0180 */  addiu      $t7, $t8, 0x180
/* 70D00 800B6500 A7AF00AA */  sh         $t7, 0xAA($sp)
/* 70D04 800B6504 8C670000 */  lw         $a3, 0x0($v1)
/* 70D08 800B6508 00072880 */  sll        $a1, $a3, 2
/* 70D0C 800B650C 0005CFC2 */  srl        $t9, $a1, 31
/* 70D10 800B6510 10000063 */  b          .L800B66A0
/* 70D14 800B6514 03202825 */   or        $a1, $t9, $zero
.L800B6518:
/* 70D18 800B6518 11C00009 */  beqz       $t6, .L800B6540
/* 70D1C 800B651C 8FA6014C */   lw        $a2, 0x14C($sp)
/* 70D20 800B6520 24010001 */  addiu      $at, $zero, 0x1
/* 70D24 800B6524 11C10036 */  beq        $t6, $at, .L800B6600
/* 70D28 800B6528 02401025 */   or        $v0, $s2, $zero
/* 70D2C 800B652C 8C670000 */  lw         $a3, 0x0($v1)
/* 70D30 800B6530 00072880 */  sll        $a1, $a3, 2
/* 70D34 800B6534 0005C7C2 */  srl        $t8, $a1, 31
/* 70D38 800B6538 10000059 */  b          .L800B66A0
/* 70D3C 800B653C 03002825 */   or        $a1, $t8, $zero
.L800B6540:
/* 70D40 800B6540 8FAF0104 */  lw         $t7, 0x104($sp)
/* 70D44 800B6544 3C010800 */  lui        $at, (0x8000000 >> 16)
/* 70D48 800B6548 02401025 */  or         $v0, $s2, $zero
/* 70D4C 800B654C 25F90180 */  addiu      $t9, $t7, 0x180
/* 70D50 800B6550 332EFFFF */  andi       $t6, $t9, 0xFFFF
/* 70D54 800B6554 01C1C025 */  or         $t8, $t6, $at
/* 70D58 800B6558 25840004 */  addiu      $a0, $t4, 0x4
/* 70D5C 800B655C 308FFFFF */  andi       $t7, $a0, 0xFFFF
/* 70D60 800B6560 3C010020 */  lui        $at, (0x200000 >> 16)
/* 70D64 800B6564 01E1C825 */  or         $t9, $t7, $at
/* 70D68 800B6568 26520008 */  addiu      $s2, $s2, 0x8
/* 70D6C 800B656C 3C0E0501 */  lui        $t6, (0x501FF60 >> 16)
/* 70D70 800B6570 AC590004 */  sw         $t9, 0x4($v0)
/* 70D74 800B6574 AC580000 */  sw         $t8, 0x0($v0)
/* 70D78 800B6578 35CEFF60 */  ori        $t6, $t6, (0x501FF60 & 0xFFFF)
/* 70D7C 800B657C 02401825 */  or         $v1, $s2, $zero
/* 70D80 800B6580 AC6E0000 */  sw         $t6, 0x0($v1)
/* 70D84 800B6584 8EF8000C */  lw         $t8, 0xC($s7)
/* 70D88 800B6588 3C018000 */  lui        $at, (0x800000F0 >> 16)
/* 70D8C 800B658C 342100F0 */  ori        $at, $at, (0x800000F0 & 0xFFFF)
/* 70D90 800B6590 03017821 */  addu       $t7, $t8, $at
/* 70D94 800B6594 AC6F0004 */  sw         $t7, 0x4($v1)
/* 70D98 800B6598 24190024 */  addiu      $t9, $zero, 0x24
/* 70D9C 800B659C AFA400AC */  sw         $a0, 0xAC($sp)
/* 70DA0 800B65A0 A7B900AA */  sh         $t9, 0xAA($sp)
/* 70DA4 800B65A4 8CC70000 */  lw         $a3, 0x0($a2)
/* 70DA8 800B65A8 26520008 */  addiu      $s2, $s2, 0x8
/* 70DAC 800B65AC 02401025 */  or         $v0, $s2, $zero
/* 70DB0 800B65B0 00072880 */  sll        $a1, $a3, 2
/* 70DB4 800B65B4 000577C2 */  srl        $t6, $a1, 31
/* 70DB8 800B65B8 11C0000F */  beqz       $t6, .L800B65F8
/* 70DBC 800B65BC 01C02825 */   or        $a1, $t6, $zero
/* 70DC0 800B65C0 3C0100FF */  lui        $at, (0xFFFFFF >> 16)
/* 70DC4 800B65C4 3421FFFF */  ori        $at, $at, (0xFFFFFF & 0xFFFF)
/* 70DC8 800B65C8 24980020 */  addiu      $t8, $a0, 0x20
/* 70DCC 800B65CC 03017824 */  and        $t7, $t8, $at
/* 70DD0 800B65D0 3C010200 */  lui        $at, (0x2000000 >> 16)
/* 70DD4 800B65D4 01E1C825 */  or         $t9, $t7, $at
/* 70DD8 800B65D8 258E0010 */  addiu      $t6, $t4, 0x10
/* 70DDC 800B65DC AC4E0004 */  sw         $t6, 0x4($v0)
/* 70DE0 800B65E0 AC590000 */  sw         $t9, 0x0($v0)
/* 70DE4 800B65E4 8CC70000 */  lw         $a3, 0x0($a2)
/* 70DE8 800B65E8 26520008 */  addiu      $s2, $s2, 0x8
/* 70DEC 800B65EC 00072880 */  sll        $a1, $a3, 2
/* 70DF0 800B65F0 0005C7C2 */  srl        $t8, $a1, 31
/* 70DF4 800B65F4 03002825 */  or         $a1, $t8, $zero
.L800B65F8:
/* 70DF8 800B65F8 10000029 */  b          .L800B66A0
/* 70DFC 800B65FC 8FA400BC */   lw        $a0, 0xBC($sp)
.L800B6600:
/* 70E00 800B6600 8FAF0104 */  lw         $t7, 0x104($sp)
/* 70E04 800B6604 3C010800 */  lui        $at, (0x8000000 >> 16)
/* 70E08 800B6608 26520008 */  addiu      $s2, $s2, 0x8
/* 70E0C 800B660C 25F90180 */  addiu      $t9, $t7, 0x180
/* 70E10 800B6610 332EFFFF */  andi       $t6, $t9, 0xFFFF
/* 70E14 800B6614 01C1C025 */  or         $t8, $t6, $at
/* 70E18 800B6618 258F0008 */  addiu      $t7, $t4, 0x8
/* 70E1C 800B661C 31F9FFFF */  andi       $t9, $t7, 0xFFFF
/* 70E20 800B6620 AC580000 */  sw         $t8, 0x0($v0)
/* 70E24 800B6624 3C010160 */  lui        $at, (0x1600000 >> 16)
/* 70E28 800B6628 03217025 */  or         $t6, $t9, $at
/* 70E2C 800B662C 3C180501 */  lui        $t8, (0x501FF60 >> 16)
/* 70E30 800B6630 AC4E0004 */  sw         $t6, 0x4($v0)
/* 70E34 800B6634 3718FF60 */  ori        $t8, $t8, (0x501FF60 & 0xFFFF)
/* 70E38 800B6638 02401825 */  or         $v1, $s2, $zero
/* 70E3C 800B663C AC780000 */  sw         $t8, 0x0($v1)
/* 70E40 800B6640 8EEF000C */  lw         $t7, 0xC($s7)
/* 70E44 800B6644 3C018000 */  lui        $at, (0x800000F0 >> 16)
/* 70E48 800B6648 342100F0 */  ori        $at, $at, (0x800000F0 & 0xFFFF)
/* 70E4C 800B664C 26520008 */  addiu      $s2, $s2, 0x8
/* 70E50 800B6650 3C0E0A00 */  lui        $t6, (0xA000164 >> 16)
/* 70E54 800B6654 01E1C821 */  addu       $t9, $t7, $at
/* 70E58 800B6658 AC790004 */  sw         $t9, 0x4($v1)
/* 70E5C 800B665C 35CE0164 */  ori        $t6, $t6, (0xA000164 & 0xFFFF)
/* 70E60 800B6660 02402025 */  or         $a0, $s2, $zero
/* 70E64 800B6664 AC8E0000 */  sw         $t6, 0x0($a0)
/* 70E68 800B6668 8FB800AC */  lw         $t8, 0xAC($sp)
/* 70E6C 800B666C 26520008 */  addiu      $s2, $s2, 0x8
/* 70E70 800B6670 27190020 */  addiu      $t9, $t8, 0x20
/* 70E74 800B6674 25980004 */  addiu      $t8, $t4, 0x4
/* 70E78 800B6678 330FFFFF */  andi       $t7, $t8, 0xFFFF
/* 70E7C 800B667C 00197400 */  sll        $t6, $t9, 16
/* 70E80 800B6680 01CFC825 */  or         $t9, $t6, $t7
/* 70E84 800B6684 AC990004 */  sw         $t9, 0x4($a0)
/* 70E88 800B6688 8FB8014C */  lw         $t8, 0x14C($sp)
/* 70E8C 800B668C 8FA400BC */  lw         $a0, 0xBC($sp)
/* 70E90 800B6690 8F070000 */  lw         $a3, 0x0($t8)
/* 70E94 800B6694 00072880 */  sll        $a1, $a3, 2
/* 70E98 800B6698 000577C2 */  srl        $t6, $a1, 31
/* 70E9C 800B669C 01C02825 */  or         $a1, $t6, $zero
.L800B66A0:
/* 70EA0 800B66A0 10A00005 */  beqz       $a1, .L800B66B8
/* 70EA4 800B66A4 8FA200B8 */   lw        $v0, 0xB8($sp)
/* 70EA8 800B66A8 AFB2015C */  sw         $s2, 0x15C($sp)
/* 70EAC 800B66AC 24130001 */  addiu      $s3, $zero, 0x1
/* 70EB0 800B66B0 10000007 */  b          .L800B66D0
/* 70EB4 800B66B4 8FB1014C */   lw        $s1, 0x14C($sp)
.L800B66B8:
/* 70EB8 800B66B8 24420001 */  addiu      $v0, $v0, 0x1
/* 70EBC 800B66BC 1444FE45 */  bne        $v0, $a0, .L800B5FD4
/* 70EC0 800B66C0 AFA200B8 */   sw        $v0, 0xB8($sp)
/* 70EC4 800B66C4 AFB2015C */  sw         $s2, 0x15C($sp)
/* 70EC8 800B66C8 24130001 */  addiu      $s3, $zero, 0x1
/* 70ECC 800B66CC 8FB1014C */  lw         $s1, 0x14C($sp)
.L800B66D0:
/* 70ED0 800B66D0 00077840 */  sll        $t7, $a3, 1
/* 70ED4 800B66D4 000FCFC2 */  srl        $t9, $t7, 31
/* 70ED8 800B66D8 8FB2015C */  lw         $s2, 0x15C($sp)
/* 70EDC 800B66DC 16790005 */  bne        $s3, $t9, .L800B66F4
/* 70EE0 800B66E0 00001825 */   or        $v1, $zero, $zero
/* 70EE4 800B66E4 92380000 */  lbu        $t8, 0x0($s1)
/* 70EE8 800B66E8 24030001 */  addiu      $v1, $zero, 0x1
/* 70EEC 800B66EC 330EFFBF */  andi       $t6, $t8, 0xFFBF
/* 70EF0 800B66F0 A22E0000 */  sb         $t6, 0x0($s1)
.L800B66F4:
/* 70EF4 800B66F4 8FB30158 */  lw         $s3, 0x158($sp)
/* 70EF8 800B66F8 97B900AA */  lhu        $t9, 0xAA($sp)
/* 70EFC 800B66FC 02402025 */  or         $a0, $s2, $zero
/* 70F00 800B6700 00133040 */  sll        $a2, $s3, 1
/* 70F04 800B6704 00C09825 */  or         $s3, $a2, $zero
/* 70F08 800B6708 02E02825 */  or         $a1, $s7, $zero
/* 70F0C 800B670C 97A7011A */  lhu        $a3, 0x11A($sp)
/* 70F10 800B6710 AFA30014 */  sw         $v1, 0x14($sp)
/* 70F14 800B6714 AFA3011C */  sw         $v1, 0x11C($sp)
/* 70F18 800B6718 0C02DA29 */  jal        func_800B68A4
/* 70F1C 800B671C AFB90010 */   sw        $t9, 0x10($sp)
/* 70F20 800B6720 92380003 */  lbu        $t8, 0x3($s1)
/* 70F24 800B6724 00409025 */  or         $s2, $v0, $zero
/* 70F28 800B6728 8FB4011C */  lw         $s4, 0x11C($sp)
/* 70F2C 800B672C 17000004 */  bnez       $t8, .L800B6740
/* 70F30 800B6730 02402025 */   or        $a0, $s2, $zero
/* 70F34 800B6734 92EE0002 */  lbu        $t6, 0x2($s7)
/* 70F38 800B6738 51C00004 */  beql       $t6, $zero, .L800B674C
/* 70F3C 800B673C 922F0004 */   lbu       $t7, 0x4($s1)
.L800B6740:
/* 70F40 800B6740 1000000A */  b          .L800B676C
/* 70F44 800B6744 24100001 */   addiu     $s0, $zero, 0x1
/* 70F48 800B6748 922F0004 */  lbu        $t7, 0x4($s1)
.L800B674C:
/* 70F4C 800B674C 15E00005 */  bnez       $t7, .L800B6764
/* 70F50 800B6750 00000000 */   nop
/* 70F54 800B6754 92F90003 */  lbu        $t9, 0x3($s7)
/* 70F58 800B6758 00008025 */  or         $s0, $zero, $zero
/* 70F5C 800B675C 13200003 */  beqz       $t9, .L800B676C
/* 70F60 800B6760 00000000 */   nop
.L800B6764:
/* 70F64 800B6764 10000001 */  b          .L800B676C
/* 70F68 800B6768 24100002 */   addiu     $s0, $zero, 0x2
.L800B676C:
/* 70F6C 800B676C 02202825 */  or         $a1, $s1, $zero
/* 70F70 800B6770 02E03025 */  or         $a2, $s7, $zero
/* 70F74 800B6774 8FA70158 */  lw         $a3, 0x158($sp)
/* 70F78 800B6778 AFA00010 */  sw         $zero, 0x10($sp)
/* 70F7C 800B677C AFB00014 */  sw         $s0, 0x14($sp)
/* 70F80 800B6780 0C02DA40 */  jal        func_800B6900
/* 70F84 800B6784 AFB40018 */   sw        $s4, 0x18($sp)
/* 70F88 800B6788 92380000 */  lbu        $t8, 0x0($s1)
/* 70F8C 800B678C 00409025 */  or         $s2, $v0, $zero
/* 70F90 800B6790 00402025 */  or         $a0, $v0, $zero
/* 70F94 800B6794 330E0001 */  andi       $t6, $t8, 0x1
/* 70F98 800B6798 11C00007 */  beqz       $t6, .L800B67B8
/* 70F9C 800B679C 02202825 */   or        $a1, $s1, $zero
/* 70FA0 800B67A0 02E03025 */  or         $a2, $s7, $zero
/* 70FA4 800B67A4 02603825 */  or         $a3, $s3, $zero
/* 70FA8 800B67A8 AFB40010 */  sw         $s4, 0x10($sp)
/* 70FAC 800B67AC 0C02DBC6 */  jal        func_800B6F18
/* 70FB0 800B67B0 AFB00014 */   sw        $s0, 0x14($sp)
/* 70FB4 800B67B4 00409025 */  or         $s2, $v0, $zero
.L800B67B8:
/* 70FB8 800B67B8 02401025 */  or         $v0, $s2, $zero
.L800B67BC:
/* 70FBC 800B67BC 8FBF004C */  lw         $ra, 0x4C($sp)
/* 70FC0 800B67C0 8FB00028 */  lw         $s0, 0x28($sp)
/* 70FC4 800B67C4 8FB1002C */  lw         $s1, 0x2C($sp)
/* 70FC8 800B67C8 8FB20030 */  lw         $s2, 0x30($sp)
/* 70FCC 800B67CC 8FB30034 */  lw         $s3, 0x34($sp)
/* 70FD0 800B67D0 8FB40038 */  lw         $s4, 0x38($sp)
/* 70FD4 800B67D4 8FB5003C */  lw         $s5, 0x3C($sp)
/* 70FD8 800B67D8 8FB60040 */  lw         $s6, 0x40($sp)
/* 70FDC 800B67DC 8FB70044 */  lw         $s7, 0x44($sp)
/* 70FE0 800B67E0 8FBE0048 */  lw         $fp, 0x48($sp)
/* 70FE4 800B67E4 03E00008 */  jr         $ra
/* 70FE8 800B67E8 27BD0148 */   addiu     $sp, $sp, 0x148

glabel func_800B67EC
/* 70FEC 800B67EC 00801025 */  or         $v0, $a0, $zero
/* 70FF0 800B67F0 3C0E0800 */  lui        $t6, (0x8000180 >> 16)
/* 70FF4 800B67F4 35CE0180 */  ori        $t6, $t6, (0x8000180 & 0xFFFF)
/* 70FF8 800B67F8 24840008 */  addiu      $a0, $a0, 0x8
/* 70FFC 800B67FC 240F0080 */  addiu      $t7, $zero, 0x80
/* 71000 800B6800 AC4F0004 */  sw         $t7, 0x4($v0)
/* 71004 800B6804 AC4E0000 */  sw         $t6, 0x0($v0)
/* 71008 800B6808 00801825 */  or         $v1, $a0, $zero
/* 7100C 800B680C 3C180400 */  lui        $t8, (0x4000000 >> 16)
/* 71010 800B6810 AC780000 */  sw         $t8, 0x0($v1)
/* 71014 800B6814 8CB9000C */  lw         $t9, 0xC($a1)
/* 71018 800B6818 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 7101C 800B681C 240D0040 */  addiu      $t5, $zero, 0x40
/* 71020 800B6820 03214821 */  addu       $t1, $t9, $at
/* 71024 800B6824 AC690004 */  sw         $t1, 0x4($v1)
/* 71028 800B6828 8CCA0008 */  lw         $t2, 0x8($a2)
/* 7102C 800B682C 24840008 */  addiu      $a0, $a0, 0x8
/* 71030 800B6830 314B003F */  andi       $t3, $t2, 0x3F
/* 71034 800B6834 01AB4023 */  subu       $t0, $t5, $t3
/* 71038 800B6838 0107082A */  slt        $at, $t0, $a3
/* 7103C 800B683C 10200017 */  beqz       $at, .L800B689C
/* 71040 800B6840 ACCB0008 */   sw        $t3, 0x8($a2)
/* 71044 800B6844 00E81823 */  subu       $v1, $a3, $t0
/* 71048 800B6848 2463003F */  addiu      $v1, $v1, 0x3F
/* 7104C 800B684C 04610003 */  bgez       $v1, .L800B685C
/* 71050 800B6850 00037183 */   sra       $t6, $v1, 6
/* 71054 800B6854 2461003F */  addiu      $at, $v1, 0x3F
/* 71058 800B6858 00017183 */  sra        $t6, $at, 6
.L800B685C:
/* 7105C 800B685C 19C0000F */  blez       $t6, .L800B689C
/* 71060 800B6860 24050200 */   addiu     $a1, $zero, 0x200
/* 71064 800B6864 000E31C0 */  sll        $a2, $t6, 7
/* 71068 800B6868 3C070A00 */  lui        $a3, (0xA000180 >> 16)
/* 7106C 800B686C 34E70180 */  ori        $a3, $a3, (0xA000180 & 0xFFFF)
/* 71070 800B6870 24C60200 */  addiu      $a2, $a2, 0x200
.L800B6874:
/* 71074 800B6874 00A07825 */  or         $t7, $a1, $zero
/* 71078 800B6878 24A50080 */  addiu      $a1, $a1, 0x80
/* 7107C 800B687C 000FC400 */  sll        $t8, $t7, 16
/* 71080 800B6880 00801825 */  or         $v1, $a0, $zero
/* 71084 800B6884 00A6082A */  slt        $at, $a1, $a2
/* 71088 800B6888 37190080 */  ori        $t9, $t8, 0x80
/* 7108C 800B688C AC790004 */  sw         $t9, 0x4($v1)
/* 71090 800B6890 AC670000 */  sw         $a3, 0x0($v1)
/* 71094 800B6894 1420FFF7 */  bnez       $at, .L800B6874
/* 71098 800B6898 24840008 */   addiu     $a0, $a0, 0x8
.L800B689C:
/* 7109C 800B689C 03E00008 */  jr         $ra
/* 710A0 800B68A0 00801025 */   or        $v0, $a0, $zero

glabel func_800B68A4
/* 710A4 800B68A4 97B80012 */  lhu        $t8, 0x12($sp)
/* 710A8 800B68A8 AFA7000C */  sw         $a3, 0xC($sp)
/* 710AC 800B68AC 3C010800 */  lui        $at, (0x8000000 >> 16)
/* 710B0 800B68B0 30C9FFFF */  andi       $t1, $a2, 0xFFFF
/* 710B4 800B68B4 0301C825 */  or         $t9, $t8, $at
/* 710B8 800B68B8 AC990000 */  sw         $t9, 0x0($a0)
/* 710BC 800B68BC AC890004 */  sw         $t1, 0x4($a0)
/* 710C0 800B68C0 8FAA0014 */  lw         $t2, 0x14($sp)
/* 710C4 800B68C4 3C010500 */  lui        $at, (0x5000000 >> 16)
/* 710C8 800B68C8 30EEFFFF */  andi       $t6, $a3, 0xFFFF
/* 710CC 800B68CC 314B00FF */  andi       $t3, $t2, 0xFF
/* 710D0 800B68D0 000B6400 */  sll        $t4, $t3, 16
/* 710D4 800B68D4 01816825 */  or         $t5, $t4, $at
/* 710D8 800B68D8 24880008 */  addiu      $t0, $a0, 0x8
/* 710DC 800B68DC 01AE7825 */  or         $t7, $t5, $t6
/* 710E0 800B68E0 AD0F0000 */  sw         $t7, 0x0($t0)
/* 710E4 800B68E4 8CB8000C */  lw         $t8, 0xC($a1)
/* 710E8 800B68E8 3C018000 */  lui        $at, (0x80000020 >> 16)
/* 710EC 800B68EC 34210020 */  ori        $at, $at, (0x80000020 & 0xFFFF)
/* 710F0 800B68F0 0301C821 */  addu       $t9, $t8, $at
/* 710F4 800B68F4 AD190004 */  sw         $t9, 0x4($t0)
/* 710F8 800B68F8 03E00008 */  jr         $ra
/* 710FC 800B68FC 25020008 */   addiu     $v0, $t0, 0x8

glabel func_800B6900
/* 71100 800B6900 27BDFF40 */  addiu      $sp, $sp, -0xC0
/* 71104 800B6904 AFB00004 */  sw         $s0, 0x4($sp)
/* 71108 800B6908 AFA600C8 */  sw         $a2, 0xC8($sp)
/* 7110C 800B690C 84CF0010 */  lh         $t7, 0x10($a2)
/* 71110 800B6910 00A08025 */  or         $s0, $a1, $zero
/* 71114 800B6914 00801025 */  or         $v0, $a0, $zero
/* 71118 800B6918 A7AF00A8 */  sh         $t7, 0xA8($sp)
/* 7111C 800B691C 84D80012 */  lh         $t8, 0x12($a2)
/* 71120 800B6920 24010001 */  addiu      $at, $zero, 0x1
/* 71124 800B6924 A7B800AA */  sh         $t8, 0xAA($sp)
/* 71128 800B6928 94AC0006 */  lhu        $t4, 0x6($a1)
/* 7112C 800B692C 94AD0008 */  lhu        $t5, 0x8($a1)
/* 71130 800B6930 000CC940 */  sll        $t9, $t4, 5
/* 71134 800B6934 332FFFFF */  andi       $t7, $t9, 0xFFFF
/* 71138 800B6938 000D7140 */  sll        $t6, $t5, 5
/* 7113C 800B693C 01E06025 */  or         $t4, $t7, $zero
/* 71140 800B6940 31CDFFFF */  andi       $t5, $t6, 0xFFFF
/* 71144 800B6944 15E00005 */  bnez       $t7, .L800B695C
/* 71148 800B6948 AFAF000C */   sw        $t7, 0xC($sp)
/* 7114C 800B694C 25EC0001 */  addiu      $t4, $t7, 0x1
/* 71150 800B6950 318FFFFF */  andi       $t7, $t4, 0xFFFF
/* 71154 800B6954 01E06025 */  or         $t4, $t7, $zero
/* 71158 800B6958 AFAF000C */  sw         $t7, 0xC($sp)
.L800B695C:
/* 7115C 800B695C 15A00005 */  bnez       $t5, .L800B6974
/* 71160 800B6960 AFAD0008 */   sw        $t5, 0x8($sp)
/* 71164 800B6964 25AD0001 */  addiu      $t5, $t5, 0x1
/* 71168 800B6968 31B8FFFF */  andi       $t8, $t5, 0xFFFF
/* 7116C 800B696C 03006825 */  or         $t5, $t8, $zero
/* 71170 800B6970 AFB80008 */  sw         $t8, 0x8($sp)
.L800B6974:
/* 71174 800B6974 8FB9000C */  lw         $t9, 0xC($sp)
/* 71178 800B6978 8FAF00C8 */  lw         $t7, 0xC8($sp)
/* 7117C 800B697C A5F90010 */  sh         $t9, 0x10($t7)
/* 71180 800B6980 8FAE0008 */  lw         $t6, 0x8($sp)
/* 71184 800B6984 A5EE0012 */  sh         $t6, 0x12($t7)
/* 71188 800B6988 92180000 */  lbu        $t8, 0x0($s0)
/* 7118C 800B698C 3C0E0200 */  lui        $t6, (0x2000200 >> 16)
/* 71190 800B6990 8FA300D4 */  lw         $v1, 0xD4($sp)
/* 71194 800B6994 33190001 */  andi       $t9, $t8, 0x1
/* 71198 800B6998 13200047 */  beqz       $t9, .L800B6AB8
/* 7119C 800B699C 35CE0200 */   ori       $t6, $t6, (0x2000200 & 0xFFFF)
/* 711A0 800B69A0 240F0140 */  addiu      $t7, $zero, 0x140
/* 711A4 800B69A4 AC4F0004 */  sw         $t7, 0x4($v0)
/* 711A8 800B69A8 24840008 */  addiu      $a0, $a0, 0x8
/* 711AC 800B69AC 10610019 */  beq        $v1, $at, .L800B6A14
/* 711B0 800B69B0 AC4E0000 */   sw        $t6, 0x0($v0)
/* 711B4 800B69B4 24010002 */  addiu      $at, $zero, 0x2
/* 711B8 800B69B8 1061002B */  beq        $v1, $at, .L800B6A68
/* 711BC 800B69BC 00801025 */   or        $v0, $a0, $zero
/* 711C0 800B69C0 97B900D2 */  lhu        $t9, 0xD2($sp)
/* 711C4 800B69C4 3C010800 */  lui        $at, (0x8000000 >> 16)
/* 711C8 800B69C8 00801025 */  or         $v0, $a0, $zero
/* 711CC 800B69CC 03217025 */  or         $t6, $t9, $at
/* 711D0 800B69D0 00074040 */  sll        $t0, $a3, 1
/* 711D4 800B69D4 310FFFFF */  andi       $t7, $t0, 0xFFFF
/* 711D8 800B69D8 AC4E0000 */  sw         $t6, 0x0($v0)
/* 711DC 800B69DC 3C0104C0 */  lui        $at, (0x4C00000 >> 16)
/* 711E0 800B69E0 24840008 */  addiu      $a0, $a0, 0x8
/* 711E4 800B69E4 00801825 */  or         $v1, $a0, $zero
/* 711E8 800B69E8 01E1C025 */  or         $t8, $t7, $at
/* 711EC 800B69EC 3C0E0740 */  lui        $t6, (0x7400880 >> 16)
/* 711F0 800B69F0 3C190808 */  lui        $t9, (0x8080600 >> 16)
/* 711F4 800B69F4 37390600 */  ori        $t9, $t9, (0x8080600 & 0xFFFF)
/* 711F8 800B69F8 35CE0880 */  ori        $t6, $t6, (0x7400880 & 0xFFFF)
/* 711FC 800B69FC AC580004 */  sw         $t8, 0x4($v0)
/* 71200 800B6A00 AC6E0004 */  sw         $t6, 0x4($v1)
/* 71204 800B6A04 AC790000 */  sw         $t9, 0x0($v1)
/* 71208 800B6A08 24840008 */  addiu      $a0, $a0, 0x8
/* 7120C 800B6A0C 1000007B */  b          .L800B6BFC
/* 71210 800B6A10 01E04025 */   or        $t0, $t7, $zero
.L800B6A14:
/* 71214 800B6A14 97B800D2 */  lhu        $t8, 0xD2($sp)
/* 71218 800B6A18 3C010800 */  lui        $at, (0x8000000 >> 16)
/* 7121C 800B6A1C 00801025 */  or         $v0, $a0, $zero
/* 71220 800B6A20 0301C825 */  or         $t9, $t8, $at
/* 71224 800B6A24 00074040 */  sll        $t0, $a3, 1
/* 71228 800B6A28 310EFFFF */  andi       $t6, $t0, 0xFFFF
/* 7122C 800B6A2C AC590000 */  sw         $t9, 0x0($v0)
/* 71230 800B6A30 3C010200 */  lui        $at, (0x2000000 >> 16)
/* 71234 800B6A34 24840008 */  addiu      $a0, $a0, 0x8
/* 71238 800B6A38 01C17825 */  or         $t7, $t6, $at
/* 7123C 800B6A3C 00801825 */  or         $v1, $a0, $zero
/* 71240 800B6A40 3C190740 */  lui        $t9, (0x7400880 >> 16)
/* 71244 800B6A44 3C180808 */  lui        $t8, (0x8080600 >> 16)
/* 71248 800B6A48 AC4F0004 */  sw         $t7, 0x4($v0)
/* 7124C 800B6A4C 37180600 */  ori        $t8, $t8, (0x8080600 & 0xFFFF)
/* 71250 800B6A50 37390880 */  ori        $t9, $t9, (0x7400880 & 0xFFFF)
/* 71254 800B6A54 01C04025 */  or         $t0, $t6, $zero
/* 71258 800B6A58 AC790004 */  sw         $t9, 0x4($v1)
/* 7125C 800B6A5C AC780000 */  sw         $t8, 0x0($v1)
/* 71260 800B6A60 10000066 */  b          .L800B6BFC
/* 71264 800B6A64 24840008 */   addiu     $a0, $a0, 0x8
.L800B6A68:
/* 71268 800B6A68 97AF00D2 */  lhu        $t7, 0xD2($sp)
/* 7126C 800B6A6C 3C010800 */  lui        $at, (0x8000000 >> 16)
/* 71270 800B6A70 00074040 */  sll        $t0, $a3, 1
/* 71274 800B6A74 01E1C025 */  or         $t8, $t7, $at
/* 71278 800B6A78 AC580000 */  sw         $t8, 0x0($v0)
/* 7127C 800B6A7C 3C0104C0 */  lui        $at, (0x4C00000 >> 16)
/* 71280 800B6A80 3119FFFF */  andi       $t9, $t0, 0xFFFF
/* 71284 800B6A84 24840008 */  addiu      $a0, $a0, 0x8
/* 71288 800B6A88 03217025 */  or         $t6, $t9, $at
/* 7128C 800B6A8C 00801825 */  or         $v1, $a0, $zero
/* 71290 800B6A90 3C180740 */  lui        $t8, (0x7400880 >> 16)
/* 71294 800B6A94 3C0F0808 */  lui        $t7, (0x8080200 >> 16)
/* 71298 800B6A98 AC4E0004 */  sw         $t6, 0x4($v0)
/* 7129C 800B6A9C 35EF0200 */  ori        $t7, $t7, (0x8080200 & 0xFFFF)
/* 712A0 800B6AA0 37180880 */  ori        $t8, $t8, (0x7400880 & 0xFFFF)
/* 712A4 800B6AA4 03204025 */  or         $t0, $t9, $zero
/* 712A8 800B6AA8 AC780004 */  sw         $t8, 0x4($v1)
/* 712AC 800B6AAC AC6F0000 */  sw         $t7, 0x0($v1)
/* 712B0 800B6AB0 10000052 */  b          .L800B6BFC
/* 712B4 800B6AB4 24840008 */   addiu     $a0, $a0, 0x8
.L800B6AB8:
/* 712B8 800B6AB8 8E020000 */  lw         $v0, 0x0($s0)
/* 712BC 800B6ABC 3C0F0200 */  lui        $t7, (0x2000200 >> 16)
/* 712C0 800B6AC0 35EF0200 */  ori        $t7, $t7, (0x2000200 & 0xFFFF)
/* 712C4 800B6AC4 00027100 */  sll        $t6, $v0, 4
/* 712C8 800B6AC8 05C1001B */  bgez       $t6, .L800B6B38
/* 712CC 800B6ACC 0002C940 */   sll       $t9, $v0, 5
/* 712D0 800B6AD0 00801025 */  or         $v0, $a0, $zero
/* 712D4 800B6AD4 24180280 */  addiu      $t8, $zero, 0x280
/* 712D8 800B6AD8 AC580004 */  sw         $t8, 0x4($v0)
/* 712DC 800B6ADC AC4F0000 */  sw         $t7, 0x0($v0)
/* 712E0 800B6AE0 97AE00D2 */  lhu        $t6, 0xD2($sp)
/* 712E4 800B6AE4 3C010800 */  lui        $at, (0x8000000 >> 16)
/* 712E8 800B6AE8 24840008 */  addiu      $a0, $a0, 0x8
/* 712EC 800B6AEC 01C17825 */  or         $t7, $t6, $at
/* 712F0 800B6AF0 00801825 */  or         $v1, $a0, $zero
/* 712F4 800B6AF4 00074040 */  sll        $t0, $a3, 1
/* 712F8 800B6AF8 3118FFFF */  andi       $t8, $t0, 0xFFFF
/* 712FC 800B6AFC AC6F0000 */  sw         $t7, 0x0($v1)
/* 71300 800B6B00 24840008 */  addiu      $a0, $a0, 0x8
/* 71304 800B6B04 3C010200 */  lui        $at, (0x2000000 >> 16)
/* 71308 800B6B08 0301C825 */  or         $t9, $t8, $at
/* 7130C 800B6B0C 00802825 */  or         $a1, $a0, $zero
/* 71310 800B6B10 3C0F0340 */  lui        $t7, (0x3400880 >> 16)
/* 71314 800B6B14 3C0E0808 */  lui        $t6, (0x8080600 >> 16)
/* 71318 800B6B18 AC790004 */  sw         $t9, 0x4($v1)
/* 7131C 800B6B1C 35CE0600 */  ori        $t6, $t6, (0x8080600 & 0xFFFF)
/* 71320 800B6B20 35EF0880 */  ori        $t7, $t7, (0x3400880 & 0xFFFF)
/* 71324 800B6B24 03004025 */  or         $t0, $t8, $zero
/* 71328 800B6B28 ACAF0004 */  sw         $t7, 0x4($a1)
/* 7132C 800B6B2C ACAE0000 */  sw         $t6, 0x0($a1)
/* 71330 800B6B30 10000032 */  b          .L800B6BFC
/* 71334 800B6B34 24840008 */   addiu     $a0, $a0, 0x8
.L800B6B38:
/* 71338 800B6B38 0721001D */  bgez       $t9, .L800B6BB0
/* 7133C 800B6B3C 00801025 */   or        $v0, $a0, $zero
/* 71340 800B6B40 00801025 */  or         $v0, $a0, $zero
/* 71344 800B6B44 3C0E0200 */  lui        $t6, (0x2000200 >> 16)
/* 71348 800B6B48 35CE0200 */  ori        $t6, $t6, (0x2000200 & 0xFFFF)
/* 7134C 800B6B4C 240F0280 */  addiu      $t7, $zero, 0x280
/* 71350 800B6B50 AC4F0004 */  sw         $t7, 0x4($v0)
/* 71354 800B6B54 AC4E0000 */  sw         $t6, 0x0($v0)
/* 71358 800B6B58 97B900D2 */  lhu        $t9, 0xD2($sp)
/* 7135C 800B6B5C 3C010800 */  lui        $at, (0x8000000 >> 16)
/* 71360 800B6B60 24840008 */  addiu      $a0, $a0, 0x8
/* 71364 800B6B64 03217025 */  or         $t6, $t9, $at
/* 71368 800B6B68 00801825 */  or         $v1, $a0, $zero
/* 7136C 800B6B6C 00074040 */  sll        $t0, $a3, 1
/* 71370 800B6B70 310FFFFF */  andi       $t7, $t0, 0xFFFF
/* 71374 800B6B74 AC6E0000 */  sw         $t6, 0x0($v1)
/* 71378 800B6B78 24840008 */  addiu      $a0, $a0, 0x8
/* 7137C 800B6B7C 3C0104C0 */  lui        $at, (0x4C00000 >> 16)
/* 71380 800B6B80 01E1C025 */  or         $t8, $t7, $at
/* 71384 800B6B84 00802825 */  or         $a1, $a0, $zero
/* 71388 800B6B88 3C0E0740 */  lui        $t6, (0x7400340 >> 16)
/* 7138C 800B6B8C 3C190808 */  lui        $t9, (0x8080200 >> 16)
/* 71390 800B6B90 AC780004 */  sw         $t8, 0x4($v1)
/* 71394 800B6B94 37390200 */  ori        $t9, $t9, (0x8080200 & 0xFFFF)
/* 71398 800B6B98 35CE0340 */  ori        $t6, $t6, (0x7400340 & 0xFFFF)
/* 7139C 800B6B9C 01E04025 */  or         $t0, $t7, $zero
/* 713A0 800B6BA0 ACAE0004 */  sw         $t6, 0x4($a1)
/* 713A4 800B6BA4 ACB90000 */  sw         $t9, 0x0($a1)
/* 713A8 800B6BA8 10000014 */  b          .L800B6BFC
/* 713AC 800B6BAC 24840008 */   addiu     $a0, $a0, 0x8
.L800B6BB0:
/* 713B0 800B6BB0 97B800D2 */  lhu        $t8, 0xD2($sp)
/* 713B4 800B6BB4 3C010800 */  lui        $at, (0x8000000 >> 16)
/* 713B8 800B6BB8 00074040 */  sll        $t0, $a3, 1
/* 713BC 800B6BBC 0301C825 */  or         $t9, $t8, $at
/* 713C0 800B6BC0 3C0104C0 */  lui        $at, (0x4C00000 >> 16)
/* 713C4 800B6BC4 310EFFFF */  andi       $t6, $t0, 0xFFFF
/* 713C8 800B6BC8 24840008 */  addiu      $a0, $a0, 0x8
/* 713CC 800B6BCC 01C17825 */  or         $t7, $t6, $at
/* 713D0 800B6BD0 AC590000 */  sw         $t9, 0x0($v0)
/* 713D4 800B6BD4 00801825 */  or         $v1, $a0, $zero
/* 713D8 800B6BD8 AC4F0004 */  sw         $t7, 0x4($v0)
/* 713DC 800B6BDC 3C190740 */  lui        $t9, (0x7400880 >> 16)
/* 713E0 800B6BE0 3C180808 */  lui        $t8, (0x8080600 >> 16)
/* 713E4 800B6BE4 37180600 */  ori        $t8, $t8, (0x8080600 & 0xFFFF)
/* 713E8 800B6BE8 37390880 */  ori        $t9, $t9, (0x7400880 & 0xFFFF)
/* 713EC 800B6BEC 01C04025 */  or         $t0, $t6, $zero
/* 713F0 800B6BF0 AC790004 */  sw         $t9, 0x4($v1)
/* 713F4 800B6BF4 AC780000 */  sw         $t8, 0x0($v1)
/* 713F8 800B6BF8 24840008 */  addiu      $a0, $a0, 0x8
.L800B6BFC:
/* 713FC 800B6BFC 97AA00A8 */  lhu        $t2, 0xA8($sp)
/* 71400 800B6C00 8FAE000C */  lw         $t6, 0xC($sp)
/* 71404 800B6C04 97AF00AA */  lhu        $t7, 0xAA($sp)
/* 71408 800B6C08 8FB80008 */  lw         $t8, 0x8($sp)
/* 7140C 800B6C0C 154E0009 */  bne        $t2, $t6, .L800B6C34
/* 71410 800B6C10 3C028004 */   lui       $v0, %hi(D_8003E54C)
/* 71414 800B6C14 15F80007 */  bne        $t7, $t8, .L800B6C34
/* 71418 800B6C18 00000000 */   nop
/* 7141C 800B6C1C 8E190000 */  lw         $t9, 0x0($s0)
/* 71420 800B6C20 001978C0 */  sll        $t7, $t9, 3
/* 71424 800B6C24 05E00003 */  bltz       $t7, .L800B6C34
/* 71428 800B6C28 00000000 */   nop
/* 7142C 800B6C2C 10000048 */  b          .L800B6D50
/* 71430 800B6C30 00005825 */   or        $t3, $zero, $zero
.L800B6C34:
/* 71434 800B6C34 8C42E54C */  lw         $v0, %lo(D_8003E54C)($v0)
/* 71438 800B6C38 8FAF000C */  lw         $t7, 0xC($sp)
/* 7143C 800B6C3C 000AC143 */  sra        $t8, $t2, 5
/* 71440 800B6C40 0018C880 */  sll        $t9, $t8, 2
/* 71444 800B6C44 3C038004 */  lui        $v1, %hi(D_8003E548)
/* 71448 800B6C48 00597021 */  addu       $t6, $v0, $t9
/* 7144C 800B6C4C 000FC143 */  sra        $t8, $t7, 5
/* 71450 800B6C50 8C63E548 */  lw         $v1, %lo(D_8003E548)($v1)
/* 71454 800B6C54 0018C880 */  sll        $t9, $t8, 2
/* 71458 800B6C58 97B800AA */  lhu        $t8, 0xAA($sp)
/* 7145C 800B6C5C C5C40000 */  lwc1       $f4, 0x0($t6)
/* 71460 800B6C60 00797021 */  addu       $t6, $v1, $t9
/* 71464 800B6C64 0018C943 */  sra        $t9, $t8, 5
/* 71468 800B6C68 C5C60000 */  lwc1       $f6, 0x0($t6)
/* 7146C 800B6C6C 8FB80008 */  lw         $t8, 0x8($sp)
/* 71470 800B6C70 00197080 */  sll        $t6, $t9, 2
/* 71474 800B6C74 004E7821 */  addu       $t7, $v0, $t6
/* 71478 800B6C78 0018C943 */  sra        $t9, $t8, 5
/* 7147C 800B6C7C C5F00000 */  lwc1       $f16, 0x0($t7)
/* 71480 800B6C80 00197080 */  sll        $t6, $t9, 2
/* 71484 800B6C84 006E7821 */  addu       $t7, $v1, $t6
/* 71488 800B6C88 46062202 */  mul.s      $f8, $f4, $f6
/* 7148C 800B6C8C C5F20000 */  lwc1       $f18, 0x0($t7)
/* 71490 800B6C90 97AF00A8 */  lhu        $t7, 0xA8($sp)
/* 71494 800B6C94 00802825 */  or         $a1, $a0, $zero
/* 71498 800B6C98 46128102 */  mul.s      $f4, $f16, $f18
/* 7149C 800B6C9C 3C010906 */  lui        $at, (0x9060000 >> 16)
/* 714A0 800B6CA0 01E1C025 */  or         $t8, $t7, $at
/* 714A4 800B6CA4 24840008 */  addiu      $a0, $a0, 0x8
/* 714A8 800B6CA8 3C010904 */  lui        $at, (0x9040000 >> 16)
/* 714AC 800B6CAC 00803025 */  or         $a2, $a0, $zero
/* 714B0 800B6CB0 4600428D */  trunc.w.s  $f10, $f8
/* 714B4 800B6CB4 24840008 */  addiu      $a0, $a0, 0x8
/* 714B8 800B6CB8 00803825 */  or         $a3, $a0, $zero
/* 714BC 800B6CBC 4600218D */  trunc.w.s  $f6, $f4
/* 714C0 800B6CC0 44095000 */  mfc1       $t1, $f10
/* 714C4 800B6CC4 24840008 */  addiu      $a0, $a0, 0x8
/* 714C8 800B6CC8 00801025 */  or         $v0, $a0, $zero
/* 714CC 800B6CCC 44193000 */  mfc1       $t9, $f6
/* 714D0 800B6CD0 24840008 */  addiu      $a0, $a0, 0x8
/* 714D4 800B6CD4 00801825 */  or         $v1, $a0, $zero
/* 714D8 800B6CD8 AFB90094 */  sw         $t9, 0x94($sp)
/* 714DC 800B6CDC ACA00004 */  sw         $zero, 0x4($a1)
/* 714E0 800B6CE0 ACB80000 */  sw         $t8, 0x0($a1)
/* 714E4 800B6CE4 97AE00AA */  lhu        $t6, 0xAA($sp)
/* 714E8 800B6CE8 3198FFFF */  andi       $t8, $t4, 0xFFFF
/* 714EC 800B6CEC ACC00004 */  sw         $zero, 0x4($a2)
/* 714F0 800B6CF0 01C17825 */  or         $t7, $t6, $at
/* 714F4 800B6CF4 ACCF0000 */  sw         $t7, 0x0($a2)
/* 714F8 800B6CF8 3C010902 */  lui        $at, (0x9020000 >> 16)
/* 714FC 800B6CFC 0301C825 */  or         $t9, $t8, $at
/* 71500 800B6D00 3C010900 */  lui        $at, (0x9000000 >> 16)
/* 71504 800B6D04 31AEFFFF */  andi       $t6, $t5, 0xFFFF
/* 71508 800B6D08 ACF90000 */  sw         $t9, 0x0($a3)
/* 7150C 800B6D0C 01C17825 */  or         $t7, $t6, $at
/* 71510 800B6D10 ACE90004 */  sw         $t1, 0x4($a3)
/* 71514 800B6D14 AC4F0000 */  sw         $t7, 0x0($v0)
/* 71518 800B6D18 8FB80094 */  lw         $t8, 0x94($sp)
/* 7151C 800B6D1C 3C198004 */  lui        $t9, %hi(D_80038540)
/* 71520 800B6D20 3C010908 */  lui        $at, (0x9080000 >> 16)
/* 71524 800B6D24 AC580004 */  sw         $t8, 0x4($v0)
/* 71528 800B6D28 87398540 */  lh         $t9, %lo(D_80038540)($t9)
/* 7152C 800B6D2C 240B0001 */  addiu      $t3, $zero, 0x1
/* 71530 800B6D30 24840008 */  addiu      $a0, $a0, 0x8
/* 71534 800B6D34 332EFFFF */  andi       $t6, $t9, 0xFFFF
/* 71538 800B6D38 01C17825 */  or         $t7, $t6, $at
/* 7153C 800B6D3C AC6F0000 */  sw         $t7, 0x0($v1)
/* 71540 800B6D40 92180005 */  lbu        $t8, 0x5($s0)
/* 71544 800B6D44 0018CA00 */  sll        $t9, $t8, 8
/* 71548 800B6D48 332EFFFF */  andi       $t6, $t9, 0xFFFF
/* 7154C 800B6D4C AC6E0004 */  sw         $t6, 0x4($v1)
.L800B6D50:
/* 71550 800B6D50 3C0F8004 */  lui        $t7, %hi(D_80038542)
/* 71554 800B6D54 81EF8542 */  lb         $t7, %lo(D_80038542)($t7)
/* 71558 800B6D58 00801825 */  or         $v1, $a0, $zero
/* 7155C 800B6D5C 316E00FF */  andi       $t6, $t3, 0xFF
/* 71560 800B6D60 11E0003F */  beqz       $t7, .L800B6E60
/* 71564 800B6D64 3C010300 */   lui       $at, (0x3000000 >> 16)
/* 71568 800B6D68 92180005 */  lbu        $t8, 0x5($s0)
/* 7156C 800B6D6C 35790008 */  ori        $t9, $t3, 0x8
/* 71570 800B6D70 5300003C */  beql       $t8, $zero, .L800B6E64
/* 71574 800B6D74 000E7C00 */   sll       $t7, $t6, 16
/* 71578 800B6D78 332E00FF */  andi       $t6, $t9, 0xFF
/* 7157C 800B6D7C 000E7C00 */  sll        $t7, $t6, 16
/* 71580 800B6D80 3C010300 */  lui        $at, (0x3000000 >> 16)
/* 71584 800B6D84 01E1C025 */  or         $t8, $t7, $at
/* 71588 800B6D88 00801825 */  or         $v1, $a0, $zero
/* 7158C 800B6D8C AC780000 */  sw         $t8, 0x0($v1)
/* 71590 800B6D90 8FB900C8 */  lw         $t9, 0xC8($sp)
/* 71594 800B6D94 3C018000 */  lui        $at, (0x80000040 >> 16)
/* 71598 800B6D98 34210040 */  ori        $at, $at, (0x80000040 & 0xFFFF)
/* 7159C 800B6D9C 8F2E000C */  lw         $t6, 0xC($t9)
/* 715A0 800B6DA0 3C060C00 */  lui        $a2, (0xC008000 >> 16)
/* 715A4 800B6DA4 24840008 */  addiu      $a0, $a0, 0x8
/* 715A8 800B6DA8 01C17821 */  addu       $t7, $t6, $at
/* 715AC 800B6DAC AC6F0004 */  sw         $t7, 0x4($v1)
/* 715B0 800B6DB0 8E020000 */  lw         $v0, 0x0($s0)
/* 715B4 800B6DB4 34C68000 */  ori        $a2, $a2, (0xC008000 & 0xFFFF)
/* 715B8 800B6DB8 3C0F0200 */  lui        $t7, (0x20004C0 >> 16)
/* 715BC 800B6DBC 0002C900 */  sll        $t9, $v0, 4
/* 715C0 800B6DC0 07210012 */  bgez       $t9, .L800B6E0C
/* 715C4 800B6DC4 00027140 */   sll       $t6, $v0, 5
/* 715C8 800B6DC8 00801025 */  or         $v0, $a0, $zero
/* 715CC 800B6DCC 24840008 */  addiu      $a0, $a0, 0x8
/* 715D0 800B6DD0 3C0E0800 */  lui        $t6, (0x8000000 >> 16)
/* 715D4 800B6DD4 00801825 */  or         $v1, $a0, $zero
/* 715D8 800B6DD8 AC4E0000 */  sw         $t6, 0x0($v0)
/* 715DC 800B6DDC AC480004 */  sw         $t0, 0x4($v0)
/* 715E0 800B6DE0 24840008 */  addiu      $a0, $a0, 0x8
/* 715E4 800B6DE4 35EF04C0 */  ori        $t7, $t7, (0x20004C0 & 0xFFFF)
/* 715E8 800B6DE8 00802825 */  or         $a1, $a0, $zero
/* 715EC 800B6DEC 3C180340 */  lui        $t8, (0x3400740 >> 16)
/* 715F0 800B6DF0 AC6F0004 */  sw         $t7, 0x4($v1)
/* 715F4 800B6DF4 AC660000 */  sw         $a2, 0x0($v1)
/* 715F8 800B6DF8 37180740 */  ori        $t8, $t8, (0x3400740 & 0xFFFF)
/* 715FC 800B6DFC ACB80004 */  sw         $t8, 0x4($a1)
/* 71600 800B6E00 ACA60000 */  sw         $a2, 0x0($a1)
/* 71604 800B6E04 10000040 */  b          .L800B6F08
/* 71608 800B6E08 24840008 */   addiu     $a0, $a0, 0x8
.L800B6E0C:
/* 7160C 800B6E0C 05C1003E */  bgez       $t6, .L800B6F08
/* 71610 800B6E10 3C060C00 */   lui       $a2, (0xC008000 >> 16)
/* 71614 800B6E14 00801025 */  or         $v0, $a0, $zero
/* 71618 800B6E18 24840008 */  addiu      $a0, $a0, 0x8
/* 7161C 800B6E1C 3C0F0800 */  lui        $t7, (0x8000000 >> 16)
/* 71620 800B6E20 00801825 */  or         $v1, $a0, $zero
/* 71624 800B6E24 AC4F0000 */  sw         $t7, 0x0($v0)
/* 71628 800B6E28 AC480004 */  sw         $t0, 0x4($v0)
/* 7162C 800B6E2C 24840008 */  addiu      $a0, $a0, 0x8
/* 71630 800B6E30 3C180200 */  lui        $t8, (0x2000600 >> 16)
/* 71634 800B6E34 34C68000 */  ori        $a2, $a2, (0xC008000 & 0xFFFF)
/* 71638 800B6E38 37180600 */  ori        $t8, $t8, (0x2000600 & 0xFFFF)
/* 7163C 800B6E3C 00802825 */  or         $a1, $a0, $zero
/* 71640 800B6E40 3C190340 */  lui        $t9, (0x3400880 >> 16)
/* 71644 800B6E44 AC780004 */  sw         $t8, 0x4($v1)
/* 71648 800B6E48 AC660000 */  sw         $a2, 0x0($v1)
/* 7164C 800B6E4C 37390880 */  ori        $t9, $t9, (0x3400880 & 0xFFFF)
/* 71650 800B6E50 ACB90004 */  sw         $t9, 0x4($a1)
/* 71654 800B6E54 ACA60000 */  sw         $a2, 0x0($a1)
/* 71658 800B6E58 1000002B */  b          .L800B6F08
/* 7165C 800B6E5C 24840008 */   addiu     $a0, $a0, 0x8
.L800B6E60:
/* 71660 800B6E60 000E7C00 */  sll        $t7, $t6, 16
.L800B6E64:
/* 71664 800B6E64 01E1C025 */  or         $t8, $t7, $at
/* 71668 800B6E68 AC780000 */  sw         $t8, 0x0($v1)
/* 7166C 800B6E6C 8FB900C8 */  lw         $t9, 0xC8($sp)
/* 71670 800B6E70 3C018000 */  lui        $at, (0x80000040 >> 16)
/* 71674 800B6E74 34210040 */  ori        $at, $at, (0x80000040 & 0xFFFF)
/* 71678 800B6E78 8F2E000C */  lw         $t6, 0xC($t9)
/* 7167C 800B6E7C 3C060C00 */  lui        $a2, (0xC008000 >> 16)
/* 71680 800B6E80 24840008 */  addiu      $a0, $a0, 0x8
/* 71684 800B6E84 01C17821 */  addu       $t7, $t6, $at
/* 71688 800B6E88 AC6F0004 */  sw         $t7, 0x4($v1)
/* 7168C 800B6E8C 8E020000 */  lw         $v0, 0x0($s0)
/* 71690 800B6E90 34C68000 */  ori        $a2, $a2, (0xC008000 & 0xFFFF)
/* 71694 800B6E94 3C0E0800 */  lui        $t6, (0x8000000 >> 16)
/* 71698 800B6E98 0002C900 */  sll        $t9, $v0, 4
/* 7169C 800B6E9C 0721000B */  bgez       $t9, .L800B6ECC
/* 716A0 800B6EA0 3C0F0200 */   lui       $t7, (0x20004C0 >> 16)
/* 716A4 800B6EA4 00801025 */  or         $v0, $a0, $zero
/* 716A8 800B6EA8 24840008 */  addiu      $a0, $a0, 0x8
/* 716AC 800B6EAC 00801825 */  or         $v1, $a0, $zero
/* 716B0 800B6EB0 AC4E0000 */  sw         $t6, 0x0($v0)
/* 716B4 800B6EB4 AC480004 */  sw         $t0, 0x4($v0)
/* 716B8 800B6EB8 35EF04C0 */  ori        $t7, $t7, (0x20004C0 & 0xFFFF)
/* 716BC 800B6EBC AC6F0004 */  sw         $t7, 0x4($v1)
/* 716C0 800B6EC0 AC660000 */  sw         $a2, 0x0($v1)
/* 716C4 800B6EC4 10000010 */  b          .L800B6F08
/* 716C8 800B6EC8 24840008 */   addiu     $a0, $a0, 0x8
.L800B6ECC:
/* 716CC 800B6ECC 0002C940 */  sll        $t9, $v0, 5
/* 716D0 800B6ED0 0721000D */  bgez       $t9, .L800B6F08
/* 716D4 800B6ED4 3C060C00 */   lui       $a2, (0xC008000 >> 16)
/* 716D8 800B6ED8 00801025 */  or         $v0, $a0, $zero
/* 716DC 800B6EDC 24840008 */  addiu      $a0, $a0, 0x8
/* 716E0 800B6EE0 3C0E0800 */  lui        $t6, (0x8000000 >> 16)
/* 716E4 800B6EE4 00801825 */  or         $v1, $a0, $zero
/* 716E8 800B6EE8 AC4E0000 */  sw         $t6, 0x0($v0)
/* 716EC 800B6EEC AC480004 */  sw         $t0, 0x4($v0)
/* 716F0 800B6EF0 3C0F0200 */  lui        $t7, (0x2000600 >> 16)
/* 716F4 800B6EF4 34C68000 */  ori        $a2, $a2, (0xC008000 & 0xFFFF)
/* 716F8 800B6EF8 35EF0600 */  ori        $t7, $t7, (0x2000600 & 0xFFFF)
/* 716FC 800B6EFC AC6F0004 */  sw         $t7, 0x4($v1)
/* 71700 800B6F00 AC660000 */  sw         $a2, 0x0($v1)
/* 71704 800B6F04 24840008 */  addiu      $a0, $a0, 0x8
.L800B6F08:
/* 71708 800B6F08 8FB00004 */  lw         $s0, 0x4($sp)
/* 7170C 800B6F0C 27BD00C0 */  addiu      $sp, $sp, 0xC0
/* 71710 800B6F10 03E00008 */  jr         $ra
/* 71714 800B6F14 00801025 */   or        $v0, $a0, $zero

glabel func_800B6F18
/* 71718 800B6F18 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7171C 800B6F1C 8FAE003C */  lw         $t6, 0x3C($sp)
/* 71720 800B6F20 AFB00004 */  sw         $s0, 0x4($sp)
/* 71724 800B6F24 24020001 */  addiu      $v0, $zero, 0x1
/* 71728 800B6F28 11C20006 */  beq        $t6, $v0, .L800B6F44
/* 7172C 800B6F2C 00C08025 */   or        $s0, $a2, $zero
/* 71730 800B6F30 24010002 */  addiu      $at, $zero, 0x2
/* 71734 800B6F34 11C10009 */  beq        $t6, $at, .L800B6F5C
/* 71738 800B6F38 240A0600 */   addiu     $t2, $zero, 0x600
/* 7173C 800B6F3C 100000E8 */  b          .L800B72E0
/* 71740 800B6F40 00801025 */   or        $v0, $a0, $zero
.L800B6F44:
/* 71744 800B6F44 90A60003 */  lbu        $a2, 0x3($a1)
/* 71748 800B6F48 92080002 */  lbu        $t0, 0x2($s0)
/* 7174C 800B6F4C 240A04C0 */  addiu      $t2, $zero, 0x4C0
/* 71750 800B6F50 A2000003 */  sb         $zero, 0x3($s0)
/* 71754 800B6F54 10000008 */  b          .L800B6F78
/* 71758 800B6F58 A2060002 */   sb        $a2, 0x2($s0)
.L800B6F5C:
/* 7175C 800B6F5C 90A60004 */  lbu        $a2, 0x4($a1)
/* 71760 800B6F60 92080003 */  lbu        $t0, 0x3($s0)
/* 71764 800B6F64 A2000002 */  sb         $zero, 0x2($s0)
/* 71768 800B6F68 10000003 */  b          .L800B6F78
/* 7176C 800B6F6C A2060003 */   sb        $a2, 0x3($s0)
/* 71770 800B6F70 100000DB */  b          .L800B72E0
/* 71774 800B6F74 00801025 */   or        $v0, $a0, $zero
.L800B6F78:
/* 71778 800B6F78 8FAF0038 */  lw         $t7, 0x38($sp)
/* 7177C 800B6F7C 30E5FFFF */  andi       $a1, $a3, 0xFFFF
/* 71780 800B6F80 3C180A00 */  lui        $t8, (0xA000000 >> 16)
/* 71784 800B6F84 51E200A5 */  beql       $t7, $v0, .L800B721C
/* 71788 800B6F88 00801825 */   or        $v1, $a0, $zero
/* 7178C 800B6F8C 15000047 */  bnez       $t0, .L800B70AC
/* 71790 800B6F90 01002825 */   or        $a1, $t0, $zero
/* 71794 800B6F94 00801825 */  or         $v1, $a0, $zero
/* 71798 800B6F98 3C020A00 */  lui        $v0, (0xA000200 >> 16)
/* 7179C 800B6F9C 24840008 */  addiu      $a0, $a0, 0x8
/* 717A0 800B6FA0 24180008 */  addiu      $t8, $zero, 0x8
/* 717A4 800B6FA4 34420200 */  ori        $v0, $v0, (0xA000200 & 0xFFFF)
/* 717A8 800B6FA8 AC780004 */  sw         $t8, 0x4($v1)
/* 717AC 800B6FAC 00805825 */  or         $t3, $a0, $zero
/* 717B0 800B6FB0 3C190200 */  lui        $t9, (0x2000008 >> 16)
/* 717B4 800B6FB4 AC620000 */  sw         $v0, 0x0($v1)
/* 717B8 800B6FB8 37390008 */  ori        $t9, $t9, (0x2000008 & 0xFFFF)
/* 717BC 800B6FBC 24840008 */  addiu      $a0, $a0, 0x8
/* 717C0 800B6FC0 AD790000 */  sw         $t9, 0x0($t3)
/* 717C4 800B6FC4 240E0008 */  addiu      $t6, $zero, 0x8
/* 717C8 800B6FC8 00806025 */  or         $t4, $a0, $zero
/* 717CC 800B6FCC AD6E0004 */  sw         $t6, 0x4($t3)
/* 717D0 800B6FD0 24840008 */  addiu      $a0, $a0, 0x8
/* 717D4 800B6FD4 3C0F0010 */  lui        $t7, (0x100010 >> 16)
/* 717D8 800B6FD8 35EF0010 */  ori        $t7, $t7, (0x100010 & 0xFFFF)
/* 717DC 800B6FDC 00806825 */  or         $t5, $a0, $zero
/* 717E0 800B6FE0 AD8F0004 */  sw         $t7, 0x4($t4)
/* 717E4 800B6FE4 AD820000 */  sw         $v0, 0x0($t4)
/* 717E8 800B6FE8 24190020 */  addiu      $t9, $zero, 0x20
/* 717EC 800B6FEC 3C180800 */  lui        $t8, (0x8000000 >> 16)
/* 717F0 800B6FF0 ADB80000 */  sw         $t8, 0x0($t5)
/* 717F4 800B6FF4 ADB90004 */  sw         $t9, 0x4($t5)
/* 717F8 800B6FF8 24840008 */  addiu      $a0, $a0, 0x8
/* 717FC 800B6FFC AFA4000C */  sw         $a0, 0xC($sp)
/* 71800 800B7000 8FAF000C */  lw         $t7, 0xC($sp)
/* 71804 800B7004 3C0E0600 */  lui        $t6, (0x6000000 >> 16)
/* 71808 800B7008 3C098000 */  lui        $t1, (0x80000090 >> 16)
/* 7180C 800B700C ADEE0000 */  sw         $t6, 0x0($t7)
/* 71810 800B7010 8E18000C */  lw         $t8, 0xC($s0)
/* 71814 800B7014 35290090 */  ori        $t1, $t1, (0x80000090 & 0xFFFF)
/* 71818 800B7018 00E67021 */  addu       $t6, $a3, $a2
/* 7181C 800B701C 0309C821 */  addu       $t9, $t8, $t1
/* 71820 800B7020 0007C3C0 */  sll        $t8, $a3, 15
/* 71824 800B7024 01C51823 */  subu       $v1, $t6, $a1
/* 71828 800B7028 ADF90004 */  sw         $t9, 0x4($t7)
/* 7182C 800B702C 24790008 */  addiu      $t9, $v1, 0x8
/* 71830 800B7030 0319001A */  div        $zero, $t8, $t9
/* 71834 800B7034 24840008 */  addiu      $a0, $a0, 0x8
/* 71838 800B7038 17200002 */  bnez       $t9, .L800B7044
/* 7183C 800B703C 00000000 */   nop
/* 71840 800B7040 0007000D */  break      7
.L800B7044:
/* 71844 800B7044 2401FFFF */  addiu      $at, $zero, -0x1
/* 71848 800B7048 17210004 */  bne        $t9, $at, .L800B705C
/* 7184C 800B704C 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 71850 800B7050 17010002 */  bne        $t8, $at, .L800B705C
/* 71854 800B7054 00000000 */   nop
/* 71858 800B7058 0006000D */  break      6
.L800B705C:
/* 7185C 800B705C 00005812 */  mflo       $t3
/* 71860 800B7060 00806025 */  or         $t4, $a0, $zero
/* 71864 800B7064 316FFFFF */  andi       $t7, $t3, 0xFFFF
/* 71868 800B7068 3C0E0800 */  lui        $t6, (0x8000208 >> 16)
/* 7186C 800B706C 35CE0208 */  ori        $t6, $t6, (0x8000208 & 0xFFFF)
/* 71870 800B7070 24840008 */  addiu      $a0, $a0, 0x8
/* 71874 800B7074 3062FFFF */  andi       $v0, $v1, 0xFFFF
/* 71878 800B7078 31F8FFFF */  andi       $t8, $t7, 0xFFFF
/* 7187C 800B707C 3C010500 */  lui        $at, (0x5000000 >> 16)
/* 71880 800B7080 AD820004 */  sw         $v0, 0x4($t4)
/* 71884 800B7084 AD8E0000 */  sw         $t6, 0x0($t4)
/* 71888 800B7088 0301C825 */  or         $t9, $t8, $at
/* 7188C 800B708C 00806825 */  or         $t5, $a0, $zero
/* 71890 800B7090 01E05825 */  or         $t3, $t7, $zero
/* 71894 800B7094 ADB90000 */  sw         $t9, 0x0($t5)
/* 71898 800B7098 8E0F000C */  lw         $t7, 0xC($s0)
/* 7189C 800B709C 24840008 */  addiu      $a0, $a0, 0x8
/* 718A0 800B70A0 01E97021 */  addu       $t6, $t7, $t1
/* 718A4 800B70A4 10000038 */  b          .L800B7188
/* 718A8 800B70A8 ADAE0004 */   sw        $t6, 0x4($t5)
.L800B70AC:
/* 718AC 800B70AC 14C00014 */  bnez       $a2, .L800B7100
/* 718B0 800B70B0 00C01025 */   or        $v0, $a2, $zero
/* 718B4 800B70B4 00E5C823 */  subu       $t9, $a3, $a1
/* 718B8 800B70B8 272FFFFC */  addiu      $t7, $t9, -0x4
/* 718BC 800B70BC 0007C3C0 */  sll        $t8, $a3, 15
/* 718C0 800B70C0 030F001A */  div        $zero, $t8, $t7
/* 718C4 800B70C4 00005812 */  mflo       $t3
/* 718C8 800B70C8 316EFFFF */  andi       $t6, $t3, 0xFFFF
/* 718CC 800B70CC 15E00002 */  bnez       $t7, .L800B70D8
/* 718D0 800B70D0 00000000 */   nop
/* 718D4 800B70D4 0007000D */  break      7
.L800B70D8:
/* 718D8 800B70D8 2401FFFF */  addiu      $at, $zero, -0x1
/* 718DC 800B70DC 15E10004 */  bne        $t7, $at, .L800B70F0
/* 718E0 800B70E0 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 718E4 800B70E4 17010002 */  bne        $t8, $at, .L800B70F0
/* 718E8 800B70E8 00000000 */   nop
/* 718EC 800B70EC 0006000D */  break      6
.L800B70F0:
/* 718F0 800B70F0 00E2C821 */  addu       $t9, $a3, $v0
/* 718F4 800B70F4 03251823 */  subu       $v1, $t9, $a1
/* 718F8 800B70F8 10000011 */  b          .L800B7140
/* 718FC 800B70FC 01C05825 */   or        $t3, $t6, $zero
.L800B7100:
/* 71900 800B7100 00E2C021 */  addu       $t8, $a3, $v0
/* 71904 800B7104 03051823 */  subu       $v1, $t8, $a1
/* 71908 800B7108 00077BC0 */  sll        $t7, $a3, 15
/* 7190C 800B710C 01E3001A */  div        $zero, $t7, $v1
/* 71910 800B7110 00005812 */  mflo       $t3
/* 71914 800B7114 316EFFFF */  andi       $t6, $t3, 0xFFFF
/* 71918 800B7118 01C05825 */  or         $t3, $t6, $zero
/* 7191C 800B711C 14600002 */  bnez       $v1, .L800B7128
/* 71920 800B7120 00000000 */   nop
/* 71924 800B7124 0007000D */  break      7
.L800B7128:
/* 71928 800B7128 2401FFFF */  addiu      $at, $zero, -0x1
/* 7192C 800B712C 14610004 */  bne        $v1, $at, .L800B7140
/* 71930 800B7130 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 71934 800B7134 15E10002 */  bne        $t7, $at, .L800B7140
/* 71938 800B7138 00000000 */   nop
/* 7193C 800B713C 0006000D */  break      6
.L800B7140:
/* 71940 800B7140 00806025 */  or         $t4, $a0, $zero
/* 71944 800B7144 3C190800 */  lui        $t9, (0x8000200 >> 16)
/* 71948 800B7148 37390200 */  ori        $t9, $t9, (0x8000200 & 0xFFFF)
/* 7194C 800B714C 24840008 */  addiu      $a0, $a0, 0x8
/* 71950 800B7150 3062FFFF */  andi       $v0, $v1, 0xFFFF
/* 71954 800B7154 3178FFFF */  andi       $t8, $t3, 0xFFFF
/* 71958 800B7158 3C010500 */  lui        $at, (0x5000000 >> 16)
/* 7195C 800B715C AD820004 */  sw         $v0, 0x4($t4)
/* 71960 800B7160 AD990000 */  sw         $t9, 0x0($t4)
/* 71964 800B7164 03017825 */  or         $t7, $t8, $at
/* 71968 800B7168 00806825 */  or         $t5, $a0, $zero
/* 7196C 800B716C ADAF0000 */  sw         $t7, 0x0($t5)
/* 71970 800B7170 8E0E000C */  lw         $t6, 0xC($s0)
/* 71974 800B7174 3C098000 */  lui        $t1, (0x80000090 >> 16)
/* 71978 800B7178 35290090 */  ori        $t1, $t1, (0x80000090 & 0xFFFF)
/* 7197C 800B717C 01C9C821 */  addu       $t9, $t6, $t1
/* 71980 800B7180 ADB90004 */  sw         $t9, 0x4($t5)
/* 71984 800B7184 24840008 */  addiu      $a0, $a0, 0x8
.L800B7188:
/* 71988 800B7188 10A0001B */  beqz       $a1, .L800B71F8
/* 7198C 800B718C 00801825 */   or        $v1, $a0, $zero
/* 71990 800B7190 00801825 */  or         $v1, $a0, $zero
/* 71994 800B7194 3C180800 */  lui        $t8, (0x8000200 >> 16)
/* 71998 800B7198 37180200 */  ori        $t8, $t8, (0x8000200 & 0xFFFF)
/* 7199C 800B719C 24840008 */  addiu      $a0, $a0, 0x8
/* 719A0 800B71A0 310FFFFF */  andi       $t7, $t0, 0xFFFF
/* 719A4 800B71A4 AC6F0004 */  sw         $t7, 0x4($v1)
/* 719A8 800B71A8 AC780000 */  sw         $t8, 0x0($v1)
/* 719AC 800B71AC 00804825 */  or         $t1, $a0, $zero
/* 719B0 800B71B0 3C0E0400 */  lui        $t6, (0x4000000 >> 16)
/* 719B4 800B71B4 AD2E0000 */  sw         $t6, 0x0($t1)
/* 719B8 800B71B8 8E19000C */  lw         $t9, 0xC($s0)
/* 719BC 800B71BC 3C018000 */  lui        $at, (0x800000B0 >> 16)
/* 719C0 800B71C0 342100B0 */  ori        $at, $at, (0x800000B0 & 0xFFFF)
/* 719C4 800B71C4 0321C021 */  addu       $t8, $t9, $at
/* 719C8 800B71C8 AD380004 */  sw         $t8, 0x4($t1)
/* 719CC 800B71CC 24840008 */  addiu      $a0, $a0, 0x8
/* 719D0 800B71D0 00805825 */  or         $t3, $a0, $zero
/* 719D4 800B71D4 24B90200 */  addiu      $t9, $a1, 0x200
/* 719D8 800B71D8 3C0F0A00 */  lui        $t7, (0xA000000 >> 16)
/* 719DC 800B71DC AD6F0000 */  sw         $t7, 0x0($t3)
/* 719E0 800B71E0 0019C400 */  sll        $t8, $t9, 16
/* 719E4 800B71E4 03027825 */  or         $t7, $t8, $v0
/* 719E8 800B71E8 AD6F0004 */  sw         $t7, 0x4($t3)
/* 719EC 800B71EC 24840008 */  addiu      $a0, $a0, 0x8
/* 719F0 800B71F0 1000001C */  b          .L800B7264
/* 719F4 800B71F4 30E5FFFF */   andi      $a1, $a3, 0xFFFF
.L800B71F8:
/* 719F8 800B71F8 3C010200 */  lui        $at, (0x2000000 >> 16)
/* 719FC 800B71FC 0041C825 */  or         $t9, $v0, $at
/* 71A00 800B7200 3C0E0A00 */  lui        $t6, (0xA000000 >> 16)
/* 71A04 800B7204 AC6E0000 */  sw         $t6, 0x0($v1)
/* 71A08 800B7208 AC790004 */  sw         $t9, 0x4($v1)
/* 71A0C 800B720C 24840008 */  addiu      $a0, $a0, 0x8
/* 71A10 800B7210 10000014 */  b          .L800B7264
/* 71A14 800B7214 30E5FFFF */   andi      $a1, $a3, 0xFFFF
/* 71A18 800B7218 00801825 */  or         $v1, $a0, $zero
.L800B721C:
/* 71A1C 800B721C 3C020A00 */  lui        $v0, (0xA000200 >> 16)
/* 71A20 800B7220 24840008 */  addiu      $a0, $a0, 0x8
/* 71A24 800B7224 34420200 */  ori        $v0, $v0, (0xA000200 & 0xFFFF)
/* 71A28 800B7228 00804025 */  or         $t0, $a0, $zero
/* 71A2C 800B722C AC620000 */  sw         $v0, 0x0($v1)
/* 71A30 800B7230 AC650004 */  sw         $a1, 0x4($v1)
/* 71A34 800B7234 24CE0200 */  addiu      $t6, $a2, 0x200
/* 71A38 800B7238 000ECC00 */  sll        $t9, $t6, 16
/* 71A3C 800B723C AD180000 */  sw         $t8, 0x0($t0)
/* 71A40 800B7240 24840008 */  addiu      $a0, $a0, 0x8
/* 71A44 800B7244 0325C025 */  or         $t8, $t9, $a1
/* 71A48 800B7248 00804825 */  or         $t1, $a0, $zero
/* 71A4C 800B724C AD180004 */  sw         $t8, 0x4($t0)
/* 71A50 800B7250 3C0F0200 */  lui        $t7, (0x2000200 >> 16)
/* 71A54 800B7254 35EF0200 */  ori        $t7, $t7, (0x2000200 & 0xFFFF)
/* 71A58 800B7258 AD2F0000 */  sw         $t7, 0x0($t1)
/* 71A5C 800B725C AD260004 */  sw         $a2, 0x4($t1)
/* 71A60 800B7260 24840008 */  addiu      $a0, $a0, 0x8
.L800B7264:
/* 71A64 800B7264 10C00012 */  beqz       $a2, .L800B72B0
/* 71A68 800B7268 00801025 */   or        $v0, $a0, $zero
/* 71A6C 800B726C 3C0E0800 */  lui        $t6, (0x8000000 >> 16)
/* 71A70 800B7270 AC4E0000 */  sw         $t6, 0x0($v0)
/* 71A74 800B7274 24F80200 */  addiu      $t8, $a3, 0x200
/* 71A78 800B7278 00187C00 */  sll        $t7, $t8, 16
/* 71A7C 800B727C 30CEFFFF */  andi       $t6, $a2, 0xFFFF
/* 71A80 800B7280 01EEC825 */  or         $t9, $t7, $t6
/* 71A84 800B7284 24840008 */  addiu      $a0, $a0, 0x8
/* 71A88 800B7288 AC590004 */  sw         $t9, 0x4($v0)
/* 71A8C 800B728C 00801825 */  or         $v1, $a0, $zero
/* 71A90 800B7290 3C180600 */  lui        $t8, (0x6000000 >> 16)
/* 71A94 800B7294 AC780000 */  sw         $t8, 0x0($v1)
/* 71A98 800B7298 8E0F000C */  lw         $t7, 0xC($s0)
/* 71A9C 800B729C 3C018000 */  lui        $at, (0x800000B0 >> 16)
/* 71AA0 800B72A0 342100B0 */  ori        $at, $at, (0x800000B0 & 0xFFFF)
/* 71AA4 800B72A4 01E17021 */  addu       $t6, $t7, $at
/* 71AA8 800B72A8 AC6E0004 */  sw         $t6, 0x4($v1)
/* 71AAC 800B72AC 24840008 */  addiu      $a0, $a0, 0x8
.L800B72B0:
/* 71AB0 800B72B0 24860008 */  addiu      $a2, $a0, 0x8
/* 71AB4 800B72B4 3C190800 */  lui        $t9, (0x8000000 >> 16)
/* 71AB8 800B72B8 AC990000 */  sw         $t9, 0x0($a0)
/* 71ABC 800B72BC AC850004 */  sw         $a1, 0x4($a0)
/* 71AC0 800B72C0 3C180C00 */  lui        $t8, (0xC007FFF >> 16)
/* 71AC4 800B72C4 314FFFFF */  andi       $t7, $t2, 0xFFFF
/* 71AC8 800B72C8 3C010200 */  lui        $at, (0x2000000 >> 16)
/* 71ACC 800B72CC 01E17025 */  or         $t6, $t7, $at
/* 71AD0 800B72D0 37187FFF */  ori        $t8, $t8, (0xC007FFF & 0xFFFF)
/* 71AD4 800B72D4 ACD80000 */  sw         $t8, 0x0($a2)
/* 71AD8 800B72D8 ACCE0004 */  sw         $t6, 0x4($a2)
/* 71ADC 800B72DC 24C20008 */  addiu      $v0, $a2, 0x8
.L800B72E0:
/* 71AE0 800B72E0 8FB00004 */  lw         $s0, 0x4($sp)
/* 71AE4 800B72E4 03E00008 */  jr         $ra
/* 71AE8 800B72E8 27BD0028 */   addiu     $sp, $sp, 0x28
/* 71AEC 800B72EC 00000000 */  nop
