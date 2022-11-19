.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800BA580
/* 74D80 800BA580 AFA60008 */  sw         $a2, 0x8($sp)
/* 74D84 800BA584 AFA7000C */  sw         $a3, 0xC($sp)
/* 74D88 800BA588 8C9900B0 */  lw         $t9, 0xB0($a0)
/* 74D8C 800BA58C 00C07825 */  or         $t7, $a2, $zero
/* 74D90 800BA590 44856000 */  mtc1       $a1, $f12
/* 74D94 800BA594 31F8007F */  andi       $t8, $t7, 0x7F
/* 74D98 800BA598 00194980 */  sll        $t1, $t9, 6
/* 74D9C 800BA59C 05210026 */  bgez       $t1, .L800BA638
/* 74DA0 800BA5A0 03003025 */   or        $a2, $t8, $zero
/* 74DA4 800BA5A4 3C0A8004 */  lui        $t2, %hi(D_8004554E)
/* 74DA8 800BA5A8 814A554E */  lb         $t2, %lo(D_8004554E)($t2)
/* 74DAC 800BA5AC 24010001 */  addiu      $at, $zero, 0x1
/* 74DB0 800BA5B0 001828C3 */  sra        $a1, $t8, 3
/* 74DB4 800BA5B4 15410020 */  bne        $t2, $at, .L800BA638
/* 74DB8 800BA5B8 248200B0 */   addiu     $v0, $a0, 0xB0
/* 74DBC 800BA5BC 28A10010 */  slti       $at, $a1, 0x10
/* 74DC0 800BA5C0 14200002 */  bnez       $at, .L800BA5CC
/* 74DC4 800BA5C4 03001825 */   or        $v1, $t8, $zero
/* 74DC8 800BA5C8 2405000F */  addiu      $a1, $zero, 0xF
.L800BA5CC:
/* 74DCC 800BA5CC 00053840 */  sll        $a3, $a1, 1
/* 74DD0 800BA5D0 3C0B800F */  lui        $t3, %hi(D_800EDC4C)
/* 74DD4 800BA5D4 01675821 */  addu       $t3, $t3, $a3
/* 74DD8 800BA5D8 956BDC4C */  lhu        $t3, %lo(D_800EDC4C)($t3)
/* 74DDC 800BA5DC 904E0000 */  lbu        $t6, 0x0($v0)
/* 74DE0 800BA5E0 00076023 */  negu       $t4, $a3
/* 74DE4 800BA5E4 3C0D800F */  lui        $t5, %hi(D_800EDC6A)
/* 74DE8 800BA5E8 01AC6821 */  addu       $t5, $t5, $t4
/* 74DEC 800BA5EC A04B0004 */  sb         $t3, 0x4($v0)
/* 74DF0 800BA5F0 95ADDC6A */  lhu        $t5, %lo(D_800EDC6A)($t5)
/* 74DF4 800BA5F4 31D8FFF7 */  andi       $t8, $t6, 0xFFF7
/* 74DF8 800BA5F8 330900FB */  andi       $t1, $t8, 0xFB
/* 74DFC 800BA5FC A0580000 */  sb         $t8, 0x0($v0)
/* 74E00 800BA600 A0490000 */  sb         $t1, 0x0($v0)
/* 74E04 800BA604 352A0001 */  ori        $t2, $t1, 0x1
/* 74E08 800BA608 00065880 */  sll        $t3, $a2, 2
/* 74E0C 800BA60C 3C01800F */  lui        $at, %hi(D_800EDCF0)
/* 74E10 800BA610 A04A0000 */  sb         $t2, 0x0($v0)
/* 74E14 800BA614 002B0821 */  addu       $at, $at, $t3
/* 74E18 800BA618 A04D0003 */  sb         $t5, 0x3($v0)
/* 74E1C 800BA61C C420DCF0 */  lwc1       $f0, %lo(D_800EDCF0)($at)
/* 74E20 800BA620 00036080 */  sll        $t4, $v1, 2
/* 74E24 800BA624 000C6823 */  negu       $t5, $t4
/* 74E28 800BA628 3C01800F */  lui        $at, %hi(D_800EDEEC)
/* 74E2C 800BA62C 002D0821 */  addu       $at, $at, $t5
/* 74E30 800BA630 1000003C */  b          .L800BA724
/* 74E34 800BA634 C422DEEC */   lwc1      $f2, %lo(D_800EDEEC)($at)
.L800BA638:
/* 74E38 800BA638 248200B0 */  addiu      $v0, $a0, 0xB0
/* 74E3C 800BA63C 8C4E0000 */  lw         $t6, 0x0($v0)
/* 74E40 800BA640 3C038004 */  lui        $v1, %hi(D_8004554E)
/* 74E44 800BA644 8063554E */  lb         $v1, %lo(D_8004554E)($v1)
/* 74E48 800BA648 000EC180 */  sll        $t8, $t6, 6
/* 74E4C 800BA64C 07010027 */  bgez       $t8, .L800BA6EC
/* 74E50 800BA650 24010003 */   addiu     $at, $zero, 0x3
/* 74E54 800BA654 14600025 */  bnez       $v1, .L800BA6EC
/* 74E58 800BA658 00002025 */   or        $a0, $zero, $zero
/* 74E5C 800BA65C 90590000 */  lbu        $t9, 0x0($v0)
/* 74E60 800BA660 00064880 */  sll        $t1, $a2, 2
/* 74E64 800BA664 3C01800F */  lui        $at, %hi(D_800EDEF0)
/* 74E68 800BA668 3328FFFE */  andi       $t0, $t9, 0xFFFE
/* 74E6C 800BA66C A0400004 */  sb         $zero, 0x4($v0)
/* 74E70 800BA670 A0400003 */  sb         $zero, 0x3($v0)
/* 74E74 800BA674 A0480000 */  sb         $t0, 0x0($v0)
/* 74E78 800BA678 00290821 */  addu       $at, $at, $t1
/* 74E7C 800BA67C C420DEF0 */  lwc1       $f0, %lo(D_800EDEF0)($at)
/* 74E80 800BA680 00065080 */  sll        $t2, $a2, 2
/* 74E84 800BA684 000A5823 */  negu       $t3, $t2
/* 74E88 800BA688 3C01800F */  lui        $at, %hi(D_800EE0EC)
/* 74E8C 800BA68C 002B0821 */  addu       $at, $at, $t3
/* 74E90 800BA690 C422E0EC */  lwc1       $f2, %lo(D_800EE0EC)($at)
/* 74E94 800BA694 28C10020 */  slti       $at, $a2, 0x20
/* 74E98 800BA698 00002825 */  or         $a1, $zero, $zero
/* 74E9C 800BA69C 10200003 */  beqz       $at, .L800BA6AC
/* 74EA0 800BA6A0 00C01825 */   or        $v1, $a2, $zero
/* 74EA4 800BA6A4 10000005 */  b          .L800BA6BC
/* 74EA8 800BA6A8 24040001 */   addiu     $a0, $zero, 0x1
.L800BA6AC:
/* 74EAC 800BA6AC 28610061 */  slti       $at, $v1, 0x61
/* 74EB0 800BA6B0 54200003 */  bnel       $at, $zero, .L800BA6C0
/* 74EB4 800BA6B4 904F0000 */   lbu       $t7, 0x0($v0)
/* 74EB8 800BA6B8 24050001 */  addiu      $a1, $zero, 0x1
.L800BA6BC:
/* 74EBC 800BA6BC 904F0000 */  lbu        $t7, 0x0($v0)
.L800BA6C0:
/* 74EC0 800BA6C0 000568C0 */  sll        $t5, $a1, 3
/* 74EC4 800BA6C4 31AE0008 */  andi       $t6, $t5, 0x8
/* 74EC8 800BA6C8 31F8FFF7 */  andi       $t8, $t7, 0xFFF7
/* 74ECC 800BA6CC 01D85825 */  or         $t3, $t6, $t8
/* 74ED0 800BA6D0 00044880 */  sll        $t1, $a0, 2
/* 74ED4 800BA6D4 312A0004 */  andi       $t2, $t1, 0x4
/* 74ED8 800BA6D8 316C00FB */  andi       $t4, $t3, 0xFB
/* 74EDC 800BA6DC A04B0000 */  sb         $t3, 0x0($v0)
/* 74EE0 800BA6E0 014C6825 */  or         $t5, $t2, $t4
/* 74EE4 800BA6E4 1000000F */  b          .L800BA724
/* 74EE8 800BA6E8 A04D0000 */   sb        $t5, 0x0($v0)
.L800BA6EC:
/* 74EEC 800BA6EC 14610005 */  bne        $v1, $at, .L800BA704
/* 74EF0 800BA6F0 00067880 */   sll       $t7, $a2, 2
/* 74EF4 800BA6F4 3C01800F */  lui        $at, %hi(D_800EBC60)
/* 74EF8 800BA6F8 C422BC60 */  lwc1       $f2, %lo(D_800EBC60)($at)
/* 74EFC 800BA6FC 10000009 */  b          .L800BA724
/* 74F00 800BA700 46001006 */   mov.s     $f0, $f2
.L800BA704:
/* 74F04 800BA704 3C01800F */  lui        $at, %hi(D_800EE0F0)
/* 74F08 800BA708 002F0821 */  addu       $at, $at, $t7
/* 74F0C 800BA70C C420E0F0 */  lwc1       $f0, %lo(D_800EE0F0)($at)
/* 74F10 800BA710 00067080 */  sll        $t6, $a2, 2
/* 74F14 800BA714 000EC023 */  negu       $t8, $t6
/* 74F18 800BA718 3C01800F */  lui        $at, %hi(D_800EE2EC)
/* 74F1C 800BA71C 00380821 */  addu       $at, $at, $t8
/* 74F20 800BA720 C422E2EC */  lwc1       $f2, %lo(D_800EE2EC)($at)
.L800BA724:
/* 74F24 800BA724 44807000 */  mtc1       $zero, $f14
/* 74F28 800BA728 3C01800F */  lui        $at, %hi(D_800EBC64)
/* 74F2C 800BA72C 460E603C */  c.lt.s     $f12, $f14
/* 74F30 800BA730 00000000 */  nop
/* 74F34 800BA734 45000002 */  bc1f       .L800BA740
/* 74F38 800BA738 00000000 */   nop
/* 74F3C 800BA73C 46007306 */  mov.s      $f12, $f14
.L800BA740:
/* 74F40 800BA740 C42EBC64 */  lwc1       $f14, %lo(D_800EBC64)($at)
/* 74F44 800BA744 460C703C */  c.lt.s     $f14, $f12
/* 74F48 800BA748 00000000 */  nop
/* 74F4C 800BA74C 45000002 */  bc1f       .L800BA758
/* 74F50 800BA750 00000000 */   nop
/* 74F54 800BA754 46007306 */  mov.s      $f12, $f14
.L800BA758:
/* 74F58 800BA758 46006102 */  mul.s      $f4, $f12, $f0
/* 74F5C 800BA75C 90580005 */  lbu        $t8, 0x5($v0)
/* 74F60 800BA760 46026202 */  mul.s      $f8, $f12, $f2
/* 74F64 800BA764 4600218D */  trunc.w.s  $f6, $f4
/* 74F68 800BA768 4600428D */  trunc.w.s  $f10, $f8
/* 74F6C 800BA76C 44083000 */  mfc1       $t0, $f6
/* 74F70 800BA770 440C5000 */  mfc1       $t4, $f10
/* 74F74 800BA774 3109FFFF */  andi       $t1, $t0, 0xFFFF
/* 74F78 800BA778 00095943 */  sra        $t3, $t1, 5
/* 74F7C 800BA77C 318DFFFF */  andi       $t5, $t4, 0xFFFF
/* 74F80 800BA780 000D7943 */  sra        $t7, $t5, 5
/* 74F84 800BA784 A44B0006 */  sh         $t3, 0x6($v0)
/* 74F88 800BA788 A44F0008 */  sh         $t7, 0x8($v0)
/* 74F8C 800BA78C 93AE000F */  lbu        $t6, 0xF($sp)
/* 74F90 800BA790 51D80007 */  beql       $t6, $t8, .L800BA7B0
/* 74F94 800BA794 8C4B0000 */   lw        $t3, 0x0($v0)
/* 74F98 800BA798 90480000 */  lbu        $t0, 0x0($v0)
/* 74F9C 800BA79C A04E0005 */  sb         $t6, 0x5($v0)
/* 74FA0 800BA7A0 35090010 */  ori        $t1, $t0, 0x10
/* 74FA4 800BA7A4 03E00008 */  jr         $ra
/* 74FA8 800BA7A8 A0490000 */   sb        $t1, 0x0($v0)
/* 74FAC 800BA7AC 8C4B0000 */  lw         $t3, 0x0($v0)
.L800BA7B0:
/* 74FB0 800BA7B0 000B6040 */  sll        $t4, $t3, 1
/* 74FB4 800BA7B4 05830006 */  bgezl      $t4, .L800BA7D0
/* 74FB8 800BA7B8 904E0000 */   lbu       $t6, 0x0($v0)
/* 74FBC 800BA7BC 904F0000 */  lbu        $t7, 0x0($v0)
/* 74FC0 800BA7C0 35F80010 */  ori        $t8, $t7, 0x10
/* 74FC4 800BA7C4 03E00008 */  jr         $ra
/* 74FC8 800BA7C8 A0580000 */   sb        $t8, 0x0($v0)
/* 74FCC 800BA7CC 904E0000 */  lbu        $t6, 0x0($v0)
.L800BA7D0:
/* 74FD0 800BA7D0 31D9FFEF */  andi       $t9, $t6, 0xFFEF
/* 74FD4 800BA7D4 A0590000 */  sb         $t9, 0x0($v0)
/* 74FD8 800BA7D8 03E00008 */  jr         $ra
/* 74FDC 800BA7DC 00000000 */   nop

glabel func_800BA7E0
/* 74FE0 800BA7E0 44856000 */  mtc1       $a1, $f12
/* 74FE4 800BA7E4 44800000 */  mtc1       $zero, $f0
/* 74FE8 800BA7E8 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 74FEC 800BA7EC 44812000 */  mtc1       $at, $f4
/* 74FF0 800BA7F0 4600603C */  c.lt.s     $f12, $f0
/* 74FF4 800BA7F4 3C01800F */  lui        $at, %hi(D_800EBC68)
/* 74FF8 800BA7F8 248200B0 */  addiu      $v0, $a0, 0xB0
/* 74FFC 800BA7FC 45020003 */  bc1fl      .L800BA80C
/* 75000 800BA800 4604603C */   c.lt.s    $f12, $f4
/* 75004 800BA804 46000306 */  mov.s      $f12, $f0
/* 75008 800BA808 4604603C */  c.lt.s     $f12, $f4
.L800BA80C:
/* 7500C 800BA80C 00000000 */  nop
/* 75010 800BA810 4502000E */  bc1fl      .L800BA84C
/* 75014 800BA814 90590001 */   lbu       $t9, 0x1($v0)
/* 75018 800BA818 C422BC68 */  lwc1       $f2, %lo(D_800EBC68)($at)
/* 7501C 800BA81C 248200B0 */  addiu      $v0, $a0, 0xB0
/* 75020 800BA820 904E0001 */  lbu        $t6, 0x1($v0)
/* 75024 800BA824 460C103C */  c.lt.s     $f2, $f12
/* 75028 800BA828 31CFFFFE */  andi       $t7, $t6, 0xFFFE
/* 7502C 800BA82C A04F0001 */  sb         $t7, 0x1($v0)
/* 75030 800BA830 45000003 */  bc1f       .L800BA840
/* 75034 800BA834 00000000 */   nop
/* 75038 800BA838 10000014 */  b          .L800BA88C
/* 7503C 800BA83C 46001006 */   mov.s     $f0, $f2
.L800BA840:
/* 75040 800BA840 10000012 */  b          .L800BA88C
/* 75044 800BA844 46006006 */   mov.s     $f0, $f12
/* 75048 800BA848 90590001 */  lbu        $t9, 0x1($v0)
.L800BA84C:
/* 7504C 800BA84C 3C01800F */  lui        $at, %hi(D_800EBC6C)
/* 75050 800BA850 37280001 */  ori        $t0, $t9, 0x1
/* 75054 800BA854 A0480001 */  sb         $t0, 0x1($v0)
/* 75058 800BA858 C426BC6C */  lwc1       $f6, %lo(D_800EBC6C)($at)
/* 7505C 800BA85C 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 75060 800BA860 460C303C */  c.lt.s     $f6, $f12
/* 75064 800BA864 00000000 */  nop
/* 75068 800BA868 45020005 */  bc1fl      .L800BA880
/* 7506C 800BA86C 44814000 */   mtc1      $at, $f8
/* 75070 800BA870 3C01800F */  lui        $at, %hi(D_800EBC70)
/* 75074 800BA874 10000005 */  b          .L800BA88C
/* 75078 800BA878 C420BC70 */   lwc1      $f0, %lo(D_800EBC70)($at)
/* 7507C 800BA87C 44814000 */  mtc1       $at, $f8
.L800BA880:
/* 75080 800BA880 00000000 */  nop
/* 75084 800BA884 46086002 */  mul.s      $f0, $f12, $f8
/* 75088 800BA888 00000000 */  nop
.L800BA88C:
/* 7508C 800BA88C 3C014700 */  lui        $at, (0x47000000 >> 16)
/* 75090 800BA890 44815000 */  mtc1       $at, $f10
/* 75094 800BA894 00000000 */  nop
/* 75098 800BA898 460A0402 */  mul.s      $f16, $f0, $f10
/* 7509C 800BA89C 4600848D */  trunc.w.s  $f18, $f16
/* 750A0 800BA8A0 440A9000 */  mfc1       $t2, $f18
/* 750A4 800BA8A4 03E00008 */  jr         $ra
/* 750A8 800BA8A8 A48A00BA */   sh        $t2, 0xBA($a0)

glabel func_800BA8AC
/* 750AC 800BA8AC 908E0001 */  lbu        $t6, 0x1($a0)
/* 750B0 800BA8B0 00AE082A */  slt        $at, $a1, $t6
/* 750B4 800BA8B4 50200004 */  beql       $at, $zero, .L800BA8C8
/* 750B8 800BA8B8 908F0002 */   lbu       $t7, 0x2($a0)
/* 750BC 800BA8BC 03E00008 */  jr         $ra
/* 750C0 800BA8C0 24820008 */   addiu     $v0, $a0, 0x8
/* 750C4 800BA8C4 908F0002 */  lbu        $t7, 0x2($a0)
.L800BA8C8:
/* 750C8 800BA8C8 24830018 */  addiu      $v1, $a0, 0x18
/* 750CC 800BA8CC 01E5082A */  slt        $at, $t7, $a1
/* 750D0 800BA8D0 14200003 */  bnez       $at, .L800BA8E0
/* 750D4 800BA8D4 00000000 */   nop
/* 750D8 800BA8D8 03E00008 */  jr         $ra
/* 750DC 800BA8DC 24820010 */   addiu     $v0, $a0, 0x10
.L800BA8E0:
/* 750E0 800BA8E0 03E00008 */  jr         $ra
/* 750E4 800BA8E4 00601025 */   or        $v0, $v1, $zero

glabel func_800BA8E8
/* 750E8 800BA8E8 3C0E8004 */  lui        $t6, %hi(D_8003EB78)
/* 750EC 800BA8EC 01C47021 */  addu       $t6, $t6, $a0
/* 750F0 800BA8F0 91CEEB78 */  lbu        $t6, %lo(D_8003EB78)($t6)
/* 750F4 800BA8F4 3C011000 */  lui        $at, (0x10000000 >> 16)
/* 750F8 800BA8F8 3C198004 */  lui        $t9, %hi(D_80045518)
/* 750FC 800BA8FC 29CF0002 */  slti       $t7, $t6, 0x2
/* 75100 800BA900 11E00006 */  beqz       $t7, .L800BA91C
/* 75104 800BA904 00044080 */   sll       $t0, $a0, 2
/* 75108 800BA908 0081C021 */  addu       $t8, $a0, $at
/* 7510C 800BA90C 3C018004 */  lui        $at, %hi(D_80045630)
/* 75110 800BA910 AC385630 */  sw         $t8, %lo(D_80045630)($at)
/* 75114 800BA914 03E00008 */  jr         $ra
/* 75118 800BA918 00001025 */   or        $v0, $zero, $zero
.L800BA91C:
/* 7511C 800BA91C 8F395518 */  lw         $t9, %lo(D_80045518)($t9)
/* 75120 800BA920 01044023 */  subu       $t0, $t0, $a0
/* 75124 800BA924 00084080 */  sll        $t0, $t0, 2
/* 75128 800BA928 03281021 */  addu       $v0, $t9, $t0
/* 7512C 800BA92C 90490001 */  lbu        $t1, 0x1($v0)
/* 75130 800BA930 00045200 */  sll        $t2, $a0, 8
/* 75134 800BA934 01455821 */  addu       $t3, $t2, $a1
/* 75138 800BA938 00A9082A */  slt        $at, $a1, $t1
/* 7513C 800BA93C 14200006 */  bnez       $at, .L800BA958
/* 75140 800BA940 3C010300 */   lui       $at, (0x3000000 >> 16)
/* 75144 800BA944 01616021 */  addu       $t4, $t3, $at
/* 75148 800BA948 3C018004 */  lui        $at, %hi(D_80045630)
/* 7514C 800BA94C AC2C5630 */  sw         $t4, %lo(D_80045630)($at)
/* 75150 800BA950 03E00008 */  jr         $ra
/* 75154 800BA954 00001025 */   or        $v0, $zero, $zero
.L800BA958:
/* 75158 800BA958 8C4D0004 */  lw         $t5, 0x4($v0)
/* 7515C 800BA95C 00057080 */  sll        $t6, $a1, 2
/* 75160 800BA960 0004C200 */  sll        $t8, $a0, 8
/* 75164 800BA964 01AE7821 */  addu       $t7, $t5, $t6
/* 75168 800BA968 8DE30000 */  lw         $v1, 0x0($t7)
/* 7516C 800BA96C 3C068004 */  lui        $a2, %hi(D_8003E7A0)
/* 75170 800BA970 0305C821 */  addu       $t9, $t8, $a1
/* 75174 800BA974 14600007 */  bnez       $v1, .L800BA994
/* 75178 800BA978 24C6E7A0 */   addiu     $a2, $a2, %lo(D_8003E7A0)
/* 7517C 800BA97C 3C010100 */  lui        $at, (0x1000000 >> 16)
/* 75180 800BA980 03214021 */  addu       $t0, $t9, $at
/* 75184 800BA984 3C018004 */  lui        $at, %hi(D_80045630)
/* 75188 800BA988 AC285630 */  sw         $t0, %lo(D_80045630)($at)
/* 7518C 800BA98C 03E00008 */  jr         $ra
/* 75190 800BA990 00601025 */   or        $v0, $v1, $zero
.L800BA994:
/* 75194 800BA994 8CC20004 */  lw         $v0, 0x4($a2)
/* 75198 800BA998 0062082B */  sltu       $at, $v1, $v0
/* 7519C 800BA99C 54200007 */  bnel       $at, $zero, .L800BA9BC
/* 751A0 800BA9A0 8CC20198 */   lw        $v0, 0x198($a2)
/* 751A4 800BA9A4 8CC9000C */  lw         $t1, 0xC($a2)
/* 751A8 800BA9A8 00495021 */  addu       $t2, $v0, $t1
/* 751AC 800BA9AC 0143082B */  sltu       $at, $t2, $v1
/* 751B0 800BA9B0 1020000C */  beqz       $at, .L800BA9E4
/* 751B4 800BA9B4 00000000 */   nop
/* 751B8 800BA9B8 8CC20198 */  lw         $v0, 0x198($a2)
.L800BA9BC:
/* 751BC 800BA9BC 00046A00 */  sll        $t5, $a0, 8
/* 751C0 800BA9C0 01A57021 */  addu       $t6, $t5, $a1
/* 751C4 800BA9C4 0062082B */  sltu       $at, $v1, $v0
/* 751C8 800BA9C8 54200009 */  bnel       $at, $zero, .L800BA9F0
/* 751CC 800BA9CC 3C010200 */   lui       $at, (0x2000000 >> 16)
/* 751D0 800BA9D0 8CCB01A0 */  lw         $t3, 0x1A0($a2)
/* 751D4 800BA9D4 004B6021 */  addu       $t4, $v0, $t3
/* 751D8 800BA9D8 0183082B */  sltu       $at, $t4, $v1
/* 751DC 800BA9DC 54200004 */  bnel       $at, $zero, .L800BA9F0
/* 751E0 800BA9E0 3C010200 */   lui       $at, (0x2000000 >> 16)
.L800BA9E4:
/* 751E4 800BA9E4 03E00008 */  jr         $ra
/* 751E8 800BA9E8 00601025 */   or        $v0, $v1, $zero
/* 751EC 800BA9EC 3C010200 */  lui        $at, (0x2000000 >> 16)
.L800BA9F0:
/* 751F0 800BA9F0 01C17821 */  addu       $t7, $t6, $at
/* 751F4 800BA9F4 3C018004 */  lui        $at, %hi(D_80045630)
/* 751F8 800BA9F8 AC2F5630 */  sw         $t7, %lo(D_80045630)($at)
/* 751FC 800BA9FC 00001025 */  or         $v0, $zero, $zero
/* 75200 800BAA00 03E00008 */  jr         $ra
/* 75204 800BAA04 00000000 */   nop

glabel func_800BAA08
/* 75208 800BAA08 3C0E8004 */  lui        $t6, %hi(D_80045518)
/* 7520C 800BAA0C 8DCE5518 */  lw         $t6, %lo(D_80045518)($t6)
/* 75210 800BAA10 00047880 */  sll        $t7, $a0, 2
/* 75214 800BAA14 01E47823 */  subu       $t7, $t7, $a0
/* 75218 800BAA18 000F7880 */  sll        $t7, $t7, 2
/* 7521C 800BAA1C 01CF1021 */  addu       $v0, $t6, $t7
/* 75220 800BAA20 90580002 */  lbu        $t8, 0x2($v0)
/* 75224 800BAA24 0004CA00 */  sll        $t9, $a0, 8
/* 75228 800BAA28 03254021 */  addu       $t0, $t9, $a1
/* 7522C 800BAA2C 00B8082A */  slt        $at, $a1, $t8
/* 75230 800BAA30 14200006 */  bnez       $at, .L800BAA4C
/* 75234 800BAA34 3C010400 */   lui       $at, (0x4000000 >> 16)
/* 75238 800BAA38 01014821 */  addu       $t1, $t0, $at
/* 7523C 800BAA3C 3C018004 */  lui        $at, %hi(D_80045630)
/* 75240 800BAA40 AC295630 */  sw         $t1, %lo(D_80045630)($at)
/* 75244 800BAA44 03E00008 */  jr         $ra
/* 75248 800BAA48 00001025 */   or        $v0, $zero, $zero
.L800BAA4C:
/* 7524C 800BAA4C 8C4A0008 */  lw         $t2, 0x8($v0)
/* 75250 800BAA50 00055880 */  sll        $t3, $a1, 2
/* 75254 800BAA54 00046A00 */  sll        $t5, $a0, 8
/* 75258 800BAA58 014B6021 */  addu       $t4, $t2, $t3
/* 7525C 800BAA5C 8D830000 */  lw         $v1, 0x0($t4)
/* 75260 800BAA60 01A57021 */  addu       $t6, $t5, $a1
/* 75264 800BAA64 3C010500 */  lui        $at, (0x5000000 >> 16)
/* 75268 800BAA68 14600004 */  bnez       $v1, .L800BAA7C
/* 7526C 800BAA6C 00601025 */   or        $v0, $v1, $zero
/* 75270 800BAA70 01C17821 */  addu       $t7, $t6, $at
/* 75274 800BAA74 3C018004 */  lui        $at, %hi(D_80045630)
/* 75278 800BAA78 AC2F5630 */  sw         $t7, %lo(D_80045630)($at)
.L800BAA7C:
/* 7527C 800BAA7C 03E00008 */  jr         $ra
/* 75280 800BAA80 00000000 */   nop

glabel func_800BAA84
/* 75284 800BAA84 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 75288 800BAA88 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7528C 800BAA8C 8C820044 */  lw         $v0, 0x44($a0)
/* 75290 800BAA90 00803825 */  or         $a3, $a0, $zero
/* 75294 800BAA94 24E60034 */  addiu      $a2, $a3, 0x34
/* 75298 800BAA98 904E0018 */  lbu        $t6, 0x18($v0)
/* 7529C 800BAA9C 55C0000A */  bnel       $t6, $zero, .L800BAAC8
/* 752A0 800BAAA0 8C45001C */   lw        $a1, 0x1C($v0)
/* 752A4 800BAAA4 8C4F004C */  lw         $t7, 0x4C($v0)
/* 752A8 800BAAA8 24840058 */  addiu      $a0, $a0, 0x58
/* 752AC 800BAAAC 24E60034 */  addiu      $a2, $a3, 0x34
/* 752B0 800BAAB0 8DE50080 */  lw         $a1, 0x80($t7)
/* 752B4 800BAAB4 0C02F166 */  jal        func_800BC598
/* 752B8 800BAAB8 AFA70018 */   sw        $a3, 0x18($sp)
/* 752BC 800BAABC 10000006 */  b          .L800BAAD8
/* 752C0 800BAAC0 8FA70018 */   lw        $a3, 0x18($sp)
/* 752C4 800BAAC4 8C45001C */  lw         $a1, 0x1C($v0)
.L800BAAC8:
/* 752C8 800BAAC8 AFA70018 */  sw         $a3, 0x18($sp)
/* 752CC 800BAACC 0C02F166 */  jal        func_800BC598
/* 752D0 800BAAD0 24E40058 */   addiu     $a0, $a3, 0x58
/* 752D4 800BAAD4 8FA70018 */  lw         $a3, 0x18($sp)
.L800BAAD8:
/* 752D8 800BAAD8 24180001 */  addiu      $t8, $zero, 0x1
/* 752DC 800BAADC 3C19800F */  lui        $t9, %hi(D_800ED020)
/* 752E0 800BAAE0 A0F80059 */  sb         $t8, 0x59($a3)
/* 752E4 800BAAE4 2739D020 */  addiu      $t9, $t9, %lo(D_800ED020)
/* 752E8 800BAAE8 8F210000 */  lw         $at, 0x0($t9)
/* 752EC 800BAAEC ACE100B0 */  sw         $at, 0xB0($a3)
/* 752F0 800BAAF0 8F290004 */  lw         $t1, 0x4($t9)
/* 752F4 800BAAF4 ACE900B4 */  sw         $t1, 0xB4($a3)
/* 752F8 800BAAF8 8F210008 */  lw         $at, 0x8($t9)
/* 752FC 800BAAFC ACE100B8 */  sw         $at, 0xB8($a3)
/* 75300 800BAB00 8F29000C */  lw         $t1, 0xC($t9)
/* 75304 800BAB04 ACE900BC */  sw         $t1, 0xBC($a3)
/* 75308 800BAB08 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7530C 800BAB0C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 75310 800BAB10 03E00008 */  jr         $ra
/* 75314 800BAB14 00000000 */   nop

glabel func_800BAB18
/* 75318 800BAB18 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7531C 800BAB1C AFBF0014 */  sw         $ra, 0x14($sp)
/* 75320 800BAB20 8C8E00B0 */  lw         $t6, 0xB0($a0)
/* 75324 800BAB24 24010001 */  addiu      $at, $zero, 0x1
/* 75328 800BAB28 24050000 */  addiu      $a1, $zero, 0x0
/* 7532C 800BAB2C 000E7840 */  sll        $t7, $t6, 1
/* 75330 800BAB30 000FC7C2 */  srl        $t8, $t7, 31
/* 75334 800BAB34 17010005 */  bne        $t8, $at, .L800BAB4C
/* 75338 800BAB38 24060040 */   addiu     $a2, $zero, 0x40
/* 7533C 800BAB3C 909900B0 */  lbu        $t9, 0xB0($a0)
/* 75340 800BAB40 3328FFBF */  andi       $t0, $t9, 0xFFBF
/* 75344 800BAB44 10000005 */  b          .L800BAB5C
/* 75348 800BAB48 A08800B0 */   sb        $t0, 0xB0($a0)
.L800BAB4C:
/* 7534C 800BAB4C 00003825 */  or         $a3, $zero, $zero
/* 75350 800BAB50 0C02E960 */  jal        func_800BA580
/* 75354 800BAB54 AFA40018 */   sw        $a0, 0x18($sp)
/* 75358 800BAB58 8FA40018 */  lw         $a0, 0x18($sp)
.L800BAB5C:
/* 7535C 800BAB5C 908900B0 */  lbu        $t1, 0xB0($a0)
/* 75360 800BAB60 2402FFFF */  addiu      $v0, $zero, -0x1
/* 75364 800BAB64 A0800030 */  sb         $zero, 0x30($a0)
/* 75368 800BAB68 312AFF7F */  andi       $t2, $t1, 0xFF7F
/* 7536C 800BAB6C A08A00B0 */  sb         $t2, 0xB0($a0)
/* 75370 800BAB70 908B00B0 */  lbu        $t3, 0xB0($a0)
/* 75374 800BAB74 AC820044 */  sw         $v0, 0x44($a0)
/* 75378 800BAB78 AC820040 */  sw         $v0, 0x40($a0)
/* 7537C 800BAB7C 316CFFDF */  andi       $t4, $t3, 0xFFDF
/* 75380 800BAB80 A08C00B0 */  sb         $t4, 0xB0($a0)
/* 75384 800BAB84 8FBF0014 */  lw         $ra, 0x14($sp)
/* 75388 800BAB88 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7538C 800BAB8C 03E00008 */  jr         $ra
/* 75390 800BAB90 00000000 */   nop

glabel func_800BAB94
/* 75394 800BAB94 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 75398 800BAB98 3C038004 */  lui        $v1, %hi(D_80045548)
/* 7539C 800BAB9C 8C635548 */  lw         $v1, %lo(D_80045548)($v1)
/* 753A0 800BABA0 AFBF0044 */  sw         $ra, 0x44($sp)
/* 753A4 800BABA4 AFB70040 */  sw         $s7, 0x40($sp)
/* 753A8 800BABA8 AFB6003C */  sw         $s6, 0x3C($sp)
/* 753AC 800BABAC AFB50038 */  sw         $s5, 0x38($sp)
/* 753B0 800BABB0 AFB40034 */  sw         $s4, 0x34($sp)
/* 753B4 800BABB4 AFB30030 */  sw         $s3, 0x30($sp)
/* 753B8 800BABB8 AFB2002C */  sw         $s2, 0x2C($sp)
/* 753BC 800BABBC AFB10028 */  sw         $s1, 0x28($sp)
/* 753C0 800BABC0 AFB00024 */  sw         $s0, 0x24($sp)
/* 753C4 800BABC4 F7B60018 */  sdc1       $f22, 0x18($sp)
/* 753C8 800BABC8 186000CB */  blez       $v1, .L800BAEF8
/* 753CC 800BABCC F7B40010 */   sdc1      $f20, 0x10($sp)
/* 753D0 800BABD0 0000A825 */  or         $s5, $zero, $zero
/* 753D4 800BABD4 24170001 */  addiu      $s7, $zero, 0x1
/* 753D8 800BABD8 24160001 */  addiu      $s6, $zero, 0x1
/* 753DC 800BABDC 2414FFFF */  addiu      $s4, $zero, -0x1
.L800BABE0:
/* 753E0 800BABE0 3C0E8004 */  lui        $t6, %hi(D_8003FCC0)
/* 753E4 800BABE4 8DCEFCC0 */  lw         $t6, %lo(D_8003FCC0)($t6)
/* 753E8 800BABE8 02AE8021 */  addu       $s0, $s5, $t6
/* 753EC 800BABEC 8E0F0044 */  lw         $t7, 0x44($s0)
/* 753F0 800BABF0 26110030 */  addiu      $s1, $s0, 0x30
/* 753F4 800BABF4 528F0036 */  beql       $s4, $t7, .L800BACD0
/* 753F8 800BABF8 92220000 */   lbu       $v0, 0x0($s1)
/* 753FC 800BABFC 26110030 */  addiu      $s1, $s0, 0x30
/* 75400 800BAC00 8E250014 */  lw         $a1, 0x14($s1)
/* 75404 800BAC04 3C017FFF */  lui        $at, (0x7FFFFFFF >> 16)
/* 75408 800BAC08 3421FFFF */  ori        $at, $at, (0x7FFFFFFF & 0xFFFF)
/* 7540C 800BAC0C 00A1082B */  sltu       $at, $a1, $at
/* 75410 800BAC10 10200004 */  beqz       $at, .L800BAC24
/* 75414 800BAC14 00031080 */   sll       $v0, $v1, 2
/* 75418 800BAC18 00431023 */  subu       $v0, $v0, $v1
/* 7541C 800BAC1C 100000B2 */  b          .L800BAEE8
/* 75420 800BAC20 00021180 */   sll       $v0, $v0, 6
.L800BAC24:
/* 75424 800BAC24 8CB80000 */  lw         $t8, 0x0($a1)
/* 75428 800BAC28 0018CFC2 */  srl        $t9, $t8, 31
/* 7542C 800BAC2C 57200006 */  bnel       $t9, $zero, .L800BAC48
/* 75430 800BAC30 8CA4004C */   lw        $a0, 0x4C($a1)
/* 75434 800BAC34 92280000 */  lbu        $t0, 0x0($s1)
/* 75438 800BAC38 29010002 */  slti       $at, $t0, 0x2
/* 7543C 800BAC3C 10200018 */  beqz       $at, .L800BACA0
/* 75440 800BAC40 00000000 */   nop
/* 75444 800BAC44 8CA4004C */  lw         $a0, 0x4C($a1)
.L800BAC48:
/* 75448 800BAC48 8C820044 */  lw         $v0, 0x44($a0)
/* 7544C 800BAC4C 5440000B */  bnel       $v0, $zero, .L800BAC7C
/* 75450 800BAC50 8C490000 */   lw        $t1, 0x0($v0)
/* 75454 800BAC54 0C02F2CD */  jal        func_800BCB34
/* 75458 800BAC58 00000000 */   nop
/* 7545C 800BAC5C A2360000 */  sb         $s6, 0x0($s1)
/* 75460 800BAC60 3C038004 */  lui        $v1, %hi(D_80045548)
/* 75464 800BAC64 8C635548 */  lw         $v1, %lo(D_80045548)($v1)
/* 75468 800BAC68 00031080 */  sll        $v0, $v1, 2
/* 7546C 800BAC6C 00431023 */  subu       $v0, $v0, $v1
/* 75470 800BAC70 1000009D */  b          .L800BAEE8
/* 75474 800BAC74 00021180 */   sll       $v0, $v0, 6
/* 75478 800BAC78 8C490000 */  lw         $t1, 0x0($v0)
.L800BAC7C:
/* 7547C 800BAC7C 00095880 */  sll        $t3, $t1, 2
/* 75480 800BAC80 05610005 */  bgez       $t3, .L800BAC98
/* 75484 800BAC84 00000000 */   nop
/* 75488 800BAC88 908C0003 */  lbu        $t4, 0x3($a0)
/* 7548C 800BAC8C 318D00C0 */  andi       $t5, $t4, 0xC0
/* 75490 800BAC90 15A00003 */  bnez       $t5, .L800BACA0
/* 75494 800BAC94 00000000 */   nop
.L800BAC98:
/* 75498 800BAC98 10000014 */  b          .L800BACEC
/* 7549C 800BAC9C 92220000 */   lbu       $v0, 0x0($s1)
.L800BACA0:
/* 754A0 800BACA0 0C02EC4A */  jal        func_800BB128
/* 754A4 800BACA4 00A02025 */   or        $a0, $a1, $zero
/* 754A8 800BACA8 0C02EDB7 */  jal        func_800BB6DC
/* 754AC 800BACAC 02002025 */   or        $a0, $s0, $zero
/* 754B0 800BACB0 8E04000C */  lw         $a0, 0xC($s0)
/* 754B4 800BACB4 02002825 */  or         $a1, $s0, $zero
/* 754B8 800BACB8 0C02EDA7 */  jal        func_800BB69C
/* 754BC 800BACBC 24840010 */   addiu     $a0, $a0, 0x10
/* 754C0 800BACC0 A2360000 */  sb         $s6, 0x0($s1)
/* 754C4 800BACC4 10000009 */  b          .L800BACEC
/* 754C8 800BACC8 32C200FF */   andi      $v0, $s6, 0xFF
/* 754CC 800BACCC 92220000 */  lbu        $v0, 0x0($s1)
.L800BACD0:
/* 754D0 800BACD0 28410002 */  slti       $at, $v0, 0x2
/* 754D4 800BACD4 14200005 */  bnez       $at, .L800BACEC
/* 754D8 800BACD8 00000000 */   nop
/* 754DC 800BACDC 00031080 */  sll        $v0, $v1, 2
/* 754E0 800BACE0 00431023 */  subu       $v0, $v0, $v1
/* 754E4 800BACE4 10000080 */  b          .L800BAEE8
/* 754E8 800BACE8 00021180 */   sll       $v0, $v0, 6
.L800BACEC:
/* 754EC 800BACEC 10400079 */  beqz       $v0, .L800BAED4
/* 754F0 800BACF0 00000000 */   nop
/* 754F4 800BACF4 12E20005 */  beq        $s7, $v0, .L800BAD0C
/* 754F8 800BACF8 261300B0 */   addiu     $s3, $s0, 0xB0
/* 754FC 800BACFC 8E6E0000 */  lw         $t6, 0x0($s3)
/* 75500 800BAD00 000EC080 */  sll        $t8, $t6, 2
/* 75504 800BAD04 07030032 */  bgezl      $t8, .L800BADD0
/* 75508 800BAD08 922D0029 */   lbu       $t5, 0x29($s1)
.L800BAD0C:
/* 7550C 800BAD0C 92390029 */  lbu        $t9, 0x29($s1)
/* 75510 800BAD10 261300B0 */  addiu      $s3, $s0, 0xB0
/* 75514 800BAD14 53200006 */  beql       $t9, $zero, .L800BAD30
/* 75518 800BAD18 8E2B0018 */   lw        $t3, 0x18($s1)
/* 7551C 800BAD1C 8E680000 */  lw         $t0, 0x0($s3)
/* 75520 800BAD20 00085080 */  sll        $t2, $t0, 2
/* 75524 800BAD24 05410035 */  bgez       $t2, .L800BADFC
/* 75528 800BAD28 00000000 */   nop
/* 7552C 800BAD2C 8E2B0018 */  lw         $t3, 0x18($s1)
.L800BAD30:
/* 75530 800BAD30 128B001D */  beq        $s4, $t3, .L800BADA8
/* 75534 800BAD34 00000000 */   nop
/* 75538 800BAD38 0C02EAC6 */  jal        func_800BAB18
/* 7553C 800BAD3C 02002025 */   or        $a0, $s0, $zero
/* 75540 800BAD40 8E250018 */  lw         $a1, 0x18($s1)
/* 75544 800BAD44 02002025 */  or         $a0, $s0, $zero
/* 75548 800BAD48 8CAC004C */  lw         $t4, 0x4C($a1)
/* 7554C 800BAD4C 1180000D */  beqz       $t4, .L800BAD84
/* 75550 800BAD50 00000000 */   nop
/* 75554 800BAD54 0C02EDEA */  jal        func_800BB7A8
/* 75558 800BAD58 261300B0 */   addiu     $s3, $s0, 0xB0
/* 7555C 800BAD5C 0C02F12C */  jal        func_800BC4B0
/* 75560 800BAD60 02002025 */   or        $a0, $s0, $zero
/* 75564 800BAD64 0C02EDB7 */  jal        func_800BB6DC
/* 75568 800BAD68 02002025 */   or        $a0, $s0, $zero
/* 7556C 800BAD6C 8E04000C */  lw         $a0, 0xC($s0)
/* 75570 800BAD70 02002825 */  or         $a1, $s0, $zero
/* 75574 800BAD74 0C02F3EB */  jal        func_800BCFAC
/* 75578 800BAD78 24840030 */   addiu     $a0, $a0, 0x30
/* 7557C 800BAD7C 1000001F */  b          .L800BADFC
/* 75580 800BAD80 AE340018 */   sw        $s4, 0x18($s1)
.L800BAD84:
/* 75584 800BAD84 0C02EAC6 */  jal        func_800BAB18
/* 75588 800BAD88 02002025 */   or        $a0, $s0, $zero
/* 7558C 800BAD8C 0C02EDB7 */  jal        func_800BB6DC
/* 75590 800BAD90 02002025 */   or        $a0, $s0, $zero
/* 75594 800BAD94 8E04000C */  lw         $a0, 0xC($s0)
/* 75598 800BAD98 0C02F3EB */  jal        func_800BCFAC
/* 7559C 800BAD9C 02002825 */   or        $a1, $s0, $zero
/* 755A0 800BADA0 1000004C */  b          .L800BAED4
/* 755A4 800BADA4 AE340018 */   sw        $s4, 0x18($s1)
.L800BADA8:
/* 755A8 800BADA8 0C02EAC6 */  jal        func_800BAB18
/* 755AC 800BADAC 02002025 */   or        $a0, $s0, $zero
/* 755B0 800BADB0 0C02EDB7 */  jal        func_800BB6DC
/* 755B4 800BADB4 02002025 */   or        $a0, $s0, $zero
/* 755B8 800BADB8 8E04000C */  lw         $a0, 0xC($s0)
/* 755BC 800BADBC 0C02F3EB */  jal        func_800BCFAC
/* 755C0 800BADC0 02002825 */   or        $a1, $s0, $zero
/* 755C4 800BADC4 10000043 */  b          .L800BAED4
/* 755C8 800BADC8 00000000 */   nop
/* 755CC 800BADCC 922D0029 */  lbu        $t5, 0x29($s1)
.L800BADD0:
/* 755D0 800BADD0 15A0000A */  bnez       $t5, .L800BADFC
/* 755D4 800BADD4 00000000 */   nop
/* 755D8 800BADD8 0C02EAC6 */  jal        func_800BAB18
/* 755DC 800BADDC 02002025 */   or        $a0, $s0, $zero
/* 755E0 800BADE0 0C02EDB7 */  jal        func_800BB6DC
/* 755E4 800BADE4 02002025 */   or        $a0, $s0, $zero
/* 755E8 800BADE8 8E04000C */  lw         $a0, 0xC($s0)
/* 755EC 800BADEC 0C02F3EB */  jal        func_800BCFAC
/* 755F0 800BADF0 02002825 */   or        $a1, $s0, $zero
/* 755F4 800BADF4 10000037 */  b          .L800BAED4
/* 755F8 800BADF8 00000000 */   nop
.L800BADFC:
/* 755FC 800BADFC 0C02F16E */  jal        func_800BC5B8
/* 75600 800BAE00 26240028 */   addiu     $a0, $s1, 0x28
/* 75604 800BAE04 46000586 */  mov.s      $f22, $f0
/* 75608 800BAE08 0C02F111 */  jal        func_800BC444
/* 7560C 800BAE0C 02002025 */   or        $a0, $s0, $zero
/* 75610 800BAE10 922E0000 */  lbu        $t6, 0x0($s1)
/* 75614 800BAE14 2622001C */  addiu      $v0, $s1, 0x1C
/* 75618 800BAE18 56EE000B */  bnel       $s7, $t6, .L800BAE48
/* 7561C 800BAE1C 8E250014 */   lw        $a1, 0x14($s1)
/* 75620 800BAE20 8E720000 */  lw         $s2, 0x0($s3)
/* 75624 800BAE24 C4400004 */  lwc1       $f0, 0x4($v0)
/* 75628 800BAE28 C4540008 */  lwc1       $f20, 0x8($v0)
/* 7562C 800BAE2C 00127AC0 */  sll        $t7, $s2, 11
/* 75630 800BAE30 000FC742 */  srl        $t8, $t7, 29
/* 75634 800BAE34 90460001 */  lbu        $a2, 0x1($v0)
/* 75638 800BAE38 90470000 */  lbu        $a3, 0x0($v0)
/* 7563C 800BAE3C 10000009 */  b          .L800BAE64
/* 75640 800BAE40 331200FF */   andi      $s2, $t8, 0xFF
/* 75644 800BAE44 8E250014 */  lw         $a1, 0x14($s1)
.L800BAE48:
/* 75648 800BAE48 8CA4004C */  lw         $a0, 0x4C($a1)
/* 7564C 800BAE4C C4A00030 */  lwc1       $f0, 0x30($a1)
/* 75650 800BAE50 C4B4002C */  lwc1       $f20, 0x2C($a1)
/* 75654 800BAE54 90880008 */  lbu        $t0, 0x8($a0)
/* 75658 800BAE58 90A60006 */  lbu        $a2, 0x6($a1)
/* 7565C 800BAE5C 90870004 */  lbu        $a3, 0x4($a0)
/* 75660 800BAE60 31120007 */  andi       $s2, $t0, 0x7
.L800BAE64:
/* 75664 800BAE64 C624000C */  lwc1       $f4, 0xC($s1)
/* 75668 800BAE68 C6260008 */  lwc1       $f6, 0x8($s1)
/* 7566C 800BAE6C 3C018004 */  lui        $at, %hi(D_80045534)
/* 75670 800BAE70 C42A5534 */  lwc1       $f10, %lo(D_80045534)($at)
/* 75674 800BAE74 46062202 */  mul.s      $f8, $f4, $f6
/* 75678 800BAE78 A3A7004B */  sb         $a3, 0x4B($sp)
/* 7567C 800BAE7C A3A60049 */  sb         $a2, 0x49($sp)
/* 75680 800BAE80 02002025 */  or         $a0, $s0, $zero
/* 75684 800BAE84 46080002 */  mul.s      $f0, $f0, $f8
/* 75688 800BAE88 00000000 */  nop
/* 7568C 800BAE8C 460A0002 */  mul.s      $f0, $f0, $f10
/* 75690 800BAE90 00000000 */  nop
/* 75694 800BAE94 4616A402 */  mul.s      $f16, $f20, $f22
/* 75698 800BAE98 44050000 */  mfc1       $a1, $f0
/* 7569C 800BAE9C 46168502 */  mul.s      $f20, $f16, $f22
/* 756A0 800BAEA0 0C02E9F8 */  jal        func_800BA7E0
/* 756A4 800BAEA4 00000000 */   nop
/* 756A8 800BAEA8 4405A000 */  mfc1       $a1, $f20
/* 756AC 800BAEAC 93A60049 */  lbu        $a2, 0x49($sp)
/* 756B0 800BAEB0 93A7004B */  lbu        $a3, 0x4B($sp)
/* 756B4 800BAEB4 0C02E960 */  jal        func_800BA580
/* 756B8 800BAEB8 02002025 */   or        $a0, $s0, $zero
/* 756BC 800BAEBC 926D0001 */  lbu        $t5, 0x1($s3)
/* 756C0 800BAEC0 00125880 */  sll        $t3, $s2, 2
/* 756C4 800BAEC4 316C001C */  andi       $t4, $t3, 0x1C
/* 756C8 800BAEC8 31AEFFE3 */  andi       $t6, $t5, 0xFFE3
/* 756CC 800BAECC 018E7825 */  or         $t7, $t4, $t6
/* 756D0 800BAED0 A26F0001 */  sb         $t7, 0x1($s3)
.L800BAED4:
/* 756D4 800BAED4 3C038004 */  lui        $v1, %hi(D_80045548)
/* 756D8 800BAED8 8C635548 */  lw         $v1, %lo(D_80045548)($v1)
/* 756DC 800BAEDC 00031080 */  sll        $v0, $v1, 2
/* 756E0 800BAEE0 00431023 */  subu       $v0, $v0, $v1
/* 756E4 800BAEE4 00021180 */  sll        $v0, $v0, 6
.L800BAEE8:
/* 756E8 800BAEE8 26B500C0 */  addiu      $s5, $s5, 0xC0
/* 756EC 800BAEEC 02A2082A */  slt        $at, $s5, $v0
/* 756F0 800BAEF0 1420FF3B */  bnez       $at, .L800BABE0
/* 756F4 800BAEF4 00000000 */   nop
.L800BAEF8:
/* 756F8 800BAEF8 8FBF0044 */  lw         $ra, 0x44($sp)
/* 756FC 800BAEFC D7B40010 */  ldc1       $f20, 0x10($sp)
/* 75700 800BAF00 D7B60018 */  ldc1       $f22, 0x18($sp)
/* 75704 800BAF04 8FB00024 */  lw         $s0, 0x24($sp)
/* 75708 800BAF08 8FB10028 */  lw         $s1, 0x28($sp)
/* 7570C 800BAF0C 8FB2002C */  lw         $s2, 0x2C($sp)
/* 75710 800BAF10 8FB30030 */  lw         $s3, 0x30($sp)
/* 75714 800BAF14 8FB40034 */  lw         $s4, 0x34($sp)
/* 75718 800BAF18 8FB50038 */  lw         $s5, 0x38($sp)
/* 7571C 800BAF1C 8FB6003C */  lw         $s6, 0x3C($sp)
/* 75720 800BAF20 8FB70040 */  lw         $s7, 0x40($sp)
/* 75724 800BAF24 03E00008 */  jr         $ra
/* 75728 800BAF28 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_800BAF2C
/* 7572C 800BAF2C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 75730 800BAF30 2406FFFF */  addiu      $a2, $zero, -0x1
/* 75734 800BAF34 AFBF0014 */  sw         $ra, 0x14($sp)
/* 75738 800BAF38 1086006F */  beq        $a0, $a2, .L800BB0F8
/* 7573C 800BAF3C 00A03825 */   or        $a3, $a1, $zero
/* 75740 800BAF40 8C820040 */  lw         $v0, 0x40($a0)
/* 75744 800BAF44 5040006D */  beql       $v0, $zero, .L800BB0FC
/* 75748 800BAF48 8FBF0014 */   lw        $ra, 0x14($sp)
/* 7574C 800BAF4C 8C4E0048 */  lw         $t6, 0x48($v0)
/* 75750 800BAF50 00402825 */  or         $a1, $v0, $zero
/* 75754 800BAF54 548E0003 */  bnel       $a0, $t6, .L800BAF64
/* 75758 800BAF58 8CA20044 */   lw        $v0, 0x44($a1)
/* 7575C 800BAF5C AC460048 */  sw         $a2, 0x48($v0)
/* 75760 800BAF60 8CA20044 */  lw         $v0, 0x44($a1)
.L800BAF64:
/* 75764 800BAF64 50820014 */  beql       $a0, $v0, .L800BAFB8
/* 75768 800BAF68 A0800002 */   sb        $zero, 0x2($a0)
/* 7576C 800BAF6C 54C20063 */  bnel       $a2, $v0, .L800BB0FC
/* 75770 800BAF70 8FBF0014 */   lw        $ra, 0x14($sp)
/* 75774 800BAF74 8CAF0048 */  lw         $t7, 0x48($a1)
/* 75778 800BAF78 54CF0060 */  bnel       $a2, $t7, .L800BB0FC
/* 7577C 800BAF7C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 75780 800BAF80 8CB80040 */  lw         $t8, 0x40($a1)
/* 75784 800BAF84 24080006 */  addiu      $t0, $zero, 0x6
/* 75788 800BAF88 5498005C */  bnel       $a0, $t8, .L800BB0FC
/* 7578C 800BAF8C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 75790 800BAF90 50E8005A */  beql       $a3, $t0, .L800BB0FC
/* 75794 800BAF94 8FBF0014 */   lw        $ra, 0x14($sp)
/* 75798 800BAF98 90B90058 */  lbu        $t9, 0x58($a1)
/* 7579C 800BAF9C 3C018004 */  lui        $at, %hi(D_80045538)
/* 757A0 800BAFA0 C4245538 */  lwc1       $f4, %lo(D_80045538)($at)
/* 757A4 800BAFA4 37290010 */  ori        $t1, $t9, 0x10
/* 757A8 800BAFA8 A0A90058 */  sb         $t1, 0x58($a1)
/* 757AC 800BAFAC 10000052 */  b          .L800BB0F8
/* 757B0 800BAFB0 E4A40068 */   swc1      $f4, 0x68($a1)
/* 757B4 800BAFB4 A0800002 */  sb         $zero, 0x2($a0)
.L800BAFB8:
/* 757B8 800BAFB8 90AA0059 */  lbu        $t2, 0x59($a1)
/* 757BC 800BAFBC 24080006 */  addiu      $t0, $zero, 0x6
/* 757C0 800BAFC0 240D0001 */  addiu      $t5, $zero, 0x1
/* 757C4 800BAFC4 110A0044 */  beq        $t0, $t2, .L800BB0D8
/* 757C8 800BAFC8 24010007 */   addiu     $at, $zero, 0x7
/* 757CC 800BAFCC C4860030 */  lwc1       $f6, 0x30($a0)
/* 757D0 800BAFD0 24A2004C */  addiu      $v0, $a1, 0x4C
/* 757D4 800BAFD4 E4460004 */  swc1       $f6, 0x4($v0)
/* 757D8 800BAFD8 C488002C */  lwc1       $f8, 0x2C($a0)
/* 757DC 800BAFDC E4480008 */  swc1       $f8, 0x8($v0)
/* 757E0 800BAFE0 908B0006 */  lbu        $t3, 0x6($a0)
/* 757E4 800BAFE4 A04B0001 */  sb         $t3, 0x1($v0)
/* 757E8 800BAFE8 8C83004C */  lw         $v1, 0x4C($a0)
/* 757EC 800BAFEC 50600004 */  beql       $v1, $zero, .L800BB000
/* 757F0 800BAFF0 8CAE0044 */   lw        $t6, 0x44($a1)
/* 757F4 800BAFF4 906C0004 */  lbu        $t4, 0x4($v1)
/* 757F8 800BAFF8 A04C0000 */  sb         $t4, 0x0($v0)
/* 757FC 800BAFFC 8CAE0044 */  lw         $t6, 0x44($a1)
.L800BB000:
/* 75800 800BB000 A0AD0030 */  sb         $t5, 0x30($a1)
/* 75804 800BB004 ACA60044 */  sw         $a2, 0x44($a1)
/* 75808 800BB008 14E10008 */  bne        $a3, $at, .L800BB02C
/* 7580C 800BB00C ACAE0040 */   sw        $t6, 0x40($a1)
/* 75810 800BB010 90AF0058 */  lbu        $t7, 0x58($a1)
/* 75814 800BB014 3C018004 */  lui        $at, %hi(D_80045538)
/* 75818 800BB018 C42A5538 */  lwc1       $f10, %lo(D_80045538)($at)
/* 7581C 800BB01C 35F80010 */  ori        $t8, $t7, 0x10
/* 75820 800BB020 A0B80058 */  sb         $t8, 0x58($a1)
/* 75824 800BB024 1000002C */  b          .L800BB0D8
/* 75828 800BB028 E4AA0068 */   swc1      $f10, 0x68($a1)
.L800BB02C:
/* 7582C 800BB02C 90B90058 */  lbu        $t9, 0x58($a1)
/* 75830 800BB030 37290020 */  ori        $t1, $t9, 0x20
/* 75834 800BB034 A0A90058 */  sb         $t1, 0x58($a1)
/* 75838 800BB038 90820018 */  lbu        $v0, 0x18($a0)
/* 7583C 800BB03C 54400010 */  bnel       $v0, $zero, .L800BB080
/* 75840 800BB040 44825000 */   mtc1      $v0, $f10
/* 75844 800BB044 8C8A004C */  lw         $t2, 0x4C($a0)
/* 75848 800BB048 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* 7584C 800BB04C 914B007C */  lbu        $t3, 0x7C($t2)
/* 75850 800BB050 448B8000 */  mtc1       $t3, $f16
/* 75854 800BB054 05610004 */  bgez       $t3, .L800BB068
/* 75858 800BB058 468084A0 */   cvt.s.w   $f18, $f16
/* 7585C 800BB05C 44812000 */  mtc1       $at, $f4
/* 75860 800BB060 00000000 */  nop
/* 75864 800BB064 46049480 */  add.s      $f18, $f18, $f4
.L800BB068:
/* 75868 800BB068 3C018004 */  lui        $at, %hi(D_8004553C)
/* 7586C 800BB06C C426553C */  lwc1       $f6, %lo(D_8004553C)($at)
/* 75870 800BB070 46069202 */  mul.s      $f8, $f18, $f6
/* 75874 800BB074 1000000C */  b          .L800BB0A8
/* 75878 800BB078 E4A80068 */   swc1      $f8, 0x68($a1)
/* 7587C 800BB07C 44825000 */  mtc1       $v0, $f10
.L800BB080:
/* 75880 800BB080 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* 75884 800BB084 04410004 */  bgez       $v0, .L800BB098
/* 75888 800BB088 46805420 */   cvt.s.w   $f16, $f10
/* 7588C 800BB08C 44812000 */  mtc1       $at, $f4
/* 75890 800BB090 00000000 */  nop
/* 75894 800BB094 46048400 */  add.s      $f16, $f16, $f4
.L800BB098:
/* 75898 800BB098 3C018004 */  lui        $at, %hi(D_8004553C)
/* 7589C 800BB09C C432553C */  lwc1       $f18, %lo(D_8004553C)($at)
/* 758A0 800BB0A0 46128182 */  mul.s      $f6, $f16, $f18
/* 758A4 800BB0A4 E4A60068 */  swc1       $f6, 0x68($a1)
.L800BB0A8:
/* 758A8 800BB0A8 8C8C004C */  lw         $t4, 0x4C($a0)
/* 758AC 800BB0AC C4A4006C */  lwc1       $f4, 0x6C($a1)
/* 758B0 800BB0B0 3C013B80 */  lui        $at, (0x3B800000 >> 16)
/* 758B4 800BB0B4 918D007D */  lbu        $t5, 0x7D($t4)
/* 758B8 800BB0B8 44819000 */  mtc1       $at, $f18
/* 758BC 800BB0BC 448D4000 */  mtc1       $t5, $f8
/* 758C0 800BB0C0 00000000 */  nop
/* 758C4 800BB0C4 468042A0 */  cvt.s.w    $f10, $f8
/* 758C8 800BB0C8 46045402 */  mul.s      $f16, $f10, $f4
/* 758CC 800BB0CC 00000000 */  nop
/* 758D0 800BB0D0 46128182 */  mul.s      $f6, $f16, $f18
/* 758D4 800BB0D4 E4A60060 */  swc1       $f6, 0x60($a1)
.L800BB0D8:
/* 758D8 800BB0D8 14E80007 */  bne        $a3, $t0, .L800BB0F8
/* 758DC 800BB0DC 00A02025 */   or        $a0, $a1, $zero
/* 758E0 800BB0E0 0C02EDB7 */  jal        func_800BB6DC
/* 758E4 800BB0E4 AFA5001C */   sw        $a1, 0x1C($sp)
/* 758E8 800BB0E8 8FA5001C */  lw         $a1, 0x1C($sp)
/* 758EC 800BB0EC 8CA4000C */  lw         $a0, 0xC($a1)
/* 758F0 800BB0F0 0C02EDA7 */  jal        func_800BB69C
/* 758F4 800BB0F4 24840010 */   addiu     $a0, $a0, 0x10
.L800BB0F8:
/* 758F8 800BB0F8 8FBF0014 */  lw         $ra, 0x14($sp)
.L800BB0FC:
/* 758FC 800BB0FC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 75900 800BB100 03E00008 */  jr         $ra
/* 75904 800BB104 00000000 */   nop

glabel func_800BB108
/* 75908 800BB108 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7590C 800BB10C AFBF0014 */  sw         $ra, 0x14($sp)
/* 75910 800BB110 0C02EBCB */  jal        func_800BAF2C
/* 75914 800BB114 24050006 */   addiu     $a1, $zero, 0x6
/* 75918 800BB118 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7591C 800BB11C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 75920 800BB120 03E00008 */  jr         $ra
/* 75924 800BB124 00000000 */   nop

glabel func_800BB128
/* 75928 800BB128 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7592C 800BB12C AFBF0014 */  sw         $ra, 0x14($sp)
/* 75930 800BB130 0C02EBCB */  jal        func_800BAF2C
/* 75934 800BB134 24050007 */   addiu     $a1, $zero, 0x7
/* 75938 800BB138 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7593C 800BB13C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 75940 800BB140 03E00008 */  jr         $ra
/* 75944 800BB144 00000000 */   nop

glabel func_800BB148
/* 75948 800BB148 28C10080 */  slti       $at, $a2, 0x80
/* 7594C 800BB14C 10200002 */  beqz       $at, .L800BB158
/* 75950 800BB150 00001825 */   or        $v1, $zero, $zero
/* 75954 800BB154 24060080 */  addiu      $a2, $zero, 0x80
.L800BB158:
/* 75958 800BB158 90AE0008 */  lbu        $t6, 0x8($a1)
/* 7595C 800BB15C C4A20024 */  lwc1       $f2, 0x24($a1)
/* 75960 800BB160 11C0000D */  beqz       $t6, .L800BB198
/* 75964 800BB164 46001006 */   mov.s     $f0, $f2
/* 75968 800BB168 C4AC0014 */  lwc1       $f12, 0x14($a1)
/* 7596C 800BB16C 44802000 */  mtc1       $zero, $f4
/* 75970 800BB170 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 75974 800BB174 460C203C */  c.lt.s     $f4, $f12
/* 75978 800BB178 00000000 */  nop
/* 7597C 800BB17C 45020007 */  bc1fl      .L800BB19C
/* 75980 800BB180 3C013F80 */   lui       $at, (0x3F800000 >> 16)
/* 75984 800BB184 44813000 */  mtc1       $at, $f6
/* 75988 800BB188 00000000 */  nop
/* 7598C 800BB18C 46066200 */  add.s      $f8, $f12, $f6
/* 75990 800BB190 46080002 */  mul.s      $f0, $f0, $f8
/* 75994 800BB194 00000000 */  nop
.L800BB198:
/* 75998 800BB198 3C013F80 */  lui        $at, (0x3F800000 >> 16)
.L800BB19C:
/* 7599C 800BB19C 44815000 */  mtc1       $at, $f10
/* 759A0 800BB1A0 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 759A4 800BB1A4 460A003C */  c.lt.s     $f0, $f10
/* 759A8 800BB1A8 00000000 */  nop
/* 759AC 800BB1AC 45020005 */  bc1fl      .L800BB1C4
/* 759B0 800BB1B0 44818000 */   mtc1      $at, $f16
/* 759B4 800BB1B4 3C01800F */  lui        $at, %hi(D_800EBC74)
/* 759B8 800BB1B8 10000017 */  b          .L800BB218
/* 759BC 800BB1BC C420BC74 */   lwc1      $f0, %lo(D_800EBC74)($at)
/* 759C0 800BB1C0 44818000 */  mtc1       $at, $f16
.L800BB1C4:
/* 759C4 800BB1C4 24030001 */  addiu      $v1, $zero, 0x1
/* 759C8 800BB1C8 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 759CC 800BB1CC 4610003C */  c.lt.s     $f0, $f16
/* 759D0 800BB1D0 00000000 */  nop
/* 759D4 800BB1D4 45020005 */  bc1fl      .L800BB1EC
/* 759D8 800BB1D8 44819000 */   mtc1      $at, $f18
/* 759DC 800BB1DC 3C01800F */  lui        $at, %hi(D_800EBC78)
/* 759E0 800BB1E0 1000000D */  b          .L800BB218
/* 759E4 800BB1E4 C420BC78 */   lwc1      $f0, %lo(D_800EBC78)($at)
/* 759E8 800BB1E8 44819000 */  mtc1       $at, $f18
.L800BB1EC:
/* 759EC 800BB1EC 24030003 */  addiu      $v1, $zero, 0x3
/* 759F0 800BB1F0 3C01800F */  lui        $at, %hi(D_800EBC80)
/* 759F4 800BB1F4 4612003C */  c.lt.s     $f0, $f18
/* 759F8 800BB1F8 00000000 */  nop
/* 759FC 800BB1FC 45000005 */  bc1f       .L800BB214
/* 75A00 800BB200 00000000 */   nop
/* 75A04 800BB204 3C01800F */  lui        $at, %hi(D_800EBC7C)
/* 75A08 800BB208 24030002 */  addiu      $v1, $zero, 0x2
/* 75A0C 800BB20C 10000002 */  b          .L800BB218
/* 75A10 800BB210 C420BC7C */   lwc1      $f0, %lo(D_800EBC7C)($at)
.L800BB214:
/* 75A14 800BB214 C420BC80 */  lwc1       $f0, %lo(D_800EBC80)($at)
.L800BB218:
/* 75A18 800BB218 46001102 */  mul.s      $f4, $f2, $f0
/* 75A1C 800BB21C 00067880 */  sll        $t7, $a2, 2
/* 75A20 800BB220 3C18800F */  lui        $t8, %hi(D_800EDA30)
/* 75A24 800BB224 030FC021 */  addu       $t8, $t8, $t7
/* 75A28 800BB228 000341C0 */  sll        $t0, $v1, 7
/* 75A2C 800BB22C 00601025 */  or         $v0, $v1, $zero
/* 75A30 800BB230 E4A40024 */  swc1       $f4, 0x24($a1)
/* 75A34 800BB234 A0860031 */  sb         $a2, 0x31($a0)
/* 75A38 800BB238 A0830032 */  sb         $v1, 0x32($a0)
/* 75A3C 800BB23C 8F18DA30 */  lw         $t8, %lo(D_800EDA30)($t8)
/* 75A40 800BB240 03084821 */  addu       $t1, $t8, $t0
/* 75A44 800BB244 03E00008 */  jr         $ra
/* 75A48 800BB248 AC8900BC */   sw        $t1, 0xBC($a0)

glabel func_800BB24C
/* 75A4C 800BB24C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 75A50 800BB250 AFBF0014 */  sw         $ra, 0x14($sp)
/* 75A54 800BB254 90A60001 */  lbu        $a2, 0x1($a1)
/* 75A58 800BB258 240100FF */  addiu      $at, $zero, 0xFF
/* 75A5C 800BB25C 54C10004 */  bnel       $a2, $at, .L800BB270
/* 75A60 800BB260 908F0032 */   lbu       $t7, 0x32($a0)
/* 75A64 800BB264 8CAE004C */  lw         $t6, 0x4C($a1)
/* 75A68 800BB268 85C6001C */  lh         $a2, 0x1C($t6)
/* 75A6C 800BB26C 908F0032 */  lbu        $t7, 0x32($a0)
.L800BB270:
/* 75A70 800BB270 AFA40020 */  sw         $a0, 0x20($sp)
/* 75A74 800BB274 0C02EC52 */  jal        func_800BB148
/* 75A78 800BB278 AFAF001C */   sw        $t7, 0x1C($sp)
/* 75A7C 800BB27C 8FA40020 */  lw         $a0, 0x20($sp)
/* 75A80 800BB280 3C03800F */  lui        $v1, %hi(D_800EDC48)
/* 75A84 800BB284 2463DC48 */  addiu      $v1, $v1, %lo(D_800EDC48)
/* 75A88 800BB288 0062C821 */  addu       $t9, $v1, $v0
/* 75A8C 800BB28C 93280000 */  lbu        $t0, 0x0($t9)
/* 75A90 800BB290 8C980018 */  lw         $t8, 0x18($a0)
/* 75A94 800BB294 8FAA001C */  lw         $t2, 0x1C($sp)
/* 75A98 800BB298 03080019 */  multu      $t8, $t0
/* 75A9C 800BB29C 006A5821 */  addu       $t3, $v1, $t2
/* 75AA0 800BB2A0 916C0000 */  lbu        $t4, 0x0($t3)
/* 75AA4 800BB2A4 00004812 */  mflo       $t1
/* 75AA8 800BB2A8 00000000 */  nop
/* 75AAC 800BB2AC 00000000 */  nop
/* 75AB0 800BB2B0 012C001A */  div        $zero, $t1, $t4
/* 75AB4 800BB2B4 00006812 */  mflo       $t5
/* 75AB8 800BB2B8 AC8D0018 */  sw         $t5, 0x18($a0)
/* 75ABC 800BB2BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 75AC0 800BB2C0 15800002 */  bnez       $t4, .L800BB2CC
/* 75AC4 800BB2C4 00000000 */   nop
/* 75AC8 800BB2C8 0007000D */  break      7
.L800BB2CC:
/* 75ACC 800BB2CC 2401FFFF */  addiu      $at, $zero, -0x1
/* 75AD0 800BB2D0 15810004 */  bne        $t4, $at, .L800BB2E4
/* 75AD4 800BB2D4 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 75AD8 800BB2D8 15210002 */  bne        $t1, $at, .L800BB2E4
/* 75ADC 800BB2DC 00000000 */   nop
/* 75AE0 800BB2E0 0006000D */  break      6
.L800BB2E4:
/* 75AE4 800BB2E4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 75AE8 800BB2E8 03E00008 */  jr         $ra
/* 75AEC 800BB2EC 00000000 */   nop

glabel func_800BB2F0
/* 75AF0 800BB2F0 AC840000 */  sw         $a0, 0x0($a0)
/* 75AF4 800BB2F4 AC840004 */  sw         $a0, 0x4($a0)
/* 75AF8 800BB2F8 03E00008 */  jr         $ra
/* 75AFC 800BB2FC AC800008 */   sw        $zero, 0x8($a0)

glabel func_800BB300
/* 75B00 800BB300 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 75B04 800BB304 AFBF001C */  sw         $ra, 0x1C($sp)
/* 75B08 800BB308 AFB00018 */  sw         $s0, 0x18($sp)
/* 75B0C 800BB30C 0C02ECBC */  jal        func_800BB2F0
/* 75B10 800BB310 00808025 */   or        $s0, $a0, $zero
/* 75B14 800BB314 0C02ECBC */  jal        func_800BB2F0
/* 75B18 800BB318 26040010 */   addiu     $a0, $s0, 0x10
/* 75B1C 800BB31C 0C02ECBC */  jal        func_800BB2F0
/* 75B20 800BB320 26040020 */   addiu     $a0, $s0, 0x20
/* 75B24 800BB324 0C02ECBC */  jal        func_800BB2F0
/* 75B28 800BB328 26040030 */   addiu     $a0, $s0, 0x30
/* 75B2C 800BB32C AE10000C */  sw         $s0, 0xC($s0)
/* 75B30 800BB330 AE10001C */  sw         $s0, 0x1C($s0)
/* 75B34 800BB334 AE10002C */  sw         $s0, 0x2C($s0)
/* 75B38 800BB338 AE10003C */  sw         $s0, 0x3C($s0)
/* 75B3C 800BB33C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 75B40 800BB340 8FB00018 */  lw         $s0, 0x18($sp)
/* 75B44 800BB344 27BD0020 */  addiu      $sp, $sp, 0x20
/* 75B48 800BB348 03E00008 */  jr         $ra
/* 75B4C 800BB34C 00000000 */   nop

glabel func_800BB350
/* 75B50 800BB350 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 75B54 800BB354 AFB30024 */  sw         $s3, 0x24($sp)
/* 75B58 800BB358 3C138004 */  lui        $s3, %hi(D_80044760)
/* 75B5C 800BB35C 26734760 */  addiu      $s3, $s3, %lo(D_80044760)
/* 75B60 800BB360 AFBF002C */  sw         $ra, 0x2C($sp)
/* 75B64 800BB364 AFB40028 */  sw         $s4, 0x28($sp)
/* 75B68 800BB368 AFB20020 */  sw         $s2, 0x20($sp)
/* 75B6C 800BB36C AFB1001C */  sw         $s1, 0x1C($sp)
/* 75B70 800BB370 AFB00018 */  sw         $s0, 0x18($sp)
/* 75B74 800BB374 0C02ECC0 */  jal        func_800BB300
/* 75B78 800BB378 02602025 */   or        $a0, $s3, $zero
/* 75B7C 800BB37C 3C148004 */  lui        $s4, %hi(D_80045548)
/* 75B80 800BB380 26945548 */  addiu      $s4, $s4, %lo(D_80045548)
/* 75B84 800BB384 8E8E0000 */  lw         $t6, 0x0($s4)
/* 75B88 800BB388 00008825 */  or         $s1, $zero, $zero
/* 75B8C 800BB38C 00008025 */  or         $s0, $zero, $zero
/* 75B90 800BB390 19C00013 */  blez       $t6, .L800BB3E0
/* 75B94 800BB394 3C128004 */   lui       $s2, %hi(D_8003FCC0)
/* 75B98 800BB398 2652FCC0 */  addiu      $s2, $s2, %lo(D_8003FCC0)
/* 75B9C 800BB39C 8E420000 */  lw         $v0, 0x0($s2)
.L800BB3A0:
/* 75BA0 800BB3A0 02602025 */  or         $a0, $s3, $zero
/* 75BA4 800BB3A4 02027821 */  addu       $t7, $s0, $v0
/* 75BA8 800BB3A8 0050C021 */  addu       $t8, $v0, $s0
/* 75BAC 800BB3AC AF0F0008 */  sw         $t7, 0x8($t8)
/* 75BB0 800BB3B0 8E590000 */  lw         $t9, 0x0($s2)
/* 75BB4 800BB3B4 03304021 */  addu       $t0, $t9, $s0
/* 75BB8 800BB3B8 AD000000 */  sw         $zero, 0x0($t0)
/* 75BBC 800BB3BC 8E490000 */  lw         $t1, 0x0($s2)
/* 75BC0 800BB3C0 0C02F3EB */  jal        func_800BCFAC
/* 75BC4 800BB3C4 02092821 */   addu      $a1, $s0, $t1
/* 75BC8 800BB3C8 8E8A0000 */  lw         $t2, 0x0($s4)
/* 75BCC 800BB3CC 26310001 */  addiu      $s1, $s1, 0x1
/* 75BD0 800BB3D0 261000C0 */  addiu      $s0, $s0, 0xC0
/* 75BD4 800BB3D4 022A082A */  slt        $at, $s1, $t2
/* 75BD8 800BB3D8 5420FFF1 */  bnel       $at, $zero, .L800BB3A0
/* 75BDC 800BB3DC 8E420000 */   lw        $v0, 0x0($s2)
.L800BB3E0:
/* 75BE0 800BB3E0 8FBF002C */  lw         $ra, 0x2C($sp)
/* 75BE4 800BB3E4 8FB00018 */  lw         $s0, 0x18($sp)
/* 75BE8 800BB3E8 8FB1001C */  lw         $s1, 0x1C($sp)
/* 75BEC 800BB3EC 8FB20020 */  lw         $s2, 0x20($sp)
/* 75BF0 800BB3F0 8FB30024 */  lw         $s3, 0x24($sp)
/* 75BF4 800BB3F4 8FB40028 */  lw         $s4, 0x28($sp)
/* 75BF8 800BB3F8 03E00008 */  jr         $ra
/* 75BFC 800BB3FC 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_800BB400
/* 75C00 800BB400 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 75C04 800BB404 AFBE0038 */  sw         $fp, 0x38($sp)
/* 75C08 800BB408 AFB70034 */  sw         $s7, 0x34($sp)
/* 75C0C 800BB40C AFB60030 */  sw         $s6, 0x30($sp)
/* 75C10 800BB410 AFB5002C */  sw         $s5, 0x2C($sp)
/* 75C14 800BB414 AFB40028 */  sw         $s4, 0x28($sp)
/* 75C18 800BB418 AFB30024 */  sw         $s3, 0x24($sp)
/* 75C1C 800BB41C AFB20020 */  sw         $s2, 0x20($sp)
/* 75C20 800BB420 AFB1001C */  sw         $s1, 0x1C($sp)
/* 75C24 800BB424 3C068004 */  lui        $a2, %hi(D_80044760)
/* 75C28 800BB428 3C058004 */  lui        $a1, %hi(D_80044770)
/* 75C2C 800BB42C 3C038004 */  lui        $v1, %hi(D_80044780)
/* 75C30 800BB430 3C028004 */  lui        $v0, %hi(D_80044790)
/* 75C34 800BB434 0080A025 */  or         $s4, $a0, $zero
/* 75C38 800BB438 AFBF003C */  sw         $ra, 0x3C($sp)
/* 75C3C 800BB43C AFB00018 */  sw         $s0, 0x18($sp)
/* 75C40 800BB440 24424790 */  addiu      $v0, $v0, %lo(D_80044790)
/* 75C44 800BB444 24634780 */  addiu      $v1, $v1, %lo(D_80044780)
/* 75C48 800BB448 24A54770 */  addiu      $a1, $a1, %lo(D_80044770)
/* 75C4C 800BB44C 24C64760 */  addiu      $a2, $a2, %lo(D_80044760)
/* 75C50 800BB450 8FB10048 */  lw         $s1, 0x48($sp)
/* 75C54 800BB454 8FB20040 */  lw         $s2, 0x40($sp)
/* 75C58 800BB458 00009825 */  or         $s3, $zero, $zero
/* 75C5C 800BB45C 24150001 */  addiu      $s5, $zero, 0x1
/* 75C60 800BB460 24160002 */  addiu      $s6, $zero, 0x2
/* 75C64 800BB464 24170003 */  addiu      $s7, $zero, 0x3
/* 75C68 800BB468 241E0004 */  addiu      $fp, $zero, 0x4
.L800BB46C:
/* 75C6C 800BB46C 5260000A */  beql       $s3, $zero, .L800BB498
/* 75C70 800BB470 02808825 */   or        $s1, $s4, $zero
/* 75C74 800BB474 5275000C */  beql       $s3, $s5, .L800BB4A8
/* 75C78 800BB478 26910010 */   addiu     $s1, $s4, 0x10
/* 75C7C 800BB47C 5276000E */  beql       $s3, $s6, .L800BB4B8
/* 75C80 800BB480 26910020 */   addiu     $s1, $s4, 0x20
/* 75C84 800BB484 52770010 */  beql       $s3, $s7, .L800BB4C8
/* 75C88 800BB488 26910030 */   addiu     $s1, $s4, 0x30
/* 75C8C 800BB48C 10000010 */  b          .L800BB4D0
/* 75C90 800BB490 8E300004 */   lw        $s0, 0x4($s1)
/* 75C94 800BB494 02808825 */  or         $s1, $s4, $zero
.L800BB498:
/* 75C98 800BB498 00C09025 */  or         $s2, $a2, $zero
/* 75C9C 800BB49C 1000000C */  b          .L800BB4D0
/* 75CA0 800BB4A0 8E900004 */   lw        $s0, 0x4($s4)
/* 75CA4 800BB4A4 26910010 */  addiu      $s1, $s4, 0x10
.L800BB4A8:
/* 75CA8 800BB4A8 00A09025 */  or         $s2, $a1, $zero
/* 75CAC 800BB4AC 10000008 */  b          .L800BB4D0
/* 75CB0 800BB4B0 8E300004 */   lw        $s0, 0x4($s1)
/* 75CB4 800BB4B4 26910020 */  addiu      $s1, $s4, 0x20
.L800BB4B8:
/* 75CB8 800BB4B8 00609025 */  or         $s2, $v1, $zero
/* 75CBC 800BB4BC 10000004 */  b          .L800BB4D0
/* 75CC0 800BB4C0 8E300004 */   lw        $s0, 0x4($s1)
/* 75CC4 800BB4C4 26910030 */  addiu      $s1, $s4, 0x30
.L800BB4C8:
/* 75CC8 800BB4C8 00409025 */  or         $s2, $v0, $zero
/* 75CCC 800BB4CC 8E300004 */  lw         $s0, 0x4($s1)
.L800BB4D0:
/* 75CD0 800BB4D0 52110013 */  beql       $s0, $s1, .L800BB520
/* 75CD4 800BB4D4 26730001 */   addiu     $s3, $s3, 0x1
.L800BB4D8:
/* 75CD8 800BB4D8 52000011 */  beql       $s0, $zero, .L800BB520
/* 75CDC 800BB4DC 26730001 */   addiu     $s3, $s3, 0x1
/* 75CE0 800BB4E0 0C02EDB7 */  jal        func_800BB6DC
/* 75CE4 800BB4E4 02002025 */   or        $a0, $s0, $zero
/* 75CE8 800BB4E8 02402025 */  or         $a0, $s2, $zero
/* 75CEC 800BB4EC 0C02F3EB */  jal        func_800BCFAC
/* 75CF0 800BB4F0 02002825 */   or        $a1, $s0, $zero
/* 75CF4 800BB4F4 8E300004 */  lw         $s0, 0x4($s1)
/* 75CF8 800BB4F8 3C068004 */  lui        $a2, %hi(D_80044760)
/* 75CFC 800BB4FC 3C058004 */  lui        $a1, %hi(D_80044770)
/* 75D00 800BB500 3C038004 */  lui        $v1, %hi(D_80044780)
/* 75D04 800BB504 3C028004 */  lui        $v0, %hi(D_80044790)
/* 75D08 800BB508 24424790 */  addiu      $v0, $v0, %lo(D_80044790)
/* 75D0C 800BB50C 24634780 */  addiu      $v1, $v1, %lo(D_80044780)
/* 75D10 800BB510 24A54770 */  addiu      $a1, $a1, %lo(D_80044770)
/* 75D14 800BB514 1611FFF0 */  bne        $s0, $s1, .L800BB4D8
/* 75D18 800BB518 24C64760 */   addiu     $a2, $a2, %lo(D_80044760)
/* 75D1C 800BB51C 26730001 */  addiu      $s3, $s3, 0x1
.L800BB520:
/* 75D20 800BB520 167EFFD2 */  bne        $s3, $fp, .L800BB46C
/* 75D24 800BB524 00000000 */   nop
/* 75D28 800BB528 8FBF003C */  lw         $ra, 0x3C($sp)
/* 75D2C 800BB52C AFB20040 */  sw         $s2, 0x40($sp)
/* 75D30 800BB530 AFB10048 */  sw         $s1, 0x48($sp)
/* 75D34 800BB534 8FB1001C */  lw         $s1, 0x1C($sp)
/* 75D38 800BB538 8FB20020 */  lw         $s2, 0x20($sp)
/* 75D3C 800BB53C 8FB00018 */  lw         $s0, 0x18($sp)
/* 75D40 800BB540 8FB30024 */  lw         $s3, 0x24($sp)
/* 75D44 800BB544 8FB40028 */  lw         $s4, 0x28($sp)
/* 75D48 800BB548 8FB5002C */  lw         $s5, 0x2C($sp)
/* 75D4C 800BB54C 8FB60030 */  lw         $s6, 0x30($sp)
/* 75D50 800BB550 8FB70034 */  lw         $s7, 0x34($sp)
/* 75D54 800BB554 8FBE0038 */  lw         $fp, 0x38($sp)
/* 75D58 800BB558 03E00008 */  jr         $ra
/* 75D5C 800BB55C 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_800BB560
/* 75D60 800BB560 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 75D64 800BB564 AFBF003C */  sw         $ra, 0x3C($sp)
/* 75D68 800BB568 AFB5002C */  sw         $s5, 0x2C($sp)
/* 75D6C 800BB56C AFB30024 */  sw         $s3, 0x24($sp)
/* 75D70 800BB570 00A09825 */  or         $s3, $a1, $zero
/* 75D74 800BB574 0080A825 */  or         $s5, $a0, $zero
/* 75D78 800BB578 AFBE0038 */  sw         $fp, 0x38($sp)
/* 75D7C 800BB57C AFB70034 */  sw         $s7, 0x34($sp)
/* 75D80 800BB580 AFB60030 */  sw         $s6, 0x30($sp)
/* 75D84 800BB584 AFB40028 */  sw         $s4, 0x28($sp)
/* 75D88 800BB588 AFB20020 */  sw         $s2, 0x20($sp)
/* 75D8C 800BB58C AFB1001C */  sw         $s1, 0x1C($sp)
/* 75D90 800BB590 0C02ED00 */  jal        func_800BB400
/* 75D94 800BB594 AFB00018 */   sw        $s0, 0x18($sp)
/* 75D98 800BB598 0000A025 */  or         $s4, $zero, $zero
/* 75D9C 800BB59C 1A600033 */  blez       $s3, .L800BB66C
/* 75DA0 800BB5A0 00008025 */   or        $s0, $zero, $zero
/* 75DA4 800BB5A4 241E0002 */  addiu      $fp, $zero, 0x2
/* 75DA8 800BB5A8 24170001 */  addiu      $s7, $zero, 0x1
/* 75DAC 800BB5AC 24160004 */  addiu      $s6, $zero, 0x4
/* 75DB0 800BB5B0 8FB20044 */  lw         $s2, 0x44($sp)
/* 75DB4 800BB5B4 8FB10048 */  lw         $s1, 0x48($sp)
.L800BB5B8:
/* 75DB8 800BB5B8 5296002D */  beql       $s4, $s6, .L800BB670
/* 75DBC 800BB5BC 8FBF003C */   lw        $ra, 0x3C($sp)
/* 75DC0 800BB5C0 12800009 */  beqz       $s4, .L800BB5E8
/* 75DC4 800BB5C4 00000000 */   nop
/* 75DC8 800BB5C8 1297000B */  beq        $s4, $s7, .L800BB5F8
/* 75DCC 800BB5CC 00000000 */   nop
/* 75DD0 800BB5D0 129E000D */  beq        $s4, $fp, .L800BB608
/* 75DD4 800BB5D4 24010003 */   addiu     $at, $zero, 0x3
/* 75DD8 800BB5D8 1281000F */  beq        $s4, $at, .L800BB618
/* 75DDC 800BB5DC 00000000 */   nop
/* 75DE0 800BB5E0 10000011 */  b          .L800BB628
/* 75DE4 800BB5E4 0213082A */   slt       $at, $s0, $s3
.L800BB5E8:
/* 75DE8 800BB5E8 3C118004 */  lui        $s1, %hi(D_80044760)
/* 75DEC 800BB5EC 26314760 */  addiu      $s1, $s1, %lo(D_80044760)
/* 75DF0 800BB5F0 1000000C */  b          .L800BB624
/* 75DF4 800BB5F4 02A09025 */   or        $s2, $s5, $zero
.L800BB5F8:
/* 75DF8 800BB5F8 3C118004 */  lui        $s1, %hi(D_80044770)
/* 75DFC 800BB5FC 26314770 */  addiu      $s1, $s1, %lo(D_80044770)
/* 75E00 800BB600 10000008 */  b          .L800BB624
/* 75E04 800BB604 26B20010 */   addiu     $s2, $s5, 0x10
.L800BB608:
/* 75E08 800BB608 3C118004 */  lui        $s1, %hi(D_80044780)
/* 75E0C 800BB60C 26314780 */  addiu      $s1, $s1, %lo(D_80044780)
/* 75E10 800BB610 10000004 */  b          .L800BB624
/* 75E14 800BB614 26B20020 */   addiu     $s2, $s5, 0x20
.L800BB618:
/* 75E18 800BB618 3C118004 */  lui        $s1, %hi(D_80044790)
/* 75E1C 800BB61C 26314790 */  addiu      $s1, $s1, %lo(D_80044790)
/* 75E20 800BB620 26B20030 */  addiu      $s2, $s5, 0x30
.L800BB624:
/* 75E24 800BB624 0213082A */  slt        $at, $s0, $s3
.L800BB628:
/* 75E28 800BB628 5020000C */  beql       $at, $zero, .L800BB65C
/* 75E2C 800BB62C 0213082A */   slt       $at, $s0, $s3
.L800BB630:
/* 75E30 800BB630 0C02F3FB */  jal        func_800BCFEC
/* 75E34 800BB634 02202025 */   or        $a0, $s1, $zero
/* 75E38 800BB638 10400007 */  beqz       $v0, .L800BB658
/* 75E3C 800BB63C 00402825 */   or        $a1, $v0, $zero
/* 75E40 800BB640 0C02F3EB */  jal        func_800BCFAC
/* 75E44 800BB644 02402025 */   or        $a0, $s2, $zero
/* 75E48 800BB648 26100001 */  addiu      $s0, $s0, 0x1
/* 75E4C 800BB64C 0213082A */  slt        $at, $s0, $s3
/* 75E50 800BB650 1420FFF7 */  bnez       $at, .L800BB630
/* 75E54 800BB654 00000000 */   nop
.L800BB658:
/* 75E58 800BB658 0213082A */  slt        $at, $s0, $s3
.L800BB65C:
/* 75E5C 800BB65C 1420FFD6 */  bnez       $at, .L800BB5B8
/* 75E60 800BB660 26940001 */   addiu     $s4, $s4, 0x1
/* 75E64 800BB664 AFB20044 */  sw         $s2, 0x44($sp)
/* 75E68 800BB668 AFB10048 */  sw         $s1, 0x48($sp)
.L800BB66C:
/* 75E6C 800BB66C 8FBF003C */  lw         $ra, 0x3C($sp)
.L800BB670:
/* 75E70 800BB670 8FB00018 */  lw         $s0, 0x18($sp)
/* 75E74 800BB674 8FB1001C */  lw         $s1, 0x1C($sp)
/* 75E78 800BB678 8FB20020 */  lw         $s2, 0x20($sp)
/* 75E7C 800BB67C 8FB30024 */  lw         $s3, 0x24($sp)
/* 75E80 800BB680 8FB40028 */  lw         $s4, 0x28($sp)
/* 75E84 800BB684 8FB5002C */  lw         $s5, 0x2C($sp)
/* 75E88 800BB688 8FB60030 */  lw         $s6, 0x30($sp)
/* 75E8C 800BB68C 8FB70034 */  lw         $s7, 0x34($sp)
/* 75E90 800BB690 8FBE0038 */  lw         $fp, 0x38($sp)
/* 75E94 800BB694 03E00008 */  jr         $ra
/* 75E98 800BB698 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_800BB69C
/* 75E9C 800BB69C 8CAE0000 */  lw         $t6, 0x0($a1)
/* 75EA0 800BB6A0 15C0000C */  bnez       $t6, .L800BB6D4
/* 75EA4 800BB6A4 00000000 */   nop
/* 75EA8 800BB6A8 ACA40000 */  sw         $a0, 0x0($a1)
/* 75EAC 800BB6AC 8C8F0004 */  lw         $t7, 0x4($a0)
/* 75EB0 800BB6B0 ACAF0004 */  sw         $t7, 0x4($a1)
/* 75EB4 800BB6B4 8C980004 */  lw         $t8, 0x4($a0)
/* 75EB8 800BB6B8 AF050000 */  sw         $a1, 0x0($t8)
/* 75EBC 800BB6BC 8C990008 */  lw         $t9, 0x8($a0)
/* 75EC0 800BB6C0 8C89000C */  lw         $t1, 0xC($a0)
/* 75EC4 800BB6C4 AC850004 */  sw         $a1, 0x4($a0)
/* 75EC8 800BB6C8 27280001 */  addiu      $t0, $t9, 0x1
/* 75ECC 800BB6CC AC880008 */  sw         $t0, 0x8($a0)
/* 75ED0 800BB6D0 ACA9000C */  sw         $t1, 0xC($a1)
.L800BB6D4:
/* 75ED4 800BB6D4 03E00008 */  jr         $ra
/* 75ED8 800BB6D8 00000000 */   nop

glabel func_800BB6DC
/* 75EDC 800BB6DC 8C820000 */  lw         $v0, 0x0($a0)
/* 75EE0 800BB6E0 10400007 */  beqz       $v0, .L800BB700
/* 75EE4 800BB6E4 00000000 */   nop
/* 75EE8 800BB6E8 8C8E0004 */  lw         $t6, 0x4($a0)
/* 75EEC 800BB6EC AC4E0004 */  sw         $t6, 0x4($v0)
/* 75EF0 800BB6F0 8C8F0000 */  lw         $t7, 0x0($a0)
/* 75EF4 800BB6F4 8C980004 */  lw         $t8, 0x4($a0)
/* 75EF8 800BB6F8 AF0F0000 */  sw         $t7, 0x0($t8)
/* 75EFC 800BB6FC AC800000 */  sw         $zero, 0x0($a0)
.L800BB700:
/* 75F00 800BB700 03E00008 */  jr         $ra
/* 75F04 800BB704 00000000 */   nop

glabel func_800BB708
/* 75F08 800BB708 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 75F0C 800BB70C AFBF0014 */  sw         $ra, 0x14($sp)
/* 75F10 800BB710 8C820004 */  lw         $v0, 0x4($a0)
/* 75F14 800BB714 00803025 */  or         $a2, $a0, $zero
/* 75F18 800BB718 14440003 */  bne        $v0, $a0, .L800BB728
/* 75F1C 800BB71C 00000000 */   nop
/* 75F20 800BB720 1000001D */  b          .L800BB798
/* 75F24 800BB724 00001025 */   or        $v0, $zero, $zero
.L800BB728:
/* 75F28 800BB728 1046000C */  beq        $v0, $a2, .L800BB75C
/* 75F2C 800BB72C 00402025 */   or        $a0, $v0, $zero
/* 75F30 800BB730 8C8E0008 */  lw         $t6, 0x8($a0)
.L800BB734:
/* 75F34 800BB734 8C580008 */  lw         $t8, 0x8($v0)
/* 75F38 800BB738 91CF0030 */  lbu        $t7, 0x30($t6)
/* 75F3C 800BB73C 93190030 */  lbu        $t9, 0x30($t8)
/* 75F40 800BB740 01F9082A */  slt        $at, $t7, $t9
/* 75F44 800BB744 54200003 */  bnel       $at, $zero, .L800BB754
/* 75F48 800BB748 8C420004 */   lw        $v0, 0x4($v0)
/* 75F4C 800BB74C 00402025 */  or         $a0, $v0, $zero
/* 75F50 800BB750 8C420004 */  lw         $v0, 0x4($v0)
.L800BB754:
/* 75F54 800BB754 5446FFF7 */  bnel       $v0, $a2, .L800BB734
/* 75F58 800BB758 8C8E0008 */   lw        $t6, 0x8($a0)
.L800BB75C:
/* 75F5C 800BB75C 54800004 */  bnel       $a0, $zero, .L800BB770
/* 75F60 800BB760 8C880008 */   lw        $t0, 0x8($a0)
/* 75F64 800BB764 1000000C */  b          .L800BB798
/* 75F68 800BB768 00001025 */   or        $v0, $zero, $zero
/* 75F6C 800BB76C 8C880008 */  lw         $t0, 0x8($a0)
.L800BB770:
/* 75F70 800BB770 91090030 */  lbu        $t1, 0x30($t0)
/* 75F74 800BB774 0125082A */  slt        $at, $t1, $a1
/* 75F78 800BB778 14200003 */  bnez       $at, .L800BB788
/* 75F7C 800BB77C 00000000 */   nop
/* 75F80 800BB780 10000005 */  b          .L800BB798
/* 75F84 800BB784 00001025 */   or        $v0, $zero, $zero
.L800BB788:
/* 75F88 800BB788 0C02EDB7 */  jal        func_800BB6DC
/* 75F8C 800BB78C AFA40018 */   sw        $a0, 0x18($sp)
/* 75F90 800BB790 8FA40018 */  lw         $a0, 0x18($sp)
/* 75F94 800BB794 8C820008 */  lw         $v0, 0x8($a0)
.L800BB798:
/* 75F98 800BB798 8FBF0014 */  lw         $ra, 0x14($sp)
/* 75F9C 800BB79C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 75FA0 800BB7A0 03E00008 */  jr         $ra
/* 75FA4 800BB7A4 00000000 */   nop

glabel func_800BB7A8
/* 75FA8 800BB7A8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 75FAC 800BB7AC AFBF0014 */  sw         $ra, 0x14($sp)
/* 75FB0 800BB7B0 240EFFFF */  addiu      $t6, $zero, -0x1
/* 75FB4 800BB7B4 AC8E0040 */  sw         $t6, 0x40($a0)
/* 75FB8 800BB7B8 AC850044 */  sw         $a1, 0x44($a0)
/* 75FBC 800BB7BC 8CAF004C */  lw         $t7, 0x4C($a1)
/* 75FC0 800BB7C0 240A0003 */  addiu      $t2, $zero, 0x3
/* 75FC4 800BB7C4 44802000 */  mtc1       $zero, $f4
/* 75FC8 800BB7C8 91F80005 */  lbu        $t8, 0x5($t7)
/* 75FCC 800BB7CC A0980030 */  sb         $t8, 0x30($a0)
/* 75FD0 800BB7D0 90A80000 */  lbu        $t0, 0x0($a1)
/* 75FD4 800BB7D4 8CAB004C */  lw         $t3, 0x4C($a1)
/* 75FD8 800BB7D8 A0AA0002 */  sb         $t2, 0x2($a1)
/* 75FDC 800BB7DC 35090004 */  ori        $t1, $t0, 0x4
/* 75FE0 800BB7E0 A0A90000 */  sb         $t1, 0x0($a1)
/* 75FE4 800BB7E4 ACA40040 */  sw         $a0, 0x40($a1)
/* 75FE8 800BB7E8 AD640038 */  sw         $a0, 0x38($t3)
/* 75FEC 800BB7EC 8CAC004C */  lw         $t4, 0x4C($a1)
/* 75FF0 800BB7F0 AD85003C */  sw         $a1, 0x3C($t4)
/* 75FF4 800BB7F4 E4A4002C */  swc1       $f4, 0x2C($a1)
/* 75FF8 800BB7F8 AFA5003C */  sw         $a1, 0x3C($sp)
/* 75FFC 800BB7FC 0C02EAA1 */  jal        func_800BAA84
/* 76000 800BB800 AFA40038 */   sw        $a0, 0x38($sp)
/* 76004 800BB804 8FA5003C */  lw         $a1, 0x3C($sp)
/* 76008 800BB808 8FA40038 */  lw         $a0, 0x38($sp)
/* 7600C 800BB80C 240100FF */  addiu      $at, $zero, 0xFF
/* 76010 800BB810 90A60001 */  lbu        $a2, 0x1($a1)
/* 76014 800BB814 248200B0 */  addiu      $v0, $a0, 0xB0
/* 76018 800BB818 54C10004 */  bnel       $a2, $at, .L800BB82C
/* 7601C 800BB81C 8CAE0048 */   lw        $t6, 0x48($a1)
/* 76020 800BB820 8CAD004C */  lw         $t5, 0x4C($a1)
/* 76024 800BB824 85A6001C */  lh         $a2, 0x1C($t5)
/* 76028 800BB828 8CAE0048 */  lw         $t6, 0x48($a1)
.L800BB82C:
/* 7602C 800BB82C 28C10080 */  slti       $at, $a2, 0x80
/* 76030 800BB830 14200005 */  bnez       $at, .L800BB848
/* 76034 800BB834 AC4E000C */   sw        $t6, 0xC($v0)
/* 76038 800BB838 90580001 */  lbu        $t8, 0x1($v0)
/* 7603C 800BB83C 37190002 */  ori        $t9, $t8, 0x2
/* 76040 800BB840 10000004 */  b          .L800BB854
/* 76044 800BB844 A0590001 */   sb        $t9, 0x1($v0)
.L800BB848:
/* 76048 800BB848 90480001 */  lbu        $t0, 0x1($v0)
/* 7604C 800BB84C 3109FFFD */  andi       $t1, $t0, 0xFFFD
/* 76050 800BB850 A0490001 */  sb         $t1, 0x1($v0)
.L800BB854:
/* 76054 800BB854 8C4A0000 */  lw         $t2, 0x0($v0)
/* 76058 800BB858 000A6380 */  sll        $t4, $t2, 14
/* 7605C 800BB85C 05830007 */  bgezl      $t4, .L800BB87C
/* 76060 800BB860 8CAD004C */   lw        $t5, 0x4C($a1)
/* 76064 800BB864 AFA2001C */  sw         $v0, 0x1C($sp)
/* 76068 800BB868 0C02EC52 */  jal        func_800BB148
/* 7606C 800BB86C AFA5003C */   sw        $a1, 0x3C($sp)
/* 76070 800BB870 8FA2001C */  lw         $v0, 0x1C($sp)
/* 76074 800BB874 8FA5003C */  lw         $a1, 0x3C($sp)
/* 76078 800BB878 8CAD004C */  lw         $t5, 0x4C($a1)
.L800BB87C:
/* 7607C 800BB87C 904B0000 */  lbu        $t3, 0x0($v0)
/* 76080 800BB880 91AE0006 */  lbu        $t6, 0x6($t5)
/* 76084 800BB884 316CFFFD */  andi       $t4, $t3, 0xFFFD
/* 76088 800BB888 904B0001 */  lbu        $t3, 0x1($v0)
/* 7608C 800BB88C A04E0002 */  sb         $t6, 0x2($v0)
/* 76090 800BB890 8CAF004C */  lw         $t7, 0x4C($a1)
/* 76094 800BB894 8DF80000 */  lw         $t8, 0x0($t7)
/* 76098 800BB898 0018C940 */  sll        $t9, $t8, 5
/* 7609C 800BB89C 001947C2 */  srl        $t0, $t9, 31
/* 760A0 800BB8A0 00084840 */  sll        $t1, $t0, 1
/* 760A4 800BB8A4 312A0002 */  andi       $t2, $t1, 0x2
/* 760A8 800BB8A8 014C6825 */  or         $t5, $t2, $t4
/* 760AC 800BB8AC A04D0000 */  sb         $t5, 0x0($v0)
/* 760B0 800BB8B0 8CAE004C */  lw         $t6, 0x4C($a1)
/* 760B4 800BB8B4 316AFF1F */  andi       $t2, $t3, 0xFF1F
/* 760B8 800BB8B8 91CF0007 */  lbu        $t7, 0x7($t6)
/* 760BC 800BB8BC 31F90003 */  andi       $t9, $t7, 0x3
/* 760C0 800BB8C0 00194940 */  sll        $t1, $t9, 5
/* 760C4 800BB8C4 012A6025 */  or         $t4, $t1, $t2
/* 760C8 800BB8C8 A04C0001 */  sb         $t4, 0x1($v0)
/* 760CC 800BB8CC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 760D0 800BB8D0 27BD0038 */  addiu      $sp, $sp, 0x38
/* 760D4 800BB8D4 03E00008 */  jr         $ra
/* 760D8 800BB8D8 00000000 */   nop

glabel func_800BB8DC
/* 760DC 800BB8DC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 760E0 800BB8E0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 760E4 800BB8E4 AFA40018 */  sw         $a0, 0x18($sp)
/* 760E8 800BB8E8 AFA5001C */  sw         $a1, 0x1C($sp)
/* 760EC 800BB8EC 0C02EC4A */  jal        func_800BB128
/* 760F0 800BB8F0 8C840044 */   lw        $a0, 0x44($a0)
/* 760F4 800BB8F4 8FAF001C */  lw         $t7, 0x1C($sp)
/* 760F8 800BB8F8 8FB80018 */  lw         $t8, 0x18($sp)
/* 760FC 800BB8FC AF0F0048 */  sw         $t7, 0x48($t8)
/* 76100 800BB900 8FBF0014 */  lw         $ra, 0x14($sp)
/* 76104 800BB904 27BD0018 */  addiu      $sp, $sp, 0x18
/* 76108 800BB908 03E00008 */  jr         $ra
/* 7610C 800BB90C 00000000 */   nop

glabel func_800BB910
/* 76110 800BB910 908F0058 */  lbu        $t7, 0x58($a0)
/* 76114 800BB914 240E0001 */  addiu      $t6, $zero, 0x1
/* 76118 800BB918 AC850048 */  sw         $a1, 0x48($a0)
/* 7611C 800BB91C A08E0030 */  sb         $t6, 0x30($a0)
/* 76120 800BB920 3C018004 */  lui        $at, %hi(D_80045538)
/* 76124 800BB924 C4245538 */  lwc1       $f4, %lo(D_80045538)($at)
/* 76128 800BB928 35F80010 */  ori        $t8, $t7, 0x10
/* 7612C 800BB92C A0980058 */  sb         $t8, 0x58($a0)
/* 76130 800BB930 03E00008 */  jr         $ra
/* 76134 800BB934 E4840068 */   swc1      $f4, 0x68($a0)

glabel func_800BB938
/* 76138 800BB938 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7613C 800BB93C AFBF0014 */  sw         $ra, 0x14($sp)
/* 76140 800BB940 AFA40020 */  sw         $a0, 0x20($sp)
/* 76144 800BB944 0C02F3FB */  jal        func_800BCFEC
/* 76148 800BB948 AFA50024 */   sw        $a1, 0x24($sp)
/* 7614C 800BB94C 10400008 */  beqz       $v0, .L800BB970
/* 76150 800BB950 AFA2001C */   sw        $v0, 0x1C($sp)
/* 76154 800BB954 00402025 */  or         $a0, $v0, $zero
/* 76158 800BB958 0C02EDEA */  jal        func_800BB7A8
/* 7615C 800BB95C 8FA50024 */   lw        $a1, 0x24($sp)
/* 76160 800BB960 8FA40020 */  lw         $a0, 0x20($sp)
/* 76164 800BB964 8FA5001C */  lw         $a1, 0x1C($sp)
/* 76168 800BB968 0C02EDA7 */  jal        func_800BB69C
/* 7616C 800BB96C 24840030 */   addiu     $a0, $a0, 0x30
.L800BB970:
/* 76170 800BB970 8FBF0014 */  lw         $ra, 0x14($sp)
/* 76174 800BB974 8FA2001C */  lw         $v0, 0x1C($sp)
/* 76178 800BB978 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7617C 800BB97C 03E00008 */  jr         $ra
/* 76180 800BB980 00000000 */   nop

glabel func_800BB984
/* 76184 800BB984 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 76188 800BB988 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7618C 800BB98C AFA40020 */  sw         $a0, 0x20($sp)
/* 76190 800BB990 AFA50024 */  sw         $a1, 0x24($sp)
/* 76194 800BB994 0C02F3FB */  jal        func_800BCFEC
/* 76198 800BB998 24840010 */   addiu     $a0, $a0, 0x10
/* 7619C 800BB99C 10400008 */  beqz       $v0, .L800BB9C0
/* 761A0 800BB9A0 AFA2001C */   sw        $v0, 0x1C($sp)
/* 761A4 800BB9A4 00402025 */  or         $a0, $v0, $zero
/* 761A8 800BB9A8 0C02EE44 */  jal        func_800BB910
/* 761AC 800BB9AC 8FA50024 */   lw        $a1, 0x24($sp)
/* 761B0 800BB9B0 8FA40020 */  lw         $a0, 0x20($sp)
/* 761B4 800BB9B4 8FA5001C */  lw         $a1, 0x1C($sp)
/* 761B8 800BB9B8 0C02F3EB */  jal        func_800BCFAC
/* 761BC 800BB9BC 24840020 */   addiu     $a0, $a0, 0x20
.L800BB9C0:
/* 761C0 800BB9C0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 761C4 800BB9C4 8FA2001C */  lw         $v0, 0x1C($sp)
/* 761C8 800BB9C8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 761CC 800BB9CC 03E00008 */  jr         $ra
/* 761D0 800BB9D0 00000000 */   nop

glabel func_800BB9D4
/* 761D4 800BB9D4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 761D8 800BB9D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 761DC 800BB9DC AFA40020 */  sw         $a0, 0x20($sp)
/* 761E0 800BB9E0 AFA50024 */  sw         $a1, 0x24($sp)
/* 761E4 800BB9E4 8CAF004C */  lw         $t7, 0x4C($a1)
/* 761E8 800BB9E8 24840030 */  addiu      $a0, $a0, 0x30
/* 761EC 800BB9EC 0C02EDC2 */  jal        func_800BB708
/* 761F0 800BB9F0 91E50005 */   lbu       $a1, 0x5($t7)
/* 761F4 800BB9F4 10400008 */  beqz       $v0, .L800BBA18
/* 761F8 800BB9F8 AFA2001C */   sw        $v0, 0x1C($sp)
/* 761FC 800BB9FC 00402025 */  or         $a0, $v0, $zero
/* 76200 800BBA00 0C02EE37 */  jal        func_800BB8DC
/* 76204 800BBA04 8FA50024 */   lw        $a1, 0x24($sp)
/* 76208 800BBA08 8FA40020 */  lw         $a0, 0x20($sp)
/* 7620C 800BBA0C 8FA5001C */  lw         $a1, 0x1C($sp)
/* 76210 800BBA10 0C02F3EB */  jal        func_800BCFAC
/* 76214 800BBA14 24840020 */   addiu     $a0, $a0, 0x20
.L800BBA18:
/* 76218 800BBA18 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7621C 800BBA1C 8FA2001C */  lw         $v0, 0x1C($sp)
/* 76220 800BBA20 27BD0020 */  addiu      $sp, $sp, 0x20
/* 76224 800BBA24 03E00008 */  jr         $ra
/* 76228 800BBA28 00000000 */   nop

glabel func_800BBA2C
/* 7622C 800BBA2C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 76230 800BBA30 AFBF001C */  sw         $ra, 0x1C($sp)
/* 76234 800BBA34 AFB00018 */  sw         $s0, 0x18($sp)
/* 76238 800BBA38 8C83004C */  lw         $v1, 0x4C($a0)
/* 7623C 800BBA3C 00808025 */  or         $s0, $a0, $zero
/* 76240 800BBA40 90620002 */  lbu        $v0, 0x2($v1)
/* 76244 800BBA44 304E0001 */  andi       $t6, $v0, 0x1
/* 76248 800BBA48 11C00016 */  beqz       $t6, .L800BBAA4
/* 7624C 800BBA4C 30590002 */   andi      $t9, $v0, 0x2
/* 76250 800BBA50 8C860040 */  lw         $a2, 0x40($a0)
/* 76254 800BBA54 10C00013 */  beqz       $a2, .L800BBAA4
/* 76258 800BBA58 00000000 */   nop
/* 7625C 800BBA5C 8CCF0040 */  lw         $t7, 0x40($a2)
/* 76260 800BBA60 148F0010 */  bne        $a0, $t7, .L800BBAA4
/* 76264 800BBA64 00000000 */   nop
/* 76268 800BBA68 8CD80048 */  lw         $t8, 0x48($a2)
/* 7626C 800BBA6C 2401FFFF */  addiu      $at, $zero, -0x1
/* 76270 800BBA70 00C02025 */  or         $a0, $a2, $zero
/* 76274 800BBA74 1701000B */  bne        $t8, $at, .L800BBAA4
/* 76278 800BBA78 02002825 */   or        $a1, $s0, $zero
/* 7627C 800BBA7C 0C02EE44 */  jal        func_800BB910
/* 76280 800BBA80 AFA60024 */   sw        $a2, 0x24($sp)
/* 76284 800BBA84 0C02EDB7 */  jal        func_800BB6DC
/* 76288 800BBA88 8FA40024 */   lw        $a0, 0x24($sp)
/* 7628C 800BBA8C 8FA50024 */  lw         $a1, 0x24($sp)
/* 76290 800BBA90 8CA4000C */  lw         $a0, 0xC($a1)
/* 76294 800BBA94 0C02F3EB */  jal        func_800BCFAC
/* 76298 800BBA98 24840020 */   addiu     $a0, $a0, 0x20
/* 7629C 800BBA9C 1000009A */  b          .L800BBD08
/* 762A0 800BBAA0 8FA20024 */   lw        $v0, 0x24($sp)
.L800BBAA4:
/* 762A4 800BBAA4 13200017 */  beqz       $t9, .L800BBB04
/* 762A8 800BBAA8 30480004 */   andi      $t0, $v0, 0x4
/* 762AC 800BBAAC 24640084 */  addiu      $a0, $v1, 0x84
/* 762B0 800BBAB0 0C02EE4E */  jal        func_800BB938
/* 762B4 800BBAB4 02002825 */   or        $a1, $s0, $zero
/* 762B8 800BBAB8 14400010 */  bnez       $v0, .L800BBAFC
/* 762BC 800BBABC 00403025 */   or        $a2, $v0, $zero
/* 762C0 800BBAC0 8E04004C */  lw         $a0, 0x4C($s0)
/* 762C4 800BBAC4 02002825 */  or         $a1, $s0, $zero
/* 762C8 800BBAC8 0C02EE61 */  jal        func_800BB984
/* 762CC 800BBACC 24840084 */   addiu     $a0, $a0, 0x84
/* 762D0 800BBAD0 1440000A */  bnez       $v0, .L800BBAFC
/* 762D4 800BBAD4 00403025 */   or        $a2, $v0, $zero
/* 762D8 800BBAD8 8E04004C */  lw         $a0, 0x4C($s0)
/* 762DC 800BBADC 02002825 */  or         $a1, $s0, $zero
/* 762E0 800BBAE0 0C02EE75 */  jal        func_800BB9D4
/* 762E4 800BBAE4 24840084 */   addiu     $a0, $a0, 0x84
/* 762E8 800BBAE8 14400004 */  bnez       $v0, .L800BBAFC
/* 762EC 800BBAEC 00403025 */   or        $a2, $v0, $zero
/* 762F0 800BBAF0 A2000002 */  sb         $zero, 0x2($s0)
/* 762F4 800BBAF4 10000084 */  b          .L800BBD08
/* 762F8 800BBAF8 00001025 */   or        $v0, $zero, $zero
.L800BBAFC:
/* 762FC 800BBAFC 10000082 */  b          .L800BBD08
/* 76300 800BBB00 00C01025 */   or        $v0, $a2, $zero
.L800BBB04:
/* 76304 800BBB04 1100002C */  beqz       $t0, .L800BBBB8
/* 76308 800BBB08 304C0008 */   andi      $t4, $v0, 0x8
/* 7630C 800BBB0C 24640084 */  addiu      $a0, $v1, 0x84
/* 76310 800BBB10 0C02EE4E */  jal        func_800BB938
/* 76314 800BBB14 02002825 */   or        $a1, $s0, $zero
/* 76318 800BBB18 14400025 */  bnez       $v0, .L800BBBB0
/* 7631C 800BBB1C 00403025 */   or        $a2, $v0, $zero
/* 76320 800BBB20 8E09004C */  lw         $t1, 0x4C($s0)
/* 76324 800BBB24 02002825 */  or         $a1, $s0, $zero
/* 76328 800BBB28 8D240044 */  lw         $a0, 0x44($t1)
/* 7632C 800BBB2C 0C02EE4E */  jal        func_800BB938
/* 76330 800BBB30 24840094 */   addiu     $a0, $a0, 0x94
/* 76334 800BBB34 1440001E */  bnez       $v0, .L800BBBB0
/* 76338 800BBB38 00403025 */   or        $a2, $v0, $zero
/* 7633C 800BBB3C 8E04004C */  lw         $a0, 0x4C($s0)
/* 76340 800BBB40 02002825 */  or         $a1, $s0, $zero
/* 76344 800BBB44 0C02EE61 */  jal        func_800BB984
/* 76348 800BBB48 24840084 */   addiu     $a0, $a0, 0x84
/* 7634C 800BBB4C 14400018 */  bnez       $v0, .L800BBBB0
/* 76350 800BBB50 00403025 */   or        $a2, $v0, $zero
/* 76354 800BBB54 8E0A004C */  lw         $t2, 0x4C($s0)
/* 76358 800BBB58 02002825 */  or         $a1, $s0, $zero
/* 7635C 800BBB5C 8D440044 */  lw         $a0, 0x44($t2)
/* 76360 800BBB60 0C02EE61 */  jal        func_800BB984
/* 76364 800BBB64 24840094 */   addiu     $a0, $a0, 0x94
/* 76368 800BBB68 14400011 */  bnez       $v0, .L800BBBB0
/* 7636C 800BBB6C 00403025 */   or        $a2, $v0, $zero
/* 76370 800BBB70 8E04004C */  lw         $a0, 0x4C($s0)
/* 76374 800BBB74 02002825 */  or         $a1, $s0, $zero
/* 76378 800BBB78 0C02EE75 */  jal        func_800BB9D4
/* 7637C 800BBB7C 24840084 */   addiu     $a0, $a0, 0x84
/* 76380 800BBB80 1440000B */  bnez       $v0, .L800BBBB0
/* 76384 800BBB84 00403025 */   or        $a2, $v0, $zero
/* 76388 800BBB88 8E0B004C */  lw         $t3, 0x4C($s0)
/* 7638C 800BBB8C 02002825 */  or         $a1, $s0, $zero
/* 76390 800BBB90 8D640044 */  lw         $a0, 0x44($t3)
/* 76394 800BBB94 0C02EE75 */  jal        func_800BB9D4
/* 76398 800BBB98 24840094 */   addiu     $a0, $a0, 0x94
/* 7639C 800BBB9C 14400004 */  bnez       $v0, .L800BBBB0
/* 763A0 800BBBA0 00403025 */   or        $a2, $v0, $zero
/* 763A4 800BBBA4 A2000002 */  sb         $zero, 0x2($s0)
/* 763A8 800BBBA8 10000057 */  b          .L800BBD08
/* 763AC 800BBBAC 00001025 */   or        $v0, $zero, $zero
.L800BBBB0:
/* 763B0 800BBBB0 10000055 */  b          .L800BBD08
/* 763B4 800BBBB4 00C01025 */   or        $v0, $a2, $zero
.L800BBBB8:
/* 763B8 800BBBB8 11800018 */  beqz       $t4, .L800BBC1C
/* 763BC 800BBBBC 24640084 */   addiu     $a0, $v1, 0x84
/* 763C0 800BBBC0 3C048004 */  lui        $a0, %hi(D_80044760)
/* 763C4 800BBBC4 24844760 */  addiu      $a0, $a0, %lo(D_80044760)
/* 763C8 800BBBC8 0C02EE4E */  jal        func_800BB938
/* 763CC 800BBBCC 02002825 */   or        $a1, $s0, $zero
/* 763D0 800BBBD0 14400010 */  bnez       $v0, .L800BBC14
/* 763D4 800BBBD4 00403025 */   or        $a2, $v0, $zero
/* 763D8 800BBBD8 3C048004 */  lui        $a0, %hi(D_80044760)
/* 763DC 800BBBDC 24844760 */  addiu      $a0, $a0, %lo(D_80044760)
/* 763E0 800BBBE0 0C02EE61 */  jal        func_800BB984
/* 763E4 800BBBE4 02002825 */   or        $a1, $s0, $zero
/* 763E8 800BBBE8 1440000A */  bnez       $v0, .L800BBC14
/* 763EC 800BBBEC 00403025 */   or        $a2, $v0, $zero
/* 763F0 800BBBF0 3C048004 */  lui        $a0, %hi(D_80044760)
/* 763F4 800BBBF4 24844760 */  addiu      $a0, $a0, %lo(D_80044760)
/* 763F8 800BBBF8 0C02EE75 */  jal        func_800BB9D4
/* 763FC 800BBBFC 02002825 */   or        $a1, $s0, $zero
/* 76400 800BBC00 14400004 */  bnez       $v0, .L800BBC14
/* 76404 800BBC04 00403025 */   or        $a2, $v0, $zero
/* 76408 800BBC08 A2000002 */  sb         $zero, 0x2($s0)
/* 7640C 800BBC0C 1000003E */  b          .L800BBD08
/* 76410 800BBC10 00001025 */   or        $v0, $zero, $zero
.L800BBC14:
/* 76414 800BBC14 1000003C */  b          .L800BBD08
/* 76418 800BBC18 00C01025 */   or        $v0, $a2, $zero
.L800BBC1C:
/* 7641C 800BBC1C 0C02EE4E */  jal        func_800BB938
/* 76420 800BBC20 02002825 */   or        $a1, $s0, $zero
/* 76424 800BBC24 14400037 */  bnez       $v0, .L800BBD04
/* 76428 800BBC28 00403025 */   or        $a2, $v0, $zero
/* 7642C 800BBC2C 8E0D004C */  lw         $t5, 0x4C($s0)
/* 76430 800BBC30 02002825 */  or         $a1, $s0, $zero
/* 76434 800BBC34 8DA40044 */  lw         $a0, 0x44($t5)
/* 76438 800BBC38 0C02EE4E */  jal        func_800BB938
/* 7643C 800BBC3C 24840094 */   addiu     $a0, $a0, 0x94
/* 76440 800BBC40 14400030 */  bnez       $v0, .L800BBD04
/* 76444 800BBC44 00403025 */   or        $a2, $v0, $zero
/* 76448 800BBC48 3C048004 */  lui        $a0, %hi(D_80044760)
/* 7644C 800BBC4C 24844760 */  addiu      $a0, $a0, %lo(D_80044760)
/* 76450 800BBC50 0C02EE4E */  jal        func_800BB938
/* 76454 800BBC54 02002825 */   or        $a1, $s0, $zero
/* 76458 800BBC58 1440002A */  bnez       $v0, .L800BBD04
/* 7645C 800BBC5C 00403025 */   or        $a2, $v0, $zero
/* 76460 800BBC60 8E04004C */  lw         $a0, 0x4C($s0)
/* 76464 800BBC64 02002825 */  or         $a1, $s0, $zero
/* 76468 800BBC68 0C02EE61 */  jal        func_800BB984
/* 7646C 800BBC6C 24840084 */   addiu     $a0, $a0, 0x84
/* 76470 800BBC70 14400024 */  bnez       $v0, .L800BBD04
/* 76474 800BBC74 00403025 */   or        $a2, $v0, $zero
/* 76478 800BBC78 8E0E004C */  lw         $t6, 0x4C($s0)
/* 7647C 800BBC7C 02002825 */  or         $a1, $s0, $zero
/* 76480 800BBC80 8DC40044 */  lw         $a0, 0x44($t6)
/* 76484 800BBC84 0C02EE61 */  jal        func_800BB984
/* 76488 800BBC88 24840094 */   addiu     $a0, $a0, 0x94
/* 7648C 800BBC8C 1440001D */  bnez       $v0, .L800BBD04
/* 76490 800BBC90 00403025 */   or        $a2, $v0, $zero
/* 76494 800BBC94 3C048004 */  lui        $a0, %hi(D_80044760)
/* 76498 800BBC98 24844760 */  addiu      $a0, $a0, %lo(D_80044760)
/* 7649C 800BBC9C 0C02EE61 */  jal        func_800BB984
/* 764A0 800BBCA0 02002825 */   or        $a1, $s0, $zero
/* 764A4 800BBCA4 14400017 */  bnez       $v0, .L800BBD04
/* 764A8 800BBCA8 00403025 */   or        $a2, $v0, $zero
/* 764AC 800BBCAC 8E04004C */  lw         $a0, 0x4C($s0)
/* 764B0 800BBCB0 02002825 */  or         $a1, $s0, $zero
/* 764B4 800BBCB4 0C02EE75 */  jal        func_800BB9D4
/* 764B8 800BBCB8 24840084 */   addiu     $a0, $a0, 0x84
/* 764BC 800BBCBC 14400011 */  bnez       $v0, .L800BBD04
/* 764C0 800BBCC0 00403025 */   or        $a2, $v0, $zero
/* 764C4 800BBCC4 8E0F004C */  lw         $t7, 0x4C($s0)
/* 764C8 800BBCC8 02002825 */  or         $a1, $s0, $zero
/* 764CC 800BBCCC 8DE40044 */  lw         $a0, 0x44($t7)
/* 764D0 800BBCD0 0C02EE75 */  jal        func_800BB9D4
/* 764D4 800BBCD4 24840094 */   addiu     $a0, $a0, 0x94
/* 764D8 800BBCD8 1440000A */  bnez       $v0, .L800BBD04
/* 764DC 800BBCDC 00403025 */   or        $a2, $v0, $zero
/* 764E0 800BBCE0 3C048004 */  lui        $a0, %hi(D_80044760)
/* 764E4 800BBCE4 24844760 */  addiu      $a0, $a0, %lo(D_80044760)
/* 764E8 800BBCE8 0C02EE75 */  jal        func_800BB9D4
/* 764EC 800BBCEC 02002825 */   or        $a1, $s0, $zero
/* 764F0 800BBCF0 14400004 */  bnez       $v0, .L800BBD04
/* 764F4 800BBCF4 00403025 */   or        $a2, $v0, $zero
/* 764F8 800BBCF8 A2000002 */  sb         $zero, 0x2($s0)
/* 764FC 800BBCFC 10000002 */  b          .L800BBD08
/* 76500 800BBD00 00001025 */   or        $v0, $zero, $zero
.L800BBD04:
/* 76504 800BBD04 00C01025 */  or         $v0, $a2, $zero
.L800BBD08:
/* 76508 800BBD08 8FBF001C */  lw         $ra, 0x1C($sp)
/* 7650C 800BBD0C 8FB00018 */  lw         $s0, 0x18($sp)
/* 76510 800BBD10 27BD0028 */  addiu      $sp, $sp, 0x28
/* 76514 800BBD14 03E00008 */  jr         $ra
/* 76518 800BBD18 00000000 */   nop

glabel func_800BBD1C
/* 7651C 800BBD1C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 76520 800BBD20 AFB4002C */  sw         $s4, 0x2C($sp)
/* 76524 800BBD24 3C148004 */  lui        $s4, %hi(D_80045548)
/* 76528 800BBD28 26945548 */  addiu      $s4, $s4, %lo(D_80045548)
/* 7652C 800BBD2C 8E8E0000 */  lw         $t6, 0x0($s4)
/* 76530 800BBD30 AFB10020 */  sw         $s1, 0x20($sp)
/* 76534 800BBD34 AFBF003C */  sw         $ra, 0x3C($sp)
/* 76538 800BBD38 AFB70038 */  sw         $s7, 0x38($sp)
/* 7653C 800BBD3C AFB60034 */  sw         $s6, 0x34($sp)
/* 76540 800BBD40 AFB50030 */  sw         $s5, 0x30($sp)
/* 76544 800BBD44 AFB30028 */  sw         $s3, 0x28($sp)
/* 76548 800BBD48 AFB20024 */  sw         $s2, 0x24($sp)
/* 7654C 800BBD4C AFB0001C */  sw         $s0, 0x1C($sp)
/* 76550 800BBD50 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 76554 800BBD54 19C0002A */  blez       $t6, .L800BBE00
/* 76558 800BBD58 00008825 */   or        $s1, $zero, $zero
/* 7655C 800BBD5C 3C178004 */  lui        $s7, %hi(D_8003E570)
/* 76560 800BBD60 3C16800F */  lui        $s6, %hi(D_800ED010)
/* 76564 800BBD64 3C158004 */  lui        $s5, %hi(D_8003FCC0)
/* 76568 800BBD68 4480A000 */  mtc1       $zero, $f20
/* 7656C 800BBD6C 26B5FCC0 */  addiu      $s5, $s5, %lo(D_8003FCC0)
/* 76570 800BBD70 26D6D010 */  addiu      $s6, $s6, %lo(D_800ED010)
/* 76574 800BBD74 26F7E570 */  addiu      $s7, $s7, %lo(D_8003E570)
/* 76578 800BBD78 00009025 */  or         $s2, $zero, $zero
/* 7657C 800BBD7C 2413FFFF */  addiu      $s3, $zero, -0x1
/* 76580 800BBD80 8EAF0000 */  lw         $t7, 0x0($s5)
.L800BBD84:
/* 76584 800BBD84 8EC10000 */  lw         $at, 0x0($s6)
/* 76588 800BBD88 02E02025 */  or         $a0, $s7, $zero
/* 7658C 800BBD8C 024F8021 */  addu       $s0, $s2, $t7
/* 76590 800BBD90 AE0100B0 */  sw         $at, 0xB0($s0)
/* 76594 800BBD94 8ED90004 */  lw         $t9, 0x4($s6)
/* 76598 800BBD98 24050110 */  addiu      $a1, $zero, 0x110
/* 7659C 800BBD9C AE1900B4 */  sw         $t9, 0xB4($s0)
/* 765A0 800BBDA0 8EC10008 */  lw         $at, 0x8($s6)
/* 765A4 800BBDA4 AE0100B8 */  sw         $at, 0xB8($s0)
/* 765A8 800BBDA8 8ED9000C */  lw         $t9, 0xC($s6)
/* 765AC 800BBDAC A2000030 */  sb         $zero, 0x30($s0)
/* 765B0 800BBDB0 AE130044 */  sw         $s3, 0x44($s0)
/* 765B4 800BBDB4 AE130048 */  sw         $s3, 0x48($s0)
/* 765B8 800BBDB8 AE130040 */  sw         $s3, 0x40($s0)
/* 765BC 800BBDBC A2000031 */  sb         $zero, 0x31($s0)
/* 765C0 800BBDC0 E6140054 */  swc1       $f20, 0x54($s0)
/* 765C4 800BBDC4 A6000034 */  sh         $zero, 0x34($s0)
/* 765C8 800BBDC8 A2000059 */  sb         $zero, 0x59($s0)
/* 765CC 800BBDCC A2000058 */  sb         $zero, 0x58($s0)
/* 765D0 800BBDD0 A20000A0 */  sb         $zero, 0xA0($s0)
/* 765D4 800BBDD4 E6140080 */  swc1       $f20, 0x80($s0)
/* 765D8 800BBDD8 E6140084 */  swc1       $f20, 0x84($s0)
/* 765DC 800BBDDC 0C02DDD8 */  jal        func_800B7760
/* 765E0 800BBDE0 AE1900BC */   sw        $t9, 0xBC($s0)
/* 765E4 800BBDE4 AE02001C */  sw         $v0, 0x1C($s0)
/* 765E8 800BBDE8 8E880000 */  lw         $t0, 0x0($s4)
/* 765EC 800BBDEC 26310001 */  addiu      $s1, $s1, 0x1
/* 765F0 800BBDF0 265200C0 */  addiu      $s2, $s2, 0xC0
/* 765F4 800BBDF4 0228082A */  slt        $at, $s1, $t0
/* 765F8 800BBDF8 5420FFE2 */  bnel       $at, $zero, .L800BBD84
/* 765FC 800BBDFC 8EAF0000 */   lw        $t7, 0x0($s5)
.L800BBE00:
/* 76600 800BBE00 8FBF003C */  lw         $ra, 0x3C($sp)
/* 76604 800BBE04 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 76608 800BBE08 8FB0001C */  lw         $s0, 0x1C($sp)
/* 7660C 800BBE0C 8FB10020 */  lw         $s1, 0x20($sp)
/* 76610 800BBE10 8FB20024 */  lw         $s2, 0x24($sp)
/* 76614 800BBE14 8FB30028 */  lw         $s3, 0x28($sp)
/* 76618 800BBE18 8FB4002C */  lw         $s4, 0x2C($sp)
/* 7661C 800BBE1C 8FB50030 */  lw         $s5, 0x30($sp)
/* 76620 800BBE20 8FB60034 */  lw         $s6, 0x34($sp)
/* 76624 800BBE24 8FB70038 */  lw         $s7, 0x38($sp)
/* 76628 800BBE28 03E00008 */  jr         $ra
/* 7662C 800BBE2C 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_800BBE30
/* 76630 800BBE30 8C820000 */  lw         $v0, 0x0($a0)
/* 76634 800BBE34 00003025 */  or         $a2, $zero, $zero
/* 76638 800BBE38 00803825 */  or         $a3, $a0, $zero
/* 7663C 800BBE3C 00027A40 */  sll        $t7, $v0, 9
/* 76640 800BBE40 05E00003 */  bltz       $t7, .L800BBE50
/* 76644 800BBE44 24090010 */   addiu     $t1, $zero, 0x10
/* 76648 800BBE48 50A00015 */  beql       $a1, $zero, .L800BBEA0
/* 7664C 800BBE4C 00027280 */   sll       $t6, $v0, 10
.L800BBE50:
/* 76650 800BBE50 C4840024 */  lwc1       $f4, 0x24($a0)
/* 76654 800BBE54 C4860020 */  lwc1       $f6, 0x20($a0)
/* 76658 800BBE58 8C820044 */  lw         $v0, 0x44($a0)
/* 7665C 800BBE5C 46062202 */  mul.s      $f8, $f4, $f6
/* 76660 800BBE60 C44A002C */  lwc1       $f10, 0x2C($v0)
/* 76664 800BBE64 8C580000 */  lw         $t8, 0x0($v0)
/* 76668 800BBE68 00185080 */  sll        $t2, $t8, 2
/* 7666C 800BBE6C 460A4002 */  mul.s      $f0, $f8, $f10
/* 76670 800BBE70 05430009 */  bgezl      $t2, .L800BBE98
/* 76674 800BBE74 E480002C */   swc1      $f0, 0x2C($a0)
/* 76678 800BBE78 908B0003 */  lbu        $t3, 0x3($a0)
/* 7667C 800BBE7C 316C0020 */  andi       $t4, $t3, 0x20
/* 76680 800BBE80 51800005 */  beql       $t4, $zero, .L800BBE98
/* 76684 800BBE84 E480002C */   swc1      $f0, 0x2C($a0)
/* 76688 800BBE88 C4500024 */  lwc1       $f16, 0x24($v0)
/* 7668C 800BBE8C 46008002 */  mul.s      $f0, $f16, $f0
/* 76690 800BBE90 00000000 */  nop
/* 76694 800BBE94 E480002C */  swc1       $f0, 0x2C($a0)
.L800BBE98:
/* 76698 800BBE98 8C820000 */  lw         $v0, 0x0($a0)
/* 7669C 800BBE9C 00027280 */  sll        $t6, $v0, 10
.L800BBEA0:
/* 766A0 800BBEA0 05C10007 */  bgez       $t6, .L800BBEC0
/* 766A4 800BBEA4 24080080 */   addiu     $t0, $zero, 0x80
/* 766A8 800BBEA8 908F0009 */  lbu        $t7, 0x9($a0)
/* 766AC 800BBEAC 9098000A */  lbu        $t8, 0xA($a0)
/* 766B0 800BBEB0 01F80019 */  multu      $t7, $t8
/* 766B4 800BBEB4 0000C812 */  mflo       $t9
/* 766B8 800BBEB8 AC990028 */  sw         $t9, 0x28($a0)
/* 766BC 800BBEBC 00000000 */  nop
.L800BBEC0:
/* 766C0 800BBEC0 8CE30048 */  lw         $v1, 0x48($a3)
/* 766C4 800BBEC4 24C60004 */  addiu      $a2, $a2, 0x4
/* 766C8 800BBEC8 1060003E */  beqz       $v1, .L800BBFC4
/* 766CC 800BBECC 00000000 */   nop
/* 766D0 800BBED0 8C620000 */  lw         $v0, 0x0($v1)
/* 766D4 800BBED4 000257C2 */  srl        $t2, $v0, 31
/* 766D8 800BBED8 1140003A */  beqz       $t2, .L800BBFC4
/* 766DC 800BBEDC 00000000 */   nop
/* 766E0 800BBEE0 8C6B0040 */  lw         $t3, 0x40($v1)
/* 766E4 800BBEE4 00026940 */  sll        $t5, $v0, 5
/* 766E8 800BBEE8 11600036 */  beqz       $t3, .L800BBFC4
/* 766EC 800BBEEC 00000000 */   nop
/* 766F0 800BBEF0 05A30017 */  bgezl      $t5, .L800BBF50
/* 766F4 800BBEF4 80980001 */   lb        $t8, 0x1($a0)
/* 766F8 800BBEF8 C4720024 */  lwc1       $f18, 0x24($v1)
/* 766FC 800BBEFC C4840030 */  lwc1       $f4, 0x30($a0)
/* 76700 800BBF00 C4680028 */  lwc1       $f8, 0x28($v1)
/* 76704 800BBF04 906E0005 */  lbu        $t6, 0x5($v1)
/* 76708 800BBF08 46049182 */  mul.s      $f6, $f18, $f4
/* 7670C 800BBF0C 906D0000 */  lbu        $t5, 0x0($v1)
/* 76710 800BBF10 E4660030 */  swc1       $f6, 0x30($v1)
/* 76714 800BBF14 C48A002C */  lwc1       $f10, 0x2C($a0)
/* 76718 800BBF18 460A4402 */  mul.s      $f16, $f8, $f10
/* 7671C 800BBF1C E470002C */  swc1       $f16, 0x2C($v1)
/* 76720 800BBF20 908F000A */  lbu        $t7, 0xA($a0)
/* 76724 800BBF24 8C8A0028 */  lw         $t2, 0x28($a0)
/* 76728 800BBF28 010FC023 */  subu       $t8, $t0, $t7
/* 7672C 800BBF2C 01D80019 */  multu      $t6, $t8
/* 76730 800BBF30 31AFFFFB */  andi       $t7, $t5, 0xFFFB
/* 76734 800BBF34 A06F0000 */  sb         $t7, 0x0($v1)
/* 76738 800BBF38 0000C812 */  mflo       $t9
/* 7673C 800BBF3C 01595821 */  addu       $t3, $t2, $t9
/* 76740 800BBF40 000B61C3 */  sra        $t4, $t3, 7
/* 76744 800BBF44 1000001F */  b          .L800BBFC4
/* 76748 800BBF48 A06C0006 */   sb        $t4, 0x6($v1)
/* 7674C 800BBF4C 80980001 */  lb         $t8, 0x1($a0)
.L800BBF50:
/* 76750 800BBF50 07030006 */  bgezl      $t8, .L800BBF6C
/* 76754 800BBF54 8C820000 */   lw        $v0, 0x0($a0)
/* 76758 800BBF58 C4720024 */  lwc1       $f18, 0x24($v1)
/* 7675C 800BBF5C C4840030 */  lwc1       $f4, 0x30($a0)
/* 76760 800BBF60 46049182 */  mul.s      $f6, $f18, $f4
/* 76764 800BBF64 E4660030 */  swc1       $f6, 0x30($v1)
/* 76768 800BBF68 8C820000 */  lw         $v0, 0x0($a0)
.L800BBF6C:
/* 7676C 800BBF6C 0002CA40 */  sll        $t9, $v0, 9
/* 76770 800BBF70 07220004 */  bltzl      $t9, .L800BBF84
/* 76774 800BBF74 C4680028 */   lwc1      $f8, 0x28($v1)
/* 76778 800BBF78 50A00007 */  beql       $a1, $zero, .L800BBF98
/* 7677C 800BBF7C 00026280 */   sll       $t4, $v0, 10
/* 76780 800BBF80 C4680028 */  lwc1       $f8, 0x28($v1)
.L800BBF84:
/* 76784 800BBF84 C48A002C */  lwc1       $f10, 0x2C($a0)
/* 76788 800BBF88 460A4402 */  mul.s      $f16, $f8, $f10
/* 7678C 800BBF8C E470002C */  swc1       $f16, 0x2C($v1)
/* 76790 800BBF90 8C820000 */  lw         $v0, 0x0($a0)
/* 76794 800BBF94 00026280 */  sll        $t4, $v0, 10
.L800BBF98:
/* 76798 800BBF98 0581000A */  bgez       $t4, .L800BBFC4
/* 7679C 800BBF9C 00000000 */   nop
/* 767A0 800BBFA0 908F000A */  lbu        $t7, 0xA($a0)
/* 767A4 800BBFA4 906D0005 */  lbu        $t5, 0x5($v1)
/* 767A8 800BBFA8 8C8A0028 */  lw         $t2, 0x28($a0)
/* 767AC 800BBFAC 010F7023 */  subu       $t6, $t0, $t7
/* 767B0 800BBFB0 01AE0019 */  multu      $t5, $t6
/* 767B4 800BBFB4 0000C012 */  mflo       $t8
/* 767B8 800BBFB8 0158C821 */  addu       $t9, $t2, $t8
/* 767BC 800BBFBC 001959C3 */  sra        $t3, $t9, 7
/* 767C0 800BBFC0 A06B0006 */  sb         $t3, 0x6($v1)
.L800BBFC4:
/* 767C4 800BBFC4 14C9FFBE */  bne        $a2, $t1, .L800BBEC0
/* 767C8 800BBFC8 24E70004 */   addiu     $a3, $a3, 0x4
/* 767CC 800BBFCC 03E00008 */  jr         $ra
/* 767D0 800BBFD0 A0800001 */   sb        $zero, 0x1($a0)

glabel func_800BBFD4
/* 767D4 800BBFD4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 767D8 800BBFD8 AFBF002C */  sw         $ra, 0x2C($sp)
/* 767DC 800BBFDC AFB50028 */  sw         $s5, 0x28($sp)
/* 767E0 800BBFE0 AFB40024 */  sw         $s4, 0x24($sp)
/* 767E4 800BBFE4 AFB30020 */  sw         $s3, 0x20($sp)
/* 767E8 800BBFE8 AFB2001C */  sw         $s2, 0x1C($sp)
/* 767EC 800BBFEC AFB10018 */  sw         $s1, 0x18($sp)
/* 767F0 800BBFF0 AFB00014 */  sw         $s0, 0x14($sp)
/* 767F4 800BBFF4 948E0010 */  lhu        $t6, 0x10($a0)
/* 767F8 800BBFF8 3C158004 */  lui        $s5, %hi(D_80044688)
/* 767FC 800BBFFC 00809825 */  or         $s3, $a0, $zero
/* 76800 800BC000 11C00025 */  beqz       $t6, .L800BC098
/* 76804 800BC004 26B54688 */   addiu     $s5, $s5, %lo(D_80044688)
/* 76808 800BC008 C4840018 */  lwc1       $f4, 0x18($a0)
/* 7680C 800BC00C C486001C */  lwc1       $f6, 0x1C($a0)
/* 76810 800BC010 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 76814 800BC014 44811000 */  mtc1       $at, $f2
/* 76818 800BC018 46062200 */  add.s      $f8, $f4, $f6
/* 7681C 800BC01C 90980000 */  lbu        $t8, 0x0($a0)
/* 76820 800BC020 E4880018 */  swc1       $f8, 0x18($a0)
/* 76824 800BC024 C4800018 */  lwc1       $f0, 0x18($a0)
/* 76828 800BC028 37190004 */  ori        $t9, $t8, 0x4
/* 7682C 800BC02C A0990000 */  sb         $t9, 0x0($a0)
/* 76830 800BC030 4600103C */  c.lt.s     $f2, $f0
/* 76834 800BC034 00000000 */  nop
/* 76838 800BC038 45020004 */  bc1fl      .L800BC04C
/* 7683C 800BC03C 44801000 */   mtc1      $zero, $f2
/* 76840 800BC040 E4820018 */  swc1       $f2, 0x18($a0)
/* 76844 800BC044 C4800018 */  lwc1       $f0, 0x18($a0)
/* 76848 800BC048 44801000 */  mtc1       $zero, $f2
.L800BC04C:
/* 7684C 800BC04C 00000000 */  nop
/* 76850 800BC050 4602003C */  c.lt.s     $f0, $f2
/* 76854 800BC054 00000000 */  nop
/* 76858 800BC058 45020003 */  bc1fl      .L800BC068
/* 7685C 800BC05C 96680010 */   lhu       $t0, 0x10($s3)
/* 76860 800BC060 E6620018 */  swc1       $f2, 0x18($s3)
/* 76864 800BC064 96680010 */  lhu        $t0, 0x10($s3)
.L800BC068:
/* 76868 800BC068 2509FFFF */  addiu      $t1, $t0, -0x1
/* 7686C 800BC06C 312AFFFF */  andi       $t2, $t1, 0xFFFF
/* 76870 800BC070 15400009 */  bnez       $t2, .L800BC098
/* 76874 800BC074 A6690010 */   sh        $t1, 0x10($s3)
/* 76878 800BC078 926B0001 */  lbu        $t3, 0x1($s3)
/* 7687C 800BC07C 24010002 */  addiu      $at, $zero, 0x2
/* 76880 800BC080 55610006 */  bnel       $t3, $at, .L800BC09C
/* 76884 800BC084 8E6C0000 */   lw        $t4, 0x0($s3)
/* 76888 800BC088 0C02F3B8 */  jal        func_800BCEE0
/* 7688C 800BC08C 02602025 */   or        $a0, $s3, $zero
/* 76890 800BC090 10000020 */  b          .L800BC114
/* 76894 800BC094 8FBF002C */   lw        $ra, 0x2C($sp)
.L800BC098:
/* 76898 800BC098 8E6C0000 */  lw         $t4, 0x0($s3)
.L800BC09C:
/* 7689C 800BC09C 00008025 */  or         $s0, $zero, $zero
/* 768A0 800BC0A0 02608825 */  or         $s1, $s3, $zero
/* 768A4 800BC0A4 000C7140 */  sll        $t6, $t4, 5
/* 768A8 800BC0A8 05C10005 */  bgez       $t6, .L800BC0C0
/* 768AC 800BC0AC 24140040 */   addiu     $s4, $zero, 0x40
/* 768B0 800BC0B0 C66A0018 */  lwc1       $f10, 0x18($s3)
/* 768B4 800BC0B4 C6700028 */  lwc1       $f16, 0x28($s3)
/* 768B8 800BC0B8 46105482 */  mul.s      $f18, $f10, $f16
/* 768BC 800BC0BC E672002C */  swc1       $f18, 0x2C($s3)
.L800BC0C0:
/* 768C0 800BC0C0 24120001 */  addiu      $s2, $zero, 0x1
.L800BC0C4:
/* 768C4 800BC0C4 8E240030 */  lw         $a0, 0x30($s1)
/* 768C8 800BC0C8 02A47826 */  xor        $t7, $s5, $a0
/* 768CC 800BC0CC 000F782B */  sltu       $t7, $zero, $t7
/* 768D0 800BC0D0 564F000A */  bnel       $s2, $t7, .L800BC0FC
/* 768D4 800BC0D4 26100004 */   addiu     $s0, $s0, 0x4
/* 768D8 800BC0D8 8C980000 */  lw         $t8, 0x0($a0)
/* 768DC 800BC0DC 0018CFC2 */  srl        $t9, $t8, 31
/* 768E0 800BC0E0 56590006 */  bnel       $s2, $t9, .L800BC0FC
/* 768E4 800BC0E4 26100004 */   addiu     $s0, $s0, 0x4
/* 768E8 800BC0E8 8E650000 */  lw         $a1, 0x0($s3)
/* 768EC 800BC0EC 00054140 */  sll        $t0, $a1, 5
/* 768F0 800BC0F0 0C02EF8C */  jal        func_800BBE30
/* 768F4 800BC0F4 00082FC2 */   srl       $a1, $t0, 31
/* 768F8 800BC0F8 26100004 */  addiu      $s0, $s0, 0x4
.L800BC0FC:
/* 768FC 800BC0FC 1614FFF1 */  bne        $s0, $s4, .L800BC0C4
/* 76900 800BC100 26310004 */   addiu     $s1, $s1, 0x4
/* 76904 800BC104 926A0000 */  lbu        $t2, 0x0($s3)
/* 76908 800BC108 314BFFFB */  andi       $t3, $t2, 0xFFFB
/* 7690C 800BC10C A26B0000 */  sb         $t3, 0x0($s3)
/* 76910 800BC110 8FBF002C */  lw         $ra, 0x2C($sp)
.L800BC114:
/* 76914 800BC114 8FB00014 */  lw         $s0, 0x14($sp)
/* 76918 800BC118 8FB10018 */  lw         $s1, 0x18($sp)
/* 7691C 800BC11C 8FB2001C */  lw         $s2, 0x1C($sp)
/* 76920 800BC120 8FB30020 */  lw         $s3, 0x20($sp)
/* 76924 800BC124 8FB40024 */  lw         $s4, 0x24($sp)
/* 76928 800BC128 8FB50028 */  lw         $s5, 0x28($sp)
/* 7692C 800BC12C 03E00008 */  jr         $ra
/* 76930 800BC130 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_800BC134
/* 76934 800BC134 C4840004 */  lwc1       $f4, 0x4($a0)
/* 76938 800BC138 C4860008 */  lwc1       $f6, 0x8($a0)
/* 7693C 800BC13C 24020001 */  addiu      $v0, $zero, 0x1
/* 76940 800BC140 3C014F00 */  lui        $at, (0x4F000000 >> 16)
/* 76944 800BC144 46062200 */  add.s      $f8, $f4, $f6
/* 76948 800BC148 E4880004 */  swc1       $f8, 0x4($a0)
/* 7694C 800BC14C 444EF800 */  cfc1       $t6, $31
/* 76950 800BC150 44C2F800 */  ctc1       $v0, $31
/* 76954 800BC154 C48A0004 */  lwc1       $f10, 0x4($a0)
/* 76958 800BC158 46005424 */  cvt.w.s    $f16, $f10
/* 7695C 800BC15C 4442F800 */  cfc1       $v0, $31
/* 76960 800BC160 00000000 */  nop
/* 76964 800BC164 30420078 */  andi       $v0, $v0, 0x78
/* 76968 800BC168 50400013 */  beql       $v0, $zero, .L800BC1B8
/* 7696C 800BC16C 44028000 */   mfc1      $v0, $f16
/* 76970 800BC170 44818000 */  mtc1       $at, $f16
/* 76974 800BC174 24020001 */  addiu      $v0, $zero, 0x1
/* 76978 800BC178 46105401 */  sub.s      $f16, $f10, $f16
/* 7697C 800BC17C 44C2F800 */  ctc1       $v0, $31
/* 76980 800BC180 00000000 */  nop
/* 76984 800BC184 46008424 */  cvt.w.s    $f16, $f16
/* 76988 800BC188 4442F800 */  cfc1       $v0, $31
/* 7698C 800BC18C 00000000 */  nop
/* 76990 800BC190 30420078 */  andi       $v0, $v0, 0x78
/* 76994 800BC194 14400005 */  bnez       $v0, .L800BC1AC
/* 76998 800BC198 00000000 */   nop
/* 7699C 800BC19C 44028000 */  mfc1       $v0, $f16
/* 769A0 800BC1A0 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 769A4 800BC1A4 10000007 */  b          .L800BC1C4
/* 769A8 800BC1A8 00411025 */   or        $v0, $v0, $at
.L800BC1AC:
/* 769AC 800BC1AC 10000005 */  b          .L800BC1C4
/* 769B0 800BC1B0 2402FFFF */   addiu     $v0, $zero, -0x1
/* 769B4 800BC1B4 44028000 */  mfc1       $v0, $f16
.L800BC1B8:
/* 769B8 800BC1B8 00000000 */  nop
/* 769BC 800BC1BC 0440FFFB */  bltz       $v0, .L800BC1AC
/* 769C0 800BC1C0 00000000 */   nop
.L800BC1C4:
/* 769C4 800BC1C4 44CEF800 */  ctc1       $t6, $31
/* 769C8 800BC1C8 2C410080 */  sltiu      $at, $v0, 0x80
/* 769CC 800BC1CC 54200003 */  bnel       $at, $zero, .L800BC1DC
/* 769D0 800BC1D0 3C013F80 */   lui       $at, (0x3F800000 >> 16)
/* 769D4 800BC1D4 2402007F */  addiu      $v0, $zero, 0x7F
/* 769D8 800BC1D8 3C013F80 */  lui        $at, (0x3F800000 >> 16)
.L800BC1DC:
/* 769DC 800BC1DC 44816000 */  mtc1       $at, $f12
/* 769E0 800BC1E0 3C01800F */  lui        $at, %hi(D_800ECBE4)
/* 769E4 800BC1E4 00027880 */  sll        $t7, $v0, 2
/* 769E8 800BC1E8 002F0821 */  addu       $at, $at, $t7
/* 769EC 800BC1EC C432CBE4 */  lwc1       $f18, %lo(D_800ECBE4)($at)
/* 769F0 800BC1F0 C486000C */  lwc1       $f6, 0xC($a0)
/* 769F4 800BC1F4 460C9101 */  sub.s      $f4, $f18, $f12
/* 769F8 800BC1F8 46062202 */  mul.s      $f8, $f4, $f6
/* 769FC 800BC1FC 460C4080 */  add.s      $f2, $f8, $f12
/* 76A00 800BC200 03E00008 */  jr         $ra
/* 76A04 800BC204 46001006 */   mov.s     $f0, $f2

glabel func_800BC208
/* 76A08 800BC208 C4840010 */  lwc1       $f4, 0x10($a0)
/* 76A0C 800BC20C 8C8E0004 */  lw         $t6, 0x4($a0)
/* 76A10 800BC210 8C8A0008 */  lw         $t2, 0x8($a0)
/* 76A14 800BC214 4600218D */  trunc.w.s  $f6, $f4
/* 76A18 800BC218 44183000 */  mfc1       $t8, $f6
/* 76A1C 800BC21C 00000000 */  nop
/* 76A20 800BC220 01D8C821 */  addu       $t9, $t6, $t8
/* 76A24 800BC224 00194282 */  srl        $t0, $t9, 10
/* 76A28 800BC228 3109003F */  andi       $t1, $t0, 0x3F
/* 76A2C 800BC22C 00095840 */  sll        $t3, $t1, 1
/* 76A30 800BC230 AC990004 */  sw         $t9, 0x4($a0)
/* 76A34 800BC234 014B6021 */  addu       $t4, $t2, $t3
/* 76A38 800BC238 85820000 */  lh         $v0, 0x0($t4)
/* 76A3C 800BC23C 00026A03 */  sra        $t5, $v0, 8
/* 76A40 800BC240 000D7C00 */  sll        $t7, $t5, 16
/* 76A44 800BC244 03E00008 */  jr         $ra
/* 76A48 800BC248 000F1403 */   sra       $v0, $t7, 16

glabel func_800BC24C
/* 76A4C 800BC24C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 76A50 800BC250 AFBF0014 */  sw         $ra, 0x14($sp)
/* 76A54 800BC254 9482001A */  lhu        $v0, 0x1A($a0)
/* 76A58 800BC258 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 76A5C 800BC25C 10400004 */  beqz       $v0, .L800BC270
/* 76A60 800BC260 244EFFFF */   addiu     $t6, $v0, -0x1
/* 76A64 800BC264 44810000 */  mtc1       $at, $f0
/* 76A68 800BC268 10000072 */  b          .L800BC434
/* 76A6C 800BC26C A48E001A */   sh        $t6, 0x1A($a0)
.L800BC270:
/* 76A70 800BC270 94820018 */  lhu        $v0, 0x18($a0)
/* 76A74 800BC274 24010001 */  addiu      $at, $zero, 0x1
/* 76A78 800BC278 5040001C */  beql       $v0, $zero, .L800BC2EC
/* 76A7C 800BC27C C48A000C */   lwc1      $f10, 0xC($a0)
/* 76A80 800BC280 14410009 */  bne        $v0, $at, .L800BC2A8
/* 76A84 800BC284 00401825 */   or        $v1, $v0, $zero
/* 76A88 800BC288 8C8F0000 */  lw         $t7, 0x0($a0)
/* 76A8C 800BC28C 94820018 */  lhu        $v0, 0x18($a0)
/* 76A90 800BC290 95F80012 */  lhu        $t8, 0x12($t7)
/* 76A94 800BC294 44982000 */  mtc1       $t8, $f4
/* 76A98 800BC298 00000000 */  nop
/* 76A9C 800BC29C 468021A0 */  cvt.s.w    $f6, $f4
/* 76AA0 800BC2A0 1000000D */  b          .L800BC2D8
/* 76AA4 800BC2A4 E486000C */   swc1      $f6, 0xC($a0)
.L800BC2A8:
/* 76AA8 800BC2A8 8C990000 */  lw         $t9, 0x0($a0)
/* 76AAC 800BC2AC 44839000 */  mtc1       $v1, $f18
/* 76AB0 800BC2B0 C480000C */  lwc1       $f0, 0xC($a0)
/* 76AB4 800BC2B4 97280012 */  lhu        $t0, 0x12($t9)
/* 76AB8 800BC2B8 46809120 */  cvt.s.w    $f4, $f18
/* 76ABC 800BC2BC 44884000 */  mtc1       $t0, $f8
/* 76AC0 800BC2C0 00000000 */  nop
/* 76AC4 800BC2C4 468042A0 */  cvt.s.w    $f10, $f8
/* 76AC8 800BC2C8 46005401 */  sub.s      $f16, $f10, $f0
/* 76ACC 800BC2CC 46048183 */  div.s      $f6, $f16, $f4
/* 76AD0 800BC2D0 46060200 */  add.s      $f8, $f0, $f6
/* 76AD4 800BC2D4 E488000C */  swc1       $f8, 0xC($a0)
.L800BC2D8:
/* 76AD8 800BC2D8 2449FFFF */  addiu      $t1, $v0, -0x1
/* 76ADC 800BC2DC A4890018 */  sh         $t1, 0x18($a0)
/* 76AE0 800BC2E0 10000011 */  b          .L800BC328
/* 76AE4 800BC2E4 8C830000 */   lw        $v1, 0x0($a0)
/* 76AE8 800BC2E8 C48A000C */  lwc1       $f10, 0xC($a0)
.L800BC2EC:
/* 76AEC 800BC2EC 8C830000 */  lw         $v1, 0x0($a0)
/* 76AF0 800BC2F0 4600548D */  trunc.w.s  $f18, $f10
/* 76AF4 800BC2F4 946C0012 */  lhu        $t4, 0x12($v1)
/* 76AF8 800BC2F8 440B9000 */  mfc1       $t3, $f18
/* 76AFC 800BC2FC 00000000 */  nop
/* 76B00 800BC300 516C000A */  beql       $t3, $t4, .L800BC32C
/* 76B04 800BC304 94820016 */   lhu       $v0, 0x16($a0)
/* 76B08 800BC308 94620016 */  lhu        $v0, 0x16($v1)
/* 76B0C 800BC30C 14400006 */  bnez       $v0, .L800BC328
/* 76B10 800BC310 A4820018 */   sh        $v0, 0x18($a0)
/* 76B14 800BC314 946D0012 */  lhu        $t5, 0x12($v1)
/* 76B18 800BC318 448D8000 */  mtc1       $t5, $f16
/* 76B1C 800BC31C 00000000 */  nop
/* 76B20 800BC320 46808120 */  cvt.s.w    $f4, $f16
/* 76B24 800BC324 E484000C */  swc1       $f4, 0xC($a0)
.L800BC328:
/* 76B28 800BC328 94820016 */  lhu        $v0, 0x16($a0)
.L800BC32C:
/* 76B2C 800BC32C 24010001 */  addiu      $at, $zero, 0x1
/* 76B30 800BC330 50400018 */  beql       $v0, $zero, .L800BC394
/* 76B34 800BC334 C4920010 */   lwc1      $f18, 0x10($a0)
/* 76B38 800BC338 14410008 */  bne        $v0, $at, .L800BC35C
/* 76B3C 800BC33C 00402825 */   or        $a1, $v0, $zero
/* 76B40 800BC340 946E0010 */  lhu        $t6, 0x10($v1)
/* 76B44 800BC344 94820016 */  lhu        $v0, 0x16($a0)
/* 76B48 800BC348 448E3000 */  mtc1       $t6, $f6
/* 76B4C 800BC34C 00000000 */  nop
/* 76B50 800BC350 46803220 */  cvt.s.w    $f8, $f6
/* 76B54 800BC354 1000000B */  b          .L800BC384
/* 76B58 800BC358 E4880010 */   swc1      $f8, 0x10($a0)
.L800BC35C:
/* 76B5C 800BC35C 946F0010 */  lhu        $t7, 0x10($v1)
/* 76B60 800BC360 44852000 */  mtc1       $a1, $f4
/* 76B64 800BC364 C4800010 */  lwc1       $f0, 0x10($a0)
/* 76B68 800BC368 448F5000 */  mtc1       $t7, $f10
/* 76B6C 800BC36C 468021A0 */  cvt.s.w    $f6, $f4
/* 76B70 800BC370 468054A0 */  cvt.s.w    $f18, $f10
/* 76B74 800BC374 46009401 */  sub.s      $f16, $f18, $f0
/* 76B78 800BC378 46068203 */  div.s      $f8, $f16, $f6
/* 76B7C 800BC37C 46080280 */  add.s      $f10, $f0, $f8
/* 76B80 800BC380 E48A0010 */  swc1       $f10, 0x10($a0)
.L800BC384:
/* 76B84 800BC384 2458FFFF */  addiu      $t8, $v0, -0x1
/* 76B88 800BC388 10000010 */  b          .L800BC3CC
/* 76B8C 800BC38C A4980016 */   sh        $t8, 0x16($a0)
/* 76B90 800BC390 C4920010 */  lwc1       $f18, 0x10($a0)
.L800BC394:
/* 76B94 800BC394 94690010 */  lhu        $t1, 0x10($v1)
/* 76B98 800BC398 4600910D */  trunc.w.s  $f4, $f18
/* 76B9C 800BC39C 44082000 */  mfc1       $t0, $f4
/* 76BA0 800BC3A0 00000000 */  nop
/* 76BA4 800BC3A4 5109000A */  beql       $t0, $t1, .L800BC3D0
/* 76BA8 800BC3A8 44804000 */   mtc1      $zero, $f8
/* 76BAC 800BC3AC 94620014 */  lhu        $v0, 0x14($v1)
/* 76BB0 800BC3B0 14400006 */  bnez       $v0, .L800BC3CC
/* 76BB4 800BC3B4 A4820016 */   sh        $v0, 0x16($a0)
/* 76BB8 800BC3B8 946A0010 */  lhu        $t2, 0x10($v1)
/* 76BBC 800BC3BC 448A8000 */  mtc1       $t2, $f16
/* 76BC0 800BC3C0 00000000 */  nop
/* 76BC4 800BC3C4 468081A0 */  cvt.s.w    $f6, $f16
/* 76BC8 800BC3C8 E4860010 */  swc1       $f6, 0x10($a0)
.L800BC3CC:
/* 76BCC 800BC3CC 44804000 */  mtc1       $zero, $f8
.L800BC3D0:
/* 76BD0 800BC3D0 C48A000C */  lwc1       $f10, 0xC($a0)
/* 76BD4 800BC3D4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 76BD8 800BC3D8 460A4032 */  c.eq.s     $f8, $f10
/* 76BDC 800BC3DC 00000000 */  nop
/* 76BE0 800BC3E0 45000004 */  bc1f       .L800BC3F4
/* 76BE4 800BC3E4 00000000 */   nop
/* 76BE8 800BC3E8 44810000 */  mtc1       $at, $f0
/* 76BEC 800BC3EC 10000012 */  b          .L800BC438
/* 76BF0 800BC3F0 8FBF0014 */   lw        $ra, 0x14($sp)
.L800BC3F4:
/* 76BF4 800BC3F4 0C02F082 */  jal        func_800BC208
/* 76BF8 800BC3F8 AFA40018 */   sw        $a0, 0x18($sp)
/* 76BFC 800BC3FC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 76C00 800BC400 44817000 */  mtc1       $at, $f14
/* 76C04 800BC404 8FA40018 */  lw         $a0, 0x18($sp)
/* 76C08 800BC408 3C013980 */  lui        $at, (0x39800000 >> 16)
/* 76C0C 800BC40C 44812000 */  mtc1       $at, $f4
/* 76C10 800BC410 C492000C */  lwc1       $f18, 0xC($a0)
/* 76C14 800BC414 3C01800F */  lui        $at, %hi(D_800ECBE4)
/* 76C18 800BC418 00025880 */  sll        $t3, $v0, 2
/* 76C1C 800BC41C 002B0821 */  addu       $at, $at, $t3
/* 76C20 800BC420 46049082 */  mul.s      $f2, $f18, $f4
/* 76C24 800BC424 C430CBE4 */  lwc1       $f16, %lo(D_800ECBE4)($at)
/* 76C28 800BC428 460E8181 */  sub.s      $f6, $f16, $f14
/* 76C2C 800BC42C 46023202 */  mul.s      $f8, $f6, $f2
/* 76C30 800BC430 460E4000 */  add.s      $f0, $f8, $f14
.L800BC434:
/* 76C34 800BC434 8FBF0014 */  lw         $ra, 0x14($sp)
.L800BC438:
/* 76C38 800BC438 27BD0018 */  addiu      $sp, $sp, 0x18
/* 76C3C 800BC43C 03E00008 */  jr         $ra
/* 76C40 800BC440 00000000 */   nop

glabel func_800BC444
/* 76C44 800BC444 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 76C48 800BC448 AFBF0014 */  sw         $ra, 0x14($sp)
/* 76C4C 800BC44C 908E007C */  lbu        $t6, 0x7C($a0)
/* 76C50 800BC450 00802825 */  or         $a1, $a0, $zero
/* 76C54 800BC454 2484007C */  addiu      $a0, $a0, 0x7C
/* 76C58 800BC458 51C00006 */  beql       $t6, $zero, .L800BC474
/* 76C5C 800BC45C 90AF00A0 */   lbu       $t7, 0xA0($a1)
/* 76C60 800BC460 0C02F04D */  jal        func_800BC134
/* 76C64 800BC464 AFA50018 */   sw        $a1, 0x18($sp)
/* 76C68 800BC468 8FA50018 */  lw         $a1, 0x18($sp)
/* 76C6C 800BC46C E4A00038 */  swc1       $f0, 0x38($a1)
/* 76C70 800BC470 90AF00A0 */  lbu        $t7, 0xA0($a1)
.L800BC474:
/* 76C74 800BC474 51E0000B */  beql       $t7, $zero, .L800BC4A4
/* 76C78 800BC478 8FBF0014 */   lw        $ra, 0x14($sp)
/* 76C7C 800BC47C 8CB80044 */  lw         $t8, 0x44($a1)
/* 76C80 800BC480 2401FFFF */  addiu      $at, $zero, -0x1
/* 76C84 800BC484 24A4008C */  addiu      $a0, $a1, 0x8C
/* 76C88 800BC488 53010006 */  beql       $t8, $at, .L800BC4A4
/* 76C8C 800BC48C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 76C90 800BC490 0C02F093 */  jal        func_800BC24C
/* 76C94 800BC494 AFA50018 */   sw        $a1, 0x18($sp)
/* 76C98 800BC498 8FA50018 */  lw         $a1, 0x18($sp)
/* 76C9C 800BC49C E4A0003C */  swc1       $f0, 0x3C($a1)
/* 76CA0 800BC4A0 8FBF0014 */  lw         $ra, 0x14($sp)
.L800BC4A4:
/* 76CA4 800BC4A4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 76CA8 800BC4A8 03E00008 */  jr         $ra
/* 76CAC 800BC4AC 00000000 */   nop

glabel func_800BC4B0
/* 76CB0 800BC4B0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 76CB4 800BC4B4 44810000 */  mtc1       $at, $f0
/* 76CB8 800BC4B8 240E0001 */  addiu      $t6, $zero, 0x1
/* 76CBC 800BC4BC A08E00A0 */  sb         $t6, 0xA0($a0)
/* 76CC0 800BC4C0 AC800090 */  sw         $zero, 0x90($a0)
/* 76CC4 800BC4C4 3C0F800F */  lui        $t7, %hi(D_800EDC38)
/* 76CC8 800BC4C8 E480003C */  swc1       $f0, 0x3C($a0)
/* 76CCC 800BC4CC E4800038 */  swc1       $f0, 0x38($a0)
/* 76CD0 800BC4D0 8DEFDC38 */  lw         $t7, %lo(D_800EDC38)($t7)
/* 76CD4 800BC4D4 8C980044 */  lw         $t8, 0x44($a0)
/* 76CD8 800BC4D8 2483008C */  addiu      $v1, $a0, 0x8C
/* 76CDC 800BC4DC AC8F0094 */  sw         $t7, 0x94($a0)
/* 76CE0 800BC4E0 8F19004C */  lw         $t9, 0x4C($t8)
/* 76CE4 800BC4E4 AC99008C */  sw         $t9, 0x8C($a0)
/* 76CE8 800BC4E8 97220016 */  lhu        $v0, 0x16($t9)
/* 76CEC 800BC4EC 14400009 */  bnez       $v0, .L800BC514
/* 76CF0 800BC4F0 A48200A4 */   sh        $v0, 0xA4($a0)
/* 76CF4 800BC4F4 2483008C */  addiu      $v1, $a0, 0x8C
/* 76CF8 800BC4F8 8C650000 */  lw         $a1, 0x0($v1)
/* 76CFC 800BC4FC 94A90012 */  lhu        $t1, 0x12($a1)
/* 76D00 800BC500 44892000 */  mtc1       $t1, $f4
/* 76D04 800BC504 00000000 */  nop
/* 76D08 800BC508 468021A0 */  cvt.s.w    $f6, $f4
/* 76D0C 800BC50C 10000007 */  b          .L800BC52C
/* 76D10 800BC510 E466000C */   swc1      $f6, 0xC($v1)
.L800BC514:
/* 76D14 800BC514 8C650000 */  lw         $a1, 0x0($v1)
/* 76D18 800BC518 94AA000E */  lhu        $t2, 0xE($a1)
/* 76D1C 800BC51C 448A4000 */  mtc1       $t2, $f8
/* 76D20 800BC520 00000000 */  nop
/* 76D24 800BC524 468042A0 */  cvt.s.w    $f10, $f8
/* 76D28 800BC528 E46A000C */  swc1       $f10, 0xC($v1)
.L800BC52C:
/* 76D2C 800BC52C 94A20014 */  lhu        $v0, 0x14($a1)
/* 76D30 800BC530 14400007 */  bnez       $v0, .L800BC550
/* 76D34 800BC534 A4620016 */   sh        $v0, 0x16($v1)
/* 76D38 800BC538 94AB0010 */  lhu        $t3, 0x10($a1)
/* 76D3C 800BC53C 448B8000 */  mtc1       $t3, $f16
/* 76D40 800BC540 00000000 */  nop
/* 76D44 800BC544 468084A0 */  cvt.s.w    $f18, $f16
/* 76D48 800BC548 10000006 */  b          .L800BC564
/* 76D4C 800BC54C E4720010 */   swc1      $f18, 0x10($v1)
.L800BC550:
/* 76D50 800BC550 94AC000C */  lhu        $t4, 0xC($a1)
/* 76D54 800BC554 448C2000 */  mtc1       $t4, $f4
/* 76D58 800BC558 00000000 */  nop
/* 76D5C 800BC55C 468021A0 */  cvt.s.w    $f6, $f4
/* 76D60 800BC560 E4660010 */  swc1       $f6, 0x10($v1)
.L800BC564:
/* 76D64 800BC564 94AD0018 */  lhu        $t5, 0x18($a1)
/* 76D68 800BC568 24820030 */  addiu      $v0, $a0, 0x30
/* 76D6C 800BC56C A46D001A */  sh         $t5, 0x1A($v1)
/* 76D70 800BC570 8C4E0014 */  lw         $t6, 0x14($v0)
/* 76D74 800BC574 8DC10008 */  lw         $at, 0x8($t6)
/* 76D78 800BC578 AC41004C */  sw         $at, 0x4C($v0)
/* 76D7C 800BC57C 8DD8000C */  lw         $t8, 0xC($t6)
/* 76D80 800BC580 AC580050 */  sw         $t8, 0x50($v0)
/* 76D84 800BC584 8DC10010 */  lw         $at, 0x10($t6)
/* 76D88 800BC588 AC410054 */  sw         $at, 0x54($v0)
/* 76D8C 800BC58C 8DD80014 */  lw         $t8, 0x14($t6)
/* 76D90 800BC590 03E00008 */  jr         $ra
/* 76D94 800BC594 AC580058 */   sw        $t8, 0x58($v0)

glabel func_800BC598
/* 76D98 800BC598 AFA60008 */  sw         $a2, 0x8($sp)
/* 76D9C 800BC59C 44802000 */  mtc1       $zero, $f4
/* 76DA0 800BC5A0 A0800000 */  sb         $zero, 0x0($a0)
/* 76DA4 800BC5A4 A0800001 */  sb         $zero, 0x1($a0)
/* 76DA8 800BC5A8 A4800004 */  sh         $zero, 0x4($a0)
/* 76DAC 800BC5AC AC850020 */  sw         $a1, 0x20($a0)
/* 76DB0 800BC5B0 03E00008 */  jr         $ra
/* 76DB4 800BC5B4 E4840014 */   swc1      $f4, 0x14($a0)

glabel func_800BC5B8
/* 76DB8 800BC5B8 90830001 */  lbu        $v1, 0x1($a0)
/* 76DBC 800BC5BC 90820000 */  lbu        $v0, 0x0($a0)
/* 76DC0 800BC5C0 2C610009 */  sltiu      $at, $v1, 0x9
/* 76DC4 800BC5C4 1020008C */  beqz       $at, L800BC7F8
/* 76DC8 800BC5C8 00602825 */   or        $a1, $v1, $zero
/* 76DCC 800BC5CC 00037080 */  sll        $t6, $v1, 2
/* 76DD0 800BC5D0 3C01800F */  lui        $at, %hi(jtbl_800EBC90_main)
/* 76DD4 800BC5D4 002E0821 */  addu       $at, $at, $t6
/* 76DD8 800BC5D8 8C2EBC90 */  lw         $t6, %lo(jtbl_800EBC90_main)($at)
/* 76DDC 800BC5DC 01C00008 */  jr         $t6
/* 76DE0 800BC5E0 00000000 */   nop
glabel L800BC5E4
/* 76DE4 800BC5E4 44800000 */  mtc1       $zero, $f0
/* 76DE8 800BC5E8 03E00008 */  jr         $ra
/* 76DEC 800BC5EC 00000000 */   nop
glabel L800BC5F0
/* 76DF0 800BC5F0 304F0040 */  andi       $t7, $v0, 0x40
/* 76DF4 800BC5F4 11E00003 */  beqz       $t7, L800BC604
/* 76DF8 800BC5F8 24180005 */   addiu     $t8, $zero, 0x5
/* 76DFC 800BC5FC 1000007E */  b          L800BC7F8
/* 76E00 800BC600 A0980001 */   sb        $t8, 0x1($a0)
glabel L800BC604
/* 76E04 800BC604 24190003 */  addiu      $t9, $zero, 0x3
/* 76E08 800BC608 A4800002 */  sh         $zero, 0x2($a0)
/* 76E0C 800BC60C A0990001 */  sb         $t9, 0x1($a0)
glabel L800BC610
/* 76E10 800BC610 84890002 */  lh         $t1, 0x2($a0)
/* 76E14 800BC614 8C880020 */  lw         $t0, 0x20($a0)
/* 76E18 800BC618 2401FFFD */  addiu      $at, $zero, -0x3
/* 76E1C 800BC61C 00095080 */  sll        $t2, $t1, 2
/* 76E20 800BC620 010A1821 */  addu       $v1, $t0, $t2
/* 76E24 800BC624 846B0000 */  lh         $t3, 0x0($v1)
/* 76E28 800BC628 240E0001 */  addiu      $t6, $zero, 0x1
/* 76E2C 800BC62C A48B0004 */  sh         $t3, 0x4($a0)
/* 76E30 800BC630 84860004 */  lh         $a2, 0x4($a0)
/* 76E34 800BC634 10C1000E */  beq        $a2, $at, .L800BC670
/* 76E38 800BC638 2401FFFE */   addiu     $at, $zero, -0x2
/* 76E3C 800BC63C 10C10009 */  beq        $a2, $at, .L800BC664
/* 76E40 800BC640 2401FFFF */   addiu     $at, $zero, -0x1
/* 76E44 800BC644 10C10005 */  beq        $a2, $at, .L800BC65C
/* 76E48 800BC648 240C0005 */   addiu     $t4, $zero, 0x5
/* 76E4C 800BC64C 14C0000A */  bnez       $a2, .L800BC678
/* 76E50 800BC650 28C10004 */   slti      $at, $a2, 0x4
/* 76E54 800BC654 10000030 */  b          .L800BC718
/* 76E58 800BC658 A0800001 */   sb        $zero, 0x1($a0)
.L800BC65C:
/* 76E5C 800BC65C 1000002E */  b          .L800BC718
/* 76E60 800BC660 A08C0001 */   sb        $t4, 0x1($a0)
.L800BC664:
/* 76E64 800BC664 846D0002 */  lh         $t5, 0x2($v1)
/* 76E68 800BC668 1000002B */  b          .L800BC718
/* 76E6C 800BC66C A48D0002 */   sh        $t5, 0x2($a0)
.L800BC670:
/* 76E70 800BC670 10000029 */  b          .L800BC718
/* 76E74 800BC674 A08E0001 */   sb        $t6, 0x1($a0)
.L800BC678:
/* 76E78 800BC678 1420000A */  bnez       $at, .L800BC6A4
/* 76E7C 800BC67C 3C0F8004 */   lui       $t7, %hi(D_8004552C)
/* 76E80 800BC680 85EF552C */  lh         $t7, %lo(D_8004552C)($t7)
/* 76E84 800BC684 00CF0019 */  multu      $a2, $t7
/* 76E88 800BC688 0000C012 */  mflo       $t8
/* 76E8C 800BC68C 07010003 */  bgez       $t8, .L800BC69C
/* 76E90 800BC690 0018C883 */   sra       $t9, $t8, 2
/* 76E94 800BC694 27010003 */  addiu      $at, $t8, 0x3
/* 76E98 800BC698 0001C883 */  sra        $t9, $at, 2
.L800BC69C:
/* 76E9C 800BC69C A4990004 */  sh         $t9, 0x4($a0)
/* 76EA0 800BC6A0 84860004 */  lh         $a2, 0x4($a0)
.L800BC6A4:
/* 76EA4 800BC6A4 14C00003 */  bnez       $a2, .L800BC6B4
/* 76EA8 800BC6A8 24090001 */   addiu     $t1, $zero, 0x1
/* 76EAC 800BC6AC A4890004 */  sh         $t1, 0x4($a0)
/* 76EB0 800BC6B0 84860004 */  lh         $a2, 0x4($a0)
.L800BC6B4:
/* 76EB4 800BC6B4 84830002 */  lh         $v1, 0x2($a0)
/* 76EB8 800BC6B8 8C880020 */  lw         $t0, 0x20($a0)
/* 76EBC 800BC6BC 3C01800F */  lui        $at, %hi(D_800EBCB4)
/* 76EC0 800BC6C0 00035080 */  sll        $t2, $v1, 2
/* 76EC4 800BC6C4 010A5821 */  addu       $t3, $t0, $t2
/* 76EC8 800BC6C8 856C0002 */  lh         $t4, 0x2($t3)
/* 76ECC 800BC6CC C428BCB4 */  lwc1       $f8, %lo(D_800EBCB4)($at)
/* 76ED0 800BC6D0 240D0004 */  addiu      $t5, $zero, 0x4
/* 76ED4 800BC6D4 448C2000 */  mtc1       $t4, $f4
/* 76ED8 800BC6D8 246E0001 */  addiu      $t6, $v1, 0x1
/* 76EDC 800BC6DC A08D0001 */  sb         $t5, 0x1($a0)
/* 76EE0 800BC6E0 468021A0 */  cvt.s.w    $f6, $f4
/* 76EE4 800BC6E4 C4840014 */  lwc1       $f4, 0x14($a0)
/* 76EE8 800BC6E8 A48E0002 */  sh         $t6, 0x2($a0)
/* 76EEC 800BC6EC 46083283 */  div.s      $f10, $f6, $f8
/* 76EF0 800BC6F0 44864000 */  mtc1       $a2, $f8
/* 76EF4 800BC6F4 E48A0018 */  swc1       $f10, 0x18($a0)
/* 76EF8 800BC6F8 C4800018 */  lwc1       $f0, 0x18($a0)
/* 76EFC 800BC6FC 468042A0 */  cvt.s.w    $f10, $f8
/* 76F00 800BC700 46000402 */  mul.s      $f16, $f0, $f0
/* 76F04 800BC704 E4900018 */  swc1       $f16, 0x18($a0)
/* 76F08 800BC708 C4920018 */  lwc1       $f18, 0x18($a0)
/* 76F0C 800BC70C 46049181 */  sub.s      $f6, $f18, $f4
/* 76F10 800BC710 460A3403 */  div.s      $f16, $f6, $f10
/* 76F14 800BC714 E490000C */  swc1       $f16, 0xC($a0)
.L800BC718:
/* 76F18 800BC718 908F0001 */  lbu        $t7, 0x1($a0)
/* 76F1C 800BC71C 24010004 */  addiu      $at, $zero, 0x4
/* 76F20 800BC720 55E10036 */  bnel       $t7, $at, .L800BC7FC
/* 76F24 800BC724 44806000 */   mtc1      $zero, $f12
glabel L800BC728
/* 76F28 800BC728 84980004 */  lh         $t8, 0x4($a0)
/* 76F2C 800BC72C C4920014 */  lwc1       $f18, 0x14($a0)
/* 76F30 800BC730 C484000C */  lwc1       $f4, 0xC($a0)
/* 76F34 800BC734 2719FFFF */  addiu      $t9, $t8, -0x1
/* 76F38 800BC738 A4990004 */  sh         $t9, 0x4($a0)
/* 76F3C 800BC73C 46049200 */  add.s      $f8, $f18, $f4
/* 76F40 800BC740 84890004 */  lh         $t1, 0x4($a0)
/* 76F44 800BC744 24080003 */  addiu      $t0, $zero, 0x3
/* 76F48 800BC748 1D20002B */  bgtz       $t1, L800BC7F8
/* 76F4C 800BC74C E4880014 */   swc1      $f8, 0x14($a0)
/* 76F50 800BC750 10000029 */  b          L800BC7F8
/* 76F54 800BC754 A0880001 */   sb        $t0, 0x1($a0)
glabel L800BC758
/* 76F58 800BC758 44806000 */  mtc1       $zero, $f12
/* 76F5C 800BC75C C4800008 */  lwc1       $f0, 0x8($a0)
/* 76F60 800BC760 C4860014 */  lwc1       $f6, 0x14($a0)
/* 76F64 800BC764 C48A0010 */  lwc1       $f10, 0x10($a0)
/* 76F68 800BC768 46006032 */  c.eq.s     $f12, $f0
/* 76F6C 800BC76C 24010006 */  addiu      $at, $zero, 0x6
/* 76F70 800BC770 460A3401 */  sub.s      $f16, $f6, $f10
/* 76F74 800BC774 4501000E */  bc1t       .L800BC7B0
/* 76F78 800BC778 E4900014 */   swc1      $f16, 0x14($a0)
/* 76F7C 800BC77C 54A1000D */  bnel       $a1, $at, .L800BC7B4
/* 76F80 800BC780 C4840014 */   lwc1      $f4, 0x14($a0)
/* 76F84 800BC784 C4920014 */  lwc1       $f18, 0x14($a0)
/* 76F88 800BC788 240A0080 */  addiu      $t2, $zero, 0x80
/* 76F8C 800BC78C 240B0008 */  addiu      $t3, $zero, 0x8
/* 76F90 800BC790 4600903C */  c.lt.s     $f18, $f0
/* 76F94 800BC794 00000000 */  nop
/* 76F98 800BC798 45020018 */  bc1fl      .L800BC7FC
/* 76F9C 800BC79C 44806000 */   mtc1      $zero, $f12
/* 76FA0 800BC7A0 E4800014 */  swc1       $f0, 0x14($a0)
/* 76FA4 800BC7A4 A48A0004 */  sh         $t2, 0x4($a0)
/* 76FA8 800BC7A8 10000013 */  b          L800BC7F8
/* 76FAC 800BC7AC A08B0001 */   sb        $t3, 0x1($a0)
.L800BC7B0:
/* 76FB0 800BC7B0 C4840014 */  lwc1       $f4, 0x14($a0)
.L800BC7B4:
/* 76FB4 800BC7B4 44804000 */  mtc1       $zero, $f8
/* 76FB8 800BC7B8 00000000 */  nop
/* 76FBC 800BC7BC 4608203C */  c.lt.s     $f4, $f8
/* 76FC0 800BC7C0 00000000 */  nop
/* 76FC4 800BC7C4 4502000D */  bc1fl      .L800BC7FC
/* 76FC8 800BC7C8 44806000 */   mtc1      $zero, $f12
/* 76FCC 800BC7CC E48C0014 */  swc1       $f12, 0x14($a0)
/* 76FD0 800BC7D0 10000009 */  b          L800BC7F8
/* 76FD4 800BC7D4 A0800001 */   sb        $zero, 0x1($a0)
glabel L800BC7D8
/* 76FD8 800BC7D8 848C0004 */  lh         $t4, 0x4($a0)
/* 76FDC 800BC7DC 240F0007 */  addiu      $t7, $zero, 0x7
/* 76FE0 800BC7E0 258DFFFF */  addiu      $t5, $t4, -0x1
/* 76FE4 800BC7E4 A48D0004 */  sh         $t5, 0x4($a0)
/* 76FE8 800BC7E8 848E0004 */  lh         $t6, 0x4($a0)
/* 76FEC 800BC7EC 55C00003 */  bnel       $t6, $zero, .L800BC7FC
/* 76FF0 800BC7F0 44806000 */   mtc1      $zero, $f12
/* 76FF4 800BC7F4 A08F0001 */  sb         $t7, 0x1($a0)
glabel L800BC7F8
/* 76FF8 800BC7F8 44806000 */  mtc1       $zero, $f12
.L800BC7FC:
/* 76FFC 800BC7FC 30580020 */  andi       $t8, $v0, 0x20
/* 77000 800BC800 13000005 */  beqz       $t8, .L800BC818
/* 77004 800BC804 00401825 */   or        $v1, $v0, $zero
/* 77008 800BC808 24190006 */  addiu      $t9, $zero, 0x6
/* 7700C 800BC80C 3049FFDF */  andi       $t1, $v0, 0xFFDF
/* 77010 800BC810 A0990001 */  sb         $t9, 0x1($a0)
/* 77014 800BC814 A0890000 */  sb         $t1, 0x0($a0)
.L800BC818:
/* 77018 800BC818 30680010 */  andi       $t0, $v1, 0x10
/* 7701C 800BC81C 11000004 */  beqz       $t0, .L800BC830
/* 77020 800BC820 240A0007 */   addiu     $t2, $zero, 0x7
/* 77024 800BC824 306BFFEF */  andi       $t3, $v1, 0xFFEF
/* 77028 800BC828 A08A0001 */  sb         $t2, 0x1($a0)
/* 7702C 800BC82C A08B0000 */  sb         $t3, 0x0($a0)
.L800BC830:
/* 77030 800BC830 C4820014 */  lwc1       $f2, 0x14($a0)
/* 77034 800BC834 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 77038 800BC838 460C103C */  c.lt.s     $f2, $f12
/* 7703C 800BC83C 00000000 */  nop
/* 77040 800BC840 45020004 */  bc1fl      .L800BC854
/* 77044 800BC844 44816000 */   mtc1      $at, $f12
/* 77048 800BC848 03E00008 */  jr         $ra
/* 7704C 800BC84C 46006006 */   mov.s     $f0, $f12
/* 77050 800BC850 44816000 */  mtc1       $at, $f12
.L800BC854:
/* 77054 800BC854 00000000 */  nop
/* 77058 800BC858 4602603C */  c.lt.s     $f12, $f2
/* 7705C 800BC85C 00000000 */  nop
/* 77060 800BC860 45020004 */  bc1fl      .L800BC874
/* 77064 800BC864 46001006 */   mov.s     $f0, $f2
/* 77068 800BC868 03E00008 */  jr         $ra
/* 7706C 800BC86C 46006006 */   mov.s     $f0, $f12
/* 77070 800BC870 46001006 */  mov.s      $f0, $f2
.L800BC874:
/* 77074 800BC874 03E00008 */  jr         $ra
/* 77078 800BC878 00000000 */   nop
/* 7707C 800BC87C 00000000 */  nop
