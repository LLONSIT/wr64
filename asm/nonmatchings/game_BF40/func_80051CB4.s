glabel func_80051CB4
/* C4B4 80051CB4 4600610D */  trunc.w.s  $f4, $f12
/* C4B8 80051CB8 3C188019 */  lui        $t8, %hi(D_801924F4)
/* C4BC 80051CBC 8F1824F4 */  lw         $t8, %lo(D_801924F4)($t8)
/* C4C0 80051CC0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C4C4 80051CC4 440F2000 */  mfc1       $t7, $f4
/* C4C8 80051CC8 F7B80018 */  sdc1       $f24, 0x18($sp)
/* C4CC 80051CCC F7B60010 */  sdc1       $f22, 0x10($sp)
/* C4D0 80051CD0 01F81023 */  subu       $v0, $t7, $t8
/* C4D4 80051CD4 04400006 */  bltz       $v0, .L80051CF0
/* C4D8 80051CD8 F7B40008 */   sdc1      $f20, 0x8($sp)
/* C4DC 80051CDC 3C198019 */  lui        $t9, %hi(D_801924FC)
/* C4E0 80051CE0 8F3924FC */  lw         $t9, %lo(D_801924FC)($t9)
/* C4E4 80051CE4 0059082A */  slt        $at, $v0, $t9
/* C4E8 80051CE8 54200005 */  bnel       $at, $zero, .L80051D00
/* C4EC 80051CEC 4600718D */   trunc.w.s $f6, $f14
.L80051CF0:
/* C4F0 80051CF0 44800000 */  mtc1       $zero, $f0
/* C4F4 80051CF4 1000006D */  b          .L80051EAC
/* C4F8 80051CF8 D7B40008 */   ldc1      $f20, 0x8($sp)
/* C4FC 80051CFC 4600718D */  trunc.w.s  $f6, $f14
.L80051D00:
/* C500 80051D00 3C0A8019 */  lui        $t2, %hi(D_80192500)
/* C504 80051D04 8D4A2500 */  lw         $t2, %lo(D_80192500)($t2)
/* C508 80051D08 3C0B8019 */  lui        $t3, %hi(D_80192508)
/* C50C 80051D0C 44093000 */  mfc1       $t1, $f6
/* C510 80051D10 00000000 */  nop
/* C514 80051D14 012A1823 */  subu       $v1, $t1, $t2
/* C518 80051D18 04620007 */  bltzl      $v1, .L80051D38
/* C51C 80051D1C 44800000 */   mtc1      $zero, $f0
/* C520 80051D20 8D6B2508 */  lw         $t3, %lo(D_80192508)($t3)
/* C524 80051D24 3C0C8019 */  lui        $t4, %hi(D_801924F0)
/* C528 80051D28 006B082A */  slt        $at, $v1, $t3
/* C52C 80051D2C 14200004 */  bnez       $at, .L80051D40
/* C530 80051D30 00000000 */   nop
/* C534 80051D34 44800000 */  mtc1       $zero, $f0
.L80051D38:
/* C538 80051D38 1000005C */  b          .L80051EAC
/* C53C 80051D3C D7B40008 */   ldc1      $f20, 0x8($sp)
.L80051D40:
/* C540 80051D40 8D8C24F0 */  lw         $t4, %lo(D_801924F0)($t4)
/* C544 80051D44 3C0E8019 */  lui        $t6, %hi(D_80192510)
/* C548 80051D48 3C198019 */  lui        $t9, %hi(D_80192520)
/* C54C 80051D4C 11800010 */  beqz       $t4, .L80051D90
/* C550 80051D50 3C0B8019 */   lui       $t3, %hi(D_80192530)
/* C554 80051D54 3C0D8019 */  lui        $t5, %hi(D_80192520)
/* C558 80051D58 8DAD2520 */  lw         $t5, %lo(D_80192520)($t5)
/* C55C 80051D5C 3C0F8019 */  lui        $t7, %hi(D_80192518)
/* C560 80051D60 3C198019 */  lui        $t9, %hi(D_80192528)
/* C564 80051D64 8F392528 */  lw         $t9, %lo(D_80192528)($t9)
/* C568 80051D68 8DEF2518 */  lw         $t7, %lo(D_80192518)($t7)
/* C56C 80051D6C 01A27007 */  srav       $t6, $v0, $t5
/* C570 80051D70 3C0B8019 */  lui        $t3, %hi(D_80192530)
/* C574 80051D74 03234007 */  srav       $t0, $v1, $t9
/* C578 80051D78 01EEC004 */  sllv       $t8, $t6, $t7
/* C57C 80051D7C 8D6B2530 */  lw         $t3, %lo(D_80192530)($t3)
/* C580 80051D80 01184825 */  or         $t1, $t0, $t8
/* C584 80051D84 00095040 */  sll        $t2, $t1, 1
/* C588 80051D88 1000000C */  b          .L80051DBC
/* C58C 80051D8C 016A2021 */   addu      $a0, $t3, $t2
.L80051D90:
/* C590 80051D90 3C0C8019 */  lui        $t4, %hi(D_80192528)
/* C594 80051D94 8D8C2528 */  lw         $t4, %lo(D_80192528)($t4)
/* C598 80051D98 8DCE2510 */  lw         $t6, %lo(D_80192510)($t6)
/* C59C 80051D9C 8F392520 */  lw         $t9, %lo(D_80192520)($t9)
/* C5A0 80051DA0 01836807 */  srav       $t5, $v1, $t4
/* C5A4 80051DA4 8D6B2530 */  lw         $t3, %lo(D_80192530)($t3)
/* C5A8 80051DA8 01CD7804 */  sllv       $t7, $t5, $t6
/* C5AC 80051DAC 03224007 */  srav       $t0, $v0, $t9
/* C5B0 80051DB0 010FC025 */  or         $t8, $t0, $t7
/* C5B4 80051DB4 00184840 */  sll        $t1, $t8, 1
/* C5B8 80051DB8 01692021 */  addu       $a0, $t3, $t1
.L80051DBC:
/* C5BC 80051DBC 3C0C8019 */  lui        $t4, %hi(D_80192534)
/* C5C0 80051DC0 8D8C2534 */  lw         $t4, %lo(D_80192534)($t4)
/* C5C4 80051DC4 848A0000 */  lh         $t2, 0x0($a0)
/* C5C8 80051DC8 3C058019 */  lui        $a1, %hi(D_80192538)
/* C5CC 80051DCC 3C014200 */  lui        $at, (0x42000000 >> 16)
/* C5D0 80051DD0 014C1021 */  addu       $v0, $t2, $t4
/* C5D4 80051DD4 90430000 */  lbu        $v1, 0x0($v0)
/* C5D8 80051DD8 50600032 */  beql       $v1, $zero, .L80051EA4
/* C5DC 80051DDC 44800000 */   mtc1      $zero, $f0
/* C5E0 80051DE0 4481C000 */  mtc1       $at, $f24
/* C5E4 80051DE4 4480B000 */  mtc1       $zero, $f22
/* C5E8 80051DE8 8CA52538 */  lw         $a1, %lo(D_80192538)($a1)
/* C5EC 80051DEC 00036940 */  sll        $t5, $v1, 5
.L80051DF0:
/* C5F0 80051DF0 00AD2021 */  addu       $a0, $a1, $t5
/* C5F4 80051DF4 C4920004 */  lwc1       $f18, 0x4($a0)
/* C5F8 80051DF8 C4800000 */  lwc1       $f0, 0x0($a0)
/* C5FC 80051DFC C48A000C */  lwc1       $f10, 0xC($a0)
/* C600 80051E00 460E9201 */  sub.s      $f8, $f18, $f14
/* C604 80051E04 C4900008 */  lwc1       $f16, 0x8($a0)
/* C608 80051E08 460C0181 */  sub.s      $f6, $f0, $f12
/* C60C 80051E0C 460A4102 */  mul.s      $f4, $f8, $f10
/* C610 80051E10 00000000 */  nop
/* C614 80051E14 46103202 */  mul.s      $f8, $f6, $f16
/* C618 80051E18 46044080 */  add.s      $f2, $f8, $f4
/* C61C 80051E1C 4602B03C */  c.lt.s     $f22, $f2
/* C620 80051E20 00000000 */  nop
/* C624 80051E24 4500001A */  bc1f       .L80051E90
/* C628 80051E28 00000000 */   nop
/* C62C 80051E2C 4618103C */  c.lt.s     $f2, $f24
/* C630 80051E30 00000000 */  nop
/* C634 80051E34 45020017 */  bc1fl      .L80051E94
/* C638 80051E38 90430001 */   lbu       $v1, 0x1($v0)
/* C63C 80051E3C 46006281 */  sub.s      $f10, $f12, $f0
/* C640 80051E40 C4860010 */  lwc1       $f6, 0x10($a0)
/* C644 80051E44 46127101 */  sub.s      $f4, $f14, $f18
/* C648 80051E48 46065202 */  mul.s      $f8, $f10, $f6
/* C64C 80051E4C C48A0014 */  lwc1       $f10, 0x14($a0)
/* C650 80051E50 460A2182 */  mul.s      $f6, $f4, $f10
/* C654 80051E54 46064500 */  add.s      $f20, $f8, $f6
/* C658 80051E58 4614B03C */  c.lt.s     $f22, $f20
/* C65C 80051E5C 00000000 */  nop
/* C660 80051E60 4502000C */  bc1fl      .L80051E94
/* C664 80051E64 90430001 */   lbu       $v1, 0x1($v0)
/* C668 80051E68 C4840018 */  lwc1       $f4, 0x18($a0)
/* C66C 80051E6C 4604A03C */  c.lt.s     $f20, $f4
/* C670 80051E70 00000000 */  nop
/* C674 80051E74 45020007 */  bc1fl      .L80051E94
/* C678 80051E78 90430001 */   lbu       $v1, 0x1($v0)
/* C67C 80051E7C E4D00000 */  swc1       $f16, 0x0($a2)
/* C680 80051E80 C48A000C */  lwc1       $f10, 0xC($a0)
/* C684 80051E84 46001006 */  mov.s      $f0, $f2
/* C688 80051E88 10000007 */  b          .L80051EA8
/* C68C 80051E8C E4EA0000 */   swc1      $f10, 0x0($a3)
.L80051E90:
/* C690 80051E90 90430001 */  lbu        $v1, 0x1($v0)
.L80051E94:
/* C694 80051E94 24420001 */  addiu      $v0, $v0, 0x1
/* C698 80051E98 5460FFD5 */  bnel       $v1, $zero, .L80051DF0
/* C69C 80051E9C 00036940 */   sll       $t5, $v1, 5
/* C6A0 80051EA0 44800000 */  mtc1       $zero, $f0
.L80051EA4:
/* C6A4 80051EA4 00000000 */  nop
.L80051EA8:
/* C6A8 80051EA8 D7B40008 */  ldc1       $f20, 0x8($sp)
.L80051EAC:
/* C6AC 80051EAC D7B60010 */  ldc1       $f22, 0x10($sp)
/* C6B0 80051EB0 D7B80018 */  ldc1       $f24, 0x18($sp)
/* C6B4 80051EB4 03E00008 */  jr         $ra
/* C6B8 80051EB8 27BD0020 */   addiu     $sp, $sp, 0x20
/* C6BC 80051EBC 00000000 */  nop
