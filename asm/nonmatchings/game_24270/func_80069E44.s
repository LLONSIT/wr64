glabel func_80069E44
/* 24644 80069E44 8C820000 */  lw         $v0, 0x0($a0)
/* 24648 80069E48 3C03801B */  lui        $v1, %hi(D_801AE9DC)
/* 2464C 80069E4C 3C0E801B */  lui        $t6, %hi(D_801AE9E0)
/* 24650 80069E50 1040000E */  beqz       $v0, .L80069E8C
/* 24654 80069E54 2463E9DC */   addiu     $v1, $v1, %lo(D_801AE9DC)
/* 24658 80069E58 8DCEE9E0 */  lw         $t6, %lo(D_801AE9E0)($t6)
/* 2465C 80069E5C 55C2000C */  bnel       $t6, $v0, .L80069E90
/* 24660 80069E60 AC600000 */   sw        $zero, 0x0($v1)
/* 24664 80069E64 3C03801B */  lui        $v1, %hi(D_801AE9DC)
/* 24668 80069E68 2463E9DC */  addiu      $v1, $v1, %lo(D_801AE9DC)
/* 2466C 80069E6C 8C6F0000 */  lw         $t7, 0x0($v1)
/* 24670 80069E70 25E20001 */  addiu      $v0, $t7, 0x1
/* 24674 80069E74 28410259 */  slti       $at, $v0, 0x259
/* 24678 80069E78 14200006 */  bnez       $at, .L80069E94
/* 2467C 80069E7C AC620000 */   sw        $v0, 0x0($v1)
/* 24680 80069E80 24020258 */  addiu      $v0, $zero, 0x258
/* 24684 80069E84 10000003 */  b          .L80069E94
/* 24688 80069E88 AC620000 */   sw        $v0, 0x0($v1)
.L80069E8C:
/* 2468C 80069E8C AC600000 */  sw         $zero, 0x0($v1)
.L80069E90:
/* 24690 80069E90 00001025 */  or         $v0, $zero, $zero
.L80069E94:
/* 24694 80069E94 28410018 */  slti       $at, $v0, 0x18
/* 24698 80069E98 1420000C */  bnez       $at, .L80069ECC
/* 2469C 80069E9C 3C05801B */   lui       $a1, %hi(D_801AE9E4)
/* 246A0 80069EA0 04410004 */  bgez       $v0, .L80069EB4
/* 246A4 80069EA4 304B0007 */   andi      $t3, $v0, 0x7
/* 246A8 80069EA8 11600002 */  beqz       $t3, .L80069EB4
/* 246AC 80069EAC 00000000 */   nop
/* 246B0 80069EB0 256BFFF8 */  addiu      $t3, $t3, -0x8
.L80069EB4:
/* 246B4 80069EB4 55600006 */  bnel       $t3, $zero, .L80069ED0
/* 246B8 80069EB8 8C8D0004 */   lw        $t5, 0x4($a0)
/* 246BC 80069EBC 8C8C0000 */  lw         $t4, 0x0($a0)
/* 246C0 80069EC0 3C01801B */  lui        $at, %hi(D_801AE9D8)
/* 246C4 80069EC4 10000004 */  b          .L80069ED8
/* 246C8 80069EC8 AC2CE9D8 */   sw        $t4, %lo(D_801AE9D8)($at)
.L80069ECC:
/* 246CC 80069ECC 8C8D0004 */  lw         $t5, 0x4($a0)
.L80069ED0:
/* 246D0 80069ED0 3C01801B */  lui        $at, %hi(D_801AE9D8)
/* 246D4 80069ED4 AC2DE9D8 */  sw         $t5, %lo(D_801AE9D8)($at)
.L80069ED8:
/* 246D8 80069ED8 8C8E0000 */  lw         $t6, 0x0($a0)
/* 246DC 80069EDC 3C01BF00 */  lui        $at, (0xBF000000 >> 16)
/* 246E0 80069EE0 44811000 */  mtc1       $at, $f2
/* 246E4 80069EE4 3C01801B */  lui        $at, %hi(D_801AE9E0)
/* 246E8 80069EE8 AC2EE9E0 */  sw         $t6, %lo(D_801AE9E0)($at)
/* 246EC 80069EEC C4800014 */  lwc1       $f0, 0x14($a0)
/* 246F0 80069EF0 24A5E9E4 */  addiu      $a1, $a1, %lo(D_801AE9E4)
/* 246F4 80069EF4 240FFFFF */  addiu      $t7, $zero, -0x1
/* 246F8 80069EF8 4602003E */  c.le.s     $f0, $f2
/* 246FC 80069EFC 00000000 */  nop
/* 24700 80069F00 45020004 */  bc1fl      .L80069F14
/* 24704 80069F04 3C013F00 */   lui       $at, (0x3F000000 >> 16)
/* 24708 80069F08 1000000F */  b          .L80069F48
/* 2470C 80069F0C ACAF0000 */   sw        $t7, 0x0($a1)
/* 24710 80069F10 3C013F00 */  lui        $at, (0x3F000000 >> 16)
.L80069F14:
/* 24714 80069F14 44812000 */  mtc1       $at, $f4
/* 24718 80069F18 00000000 */  nop
/* 2471C 80069F1C 4600203E */  c.le.s     $f4, $f0
/* 24720 80069F20 00000000 */  nop
/* 24724 80069F24 45000005 */  bc1f       .L80069F3C
/* 24728 80069F28 3C05801B */   lui       $a1, %hi(D_801AE9E4)
/* 2472C 80069F2C 24A5E9E4 */  addiu      $a1, $a1, %lo(D_801AE9E4)
/* 24730 80069F30 24180001 */  addiu      $t8, $zero, 0x1
/* 24734 80069F34 10000004 */  b          .L80069F48
/* 24738 80069F38 ACB80000 */   sw        $t8, 0x0($a1)
.L80069F3C:
/* 2473C 80069F3C 3C05801B */  lui        $a1, %hi(D_801AE9E4)
/* 24740 80069F40 24A5E9E4 */  addiu      $a1, $a1, %lo(D_801AE9E4)
/* 24744 80069F44 ACA00000 */  sw         $zero, 0x0($a1)
.L80069F48:
/* 24748 80069F48 C4800018 */  lwc1       $f0, 0x18($a0)
/* 2474C 80069F4C 4602003E */  c.le.s     $f0, $f2
/* 24750 80069F50 00000000 */  nop
/* 24754 80069F54 45000005 */  bc1f       .L80069F6C
/* 24758 80069F58 3C06801B */   lui       $a2, %hi(D_801AE9E8)
/* 2475C 80069F5C 24C6E9E8 */  addiu      $a2, $a2, %lo(D_801AE9E8)
/* 24760 80069F60 2419FFFF */  addiu      $t9, $zero, -0x1
/* 24764 80069F64 1000000F */  b          .L80069FA4
/* 24768 80069F68 ACD90000 */   sw        $t9, 0x0($a2)
.L80069F6C:
/* 2476C 80069F6C 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 24770 80069F70 44813000 */  mtc1       $at, $f6
/* 24774 80069F74 00000000 */  nop
/* 24778 80069F78 4600303E */  c.le.s     $f6, $f0
/* 2477C 80069F7C 00000000 */  nop
/* 24780 80069F80 45000005 */  bc1f       .L80069F98
/* 24784 80069F84 3C06801B */   lui       $a2, %hi(D_801AE9E8)
/* 24788 80069F88 24C6E9E8 */  addiu      $a2, $a2, %lo(D_801AE9E8)
/* 2478C 80069F8C 240B0001 */  addiu      $t3, $zero, 0x1
/* 24790 80069F90 10000004 */  b          .L80069FA4
/* 24794 80069F94 ACCB0000 */   sw        $t3, 0x0($a2)
.L80069F98:
/* 24798 80069F98 3C06801B */  lui        $a2, %hi(D_801AE9E8)
/* 2479C 80069F9C 24C6E9E8 */  addiu      $a2, $a2, %lo(D_801AE9E8)
/* 247A0 80069FA0 ACC00000 */  sw         $zero, 0x0($a2)
.L80069FA4:
/* 247A4 80069FA4 3C07801B */  lui        $a3, %hi(D_801AEA04)
/* 247A8 80069FA8 24E7EA04 */  addiu      $a3, $a3, %lo(D_801AEA04)
/* 247AC 80069FAC 8CE20000 */  lw         $v0, 0x0($a3)
/* 247B0 80069FB0 8CA30000 */  lw         $v1, 0x0($a1)
/* 247B4 80069FB4 3C09801B */  lui        $t1, %hi(D_801AEA08)
/* 247B8 80069FB8 2529EA08 */  addiu      $t1, $t1, %lo(D_801AEA08)
/* 247BC 80069FBC 10430004 */  beq        $v0, $v1, .L80069FD0
/* 247C0 80069FC0 3C08801B */   lui       $t0, %hi(D_801AE9EC)
/* 247C4 80069FC4 2508E9EC */  addiu      $t0, $t0, %lo(D_801AE9EC)
/* 247C8 80069FC8 10000004 */  b          .L80069FDC
/* 247CC 80069FCC AD030000 */   sw        $v1, 0x0($t0)
.L80069FD0:
/* 247D0 80069FD0 3C08801B */  lui        $t0, %hi(D_801AE9EC)
/* 247D4 80069FD4 2508E9EC */  addiu      $t0, $t0, %lo(D_801AE9EC)
/* 247D8 80069FD8 AD000000 */  sw         $zero, 0x0($t0)
.L80069FDC:
/* 247DC 80069FDC 8D240000 */  lw         $a0, 0x0($t1)
/* 247E0 80069FE0 8CC50000 */  lw         $a1, 0x0($a2)
/* 247E4 80069FE4 10850004 */  beq        $a0, $a1, .L80069FF8
/* 247E8 80069FE8 3C06801B */   lui       $a2, %hi(D_801AE9F0)
/* 247EC 80069FEC 24C6E9F0 */  addiu      $a2, $a2, %lo(D_801AE9F0)
/* 247F0 80069FF0 10000004 */  b          .L8006A004
/* 247F4 80069FF4 ACC50000 */   sw        $a1, 0x0($a2)
.L80069FF8:
/* 247F8 80069FF8 3C06801B */  lui        $a2, %hi(D_801AE9F0)
/* 247FC 80069FFC 24C6E9F0 */  addiu      $a2, $a2, %lo(D_801AE9F0)
/* 24800 8006A000 ACC00000 */  sw         $zero, 0x0($a2)
.L8006A004:
/* 24804 8006A004 1060000C */  beqz       $v1, .L8006A038
/* 24808 8006A008 00000000 */   nop
/* 2480C 8006A00C 1443000A */  bne        $v0, $v1, .L8006A038
/* 24810 8006A010 3C0A801B */   lui       $t2, %hi(D_801AEA0C)
/* 24814 8006A014 254AEA0C */  addiu      $t2, $t2, %lo(D_801AEA0C)
/* 24818 8006A018 8D4C0000 */  lw         $t4, 0x0($t2)
/* 2481C 8006A01C 25820001 */  addiu      $v0, $t4, 0x1
/* 24820 8006A020 28410258 */  slti       $at, $v0, 0x258
/* 24824 8006A024 14200008 */  bnez       $at, .L8006A048
/* 24828 8006A028 AD420000 */   sw        $v0, 0x0($t2)
/* 2482C 8006A02C 24020258 */  addiu      $v0, $zero, 0x258
/* 24830 8006A030 10000005 */  b          .L8006A048
/* 24834 8006A034 AD420000 */   sw        $v0, 0x0($t2)
.L8006A038:
/* 24838 8006A038 3C0A801B */  lui        $t2, %hi(D_801AEA0C)
/* 2483C 8006A03C 254AEA0C */  addiu      $t2, $t2, %lo(D_801AEA0C)
/* 24840 8006A040 AD400000 */  sw         $zero, 0x0($t2)
/* 24844 8006A044 00001025 */  or         $v0, $zero, $zero
.L8006A048:
/* 24848 8006A048 28410018 */  slti       $at, $v0, 0x18
/* 2484C 8006A04C 5420000B */  bnel       $at, $zero, .L8006A07C
/* 24850 8006A050 8D180000 */   lw        $t8, 0x0($t0)
/* 24854 8006A054 04410004 */  bgez       $v0, .L8006A068
/* 24858 8006A058 304F0007 */   andi      $t7, $v0, 0x7
/* 2485C 8006A05C 11E00002 */  beqz       $t7, .L8006A068
/* 24860 8006A060 00000000 */   nop
/* 24864 8006A064 25EFFFF8 */  addiu      $t7, $t7, -0x8
.L8006A068:
/* 24868 8006A068 15E00003 */  bnez       $t7, .L8006A078
/* 2486C 8006A06C 3C01801B */   lui       $at, %hi(D_801AE9F4)
/* 24870 8006A070 10000004 */  b          .L8006A084
/* 24874 8006A074 AC23E9F4 */   sw        $v1, %lo(D_801AE9F4)($at)
.L8006A078:
/* 24878 8006A078 8D180000 */  lw         $t8, 0x0($t0)
.L8006A07C:
/* 2487C 8006A07C 3C01801B */  lui        $at, %hi(D_801AE9F4)
/* 24880 8006A080 AC38E9F4 */  sw         $t8, %lo(D_801AE9F4)($at)
.L8006A084:
/* 24884 8006A084 10A0000C */  beqz       $a1, .L8006A0B8
/* 24888 8006A088 00000000 */   nop
/* 2488C 8006A08C 1485000A */  bne        $a0, $a1, .L8006A0B8
/* 24890 8006A090 3C04801B */   lui       $a0, %hi(D_801AEA10)
/* 24894 8006A094 2484EA10 */  addiu      $a0, $a0, %lo(D_801AEA10)
/* 24898 8006A098 8C990000 */  lw         $t9, 0x0($a0)
/* 2489C 8006A09C 27220001 */  addiu      $v0, $t9, 0x1
/* 248A0 8006A0A0 28410258 */  slti       $at, $v0, 0x258
/* 248A4 8006A0A4 14200008 */  bnez       $at, .L8006A0C8
/* 248A8 8006A0A8 AC820000 */   sw        $v0, 0x0($a0)
/* 248AC 8006A0AC 24020258 */  addiu      $v0, $zero, 0x258
/* 248B0 8006A0B0 10000005 */  b          .L8006A0C8
/* 248B4 8006A0B4 AC820000 */   sw        $v0, 0x0($a0)
.L8006A0B8:
/* 248B8 8006A0B8 3C04801B */  lui        $a0, %hi(D_801AEA10)
/* 248BC 8006A0BC 2484EA10 */  addiu      $a0, $a0, %lo(D_801AEA10)
/* 248C0 8006A0C0 AC800000 */  sw         $zero, 0x0($a0)
/* 248C4 8006A0C4 00001025 */  or         $v0, $zero, $zero
.L8006A0C8:
/* 248C8 8006A0C8 28410018 */  slti       $at, $v0, 0x18
/* 248CC 8006A0CC 5420000B */  bnel       $at, $zero, .L8006A0FC
/* 248D0 8006A0D0 8CCE0000 */   lw        $t6, 0x0($a2)
/* 248D4 8006A0D4 04410004 */  bgez       $v0, .L8006A0E8
/* 248D8 8006A0D8 304D0007 */   andi      $t5, $v0, 0x7
/* 248DC 8006A0DC 11A00002 */  beqz       $t5, .L8006A0E8
/* 248E0 8006A0E0 00000000 */   nop
/* 248E4 8006A0E4 25ADFFF8 */  addiu      $t5, $t5, -0x8
.L8006A0E8:
/* 248E8 8006A0E8 15A00003 */  bnez       $t5, .L8006A0F8
/* 248EC 8006A0EC 3C01801B */   lui       $at, %hi(D_801AE9F8)
/* 248F0 8006A0F0 10000004 */  b          .L8006A104
/* 248F4 8006A0F4 AC25E9F8 */   sw        $a1, %lo(D_801AE9F8)($at)
.L8006A0F8:
/* 248F8 8006A0F8 8CCE0000 */  lw         $t6, 0x0($a2)
.L8006A0FC:
/* 248FC 8006A0FC 3C01801B */  lui        $at, %hi(D_801AE9F8)
/* 24900 8006A100 AC2EE9F8 */  sw         $t6, %lo(D_801AE9F8)($at)
.L8006A104:
/* 24904 8006A104 ACE30000 */  sw         $v1, 0x0($a3)
/* 24908 8006A108 03E00008 */  jr         $ra
/* 2490C 8006A10C AD250000 */   sw        $a1, 0x0($t1)
