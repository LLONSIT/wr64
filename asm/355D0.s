.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8007ADD0
/* 355D0 8007ADD0 28810041 */  slti       $at, $a0, 0x41
/* 355D4 8007ADD4 14200005 */  bnez       $at, .L8007ADEC
/* 355D8 8007ADD8 2881005B */   slti      $at, $a0, 0x5B
/* 355DC 8007ADDC 50200004 */  beql       $at, $zero, .L8007ADF0
/* 355E0 8007ADE0 24010020 */   addiu     $at, $zero, 0x20
/* 355E4 8007ADE4 03E00008 */  jr         $ra
/* 355E8 8007ADE8 2482FFC0 */   addiu     $v0, $a0, -0x40
.L8007ADEC:
/* 355EC 8007ADEC 24010020 */  addiu      $at, $zero, 0x20
.L8007ADF0:
/* 355F0 8007ADF0 54810004 */  bnel       $a0, $at, .L8007AE04
/* 355F4 8007ADF4 2401002D */   addiu     $at, $zero, 0x2D
/* 355F8 8007ADF8 03E00008 */  jr         $ra
/* 355FC 8007ADFC 2402001B */   addiu     $v0, $zero, 0x1B
/* 35600 8007AE00 2401002D */  addiu      $at, $zero, 0x2D
.L8007AE04:
/* 35604 8007AE04 54810004 */  bnel       $a0, $at, .L8007AE18
/* 35608 8007AE08 2401002E */   addiu     $at, $zero, 0x2E
/* 3560C 8007AE0C 03E00008 */  jr         $ra
/* 35610 8007AE10 2402001C */   addiu     $v0, $zero, 0x1C
/* 35614 8007AE14 2401002E */  addiu      $at, $zero, 0x2E
.L8007AE18:
/* 35618 8007AE18 14810003 */  bne        $a0, $at, .L8007AE28
/* 3561C 8007AE1C 00001025 */   or        $v0, $zero, $zero
/* 35620 8007AE20 03E00008 */  jr         $ra
/* 35624 8007AE24 2402001D */   addiu     $v0, $zero, 0x1D
.L8007AE28:
/* 35628 8007AE28 03E00008 */  jr         $ra
/* 3562C 8007AE2C 00000000 */   nop

glabel func_8007AE30
/* 35630 8007AE30 18800005 */  blez       $a0, .L8007AE48
/* 35634 8007AE34 2881001B */   slti      $at, $a0, 0x1B
/* 35638 8007AE38 50200004 */  beql       $at, $zero, .L8007AE4C
/* 3563C 8007AE3C 2401001B */   addiu     $at, $zero, 0x1B
/* 35640 8007AE40 03E00008 */  jr         $ra
/* 35644 8007AE44 24820040 */   addiu     $v0, $a0, 0x40
.L8007AE48:
/* 35648 8007AE48 2401001B */  addiu      $at, $zero, 0x1B
.L8007AE4C:
/* 3564C 8007AE4C 54810004 */  bnel       $a0, $at, .L8007AE60
/* 35650 8007AE50 2401001C */   addiu     $at, $zero, 0x1C
/* 35654 8007AE54 03E00008 */  jr         $ra
/* 35658 8007AE58 24020020 */   addiu     $v0, $zero, 0x20
/* 3565C 8007AE5C 2401001C */  addiu      $at, $zero, 0x1C
.L8007AE60:
/* 35660 8007AE60 54810004 */  bnel       $a0, $at, .L8007AE74
/* 35664 8007AE64 2401001D */   addiu     $at, $zero, 0x1D
/* 35668 8007AE68 03E00008 */  jr         $ra
/* 3566C 8007AE6C 2402002D */   addiu     $v0, $zero, 0x2D
/* 35670 8007AE70 2401001D */  addiu      $at, $zero, 0x1D
.L8007AE74:
/* 35674 8007AE74 14810003 */  bne        $a0, $at, .L8007AE84
/* 35678 8007AE78 00001025 */   or        $v0, $zero, $zero
/* 3567C 8007AE7C 03E00008 */  jr         $ra
/* 35680 8007AE80 2402002E */   addiu     $v0, $zero, 0x2E
.L8007AE84:
/* 35684 8007AE84 03E00008 */  jr         $ra
/* 35688 8007AE88 00000000 */   nop

glabel func_8007AE8C
/* 3568C 8007AE8C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 35690 8007AE90 AFBF0014 */  sw         $ra, 0x14($sp)
/* 35694 8007AE94 AFA40020 */  sw         $a0, 0x20($sp)
/* 35698 8007AE98 AFA50024 */  sw         $a1, 0x24($sp)
/* 3569C 8007AE9C 0C01EB74 */  jal        func_8007ADD0
/* 356A0 8007AEA0 80A40000 */   lb        $a0, 0x0($a1)
/* 356A4 8007AEA4 8FAF0024 */  lw         $t7, 0x24($sp)
/* 356A8 8007AEA8 AFA2001C */  sw         $v0, 0x1C($sp)
/* 356AC 8007AEAC 0C01EB74 */  jal        func_8007ADD0
/* 356B0 8007AEB0 81E40001 */   lb        $a0, 0x1($t7)
/* 356B4 8007AEB4 8FB80024 */  lw         $t8, 0x24($sp)
/* 356B8 8007AEB8 AFA20018 */  sw         $v0, 0x18($sp)
/* 356BC 8007AEBC 0C01EB74 */  jal        func_8007ADD0
/* 356C0 8007AEC0 83040002 */   lb        $a0, 0x2($t8)
/* 356C4 8007AEC4 8FB9001C */  lw         $t9, 0x1C($sp)
/* 356C8 8007AEC8 8FA90018 */  lw         $t1, 0x18($sp)
/* 356CC 8007AECC 8FA40020 */  lw         $a0, 0x20($sp)
/* 356D0 8007AED0 00194280 */  sll        $t0, $t9, 10
/* 356D4 8007AED4 00095140 */  sll        $t2, $t1, 5
/* 356D8 8007AED8 010A5821 */  addu       $t3, $t0, $t2
/* 356DC 8007AEDC 01626821 */  addu       $t5, $t3, $v0
/* 356E0 8007AEE0 000D6203 */  sra        $t4, $t5, 8
/* 356E4 8007AEE4 A08C0000 */  sb         $t4, 0x0($a0)
/* 356E8 8007AEE8 A08D0001 */  sb         $t5, 0x1($a0)
/* 356EC 8007AEEC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 356F0 8007AEF0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 356F4 8007AEF4 03E00008 */  jr         $ra
/* 356F8 8007AEF8 00000000 */   nop

glabel func_8007AEFC
/* 356FC 8007AEFC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 35700 8007AF00 AFBF0014 */  sw         $ra, 0x14($sp)
/* 35704 8007AF04 AFA40020 */  sw         $a0, 0x20($sp)
/* 35708 8007AF08 90B80000 */  lbu        $t8, 0x0($a1)
/* 3570C 8007AF0C 90AF0001 */  lbu        $t7, 0x1($a1)
/* 35710 8007AF10 3319007F */  andi       $t9, $t8, 0x7F
/* 35714 8007AF14 00194200 */  sll        $t0, $t9, 8
/* 35718 8007AF18 01E81021 */  addu       $v0, $t7, $t0
/* 3571C 8007AF1C 00022283 */  sra        $a0, $v0, 10
/* 35720 8007AF20 3089001F */  andi       $t1, $a0, 0x1F
/* 35724 8007AF24 01202025 */  or         $a0, $t1, $zero
/* 35728 8007AF28 0C01EB8C */  jal        func_8007AE30
/* 3572C 8007AF2C AFA2001C */   sw        $v0, 0x1C($sp)
/* 35730 8007AF30 8FAA0020 */  lw         $t2, 0x20($sp)
/* 35734 8007AF34 A1420000 */  sb         $v0, 0x0($t2)
/* 35738 8007AF38 8FA4001C */  lw         $a0, 0x1C($sp)
/* 3573C 8007AF3C 00045943 */  sra        $t3, $a0, 5
/* 35740 8007AF40 0C01EB8C */  jal        func_8007AE30
/* 35744 8007AF44 3164001F */   andi      $a0, $t3, 0x1F
/* 35748 8007AF48 8FAD0020 */  lw         $t5, 0x20($sp)
/* 3574C 8007AF4C A1A20001 */  sb         $v0, 0x1($t5)
/* 35750 8007AF50 8FA4001C */  lw         $a0, 0x1C($sp)
/* 35754 8007AF54 308E001F */  andi       $t6, $a0, 0x1F
/* 35758 8007AF58 0C01EB8C */  jal        func_8007AE30
/* 3575C 8007AF5C 01C02025 */   or        $a0, $t6, $zero
/* 35760 8007AF60 8FB80020 */  lw         $t8, 0x20($sp)
/* 35764 8007AF64 A3020002 */  sb         $v0, 0x2($t8)
/* 35768 8007AF68 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3576C 8007AF6C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 35770 8007AF70 03E00008 */  jr         $ra
/* 35774 8007AF74 00000000 */   nop

glabel func_8007AF78
/* 35778 8007AF78 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3577C 8007AF7C AFBF0014 */  sw         $ra, 0x14($sp)
/* 35780 8007AF80 8C8B0000 */  lw         $t3, 0x0($a0)
/* 35784 8007AF84 90980007 */  lbu        $t8, 0x7($a0)
/* 35788 8007AF88 00803825 */  or         $a3, $a0, $zero
/* 3578C 8007AF8C 000B7C03 */  sra        $t7, $t3, 16
/* 35790 8007AF90 0018C940 */  sll        $t9, $t8, 5
/* 35794 8007AF94 01F94021 */  addu       $t0, $t7, $t9
/* 35798 8007AF98 000B5203 */  sra        $t2, $t3, 8
/* 3579C 8007AF9C A0A80000 */  sb         $t0, 0x0($a1)
/* 357A0 8007AFA0 A0AA0001 */  sb         $t2, 0x1($a1)
/* 357A4 8007AFA4 A0AB0002 */  sb         $t3, 0x2($a1)
/* 357A8 8007AFA8 00A03025 */  or         $a2, $a1, $zero
/* 357AC 8007AFAC 24A40003 */  addiu      $a0, $a1, 0x3
/* 357B0 8007AFB0 24E50010 */  addiu      $a1, $a3, 0x10
/* 357B4 8007AFB4 AFA6001C */  sw         $a2, 0x1C($sp)
/* 357B8 8007AFB8 0C01EBA3 */  jal        func_8007AE8C
/* 357BC 8007AFBC AFA70018 */   sw        $a3, 0x18($sp)
/* 357C0 8007AFC0 8FA70018 */  lw         $a3, 0x18($sp)
/* 357C4 8007AFC4 8FA6001C */  lw         $a2, 0x1C($sp)
/* 357C8 8007AFC8 90ED000B */  lbu        $t5, 0xB($a3)
/* 357CC 8007AFCC 90CC0003 */  lbu        $t4, 0x3($a2)
/* 357D0 8007AFD0 000D71C0 */  sll        $t6, $t5, 7
/* 357D4 8007AFD4 018EC026 */  xor        $t8, $t4, $t6
/* 357D8 8007AFD8 A0D80003 */  sb         $t8, 0x3($a2)
/* 357DC 8007AFDC 8CEF000C */  lw         $t7, 0xC($a3)
/* 357E0 8007AFE0 A0CF0005 */  sb         $t7, 0x5($a2)
/* 357E4 8007AFE4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 357E8 8007AFE8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 357EC 8007AFEC 03E00008 */  jr         $ra
/* 357F0 8007AFF0 00000000 */   nop

glabel func_8007AFF4
/* 357F4 8007AFF4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 357F8 8007AFF8 AFBF001C */  sw         $ra, 0x1C($sp)
/* 357FC 8007AFFC AFB00018 */  sw         $s0, 0x18($sp)
/* 35800 8007B000 90890000 */  lbu        $t1, 0x0($a0)
/* 35804 8007B004 90870001 */  lbu        $a3, 0x1($a0)
/* 35808 8007B008 90880002 */  lbu        $t0, 0x2($a0)
/* 3580C 8007B00C 312E001F */  andi       $t6, $t1, 0x1F
/* 35810 8007B010 000E7C00 */  sll        $t7, $t6, 16
/* 35814 8007B014 0007C200 */  sll        $t8, $a3, 8
/* 35818 8007B018 01F8C821 */  addu       $t9, $t7, $t8
/* 3581C 8007B01C 03281821 */  addu       $v1, $t9, $t0
/* 35820 8007B020 00A08025 */  or         $s0, $a1, $zero
/* 35824 8007B024 04610002 */  bgez       $v1, .L8007B030
/* 35828 8007B028 00803025 */   or        $a2, $a0, $zero
/* 3582C 8007B02C 00001825 */  or         $v1, $zero, $zero
.L8007B030:
/* 35830 8007B030 3C010009 */  lui        $at, (0x927C0 >> 16)
/* 35834 8007B034 342127C0 */  ori        $at, $at, (0x927C0 & 0xFFFF)
/* 35838 8007B038 0061082A */  slt        $at, $v1, $at
/* 3583C 8007B03C 14200003 */  bnez       $at, .L8007B04C
/* 35840 8007B040 00095142 */   srl       $t2, $t1, 5
/* 35844 8007B044 3C030009 */  lui        $v1, (0x927BF >> 16)
/* 35848 8007B048 346327BF */  ori        $v1, $v1, (0x927BF & 0xFFFF)
.L8007B04C:
/* 3584C 8007B04C 314B0007 */  andi       $t3, $t2, 0x7
/* 35850 8007B050 AE030000 */  sw         $v1, 0x0($s0)
/* 35854 8007B054 AE0B0004 */  sw         $t3, 0x4($s0)
/* 35858 8007B058 AFA60020 */  sw         $a2, 0x20($sp)
/* 3585C 8007B05C 26040010 */  addiu      $a0, $s0, 0x10
/* 35860 8007B060 0C01EBBF */  jal        func_8007AEFC
/* 35864 8007B064 24C50003 */   addiu     $a1, $a2, 0x3
/* 35868 8007B068 8FA60020 */  lw         $a2, 0x20($sp)
/* 3586C 8007B06C A2000013 */  sb         $zero, 0x13($s0)
/* 35870 8007B070 90CC0003 */  lbu        $t4, 0x3($a2)
/* 35874 8007B074 000C69C3 */  sra        $t5, $t4, 7
/* 35878 8007B078 31AE0001 */  andi       $t6, $t5, 0x1
/* 3587C 8007B07C AE0E0008 */  sw         $t6, 0x8($s0)
/* 35880 8007B080 90CF0005 */  lbu        $t7, 0x5($a2)
/* 35884 8007B084 AE0F000C */  sw         $t7, 0xC($s0)
/* 35888 8007B088 8FBF001C */  lw         $ra, 0x1C($sp)
/* 3588C 8007B08C 8FB00018 */  lw         $s0, 0x18($sp)
/* 35890 8007B090 27BD0020 */  addiu      $sp, $sp, 0x20
/* 35894 8007B094 03E00008 */  jr         $ra
/* 35898 8007B098 00000000 */   nop

glabel func_8007B09C
/* 3589C 8007B09C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 358A0 8007B0A0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 358A4 8007B0A4 8C8B0000 */  lw         $t3, 0x0($a0)
/* 358A8 8007B0A8 90980007 */  lbu        $t8, 0x7($a0)
/* 358AC 8007B0AC 00803825 */  or         $a3, $a0, $zero
/* 358B0 8007B0B0 000B7C03 */  sra        $t7, $t3, 16
/* 358B4 8007B0B4 0018C940 */  sll        $t9, $t8, 5
/* 358B8 8007B0B8 01F94021 */  addu       $t0, $t7, $t9
/* 358BC 8007B0BC 000B5203 */  sra        $t2, $t3, 8
/* 358C0 8007B0C0 A0A80000 */  sb         $t0, 0x0($a1)
/* 358C4 8007B0C4 A0AA0001 */  sb         $t2, 0x1($a1)
/* 358C8 8007B0C8 A0AB0002 */  sb         $t3, 0x2($a1)
/* 358CC 8007B0CC 00A03025 */  or         $a2, $a1, $zero
/* 358D0 8007B0D0 24A40003 */  addiu      $a0, $a1, 0x3
/* 358D4 8007B0D4 24E50010 */  addiu      $a1, $a3, 0x10
/* 358D8 8007B0D8 AFA6001C */  sw         $a2, 0x1C($sp)
/* 358DC 8007B0DC 0C01EBA3 */  jal        func_8007AE8C
/* 358E0 8007B0E0 AFA70018 */   sw        $a3, 0x18($sp)
/* 358E4 8007B0E4 8FA70018 */  lw         $a3, 0x18($sp)
/* 358E8 8007B0E8 8FA6001C */  lw         $a2, 0x1C($sp)
/* 358EC 8007B0EC 90ED000B */  lbu        $t5, 0xB($a3)
/* 358F0 8007B0F0 90CC0003 */  lbu        $t4, 0x3($a2)
/* 358F4 8007B0F4 000D71C0 */  sll        $t6, $t5, 7
/* 358F8 8007B0F8 018EC026 */  xor        $t8, $t4, $t6
/* 358FC 8007B0FC A0D80003 */  sb         $t8, 0x3($a2)
/* 35900 8007B100 8FBF0014 */  lw         $ra, 0x14($sp)
/* 35904 8007B104 27BD0018 */  addiu      $sp, $sp, 0x18
/* 35908 8007B108 03E00008 */  jr         $ra
/* 3590C 8007B10C 00000000 */   nop

glabel func_8007B110
/* 35910 8007B110 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 35914 8007B114 AFBF001C */  sw         $ra, 0x1C($sp)
/* 35918 8007B118 AFB10018 */  sw         $s1, 0x18($sp)
/* 3591C 8007B11C AFB00014 */  sw         $s0, 0x14($sp)
/* 35920 8007B120 90880000 */  lbu        $t0, 0x0($a0)
/* 35924 8007B124 90860001 */  lbu        $a2, 0x1($a0)
/* 35928 8007B128 90870002 */  lbu        $a3, 0x2($a0)
/* 3592C 8007B12C 310E001F */  andi       $t6, $t0, 0x1F
/* 35930 8007B130 000E7C00 */  sll        $t7, $t6, 16
/* 35934 8007B134 0006C200 */  sll        $t8, $a2, 8
/* 35938 8007B138 01F8C821 */  addu       $t9, $t7, $t8
/* 3593C 8007B13C 03271821 */  addu       $v1, $t9, $a3
/* 35940 8007B140 00808025 */  or         $s0, $a0, $zero
/* 35944 8007B144 04610002 */  bgez       $v1, .L8007B150
/* 35948 8007B148 00A08825 */   or        $s1, $a1, $zero
/* 3594C 8007B14C 00001825 */  or         $v1, $zero, $zero
.L8007B150:
/* 35950 8007B150 3C010009 */  lui        $at, (0x927C0 >> 16)
/* 35954 8007B154 342127C0 */  ori        $at, $at, (0x927C0 & 0xFFFF)
/* 35958 8007B158 0061082A */  slt        $at, $v1, $at
/* 3595C 8007B15C 14200003 */  bnez       $at, .L8007B16C
/* 35960 8007B160 00084942 */   srl       $t1, $t0, 5
/* 35964 8007B164 3C030009 */  lui        $v1, (0x927BF >> 16)
/* 35968 8007B168 346327BF */  ori        $v1, $v1, (0x927BF & 0xFFFF)
.L8007B16C:
/* 3596C 8007B16C 312A0007 */  andi       $t2, $t1, 0x7
/* 35970 8007B170 AE230000 */  sw         $v1, 0x0($s1)
/* 35974 8007B174 AE2A0004 */  sw         $t2, 0x4($s1)
/* 35978 8007B178 26240010 */  addiu      $a0, $s1, 0x10
/* 3597C 8007B17C 0C01EBBF */  jal        func_8007AEFC
/* 35980 8007B180 26050003 */   addiu     $a1, $s0, 0x3
/* 35984 8007B184 A2200013 */  sb         $zero, 0x13($s1)
/* 35988 8007B188 920B0003 */  lbu        $t3, 0x3($s0)
/* 3598C 8007B18C 000B61C3 */  sra        $t4, $t3, 7
/* 35990 8007B190 318D0001 */  andi       $t5, $t4, 0x1
/* 35994 8007B194 AE2D0008 */  sw         $t5, 0x8($s1)
/* 35998 8007B198 8FBF001C */  lw         $ra, 0x1C($sp)
/* 3599C 8007B19C 8FB10018 */  lw         $s1, 0x18($sp)
/* 359A0 8007B1A0 8FB00014 */  lw         $s0, 0x14($sp)
/* 359A4 8007B1A4 03E00008 */  jr         $ra
/* 359A8 8007B1A8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8007B1AC
/* 359AC 8007B1AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 359B0 8007B1B0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 359B4 8007B1B4 8C8B0000 */  lw         $t3, 0x0($a0)
/* 359B8 8007B1B8 90980007 */  lbu        $t8, 0x7($a0)
/* 359BC 8007B1BC 00803825 */  or         $a3, $a0, $zero
/* 359C0 8007B1C0 000B7C03 */  sra        $t7, $t3, 16
/* 359C4 8007B1C4 0018C940 */  sll        $t9, $t8, 5
/* 359C8 8007B1C8 01F94021 */  addu       $t0, $t7, $t9
/* 359CC 8007B1CC 000B5203 */  sra        $t2, $t3, 8
/* 359D0 8007B1D0 A0A80000 */  sb         $t0, 0x0($a1)
/* 359D4 8007B1D4 A0AA0001 */  sb         $t2, 0x1($a1)
/* 359D8 8007B1D8 A0AB0002 */  sb         $t3, 0x2($a1)
/* 359DC 8007B1DC 00A03025 */  or         $a2, $a1, $zero
/* 359E0 8007B1E0 24A40003 */  addiu      $a0, $a1, 0x3
/* 359E4 8007B1E4 24E5000C */  addiu      $a1, $a3, 0xC
/* 359E8 8007B1E8 AFA6001C */  sw         $a2, 0x1C($sp)
/* 359EC 8007B1EC 0C01EBA3 */  jal        func_8007AE8C
/* 359F0 8007B1F0 AFA70018 */   sw        $a3, 0x18($sp)
/* 359F4 8007B1F4 8FA70018 */  lw         $a3, 0x18($sp)
/* 359F8 8007B1F8 8FA6001C */  lw         $a2, 0x1C($sp)
/* 359FC 8007B1FC 90ED000B */  lbu        $t5, 0xB($a3)
/* 35A00 8007B200 90CC0003 */  lbu        $t4, 0x3($a2)
/* 35A04 8007B204 000D71C0 */  sll        $t6, $t5, 7
/* 35A08 8007B208 018EC026 */  xor        $t8, $t4, $t6
/* 35A0C 8007B20C A0D80003 */  sb         $t8, 0x3($a2)
/* 35A10 8007B210 8FBF0014 */  lw         $ra, 0x14($sp)
/* 35A14 8007B214 27BD0018 */  addiu      $sp, $sp, 0x18
/* 35A18 8007B218 03E00008 */  jr         $ra
/* 35A1C 8007B21C 00000000 */   nop

glabel func_8007B220
/* 35A20 8007B220 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 35A24 8007B224 AFBF001C */  sw         $ra, 0x1C($sp)
/* 35A28 8007B228 AFB10018 */  sw         $s1, 0x18($sp)
/* 35A2C 8007B22C AFB00014 */  sw         $s0, 0x14($sp)
/* 35A30 8007B230 90880000 */  lbu        $t0, 0x0($a0)
/* 35A34 8007B234 90860001 */  lbu        $a2, 0x1($a0)
/* 35A38 8007B238 90870002 */  lbu        $a3, 0x2($a0)
/* 35A3C 8007B23C 310E001F */  andi       $t6, $t0, 0x1F
/* 35A40 8007B240 000E7C00 */  sll        $t7, $t6, 16
/* 35A44 8007B244 0006C200 */  sll        $t8, $a2, 8
/* 35A48 8007B248 01F8C821 */  addu       $t9, $t7, $t8
/* 35A4C 8007B24C 03271821 */  addu       $v1, $t9, $a3
/* 35A50 8007B250 00808025 */  or         $s0, $a0, $zero
/* 35A54 8007B254 04610002 */  bgez       $v1, .L8007B260
/* 35A58 8007B258 00A08825 */   or        $s1, $a1, $zero
/* 35A5C 8007B25C 00001825 */  or         $v1, $zero, $zero
.L8007B260:
/* 35A60 8007B260 3C010001 */  lui        $at, (0x186A0 >> 16)
/* 35A64 8007B264 342186A0 */  ori        $at, $at, (0x186A0 & 0xFFFF)
/* 35A68 8007B268 0061082A */  slt        $at, $v1, $at
/* 35A6C 8007B26C 14200003 */  bnez       $at, .L8007B27C
/* 35A70 8007B270 00084942 */   srl       $t1, $t0, 5
/* 35A74 8007B274 3C030001 */  lui        $v1, (0x1869F >> 16)
/* 35A78 8007B278 3463869F */  ori        $v1, $v1, (0x1869F & 0xFFFF)
.L8007B27C:
/* 35A7C 8007B27C 312A0007 */  andi       $t2, $t1, 0x7
/* 35A80 8007B280 AE230000 */  sw         $v1, 0x0($s1)
/* 35A84 8007B284 AE2A0004 */  sw         $t2, 0x4($s1)
/* 35A88 8007B288 2624000C */  addiu      $a0, $s1, 0xC
/* 35A8C 8007B28C 0C01EBBF */  jal        func_8007AEFC
/* 35A90 8007B290 26050003 */   addiu     $a1, $s0, 0x3
/* 35A94 8007B294 A220000F */  sb         $zero, 0xF($s1)
/* 35A98 8007B298 920B0003 */  lbu        $t3, 0x3($s0)
/* 35A9C 8007B29C 000B61C3 */  sra        $t4, $t3, 7
/* 35AA0 8007B2A0 318D0001 */  andi       $t5, $t4, 0x1
/* 35AA4 8007B2A4 AE2D0008 */  sw         $t5, 0x8($s1)
/* 35AA8 8007B2A8 8FBF001C */  lw         $ra, 0x1C($sp)
/* 35AAC 8007B2AC 8FB10018 */  lw         $s1, 0x18($sp)
/* 35AB0 8007B2B0 8FB00014 */  lw         $s0, 0x14($sp)
/* 35AB4 8007B2B4 03E00008 */  jr         $ra
/* 35AB8 8007B2B8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8007B2BC
/* 35ABC 8007B2BC 04830004 */  bgezl      $a0, .L8007B2D0
/* 35AC0 8007B2C0 00047403 */   sra       $t6, $a0, 16
/* 35AC4 8007B2C4 3C0400FF */  lui        $a0, (0xFFFFFF >> 16)
/* 35AC8 8007B2C8 3484FFFF */  ori        $a0, $a0, (0xFFFFFF & 0xFFFF)
/* 35ACC 8007B2CC 00047403 */  sra        $t6, $a0, 16
.L8007B2D0:
/* 35AD0 8007B2D0 0004C203 */  sra        $t8, $a0, 8
/* 35AD4 8007B2D4 A0AE0000 */  sb         $t6, 0x0($a1)
/* 35AD8 8007B2D8 A0B80001 */  sb         $t8, 0x1($a1)
/* 35ADC 8007B2DC 03E00008 */  jr         $ra
/* 35AE0 8007B2E0 A0A40002 */   sb        $a0, 0x2($a1)

glabel func_8007B2E4
/* 35AE4 8007B2E4 90820000 */  lbu        $v0, 0x0($a0)
/* 35AE8 8007B2E8 90830001 */  lbu        $v1, 0x1($a0)
/* 35AEC 8007B2EC 90850002 */  lbu        $a1, 0x2($a0)
/* 35AF0 8007B2F0 00027400 */  sll        $t6, $v0, 16
/* 35AF4 8007B2F4 00037A00 */  sll        $t7, $v1, 8
/* 35AF8 8007B2F8 01CFC021 */  addu       $t8, $t6, $t7
/* 35AFC 8007B2FC 3C0100FF */  lui        $at, (0xFFFFFF >> 16)
/* 35B00 8007B300 3421FFFF */  ori        $at, $at, (0xFFFFFF & 0xFFFF)
/* 35B04 8007B304 03053021 */  addu       $a2, $t8, $a1
/* 35B08 8007B308 14C10002 */  bne        $a2, $at, .L8007B314
/* 35B0C 8007B30C 00000000 */   nop
/* 35B10 8007B310 2406FFFF */  addiu      $a2, $zero, -0x1
.L8007B314:
/* 35B14 8007B314 03E00008 */  jr         $ra
/* 35B18 8007B318 00C01025 */   or        $v0, $a2, $zero

glabel func_8007B31C
/* 35B1C 8007B31C 3C0E801D */  lui        $t6, %hi(D_801CB280)
/* 35B20 8007B320 81CEB280 */  lb         $t6, %lo(D_801CB280)($t6)
/* 35B24 8007B324 3C0F801D */  lui        $t7, %hi(D_801CB288)
/* 35B28 8007B328 8DEFB288 */  lw         $t7, %lo(D_801CB288)($t7)
/* 35B2C 8007B32C 3C01801B */  lui        $at, %hi(D_801AEA24)
/* 35B30 8007B330 3C18801D */  lui        $t8, %hi(D_801CB28C)
/* 35B34 8007B334 A02EEA24 */  sb         $t6, %lo(D_801AEA24)($at)
/* 35B38 8007B338 8F18B28C */  lw         $t8, %lo(D_801CB28C)($t8)
/* 35B3C 8007B33C 3C01801B */  lui        $at, %hi(D_801AEA20)
/* 35B40 8007B340 3C19801D */  lui        $t9, %hi(D_801CB290)
/* 35B44 8007B344 A02FEA20 */  sb         $t7, %lo(D_801AEA20)($at)
/* 35B48 8007B348 8F39B290 */  lw         $t9, %lo(D_801CB290)($t9)
/* 35B4C 8007B34C 3C01801B */  lui        $at, %hi(D_801AEA21)
/* 35B50 8007B350 A038EA21 */  sb         $t8, %lo(D_801AEA21)($at)
/* 35B54 8007B354 3C01801B */  lui        $at, %hi(D_801AEA22)
/* 35B58 8007B358 3C08801D */  lui        $t0, %hi(D_801CB294)
/* 35B5C 8007B35C 8D08B294 */  lw         $t0, %lo(D_801CB294)($t0)
/* 35B60 8007B360 A039EA22 */  sb         $t9, %lo(D_801AEA22)($at)
/* 35B64 8007B364 3C01801B */  lui        $at, %hi(D_801AEA23)
/* 35B68 8007B368 03E00008 */  jr         $ra
/* 35B6C 8007B36C A028EA23 */   sb        $t0, %lo(D_801AEA23)($at)

glabel func_8007B370
/* 35B70 8007B370 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 35B74 8007B374 AFB60030 */  sw         $s6, 0x30($sp)
/* 35B78 8007B378 AFB30024 */  sw         $s3, 0x24($sp)
/* 35B7C 8007B37C 0080B025 */  or         $s6, $a0, $zero
/* 35B80 8007B380 AFBF003C */  sw         $ra, 0x3C($sp)
/* 35B84 8007B384 AFBE0038 */  sw         $fp, 0x38($sp)
/* 35B88 8007B388 AFB70034 */  sw         $s7, 0x34($sp)
/* 35B8C 8007B38C AFB5002C */  sw         $s5, 0x2C($sp)
/* 35B90 8007B390 AFB40028 */  sw         $s4, 0x28($sp)
/* 35B94 8007B394 AFB20020 */  sw         $s2, 0x20($sp)
/* 35B98 8007B398 AFB1001C */  sw         $s1, 0x1C($sp)
/* 35B9C 8007B39C AFB00018 */  sw         $s0, 0x18($sp)
/* 35BA0 8007B3A0 00801025 */  or         $v0, $a0, $zero
/* 35BA4 8007B3A4 00009825 */  or         $s3, $zero, $zero
/* 35BA8 8007B3A8 240300FF */  addiu      $v1, $zero, 0xFF
.L8007B3AC:
/* 35BAC 8007B3AC 26730001 */  addiu      $s3, $s3, 0x1
/* 35BB0 8007B3B0 2A610200 */  slti       $at, $s3, 0x200
/* 35BB4 8007B3B4 A0430000 */  sb         $v1, 0x0($v0)
/* 35BB8 8007B3B8 1420FFFC */  bnez       $at, .L8007B3AC
/* 35BBC 8007B3BC 24420001 */   addiu     $v0, $v0, 0x1
/* 35BC0 8007B3C0 3C02800E */  lui        $v0, %hi(D_800D8268)
/* 35BC4 8007B3C4 3C04800E */  lui        $a0, %hi(D_800D826A)
/* 35BC8 8007B3C8 2484826A */  addiu      $a0, $a0, %lo(D_800D826A)
/* 35BCC 8007B3CC 24428268 */  addiu      $v0, $v0, %lo(D_800D8268)
/* 35BD0 8007B3D0 02C01825 */  or         $v1, $s6, $zero
.L8007B3D4:
/* 35BD4 8007B3D4 904E0000 */  lbu        $t6, 0x0($v0)
/* 35BD8 8007B3D8 24420001 */  addiu      $v0, $v0, 0x1
/* 35BDC 8007B3DC 0044082B */  sltu       $at, $v0, $a0
/* 35BE0 8007B3E0 24630001 */  addiu      $v1, $v1, 0x1
/* 35BE4 8007B3E4 1420FFFB */  bnez       $at, .L8007B3D4
/* 35BE8 8007B3E8 A06EFFFF */   sb        $t6, -0x1($v1)
/* 35BEC 8007B3EC 3C0F800E */  lui        $t7, %hi(D_800D82F8)
/* 35BF0 8007B3F0 25F582F8 */  addiu      $s5, $t7, %lo(D_800D82F8)
/* 35BF4 8007B3F4 02A0B825 */  or         $s7, $s5, $zero
/* 35BF8 8007B3F8 02C0F025 */  or         $fp, $s6, $zero
/* 35BFC 8007B3FC AFB60044 */  sw         $s6, 0x44($sp)
/* 35C00 8007B400 24140002 */  addiu      $s4, $zero, 0x2
.L8007B404:
/* 35C04 8007B404 02E08825 */  or         $s1, $s7, $zero
/* 35C08 8007B408 00009025 */  or         $s2, $zero, $zero
/* 35C0C 8007B40C 27D30060 */  addiu      $s3, $fp, 0x60
.L8007B410:
/* 35C10 8007B410 02202025 */  or         $a0, $s1, $zero
/* 35C14 8007B414 0C01EBDE */  jal        func_8007AF78
/* 35C18 8007B418 02602825 */   or        $a1, $s3, $zero
/* 35C1C 8007B41C 26520006 */  addiu      $s2, $s2, 0x6
/* 35C20 8007B420 2A410018 */  slti       $at, $s2, 0x18
/* 35C24 8007B424 26310014 */  addiu      $s1, $s1, 0x14
/* 35C28 8007B428 1420FFF9 */  bnez       $at, .L8007B410
/* 35C2C 8007B42C 26730006 */   addiu     $s3, $s3, 0x6
/* 35C30 8007B430 8FB10044 */  lw         $s1, 0x44($sp)
/* 35C34 8007B434 00008025 */  or         $s0, $zero, $zero
/* 35C38 8007B438 263101A8 */  addiu      $s1, $s1, 0x1A8
.L8007B43C:
/* 35C3C 8007B43C 8EB8003C */  lw         $t8, 0x3C($s5)
/* 35C40 8007B440 26120001 */  addiu      $s2, $s0, 0x1
/* 35C44 8007B444 02202825 */  or         $a1, $s1, $zero
/* 35C48 8007B448 03120019 */  multu      $t8, $s2
/* 35C4C 8007B44C 00002012 */  mflo       $a0
/* 35C50 8007B450 0C01ECAF */  jal        func_8007B2BC
/* 35C54 8007B454 00000000 */   nop
/* 35C58 8007B458 02408025 */  or         $s0, $s2, $zero
/* 35C5C 8007B45C 1654FFF7 */  bne        $s2, $s4, .L8007B43C
/* 35C60 8007B460 26310003 */   addiu     $s1, $s1, 0x3
/* 35C64 8007B464 8FB90044 */  lw         $t9, 0x44($sp)
/* 35C68 8007B468 3C09800E */  lui        $t1, %hi(D_800D8578)
/* 35C6C 8007B46C 25298578 */  addiu      $t1, $t1, %lo(D_800D8578)
/* 35C70 8007B470 26B50050 */  addiu      $s5, $s5, 0x50
/* 35C74 8007B474 02A9082B */  sltu       $at, $s5, $t1
/* 35C78 8007B478 27280006 */  addiu      $t0, $t9, 0x6
/* 35C7C 8007B47C AFA80044 */  sw         $t0, 0x44($sp)
/* 35C80 8007B480 26F70050 */  addiu      $s7, $s7, 0x50
/* 35C84 8007B484 1420FFDF */  bnez       $at, .L8007B404
/* 35C88 8007B488 27DE0018 */   addiu     $fp, $fp, 0x18
/* 35C8C 8007B48C 3C15800E */  lui        $s5, %hi(D_800D8578)
/* 35C90 8007B490 3C1E800E */  lui        $fp, %hi(D_800D8728)
/* 35C94 8007B494 27DE8728 */  addiu      $fp, $fp, %lo(D_800D8728)
/* 35C98 8007B498 26B58578 */  addiu      $s5, $s5, %lo(D_800D8578)
/* 35C9C 8007B49C 02C0B825 */  or         $s7, $s6, $zero
/* 35CA0 8007B4A0 2414000F */  addiu      $s4, $zero, 0xF
.L8007B4A4:
/* 35CA4 8007B4A4 02A08825 */  or         $s1, $s5, $zero
/* 35CA8 8007B4A8 00009025 */  or         $s2, $zero, $zero
/* 35CAC 8007B4AC 26F30120 */  addiu      $s3, $s7, 0x120
.L8007B4B0:
/* 35CB0 8007B4B0 02202025 */  or         $a0, $s1, $zero
/* 35CB4 8007B4B4 0C01EC6B */  jal        func_8007B1AC
/* 35CB8 8007B4B8 02602825 */   or        $a1, $s3, $zero
/* 35CBC 8007B4BC 26520005 */  addiu      $s2, $s2, 0x5
/* 35CC0 8007B4C0 26310010 */  addiu      $s1, $s1, 0x10
/* 35CC4 8007B4C4 1654FFFA */  bne        $s2, $s4, .L8007B4B0
/* 35CC8 8007B4C8 26730005 */   addiu     $s3, $s3, 0x5
/* 35CCC 8007B4CC 26B50030 */  addiu      $s5, $s5, 0x30
/* 35CD0 8007B4D0 02BE082B */  sltu       $at, $s5, $fp
/* 35CD4 8007B4D4 1420FFF3 */  bnez       $at, .L8007B4A4
/* 35CD8 8007B4D8 26F7000F */   addiu     $s7, $s7, 0xF
/* 35CDC 8007B4DC 3C12800E */  lui        $s2, %hi(D_800D8728)
/* 35CE0 8007B4E0 26528728 */  addiu      $s2, $s2, %lo(D_800D8728)
/* 35CE4 8007B4E4 00008025 */  or         $s0, $zero, $zero
/* 35CE8 8007B4E8 26D101D8 */  addiu      $s1, $s6, 0x1D8
.L8007B4EC:
/* 35CEC 8007B4EC 02402025 */  or         $a0, $s2, $zero
/* 35CF0 8007B4F0 0C01EC27 */  jal        func_8007B09C
/* 35CF4 8007B4F4 02202825 */   or        $a1, $s1, $zero
/* 35CF8 8007B4F8 26100005 */  addiu      $s0, $s0, 0x5
/* 35CFC 8007B4FC 2A010028 */  slti       $at, $s0, 0x28
/* 35D00 8007B500 1420FFFA */  bnez       $at, .L8007B4EC
/* 35D04 8007B504 26310005 */   addiu     $s1, $s1, 0x5
/* 35D08 8007B508 3C0A800E */  lui        $t2, %hi(D_800DA950)
/* 35D0C 8007B50C 2552A950 */  addiu      $s2, $t2, %lo(D_800DA950)
/* 35D10 8007B510 0240A825 */  or         $s5, $s2, $zero
/* 35D14 8007B514 00009825 */  or         $s3, $zero, $zero
/* 35D18 8007B518 26D40010 */  addiu      $s4, $s6, 0x10
/* 35D1C 8007B51C 24110003 */  addiu      $s1, $zero, 0x3
.L8007B520:
/* 35D20 8007B520 02802025 */  or         $a0, $s4, $zero
/* 35D24 8007B524 02A02825 */  or         $a1, $s5, $zero
/* 35D28 8007B528 0C01A850 */  jal        func_8006A140
/* 35D2C 8007B52C 2406000A */   addiu     $a2, $zero, 0xA
/* 35D30 8007B530 00135880 */  sll        $t3, $s3, 2
/* 35D34 8007B534 01735823 */  subu       $t3, $t3, $s3
/* 35D38 8007B538 02CB2821 */  addu       $a1, $s6, $t3
/* 35D3C 8007B53C 00002025 */  or         $a0, $zero, $zero
.L8007B540:
/* 35D40 8007B540 00008025 */  or         $s0, $zero, $zero
/* 35D44 8007B544 00A01025 */  or         $v0, $a1, $zero
/* 35D48 8007B548 02401825 */  or         $v1, $s2, $zero
.L8007B54C:
/* 35D4C 8007B54C 806C000B */  lb         $t4, 0xB($v1)
/* 35D50 8007B550 26100001 */  addiu      $s0, $s0, 0x1
/* 35D54 8007B554 24420001 */  addiu      $v0, $v0, 0x1
/* 35D58 8007B558 24630001 */  addiu      $v1, $v1, 0x1
/* 35D5C 8007B55C 1611FFFB */  bne        $s0, $s1, .L8007B54C
/* 35D60 8007B560 A04C0037 */   sb        $t4, 0x37($v0)
/* 35D64 8007B564 24840001 */  addiu      $a0, $a0, 0x1
/* 35D68 8007B568 28810002 */  slti       $at, $a0, 0x2
/* 35D6C 8007B56C 1420FFF4 */  bnez       $at, .L8007B540
/* 35D70 8007B570 24A5000C */   addiu     $a1, $a1, 0xC
/* 35D74 8007B574 26730001 */  addiu      $s3, $s3, 0x1
/* 35D78 8007B578 2A610004 */  slti       $at, $s3, 0x4
/* 35D7C 8007B57C 2694000A */  addiu      $s4, $s4, 0xA
/* 35D80 8007B580 26B5000E */  addiu      $s5, $s5, 0xE
/* 35D84 8007B584 1420FFE6 */  bnez       $at, .L8007B520
/* 35D88 8007B588 2652000E */   addiu     $s2, $s2, 0xE
/* 35D8C 8007B58C 3C02800E */  lui        $v0, %hi(D_800DA940)
/* 35D90 8007B590 3C04800E */  lui        $a0, %hi(D_800DA950)
/* 35D94 8007B594 A2C0000C */  sb         $zero, 0xC($s6)
/* 35D98 8007B598 2484A950 */  addiu      $a0, $a0, %lo(D_800DA950)
/* 35D9C 8007B59C 2442A940 */  addiu      $v0, $v0, %lo(D_800DA940)
/* 35DA0 8007B5A0 02C01825 */  or         $v1, $s6, $zero
.L8007B5A4:
/* 35DA4 8007B5A4 8C4D0000 */  lw         $t5, 0x0($v0)
/* 35DA8 8007B5A8 24420004 */  addiu      $v0, $v0, 0x4
/* 35DAC 8007B5AC 0044082B */  sltu       $at, $v0, $a0
/* 35DB0 8007B5B0 24630001 */  addiu      $v1, $v1, 0x1
/* 35DB4 8007B5B4 1420FFFB */  bnez       $at, .L8007B5A4
/* 35DB8 8007B5B8 A06D0007 */   sb        $t5, 0x7($v1)
/* 35DBC 8007B5BC 3C04800E */  lui        $a0, %hi(D_800DA988)
/* 35DC0 8007B5C0 3C06800E */  lui        $a2, %hi(D_800DA9AC)
/* 35DC4 8007B5C4 24C6A9AC */  addiu      $a2, $a2, %lo(D_800DA9AC)
/* 35DC8 8007B5C8 2484A988 */  addiu      $a0, $a0, %lo(D_800DA988)
/* 35DCC 8007B5CC 02C02825 */  or         $a1, $s6, $zero
.L8007B5D0:
/* 35DD0 8007B5D0 00008025 */  or         $s0, $zero, $zero
/* 35DD4 8007B5D4 00A01025 */  or         $v0, $a1, $zero
/* 35DD8 8007B5D8 00801825 */  or         $v1, $a0, $zero
.L8007B5DC:
/* 35DDC 8007B5DC 8C6E0000 */  lw         $t6, 0x0($v1)
/* 35DE0 8007B5E0 26100001 */  addiu      $s0, $s0, 0x1
/* 35DE4 8007B5E4 24420001 */  addiu      $v0, $v0, 0x1
/* 35DE8 8007B5E8 24630004 */  addiu      $v1, $v1, 0x4
/* 35DEC 8007B5EC 1611FFFB */  bne        $s0, $s1, .L8007B5DC
/* 35DF0 8007B5F0 A04E004F */   sb        $t6, 0x4F($v0)
/* 35DF4 8007B5F4 2484000C */  addiu      $a0, $a0, 0xC
/* 35DF8 8007B5F8 1486FFF5 */  bne        $a0, $a2, .L8007B5D0
/* 35DFC 8007B5FC 24A50003 */   addiu     $a1, $a1, 0x3
/* 35E00 8007B600 8FBF003C */  lw         $ra, 0x3C($sp)
/* 35E04 8007B604 8FB00018 */  lw         $s0, 0x18($sp)
/* 35E08 8007B608 8FB1001C */  lw         $s1, 0x1C($sp)
/* 35E0C 8007B60C 8FB20020 */  lw         $s2, 0x20($sp)
/* 35E10 8007B610 8FB30024 */  lw         $s3, 0x24($sp)
/* 35E14 8007B614 8FB40028 */  lw         $s4, 0x28($sp)
/* 35E18 8007B618 8FB5002C */  lw         $s5, 0x2C($sp)
/* 35E1C 8007B61C 8FB60030 */  lw         $s6, 0x30($sp)
/* 35E20 8007B620 8FB70034 */  lw         $s7, 0x34($sp)
/* 35E24 8007B624 8FBE0038 */  lw         $fp, 0x38($sp)
/* 35E28 8007B628 03E00008 */  jr         $ra
/* 35E2C 8007B62C 27BD0078 */   addiu     $sp, $sp, 0x78

glabel func_8007B630
/* 35E30 8007B630 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 35E34 8007B634 AFBE0038 */  sw         $fp, 0x38($sp)
/* 35E38 8007B638 AFB70034 */  sw         $s7, 0x34($sp)
/* 35E3C 8007B63C AFB5002C */  sw         $s5, 0x2C($sp)
/* 35E40 8007B640 3C0E801B */  lui        $t6, %hi(D_801AEA18)
/* 35E44 8007B644 3C0F801C */  lui        $t7, %hi(D_801C22D4)
/* 35E48 8007B648 AFB60030 */  sw         $s6, 0x30($sp)
/* 35E4C 8007B64C AFB40028 */  sw         $s4, 0x28($sp)
/* 35E50 8007B650 AFB30024 */  sw         $s3, 0x24($sp)
/* 35E54 8007B654 25EF22D4 */  addiu      $t7, $t7, %lo(D_801C22D4)
/* 35E58 8007B658 25D7EA18 */  addiu      $s7, $t6, %lo(D_801AEA18)
/* 35E5C 8007B65C 3C15801C */  lui        $s5, %hi(D_801C202C)
/* 35E60 8007B660 3C1E801C */  lui        $fp, %hi(D_801C24C4)
/* 35E64 8007B664 AFBF003C */  sw         $ra, 0x3C($sp)
/* 35E68 8007B668 AFB20020 */  sw         $s2, 0x20($sp)
/* 35E6C 8007B66C AFB1001C */  sw         $s1, 0x1C($sp)
/* 35E70 8007B670 AFB00018 */  sw         $s0, 0x18($sp)
/* 35E74 8007B674 27DE24C4 */  addiu      $fp, $fp, %lo(D_801C24C4)
/* 35E78 8007B678 26B5202C */  addiu      $s5, $s5, %lo(D_801C202C)
/* 35E7C 8007B67C 02E0B025 */  or         $s6, $s7, $zero
/* 35E80 8007B680 AFAF0044 */  sw         $t7, 0x44($sp)
/* 35E84 8007B684 24130006 */  addiu      $s3, $zero, 0x6
/* 35E88 8007B688 24140001 */  addiu      $s4, $zero, 0x1
.L8007B68C:
/* 35E8C 8007B68C 26D00060 */  addiu      $s0, $s6, 0x60
/* 35E90 8007B690 00008825 */  or         $s1, $zero, $zero
/* 35E94 8007B694 02A09025 */  or         $s2, $s5, $zero
.L8007B698:
/* 35E98 8007B698 02002025 */  or         $a0, $s0, $zero
/* 35E9C 8007B69C 0C01EBFD */  jal        func_8007AFF4
/* 35EA0 8007B6A0 02402825 */   or        $a1, $s2, $zero
/* 35EA4 8007B6A4 26310014 */  addiu      $s1, $s1, 0x14
/* 35EA8 8007B6A8 2A21003C */  slti       $at, $s1, 0x3C
/* 35EAC 8007B6AC 26100006 */  addiu      $s0, $s0, 0x6
/* 35EB0 8007B6B0 1420FFF9 */  bnez       $at, .L8007B698
/* 35EB4 8007B6B4 26520014 */   addiu     $s2, $s2, 0x14
/* 35EB8 8007B6B8 02002025 */  or         $a0, $s0, $zero
/* 35EBC 8007B6BC 0C01EBFD */  jal        func_8007AFF4
/* 35EC0 8007B6C0 8FA50044 */   lw        $a1, 0x44($sp)
/* 35EC4 8007B6C4 00008025 */  or         $s0, $zero, $zero
/* 35EC8 8007B6C8 26F101A8 */  addiu      $s1, $s7, 0x1A8
/* 35ECC 8007B6CC 03C09025 */  or         $s2, $fp, $zero
.L8007B6D0:
/* 35ED0 8007B6D0 0C01ECB9 */  jal        func_8007B2E4
/* 35ED4 8007B6D4 02202025 */   or        $a0, $s1, $zero
/* 35ED8 8007B6D8 26100003 */  addiu      $s0, $s0, 0x3
/* 35EDC 8007B6DC 26310003 */  addiu      $s1, $s1, 0x3
/* 35EE0 8007B6E0 26520004 */  addiu      $s2, $s2, 0x4
/* 35EE4 8007B6E4 1613FFFA */  bne        $s0, $s3, .L8007B6D0
/* 35EE8 8007B6E8 AE42FFFC */   sw        $v0, -0x4($s2)
/* 35EEC 8007B6EC 8FB80044 */  lw         $t8, 0x44($sp)
/* 35EF0 8007B6F0 3C08801C */  lui        $t0, %hi(D_801C220C)
/* 35EF4 8007B6F4 2508220C */  addiu      $t0, $t0, %lo(D_801C220C)
/* 35EF8 8007B6F8 26B5003C */  addiu      $s5, $s5, 0x3C
/* 35EFC 8007B6FC 02A8082B */  sltu       $at, $s5, $t0
/* 35F00 8007B700 27190014 */  addiu      $t9, $t8, 0x14
/* 35F04 8007B704 AFB90044 */  sw         $t9, 0x44($sp)
/* 35F08 8007B708 26940001 */  addiu      $s4, $s4, 0x1
/* 35F0C 8007B70C 26D60018 */  addiu      $s6, $s6, 0x18
/* 35F10 8007B710 26F70006 */  addiu      $s7, $s7, 0x6
/* 35F14 8007B714 1420FFDD */  bnez       $at, .L8007B68C
/* 35F18 8007B718 27DE0024 */   addiu     $fp, $fp, 0x24
/* 35F1C 8007B71C 3C16801B */  lui        $s6, %hi(D_801AEA18)
/* 35F20 8007B720 3C15801C */  lui        $s5, %hi(D_801C26E8)
/* 35F24 8007B724 3C17801C */  lui        $s7, %hi(D_801C2898)
/* 35F28 8007B728 26F72898 */  addiu      $s7, $s7, %lo(D_801C2898)
/* 35F2C 8007B72C 26B526E8 */  addiu      $s5, $s5, %lo(D_801C26E8)
/* 35F30 8007B730 26D6EA18 */  addiu      $s6, $s6, %lo(D_801AEA18)
/* 35F34 8007B734 24140001 */  addiu      $s4, $zero, 0x1
/* 35F38 8007B738 24130030 */  addiu      $s3, $zero, 0x30
.L8007B73C:
/* 35F3C 8007B73C 26D00120 */  addiu      $s0, $s6, 0x120
/* 35F40 8007B740 00008825 */  or         $s1, $zero, $zero
/* 35F44 8007B744 02A09025 */  or         $s2, $s5, $zero
.L8007B748:
/* 35F48 8007B748 02002025 */  or         $a0, $s0, $zero
/* 35F4C 8007B74C 0C01EC88 */  jal        func_8007B220
/* 35F50 8007B750 02402825 */   or        $a1, $s2, $zero
/* 35F54 8007B754 26310010 */  addiu      $s1, $s1, 0x10
/* 35F58 8007B758 26100005 */  addiu      $s0, $s0, 0x5
/* 35F5C 8007B75C 1633FFFA */  bne        $s1, $s3, .L8007B748
/* 35F60 8007B760 26520010 */   addiu     $s2, $s2, 0x10
/* 35F64 8007B764 26B50030 */  addiu      $s5, $s5, 0x30
/* 35F68 8007B768 02B7082B */  sltu       $at, $s5, $s7
/* 35F6C 8007B76C 26940001 */  addiu      $s4, $s4, 0x1
/* 35F70 8007B770 1420FFF2 */  bnez       $at, .L8007B73C
/* 35F74 8007B774 26D6000F */   addiu     $s6, $s6, 0xF
/* 35F78 8007B778 3C12801B */  lui        $s2, %hi(D_801AEBF0)
/* 35F7C 8007B77C 3C10801C */  lui        $s0, %hi(D_801C23C4)
/* 35F80 8007B780 3C11801C */  lui        $s1, %hi(D_801C2464)
/* 35F84 8007B784 26312464 */  addiu      $s1, $s1, %lo(D_801C2464)
/* 35F88 8007B788 261023C4 */  addiu      $s0, $s0, %lo(D_801C23C4)
/* 35F8C 8007B78C 2652EBF0 */  addiu      $s2, $s2, %lo(D_801AEBF0)
/* 35F90 8007B790 24140001 */  addiu      $s4, $zero, 0x1
.L8007B794:
/* 35F94 8007B794 02402025 */  or         $a0, $s2, $zero
/* 35F98 8007B798 0C01EC44 */  jal        func_8007B110
/* 35F9C 8007B79C 02002825 */   or        $a1, $s0, $zero
/* 35FA0 8007B7A0 26100014 */  addiu      $s0, $s0, 0x14
/* 35FA4 8007B7A4 0211082B */  sltu       $at, $s0, $s1
/* 35FA8 8007B7A8 26940001 */  addiu      $s4, $s4, 0x1
/* 35FAC 8007B7AC 1420FFF9 */  bnez       $at, .L8007B794
/* 35FB0 8007B7B0 26520005 */   addiu     $s2, $s2, 0x5
/* 35FB4 8007B7B4 3C12801D */  lui        $s2, %hi(D_801CB298)
/* 35FB8 8007B7B8 3C13801B */  lui        $s3, %hi(D_801AEA28)
/* 35FBC 8007B7BC 3C15801B */  lui        $s5, %hi(D_801AEA30)
/* 35FC0 8007B7C0 26B5EA30 */  addiu      $s5, $s5, %lo(D_801AEA30)
/* 35FC4 8007B7C4 2673EA28 */  addiu      $s3, $s3, %lo(D_801AEA28)
/* 35FC8 8007B7C8 2652B298 */  addiu      $s2, $s2, %lo(D_801CB298)
/* 35FCC 8007B7CC 00008825 */  or         $s1, $zero, $zero
/* 35FD0 8007B7D0 24140001 */  addiu      $s4, $zero, 0x1
/* 35FD4 8007B7D4 24100003 */  addiu      $s0, $zero, 0x3
.L8007B7D8:
/* 35FD8 8007B7D8 02402025 */  or         $a0, $s2, $zero
/* 35FDC 8007B7DC 02602825 */  or         $a1, $s3, $zero
/* 35FE0 8007B7E0 0C01A850 */  jal        func_8006A140
/* 35FE4 8007B7E4 2406000A */   addiu     $a2, $zero, 0xA
/* 35FE8 8007B7E8 001148C0 */  sll        $t1, $s1, 3
/* 35FEC 8007B7EC 01314823 */  subu       $t1, $t1, $s1
/* 35FF0 8007B7F0 3C0A801D */  lui        $t2, %hi(D_801CB298)
/* 35FF4 8007B7F4 3C0B801B */  lui        $t3, %hi(D_801AEA18)
/* 35FF8 8007B7F8 00116080 */  sll        $t4, $s1, 2
/* 35FFC 8007B7FC 01916023 */  subu       $t4, $t4, $s1
/* 36000 8007B800 2566EA18 */  addiu      $a2, $t3, %lo(D_801AEA18)
/* 36004 8007B804 254AB298 */  addiu      $t2, $t2, %lo(D_801CB298)
/* 36008 8007B808 00094840 */  sll        $t1, $t1, 1
/* 3600C 8007B80C A240000A */  sb         $zero, 0xA($s2)
/* 36010 8007B810 012A2821 */  addu       $a1, $t1, $t2
/* 36014 8007B814 01863821 */  addu       $a3, $t4, $a2
.L8007B818:
/* 36018 8007B818 00002025 */  or         $a0, $zero, $zero
/* 3601C 8007B81C 00A01025 */  or         $v0, $a1, $zero
/* 36020 8007B820 00E01825 */  or         $v1, $a3, $zero
.L8007B824:
/* 36024 8007B824 806D0038 */  lb         $t5, 0x38($v1)
/* 36028 8007B828 24840001 */  addiu      $a0, $a0, 0x1
/* 3602C 8007B82C 24420001 */  addiu      $v0, $v0, 0x1
/* 36030 8007B830 24630001 */  addiu      $v1, $v1, 0x1
/* 36034 8007B834 1490FFFB */  bne        $a0, $s0, .L8007B824
/* 36038 8007B838 A04D000A */   sb        $t5, 0xA($v0)
/* 3603C 8007B83C 24C6000C */  addiu      $a2, $a2, 0xC
/* 36040 8007B840 00D5082B */  sltu       $at, $a2, $s5
/* 36044 8007B844 24A50038 */  addiu      $a1, $a1, 0x38
/* 36048 8007B848 1420FFF3 */  bnez       $at, .L8007B818
/* 3604C 8007B84C 24E7000C */   addiu     $a3, $a3, 0xC
/* 36050 8007B850 02808825 */  or         $s1, $s4, $zero
/* 36054 8007B854 2A210004 */  slti       $at, $s1, 0x4
/* 36058 8007B858 26940001 */  addiu      $s4, $s4, 0x1
/* 3605C 8007B85C 2652000E */  addiu      $s2, $s2, 0xE
/* 36060 8007B860 1420FFDD */  bnez       $at, .L8007B7D8
/* 36064 8007B864 2673000A */   addiu     $s3, $s3, 0xA
/* 36068 8007B868 3C0E801B */  lui        $t6, %hi(D_801AEA24)
/* 3606C 8007B86C 81CEEA24 */  lb         $t6, %lo(D_801AEA24)($t6)
/* 36070 8007B870 3C01801D */  lui        $at, %hi(D_801CB280)
/* 36074 8007B874 3C03801D */  lui        $v1, %hi(D_801CB288)
/* 36078 8007B878 3C02801B */  lui        $v0, %hi(D_801AEA18)
/* 3607C 8007B87C 3C04801B */  lui        $a0, %hi(D_801AEA1C)
/* 36080 8007B880 2484EA1C */  addiu      $a0, $a0, %lo(D_801AEA1C)
/* 36084 8007B884 2442EA18 */  addiu      $v0, $v0, %lo(D_801AEA18)
/* 36088 8007B888 2463B288 */  addiu      $v1, $v1, %lo(D_801CB288)
/* 3608C 8007B88C 24140001 */  addiu      $s4, $zero, 0x1
/* 36090 8007B890 A02EB280 */  sb         $t6, %lo(D_801CB280)($at)
.L8007B894:
/* 36094 8007B894 804F0008 */  lb         $t7, 0x8($v0)
/* 36098 8007B898 24420001 */  addiu      $v0, $v0, 0x1
/* 3609C 8007B89C 0044082B */  sltu       $at, $v0, $a0
/* 360A0 8007B8A0 26940001 */  addiu      $s4, $s4, 0x1
/* 360A4 8007B8A4 24630004 */  addiu      $v1, $v1, 0x4
/* 360A8 8007B8A8 1420FFFA */  bnez       $at, .L8007B894
/* 360AC 8007B8AC AC6FFFFC */   sw        $t7, -0x4($v1)
/* 360B0 8007B8B0 3C06801D */  lui        $a2, %hi(D_801CB308)
/* 360B4 8007B8B4 3C05801B */  lui        $a1, %hi(D_801AEA18)
/* 360B8 8007B8B8 3C07801B */  lui        $a3, %hi(D_801AEA21)
/* 360BC 8007B8BC 24E7EA21 */  addiu      $a3, $a3, %lo(D_801AEA21)
/* 360C0 8007B8C0 24A5EA18 */  addiu      $a1, $a1, %lo(D_801AEA18)
/* 360C4 8007B8C4 24C6B308 */  addiu      $a2, $a2, %lo(D_801CB308)
/* 360C8 8007B8C8 24140001 */  addiu      $s4, $zero, 0x1
.L8007B8CC:
/* 360CC 8007B8CC 00002025 */  or         $a0, $zero, $zero
/* 360D0 8007B8D0 00C01025 */  or         $v0, $a2, $zero
/* 360D4 8007B8D4 00A01825 */  or         $v1, $a1, $zero
.L8007B8D8:
/* 360D8 8007B8D8 80780050 */  lb         $t8, 0x50($v1)
/* 360DC 8007B8DC 24840001 */  addiu      $a0, $a0, 0x1
/* 360E0 8007B8E0 24420004 */  addiu      $v0, $v0, 0x4
/* 360E4 8007B8E4 24630001 */  addiu      $v1, $v1, 0x1
/* 360E8 8007B8E8 1490FFFB */  bne        $a0, $s0, .L8007B8D8
/* 360EC 8007B8EC AC58FFFC */   sw        $t8, -0x4($v0)
/* 360F0 8007B8F0 24A50003 */  addiu      $a1, $a1, 0x3
/* 360F4 8007B8F4 26940001 */  addiu      $s4, $s4, 0x1
/* 360F8 8007B8F8 14A7FFF4 */  bne        $a1, $a3, .L8007B8CC
/* 360FC 8007B8FC 24C6000C */   addiu     $a2, $a2, 0xC
/* 36100 8007B900 8FBF003C */  lw         $ra, 0x3C($sp)
/* 36104 8007B904 8FB00018 */  lw         $s0, 0x18($sp)
/* 36108 8007B908 8FB1001C */  lw         $s1, 0x1C($sp)
/* 3610C 8007B90C 8FB20020 */  lw         $s2, 0x20($sp)
/* 36110 8007B910 8FB30024 */  lw         $s3, 0x24($sp)
/* 36114 8007B914 8FB40028 */  lw         $s4, 0x28($sp)
/* 36118 8007B918 8FB5002C */  lw         $s5, 0x2C($sp)
/* 3611C 8007B91C 8FB60030 */  lw         $s6, 0x30($sp)
/* 36120 8007B920 8FB70034 */  lw         $s7, 0x34($sp)
/* 36124 8007B924 8FBE0038 */  lw         $fp, 0x38($sp)
/* 36128 8007B928 03E00008 */  jr         $ra
/* 3612C 8007B92C 27BD0088 */   addiu     $sp, $sp, 0x88

glabel func_8007B930
/* 36130 8007B930 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 36134 8007B934 AFBE0038 */  sw         $fp, 0x38($sp)
/* 36138 8007B938 AFB70034 */  sw         $s7, 0x34($sp)
/* 3613C 8007B93C AFB40028 */  sw         $s4, 0x28($sp)
/* 36140 8007B940 3C0E801B */  lui        $t6, %hi(D_801AEA18)
/* 36144 8007B944 3C0F801C */  lui        $t7, %hi(D_801C22D4)
/* 36148 8007B948 AFB60030 */  sw         $s6, 0x30($sp)
/* 3614C 8007B94C AFB5002C */  sw         $s5, 0x2C($sp)
/* 36150 8007B950 AFB30024 */  sw         $s3, 0x24($sp)
/* 36154 8007B954 25EF22D4 */  addiu      $t7, $t7, %lo(D_801C22D4)
/* 36158 8007B958 25D7EA18 */  addiu      $s7, $t6, %lo(D_801AEA18)
/* 3615C 8007B95C 3C14801C */  lui        $s4, %hi(D_801C202C)
/* 36160 8007B960 3C1E801C */  lui        $fp, %hi(D_801C24C4)
/* 36164 8007B964 AFBF003C */  sw         $ra, 0x3C($sp)
/* 36168 8007B968 AFB20020 */  sw         $s2, 0x20($sp)
/* 3616C 8007B96C AFB1001C */  sw         $s1, 0x1C($sp)
/* 36170 8007B970 AFB00018 */  sw         $s0, 0x18($sp)
/* 36174 8007B974 27DE24C4 */  addiu      $fp, $fp, %lo(D_801C24C4)
/* 36178 8007B978 2694202C */  addiu      $s4, $s4, %lo(D_801C202C)
/* 3617C 8007B97C 02E0B025 */  or         $s6, $s7, $zero
/* 36180 8007B980 AFAF0044 */  sw         $t7, 0x44($sp)
/* 36184 8007B984 24130006 */  addiu      $s3, $zero, 0x6
/* 36188 8007B988 24150001 */  addiu      $s5, $zero, 0x1
.L8007B98C:
/* 3618C 8007B98C 00008825 */  or         $s1, $zero, $zero
/* 36190 8007B990 26D00060 */  addiu      $s0, $s6, 0x60
/* 36194 8007B994 02809025 */  or         $s2, $s4, $zero
.L8007B998:
/* 36198 8007B998 02402025 */  or         $a0, $s2, $zero
/* 3619C 8007B99C 0C01EBDE */  jal        func_8007AF78
/* 361A0 8007B9A0 02002825 */   or        $a1, $s0, $zero
/* 361A4 8007B9A4 26310006 */  addiu      $s1, $s1, 0x6
/* 361A8 8007B9A8 2A210012 */  slti       $at, $s1, 0x12
/* 361AC 8007B9AC 26100006 */  addiu      $s0, $s0, 0x6
/* 361B0 8007B9B0 1420FFF9 */  bnez       $at, .L8007B998
/* 361B4 8007B9B4 26520014 */   addiu     $s2, $s2, 0x14
/* 361B8 8007B9B8 8FA40044 */  lw         $a0, 0x44($sp)
/* 361BC 8007B9BC 0C01EBDE */  jal        func_8007AF78
/* 361C0 8007B9C0 02002825 */   or        $a1, $s0, $zero
/* 361C4 8007B9C4 00008025 */  or         $s0, $zero, $zero
/* 361C8 8007B9C8 26F101A8 */  addiu      $s1, $s7, 0x1A8
/* 361CC 8007B9CC 03C09025 */  or         $s2, $fp, $zero
.L8007B9D0:
/* 361D0 8007B9D0 8E440000 */  lw         $a0, 0x0($s2)
/* 361D4 8007B9D4 0C01ECAF */  jal        func_8007B2BC
/* 361D8 8007B9D8 02202825 */   or        $a1, $s1, $zero
/* 361DC 8007B9DC 26100003 */  addiu      $s0, $s0, 0x3
/* 361E0 8007B9E0 26310003 */  addiu      $s1, $s1, 0x3
/* 361E4 8007B9E4 1613FFFA */  bne        $s0, $s3, .L8007B9D0
/* 361E8 8007B9E8 26520004 */   addiu     $s2, $s2, 0x4
/* 361EC 8007B9EC 8FB80044 */  lw         $t8, 0x44($sp)
/* 361F0 8007B9F0 3C08801C */  lui        $t0, %hi(D_801C220C)
/* 361F4 8007B9F4 2508220C */  addiu      $t0, $t0, %lo(D_801C220C)
/* 361F8 8007B9F8 2694003C */  addiu      $s4, $s4, 0x3C
/* 361FC 8007B9FC 0288082B */  sltu       $at, $s4, $t0
/* 36200 8007BA00 27190014 */  addiu      $t9, $t8, 0x14
/* 36204 8007BA04 AFB90044 */  sw         $t9, 0x44($sp)
/* 36208 8007BA08 26B50001 */  addiu      $s5, $s5, 0x1
/* 3620C 8007BA0C 26D60018 */  addiu      $s6, $s6, 0x18
/* 36210 8007BA10 26F70006 */  addiu      $s7, $s7, 0x6
/* 36214 8007BA14 1420FFDD */  bnez       $at, .L8007B98C
/* 36218 8007BA18 27DE0024 */   addiu     $fp, $fp, 0x24
/* 3621C 8007BA1C 3C16801C */  lui        $s6, %hi(D_801C26E8)
/* 36220 8007BA20 3C14801B */  lui        $s4, %hi(D_801AEA18)
/* 36224 8007BA24 3C17801B */  lui        $s7, %hi(D_801AEA9F)
/* 36228 8007BA28 26F7EA9F */  addiu      $s7, $s7, %lo(D_801AEA9F)
/* 3622C 8007BA2C 2694EA18 */  addiu      $s4, $s4, %lo(D_801AEA18)
/* 36230 8007BA30 26D626E8 */  addiu      $s6, $s6, %lo(D_801C26E8)
/* 36234 8007BA34 24150001 */  addiu      $s5, $zero, 0x1
/* 36238 8007BA38 2413000F */  addiu      $s3, $zero, 0xF
.L8007BA3C:
/* 3623C 8007BA3C 02C08025 */  or         $s0, $s6, $zero
/* 36240 8007BA40 00008825 */  or         $s1, $zero, $zero
/* 36244 8007BA44 26920120 */  addiu      $s2, $s4, 0x120
.L8007BA48:
/* 36248 8007BA48 02002025 */  or         $a0, $s0, $zero
/* 3624C 8007BA4C 0C01EC6B */  jal        func_8007B1AC
/* 36250 8007BA50 02402825 */   or        $a1, $s2, $zero
/* 36254 8007BA54 26310005 */  addiu      $s1, $s1, 0x5
/* 36258 8007BA58 26100010 */  addiu      $s0, $s0, 0x10
/* 3625C 8007BA5C 1633FFFA */  bne        $s1, $s3, .L8007BA48
/* 36260 8007BA60 26520005 */   addiu     $s2, $s2, 0x5
/* 36264 8007BA64 2694000F */  addiu      $s4, $s4, 0xF
/* 36268 8007BA68 0297082B */  sltu       $at, $s4, $s7
/* 3626C 8007BA6C 26B50001 */  addiu      $s5, $s5, 0x1
/* 36270 8007BA70 1420FFF2 */  bnez       $at, .L8007BA3C
/* 36274 8007BA74 26D60030 */   addiu     $s6, $s6, 0x30
/* 36278 8007BA78 3C11801C */  lui        $s1, %hi(D_801C23C4)
/* 3627C 8007BA7C 3C10801B */  lui        $s0, %hi(D_801AEBF0)
/* 36280 8007BA80 3C12801B */  lui        $s2, %hi(D_801AEC18)
/* 36284 8007BA84 2652EC18 */  addiu      $s2, $s2, %lo(D_801AEC18)
/* 36288 8007BA88 2610EBF0 */  addiu      $s0, $s0, %lo(D_801AEBF0)
/* 3628C 8007BA8C 263123C4 */  addiu      $s1, $s1, %lo(D_801C23C4)
/* 36290 8007BA90 24150001 */  addiu      $s5, $zero, 0x1
.L8007BA94:
/* 36294 8007BA94 02202025 */  or         $a0, $s1, $zero
/* 36298 8007BA98 0C01EC27 */  jal        func_8007B09C
/* 3629C 8007BA9C 02002825 */   or        $a1, $s0, $zero
/* 362A0 8007BAA0 26100005 */  addiu      $s0, $s0, 0x5
/* 362A4 8007BAA4 0212082B */  sltu       $at, $s0, $s2
/* 362A8 8007BAA8 26B50001 */  addiu      $s5, $s5, 0x1
/* 362AC 8007BAAC 1420FFF9 */  bnez       $at, .L8007BA94
/* 362B0 8007BAB0 26310014 */   addiu     $s1, $s1, 0x14
/* 362B4 8007BAB4 3C13801B */  lui        $s3, %hi(D_801AEA28)
/* 362B8 8007BAB8 3C14801D */  lui        $s4, %hi(D_801CB298)
/* 362BC 8007BABC 3C11801D */  lui        $s1, %hi(D_801CB308)
/* 362C0 8007BAC0 2631B308 */  addiu      $s1, $s1, %lo(D_801CB308)
/* 362C4 8007BAC4 2694B298 */  addiu      $s4, $s4, %lo(D_801CB298)
/* 362C8 8007BAC8 2673EA28 */  addiu      $s3, $s3, %lo(D_801AEA28)
/* 362CC 8007BACC 00009025 */  or         $s2, $zero, $zero
/* 362D0 8007BAD0 24150001 */  addiu      $s5, $zero, 0x1
/* 362D4 8007BAD4 24100003 */  addiu      $s0, $zero, 0x3
.L8007BAD8:
/* 362D8 8007BAD8 02602025 */  or         $a0, $s3, $zero
/* 362DC 8007BADC 02802825 */  or         $a1, $s4, $zero
/* 362E0 8007BAE0 0C01A850 */  jal        func_8006A140
/* 362E4 8007BAE4 2406000A */   addiu     $a2, $zero, 0xA
/* 362E8 8007BAE8 001260C0 */  sll        $t4, $s2, 3
/* 362EC 8007BAEC 01926023 */  subu       $t4, $t4, $s2
/* 362F0 8007BAF0 00124880 */  sll        $t1, $s2, 2
/* 362F4 8007BAF4 3C0A801B */  lui        $t2, %hi(D_801AEA18)
/* 362F8 8007BAF8 3C0B801D */  lui        $t3, %hi(D_801CB298)
/* 362FC 8007BAFC 2566B298 */  addiu      $a2, $t3, %lo(D_801CB298)
/* 36300 8007BB00 254AEA18 */  addiu      $t2, $t2, %lo(D_801AEA18)
/* 36304 8007BB04 01324823 */  subu       $t1, $t1, $s2
/* 36308 8007BB08 000C6040 */  sll        $t4, $t4, 1
/* 3630C 8007BB0C 01863821 */  addu       $a3, $t4, $a2
/* 36310 8007BB10 012A2821 */  addu       $a1, $t1, $t2
.L8007BB14:
/* 36314 8007BB14 00002025 */  or         $a0, $zero, $zero
/* 36318 8007BB18 00A01025 */  or         $v0, $a1, $zero
/* 3631C 8007BB1C 00E01825 */  or         $v1, $a3, $zero
.L8007BB20:
/* 36320 8007BB20 806D000B */  lb         $t5, 0xB($v1)
/* 36324 8007BB24 24840001 */  addiu      $a0, $a0, 0x1
/* 36328 8007BB28 24420001 */  addiu      $v0, $v0, 0x1
/* 3632C 8007BB2C 24630001 */  addiu      $v1, $v1, 0x1
/* 36330 8007BB30 1490FFFB */  bne        $a0, $s0, .L8007BB20
/* 36334 8007BB34 A04D0037 */   sb        $t5, 0x37($v0)
/* 36338 8007BB38 24C60038 */  addiu      $a2, $a2, 0x38
/* 3633C 8007BB3C 24A5000C */  addiu      $a1, $a1, 0xC
/* 36340 8007BB40 14D1FFF4 */  bne        $a2, $s1, .L8007BB14
/* 36344 8007BB44 24E70038 */   addiu     $a3, $a3, 0x38
/* 36348 8007BB48 02A09025 */  or         $s2, $s5, $zero
/* 3634C 8007BB4C 2A410004 */  slti       $at, $s2, 0x4
/* 36350 8007BB50 26B50001 */  addiu      $s5, $s5, 0x1
/* 36354 8007BB54 2673000A */  addiu      $s3, $s3, 0xA
/* 36358 8007BB58 1420FFDF */  bnez       $at, .L8007BAD8
/* 3635C 8007BB5C 2694000E */   addiu     $s4, $s4, 0xE
/* 36360 8007BB60 0C01ECC7 */  jal        func_8007B31C
/* 36364 8007BB64 00000000 */   nop
/* 36368 8007BB68 3C06801B */  lui        $a2, %hi(D_801AEA18)
/* 3636C 8007BB6C 3C05801D */  lui        $a1, %hi(D_801CB308)
/* 36370 8007BB70 3C07801D */  lui        $a3, %hi(D_801CB32C)
/* 36374 8007BB74 24E7B32C */  addiu      $a3, $a3, %lo(D_801CB32C)
/* 36378 8007BB78 24A5B308 */  addiu      $a1, $a1, %lo(D_801CB308)
/* 3637C 8007BB7C 24C6EA18 */  addiu      $a2, $a2, %lo(D_801AEA18)
/* 36380 8007BB80 24150001 */  addiu      $s5, $zero, 0x1
.L8007BB84:
/* 36384 8007BB84 00002025 */  or         $a0, $zero, $zero
/* 36388 8007BB88 00C01025 */  or         $v0, $a2, $zero
/* 3638C 8007BB8C 00A01825 */  or         $v1, $a1, $zero
.L8007BB90:
/* 36390 8007BB90 8C6E0000 */  lw         $t6, 0x0($v1)
/* 36394 8007BB94 24840001 */  addiu      $a0, $a0, 0x1
/* 36398 8007BB98 24420001 */  addiu      $v0, $v0, 0x1
/* 3639C 8007BB9C 24630004 */  addiu      $v1, $v1, 0x4
/* 363A0 8007BBA0 1490FFFB */  bne        $a0, $s0, .L8007BB90
/* 363A4 8007BBA4 A04E004F */   sb        $t6, 0x4F($v0)
/* 363A8 8007BBA8 24A5000C */  addiu      $a1, $a1, 0xC
/* 363AC 8007BBAC 26B50001 */  addiu      $s5, $s5, 0x1
/* 363B0 8007BBB0 14A7FFF4 */  bne        $a1, $a3, .L8007BB84
/* 363B4 8007BBB4 24C60003 */   addiu     $a2, $a2, 0x3
/* 363B8 8007BBB8 8FBF003C */  lw         $ra, 0x3C($sp)
/* 363BC 8007BBBC 8FB00018 */  lw         $s0, 0x18($sp)
/* 363C0 8007BBC0 8FB1001C */  lw         $s1, 0x1C($sp)
/* 363C4 8007BBC4 8FB20020 */  lw         $s2, 0x20($sp)
/* 363C8 8007BBC8 8FB30024 */  lw         $s3, 0x24($sp)
/* 363CC 8007BBCC 8FB40028 */  lw         $s4, 0x28($sp)
/* 363D0 8007BBD0 8FB5002C */  lw         $s5, 0x2C($sp)
/* 363D4 8007BBD4 8FB60030 */  lw         $s6, 0x30($sp)
/* 363D8 8007BBD8 8FB70034 */  lw         $s7, 0x34($sp)
/* 363DC 8007BBDC 8FBE0038 */  lw         $fp, 0x38($sp)
/* 363E0 8007BBE0 03E00008 */  jr         $ra
/* 363E4 8007BBE4 27BD0078 */   addiu     $sp, $sp, 0x78

glabel func_8007BBE8
/* 363E8 8007BBE8 03E00008 */  jr         $ra
/* 363EC 8007BBEC 00000000 */   nop

glabel func_8007BBF0
/* 363F0 8007BBF0 03E00008 */  jr         $ra
/* 363F4 8007BBF4 00000000 */   nop

glabel func_8007BBF8
/* 363F8 8007BBF8 24820004 */  addiu      $v0, $a0, 0x4
/* 363FC 8007BBFC 00001825 */  or         $v1, $zero, $zero
/* 36400 8007BC00 240401FC */  addiu      $a0, $zero, 0x1FC
/* 36404 8007BC04 00002825 */  or         $a1, $zero, $zero
.L8007BC08:
/* 36408 8007BC08 904E0000 */  lbu        $t6, 0x0($v0)
/* 3640C 8007BC0C 90580001 */  lbu        $t8, 0x1($v0)
/* 36410 8007BC10 90480002 */  lbu        $t0, 0x2($v0)
/* 36414 8007BC14 904A0003 */  lbu        $t2, 0x3($v0)
/* 36418 8007BC18 006E7821 */  addu       $t7, $v1, $t6
/* 3641C 8007BC1C 01F8C821 */  addu       $t9, $t7, $t8
/* 36420 8007BC20 03284821 */  addu       $t1, $t9, $t0
/* 36424 8007BC24 012A1821 */  addu       $v1, $t1, $t2
/* 36428 8007BC28 306BFFFF */  andi       $t3, $v1, 0xFFFF
/* 3642C 8007BC2C 24A50004 */  addiu      $a1, $a1, 0x4
/* 36430 8007BC30 01601825 */  or         $v1, $t3, $zero
/* 36434 8007BC34 14A4FFF4 */  bne        $a1, $a0, .L8007BC08
/* 36438 8007BC38 24420004 */   addiu     $v0, $v0, 0x4
/* 3643C 8007BC3C 03E00008 */  jr         $ra
/* 36440 8007BC40 01601025 */   or        $v0, $t3, $zero

glabel func_8007BC44
/* 36444 8007BC44 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 36448 8007BC48 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3644C 8007BC4C 3C048015 */  lui        $a0, %hi(D_801540D0)
/* 36450 8007BC50 3C06801B */  lui        $a2, %hi(D_801AEA18)
/* 36454 8007BC54 24C6EA18 */  addiu      $a2, $a2, %lo(D_801AEA18)
/* 36458 8007BC58 248440D0 */  addiu      $a0, $a0, %lo(D_801540D0)
/* 3645C 8007BC5C 00002825 */  or         $a1, $zero, $zero
/* 36460 8007BC60 0C0320B4 */  jal        func_800C82D0
/* 36464 8007BC64 24070200 */   addiu     $a3, $zero, 0x200
/* 36468 8007BC68 10400003 */  beqz       $v0, .L8007BC78
/* 3646C 8007BC6C 00002825 */   or        $a1, $zero, $zero
/* 36470 8007BC70 10000027 */  b          .L8007BD10
/* 36474 8007BC74 24020002 */   addiu     $v0, $zero, 0x2
.L8007BC78:
/* 36478 8007BC78 3C03801B */  lui        $v1, %hi(D_801AEA18)
/* 3647C 8007BC7C 3C02800E */  lui        $v0, %hi(D_800D8268)
/* 36480 8007BC80 3C04800E */  lui        $a0, %hi(D_800D826A)
/* 36484 8007BC84 2484826A */  addiu      $a0, $a0, %lo(D_800D826A)
/* 36488 8007BC88 24428268 */  addiu      $v0, $v0, %lo(D_800D8268)
/* 3648C 8007BC8C 2463EA18 */  addiu      $v1, $v1, %lo(D_801AEA18)
.L8007BC90:
/* 36490 8007BC90 906E0000 */  lbu        $t6, 0x0($v1)
/* 36494 8007BC94 904F0000 */  lbu        $t7, 0x0($v0)
/* 36498 8007BC98 24420001 */  addiu      $v0, $v0, 0x1
/* 3649C 8007BC9C 11CF0003 */  beq        $t6, $t7, .L8007BCAC
/* 364A0 8007BCA0 00000000 */   nop
/* 364A4 8007BCA4 10000003 */  b          .L8007BCB4
/* 364A8 8007BCA8 24050001 */   addiu     $a1, $zero, 0x1
.L8007BCAC:
/* 364AC 8007BCAC 1444FFF8 */  bne        $v0, $a0, .L8007BC90
/* 364B0 8007BCB0 24630001 */   addiu     $v1, $v1, 0x1
.L8007BCB4:
/* 364B4 8007BCB4 14A0000D */  bnez       $a1, .L8007BCEC
/* 364B8 8007BCB8 3C04801B */   lui       $a0, %hi(D_801AEA18)
/* 364BC 8007BCBC 2484EA18 */  addiu      $a0, $a0, %lo(D_801AEA18)
/* 364C0 8007BCC0 0C01EEFE */  jal        func_8007BBF8
/* 364C4 8007BCC4 AFA50018 */   sw        $a1, 0x18($sp)
/* 364C8 8007BCC8 3C18801B */  lui        $t8, %hi(D_801AEA1A)
/* 364CC 8007BCCC 9718EA1A */  lhu        $t8, %lo(D_801AEA1A)($t8)
/* 364D0 8007BCD0 8FA50018 */  lw         $a1, 0x18($sp)
/* 364D4 8007BCD4 10580005 */  beq        $v0, $t8, .L8007BCEC
/* 364D8 8007BCD8 00000000 */   nop
/* 364DC 8007BCDC 24050001 */  addiu      $a1, $zero, 0x1
/* 364E0 8007BCE0 0C01EEFC */  jal        func_8007BBF0
/* 364E4 8007BCE4 AFA50018 */   sw        $a1, 0x18($sp)
/* 364E8 8007BCE8 8FA50018 */  lw         $a1, 0x18($sp)
.L8007BCEC:
/* 364EC 8007BCEC 50A00008 */  beql       $a1, $zero, .L8007BD10
/* 364F0 8007BCF0 00001025 */   or        $v0, $zero, $zero
/* 364F4 8007BCF4 0C01EF6E */  jal        func_8007BDB8
/* 364F8 8007BCF8 00000000 */   nop
/* 364FC 8007BCFC 50400004 */  beql       $v0, $zero, .L8007BD10
/* 36500 8007BD00 00001025 */   or        $v0, $zero, $zero
/* 36504 8007BD04 10000003 */  b          .L8007BD14
/* 36508 8007BD08 8FBF0014 */   lw        $ra, 0x14($sp)
/* 3650C 8007BD0C 00001025 */  or         $v0, $zero, $zero
.L8007BD10:
/* 36510 8007BD10 8FBF0014 */  lw         $ra, 0x14($sp)
.L8007BD14:
/* 36514 8007BD14 27BD0020 */  addiu      $sp, $sp, 0x20
/* 36518 8007BD18 03E00008 */  jr         $ra
/* 3651C 8007BD1C 00000000 */   nop

glabel func_8007BD20
/* 36520 8007BD20 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 36524 8007BD24 AFBF0014 */  sw         $ra, 0x14($sp)
/* 36528 8007BD28 3C04801B */  lui        $a0, %hi(D_801AEA18)
/* 3652C 8007BD2C 0C01EEFE */  jal        func_8007BBF8
/* 36530 8007BD30 2484EA18 */   addiu     $a0, $a0, %lo(D_801AEA18)
/* 36534 8007BD34 3C06801B */  lui        $a2, %hi(D_801AEA18)
/* 36538 8007BD38 24C6EA18 */  addiu      $a2, $a2, %lo(D_801AEA18)
/* 3653C 8007BD3C 3C048015 */  lui        $a0, %hi(D_801540D0)
/* 36540 8007BD40 A4C20002 */  sh         $v0, 0x2($a2)
/* 36544 8007BD44 248440D0 */  addiu      $a0, $a0, %lo(D_801540D0)
/* 36548 8007BD48 00002825 */  or         $a1, $zero, $zero
/* 3654C 8007BD4C 0C032104 */  jal        func_800C8410
/* 36550 8007BD50 24070200 */   addiu     $a3, $zero, 0x200
/* 36554 8007BD54 10400003 */  beqz       $v0, .L8007BD64
/* 36558 8007BD58 8FBF0014 */   lw        $ra, 0x14($sp)
/* 3655C 8007BD5C 10000002 */  b          .L8007BD68
/* 36560 8007BD60 24020003 */   addiu     $v0, $zero, 0x3
.L8007BD64:
/* 36564 8007BD64 00001025 */  or         $v0, $zero, $zero
.L8007BD68:
/* 36568 8007BD68 03E00008 */  jr         $ra
/* 3656C 8007BD6C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007BD70
/* 36570 8007BD70 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 36574 8007BD74 AFBF0014 */  sw         $ra, 0x14($sp)
/* 36578 8007BD78 3C048015 */  lui        $a0, %hi(D_801540D0)
/* 3657C 8007BD7C 0C032154 */  jal        func_800C8550
/* 36580 8007BD80 248440D0 */   addiu     $a0, $a0, %lo(D_801540D0)
/* 36584 8007BD84 14400005 */  bnez       $v0, .L8007BD9C
/* 36588 8007BD88 240E0001 */   addiu     $t6, $zero, 0x1
/* 3658C 8007BD8C 3C01800E */  lui        $at, %hi(D_800D8260)
/* 36590 8007BD90 AC208260 */  sw         $zero, %lo(D_800D8260)($at)
/* 36594 8007BD94 10000004 */  b          .L8007BDA8
/* 36598 8007BD98 24020001 */   addiu     $v0, $zero, 0x1
.L8007BD9C:
/* 3659C 8007BD9C 3C01800E */  lui        $at, %hi(D_800D8260)
/* 365A0 8007BDA0 AC2E8260 */  sw         $t6, %lo(D_800D8260)($at)
/* 365A4 8007BDA4 00001025 */  or         $v0, $zero, $zero
.L8007BDA8:
/* 365A8 8007BDA8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 365AC 8007BDAC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 365B0 8007BDB0 03E00008 */  jr         $ra
/* 365B4 8007BDB4 00000000 */   nop

glabel func_8007BDB8
/* 365B8 8007BDB8 3C0E800E */  lui        $t6, %hi(D_800D8260)
/* 365BC 8007BDBC 8DCE8260 */  lw         $t6, %lo(D_800D8260)($t6)
/* 365C0 8007BDC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 365C4 8007BDC4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 365C8 8007BDC8 15C00003 */  bnez       $t6, .L8007BDD8
/* 365CC 8007BDCC 3C04801B */   lui       $a0, %hi(D_801AEA18)
/* 365D0 8007BDD0 10000007 */  b          .L8007BDF0
/* 365D4 8007BDD4 24020001 */   addiu     $v0, $zero, 0x1
.L8007BDD8:
/* 365D8 8007BDD8 0C01ECDC */  jal        func_8007B370
/* 365DC 8007BDDC 2484EA18 */   addiu     $a0, $a0, %lo(D_801AEA18)
/* 365E0 8007BDE0 0C01ED8C */  jal        func_8007B630
/* 365E4 8007BDE4 00000000 */   nop
/* 365E8 8007BDE8 0C01EF48 */  jal        func_8007BD20
/* 365EC 8007BDEC 00000000 */   nop
.L8007BDF0:
/* 365F0 8007BDF0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 365F4 8007BDF4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 365F8 8007BDF8 03E00008 */  jr         $ra
/* 365FC 8007BDFC 00000000 */   nop

glabel func_8007BE00
/* 36600 8007BE00 3C0E800E */  lui        $t6, %hi(D_800D8260)
/* 36604 8007BE04 8DCE8260 */  lw         $t6, %lo(D_800D8260)($t6)
/* 36608 8007BE08 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3660C 8007BE0C AFBF0014 */  sw         $ra, 0x14($sp)
/* 36610 8007BE10 15C00007 */  bnez       $t6, .L8007BE30
/* 36614 8007BE14 3C04801B */   lui       $a0, %hi(D_801AEA18)
/* 36618 8007BE18 0C01ECDC */  jal        func_8007B370
/* 3661C 8007BE1C 2484EA18 */   addiu     $a0, $a0, %lo(D_801AEA18)
/* 36620 8007BE20 0C01ED8C */  jal        func_8007B630
/* 36624 8007BE24 00000000 */   nop
/* 36628 8007BE28 1000000A */  b          .L8007BE54
/* 3662C 8007BE2C 24020001 */   addiu     $v0, $zero, 0x1
.L8007BE30:
/* 36630 8007BE30 0C01EF11 */  jal        func_8007BC44
/* 36634 8007BE34 00000000 */   nop
/* 36638 8007BE38 10400003 */  beqz       $v0, .L8007BE48
/* 3663C 8007BE3C 00000000 */   nop
/* 36640 8007BE40 10000005 */  b          .L8007BE58
/* 36644 8007BE44 8FBF0014 */   lw        $ra, 0x14($sp)
.L8007BE48:
/* 36648 8007BE48 0C01ED8C */  jal        func_8007B630
/* 3664C 8007BE4C 00000000 */   nop
/* 36650 8007BE50 00001025 */  or         $v0, $zero, $zero
.L8007BE54:
/* 36654 8007BE54 8FBF0014 */  lw         $ra, 0x14($sp)
.L8007BE58:
/* 36658 8007BE58 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3665C 8007BE5C 03E00008 */  jr         $ra
/* 36660 8007BE60 00000000 */   nop

glabel func_8007BE64
/* 36664 8007BE64 3C0E800E */  lui        $t6, %hi(D_800D8260)
/* 36668 8007BE68 8DCE8260 */  lw         $t6, %lo(D_800D8260)($t6)
/* 3666C 8007BE6C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 36670 8007BE70 AFBF0014 */  sw         $ra, 0x14($sp)
/* 36674 8007BE74 15C00003 */  bnez       $t6, .L8007BE84
/* 36678 8007BE78 00000000 */   nop
/* 3667C 8007BE7C 10000005 */  b          .L8007BE94
/* 36680 8007BE80 24020001 */   addiu     $v0, $zero, 0x1
.L8007BE84:
/* 36684 8007BE84 0C01EE4C */  jal        func_8007B930
/* 36688 8007BE88 00000000 */   nop
/* 3668C 8007BE8C 0C01EF48 */  jal        func_8007BD20
/* 36690 8007BE90 00000000 */   nop
.L8007BE94:
/* 36694 8007BE94 8FBF0014 */  lw         $ra, 0x14($sp)
/* 36698 8007BE98 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3669C 8007BE9C 03E00008 */  jr         $ra
/* 366A0 8007BEA0 00000000 */   nop

glabel func_8007BEA4
/* 366A4 8007BEA4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 366A8 8007BEA8 3C0E800E */  lui        $t6, %hi(D_800D8260)
/* 366AC 8007BEAC 8DCE8260 */  lw         $t6, %lo(D_800D8260)($t6)
/* 366B0 8007BEB0 AFB30020 */  sw         $s3, 0x20($sp)
/* 366B4 8007BEB4 00809825 */  or         $s3, $a0, $zero
/* 366B8 8007BEB8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 366BC 8007BEBC AFB2001C */  sw         $s2, 0x1C($sp)
/* 366C0 8007BEC0 AFB10018 */  sw         $s1, 0x18($sp)
/* 366C4 8007BEC4 15C00003 */  bnez       $t6, .L8007BED4
/* 366C8 8007BEC8 AFB00014 */   sw        $s0, 0x14($sp)
/* 366CC 8007BECC 10000073 */  b          .L8007C09C
/* 366D0 8007BED0 24020001 */   addiu     $v0, $zero, 0x1
.L8007BED4:
/* 366D4 8007BED4 1A600003 */  blez       $s3, .L8007BEE4
/* 366D8 8007BED8 2A610009 */   slti      $at, $s3, 0x9
/* 366DC 8007BEDC 14200003 */  bnez       $at, .L8007BEEC
/* 366E0 8007BEE0 2663FFFF */   addiu     $v1, $s3, -0x1
.L8007BEE4:
/* 366E4 8007BEE4 1000006D */  b          .L8007C09C
/* 366E8 8007BEE8 00001025 */   or        $v0, $zero, $zero
.L8007BEEC:
/* 366EC 8007BEEC 0003C880 */  sll        $t9, $v1, 2
/* 366F0 8007BEF0 0323C823 */  subu       $t9, $t9, $v1
/* 366F4 8007BEF4 00137900 */  sll        $t7, $s3, 4
/* 366F8 8007BEF8 01F37823 */  subu       $t7, $t7, $s3
/* 366FC 8007BEFC 0019C8C0 */  sll        $t9, $t9, 3
/* 36700 8007BF00 3C18801C */  lui        $t8, %hi(D_801C1FF0)
/* 36704 8007BF04 3C09801B */  lui        $t1, %hi(D_801AEA18)
/* 36708 8007BF08 2529EA18 */  addiu      $t1, $t1, %lo(D_801AEA18)
/* 3670C 8007BF0C 27181FF0 */  addiu      $t8, $t8, %lo(D_801C1FF0)
/* 36710 8007BF10 27280060 */  addiu      $t0, $t9, 0x60
/* 36714 8007BF14 000F7880 */  sll        $t7, $t7, 2
/* 36718 8007BF18 01F88821 */  addu       $s1, $t7, $t8
/* 3671C 8007BF1C 01098021 */  addu       $s0, $t0, $t1
/* 36720 8007BF20 00009025 */  or         $s2, $zero, $zero
/* 36724 8007BF24 AFA3002C */  sw         $v1, 0x2C($sp)
.L8007BF28:
/* 36728 8007BF28 02202025 */  or         $a0, $s1, $zero
/* 3672C 8007BF2C 0C01EBDE */  jal        func_8007AF78
/* 36730 8007BF30 02002825 */   or        $a1, $s0, $zero
/* 36734 8007BF34 26520006 */  addiu      $s2, $s2, 0x6
/* 36738 8007BF38 2A410012 */  slti       $at, $s2, 0x12
/* 3673C 8007BF3C 26310014 */  addiu      $s1, $s1, 0x14
/* 36740 8007BF40 1420FFF9 */  bnez       $at, .L8007BF28
/* 36744 8007BF44 26100006 */   addiu     $s0, $s0, 0x6
/* 36748 8007BF48 00135080 */  sll        $t2, $s3, 2
/* 3674C 8007BF4C 01535021 */  addu       $t2, $t2, $s3
/* 36750 8007BF50 3C0B801C */  lui        $t3, %hi(D_801C22C0)
/* 36754 8007BF54 256B22C0 */  addiu      $t3, $t3, %lo(D_801C22C0)
/* 36758 8007BF58 000A5080 */  sll        $t2, $t2, 2
/* 3675C 8007BF5C 014B2021 */  addu       $a0, $t2, $t3
/* 36760 8007BF60 0C01EBDE */  jal        func_8007AF78
/* 36764 8007BF64 02002825 */   or        $a1, $s0, $zero
/* 36768 8007BF68 8FAE002C */  lw         $t6, 0x2C($sp)
/* 3676C 8007BF6C 001360C0 */  sll        $t4, $s3, 3
/* 36770 8007BF70 01936021 */  addu       $t4, $t4, $s3
/* 36774 8007BF74 000E7880 */  sll        $t7, $t6, 2
/* 36778 8007BF78 01EE7823 */  subu       $t7, $t7, $t6
/* 3677C 8007BF7C 000F7840 */  sll        $t7, $t7, 1
/* 36780 8007BF80 3C0D801C */  lui        $t5, %hi(D_801C24A0)
/* 36784 8007BF84 3C19801B */  lui        $t9, %hi(D_801AEA18)
/* 36788 8007BF88 2739EA18 */  addiu      $t9, $t9, %lo(D_801AEA18)
/* 3678C 8007BF8C 25AD24A0 */  addiu      $t5, $t5, %lo(D_801C24A0)
/* 36790 8007BF90 25F801A8 */  addiu      $t8, $t7, 0x1A8
/* 36794 8007BF94 000C6080 */  sll        $t4, $t4, 2
/* 36798 8007BF98 018D8021 */  addu       $s0, $t4, $t5
/* 3679C 8007BF9C 03199021 */  addu       $s2, $t8, $t9
/* 367A0 8007BFA0 24130006 */  addiu      $s3, $zero, 0x6
/* 367A4 8007BFA4 00008825 */  or         $s1, $zero, $zero
.L8007BFA8:
/* 367A8 8007BFA8 8E040000 */  lw         $a0, 0x0($s0)
/* 367AC 8007BFAC 0C01ECAF */  jal        func_8007B2BC
/* 367B0 8007BFB0 02402825 */   or        $a1, $s2, $zero
/* 367B4 8007BFB4 26310003 */  addiu      $s1, $s1, 0x3
/* 367B8 8007BFB8 26100004 */  addiu      $s0, $s0, 0x4
/* 367BC 8007BFBC 1633FFFA */  bne        $s1, $s3, .L8007BFA8
/* 367C0 8007BFC0 26520003 */   addiu     $s2, $s2, 0x3
/* 367C4 8007BFC4 0C01ECC7 */  jal        func_8007B31C
/* 367C8 8007BFC8 00000000 */   nop
/* 367CC 8007BFCC 3C10801B */  lui        $s0, %hi(D_801AEA18)
/* 367D0 8007BFD0 2610EA18 */  addiu      $s0, $s0, %lo(D_801AEA18)
/* 367D4 8007BFD4 0C01EEFE */  jal        func_8007BBF8
/* 367D8 8007BFD8 02002025 */   or        $a0, $s0, $zero
/* 367DC 8007BFDC 3C128015 */  lui        $s2, %hi(D_801540D0)
/* 367E0 8007BFE0 265240D0 */  addiu      $s2, $s2, %lo(D_801540D0)
/* 367E4 8007BFE4 A6020002 */  sh         $v0, 0x2($s0)
/* 367E8 8007BFE8 02402025 */  or         $a0, $s2, $zero
/* 367EC 8007BFEC 00002825 */  or         $a1, $zero, $zero
/* 367F0 8007BFF0 02003025 */  or         $a2, $s0, $zero
/* 367F4 8007BFF4 0C032104 */  jal        func_800C8410
/* 367F8 8007BFF8 24070010 */   addiu     $a3, $zero, 0x10
/* 367FC 8007BFFC 10400003 */  beqz       $v0, .L8007C00C
/* 36800 8007C000 02402025 */   or        $a0, $s2, $zero
/* 36804 8007C004 10000025 */  b          .L8007C09C
/* 36808 8007C008 24020003 */   addiu     $v0, $zero, 0x3
.L8007C00C:
/* 3680C 8007C00C 8FA8002C */  lw         $t0, 0x2C($sp)
/* 36810 8007C010 02008825 */  or         $s1, $s0, $zero
/* 36814 8007C014 24070018 */  addiu      $a3, $zero, 0x18
/* 36818 8007C018 00084880 */  sll        $t1, $t0, 2
/* 3681C 8007C01C 01284823 */  subu       $t1, $t1, $t0
/* 36820 8007C020 000948C0 */  sll        $t1, $t1, 3
/* 36824 8007C024 02093021 */  addu       $a2, $s0, $t1
/* 36828 8007C028 24C60060 */  addiu      $a2, $a2, 0x60
/* 3682C 8007C02C 00D02823 */  subu       $a1, $a2, $s0
/* 36830 8007C030 000550C2 */  srl        $t2, $a1, 3
/* 36834 8007C034 0C032104 */  jal        func_800C8410
/* 36838 8007C038 314500FF */   andi      $a1, $t2, 0xFF
/* 3683C 8007C03C 10400003 */  beqz       $v0, .L8007C04C
/* 36840 8007C040 8FAC002C */   lw        $t4, 0x2C($sp)
/* 36844 8007C044 10000015 */  b          .L8007C09C
/* 36848 8007C048 24020003 */   addiu     $v0, $zero, 0x3
.L8007C04C:
/* 3684C 8007C04C 000C6880 */  sll        $t5, $t4, 2
/* 36850 8007C050 3C02800E */  lui        $v0, %hi(D_800D82B0)
/* 36854 8007C054 004D1021 */  addu       $v0, $v0, $t5
/* 36858 8007C058 8C4282B0 */  lw         $v0, %lo(D_800D82B0)($v0)
/* 3685C 8007C05C 3C0E801B */  lui        $t6, %hi(D_801AEBC0)
/* 36860 8007C060 25CEEBC0 */  addiu      $t6, $t6, %lo(D_801AEBC0)
/* 36864 8007C064 01D17823 */  subu       $t7, $t6, $s1
/* 36868 8007C068 01E22821 */  addu       $a1, $t7, $v0
/* 3686C 8007C06C 0005C0C2 */  srl        $t8, $a1, 3
/* 36870 8007C070 02023021 */  addu       $a2, $s0, $v0
/* 36874 8007C074 24C601A8 */  addiu      $a2, $a2, 0x1A8
/* 36878 8007C078 330500FF */  andi       $a1, $t8, 0xFF
/* 3687C 8007C07C 02402025 */  or         $a0, $s2, $zero
/* 36880 8007C080 0C032104 */  jal        func_800C8410
/* 36884 8007C084 24070010 */   addiu     $a3, $zero, 0x10
/* 36888 8007C088 50400004 */  beql       $v0, $zero, .L8007C09C
/* 3688C 8007C08C 00001025 */   or        $v0, $zero, $zero
/* 36890 8007C090 10000002 */  b          .L8007C09C
/* 36894 8007C094 24020003 */   addiu     $v0, $zero, 0x3
/* 36898 8007C098 00001025 */  or         $v0, $zero, $zero
.L8007C09C:
/* 3689C 8007C09C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 368A0 8007C0A0 8FB00014 */  lw         $s0, 0x14($sp)
/* 368A4 8007C0A4 8FB10018 */  lw         $s1, 0x18($sp)
/* 368A8 8007C0A8 8FB2001C */  lw         $s2, 0x1C($sp)
/* 368AC 8007C0AC 8FB30020 */  lw         $s3, 0x20($sp)
/* 368B0 8007C0B0 03E00008 */  jr         $ra
/* 368B4 8007C0B4 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8007C0B8
/* 368B8 8007C0B8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 368BC 8007C0BC 3C0E800E */  lui        $t6, %hi(D_800D8260)
/* 368C0 8007C0C0 8DCE8260 */  lw         $t6, %lo(D_800D8260)($t6)
/* 368C4 8007C0C4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 368C8 8007C0C8 AFB30020 */  sw         $s3, 0x20($sp)
/* 368CC 8007C0CC AFB2001C */  sw         $s2, 0x1C($sp)
/* 368D0 8007C0D0 AFB10018 */  sw         $s1, 0x18($sp)
/* 368D4 8007C0D4 AFB00014 */  sw         $s0, 0x14($sp)
/* 368D8 8007C0D8 15C00003 */  bnez       $t6, .L8007C0E8
/* 368DC 8007C0DC 00803025 */   or        $a2, $a0, $zero
/* 368E0 8007C0E0 10000041 */  b          .L8007C1E8
/* 368E4 8007C0E4 24020001 */   addiu     $v0, $zero, 0x1
.L8007C0E8:
/* 368E8 8007C0E8 28C10009 */  slti       $at, $a2, 0x9
/* 368EC 8007C0EC 14200003 */  bnez       $at, .L8007C0FC
/* 368F0 8007C0F0 00067880 */   sll       $t7, $a2, 2
/* 368F4 8007C0F4 1000003C */  b          .L8007C1E8
/* 368F8 8007C0F8 00001025 */   or        $v0, $zero, $zero
.L8007C0FC:
/* 368FC 8007C0FC 0006C900 */  sll        $t9, $a2, 4
/* 36900 8007C100 0326C823 */  subu       $t9, $t9, $a2
/* 36904 8007C104 01E67823 */  subu       $t7, $t7, $a2
/* 36908 8007C108 3C18801C */  lui        $t8, %hi(D_801C26E8)
/* 3690C 8007C10C 3C09801B */  lui        $t1, %hi(D_801AEA18)
/* 36910 8007C110 2529EA18 */  addiu      $t1, $t1, %lo(D_801AEA18)
/* 36914 8007C114 271826E8 */  addiu      $t8, $t8, %lo(D_801C26E8)
/* 36918 8007C118 000F7900 */  sll        $t7, $t7, 4
/* 3691C 8007C11C 27280120 */  addiu      $t0, $t9, 0x120
/* 36920 8007C120 01099021 */  addu       $s2, $t0, $t1
/* 36924 8007C124 01F88021 */  addu       $s0, $t7, $t8
/* 36928 8007C128 00008825 */  or         $s1, $zero, $zero
/* 3692C 8007C12C AFA60028 */  sw         $a2, 0x28($sp)
/* 36930 8007C130 2413000F */  addiu      $s3, $zero, 0xF
.L8007C134:
/* 36934 8007C134 02002025 */  or         $a0, $s0, $zero
/* 36938 8007C138 0C01EC6B */  jal        func_8007B1AC
/* 3693C 8007C13C 02402825 */   or        $a1, $s2, $zero
/* 36940 8007C140 26310005 */  addiu      $s1, $s1, 0x5
/* 36944 8007C144 26100010 */  addiu      $s0, $s0, 0x10
/* 36948 8007C148 1633FFFA */  bne        $s1, $s3, .L8007C134
/* 3694C 8007C14C 26520005 */   addiu     $s2, $s2, 0x5
/* 36950 8007C150 0C01ECC7 */  jal        func_8007B31C
/* 36954 8007C154 00000000 */   nop
/* 36958 8007C158 3C10801B */  lui        $s0, %hi(D_801AEA18)
/* 3695C 8007C15C 2610EA18 */  addiu      $s0, $s0, %lo(D_801AEA18)
/* 36960 8007C160 0C01EEFE */  jal        func_8007BBF8
/* 36964 8007C164 02002025 */   or        $a0, $s0, $zero
/* 36968 8007C168 3C118015 */  lui        $s1, %hi(D_801540D0)
/* 3696C 8007C16C 263140D0 */  addiu      $s1, $s1, %lo(D_801540D0)
/* 36970 8007C170 A6020002 */  sh         $v0, 0x2($s0)
/* 36974 8007C174 02202025 */  or         $a0, $s1, $zero
/* 36978 8007C178 00002825 */  or         $a1, $zero, $zero
/* 3697C 8007C17C 02003025 */  or         $a2, $s0, $zero
/* 36980 8007C180 0C032104 */  jal        func_800C8410
/* 36984 8007C184 24070010 */   addiu     $a3, $zero, 0x10
/* 36988 8007C188 10400003 */  beqz       $v0, .L8007C198
/* 3698C 8007C18C 8FAA0028 */   lw        $t2, 0x28($sp)
/* 36990 8007C190 10000015 */  b          .L8007C1E8
/* 36994 8007C194 24020003 */   addiu     $v0, $zero, 0x3
.L8007C198:
/* 36998 8007C198 000A5880 */  sll        $t3, $t2, 2
/* 3699C 8007C19C 3C02800E */  lui        $v0, %hi(D_800D826C)
/* 369A0 8007C1A0 004B1021 */  addu       $v0, $v0, $t3
/* 369A4 8007C1A4 8C42826C */  lw         $v0, %lo(D_800D826C)($v0)
/* 369A8 8007C1A8 3C0C801B */  lui        $t4, %hi(D_801AEB38)
/* 369AC 8007C1AC 258CEB38 */  addiu      $t4, $t4, %lo(D_801AEB38)
/* 369B0 8007C1B0 01906823 */  subu       $t5, $t4, $s0
/* 369B4 8007C1B4 01A22821 */  addu       $a1, $t5, $v0
/* 369B8 8007C1B8 000570C2 */  srl        $t6, $a1, 3
/* 369BC 8007C1BC 02023021 */  addu       $a2, $s0, $v0
/* 369C0 8007C1C0 24C60120 */  addiu      $a2, $a2, 0x120
/* 369C4 8007C1C4 31C500FF */  andi       $a1, $t6, 0xFF
/* 369C8 8007C1C8 02202025 */  or         $a0, $s1, $zero
/* 369CC 8007C1CC 0C032104 */  jal        func_800C8410
/* 369D0 8007C1D0 24070018 */   addiu     $a3, $zero, 0x18
/* 369D4 8007C1D4 50400004 */  beql       $v0, $zero, .L8007C1E8
/* 369D8 8007C1D8 00001025 */   or        $v0, $zero, $zero
/* 369DC 8007C1DC 10000002 */  b          .L8007C1E8
/* 369E0 8007C1E0 24020003 */   addiu     $v0, $zero, 0x3
/* 369E4 8007C1E4 00001025 */  or         $v0, $zero, $zero
.L8007C1E8:
/* 369E8 8007C1E8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 369EC 8007C1EC 8FB00014 */  lw         $s0, 0x14($sp)
/* 369F0 8007C1F0 8FB10018 */  lw         $s1, 0x18($sp)
/* 369F4 8007C1F4 8FB2001C */  lw         $s2, 0x1C($sp)
/* 369F8 8007C1F8 8FB30020 */  lw         $s3, 0x20($sp)
/* 369FC 8007C1FC 03E00008 */  jr         $ra
/* 36A00 8007C200 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8007C204
/* 36A04 8007C204 3C0E800E */  lui        $t6, %hi(D_800D8260)
/* 36A08 8007C208 8DCE8260 */  lw         $t6, %lo(D_800D8260)($t6)
/* 36A0C 8007C20C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 36A10 8007C210 AFBF001C */  sw         $ra, 0x1C($sp)
/* 36A14 8007C214 AFB00018 */  sw         $s0, 0x18($sp)
/* 36A18 8007C218 15C00003 */  bnez       $t6, .L8007C228
/* 36A1C 8007C21C 00803025 */   or        $a2, $a0, $zero
/* 36A20 8007C220 10000039 */  b          .L8007C308
/* 36A24 8007C224 24020001 */   addiu     $v0, $zero, 0x1
.L8007C228:
/* 36A28 8007C228 18C00003 */  blez       $a2, .L8007C238
/* 36A2C 8007C22C 28C10009 */   slti      $at, $a2, 0x9
/* 36A30 8007C230 14200003 */  bnez       $at, .L8007C240
/* 36A34 8007C234 3C10801B */   lui       $s0, %hi(D_801AEA18)
.L8007C238:
/* 36A38 8007C238 10000033 */  b          .L8007C308
/* 36A3C 8007C23C 00001025 */   or        $v0, $zero, $zero
.L8007C240:
/* 36A40 8007C240 0006C080 */  sll        $t8, $a2, 2
/* 36A44 8007C244 00064080 */  sll        $t0, $a2, 2
/* 36A48 8007C248 2610EA18 */  addiu      $s0, $s0, %lo(D_801AEA18)
/* 36A4C 8007C24C 01064021 */  addu       $t0, $t0, $a2
/* 36A50 8007C250 0306C021 */  addu       $t8, $t8, $a2
/* 36A54 8007C254 3C19801C */  lui        $t9, %hi(D_801C23B0)
/* 36A58 8007C258 24CFFFFF */  addiu      $t7, $a2, -0x1
/* 36A5C 8007C25C 273923B0 */  addiu      $t9, $t9, %lo(D_801C23B0)
/* 36A60 8007C260 0018C080 */  sll        $t8, $t8, 2
/* 36A64 8007C264 02082821 */  addu       $a1, $s0, $t0
/* 36A68 8007C268 AFAF0024 */  sw         $t7, 0x24($sp)
/* 36A6C 8007C26C 24A501D3 */  addiu      $a1, $a1, 0x1D3
/* 36A70 8007C270 0C01EC27 */  jal        func_8007B09C
/* 36A74 8007C274 03192021 */   addu      $a0, $t8, $t9
/* 36A78 8007C278 0C01ECC7 */  jal        func_8007B31C
/* 36A7C 8007C27C 00000000 */   nop
/* 36A80 8007C280 0C01EEFE */  jal        func_8007BBF8
/* 36A84 8007C284 02002025 */   or        $a0, $s0, $zero
/* 36A88 8007C288 3C048015 */  lui        $a0, %hi(D_801540D0)
/* 36A8C 8007C28C A6020002 */  sh         $v0, 0x2($s0)
/* 36A90 8007C290 248440D0 */  addiu      $a0, $a0, %lo(D_801540D0)
/* 36A94 8007C294 00002825 */  or         $a1, $zero, $zero
/* 36A98 8007C298 02003025 */  or         $a2, $s0, $zero
/* 36A9C 8007C29C 0C032104 */  jal        func_800C8410
/* 36AA0 8007C2A0 24070010 */   addiu     $a3, $zero, 0x10
/* 36AA4 8007C2A4 10400003 */  beqz       $v0, .L8007C2B4
/* 36AA8 8007C2A8 8FA90024 */   lw        $t1, 0x24($sp)
/* 36AAC 8007C2AC 10000016 */  b          .L8007C308
/* 36AB0 8007C2B0 24020003 */   addiu     $v0, $zero, 0x3
.L8007C2B4:
/* 36AB4 8007C2B4 00095080 */  sll        $t2, $t1, 2
/* 36AB8 8007C2B8 3C02800E */  lui        $v0, %hi(D_800D8290)
/* 36ABC 8007C2BC 004A1021 */  addu       $v0, $v0, $t2
/* 36AC0 8007C2C0 8C428290 */  lw         $v0, %lo(D_800D8290)($v0)
/* 36AC4 8007C2C4 3C0B801B */  lui        $t3, %hi(D_801AEBF0)
/* 36AC8 8007C2C8 256BEBF0 */  addiu      $t3, $t3, %lo(D_801AEBF0)
/* 36ACC 8007C2CC 01706023 */  subu       $t4, $t3, $s0
/* 36AD0 8007C2D0 01822821 */  addu       $a1, $t4, $v0
/* 36AD4 8007C2D4 000568C2 */  srl        $t5, $a1, 3
/* 36AD8 8007C2D8 3C048015 */  lui        $a0, %hi(D_801540D0)
/* 36ADC 8007C2DC 02023021 */  addu       $a2, $s0, $v0
/* 36AE0 8007C2E0 24C601D8 */  addiu      $a2, $a2, 0x1D8
/* 36AE4 8007C2E4 248440D0 */  addiu      $a0, $a0, %lo(D_801540D0)
/* 36AE8 8007C2E8 31A500FF */  andi       $a1, $t5, 0xFF
/* 36AEC 8007C2EC 0C032104 */  jal        func_800C8410
/* 36AF0 8007C2F0 24070010 */   addiu     $a3, $zero, 0x10
/* 36AF4 8007C2F4 50400004 */  beql       $v0, $zero, .L8007C308
/* 36AF8 8007C2F8 00001025 */   or        $v0, $zero, $zero
/* 36AFC 8007C2FC 10000002 */  b          .L8007C308
/* 36B00 8007C300 24020003 */   addiu     $v0, $zero, 0x3
/* 36B04 8007C304 00001025 */  or         $v0, $zero, $zero
.L8007C308:
/* 36B08 8007C308 8FBF001C */  lw         $ra, 0x1C($sp)
/* 36B0C 8007C30C 8FB00018 */  lw         $s0, 0x18($sp)
/* 36B10 8007C310 27BD0030 */  addiu      $sp, $sp, 0x30
/* 36B14 8007C314 03E00008 */  jr         $ra
/* 36B18 8007C318 00000000 */   nop

glabel func_8007C31C
/* 36B1C 8007C31C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 36B20 8007C320 3C0E800E */  lui        $t6, %hi(D_800D8260)
/* 36B24 8007C324 8DCE8260 */  lw         $t6, %lo(D_800D8260)($t6)
/* 36B28 8007C328 AFBF002C */  sw         $ra, 0x2C($sp)
/* 36B2C 8007C32C AFB50028 */  sw         $s5, 0x28($sp)
/* 36B30 8007C330 AFB40024 */  sw         $s4, 0x24($sp)
/* 36B34 8007C334 AFB30020 */  sw         $s3, 0x20($sp)
/* 36B38 8007C338 AFB2001C */  sw         $s2, 0x1C($sp)
/* 36B3C 8007C33C AFB10018 */  sw         $s1, 0x18($sp)
/* 36B40 8007C340 15C00003 */  bnez       $t6, .L8007C350
/* 36B44 8007C344 AFB00014 */   sw        $s0, 0x14($sp)
/* 36B48 8007C348 10000049 */  b          .L8007C470
/* 36B4C 8007C34C 24020001 */   addiu     $v0, $zero, 0x1
.L8007C350:
/* 36B50 8007C350 3C13801B */  lui        $s3, %hi(D_801AEA28)
/* 36B54 8007C354 3C14801D */  lui        $s4, %hi(D_801CB298)
/* 36B58 8007C358 3C11801D */  lui        $s1, %hi(D_801CB308)
/* 36B5C 8007C35C 2631B308 */  addiu      $s1, $s1, %lo(D_801CB308)
/* 36B60 8007C360 2694B298 */  addiu      $s4, $s4, %lo(D_801CB298)
/* 36B64 8007C364 2673EA28 */  addiu      $s3, $s3, %lo(D_801AEA28)
/* 36B68 8007C368 00009025 */  or         $s2, $zero, $zero
/* 36B6C 8007C36C 24150004 */  addiu      $s5, $zero, 0x4
/* 36B70 8007C370 24100003 */  addiu      $s0, $zero, 0x3
.L8007C374:
/* 36B74 8007C374 02602025 */  or         $a0, $s3, $zero
/* 36B78 8007C378 02802825 */  or         $a1, $s4, $zero
/* 36B7C 8007C37C 0C01A850 */  jal        func_8006A140
/* 36B80 8007C380 2406000A */   addiu     $a2, $zero, 0xA
/* 36B84 8007C384 001240C0 */  sll        $t0, $s2, 3
/* 36B88 8007C388 01124023 */  subu       $t0, $t0, $s2
/* 36B8C 8007C38C 00127880 */  sll        $t7, $s2, 2
/* 36B90 8007C390 3C18801B */  lui        $t8, %hi(D_801AEA18)
/* 36B94 8007C394 3C19801D */  lui        $t9, %hi(D_801CB298)
/* 36B98 8007C398 2726B298 */  addiu      $a2, $t9, %lo(D_801CB298)
/* 36B9C 8007C39C 2718EA18 */  addiu      $t8, $t8, %lo(D_801AEA18)
/* 36BA0 8007C3A0 01F27823 */  subu       $t7, $t7, $s2
/* 36BA4 8007C3A4 00084040 */  sll        $t0, $t0, 1
/* 36BA8 8007C3A8 01063821 */  addu       $a3, $t0, $a2
/* 36BAC 8007C3AC 01F82821 */  addu       $a1, $t7, $t8
.L8007C3B0:
/* 36BB0 8007C3B0 00001025 */  or         $v0, $zero, $zero
/* 36BB4 8007C3B4 00A01825 */  or         $v1, $a1, $zero
/* 36BB8 8007C3B8 00E02025 */  or         $a0, $a3, $zero
.L8007C3BC:
/* 36BBC 8007C3BC 8089000B */  lb         $t1, 0xB($a0)
/* 36BC0 8007C3C0 24420001 */  addiu      $v0, $v0, 0x1
/* 36BC4 8007C3C4 24630001 */  addiu      $v1, $v1, 0x1
/* 36BC8 8007C3C8 24840001 */  addiu      $a0, $a0, 0x1
/* 36BCC 8007C3CC 1450FFFB */  bne        $v0, $s0, .L8007C3BC
/* 36BD0 8007C3D0 A0690037 */   sb        $t1, 0x37($v1)
/* 36BD4 8007C3D4 24C60038 */  addiu      $a2, $a2, 0x38
/* 36BD8 8007C3D8 00D1082B */  sltu       $at, $a2, $s1
/* 36BDC 8007C3DC 24A5000C */  addiu      $a1, $a1, 0xC
/* 36BE0 8007C3E0 1420FFF3 */  bnez       $at, .L8007C3B0
/* 36BE4 8007C3E4 24E70038 */   addiu     $a3, $a3, 0x38
/* 36BE8 8007C3E8 26520001 */  addiu      $s2, $s2, 0x1
/* 36BEC 8007C3EC 2673000A */  addiu      $s3, $s3, 0xA
/* 36BF0 8007C3F0 1655FFE0 */  bne        $s2, $s5, .L8007C374
/* 36BF4 8007C3F4 2694000E */   addiu     $s4, $s4, 0xE
/* 36BF8 8007C3F8 0C01ECC7 */  jal        func_8007B31C
/* 36BFC 8007C3FC 00000000 */   nop
/* 36C00 8007C400 3C10801B */  lui        $s0, %hi(D_801AEA18)
/* 36C04 8007C404 2610EA18 */  addiu      $s0, $s0, %lo(D_801AEA18)
/* 36C08 8007C408 0C01EEFE */  jal        func_8007BBF8
/* 36C0C 8007C40C 02002025 */   or        $a0, $s0, $zero
/* 36C10 8007C410 3C118015 */  lui        $s1, %hi(D_801540D0)
/* 36C14 8007C414 263140D0 */  addiu      $s1, $s1, %lo(D_801540D0)
/* 36C18 8007C418 A6020002 */  sh         $v0, 0x2($s0)
/* 36C1C 8007C41C 02202025 */  or         $a0, $s1, $zero
/* 36C20 8007C420 00002825 */  or         $a1, $zero, $zero
/* 36C24 8007C424 02003025 */  or         $a2, $s0, $zero
/* 36C28 8007C428 0C032104 */  jal        func_800C8410
/* 36C2C 8007C42C 24070010 */   addiu     $a3, $zero, 0x10
/* 36C30 8007C430 10400003 */  beqz       $v0, .L8007C440
/* 36C34 8007C434 3C06801B */   lui       $a2, %hi(D_801AEA28)
/* 36C38 8007C438 1000000D */  b          .L8007C470
/* 36C3C 8007C43C 24020003 */   addiu     $v0, $zero, 0x3
.L8007C440:
/* 36C40 8007C440 24C6EA28 */  addiu      $a2, $a2, %lo(D_801AEA28)
/* 36C44 8007C444 00D02823 */  subu       $a1, $a2, $s0
/* 36C48 8007C448 000550C2 */  srl        $t2, $a1, 3
/* 36C4C 8007C44C 314500FF */  andi       $a1, $t2, 0xFF
/* 36C50 8007C450 02202025 */  or         $a0, $s1, $zero
/* 36C54 8007C454 0C032104 */  jal        func_800C8410
/* 36C58 8007C458 24070040 */   addiu     $a3, $zero, 0x40
/* 36C5C 8007C45C 50400004 */  beql       $v0, $zero, .L8007C470
/* 36C60 8007C460 00001025 */   or        $v0, $zero, $zero
/* 36C64 8007C464 10000002 */  b          .L8007C470
/* 36C68 8007C468 24020003 */   addiu     $v0, $zero, 0x3
/* 36C6C 8007C46C 00001025 */  or         $v0, $zero, $zero
.L8007C470:
/* 36C70 8007C470 8FBF002C */  lw         $ra, 0x2C($sp)
/* 36C74 8007C474 8FB00014 */  lw         $s0, 0x14($sp)
/* 36C78 8007C478 8FB10018 */  lw         $s1, 0x18($sp)
/* 36C7C 8007C47C 8FB2001C */  lw         $s2, 0x1C($sp)
/* 36C80 8007C480 8FB30020 */  lw         $s3, 0x20($sp)
/* 36C84 8007C484 8FB40024 */  lw         $s4, 0x24($sp)
/* 36C88 8007C488 8FB50028 */  lw         $s5, 0x28($sp)
/* 36C8C 8007C48C 03E00008 */  jr         $ra
/* 36C90 8007C490 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8007C494
/* 36C94 8007C494 3C0E800E */  lui        $t6, %hi(D_800D8260)
/* 36C98 8007C498 8DCE8260 */  lw         $t6, %lo(D_800D8260)($t6)
/* 36C9C 8007C49C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 36CA0 8007C4A0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 36CA4 8007C4A4 15C00003 */  bnez       $t6, .L8007C4B4
/* 36CA8 8007C4A8 00000000 */   nop
/* 36CAC 8007C4AC 10000013 */  b          .L8007C4FC
/* 36CB0 8007C4B0 24020001 */   addiu     $v0, $zero, 0x1
.L8007C4B4:
/* 36CB4 8007C4B4 0C01ECC7 */  jal        func_8007B31C
/* 36CB8 8007C4B8 00000000 */   nop
/* 36CBC 8007C4BC 3C04801B */  lui        $a0, %hi(D_801AEA18)
/* 36CC0 8007C4C0 0C01EEFE */  jal        func_8007BBF8
/* 36CC4 8007C4C4 2484EA18 */   addiu     $a0, $a0, %lo(D_801AEA18)
/* 36CC8 8007C4C8 3C06801B */  lui        $a2, %hi(D_801AEA18)
/* 36CCC 8007C4CC 24C6EA18 */  addiu      $a2, $a2, %lo(D_801AEA18)
/* 36CD0 8007C4D0 3C048015 */  lui        $a0, %hi(D_801540D0)
/* 36CD4 8007C4D4 A4C20002 */  sh         $v0, 0x2($a2)
/* 36CD8 8007C4D8 248440D0 */  addiu      $a0, $a0, %lo(D_801540D0)
/* 36CDC 8007C4DC 00002825 */  or         $a1, $zero, $zero
/* 36CE0 8007C4E0 0C032104 */  jal        func_800C8410
/* 36CE4 8007C4E4 24070010 */   addiu     $a3, $zero, 0x10
/* 36CE8 8007C4E8 50400004 */  beql       $v0, $zero, .L8007C4FC
/* 36CEC 8007C4EC 00001025 */   or        $v0, $zero, $zero
/* 36CF0 8007C4F0 10000002 */  b          .L8007C4FC
/* 36CF4 8007C4F4 24020003 */   addiu     $v0, $zero, 0x3
/* 36CF8 8007C4F8 00001025 */  or         $v0, $zero, $zero
.L8007C4FC:
/* 36CFC 8007C4FC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 36D00 8007C500 27BD0018 */  addiu      $sp, $sp, 0x18
/* 36D04 8007C504 03E00008 */  jr         $ra
/* 36D08 8007C508 00000000 */   nop

glabel func_8007C50C
/* 36D0C 8007C50C 3C0E800E */  lui        $t6, %hi(D_800D8260)
/* 36D10 8007C510 8DCE8260 */  lw         $t6, %lo(D_800D8260)($t6)
/* 36D14 8007C514 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 36D18 8007C518 AFBF0014 */  sw         $ra, 0x14($sp)
/* 36D1C 8007C51C 15C00003 */  bnez       $t6, .L8007C52C
/* 36D20 8007C520 3C07801B */   lui       $a3, %hi(D_801AEA18)
/* 36D24 8007C524 10000033 */  b          .L8007C5F4
/* 36D28 8007C528 24020001 */   addiu     $v0, $zero, 0x1
.L8007C52C:
/* 36D2C 8007C52C 3C06801D */  lui        $a2, %hi(D_801CB308)
/* 36D30 8007C530 3C08801D */  lui        $t0, %hi(D_801CB32C)
/* 36D34 8007C534 2508B32C */  addiu      $t0, $t0, %lo(D_801CB32C)
/* 36D38 8007C538 24C6B308 */  addiu      $a2, $a2, %lo(D_801CB308)
/* 36D3C 8007C53C 24E7EA18 */  addiu      $a3, $a3, %lo(D_801AEA18)
/* 36D40 8007C540 24050003 */  addiu      $a1, $zero, 0x3
.L8007C544:
/* 36D44 8007C544 00001025 */  or         $v0, $zero, $zero
/* 36D48 8007C548 00E01825 */  or         $v1, $a3, $zero
/* 36D4C 8007C54C 00C02025 */  or         $a0, $a2, $zero
.L8007C550:
/* 36D50 8007C550 8C8F0000 */  lw         $t7, 0x0($a0)
/* 36D54 8007C554 24420001 */  addiu      $v0, $v0, 0x1
/* 36D58 8007C558 24630001 */  addiu      $v1, $v1, 0x1
/* 36D5C 8007C55C 24840004 */  addiu      $a0, $a0, 0x4
/* 36D60 8007C560 1445FFFB */  bne        $v0, $a1, .L8007C550
/* 36D64 8007C564 A06F004F */   sb        $t7, 0x4F($v1)
/* 36D68 8007C568 24C6000C */  addiu      $a2, $a2, 0xC
/* 36D6C 8007C56C 14C8FFF5 */  bne        $a2, $t0, .L8007C544
/* 36D70 8007C570 24E70003 */   addiu     $a3, $a3, 0x3
/* 36D74 8007C574 0C01ECC7 */  jal        func_8007B31C
/* 36D78 8007C578 00000000 */   nop
/* 36D7C 8007C57C 3C04801B */  lui        $a0, %hi(D_801AEA18)
/* 36D80 8007C580 0C01EEFE */  jal        func_8007BBF8
/* 36D84 8007C584 2484EA18 */   addiu     $a0, $a0, %lo(D_801AEA18)
/* 36D88 8007C588 3C06801B */  lui        $a2, %hi(D_801AEA18)
/* 36D8C 8007C58C 24C6EA18 */  addiu      $a2, $a2, %lo(D_801AEA18)
/* 36D90 8007C590 3C048015 */  lui        $a0, %hi(D_801540D0)
/* 36D94 8007C594 A4C20002 */  sh         $v0, 0x2($a2)
/* 36D98 8007C598 248440D0 */  addiu      $a0, $a0, %lo(D_801540D0)
/* 36D9C 8007C59C 00002825 */  or         $a1, $zero, $zero
/* 36DA0 8007C5A0 0C032104 */  jal        func_800C8410
/* 36DA4 8007C5A4 24070010 */   addiu     $a3, $zero, 0x10
/* 36DA8 8007C5A8 10400003 */  beqz       $v0, .L8007C5B8
/* 36DAC 8007C5AC 3C06801B */   lui       $a2, %hi(D_801AEA68)
/* 36DB0 8007C5B0 10000010 */  b          .L8007C5F4
/* 36DB4 8007C5B4 24020003 */   addiu     $v0, $zero, 0x3
.L8007C5B8:
/* 36DB8 8007C5B8 3C18801B */  lui        $t8, %hi(D_801AEA18)
/* 36DBC 8007C5BC 24C6EA68 */  addiu      $a2, $a2, %lo(D_801AEA68)
/* 36DC0 8007C5C0 2718EA18 */  addiu      $t8, $t8, %lo(D_801AEA18)
/* 36DC4 8007C5C4 00D82823 */  subu       $a1, $a2, $t8
/* 36DC8 8007C5C8 0005C8C2 */  srl        $t9, $a1, 3
/* 36DCC 8007C5CC 3C048015 */  lui        $a0, %hi(D_801540D0)
/* 36DD0 8007C5D0 248440D0 */  addiu      $a0, $a0, %lo(D_801540D0)
/* 36DD4 8007C5D4 332500FF */  andi       $a1, $t9, 0xFF
/* 36DD8 8007C5D8 0C032104 */  jal        func_800C8410
/* 36DDC 8007C5DC 24070010 */   addiu     $a3, $zero, 0x10
/* 36DE0 8007C5E0 50400004 */  beql       $v0, $zero, .L8007C5F4
/* 36DE4 8007C5E4 00001025 */   or        $v0, $zero, $zero
/* 36DE8 8007C5E8 10000002 */  b          .L8007C5F4
/* 36DEC 8007C5EC 24020003 */   addiu     $v0, $zero, 0x3
/* 36DF0 8007C5F0 00001025 */  or         $v0, $zero, $zero
.L8007C5F4:
/* 36DF4 8007C5F4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 36DF8 8007C5F8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 36DFC 8007C5FC 03E00008 */  jr         $ra
/* 36E00 8007C600 00000000 */   nop

glabel func_8007C604
/* 36E04 8007C604 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 36E08 8007C608 2486FFFF */  addiu      $a2, $a0, -0x1
/* 36E0C 8007C60C 00047900 */  sll        $t7, $a0, 4
/* 36E10 8007C610 01E47823 */  subu       $t7, $t7, $a0
/* 36E14 8007C614 0006C880 */  sll        $t9, $a2, 2
/* 36E18 8007C618 3C18801C */  lui        $t8, %hi(D_801C1FF0)
/* 36E1C 8007C61C 27181FF0 */  addiu      $t8, $t8, %lo(D_801C1FF0)
/* 36E20 8007C620 0326C821 */  addu       $t9, $t9, $a2
/* 36E24 8007C624 000F7880 */  sll        $t7, $t7, 2
/* 36E28 8007C628 3C09800E */  lui        $t1, %hi(D_800D82F8)
/* 36E2C 8007C62C AFB00014 */  sw         $s0, 0x14($sp)
/* 36E30 8007C630 252982F8 */  addiu      $t1, $t1, %lo(D_800D82F8)
/* 36E34 8007C634 01F83821 */  addu       $a3, $t7, $t8
/* 36E38 8007C638 0019C900 */  sll        $t9, $t9, 4
/* 36E3C 8007C63C AFBF0024 */  sw         $ra, 0x24($sp)
/* 36E40 8007C640 AFB30020 */  sw         $s3, 0x20($sp)
/* 36E44 8007C644 AFB2001C */  sw         $s2, 0x1C($sp)
/* 36E48 8007C648 AFB10018 */  sw         $s1, 0x18($sp)
/* 36E4C 8007C64C AFA40058 */  sw         $a0, 0x58($sp)
/* 36E50 8007C650 03291021 */  addu       $v0, $t9, $t1
/* 36E54 8007C654 00E08025 */  or         $s0, $a3, $zero
/* 36E58 8007C658 00001825 */  or         $v1, $zero, $zero
.L8007C65C:
/* 36E5C 8007C65C 8C410000 */  lw         $at, 0x0($v0)
/* 36E60 8007C660 8C4C0004 */  lw         $t4, 0x4($v0)
/* 36E64 8007C664 24630001 */  addiu      $v1, $v1, 0x1
/* 36E68 8007C668 AE010000 */  sw         $at, 0x0($s0)
/* 36E6C 8007C66C 8C410008 */  lw         $at, 0x8($v0)
/* 36E70 8007C670 AE0C0004 */  sw         $t4, 0x4($s0)
/* 36E74 8007C674 8C4C000C */  lw         $t4, 0xC($v0)
/* 36E78 8007C678 AE010008 */  sw         $at, 0x8($s0)
/* 36E7C 8007C67C 8C410010 */  lw         $at, 0x10($v0)
/* 36E80 8007C680 26100014 */  addiu      $s0, $s0, 0x14
/* 36E84 8007C684 24420014 */  addiu      $v0, $v0, 0x14
/* 36E88 8007C688 AE01FFFC */  sw         $at, -0x4($s0)
/* 36E8C 8007C68C 28610003 */  slti       $at, $v1, 0x3
/* 36E90 8007C690 1420FFF2 */  bnez       $at, .L8007C65C
/* 36E94 8007C694 AE0CFFF8 */   sw        $t4, -0x8($s0)
/* 36E98 8007C698 8FA50058 */  lw         $a1, 0x58($sp)
/* 36E9C 8007C69C 8C410000 */  lw         $at, 0x0($v0)
/* 36EA0 8007C6A0 3C0E801C */  lui        $t6, %hi(D_801C22C0)
/* 36EA4 8007C6A4 00056880 */  sll        $t5, $a1, 2
/* 36EA8 8007C6A8 01A56821 */  addu       $t5, $t5, $a1
/* 36EAC 8007C6AC 000D2880 */  sll        $a1, $t5, 2
/* 36EB0 8007C6B0 25CE22C0 */  addiu      $t6, $t6, %lo(D_801C22C0)
/* 36EB4 8007C6B4 00AE9821 */  addu       $s3, $a1, $t6
/* 36EB8 8007C6B8 AE610000 */  sw         $at, 0x0($s3)
/* 36EBC 8007C6BC 8C410008 */  lw         $at, 0x8($v0)
/* 36EC0 8007C6C0 8C580004 */  lw         $t8, 0x4($v0)
/* 36EC4 8007C6C4 8FB90058 */  lw         $t9, 0x58($sp)
/* 36EC8 8007C6C8 AE610008 */  sw         $at, 0x8($s3)
/* 36ECC 8007C6CC AE780004 */  sw         $t8, 0x4($s3)
/* 36ED0 8007C6D0 8C58000C */  lw         $t8, 0xC($v0)
/* 36ED4 8007C6D4 8C410010 */  lw         $at, 0x10($v0)
/* 36ED8 8007C6D8 00065080 */  sll        $t2, $a2, 2
/* 36EDC 8007C6DC 001948C0 */  sll        $t1, $t9, 3
/* 36EE0 8007C6E0 01465021 */  addu       $t2, $t2, $a2
/* 36EE4 8007C6E4 3C0B801C */  lui        $t3, %hi(D_801C24A0)
/* 36EE8 8007C6E8 01394821 */  addu       $t1, $t1, $t9
/* 36EEC 8007C6EC 00094880 */  sll        $t1, $t1, 2
/* 36EF0 8007C6F0 256B24A0 */  addiu      $t3, $t3, %lo(D_801C24A0)
/* 36EF4 8007C6F4 000A5100 */  sll        $t2, $t2, 4
/* 36EF8 8007C6F8 3C04800E */  lui        $a0, %hi(D_800D8334)
/* 36EFC 8007C6FC 008A2021 */  addu       $a0, $a0, $t2
/* 36F00 8007C700 012B4021 */  addu       $t0, $t1, $t3
/* 36F04 8007C704 AE78000C */  sw         $t8, 0xC($s3)
/* 36F08 8007C708 AE610010 */  sw         $at, 0x10($s3)
/* 36F0C 8007C70C 8C848334 */  lw         $a0, %lo(D_800D8334)($a0)
/* 36F10 8007C710 01008025 */  or         $s0, $t0, $zero
/* 36F14 8007C714 00001825 */  or         $v1, $zero, $zero
/* 36F18 8007C718 24620001 */  addiu      $v0, $v1, 0x1
.L8007C71C:
/* 36F1C 8007C71C 00820019 */  multu      $a0, $v0
/* 36F20 8007C720 28410002 */  slti       $at, $v0, 0x2
/* 36F24 8007C724 00401825 */  or         $v1, $v0, $zero
/* 36F28 8007C728 26100004 */  addiu      $s0, $s0, 0x4
/* 36F2C 8007C72C 00006012 */  mflo       $t4
/* 36F30 8007C730 AE0CFFFC */  sw         $t4, -0x4($s0)
/* 36F34 8007C734 5420FFF9 */  bnel       $at, $zero, .L8007C71C
/* 36F38 8007C738 24620001 */   addiu     $v0, $v1, 0x1
/* 36F3C 8007C73C 3C0E800E */  lui        $t6, %hi(D_800D8728)
/* 36F40 8007C740 25CE8728 */  addiu      $t6, $t6, %lo(D_800D8728)
/* 36F44 8007C744 8DC10000 */  lw         $at, 0x0($t6)
/* 36F48 8007C748 3C0D801C */  lui        $t5, %hi(D_801C23B0)
/* 36F4C 8007C74C 25AD23B0 */  addiu      $t5, $t5, %lo(D_801C23B0)
/* 36F50 8007C750 00AD1021 */  addu       $v0, $a1, $t5
/* 36F54 8007C754 AC410000 */  sw         $at, 0x0($v0)
/* 36F58 8007C758 8DD80004 */  lw         $t8, 0x4($t6)
/* 36F5C 8007C75C 0006C880 */  sll        $t9, $a2, 2
/* 36F60 8007C760 0326C823 */  subu       $t9, $t9, $a2
/* 36F64 8007C764 AC580004 */  sw         $t8, 0x4($v0)
/* 36F68 8007C768 8DC10008 */  lw         $at, 0x8($t6)
/* 36F6C 8007C76C 0019C8C0 */  sll        $t9, $t9, 3
/* 36F70 8007C770 3C0B801B */  lui        $t3, %hi(D_801AEA18)
/* 36F74 8007C774 AC410008 */  sw         $at, 0x8($v0)
/* 36F78 8007C778 8DD8000C */  lw         $t8, 0xC($t6)
/* 36F7C 8007C77C 256BEA18 */  addiu      $t3, $t3, %lo(D_801AEA18)
/* 36F80 8007C780 27290060 */  addiu      $t1, $t9, 0x60
/* 36F84 8007C784 AC58000C */  sw         $t8, 0xC($v0)
/* 36F88 8007C788 8DC10010 */  lw         $at, 0x10($t6)
/* 36F8C 8007C78C AFA80028 */  sw         $t0, 0x28($sp)
/* 36F90 8007C790 AFA60048 */  sw         $a2, 0x48($sp)
/* 36F94 8007C794 AFA20034 */  sw         $v0, 0x34($sp)
/* 36F98 8007C798 012B8821 */  addu       $s1, $t1, $t3
/* 36F9C 8007C79C 00E08025 */  or         $s0, $a3, $zero
/* 36FA0 8007C7A0 00009025 */  or         $s2, $zero, $zero
/* 36FA4 8007C7A4 AC410010 */  sw         $at, 0x10($v0)
.L8007C7A8:
/* 36FA8 8007C7A8 02002025 */  or         $a0, $s0, $zero
/* 36FAC 8007C7AC 0C01EBDE */  jal        func_8007AF78
/* 36FB0 8007C7B0 02202825 */   or        $a1, $s1, $zero
/* 36FB4 8007C7B4 26520006 */  addiu      $s2, $s2, 0x6
/* 36FB8 8007C7B8 2A410012 */  slti       $at, $s2, 0x12
/* 36FBC 8007C7BC 26100014 */  addiu      $s0, $s0, 0x14
/* 36FC0 8007C7C0 1420FFF9 */  bnez       $at, .L8007C7A8
/* 36FC4 8007C7C4 26310006 */   addiu     $s1, $s1, 0x6
/* 36FC8 8007C7C8 02602025 */  or         $a0, $s3, $zero
/* 36FCC 8007C7CC 0C01EBDE */  jal        func_8007AF78
/* 36FD0 8007C7D0 02202825 */   or        $a1, $s1, $zero
/* 36FD4 8007C7D4 8FAA0048 */  lw         $t2, 0x48($sp)
/* 36FD8 8007C7D8 3C0F801B */  lui        $t7, %hi(D_801AEA18)
/* 36FDC 8007C7DC 25EFEA18 */  addiu      $t7, $t7, %lo(D_801AEA18)
/* 36FE0 8007C7E0 000A6080 */  sll        $t4, $t2, 2
/* 36FE4 8007C7E4 018A6023 */  subu       $t4, $t4, $t2
/* 36FE8 8007C7E8 000C6040 */  sll        $t4, $t4, 1
/* 36FEC 8007C7EC 258D01A8 */  addiu      $t5, $t4, 0x1A8
/* 36FF0 8007C7F0 01AF9021 */  addu       $s2, $t5, $t7
/* 36FF4 8007C7F4 8FB00028 */  lw         $s0, 0x28($sp)
/* 36FF8 8007C7F8 00008825 */  or         $s1, $zero, $zero
/* 36FFC 8007C7FC 24130006 */  addiu      $s3, $zero, 0x6
.L8007C800:
/* 37000 8007C800 8E040000 */  lw         $a0, 0x0($s0)
/* 37004 8007C804 0C01ECAF */  jal        func_8007B2BC
/* 37008 8007C808 02402825 */   or        $a1, $s2, $zero
/* 3700C 8007C80C 26310003 */  addiu      $s1, $s1, 0x3
/* 37010 8007C810 26100004 */  addiu      $s0, $s0, 0x4
/* 37014 8007C814 1633FFFA */  bne        $s1, $s3, .L8007C800
/* 37018 8007C818 26520003 */   addiu     $s2, $s2, 0x3
/* 3701C 8007C81C 8FAE0048 */  lw         $t6, 0x48($sp)
/* 37020 8007C820 3C10801B */  lui        $s0, %hi(D_801AEA18)
/* 37024 8007C824 2610EA18 */  addiu      $s0, $s0, %lo(D_801AEA18)
/* 37028 8007C828 000EC080 */  sll        $t8, $t6, 2
/* 3702C 8007C82C 030EC021 */  addu       $t8, $t8, $t6
/* 37030 8007C830 02182821 */  addu       $a1, $s0, $t8
/* 37034 8007C834 24A501D8 */  addiu      $a1, $a1, 0x1D8
/* 37038 8007C838 0C01EC27 */  jal        func_8007B09C
/* 3703C 8007C83C 8FA40034 */   lw        $a0, 0x34($sp)
/* 37040 8007C840 0C01ECC7 */  jal        func_8007B31C
/* 37044 8007C844 00000000 */   nop
/* 37048 8007C848 0C01EEFE */  jal        func_8007BBF8
/* 3704C 8007C84C 02002025 */   or        $a0, $s0, $zero
/* 37050 8007C850 A6020002 */  sh         $v0, 0x2($s0)
/* 37054 8007C854 3C19800E */  lui        $t9, %hi(D_800D8260)
/* 37058 8007C858 8F398260 */  lw         $t9, %lo(D_800D8260)($t9)
/* 3705C 8007C85C 3C138015 */  lui        $s3, %hi(D_801540D0)
/* 37060 8007C860 267340D0 */  addiu      $s3, $s3, %lo(D_801540D0)
/* 37064 8007C864 17200003 */  bnez       $t9, .L8007C874
/* 37068 8007C868 02602025 */   or        $a0, $s3, $zero
/* 3706C 8007C86C 10000052 */  b          .L8007C9B8
/* 37070 8007C870 24020001 */   addiu     $v0, $zero, 0x1
.L8007C874:
/* 37074 8007C874 00002825 */  or         $a1, $zero, $zero
/* 37078 8007C878 02003025 */  or         $a2, $s0, $zero
/* 3707C 8007C87C 0C032104 */  jal        func_800C8410
/* 37080 8007C880 24070010 */   addiu     $a3, $zero, 0x10
/* 37084 8007C884 10400003 */  beqz       $v0, .L8007C894
/* 37088 8007C888 02602025 */   or        $a0, $s3, $zero
/* 3708C 8007C88C 1000004A */  b          .L8007C9B8
/* 37090 8007C890 24020003 */   addiu     $v0, $zero, 0x3
.L8007C894:
/* 37094 8007C894 8FA90048 */  lw         $t1, 0x48($sp)
/* 37098 8007C898 02008825 */  or         $s1, $s0, $zero
/* 3709C 8007C89C 24070018 */  addiu      $a3, $zero, 0x18
/* 370A0 8007C8A0 00095880 */  sll        $t3, $t1, 2
/* 370A4 8007C8A4 01695823 */  subu       $t3, $t3, $t1
/* 370A8 8007C8A8 000B58C0 */  sll        $t3, $t3, 3
/* 370AC 8007C8AC 020B3021 */  addu       $a2, $s0, $t3
/* 370B0 8007C8B0 24C60060 */  addiu      $a2, $a2, 0x60
/* 370B4 8007C8B4 00D02823 */  subu       $a1, $a2, $s0
/* 370B8 8007C8B8 000550C2 */  srl        $t2, $a1, 3
/* 370BC 8007C8BC 0C032104 */  jal        func_800C8410
/* 370C0 8007C8C0 314500FF */   andi      $a1, $t2, 0xFF
/* 370C4 8007C8C4 10400003 */  beqz       $v0, .L8007C8D4
/* 370C8 8007C8C8 8FAD0058 */   lw        $t5, 0x58($sp)
/* 370CC 8007C8CC 1000003A */  b          .L8007C9B8
/* 370D0 8007C8D0 24020003 */   addiu     $v0, $zero, 0x3
.L8007C8D4:
/* 370D4 8007C8D4 000D7880 */  sll        $t7, $t5, 2
/* 370D8 8007C8D8 3C02800E */  lui        $v0, %hi(D_800D826C)
/* 370DC 8007C8DC 004F1021 */  addu       $v0, $v0, $t7
/* 370E0 8007C8E0 8C42826C */  lw         $v0, %lo(D_800D826C)($v0)
/* 370E4 8007C8E4 3C0E801B */  lui        $t6, %hi(D_801AEB38)
/* 370E8 8007C8E8 25CEEB38 */  addiu      $t6, $t6, %lo(D_801AEB38)
/* 370EC 8007C8EC 01D1C023 */  subu       $t8, $t6, $s1
/* 370F0 8007C8F0 03022821 */  addu       $a1, $t8, $v0
/* 370F4 8007C8F4 0005C8C2 */  srl        $t9, $a1, 3
/* 370F8 8007C8F8 02023021 */  addu       $a2, $s0, $v0
/* 370FC 8007C8FC 24C60120 */  addiu      $a2, $a2, 0x120
/* 37100 8007C900 332500FF */  andi       $a1, $t9, 0xFF
/* 37104 8007C904 02602025 */  or         $a0, $s3, $zero
/* 37108 8007C908 0C032104 */  jal        func_800C8410
/* 3710C 8007C90C 24070018 */   addiu     $a3, $zero, 0x18
/* 37110 8007C910 10400003 */  beqz       $v0, .L8007C920
/* 37114 8007C914 8FB20048 */   lw        $s2, 0x48($sp)
/* 37118 8007C918 10000027 */  b          .L8007C9B8
/* 3711C 8007C91C 24020003 */   addiu     $v0, $zero, 0x3
.L8007C920:
/* 37120 8007C920 00125880 */  sll        $t3, $s2, 2
/* 37124 8007C924 3C02800E */  lui        $v0, %hi(D_800D82B0)
/* 37128 8007C928 004B1021 */  addu       $v0, $v0, $t3
/* 3712C 8007C92C 8C4282B0 */  lw         $v0, %lo(D_800D82B0)($v0)
/* 37130 8007C930 3C0A801B */  lui        $t2, %hi(D_801AEBC0)
/* 37134 8007C934 254AEBC0 */  addiu      $t2, $t2, %lo(D_801AEBC0)
/* 37138 8007C938 01516023 */  subu       $t4, $t2, $s1
/* 3713C 8007C93C 01822821 */  addu       $a1, $t4, $v0
/* 37140 8007C940 000568C2 */  srl        $t5, $a1, 3
/* 37144 8007C944 02023021 */  addu       $a2, $s0, $v0
/* 37148 8007C948 01609025 */  or         $s2, $t3, $zero
/* 3714C 8007C94C 24C601A8 */  addiu      $a2, $a2, 0x1A8
/* 37150 8007C950 31A500FF */  andi       $a1, $t5, 0xFF
/* 37154 8007C954 02602025 */  or         $a0, $s3, $zero
/* 37158 8007C958 0C032104 */  jal        func_800C8410
/* 3715C 8007C95C 24070010 */   addiu     $a3, $zero, 0x10
/* 37160 8007C960 10400003 */  beqz       $v0, .L8007C970
/* 37164 8007C964 02602025 */   or        $a0, $s3, $zero
/* 37168 8007C968 10000013 */  b          .L8007C9B8
/* 3716C 8007C96C 24020003 */   addiu     $v0, $zero, 0x3
.L8007C970:
/* 37170 8007C970 3C02800E */  lui        $v0, %hi(D_800D8290)
/* 37174 8007C974 00521021 */  addu       $v0, $v0, $s2
/* 37178 8007C978 8C428290 */  lw         $v0, %lo(D_800D8290)($v0)
/* 3717C 8007C97C 3C0E801B */  lui        $t6, %hi(D_801AEBF0)
/* 37180 8007C980 25CEEBF0 */  addiu      $t6, $t6, %lo(D_801AEBF0)
/* 37184 8007C984 01D1C023 */  subu       $t8, $t6, $s1
/* 37188 8007C988 03022821 */  addu       $a1, $t8, $v0
/* 3718C 8007C98C 0005C8C2 */  srl        $t9, $a1, 3
/* 37190 8007C990 02023021 */  addu       $a2, $s0, $v0
/* 37194 8007C994 24C601D8 */  addiu      $a2, $a2, 0x1D8
/* 37198 8007C998 332500FF */  andi       $a1, $t9, 0xFF
/* 3719C 8007C99C 0C032104 */  jal        func_800C8410
/* 371A0 8007C9A0 24070010 */   addiu     $a3, $zero, 0x10
/* 371A4 8007C9A4 50400004 */  beql       $v0, $zero, .L8007C9B8
/* 371A8 8007C9A8 00001025 */   or        $v0, $zero, $zero
/* 371AC 8007C9AC 10000002 */  b          .L8007C9B8
/* 371B0 8007C9B0 24020003 */   addiu     $v0, $zero, 0x3
/* 371B4 8007C9B4 00001025 */  or         $v0, $zero, $zero
.L8007C9B8:
/* 371B8 8007C9B8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 371BC 8007C9BC 8FB00014 */  lw         $s0, 0x14($sp)
/* 371C0 8007C9C0 8FB10018 */  lw         $s1, 0x18($sp)
/* 371C4 8007C9C4 8FB2001C */  lw         $s2, 0x1C($sp)
/* 371C8 8007C9C8 8FB30020 */  lw         $s3, 0x20($sp)
/* 371CC 8007C9CC 03E00008 */  jr         $ra
/* 371D0 8007C9D0 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_8007C9D4
/* 371D4 8007C9D4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 371D8 8007C9D8 00047080 */  sll        $t6, $a0, 2
/* 371DC 8007C9DC 01C47023 */  subu       $t6, $t6, $a0
/* 371E0 8007C9E0 3C0F801C */  lui        $t7, %hi(D_801C26E8)
/* 371E4 8007C9E4 0004C080 */  sll        $t8, $a0, 2
/* 371E8 8007C9E8 0304C023 */  subu       $t8, $t8, $a0
/* 371EC 8007C9EC 25EF26E8 */  addiu      $t7, $t7, %lo(D_801C26E8)
/* 371F0 8007C9F0 000E7100 */  sll        $t6, $t6, 4
/* 371F4 8007C9F4 3C19800E */  lui        $t9, %hi(D_800D8578)
/* 371F8 8007C9F8 AFB00014 */  sw         $s0, 0x14($sp)
/* 371FC 8007C9FC 27398578 */  addiu      $t9, $t9, %lo(D_800D8578)
/* 37200 8007CA00 01CF2821 */  addu       $a1, $t6, $t7
/* 37204 8007CA04 0018C100 */  sll        $t8, $t8, 4
/* 37208 8007CA08 AFBF0024 */  sw         $ra, 0x24($sp)
/* 3720C 8007CA0C AFB30020 */  sw         $s3, 0x20($sp)
/* 37210 8007CA10 AFB2001C */  sw         $s2, 0x1C($sp)
/* 37214 8007CA14 AFB10018 */  sw         $s1, 0x18($sp)
/* 37218 8007CA18 00803025 */  or         $a2, $a0, $zero
/* 3721C 8007CA1C 03191821 */  addu       $v1, $t8, $t9
/* 37220 8007CA20 00A08025 */  or         $s0, $a1, $zero
/* 37224 8007CA24 00001025 */  or         $v0, $zero, $zero
.L8007CA28:
/* 37228 8007CA28 8C610000 */  lw         $at, 0x0($v1)
/* 3722C 8007CA2C 8C6A0004 */  lw         $t2, 0x4($v1)
/* 37230 8007CA30 24420001 */  addiu      $v0, $v0, 0x1
/* 37234 8007CA34 AE010000 */  sw         $at, 0x0($s0)
/* 37238 8007CA38 8C610008 */  lw         $at, 0x8($v1)
/* 3723C 8007CA3C AE0A0004 */  sw         $t2, 0x4($s0)
/* 37240 8007CA40 8C6A000C */  lw         $t2, 0xC($v1)
/* 37244 8007CA44 AE010008 */  sw         $at, 0x8($s0)
/* 37248 8007CA48 28410003 */  slti       $at, $v0, 0x3
/* 3724C 8007CA4C 26100010 */  addiu      $s0, $s0, 0x10
/* 37250 8007CA50 24630010 */  addiu      $v1, $v1, 0x10
/* 37254 8007CA54 1420FFF4 */  bnez       $at, .L8007CA28
/* 37258 8007CA58 AE0AFFFC */   sw        $t2, -0x4($s0)
/* 3725C 8007CA5C 00065900 */  sll        $t3, $a2, 4
/* 37260 8007CA60 01665823 */  subu       $t3, $t3, $a2
/* 37264 8007CA64 3C0D801B */  lui        $t5, %hi(D_801AEA18)
/* 37268 8007CA68 25ADEA18 */  addiu      $t5, $t5, %lo(D_801AEA18)
/* 3726C 8007CA6C 256C0120 */  addiu      $t4, $t3, 0x120
/* 37270 8007CA70 018D9021 */  addu       $s2, $t4, $t5
/* 37274 8007CA74 00A08025 */  or         $s0, $a1, $zero
/* 37278 8007CA78 00008825 */  or         $s1, $zero, $zero
/* 3727C 8007CA7C AFA60028 */  sw         $a2, 0x28($sp)
/* 37280 8007CA80 2413000F */  addiu      $s3, $zero, 0xF
.L8007CA84:
/* 37284 8007CA84 02002025 */  or         $a0, $s0, $zero
/* 37288 8007CA88 0C01EC6B */  jal        func_8007B1AC
/* 3728C 8007CA8C 02402825 */   or        $a1, $s2, $zero
/* 37290 8007CA90 26310005 */  addiu      $s1, $s1, 0x5
/* 37294 8007CA94 26100010 */  addiu      $s0, $s0, 0x10
/* 37298 8007CA98 1633FFFA */  bne        $s1, $s3, .L8007CA84
/* 3729C 8007CA9C 26520005 */   addiu     $s2, $s2, 0x5
/* 372A0 8007CAA0 0C01ECC7 */  jal        func_8007B31C
/* 372A4 8007CAA4 00000000 */   nop
/* 372A8 8007CAA8 3C10801B */  lui        $s0, %hi(D_801AEA18)
/* 372AC 8007CAAC 2610EA18 */  addiu      $s0, $s0, %lo(D_801AEA18)
/* 372B0 8007CAB0 0C01EEFE */  jal        func_8007BBF8
/* 372B4 8007CAB4 02002025 */   or        $a0, $s0, $zero
/* 372B8 8007CAB8 A6020002 */  sh         $v0, 0x2($s0)
/* 372BC 8007CABC 3C0E800E */  lui        $t6, %hi(D_800D8260)
/* 372C0 8007CAC0 8DCE8260 */  lw         $t6, %lo(D_800D8260)($t6)
/* 372C4 8007CAC4 3C118015 */  lui        $s1, %hi(D_801540D0)
/* 372C8 8007CAC8 263140D0 */  addiu      $s1, $s1, %lo(D_801540D0)
/* 372CC 8007CACC 15C00003 */  bnez       $t6, .L8007CADC
/* 372D0 8007CAD0 02202025 */   or        $a0, $s1, $zero
/* 372D4 8007CAD4 1000001D */  b          .L8007CB4C
/* 372D8 8007CAD8 24020001 */   addiu     $v0, $zero, 0x1
.L8007CADC:
/* 372DC 8007CADC 00002825 */  or         $a1, $zero, $zero
/* 372E0 8007CAE0 02003025 */  or         $a2, $s0, $zero
/* 372E4 8007CAE4 0C032104 */  jal        func_800C8410
/* 372E8 8007CAE8 24070010 */   addiu     $a3, $zero, 0x10
/* 372EC 8007CAEC 10400003 */  beqz       $v0, .L8007CAFC
/* 372F0 8007CAF0 8FAF0028 */   lw        $t7, 0x28($sp)
/* 372F4 8007CAF4 10000015 */  b          .L8007CB4C
/* 372F8 8007CAF8 24020003 */   addiu     $v0, $zero, 0x3
.L8007CAFC:
/* 372FC 8007CAFC 000FC080 */  sll        $t8, $t7, 2
/* 37300 8007CB00 3C02800E */  lui        $v0, %hi(D_800D826C)
/* 37304 8007CB04 00581021 */  addu       $v0, $v0, $t8
/* 37308 8007CB08 8C42826C */  lw         $v0, %lo(D_800D826C)($v0)
/* 3730C 8007CB0C 3C19801B */  lui        $t9, %hi(D_801AEB38)
/* 37310 8007CB10 2739EB38 */  addiu      $t9, $t9, %lo(D_801AEB38)
/* 37314 8007CB14 03304823 */  subu       $t1, $t9, $s0
/* 37318 8007CB18 01222821 */  addu       $a1, $t1, $v0
/* 3731C 8007CB1C 000540C2 */  srl        $t0, $a1, 3
/* 37320 8007CB20 02023021 */  addu       $a2, $s0, $v0
/* 37324 8007CB24 24C60120 */  addiu      $a2, $a2, 0x120
/* 37328 8007CB28 310500FF */  andi       $a1, $t0, 0xFF
/* 3732C 8007CB2C 02202025 */  or         $a0, $s1, $zero
/* 37330 8007CB30 0C032104 */  jal        func_800C8410
/* 37334 8007CB34 24070018 */   addiu     $a3, $zero, 0x18
/* 37338 8007CB38 50400004 */  beql       $v0, $zero, .L8007CB4C
/* 3733C 8007CB3C 00001025 */   or        $v0, $zero, $zero
/* 37340 8007CB40 10000002 */  b          .L8007CB4C
/* 37344 8007CB44 24020003 */   addiu     $v0, $zero, 0x3
/* 37348 8007CB48 00001025 */  or         $v0, $zero, $zero
.L8007CB4C:
/* 3734C 8007CB4C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 37350 8007CB50 8FB00014 */  lw         $s0, 0x14($sp)
/* 37354 8007CB54 8FB10018 */  lw         $s1, 0x18($sp)
/* 37358 8007CB58 8FB2001C */  lw         $s2, 0x1C($sp)
/* 3735C 8007CB5C 8FB30020 */  lw         $s3, 0x20($sp)
/* 37360 8007CB60 03E00008 */  jr         $ra
/* 37364 8007CB64 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8007CB68
/* 37368 8007CB68 27BDFE90 */  addiu      $sp, $sp, -0x170
/* 3736C 8007CB6C AFB70034 */  sw         $s7, 0x34($sp)
/* 37370 8007CB70 AFB60030 */  sw         $s6, 0x30($sp)
/* 37374 8007CB74 3C02801B */  lui        $v0, %hi(D_801AEA18)
/* 37378 8007CB78 3C03801B */  lui        $v1, %hi(D_801AEC18)
/* 3737C 8007CB7C AFBE0038 */  sw         $fp, 0x38($sp)
/* 37380 8007CB80 AFB30024 */  sw         $s3, 0x24($sp)
/* 37384 8007CB84 2463EC18 */  addiu      $v1, $v1, %lo(D_801AEC18)
/* 37388 8007CB88 2442EA18 */  addiu      $v0, $v0, %lo(D_801AEA18)
/* 3738C 8007CB8C 3C160009 */  lui        $s6, (0x927BF >> 16)
/* 37390 8007CB90 27B70118 */  addiu      $s7, $sp, 0x118
/* 37394 8007CB94 AFBF003C */  sw         $ra, 0x3C($sp)
/* 37398 8007CB98 AFB5002C */  sw         $s5, 0x2C($sp)
/* 3739C 8007CB9C AFB40028 */  sw         $s4, 0x28($sp)
/* 373A0 8007CBA0 AFB20020 */  sw         $s2, 0x20($sp)
/* 373A4 8007CBA4 AFB1001C */  sw         $s1, 0x1C($sp)
/* 373A8 8007CBA8 AFB00018 */  sw         $s0, 0x18($sp)
/* 373AC 8007CBAC 02E0F025 */  or         $fp, $s7, $zero
/* 373B0 8007CBB0 36D627BF */  ori        $s6, $s6, (0x927BF & 0xFFFF)
/* 373B4 8007CBB4 AFA20054 */  sw         $v0, 0x54($sp)
/* 373B8 8007CBB8 AFA30048 */  sw         $v1, 0x48($sp)
/* 373BC 8007CBBC 27B300C8 */  addiu      $s3, $sp, 0xC8
/* 373C0 8007CBC0 AFA0016C */  sw         $zero, 0x16C($sp)
.L8007CBC4:
/* 373C4 8007CBC4 8FA20054 */  lw         $v0, 0x54($sp)
/* 373C8 8007CBC8 8FA30048 */  lw         $v1, 0x48($sp)
/* 373CC 8007CBCC 27B10118 */  addiu      $s1, $sp, 0x118
/* 373D0 8007CBD0 27B200DC */  addiu      $s2, $sp, 0xDC
/* 373D4 8007CBD4 0000A825 */  or         $s5, $zero, $zero
/* 373D8 8007CBD8 24500060 */  addiu      $s0, $v0, 0x60
/* 373DC 8007CBDC 24740060 */  addiu      $s4, $v1, 0x60
.L8007CBE0:
/* 373E0 8007CBE0 02002025 */  or         $a0, $s0, $zero
/* 373E4 8007CBE4 0C01EBFD */  jal        func_8007AFF4
/* 373E8 8007CBE8 02202825 */   or        $a1, $s1, $zero
/* 373EC 8007CBEC 02802025 */  or         $a0, $s4, $zero
/* 373F0 8007CBF0 0C01EBFD */  jal        func_8007AFF4
/* 373F4 8007CBF4 02402825 */   or        $a1, $s2, $zero
/* 373F8 8007CBF8 26520014 */  addiu      $s2, $s2, 0x14
/* 373FC 8007CBFC 27AF0118 */  addiu      $t7, $sp, 0x118
/* 37400 8007CC00 024F082B */  sltu       $at, $s2, $t7
/* 37404 8007CC04 26100006 */  addiu      $s0, $s0, 0x6
/* 37408 8007CC08 26310014 */  addiu      $s1, $s1, 0x14
/* 3740C 8007CC0C 1420FFF4 */  bnez       $at, .L8007CBE0
/* 37410 8007CC10 26940006 */   addiu     $s4, $s4, 0x6
/* 37414 8007CC14 27B10118 */  addiu      $s1, $sp, 0x118
/* 37418 8007CC18 27B000DC */  addiu      $s0, $sp, 0xDC
.L8007CC1C:
/* 3741C 8007CC1C 8E380000 */  lw         $t8, 0x0($s1)
.L8007CC20:
/* 37420 8007CC20 8E190000 */  lw         $t9, 0x0($s0)
/* 37424 8007CC24 57190011 */  bnel       $t8, $t9, .L8007CC6C
/* 37428 8007CC28 26100014 */   addiu     $s0, $s0, 0x14
/* 3742C 8007CC2C 8E2A0004 */  lw         $t2, 0x4($s1)
/* 37430 8007CC30 8E0B0004 */  lw         $t3, 0x4($s0)
/* 37434 8007CC34 554B000D */  bnel       $t2, $t3, .L8007CC6C
/* 37438 8007CC38 26100014 */   addiu     $s0, $s0, 0x14
/* 3743C 8007CC3C 8E2C0008 */  lw         $t4, 0x8($s1)
/* 37440 8007CC40 8E0D0008 */  lw         $t5, 0x8($s0)
/* 37444 8007CC44 26240010 */  addiu      $a0, $s1, 0x10
/* 37448 8007CC48 26050010 */  addiu      $a1, $s0, 0x10
/* 3744C 8007CC4C 558D0007 */  bnel       $t4, $t5, .L8007CC6C
/* 37450 8007CC50 26100014 */   addiu     $s0, $s0, 0x14
/* 37454 8007CC54 0C01A873 */  jal        func_8006A1CC
/* 37458 8007CC58 24060003 */   addiu     $a2, $zero, 0x3
/* 3745C 8007CC5C 54400003 */  bnel       $v0, $zero, .L8007CC6C
/* 37460 8007CC60 26100014 */   addiu     $s0, $s0, 0x14
/* 37464 8007CC64 AE160000 */  sw         $s6, 0x0($s0)
/* 37468 8007CC68 26100014 */  addiu      $s0, $s0, 0x14
.L8007CC6C:
/* 3746C 8007CC6C 5617FFEC */  bnel       $s0, $s7, .L8007CC20
/* 37470 8007CC70 8E380000 */   lw        $t8, 0x0($s1)
/* 37474 8007CC74 26310014 */  addiu      $s1, $s1, 0x14
/* 37478 8007CC78 27AE0154 */  addiu      $t6, $sp, 0x154
/* 3747C 8007CC7C 022E082B */  sltu       $at, $s1, $t6
/* 37480 8007CC80 5420FFE6 */  bnel       $at, $zero, .L8007CC1C
/* 37484 8007CC84 27B000DC */   addiu     $s0, $sp, 0xDC
/* 37488 8007CC88 27B10118 */  addiu      $s1, $sp, 0x118
/* 3748C 8007CC8C 27A30154 */  addiu      $v1, $sp, 0x154
/* 37490 8007CC90 27A20118 */  addiu      $v0, $sp, 0x118
/* 37494 8007CC94 27B000DC */  addiu      $s0, $sp, 0xDC
.L8007CC98:
/* 37498 8007CC98 8E0F0000 */  lw         $t7, 0x0($s0)
.L8007CC9C:
/* 3749C 8007CC9C 8E380000 */  lw         $t8, 0x0($s1)
/* 374A0 8007CCA0 01F8082A */  slt        $at, $t7, $t8
/* 374A4 8007CCA4 50200021 */  beql       $at, $zero, .L8007CD2C
/* 374A8 8007CCA8 26100014 */   addiu     $s0, $s0, 0x14
/* 374AC 8007CCAC 8E210000 */  lw         $at, 0x0($s1)
/* 374B0 8007CCB0 8E2A0004 */  lw         $t2, 0x4($s1)
/* 374B4 8007CCB4 8E0C0004 */  lw         $t4, 0x4($s0)
/* 374B8 8007CCB8 AE610000 */  sw         $at, 0x0($s3)
/* 374BC 8007CCBC 8E210008 */  lw         $at, 0x8($s1)
/* 374C0 8007CCC0 AE6A0004 */  sw         $t2, 0x4($s3)
/* 374C4 8007CCC4 8E2A000C */  lw         $t2, 0xC($s1)
/* 374C8 8007CCC8 AE610008 */  sw         $at, 0x8($s3)
/* 374CC 8007CCCC 8E210010 */  lw         $at, 0x10($s1)
/* 374D0 8007CCD0 AE2C0004 */  sw         $t4, 0x4($s1)
/* 374D4 8007CCD4 8E0C000C */  lw         $t4, 0xC($s0)
/* 374D8 8007CCD8 AE610010 */  sw         $at, 0x10($s3)
/* 374DC 8007CCDC 8E010000 */  lw         $at, 0x0($s0)
/* 374E0 8007CCE0 8E6E0004 */  lw         $t6, 0x4($s3)
/* 374E4 8007CCE4 AE6A000C */  sw         $t2, 0xC($s3)
/* 374E8 8007CCE8 AE210000 */  sw         $at, 0x0($s1)
/* 374EC 8007CCEC 8E010008 */  lw         $at, 0x8($s0)
/* 374F0 8007CCF0 AE0A000C */  sw         $t2, 0xC($s0)
/* 374F4 8007CCF4 AE2C000C */  sw         $t4, 0xC($s1)
/* 374F8 8007CCF8 AE210008 */  sw         $at, 0x8($s1)
/* 374FC 8007CCFC 8E010010 */  lw         $at, 0x10($s0)
/* 37500 8007CD00 AE0E0004 */  sw         $t6, 0x4($s0)
/* 37504 8007CD04 AE210010 */  sw         $at, 0x10($s1)
/* 37508 8007CD08 8E610000 */  lw         $at, 0x0($s3)
/* 3750C 8007CD0C AE010000 */  sw         $at, 0x0($s0)
/* 37510 8007CD10 8E610008 */  lw         $at, 0x8($s3)
/* 37514 8007CD14 AE010008 */  sw         $at, 0x8($s0)
/* 37518 8007CD18 8E610010 */  lw         $at, 0x10($s3)
/* 3751C 8007CD1C 163E0002 */  bne        $s1, $fp, .L8007CD28
/* 37520 8007CD20 AE010010 */   sw        $at, 0x10($s0)
/* 37524 8007CD24 24150001 */  addiu      $s5, $zero, 0x1
.L8007CD28:
/* 37528 8007CD28 26100014 */  addiu      $s0, $s0, 0x14
.L8007CD2C:
/* 3752C 8007CD2C 5602FFDB */  bnel       $s0, $v0, .L8007CC9C
/* 37530 8007CD30 8E0F0000 */   lw        $t7, 0x0($s0)
/* 37534 8007CD34 26310014 */  addiu      $s1, $s1, 0x14
/* 37538 8007CD38 0223082B */  sltu       $at, $s1, $v1
/* 3753C 8007CD3C 5420FFD6 */  bnel       $at, $zero, .L8007CC98
/* 37540 8007CD40 27B000DC */   addiu     $s0, $sp, 0xDC
/* 37544 8007CD44 8FB00054 */  lw         $s0, 0x54($sp)
/* 37548 8007CD48 27B10118 */  addiu      $s1, $sp, 0x118
/* 3754C 8007CD4C 27B20154 */  addiu      $s2, $sp, 0x154
/* 37550 8007CD50 26100060 */  addiu      $s0, $s0, 0x60
.L8007CD54:
/* 37554 8007CD54 02202025 */  or         $a0, $s1, $zero
/* 37558 8007CD58 0C01EBDE */  jal        func_8007AF78
/* 3755C 8007CD5C 02002825 */   or        $a1, $s0, $zero
/* 37560 8007CD60 26310014 */  addiu      $s1, $s1, 0x14
/* 37564 8007CD64 0232082B */  sltu       $at, $s1, $s2
/* 37568 8007CD68 1420FFFA */  bnez       $at, .L8007CD54
/* 3756C 8007CD6C 26100006 */   addiu     $s0, $s0, 0x6
/* 37570 8007CD70 12A0001A */  beqz       $s5, .L8007CDDC
/* 37574 8007CD74 00003825 */   or        $a3, $zero, $zero
/* 37578 8007CD78 8FAF016C */  lw         $t7, 0x16C($sp)
/* 3757C 8007CD7C 3C19801B */  lui        $t9, %hi(D_801AEA18)
/* 37580 8007CD80 3C0A801B */  lui        $t2, %hi(D_801AEC18)
/* 37584 8007CD84 000FC080 */  sll        $t8, $t7, 2
/* 37588 8007CD88 030FC023 */  subu       $t8, $t8, $t7
/* 3758C 8007CD8C 0018C040 */  sll        $t8, $t8, 1
/* 37590 8007CD90 254AEC18 */  addiu      $t2, $t2, %lo(D_801AEC18)
/* 37594 8007CD94 2739EA18 */  addiu      $t9, $t9, %lo(D_801AEA18)
/* 37598 8007CD98 03192821 */  addu       $a1, $t8, $t9
/* 3759C 8007CD9C 030A3021 */  addu       $a2, $t8, $t2
/* 375A0 8007CDA0 24090002 */  addiu      $t1, $zero, 0x2
/* 375A4 8007CDA4 24080003 */  addiu      $t0, $zero, 0x3
.L8007CDA8:
/* 375A8 8007CDA8 00002025 */  or         $a0, $zero, $zero
/* 375AC 8007CDAC 00A01025 */  or         $v0, $a1, $zero
/* 375B0 8007CDB0 00C01825 */  or         $v1, $a2, $zero
.L8007CDB4:
/* 375B4 8007CDB4 906B01A8 */  lbu        $t3, 0x1A8($v1)
/* 375B8 8007CDB8 24840001 */  addiu      $a0, $a0, 0x1
/* 375BC 8007CDBC 24420001 */  addiu      $v0, $v0, 0x1
/* 375C0 8007CDC0 24630001 */  addiu      $v1, $v1, 0x1
/* 375C4 8007CDC4 1488FFFB */  bne        $a0, $t0, .L8007CDB4
/* 375C8 8007CDC8 A04B01A7 */   sb        $t3, 0x1A7($v0)
/* 375CC 8007CDCC 24E70001 */  addiu      $a3, $a3, 0x1
/* 375D0 8007CDD0 24A50003 */  addiu      $a1, $a1, 0x3
/* 375D4 8007CDD4 14E9FFF4 */  bne        $a3, $t1, .L8007CDA8
/* 375D8 8007CDD8 24C60003 */   addiu     $a2, $a2, 0x3
.L8007CDDC:
/* 375DC 8007CDDC 8FAC016C */  lw         $t4, 0x16C($sp)
/* 375E0 8007CDE0 8FAE0054 */  lw         $t6, 0x54($sp)
/* 375E4 8007CDE4 8FB90048 */  lw         $t9, 0x48($sp)
/* 375E8 8007CDE8 258D0001 */  addiu      $t5, $t4, 0x1
/* 375EC 8007CDEC 29A10008 */  slti       $at, $t5, 0x8
/* 375F0 8007CDF0 25CF0018 */  addiu      $t7, $t6, 0x18
/* 375F4 8007CDF4 27380018 */  addiu      $t8, $t9, 0x18
/* 375F8 8007CDF8 AFB80048 */  sw         $t8, 0x48($sp)
/* 375FC 8007CDFC AFAF0054 */  sw         $t7, 0x54($sp)
/* 37600 8007CE00 1420FF70 */  bnez       $at, .L8007CBC4
/* 37604 8007CE04 AFAD016C */   sw        $t5, 0x16C($sp)
/* 37608 8007CE08 3C10801B */  lui        $s0, %hi(D_801AEA8A)
/* 3760C 8007CE0C 3C11801B */  lui        $s1, %hi(D_801AEC8A)
/* 37610 8007CE10 3C14801B */  lui        $s4, %hi(D_801AED4A)
/* 37614 8007CE14 2694ED4A */  addiu      $s4, $s4, %lo(D_801AED4A)
/* 37618 8007CE18 2631EC8A */  addiu      $s1, $s1, %lo(D_801AEC8A)
/* 3761C 8007CE1C 2610EA8A */  addiu      $s0, $s0, %lo(D_801AEA8A)
/* 37620 8007CE20 AFA0016C */  sw         $zero, 0x16C($sp)
/* 37624 8007CE24 27B300DC */  addiu      $s3, $sp, 0xDC
/* 37628 8007CE28 27B20118 */  addiu      $s2, $sp, 0x118
.L8007CE2C:
/* 3762C 8007CE2C 02002025 */  or         $a0, $s0, $zero
/* 37630 8007CE30 0C01EBFD */  jal        func_8007AFF4
/* 37634 8007CE34 02402825 */   or        $a1, $s2, $zero
/* 37638 8007CE38 02202025 */  or         $a0, $s1, $zero
/* 3763C 8007CE3C 0C01EBFD */  jal        func_8007AFF4
/* 37640 8007CE40 02602825 */   or        $a1, $s3, $zero
/* 37644 8007CE44 8FAA00DC */  lw         $t2, 0xDC($sp)
/* 37648 8007CE48 8FAB0118 */  lw         $t3, 0x118($sp)
/* 3764C 8007CE4C 02402025 */  or         $a0, $s2, $zero
/* 37650 8007CE50 014B082A */  slt        $at, $t2, $t3
/* 37654 8007CE54 1020000B */  beqz       $at, .L8007CE84
/* 37658 8007CE58 00000000 */   nop
/* 3765C 8007CE5C 8E610000 */  lw         $at, 0x0($s3)
/* 37660 8007CE60 8E6E0004 */  lw         $t6, 0x4($s3)
/* 37664 8007CE64 AE410000 */  sw         $at, 0x0($s2)
/* 37668 8007CE68 8E610008 */  lw         $at, 0x8($s3)
/* 3766C 8007CE6C AE4E0004 */  sw         $t6, 0x4($s2)
/* 37670 8007CE70 8E6E000C */  lw         $t6, 0xC($s3)
/* 37674 8007CE74 AE410008 */  sw         $at, 0x8($s2)
/* 37678 8007CE78 8E610010 */  lw         $at, 0x10($s3)
/* 3767C 8007CE7C AE4E000C */  sw         $t6, 0xC($s2)
/* 37680 8007CE80 AE410010 */  sw         $at, 0x10($s2)
.L8007CE84:
/* 37684 8007CE84 0C01EBDE */  jal        func_8007AF78
/* 37688 8007CE88 02002825 */   or        $a1, $s0, $zero
/* 3768C 8007CE8C 26310018 */  addiu      $s1, $s1, 0x18
/* 37690 8007CE90 0234082B */  sltu       $at, $s1, $s4
/* 37694 8007CE94 1420FFE5 */  bnez       $at, .L8007CE2C
/* 37698 8007CE98 26100018 */   addiu     $s0, $s0, 0x18
/* 3769C 8007CE9C 3C10801B */  lui        $s0, %hi(D_801AEBF0)
/* 376A0 8007CEA0 3C11801B */  lui        $s1, %hi(D_801AEDF0)
/* 376A4 8007CEA4 3C14801B */  lui        $s4, %hi(D_801AEE18)
/* 376A8 8007CEA8 2694EE18 */  addiu      $s4, $s4, %lo(D_801AEE18)
/* 376AC 8007CEAC 2631EDF0 */  addiu      $s1, $s1, %lo(D_801AEDF0)
/* 376B0 8007CEB0 2610EBF0 */  addiu      $s0, $s0, %lo(D_801AEBF0)
/* 376B4 8007CEB4 AFA0016C */  sw         $zero, 0x16C($sp)
.L8007CEB8:
/* 376B8 8007CEB8 02002025 */  or         $a0, $s0, $zero
/* 376BC 8007CEBC 0C01EC44 */  jal        func_8007B110
/* 376C0 8007CEC0 02402825 */   or        $a1, $s2, $zero
/* 376C4 8007CEC4 02202025 */  or         $a0, $s1, $zero
/* 376C8 8007CEC8 0C01EC44 */  jal        func_8007B110
/* 376CC 8007CECC 02602825 */   or        $a1, $s3, $zero
/* 376D0 8007CED0 8FAF00DC */  lw         $t7, 0xDC($sp)
/* 376D4 8007CED4 8FB90118 */  lw         $t9, 0x118($sp)
/* 376D8 8007CED8 02402025 */  or         $a0, $s2, $zero
/* 376DC 8007CEDC 01F9082A */  slt        $at, $t7, $t9
/* 376E0 8007CEE0 1020000B */  beqz       $at, .L8007CF10
/* 376E4 8007CEE4 00000000 */   nop
/* 376E8 8007CEE8 8E610000 */  lw         $at, 0x0($s3)
/* 376EC 8007CEEC 8E6D0004 */  lw         $t5, 0x4($s3)
/* 376F0 8007CEF0 AE410000 */  sw         $at, 0x0($s2)
/* 376F4 8007CEF4 8E610008 */  lw         $at, 0x8($s3)
/* 376F8 8007CEF8 AE4D0004 */  sw         $t5, 0x4($s2)
/* 376FC 8007CEFC 8E6D000C */  lw         $t5, 0xC($s3)
/* 37700 8007CF00 AE410008 */  sw         $at, 0x8($s2)
/* 37704 8007CF04 8E610010 */  lw         $at, 0x10($s3)
/* 37708 8007CF08 AE4D000C */  sw         $t5, 0xC($s2)
/* 3770C 8007CF0C AE410010 */  sw         $at, 0x10($s2)
.L8007CF10:
/* 37710 8007CF10 0C01EC27 */  jal        func_8007B09C
/* 37714 8007CF14 02002825 */   or        $a1, $s0, $zero
/* 37718 8007CF18 26310005 */  addiu      $s1, $s1, 0x5
/* 3771C 8007CF1C 0234082B */  sltu       $at, $s1, $s4
/* 37720 8007CF20 1420FFE5 */  bnez       $at, .L8007CEB8
/* 37724 8007CF24 26100005 */   addiu     $s0, $s0, 0x5
/* 37728 8007CF28 3C02801B */  lui        $v0, %hi(D_801AEC18)
/* 3772C 8007CF2C 27B50098 */  addiu      $s5, $sp, 0x98
/* 37730 8007CF30 2442EC18 */  addiu      $v0, $v0, %lo(D_801AEC18)
/* 37734 8007CF34 3C17801B */  lui        $s7, %hi(D_801AEA18)
/* 37738 8007CF38 26F7EA18 */  addiu      $s7, $s7, %lo(D_801AEA18)
/* 3773C 8007CF3C AFA20048 */  sw         $v0, 0x48($sp)
/* 37740 8007CF40 02A0F025 */  or         $fp, $s5, $zero
/* 37744 8007CF44 02A0B025 */  or         $s6, $s5, $zero
/* 37748 8007CF48 AFA0016C */  sw         $zero, 0x16C($sp)
/* 3774C 8007CF4C 27B20058 */  addiu      $s2, $sp, 0x58
.L8007CF50:
/* 37750 8007CF50 8FA20048 */  lw         $v0, 0x48($sp)
/* 37754 8007CF54 26F00120 */  addiu      $s0, $s7, 0x120
/* 37758 8007CF58 27B10098 */  addiu      $s1, $sp, 0x98
/* 3775C 8007CF5C 27B30068 */  addiu      $s3, $sp, 0x68
/* 37760 8007CF60 24540120 */  addiu      $s4, $v0, 0x120
.L8007CF64:
/* 37764 8007CF64 02002025 */  or         $a0, $s0, $zero
/* 37768 8007CF68 0C01EC88 */  jal        func_8007B220
/* 3776C 8007CF6C 02202825 */   or        $a1, $s1, $zero
/* 37770 8007CF70 02802025 */  or         $a0, $s4, $zero
/* 37774 8007CF74 0C01EC88 */  jal        func_8007B220
/* 37778 8007CF78 02602825 */   or        $a1, $s3, $zero
/* 3777C 8007CF7C 26730010 */  addiu      $s3, $s3, 0x10
/* 37780 8007CF80 027E082B */  sltu       $at, $s3, $fp
/* 37784 8007CF84 26100005 */  addiu      $s0, $s0, 0x5
/* 37788 8007CF88 26310010 */  addiu      $s1, $s1, 0x10
/* 3778C 8007CF8C 1420FFF5 */  bnez       $at, .L8007CF64
/* 37790 8007CF90 26940005 */   addiu     $s4, $s4, 0x5
/* 37794 8007CF94 27B10098 */  addiu      $s1, $sp, 0x98
/* 37798 8007CF98 27B00068 */  addiu      $s0, $sp, 0x68
.L8007CF9C:
/* 3779C 8007CF9C 8E2B0000 */  lw         $t3, 0x0($s1)
.L8007CFA0:
/* 377A0 8007CFA0 8E0C0000 */  lw         $t4, 0x0($s0)
/* 377A4 8007CFA4 556C0011 */  bnel       $t3, $t4, .L8007CFEC
/* 377A8 8007CFA8 26100010 */   addiu     $s0, $s0, 0x10
/* 377AC 8007CFAC 8E2E0004 */  lw         $t6, 0x4($s1)
/* 377B0 8007CFB0 8E0F0004 */  lw         $t7, 0x4($s0)
/* 377B4 8007CFB4 55CF000D */  bnel       $t6, $t7, .L8007CFEC
/* 377B8 8007CFB8 26100010 */   addiu     $s0, $s0, 0x10
/* 377BC 8007CFBC 8E390008 */  lw         $t9, 0x8($s1)
/* 377C0 8007CFC0 8E180008 */  lw         $t8, 0x8($s0)
/* 377C4 8007CFC4 2624000C */  addiu      $a0, $s1, 0xC
/* 377C8 8007CFC8 2605000C */  addiu      $a1, $s0, 0xC
/* 377CC 8007CFCC 57380007 */  bnel       $t9, $t8, .L8007CFEC
/* 377D0 8007CFD0 26100010 */   addiu     $s0, $s0, 0x10
/* 377D4 8007CFD4 0C01A873 */  jal        func_8006A1CC
/* 377D8 8007CFD8 24060003 */   addiu     $a2, $zero, 0x3
/* 377DC 8007CFDC 54400003 */  bnel       $v0, $zero, .L8007CFEC
/* 377E0 8007CFE0 26100010 */   addiu     $s0, $s0, 0x10
/* 377E4 8007CFE4 AE000000 */  sw         $zero, 0x0($s0)
/* 377E8 8007CFE8 26100010 */  addiu      $s0, $s0, 0x10
.L8007CFEC:
/* 377EC 8007CFEC 5615FFEC */  bnel       $s0, $s5, .L8007CFA0
/* 377F0 8007CFF0 8E2B0000 */   lw        $t3, 0x0($s1)
/* 377F4 8007CFF4 26310010 */  addiu      $s1, $s1, 0x10
/* 377F8 8007CFF8 27AD00C8 */  addiu      $t5, $sp, 0xC8
/* 377FC 8007CFFC 022D082B */  sltu       $at, $s1, $t5
/* 37800 8007D000 5420FFE6 */  bnel       $at, $zero, .L8007CF9C
/* 37804 8007D004 27B00068 */   addiu     $s0, $sp, 0x68
/* 37808 8007D008 27B10098 */  addiu      $s1, $sp, 0x98
/* 3780C 8007D00C 27A200C8 */  addiu      $v0, $sp, 0xC8
/* 37810 8007D010 27B00068 */  addiu      $s0, $sp, 0x68
.L8007D014:
/* 37814 8007D014 8E2A0000 */  lw         $t2, 0x0($s1)
.L8007D018:
/* 37818 8007D018 8E0B0000 */  lw         $t3, 0x0($s0)
/* 3781C 8007D01C 014B082A */  slt        $at, $t2, $t3
/* 37820 8007D020 50200019 */  beql       $at, $zero, .L8007D088
/* 37824 8007D024 26100010 */   addiu     $s0, $s0, 0x10
/* 37828 8007D028 8E210000 */  lw         $at, 0x0($s1)
/* 3782C 8007D02C 8E2E0004 */  lw         $t6, 0x4($s1)
/* 37830 8007D030 8E190004 */  lw         $t9, 0x4($s0)
/* 37834 8007D034 AE410000 */  sw         $at, 0x0($s2)
/* 37838 8007D038 8E210008 */  lw         $at, 0x8($s1)
/* 3783C 8007D03C AE4E0004 */  sw         $t6, 0x4($s2)
/* 37840 8007D040 8E2E000C */  lw         $t6, 0xC($s1)
/* 37844 8007D044 AE410008 */  sw         $at, 0x8($s2)
/* 37848 8007D048 8E010000 */  lw         $at, 0x0($s0)
/* 3784C 8007D04C AE390004 */  sw         $t9, 0x4($s1)
/* 37850 8007D050 8E19000C */  lw         $t9, 0xC($s0)
/* 37854 8007D054 AE210000 */  sw         $at, 0x0($s1)
/* 37858 8007D058 8E010008 */  lw         $at, 0x8($s0)
/* 3785C 8007D05C 8E4D0004 */  lw         $t5, 0x4($s2)
/* 37860 8007D060 AE4E000C */  sw         $t6, 0xC($s2)
/* 37864 8007D064 AE210008 */  sw         $at, 0x8($s1)
/* 37868 8007D068 8E410000 */  lw         $at, 0x0($s2)
/* 3786C 8007D06C AE0E000C */  sw         $t6, 0xC($s0)
/* 37870 8007D070 AE39000C */  sw         $t9, 0xC($s1)
/* 37874 8007D074 AE010000 */  sw         $at, 0x0($s0)
/* 37878 8007D078 8E410008 */  lw         $at, 0x8($s2)
/* 3787C 8007D07C AE0D0004 */  sw         $t5, 0x4($s0)
/* 37880 8007D080 AE010008 */  sw         $at, 0x8($s0)
/* 37884 8007D084 26100010 */  addiu      $s0, $s0, 0x10
.L8007D088:
/* 37888 8007D088 5616FFE3 */  bnel       $s0, $s6, .L8007D018
/* 3788C 8007D08C 8E2A0000 */   lw        $t2, 0x0($s1)
/* 37890 8007D090 26310010 */  addiu      $s1, $s1, 0x10
/* 37894 8007D094 0222082B */  sltu       $at, $s1, $v0
/* 37898 8007D098 5420FFDE */  bnel       $at, $zero, .L8007D014
/* 3789C 8007D09C 27B00068 */   addiu     $s0, $sp, 0x68
/* 378A0 8007D0A0 26F00120 */  addiu      $s0, $s7, 0x120
/* 378A4 8007D0A4 27B10098 */  addiu      $s1, $sp, 0x98
.L8007D0A8:
/* 378A8 8007D0A8 02202025 */  or         $a0, $s1, $zero
/* 378AC 8007D0AC 0C01EC6B */  jal        func_8007B1AC
/* 378B0 8007D0B0 02002825 */   or        $a1, $s0, $zero
/* 378B4 8007D0B4 26310010 */  addiu      $s1, $s1, 0x10
/* 378B8 8007D0B8 27AA00C8 */  addiu      $t2, $sp, 0xC8
/* 378BC 8007D0BC 162AFFFA */  bne        $s1, $t2, .L8007D0A8
/* 378C0 8007D0C0 26100005 */   addiu     $s0, $s0, 0x5
/* 378C4 8007D0C4 8FAB0048 */  lw         $t3, 0x48($sp)
/* 378C8 8007D0C8 3C0E801B */  lui        $t6, %hi(D_801AEC9F)
/* 378CC 8007D0CC 25CEEC9F */  addiu      $t6, $t6, %lo(D_801AEC9F)
/* 378D0 8007D0D0 256C000F */  addiu      $t4, $t3, 0xF
/* 378D4 8007D0D4 AFAC0048 */  sw         $t4, 0x48($sp)
/* 378D8 8007D0D8 158EFF9D */  bne        $t4, $t6, .L8007CF50
/* 378DC 8007D0DC 26F7000F */   addiu     $s7, $s7, 0xF
/* 378E0 8007D0E0 8FBF003C */  lw         $ra, 0x3C($sp)
/* 378E4 8007D0E4 8FB00018 */  lw         $s0, 0x18($sp)
/* 378E8 8007D0E8 8FB1001C */  lw         $s1, 0x1C($sp)
/* 378EC 8007D0EC 8FB20020 */  lw         $s2, 0x20($sp)
/* 378F0 8007D0F0 8FB30024 */  lw         $s3, 0x24($sp)
/* 378F4 8007D0F4 8FB40028 */  lw         $s4, 0x28($sp)
/* 378F8 8007D0F8 8FB5002C */  lw         $s5, 0x2C($sp)
/* 378FC 8007D0FC 8FB60030 */  lw         $s6, 0x30($sp)
/* 37900 8007D100 8FB70034 */  lw         $s7, 0x34($sp)
/* 37904 8007D104 8FBE0038 */  lw         $fp, 0x38($sp)
/* 37908 8007D108 03E00008 */  jr         $ra
/* 3790C 8007D10C 27BD0170 */   addiu     $sp, $sp, 0x170

glabel func_8007D110
/* 37910 8007D110 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 37914 8007D114 AFBF0014 */  sw         $ra, 0x14($sp)
/* 37918 8007D118 3C048015 */  lui        $a0, %hi(D_801540D0)
/* 3791C 8007D11C 248440D0 */  addiu      $a0, $a0, %lo(D_801540D0)
/* 37920 8007D120 0C032170 */  jal        func_800C85C0
/* 37924 8007D124 27A50032 */   addiu     $a1, $sp, 0x32
/* 37928 8007D128 3C068015 */  lui        $a2, %hi(D_80154330)
/* 3792C 8007D12C 8CC64330 */  lw         $a2, %lo(D_80154330)($a2)
/* 37930 8007D130 93B80032 */  lbu        $t8, 0x32($sp)
/* 37934 8007D134 240E0001 */  addiu      $t6, $zero, 0x1
/* 37938 8007D138 00CE7804 */  sllv       $t7, $t6, $a2
/* 3793C 8007D13C 01F8C824 */  and        $t9, $t7, $t8
/* 37940 8007D140 17200005 */  bnez       $t9, .L8007D158
/* 37944 8007D144 24080001 */   addiu     $t0, $zero, 0x1
/* 37948 8007D148 3C01800E */  lui        $at, %hi(D_800D8264)
/* 3794C 8007D14C AC208264 */  sw         $zero, %lo(D_800D8264)($at)
/* 37950 8007D150 10000015 */  b          .L8007D1A8
/* 37954 8007D154 24020001 */   addiu     $v0, $zero, 0x1
.L8007D158:
/* 37958 8007D158 3C01800E */  lui        $at, %hi(D_800D8264)
/* 3795C 8007D15C 3C048015 */  lui        $a0, %hi(D_801540D0)
/* 37960 8007D160 3C05801C */  lui        $a1, %hi(D_801C3AD0)
/* 37964 8007D164 AC288264 */  sw         $t0, %lo(D_800D8264)($at)
/* 37968 8007D168 24A53AD0 */  addiu      $a1, $a1, %lo(D_801C3AD0)
/* 3796C 8007D16C 0C03223C */  jal        func_800C88F0
/* 37970 8007D170 248440D0 */   addiu     $a0, $a0, %lo(D_801540D0)
/* 37974 8007D174 2C41000C */  sltiu      $at, $v0, 0xC
/* 37978 8007D178 1020000A */  beqz       $at, L8007D1A4
/* 3797C 8007D17C 00024880 */   sll       $t1, $v0, 2
/* 37980 8007D180 3C01800F */  lui        $at, %hi(jtbl_800EA288_main)
/* 37984 8007D184 00290821 */  addu       $at, $at, $t1
/* 37988 8007D188 8C29A288 */  lw         $t1, %lo(jtbl_800EA288_main)($at)
/* 3798C 8007D18C 01200008 */  jr         $t1
/* 37990 8007D190 00000000 */   nop
glabel L8007D194
/* 37994 8007D194 10000004 */  b          .L8007D1A8
/* 37998 8007D198 00001025 */   or        $v0, $zero, $zero
glabel L8007D19C
/* 3799C 8007D19C 10000002 */  b          .L8007D1A8
/* 379A0 8007D1A0 24020001 */   addiu     $v0, $zero, 0x1
glabel L8007D1A4
/* 379A4 8007D1A4 24020002 */  addiu      $v0, $zero, 0x2
.L8007D1A8:
/* 379A8 8007D1A8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 379AC 8007D1AC 27BD0040 */  addiu      $sp, $sp, 0x40
/* 379B0 8007D1B0 03E00008 */  jr         $ra
/* 379B4 8007D1B4 00000000 */   nop

glabel func_8007D1B8
/* 379B8 8007D1B8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 379BC 8007D1BC AFBF001C */  sw         $ra, 0x1C($sp)
/* 379C0 8007D1C0 0C01F444 */  jal        func_8007D110
/* 379C4 8007D1C4 00000000 */   nop
/* 379C8 8007D1C8 10400003 */  beqz       $v0, .L8007D1D8
/* 379CC 8007D1CC 3C04801C */   lui       $a0, %hi(D_801C3AD0)
/* 379D0 8007D1D0 1000001B */  b          .L8007D240
/* 379D4 8007D1D4 8FBF001C */   lw        $ra, 0x1C($sp)
.L8007D1D8:
/* 379D8 8007D1D8 3C0E800E */  lui        $t6, %hi(D_800D82D8)
/* 379DC 8007D1DC 25CE82D8 */  addiu      $t6, $t6, %lo(D_800D82D8)
/* 379E0 8007D1E0 3C064E57 */  lui        $a2, (0x4E57524A >> 16)
/* 379E4 8007D1E4 3C07800E */  lui        $a3, %hi(D_800D82E8)
/* 379E8 8007D1E8 27AF0020 */  addiu      $t7, $sp, 0x20
/* 379EC 8007D1EC AFAF0014 */  sw         $t7, 0x14($sp)
/* 379F0 8007D1F0 24E782E8 */  addiu      $a3, $a3, %lo(D_800D82E8)
/* 379F4 8007D1F4 34C6524A */  ori        $a2, $a2, (0x4E57524A & 0xFFFF)
/* 379F8 8007D1F8 AFAE0010 */  sw         $t6, 0x10($sp)
/* 379FC 8007D1FC 24843AD0 */  addiu      $a0, $a0, %lo(D_801C3AD0)
/* 37A00 8007D200 0C03229C */  jal        func_800C8A70
/* 37A04 8007D204 24050001 */   addiu     $a1, $zero, 0x1
/* 37A08 8007D208 2C410006 */  sltiu      $at, $v0, 0x6
/* 37A0C 8007D20C 1020000A */  beqz       $at, L8007D238
/* 37A10 8007D210 0002C080 */   sll       $t8, $v0, 2
/* 37A14 8007D214 3C01800F */  lui        $at, %hi(jtbl_800EA2B8_main)
/* 37A18 8007D218 00380821 */  addu       $at, $at, $t8
/* 37A1C 8007D21C 8C38A2B8 */  lw         $t8, %lo(jtbl_800EA2B8_main)($at)
/* 37A20 8007D220 03000008 */  jr         $t8
/* 37A24 8007D224 00000000 */   nop
glabel L8007D228
/* 37A28 8007D228 10000004 */  b          .L8007D23C
/* 37A2C 8007D22C 00001025 */   or        $v0, $zero, $zero
glabel L8007D230
/* 37A30 8007D230 10000002 */  b          .L8007D23C
/* 37A34 8007D234 24020004 */   addiu     $v0, $zero, 0x4
glabel L8007D238
/* 37A38 8007D238 24020002 */  addiu      $v0, $zero, 0x2
.L8007D23C:
/* 37A3C 8007D23C 8FBF001C */  lw         $ra, 0x1C($sp)
.L8007D240:
/* 37A40 8007D240 27BD0028 */  addiu      $sp, $sp, 0x28
/* 37A44 8007D244 03E00008 */  jr         $ra
/* 37A48 8007D248 00000000 */   nop

glabel func_8007D24C
/* 37A4C 8007D24C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 37A50 8007D250 AFBF0014 */  sw         $ra, 0x14($sp)
/* 37A54 8007D254 0C01F444 */  jal        func_8007D110
/* 37A58 8007D258 00000000 */   nop
/* 37A5C 8007D25C 10400003 */  beqz       $v0, .L8007D26C
/* 37A60 8007D260 3C04801C */   lui       $a0, %hi(D_801C3AD0)
/* 37A64 8007D264 10000018 */  b          .L8007D2C8
/* 37A68 8007D268 8FBF0014 */   lw        $ra, 0x14($sp)
.L8007D26C:
/* 37A6C 8007D26C 24843AD0 */  addiu      $a0, $a0, %lo(D_801C3AD0)
/* 37A70 8007D270 0C032304 */  jal        func_800C8C10
/* 37A74 8007D274 27A50018 */   addiu     $a1, $sp, 0x18
/* 37A78 8007D278 2C410006 */  sltiu      $at, $v0, 0x6
/* 37A7C 8007D27C 10200010 */  beqz       $at, L8007D2C0
/* 37A80 8007D280 00027080 */   sll       $t6, $v0, 2
/* 37A84 8007D284 3C01800F */  lui        $at, %hi(jtbl_800EA2D0_main)
/* 37A88 8007D288 002E0821 */  addu       $at, $at, $t6
/* 37A8C 8007D28C 8C2EA2D0 */  lw         $t6, %lo(jtbl_800EA2D0_main)($at)
/* 37A90 8007D290 01C00008 */  jr         $t6
/* 37A94 8007D294 00000000 */   nop
glabel L8007D298
/* 37A98 8007D298 8FAF0018 */  lw         $t7, 0x18($sp)
/* 37A9C 8007D29C 29E10200 */  slti       $at, $t7, 0x200
/* 37AA0 8007D2A0 14200003 */  bnez       $at, .L8007D2B0
/* 37AA4 8007D2A4 00000000 */   nop
/* 37AA8 8007D2A8 10000006 */  b          .L8007D2C4
/* 37AAC 8007D2AC 00001025 */   or        $v0, $zero, $zero
.L8007D2B0:
/* 37AB0 8007D2B0 10000004 */  b          .L8007D2C4
/* 37AB4 8007D2B4 24020003 */   addiu     $v0, $zero, 0x3
glabel L8007D2B8
/* 37AB8 8007D2B8 10000002 */  b          .L8007D2C4
/* 37ABC 8007D2BC 24020004 */   addiu     $v0, $zero, 0x4
glabel L8007D2C0
/* 37AC0 8007D2C0 24020002 */  addiu      $v0, $zero, 0x2
.L8007D2C4:
/* 37AC4 8007D2C4 8FBF0014 */  lw         $ra, 0x14($sp)
.L8007D2C8:
/* 37AC8 8007D2C8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 37ACC 8007D2CC 03E00008 */  jr         $ra
/* 37AD0 8007D2D0 00000000 */   nop

glabel func_8007D2D4
/* 37AD4 8007D2D4 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 37AD8 8007D2D8 AFBF001C */  sw         $ra, 0x1C($sp)
/* 37ADC 8007D2DC AFA40048 */  sw         $a0, 0x48($sp)
/* 37AE0 8007D2E0 0C01F444 */  jal        func_8007D110
/* 37AE4 8007D2E4 AFA00034 */   sw        $zero, 0x34($sp)
/* 37AE8 8007D2E8 10400003 */  beqz       $v0, .L8007D2F8
/* 37AEC 8007D2EC 3C04801C */   lui       $a0, %hi(D_801C3AD0)
/* 37AF0 8007D2F0 100000C5 */  b          .L8007D608
/* 37AF4 8007D2F4 8FBF001C */   lw        $ra, 0x1C($sp)
.L8007D2F8:
/* 37AF8 8007D2F8 8FA20048 */  lw         $v0, 0x48($sp)
/* 37AFC 8007D2FC 24843AD0 */  addiu      $a0, $a0, %lo(D_801C3AD0)
/* 37B00 8007D300 24050001 */  addiu      $a1, $zero, 0x1
/* 37B04 8007D304 28410080 */  slti       $at, $v0, 0x80
/* 37B08 8007D308 14200004 */  bnez       $at, .L8007D31C
/* 37B0C 8007D30C 3C064E57 */   lui       $a2, (0x4E57524A >> 16)
/* 37B10 8007D310 240E0001 */  addiu      $t6, $zero, 0x1
/* 37B14 8007D314 2442FF80 */  addiu      $v0, $v0, -0x80
/* 37B18 8007D318 AFAE0034 */  sw         $t6, 0x34($sp)
.L8007D31C:
/* 37B1C 8007D31C 3C0F800E */  lui        $t7, %hi(D_800D82D8)
/* 37B20 8007D320 25EF82D8 */  addiu      $t7, $t7, %lo(D_800D82D8)
/* 37B24 8007D324 3C07800E */  lui        $a3, %hi(D_800D82E8)
/* 37B28 8007D328 27B80030 */  addiu      $t8, $sp, 0x30
/* 37B2C 8007D32C AFB80014 */  sw         $t8, 0x14($sp)
/* 37B30 8007D330 24E782E8 */  addiu      $a3, $a3, %lo(D_800D82E8)
/* 37B34 8007D334 AFAF0010 */  sw         $t7, 0x10($sp)
/* 37B38 8007D338 34C6524A */  ori        $a2, $a2, (0x4E57524A & 0xFFFF)
/* 37B3C 8007D33C 0C03229C */  jal        func_800C8A70
/* 37B40 8007D340 AFA20048 */   sw        $v0, 0x48($sp)
/* 37B44 8007D344 144000AE */  bnez       $v0, .L8007D600
/* 37B48 8007D348 3C04801C */   lui       $a0, %hi(D_801C3AD0)
/* 37B4C 8007D34C 3C08801B */  lui        $t0, %hi(D_801AEC18)
/* 37B50 8007D350 2508EC18 */  addiu      $t0, $t0, %lo(D_801AEC18)
/* 37B54 8007D354 24190200 */  addiu      $t9, $zero, 0x200
/* 37B58 8007D358 AFB90010 */  sw         $t9, 0x10($sp)
/* 37B5C 8007D35C AFA80014 */  sw         $t0, 0x14($sp)
/* 37B60 8007D360 24843AD0 */  addiu      $a0, $a0, %lo(D_801C3AD0)
/* 37B64 8007D364 8FA50030 */  lw         $a1, 0x30($sp)
/* 37B68 8007D368 00003025 */  or         $a2, $zero, $zero
/* 37B6C 8007D36C 0C0323A8 */  jal        func_800C8EA0
/* 37B70 8007D370 00003825 */   or        $a3, $zero, $zero
/* 37B74 8007D374 2C410007 */  sltiu      $at, $v0, 0x7
/* 37B78 8007D378 102000A2 */  beqz       $at, L8007D604
/* 37B7C 8007D37C 00024880 */   sll       $t1, $v0, 2
/* 37B80 8007D380 3C01800F */  lui        $at, %hi(jtbl_800EA2E8_main)
/* 37B84 8007D384 00290821 */  addu       $at, $at, $t1
/* 37B88 8007D388 8C29A2E8 */  lw         $t1, %lo(jtbl_800EA2E8_main)($at)
/* 37B8C 8007D38C 01200008 */  jr         $t1
/* 37B90 8007D390 00000000 */   nop
glabel L8007D394
/* 37B94 8007D394 3C03801B */  lui        $v1, %hi(D_801AEC18)
/* 37B98 8007D398 3C02800E */  lui        $v0, %hi(D_800D8268)
/* 37B9C 8007D39C 3C04800E */  lui        $a0, %hi(D_800D826A)
/* 37BA0 8007D3A0 2484826A */  addiu      $a0, $a0, %lo(D_800D826A)
/* 37BA4 8007D3A4 24428268 */  addiu      $v0, $v0, %lo(D_800D8268)
/* 37BA8 8007D3A8 2463EC18 */  addiu      $v1, $v1, %lo(D_801AEC18)
.L8007D3AC:
/* 37BAC 8007D3AC 906A0000 */  lbu        $t2, 0x0($v1)
/* 37BB0 8007D3B0 904B0000 */  lbu        $t3, 0x0($v0)
/* 37BB4 8007D3B4 24420001 */  addiu      $v0, $v0, 0x1
/* 37BB8 8007D3B8 0044082B */  sltu       $at, $v0, $a0
/* 37BBC 8007D3BC 114B0003 */  beq        $t2, $t3, .L8007D3CC
/* 37BC0 8007D3C0 00000000 */   nop
/* 37BC4 8007D3C4 1000008F */  b          L8007D604
/* 37BC8 8007D3C8 24020006 */   addiu     $v0, $zero, 0x6
.L8007D3CC:
/* 37BCC 8007D3CC 1420FFF7 */  bnez       $at, .L8007D3AC
/* 37BD0 8007D3D0 24630001 */   addiu     $v1, $v1, 0x1
/* 37BD4 8007D3D4 3C04801B */  lui        $a0, %hi(D_801AEC18)
/* 37BD8 8007D3D8 0C01EEFE */  jal        func_8007BBF8
/* 37BDC 8007D3DC 2484EC18 */   addiu     $a0, $a0, %lo(D_801AEC18)
/* 37BE0 8007D3E0 3C0C801B */  lui        $t4, %hi(D_801AEC1A)
/* 37BE4 8007D3E4 958CEC1A */  lhu        $t4, %lo(D_801AEC1A)($t4)
/* 37BE8 8007D3E8 104C0003 */  beq        $v0, $t4, .L8007D3F8
/* 37BEC 8007D3EC 00000000 */   nop
/* 37BF0 8007D3F0 10000084 */  b          L8007D604
/* 37BF4 8007D3F4 24020006 */   addiu     $v0, $zero, 0x6
.L8007D3F8:
/* 37BF8 8007D3F8 0C01EE4C */  jal        func_8007B930
/* 37BFC 8007D3FC 00000000 */   nop
/* 37C00 8007D400 8FAD0048 */  lw         $t5, 0x48($sp)
/* 37C04 8007D404 2DA10006 */  sltiu      $at, $t5, 0x6
/* 37C08 8007D408 10200079 */  beqz       $at, .L8007D5F0
/* 37C0C 8007D40C 000D6880 */   sll       $t5, $t5, 2
/* 37C10 8007D410 3C01800F */  lui        $at, %hi(jtbl_800EA304_main)
/* 37C14 8007D414 002D0821 */  addu       $at, $at, $t5
/* 37C18 8007D418 8C2DA304 */  lw         $t5, %lo(jtbl_800EA304_main)($at)
/* 37C1C 8007D41C 01A00008 */  jr         $t5
/* 37C20 8007D420 00000000 */   nop
glabel L8007D424
/* 37C24 8007D424 3C0F801B */  lui        $t7, %hi(D_801AEC18)
/* 37C28 8007D428 25EFEC18 */  addiu      $t7, $t7, %lo(D_801AEC18)
/* 37C2C 8007D42C 3C0E801B */  lui        $t6, %hi(D_801AEA18)
/* 37C30 8007D430 25CEEA18 */  addiu      $t6, $t6, %lo(D_801AEA18)
/* 37C34 8007D434 25E801F8 */  addiu      $t0, $t7, 0x1F8
.L8007D438:
/* 37C38 8007D438 8DE10000 */  lw         $at, 0x0($t7)
/* 37C3C 8007D43C 25EF000C */  addiu      $t7, $t7, 0xC
/* 37C40 8007D440 25CE000C */  addiu      $t6, $t6, 0xC
/* 37C44 8007D444 ADC1FFF4 */  sw         $at, -0xC($t6)
/* 37C48 8007D448 8DE1FFF8 */  lw         $at, -0x8($t7)
/* 37C4C 8007D44C ADC1FFF8 */  sw         $at, -0x8($t6)
/* 37C50 8007D450 8DE1FFFC */  lw         $at, -0x4($t7)
/* 37C54 8007D454 15E8FFF8 */  bne        $t7, $t0, .L8007D438
/* 37C58 8007D458 ADC1FFFC */   sw        $at, -0x4($t6)
/* 37C5C 8007D45C 8DE10000 */  lw         $at, 0x0($t7)
/* 37C60 8007D460 8DE80004 */  lw         $t0, 0x4($t7)
/* 37C64 8007D464 ADC10000 */  sw         $at, 0x0($t6)
/* 37C68 8007D468 0C01ED8C */  jal        func_8007B630
/* 37C6C 8007D46C ADC80004 */   sw        $t0, 0x4($t6)
/* 37C70 8007D470 0C01EF48 */  jal        func_8007BD20
/* 37C74 8007D474 00000000 */   nop
/* 37C78 8007D478 1040005D */  beqz       $v0, .L8007D5F0
/* 37C7C 8007D47C 00000000 */   nop
/* 37C80 8007D480 10000060 */  b          L8007D604
/* 37C84 8007D484 24020005 */   addiu     $v0, $zero, 0x5
glabel L8007D488
/* 37C88 8007D488 8FA90034 */  lw         $t1, 0x34($sp)
/* 37C8C 8007D48C 8FA70048 */  lw         $a3, 0x48($sp)
/* 37C90 8007D490 3C0B801B */  lui        $t3, %hi(D_801AEA18)
/* 37C94 8007D494 1520000F */  bnez       $t1, .L8007D4D4
/* 37C98 8007D498 24E7FFFF */   addiu     $a3, $a3, -0x1
/* 37C9C 8007D49C 00071080 */  sll        $v0, $a3, 2
/* 37CA0 8007D4A0 00471021 */  addu       $v0, $v0, $a3
/* 37CA4 8007D4A4 00021040 */  sll        $v0, $v0, 1
/* 37CA8 8007D4A8 3C0D801B */  lui        $t5, %hi(D_801AEC18)
/* 37CAC 8007D4AC 25ADEC18 */  addiu      $t5, $t5, %lo(D_801AEC18)
/* 37CB0 8007D4B0 244A0010 */  addiu      $t2, $v0, 0x10
/* 37CB4 8007D4B4 244C0010 */  addiu      $t4, $v0, 0x10
/* 37CB8 8007D4B8 256BEA18 */  addiu      $t3, $t3, %lo(D_801AEA18)
/* 37CBC 8007D4BC 014B2021 */  addu       $a0, $t2, $t3
/* 37CC0 8007D4C0 018D2821 */  addu       $a1, $t4, $t5
/* 37CC4 8007D4C4 2406000A */  addiu      $a2, $zero, 0xA
/* 37CC8 8007D4C8 0C01A850 */  jal        func_8006A140
/* 37CCC 8007D4CC AFA70044 */   sw        $a3, 0x44($sp)
/* 37CD0 8007D4D0 8FA70044 */  lw         $a3, 0x44($sp)
.L8007D4D4:
/* 37CD4 8007D4D4 8FB90034 */  lw         $t9, 0x34($sp)
/* 37CD8 8007D4D8 00074080 */  sll        $t0, $a3, 2
/* 37CDC 8007D4DC 01074023 */  subu       $t0, $t0, $a3
/* 37CE0 8007D4E0 0019C080 */  sll        $t8, $t9, 2
/* 37CE4 8007D4E4 0319C023 */  subu       $t8, $t8, $t9
/* 37CE8 8007D4E8 0018C080 */  sll        $t8, $t8, 2
/* 37CEC 8007D4EC 3C0E801B */  lui        $t6, %hi(D_801AEA18)
/* 37CF0 8007D4F0 00074880 */  sll        $t1, $a3, 2
/* 37CF4 8007D4F4 3C0A801B */  lui        $t2, %hi(D_801AEC18)
/* 37CF8 8007D4F8 254AEC18 */  addiu      $t2, $t2, %lo(D_801AEC18)
/* 37CFC 8007D4FC 01274823 */  subu       $t1, $t1, $a3
/* 37D00 8007D500 25CEEA18 */  addiu      $t6, $t6, %lo(D_801AEA18)
/* 37D04 8007D504 03087821 */  addu       $t7, $t8, $t0
/* 37D08 8007D508 01EE1821 */  addu       $v1, $t7, $t6
/* 37D0C 8007D50C 012A2021 */  addu       $a0, $t1, $t2
/* 37D10 8007D510 00001025 */  or         $v0, $zero, $zero
/* 37D14 8007D514 24050003 */  addiu      $a1, $zero, 0x3
.L8007D518:
/* 37D18 8007D518 808B0038 */  lb         $t3, 0x38($a0)
/* 37D1C 8007D51C 24420001 */  addiu      $v0, $v0, 0x1
/* 37D20 8007D520 24630001 */  addiu      $v1, $v1, 0x1
/* 37D24 8007D524 24840001 */  addiu      $a0, $a0, 0x1
/* 37D28 8007D528 1445FFFB */  bne        $v0, $a1, .L8007D518
/* 37D2C 8007D52C A06B0037 */   sb        $t3, 0x37($v1)
/* 37D30 8007D530 0C01ED8C */  jal        func_8007B630
/* 37D34 8007D534 00000000 */   nop
/* 37D38 8007D538 0C01F0C7 */  jal        func_8007C31C
/* 37D3C 8007D53C 00000000 */   nop
/* 37D40 8007D540 1040002B */  beqz       $v0, .L8007D5F0
/* 37D44 8007D544 00000000 */   nop
/* 37D48 8007D548 1000002E */  b          L8007D604
/* 37D4C 8007D54C 24020005 */   addiu     $v0, $zero, 0x5
glabel L8007D550
/* 37D50 8007D550 0C01F2DA */  jal        func_8007CB68
/* 37D54 8007D554 00000000 */   nop
/* 37D58 8007D558 0C01ED8C */  jal        func_8007B630
/* 37D5C 8007D55C 00000000 */   nop
/* 37D60 8007D560 0C01ECC7 */  jal        func_8007B31C
/* 37D64 8007D564 00000000 */   nop
/* 37D68 8007D568 3C04801B */  lui        $a0, %hi(D_801AEA18)
/* 37D6C 8007D56C 0C01EEFE */  jal        func_8007BBF8
/* 37D70 8007D570 2484EA18 */   addiu     $a0, $a0, %lo(D_801AEA18)
/* 37D74 8007D574 3C06801B */  lui        $a2, %hi(D_801AEA18)
/* 37D78 8007D578 24C6EA18 */  addiu      $a2, $a2, %lo(D_801AEA18)
/* 37D7C 8007D57C A4C20002 */  sh         $v0, 0x2($a2)
/* 37D80 8007D580 3C0C800E */  lui        $t4, %hi(D_800D8260)
/* 37D84 8007D584 8D8C8260 */  lw         $t4, %lo(D_800D8260)($t4)
/* 37D88 8007D588 3C048015 */  lui        $a0, %hi(D_801540D0)
/* 37D8C 8007D58C 248440D0 */  addiu      $a0, $a0, %lo(D_801540D0)
/* 37D90 8007D590 11800015 */  beqz       $t4, .L8007D5E8
/* 37D94 8007D594 00002825 */   or        $a1, $zero, $zero
/* 37D98 8007D598 0C032104 */  jal        func_800C8410
/* 37D9C 8007D59C 24070010 */   addiu     $a3, $zero, 0x10
/* 37DA0 8007D5A0 10400003 */  beqz       $v0, .L8007D5B0
/* 37DA4 8007D5A4 3C06801B */   lui       $a2, %hi(D_801AEA78)
/* 37DA8 8007D5A8 10000016 */  b          L8007D604
/* 37DAC 8007D5AC 24020003 */   addiu     $v0, $zero, 0x3
.L8007D5B0:
/* 37DB0 8007D5B0 3C0D801B */  lui        $t5, %hi(D_801AEA18)
/* 37DB4 8007D5B4 24C6EA78 */  addiu      $a2, $a2, %lo(D_801AEA78)
/* 37DB8 8007D5B8 25ADEA18 */  addiu      $t5, $t5, %lo(D_801AEA18)
/* 37DBC 8007D5BC 00CD2823 */  subu       $a1, $a2, $t5
/* 37DC0 8007D5C0 0005C8C2 */  srl        $t9, $a1, 3
/* 37DC4 8007D5C4 3C048015 */  lui        $a0, %hi(D_801540D0)
/* 37DC8 8007D5C8 248440D0 */  addiu      $a0, $a0, %lo(D_801540D0)
/* 37DCC 8007D5CC 332500FF */  andi       $a1, $t9, 0xFF
/* 37DD0 8007D5D0 0C032104 */  jal        func_800C8410
/* 37DD4 8007D5D4 240701A0 */   addiu     $a3, $zero, 0x1A0
/* 37DD8 8007D5D8 10400005 */  beqz       $v0, .L8007D5F0
/* 37DDC 8007D5DC 00000000 */   nop
/* 37DE0 8007D5E0 10000008 */  b          L8007D604
/* 37DE4 8007D5E4 24020005 */   addiu     $v0, $zero, 0x5
.L8007D5E8:
/* 37DE8 8007D5E8 10000006 */  b          L8007D604
/* 37DEC 8007D5EC 24020005 */   addiu     $v0, $zero, 0x5
.L8007D5F0:
/* 37DF0 8007D5F0 10000004 */  b          L8007D604
/* 37DF4 8007D5F4 00001025 */   or        $v0, $zero, $zero
glabel L8007D5F8
/* 37DF8 8007D5F8 10000002 */  b          L8007D604
/* 37DFC 8007D5FC 24020002 */   addiu     $v0, $zero, 0x2
.L8007D600:
/* 37E00 8007D600 24020004 */  addiu      $v0, $zero, 0x4
glabel L8007D604
/* 37E04 8007D604 8FBF001C */  lw         $ra, 0x1C($sp)
.L8007D608:
/* 37E08 8007D608 27BD0048 */  addiu      $sp, $sp, 0x48
/* 37E0C 8007D60C 03E00008 */  jr         $ra
/* 37E10 8007D610 00000000 */   nop

glabel func_8007D614
/* 37E14 8007D614 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 37E18 8007D618 AFBF0034 */  sw         $ra, 0x34($sp)
/* 37E1C 8007D61C AFB1002C */  sw         $s1, 0x2C($sp)
/* 37E20 8007D620 00808825 */  or         $s1, $a0, $zero
/* 37E24 8007D624 AFB20030 */  sw         $s2, 0x30($sp)
/* 37E28 8007D628 0C01F444 */  jal        func_8007D110
/* 37E2C 8007D62C AFB00028 */   sw        $s0, 0x28($sp)
/* 37E30 8007D630 10400003 */  beqz       $v0, .L8007D640
/* 37E34 8007D634 2A210080 */   slti      $at, $s1, 0x80
/* 37E38 8007D638 1000013C */  b          .L8007DB2C
/* 37E3C 8007D63C 8FBF0034 */   lw        $ra, 0x34($sp)
.L8007D640:
/* 37E40 8007D640 14200002 */  bnez       $at, .L8007D64C
/* 37E44 8007D644 3C124E57 */   lui       $s2, (0x4E57524A >> 16)
/* 37E48 8007D648 2631FF80 */  addiu      $s1, $s1, -0x80
.L8007D64C:
/* 37E4C 8007D64C 3C0E800E */  lui        $t6, %hi(D_800D82D8)
/* 37E50 8007D650 3652524A */  ori        $s2, $s2, (0x4E57524A & 0xFFFF)
/* 37E54 8007D654 25CE82D8 */  addiu      $t6, $t6, %lo(D_800D82D8)
/* 37E58 8007D658 3C04801C */  lui        $a0, %hi(D_801C3AD0)
/* 37E5C 8007D65C 3C07800E */  lui        $a3, %hi(D_800D82E8)
/* 37E60 8007D660 27AF006C */  addiu      $t7, $sp, 0x6C
/* 37E64 8007D664 AFAF0014 */  sw         $t7, 0x14($sp)
/* 37E68 8007D668 24E782E8 */  addiu      $a3, $a3, %lo(D_800D82E8)
/* 37E6C 8007D66C 24843AD0 */  addiu      $a0, $a0, %lo(D_801C3AD0)
/* 37E70 8007D670 AFAE0010 */  sw         $t6, 0x10($sp)
/* 37E74 8007D674 02403025 */  or         $a2, $s2, $zero
/* 37E78 8007D678 0C03229C */  jal        func_800C8A70
/* 37E7C 8007D67C 24050001 */   addiu     $a1, $zero, 0x1
/* 37E80 8007D680 2C410006 */  sltiu      $at, $v0, 0x6
/* 37E84 8007D684 1020003C */  beqz       $at, L8007D778
/* 37E88 8007D688 0002C080 */   sll       $t8, $v0, 2
/* 37E8C 8007D68C 3C01800F */  lui        $at, %hi(jtbl_800EA31C_main)
/* 37E90 8007D690 00380821 */  addu       $at, $at, $t8
/* 37E94 8007D694 8C38A31C */  lw         $t8, %lo(jtbl_800EA31C_main)($at)
/* 37E98 8007D698 03000008 */  jr         $t8
/* 37E9C 8007D69C 00000000 */   nop
glabel L8007D6A0
/* 37EA0 8007D6A0 00008025 */  or         $s0, $zero, $zero
glabel L8007D6A4
/* 37EA4 8007D6A4 0C01EE4C */  jal        func_8007B930
/* 37EA8 8007D6A8 00000000 */   nop
/* 37EAC 8007D6AC 1220004C */  beqz       $s1, .L8007D7E0
/* 37EB0 8007D6B0 00000000 */   nop
/* 37EB4 8007D6B4 1600004A */  bnez       $s0, .L8007D7E0
/* 37EB8 8007D6B8 3C04801C */   lui       $a0, %hi(D_801C3AD0)
/* 37EBC 8007D6BC 3C0E801B */  lui        $t6, %hi(D_801AEC18)
/* 37EC0 8007D6C0 25CEEC18 */  addiu      $t6, $t6, %lo(D_801AEC18)
/* 37EC4 8007D6C4 24190200 */  addiu      $t9, $zero, 0x200
/* 37EC8 8007D6C8 AFB90010 */  sw         $t9, 0x10($sp)
/* 37ECC 8007D6CC AFAE0014 */  sw         $t6, 0x14($sp)
/* 37ED0 8007D6D0 24843AD0 */  addiu      $a0, $a0, %lo(D_801C3AD0)
/* 37ED4 8007D6D4 8FA5006C */  lw         $a1, 0x6C($sp)
/* 37ED8 8007D6D8 00003025 */  or         $a2, $zero, $zero
/* 37EDC 8007D6DC 0C0323A8 */  jal        func_800C8EA0
/* 37EE0 8007D6E0 00003825 */   or        $a3, $zero, $zero
/* 37EE4 8007D6E4 244FFFFE */  addiu      $t7, $v0, -0x2
/* 37EE8 8007D6E8 2DE10005 */  sltiu      $at, $t7, 0x5
/* 37EEC 8007D6EC 10200026 */  beqz       $at, .L8007D788
/* 37EF0 8007D6F0 3C03801B */   lui       $v1, %hi(D_801AEC18)
/* 37EF4 8007D6F4 000F7880 */  sll        $t7, $t7, 2
/* 37EF8 8007D6F8 3C01800F */  lui        $at, %hi(jtbl_800EA334_main)
/* 37EFC 8007D6FC 002F0821 */  addu       $at, $at, $t7
/* 37F00 8007D700 8C2FA334 */  lw         $t7, %lo(jtbl_800EA334_main)($at)
/* 37F04 8007D704 01E00008 */  jr         $t7
/* 37F08 8007D708 00000000 */   nop
glabel L8007D70C
/* 37F0C 8007D70C 3C18800E */  lui        $t8, %hi(D_800D82D8)
/* 37F10 8007D710 271882D8 */  addiu      $t8, $t8, %lo(D_800D82D8)
/* 37F14 8007D714 3C04801C */  lui        $a0, %hi(D_801C3AD0)
/* 37F18 8007D718 3C07800E */  lui        $a3, %hi(D_800D82E8)
/* 37F1C 8007D71C 24190200 */  addiu      $t9, $zero, 0x200
/* 37F20 8007D720 27AE006C */  addiu      $t6, $sp, 0x6C
/* 37F24 8007D724 24100001 */  addiu      $s0, $zero, 0x1
/* 37F28 8007D728 AFAE0018 */  sw         $t6, 0x18($sp)
/* 37F2C 8007D72C AFB90014 */  sw         $t9, 0x14($sp)
/* 37F30 8007D730 24E782E8 */  addiu      $a3, $a3, %lo(D_800D82E8)
/* 37F34 8007D734 24843AD0 */  addiu      $a0, $a0, %lo(D_801C3AD0)
/* 37F38 8007D738 AFB80010 */  sw         $t8, 0x10($sp)
/* 37F3C 8007D73C 24050001 */  addiu      $a1, $zero, 0x1
/* 37F40 8007D740 0C032484 */  jal        func_800C9210
/* 37F44 8007D744 02403025 */   or        $a2, $s2, $zero
/* 37F48 8007D748 2C410009 */  sltiu      $at, $v0, 0x9
/* 37F4C 8007D74C 10200008 */  beqz       $at, L8007D770
/* 37F50 8007D750 00027880 */   sll       $t7, $v0, 2
/* 37F54 8007D754 3C01800F */  lui        $at, %hi(jtbl_800EA348_main)
/* 37F58 8007D758 002F0821 */  addu       $at, $at, $t7
/* 37F5C 8007D75C 8C2FA348 */  lw         $t7, %lo(jtbl_800EA348_main)($at)
/* 37F60 8007D760 01E00008 */  jr         $t7
/* 37F64 8007D764 00000000 */   nop
glabel L8007D768
/* 37F68 8007D768 100000EF */  b          .L8007DB28
/* 37F6C 8007D76C 24020003 */   addiu     $v0, $zero, 0x3
glabel L8007D770
/* 37F70 8007D770 100000ED */  b          .L8007DB28
/* 37F74 8007D774 24020002 */   addiu     $v0, $zero, 0x2
glabel L8007D778
/* 37F78 8007D778 100000EB */  b          .L8007DB28
/* 37F7C 8007D77C 24020002 */   addiu     $v0, $zero, 0x2
glabel L8007D780
/* 37F80 8007D780 100000E9 */  b          .L8007DB28
/* 37F84 8007D784 24020002 */   addiu     $v0, $zero, 0x2
.L8007D788:
/* 37F88 8007D788 3C02800E */  lui        $v0, %hi(D_800D8268)
/* 37F8C 8007D78C 3C04800E */  lui        $a0, %hi(D_800D826A)
/* 37F90 8007D790 2484826A */  addiu      $a0, $a0, %lo(D_800D826A)
/* 37F94 8007D794 24428268 */  addiu      $v0, $v0, %lo(D_800D8268)
/* 37F98 8007D798 2463EC18 */  addiu      $v1, $v1, %lo(D_801AEC18)
.L8007D79C:
/* 37F9C 8007D79C 90780000 */  lbu        $t8, 0x0($v1)
/* 37FA0 8007D7A0 90590000 */  lbu        $t9, 0x0($v0)
/* 37FA4 8007D7A4 24420001 */  addiu      $v0, $v0, 0x1
/* 37FA8 8007D7A8 13190002 */  beq        $t8, $t9, .L8007D7B4
/* 37FAC 8007D7AC 00000000 */   nop
/* 37FB0 8007D7B0 24100001 */  addiu      $s0, $zero, 0x1
.L8007D7B4:
/* 37FB4 8007D7B4 1444FFF9 */  bne        $v0, $a0, .L8007D79C
/* 37FB8 8007D7B8 24630001 */   addiu     $v1, $v1, 0x1
/* 37FBC 8007D7BC 3C04801B */  lui        $a0, %hi(D_801AEC18)
/* 37FC0 8007D7C0 0C01EEFE */  jal        func_8007BBF8
/* 37FC4 8007D7C4 2484EC18 */   addiu     $a0, $a0, %lo(D_801AEC18)
/* 37FC8 8007D7C8 3C07801B */  lui        $a3, %hi(D_801AEC18)
/* 37FCC 8007D7CC 24E7EC18 */  addiu      $a3, $a3, %lo(D_801AEC18)
/* 37FD0 8007D7D0 94EE0002 */  lhu        $t6, 0x2($a3)
/* 37FD4 8007D7D4 104E0002 */  beq        $v0, $t6, .L8007D7E0
/* 37FD8 8007D7D8 00000000 */   nop
/* 37FDC 8007D7DC 24100001 */  addiu      $s0, $zero, 0x1
.L8007D7E0:
/* 37FE0 8007D7E0 3C07801B */  lui        $a3, %hi(D_801AEC18)
/* 37FE4 8007D7E4 12000005 */  beqz       $s0, .L8007D7FC
/* 37FE8 8007D7E8 24E7EC18 */   addiu     $a3, $a3, %lo(D_801AEC18)
/* 37FEC 8007D7EC 0C01ECDC */  jal        func_8007B370
/* 37FF0 8007D7F0 00E02025 */   or        $a0, $a3, $zero
/* 37FF4 8007D7F4 3C07801B */  lui        $a3, %hi(D_801AEC18)
/* 37FF8 8007D7F8 24E7EC18 */  addiu      $a3, $a3, %lo(D_801AEC18)
.L8007D7FC:
/* 37FFC 8007D7FC 2E210006 */  sltiu      $at, $s1, 0x6
/* 38000 8007D800 102000AF */  beqz       $at, .L8007DAC0
/* 38004 8007D804 00117880 */   sll       $t7, $s1, 2
/* 38008 8007D808 3C01800F */  lui        $at, %hi(jtbl_800EA36C_main)
/* 3800C 8007D80C 002F0821 */  addu       $at, $at, $t7
/* 38010 8007D810 8C2FA36C */  lw         $t7, %lo(jtbl_800EA36C_main)($at)
/* 38014 8007D814 01E00008 */  jr         $t7
/* 38018 8007D818 00000000 */   nop
glabel L8007D81C
/* 3801C 8007D81C 3C18801B */  lui        $t8, %hi(D_801AEA18)
/* 38020 8007D820 2718EA18 */  addiu      $t8, $t8, %lo(D_801AEA18)
/* 38024 8007D824 270F01F8 */  addiu      $t7, $t8, 0x1F8
/* 38028 8007D828 00E07025 */  or         $t6, $a3, $zero
.L8007D82C:
/* 3802C 8007D82C 8F010000 */  lw         $at, 0x0($t8)
/* 38030 8007D830 2718000C */  addiu      $t8, $t8, 0xC
/* 38034 8007D834 25CE000C */  addiu      $t6, $t6, 0xC
/* 38038 8007D838 ADC1FFF4 */  sw         $at, -0xC($t6)
/* 3803C 8007D83C 8F01FFF8 */  lw         $at, -0x8($t8)
/* 38040 8007D840 ADC1FFF8 */  sw         $at, -0x8($t6)
/* 38044 8007D844 8F01FFFC */  lw         $at, -0x4($t8)
/* 38048 8007D848 170FFFF8 */  bne        $t8, $t7, .L8007D82C
/* 3804C 8007D84C ADC1FFFC */   sw        $at, -0x4($t6)
/* 38050 8007D850 8F010000 */  lw         $at, 0x0($t8)
/* 38054 8007D854 ADC10000 */  sw         $at, 0x0($t6)
/* 38058 8007D858 8F0F0004 */  lw         $t7, 0x4($t8)
/* 3805C 8007D85C 10000098 */  b          .L8007DAC0
/* 38060 8007D860 ADCF0004 */   sw        $t7, 0x4($t6)
glabel L8007D864
/* 38064 8007D864 00111080 */  sll        $v0, $s1, 2
/* 38068 8007D868 00511021 */  addu       $v0, $v0, $s1
/* 3806C 8007D86C 00021040 */  sll        $v0, $v0, 1
/* 38070 8007D870 3C0F801B */  lui        $t7, %hi(D_801AEA18)
/* 38074 8007D874 2628FFFF */  addiu      $t0, $s1, -0x1
/* 38078 8007D878 25EFEA18 */  addiu      $t7, $t7, %lo(D_801AEA18)
/* 3807C 8007D87C 00E22021 */  addu       $a0, $a3, $v0
/* 38080 8007D880 24590006 */  addiu      $t9, $v0, 0x6
/* 38084 8007D884 032F2821 */  addu       $a1, $t9, $t7
/* 38088 8007D888 24840006 */  addiu      $a0, $a0, 0x6
/* 3808C 8007D88C AFA80084 */  sw         $t0, 0x84($sp)
/* 38090 8007D890 0C01A850 */  jal        func_8006A140
/* 38094 8007D894 2406000A */   addiu     $a2, $zero, 0xA
/* 38098 8007D898 8FA80084 */  lw         $t0, 0x84($sp)
/* 3809C 8007D89C 3C0E801B */  lui        $t6, %hi(D_801AEC18)
/* 380A0 8007D8A0 3C0F801B */  lui        $t7, %hi(D_801AEA18)
/* 380A4 8007D8A4 0008C080 */  sll        $t8, $t0, 2
/* 380A8 8007D8A8 0008C880 */  sll        $t9, $t0, 2
/* 380AC 8007D8AC 25EFEA18 */  addiu      $t7, $t7, %lo(D_801AEA18)
/* 380B0 8007D8B0 25CEEC18 */  addiu      $t6, $t6, %lo(D_801AEC18)
/* 380B4 8007D8B4 0328C823 */  subu       $t9, $t9, $t0
/* 380B8 8007D8B8 0308C023 */  subu       $t8, $t8, $t0
/* 380BC 8007D8BC 030E1021 */  addu       $v0, $t8, $t6
/* 380C0 8007D8C0 032F1821 */  addu       $v1, $t9, $t7
/* 380C4 8007D8C4 00003825 */  or         $a3, $zero, $zero
/* 380C8 8007D8C8 240A0003 */  addiu      $t2, $zero, 0x3
.L8007D8CC:
/* 380CC 8007D8CC 80780038 */  lb         $t8, 0x38($v1)
/* 380D0 8007D8D0 24E70001 */  addiu      $a3, $a3, 0x1
/* 380D4 8007D8D4 24420001 */  addiu      $v0, $v0, 0x1
/* 380D8 8007D8D8 24630001 */  addiu      $v1, $v1, 0x1
/* 380DC 8007D8DC 14EAFFFB */  bne        $a3, $t2, .L8007D8CC
/* 380E0 8007D8E0 A0580037 */   sb        $t8, 0x37($v0)
/* 380E4 8007D8E4 3C07801B */  lui        $a3, %hi(D_801AEC18)
/* 380E8 8007D8E8 10000075 */  b          .L8007DAC0
/* 380EC 8007D8EC 24E7EC18 */   addiu     $a3, $a3, %lo(D_801AEC18)
glabel L8007D8F0
/* 380F0 8007D8F0 3C0E801B */  lui        $t6, %hi(D_801AEC18)
/* 380F4 8007D8F4 3C19801B */  lui        $t9, %hi(D_801AEA18)
/* 380F8 8007D8F8 272AEA18 */  addiu      $t2, $t9, %lo(D_801AEA18)
/* 380FC 8007D8FC 25CDEC18 */  addiu      $t5, $t6, %lo(D_801AEC18)
/* 38100 8007D900 01A0F825 */  or         $ra, $t5, $zero
/* 38104 8007D904 01A08825 */  or         $s1, $t5, $zero
/* 38108 8007D908 01A05825 */  or         $t3, $t5, $zero
/* 3810C 8007D90C 01408025 */  or         $s0, $t2, $zero
/* 38110 8007D910 01409025 */  or         $s2, $t2, $zero
/* 38114 8007D914 01406025 */  or         $t4, $t2, $zero
.L8007D918:
/* 38118 8007D918 00003825 */  or         $a3, $zero, $zero
/* 3811C 8007D91C 03E02825 */  or         $a1, $ra, $zero
/* 38120 8007D920 02003025 */  or         $a2, $s0, $zero
/* 38124 8007D924 03E04025 */  or         $t0, $ra, $zero
/* 38128 8007D928 02004825 */  or         $t1, $s0, $zero
.L8007D92C:
/* 3812C 8007D92C 912F0060 */  lbu        $t7, 0x60($t1)
/* 38130 8007D930 91380061 */  lbu        $t8, 0x61($t1)
/* 38134 8007D934 24040002 */  addiu      $a0, $zero, 0x2
/* 38138 8007D938 00C41821 */  addu       $v1, $a2, $a0
/* 3813C 8007D93C 00A41021 */  addu       $v0, $a1, $a0
/* 38140 8007D940 A10F0060 */  sb         $t7, 0x60($t0)
/* 38144 8007D944 A1180061 */  sb         $t8, 0x61($t0)
/* 38148 8007D948 90780063 */  lbu        $t8, 0x63($v1)
/* 3814C 8007D94C 906F0062 */  lbu        $t7, 0x62($v1)
/* 38150 8007D950 90790061 */  lbu        $t9, 0x61($v1)
/* 38154 8007D954 906E0060 */  lbu        $t6, 0x60($v1)
/* 38158 8007D958 24E70001 */  addiu      $a3, $a3, 0x1
/* 3815C 8007D95C 28E10004 */  slti       $at, $a3, 0x4
/* 38160 8007D960 24A50006 */  addiu      $a1, $a1, 0x6
/* 38164 8007D964 24C60006 */  addiu      $a2, $a2, 0x6
/* 38168 8007D968 25080006 */  addiu      $t0, $t0, 0x6
/* 3816C 8007D96C 25290006 */  addiu      $t1, $t1, 0x6
/* 38170 8007D970 A0580063 */  sb         $t8, 0x63($v0)
/* 38174 8007D974 A04F0062 */  sb         $t7, 0x62($v0)
/* 38178 8007D978 A0590061 */  sb         $t9, 0x61($v0)
/* 3817C 8007D97C 1420FFEB */  bnez       $at, .L8007D92C
/* 38180 8007D980 A04E0060 */   sb        $t6, 0x60($v0)
/* 38184 8007D984 00003825 */  or         $a3, $zero, $zero
/* 38188 8007D988 02202825 */  or         $a1, $s1, $zero
/* 3818C 8007D98C 02403025 */  or         $a2, $s2, $zero
.L8007D990:
/* 38190 8007D990 00002025 */  or         $a0, $zero, $zero
/* 38194 8007D994 00A01025 */  or         $v0, $a1, $zero
/* 38198 8007D998 00C01825 */  or         $v1, $a2, $zero
.L8007D99C:
/* 3819C 8007D99C 906E01A8 */  lbu        $t6, 0x1A8($v1)
/* 381A0 8007D9A0 24840001 */  addiu      $a0, $a0, 0x1
/* 381A4 8007D9A4 28810003 */  slti       $at, $a0, 0x3
/* 381A8 8007D9A8 24420001 */  addiu      $v0, $v0, 0x1
/* 381AC 8007D9AC 24630001 */  addiu      $v1, $v1, 0x1
/* 381B0 8007D9B0 1420FFFA */  bnez       $at, .L8007D99C
/* 381B4 8007D9B4 A04E01A7 */   sb        $t6, 0x1A7($v0)
/* 381B8 8007D9B8 24E70001 */  addiu      $a3, $a3, 0x1
/* 381BC 8007D9BC 28E10002 */  slti       $at, $a3, 0x2
/* 381C0 8007D9C0 24A50003 */  addiu      $a1, $a1, 0x3
/* 381C4 8007D9C4 1420FFF2 */  bnez       $at, .L8007D990
/* 381C8 8007D9C8 24C60003 */   addiu     $a2, $a2, 0x3
/* 381CC 8007D9CC 24040001 */  addiu      $a0, $zero, 0x1
/* 381D0 8007D9D0 915901D8 */  lbu        $t9, 0x1D8($t2)
/* 381D4 8007D9D4 01841821 */  addu       $v1, $t4, $a0
/* 381D8 8007D9D8 906F01D8 */  lbu        $t7, 0x1D8($v1)
/* 381DC 8007D9DC 01641021 */  addu       $v0, $t3, $a0
/* 381E0 8007D9E0 A1B901D8 */  sb         $t9, 0x1D8($t5)
/* 381E4 8007D9E4 A04F01D8 */  sb         $t7, 0x1D8($v0)
/* 381E8 8007D9E8 3C0F801B */  lui        $t7, %hi(D_801AEA40)
/* 381EC 8007D9EC 907901DB */  lbu        $t9, 0x1DB($v1)
/* 381F0 8007D9F0 907801D9 */  lbu        $t8, 0x1D9($v1)
/* 381F4 8007D9F4 906E01DA */  lbu        $t6, 0x1DA($v1)
/* 381F8 8007D9F8 25EFEA40 */  addiu      $t7, $t7, %lo(D_801AEA40)
/* 381FC 8007D9FC 254A0005 */  addiu      $t2, $t2, 0x5
/* 38200 8007DA00 014F082B */  sltu       $at, $t2, $t7
/* 38204 8007DA04 256B0005 */  addiu      $t3, $t3, 0x5
/* 38208 8007DA08 258C0005 */  addiu      $t4, $t4, 0x5
/* 3820C 8007DA0C 27FF0018 */  addiu      $ra, $ra, 0x18
/* 38210 8007DA10 26100018 */  addiu      $s0, $s0, 0x18
/* 38214 8007DA14 26310006 */  addiu      $s1, $s1, 0x6
/* 38218 8007DA18 26520006 */  addiu      $s2, $s2, 0x6
/* 3821C 8007DA1C 25AD0005 */  addiu      $t5, $t5, 0x5
/* 38220 8007DA20 A05901DB */  sb         $t9, 0x1DB($v0)
/* 38224 8007DA24 A05801D9 */  sb         $t8, 0x1D9($v0)
/* 38228 8007DA28 1420FFBB */  bnez       $at, .L8007D918
/* 3822C 8007DA2C A04E01DA */   sb        $t6, 0x1DA($v0)
/* 38230 8007DA30 3C0C801B */  lui        $t4, %hi(D_801AEC18)
/* 38234 8007DA34 3C0B801B */  lui        $t3, %hi(D_801AEA18)
/* 38238 8007DA38 3C0D801B */  lui        $t5, %hi(D_801AEA9F)
/* 3823C 8007DA3C 25ADEA9F */  addiu      $t5, $t5, %lo(D_801AEA9F)
/* 38240 8007DA40 256BEA18 */  addiu      $t3, $t3, %lo(D_801AEA18)
/* 38244 8007DA44 258CEC18 */  addiu      $t4, $t4, %lo(D_801AEC18)
/* 38248 8007DA48 240A0003 */  addiu      $t2, $zero, 0x3
.L8007DA4C:
/* 3824C 8007DA4C 00003825 */  or         $a3, $zero, $zero
/* 38250 8007DA50 01802825 */  or         $a1, $t4, $zero
/* 38254 8007DA54 01603025 */  or         $a2, $t3, $zero
/* 38258 8007DA58 01804025 */  or         $t0, $t4, $zero
/* 3825C 8007DA5C 01604825 */  or         $t1, $t3, $zero
.L8007DA60:
/* 38260 8007DA60 91380120 */  lbu        $t8, 0x120($t1)
/* 38264 8007DA64 24040001 */  addiu      $a0, $zero, 0x1
/* 38268 8007DA68 00C41821 */  addu       $v1, $a2, $a0
/* 3826C 8007DA6C 00A41021 */  addu       $v0, $a1, $a0
/* 38270 8007DA70 A1180120 */  sb         $t8, 0x120($t0)
/* 38274 8007DA74 90780123 */  lbu        $t8, 0x123($v1)
/* 38278 8007DA78 90790121 */  lbu        $t9, 0x121($v1)
/* 3827C 8007DA7C 906F0122 */  lbu        $t7, 0x122($v1)
/* 38280 8007DA80 906E0120 */  lbu        $t6, 0x120($v1)
/* 38284 8007DA84 24E70001 */  addiu      $a3, $a3, 0x1
/* 38288 8007DA88 24A50005 */  addiu      $a1, $a1, 0x5
/* 3828C 8007DA8C 24C60005 */  addiu      $a2, $a2, 0x5
/* 38290 8007DA90 25080005 */  addiu      $t0, $t0, 0x5
/* 38294 8007DA94 25290005 */  addiu      $t1, $t1, 0x5
/* 38298 8007DA98 A0580123 */  sb         $t8, 0x123($v0)
/* 3829C 8007DA9C A0590121 */  sb         $t9, 0x121($v0)
/* 382A0 8007DAA0 A04F0122 */  sb         $t7, 0x122($v0)
/* 382A4 8007DAA4 14EAFFEE */  bne        $a3, $t2, .L8007DA60
/* 382A8 8007DAA8 A04E0120 */   sb        $t6, 0x120($v0)
/* 382AC 8007DAAC 256B000F */  addiu      $t3, $t3, 0xF
/* 382B0 8007DAB0 156DFFE6 */  bne        $t3, $t5, .L8007DA4C
/* 382B4 8007DAB4 258C000F */   addiu     $t4, $t4, 0xF
/* 382B8 8007DAB8 3C07801B */  lui        $a3, %hi(D_801AEC18)
/* 382BC 8007DABC 24E7EC18 */  addiu      $a3, $a3, %lo(D_801AEC18)
.L8007DAC0:
/* 382C0 8007DAC0 0C01EEFE */  jal        func_8007BBF8
/* 382C4 8007DAC4 00E02025 */   or        $a0, $a3, $zero
/* 382C8 8007DAC8 3C19801B */  lui        $t9, %hi(D_801AEC18)
/* 382CC 8007DACC 3C01801B */  lui        $at, %hi(D_801AEC1A)
/* 382D0 8007DAD0 2739EC18 */  addiu      $t9, $t9, %lo(D_801AEC18)
/* 382D4 8007DAD4 3C04801C */  lui        $a0, %hi(D_801C3AD0)
/* 382D8 8007DAD8 240E0200 */  addiu      $t6, $zero, 0x200
/* 382DC 8007DADC A422EC1A */  sh         $v0, %lo(D_801AEC1A)($at)
/* 382E0 8007DAE0 AFAE0010 */  sw         $t6, 0x10($sp)
/* 382E4 8007DAE4 24843AD0 */  addiu      $a0, $a0, %lo(D_801C3AD0)
/* 382E8 8007DAE8 AFB90014 */  sw         $t9, 0x14($sp)
/* 382EC 8007DAEC 8FA5006C */  lw         $a1, 0x6C($sp)
/* 382F0 8007DAF0 24060001 */  addiu      $a2, $zero, 0x1
/* 382F4 8007DAF4 0C0323A8 */  jal        func_800C8EA0
/* 382F8 8007DAF8 00003825 */   or        $a3, $zero, $zero
/* 382FC 8007DAFC 2C410007 */  sltiu      $at, $v0, 0x7
/* 38300 8007DB00 10200008 */  beqz       $at, L8007DB24
/* 38304 8007DB04 00027880 */   sll       $t7, $v0, 2
/* 38308 8007DB08 3C01800F */  lui        $at, %hi(jtbl_800EA384_main)
/* 3830C 8007DB0C 002F0821 */  addu       $at, $at, $t7
/* 38310 8007DB10 8C2FA384 */  lw         $t7, %lo(jtbl_800EA384_main)($at)
/* 38314 8007DB14 01E00008 */  jr         $t7
/* 38318 8007DB18 00000000 */   nop
glabel L8007DB1C
/* 3831C 8007DB1C 10000002 */  b          .L8007DB28
/* 38320 8007DB20 00001025 */   or        $v0, $zero, $zero
glabel L8007DB24
/* 38324 8007DB24 24020002 */  addiu      $v0, $zero, 0x2
.L8007DB28:
/* 38328 8007DB28 8FBF0034 */  lw         $ra, 0x34($sp)
.L8007DB2C:
/* 3832C 8007DB2C 8FB00028 */  lw         $s0, 0x28($sp)
/* 38330 8007DB30 8FB1002C */  lw         $s1, 0x2C($sp)
/* 38334 8007DB34 8FB20030 */  lw         $s2, 0x30($sp)
/* 38338 8007DB38 03E00008 */  jr         $ra
/* 3833C 8007DB3C 27BD0088 */   addiu     $sp, $sp, 0x88

glabel func_8007DB40
/* 38340 8007DB40 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 38344 8007DB44 AFBF001C */  sw         $ra, 0x1C($sp)
/* 38348 8007DB48 0C01F444 */  jal        func_8007D110
/* 3834C 8007DB4C 00000000 */   nop
/* 38350 8007DB50 10400003 */  beqz       $v0, .L8007DB60
/* 38354 8007DB54 3C04801C */   lui       $a0, %hi(D_801C3AD0)
/* 38358 8007DB58 10000016 */  b          .L8007DBB4
/* 3835C 8007DB5C 8FBF001C */   lw        $ra, 0x1C($sp)
.L8007DB60:
/* 38360 8007DB60 3C0E800E */  lui        $t6, %hi(D_800D82D8)
/* 38364 8007DB64 25CE82D8 */  addiu      $t6, $t6, %lo(D_800D82D8)
/* 38368 8007DB68 3C064E57 */  lui        $a2, (0x4E57524A >> 16)
/* 3836C 8007DB6C 3C07800E */  lui        $a3, %hi(D_800D82E8)
/* 38370 8007DB70 24E782E8 */  addiu      $a3, $a3, %lo(D_800D82E8)
/* 38374 8007DB74 34C6524A */  ori        $a2, $a2, (0x4E57524A & 0xFFFF)
/* 38378 8007DB78 AFAE0010 */  sw         $t6, 0x10($sp)
/* 3837C 8007DB7C 24843AD0 */  addiu      $a0, $a0, %lo(D_801C3AD0)
/* 38380 8007DB80 0C03262C */  jal        func_800C98B0
/* 38384 8007DB84 24050001 */   addiu     $a1, $zero, 0x1
/* 38388 8007DB88 10400005 */  beqz       $v0, .L8007DBA0
/* 3838C 8007DB8C 24010005 */   addiu     $at, $zero, 0x5
/* 38390 8007DB90 10410005 */  beq        $v0, $at, .L8007DBA8
/* 38394 8007DB94 00000000 */   nop
/* 38398 8007DB98 10000005 */  b          .L8007DBB0
/* 3839C 8007DB9C 24020002 */   addiu     $v0, $zero, 0x2
.L8007DBA0:
/* 383A0 8007DBA0 10000003 */  b          .L8007DBB0
/* 383A4 8007DBA4 00001025 */   or        $v0, $zero, $zero
.L8007DBA8:
/* 383A8 8007DBA8 10000001 */  b          .L8007DBB0
/* 383AC 8007DBAC 24020004 */   addiu     $v0, $zero, 0x4
.L8007DBB0:
/* 383B0 8007DBB0 8FBF001C */  lw         $ra, 0x1C($sp)
.L8007DBB4:
/* 383B4 8007DBB4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 383B8 8007DBB8 03E00008 */  jr         $ra
/* 383BC 8007DBBC 00000000 */   nop

glabel func_8007DBC0
/* 383C0 8007DBC0 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 383C4 8007DBC4 3C03801C */  lui        $v1, %hi(D_801BB120)
/* 383C8 8007DBC8 8C63B120 */  lw         $v1, %lo(D_801BB120)($v1)
/* 383CC 8007DBCC AFBF004C */  sw         $ra, 0x4C($sp)
/* 383D0 8007DBD0 AFB10048 */  sw         $s1, 0x48($sp)
/* 383D4 8007DBD4 AFB00044 */  sw         $s0, 0x44($sp)
/* 383D8 8007DBD8 F7BE0038 */  sdc1       $f30, 0x38($sp)
/* 383DC 8007DBDC F7BC0030 */  sdc1       $f28, 0x30($sp)
/* 383E0 8007DBE0 F7BA0028 */  sdc1       $f26, 0x28($sp)
/* 383E4 8007DBE4 F7B80020 */  sdc1       $f24, 0x20($sp)
/* 383E8 8007DBE8 F7B60018 */  sdc1       $f22, 0x18($sp)
/* 383EC 8007DBEC 18600064 */  blez       $v1, .L8007DD80
/* 383F0 8007DBF0 F7B40010 */   sdc1      $f20, 0x10($sp)
/* 383F4 8007DBF4 3C01800F */  lui        $at, %hi(D_800EA3A0)
/* 383F8 8007DBF8 D43EA3A0 */  ldc1       $f30, %lo(D_800EA3A0)($at)
/* 383FC 8007DBFC 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 38400 8007DC00 4481E000 */  mtc1       $at, $f28
/* 38404 8007DC04 3C014220 */  lui        $at, (0x42200000 >> 16)
/* 38408 8007DC08 4481D000 */  mtc1       $at, $f26
/* 3840C 8007DC0C 3C014008 */  lui        $at, (0x40080000 >> 16)
/* 38410 8007DC10 4481C800 */  mtc1       $at, $f25
/* 38414 8007DC14 3C01800F */  lui        $at, %hi(D_800EA3A8)
/* 38418 8007DC18 D436A3A8 */  ldc1       $f22, %lo(D_800EA3A8)($at)
/* 3841C 8007DC1C 3C01800F */  lui        $at, %hi(D_800EA3B0)
/* 38420 8007DC20 3C10801B */  lui        $s0, %hi(D_801AEE20)
/* 38424 8007DC24 4480C000 */  mtc1       $zero, $f24
/* 38428 8007DC28 2610EE20 */  addiu      $s0, $s0, %lo(D_801AEE20)
/* 3842C 8007DC2C D434A3B0 */  ldc1       $f20, %lo(D_800EA3B0)($at)
/* 38430 8007DC30 8E0E009C */  lw         $t6, 0x9C($s0)
.L8007DC34:
/* 38434 8007DC34 0003C180 */  sll        $t8, $v1, 6
/* 38438 8007DC38 0303C021 */  addu       $t8, $t8, $v1
/* 3843C 8007DC3C 15C00003 */  bnez       $t6, .L8007DC4C
/* 38440 8007DC40 0018C080 */   sll       $t8, $t8, 2
/* 38444 8007DC44 8E0F00C4 */  lw         $t7, 0xC4($s0)
/* 38448 8007DC48 15E00004 */  bnez       $t7, .L8007DC5C
.L8007DC4C:
/* 3844C 8007DC4C 3C19801B */   lui       $t9, %hi(D_801AEE20)
/* 38450 8007DC50 2739EE20 */  addiu      $t9, $t9, %lo(D_801AEE20)
/* 38454 8007DC54 10000046 */  b          .L8007DD70
/* 38458 8007DC58 03191021 */   addu      $v0, $t8, $t9
.L8007DC5C:
/* 3845C 8007DC5C C60C0000 */  lwc1       $f12, 0x0($s0)
/* 38460 8007DC60 C60A0024 */  lwc1       $f10, 0x24($s0)
/* 38464 8007DC64 C604003C */  lwc1       $f4, 0x3C($s0)
/* 38468 8007DC68 C60E0008 */  lwc1       $f14, 0x8($s0)
/* 3846C 8007DC6C 460C5401 */  sub.s      $f16, $f10, $f12
/* 38470 8007DC70 460021A1 */  cvt.d.s    $f6, $f4
/* 38474 8007DC74 460084A1 */  cvt.d.s    $f18, $f16
/* 38478 8007DC78 46343202 */  mul.d      $f8, $f6, $f20
/* 3847C 8007DC7C C6100044 */  lwc1       $f16, 0x44($s0)
/* 38480 8007DC80 4632B102 */  mul.d      $f4, $f22, $f18
/* 38484 8007DC84 460084A1 */  cvt.d.s    $f18, $f16
/* 38488 8007DC88 46244180 */  add.d      $f6, $f8, $f4
/* 3848C 8007DC8C C6040028 */  lwc1       $f4, 0x28($s0)
/* 38490 8007DC90 46349202 */  mul.d      $f8, $f18, $f20
/* 38494 8007DC94 462032A0 */  cvt.s.d    $f10, $f6
/* 38498 8007DC98 460E2181 */  sub.s      $f6, $f4, $f14
/* 3849C 8007DC9C E60A003C */  swc1       $f10, 0x3C($s0)
/* 384A0 8007DCA0 460032A1 */  cvt.d.s    $f10, $f6
/* 384A4 8007DCA4 C6060040 */  lwc1       $f6, 0x40($s0)
/* 384A8 8007DCA8 462AB402 */  mul.d      $f16, $f22, $f10
/* 384AC 8007DCAC 460032A1 */  cvt.d.s    $f10, $f6
/* 384B0 8007DCB0 46304480 */  add.d      $f18, $f8, $f16
/* 384B4 8007DCB4 46345202 */  mul.d      $f8, $f10, $f20
/* 384B8 8007DCB8 46209120 */  cvt.s.d    $f4, $f18
/* 384BC 8007DCBC 46384401 */  sub.d      $f16, $f8, $f24
/* 384C0 8007DCC0 E6040044 */  swc1       $f4, 0x44($s0)
/* 384C4 8007DCC4 462084A0 */  cvt.s.d    $f18, $f16
/* 384C8 8007DCC8 0C0134C3 */  jal        func_8004D30C
/* 384CC 8007DCCC E6120040 */   swc1      $f18, 0x40($s0)
/* 384D0 8007DCD0 461A0100 */  add.s      $f4, $f0, $f26
/* 384D4 8007DCD4 C60C0004 */  lwc1       $f12, 0x4($s0)
/* 384D8 8007DCD8 44803000 */  mtc1       $zero, $f6
/* 384DC 8007DCDC 460C2081 */  sub.s      $f2, $f4, $f12
/* 384E0 8007DCE0 4602303C */  c.lt.s     $f6, $f2
/* 384E4 8007DCE4 00000000 */  nop
/* 384E8 8007DCE8 4502000F */  bc1fl      .L8007DD28
/* 384EC 8007DCEC C60A0000 */   lwc1      $f10, 0x0($s0)
/* 384F0 8007DCF0 4602E03C */  c.lt.s     $f28, $f2
/* 384F4 8007DCF4 00000000 */  nop
/* 384F8 8007DCF8 45020003 */  bc1fl      .L8007DD08
/* 384FC 8007DCFC 46001421 */   cvt.d.s   $f16, $f2
/* 38500 8007DD00 4600E086 */  mov.s      $f2, $f28
/* 38504 8007DD04 46001421 */  cvt.d.s    $f16, $f2
.L8007DD08:
/* 38508 8007DD08 C60A0040 */  lwc1       $f10, 0x40($s0)
/* 3850C 8007DD0C 4630F482 */  mul.d      $f18, $f30, $f16
/* 38510 8007DD10 C60C0004 */  lwc1       $f12, 0x4($s0)
/* 38514 8007DD14 46005221 */  cvt.d.s    $f8, $f10
/* 38518 8007DD18 46324100 */  add.d      $f4, $f8, $f18
/* 3851C 8007DD1C 462021A0 */  cvt.s.d    $f6, $f4
/* 38520 8007DD20 E6060040 */  swc1       $f6, 0x40($s0)
/* 38524 8007DD24 C60A0000 */  lwc1       $f10, 0x0($s0)
.L8007DD28:
/* 38528 8007DD28 C610003C */  lwc1       $f16, 0x3C($s0)
/* 3852C 8007DD2C C6120040 */  lwc1       $f18, 0x40($s0)
/* 38530 8007DD30 C6060008 */  lwc1       $f6, 0x8($s0)
/* 38534 8007DD34 46105200 */  add.s      $f8, $f10, $f16
/* 38538 8007DD38 C60A0044 */  lwc1       $f10, 0x44($s0)
/* 3853C 8007DD3C 3C03801C */  lui        $v1, %hi(D_801BB120)
/* 38540 8007DD40 46126100 */  add.s      $f4, $f12, $f18
/* 38544 8007DD44 E6080000 */  swc1       $f8, 0x0($s0)
/* 38548 8007DD48 3C09801B */  lui        $t1, %hi(D_801AEE20)
/* 3854C 8007DD4C 460A3400 */  add.s      $f16, $f6, $f10
/* 38550 8007DD50 E6040004 */  swc1       $f4, 0x4($s0)
/* 38554 8007DD54 2529EE20 */  addiu      $t1, $t1, %lo(D_801AEE20)
/* 38558 8007DD58 E6100008 */  swc1       $f16, 0x8($s0)
/* 3855C 8007DD5C 8C63B120 */  lw         $v1, %lo(D_801BB120)($v1)
/* 38560 8007DD60 00034180 */  sll        $t0, $v1, 6
/* 38564 8007DD64 01034021 */  addu       $t0, $t0, $v1
/* 38568 8007DD68 00084080 */  sll        $t0, $t0, 2
/* 3856C 8007DD6C 01091021 */  addu       $v0, $t0, $t1
.L8007DD70:
/* 38570 8007DD70 26100104 */  addiu      $s0, $s0, 0x104
/* 38574 8007DD74 0202082B */  sltu       $at, $s0, $v0
/* 38578 8007DD78 5420FFAE */  bnel       $at, $zero, .L8007DC34
/* 3857C 8007DD7C 8E0E009C */   lw        $t6, 0x9C($s0)
.L8007DD80:
/* 38580 8007DD80 3C01800F */  lui        $at, %hi(D_800EA3B8)
/* 38584 8007DD84 D434A3B8 */  ldc1       $f20, %lo(D_800EA3B8)($at)
/* 38588 8007DD88 3C03801C */  lui        $v1, %hi(D_801BFA40)
/* 3858C 8007DD8C 8C63FA40 */  lw         $v1, %lo(D_801BFA40)($v1)
/* 38590 8007DD90 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 38594 8007DD94 4481E000 */  mtc1       $at, $f28
/* 38598 8007DD98 3C01800F */  lui        $at, %hi(D_800EA3C0)
/* 3859C 8007DD9C 18600060 */  blez       $v1, .L8007DF20
/* 385A0 8007DDA0 D43EA3C0 */   ldc1      $f30, %lo(D_800EA3C0)($at)
/* 385A4 8007DDA4 3C014010 */  lui        $at, (0x40100000 >> 16)
/* 385A8 8007DDA8 4481D800 */  mtc1       $at, $f27
/* 385AC 8007DDAC 3C01800F */  lui        $at, %hi(D_800EA3C8)
/* 385B0 8007DDB0 D438A3C8 */  ldc1       $f24, %lo(D_800EA3C8)($at)
/* 385B4 8007DDB4 3C01800F */  lui        $at, %hi(D_800EA3D0)
/* 385B8 8007DDB8 3C10801C */  lui        $s0, %hi(D_801BC940)
/* 385BC 8007DDBC 4480D000 */  mtc1       $zero, $f26
/* 385C0 8007DDC0 2610C940 */  addiu      $s0, $s0, %lo(D_801BC940)
/* 385C4 8007DDC4 D436A3D0 */  ldc1       $f22, %lo(D_800EA3D0)($at)
/* 385C8 8007DDC8 24110004 */  addiu      $s1, $zero, 0x4
/* 385CC 8007DDCC 8E0A0058 */  lw         $t2, 0x58($s0)
.L8007DDD0:
/* 385D0 8007DDD0 00035880 */  sll        $t3, $v1, 2
/* 385D4 8007DDD4 01635823 */  subu       $t3, $t3, $v1
/* 385D8 8007DDD8 122A0007 */  beq        $s1, $t2, .L8007DDF8
/* 385DC 8007DDDC 000B5900 */   sll       $t3, $t3, 4
/* 385E0 8007DDE0 01635821 */  addu       $t3, $t3, $v1
/* 385E4 8007DDE4 3C0C801C */  lui        $t4, %hi(D_801BC940)
/* 385E8 8007DDE8 258CC940 */  addiu      $t4, $t4, %lo(D_801BC940)
/* 385EC 8007DDEC 000B5880 */  sll        $t3, $t3, 2
/* 385F0 8007DDF0 10000047 */  b          .L8007DF10
/* 385F4 8007DDF4 016C1021 */   addu      $v0, $t3, $t4
.L8007DDF8:
/* 385F8 8007DDF8 C60C0000 */  lwc1       $f12, 0x0($s0)
/* 385FC 8007DDFC C6060024 */  lwc1       $f6, 0x24($s0)
/* 38600 8007DE00 C6080018 */  lwc1       $f8, 0x18($s0)
/* 38604 8007DE04 C60E0008 */  lwc1       $f14, 0x8($s0)
/* 38608 8007DE08 460C3281 */  sub.s      $f10, $f6, $f12
/* 3860C 8007DE0C 460044A1 */  cvt.d.s    $f18, $f8
/* 38610 8007DE10 46005421 */  cvt.d.s    $f16, $f10
/* 38614 8007DE14 46349102 */  mul.d      $f4, $f18, $f20
/* 38618 8007DE18 C60A0020 */  lwc1       $f10, 0x20($s0)
/* 3861C 8007DE1C 4630B202 */  mul.d      $f8, $f22, $f16
/* 38620 8007DE20 46005421 */  cvt.d.s    $f16, $f10
/* 38624 8007DE24 46282480 */  add.d      $f18, $f4, $f8
/* 38628 8007DE28 C608002C */  lwc1       $f8, 0x2C($s0)
/* 3862C 8007DE2C 46348102 */  mul.d      $f4, $f16, $f20
/* 38630 8007DE30 462091A0 */  cvt.s.d    $f6, $f18
/* 38634 8007DE34 460E4481 */  sub.s      $f18, $f8, $f14
/* 38638 8007DE38 E6060018 */  swc1       $f6, 0x18($s0)
/* 3863C 8007DE3C 460091A1 */  cvt.d.s    $f6, $f18
/* 38640 8007DE40 C612001C */  lwc1       $f18, 0x1C($s0)
/* 38644 8007DE44 4626B282 */  mul.d      $f10, $f22, $f6
/* 38648 8007DE48 460091A1 */  cvt.d.s    $f6, $f18
/* 3864C 8007DE4C 462A2400 */  add.d      $f16, $f4, $f10
/* 38650 8007DE50 46383102 */  mul.d      $f4, $f6, $f24
/* 38654 8007DE54 46208220 */  cvt.s.d    $f8, $f16
/* 38658 8007DE58 463A2281 */  sub.d      $f10, $f4, $f26
/* 3865C 8007DE5C E6080020 */  swc1       $f8, 0x20($s0)
/* 38660 8007DE60 46205420 */  cvt.s.d    $f16, $f10
/* 38664 8007DE64 0C0134C3 */  jal        func_8004D30C
/* 38668 8007DE68 E610001C */   swc1      $f16, 0x1C($s0)
/* 3866C 8007DE6C C60C0004 */  lwc1       $f12, 0x4($s0)
/* 38670 8007DE70 44804000 */  mtc1       $zero, $f8
/* 38674 8007DE74 460C0081 */  sub.s      $f2, $f0, $f12
/* 38678 8007DE78 4602403C */  c.lt.s     $f8, $f2
/* 3867C 8007DE7C 00000000 */  nop
/* 38680 8007DE80 4502000F */  bc1fl      .L8007DEC0
/* 38684 8007DE84 C6120000 */   lwc1      $f18, 0x0($s0)
/* 38688 8007DE88 4602E03C */  c.lt.s     $f28, $f2
/* 3868C 8007DE8C 00000000 */  nop
/* 38690 8007DE90 45020003 */  bc1fl      .L8007DEA0
/* 38694 8007DE94 46001121 */   cvt.d.s   $f4, $f2
/* 38698 8007DE98 4600E086 */  mov.s      $f2, $f28
/* 3869C 8007DE9C 46001121 */  cvt.d.s    $f4, $f2
.L8007DEA0:
/* 386A0 8007DEA0 C612001C */  lwc1       $f18, 0x1C($s0)
/* 386A4 8007DEA4 4624F282 */  mul.d      $f10, $f30, $f4
/* 386A8 8007DEA8 C60C0004 */  lwc1       $f12, 0x4($s0)
/* 386AC 8007DEAC 460091A1 */  cvt.d.s    $f6, $f18
/* 386B0 8007DEB0 462A3400 */  add.d      $f16, $f6, $f10
/* 386B4 8007DEB4 46208220 */  cvt.s.d    $f8, $f16
/* 386B8 8007DEB8 E608001C */  swc1       $f8, 0x1C($s0)
/* 386BC 8007DEBC C6120000 */  lwc1       $f18, 0x0($s0)
.L8007DEC0:
/* 386C0 8007DEC0 C6040018 */  lwc1       $f4, 0x18($s0)
/* 386C4 8007DEC4 C60A001C */  lwc1       $f10, 0x1C($s0)
/* 386C8 8007DEC8 C6080008 */  lwc1       $f8, 0x8($s0)
/* 386CC 8007DECC 46049180 */  add.s      $f6, $f18, $f4
/* 386D0 8007DED0 C6120020 */  lwc1       $f18, 0x20($s0)
/* 386D4 8007DED4 3C03801C */  lui        $v1, %hi(D_801BFA40)
/* 386D8 8007DED8 460A6400 */  add.s      $f16, $f12, $f10
/* 386DC 8007DEDC E6060000 */  swc1       $f6, 0x0($s0)
/* 386E0 8007DEE0 3C0E801C */  lui        $t6, %hi(D_801BC940)
/* 386E4 8007DEE4 46124100 */  add.s      $f4, $f8, $f18
/* 386E8 8007DEE8 E6100004 */  swc1       $f16, 0x4($s0)
/* 386EC 8007DEEC 25CEC940 */  addiu      $t6, $t6, %lo(D_801BC940)
/* 386F0 8007DEF0 E6040008 */  swc1       $f4, 0x8($s0)
/* 386F4 8007DEF4 8C63FA40 */  lw         $v1, %lo(D_801BFA40)($v1)
/* 386F8 8007DEF8 00036880 */  sll        $t5, $v1, 2
/* 386FC 8007DEFC 01A36823 */  subu       $t5, $t5, $v1
/* 38700 8007DF00 000D6900 */  sll        $t5, $t5, 4
/* 38704 8007DF04 01A36821 */  addu       $t5, $t5, $v1
/* 38708 8007DF08 000D6880 */  sll        $t5, $t5, 2
/* 3870C 8007DF0C 01AE1021 */  addu       $v0, $t5, $t6
.L8007DF10:
/* 38710 8007DF10 261000C4 */  addiu      $s0, $s0, 0xC4
/* 38714 8007DF14 0202082B */  sltu       $at, $s0, $v0
/* 38718 8007DF18 5420FFAD */  bnel       $at, $zero, .L8007DDD0
/* 3871C 8007DF1C 8E0A0058 */   lw        $t2, 0x58($s0)
.L8007DF20:
/* 38720 8007DF20 8FBF004C */  lw         $ra, 0x4C($sp)
/* 38724 8007DF24 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 38728 8007DF28 D7B60018 */  ldc1       $f22, 0x18($sp)
/* 3872C 8007DF2C D7B80020 */  ldc1       $f24, 0x20($sp)
/* 38730 8007DF30 D7BA0028 */  ldc1       $f26, 0x28($sp)
/* 38734 8007DF34 D7BC0030 */  ldc1       $f28, 0x30($sp)
/* 38738 8007DF38 D7BE0038 */  ldc1       $f30, 0x38($sp)
/* 3873C 8007DF3C 8FB00044 */  lw         $s0, 0x44($sp)
/* 38740 8007DF40 8FB10048 */  lw         $s1, 0x48($sp)
/* 38744 8007DF44 03E00008 */  jr         $ra
/* 38748 8007DF48 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_8007DF4C
/* 3874C 8007DF4C 3C0E801C */  lui        $t6, %hi(D_801BB120)
/* 38750 8007DF50 8DCEB120 */  lw         $t6, %lo(D_801BB120)($t6)
/* 38754 8007DF54 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 38758 8007DF58 3C03801B */  lui        $v1, %hi(D_801AEE20)
/* 3875C 8007DF5C 000E7980 */  sll        $t7, $t6, 6
/* 38760 8007DF60 01EE7821 */  addu       $t7, $t7, $t6
/* 38764 8007DF64 2463EE20 */  addiu      $v1, $v1, %lo(D_801AEE20)
/* 38768 8007DF68 000F7880 */  sll        $t7, $t7, 2
/* 3876C 8007DF6C 006F1021 */  addu       $v0, $v1, $t7
/* 38770 8007DF70 F7B80020 */  sdc1       $f24, 0x20($sp)
/* 38774 8007DF74 F7B60018 */  sdc1       $f22, 0x18($sp)
/* 38778 8007DF78 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 3877C 8007DF7C 2442FEFC */  addiu      $v0, $v0, -0x104
/* 38780 8007DF80 4485A000 */  mtc1       $a1, $f20
/* 38784 8007DF84 4487B000 */  mtc1       $a3, $f22
/* 38788 8007DF88 4486C000 */  mtc1       $a2, $f24
/* 3878C 8007DF8C 0043082B */  sltu       $at, $v0, $v1
/* 38790 8007DF90 AFBF0044 */  sw         $ra, 0x44($sp)
/* 38794 8007DF94 F7BE0038 */  sdc1       $f30, 0x38($sp)
/* 38798 8007DF98 F7BC0030 */  sdc1       $f28, 0x30($sp)
/* 3879C 8007DF9C 14200241 */  bnez       $at, .L8007E8A4
/* 387A0 8007DFA0 F7BA0028 */   sdc1      $f26, 0x28($sp)
/* 387A4 8007DFA4 3C01800F */  lui        $at, %hi(D_800EA3D8)
/* 387A8 8007DFA8 C43AA3D8 */  lwc1       $f26, %lo(D_800EA3D8)($at)
/* 387AC 8007DFAC 3C01800F */  lui        $at, %hi(D_800EA3DC)
/* 387B0 8007DFB0 C432A3DC */  lwc1       $f18, %lo(D_800EA3DC)($at)
/* 387B4 8007DFB4 24050003 */  addiu      $a1, $zero, 0x3
/* 387B8 8007DFB8 8C58009C */  lw         $t8, 0x9C($v0)
.L8007DFBC:
/* 387BC 8007DFBC 57000087 */  bnel       $t8, $zero, .L8007E1DC
/* 387C0 8007DFC0 8C490098 */   lw        $t1, 0x98($v0)
/* 387C4 8007DFC4 8C5900C4 */  lw         $t9, 0xC4($v0)
/* 387C8 8007DFC8 53200233 */  beql       $t9, $zero, .L8007E898
/* 387CC 8007DFCC 2442FEFC */   addiu     $v0, $v0, -0x104
/* 387D0 8007DFD0 C4440000 */  lwc1       $f4, 0x0($v0)
/* 387D4 8007DFD4 C4460008 */  lwc1       $f6, 0x8($v0)
/* 387D8 8007DFD8 4604A381 */  sub.s      $f14, $f20, $f4
/* 387DC 8007DFDC 4606B401 */  sub.s      $f16, $f22, $f6
/* 387E0 8007DFE0 460E7202 */  mul.s      $f8, $f14, $f14
/* 387E4 8007DFE4 00000000 */  nop
/* 387E8 8007DFE8 46108282 */  mul.s      $f10, $f16, $f16
/* 387EC 8007DFEC 460A4000 */  add.s      $f0, $f8, $f10
/* 387F0 8007DFF0 4600903C */  c.lt.s     $f18, $f0
/* 387F4 8007DFF4 00000000 */  nop
/* 387F8 8007DFF8 45010226 */  bc1t       .L8007E894
/* 387FC 8007DFFC 00000000 */   nop
/* 38800 8007E000 C4440004 */  lwc1       $f4, 0x4($v0)
/* 38804 8007E004 4604C081 */  sub.s      $f2, $f24, $f4
/* 38808 8007E008 46021182 */  mul.s      $f6, $f2, $f2
/* 3880C 8007E00C 46060300 */  add.s      $f12, $f0, $f6
/* 38810 8007E010 4612603C */  c.lt.s     $f12, $f18
/* 38814 8007E014 00000000 */  nop
/* 38818 8007E018 4502021F */  bc1fl      .L8007E898
/* 3881C 8007E01C 2442FEFC */   addiu     $v0, $v0, -0x104
/* 38820 8007E020 AFA20084 */  sw         $v0, 0x84($sp)
/* 38824 8007E024 AFA40088 */  sw         $a0, 0x88($sp)
/* 38828 8007E028 E7A2007C */  swc1       $f2, 0x7C($sp)
/* 3882C 8007E02C E7AE0080 */  swc1       $f14, 0x80($sp)
/* 38830 8007E030 0C031C04 */  jal        sqrtf
/* 38834 8007E034 E7B00078 */   swc1      $f16, 0x78($sp)
/* 38838 8007E038 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 3883C 8007E03C 44814000 */  mtc1       $at, $f8
/* 38840 8007E040 C7AE0080 */  lwc1       $f14, 0x80($sp)
/* 38844 8007E044 C7A2007C */  lwc1       $f2, 0x7C($sp)
/* 38848 8007E048 46004483 */  div.s      $f18, $f8, $f0
/* 3884C 8007E04C 3C014278 */  lui        $at, (0x42780000 >> 16)
/* 38850 8007E050 44815000 */  mtc1       $at, $f10
/* 38854 8007E054 C7B00078 */  lwc1       $f16, 0x78($sp)
/* 38858 8007E058 3C01800D */  lui        $at, %hi(D_800D49B8)
/* 3885C 8007E05C 46005501 */  sub.s      $f20, $f10, $f0
/* 38860 8007E060 C42449B8 */  lwc1       $f4, %lo(D_800D49B8)($at)
/* 38864 8007E064 8FA20084 */  lw         $v0, 0x84($sp)
/* 38868 8007E068 8FA40088 */  lw         $a0, 0x88($sp)
/* 3886C 8007E06C C4460000 */  lwc1       $f6, 0x0($v0)
/* 38870 8007E070 C44A0004 */  lwc1       $f10, 0x4($v0)
/* 38874 8007E074 46127382 */  mul.s      $f14, $f14, $f18
/* 38878 8007E078 00000000 */  nop
/* 3887C 8007E07C 46121082 */  mul.s      $f2, $f2, $f18
/* 38880 8007E080 00000000 */  nop
/* 38884 8007E084 46128402 */  mul.s      $f16, $f16, $f18
/* 38888 8007E088 00000000 */  nop
/* 3888C 8007E08C 4604A302 */  mul.s      $f12, $f20, $f4
/* 38890 8007E090 460CA581 */  sub.s      $f22, $f20, $f12
/* 38894 8007E094 460EB602 */  mul.s      $f24, $f22, $f14
/* 38898 8007E098 46183201 */  sub.s      $f8, $f6, $f24
/* 3889C 8007E09C 4602B682 */  mul.s      $f26, $f22, $f2
/* 388A0 8007E0A0 E4480000 */  swc1       $f8, 0x0($v0)
/* 388A4 8007E0A4 4610B182 */  mul.s      $f6, $f22, $f16
/* 388A8 8007E0A8 461A5101 */  sub.s      $f4, $f10, $f26
/* 388AC 8007E0AC E4440004 */  swc1       $f4, 0x4($v0)
/* 388B0 8007E0B0 E7A6005C */  swc1       $f6, 0x5C($sp)
/* 388B4 8007E0B4 C7AA005C */  lwc1       $f10, 0x5C($sp)
/* 388B8 8007E0B8 C4480008 */  lwc1       $f8, 0x8($v0)
/* 388BC 8007E0BC C446003C */  lwc1       $f6, 0x3C($v0)
/* 388C0 8007E0C0 460A4101 */  sub.s      $f4, $f8, $f10
/* 388C4 8007E0C4 C44A0040 */  lwc1       $f10, 0x40($v0)
/* 388C8 8007E0C8 46183201 */  sub.s      $f8, $f6, $f24
/* 388CC 8007E0CC E4440008 */  swc1       $f4, 0x8($v0)
/* 388D0 8007E0D0 C4460044 */  lwc1       $f6, 0x44($v0)
/* 388D4 8007E0D4 461A5101 */  sub.s      $f4, $f10, $f26
/* 388D8 8007E0D8 E448003C */  swc1       $f8, 0x3C($v0)
/* 388DC 8007E0DC E4440040 */  swc1       $f4, 0x40($v0)
/* 388E0 8007E0E0 C7A8005C */  lwc1       $f8, 0x5C($sp)
/* 388E4 8007E0E4 460E6102 */  mul.s      $f4, $f12, $f14
/* 388E8 8007E0E8 46083281 */  sub.s      $f10, $f6, $f8
/* 388EC 8007E0EC 46026702 */  mul.s      $f28, $f12, $f2
/* 388F0 8007E0F0 E44A0044 */  swc1       $f10, 0x44($v0)
/* 388F4 8007E0F4 8FA30098 */  lw         $v1, 0x98($sp)
/* 388F8 8007E0F8 E7A40074 */  swc1       $f4, 0x74($sp)
/* 388FC 8007E0FC 46106782 */  mul.s      $f30, $f12, $f16
/* 38900 8007E100 C476000C */  lwc1       $f22, 0xC($v1)
/* 38904 8007E104 46007187 */  neg.s      $f6, $f14
/* 38908 8007E108 C4780010 */  lwc1       $f24, 0x10($v1)
/* 3890C 8007E10C 46163202 */  mul.s      $f8, $f6, $f22
/* 38910 8007E110 C47A0014 */  lwc1       $f26, 0x14($v1)
/* 38914 8007E114 46181282 */  mul.s      $f10, $f2, $f24
/* 38918 8007E118 4407F000 */  mfc1       $a3, $f30
/* 3891C 8007E11C 461A8182 */  mul.s      $f6, $f16, $f26
/* 38920 8007E120 460A4101 */  sub.s      $f4, $f8, $f10
/* 38924 8007E124 C4880C38 */  lwc1       $f8, 0xC38($a0)
/* 38928 8007E128 46062301 */  sub.s      $f12, $f4, $f6
/* 3892C 8007E12C 460C403C */  c.lt.s     $f8, $f12
/* 38930 8007E130 00000000 */  nop
/* 38934 8007E134 45000008 */  bc1f       .L8007E158
/* 38938 8007E138 00000000 */   nop
/* 3893C 8007E13C E48C0C38 */  swc1       $f12, 0xC38($a0)
/* 38940 8007E140 E48E15B4 */  swc1       $f14, 0x15B4($a0)
/* 38944 8007E144 E48215B8 */  swc1       $f2, 0x15B8($a0)
/* 38948 8007E148 E49015BC */  swc1       $f16, 0x15BC($a0)
/* 3894C 8007E14C C47A0014 */  lwc1       $f26, 0x14($v1)
/* 38950 8007E150 C4780010 */  lwc1       $f24, 0x10($v1)
/* 38954 8007E154 C476000C */  lwc1       $f22, 0xC($v1)
.L8007E158:
/* 38958 8007E158 C7A00074 */  lwc1       $f0, 0x74($sp)
/* 3895C 8007E15C 461CC100 */  add.s      $f4, $f24, $f28
/* 38960 8007E160 8FA2009C */  lw         $v0, 0x9C($sp)
/* 38964 8007E164 8FA800A0 */  lw         $t0, 0xA0($sp)
/* 38968 8007E168 461ED180 */  add.s      $f6, $f26, $f30
/* 3896C 8007E16C E4640010 */  swc1       $f4, 0x10($v1)
/* 38970 8007E170 4406E000 */  mfc1       $a2, $f28
/* 38974 8007E174 4600B280 */  add.s      $f10, $f22, $f0
/* 38978 8007E178 E4660014 */  swc1       $f6, 0x14($v1)
/* 3897C 8007E17C 44050000 */  mfc1       $a1, $f0
/* 38980 8007E180 E46A000C */  swc1       $f10, 0xC($v1)
/* 38984 8007E184 C448000C */  lwc1       $f8, 0xC($v0)
/* 38988 8007E188 C4440010 */  lwc1       $f4, 0x10($v0)
/* 3898C 8007E18C 46004280 */  add.s      $f10, $f8, $f0
/* 38990 8007E190 C4480014 */  lwc1       $f8, 0x14($v0)
/* 38994 8007E194 461C2180 */  add.s      $f6, $f4, $f28
/* 38998 8007E198 E44A000C */  swc1       $f10, 0xC($v0)
/* 3899C 8007E19C 461E4280 */  add.s      $f10, $f8, $f30
/* 389A0 8007E1A0 E4460010 */  swc1       $f6, 0x10($v0)
/* 389A4 8007E1A4 E44A0014 */  swc1       $f10, 0x14($v0)
/* 389A8 8007E1A8 C504000C */  lwc1       $f4, 0xC($t0)
/* 389AC 8007E1AC C5080010 */  lwc1       $f8, 0x10($t0)
/* 389B0 8007E1B0 46002180 */  add.s      $f6, $f4, $f0
/* 389B4 8007E1B4 C5040014 */  lwc1       $f4, 0x14($t0)
/* 389B8 8007E1B8 461C4280 */  add.s      $f10, $f8, $f28
/* 389BC 8007E1BC E506000C */  swc1       $f6, 0xC($t0)
/* 389C0 8007E1C0 461E2180 */  add.s      $f6, $f4, $f30
/* 389C4 8007E1C4 E50A0010 */  swc1       $f10, 0x10($t0)
/* 389C8 8007E1C8 0C01890F */  jal        func_8006243C
/* 389CC 8007E1CC E5060014 */   swc1      $f6, 0x14($t0)
/* 389D0 8007E1D0 100001B5 */  b          .L8007E8A8
/* 389D4 8007E1D4 8FBF0044 */   lw        $ra, 0x44($sp)
/* 389D8 8007E1D8 8C490098 */  lw         $t1, 0x98($v0)
.L8007E1DC:
/* 389DC 8007E1DC 54A900D8 */  bnel       $a1, $t1, .L8007E540
/* 389E0 8007E1E0 C448000C */   lwc1      $f8, 0xC($v0)
/* 389E4 8007E1E4 C448000C */  lwc1       $f8, 0xC($v0)
/* 389E8 8007E1E8 C44A0014 */  lwc1       $f10, 0x14($v0)
/* 389EC 8007E1EC 4608A381 */  sub.s      $f14, $f20, $f8
/* 389F0 8007E1F0 460AB401 */  sub.s      $f16, $f22, $f10
/* 389F4 8007E1F4 460E7102 */  mul.s      $f4, $f14, $f14
/* 389F8 8007E1F8 00000000 */  nop
/* 389FC 8007E1FC 46108182 */  mul.s      $f6, $f16, $f16
/* 38A00 8007E200 46062000 */  add.s      $f0, $f4, $f6
/* 38A04 8007E204 461A003C */  c.lt.s     $f0, $f26
/* 38A08 8007E208 00000000 */  nop
/* 38A0C 8007E20C 45000060 */  bc1f       .L8007E390
/* 38A10 8007E210 00000000 */   nop
/* 38A14 8007E214 C4480010 */  lwc1       $f8, 0x10($v0)
/* 38A18 8007E218 4608C081 */  sub.s      $f2, $f24, $f8
/* 38A1C 8007E21C 46021282 */  mul.s      $f10, $f2, $f2
/* 38A20 8007E220 460A0300 */  add.s      $f12, $f0, $f10
/* 38A24 8007E224 461A603C */  c.lt.s     $f12, $f26
/* 38A28 8007E228 00000000 */  nop
/* 38A2C 8007E22C 45020059 */  bc1fl      .L8007E394
/* 38A30 8007E230 C44A0018 */   lwc1      $f10, 0x18($v0)
/* 38A34 8007E234 AFA40088 */  sw         $a0, 0x88($sp)
/* 38A38 8007E238 E7A2007C */  swc1       $f2, 0x7C($sp)
/* 38A3C 8007E23C E7AE0080 */  swc1       $f14, 0x80($sp)
/* 38A40 8007E240 0C031C04 */  jal        sqrtf
/* 38A44 8007E244 E7B00078 */   swc1      $f16, 0x78($sp)
/* 38A48 8007E248 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 38A4C 8007E24C 44812000 */  mtc1       $at, $f4
/* 38A50 8007E250 C7AE0080 */  lwc1       $f14, 0x80($sp)
/* 38A54 8007E254 3C0142B8 */  lui        $at, (0x42B80000 >> 16)
/* 38A58 8007E258 46002483 */  div.s      $f18, $f4, $f0
/* 38A5C 8007E25C 44813000 */  mtc1       $at, $f6
/* 38A60 8007E260 C7A2007C */  lwc1       $f2, 0x7C($sp)
/* 38A64 8007E264 C7B00078 */  lwc1       $f16, 0x78($sp)
/* 38A68 8007E268 46003501 */  sub.s      $f20, $f6, $f0
/* 38A6C 8007E26C 8FA30098 */  lw         $v1, 0x98($sp)
/* 38A70 8007E270 8FA40088 */  lw         $a0, 0x88($sp)
/* 38A74 8007E274 46127382 */  mul.s      $f14, $f14, $f18
/* 38A78 8007E278 00000000 */  nop
/* 38A7C 8007E27C 46147202 */  mul.s      $f8, $f14, $f20
/* 38A80 8007E280 00000000 */  nop
/* 38A84 8007E284 46121082 */  mul.s      $f2, $f2, $f18
/* 38A88 8007E288 E7A80050 */  swc1       $f8, 0x50($sp)
/* 38A8C 8007E28C C7AA0050 */  lwc1       $f10, 0x50($sp)
/* 38A90 8007E290 46007207 */  neg.s      $f8, $f14
/* 38A94 8007E294 46141102 */  mul.s      $f4, $f2, $f20
/* 38A98 8007E298 E7AA0074 */  swc1       $f10, 0x74($sp)
/* 38A9C 8007E29C 46128402 */  mul.s      $f16, $f16, $f18
/* 38AA0 8007E2A0 E7A4004C */  swc1       $f4, 0x4C($sp)
/* 38AA4 8007E2A4 C7BC004C */  lwc1       $f28, 0x4C($sp)
/* 38AA8 8007E2A8 46148182 */  mul.s      $f6, $f16, $f20
/* 38AAC 8007E2AC E7A60048 */  swc1       $f6, 0x48($sp)
/* 38AB0 8007E2B0 C476000C */  lwc1       $f22, 0xC($v1)
/* 38AB4 8007E2B4 C4780010 */  lwc1       $f24, 0x10($v1)
/* 38AB8 8007E2B8 C47A0014 */  lwc1       $f26, 0x14($v1)
/* 38ABC 8007E2BC 46164102 */  mul.s      $f4, $f8, $f22
/* 38AC0 8007E2C0 C7BE0048 */  lwc1       $f30, 0x48($sp)
/* 38AC4 8007E2C4 46181182 */  mul.s      $f6, $f2, $f24
/* 38AC8 8007E2C8 46062201 */  sub.s      $f8, $f4, $f6
/* 38ACC 8007E2CC 461A8102 */  mul.s      $f4, $f16, $f26
/* 38AD0 8007E2D0 C4860C3C */  lwc1       $f6, 0xC3C($a0)
/* 38AD4 8007E2D4 46044301 */  sub.s      $f12, $f8, $f4
/* 38AD8 8007E2D8 460C303C */  c.lt.s     $f6, $f12
/* 38ADC 8007E2DC 00000000 */  nop
/* 38AE0 8007E2E0 45000008 */  bc1f       .L8007E304
/* 38AE4 8007E2E4 00000000 */   nop
/* 38AE8 8007E2E8 E48C0C3C */  swc1       $f12, 0xC3C($a0)
/* 38AEC 8007E2EC E48E15B4 */  swc1       $f14, 0x15B4($a0)
/* 38AF0 8007E2F0 E48215B8 */  swc1       $f2, 0x15B8($a0)
/* 38AF4 8007E2F4 E49015BC */  swc1       $f16, 0x15BC($a0)
/* 38AF8 8007E2F8 C47A0014 */  lwc1       $f26, 0x14($v1)
/* 38AFC 8007E2FC C4780010 */  lwc1       $f24, 0x10($v1)
/* 38B00 8007E300 C476000C */  lwc1       $f22, 0xC($v1)
.L8007E304:
/* 38B04 8007E304 C7A0004C */  lwc1       $f0, 0x4C($sp)
/* 38B08 8007E308 C7A20048 */  lwc1       $f2, 0x48($sp)
/* 38B0C 8007E30C C7B20050 */  lwc1       $f18, 0x50($sp)
/* 38B10 8007E310 4600C100 */  add.s      $f4, $f24, $f0
/* 38B14 8007E314 8FA2009C */  lw         $v0, 0x9C($sp)
/* 38B18 8007E318 8FA800A0 */  lw         $t0, 0xA0($sp)
/* 38B1C 8007E31C 4602D180 */  add.s      $f6, $f26, $f2
/* 38B20 8007E320 E4640010 */  swc1       $f4, 0x10($v1)
/* 38B24 8007E324 4406E000 */  mfc1       $a2, $f28
/* 38B28 8007E328 4612B200 */  add.s      $f8, $f22, $f18
/* 38B2C 8007E32C E4660014 */  swc1       $f6, 0x14($v1)
/* 38B30 8007E330 4407F000 */  mfc1       $a3, $f30
/* 38B34 8007E334 E468000C */  swc1       $f8, 0xC($v1)
/* 38B38 8007E338 C44A000C */  lwc1       $f10, 0xC($v0)
/* 38B3C 8007E33C C4440010 */  lwc1       $f4, 0x10($v0)
/* 38B40 8007E340 46125200 */  add.s      $f8, $f10, $f18
/* 38B44 8007E344 C44A0014 */  lwc1       $f10, 0x14($v0)
/* 38B48 8007E348 46002180 */  add.s      $f6, $f4, $f0
/* 38B4C 8007E34C E448000C */  swc1       $f8, 0xC($v0)
/* 38B50 8007E350 46025200 */  add.s      $f8, $f10, $f2
/* 38B54 8007E354 E4460010 */  swc1       $f6, 0x10($v0)
/* 38B58 8007E358 E4480014 */  swc1       $f8, 0x14($v0)
/* 38B5C 8007E35C C504000C */  lwc1       $f4, 0xC($t0)
/* 38B60 8007E360 C50A0010 */  lwc1       $f10, 0x10($t0)
/* 38B64 8007E364 46122180 */  add.s      $f6, $f4, $f18
/* 38B68 8007E368 C5040014 */  lwc1       $f4, 0x14($t0)
/* 38B6C 8007E36C 461C5200 */  add.s      $f8, $f10, $f28
/* 38B70 8007E370 E506000C */  swc1       $f6, 0xC($t0)
/* 38B74 8007E374 461E2180 */  add.s      $f6, $f4, $f30
/* 38B78 8007E378 E5080010 */  swc1       $f8, 0x10($t0)
/* 38B7C 8007E37C E5060014 */  swc1       $f6, 0x14($t0)
/* 38B80 8007E380 0C01890F */  jal        func_8006243C
/* 38B84 8007E384 8FA50074 */   lw        $a1, 0x74($sp)
/* 38B88 8007E388 10000147 */  b          .L8007E8A8
/* 38B8C 8007E38C 8FBF0044 */   lw        $ra, 0x44($sp)
.L8007E390:
/* 38B90 8007E390 C44A0018 */  lwc1       $f10, 0x18($v0)
.L8007E394:
/* 38B94 8007E394 C4480020 */  lwc1       $f8, 0x20($v0)
/* 38B98 8007E398 460AA381 */  sub.s      $f14, $f20, $f10
/* 38B9C 8007E39C 4608B401 */  sub.s      $f16, $f22, $f8
/* 38BA0 8007E3A0 460E7102 */  mul.s      $f4, $f14, $f14
/* 38BA4 8007E3A4 00000000 */  nop
/* 38BA8 8007E3A8 46108182 */  mul.s      $f6, $f16, $f16
/* 38BAC 8007E3AC 46062000 */  add.s      $f0, $f4, $f6
/* 38BB0 8007E3B0 461A003C */  c.lt.s     $f0, $f26
/* 38BB4 8007E3B4 00000000 */  nop
/* 38BB8 8007E3B8 45000136 */  bc1f       .L8007E894
/* 38BBC 8007E3BC 00000000 */   nop
/* 38BC0 8007E3C0 C44A001C */  lwc1       $f10, 0x1C($v0)
/* 38BC4 8007E3C4 460AC081 */  sub.s      $f2, $f24, $f10
/* 38BC8 8007E3C8 46021202 */  mul.s      $f8, $f2, $f2
/* 38BCC 8007E3CC 46080300 */  add.s      $f12, $f0, $f8
/* 38BD0 8007E3D0 461A603C */  c.lt.s     $f12, $f26
/* 38BD4 8007E3D4 00000000 */  nop
/* 38BD8 8007E3D8 4502012F */  bc1fl      .L8007E898
/* 38BDC 8007E3DC 2442FEFC */   addiu     $v0, $v0, -0x104
/* 38BE0 8007E3E0 AFA40088 */  sw         $a0, 0x88($sp)
/* 38BE4 8007E3E4 E7A2007C */  swc1       $f2, 0x7C($sp)
/* 38BE8 8007E3E8 E7AE0080 */  swc1       $f14, 0x80($sp)
/* 38BEC 8007E3EC 0C031C04 */  jal        sqrtf
/* 38BF0 8007E3F0 E7B00078 */   swc1      $f16, 0x78($sp)
/* 38BF4 8007E3F4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 38BF8 8007E3F8 44812000 */  mtc1       $at, $f4
/* 38BFC 8007E3FC C7AE0080 */  lwc1       $f14, 0x80($sp)
/* 38C00 8007E400 3C0142B8 */  lui        $at, (0x42B80000 >> 16)
/* 38C04 8007E404 46002483 */  div.s      $f18, $f4, $f0
/* 38C08 8007E408 44813000 */  mtc1       $at, $f6
/* 38C0C 8007E40C C7A2007C */  lwc1       $f2, 0x7C($sp)
/* 38C10 8007E410 C7B00078 */  lwc1       $f16, 0x78($sp)
/* 38C14 8007E414 46003501 */  sub.s      $f20, $f6, $f0
/* 38C18 8007E418 8FA30098 */  lw         $v1, 0x98($sp)
/* 38C1C 8007E41C 8FA40088 */  lw         $a0, 0x88($sp)
/* 38C20 8007E420 46127382 */  mul.s      $f14, $f14, $f18
/* 38C24 8007E424 00000000 */  nop
/* 38C28 8007E428 46147282 */  mul.s      $f10, $f14, $f20
/* 38C2C 8007E42C 00000000 */  nop
/* 38C30 8007E430 46121082 */  mul.s      $f2, $f2, $f18
/* 38C34 8007E434 E7AA0050 */  swc1       $f10, 0x50($sp)
/* 38C38 8007E438 C7A80050 */  lwc1       $f8, 0x50($sp)
/* 38C3C 8007E43C 46007287 */  neg.s      $f10, $f14
/* 38C40 8007E440 46141102 */  mul.s      $f4, $f2, $f20
/* 38C44 8007E444 E7A80074 */  swc1       $f8, 0x74($sp)
/* 38C48 8007E448 46128402 */  mul.s      $f16, $f16, $f18
/* 38C4C 8007E44C E7A4004C */  swc1       $f4, 0x4C($sp)
/* 38C50 8007E450 C7BC004C */  lwc1       $f28, 0x4C($sp)
/* 38C54 8007E454 46148182 */  mul.s      $f6, $f16, $f20
/* 38C58 8007E458 E7A60048 */  swc1       $f6, 0x48($sp)
/* 38C5C 8007E45C C476000C */  lwc1       $f22, 0xC($v1)
/* 38C60 8007E460 C4780010 */  lwc1       $f24, 0x10($v1)
/* 38C64 8007E464 C47A0014 */  lwc1       $f26, 0x14($v1)
/* 38C68 8007E468 46165102 */  mul.s      $f4, $f10, $f22
/* 38C6C 8007E46C C7BE0048 */  lwc1       $f30, 0x48($sp)
/* 38C70 8007E470 46181182 */  mul.s      $f6, $f2, $f24
/* 38C74 8007E474 46062281 */  sub.s      $f10, $f4, $f6
/* 38C78 8007E478 461A8102 */  mul.s      $f4, $f16, $f26
/* 38C7C 8007E47C C4860C3C */  lwc1       $f6, 0xC3C($a0)
/* 38C80 8007E480 46045301 */  sub.s      $f12, $f10, $f4
/* 38C84 8007E484 460C303C */  c.lt.s     $f6, $f12
/* 38C88 8007E488 00000000 */  nop
/* 38C8C 8007E48C 45000008 */  bc1f       .L8007E4B0
/* 38C90 8007E490 00000000 */   nop
/* 38C94 8007E494 E48C0C3C */  swc1       $f12, 0xC3C($a0)
/* 38C98 8007E498 E48E15B4 */  swc1       $f14, 0x15B4($a0)
/* 38C9C 8007E49C E48215B8 */  swc1       $f2, 0x15B8($a0)
/* 38CA0 8007E4A0 E49015BC */  swc1       $f16, 0x15BC($a0)
/* 38CA4 8007E4A4 C47A0014 */  lwc1       $f26, 0x14($v1)
/* 38CA8 8007E4A8 C4780010 */  lwc1       $f24, 0x10($v1)
/* 38CAC 8007E4AC C476000C */  lwc1       $f22, 0xC($v1)
.L8007E4B0:
/* 38CB0 8007E4B0 C7A00048 */  lwc1       $f0, 0x48($sp)
/* 38CB4 8007E4B4 C7A2004C */  lwc1       $f2, 0x4C($sp)
/* 38CB8 8007E4B8 C7B20050 */  lwc1       $f18, 0x50($sp)
/* 38CBC 8007E4BC 4600D180 */  add.s      $f6, $f26, $f0
/* 38CC0 8007E4C0 8FA2009C */  lw         $v0, 0x9C($sp)
/* 38CC4 8007E4C4 8FA800A0 */  lw         $t0, 0xA0($sp)
/* 38CC8 8007E4C8 4602C100 */  add.s      $f4, $f24, $f2
/* 38CCC 8007E4CC E4660014 */  swc1       $f6, 0x14($v1)
/* 38CD0 8007E4D0 4406E000 */  mfc1       $a2, $f28
/* 38CD4 8007E4D4 4612B280 */  add.s      $f10, $f22, $f18
/* 38CD8 8007E4D8 E4640010 */  swc1       $f4, 0x10($v1)
/* 38CDC 8007E4DC 4407F000 */  mfc1       $a3, $f30
/* 38CE0 8007E4E0 E46A000C */  swc1       $f10, 0xC($v1)
/* 38CE4 8007E4E4 C448000C */  lwc1       $f8, 0xC($v0)
/* 38CE8 8007E4E8 C4440010 */  lwc1       $f4, 0x10($v0)
/* 38CEC 8007E4EC 46124280 */  add.s      $f10, $f8, $f18
/* 38CF0 8007E4F0 C4480014 */  lwc1       $f8, 0x14($v0)
/* 38CF4 8007E4F4 46022180 */  add.s      $f6, $f4, $f2
/* 38CF8 8007E4F8 E44A000C */  swc1       $f10, 0xC($v0)
/* 38CFC 8007E4FC 46004280 */  add.s      $f10, $f8, $f0
/* 38D00 8007E500 E4460010 */  swc1       $f6, 0x10($v0)
/* 38D04 8007E504 E44A0014 */  swc1       $f10, 0x14($v0)
/* 38D08 8007E508 C504000C */  lwc1       $f4, 0xC($t0)
/* 38D0C 8007E50C C5080010 */  lwc1       $f8, 0x10($t0)
/* 38D10 8007E510 46122180 */  add.s      $f6, $f4, $f18
/* 38D14 8007E514 C5040014 */  lwc1       $f4, 0x14($t0)
/* 38D18 8007E518 461C4280 */  add.s      $f10, $f8, $f28
/* 38D1C 8007E51C E506000C */  swc1       $f6, 0xC($t0)
/* 38D20 8007E520 461E2180 */  add.s      $f6, $f4, $f30
/* 38D24 8007E524 E50A0010 */  swc1       $f10, 0x10($t0)
/* 38D28 8007E528 E5060014 */  swc1       $f6, 0x14($t0)
/* 38D2C 8007E52C 0C01890F */  jal        func_8006243C
/* 38D30 8007E530 8FA50074 */   lw        $a1, 0x74($sp)
/* 38D34 8007E534 100000DC */  b          .L8007E8A8
/* 38D38 8007E538 8FBF0044 */   lw        $ra, 0x44($sp)
/* 38D3C 8007E53C C448000C */  lwc1       $f8, 0xC($v0)
.L8007E540:
/* 38D40 8007E540 C44A0014 */  lwc1       $f10, 0x14($v0)
/* 38D44 8007E544 4608A381 */  sub.s      $f14, $f20, $f8
/* 38D48 8007E548 460AB401 */  sub.s      $f16, $f22, $f10
/* 38D4C 8007E54C 460E7102 */  mul.s      $f4, $f14, $f14
/* 38D50 8007E550 00000000 */  nop
/* 38D54 8007E554 46108182 */  mul.s      $f6, $f16, $f16
/* 38D58 8007E558 46062000 */  add.s      $f0, $f4, $f6
/* 38D5C 8007E55C 4612003C */  c.lt.s     $f0, $f18
/* 38D60 8007E560 00000000 */  nop
/* 38D64 8007E564 45000060 */  bc1f       .L8007E6E8
/* 38D68 8007E568 00000000 */   nop
/* 38D6C 8007E56C C4480010 */  lwc1       $f8, 0x10($v0)
/* 38D70 8007E570 4608C081 */  sub.s      $f2, $f24, $f8
/* 38D74 8007E574 46021282 */  mul.s      $f10, $f2, $f2
/* 38D78 8007E578 460A0300 */  add.s      $f12, $f0, $f10
/* 38D7C 8007E57C 4612603C */  c.lt.s     $f12, $f18
/* 38D80 8007E580 00000000 */  nop
/* 38D84 8007E584 45020059 */  bc1fl      .L8007E6EC
/* 38D88 8007E588 C44A0018 */   lwc1      $f10, 0x18($v0)
/* 38D8C 8007E58C AFA40088 */  sw         $a0, 0x88($sp)
/* 38D90 8007E590 E7A2007C */  swc1       $f2, 0x7C($sp)
/* 38D94 8007E594 E7AE0080 */  swc1       $f14, 0x80($sp)
/* 38D98 8007E598 0C031C04 */  jal        sqrtf
/* 38D9C 8007E59C E7B00078 */   swc1      $f16, 0x78($sp)
/* 38DA0 8007E5A0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 38DA4 8007E5A4 44812000 */  mtc1       $at, $f4
/* 38DA8 8007E5A8 C7AE0080 */  lwc1       $f14, 0x80($sp)
/* 38DAC 8007E5AC 3C014278 */  lui        $at, (0x42780000 >> 16)
/* 38DB0 8007E5B0 46002483 */  div.s      $f18, $f4, $f0
/* 38DB4 8007E5B4 44813000 */  mtc1       $at, $f6
/* 38DB8 8007E5B8 C7A2007C */  lwc1       $f2, 0x7C($sp)
/* 38DBC 8007E5BC C7B00078 */  lwc1       $f16, 0x78($sp)
/* 38DC0 8007E5C0 46003501 */  sub.s      $f20, $f6, $f0
/* 38DC4 8007E5C4 8FA30098 */  lw         $v1, 0x98($sp)
/* 38DC8 8007E5C8 8FA40088 */  lw         $a0, 0x88($sp)
/* 38DCC 8007E5CC 46127382 */  mul.s      $f14, $f14, $f18
/* 38DD0 8007E5D0 00000000 */  nop
/* 38DD4 8007E5D4 46147202 */  mul.s      $f8, $f14, $f20
/* 38DD8 8007E5D8 00000000 */  nop
/* 38DDC 8007E5DC 46121082 */  mul.s      $f2, $f2, $f18
/* 38DE0 8007E5E0 E7A80050 */  swc1       $f8, 0x50($sp)
/* 38DE4 8007E5E4 C7AA0050 */  lwc1       $f10, 0x50($sp)
/* 38DE8 8007E5E8 46007207 */  neg.s      $f8, $f14
/* 38DEC 8007E5EC 46141102 */  mul.s      $f4, $f2, $f20
/* 38DF0 8007E5F0 E7AA0074 */  swc1       $f10, 0x74($sp)
/* 38DF4 8007E5F4 46128402 */  mul.s      $f16, $f16, $f18
/* 38DF8 8007E5F8 E7A4004C */  swc1       $f4, 0x4C($sp)
/* 38DFC 8007E5FC C7BC004C */  lwc1       $f28, 0x4C($sp)
/* 38E00 8007E600 46148182 */  mul.s      $f6, $f16, $f20
/* 38E04 8007E604 E7A60048 */  swc1       $f6, 0x48($sp)
/* 38E08 8007E608 C476000C */  lwc1       $f22, 0xC($v1)
/* 38E0C 8007E60C C4780010 */  lwc1       $f24, 0x10($v1)
/* 38E10 8007E610 C47A0014 */  lwc1       $f26, 0x14($v1)
/* 38E14 8007E614 46164102 */  mul.s      $f4, $f8, $f22
/* 38E18 8007E618 C7BE0048 */  lwc1       $f30, 0x48($sp)
/* 38E1C 8007E61C 46181182 */  mul.s      $f6, $f2, $f24
/* 38E20 8007E620 46062201 */  sub.s      $f8, $f4, $f6
/* 38E24 8007E624 461A8102 */  mul.s      $f4, $f16, $f26
/* 38E28 8007E628 C4860C3C */  lwc1       $f6, 0xC3C($a0)
/* 38E2C 8007E62C 46044301 */  sub.s      $f12, $f8, $f4
/* 38E30 8007E630 460C303C */  c.lt.s     $f6, $f12
/* 38E34 8007E634 00000000 */  nop
/* 38E38 8007E638 45000008 */  bc1f       .L8007E65C
/* 38E3C 8007E63C 00000000 */   nop
/* 38E40 8007E640 E48C0C3C */  swc1       $f12, 0xC3C($a0)
/* 38E44 8007E644 E48E15B4 */  swc1       $f14, 0x15B4($a0)
/* 38E48 8007E648 E48215B8 */  swc1       $f2, 0x15B8($a0)
/* 38E4C 8007E64C E49015BC */  swc1       $f16, 0x15BC($a0)
/* 38E50 8007E650 C47A0014 */  lwc1       $f26, 0x14($v1)
/* 38E54 8007E654 C4780010 */  lwc1       $f24, 0x10($v1)
/* 38E58 8007E658 C476000C */  lwc1       $f22, 0xC($v1)
.L8007E65C:
/* 38E5C 8007E65C C7A0004C */  lwc1       $f0, 0x4C($sp)
/* 38E60 8007E660 C7A20048 */  lwc1       $f2, 0x48($sp)
/* 38E64 8007E664 C7B20050 */  lwc1       $f18, 0x50($sp)
/* 38E68 8007E668 4600C100 */  add.s      $f4, $f24, $f0
/* 38E6C 8007E66C 8FA2009C */  lw         $v0, 0x9C($sp)
/* 38E70 8007E670 8FA800A0 */  lw         $t0, 0xA0($sp)
/* 38E74 8007E674 4602D180 */  add.s      $f6, $f26, $f2
/* 38E78 8007E678 E4640010 */  swc1       $f4, 0x10($v1)
/* 38E7C 8007E67C 4406E000 */  mfc1       $a2, $f28
/* 38E80 8007E680 4612B200 */  add.s      $f8, $f22, $f18
/* 38E84 8007E684 E4660014 */  swc1       $f6, 0x14($v1)
/* 38E88 8007E688 4407F000 */  mfc1       $a3, $f30
/* 38E8C 8007E68C E468000C */  swc1       $f8, 0xC($v1)
/* 38E90 8007E690 C44A000C */  lwc1       $f10, 0xC($v0)
/* 38E94 8007E694 C4440010 */  lwc1       $f4, 0x10($v0)
/* 38E98 8007E698 46125200 */  add.s      $f8, $f10, $f18
/* 38E9C 8007E69C C44A0014 */  lwc1       $f10, 0x14($v0)
/* 38EA0 8007E6A0 46002180 */  add.s      $f6, $f4, $f0
/* 38EA4 8007E6A4 E448000C */  swc1       $f8, 0xC($v0)
/* 38EA8 8007E6A8 46025200 */  add.s      $f8, $f10, $f2
/* 38EAC 8007E6AC E4460010 */  swc1       $f6, 0x10($v0)
/* 38EB0 8007E6B0 E4480014 */  swc1       $f8, 0x14($v0)
/* 38EB4 8007E6B4 C504000C */  lwc1       $f4, 0xC($t0)
/* 38EB8 8007E6B8 C50A0010 */  lwc1       $f10, 0x10($t0)
/* 38EBC 8007E6BC 46122180 */  add.s      $f6, $f4, $f18
/* 38EC0 8007E6C0 C5040014 */  lwc1       $f4, 0x14($t0)
/* 38EC4 8007E6C4 461C5200 */  add.s      $f8, $f10, $f28
/* 38EC8 8007E6C8 E506000C */  swc1       $f6, 0xC($t0)
/* 38ECC 8007E6CC 461E2180 */  add.s      $f6, $f4, $f30
/* 38ED0 8007E6D0 E5080010 */  swc1       $f8, 0x10($t0)
/* 38ED4 8007E6D4 E5060014 */  swc1       $f6, 0x14($t0)
/* 38ED8 8007E6D8 0C01890F */  jal        func_8006243C
/* 38EDC 8007E6DC 8FA50074 */   lw        $a1, 0x74($sp)
/* 38EE0 8007E6E0 10000071 */  b          .L8007E8A8
/* 38EE4 8007E6E4 8FBF0044 */   lw        $ra, 0x44($sp)
.L8007E6E8:
/* 38EE8 8007E6E8 C44A0018 */  lwc1       $f10, 0x18($v0)
.L8007E6EC:
/* 38EEC 8007E6EC C4480020 */  lwc1       $f8, 0x20($v0)
/* 38EF0 8007E6F0 460AA381 */  sub.s      $f14, $f20, $f10
/* 38EF4 8007E6F4 4608B401 */  sub.s      $f16, $f22, $f8
/* 38EF8 8007E6F8 460E7102 */  mul.s      $f4, $f14, $f14
/* 38EFC 8007E6FC 00000000 */  nop
/* 38F00 8007E700 46108182 */  mul.s      $f6, $f16, $f16
/* 38F04 8007E704 46062000 */  add.s      $f0, $f4, $f6
/* 38F08 8007E708 4612003C */  c.lt.s     $f0, $f18
/* 38F0C 8007E70C 00000000 */  nop
/* 38F10 8007E710 45000060 */  bc1f       .L8007E894
/* 38F14 8007E714 00000000 */   nop
/* 38F18 8007E718 C44A001C */  lwc1       $f10, 0x1C($v0)
/* 38F1C 8007E71C 460AC081 */  sub.s      $f2, $f24, $f10
/* 38F20 8007E720 46021202 */  mul.s      $f8, $f2, $f2
/* 38F24 8007E724 46080300 */  add.s      $f12, $f0, $f8
/* 38F28 8007E728 4612603C */  c.lt.s     $f12, $f18
/* 38F2C 8007E72C 00000000 */  nop
/* 38F30 8007E730 45020059 */  bc1fl      .L8007E898
/* 38F34 8007E734 2442FEFC */   addiu     $v0, $v0, -0x104
/* 38F38 8007E738 AFA40088 */  sw         $a0, 0x88($sp)
/* 38F3C 8007E73C E7A2007C */  swc1       $f2, 0x7C($sp)
/* 38F40 8007E740 E7AE0080 */  swc1       $f14, 0x80($sp)
/* 38F44 8007E744 0C031C04 */  jal        sqrtf
/* 38F48 8007E748 E7B00078 */   swc1      $f16, 0x78($sp)
/* 38F4C 8007E74C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 38F50 8007E750 44812000 */  mtc1       $at, $f4
/* 38F54 8007E754 C7AE0080 */  lwc1       $f14, 0x80($sp)
/* 38F58 8007E758 3C014278 */  lui        $at, (0x42780000 >> 16)
/* 38F5C 8007E75C 46002483 */  div.s      $f18, $f4, $f0
/* 38F60 8007E760 44813000 */  mtc1       $at, $f6
/* 38F64 8007E764 C7A2007C */  lwc1       $f2, 0x7C($sp)
/* 38F68 8007E768 C7B00078 */  lwc1       $f16, 0x78($sp)
/* 38F6C 8007E76C 46003501 */  sub.s      $f20, $f6, $f0
/* 38F70 8007E770 8FA30098 */  lw         $v1, 0x98($sp)
/* 38F74 8007E774 8FA40088 */  lw         $a0, 0x88($sp)
/* 38F78 8007E778 46127382 */  mul.s      $f14, $f14, $f18
/* 38F7C 8007E77C 00000000 */  nop
/* 38F80 8007E780 46147282 */  mul.s      $f10, $f14, $f20
/* 38F84 8007E784 00000000 */  nop
/* 38F88 8007E788 46121082 */  mul.s      $f2, $f2, $f18
/* 38F8C 8007E78C E7AA0050 */  swc1       $f10, 0x50($sp)
/* 38F90 8007E790 C7A80050 */  lwc1       $f8, 0x50($sp)
/* 38F94 8007E794 46007287 */  neg.s      $f10, $f14
/* 38F98 8007E798 46141102 */  mul.s      $f4, $f2, $f20
/* 38F9C 8007E79C E7A80074 */  swc1       $f8, 0x74($sp)
/* 38FA0 8007E7A0 46128402 */  mul.s      $f16, $f16, $f18
/* 38FA4 8007E7A4 E7A4004C */  swc1       $f4, 0x4C($sp)
/* 38FA8 8007E7A8 C7BC004C */  lwc1       $f28, 0x4C($sp)
/* 38FAC 8007E7AC 46148182 */  mul.s      $f6, $f16, $f20
/* 38FB0 8007E7B0 E7A60048 */  swc1       $f6, 0x48($sp)
/* 38FB4 8007E7B4 C476000C */  lwc1       $f22, 0xC($v1)
/* 38FB8 8007E7B8 C4780010 */  lwc1       $f24, 0x10($v1)
/* 38FBC 8007E7BC C47A0014 */  lwc1       $f26, 0x14($v1)
/* 38FC0 8007E7C0 46165102 */  mul.s      $f4, $f10, $f22
/* 38FC4 8007E7C4 C7BE0048 */  lwc1       $f30, 0x48($sp)
/* 38FC8 8007E7C8 46181182 */  mul.s      $f6, $f2, $f24
/* 38FCC 8007E7CC 46062281 */  sub.s      $f10, $f4, $f6
/* 38FD0 8007E7D0 461A8102 */  mul.s      $f4, $f16, $f26
/* 38FD4 8007E7D4 C4860C3C */  lwc1       $f6, 0xC3C($a0)
/* 38FD8 8007E7D8 46045301 */  sub.s      $f12, $f10, $f4
/* 38FDC 8007E7DC 460C303C */  c.lt.s     $f6, $f12
/* 38FE0 8007E7E0 00000000 */  nop
/* 38FE4 8007E7E4 45000008 */  bc1f       .L8007E808
/* 38FE8 8007E7E8 00000000 */   nop
/* 38FEC 8007E7EC E48C0C3C */  swc1       $f12, 0xC3C($a0)
/* 38FF0 8007E7F0 E48E15B4 */  swc1       $f14, 0x15B4($a0)
/* 38FF4 8007E7F4 E48215B8 */  swc1       $f2, 0x15B8($a0)
/* 38FF8 8007E7F8 E49015BC */  swc1       $f16, 0x15BC($a0)
/* 38FFC 8007E7FC C47A0014 */  lwc1       $f26, 0x14($v1)
/* 39000 8007E800 C4780010 */  lwc1       $f24, 0x10($v1)
/* 39004 8007E804 C476000C */  lwc1       $f22, 0xC($v1)
.L8007E808:
/* 39008 8007E808 C7A00048 */  lwc1       $f0, 0x48($sp)
/* 3900C 8007E80C C7A2004C */  lwc1       $f2, 0x4C($sp)
/* 39010 8007E810 C7B20050 */  lwc1       $f18, 0x50($sp)
/* 39014 8007E814 4600D180 */  add.s      $f6, $f26, $f0
/* 39018 8007E818 8FA2009C */  lw         $v0, 0x9C($sp)
/* 3901C 8007E81C 8FA800A0 */  lw         $t0, 0xA0($sp)
/* 39020 8007E820 4602C100 */  add.s      $f4, $f24, $f2
/* 39024 8007E824 E4660014 */  swc1       $f6, 0x14($v1)
/* 39028 8007E828 4406E000 */  mfc1       $a2, $f28
/* 3902C 8007E82C 4612B280 */  add.s      $f10, $f22, $f18
/* 39030 8007E830 E4640010 */  swc1       $f4, 0x10($v1)
/* 39034 8007E834 4407F000 */  mfc1       $a3, $f30
/* 39038 8007E838 E46A000C */  swc1       $f10, 0xC($v1)
/* 3903C 8007E83C C448000C */  lwc1       $f8, 0xC($v0)
/* 39040 8007E840 C4440010 */  lwc1       $f4, 0x10($v0)
/* 39044 8007E844 46124280 */  add.s      $f10, $f8, $f18
/* 39048 8007E848 C4480014 */  lwc1       $f8, 0x14($v0)
/* 3904C 8007E84C 46022180 */  add.s      $f6, $f4, $f2
/* 39050 8007E850 E44A000C */  swc1       $f10, 0xC($v0)
/* 39054 8007E854 46004280 */  add.s      $f10, $f8, $f0
/* 39058 8007E858 E4460010 */  swc1       $f6, 0x10($v0)
/* 3905C 8007E85C E44A0014 */  swc1       $f10, 0x14($v0)
/* 39060 8007E860 C504000C */  lwc1       $f4, 0xC($t0)
/* 39064 8007E864 C5080010 */  lwc1       $f8, 0x10($t0)
/* 39068 8007E868 46122180 */  add.s      $f6, $f4, $f18
/* 3906C 8007E86C C5040014 */  lwc1       $f4, 0x14($t0)
/* 39070 8007E870 461C4280 */  add.s      $f10, $f8, $f28
/* 39074 8007E874 E506000C */  swc1       $f6, 0xC($t0)
/* 39078 8007E878 461E2180 */  add.s      $f6, $f4, $f30
/* 3907C 8007E87C E50A0010 */  swc1       $f10, 0x10($t0)
/* 39080 8007E880 E5060014 */  swc1       $f6, 0x14($t0)
/* 39084 8007E884 0C01890F */  jal        func_8006243C
/* 39088 8007E888 8FA50074 */   lw        $a1, 0x74($sp)
/* 3908C 8007E88C 10000006 */  b          .L8007E8A8
/* 39090 8007E890 8FBF0044 */   lw        $ra, 0x44($sp)
.L8007E894:
/* 39094 8007E894 2442FEFC */  addiu      $v0, $v0, -0x104
.L8007E898:
/* 39098 8007E898 0043082B */  sltu       $at, $v0, $v1
/* 3909C 8007E89C 5020FDC7 */  beql       $at, $zero, .L8007DFBC
/* 390A0 8007E8A0 8C58009C */   lw        $t8, 0x9C($v0)
.L8007E8A4:
/* 390A4 8007E8A4 8FBF0044 */  lw         $ra, 0x44($sp)
.L8007E8A8:
/* 390A8 8007E8A8 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 390AC 8007E8AC D7B60018 */  ldc1       $f22, 0x18($sp)
/* 390B0 8007E8B0 D7B80020 */  ldc1       $f24, 0x20($sp)
/* 390B4 8007E8B4 D7BA0028 */  ldc1       $f26, 0x28($sp)
/* 390B8 8007E8B8 D7BC0030 */  ldc1       $f28, 0x30($sp)
/* 390BC 8007E8BC D7BE0038 */  ldc1       $f30, 0x38($sp)
/* 390C0 8007E8C0 03E00008 */  jr         $ra
/* 390C4 8007E8C4 27BD0088 */   addiu     $sp, $sp, 0x88

glabel func_8007E8C8
/* 390C8 8007E8C8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 390CC 8007E8CC AFBF0024 */  sw         $ra, 0x24($sp)
/* 390D0 8007E8D0 8C871614 */  lw         $a3, 0x1614($a0)
/* 390D4 8007E8D4 8C861610 */  lw         $a2, 0x1610($a0)
/* 390D8 8007E8D8 8C85160C */  lw         $a1, 0x160C($a0)
/* 390DC 8007E8DC 248E0110 */  addiu      $t6, $a0, 0x110
/* 390E0 8007E8E0 248F0130 */  addiu      $t7, $a0, 0x130
/* 390E4 8007E8E4 249800F0 */  addiu      $t8, $a0, 0xF0
/* 390E8 8007E8E8 AFB80018 */  sw         $t8, 0x18($sp)
/* 390EC 8007E8EC AFAF0014 */  sw         $t7, 0x14($sp)
/* 390F0 8007E8F0 AFAE0010 */  sw         $t6, 0x10($sp)
/* 390F4 8007E8F4 0C01F7D3 */  jal        func_8007DF4C
/* 390F8 8007E8F8 AFA40028 */   sw        $a0, 0x28($sp)
/* 390FC 8007E8FC 8FA40028 */  lw         $a0, 0x28($sp)
/* 39100 8007E900 8C851654 */  lw         $a1, 0x1654($a0)
/* 39104 8007E904 8C861658 */  lw         $a2, 0x1658($a0)
/* 39108 8007E908 8C87165C */  lw         $a3, 0x165C($a0)
/* 3910C 8007E90C 249901F0 */  addiu      $t9, $a0, 0x1F0
/* 39110 8007E910 248801D0 */  addiu      $t0, $a0, 0x1D0
/* 39114 8007E914 248901B0 */  addiu      $t1, $a0, 0x1B0
/* 39118 8007E918 AFA90018 */  sw         $t1, 0x18($sp)
/* 3911C 8007E91C AFA80014 */  sw         $t0, 0x14($sp)
/* 39120 8007E920 0C01F7D3 */  jal        func_8007DF4C
/* 39124 8007E924 AFB90010 */   sw        $t9, 0x10($sp)
/* 39128 8007E928 8FBF0024 */  lw         $ra, 0x24($sp)
/* 3912C 8007E92C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 39130 8007E930 03E00008 */  jr         $ra
/* 39134 8007E934 00000000 */   nop

glabel func_8007E938
/* 39138 8007E938 3C0E801C */  lui        $t6, %hi(D_801BFA40)
/* 3913C 8007E93C 8DCEFA40 */  lw         $t6, %lo(D_801BFA40)($t6)
/* 39140 8007E940 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 39144 8007E944 3C03801C */  lui        $v1, %hi(D_801BC940)
/* 39148 8007E948 000E7880 */  sll        $t7, $t6, 2
/* 3914C 8007E94C 01EE7823 */  subu       $t7, $t7, $t6
/* 39150 8007E950 000F7900 */  sll        $t7, $t7, 4
/* 39154 8007E954 01EE7821 */  addu       $t7, $t7, $t6
/* 39158 8007E958 2463C940 */  addiu      $v1, $v1, %lo(D_801BC940)
/* 3915C 8007E95C 000F7880 */  sll        $t7, $t7, 2
/* 39160 8007E960 006F1021 */  addu       $v0, $v1, $t7
/* 39164 8007E964 F7BA0038 */  sdc1       $f26, 0x38($sp)
/* 39168 8007E968 F7B80030 */  sdc1       $f24, 0x30($sp)
/* 3916C 8007E96C 2442FF3C */  addiu      $v0, $v0, -0xC4
/* 39170 8007E970 4487C000 */  mtc1       $a3, $f24
/* 39174 8007E974 4486D000 */  mtc1       $a2, $f26
/* 39178 8007E978 AFB00040 */  sw         $s0, 0x40($sp)
/* 3917C 8007E97C 44856000 */  mtc1       $a1, $f12
/* 39180 8007E980 0043082B */  sltu       $at, $v0, $v1
/* 39184 8007E984 00808025 */  or         $s0, $a0, $zero
/* 39188 8007E988 AFBF0044 */  sw         $ra, 0x44($sp)
/* 3918C 8007E98C F7B60028 */  sdc1       $f22, 0x28($sp)
/* 39190 8007E990 142000C2 */  bnez       $at, .L8007EC9C
/* 39194 8007E994 F7B40020 */   sdc1      $f20, 0x20($sp)
/* 39198 8007E998 3C014140 */  lui        $at, (0x41400000 >> 16)
/* 3919C 8007E99C 44817000 */  mtc1       $at, $f14
/* 391A0 8007E9A0 24050002 */  addiu      $a1, $zero, 0x2
/* 391A4 8007E9A4 2404000A */  addiu      $a0, $zero, 0xA
/* 391A8 8007E9A8 8C58004C */  lw         $t8, 0x4C($v0)
.L8007E9AC:
/* 391AC 8007E9AC 54980007 */  bnel       $a0, $t8, .L8007E9CC
/* 391B0 8007E9B0 8C49005C */   lw        $t1, 0x5C($v0)
/* 391B4 8007E9B4 8C5900BC */  lw         $t9, 0xBC($v0)
/* 391B8 8007E9B8 53200007 */  beql       $t9, $zero, .L8007E9D8
/* 391BC 8007E9BC C4440040 */   lwc1      $f4, 0x40($v0)
/* 391C0 8007E9C0 100000B3 */  b          .L8007EC90
/* 391C4 8007E9C4 2442FF3C */   addiu     $v0, $v0, -0xC4
/* 391C8 8007E9C8 8C49005C */  lw         $t1, 0x5C($v0)
.L8007E9CC:
/* 391CC 8007E9CC 54A900B0 */  bnel       $a1, $t1, .L8007EC90
/* 391D0 8007E9D0 2442FF3C */   addiu     $v0, $v0, -0xC4
/* 391D4 8007E9D4 C4440040 */  lwc1       $f4, 0x40($v0)
.L8007E9D8:
/* 391D8 8007E9D8 C4460000 */  lwc1       $f6, 0x0($v0)
/* 391DC 8007E9DC C4480008 */  lwc1       $f8, 0x8($v0)
/* 391E0 8007E9E0 460E2000 */  add.s      $f0, $f4, $f14
/* 391E4 8007E9E4 46066481 */  sub.s      $f18, $f12, $f6
/* 391E8 8007E9E8 46000002 */  mul.s      $f0, $f0, $f0
/* 391EC 8007E9EC 4608C581 */  sub.s      $f22, $f24, $f8
/* 391F0 8007E9F0 46129282 */  mul.s      $f10, $f18, $f18
/* 391F4 8007E9F4 00000000 */  nop
/* 391F8 8007E9F8 4616B102 */  mul.s      $f4, $f22, $f22
/* 391FC 8007E9FC 46045080 */  add.s      $f2, $f10, $f4
/* 39200 8007EA00 4602003C */  c.lt.s     $f0, $f2
/* 39204 8007EA04 00000000 */  nop
/* 39208 8007EA08 450100A0 */  bc1t       .L8007EC8C
/* 3920C 8007EA0C 00000000 */   nop
/* 39210 8007EA10 C4460004 */  lwc1       $f6, 0x4($v0)
/* 39214 8007EA14 4606D401 */  sub.s      $f16, $f26, $f6
/* 39218 8007EA18 46108202 */  mul.s      $f8, $f16, $f16
/* 3921C 8007EA1C 46081500 */  add.s      $f20, $f2, $f8
/* 39220 8007EA20 4600A03C */  c.lt.s     $f20, $f0
/* 39224 8007EA24 00000000 */  nop
/* 39228 8007EA28 45020099 */  bc1fl      .L8007EC90
/* 3922C 8007EA2C 2442FF3C */   addiu     $v0, $v0, -0xC4
/* 39230 8007EA30 4600A306 */  mov.s      $f12, $f20
/* 39234 8007EA34 AFA2006C */  sw         $v0, 0x6C($sp)
/* 39238 8007EA38 E7B00064 */  swc1       $f16, 0x64($sp)
/* 3923C 8007EA3C 0C031C04 */  jal        sqrtf
/* 39240 8007EA40 E7B20068 */   swc1      $f18, 0x68($sp)
/* 39244 8007EA44 3C014140 */  lui        $at, (0x41400000 >> 16)
/* 39248 8007EA48 44817000 */  mtc1       $at, $f14
/* 3924C 8007EA4C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 39250 8007EA50 44813000 */  mtc1       $at, $f6
/* 39254 8007EA54 C7B20068 */  lwc1       $f18, 0x68($sp)
/* 39258 8007EA58 8FA2006C */  lw         $v0, 0x6C($sp)
/* 3925C 8007EA5C 46003303 */  div.s      $f12, $f6, $f0
/* 39260 8007EA60 C7B00064 */  lwc1       $f16, 0x64($sp)
/* 39264 8007EA64 C44A0040 */  lwc1       $f10, 0x40($v0)
/* 39268 8007EA68 8C4A004C */  lw         $t2, 0x4C($v0)
/* 3926C 8007EA6C 2404000A */  addiu      $a0, $zero, 0xA
/* 39270 8007EA70 460A7100 */  add.s      $f4, $f14, $f10
/* 39274 8007EA74 24050002 */  addiu      $a1, $zero, 0x2
/* 39278 8007EA78 240B0001 */  addiu      $t3, $zero, 0x1
/* 3927C 8007EA7C 3C01800D */  lui        $at, %hi(D_800D49B8)
/* 39280 8007EA80 46002081 */  sub.s      $f2, $f4, $f0
/* 39284 8007EA84 460C9482 */  mul.s      $f18, $f18, $f12
/* 39288 8007EA88 00000000 */  nop
/* 3928C 8007EA8C 460C8402 */  mul.s      $f16, $f16, $f12
/* 39290 8007EA90 00000000 */  nop
/* 39294 8007EA94 460CB582 */  mul.s      $f22, $f22, $f12
/* 39298 8007EA98 148A0004 */  bne        $a0, $t2, .L8007EAAC
/* 3929C 8007EA9C 00000000 */   nop
/* 392A0 8007EAA0 AE0B16D8 */  sw         $t3, 0x16D8($s0)
/* 392A4 8007EAA4 1000001B */  b          .L8007EB14
/* 392A8 8007EAA8 46001506 */   mov.s     $f20, $f2
.L8007EAAC:
/* 392AC 8007EAAC AE0016D8 */  sw         $zero, 0x16D8($s0)
/* 392B0 8007EAB0 C42849B8 */  lwc1       $f8, %lo(D_800D49B8)($at)
/* 392B4 8007EAB4 C44A0000 */  lwc1       $f10, 0x0($v0)
/* 392B8 8007EAB8 C4460004 */  lwc1       $f6, 0x4($v0)
/* 392BC 8007EABC 46081502 */  mul.s      $f20, $f2, $f8
/* 392C0 8007EAC0 46141081 */  sub.s      $f2, $f2, $f20
/* 392C4 8007EAC4 46121002 */  mul.s      $f0, $f2, $f18
/* 392C8 8007EAC8 00000000 */  nop
/* 392CC 8007EACC 46101302 */  mul.s      $f12, $f2, $f16
/* 392D0 8007EAD0 46005101 */  sub.s      $f4, $f10, $f0
/* 392D4 8007EAD4 46161382 */  mul.s      $f14, $f2, $f22
/* 392D8 8007EAD8 C44A0008 */  lwc1       $f10, 0x8($v0)
/* 392DC 8007EADC 460C3201 */  sub.s      $f8, $f6, $f12
/* 392E0 8007EAE0 C4460018 */  lwc1       $f6, 0x18($v0)
/* 392E4 8007EAE4 E4440000 */  swc1       $f4, 0x0($v0)
/* 392E8 8007EAE8 E4480004 */  swc1       $f8, 0x4($v0)
/* 392EC 8007EAEC 460E5101 */  sub.s      $f4, $f10, $f14
/* 392F0 8007EAF0 C44A001C */  lwc1       $f10, 0x1C($v0)
/* 392F4 8007EAF4 46003201 */  sub.s      $f8, $f6, $f0
/* 392F8 8007EAF8 C4460020 */  lwc1       $f6, 0x20($v0)
/* 392FC 8007EAFC E4440008 */  swc1       $f4, 0x8($v0)
/* 39300 8007EB00 460C5101 */  sub.s      $f4, $f10, $f12
/* 39304 8007EB04 E4480018 */  swc1       $f8, 0x18($v0)
/* 39308 8007EB08 460E3201 */  sub.s      $f8, $f6, $f14
/* 3930C 8007EB0C E444001C */  swc1       $f4, 0x1C($v0)
/* 39310 8007EB10 E4480020 */  swc1       $f8, 0x20($v0)
.L8007EB14:
/* 39314 8007EB14 4612A602 */  mul.s      $f24, $f20, $f18
/* 39318 8007EB18 8FA30080 */  lw         $v1, 0x80($sp)
/* 3931C 8007EB1C 46009107 */  neg.s      $f4, $f18
/* 39320 8007EB20 4610A682 */  mul.s      $f26, $f20, $f16
/* 39324 8007EB24 00000000 */  nop
/* 39328 8007EB28 4616A282 */  mul.s      $f10, $f20, $f22
/* 3932C 8007EB2C E7AA0048 */  swc1       $f10, 0x48($sp)
/* 39330 8007EB30 C460000C */  lwc1       $f0, 0xC($v1)
/* 39334 8007EB34 C4620010 */  lwc1       $f2, 0x10($v1)
/* 39338 8007EB38 C46C0014 */  lwc1       $f12, 0x14($v1)
/* 3933C 8007EB3C 46002182 */  mul.s      $f6, $f4, $f0
/* 39340 8007EB40 00000000 */  nop
/* 39344 8007EB44 46028202 */  mul.s      $f8, $f16, $f2
/* 39348 8007EB48 46083281 */  sub.s      $f10, $f6, $f8
/* 3934C 8007EB4C 460CB102 */  mul.s      $f4, $f22, $f12
/* 39350 8007EB50 C6060C50 */  lwc1       $f6, 0xC50($s0)
/* 39354 8007EB54 46045501 */  sub.s      $f20, $f10, $f4
/* 39358 8007EB58 4614303C */  c.lt.s     $f6, $f20
/* 3935C 8007EB5C 00000000 */  nop
/* 39360 8007EB60 45000028 */  bc1f       .L8007EC04
/* 39364 8007EB64 00000000 */   nop
/* 39368 8007EB68 8C4C004C */  lw         $t4, 0x4C($v0)
/* 3936C 8007EB6C 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 39370 8007EB70 548C001E */  bnel       $a0, $t4, .L8007EBEC
/* 39374 8007EB74 E6140C50 */   swc1      $f20, 0xC50($s0)
/* 39378 8007EB78 C60816A0 */  lwc1       $f8, 0x16A0($s0)
/* 3937C 8007EB7C 44815000 */  mtc1       $at, $f10
/* 39380 8007EB80 00000000 */  nop
/* 39384 8007EB84 460A4102 */  mul.s      $f4, $f8, $f10
/* 39388 8007EB88 4614203E */  c.le.s     $f4, $f20
/* 3938C 8007EB8C 00000000 */  nop
/* 39390 8007EB90 45020016 */  bc1fl      .L8007EBEC
/* 39394 8007EB94 E6140C50 */   swc1      $f20, 0xC50($s0)
/* 39398 8007EB98 AE0516D8 */  sw         $a1, 0x16D8($s0)
/* 3939C 8007EB9C 8C4D00BC */  lw         $t5, 0xBC($v0)
/* 393A0 8007EBA0 240E0001 */  addiu      $t6, $zero, 0x1
/* 393A4 8007EBA4 55A00011 */  bnel       $t5, $zero, .L8007EBEC
/* 393A8 8007EBA8 E6140C50 */   swc1      $f20, 0xC50($s0)
/* 393AC 8007EBAC AC4E00BC */  sw         $t6, 0xBC($v0)
/* 393B0 8007EBB0 C4660010 */  lwc1       $f6, 0x10($v1)
/* 393B4 8007EBB4 8C67000C */  lw         $a3, 0xC($v1)
/* 393B8 8007EBB8 C44C0000 */  lwc1       $f12, 0x0($v0)
/* 393BC 8007EBBC C44E0004 */  lwc1       $f14, 0x4($v0)
/* 393C0 8007EBC0 8C460008 */  lw         $a2, 0x8($v0)
/* 393C4 8007EBC4 E7A60010 */  swc1       $f6, 0x10($sp)
/* 393C8 8007EBC8 C4680014 */  lwc1       $f8, 0x14($v1)
/* 393CC 8007EBCC E7B20068 */  swc1       $f18, 0x68($sp)
/* 393D0 8007EBD0 E7B00064 */  swc1       $f16, 0x64($sp)
/* 393D4 8007EBD4 0C02D243 */  jal        func_800B490C
/* 393D8 8007EBD8 E7A80014 */   swc1      $f8, 0x14($sp)
/* 393DC 8007EBDC 8FA30080 */  lw         $v1, 0x80($sp)
/* 393E0 8007EBE0 C7B00064 */  lwc1       $f16, 0x64($sp)
/* 393E4 8007EBE4 C7B20068 */  lwc1       $f18, 0x68($sp)
/* 393E8 8007EBE8 E6140C50 */  swc1       $f20, 0xC50($s0)
.L8007EBEC:
/* 393EC 8007EBEC E61215B4 */  swc1       $f18, 0x15B4($s0)
/* 393F0 8007EBF0 E61015B8 */  swc1       $f16, 0x15B8($s0)
/* 393F4 8007EBF4 E61615BC */  swc1       $f22, 0x15BC($s0)
/* 393F8 8007EBF8 C46C0014 */  lwc1       $f12, 0x14($v1)
/* 393FC 8007EBFC C4620010 */  lwc1       $f2, 0x10($v1)
/* 39400 8007EC00 C460000C */  lwc1       $f0, 0xC($v1)
.L8007EC04:
/* 39404 8007EC04 C7AE0048 */  lwc1       $f14, 0x48($sp)
/* 39408 8007EC08 46180280 */  add.s      $f10, $f0, $f24
/* 3940C 8007EC0C 8FA20084 */  lw         $v0, 0x84($sp)
/* 39410 8007EC10 8FA80088 */  lw         $t0, 0x88($sp)
/* 39414 8007EC14 461A1100 */  add.s      $f4, $f2, $f26
/* 39418 8007EC18 E46A000C */  swc1       $f10, 0xC($v1)
/* 3941C 8007EC1C 4405C000 */  mfc1       $a1, $f24
/* 39420 8007EC20 460E6180 */  add.s      $f6, $f12, $f14
/* 39424 8007EC24 E4640010 */  swc1       $f4, 0x10($v1)
/* 39428 8007EC28 4406D000 */  mfc1       $a2, $f26
/* 3942C 8007EC2C 44077000 */  mfc1       $a3, $f14
/* 39430 8007EC30 E4660014 */  swc1       $f6, 0x14($v1)
/* 39434 8007EC34 C448000C */  lwc1       $f8, 0xC($v0)
/* 39438 8007EC38 C4440010 */  lwc1       $f4, 0x10($v0)
/* 3943C 8007EC3C 02002025 */  or         $a0, $s0, $zero
/* 39440 8007EC40 46184280 */  add.s      $f10, $f8, $f24
/* 39444 8007EC44 C4480014 */  lwc1       $f8, 0x14($v0)
/* 39448 8007EC48 461A2180 */  add.s      $f6, $f4, $f26
/* 3944C 8007EC4C E44A000C */  swc1       $f10, 0xC($v0)
/* 39450 8007EC50 460E4280 */  add.s      $f10, $f8, $f14
/* 39454 8007EC54 E4460010 */  swc1       $f6, 0x10($v0)
/* 39458 8007EC58 E44A0014 */  swc1       $f10, 0x14($v0)
/* 3945C 8007EC5C C504000C */  lwc1       $f4, 0xC($t0)
/* 39460 8007EC60 C5080010 */  lwc1       $f8, 0x10($t0)
/* 39464 8007EC64 46182180 */  add.s      $f6, $f4, $f24
/* 39468 8007EC68 C5040014 */  lwc1       $f4, 0x14($t0)
/* 3946C 8007EC6C 461A4280 */  add.s      $f10, $f8, $f26
/* 39470 8007EC70 E506000C */  swc1       $f6, 0xC($t0)
/* 39474 8007EC74 460E2180 */  add.s      $f6, $f4, $f14
/* 39478 8007EC78 E50A0010 */  swc1       $f10, 0x10($t0)
/* 3947C 8007EC7C 0C01890F */  jal        func_8006243C
/* 39480 8007EC80 E5060014 */   swc1      $f6, 0x14($t0)
/* 39484 8007EC84 10000006 */  b          .L8007ECA0
/* 39488 8007EC88 8FBF0044 */   lw        $ra, 0x44($sp)
.L8007EC8C:
/* 3948C 8007EC8C 2442FF3C */  addiu      $v0, $v0, -0xC4
.L8007EC90:
/* 39490 8007EC90 0043082B */  sltu       $at, $v0, $v1
/* 39494 8007EC94 5020FF45 */  beql       $at, $zero, .L8007E9AC
/* 39498 8007EC98 8C58004C */   lw        $t8, 0x4C($v0)
.L8007EC9C:
/* 3949C 8007EC9C 8FBF0044 */  lw         $ra, 0x44($sp)
.L8007ECA0:
/* 394A0 8007ECA0 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 394A4 8007ECA4 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 394A8 8007ECA8 D7B80030 */  ldc1       $f24, 0x30($sp)
/* 394AC 8007ECAC D7BA0038 */  ldc1       $f26, 0x38($sp)
/* 394B0 8007ECB0 8FB00040 */  lw         $s0, 0x40($sp)
/* 394B4 8007ECB4 03E00008 */  jr         $ra
/* 394B8 8007ECB8 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_8007ECBC
/* 394BC 8007ECBC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 394C0 8007ECC0 AFBF0024 */  sw         $ra, 0x24($sp)
/* 394C4 8007ECC4 8C871614 */  lw         $a3, 0x1614($a0)
/* 394C8 8007ECC8 8C861610 */  lw         $a2, 0x1610($a0)
/* 394CC 8007ECCC 8C85160C */  lw         $a1, 0x160C($a0)
/* 394D0 8007ECD0 248E0110 */  addiu      $t6, $a0, 0x110
/* 394D4 8007ECD4 248F0130 */  addiu      $t7, $a0, 0x130
/* 394D8 8007ECD8 249800F0 */  addiu      $t8, $a0, 0xF0
/* 394DC 8007ECDC AFB80018 */  sw         $t8, 0x18($sp)
/* 394E0 8007ECE0 AFAF0014 */  sw         $t7, 0x14($sp)
/* 394E4 8007ECE4 AFAE0010 */  sw         $t6, 0x10($sp)
/* 394E8 8007ECE8 0C01FA4E */  jal        func_8007E938
/* 394EC 8007ECEC AFA40028 */   sw        $a0, 0x28($sp)
/* 394F0 8007ECF0 8FA40028 */  lw         $a0, 0x28($sp)
/* 394F4 8007ECF4 8C851654 */  lw         $a1, 0x1654($a0)
/* 394F8 8007ECF8 8C861658 */  lw         $a2, 0x1658($a0)
/* 394FC 8007ECFC 8C87165C */  lw         $a3, 0x165C($a0)
/* 39500 8007ED00 249901F0 */  addiu      $t9, $a0, 0x1F0
/* 39504 8007ED04 248801D0 */  addiu      $t0, $a0, 0x1D0
/* 39508 8007ED08 248901B0 */  addiu      $t1, $a0, 0x1B0
/* 3950C 8007ED0C AFA90018 */  sw         $t1, 0x18($sp)
/* 39510 8007ED10 AFA80014 */  sw         $t0, 0x14($sp)
/* 39514 8007ED14 0C01FA4E */  jal        func_8007E938
/* 39518 8007ED18 AFB90010 */   sw        $t9, 0x10($sp)
/* 3951C 8007ED1C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 39520 8007ED20 27BD0028 */  addiu      $sp, $sp, 0x28
/* 39524 8007ED24 03E00008 */  jr         $ra
/* 39528 8007ED28 00000000 */   nop

glabel func_8007ED2C
/* 3952C 8007ED2C 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 39530 8007ED30 F7B80028 */  sdc1       $f24, 0x28($sp)
/* 39534 8007ED34 4487C000 */  mtc1       $a3, $f24
/* 39538 8007ED38 AFB00030 */  sw         $s0, 0x30($sp)
/* 3953C 8007ED3C 00C08025 */  or         $s0, $a2, $zero
/* 39540 8007ED40 AFBF0034 */  sw         $ra, 0x34($sp)
/* 39544 8007ED44 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 39548 8007ED48 04800086 */  bltz       $a0, .L8007EF64
/* 3954C 8007ED4C F7B40018 */   sdc1      $f20, 0x18($sp)
/* 39550 8007ED50 00A41821 */  addu       $v1, $a1, $a0
/* 39554 8007ED54 3C05801C */  lui        $a1, %hi(D_801BB138)
/* 39558 8007ED58 3C01800F */  lui        $at, %hi(D_800EA3E0)
/* 3955C 8007ED5C C432A3E0 */  lwc1       $f18, %lo(D_800EA3E0)($at)
/* 39560 8007ED60 24A5B138 */  addiu      $a1, $a1, %lo(D_801BB138)
/* 39564 8007ED64 C7B60088 */  lwc1       $f22, 0x88($sp)
/* 39568 8007ED68 C7B4008C */  lwc1       $f20, 0x8C($sp)
/* 3956C 8007ED6C 24060018 */  addiu      $a2, $zero, 0x18
.L8007ED70:
/* 39570 8007ED70 906E0000 */  lbu        $t6, 0x0($v1)
/* 39574 8007ED74 2484FFFF */  addiu      $a0, $a0, -0x1
/* 39578 8007ED78 01C60019 */  multu      $t6, $a2
/* 3957C 8007ED7C 00007812 */  mflo       $t7
/* 39580 8007ED80 00AF1021 */  addu       $v0, $a1, $t7
/* 39584 8007ED84 C4440000 */  lwc1       $f4, 0x0($v0)
/* 39588 8007ED88 C4460008 */  lwc1       $f6, 0x8($v0)
/* 3958C 8007ED8C 4604C081 */  sub.s      $f2, $f24, $f4
/* 39590 8007ED90 4606A381 */  sub.s      $f14, $f20, $f6
/* 39594 8007ED94 46021202 */  mul.s      $f8, $f2, $f2
/* 39598 8007ED98 00000000 */  nop
/* 3959C 8007ED9C 460E7282 */  mul.s      $f10, $f14, $f14
/* 395A0 8007EDA0 460A4000 */  add.s      $f0, $f8, $f10
/* 395A4 8007EDA4 4600903C */  c.lt.s     $f18, $f0
/* 395A8 8007EDA8 00000000 */  nop
/* 395AC 8007EDAC 4501006B */  bc1t       .L8007EF5C
/* 395B0 8007EDB0 00000000 */   nop
/* 395B4 8007EDB4 C4440004 */  lwc1       $f4, 0x4($v0)
/* 395B8 8007EDB8 4604B401 */  sub.s      $f16, $f22, $f4
/* 395BC 8007EDBC 46108182 */  mul.s      $f6, $f16, $f16
/* 395C0 8007EDC0 46060300 */  add.s      $f12, $f0, $f6
/* 395C4 8007EDC4 4612603C */  c.lt.s     $f12, $f18
/* 395C8 8007EDC8 00000000 */  nop
/* 395CC 8007EDCC 45000063 */  bc1f       .L8007EF5C
/* 395D0 8007EDD0 00000000 */   nop
/* 395D4 8007EDD4 E7A20070 */  swc1       $f2, 0x70($sp)
/* 395D8 8007EDD8 E7AE0068 */  swc1       $f14, 0x68($sp)
/* 395DC 8007EDDC 0C031C04 */  jal        sqrtf
/* 395E0 8007EDE0 E7B0006C */   swc1      $f16, 0x6C($sp)
/* 395E4 8007EDE4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 395E8 8007EDE8 44814000 */  mtc1       $at, $f8
/* 395EC 8007EDEC C7A20070 */  lwc1       $f2, 0x70($sp)
/* 395F0 8007EDF0 3C014214 */  lui        $at, (0x42140000 >> 16)
/* 395F4 8007EDF4 46004503 */  div.s      $f20, $f8, $f0
/* 395F8 8007EDF8 44815000 */  mtc1       $at, $f10
/* 395FC 8007EDFC C7B0006C */  lwc1       $f16, 0x6C($sp)
/* 39600 8007EE00 C7AE0068 */  lwc1       $f14, 0x68($sp)
/* 39604 8007EE04 46005481 */  sub.s      $f18, $f10, $f0
/* 39608 8007EE08 8FA30090 */  lw         $v1, 0x90($sp)
/* 3960C 8007EE0C 46141082 */  mul.s      $f2, $f2, $f20
/* 39610 8007EE10 00000000 */  nop
/* 39614 8007EE14 46121582 */  mul.s      $f22, $f2, $f18
/* 39618 8007EE18 00000000 */  nop
/* 3961C 8007EE1C 46148402 */  mul.s      $f16, $f16, $f20
/* 39620 8007EE20 E7B6005C */  swc1       $f22, 0x5C($sp)
/* 39624 8007EE24 46128602 */  mul.s      $f24, $f16, $f18
/* 39628 8007EE28 00000000 */  nop
/* 3962C 8007EE2C 46147382 */  mul.s      $f14, $f14, $f20
/* 39630 8007EE30 E7B80058 */  swc1       $f24, 0x58($sp)
/* 39634 8007EE34 46127102 */  mul.s      $f4, $f14, $f18
/* 39638 8007EE38 E7A40048 */  swc1       $f4, 0x48($sp)
/* 3963C 8007EE3C C7A60048 */  lwc1       $f6, 0x48($sp)
/* 39640 8007EE40 E7A60054 */  swc1       $f6, 0x54($sp)
/* 39644 8007EE44 C468000C */  lwc1       $f8, 0xC($v1)
/* 39648 8007EE48 46001187 */  neg.s      $f6, $f2
/* 3964C 8007EE4C E7A80044 */  swc1       $f8, 0x44($sp)
/* 39650 8007EE50 C46A0010 */  lwc1       $f10, 0x10($v1)
/* 39654 8007EE54 C7A80044 */  lwc1       $f8, 0x44($sp)
/* 39658 8007EE58 E7AA0040 */  swc1       $f10, 0x40($sp)
/* 3965C 8007EE5C C4640014 */  lwc1       $f4, 0x14($v1)
/* 39660 8007EE60 46083282 */  mul.s      $f10, $f6, $f8
/* 39664 8007EE64 E7A4003C */  swc1       $f4, 0x3C($sp)
/* 39668 8007EE68 C7A40040 */  lwc1       $f4, 0x40($sp)
/* 3966C 8007EE6C 46048182 */  mul.s      $f6, $f16, $f4
/* 39670 8007EE70 C7A4003C */  lwc1       $f4, 0x3C($sp)
/* 39674 8007EE74 46065201 */  sub.s      $f8, $f10, $f6
/* 39678 8007EE78 46047282 */  mul.s      $f10, $f14, $f4
/* 3967C 8007EE7C C6060C3C */  lwc1       $f6, 0xC3C($s0)
/* 39680 8007EE80 460A4301 */  sub.s      $f12, $f8, $f10
/* 39684 8007EE84 460C303C */  c.lt.s     $f6, $f12
/* 39688 8007EE88 00000000 */  nop
/* 3968C 8007EE8C 4500000B */  bc1f       .L8007EEBC
/* 39690 8007EE90 00000000 */   nop
/* 39694 8007EE94 E60C0C3C */  swc1       $f12, 0xC3C($s0)
/* 39698 8007EE98 E60215B4 */  swc1       $f2, 0x15B4($s0)
/* 3969C 8007EE9C E61015B8 */  swc1       $f16, 0x15B8($s0)
/* 396A0 8007EEA0 E60E15BC */  swc1       $f14, 0x15BC($s0)
/* 396A4 8007EEA4 C464000C */  lwc1       $f4, 0xC($v1)
/* 396A8 8007EEA8 E7A40044 */  swc1       $f4, 0x44($sp)
/* 396AC 8007EEAC C4680010 */  lwc1       $f8, 0x10($v1)
/* 396B0 8007EEB0 E7A80040 */  swc1       $f8, 0x40($sp)
/* 396B4 8007EEB4 C46A0014 */  lwc1       $f10, 0x14($v1)
/* 396B8 8007EEB8 E7AA003C */  swc1       $f10, 0x3C($sp)
.L8007EEBC:
/* 396BC 8007EEBC C7A60044 */  lwc1       $f6, 0x44($sp)
/* 396C0 8007EEC0 8FA20094 */  lw         $v0, 0x94($sp)
/* 396C4 8007EEC4 8FA80098 */  lw         $t0, 0x98($sp)
/* 396C8 8007EEC8 46163100 */  add.s      $f4, $f6, $f22
/* 396CC 8007EECC 02002025 */  or         $a0, $s0, $zero
/* 396D0 8007EED0 E464000C */  swc1       $f4, 0xC($v1)
/* 396D4 8007EED4 C7A80040 */  lwc1       $f8, 0x40($sp)
/* 396D8 8007EED8 46184280 */  add.s      $f10, $f8, $f24
/* 396DC 8007EEDC E46A0010 */  swc1       $f10, 0x10($v1)
/* 396E0 8007EEE0 C7A40048 */  lwc1       $f4, 0x48($sp)
/* 396E4 8007EEE4 C7A6003C */  lwc1       $f6, 0x3C($sp)
/* 396E8 8007EEE8 46043200 */  add.s      $f8, $f6, $f4
/* 396EC 8007EEEC E4680014 */  swc1       $f8, 0x14($v1)
/* 396F0 8007EEF0 C44A000C */  lwc1       $f10, 0xC($v0)
/* 396F4 8007EEF4 C4440010 */  lwc1       $f4, 0x10($v0)
/* 396F8 8007EEF8 46165180 */  add.s      $f6, $f10, $f22
/* 396FC 8007EEFC C44A0014 */  lwc1       $f10, 0x14($v0)
/* 39700 8007EF00 46182200 */  add.s      $f8, $f4, $f24
/* 39704 8007EF04 E446000C */  swc1       $f6, 0xC($v0)
/* 39708 8007EF08 E4480010 */  swc1       $f8, 0x10($v0)
/* 3970C 8007EF0C C7A60048 */  lwc1       $f6, 0x48($sp)
/* 39710 8007EF10 46065100 */  add.s      $f4, $f10, $f6
/* 39714 8007EF14 E4440014 */  swc1       $f4, 0x14($v0)
/* 39718 8007EF18 C508000C */  lwc1       $f8, 0xC($t0)
/* 3971C 8007EF1C C5060010 */  lwc1       $f6, 0x10($t0)
/* 39720 8007EF20 46164280 */  add.s      $f10, $f8, $f22
/* 39724 8007EF24 E50A000C */  swc1       $f10, 0xC($t0)
/* 39728 8007EF28 C7A40058 */  lwc1       $f4, 0x58($sp)
/* 3972C 8007EF2C C50A0014 */  lwc1       $f10, 0x14($t0)
/* 39730 8007EF30 46043200 */  add.s      $f8, $f6, $f4
/* 39734 8007EF34 E5080010 */  swc1       $f8, 0x10($t0)
/* 39738 8007EF38 C7A60054 */  lwc1       $f6, 0x54($sp)
/* 3973C 8007EF3C 46065100 */  add.s      $f4, $f10, $f6
/* 39740 8007EF40 E5040014 */  swc1       $f4, 0x14($t0)
/* 39744 8007EF44 8FA70054 */  lw         $a3, 0x54($sp)
/* 39748 8007EF48 8FA60058 */  lw         $a2, 0x58($sp)
/* 3974C 8007EF4C 0C01890F */  jal        func_8006243C
/* 39750 8007EF50 8FA5005C */   lw        $a1, 0x5C($sp)
/* 39754 8007EF54 10000004 */  b          .L8007EF68
/* 39758 8007EF58 8FBF0034 */   lw        $ra, 0x34($sp)
.L8007EF5C:
/* 3975C 8007EF5C 0481FF84 */  bgez       $a0, .L8007ED70
/* 39760 8007EF60 2463FFFF */   addiu     $v1, $v1, -0x1
.L8007EF64:
/* 39764 8007EF64 8FBF0034 */  lw         $ra, 0x34($sp)
.L8007EF68:
/* 39768 8007EF68 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 3976C 8007EF6C D7B60020 */  ldc1       $f22, 0x20($sp)
/* 39770 8007EF70 D7B80028 */  ldc1       $f24, 0x28($sp)
/* 39774 8007EF74 8FB00030 */  lw         $s0, 0x30($sp)
/* 39778 8007EF78 03E00008 */  jr         $ra
/* 3977C 8007EF7C 27BD0078 */   addiu     $sp, $sp, 0x78

glabel func_8007EF80
/* 39780 8007EF80 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 39784 8007EF84 AFBF0034 */  sw         $ra, 0x34($sp)
/* 39788 8007EF88 AFB00030 */  sw         $s0, 0x30($sp)
/* 3978C 8007EF8C 00808025 */  or         $s0, $a0, $zero
/* 39790 8007EF90 C48E004C */  lwc1       $f14, 0x4C($a0)
/* 39794 8007EF94 C48C0044 */  lwc1       $f12, 0x44($a0)
/* 39798 8007EF98 0C01D069 */  jal        func_800741A4
/* 3979C 8007EF9C 27A60038 */   addiu     $a2, $sp, 0x38
/* 397A0 8007EFA0 2444FFFF */  addiu      $a0, $v0, -0x1
/* 397A4 8007EFA4 AFA4003C */  sw         $a0, 0x3C($sp)
/* 397A8 8007EFA8 C6041610 */  lwc1       $f4, 0x1610($s0)
/* 397AC 8007EFAC 8E07160C */  lw         $a3, 0x160C($s0)
/* 397B0 8007EFB0 260E0110 */  addiu      $t6, $s0, 0x110
/* 397B4 8007EFB4 E7A40010 */  swc1       $f4, 0x10($sp)
/* 397B8 8007EFB8 C6061614 */  lwc1       $f6, 0x1614($s0)
/* 397BC 8007EFBC 260F0130 */  addiu      $t7, $s0, 0x130
/* 397C0 8007EFC0 261800F0 */  addiu      $t8, $s0, 0xF0
/* 397C4 8007EFC4 AFB80020 */  sw         $t8, 0x20($sp)
/* 397C8 8007EFC8 AFAF001C */  sw         $t7, 0x1C($sp)
/* 397CC 8007EFCC AFAE0018 */  sw         $t6, 0x18($sp)
/* 397D0 8007EFD0 8FA50038 */  lw         $a1, 0x38($sp)
/* 397D4 8007EFD4 02003025 */  or         $a2, $s0, $zero
/* 397D8 8007EFD8 0C01FB4B */  jal        func_8007ED2C
/* 397DC 8007EFDC E7A60014 */   swc1      $f6, 0x14($sp)
/* 397E0 8007EFE0 C6081658 */  lwc1       $f8, 0x1658($s0)
/* 397E4 8007EFE4 8E071654 */  lw         $a3, 0x1654($s0)
/* 397E8 8007EFE8 261901F0 */  addiu      $t9, $s0, 0x1F0
/* 397EC 8007EFEC E7A80010 */  swc1       $f8, 0x10($sp)
/* 397F0 8007EFF0 C60A165C */  lwc1       $f10, 0x165C($s0)
/* 397F4 8007EFF4 260801D0 */  addiu      $t0, $s0, 0x1D0
/* 397F8 8007EFF8 260901B0 */  addiu      $t1, $s0, 0x1B0
/* 397FC 8007EFFC AFA90020 */  sw         $t1, 0x20($sp)
/* 39800 8007F000 AFA8001C */  sw         $t0, 0x1C($sp)
/* 39804 8007F004 AFB90018 */  sw         $t9, 0x18($sp)
/* 39808 8007F008 8FA4003C */  lw         $a0, 0x3C($sp)
/* 3980C 8007F00C 8FA50038 */  lw         $a1, 0x38($sp)
/* 39810 8007F010 02003025 */  or         $a2, $s0, $zero
/* 39814 8007F014 0C01FB4B */  jal        func_8007ED2C
/* 39818 8007F018 E7AA0014 */   swc1      $f10, 0x14($sp)
/* 3981C 8007F01C 8FBF0034 */  lw         $ra, 0x34($sp)
/* 39820 8007F020 8FB00030 */  lw         $s0, 0x30($sp)
/* 39824 8007F024 27BD0040 */  addiu      $sp, $sp, 0x40
/* 39828 8007F028 03E00008 */  jr         $ra
/* 3982C 8007F02C 00000000 */   nop

glabel func_8007F030
/* 39830 8007F030 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 39834 8007F034 AFB70054 */  sw         $s7, 0x54($sp)
/* 39838 8007F038 AFB60050 */  sw         $s6, 0x50($sp)
/* 3983C 8007F03C AFB5004C */  sw         $s5, 0x4C($sp)
/* 39840 8007F040 AFB40048 */  sw         $s4, 0x48($sp)
/* 39844 8007F044 AFB30044 */  sw         $s3, 0x44($sp)
/* 39848 8007F048 AFB20040 */  sw         $s2, 0x40($sp)
/* 3984C 8007F04C AFB1003C */  sw         $s1, 0x3C($sp)
/* 39850 8007F050 AFB00038 */  sw         $s0, 0x38($sp)
/* 39854 8007F054 F7BE0030 */  sdc1       $f30, 0x30($sp)
/* 39858 8007F058 F7BC0028 */  sdc1       $f28, 0x28($sp)
/* 3985C 8007F05C F7BA0020 */  sdc1       $f26, 0x20($sp)
/* 39860 8007F060 F7B80018 */  sdc1       $f24, 0x18($sp)
/* 39864 8007F064 F7B60010 */  sdc1       $f22, 0x10($sp)
/* 39868 8007F068 F7B40008 */  sdc1       $f20, 0x8($sp)
/* 3986C 8007F06C 8CAE0028 */  lw         $t6, 0x28($a1)
/* 39870 8007F070 8CA20030 */  lw         $v0, 0x30($a1)
/* 39874 8007F074 3C0D801C */  lui        $t5, %hi(D_801C3B60)
/* 39878 8007F078 000E7940 */  sll        $t7, $t6, 5
/* 3987C 8007F07C 004F1821 */  addu       $v1, $v0, $t7
/* 39880 8007F080 0062082B */  sltu       $at, $v1, $v0
/* 39884 8007F084 142000E0 */  bnez       $at, .L8007F408
/* 39888 8007F088 00408025 */   or        $s0, $v0, $zero
/* 3988C 8007F08C 3C014180 */  lui        $at, (0x41800000 >> 16)
/* 39890 8007F090 3C0C801C */  lui        $t4, %hi(D_801C3B68)
/* 39894 8007F094 3C0B801C */  lui        $t3, %hi(D_801C3B40)
/* 39898 8007F098 3C0A801C */  lui        $t2, %hi(D_801C3B58)
/* 3989C 8007F09C 3C09801C */  lui        $t1, %hi(D_801C3B50)
/* 398A0 8007F0A0 3C08801C */  lui        $t0, %hi(D_801C3B4C)
/* 398A4 8007F0A4 3C07801C */  lui        $a3, %hi(D_801C3B44)
/* 398A8 8007F0A8 3C06801C */  lui        $a2, %hi(D_801C3B84)
/* 398AC 8007F0AC 4481F000 */  mtc1       $at, $f30
/* 398B0 8007F0B0 4480E000 */  mtc1       $zero, $f28
/* 398B4 8007F0B4 24C63B84 */  addiu      $a2, $a2, %lo(D_801C3B84)
/* 398B8 8007F0B8 24E73B44 */  addiu      $a3, $a3, %lo(D_801C3B44)
/* 398BC 8007F0BC 25083B4C */  addiu      $t0, $t0, %lo(D_801C3B4C)
/* 398C0 8007F0C0 25293B50 */  addiu      $t1, $t1, %lo(D_801C3B50)
/* 398C4 8007F0C4 254A3B58 */  addiu      $t2, $t2, %lo(D_801C3B58)
/* 398C8 8007F0C8 256B3B40 */  addiu      $t3, $t3, %lo(D_801C3B40)
/* 398CC 8007F0CC 258C3B68 */  addiu      $t4, $t4, %lo(D_801C3B68)
/* 398D0 8007F0D0 25AD3B60 */  addiu      $t5, $t5, %lo(D_801C3B60)
/* 398D4 8007F0D4 C4640000 */  lwc1       $f4, 0x0($v1)
.L8007F0D8:
/* 398D8 8007F0D8 8CEE0000 */  lw         $t6, 0x0($a3)
/* 398DC 8007F0DC 4600218D */  trunc.w.s  $f6, $f4
/* 398E0 8007F0E0 44193000 */  mfc1       $t9, $f6
/* 398E4 8007F0E4 00000000 */  nop
/* 398E8 8007F0E8 032E8823 */  subu       $s1, $t9, $t6
/* 398EC 8007F0EC 062200C3 */  bltzl      $s1, .L8007F3FC
/* 398F0 8007F0F0 2463FFE0 */   addiu     $v1, $v1, -0x20
/* 398F4 8007F0F4 8D0F0000 */  lw         $t7, 0x0($t0)
/* 398F8 8007F0F8 022F082A */  slt        $at, $s1, $t7
/* 398FC 8007F0FC 502000BF */  beql       $at, $zero, .L8007F3FC
/* 39900 8007F100 2463FFE0 */   addiu     $v1, $v1, -0x20
/* 39904 8007F104 C4680008 */  lwc1       $f8, 0x8($v1)
/* 39908 8007F108 8D2E0000 */  lw         $t6, 0x0($t1)
/* 3990C 8007F10C 4600428D */  trunc.w.s  $f10, $f8
/* 39910 8007F110 44195000 */  mfc1       $t9, $f10
/* 39914 8007F114 00000000 */  nop
/* 39918 8007F118 032E9023 */  subu       $s2, $t9, $t6
/* 3991C 8007F11C 064200B7 */  bltzl      $s2, .L8007F3FC
/* 39920 8007F120 2463FFE0 */   addiu     $v1, $v1, -0x20
/* 39924 8007F124 8D4F0000 */  lw         $t7, 0x0($t2)
/* 39928 8007F128 3C14801C */  lui        $s4, %hi(D_801C3B7C)
/* 3992C 8007F12C 3C15801C */  lui        $s5, %hi(D_801C3B78)
/* 39930 8007F130 024F082A */  slt        $at, $s2, $t7
/* 39934 8007F134 102000B0 */  beqz       $at, .L8007F3F8
/* 39938 8007F138 3C16801C */   lui       $s6, %hi(D_801C3B70)
/* 3993C 8007F13C 85780000 */  lh         $t8, 0x0($t3)
/* 39940 8007F140 3C17801C */  lui        $s7, %hi(D_801C3B80)
/* 39944 8007F144 8EF73B80 */  lw         $s7, %lo(D_801C3B80)($s7)
/* 39948 8007F148 8E943B7C */  lw         $s4, %lo(D_801C3B7C)($s4)
/* 3994C 8007F14C 8EB53B78 */  lw         $s5, %lo(D_801C3B78)($s5)
/* 39950 8007F150 13000009 */  beqz       $t8, .L8007F178
/* 39954 8007F154 8ED63B70 */   lw        $s6, %lo(D_801C3B70)($s6)
/* 39958 8007F158 8D8E0000 */  lw         $t6, 0x0($t4)
/* 3995C 8007F15C 02D1C807 */  srav       $t9, $s1, $s6
/* 39960 8007F160 02B2C007 */  srav       $t8, $s2, $s5
/* 39964 8007F164 01D97804 */  sllv       $t7, $t9, $t6
/* 39968 8007F168 030FC825 */  or         $t9, $t8, $t7
/* 3996C 8007F16C 00197040 */  sll        $t6, $t9, 1
/* 39970 8007F170 10000008 */  b          .L8007F194
/* 39974 8007F174 028E9821 */   addu      $s3, $s4, $t6
.L8007F178:
/* 39978 8007F178 8DAF0000 */  lw         $t7, 0x0($t5)
/* 3997C 8007F17C 02B2C007 */  srav       $t8, $s2, $s5
/* 39980 8007F180 02D17007 */  srav       $t6, $s1, $s6
/* 39984 8007F184 01F8C804 */  sllv       $t9, $t8, $t7
/* 39988 8007F188 01D9C025 */  or         $t8, $t6, $t9
/* 3998C 8007F18C 00187840 */  sll        $t7, $t8, 1
/* 39990 8007F190 028F9821 */  addu       $s3, $s4, $t7
.L8007F194:
/* 39994 8007F194 966E0000 */  lhu        $t6, 0x0($s3)
/* 39998 8007F198 000EC840 */  sll        $t9, $t6, 1
/* 3999C 8007F19C 03378821 */  addu       $s1, $t9, $s7
/* 399A0 8007F1A0 96320002 */  lhu        $s2, 0x2($s1)
/* 399A4 8007F1A4 26310002 */  addiu      $s1, $s1, 0x2
/* 399A8 8007F1A8 52400094 */  beql       $s2, $zero, .L8007F3FC
/* 399AC 8007F1AC 2463FFE0 */   addiu     $v1, $v1, -0x20
/* 399B0 8007F1B0 8CCF0000 */  lw         $t7, 0x0($a2)
.L8007F1B4:
/* 399B4 8007F1B4 2652FFFF */  addiu      $s2, $s2, -0x1
/* 399B8 8007F1B8 0012C180 */  sll        $t8, $s2, 6
/* 399BC 8007F1BC 030F8021 */  addu       $s0, $t8, $t7
/* 399C0 8007F1C0 C6040000 */  lwc1       $f4, 0x0($s0)
/* 399C4 8007F1C4 C4660000 */  lwc1       $f6, 0x0($v1)
/* 399C8 8007F1C8 C6080004 */  lwc1       $f8, 0x4($s0)
/* 399CC 8007F1CC C46A0004 */  lwc1       $f10, 0x4($v1)
/* 399D0 8007F1D0 46062001 */  sub.s      $f0, $f4, $f6
/* 399D4 8007F1D4 C4660008 */  lwc1       $f6, 0x8($v1)
/* 399D8 8007F1D8 C6040008 */  lwc1       $f4, 0x8($s0)
/* 399DC 8007F1DC 460A4081 */  sub.s      $f2, $f8, $f10
/* 399E0 8007F1E0 C6080018 */  lwc1       $f8, 0x18($s0)
/* 399E4 8007F1E4 46062301 */  sub.s      $f12, $f4, $f6
/* 399E8 8007F1E8 46004282 */  mul.s      $f10, $f8, $f0
/* 399EC 8007F1EC C604001C */  lwc1       $f4, 0x1C($s0)
/* 399F0 8007F1F0 46041182 */  mul.s      $f6, $f2, $f4
/* 399F4 8007F1F4 C6040020 */  lwc1       $f4, 0x20($s0)
/* 399F8 8007F1F8 46065200 */  add.s      $f8, $f10, $f6
/* 399FC 8007F1FC 46046282 */  mul.s      $f10, $f12, $f4
/* 39A00 8007F200 460A4180 */  add.s      $f6, $f8, $f10
/* 39A04 8007F204 461C303C */  c.lt.s     $f6, $f28
/* 39A08 8007F208 00000000 */  nop
/* 39A0C 8007F20C 45030076 */  bc1tl      .L8007F3E8
/* 39A10 8007F210 96320002 */   lhu       $s2, 0x2($s1)
/* 39A14 8007F214 C6040024 */  lwc1       $f4, 0x24($s0)
/* 39A18 8007F218 C60A0028 */  lwc1       $f10, 0x28($s0)
/* 39A1C 8007F21C 46002202 */  mul.s      $f8, $f4, $f0
/* 39A20 8007F220 00000000 */  nop
/* 39A24 8007F224 460A1182 */  mul.s      $f6, $f2, $f10
/* 39A28 8007F228 C60A002C */  lwc1       $f10, 0x2C($s0)
/* 39A2C 8007F22C 46064100 */  add.s      $f4, $f8, $f6
/* 39A30 8007F230 460A6202 */  mul.s      $f8, $f12, $f10
/* 39A34 8007F234 46082180 */  add.s      $f6, $f4, $f8
/* 39A38 8007F238 461C303C */  c.lt.s     $f6, $f28
/* 39A3C 8007F23C 00000000 */  nop
/* 39A40 8007F240 45010068 */  bc1t       .L8007F3E4
/* 39A44 8007F244 00000000 */   nop
/* 39A48 8007F248 C60A0030 */  lwc1       $f10, 0x30($s0)
/* 39A4C 8007F24C C6080034 */  lwc1       $f8, 0x34($s0)
/* 39A50 8007F250 46005102 */  mul.s      $f4, $f10, $f0
/* 39A54 8007F254 00000000 */  nop
/* 39A58 8007F258 46081182 */  mul.s      $f6, $f2, $f8
/* 39A5C 8007F25C C6080038 */  lwc1       $f8, 0x38($s0)
/* 39A60 8007F260 46062280 */  add.s      $f10, $f4, $f6
/* 39A64 8007F264 46086102 */  mul.s      $f4, $f12, $f8
/* 39A68 8007F268 46045380 */  add.s      $f14, $f10, $f4
/* 39A6C 8007F26C 460EE03E */  c.le.s     $f28, $f14
/* 39A70 8007F270 00000000 */  nop
/* 39A74 8007F274 4501005B */  bc1t       .L8007F3E4
/* 39A78 8007F278 00000000 */   nop
/* 39A7C 8007F27C C606003C */  lwc1       $f6, 0x3C($s0)
/* 39A80 8007F280 4606703C */  c.lt.s     $f14, $f6
/* 39A84 8007F284 00000000 */  nop
/* 39A88 8007F288 45030057 */  bc1tl      .L8007F3E8
/* 39A8C 8007F28C 96320002 */   lhu       $s2, 0x2($s1)
/* 39A90 8007F290 C610000C */  lwc1       $f16, 0xC($s0)
/* 39A94 8007F294 C6120010 */  lwc1       $f18, 0x10($s0)
/* 39A98 8007F298 C6140014 */  lwc1       $f20, 0x14($s0)
/* 39A9C 8007F29C 46008202 */  mul.s      $f8, $f16, $f0
/* 39AA0 8007F2A0 00000000 */  nop
/* 39AA4 8007F2A4 46121282 */  mul.s      $f10, $f2, $f18
/* 39AA8 8007F2A8 460A4100 */  add.s      $f4, $f8, $f10
/* 39AAC 8007F2AC 46146182 */  mul.s      $f6, $f12, $f20
/* 39AB0 8007F2B0 46062380 */  add.s      $f14, $f4, $f6
/* 39AB4 8007F2B4 461C703C */  c.lt.s     $f14, $f28
/* 39AB8 8007F2B8 00000000 */  nop
/* 39ABC 8007F2BC 45010049 */  bc1t       .L8007F3E4
/* 39AC0 8007F2C0 00000000 */   nop
/* 39AC4 8007F2C4 460EF03C */  c.lt.s     $f30, $f14
/* 39AC8 8007F2C8 00000000 */  nop
/* 39ACC 8007F2CC 45030046 */  bc1tl      .L8007F3E8
/* 39AD0 8007F2D0 96320002 */   lhu       $s2, 0x2($s1)
/* 39AD4 8007F2D4 C476000C */  lwc1       $f22, 0xC($v1)
/* 39AD8 8007F2D8 C4780010 */  lwc1       $f24, 0x10($v1)
/* 39ADC 8007F2DC C47A0014 */  lwc1       $f26, 0x14($v1)
/* 39AE0 8007F2E0 4600B207 */  neg.s      $f8, $f22
/* 39AE4 8007F2E4 46104282 */  mul.s      $f10, $f8, $f16
/* 39AE8 8007F2E8 00000000 */  nop
/* 39AEC 8007F2EC 4612C102 */  mul.s      $f4, $f24, $f18
/* 39AF0 8007F2F0 46045181 */  sub.s      $f6, $f10, $f4
/* 39AF4 8007F2F4 4614D202 */  mul.s      $f8, $f26, $f20
/* 39AF8 8007F2F8 46083301 */  sub.s      $f12, $f6, $f8
/* 39AFC 8007F2FC 461C603E */  c.le.s     $f12, $f28
/* 39B00 8007F300 00000000 */  nop
/* 39B04 8007F304 45010037 */  bc1t       .L8007F3E4
/* 39B08 8007F308 00000000 */   nop
/* 39B0C 8007F30C C48A0C4C */  lwc1       $f10, 0xC4C($a0)
/* 39B10 8007F310 460C503C */  c.lt.s     $f10, $f12
/* 39B14 8007F314 00000000 */  nop
/* 39B18 8007F318 4500000C */  bc1f       .L8007F34C
/* 39B1C 8007F31C 00000000 */   nop
/* 39B20 8007F320 E48C0C4C */  swc1       $f12, 0xC4C($a0)
/* 39B24 8007F324 C604000C */  lwc1       $f4, 0xC($s0)
/* 39B28 8007F328 E48415B4 */  swc1       $f4, 0x15B4($a0)
/* 39B2C 8007F32C C6060010 */  lwc1       $f6, 0x10($s0)
/* 39B30 8007F330 E48615B8 */  swc1       $f6, 0x15B8($a0)
/* 39B34 8007F334 C6080014 */  lwc1       $f8, 0x14($s0)
/* 39B38 8007F338 E48815BC */  swc1       $f8, 0x15BC($a0)
/* 39B3C 8007F33C C47A0014 */  lwc1       $f26, 0x14($v1)
/* 39B40 8007F340 C4780010 */  lwc1       $f24, 0x10($v1)
/* 39B44 8007F344 C476000C */  lwc1       $f22, 0xC($v1)
/* 39B48 8007F348 C610000C */  lwc1       $f16, 0xC($s0)
.L8007F34C:
/* 39B4C 8007F34C 46106282 */  mul.s      $f10, $f12, $f16
/* 39B50 8007F350 460AB100 */  add.s      $f4, $f22, $f10
/* 39B54 8007F354 E464000C */  swc1       $f4, 0xC($v1)
/* 39B58 8007F358 C6060010 */  lwc1       $f6, 0x10($s0)
/* 39B5C 8007F35C 46066202 */  mul.s      $f8, $f12, $f6
/* 39B60 8007F360 4608C280 */  add.s      $f10, $f24, $f8
/* 39B64 8007F364 E46A0010 */  swc1       $f10, 0x10($v1)
/* 39B68 8007F368 C6040014 */  lwc1       $f4, 0x14($s0)
/* 39B6C 8007F36C 46046182 */  mul.s      $f6, $f12, $f4
/* 39B70 8007F370 4606D200 */  add.s      $f8, $f26, $f6
/* 39B74 8007F374 E4680014 */  swc1       $f8, 0x14($v1)
/* 39B78 8007F378 C60A000C */  lwc1       $f10, 0xC($s0)
/* 39B7C 8007F37C C6040010 */  lwc1       $f4, 0x10($s0)
/* 39B80 8007F380 8CA20030 */  lw         $v0, 0x30($a1)
/* 39B84 8007F384 460E5002 */  mul.s      $f0, $f10, $f14
/* 39B88 8007F388 C6060014 */  lwc1       $f6, 0x14($s0)
/* 39B8C 8007F38C 244E0180 */  addiu      $t6, $v0, 0x180
/* 39B90 8007F390 460E2082 */  mul.s      $f2, $f4, $f14
/* 39B94 8007F394 004E082B */  sltu       $at, $v0, $t6
/* 39B98 8007F398 00409025 */  or         $s2, $v0, $zero
/* 39B9C 8007F39C 460E3302 */  mul.s      $f12, $f6, $f14
/* 39BA0 8007F3A0 50200011 */  beql       $at, $zero, .L8007F3E8
/* 39BA4 8007F3A4 96320002 */   lhu       $s2, 0x2($s1)
/* 39BA8 8007F3A8 C6480000 */  lwc1       $f8, 0x0($s2)
.L8007F3AC:
/* 39BAC 8007F3AC C6440004 */  lwc1       $f4, 0x4($s2)
/* 39BB0 8007F3B0 26520020 */  addiu      $s2, $s2, 0x20
/* 39BB4 8007F3B4 46004280 */  add.s      $f10, $f8, $f0
/* 39BB8 8007F3B8 C648FFE8 */  lwc1       $f8, -0x18($s2)
/* 39BBC 8007F3BC 46022180 */  add.s      $f6, $f4, $f2
/* 39BC0 8007F3C0 E64AFFE0 */  swc1       $f10, -0x20($s2)
/* 39BC4 8007F3C4 460C4280 */  add.s      $f10, $f8, $f12
/* 39BC8 8007F3C8 E646FFE4 */  swc1       $f6, -0x1C($s2)
/* 39BCC 8007F3CC E64AFFE8 */  swc1       $f10, -0x18($s2)
/* 39BD0 8007F3D0 8CA20030 */  lw         $v0, 0x30($a1)
/* 39BD4 8007F3D4 24590180 */  addiu      $t9, $v0, 0x180
/* 39BD8 8007F3D8 0259082B */  sltu       $at, $s2, $t9
/* 39BDC 8007F3DC 5420FFF3 */  bnel       $at, $zero, .L8007F3AC
/* 39BE0 8007F3E0 C6480000 */   lwc1      $f8, 0x0($s2)
.L8007F3E4:
/* 39BE4 8007F3E4 96320002 */  lhu        $s2, 0x2($s1)
.L8007F3E8:
/* 39BE8 8007F3E8 26310002 */  addiu      $s1, $s1, 0x2
/* 39BEC 8007F3EC 5640FF71 */  bnel       $s2, $zero, .L8007F1B4
/* 39BF0 8007F3F0 8CCF0000 */   lw        $t7, 0x0($a2)
/* 39BF4 8007F3F4 00408025 */  or         $s0, $v0, $zero
.L8007F3F8:
/* 39BF8 8007F3F8 2463FFE0 */  addiu      $v1, $v1, -0x20
.L8007F3FC:
/* 39BFC 8007F3FC 0070082B */  sltu       $at, $v1, $s0
/* 39C00 8007F400 5020FF35 */  beql       $at, $zero, .L8007F0D8
/* 39C04 8007F404 C4640000 */   lwc1      $f4, 0x0($v1)
.L8007F408:
/* 39C08 8007F408 D7B40008 */  ldc1       $f20, 0x8($sp)
/* 39C0C 8007F40C D7B60010 */  ldc1       $f22, 0x10($sp)
/* 39C10 8007F410 D7B80018 */  ldc1       $f24, 0x18($sp)
/* 39C14 8007F414 D7BA0020 */  ldc1       $f26, 0x20($sp)
/* 39C18 8007F418 D7BC0028 */  ldc1       $f28, 0x28($sp)
/* 39C1C 8007F41C D7BE0030 */  ldc1       $f30, 0x30($sp)
/* 39C20 8007F420 8FB00038 */  lw         $s0, 0x38($sp)
/* 39C24 8007F424 8FB1003C */  lw         $s1, 0x3C($sp)
/* 39C28 8007F428 8FB20040 */  lw         $s2, 0x40($sp)
/* 39C2C 8007F42C 8FB30044 */  lw         $s3, 0x44($sp)
/* 39C30 8007F430 8FB40048 */  lw         $s4, 0x48($sp)
/* 39C34 8007F434 8FB5004C */  lw         $s5, 0x4C($sp)
/* 39C38 8007F438 8FB60050 */  lw         $s6, 0x50($sp)
/* 39C3C 8007F43C 8FB70054 */  lw         $s7, 0x54($sp)
/* 39C40 8007F440 03E00008 */  jr         $ra
/* 39C44 8007F444 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_8007F448
/* 39C48 8007F448 4600610D */  trunc.w.s  $f4, $f12
/* 39C4C 8007F44C 3C18801C */  lui        $t8, %hi(D_801C3B44)
/* 39C50 8007F450 8F183B44 */  lw         $t8, %lo(D_801C3B44)($t8)
/* 39C54 8007F454 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 39C58 8007F458 440F2000 */  mfc1       $t7, $f4
/* 39C5C 8007F45C F7B40008 */  sdc1       $f20, 0x8($sp)
/* 39C60 8007F460 4486A000 */  mtc1       $a2, $f20
/* 39C64 8007F464 01F81023 */  subu       $v0, $t7, $t8
/* 39C68 8007F468 F7BA0020 */  sdc1       $f26, 0x20($sp)
/* 39C6C 8007F46C F7B80018 */  sdc1       $f24, 0x18($sp)
/* 39C70 8007F470 04400006 */  bltz       $v0, .L8007F48C
/* 39C74 8007F474 F7B60010 */   sdc1      $f22, 0x10($sp)
/* 39C78 8007F478 3C19801C */  lui        $t9, %hi(D_801C3B4C)
/* 39C7C 8007F47C 8F393B4C */  lw         $t9, %lo(D_801C3B4C)($t9)
/* 39C80 8007F480 0059082A */  slt        $at, $v0, $t9
/* 39C84 8007F484 54200005 */  bnel       $at, $zero, .L8007F49C
/* 39C88 8007F488 4600A18D */   trunc.w.s $f6, $f20
.L8007F48C:
/* 39C8C 8007F48C 44800000 */  mtc1       $zero, $f0
/* 39C90 8007F490 10000094 */  b          .L8007F6E4
/* 39C94 8007F494 D7B40008 */   ldc1      $f20, 0x8($sp)
/* 39C98 8007F498 4600A18D */  trunc.w.s  $f6, $f20
.L8007F49C:
/* 39C9C 8007F49C 3C0A801C */  lui        $t2, %hi(D_801C3B50)
/* 39CA0 8007F4A0 8D4A3B50 */  lw         $t2, %lo(D_801C3B50)($t2)
/* 39CA4 8007F4A4 3C0B801C */  lui        $t3, %hi(D_801C3B58)
/* 39CA8 8007F4A8 44093000 */  mfc1       $t1, $f6
/* 39CAC 8007F4AC 00000000 */  nop
/* 39CB0 8007F4B0 012A1823 */  subu       $v1, $t1, $t2
/* 39CB4 8007F4B4 04620007 */  bltzl      $v1, .L8007F4D4
/* 39CB8 8007F4B8 44800000 */   mtc1      $zero, $f0
/* 39CBC 8007F4BC 8D6B3B58 */  lw         $t3, %lo(D_801C3B58)($t3)
/* 39CC0 8007F4C0 3C0C801C */  lui        $t4, %hi(D_801C3B40)
/* 39CC4 8007F4C4 006B082A */  slt        $at, $v1, $t3
/* 39CC8 8007F4C8 14200004 */  bnez       $at, .L8007F4DC
/* 39CCC 8007F4CC 00000000 */   nop
/* 39CD0 8007F4D0 44800000 */  mtc1       $zero, $f0
.L8007F4D4:
/* 39CD4 8007F4D4 10000083 */  b          .L8007F6E4
/* 39CD8 8007F4D8 D7B40008 */   ldc1      $f20, 0x8($sp)
.L8007F4DC:
/* 39CDC 8007F4DC 858C3B40 */  lh         $t4, %lo(D_801C3B40)($t4)
/* 39CE0 8007F4E0 3C0E801C */  lui        $t6, %hi(D_801C3B60)
/* 39CE4 8007F4E4 3C19801C */  lui        $t9, %hi(D_801C3B70)
/* 39CE8 8007F4E8 11800010 */  beqz       $t4, .L8007F52C
/* 39CEC 8007F4EC 3C0B801C */   lui       $t3, %hi(D_801C3B7C)
/* 39CF0 8007F4F0 3C0D801C */  lui        $t5, %hi(D_801C3B70)
/* 39CF4 8007F4F4 8DAD3B70 */  lw         $t5, %lo(D_801C3B70)($t5)
/* 39CF8 8007F4F8 3C0F801C */  lui        $t7, %hi(D_801C3B68)
/* 39CFC 8007F4FC 3C19801C */  lui        $t9, %hi(D_801C3B78)
/* 39D00 8007F500 8F393B78 */  lw         $t9, %lo(D_801C3B78)($t9)
/* 39D04 8007F504 8DEF3B68 */  lw         $t7, %lo(D_801C3B68)($t7)
/* 39D08 8007F508 01A27007 */  srav       $t6, $v0, $t5
/* 39D0C 8007F50C 3C0B801C */  lui        $t3, %hi(D_801C3B7C)
/* 39D10 8007F510 03234007 */  srav       $t0, $v1, $t9
/* 39D14 8007F514 01EEC004 */  sllv       $t8, $t6, $t7
/* 39D18 8007F518 8D6B3B7C */  lw         $t3, %lo(D_801C3B7C)($t3)
/* 39D1C 8007F51C 01184825 */  or         $t1, $t0, $t8
/* 39D20 8007F520 00095040 */  sll        $t2, $t1, 1
/* 39D24 8007F524 1000000C */  b          .L8007F558
/* 39D28 8007F528 016A2021 */   addu      $a0, $t3, $t2
.L8007F52C:
/* 39D2C 8007F52C 3C0C801C */  lui        $t4, %hi(D_801C3B78)
/* 39D30 8007F530 8D8C3B78 */  lw         $t4, %lo(D_801C3B78)($t4)
/* 39D34 8007F534 8DCE3B60 */  lw         $t6, %lo(D_801C3B60)($t6)
/* 39D38 8007F538 8F393B70 */  lw         $t9, %lo(D_801C3B70)($t9)
/* 39D3C 8007F53C 01836807 */  srav       $t5, $v1, $t4
/* 39D40 8007F540 8D6B3B7C */  lw         $t3, %lo(D_801C3B7C)($t3)
/* 39D44 8007F544 01CD7804 */  sllv       $t7, $t5, $t6
/* 39D48 8007F548 03224007 */  srav       $t0, $v0, $t9
/* 39D4C 8007F54C 010FC025 */  or         $t8, $t0, $t7
/* 39D50 8007F550 00184840 */  sll        $t1, $t8, 1
/* 39D54 8007F554 01692021 */  addu       $a0, $t3, $t1
.L8007F558:
/* 39D58 8007F558 948A0000 */  lhu        $t2, 0x0($a0)
/* 39D5C 8007F55C 3C0D801C */  lui        $t5, %hi(D_801C3B80)
/* 39D60 8007F560 8DAD3B80 */  lw         $t5, %lo(D_801C3B80)($t5)
/* 39D64 8007F564 000A6040 */  sll        $t4, $t2, 1
/* 39D68 8007F568 3C05801C */  lui        $a1, %hi(D_801C3B84)
/* 39D6C 8007F56C 018D1021 */  addu       $v0, $t4, $t5
/* 39D70 8007F570 94430002 */  lhu        $v1, 0x2($v0)
/* 39D74 8007F574 24420002 */  addiu      $v0, $v0, 0x2
/* 39D78 8007F578 3C014180 */  lui        $at, (0x41800000 >> 16)
/* 39D7C 8007F57C 50600057 */  beql       $v1, $zero, .L8007F6DC
/* 39D80 8007F580 44800000 */   mtc1      $zero, $f0
/* 39D84 8007F584 4481D000 */  mtc1       $at, $f26
/* 39D88 8007F588 4480C000 */  mtc1       $zero, $f24
/* 39D8C 8007F58C 8CA53B84 */  lw         $a1, %lo(D_801C3B84)($a1)
/* 39D90 8007F590 2463FFFF */  addiu      $v1, $v1, -0x1
.L8007F594:
/* 39D94 8007F594 00037180 */  sll        $t6, $v1, 6
/* 39D98 8007F598 01C52021 */  addu       $a0, $t6, $a1
/* 39D9C 8007F59C C4880000 */  lwc1       $f8, 0x0($a0)
/* 39DA0 8007F5A0 C48A0004 */  lwc1       $f10, 0x4($a0)
/* 39DA4 8007F5A4 C4860018 */  lwc1       $f6, 0x18($a0)
/* 39DA8 8007F5A8 460C4001 */  sub.s      $f0, $f8, $f12
/* 39DAC 8007F5AC C4840008 */  lwc1       $f4, 0x8($a0)
/* 39DB0 8007F5B0 460E5081 */  sub.s      $f2, $f10, $f14
/* 39DB4 8007F5B4 46003202 */  mul.s      $f8, $f6, $f0
/* 39DB8 8007F5B8 C48A001C */  lwc1       $f10, 0x1C($a0)
/* 39DBC 8007F5BC 46142401 */  sub.s      $f16, $f4, $f20
/* 39DC0 8007F5C0 460A1102 */  mul.s      $f4, $f2, $f10
/* 39DC4 8007F5C4 C48A0020 */  lwc1       $f10, 0x20($a0)
/* 39DC8 8007F5C8 46044180 */  add.s      $f6, $f8, $f4
/* 39DCC 8007F5CC 460A8202 */  mul.s      $f8, $f16, $f10
/* 39DD0 8007F5D0 46083100 */  add.s      $f4, $f6, $f8
/* 39DD4 8007F5D4 4618203C */  c.lt.s     $f4, $f24
/* 39DD8 8007F5D8 00000000 */  nop
/* 39DDC 8007F5DC 4503003B */  bc1tl      .L8007F6CC
/* 39DE0 8007F5E0 94430002 */   lhu       $v1, 0x2($v0)
/* 39DE4 8007F5E4 C48A0024 */  lwc1       $f10, 0x24($a0)
/* 39DE8 8007F5E8 C4880028 */  lwc1       $f8, 0x28($a0)
/* 39DEC 8007F5EC 46005182 */  mul.s      $f6, $f10, $f0
/* 39DF0 8007F5F0 00000000 */  nop
/* 39DF4 8007F5F4 46081102 */  mul.s      $f4, $f2, $f8
/* 39DF8 8007F5F8 C488002C */  lwc1       $f8, 0x2C($a0)
/* 39DFC 8007F5FC 46043280 */  add.s      $f10, $f6, $f4
/* 39E00 8007F600 46088182 */  mul.s      $f6, $f16, $f8
/* 39E04 8007F604 46065100 */  add.s      $f4, $f10, $f6
/* 39E08 8007F608 4618203C */  c.lt.s     $f4, $f24
/* 39E0C 8007F60C 00000000 */  nop
/* 39E10 8007F610 4501002D */  bc1t       .L8007F6C8
/* 39E14 8007F614 00000000 */   nop
/* 39E18 8007F618 C4880030 */  lwc1       $f8, 0x30($a0)
/* 39E1C 8007F61C C4860034 */  lwc1       $f6, 0x34($a0)
/* 39E20 8007F620 46004282 */  mul.s      $f10, $f8, $f0
/* 39E24 8007F624 00000000 */  nop
/* 39E28 8007F628 46061102 */  mul.s      $f4, $f2, $f6
/* 39E2C 8007F62C C4860038 */  lwc1       $f6, 0x38($a0)
/* 39E30 8007F630 46045200 */  add.s      $f8, $f10, $f4
/* 39E34 8007F634 46068282 */  mul.s      $f10, $f16, $f6
/* 39E38 8007F638 460A4480 */  add.s      $f18, $f8, $f10
/* 39E3C 8007F63C 4612C03E */  c.le.s     $f24, $f18
/* 39E40 8007F640 00000000 */  nop
/* 39E44 8007F644 45010020 */  bc1t       .L8007F6C8
/* 39E48 8007F648 00000000 */   nop
/* 39E4C 8007F64C C484003C */  lwc1       $f4, 0x3C($a0)
/* 39E50 8007F650 4604903C */  c.lt.s     $f18, $f4
/* 39E54 8007F654 00000000 */  nop
/* 39E58 8007F658 4503001C */  bc1tl      .L8007F6CC
/* 39E5C 8007F65C 94430002 */   lhu       $v1, 0x2($v0)
/* 39E60 8007F660 C496000C */  lwc1       $f22, 0xC($a0)
/* 39E64 8007F664 C4880010 */  lwc1       $f8, 0x10($a0)
/* 39E68 8007F668 4600B182 */  mul.s      $f6, $f22, $f0
/* 39E6C 8007F66C 00000000 */  nop
/* 39E70 8007F670 46081282 */  mul.s      $f10, $f2, $f8
/* 39E74 8007F674 C4880014 */  lwc1       $f8, 0x14($a0)
/* 39E78 8007F678 460A3100 */  add.s      $f4, $f6, $f10
/* 39E7C 8007F67C 46088182 */  mul.s      $f6, $f16, $f8
/* 39E80 8007F680 46062480 */  add.s      $f18, $f4, $f6
/* 39E84 8007F684 4618903C */  c.lt.s     $f18, $f24
/* 39E88 8007F688 00000000 */  nop
/* 39E8C 8007F68C 4501000E */  bc1t       .L8007F6C8
/* 39E90 8007F690 00000000 */   nop
/* 39E94 8007F694 4612D03C */  c.lt.s     $f26, $f18
/* 39E98 8007F698 00000000 */  nop
/* 39E9C 8007F69C 4503000B */  bc1tl      .L8007F6CC
/* 39EA0 8007F6A0 94430002 */   lhu       $v1, 0x2($v0)
/* 39EA4 8007F6A4 E4F60000 */  swc1       $f22, 0x0($a3)
/* 39EA8 8007F6A8 8FB90038 */  lw         $t9, 0x38($sp)
/* 39EAC 8007F6AC C48A0010 */  lwc1       $f10, 0x10($a0)
/* 39EB0 8007F6B0 46009006 */  mov.s      $f0, $f18
/* 39EB4 8007F6B4 E72A0000 */  swc1       $f10, 0x0($t9)
/* 39EB8 8007F6B8 8FA8003C */  lw         $t0, 0x3C($sp)
/* 39EBC 8007F6BC C4880014 */  lwc1       $f8, 0x14($a0)
/* 39EC0 8007F6C0 10000007 */  b          .L8007F6E0
/* 39EC4 8007F6C4 E5080000 */   swc1      $f8, 0x0($t0)
.L8007F6C8:
/* 39EC8 8007F6C8 94430002 */  lhu        $v1, 0x2($v0)
.L8007F6CC:
/* 39ECC 8007F6CC 24420002 */  addiu      $v0, $v0, 0x2
/* 39ED0 8007F6D0 5460FFB0 */  bnel       $v1, $zero, .L8007F594
/* 39ED4 8007F6D4 2463FFFF */   addiu     $v1, $v1, -0x1
/* 39ED8 8007F6D8 44800000 */  mtc1       $zero, $f0
.L8007F6DC:
/* 39EDC 8007F6DC 00000000 */  nop
.L8007F6E0:
/* 39EE0 8007F6E0 D7B40008 */  ldc1       $f20, 0x8($sp)
.L8007F6E4:
/* 39EE4 8007F6E4 D7B60010 */  ldc1       $f22, 0x10($sp)
/* 39EE8 8007F6E8 D7B80018 */  ldc1       $f24, 0x18($sp)
/* 39EEC 8007F6EC D7BA0020 */  ldc1       $f26, 0x20($sp)
/* 39EF0 8007F6F0 03E00008 */  jr         $ra
/* 39EF4 8007F6F4 27BD0028 */   addiu     $sp, $sp, 0x28
/* 39EF8 8007F6F8 00000000 */  nop
/* 39EFC 8007F6FC 00000000 */  nop
