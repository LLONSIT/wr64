glabel func_80067C6C
/* 2246C 80067C6C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 22470 80067C70 3C02801D */  lui        $v0, %hi(D_801CE638)
/* 22474 80067C74 8C42E638 */  lw         $v0, %lo(D_801CE638)($v0)
/* 22478 80067C78 3C078012 */  lui        $a3, %hi(D_8011EDE0)
/* 2247C 80067C7C 24E7EDE0 */  addiu      $a3, $a3, %lo(D_8011EDE0)
/* 22480 80067C80 AFBF0024 */  sw         $ra, 0x24($sp)
/* 22484 80067C84 AFB30020 */  sw         $s3, 0x20($sp)
/* 22488 80067C88 AFB2001C */  sw         $s2, 0x1C($sp)
/* 2248C 80067C8C AFB10018 */  sw         $s1, 0x18($sp)
/* 22490 80067C90 AFB00014 */  sw         $s0, 0x14($sp)
/* 22494 80067C94 10400007 */  beqz       $v0, .L80067CB4
/* 22498 80067C98 00E02025 */   or        $a0, $a3, $zero
/* 2249C 80067C9C 24030008 */  addiu      $v1, $zero, 0x8
/* 224A0 80067CA0 14620012 */  bne        $v1, $v0, .L80067CEC
/* 224A4 80067CA4 3C0E800E */   lui       $t6, %hi(D_800D8170)
/* 224A8 80067CA8 8DCE8170 */  lw         $t6, %lo(D_800D8170)($t6)
/* 224AC 80067CAC 24050001 */  addiu      $a1, $zero, 0x1
/* 224B0 80067CB0 10AE000E */  beq        $a1, $t6, .L80067CEC
.L80067CB4:
/* 224B4 80067CB4 3C13800D */   lui       $s3, %hi(D_800D48DC)
/* 224B8 80067CB8 267348DC */  addiu      $s3, $s3, %lo(D_800D48DC)
/* 224BC 80067CBC 8E660000 */  lw         $a2, 0x0($s3)
/* 224C0 80067CC0 00E02025 */  or         $a0, $a3, $zero
/* 224C4 80067CC4 0C019EFF */  jal        func_80067BFC
/* 224C8 80067CC8 00002825 */   or        $a1, $zero, $zero
/* 224CC 80067CCC 3C10800D */  lui        $s0, %hi(D_800D48E0)
/* 224D0 80067CD0 261048E0 */  addiu      $s0, $s0, %lo(D_800D48E0)
/* 224D4 80067CD4 8E060000 */  lw         $a2, 0x0($s0)
/* 224D8 80067CD8 00402025 */  or         $a0, $v0, $zero
/* 224DC 80067CDC 0C019EFF */  jal        func_80067BFC
/* 224E0 80067CE0 24050001 */   addiu     $a1, $zero, 0x1
/* 224E4 80067CE4 10000050 */  b          .L80067E28
/* 224E8 80067CE8 8FBF0024 */   lw        $ra, 0x24($sp)
.L80067CEC:
/* 224EC 80067CEC 3C0F801D */  lui        $t7, %hi(D_801CE64C)
/* 224F0 80067CF0 8DEFE64C */  lw         $t7, %lo(D_801CE64C)($t7)
/* 224F4 80067CF4 24010002 */  addiu      $at, $zero, 0x2
/* 224F8 80067CF8 24050001 */  addiu      $a1, $zero, 0x1
/* 224FC 80067CFC 11E10049 */  beq        $t7, $at, .L80067E24
/* 22500 80067D00 3C18800E */   lui       $t8, %hi(D_800DAB28)
/* 22504 80067D04 8F18AB28 */  lw         $t8, %lo(D_800DAB28)($t8)
/* 22508 80067D08 3C12801A */  lui        $s2, %hi(D_801982F0)
/* 2250C 80067D0C 265282F0 */  addiu      $s2, $s2, %lo(D_801982F0)
/* 22510 80067D10 50B80007 */  beql       $a1, $t8, .L80067D30
/* 22514 80067D14 8E480000 */   lw        $t0, 0x0($s2)
/* 22518 80067D18 14620026 */  bne        $v1, $v0, .L80067DB4
/* 2251C 80067D1C 3C19800E */   lui       $t9, %hi(D_800D8170)
/* 22520 80067D20 8F398170 */  lw         $t9, %lo(D_800D8170)($t9)
/* 22524 80067D24 14B90023 */  bne        $a1, $t9, .L80067DB4
/* 22528 80067D28 00000000 */   nop
/* 2252C 80067D2C 8E480000 */  lw         $t0, 0x0($s2)
.L80067D30:
/* 22530 80067D30 24110001 */  addiu      $s1, $zero, 0x1
/* 22534 80067D34 00008025 */  or         $s0, $zero, $zero
/* 22538 80067D38 1900003A */  blez       $t0, .L80067E24
/* 2253C 80067D3C 3C13800D */   lui       $s3, %hi(D_800D48DC)
/* 22540 80067D40 267348DC */  addiu      $s3, $s3, %lo(D_800D48DC)
/* 22544 80067D44 8E690000 */  lw         $t1, 0x0($s3)
.L80067D48:
/* 22548 80067D48 02003025 */  or         $a2, $s0, $zero
/* 2254C 80067D4C 02202825 */  or         $a1, $s1, $zero
/* 22550 80067D50 16090009 */  bne        $s0, $t1, .L80067D78
/* 22554 80067D54 00000000 */   nop
/* 22558 80067D58 0C019EFF */  jal        func_80067BFC
/* 2255C 80067D5C 00002825 */   or        $a1, $zero, $zero
/* 22560 80067D60 00402025 */  or         $a0, $v0, $zero
/* 22564 80067D64 00002825 */  or         $a1, $zero, $zero
/* 22568 80067D68 0C019EFF */  jal        func_80067BFC
/* 2256C 80067D6C 02003025 */   or        $a2, $s0, $zero
/* 22570 80067D70 10000009 */  b          .L80067D98
/* 22574 80067D74 00402025 */   or        $a0, $v0, $zero
.L80067D78:
/* 22578 80067D78 0C019EFF */  jal        func_80067BFC
/* 2257C 80067D7C 02003025 */   or        $a2, $s0, $zero
/* 22580 80067D80 00402025 */  or         $a0, $v0, $zero
/* 22584 80067D84 26250001 */  addiu      $a1, $s1, 0x1
/* 22588 80067D88 0C019EFF */  jal        func_80067BFC
/* 2258C 80067D8C 02003025 */   or        $a2, $s0, $zero
/* 22590 80067D90 00402025 */  or         $a0, $v0, $zero
/* 22594 80067D94 26310002 */  addiu      $s1, $s1, 0x2
.L80067D98:
/* 22598 80067D98 8E4A0000 */  lw         $t2, 0x0($s2)
/* 2259C 80067D9C 26100001 */  addiu      $s0, $s0, 0x1
/* 225A0 80067DA0 020A082A */  slt        $at, $s0, $t2
/* 225A4 80067DA4 5420FFE8 */  bnel       $at, $zero, .L80067D48
/* 225A8 80067DA8 8E690000 */   lw        $t1, 0x0($s3)
/* 225AC 80067DAC 1000001E */  b          .L80067E28
/* 225B0 80067DB0 8FBF0024 */   lw        $ra, 0x24($sp)
.L80067DB4:
/* 225B4 80067DB4 3C13800D */  lui        $s3, %hi(D_800D48DC)
/* 225B8 80067DB8 267348DC */  addiu      $s3, $s3, %lo(D_800D48DC)
/* 225BC 80067DBC 8E660000 */  lw         $a2, 0x0($s3)
/* 225C0 80067DC0 00E02025 */  or         $a0, $a3, $zero
/* 225C4 80067DC4 0C019EFF */  jal        func_80067BFC
/* 225C8 80067DC8 00002825 */   or        $a1, $zero, $zero
/* 225CC 80067DCC 3C10800D */  lui        $s0, %hi(D_800D48E0)
/* 225D0 80067DD0 261048E0 */  addiu      $s0, $s0, %lo(D_800D48E0)
/* 225D4 80067DD4 8E060000 */  lw         $a2, 0x0($s0)
/* 225D8 80067DD8 00402025 */  or         $a0, $v0, $zero
/* 225DC 80067DDC 0C019EFF */  jal        func_80067BFC
/* 225E0 80067DE0 24050001 */   addiu     $a1, $zero, 0x1
/* 225E4 80067DE4 00402025 */  or         $a0, $v0, $zero
/* 225E8 80067DE8 24050002 */  addiu      $a1, $zero, 0x2
/* 225EC 80067DEC 0C019EFF */  jal        func_80067BFC
/* 225F0 80067DF0 8E660000 */   lw        $a2, 0x0($s3)
/* 225F4 80067DF4 00402025 */  or         $a0, $v0, $zero
/* 225F8 80067DF8 24050003 */  addiu      $a1, $zero, 0x3
/* 225FC 80067DFC 0C019EFF */  jal        func_80067BFC
/* 22600 80067E00 8E060000 */   lw        $a2, 0x0($s0)
/* 22604 80067E04 00402025 */  or         $a0, $v0, $zero
/* 22608 80067E08 24050004 */  addiu      $a1, $zero, 0x4
/* 2260C 80067E0C 0C019EFF */  jal        func_80067BFC
/* 22610 80067E10 8E660000 */   lw        $a2, 0x0($s3)
/* 22614 80067E14 00402025 */  or         $a0, $v0, $zero
/* 22618 80067E18 24050005 */  addiu      $a1, $zero, 0x5
/* 2261C 80067E1C 0C019EFF */  jal        func_80067BFC
/* 22620 80067E20 8E060000 */   lw        $a2, 0x0($s0)
.L80067E24:
/* 22624 80067E24 8FBF0024 */  lw         $ra, 0x24($sp)
.L80067E28:
/* 22628 80067E28 8FB00014 */  lw         $s0, 0x14($sp)
/* 2262C 80067E2C 8FB10018 */  lw         $s1, 0x18($sp)
/* 22630 80067E30 8FB2001C */  lw         $s2, 0x1C($sp)
/* 22634 80067E34 8FB30020 */  lw         $s3, 0x20($sp)
/* 22638 80067E38 03E00008 */  jr         $ra
/* 2263C 80067E3C 27BD0028 */   addiu     $sp, $sp, 0x28
