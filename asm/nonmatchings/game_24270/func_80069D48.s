glabel func_80069D48
/* 24548 80069D48 00047880 */  sll        $t7, $a0, 2
/* 2454C 80069D4C 01E47821 */  addu       $t7, $t7, $a0
/* 24550 80069D50 3C188015 */  lui        $t8, %hi(D_80154308)
/* 24554 80069D54 27184308 */  addiu      $t8, $t8, %lo(D_80154308)
/* 24558 80069D58 000F7840 */  sll        $t7, $t7, 1
/* 2455C 80069D5C 01F81021 */  addu       $v0, $t7, $t8
/* 24560 80069D60 3C03801B */  lui        $v1, %hi(D_801AE958)
/* 24564 80069D64 2463E958 */  addiu      $v1, $v1, %lo(D_801AE958)
/* 24568 80069D68 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2456C 80069D6C AFA40018 */  sw         $a0, 0x18($sp)
/* 24570 80069D70 94590000 */  lhu        $t9, 0x0($v0)
/* 24574 80069D74 94480002 */  lhu        $t0, 0x2($v0)
/* 24578 80069D78 94490006 */  lhu        $t1, 0x6($v0)
/* 2457C 80069D7C 80440008 */  lb         $a0, 0x8($v0)
/* 24580 80069D80 80450009 */  lb         $a1, 0x9($v0)
/* 24584 80069D84 AFBF0014 */  sw         $ra, 0x14($sp)
/* 24588 80069D88 3C06801B */  lui        $a2, %hi(D_801AE96C)
/* 2458C 80069D8C 3C07801B */  lui        $a3, %hi(D_801AE970)
/* 24590 80069D90 24E7E970 */  addiu      $a3, $a3, %lo(D_801AE970)
/* 24594 80069D94 24C6E96C */  addiu      $a2, $a2, %lo(D_801AE96C)
/* 24598 80069D98 AC790000 */  sw         $t9, 0x0($v1)
/* 2459C 80069D9C AC680004 */  sw         $t0, 0x4($v1)
/* 245A0 80069DA0 AC690008 */  sw         $t1, 0x8($v1)
/* 245A4 80069DA4 AC64000C */  sw         $a0, 0xC($v1)
/* 245A8 80069DA8 0C01A69C */  jal        func_80069A70
/* 245AC 80069DAC AC650010 */   sw        $a1, 0x10($v1)
/* 245B0 80069DB0 3C01801B */  lui        $at, %hi(D_801AE96C)
/* 245B4 80069DB4 C420E96C */  lwc1       $f0, %lo(D_801AE96C)($at)
/* 245B8 80069DB8 3C01801B */  lui        $at, %hi(D_801AE970)
/* 245BC 80069DBC C422E970 */  lwc1       $f2, %lo(D_801AE970)($at)
/* 245C0 80069DC0 46000102 */  mul.s      $f4, $f0, $f0
/* 245C4 80069DC4 00000000 */  nop
/* 245C8 80069DC8 46021182 */  mul.s      $f6, $f2, $f2
/* 245CC 80069DCC 0C031C04 */  jal        sqrtf
/* 245D0 80069DD0 46062300 */   add.s     $f12, $f4, $f6
/* 245D4 80069DD4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 245D8 80069DD8 3C01801B */  lui        $at, %hi(D_801AE974)
/* 245DC 80069DDC E420E974 */  swc1       $f0, %lo(D_801AE974)($at)
/* 245E0 80069DE0 03E00008 */  jr         $ra
/* 245E4 80069DE4 27BD0018 */   addiu     $sp, $sp, 0x18
