.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800C6020
/* 80820 800C6020 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 80824 800C6024 AFBF0014 */  sw         $ra, 0x14($sp)
/* 80828 800C6028 0C032E9C */  jal        func_800CBA70
/* 8082C 800C602C 24040400 */   addiu     $a0, $zero, 0x400
/* 80830 800C6030 8FBF0014 */  lw         $ra, 0x14($sp)
/* 80834 800C6034 27BD0018 */  addiu      $sp, $sp, 0x18
/* 80838 800C6038 03E00008 */  jr         $ra
/* 8083C 800C603C 00000000 */   nop

glabel func_800C6040
/* 80840 800C6040 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 80844 800C6044 3C0E801E */  lui        $t6, %hi(D_801D86B0)
/* 80848 800C6048 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8084C 800C604C AFA40020 */  sw         $a0, 0x20($sp)
/* 80850 800C6050 25CE86B0 */  addiu      $t6, $t6, %lo(D_801D86B0)
/* 80854 800C6054 AFAE001C */  sw         $t6, 0x1C($sp)
/* 80858 800C6058 01C02825 */  or         $a1, $t6, $zero
/* 8085C 800C605C 8FA40020 */  lw         $a0, 0x20($sp)
/* 80860 800C6060 0C032EA0 */  jal        func_800CBA80
/* 80864 800C6064 24060040 */   addiu     $a2, $zero, 0x40
/* 80868 800C6068 8FAF001C */  lw         $t7, 0x1C($sp)
/* 8086C 800C606C 8DF80010 */  lw         $t8, 0x10($t7)
/* 80870 800C6070 13000005 */  beqz       $t8, .L800C6088
/* 80874 800C6074 00000000 */   nop
/* 80878 800C6078 0C0315C8 */  jal        osVirtualToPhysical
/* 8087C 800C607C 03002025 */   or        $a0, $t8, $zero
/* 80880 800C6080 8FB9001C */  lw         $t9, 0x1C($sp)
/* 80884 800C6084 AF220010 */  sw         $v0, 0x10($t9)
.L800C6088:
/* 80888 800C6088 8FA8001C */  lw         $t0, 0x1C($sp)
/* 8088C 800C608C 8D090018 */  lw         $t1, 0x18($t0)
/* 80890 800C6090 11200005 */  beqz       $t1, .L800C60A8
/* 80894 800C6094 00000000 */   nop
/* 80898 800C6098 0C0315C8 */  jal        osVirtualToPhysical
/* 8089C 800C609C 01202025 */   or        $a0, $t1, $zero
/* 808A0 800C60A0 8FAA001C */  lw         $t2, 0x1C($sp)
/* 808A4 800C60A4 AD420018 */  sw         $v0, 0x18($t2)
.L800C60A8:
/* 808A8 800C60A8 8FAB001C */  lw         $t3, 0x1C($sp)
/* 808AC 800C60AC 8D6C0020 */  lw         $t4, 0x20($t3)
/* 808B0 800C60B0 11800005 */  beqz       $t4, .L800C60C8
/* 808B4 800C60B4 00000000 */   nop
/* 808B8 800C60B8 0C0315C8 */  jal        osVirtualToPhysical
/* 808BC 800C60BC 01802025 */   or        $a0, $t4, $zero
/* 808C0 800C60C0 8FAD001C */  lw         $t5, 0x1C($sp)
/* 808C4 800C60C4 ADA20020 */  sw         $v0, 0x20($t5)
.L800C60C8:
/* 808C8 800C60C8 8FAE001C */  lw         $t6, 0x1C($sp)
/* 808CC 800C60CC 8DCF0028 */  lw         $t7, 0x28($t6)
/* 808D0 800C60D0 11E00005 */  beqz       $t7, .L800C60E8
/* 808D4 800C60D4 00000000 */   nop
/* 808D8 800C60D8 0C0315C8 */  jal        osVirtualToPhysical
/* 808DC 800C60DC 01E02025 */   or        $a0, $t7, $zero
/* 808E0 800C60E0 8FB8001C */  lw         $t8, 0x1C($sp)
/* 808E4 800C60E4 AF020028 */  sw         $v0, 0x28($t8)
.L800C60E8:
/* 808E8 800C60E8 8FB9001C */  lw         $t9, 0x1C($sp)
/* 808EC 800C60EC 8F28002C */  lw         $t0, 0x2C($t9)
/* 808F0 800C60F0 11000005 */  beqz       $t0, .L800C6108
/* 808F4 800C60F4 00000000 */   nop
/* 808F8 800C60F8 0C0315C8 */  jal        osVirtualToPhysical
/* 808FC 800C60FC 01002025 */   or        $a0, $t0, $zero
/* 80900 800C6100 8FA9001C */  lw         $t1, 0x1C($sp)
/* 80904 800C6104 AD22002C */  sw         $v0, 0x2C($t1)
.L800C6108:
/* 80908 800C6108 8FAA001C */  lw         $t2, 0x1C($sp)
/* 8090C 800C610C 8D4B0030 */  lw         $t3, 0x30($t2)
/* 80910 800C6110 11600005 */  beqz       $t3, .L800C6128
/* 80914 800C6114 00000000 */   nop
/* 80918 800C6118 0C0315C8 */  jal        osVirtualToPhysical
/* 8091C 800C611C 01602025 */   or        $a0, $t3, $zero
/* 80920 800C6120 8FAC001C */  lw         $t4, 0x1C($sp)
/* 80924 800C6124 AD820030 */  sw         $v0, 0x30($t4)
.L800C6128:
/* 80928 800C6128 8FAD001C */  lw         $t5, 0x1C($sp)
/* 8092C 800C612C 8DAE0038 */  lw         $t6, 0x38($t5)
/* 80930 800C6130 11C00005 */  beqz       $t6, .L800C6148
/* 80934 800C6134 00000000 */   nop
/* 80938 800C6138 0C0315C8 */  jal        osVirtualToPhysical
/* 8093C 800C613C 01C02025 */   or        $a0, $t6, $zero
/* 80940 800C6140 8FAF001C */  lw         $t7, 0x1C($sp)
/* 80944 800C6144 ADE20038 */  sw         $v0, 0x38($t7)
.L800C6148:
/* 80948 800C6148 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8094C 800C614C 8FA2001C */  lw         $v0, 0x1C($sp)
/* 80950 800C6150 27BD0020 */  addiu      $sp, $sp, 0x20
/* 80954 800C6154 03E00008 */  jr         $ra
/* 80958 800C6158 00000000 */   nop

glabel func_800C615C
/* 8095C 800C615C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 80960 800C6160 AFBF0014 */  sw         $ra, 0x14($sp)
/* 80964 800C6164 AFA40020 */  sw         $a0, 0x20($sp)
/* 80968 800C6168 0C031810 */  jal        func_800C6040
/* 8096C 800C616C 8FA40020 */   lw        $a0, 0x20($sp)
/* 80970 800C6170 AFA2001C */  sw         $v0, 0x1C($sp)
/* 80974 800C6174 8FAE001C */  lw         $t6, 0x1C($sp)
/* 80978 800C6178 8DCF0004 */  lw         $t7, 0x4($t6)
/* 8097C 800C617C 31F80001 */  andi       $t8, $t7, 0x1
/* 80980 800C6180 1300000B */  beqz       $t8, .L800C61B0
/* 80984 800C6184 00000000 */   nop
/* 80988 800C6188 8DD90038 */  lw         $t9, 0x38($t6)
/* 8098C 800C618C 2401FFFE */  addiu      $at, $zero, -0x2
/* 80990 800C6190 ADD90018 */  sw         $t9, 0x18($t6)
/* 80994 800C6194 8FA8001C */  lw         $t0, 0x1C($sp)
/* 80998 800C6198 8D09003C */  lw         $t1, 0x3C($t0)
/* 8099C 800C619C AD09001C */  sw         $t1, 0x1C($t0)
/* 809A0 800C61A0 8FAA0020 */  lw         $t2, 0x20($sp)
/* 809A4 800C61A4 8D4B0004 */  lw         $t3, 0x4($t2)
/* 809A8 800C61A8 01616024 */  and        $t4, $t3, $at
/* 809AC 800C61AC AD4C0004 */  sw         $t4, 0x4($t2)
.L800C61B0:
/* 809B0 800C61B0 8FA4001C */  lw         $a0, 0x1C($sp)
/* 809B4 800C61B4 0C032F64 */  jal        func_800CBD90
/* 809B8 800C61B8 24050040 */   addiu     $a1, $zero, 0x40
/* 809BC 800C61BC 0C032E9C */  jal        func_800CBA70
/* 809C0 800C61C0 24042B00 */   addiu     $a0, $zero, 0x2B00
/* 809C4 800C61C4 3C040400 */  lui        $a0, (0x4001000 >> 16)
/* 809C8 800C61C8 0C032F84 */  jal        func_800CBE10
/* 809CC 800C61CC 34841000 */   ori       $a0, $a0, (0x4001000 & 0xFFFF)
/* 809D0 800C61D0 2401FFFF */  addiu      $at, $zero, -0x1
/* 809D4 800C61D4 14410007 */  bne        $v0, $at, .L800C61F4
/* 809D8 800C61D8 00000000 */   nop
.L800C61DC:
/* 809DC 800C61DC 3C040400 */  lui        $a0, (0x4001000 >> 16)
/* 809E0 800C61E0 0C032F84 */  jal        func_800CBE10
/* 809E4 800C61E4 34841000 */   ori       $a0, $a0, (0x4001000 & 0xFFFF)
/* 809E8 800C61E8 2401FFFF */  addiu      $at, $zero, -0x1
/* 809EC 800C61EC 1041FFFB */  beq        $v0, $at, .L800C61DC
/* 809F0 800C61F0 00000000 */   nop
.L800C61F4:
/* 809F4 800C61F4 3C050400 */  lui        $a1, (0x4000FC0 >> 16)
/* 809F8 800C61F8 34A50FC0 */  ori        $a1, $a1, (0x4000FC0 & 0xFFFF)
/* 809FC 800C61FC 24040001 */  addiu      $a0, $zero, 0x1
/* 80A00 800C6200 8FA6001C */  lw         $a2, 0x1C($sp)
/* 80A04 800C6204 0C032F94 */  jal        func_800CBE50
/* 80A08 800C6208 24070040 */   addiu     $a3, $zero, 0x40
/* 80A0C 800C620C 2401FFFF */  addiu      $at, $zero, -0x1
/* 80A10 800C6210 1441000A */  bne        $v0, $at, .L800C623C
/* 80A14 800C6214 00000000 */   nop
.L800C6218:
/* 80A18 800C6218 3C050400 */  lui        $a1, (0x4000FC0 >> 16)
/* 80A1C 800C621C 34A50FC0 */  ori        $a1, $a1, (0x4000FC0 & 0xFFFF)
/* 80A20 800C6220 24040001 */  addiu      $a0, $zero, 0x1
/* 80A24 800C6224 8FA6001C */  lw         $a2, 0x1C($sp)
/* 80A28 800C6228 0C032F94 */  jal        func_800CBE50
/* 80A2C 800C622C 24070040 */   addiu     $a3, $zero, 0x40
/* 80A30 800C6230 2401FFFF */  addiu      $at, $zero, -0x1
/* 80A34 800C6234 1041FFF8 */  beq        $v0, $at, .L800C6218
/* 80A38 800C6238 00000000 */   nop
.L800C623C:
/* 80A3C 800C623C 0C032FB8 */  jal        func_800CBEE0
/* 80A40 800C6240 00000000 */   nop
/* 80A44 800C6244 10400005 */  beqz       $v0, .L800C625C
/* 80A48 800C6248 00000000 */   nop
.L800C624C:
/* 80A4C 800C624C 0C032FB8 */  jal        func_800CBEE0
/* 80A50 800C6250 00000000 */   nop
/* 80A54 800C6254 1440FFFD */  bnez       $v0, .L800C624C
/* 80A58 800C6258 00000000 */   nop
.L800C625C:
/* 80A5C 800C625C 8FAD001C */  lw         $t5, 0x1C($sp)
/* 80A60 800C6260 3C050400 */  lui        $a1, (0x4001000 >> 16)
/* 80A64 800C6264 34A51000 */  ori        $a1, $a1, (0x4001000 & 0xFFFF)
/* 80A68 800C6268 24040001 */  addiu      $a0, $zero, 0x1
/* 80A6C 800C626C 8DA60008 */  lw         $a2, 0x8($t5)
/* 80A70 800C6270 0C032F94 */  jal        func_800CBE50
/* 80A74 800C6274 8DA7000C */   lw        $a3, 0xC($t5)
/* 80A78 800C6278 2401FFFF */  addiu      $at, $zero, -0x1
/* 80A7C 800C627C 1441000B */  bne        $v0, $at, .L800C62AC
/* 80A80 800C6280 00000000 */   nop
.L800C6284:
/* 80A84 800C6284 8FAF001C */  lw         $t7, 0x1C($sp)
/* 80A88 800C6288 3C050400 */  lui        $a1, (0x4001000 >> 16)
/* 80A8C 800C628C 34A51000 */  ori        $a1, $a1, (0x4001000 & 0xFFFF)
/* 80A90 800C6290 24040001 */  addiu      $a0, $zero, 0x1
/* 80A94 800C6294 8DE60008 */  lw         $a2, 0x8($t7)
/* 80A98 800C6298 0C032F94 */  jal        func_800CBE50
/* 80A9C 800C629C 8DE7000C */   lw        $a3, 0xC($t7)
/* 80AA0 800C62A0 2401FFFF */  addiu      $at, $zero, -0x1
/* 80AA4 800C62A4 1041FFF7 */  beq        $v0, $at, .L800C6284
/* 80AA8 800C62A8 00000000 */   nop
.L800C62AC:
/* 80AAC 800C62AC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 80AB0 800C62B0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 80AB4 800C62B4 03E00008 */  jr         $ra
/* 80AB8 800C62B8 00000000 */   nop

glabel func_800C62BC
/* 80ABC 800C62BC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 80AC0 800C62C0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 80AC4 800C62C4 0C032FB8 */  jal        func_800CBEE0
/* 80AC8 800C62C8 AFA40018 */   sw        $a0, 0x18($sp)
/* 80ACC 800C62CC 10400005 */  beqz       $v0, .L800C62E4
/* 80AD0 800C62D0 00000000 */   nop
.L800C62D4:
/* 80AD4 800C62D4 0C032FB8 */  jal        func_800CBEE0
/* 80AD8 800C62D8 00000000 */   nop
/* 80ADC 800C62DC 1440FFFD */  bnez       $v0, .L800C62D4
/* 80AE0 800C62E0 00000000 */   nop
.L800C62E4:
/* 80AE4 800C62E4 0C032E9C */  jal        func_800CBA70
/* 80AE8 800C62E8 24040125 */   addiu     $a0, $zero, 0x125
/* 80AEC 800C62EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 80AF0 800C62F0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 80AF4 800C62F4 03E00008 */  jr         $ra
/* 80AF8 800C62F8 00000000 */   nop
/* 80AFC 800C62FC 00000000 */  nop
