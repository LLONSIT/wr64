glabel func_80088D94
/* 43594 80088D94 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 43598 80088D98 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 4359C 80088D9C 4486A000 */  mtc1       $a2, $f20
/* 435A0 80088DA0 C7A40050 */  lwc1       $f4, 0x50($sp)
/* 435A4 80088DA4 AFA7004C */  sw         $a3, 0x4C($sp)
/* 435A8 80088DA8 AFBF001C */  sw         $ra, 0x1C($sp)
/* 435AC 80088DAC 4604A032 */  c.eq.s     $f20, $f4
/* 435B0 80088DB0 E7AC0040 */  swc1       $f12, 0x40($sp)
/* 435B4 80088DB4 E7AE0044 */  swc1       $f14, 0x44($sp)
/* 435B8 80088DB8 C7B0004C */  lwc1       $f16, 0x4C($sp)
/* 435BC 80088DBC 4500000E */  bc1f       .L80088DF8
/* 435C0 80088DC0 C7AA0054 */   lwc1      $f10, 0x54($sp)
/* 435C4 80088DC4 C7A60040 */  lwc1       $f6, 0x40($sp)
/* 435C8 80088DC8 C7A80040 */  lwc1       $f8, 0x40($sp)
/* 435CC 80088DCC 4606A03E */  c.le.s     $f20, $f6
/* 435D0 80088DD0 00000000 */  nop
/* 435D4 80088DD4 45020005 */  bc1fl      .L80088DEC
/* 435D8 80088DD8 46144081 */   sub.s     $f2, $f8, $f20
/* 435DC 80088DDC 46143081 */  sub.s      $f2, $f6, $f20
/* 435E0 80088DE0 10000027 */  b          .L80088E80
/* 435E4 80088DE4 46001006 */   mov.s     $f0, $f2
/* 435E8 80088DE8 46144081 */  sub.s      $f2, $f8, $f20
.L80088DEC:
/* 435EC 80088DEC 46001087 */  neg.s      $f2, $f2
/* 435F0 80088DF0 10000023 */  b          .L80088E80
/* 435F4 80088DF4 46001006 */   mov.s     $f0, $f2
.L80088DF8:
/* 435F8 80088DF8 C7A40050 */  lwc1       $f4, 0x50($sp)
/* 435FC 80088DFC 46105481 */  sub.s      $f18, $f10, $f16
/* 43600 80088E00 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 43604 80088E04 44810000 */  mtc1       $at, $f0
/* 43608 80088E08 46142181 */  sub.s      $f6, $f4, $f20
/* 4360C 80088E0C 46069083 */  div.s      $f2, $f18, $f6
/* 43610 80088E10 46021202 */  mul.s      $f8, $f2, $f2
/* 43614 80088E14 E7A20024 */  swc1       $f2, 0x24($sp)
/* 43618 80088E18 46000282 */  mul.s      $f10, $f0, $f0
/* 4361C 80088E1C 0C031C04 */  jal        func_800C7010
/* 43620 80088E20 460A4300 */   add.s     $f12, $f8, $f10
/* 43624 80088E24 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 43628 80088E28 44818000 */  mtc1       $at, $f16
/* 4362C 80088E2C C7A40044 */  lwc1       $f4, 0x44($sp)
/* 43630 80088E30 C7A20024 */  lwc1       $f2, 0x24($sp)
/* 43634 80088E34 C7A60040 */  lwc1       $f6, 0x40($sp)
/* 43638 80088E38 46048482 */  mul.s      $f18, $f16, $f4
/* 4363C 80088E3C C7B0004C */  lwc1       $f16, 0x4C($sp)
/* 43640 80088E40 46000386 */  mov.s      $f14, $f0
/* 43644 80088E44 46061202 */  mul.s      $f8, $f2, $f6
/* 43648 80088E48 00000000 */  nop
/* 4364C 80088E4C 46141102 */  mul.s      $f4, $f2, $f20
/* 43650 80088E50 46124280 */  add.s      $f10, $f8, $f18
/* 43654 80088E54 44804000 */  mtc1       $zero, $f8
/* 43658 80088E58 46048181 */  sub.s      $f6, $f16, $f4
/* 4365C 80088E5C 46065300 */  add.s      $f12, $f10, $f6
/* 43660 80088E60 460C403E */  c.le.s     $f8, $f12
/* 43664 80088E64 00000000 */  nop
/* 43668 80088E68 45000003 */  bc1f       .L80088E78
/* 4366C 80088E6C 00000000 */   nop
/* 43670 80088E70 10000002 */  b          .L80088E7C
/* 43674 80088E74 46006086 */   mov.s     $f2, $f12
.L80088E78:
/* 43678 80088E78 46006087 */  neg.s      $f2, $f12
.L80088E7C:
/* 4367C 80088E7C 460E1003 */  div.s      $f0, $f2, $f14
.L80088E80:
/* 43680 80088E80 8FBF001C */  lw         $ra, 0x1C($sp)
/* 43684 80088E84 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 43688 80088E88 27BD0040 */  addiu      $sp, $sp, 0x40
/* 4368C 80088E8C 03E00008 */  jr         $ra
/* 43690 80088E90 00000000 */   nop
/* 43694 80088E94 00000000 */  nop
/* 43698 80088E98 00000000 */  nop
/* 4369C 80088E9C 00000000 */  nop
