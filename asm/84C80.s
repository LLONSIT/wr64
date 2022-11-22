.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

# Handwritten function
glabel func_800CA480
/* 84C80 800CA480 18A00011 */  blez       $a1, .L800CA4C8
/* 84C84 800CA484 00000000 */   nop
/* 84C88 800CA488 240B4000 */  addiu      $t3, $zero, 0x4000
/* 84C8C 800CA48C 00AB082B */  sltu       $at, $a1, $t3
/* 84C90 800CA490 1020000F */  beqz       $at, .L800CA4D0
/* 84C94 800CA494 00000000 */   nop
/* 84C98 800CA498 00804025 */  or         $t0, $a0, $zero
/* 84C9C 800CA49C 00854821 */  addu       $t1, $a0, $a1
/* 84CA0 800CA4A0 0109082B */  sltu       $at, $t0, $t1
/* 84CA4 800CA4A4 10200008 */  beqz       $at, .L800CA4C8
/* 84CA8 800CA4A8 00000000 */   nop
/* 84CAC 800CA4AC 310A001F */  andi       $t2, $t0, 0x1F
/* 84CB0 800CA4B0 2529FFE0 */  addiu      $t1, $t1, -0x20
/* 84CB4 800CA4B4 010A4023 */  subu       $t0, $t0, $t2
.L800CA4B8:
/* 84CB8 800CA4B8 BD100000 */  cache      0x10, 0x0($t0)
/* 84CBC 800CA4BC 0109082B */  sltu       $at, $t0, $t1
/* 84CC0 800CA4C0 1420FFFD */  bnez       $at, .L800CA4B8
/* 84CC4 800CA4C4 25080020 */   addiu     $t0, $t0, 0x20
.L800CA4C8:
/* 84CC8 800CA4C8 03E00008 */  jr         $ra
/* 84CCC 800CA4CC 00000000 */   nop
.L800CA4D0:
/* 84CD0 800CA4D0 3C088000 */  lui        $t0, 0x8000
/* 84CD4 800CA4D4 010B4821 */  addu       $t1, $t0, $t3
/* 84CD8 800CA4D8 2529FFE0 */  addiu      $t1, $t1, -0x20
.L800CA4DC:
/* 84CDC 800CA4DC BD000000 */  cache      0x00, 0x0($t0)
/* 84CE0 800CA4E0 0109082B */  sltu       $at, $t0, $t1
/* 84CE4 800CA4E4 1420FFFD */  bnez       $at, .L800CA4DC
/* 84CE8 800CA4E8 25080020 */   addiu     $t0, $t0, 0x20
/* 84CEC 800CA4EC 03E00008 */  jr         $ra
/* 84CF0 800CA4F0 00000000 */   nop
/* 84CF4 800CA4F4 00000000 */  nop
/* 84CF8 800CA4F8 00000000 */  nop
/* 84CFC 800CA4FC 00000000 */  nop

glabel func_800CA500
/* 84D00 800CA500 28A1000C */  slti       $at, $a1, 0xC
/* 84D04 800CA504 1420001D */  bnez       $at, .L800CA57C
/* 84D08 800CA508 00041823 */   negu      $v1, $a0
/* 84D0C 800CA50C 30630003 */  andi       $v1, $v1, 0x3
/* 84D10 800CA510 10600003 */  beqz       $v1, .L800CA520
/* 84D14 800CA514 00A32823 */   subu      $a1, $a1, $v1
/* 84D18 800CA518 A8800000 */  swl        $zero, 0x0($a0)
/* 84D1C 800CA51C 00832021 */  addu       $a0, $a0, $v1
.L800CA520:
/* 84D20 800CA520 2401FFE0 */  addiu      $at, $zero, -0x20
/* 84D24 800CA524 00A13824 */  and        $a3, $a1, $at
/* 84D28 800CA528 10E0000C */  beqz       $a3, .L800CA55C
/* 84D2C 800CA52C 00A72823 */   subu      $a1, $a1, $a3
/* 84D30 800CA530 00E43821 */  addu       $a3, $a3, $a0
.L800CA534:
/* 84D34 800CA534 24840020 */  addiu      $a0, $a0, 0x20
/* 84D38 800CA538 AC80FFE0 */  sw         $zero, -0x20($a0)
/* 84D3C 800CA53C AC80FFE4 */  sw         $zero, -0x1C($a0)
/* 84D40 800CA540 AC80FFE8 */  sw         $zero, -0x18($a0)
/* 84D44 800CA544 AC80FFEC */  sw         $zero, -0x14($a0)
/* 84D48 800CA548 AC80FFF0 */  sw         $zero, -0x10($a0)
/* 84D4C 800CA54C AC80FFF4 */  sw         $zero, -0xC($a0)
/* 84D50 800CA550 AC80FFF8 */  sw         $zero, -0x8($a0)
/* 84D54 800CA554 1487FFF7 */  bne        $a0, $a3, .L800CA534
/* 84D58 800CA558 AC80FFFC */   sw        $zero, -0x4($a0)
.L800CA55C:
/* 84D5C 800CA55C 2401FFFC */  addiu      $at, $zero, -0x4
/* 84D60 800CA560 00A13824 */  and        $a3, $a1, $at
/* 84D64 800CA564 10E00005 */  beqz       $a3, .L800CA57C
/* 84D68 800CA568 00A72823 */   subu      $a1, $a1, $a3
/* 84D6C 800CA56C 00E43821 */  addu       $a3, $a3, $a0
.L800CA570:
/* 84D70 800CA570 24840004 */  addiu      $a0, $a0, 0x4
/* 84D74 800CA574 1487FFFE */  bne        $a0, $a3, .L800CA570
/* 84D78 800CA578 AC80FFFC */   sw        $zero, -0x4($a0)
.L800CA57C:
/* 84D7C 800CA57C 18A00005 */  blez       $a1, .L800CA594
/* 84D80 800CA580 00000000 */   nop
/* 84D84 800CA584 00A42821 */  addu       $a1, $a1, $a0
.L800CA588:
/* 84D88 800CA588 24840001 */  addiu      $a0, $a0, 0x1
/* 84D8C 800CA58C 1485FFFE */  bne        $a0, $a1, .L800CA588
/* 84D90 800CA590 A080FFFF */   sb        $zero, -0x1($a0)
.L800CA594:
/* 84D94 800CA594 03E00008 */  jr         $ra
/* 84D98 800CA598 00000000 */   nop
/* 84D9C 800CA59C 00000000 */  nop

glabel func_800CA5A0
/* 84DA0 800CA5A0 3C0E800F */  lui        $t6, %hi(D_800E90BC)
/* 84DA4 800CA5A4 8DCE90BC */  lw         $t6, %lo(D_800E90BC)($t6)
/* 84DA8 800CA5A8 44844000 */  mtc1       $a0, $f8
/* 84DAC 800CA5AC 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 84DB0 800CA5B0 448E2000 */  mtc1       $t6, $f4
/* 84DB4 800CA5B4 468042A0 */  cvt.s.w    $f10, $f8
/* 84DB8 800CA5B8 04810005 */  bgez       $a0, .L800CA5D0
/* 84DBC 800CA5BC 468021A0 */   cvt.s.w   $f6, $f4
/* 84DC0 800CA5C0 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* 84DC4 800CA5C4 44818000 */  mtc1       $at, $f16
/* 84DC8 800CA5C8 00000000 */  nop
/* 84DCC 800CA5CC 46105280 */  add.s      $f10, $f10, $f16
.L800CA5D0:
/* 84DD0 800CA5D0 460A3483 */  div.s      $f18, $f6, $f10
/* 84DD4 800CA5D4 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 84DD8 800CA5D8 44812000 */  mtc1       $at, $f4
/* 84DDC 800CA5DC 24050001 */  addiu      $a1, $zero, 0x1
/* 84DE0 800CA5E0 46049300 */  add.s      $f12, $f18, $f4
/* 84DE4 800CA5E4 444FF800 */  cfc1       $t7, $31
/* 84DE8 800CA5E8 44C5F800 */  ctc1       $a1, $31
/* 84DEC 800CA5EC 00000000 */  nop
/* 84DF0 800CA5F0 46006224 */  cvt.w.s    $f8, $f12
/* 84DF4 800CA5F4 4445F800 */  cfc1       $a1, $31
/* 84DF8 800CA5F8 00000000 */  nop
/* 84DFC 800CA5FC 30A10004 */  andi       $at, $a1, 0x4
/* 84E00 800CA600 30A50078 */  andi       $a1, $a1, 0x78
/* 84E04 800CA604 10A00013 */  beqz       $a1, .L800CA654
/* 84E08 800CA608 3C014F00 */   lui       $at, (0x4F000000 >> 16)
/* 84E0C 800CA60C 44814000 */  mtc1       $at, $f8
/* 84E10 800CA610 24050001 */  addiu      $a1, $zero, 0x1
/* 84E14 800CA614 46086201 */  sub.s      $f8, $f12, $f8
/* 84E18 800CA618 44C5F800 */  ctc1       $a1, $31
/* 84E1C 800CA61C 00000000 */  nop
/* 84E20 800CA620 46004224 */  cvt.w.s    $f8, $f8
/* 84E24 800CA624 4445F800 */  cfc1       $a1, $31
/* 84E28 800CA628 00000000 */  nop
/* 84E2C 800CA62C 30A10004 */  andi       $at, $a1, 0x4
/* 84E30 800CA630 30A50078 */  andi       $a1, $a1, 0x78
/* 84E34 800CA634 14A00005 */  bnez       $a1, .L800CA64C
/* 84E38 800CA638 00000000 */   nop
/* 84E3C 800CA63C 44054000 */  mfc1       $a1, $f8
/* 84E40 800CA640 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 84E44 800CA644 10000007 */  b          .L800CA664
/* 84E48 800CA648 00A12825 */   or        $a1, $a1, $at
.L800CA64C:
/* 84E4C 800CA64C 10000005 */  b          .L800CA664
/* 84E50 800CA650 2405FFFF */   addiu     $a1, $zero, -0x1
.L800CA654:
/* 84E54 800CA654 44054000 */  mfc1       $a1, $f8
/* 84E58 800CA658 00000000 */  nop
/* 84E5C 800CA65C 04A0FFFB */  bltz       $a1, .L800CA64C
/* 84E60 800CA660 00000000 */   nop
.L800CA664:
/* 84E64 800CA664 44CFF800 */  ctc1       $t7, $31
/* 84E68 800CA668 2CA10084 */  sltiu      $at, $a1, 0x84
/* 84E6C 800CA66C 10200003 */  beqz       $at, .L800CA67C
/* 84E70 800CA670 00000000 */   nop
/* 84E74 800CA674 10000020 */  b          .L800CA6F8
/* 84E78 800CA678 2402FFFF */   addiu     $v0, $zero, -0x1
.L800CA67C:
/* 84E7C 800CA67C 24010042 */  addiu      $at, $zero, 0x42
/* 84E80 800CA680 00A1001B */  divu       $zero, $a1, $at
/* 84E84 800CA684 00003012 */  mflo       $a2
/* 84E88 800CA688 30D800FF */  andi       $t8, $a2, 0xFF
/* 84E8C 800CA68C 03003025 */  or         $a2, $t8, $zero
/* 84E90 800CA690 28C10011 */  slti       $at, $a2, 0x11
/* 84E94 800CA694 14200002 */  bnez       $at, .L800CA6A0
/* 84E98 800CA698 00000000 */   nop
/* 84E9C 800CA69C 24060010 */  addiu      $a2, $zero, 0x10
.L800CA6A0:
/* 84EA0 800CA6A0 24B9FFFF */  addiu      $t9, $a1, -0x1
/* 84EA4 800CA6A4 3C08A450 */  lui        $t0, %hi(D_A4500010)
/* 84EA8 800CA6A8 AD190010 */  sw         $t9, %lo(D_A4500010)($t0)
/* 84EAC 800CA6AC 24C9FFFF */  addiu      $t1, $a2, -0x1
/* 84EB0 800CA6B0 3C0AA450 */  lui        $t2, %hi(D_A4500014)
/* 84EB4 800CA6B4 AD490014 */  sw         $t1, %lo(D_A4500014)($t2)
/* 84EB8 800CA6B8 240B0001 */  addiu      $t3, $zero, 0x1
/* 84EBC 800CA6BC 3C0CA450 */  lui        $t4, %hi(D_A4500008)
/* 84EC0 800CA6C0 AD8B0008 */  sw         $t3, %lo(D_A4500008)($t4)
/* 84EC4 800CA6C4 3C0D800F */  lui        $t5, %hi(D_800E90BC)
/* 84EC8 800CA6C8 8DAD90BC */  lw         $t5, %lo(D_800E90BC)($t5)
/* 84ECC 800CA6CC 01A5001A */  div        $zero, $t5, $a1
/* 84ED0 800CA6D0 00001012 */  mflo       $v0
/* 84ED4 800CA6D4 14A00002 */  bnez       $a1, .L800CA6E0
/* 84ED8 800CA6D8 00000000 */   nop
/* 84EDC 800CA6DC 0007000D */  break      7
.L800CA6E0:
/* 84EE0 800CA6E0 2401FFFF */  addiu      $at, $zero, -0x1
/* 84EE4 800CA6E4 14A10004 */  bne        $a1, $at, .L800CA6F8
/* 84EE8 800CA6E8 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 84EEC 800CA6EC 15A10002 */  bne        $t5, $at, .L800CA6F8
/* 84EF0 800CA6F0 00000000 */   nop
/* 84EF4 800CA6F4 0006000D */  break      6
.L800CA6F8:
/* 84EF8 800CA6F8 03E00008 */  jr         $ra
/* 84EFC 800CA6FC 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_800CA700
/* 84F00 800CA700 03E00008 */  jr         $ra
/* 84F04 800CA704 00000000 */   nop

glabel func_800CA708
/* 84F08 800CA708 03E00008 */  jr         $ra
/* 84F0C 800CA70C 00000000 */   nop

glabel func_800CA710
/* 84F10 800CA710 908E0003 */  lbu        $t6, 0x3($a0)
/* 84F14 800CA714 15C00037 */  bnez       $t6, .L800CA7F4
/* 84F18 800CA718 00000000 */   nop
/* 84F1C 800CA71C 848F000E */  lh         $t7, 0xE($a0)
/* 84F20 800CA720 24090001 */  addiu      $t1, $zero, 0x1
/* 84F24 800CA724 A0890003 */  sb         $t1, 0x3($a0)
/* 84F28 800CA728 19E00032 */  blez       $t7, .L800CA7F4
/* 84F2C 800CA72C 00001025 */   or        $v0, $zero, $zero
/* 84F30 800CA730 00801825 */  or         $v1, $a0, $zero
/* 84F34 800CA734 240A0001 */  addiu      $t2, $zero, 0x1
/* 84F38 800CA738 8C780010 */  lw         $t8, 0x10($v1)
.L800CA73C:
/* 84F3C 800CA73C 0305C821 */  addu       $t9, $t8, $a1
/* 84F40 800CA740 AC790010 */  sw         $t9, 0x10($v1)
/* 84F44 800CA744 932E000E */  lbu        $t6, 0xE($t9)
/* 84F48 800CA748 03203025 */  or         $a2, $t9, $zero
/* 84F4C 800CA74C 55C00024 */  bnel       $t6, $zero, .L800CA7E0
/* 84F50 800CA750 8498000E */   lh        $t8, 0xE($a0)
/* 84F54 800CA754 8F2F0000 */  lw         $t7, 0x0($t9)
/* 84F58 800CA758 A329000E */  sb         $t1, 0xE($t9)
/* 84F5C 800CA75C 01E5C021 */  addu       $t8, $t7, $a1
/* 84F60 800CA760 AF380000 */  sw         $t8, 0x0($t9)
/* 84F64 800CA764 8F390004 */  lw         $t9, 0x4($t9)
/* 84F68 800CA768 8CCF0008 */  lw         $t7, 0x8($a2)
/* 84F6C 800CA76C 03257021 */  addu       $t6, $t9, $a1
/* 84F70 800CA770 01E5C021 */  addu       $t8, $t7, $a1
/* 84F74 800CA774 ACCE0004 */  sw         $t6, 0x4($a2)
/* 84F78 800CA778 ACD80008 */  sw         $t8, 0x8($a2)
/* 84F7C 800CA77C 93190009 */  lbu        $t9, 0x9($t8)
/* 84F80 800CA780 03004025 */  or         $t0, $t8, $zero
/* 84F84 800CA784 57200016 */  bnel       $t9, $zero, .L800CA7E0
/* 84F88 800CA788 8498000E */   lh        $t8, 0xE($a0)
/* 84F8C 800CA78C 8F0E0000 */  lw         $t6, 0x0($t8)
/* 84F90 800CA790 93060008 */  lbu        $a2, 0x8($t8)
/* 84F94 800CA794 A3090009 */  sb         $t1, 0x9($t8)
/* 84F98 800CA798 01C77821 */  addu       $t7, $t6, $a3
/* 84F9C 800CA79C 14C00009 */  bnez       $a2, .L800CA7C4
/* 84FA0 800CA7A0 AF0F0000 */   sw        $t7, 0x0($t8)
/* 84FA4 800CA7A4 8F180010 */  lw         $t8, 0x10($t8)
/* 84FA8 800CA7A8 8D06000C */  lw         $a2, 0xC($t0)
/* 84FAC 800CA7AC 0305C821 */  addu       $t9, $t8, $a1
/* 84FB0 800CA7B0 10C0000A */  beqz       $a2, .L800CA7DC
/* 84FB4 800CA7B4 AD190010 */   sw        $t9, 0x10($t0)
/* 84FB8 800CA7B8 00C57021 */  addu       $t6, $a2, $a1
/* 84FBC 800CA7BC 10000007 */  b          .L800CA7DC
/* 84FC0 800CA7C0 AD0E000C */   sw        $t6, 0xC($t0)
.L800CA7C4:
/* 84FC4 800CA7C4 55460006 */  bnel       $t2, $a2, .L800CA7E0
/* 84FC8 800CA7C8 8498000E */   lh        $t8, 0xE($a0)
/* 84FCC 800CA7CC 8D06000C */  lw         $a2, 0xC($t0)
/* 84FD0 800CA7D0 10C00002 */  beqz       $a2, .L800CA7DC
/* 84FD4 800CA7D4 00C57821 */   addu      $t7, $a2, $a1
/* 84FD8 800CA7D8 AD0F000C */  sw         $t7, 0xC($t0)
.L800CA7DC:
/* 84FDC 800CA7DC 8498000E */  lh         $t8, 0xE($a0)
.L800CA7E0:
/* 84FE0 800CA7E0 24420001 */  addiu      $v0, $v0, 0x1
/* 84FE4 800CA7E4 24630004 */  addiu      $v1, $v1, 0x4
/* 84FE8 800CA7E8 0058082A */  slt        $at, $v0, $t8
/* 84FEC 800CA7EC 5420FFD3 */  bnel       $at, $zero, .L800CA73C
/* 84FF0 800CA7F0 8C780010 */   lw        $t8, 0x10($v1)
.L800CA7F4:
/* 84FF4 800CA7F4 03E00008 */  jr         $ra
/* 84FF8 800CA7F8 00000000 */   nop

glabel func_800CA7FC
/* 84FFC 800CA7FC 03E00008 */  jr         $ra
/* 85000 800CA800 00000000 */   nop

glabel func_800CA804
/* 85004 800CA804 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 85008 800CA808 AFBF002C */  sw         $ra, 0x2C($sp)
/* 8500C 800CA80C AFB40028 */  sw         $s4, 0x28($sp)
/* 85010 800CA810 AFB30024 */  sw         $s3, 0x24($sp)
/* 85014 800CA814 AFB20020 */  sw         $s2, 0x20($sp)
/* 85018 800CA818 AFB1001C */  sw         $s1, 0x1C($sp)
/* 8501C 800CA81C AFB00018 */  sw         $s0, 0x18($sp)
/* 85020 800CA820 848E0000 */  lh         $t6, 0x0($a0)
/* 85024 800CA824 24014231 */  addiu      $at, $zero, 0x4231
/* 85028 800CA828 00808025 */  or         $s0, $a0, $zero
/* 8502C 800CA82C 15C1002E */  bne        $t6, $at, .L800CA8E8
/* 85030 800CA830 00A08825 */   or        $s1, $a1, $zero
/* 85034 800CA834 848F0002 */  lh         $t7, 0x2($a0)
/* 85038 800CA838 00009825 */  or         $s3, $zero, $zero
/* 8503C 800CA83C 00809025 */  or         $s2, $a0, $zero
/* 85040 800CA840 19E00029 */  blez       $t7, .L800CA8E8
/* 85044 800CA844 24140001 */   addiu     $s4, $zero, 0x1
/* 85048 800CA848 8E580004 */  lw         $t8, 0x4($s2)
.L800CA84C:
/* 8504C 800CA84C 0310C821 */  addu       $t9, $t8, $s0
/* 85050 800CA850 1320001F */  beqz       $t9, .L800CA8D0
/* 85054 800CA854 AE590004 */   sw        $t9, 0x4($s2)
/* 85058 800CA858 932E0002 */  lbu        $t6, 0x2($t9)
/* 8505C 800CA85C 03206825 */  or         $t5, $t9, $zero
/* 85060 800CA860 55C0001C */  bnel       $t6, $zero, .L800CA8D4
/* 85064 800CA864 86180002 */   lh        $t8, 0x2($s0)
/* 85068 800CA868 8F220008 */  lw         $v0, 0x8($t9)
/* 8506C 800CA86C A3340002 */  sb         $s4, 0x2($t9)
/* 85070 800CA870 00006025 */  or         $t4, $zero, $zero
/* 85074 800CA874 10400005 */  beqz       $v0, .L800CA88C
/* 85078 800CA878 00502021 */   addu      $a0, $v0, $s0
/* 8507C 800CA87C AF240008 */  sw         $a0, 0x8($t9)
/* 85080 800CA880 02002825 */  or         $a1, $s0, $zero
/* 85084 800CA884 0C0329C4 */  jal        func_800CA710
/* 85088 800CA888 02203825 */   or        $a3, $s1, $zero
.L800CA88C:
/* 8508C 800CA88C 85B80000 */  lh         $t8, 0x0($t5)
/* 85090 800CA890 01A05825 */  or         $t3, $t5, $zero
/* 85094 800CA894 5B00000F */  blezl      $t8, .L800CA8D4
/* 85098 800CA898 86180002 */   lh        $t8, 0x2($s0)
/* 8509C 800CA89C 8D79000C */  lw         $t9, 0xC($t3)
.L800CA8A0:
/* 850A0 800CA8A0 02002825 */  or         $a1, $s0, $zero
/* 850A4 800CA8A4 03302021 */  addu       $a0, $t9, $s0
/* 850A8 800CA8A8 10800003 */  beqz       $a0, .L800CA8B8
/* 850AC 800CA8AC AD64000C */   sw        $a0, 0xC($t3)
/* 850B0 800CA8B0 0C0329C4 */  jal        func_800CA710
/* 850B4 800CA8B4 02203825 */   or        $a3, $s1, $zero
.L800CA8B8:
/* 850B8 800CA8B8 85AF0000 */  lh         $t7, 0x0($t5)
/* 850BC 800CA8BC 258C0001 */  addiu      $t4, $t4, 0x1
/* 850C0 800CA8C0 256B0004 */  addiu      $t3, $t3, 0x4
/* 850C4 800CA8C4 018F082A */  slt        $at, $t4, $t7
/* 850C8 800CA8C8 5420FFF5 */  bnel       $at, $zero, .L800CA8A0
/* 850CC 800CA8CC 8D79000C */   lw        $t9, 0xC($t3)
.L800CA8D0:
/* 850D0 800CA8D0 86180002 */  lh         $t8, 0x2($s0)
.L800CA8D4:
/* 850D4 800CA8D4 26730001 */  addiu      $s3, $s3, 0x1
/* 850D8 800CA8D8 26520004 */  addiu      $s2, $s2, 0x4
/* 850DC 800CA8DC 0278082A */  slt        $at, $s3, $t8
/* 850E0 800CA8E0 5420FFDA */  bnel       $at, $zero, .L800CA84C
/* 850E4 800CA8E4 8E580004 */   lw        $t8, 0x4($s2)
.L800CA8E8:
/* 850E8 800CA8E8 8FBF002C */  lw         $ra, 0x2C($sp)
/* 850EC 800CA8EC 8FB00018 */  lw         $s0, 0x18($sp)
/* 850F0 800CA8F0 8FB1001C */  lw         $s1, 0x1C($sp)
/* 850F4 800CA8F4 8FB20020 */  lw         $s2, 0x20($sp)
/* 850F8 800CA8F8 8FB30024 */  lw         $s3, 0x24($sp)
/* 850FC 800CA8FC 8FB40028 */  lw         $s4, 0x28($sp)
/* 85100 800CA900 03E00008 */  jr         $ra
/* 85104 800CA904 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_800CA908
/* 85108 800CA908 848E0002 */  lh         $t6, 0x2($a0)
/* 8510C 800CA90C 00001025 */  or         $v0, $zero, $zero
/* 85110 800CA910 00801825 */  or         $v1, $a0, $zero
/* 85114 800CA914 19C0000A */  blez       $t6, .L800CA940
/* 85118 800CA918 00000000 */   nop
/* 8511C 800CA91C 8C6F0004 */  lw         $t7, 0x4($v1)
.L800CA920:
/* 85120 800CA920 24420001 */  addiu      $v0, $v0, 0x1
/* 85124 800CA924 24630008 */  addiu      $v1, $v1, 0x8
/* 85128 800CA928 01E5C021 */  addu       $t8, $t7, $a1
/* 8512C 800CA92C AC78FFFC */  sw         $t8, -0x4($v1)
/* 85130 800CA930 84990002 */  lh         $t9, 0x2($a0)
/* 85134 800CA934 0059082A */  slt        $at, $v0, $t9
/* 85138 800CA938 5420FFF9 */  bnel       $at, $zero, .L800CA920
/* 8513C 800CA93C 8C6F0004 */   lw        $t7, 0x4($v1)
.L800CA940:
/* 85140 800CA940 03E00008 */  jr         $ra
/* 85144 800CA944 00000000 */   nop
/* 85148 800CA948 00000000 */  nop
/* 8514C 800CA94C 00000000 */  nop

glabel func_800CA950
/* 85150 800CA950 3C0EA450 */  lui        $t6, %hi(D_A4500004)
/* 85154 800CA954 03E00008 */  jr         $ra
/* 85158 800CA958 8DC20004 */   lw        $v0, %lo(D_A4500004)($t6)
/* 8515C 800CA95C 00000000 */  nop

glabel func_800CA960
/* 85160 800CA960 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 85164 800CA964 3C0F800F */  lui        $t7, %hi(D_800E8FF0)
/* 85168 800CA968 91EF8FF0 */  lbu        $t7, %lo(D_800E8FF0)($t7)
/* 8516C 800CA96C AFA40020 */  sw         $a0, 0x20($sp)
/* 85170 800CA970 8FAE0020 */  lw         $t6, 0x20($sp)
/* 85174 800CA974 AFBF0014 */  sw         $ra, 0x14($sp)
/* 85178 800CA978 AFA50024 */  sw         $a1, 0x24($sp)
/* 8517C 800CA97C 11E00003 */  beqz       $t7, .L800CA98C
/* 85180 800CA980 AFAE001C */   sw        $t6, 0x1C($sp)
/* 85184 800CA984 25D8E000 */  addiu      $t8, $t6, -0x2000
/* 85188 800CA988 AFB8001C */  sw         $t8, 0x1C($sp)
.L800CA98C:
/* 8518C 800CA98C 8FB90020 */  lw         $t9, 0x20($sp)
/* 85190 800CA990 8FA80024 */  lw         $t0, 0x24($sp)
/* 85194 800CA994 24012000 */  addiu      $at, $zero, 0x2000
/* 85198 800CA998 03284821 */  addu       $t1, $t9, $t0
/* 8519C 800CA99C 312A3FFF */  andi       $t2, $t1, 0x3FFF
/* 851A0 800CA9A0 15410005 */  bne        $t2, $at, .L800CA9B8
/* 851A4 800CA9A4 00000000 */   nop
/* 851A8 800CA9A8 240B0001 */  addiu      $t3, $zero, 0x1
/* 851AC 800CA9AC 3C01800F */  lui        $at, %hi(D_800E8FF0)
/* 851B0 800CA9B0 10000003 */  b          .L800CA9C0
/* 851B4 800CA9B4 A02B8FF0 */   sb        $t3, %lo(D_800E8FF0)($at)
.L800CA9B8:
/* 851B8 800CA9B8 3C01800F */  lui        $at, %hi(D_800E8FF0)
/* 851BC 800CA9BC A0208FF0 */  sb         $zero, %lo(D_800E8FF0)($at)
.L800CA9C0:
/* 851C0 800CA9C0 0C0341B8 */  jal        func_800D06E0
/* 851C4 800CA9C4 00000000 */   nop
/* 851C8 800CA9C8 10400003 */  beqz       $v0, .L800CA9D8
/* 851CC 800CA9CC 00000000 */   nop
/* 851D0 800CA9D0 10000009 */  b          .L800CA9F8
/* 851D4 800CA9D4 2402FFFF */   addiu     $v0, $zero, -0x1
.L800CA9D8:
/* 851D8 800CA9D8 0C0315C8 */  jal        osVirtualToPhysical
/* 851DC 800CA9DC 8FA4001C */   lw        $a0, 0x1C($sp)
/* 851E0 800CA9E0 3C0CA450 */  lui        $t4, %hi(D_A4500000)
/* 851E4 800CA9E4 AD820000 */  sw         $v0, %lo(D_A4500000)($t4)
/* 851E8 800CA9E8 8FAD0024 */  lw         $t5, 0x24($sp)
/* 851EC 800CA9EC 3C0FA450 */  lui        $t7, %hi(D_A4500004)
/* 851F0 800CA9F0 00001025 */  or         $v0, $zero, $zero
/* 851F4 800CA9F4 ADED0004 */  sw         $t5, %lo(D_A4500004)($t7)
.L800CA9F8:
/* 851F8 800CA9F8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 851FC 800CA9FC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 85200 800CAA00 03E00008 */  jr         $ra
/* 85204 800CAA04 00000000 */   nop
/* 85208 800CAA08 00000000 */  nop
/* 8520C 800CAA0C 00000000 */  nop

# Handwritten function
glabel __osProbeTLB
/* 85210 800CAA10 40085000 */  mfc0       $t0, $10
/* 85214 800CAA14 310900FF */  andi       $t1, $t0, 0xFF
/* 85218 800CAA18 2401E000 */  addiu      $at, $zero, -0x2000
/* 8521C 800CAA1C 00815024 */  and        $t2, $a0, $at
/* 85220 800CAA20 012A4825 */  or         $t1, $t1, $t2
/* 85224 800CAA24 40895000 */  mtc0       $t1, $10
/* 85228 800CAA28 00000000 */  nop
/* 8522C 800CAA2C 00000000 */  nop
/* 85230 800CAA30 00000000 */  nop
/* 85234 800CAA34 42000008 */  tlbp
/* 85238 800CAA38 00000000 */  nop
/* 8523C 800CAA3C 00000000 */  nop
/* 85240 800CAA40 400B0000 */  mfc0       $t3, $0
/* 85244 800CAA44 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 85248 800CAA48 01615824 */  and        $t3, $t3, $at
/* 8524C 800CAA4C 1560001A */  bnez       $t3, .L800CAAB8
/* 85250 800CAA50 00000000 */   nop
/* 85254 800CAA54 42000001 */  tlbr
/* 85258 800CAA58 00000000 */  nop
/* 8525C 800CAA5C 00000000 */  nop
/* 85260 800CAA60 00000000 */  nop
/* 85264 800CAA64 400B2800 */  mfc0       $t3, $5
/* 85268 800CAA68 216B2000 */  addi       $t3, $t3, 0x2000
/* 8526C 800CAA6C 000B5842 */  srl        $t3, $t3, 1
/* 85270 800CAA70 01646024 */  and        $t4, $t3, $a0
/* 85274 800CAA74 15800004 */  bnez       $t4, .L800CAA88
/* 85278 800CAA78 216BFFFF */   addi      $t3, $t3, -0x1
/* 8527C 800CAA7C 40021000 */  mfc0       $v0, $2
/* 85280 800CAA80 10000002 */  b          .L800CAA8C
/* 85284 800CAA84 00000000 */   nop
.L800CAA88:
/* 85288 800CAA88 40021800 */  mfc0       $v0, $3
.L800CAA8C:
/* 8528C 800CAA8C 304D0002 */  andi       $t5, $v0, 0x2
/* 85290 800CAA90 11A00009 */  beqz       $t5, .L800CAAB8
/* 85294 800CAA94 00000000 */   nop
/* 85298 800CAA98 3C013FFF */  lui        $at, (0x3FFFFFC0 >> 16)
/* 8529C 800CAA9C 3421FFC0 */  ori        $at, $at, (0x3FFFFFC0 & 0xFFFF)
/* 852A0 800CAAA0 00411024 */  and        $v0, $v0, $at
/* 852A4 800CAAA4 00021180 */  sll        $v0, $v0, 6
/* 852A8 800CAAA8 008B6824 */  and        $t5, $a0, $t3
/* 852AC 800CAAAC 004D1020 */  add        $v0, $v0, $t5
/* 852B0 800CAAB0 10000002 */  b          .L800CAABC
/* 852B4 800CAAB4 00000000 */   nop
.L800CAAB8:
/* 852B8 800CAAB8 2402FFFF */  addiu      $v0, $zero, -0x1
.L800CAABC:
/* 852BC 800CAABC 40885000 */  mtc0       $t0, $10
/* 852C0 800CAAC0 03E00008 */  jr         $ra
/* 852C4 800CAAC4 00000000 */   nop
/* 852C8 800CAAC8 00000000 */  nop
/* 852CC 800CAACC 00000000 */  nop

# Handwritten function
glabel __osDisableInt
/* 852D0 800CAAD0 40086000 */  mfc0       $t0, $12
/* 852D4 800CAAD4 2401FFFE */  addiu      $at, $zero, -0x2
/* 852D8 800CAAD8 01014824 */  and        $t1, $t0, $at
/* 852DC 800CAADC 40896000 */  mtc0       $t1, $12
/* 852E0 800CAAE0 31020001 */  andi       $v0, $t0, 0x1
/* 852E4 800CAAE4 00000000 */  nop
/* 852E8 800CAAE8 03E00008 */  jr         $ra
/* 852EC 800CAAEC 00000000 */   nop

# Handwritten function
glabel __osRestoreInt
/* 852F0 800CAAF0 40086000 */  mfc0       $t0, $12
/* 852F4 800CAAF4 01044025 */  or         $t0, $t0, $a0
/* 852F8 800CAAF8 40886000 */  mtc0       $t0, $12
/* 852FC 800CAAFC 00000000 */  nop
/* 85300 800CAB00 00000000 */  nop
/* 85304 800CAB04 03E00008 */  jr         $ra
/* 85308 800CAB08 00000000 */   nop
/* 8530C 800CAB0C 00000000 */  nop

glabel func_800CAB10
/* 85310 800CAB10 00803025 */  or         $a2, $a0, $zero
/* 85314 800CAB14 8CC70000 */  lw         $a3, 0x0($a2)
/* 85318 800CAB18 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 8531C 800CAB1C 10E0000A */  beqz       $a3, .L800CAB48
/* 85320 800CAB20 00000000 */   nop
.L800CAB24:
/* 85324 800CAB24 14E50004 */  bne        $a3, $a1, .L800CAB38
/* 85328 800CAB28 00000000 */   nop
/* 8532C 800CAB2C 8CAE0000 */  lw         $t6, 0x0($a1)
/* 85330 800CAB30 10000005 */  b          .L800CAB48
/* 85334 800CAB34 ACCE0000 */   sw        $t6, 0x0($a2)
.L800CAB38:
/* 85338 800CAB38 00E03025 */  or         $a2, $a3, $zero
/* 8533C 800CAB3C 8CC70000 */  lw         $a3, 0x0($a2)
/* 85340 800CAB40 14E0FFF8 */  bnez       $a3, .L800CAB24
/* 85344 800CAB44 00000000 */   nop
.L800CAB48:
/* 85348 800CAB48 03E00008 */  jr         $ra
/* 8534C 800CAB4C 27BD0008 */   addiu     $sp, $sp, 0x8

# Handwritten function
glabel func_800CAB50
/* 85350 800CAB50 3C1A800D */  lui        $k0, %hi(D_800CAB60)
/* 85354 800CAB54 275AAB60 */  addiu      $k0, $k0, %lo(D_800CAB60)
/* 85358 800CAB58 03400008 */  jr         $k0
/* 8535C 800CAB5C 00000000 */   nop
D_800CAB60:
/* 85360 800CAB60 3C1A801E */  lui        $k0, %hi(D_801DADF0)
/* 85364 800CAB64 275AADF0 */  addiu      $k0, $k0, %lo(D_801DADF0)
/* 85368 800CAB68 FF410020 */  sd         $at, 0x20($k0)
/* 8536C 800CAB6C 401B6000 */  mfc0       $k1, $12
/* 85370 800CAB70 AF5B0118 */  sw         $k1, 0x118($k0)
/* 85374 800CAB74 2401FFFC */  addiu      $at, $zero, -0x4
/* 85378 800CAB78 0361D824 */  and        $k1, $k1, $at
/* 8537C 800CAB7C 409B6000 */  mtc0       $k1, $12
/* 85380 800CAB80 FF480058 */  sd         $t0, 0x58($k0)
/* 85384 800CAB84 FF490060 */  sd         $t1, 0x60($k0)
/* 85388 800CAB88 FF4A0068 */  sd         $t2, 0x68($k0)
/* 8538C 800CAB8C AF400018 */  sw         $zero, 0x18($k0)
/* 85390 800CAB90 40086800 */  mfc0       $t0, $13
/* 85394 800CAB94 3109007C */  andi       $t1, $t0, 0x7C
/* 85398 800CAB98 240A0000 */  addiu      $t2, $zero, 0x0
/* 8539C 800CAB9C 152A0010 */  bne        $t1, $t2, .L800CABE0
/* 853A0 800CABA0 00000000 */   nop
/* 853A4 800CABA4 03684824 */  and        $t1, $k1, $t0
/* 853A8 800CABA8 312A4000 */  andi       $t2, $t1, 0x4000
/* 853AC 800CABAC 11400005 */  beqz       $t2, .L800CABC4
/* 853B0 800CABB0 00000000 */   nop
/* 853B4 800CABB4 24090001 */  addiu      $t1, $zero, 0x1
/* 853B8 800CABB8 3C01800F */  lui        $at, %hi(D_800E9034)
/* 853BC 800CABBC 10000019 */  b          .L800CAC24
/* 853C0 800CABC0 AC299034 */   sw        $t1, %lo(D_800E9034)($at)
.L800CABC4:
/* 853C4 800CABC4 312A2000 */  andi       $t2, $t1, 0x2000
/* 853C8 800CABC8 11400005 */  beqz       $t2, .L800CABE0
/* 853CC 800CABCC 00000000 */   nop
/* 853D0 800CABD0 24090001 */  addiu      $t1, $zero, 0x1
/* 853D4 800CABD4 3C01800F */  lui        $at, %hi(D_800E9038)
/* 853D8 800CABD8 10000012 */  b          .L800CAC24
/* 853DC 800CABDC AC299038 */   sw        $t1, %lo(D_800E9038)($at)
.L800CABE0:
/* 853E0 800CABE0 3C01800F */  lui        $at, %hi(D_800E9034)
/* 853E4 800CABE4 AC209034 */  sw         $zero, %lo(D_800E9034)($at)
/* 853E8 800CABE8 3C01800F */  lui        $at, %hi(D_800E9038)
/* 853EC 800CABEC 03404025 */  or         $t0, $k0, $zero
/* 853F0 800CABF0 AC209038 */  sw         $zero, %lo(D_800E9038)($at)
/* 853F4 800CABF4 3C1A800F */  lui        $k0, %hi(D_800E9010)
/* 853F8 800CABF8 8F5A9010 */  lw         $k0, %lo(D_800E9010)($k0)
/* 853FC 800CABFC DD090020 */  ld         $t1, 0x20($t0)
/* 85400 800CAC00 FF490020 */  sd         $t1, 0x20($k0)
/* 85404 800CAC04 DD090118 */  ld         $t1, 0x118($t0)
/* 85408 800CAC08 FF490118 */  sd         $t1, 0x118($k0)
/* 8540C 800CAC0C DD090058 */  ld         $t1, 0x58($t0)
/* 85410 800CAC10 FF490058 */  sd         $t1, 0x58($k0)
/* 85414 800CAC14 DD090060 */  ld         $t1, 0x60($t0)
/* 85418 800CAC18 FF490060 */  sd         $t1, 0x60($k0)
/* 8541C 800CAC1C DD090068 */  ld         $t1, 0x68($t0)
/* 85420 800CAC20 FF490068 */  sd         $t1, 0x68($k0)
.L800CAC24:
/* 85424 800CAC24 00004012 */  mflo       $t0
/* 85428 800CAC28 FF480108 */  sd         $t0, 0x108($k0)
/* 8542C 800CAC2C 00004010 */  mfhi       $t0
/* 85430 800CAC30 FF420028 */  sd         $v0, 0x28($k0)
/* 85434 800CAC34 FF430030 */  sd         $v1, 0x30($k0)
/* 85438 800CAC38 FF440038 */  sd         $a0, 0x38($k0)
/* 8543C 800CAC3C FF450040 */  sd         $a1, 0x40($k0)
/* 85440 800CAC40 FF460048 */  sd         $a2, 0x48($k0)
/* 85444 800CAC44 FF470050 */  sd         $a3, 0x50($k0)
/* 85448 800CAC48 FF4B0070 */  sd         $t3, 0x70($k0)
/* 8544C 800CAC4C FF4C0078 */  sd         $t4, 0x78($k0)
/* 85450 800CAC50 FF4D0080 */  sd         $t5, 0x80($k0)
/* 85454 800CAC54 FF4E0088 */  sd         $t6, 0x88($k0)
/* 85458 800CAC58 FF4F0090 */  sd         $t7, 0x90($k0)
/* 8545C 800CAC5C FF500098 */  sd         $s0, 0x98($k0)
/* 85460 800CAC60 FF5100A0 */  sd         $s1, 0xA0($k0)
/* 85464 800CAC64 FF5200A8 */  sd         $s2, 0xA8($k0)
/* 85468 800CAC68 FF5300B0 */  sd         $s3, 0xB0($k0)
/* 8546C 800CAC6C FF5400B8 */  sd         $s4, 0xB8($k0)
/* 85470 800CAC70 FF5500C0 */  sd         $s5, 0xC0($k0)
/* 85474 800CAC74 FF5600C8 */  sd         $s6, 0xC8($k0)
/* 85478 800CAC78 FF5700D0 */  sd         $s7, 0xD0($k0)
/* 8547C 800CAC7C FF5800D8 */  sd         $t8, 0xD8($k0)
/* 85480 800CAC80 FF5900E0 */  sd         $t9, 0xE0($k0)
/* 85484 800CAC84 FF5C00E8 */  sd         $gp, 0xE8($k0)
/* 85488 800CAC88 FF5D00F0 */  sd         $sp, 0xF0($k0)
/* 8548C 800CAC8C FF5E00F8 */  sd         $fp, 0xF8($k0)
/* 85490 800CAC90 FF5F0100 */  sd         $ra, 0x100($k0)
/* 85494 800CAC94 FF480110 */  sd         $t0, 0x110($k0)
/* 85498 800CAC98 40087000 */  mfc0       $t0, $14
/* 8549C 800CAC9C AF48011C */  sw         $t0, 0x11C($k0)
/* 854A0 800CACA0 8F480018 */  lw         $t0, 0x18($k0)
/* 854A4 800CACA4 11000014 */  beqz       $t0, .L800CACF8
/* 854A8 800CACA8 00000000 */   nop
/* 854AC 800CACAC 4448F800 */  cfc1       $t0, $31
/* 854B0 800CACB0 00000000 */  nop
/* 854B4 800CACB4 AF48012C */  sw         $t0, 0x12C($k0)
/* 854B8 800CACB8 F7400130 */  sdc1       $f0, 0x130($k0)
/* 854BC 800CACBC F7420138 */  sdc1       $f2, 0x138($k0)
/* 854C0 800CACC0 F7440140 */  sdc1       $f4, 0x140($k0)
/* 854C4 800CACC4 F7460148 */  sdc1       $f6, 0x148($k0)
/* 854C8 800CACC8 F7480150 */  sdc1       $f8, 0x150($k0)
/* 854CC 800CACCC F74A0158 */  sdc1       $f10, 0x158($k0)
/* 854D0 800CACD0 F74C0160 */  sdc1       $f12, 0x160($k0)
/* 854D4 800CACD4 F74E0168 */  sdc1       $f14, 0x168($k0)
/* 854D8 800CACD8 F7500170 */  sdc1       $f16, 0x170($k0)
/* 854DC 800CACDC F7520178 */  sdc1       $f18, 0x178($k0)
/* 854E0 800CACE0 F7540180 */  sdc1       $f20, 0x180($k0)
/* 854E4 800CACE4 F7560188 */  sdc1       $f22, 0x188($k0)
/* 854E8 800CACE8 F7580190 */  sdc1       $f24, 0x190($k0)
/* 854EC 800CACEC F75A0198 */  sdc1       $f26, 0x198($k0)
/* 854F0 800CACF0 F75C01A0 */  sdc1       $f28, 0x1A0($k0)
/* 854F4 800CACF4 F75E01A8 */  sdc1       $f30, 0x1A8($k0)
.L800CACF8:
/* 854F8 800CACF8 40086800 */  mfc0       $t0, $13
/* 854FC 800CACFC AF480120 */  sw         $t0, 0x120($k0)
/* 85500 800CAD00 3C09A430 */  lui        $t1, %hi(D_A430000C)
/* 85504 800CAD04 8D29000C */  lw         $t1, %lo(D_A430000C)($t1)
/* 85508 800CAD08 AF490128 */  sw         $t1, 0x128($k0)
/* 8550C 800CAD0C 24090002 */  addiu      $t1, $zero, 0x2
/* 85510 800CAD10 A7490010 */  sh         $t1, 0x10($k0)
/* 85514 800CAD14 3C09800F */  lui        $t1, %hi(D_800E9034)
/* 85518 800CAD18 8D299034 */  lw         $t1, %lo(D_800E9034)($t1)
/* 8551C 800CAD1C 11200009 */  beqz       $t1, .L800CAD44
/* 85520 800CAD20 00000000 */   nop
/* 85524 800CAD24 3C0AC000 */  lui        $t2, %hi(D_C0000008)
/* 85528 800CAD28 AD400008 */  sw         $zero, (0xC0000008 & 0xFFFF)($t2)
/* 8552C 800CAD2C 3C04C000 */  lui        $a0, (0xC0000000 >> 16)
/* 85530 800CAD30 254A0008 */  addiu      $t2, $t2, %lo(D_C0000008)
/* 85534 800CAD34 0C03426A */  jal        func_800D09A8
/* 85538 800CAD38 8C840000 */   lw        $a0, (0xC0000000 & 0xFFFF)($a0)
/* 8553C 800CAD3C 10000156 */  b          .L800CB298
/* 85540 800CAD40 00000000 */   nop
.L800CAD44:
/* 85544 800CAD44 3C09800F */  lui        $t1, %hi(D_800E9038)
/* 85548 800CAD48 8D299038 */  lw         $t1, %lo(D_800E9038)($t1)
/* 8554C 800CAD4C 11200010 */  beqz       $t1, .L800CAD90
/* 85550 800CAD50 00000000 */   nop
/* 85554 800CAD54 3C0AC000 */  lui        $t2, %hi(D_C000000C)
/* 85558 800CAD58 AD40000C */  sw         $zero, (0xC000000C & 0xFFFF)($t2)
/* 8555C 800CAD5C 3C09800F */  lui        $t1, %hi(D_800E9140)
/* 85560 800CAD60 8D299140 */  lw         $t1, %lo(D_800E9140)($t1)
/* 85564 800CAD64 254A000C */  addiu      $t2, $t2, %lo(D_C000000C)
/* 85568 800CAD68 11200003 */  beqz       $t1, .L800CAD78
/* 8556C 800CAD6C 00000000 */   nop
/* 85570 800CAD70 0C032C2A */  jal        func_800CB0A8
/* 85574 800CAD74 24040078 */   addiu     $a0, $zero, 0x78
.L800CAD78:
/* 85578 800CAD78 3C09800F */  lui        $t1, %hi(D_800E9144)
/* 8557C 800CAD7C 8D299144 */  lw         $t1, %lo(D_800E9144)($t1)
/* 85580 800CAD80 3C01800F */  lui        $at, %hi(D_800E9144)
/* 85584 800CAD84 21290001 */  addi       $t1, $t1, 0x1
/* 85588 800CAD88 10000143 */  b          .L800CB298
/* 8558C 800CAD8C AC299144 */   sw        $t1, %lo(D_800E9144)($at)
.L800CAD90:
/* 85590 800CAD90 3109007C */  andi       $t1, $t0, 0x7C
/* 85594 800CAD94 240A0024 */  addiu      $t2, $zero, 0x24
/* 85598 800CAD98 112A009E */  beq        $t1, $t2, .L800CB014
/* 8559C 800CAD9C 00000000 */   nop
/* 855A0 800CADA0 240A002C */  addiu      $t2, $zero, 0x2C
/* 855A4 800CADA4 112A00ED */  beq        $t1, $t2, .L800CB15C
/* 855A8 800CADA8 00000000 */   nop
/* 855AC 800CADAC 240A0000 */  addiu      $t2, $zero, 0x0
/* 855B0 800CADB0 152A00B1 */  bne        $t1, $t2, L800CB078
/* 855B4 800CADB4 00000000 */   nop
/* 855B8 800CADB8 03688024 */  and        $s0, $k1, $t0
.L800CADBC:
/* 855BC 800CADBC 3209FF00 */  andi       $t1, $s0, 0xFF00
/* 855C0 800CADC0 00095302 */  srl        $t2, $t1, 12
/* 855C4 800CADC4 15400003 */  bnez       $t2, .L800CADD4
/* 855C8 800CADC8 00000000 */   nop
/* 855CC 800CADCC 00095202 */  srl        $t2, $t1, 8
/* 855D0 800CADD0 214A0010 */  addi       $t2, $t2, 0x10
.L800CADD4:
/* 855D4 800CADD4 3C01800F */  lui        $at, %hi(D_800EC600)
/* 855D8 800CADD8 002A0821 */  addu       $at, $at, $t2
/* 855DC 800CADDC 902AC600 */  lbu        $t2, %lo(D_800EC600)($at)
/* 855E0 800CADE0 3C01800F */  lui        $at, %hi(jtbl_800EC620_main)
/* 855E4 800CADE4 002A0821 */  addu       $at, $at, $t2
/* 855E8 800CADE8 8C2AC620 */  lw         $t2, %lo(jtbl_800EC620_main)($at)
/* 855EC 800CADEC 01400008 */  jr         $t2
/* 855F0 800CADF0 00000000 */   nop
glabel L800CADF4
/* 855F4 800CADF4 40095800 */  mfc0       $t1, $11
/* 855F8 800CADF8 40895800 */  mtc0       $t1, $11
/* 855FC 800CADFC 0C032C2A */  jal        func_800CB0A8
/* 85600 800CAE00 24040018 */   addiu     $a0, $zero, 0x18
/* 85604 800CAE04 3C01FFFF */  lui        $at, (0xFFFF7FFF >> 16)
/* 85608 800CAE08 34217FFF */  ori        $at, $at, (0xFFFF7FFF & 0xFFFF)
/* 8560C 800CAE0C 1000FFEB */  b          .L800CADBC
/* 85610 800CAE10 02018024 */   and       $s0, $s0, $at
glabel L800CAE14
/* 85614 800CAE14 240A0004 */  addiu      $t2, $zero, 0x4
/* 85618 800CAE18 3C01800F */  lui        $at, %hi(D_800E9020)
/* 8561C 800CAE1C 002A0821 */  addu       $at, $at, $t2
/* 85620 800CAE20 8C2A9020 */  lw         $t2, %lo(D_800E9020)($at)
/* 85624 800CAE24 11400003 */  beqz       $t2, .L800CAE34
/* 85628 800CAE28 00000000 */   nop
/* 8562C 800CAE2C 0140F809 */  jalr       $t2
/* 85630 800CAE30 00000000 */   nop
.L800CAE34:
/* 85634 800CAE34 0C032C2A */  jal        func_800CB0A8
/* 85638 800CAE38 24040010 */   addiu     $a0, $zero, 0x10
/* 8563C 800CAE3C 2401F7FF */  addiu      $at, $zero, -0x801
/* 85640 800CAE40 1000FFDE */  b          .L800CADBC
/* 85644 800CAE44 02018024 */   and       $s0, $s0, $at
glabel L800CAE48
/* 85648 800CAE48 3C11A430 */  lui        $s1, %hi(D_A4300008)
/* 8564C 800CAE4C 8E310008 */  lw         $s1, %lo(D_A4300008)($s1)
/* 85650 800CAE50 3231003F */  andi       $s1, $s1, 0x3F
/* 85654 800CAE54 32290001 */  andi       $t1, $s1, 0x1
/* 85658 800CAE58 11200013 */  beqz       $t1, .L800CAEA8
/* 8565C 800CAE5C 00000000 */   nop
/* 85660 800CAE60 3C0CA404 */  lui        $t4, %hi(D_A4040010)
/* 85664 800CAE64 8D8C0010 */  lw         $t4, %lo(D_A4040010)($t4)
/* 85668 800CAE68 24090008 */  addiu      $t1, $zero, 0x8
/* 8566C 800CAE6C 3C01A404 */  lui        $at, %hi(D_A4040010)
/* 85670 800CAE70 318C0300 */  andi       $t4, $t4, 0x300
/* 85674 800CAE74 3231003E */  andi       $s1, $s1, 0x3E
/* 85678 800CAE78 11800007 */  beqz       $t4, .L800CAE98
/* 8567C 800CAE7C AC290010 */   sw        $t1, %lo(D_A4040010)($at)
/* 85680 800CAE80 0C032C2A */  jal        func_800CB0A8
/* 85684 800CAE84 24040020 */   addiu     $a0, $zero, 0x20
/* 85688 800CAE88 12200038 */  beqz       $s1, .L800CAF6C
/* 8568C 800CAE8C 00000000 */   nop
/* 85690 800CAE90 10000005 */  b          .L800CAEA8
/* 85694 800CAE94 00000000 */   nop
.L800CAE98:
/* 85698 800CAE98 0C032C2A */  jal        func_800CB0A8
/* 8569C 800CAE9C 24040058 */   addiu     $a0, $zero, 0x58
/* 856A0 800CAEA0 12200032 */  beqz       $s1, .L800CAF6C
/* 856A4 800CAEA4 00000000 */   nop
.L800CAEA8:
/* 856A8 800CAEA8 32290008 */  andi       $t1, $s1, 0x8
/* 856AC 800CAEAC 11200007 */  beqz       $t1, .L800CAECC
/* 856B0 800CAEB0 3C01A440 */   lui       $at, %hi(D_A4400010)
/* 856B4 800CAEB4 32310037 */  andi       $s1, $s1, 0x37
/* 856B8 800CAEB8 AC200010 */  sw         $zero, %lo(D_A4400010)($at)
/* 856BC 800CAEBC 0C032C2A */  jal        func_800CB0A8
/* 856C0 800CAEC0 24040038 */   addiu     $a0, $zero, 0x38
/* 856C4 800CAEC4 12200029 */  beqz       $s1, .L800CAF6C
/* 856C8 800CAEC8 00000000 */   nop
.L800CAECC:
/* 856CC 800CAECC 32290004 */  andi       $t1, $s1, 0x4
/* 856D0 800CAED0 11200009 */  beqz       $t1, .L800CAEF8
/* 856D4 800CAED4 00000000 */   nop
/* 856D8 800CAED8 24090001 */  addiu      $t1, $zero, 0x1
/* 856DC 800CAEDC 3C01A450 */  lui        $at, %hi(D_A450000C)
/* 856E0 800CAEE0 3231003B */  andi       $s1, $s1, 0x3B
/* 856E4 800CAEE4 AC29000C */  sw         $t1, %lo(D_A450000C)($at)
/* 856E8 800CAEE8 0C032C2A */  jal        func_800CB0A8
/* 856EC 800CAEEC 24040030 */   addiu     $a0, $zero, 0x30
/* 856F0 800CAEF0 1220001E */  beqz       $s1, .L800CAF6C
/* 856F4 800CAEF4 00000000 */   nop
.L800CAEF8:
/* 856F8 800CAEF8 32290002 */  andi       $t1, $s1, 0x2
/* 856FC 800CAEFC 11200007 */  beqz       $t1, .L800CAF1C
/* 85700 800CAF00 3C01A480 */   lui       $at, %hi(D_A4800018)
/* 85704 800CAF04 3231003D */  andi       $s1, $s1, 0x3D
/* 85708 800CAF08 AC200018 */  sw         $zero, %lo(D_A4800018)($at)
/* 8570C 800CAF0C 0C032C2A */  jal        func_800CB0A8
/* 85710 800CAF10 24040028 */   addiu     $a0, $zero, 0x28
/* 85714 800CAF14 12200015 */  beqz       $s1, .L800CAF6C
/* 85718 800CAF18 00000000 */   nop
.L800CAF1C:
/* 8571C 800CAF1C 32290010 */  andi       $t1, $s1, 0x10
/* 85720 800CAF20 11200009 */  beqz       $t1, .L800CAF48
/* 85724 800CAF24 00000000 */   nop
/* 85728 800CAF28 24090002 */  addiu      $t1, $zero, 0x2
/* 8572C 800CAF2C 3C01A460 */  lui        $at, %hi(D_A4600010)
/* 85730 800CAF30 3231002F */  andi       $s1, $s1, 0x2F
/* 85734 800CAF34 AC290010 */  sw         $t1, %lo(D_A4600010)($at)
/* 85738 800CAF38 0C032C2A */  jal        func_800CB0A8
/* 8573C 800CAF3C 24040040 */   addiu     $a0, $zero, 0x40
/* 85740 800CAF40 1220000A */  beqz       $s1, .L800CAF6C
/* 85744 800CAF44 00000000 */   nop
.L800CAF48:
/* 85748 800CAF48 32290020 */  andi       $t1, $s1, 0x20
/* 8574C 800CAF4C 11200007 */  beqz       $t1, .L800CAF6C
/* 85750 800CAF50 00000000 */   nop
/* 85754 800CAF54 24090800 */  addiu      $t1, $zero, 0x800
/* 85758 800CAF58 3C01A430 */  lui        $at, %hi(D_A4300000)
/* 8575C 800CAF5C 3231001F */  andi       $s1, $s1, 0x1F
/* 85760 800CAF60 AC290000 */  sw         $t1, %lo(D_A4300000)($at)
/* 85764 800CAF64 0C032C2A */  jal        func_800CB0A8
/* 85768 800CAF68 24040048 */   addiu     $a0, $zero, 0x48
.L800CAF6C:
/* 8576C 800CAF6C 2401FBFF */  addiu      $at, $zero, -0x401
/* 85770 800CAF70 1000FF92 */  b          .L800CADBC
/* 85774 800CAF74 02018024 */   and       $s0, $s0, $at
glabel L800CAF78
/* 85778 800CAF78 8F5B0118 */  lw         $k1, 0x118($k0)
/* 8577C 800CAF7C 2401EFFF */  addiu      $at, $zero, -0x1001
/* 85780 800CAF80 3C09800F */  lui        $t1, %hi(D_800E8FD8)
/* 85784 800CAF84 0361D824 */  and        $k1, $k1, $at
/* 85788 800CAF88 AF5B0118 */  sw         $k1, 0x118($k0)
/* 8578C 800CAF8C 25298FD8 */  addiu      $t1, $t1, %lo(D_800E8FD8)
/* 85790 800CAF90 8D2A0000 */  lw         $t2, 0x0($t1)
/* 85794 800CAF94 11400003 */  beqz       $t2, .L800CAFA4
/* 85798 800CAF98 2401EFFF */   addiu     $at, $zero, -0x1001
/* 8579C 800CAF9C 10000023 */  b          L800CB02C
/* 857A0 800CAFA0 02018024 */   and       $s0, $s0, $at
.L800CAFA4:
/* 857A4 800CAFA4 240A0001 */  addiu      $t2, $zero, 0x1
/* 857A8 800CAFA8 AD2A0000 */  sw         $t2, 0x0($t1)
/* 857AC 800CAFAC 0C032C2A */  jal        func_800CB0A8
/* 857B0 800CAFB0 24040070 */   addiu     $a0, $zero, 0x70
/* 857B4 800CAFB4 3C0A800F */  lui        $t2, %hi(D_800E9008)
/* 857B8 800CAFB8 8D4A9008 */  lw         $t2, %lo(D_800E9008)($t2)
/* 857BC 800CAFBC 2401EFFF */  addiu      $at, $zero, -0x1001
/* 857C0 800CAFC0 02018024 */  and        $s0, $s0, $at
/* 857C4 800CAFC4 8D5B0118 */  lw         $k1, 0x118($t2)
/* 857C8 800CAFC8 0361D824 */  and        $k1, $k1, $at
/* 857CC 800CAFCC 10000017 */  b          L800CB02C
/* 857D0 800CAFD0 AD5B0118 */   sw        $k1, 0x118($t2)
glabel L800CAFD4
/* 857D4 800CAFD4 2401FDFF */  addiu      $at, $zero, -0x201
/* 857D8 800CAFD8 01014024 */  and        $t0, $t0, $at
/* 857DC 800CAFDC 40886800 */  mtc0       $t0, $13
/* 857E0 800CAFE0 0C032C2A */  jal        func_800CB0A8
/* 857E4 800CAFE4 24040008 */   addiu     $a0, $zero, 0x8
/* 857E8 800CAFE8 2401FDFF */  addiu      $at, $zero, -0x201
/* 857EC 800CAFEC 1000FF73 */  b          .L800CADBC
/* 857F0 800CAFF0 02018024 */   and       $s0, $s0, $at
glabel L800CAFF4
/* 857F4 800CAFF4 2401FEFF */  addiu      $at, $zero, -0x101
/* 857F8 800CAFF8 01014024 */  and        $t0, $t0, $at
/* 857FC 800CAFFC 40886800 */  mtc0       $t0, $13
/* 85800 800CB000 0C032C2A */  jal        func_800CB0A8
/* 85804 800CB004 24040000 */   addiu     $a0, $zero, 0x0
/* 85808 800CB008 2401FEFF */  addiu      $at, $zero, -0x101
/* 8580C 800CB00C 1000FF6B */  b          .L800CADBC
/* 85810 800CB010 02018024 */   and       $s0, $s0, $at
.L800CB014:
/* 85814 800CB014 24090001 */  addiu      $t1, $zero, 0x1
/* 85818 800CB018 A7490012 */  sh         $t1, 0x12($k0)
/* 8581C 800CB01C 0C032C2A */  jal        func_800CB0A8
/* 85820 800CB020 24040050 */   addiu     $a0, $zero, 0x50
/* 85824 800CB024 10000001 */  b          L800CB02C
/* 85828 800CB028 00000000 */   nop
glabel L800CB02C
/* 8582C 800CB02C 3C0A800F */  lui        $t2, %hi(D_800E9008)
/* 85830 800CB030 8D4A9008 */  lw         $t2, %lo(D_800E9008)($t2)
/* 85834 800CB034 8F490004 */  lw         $t1, 0x4($k0)
/* 85838 800CB038 8D4B0004 */  lw         $t3, 0x4($t2)
/* 8583C 800CB03C 012B082A */  slt        $at, $t1, $t3
/* 85840 800CB040 10200007 */  beqz       $at, .L800CB060
/* 85844 800CB044 00000000 */   nop
/* 85848 800CB048 3C04800F */  lui        $a0, %hi(D_800E9008)
/* 8584C 800CB04C 03402825 */  or         $a1, $k0, $zero
/* 85850 800CB050 0C032C88 */  jal        func_800CB220
/* 85854 800CB054 24849008 */   addiu     $a0, $a0, %lo(D_800E9008)
/* 85858 800CB058 08032C9E */  j          func_800CB278
/* 8585C 800CB05C 00000000 */   nop
.L800CB060:
/* 85860 800CB060 3C09800F */  lui        $t1, %hi(D_800E9008)
/* 85864 800CB064 25299008 */  addiu      $t1, $t1, %lo(D_800E9008)
/* 85868 800CB068 8D2A0000 */  lw         $t2, 0x0($t1)
/* 8586C 800CB06C AF4A0000 */  sw         $t2, 0x0($k0)
/* 85870 800CB070 08032C9E */  j          func_800CB278
/* 85874 800CB074 AD3A0000 */   sw        $k0, 0x0($t1)
glabel L800CB078
/* 85878 800CB078 3C01800F */  lui        $at, %hi(D_800E9014)
/* 8587C 800CB07C AC3A9014 */  sw         $k0, %lo(D_800E9014)($at)
/* 85880 800CB080 24090001 */  addiu      $t1, $zero, 0x1
/* 85884 800CB084 A7490010 */  sh         $t1, 0x10($k0)
/* 85888 800CB088 24090002 */  addiu      $t1, $zero, 0x2
/* 8588C 800CB08C A7490012 */  sh         $t1, 0x12($k0)
/* 85890 800CB090 400A4000 */  mfc0       $t2, $8
/* 85894 800CB094 AF4A0124 */  sw         $t2, 0x124($k0)
/* 85898 800CB098 0C032C2A */  jal        func_800CB0A8
/* 8589C 800CB09C 24040060 */   addiu     $a0, $zero, 0x60
/* 858A0 800CB0A0 08032C9E */  j          func_800CB278
/* 858A4 800CB0A4 00000000 */   nop

# Handwritten function
glabel func_800CB0A8
/* 858A8 800CB0A8 3C0A801E */  lui        $t2, %hi(D_801D86F0)
/* 858AC 800CB0AC 254A86F0 */  addiu      $t2, $t2, %lo(D_801D86F0)
/* 858B0 800CB0B0 01445021 */  addu       $t2, $t2, $a0
/* 858B4 800CB0B4 8D490000 */  lw         $t1, 0x0($t2)
/* 858B8 800CB0B8 03E09025 */  or         $s2, $ra, $zero
/* 858BC 800CB0BC 11200025 */  beqz       $t1, .L800CB154
/* 858C0 800CB0C0 00000000 */   nop
/* 858C4 800CB0C4 8D2B0008 */  lw         $t3, 0x8($t1)
/* 858C8 800CB0C8 8D2C0010 */  lw         $t4, 0x10($t1)
/* 858CC 800CB0CC 016C082A */  slt        $at, $t3, $t4
/* 858D0 800CB0D0 10200020 */  beqz       $at, .L800CB154
/* 858D4 800CB0D4 00000000 */   nop
/* 858D8 800CB0D8 8D2D000C */  lw         $t5, 0xC($t1)
/* 858DC 800CB0DC 01AB6821 */  addu       $t5, $t5, $t3
/* 858E0 800CB0E0 01AC001A */  div        $zero, $t5, $t4
/* 858E4 800CB0E4 15800002 */  bnez       $t4, .L800CB0F0
/* 858E8 800CB0E8 00000000 */   nop
/* 858EC 800CB0EC 0007000D */  break      7
.L800CB0F0:
/* 858F0 800CB0F0 2401FFFF */  addiu      $at, $zero, -0x1
/* 858F4 800CB0F4 15810004 */  bne        $t4, $at, .L800CB108
/* 858F8 800CB0F8 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 858FC 800CB0FC 15A10002 */  bne        $t5, $at, .L800CB108
/* 85900 800CB100 00000000 */   nop
/* 85904 800CB104 0006000D */  break      6
.L800CB108:
/* 85908 800CB108 8D2C0014 */  lw         $t4, 0x14($t1)
/* 8590C 800CB10C 00006810 */  mfhi       $t5
/* 85910 800CB110 000D6880 */  sll        $t5, $t5, 2
/* 85914 800CB114 018D6021 */  addu       $t4, $t4, $t5
/* 85918 800CB118 8D4D0004 */  lw         $t5, 0x4($t2)
/* 8591C 800CB11C 256A0001 */  addiu      $t2, $t3, 0x1
/* 85920 800CB120 AD8D0000 */  sw         $t5, 0x0($t4)
/* 85924 800CB124 AD2A0008 */  sw         $t2, 0x8($t1)
/* 85928 800CB128 8D2A0000 */  lw         $t2, 0x0($t1)
/* 8592C 800CB12C 8D4B0000 */  lw         $t3, 0x0($t2)
/* 85930 800CB130 11600008 */  beqz       $t3, .L800CB154
/* 85934 800CB134 00000000 */   nop
/* 85938 800CB138 0C032C9A */  jal        func_800CB268
/* 8593C 800CB13C 01202025 */   or        $a0, $t1, $zero
/* 85940 800CB140 00405025 */  or         $t2, $v0, $zero
/* 85944 800CB144 3C04800F */  lui        $a0, %hi(D_800E9008)
/* 85948 800CB148 01402825 */  or         $a1, $t2, $zero
/* 8594C 800CB14C 0C032C88 */  jal        func_800CB220
/* 85950 800CB150 24849008 */   addiu     $a0, $a0, %lo(D_800E9008)
.L800CB154:
/* 85954 800CB154 02400008 */  jr         $s2
/* 85958 800CB158 00000000 */   nop
.L800CB15C:
/* 8595C 800CB15C 3C013000 */  lui        $at, (0x30000000 >> 16)
/* 85960 800CB160 01014824 */  and        $t1, $t0, $at
/* 85964 800CB164 00094F02 */  srl        $t1, $t1, 28
/* 85968 800CB168 240A0001 */  addiu      $t2, $zero, 0x1
/* 8596C 800CB16C 152AFFC2 */  bne        $t1, $t2, L800CB078
/* 85970 800CB170 00000000 */   nop
/* 85974 800CB174 8F5B0118 */  lw         $k1, 0x118($k0)
/* 85978 800CB178 3C012000 */  lui        $at, (0x20000000 >> 16)
/* 8597C 800CB17C 24090001 */  addiu      $t1, $zero, 0x1
/* 85980 800CB180 0361D825 */  or         $k1, $k1, $at
/* 85984 800CB184 AF490018 */  sw         $t1, 0x18($k0)
/* 85988 800CB188 1000FFB5 */  b          .L800CB060
/* 8598C 800CB18C AF5B0118 */   sw        $k1, 0x118($k0)

# Handwritten function
glabel func_800CB190
/* 85990 800CB190 3C05800F */  lui        $a1, %hi(D_800E9010)
/* 85994 800CB194 8CA59010 */  lw         $a1, %lo(D_800E9010)($a1)
/* 85998 800CB198 40086000 */  mfc0       $t0, $12
/* 8599C 800CB19C 8CBB0018 */  lw         $k1, 0x18($a1)
/* 859A0 800CB1A0 35080002 */  ori        $t0, $t0, 0x2
/* 859A4 800CB1A4 ACA80118 */  sw         $t0, 0x118($a1)
/* 859A8 800CB1A8 FCB00098 */  sd         $s0, 0x98($a1)
/* 859AC 800CB1AC FCB100A0 */  sd         $s1, 0xA0($a1)
/* 859B0 800CB1B0 FCB200A8 */  sd         $s2, 0xA8($a1)
/* 859B4 800CB1B4 FCB300B0 */  sd         $s3, 0xB0($a1)
/* 859B8 800CB1B8 FCB400B8 */  sd         $s4, 0xB8($a1)
/* 859BC 800CB1BC FCB500C0 */  sd         $s5, 0xC0($a1)
/* 859C0 800CB1C0 FCB600C8 */  sd         $s6, 0xC8($a1)
/* 859C4 800CB1C4 FCB700D0 */  sd         $s7, 0xD0($a1)
/* 859C8 800CB1C8 FCBC00E8 */  sd         $gp, 0xE8($a1)
/* 859CC 800CB1CC FCBD00F0 */  sd         $sp, 0xF0($a1)
/* 859D0 800CB1D0 FCBE00F8 */  sd         $fp, 0xF8($a1)
/* 859D4 800CB1D4 FCBF0100 */  sd         $ra, 0x100($a1)
/* 859D8 800CB1D8 13600009 */  beqz       $k1, .L800CB200
/* 859DC 800CB1DC ACBF011C */   sw        $ra, 0x11C($a1)
/* 859E0 800CB1E0 445BF800 */  cfc1       $k1, $31
/* 859E4 800CB1E4 F4B40180 */  sdc1       $f20, 0x180($a1)
/* 859E8 800CB1E8 F4B60188 */  sdc1       $f22, 0x188($a1)
/* 859EC 800CB1EC F4B80190 */  sdc1       $f24, 0x190($a1)
/* 859F0 800CB1F0 F4BA0198 */  sdc1       $f26, 0x198($a1)
/* 859F4 800CB1F4 F4BC01A0 */  sdc1       $f28, 0x1A0($a1)
/* 859F8 800CB1F8 F4BE01A8 */  sdc1       $f30, 0x1A8($a1)
/* 859FC 800CB1FC ACBB012C */  sw         $k1, 0x12C($a1)
.L800CB200:
/* 85A00 800CB200 3C1BA430 */  lui        $k1, %hi(D_A430000C)
/* 85A04 800CB204 8F7B000C */  lw         $k1, %lo(D_A430000C)($k1)
/* 85A08 800CB208 10800003 */  beqz       $a0, .L800CB218
/* 85A0C 800CB20C ACBB0128 */   sw        $k1, 0x128($a1)
/* 85A10 800CB210 0C032C88 */  jal        func_800CB220
/* 85A14 800CB214 00000000 */   nop
.L800CB218:
/* 85A18 800CB218 08032C9E */  j          func_800CB278
/* 85A1C 800CB21C 00000000 */   nop

glabel func_800CB220
/* 85A20 800CB220 8C980000 */  lw         $t8, 0x0($a0)
/* 85A24 800CB224 8CAF0004 */  lw         $t7, 0x4($a1)
/* 85A28 800CB228 0080C825 */  or         $t9, $a0, $zero
/* 85A2C 800CB22C 8F0E0004 */  lw         $t6, 0x4($t8)
/* 85A30 800CB230 01CF082A */  slt        $at, $t6, $t7
/* 85A34 800CB234 14200007 */  bnez       $at, .L800CB254
/* 85A38 800CB238 00000000 */   nop
.L800CB23C:
/* 85A3C 800CB23C 0300C825 */  or         $t9, $t8, $zero
/* 85A40 800CB240 8F180000 */  lw         $t8, 0x0($t8)
/* 85A44 800CB244 8F0E0004 */  lw         $t6, 0x4($t8)
/* 85A48 800CB248 01CF082A */  slt        $at, $t6, $t7
/* 85A4C 800CB24C 1020FFFB */  beqz       $at, .L800CB23C
/* 85A50 800CB250 00000000 */   nop
.L800CB254:
/* 85A54 800CB254 8F380000 */  lw         $t8, 0x0($t9)
/* 85A58 800CB258 ACB80000 */  sw         $t8, 0x0($a1)
/* 85A5C 800CB25C AF250000 */  sw         $a1, 0x0($t9)
/* 85A60 800CB260 03E00008 */  jr         $ra
/* 85A64 800CB264 ACA40008 */   sw        $a0, 0x8($a1)

glabel func_800CB268
/* 85A68 800CB268 8C820000 */  lw         $v0, 0x0($a0)
/* 85A6C 800CB26C 8C590000 */  lw         $t9, 0x0($v0)
/* 85A70 800CB270 03E00008 */  jr         $ra
/* 85A74 800CB274 AC990000 */   sw        $t9, 0x0($a0)

# Handwritten function
glabel func_800CB278
/* 85A78 800CB278 3C04800F */  lui        $a0, %hi(D_800E9008)
/* 85A7C 800CB27C 0C032C9A */  jal        func_800CB268
/* 85A80 800CB280 24849008 */   addiu     $a0, $a0, %lo(D_800E9008)
/* 85A84 800CB284 3C01800F */  lui        $at, %hi(D_800E9010)
/* 85A88 800CB288 AC229010 */  sw         $v0, %lo(D_800E9010)($at)
/* 85A8C 800CB28C 24080004 */  addiu      $t0, $zero, 0x4
/* 85A90 800CB290 A4480010 */  sh         $t0, 0x10($v0)
/* 85A94 800CB294 0040D025 */  or         $k0, $v0, $zero
.L800CB298:
/* 85A98 800CB298 DF5B0108 */  ld         $k1, 0x108($k0)
/* 85A9C 800CB29C DF410020 */  ld         $at, 0x20($k0)
/* 85AA0 800CB2A0 DF420028 */  ld         $v0, 0x28($k0)
/* 85AA4 800CB2A4 03600013 */  mtlo       $k1
/* 85AA8 800CB2A8 DF5B0110 */  ld         $k1, 0x110($k0)
/* 85AAC 800CB2AC DF430030 */  ld         $v1, 0x30($k0)
/* 85AB0 800CB2B0 DF440038 */  ld         $a0, 0x38($k0)
/* 85AB4 800CB2B4 DF450040 */  ld         $a1, 0x40($k0)
/* 85AB8 800CB2B8 DF460048 */  ld         $a2, 0x48($k0)
/* 85ABC 800CB2BC DF470050 */  ld         $a3, 0x50($k0)
/* 85AC0 800CB2C0 DF480058 */  ld         $t0, 0x58($k0)
/* 85AC4 800CB2C4 DF490060 */  ld         $t1, 0x60($k0)
/* 85AC8 800CB2C8 DF4A0068 */  ld         $t2, 0x68($k0)
/* 85ACC 800CB2CC DF4B0070 */  ld         $t3, 0x70($k0)
/* 85AD0 800CB2D0 DF4C0078 */  ld         $t4, 0x78($k0)
/* 85AD4 800CB2D4 DF4D0080 */  ld         $t5, 0x80($k0)
/* 85AD8 800CB2D8 DF4E0088 */  ld         $t6, 0x88($k0)
/* 85ADC 800CB2DC DF4F0090 */  ld         $t7, 0x90($k0)
/* 85AE0 800CB2E0 DF500098 */  ld         $s0, 0x98($k0)
/* 85AE4 800CB2E4 DF5100A0 */  ld         $s1, 0xA0($k0)
/* 85AE8 800CB2E8 DF5200A8 */  ld         $s2, 0xA8($k0)
/* 85AEC 800CB2EC DF5300B0 */  ld         $s3, 0xB0($k0)
/* 85AF0 800CB2F0 DF5400B8 */  ld         $s4, 0xB8($k0)
/* 85AF4 800CB2F4 DF5500C0 */  ld         $s5, 0xC0($k0)
/* 85AF8 800CB2F8 DF5600C8 */  ld         $s6, 0xC8($k0)
/* 85AFC 800CB2FC DF5700D0 */  ld         $s7, 0xD0($k0)
/* 85B00 800CB300 DF5800D8 */  ld         $t8, 0xD8($k0)
/* 85B04 800CB304 DF5900E0 */  ld         $t9, 0xE0($k0)
/* 85B08 800CB308 DF5C00E8 */  ld         $gp, 0xE8($k0)
/* 85B0C 800CB30C 03600011 */  mthi       $k1
/* 85B10 800CB310 DF5D00F0 */  ld         $sp, 0xF0($k0)
/* 85B14 800CB314 DF5E00F8 */  ld         $fp, 0xF8($k0)
/* 85B18 800CB318 DF5F0100 */  ld         $ra, 0x100($k0)
/* 85B1C 800CB31C 8F5B011C */  lw         $k1, 0x11C($k0)
/* 85B20 800CB320 409B7000 */  mtc0       $k1, $14
/* 85B24 800CB324 8F5B0118 */  lw         $k1, 0x118($k0)
/* 85B28 800CB328 409B6000 */  mtc0       $k1, $12
/* 85B2C 800CB32C 8F5B0018 */  lw         $k1, 0x18($k0)
/* 85B30 800CB330 13600013 */  beqz       $k1, .L800CB380
/* 85B34 800CB334 00000000 */   nop
/* 85B38 800CB338 8F5B012C */  lw         $k1, 0x12C($k0)
/* 85B3C 800CB33C 44DBF800 */  ctc1       $k1, $31
/* 85B40 800CB340 D7400130 */  ldc1       $f0, 0x130($k0)
/* 85B44 800CB344 D7420138 */  ldc1       $f2, 0x138($k0)
/* 85B48 800CB348 D7440140 */  ldc1       $f4, 0x140($k0)
/* 85B4C 800CB34C D7460148 */  ldc1       $f6, 0x148($k0)
/* 85B50 800CB350 D7480150 */  ldc1       $f8, 0x150($k0)
/* 85B54 800CB354 D74A0158 */  ldc1       $f10, 0x158($k0)
/* 85B58 800CB358 D74C0160 */  ldc1       $f12, 0x160($k0)
/* 85B5C 800CB35C D74E0168 */  ldc1       $f14, 0x168($k0)
/* 85B60 800CB360 D7500170 */  ldc1       $f16, 0x170($k0)
/* 85B64 800CB364 D7520178 */  ldc1       $f18, 0x178($k0)
/* 85B68 800CB368 D7540180 */  ldc1       $f20, 0x180($k0)
/* 85B6C 800CB36C D7560188 */  ldc1       $f22, 0x188($k0)
/* 85B70 800CB370 D7580190 */  ldc1       $f24, 0x190($k0)
/* 85B74 800CB374 D75A0198 */  ldc1       $f26, 0x198($k0)
/* 85B78 800CB378 D75C01A0 */  ldc1       $f28, 0x1A0($k0)
/* 85B7C 800CB37C D75E01A8 */  ldc1       $f30, 0x1A8($k0)
.L800CB380:
/* 85B80 800CB380 8F5B0128 */  lw         $k1, 0x128($k0)
/* 85B84 800CB384 001BD840 */  sll        $k1, $k1, 1
/* 85B88 800CB388 3C1A800F */  lui        $k0, %hi(D_800EC750)
/* 85B8C 800CB38C 275AC750 */  addiu      $k0, $k0, %lo(D_800EC750)
/* 85B90 800CB390 037AD821 */  addu       $k1, $k1, $k0
/* 85B94 800CB394 977B0000 */  lhu        $k1, 0x0($k1)
/* 85B98 800CB398 3C1AA430 */  lui        $k0, %hi(D_A430000C)
/* 85B9C 800CB39C 275A000C */  addiu      $k0, $k0, %lo(D_A430000C)
/* 85BA0 800CB3A0 AF5B0000 */  sw         $k1, 0x0($k0)
/* 85BA4 800CB3A4 00000000 */  nop
/* 85BA8 800CB3A8 00000000 */  nop
/* 85BAC 800CB3AC 00000000 */  nop
/* 85BB0 800CB3B0 00000000 */  nop
/* 85BB4 800CB3B4 42000018 */  eret

glabel __osCleanupThread
/* 85BB8 800CB3B8 0C034348 */  jal        func_800D0D20
/* 85BBC 800CB3BC 00002025 */   or        $a0, $zero, $zero

# Handwritten function
glabel osGetCount
/* 85BC0 800CB3C0 40024800 */  mfc0       $v0, $9
/* 85BC4 800CB3C4 03E00008 */  jr         $ra
/* 85BC8 800CB3C8 00000000 */   nop
/* 85BCC 800CB3CC 00000000 */  nop

glabel func_800CB3D0
/* 85BD0 800CB3D0 3C01801E */  lui        $at, %hi(D_801DAC54)
/* 85BD4 800CB3D4 240E0000 */  addiu      $t6, $zero, 0x0
/* 85BD8 800CB3D8 240F0000 */  addiu      $t7, $zero, 0x0
/* 85BDC 800CB3DC AC2FAC54 */  sw         $t7, %lo(D_801DAC54)($at)
/* 85BE0 800CB3E0 AC2EAC50 */  sw         $t6, %lo(D_801DAC50)($at)
/* 85BE4 800CB3E4 3C01801E */  lui        $at, %hi(__osBaseCounter)
/* 85BE8 800CB3E8 3C18800F */  lui        $t8, %hi(D_800E9040)
/* 85BEC 800CB3EC 8F189040 */  lw         $t8, %lo(D_800E9040)($t8)
/* 85BF0 800CB3F0 AC20AC58 */  sw         $zero, %lo(__osBaseCounter)($at)
/* 85BF4 800CB3F4 3C01801E */  lui        $at, %hi(D_801DAC5C)
/* 85BF8 800CB3F8 AC20AC5C */  sw         $zero, %lo(D_801DAC5C)($at)
/* 85BFC 800CB3FC 3C19800F */  lui        $t9, %hi(D_800E9040)
/* 85C00 800CB400 AF180004 */  sw         $t8, 0x4($t8)
/* 85C04 800CB404 8F399040 */  lw         $t9, %lo(D_800E9040)($t9)
/* 85C08 800CB408 3C09800F */  lui        $t1, %hi(D_800E9040)
/* 85C0C 800CB40C 240A0000 */  addiu      $t2, $zero, 0x0
/* 85C10 800CB410 8F280004 */  lw         $t0, 0x4($t9)
/* 85C14 800CB414 240B0000 */  addiu      $t3, $zero, 0x0
/* 85C18 800CB418 3C0C800F */  lui        $t4, %hi(D_800E9040)
/* 85C1C 800CB41C AF280000 */  sw         $t0, 0x0($t9)
/* 85C20 800CB420 8D299040 */  lw         $t1, %lo(D_800E9040)($t1)
/* 85C24 800CB424 3C0D800F */  lui        $t5, %hi(D_800E9040)
/* 85C28 800CB428 3C18800F */  lui        $t8, %hi(D_800E9040)
/* 85C2C 800CB42C AD2A0010 */  sw         $t2, 0x10($t1)
/* 85C30 800CB430 AD2B0014 */  sw         $t3, 0x14($t1)
/* 85C34 800CB434 8D8C9040 */  lw         $t4, %lo(D_800E9040)($t4)
/* 85C38 800CB438 8D8E0010 */  lw         $t6, 0x10($t4)
/* 85C3C 800CB43C 8D8F0014 */  lw         $t7, 0x14($t4)
/* 85C40 800CB440 AD8E0008 */  sw         $t6, 0x8($t4)
/* 85C44 800CB444 AD8F000C */  sw         $t7, 0xC($t4)
/* 85C48 800CB448 8DAD9040 */  lw         $t5, %lo(D_800E9040)($t5)
/* 85C4C 800CB44C ADA00018 */  sw         $zero, 0x18($t5)
/* 85C50 800CB450 8F189040 */  lw         $t8, %lo(D_800E9040)($t8)
/* 85C54 800CB454 03E00008 */  jr         $ra
/* 85C58 800CB458 AF00001C */   sw        $zero, 0x1C($t8)

glabel func_800CB45C
/* 85C5C 800CB45C 3C0E800F */  lui        $t6, %hi(D_800E9040)
/* 85C60 800CB460 8DCE9040 */  lw         $t6, %lo(D_800E9040)($t6)
/* 85C64 800CB464 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 85C68 800CB468 AFBF0014 */  sw         $ra, 0x14($sp)
/* 85C6C 800CB46C 8DCF0000 */  lw         $t7, 0x0($t6)
/* 85C70 800CB470 11EE0054 */  beq        $t7, $t6, .L800CB5C4
/* 85C74 800CB474 00000000 */   nop
.L800CB478:
/* 85C78 800CB478 3C18800F */  lui        $t8, %hi(D_800E9040)
/* 85C7C 800CB47C 8F189040 */  lw         $t8, %lo(D_800E9040)($t8)
/* 85C80 800CB480 8F190000 */  lw         $t9, 0x0($t8)
/* 85C84 800CB484 17380006 */  bne        $t9, $t8, .L800CB4A0
/* 85C88 800CB488 AFB90024 */   sw        $t9, 0x24($sp)
/* 85C8C 800CB48C 0C034388 */  jal        func_800D0E20
/* 85C90 800CB490 00002025 */   or        $a0, $zero, $zero
/* 85C94 800CB494 3C01801E */  lui        $at, %hi(D_801DAC60)
/* 85C98 800CB498 1000004A */  b          .L800CB5C4
/* 85C9C 800CB49C AC20AC60 */   sw        $zero, %lo(D_801DAC60)($at)
.L800CB4A0:
/* 85CA0 800CB4A0 0C032CF0 */  jal        osGetCount
/* 85CA4 800CB4A4 00000000 */   nop
/* 85CA8 800CB4A8 AFA20020 */  sw         $v0, 0x20($sp)
/* 85CAC 800CB4AC 3C09801E */  lui        $t1, %hi(D_801DAC60)
/* 85CB0 800CB4B0 8D29AC60 */  lw         $t1, %lo(D_801DAC60)($t1)
/* 85CB4 800CB4B4 8FA80020 */  lw         $t0, 0x20($sp)
/* 85CB8 800CB4B8 8FAF0024 */  lw         $t7, 0x24($sp)
/* 85CBC 800CB4BC 3C01801E */  lui        $at, %hi(D_801DAC60)
/* 85CC0 800CB4C0 01095023 */  subu       $t2, $t0, $t1
/* 85CC4 800CB4C4 AFAA001C */  sw         $t2, 0x1C($sp)
/* 85CC8 800CB4C8 AC28AC60 */  sw         $t0, %lo(D_801DAC60)($at)
/* 85CCC 800CB4CC 8DEE0010 */  lw         $t6, 0x10($t7)
/* 85CD0 800CB4D0 8FAB001C */  lw         $t3, 0x1C($sp)
/* 85CD4 800CB4D4 240C0000 */  addiu      $t4, $zero, 0x0
/* 85CD8 800CB4D8 01E0C825 */  or         $t9, $t7, $zero
/* 85CDC 800CB4DC 01CC082B */  sltu       $at, $t6, $t4
/* 85CE0 800CB4E0 8DEF0014 */  lw         $t7, 0x14($t7)
/* 85CE4 800CB4E4 14200016 */  bnez       $at, .L800CB540
/* 85CE8 800CB4E8 01606825 */   or        $t5, $t3, $zero
/* 85CEC 800CB4EC 018E082B */  sltu       $at, $t4, $t6
/* 85CF0 800CB4F0 14200003 */  bnez       $at, .L800CB500
/* 85CF4 800CB4F4 01AF082B */   sltu      $at, $t5, $t7
/* 85CF8 800CB4F8 10200011 */  beqz       $at, .L800CB540
/* 85CFC 800CB4FC 00000000 */   nop
.L800CB500:
/* 85D00 800CB500 27380010 */  addiu      $t8, $t9, 0x10
/* 85D04 800CB504 AFB80018 */  sw         $t8, 0x18($sp)
/* 85D08 800CB508 8F2B0014 */  lw         $t3, 0x14($t9)
/* 85D0C 800CB50C 8F2A0010 */  lw         $t2, 0x10($t9)
/* 85D10 800CB510 016D082B */  sltu       $at, $t3, $t5
/* 85D14 800CB514 014C4023 */  subu       $t0, $t2, $t4
/* 85D18 800CB518 01014023 */  subu       $t0, $t0, $at
/* 85D1C 800CB51C 016D4823 */  subu       $t1, $t3, $t5
/* 85D20 800CB520 AF290014 */  sw         $t1, 0x14($t9)
/* 85D24 800CB524 AF280010 */  sw         $t0, 0x10($t9)
/* 85D28 800CB528 8FAE0024 */  lw         $t6, 0x24($sp)
/* 85D2C 800CB52C 8DC40010 */  lw         $a0, 0x10($t6)
/* 85D30 800CB530 0C032D75 */  jal        func_800CB5D4
/* 85D34 800CB534 8DC50014 */   lw        $a1, 0x14($t6)
/* 85D38 800CB538 10000022 */  b          .L800CB5C4
/* 85D3C 800CB53C 00000000 */   nop
.L800CB540:
/* 85D40 800CB540 8FAF0024 */  lw         $t7, 0x24($sp)
/* 85D44 800CB544 8DF80000 */  lw         $t8, 0x0($t7)
/* 85D48 800CB548 8DEA0004 */  lw         $t2, 0x4($t7)
/* 85D4C 800CB54C AD580000 */  sw         $t8, 0x0($t2)
/* 85D50 800CB550 8FAB0024 */  lw         $t3, 0x24($sp)
/* 85D54 800CB554 8D6C0004 */  lw         $t4, 0x4($t3)
/* 85D58 800CB558 8D6D0000 */  lw         $t5, 0x0($t3)
/* 85D5C 800CB55C ADAC0004 */  sw         $t4, 0x4($t5)
/* 85D60 800CB560 8FA80024 */  lw         $t0, 0x24($sp)
/* 85D64 800CB564 AD000000 */  sw         $zero, 0x0($t0)
/* 85D68 800CB568 8FA90024 */  lw         $t1, 0x24($sp)
/* 85D6C 800CB56C AD200004 */  sw         $zero, 0x4($t1)
/* 85D70 800CB570 8FB90024 */  lw         $t9, 0x24($sp)
/* 85D74 800CB574 8F2E0018 */  lw         $t6, 0x18($t9)
/* 85D78 800CB578 11C00005 */  beqz       $t6, .L800CB590
/* 85D7C 800CB57C 00000000 */   nop
/* 85D80 800CB580 01C02025 */  or         $a0, $t6, $zero
/* 85D84 800CB584 8F25001C */  lw         $a1, 0x1C($t9)
/* 85D88 800CB588 0C0315E8 */  jal        func_800C57A0
/* 85D8C 800CB58C 00003025 */   or        $a2, $zero, $zero
.L800CB590:
/* 85D90 800CB590 8FAF0024 */  lw         $t7, 0x24($sp)
/* 85D94 800CB594 8DF80008 */  lw         $t8, 0x8($t7)
/* 85D98 800CB598 8DF9000C */  lw         $t9, 0xC($t7)
/* 85D9C 800CB59C 17000003 */  bnez       $t8, .L800CB5AC
/* 85DA0 800CB5A0 00000000 */   nop
/* 85DA4 800CB5A4 1320FFB4 */  beqz       $t9, .L800CB478
/* 85DA8 800CB5A8 00000000 */   nop
.L800CB5AC:
/* 85DAC 800CB5AC ADF80010 */  sw         $t8, 0x10($t7)
/* 85DB0 800CB5B0 ADF90014 */  sw         $t9, 0x14($t7)
/* 85DB4 800CB5B4 0C032D92 */  jal        func_800CB648
/* 85DB8 800CB5B8 8FA40024 */   lw        $a0, 0x24($sp)
/* 85DBC 800CB5BC 1000FFAE */  b          .L800CB478
/* 85DC0 800CB5C0 00000000 */   nop
.L800CB5C4:
/* 85DC4 800CB5C4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 85DC8 800CB5C8 27BD0028 */  addiu      $sp, $sp, 0x28
/* 85DCC 800CB5CC 03E00008 */  jr         $ra
/* 85DD0 800CB5D0 00000000 */   nop

glabel func_800CB5D4
/* 85DD4 800CB5D4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 85DD8 800CB5D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 85DDC 800CB5DC AFA40028 */  sw         $a0, 0x28($sp)
/* 85DE0 800CB5E0 0C032AB4 */  jal        __osDisableInt
/* 85DE4 800CB5E4 AFA5002C */   sw        $a1, 0x2C($sp)
/* 85DE8 800CB5E8 0C032CF0 */  jal        osGetCount
/* 85DEC 800CB5EC AFA2001C */   sw        $v0, 0x1C($sp)
/* 85DF0 800CB5F0 3C01801E */  lui        $at, %hi(D_801DAC60)
/* 85DF4 800CB5F4 AC22AC60 */  sw         $v0, %lo(D_801DAC60)($at)
/* 85DF8 800CB5F8 3C0E801E */  lui        $t6, %hi(D_801DAC60)
/* 85DFC 800CB5FC 8DCEAC60 */  lw         $t6, %lo(D_801DAC60)($t6)
/* 85E00 800CB600 8FA9002C */  lw         $t1, 0x2C($sp)
/* 85E04 800CB604 8FA80028 */  lw         $t0, 0x28($sp)
/* 85E08 800CB608 01C0C825 */  or         $t9, $t6, $zero
/* 85E0C 800CB60C 03295821 */  addu       $t3, $t9, $t1
/* 85E10 800CB610 24180000 */  addiu      $t8, $zero, 0x0
/* 85E14 800CB614 0169082B */  sltu       $at, $t3, $t1
/* 85E18 800CB618 00385021 */  addu       $t2, $at, $t8
/* 85E1C 800CB61C 01485021 */  addu       $t2, $t2, $t0
/* 85E20 800CB620 AFAA0020 */  sw         $t2, 0x20($sp)
/* 85E24 800CB624 AFAB0024 */  sw         $t3, 0x24($sp)
/* 85E28 800CB628 0C034388 */  jal        func_800D0E20
/* 85E2C 800CB62C 01602025 */   or        $a0, $t3, $zero
/* 85E30 800CB630 0C032ABC */  jal        __osRestoreInt
/* 85E34 800CB634 8FA4001C */   lw        $a0, 0x1C($sp)
/* 85E38 800CB638 8FBF0014 */  lw         $ra, 0x14($sp)
/* 85E3C 800CB63C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 85E40 800CB640 03E00008 */  jr         $ra
/* 85E44 800CB644 00000000 */   nop

glabel func_800CB648
/* 85E48 800CB648 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 85E4C 800CB64C AFBF0014 */  sw         $ra, 0x14($sp)
/* 85E50 800CB650 0C032AB4 */  jal        __osDisableInt
/* 85E54 800CB654 AFA40038 */   sw        $a0, 0x38($sp)
/* 85E58 800CB658 3C0E800F */  lui        $t6, %hi(D_800E9040)
/* 85E5C 800CB65C 8DCE9040 */  lw         $t6, %lo(D_800E9040)($t6)
/* 85E60 800CB660 AFA20024 */  sw         $v0, 0x24($sp)
/* 85E64 800CB664 8FB80038 */  lw         $t8, 0x38($sp)
/* 85E68 800CB668 8DCF0000 */  lw         $t7, 0x0($t6)
/* 85E6C 800CB66C AFAF0034 */  sw         $t7, 0x34($sp)
/* 85E70 800CB670 8F090014 */  lw         $t1, 0x14($t8)
/* 85E74 800CB674 8F080010 */  lw         $t0, 0x10($t8)
/* 85E78 800CB678 AFA9002C */  sw         $t1, 0x2C($sp)
/* 85E7C 800CB67C 11EE0029 */  beq        $t7, $t6, .L800CB724
/* 85E80 800CB680 AFA80028 */   sw        $t0, 0x28($sp)
/* 85E84 800CB684 8DEA0010 */  lw         $t2, 0x10($t7)
/* 85E88 800CB688 8DEB0014 */  lw         $t3, 0x14($t7)
/* 85E8C 800CB68C 010A082B */  sltu       $at, $t0, $t2
/* 85E90 800CB690 14200024 */  bnez       $at, .L800CB724
/* 85E94 800CB694 0148082B */   sltu      $at, $t2, $t0
/* 85E98 800CB698 14200003 */  bnez       $at, .L800CB6A8
/* 85E9C 800CB69C 0169082B */   sltu      $at, $t3, $t1
/* 85EA0 800CB6A0 10200020 */  beqz       $at, .L800CB724
/* 85EA4 800CB6A4 00000000 */   nop
.L800CB6A8:
/* 85EA8 800CB6A8 27B90028 */  addiu      $t9, $sp, 0x28
/* 85EAC 800CB6AC 8FB80034 */  lw         $t8, 0x34($sp)
/* 85EB0 800CB6B0 AFB90020 */  sw         $t9, 0x20($sp)
/* 85EB4 800CB6B4 8F2D0004 */  lw         $t5, 0x4($t9)
/* 85EB8 800CB6B8 8F2C0000 */  lw         $t4, 0x0($t9)
/* 85EBC 800CB6BC 8F0F0014 */  lw         $t7, 0x14($t8)
/* 85EC0 800CB6C0 8F0E0010 */  lw         $t6, 0x10($t8)
/* 85EC4 800CB6C4 3C18800F */  lui        $t8, %hi(D_800E9040)
/* 85EC8 800CB6C8 01AF082B */  sltu       $at, $t5, $t7
/* 85ECC 800CB6CC 018E4023 */  subu       $t0, $t4, $t6
/* 85ED0 800CB6D0 01014023 */  subu       $t0, $t0, $at
/* 85ED4 800CB6D4 01AF4823 */  subu       $t1, $t5, $t7
/* 85ED8 800CB6D8 AF290004 */  sw         $t1, 0x4($t9)
/* 85EDC 800CB6DC AF280000 */  sw         $t0, 0x0($t9)
/* 85EE0 800CB6E0 8FAA0034 */  lw         $t2, 0x34($sp)
/* 85EE4 800CB6E4 8F189040 */  lw         $t8, %lo(D_800E9040)($t8)
/* 85EE8 800CB6E8 8D4B0000 */  lw         $t3, 0x0($t2)
/* 85EEC 800CB6EC 1178000D */  beq        $t3, $t8, .L800CB724
/* 85EF0 800CB6F0 AFAB0034 */   sw        $t3, 0x34($sp)
/* 85EF4 800CB6F4 8FAC0028 */  lw         $t4, 0x28($sp)
/* 85EF8 800CB6F8 8D6E0010 */  lw         $t6, 0x10($t3)
/* 85EFC 800CB6FC 8FAD002C */  lw         $t5, 0x2C($sp)
/* 85F00 800CB700 8D6F0014 */  lw         $t7, 0x14($t3)
/* 85F04 800CB704 01CC082B */  sltu       $at, $t6, $t4
/* 85F08 800CB708 1420FFE7 */  bnez       $at, .L800CB6A8
/* 85F0C 800CB70C 00000000 */   nop
/* 85F10 800CB710 018E082B */  sltu       $at, $t4, $t6
/* 85F14 800CB714 14200003 */  bnez       $at, .L800CB724
/* 85F18 800CB718 01ED082B */   sltu      $at, $t7, $t5
/* 85F1C 800CB71C 1420FFE2 */  bnez       $at, .L800CB6A8
/* 85F20 800CB720 00000000 */   nop
.L800CB724:
/* 85F24 800CB724 8FB90038 */  lw         $t9, 0x38($sp)
/* 85F28 800CB728 8FA80028 */  lw         $t0, 0x28($sp)
/* 85F2C 800CB72C 8FA9002C */  lw         $t1, 0x2C($sp)
/* 85F30 800CB730 3C18800F */  lui        $t8, %hi(D_800E9040)
/* 85F34 800CB734 AF280010 */  sw         $t0, 0x10($t9)
/* 85F38 800CB738 AF290014 */  sw         $t1, 0x14($t9)
/* 85F3C 800CB73C 8F189040 */  lw         $t8, %lo(D_800E9040)($t8)
/* 85F40 800CB740 8FAA0034 */  lw         $t2, 0x34($sp)
/* 85F44 800CB744 1158000D */  beq        $t2, $t8, .L800CB77C
/* 85F48 800CB748 00000000 */   nop
/* 85F4C 800CB74C 254B0010 */  addiu      $t3, $t2, 0x10
/* 85F50 800CB750 AFAB001C */  sw         $t3, 0x1C($sp)
/* 85F54 800CB754 8D4D0014 */  lw         $t5, 0x14($t2)
/* 85F58 800CB758 8D4C0010 */  lw         $t4, 0x10($t2)
/* 85F5C 800CB75C 8FAE0028 */  lw         $t6, 0x28($sp)
/* 85F60 800CB760 8FAF002C */  lw         $t7, 0x2C($sp)
/* 85F64 800CB764 018E4023 */  subu       $t0, $t4, $t6
/* 85F68 800CB768 01AF082B */  sltu       $at, $t5, $t7
/* 85F6C 800CB76C 01014023 */  subu       $t0, $t0, $at
/* 85F70 800CB770 01AF4823 */  subu       $t1, $t5, $t7
/* 85F74 800CB774 AD490014 */  sw         $t1, 0x14($t2)
/* 85F78 800CB778 AD480010 */  sw         $t0, 0x10($t2)
.L800CB77C:
/* 85F7C 800CB77C 8FB90034 */  lw         $t9, 0x34($sp)
/* 85F80 800CB780 8FB80038 */  lw         $t8, 0x38($sp)
/* 85F84 800CB784 AF190000 */  sw         $t9, 0x0($t8)
/* 85F88 800CB788 8FAB0034 */  lw         $t3, 0x34($sp)
/* 85F8C 800CB78C 8FAD0038 */  lw         $t5, 0x38($sp)
/* 85F90 800CB790 8D6C0004 */  lw         $t4, 0x4($t3)
/* 85F94 800CB794 ADAC0004 */  sw         $t4, 0x4($t5)
/* 85F98 800CB798 8FAF0034 */  lw         $t7, 0x34($sp)
/* 85F9C 800CB79C 8FAE0038 */  lw         $t6, 0x38($sp)
/* 85FA0 800CB7A0 8DE80004 */  lw         $t0, 0x4($t7)
/* 85FA4 800CB7A4 AD0E0000 */  sw         $t6, 0x0($t0)
/* 85FA8 800CB7A8 8FAA0034 */  lw         $t2, 0x34($sp)
/* 85FAC 800CB7AC 8FA90038 */  lw         $t1, 0x38($sp)
/* 85FB0 800CB7B0 AD490004 */  sw         $t1, 0x4($t2)
/* 85FB4 800CB7B4 0C032ABC */  jal        __osRestoreInt
/* 85FB8 800CB7B8 8FA40024 */   lw        $a0, 0x24($sp)
/* 85FBC 800CB7BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 85FC0 800CB7C0 8FA20028 */  lw         $v0, 0x28($sp)
/* 85FC4 800CB7C4 8FA3002C */  lw         $v1, 0x2C($sp)
/* 85FC8 800CB7C8 03E00008 */  jr         $ra
/* 85FCC 800CB7CC 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_800CB7D0
/* 85FD0 800CB7D0 3C0E8000 */  lui        $t6, %hi(D_80000300)
/* 85FD4 800CB7D4 8DCE0300 */  lw         $t6, %lo(D_80000300)($t6)
/* 85FD8 800CB7D8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 85FDC 800CB7DC AFBF0014 */  sw         $ra, 0x14($sp)
/* 85FE0 800CB7E0 3C01800F */  lui        $at, %hi(D_800E90B8)
/* 85FE4 800CB7E4 3C04800F */  lui        $a0, %hi(D_800E9050)
/* 85FE8 800CB7E8 24849050 */  addiu      $a0, $a0, %lo(D_800E9050)
/* 85FEC 800CB7EC 24050060 */  addiu      $a1, $zero, 0x60
/* 85FF0 800CB7F0 0C032940 */  jal        func_800CA500
/* 85FF4 800CB7F4 AC2E90B8 */   sw        $t6, %lo(D_800E90B8)($at)
/* 85FF8 800CB7F8 3C0F800F */  lui        $t7, %hi(D_800E9050)
/* 85FFC 800CB7FC 25EF9050 */  addiu      $t7, $t7, %lo(D_800E9050)
/* 86000 800CB800 3C01800F */  lui        $at, %hi(D_800E90B0)
/* 86004 800CB804 AC2F90B0 */  sw         $t7, %lo(D_800E90B0)($at)
/* 86008 800CB808 3C01800F */  lui        $at, %hi(D_800E90B4)
/* 8600C 800CB80C 25F80030 */  addiu      $t8, $t7, 0x30
/* 86010 800CB810 AC3890B4 */  sw         $t8, %lo(D_800E90B4)($at)
/* 86014 800CB814 24190001 */  addiu      $t9, $zero, 0x1
/* 86018 800CB818 A5F90032 */  sh         $t9, 0x32($t7)
/* 8601C 800CB81C 3C09800F */  lui        $t1, %hi(D_800E90B0)
/* 86020 800CB820 8D2990B0 */  lw         $t1, %lo(D_800E90B0)($t1)
/* 86024 800CB824 24080001 */  addiu      $t0, $zero, 0x1
/* 86028 800CB828 3C0A800F */  lui        $t2, %hi(D_800E90B8)
/* 8602C 800CB82C A5280002 */  sh         $t0, 0x2($t1)
/* 86030 800CB830 8D4A90B8 */  lw         $t2, %lo(D_800E90B8)($t2)
/* 86034 800CB834 24010001 */  addiu      $at, $zero, 0x1
/* 86038 800CB838 1541000B */  bne        $t2, $at, .L800CB868
/* 8603C 800CB83C 00000000 */   nop
/* 86040 800CB840 3C0C800F */  lui        $t4, %hi(D_800E90B4)
/* 86044 800CB844 8D8C90B4 */  lw         $t4, %lo(D_800E90B4)($t4)
/* 86048 800CB848 3C0B800F */  lui        $t3, %hi(D_800E9150)
/* 8604C 800CB84C 256B9150 */  addiu      $t3, $t3, %lo(D_800E9150)
/* 86050 800CB850 3C0D02E6 */  lui        $t5, (0x2E6D354 >> 16)
/* 86054 800CB854 35ADD354 */  ori        $t5, $t5, (0x2E6D354 & 0xFFFF)
/* 86058 800CB858 3C01800F */  lui        $at, %hi(D_800E90BC)
/* 8605C 800CB85C AD8B0008 */  sw         $t3, 0x8($t4)
/* 86060 800CB860 1000000A */  b          .L800CB88C
/* 86064 800CB864 AC2D90BC */   sw        $t5, %lo(D_800E90BC)($at)
.L800CB868:
/* 86068 800CB868 3C18800F */  lui        $t8, %hi(D_800E90B4)
/* 8606C 800CB86C 8F1890B4 */  lw         $t8, %lo(D_800E90B4)($t8)
/* 86070 800CB870 3C0E800F */  lui        $t6, %hi(D_800E91A0)
/* 86074 800CB874 25CE91A0 */  addiu      $t6, $t6, %lo(D_800E91A0)
/* 86078 800CB878 3C1902E6 */  lui        $t9, (0x2E6025C >> 16)
/* 8607C 800CB87C 3739025C */  ori        $t9, $t9, (0x2E6025C & 0xFFFF)
/* 86080 800CB880 3C01800F */  lui        $at, %hi(D_800E90BC)
/* 86084 800CB884 AF0E0008 */  sw         $t6, 0x8($t8)
/* 86088 800CB888 AC3990BC */  sw         $t9, %lo(D_800E90BC)($at)
.L800CB88C:
/* 8608C 800CB88C 3C08800F */  lui        $t0, %hi(D_800E90B4)
/* 86090 800CB890 8D0890B4 */  lw         $t0, %lo(D_800E90B4)($t0)
/* 86094 800CB894 240F0020 */  addiu      $t7, $zero, 0x20
/* 86098 800CB898 3C09800F */  lui        $t1, %hi(D_800E90B4)
/* 8609C 800CB89C A50F0000 */  sh         $t7, 0x0($t0)
/* 860A0 800CB8A0 8D2990B4 */  lw         $t1, %lo(D_800E90B4)($t1)
/* 860A4 800CB8A4 3C0CA440 */  lui        $t4, %hi(D_A4400010)
/* 860A8 800CB8A8 8D2A0008 */  lw         $t2, 0x8($t1)
/* 860AC 800CB8AC 8D4B0004 */  lw         $t3, 0x4($t2)
/* 860B0 800CB8B0 AD2B000C */  sw         $t3, 0xC($t1)
/* 860B4 800CB8B4 8D8D0010 */  lw         $t5, %lo(D_A4400010)($t4)
/* 860B8 800CB8B8 2DA1000B */  sltiu      $at, $t5, 0xB
/* 860BC 800CB8BC 14200006 */  bnez       $at, .L800CB8D8
/* 860C0 800CB8C0 00000000 */   nop
.L800CB8C4:
/* 860C4 800CB8C4 3C0EA440 */  lui        $t6, %hi(D_A4400010)
/* 860C8 800CB8C8 8DD80010 */  lw         $t8, %lo(D_A4400010)($t6)
/* 860CC 800CB8CC 2F01000B */  sltiu      $at, $t8, 0xB
/* 860D0 800CB8D0 1020FFFC */  beqz       $at, .L800CB8C4
/* 860D4 800CB8D4 00000000 */   nop
.L800CB8D8:
/* 860D8 800CB8D8 3C19A440 */  lui        $t9, %hi(D_A4400000)
/* 860DC 800CB8DC 0C032FD4 */  jal        func_800CBF50
/* 860E0 800CB8E0 AF200000 */   sw        $zero, %lo(D_A4400000)($t9)
/* 860E4 800CB8E4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 860E8 800CB8E8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 860EC 800CB8EC 03E00008 */  jr         $ra
/* 860F0 800CB8F0 00000000 */   nop
/* 860F4 800CB8F4 00000000 */  nop
/* 860F8 800CB8F8 00000000 */  nop
/* 860FC 800CB8FC 00000000 */  nop

glabel func_800CB900
/* 86100 800CB900 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 86104 800CB904 AFBF0014 */  sw         $ra, 0x14($sp)
/* 86108 800CB908 240E0001 */  addiu      $t6, $zero, 0x1
/* 8610C 800CB90C 3C01800F */  lui        $at, %hi(D_800E90C0)
/* 86110 800CB910 3C04801E */  lui        $a0, %hi(D_801DAC78)
/* 86114 800CB914 3C05801E */  lui        $a1, %hi(D_801DAC70)
/* 86118 800CB918 AC2E90C0 */  sw         $t6, %lo(D_800E90C0)($at)
/* 8611C 800CB91C 24A5AC70 */  addiu      $a1, $a1, %lo(D_801DAC70)
/* 86120 800CB920 2484AC78 */  addiu      $a0, $a0, %lo(D_801DAC78)
/* 86124 800CB924 0C0318C4 */  jal        osCreateMesgQueue
/* 86128 800CB928 24060001 */   addiu     $a2, $zero, 0x1
/* 8612C 800CB92C 3C04801E */  lui        $a0, %hi(D_801DAC78)
/* 86130 800CB930 2484AC78 */  addiu      $a0, $a0, %lo(D_801DAC78)
/* 86134 800CB934 00002825 */  or         $a1, $zero, $zero
/* 86138 800CB938 0C0315E8 */  jal        func_800C57A0
/* 8613C 800CB93C 00003025 */   or        $a2, $zero, $zero
/* 86140 800CB940 8FBF0014 */  lw         $ra, 0x14($sp)
/* 86144 800CB944 27BD0018 */  addiu      $sp, $sp, 0x18
/* 86148 800CB948 03E00008 */  jr         $ra
/* 8614C 800CB94C 00000000 */   nop

glabel func_800CB950
/* 86150 800CB950 3C0E800F */  lui        $t6, %hi(D_800E90C0)
/* 86154 800CB954 8DCE90C0 */  lw         $t6, %lo(D_800E90C0)($t6)
/* 86158 800CB958 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8615C 800CB95C AFBF0014 */  sw         $ra, 0x14($sp)
/* 86160 800CB960 15C00003 */  bnez       $t6, .L800CB970
/* 86164 800CB964 00000000 */   nop
/* 86168 800CB968 0C032E40 */  jal        func_800CB900
/* 8616C 800CB96C 00000000 */   nop
.L800CB970:
/* 86170 800CB970 3C04801E */  lui        $a0, %hi(D_801DAC78)
/* 86174 800CB974 2484AC78 */  addiu      $a0, $a0, %lo(D_801DAC78)
/* 86178 800CB978 27A5001C */  addiu      $a1, $sp, 0x1C
/* 8617C 800CB97C 0C031718 */  jal        func_800C5C60
/* 86180 800CB980 24060001 */   addiu     $a2, $zero, 0x1
/* 86184 800CB984 8FBF0014 */  lw         $ra, 0x14($sp)
/* 86188 800CB988 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8618C 800CB98C 03E00008 */  jr         $ra
/* 86190 800CB990 00000000 */   nop

glabel func_800CB994
/* 86194 800CB994 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 86198 800CB998 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8619C 800CB99C 3C04801E */  lui        $a0, %hi(D_801DAC78)
/* 861A0 800CB9A0 2484AC78 */  addiu      $a0, $a0, %lo(D_801DAC78)
/* 861A4 800CB9A4 00002825 */  or         $a1, $zero, $zero
/* 861A8 800CB9A8 0C0315E8 */  jal        func_800C57A0
/* 861AC 800CB9AC 00003025 */   or        $a2, $zero, $zero
/* 861B0 800CB9B0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 861B4 800CB9B4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 861B8 800CB9B8 03E00008 */  jr         $ra
/* 861BC 800CB9BC 00000000 */   nop

glabel func_800CB9C0
/* 861C0 800CB9C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 861C4 800CB9C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 861C8 800CB9C8 AFA40018 */  sw         $a0, 0x18($sp)
/* 861CC 800CB9CC 0C03438C */  jal        func_800D0E30
/* 861D0 800CB9D0 AFA5001C */   sw        $a1, 0x1C($sp)
/* 861D4 800CB9D4 10400003 */  beqz       $v0, .L800CB9E4
/* 861D8 800CB9D8 00000000 */   nop
/* 861DC 800CB9DC 1000001F */  b          .L800CBA5C
/* 861E0 800CB9E0 2402FFFF */   addiu     $v0, $zero, -0x1
.L800CB9E4:
/* 861E4 800CB9E4 8FAE0018 */  lw         $t6, 0x18($sp)
/* 861E8 800CB9E8 24010001 */  addiu      $at, $zero, 0x1
/* 861EC 800CB9EC 15C10004 */  bne        $t6, $at, .L800CBA00
/* 861F0 800CB9F0 00000000 */   nop
/* 861F4 800CB9F4 8FA4001C */  lw         $a0, 0x1C($sp)
/* 861F8 800CB9F8 0C032F64 */  jal        func_800CBD90
/* 861FC 800CB9FC 24050040 */   addiu     $a1, $zero, 0x40
.L800CBA00:
/* 86200 800CBA00 0C0315C8 */  jal        osVirtualToPhysical
/* 86204 800CBA04 8FA4001C */   lw        $a0, 0x1C($sp)
/* 86208 800CBA08 3C0FA480 */  lui        $t7, %hi(D_A4800000)
/* 8620C 800CBA0C ADE20000 */  sw         $v0, %lo(D_A4800000)($t7)
/* 86210 800CBA10 8FB80018 */  lw         $t8, 0x18($sp)
/* 86214 800CBA14 17000006 */  bnez       $t8, .L800CBA30
/* 86218 800CBA18 00000000 */   nop
/* 8621C 800CBA1C 3C191FC0 */  lui        $t9, (0x1FC007C0 >> 16)
/* 86220 800CBA20 373907C0 */  ori        $t9, $t9, (0x1FC007C0 & 0xFFFF)
/* 86224 800CBA24 3C08A480 */  lui        $t0, %hi(D_A4800004)
/* 86228 800CBA28 10000005 */  b          .L800CBA40
/* 8622C 800CBA2C AD190004 */   sw        $t9, %lo(D_A4800004)($t0)
.L800CBA30:
/* 86230 800CBA30 3C091FC0 */  lui        $t1, (0x1FC007C0 >> 16)
/* 86234 800CBA34 352907C0 */  ori        $t1, $t1, (0x1FC007C0 & 0xFFFF)
/* 86238 800CBA38 3C0AA480 */  lui        $t2, %hi(D_A4800010)
/* 8623C 800CBA3C AD490010 */  sw         $t1, %lo(D_A4800010)($t2)
.L800CBA40:
/* 86240 800CBA40 8FAB0018 */  lw         $t3, 0x18($sp)
/* 86244 800CBA44 15600004 */  bnez       $t3, .L800CBA58
/* 86248 800CBA48 00000000 */   nop
/* 8624C 800CBA4C 8FA4001C */  lw         $a0, 0x1C($sp)
/* 86250 800CBA50 0C0328B0 */  jal        func_800CA2C0
/* 86254 800CBA54 24050040 */   addiu     $a1, $zero, 0x40
.L800CBA58:
/* 86258 800CBA58 00001025 */  or         $v0, $zero, $zero
.L800CBA5C:
/* 8625C 800CBA5C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 86260 800CBA60 27BD0018 */  addiu      $sp, $sp, 0x18
/* 86264 800CBA64 03E00008 */  jr         $ra
/* 86268 800CBA68 00000000 */   nop
/* 8626C 800CBA6C 00000000 */  nop

glabel func_800CBA70
/* 86270 800CBA70 3C0EA404 */  lui        $t6, %hi(D_A4040010)
/* 86274 800CBA74 03E00008 */  jr         $ra
/* 86278 800CBA78 ADC40010 */   sw        $a0, %lo(D_A4040010)($t6)
/* 8627C 800CBA7C 00000000 */  nop

# Handwritten function
glabel func_800CBA80
/* 86280 800CBA80 10C0001A */  beqz       $a2, .L800CBAEC
/* 86284 800CBA84 00A03825 */   or        $a3, $a1, $zero
/* 86288 800CBA88 10850018 */  beq        $a0, $a1, .L800CBAEC
/* 8628C 800CBA8C 00A4082A */   slt       $at, $a1, $a0
/* 86290 800CBA90 54200008 */  bnel       $at, $zero, .L800CBAB4
/* 86294 800CBA94 28C10010 */   slti      $at, $a2, 0x10
/* 86298 800CBA98 00861020 */  add        $v0, $a0, $a2
/* 8629C 800CBA9C 00A2082A */  slt        $at, $a1, $v0
/* 862A0 800CBAA0 50200004 */  beql       $at, $zero, .L800CBAB4
/* 862A4 800CBAA4 28C10010 */   slti      $at, $a2, 0x10
/* 862A8 800CBAA8 1000005B */  b          .L800CBC18
/* 862AC 800CBAAC 28C10010 */   slti      $at, $a2, 0x10
/* 862B0 800CBAB0 28C10010 */  slti       $at, $a2, 0x10
.L800CBAB4:
/* 862B4 800CBAB4 14200005 */  bnez       $at, .L800CBACC
/* 862B8 800CBAB8 00000000 */   nop
/* 862BC 800CBABC 30820003 */  andi       $v0, $a0, 0x3
/* 862C0 800CBAC0 30A30003 */  andi       $v1, $a1, 0x3
/* 862C4 800CBAC4 1043000B */  beq        $v0, $v1, .L800CBAF4
/* 862C8 800CBAC8 00000000 */   nop
.L800CBACC:
/* 862CC 800CBACC 10C00007 */  beqz       $a2, .L800CBAEC
/* 862D0 800CBAD0 00000000 */   nop
/* 862D4 800CBAD4 00861821 */  addu       $v1, $a0, $a2
.L800CBAD8:
/* 862D8 800CBAD8 80820000 */  lb         $v0, 0x0($a0)
/* 862DC 800CBADC 24840001 */  addiu      $a0, $a0, 0x1
/* 862E0 800CBAE0 24A50001 */  addiu      $a1, $a1, 0x1
/* 862E4 800CBAE4 1483FFFC */  bne        $a0, $v1, .L800CBAD8
/* 862E8 800CBAE8 A0A2FFFF */   sb        $v0, -0x1($a1)
.L800CBAEC:
/* 862EC 800CBAEC 03E00008 */  jr         $ra
/* 862F0 800CBAF0 00E01025 */   or        $v0, $a3, $zero
.L800CBAF4:
/* 862F4 800CBAF4 10400018 */  beqz       $v0, .L800CBB58
/* 862F8 800CBAF8 24010001 */   addiu     $at, $zero, 0x1
/* 862FC 800CBAFC 1041000F */  beq        $v0, $at, .L800CBB3C
/* 86300 800CBB00 24010002 */   addiu     $at, $zero, 0x2
/* 86304 800CBB04 50410008 */  beql       $v0, $at, .L800CBB28
/* 86308 800CBB08 84820000 */   lh        $v0, 0x0($a0)
/* 8630C 800CBB0C 80820000 */  lb         $v0, 0x0($a0)
/* 86310 800CBB10 24840001 */  addiu      $a0, $a0, 0x1
/* 86314 800CBB14 24A50001 */  addiu      $a1, $a1, 0x1
/* 86318 800CBB18 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 8631C 800CBB1C 1000000E */  b          .L800CBB58
/* 86320 800CBB20 A0A2FFFF */   sb        $v0, -0x1($a1)
/* 86324 800CBB24 84820000 */  lh         $v0, 0x0($a0)
.L800CBB28:
/* 86328 800CBB28 24840002 */  addiu      $a0, $a0, 0x2
/* 8632C 800CBB2C 24A50002 */  addiu      $a1, $a1, 0x2
/* 86330 800CBB30 24C6FFFE */  addiu      $a2, $a2, -0x2
/* 86334 800CBB34 10000008 */  b          .L800CBB58
/* 86338 800CBB38 A4A2FFFE */   sh        $v0, -0x2($a1)
.L800CBB3C:
/* 8633C 800CBB3C 80820000 */  lb         $v0, 0x0($a0)
/* 86340 800CBB40 84830001 */  lh         $v1, 0x1($a0)
/* 86344 800CBB44 24840003 */  addiu      $a0, $a0, 0x3
/* 86348 800CBB48 24A50003 */  addiu      $a1, $a1, 0x3
/* 8634C 800CBB4C 24C6FFFD */  addiu      $a2, $a2, -0x3
/* 86350 800CBB50 A0A2FFFD */  sb         $v0, -0x3($a1)
/* 86354 800CBB54 A4A3FFFE */  sh         $v1, -0x2($a1)
.L800CBB58:
/* 86358 800CBB58 28C10020 */  slti       $at, $a2, 0x20
/* 8635C 800CBB5C 54200016 */  bnel       $at, $zero, .L800CBBB8
/* 86360 800CBB60 28C10010 */   slti      $at, $a2, 0x10
/* 86364 800CBB64 8C820000 */  lw         $v0, 0x0($a0)
/* 86368 800CBB68 8C830004 */  lw         $v1, 0x4($a0)
/* 8636C 800CBB6C 8C880008 */  lw         $t0, 0x8($a0)
/* 86370 800CBB70 8C89000C */  lw         $t1, 0xC($a0)
/* 86374 800CBB74 8C8A0010 */  lw         $t2, 0x10($a0)
/* 86378 800CBB78 8C8B0014 */  lw         $t3, 0x14($a0)
/* 8637C 800CBB7C 8C8C0018 */  lw         $t4, 0x18($a0)
/* 86380 800CBB80 8C8D001C */  lw         $t5, 0x1C($a0)
/* 86384 800CBB84 24840020 */  addiu      $a0, $a0, 0x20
/* 86388 800CBB88 24A50020 */  addiu      $a1, $a1, 0x20
/* 8638C 800CBB8C 24C6FFE0 */  addiu      $a2, $a2, -0x20
/* 86390 800CBB90 ACA2FFE0 */  sw         $v0, -0x20($a1)
/* 86394 800CBB94 ACA3FFE4 */  sw         $v1, -0x1C($a1)
/* 86398 800CBB98 ACA8FFE8 */  sw         $t0, -0x18($a1)
/* 8639C 800CBB9C ACA9FFEC */  sw         $t1, -0x14($a1)
/* 863A0 800CBBA0 ACAAFFF0 */  sw         $t2, -0x10($a1)
/* 863A4 800CBBA4 ACABFFF4 */  sw         $t3, -0xC($a1)
/* 863A8 800CBBA8 ACACFFF8 */  sw         $t4, -0x8($a1)
/* 863AC 800CBBAC 1000FFEA */  b          .L800CBB58
/* 863B0 800CBBB0 ACADFFFC */   sw        $t5, -0x4($a1)
.L800CBBB4:
/* 863B4 800CBBB4 28C10010 */  slti       $at, $a2, 0x10
.L800CBBB8:
/* 863B8 800CBBB8 5420000E */  bnel       $at, $zero, .L800CBBF4
/* 863BC 800CBBBC 28C10004 */   slti      $at, $a2, 0x4
/* 863C0 800CBBC0 8C820000 */  lw         $v0, 0x0($a0)
/* 863C4 800CBBC4 8C830004 */  lw         $v1, 0x4($a0)
/* 863C8 800CBBC8 8C880008 */  lw         $t0, 0x8($a0)
/* 863CC 800CBBCC 8C89000C */  lw         $t1, 0xC($a0)
/* 863D0 800CBBD0 24840010 */  addiu      $a0, $a0, 0x10
/* 863D4 800CBBD4 24A50010 */  addiu      $a1, $a1, 0x10
/* 863D8 800CBBD8 24C6FFF0 */  addiu      $a2, $a2, -0x10
/* 863DC 800CBBDC ACA2FFF0 */  sw         $v0, -0x10($a1)
/* 863E0 800CBBE0 ACA3FFF4 */  sw         $v1, -0xC($a1)
/* 863E4 800CBBE4 ACA8FFF8 */  sw         $t0, -0x8($a1)
/* 863E8 800CBBE8 1000FFF2 */  b          .L800CBBB4
/* 863EC 800CBBEC ACA9FFFC */   sw        $t1, -0x4($a1)
.L800CBBF0:
/* 863F0 800CBBF0 28C10004 */  slti       $at, $a2, 0x4
.L800CBBF4:
/* 863F4 800CBBF4 1420FFB5 */  bnez       $at, .L800CBACC
/* 863F8 800CBBF8 00000000 */   nop
/* 863FC 800CBBFC 8C820000 */  lw         $v0, 0x0($a0)
/* 86400 800CBC00 24840004 */  addiu      $a0, $a0, 0x4
/* 86404 800CBC04 24A50004 */  addiu      $a1, $a1, 0x4
/* 86408 800CBC08 24C6FFFC */  addiu      $a2, $a2, -0x4
/* 8640C 800CBC0C 1000FFF8 */  b          .L800CBBF0
/* 86410 800CBC10 ACA2FFFC */   sw        $v0, -0x4($a1)
/* 86414 800CBC14 28C10010 */  slti       $at, $a2, 0x10
.L800CBC18:
/* 86418 800CBC18 00862020 */  add        $a0, $a0, $a2
/* 8641C 800CBC1C 14200005 */  bnez       $at, .L800CBC34
/* 86420 800CBC20 00A62820 */   add       $a1, $a1, $a2
/* 86424 800CBC24 30820003 */  andi       $v0, $a0, 0x3
/* 86428 800CBC28 30A30003 */  andi       $v1, $a1, 0x3
/* 8642C 800CBC2C 1043000D */  beq        $v0, $v1, .L800CBC64
/* 86430 800CBC30 00000000 */   nop
.L800CBC34:
/* 86434 800CBC34 10C0FFAD */  beqz       $a2, .L800CBAEC
/* 86438 800CBC38 00000000 */   nop
/* 8643C 800CBC3C 2484FFFF */  addiu      $a0, $a0, -0x1
/* 86440 800CBC40 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 86444 800CBC44 00861823 */  subu       $v1, $a0, $a2
.L800CBC48:
/* 86448 800CBC48 80820000 */  lb         $v0, 0x0($a0)
/* 8644C 800CBC4C 2484FFFF */  addiu      $a0, $a0, -0x1
/* 86450 800CBC50 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 86454 800CBC54 1483FFFC */  bne        $a0, $v1, .L800CBC48
/* 86458 800CBC58 A0A20001 */   sb        $v0, 0x1($a1)
/* 8645C 800CBC5C 03E00008 */  jr         $ra
/* 86460 800CBC60 00E01025 */   or        $v0, $a3, $zero
.L800CBC64:
/* 86464 800CBC64 10400018 */  beqz       $v0, .L800CBCC8
/* 86468 800CBC68 24010003 */   addiu     $at, $zero, 0x3
/* 8646C 800CBC6C 1041000F */  beq        $v0, $at, .L800CBCAC
/* 86470 800CBC70 24010002 */   addiu     $at, $zero, 0x2
/* 86474 800CBC74 50410008 */  beql       $v0, $at, .L800CBC98
/* 86478 800CBC78 8482FFFE */   lh        $v0, -0x2($a0)
/* 8647C 800CBC7C 8082FFFF */  lb         $v0, -0x1($a0)
/* 86480 800CBC80 2484FFFF */  addiu      $a0, $a0, -0x1
/* 86484 800CBC84 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 86488 800CBC88 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 8648C 800CBC8C 1000000E */  b          .L800CBCC8
/* 86490 800CBC90 A0A20000 */   sb        $v0, 0x0($a1)
/* 86494 800CBC94 8482FFFE */  lh         $v0, -0x2($a0)
.L800CBC98:
/* 86498 800CBC98 2484FFFE */  addiu      $a0, $a0, -0x2
/* 8649C 800CBC9C 24A5FFFE */  addiu      $a1, $a1, -0x2
/* 864A0 800CBCA0 24C6FFFE */  addiu      $a2, $a2, -0x2
/* 864A4 800CBCA4 10000008 */  b          .L800CBCC8
/* 864A8 800CBCA8 A4A20000 */   sh        $v0, 0x0($a1)
.L800CBCAC:
/* 864AC 800CBCAC 8082FFFF */  lb         $v0, -0x1($a0)
/* 864B0 800CBCB0 8483FFFD */  lh         $v1, -0x3($a0)
/* 864B4 800CBCB4 2484FFFD */  addiu      $a0, $a0, -0x3
/* 864B8 800CBCB8 24A5FFFD */  addiu      $a1, $a1, -0x3
/* 864BC 800CBCBC 24C6FFFD */  addiu      $a2, $a2, -0x3
/* 864C0 800CBCC0 A0A20002 */  sb         $v0, 0x2($a1)
/* 864C4 800CBCC4 A4A30000 */  sh         $v1, 0x0($a1)
.L800CBCC8:
/* 864C8 800CBCC8 28C10020 */  slti       $at, $a2, 0x20
/* 864CC 800CBCCC 54200016 */  bnel       $at, $zero, .L800CBD28
/* 864D0 800CBCD0 28C10010 */   slti      $at, $a2, 0x10
/* 864D4 800CBCD4 8C82FFFC */  lw         $v0, -0x4($a0)
/* 864D8 800CBCD8 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 864DC 800CBCDC 8C88FFF4 */  lw         $t0, -0xC($a0)
/* 864E0 800CBCE0 8C89FFF0 */  lw         $t1, -0x10($a0)
/* 864E4 800CBCE4 8C8AFFEC */  lw         $t2, -0x14($a0)
/* 864E8 800CBCE8 8C8BFFE8 */  lw         $t3, -0x18($a0)
/* 864EC 800CBCEC 8C8CFFE4 */  lw         $t4, -0x1C($a0)
/* 864F0 800CBCF0 8C8DFFE0 */  lw         $t5, -0x20($a0)
/* 864F4 800CBCF4 2484FFE0 */  addiu      $a0, $a0, -0x20
/* 864F8 800CBCF8 24A5FFE0 */  addiu      $a1, $a1, -0x20
/* 864FC 800CBCFC 24C6FFE0 */  addiu      $a2, $a2, -0x20
/* 86500 800CBD00 ACA2001C */  sw         $v0, 0x1C($a1)
/* 86504 800CBD04 ACA30018 */  sw         $v1, 0x18($a1)
/* 86508 800CBD08 ACA80014 */  sw         $t0, 0x14($a1)
/* 8650C 800CBD0C ACA90010 */  sw         $t1, 0x10($a1)
/* 86510 800CBD10 ACAA000C */  sw         $t2, 0xC($a1)
/* 86514 800CBD14 ACAB0008 */  sw         $t3, 0x8($a1)
/* 86518 800CBD18 ACAC0004 */  sw         $t4, 0x4($a1)
/* 8651C 800CBD1C 1000FFEA */  b          .L800CBCC8
/* 86520 800CBD20 ACAD0000 */   sw        $t5, 0x0($a1)
.L800CBD24:
/* 86524 800CBD24 28C10010 */  slti       $at, $a2, 0x10
.L800CBD28:
/* 86528 800CBD28 5420000E */  bnel       $at, $zero, .L800CBD64
/* 8652C 800CBD2C 28C10004 */   slti      $at, $a2, 0x4
/* 86530 800CBD30 8C82FFFC */  lw         $v0, -0x4($a0)
/* 86534 800CBD34 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 86538 800CBD38 8C88FFF4 */  lw         $t0, -0xC($a0)
/* 8653C 800CBD3C 8C89FFF0 */  lw         $t1, -0x10($a0)
/* 86540 800CBD40 2484FFF0 */  addiu      $a0, $a0, -0x10
/* 86544 800CBD44 24A5FFF0 */  addiu      $a1, $a1, -0x10
/* 86548 800CBD48 24C6FFF0 */  addiu      $a2, $a2, -0x10
/* 8654C 800CBD4C ACA2000C */  sw         $v0, 0xC($a1)
/* 86550 800CBD50 ACA30008 */  sw         $v1, 0x8($a1)
/* 86554 800CBD54 ACA80004 */  sw         $t0, 0x4($a1)
/* 86558 800CBD58 1000FFF2 */  b          .L800CBD24
/* 8655C 800CBD5C ACA90000 */   sw        $t1, 0x0($a1)
.L800CBD60:
/* 86560 800CBD60 28C10004 */  slti       $at, $a2, 0x4
.L800CBD64:
/* 86564 800CBD64 1420FFB3 */  bnez       $at, .L800CBC34
/* 86568 800CBD68 00000000 */   nop
/* 8656C 800CBD6C 8C82FFFC */  lw         $v0, -0x4($a0)
/* 86570 800CBD70 2484FFFC */  addiu      $a0, $a0, -0x4
/* 86574 800CBD74 24A5FFFC */  addiu      $a1, $a1, -0x4
/* 86578 800CBD78 24C6FFFC */  addiu      $a2, $a2, -0x4
/* 8657C 800CBD7C 1000FFF8 */  b          .L800CBD60
/* 86580 800CBD80 ACA20000 */   sw        $v0, 0x0($a1)
/* 86584 800CBD84 00000000 */  nop
/* 86588 800CBD88 00000000 */  nop
/* 8658C 800CBD8C 00000000 */  nop

# Handwritten function
glabel func_800CBD90
/* 86590 800CBD90 18A00011 */  blez       $a1, .L800CBDD8
/* 86594 800CBD94 00000000 */   nop
/* 86598 800CBD98 240B2000 */  addiu      $t3, $zero, 0x2000
/* 8659C 800CBD9C 00AB082B */  sltu       $at, $a1, $t3
/* 865A0 800CBDA0 1020000F */  beqz       $at, .L800CBDE0
/* 865A4 800CBDA4 00000000 */   nop
/* 865A8 800CBDA8 00804025 */  or         $t0, $a0, $zero
/* 865AC 800CBDAC 00854821 */  addu       $t1, $a0, $a1
/* 865B0 800CBDB0 0109082B */  sltu       $at, $t0, $t1
/* 865B4 800CBDB4 10200008 */  beqz       $at, .L800CBDD8
/* 865B8 800CBDB8 00000000 */   nop
/* 865BC 800CBDBC 310A000F */  andi       $t2, $t0, 0xF
/* 865C0 800CBDC0 2529FFF0 */  addiu      $t1, $t1, -0x10
/* 865C4 800CBDC4 010A4023 */  subu       $t0, $t0, $t2
.L800CBDC8:
/* 865C8 800CBDC8 BD190000 */  cache      0x19, 0x0($t0)
/* 865CC 800CBDCC 0109082B */  sltu       $at, $t0, $t1
/* 865D0 800CBDD0 1420FFFD */  bnez       $at, .L800CBDC8
/* 865D4 800CBDD4 25080010 */   addiu     $t0, $t0, 0x10
.L800CBDD8:
/* 865D8 800CBDD8 03E00008 */  jr         $ra
/* 865DC 800CBDDC 00000000 */   nop
.L800CBDE0:
/* 865E0 800CBDE0 3C088000 */  lui        $t0, 0x8000
/* 865E4 800CBDE4 010B4821 */  addu       $t1, $t0, $t3
/* 865E8 800CBDE8 2529FFF0 */  addiu      $t1, $t1, -0x10
.L800CBDEC:
/* 865EC 800CBDEC BD010000 */  cache      0x01, 0x0($t0)
/* 865F0 800CBDF0 0109082B */  sltu       $at, $t0, $t1
/* 865F4 800CBDF4 1420FFFD */  bnez       $at, .L800CBDEC
/* 865F8 800CBDF8 25080010 */   addiu     $t0, $t0, 0x10
/* 865FC 800CBDFC 03E00008 */  jr         $ra
/* 86600 800CBE00 00000000 */   nop
/* 86604 800CBE04 00000000 */  nop
/* 86608 800CBE08 00000000 */  nop
/* 8660C 800CBE0C 00000000 */  nop

glabel func_800CBE10
/* 86610 800CBE10 3C0EA404 */  lui        $t6, %hi(D_A4040010)
/* 86614 800CBE14 8DC50010 */  lw         $a1, %lo(D_A4040010)($t6)
/* 86618 800CBE18 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 8661C 800CBE1C 30AF0001 */  andi       $t7, $a1, 0x1
/* 86620 800CBE20 15E00003 */  bnez       $t7, .L800CBE30
/* 86624 800CBE24 00000000 */   nop
/* 86628 800CBE28 10000004 */  b          .L800CBE3C
/* 8662C 800CBE2C 2402FFFF */   addiu     $v0, $zero, -0x1
.L800CBE30:
/* 86630 800CBE30 3C18A408 */  lui        $t8, %hi(D_A4080000)
/* 86634 800CBE34 AF040000 */  sw         $a0, %lo(D_A4080000)($t8)
/* 86638 800CBE38 00001025 */  or         $v0, $zero, $zero
.L800CBE3C:
/* 8663C 800CBE3C 03E00008 */  jr         $ra
/* 86640 800CBE40 27BD0008 */   addiu     $sp, $sp, 0x8
/* 86644 800CBE44 00000000 */  nop
/* 86648 800CBE48 00000000 */  nop
/* 8664C 800CBE4C 00000000 */  nop

glabel func_800CBE50
/* 86650 800CBE50 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 86654 800CBE54 AFBF0014 */  sw         $ra, 0x14($sp)
/* 86658 800CBE58 AFA40018 */  sw         $a0, 0x18($sp)
/* 8665C 800CBE5C AFA5001C */  sw         $a1, 0x1C($sp)
/* 86660 800CBE60 AFA60020 */  sw         $a2, 0x20($sp)
/* 86664 800CBE64 0C032FB8 */  jal        func_800CBEE0
/* 86668 800CBE68 AFA70024 */   sw        $a3, 0x24($sp)
/* 8666C 800CBE6C 10400003 */  beqz       $v0, .L800CBE7C
/* 86670 800CBE70 00000000 */   nop
/* 86674 800CBE74 10000015 */  b          .L800CBECC
/* 86678 800CBE78 2402FFFF */   addiu     $v0, $zero, -0x1
.L800CBE7C:
/* 8667C 800CBE7C 8FAE001C */  lw         $t6, 0x1C($sp)
/* 86680 800CBE80 3C0FA404 */  lui        $t7, %hi(D_A4040000)
/* 86684 800CBE84 ADEE0000 */  sw         $t6, %lo(D_A4040000)($t7)
/* 86688 800CBE88 0C0315C8 */  jal        osVirtualToPhysical
/* 8668C 800CBE8C 8FA40020 */   lw        $a0, 0x20($sp)
/* 86690 800CBE90 3C18A404 */  lui        $t8, %hi(D_A4040004)
/* 86694 800CBE94 AF020004 */  sw         $v0, %lo(D_A4040004)($t8)
/* 86698 800CBE98 8FB90018 */  lw         $t9, 0x18($sp)
/* 8669C 800CBE9C 17200006 */  bnez       $t9, .L800CBEB8
/* 866A0 800CBEA0 00000000 */   nop
/* 866A4 800CBEA4 8FA80024 */  lw         $t0, 0x24($sp)
/* 866A8 800CBEA8 3C0AA404 */  lui        $t2, %hi(D_A404000C)
/* 866AC 800CBEAC 2509FFFF */  addiu      $t1, $t0, -0x1
/* 866B0 800CBEB0 10000005 */  b          .L800CBEC8
/* 866B4 800CBEB4 AD49000C */   sw        $t1, %lo(D_A404000C)($t2)
.L800CBEB8:
/* 866B8 800CBEB8 8FAB0024 */  lw         $t3, 0x24($sp)
/* 866BC 800CBEBC 3C0DA404 */  lui        $t5, %hi(D_A4040008)
/* 866C0 800CBEC0 256CFFFF */  addiu      $t4, $t3, -0x1
/* 866C4 800CBEC4 ADAC0008 */  sw         $t4, %lo(D_A4040008)($t5)
.L800CBEC8:
/* 866C8 800CBEC8 00001025 */  or         $v0, $zero, $zero
.L800CBECC:
/* 866CC 800CBECC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 866D0 800CBED0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 866D4 800CBED4 03E00008 */  jr         $ra
/* 866D8 800CBED8 00000000 */   nop
/* 866DC 800CBEDC 00000000 */  nop

glabel func_800CBEE0
/* 866E0 800CBEE0 3C0EA404 */  lui        $t6, %hi(D_A4040010)
/* 866E4 800CBEE4 8DC40010 */  lw         $a0, %lo(D_A4040010)($t6)
/* 866E8 800CBEE8 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 866EC 800CBEEC 308F001C */  andi       $t7, $a0, 0x1C
/* 866F0 800CBEF0 11E00003 */  beqz       $t7, .L800CBF00
/* 866F4 800CBEF4 00000000 */   nop
/* 866F8 800CBEF8 10000002 */  b          .L800CBF04
/* 866FC 800CBEFC 24020001 */   addiu     $v0, $zero, 0x1
.L800CBF00:
/* 86700 800CBF00 00001025 */  or         $v0, $zero, $zero
.L800CBF04:
/* 86704 800CBF04 03E00008 */  jr         $ra
/* 86708 800CBF08 27BD0008 */   addiu     $sp, $sp, 0x8
/* 8670C 800CBF0C 00000000 */  nop

glabel func_800CBF10
/* 86710 800CBF10 3C0EA404 */  lui        $t6, %hi(D_A4040010)
/* 86714 800CBF14 03E00008 */  jr         $ra
/* 86718 800CBF18 8DC20010 */   lw        $v0, %lo(D_A4040010)($t6)
/* 8671C 800CBF1C 00000000 */  nop

glabel func_800CBF20
/* 86720 800CBF20 14800003 */  bnez       $a0, .L800CBF30
/* 86724 800CBF24 00000000 */   nop
/* 86728 800CBF28 3C04800F */  lui        $a0, %hi(D_800E9010)
/* 8672C 800CBF2C 8C849010 */  lw         $a0, %lo(D_800E9010)($a0)
.L800CBF30:
/* 86730 800CBF30 03E00008 */  jr         $ra
/* 86734 800CBF34 8C820004 */   lw        $v0, 0x4($a0)
/* 86738 800CBF38 00000000 */  nop
/* 8673C 800CBF3C 00000000 */  nop

glabel func_800CBF40
/* 86740 800CBF40 3C02800F */  lui        $v0, %hi(D_800E90B0)
/* 86744 800CBF44 03E00008 */  jr         $ra
/* 86748 800CBF48 8C4290B0 */   lw        $v0, %lo(D_800E90B0)($v0)
/* 8674C 800CBF4C 00000000 */  nop

glabel func_800CBF50
/* 86750 800CBF50 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 86754 800CBF54 AFB1001C */  sw         $s1, 0x1C($sp)
/* 86758 800CBF58 AFBF0024 */  sw         $ra, 0x24($sp)
/* 8675C 800CBF5C AFB20020 */  sw         $s2, 0x20($sp)
/* 86760 800CBF60 AFB00018 */  sw         $s0, 0x18($sp)
/* 86764 800CBF64 AFA00030 */  sw         $zero, 0x30($sp)
/* 86768 800CBF68 3C11800F */  lui        $s1, %hi(D_800E90B4)
/* 8676C 800CBF6C 3C0EA440 */  lui        $t6, %hi(D_A4400010)
/* 86770 800CBF70 8E3190B4 */  lw         $s1, %lo(D_800E90B4)($s1)
/* 86774 800CBF74 8DCF0010 */  lw         $t7, %lo(D_A4400010)($t6)
/* 86778 800CBF78 8E300008 */  lw         $s0, 0x8($s1)
/* 8677C 800CBF7C 31F80001 */  andi       $t8, $t7, 0x1
/* 86780 800CBF80 AFB80030 */  sw         $t8, 0x30($sp)
/* 86784 800CBF84 0C0315C8 */  jal        osVirtualToPhysical
/* 86788 800CBF88 8E240004 */   lw        $a0, 0x4($s1)
/* 8678C 800CBF8C 8FB90030 */  lw         $t9, 0x30($sp)
/* 86790 800CBF90 00409025 */  or         $s2, $v0, $zero
/* 86794 800CBF94 00194080 */  sll        $t0, $t9, 2
/* 86798 800CBF98 01194021 */  addu       $t0, $t0, $t9
/* 8679C 800CBF9C 00084080 */  sll        $t0, $t0, 2
/* 867A0 800CBFA0 02084821 */  addu       $t1, $s0, $t0
/* 867A4 800CBFA4 8D2A0028 */  lw         $t2, 0x28($t1)
/* 867A8 800CBFA8 01525821 */  addu       $t3, $t2, $s2
/* 867AC 800CBFAC AFAB003C */  sw         $t3, 0x3C($sp)
/* 867B0 800CBFB0 962C0000 */  lhu        $t4, 0x0($s1)
/* 867B4 800CBFB4 318D0002 */  andi       $t5, $t4, 0x2
/* 867B8 800CBFB8 11A00008 */  beqz       $t5, .L800CBFDC
/* 867BC 800CBFBC 00000000 */   nop
/* 867C0 800CBFC0 8E0F0020 */  lw         $t7, 0x20($s0)
/* 867C4 800CBFC4 8E2E0020 */  lw         $t6, 0x20($s1)
/* 867C8 800CBFC8 2401F000 */  addiu      $at, $zero, -0x1000
/* 867CC 800CBFCC 01E1C024 */  and        $t8, $t7, $at
/* 867D0 800CBFD0 01D8C825 */  or         $t9, $t6, $t8
/* 867D4 800CBFD4 10000003 */  b          .L800CBFE4
/* 867D8 800CBFD8 AE390020 */   sw        $t9, 0x20($s1)
.L800CBFDC:
/* 867DC 800CBFDC 8E080020 */  lw         $t0, 0x20($s0)
/* 867E0 800CBFE0 AE280020 */  sw         $t0, 0x20($s1)
.L800CBFE4:
/* 867E4 800CBFE4 96290000 */  lhu        $t1, 0x0($s1)
/* 867E8 800CBFE8 312A0004 */  andi       $t2, $t1, 0x4
/* 867EC 800CBFEC 11400041 */  beqz       $t2, .L800CC0F4
/* 867F0 800CBFF0 00000000 */   nop
/* 867F4 800CBFF4 8FAB0030 */  lw         $t3, 0x30($sp)
/* 867F8 800CBFF8 000B6080 */  sll        $t4, $t3, 2
/* 867FC 800CBFFC 018B6021 */  addu       $t4, $t4, $t3
/* 86800 800CC000 000C6080 */  sll        $t4, $t4, 2
/* 86804 800CC004 020C6821 */  addu       $t5, $s0, $t4
/* 86808 800CC008 8DAF002C */  lw         $t7, 0x2C($t5)
/* 8680C 800CC00C 31EE0FFF */  andi       $t6, $t7, 0xFFF
/* 86810 800CC010 448E3000 */  mtc1       $t6, $f6
/* 86814 800CC014 AFAE0034 */  sw         $t6, 0x34($sp)
/* 86818 800CC018 C6240024 */  lwc1       $f4, 0x24($s1)
/* 8681C 800CC01C 05C10005 */  bgez       $t6, .L800CC034
/* 86820 800CC020 46803220 */   cvt.s.w   $f8, $f6
/* 86824 800CC024 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* 86828 800CC028 44815000 */  mtc1       $at, $f10
/* 8682C 800CC02C 00000000 */  nop
/* 86830 800CC030 460A4200 */  add.s      $f8, $f8, $f10
.L800CC034:
/* 86834 800CC034 46082402 */  mul.s      $f16, $f4, $f8
/* 86838 800CC038 24190001 */  addiu      $t9, $zero, 0x1
/* 8683C 800CC03C 4458F800 */  cfc1       $t8, $31
/* 86840 800CC040 44D9F800 */  ctc1       $t9, $31
/* 86844 800CC044 00000000 */  nop
/* 86848 800CC048 460084A4 */  cvt.w.s    $f18, $f16
/* 8684C 800CC04C 4459F800 */  cfc1       $t9, $31
/* 86850 800CC050 00000000 */  nop
/* 86854 800CC054 33210004 */  andi       $at, $t9, 0x4
/* 86858 800CC058 33390078 */  andi       $t9, $t9, 0x78
/* 8685C 800CC05C 13200013 */  beqz       $t9, .L800CC0AC
/* 86860 800CC060 3C014F00 */   lui       $at, (0x4F000000 >> 16)
/* 86864 800CC064 44819000 */  mtc1       $at, $f18
/* 86868 800CC068 24190001 */  addiu      $t9, $zero, 0x1
/* 8686C 800CC06C 46128481 */  sub.s      $f18, $f16, $f18
/* 86870 800CC070 44D9F800 */  ctc1       $t9, $31
/* 86874 800CC074 00000000 */  nop
/* 86878 800CC078 460094A4 */  cvt.w.s    $f18, $f18
/* 8687C 800CC07C 4459F800 */  cfc1       $t9, $31
/* 86880 800CC080 00000000 */  nop
/* 86884 800CC084 33210004 */  andi       $at, $t9, 0x4
/* 86888 800CC088 33390078 */  andi       $t9, $t9, 0x78
/* 8688C 800CC08C 17200005 */  bnez       $t9, .L800CC0A4
/* 86890 800CC090 00000000 */   nop
/* 86894 800CC094 44199000 */  mfc1       $t9, $f18
/* 86898 800CC098 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 8689C 800CC09C 10000007 */  b          .L800CC0BC
/* 868A0 800CC0A0 0321C825 */   or        $t9, $t9, $at
.L800CC0A4:
/* 868A4 800CC0A4 10000005 */  b          .L800CC0BC
/* 868A8 800CC0A8 2419FFFF */   addiu     $t9, $zero, -0x1
.L800CC0AC:
/* 868AC 800CC0AC 44199000 */  mfc1       $t9, $f18
/* 868B0 800CC0B0 00000000 */  nop
/* 868B4 800CC0B4 0720FFFB */  bltz       $t9, .L800CC0A4
/* 868B8 800CC0B8 00000000 */   nop
.L800CC0BC:
/* 868BC 800CC0BC AE39002C */  sw         $t9, 0x2C($s1)
/* 868C0 800CC0C0 8FA90030 */  lw         $t1, 0x30($sp)
/* 868C4 800CC0C4 8E28002C */  lw         $t0, 0x2C($s1)
/* 868C8 800CC0C8 2401F000 */  addiu      $at, $zero, -0x1000
/* 868CC 800CC0CC 00095080 */  sll        $t2, $t1, 2
/* 868D0 800CC0D0 01495021 */  addu       $t2, $t2, $t1
/* 868D4 800CC0D4 000A5080 */  sll        $t2, $t2, 2
/* 868D8 800CC0D8 020A5821 */  addu       $t3, $s0, $t2
/* 868DC 800CC0DC 8D6C002C */  lw         $t4, 0x2C($t3)
/* 868E0 800CC0E0 44D8F800 */  ctc1       $t8, $31
/* 868E4 800CC0E4 01816824 */  and        $t5, $t4, $at
/* 868E8 800CC0E8 010D7825 */  or         $t7, $t0, $t5
/* 868EC 800CC0EC 10000008 */  b          .L800CC110
/* 868F0 800CC0F0 AE2F002C */   sw        $t7, 0x2C($s1)
.L800CC0F4:
/* 868F4 800CC0F4 8FAE0030 */  lw         $t6, 0x30($sp)
/* 868F8 800CC0F8 000EC080 */  sll        $t8, $t6, 2
/* 868FC 800CC0FC 030EC021 */  addu       $t8, $t8, $t6
/* 86900 800CC100 0018C080 */  sll        $t8, $t8, 2
/* 86904 800CC104 0218C821 */  addu       $t9, $s0, $t8
/* 86908 800CC108 8F29002C */  lw         $t1, 0x2C($t9)
/* 8690C 800CC10C AE29002C */  sw         $t1, 0x2C($s1)
.L800CC110:
/* 86910 800CC110 8E0A001C */  lw         $t2, 0x1C($s0)
/* 86914 800CC114 AFAA0038 */  sw         $t2, 0x38($sp)
/* 86918 800CC118 962B0000 */  lhu        $t3, 0x0($s1)
/* 8691C 800CC11C 316C0020 */  andi       $t4, $t3, 0x20
/* 86920 800CC120 11800002 */  beqz       $t4, .L800CC12C
/* 86924 800CC124 00000000 */   nop
/* 86928 800CC128 AFA00038 */  sw         $zero, 0x38($sp)
.L800CC12C:
/* 8692C 800CC12C 96280000 */  lhu        $t0, 0x0($s1)
/* 86930 800CC130 310D0040 */  andi       $t5, $t0, 0x40
/* 86934 800CC134 11A00005 */  beqz       $t5, .L800CC14C
/* 86938 800CC138 00000000 */   nop
/* 8693C 800CC13C AE20002C */  sw         $zero, 0x2C($s1)
/* 86940 800CC140 0C0315C8 */  jal        osVirtualToPhysical
/* 86944 800CC144 8E240004 */   lw        $a0, 0x4($s1)
/* 86948 800CC148 AFA2003C */  sw         $v0, 0x3C($sp)
.L800CC14C:
/* 8694C 800CC14C 962F0000 */  lhu        $t7, 0x0($s1)
/* 86950 800CC150 31EE0080 */  andi       $t6, $t7, 0x80
/* 86954 800CC154 11C00009 */  beqz       $t6, .L800CC17C
/* 86958 800CC158 00000000 */   nop
/* 8695C 800CC15C 96380028 */  lhu        $t8, 0x28($s1)
/* 86960 800CC160 3C0103FF */  lui        $at, (0x3FF0000 >> 16)
/* 86964 800CC164 8E240004 */  lw         $a0, 0x4($s1)
/* 86968 800CC168 0018CC00 */  sll        $t9, $t8, 16
/* 8696C 800CC16C 03214824 */  and        $t1, $t9, $at
/* 86970 800CC170 0C0315C8 */  jal        osVirtualToPhysical
/* 86974 800CC174 AE29002C */   sw        $t1, 0x2C($s1)
/* 86978 800CC178 AFA2003C */  sw         $v0, 0x3C($sp)
.L800CC17C:
/* 8697C 800CC17C 8FAA003C */  lw         $t2, 0x3C($sp)
/* 86980 800CC180 3C0BA440 */  lui        $t3, %hi(D_A4400004)
/* 86984 800CC184 3C08A440 */  lui        $t0, %hi(D_A4400008)
/* 86988 800CC188 AD6A0004 */  sw         $t2, %lo(D_A4400004)($t3)
/* 8698C 800CC18C 8E0C0008 */  lw         $t4, 0x8($s0)
/* 86990 800CC190 3C0FA440 */  lui        $t7, %hi(D_A4400014)
/* 86994 800CC194 3C18A440 */  lui        $t8, %hi(D_A4400018)
/* 86998 800CC198 AD0C0008 */  sw         $t4, %lo(D_A4400008)($t0)
/* 8699C 800CC19C 8E0D000C */  lw         $t5, 0xC($s0)
/* 869A0 800CC1A0 3C09A440 */  lui        $t1, %hi(D_A440001C)
/* 869A4 800CC1A4 3C01800F */  lui        $at, %hi(D_800E90B4)
/* 869A8 800CC1A8 ADED0014 */  sw         $t5, %lo(D_A4400014)($t7)
/* 869AC 800CC1AC 8E0E0010 */  lw         $t6, 0x10($s0)
/* 869B0 800CC1B0 AF0E0018 */  sw         $t6, %lo(D_A4400018)($t8)
/* 869B4 800CC1B4 8E190014 */  lw         $t9, 0x14($s0)
/* 869B8 800CC1B8 AD39001C */  sw         $t9, %lo(D_A440001C)($t1)
/* 869BC 800CC1BC 8E0A0018 */  lw         $t2, 0x18($s0)
/* 869C0 800CC1C0 3C19A440 */  lui        $t9, %hi(D_A4400028)
/* 869C4 800CC1C4 AD6A0020 */  sw         $t2, %lo(D_A4400020)($t3)
/* 869C8 800CC1C8 8FAC0038 */  lw         $t4, 0x38($sp)
/* 869CC 800CC1CC AD0C0024 */  sw         $t4, %lo(D_A4400024)($t0)
/* 869D0 800CC1D0 8FAD0030 */  lw         $t5, 0x30($sp)
/* 869D4 800CC1D4 000D7880 */  sll        $t7, $t5, 2
/* 869D8 800CC1D8 01ED7821 */  addu       $t7, $t7, $t5
/* 869DC 800CC1DC 000F7880 */  sll        $t7, $t7, 2
/* 869E0 800CC1E0 020F7021 */  addu       $t6, $s0, $t7
/* 869E4 800CC1E4 8DD80030 */  lw         $t8, 0x30($t6)
/* 869E8 800CC1E8 AF380028 */  sw         $t8, %lo(D_A4400028)($t9)
/* 869EC 800CC1EC 8FA90030 */  lw         $t1, 0x30($sp)
/* 869F0 800CC1F0 00095080 */  sll        $t2, $t1, 2
/* 869F4 800CC1F4 01495021 */  addu       $t2, $t2, $t1
/* 869F8 800CC1F8 000A5080 */  sll        $t2, $t2, 2
/* 869FC 800CC1FC 020A5821 */  addu       $t3, $s0, $t2
/* 86A00 800CC200 8D6C0034 */  lw         $t4, 0x34($t3)
/* 86A04 800CC204 3C0AA440 */  lui        $t2, %hi(D_A4400030)
/* 86A08 800CC208 AD0C002C */  sw         $t4, %lo(D_A440002C)($t0)
/* 86A0C 800CC20C 8FAD0030 */  lw         $t5, 0x30($sp)
/* 86A10 800CC210 3C0CA440 */  lui        $t4, %hi(D_A4400034)
/* 86A14 800CC214 000D7880 */  sll        $t7, $t5, 2
/* 86A18 800CC218 01ED7821 */  addu       $t7, $t7, $t5
/* 86A1C 800CC21C 000F7880 */  sll        $t7, $t7, 2
/* 86A20 800CC220 020F7021 */  addu       $t6, $s0, $t7
/* 86A24 800CC224 8DD80038 */  lw         $t8, 0x38($t6)
/* 86A28 800CC228 3C0DA440 */  lui        $t5, %hi(D_A4400000)
/* 86A2C 800CC22C 3C0F800F */  lui        $t7, %hi(D_800E90B0)
/* 86A30 800CC230 AF38000C */  sw         $t8, %lo(D_A440000C)($t9)
/* 86A34 800CC234 8E290020 */  lw         $t1, 0x20($s1)
/* 86A38 800CC238 3C18800F */  lui        $t8, %hi(D_800E90B0)
/* 86A3C 800CC23C 3C0E800F */  lui        $t6, %hi(D_800E90B4)
/* 86A40 800CC240 AD490030 */  sw         $t1, %lo(D_A4400030)($t2)
/* 86A44 800CC244 8E2B002C */  lw         $t3, 0x2C($s1)
/* 86A48 800CC248 AD8B0034 */  sw         $t3, %lo(D_A4400034)($t4)
/* 86A4C 800CC24C 8E28000C */  lw         $t0, 0xC($s1)
/* 86A50 800CC250 ADA80000 */  sw         $t0, %lo(D_A4400000)($t5)
/* 86A54 800CC254 8DEF90B0 */  lw         $t7, %lo(D_800E90B0)($t7)
/* 86A58 800CC258 AC2F90B4 */  sw         $t7, %lo(D_800E90B4)($at)
/* 86A5C 800CC25C 3C01800F */  lui        $at, %hi(D_800E90B0)
/* 86A60 800CC260 AC3190B0 */  sw         $s1, %lo(D_800E90B0)($at)
/* 86A64 800CC264 8F1890B0 */  lw         $t8, %lo(D_800E90B0)($t8)
/* 86A68 800CC268 8DCE90B4 */  lw         $t6, %lo(D_800E90B4)($t6)
/* 86A6C 800CC26C 270A0030 */  addiu      $t2, $t8, 0x30
.L800CC270:
/* 86A70 800CC270 8F010000 */  lw         $at, 0x0($t8)
/* 86A74 800CC274 2718000C */  addiu      $t8, $t8, 0xC
/* 86A78 800CC278 25CE000C */  addiu      $t6, $t6, 0xC
/* 86A7C 800CC27C ADC1FFF4 */  sw         $at, -0xC($t6)
/* 86A80 800CC280 8F01FFF8 */  lw         $at, -0x8($t8)
/* 86A84 800CC284 ADC1FFF8 */  sw         $at, -0x8($t6)
/* 86A88 800CC288 8F01FFFC */  lw         $at, -0x4($t8)
/* 86A8C 800CC28C 170AFFF8 */  bne        $t8, $t2, .L800CC270
/* 86A90 800CC290 ADC1FFFC */   sw        $at, -0x4($t6)
/* 86A94 800CC294 8FBF0024 */  lw         $ra, 0x24($sp)
/* 86A98 800CC298 8FB00018 */  lw         $s0, 0x18($sp)
/* 86A9C 800CC29C 8FB1001C */  lw         $s1, 0x1C($sp)
/* 86AA0 800CC2A0 8FB20020 */  lw         $s2, 0x20($sp)
/* 86AA4 800CC2A4 03E00008 */  jr         $ra
/* 86AA8 800CC2A8 27BD0048 */   addiu     $sp, $sp, 0x48
/* 86AAC 800CC2AC 00000000 */  nop

glabel func_800CC2B0
/* 86AB0 800CC2B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 86AB4 800CC2B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 86AB8 800CC2B8 240E0001 */  addiu      $t6, $zero, 0x1
/* 86ABC 800CC2BC 3C01800F */  lui        $at, %hi(D_800E90D0)
/* 86AC0 800CC2C0 3C04801E */  lui        $a0, %hi(D_801DAC98)
/* 86AC4 800CC2C4 3C05801E */  lui        $a1, %hi(D_801DAC90)
/* 86AC8 800CC2C8 AC2E90D0 */  sw         $t6, %lo(D_800E90D0)($at)
/* 86ACC 800CC2CC 24A5AC90 */  addiu      $a1, $a1, %lo(D_801DAC90)
/* 86AD0 800CC2D0 2484AC98 */  addiu      $a0, $a0, %lo(D_801DAC98)
/* 86AD4 800CC2D4 0C0318C4 */  jal        osCreateMesgQueue
/* 86AD8 800CC2D8 24060001 */   addiu     $a2, $zero, 0x1
/* 86ADC 800CC2DC 3C04801E */  lui        $a0, %hi(D_801DAC98)
/* 86AE0 800CC2E0 2484AC98 */  addiu      $a0, $a0, %lo(D_801DAC98)
/* 86AE4 800CC2E4 00002825 */  or         $a1, $zero, $zero
/* 86AE8 800CC2E8 0C0315E8 */  jal        func_800C57A0
/* 86AEC 800CC2EC 00003025 */   or        $a2, $zero, $zero
/* 86AF0 800CC2F0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 86AF4 800CC2F4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 86AF8 800CC2F8 03E00008 */  jr         $ra
/* 86AFC 800CC2FC 00000000 */   nop

glabel func_800CC300
/* 86B00 800CC300 3C0E800F */  lui        $t6, %hi(D_800E90D0)
/* 86B04 800CC304 8DCE90D0 */  lw         $t6, %lo(D_800E90D0)($t6)
/* 86B08 800CC308 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 86B0C 800CC30C AFBF0014 */  sw         $ra, 0x14($sp)
/* 86B10 800CC310 15C00003 */  bnez       $t6, .L800CC320
/* 86B14 800CC314 00000000 */   nop
/* 86B18 800CC318 0C0330AC */  jal        func_800CC2B0
/* 86B1C 800CC31C 00000000 */   nop
.L800CC320:
/* 86B20 800CC320 3C04801E */  lui        $a0, %hi(D_801DAC98)
/* 86B24 800CC324 2484AC98 */  addiu      $a0, $a0, %lo(D_801DAC98)
/* 86B28 800CC328 27A5001C */  addiu      $a1, $sp, 0x1C
/* 86B2C 800CC32C 0C031718 */  jal        func_800C5C60
/* 86B30 800CC330 24060001 */   addiu     $a2, $zero, 0x1
/* 86B34 800CC334 8FBF0014 */  lw         $ra, 0x14($sp)
/* 86B38 800CC338 27BD0020 */  addiu      $sp, $sp, 0x20
/* 86B3C 800CC33C 03E00008 */  jr         $ra
/* 86B40 800CC340 00000000 */   nop

glabel func_800CC344
/* 86B44 800CC344 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 86B48 800CC348 AFBF0014 */  sw         $ra, 0x14($sp)
/* 86B4C 800CC34C 3C04801E */  lui        $a0, %hi(D_801DAC98)
/* 86B50 800CC350 2484AC98 */  addiu      $a0, $a0, %lo(D_801DAC98)
/* 86B54 800CC354 00002825 */  or         $a1, $zero, $zero
/* 86B58 800CC358 0C0315E8 */  jal        func_800C57A0
/* 86B5C 800CC35C 00003025 */   or        $a2, $zero, $zero
/* 86B60 800CC360 8FBF0014 */  lw         $ra, 0x14($sp)
/* 86B64 800CC364 27BD0018 */  addiu      $sp, $sp, 0x18
/* 86B68 800CC368 03E00008 */  jr         $ra
/* 86B6C 800CC36C 00000000 */   nop

glabel func_800CC370
/* 86B70 800CC370 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 86B74 800CC374 AFBF001C */  sw         $ra, 0x1C($sp)
/* 86B78 800CC378 AFA40028 */  sw         $a0, 0x28($sp)
/* 86B7C 800CC37C AFA5002C */  sw         $a1, 0x2C($sp)
/* 86B80 800CC380 AFA60030 */  sw         $a2, 0x30($sp)
/* 86B84 800CC384 AFA70034 */  sw         $a3, 0x34($sp)
/* 86B88 800CC388 AFB10018 */  sw         $s1, 0x18($sp)
/* 86B8C 800CC38C AFB00014 */  sw         $s0, 0x14($sp)
/* 86B90 800CC390 3C0EA460 */  lui        $t6, %hi(D_A4600010)
/* 86B94 800CC394 8DD00010 */  lw         $s0, %lo(D_A4600010)($t6)
/* 86B98 800CC398 320F0003 */  andi       $t7, $s0, 0x3
/* 86B9C 800CC39C 11E00006 */  beqz       $t7, .L800CC3B8
/* 86BA0 800CC3A0 00000000 */   nop
.L800CC3A4:
/* 86BA4 800CC3A4 3C18A460 */  lui        $t8, %hi(D_A4600010)
/* 86BA8 800CC3A8 8F100010 */  lw         $s0, %lo(D_A4600010)($t8)
/* 86BAC 800CC3AC 32190003 */  andi       $t9, $s0, 0x3
/* 86BB0 800CC3B0 1720FFFC */  bnez       $t9, .L800CC3A4
/* 86BB4 800CC3B4 00000000 */   nop
.L800CC3B8:
/* 86BB8 800CC3B8 0C0315C8 */  jal        osVirtualToPhysical
/* 86BBC 800CC3BC 8FA40030 */   lw        $a0, 0x30($sp)
/* 86BC0 800CC3C0 3C08A460 */  lui        $t0, %hi(D_A4600000)
/* 86BC4 800CC3C4 AD020000 */  sw         $v0, %lo(D_A4600000)($t0)
/* 86BC8 800CC3C8 3C098000 */  lui        $t1, %hi(D_80000308)
/* 86BCC 800CC3CC 8D290308 */  lw         $t1, %lo(D_80000308)($t1)
/* 86BD0 800CC3D0 8FAA002C */  lw         $t2, 0x2C($sp)
/* 86BD4 800CC3D4 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
/* 86BD8 800CC3D8 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
/* 86BDC 800CC3DC 012A5825 */  or         $t3, $t1, $t2
/* 86BE0 800CC3E0 01616024 */  and        $t4, $t3, $at
/* 86BE4 800CC3E4 3C0DA460 */  lui        $t5, %hi(D_A4600004)
/* 86BE8 800CC3E8 ADAC0004 */  sw         $t4, %lo(D_A4600004)($t5)
/* 86BEC 800CC3EC 8FB10028 */  lw         $s1, 0x28($sp)
/* 86BF0 800CC3F0 12200005 */  beqz       $s1, .L800CC408
/* 86BF4 800CC3F4 24010001 */   addiu     $at, $zero, 0x1
/* 86BF8 800CC3F8 12210008 */  beq        $s1, $at, .L800CC41C
/* 86BFC 800CC3FC 00000000 */   nop
/* 86C00 800CC400 1000000B */  b          .L800CC430
/* 86C04 800CC404 00000000 */   nop
.L800CC408:
/* 86C08 800CC408 8FAE0034 */  lw         $t6, 0x34($sp)
/* 86C0C 800CC40C 3C18A460 */  lui        $t8, %hi(D_A460000C)
/* 86C10 800CC410 25CFFFFF */  addiu      $t7, $t6, -0x1
/* 86C14 800CC414 10000008 */  b          .L800CC438
/* 86C18 800CC418 AF0F000C */   sw        $t7, %lo(D_A460000C)($t8)
.L800CC41C:
/* 86C1C 800CC41C 8FB90034 */  lw         $t9, 0x34($sp)
/* 86C20 800CC420 3C09A460 */  lui        $t1, %hi(D_A4600008)
/* 86C24 800CC424 2728FFFF */  addiu      $t0, $t9, -0x1
/* 86C28 800CC428 10000003 */  b          .L800CC438
/* 86C2C 800CC42C AD280008 */   sw        $t0, %lo(D_A4600008)($t1)
.L800CC430:
/* 86C30 800CC430 10000002 */  b          .L800CC43C
/* 86C34 800CC434 2402FFFF */   addiu     $v0, $zero, -0x1
.L800CC438:
/* 86C38 800CC438 00001025 */  or         $v0, $zero, $zero
.L800CC43C:
/* 86C3C 800CC43C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 86C40 800CC440 8FB00014 */  lw         $s0, 0x14($sp)
/* 86C44 800CC444 8FB10018 */  lw         $s1, 0x18($sp)
/* 86C48 800CC448 03E00008 */  jr         $ra
/* 86C4C 800CC44C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800CC450
/* 86C50 800CC450 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 86C54 800CC454 AFA40038 */  sw         $a0, 0x38($sp)
/* 86C58 800CC458 8FAE0038 */  lw         $t6, 0x38($sp)
/* 86C5C 800CC45C AFBF001C */  sw         $ra, 0x1C($sp)
/* 86C60 800CC460 AFB00018 */  sw         $s0, 0x18($sp)
/* 86C64 800CC464 AFA00034 */  sw         $zero, 0x34($sp)
/* 86C68 800CC468 AFA00028 */  sw         $zero, 0x28($sp)
/* 86C6C 800CC46C AFAE0024 */  sw         $t6, 0x24($sp)
.L800CC470:
/* 86C70 800CC470 8FAF0024 */  lw         $t7, 0x24($sp)
/* 86C74 800CC474 27A50034 */  addiu      $a1, $sp, 0x34
/* 86C78 800CC478 24060001 */  addiu      $a2, $zero, 0x1
/* 86C7C 800CC47C 0C031718 */  jal        func_800C5C60
/* 86C80 800CC480 8DE40008 */   lw        $a0, 0x8($t7)
/* 86C84 800CC484 8FB80034 */  lw         $t8, 0x34($sp)
/* 86C88 800CC488 2401000A */  addiu      $at, $zero, 0xA
/* 86C8C 800CC48C 97100000 */  lhu        $s0, 0x0($t8)
/* 86C90 800CC490 12010025 */  beq        $s0, $at, .L800CC528
/* 86C94 800CC494 2401000B */   addiu     $at, $zero, 0xB
/* 86C98 800CC498 12010005 */  beq        $s0, $at, .L800CC4B0
/* 86C9C 800CC49C 2401000C */   addiu     $at, $zero, 0xC
/* 86CA0 800CC4A0 12010012 */  beq        $s0, $at, .L800CC4EC
/* 86CA4 800CC4A4 00000000 */   nop
/* 86CA8 800CC4A8 10000027 */  b          .L800CC548
/* 86CAC 800CC4AC 00000000 */   nop
.L800CC4B0:
/* 86CB0 800CC4B0 8FB90024 */  lw         $t9, 0x24($sp)
/* 86CB4 800CC4B4 27A5002C */  addiu      $a1, $sp, 0x2C
/* 86CB8 800CC4B8 24060001 */  addiu      $a2, $zero, 0x1
/* 86CBC 800CC4BC 0C031718 */  jal        func_800C5C60
/* 86CC0 800CC4C0 8F240010 */   lw        $a0, 0x10($t9)
/* 86CC4 800CC4C4 8FA90024 */  lw         $t1, 0x24($sp)
/* 86CC8 800CC4C8 8FA80034 */  lw         $t0, 0x34($sp)
/* 86CCC 800CC4CC 00002025 */  or         $a0, $zero, $zero
/* 86CD0 800CC4D0 8D390014 */  lw         $t9, 0x14($t1)
/* 86CD4 800CC4D4 8D05000C */  lw         $a1, 0xC($t0)
/* 86CD8 800CC4D8 8D060008 */  lw         $a2, 0x8($t0)
/* 86CDC 800CC4DC 0320F809 */  jalr       $t9
/* 86CE0 800CC4E0 8D070010 */   lw        $a3, 0x10($t0)
/* 86CE4 800CC4E4 1000001A */  b          .L800CC550
/* 86CE8 800CC4E8 AFA20028 */   sw        $v0, 0x28($sp)
.L800CC4EC:
/* 86CEC 800CC4EC 8FAA0024 */  lw         $t2, 0x24($sp)
/* 86CF0 800CC4F0 27A5002C */  addiu      $a1, $sp, 0x2C
/* 86CF4 800CC4F4 24060001 */  addiu      $a2, $zero, 0x1
/* 86CF8 800CC4F8 0C031718 */  jal        func_800C5C60
/* 86CFC 800CC4FC 8D440010 */   lw        $a0, 0x10($t2)
/* 86D00 800CC500 8FAC0024 */  lw         $t4, 0x24($sp)
/* 86D04 800CC504 8FAB0034 */  lw         $t3, 0x34($sp)
/* 86D08 800CC508 24040001 */  addiu      $a0, $zero, 0x1
/* 86D0C 800CC50C 8D990014 */  lw         $t9, 0x14($t4)
/* 86D10 800CC510 8D65000C */  lw         $a1, 0xC($t3)
/* 86D14 800CC514 8D660008 */  lw         $a2, 0x8($t3)
/* 86D18 800CC518 0320F809 */  jalr       $t9
/* 86D1C 800CC51C 8D670010 */   lw        $a3, 0x10($t3)
/* 86D20 800CC520 1000000B */  b          .L800CC550
/* 86D24 800CC524 AFA20028 */   sw        $v0, 0x28($sp)
.L800CC528:
/* 86D28 800CC528 8FAD0034 */  lw         $t5, 0x34($sp)
/* 86D2C 800CC52C 00003025 */  or         $a2, $zero, $zero
/* 86D30 800CC530 8DA40004 */  lw         $a0, 0x4($t5)
/* 86D34 800CC534 0C0315E8 */  jal        func_800C57A0
/* 86D38 800CC538 01A02825 */   or        $a1, $t5, $zero
/* 86D3C 800CC53C 240EFFFF */  addiu      $t6, $zero, -0x1
/* 86D40 800CC540 10000003 */  b          .L800CC550
/* 86D44 800CC544 AFAE0028 */   sw        $t6, 0x28($sp)
.L800CC548:
/* 86D48 800CC548 240FFFFF */  addiu      $t7, $zero, -0x1
/* 86D4C 800CC54C AFAF0028 */  sw         $t7, 0x28($sp)
.L800CC550:
/* 86D50 800CC550 8FB80028 */  lw         $t8, 0x28($sp)
/* 86D54 800CC554 1700FFC6 */  bnez       $t8, .L800CC470
/* 86D58 800CC558 00000000 */   nop
/* 86D5C 800CC55C 8FA80024 */  lw         $t0, 0x24($sp)
/* 86D60 800CC560 27A50030 */  addiu      $a1, $sp, 0x30
/* 86D64 800CC564 24060001 */  addiu      $a2, $zero, 0x1
/* 86D68 800CC568 0C031718 */  jal        func_800C5C60
/* 86D6C 800CC56C 8D04000C */   lw        $a0, 0xC($t0)
/* 86D70 800CC570 8FA90034 */  lw         $t1, 0x34($sp)
/* 86D74 800CC574 00003025 */  or         $a2, $zero, $zero
/* 86D78 800CC578 8D240004 */  lw         $a0, 0x4($t1)
/* 86D7C 800CC57C 0C0315E8 */  jal        func_800C57A0
/* 86D80 800CC580 01202825 */   or        $a1, $t1, $zero
/* 86D84 800CC584 8FAA0024 */  lw         $t2, 0x24($sp)
/* 86D88 800CC588 00002825 */  or         $a1, $zero, $zero
/* 86D8C 800CC58C 00003025 */  or         $a2, $zero, $zero
/* 86D90 800CC590 0C0315E8 */  jal        func_800C57A0
/* 86D94 800CC594 8D440010 */   lw        $a0, 0x10($t2)
/* 86D98 800CC598 1000FFB5 */  b          .L800CC470
/* 86D9C 800CC59C 00000000 */   nop
/* 86DA0 800CC5A0 00000000 */  nop
/* 86DA4 800CC5A4 00000000 */  nop
/* 86DA8 800CC5A8 00000000 */  nop
/* 86DAC 800CC5AC 00000000 */  nop
/* 86DB0 800CC5B0 8FBF001C */  lw         $ra, 0x1C($sp)
/* 86DB4 800CC5B4 8FB00018 */  lw         $s0, 0x18($sp)
/* 86DB8 800CC5B8 27BD0038 */  addiu      $sp, $sp, 0x38
/* 86DBC 800CC5BC 03E00008 */  jr         $ra
/* 86DC0 800CC5C0 00000000 */   nop
/* 86DC4 800CC5C4 00000000 */  nop
/* 86DC8 800CC5C8 00000000 */  nop
/* 86DCC 800CC5CC 00000000 */  nop

# Handwritten function
glabel func_800CC5D0
/* 86DD0 800CC5D0 40846000 */  mtc0       $a0, $12
/* 86DD4 800CC5D4 00000000 */  nop
/* 86DD8 800CC5D8 03E00008 */  jr         $ra
/* 86DDC 800CC5DC 00000000 */   nop

# Handwritten function
glabel func_800CC5E0
/* 86DE0 800CC5E0 40026000 */  mfc0       $v0, $12
/* 86DE4 800CC5E4 03E00008 */  jr         $ra
/* 86DE8 800CC5E8 00000000 */   nop
/* 86DEC 800CC5EC 00000000 */  nop

glabel func_800CC5F0
/* 86DF0 800CC5F0 4442F800 */  cfc1       $v0, $31
/* 86DF4 800CC5F4 44C4F800 */  ctc1       $a0, $31
/* 86DF8 800CC5F8 03E00008 */  jr         $ra
/* 86DFC 800CC5FC 00000000 */   nop

glabel func_800CC600
/* 86E00 800CC600 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 86E04 800CC604 AFBF0014 */  sw         $ra, 0x14($sp)
/* 86E08 800CC608 AFA40018 */  sw         $a0, 0x18($sp)
/* 86E0C 800CC60C 0C03438C */  jal        func_800D0E30
/* 86E10 800CC610 AFA5001C */   sw        $a1, 0x1C($sp)
/* 86E14 800CC614 10400003 */  beqz       $v0, .L800CC624
/* 86E18 800CC618 00000000 */   nop
/* 86E1C 800CC61C 10000008 */  b          .L800CC640
/* 86E20 800CC620 2402FFFF */   addiu     $v0, $zero, -0x1
.L800CC624:
/* 86E24 800CC624 8FAE0018 */  lw         $t6, 0x18($sp)
/* 86E28 800CC628 3C01A000 */  lui        $at, %hi(D_A0000000)
/* 86E2C 800CC62C 8FB9001C */  lw         $t9, 0x1C($sp)
/* 86E30 800CC630 01C17825 */  or         $t7, $t6, $at
/* 86E34 800CC634 8DF80000 */  lw         $t8, %lo(D_A0000000)($t7)
/* 86E38 800CC638 00001025 */  or         $v0, $zero, $zero
/* 86E3C 800CC63C AF380000 */  sw         $t8, 0x0($t9)
.L800CC640:
/* 86E40 800CC640 8FBF0014 */  lw         $ra, 0x14($sp)
/* 86E44 800CC644 27BD0018 */  addiu      $sp, $sp, 0x18
/* 86E48 800CC648 03E00008 */  jr         $ra
/* 86E4C 800CC64C 00000000 */   nop

glabel func_800CC650
/* 86E50 800CC650 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 86E54 800CC654 AFBF0014 */  sw         $ra, 0x14($sp)
/* 86E58 800CC658 AFA40018 */  sw         $a0, 0x18($sp)
/* 86E5C 800CC65C 0C03438C */  jal        func_800D0E30
/* 86E60 800CC660 AFA5001C */   sw        $a1, 0x1C($sp)
/* 86E64 800CC664 10400003 */  beqz       $v0, .L800CC674
/* 86E68 800CC668 00000000 */   nop
/* 86E6C 800CC66C 10000007 */  b          .L800CC68C
/* 86E70 800CC670 2402FFFF */   addiu     $v0, $zero, -0x1
.L800CC674:
/* 86E74 800CC674 8FAF0018 */  lw         $t7, 0x18($sp)
/* 86E78 800CC678 8FAE001C */  lw         $t6, 0x1C($sp)
/* 86E7C 800CC67C 3C01A000 */  lui        $at, %hi(D_A0000000)
/* 86E80 800CC680 01E1C025 */  or         $t8, $t7, $at
/* 86E84 800CC684 00001025 */  or         $v0, $zero, $zero
/* 86E88 800CC688 AF0E0000 */  sw         $t6, %lo(D_A0000000)($t8)
.L800CC68C:
/* 86E8C 800CC68C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 86E90 800CC690 27BD0018 */  addiu      $sp, $sp, 0x18
/* 86E94 800CC694 03E00008 */  jr         $ra
/* 86E98 800CC698 00000000 */   nop
/* 86E9C 800CC69C 00000000 */  nop

# Handwritten function
glabel func_800CC6A0
/* 86EA0 800CC6A0 40085000 */  mfc0       $t0, $10
/* 86EA4 800CC6A4 2409001F */  addiu      $t1, $zero, 0x1F
/* 86EA8 800CC6A8 40890000 */  mtc0       $t1, $0
/* 86EAC 800CC6AC 40802800 */  mtc0       $zero, $5
/* 86EB0 800CC6B0 240A0017 */  addiu      $t2, $zero, 0x17
/* 86EB4 800CC6B4 3C09C000 */  lui        $t1, (0xC0000000 >> 16)
/* 86EB8 800CC6B8 40895000 */  mtc0       $t1, $10
/* 86EBC 800CC6BC 3C098000 */  lui        $t1, (0x80000000 >> 16)
/* 86EC0 800CC6C0 00095982 */  srl        $t3, $t1, 6
/* 86EC4 800CC6C4 016A5825 */  or         $t3, $t3, $t2
/* 86EC8 800CC6C8 408B1000 */  mtc0       $t3, $2
/* 86ECC 800CC6CC 24090001 */  addiu      $t1, $zero, 0x1
/* 86ED0 800CC6D0 40891800 */  mtc0       $t1, $3
/* 86ED4 800CC6D4 00000000 */  nop
/* 86ED8 800CC6D8 42000002 */  tlbwi
/* 86EDC 800CC6DC 00000000 */  nop
/* 86EE0 800CC6E0 00000000 */  nop
/* 86EE4 800CC6E4 00000000 */  nop
/* 86EE8 800CC6E8 00000000 */  nop
/* 86EEC 800CC6EC 40885000 */  mtc0       $t0, $10
/* 86EF0 800CC6F0 03E00008 */  jr         $ra
/* 86EF4 800CC6F4 00000000 */   nop
/* 86EF8 800CC6F8 00000000 */  nop
/* 86EFC 800CC6FC 00000000 */  nop

glabel func_800CC700
/* 86F00 800CC700 3C0EA460 */  lui        $t6, %hi(D_A4600010)
/* 86F04 800CC704 8DC60010 */  lw         $a2, %lo(D_A4600010)($t6)
/* 86F08 800CC708 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 86F0C 800CC70C 30CF0003 */  andi       $t7, $a2, 0x3
/* 86F10 800CC710 11E00006 */  beqz       $t7, .L800CC72C
/* 86F14 800CC714 00000000 */   nop
.L800CC718:
/* 86F18 800CC718 3C18A460 */  lui        $t8, %hi(D_A4600010)
/* 86F1C 800CC71C 8F060010 */  lw         $a2, %lo(D_A4600010)($t8)
/* 86F20 800CC720 30D90003 */  andi       $t9, $a2, 0x3
/* 86F24 800CC724 1720FFFC */  bnez       $t9, .L800CC718
/* 86F28 800CC728 00000000 */   nop
.L800CC72C:
/* 86F2C 800CC72C 3C088000 */  lui        $t0, %hi(D_80000308)
/* 86F30 800CC730 8D080308 */  lw         $t0, %lo(D_80000308)($t0)
/* 86F34 800CC734 3C01A000 */  lui        $at, (0xA0000000 >> 16)
/* 86F38 800CC738 00001025 */  or         $v0, $zero, $zero
/* 86F3C 800CC73C 01044825 */  or         $t1, $t0, $a0
/* 86F40 800CC740 01215025 */  or         $t2, $t1, $at
/* 86F44 800CC744 8D4B0000 */  lw         $t3, 0x0($t2)
/* 86F48 800CC748 27BD0008 */  addiu      $sp, $sp, 0x8
/* 86F4C 800CC74C 03E00008 */  jr         $ra
/* 86F50 800CC750 ACAB0000 */   sw        $t3, 0x0($a1)
/* 86F54 800CC754 00000000 */  nop
/* 86F58 800CC758 00000000 */  nop
/* 86F5C 800CC75C 00000000 */  nop

glabel func_800CC760
/* 86F60 800CC760 AFA40000 */  sw         $a0, 0x0($sp)
/* 86F64 800CC764 AFA50004 */  sw         $a1, 0x4($sp)
/* 86F68 800CC768 AFA60008 */  sw         $a2, 0x8($sp)
/* 86F6C 800CC76C AFA7000C */  sw         $a3, 0xC($sp)
/* 86F70 800CC770 DFAF0008 */  ld         $t7, 0x8($sp)
/* 86F74 800CC774 DFAE0000 */  ld         $t6, 0x0($sp)
/* 86F78 800CC778 01EE1016 */  dsrlv      $v0, $t6, $t7
/* 86F7C 800CC77C 0002183C */  dsll32     $v1, $v0, 0
/* 86F80 800CC780 0003183F */  dsra32     $v1, $v1, 0
/* 86F84 800CC784 03E00008 */  jr         $ra
/* 86F88 800CC788 0002103F */   dsra32    $v0, $v0, 0

glabel func_800CC78C
/* 86F8C 800CC78C AFA40000 */  sw         $a0, 0x0($sp)
/* 86F90 800CC790 AFA50004 */  sw         $a1, 0x4($sp)
/* 86F94 800CC794 AFA60008 */  sw         $a2, 0x8($sp)
/* 86F98 800CC798 AFA7000C */  sw         $a3, 0xC($sp)
/* 86F9C 800CC79C DFAF0008 */  ld         $t7, 0x8($sp)
/* 86FA0 800CC7A0 DFAE0000 */  ld         $t6, 0x0($sp)
/* 86FA4 800CC7A4 01CF001F */  ddivu      $zero, $t6, $t7
/* 86FA8 800CC7A8 15E00002 */  bnez       $t7, .L800CC7B4
/* 86FAC 800CC7AC 00000000 */   nop
/* 86FB0 800CC7B0 0007000D */  break      7
.L800CC7B4:
/* 86FB4 800CC7B4 00001010 */  mfhi       $v0
/* 86FB8 800CC7B8 0002183C */  dsll32     $v1, $v0, 0
/* 86FBC 800CC7BC 0003183F */  dsra32     $v1, $v1, 0
/* 86FC0 800CC7C0 03E00008 */  jr         $ra
/* 86FC4 800CC7C4 0002103F */   dsra32    $v0, $v0, 0

glabel func_800CC7C8
/* 86FC8 800CC7C8 AFA40000 */  sw         $a0, 0x0($sp)
/* 86FCC 800CC7CC AFA50004 */  sw         $a1, 0x4($sp)
/* 86FD0 800CC7D0 AFA60008 */  sw         $a2, 0x8($sp)
/* 86FD4 800CC7D4 AFA7000C */  sw         $a3, 0xC($sp)
/* 86FD8 800CC7D8 DFAF0008 */  ld         $t7, 0x8($sp)
/* 86FDC 800CC7DC DFAE0000 */  ld         $t6, 0x0($sp)
/* 86FE0 800CC7E0 01CF001F */  ddivu      $zero, $t6, $t7
/* 86FE4 800CC7E4 15E00002 */  bnez       $t7, .L800CC7F0
/* 86FE8 800CC7E8 00000000 */   nop
/* 86FEC 800CC7EC 0007000D */  break      7
.L800CC7F0:
/* 86FF0 800CC7F0 00001012 */  mflo       $v0
/* 86FF4 800CC7F4 0002183C */  dsll32     $v1, $v0, 0
/* 86FF8 800CC7F8 0003183F */  dsra32     $v1, $v1, 0
/* 86FFC 800CC7FC 03E00008 */  jr         $ra
/* 87000 800CC800 0002103F */   dsra32    $v0, $v0, 0

glabel func_800CC804
/* 87004 800CC804 AFA40000 */  sw         $a0, 0x0($sp)
/* 87008 800CC808 AFA50004 */  sw         $a1, 0x4($sp)
/* 8700C 800CC80C AFA60008 */  sw         $a2, 0x8($sp)
/* 87010 800CC810 AFA7000C */  sw         $a3, 0xC($sp)
/* 87014 800CC814 DFAF0008 */  ld         $t7, 0x8($sp)
/* 87018 800CC818 DFAE0000 */  ld         $t6, 0x0($sp)
/* 8701C 800CC81C 01EE1014 */  dsllv      $v0, $t6, $t7
/* 87020 800CC820 0002183C */  dsll32     $v1, $v0, 0
/* 87024 800CC824 0003183F */  dsra32     $v1, $v1, 0
/* 87028 800CC828 03E00008 */  jr         $ra
/* 8702C 800CC82C 0002103F */   dsra32    $v0, $v0, 0

glabel func_800CC830
/* 87030 800CC830 AFA40000 */  sw         $a0, 0x0($sp)
/* 87034 800CC834 AFA50004 */  sw         $a1, 0x4($sp)
/* 87038 800CC838 AFA60008 */  sw         $a2, 0x8($sp)
/* 8703C 800CC83C AFA7000C */  sw         $a3, 0xC($sp)
/* 87040 800CC840 DFAF0008 */  ld         $t7, 0x8($sp)
/* 87044 800CC844 DFAE0000 */  ld         $t6, 0x0($sp)
/* 87048 800CC848 01CF001F */  ddivu      $zero, $t6, $t7
/* 8704C 800CC84C 15E00002 */  bnez       $t7, .L800CC858
/* 87050 800CC850 00000000 */   nop
/* 87054 800CC854 0007000D */  break      7
.L800CC858:
/* 87058 800CC858 00001010 */  mfhi       $v0
/* 8705C 800CC85C 0002183C */  dsll32     $v1, $v0, 0
/* 87060 800CC860 0003183F */  dsra32     $v1, $v1, 0
/* 87064 800CC864 03E00008 */  jr         $ra
/* 87068 800CC868 0002103F */   dsra32    $v0, $v0, 0

glabel func_800CC86C
/* 8706C 800CC86C AFA40000 */  sw         $a0, 0x0($sp)
/* 87070 800CC870 AFA50004 */  sw         $a1, 0x4($sp)
/* 87074 800CC874 AFA60008 */  sw         $a2, 0x8($sp)
/* 87078 800CC878 AFA7000C */  sw         $a3, 0xC($sp)
/* 8707C 800CC87C DFAF0008 */  ld         $t7, 0x8($sp)
/* 87080 800CC880 DFAE0000 */  ld         $t6, 0x0($sp)
/* 87084 800CC884 01CF001E */  ddiv       $zero, $t6, $t7
/* 87088 800CC888 00000000 */  nop
/* 8708C 800CC88C 15E00002 */  bnez       $t7, .L800CC898
/* 87090 800CC890 00000000 */   nop
/* 87094 800CC894 0007000D */  break      7
.L800CC898:
/* 87098 800CC898 6401FFFF */  daddiu     $at, $zero, -0x1
/* 8709C 800CC89C 15E10005 */  bne        $t7, $at, .L800CC8B4
/* 870A0 800CC8A0 64010001 */   daddiu    $at, $zero, 0x1
/* 870A4 800CC8A4 00010FFC */  dsll32     $at, $at, 31
/* 870A8 800CC8A8 15C10002 */  bne        $t6, $at, .L800CC8B4
/* 870AC 800CC8AC 00000000 */   nop
/* 870B0 800CC8B0 0006000D */  break      6
.L800CC8B4:
/* 870B4 800CC8B4 00001012 */  mflo       $v0
/* 870B8 800CC8B8 0002183C */  dsll32     $v1, $v0, 0
/* 870BC 800CC8BC 0003183F */  dsra32     $v1, $v1, 0
/* 870C0 800CC8C0 03E00008 */  jr         $ra
/* 870C4 800CC8C4 0002103F */   dsra32    $v0, $v0, 0

glabel func_800CC8C8
/* 870C8 800CC8C8 AFA40000 */  sw         $a0, 0x0($sp)
/* 870CC 800CC8CC AFA50004 */  sw         $a1, 0x4($sp)
/* 870D0 800CC8D0 AFA60008 */  sw         $a2, 0x8($sp)
/* 870D4 800CC8D4 AFA7000C */  sw         $a3, 0xC($sp)
/* 870D8 800CC8D8 DFAF0008 */  ld         $t7, 0x8($sp)
/* 870DC 800CC8DC DFAE0000 */  ld         $t6, 0x0($sp)
/* 870E0 800CC8E0 01CF001D */  dmultu     $t6, $t7
/* 870E4 800CC8E4 00001012 */  mflo       $v0
/* 870E8 800CC8E8 0002183C */  dsll32     $v1, $v0, 0
/* 870EC 800CC8EC 0003183F */  dsra32     $v1, $v1, 0
/* 870F0 800CC8F0 03E00008 */  jr         $ra
/* 870F4 800CC8F4 0002103F */   dsra32    $v0, $v0, 0

glabel func_800CC8F8
/* 870F8 800CC8F8 87AF0012 */  lh         $t7, 0x12($sp)
/* 870FC 800CC8FC AFA60008 */  sw         $a2, 0x8($sp)
/* 87100 800CC900 AFA7000C */  sw         $a3, 0xC($sp)
/* 87104 800CC904 DFAE0008 */  ld         $t6, 0x8($sp)
/* 87108 800CC908 01E0C025 */  or         $t8, $t7, $zero
/* 8710C 800CC90C 0300C825 */  or         $t9, $t8, $zero
/* 87110 800CC910 01D9001F */  ddivu      $zero, $t6, $t9
/* 87114 800CC914 17200002 */  bnez       $t9, .L800CC920
/* 87118 800CC918 00000000 */   nop
/* 8711C 800CC91C 0007000D */  break      7
.L800CC920:
/* 87120 800CC920 00004012 */  mflo       $t0
/* 87124 800CC924 FC880000 */  sd         $t0, 0x0($a0)
/* 87128 800CC928 87AA0012 */  lh         $t2, 0x12($sp)
/* 8712C 800CC92C DFA90008 */  ld         $t1, 0x8($sp)
/* 87130 800CC930 01405825 */  or         $t3, $t2, $zero
/* 87134 800CC934 01606025 */  or         $t4, $t3, $zero
/* 87138 800CC938 012C001F */  ddivu      $zero, $t1, $t4
/* 8713C 800CC93C 15800002 */  bnez       $t4, .L800CC948
/* 87140 800CC940 00000000 */   nop
/* 87144 800CC944 0007000D */  break      7
.L800CC948:
/* 87148 800CC948 00006810 */  mfhi       $t5
/* 8714C 800CC94C FCAD0000 */  sd         $t5, 0x0($a1)
/* 87150 800CC950 03E00008 */  jr         $ra
/* 87154 800CC954 00000000 */   nop

glabel func_800CC958
/* 87158 800CC958 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 8715C 800CC95C AFA40008 */  sw         $a0, 0x8($sp)
/* 87160 800CC960 AFA5000C */  sw         $a1, 0xC($sp)
/* 87164 800CC964 AFA60010 */  sw         $a2, 0x10($sp)
/* 87168 800CC968 AFA70014 */  sw         $a3, 0x14($sp)
/* 8716C 800CC96C DFAF0010 */  ld         $t7, 0x10($sp)
/* 87170 800CC970 DFAE0008 */  ld         $t6, 0x8($sp)
/* 87174 800CC974 01CF001E */  ddiv       $zero, $t6, $t7
/* 87178 800CC978 00000000 */  nop
/* 8717C 800CC97C 15E00002 */  bnez       $t7, .L800CC988
/* 87180 800CC980 00000000 */   nop
/* 87184 800CC984 0007000D */  break      7
.L800CC988:
/* 87188 800CC988 6401FFFF */  daddiu     $at, $zero, -0x1
/* 8718C 800CC98C 15E10005 */  bne        $t7, $at, .L800CC9A4
/* 87190 800CC990 64010001 */   daddiu    $at, $zero, 0x1
/* 87194 800CC994 00010FFC */  dsll32     $at, $at, 31
/* 87198 800CC998 15C10002 */  bne        $t6, $at, .L800CC9A4
/* 8719C 800CC99C 00000000 */   nop
/* 871A0 800CC9A0 0006000D */  break      6
.L800CC9A4:
/* 871A4 800CC9A4 0000C010 */  mfhi       $t8
/* 871A8 800CC9A8 FFB80000 */  sd         $t8, 0x0($sp)
/* 871AC 800CC9AC 07010003 */  bgez       $t8, .L800CC9BC
/* 871B0 800CC9B0 00000000 */   nop
/* 871B4 800CC9B4 1DE00007 */  bgtz       $t7, .L800CC9D4
/* 871B8 800CC9B8 00000000 */   nop
.L800CC9BC:
/* 871BC 800CC9BC DFB90000 */  ld         $t9, 0x0($sp)
/* 871C0 800CC9C0 1B200008 */  blez       $t9, .L800CC9E4
/* 871C4 800CC9C4 00000000 */   nop
/* 871C8 800CC9C8 DFA80010 */  ld         $t0, 0x10($sp)
/* 871CC 800CC9CC 05010005 */  bgez       $t0, .L800CC9E4
/* 871D0 800CC9D0 00000000 */   nop
.L800CC9D4:
/* 871D4 800CC9D4 DFA90000 */  ld         $t1, 0x0($sp)
/* 871D8 800CC9D8 DFAA0010 */  ld         $t2, 0x10($sp)
/* 871DC 800CC9DC 012A582D */  daddu      $t3, $t1, $t2
/* 871E0 800CC9E0 FFAB0000 */  sd         $t3, 0x0($sp)
.L800CC9E4:
/* 871E4 800CC9E4 8FA20000 */  lw         $v0, 0x0($sp)
/* 871E8 800CC9E8 8FA30004 */  lw         $v1, 0x4($sp)
/* 871EC 800CC9EC 03E00008 */  jr         $ra
/* 871F0 800CC9F0 27BD0008 */   addiu     $sp, $sp, 0x8

glabel func_800CC9F4
/* 871F4 800CC9F4 AFA40000 */  sw         $a0, 0x0($sp)
/* 871F8 800CC9F8 AFA50004 */  sw         $a1, 0x4($sp)
/* 871FC 800CC9FC AFA60008 */  sw         $a2, 0x8($sp)
/* 87200 800CCA00 AFA7000C */  sw         $a3, 0xC($sp)
/* 87204 800CCA04 DFAF0008 */  ld         $t7, 0x8($sp)
/* 87208 800CCA08 DFAE0000 */  ld         $t6, 0x0($sp)
/* 8720C 800CCA0C 01EE1017 */  dsrav      $v0, $t6, $t7
/* 87210 800CCA10 0002183C */  dsll32     $v1, $v0, 0
/* 87214 800CCA14 0003183F */  dsra32     $v1, $v1, 0
/* 87218 800CCA18 03E00008 */  jr         $ra
/* 8721C 800CCA1C 0002103F */   dsra32    $v0, $v0, 0

glabel func_800CCA20
/* 87220 800CCA20 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 87224 800CCA24 AFA40020 */  sw         $a0, 0x20($sp)
/* 87228 800CCA28 8FAE0020 */  lw         $t6, 0x20($sp)
/* 8722C 800CCA2C AFBF0014 */  sw         $ra, 0x14($sp)
/* 87230 800CCA30 AFA60028 */  sw         $a2, 0x28($sp)
/* 87234 800CCA34 AFA7002C */  sw         $a3, 0x2C($sp)
/* 87238 800CCA38 ADC00000 */  sw         $zero, 0x0($t6)
/* 8723C 800CCA3C 8FAF0020 */  lw         $t7, 0x20($sp)
/* 87240 800CCA40 ADE00004 */  sw         $zero, 0x4($t7)
/* 87244 800CCA44 8FA80020 */  lw         $t0, 0x20($sp)
/* 87248 800CCA48 8FB90034 */  lw         $t9, 0x34($sp)
/* 8724C 800CCA4C 8FB80030 */  lw         $t8, 0x30($sp)
/* 87250 800CCA50 AD19000C */  sw         $t9, 0xC($t0)
/* 87254 800CCA54 AD180008 */  sw         $t8, 0x8($t0)
/* 87258 800CCA58 8FAA0028 */  lw         $t2, 0x28($sp)
/* 8725C 800CCA5C 8FAB002C */  lw         $t3, 0x2C($sp)
/* 87260 800CCA60 15400003 */  bnez       $t2, .L800CCA70
/* 87264 800CCA64 00000000 */   nop
/* 87268 800CCA68 11600005 */  beqz       $t3, .L800CCA80
/* 8726C 800CCA6C 00000000 */   nop
.L800CCA70:
/* 87270 800CCA70 8FA90020 */  lw         $t1, 0x20($sp)
/* 87274 800CCA74 AD2A0010 */  sw         $t2, 0x10($t1)
/* 87278 800CCA78 10000006 */  b          .L800CCA94
/* 8727C 800CCA7C AD2B0014 */   sw        $t3, 0x14($t1)
.L800CCA80:
/* 87280 800CCA80 8FAE0020 */  lw         $t6, 0x20($sp)
/* 87284 800CCA84 8FAC0030 */  lw         $t4, 0x30($sp)
/* 87288 800CCA88 8FAD0034 */  lw         $t5, 0x34($sp)
/* 8728C 800CCA8C ADCC0010 */  sw         $t4, 0x10($t6)
/* 87290 800CCA90 ADCD0014 */  sw         $t5, 0x14($t6)
.L800CCA94:
/* 87294 800CCA94 8FAF0038 */  lw         $t7, 0x38($sp)
/* 87298 800CCA98 8FB80020 */  lw         $t8, 0x20($sp)
/* 8729C 800CCA9C AF0F0018 */  sw         $t7, 0x18($t8)
/* 872A0 800CCAA0 8FA80020 */  lw         $t0, 0x20($sp)
/* 872A4 800CCAA4 8FB9003C */  lw         $t9, 0x3C($sp)
/* 872A8 800CCAA8 AD19001C */  sw         $t9, 0x1C($t0)
/* 872AC 800CCAAC 0C032D92 */  jal        func_800CB648
/* 872B0 800CCAB0 8FA40020 */   lw        $a0, 0x20($sp)
/* 872B4 800CCAB4 3C0A800F */  lui        $t2, %hi(D_800E9040)
/* 872B8 800CCAB8 8D4A9040 */  lw         $t2, %lo(D_800E9040)($t2)
/* 872BC 800CCABC AFA20018 */  sw         $v0, 0x18($sp)
/* 872C0 800CCAC0 AFA3001C */  sw         $v1, 0x1C($sp)
/* 872C4 800CCAC4 8FA90020 */  lw         $t1, 0x20($sp)
/* 872C8 800CCAC8 8D4B0000 */  lw         $t3, 0x0($t2)
/* 872CC 800CCACC 15690004 */  bne        $t3, $t1, .L800CCAE0
/* 872D0 800CCAD0 00000000 */   nop
/* 872D4 800CCAD4 8FA40018 */  lw         $a0, 0x18($sp)
/* 872D8 800CCAD8 0C032D75 */  jal        func_800CB5D4
/* 872DC 800CCADC 8FA5001C */   lw        $a1, 0x1C($sp)
.L800CCAE0:
/* 872E0 800CCAE0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 872E4 800CCAE4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 872E8 800CCAE8 00001025 */  or         $v0, $zero, $zero
/* 872EC 800CCAEC 03E00008 */  jr         $ra
/* 872F0 800CCAF0 00000000 */   nop
/* 872F4 800CCAF4 00000000 */  nop
/* 872F8 800CCAF8 00000000 */  nop
/* 872FC 800CCAFC 00000000 */  nop

glabel func_800CCB00
/* 87300 800CCB00 3C014780 */  lui        $at, (0x47800000 >> 16)
/* 87304 800CCB04 44810000 */  mtc1       $at, $f0
/* 87308 800CCB08 00A01025 */  or         $v0, $a1, $zero
/* 8730C 800CCB0C 24A30020 */  addiu      $v1, $a1, 0x20
/* 87310 800CCB10 00003025 */  or         $a2, $zero, $zero
/* 87314 800CCB14 00803825 */  or         $a3, $a0, $zero
/* 87318 800CCB18 240C0004 */  addiu      $t4, $zero, 0x4
/* 8731C 800CCB1C 240B0002 */  addiu      $t3, $zero, 0x2
/* 87320 800CCB20 3C0AFFFF */  lui        $t2, (0xFFFF0000 >> 16)
.L800CCB24:
/* 87324 800CCB24 00002025 */  or         $a0, $zero, $zero
/* 87328 800CCB28 00E04025 */  or         $t0, $a3, $zero
/* 8732C 800CCB2C C50E0004 */  lwc1       $f14, 0x4($t0)
/* 87330 800CCB30 24840001 */  addiu      $a0, $a0, 0x1
/* 87334 800CCB34 C5120000 */  lwc1       $f18, 0x0($t0)
/* 87338 800CCB38 46007402 */  mul.s      $f16, $f14, $f0
/* 8733C 800CCB3C 108B0019 */  beq        $a0, $t3, .L800CCBA4
/* 87340 800CCB40 00000000 */   nop
.L800CCB44:
/* 87344 800CCB44 46009382 */  mul.s      $f14, $f18, $f0
/* 87348 800CCB48 24840001 */  addiu      $a0, $a0, 0x1
/* 8734C 800CCB4C 24420004 */  addiu      $v0, $v0, 0x4
/* 87350 800CCB50 24630004 */  addiu      $v1, $v1, 0x4
/* 87354 800CCB54 25080008 */  addiu      $t0, $t0, 0x8
/* 87358 800CCB58 4600830D */  trunc.w.s  $f12, $f16
/* 8735C 800CCB5C 4600738D */  trunc.w.s  $f14, $f14
/* 87360 800CCB60 44096000 */  mfc1       $t1, $f12
/* 87364 800CCB64 44057000 */  mfc1       $a1, $f14
/* 87368 800CCB68 0009CC03 */  sra        $t9, $t1, 16
/* 8736C 800CCB6C 332DFFFF */  andi       $t5, $t9, 0xFFFF
/* 87370 800CCB70 00AAC024 */  and        $t8, $a1, $t2
/* 87374 800CCB74 030D7025 */  or         $t6, $t8, $t5
/* 87378 800CCB78 00057C00 */  sll        $t7, $a1, 16
/* 8737C 800CCB7C 01EAC824 */  and        $t9, $t7, $t2
/* 87380 800CCB80 AC4EFFFC */  sw         $t6, -0x4($v0)
/* 87384 800CCB84 3138FFFF */  andi       $t8, $t1, 0xFFFF
/* 87388 800CCB88 03386825 */  or         $t5, $t9, $t8
/* 8738C 800CCB8C AC6DFFFC */  sw         $t5, -0x4($v1)
/* 87390 800CCB90 C50E0004 */  lwc1       $f14, 0x4($t0)
/* 87394 800CCB94 C5120000 */  lwc1       $f18, 0x0($t0)
/* 87398 800CCB98 46007402 */  mul.s      $f16, $f14, $f0
/* 8739C 800CCB9C 148BFFE9 */  bne        $a0, $t3, .L800CCB44
/* 873A0 800CCBA0 00000000 */   nop
.L800CCBA4:
/* 873A4 800CCBA4 46009382 */  mul.s      $f14, $f18, $f0
/* 873A8 800CCBA8 25080008 */  addiu      $t0, $t0, 0x8
/* 873AC 800CCBAC 24420004 */  addiu      $v0, $v0, 0x4
/* 873B0 800CCBB0 24630004 */  addiu      $v1, $v1, 0x4
/* 873B4 800CCBB4 4600830D */  trunc.w.s  $f12, $f16
/* 873B8 800CCBB8 4600738D */  trunc.w.s  $f14, $f14
/* 873BC 800CCBBC 44096000 */  mfc1       $t1, $f12
/* 873C0 800CCBC0 44057000 */  mfc1       $a1, $f14
/* 873C4 800CCBC4 0009CC03 */  sra        $t9, $t1, 16
/* 873C8 800CCBC8 332DFFFF */  andi       $t5, $t9, 0xFFFF
/* 873CC 800CCBCC 00AAC024 */  and        $t8, $a1, $t2
/* 873D0 800CCBD0 030D7025 */  or         $t6, $t8, $t5
/* 873D4 800CCBD4 00057C00 */  sll        $t7, $a1, 16
/* 873D8 800CCBD8 01EAC824 */  and        $t9, $t7, $t2
/* 873DC 800CCBDC 3138FFFF */  andi       $t8, $t1, 0xFFFF
/* 873E0 800CCBE0 AC4EFFFC */  sw         $t6, -0x4($v0)
/* 873E4 800CCBE4 03386825 */  or         $t5, $t9, $t8
/* 873E8 800CCBE8 AC6DFFFC */  sw         $t5, -0x4($v1)
/* 873EC 800CCBEC 24C60001 */  addiu      $a2, $a2, 0x1
/* 873F0 800CCBF0 14CCFFCC */  bne        $a2, $t4, .L800CCB24
/* 873F4 800CCBF4 24E70010 */   addiu     $a3, $a3, 0x10
/* 873F8 800CCBF8 03E00008 */  jr         $ra
/* 873FC 800CCBFC 00000000 */   nop

glabel func_800CCC00
/* 87400 800CCC00 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 87404 800CCC04 00801825 */  or         $v1, $a0, $zero
/* 87408 800CCC08 44810000 */  mtc1       $at, $f0
/* 8740C 800CCC0C 44801000 */  mtc1       $zero, $f2
/* 87410 800CCC10 24040001 */  addiu      $a0, $zero, 0x1
/* 87414 800CCC14 00001025 */  or         $v0, $zero, $zero
/* 87418 800CCC18 24070004 */  addiu      $a3, $zero, 0x4
/* 8741C 800CCC1C 24060003 */  addiu      $a2, $zero, 0x3
/* 87420 800CCC20 24050002 */  addiu      $a1, $zero, 0x2
.L800CCC24:
/* 87424 800CCC24 54400004 */  bnel       $v0, $zero, .L800CCC38
/* 87428 800CCC28 E4620000 */   swc1      $f2, 0x0($v1)
/* 8742C 800CCC2C 10000002 */  b          .L800CCC38
/* 87430 800CCC30 E4600000 */   swc1      $f0, 0x0($v1)
/* 87434 800CCC34 E4620000 */  swc1       $f2, 0x0($v1)
.L800CCC38:
/* 87438 800CCC38 54440004 */  bnel       $v0, $a0, .L800CCC4C
/* 8743C 800CCC3C E4620004 */   swc1      $f2, 0x4($v1)
/* 87440 800CCC40 10000002 */  b          .L800CCC4C
/* 87444 800CCC44 E4600004 */   swc1      $f0, 0x4($v1)
/* 87448 800CCC48 E4620004 */  swc1       $f2, 0x4($v1)
.L800CCC4C:
/* 8744C 800CCC4C 54450004 */  bnel       $v0, $a1, .L800CCC60
/* 87450 800CCC50 E4620008 */   swc1      $f2, 0x8($v1)
/* 87454 800CCC54 10000002 */  b          .L800CCC60
/* 87458 800CCC58 E4600008 */   swc1      $f0, 0x8($v1)
/* 8745C 800CCC5C E4620008 */  swc1       $f2, 0x8($v1)
.L800CCC60:
/* 87460 800CCC60 54460004 */  bnel       $v0, $a2, .L800CCC74
/* 87464 800CCC64 E462000C */   swc1      $f2, 0xC($v1)
/* 87468 800CCC68 10000002 */  b          .L800CCC74
/* 8746C 800CCC6C E460000C */   swc1      $f0, 0xC($v1)
/* 87470 800CCC70 E462000C */  swc1       $f2, 0xC($v1)
.L800CCC74:
/* 87474 800CCC74 24420001 */  addiu      $v0, $v0, 0x1
/* 87478 800CCC78 1447FFEA */  bne        $v0, $a3, .L800CCC24
/* 8747C 800CCC7C 24630010 */   addiu     $v1, $v1, 0x10
/* 87480 800CCC80 03E00008 */  jr         $ra
/* 87484 800CCC84 00000000 */   nop

glabel func_800CCC88
/* 87488 800CCC88 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 8748C 800CCC8C AFBF0014 */  sw         $ra, 0x14($sp)
/* 87490 800CCC90 AFA40058 */  sw         $a0, 0x58($sp)
/* 87494 800CCC94 0C033300 */  jal        func_800CCC00
/* 87498 800CCC98 27A40018 */   addiu     $a0, $sp, 0x18
/* 8749C 800CCC9C 27A40018 */  addiu      $a0, $sp, 0x18
/* 874A0 800CCCA0 0C0332C0 */  jal        func_800CCB00
/* 874A4 800CCCA4 8FA50058 */   lw        $a1, 0x58($sp)
/* 874A8 800CCCA8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 874AC 800CCCAC 27BD0058 */  addiu      $sp, $sp, 0x58
/* 874B0 800CCCB0 03E00008 */  jr         $ra
/* 874B4 800CCCB4 00000000 */   nop

glabel func_800CCCB8
/* 874B8 800CCCB8 3C014780 */  lui        $at, (0x47800000 >> 16)
/* 874BC 800CCCBC 44810000 */  mtc1       $at, $f0
/* 874C0 800CCCC0 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 874C4 800CCCC4 00A01025 */  or         $v0, $a1, $zero
/* 874C8 800CCCC8 24A30020 */  addiu      $v1, $a1, 0x20
/* 874CC 800CCCCC 00003025 */  or         $a2, $zero, $zero
/* 874D0 800CCCD0 00804025 */  or         $t0, $a0, $zero
/* 874D4 800CCCD4 240C0004 */  addiu      $t4, $zero, 0x4
/* 874D8 800CCCD8 240B0002 */  addiu      $t3, $zero, 0x2
/* 874DC 800CCCDC 3C0AFFFF */  lui        $t2, (0xFFFF0000 >> 16)
.L800CCCE0:
/* 874E0 800CCCE0 00002025 */  or         $a0, $zero, $zero
/* 874E4 800CCCE4 01004825 */  or         $t1, $t0, $zero
.L800CCCE8:
/* 874E8 800CCCE8 8C6E0000 */  lw         $t6, 0x0($v1)
/* 874EC 800CCCEC 8C590000 */  lw         $t9, 0x0($v0)
/* 874F0 800CCCF0 24840001 */  addiu      $a0, $a0, 0x1
/* 874F4 800CCCF4 000E7C02 */  srl        $t7, $t6, 16
/* 874F8 800CCCF8 31F8FFFF */  andi       $t8, $t7, 0xFFFF
/* 874FC 800CCCFC 032A6824 */  and        $t5, $t9, $t2
/* 87500 800CCD00 030D7025 */  or         $t6, $t8, $t5
/* 87504 800CCD04 AFAE0004 */  sw         $t6, 0x4($sp)
/* 87508 800CCD08 8C6F0000 */  lw         $t7, 0x0($v1)
/* 8750C 800CCD0C 8C580000 */  lw         $t8, 0x0($v0)
/* 87510 800CCD10 8FA50004 */  lw         $a1, 0x4($sp)
/* 87514 800CCD14 31F9FFFF */  andi       $t9, $t7, 0xFFFF
/* 87518 800CCD18 00186C00 */  sll        $t5, $t8, 16
/* 8751C 800CCD1C 44859000 */  mtc1       $a1, $f18
/* 87520 800CCD20 01AA7024 */  and        $t6, $t5, $t2
/* 87524 800CCD24 032E3825 */  or         $a3, $t9, $t6
/* 87528 800CCD28 468094A0 */  cvt.s.w    $f18, $f18
/* 8752C 800CCD2C 44878000 */  mtc1       $a3, $f16
/* 87530 800CCD30 AFA70000 */  sw         $a3, 0x0($sp)
/* 87534 800CCD34 24420004 */  addiu      $v0, $v0, 0x4
/* 87538 800CCD38 24630004 */  addiu      $v1, $v1, 0x4
/* 8753C 800CCD3C 46808420 */  cvt.s.w    $f16, $f16
/* 87540 800CCD40 25290008 */  addiu      $t1, $t1, 0x8
/* 87544 800CCD44 46009483 */  div.s      $f18, $f18, $f0
/* 87548 800CCD48 46008403 */  div.s      $f16, $f16, $f0
/* 8754C 800CCD4C E532FFF8 */  swc1       $f18, -0x8($t1)
/* 87550 800CCD50 148BFFE5 */  bne        $a0, $t3, .L800CCCE8
/* 87554 800CCD54 E530FFFC */   swc1      $f16, -0x4($t1)
/* 87558 800CCD58 24C60001 */  addiu      $a2, $a2, 0x1
/* 8755C 800CCD5C 14CCFFE0 */  bne        $a2, $t4, .L800CCCE0
/* 87560 800CCD60 25080010 */   addiu     $t0, $t0, 0x10
/* 87564 800CCD64 03E00008 */  jr         $ra
/* 87568 800CCD68 27BD0010 */   addiu     $sp, $sp, 0x10
/* 8756C 800CCD6C 00000000 */  nop

glabel func_800CCD70
/* 87570 800CCD70 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 87574 800CCD74 AFA5003C */  sw         $a1, 0x3C($sp)
/* 87578 800CCD78 93AF003F */  lbu        $t7, 0x3F($sp)
/* 8757C 800CCD7C 3C0E801E */  lui        $t6, %hi(D_801DACB0)
/* 87580 800CCD80 25CEACB0 */  addiu      $t6, $t6, %lo(D_801DACB0)
/* 87584 800CCD84 29E10041 */  slti       $at, $t7, 0x41
/* 87588 800CCD88 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8758C 800CCD8C AFA40038 */  sw         $a0, 0x38($sp)
/* 87590 800CCD90 AFA60040 */  sw         $a2, 0x40($sp)
/* 87594 800CCD94 AFA00034 */  sw         $zero, 0x34($sp)
/* 87598 800CCD98 AFA00030 */  sw         $zero, 0x30($sp)
/* 8759C 800CCD9C 14200003 */  bnez       $at, .L800CCDAC
/* 875A0 800CCDA0 AFAE002C */   sw        $t6, 0x2C($sp)
/* 875A4 800CCDA4 1000006A */  b          .L800CCF50
/* 875A8 800CCDA8 2402FFFF */   addiu     $v0, $zero, -0x1
.L800CCDAC:
/* 875AC 800CCDAC 0C032E54 */  jal        func_800CB950
/* 875B0 800CCDB0 00000000 */   nop
/* 875B4 800CCDB4 8FA40038 */  lw         $a0, 0x38($sp)
/* 875B8 800CCDB8 0C0334CB */  jal        func_800CD32C
/* 875BC 800CCDBC 27A50028 */   addiu     $a1, $sp, 0x28
/* 875C0 800CCDC0 AFA20034 */  sw         $v0, 0x34($sp)
/* 875C4 800CCDC4 8FB80034 */  lw         $t8, 0x34($sp)
/* 875C8 800CCDC8 17000005 */  bnez       $t8, .L800CCDE0
/* 875CC 800CCDCC 00000000 */   nop
/* 875D0 800CCDD0 97B90028 */  lhu        $t9, 0x28($sp)
/* 875D4 800CCDD4 34018000 */  ori        $at, $zero, 0x8000
/* 875D8 800CCDD8 13210003 */  beq        $t9, $at, .L800CCDE8
/* 875DC 800CCDDC 00000000 */   nop
.L800CCDE0:
/* 875E0 800CCDE0 1000005B */  b          .L800CCF50
/* 875E4 800CCDE4 24020008 */   addiu     $v0, $zero, 0x8
.L800CCDE8:
/* 875E8 800CCDE8 93A8002A */  lbu        $t0, 0x2A($sp)
/* 875EC 800CCDEC 31090080 */  andi       $t1, $t0, 0x80
/* 875F0 800CCDF0 11200008 */  beqz       $t1, .L800CCE14
/* 875F4 800CCDF4 00000000 */   nop
.L800CCDF8:
/* 875F8 800CCDF8 8FA40038 */  lw         $a0, 0x38($sp)
/* 875FC 800CCDFC 0C0334CB */  jal        func_800CD32C
/* 87600 800CCE00 27A50028 */   addiu     $a1, $sp, 0x28
/* 87604 800CCE04 93AA002A */  lbu        $t2, 0x2A($sp)
/* 87608 800CCE08 314B0080 */  andi       $t3, $t2, 0x80
/* 8760C 800CCE0C 1560FFFA */  bnez       $t3, .L800CCDF8
/* 87610 800CCE10 00000000 */   nop
.L800CCE14:
/* 87614 800CCE14 0C0333D8 */  jal        func_800CCF60
/* 87618 800CCE18 93A4003F */   lbu       $a0, 0x3F($sp)
/* 8761C 800CCE1C 3C05801E */  lui        $a1, %hi(D_801DACB0)
/* 87620 800CCE20 24A5ACB0 */  addiu      $a1, $a1, %lo(D_801DACB0)
/* 87624 800CCE24 0C032E70 */  jal        func_800CB9C0
/* 87628 800CCE28 24040001 */   addiu     $a0, $zero, 0x1
/* 8762C 800CCE2C AFA20034 */  sw         $v0, 0x34($sp)
/* 87630 800CCE30 8FA40038 */  lw         $a0, 0x38($sp)
/* 87634 800CCE34 00002825 */  or         $a1, $zero, $zero
/* 87638 800CCE38 0C031718 */  jal        func_800C5C60
/* 8763C 800CCE3C 24060001 */   addiu     $a2, $zero, 0x1
/* 87640 800CCE40 AFA00030 */  sw         $zero, 0x30($sp)
.L800CCE44:
/* 87644 800CCE44 8FAD0030 */  lw         $t5, 0x30($sp)
/* 87648 800CCE48 8FAF0030 */  lw         $t7, 0x30($sp)
/* 8764C 800CCE4C 3C01801E */  lui        $at, %hi(D_801DACB0)
/* 87650 800CCE50 000D7080 */  sll        $t6, $t5, 2
/* 87654 800CCE54 002E0821 */  addu       $at, $at, $t6
/* 87658 800CCE58 240C00FF */  addiu      $t4, $zero, 0xFF
/* 8765C 800CCE5C AC2CACB0 */  sw         $t4, %lo(D_801DACB0)($at)
/* 87660 800CCE60 25F80001 */  addiu      $t8, $t7, 0x1
/* 87664 800CCE64 2B010010 */  slti       $at, $t8, 0x10
/* 87668 800CCE68 1420FFF6 */  bnez       $at, .L800CCE44
/* 8766C 800CCE6C AFB80030 */   sw        $t8, 0x30($sp)
/* 87670 800CCE70 3C01801E */  lui        $at, %hi(D_801DACEC)
/* 87674 800CCE74 3C05801E */  lui        $a1, %hi(D_801DACB0)
/* 87678 800CCE78 AC20ACEC */  sw         $zero, %lo(D_801DACEC)($at)
/* 8767C 800CCE7C 24A5ACB0 */  addiu      $a1, $a1, %lo(D_801DACB0)
/* 87680 800CCE80 0C032E70 */  jal        func_800CB9C0
/* 87684 800CCE84 00002025 */   or        $a0, $zero, $zero
/* 87688 800CCE88 24190004 */  addiu      $t9, $zero, 0x4
/* 8768C 800CCE8C 3C01801E */  lui        $at, %hi(D_801DABA0)
/* 87690 800CCE90 AFA20034 */  sw         $v0, 0x34($sp)
/* 87694 800CCE94 A039ABA0 */  sb         $t9, %lo(D_801DABA0)($at)
/* 87698 800CCE98 8FA40038 */  lw         $a0, 0x38($sp)
/* 8769C 800CCE9C 00002825 */  or         $a1, $zero, $zero
/* 876A0 800CCEA0 0C031718 */  jal        func_800C5C60
/* 876A4 800CCEA4 24060001 */   addiu     $a2, $zero, 0x1
/* 876A8 800CCEA8 AFA00030 */  sw         $zero, 0x30($sp)
.L800CCEAC:
/* 876AC 800CCEAC 8FAA0030 */  lw         $t2, 0x30($sp)
/* 876B0 800CCEB0 8FA8002C */  lw         $t0, 0x2C($sp)
/* 876B4 800CCEB4 254B0001 */  addiu      $t3, $t2, 0x1
/* 876B8 800CCEB8 29610004 */  slti       $at, $t3, 0x4
/* 876BC 800CCEBC 25090001 */  addiu      $t1, $t0, 0x1
/* 876C0 800CCEC0 AFAB0030 */  sw         $t3, 0x30($sp)
/* 876C4 800CCEC4 1420FFF9 */  bnez       $at, .L800CCEAC
/* 876C8 800CCEC8 AFA9002C */   sw        $t1, 0x2C($sp)
/* 876CC 800CCECC 8FAC002C */  lw         $t4, 0x2C($sp)
/* 876D0 800CCED0 27AD001C */  addiu      $t5, $sp, 0x1C
/* 876D4 800CCED4 89810000 */  lwl        $at, 0x0($t4)
/* 876D8 800CCED8 99810003 */  lwr        $at, 0x3($t4)
/* 876DC 800CCEDC ADA10000 */  sw         $at, 0x0($t5)
/* 876E0 800CCEE0 898F0004 */  lwl        $t7, 0x4($t4)
/* 876E4 800CCEE4 998F0007 */  lwr        $t7, 0x7($t4)
/* 876E8 800CCEE8 ADAF0004 */  sw         $t7, 0x4($t5)
/* 876EC 800CCEEC 89810008 */  lwl        $at, 0x8($t4)
/* 876F0 800CCEF0 9981000B */  lwr        $at, 0xB($t4)
/* 876F4 800CCEF4 ADA10008 */  sw         $at, 0x8($t5)
/* 876F8 800CCEF8 93B8001D */  lbu        $t8, 0x1D($sp)
/* 876FC 800CCEFC 331900C0 */  andi       $t9, $t8, 0xC0
/* 87700 800CCF00 00194103 */  sra        $t0, $t9, 4
/* 87704 800CCF04 1500000F */  bnez       $t0, .L800CCF44
/* 87708 800CCF08 AFA80034 */   sw        $t0, 0x34($sp)
/* 8770C 800CCF0C AFA00030 */  sw         $zero, 0x30($sp)
.L800CCF10:
/* 87710 800CCF10 8FA90030 */  lw         $t1, 0x30($sp)
/* 87714 800CCF14 8FAB0040 */  lw         $t3, 0x40($sp)
/* 87718 800CCF18 03A95021 */  addu       $t2, $sp, $t1
/* 8771C 800CCF1C 914A0020 */  lbu        $t2, 0x20($t2)
/* 87720 800CCF20 A16A0000 */  sb         $t2, 0x0($t3)
/* 87724 800CCF24 8FAC0030 */  lw         $t4, 0x30($sp)
/* 87728 800CCF28 8FAE0040 */  lw         $t6, 0x40($sp)
/* 8772C 800CCF2C 258F0001 */  addiu      $t7, $t4, 0x1
/* 87730 800CCF30 29E10008 */  slti       $at, $t7, 0x8
/* 87734 800CCF34 25CD0001 */  addiu      $t5, $t6, 0x1
/* 87738 800CCF38 AFAF0030 */  sw         $t7, 0x30($sp)
/* 8773C 800CCF3C 1420FFF4 */  bnez       $at, .L800CCF10
/* 87740 800CCF40 AFAD0040 */   sw        $t5, 0x40($sp)
.L800CCF44:
/* 87744 800CCF44 0C032E65 */  jal        func_800CB994
/* 87748 800CCF48 00000000 */   nop
/* 8774C 800CCF4C 8FA20034 */  lw         $v0, 0x34($sp)
.L800CCF50:
/* 87750 800CCF50 8FBF0014 */  lw         $ra, 0x14($sp)
/* 87754 800CCF54 27BD0038 */  addiu      $sp, $sp, 0x38
/* 87758 800CCF58 03E00008 */  jr         $ra
/* 8775C 800CCF5C 00000000 */   nop

glabel func_800CCF60
/* 87760 800CCF60 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 87764 800CCF64 3C0E801E */  lui        $t6, %hi(D_801DACB0)
/* 87768 800CCF68 25CEACB0 */  addiu      $t6, $t6, %lo(D_801DACB0)
/* 8776C 800CCF6C 308400FF */  andi       $a0, $a0, 0xFF
/* 87770 800CCF70 AFAE0014 */  sw         $t6, 0x14($sp)
/* 87774 800CCF74 AFA00004 */  sw         $zero, 0x4($sp)
.L800CCF78:
/* 87778 800CCF78 8FB80004 */  lw         $t8, 0x4($sp)
/* 8777C 800CCF7C 8FA80004 */  lw         $t0, 0x4($sp)
/* 87780 800CCF80 3C01801E */  lui        $at, %hi(D_801DACB0)
/* 87784 800CCF84 0018C880 */  sll        $t9, $t8, 2
/* 87788 800CCF88 00390821 */  addu       $at, $at, $t9
/* 8778C 800CCF8C 240F00FF */  addiu      $t7, $zero, 0xFF
/* 87790 800CCF90 AC2FACB0 */  sw         $t7, %lo(D_801DACB0)($at)
/* 87794 800CCF94 25090001 */  addiu      $t1, $t0, 0x1
/* 87798 800CCF98 29210010 */  slti       $at, $t1, 0x10
/* 8779C 800CCF9C 1420FFF6 */  bnez       $at, .L800CCF78
/* 877A0 800CCFA0 AFA90004 */   sw        $t1, 0x4($sp)
/* 877A4 800CCFA4 240A0001 */  addiu      $t2, $zero, 0x1
/* 877A8 800CCFA8 3C01801E */  lui        $at, %hi(D_801DACEC)
/* 877AC 800CCFAC 240B0002 */  addiu      $t3, $zero, 0x2
/* 877B0 800CCFB0 240C0008 */  addiu      $t4, $zero, 0x8
/* 877B4 800CCFB4 240D0004 */  addiu      $t5, $zero, 0x4
/* 877B8 800CCFB8 AC2AACEC */  sw         $t2, %lo(D_801DACEC)($at)
/* 877BC 800CCFBC A3AB0008 */  sb         $t3, 0x8($sp)
/* 877C0 800CCFC0 A3AC0009 */  sb         $t4, 0x9($sp)
/* 877C4 800CCFC4 A3AD000A */  sb         $t5, 0xA($sp)
/* 877C8 800CCFC8 A3A4000B */  sb         $a0, 0xB($sp)
/* 877CC 800CCFCC AFA00004 */  sw         $zero, 0x4($sp)
.L800CCFD0:
/* 877D0 800CCFD0 8FAE0004 */  lw         $t6, 0x4($sp)
/* 877D4 800CCFD4 03AEC021 */  addu       $t8, $sp, $t6
/* 877D8 800CCFD8 A300000C */  sb         $zero, 0xC($t8)
/* 877DC 800CCFDC 8FAF0004 */  lw         $t7, 0x4($sp)
/* 877E0 800CCFE0 25F90001 */  addiu      $t9, $t7, 0x1
/* 877E4 800CCFE4 2B210008 */  slti       $at, $t9, 0x8
/* 877E8 800CCFE8 1420FFF9 */  bnez       $at, .L800CCFD0
/* 877EC 800CCFEC AFB90004 */   sw        $t9, 0x4($sp)
/* 877F0 800CCFF0 AFA00004 */  sw         $zero, 0x4($sp)
.L800CCFF4:
/* 877F4 800CCFF4 8FA80014 */  lw         $t0, 0x14($sp)
/* 877F8 800CCFF8 A1000000 */  sb         $zero, 0x0($t0)
/* 877FC 800CCFFC 8FAB0004 */  lw         $t3, 0x4($sp)
/* 87800 800CD000 8FA90014 */  lw         $t1, 0x14($sp)
/* 87804 800CD004 256C0001 */  addiu      $t4, $t3, 0x1
/* 87808 800CD008 29810004 */  slti       $at, $t4, 0x4
/* 8780C 800CD00C 252A0001 */  addiu      $t2, $t1, 0x1
/* 87810 800CD010 AFAC0004 */  sw         $t4, 0x4($sp)
/* 87814 800CD014 1420FFF7 */  bnez       $at, .L800CCFF4
/* 87818 800CD018 AFAA0014 */   sw        $t2, 0x14($sp)
/* 8781C 800CD01C 27AE0008 */  addiu      $t6, $sp, 0x8
/* 87820 800CD020 8DC10000 */  lw         $at, 0x0($t6)
/* 87824 800CD024 8FAD0014 */  lw         $t5, 0x14($sp)
/* 87828 800CD028 240900FE */  addiu      $t1, $zero, 0xFE
/* 8782C 800CD02C A9A10000 */  swl        $at, 0x0($t5)
/* 87830 800CD030 B9A10003 */  swr        $at, 0x3($t5)
/* 87834 800CD034 8DCF0004 */  lw         $t7, 0x4($t6)
/* 87838 800CD038 A9AF0004 */  swl        $t7, 0x4($t5)
/* 8783C 800CD03C B9AF0007 */  swr        $t7, 0x7($t5)
/* 87840 800CD040 8DC10008 */  lw         $at, 0x8($t6)
/* 87844 800CD044 A9A10008 */  swl        $at, 0x8($t5)
/* 87848 800CD048 B9A1000B */  swr        $at, 0xB($t5)
/* 8784C 800CD04C 8FB90014 */  lw         $t9, 0x14($sp)
/* 87850 800CD050 2728000C */  addiu      $t0, $t9, 0xC
/* 87854 800CD054 AFA80014 */  sw         $t0, 0x14($sp)
/* 87858 800CD058 A1090000 */  sb         $t1, 0x0($t0)
/* 8785C 800CD05C 03E00008 */  jr         $ra
/* 87860 800CD060 27BD0018 */   addiu     $sp, $sp, 0x18
/* 87864 800CD064 00000000 */  nop
/* 87868 800CD068 00000000 */  nop
/* 8786C 800CD06C 00000000 */  nop

glabel func_800CD070
/* 87870 800CD070 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 87874 800CD074 AFA5003C */  sw         $a1, 0x3C($sp)
/* 87878 800CD078 93AF003F */  lbu        $t7, 0x3F($sp)
/* 8787C 800CD07C 3C0E801E */  lui        $t6, %hi(D_801DACB0)
/* 87880 800CD080 25CEACB0 */  addiu      $t6, $t6, %lo(D_801DACB0)
/* 87884 800CD084 29E10041 */  slti       $at, $t7, 0x41
/* 87888 800CD088 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8788C 800CD08C AFA40038 */  sw         $a0, 0x38($sp)
/* 87890 800CD090 AFA60040 */  sw         $a2, 0x40($sp)
/* 87894 800CD094 AFA00034 */  sw         $zero, 0x34($sp)
/* 87898 800CD098 14200003 */  bnez       $at, .L800CD0A8
/* 8789C 800CD09C AFAE002C */   sw        $t6, 0x2C($sp)
/* 878A0 800CD0A0 1000005B */  b          .L800CD210
/* 878A4 800CD0A4 2402FFFF */   addiu     $v0, $zero, -0x1
.L800CD0A8:
/* 878A8 800CD0A8 0C032E54 */  jal        func_800CB950
/* 878AC 800CD0AC 00000000 */   nop
/* 878B0 800CD0B0 8FA40038 */  lw         $a0, 0x38($sp)
/* 878B4 800CD0B4 0C0334CB */  jal        func_800CD32C
/* 878B8 800CD0B8 27A5001C */   addiu     $a1, $sp, 0x1C
/* 878BC 800CD0BC AFA20034 */  sw         $v0, 0x34($sp)
/* 878C0 800CD0C0 8FB80034 */  lw         $t8, 0x34($sp)
/* 878C4 800CD0C4 17000005 */  bnez       $t8, .L800CD0DC
/* 878C8 800CD0C8 00000000 */   nop
/* 878CC 800CD0CC 97B9001C */  lhu        $t9, 0x1C($sp)
/* 878D0 800CD0D0 34018000 */  ori        $at, $zero, 0x8000
/* 878D4 800CD0D4 13210003 */  beq        $t9, $at, .L800CD0E4
/* 878D8 800CD0D8 00000000 */   nop
.L800CD0DC:
/* 878DC 800CD0DC 1000004C */  b          .L800CD210
/* 878E0 800CD0E0 24020008 */   addiu     $v0, $zero, 0x8
.L800CD0E4:
/* 878E4 800CD0E4 93A8001E */  lbu        $t0, 0x1E($sp)
/* 878E8 800CD0E8 31090080 */  andi       $t1, $t0, 0x80
/* 878EC 800CD0EC 11200008 */  beqz       $t1, .L800CD110
/* 878F0 800CD0F0 00000000 */   nop
.L800CD0F4:
/* 878F4 800CD0F4 8FA40038 */  lw         $a0, 0x38($sp)
/* 878F8 800CD0F8 0C0334CB */  jal        func_800CD32C
/* 878FC 800CD0FC 27A5001C */   addiu     $a1, $sp, 0x1C
/* 87900 800CD100 93AA001E */  lbu        $t2, 0x1E($sp)
/* 87904 800CD104 314B0080 */  andi       $t3, $t2, 0x80
/* 87908 800CD108 1560FFFA */  bnez       $t3, .L800CD0F4
/* 8790C 800CD10C 00000000 */   nop
.L800CD110:
/* 87910 800CD110 93A4003F */  lbu        $a0, 0x3F($sp)
/* 87914 800CD114 0C033488 */  jal        func_800CD220
/* 87918 800CD118 8FA50040 */   lw        $a1, 0x40($sp)
/* 8791C 800CD11C 3C05801E */  lui        $a1, %hi(D_801DACB0)
/* 87920 800CD120 24A5ACB0 */  addiu      $a1, $a1, %lo(D_801DACB0)
/* 87924 800CD124 0C032E70 */  jal        func_800CB9C0
/* 87928 800CD128 24040001 */   addiu     $a0, $zero, 0x1
/* 8792C 800CD12C AFA20034 */  sw         $v0, 0x34($sp)
/* 87930 800CD130 8FA40038 */  lw         $a0, 0x38($sp)
/* 87934 800CD134 00002825 */  or         $a1, $zero, $zero
/* 87938 800CD138 0C031718 */  jal        func_800C5C60
/* 8793C 800CD13C 24060001 */   addiu     $a2, $zero, 0x1
/* 87940 800CD140 AFA00030 */  sw         $zero, 0x30($sp)
.L800CD144:
/* 87944 800CD144 8FAD0030 */  lw         $t5, 0x30($sp)
/* 87948 800CD148 8FAF0030 */  lw         $t7, 0x30($sp)
/* 8794C 800CD14C 3C01801E */  lui        $at, %hi(D_801DACB0)
/* 87950 800CD150 000D7080 */  sll        $t6, $t5, 2
/* 87954 800CD154 002E0821 */  addu       $at, $at, $t6
/* 87958 800CD158 240C00FF */  addiu      $t4, $zero, 0xFF
/* 8795C 800CD15C AC2CACB0 */  sw         $t4, %lo(D_801DACB0)($at)
/* 87960 800CD160 25F80001 */  addiu      $t8, $t7, 0x1
/* 87964 800CD164 2B010010 */  slti       $at, $t8, 0x10
/* 87968 800CD168 1420FFF6 */  bnez       $at, .L800CD144
/* 8796C 800CD16C AFB80030 */   sw        $t8, 0x30($sp)
/* 87970 800CD170 3C01801E */  lui        $at, %hi(D_801DACEC)
/* 87974 800CD174 3C05801E */  lui        $a1, %hi(D_801DACB0)
/* 87978 800CD178 AC20ACEC */  sw         $zero, %lo(D_801DACEC)($at)
/* 8797C 800CD17C 24A5ACB0 */  addiu      $a1, $a1, %lo(D_801DACB0)
/* 87980 800CD180 0C032E70 */  jal        func_800CB9C0
/* 87984 800CD184 00002025 */   or        $a0, $zero, $zero
/* 87988 800CD188 24190005 */  addiu      $t9, $zero, 0x5
/* 8798C 800CD18C 3C01801E */  lui        $at, %hi(D_801DABA0)
/* 87990 800CD190 AFA20034 */  sw         $v0, 0x34($sp)
/* 87994 800CD194 A039ABA0 */  sb         $t9, %lo(D_801DABA0)($at)
/* 87998 800CD198 8FA40038 */  lw         $a0, 0x38($sp)
/* 8799C 800CD19C 00002825 */  or         $a1, $zero, $zero
/* 879A0 800CD1A0 0C031718 */  jal        func_800C5C60
/* 879A4 800CD1A4 24060001 */   addiu     $a2, $zero, 0x1
/* 879A8 800CD1A8 AFA00030 */  sw         $zero, 0x30($sp)
.L800CD1AC:
/* 879AC 800CD1AC 8FAA0030 */  lw         $t2, 0x30($sp)
/* 879B0 800CD1B0 8FA8002C */  lw         $t0, 0x2C($sp)
/* 879B4 800CD1B4 254B0001 */  addiu      $t3, $t2, 0x1
/* 879B8 800CD1B8 29610004 */  slti       $at, $t3, 0x4
/* 879BC 800CD1BC 25090001 */  addiu      $t1, $t0, 0x1
/* 879C0 800CD1C0 AFAB0030 */  sw         $t3, 0x30($sp)
/* 879C4 800CD1C4 1420FFF9 */  bnez       $at, .L800CD1AC
/* 879C8 800CD1C8 AFA9002C */   sw        $t1, 0x2C($sp)
/* 879CC 800CD1CC 8FAC002C */  lw         $t4, 0x2C($sp)
/* 879D0 800CD1D0 27AD0020 */  addiu      $t5, $sp, 0x20
/* 879D4 800CD1D4 89810000 */  lwl        $at, 0x0($t4)
/* 879D8 800CD1D8 99810003 */  lwr        $at, 0x3($t4)
/* 879DC 800CD1DC ADA10000 */  sw         $at, 0x0($t5)
/* 879E0 800CD1E0 898F0004 */  lwl        $t7, 0x4($t4)
/* 879E4 800CD1E4 998F0007 */  lwr        $t7, 0x7($t4)
/* 879E8 800CD1E8 ADAF0004 */  sw         $t7, 0x4($t5)
/* 879EC 800CD1EC 89810008 */  lwl        $at, 0x8($t4)
/* 879F0 800CD1F0 9981000B */  lwr        $at, 0xB($t4)
/* 879F4 800CD1F4 ADA10008 */  sw         $at, 0x8($t5)
/* 879F8 800CD1F8 93B80021 */  lbu        $t8, 0x21($sp)
/* 879FC 800CD1FC 331900C0 */  andi       $t9, $t8, 0xC0
/* 87A00 800CD200 00194103 */  sra        $t0, $t9, 4
/* 87A04 800CD204 0C032E65 */  jal        func_800CB994
/* 87A08 800CD208 AFA80034 */   sw        $t0, 0x34($sp)
/* 87A0C 800CD20C 8FA20034 */  lw         $v0, 0x34($sp)
.L800CD210:
/* 87A10 800CD210 8FBF0014 */  lw         $ra, 0x14($sp)
/* 87A14 800CD214 27BD0038 */  addiu      $sp, $sp, 0x38
/* 87A18 800CD218 03E00008 */  jr         $ra
/* 87A1C 800CD21C 00000000 */   nop

glabel func_800CD220
/* 87A20 800CD220 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 87A24 800CD224 3C0E801E */  lui        $t6, %hi(D_801DACB0)
/* 87A28 800CD228 25CEACB0 */  addiu      $t6, $t6, %lo(D_801DACB0)
/* 87A2C 800CD22C 308400FF */  andi       $a0, $a0, 0xFF
/* 87A30 800CD230 AFAE0014 */  sw         $t6, 0x14($sp)
/* 87A34 800CD234 AFA00004 */  sw         $zero, 0x4($sp)
.L800CD238:
/* 87A38 800CD238 8FB80004 */  lw         $t8, 0x4($sp)
/* 87A3C 800CD23C 8FA80004 */  lw         $t0, 0x4($sp)
/* 87A40 800CD240 3C01801E */  lui        $at, %hi(D_801DACB0)
/* 87A44 800CD244 0018C880 */  sll        $t9, $t8, 2
/* 87A48 800CD248 00390821 */  addu       $at, $at, $t9
/* 87A4C 800CD24C 240F00FF */  addiu      $t7, $zero, 0xFF
/* 87A50 800CD250 AC2FACB0 */  sw         $t7, %lo(D_801DACB0)($at)
/* 87A54 800CD254 25090001 */  addiu      $t1, $t0, 0x1
/* 87A58 800CD258 29210010 */  slti       $at, $t1, 0x10
/* 87A5C 800CD25C 1420FFF6 */  bnez       $at, .L800CD238
/* 87A60 800CD260 AFA90004 */   sw        $t1, 0x4($sp)
/* 87A64 800CD264 240A0001 */  addiu      $t2, $zero, 0x1
/* 87A68 800CD268 3C01801E */  lui        $at, %hi(D_801DACEC)
/* 87A6C 800CD26C 240B000A */  addiu      $t3, $zero, 0xA
/* 87A70 800CD270 240C0001 */  addiu      $t4, $zero, 0x1
/* 87A74 800CD274 240D0005 */  addiu      $t5, $zero, 0x5
/* 87A78 800CD278 AC2AACEC */  sw         $t2, %lo(D_801DACEC)($at)
/* 87A7C 800CD27C A3AB0008 */  sb         $t3, 0x8($sp)
/* 87A80 800CD280 A3AC0009 */  sb         $t4, 0x9($sp)
/* 87A84 800CD284 A3AD000A */  sb         $t5, 0xA($sp)
/* 87A88 800CD288 A3A4000B */  sb         $a0, 0xB($sp)
/* 87A8C 800CD28C AFA00004 */  sw         $zero, 0x4($sp)
.L800CD290:
/* 87A90 800CD290 8FB80004 */  lw         $t8, 0x4($sp)
/* 87A94 800CD294 90AE0000 */  lbu        $t6, 0x0($a1)
/* 87A98 800CD298 24A50001 */  addiu      $a1, $a1, 0x1
/* 87A9C 800CD29C 03B87821 */  addu       $t7, $sp, $t8
/* 87AA0 800CD2A0 A1EE000C */  sb         $t6, 0xC($t7)
/* 87AA4 800CD2A4 8FB90004 */  lw         $t9, 0x4($sp)
/* 87AA8 800CD2A8 27280001 */  addiu      $t0, $t9, 0x1
/* 87AAC 800CD2AC 29010008 */  slti       $at, $t0, 0x8
/* 87AB0 800CD2B0 1420FFF7 */  bnez       $at, .L800CD290
/* 87AB4 800CD2B4 AFA80004 */   sw        $t0, 0x4($sp)
/* 87AB8 800CD2B8 AFA00004 */  sw         $zero, 0x4($sp)
.L800CD2BC:
/* 87ABC 800CD2BC 8FA90014 */  lw         $t1, 0x14($sp)
/* 87AC0 800CD2C0 A1200000 */  sb         $zero, 0x0($t1)
/* 87AC4 800CD2C4 8FAC0004 */  lw         $t4, 0x4($sp)
/* 87AC8 800CD2C8 8FAA0014 */  lw         $t2, 0x14($sp)
/* 87ACC 800CD2CC 258D0001 */  addiu      $t5, $t4, 0x1
/* 87AD0 800CD2D0 29A10004 */  slti       $at, $t5, 0x4
/* 87AD4 800CD2D4 254B0001 */  addiu      $t3, $t2, 0x1
/* 87AD8 800CD2D8 AFAD0004 */  sw         $t5, 0x4($sp)
/* 87ADC 800CD2DC 1420FFF7 */  bnez       $at, .L800CD2BC
/* 87AE0 800CD2E0 AFAB0014 */   sw        $t3, 0x14($sp)
/* 87AE4 800CD2E4 27B80008 */  addiu      $t8, $sp, 0x8
/* 87AE8 800CD2E8 8F010000 */  lw         $at, 0x0($t8)
/* 87AEC 800CD2EC 8FAE0014 */  lw         $t6, 0x14($sp)
/* 87AF0 800CD2F0 240A00FE */  addiu      $t2, $zero, 0xFE
/* 87AF4 800CD2F4 A9C10000 */  swl        $at, 0x0($t6)
/* 87AF8 800CD2F8 B9C10003 */  swr        $at, 0x3($t6)
/* 87AFC 800CD2FC 8F190004 */  lw         $t9, 0x4($t8)
/* 87B00 800CD300 A9D90004 */  swl        $t9, 0x4($t6)
/* 87B04 800CD304 B9D90007 */  swr        $t9, 0x7($t6)
/* 87B08 800CD308 8F010008 */  lw         $at, 0x8($t8)
/* 87B0C 800CD30C A9C10008 */  swl        $at, 0x8($t6)
/* 87B10 800CD310 B9C1000B */  swr        $at, 0xB($t6)
/* 87B14 800CD314 8FA80014 */  lw         $t0, 0x14($sp)
/* 87B18 800CD318 2509000C */  addiu      $t1, $t0, 0xC
/* 87B1C 800CD31C AFA90014 */  sw         $t1, 0x14($sp)
/* 87B20 800CD320 A12A0000 */  sb         $t2, 0x0($t1)
/* 87B24 800CD324 03E00008 */  jr         $ra
/* 87B28 800CD328 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800CD32C
/* 87B2C 800CD32C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 87B30 800CD330 3C0E801E */  lui        $t6, %hi(D_801DACB0)
/* 87B34 800CD334 25CEACB0 */  addiu      $t6, $t6, %lo(D_801DACB0)
/* 87B38 800CD338 AFBF0014 */  sw         $ra, 0x14($sp)
/* 87B3C 800CD33C AFA40030 */  sw         $a0, 0x30($sp)
/* 87B40 800CD340 AFA50034 */  sw         $a1, 0x34($sp)
/* 87B44 800CD344 AFA0002C */  sw         $zero, 0x2C($sp)
/* 87B48 800CD348 AFAE0024 */  sw         $t6, 0x24($sp)
/* 87B4C 800CD34C AFA00028 */  sw         $zero, 0x28($sp)
.L800CD350:
/* 87B50 800CD350 8FAF0028 */  lw         $t7, 0x28($sp)
/* 87B54 800CD354 8FB90028 */  lw         $t9, 0x28($sp)
/* 87B58 800CD358 3C01801E */  lui        $at, %hi(D_801DACB0)
/* 87B5C 800CD35C 000FC080 */  sll        $t8, $t7, 2
/* 87B60 800CD360 00380821 */  addu       $at, $at, $t8
/* 87B64 800CD364 AC20ACB0 */  sw         $zero, %lo(D_801DACB0)($at)
/* 87B68 800CD368 27280001 */  addiu      $t0, $t9, 0x1
/* 87B6C 800CD36C 29010010 */  slti       $at, $t0, 0x10
/* 87B70 800CD370 1420FFF7 */  bnez       $at, .L800CD350
/* 87B74 800CD374 AFA80028 */   sw        $t0, 0x28($sp)
/* 87B78 800CD378 3C0A801E */  lui        $t2, %hi(D_801DACB0)
/* 87B7C 800CD37C 24090001 */  addiu      $t1, $zero, 0x1
/* 87B80 800CD380 3C01801E */  lui        $at, %hi(D_801DACEC)
/* 87B84 800CD384 254AACB0 */  addiu      $t2, $t2, %lo(D_801DACB0)
/* 87B88 800CD388 AC29ACEC */  sw         $t1, %lo(D_801DACEC)($at)
/* 87B8C 800CD38C AFAA0024 */  sw         $t2, 0x24($sp)
/* 87B90 800CD390 AFA00028 */  sw         $zero, 0x28($sp)
.L800CD394:
/* 87B94 800CD394 8FAB0024 */  lw         $t3, 0x24($sp)
/* 87B98 800CD398 A1600000 */  sb         $zero, 0x0($t3)
/* 87B9C 800CD39C 8FAE0028 */  lw         $t6, 0x28($sp)
/* 87BA0 800CD3A0 8FAC0024 */  lw         $t4, 0x24($sp)
/* 87BA4 800CD3A4 25CF0001 */  addiu      $t7, $t6, 0x1
/* 87BA8 800CD3A8 29E10004 */  slti       $at, $t7, 0x4
/* 87BAC 800CD3AC 258D0001 */  addiu      $t5, $t4, 0x1
/* 87BB0 800CD3B0 AFAF0028 */  sw         $t7, 0x28($sp)
/* 87BB4 800CD3B4 1420FFF7 */  bnez       $at, .L800CD394
/* 87BB8 800CD3B8 AFAD0024 */   sw        $t5, 0x24($sp)
/* 87BBC 800CD3BC 241800FF */  addiu      $t8, $zero, 0xFF
/* 87BC0 800CD3C0 24190001 */  addiu      $t9, $zero, 0x1
/* 87BC4 800CD3C4 24080003 */  addiu      $t0, $zero, 0x3
/* 87BC8 800CD3C8 240900FF */  addiu      $t1, $zero, 0xFF
/* 87BCC 800CD3CC 240A00FF */  addiu      $t2, $zero, 0xFF
/* 87BD0 800CD3D0 240B00FF */  addiu      $t3, $zero, 0xFF
/* 87BD4 800CD3D4 240C00FF */  addiu      $t4, $zero, 0xFF
/* 87BD8 800CD3D8 A3B8001C */  sb         $t8, 0x1C($sp)
/* 87BDC 800CD3DC A3B9001D */  sb         $t9, 0x1D($sp)
/* 87BE0 800CD3E0 A3A8001E */  sb         $t0, 0x1E($sp)
/* 87BE4 800CD3E4 A3A0001F */  sb         $zero, 0x1F($sp)
/* 87BE8 800CD3E8 A3A90020 */  sb         $t1, 0x20($sp)
/* 87BEC 800CD3EC A3AA0021 */  sb         $t2, 0x21($sp)
/* 87BF0 800CD3F0 A3AB0022 */  sb         $t3, 0x22($sp)
/* 87BF4 800CD3F4 A3AC0023 */  sb         $t4, 0x23($sp)
/* 87BF8 800CD3F8 27AE001C */  addiu      $t6, $sp, 0x1C
/* 87BFC 800CD3FC 8DC10000 */  lw         $at, 0x0($t6)
/* 87C00 800CD400 8FAD0024 */  lw         $t5, 0x24($sp)
/* 87C04 800CD404 240A00FE */  addiu      $t2, $zero, 0xFE
/* 87C08 800CD408 3C05801E */  lui        $a1, %hi(D_801DACB0)
/* 87C0C 800CD40C A9A10000 */  swl        $at, 0x0($t5)
/* 87C10 800CD410 B9A10003 */  swr        $at, 0x3($t5)
/* 87C14 800CD414 8DD90004 */  lw         $t9, 0x4($t6)
/* 87C18 800CD418 24A5ACB0 */  addiu      $a1, $a1, %lo(D_801DACB0)
/* 87C1C 800CD41C 24040001 */  addiu      $a0, $zero, 0x1
/* 87C20 800CD420 A9B90004 */  swl        $t9, 0x4($t5)
/* 87C24 800CD424 B9B90007 */  swr        $t9, 0x7($t5)
/* 87C28 800CD428 8FA80024 */  lw         $t0, 0x24($sp)
/* 87C2C 800CD42C 25090008 */  addiu      $t1, $t0, 0x8
/* 87C30 800CD430 AFA90024 */  sw         $t1, 0x24($sp)
/* 87C34 800CD434 0C032E70 */  jal        func_800CB9C0
/* 87C38 800CD438 A12A0000 */   sb        $t2, 0x0($t1)
/* 87C3C 800CD43C AFA2002C */  sw         $v0, 0x2C($sp)
/* 87C40 800CD440 8FA40030 */  lw         $a0, 0x30($sp)
/* 87C44 800CD444 00002825 */  or         $a1, $zero, $zero
/* 87C48 800CD448 0C031718 */  jal        func_800C5C60
/* 87C4C 800CD44C 24060001 */   addiu     $a2, $zero, 0x1
/* 87C50 800CD450 240B0005 */  addiu      $t3, $zero, 0x5
/* 87C54 800CD454 3C01801E */  lui        $at, %hi(D_801DABA0)
/* 87C58 800CD458 3C05801E */  lui        $a1, %hi(D_801DACB0)
/* 87C5C 800CD45C A02BABA0 */  sb         $t3, %lo(D_801DABA0)($at)
/* 87C60 800CD460 24A5ACB0 */  addiu      $a1, $a1, %lo(D_801DACB0)
/* 87C64 800CD464 0C032E70 */  jal        func_800CB9C0
/* 87C68 800CD468 00002025 */   or        $a0, $zero, $zero
/* 87C6C 800CD46C AFA2002C */  sw         $v0, 0x2C($sp)
/* 87C70 800CD470 8FA40030 */  lw         $a0, 0x30($sp)
/* 87C74 800CD474 00002825 */  or         $a1, $zero, $zero
/* 87C78 800CD478 0C031718 */  jal        func_800C5C60
/* 87C7C 800CD47C 24060001 */   addiu     $a2, $zero, 0x1
/* 87C80 800CD480 8FAC002C */  lw         $t4, 0x2C($sp)
/* 87C84 800CD484 11800003 */  beqz       $t4, .L800CD494
/* 87C88 800CD488 00000000 */   nop
/* 87C8C 800CD48C 1000002C */  b          .L800CD540
/* 87C90 800CD490 01801025 */   or        $v0, $t4, $zero
.L800CD494:
/* 87C94 800CD494 3C18801E */  lui        $t8, %hi(D_801DACB0)
/* 87C98 800CD498 2718ACB0 */  addiu      $t8, $t8, %lo(D_801DACB0)
/* 87C9C 800CD49C AFB80024 */  sw         $t8, 0x24($sp)
/* 87CA0 800CD4A0 AFA00028 */  sw         $zero, 0x28($sp)
.L800CD4A4:
/* 87CA4 800CD4A4 8FAF0024 */  lw         $t7, 0x24($sp)
/* 87CA8 800CD4A8 A1E00000 */  sb         $zero, 0x0($t7)
/* 87CAC 800CD4AC 8FB90028 */  lw         $t9, 0x28($sp)
/* 87CB0 800CD4B0 8FAD0024 */  lw         $t5, 0x24($sp)
/* 87CB4 800CD4B4 27280001 */  addiu      $t0, $t9, 0x1
/* 87CB8 800CD4B8 29010004 */  slti       $at, $t0, 0x4
/* 87CBC 800CD4BC 25AE0001 */  addiu      $t6, $t5, 0x1
/* 87CC0 800CD4C0 AFA80028 */  sw         $t0, 0x28($sp)
/* 87CC4 800CD4C4 1420FFF7 */  bnez       $at, .L800CD4A4
/* 87CC8 800CD4C8 AFAE0024 */   sw        $t6, 0x24($sp)
/* 87CCC 800CD4CC 8FA90024 */  lw         $t1, 0x24($sp)
/* 87CD0 800CD4D0 27AA001C */  addiu      $t2, $sp, 0x1C
/* 87CD4 800CD4D4 89210000 */  lwl        $at, 0x0($t1)
/* 87CD8 800CD4D8 99210003 */  lwr        $at, 0x3($t1)
/* 87CDC 800CD4DC AD410000 */  sw         $at, 0x0($t2)
/* 87CE0 800CD4E0 892C0004 */  lwl        $t4, 0x4($t1)
/* 87CE4 800CD4E4 992C0007 */  lwr        $t4, 0x7($t1)
/* 87CE8 800CD4E8 AD4C0004 */  sw         $t4, 0x4($t2)
/* 87CEC 800CD4EC 93B8001E */  lbu        $t8, 0x1E($sp)
/* 87CF0 800CD4F0 8FAE0034 */  lw         $t6, 0x34($sp)
/* 87CF4 800CD4F4 330F00C0 */  andi       $t7, $t8, 0xC0
/* 87CF8 800CD4F8 000F6903 */  sra        $t5, $t7, 4
/* 87CFC 800CD4FC A1CD0003 */  sb         $t5, 0x3($t6)
/* 87D00 800CD500 93B90021 */  lbu        $t9, 0x21($sp)
/* 87D04 800CD504 93AB0020 */  lbu        $t3, 0x20($sp)
/* 87D08 800CD508 8FA90034 */  lw         $t1, 0x34($sp)
/* 87D0C 800CD50C 00194200 */  sll        $t0, $t9, 8
/* 87D10 800CD510 010B5025 */  or         $t2, $t0, $t3
/* 87D14 800CD514 A52A0000 */  sh         $t2, 0x0($t1)
/* 87D18 800CD518 8FB80034 */  lw         $t8, 0x34($sp)
/* 87D1C 800CD51C 93AC0022 */  lbu        $t4, 0x22($sp)
/* 87D20 800CD520 A30C0002 */  sb         $t4, 0x2($t8)
/* 87D24 800CD524 8FAF0034 */  lw         $t7, 0x34($sp)
/* 87D28 800CD528 91ED0003 */  lbu        $t5, 0x3($t7)
/* 87D2C 800CD52C 11A00003 */  beqz       $t5, .L800CD53C
/* 87D30 800CD530 00000000 */   nop
/* 87D34 800CD534 10000002 */  b          .L800CD540
/* 87D38 800CD538 01A01025 */   or        $v0, $t5, $zero
.L800CD53C:
/* 87D3C 800CD53C 00001025 */  or         $v0, $zero, $zero
.L800CD540:
/* 87D40 800CD540 8FBF0014 */  lw         $ra, 0x14($sp)
/* 87D44 800CD544 27BD0030 */  addiu      $sp, $sp, 0x30
/* 87D48 800CD548 03E00008 */  jr         $ra
/* 87D4C 800CD54C 00000000 */   nop

glabel func_800CD550
/* 87D50 800CD550 00001825 */  or         $v1, $zero, $zero
/* 87D54 800CD554 00801025 */  or         $v0, $a0, $zero
/* 87D58 800CD558 18A0001A */  blez       $a1, .L800CD5C4
/* 87D5C 800CD55C 00003025 */   or        $a2, $zero, $zero
/* 87D60 800CD560 30A70003 */  andi       $a3, $a1, 0x3
/* 87D64 800CD564 10E0000A */  beqz       $a3, .L800CD590
/* 87D68 800CD568 00E02025 */   or        $a0, $a3, $zero
.L800CD56C:
/* 87D6C 800CD56C 904E0000 */  lbu        $t6, 0x0($v0)
/* 87D70 800CD570 24C60001 */  addiu      $a2, $a2, 0x1
/* 87D74 800CD574 006E1821 */  addu       $v1, $v1, $t6
/* 87D78 800CD578 306FFFFF */  andi       $t7, $v1, 0xFFFF
/* 87D7C 800CD57C 01E01825 */  or         $v1, $t7, $zero
/* 87D80 800CD580 1486FFFA */  bne        $a0, $a2, .L800CD56C
/* 87D84 800CD584 24420001 */   addiu     $v0, $v0, 0x1
/* 87D88 800CD588 10C5000E */  beq        $a2, $a1, .L800CD5C4
/* 87D8C 800CD58C 00000000 */   nop
.L800CD590:
/* 87D90 800CD590 90580000 */  lbu        $t8, 0x0($v0)
/* 87D94 800CD594 90480001 */  lbu        $t0, 0x1($v0)
/* 87D98 800CD598 904A0002 */  lbu        $t2, 0x2($v0)
/* 87D9C 800CD59C 0078C821 */  addu       $t9, $v1, $t8
/* 87DA0 800CD5A0 904C0003 */  lbu        $t4, 0x3($v0)
/* 87DA4 800CD5A4 03284821 */  addu       $t1, $t9, $t0
/* 87DA8 800CD5A8 012A5821 */  addu       $t3, $t1, $t2
/* 87DAC 800CD5AC 016C1821 */  addu       $v1, $t3, $t4
/* 87DB0 800CD5B0 306DFFFF */  andi       $t5, $v1, 0xFFFF
/* 87DB4 800CD5B4 24C60004 */  addiu      $a2, $a2, 0x4
/* 87DB8 800CD5B8 01A01825 */  or         $v1, $t5, $zero
/* 87DBC 800CD5BC 14C5FFF4 */  bne        $a2, $a1, .L800CD590
/* 87DC0 800CD5C0 24420004 */   addiu     $v0, $v0, 0x4
.L800CD5C4:
/* 87DC4 800CD5C4 03E00008 */  jr         $ra
/* 87DC8 800CD5C8 3062FFFF */   andi      $v0, $v1, 0xFFFF

glabel func_800CD5CC
/* 87DCC 800CD5CC A4C00000 */  sh         $zero, 0x0($a2)
/* 87DD0 800CD5D0 A4A00000 */  sh         $zero, 0x0($a1)
/* 87DD4 800CD5D4 94820000 */  lhu        $v0, 0x0($a0)
/* 87DD8 800CD5D8 24870004 */  addiu      $a3, $a0, 0x4
/* 87DDC 800CD5DC 0002C021 */  addu       $t8, $zero, $v0
/* 87DE0 800CD5E0 A4B80000 */  sh         $t8, 0x0($a1)
/* 87DE4 800CD5E4 94D90000 */  lhu        $t9, 0x0($a2)
/* 87DE8 800CD5E8 00406827 */  not        $t5, $v0
/* 87DEC 800CD5EC 032D7021 */  addu       $t6, $t9, $t5
/* 87DF0 800CD5F0 A4CE0000 */  sh         $t6, 0x0($a2)
/* 87DF4 800CD5F4 94AF0000 */  lhu        $t7, 0x0($a1)
/* 87DF8 800CD5F8 94820002 */  lhu        $v0, 0x2($a0)
/* 87DFC 800CD5FC 2404001C */  addiu      $a0, $zero, 0x1C
/* 87E00 800CD600 01E2C021 */  addu       $t8, $t7, $v0
/* 87E04 800CD604 A4B80000 */  sh         $t8, 0x0($a1)
/* 87E08 800CD608 94D90000 */  lhu        $t9, 0x0($a2)
/* 87E0C 800CD60C 00406827 */  not        $t5, $v0
/* 87E10 800CD610 032D7021 */  addu       $t6, $t9, $t5
/* 87E14 800CD614 A4CE0000 */  sh         $t6, 0x0($a2)
/* 87E18 800CD618 24E90002 */  addiu      $t1, $a3, 0x2
/* 87E1C 800CD61C 24EA0004 */  addiu      $t2, $a3, 0x4
/* 87E20 800CD620 24EB0006 */  addiu      $t3, $a3, 0x6
/* 87E24 800CD624 24030004 */  addiu      $v1, $zero, 0x4
.L800CD628:
/* 87E28 800CD628 94E20000 */  lhu        $v0, 0x0($a3)
/* 87E2C 800CD62C 94AF0000 */  lhu        $t7, 0x0($a1)
/* 87E30 800CD630 00406827 */  not        $t5, $v0
/* 87E34 800CD634 01E2C021 */  addu       $t8, $t7, $v0
/* 87E38 800CD638 A4B80000 */  sh         $t8, 0x0($a1)
/* 87E3C 800CD63C 94D90000 */  lhu        $t9, 0x0($a2)
/* 87E40 800CD640 24630008 */  addiu      $v1, $v1, 0x8
/* 87E44 800CD644 032D7021 */  addu       $t6, $t9, $t5
/* 87E48 800CD648 A4CE0000 */  sh         $t6, 0x0($a2)
/* 87E4C 800CD64C 94AF0000 */  lhu        $t7, 0x0($a1)
/* 87E50 800CD650 95220000 */  lhu        $v0, 0x0($t1)
/* 87E54 800CD654 24E70008 */  addiu      $a3, $a3, 0x8
/* 87E58 800CD658 01E2C021 */  addu       $t8, $t7, $v0
/* 87E5C 800CD65C A4B80000 */  sh         $t8, 0x0($a1)
/* 87E60 800CD660 94D90000 */  lhu        $t9, 0x0($a2)
/* 87E64 800CD664 00406827 */  not        $t5, $v0
/* 87E68 800CD668 032D7021 */  addu       $t6, $t9, $t5
/* 87E6C 800CD66C A4CE0000 */  sh         $t6, 0x0($a2)
/* 87E70 800CD670 94AF0000 */  lhu        $t7, 0x0($a1)
/* 87E74 800CD674 95420000 */  lhu        $v0, 0x0($t2)
/* 87E78 800CD678 25290008 */  addiu      $t1, $t1, 0x8
/* 87E7C 800CD67C 01E2C021 */  addu       $t8, $t7, $v0
/* 87E80 800CD680 A4B80000 */  sh         $t8, 0x0($a1)
/* 87E84 800CD684 94D90000 */  lhu        $t9, 0x0($a2)
/* 87E88 800CD688 00406827 */  not        $t5, $v0
/* 87E8C 800CD68C 032D7021 */  addu       $t6, $t9, $t5
/* 87E90 800CD690 A4CE0000 */  sh         $t6, 0x0($a2)
/* 87E94 800CD694 94AF0000 */  lhu        $t7, 0x0($a1)
/* 87E98 800CD698 95620000 */  lhu        $v0, 0x0($t3)
/* 87E9C 800CD69C 254A0008 */  addiu      $t2, $t2, 0x8
/* 87EA0 800CD6A0 01E2C021 */  addu       $t8, $t7, $v0
/* 87EA4 800CD6A4 A4B80000 */  sh         $t8, 0x0($a1)
/* 87EA8 800CD6A8 94D90000 */  lhu        $t9, 0x0($a2)
/* 87EAC 800CD6AC 00406827 */  not        $t5, $v0
/* 87EB0 800CD6B0 032D7021 */  addu       $t6, $t9, $t5
/* 87EB4 800CD6B4 A4CE0000 */  sh         $t6, 0x0($a2)
/* 87EB8 800CD6B8 1464FFDB */  bne        $v1, $a0, .L800CD628
/* 87EBC 800CD6BC 256B0008 */   addiu     $t3, $t3, 0x8
/* 87EC0 800CD6C0 03E00008 */  jr         $ra
/* 87EC4 800CD6C4 00001025 */   or        $v0, $zero, $zero

glabel func_800CD6C8
/* 87EC8 800CD6C8 27BDFF60 */  addiu      $sp, $sp, -0xA0
/* 87ECC 800CD6CC AFBF003C */  sw         $ra, 0x3C($sp)
/* 87ED0 800CD6D0 AFB60038 */  sw         $s6, 0x38($sp)
/* 87ED4 800CD6D4 AFB50034 */  sw         $s5, 0x34($sp)
/* 87ED8 800CD6D8 AFB40030 */  sw         $s4, 0x30($sp)
/* 87EDC 800CD6DC AFB3002C */  sw         $s3, 0x2C($sp)
/* 87EE0 800CD6E0 AFB20028 */  sw         $s2, 0x28($sp)
/* 87EE4 800CD6E4 AFB10024 */  sw         $s1, 0x24($sp)
/* 87EE8 800CD6E8 AFB00020 */  sw         $s0, 0x20($sp)
/* 87EEC 800CD6EC 908E0065 */  lbu        $t6, 0x65($a0)
/* 87EF0 800CD6F0 00809025 */  or         $s2, $a0, $zero
/* 87EF4 800CD6F4 00C0A025 */  or         $s4, $a2, $zero
/* 87EF8 800CD6F8 11C00007 */  beqz       $t6, .L800CD718
/* 87EFC 800CD6FC 00A0B025 */   or        $s6, $a1, $zero
/* 87F00 800CD700 0C03384C */  jal        func_800CE130
/* 87F04 800CD704 A0800065 */   sb        $zero, 0x65($a0)
/* 87F08 800CD708 10400004 */  beqz       $v0, .L800CD71C
/* 87F0C 800CD70C 240FFFFF */   addiu     $t7, $zero, -0x1
/* 87F10 800CD710 100000B7 */  b          .L800CD9F0
/* 87F14 800CD714 8FBF003C */   lw        $ra, 0x3C($sp)
.L800CD718:
/* 87F18 800CD718 240FFFFF */  addiu      $t7, $zero, -0x1
.L800CD71C:
/* 87F1C 800CD71C 0C032CF0 */  jal        osGetCount
/* 87F20 800CD720 AE8F0000 */   sw        $t7, 0x0($s4)
/* 87F24 800CD724 AE820004 */  sw         $v0, 0x4($s4)
/* 87F28 800CD728 8ED9000C */  lw         $t9, 0xC($s6)
/* 87F2C 800CD72C 8ED80008 */  lw         $t8, 0x8($s6)
/* 87F30 800CD730 AE99000C */  sw         $t9, 0xC($s4)
/* 87F34 800CD734 AE980008 */  sw         $t8, 0x8($s4)
/* 87F38 800CD738 8EC90014 */  lw         $t1, 0x14($s6)
/* 87F3C 800CD73C 8EC80010 */  lw         $t0, 0x10($s6)
/* 87F40 800CD740 27B1007C */  addiu      $s1, $sp, 0x7C
/* 87F44 800CD744 00009825 */  or         $s3, $zero, $zero
/* 87F48 800CD748 0220A825 */  or         $s5, $s1, $zero
/* 87F4C 800CD74C 27B0009C */  addiu      $s0, $sp, 0x9C
/* 87F50 800CD750 AE890014 */  sw         $t1, 0x14($s4)
/* 87F54 800CD754 AE880010 */  sw         $t0, 0x10($s4)
.L800CD758:
/* 87F58 800CD758 A2530065 */  sb         $s3, 0x65($s2)
/* 87F5C 800CD75C 0C03384C */  jal        func_800CE130
/* 87F60 800CD760 02402025 */   or        $a0, $s2, $zero
/* 87F64 800CD764 10400003 */  beqz       $v0, .L800CD774
/* 87F68 800CD768 00003025 */   or        $a2, $zero, $zero
/* 87F6C 800CD76C 100000A0 */  b          .L800CD9F0
/* 87F70 800CD770 8FBF003C */   lw        $ra, 0x3C($sp)
.L800CD774:
/* 87F74 800CD774 8E440004 */  lw         $a0, 0x4($s2)
/* 87F78 800CD778 8E450008 */  lw         $a1, 0x8($s2)
/* 87F7C 800CD77C 0C033B04 */  jal        func_800CEC10
/* 87F80 800CD780 02A03825 */   or        $a3, $s5, $zero
/* 87F84 800CD784 10400003 */  beqz       $v0, .L800CD794
/* 87F88 800CD788 366B0080 */   ori       $t3, $s3, 0x80
/* 87F8C 800CD78C 10000098 */  b          .L800CD9F0
/* 87F90 800CD790 8FBF003C */   lw        $ra, 0x3C($sp)
.L800CD794:
/* 87F94 800CD794 A3AB007C */  sb         $t3, 0x7C($sp)
/* 87F98 800CD798 27A2007D */  addiu      $v0, $sp, 0x7D
.L800CD79C:
/* 87F9C 800CD79C 904C0000 */  lbu        $t4, 0x0($v0)
/* 87FA0 800CD7A0 24420001 */  addiu      $v0, $v0, 0x1
/* 87FA4 800CD7A4 0050082B */  sltu       $at, $v0, $s0
/* 87FA8 800CD7A8 01806827 */  not        $t5, $t4
/* 87FAC 800CD7AC 1420FFFB */  bnez       $at, .L800CD79C
/* 87FB0 800CD7B0 A04DFFFF */   sb        $t5, -0x1($v0)
/* 87FB4 800CD7B4 8E440004 */  lw         $a0, 0x4($s2)
/* 87FB8 800CD7B8 8E450008 */  lw         $a1, 0x8($s2)
/* 87FBC 800CD7BC AFA00010 */  sw         $zero, 0x10($sp)
/* 87FC0 800CD7C0 00003025 */  or         $a2, $zero, $zero
/* 87FC4 800CD7C4 0C033BE8 */  jal        func_800CEFA0
/* 87FC8 800CD7C8 02A03825 */   or        $a3, $s5, $zero
/* 87FCC 800CD7CC 10400003 */  beqz       $v0, .L800CD7DC
/* 87FD0 800CD7D0 00003025 */   or        $a2, $zero, $zero
/* 87FD4 800CD7D4 10000086 */  b          .L800CD9F0
/* 87FD8 800CD7D8 8FBF003C */   lw        $ra, 0x3C($sp)
.L800CD7DC:
/* 87FDC 800CD7DC 8E440004 */  lw         $a0, 0x4($s2)
/* 87FE0 800CD7E0 8E450008 */  lw         $a1, 0x8($s2)
/* 87FE4 800CD7E4 0C033B04 */  jal        func_800CEC10
/* 87FE8 800CD7E8 27A7005C */   addiu     $a3, $sp, 0x5C
/* 87FEC 800CD7EC 10400003 */  beqz       $v0, .L800CD7FC
/* 87FF0 800CD7F0 27A3005C */   addiu     $v1, $sp, 0x5C
/* 87FF4 800CD7F4 1000007E */  b          .L800CD9F0
/* 87FF8 800CD7F8 8FBF003C */   lw        $ra, 0x3C($sp)
.L800CD7FC:
/* 87FFC 800CD7FC 27A2007C */  addiu      $v0, $sp, 0x7C
.L800CD800:
/* 88000 800CD800 906E0000 */  lbu        $t6, 0x0($v1)
/* 88004 800CD804 904F0000 */  lbu        $t7, 0x0($v0)
/* 88008 800CD808 00000000 */  nop
/* 8800C 800CD80C 15CF0006 */  bne        $t6, $t7, .L800CD828
/* 88010 800CD810 27B8007C */   addiu     $t8, $sp, 0x7C
/* 88014 800CD814 24630001 */  addiu      $v1, $v1, 0x1
/* 88018 800CD818 0071082B */  sltu       $at, $v1, $s1
/* 8801C 800CD81C 1420FFF8 */  bnez       $at, .L800CD800
/* 88020 800CD820 24420001 */   addiu     $v0, $v0, 0x1
/* 88024 800CD824 27B8007C */  addiu      $t8, $sp, 0x7C
.L800CD828:
/* 88028 800CD828 14780019 */  bne        $v1, $t8, .L800CD890
/* 8802C 800CD82C 02402025 */   or        $a0, $s2, $zero
/* 88030 800CD830 1A600013 */  blez       $s3, .L800CD880
/* 88034 800CD834 00000000 */   nop
/* 88038 800CD838 0C03384C */  jal        func_800CE130
/* 8803C 800CD83C A2400065 */   sb        $zero, 0x65($s2)
/* 88040 800CD840 10400003 */  beqz       $v0, .L800CD850
/* 88044 800CD844 00003025 */   or        $a2, $zero, $zero
/* 88048 800CD848 10000069 */  b          .L800CD9F0
/* 8804C 800CD84C 8FBF003C */   lw        $ra, 0x3C($sp)
.L800CD850:
/* 88050 800CD850 8E440004 */  lw         $a0, 0x4($s2)
/* 88054 800CD854 8E450008 */  lw         $a1, 0x8($s2)
/* 88058 800CD858 0C033B04 */  jal        func_800CEC10
/* 8805C 800CD85C 02A03825 */   or        $a3, $s5, $zero
/* 88060 800CD860 10400004 */  beqz       $v0, .L800CD874
/* 88064 800CD864 93B9007C */   lbu       $t9, 0x7C($sp)
/* 88068 800CD868 10000061 */  b          .L800CD9F0
/* 8806C 800CD86C 8FBF003C */   lw        $ra, 0x3C($sp)
/* 88070 800CD870 93B9007C */  lbu        $t9, 0x7C($sp)
.L800CD874:
/* 88074 800CD874 24010080 */  addiu      $at, $zero, 0x80
/* 88078 800CD878 17210005 */  bne        $t9, $at, .L800CD890
/* 8807C 800CD87C 00000000 */   nop
.L800CD880:
/* 88080 800CD880 26730001 */  addiu      $s3, $s3, 0x1
/* 88084 800CD884 2A61003E */  slti       $at, $s3, 0x3E
/* 88088 800CD888 1420FFB3 */  bnez       $at, .L800CD758
/* 8808C 800CD88C 00000000 */   nop
.L800CD890:
/* 88090 800CD890 A2400065 */  sb         $zero, 0x65($s2)
/* 88094 800CD894 0C03384C */  jal        func_800CE130
/* 88098 800CD898 02402025 */   or        $a0, $s2, $zero
/* 8809C 800CD89C 10400003 */  beqz       $v0, .L800CD8AC
/* 880A0 800CD8A0 02802025 */   or        $a0, $s4, $zero
/* 880A4 800CD8A4 10000052 */  b          .L800CD9F0
/* 880A8 800CD8A8 8FBF003C */   lw        $ra, 0x3C($sp)
.L800CD8AC:
/* 880AC 800CD8AC 1A600003 */  blez       $s3, .L800CD8BC
/* 880B0 800CD8B0 2685001C */   addiu     $a1, $s4, 0x1C
/* 880B4 800CD8B4 10000002 */  b          .L800CD8C0
/* 880B8 800CD8B8 24020001 */   addiu     $v0, $zero, 0x1
.L800CD8BC:
/* 880BC 800CD8BC 00001025 */  or         $v0, $zero, $zero
.L800CD8C0:
/* 880C0 800CD8C0 96C80018 */  lhu        $t0, 0x18($s6)
/* 880C4 800CD8C4 A293001A */  sb         $s3, 0x1A($s4)
/* 880C8 800CD8C8 3109FFFE */  andi       $t1, $t0, 0xFFFE
/* 880CC 800CD8CC 01225025 */  or         $t2, $t1, $v0
/* 880D0 800CD8D0 A68A0018 */  sh         $t2, 0x18($s4)
/* 880D4 800CD8D4 92CB001B */  lbu        $t3, 0x1B($s6)
/* 880D8 800CD8D8 2686001E */  addiu      $a2, $s4, 0x1E
/* 880DC 800CD8DC 0C033573 */  jal        func_800CD5CC
/* 880E0 800CD8E0 A28B001B */   sb        $t3, 0x1B($s4)
/* 880E4 800CD8E4 240C0001 */  addiu      $t4, $zero, 0x1
/* 880E8 800CD8E8 240D0003 */  addiu      $t5, $zero, 0x3
/* 880EC 800CD8EC 240E0004 */  addiu      $t6, $zero, 0x4
/* 880F0 800CD8F0 240F0006 */  addiu      $t7, $zero, 0x6
/* 880F4 800CD8F4 A7AC0048 */  sh         $t4, 0x48($sp)
/* 880F8 800CD8F8 A7AD004A */  sh         $t5, 0x4A($sp)
/* 880FC 800CD8FC A7AE004C */  sh         $t6, 0x4C($sp)
/* 88100 800CD900 A7AF004E */  sh         $t7, 0x4E($sp)
/* 88104 800CD904 27B00048 */  addiu      $s0, $sp, 0x48
/* 88108 800CD908 27B10050 */  addiu      $s1, $sp, 0x50
.L800CD90C:
/* 8810C 800CD90C 8E440004 */  lw         $a0, 0x4($s2)
/* 88110 800CD910 8E450008 */  lw         $a1, 0x8($s2)
/* 88114 800CD914 96060000 */  lhu        $a2, 0x0($s0)
/* 88118 800CD918 24180001 */  addiu      $t8, $zero, 0x1
/* 8811C 800CD91C AFB80010 */  sw         $t8, 0x10($sp)
/* 88120 800CD920 0C033BE8 */  jal        func_800CEFA0
/* 88124 800CD924 02803825 */   or        $a3, $s4, $zero
/* 88128 800CD928 10400003 */  beqz       $v0, .L800CD938
/* 8812C 800CD92C 26100002 */   addiu     $s0, $s0, 0x2
/* 88130 800CD930 1000002F */  b          .L800CD9F0
/* 88134 800CD934 8FBF003C */   lw        $ra, 0x3C($sp)
.L800CD938:
/* 88138 800CD938 0211082B */  sltu       $at, $s0, $s1
/* 8813C 800CD93C 1420FFF3 */  bnez       $at, .L800CD90C
/* 88140 800CD940 00000000 */   nop
/* 88144 800CD944 8E440004 */  lw         $a0, 0x4($s2)
/* 88148 800CD948 8E450008 */  lw         $a1, 0x8($s2)
/* 8814C 800CD94C 24060001 */  addiu      $a2, $zero, 0x1
/* 88150 800CD950 0C033B04 */  jal        func_800CEC10
/* 88154 800CD954 02A03825 */   or        $a3, $s5, $zero
/* 88158 800CD958 10400003 */  beqz       $v0, .L800CD968
/* 8815C 800CD95C 02801825 */   or        $v1, $s4, $zero
/* 88160 800CD960 10000023 */  b          .L800CD9F0
/* 88164 800CD964 8FBF003C */   lw        $ra, 0x3C($sp)
.L800CD968:
/* 88168 800CD968 27A2007C */  addiu      $v0, $sp, 0x7C
/* 8816C 800CD96C 27A4009C */  addiu      $a0, $sp, 0x9C
.L800CD970:
/* 88170 800CD970 90590000 */  lbu        $t9, 0x0($v0)
/* 88174 800CD974 90680000 */  lbu        $t0, 0x0($v1)
/* 88178 800CD978 00000000 */  nop
/* 8817C 800CD97C 13280003 */  beq        $t9, $t0, .L800CD98C
/* 88180 800CD980 00000000 */   nop
/* 88184 800CD984 10000019 */  b          .L800CD9EC
/* 88188 800CD988 2402000A */   addiu     $v0, $zero, 0xA
.L800CD98C:
/* 8818C 800CD98C 90490001 */  lbu        $t1, 0x1($v0)
/* 88190 800CD990 906A0001 */  lbu        $t2, 0x1($v1)
/* 88194 800CD994 00000000 */  nop
/* 88198 800CD998 112A0003 */  beq        $t1, $t2, .L800CD9A8
/* 8819C 800CD99C 00000000 */   nop
/* 881A0 800CD9A0 10000012 */  b          .L800CD9EC
/* 881A4 800CD9A4 2402000A */   addiu     $v0, $zero, 0xA
.L800CD9A8:
/* 881A8 800CD9A8 904B0002 */  lbu        $t3, 0x2($v0)
/* 881AC 800CD9AC 906C0002 */  lbu        $t4, 0x2($v1)
/* 881B0 800CD9B0 00000000 */  nop
/* 881B4 800CD9B4 116C0003 */  beq        $t3, $t4, .L800CD9C4
/* 881B8 800CD9B8 00000000 */   nop
/* 881BC 800CD9BC 1000000B */  b          .L800CD9EC
/* 881C0 800CD9C0 2402000A */   addiu     $v0, $zero, 0xA
.L800CD9C4:
/* 881C4 800CD9C4 904D0003 */  lbu        $t5, 0x3($v0)
/* 881C8 800CD9C8 906E0003 */  lbu        $t6, 0x3($v1)
/* 881CC 800CD9CC 24420004 */  addiu      $v0, $v0, 0x4
/* 881D0 800CD9D0 11AE0003 */  beq        $t5, $t6, .L800CD9E0
/* 881D4 800CD9D4 00000000 */   nop
/* 881D8 800CD9D8 10000004 */  b          .L800CD9EC
/* 881DC 800CD9DC 2402000A */   addiu     $v0, $zero, 0xA
.L800CD9E0:
/* 881E0 800CD9E0 1444FFE3 */  bne        $v0, $a0, .L800CD970
/* 881E4 800CD9E4 24630004 */   addiu     $v1, $v1, 0x4
/* 881E8 800CD9E8 00001025 */  or         $v0, $zero, $zero
.L800CD9EC:
/* 881EC 800CD9EC 8FBF003C */  lw         $ra, 0x3C($sp)
.L800CD9F0:
/* 881F0 800CD9F0 8FB00020 */  lw         $s0, 0x20($sp)
/* 881F4 800CD9F4 8FB10024 */  lw         $s1, 0x24($sp)
/* 881F8 800CD9F8 8FB20028 */  lw         $s2, 0x28($sp)
/* 881FC 800CD9FC 8FB3002C */  lw         $s3, 0x2C($sp)
/* 88200 800CDA00 8FB40030 */  lw         $s4, 0x30($sp)
/* 88204 800CDA04 8FB50034 */  lw         $s5, 0x34($sp)
/* 88208 800CDA08 8FB60038 */  lw         $s6, 0x38($sp)
/* 8820C 800CDA0C 03E00008 */  jr         $ra
/* 88210 800CDA10 27BD00A0 */   addiu     $sp, $sp, 0xA0

glabel func_800CDA14
/* 88214 800CDA14 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 88218 800CDA18 AFBF003C */  sw         $ra, 0x3C($sp)
/* 8821C 800CDA1C AFB60038 */  sw         $s6, 0x38($sp)
/* 88220 800CDA20 AFB50034 */  sw         $s5, 0x34($sp)
/* 88224 800CDA24 AFB40030 */  sw         $s4, 0x30($sp)
/* 88228 800CDA28 AFB3002C */  sw         $s3, 0x2C($sp)
/* 8822C 800CDA2C AFB20028 */  sw         $s2, 0x28($sp)
/* 88230 800CDA30 AFB10024 */  sw         $s1, 0x24($sp)
/* 88234 800CDA34 AFB00020 */  sw         $s0, 0x20($sp)
/* 88238 800CDA38 908E0065 */  lbu        $t6, 0x65($a0)
/* 8823C 800CDA3C 00A09025 */  or         $s2, $a1, $zero
/* 88240 800CDA40 11C00007 */  beqz       $t6, .L800CDA60
/* 88244 800CDA44 00809825 */   or        $s3, $a0, $zero
/* 88248 800CDA48 0C03384C */  jal        func_800CE130
/* 8824C 800CDA4C A0800065 */   sb        $zero, 0x65($a0)
/* 88250 800CDA50 10400004 */  beqz       $v0, .L800CDA64
/* 88254 800CDA54 240F0001 */   addiu     $t7, $zero, 0x1
/* 88258 800CDA58 1000003E */  b          .L800CDB54
/* 8825C 800CDA5C 8FBF003C */   lw        $ra, 0x3C($sp)
.L800CDA60:
/* 88260 800CDA60 240F0001 */  addiu      $t7, $zero, 0x1
.L800CDA64:
/* 88264 800CDA64 24180003 */  addiu      $t8, $zero, 0x3
/* 88268 800CDA68 24190004 */  addiu      $t9, $zero, 0x4
/* 8826C 800CDA6C 24080006 */  addiu      $t0, $zero, 0x6
/* 88270 800CDA70 A7AF0058 */  sh         $t7, 0x58($sp)
/* 88274 800CDA74 A7B8005A */  sh         $t8, 0x5A($sp)
/* 88278 800CDA78 A7B9005C */  sh         $t9, 0x5C($sp)
/* 8827C 800CDA7C A7A8005E */  sh         $t0, 0x5E($sp)
/* 88280 800CDA80 24110001 */  addiu      $s1, $zero, 0x1
/* 88284 800CDA84 27B0005A */  addiu      $s0, $sp, 0x5A
/* 88288 800CDA88 27B60050 */  addiu      $s6, $sp, 0x50
/* 8828C 800CDA8C 24150004 */  addiu      $s5, $zero, 0x4
/* 88290 800CDA90 27B40052 */  addiu      $s4, $sp, 0x52
.L800CDA94:
/* 88294 800CDA94 8E640004 */  lw         $a0, 0x4($s3)
/* 88298 800CDA98 8E650008 */  lw         $a1, 0x8($s3)
/* 8829C 800CDA9C 96060000 */  lhu        $a2, 0x0($s0)
/* 882A0 800CDAA0 0C033B04 */  jal        func_800CEC10
/* 882A4 800CDAA4 02403825 */   or        $a3, $s2, $zero
/* 882A8 800CDAA8 10400003 */  beqz       $v0, .L800CDAB8
/* 882AC 800CDAAC 02402025 */   or        $a0, $s2, $zero
/* 882B0 800CDAB0 10000028 */  b          .L800CDB54
/* 882B4 800CDAB4 8FBF003C */   lw        $ra, 0x3C($sp)
.L800CDAB8:
/* 882B8 800CDAB8 02802825 */  or         $a1, $s4, $zero
/* 882BC 800CDABC 0C033573 */  jal        func_800CD5CC
/* 882C0 800CDAC0 02C03025 */   or        $a2, $s6, $zero
/* 882C4 800CDAC4 97A90052 */  lhu        $t1, 0x52($sp)
/* 882C8 800CDAC8 964A001C */  lhu        $t2, 0x1C($s2)
/* 882CC 800CDACC 97AB0050 */  lhu        $t3, 0x50($sp)
/* 882D0 800CDAD0 152A0005 */  bne        $t1, $t2, .L800CDAE8
/* 882D4 800CDAD4 00000000 */   nop
/* 882D8 800CDAD8 964C001E */  lhu        $t4, 0x1E($s2)
/* 882DC 800CDADC 00000000 */  nop
/* 882E0 800CDAE0 116C0004 */  beq        $t3, $t4, .L800CDAF4
/* 882E4 800CDAE4 00000000 */   nop
.L800CDAE8:
/* 882E8 800CDAE8 26310001 */  addiu      $s1, $s1, 0x1
/* 882EC 800CDAEC 1635FFE9 */  bne        $s1, $s5, .L800CDA94
/* 882F0 800CDAF0 26100002 */   addiu     $s0, $s0, 0x2
.L800CDAF4:
/* 882F4 800CDAF4 16350003 */  bne        $s1, $s5, .L800CDB04
/* 882F8 800CDAF8 00008025 */   or        $s0, $zero, $zero
/* 882FC 800CDAFC 10000014 */  b          .L800CDB50
/* 88300 800CDB00 2402000A */   addiu     $v0, $zero, 0xA
.L800CDB04:
/* 88304 800CDB04 27B40058 */  addiu      $s4, $sp, 0x58
.L800CDB08:
/* 88308 800CDB08 1211000D */  beq        $s0, $s1, .L800CDB40
/* 8830C 800CDB0C 00106840 */   sll       $t5, $s0, 1
/* 88310 800CDB10 028D7021 */  addu       $t6, $s4, $t5
/* 88314 800CDB14 95C60000 */  lhu        $a2, 0x0($t6)
/* 88318 800CDB18 8E640004 */  lw         $a0, 0x4($s3)
/* 8831C 800CDB1C 8E650008 */  lw         $a1, 0x8($s3)
/* 88320 800CDB20 240F0001 */  addiu      $t7, $zero, 0x1
/* 88324 800CDB24 AFAF0010 */  sw         $t7, 0x10($sp)
/* 88328 800CDB28 0C033BE8 */  jal        func_800CEFA0
/* 8832C 800CDB2C 02403825 */   or        $a3, $s2, $zero
/* 88330 800CDB30 10400004 */  beqz       $v0, .L800CDB44
/* 88334 800CDB34 26100001 */   addiu     $s0, $s0, 0x1
/* 88338 800CDB38 10000006 */  b          .L800CDB54
/* 8833C 800CDB3C 8FBF003C */   lw        $ra, 0x3C($sp)
.L800CDB40:
/* 88340 800CDB40 26100001 */  addiu      $s0, $s0, 0x1
.L800CDB44:
/* 88344 800CDB44 1615FFF0 */  bne        $s0, $s5, .L800CDB08
/* 88348 800CDB48 00000000 */   nop
/* 8834C 800CDB4C 00001025 */  or         $v0, $zero, $zero
.L800CDB50:
/* 88350 800CDB50 8FBF003C */  lw         $ra, 0x3C($sp)
.L800CDB54:
/* 88354 800CDB54 8FB00020 */  lw         $s0, 0x20($sp)
/* 88358 800CDB58 8FB10024 */  lw         $s1, 0x24($sp)
/* 8835C 800CDB5C 8FB20028 */  lw         $s2, 0x28($sp)
/* 88360 800CDB60 8FB3002C */  lw         $s3, 0x2C($sp)
/* 88364 800CDB64 8FB40030 */  lw         $s4, 0x30($sp)
/* 88368 800CDB68 8FB50034 */  lw         $s5, 0x34($sp)
/* 8836C 800CDB6C 8FB60038 */  lw         $s6, 0x38($sp)
/* 88370 800CDB70 03E00008 */  jr         $ra
/* 88374 800CDB74 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_800CDB78
/* 88378 800CDB78 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 8837C 800CDB7C AFBF001C */  sw         $ra, 0x1C($sp)
/* 88380 800CDB80 AFB00018 */  sw         $s0, 0x18($sp)
/* 88384 800CDB84 908E0065 */  lbu        $t6, 0x65($a0)
/* 88388 800CDB88 00808025 */  or         $s0, $a0, $zero
/* 8838C 800CDB8C 11C00007 */  beqz       $t6, .L800CDBAC
/* 88390 800CDB90 00000000 */   nop
/* 88394 800CDB94 0C03384C */  jal        func_800CE130
/* 88398 800CDB98 A0800065 */   sb        $zero, 0x65($a0)
/* 8839C 800CDB9C 10400003 */  beqz       $v0, .L800CDBAC
/* 883A0 800CDBA0 00000000 */   nop
/* 883A4 800CDBA4 10000072 */  b          .L800CDD70
/* 883A8 800CDBA8 8FBF001C */   lw        $ra, 0x1C($sp)
.L800CDBAC:
/* 883AC 800CDBAC 8E040004 */  lw         $a0, 0x4($s0)
/* 883B0 800CDBB0 8E050008 */  lw         $a1, 0x8($s0)
/* 883B4 800CDBB4 24060001 */  addiu      $a2, $zero, 0x1
/* 883B8 800CDBB8 0C033B04 */  jal        func_800CEC10
/* 883BC 800CDBBC 27A70060 */   addiu     $a3, $sp, 0x60
/* 883C0 800CDBC0 10400003 */  beqz       $v0, .L800CDBD0
/* 883C4 800CDBC4 27A40060 */   addiu     $a0, $sp, 0x60
/* 883C8 800CDBC8 10000069 */  b          .L800CDD70
/* 883CC 800CDBCC 8FBF001C */   lw        $ra, 0x1C($sp)
.L800CDBD0:
/* 883D0 800CDBD0 27A50082 */  addiu      $a1, $sp, 0x82
/* 883D4 800CDBD4 0C033573 */  jal        func_800CD5CC
/* 883D8 800CDBD8 27A60080 */   addiu     $a2, $sp, 0x80
/* 883DC 800CDBDC 97AF0082 */  lhu        $t7, 0x82($sp)
/* 883E0 800CDBE0 97B8007C */  lhu        $t8, 0x7C($sp)
/* 883E4 800CDBE4 27A50060 */  addiu      $a1, $sp, 0x60
/* 883E8 800CDBE8 15F80006 */  bne        $t7, $t8, .L800CDC04
/* 883EC 800CDBEC AFA50038 */   sw        $a1, 0x38($sp)
/* 883F0 800CDBF0 97B90080 */  lhu        $t9, 0x80($sp)
/* 883F4 800CDBF4 97A9007E */  lhu        $t1, 0x7E($sp)
/* 883F8 800CDBF8 00000000 */  nop
/* 883FC 800CDBFC 13290015 */  beq        $t9, $t1, .L800CDC54
/* 88400 800CDC00 8FAB0038 */   lw        $t3, 0x38($sp)
.L800CDC04:
/* 88404 800CDC04 0C033685 */  jal        func_800CDA14
/* 88408 800CDC08 02002025 */   or        $a0, $s0, $zero
/* 8840C 800CDC0C 2401000A */  addiu      $at, $zero, 0xA
/* 88410 800CDC10 1441000B */  bne        $v0, $at, .L800CDC40
/* 88414 800CDC14 00401825 */   or        $v1, $v0, $zero
/* 88418 800CDC18 02002025 */  or         $a0, $s0, $zero
/* 8841C 800CDC1C 27A50060 */  addiu      $a1, $sp, 0x60
/* 88420 800CDC20 0C0335B2 */  jal        func_800CD6C8
/* 88424 800CDC24 27A60040 */   addiu     $a2, $sp, 0x40
/* 88428 800CDC28 10400003 */  beqz       $v0, .L800CDC38
/* 8842C 800CDC2C 27AA0040 */   addiu     $t2, $sp, 0x40
/* 88430 800CDC30 1000004F */  b          .L800CDD70
/* 88434 800CDC34 8FBF001C */   lw        $ra, 0x1C($sp)
.L800CDC38:
/* 88438 800CDC38 10000005 */  b          .L800CDC50
/* 8843C 800CDC3C AFAA0038 */   sw        $t2, 0x38($sp)
.L800CDC40:
/* 88440 800CDC40 10400004 */  beqz       $v0, .L800CDC54
/* 88444 800CDC44 8FAB0038 */   lw        $t3, 0x38($sp)
/* 88448 800CDC48 10000048 */  b          .L800CDD6C
/* 8844C 800CDC4C 00601025 */   or        $v0, $v1, $zero
.L800CDC50:
/* 88450 800CDC50 8FAB0038 */  lw         $t3, 0x38($sp)
.L800CDC54:
/* 88454 800CDC54 02002025 */  or         $a0, $s0, $zero
/* 88458 800CDC58 956C0018 */  lhu        $t4, 0x18($t3)
/* 8845C 800CDC5C 01602825 */  or         $a1, $t3, $zero
/* 88460 800CDC60 318D0001 */  andi       $t5, $t4, 0x1
/* 88464 800CDC64 15A0000F */  bnez       $t5, .L800CDCA4
/* 88468 800CDC68 8FA30038 */   lw        $v1, 0x38($sp)
/* 8846C 800CDC6C 0C0335B2 */  jal        func_800CD6C8
/* 88470 800CDC70 27A60040 */   addiu     $a2, $sp, 0x40
/* 88474 800CDC74 10400004 */  beqz       $v0, .L800CDC88
/* 88478 800CDC78 97AF0058 */   lhu       $t7, 0x58($sp)
/* 8847C 800CDC7C 1000003C */  b          .L800CDD70
/* 88480 800CDC80 8FBF001C */   lw        $ra, 0x1C($sp)
/* 88484 800CDC84 97AF0058 */  lhu        $t7, 0x58($sp)
.L800CDC88:
/* 88488 800CDC88 27AE0040 */  addiu      $t6, $sp, 0x40
/* 8848C 800CDC8C 31F80001 */  andi       $t8, $t7, 0x1
/* 88490 800CDC90 17000003 */  bnez       $t8, .L800CDCA0
/* 88494 800CDC94 AFAE0038 */   sw        $t6, 0x38($sp)
/* 88498 800CDC98 10000034 */  b          .L800CDD6C
/* 8849C 800CDC9C 2402000B */   addiu     $v0, $zero, 0xB
.L800CDCA0:
/* 884A0 800CDCA0 8FA30038 */  lw         $v1, 0x38($sp)
.L800CDCA4:
/* 884A4 800CDCA4 00002025 */  or         $a0, $zero, $zero
/* 884A8 800CDCA8 02001025 */  or         $v0, $s0, $zero
/* 884AC 800CDCAC 24080020 */  addiu      $t0, $zero, 0x20
/* 884B0 800CDCB0 24650001 */  addiu      $a1, $v1, 0x1
/* 884B4 800CDCB4 24660002 */  addiu      $a2, $v1, 0x2
/* 884B8 800CDCB8 24670003 */  addiu      $a3, $v1, 0x3
.L800CDCBC:
/* 884BC 800CDCBC 90790000 */  lbu        $t9, 0x0($v1)
/* 884C0 800CDCC0 24840004 */  addiu      $a0, $a0, 0x4
/* 884C4 800CDCC4 A059000C */  sb         $t9, 0xC($v0)
/* 884C8 800CDCC8 90A90000 */  lbu        $t1, 0x0($a1)
/* 884CC 800CDCCC 24420004 */  addiu      $v0, $v0, 0x4
/* 884D0 800CDCD0 A0490009 */  sb         $t1, 0x9($v0)
/* 884D4 800CDCD4 90CA0000 */  lbu        $t2, 0x0($a2)
/* 884D8 800CDCD8 24630004 */  addiu      $v1, $v1, 0x4
/* 884DC 800CDCDC A04A000A */  sb         $t2, 0xA($v0)
/* 884E0 800CDCE0 90EC0000 */  lbu        $t4, 0x0($a3)
/* 884E4 800CDCE4 24A50004 */  addiu      $a1, $a1, 0x4
/* 884E8 800CDCE8 24C60004 */  addiu      $a2, $a2, 0x4
/* 884EC 800CDCEC 24E70004 */  addiu      $a3, $a3, 0x4
/* 884F0 800CDCF0 1488FFF2 */  bne        $a0, $t0, .L800CDCBC
/* 884F4 800CDCF4 A04C000B */   sb        $t4, 0xB($v0)
/* 884F8 800CDCF8 8FAD0038 */  lw         $t5, 0x38($sp)
/* 884FC 800CDCFC 24090010 */  addiu      $t1, $zero, 0x10
/* 88500 800CDD00 91AB001B */  lbu        $t3, 0x1B($t5)
/* 88504 800CDD04 240A0008 */  addiu      $t2, $zero, 0x8
/* 88508 800CDD08 AE0B004C */  sw         $t3, 0x4C($s0)
/* 8850C 800CDD0C 8FAE0038 */  lw         $t6, 0x38($sp)
/* 88510 800CDD10 8E040004 */  lw         $a0, 0x4($s0)
/* 88514 800CDD14 91CF001A */  lbu        $t7, 0x1A($t6)
/* 88518 800CDD18 8E050008 */  lw         $a1, 0x8($s0)
/* 8851C 800CDD1C 31E200FF */  andi       $v0, $t7, 0xFF
/* 88520 800CDD20 000218C0 */  sll        $v1, $v0, 3
/* 88524 800CDD24 0002C040 */  sll        $t8, $v0, 1
/* 88528 800CDD28 24680008 */  addiu      $t0, $v1, 0x8
/* 8852C 800CDD2C 27190003 */  addiu      $t9, $t8, 0x3
/* 88530 800CDD30 01036021 */  addu       $t4, $t0, $v1
/* 88534 800CDD34 AE190060 */  sw         $t9, 0x60($s0)
/* 88538 800CDD38 AE090050 */  sw         $t1, 0x50($s0)
/* 8853C 800CDD3C AE0A0054 */  sw         $t2, 0x54($s0)
/* 88540 800CDD40 AE080058 */  sw         $t0, 0x58($s0)
/* 88544 800CDD44 AE0C005C */  sw         $t4, 0x5C($s0)
/* 88548 800CDD48 24060007 */  addiu      $a2, $zero, 0x7
/* 8854C 800CDD4C 2607002C */  addiu      $a3, $s0, 0x2C
/* 88550 800CDD50 0C033B04 */  jal        func_800CEC10
/* 88554 800CDD54 A20F0064 */   sb        $t7, 0x64($s0)
/* 88558 800CDD58 10400003 */  beqz       $v0, .L800CDD68
/* 8855C 800CDD5C 00000000 */   nop
/* 88560 800CDD60 10000003 */  b          .L800CDD70
/* 88564 800CDD64 8FBF001C */   lw        $ra, 0x1C($sp)
.L800CDD68:
/* 88568 800CDD68 00001025 */  or         $v0, $zero, $zero
.L800CDD6C:
/* 8856C 800CDD6C 8FBF001C */  lw         $ra, 0x1C($sp)
.L800CDD70:
/* 88570 800CDD70 8FB00018 */  lw         $s0, 0x18($sp)
/* 88574 800CDD74 03E00008 */  jr         $ra
/* 88578 800CDD78 27BD0088 */   addiu     $sp, $sp, 0x88

glabel func_800CDD7C
/* 8857C 800CDD7C 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 88580 800CDD80 AFBF001C */  sw         $ra, 0x1C($sp)
/* 88584 800CDD84 AFB00018 */  sw         $s0, 0x18($sp)
/* 88588 800CDD88 908E0065 */  lbu        $t6, 0x65($a0)
/* 8858C 800CDD8C 00808025 */  or         $s0, $a0, $zero
/* 88590 800CDD90 11C00007 */  beqz       $t6, .L800CDDB0
/* 88594 800CDD94 00000000 */   nop
/* 88598 800CDD98 0C03384C */  jal        func_800CE130
/* 8859C 800CDD9C A0800065 */   sb        $zero, 0x65($a0)
/* 885A0 800CDDA0 10400003 */  beqz       $v0, .L800CDDB0
/* 885A4 800CDDA4 00000000 */   nop
/* 885A8 800CDDA8 10000037 */  b          .L800CDE88
/* 885AC 800CDDAC 8FBF001C */   lw        $ra, 0x1C($sp)
.L800CDDB0:
/* 885B0 800CDDB0 8E040004 */  lw         $a0, 0x4($s0)
/* 885B4 800CDDB4 8E050008 */  lw         $a1, 0x8($s0)
/* 885B8 800CDDB8 24060001 */  addiu      $a2, $zero, 0x1
/* 885BC 800CDDBC 0C033B04 */  jal        func_800CEC10
/* 885C0 800CDDC0 27A7002C */   addiu     $a3, $sp, 0x2C
/* 885C4 800CDDC4 1040000D */  beqz       $v0, .L800CDDFC
/* 885C8 800CDDC8 24010002 */   addiu     $at, $zero, 0x2
/* 885CC 800CDDCC 10410003 */  beq        $v0, $at, .L800CDDDC
/* 885D0 800CDDD0 24060001 */   addiu     $a2, $zero, 0x1
/* 885D4 800CDDD4 1000002C */  b          .L800CDE88
/* 885D8 800CDDD8 8FBF001C */   lw        $ra, 0x1C($sp)
.L800CDDDC:
/* 885DC 800CDDDC 8E040004 */  lw         $a0, 0x4($s0)
/* 885E0 800CDDE0 8E050008 */  lw         $a1, 0x8($s0)
/* 885E4 800CDDE4 0C033B04 */  jal        func_800CEC10
/* 885E8 800CDDE8 27A7002C */   addiu     $a3, $sp, 0x2C
/* 885EC 800CDDEC 10400004 */  beqz       $v0, .L800CDE00
/* 885F0 800CDDF0 02001825 */   or        $v1, $s0, $zero
/* 885F4 800CDDF4 10000024 */  b          .L800CDE88
/* 885F8 800CDDF8 8FBF001C */   lw        $ra, 0x1C($sp)
.L800CDDFC:
/* 885FC 800CDDFC 02001825 */  or         $v1, $s0, $zero
.L800CDE00:
/* 88600 800CDE00 27A2002C */  addiu      $v0, $sp, 0x2C
/* 88604 800CDE04 27A4004C */  addiu      $a0, $sp, 0x4C
.L800CDE08:
/* 88608 800CDE08 906F000C */  lbu        $t7, 0xC($v1)
/* 8860C 800CDE0C 90580000 */  lbu        $t8, 0x0($v0)
/* 88610 800CDE10 00000000 */  nop
/* 88614 800CDE14 11F80003 */  beq        $t7, $t8, .L800CDE24
/* 88618 800CDE18 00000000 */   nop
/* 8861C 800CDE1C 10000019 */  b          .L800CDE84
/* 88620 800CDE20 24020002 */   addiu     $v0, $zero, 0x2
.L800CDE24:
/* 88624 800CDE24 9079000D */  lbu        $t9, 0xD($v1)
/* 88628 800CDE28 90480001 */  lbu        $t0, 0x1($v0)
/* 8862C 800CDE2C 00000000 */  nop
/* 88630 800CDE30 13280003 */  beq        $t9, $t0, .L800CDE40
/* 88634 800CDE34 00000000 */   nop
/* 88638 800CDE38 10000012 */  b          .L800CDE84
/* 8863C 800CDE3C 24020002 */   addiu     $v0, $zero, 0x2
.L800CDE40:
/* 88640 800CDE40 9069000E */  lbu        $t1, 0xE($v1)
/* 88644 800CDE44 904A0002 */  lbu        $t2, 0x2($v0)
/* 88648 800CDE48 00000000 */  nop
/* 8864C 800CDE4C 112A0003 */  beq        $t1, $t2, .L800CDE5C
/* 88650 800CDE50 00000000 */   nop
/* 88654 800CDE54 1000000B */  b          .L800CDE84
/* 88658 800CDE58 24020002 */   addiu     $v0, $zero, 0x2
.L800CDE5C:
/* 8865C 800CDE5C 906B000F */  lbu        $t3, 0xF($v1)
/* 88660 800CDE60 904C0003 */  lbu        $t4, 0x3($v0)
/* 88664 800CDE64 24420004 */  addiu      $v0, $v0, 0x4
/* 88668 800CDE68 116C0003 */  beq        $t3, $t4, .L800CDE78
/* 8866C 800CDE6C 00000000 */   nop
/* 88670 800CDE70 10000004 */  b          .L800CDE84
/* 88674 800CDE74 24020002 */   addiu     $v0, $zero, 0x2
.L800CDE78:
/* 88678 800CDE78 1444FFE3 */  bne        $v0, $a0, .L800CDE08
/* 8867C 800CDE7C 24630004 */   addiu     $v1, $v1, 0x4
/* 88680 800CDE80 00001025 */  or         $v0, $zero, $zero
.L800CDE84:
/* 88684 800CDE84 8FBF001C */  lw         $ra, 0x1C($sp)
.L800CDE88:
/* 88688 800CDE88 8FB00018 */  lw         $s0, 0x18($sp)
/* 8868C 800CDE8C 03E00008 */  jr         $ra
/* 88690 800CDE90 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_800CDE94
/* 88694 800CDE94 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 88698 800CDE98 AFBF0034 */  sw         $ra, 0x34($sp)
/* 8869C 800CDE9C AFB40030 */  sw         $s4, 0x30($sp)
/* 886A0 800CDEA0 AFB3002C */  sw         $s3, 0x2C($sp)
/* 886A4 800CDEA4 AFB20028 */  sw         $s2, 0x28($sp)
/* 886A8 800CDEA8 AFB10024 */  sw         $s1, 0x24($sp)
/* 886AC 800CDEAC AFB00020 */  sw         $s0, 0x20($sp)
/* 886B0 800CDEB0 AFA50054 */  sw         $a1, 0x54($sp)
/* 886B4 800CDEB4 AFA60058 */  sw         $a2, 0x58($sp)
/* 886B8 800CDEB8 AFA7005C */  sw         $a3, 0x5C($sp)
/* 886BC 800CDEBC 908E0065 */  lbu        $t6, 0x65($a0)
/* 886C0 800CDEC0 30F000FF */  andi       $s0, $a3, 0xFF
/* 886C4 800CDEC4 30D100FF */  andi       $s1, $a2, 0xFF
/* 886C8 800CDEC8 11C00007 */  beqz       $t6, .L800CDEE8
/* 886CC 800CDECC 00809025 */   or        $s2, $a0, $zero
/* 886D0 800CDED0 0C03384C */  jal        func_800CE130
/* 886D4 800CDED4 A0800065 */   sb        $zero, 0x65($a0)
/* 886D8 800CDED8 10400003 */  beqz       $v0, .L800CDEE8
/* 886DC 800CDEDC 00000000 */   nop
/* 886E0 800CDEE0 1000008C */  b          .L800CE114
/* 886E4 800CDEE4 8FBF0034 */   lw        $ra, 0x34($sp)
.L800CDEE8:
/* 886E8 800CDEE8 1A000004 */  blez       $s0, .L800CDEFC
/* 886EC 800CDEEC 02001825 */   or        $v1, $s0, $zero
/* 886F0 800CDEF0 240F0001 */  addiu      $t7, $zero, 0x1
/* 886F4 800CDEF4 10000004 */  b          .L800CDF08
/* 886F8 800CDEF8 AFAF0040 */   sw        $t7, 0x40($sp)
.L800CDEFC:
/* 886FC 800CDEFC 8E580060 */  lw         $t8, 0x60($s2)
/* 88700 800CDF00 00000000 */  nop
/* 88704 800CDF04 AFB80040 */  sw         $t8, 0x40($sp)
.L800CDF08:
/* 88708 800CDF08 24020001 */  addiu      $v0, $zero, 0x1
/* 8870C 800CDF0C 1451000D */  bne        $v0, $s1, .L800CDF44
/* 88710 800CDF10 02209825 */   or        $s3, $s1, $zero
/* 88714 800CDF14 8FA80040 */  lw         $t0, 0x40($sp)
/* 88718 800CDF18 8FB90054 */  lw         $t9, 0x54($sp)
/* 8871C 800CDF1C 00082823 */  negu       $a1, $t0
/* 88720 800CDF20 00055040 */  sll        $t2, $a1, 1
/* 88724 800CDF24 00084840 */  sll        $t1, $t0, 1
/* 88728 800CDF28 25450100 */  addiu      $a1, $t2, 0x100
/* 8872C 800CDF2C AFA30038 */  sw         $v1, 0x38($sp)
/* 88730 800CDF30 0C033554 */  jal        func_800CD550
/* 88734 800CDF34 03292021 */   addu      $a0, $t9, $t1
/* 88738 800CDF38 8FAB0054 */  lw         $t3, 0x54($sp)
/* 8873C 800CDF3C 8FA30038 */  lw         $v1, 0x38($sp)
/* 88740 800CDF40 A1620001 */  sb         $v0, 0x1($t3)
.L800CDF44:
/* 88744 800CDF44 8FB10054 */  lw         $s1, 0x54($sp)
/* 88748 800CDF48 00008025 */  or         $s0, $zero, $zero
/* 8874C 800CDF4C 0003A0C0 */  sll        $s4, $v1, 3
.L800CDF50:
/* 88750 800CDF50 24020001 */  addiu      $v0, $zero, 0x1
/* 88754 800CDF54 14530017 */  bne        $v0, $s3, .L800CDFB4
/* 88758 800CDF58 02203825 */   or        $a3, $s1, $zero
/* 8875C 800CDF5C 8E4C0054 */  lw         $t4, 0x54($s2)
/* 88760 800CDF60 8E440004 */  lw         $a0, 0x4($s2)
/* 88764 800CDF64 01946821 */  addu       $t5, $t4, $s4
/* 88768 800CDF68 01B03021 */  addu       $a2, $t5, $s0
/* 8876C 800CDF6C 30CEFFFF */  andi       $t6, $a2, 0xFFFF
/* 88770 800CDF70 8E450008 */  lw         $a1, 0x8($s2)
/* 88774 800CDF74 AFA00010 */  sw         $zero, 0x10($sp)
/* 88778 800CDF78 01C03025 */  or         $a2, $t6, $zero
/* 8877C 800CDF7C 0C033BE8 */  jal        func_800CEFA0
/* 88780 800CDF80 02203825 */   or        $a3, $s1, $zero
/* 88784 800CDF84 8E4F0058 */  lw         $t7, 0x58($s2)
/* 88788 800CDF88 8E440004 */  lw         $a0, 0x4($s2)
/* 8878C 800CDF8C 01F4C021 */  addu       $t8, $t7, $s4
/* 88790 800CDF90 03103021 */  addu       $a2, $t8, $s0
/* 88794 800CDF94 30D9FFFF */  andi       $t9, $a2, 0xFFFF
/* 88798 800CDF98 8E450008 */  lw         $a1, 0x8($s2)
/* 8879C 800CDF9C AFA00010 */  sw         $zero, 0x10($sp)
/* 887A0 800CDFA0 03203025 */  or         $a2, $t9, $zero
/* 887A4 800CDFA4 0C033BE8 */  jal        func_800CEFA0
/* 887A8 800CDFA8 02203825 */   or        $a3, $s1, $zero
/* 887AC 800CDFAC 1000000A */  b          .L800CDFD8
/* 887B0 800CDFB0 00401825 */   or        $v1, $v0, $zero
.L800CDFB4:
/* 887B4 800CDFB4 8E490054 */  lw         $t1, 0x54($s2)
/* 887B8 800CDFB8 8E440004 */  lw         $a0, 0x4($s2)
/* 887BC 800CDFBC 01344021 */  addu       $t0, $t1, $s4
/* 887C0 800CDFC0 01103021 */  addu       $a2, $t0, $s0
/* 887C4 800CDFC4 30CAFFFF */  andi       $t2, $a2, 0xFFFF
/* 887C8 800CDFC8 8E450008 */  lw         $a1, 0x8($s2)
/* 887CC 800CDFCC 0C033B04 */  jal        func_800CEC10
/* 887D0 800CDFD0 01403025 */   or        $a2, $t2, $zero
/* 887D4 800CDFD4 00401825 */  or         $v1, $v0, $zero
.L800CDFD8:
/* 887D8 800CDFD8 10400003 */  beqz       $v0, .L800CDFE8
/* 887DC 800CDFDC 26100001 */   addiu     $s0, $s0, 0x1
/* 887E0 800CDFE0 1000004B */  b          .L800CE110
/* 887E4 800CDFE4 00601025 */   or        $v0, $v1, $zero
.L800CDFE8:
/* 887E8 800CDFE8 2A010008 */  slti       $at, $s0, 0x8
/* 887EC 800CDFEC 1420FFD8 */  bnez       $at, .L800CDF50
/* 887F0 800CDFF0 26310020 */   addiu     $s1, $s1, 0x20
/* 887F4 800CDFF4 16600046 */  bnez       $s3, .L800CE110
/* 887F8 800CDFF8 00001025 */   or        $v0, $zero, $zero
/* 887FC 800CDFFC 8FAC0040 */  lw         $t4, 0x40($sp)
/* 88800 800CE000 8FAB0054 */  lw         $t3, 0x54($sp)
/* 88804 800CE004 000C2823 */  negu       $a1, $t4
/* 88808 800CE008 00057040 */  sll        $t6, $a1, 1
/* 8880C 800CE00C 000C6840 */  sll        $t5, $t4, 1
/* 88810 800CE010 25C50100 */  addiu      $a1, $t6, 0x100
/* 88814 800CE014 0C033554 */  jal        func_800CD550
/* 88818 800CE018 016D2021 */   addu      $a0, $t3, $t5
/* 8881C 800CE01C 8FB80054 */  lw         $t8, 0x54($sp)
/* 88820 800CE020 304F00FF */  andi       $t7, $v0, 0xFF
/* 88824 800CE024 93190001 */  lbu        $t9, 0x1($t8)
/* 88828 800CE028 305300FF */  andi       $s3, $v0, 0xFF
/* 8882C 800CE02C 11F90028 */  beq        $t7, $t9, .L800CE0D0
/* 88830 800CE030 00008025 */   or        $s0, $zero, $zero
/* 88834 800CE034 00008025 */  or         $s0, $zero, $zero
/* 88838 800CE038 03008825 */  or         $s1, $t8, $zero
.L800CE03C:
/* 8883C 800CE03C 8E490058 */  lw         $t1, 0x58($s2)
/* 88840 800CE040 8E440004 */  lw         $a0, 0x4($s2)
/* 88844 800CE044 01344021 */  addu       $t0, $t1, $s4
/* 88848 800CE048 01103021 */  addu       $a2, $t0, $s0
/* 8884C 800CE04C 30CAFFFF */  andi       $t2, $a2, 0xFFFF
/* 88850 800CE050 8E450008 */  lw         $a1, 0x8($s2)
/* 88854 800CE054 01403025 */  or         $a2, $t2, $zero
/* 88858 800CE058 0C033B04 */  jal        func_800CEC10
/* 8885C 800CE05C 02203825 */   or        $a3, $s1, $zero
/* 88860 800CE060 26100001 */  addiu      $s0, $s0, 0x1
/* 88864 800CE064 2A010008 */  slti       $at, $s0, 0x8
/* 88868 800CE068 1420FFF4 */  bnez       $at, .L800CE03C
/* 8886C 800CE06C 26310020 */   addiu     $s1, $s1, 0x20
/* 88870 800CE070 8FAB0054 */  lw         $t3, 0x54($sp)
/* 88874 800CE074 8FB10054 */  lw         $s1, 0x54($sp)
/* 88878 800CE078 916D0001 */  lbu        $t5, 0x1($t3)
/* 8887C 800CE07C 00008025 */  or         $s0, $zero, $zero
/* 88880 800CE080 126D0004 */  beq        $s3, $t5, .L800CE094
/* 88884 800CE084 24130008 */   addiu     $s3, $zero, 0x8
/* 88888 800CE088 10000021 */  b          .L800CE110
/* 8888C 800CE08C 24020003 */   addiu     $v0, $zero, 0x3
/* 88890 800CE090 24130008 */  addiu      $s3, $zero, 0x8
.L800CE094:
/* 88894 800CE094 8E4C0054 */  lw         $t4, 0x54($s2)
/* 88898 800CE098 8E440004 */  lw         $a0, 0x4($s2)
/* 8889C 800CE09C 01947021 */  addu       $t6, $t4, $s4
/* 888A0 800CE0A0 01D03021 */  addu       $a2, $t6, $s0
/* 888A4 800CE0A4 30CFFFFF */  andi       $t7, $a2, 0xFFFF
/* 888A8 800CE0A8 8E450008 */  lw         $a1, 0x8($s2)
/* 888AC 800CE0AC AFA00010 */  sw         $zero, 0x10($sp)
/* 888B0 800CE0B0 01E03025 */  or         $a2, $t7, $zero
/* 888B4 800CE0B4 0C033BE8 */  jal        func_800CEFA0
/* 888B8 800CE0B8 02203825 */   or        $a3, $s1, $zero
/* 888BC 800CE0BC 26100001 */  addiu      $s0, $s0, 0x1
/* 888C0 800CE0C0 1613FFF4 */  bne        $s0, $s3, .L800CE094
/* 888C4 800CE0C4 26310020 */   addiu     $s1, $s1, 0x20
/* 888C8 800CE0C8 10000011 */  b          .L800CE110
/* 888CC 800CE0CC 00001025 */   or        $v0, $zero, $zero
.L800CE0D0:
/* 888D0 800CE0D0 8FB10054 */  lw         $s1, 0x54($sp)
/* 888D4 800CE0D4 24130008 */  addiu      $s3, $zero, 0x8
.L800CE0D8:
/* 888D8 800CE0D8 8E590058 */  lw         $t9, 0x58($s2)
/* 888DC 800CE0DC 8E440004 */  lw         $a0, 0x4($s2)
/* 888E0 800CE0E0 0334C021 */  addu       $t8, $t9, $s4
/* 888E4 800CE0E4 03103021 */  addu       $a2, $t8, $s0
/* 888E8 800CE0E8 30C9FFFF */  andi       $t1, $a2, 0xFFFF
/* 888EC 800CE0EC 8E450008 */  lw         $a1, 0x8($s2)
/* 888F0 800CE0F0 AFA00010 */  sw         $zero, 0x10($sp)
/* 888F4 800CE0F4 01203025 */  or         $a2, $t1, $zero
/* 888F8 800CE0F8 0C033BE8 */  jal        func_800CEFA0
/* 888FC 800CE0FC 02203825 */   or        $a3, $s1, $zero
/* 88900 800CE100 26100001 */  addiu      $s0, $s0, 0x1
/* 88904 800CE104 1613FFF4 */  bne        $s0, $s3, .L800CE0D8
/* 88908 800CE108 26310020 */   addiu     $s1, $s1, 0x20
/* 8890C 800CE10C 00001025 */  or         $v0, $zero, $zero
.L800CE110:
/* 88910 800CE110 8FBF0034 */  lw         $ra, 0x34($sp)
.L800CE114:
/* 88914 800CE114 8FB00020 */  lw         $s0, 0x20($sp)
/* 88918 800CE118 8FB10024 */  lw         $s1, 0x24($sp)
/* 8891C 800CE11C 8FB20028 */  lw         $s2, 0x28($sp)
/* 88920 800CE120 8FB3002C */  lw         $s3, 0x2C($sp)
/* 88924 800CE124 8FB40030 */  lw         $s4, 0x30($sp)
/* 88928 800CE128 03E00008 */  jr         $ra
/* 8892C 800CE12C 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_800CE130
/* 88930 800CE130 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 88934 800CE134 AFB00020 */  sw         $s0, 0x20($sp)
/* 88938 800CE138 00808025 */  or         $s0, $a0, $zero
/* 8893C 800CE13C AFBF0024 */  sw         $ra, 0x24($sp)
/* 88940 800CE140 27A20038 */  addiu      $v0, $sp, 0x38
/* 88944 800CE144 27A30058 */  addiu      $v1, $sp, 0x58
.L800CE148:
/* 88948 800CE148 920E0065 */  lbu        $t6, 0x65($s0)
/* 8894C 800CE14C 24420004 */  addiu      $v0, $v0, 0x4
/* 88950 800CE150 A04EFFFC */  sb         $t6, -0x4($v0)
/* 88954 800CE154 920F0065 */  lbu        $t7, 0x65($s0)
/* 88958 800CE158 00000000 */  nop
/* 8895C 800CE15C A04FFFFD */  sb         $t7, -0x3($v0)
/* 88960 800CE160 92180065 */  lbu        $t8, 0x65($s0)
/* 88964 800CE164 00000000 */  nop
/* 88968 800CE168 A058FFFE */  sb         $t8, -0x2($v0)
/* 8896C 800CE16C 92190065 */  lbu        $t9, 0x65($s0)
/* 88970 800CE170 1443FFF5 */  bne        $v0, $v1, .L800CE148
/* 88974 800CE174 A059FFFF */   sb        $t9, -0x1($v0)
/* 88978 800CE178 8E040004 */  lw         $a0, 0x4($s0)
/* 8897C 800CE17C 8E050008 */  lw         $a1, 0x8($s0)
/* 88980 800CE180 AFA00010 */  sw         $zero, 0x10($sp)
/* 88984 800CE184 24060400 */  addiu      $a2, $zero, 0x400
/* 88988 800CE188 0C033BE8 */  jal        func_800CEFA0
/* 8898C 800CE18C 27A70038 */   addiu     $a3, $sp, 0x38
/* 88990 800CE190 8FBF0024 */  lw         $ra, 0x24($sp)
/* 88994 800CE194 8FB00020 */  lw         $s0, 0x20($sp)
/* 88998 800CE198 03E00008 */  jr         $ra
/* 8899C 800CE19C 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_800CE1A0
/* 889A0 800CE1A0 27BDFB38 */  addiu      $sp, $sp, -0x4C8
/* 889A4 800CE1A4 AFBF0044 */  sw         $ra, 0x44($sp)
/* 889A8 800CE1A8 AFB20028 */  sw         $s2, 0x28($sp)
/* 889AC 800CE1AC 00809025 */  or         $s2, $a0, $zero
/* 889B0 800CE1B0 AFBE0040 */  sw         $fp, 0x40($sp)
/* 889B4 800CE1B4 AFB7003C */  sw         $s7, 0x3C($sp)
/* 889B8 800CE1B8 AFB60038 */  sw         $s6, 0x38($sp)
/* 889BC 800CE1BC AFB50034 */  sw         $s5, 0x34($sp)
/* 889C0 800CE1C0 AFB40030 */  sw         $s4, 0x30($sp)
/* 889C4 800CE1C4 AFB3002C */  sw         $s3, 0x2C($sp)
/* 889C8 800CE1C8 AFB10024 */  sw         $s1, 0x24($sp)
/* 889CC 800CE1CC AFB00020 */  sw         $s0, 0x20($sp)
/* 889D0 800CE1D0 0C03375F */  jal        func_800CDD7C
/* 889D4 800CE1D4 AFA00074 */   sw        $zero, 0x74($sp)
/* 889D8 800CE1D8 24010002 */  addiu      $at, $zero, 0x2
/* 889DC 800CE1DC 14410004 */  bne        $v0, $at, .L800CE1F0
/* 889E0 800CE1E0 00401825 */   or        $v1, $v0, $zero
/* 889E4 800CE1E4 0C0336DE */  jal        func_800CDB78
/* 889E8 800CE1E8 02402025 */   or        $a0, $s2, $zero
/* 889EC 800CE1EC 00401825 */  or         $v1, $v0, $zero
.L800CE1F0:
/* 889F0 800CE1F0 10400003 */  beqz       $v0, .L800CE200
/* 889F4 800CE1F4 27B60078 */   addiu     $s6, $sp, 0x78
/* 889F8 800CE1F8 10000158 */  b          .L800CE75C
/* 889FC 800CE1FC 00601025 */   or        $v0, $v1, $zero
.L800CE200:
/* 88A00 800CE200 02402025 */  or         $a0, $s2, $zero
/* 88A04 800CE204 0C0339E3 */  jal        func_800CE78C
/* 88A08 800CE208 02C02825 */   or        $a1, $s6, $zero
/* 88A0C 800CE20C 10400003 */  beqz       $v0, .L800CE21C
/* 88A10 800CE210 00000000 */   nop
/* 88A14 800CE214 10000152 */  b          .L800CE760
/* 88A18 800CE218 8FBF0044 */   lw        $ra, 0x44($sp)
.L800CE21C:
/* 88A1C 800CE21C 8E420050 */  lw         $v0, 0x50($s2)
/* 88A20 800CE220 0000A025 */  or         $s4, $zero, $zero
/* 88A24 800CE224 184000A9 */  blez       $v0, .L800CE4CC
/* 88A28 800CE228 241E0003 */   addiu     $fp, $zero, 0x3
/* 88A2C 800CE22C 27B7029C */  addiu      $s7, $sp, 0x29C
/* 88A30 800CE230 27B302BC */  addiu      $s3, $sp, 0x2BC
/* 88A34 800CE234 27B104BC */  addiu      $s1, $sp, 0x4BC
.L800CE238:
/* 88A38 800CE238 8E4E005C */  lw         $t6, 0x5C($s2)
/* 88A3C 800CE23C 8E440004 */  lw         $a0, 0x4($s2)
/* 88A40 800CE240 01D43021 */  addu       $a2, $t6, $s4
/* 88A44 800CE244 30CFFFFF */  andi       $t7, $a2, 0xFFFF
/* 88A48 800CE248 8E450008 */  lw         $a1, 0x8($s2)
/* 88A4C 800CE24C 01E03025 */  or         $a2, $t7, $zero
/* 88A50 800CE250 0C033B04 */  jal        func_800CEC10
/* 88A54 800CE254 02E03825 */   or        $a3, $s7, $zero
/* 88A58 800CE258 10400003 */  beqz       $v0, .L800CE268
/* 88A5C 800CE25C 00000000 */   nop
/* 88A60 800CE260 1000013F */  b          .L800CE760
/* 88A64 800CE264 8FBF0044 */   lw        $ra, 0x44($sp)
.L800CE268:
/* 88A68 800CE268 97A202A0 */  lhu        $v0, 0x2A0($sp)
/* 88A6C 800CE26C 8FB8029C */  lw         $t8, 0x29C($sp)
/* 88A70 800CE270 1040006A */  beqz       $v0, .L800CE41C
/* 88A74 800CE274 00000000 */   nop
/* 88A78 800CE278 13000068 */  beqz       $t8, .L800CE41C
/* 88A7C 800CE27C 27B902A2 */   addiu     $t9, $sp, 0x2A2
/* 88A80 800CE280 97210000 */  lhu        $at, 0x0($t9)
/* 88A84 800CE284 00002025 */  or         $a0, $zero, $zero
/* 88A88 800CE288 A6210000 */  sh         $at, 0x0($s1)
/* 88A8C 800CE28C 8E4C0060 */  lw         $t4, 0x60($s2)
/* 88A90 800CE290 97AB04BC */  lhu        $t3, 0x4BC($sp)
/* 88A94 800CE294 00008025 */  or         $s0, $zero, $zero
/* 88A98 800CE298 016C082A */  slt        $at, $t3, $t4
/* 88A9C 800CE29C 14200038 */  bnez       $at, .L800CE380
/* 88AA0 800CE2A0 241500FF */   addiu     $s5, $zero, 0xFF
/* 88AA4 800CE2A4 93AD04BC */  lbu        $t5, 0x4BC($sp)
/* 88AA8 800CE2A8 924E0064 */  lbu        $t6, 0x64($s2)
/* 88AAC 800CE2AC 93AF04BD */  lbu        $t7, 0x4BD($sp)
/* 88AB0 800CE2B0 01AE082A */  slt        $at, $t5, $t6
/* 88AB4 800CE2B4 10200032 */  beqz       $at, .L800CE380
/* 88AB8 800CE2B8 00000000 */   nop
/* 88ABC 800CE2BC 19E00030 */  blez       $t7, .L800CE380
/* 88AC0 800CE2C0 29E10080 */   slti      $at, $t7, 0x80
/* 88AC4 800CE2C4 1020002E */  beqz       $at, .L800CE380
/* 88AC8 800CE2C8 00000000 */   nop
/* 88ACC 800CE2CC 93B804BC */  lbu        $t8, 0x4BC($sp)
.L800CE2D0:
/* 88AD0 800CE2D0 02402025 */  or         $a0, $s2, $zero
/* 88AD4 800CE2D4 1315000B */  beq        $t8, $s5, .L800CE304
/* 88AD8 800CE2D8 02602825 */   or        $a1, $s3, $zero
/* 88ADC 800CE2DC 0300A825 */  or         $s5, $t8, $zero
/* 88AE0 800CE2E0 00003025 */  or         $a2, $zero, $zero
/* 88AE4 800CE2E4 0C0337A5 */  jal        func_800CDE94
/* 88AE8 800CE2E8 330700FF */   andi      $a3, $t8, 0xFF
/* 88AEC 800CE2EC 10400005 */  beqz       $v0, .L800CE304
/* 88AF0 800CE2F0 00000000 */   nop
/* 88AF4 800CE2F4 105E0003 */  beq        $v0, $fp, .L800CE304
/* 88AF8 800CE2F8 00000000 */   nop
/* 88AFC 800CE2FC 10000118 */  b          .L800CE760
/* 88B00 800CE300 8FBF0044 */   lw        $ra, 0x44($sp)
.L800CE304:
/* 88B04 800CE304 96210000 */  lhu        $at, 0x0($s1)
/* 88B08 800CE308 02402025 */  or         $a0, $s2, $zero
/* 88B0C 800CE30C A7A10004 */  sh         $at, 0x4($sp)
/* 88B10 800CE310 8FA50004 */  lw         $a1, 0x4($sp)
/* 88B14 800CE314 0C033A9C */  jal        func_800CEA70
/* 88B18 800CE318 02C03025 */   or        $a2, $s6, $zero
/* 88B1C 800CE31C 00502023 */  subu       $a0, $v0, $s0
/* 88B20 800CE320 14800017 */  bnez       $a0, .L800CE380
/* 88B24 800CE324 00000000 */   nop
/* 88B28 800CE328 93AA04BD */  lbu        $t2, 0x4BD($sp)
/* 88B2C 800CE32C 24100001 */  addiu      $s0, $zero, 0x1
/* 88B30 800CE330 000A5840 */  sll        $t3, $t2, 1
/* 88B34 800CE334 026B6021 */  addu       $t4, $s3, $t3
/* 88B38 800CE338 95810000 */  lhu        $at, 0x0($t4)
/* 88B3C 800CE33C 00000000 */  nop
/* 88B40 800CE340 A6210000 */  sh         $at, 0x0($s1)
/* 88B44 800CE344 8E580060 */  lw         $t8, 0x60($s2)
/* 88B48 800CE348 97AF04BC */  lhu        $t7, 0x4BC($sp)
/* 88B4C 800CE34C 93A904BC */  lbu        $t1, 0x4BC($sp)
/* 88B50 800CE350 01F8082A */  slt        $at, $t7, $t8
/* 88B54 800CE354 1420000A */  bnez       $at, .L800CE380
/* 88B58 800CE358 00000000 */   nop
/* 88B5C 800CE35C 92590064 */  lbu        $t9, 0x64($s2)
/* 88B60 800CE360 93AA04BD */  lbu        $t2, 0x4BD($sp)
/* 88B64 800CE364 0139082A */  slt        $at, $t1, $t9
/* 88B68 800CE368 10200005 */  beqz       $at, .L800CE380
/* 88B6C 800CE36C 00000000 */   nop
/* 88B70 800CE370 19400003 */  blez       $t2, .L800CE380
/* 88B74 800CE374 29410080 */   slti      $at, $t2, 0x80
/* 88B78 800CE378 1420FFD5 */  bnez       $at, .L800CE2D0
/* 88B7C 800CE37C 93B804BC */   lbu       $t8, 0x4BC($sp)
.L800CE380:
/* 88B80 800CE380 14800005 */  bnez       $a0, .L800CE398
/* 88B84 800CE384 00000000 */   nop
/* 88B88 800CE388 97AB04BC */  lhu        $t3, 0x4BC($sp)
/* 88B8C 800CE38C 24010001 */  addiu      $at, $zero, 0x1
/* 88B90 800CE390 11610048 */  beq        $t3, $at, .L800CE4B4
/* 88B94 800CE394 00000000 */   nop
.L800CE398:
/* 88B98 800CE398 A7A002A0 */  sh         $zero, 0x2A0($sp)
/* 88B9C 800CE39C AFA0029C */  sw         $zero, 0x29C($sp)
/* 88BA0 800CE3A0 A7A002A2 */  sh         $zero, 0x2A2($sp)
/* 88BA4 800CE3A4 A3A002A4 */  sb         $zero, 0x2A4($sp)
/* 88BA8 800CE3A8 A7A002A6 */  sh         $zero, 0x2A6($sp)
/* 88BAC 800CE3AC 924D0065 */  lbu        $t5, 0x65($s2)
/* 88BB0 800CE3B0 02402025 */  or         $a0, $s2, $zero
/* 88BB4 800CE3B4 11A00007 */  beqz       $t5, .L800CE3D4
/* 88BB8 800CE3B8 00000000 */   nop
/* 88BBC 800CE3BC 0C03384C */  jal        func_800CE130
/* 88BC0 800CE3C0 A2400065 */   sb        $zero, 0x65($s2)
/* 88BC4 800CE3C4 10400003 */  beqz       $v0, .L800CE3D4
/* 88BC8 800CE3C8 00000000 */   nop
/* 88BCC 800CE3CC 100000E4 */  b          .L800CE760
/* 88BD0 800CE3D0 8FBF0044 */   lw        $ra, 0x44($sp)
.L800CE3D4:
/* 88BD4 800CE3D4 8E4C005C */  lw         $t4, 0x5C($s2)
/* 88BD8 800CE3D8 8E440004 */  lw         $a0, 0x4($s2)
/* 88BDC 800CE3DC 01943021 */  addu       $a2, $t4, $s4
/* 88BE0 800CE3E0 30CEFFFF */  andi       $t6, $a2, 0xFFFF
/* 88BE4 800CE3E4 8E450008 */  lw         $a1, 0x8($s2)
/* 88BE8 800CE3E8 AFA00010 */  sw         $zero, 0x10($sp)
/* 88BEC 800CE3EC 01C03025 */  or         $a2, $t6, $zero
/* 88BF0 800CE3F0 0C033BE8 */  jal        func_800CEFA0
/* 88BF4 800CE3F4 02E03825 */   or        $a3, $s7, $zero
/* 88BF8 800CE3F8 10400004 */  beqz       $v0, .L800CE40C
/* 88BFC 800CE3FC 8FAF0074 */   lw        $t7, 0x74($sp)
/* 88C00 800CE400 100000D7 */  b          .L800CE760
/* 88C04 800CE404 8FBF0044 */   lw        $ra, 0x44($sp)
/* 88C08 800CE408 8FAF0074 */  lw         $t7, 0x74($sp)
.L800CE40C:
/* 88C0C 800CE40C 00000000 */  nop
/* 88C10 800CE410 25F80001 */  addiu      $t8, $t7, 0x1
/* 88C14 800CE414 10000027 */  b          .L800CE4B4
/* 88C18 800CE418 AFB80074 */   sw        $t8, 0x74($sp)
.L800CE41C:
/* 88C1C 800CE41C 14400005 */  bnez       $v0, .L800CE434
/* 88C20 800CE420 00000000 */   nop
/* 88C24 800CE424 8FA9029C */  lw         $t1, 0x29C($sp)
/* 88C28 800CE428 00000000 */  nop
/* 88C2C 800CE42C 11200021 */  beqz       $t1, .L800CE4B4
/* 88C30 800CE430 00000000 */   nop
.L800CE434:
/* 88C34 800CE434 A7A002A0 */  sh         $zero, 0x2A0($sp)
/* 88C38 800CE438 AFA0029C */  sw         $zero, 0x29C($sp)
/* 88C3C 800CE43C A7A002A2 */  sh         $zero, 0x2A2($sp)
/* 88C40 800CE440 A3A002A4 */  sb         $zero, 0x2A4($sp)
/* 88C44 800CE444 A7A002A6 */  sh         $zero, 0x2A6($sp)
/* 88C48 800CE448 92590065 */  lbu        $t9, 0x65($s2)
/* 88C4C 800CE44C 02402025 */  or         $a0, $s2, $zero
/* 88C50 800CE450 13200007 */  beqz       $t9, .L800CE470
/* 88C54 800CE454 00000000 */   nop
/* 88C58 800CE458 0C03384C */  jal        func_800CE130
/* 88C5C 800CE45C A2400065 */   sb        $zero, 0x65($s2)
/* 88C60 800CE460 10400003 */  beqz       $v0, .L800CE470
/* 88C64 800CE464 00000000 */   nop
/* 88C68 800CE468 100000BD */  b          .L800CE760
/* 88C6C 800CE46C 8FBF0044 */   lw        $ra, 0x44($sp)
.L800CE470:
/* 88C70 800CE470 8E4A005C */  lw         $t2, 0x5C($s2)
/* 88C74 800CE474 8E440004 */  lw         $a0, 0x4($s2)
/* 88C78 800CE478 01543021 */  addu       $a2, $t2, $s4
/* 88C7C 800CE47C 30CBFFFF */  andi       $t3, $a2, 0xFFFF
/* 88C80 800CE480 8E450008 */  lw         $a1, 0x8($s2)
/* 88C84 800CE484 AFA00010 */  sw         $zero, 0x10($sp)
/* 88C88 800CE488 01603025 */  or         $a2, $t3, $zero
/* 88C8C 800CE48C 0C033BE8 */  jal        func_800CEFA0
/* 88C90 800CE490 02E03825 */   or        $a3, $s7, $zero
/* 88C94 800CE494 10400004 */  beqz       $v0, .L800CE4A8
/* 88C98 800CE498 8FAD0074 */   lw        $t5, 0x74($sp)
/* 88C9C 800CE49C 100000B0 */  b          .L800CE760
/* 88CA0 800CE4A0 8FBF0044 */   lw        $ra, 0x44($sp)
/* 88CA4 800CE4A4 8FAD0074 */  lw         $t5, 0x74($sp)
.L800CE4A8:
/* 88CA8 800CE4A8 00000000 */  nop
/* 88CAC 800CE4AC 25AC0001 */  addiu      $t4, $t5, 0x1
/* 88CB0 800CE4B0 AFAC0074 */  sw         $t4, 0x74($sp)
.L800CE4B4:
/* 88CB4 800CE4B4 8E420050 */  lw         $v0, 0x50($s2)
/* 88CB8 800CE4B8 26940001 */  addiu      $s4, $s4, 0x1
/* 88CBC 800CE4BC 0282082A */  slt        $at, $s4, $v0
/* 88CC0 800CE4C0 1420FF5D */  bnez       $at, .L800CE238
/* 88CC4 800CE4C4 00000000 */   nop
/* 88CC8 800CE4C8 0000A025 */  or         $s4, $zero, $zero
.L800CE4CC:
/* 88CCC 800CE4CC 27B302BC */  addiu      $s3, $sp, 0x2BC
/* 88CD0 800CE4D0 27B7029C */  addiu      $s7, $sp, 0x29C
/* 88CD4 800CE4D4 18400022 */  blez       $v0, .L800CE560
/* 88CD8 800CE4D8 241E0003 */   addiu     $fp, $zero, 0x3
.L800CE4DC:
/* 88CDC 800CE4DC 8E4E005C */  lw         $t6, 0x5C($s2)
/* 88CE0 800CE4E0 8E440004 */  lw         $a0, 0x4($s2)
/* 88CE4 800CE4E4 01D43021 */  addu       $a2, $t6, $s4
/* 88CE8 800CE4E8 30CFFFFF */  andi       $t7, $a2, 0xFFFF
/* 88CEC 800CE4EC 8E450008 */  lw         $a1, 0x8($s2)
/* 88CF0 800CE4F0 01E03025 */  or         $a2, $t7, $zero
/* 88CF4 800CE4F4 0C033B04 */  jal        func_800CEC10
/* 88CF8 800CE4F8 02E03825 */   or        $a3, $s7, $zero
/* 88CFC 800CE4FC 10400003 */  beqz       $v0, .L800CE50C
/* 88D00 800CE500 0014C040 */   sll       $t8, $s4, 1
/* 88D04 800CE504 10000096 */  b          .L800CE760
/* 88D08 800CE508 8FBF0044 */   lw        $ra, 0x44($sp)
.L800CE50C:
/* 88D0C 800CE50C 97B902A0 */  lhu        $t9, 0x2A0($sp)
/* 88D10 800CE510 27A9027C */  addiu      $t1, $sp, 0x27C
/* 88D14 800CE514 1320000C */  beqz       $t9, .L800CE548
/* 88D18 800CE518 03092021 */   addu      $a0, $t8, $t1
/* 88D1C 800CE51C 8FAA029C */  lw         $t2, 0x29C($sp)
/* 88D20 800CE520 97AB02A2 */  lhu        $t3, 0x2A2($sp)
/* 88D24 800CE524 11400008 */  beqz       $t2, .L800CE548
/* 88D28 800CE528 00000000 */   nop
/* 88D2C 800CE52C 964D0062 */  lhu        $t5, 0x62($s2)
/* 88D30 800CE530 00000000 */  nop
/* 88D34 800CE534 016D082A */  slt        $at, $t3, $t5
/* 88D38 800CE538 14200003 */  bnez       $at, .L800CE548
/* 88D3C 800CE53C 00000000 */   nop
/* 88D40 800CE540 10000002 */  b          .L800CE54C
/* 88D44 800CE544 A48B0000 */   sh        $t3, 0x0($a0)
.L800CE548:
/* 88D48 800CE548 A4800000 */  sh         $zero, 0x0($a0)
.L800CE54C:
/* 88D4C 800CE54C 8E4C0050 */  lw         $t4, 0x50($s2)
/* 88D50 800CE550 26940001 */  addiu      $s4, $s4, 0x1
/* 88D54 800CE554 028C082A */  slt        $at, $s4, $t4
/* 88D58 800CE558 1420FFE0 */  bnez       $at, .L800CE4DC
/* 88D5C 800CE55C 00000000 */   nop
.L800CE560:
/* 88D60 800CE560 924E0064 */  lbu        $t6, 0x64($s2)
/* 88D64 800CE564 0000A825 */  or         $s5, $zero, $zero
/* 88D68 800CE568 19C0006F */  blez       $t6, .L800CE728
/* 88D6C 800CE56C 27B704BC */   addiu     $s7, $sp, 0x4BC
/* 88D70 800CE570 24160003 */  addiu      $s6, $zero, 0x3
/* 88D74 800CE574 27B103BC */  addiu      $s1, $sp, 0x3BC
/* 88D78 800CE578 27B00060 */  addiu      $s0, $sp, 0x60
.L800CE57C:
/* 88D7C 800CE57C 02402025 */  or         $a0, $s2, $zero
/* 88D80 800CE580 02602825 */  or         $a1, $s3, $zero
/* 88D84 800CE584 00003025 */  or         $a2, $zero, $zero
/* 88D88 800CE588 0C0337A5 */  jal        func_800CDE94
/* 88D8C 800CE58C 32A700FF */   andi      $a3, $s5, 0xFF
/* 88D90 800CE590 10400005 */  beqz       $v0, .L800CE5A8
/* 88D94 800CE594 02A02825 */   or        $a1, $s5, $zero
/* 88D98 800CE598 105E0003 */  beq        $v0, $fp, .L800CE5A8
/* 88D9C 800CE59C 00000000 */   nop
/* 88DA0 800CE5A0 1000006F */  b          .L800CE760
/* 88DA4 800CE5A4 8FBF0044 */   lw        $ra, 0x44($sp)
.L800CE5A8:
/* 88DA8 800CE5A8 1AA00003 */  blez       $s5, .L800CE5B8
/* 88DAC 800CE5AC 0000A025 */   or        $s4, $zero, $zero
/* 88DB0 800CE5B0 10000003 */  b          .L800CE5C0
/* 88DB4 800CE5B4 24060001 */   addiu     $a2, $zero, 0x1
.L800CE5B8:
/* 88DB8 800CE5B8 8E460060 */  lw         $a2, 0x60($s2)
/* 88DBC 800CE5BC 00000000 */  nop
.L800CE5C0:
/* 88DC0 800CE5C0 18C0001C */  blez       $a2, .L800CE634
/* 88DC4 800CE5C4 30C80003 */   andi      $t0, $a2, 0x3
/* 88DC8 800CE5C8 1100000B */  beqz       $t0, .L800CE5F8
/* 88DCC 800CE5CC 01002025 */   or        $a0, $t0, $zero
/* 88DD0 800CE5D0 00143840 */  sll        $a3, $s4, 1
/* 88DD4 800CE5D4 02271821 */  addu       $v1, $s1, $a3
/* 88DD8 800CE5D8 02671021 */  addu       $v0, $s3, $a3
.L800CE5DC:
/* 88DDC 800CE5DC 944F0000 */  lhu        $t7, 0x0($v0)
/* 88DE0 800CE5E0 26940001 */  addiu      $s4, $s4, 0x1
/* 88DE4 800CE5E4 24630002 */  addiu      $v1, $v1, 0x2
/* 88DE8 800CE5E8 24420002 */  addiu      $v0, $v0, 0x2
/* 88DEC 800CE5EC 1494FFFB */  bne        $a0, $s4, .L800CE5DC
/* 88DF0 800CE5F0 A46FFFFE */   sh        $t7, -0x2($v1)
/* 88DF4 800CE5F4 1286000F */  beq        $s4, $a2, .L800CE634
.L800CE5F8:
/* 88DF8 800CE5F8 00143840 */   sll       $a3, $s4, 1
/* 88DFC 800CE5FC 02271821 */  addu       $v1, $s1, $a3
/* 88E00 800CE600 02671021 */  addu       $v0, $s3, $a3
.L800CE604:
/* 88E04 800CE604 94490002 */  lhu        $t1, 0x2($v0)
/* 88E08 800CE608 94590004 */  lhu        $t9, 0x4($v0)
/* 88E0C 800CE60C 944A0006 */  lhu        $t2, 0x6($v0)
/* 88E10 800CE610 94580000 */  lhu        $t8, 0x0($v0)
/* 88E14 800CE614 26940004 */  addiu      $s4, $s4, 0x4
/* 88E18 800CE618 24630008 */  addiu      $v1, $v1, 0x8
/* 88E1C 800CE61C 24420008 */  addiu      $v0, $v0, 0x8
/* 88E20 800CE620 A469FFFA */  sh         $t1, -0x6($v1)
/* 88E24 800CE624 A479FFFC */  sh         $t9, -0x4($v1)
/* 88E28 800CE628 A46AFFFE */  sh         $t2, -0x2($v1)
/* 88E2C 800CE62C 1686FFF5 */  bne        $s4, $a2, .L800CE604
/* 88E30 800CE630 A478FFF8 */   sh        $t8, -0x8($v1)
.L800CE634:
/* 88E34 800CE634 2A810080 */  slti       $at, $s4, 0x80
/* 88E38 800CE638 10200007 */  beqz       $at, .L800CE658
/* 88E3C 800CE63C 24060001 */   addiu     $a2, $zero, 0x1
/* 88E40 800CE640 00146840 */  sll        $t5, $s4, 1
/* 88E44 800CE644 022D1821 */  addu       $v1, $s1, $t5
.L800CE648:
/* 88E48 800CE648 24630002 */  addiu      $v1, $v1, 0x2
/* 88E4C 800CE64C 0077082B */  sltu       $at, $v1, $s7
/* 88E50 800CE650 1420FFFD */  bnez       $at, .L800CE648
/* 88E54 800CE654 A476FFFE */   sh        $s6, -0x2($v1)
.L800CE658:
/* 88E58 800CE658 8E4B0050 */  lw         $t3, 0x50($s2)
/* 88E5C 800CE65C 0000A025 */  or         $s4, $zero, $zero
/* 88E60 800CE660 19600025 */  blez       $t3, .L800CE6F8
/* 88E64 800CE664 32A700FF */   andi      $a3, $s5, 0xFF
/* 88E68 800CE668 27A4027C */  addiu      $a0, $sp, 0x27C
.L800CE66C:
/* 88E6C 800CE66C 908C0000 */  lbu        $t4, 0x0($a0)
/* 88E70 800CE670 00000000 */  nop
/* 88E74 800CE674 14AC001B */  bne        $a1, $t4, .L800CE6E4
/* 88E78 800CE678 00000000 */   nop
/* 88E7C 800CE67C 948E0000 */  lhu        $t6, 0x0($a0)
/* 88E80 800CE680 964F0062 */  lhu        $t7, 0x62($s2)
/* 88E84 800CE684 00000000 */  nop
/* 88E88 800CE688 01CF082A */  slt        $at, $t6, $t7
/* 88E8C 800CE68C 14200015 */  bnez       $at, .L800CE6E4
/* 88E90 800CE690 00000000 */   nop
.L800CE694:
/* 88E94 800CE694 90830001 */  lbu        $v1, 0x1($a0)
/* 88E98 800CE698 00000000 */  nop
/* 88E9C 800CE69C 00031040 */  sll        $v0, $v1, 1
/* 88EA0 800CE6A0 0262C021 */  addu       $t8, $s3, $v0
/* 88EA4 800CE6A4 97010000 */  lhu        $at, 0x0($t8)
/* 88EA8 800CE6A8 02225021 */  addu       $t2, $s1, $v0
/* 88EAC 800CE6AC A6010000 */  sh         $at, 0x0($s0)
/* 88EB0 800CE6B0 A5410000 */  sh         $at, 0x0($t2)
/* 88EB4 800CE6B4 96010000 */  lhu        $at, 0x0($s0)
/* 88EB8 800CE6B8 00000000 */  nop
/* 88EBC 800CE6BC A4810000 */  sh         $at, 0x0($a0)
/* 88EC0 800CE6C0 908F0000 */  lbu        $t7, 0x0($a0)
/* 88EC4 800CE6C4 00000000 */  nop
/* 88EC8 800CE6C8 14AF0006 */  bne        $a1, $t7, .L800CE6E4
/* 88ECC 800CE6CC 00000000 */   nop
/* 88ED0 800CE6D0 96580062 */  lhu        $t8, 0x62($s2)
/* 88ED4 800CE6D4 3029FFFF */  andi       $t1, $at, 0xFFFF
/* 88ED8 800CE6D8 0138082A */  slt        $at, $t1, $t8
/* 88EDC 800CE6DC 1020FFED */  beqz       $at, .L800CE694
/* 88EE0 800CE6E0 00000000 */   nop
.L800CE6E4:
/* 88EE4 800CE6E4 8E590050 */  lw         $t9, 0x50($s2)
/* 88EE8 800CE6E8 26940001 */  addiu      $s4, $s4, 0x1
/* 88EEC 800CE6EC 0299082A */  slt        $at, $s4, $t9
/* 88EF0 800CE6F0 1420FFDE */  bnez       $at, .L800CE66C
/* 88EF4 800CE6F4 24840002 */   addiu     $a0, $a0, 0x2
.L800CE6F8:
/* 88EF8 800CE6F8 02402025 */  or         $a0, $s2, $zero
/* 88EFC 800CE6FC 0C0337A5 */  jal        func_800CDE94
/* 88F00 800CE700 02202825 */   or        $a1, $s1, $zero
/* 88F04 800CE704 10400003 */  beqz       $v0, .L800CE714
/* 88F08 800CE708 26B50001 */   addiu     $s5, $s5, 0x1
/* 88F0C 800CE70C 10000014 */  b          .L800CE760
/* 88F10 800CE710 8FBF0044 */   lw        $ra, 0x44($sp)
.L800CE714:
/* 88F14 800CE714 924A0064 */  lbu        $t2, 0x64($s2)
/* 88F18 800CE718 32AD00FF */  andi       $t5, $s5, 0xFF
/* 88F1C 800CE71C 01AA082A */  slt        $at, $t5, $t2
/* 88F20 800CE720 1420FF96 */  bnez       $at, .L800CE57C
/* 88F24 800CE724 01A0A825 */   or        $s5, $t5, $zero
.L800CE728:
/* 88F28 800CE728 8FAB0074 */  lw         $t3, 0x74($sp)
/* 88F2C 800CE72C 00001025 */  or         $v0, $zero, $zero
/* 88F30 800CE730 11600006 */  beqz       $t3, .L800CE74C
/* 88F34 800CE734 00000000 */   nop
/* 88F38 800CE738 8E4C0000 */  lw         $t4, 0x0($s2)
/* 88F3C 800CE73C 00000000 */  nop
/* 88F40 800CE740 358E0002 */  ori        $t6, $t4, 0x2
/* 88F44 800CE744 10000005 */  b          .L800CE75C
/* 88F48 800CE748 AE4E0000 */   sw        $t6, 0x0($s2)
.L800CE74C:
/* 88F4C 800CE74C 8E4F0000 */  lw         $t7, 0x0($s2)
/* 88F50 800CE750 2401FFFD */  addiu      $at, $zero, -0x3
/* 88F54 800CE754 01E14824 */  and        $t1, $t7, $at
/* 88F58 800CE758 AE490000 */  sw         $t1, 0x0($s2)
.L800CE75C:
/* 88F5C 800CE75C 8FBF0044 */  lw         $ra, 0x44($sp)
.L800CE760:
/* 88F60 800CE760 8FB00020 */  lw         $s0, 0x20($sp)
/* 88F64 800CE764 8FB10024 */  lw         $s1, 0x24($sp)
/* 88F68 800CE768 8FB20028 */  lw         $s2, 0x28($sp)
/* 88F6C 800CE76C 8FB3002C */  lw         $s3, 0x2C($sp)
/* 88F70 800CE770 8FB40030 */  lw         $s4, 0x30($sp)
/* 88F74 800CE774 8FB50034 */  lw         $s5, 0x34($sp)
/* 88F78 800CE778 8FB60038 */  lw         $s6, 0x38($sp)
/* 88F7C 800CE77C 8FB7003C */  lw         $s7, 0x3C($sp)
/* 88F80 800CE780 8FBE0040 */  lw         $fp, 0x40($sp)
/* 88F84 800CE784 03E00008 */  jr         $ra
/* 88F88 800CE788 27BD04C8 */   addiu     $sp, $sp, 0x4C8

glabel func_800CE78C
/* 88F8C 800CE78C 27BDFE98 */  addiu      $sp, $sp, -0x168
/* 88F90 800CE790 AFB30024 */  sw         $s3, 0x24($sp)
/* 88F94 800CE794 00809825 */  or         $s3, $a0, $zero
/* 88F98 800CE798 AFB40028 */  sw         $s4, 0x28($sp)
/* 88F9C 800CE79C 00A0A025 */  or         $s4, $a1, $zero
/* 88FA0 800CE7A0 AFBF003C */  sw         $ra, 0x3C($sp)
/* 88FA4 800CE7A4 AFBE0038 */  sw         $fp, 0x38($sp)
/* 88FA8 800CE7A8 AFB70034 */  sw         $s7, 0x34($sp)
/* 88FAC 800CE7AC AFB60030 */  sw         $s6, 0x30($sp)
/* 88FB0 800CE7B0 AFB5002C */  sw         $s5, 0x2C($sp)
/* 88FB4 800CE7B4 AFB20020 */  sw         $s2, 0x20($sp)
/* 88FB8 800CE7B8 AFB1001C */  sw         $s1, 0x1C($sp)
/* 88FBC 800CE7BC AFB00018 */  sw         $s0, 0x18($sp)
/* 88FC0 800CE7C0 24040100 */  addiu      $a0, $zero, 0x100
/* 88FC4 800CE7C4 00001025 */  or         $v0, $zero, $zero
/* 88FC8 800CE7C8 00A01825 */  or         $v1, $a1, $zero
.L800CE7CC:
/* 88FCC 800CE7CC 24420004 */  addiu      $v0, $v0, 0x4
/* 88FD0 800CE7D0 A0600102 */  sb         $zero, 0x102($v1)
/* 88FD4 800CE7D4 A0600103 */  sb         $zero, 0x103($v1)
/* 88FD8 800CE7D8 A0600104 */  sb         $zero, 0x104($v1)
/* 88FDC 800CE7DC 24630004 */  addiu      $v1, $v1, 0x4
/* 88FE0 800CE7E0 1444FFFA */  bne        $v0, $a0, .L800CE7CC
/* 88FE4 800CE7E4 A06000FD */   sb        $zero, 0xFD($v1)
/* 88FE8 800CE7E8 240E00FF */  addiu      $t6, $zero, 0xFF
/* 88FEC 800CE7EC A28E0100 */  sb         $t6, 0x100($s4)
/* 88FF0 800CE7F0 926F0064 */  lbu        $t7, 0x64($s3)
/* 88FF4 800CE7F4 0000B825 */  or         $s7, $zero, $zero
/* 88FF8 800CE7F8 19E00090 */  blez       $t7, .L800CEA3C
/* 88FFC 800CE7FC 00008025 */   or        $s0, $zero, $zero
/* 89000 800CE800 241E0080 */  addiu      $fp, $zero, 0x80
/* 89004 800CE804 27B6015A */  addiu      $s6, $sp, 0x15A
/* 89008 800CE808 27B50058 */  addiu      $s5, $sp, 0x58
/* 8900C 800CE80C 27B20158 */  addiu      $s2, $sp, 0x158
.L800CE810:
/* 89010 800CE810 1A000003 */  blez       $s0, .L800CE820
/* 89014 800CE814 02602025 */   or        $a0, $s3, $zero
/* 89018 800CE818 10000003 */  b          .L800CE828
/* 8901C 800CE81C 24110001 */   addiu     $s1, $zero, 0x1
.L800CE820:
/* 89020 800CE820 8E710060 */  lw         $s1, 0x60($s3)
/* 89024 800CE824 00000000 */  nop
.L800CE828:
/* 89028 800CE828 02A02825 */  or         $a1, $s5, $zero
/* 8902C 800CE82C 00003025 */  or         $a2, $zero, $zero
/* 89030 800CE830 0C0337A5 */  jal        func_800CDE94
/* 89034 800CE834 32E700FF */   andi      $a3, $s7, 0xFF
/* 89038 800CE838 10400005 */  beqz       $v0, .L800CE850
/* 8903C 800CE83C 24010003 */   addiu     $at, $zero, 0x3
/* 89040 800CE840 10410004 */  beq        $v0, $at, .L800CE854
/* 89044 800CE844 2A210080 */   slti      $at, $s1, 0x80
/* 89048 800CE848 1000007E */  b          .L800CEA44
/* 8904C 800CE84C 8FBF003C */   lw        $ra, 0x3C($sp)
.L800CE850:
/* 89050 800CE850 2A210080 */  slti       $at, $s1, 0x80
.L800CE854:
/* 89054 800CE854 10200073 */  beqz       $at, .L800CEA24
/* 89058 800CE858 02201025 */   or        $v0, $s1, $zero
/* 8905C 800CE85C 03D11823 */  subu       $v1, $fp, $s1
/* 89060 800CE860 30780001 */  andi       $t8, $v1, 0x1
/* 89064 800CE864 13000026 */  beqz       $t8, .L800CE900
/* 89068 800CE868 0011C840 */   sll       $t9, $s1, 1
/* 8906C 800CE86C 02B94021 */  addu       $t0, $s5, $t9
/* 89070 800CE870 95010000 */  lhu        $at, 0x0($t0)
/* 89074 800CE874 00000000 */  nop
/* 89078 800CE878 A6410000 */  sh         $at, 0x0($s2)
/* 8907C 800CE87C 8E6C0060 */  lw         $t4, 0x60($s3)
/* 89080 800CE880 97AB0158 */  lhu        $t3, 0x158($sp)
/* 89084 800CE884 93AD0158 */  lbu        $t5, 0x158($sp)
/* 89088 800CE888 016C082A */  slt        $at, $t3, $t4
/* 8908C 800CE88C 1420001B */  bnez       $at, .L800CE8FC
/* 89090 800CE890 26220001 */   addiu     $v0, $s1, 0x1
/* 89094 800CE894 120D0019 */  beq        $s0, $t5, .L800CE8FC
/* 89098 800CE898 26220001 */   addiu     $v0, $s1, 0x1
/* 8909C 800CE89C 93AE0159 */  lbu        $t6, 0x159($sp)
/* 890A0 800CE8A0 240A0001 */  addiu      $t2, $zero, 0x1
/* 890A4 800CE8A4 05C10003 */  bgez       $t6, .L800CE8B4
/* 890A8 800CE8A8 000E7883 */   sra       $t7, $t6, 2
/* 890AC 800CE8AC 25C10003 */  addiu      $at, $t6, 0x3
/* 890B0 800CE8B0 00017883 */  sra        $t7, $at, 2
.L800CE8B4:
/* 890B4 800CE8B4 05A10004 */  bgez       $t5, .L800CE8C8
/* 890B8 800CE8B8 31B80007 */   andi      $t8, $t5, 0x7
/* 890BC 800CE8BC 13000002 */  beqz       $t8, .L800CE8C8
/* 890C0 800CE8C0 00000000 */   nop
/* 890C4 800CE8C4 2718FFF8 */  addiu      $t8, $t8, -0x8
.L800CE8C8:
/* 890C8 800CE8C8 0018C940 */  sll        $t9, $t8, 5
/* 890CC 800CE8CC 01F91821 */  addu       $v1, $t7, $t9
/* 890D0 800CE8D0 02831021 */  addu       $v0, $s4, $v1
/* 890D4 800CE8D4 90490101 */  lbu        $t1, 0x101($v0)
/* 890D8 800CE8D8 06010004 */  bgez       $s0, .L800CE8EC
/* 890DC 800CE8DC 32080007 */   andi      $t0, $s0, 0x7
/* 890E0 800CE8E0 11000002 */  beqz       $t0, .L800CE8EC
/* 890E4 800CE8E4 00000000 */   nop
/* 890E8 800CE8E8 2508FFF8 */  addiu      $t0, $t0, -0x8
.L800CE8EC:
/* 890EC 800CE8EC 010A5804 */  sllv       $t3, $t2, $t0
/* 890F0 800CE8F0 012B6025 */  or         $t4, $t1, $t3
/* 890F4 800CE8F4 A04C0101 */  sb         $t4, 0x101($v0)
/* 890F8 800CE8F8 26220001 */  addiu      $v0, $s1, 0x1
.L800CE8FC:
/* 890FC 800CE8FC 105E0049 */  beq        $v0, $fp, .L800CEA24
.L800CE900:
/* 89100 800CE900 00027040 */   sll       $t6, $v0, 1
/* 89104 800CE904 02AE2821 */  addu       $a1, $s5, $t6
/* 89108 800CE908 24A40002 */  addiu      $a0, $a1, 0x2
.L800CE90C:
/* 8910C 800CE90C 94A10000 */  lhu        $at, 0x0($a1)
/* 89110 800CE910 00000000 */  nop
/* 89114 800CE914 A6410000 */  sh         $at, 0x0($s2)
/* 89118 800CE918 8E790060 */  lw         $t9, 0x60($s3)
/* 8911C 800CE91C 97AF0158 */  lhu        $t7, 0x158($sp)
/* 89120 800CE920 93AA0158 */  lbu        $t2, 0x158($sp)
/* 89124 800CE924 01F9082A */  slt        $at, $t7, $t9
/* 89128 800CE928 1420001A */  bnez       $at, .L800CE994
/* 8912C 800CE92C 00000000 */   nop
/* 89130 800CE930 120A0018 */  beq        $s0, $t2, .L800CE994
/* 89134 800CE934 00000000 */   nop
/* 89138 800CE938 93A80159 */  lbu        $t0, 0x159($sp)
/* 8913C 800CE93C 24180001 */  addiu      $t8, $zero, 0x1
/* 89140 800CE940 05010003 */  bgez       $t0, .L800CE950
/* 89144 800CE944 00084883 */   sra       $t1, $t0, 2
/* 89148 800CE948 25010003 */  addiu      $at, $t0, 0x3
/* 8914C 800CE94C 00014883 */  sra        $t1, $at, 2
.L800CE950:
/* 89150 800CE950 05410004 */  bgez       $t2, .L800CE964
/* 89154 800CE954 314B0007 */   andi      $t3, $t2, 0x7
/* 89158 800CE958 11600002 */  beqz       $t3, .L800CE964
/* 8915C 800CE95C 00000000 */   nop
/* 89160 800CE960 256BFFF8 */  addiu      $t3, $t3, -0x8
.L800CE964:
/* 89164 800CE964 000B6140 */  sll        $t4, $t3, 5
/* 89168 800CE968 012C1821 */  addu       $v1, $t1, $t4
/* 8916C 800CE96C 02831021 */  addu       $v0, $s4, $v1
/* 89170 800CE970 904E0101 */  lbu        $t6, 0x101($v0)
/* 89174 800CE974 06010004 */  bgez       $s0, .L800CE988
/* 89178 800CE978 320D0007 */   andi      $t5, $s0, 0x7
/* 8917C 800CE97C 11A00002 */  beqz       $t5, .L800CE988
/* 89180 800CE980 00000000 */   nop
/* 89184 800CE984 25ADFFF8 */  addiu      $t5, $t5, -0x8
.L800CE988:
/* 89188 800CE988 01B87804 */  sllv       $t7, $t8, $t5
/* 8918C 800CE98C 01CFC825 */  or         $t9, $t6, $t7
/* 89190 800CE990 A0590101 */  sb         $t9, 0x101($v0)
.L800CE994:
/* 89194 800CE994 94810000 */  lhu        $at, 0x0($a0)
/* 89198 800CE998 24840004 */  addiu      $a0, $a0, 0x4
/* 8919C 800CE99C A6410000 */  sh         $at, 0x0($s2)
/* 891A0 800CE9A0 8E690060 */  lw         $t1, 0x60($s3)
/* 891A4 800CE9A4 97AB0158 */  lhu        $t3, 0x158($sp)
/* 891A8 800CE9A8 93AC0158 */  lbu        $t4, 0x158($sp)
/* 891AC 800CE9AC 0169082A */  slt        $at, $t3, $t1
/* 891B0 800CE9B0 1420001A */  bnez       $at, .L800CEA1C
/* 891B4 800CE9B4 00000000 */   nop
/* 891B8 800CE9B8 120C0018 */  beq        $s0, $t4, .L800CEA1C
/* 891BC 800CE9BC 00000000 */   nop
/* 891C0 800CE9C0 93B80159 */  lbu        $t8, 0x159($sp)
/* 891C4 800CE9C4 240A0001 */  addiu      $t2, $zero, 0x1
/* 891C8 800CE9C8 07010003 */  bgez       $t8, .L800CE9D8
/* 891CC 800CE9CC 00186883 */   sra       $t5, $t8, 2
/* 891D0 800CE9D0 27010003 */  addiu      $at, $t8, 0x3
/* 891D4 800CE9D4 00016883 */  sra        $t5, $at, 2
.L800CE9D8:
/* 891D8 800CE9D8 05810004 */  bgez       $t4, .L800CE9EC
/* 891DC 800CE9DC 318E0007 */   andi      $t6, $t4, 0x7
/* 891E0 800CE9E0 11C00002 */  beqz       $t6, .L800CE9EC
/* 891E4 800CE9E4 00000000 */   nop
/* 891E8 800CE9E8 25CEFFF8 */  addiu      $t6, $t6, -0x8
.L800CE9EC:
/* 891EC 800CE9EC 000E7940 */  sll        $t7, $t6, 5
/* 891F0 800CE9F0 01AF1821 */  addu       $v1, $t5, $t7
/* 891F4 800CE9F4 02831021 */  addu       $v0, $s4, $v1
/* 891F8 800CE9F8 90590101 */  lbu        $t9, 0x101($v0)
/* 891FC 800CE9FC 06010004 */  bgez       $s0, .L800CEA10
/* 89200 800CEA00 32080007 */   andi      $t0, $s0, 0x7
/* 89204 800CEA04 11000002 */  beqz       $t0, .L800CEA10
/* 89208 800CEA08 00000000 */   nop
/* 8920C 800CEA0C 2508FFF8 */  addiu      $t0, $t0, -0x8
.L800CEA10:
/* 89210 800CEA10 010A5804 */  sllv       $t3, $t2, $t0
/* 89214 800CEA14 032B4825 */  or         $t1, $t9, $t3
/* 89218 800CEA18 A0490101 */  sb         $t1, 0x101($v0)
.L800CEA1C:
/* 8921C 800CEA1C 1496FFBB */  bne        $a0, $s6, .L800CE90C
/* 89220 800CEA20 24A50004 */   addiu     $a1, $a1, 0x4
.L800CEA24:
/* 89224 800CEA24 926C0064 */  lbu        $t4, 0x64($s3)
/* 89228 800CEA28 26F70001 */  addiu      $s7, $s7, 0x1
/* 8922C 800CEA2C 32F000FF */  andi       $s0, $s7, 0xFF
/* 89230 800CEA30 020C082A */  slt        $at, $s0, $t4
/* 89234 800CEA34 1420FF76 */  bnez       $at, .L800CE810
/* 89238 800CEA38 0200B825 */   or        $s7, $s0, $zero
.L800CEA3C:
/* 8923C 800CEA3C 00001025 */  or         $v0, $zero, $zero
/* 89240 800CEA40 8FBF003C */  lw         $ra, 0x3C($sp)
.L800CEA44:
/* 89244 800CEA44 8FB00018 */  lw         $s0, 0x18($sp)
/* 89248 800CEA48 8FB1001C */  lw         $s1, 0x1C($sp)
/* 8924C 800CEA4C 8FB20020 */  lw         $s2, 0x20($sp)
/* 89250 800CEA50 8FB30024 */  lw         $s3, 0x24($sp)
/* 89254 800CEA54 8FB40028 */  lw         $s4, 0x28($sp)
/* 89258 800CEA58 8FB5002C */  lw         $s5, 0x2C($sp)
/* 8925C 800CEA5C 8FB60030 */  lw         $s6, 0x30($sp)
/* 89260 800CEA60 8FB70034 */  lw         $s7, 0x34($sp)
/* 89264 800CEA64 8FBE0038 */  lw         $fp, 0x38($sp)
/* 89268 800CEA68 03E00008 */  jr         $ra
/* 8926C 800CEA6C 27BD0168 */   addiu     $sp, $sp, 0x168

glabel func_800CEA70
/* 89270 800CEA70 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 89274 800CEA74 AFA5003C */  sw         $a1, 0x3C($sp)
/* 89278 800CEA78 93B8003C */  lbu        $t8, 0x3C($sp)
/* 8927C 800CEA7C 93AE003D */  lbu        $t6, 0x3D($sp)
/* 89280 800CEA80 AFB40028 */  sw         $s4, 0x28($sp)
/* 89284 800CEA84 0080A025 */  or         $s4, $a0, $zero
/* 89288 800CEA88 AFBF0034 */  sw         $ra, 0x34($sp)
/* 8928C 800CEA8C AFB60030 */  sw         $s6, 0x30($sp)
/* 89290 800CEA90 AFB5002C */  sw         $s5, 0x2C($sp)
/* 89294 800CEA94 AFB30024 */  sw         $s3, 0x24($sp)
/* 89298 800CEA98 AFB20020 */  sw         $s2, 0x20($sp)
/* 8929C 800CEA9C AFB1001C */  sw         $s1, 0x1C($sp)
/* 892A0 800CEAA0 AFB00018 */  sw         $s0, 0x18($sp)
/* 892A4 800CEAA4 92890064 */  lbu        $t1, 0x64($s4)
/* 892A8 800CEAA8 00C09825 */  or         $s3, $a2, $zero
/* 892AC 800CEAAC 00008025 */  or         $s0, $zero, $zero
/* 892B0 800CEAB0 05C10003 */  bgez       $t6, .L800CEAC0
/* 892B4 800CEAB4 000E7883 */   sra       $t7, $t6, 2
/* 892B8 800CEAB8 25C10003 */  addiu      $at, $t6, 0x3
/* 892BC 800CEABC 00017883 */  sra        $t7, $at, 2
.L800CEAC0:
/* 892C0 800CEAC0 07010004 */  bgez       $t8, .L800CEAD4
/* 892C4 800CEAC4 33190007 */   andi      $t9, $t8, 0x7
/* 892C8 800CEAC8 13200002 */  beqz       $t9, .L800CEAD4
/* 892CC 800CEACC 00000000 */   nop
/* 892D0 800CEAD0 2739FFF8 */  addiu      $t9, $t9, -0x8
.L800CEAD4:
/* 892D4 800CEAD4 00194140 */  sll        $t0, $t9, 5
/* 892D8 800CEAD8 01E8B021 */  addu       $s6, $t7, $t0
/* 892DC 800CEADC 19200041 */  blez       $t1, .L800CEBE4
/* 892E0 800CEAE0 00009025 */   or        $s2, $zero, $zero
/* 892E4 800CEAE4 00001025 */  or         $v0, $zero, $zero
/* 892E8 800CEAE8 24150003 */  addiu      $s5, $zero, 0x3
.L800CEAEC:
/* 892EC 800CEAEC 93AA003C */  lbu        $t2, 0x3C($sp)
/* 892F0 800CEAF0 18400003 */  blez       $v0, .L800CEB00
/* 892F4 800CEAF4 02765821 */   addu      $t3, $s3, $s6
/* 892F8 800CEAF8 10000003 */  b          .L800CEB08
/* 892FC 800CEAFC 24110001 */   addiu     $s1, $zero, 0x1
.L800CEB00:
/* 89300 800CEB00 8E910060 */  lw         $s1, 0x60($s4)
/* 89304 800CEB04 00000000 */  nop
.L800CEB08:
/* 89308 800CEB08 1142000B */  beq        $t2, $v0, .L800CEB38
/* 8930C 800CEB0C 240E0001 */   addiu     $t6, $zero, 0x1
/* 89310 800CEB10 916C0101 */  lbu        $t4, 0x101($t3)
/* 89314 800CEB14 04410004 */  bgez       $v0, .L800CEB28
/* 89318 800CEB18 304D0007 */   andi      $t5, $v0, 0x7
/* 8931C 800CEB1C 11A00002 */  beqz       $t5, .L800CEB28
/* 89320 800CEB20 00000000 */   nop
/* 89324 800CEB24 25ADFFF8 */  addiu      $t5, $t5, -0x8
.L800CEB28:
/* 89328 800CEB28 01AEC004 */  sllv       $t8, $t6, $t5
/* 8932C 800CEB2C 0198C824 */  and        $t9, $t4, $t8
/* 89330 800CEB30 13200026 */  beqz       $t9, .L800CEBCC
/* 89334 800CEB34 00000000 */   nop
.L800CEB38:
/* 89338 800CEB38 926F0100 */  lbu        $t7, 0x100($s3)
/* 8933C 800CEB3C 02802025 */  or         $a0, $s4, $zero
/* 89340 800CEB40 11E2000B */  beq        $t7, $v0, .L800CEB70
/* 89344 800CEB44 02602825 */   or        $a1, $s3, $zero
/* 89348 800CEB48 00003025 */  or         $a2, $zero, $zero
/* 8934C 800CEB4C 0C0337A5 */  jal        func_800CDE94
/* 89350 800CEB50 324700FF */   andi      $a3, $s2, 0xFF
/* 89354 800CEB54 10400005 */  beqz       $v0, .L800CEB6C
/* 89358 800CEB58 00000000 */   nop
/* 8935C 800CEB5C 10550003 */  beq        $v0, $s5, .L800CEB6C
/* 89360 800CEB60 00000000 */   nop
/* 89364 800CEB64 10000021 */  b          .L800CEBEC
/* 89368 800CEB68 8FBF0034 */   lw        $ra, 0x34($sp)
.L800CEB6C:
/* 8936C 800CEB6C A2720100 */  sb         $s2, 0x100($s3)
.L800CEB70:
/* 89370 800CEB70 2A010002 */  slti       $at, $s0, 0x2
/* 89374 800CEB74 10200010 */  beqz       $at, .L800CEBB8
/* 89378 800CEB78 2A210080 */   slti      $at, $s1, 0x80
/* 8937C 800CEB7C 1020000E */  beqz       $at, .L800CEBB8
/* 89380 800CEB80 00111040 */   sll       $v0, $s1, 1
/* 89384 800CEB84 02621821 */  addu       $v1, $s3, $v0
/* 89388 800CEB88 97A8003C */  lhu        $t0, 0x3C($sp)
.L800CEB8C:
/* 8938C 800CEB8C 94690000 */  lhu        $t1, 0x0($v1)
/* 89390 800CEB90 24420002 */  addiu      $v0, $v0, 0x2
/* 89394 800CEB94 15090003 */  bne        $t0, $t1, .L800CEBA4
/* 89398 800CEB98 2A010002 */   slti      $at, $s0, 0x2
/* 8939C 800CEB9C 26100001 */  addiu      $s0, $s0, 0x1
/* 893A0 800CEBA0 2A010002 */  slti       $at, $s0, 0x2
.L800CEBA4:
/* 893A4 800CEBA4 10200004 */  beqz       $at, .L800CEBB8
/* 893A8 800CEBA8 24630002 */   addiu     $v1, $v1, 0x2
/* 893AC 800CEBAC 28410100 */  slti       $at, $v0, 0x100
/* 893B0 800CEBB0 1420FFF6 */  bnez       $at, .L800CEB8C
/* 893B4 800CEBB4 97A8003C */   lhu       $t0, 0x3C($sp)
.L800CEBB8:
/* 893B8 800CEBB8 2A010002 */  slti       $at, $s0, 0x2
/* 893BC 800CEBBC 14200003 */  bnez       $at, .L800CEBCC
/* 893C0 800CEBC0 00000000 */   nop
/* 893C4 800CEBC4 10000008 */  b          .L800CEBE8
/* 893C8 800CEBC8 24020002 */   addiu     $v0, $zero, 0x2
.L800CEBCC:
/* 893CC 800CEBCC 928B0064 */  lbu        $t3, 0x64($s4)
/* 893D0 800CEBD0 26520001 */  addiu      $s2, $s2, 0x1
/* 893D4 800CEBD4 324200FF */  andi       $v0, $s2, 0xFF
/* 893D8 800CEBD8 004B082A */  slt        $at, $v0, $t3
/* 893DC 800CEBDC 1420FFC3 */  bnez       $at, .L800CEAEC
/* 893E0 800CEBE0 00409025 */   or        $s2, $v0, $zero
.L800CEBE4:
/* 893E4 800CEBE4 02001025 */  or         $v0, $s0, $zero
.L800CEBE8:
/* 893E8 800CEBE8 8FBF0034 */  lw         $ra, 0x34($sp)
.L800CEBEC:
/* 893EC 800CEBEC 8FB00018 */  lw         $s0, 0x18($sp)
/* 893F0 800CEBF0 8FB1001C */  lw         $s1, 0x1C($sp)
/* 893F4 800CEBF4 8FB20020 */  lw         $s2, 0x20($sp)
/* 893F8 800CEBF8 8FB30024 */  lw         $s3, 0x24($sp)
/* 893FC 800CEBFC 8FB40028 */  lw         $s4, 0x28($sp)
/* 89400 800CEC00 8FB5002C */  lw         $s5, 0x2C($sp)
/* 89404 800CEC04 8FB60030 */  lw         $s6, 0x30($sp)
/* 89408 800CEC08 03E00008 */  jr         $ra
/* 8940C 800CEC0C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_800CEC10
/* 89410 800CEC10 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 89414 800CEC14 AFBF003C */  sw         $ra, 0x3C($sp)
/* 89418 800CEC18 AFBE0038 */  sw         $fp, 0x38($sp)
/* 8941C 800CEC1C AFB70034 */  sw         $s7, 0x34($sp)
/* 89420 800CEC20 AFB20020 */  sw         $s2, 0x20($sp)
/* 89424 800CEC24 AFB1001C */  sw         $s1, 0x1C($sp)
/* 89428 800CEC28 AFB00018 */  sw         $s0, 0x18($sp)
/* 8942C 800CEC2C 30D0FFFF */  andi       $s0, $a2, 0xFFFF
/* 89430 800CEC30 00E08825 */  or         $s1, $a3, $zero
/* 89434 800CEC34 00A09025 */  or         $s2, $a1, $zero
/* 89438 800CEC38 0080F025 */  or         $fp, $a0, $zero
/* 8943C 800CEC3C AFB60030 */  sw         $s6, 0x30($sp)
/* 89440 800CEC40 AFB5002C */  sw         $s5, 0x2C($sp)
/* 89444 800CEC44 AFB40028 */  sw         $s4, 0x28($sp)
/* 89448 800CEC48 AFB30024 */  sw         $s3, 0x24($sp)
/* 8944C 800CEC4C AFA60090 */  sw         $a2, 0x90($sp)
/* 89450 800CEC50 0C032E54 */  jal        func_800CB950
/* 89454 800CEC54 24170002 */   addiu     $s7, $zero, 0x2
/* 89458 800CEC58 240E0002 */  addiu      $t6, $zero, 0x2
/* 8945C 800CEC5C 3C01801E */  lui        $at, %hi(D_801DABA0)
/* 89460 800CEC60 A02EABA0 */  sb         $t6, %lo(D_801DABA0)($at)
/* 89464 800CEC64 02402025 */  or         $a0, $s2, $zero
/* 89468 800CEC68 0C033B8F */  jal        func_800CEE3C
/* 8946C 800CEC6C 3205FFFF */   andi      $a1, $s0, 0xFFFF
/* 89470 800CEC70 3C05801E */  lui        $a1, %hi(D_801DABF0)
/* 89474 800CEC74 24A5ABF0 */  addiu      $a1, $a1, %lo(D_801DABF0)
/* 89478 800CEC78 0C032E70 */  jal        func_800CB9C0
/* 8947C 800CEC7C 24040001 */   addiu     $a0, $zero, 0x1
/* 89480 800CEC80 03C02025 */  or         $a0, $fp, $zero
/* 89484 800CEC84 00002825 */  or         $a1, $zero, $zero
/* 89488 800CEC88 0C031718 */  jal        func_800C5C60
/* 8948C 800CEC8C 24060001 */   addiu     $a2, $zero, 0x1
/* 89490 800CEC90 3C14801E */  lui        $s4, %hi(D_801DAC30)
/* 89494 800CEC94 2694AC30 */  addiu      $s4, $s4, %lo(D_801DAC30)
/* 89498 800CEC98 27B50074 */  addiu      $s5, $sp, 0x74
/* 8949C 800CEC9C 241300FF */  addiu      $s3, $zero, 0xFF
.L800CECA0:
/* 894A0 800CECA0 3C0F801E */  lui        $t7, %hi(D_801DABF0)
/* 894A4 800CECA4 25E2ABF0 */  addiu      $v0, $t7, %lo(D_801DABF0)
/* 894A8 800CECA8 00408025 */  or         $s0, $v0, $zero
.L800CECAC:
/* 894AC 800CECAC 24420004 */  addiu      $v0, $v0, 0x4
/* 894B0 800CECB0 0054082B */  sltu       $at, $v0, $s4
/* 894B4 800CECB4 1420FFFD */  bnez       $at, .L800CECAC
/* 894B8 800CECB8 AC53FFFC */   sw        $s3, -0x4($v0)
/* 894BC 800CECBC 3C05801E */  lui        $a1, %hi(D_801DABF0)
/* 894C0 800CECC0 24A5ABF0 */  addiu      $a1, $a1, %lo(D_801DABF0)
/* 894C4 800CECC4 ACA0003C */  sw         $zero, 0x3C($a1)
/* 894C8 800CECC8 0C032E70 */  jal        func_800CB9C0
/* 894CC 800CECCC 00002025 */   or        $a0, $zero, $zero
/* 894D0 800CECD0 03C02025 */  or         $a0, $fp, $zero
/* 894D4 800CECD4 00002825 */  or         $a1, $zero, $zero
/* 894D8 800CECD8 0C031718 */  jal        func_800C5C60
/* 894DC 800CECDC 24060001 */   addiu     $a2, $zero, 0x1
/* 894E0 800CECE0 1240000D */  beqz       $s2, .L800CED18
/* 894E4 800CECE4 27B80054 */   addiu     $t8, $sp, 0x54
/* 894E8 800CECE8 1A40000B */  blez       $s2, .L800CED18
/* 894EC 800CECEC 00001825 */   or        $v1, $zero, $zero
/* 894F0 800CECF0 32440003 */  andi       $a0, $s2, 0x3
/* 894F4 800CECF4 10800005 */  beqz       $a0, .L800CED0C
/* 894F8 800CECF8 00801025 */   or        $v0, $a0, $zero
.L800CECFC:
/* 894FC 800CECFC 24630001 */  addiu      $v1, $v1, 0x1
/* 89500 800CED00 1443FFFE */  bne        $v0, $v1, .L800CECFC
/* 89504 800CED04 26100001 */   addiu     $s0, $s0, 0x1
/* 89508 800CED08 10720003 */  beq        $v1, $s2, .L800CED18
.L800CED0C:
/* 8950C 800CED0C 24630004 */   addiu     $v1, $v1, 0x4
/* 89510 800CED10 1472FFFE */  bne        $v1, $s2, .L800CED0C
/* 89514 800CED14 26100004 */   addiu     $s0, $s0, 0x4
.L800CED18:
/* 89518 800CED18 02004825 */  or         $t1, $s0, $zero
/* 8951C 800CED1C 26080024 */  addiu      $t0, $s0, 0x24
.L800CED20:
/* 89520 800CED20 89210000 */  lwl        $at, 0x0($t1)
/* 89524 800CED24 99210003 */  lwr        $at, 0x3($t1)
/* 89528 800CED28 2529000C */  addiu      $t1, $t1, 0xC
/* 8952C 800CED2C AF010000 */  sw         $at, 0x0($t8)
/* 89530 800CED30 8921FFF8 */  lwl        $at, -0x8($t1)
/* 89534 800CED34 9921FFFB */  lwr        $at, -0x5($t1)
/* 89538 800CED38 2718000C */  addiu      $t8, $t8, 0xC
/* 8953C 800CED3C AF01FFF8 */  sw         $at, -0x8($t8)
/* 89540 800CED40 8921FFFC */  lwl        $at, -0x4($t1)
/* 89544 800CED44 9921FFFF */  lwr        $at, -0x1($t1)
/* 89548 800CED48 1528FFF5 */  bne        $t1, $t0, .L800CED20
/* 8954C 800CED4C AF01FFFC */   sw        $at, -0x4($t8)
/* 89550 800CED50 89210000 */  lwl        $at, 0x0($t1)
/* 89554 800CED54 99210003 */  lwr        $at, 0x3($t1)
/* 89558 800CED58 00000000 */  nop
/* 8955C 800CED5C AF010000 */  sw         $at, 0x0($t8)
/* 89560 800CED60 93A20056 */  lbu        $v0, 0x56($sp)
/* 89564 800CED64 00000000 */  nop
/* 89568 800CED68 304A00C0 */  andi       $t2, $v0, 0xC0
/* 8956C 800CED6C 000AB103 */  sra        $s6, $t2, 4
/* 89570 800CED70 16C0001F */  bnez       $s6, .L800CEDF0
/* 89574 800CED74 24010004 */   addiu     $at, $zero, 0x4
/* 89578 800CED78 0C0343C4 */  jal        func_800D0F10
/* 8957C 800CED7C 27A4005A */   addiu     $a0, $sp, 0x5A
/* 89580 800CED80 93AC007A */  lbu        $t4, 0x7A($sp)
/* 89584 800CED84 03C02025 */  or         $a0, $fp, $zero
/* 89588 800CED88 1182000C */  beq        $t4, $v0, .L800CEDBC
/* 8958C 800CED8C 27A20054 */   addiu     $v0, $sp, 0x54
/* 89590 800CED90 0C032262 */  jal        func_800C8988
/* 89594 800CED94 02402825 */   or        $a1, $s2, $zero
/* 89598 800CED98 10400005 */  beqz       $v0, .L800CEDB0
/* 8959C 800CED9C 0040B025 */   or        $s6, $v0, $zero
/* 895A0 800CEDA0 0C032E65 */  jal        func_800CB994
/* 895A4 800CEDA4 00000000 */   nop
/* 895A8 800CEDA8 10000018 */  b          .L800CEE0C
/* 895AC 800CEDAC 02C01025 */   or        $v0, $s6, $zero
.L800CEDB0:
/* 895B0 800CEDB0 1000000E */  b          .L800CEDEC
/* 895B4 800CEDB4 24160004 */   addiu     $s6, $zero, 0x4
/* 895B8 800CEDB8 27A20054 */  addiu      $v0, $sp, 0x54
.L800CEDBC:
/* 895BC 800CEDBC 904D0006 */  lbu        $t5, 0x6($v0)
/* 895C0 800CEDC0 24420004 */  addiu      $v0, $v0, 0x4
/* 895C4 800CEDC4 A22D0000 */  sb         $t5, 0x0($s1)
/* 895C8 800CEDC8 904E0003 */  lbu        $t6, 0x3($v0)
/* 895CC 800CEDCC 26310004 */  addiu      $s1, $s1, 0x4
/* 895D0 800CEDD0 A22EFFFD */  sb         $t6, -0x3($s1)
/* 895D4 800CEDD4 904F0004 */  lbu        $t7, 0x4($v0)
/* 895D8 800CEDD8 00000000 */  nop
/* 895DC 800CEDDC A22FFFFE */  sb         $t7, -0x2($s1)
/* 895E0 800CEDE0 90590005 */  lbu        $t9, 0x5($v0)
/* 895E4 800CEDE4 1455FFF5 */  bne        $v0, $s5, .L800CEDBC
/* 895E8 800CEDE8 A239FFFF */   sb        $t9, -0x1($s1)
.L800CEDEC:
/* 895EC 800CEDEC 24010004 */  addiu      $at, $zero, 0x4
.L800CEDF0:
/* 895F0 800CEDF0 16C10003 */  bne        $s6, $at, .L800CEE00
/* 895F4 800CEDF4 2AE20000 */   slti      $v0, $s7, 0x0
/* 895F8 800CEDF8 1040FFA9 */  beqz       $v0, .L800CECA0
/* 895FC 800CEDFC 26F7FFFF */   addiu     $s7, $s7, -0x1
.L800CEE00:
/* 89600 800CEE00 0C032E65 */  jal        func_800CB994
/* 89604 800CEE04 00000000 */   nop
/* 89608 800CEE08 02C01025 */  or         $v0, $s6, $zero
.L800CEE0C:
/* 8960C 800CEE0C 8FBF003C */  lw         $ra, 0x3C($sp)
/* 89610 800CEE10 8FB00018 */  lw         $s0, 0x18($sp)
/* 89614 800CEE14 8FB1001C */  lw         $s1, 0x1C($sp)
/* 89618 800CEE18 8FB20020 */  lw         $s2, 0x20($sp)
/* 8961C 800CEE1C 8FB30024 */  lw         $s3, 0x24($sp)
/* 89620 800CEE20 8FB40028 */  lw         $s4, 0x28($sp)
/* 89624 800CEE24 8FB5002C */  lw         $s5, 0x2C($sp)
/* 89628 800CEE28 8FB60030 */  lw         $s6, 0x30($sp)
/* 8962C 800CEE2C 8FB70034 */  lw         $s7, 0x34($sp)
/* 89630 800CEE30 8FBE0038 */  lw         $fp, 0x38($sp)
/* 89634 800CEE34 03E00008 */  jr         $ra
/* 89638 800CEE38 27BD0088 */   addiu     $sp, $sp, 0x88

glabel func_800CEE3C
/* 8963C 800CEE3C 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 89640 800CEE40 00803825 */  or         $a3, $a0, $zero
/* 89644 800CEE44 3C08801E */  lui        $t0, %hi(D_801DABF0)
/* 89648 800CEE48 2508ABF0 */  addiu      $t0, $t0, %lo(D_801DABF0)
/* 8964C 800CEE4C 3C04801E */  lui        $a0, %hi(D_801DAC30)
/* 89650 800CEE50 3C02801E */  lui        $v0, %hi(D_801DABF0)
/* 89654 800CEE54 AFBF0014 */  sw         $ra, 0x14($sp)
/* 89658 800CEE58 AFA50054 */  sw         $a1, 0x54($sp)
/* 8965C 800CEE5C 01001825 */  or         $v1, $t0, $zero
/* 89660 800CEE60 2442ABF0 */  addiu      $v0, $v0, %lo(D_801DABF0)
/* 89664 800CEE64 2484AC30 */  addiu      $a0, $a0, %lo(D_801DAC30)
.L800CEE68:
/* 89668 800CEE68 24420004 */  addiu      $v0, $v0, 0x4
/* 8966C 800CEE6C 0044082B */  sltu       $at, $v0, $a0
/* 89670 800CEE70 1420FFFD */  bnez       $at, .L800CEE68
/* 89674 800CEE74 AC40FFFC */   sw        $zero, -0x4($v0)
/* 89678 800CEE78 240E0001 */  addiu      $t6, $zero, 0x1
/* 8967C 800CEE7C 240F00FF */  addiu      $t7, $zero, 0xFF
/* 89680 800CEE80 24180003 */  addiu      $t8, $zero, 0x3
/* 89684 800CEE84 24190021 */  addiu      $t9, $zero, 0x21
/* 89688 800CEE88 24090002 */  addiu      $t1, $zero, 0x2
/* 8968C 800CEE8C 97A40056 */  lhu        $a0, 0x56($sp)
/* 89690 800CEE90 AD0E003C */  sw         $t6, 0x3C($t0)
/* 89694 800CEE94 A3AF0024 */  sb         $t7, 0x24($sp)
/* 89698 800CEE98 A3B80025 */  sb         $t8, 0x25($sp)
/* 8969C 800CEE9C A3B90026 */  sb         $t9, 0x26($sp)
/* 896A0 800CEEA0 A3A90027 */  sb         $t1, 0x27($sp)
/* 896A4 800CEEA4 AFA3004C */  sw         $v1, 0x4C($sp)
/* 896A8 800CEEA8 0C034398 */  jal        func_800D0E60
/* 896AC 800CEEAC AFA70050 */   sw        $a3, 0x50($sp)
/* 896B0 800CEEB0 97AA0056 */  lhu        $t2, 0x56($sp)
/* 896B4 800CEEB4 240D00FF */  addiu      $t5, $zero, 0xFF
/* 896B8 800CEEB8 000A5940 */  sll        $t3, $t2, 5
/* 896BC 800CEEBC 004B6025 */  or         $t4, $v0, $t3
/* 896C0 800CEEC0 8FA3004C */  lw         $v1, 0x4C($sp)
/* 896C4 800CEEC4 8FA70050 */  lw         $a3, 0x50($sp)
/* 896C8 800CEEC8 A7AC0028 */  sh         $t4, 0x28($sp)
/* 896CC 800CEECC A3AD004A */  sb         $t5, 0x4A($sp)
/* 896D0 800CEED0 240200FF */  addiu      $v0, $zero, 0xFF
/* 896D4 800CEED4 27A40024 */  addiu      $a0, $sp, 0x24
/* 896D8 800CEED8 27A50044 */  addiu      $a1, $sp, 0x44
.L800CEEDC:
/* 896DC 800CEEDC 24840001 */  addiu      $a0, $a0, 0x1
/* 896E0 800CEEE0 0085082B */  sltu       $at, $a0, $a1
/* 896E4 800CEEE4 1420FFFD */  bnez       $at, .L800CEEDC
/* 896E8 800CEEE8 A0820005 */   sb        $v0, 0x5($a0)
/* 896EC 800CEEEC 10E00012 */  beqz       $a3, .L800CEF38
/* 896F0 800CEEF0 27AE0024 */   addiu     $t6, $sp, 0x24
/* 896F4 800CEEF4 18E00010 */  blez       $a3, .L800CEF38
/* 896F8 800CEEF8 00003025 */   or        $a2, $zero, $zero
/* 896FC 800CEEFC 30E40003 */  andi       $a0, $a3, 0x3
/* 89700 800CEF00 10800006 */  beqz       $a0, .L800CEF1C
/* 89704 800CEF04 00801025 */   or        $v0, $a0, $zero
.L800CEF08:
/* 89708 800CEF08 24C60001 */  addiu      $a2, $a2, 0x1
/* 8970C 800CEF0C A0600000 */  sb         $zero, 0x0($v1)
/* 89710 800CEF10 1446FFFD */  bne        $v0, $a2, .L800CEF08
/* 89714 800CEF14 24630001 */   addiu     $v1, $v1, 0x1
/* 89718 800CEF18 10C70007 */  beq        $a2, $a3, .L800CEF38
.L800CEF1C:
/* 8971C 800CEF1C 24C60004 */   addiu     $a2, $a2, 0x4
/* 89720 800CEF20 A0600001 */  sb         $zero, 0x1($v1)
/* 89724 800CEF24 A0600002 */  sb         $zero, 0x2($v1)
/* 89728 800CEF28 A0600003 */  sb         $zero, 0x3($v1)
/* 8972C 800CEF2C 24630004 */  addiu      $v1, $v1, 0x4
/* 89730 800CEF30 14C7FFFA */  bne        $a2, $a3, .L800CEF1C
/* 89734 800CEF34 A060FFFC */   sb        $zero, -0x4($v1)
.L800CEF38:
/* 89738 800CEF38 0060C825 */  or         $t9, $v1, $zero
/* 8973C 800CEF3C 25D80024 */  addiu      $t8, $t6, 0x24
.L800CEF40:
/* 89740 800CEF40 8DC10000 */  lw         $at, 0x0($t6)
/* 89744 800CEF44 25CE000C */  addiu      $t6, $t6, 0xC
/* 89748 800CEF48 AB210000 */  swl        $at, 0x0($t9)
/* 8974C 800CEF4C BB210003 */  swr        $at, 0x3($t9)
/* 89750 800CEF50 8DC1FFF8 */  lw         $at, -0x8($t6)
/* 89754 800CEF54 2739000C */  addiu      $t9, $t9, 0xC
/* 89758 800CEF58 AB21FFF8 */  swl        $at, -0x8($t9)
/* 8975C 800CEF5C BB21FFFB */  swr        $at, -0x5($t9)
/* 89760 800CEF60 8DC1FFFC */  lw         $at, -0x4($t6)
/* 89764 800CEF64 00000000 */  nop
/* 89768 800CEF68 AB21FFFC */  swl        $at, -0x4($t9)
/* 8976C 800CEF6C 15D8FFF4 */  bne        $t6, $t8, .L800CEF40
/* 89770 800CEF70 BB21FFFF */   swr       $at, -0x1($t9)
/* 89774 800CEF74 8DC10000 */  lw         $at, 0x0($t6)
/* 89778 800CEF78 240900FE */  addiu      $t1, $zero, 0xFE
/* 8977C 800CEF7C AB210000 */  swl        $at, 0x0($t9)
/* 89780 800CEF80 BB210003 */  swr        $at, 0x3($t9)
/* 89784 800CEF84 A0690028 */  sb         $t1, 0x28($v1)
/* 89788 800CEF88 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8978C 800CEF8C 24630028 */  addiu      $v1, $v1, 0x28
/* 89790 800CEF90 03E00008 */  jr         $ra
/* 89794 800CEF94 27BD0050 */   addiu     $sp, $sp, 0x50
/* 89798 800CEF98 00000000 */  nop
/* 8979C 800CEF9C 00000000 */  nop

glabel func_800CEFA0
/* 897A0 800CEFA0 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 897A4 800CEFA4 8FAE0098 */  lw         $t6, 0x98($sp)
/* 897A8 800CEFA8 AFB70034 */  sw         $s7, 0x34($sp)
/* 897AC 800CEFAC AFB5002C */  sw         $s5, 0x2C($sp)
/* 897B0 800CEFB0 AFB1001C */  sw         $s1, 0x1C($sp)
/* 897B4 800CEFB4 AFB00018 */  sw         $s0, 0x18($sp)
/* 897B8 800CEFB8 24010001 */  addiu      $at, $zero, 0x1
/* 897BC 800CEFBC 30D0FFFF */  andi       $s0, $a2, 0xFFFF
/* 897C0 800CEFC0 00A08825 */  or         $s1, $a1, $zero
/* 897C4 800CEFC4 0080B825 */  or         $s7, $a0, $zero
/* 897C8 800CEFC8 AFBF003C */  sw         $ra, 0x3C($sp)
/* 897CC 800CEFCC AFBE0038 */  sw         $fp, 0x38($sp)
/* 897D0 800CEFD0 AFB60030 */  sw         $s6, 0x30($sp)
/* 897D4 800CEFD4 AFB40028 */  sw         $s4, 0x28($sp)
/* 897D8 800CEFD8 AFB30024 */  sw         $s3, 0x24($sp)
/* 897DC 800CEFDC AFB20020 */  sw         $s2, 0x20($sp)
/* 897E0 800CEFE0 AFA60090 */  sw         $a2, 0x90($sp)
/* 897E4 800CEFE4 AFA70094 */  sw         $a3, 0x94($sp)
/* 897E8 800CEFE8 11C10008 */  beq        $t6, $at, .L800CF00C
/* 897EC 800CEFEC 24150002 */   addiu     $s5, $zero, 0x2
/* 897F0 800CEFF0 2A010007 */  slti       $at, $s0, 0x7
/* 897F4 800CEFF4 10200005 */  beqz       $at, .L800CF00C
/* 897F8 800CEFF8 02001025 */   or        $v0, $s0, $zero
/* 897FC 800CEFFC 10400003 */  beqz       $v0, .L800CF00C
/* 89800 800CF000 00000000 */   nop
/* 89804 800CF004 10000063 */  b          .L800CF194
/* 89808 800CF008 00001025 */   or        $v0, $zero, $zero
.L800CF00C:
/* 8980C 800CF00C 0C032E54 */  jal        func_800CB950
/* 89810 800CF010 00000000 */   nop
/* 89814 800CF014 240F0003 */  addiu      $t7, $zero, 0x3
/* 89818 800CF018 3C01801E */  lui        $at, %hi(D_801DABA0)
/* 8981C 800CF01C 8FA60094 */  lw         $a2, 0x94($sp)
/* 89820 800CF020 A02FABA0 */  sb         $t7, %lo(D_801DABA0)($at)
/* 89824 800CF024 02202025 */  or         $a0, $s1, $zero
/* 89828 800CF028 0C033C71 */  jal        func_800CF1C4
/* 8982C 800CF02C 3205FFFF */   andi      $a1, $s0, 0xFFFF
/* 89830 800CF030 3C16801E */  lui        $s6, %hi(D_801DABF0)
/* 89834 800CF034 26D6ABF0 */  addiu      $s6, $s6, %lo(D_801DABF0)
/* 89838 800CF038 02C02825 */  or         $a1, $s6, $zero
/* 8983C 800CF03C 0C032E70 */  jal        func_800CB9C0
/* 89840 800CF040 24040001 */   addiu     $a0, $zero, 0x1
/* 89844 800CF044 02E02025 */  or         $a0, $s7, $zero
/* 89848 800CF048 00002825 */  or         $a1, $zero, $zero
/* 8984C 800CF04C 0C031718 */  jal        func_800C5C60
/* 89850 800CF050 24060001 */   addiu     $a2, $zero, 0x1
/* 89854 800CF054 3C13801E */  lui        $s3, %hi(D_801DAC30)
/* 89858 800CF058 2673AC30 */  addiu      $s3, $s3, %lo(D_801DAC30)
/* 8985C 800CF05C 27BE0054 */  addiu      $fp, $sp, 0x54
/* 89860 800CF060 241200FF */  addiu      $s2, $zero, 0xFF
.L800CF064:
/* 89864 800CF064 3C03801E */  lui        $v1, %hi(D_801DABF0)
/* 89868 800CF068 2463ABF0 */  addiu      $v1, $v1, %lo(D_801DABF0)
/* 8986C 800CF06C 02C08025 */  or         $s0, $s6, $zero
.L800CF070:
/* 89870 800CF070 24630004 */  addiu      $v1, $v1, 0x4
/* 89874 800CF074 0073082B */  sltu       $at, $v1, $s3
/* 89878 800CF078 1420FFFD */  bnez       $at, .L800CF070
/* 8987C 800CF07C AC72FFFC */   sw        $s2, -0x4($v1)
/* 89880 800CF080 AEC0003C */  sw         $zero, 0x3C($s6)
/* 89884 800CF084 00002025 */  or         $a0, $zero, $zero
/* 89888 800CF088 0C032E70 */  jal        func_800CB9C0
/* 8988C 800CF08C 02C02825 */   or        $a1, $s6, $zero
/* 89890 800CF090 02E02025 */  or         $a0, $s7, $zero
/* 89894 800CF094 00002825 */  or         $a1, $zero, $zero
/* 89898 800CF098 0C031718 */  jal        func_800C5C60
/* 8989C 800CF09C 24060001 */   addiu     $a2, $zero, 0x1
/* 898A0 800CF0A0 1220000D */  beqz       $s1, .L800CF0D8
/* 898A4 800CF0A4 03C04825 */   or        $t1, $fp, $zero
/* 898A8 800CF0A8 1A20000B */  blez       $s1, .L800CF0D8
/* 898AC 800CF0AC 00001025 */   or        $v0, $zero, $zero
/* 898B0 800CF0B0 32240003 */  andi       $a0, $s1, 0x3
/* 898B4 800CF0B4 10800005 */  beqz       $a0, .L800CF0CC
/* 898B8 800CF0B8 00801825 */   or        $v1, $a0, $zero
.L800CF0BC:
/* 898BC 800CF0BC 24420001 */  addiu      $v0, $v0, 0x1
/* 898C0 800CF0C0 1462FFFE */  bne        $v1, $v0, .L800CF0BC
/* 898C4 800CF0C4 26100001 */   addiu     $s0, $s0, 0x1
/* 898C8 800CF0C8 10510003 */  beq        $v0, $s1, .L800CF0D8
.L800CF0CC:
/* 898CC 800CF0CC 24420004 */   addiu     $v0, $v0, 0x4
/* 898D0 800CF0D0 1451FFFE */  bne        $v0, $s1, .L800CF0CC
/* 898D4 800CF0D4 26100004 */   addiu     $s0, $s0, 0x4
.L800CF0D8:
/* 898D8 800CF0D8 02004025 */  or         $t0, $s0, $zero
/* 898DC 800CF0DC 26190024 */  addiu      $t9, $s0, 0x24
.L800CF0E0:
/* 898E0 800CF0E0 89010000 */  lwl        $at, 0x0($t0)
/* 898E4 800CF0E4 99010003 */  lwr        $at, 0x3($t0)
/* 898E8 800CF0E8 2508000C */  addiu      $t0, $t0, 0xC
/* 898EC 800CF0EC AD210000 */  sw         $at, 0x0($t1)
/* 898F0 800CF0F0 8901FFF8 */  lwl        $at, -0x8($t0)
/* 898F4 800CF0F4 9901FFFB */  lwr        $at, -0x5($t0)
/* 898F8 800CF0F8 2529000C */  addiu      $t1, $t1, 0xC
/* 898FC 800CF0FC AD21FFF8 */  sw         $at, -0x8($t1)
/* 89900 800CF100 8901FFFC */  lwl        $at, -0x4($t0)
/* 89904 800CF104 9901FFFF */  lwr        $at, -0x1($t0)
/* 89908 800CF108 1519FFF5 */  bne        $t0, $t9, .L800CF0E0
/* 8990C 800CF10C AD21FFFC */   sw        $at, -0x4($t1)
/* 89910 800CF110 89010000 */  lwl        $at, 0x0($t0)
/* 89914 800CF114 99010003 */  lwr        $at, 0x3($t0)
/* 89918 800CF118 00000000 */  nop
/* 8991C 800CF11C AD210000 */  sw         $at, 0x0($t1)
/* 89920 800CF120 93A20056 */  lbu        $v0, 0x56($sp)
/* 89924 800CF124 8FA40094 */  lw         $a0, 0x94($sp)
/* 89928 800CF128 304A00C0 */  andi       $t2, $v0, 0xC0
/* 8992C 800CF12C 000AA103 */  sra        $s4, $t2, 4
/* 89930 800CF130 16800011 */  bnez       $s4, .L800CF178
/* 89934 800CF134 24010004 */   addiu     $at, $zero, 0x4
/* 89938 800CF138 0C0343C4 */  jal        func_800D0F10
/* 8993C 800CF13C 00000000 */   nop
/* 89940 800CF140 93AC007A */  lbu        $t4, 0x7A($sp)
/* 89944 800CF144 02E02025 */  or         $a0, $s7, $zero
/* 89948 800CF148 1182000B */  beq        $t4, $v0, .L800CF178
/* 8994C 800CF14C 24010004 */   addiu     $at, $zero, 0x4
/* 89950 800CF150 0C032262 */  jal        func_800C8988
/* 89954 800CF154 02202825 */   or        $a1, $s1, $zero
/* 89958 800CF158 10400005 */  beqz       $v0, .L800CF170
/* 8995C 800CF15C 0040A025 */   or        $s4, $v0, $zero
/* 89960 800CF160 0C032E65 */  jal        func_800CB994
/* 89964 800CF164 00000000 */   nop
/* 89968 800CF168 1000000A */  b          .L800CF194
/* 8996C 800CF16C 02801025 */   or        $v0, $s4, $zero
.L800CF170:
/* 89970 800CF170 24140004 */  addiu      $s4, $zero, 0x4
/* 89974 800CF174 24010004 */  addiu      $at, $zero, 0x4
.L800CF178:
/* 89978 800CF178 16810003 */  bne        $s4, $at, .L800CF188
/* 8997C 800CF17C 2AA20000 */   slti      $v0, $s5, 0x0
/* 89980 800CF180 1040FFB8 */  beqz       $v0, .L800CF064
/* 89984 800CF184 26B5FFFF */   addiu     $s5, $s5, -0x1
.L800CF188:
/* 89988 800CF188 0C032E65 */  jal        func_800CB994
/* 8998C 800CF18C 00000000 */   nop
/* 89990 800CF190 02801025 */  or         $v0, $s4, $zero
.L800CF194:
/* 89994 800CF194 8FBF003C */  lw         $ra, 0x3C($sp)
/* 89998 800CF198 8FB00018 */  lw         $s0, 0x18($sp)
/* 8999C 800CF19C 8FB1001C */  lw         $s1, 0x1C($sp)
/* 899A0 800CF1A0 8FB20020 */  lw         $s2, 0x20($sp)
/* 899A4 800CF1A4 8FB30024 */  lw         $s3, 0x24($sp)
/* 899A8 800CF1A8 8FB40028 */  lw         $s4, 0x28($sp)
/* 899AC 800CF1AC 8FB5002C */  lw         $s5, 0x2C($sp)
/* 899B0 800CF1B0 8FB60030 */  lw         $s6, 0x30($sp)
/* 899B4 800CF1B4 8FB70034 */  lw         $s7, 0x34($sp)
/* 899B8 800CF1B8 8FBE0038 */  lw         $fp, 0x38($sp)
/* 899BC 800CF1BC 03E00008 */  jr         $ra
/* 899C0 800CF1C0 27BD0088 */   addiu     $sp, $sp, 0x88

glabel func_800CF1C4
/* 899C4 800CF1C4 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 899C8 800CF1C8 AFB00018 */  sw         $s0, 0x18($sp)
/* 899CC 800CF1CC 00808025 */  or         $s0, $a0, $zero
/* 899D0 800CF1D0 3C08801E */  lui        $t0, %hi(D_801DABF0)
/* 899D4 800CF1D4 2508ABF0 */  addiu      $t0, $t0, %lo(D_801DABF0)
/* 899D8 800CF1D8 3C04801E */  lui        $a0, %hi(D_801DAC30)
/* 899DC 800CF1DC 3C02801E */  lui        $v0, %hi(D_801DABF0)
/* 899E0 800CF1E0 AFBF001C */  sw         $ra, 0x1C($sp)
/* 899E4 800CF1E4 AFA5005C */  sw         $a1, 0x5C($sp)
/* 899E8 800CF1E8 01001825 */  or         $v1, $t0, $zero
/* 899EC 800CF1EC 2442ABF0 */  addiu      $v0, $v0, %lo(D_801DABF0)
/* 899F0 800CF1F0 2484AC30 */  addiu      $a0, $a0, %lo(D_801DAC30)
.L800CF1F4:
/* 899F4 800CF1F4 24420004 */  addiu      $v0, $v0, 0x4
/* 899F8 800CF1F8 0044082B */  sltu       $at, $v0, $a0
/* 899FC 800CF1FC 1420FFFD */  bnez       $at, .L800CF1F4
/* 89A00 800CF200 AC40FFFC */   sw        $zero, -0x4($v0)
/* 89A04 800CF204 240E0001 */  addiu      $t6, $zero, 0x1
/* 89A08 800CF208 240F00FF */  addiu      $t7, $zero, 0xFF
/* 89A0C 800CF20C 24180023 */  addiu      $t8, $zero, 0x23
/* 89A10 800CF210 24190001 */  addiu      $t9, $zero, 0x1
/* 89A14 800CF214 24090003 */  addiu      $t1, $zero, 0x3
/* 89A18 800CF218 97A4005E */  lhu        $a0, 0x5E($sp)
/* 89A1C 800CF21C AD0E003C */  sw         $t6, 0x3C($t0)
/* 89A20 800CF220 A3AF002C */  sb         $t7, 0x2C($sp)
/* 89A24 800CF224 A3B8002D */  sb         $t8, 0x2D($sp)
/* 89A28 800CF228 A3B9002E */  sb         $t9, 0x2E($sp)
/* 89A2C 800CF22C A3A9002F */  sb         $t1, 0x2F($sp)
/* 89A30 800CF230 AFA30054 */  sw         $v1, 0x54($sp)
/* 89A34 800CF234 0C034398 */  jal        func_800D0E60
/* 89A38 800CF238 AFA60060 */   sw        $a2, 0x60($sp)
/* 89A3C 800CF23C 97AA005E */  lhu        $t2, 0x5E($sp)
/* 89A40 800CF240 240D00FF */  addiu      $t5, $zero, 0xFF
/* 89A44 800CF244 000A5940 */  sll        $t3, $t2, 5
/* 89A48 800CF248 004B6025 */  or         $t4, $v0, $t3
/* 89A4C 800CF24C 8FA30054 */  lw         $v1, 0x54($sp)
/* 89A50 800CF250 8FA60060 */  lw         $a2, 0x60($sp)
/* 89A54 800CF254 A7AC0030 */  sh         $t4, 0x30($sp)
/* 89A58 800CF258 A3AD0052 */  sb         $t5, 0x52($sp)
/* 89A5C 800CF25C 27A2004C */  addiu      $v0, $sp, 0x4C
/* 89A60 800CF260 27A4002C */  addiu      $a0, $sp, 0x2C
.L800CF264:
/* 89A64 800CF264 90CE0000 */  lbu        $t6, 0x0($a2)
/* 89A68 800CF268 24840001 */  addiu      $a0, $a0, 0x1
/* 89A6C 800CF26C 0082082B */  sltu       $at, $a0, $v0
/* 89A70 800CF270 24C60001 */  addiu      $a2, $a2, 0x1
/* 89A74 800CF274 1420FFFB */  bnez       $at, .L800CF264
/* 89A78 800CF278 A08E0005 */   sb        $t6, 0x5($a0)
/* 89A7C 800CF27C 12000012 */  beqz       $s0, .L800CF2C8
/* 89A80 800CF280 27AF002C */   addiu     $t7, $sp, 0x2C
/* 89A84 800CF284 1A000010 */  blez       $s0, .L800CF2C8
/* 89A88 800CF288 00003825 */   or        $a3, $zero, $zero
/* 89A8C 800CF28C 32040003 */  andi       $a0, $s0, 0x3
/* 89A90 800CF290 10800006 */  beqz       $a0, .L800CF2AC
/* 89A94 800CF294 00801025 */   or        $v0, $a0, $zero
.L800CF298:
/* 89A98 800CF298 24E70001 */  addiu      $a3, $a3, 0x1
/* 89A9C 800CF29C A0600000 */  sb         $zero, 0x0($v1)
/* 89AA0 800CF2A0 1447FFFD */  bne        $v0, $a3, .L800CF298
/* 89AA4 800CF2A4 24630001 */   addiu     $v1, $v1, 0x1
/* 89AA8 800CF2A8 10F00007 */  beq        $a3, $s0, .L800CF2C8
.L800CF2AC:
/* 89AAC 800CF2AC 24E70004 */   addiu     $a3, $a3, 0x4
/* 89AB0 800CF2B0 A0600001 */  sb         $zero, 0x1($v1)
/* 89AB4 800CF2B4 A0600002 */  sb         $zero, 0x2($v1)
/* 89AB8 800CF2B8 A0600003 */  sb         $zero, 0x3($v1)
/* 89ABC 800CF2BC 24630004 */  addiu      $v1, $v1, 0x4
/* 89AC0 800CF2C0 14F0FFFA */  bne        $a3, $s0, .L800CF2AC
/* 89AC4 800CF2C4 A060FFFC */   sb        $zero, -0x4($v1)
.L800CF2C8:
/* 89AC8 800CF2C8 00604825 */  or         $t1, $v1, $zero
/* 89ACC 800CF2CC 25F90024 */  addiu      $t9, $t7, 0x24
.L800CF2D0:
/* 89AD0 800CF2D0 8DE10000 */  lw         $at, 0x0($t7)
/* 89AD4 800CF2D4 25EF000C */  addiu      $t7, $t7, 0xC
/* 89AD8 800CF2D8 A9210000 */  swl        $at, 0x0($t1)
/* 89ADC 800CF2DC B9210003 */  swr        $at, 0x3($t1)
/* 89AE0 800CF2E0 8DE1FFF8 */  lw         $at, -0x8($t7)
/* 89AE4 800CF2E4 2529000C */  addiu      $t1, $t1, 0xC
/* 89AE8 800CF2E8 A921FFF8 */  swl        $at, -0x8($t1)
/* 89AEC 800CF2EC B921FFFB */  swr        $at, -0x5($t1)
/* 89AF0 800CF2F0 8DE1FFFC */  lw         $at, -0x4($t7)
/* 89AF4 800CF2F4 00000000 */  nop
/* 89AF8 800CF2F8 A921FFFC */  swl        $at, -0x4($t1)
/* 89AFC 800CF2FC 15F9FFF4 */  bne        $t7, $t9, .L800CF2D0
/* 89B00 800CF300 B921FFFF */   swr       $at, -0x1($t1)
/* 89B04 800CF304 8DE10000 */  lw         $at, 0x0($t7)
/* 89B08 800CF308 240A00FE */  addiu      $t2, $zero, 0xFE
/* 89B0C 800CF30C A9210000 */  swl        $at, 0x0($t1)
/* 89B10 800CF310 B9210003 */  swr        $at, 0x3($t1)
/* 89B14 800CF314 A06A0028 */  sb         $t2, 0x28($v1)
/* 89B18 800CF318 8FBF001C */  lw         $ra, 0x1C($sp)
/* 89B1C 800CF31C 8FB00018 */  lw         $s0, 0x18($sp)
/* 89B20 800CF320 24630028 */  addiu      $v1, $v1, 0x28
/* 89B24 800CF324 03E00008 */  jr         $ra
/* 89B28 800CF328 27BD0058 */   addiu     $sp, $sp, 0x58
/* 89B2C 800CF32C 00000000 */  nop

glabel func_800CF330
/* 89B30 800CF330 27BDFF50 */  addiu      $sp, $sp, -0xB0
/* 89B34 800CF334 AFBF001C */  sw         $ra, 0x1C($sp)
/* 89B38 800CF338 AFA400B0 */  sw         $a0, 0xB0($sp)
/* 89B3C 800CF33C AFA500B4 */  sw         $a1, 0xB4($sp)
/* 89B40 800CF340 AFA600B8 */  sw         $a2, 0xB8($sp)
/* 89B44 800CF344 AFA700BC */  sw         $a3, 0xBC($sp)
/* 89B48 800CF348 AFB00018 */  sw         $s0, 0x18($sp)
/* 89B4C 800CF34C AFA000A4 */  sw         $zero, 0xA4($sp)
.L800CF350:
/* 89B50 800CF350 8FAE00B8 */  lw         $t6, 0xB8($sp)
/* 89B54 800CF354 AFAE0074 */  sw         $t6, 0x74($sp)
/* 89B58 800CF358 91CF0000 */  lbu        $t7, 0x0($t6)
/* 89B5C 800CF35C 25D80001 */  addiu      $t8, $t6, 0x1
/* 89B60 800CF360 AFB80074 */  sw         $t8, 0x74($sp)
/* 89B64 800CF364 000F802A */  slt        $s0, $zero, $t7
/* 89B68 800CF368 12000010 */  beqz       $s0, .L800CF3AC
/* 89B6C 800CF36C A3AF0073 */   sb        $t7, 0x73($sp)
.L800CF370:
/* 89B70 800CF370 93B90073 */  lbu        $t9, 0x73($sp)
/* 89B74 800CF374 24010025 */  addiu      $at, $zero, 0x25
/* 89B78 800CF378 17210005 */  bne        $t9, $at, .L800CF390
/* 89B7C 800CF37C 00000000 */   nop
/* 89B80 800CF380 8FA80074 */  lw         $t0, 0x74($sp)
/* 89B84 800CF384 2509FFFF */  addiu      $t1, $t0, -0x1
/* 89B88 800CF388 10000008 */  b          .L800CF3AC
/* 89B8C 800CF38C AFA90074 */   sw        $t1, 0x74($sp)
.L800CF390:
/* 89B90 800CF390 8FAA0074 */  lw         $t2, 0x74($sp)
/* 89B94 800CF394 914B0000 */  lbu        $t3, 0x0($t2)
/* 89B98 800CF398 254C0001 */  addiu      $t4, $t2, 0x1
/* 89B9C 800CF39C AFAC0074 */  sw         $t4, 0x74($sp)
/* 89BA0 800CF3A0 000B802A */  slt        $s0, $zero, $t3
/* 89BA4 800CF3A4 1600FFF2 */  bnez       $s0, .L800CF370
/* 89BA8 800CF3A8 A3AB0073 */   sb        $t3, 0x73($sp)
.L800CF3AC:
/* 89BAC 800CF3AC 8FAD0074 */  lw         $t5, 0x74($sp)
/* 89BB0 800CF3B0 8FAF00B8 */  lw         $t7, 0xB8($sp)
/* 89BB4 800CF3B4 01AF7023 */  subu       $t6, $t5, $t7
/* 89BB8 800CF3B8 19C00013 */  blez       $t6, .L800CF408
/* 89BBC 800CF3BC 00000000 */   nop
/* 89BC0 800CF3C0 8FB900B0 */  lw         $t9, 0xB0($sp)
/* 89BC4 800CF3C4 8FA400B4 */  lw         $a0, 0xB4($sp)
/* 89BC8 800CF3C8 01E02825 */  or         $a1, $t7, $zero
/* 89BCC 800CF3CC 0320F809 */  jalr       $t9
/* 89BD0 800CF3D0 01C03025 */   or        $a2, $t6, $zero
/* 89BD4 800CF3D4 AFA200B4 */  sw         $v0, 0xB4($sp)
/* 89BD8 800CF3D8 8FB800B4 */  lw         $t8, 0xB4($sp)
/* 89BDC 800CF3DC 13000008 */  beqz       $t8, .L800CF400
/* 89BE0 800CF3E0 00000000 */   nop
/* 89BE4 800CF3E4 8FA80074 */  lw         $t0, 0x74($sp)
/* 89BE8 800CF3E8 8FA900B8 */  lw         $t1, 0xB8($sp)
/* 89BEC 800CF3EC 8FAA00A4 */  lw         $t2, 0xA4($sp)
/* 89BF0 800CF3F0 01095823 */  subu       $t3, $t0, $t1
/* 89BF4 800CF3F4 014B6021 */  addu       $t4, $t2, $t3
/* 89BF8 800CF3F8 10000003 */  b          .L800CF408
/* 89BFC 800CF3FC AFAC00A4 */   sw        $t4, 0xA4($sp)
.L800CF400:
/* 89C00 800CF400 100001D1 */  b          .L800CFB48
/* 89C04 800CF404 8FA200A4 */   lw        $v0, 0xA4($sp)
.L800CF408:
/* 89C08 800CF408 93AD0073 */  lbu        $t5, 0x73($sp)
/* 89C0C 800CF40C 15A00003 */  bnez       $t5, .L800CF41C
/* 89C10 800CF410 00000000 */   nop
/* 89C14 800CF414 100001CC */  b          .L800CFB48
/* 89C18 800CF418 8FA200A4 */   lw        $v0, 0xA4($sp)
.L800CF41C:
/* 89C1C 800CF41C 8FAF0074 */  lw         $t7, 0x74($sp)
/* 89C20 800CF420 AFA000A8 */  sw         $zero, 0xA8($sp)
/* 89C24 800CF424 3C04800F */  lui        $a0, %hi(D_800EC654)
/* 89C28 800CF428 25EE0001 */  addiu      $t6, $t7, 0x1
/* 89C2C 800CF42C AFAE0074 */  sw         $t6, 0x74($sp)
/* 89C30 800CF430 AFAE00B8 */  sw         $t6, 0xB8($sp)
/* 89C34 800CF434 91C50000 */  lbu        $a1, 0x0($t6)
/* 89C38 800CF438 0C034145 */  jal        func_800D0514
/* 89C3C 800CF43C 2484C654 */   addiu     $a0, $a0, %lo(D_800EC654)
/* 89C40 800CF440 AFA2006C */  sw         $v0, 0x6C($sp)
/* 89C44 800CF444 8FB9006C */  lw         $t9, 0x6C($sp)
/* 89C48 800CF448 13200017 */  beqz       $t9, .L800CF4A8
/* 89C4C 800CF44C 00000000 */   nop
.L800CF450:
/* 89C50 800CF450 8FA8006C */  lw         $t0, 0x6C($sp)
/* 89C54 800CF454 3C09800F */  lui        $t1, %hi(D_800EC654)
/* 89C58 800CF458 2529C654 */  addiu      $t1, $t1, %lo(D_800EC654)
/* 89C5C 800CF45C 01095023 */  subu       $t2, $t0, $t1
/* 89C60 800CF460 000A5880 */  sll        $t3, $t2, 2
/* 89C64 800CF464 3C0C800F */  lui        $t4, %hi(D_800EC65C)
/* 89C68 800CF468 018B6021 */  addu       $t4, $t4, $t3
/* 89C6C 800CF46C 8FAF0074 */  lw         $t7, 0x74($sp)
/* 89C70 800CF470 8D8CC65C */  lw         $t4, %lo(D_800EC65C)($t4)
/* 89C74 800CF474 8FB800A8 */  lw         $t8, 0xA8($sp)
/* 89C78 800CF478 25EE0001 */  addiu      $t6, $t7, 0x1
/* 89C7C 800CF47C AFAE0074 */  sw         $t6, 0x74($sp)
/* 89C80 800CF480 030C6825 */  or         $t5, $t8, $t4
/* 89C84 800CF484 3C04800F */  lui        $a0, %hi(D_800EC654)
/* 89C88 800CF488 AFAD00A8 */  sw         $t5, 0xA8($sp)
/* 89C8C 800CF48C 91C50000 */  lbu        $a1, 0x0($t6)
/* 89C90 800CF490 0C034145 */  jal        func_800D0514
/* 89C94 800CF494 2484C654 */   addiu     $a0, $a0, %lo(D_800EC654)
/* 89C98 800CF498 AFA2006C */  sw         $v0, 0x6C($sp)
/* 89C9C 800CF49C 8FB9006C */  lw         $t9, 0x6C($sp)
/* 89CA0 800CF4A0 1720FFEB */  bnez       $t9, .L800CF450
/* 89CA4 800CF4A4 00000000 */   nop
.L800CF4A8:
/* 89CA8 800CF4A8 8FA80074 */  lw         $t0, 0x74($sp)
/* 89CAC 800CF4AC 2401002A */  addiu      $at, $zero, 0x2A
/* 89CB0 800CF4B0 91090000 */  lbu        $t1, 0x0($t0)
/* 89CB4 800CF4B4 15210013 */  bne        $t1, $at, .L800CF504
/* 89CB8 800CF4B8 00000000 */   nop
/* 89CBC 800CF4BC 8FAA00BC */  lw         $t2, 0xBC($sp)
/* 89CC0 800CF4C0 2401FFFC */  addiu      $at, $zero, -0x4
/* 89CC4 800CF4C4 254B0003 */  addiu      $t3, $t2, 0x3
/* 89CC8 800CF4C8 0161C024 */  and        $t8, $t3, $at
/* 89CCC 800CF4CC 270C0004 */  addiu      $t4, $t8, 0x4
/* 89CD0 800CF4D0 AFAC00BC */  sw         $t4, 0xBC($sp)
/* 89CD4 800CF4D4 8F0D0000 */  lw         $t5, 0x0($t8)
/* 89CD8 800CF4D8 05A10006 */  bgez       $t5, .L800CF4F4
/* 89CDC 800CF4DC AFAD00A0 */   sw        $t5, 0xA0($sp)
/* 89CE0 800CF4E0 8FAE00A8 */  lw         $t6, 0xA8($sp)
/* 89CE4 800CF4E4 000D7823 */  negu       $t7, $t5
/* 89CE8 800CF4E8 AFAF00A0 */  sw         $t7, 0xA0($sp)
/* 89CEC 800CF4EC 35D90004 */  ori        $t9, $t6, 0x4
/* 89CF0 800CF4F0 AFB900A8 */  sw         $t9, 0xA8($sp)
.L800CF4F4:
/* 89CF4 800CF4F4 8FA80074 */  lw         $t0, 0x74($sp)
/* 89CF8 800CF4F8 25090001 */  addiu      $t1, $t0, 0x1
/* 89CFC 800CF4FC 1000001E */  b          .L800CF578
/* 89D00 800CF500 AFA90074 */   sw        $t1, 0x74($sp)
.L800CF504:
/* 89D04 800CF504 8FAA0074 */  lw         $t2, 0x74($sp)
/* 89D08 800CF508 AFA000A0 */  sw         $zero, 0xA0($sp)
/* 89D0C 800CF50C 914B0000 */  lbu        $t3, 0x0($t2)
/* 89D10 800CF510 29610030 */  slti       $at, $t3, 0x30
/* 89D14 800CF514 14200018 */  bnez       $at, .L800CF578
/* 89D18 800CF518 2961003A */   slti      $at, $t3, 0x3A
/* 89D1C 800CF51C 10200016 */  beqz       $at, .L800CF578
/* 89D20 800CF520 00000000 */   nop
.L800CF524:
/* 89D24 800CF524 8FAC00A0 */  lw         $t4, 0xA0($sp)
/* 89D28 800CF528 298103E7 */  slti       $at, $t4, 0x3E7
/* 89D2C 800CF52C 10200009 */  beqz       $at, .L800CF554
/* 89D30 800CF530 00000000 */   nop
/* 89D34 800CF534 8FB80074 */  lw         $t8, 0x74($sp)
/* 89D38 800CF538 000C7880 */  sll        $t7, $t4, 2
/* 89D3C 800CF53C 01EC7821 */  addu       $t7, $t7, $t4
/* 89D40 800CF540 930D0000 */  lbu        $t5, 0x0($t8)
/* 89D44 800CF544 000F7840 */  sll        $t7, $t7, 1
/* 89D48 800CF548 01AF7021 */  addu       $t6, $t5, $t7
/* 89D4C 800CF54C 25D9FFD0 */  addiu      $t9, $t6, -0x30
/* 89D50 800CF550 AFB900A0 */  sw         $t9, 0xA0($sp)
.L800CF554:
/* 89D54 800CF554 8FA80074 */  lw         $t0, 0x74($sp)
/* 89D58 800CF558 25090001 */  addiu      $t1, $t0, 0x1
/* 89D5C 800CF55C AFA90074 */  sw         $t1, 0x74($sp)
/* 89D60 800CF560 912A0000 */  lbu        $t2, 0x0($t1)
/* 89D64 800CF564 29410030 */  slti       $at, $t2, 0x30
/* 89D68 800CF568 14200003 */  bnez       $at, .L800CF578
/* 89D6C 800CF56C 2941003A */   slti      $at, $t2, 0x3A
/* 89D70 800CF570 1420FFEC */  bnez       $at, .L800CF524
/* 89D74 800CF574 00000000 */   nop
.L800CF578:
/* 89D78 800CF578 8FAB0074 */  lw         $t3, 0x74($sp)
/* 89D7C 800CF57C 2401002E */  addiu      $at, $zero, 0x2E
/* 89D80 800CF580 91780000 */  lbu        $t8, 0x0($t3)
/* 89D84 800CF584 13010004 */  beq        $t8, $at, .L800CF598
/* 89D88 800CF588 00000000 */   nop
/* 89D8C 800CF58C 240CFFFF */  addiu      $t4, $zero, -0x1
/* 89D90 800CF590 10000030 */  b          .L800CF654
/* 89D94 800CF594 AFAC009C */   sw        $t4, 0x9C($sp)
.L800CF598:
/* 89D98 800CF598 8FAD0074 */  lw         $t5, 0x74($sp)
/* 89D9C 800CF59C 2401002A */  addiu      $at, $zero, 0x2A
/* 89DA0 800CF5A0 25AF0001 */  addiu      $t7, $t5, 0x1
/* 89DA4 800CF5A4 AFAF0074 */  sw         $t7, 0x74($sp)
/* 89DA8 800CF5A8 91EE0000 */  lbu        $t6, 0x0($t7)
/* 89DAC 800CF5AC 15C1000C */  bne        $t6, $at, .L800CF5E0
/* 89DB0 800CF5B0 00000000 */   nop
/* 89DB4 800CF5B4 8FB900BC */  lw         $t9, 0xBC($sp)
/* 89DB8 800CF5B8 2401FFFC */  addiu      $at, $zero, -0x4
/* 89DBC 800CF5BC 25F80001 */  addiu      $t8, $t7, 0x1
/* 89DC0 800CF5C0 27280003 */  addiu      $t0, $t9, 0x3
/* 89DC4 800CF5C4 01014824 */  and        $t1, $t0, $at
/* 89DC8 800CF5C8 252A0004 */  addiu      $t2, $t1, 0x4
/* 89DCC 800CF5CC AFAA00BC */  sw         $t2, 0xBC($sp)
/* 89DD0 800CF5D0 8D2B0000 */  lw         $t3, 0x0($t1)
/* 89DD4 800CF5D4 AFB80074 */  sw         $t8, 0x74($sp)
/* 89DD8 800CF5D8 1000001E */  b          .L800CF654
/* 89DDC 800CF5DC AFAB009C */   sw        $t3, 0x9C($sp)
.L800CF5E0:
/* 89DE0 800CF5E0 8FAC0074 */  lw         $t4, 0x74($sp)
/* 89DE4 800CF5E4 AFA0009C */  sw         $zero, 0x9C($sp)
/* 89DE8 800CF5E8 918D0000 */  lbu        $t5, 0x0($t4)
/* 89DEC 800CF5EC 29A10030 */  slti       $at, $t5, 0x30
/* 89DF0 800CF5F0 14200018 */  bnez       $at, .L800CF654
/* 89DF4 800CF5F4 29A1003A */   slti      $at, $t5, 0x3A
/* 89DF8 800CF5F8 10200016 */  beqz       $at, .L800CF654
/* 89DFC 800CF5FC 00000000 */   nop
.L800CF600:
/* 89E00 800CF600 8FAE009C */  lw         $t6, 0x9C($sp)
/* 89E04 800CF604 29C103E7 */  slti       $at, $t6, 0x3E7
/* 89E08 800CF608 10200009 */  beqz       $at, .L800CF630
/* 89E0C 800CF60C 00000000 */   nop
/* 89E10 800CF610 8FB90074 */  lw         $t9, 0x74($sp)
/* 89E14 800CF614 000E5080 */  sll        $t2, $t6, 2
/* 89E18 800CF618 014E5021 */  addu       $t2, $t2, $t6
/* 89E1C 800CF61C 93280000 */  lbu        $t0, 0x0($t9)
/* 89E20 800CF620 000A5040 */  sll        $t2, $t2, 1
/* 89E24 800CF624 010A4821 */  addu       $t1, $t0, $t2
/* 89E28 800CF628 252BFFD0 */  addiu      $t3, $t1, -0x30
/* 89E2C 800CF62C AFAB009C */  sw         $t3, 0x9C($sp)
.L800CF630:
/* 89E30 800CF630 8FAF0074 */  lw         $t7, 0x74($sp)
/* 89E34 800CF634 25F80001 */  addiu      $t8, $t7, 0x1
/* 89E38 800CF638 AFB80074 */  sw         $t8, 0x74($sp)
/* 89E3C 800CF63C 930C0000 */  lbu        $t4, 0x0($t8)
/* 89E40 800CF640 29810030 */  slti       $at, $t4, 0x30
/* 89E44 800CF644 14200003 */  bnez       $at, .L800CF654
/* 89E48 800CF648 2981003A */   slti      $at, $t4, 0x3A
/* 89E4C 800CF64C 1420FFEC */  bnez       $at, .L800CF600
/* 89E50 800CF650 00000000 */   nop
.L800CF654:
/* 89E54 800CF654 8FAD0074 */  lw         $t5, 0x74($sp)
/* 89E58 800CF658 3C04800F */  lui        $a0, %hi(D_800EC650)
/* 89E5C 800CF65C 2484C650 */  addiu      $a0, $a0, %lo(D_800EC650)
/* 89E60 800CF660 0C034145 */  jal        func_800D0514
/* 89E64 800CF664 91A50000 */   lbu       $a1, 0x0($t5)
/* 89E68 800CF668 10400007 */  beqz       $v0, .L800CF688
/* 89E6C 800CF66C 00000000 */   nop
/* 89E70 800CF670 8FB90074 */  lw         $t9, 0x74($sp)
/* 89E74 800CF674 932E0000 */  lbu        $t6, 0x0($t9)
/* 89E78 800CF678 27280001 */  addiu      $t0, $t9, 0x1
/* 89E7C 800CF67C AFA80074 */  sw         $t0, 0x74($sp)
/* 89E80 800CF680 10000002 */  b          .L800CF68C
/* 89E84 800CF684 A3AE00AC */   sb        $t6, 0xAC($sp)
.L800CF688:
/* 89E88 800CF688 A3A000AC */  sb         $zero, 0xAC($sp)
.L800CF68C:
/* 89E8C 800CF68C 93AA00AC */  lbu        $t2, 0xAC($sp)
/* 89E90 800CF690 2401006C */  addiu      $at, $zero, 0x6C
/* 89E94 800CF694 1541000A */  bne        $t2, $at, .L800CF6C0
/* 89E98 800CF698 00000000 */   nop
/* 89E9C 800CF69C 8FA90074 */  lw         $t1, 0x74($sp)
/* 89EA0 800CF6A0 2401006C */  addiu      $at, $zero, 0x6C
/* 89EA4 800CF6A4 912B0000 */  lbu        $t3, 0x0($t1)
/* 89EA8 800CF6A8 15610005 */  bne        $t3, $at, .L800CF6C0
/* 89EAC 800CF6AC 00000000 */   nop
/* 89EB0 800CF6B0 240F004C */  addiu      $t7, $zero, 0x4C
/* 89EB4 800CF6B4 25380001 */  addiu      $t8, $t1, 0x1
/* 89EB8 800CF6B8 A3AF00AC */  sb         $t7, 0xAC($sp)
/* 89EBC 800CF6BC AFB80074 */  sw         $t8, 0x74($sp)
.L800CF6C0:
/* 89EC0 800CF6C0 8FAC0074 */  lw         $t4, 0x74($sp)
/* 89EC4 800CF6C4 27A40078 */  addiu      $a0, $sp, 0x78
/* 89EC8 800CF6C8 27A500BC */  addiu      $a1, $sp, 0xBC
/* 89ECC 800CF6CC 27A7004C */  addiu      $a3, $sp, 0x4C
/* 89ED0 800CF6D0 0C033ED7 */  jal        func_800CFB5C
/* 89ED4 800CF6D4 91860000 */   lbu       $a2, 0x0($t4)
/* 89ED8 800CF6D8 8FAD0084 */  lw         $t5, 0x84($sp)
/* 89EDC 800CF6DC 8FAE0088 */  lw         $t6, 0x88($sp)
/* 89EE0 800CF6E0 8FA8008C */  lw         $t0, 0x8C($sp)
/* 89EE4 800CF6E4 8FAB0090 */  lw         $t3, 0x90($sp)
/* 89EE8 800CF6E8 01AEC821 */  addu       $t9, $t5, $t6
/* 89EEC 800CF6EC 8FA90094 */  lw         $t1, 0x94($sp)
/* 89EF0 800CF6F0 03285021 */  addu       $t2, $t9, $t0
/* 89EF4 800CF6F4 8FAC0098 */  lw         $t4, 0x98($sp)
/* 89EF8 800CF6F8 8FAE00A0 */  lw         $t6, 0xA0($sp)
/* 89EFC 800CF6FC 8FA800A8 */  lw         $t0, 0xA8($sp)
/* 89F00 800CF700 014B7821 */  addu       $t7, $t2, $t3
/* 89F04 800CF704 01E9C021 */  addu       $t8, $t7, $t1
/* 89F08 800CF708 030C6821 */  addu       $t5, $t8, $t4
/* 89F0C 800CF70C 01CDC823 */  subu       $t9, $t6, $t5
/* 89F10 800CF710 310A0004 */  andi       $t2, $t0, 0x4
/* 89F14 800CF714 15400028 */  bnez       $t2, .L800CF7B8
/* 89F18 800CF718 AFB900A0 */   sw        $t9, 0xA0($sp)
/* 89F1C 800CF71C 0019582A */  slt        $t3, $zero, $t9
/* 89F20 800CF720 11600025 */  beqz       $t3, .L800CF7B8
/* 89F24 800CF724 00000000 */   nop
/* 89F28 800CF728 11600023 */  beqz       $t3, .L800CF7B8
/* 89F2C 800CF72C AFB90044 */   sw        $t9, 0x44($sp)
.L800CF730:
/* 89F30 800CF730 8FAF0044 */  lw         $t7, 0x44($sp)
/* 89F34 800CF734 2DE10021 */  sltiu      $at, $t7, 0x21
/* 89F38 800CF738 14200004 */  bnez       $at, .L800CF74C
/* 89F3C 800CF73C 00000000 */   nop
/* 89F40 800CF740 24090020 */  addiu      $t1, $zero, 0x20
/* 89F44 800CF744 10000003 */  b          .L800CF754
/* 89F48 800CF748 AFA90048 */   sw        $t1, 0x48($sp)
.L800CF74C:
/* 89F4C 800CF74C 8FB80044 */  lw         $t8, 0x44($sp)
/* 89F50 800CF750 AFB80048 */  sw         $t8, 0x48($sp)
.L800CF754:
/* 89F54 800CF754 8FAC0048 */  lw         $t4, 0x48($sp)
/* 89F58 800CF758 19800012 */  blez       $t4, .L800CF7A4
/* 89F5C 800CF75C 00000000 */   nop
/* 89F60 800CF760 8FB900B0 */  lw         $t9, 0xB0($sp)
/* 89F64 800CF764 3C05800F */  lui        $a1, %hi(D_800E90E0)
/* 89F68 800CF768 24A590E0 */  addiu      $a1, $a1, %lo(D_800E90E0)
/* 89F6C 800CF76C 8FA400B4 */  lw         $a0, 0xB4($sp)
/* 89F70 800CF770 0320F809 */  jalr       $t9
/* 89F74 800CF774 01803025 */   or        $a2, $t4, $zero
/* 89F78 800CF778 AFA200B4 */  sw         $v0, 0xB4($sp)
/* 89F7C 800CF77C 8FAE00B4 */  lw         $t6, 0xB4($sp)
/* 89F80 800CF780 11C00006 */  beqz       $t6, .L800CF79C
/* 89F84 800CF784 00000000 */   nop
/* 89F88 800CF788 8FAD00A4 */  lw         $t5, 0xA4($sp)
/* 89F8C 800CF78C 8FA80048 */  lw         $t0, 0x48($sp)
/* 89F90 800CF790 01A85021 */  addu       $t2, $t5, $t0
/* 89F94 800CF794 10000003 */  b          .L800CF7A4
/* 89F98 800CF798 AFAA00A4 */   sw        $t2, 0xA4($sp)
.L800CF79C:
/* 89F9C 800CF79C 100000EA */  b          .L800CFB48
/* 89FA0 800CF7A0 8FA200A4 */   lw        $v0, 0xA4($sp)
.L800CF7A4:
/* 89FA4 800CF7A4 8FAB0044 */  lw         $t3, 0x44($sp)
/* 89FA8 800CF7A8 8FAF0048 */  lw         $t7, 0x48($sp)
/* 89FAC 800CF7AC 016F4823 */  subu       $t1, $t3, $t7
/* 89FB0 800CF7B0 1D20FFDF */  bgtz       $t1, .L800CF730
/* 89FB4 800CF7B4 AFA90044 */   sw        $t1, 0x44($sp)
.L800CF7B8:
/* 89FB8 800CF7B8 8FB80084 */  lw         $t8, 0x84($sp)
/* 89FBC 800CF7BC 1B000011 */  blez       $t8, .L800CF804
/* 89FC0 800CF7C0 00000000 */   nop
/* 89FC4 800CF7C4 8FB900B0 */  lw         $t9, 0xB0($sp)
/* 89FC8 800CF7C8 8FA400B4 */  lw         $a0, 0xB4($sp)
/* 89FCC 800CF7CC 27A5004C */  addiu      $a1, $sp, 0x4C
/* 89FD0 800CF7D0 0320F809 */  jalr       $t9
/* 89FD4 800CF7D4 03003025 */   or        $a2, $t8, $zero
/* 89FD8 800CF7D8 AFA200B4 */  sw         $v0, 0xB4($sp)
/* 89FDC 800CF7DC 8FAC00B4 */  lw         $t4, 0xB4($sp)
/* 89FE0 800CF7E0 11800006 */  beqz       $t4, .L800CF7FC
/* 89FE4 800CF7E4 00000000 */   nop
/* 89FE8 800CF7E8 8FAE00A4 */  lw         $t6, 0xA4($sp)
/* 89FEC 800CF7EC 8FAD0084 */  lw         $t5, 0x84($sp)
/* 89FF0 800CF7F0 01CD4021 */  addu       $t0, $t6, $t5
/* 89FF4 800CF7F4 10000003 */  b          .L800CF804
/* 89FF8 800CF7F8 AFA800A4 */   sw        $t0, 0xA4($sp)
.L800CF7FC:
/* 89FFC 800CF7FC 100000D2 */  b          .L800CFB48
/* 8A000 800CF800 8FA200A4 */   lw        $v0, 0xA4($sp)
.L800CF804:
/* 8A004 800CF804 8FAA0088 */  lw         $t2, 0x88($sp)
/* 8A008 800CF808 000A582A */  slt        $t3, $zero, $t2
/* 8A00C 800CF80C 11600025 */  beqz       $t3, .L800CF8A4
/* 8A010 800CF810 00000000 */   nop
/* 8A014 800CF814 11600023 */  beqz       $t3, .L800CF8A4
/* 8A018 800CF818 AFAA003C */   sw        $t2, 0x3C($sp)
.L800CF81C:
/* 8A01C 800CF81C 8FAF003C */  lw         $t7, 0x3C($sp)
/* 8A020 800CF820 2DE10021 */  sltiu      $at, $t7, 0x21
/* 8A024 800CF824 14200004 */  bnez       $at, .L800CF838
/* 8A028 800CF828 00000000 */   nop
/* 8A02C 800CF82C 24090020 */  addiu      $t1, $zero, 0x20
/* 8A030 800CF830 10000003 */  b          .L800CF840
/* 8A034 800CF834 AFA90040 */   sw        $t1, 0x40($sp)
.L800CF838:
/* 8A038 800CF838 8FB8003C */  lw         $t8, 0x3C($sp)
/* 8A03C 800CF83C AFB80040 */  sw         $t8, 0x40($sp)
.L800CF840:
/* 8A040 800CF840 8FB90040 */  lw         $t9, 0x40($sp)
/* 8A044 800CF844 1B200012 */  blez       $t9, .L800CF890
/* 8A048 800CF848 00000000 */   nop
/* 8A04C 800CF84C 03203025 */  or         $a2, $t9, $zero
/* 8A050 800CF850 8FB900B0 */  lw         $t9, 0xB0($sp)
/* 8A054 800CF854 3C05800F */  lui        $a1, %hi(D_800E9104)
/* 8A058 800CF858 24A59104 */  addiu      $a1, $a1, %lo(D_800E9104)
/* 8A05C 800CF85C 0320F809 */  jalr       $t9
/* 8A060 800CF860 8FA400B4 */   lw        $a0, 0xB4($sp)
/* 8A064 800CF864 AFA200B4 */  sw         $v0, 0xB4($sp)
/* 8A068 800CF868 8FAC00B4 */  lw         $t4, 0xB4($sp)
/* 8A06C 800CF86C 11800006 */  beqz       $t4, .L800CF888
/* 8A070 800CF870 00000000 */   nop
/* 8A074 800CF874 8FAE00A4 */  lw         $t6, 0xA4($sp)
/* 8A078 800CF878 8FAD0040 */  lw         $t5, 0x40($sp)
/* 8A07C 800CF87C 01CD4021 */  addu       $t0, $t6, $t5
/* 8A080 800CF880 10000003 */  b          .L800CF890
/* 8A084 800CF884 AFA800A4 */   sw        $t0, 0xA4($sp)
.L800CF888:
/* 8A088 800CF888 100000AF */  b          .L800CFB48
/* 8A08C 800CF88C 8FA200A4 */   lw        $v0, 0xA4($sp)
.L800CF890:
/* 8A090 800CF890 8FAA003C */  lw         $t2, 0x3C($sp)
/* 8A094 800CF894 8FAB0040 */  lw         $t3, 0x40($sp)
/* 8A098 800CF898 014B7823 */  subu       $t7, $t2, $t3
/* 8A09C 800CF89C 1DE0FFDF */  bgtz       $t7, .L800CF81C
/* 8A0A0 800CF8A0 AFAF003C */   sw        $t7, 0x3C($sp)
.L800CF8A4:
/* 8A0A4 800CF8A4 8FA9008C */  lw         $t1, 0x8C($sp)
/* 8A0A8 800CF8A8 19200011 */  blez       $t1, .L800CF8F0
/* 8A0AC 800CF8AC 00000000 */   nop
/* 8A0B0 800CF8B0 8FB900B0 */  lw         $t9, 0xB0($sp)
/* 8A0B4 800CF8B4 8FA400B4 */  lw         $a0, 0xB4($sp)
/* 8A0B8 800CF8B8 8FA50080 */  lw         $a1, 0x80($sp)
/* 8A0BC 800CF8BC 0320F809 */  jalr       $t9
/* 8A0C0 800CF8C0 01203025 */   or        $a2, $t1, $zero
/* 8A0C4 800CF8C4 AFA200B4 */  sw         $v0, 0xB4($sp)
/* 8A0C8 800CF8C8 8FB800B4 */  lw         $t8, 0xB4($sp)
/* 8A0CC 800CF8CC 13000006 */  beqz       $t8, .L800CF8E8
/* 8A0D0 800CF8D0 00000000 */   nop
/* 8A0D4 800CF8D4 8FAC00A4 */  lw         $t4, 0xA4($sp)
/* 8A0D8 800CF8D8 8FAE008C */  lw         $t6, 0x8C($sp)
/* 8A0DC 800CF8DC 018E6821 */  addu       $t5, $t4, $t6
/* 8A0E0 800CF8E0 10000003 */  b          .L800CF8F0
/* 8A0E4 800CF8E4 AFAD00A4 */   sw        $t5, 0xA4($sp)
.L800CF8E8:
/* 8A0E8 800CF8E8 10000097 */  b          .L800CFB48
/* 8A0EC 800CF8EC 8FA200A4 */   lw        $v0, 0xA4($sp)
.L800CF8F0:
/* 8A0F0 800CF8F0 8FA80090 */  lw         $t0, 0x90($sp)
/* 8A0F4 800CF8F4 0008502A */  slt        $t2, $zero, $t0
/* 8A0F8 800CF8F8 11400025 */  beqz       $t2, .L800CF990
/* 8A0FC 800CF8FC 00000000 */   nop
/* 8A100 800CF900 11400023 */  beqz       $t2, .L800CF990
/* 8A104 800CF904 AFA80034 */   sw        $t0, 0x34($sp)
.L800CF908:
/* 8A108 800CF908 8FAB0034 */  lw         $t3, 0x34($sp)
/* 8A10C 800CF90C 2D610021 */  sltiu      $at, $t3, 0x21
/* 8A110 800CF910 14200004 */  bnez       $at, .L800CF924
/* 8A114 800CF914 00000000 */   nop
/* 8A118 800CF918 240F0020 */  addiu      $t7, $zero, 0x20
/* 8A11C 800CF91C 10000003 */  b          .L800CF92C
/* 8A120 800CF920 AFAF0038 */   sw        $t7, 0x38($sp)
.L800CF924:
/* 8A124 800CF924 8FA90034 */  lw         $t1, 0x34($sp)
/* 8A128 800CF928 AFA90038 */  sw         $t1, 0x38($sp)
.L800CF92C:
/* 8A12C 800CF92C 8FB90038 */  lw         $t9, 0x38($sp)
/* 8A130 800CF930 1B200012 */  blez       $t9, .L800CF97C
/* 8A134 800CF934 00000000 */   nop
/* 8A138 800CF938 03203025 */  or         $a2, $t9, $zero
/* 8A13C 800CF93C 8FB900B0 */  lw         $t9, 0xB0($sp)
/* 8A140 800CF940 3C05800F */  lui        $a1, %hi(D_800E9104)
/* 8A144 800CF944 24A59104 */  addiu      $a1, $a1, %lo(D_800E9104)
/* 8A148 800CF948 0320F809 */  jalr       $t9
/* 8A14C 800CF94C 8FA400B4 */   lw        $a0, 0xB4($sp)
/* 8A150 800CF950 AFA200B4 */  sw         $v0, 0xB4($sp)
/* 8A154 800CF954 8FB800B4 */  lw         $t8, 0xB4($sp)
/* 8A158 800CF958 13000006 */  beqz       $t8, .L800CF974
/* 8A15C 800CF95C 00000000 */   nop
/* 8A160 800CF960 8FAC00A4 */  lw         $t4, 0xA4($sp)
/* 8A164 800CF964 8FAE0038 */  lw         $t6, 0x38($sp)
/* 8A168 800CF968 018E6821 */  addu       $t5, $t4, $t6
/* 8A16C 800CF96C 10000003 */  b          .L800CF97C
/* 8A170 800CF970 AFAD00A4 */   sw        $t5, 0xA4($sp)
.L800CF974:
/* 8A174 800CF974 10000074 */  b          .L800CFB48
/* 8A178 800CF978 8FA200A4 */   lw        $v0, 0xA4($sp)
.L800CF97C:
/* 8A17C 800CF97C 8FA80034 */  lw         $t0, 0x34($sp)
/* 8A180 800CF980 8FAA0038 */  lw         $t2, 0x38($sp)
/* 8A184 800CF984 010A5823 */  subu       $t3, $t0, $t2
/* 8A188 800CF988 1D60FFDF */  bgtz       $t3, .L800CF908
/* 8A18C 800CF98C AFAB0034 */   sw        $t3, 0x34($sp)
.L800CF990:
/* 8A190 800CF990 8FAF0094 */  lw         $t7, 0x94($sp)
/* 8A194 800CF994 19E00014 */  blez       $t7, .L800CF9E8
/* 8A198 800CF998 00000000 */   nop
/* 8A19C 800CF99C 8FA90080 */  lw         $t1, 0x80($sp)
/* 8A1A0 800CF9A0 8FB9008C */  lw         $t9, 0x8C($sp)
/* 8A1A4 800CF9A4 8FA400B4 */  lw         $a0, 0xB4($sp)
/* 8A1A8 800CF9A8 01E03025 */  or         $a2, $t7, $zero
/* 8A1AC 800CF9AC 01392821 */  addu       $a1, $t1, $t9
/* 8A1B0 800CF9B0 8FB900B0 */  lw         $t9, 0xB0($sp)
/* 8A1B4 800CF9B4 0320F809 */  jalr       $t9
/* 8A1B8 800CF9B8 00000000 */   nop
/* 8A1BC 800CF9BC AFA200B4 */  sw         $v0, 0xB4($sp)
/* 8A1C0 800CF9C0 8FB800B4 */  lw         $t8, 0xB4($sp)
/* 8A1C4 800CF9C4 13000006 */  beqz       $t8, .L800CF9E0
/* 8A1C8 800CF9C8 00000000 */   nop
/* 8A1CC 800CF9CC 8FAC00A4 */  lw         $t4, 0xA4($sp)
/* 8A1D0 800CF9D0 8FAE0094 */  lw         $t6, 0x94($sp)
/* 8A1D4 800CF9D4 018E6821 */  addu       $t5, $t4, $t6
/* 8A1D8 800CF9D8 10000003 */  b          .L800CF9E8
/* 8A1DC 800CF9DC AFAD00A4 */   sw        $t5, 0xA4($sp)
.L800CF9E0:
/* 8A1E0 800CF9E0 10000059 */  b          .L800CFB48
/* 8A1E4 800CF9E4 8FA200A4 */   lw        $v0, 0xA4($sp)
.L800CF9E8:
/* 8A1E8 800CF9E8 8FA80098 */  lw         $t0, 0x98($sp)
/* 8A1EC 800CF9EC 0008502A */  slt        $t2, $zero, $t0
/* 8A1F0 800CF9F0 11400025 */  beqz       $t2, .L800CFA88
/* 8A1F4 800CF9F4 00000000 */   nop
/* 8A1F8 800CF9F8 11400023 */  beqz       $t2, .L800CFA88
/* 8A1FC 800CF9FC AFA8002C */   sw        $t0, 0x2C($sp)
.L800CFA00:
/* 8A200 800CFA00 8FAB002C */  lw         $t3, 0x2C($sp)
/* 8A204 800CFA04 2D610021 */  sltiu      $at, $t3, 0x21
/* 8A208 800CFA08 14200004 */  bnez       $at, .L800CFA1C
/* 8A20C 800CFA0C 00000000 */   nop
/* 8A210 800CFA10 24090020 */  addiu      $t1, $zero, 0x20
/* 8A214 800CFA14 10000003 */  b          .L800CFA24
/* 8A218 800CFA18 AFA90030 */   sw        $t1, 0x30($sp)
.L800CFA1C:
/* 8A21C 800CFA1C 8FAF002C */  lw         $t7, 0x2C($sp)
/* 8A220 800CFA20 AFAF0030 */  sw         $t7, 0x30($sp)
.L800CFA24:
/* 8A224 800CFA24 8FB90030 */  lw         $t9, 0x30($sp)
/* 8A228 800CFA28 1B200012 */  blez       $t9, .L800CFA74
/* 8A22C 800CFA2C 00000000 */   nop
/* 8A230 800CFA30 03203025 */  or         $a2, $t9, $zero
/* 8A234 800CFA34 8FB900B0 */  lw         $t9, 0xB0($sp)
/* 8A238 800CFA38 3C05800F */  lui        $a1, %hi(D_800E9104)
/* 8A23C 800CFA3C 24A59104 */  addiu      $a1, $a1, %lo(D_800E9104)
/* 8A240 800CFA40 0320F809 */  jalr       $t9
/* 8A244 800CFA44 8FA400B4 */   lw        $a0, 0xB4($sp)
/* 8A248 800CFA48 AFA200B4 */  sw         $v0, 0xB4($sp)
/* 8A24C 800CFA4C 8FB800B4 */  lw         $t8, 0xB4($sp)
/* 8A250 800CFA50 13000006 */  beqz       $t8, .L800CFA6C
/* 8A254 800CFA54 00000000 */   nop
/* 8A258 800CFA58 8FAC00A4 */  lw         $t4, 0xA4($sp)
/* 8A25C 800CFA5C 8FAE0030 */  lw         $t6, 0x30($sp)
/* 8A260 800CFA60 018E6821 */  addu       $t5, $t4, $t6
/* 8A264 800CFA64 10000003 */  b          .L800CFA74
/* 8A268 800CFA68 AFAD00A4 */   sw        $t5, 0xA4($sp)
.L800CFA6C:
/* 8A26C 800CFA6C 10000036 */  b          .L800CFB48
/* 8A270 800CFA70 8FA200A4 */   lw        $v0, 0xA4($sp)
.L800CFA74:
/* 8A274 800CFA74 8FA8002C */  lw         $t0, 0x2C($sp)
/* 8A278 800CFA78 8FAA0030 */  lw         $t2, 0x30($sp)
/* 8A27C 800CFA7C 010A5823 */  subu       $t3, $t0, $t2
/* 8A280 800CFA80 1D60FFDF */  bgtz       $t3, .L800CFA00
/* 8A284 800CFA84 AFAB002C */   sw        $t3, 0x2C($sp)
.L800CFA88:
/* 8A288 800CFA88 8FA900A8 */  lw         $t1, 0xA8($sp)
/* 8A28C 800CFA8C 312F0004 */  andi       $t7, $t1, 0x4
/* 8A290 800CFA90 11E00029 */  beqz       $t7, .L800CFB38
/* 8A294 800CFA94 00000000 */   nop
/* 8A298 800CFA98 8FB900A0 */  lw         $t9, 0xA0($sp)
/* 8A29C 800CFA9C 0019C02A */  slt        $t8, $zero, $t9
/* 8A2A0 800CFAA0 13000025 */  beqz       $t8, .L800CFB38
/* 8A2A4 800CFAA4 00000000 */   nop
/* 8A2A8 800CFAA8 13000023 */  beqz       $t8, .L800CFB38
/* 8A2AC 800CFAAC AFB90024 */   sw        $t9, 0x24($sp)
.L800CFAB0:
/* 8A2B0 800CFAB0 8FAC0024 */  lw         $t4, 0x24($sp)
/* 8A2B4 800CFAB4 2D810021 */  sltiu      $at, $t4, 0x21
/* 8A2B8 800CFAB8 14200004 */  bnez       $at, .L800CFACC
/* 8A2BC 800CFABC 00000000 */   nop
/* 8A2C0 800CFAC0 240E0020 */  addiu      $t6, $zero, 0x20
/* 8A2C4 800CFAC4 10000003 */  b          .L800CFAD4
/* 8A2C8 800CFAC8 AFAE0028 */   sw        $t6, 0x28($sp)
.L800CFACC:
/* 8A2CC 800CFACC 8FAD0024 */  lw         $t5, 0x24($sp)
/* 8A2D0 800CFAD0 AFAD0028 */  sw         $t5, 0x28($sp)
.L800CFAD4:
/* 8A2D4 800CFAD4 8FA80028 */  lw         $t0, 0x28($sp)
/* 8A2D8 800CFAD8 19000012 */  blez       $t0, .L800CFB24
/* 8A2DC 800CFADC 00000000 */   nop
/* 8A2E0 800CFAE0 8FB900B0 */  lw         $t9, 0xB0($sp)
/* 8A2E4 800CFAE4 3C05800F */  lui        $a1, %hi(D_800E90E0)
/* 8A2E8 800CFAE8 24A590E0 */  addiu      $a1, $a1, %lo(D_800E90E0)
/* 8A2EC 800CFAEC 8FA400B4 */  lw         $a0, 0xB4($sp)
/* 8A2F0 800CFAF0 0320F809 */  jalr       $t9
/* 8A2F4 800CFAF4 01003025 */   or        $a2, $t0, $zero
/* 8A2F8 800CFAF8 AFA200B4 */  sw         $v0, 0xB4($sp)
/* 8A2FC 800CFAFC 8FAA00B4 */  lw         $t2, 0xB4($sp)
/* 8A300 800CFB00 11400006 */  beqz       $t2, .L800CFB1C
/* 8A304 800CFB04 00000000 */   nop
/* 8A308 800CFB08 8FAB00A4 */  lw         $t3, 0xA4($sp)
/* 8A30C 800CFB0C 8FA90028 */  lw         $t1, 0x28($sp)
/* 8A310 800CFB10 01697821 */  addu       $t7, $t3, $t1
/* 8A314 800CFB14 10000003 */  b          .L800CFB24
/* 8A318 800CFB18 AFAF00A4 */   sw        $t7, 0xA4($sp)
.L800CFB1C:
/* 8A31C 800CFB1C 1000000A */  b          .L800CFB48
/* 8A320 800CFB20 8FA200A4 */   lw        $v0, 0xA4($sp)
.L800CFB24:
/* 8A324 800CFB24 8FB80024 */  lw         $t8, 0x24($sp)
/* 8A328 800CFB28 8FAC0028 */  lw         $t4, 0x28($sp)
/* 8A32C 800CFB2C 030C7023 */  subu       $t6, $t8, $t4
/* 8A330 800CFB30 1DC0FFDF */  bgtz       $t6, .L800CFAB0
/* 8A334 800CFB34 AFAE0024 */   sw        $t6, 0x24($sp)
.L800CFB38:
/* 8A338 800CFB38 8FAD0074 */  lw         $t5, 0x74($sp)
/* 8A33C 800CFB3C 25A80001 */  addiu      $t0, $t5, 0x1
/* 8A340 800CFB40 1000FE03 */  b          .L800CF350
/* 8A344 800CFB44 AFA800B8 */   sw        $t0, 0xB8($sp)
.L800CFB48:
/* 8A348 800CFB48 8FBF001C */  lw         $ra, 0x1C($sp)
/* 8A34C 800CFB4C 8FB00018 */  lw         $s0, 0x18($sp)
/* 8A350 800CFB50 27BD00B0 */  addiu      $sp, $sp, 0xB0
/* 8A354 800CFB54 03E00008 */  jr         $ra
/* 8A358 800CFB58 00000000 */   nop

glabel func_800CFB5C
/* 8A35C 800CFB5C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 8A360 800CFB60 AFA40038 */  sw         $a0, 0x38($sp)
/* 8A364 800CFB64 8FAE0038 */  lw         $t6, 0x38($sp)
/* 8A368 800CFB68 AFBF0024 */  sw         $ra, 0x24($sp)
/* 8A36C 800CFB6C AFA5003C */  sw         $a1, 0x3C($sp)
/* 8A370 800CFB70 AFA60040 */  sw         $a2, 0x40($sp)
/* 8A374 800CFB74 AFA70044 */  sw         $a3, 0x44($sp)
/* 8A378 800CFB78 AFB30020 */  sw         $s3, 0x20($sp)
/* 8A37C 800CFB7C AFB2001C */  sw         $s2, 0x1C($sp)
/* 8A380 800CFB80 AFB10018 */  sw         $s1, 0x18($sp)
/* 8A384 800CFB84 AFB00014 */  sw         $s0, 0x14($sp)
/* 8A388 800CFB88 ADC00020 */  sw         $zero, 0x20($t6)
/* 8A38C 800CFB8C 8FAF0038 */  lw         $t7, 0x38($sp)
/* 8A390 800CFB90 8DF30020 */  lw         $s3, 0x20($t7)
/* 8A394 800CFB94 ADF3001C */  sw         $s3, 0x1C($t7)
/* 8A398 800CFB98 8FB80038 */  lw         $t8, 0x38($sp)
/* 8A39C 800CFB9C 02609025 */  or         $s2, $s3, $zero
/* 8A3A0 800CFBA0 02408825 */  or         $s1, $s2, $zero
/* 8A3A4 800CFBA4 AF120018 */  sw         $s2, 0x18($t8)
/* 8A3A8 800CFBA8 8FB90038 */  lw         $t9, 0x38($sp)
/* 8A3AC 800CFBAC 02208025 */  or         $s0, $s1, $zero
/* 8A3B0 800CFBB0 AF310014 */  sw         $s1, 0x14($t9)
/* 8A3B4 800CFBB4 8FA80038 */  lw         $t0, 0x38($sp)
/* 8A3B8 800CFBB8 AD100010 */  sw         $s0, 0x10($t0)
/* 8A3BC 800CFBBC 8FA90038 */  lw         $t1, 0x38($sp)
/* 8A3C0 800CFBC0 AD30000C */  sw         $s0, 0xC($t1)
/* 8A3C4 800CFBC4 93B00043 */  lbu        $s0, 0x43($sp)
/* 8A3C8 800CFBC8 2A010026 */  slti       $at, $s0, 0x26
/* 8A3CC 800CFBCC 1420000B */  bnez       $at, .L800CFBFC
/* 8A3D0 800CFBD0 00000000 */   nop
/* 8A3D4 800CFBD4 260AFFBB */  addiu      $t2, $s0, -0x45
/* 8A3D8 800CFBD8 2D410034 */  sltiu      $at, $t2, 0x34
/* 8A3DC 800CFBDC 10200224 */  beqz       $at, L800D0470
/* 8A3E0 800CFBE0 00000000 */   nop
/* 8A3E4 800CFBE4 000A5080 */  sll        $t2, $t2, 2
/* 8A3E8 800CFBE8 3C01800F */  lui        $at, %hi(jtbl_800EC674_main)
/* 8A3EC 800CFBEC 002A0821 */  addu       $at, $at, $t2
/* 8A3F0 800CFBF0 8C2AC674 */  lw         $t2, %lo(jtbl_800EC674_main)($at)
/* 8A3F4 800CFBF4 01400008 */  jr         $t2
/* 8A3F8 800CFBF8 00000000 */   nop
.L800CFBFC:
/* 8A3FC 800CFBFC 24010025 */  addiu      $at, $zero, 0x25
/* 8A400 800CFC00 12010210 */  beq        $s0, $at, .L800D0444
/* 8A404 800CFC04 00000000 */   nop
/* 8A408 800CFC08 10000219 */  b          L800D0470
/* 8A40C 800CFC0C 00000000 */   nop
glabel L800CFC10
/* 8A410 800CFC10 8FAB003C */  lw         $t3, 0x3C($sp)
/* 8A414 800CFC14 2401FFFC */  addiu      $at, $zero, -0x4
/* 8A418 800CFC18 8D6C0000 */  lw         $t4, 0x0($t3)
/* 8A41C 800CFC1C 258D0003 */  addiu      $t5, $t4, 0x3
/* 8A420 800CFC20 01A17024 */  and        $t6, $t5, $at
/* 8A424 800CFC24 25CF0004 */  addiu      $t7, $t6, 0x4
/* 8A428 800CFC28 AD6F0000 */  sw         $t7, 0x0($t3)
/* 8A42C 800CFC2C 8FB8003C */  lw         $t8, 0x3C($sp)
/* 8A430 800CFC30 8FAA0038 */  lw         $t2, 0x38($sp)
/* 8A434 800CFC34 8FA90044 */  lw         $t1, 0x44($sp)
/* 8A438 800CFC38 8F190000 */  lw         $t9, 0x0($t8)
/* 8A43C 800CFC3C 8D4C000C */  lw         $t4, 0xC($t2)
/* 8A440 800CFC40 8F28FFFC */  lw         $t0, -0x4($t9)
/* 8A444 800CFC44 012C6821 */  addu       $t5, $t1, $t4
/* 8A448 800CFC48 A1A80000 */  sb         $t0, 0x0($t5)
/* 8A44C 800CFC4C 8FAE0038 */  lw         $t6, 0x38($sp)
/* 8A450 800CFC50 8DCF000C */  lw         $t7, 0xC($t6)
/* 8A454 800CFC54 25EB0001 */  addiu      $t3, $t7, 0x1
/* 8A458 800CFC58 1000020F */  b          .L800D0498
/* 8A45C 800CFC5C ADCB000C */   sw        $t3, 0xC($t6)
glabel L800CFC60
/* 8A460 800CFC60 8FB80038 */  lw         $t8, 0x38($sp)
/* 8A464 800CFC64 2401006C */  addiu      $at, $zero, 0x6C
/* 8A468 800CFC68 93190034 */  lbu        $t9, 0x34($t8)
/* 8A46C 800CFC6C 17210011 */  bne        $t9, $at, .L800CFCB4
/* 8A470 800CFC70 00000000 */   nop
/* 8A474 800CFC74 8FAA003C */  lw         $t2, 0x3C($sp)
/* 8A478 800CFC78 2401FFFC */  addiu      $at, $zero, -0x4
/* 8A47C 800CFC7C 8D490000 */  lw         $t1, 0x0($t2)
/* 8A480 800CFC80 252C0003 */  addiu      $t4, $t1, 0x3
/* 8A484 800CFC84 01814024 */  and        $t0, $t4, $at
/* 8A488 800CFC88 250D0004 */  addiu      $t5, $t0, 0x4
/* 8A48C 800CFC8C AD4D0000 */  sw         $t5, 0x0($t2)
/* 8A490 800CFC90 8FAF003C */  lw         $t7, 0x3C($sp)
/* 8A494 800CFC94 8FA90038 */  lw         $t1, 0x38($sp)
/* 8A498 800CFC98 8DEB0000 */  lw         $t3, 0x0($t7)
/* 8A49C 800CFC9C 8D6EFFFC */  lw         $t6, -0x4($t3)
/* 8A4A0 800CFCA0 01C0C825 */  or         $t9, $t6, $zero
/* 8A4A4 800CFCA4 000EC7C3 */  sra        $t8, $t6, 31
/* 8A4A8 800CFCA8 AD380000 */  sw         $t8, 0x0($t1)
/* 8A4AC 800CFCAC 10000024 */  b          .L800CFD40
/* 8A4B0 800CFCB0 AD390004 */   sw        $t9, 0x4($t1)
.L800CFCB4:
/* 8A4B4 800CFCB4 8FAC0038 */  lw         $t4, 0x38($sp)
/* 8A4B8 800CFCB8 2401004C */  addiu      $at, $zero, 0x4C
/* 8A4BC 800CFCBC 91880034 */  lbu        $t0, 0x34($t4)
/* 8A4C0 800CFCC0 15010010 */  bne        $t0, $at, .L800CFD04
/* 8A4C4 800CFCC4 00000000 */   nop
/* 8A4C8 800CFCC8 8FAD003C */  lw         $t5, 0x3C($sp)
/* 8A4CC 800CFCCC 2401FFF8 */  addiu      $at, $zero, -0x8
/* 8A4D0 800CFCD0 8DAA0000 */  lw         $t2, 0x0($t5)
/* 8A4D4 800CFCD4 254F0007 */  addiu      $t7, $t2, 0x7
/* 8A4D8 800CFCD8 01E15824 */  and        $t3, $t7, $at
/* 8A4DC 800CFCDC 256E0008 */  addiu      $t6, $t3, 0x8
/* 8A4E0 800CFCE0 ADAE0000 */  sw         $t6, 0x0($t5)
/* 8A4E4 800CFCE4 8FB8003C */  lw         $t8, 0x3C($sp)
/* 8A4E8 800CFCE8 8FA90038 */  lw         $t1, 0x38($sp)
/* 8A4EC 800CFCEC 8F190000 */  lw         $t9, 0x0($t8)
/* 8A4F0 800CFCF0 8F2CFFF8 */  lw         $t4, -0x8($t9)
/* 8A4F4 800CFCF4 8F2DFFFC */  lw         $t5, -0x4($t9)
/* 8A4F8 800CFCF8 AD2C0000 */  sw         $t4, 0x0($t1)
/* 8A4FC 800CFCFC 10000010 */  b          .L800CFD40
/* 8A500 800CFD00 AD2D0004 */   sw        $t5, 0x4($t1)
.L800CFD04:
/* 8A504 800CFD04 8FA8003C */  lw         $t0, 0x3C($sp)
/* 8A508 800CFD08 2401FFFC */  addiu      $at, $zero, -0x4
/* 8A50C 800CFD0C 8D0A0000 */  lw         $t2, 0x0($t0)
/* 8A510 800CFD10 254F0003 */  addiu      $t7, $t2, 0x3
/* 8A514 800CFD14 01E15824 */  and        $t3, $t7, $at
/* 8A518 800CFD18 256E0004 */  addiu      $t6, $t3, 0x4
/* 8A51C 800CFD1C AD0E0000 */  sw         $t6, 0x0($t0)
/* 8A520 800CFD20 8FB8003C */  lw         $t8, 0x3C($sp)
/* 8A524 800CFD24 8FAD0038 */  lw         $t5, 0x38($sp)
/* 8A528 800CFD28 8F190000 */  lw         $t9, 0x0($t8)
/* 8A52C 800CFD2C 8F2CFFFC */  lw         $t4, -0x4($t9)
/* 8A530 800CFD30 01805825 */  or         $t3, $t4, $zero
/* 8A534 800CFD34 000C57C3 */  sra        $t2, $t4, 31
/* 8A538 800CFD38 ADAA0000 */  sw         $t2, 0x0($t5)
/* 8A53C 800CFD3C ADAB0004 */  sw         $t3, 0x4($t5)
.L800CFD40:
/* 8A540 800CFD40 8FA90038 */  lw         $t1, 0x38($sp)
/* 8A544 800CFD44 24010068 */  addiu      $at, $zero, 0x68
/* 8A548 800CFD48 912F0034 */  lbu        $t7, 0x34($t1)
/* 8A54C 800CFD4C 15E1000A */  bne        $t7, $at, .L800CFD78
/* 8A550 800CFD50 00000000 */   nop
/* 8A554 800CFD54 8D2F0004 */  lw         $t7, 0x4($t1)
/* 8A558 800CFD58 8D2E0000 */  lw         $t6, 0x0($t1)
/* 8A55C 800CFD5C 01E04025 */  or         $t0, $t7, $zero
/* 8A560 800CFD60 0008C400 */  sll        $t8, $t0, 16
/* 8A564 800CFD64 0018CC03 */  sra        $t9, $t8, 16
/* 8A568 800CFD68 03206825 */  or         $t5, $t9, $zero
/* 8A56C 800CFD6C 001967C3 */  sra        $t4, $t9, 31
/* 8A570 800CFD70 AD2C0000 */  sw         $t4, 0x0($t1)
/* 8A574 800CFD74 AD2D0004 */  sw         $t5, 0x4($t1)
.L800CFD78:
/* 8A578 800CFD78 8FAA0038 */  lw         $t2, 0x38($sp)
/* 8A57C 800CFD7C 8D4E0000 */  lw         $t6, 0x0($t2)
/* 8A580 800CFD80 8D4F0004 */  lw         $t7, 0x4($t2)
/* 8A584 800CFD84 1DC0000F */  bgtz       $t6, .L800CFDC4
/* 8A588 800CFD88 00000000 */   nop
/* 8A58C 800CFD8C 05C00003 */  bltz       $t6, .L800CFD9C
/* 8A590 800CFD90 00000000 */   nop
/* 8A594 800CFD94 1000000B */  b          .L800CFDC4
/* 8A598 800CFD98 00000000 */   nop
.L800CFD9C:
/* 8A59C 800CFD9C 8FA80044 */  lw         $t0, 0x44($sp)
/* 8A5A0 800CFDA0 8D58000C */  lw         $t8, 0xC($t2)
/* 8A5A4 800CFDA4 240B002D */  addiu      $t3, $zero, 0x2D
/* 8A5A8 800CFDA8 0118C821 */  addu       $t9, $t0, $t8
/* 8A5AC 800CFDAC A32B0000 */  sb         $t3, 0x0($t9)
/* 8A5B0 800CFDB0 8FAC0038 */  lw         $t4, 0x38($sp)
/* 8A5B4 800CFDB4 8D8D000C */  lw         $t5, 0xC($t4)
/* 8A5B8 800CFDB8 25A90001 */  addiu      $t1, $t5, 0x1
/* 8A5BC 800CFDBC 1000001E */  b          .L800CFE38
/* 8A5C0 800CFDC0 AD89000C */   sw        $t1, 0xC($t4)
.L800CFDC4:
/* 8A5C4 800CFDC4 8FAE0038 */  lw         $t6, 0x38($sp)
/* 8A5C8 800CFDC8 8DCF0030 */  lw         $t7, 0x30($t6)
/* 8A5CC 800CFDCC 31EA0002 */  andi       $t2, $t7, 0x2
/* 8A5D0 800CFDD0 1140000B */  beqz       $t2, .L800CFE00
/* 8A5D4 800CFDD4 00000000 */   nop
/* 8A5D8 800CFDD8 8FB80044 */  lw         $t8, 0x44($sp)
/* 8A5DC 800CFDDC 8DCB000C */  lw         $t3, 0xC($t6)
/* 8A5E0 800CFDE0 2408002B */  addiu      $t0, $zero, 0x2B
/* 8A5E4 800CFDE4 030BC821 */  addu       $t9, $t8, $t3
/* 8A5E8 800CFDE8 A3280000 */  sb         $t0, 0x0($t9)
/* 8A5EC 800CFDEC 8FAD0038 */  lw         $t5, 0x38($sp)
/* 8A5F0 800CFDF0 8DA9000C */  lw         $t1, 0xC($t5)
/* 8A5F4 800CFDF4 252C0001 */  addiu      $t4, $t1, 0x1
/* 8A5F8 800CFDF8 1000000F */  b          .L800CFE38
/* 8A5FC 800CFDFC ADAC000C */   sw        $t4, 0xC($t5)
.L800CFE00:
/* 8A600 800CFE00 8FAF0038 */  lw         $t7, 0x38($sp)
/* 8A604 800CFE04 8DEA0030 */  lw         $t2, 0x30($t7)
/* 8A608 800CFE08 314E0001 */  andi       $t6, $t2, 0x1
/* 8A60C 800CFE0C 11C0000A */  beqz       $t6, .L800CFE38
/* 8A610 800CFE10 00000000 */   nop
/* 8A614 800CFE14 8FAB0044 */  lw         $t3, 0x44($sp)
/* 8A618 800CFE18 8DE8000C */  lw         $t0, 0xC($t7)
/* 8A61C 800CFE1C 24180020 */  addiu      $t8, $zero, 0x20
/* 8A620 800CFE20 0168C821 */  addu       $t9, $t3, $t0
/* 8A624 800CFE24 A3380000 */  sb         $t8, 0x0($t9)
/* 8A628 800CFE28 8FA90038 */  lw         $t1, 0x38($sp)
/* 8A62C 800CFE2C 8D2C000C */  lw         $t4, 0xC($t1)
/* 8A630 800CFE30 258D0001 */  addiu      $t5, $t4, 0x1
/* 8A634 800CFE34 AD2D000C */  sw         $t5, 0xC($t1)
.L800CFE38:
/* 8A638 800CFE38 8FAA0038 */  lw         $t2, 0x38($sp)
/* 8A63C 800CFE3C 8FAF0044 */  lw         $t7, 0x44($sp)
/* 8A640 800CFE40 8D4E000C */  lw         $t6, 0xC($t2)
/* 8A644 800CFE44 01CF5821 */  addu       $t3, $t6, $t7
/* 8A648 800CFE48 AD4B0008 */  sw         $t3, 0x8($t2)
/* 8A64C 800CFE4C 93A50043 */  lbu        $a1, 0x43($sp)
/* 8A650 800CFE50 0C0343F8 */  jal        func_800D0FE0
/* 8A654 800CFE54 8FA40038 */   lw        $a0, 0x38($sp)
/* 8A658 800CFE58 1000018F */  b          .L800D0498
/* 8A65C 800CFE5C 00000000 */   nop
glabel L800CFE60
/* 8A660 800CFE60 8FA80038 */  lw         $t0, 0x38($sp)
/* 8A664 800CFE64 2401006C */  addiu      $at, $zero, 0x6C
/* 8A668 800CFE68 91180034 */  lbu        $t8, 0x34($t0)
/* 8A66C 800CFE6C 17010011 */  bne        $t8, $at, .L800CFEB4
/* 8A670 800CFE70 00000000 */   nop
/* 8A674 800CFE74 8FB9003C */  lw         $t9, 0x3C($sp)
/* 8A678 800CFE78 2401FFFC */  addiu      $at, $zero, -0x4
/* 8A67C 800CFE7C 8F2C0000 */  lw         $t4, 0x0($t9)
/* 8A680 800CFE80 258D0003 */  addiu      $t5, $t4, 0x3
/* 8A684 800CFE84 01A14824 */  and        $t1, $t5, $at
/* 8A688 800CFE88 252E0004 */  addiu      $t6, $t1, 0x4
/* 8A68C 800CFE8C AF2E0000 */  sw         $t6, 0x0($t9)
/* 8A690 800CFE90 8FAF003C */  lw         $t7, 0x3C($sp)
/* 8A694 800CFE94 8FB80038 */  lw         $t8, 0x38($sp)
/* 8A698 800CFE98 8DEB0000 */  lw         $t3, 0x0($t7)
/* 8A69C 800CFE9C 8D6AFFFC */  lw         $t2, -0x4($t3)
/* 8A6A0 800CFEA0 01404825 */  or         $t1, $t2, $zero
/* 8A6A4 800CFEA4 000A47C3 */  sra        $t0, $t2, 31
/* 8A6A8 800CFEA8 AF080000 */  sw         $t0, 0x0($t8)
/* 8A6AC 800CFEAC 10000024 */  b          .L800CFF40
/* 8A6B0 800CFEB0 AF090004 */   sw        $t1, 0x4($t8)
.L800CFEB4:
/* 8A6B4 800CFEB4 8FAC0038 */  lw         $t4, 0x38($sp)
/* 8A6B8 800CFEB8 2401004C */  addiu      $at, $zero, 0x4C
/* 8A6BC 800CFEBC 918D0034 */  lbu        $t5, 0x34($t4)
/* 8A6C0 800CFEC0 15A10010 */  bne        $t5, $at, .L800CFF04
/* 8A6C4 800CFEC4 00000000 */   nop
/* 8A6C8 800CFEC8 8FAE003C */  lw         $t6, 0x3C($sp)
/* 8A6CC 800CFECC 2401FFF8 */  addiu      $at, $zero, -0x8
/* 8A6D0 800CFED0 8DD90000 */  lw         $t9, 0x0($t6)
/* 8A6D4 800CFED4 272F0007 */  addiu      $t7, $t9, 0x7
/* 8A6D8 800CFED8 01E15824 */  and        $t3, $t7, $at
/* 8A6DC 800CFEDC 256A0008 */  addiu      $t2, $t3, 0x8
/* 8A6E0 800CFEE0 ADCA0000 */  sw         $t2, 0x0($t6)
/* 8A6E4 800CFEE4 8FA8003C */  lw         $t0, 0x3C($sp)
/* 8A6E8 800CFEE8 8FAC0038 */  lw         $t4, 0x38($sp)
/* 8A6EC 800CFEEC 8D090000 */  lw         $t1, 0x0($t0)
/* 8A6F0 800CFEF0 8D38FFF8 */  lw         $t8, -0x8($t1)
/* 8A6F4 800CFEF4 8D39FFFC */  lw         $t9, -0x4($t1)
/* 8A6F8 800CFEF8 AD980000 */  sw         $t8, 0x0($t4)
/* 8A6FC 800CFEFC 10000010 */  b          .L800CFF40
/* 8A700 800CFF00 AD990004 */   sw        $t9, 0x4($t4)
.L800CFF04:
/* 8A704 800CFF04 8FAD003C */  lw         $t5, 0x3C($sp)
/* 8A708 800CFF08 2401FFFC */  addiu      $at, $zero, -0x4
/* 8A70C 800CFF0C 8DAF0000 */  lw         $t7, 0x0($t5)
/* 8A710 800CFF10 25EB0003 */  addiu      $t3, $t7, 0x3
/* 8A714 800CFF14 01615024 */  and        $t2, $t3, $at
/* 8A718 800CFF18 254E0004 */  addiu      $t6, $t2, 0x4
/* 8A71C 800CFF1C ADAE0000 */  sw         $t6, 0x0($t5)
/* 8A720 800CFF20 8FA8003C */  lw         $t0, 0x3C($sp)
/* 8A724 800CFF24 8FB90038 */  lw         $t9, 0x38($sp)
/* 8A728 800CFF28 8D090000 */  lw         $t1, 0x0($t0)
/* 8A72C 800CFF2C 8D38FFFC */  lw         $t8, -0x4($t1)
/* 8A730 800CFF30 03006825 */  or         $t5, $t8, $zero
/* 8A734 800CFF34 001867C3 */  sra        $t4, $t8, 31
/* 8A738 800CFF38 AF2C0000 */  sw         $t4, 0x0($t9)
/* 8A73C 800CFF3C AF2D0004 */  sw         $t5, 0x4($t9)
.L800CFF40:
/* 8A740 800CFF40 8FAF0038 */  lw         $t7, 0x38($sp)
/* 8A744 800CFF44 24010068 */  addiu      $at, $zero, 0x68
/* 8A748 800CFF48 91EB0034 */  lbu        $t3, 0x34($t7)
/* 8A74C 800CFF4C 1561000A */  bne        $t3, $at, .L800CFF78
/* 8A750 800CFF50 00000000 */   nop
/* 8A754 800CFF54 8DEB0004 */  lw         $t3, 0x4($t7)
/* 8A758 800CFF58 8DEA0000 */  lw         $t2, 0x0($t7)
/* 8A75C 800CFF5C 24180000 */  addiu      $t8, $zero, 0x0
/* 8A760 800CFF60 01607025 */  or         $t6, $t3, $zero
/* 8A764 800CFF64 31C8FFFF */  andi       $t0, $t6, 0xFFFF
/* 8A768 800CFF68 0100C825 */  or         $t9, $t0, $zero
/* 8A76C 800CFF6C ADF90004 */  sw         $t9, 0x4($t7)
/* 8A770 800CFF70 1000000C */  b          .L800CFFA4
/* 8A774 800CFF74 ADF80000 */   sw        $t8, 0x0($t7)
.L800CFF78:
/* 8A778 800CFF78 8FA90038 */  lw         $t1, 0x38($sp)
/* 8A77C 800CFF7C 912C0034 */  lbu        $t4, 0x34($t1)
/* 8A780 800CFF80 15800008 */  bnez       $t4, .L800CFFA4
/* 8A784 800CFF84 00000000 */   nop
/* 8A788 800CFF88 8D2B0004 */  lw         $t3, 0x4($t1)
/* 8A78C 800CFF8C 8D2A0000 */  lw         $t2, 0x0($t1)
/* 8A790 800CFF90 240E0000 */  addiu      $t6, $zero, 0x0
/* 8A794 800CFF94 01606825 */  or         $t5, $t3, $zero
/* 8A798 800CFF98 01A07825 */  or         $t7, $t5, $zero
/* 8A79C 800CFF9C AD2F0004 */  sw         $t7, 0x4($t1)
/* 8A7A0 800CFFA0 AD2E0000 */  sw         $t6, 0x0($t1)
.L800CFFA4:
/* 8A7A4 800CFFA4 8FA80038 */  lw         $t0, 0x38($sp)
/* 8A7A8 800CFFA8 8D180030 */  lw         $t8, 0x30($t0)
/* 8A7AC 800CFFAC 33190008 */  andi       $t9, $t8, 0x8
/* 8A7B0 800CFFB0 1320001A */  beqz       $t9, .L800D001C
/* 8A7B4 800CFFB4 00000000 */   nop
/* 8A7B8 800CFFB8 8FAA0044 */  lw         $t2, 0x44($sp)
/* 8A7BC 800CFFBC 8D0B000C */  lw         $t3, 0xC($t0)
/* 8A7C0 800CFFC0 240C0030 */  addiu      $t4, $zero, 0x30
/* 8A7C4 800CFFC4 24010078 */  addiu      $at, $zero, 0x78
/* 8A7C8 800CFFC8 014B6821 */  addu       $t5, $t2, $t3
/* 8A7CC 800CFFCC A1AC0000 */  sb         $t4, 0x0($t5)
/* 8A7D0 800CFFD0 8FAE0038 */  lw         $t6, 0x38($sp)
/* 8A7D4 800CFFD4 8DCF000C */  lw         $t7, 0xC($t6)
/* 8A7D8 800CFFD8 25E90001 */  addiu      $t1, $t7, 0x1
/* 8A7DC 800CFFDC ADC9000C */  sw         $t1, 0xC($t6)
/* 8A7E0 800CFFE0 93B80043 */  lbu        $t8, 0x43($sp)
/* 8A7E4 800CFFE4 13010003 */  beq        $t8, $at, .L800CFFF4
/* 8A7E8 800CFFE8 24010058 */   addiu     $at, $zero, 0x58
/* 8A7EC 800CFFEC 1701000B */  bne        $t8, $at, .L800D001C
/* 8A7F0 800CFFF0 00000000 */   nop
.L800CFFF4:
/* 8A7F4 800CFFF4 8FAA0038 */  lw         $t2, 0x38($sp)
/* 8A7F8 800CFFF8 8FA80044 */  lw         $t0, 0x44($sp)
/* 8A7FC 800CFFFC 93B90043 */  lbu        $t9, 0x43($sp)
D_800D0000:
/* 8A800 800D0000 8D4B000C */  lw         $t3, 0xC($t2)
/* 8A804 800D0004 010B6021 */  addu       $t4, $t0, $t3
/* 8A808 800D0008 A1990000 */  sb         $t9, 0x0($t4)
/* 8A80C 800D000C 8FAD0038 */  lw         $t5, 0x38($sp)
/* 8A810 800D0010 8DAF000C */  lw         $t7, 0xC($t5)
/* 8A814 800D0014 25E90001 */  addiu      $t1, $t7, 0x1
/* 8A818 800D0018 ADA9000C */  sw         $t1, 0xC($t5)
.L800D001C:
/* 8A81C 800D001C 8FAE0038 */  lw         $t6, 0x38($sp)
/* 8A820 800D0020 8FAA0044 */  lw         $t2, 0x44($sp)
/* 8A824 800D0024 8DD8000C */  lw         $t8, 0xC($t6)
/* 8A828 800D0028 030A4021 */  addu       $t0, $t8, $t2
/* 8A82C 800D002C ADC80008 */  sw         $t0, 0x8($t6)
/* 8A830 800D0030 93A50043 */  lbu        $a1, 0x43($sp)
/* 8A834 800D0034 0C0343F8 */  jal        func_800D0FE0
/* 8A838 800D0038 8FA40038 */   lw        $a0, 0x38($sp)
/* 8A83C 800D003C 10000116 */  b          .L800D0498
/* 8A840 800D0040 00000000 */   nop
glabel L800D0044
/* 8A844 800D0044 8FAB0038 */  lw         $t3, 0x38($sp)
/* 8A848 800D0048 2401004C */  addiu      $at, $zero, 0x4C
/* 8A84C 800D004C 91790034 */  lbu        $t9, 0x34($t3)
/* 8A850 800D0050 17210025 */  bne        $t9, $at, .L800D00E8
/* 8A854 800D0054 00000000 */   nop
/* 8A858 800D0058 8FAC003C */  lw         $t4, 0x3C($sp)
/* 8A85C 800D005C 8D8F0000 */  lw         $t7, 0x0($t4)
/* 8A860 800D0060 31E90001 */  andi       $t1, $t7, 0x1
/* 8A864 800D0064 11200007 */  beqz       $t1, .L800D0084
/* 8A868 800D0068 00000000 */   nop
/* 8A86C 800D006C 25ED0007 */  addiu      $t5, $t7, 0x7
/* 8A870 800D0070 AD8D0000 */  sw         $t5, 0x0($t4)
/* 8A874 800D0074 8FB8003C */  lw         $t8, 0x3C($sp)
/* 8A878 800D0078 8F100000 */  lw         $s0, 0x0($t8)
/* 8A87C 800D007C 10000016 */  b          .L800D00D8
/* 8A880 800D0080 2610FFEA */   addiu     $s0, $s0, -0x16
.L800D0084:
/* 8A884 800D0084 8FAA003C */  lw         $t2, 0x3C($sp)
/* 8A888 800D0088 8D480000 */  lw         $t0, 0x0($t2)
/* 8A88C 800D008C 310E0002 */  andi       $t6, $t0, 0x2
/* 8A890 800D0090 11C00007 */  beqz       $t6, .L800D00B0
/* 8A894 800D0094 00000000 */   nop
/* 8A898 800D0098 250B000A */  addiu      $t3, $t0, 0xA
/* 8A89C 800D009C AD4B0000 */  sw         $t3, 0x0($t2)
/* 8A8A0 800D00A0 8FB9003C */  lw         $t9, 0x3C($sp)
/* 8A8A4 800D00A4 8F310000 */  lw         $s1, 0x0($t9)
/* 8A8A8 800D00A8 1000000A */  b          .L800D00D4
/* 8A8AC 800D00AC 2631FFD8 */   addiu     $s1, $s1, -0x28
.L800D00B0:
/* 8A8B0 800D00B0 8FA9003C */  lw         $t1, 0x3C($sp)
/* 8A8B4 800D00B4 2401FFF8 */  addiu      $at, $zero, -0x8
/* 8A8B8 800D00B8 8D2F0000 */  lw         $t7, 0x0($t1)
/* 8A8BC 800D00BC 25ED0007 */  addiu      $t5, $t7, 0x7
/* 8A8C0 800D00C0 01A16024 */  and        $t4, $t5, $at
/* 8A8C4 800D00C4 25980008 */  addiu      $t8, $t4, 0x8
/* 8A8C8 800D00C8 AD380000 */  sw         $t8, 0x0($t1)
/* 8A8CC 800D00CC 8FAE003C */  lw         $t6, 0x3C($sp)
/* 8A8D0 800D00D0 8DD10000 */  lw         $s1, 0x0($t6)
.L800D00D4:
/* 8A8D4 800D00D4 02208025 */  or         $s0, $s1, $zero
.L800D00D8:
/* 8A8D8 800D00D8 D604FFF8 */  ldc1       $f4, -0x8($s0)
/* 8A8DC 800D00DC 8FA80038 */  lw         $t0, 0x38($sp)
/* 8A8E0 800D00E0 10000024 */  b          .L800D0174
/* 8A8E4 800D00E4 F5040000 */   sdc1      $f4, 0x0($t0)
.L800D00E8:
/* 8A8E8 800D00E8 8FAB003C */  lw         $t3, 0x3C($sp)
/* 8A8EC 800D00EC 8D6A0000 */  lw         $t2, 0x0($t3)
/* 8A8F0 800D00F0 31590001 */  andi       $t9, $t2, 0x1
/* 8A8F4 800D00F4 13200007 */  beqz       $t9, .L800D0114
/* 8A8F8 800D00F8 00000000 */   nop
/* 8A8FC 800D00FC 254F0007 */  addiu      $t7, $t2, 0x7
/* 8A900 800D0100 AD6F0000 */  sw         $t7, 0x0($t3)
/* 8A904 800D0104 8FAD003C */  lw         $t5, 0x3C($sp)
/* 8A908 800D0108 8DB20000 */  lw         $s2, 0x0($t5)
/* 8A90C 800D010C 10000016 */  b          .L800D0168
/* 8A910 800D0110 2652FFEA */   addiu     $s2, $s2, -0x16
.L800D0114:
/* 8A914 800D0114 8FAC003C */  lw         $t4, 0x3C($sp)
/* 8A918 800D0118 8D980000 */  lw         $t8, 0x0($t4)
/* 8A91C 800D011C 33090002 */  andi       $t1, $t8, 0x2
/* 8A920 800D0120 11200007 */  beqz       $t1, .L800D0140
/* 8A924 800D0124 00000000 */   nop
/* 8A928 800D0128 270E000A */  addiu      $t6, $t8, 0xA
/* 8A92C 800D012C AD8E0000 */  sw         $t6, 0x0($t4)
/* 8A930 800D0130 8FA8003C */  lw         $t0, 0x3C($sp)
/* 8A934 800D0134 8D130000 */  lw         $s3, 0x0($t0)
/* 8A938 800D0138 1000000A */  b          .L800D0164
/* 8A93C 800D013C 2673FFD8 */   addiu     $s3, $s3, -0x28
.L800D0140:
/* 8A940 800D0140 8FB9003C */  lw         $t9, 0x3C($sp)
/* 8A944 800D0144 2401FFF8 */  addiu      $at, $zero, -0x8
/* 8A948 800D0148 8F2A0000 */  lw         $t2, 0x0($t9)
/* 8A94C 800D014C 254F0007 */  addiu      $t7, $t2, 0x7
/* 8A950 800D0150 01E15824 */  and        $t3, $t7, $at
/* 8A954 800D0154 256D0008 */  addiu      $t5, $t3, 0x8
/* 8A958 800D0158 AF2D0000 */  sw         $t5, 0x0($t9)
/* 8A95C 800D015C 8FA9003C */  lw         $t1, 0x3C($sp)
/* 8A960 800D0160 8D330000 */  lw         $s3, 0x0($t1)
.L800D0164:
/* 8A964 800D0164 02609025 */  or         $s2, $s3, $zero
.L800D0168:
/* 8A968 800D0168 D646FFF8 */  ldc1       $f6, -0x8($s2)
/* 8A96C 800D016C 8FB80038 */  lw         $t8, 0x38($sp)
/* 8A970 800D0170 F7060000 */  sdc1       $f6, 0x0($t8)
.L800D0174:
/* 8A974 800D0174 8FAE0038 */  lw         $t6, 0x38($sp)
/* 8A978 800D0178 95CC0000 */  lhu        $t4, 0x0($t6)
/* 8A97C 800D017C 31888000 */  andi       $t0, $t4, 0x8000
/* 8A980 800D0180 1100000B */  beqz       $t0, .L800D01B0
/* 8A984 800D0184 00000000 */   nop
/* 8A988 800D0188 8FAF0044 */  lw         $t7, 0x44($sp)
/* 8A98C 800D018C 8DCB000C */  lw         $t3, 0xC($t6)
/* 8A990 800D0190 240A002D */  addiu      $t2, $zero, 0x2D
/* 8A994 800D0194 01EB6821 */  addu       $t5, $t7, $t3
/* 8A998 800D0198 A1AA0000 */  sb         $t2, 0x0($t5)
/* 8A99C 800D019C 8FB90038 */  lw         $t9, 0x38($sp)
/* 8A9A0 800D01A0 8F29000C */  lw         $t1, 0xC($t9)
/* 8A9A4 800D01A4 25380001 */  addiu      $t8, $t1, 0x1
/* 8A9A8 800D01A8 1000001E */  b          .L800D0224
/* 8A9AC 800D01AC AF38000C */   sw        $t8, 0xC($t9)
.L800D01B0:
/* 8A9B0 800D01B0 8FAC0038 */  lw         $t4, 0x38($sp)
/* 8A9B4 800D01B4 8D880030 */  lw         $t0, 0x30($t4)
/* 8A9B8 800D01B8 310E0002 */  andi       $t6, $t0, 0x2
/* 8A9BC 800D01BC 11C0000B */  beqz       $t6, .L800D01EC
/* 8A9C0 800D01C0 00000000 */   nop
/* 8A9C4 800D01C4 8FAB0044 */  lw         $t3, 0x44($sp)
/* 8A9C8 800D01C8 8D8A000C */  lw         $t2, 0xC($t4)
/* 8A9CC 800D01CC 240F002B */  addiu      $t7, $zero, 0x2B
/* 8A9D0 800D01D0 016A6821 */  addu       $t5, $t3, $t2
/* 8A9D4 800D01D4 A1AF0000 */  sb         $t7, 0x0($t5)
/* 8A9D8 800D01D8 8FA90038 */  lw         $t1, 0x38($sp)
/* 8A9DC 800D01DC 8D38000C */  lw         $t8, 0xC($t1)
/* 8A9E0 800D01E0 27190001 */  addiu      $t9, $t8, 0x1
/* 8A9E4 800D01E4 1000000F */  b          .L800D0224
/* 8A9E8 800D01E8 AD39000C */   sw        $t9, 0xC($t1)
.L800D01EC:
/* 8A9EC 800D01EC 8FA80038 */  lw         $t0, 0x38($sp)
/* 8A9F0 800D01F0 8D0E0030 */  lw         $t6, 0x30($t0)
/* 8A9F4 800D01F4 31CC0001 */  andi       $t4, $t6, 0x1
/* 8A9F8 800D01F8 1180000A */  beqz       $t4, .L800D0224
/* 8A9FC 800D01FC 00000000 */   nop
/* 8AA00 800D0200 8FAA0044 */  lw         $t2, 0x44($sp)
/* 8AA04 800D0204 8D0F000C */  lw         $t7, 0xC($t0)
/* 8AA08 800D0208 240B0020 */  addiu      $t3, $zero, 0x20
/* 8AA0C 800D020C 014F6821 */  addu       $t5, $t2, $t7
/* 8AA10 800D0210 A1AB0000 */  sb         $t3, 0x0($t5)
/* 8AA14 800D0214 8FB80038 */  lw         $t8, 0x38($sp)
/* 8AA18 800D0218 8F19000C */  lw         $t9, 0xC($t8)
/* 8AA1C 800D021C 27290001 */  addiu      $t1, $t9, 0x1
/* 8AA20 800D0220 AF09000C */  sw         $t1, 0xC($t8)
.L800D0224:
/* 8AA24 800D0224 8FAE0038 */  lw         $t6, 0x38($sp)
/* 8AA28 800D0228 8FA80044 */  lw         $t0, 0x44($sp)
/* 8AA2C 800D022C 8DCC000C */  lw         $t4, 0xC($t6)
/* 8AA30 800D0230 01885021 */  addu       $t2, $t4, $t0
/* 8AA34 800D0234 ADCA0008 */  sw         $t2, 0x8($t6)
/* 8AA38 800D0238 93A50043 */  lbu        $a1, 0x43($sp)
/* 8AA3C 800D023C 0C0344B8 */  jal        func_800D12E0
/* 8AA40 800D0240 8FA40038 */   lw        $a0, 0x38($sp)
/* 8AA44 800D0244 10000094 */  b          .L800D0498
/* 8AA48 800D0248 00000000 */   nop
glabel L800D024C
/* 8AA4C 800D024C 8FAF0038 */  lw         $t7, 0x38($sp)
/* 8AA50 800D0250 24010068 */  addiu      $at, $zero, 0x68
/* 8AA54 800D0254 91EB0034 */  lbu        $t3, 0x34($t7)
/* 8AA58 800D0258 1561000F */  bne        $t3, $at, .L800D0298
/* 8AA5C 800D025C 00000000 */   nop
/* 8AA60 800D0260 8FAD003C */  lw         $t5, 0x3C($sp)
/* 8AA64 800D0264 2401FFFC */  addiu      $at, $zero, -0x4
/* 8AA68 800D0268 8DB90000 */  lw         $t9, 0x0($t5)
/* 8AA6C 800D026C 27290003 */  addiu      $t1, $t9, 0x3
/* 8AA70 800D0270 0121C024 */  and        $t8, $t1, $at
/* 8AA74 800D0274 270C0004 */  addiu      $t4, $t8, 0x4
/* 8AA78 800D0278 ADAC0000 */  sw         $t4, 0x0($t5)
/* 8AA7C 800D027C 8FA8003C */  lw         $t0, 0x3C($sp)
/* 8AA80 800D0280 8FAA0038 */  lw         $t2, 0x38($sp)
/* 8AA84 800D0284 8D100000 */  lw         $s0, 0x0($t0)
/* 8AA88 800D0288 8D4E002C */  lw         $t6, 0x2C($t2)
/* 8AA8C 800D028C 8E0FFFFC */  lw         $t7, -0x4($s0)
/* 8AA90 800D0290 10000081 */  b          .L800D0498
/* 8AA94 800D0294 A5EE0000 */   sh        $t6, 0x0($t7)
.L800D0298:
/* 8AA98 800D0298 8FAB0038 */  lw         $t3, 0x38($sp)
/* 8AA9C 800D029C 2401006C */  addiu      $at, $zero, 0x6C
/* 8AAA0 800D02A0 91790034 */  lbu        $t9, 0x34($t3)
/* 8AAA4 800D02A4 1721000F */  bne        $t9, $at, .L800D02E4
/* 8AAA8 800D02A8 00000000 */   nop
/* 8AAAC 800D02AC 8FA9003C */  lw         $t1, 0x3C($sp)
/* 8AAB0 800D02B0 2401FFFC */  addiu      $at, $zero, -0x4
/* 8AAB4 800D02B4 8D380000 */  lw         $t8, 0x0($t1)
/* 8AAB8 800D02B8 270C0003 */  addiu      $t4, $t8, 0x3
/* 8AABC 800D02BC 01816824 */  and        $t5, $t4, $at
/* 8AAC0 800D02C0 25A80004 */  addiu      $t0, $t5, 0x4
/* 8AAC4 800D02C4 AD280000 */  sw         $t0, 0x0($t1)
/* 8AAC8 800D02C8 8FAA003C */  lw         $t2, 0x3C($sp)
/* 8AACC 800D02CC 8FAE0038 */  lw         $t6, 0x38($sp)
/* 8AAD0 800D02D0 8D500000 */  lw         $s0, 0x0($t2)
/* 8AAD4 800D02D4 8DCF002C */  lw         $t7, 0x2C($t6)
/* 8AAD8 800D02D8 8E0BFFFC */  lw         $t3, -0x4($s0)
/* 8AADC 800D02DC 1000006E */  b          .L800D0498
/* 8AAE0 800D02E0 AD6F0000 */   sw        $t7, 0x0($t3)
.L800D02E4:
/* 8AAE4 800D02E4 8FB90038 */  lw         $t9, 0x38($sp)
/* 8AAE8 800D02E8 2401004C */  addiu      $at, $zero, 0x4C
/* 8AAEC 800D02EC 93380034 */  lbu        $t8, 0x34($t9)
/* 8AAF0 800D02F0 17010012 */  bne        $t8, $at, .L800D033C
/* 8AAF4 800D02F4 00000000 */   nop
/* 8AAF8 800D02F8 8FAC003C */  lw         $t4, 0x3C($sp)
/* 8AAFC 800D02FC 2401FFFC */  addiu      $at, $zero, -0x4
/* 8AB00 800D0300 24180000 */  addiu      $t8, $zero, 0x0
/* 8AB04 800D0304 8D8D0000 */  lw         $t5, 0x0($t4)
/* 8AB08 800D0308 25A80003 */  addiu      $t0, $t5, 0x3
/* 8AB0C 800D030C 01014824 */  and        $t1, $t0, $at
/* 8AB10 800D0310 252A0004 */  addiu      $t2, $t1, 0x4
/* 8AB14 800D0314 AD8A0000 */  sw         $t2, 0x0($t4)
/* 8AB18 800D0318 8FAE003C */  lw         $t6, 0x3C($sp)
/* 8AB1C 800D031C 8FAF0038 */  lw         $t7, 0x38($sp)
/* 8AB20 800D0320 8DD00000 */  lw         $s0, 0x0($t6)
/* 8AB24 800D0324 8DEB002C */  lw         $t3, 0x2C($t7)
/* 8AB28 800D0328 8E0DFFFC */  lw         $t5, -0x4($s0)
/* 8AB2C 800D032C 0160C825 */  or         $t9, $t3, $zero
/* 8AB30 800D0330 ADB90004 */  sw         $t9, 0x4($t5)
/* 8AB34 800D0334 10000058 */  b          .L800D0498
/* 8AB38 800D0338 ADB80000 */   sw        $t8, 0x0($t5)
.L800D033C:
/* 8AB3C 800D033C 8FA8003C */  lw         $t0, 0x3C($sp)
/* 8AB40 800D0340 2401FFFC */  addiu      $at, $zero, -0x4
/* 8AB44 800D0344 8D090000 */  lw         $t1, 0x0($t0)
/* 8AB48 800D0348 252A0003 */  addiu      $t2, $t1, 0x3
/* 8AB4C 800D034C 01416024 */  and        $t4, $t2, $at
/* 8AB50 800D0350 258E0004 */  addiu      $t6, $t4, 0x4
/* 8AB54 800D0354 AD0E0000 */  sw         $t6, 0x0($t0)
/* 8AB58 800D0358 8FAF003C */  lw         $t7, 0x3C($sp)
/* 8AB5C 800D035C 8FAB0038 */  lw         $t3, 0x38($sp)
/* 8AB60 800D0360 8DF00000 */  lw         $s0, 0x0($t7)
/* 8AB64 800D0364 8D78002C */  lw         $t8, 0x2C($t3)
/* 8AB68 800D0368 8E19FFFC */  lw         $t9, -0x4($s0)
/* 8AB6C 800D036C 1000004A */  b          .L800D0498
/* 8AB70 800D0370 AF380000 */   sw        $t8, 0x0($t9)
glabel L800D0374
/* 8AB74 800D0374 8FAD003C */  lw         $t5, 0x3C($sp)
/* 8AB78 800D0378 2401FFFC */  addiu      $at, $zero, -0x4
/* 8AB7C 800D037C 24050078 */  addiu      $a1, $zero, 0x78
/* 8AB80 800D0380 8DA90000 */  lw         $t1, 0x0($t5)
/* 8AB84 800D0384 252A0003 */  addiu      $t2, $t1, 0x3
/* 8AB88 800D0388 01416024 */  and        $t4, $t2, $at
/* 8AB8C 800D038C 258E0004 */  addiu      $t6, $t4, 0x4
/* 8AB90 800D0390 ADAE0000 */  sw         $t6, 0x0($t5)
/* 8AB94 800D0394 8FA8003C */  lw         $t0, 0x3C($sp)
/* 8AB98 800D0398 8FA90038 */  lw         $t1, 0x38($sp)
/* 8AB9C 800D039C 8D0F0000 */  lw         $t7, 0x0($t0)
/* 8ABA0 800D03A0 8DEBFFFC */  lw         $t3, -0x4($t7)
/* 8ABA4 800D03A4 0160C825 */  or         $t9, $t3, $zero
/* 8ABA8 800D03A8 000BC7C3 */  sra        $t8, $t3, 31
/* 8ABAC 800D03AC AD380000 */  sw         $t8, 0x0($t1)
/* 8ABB0 800D03B0 AD390004 */  sw         $t9, 0x4($t1)
/* 8ABB4 800D03B4 8FAA0038 */  lw         $t2, 0x38($sp)
/* 8ABB8 800D03B8 8FAE0044 */  lw         $t6, 0x44($sp)
/* 8ABBC 800D03BC 8D4C000C */  lw         $t4, 0xC($t2)
/* 8ABC0 800D03C0 018E6821 */  addu       $t5, $t4, $t6
/* 8ABC4 800D03C4 AD4D0008 */  sw         $t5, 0x8($t2)
/* 8ABC8 800D03C8 0C0343F8 */  jal        func_800D0FE0
/* 8ABCC 800D03CC 8FA40038 */   lw        $a0, 0x38($sp)
/* 8ABD0 800D03D0 10000031 */  b          .L800D0498
/* 8ABD4 800D03D4 00000000 */   nop
glabel L800D03D8
/* 8ABD8 800D03D8 8FA8003C */  lw         $t0, 0x3C($sp)
/* 8ABDC 800D03DC 2401FFFC */  addiu      $at, $zero, -0x4
/* 8ABE0 800D03E0 8D0F0000 */  lw         $t7, 0x0($t0)
/* 8ABE4 800D03E4 25EB0003 */  addiu      $t3, $t7, 0x3
/* 8ABE8 800D03E8 0161C024 */  and        $t8, $t3, $at
/* 8ABEC 800D03EC 27190004 */  addiu      $t9, $t8, 0x4
/* 8ABF0 800D03F0 AD190000 */  sw         $t9, 0x0($t0)
/* 8ABF4 800D03F4 8FA9003C */  lw         $t1, 0x3C($sp)
/* 8ABF8 800D03F8 8FAD0038 */  lw         $t5, 0x38($sp)
/* 8ABFC 800D03FC 8D2C0000 */  lw         $t4, 0x0($t1)
/* 8AC00 800D0400 8D8EFFFC */  lw         $t6, -0x4($t4)
/* 8AC04 800D0404 ADAE0008 */  sw         $t6, 0x8($t5)
/* 8AC08 800D0408 8FAA0038 */  lw         $t2, 0x38($sp)
/* 8AC0C 800D040C 0C03413B */  jal        func_800D04EC
/* 8AC10 800D0410 8D440008 */   lw        $a0, 0x8($t2)
/* 8AC14 800D0414 8FAF0038 */  lw         $t7, 0x38($sp)
/* 8AC18 800D0418 ADE20014 */  sw         $v0, 0x14($t7)
/* 8AC1C 800D041C 8FAB0038 */  lw         $t3, 0x38($sp)
/* 8AC20 800D0420 8D780024 */  lw         $t8, 0x24($t3)
/* 8AC24 800D0424 0700001C */  bltz       $t8, .L800D0498
/* 8AC28 800D0428 00000000 */   nop
/* 8AC2C 800D042C 8D790014 */  lw         $t9, 0x14($t3)
/* 8AC30 800D0430 0319082A */  slt        $at, $t8, $t9
/* 8AC34 800D0434 10200018 */  beqz       $at, .L800D0498
/* 8AC38 800D0438 00000000 */   nop
/* 8AC3C 800D043C 10000016 */  b          .L800D0498
/* 8AC40 800D0440 AD780014 */   sw        $t8, 0x14($t3)
.L800D0444:
/* 8AC44 800D0444 8FAC0038 */  lw         $t4, 0x38($sp)
/* 8AC48 800D0448 8FA90044 */  lw         $t1, 0x44($sp)
/* 8AC4C 800D044C 24080025 */  addiu      $t0, $zero, 0x25
/* 8AC50 800D0450 8D8E000C */  lw         $t6, 0xC($t4)
/* 8AC54 800D0454 012E6821 */  addu       $t5, $t1, $t6
/* 8AC58 800D0458 A1A80000 */  sb         $t0, 0x0($t5)
/* 8AC5C 800D045C 8FAA0038 */  lw         $t2, 0x38($sp)
/* 8AC60 800D0460 8D4F000C */  lw         $t7, 0xC($t2)
/* 8AC64 800D0464 25F90001 */  addiu      $t9, $t7, 0x1
/* 8AC68 800D0468 1000000B */  b          .L800D0498
/* 8AC6C 800D046C AD59000C */   sw        $t9, 0xC($t2)
glabel L800D0470
/* 8AC70 800D0470 8FAC0038 */  lw         $t4, 0x38($sp)
/* 8AC74 800D0474 8FAB0044 */  lw         $t3, 0x44($sp)
/* 8AC78 800D0478 93B80043 */  lbu        $t8, 0x43($sp)
/* 8AC7C 800D047C 8D89000C */  lw         $t1, 0xC($t4)
/* 8AC80 800D0480 01697021 */  addu       $t6, $t3, $t1
/* 8AC84 800D0484 A1D80000 */  sb         $t8, 0x0($t6)
/* 8AC88 800D0488 8FA80038 */  lw         $t0, 0x38($sp)
/* 8AC8C 800D048C 8D0D000C */  lw         $t5, 0xC($t0)
/* 8AC90 800D0490 25AF0001 */  addiu      $t7, $t5, 0x1
/* 8AC94 800D0494 AD0F000C */  sw         $t7, 0xC($t0)
.L800D0498:
/* 8AC98 800D0498 8FBF0024 */  lw         $ra, 0x24($sp)
/* 8AC9C 800D049C 8FB00014 */  lw         $s0, 0x14($sp)
/* 8ACA0 800D04A0 8FB10018 */  lw         $s1, 0x18($sp)
/* 8ACA4 800D04A4 8FB2001C */  lw         $s2, 0x1C($sp)
/* 8ACA8 800D04A8 8FB30020 */  lw         $s3, 0x20($sp)
/* 8ACAC 800D04AC 03E00008 */  jr         $ra
/* 8ACB0 800D04B0 27BD0038 */   addiu     $sp, $sp, 0x38
/* 8ACB4 800D04B4 00000000 */  nop
/* 8ACB8 800D04B8 00000000 */  nop
/* 8ACBC 800D04BC 00000000 */  nop

glabel func_800D04C0
/* 8ACC0 800D04C0 00801025 */  or         $v0, $a0, $zero
/* 8ACC4 800D04C4 10C00007 */  beqz       $a2, .L800D04E4
/* 8ACC8 800D04C8 00A01825 */   or        $v1, $a1, $zero
.L800D04CC:
/* 8ACCC 800D04CC 906E0000 */  lbu        $t6, 0x0($v1)
/* 8ACD0 800D04D0 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 8ACD4 800D04D4 24420001 */  addiu      $v0, $v0, 0x1
/* 8ACD8 800D04D8 24630001 */  addiu      $v1, $v1, 0x1
/* 8ACDC 800D04DC 14C0FFFB */  bnez       $a2, .L800D04CC
/* 8ACE0 800D04E0 A04EFFFF */   sb        $t6, -0x1($v0)
.L800D04E4:
/* 8ACE4 800D04E4 03E00008 */  jr         $ra
/* 8ACE8 800D04E8 00801025 */   or        $v0, $a0, $zero

glabel func_800D04EC
/* 8ACEC 800D04EC 908E0000 */  lbu        $t6, 0x0($a0)
/* 8ACF0 800D04F0 00801825 */  or         $v1, $a0, $zero
/* 8ACF4 800D04F4 11C00005 */  beqz       $t6, .L800D050C
/* 8ACF8 800D04F8 00000000 */   nop
/* 8ACFC 800D04FC 906F0001 */  lbu        $t7, 0x1($v1)
.L800D0500:
/* 8AD00 800D0500 24630001 */  addiu      $v1, $v1, 0x1
/* 8AD04 800D0504 55E0FFFE */  bnel       $t7, $zero, .L800D0500
/* 8AD08 800D0508 906F0001 */   lbu       $t7, 0x1($v1)
.L800D050C:
/* 8AD0C 800D050C 03E00008 */  jr         $ra
/* 8AD10 800D0510 00641023 */   subu      $v0, $v1, $a0

glabel func_800D0514
/* 8AD14 800D0514 90830000 */  lbu        $v1, 0x0($a0)
/* 8AD18 800D0518 30AE00FF */  andi       $t6, $a1, 0xFF
/* 8AD1C 800D051C 30A200FF */  andi       $v0, $a1, 0xFF
/* 8AD20 800D0520 51C3000A */  beql       $t6, $v1, .L800D054C
/* 8AD24 800D0524 00801025 */   or        $v0, $a0, $zero
.L800D0528:
/* 8AD28 800D0528 54600004 */  bnel       $v1, $zero, .L800D053C
/* 8AD2C 800D052C 90830001 */   lbu       $v1, 0x1($a0)
/* 8AD30 800D0530 03E00008 */  jr         $ra
/* 8AD34 800D0534 00001025 */   or        $v0, $zero, $zero
/* 8AD38 800D0538 90830001 */  lbu        $v1, 0x1($a0)
.L800D053C:
/* 8AD3C 800D053C 24840001 */  addiu      $a0, $a0, 0x1
/* 8AD40 800D0540 1443FFF9 */  bne        $v0, $v1, .L800D0528
/* 8AD44 800D0544 00000000 */   nop
/* 8AD48 800D0548 00801025 */  or         $v0, $a0, $zero
.L800D054C:
/* 8AD4C 800D054C 03E00008 */  jr         $ra
/* 8AD50 800D0550 00000000 */   nop
/* 8AD54 800D0554 00000000 */  nop
/* 8AD58 800D0558 00000000 */  nop
/* 8AD5C 800D055C 00000000 */  nop

glabel func_800D0560
/* 8AD60 800D0560 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 8AD64 800D0564 AFBF001C */  sw         $ra, 0x1C($sp)
/* 8AD68 800D0568 AFA40028 */  sw         $a0, 0x28($sp)
/* 8AD6C 800D056C AFA5002C */  sw         $a1, 0x2C($sp)
/* 8AD70 800D0570 AFA60030 */  sw         $a2, 0x30($sp)
/* 8AD74 800D0574 AFB10018 */  sw         $s1, 0x18($sp)
/* 8AD78 800D0578 0C032AB4 */  jal        __osDisableInt
/* 8AD7C 800D057C AFB00014 */   sw        $s0, 0x14($sp)
/* 8AD80 800D0580 8FAE0028 */  lw         $t6, 0x28($sp)
/* 8AD84 800D0584 00408025 */  or         $s0, $v0, $zero
/* 8AD88 800D0588 8DCF0008 */  lw         $t7, 0x8($t6)
/* 8AD8C 800D058C 8DD80010 */  lw         $t8, 0x10($t6)
/* 8AD90 800D0590 01F8082A */  slt        $at, $t7, $t8
/* 8AD94 800D0594 14200018 */  bnez       $at, .L800D05F8
/* 8AD98 800D0598 00000000 */   nop
.L800D059C:
/* 8AD9C 800D059C 8FB90030 */  lw         $t9, 0x30($sp)
/* 8ADA0 800D05A0 24010001 */  addiu      $at, $zero, 0x1
/* 8ADA4 800D05A4 1721000A */  bne        $t9, $at, .L800D05D0
/* 8ADA8 800D05A8 00000000 */   nop
/* 8ADAC 800D05AC 3C09800F */  lui        $t1, %hi(D_800E9010)
/* 8ADB0 800D05B0 8D299010 */  lw         $t1, %lo(D_800E9010)($t1)
/* 8ADB4 800D05B4 24080008 */  addiu      $t0, $zero, 0x8
/* 8ADB8 800D05B8 A5280010 */  sh         $t0, 0x10($t1)
/* 8ADBC 800D05BC 8FA40028 */  lw         $a0, 0x28($sp)
/* 8ADC0 800D05C0 0C032C64 */  jal        func_800CB190
/* 8ADC4 800D05C4 24840004 */   addiu     $a0, $a0, 0x4
/* 8ADC8 800D05C8 10000005 */  b          .L800D05E0
/* 8ADCC 800D05CC 00000000 */   nop
.L800D05D0:
/* 8ADD0 800D05D0 0C032ABC */  jal        __osRestoreInt
/* 8ADD4 800D05D4 02002025 */   or        $a0, $s0, $zero
/* 8ADD8 800D05D8 10000030 */  b          .L800D069C
/* 8ADDC 800D05DC 2402FFFF */   addiu     $v0, $zero, -0x1
.L800D05E0:
/* 8ADE0 800D05E0 8FAA0028 */  lw         $t2, 0x28($sp)
/* 8ADE4 800D05E4 8D4B0008 */  lw         $t3, 0x8($t2)
/* 8ADE8 800D05E8 8D4C0010 */  lw         $t4, 0x10($t2)
/* 8ADEC 800D05EC 016C082A */  slt        $at, $t3, $t4
/* 8ADF0 800D05F0 1020FFEA */  beqz       $at, .L800D059C
/* 8ADF4 800D05F4 00000000 */   nop
.L800D05F8:
/* 8ADF8 800D05F8 8FAD0028 */  lw         $t5, 0x28($sp)
/* 8ADFC 800D05FC 8DAE000C */  lw         $t6, 0xC($t5)
/* 8AE00 800D0600 8DAF0010 */  lw         $t7, 0x10($t5)
/* 8AE04 800D0604 01CFC021 */  addu       $t8, $t6, $t7
/* 8AE08 800D0608 2719FFFF */  addiu      $t9, $t8, -0x1
/* 8AE0C 800D060C 032F001A */  div        $zero, $t9, $t7
/* 8AE10 800D0610 00004010 */  mfhi       $t0
/* 8AE14 800D0614 ADA8000C */  sw         $t0, 0xC($t5)
/* 8AE18 800D0618 8FAA0028 */  lw         $t2, 0x28($sp)
/* 8AE1C 800D061C 8FA9002C */  lw         $t1, 0x2C($sp)
/* 8AE20 800D0620 15E00002 */  bnez       $t7, .L800D062C
/* 8AE24 800D0624 00000000 */   nop
/* 8AE28 800D0628 0007000D */  break      7
.L800D062C:
/* 8AE2C 800D062C 2401FFFF */  addiu      $at, $zero, -0x1
/* 8AE30 800D0630 15E10004 */  bne        $t7, $at, .L800D0644
/* 8AE34 800D0634 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 8AE38 800D0638 17210002 */  bne        $t9, $at, .L800D0644
/* 8AE3C 800D063C 00000000 */   nop
/* 8AE40 800D0640 0006000D */  break      6
.L800D0644:
/* 8AE44 800D0644 8D4C000C */  lw         $t4, 0xC($t2)
/* 8AE48 800D0648 8D4B0014 */  lw         $t3, 0x14($t2)
/* 8AE4C 800D064C 000C7080 */  sll        $t6, $t4, 2
/* 8AE50 800D0650 016EC021 */  addu       $t8, $t3, $t6
/* 8AE54 800D0654 AF090000 */  sw         $t1, 0x0($t8)
/* 8AE58 800D0658 8FB90028 */  lw         $t9, 0x28($sp)
/* 8AE5C 800D065C 8F2F0008 */  lw         $t7, 0x8($t9)
/* 8AE60 800D0660 25E80001 */  addiu      $t0, $t7, 0x1
/* 8AE64 800D0664 AF280008 */  sw         $t0, 0x8($t9)
/* 8AE68 800D0668 8FAD0028 */  lw         $t5, 0x28($sp)
/* 8AE6C 800D066C 8DAA0000 */  lw         $t2, 0x0($t5)
/* 8AE70 800D0670 8D4C0000 */  lw         $t4, 0x0($t2)
/* 8AE74 800D0674 11800006 */  beqz       $t4, .L800D0690
/* 8AE78 800D0678 00000000 */   nop
/* 8AE7C 800D067C 0C032C9A */  jal        func_800CB268
/* 8AE80 800D0680 01A02025 */   or        $a0, $t5, $zero
/* 8AE84 800D0684 00408825 */  or         $s1, $v0, $zero
/* 8AE88 800D0688 0C03195C */  jal        func_800C6570
/* 8AE8C 800D068C 02202025 */   or        $a0, $s1, $zero
.L800D0690:
/* 8AE90 800D0690 0C032ABC */  jal        __osRestoreInt
/* 8AE94 800D0694 02002025 */   or        $a0, $s0, $zero
/* 8AE98 800D0698 00001025 */  or         $v0, $zero, $zero
.L800D069C:
/* 8AE9C 800D069C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 8AEA0 800D06A0 8FB00014 */  lw         $s0, 0x14($sp)
/* 8AEA4 800D06A4 8FB10018 */  lw         $s1, 0x18($sp)
/* 8AEA8 800D06A8 03E00008 */  jr         $ra
/* 8AEAC 800D06AC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800D06B0
/* 8AEB0 800D06B0 3C0E800F */  lui        $t6, %hi(D_800E8FB0)
/* 8AEB4 800D06B4 8DCE8FB0 */  lw         $t6, %lo(D_800E8FB0)($t6)
/* 8AEB8 800D06B8 15C00003 */  bnez       $t6, .L800D06C8
/* 8AEBC 800D06BC 00000000 */   nop
/* 8AEC0 800D06C0 03E00008 */  jr         $ra
/* 8AEC4 800D06C4 00001025 */   or        $v0, $zero, $zero
.L800D06C8:
/* 8AEC8 800D06C8 3C02800F */  lui        $v0, %hi(D_800E8FB8)
/* 8AECC 800D06CC 8C428FB8 */  lw         $v0, %lo(D_800E8FB8)($v0)
/* 8AED0 800D06D0 03E00008 */  jr         $ra
/* 8AED4 800D06D4 00000000 */   nop
/* 8AED8 800D06D8 00000000 */  nop
/* 8AEDC 800D06DC 00000000 */  nop

glabel func_800D06E0
/* 8AEE0 800D06E0 3C0EA450 */  lui        $t6, %hi(D_A450000C)
/* 8AEE4 800D06E4 8DC4000C */  lw         $a0, %lo(D_A450000C)($t6)
/* 8AEE8 800D06E8 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 8AEEC 800D06EC 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 8AEF0 800D06F0 00817824 */  and        $t7, $a0, $at
/* 8AEF4 800D06F4 11E00003 */  beqz       $t7, .L800D0704
/* 8AEF8 800D06F8 00000000 */   nop
/* 8AEFC 800D06FC 10000002 */  b          .L800D0708
/* 8AF00 800D0700 24020001 */   addiu     $v0, $zero, 0x1
.L800D0704:
/* 8AF04 800D0704 00001025 */  or         $v0, $zero, $zero
.L800D0708:
/* 8AF08 800D0708 03E00008 */  jr         $ra
/* 8AF0C 800D070C 27BD0008 */   addiu     $sp, $sp, 0x8

glabel func_800D0710
/* 8AF10 800D0710 00047602 */  srl        $t6, $a0, 24
/* 8AF14 800D0714 0004C402 */  srl        $t8, $a0, 16
/* 8AF18 800D0718 00044202 */  srl        $t0, $a0, 8
/* 8AF1C 800D071C 31CF00FF */  andi       $t7, $t6, 0xFF
/* 8AF20 800D0720 331900FF */  andi       $t9, $t8, 0xFF
/* 8AF24 800D0724 310900FF */  andi       $t1, $t0, 0xFF
/* 8AF28 800D0728 308A00FF */  andi       $t2, $a0, 0xFF
/* 8AF2C 800D072C A0AF0000 */  sb         $t7, 0x0($a1)
/* 8AF30 800D0730 A0B90001 */  sb         $t9, 0x1($a1)
/* 8AF34 800D0734 A0A90002 */  sb         $t1, 0x2($a1)
/* 8AF38 800D0738 03E00008 */  jr         $ra
/* 8AF3C 800D073C A0AA0003 */   sb        $t2, 0x3($a1)

glabel func_800D0740
/* 8AF40 800D0740 908E0000 */  lbu        $t6, 0x0($a0)
/* 8AF44 800D0744 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 8AF48 800D0748 31CF00FF */  andi       $t7, $t6, 0xFF
/* 8AF4C 800D074C 000FC600 */  sll        $t8, $t7, 24
/* 8AF50 800D0750 AFB80004 */  sw         $t8, 0x4($sp)
/* 8AF54 800D0754 90990001 */  lbu        $t9, 0x1($a0)
/* 8AF58 800D0758 332800FF */  andi       $t0, $t9, 0xFF
/* 8AF5C 800D075C 00084C00 */  sll        $t1, $t0, 16
/* 8AF60 800D0760 03095025 */  or         $t2, $t8, $t1
/* 8AF64 800D0764 AFAA0004 */  sw         $t2, 0x4($sp)
/* 8AF68 800D0768 908B0002 */  lbu        $t3, 0x2($a0)
/* 8AF6C 800D076C 316C00FF */  andi       $t4, $t3, 0xFF
/* 8AF70 800D0770 000C6A00 */  sll        $t5, $t4, 8
/* 8AF74 800D0774 014D7025 */  or         $t6, $t2, $t5
/* 8AF78 800D0778 AFAE0004 */  sw         $t6, 0x4($sp)
/* 8AF7C 800D077C 908F0003 */  lbu        $t7, 0x3($a0)
/* 8AF80 800D0780 31F900FF */  andi       $t9, $t7, 0xFF
/* 8AF84 800D0784 01D94025 */  or         $t0, $t6, $t9
/* 8AF88 800D0788 AFA80004 */  sw         $t0, 0x4($sp)
/* 8AF8C 800D078C 27BD0008 */  addiu      $sp, $sp, 0x8
/* 8AF90 800D0790 03E00008 */  jr         $ra
/* 8AF94 800D0794 01001025 */   or        $v0, $t0, $zero

glabel func_800D0798
/* 8AF98 800D0798 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8AF9C 800D079C 93AE001C */  lbu        $t6, 0x1C($sp)
/* 8AFA0 800D07A0 AFA50024 */  sw         $a1, 0x24($sp)
/* 8AFA4 800D07A4 8FB90024 */  lw         $t9, 0x24($sp)
/* 8AFA8 800D07A8 31CFFF3F */  andi       $t7, $t6, 0xFF3F
/* 8AFAC 800D07AC 35F80080 */  ori        $t8, $t7, 0x80
/* 8AFB0 800D07B0 330A00FF */  andi       $t2, $t8, 0xFF
/* 8AFB4 800D07B4 33280003 */  andi       $t0, $t9, 0x3
/* 8AFB8 800D07B8 31090003 */  andi       $t1, $t0, 0x3
/* 8AFBC 800D07BC 314BFFFC */  andi       $t3, $t2, 0xFFFC
/* 8AFC0 800D07C0 A3B8001C */  sb         $t8, 0x1C($sp)
/* 8AFC4 800D07C4 012B6025 */  or         $t4, $t1, $t3
/* 8AFC8 800D07C8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8AFCC 800D07CC AFA40020 */  sw         $a0, 0x20($sp)
/* 8AFD0 800D07D0 A3AC001C */  sb         $t4, 0x1C($sp)
/* 8AFD4 800D07D4 1B20000D */  blez       $t9, .L800D080C
/* 8AFD8 800D07D8 AFA00018 */   sw        $zero, 0x18($sp)
.L800D07DC:
/* 8AFDC 800D07DC 8FAD0020 */  lw         $t5, 0x20($sp)
/* 8AFE0 800D07E0 8FAE0018 */  lw         $t6, 0x18($sp)
/* 8AFE4 800D07E4 01AE7821 */  addu       $t7, $t5, $t6
/* 8AFE8 800D07E8 91E80000 */  lbu        $t0, 0x0($t7)
/* 8AFEC 800D07EC 03AEC021 */  addu       $t8, $sp, $t6
/* 8AFF0 800D07F0 A308001D */  sb         $t0, 0x1D($t8)
/* 8AFF4 800D07F4 8FAA0018 */  lw         $t2, 0x18($sp)
/* 8AFF8 800D07F8 8FAB0024 */  lw         $t3, 0x24($sp)
/* 8AFFC 800D07FC 25490001 */  addiu      $t1, $t2, 0x1
/* 8B000 800D0800 012B082A */  slt        $at, $t1, $t3
/* 8B004 800D0804 1420FFF5 */  bnez       $at, .L800D07DC
/* 8B008 800D0808 AFA90018 */   sw        $t1, 0x18($sp)
.L800D080C:
/* 8B00C 800D080C 27AC001C */  addiu      $t4, $sp, 0x1C
/* 8B010 800D0810 8D990000 */  lw         $t9, 0x0($t4)
/* 8B014 800D0814 3C0DC000 */  lui        $t5, (0xC0000000 >> 16)
/* 8B018 800D0818 0C03482C */  jal        func_800D20B0
/* 8B01C 800D081C ADB90000 */   sw        $t9, (0xC0000000 & 0xFFFF)($t5)
/* 8B020 800D0820 304F2000 */  andi       $t7, $v0, 0x2000
/* 8B024 800D0824 15E00006 */  bnez       $t7, .L800D0840
/* 8B028 800D0828 00000000 */   nop
.L800D082C:
/* 8B02C 800D082C 0C03482C */  jal        func_800D20B0
/* 8B030 800D0830 00000000 */   nop
/* 8B034 800D0834 30482000 */  andi       $t0, $v0, 0x2000
/* 8B038 800D0838 1100FFFC */  beqz       $t0, .L800D082C
/* 8B03C 800D083C 00000000 */   nop
.L800D0840:
/* 8B040 800D0840 3C0EC000 */  lui        $t6, (0xC000000C >> 16)
/* 8B044 800D0844 ADC0000C */  sw         $zero, (0xC000000C & 0xFFFF)($t6)
/* 8B048 800D0848 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8B04C 800D084C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8B050 800D0850 03E00008 */  jr         $ra
/* 8B054 800D0854 00000000 */   nop

glabel func_800D0858
/* 8B058 800D0858 3C0E800F */  lui        $t6, %hi(D_800E9144)
/* 8B05C 800D085C 8DCE9144 */  lw         $t6, %lo(D_800E9144)($t6)
/* 8B060 800D0860 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 8B064 800D0864 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8B068 800D0868 AFA40028 */  sw         $a0, 0x28($sp)
/* 8B06C 800D086C 15C00010 */  bnez       $t6, .L800D08B0
/* 8B070 800D0870 AFA5002C */   sw        $a1, 0x2C($sp)
/* 8B074 800D0874 0C03482C */  jal        func_800D20B0
/* 8B078 800D0878 00000000 */   nop
/* 8B07C 800D087C 304F2000 */  andi       $t7, $v0, 0x2000
/* 8B080 800D0880 15E00006 */  bnez       $t7, .L800D089C
/* 8B084 800D0884 00000000 */   nop
.L800D0888:
/* 8B088 800D0888 0C03482C */  jal        func_800D20B0
/* 8B08C 800D088C 00000000 */   nop
/* 8B090 800D0890 30582000 */  andi       $t8, $v0, 0x2000
/* 8B094 800D0894 1300FFFC */  beqz       $t8, .L800D0888
/* 8B098 800D0898 00000000 */   nop
.L800D089C:
/* 8B09C 800D089C 3C19C000 */  lui        $t9, (0xC000000C >> 16)
/* 8B0A0 800D08A0 AF20000C */  sw         $zero, (0xC000000C & 0xFFFF)($t9)
/* 8B0A4 800D08A4 24080001 */  addiu      $t0, $zero, 0x1
/* 8B0A8 800D08A8 3C01800F */  lui        $at, %hi(D_800E9144)
/* 8B0AC 800D08AC AC289144 */  sw         $t0, %lo(D_800E9144)($at)
.L800D08B0:
/* 8B0B0 800D08B0 8FA9002C */  lw         $t1, 0x2C($sp)
/* 8B0B4 800D08B4 24010003 */  addiu      $at, $zero, 0x3
/* 8B0B8 800D08B8 AFA00024 */  sw         $zero, 0x24($sp)
/* 8B0BC 800D08BC 0121001A */  div        $zero, $t1, $at
/* 8B0C0 800D08C0 00005010 */  mfhi       $t2
/* 8B0C4 800D08C4 012A5823 */  subu       $t3, $t1, $t2
/* 8B0C8 800D08C8 AFAA001C */  sw         $t2, 0x1C($sp)
/* 8B0CC 800D08CC 1960000C */  blez       $t3, .L800D0900
/* 8B0D0 800D08D0 AFAB0020 */   sw        $t3, 0x20($sp)
.L800D08D4:
/* 8B0D4 800D08D4 8FAC0028 */  lw         $t4, 0x28($sp)
/* 8B0D8 800D08D8 8FAD0024 */  lw         $t5, 0x24($sp)
/* 8B0DC 800D08DC 24050003 */  addiu      $a1, $zero, 0x3
/* 8B0E0 800D08E0 0C0341E6 */  jal        func_800D0798
/* 8B0E4 800D08E4 018D2021 */   addu      $a0, $t4, $t5
/* 8B0E8 800D08E8 8FAE0024 */  lw         $t6, 0x24($sp)
/* 8B0EC 800D08EC 8FB80020 */  lw         $t8, 0x20($sp)
/* 8B0F0 800D08F0 25CF0003 */  addiu      $t7, $t6, 0x3
/* 8B0F4 800D08F4 01F8082A */  slt        $at, $t7, $t8
/* 8B0F8 800D08F8 1420FFF6 */  bnez       $at, .L800D08D4
/* 8B0FC 800D08FC AFAF0024 */   sw        $t7, 0x24($sp)
.L800D0900:
/* 8B100 800D0900 8FB9001C */  lw         $t9, 0x1C($sp)
/* 8B104 800D0904 1B200006 */  blez       $t9, .L800D0920
/* 8B108 800D0908 00000000 */   nop
/* 8B10C 800D090C 8FA80028 */  lw         $t0, 0x28($sp)
/* 8B110 800D0910 8FA90020 */  lw         $t1, 0x20($sp)
/* 8B114 800D0914 03202825 */  or         $a1, $t9, $zero
/* 8B118 800D0918 0C0341E6 */  jal        func_800D0798
/* 8B11C 800D091C 01092021 */   addu      $a0, $t0, $t1
.L800D0920:
/* 8B120 800D0920 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8B124 800D0924 27BD0028 */  addiu      $sp, $sp, 0x28
/* 8B128 800D0928 03E00008 */  jr         $ra
/* 8B12C 800D092C 00000000 */   nop

glabel func_800D0930
/* 8B130 800D0930 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8B134 800D0934 3C04801E */  lui        $a0, %hi(D_801DACF0)
/* 8B138 800D0938 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8B13C 800D093C 2484ACF0 */  addiu      $a0, $a0, %lo(D_801DACF0)
/* 8B140 800D0940 0C0341D0 */  jal        func_800D0740
/* 8B144 800D0944 24840001 */   addiu     $a0, $a0, 0x1
/* 8B148 800D0948 3C04801E */  lui        $a0, %hi(D_801DACF0)
/* 8B14C 800D094C 2484ACF0 */  addiu      $a0, $a0, %lo(D_801DACF0)
/* 8B150 800D0950 AFA2001C */  sw         $v0, 0x1C($sp)
/* 8B154 800D0954 0C0341D0 */  jal        func_800D0740
/* 8B158 800D0958 24840005 */   addiu     $a0, $a0, 0x5
/* 8B15C 800D095C AFA20018 */  sw         $v0, 0x18($sp)
/* 8B160 800D0960 8FA50018 */  lw         $a1, 0x18($sp)
/* 8B164 800D0964 0C034216 */  jal        func_800D0858
/* 8B168 800D0968 8FA4001C */   lw        $a0, 0x1C($sp)
/* 8B16C 800D096C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8B170 800D0970 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8B174 800D0974 03E00008 */  jr         $ra
/* 8B178 800D0978 00000000 */   nop

glabel func_800D097C
/* 8B17C 800D097C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8B180 800D0980 3C04801E */  lui        $a0, %hi(D_801DADF0)
/* 8B184 800D0984 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8B188 800D0988 2484ADF0 */  addiu      $a0, $a0, %lo(D_801DADF0)
/* 8B18C 800D098C 24840020 */  addiu      $a0, $a0, 0x20
/* 8B190 800D0990 0C034216 */  jal        func_800D0858
/* 8B194 800D0994 24050190 */   addiu     $a1, $zero, 0x190
/* 8B198 800D0998 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8B19C 800D099C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8B1A0 800D09A0 03E00008 */  jr         $ra
/* 8B1A4 800D09A4 00000000 */   nop

glabel func_800D09A8
/* 8B1A8 800D09A8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 8B1AC 800D09AC AFA40030 */  sw         $a0, 0x30($sp)
/* 8B1B0 800D09B0 8FAE0030 */  lw         $t6, 0x30($sp)
/* 8B1B4 800D09B4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 8B1B8 800D09B8 AFB00018 */  sw         $s0, 0x18($sp)
/* 8B1BC 800D09BC 27AF0028 */  addiu      $t7, $sp, 0x28
/* 8B1C0 800D09C0 ADEE0000 */  sw         $t6, 0x0($t7)
/* 8B1C4 800D09C4 93B80028 */  lbu        $t8, 0x28($sp)
/* 8B1C8 800D09C8 AFA0002C */  sw         $zero, 0x2C($sp)
/* 8B1CC 800D09CC 33190003 */  andi       $t9, $t8, 0x3
/* 8B1D0 800D09D0 13200015 */  beqz       $t9, .L800D0A28
/* 8B1D4 800D09D4 00000000 */   nop
.L800D09D8:
/* 8B1D8 800D09D8 8FA8002C */  lw         $t0, 0x2C($sp)
/* 8B1DC 800D09DC 3C0A800F */  lui        $t2, %hi(D_800E9134)
/* 8B1E0 800D09E0 8D4A9134 */  lw         $t2, %lo(D_800E9134)($t2)
/* 8B1E4 800D09E4 03A84821 */  addu       $t1, $sp, $t0
/* 8B1E8 800D09E8 91290029 */  lbu        $t1, 0x29($t1)
/* 8B1EC 800D09EC 3C0B800F */  lui        $t3, %hi(D_800E9134)
/* 8B1F0 800D09F0 8D6B9134 */  lw         $t3, %lo(D_800E9134)($t3)
/* 8B1F4 800D09F4 3C01801E */  lui        $at, %hi(D_801DACF0)
/* 8B1F8 800D09F8 8FAD002C */  lw         $t5, 0x2C($sp)
/* 8B1FC 800D09FC 93AF0028 */  lbu        $t7, 0x28($sp)
/* 8B200 800D0A00 002A0821 */  addu       $at, $at, $t2
/* 8B204 800D0A04 A029ACF0 */  sb         $t1, %lo(D_801DACF0)($at)
/* 8B208 800D0A08 3C01800F */  lui        $at, %hi(D_800E9134)
/* 8B20C 800D0A0C 256C0001 */  addiu      $t4, $t3, 0x1
/* 8B210 800D0A10 AC2C9134 */  sw         $t4, %lo(D_800E9134)($at)
/* 8B214 800D0A14 25AE0001 */  addiu      $t6, $t5, 0x1
/* 8B218 800D0A18 31F80003 */  andi       $t8, $t7, 0x3
/* 8B21C 800D0A1C 01D8082B */  sltu       $at, $t6, $t8
/* 8B220 800D0A20 1420FFED */  bnez       $at, .L800D09D8
/* 8B224 800D0A24 AFAE002C */   sw        $t6, 0x2C($sp)
.L800D0A28:
/* 8B228 800D0A28 93A80028 */  lbu        $t0, 0x28($sp)
/* 8B22C 800D0A2C 3C19800F */  lui        $t9, %hi(D_800E9138)
/* 8B230 800D0A30 8F399138 */  lw         $t9, %lo(D_800E9138)($t9)
/* 8B234 800D0A34 3C10800F */  lui        $s0, %hi(D_800E9130)
/* 8B238 800D0A38 8E109130 */  lw         $s0, %lo(D_800E9130)($s0)
/* 8B23C 800D0A3C 31090003 */  andi       $t1, $t0, 0x3
/* 8B240 800D0A40 3C01800F */  lui        $at, %hi(D_800E9138)
/* 8B244 800D0A44 03295023 */  subu       $t2, $t9, $t1
/* 8B248 800D0A48 12000006 */  beqz       $s0, .L800D0A64
/* 8B24C 800D0A4C AC2A9138 */   sw        $t2, %lo(D_800E9138)($at)
/* 8B250 800D0A50 24010001 */  addiu      $at, $zero, 0x1
/* 8B254 800D0A54 12010026 */  beq        $s0, $at, .L800D0AF0
/* 8B258 800D0A58 00000000 */   nop
/* 8B25C 800D0A5C 1000003E */  b          .L800D0B58
/* 8B260 800D0A60 00000000 */   nop
.L800D0A64:
/* 8B264 800D0A64 27AB0028 */  addiu      $t3, $sp, 0x28
/* 8B268 800D0A68 91700001 */  lbu        $s0, 0x1($t3)
/* 8B26C 800D0A6C 24010001 */  addiu      $at, $zero, 0x1
/* 8B270 800D0A70 12010005 */  beq        $s0, $at, .L800D0A88
/* 8B274 800D0A74 24010002 */   addiu     $at, $zero, 0x2
/* 8B278 800D0A78 1201000D */  beq        $s0, $at, .L800D0AB0
/* 8B27C 800D0A7C 00000000 */   nop
/* 8B280 800D0A80 10000014 */  b          .L800D0AD4
/* 8B284 800D0A84 00000000 */   nop
.L800D0A88:
/* 8B288 800D0A88 93AD0028 */  lbu        $t5, 0x28($sp)
/* 8B28C 800D0A8C 240C0001 */  addiu      $t4, $zero, 0x1
/* 8B290 800D0A90 3C01800F */  lui        $at, %hi(D_800E9130)
/* 8B294 800D0A94 AC2C9130 */  sw         $t4, %lo(D_800E9130)($at)
/* 8B298 800D0A98 240E0009 */  addiu      $t6, $zero, 0x9
/* 8B29C 800D0A9C 31AF0003 */  andi       $t7, $t5, 0x3
/* 8B2A0 800D0AA0 01CFC023 */  subu       $t8, $t6, $t7
/* 8B2A4 800D0AA4 3C01800F */  lui        $at, %hi(D_800E9138)
/* 8B2A8 800D0AA8 10000031 */  b          .L800D0B70
/* 8B2AC 800D0AAC AC389138 */   sw        $t8, %lo(D_800E9138)($at)
.L800D0AB0:
/* 8B2B0 800D0AB0 0C03425F */  jal        func_800D097C
/* 8B2B4 800D0AB4 00000000 */   nop
/* 8B2B8 800D0AB8 3C01800F */  lui        $at, %hi(D_800E9130)
/* 8B2BC 800D0ABC AC209130 */  sw         $zero, %lo(D_800E9130)($at)
/* 8B2C0 800D0AC0 3C01800F */  lui        $at, %hi(D_800E9134)
/* 8B2C4 800D0AC4 AC209134 */  sw         $zero, %lo(D_800E9134)($at)
/* 8B2C8 800D0AC8 3C01800F */  lui        $at, %hi(D_800E9138)
/* 8B2CC 800D0ACC 10000028 */  b          .L800D0B70
/* 8B2D0 800D0AD0 AC209138 */   sw        $zero, %lo(D_800E9138)($at)
.L800D0AD4:
/* 8B2D4 800D0AD4 3C01800F */  lui        $at, %hi(D_800E9130)
/* 8B2D8 800D0AD8 AC209130 */  sw         $zero, %lo(D_800E9130)($at)
/* 8B2DC 800D0ADC 3C01800F */  lui        $at, %hi(D_800E9134)
/* 8B2E0 800D0AE0 AC209134 */  sw         $zero, %lo(D_800E9134)($at)
/* 8B2E4 800D0AE4 3C01800F */  lui        $at, %hi(D_800E9138)
/* 8B2E8 800D0AE8 10000021 */  b          .L800D0B70
/* 8B2EC 800D0AEC AC209138 */   sw        $zero, %lo(D_800E9138)($at)
.L800D0AF0:
/* 8B2F0 800D0AF0 3C08800F */  lui        $t0, %hi(D_800E9138)
/* 8B2F4 800D0AF4 8D089138 */  lw         $t0, %lo(D_800E9138)($t0)
/* 8B2F8 800D0AF8 1D00001D */  bgtz       $t0, .L800D0B70
/* 8B2FC 800D0AFC 00000000 */   nop
/* 8B300 800D0B00 3C19801E */  lui        $t9, %hi(D_801DACF0)
/* 8B304 800D0B04 2739ACF0 */  addiu      $t9, $t9, %lo(D_801DACF0)
/* 8B308 800D0B08 93290000 */  lbu        $t1, 0x0($t9)
/* 8B30C 800D0B0C 24010001 */  addiu      $at, $zero, 0x1
/* 8B310 800D0B10 1521000A */  bne        $t1, $at, .L800D0B3C
/* 8B314 800D0B14 00000000 */   nop
/* 8B318 800D0B18 0C03424C */  jal        func_800D0930
/* 8B31C 800D0B1C 00000000 */   nop
/* 8B320 800D0B20 3C01800F */  lui        $at, %hi(D_800E9130)
/* 8B324 800D0B24 AC209130 */  sw         $zero, %lo(D_800E9130)($at)
/* 8B328 800D0B28 3C01800F */  lui        $at, %hi(D_800E9134)
/* 8B32C 800D0B2C AC209134 */  sw         $zero, %lo(D_800E9134)($at)
/* 8B330 800D0B30 3C01800F */  lui        $at, %hi(D_800E9138)
/* 8B334 800D0B34 1000000E */  b          .L800D0B70
/* 8B338 800D0B38 AC209138 */   sw        $zero, %lo(D_800E9138)($at)
.L800D0B3C:
/* 8B33C 800D0B3C 3C01800F */  lui        $at, %hi(D_800E9130)
/* 8B340 800D0B40 AC209130 */  sw         $zero, %lo(D_800E9130)($at)
/* 8B344 800D0B44 3C01800F */  lui        $at, %hi(D_800E9134)
/* 8B348 800D0B48 AC209134 */  sw         $zero, %lo(D_800E9134)($at)
/* 8B34C 800D0B4C 3C01800F */  lui        $at, %hi(D_800E9138)
/* 8B350 800D0B50 10000007 */  b          .L800D0B70
/* 8B354 800D0B54 AC209138 */   sw        $zero, %lo(D_800E9138)($at)
.L800D0B58:
/* 8B358 800D0B58 3C01800F */  lui        $at, %hi(D_800E9130)
/* 8B35C 800D0B5C AC209130 */  sw         $zero, %lo(D_800E9130)($at)
/* 8B360 800D0B60 3C01800F */  lui        $at, %hi(D_800E9134)
/* 8B364 800D0B64 AC209134 */  sw         $zero, %lo(D_800E9134)($at)
/* 8B368 800D0B68 3C01800F */  lui        $at, %hi(D_800E9138)
/* 8B36C 800D0B6C AC209138 */  sw         $zero, %lo(D_800E9138)($at)
.L800D0B70:
/* 8B370 800D0B70 8FBF001C */  lw         $ra, 0x1C($sp)
/* 8B374 800D0B74 8FB00018 */  lw         $s0, 0x18($sp)
/* 8B378 800D0B78 27BD0030 */  addiu      $sp, $sp, 0x30
/* 8B37C 800D0B7C 03E00008 */  jr         $ra
/* 8B380 800D0B80 00000000 */   nop
/* 8B384 800D0B84 00000000 */  nop
/* 8B388 800D0B88 00000000 */  nop
/* 8B38C 800D0B8C 00000000 */  nop

glabel func_800D0B90
/* 8B390 800D0B90 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 8B394 800D0B94 AFA40028 */  sw         $a0, 0x28($sp)
/* 8B398 800D0B98 8FAE0028 */  lw         $t6, 0x28($sp)
/* 8B39C 800D0B9C 93A80024 */  lbu        $t0, 0x24($sp)
/* 8B3A0 800D0BA0 AFA5002C */  sw         $a1, 0x2C($sp)
/* 8B3A4 800D0BA4 31CF0003 */  andi       $t7, $t6, 0x3
/* 8B3A8 800D0BA8 8FAB002C */  lw         $t3, 0x2C($sp)
/* 8B3AC 800D0BAC 000FC180 */  sll        $t8, $t7, 6
/* 8B3B0 800D0BB0 331900C0 */  andi       $t9, $t8, 0xC0
/* 8B3B4 800D0BB4 3109FF3F */  andi       $t1, $t0, 0xFF3F
/* 8B3B8 800D0BB8 03295025 */  or         $t2, $t9, $t1
/* 8B3BC 800D0BBC 314E00FF */  andi       $t6, $t2, 0xFF
/* 8B3C0 800D0BC0 316C0003 */  andi       $t4, $t3, 0x3
/* 8B3C4 800D0BC4 318D0003 */  andi       $t5, $t4, 0x3
/* 8B3C8 800D0BC8 31CFFFFC */  andi       $t7, $t6, 0xFFFC
/* 8B3CC 800D0BCC A3AA0024 */  sb         $t2, 0x24($sp)
/* 8B3D0 800D0BD0 01AFC025 */  or         $t8, $t5, $t7
/* 8B3D4 800D0BD4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8B3D8 800D0BD8 AFA60030 */  sw         $a2, 0x30($sp)
/* 8B3DC 800D0BDC A3B80024 */  sb         $t8, 0x24($sp)
/* 8B3E0 800D0BE0 1960000D */  blez       $t3, .L800D0C18
/* 8B3E4 800D0BE4 AFA00020 */   sw        $zero, 0x20($sp)
.L800D0BE8:
/* 8B3E8 800D0BE8 8FA80030 */  lw         $t0, 0x30($sp)
/* 8B3EC 800D0BEC 8FB90020 */  lw         $t9, 0x20($sp)
/* 8B3F0 800D0BF0 01194821 */  addu       $t1, $t0, $t9
/* 8B3F4 800D0BF4 912C0000 */  lbu        $t4, 0x0($t1)
/* 8B3F8 800D0BF8 03B95021 */  addu       $t2, $sp, $t9
/* 8B3FC 800D0BFC A14C0025 */  sb         $t4, 0x25($t2)
/* 8B400 800D0C00 8FAE0020 */  lw         $t6, 0x20($sp)
/* 8B404 800D0C04 8FAF002C */  lw         $t7, 0x2C($sp)
/* 8B408 800D0C08 25CD0001 */  addiu      $t5, $t6, 0x1
/* 8B40C 800D0C0C 01AF082A */  slt        $at, $t5, $t7
/* 8B410 800D0C10 1420FFF5 */  bnez       $at, .L800D0BE8
/* 8B414 800D0C14 AFAD0020 */   sw        $t5, 0x20($sp)
.L800D0C18:
/* 8B418 800D0C18 3C04800F */  lui        $a0, %hi(D_800E9144)
/* 8B41C 800D0C1C 0C034830 */  jal        func_800D20C0
/* 8B420 800D0C20 24849144 */   addiu     $a0, $a0, %lo(D_800E9144)
/* 8B424 800D0C24 14400006 */  bnez       $v0, .L800D0C40
/* 8B428 800D0C28 00000000 */   nop
.L800D0C2C:
/* 8B42C 800D0C2C 3C04800F */  lui        $a0, %hi(D_800E9144)
/* 8B430 800D0C30 0C034830 */  jal        func_800D20C0
/* 8B434 800D0C34 24849144 */   addiu     $a0, $a0, %lo(D_800E9144)
/* 8B438 800D0C38 1040FFFC */  beqz       $v0, .L800D0C2C
/* 8B43C 800D0C3C 00000000 */   nop
.L800D0C40:
/* 8B440 800D0C40 0C032AB4 */  jal        __osDisableInt
/* 8B444 800D0C44 00000000 */   nop
/* 8B448 800D0C48 AFA2001C */  sw         $v0, 0x1C($sp)
/* 8B44C 800D0C4C 27B80024 */  addiu      $t8, $sp, 0x24
/* 8B450 800D0C50 8F0B0000 */  lw         $t3, 0x0($t8)
/* 8B454 800D0C54 3C08C000 */  lui        $t0, (0xC0000000 >> 16)
/* 8B458 800D0C58 0C03482C */  jal        func_800D20B0
/* 8B45C 800D0C5C AD0B0000 */   sw        $t3, (0xC0000000 & 0xFFFF)($t0)
/* 8B460 800D0C60 30492000 */  andi       $t1, $v0, 0x2000
/* 8B464 800D0C64 15200006 */  bnez       $t1, .L800D0C80
/* 8B468 800D0C68 00000000 */   nop
.L800D0C6C:
/* 8B46C 800D0C6C 0C03482C */  jal        func_800D20B0
/* 8B470 800D0C70 00000000 */   nop
/* 8B474 800D0C74 304C2000 */  andi       $t4, $v0, 0x2000
/* 8B478 800D0C78 1180FFFC */  beqz       $t4, .L800D0C6C
/* 8B47C 800D0C7C 00000000 */   nop
.L800D0C80:
/* 8B480 800D0C80 3C19C000 */  lui        $t9, (0xC000000C >> 16)
/* 8B484 800D0C84 AF20000C */  sw         $zero, (0xC000000C & 0xFFFF)($t9)
/* 8B488 800D0C88 3C0A800F */  lui        $t2, %hi(D_800E9144)
/* 8B48C 800D0C8C 8D4A9144 */  lw         $t2, %lo(D_800E9144)($t2)
/* 8B490 800D0C90 3C01800F */  lui        $at, %hi(D_800E9144)
/* 8B494 800D0C94 8FA4001C */  lw         $a0, 0x1C($sp)
/* 8B498 800D0C98 254E0001 */  addiu      $t6, $t2, 0x1
/* 8B49C 800D0C9C 0C032ABC */  jal        __osRestoreInt
/* 8B4A0 800D0CA0 AC2E9144 */   sw        $t6, %lo(D_800E9144)($at)
/* 8B4A4 800D0CA4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8B4A8 800D0CA8 27BD0028 */  addiu      $sp, $sp, 0x28
/* 8B4AC 800D0CAC 03E00008 */  jr         $ra
/* 8B4B0 800D0CB0 00000000 */   nop
/* 8B4B4 800D0CB4 00000000 */  nop
/* 8B4B8 800D0CB8 00000000 */  nop
/* 8B4BC 800D0CBC 00000000 */  nop

# Handwritten function
glabel func_800D0CC0
/* 8B4C0 800D0CC0 40096000 */  mfc0       $t1, $12
/* 8B4C4 800D0CC4 3122FF01 */  andi       $v0, $t1, 0xFF01
/* 8B4C8 800D0CC8 3C0AA430 */  lui        $t2, %hi(D_A430000C)
/* 8B4CC 800D0CCC 8D4A000C */  lw         $t2, %lo(D_A430000C)($t2)
/* 8B4D0 800D0CD0 000A5400 */  sll        $t2, $t2, 16
/* 8B4D4 800D0CD4 004A1025 */  or         $v0, $v0, $t2
/* 8B4D8 800D0CD8 3C01003F */  lui        $at, (0x3F0000 >> 16)
/* 8B4DC 800D0CDC 00814024 */  and        $t0, $a0, $at
/* 8B4E0 800D0CE0 000843C2 */  srl        $t0, $t0, 15
/* 8B4E4 800D0CE4 3C0A800F */  lui        $t2, %hi(D_800EC750)
/* 8B4E8 800D0CE8 01485021 */  addu       $t2, $t2, $t0
/* 8B4EC 800D0CEC 954AC750 */  lhu        $t2, %lo(D_800EC750)($t2)
/* 8B4F0 800D0CF0 3C01A430 */  lui        $at, %hi(D_A430000C)
/* 8B4F4 800D0CF4 AC2A000C */  sw         $t2, %lo(D_A430000C)($at)
/* 8B4F8 800D0CF8 3088FF01 */  andi       $t0, $a0, 0xFF01
/* 8B4FC 800D0CFC 3C01FFFF */  lui        $at, (0xFFFF00FF >> 16)
/* 8B500 800D0D00 342100FF */  ori        $at, $at, (0xFFFF00FF & 0xFFFF)
/* 8B504 800D0D04 01214824 */  and        $t1, $t1, $at
/* 8B508 800D0D08 01284825 */  or         $t1, $t1, $t0
/* 8B50C 800D0D0C 40896000 */  mtc0       $t1, $12
/* 8B510 800D0D10 00000000 */  nop
/* 8B514 800D0D14 00000000 */  nop
/* 8B518 800D0D18 03E00008 */  jr         $ra
/* 8B51C 800D0D1C 00000000 */   nop

glabel func_800D0D20
/* 8B520 800D0D20 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 8B524 800D0D24 AFBF0024 */  sw         $ra, 0x24($sp)
/* 8B528 800D0D28 AFA40038 */  sw         $a0, 0x38($sp)
/* 8B52C 800D0D2C AFB20020 */  sw         $s2, 0x20($sp)
/* 8B530 800D0D30 AFB1001C */  sw         $s1, 0x1C($sp)
/* 8B534 800D0D34 0C032AB4 */  jal        __osDisableInt
/* 8B538 800D0D38 AFB00018 */   sw        $s0, 0x18($sp)
/* 8B53C 800D0D3C 8FAE0038 */  lw         $t6, 0x38($sp)
/* 8B540 800D0D40 00408025 */  or         $s0, $v0, $zero
/* 8B544 800D0D44 15C00005 */  bnez       $t6, .L800D0D5C
/* 8B548 800D0D48 00000000 */   nop
/* 8B54C 800D0D4C 3C0F800F */  lui        $t7, %hi(D_800E9010)
/* 8B550 800D0D50 8DEF9010 */  lw         $t7, %lo(D_800E9010)($t7)
/* 8B554 800D0D54 10000009 */  b          .L800D0D7C
/* 8B558 800D0D58 AFAF0038 */   sw        $t7, 0x38($sp)
.L800D0D5C:
/* 8B55C 800D0D5C 8FB80038 */  lw         $t8, 0x38($sp)
/* 8B560 800D0D60 24010001 */  addiu      $at, $zero, 0x1
/* 8B564 800D0D64 97190010 */  lhu        $t9, 0x10($t8)
/* 8B568 800D0D68 13210004 */  beq        $t9, $at, .L800D0D7C
/* 8B56C 800D0D6C 00000000 */   nop
/* 8B570 800D0D70 8F040008 */  lw         $a0, 0x8($t8)
/* 8B574 800D0D74 0C032AC4 */  jal        func_800CAB10
/* 8B578 800D0D78 03002825 */   or        $a1, $t8, $zero
.L800D0D7C:
/* 8B57C 800D0D7C 3C08800F */  lui        $t0, %hi(__osActiveQueue)
/* 8B580 800D0D80 8D08900C */  lw         $t0, %lo(__osActiveQueue)($t0)
/* 8B584 800D0D84 8FA90038 */  lw         $t1, 0x38($sp)
/* 8B588 800D0D88 15090005 */  bne        $t0, $t1, .L800D0DA0
/* 8B58C 800D0D8C 00000000 */   nop
/* 8B590 800D0D90 8D0A000C */  lw         $t2, 0xC($t0)
/* 8B594 800D0D94 3C01800F */  lui        $at, %hi(__osActiveQueue)
/* 8B598 800D0D98 10000010 */  b          .L800D0DDC
/* 8B59C 800D0D9C AC2A900C */   sw        $t2, %lo(__osActiveQueue)($at)
.L800D0DA0:
/* 8B5A0 800D0DA0 3C11800F */  lui        $s1, %hi(__osActiveQueue)
/* 8B5A4 800D0DA4 8E31900C */  lw         $s1, %lo(__osActiveQueue)($s1)
/* 8B5A8 800D0DA8 8E32000C */  lw         $s2, 0xC($s1)
/* 8B5AC 800D0DAC 1240000B */  beqz       $s2, .L800D0DDC
/* 8B5B0 800D0DB0 00000000 */   nop
.L800D0DB4:
/* 8B5B4 800D0DB4 8FAB0038 */  lw         $t3, 0x38($sp)
/* 8B5B8 800D0DB8 164B0004 */  bne        $s2, $t3, .L800D0DCC
/* 8B5BC 800D0DBC 00000000 */   nop
/* 8B5C0 800D0DC0 8D6C000C */  lw         $t4, 0xC($t3)
/* 8B5C4 800D0DC4 10000005 */  b          .L800D0DDC
/* 8B5C8 800D0DC8 AE2C000C */   sw        $t4, 0xC($s1)
.L800D0DCC:
/* 8B5CC 800D0DCC 02408825 */  or         $s1, $s2, $zero
/* 8B5D0 800D0DD0 8E32000C */  lw         $s2, 0xC($s1)
/* 8B5D4 800D0DD4 1640FFF7 */  bnez       $s2, .L800D0DB4
/* 8B5D8 800D0DD8 00000000 */   nop
.L800D0DDC:
/* 8B5DC 800D0DDC 3C0E800F */  lui        $t6, %hi(D_800E9010)
/* 8B5E0 800D0DE0 8DCE9010 */  lw         $t6, %lo(D_800E9010)($t6)
/* 8B5E4 800D0DE4 8FAD0038 */  lw         $t5, 0x38($sp)
/* 8B5E8 800D0DE8 15AE0003 */  bne        $t5, $t6, .L800D0DF8
/* 8B5EC 800D0DEC 00000000 */   nop
/* 8B5F0 800D0DF0 0C032C9E */  jal        func_800CB278
/* 8B5F4 800D0DF4 00000000 */   nop
.L800D0DF8:
/* 8B5F8 800D0DF8 0C032ABC */  jal        __osRestoreInt
/* 8B5FC 800D0DFC 02002025 */   or        $a0, $s0, $zero
/* 8B600 800D0E00 8FBF0024 */  lw         $ra, 0x24($sp)
/* 8B604 800D0E04 8FB00018 */  lw         $s0, 0x18($sp)
/* 8B608 800D0E08 8FB1001C */  lw         $s1, 0x1C($sp)
/* 8B60C 800D0E0C 8FB20020 */  lw         $s2, 0x20($sp)
/* 8B610 800D0E10 03E00008 */  jr         $ra
/* 8B614 800D0E14 27BD0038 */   addiu     $sp, $sp, 0x38
/* 8B618 800D0E18 00000000 */  nop
/* 8B61C 800D0E1C 00000000 */  nop

# Handwritten function
glabel func_800D0E20
/* 8B620 800D0E20 40845800 */  mtc0       $a0, $11
/* 8B624 800D0E24 03E00008 */  jr         $ra
/* 8B628 800D0E28 00000000 */   nop
/* 8B62C 800D0E2C 00000000 */  nop

glabel func_800D0E30
/* 8B630 800D0E30 3C0EA480 */  lui        $t6, %hi(D_A4800018)
/* 8B634 800D0E34 8DC40018 */  lw         $a0, %lo(D_A4800018)($t6)
/* 8B638 800D0E38 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 8B63C 800D0E3C 308F0003 */  andi       $t7, $a0, 0x3
/* 8B640 800D0E40 11E00003 */  beqz       $t7, .L800D0E50
/* 8B644 800D0E44 00000000 */   nop
/* 8B648 800D0E48 10000002 */  b          .L800D0E54
/* 8B64C 800D0E4C 24020001 */   addiu     $v0, $zero, 0x1
.L800D0E50:
/* 8B650 800D0E50 00001025 */  or         $v0, $zero, $zero
.L800D0E54:
/* 8B654 800D0E54 03E00008 */  jr         $ra
/* 8B658 800D0E58 27BD0008 */   addiu     $sp, $sp, 0x8
/* 8B65C 800D0E5C 00000000 */  nop

glabel func_800D0E60
/* 8B660 800D0E60 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 8B664 800D0E64 3084FFFF */  andi       $a0, $a0, 0xFFFF
/* 8B668 800D0E68 A3A0000F */  sb         $zero, 0xF($sp)
/* 8B66C 800D0E6C AFA00008 */  sw         $zero, 0x8($sp)
.L800D0E70:
/* 8B670 800D0E70 93AE000F */  lbu        $t6, 0xF($sp)
/* 8B674 800D0E74 31CF0010 */  andi       $t7, $t6, 0x10
/* 8B678 800D0E78 11E00004 */  beqz       $t7, .L800D0E8C
/* 8B67C 800D0E7C 00000000 */   nop
/* 8B680 800D0E80 24180015 */  addiu      $t8, $zero, 0x15
/* 8B684 800D0E84 10000002 */  b          .L800D0E90
/* 8B688 800D0E88 A3B8000E */   sb        $t8, 0xE($sp)
.L800D0E8C:
/* 8B68C 800D0E8C A3A0000E */  sb         $zero, 0xE($sp)
.L800D0E90:
/* 8B690 800D0E90 93B9000F */  lbu        $t9, 0xF($sp)
/* 8B694 800D0E94 30890400 */  andi       $t1, $a0, 0x400
/* 8B698 800D0E98 00194040 */  sll        $t0, $t9, 1
/* 8B69C 800D0E9C 11200003 */  beqz       $t1, .L800D0EAC
/* 8B6A0 800D0EA0 A3A8000F */   sb        $t0, 0xF($sp)
/* 8B6A4 800D0EA4 10000002 */  b          .L800D0EB0
/* 8B6A8 800D0EA8 24050001 */   addiu     $a1, $zero, 0x1
.L800D0EAC:
/* 8B6AC 800D0EAC 00002825 */  or         $a1, $zero, $zero
.L800D0EB0:
/* 8B6B0 800D0EB0 93AA000F */  lbu        $t2, 0xF($sp)
/* 8B6B4 800D0EB4 8FA80008 */  lw         $t0, 0x8($sp)
/* 8B6B8 800D0EB8 93AF000E */  lbu        $t7, 0xE($sp)
/* 8B6BC 800D0EBC 30AB00FF */  andi       $t3, $a1, 0xFF
/* 8B6C0 800D0EC0 00046840 */  sll        $t5, $a0, 1
/* 8B6C4 800D0EC4 014B6025 */  or         $t4, $t2, $t3
/* 8B6C8 800D0EC8 01A02025 */  or         $a0, $t5, $zero
/* 8B6CC 800D0ECC 319800FF */  andi       $t8, $t4, 0xFF
/* 8B6D0 800D0ED0 25090001 */  addiu      $t1, $t0, 0x1
/* 8B6D4 800D0ED4 29210010 */  slti       $at, $t1, 0x10
/* 8B6D8 800D0ED8 A3AC000F */  sb         $t4, 0xF($sp)
/* 8B6DC 800D0EDC 308EFFFF */  andi       $t6, $a0, 0xFFFF
/* 8B6E0 800D0EE0 030FC826 */  xor        $t9, $t8, $t7
/* 8B6E4 800D0EE4 AFA90008 */  sw         $t1, 0x8($sp)
/* 8B6E8 800D0EE8 01C02025 */  or         $a0, $t6, $zero
/* 8B6EC 800D0EEC 1420FFE0 */  bnez       $at, .L800D0E70
/* 8B6F0 800D0EF0 A3B9000F */   sb        $t9, 0xF($sp)
/* 8B6F4 800D0EF4 93A2000F */  lbu        $v0, 0xF($sp)
/* 8B6F8 800D0EF8 27BD0010 */  addiu      $sp, $sp, 0x10
/* 8B6FC 800D0EFC 304A001F */  andi       $t2, $v0, 0x1F
/* 8B700 800D0F00 01401025 */  or         $v0, $t2, $zero
/* 8B704 800D0F04 304B00FF */  andi       $t3, $v0, 0xFF
/* 8B708 800D0F08 03E00008 */  jr         $ra
/* 8B70C 800D0F0C 01601025 */   or        $v0, $t3, $zero

glabel func_800D0F10
/* 8B710 800D0F10 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 8B714 800D0F14 A3A0000F */  sb         $zero, 0xF($sp)
/* 8B718 800D0F18 AFA00008 */  sw         $zero, 0x8($sp)
.L800D0F1C:
/* 8B71C 800D0F1C 240E0007 */  addiu      $t6, $zero, 0x7
/* 8B720 800D0F20 AFAE0004 */  sw         $t6, 0x4($sp)
.L800D0F24:
/* 8B724 800D0F24 93AF000F */  lbu        $t7, 0xF($sp)
/* 8B728 800D0F28 31F80080 */  andi       $t8, $t7, 0x80
/* 8B72C 800D0F2C 13000004 */  beqz       $t8, .L800D0F40
/* 8B730 800D0F30 00000000 */   nop
/* 8B734 800D0F34 24190085 */  addiu      $t9, $zero, 0x85
/* 8B738 800D0F38 10000002 */  b          .L800D0F44
/* 8B73C 800D0F3C A3B9000E */   sb        $t9, 0xE($sp)
.L800D0F40:
/* 8B740 800D0F40 A3A0000E */  sb         $zero, 0xE($sp)
.L800D0F44:
/* 8B744 800D0F44 93A8000F */  lbu        $t0, 0xF($sp)
/* 8B748 800D0F48 8FAA0008 */  lw         $t2, 0x8($sp)
/* 8B74C 800D0F4C 24010020 */  addiu      $at, $zero, 0x20
/* 8B750 800D0F50 00084840 */  sll        $t1, $t0, 1
/* 8B754 800D0F54 15410004 */  bne        $t2, $at, .L800D0F68
/* 8B758 800D0F58 A3A9000F */   sb        $t1, 0xF($sp)
/* 8B75C 800D0F5C 312B00FF */  andi       $t3, $t1, 0xFF
/* 8B760 800D0F60 1000000E */  b          .L800D0F9C
/* 8B764 800D0F64 A3AB000F */   sb        $t3, 0xF($sp)
.L800D0F68:
/* 8B768 800D0F68 8FAD0004 */  lw         $t5, 0x4($sp)
/* 8B76C 800D0F6C 908C0000 */  lbu        $t4, 0x0($a0)
/* 8B770 800D0F70 240E0001 */  addiu      $t6, $zero, 0x1
/* 8B774 800D0F74 01AE7804 */  sllv       $t7, $t6, $t5
/* 8B778 800D0F78 018FC024 */  and        $t8, $t4, $t7
/* 8B77C 800D0F7C 13000003 */  beqz       $t8, .L800D0F8C
/* 8B780 800D0F80 00000000 */   nop
/* 8B784 800D0F84 10000002 */  b          .L800D0F90
/* 8B788 800D0F88 24050001 */   addiu     $a1, $zero, 0x1
.L800D0F8C:
/* 8B78C 800D0F8C 00002825 */  or         $a1, $zero, $zero
.L800D0F90:
/* 8B790 800D0F90 93B9000F */  lbu        $t9, 0xF($sp)
/* 8B794 800D0F94 03254025 */  or         $t0, $t9, $a1
/* 8B798 800D0F98 A3A8000F */  sb         $t0, 0xF($sp)
.L800D0F9C:
/* 8B79C 800D0F9C 8FAE0004 */  lw         $t6, 0x4($sp)
/* 8B7A0 800D0FA0 93AA000F */  lbu        $t2, 0xF($sp)
/* 8B7A4 800D0FA4 93A9000E */  lbu        $t1, 0xE($sp)
/* 8B7A8 800D0FA8 25CDFFFF */  addiu      $t5, $t6, -0x1
/* 8B7AC 800D0FAC AFAD0004 */  sw         $t5, 0x4($sp)
/* 8B7B0 800D0FB0 01495826 */  xor        $t3, $t2, $t1
/* 8B7B4 800D0FB4 05A1FFDB */  bgez       $t5, .L800D0F24
/* 8B7B8 800D0FB8 A3AB000F */   sb        $t3, 0xF($sp)
/* 8B7BC 800D0FBC 8FAC0008 */  lw         $t4, 0x8($sp)
/* 8B7C0 800D0FC0 24840001 */  addiu      $a0, $a0, 0x1
/* 8B7C4 800D0FC4 258F0001 */  addiu      $t7, $t4, 0x1
/* 8B7C8 800D0FC8 29E10021 */  slti       $at, $t7, 0x21
/* 8B7CC 800D0FCC 1420FFD3 */  bnez       $at, .L800D0F1C
/* 8B7D0 800D0FD0 AFAF0008 */   sw        $t7, 0x8($sp)
/* 8B7D4 800D0FD4 93A2000F */  lbu        $v0, 0xF($sp)
/* 8B7D8 800D0FD8 03E00008 */  jr         $ra
/* 8B7DC 800D0FDC 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_800D0FE0
/* 8B7E0 800D0FE0 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 8B7E4 800D0FE4 AFA50074 */  sw         $a1, 0x74($sp)
/* 8B7E8 800D0FE8 93AE0077 */  lbu        $t6, 0x77($sp)
/* 8B7EC 800D0FEC 24010058 */  addiu      $at, $zero, 0x58
/* 8B7F0 800D0FF0 AFBF0024 */  sw         $ra, 0x24($sp)
/* 8B7F4 800D0FF4 AFA40070 */  sw         $a0, 0x70($sp)
/* 8B7F8 800D0FF8 15C10005 */  bne        $t6, $at, .L800D1010
/* 8B7FC 800D0FFC AFB00020 */   sw        $s0, 0x20($sp)
/* 8B800 800D1000 3C0F800F */  lui        $t7, %hi(D_800E9204)
/* 8B804 800D1004 25EF9204 */  addiu      $t7, $t7, %lo(D_800E9204)
/* 8B808 800D1008 10000004 */  b          .L800D101C
/* 8B80C 800D100C AFAF0054 */   sw        $t7, 0x54($sp)
.L800D1010:
/* 8B810 800D1010 3C18800F */  lui        $t8, %hi(D_800E91F0)
/* 8B814 800D1014 271891F0 */  addiu      $t8, $t8, %lo(D_800E91F0)
/* 8B818 800D1018 AFB80054 */  sw         $t8, 0x54($sp)
.L800D101C:
/* 8B81C 800D101C 93B90077 */  lbu        $t9, 0x77($sp)
/* 8B820 800D1020 2401006F */  addiu      $at, $zero, 0x6F
/* 8B824 800D1024 17210004 */  bne        $t9, $at, .L800D1038
/* 8B828 800D1028 00000000 */   nop
/* 8B82C 800D102C 24080008 */  addiu      $t0, $zero, 0x8
/* 8B830 800D1030 1000000B */  b          .L800D1060
/* 8B834 800D1034 AFA80050 */   sw        $t0, 0x50($sp)
.L800D1038:
/* 8B838 800D1038 93A90077 */  lbu        $t1, 0x77($sp)
/* 8B83C 800D103C 24010078 */  addiu      $at, $zero, 0x78
/* 8B840 800D1040 11210005 */  beq        $t1, $at, .L800D1058
/* 8B844 800D1044 24010058 */   addiu     $at, $zero, 0x58
/* 8B848 800D1048 11210003 */  beq        $t1, $at, .L800D1058
/* 8B84C 800D104C 00000000 */   nop
/* 8B850 800D1050 10000002 */  b          .L800D105C
/* 8B854 800D1054 2410000A */   addiu     $s0, $zero, 0xA
.L800D1058:
/* 8B858 800D1058 24100010 */  addiu      $s0, $zero, 0x10
.L800D105C:
/* 8B85C 800D105C AFB00050 */  sw         $s0, 0x50($sp)
.L800D1060:
/* 8B860 800D1060 8FAB0070 */  lw         $t3, 0x70($sp)
/* 8B864 800D1064 240A0018 */  addiu      $t2, $zero, 0x18
/* 8B868 800D1068 AFAA004C */  sw         $t2, 0x4C($sp)
/* 8B86C 800D106C 93AE0077 */  lbu        $t6, 0x77($sp)
/* 8B870 800D1070 8D6D0004 */  lw         $t5, 0x4($t3)
/* 8B874 800D1074 8D6C0000 */  lw         $t4, 0x0($t3)
/* 8B878 800D1078 24010064 */  addiu      $at, $zero, 0x64
/* 8B87C 800D107C AFAD0044 */  sw         $t5, 0x44($sp)
/* 8B880 800D1080 11C10004 */  beq        $t6, $at, .L800D1094
/* 8B884 800D1084 AFAC0040 */   sw        $t4, 0x40($sp)
/* 8B888 800D1088 24010069 */  addiu      $at, $zero, 0x69
/* 8B88C 800D108C 15C10012 */  bne        $t6, $at, .L800D10D8
/* 8B890 800D1090 00000000 */   nop
.L800D1094:
/* 8B894 800D1094 8FAF0070 */  lw         $t7, 0x70($sp)
/* 8B898 800D1098 8DF80000 */  lw         $t8, 0x0($t7)
/* 8B89C 800D109C 8DF90004 */  lw         $t9, 0x4($t7)
/* 8B8A0 800D10A0 1F00000D */  bgtz       $t8, .L800D10D8
/* 8B8A4 800D10A4 00000000 */   nop
/* 8B8A8 800D10A8 07000003 */  bltz       $t8, .L800D10B8
/* 8B8AC 800D10AC 00000000 */   nop
/* 8B8B0 800D10B0 10000009 */  b          .L800D10D8
/* 8B8B4 800D10B4 00000000 */   nop
.L800D10B8:
/* 8B8B8 800D10B8 8FA80040 */  lw         $t0, 0x40($sp)
/* 8B8BC 800D10BC 8FA90044 */  lw         $t1, 0x44($sp)
/* 8B8C0 800D10C0 01005027 */  not        $t2, $t0
/* 8B8C4 800D10C4 2D210001 */  sltiu      $at, $t1, 0x1
/* 8B8C8 800D10C8 01415021 */  addu       $t2, $t2, $at
/* 8B8CC 800D10CC 00095823 */  negu       $t3, $t1
/* 8B8D0 800D10D0 AFAB0044 */  sw         $t3, 0x44($sp)
/* 8B8D4 800D10D4 AFAA0040 */  sw         $t2, 0x40($sp)
.L800D10D8:
/* 8B8D8 800D10D8 8FAC0040 */  lw         $t4, 0x40($sp)
/* 8B8DC 800D10DC 8FAD0044 */  lw         $t5, 0x44($sp)
/* 8B8E0 800D10E0 15800007 */  bnez       $t4, .L800D1100
/* 8B8E4 800D10E4 00000000 */   nop
/* 8B8E8 800D10E8 15A00005 */  bnez       $t5, .L800D1100
/* 8B8EC 800D10EC 00000000 */   nop
/* 8B8F0 800D10F0 8FAE0070 */  lw         $t6, 0x70($sp)
/* 8B8F4 800D10F4 8DCF0024 */  lw         $t7, 0x24($t6)
/* 8B8F8 800D10F8 11E00010 */  beqz       $t7, .L800D113C
/* 8B8FC 800D10FC 00000000 */   nop
.L800D1100:
/* 8B900 800D1100 8FB0004C */  lw         $s0, 0x4C($sp)
/* 8B904 800D1104 8FB80050 */  lw         $t8, 0x50($sp)
/* 8B908 800D1108 8FA40040 */  lw         $a0, 0x40($sp)
/* 8B90C 800D110C 2610FFFF */  addiu      $s0, $s0, -0x1
/* 8B910 800D1110 AFB0004C */  sw         $s0, 0x4C($sp)
/* 8B914 800D1114 8FA50044 */  lw         $a1, 0x44($sp)
/* 8B918 800D1118 03003825 */  or         $a3, $t8, $zero
/* 8B91C 800D111C 0C0331E3 */  jal        func_800CC78C
/* 8B920 800D1120 001837C3 */   sra       $a2, $t8, 31
/* 8B924 800D1124 8FA80054 */  lw         $t0, 0x54($sp)
/* 8B928 800D1128 0060C825 */  or         $t9, $v1, $zero
/* 8B92C 800D112C 03B05821 */  addu       $t3, $sp, $s0
/* 8B930 800D1130 03284821 */  addu       $t1, $t9, $t0
/* 8B934 800D1134 912A0000 */  lbu        $t2, 0x0($t1)
/* 8B938 800D1138 A16A0058 */  sb         $t2, 0x58($t3)
.L800D113C:
/* 8B93C 800D113C 8FAC0050 */  lw         $t4, 0x50($sp)
/* 8B940 800D1140 8FA40040 */  lw         $a0, 0x40($sp)
/* 8B944 800D1144 8FA50044 */  lw         $a1, 0x44($sp)
/* 8B948 800D1148 01803825 */  or         $a3, $t4, $zero
/* 8B94C 800D114C 0C0331F2 */  jal        func_800CC7C8
/* 8B950 800D1150 000C37C3 */   sra       $a2, $t4, 31
/* 8B954 800D1154 8FAD0070 */  lw         $t5, 0x70($sp)
/* 8B958 800D1158 ADA20000 */  sw         $v0, 0x0($t5)
/* 8B95C 800D115C ADA30004 */  sw         $v1, 0x4($t5)
/* 8B960 800D1160 8FAE0070 */  lw         $t6, 0x70($sp)
/* 8B964 800D1164 8DD80000 */  lw         $t8, 0x0($t6)
/* 8B968 800D1168 8DD90004 */  lw         $t9, 0x4($t6)
/* 8B96C 800D116C 0700002E */  bltz       $t8, .L800D1228
/* 8B970 800D1170 00000000 */   nop
/* 8B974 800D1174 1F000003 */  bgtz       $t8, .L800D1184
/* 8B978 800D1178 00000000 */   nop
/* 8B97C 800D117C 1320002A */  beqz       $t9, .L800D1228
/* 8B980 800D1180 00000000 */   nop
.L800D1184:
/* 8B984 800D1184 8FAF004C */  lw         $t7, 0x4C($sp)
/* 8B988 800D1188 19E00027 */  blez       $t7, .L800D1228
/* 8B98C 800D118C 00000000 */   nop
.L800D1190:
/* 8B990 800D1190 8FA80070 */  lw         $t0, 0x70($sp)
/* 8B994 800D1194 8FA90050 */  lw         $t1, 0x50($sp)
/* 8B998 800D1198 27A40030 */  addiu      $a0, $sp, 0x30
/* 8B99C 800D119C 8D060000 */  lw         $a2, 0x0($t0)
/* 8B9A0 800D11A0 8D070004 */  lw         $a3, 0x4($t0)
/* 8B9A4 800D11A4 01205825 */  or         $t3, $t1, $zero
/* 8B9A8 800D11A8 000957C3 */  sra        $t2, $t1, 31
/* 8B9AC 800D11AC AFAA0010 */  sw         $t2, 0x10($sp)
/* 8B9B0 800D11B0 0C034848 */  jal        func_800D2120
/* 8B9B4 800D11B4 AFAB0014 */   sw        $t3, 0x14($sp)
/* 8B9B8 800D11B8 8FAE0070 */  lw         $t6, 0x70($sp)
/* 8B9BC 800D11BC 8FAC0030 */  lw         $t4, 0x30($sp)
/* 8B9C0 800D11C0 8FAD0034 */  lw         $t5, 0x34($sp)
/* 8B9C4 800D11C4 ADCC0000 */  sw         $t4, 0x0($t6)
/* 8B9C8 800D11C8 ADCD0004 */  sw         $t5, 0x4($t6)
/* 8B9CC 800D11CC 8FB9003C */  lw         $t9, 0x3C($sp)
/* 8B9D0 800D11D0 8FB0004C */  lw         $s0, 0x4C($sp)
/* 8B9D4 800D11D4 8FA80054 */  lw         $t0, 0x54($sp)
/* 8B9D8 800D11D8 03207825 */  or         $t7, $t9, $zero
/* 8B9DC 800D11DC 2610FFFF */  addiu      $s0, $s0, -0x1
/* 8B9E0 800D11E0 AFB0004C */  sw         $s0, 0x4C($sp)
/* 8B9E4 800D11E4 01E84821 */  addu       $t1, $t7, $t0
/* 8B9E8 800D11E8 912A0000 */  lbu        $t2, 0x0($t1)
/* 8B9EC 800D11EC 03B05821 */  addu       $t3, $sp, $s0
/* 8B9F0 800D11F0 8FB80038 */  lw         $t8, 0x38($sp)
/* 8B9F4 800D11F4 A16A0058 */  sb         $t2, 0x58($t3)
/* 8B9F8 800D11F8 8FAC0070 */  lw         $t4, 0x70($sp)
/* 8B9FC 800D11FC 8D8E0000 */  lw         $t6, 0x0($t4)
/* 8BA00 800D1200 8D8F0004 */  lw         $t7, 0x4($t4)
/* 8BA04 800D1204 05C00008 */  bltz       $t6, .L800D1228
/* 8BA08 800D1208 00000000 */   nop
/* 8BA0C 800D120C 1DC00003 */  bgtz       $t6, .L800D121C
/* 8BA10 800D1210 00000000 */   nop
/* 8BA14 800D1214 11E00004 */  beqz       $t7, .L800D1228
/* 8BA18 800D1218 00000000 */   nop
.L800D121C:
/* 8BA1C 800D121C 8FAD004C */  lw         $t5, 0x4C($sp)
/* 8BA20 800D1220 1DA0FFDB */  bgtz       $t5, .L800D1190
/* 8BA24 800D1224 00000000 */   nop
.L800D1228:
/* 8BA28 800D1228 8FB8004C */  lw         $t8, 0x4C($sp)
/* 8BA2C 800D122C 8FA90070 */  lw         $t1, 0x70($sp)
/* 8BA30 800D1230 24190018 */  addiu      $t9, $zero, 0x18
/* 8BA34 800D1234 03384023 */  subu       $t0, $t9, $t8
/* 8BA38 800D1238 AD280014 */  sw         $t0, 0x14($t1)
/* 8BA3C 800D123C 8FAA0070 */  lw         $t2, 0x70($sp)
/* 8BA40 800D1240 8FAB004C */  lw         $t3, 0x4C($sp)
/* 8BA44 800D1244 27AC0058 */  addiu      $t4, $sp, 0x58
/* 8BA48 800D1248 8D440008 */  lw         $a0, 0x8($t2)
/* 8BA4C 800D124C 8D460014 */  lw         $a2, 0x14($t2)
/* 8BA50 800D1250 0C034130 */  jal        func_800D04C0
/* 8BA54 800D1254 016C2821 */   addu      $a1, $t3, $t4
/* 8BA58 800D1258 8FAE0070 */  lw         $t6, 0x70($sp)
/* 8BA5C 800D125C 8DCF0014 */  lw         $t7, 0x14($t6)
/* 8BA60 800D1260 8DCD0024 */  lw         $t5, 0x24($t6)
/* 8BA64 800D1264 01ED082A */  slt        $at, $t7, $t5
/* 8BA68 800D1268 10200003 */  beqz       $at, .L800D1278
/* 8BA6C 800D126C 00000000 */   nop
/* 8BA70 800D1270 01AFC823 */  subu       $t9, $t5, $t7
/* 8BA74 800D1274 ADD90010 */  sw         $t9, 0x10($t6)
.L800D1278:
/* 8BA78 800D1278 8FB80070 */  lw         $t8, 0x70($sp)
/* 8BA7C 800D127C 8F080024 */  lw         $t0, 0x24($t8)
/* 8BA80 800D1280 05010012 */  bgez       $t0, .L800D12CC
/* 8BA84 800D1284 00000000 */   nop
/* 8BA88 800D1288 8F090030 */  lw         $t1, 0x30($t8)
/* 8BA8C 800D128C 24010010 */  addiu      $at, $zero, 0x10
/* 8BA90 800D1290 312B0014 */  andi       $t3, $t1, 0x14
/* 8BA94 800D1294 1561000D */  bne        $t3, $at, .L800D12CC
/* 8BA98 800D1298 00000000 */   nop
/* 8BA9C 800D129C 8F0C0028 */  lw         $t4, 0x28($t8)
/* 8BAA0 800D12A0 8F0A000C */  lw         $t2, 0xC($t8)
/* 8BAA4 800D12A4 8F0F0010 */  lw         $t7, 0x10($t8)
/* 8BAA8 800D12A8 8F0E0014 */  lw         $t6, 0x14($t8)
/* 8BAAC 800D12AC 018A6823 */  subu       $t5, $t4, $t2
/* 8BAB0 800D12B0 01AFC823 */  subu       $t9, $t5, $t7
/* 8BAB4 800D12B4 032E4023 */  subu       $t0, $t9, $t6
/* 8BAB8 800D12B8 19000004 */  blez       $t0, .L800D12CC
/* 8BABC 800D12BC AFA8004C */   sw        $t0, 0x4C($sp)
/* 8BAC0 800D12C0 8F090010 */  lw         $t1, 0x10($t8)
/* 8BAC4 800D12C4 01285821 */  addu       $t3, $t1, $t0
/* 8BAC8 800D12C8 AF0B0010 */  sw         $t3, 0x10($t8)
.L800D12CC:
/* 8BACC 800D12CC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 8BAD0 800D12D0 8FB00020 */  lw         $s0, 0x20($sp)
/* 8BAD4 800D12D4 27BD0070 */  addiu      $sp, $sp, 0x70
/* 8BAD8 800D12D8 03E00008 */  jr         $ra
/* 8BADC 800D12DC 00000000 */   nop

glabel func_800D12E0
/* 8BAE0 800D12E0 27BDFF68 */  addiu      $sp, $sp, -0x98
/* 8BAE4 800D12E4 AFA40098 */  sw         $a0, 0x98($sp)
/* 8BAE8 800D12E8 8FAF0098 */  lw         $t7, 0x98($sp)
/* 8BAEC 800D12EC 27AE0078 */  addiu      $t6, $sp, 0x78
/* 8BAF0 800D12F0 AFBF0024 */  sw         $ra, 0x24($sp)
/* 8BAF4 800D12F4 AFA5009C */  sw         $a1, 0x9C($sp)
/* 8BAF8 800D12F8 AFB10020 */  sw         $s1, 0x20($sp)
/* 8BAFC 800D12FC AFB0001C */  sw         $s0, 0x1C($sp)
/* 8BB00 800D1300 AFAE0074 */  sw         $t6, 0x74($sp)
/* 8BB04 800D1304 D5E40000 */  ldc1       $f4, 0x0($t7)
/* 8BB08 800D1308 F7A40068 */  sdc1       $f4, 0x68($sp)
/* 8BB0C 800D130C 8DF80024 */  lw         $t8, 0x24($t7)
/* 8BB10 800D1310 07010004 */  bgez       $t8, .L800D1324
/* 8BB14 800D1314 00000000 */   nop
/* 8BB18 800D1318 24190006 */  addiu      $t9, $zero, 0x6
/* 8BB1C 800D131C 1000000E */  b          .L800D1358
/* 8BB20 800D1320 ADF90024 */   sw        $t9, 0x24($t7)
.L800D1324:
/* 8BB24 800D1324 8FA80098 */  lw         $t0, 0x98($sp)
/* 8BB28 800D1328 8D090024 */  lw         $t1, 0x24($t0)
/* 8BB2C 800D132C 1520000A */  bnez       $t1, .L800D1358
/* 8BB30 800D1330 00000000 */   nop
/* 8BB34 800D1334 93AA009F */  lbu        $t2, 0x9F($sp)
/* 8BB38 800D1338 24010067 */  addiu      $at, $zero, 0x67
/* 8BB3C 800D133C 11410003 */  beq        $t2, $at, .L800D134C
/* 8BB40 800D1340 24010047 */   addiu     $at, $zero, 0x47
/* 8BB44 800D1344 15410004 */  bne        $t2, $at, .L800D1358
/* 8BB48 800D1348 00000000 */   nop
.L800D134C:
/* 8BB4C 800D134C 8FAC0098 */  lw         $t4, 0x98($sp)
/* 8BB50 800D1350 240B0001 */  addiu      $t3, $zero, 0x1
/* 8BB54 800D1354 AD8B0024 */  sw         $t3, 0x24($t4)
.L800D1358:
/* 8BB58 800D1358 27A40062 */  addiu      $a0, $sp, 0x62
/* 8BB5C 800D135C 0C034638 */  jal        func_800D18E0
/* 8BB60 800D1360 8FA50098 */   lw        $a1, 0x98($sp)
/* 8BB64 800D1364 A7A20066 */  sh         $v0, 0x66($sp)
/* 8BB68 800D1368 87AD0066 */  lh         $t5, 0x66($sp)
/* 8BB6C 800D136C 19A00012 */  blez       $t5, .L800D13B8
/* 8BB70 800D1370 24010002 */   addiu     $at, $zero, 0x2
/* 8BB74 800D1374 15A10004 */  bne        $t5, $at, .L800D1388
/* 8BB78 800D1378 00000000 */   nop
/* 8BB7C 800D137C 3C10800F */  lui        $s0, %hi(D_800EC818)
/* 8BB80 800D1380 10000003 */  b          .L800D1390
/* 8BB84 800D1384 2610C818 */   addiu     $s0, $s0, %lo(D_800EC818)
.L800D1388:
/* 8BB88 800D1388 3C10800F */  lui        $s0, %hi(D_800EC81C)
/* 8BB8C 800D138C 2610C81C */  addiu      $s0, $s0, %lo(D_800EC81C)
.L800D1390:
/* 8BB90 800D1390 8FAE0098 */  lw         $t6, 0x98($sp)
/* 8BB94 800D1394 24180003 */  addiu      $t8, $zero, 0x3
/* 8BB98 800D1398 02002825 */  or         $a1, $s0, $zero
/* 8BB9C 800D139C ADD80014 */  sw         $t8, 0x14($t6)
/* 8BBA0 800D13A0 8FB90098 */  lw         $t9, 0x98($sp)
/* 8BBA4 800D13A4 8DC40008 */  lw         $a0, 0x8($t6)
/* 8BBA8 800D13A8 0C034130 */  jal        func_800D04C0
/* 8BBAC 800D13AC 8F260014 */   lw        $a2, 0x14($t9)
/* 8BBB0 800D13B0 10000146 */  b          .L800D18CC
/* 8BBB4 800D13B4 00000000 */   nop
.L800D13B8:
/* 8BBB8 800D13B8 87AF0066 */  lh         $t7, 0x66($sp)
/* 8BBBC 800D13BC 15E00004 */  bnez       $t7, .L800D13D0
/* 8BBC0 800D13C0 00000000 */   nop
/* 8BBC4 800D13C4 A7A00064 */  sh         $zero, 0x64($sp)
/* 8BBC8 800D13C8 10000139 */  b          .L800D18B0
/* 8BBCC 800D13CC A7A00062 */   sh        $zero, 0x62($sp)
.L800D13D0:
/* 8BBD0 800D13D0 D7A60068 */  ldc1       $f6, 0x68($sp)
/* 8BBD4 800D13D4 44804800 */  mtc1       $zero, $f9
/* 8BBD8 800D13D8 44804000 */  mtc1       $zero, $f8
/* 8BBDC 800D13DC 00000000 */  nop
/* 8BBE0 800D13E0 4628303C */  c.lt.d     $f6, $f8
/* 8BBE4 800D13E4 00000000 */  nop
/* 8BBE8 800D13E8 45000003 */  bc1f       .L800D13F8
/* 8BBEC 800D13EC 00000000 */   nop
/* 8BBF0 800D13F0 46203287 */  neg.d      $f10, $f6
/* 8BBF4 800D13F4 F7AA0068 */  sdc1       $f10, 0x68($sp)
.L800D13F8:
/* 8BBF8 800D13F8 87A80062 */  lh         $t0, 0x62($sp)
/* 8BBFC 800D13FC 24017597 */  addiu      $at, $zero, 0x7597
/* 8BC00 800D1400 01010019 */  multu      $t0, $at
/* 8BC04 800D1404 3C010001 */  lui        $at, (0x186A0 >> 16)
/* 8BC08 800D1408 342186A0 */  ori        $at, $at, (0x186A0 & 0xFFFF)
/* 8BC0C 800D140C 00004812 */  mflo       $t1
/* 8BC10 800D1410 00000000 */  nop
/* 8BC14 800D1414 00000000 */  nop
/* 8BC18 800D1418 0121001A */  div        $zero, $t1, $at
/* 8BC1C 800D141C 00005012 */  mflo       $t2
/* 8BC20 800D1420 254BFFFC */  addiu      $t3, $t2, -0x4
/* 8BC24 800D1424 000B6400 */  sll        $t4, $t3, 16
/* 8BC28 800D1428 000C6C03 */  sra        $t5, $t4, 16
/* 8BC2C 800D142C 05A10022 */  bgez       $t5, .L800D14B8
/* 8BC30 800D1430 A7AB0062 */   sh        $t3, 0x62($sp)
/* 8BC34 800D1434 000B7400 */  sll        $t6, $t3, 16
/* 8BC38 800D1438 000ECC03 */  sra        $t9, $t6, 16
/* 8BC3C 800D143C 24180003 */  addiu      $t8, $zero, 0x3
/* 8BC40 800D1440 03197823 */  subu       $t7, $t8, $t9
/* 8BC44 800D1444 2401FFFC */  addiu      $at, $zero, -0x4
/* 8BC48 800D1448 01E14024 */  and        $t0, $t7, $at
/* 8BC4C 800D144C AFA80058 */  sw         $t0, 0x58($sp)
/* 8BC50 800D1450 8FAA0058 */  lw         $t2, 0x58($sp)
/* 8BC54 800D1454 00084823 */  negu       $t1, $t0
/* 8BC58 800D1458 A7A90062 */  sh         $t1, 0x62($sp)
/* 8BC5C 800D145C 1940003B */  blez       $t2, .L800D154C
/* 8BC60 800D1460 AFA0005C */   sw        $zero, 0x5C($sp)
.L800D1464:
/* 8BC64 800D1464 8FAC0058 */  lw         $t4, 0x58($sp)
/* 8BC68 800D1468 318D0001 */  andi       $t5, $t4, 0x1
/* 8BC6C 800D146C 11A00009 */  beqz       $t5, .L800D1494
/* 8BC70 800D1470 00000000 */   nop
/* 8BC74 800D1474 8FAB005C */  lw         $t3, 0x5C($sp)
/* 8BC78 800D1478 3C01800F */  lui        $at, %hi(D_800EC7D0)
/* 8BC7C 800D147C D7B00068 */  ldc1       $f16, 0x68($sp)
/* 8BC80 800D1480 000B70C0 */  sll        $t6, $t3, 3
/* 8BC84 800D1484 002E0821 */  addu       $at, $at, $t6
/* 8BC88 800D1488 D432C7D0 */  ldc1       $f18, %lo(D_800EC7D0)($at)
/* 8BC8C 800D148C 46328102 */  mul.d      $f4, $f16, $f18
/* 8BC90 800D1490 F7A40068 */  sdc1       $f4, 0x68($sp)
.L800D1494:
/* 8BC94 800D1494 8FB80058 */  lw         $t8, 0x58($sp)
/* 8BC98 800D1498 8FAF005C */  lw         $t7, 0x5C($sp)
/* 8BC9C 800D149C 0018C843 */  sra        $t9, $t8, 1
/* 8BCA0 800D14A0 25E80001 */  addiu      $t0, $t7, 0x1
/* 8BCA4 800D14A4 AFA8005C */  sw         $t0, 0x5C($sp)
/* 8BCA8 800D14A8 1F20FFEE */  bgtz       $t9, .L800D1464
/* 8BCAC 800D14AC AFB90058 */   sw        $t9, 0x58($sp)
/* 8BCB0 800D14B0 10000026 */  b          .L800D154C
/* 8BCB4 800D14B4 00000000 */   nop
.L800D14B8:
/* 8BCB8 800D14B8 87A90062 */  lh         $t1, 0x62($sp)
/* 8BCBC 800D14BC 19200023 */  blez       $t1, .L800D154C
/* 8BCC0 800D14C0 3C013FF0 */   lui       $at, (0x3FF00000 >> 16)
/* 8BCC4 800D14C4 44814800 */  mtc1       $at, $f9
/* 8BCC8 800D14C8 2401FFFC */  addiu      $at, $zero, -0x4
/* 8BCCC 800D14CC 01215024 */  and        $t2, $t1, $at
/* 8BCD0 800D14D0 44804000 */  mtc1       $zero, $f8
/* 8BCD4 800D14D4 000A6400 */  sll        $t4, $t2, 16
/* 8BCD8 800D14D8 000C6C03 */  sra        $t5, $t4, 16
/* 8BCDC 800D14DC A7AA0062 */  sh         $t2, 0x62($sp)
/* 8BCE0 800D14E0 AFAD0058 */  sw         $t5, 0x58($sp)
/* 8BCE4 800D14E4 AFA0005C */  sw         $zero, 0x5C($sp)
/* 8BCE8 800D14E8 19A00014 */  blez       $t5, .L800D153C
/* 8BCEC 800D14EC F7A80050 */   sdc1      $f8, 0x50($sp)
.L800D14F0:
/* 8BCF0 800D14F0 8FAB0058 */  lw         $t3, 0x58($sp)
/* 8BCF4 800D14F4 316E0001 */  andi       $t6, $t3, 0x1
/* 8BCF8 800D14F8 11C00009 */  beqz       $t6, .L800D1520
/* 8BCFC 800D14FC 00000000 */   nop
/* 8BD00 800D1500 8FB8005C */  lw         $t8, 0x5C($sp)
/* 8BD04 800D1504 3C01800F */  lui        $at, %hi(D_800EC7D0)
/* 8BD08 800D1508 D7A60050 */  ldc1       $f6, 0x50($sp)
/* 8BD0C 800D150C 001878C0 */  sll        $t7, $t8, 3
/* 8BD10 800D1510 002F0821 */  addu       $at, $at, $t7
/* 8BD14 800D1514 D42AC7D0 */  ldc1       $f10, %lo(D_800EC7D0)($at)
/* 8BD18 800D1518 462A3402 */  mul.d      $f16, $f6, $f10
/* 8BD1C 800D151C F7B00050 */  sdc1       $f16, 0x50($sp)
.L800D1520:
/* 8BD20 800D1520 8FA80058 */  lw         $t0, 0x58($sp)
/* 8BD24 800D1524 8FA9005C */  lw         $t1, 0x5C($sp)
/* 8BD28 800D1528 0008C843 */  sra        $t9, $t0, 1
/* 8BD2C 800D152C 252A0001 */  addiu      $t2, $t1, 0x1
/* 8BD30 800D1530 AFAA005C */  sw         $t2, 0x5C($sp)
/* 8BD34 800D1534 1F20FFEE */  bgtz       $t9, .L800D14F0
/* 8BD38 800D1538 AFB90058 */   sw        $t9, 0x58($sp)
.L800D153C:
/* 8BD3C 800D153C D7B20068 */  ldc1       $f18, 0x68($sp)
/* 8BD40 800D1540 D7A40050 */  ldc1       $f4, 0x50($sp)
/* 8BD44 800D1544 46249203 */  div.d      $f8, $f18, $f4
/* 8BD48 800D1548 F7A80068 */  sdc1       $f8, 0x68($sp)
.L800D154C:
/* 8BD4C 800D154C 93AC009F */  lbu        $t4, 0x9F($sp)
/* 8BD50 800D1550 24010066 */  addiu      $at, $zero, 0x66
/* 8BD54 800D1554 15810004 */  bne        $t4, $at, .L800D1568
/* 8BD58 800D1558 00000000 */   nop
/* 8BD5C 800D155C 87B00062 */  lh         $s0, 0x62($sp)
/* 8BD60 800D1560 10000002 */  b          .L800D156C
/* 8BD64 800D1564 2610000A */   addiu     $s0, $s0, 0xA
.L800D1568:
/* 8BD68 800D1568 24100006 */  addiu      $s0, $zero, 0x6
.L800D156C:
/* 8BD6C 800D156C 8FAD0098 */  lw         $t5, 0x98($sp)
/* 8BD70 800D1570 8DAB0024 */  lw         $t3, 0x24($t5)
/* 8BD74 800D1574 020B7021 */  addu       $t6, $s0, $t3
/* 8BD78 800D1578 AFAE004C */  sw         $t6, 0x4C($sp)
/* 8BD7C 800D157C 8FB8004C */  lw         $t8, 0x4C($sp)
/* 8BD80 800D1580 2B010014 */  slti       $at, $t8, 0x14
/* 8BD84 800D1584 14200003 */  bnez       $at, .L800D1594
/* 8BD88 800D1588 00000000 */   nop
/* 8BD8C 800D158C 240F0013 */  addiu      $t7, $zero, 0x13
/* 8BD90 800D1590 AFAF004C */  sw         $t7, 0x4C($sp)
.L800D1594:
/* 8BD94 800D1594 8FA90074 */  lw         $t1, 0x74($sp)
/* 8BD98 800D1598 24080030 */  addiu      $t0, $zero, 0x30
/* 8BD9C 800D159C A1280000 */  sb         $t0, 0x0($t1)
/* 8BDA0 800D15A0 8FAA0074 */  lw         $t2, 0x74($sp)
/* 8BDA4 800D15A4 8FAC004C */  lw         $t4, 0x4C($sp)
/* 8BDA8 800D15A8 25590001 */  addiu      $t9, $t2, 0x1
/* 8BDAC 800D15AC 1980004C */  blez       $t4, .L800D16E0
/* 8BDB0 800D15B0 AFB90074 */   sw        $t9, 0x74($sp)
/* 8BDB4 800D15B4 44803800 */  mtc1       $zero, $f7
/* 8BDB8 800D15B8 44803000 */  mtc1       $zero, $f6
/* 8BDBC 800D15BC D7AA0068 */  ldc1       $f10, 0x68($sp)
/* 8BDC0 800D15C0 462A303C */  c.lt.d     $f6, $f10
/* 8BDC4 800D15C4 00000000 */  nop
/* 8BDC8 800D15C8 45000045 */  bc1f       .L800D16E0
/* 8BDCC 800D15CC 00000000 */   nop
.L800D15D0:
/* 8BDD0 800D15D0 D7B00068 */  ldc1       $f16, 0x68($sp)
/* 8BDD4 800D15D4 8FAE004C */  lw         $t6, 0x4C($sp)
/* 8BDD8 800D15D8 4620848D */  trunc.w.d  $f18, $f16
/* 8BDDC 800D15DC 25D8FFF8 */  addiu      $t8, $t6, -0x8
/* 8BDE0 800D15E0 AFB8004C */  sw         $t8, 0x4C($sp)
/* 8BDE4 800D15E4 440B9000 */  mfc1       $t3, $f18
/* 8BDE8 800D15E8 1B000008 */  blez       $t8, .L800D160C
/* 8BDEC 800D15EC AFAB0044 */   sw        $t3, 0x44($sp)
/* 8BDF0 800D15F0 448B2000 */  mtc1       $t3, $f4
/* 8BDF4 800D15F4 3C01800F */  lui        $at, %hi(D_800EC828)
/* 8BDF8 800D15F8 D42AC828 */  ldc1       $f10, %lo(D_800EC828)($at)
/* 8BDFC 800D15FC 46802221 */  cvt.d.w    $f8, $f4
/* 8BE00 800D1600 46288181 */  sub.d      $f6, $f16, $f8
/* 8BE04 800D1604 462A3482 */  mul.d      $f18, $f6, $f10
/* 8BE08 800D1608 F7B20068 */  sdc1       $f18, 0x68($sp)
.L800D160C:
/* 8BE0C 800D160C 8FAF0074 */  lw         $t7, 0x74($sp)
/* 8BE10 800D1610 8FAA0044 */  lw         $t2, 0x44($sp)
/* 8BE14 800D1614 24090008 */  addiu      $t1, $zero, 0x8
/* 8BE18 800D1618 25E80008 */  addiu      $t0, $t7, 0x8
/* 8BE1C 800D161C AFA80074 */  sw         $t0, 0x74($sp)
/* 8BE20 800D1620 19400016 */  blez       $t2, .L800D167C
/* 8BE24 800D1624 AFA90048 */   sw        $t1, 0x48($sp)
/* 8BE28 800D1628 24190007 */  addiu      $t9, $zero, 0x7
/* 8BE2C 800D162C AFB90048 */  sw         $t9, 0x48($sp)
.L800D1630:
/* 8BE30 800D1630 27A4003C */  addiu      $a0, $sp, 0x3C
/* 8BE34 800D1634 8FA50044 */  lw         $a1, 0x44($sp)
/* 8BE38 800D1638 0C034888 */  jal        func_800D2220
/* 8BE3C 800D163C 2406000A */   addiu     $a2, $zero, 0xA
/* 8BE40 800D1640 8FAC0074 */  lw         $t4, 0x74($sp)
/* 8BE44 800D1644 8FAE0040 */  lw         $t6, 0x40($sp)
/* 8BE48 800D1648 258DFFFF */  addiu      $t5, $t4, -0x1
/* 8BE4C 800D164C AFAD0074 */  sw         $t5, 0x74($sp)
/* 8BE50 800D1650 25D80030 */  addiu      $t8, $t6, 0x30
/* 8BE54 800D1654 A1B80000 */  sb         $t8, 0x0($t5)
/* 8BE58 800D1658 8FAB003C */  lw         $t3, 0x3C($sp)
/* 8BE5C 800D165C AFAB0044 */  sw         $t3, 0x44($sp)
/* 8BE60 800D1660 8FAF0044 */  lw         $t7, 0x44($sp)
/* 8BE64 800D1664 19E00005 */  blez       $t7, .L800D167C
/* 8BE68 800D1668 00000000 */   nop
/* 8BE6C 800D166C 8FA80048 */  lw         $t0, 0x48($sp)
/* 8BE70 800D1670 2509FFFF */  addiu      $t1, $t0, -0x1
/* 8BE74 800D1674 0521FFEE */  bgez       $t1, .L800D1630
/* 8BE78 800D1678 AFA90048 */   sw        $t1, 0x48($sp)
.L800D167C:
/* 8BE7C 800D167C 8FAA0048 */  lw         $t2, 0x48($sp)
/* 8BE80 800D1680 2559FFFF */  addiu      $t9, $t2, -0x1
/* 8BE84 800D1684 0720000A */  bltz       $t9, .L800D16B0
/* 8BE88 800D1688 AFB90048 */   sw        $t9, 0x48($sp)
.L800D168C:
/* 8BE8C 800D168C 8FAC0074 */  lw         $t4, 0x74($sp)
/* 8BE90 800D1690 24180030 */  addiu      $t8, $zero, 0x30
/* 8BE94 800D1694 258EFFFF */  addiu      $t6, $t4, -0x1
/* 8BE98 800D1698 AFAE0074 */  sw         $t6, 0x74($sp)
/* 8BE9C 800D169C A1D80000 */  sb         $t8, 0x0($t6)
/* 8BEA0 800D16A0 8FAD0048 */  lw         $t5, 0x48($sp)
/* 8BEA4 800D16A4 25ABFFFF */  addiu      $t3, $t5, -0x1
/* 8BEA8 800D16A8 0561FFF8 */  bgez       $t3, .L800D168C
/* 8BEAC 800D16AC AFAB0048 */   sw        $t3, 0x48($sp)
.L800D16B0:
/* 8BEB0 800D16B0 8FAF0074 */  lw         $t7, 0x74($sp)
/* 8BEB4 800D16B4 8FA9004C */  lw         $t1, 0x4C($sp)
/* 8BEB8 800D16B8 25E80008 */  addiu      $t0, $t7, 0x8
/* 8BEBC 800D16BC 19200008 */  blez       $t1, .L800D16E0
/* 8BEC0 800D16C0 AFA80074 */   sw        $t0, 0x74($sp)
/* 8BEC4 800D16C4 44802800 */  mtc1       $zero, $f5
/* 8BEC8 800D16C8 44802000 */  mtc1       $zero, $f4
/* 8BECC 800D16CC D7B00068 */  ldc1       $f16, 0x68($sp)
/* 8BED0 800D16D0 4630203C */  c.lt.d     $f4, $f16
/* 8BED4 800D16D4 00000000 */  nop
/* 8BED8 800D16D8 4501FFBD */  bc1t       .L800D15D0
/* 8BEDC 800D16DC 00000000 */   nop
.L800D16E0:
/* 8BEE0 800D16E0 8FAA0074 */  lw         $t2, 0x74($sp)
/* 8BEE4 800D16E4 87AD0062 */  lh         $t5, 0x62($sp)
/* 8BEE8 800D16E8 27B90078 */  addiu      $t9, $sp, 0x78
/* 8BEEC 800D16EC 01596023 */  subu       $t4, $t2, $t9
/* 8BEF0 800D16F0 2598FFFF */  addiu      $t8, $t4, -0x1
/* 8BEF4 800D16F4 272E0001 */  addiu      $t6, $t9, 0x1
/* 8BEF8 800D16F8 25AB0007 */  addiu      $t3, $t5, 0x7
/* 8BEFC 800D16FC AFB8004C */  sw         $t8, 0x4C($sp)
/* 8BF00 800D1700 A7AB0062 */  sh         $t3, 0x62($sp)
/* 8BF04 800D1704 AFAE0074 */  sw         $t6, 0x74($sp)
/* 8BF08 800D1708 932F0001 */  lbu        $t7, 0x1($t9)
/* 8BF0C 800D170C 24010030 */  addiu      $at, $zero, 0x30
/* 8BF10 800D1710 15E1000E */  bne        $t7, $at, .L800D174C
/* 8BF14 800D1714 00000000 */   nop
.L800D1718:
/* 8BF18 800D1718 8FB80074 */  lw         $t8, 0x74($sp)
/* 8BF1C 800D171C 8FA8004C */  lw         $t0, 0x4C($sp)
/* 8BF20 800D1720 87AA0062 */  lh         $t2, 0x62($sp)
/* 8BF24 800D1724 270E0001 */  addiu      $t6, $t8, 0x1
/* 8BF28 800D1728 2509FFFF */  addiu      $t1, $t0, -0x1
/* 8BF2C 800D172C 254CFFFF */  addiu      $t4, $t2, -0x1
/* 8BF30 800D1730 AFAE0074 */  sw         $t6, 0x74($sp)
/* 8BF34 800D1734 A7AC0062 */  sh         $t4, 0x62($sp)
/* 8BF38 800D1738 AFA9004C */  sw         $t1, 0x4C($sp)
/* 8BF3C 800D173C 91CD0000 */  lbu        $t5, 0x0($t6)
/* 8BF40 800D1740 24010030 */  addiu      $at, $zero, 0x30
/* 8BF44 800D1744 11A1FFF4 */  beq        $t5, $at, .L800D1718
/* 8BF48 800D1748 00000000 */   nop
.L800D174C:
/* 8BF4C 800D174C 93AB009F */  lbu        $t3, 0x9F($sp)
/* 8BF50 800D1750 24010066 */  addiu      $at, $zero, 0x66
/* 8BF54 800D1754 15610004 */  bne        $t3, $at, .L800D1768
/* 8BF58 800D1758 00000000 */   nop
/* 8BF5C 800D175C 87B00062 */  lh         $s0, 0x62($sp)
/* 8BF60 800D1760 1000000B */  b          .L800D1790
/* 8BF64 800D1764 26100001 */   addiu     $s0, $s0, 0x1
.L800D1768:
/* 8BF68 800D1768 93B9009F */  lbu        $t9, 0x9F($sp)
/* 8BF6C 800D176C 24010065 */  addiu      $at, $zero, 0x65
/* 8BF70 800D1770 13210003 */  beq        $t9, $at, .L800D1780
/* 8BF74 800D1774 24010045 */   addiu     $at, $zero, 0x45
/* 8BF78 800D1778 17210003 */  bne        $t9, $at, .L800D1788
/* 8BF7C 800D177C 00000000 */   nop
.L800D1780:
/* 8BF80 800D1780 10000002 */  b          .L800D178C
/* 8BF84 800D1784 24110001 */   addiu     $s1, $zero, 0x1
.L800D1788:
/* 8BF88 800D1788 00008825 */  or         $s1, $zero, $zero
.L800D178C:
/* 8BF8C 800D178C 02208025 */  or         $s0, $s1, $zero
.L800D1790:
/* 8BF90 800D1790 8FAF0098 */  lw         $t7, 0x98($sp)
/* 8BF94 800D1794 8FAA004C */  lw         $t2, 0x4C($sp)
/* 8BF98 800D1798 8DE80024 */  lw         $t0, 0x24($t7)
/* 8BF9C 800D179C 02084821 */  addu       $t1, $s0, $t0
/* 8BFA0 800D17A0 A7A90064 */  sh         $t1, 0x64($sp)
/* 8BFA4 800D17A4 87AC0064 */  lh         $t4, 0x64($sp)
/* 8BFA8 800D17A8 014C082A */  slt        $at, $t2, $t4
/* 8BFAC 800D17AC 10200002 */  beqz       $at, .L800D17B8
/* 8BFB0 800D17B0 00000000 */   nop
/* 8BFB4 800D17B4 A7AA0064 */  sh         $t2, 0x64($sp)
.L800D17B8:
/* 8BFB8 800D17B8 87B80064 */  lh         $t8, 0x64($sp)
/* 8BFBC 800D17BC 1B00003C */  blez       $t8, .L800D18B0
/* 8BFC0 800D17C0 00000000 */   nop
/* 8BFC4 800D17C4 8FAE004C */  lw         $t6, 0x4C($sp)
/* 8BFC8 800D17C8 030E082A */  slt        $at, $t8, $t6
/* 8BFCC 800D17CC 1020000A */  beqz       $at, .L800D17F8
/* 8BFD0 800D17D0 00000000 */   nop
/* 8BFD4 800D17D4 8FAD0074 */  lw         $t5, 0x74($sp)
/* 8BFD8 800D17D8 030D5821 */  addu       $t3, $t8, $t5
/* 8BFDC 800D17DC 91790000 */  lbu        $t9, 0x0($t3)
/* 8BFE0 800D17E0 2B210035 */  slti       $at, $t9, 0x35
/* 8BFE4 800D17E4 14200004 */  bnez       $at, .L800D17F8
/* 8BFE8 800D17E8 00000000 */   nop
/* 8BFEC 800D17EC 240F0039 */  addiu      $t7, $zero, 0x39
/* 8BFF0 800D17F0 10000003 */  b          .L800D1800
/* 8BFF4 800D17F4 A3AF003B */   sb        $t7, 0x3B($sp)
.L800D17F8:
/* 8BFF8 800D17F8 24080030 */  addiu      $t0, $zero, 0x30
/* 8BFFC 800D17FC A3A8003B */  sb         $t0, 0x3B($sp)
.L800D1800:
/* 8C000 800D1800 87A90064 */  lh         $t1, 0x64($sp)
/* 8C004 800D1804 8FAA0074 */  lw         $t2, 0x74($sp)
/* 8C008 800D1808 93AD003B */  lbu        $t5, 0x3B($sp)
/* 8C00C 800D180C 252CFFFF */  addiu      $t4, $t1, -0x1
/* 8C010 800D1810 AFA90034 */  sw         $t1, 0x34($sp)
/* 8C014 800D1814 AFAC0034 */  sw         $t4, 0x34($sp)
/* 8C018 800D1818 018A7021 */  addu       $t6, $t4, $t2
/* 8C01C 800D181C 91D80000 */  lbu        $t8, 0x0($t6)
/* 8C020 800D1820 170D000D */  bne        $t8, $t5, .L800D1858
/* 8C024 800D1824 00000000 */   nop
.L800D1828:
/* 8C028 800D1828 8FAF0034 */  lw         $t7, 0x34($sp)
/* 8C02C 800D182C 87AB0064 */  lh         $t3, 0x64($sp)
/* 8C030 800D1830 8FA90074 */  lw         $t1, 0x74($sp)
/* 8C034 800D1834 25E8FFFF */  addiu      $t0, $t7, -0x1
/* 8C038 800D1838 2579FFFF */  addiu      $t9, $t3, -0x1
/* 8C03C 800D183C AFA80034 */  sw         $t0, 0x34($sp)
/* 8C040 800D1840 A7B90064 */  sh         $t9, 0x64($sp)
/* 8C044 800D1844 01096021 */  addu       $t4, $t0, $t1
/* 8C048 800D1848 918A0000 */  lbu        $t2, 0x0($t4)
/* 8C04C 800D184C 93AE003B */  lbu        $t6, 0x3B($sp)
/* 8C050 800D1850 114EFFF5 */  beq        $t2, $t6, .L800D1828
/* 8C054 800D1854 00000000 */   nop
.L800D1858:
/* 8C058 800D1858 93B8003B */  lbu        $t8, 0x3B($sp)
/* 8C05C 800D185C 24010039 */  addiu      $at, $zero, 0x39
/* 8C060 800D1860 17010007 */  bne        $t8, $at, .L800D1880
/* 8C064 800D1864 00000000 */   nop
/* 8C068 800D1868 8FAD0074 */  lw         $t5, 0x74($sp)
/* 8C06C 800D186C 8FAB0034 */  lw         $t3, 0x34($sp)
/* 8C070 800D1870 01ABC821 */  addu       $t9, $t5, $t3
/* 8C074 800D1874 932F0000 */  lbu        $t7, 0x0($t9)
/* 8C078 800D1878 25E80001 */  addiu      $t0, $t7, 0x1
/* 8C07C 800D187C A3280000 */  sb         $t0, 0x0($t9)
.L800D1880:
/* 8C080 800D1880 8FA90034 */  lw         $t1, 0x34($sp)
/* 8C084 800D1884 0521000A */  bgez       $t1, .L800D18B0
/* 8C088 800D1888 00000000 */   nop
/* 8C08C 800D188C 8FAC0074 */  lw         $t4, 0x74($sp)
/* 8C090 800D1890 87AE0064 */  lh         $t6, 0x64($sp)
/* 8C094 800D1894 87AD0062 */  lh         $t5, 0x62($sp)
/* 8C098 800D1898 258AFFFF */  addiu      $t2, $t4, -0x1
/* 8C09C 800D189C 25D80001 */  addiu      $t8, $t6, 0x1
/* 8C0A0 800D18A0 25AB0001 */  addiu      $t3, $t5, 0x1
/* 8C0A4 800D18A4 A7AB0062 */  sh         $t3, 0x62($sp)
/* 8C0A8 800D18A8 A7B80064 */  sh         $t8, 0x64($sp)
/* 8C0AC 800D18AC AFAA0074 */  sw         $t2, 0x74($sp)
.L800D18B0:
/* 8C0B0 800D18B0 87AF0062 */  lh         $t7, 0x62($sp)
/* 8C0B4 800D18B4 8FA40098 */  lw         $a0, 0x98($sp)
/* 8C0B8 800D18B8 93A5009F */  lbu        $a1, 0x9F($sp)
/* 8C0BC 800D18BC 8FA60074 */  lw         $a2, 0x74($sp)
/* 8C0C0 800D18C0 87A70064 */  lh         $a3, 0x64($sp)
/* 8C0C4 800D18C4 0C034670 */  jal        func_800D19C0
/* 8C0C8 800D18C8 AFAF0010 */   sw        $t7, 0x10($sp)
.L800D18CC:
/* 8C0CC 800D18CC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 8C0D0 800D18D0 8FB0001C */  lw         $s0, 0x1C($sp)
/* 8C0D4 800D18D4 8FB10020 */  lw         $s1, 0x20($sp)
/* 8C0D8 800D18D8 03E00008 */  jr         $ra
/* 8C0DC 800D18DC 27BD0098 */   addiu     $sp, $sp, 0x98

glabel func_800D18E0
/* 8C0E0 800D18E0 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 8C0E4 800D18E4 AFA5000C */  sw         $a1, 0xC($sp)
/* 8C0E8 800D18E8 8FAE000C */  lw         $t6, 0xC($sp)
/* 8C0EC 800D18EC 240107FF */  addiu      $at, $zero, 0x7FF
/* 8C0F0 800D18F0 95CF0000 */  lhu        $t7, 0x0($t6)
/* 8C0F4 800D18F4 31F87FF0 */  andi       $t8, $t7, 0x7FF0
/* 8C0F8 800D18F8 0018C903 */  sra        $t9, $t8, 4
/* 8C0FC 800D18FC 00194400 */  sll        $t0, $t9, 16
/* 8C100 800D1900 00084C03 */  sra        $t1, $t0, 16
/* 8C104 800D1904 15210017 */  bne        $t1, $at, .L800D1964
/* 8C108 800D1908 A7B9000A */   sh        $t9, 0xA($sp)
/* 8C10C 800D190C A4800000 */  sh         $zero, 0x0($a0)
/* 8C110 800D1910 8FAA000C */  lw         $t2, 0xC($sp)
/* 8C114 800D1914 954B0000 */  lhu        $t3, 0x0($t2)
/* 8C118 800D1918 316C000F */  andi       $t4, $t3, 0xF
/* 8C11C 800D191C 1580000A */  bnez       $t4, .L800D1948
/* 8C120 800D1920 00000000 */   nop
/* 8C124 800D1924 954D0002 */  lhu        $t5, 0x2($t2)
/* 8C128 800D1928 15A00007 */  bnez       $t5, .L800D1948
/* 8C12C 800D192C 00000000 */   nop
/* 8C130 800D1930 954E0004 */  lhu        $t6, 0x4($t2)
/* 8C134 800D1934 15C00004 */  bnez       $t6, .L800D1948
/* 8C138 800D1938 00000000 */   nop
/* 8C13C 800D193C 954F0006 */  lhu        $t7, 0x6($t2)
/* 8C140 800D1940 11E00003 */  beqz       $t7, .L800D1950
/* 8C144 800D1944 00000000 */   nop
.L800D1948:
/* 8C148 800D1948 10000002 */  b          .L800D1954
/* 8C14C 800D194C 24060002 */   addiu     $a2, $zero, 0x2
.L800D1950:
/* 8C150 800D1950 24060001 */  addiu      $a2, $zero, 0x1
.L800D1954:
/* 8C154 800D1954 00061400 */  sll        $v0, $a2, 16
/* 8C158 800D1958 0002C403 */  sra        $t8, $v0, 16
/* 8C15C 800D195C 10000016 */  b          .L800D19B8
/* 8C160 800D1960 03001025 */   or        $v0, $t8, $zero
.L800D1964:
/* 8C164 800D1964 87B9000A */  lh         $t9, 0xA($sp)
/* 8C168 800D1968 1B20000C */  blez       $t9, .L800D199C
/* 8C16C 800D196C 00000000 */   nop
/* 8C170 800D1970 8FA8000C */  lw         $t0, 0xC($sp)
/* 8C174 800D1974 2401800F */  addiu      $at, $zero, -0x7FF1
/* 8C178 800D1978 2402FFFF */  addiu      $v0, $zero, -0x1
/* 8C17C 800D197C 95090000 */  lhu        $t1, 0x0($t0)
/* 8C180 800D1980 01215824 */  and        $t3, $t1, $at
/* 8C184 800D1984 356C3FF0 */  ori        $t4, $t3, 0x3FF0
/* 8C188 800D1988 A50C0000 */  sh         $t4, 0x0($t0)
/* 8C18C 800D198C 87AD000A */  lh         $t5, 0xA($sp)
/* 8C190 800D1990 25AEFC02 */  addiu      $t6, $t5, -0x3FE
/* 8C194 800D1994 10000008 */  b          .L800D19B8
/* 8C198 800D1998 A48E0000 */   sh        $t6, 0x0($a0)
.L800D199C:
/* 8C19C 800D199C 87AA000A */  lh         $t2, 0xA($sp)
/* 8C1A0 800D19A0 05410003 */  bgez       $t2, .L800D19B0
/* 8C1A4 800D19A4 00000000 */   nop
/* 8C1A8 800D19A8 10000003 */  b          .L800D19B8
/* 8C1AC 800D19AC 24020002 */   addiu     $v0, $zero, 0x2
.L800D19B0:
/* 8C1B0 800D19B0 A4800000 */  sh         $zero, 0x0($a0)
/* 8C1B4 800D19B4 00001025 */  or         $v0, $zero, $zero
.L800D19B8:
/* 8C1B8 800D19B8 03E00008 */  jr         $ra
/* 8C1BC 800D19BC 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_800D19C0
/* 8C1C0 800D19C0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 8C1C4 800D19C4 AFA7003C */  sw         $a3, 0x3C($sp)
/* 8C1C8 800D19C8 87AF003E */  lh         $t7, 0x3E($sp)
/* 8C1CC 800D19CC 240E002E */  addiu      $t6, $zero, 0x2E
/* 8C1D0 800D19D0 AFBF001C */  sw         $ra, 0x1C($sp)
/* 8C1D4 800D19D4 AFA40030 */  sw         $a0, 0x30($sp)
/* 8C1D8 800D19D8 AFA50034 */  sw         $a1, 0x34($sp)
/* 8C1DC 800D19DC AFA60038 */  sw         $a2, 0x38($sp)
/* 8C1E0 800D19E0 AFB00018 */  sw         $s0, 0x18($sp)
/* 8C1E4 800D19E4 1DE00006 */  bgtz       $t7, .L800D1A00
/* 8C1E8 800D19E8 A3AE002F */   sb        $t6, 0x2F($sp)
/* 8C1EC 800D19EC 3C19800F */  lui        $t9, %hi(D_800EC820)
/* 8C1F0 800D19F0 2739C820 */  addiu      $t9, $t9, %lo(D_800EC820)
/* 8C1F4 800D19F4 24180001 */  addiu      $t8, $zero, 0x1
/* 8C1F8 800D19F8 A7B8003E */  sh         $t8, 0x3E($sp)
/* 8C1FC 800D19FC AFB90038 */  sw         $t9, 0x38($sp)
.L800D1A00:
/* 8C200 800D1A00 93A80037 */  lbu        $t0, 0x37($sp)
/* 8C204 800D1A04 24010066 */  addiu      $at, $zero, 0x66
/* 8C208 800D1A08 1101000E */  beq        $t0, $at, .L800D1A44
/* 8C20C 800D1A0C 24010067 */   addiu     $at, $zero, 0x67
/* 8C210 800D1A10 11010003 */  beq        $t0, $at, .L800D1A20
/* 8C214 800D1A14 24010047 */   addiu     $at, $zero, 0x47
/* 8C218 800D1A18 150100D5 */  bne        $t0, $at, .L800D1D70
/* 8C21C 800D1A1C 00000000 */   nop
.L800D1A20:
/* 8C220 800D1A20 87A90042 */  lh         $t1, 0x42($sp)
/* 8C224 800D1A24 2921FFFC */  slti       $at, $t1, -0x4
/* 8C228 800D1A28 142000D1 */  bnez       $at, .L800D1D70
/* 8C22C 800D1A2C 00000000 */   nop
/* 8C230 800D1A30 8FAA0030 */  lw         $t2, 0x30($sp)
/* 8C234 800D1A34 8D4B0024 */  lw         $t3, 0x24($t2)
/* 8C238 800D1A38 012B082A */  slt        $at, $t1, $t3
/* 8C23C 800D1A3C 102000CC */  beqz       $at, .L800D1D70
/* 8C240 800D1A40 00000000 */   nop
.L800D1A44:
/* 8C244 800D1A44 87AC0042 */  lh         $t4, 0x42($sp)
/* 8C248 800D1A48 93AE0037 */  lbu        $t6, 0x37($sp)
/* 8C24C 800D1A4C 24010066 */  addiu      $at, $zero, 0x66
/* 8C250 800D1A50 258D0001 */  addiu      $t5, $t4, 0x1
/* 8C254 800D1A54 11C10016 */  beq        $t6, $at, .L800D1AB0
/* 8C258 800D1A58 A7AD0042 */   sh        $t5, 0x42($sp)
/* 8C25C 800D1A5C 8FAF0030 */  lw         $t7, 0x30($sp)
/* 8C260 800D1A60 8DF80030 */  lw         $t8, 0x30($t7)
/* 8C264 800D1A64 33190008 */  andi       $t9, $t8, 0x8
/* 8C268 800D1A68 17200007 */  bnez       $t9, .L800D1A88
/* 8C26C 800D1A6C 00000000 */   nop
/* 8C270 800D1A70 87A8003E */  lh         $t0, 0x3E($sp)
/* 8C274 800D1A74 8DEA0024 */  lw         $t2, 0x24($t7)
/* 8C278 800D1A78 010A082A */  slt        $at, $t0, $t2
/* 8C27C 800D1A7C 10200002 */  beqz       $at, .L800D1A88
/* 8C280 800D1A80 00000000 */   nop
/* 8C284 800D1A84 ADE80024 */  sw         $t0, 0x24($t7)
.L800D1A88:
/* 8C288 800D1A88 8FA90030 */  lw         $t1, 0x30($sp)
/* 8C28C 800D1A8C 87AC0042 */  lh         $t4, 0x42($sp)
/* 8C290 800D1A90 8D2B0024 */  lw         $t3, 0x24($t1)
/* 8C294 800D1A94 016C6823 */  subu       $t5, $t3, $t4
/* 8C298 800D1A98 AD2D0024 */  sw         $t5, 0x24($t1)
/* 8C29C 800D1A9C 8FAE0030 */  lw         $t6, 0x30($sp)
/* 8C2A0 800D1AA0 8DD80024 */  lw         $t8, 0x24($t6)
/* 8C2A4 800D1AA4 07010002 */  bgez       $t8, .L800D1AB0
/* 8C2A8 800D1AA8 00000000 */   nop
/* 8C2AC 800D1AAC ADC00024 */  sw         $zero, 0x24($t6)
.L800D1AB0:
/* 8C2B0 800D1AB0 87B90042 */  lh         $t9, 0x42($sp)
/* 8C2B4 800D1AB4 1F200045 */  bgtz       $t9, .L800D1BCC
/* 8C2B8 800D1AB8 00000000 */   nop
/* 8C2BC 800D1ABC 8FA80030 */  lw         $t0, 0x30($sp)
/* 8C2C0 800D1AC0 240A0030 */  addiu      $t2, $zero, 0x30
/* 8C2C4 800D1AC4 8D0F0008 */  lw         $t7, 0x8($t0)
/* 8C2C8 800D1AC8 8D0B0014 */  lw         $t3, 0x14($t0)
/* 8C2CC 800D1ACC 01EB6021 */  addu       $t4, $t7, $t3
/* 8C2D0 800D1AD0 A18A0000 */  sb         $t2, 0x0($t4)
/* 8C2D4 800D1AD4 8FAD0030 */  lw         $t5, 0x30($sp)
/* 8C2D8 800D1AD8 8DA90014 */  lw         $t1, 0x14($t5)
/* 8C2DC 800D1ADC 25380001 */  addiu      $t8, $t1, 0x1
/* 8C2E0 800D1AE0 ADB80014 */  sw         $t8, 0x14($t5)
/* 8C2E4 800D1AE4 8FAE0030 */  lw         $t6, 0x30($sp)
/* 8C2E8 800D1AE8 8DD90024 */  lw         $t9, 0x24($t6)
/* 8C2EC 800D1AEC 1F200005 */  bgtz       $t9, .L800D1B04
/* 8C2F0 800D1AF0 00000000 */   nop
/* 8C2F4 800D1AF4 8DC80030 */  lw         $t0, 0x30($t6)
/* 8C2F8 800D1AF8 310F0008 */  andi       $t7, $t0, 0x8
/* 8C2FC 800D1AFC 11E0000B */  beqz       $t7, .L800D1B2C
/* 8C300 800D1B00 00000000 */   nop
.L800D1B04:
/* 8C304 800D1B04 8FAA0030 */  lw         $t2, 0x30($sp)
/* 8C308 800D1B08 93AB002F */  lbu        $t3, 0x2F($sp)
/* 8C30C 800D1B0C 8D4C0008 */  lw         $t4, 0x8($t2)
/* 8C310 800D1B10 8D490014 */  lw         $t1, 0x14($t2)
/* 8C314 800D1B14 0189C021 */  addu       $t8, $t4, $t1
/* 8C318 800D1B18 A30B0000 */  sb         $t3, 0x0($t8)
/* 8C31C 800D1B1C 8FAD0030 */  lw         $t5, 0x30($sp)
/* 8C320 800D1B20 8DB90014 */  lw         $t9, 0x14($t5)
/* 8C324 800D1B24 272E0001 */  addiu      $t6, $t9, 0x1
/* 8C328 800D1B28 ADAE0014 */  sw         $t6, 0x14($t5)
.L800D1B2C:
/* 8C32C 800D1B2C 8FA80030 */  lw         $t0, 0x30($sp)
/* 8C330 800D1B30 87AA0042 */  lh         $t2, 0x42($sp)
/* 8C334 800D1B34 8D0F0024 */  lw         $t7, 0x24($t0)
/* 8C338 800D1B38 000A6023 */  negu       $t4, $t2
/* 8C33C 800D1B3C 01EC082A */  slt        $at, $t7, $t4
/* 8C340 800D1B40 10200003 */  beqz       $at, .L800D1B50
/* 8C344 800D1B44 00000000 */   nop
/* 8C348 800D1B48 000F4823 */  negu       $t1, $t7
/* 8C34C 800D1B4C A7A90042 */  sh         $t1, 0x42($sp)
.L800D1B50:
/* 8C350 800D1B50 87AB0042 */  lh         $t3, 0x42($sp)
/* 8C354 800D1B54 8FB90030 */  lw         $t9, 0x30($sp)
/* 8C358 800D1B58 000BC023 */  negu       $t8, $t3
/* 8C35C 800D1B5C AF380018 */  sw         $t8, 0x18($t9)
/* 8C360 800D1B60 8FAE0030 */  lw         $t6, 0x30($sp)
/* 8C364 800D1B64 87A80042 */  lh         $t0, 0x42($sp)
/* 8C368 800D1B68 8DCD0024 */  lw         $t5, 0x24($t6)
/* 8C36C 800D1B6C 01A85021 */  addu       $t2, $t5, $t0
/* 8C370 800D1B70 ADCA0024 */  sw         $t2, 0x24($t6)
/* 8C374 800D1B74 8FAC0030 */  lw         $t4, 0x30($sp)
/* 8C378 800D1B78 87A9003E */  lh         $t1, 0x3E($sp)
/* 8C37C 800D1B7C 8D8F0024 */  lw         $t7, 0x24($t4)
/* 8C380 800D1B80 01E9082A */  slt        $at, $t7, $t1
/* 8C384 800D1B84 10200002 */  beqz       $at, .L800D1B90
/* 8C388 800D1B88 00000000 */   nop
/* 8C38C 800D1B8C A7AF003E */  sh         $t7, 0x3E($sp)
.L800D1B90:
/* 8C390 800D1B90 8FAB0030 */  lw         $t3, 0x30($sp)
/* 8C394 800D1B94 87B0003E */  lh         $s0, 0x3E($sp)
/* 8C398 800D1B98 8FA50038 */  lw         $a1, 0x38($sp)
/* 8C39C 800D1B9C 8D780008 */  lw         $t8, 0x8($t3)
/* 8C3A0 800D1BA0 8D790014 */  lw         $t9, 0x14($t3)
/* 8C3A4 800D1BA4 AD70001C */  sw         $s0, 0x1C($t3)
/* 8C3A8 800D1BA8 02003025 */  or         $a2, $s0, $zero
/* 8C3AC 800D1BAC 0C034130 */  jal        func_800D04C0
/* 8C3B0 800D1BB0 03192021 */   addu      $a0, $t8, $t9
/* 8C3B4 800D1BB4 8FAD0030 */  lw         $t5, 0x30($sp)
/* 8C3B8 800D1BB8 87AA003E */  lh         $t2, 0x3E($sp)
/* 8C3BC 800D1BBC 8DA80024 */  lw         $t0, 0x24($t5)
/* 8C3C0 800D1BC0 010A7023 */  subu       $t6, $t0, $t2
/* 8C3C4 800D1BC4 1000011E */  b          .L800D2040
/* 8C3C8 800D1BC8 ADAE0020 */   sw        $t6, 0x20($t5)
.L800D1BCC:
/* 8C3CC 800D1BCC 87AC003E */  lh         $t4, 0x3E($sp)
/* 8C3D0 800D1BD0 87A90042 */  lh         $t1, 0x42($sp)
/* 8C3D4 800D1BD4 0189082A */  slt        $at, $t4, $t1
/* 8C3D8 800D1BD8 10200028 */  beqz       $at, .L800D1C7C
/* 8C3DC 800D1BDC 00000000 */   nop
/* 8C3E0 800D1BE0 8FAF0030 */  lw         $t7, 0x30($sp)
/* 8C3E4 800D1BE4 8FA50038 */  lw         $a1, 0x38($sp)
/* 8C3E8 800D1BE8 01803025 */  or         $a2, $t4, $zero
/* 8C3EC 800D1BEC 8DF80008 */  lw         $t8, 0x8($t7)
/* 8C3F0 800D1BF0 8DF90014 */  lw         $t9, 0x14($t7)
/* 8C3F4 800D1BF4 0C034130 */  jal        func_800D04C0
/* 8C3F8 800D1BF8 03192021 */   addu      $a0, $t8, $t9
/* 8C3FC 800D1BFC 8FAB0030 */  lw         $t3, 0x30($sp)
/* 8C400 800D1C00 87AA003E */  lh         $t2, 0x3E($sp)
/* 8C404 800D1C04 8D680014 */  lw         $t0, 0x14($t3)
/* 8C408 800D1C08 010A7021 */  addu       $t6, $t0, $t2
/* 8C40C 800D1C0C AD6E0014 */  sw         $t6, 0x14($t3)
/* 8C410 800D1C10 87A9003E */  lh         $t1, 0x3E($sp)
/* 8C414 800D1C14 87AD0042 */  lh         $t5, 0x42($sp)
/* 8C418 800D1C18 8FB80030 */  lw         $t8, 0x30($sp)
/* 8C41C 800D1C1C 01A97823 */  subu       $t7, $t5, $t1
/* 8C420 800D1C20 AF0F0018 */  sw         $t7, 0x18($t8)
/* 8C424 800D1C24 8FB90030 */  lw         $t9, 0x30($sp)
/* 8C428 800D1C28 8F2C0024 */  lw         $t4, 0x24($t9)
/* 8C42C 800D1C2C 1D800005 */  bgtz       $t4, .L800D1C44
/* 8C430 800D1C30 00000000 */   nop
/* 8C434 800D1C34 8F280030 */  lw         $t0, 0x30($t9)
/* 8C438 800D1C38 310A0008 */  andi       $t2, $t0, 0x8
/* 8C43C 800D1C3C 1140000B */  beqz       $t2, .L800D1C6C
/* 8C440 800D1C40 00000000 */   nop
.L800D1C44:
/* 8C444 800D1C44 8FAB0030 */  lw         $t3, 0x30($sp)
/* 8C448 800D1C48 93AE002F */  lbu        $t6, 0x2F($sp)
/* 8C44C 800D1C4C 8D6D0008 */  lw         $t5, 0x8($t3)
/* 8C450 800D1C50 8D690014 */  lw         $t1, 0x14($t3)
/* 8C454 800D1C54 01A97821 */  addu       $t7, $t5, $t1
/* 8C458 800D1C58 A1EE0000 */  sb         $t6, 0x0($t7)
/* 8C45C 800D1C5C 8FB80030 */  lw         $t8, 0x30($sp)
/* 8C460 800D1C60 8F0C001C */  lw         $t4, 0x1C($t8)
/* 8C464 800D1C64 25990001 */  addiu      $t9, $t4, 0x1
/* 8C468 800D1C68 AF19001C */  sw         $t9, 0x1C($t8)
.L800D1C6C:
/* 8C46C 800D1C6C 8FA80030 */  lw         $t0, 0x30($sp)
/* 8C470 800D1C70 8D0A0024 */  lw         $t2, 0x24($t0)
/* 8C474 800D1C74 100000F2 */  b          .L800D2040
/* 8C478 800D1C78 AD0A0020 */   sw        $t2, 0x20($t0)
.L800D1C7C:
/* 8C47C 800D1C7C 8FAB0030 */  lw         $t3, 0x30($sp)
/* 8C480 800D1C80 8FA50038 */  lw         $a1, 0x38($sp)
/* 8C484 800D1C84 87A60042 */  lh         $a2, 0x42($sp)
/* 8C488 800D1C88 8D6D0008 */  lw         $t5, 0x8($t3)
/* 8C48C 800D1C8C 8D690014 */  lw         $t1, 0x14($t3)
/* 8C490 800D1C90 0C034130 */  jal        func_800D04C0
/* 8C494 800D1C94 01A92021 */   addu      $a0, $t5, $t1
/* 8C498 800D1C98 8FAE0030 */  lw         $t6, 0x30($sp)
/* 8C49C 800D1C9C 87AC0042 */  lh         $t4, 0x42($sp)
/* 8C4A0 800D1CA0 8DCF0014 */  lw         $t7, 0x14($t6)
/* 8C4A4 800D1CA4 01ECC821 */  addu       $t9, $t7, $t4
/* 8C4A8 800D1CA8 ADD90014 */  sw         $t9, 0x14($t6)
/* 8C4AC 800D1CAC 87B8003E */  lh         $t8, 0x3E($sp)
/* 8C4B0 800D1CB0 87AA0042 */  lh         $t2, 0x42($sp)
/* 8C4B4 800D1CB4 8FAB0030 */  lw         $t3, 0x30($sp)
/* 8C4B8 800D1CB8 030A4023 */  subu       $t0, $t8, $t2
/* 8C4BC 800D1CBC A7A8003E */  sh         $t0, 0x3E($sp)
/* 8C4C0 800D1CC0 8D6D0024 */  lw         $t5, 0x24($t3)
/* 8C4C4 800D1CC4 1DA00005 */  bgtz       $t5, .L800D1CDC
/* 8C4C8 800D1CC8 00000000 */   nop
/* 8C4CC 800D1CCC 8D690030 */  lw         $t1, 0x30($t3)
/* 8C4D0 800D1CD0 312F0008 */  andi       $t7, $t1, 0x8
/* 8C4D4 800D1CD4 11E0000B */  beqz       $t7, .L800D1D04
/* 8C4D8 800D1CD8 00000000 */   nop
.L800D1CDC:
/* 8C4DC 800D1CDC 8FB90030 */  lw         $t9, 0x30($sp)
/* 8C4E0 800D1CE0 93AC002F */  lbu        $t4, 0x2F($sp)
/* 8C4E4 800D1CE4 8F2E0008 */  lw         $t6, 0x8($t9)
/* 8C4E8 800D1CE8 8F380014 */  lw         $t8, 0x14($t9)
/* 8C4EC 800D1CEC 01D85021 */  addu       $t2, $t6, $t8
/* 8C4F0 800D1CF0 A14C0000 */  sb         $t4, 0x0($t2)
/* 8C4F4 800D1CF4 8FA80030 */  lw         $t0, 0x30($sp)
/* 8C4F8 800D1CF8 8D0D0014 */  lw         $t5, 0x14($t0)
/* 8C4FC 800D1CFC 25AB0001 */  addiu      $t3, $t5, 0x1
/* 8C500 800D1D00 AD0B0014 */  sw         $t3, 0x14($t0)
.L800D1D04:
/* 8C504 800D1D04 8FA90030 */  lw         $t1, 0x30($sp)
/* 8C508 800D1D08 87B9003E */  lh         $t9, 0x3E($sp)
/* 8C50C 800D1D0C 8D2F0024 */  lw         $t7, 0x24($t1)
/* 8C510 800D1D10 01F9082A */  slt        $at, $t7, $t9
/* 8C514 800D1D14 10200002 */  beqz       $at, .L800D1D20
/* 8C518 800D1D18 00000000 */   nop
/* 8C51C 800D1D1C A7AF003E */  sh         $t7, 0x3E($sp)
.L800D1D20:
/* 8C520 800D1D20 8FAE0030 */  lw         $t6, 0x30($sp)
/* 8C524 800D1D24 87AA0042 */  lh         $t2, 0x42($sp)
/* 8C528 800D1D28 8FAD0038 */  lw         $t5, 0x38($sp)
/* 8C52C 800D1D2C 8DD80008 */  lw         $t8, 0x8($t6)
/* 8C530 800D1D30 8DCC0014 */  lw         $t4, 0x14($t6)
/* 8C534 800D1D34 87A6003E */  lh         $a2, 0x3E($sp)
/* 8C538 800D1D38 014D2821 */  addu       $a1, $t2, $t5
/* 8C53C 800D1D3C 0C034130 */  jal        func_800D04C0
/* 8C540 800D1D40 030C2021 */   addu      $a0, $t8, $t4
/* 8C544 800D1D44 8FAB0030 */  lw         $t3, 0x30($sp)
/* 8C548 800D1D48 87A9003E */  lh         $t1, 0x3E($sp)
/* 8C54C 800D1D4C 8D680014 */  lw         $t0, 0x14($t3)
/* 8C550 800D1D50 0109C821 */  addu       $t9, $t0, $t1
/* 8C554 800D1D54 AD790014 */  sw         $t9, 0x14($t3)
/* 8C558 800D1D58 8FAF0030 */  lw         $t7, 0x30($sp)
/* 8C55C 800D1D5C 87B8003E */  lh         $t8, 0x3E($sp)
/* 8C560 800D1D60 8DEE0024 */  lw         $t6, 0x24($t7)
/* 8C564 800D1D64 01D86023 */  subu       $t4, $t6, $t8
/* 8C568 800D1D68 100000B5 */  b          .L800D2040
/* 8C56C 800D1D6C ADEC0018 */   sw        $t4, 0x18($t7)
.L800D1D70:
/* 8C570 800D1D70 93AA0037 */  lbu        $t2, 0x37($sp)
/* 8C574 800D1D74 24010067 */  addiu      $at, $zero, 0x67
/* 8C578 800D1D78 11410003 */  beq        $t2, $at, .L800D1D88
/* 8C57C 800D1D7C 24010047 */   addiu     $at, $zero, 0x47
/* 8C580 800D1D80 1541001A */  bne        $t2, $at, .L800D1DEC
/* 8C584 800D1D84 00000000 */   nop
.L800D1D88:
/* 8C588 800D1D88 8FA80030 */  lw         $t0, 0x30($sp)
/* 8C58C 800D1D8C 87AD003E */  lh         $t5, 0x3E($sp)
/* 8C590 800D1D90 8D090024 */  lw         $t1, 0x24($t0)
/* 8C594 800D1D94 01A9082A */  slt        $at, $t5, $t1
/* 8C598 800D1D98 10200002 */  beqz       $at, .L800D1DA4
/* 8C59C 800D1D9C 00000000 */   nop
/* 8C5A0 800D1DA0 AD0D0024 */  sw         $t5, 0x24($t0)
.L800D1DA4:
/* 8C5A4 800D1DA4 8FB90030 */  lw         $t9, 0x30($sp)
/* 8C5A8 800D1DA8 8F2B0024 */  lw         $t3, 0x24($t9)
/* 8C5AC 800D1DAC 256EFFFF */  addiu      $t6, $t3, -0x1
/* 8C5B0 800D1DB0 AF2E0024 */  sw         $t6, 0x24($t9)
/* 8C5B4 800D1DB4 8FB80030 */  lw         $t8, 0x30($sp)
/* 8C5B8 800D1DB8 8F0C0024 */  lw         $t4, 0x24($t8)
/* 8C5BC 800D1DBC 05810002 */  bgez       $t4, .L800D1DC8
/* 8C5C0 800D1DC0 00000000 */   nop
/* 8C5C4 800D1DC4 AF000024 */  sw         $zero, 0x24($t8)
.L800D1DC8:
/* 8C5C8 800D1DC8 93AF0037 */  lbu        $t7, 0x37($sp)
/* 8C5CC 800D1DCC 24010067 */  addiu      $at, $zero, 0x67
/* 8C5D0 800D1DD0 15E10004 */  bne        $t7, $at, .L800D1DE4
/* 8C5D4 800D1DD4 00000000 */   nop
/* 8C5D8 800D1DD8 240A0065 */  addiu      $t2, $zero, 0x65
/* 8C5DC 800D1DDC 10000003 */  b          .L800D1DEC
/* 8C5E0 800D1DE0 A3AA0037 */   sb        $t2, 0x37($sp)
.L800D1DE4:
/* 8C5E4 800D1DE4 24090045 */  addiu      $t1, $zero, 0x45
/* 8C5E8 800D1DE8 A3A90037 */  sb         $t1, 0x37($sp)
.L800D1DEC:
/* 8C5EC 800D1DEC 8FAB0030 */  lw         $t3, 0x30($sp)
/* 8C5F0 800D1DF0 8FAD0038 */  lw         $t5, 0x38($sp)
/* 8C5F4 800D1DF4 8D6E0008 */  lw         $t6, 0x8($t3)
/* 8C5F8 800D1DF8 8D790014 */  lw         $t9, 0x14($t3)
/* 8C5FC 800D1DFC 91A80000 */  lbu        $t0, 0x0($t5)
/* 8C600 800D1E00 01D96021 */  addu       $t4, $t6, $t9
/* 8C604 800D1E04 A1880000 */  sb         $t0, 0x0($t4)
/* 8C608 800D1E08 8FB80030 */  lw         $t8, 0x30($sp)
/* 8C60C 800D1E0C 8F0F0014 */  lw         $t7, 0x14($t8)
/* 8C610 800D1E10 25EA0001 */  addiu      $t2, $t7, 0x1
/* 8C614 800D1E14 AF0A0014 */  sw         $t2, 0x14($t8)
/* 8C618 800D1E18 8FA90038 */  lw         $t1, 0x38($sp)
/* 8C61C 800D1E1C 8FAB0030 */  lw         $t3, 0x30($sp)
/* 8C620 800D1E20 252D0001 */  addiu      $t5, $t1, 0x1
/* 8C624 800D1E24 AFAD0038 */  sw         $t5, 0x38($sp)
/* 8C628 800D1E28 8D6E0024 */  lw         $t6, 0x24($t3)
/* 8C62C 800D1E2C 1DC00005 */  bgtz       $t6, .L800D1E44
/* 8C630 800D1E30 00000000 */   nop
/* 8C634 800D1E34 8D790030 */  lw         $t9, 0x30($t3)
/* 8C638 800D1E38 33280008 */  andi       $t0, $t9, 0x8
/* 8C63C 800D1E3C 1100000B */  beqz       $t0, .L800D1E6C
/* 8C640 800D1E40 00000000 */   nop
.L800D1E44:
/* 8C644 800D1E44 8FAF0030 */  lw         $t7, 0x30($sp)
/* 8C648 800D1E48 93AC002F */  lbu        $t4, 0x2F($sp)
/* 8C64C 800D1E4C 8DEA0008 */  lw         $t2, 0x8($t7)
/* 8C650 800D1E50 8DF80014 */  lw         $t8, 0x14($t7)
/* 8C654 800D1E54 01584821 */  addu       $t1, $t2, $t8
/* 8C658 800D1E58 A12C0000 */  sb         $t4, 0x0($t1)
/* 8C65C 800D1E5C 8FAD0030 */  lw         $t5, 0x30($sp)
/* 8C660 800D1E60 8DAE0014 */  lw         $t6, 0x14($t5)
/* 8C664 800D1E64 25CB0001 */  addiu      $t3, $t6, 0x1
/* 8C668 800D1E68 ADAB0014 */  sw         $t3, 0x14($t5)
.L800D1E6C:
/* 8C66C 800D1E6C 8FB90030 */  lw         $t9, 0x30($sp)
/* 8C670 800D1E70 8F280024 */  lw         $t0, 0x24($t9)
/* 8C674 800D1E74 1900001C */  blez       $t0, .L800D1EE8
/* 8C678 800D1E78 00000000 */   nop
/* 8C67C 800D1E7C 87AF003E */  lh         $t7, 0x3E($sp)
/* 8C680 800D1E80 25EAFFFF */  addiu      $t2, $t7, -0x1
/* 8C684 800D1E84 A7AA003E */  sh         $t2, 0x3E($sp)
/* 8C688 800D1E88 8F380024 */  lw         $t8, 0x24($t9)
/* 8C68C 800D1E8C 000A6400 */  sll        $t4, $t2, 16
/* 8C690 800D1E90 000C4C03 */  sra        $t1, $t4, 16
/* 8C694 800D1E94 0309082A */  slt        $at, $t8, $t1
/* 8C698 800D1E98 10200002 */  beqz       $at, .L800D1EA4
/* 8C69C 800D1E9C 00000000 */   nop
/* 8C6A0 800D1EA0 A7B8003E */  sh         $t8, 0x3E($sp)
.L800D1EA4:
/* 8C6A4 800D1EA4 8FAE0030 */  lw         $t6, 0x30($sp)
/* 8C6A8 800D1EA8 8FA50038 */  lw         $a1, 0x38($sp)
/* 8C6AC 800D1EAC 87A6003E */  lh         $a2, 0x3E($sp)
/* 8C6B0 800D1EB0 8DCB0008 */  lw         $t3, 0x8($t6)
/* 8C6B4 800D1EB4 8DCD0014 */  lw         $t5, 0x14($t6)
/* 8C6B8 800D1EB8 0C034130 */  jal        func_800D04C0
/* 8C6BC 800D1EBC 016D2021 */   addu      $a0, $t3, $t5
/* 8C6C0 800D1EC0 8FA80030 */  lw         $t0, 0x30($sp)
/* 8C6C4 800D1EC4 87B9003E */  lh         $t9, 0x3E($sp)
/* 8C6C8 800D1EC8 8D0F0014 */  lw         $t7, 0x14($t0)
/* 8C6CC 800D1ECC 01F95021 */  addu       $t2, $t7, $t9
/* 8C6D0 800D1ED0 AD0A0014 */  sw         $t2, 0x14($t0)
/* 8C6D4 800D1ED4 8FAC0030 */  lw         $t4, 0x30($sp)
/* 8C6D8 800D1ED8 87B8003E */  lh         $t8, 0x3E($sp)
/* 8C6DC 800D1EDC 8D890024 */  lw         $t1, 0x24($t4)
/* 8C6E0 800D1EE0 01387023 */  subu       $t6, $t1, $t8
/* 8C6E4 800D1EE4 AD8E0018 */  sw         $t6, 0x18($t4)
.L800D1EE8:
/* 8C6E8 800D1EE8 8FAB0030 */  lw         $t3, 0x30($sp)
/* 8C6EC 800D1EEC 93AA0037 */  lbu        $t2, 0x37($sp)
/* 8C6F0 800D1EF0 8D6D0008 */  lw         $t5, 0x8($t3)
/* 8C6F4 800D1EF4 8D6F0014 */  lw         $t7, 0x14($t3)
/* 8C6F8 800D1EF8 01AFC821 */  addu       $t9, $t5, $t7
/* 8C6FC 800D1EFC AFB90038 */  sw         $t9, 0x38($sp)
/* 8C700 800D1F00 A32A0000 */  sb         $t2, 0x0($t9)
/* 8C704 800D1F04 8FA80038 */  lw         $t0, 0x38($sp)
/* 8C708 800D1F08 87B80042 */  lh         $t8, 0x42($sp)
/* 8C70C 800D1F0C 25090001 */  addiu      $t1, $t0, 0x1
/* 8C710 800D1F10 07000007 */  bltz       $t8, .L800D1F30
/* 8C714 800D1F14 AFA90038 */   sw        $t1, 0x38($sp)
/* 8C718 800D1F18 240E002B */  addiu      $t6, $zero, 0x2B
/* 8C71C 800D1F1C A12E0000 */  sb         $t6, 0x0($t1)
/* 8C720 800D1F20 8FAC0038 */  lw         $t4, 0x38($sp)
/* 8C724 800D1F24 258B0001 */  addiu      $t3, $t4, 0x1
/* 8C728 800D1F28 1000000A */  b          .L800D1F54
/* 8C72C 800D1F2C AFAB0038 */   sw        $t3, 0x38($sp)
.L800D1F30:
/* 8C730 800D1F30 8FAF0038 */  lw         $t7, 0x38($sp)
/* 8C734 800D1F34 240D002D */  addiu      $t5, $zero, 0x2D
/* 8C738 800D1F38 A1ED0000 */  sb         $t5, 0x0($t7)
/* 8C73C 800D1F3C 8FAA0038 */  lw         $t2, 0x38($sp)
/* 8C740 800D1F40 87A80042 */  lh         $t0, 0x42($sp)
/* 8C744 800D1F44 25590001 */  addiu      $t9, $t2, 0x1
/* 8C748 800D1F48 0008C023 */  negu       $t8, $t0
/* 8C74C 800D1F4C AFB90038 */  sw         $t9, 0x38($sp)
/* 8C750 800D1F50 A7B80042 */  sh         $t8, 0x42($sp)
.L800D1F54:
/* 8C754 800D1F54 87AE0042 */  lh         $t6, 0x42($sp)
/* 8C758 800D1F58 29C10064 */  slti       $at, $t6, 0x64
/* 8C75C 800D1F5C 1420001D */  bnez       $at, .L800D1FD4
/* 8C760 800D1F60 29C103E8 */   slti      $at, $t6, 0x3E8
/* 8C764 800D1F64 1420000D */  bnez       $at, .L800D1F9C
/* 8C768 800D1F68 240103E8 */   addiu     $at, $zero, 0x3E8
/* 8C76C 800D1F6C 01C1001A */  div        $zero, $t6, $at
/* 8C770 800D1F70 8FAB0038 */  lw         $t3, 0x38($sp)
/* 8C774 800D1F74 00004812 */  mflo       $t1
/* 8C778 800D1F78 252C0030 */  addiu      $t4, $t1, 0x30
/* 8C77C 800D1F7C A16C0000 */  sb         $t4, 0x0($t3)
/* 8C780 800D1F80 87AA0042 */  lh         $t2, 0x42($sp)
/* 8C784 800D1F84 8FAD0038 */  lw         $t5, 0x38($sp)
/* 8C788 800D1F88 0141001A */  div        $zero, $t2, $at
/* 8C78C 800D1F8C 0000C810 */  mfhi       $t9
/* 8C790 800D1F90 25AF0001 */  addiu      $t7, $t5, 0x1
/* 8C794 800D1F94 AFAF0038 */  sw         $t7, 0x38($sp)
/* 8C798 800D1F98 A7B90042 */  sh         $t9, 0x42($sp)
.L800D1F9C:
/* 8C79C 800D1F9C 87A80042 */  lh         $t0, 0x42($sp)
/* 8C7A0 800D1FA0 24010064 */  addiu      $at, $zero, 0x64
/* 8C7A4 800D1FA4 8FA90038 */  lw         $t1, 0x38($sp)
/* 8C7A8 800D1FA8 0101001A */  div        $zero, $t0, $at
/* 8C7AC 800D1FAC 0000C012 */  mflo       $t8
/* 8C7B0 800D1FB0 270E0030 */  addiu      $t6, $t8, 0x30
/* 8C7B4 800D1FB4 A12E0000 */  sb         $t6, 0x0($t1)
/* 8C7B8 800D1FB8 87AD0042 */  lh         $t5, 0x42($sp)
/* 8C7BC 800D1FBC 8FAC0038 */  lw         $t4, 0x38($sp)
/* 8C7C0 800D1FC0 01A1001A */  div        $zero, $t5, $at
/* 8C7C4 800D1FC4 00007810 */  mfhi       $t7
/* 8C7C8 800D1FC8 258B0001 */  addiu      $t3, $t4, 0x1
/* 8C7CC 800D1FCC AFAB0038 */  sw         $t3, 0x38($sp)
/* 8C7D0 800D1FD0 A7AF0042 */  sh         $t7, 0x42($sp)
.L800D1FD4:
/* 8C7D4 800D1FD4 87AA0042 */  lh         $t2, 0x42($sp)
/* 8C7D8 800D1FD8 2401000A */  addiu      $at, $zero, 0xA
/* 8C7DC 800D1FDC 8FB80038 */  lw         $t8, 0x38($sp)
/* 8C7E0 800D1FE0 0141001A */  div        $zero, $t2, $at
/* 8C7E4 800D1FE4 0000C812 */  mflo       $t9
/* 8C7E8 800D1FE8 27280030 */  addiu      $t0, $t9, 0x30
/* 8C7EC 800D1FEC A3080000 */  sb         $t0, 0x0($t8)
/* 8C7F0 800D1FF0 87AC0042 */  lh         $t4, 0x42($sp)
/* 8C7F4 800D1FF4 8FAE0038 */  lw         $t6, 0x38($sp)
/* 8C7F8 800D1FF8 0181001A */  div        $zero, $t4, $at
/* 8C7FC 800D1FFC 00005810 */  mfhi       $t3
/* 8C800 800D2000 000B6C00 */  sll        $t5, $t3, 16
/* 8C804 800D2004 000D7C03 */  sra        $t7, $t5, 16
/* 8C808 800D2008 25C90001 */  addiu      $t1, $t6, 0x1
/* 8C80C 800D200C AFA90038 */  sw         $t1, 0x38($sp)
/* 8C810 800D2010 A7AB0042 */  sh         $t3, 0x42($sp)
/* 8C814 800D2014 25EA0030 */  addiu      $t2, $t7, 0x30
/* 8C818 800D2018 A12A0000 */  sb         $t2, 0x0($t1)
/* 8C81C 800D201C 8FB90038 */  lw         $t9, 0x38($sp)
/* 8C820 800D2020 8FB80030 */  lw         $t8, 0x30($sp)
/* 8C824 800D2024 27280001 */  addiu      $t0, $t9, 0x1
/* 8C828 800D2028 AFA80038 */  sw         $t0, 0x38($sp)
/* 8C82C 800D202C 8F0C0014 */  lw         $t4, 0x14($t8)
/* 8C830 800D2030 8F0E0008 */  lw         $t6, 0x8($t8)
/* 8C834 800D2034 01CC5821 */  addu       $t3, $t6, $t4
/* 8C838 800D2038 010B6823 */  subu       $t5, $t0, $t3
/* 8C83C 800D203C AF0D001C */  sw         $t5, 0x1C($t8)
.L800D2040:
/* 8C840 800D2040 8FAF0030 */  lw         $t7, 0x30($sp)
/* 8C844 800D2044 24010010 */  addiu      $at, $zero, 0x10
/* 8C848 800D2048 8DEA0030 */  lw         $t2, 0x30($t7)
/* 8C84C 800D204C 31490014 */  andi       $t1, $t2, 0x14
/* 8C850 800D2050 15210012 */  bne        $t1, $at, .L800D209C
/* 8C854 800D2054 00000000 */   nop
/* 8C858 800D2058 8DF9000C */  lw         $t9, 0xC($t7)
/* 8C85C 800D205C 8DEE0014 */  lw         $t6, 0x14($t7)
/* 8C860 800D2060 8DE80018 */  lw         $t0, 0x18($t7)
/* 8C864 800D2064 8DED001C */  lw         $t5, 0x1C($t7)
/* 8C868 800D2068 8DEA0020 */  lw         $t2, 0x20($t7)
/* 8C86C 800D206C 032E6021 */  addu       $t4, $t9, $t6
/* 8C870 800D2070 01885821 */  addu       $t3, $t4, $t0
/* 8C874 800D2074 016DC021 */  addu       $t8, $t3, $t5
/* 8C878 800D2078 030A4821 */  addu       $t1, $t8, $t2
/* 8C87C 800D207C AFA90028 */  sw         $t1, 0x28($sp)
/* 8C880 800D2080 8DF90028 */  lw         $t9, 0x28($t7)
/* 8C884 800D2084 0139082A */  slt        $at, $t1, $t9
/* 8C888 800D2088 10200004 */  beqz       $at, .L800D209C
/* 8C88C 800D208C 00000000 */   nop
/* 8C890 800D2090 8DEE0028 */  lw         $t6, 0x28($t7)
/* 8C894 800D2094 01C96023 */  subu       $t4, $t6, $t1
/* 8C898 800D2098 ADEC0010 */  sw         $t4, 0x10($t7)
.L800D209C:
/* 8C89C 800D209C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 8C8A0 800D20A0 8FB00018 */  lw         $s0, 0x18($sp)
/* 8C8A4 800D20A4 27BD0030 */  addiu      $sp, $sp, 0x30
/* 8C8A8 800D20A8 03E00008 */  jr         $ra
/* 8C8AC 800D20AC 00000000 */   nop

# Handwritten function
glabel func_800D20B0
/* 8C8B0 800D20B0 40026800 */  mfc0       $v0, $13
/* 8C8B4 800D20B4 03E00008 */  jr         $ra
/* 8C8B8 800D20B8 00000000 */   nop
/* 8C8BC 800D20BC 00000000 */  nop

glabel func_800D20C0
/* 8C8C0 800D20C0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8C8C4 800D20C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8C8C8 800D20C8 0C032AB4 */  jal        __osDisableInt
/* 8C8CC 800D20CC AFA40020 */   sw        $a0, 0x20($sp)
/* 8C8D0 800D20D0 8FAE0020 */  lw         $t6, 0x20($sp)
/* 8C8D4 800D20D4 AFA2001C */  sw         $v0, 0x1C($sp)
/* 8C8D8 800D20D8 8DCF0000 */  lw         $t7, 0x0($t6)
/* 8C8DC 800D20DC 11E00006 */  beqz       $t7, .L800D20F8
/* 8C8E0 800D20E0 00000000 */   nop
/* 8C8E4 800D20E4 25F8FFFF */  addiu      $t8, $t7, -0x1
/* 8C8E8 800D20E8 ADD80000 */  sw         $t8, 0x0($t6)
/* 8C8EC 800D20EC 24190001 */  addiu      $t9, $zero, 0x1
/* 8C8F0 800D20F0 10000002 */  b          .L800D20FC
/* 8C8F4 800D20F4 AFB90018 */   sw        $t9, 0x18($sp)
.L800D20F8:
/* 8C8F8 800D20F8 AFA00018 */  sw         $zero, 0x18($sp)
.L800D20FC:
/* 8C8FC 800D20FC 0C032ABC */  jal        __osRestoreInt
/* 8C900 800D2100 8FA4001C */   lw        $a0, 0x1C($sp)
/* 8C904 800D2104 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8C908 800D2108 8FA20018 */  lw         $v0, 0x18($sp)
/* 8C90C 800D210C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8C910 800D2110 03E00008 */  jr         $ra
/* 8C914 800D2114 00000000 */   nop
/* 8C918 800D2118 00000000 */  nop
/* 8C91C 800D211C 00000000 */  nop

glabel func_800D2120
/* 8C920 800D2120 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 8C924 800D2124 AFA40030 */  sw         $a0, 0x30($sp)
/* 8C928 800D2128 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8C92C 800D212C AFA60038 */  sw         $a2, 0x38($sp)
/* 8C930 800D2130 AFA7003C */  sw         $a3, 0x3C($sp)
/* 8C934 800D2134 00C02025 */  or         $a0, $a2, $zero
/* 8C938 800D2138 00E02825 */  or         $a1, $a3, $zero
/* 8C93C 800D213C 8FA70044 */  lw         $a3, 0x44($sp)
/* 8C940 800D2140 0C03321B */  jal        func_800CC86C
/* 8C944 800D2144 8FA60040 */   lw        $a2, 0x40($sp)
/* 8C948 800D2148 AFA20020 */  sw         $v0, 0x20($sp)
/* 8C94C 800D214C AFA30024 */  sw         $v1, 0x24($sp)
/* 8C950 800D2150 8FA40040 */  lw         $a0, 0x40($sp)
/* 8C954 800D2154 8FA50044 */  lw         $a1, 0x44($sp)
/* 8C958 800D2158 00403025 */  or         $a2, $v0, $zero
/* 8C95C 800D215C 0C033232 */  jal        func_800CC8C8
/* 8C960 800D2160 00603825 */   or        $a3, $v1, $zero
/* 8C964 800D2164 8FAE0038 */  lw         $t6, 0x38($sp)
/* 8C968 800D2168 8FAF003C */  lw         $t7, 0x3C($sp)
/* 8C96C 800D216C 8FA80020 */  lw         $t0, 0x20($sp)
/* 8C970 800D2170 01C2C023 */  subu       $t8, $t6, $v0
/* 8C974 800D2174 01E3082B */  sltu       $at, $t7, $v1
/* 8C978 800D2178 0301C023 */  subu       $t8, $t8, $at
/* 8C97C 800D217C 01E3C823 */  subu       $t9, $t7, $v1
/* 8C980 800D2180 AFB9002C */  sw         $t9, 0x2C($sp)
/* 8C984 800D2184 AFB80028 */  sw         $t8, 0x28($sp)
/* 8C988 800D2188 1D000017 */  bgtz       $t0, .L800D21E8
/* 8C98C 800D218C 8FA90024 */   lw        $t1, 0x24($sp)
/* 8C990 800D2190 05000003 */  bltz       $t0, .L800D21A0
/* 8C994 800D2194 00000000 */   nop
/* 8C998 800D2198 10000014 */  b          .L800D21EC
/* 8C99C 800D219C 27A80020 */   addiu     $t0, $sp, 0x20
.L800D21A0:
/* 8C9A0 800D21A0 07020012 */  bltzl      $t8, .L800D21EC
/* 8C9A4 800D21A4 27A80020 */   addiu     $t0, $sp, 0x20
/* 8C9A8 800D21A8 1F000003 */  bgtz       $t8, .L800D21B8
/* 8C9AC 800D21AC 252B0001 */   addiu     $t3, $t1, 0x1
/* 8C9B0 800D21B0 5320000E */  beql       $t9, $zero, .L800D21EC
/* 8C9B4 800D21B4 27A80020 */   addiu     $t0, $sp, 0x20
.L800D21B8:
/* 8C9B8 800D21B8 8FAC0040 */  lw         $t4, 0x40($sp)
/* 8C9BC 800D21BC 8FAD0044 */  lw         $t5, 0x44($sp)
/* 8C9C0 800D21C0 2D610001 */  sltiu      $at, $t3, 0x1
/* 8C9C4 800D21C4 01015021 */  addu       $t2, $t0, $at
/* 8C9C8 800D21C8 030C7023 */  subu       $t6, $t8, $t4
/* 8C9CC 800D21CC 032D082B */  sltu       $at, $t9, $t5
/* 8C9D0 800D21D0 01C17023 */  subu       $t6, $t6, $at
/* 8C9D4 800D21D4 032D7823 */  subu       $t7, $t9, $t5
/* 8C9D8 800D21D8 AFAA0020 */  sw         $t2, 0x20($sp)
/* 8C9DC 800D21DC AFAB0024 */  sw         $t3, 0x24($sp)
/* 8C9E0 800D21E0 AFAF002C */  sw         $t7, 0x2C($sp)
/* 8C9E4 800D21E4 AFAE0028 */  sw         $t6, 0x28($sp)
.L800D21E8:
/* 8C9E8 800D21E8 27A80020 */  addiu      $t0, $sp, 0x20
.L800D21EC:
/* 8C9EC 800D21EC 8FA20030 */  lw         $v0, 0x30($sp)
/* 8C9F0 800D21F0 8D010000 */  lw         $at, 0x0($t0)
/* 8C9F4 800D21F4 AC410000 */  sw         $at, 0x0($v0)
/* 8C9F8 800D21F8 8D0B0004 */  lw         $t3, 0x4($t0)
/* 8C9FC 800D21FC AC4B0004 */  sw         $t3, 0x4($v0)
/* 8CA00 800D2200 8D010008 */  lw         $at, 0x8($t0)
/* 8CA04 800D2204 AC410008 */  sw         $at, 0x8($v0)
/* 8CA08 800D2208 8D0B000C */  lw         $t3, 0xC($t0)
/* 8CA0C 800D220C AC4B000C */  sw         $t3, 0xC($v0)
/* 8CA10 800D2210 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8CA14 800D2214 27BD0030 */  addiu      $sp, $sp, 0x30
/* 8CA18 800D2218 03E00008 */  jr         $ra
/* 8CA1C 800D221C 00000000 */   nop

glabel func_800D2220
/* 8CA20 800D2220 00A6001A */  div        $zero, $a1, $a2
/* 8CA24 800D2224 00001012 */  mflo       $v0
/* 8CA28 800D2228 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 8CA2C 800D222C 14C00002 */  bnez       $a2, .L800D2238
/* 8CA30 800D2230 00000000 */   nop
/* 8CA34 800D2234 0007000D */  break      7
.L800D2238:
/* 8CA38 800D2238 2401FFFF */  addiu      $at, $zero, -0x1
/* 8CA3C 800D223C 14C10004 */  bne        $a2, $at, .L800D2250
/* 8CA40 800D2240 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 8CA44 800D2244 14A10002 */  bne        $a1, $at, .L800D2250
/* 8CA48 800D2248 00000000 */   nop
/* 8CA4C 800D224C 0006000D */  break      6
.L800D2250:
/* 8CA50 800D2250 00C20019 */  multu      $a2, $v0
/* 8CA54 800D2254 AFA20000 */  sw         $v0, 0x0($sp)
/* 8CA58 800D2258 27AF0000 */  addiu      $t7, $sp, 0x0
/* 8CA5C 800D225C 00007012 */  mflo       $t6
/* 8CA60 800D2260 00AE1823 */  subu       $v1, $a1, $t6
/* 8CA64 800D2264 04410008 */  bgez       $v0, .L800D2288
/* 8CA68 800D2268 AFA30004 */   sw        $v1, 0x4($sp)
/* 8CA6C 800D226C AFA20000 */  sw         $v0, 0x0($sp)
/* 8CA70 800D2270 18600005 */  blez       $v1, .L800D2288
/* 8CA74 800D2274 AFA30004 */   sw        $v1, 0x4($sp)
/* 8CA78 800D2278 24420001 */  addiu      $v0, $v0, 0x1
/* 8CA7C 800D227C 00661823 */  subu       $v1, $v1, $a2
/* 8CA80 800D2280 AFA30004 */  sw         $v1, 0x4($sp)
/* 8CA84 800D2284 AFA20000 */  sw         $v0, 0x0($sp)
.L800D2288:
/* 8CA88 800D2288 8DE10000 */  lw         $at, 0x0($t7)
/* 8CA8C 800D228C 00801025 */  or         $v0, $a0, $zero
/* 8CA90 800D2290 AC810000 */  sw         $at, 0x0($a0)
/* 8CA94 800D2294 8DE80004 */  lw         $t0, 0x4($t7)
/* 8CA98 800D2298 27BD0008 */  addiu      $sp, $sp, 0x8
/* 8CA9C 800D229C 03E00008 */  jr         $ra
/* 8CAA0 800D22A0 AC880004 */   sw        $t0, 0x4($a0)
/* 8CAA4 800D22A4 00000000 */  nop
/* 8CAA8 800D22A8 00000000 */  nop
/* 8CAAC 800D22AC 00000000 */  nop

# Handwritten function
glabel func_800D22B0
/* 8CAB0 800D22B0 34210001 */  ori        $at, $at, 0x1
/* 8CAB4 800D22B4 0900041A */  j          func_84001068
/* 8CAB8 800D22B8 20010FC0 */   addi      $at, $zero, 0xFC0

# Handwritten function
glabel func_800D22BC
/* 8CABC 800D22BC 8C220010 */  lw         $v0, 0x10($at)
/* 8CAC0 800D22C0 20030F7F */  addi       $v1, $zero, 0xF7F
/* 8CAC4 800D22C4 20071080 */  addi       $a3, $zero, 0x1080
/* 8CAC8 800D22C8 40870000 */  mtc0       $a3, $0
/* 8CACC 800D22CC 40820800 */  mtc0       $v0, $1
/* 8CAD0 800D22D0 40831000 */  mtc0       $v1, $2
.L800D22D4:
/* 8CAD4 800D22D4 40043000 */  mfc0       $a0, $6
/* 8CAD8 800D22D8 1480FFFE */  bnez       $a0, .L800D22D4
/* 8CADC 800D22DC 00000000 */   nop
/* 8CAE0 800D22E0 0D000410 */  jal        func_84001040
/* 8CAE4 800D22E4 00000000 */   nop
/* 8CAE8 800D22E8 00E00008 */  jr         $a3
/* 8CAEC 800D22EC 40803800 */   mtc0      $zero, $7
.L800D22F0:
/* 8CAF0 800D22F0 40082000 */  mfc0       $t0, $4
/* 8CAF4 800D22F4 31080080 */  andi       $t0, $t0, 0x80
/* 8CAF8 800D22F8 15000002 */  bnez       $t0, .L800D2304
/* 8CAFC 800D22FC 00000000 */   nop
/* 8CB00 800D2300 03E00008 */  jr         $ra
.L800D2304:
/* 8CB04 800D2304 40803800 */   mtc0      $zero, $7
/* 8CB08 800D2308 34085200 */  ori        $t0, $zero, 0x5200
/* 8CB0C 800D230C 40882000 */  mtc0       $t0, $4
/* 8CB10 800D2310 0000000D */  break      0
/* 8CB14 800D2314 00000000 */  nop
/* 8CB18 800D2318 8C220004 */  lw         $v0, 0x4($at)
/* 8CB1C 800D231C 30420002 */  andi       $v0, $v0, 0x2
/* 8CB20 800D2320 10400007 */  beqz       $v0, .L800D2340
/* 8CB24 800D2324 00000000 */   nop
/* 8CB28 800D2328 0D000410 */  jal        func_84001040
/* 8CB2C 800D232C 00000000 */   nop
/* 8CB30 800D2330 40025800 */  mfc0       $v0, $11
/* 8CB34 800D2334 30420100 */  andi       $v0, $v0, 0x100
/* 8CB38 800D2338 1C40FFED */  bgtz       $v0, .L800D22F0
/* 8CB3C 800D233C 00000000 */   nop
.L800D2340:
/* 8CB40 800D2340 8C220018 */  lw         $v0, 0x18($at)
/* 8CB44 800D2344 8C23001C */  lw         $v1, 0x1C($at)
/* 8CB48 800D2348 2063FFFF */  addi       $v1, $v1, -0x1
.L800D234C:
/* 8CB4C 800D234C 401E2800 */  mfc0       $fp, $5
/* 8CB50 800D2350 17C0FFFE */  bnez       $fp, .L800D234C
/* 8CB54 800D2354 00000000 */   nop
/* 8CB58 800D2358 40800000 */  mtc0       $zero, $0
/* 8CB5C 800D235C 40820800 */  mtc0       $v0, $1
/* 8CB60 800D2360 40831000 */  mtc0       $v1, $2
.L800D2364:
/* 8CB64 800D2364 40043000 */  mfc0       $a0, $6
/* 8CB68 800D2368 1480FFFE */  bnez       $a0, .L800D2364
/* 8CB6C 800D236C 00000000 */   nop
/* 8CB70 800D2370 0D000410 */  jal        func_84001040
/* 8CB74 800D2374 00000000 */   nop
/* 8CB78 800D2378 09000403 */  j          func_8400100C
/* 8CB7C 800D237C 00000000 */   nop

# Handwritten function
glabel func_800D2380
/* 8CB80 800D2380 090005F8 */  j          func_840017E0
/* 8CB84 800D2384 201D0110 */   addi      $sp, $zero, 0x110

# Handwritten function
glabel func_800D2388
/* 8CB88 800D2388 0D00044F */  jal        func_8400113C
/* 8CB8C 800D238C 0016A020 */   add       $s4, $zero, $s6
/* 8CB90 800D2390 842200BC */  lh         $v0, 0xBC($at)
/* 8CB94 800D2394 00400008 */  jr         $v0
/* 8CB98 800D2398 001915C2 */   srl       $v0, $t9, 23
/* 8CB9C 800D239C 40022000 */  mfc0       $v0, $4
/* 8CBA0 800D23A0 30420080 */  andi       $v0, $v0, 0x80
/* 8CBA4 800D23A4 14400006 */  bnez       $v0, .L800D23C0
/* 8CBA8 800D23A8 84150026 */   lh        $s5, 0x26($zero)
/* 8CBAC 800D23AC 179BFFED */  bne        $gp, $k1, .L800D2364
/* 8CBB0 800D23B0 8F790000 */   lw        $t9, 0x0($k1)
/* 8CBB4 800D23B4 09000432 */  j          func_840010C8
/* 8CBB8 800D23B8 841F0104 */   lh        $ra, 0x104($zero)
/* 8CBBC 800D23BC 841500B6 */  lh         $s5, 0xB6($zero)
.L800D23C0:
/* 8CBC0 800D23C0 0900043C */  j          func_840010F0
/* 8CBC4 800D23C4 341E0020 */   ori       $fp, $zero, 0x20

# Handwritten function
glabel func_800D23C8
/* 8CBC8 800D23C8 201C0A60 */  addi       $gp, $zero, 0xA60
/* 8CBCC 800D23CC 001FA820 */  add        $s5, $zero, $ra
/* 8CBD0 800D23D0 20140920 */  addi       $s4, $zero, 0x920
/* 8CBD4 800D23D4 001A9820 */  add        $s3, $zero, $k0
/* 8CBD8 800D23D8 235A0140 */  addi       $k0, $k0, 0x140
/* 8CBDC 800D23DC 0D00044F */  jal        func_8400113C
/* 8CBE0 800D23E0 2012013F */   addi      $s2, $zero, 0x13F
/* 8CBE4 800D23E4 02A00008 */  jr         $s5
/* 8CBE8 800D23E8 201B0920 */   addi      $k1, $zero, 0x920
/* 8CBEC 800D23EC 001FA820 */  add        $s5, $zero, $ra
/* 8CBF0 800D23F0 8FD30000 */  lw         $s3, 0x0($fp)
/* 8CBF4 800D23F4 87D20004 */  lh         $s2, 0x4($fp)
/* 8CBF8 800D23F8 0D00044F */  jal        func_8400113C
/* 8CBFC 800D23FC 87D40006 */   lh        $s4, 0x6($fp)
/* 8CC00 800D2400 0D00044B */  jal        func_8400112C
/* 8CC04 800D2404 00000000 */   nop
/* 8CC08 800D2408 02A00008 */  jr         $s5
/* 8CC0C 800D240C 8C0B00B8 */   lw        $t3, 0xB8($zero)
/* 8CC10 800D2410 00136582 */  srl        $t4, $s3, 22
/* 8CC14 800D2414 318C003C */  andi       $t4, $t4, 0x3C
/* 8CC18 800D2418 026B9824 */  and        $s3, $s3, $t3
/* 8CC1C 800D241C 000C6820 */  add        $t5, $zero, $t4
/* 8CC20 800D2420 8DAC0160 */  lw         $t4, 0x160($t5)
/* 8CC24 800D2424 03E00008 */  jr         $ra
/* 8CC28 800D2428 026C9820 */   add       $s3, $s3, $t4

# Handwritten function
glabel func_800D242C
/* 8CC2C 800D242C 400B3000 */  mfc0       $t3, $6
/* 8CC30 800D2430 1560FFFE */  bnez       $t3, func_800D242C
/* 8CC34 800D2434 00000000 */   nop
/* 8CC38 800D2438 03E00008 */  jr         $ra
/* 8CC3C 800D243C 00008820 */   add       $s1, $zero, $zero

# Handwritten function
glabel func_800D2440
/* 8CC40 800D2440 400B2800 */  mfc0       $t3, $5
/* 8CC44 800D2444 1560FFFE */  bnez       $t3, func_800D2440
/* 8CC48 800D2448 00000000 */   nop
/* 8CC4C 800D244C 40940000 */  mtc0       $s4, $0
/* 8CC50 800D2450 1E200003 */  bgtz       $s1, .L800D2460
/* 8CC54 800D2454 40930800 */   mtc0      $s3, $1
/* 8CC58 800D2458 03E00008 */  jr         $ra
/* 8CC5C 800D245C 40921000 */   mtc0      $s2, $2
.L800D2460:
/* 8CC60 800D2460 03E00008 */  jr         $ra
/* 8CC64 800D2464 40921800 */   mtc0      $s2, $3

# Handwritten function
glabel func_800D2468
/* 8CC68 800D2468 001FA820 */  add        $s5, $zero, $ra
/* 8CC6C 800D246C 8FB30018 */  lw         $s3, 0x18($sp)
/* 8CC70 800D2470 22F2F3A0 */  addi       $s2, $s7, -0xC60
/* 8CC74 800D2474 8FB70044 */  lw         $s7, 0x44($sp)
/* 8CC78 800D2478 1A40001A */  blez       $s2, .L800D24E4
/* 8CC7C 800D247C 0272A020 */   add       $s4, $s3, $s2
/* 8CC80 800D2480 02F4A022 */  sub        $s4, $s7, $s4
/* 8CC84 800D2484 06810008 */  bgez       $s4, .L800D24A8
.L800D2488:
/* 8CC88 800D2488 40145800 */   mfc0      $s4, $11
/* 8CC8C 800D248C 32940400 */  andi       $s4, $s4, 0x400
/* 8CC90 800D2490 1680FFFD */  bnez       $s4, .L800D2488
.L800D2494:
/* 8CC94 800D2494 40175000 */   mfc0      $s7, $10
/* 8CC98 800D2498 8FB30040 */  lw         $s3, 0x40($sp)
/* 8CC9C 800D249C 12F3FFFD */  beq        $s7, $s3, .L800D2494
/* 8CCA0 800D24A0 00000000 */   nop
/* 8CCA4 800D24A4 40934000 */  mtc0       $s3, $8
.L800D24A8:
/* 8CCA8 800D24A8 40175000 */  mfc0       $s7, $10
/* 8CCAC 800D24AC 0277A022 */  sub        $s4, $s3, $s7
/* 8CCB0 800D24B0 06810004 */  bgez       $s4, .L800D24C4
/* 8CCB4 800D24B4 0272A020 */   add       $s4, $s3, $s2
/* 8CCB8 800D24B8 0297A022 */  sub        $s4, $s4, $s7
/* 8CCBC 800D24BC 0681FFFA */  bgez       $s4, .L800D24A8
/* 8CCC0 800D24C0 00000000 */   nop
.L800D24C4:
/* 8CCC4 800D24C4 0272B820 */  add        $s7, $s3, $s2
/* 8CCC8 800D24C8 2252FFFF */  addi       $s2, $s2, -0x1
/* 8CCCC 800D24CC 20140C60 */  addi       $s4, $zero, 0xC60
/* 8CCD0 800D24D0 0D000450 */  jal        func_84001140
/* 8CCD4 800D24D4 20110001 */   addi      $s1, $zero, 0x1
/* 8CCD8 800D24D8 0D00044B */  jal        func_8400112C
/* 8CCDC 800D24DC AFB70018 */   sw        $s7, 0x18($sp)
/* 8CCE0 800D24E0 40974800 */  mtc0       $s7, $9
.L800D24E4:
/* 8CCE4 800D24E4 02A00008 */  jr         $s5
/* 8CCE8 800D24E8 20170C60 */   addi      $s7, $zero, 0xC60
/* 8CCEC 800D24EC 304200FE */  andi       $v0, $v0, 0xFE
/* 8CCF0 800D24F0 84420076 */  lh         $v0, 0x76($v0)
/* 8CCF4 800D24F4 00400008 */  jr         $v0
/* 8CCF8 800D24F8 9361FFFF */   lbu       $at, -0x1($k1)
/* 8CCFC 800D24FC 0D0004A2 */  jal        func_84001288
/* 8CD00 800D2500 9364FFFC */   lbu       $a0, -0x4($k1)
/* 8CD04 800D2504 000420C0 */  sll        $a0, $a0, 3
/* 8CD08 800D2508 20840420 */  addi       $a0, $a0, 0x420
/* 8CD0C 800D250C 8425001A */  lh         $a1, 0x1A($at)
/* 8CD10 800D2510 8446001A */  lh         $a2, 0x1A($v0)
/* 8CD14 800D2514 8467001A */  lh         $a3, 0x1A($v1)
/* 8CD18 800D2518 8488001A */  lh         $t0, 0x1A($a0)
/* 8CD1C 800D251C 00A72822 */  sub        $a1, $a1, $a3
/* 8CD20 800D2520 1CA00002 */  bgtz       $a1, .L800D252C
/* 8CD24 800D2524 00C83022 */   sub       $a2, $a2, $t0
/* 8CD28 800D2528 00052822 */  sub        $a1, $zero, $a1
.L800D252C:
/* 8CD2C 800D252C 1CC00002 */  bgtz       $a2, .L800D2538
/* 8CD30 800D2530 00000000 */   nop
/* 8CD34 800D2534 00063022 */  sub        $a2, $zero, $a2
.L800D2538:
/* 8CD38 800D2538 00C53022 */  sub        $a2, $a2, $a1
/* 8CD3C 800D253C 1CC00005 */  bgtz       $a2, .L800D2554
/* 8CD40 800D2540 20250000 */   addi      $a1, $at, 0x0
/* 8CD44 800D2544 20410000 */  addi       $at, $v0, 0x0
/* 8CD48 800D2548 20620000 */  addi       $v0, $v1, 0x0
/* 8CD4C 800D254C 20830000 */  addi       $v1, $a0, 0x0
/* 8CD50 800D2550 20A40000 */  addi       $a0, $a1, 0x0
.L800D2554:
/* 8CD54 800D2554 AC030A60 */  sw         $v1, 0xA60($zero)
/* 8CD58 800D2558 AC040A64 */  sw         $a0, 0xA64($zero)
/* 8CD5C 800D255C AC010A68 */  sw         $at, 0xA68($zero)
/* 8CD60 800D2560 0D00067A */  jal        func_840019E8
/* 8CD64 800D2564 23FE0000 */   addi      $fp, $ra, 0x0
/* 8CD68 800D2568 8C010A60 */  lw         $at, 0xA60($zero)
/* 8CD6C 800D256C 8C020A64 */  lw         $v0, 0xA64($zero)
/* 8CD70 800D2570 090004A0 */  j          func_84001280
/* 8CD74 800D2574 8C030A68 */   lw        $v1, 0xA68($zero)

# Handwritten function
glabel func_800D2578
/* 8CD78 800D2578 0D0004A2 */  jal        func_84001288
/* 8CD7C 800D257C 00000000 */   nop
/* 8CD80 800D2580 0900067A */  j          func_840019E8
/* 8CD84 800D2584 841E00BE */   lh        $fp, 0xBE($zero)

# Handwritten function
glabel func_800D2588
/* 8CD88 800D2588 9361FFFD */  lbu        $at, -0x3($k1)
/* 8CD8C 800D258C 9362FFFE */  lbu        $v0, -0x2($k1)
/* 8CD90 800D2590 9363FFFF */  lbu        $v1, -0x1($k1)
/* 8CD94 800D2594 000108C0 */  sll        $at, $at, 3
/* 8CD98 800D2598 000210C0 */  sll        $v0, $v0, 3
/* 8CD9C 800D259C 000318C0 */  sll        $v1, $v1, 3
/* 8CDA0 800D25A0 20210420 */  addi       $at, $at, 0x420
/* 8CDA4 800D25A4 20420420 */  addi       $v0, $v0, 0x420
/* 8CDA8 800D25A8 03E00008 */  jr         $ra
/* 8CDAC 800D25AC 20630420 */   addi      $v1, $v1, 0x420
