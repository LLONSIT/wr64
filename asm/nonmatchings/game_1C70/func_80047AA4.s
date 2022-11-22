glabel func_80047AA4
/* 22A4 80047AA4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 22A8 80047AA8 AFBF001C */  sw         $ra, 0x1C($sp)
/* 22AC 80047AAC 0C031B78 */  jal        func_800C6DE0
/* 22B0 80047AB0 00000000 */   nop
/* 22B4 80047AB4 3C0E8015 */  lui        $t6, %hi(D_80151DE0)
/* 22B8 80047AB8 25CE1DE0 */  addiu      $t6, $t6, %lo(D_80151DE0)
/* 22BC 80047ABC 3C048015 */  lui        $a0, %hi(D_801539E0)
/* 22C0 80047AC0 3C068004 */  lui        $a2, %hi(func_8004791C)
/* 22C4 80047AC4 240F0064 */  addiu      $t7, $zero, 0x64
/* 22C8 80047AC8 AFAF0014 */  sw         $t7, 0x14($sp)
/* 22CC 80047ACC 24C6791C */  addiu      $a2, $a2, %lo(func_8004791C)
/* 22D0 80047AD0 248439E0 */  addiu      $a0, $a0, %lo(D_801539E0)
/* 22D4 80047AD4 AFAE0010 */  sw         $t6, 0x10($sp)
/* 22D8 80047AD8 24050001 */  addiu      $a1, $zero, 0x1
/* 22DC 80047ADC 0C031908 */  jal        osCreateThread
/* 22E0 80047AE0 00003825 */   or        $a3, $zero, $zero
/* 22E4 80047AE4 3C048015 */  lui        $a0, %hi(D_801539E0)
/* 22E8 80047AE8 0C03195C */  jal        func_800C6570
/* 22EC 80047AEC 248439E0 */   addiu     $a0, $a0, %lo(D_801539E0)
/* 22F0 80047AF0 8FBF001C */  lw         $ra, 0x1C($sp)
/* 22F4 80047AF4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 22F8 80047AF8 03E00008 */  jr         $ra
/* 22FC 80047AFC 00000000 */   nop
