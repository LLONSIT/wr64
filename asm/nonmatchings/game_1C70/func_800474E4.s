glabel func_800474E4
/* 1CE4 800474E4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1CE8 800474E8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1CEC 800474EC 0C0318C0 */  jal        func_800C6300
/* 1CF0 800474F0 240403C0 */   addiu     $a0, $zero, 0x3C0
/* 1CF4 800474F4 3C048015 */  lui        $a0, %hi(D_801542B4)
/* 1CF8 800474F8 0C031857 */  jal        func_800C615C
/* 1CFC 800474FC 8C8442B4 */   lw        $a0, %lo(D_801542B4)($a0)
/* 1D00 80047500 3C048015 */  lui        $a0, %hi(D_801542B4)
/* 1D04 80047504 0C0318AF */  jal        func_800C62BC
/* 1D08 80047508 8C8442B4 */   lw        $a0, %lo(D_801542B4)($a0)
/* 1D0C 8004750C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1D10 80047510 240E0003 */  addiu      $t6, $zero, 0x3
/* 1D14 80047514 3C01800D */  lui        $at, %hi(D_800D4600)
/* 1D18 80047518 AC2E4600 */  sw         $t6, %lo(D_800D4600)($at)
/* 1D1C 8004751C 3C01800D */  lui        $at, %hi(D_800D4604)
/* 1D20 80047520 240F0001 */  addiu      $t7, $zero, 0x1
/* 1D24 80047524 AC2F4604 */  sw         $t7, %lo(D_800D4604)($at)
/* 1D28 80047528 03E00008 */  jr         $ra
/* 1D2C 8004752C 27BD0018 */   addiu     $sp, $sp, 0x18
