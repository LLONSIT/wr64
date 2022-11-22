glabel func_800474A0
/* 1CA0 800474A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1CA4 800474A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1CA8 800474A8 3C048015 */  lui        $a0, %hi(D_801542B8)
/* 1CAC 800474AC 0C031857 */  jal        func_800C615C
/* 1CB0 800474B0 8C8442B8 */   lw        $a0, %lo(D_801542B8)($a0)
/* 1CB4 800474B4 3C048015 */  lui        $a0, %hi(D_801542B8)
/* 1CB8 800474B8 0C0318AF */  jal        func_800C62BC
/* 1CBC 800474BC 8C8442B8 */   lw        $a0, %lo(D_801542B8)($a0)
/* 1CC0 800474C0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1CC4 800474C4 240E0002 */  addiu      $t6, $zero, 0x2
/* 1CC8 800474C8 3C01800D */  lui        $at, %hi(D_800D4600)
/* 1CCC 800474CC AC2E4600 */  sw         $t6, %lo(D_800D4600)($at)
/* 1CD0 800474D0 3C01800D */  lui        $at, %hi(D_800D4604)
/* 1CD4 800474D4 240F0001 */  addiu      $t7, $zero, 0x1
/* 1CD8 800474D8 AC2F4604 */  sw         $t7, %lo(D_800D4604)($at)
/* 1CDC 800474DC 03E00008 */  jr         $ra
/* 1CE0 800474E0 27BD0018 */   addiu     $sp, $sp, 0x18
