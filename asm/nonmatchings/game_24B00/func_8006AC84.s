glabel func_8006AC84
/* 25484 8006AC84 3C02801D */  lui        $v0, %hi(D_801CE638)
/* 25488 8006AC88 8C42E638 */  lw         $v0, %lo(D_801CE638)($v0)
/* 2548C 8006AC8C 27BDFF48 */  addiu      $sp, $sp, -0xB8
/* 25490 8006AC90 24010008 */  addiu      $at, $zero, 0x8
/* 25494 8006AC94 AFBF0034 */  sw         $ra, 0x34($sp)
/* 25498 8006AC98 1441008D */  bne        $v0, $at, .L8006AED0
/* 2549C 8006AC9C AFA500BC */   sw        $a1, 0xBC($sp)
/* 254A0 8006ACA0 3C0E800E */  lui        $t6, %hi(D_800D8170)
/* 254A4 8006ACA4 8DCE8170 */  lw         $t6, %lo(D_800D8170)($t6)
/* 254A8 8006ACA8 24060001 */  addiu      $a2, $zero, 0x1
/* 254AC 8006ACAC 3C0C800D */  lui        $t4, %hi(D_800D5438)
/* 254B0 8006ACB0 14CE004A */  bne        $a2, $t6, .L8006ADDC
/* 254B4 8006ACB4 3C18801B */   lui       $t8, (0x801B0000 >> 16)
/* 254B8 8006ACB8 3C03801A */  lui        $v1, %hi(D_801982F0)
/* 254BC 8006ACBC 8C6382F0 */  lw         $v1, %lo(D_801982F0)($v1)
/* 254C0 8006ACC0 3C014300 */  lui        $at, (0x43000000 >> 16)
/* 254C4 8006ACC4 44814000 */  mtc1       $at, $f8
/* 254C8 8006ACC8 00644023 */  subu       $t0, $v1, $a0
/* 254CC 8006ACCC 2508FFFF */  addiu      $t0, $t0, -0x1
/* 254D0 8006ACD0 310F0001 */  andi       $t7, $t0, 0x1
/* 254D4 8006ACD4 448F2000 */  mtc1       $t7, $f4
/* 254D8 8006ACD8 3C014280 */  lui        $at, (0x42800000 >> 16)
/* 254DC 8006ACDC 3C0B801B */  lui        $t3, %hi(D_801AEE20)
/* 254E0 8006ACE0 468021A0 */  cvt.s.w    $f6, $f4
/* 254E4 8006ACE4 44812000 */  mtc1       $at, $f4
/* 254E8 8006ACE8 3C014250 */  lui        $at, (0x42500000 >> 16)
/* 254EC 8006ACEC 0068C023 */  subu       $t8, $v1, $t0
/* 254F0 8006ACF0 2719FFFF */  addiu      $t9, $t8, -0x1
/* 254F4 8006ACF4 256BEE20 */  addiu      $t3, $t3, %lo(D_801AEE20)
/* 254F8 8006ACF8 46083282 */  mul.s      $f10, $f6, $f8
/* 254FC 8006ACFC 44814000 */  mtc1       $at, $f8
/* 25500 8006AD00 29010002 */  slti       $at, $t0, 0x2
/* 25504 8006AD04 3C09801C */  lui        $t1, %hi(D_801BB12C)
/* 25508 8006AD08 27A5004C */  addiu      $a1, $sp, 0x4C
/* 2550C 8006AD0C 460A2181 */  sub.s      $f6, $f4, $f10
/* 25510 8006AD10 46083000 */  add.s      $f0, $f6, $f8
/* 25514 8006AD14 14200005 */  bnez       $at, .L8006AD2C
/* 25518 8006AD18 46000486 */   mov.s     $f18, $f0
/* 2551C 8006AD1C 3C014200 */  lui        $at, (0x42000000 >> 16)
/* 25520 8006AD20 44812000 */  mtc1       $at, $f4
/* 25524 8006AD24 00000000 */  nop
/* 25528 8006AD28 46040481 */  sub.s      $f18, $f0, $f4
.L8006AD2C:
/* 2552C 8006AD2C 44998000 */  mtc1       $t9, $f16
/* 25530 8006AD30 8D29B12C */  lw         $t1, %lo(D_801BB12C)($t1)
/* 25534 8006AD34 44807000 */  mtc1       $zero, $f14
/* 25538 8006AD38 46808420 */  cvt.s.w    $f16, $f16
/* 2553C 8006AD3C 3C0142A0 */  lui        $at, (0x42A00000 >> 16)
/* 25540 8006AD40 44816000 */  mtc1       $at, $f12
/* 25544 8006AD44 3C01C400 */  lui        $at, (0xC4000000 >> 16)
/* 25548 8006AD48 44815000 */  mtc1       $at, $f10
/* 2554C 8006AD4C 00095180 */  sll        $t2, $t1, 6
/* 25550 8006AD50 460C8302 */  mul.s      $f12, $f16, $f12
/* 25554 8006AD54 01495021 */  addu       $t2, $t2, $t1
/* 25558 8006AD58 000A5080 */  sll        $t2, $t2, 2
/* 2555C 8006AD5C 014B1021 */  addu       $v0, $t2, $t3
/* 25560 8006AD60 C4500078 */  lwc1       $f16, 0x78($v0)
/* 25564 8006AD64 C4480070 */  lwc1       $f8, 0x70($v0)
/* 25568 8006AD68 C446007C */  lwc1       $f6, 0x7C($v0)
/* 2556C 8006AD6C 46109402 */  mul.s      $f16, $f18, $f16
/* 25570 8006AD70 460A6280 */  add.s      $f10, $f12, $f10
/* 25574 8006AD74 C44C0074 */  lwc1       $f12, 0x74($v0)
/* 25578 8006AD78 46069182 */  mul.s      $f6, $f18, $f6
/* 2557C 8006AD7C C4440000 */  lwc1       $f4, 0x0($v0)
/* 25580 8006AD80 C4420008 */  lwc1       $f2, 0x8($v0)
/* 25584 8006AD84 460A4002 */  mul.s      $f0, $f8, $f10
/* 25588 8006AD88 44064000 */  mfc1       $a2, $f8
/* 2558C 8006AD8C 46102400 */  add.s      $f16, $f4, $f16
/* 25590 8006AD90 460A6102 */  mul.s      $f4, $f12, $f10
/* 25594 8006AD94 44077000 */  mfc1       $a3, $f14
/* 25598 8006AD98 46061180 */  add.s      $f6, $f2, $f6
/* 2559C 8006AD9C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 255A0 8006ADA0 44811000 */  mtc1       $at, $f2
/* 255A4 8006ADA4 46100400 */  add.s      $f16, $f0, $f16
/* 255A8 8006ADA8 E7AA008C */  swc1       $f10, 0x8C($sp)
/* 255AC 8006ADAC E7AC0010 */  swc1       $f12, 0x10($sp)
/* 255B0 8006ADB0 46062180 */  add.s      $f6, $f4, $f6
/* 255B4 8006ADB4 8FA400BC */  lw         $a0, 0xBC($sp)
/* 255B8 8006ADB8 E7A20018 */  swc1       $f2, 0x18($sp)
/* 255BC 8006ADBC E7AE0014 */  swc1       $f14, 0x14($sp)
/* 255C0 8006ADC0 E7B00020 */  swc1       $f16, 0x20($sp)
/* 255C4 8006ADC4 E7AE001C */  swc1       $f14, 0x1C($sp)
/* 255C8 8006ADC8 E7AE0024 */  swc1       $f14, 0x24($sp)
/* 255CC 8006ADCC 0C012215 */  jal        func_80048854
/* 255D0 8006ADD0 E7A60028 */   swc1      $f6, 0x28($sp)
/* 255D4 8006ADD4 10000154 */  b          .L8006B328
/* 255D8 8006ADD8 8FBF0034 */   lw        $ra, 0x34($sp)
.L8006ADDC:
/* 255DC 8006ADDC 8D8C5438 */  lw         $t4, %lo(D_800D5438)($t4)
/* 255E0 8006ADE0 44808000 */  mtc1       $zero, $f16
/* 255E4 8006ADE4 2405FFFF */  addiu      $a1, $zero, -0x1
/* 255E8 8006ADE8 008C4021 */  addu       $t0, $a0, $t4
/* 255EC 8006ADEC 310D0003 */  andi       $t5, $t0, 0x3
/* 255F0 8006ADF0 15A00003 */  bnez       $t5, .L8006AE00
/* 255F4 8006ADF4 01A04025 */   or        $t0, $t5, $zero
/* 255F8 8006ADF8 1000000D */  b          .L8006AE30
/* 255FC 8006ADFC 2405000B */   addiu     $a1, $zero, 0xB
.L8006AE00:
/* 25600 8006AE00 15060003 */  bne        $t0, $a2, .L8006AE10
/* 25604 8006AE04 24010002 */   addiu     $at, $zero, 0x2
/* 25608 8006AE08 10000009 */  b          .L8006AE30
/* 2560C 8006AE0C 2405000C */   addiu     $a1, $zero, 0xC
.L8006AE10:
/* 25610 8006AE10 55010004 */  bnel       $t0, $at, .L8006AE24
/* 25614 8006AE14 24010003 */   addiu     $at, $zero, 0x3
/* 25618 8006AE18 10000005 */  b          .L8006AE30
/* 2561C 8006AE1C 2405000D */   addiu     $a1, $zero, 0xD
/* 25620 8006AE20 24010003 */  addiu      $at, $zero, 0x3
.L8006AE24:
/* 25624 8006AE24 15010002 */  bne        $t0, $at, .L8006AE30
/* 25628 8006AE28 00000000 */   nop
/* 2562C 8006AE2C 2405000E */  addiu      $a1, $zero, 0xE
.L8006AE30:
/* 25630 8006AE30 3C04801C */  lui        $a0, %hi(D_801BB120)
/* 25634 8006AE34 8C84B120 */  lw         $a0, %lo(D_801BB120)($a0)
/* 25638 8006AE38 44078000 */  mfc1       $a3, $f16
/* 2563C 8006AE3C 00001825 */  or         $v1, $zero, $zero
/* 25640 8006AE40 1880000A */  blez       $a0, .L8006AE6C
/* 25644 8006AE44 2718EE20 */   addiu     $t8, $t8, -0x11E0
/* 25648 8006AE48 3C02801B */  lui        $v0, %hi(D_801AEE20)
/* 2564C 8006AE4C 2442EE20 */  addiu      $v0, $v0, %lo(D_801AEE20)
.L8006AE50:
/* 25650 8006AE50 8C4E0098 */  lw         $t6, 0x98($v0)
/* 25654 8006AE54 50AE0006 */  beql       $a1, $t6, .L8006AE70
/* 25658 8006AE58 0064082A */   slt       $at, $v1, $a0
/* 2565C 8006AE5C 24630001 */  addiu      $v1, $v1, 0x1
/* 25660 8006AE60 0064082A */  slt        $at, $v1, $a0
/* 25664 8006AE64 1420FFFA */  bnez       $at, .L8006AE50
/* 25668 8006AE68 24420104 */   addiu     $v0, $v0, 0x104
.L8006AE6C:
/* 2566C 8006AE6C 0064082A */  slt        $at, $v1, $a0
.L8006AE70:
/* 25670 8006AE70 14200002 */  bnez       $at, .L8006AE7C
/* 25674 8006AE74 8FA400BC */   lw        $a0, 0xBC($sp)
/* 25678 8006AE78 01001825 */  or         $v1, $t0, $zero
.L8006AE7C:
/* 2567C 8006AE7C 00037980 */  sll        $t7, $v1, 6
/* 25680 8006AE80 01E37821 */  addu       $t7, $t7, $v1
/* 25684 8006AE84 000F7880 */  sll        $t7, $t7, 2
/* 25688 8006AE88 01F81021 */  addu       $v0, $t7, $t8
/* 2568C 8006AE8C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 25690 8006AE90 44815000 */  mtc1       $at, $f10
/* 25694 8006AE94 C4460074 */  lwc1       $f6, 0x74($v0)
/* 25698 8006AE98 C4440000 */  lwc1       $f4, 0x0($v0)
/* 2569C 8006AE9C C4480008 */  lwc1       $f8, 0x8($v0)
/* 256A0 8006AEA0 8C460070 */  lw         $a2, 0x70($v0)
/* 256A4 8006AEA4 27A5004C */  addiu      $a1, $sp, 0x4C
/* 256A8 8006AEA8 E7B00014 */  swc1       $f16, 0x14($sp)
/* 256AC 8006AEAC E7B0001C */  swc1       $f16, 0x1C($sp)
/* 256B0 8006AEB0 E7B00024 */  swc1       $f16, 0x24($sp)
/* 256B4 8006AEB4 E7A60010 */  swc1       $f6, 0x10($sp)
/* 256B8 8006AEB8 E7AA0018 */  swc1       $f10, 0x18($sp)
/* 256BC 8006AEBC E7A40020 */  swc1       $f4, 0x20($sp)
/* 256C0 8006AEC0 0C012215 */  jal        func_80048854
/* 256C4 8006AEC4 E7A80028 */   swc1      $f8, 0x28($sp)
/* 256C8 8006AEC8 10000117 */  b          .L8006B328
/* 256CC 8006AECC 8FBF0034 */   lw        $ra, 0x34($sp)
.L8006AED0:
/* 256D0 8006AED0 24010015 */  addiu      $at, $zero, 0x15
/* 256D4 8006AED4 14410033 */  bne        $v0, $at, .L8006AFA4
/* 256D8 8006AED8 3C03801A */   lui       $v1, %hi(D_801982F0)
/* 256DC 8006AEDC 0004C8C0 */  sll        $t9, $a0, 3
/* 256E0 8006AEE0 0324C823 */  subu       $t9, $t9, $a0
/* 256E4 8006AEE4 0019C900 */  sll        $t9, $t9, 4
/* 256E8 8006AEE8 0324C823 */  subu       $t9, $t9, $a0
/* 256EC 8006AEEC 0019C8C0 */  sll        $t9, $t9, 3
/* 256F0 8006AEF0 3C08801C */  lui        $t0, %hi(D_801C2C70)
/* 256F4 8006AEF4 01194021 */  addu       $t0, $t0, $t9
/* 256F8 8006AEF8 8D082C70 */  lw         $t0, %lo(D_801C2C70)($t0)
/* 256FC 8006AEFC 3C0A800D */  lui        $t2, %hi(D_800D5408)
/* 25700 8006AF00 254A5408 */  addiu      $t2, $t2, %lo(D_800D5408)
/* 25704 8006AF04 29010003 */  slti       $at, $t0, 0x3
/* 25708 8006AF08 10200007 */  beqz       $at, .L8006AF28
/* 2570C 8006AF0C 8FA400BC */   lw        $a0, 0xBC($sp)
/* 25710 8006AF10 44808000 */  mtc1       $zero, $f16
/* 25714 8006AF14 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 25718 8006AF18 44817000 */  mtc1       $at, $f14
/* 2571C 8006AF1C 00001825 */  or         $v1, $zero, $zero
/* 25720 8006AF20 10000007 */  b          .L8006AF40
/* 25724 8006AF24 46008486 */   mov.s     $f18, $f16
.L8006AF28:
/* 25728 8006AF28 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 2572C 8006AF2C 44817000 */  mtc1       $at, $f14
/* 25730 8006AF30 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 25734 8006AF34 44819000 */  mtc1       $at, $f18
/* 25738 8006AF38 44808000 */  mtc1       $zero, $f16
/* 2573C 8006AF3C 24030003 */  addiu      $v1, $zero, 0x3
.L8006AF40:
/* 25740 8006AF40 00034880 */  sll        $t1, $v1, 2
/* 25744 8006AF44 01234823 */  subu       $t1, $t1, $v1
/* 25748 8006AF48 00094880 */  sll        $t1, $t1, 2
/* 2574C 8006AF4C 012A1021 */  addu       $v0, $t1, $t2
/* 25750 8006AF50 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 25754 8006AF54 44815000 */  mtc1       $at, $f10
/* 25758 8006AF58 C4460000 */  lwc1       $f6, 0x0($v0)
/* 2575C 8006AF5C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 25760 8006AF60 C4420004 */  lwc1       $f2, 0x4($v0)
/* 25764 8006AF64 460A3001 */  sub.s      $f0, $f6, $f10
/* 25768 8006AF68 C44C0008 */  lwc1       $f12, 0x8($v0)
/* 2576C 8006AF6C 44812000 */  mtc1       $at, $f4
/* 25770 8006AF70 44067000 */  mfc1       $a2, $f14
/* 25774 8006AF74 44078000 */  mfc1       $a3, $f16
/* 25778 8006AF78 E7A00020 */  swc1       $f0, 0x20($sp)
/* 2577C 8006AF7C 27A5004C */  addiu      $a1, $sp, 0x4C
/* 25780 8006AF80 E7B20010 */  swc1       $f18, 0x10($sp)
/* 25784 8006AF84 E7B00014 */  swc1       $f16, 0x14($sp)
/* 25788 8006AF88 E7B0001C */  swc1       $f16, 0x1C($sp)
/* 2578C 8006AF8C E7A20024 */  swc1       $f2, 0x24($sp)
/* 25790 8006AF90 E7AC0028 */  swc1       $f12, 0x28($sp)
/* 25794 8006AF94 0C012215 */  jal        func_80048854
/* 25798 8006AF98 E7A40018 */   swc1      $f4, 0x18($sp)
/* 2579C 8006AF9C 100000E2 */  b          .L8006B328
/* 257A0 8006AFA0 8FBF0034 */   lw        $ra, 0x34($sp)
.L8006AFA4:
/* 257A4 8006AFA4 8C6382F0 */  lw         $v1, %lo(D_801982F0)($v1)
/* 257A8 8006AFA8 24060001 */  addiu      $a2, $zero, 0x1
/* 257AC 8006AFAC 3C0B801D */  lui        $t3, %hi(D_801CE620)
/* 257B0 8006AFB0 14C30015 */  bne        $a2, $v1, .L8006B008
/* 257B4 8006AFB4 24010002 */   addiu     $at, $zero, 0x2
/* 257B8 8006AFB8 3C01C400 */  lui        $at, (0xC4000000 >> 16)
/* 257BC 8006AFBC 44811000 */  mtc1       $at, $f2
/* 257C0 8006AFC0 8D6BE620 */  lw         $t3, %lo(D_801CE620)($t3)
/* 257C4 8006AFC4 44808000 */  mtc1       $zero, $f16
/* 257C8 8006AFC8 2401000B */  addiu      $at, $zero, 0xB
/* 257CC 8006AFCC E7A2008C */  swc1       $f2, 0x8C($sp)
/* 257D0 8006AFD0 1161000A */  beq        $t3, $at, .L8006AFFC
/* 257D4 8006AFD4 46008486 */   mov.s     $f18, $f16
/* 257D8 8006AFD8 3C0C800E */  lui        $t4, %hi(D_800D8170)
/* 257DC 8006AFDC 8D8C8170 */  lw         $t4, %lo(D_800D8170)($t4)
/* 257E0 8006AFE0 3C014400 */  lui        $at, (0x44000000 >> 16)
/* 257E4 8006AFE4 15800005 */  bnez       $t4, .L8006AFFC
/* 257E8 8006AFE8 00000000 */   nop
/* 257EC 8006AFEC 44814000 */  mtc1       $at, $f8
/* 257F0 8006AFF0 00000000 */  nop
/* 257F4 8006AFF4 46081181 */  sub.s      $f6, $f2, $f8
/* 257F8 8006AFF8 E7A6008C */  swc1       $f6, 0x8C($sp)
.L8006AFFC:
/* 257FC 8006AFFC 3C02800E */  lui        $v0, %hi(D_800D8170)
/* 25800 8006B000 10000099 */  b          .L8006B268
/* 25804 8006B004 8C428170 */   lw        $v0, %lo(D_800D8170)($v0)
.L8006B008:
/* 25808 8006B008 14610020 */  bne        $v1, $at, .L8006B08C
/* 2580C 8006B00C 3C0D800D */   lui       $t5, %hi(D_800D48DC)
/* 25810 8006B010 8DAD48DC */  lw         $t5, %lo(D_800D48DC)($t5)
/* 25814 8006B014 44808000 */  mtc1       $zero, $f16
/* 25818 8006B018 3C01C400 */  lui        $at, (0xC4000000 >> 16)
/* 2581C 8006B01C 148D0007 */  bne        $a0, $t5, .L8006B03C
/* 25820 8006B020 3C02800E */   lui       $v0, %hi(D_800D8170)
/* 25824 8006B024 3C01C400 */  lui        $at, (0xC4000000 >> 16)
/* 25828 8006B028 44811000 */  mtc1       $at, $f2
/* 2582C 8006B02C 3C014240 */  lui        $at, (0x42400000 >> 16)
/* 25830 8006B030 44819000 */  mtc1       $at, $f18
/* 25834 8006B034 10000005 */  b          .L8006B04C
/* 25838 8006B038 46001006 */   mov.s     $f0, $f2
.L8006B03C:
/* 2583C 8006B03C 44811000 */  mtc1       $at, $f2
/* 25840 8006B040 3C01C240 */  lui        $at, (0xC2400000 >> 16)
/* 25844 8006B044 44819000 */  mtc1       $at, $f18
/* 25848 8006B048 46001006 */  mov.s      $f0, $f2
.L8006B04C:
/* 2584C 8006B04C 8C428170 */  lw         $v0, %lo(D_800D8170)($v0)
/* 25850 8006B050 3C014250 */  lui        $at, (0x42500000 >> 16)
/* 25854 8006B054 44815000 */  mtc1       $at, $f10
/* 25858 8006B058 1440000A */  bnez       $v0, .L8006B084
/* 2585C 8006B05C 460A9480 */   add.s     $f18, $f18, $f10
/* 25860 8006B060 44842000 */  mtc1       $a0, $f4
/* 25864 8006B064 3C0142C0 */  lui        $at, (0x42C00000 >> 16)
/* 25868 8006B068 44813000 */  mtc1       $at, $f6
/* 2586C 8006B06C 46802220 */  cvt.s.w    $f8, $f4
/* 25870 8006B070 3C014400 */  lui        $at, (0x44000000 >> 16)
/* 25874 8006B074 44812000 */  mtc1       $at, $f4
/* 25878 8006B078 46064282 */  mul.s      $f10, $f8, $f6
/* 2587C 8006B07C 460A2200 */  add.s      $f8, $f4, $f10
/* 25880 8006B080 46081001 */  sub.s      $f0, $f2, $f8
.L8006B084:
/* 25884 8006B084 10000078 */  b          .L8006B268
/* 25888 8006B088 E7A0008C */   swc1      $f0, 0x8C($sp)
.L8006B08C:
/* 2588C 8006B08C 1440001D */  bnez       $v0, .L8006B104
/* 25890 8006B090 3C18801D */   lui       $t8, %hi(D_801CE620)
/* 25894 8006B094 308E0001 */  andi       $t6, $a0, 0x1
/* 25898 8006B098 448E3000 */  mtc1       $t6, $f6
/* 2589C 8006B09C 3C01C400 */  lui        $at, (0xC4000000 >> 16)
/* 258A0 8006B0A0 44811000 */  mtc1       $at, $f2
/* 258A4 8006B0A4 46803120 */  cvt.s.w    $f4, $f6
/* 258A8 8006B0A8 3C014300 */  lui        $at, (0x43000000 >> 16)
/* 258AC 8006B0AC 44815000 */  mtc1       $at, $f10
/* 258B0 8006B0B0 3C014280 */  lui        $at, (0x42800000 >> 16)
/* 258B4 8006B0B4 44813000 */  mtc1       $at, $f6
/* 258B8 8006B0B8 00647823 */  subu       $t7, $v1, $a0
/* 258BC 8006B0BC 460A2202 */  mul.s      $f8, $f4, $f10
/* 258C0 8006B0C0 3C014250 */  lui        $at, (0x42500000 >> 16)
/* 258C4 8006B0C4 44815000 */  mtc1       $at, $f10
/* 258C8 8006B0C8 3C0142A0 */  lui        $at, (0x42A00000 >> 16)
/* 258CC 8006B0CC 3C02800E */  lui        $v0, %hi(D_800D8170)
/* 258D0 8006B0D0 44808000 */  mtc1       $zero, $f16
/* 258D4 8006B0D4 8C428170 */  lw         $v0, %lo(D_800D8170)($v0)
/* 258D8 8006B0D8 46083101 */  sub.s      $f4, $f6, $f8
/* 258DC 8006B0DC 448F3000 */  mtc1       $t7, $f6
/* 258E0 8006B0E0 00000000 */  nop
/* 258E4 8006B0E4 46803220 */  cvt.s.w    $f8, $f6
/* 258E8 8006B0E8 460A2480 */  add.s      $f18, $f4, $f10
/* 258EC 8006B0EC 44812000 */  mtc1       $at, $f4
/* 258F0 8006B0F0 00000000 */  nop
/* 258F4 8006B0F4 46044282 */  mul.s      $f10, $f8, $f4
/* 258F8 8006B0F8 46025000 */  add.s      $f0, $f10, $f2
/* 258FC 8006B0FC 1000005A */  b          .L8006B268
/* 25900 8006B100 E7A0008C */   swc1      $f0, 0x8C($sp)
.L8006B104:
/* 25904 8006B104 8F18E620 */  lw         $t8, %lo(D_801CE620)($t8)
/* 25908 8006B108 24010004 */  addiu      $at, $zero, 0x4
/* 2590C 8006B10C 0004C880 */  sll        $t9, $a0, 2
/* 25910 8006B110 1701003C */  bne        $t8, $at, .L8006B204
/* 25914 8006B114 308E0001 */   andi      $t6, $a0, 0x1
/* 25918 8006B118 3C09801C */  lui        $t1, %hi(D_801C1F90)
/* 2591C 8006B11C 8D291F90 */  lw         $t1, %lo(D_801C1F90)($t1)
/* 25920 8006B120 3C08801C */  lui        $t0, %hi(D_801C26C0)
/* 25924 8006B124 01194021 */  addu       $t0, $t0, $t9
/* 25928 8006B128 15200014 */  bnez       $t1, .L8006B17C
/* 2592C 8006B12C 8D0826C0 */   lw        $t0, %lo(D_801C26C0)($t0)
/* 25930 8006B130 310A0001 */  andi       $t2, $t0, 0x1
/* 25934 8006B134 448A3000 */  mtc1       $t2, $f6
/* 25938 8006B138 3C014300 */  lui        $at, (0x43000000 >> 16)
/* 2593C 8006B13C 44812000 */  mtc1       $at, $f4
/* 25940 8006B140 46803220 */  cvt.s.w    $f8, $f6
/* 25944 8006B144 3C014280 */  lui        $at, (0x42800000 >> 16)
/* 25948 8006B148 44813000 */  mtc1       $at, $f6
/* 2594C 8006B14C 3C014250 */  lui        $at, (0x42500000 >> 16)
/* 25950 8006B150 46044282 */  mul.s      $f10, $f8, $f4
/* 25954 8006B154 44812000 */  mtc1       $at, $f4
/* 25958 8006B158 29010002 */  slti       $at, $t0, 0x2
/* 2595C 8006B15C 460A3201 */  sub.s      $f8, $f6, $f10
/* 25960 8006B160 46044000 */  add.s      $f0, $f8, $f4
/* 25964 8006B164 14200018 */  bnez       $at, .L8006B1C8
/* 25968 8006B168 46000486 */   mov.s     $f18, $f0
/* 2596C 8006B16C 3C014200 */  lui        $at, (0x42000000 >> 16)
/* 25970 8006B170 44813000 */  mtc1       $at, $f6
/* 25974 8006B174 10000014 */  b          .L8006B1C8
/* 25978 8006B178 46060481 */   sub.s     $f18, $f0, $f6
.L8006B17C:
/* 2597C 8006B17C 310B0001 */  andi       $t3, $t0, 0x1
/* 25980 8006B180 448B5000 */  mtc1       $t3, $f10
/* 25984 8006B184 3C014300 */  lui        $at, (0x43000000 >> 16)
/* 25988 8006B188 44812000 */  mtc1       $at, $f4
/* 2598C 8006B18C 46805220 */  cvt.s.w    $f8, $f10
/* 25990 8006B190 3C01C280 */  lui        $at, (0xC2800000 >> 16)
/* 25994 8006B194 44815000 */  mtc1       $at, $f10
/* 25998 8006B198 3C014250 */  lui        $at, (0x42500000 >> 16)
/* 2599C 8006B19C 46044182 */  mul.s      $f6, $f8, $f4
/* 259A0 8006B1A0 44812000 */  mtc1       $at, $f4
/* 259A4 8006B1A4 29010002 */  slti       $at, $t0, 0x2
/* 259A8 8006B1A8 460A3200 */  add.s      $f8, $f6, $f10
/* 259AC 8006B1AC 46044001 */  sub.s      $f0, $f8, $f4
/* 259B0 8006B1B0 14200005 */  bnez       $at, .L8006B1C8
/* 259B4 8006B1B4 46000486 */   mov.s     $f18, $f0
/* 259B8 8006B1B8 3C014200 */  lui        $at, (0x42000000 >> 16)
/* 259BC 8006B1BC 44813000 */  mtc1       $at, $f6
/* 259C0 8006B1C0 00000000 */  nop
/* 259C4 8006B1C4 46060480 */  add.s      $f18, $f0, $f6
.L8006B1C8:
/* 259C8 8006B1C8 00686023 */  subu       $t4, $v1, $t0
/* 259CC 8006B1CC 258DFFFF */  addiu      $t5, $t4, -0x1
/* 259D0 8006B1D0 448D5000 */  mtc1       $t5, $f10
/* 259D4 8006B1D4 3C01C400 */  lui        $at, (0xC4000000 >> 16)
/* 259D8 8006B1D8 44811000 */  mtc1       $at, $f2
/* 259DC 8006B1DC 46805220 */  cvt.s.w    $f8, $f10
/* 259E0 8006B1E0 3C0142A0 */  lui        $at, (0x42A00000 >> 16)
/* 259E4 8006B1E4 44812000 */  mtc1       $at, $f4
/* 259E8 8006B1E8 3C02800E */  lui        $v0, %hi(D_800D8170)
/* 259EC 8006B1EC 44808000 */  mtc1       $zero, $f16
/* 259F0 8006B1F0 8C428170 */  lw         $v0, %lo(D_800D8170)($v0)
/* 259F4 8006B1F4 46044182 */  mul.s      $f6, $f8, $f4
/* 259F8 8006B1F8 46023000 */  add.s      $f0, $f6, $f2
/* 259FC 8006B1FC 1000001A */  b          .L8006B268
/* 25A00 8006B200 E7A0008C */   swc1      $f0, 0x8C($sp)
.L8006B204:
/* 25A04 8006B204 448E5000 */  mtc1       $t6, $f10
/* 25A08 8006B208 3C01C400 */  lui        $at, (0xC4000000 >> 16)
/* 25A0C 8006B20C 44811000 */  mtc1       $at, $f2
/* 25A10 8006B210 46805220 */  cvt.s.w    $f8, $f10
/* 25A14 8006B214 3C014300 */  lui        $at, (0x43000000 >> 16)
/* 25A18 8006B218 44812000 */  mtc1       $at, $f4
/* 25A1C 8006B21C 3C014280 */  lui        $at, (0x42800000 >> 16)
/* 25A20 8006B220 44815000 */  mtc1       $at, $f10
/* 25A24 8006B224 3C014250 */  lui        $at, (0x42500000 >> 16)
/* 25A28 8006B228 46044182 */  mul.s      $f6, $f8, $f4
/* 25A2C 8006B22C 44812000 */  mtc1       $at, $f4
/* 25A30 8006B230 3C0142A0 */  lui        $at, (0x42A00000 >> 16)
/* 25A34 8006B234 3C02800E */  lui        $v0, %hi(D_800D8170)
/* 25A38 8006B238 44808000 */  mtc1       $zero, $f16
/* 25A3C 8006B23C 8C428170 */  lw         $v0, %lo(D_800D8170)($v0)
/* 25A40 8006B240 46065201 */  sub.s      $f8, $f10, $f6
/* 25A44 8006B244 44845000 */  mtc1       $a0, $f10
/* 25A48 8006B248 00000000 */  nop
/* 25A4C 8006B24C 468051A0 */  cvt.s.w    $f6, $f10
/* 25A50 8006B250 46044480 */  add.s      $f18, $f8, $f4
/* 25A54 8006B254 44814000 */  mtc1       $at, $f8
/* 25A58 8006B258 00000000 */  nop
/* 25A5C 8006B25C 46083102 */  mul.s      $f4, $f6, $f8
/* 25A60 8006B260 46022000 */  add.s      $f0, $f4, $f2
/* 25A64 8006B264 E7A0008C */  swc1       $f0, 0x8C($sp)
.L8006B268:
/* 25A68 8006B268 24010009 */  addiu      $at, $zero, 0x9
/* 25A6C 8006B26C 14410008 */  bne        $v0, $at, .L8006B290
/* 25A70 8006B270 3C18801C */   lui       $t8, %hi(D_801BB12C)
/* 25A74 8006B274 3C0F800D */  lui        $t7, %hi(D_800D48E0)
/* 25A78 8006B278 8DEF48E0 */  lw         $t7, %lo(D_800D48E0)($t7)
/* 25A7C 8006B27C 3C03801B */  lui        $v1, %hi(D_801B2F20)
/* 25A80 8006B280 148F0003 */  bne        $a0, $t7, .L8006B290
/* 25A84 8006B284 00000000 */   nop
/* 25A88 8006B288 10000003 */  b          .L8006B298
/* 25A8C 8006B28C 24632F20 */   addiu     $v1, $v1, %lo(D_801B2F20)
.L8006B290:
/* 25A90 8006B290 3C03801B */  lui        $v1, %hi(D_801AEE20)
/* 25A94 8006B294 2463EE20 */  addiu      $v1, $v1, %lo(D_801AEE20)
.L8006B298:
/* 25A98 8006B298 8F18B12C */  lw         $t8, %lo(D_801BB12C)($t8)
/* 25A9C 8006B29C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 25AA0 8006B2A0 44078000 */  mfc1       $a3, $f16
/* 25AA4 8006B2A4 0018C980 */  sll        $t9, $t8, 6
/* 25AA8 8006B2A8 0338C821 */  addu       $t9, $t9, $t8
/* 25AAC 8006B2AC 0019C880 */  sll        $t9, $t9, 2
/* 25AB0 8006B2B0 00791021 */  addu       $v0, $v1, $t9
/* 25AB4 8006B2B4 C4460078 */  lwc1       $f6, 0x78($v0)
/* 25AB8 8006B2B8 C44A0000 */  lwc1       $f10, 0x0($v0)
/* 25ABC 8006B2BC C4420070 */  lwc1       $f2, 0x70($v0)
/* 25AC0 8006B2C0 46069202 */  mul.s      $f8, $f18, $f6
/* 25AC4 8006B2C4 C7A6008C */  lwc1       $f6, 0x8C($sp)
/* 25AC8 8006B2C8 C44E0074 */  lwc1       $f14, 0x74($v0)
/* 25ACC 8006B2CC 44061000 */  mfc1       $a2, $f2
/* 25AD0 8006B2D0 8FA400BC */  lw         $a0, 0xBC($sp)
/* 25AD4 8006B2D4 27A5004C */  addiu      $a1, $sp, 0x4C
/* 25AD8 8006B2D8 46085100 */  add.s      $f4, $f10, $f8
/* 25ADC 8006B2DC 46061282 */  mul.s      $f10, $f2, $f6
/* 25AE0 8006B2E0 C4480008 */  lwc1       $f8, 0x8($v0)
/* 25AE4 8006B2E4 46045000 */  add.s      $f0, $f10, $f4
/* 25AE8 8006B2E8 C44A007C */  lwc1       $f10, 0x7C($v0)
/* 25AEC 8006B2EC E7B00024 */  swc1       $f16, 0x24($sp)
/* 25AF0 8006B2F0 E7B0001C */  swc1       $f16, 0x1C($sp)
/* 25AF4 8006B2F4 460A9102 */  mul.s      $f4, $f18, $f10
/* 25AF8 8006B2F8 E7A00020 */  swc1       $f0, 0x20($sp)
/* 25AFC 8006B2FC E7B00014 */  swc1       $f16, 0x14($sp)
/* 25B00 8006B300 E7AE0010 */  swc1       $f14, 0x10($sp)
/* 25B04 8006B304 46044280 */  add.s      $f10, $f8, $f4
/* 25B08 8006B308 46067202 */  mul.s      $f8, $f14, $f6
/* 25B0C 8006B30C 44812000 */  mtc1       $at, $f4
/* 25B10 8006B310 00000000 */  nop
/* 25B14 8006B314 E7A40018 */  swc1       $f4, 0x18($sp)
/* 25B18 8006B318 460A4300 */  add.s      $f12, $f8, $f10
/* 25B1C 8006B31C 0C012215 */  jal        func_80048854
/* 25B20 8006B320 E7AC0028 */   swc1      $f12, 0x28($sp)
/* 25B24 8006B324 8FBF0034 */  lw         $ra, 0x34($sp)
.L8006B328:
/* 25B28 8006B328 27BD00B8 */  addiu      $sp, $sp, 0xB8
/* 25B2C 8006B32C 03E00008 */  jr         $ra
/* 25B30 8006B330 00000000 */   nop
