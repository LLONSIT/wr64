glabel func_8006243C
/* 1CC3C 8006243C 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 1CC40 80062440 44856000 */  mtc1       $a1, $f12
/* 1CC44 80062444 F7B40008 */  sdc1       $f20, 0x8($sp)
/* 1CC48 80062448 24850210 */  addiu      $a1, $a0, 0x210
/* 1CC4C 8006244C 24820090 */  addiu      $v0, $a0, 0x90
/* 1CC50 80062450 4487A000 */  mtc1       $a3, $f20
/* 1CC54 80062454 44867000 */  mtc1       $a2, $f14
/* 1CC58 80062458 0045082B */  sltu       $at, $v0, $a1
/* 1CC5C 8006245C 10200018 */  beqz       $at, .L800624C0
/* 1CC60 80062460 24420020 */   addiu     $v0, $v0, 0x20
/* 1CC64 80062464 0045082B */  sltu       $at, $v0, $a1
/* 1CC68 80062468 1020000D */  beqz       $at, .L800624A0
/* 1CC6C 8006246C C452FFE0 */   lwc1      $f18, -0x20($v0)
.L80062470:
/* 1CC70 80062470 460C9400 */  add.s      $f16, $f18, $f12
/* 1CC74 80062474 C44AFFE4 */  lwc1       $f10, -0x1C($v0)
/* 1CC78 80062478 C448FFE8 */  lwc1       $f8, -0x18($v0)
/* 1CC7C 8006247C C4520000 */  lwc1       $f18, 0x0($v0)
/* 1CC80 80062480 460E5280 */  add.s      $f10, $f10, $f14
/* 1CC84 80062484 24420020 */  addiu      $v0, $v0, 0x20
/* 1CC88 80062488 0045082B */  sltu       $at, $v0, $a1
/* 1CC8C 8006248C 46144200 */  add.s      $f8, $f8, $f20
/* 1CC90 80062490 E450FFC0 */  swc1       $f16, -0x40($v0)
/* 1CC94 80062494 E44AFFC4 */  swc1       $f10, -0x3C($v0)
/* 1CC98 80062498 1420FFF5 */  bnez       $at, .L80062470
/* 1CC9C 8006249C E448FFC8 */   swc1      $f8, -0x38($v0)
.L800624A0:
/* 1CCA0 800624A0 C44AFFE4 */  lwc1       $f10, -0x1C($v0)
/* 1CCA4 800624A4 C448FFE8 */  lwc1       $f8, -0x18($v0)
/* 1CCA8 800624A8 460C9400 */  add.s      $f16, $f18, $f12
/* 1CCAC 800624AC 460E5280 */  add.s      $f10, $f10, $f14
/* 1CCB0 800624B0 E450FFE0 */  swc1       $f16, -0x20($v0)
/* 1CCB4 800624B4 46144200 */  add.s      $f8, $f8, $f20
/* 1CCB8 800624B8 E44AFFE4 */  swc1       $f10, -0x1C($v0)
/* 1CCBC 800624BC E448FFE8 */  swc1       $f8, -0x18($v0)
.L800624C0:
/* 1CCC0 800624C0 D7B40008 */  ldc1       $f20, 0x8($sp)
/* 1CCC4 800624C4 03E00008 */  jr         $ra
/* 1CCC8 800624C8 27BD0010 */   addiu     $sp, $sp, 0x10
