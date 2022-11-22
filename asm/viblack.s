.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800C6AD0
/* 812D0 800C6AD0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 812D4 800C6AD4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 812D8 800C6AD8 AFA40028 */  sw         $a0, 0x28($sp)
/* 812DC 800C6ADC 0C032AB4 */  jal        __osDisableInt
/* 812E0 800C6AE0 AFB00018 */   sw        $s0, 0x18($sp)
/* 812E4 800C6AE4 93AE002B */  lbu        $t6, 0x2B($sp)
/* 812E8 800C6AE8 00408025 */  or         $s0, $v0, $zero
/* 812EC 800C6AEC 11C00007 */  beqz       $t6, .L800C6B0C
/* 812F0 800C6AF0 00000000 */   nop
/* 812F4 800C6AF4 3C0F800F */  lui        $t7, %hi(D_800E90B4)
/* 812F8 800C6AF8 8DEF90B4 */  lw         $t7, %lo(D_800E90B4)($t7)
/* 812FC 800C6AFC 95F80000 */  lhu        $t8, 0x0($t7)
/* 81300 800C6B00 37190020 */  ori        $t9, $t8, 0x20
/* 81304 800C6B04 10000007 */  b          .L800C6B24
/* 81308 800C6B08 A5F90000 */   sh        $t9, 0x0($t7)
.L800C6B0C:
/* 8130C 800C6B0C 3C08800F */  lui        $t0, %hi(D_800E90B4)
/* 81310 800C6B10 8D0890B4 */  lw         $t0, %lo(D_800E90B4)($t0)
/* 81314 800C6B14 2401FFDF */  addiu      $at, $zero, -0x21
/* 81318 800C6B18 95090000 */  lhu        $t1, 0x0($t0)
/* 8131C 800C6B1C 01215024 */  and        $t2, $t1, $at
/* 81320 800C6B20 A50A0000 */  sh         $t2, 0x0($t0)
.L800C6B24:
/* 81324 800C6B24 0C032ABC */  jal        __osRestoreInt
/* 81328 800C6B28 02002025 */   or        $a0, $s0, $zero
/* 8132C 800C6B2C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 81330 800C6B30 8FB00018 */  lw         $s0, 0x18($sp)
/* 81334 800C6B34 27BD0028 */  addiu      $sp, $sp, 0x28
/* 81338 800C6B38 03E00008 */  jr         $ra
/* 8133C 800C6B3C 00000000 */   nop

glabel func_800C6B40
/* 81340 800C6B40 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 81344 800C6B44 AFBF001C */  sw         $ra, 0x1C($sp)
/* 81348 800C6B48 0C032AB4 */  jal        __osDisableInt
/* 8134C 800C6B4C AFB00018 */   sw        $s0, 0x18($sp)
/* 81350 800C6B50 3C0E800F */  lui        $t6, %hi(D_800E90B0)
/* 81354 800C6B54 8DCE90B0 */  lw         $t6, %lo(D_800E90B0)($t6)
/* 81358 800C6B58 00408025 */  or         $s0, $v0, $zero
/* 8135C 800C6B5C 02002025 */  or         $a0, $s0, $zero
/* 81360 800C6B60 8DCF0004 */  lw         $t7, 0x4($t6)
/* 81364 800C6B64 0C032ABC */  jal        __osRestoreInt
/* 81368 800C6B68 AFAF0020 */   sw        $t7, 0x20($sp)
/* 8136C 800C6B6C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 81370 800C6B70 8FA20020 */  lw         $v0, 0x20($sp)
/* 81374 800C6B74 8FB00018 */  lw         $s0, 0x18($sp)
/* 81378 800C6B78 03E00008 */  jr         $ra
/* 8137C 800C6B7C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800C6B80
/* 81380 800C6B80 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 81384 800C6B84 3C0E800F */  lui        $t6, %hi(D_800E8FB0)
/* 81388 800C6B88 8DCE8FB0 */  lw         $t6, %lo(D_800E8FB0)($t6)
/* 8138C 800C6B8C AFBF001C */  sw         $ra, 0x1C($sp)
/* 81390 800C6B90 AFA40030 */  sw         $a0, 0x30($sp)
/* 81394 800C6B94 AFA50034 */  sw         $a1, 0x34($sp)
/* 81398 800C6B98 AFA60038 */  sw         $a2, 0x38($sp)
/* 8139C 800C6B9C 15C00053 */  bnez       $t6, .L800C6CEC
/* 813A0 800C6BA0 AFA7003C */   sw        $a3, 0x3C($sp)
/* 813A4 800C6BA4 8FA40034 */  lw         $a0, 0x34($sp)
/* 813A8 800C6BA8 8FA50038 */  lw         $a1, 0x38($sp)
/* 813AC 800C6BAC 0C0318C4 */  jal        osCreateMesgQueue
/* 813B0 800C6BB0 8FA6003C */   lw        $a2, 0x3C($sp)
/* 813B4 800C6BB4 3C04801E */  lui        $a0, %hi(D_801DAB30)
/* 813B8 800C6BB8 3C05801E */  lui        $a1, %hi(D_801DAB48)
/* 813BC 800C6BBC 24A5AB48 */  addiu      $a1, $a1, %lo(D_801DAB48)
/* 813C0 800C6BC0 2484AB30 */  addiu      $a0, $a0, %lo(D_801DAB30)
/* 813C4 800C6BC4 0C0318C4 */  jal        osCreateMesgQueue
/* 813C8 800C6BC8 24060001 */   addiu     $a2, $zero, 0x1
/* 813CC 800C6BCC 3C0F800F */  lui        $t7, %hi(D_800E90D0)
/* 813D0 800C6BD0 8DEF90D0 */  lw         $t7, %lo(D_800E90D0)($t7)
/* 813D4 800C6BD4 15E00003 */  bnez       $t7, .L800C6BE4
/* 813D8 800C6BD8 00000000 */   nop
/* 813DC 800C6BDC 0C0330AC */  jal        func_800CC2B0
/* 813E0 800C6BE0 00000000 */   nop
.L800C6BE4:
/* 813E4 800C6BE4 3C05801E */  lui        $a1, %hi(D_801DAB30)
/* 813E8 800C6BE8 3C062222 */  lui        $a2, (0x22222222 >> 16)
/* 813EC 800C6BEC 34C62222 */  ori        $a2, $a2, (0x22222222 & 0xFFFF)
/* 813F0 800C6BF0 24A5AB30 */  addiu      $a1, $a1, %lo(D_801DAB30)
/* 813F4 800C6BF4 0C0318D0 */  jal        osSetEventMesg
/* 813F8 800C6BF8 24040008 */   addiu     $a0, $zero, 0x8
/* 813FC 800C6BFC 2418FFFF */  addiu      $t8, $zero, -0x1
/* 81400 800C6C00 AFB80028 */  sw         $t8, 0x28($sp)
/* 81404 800C6C04 0C032FC8 */  jal        func_800CBF20
/* 81408 800C6C08 00002025 */   or        $a0, $zero, $zero
/* 8140C 800C6C0C AFA20024 */  sw         $v0, 0x24($sp)
/* 81410 800C6C10 8FB90024 */  lw         $t9, 0x24($sp)
/* 81414 800C6C14 8FA80030 */  lw         $t0, 0x30($sp)
/* 81418 800C6C18 0328082A */  slt        $at, $t9, $t0
/* 8141C 800C6C1C 10200005 */  beqz       $at, .L800C6C34
/* 81420 800C6C20 00000000 */   nop
/* 81424 800C6C24 AFB90028 */  sw         $t9, 0x28($sp)
/* 81428 800C6C28 00002025 */  or         $a0, $zero, $zero
/* 8142C 800C6C2C 0C031B40 */  jal        func_800C6D00
/* 81430 800C6C30 01002825 */   or        $a1, $t0, $zero
.L800C6C34:
/* 81434 800C6C34 0C032AB4 */  jal        __osDisableInt
/* 81438 800C6C38 00000000 */   nop
/* 8143C 800C6C3C 3C01800F */  lui        $at, %hi(D_800E8FB0)
/* 81440 800C6C40 8FAB0034 */  lw         $t3, 0x34($sp)
/* 81444 800C6C44 3C0A801E */  lui        $t2, %hi(D_801D9980)
/* 81448 800C6C48 3C0C801E */  lui        $t4, %hi(D_801DAB30)
/* 8144C 800C6C4C 24090001 */  addiu      $t1, $zero, 0x1
/* 81450 800C6C50 254A9980 */  addiu      $t2, $t2, %lo(D_801D9980)
/* 81454 800C6C54 258CAB30 */  addiu      $t4, $t4, %lo(D_801DAB30)
/* 81458 800C6C58 3C0F801E */  lui        $t7, %hi(D_801D9B30)
/* 8145C 800C6C5C 8FB90030 */  lw         $t9, 0x30($sp)
/* 81460 800C6C60 AC298FB0 */  sw         $t1, %lo(D_800E8FB0)($at)
/* 81464 800C6C64 AC2A8FB4 */  sw         $t2, %lo(D_800E8FB4)($at)
/* 81468 800C6C68 AC2C8FBC */  sw         $t4, %lo(D_800E8FBC)($at)
/* 8146C 800C6C6C 3C0D801E */  lui        $t5, %hi(D_801DAC98)
/* 81470 800C6C70 3C0E800D */  lui        $t6, %hi(func_800CC370)
/* 81474 800C6C74 25EF9B30 */  addiu      $t7, $t7, %lo(D_801D9B30)
/* 81478 800C6C78 AC2B8FB8 */  sw         $t3, %lo(D_800E8FB8)($at)
/* 8147C 800C6C7C 3C01800F */  lui        $at, %hi(D_800E8FC0)
/* 81480 800C6C80 25ADAC98 */  addiu      $t5, $t5, %lo(D_801DAC98)
/* 81484 800C6C84 25CEC370 */  addiu      $t6, $t6, %lo(func_800CC370)
/* 81488 800C6C88 25F81000 */  addiu      $t8, $t7, 0x1000
/* 8148C 800C6C8C 3C06800D */  lui        $a2, %hi(func_800CC450)
/* 81490 800C6C90 3C07800F */  lui        $a3, %hi(D_800E8FB0)
/* 81494 800C6C94 AFA2002C */  sw         $v0, 0x2C($sp)
/* 81498 800C6C98 AC2D8FC0 */  sw         $t5, %lo(D_800E8FC0)($at)
/* 8149C 800C6C9C AC2E8FC4 */  sw         $t6, %lo(D_800E8FC4)($at)
/* 814A0 800C6CA0 24E78FB0 */  addiu      $a3, $a3, %lo(D_800E8FB0)
/* 814A4 800C6CA4 24C6C450 */  addiu      $a2, $a2, %lo(func_800CC450)
/* 814A8 800C6CA8 AFB80010 */  sw         $t8, 0x10($sp)
/* 814AC 800C6CAC 01402025 */  or         $a0, $t2, $zero
/* 814B0 800C6CB0 00002825 */  or         $a1, $zero, $zero
/* 814B4 800C6CB4 0C031908 */  jal        osCreateThread
/* 814B8 800C6CB8 AFB90014 */   sw        $t9, 0x14($sp)
/* 814BC 800C6CBC 3C04801E */  lui        $a0, %hi(D_801D9980)
/* 814C0 800C6CC0 0C03195C */  jal        func_800C6570
/* 814C4 800C6CC4 24849980 */   addiu     $a0, $a0, %lo(D_801D9980)
/* 814C8 800C6CC8 0C032ABC */  jal        __osRestoreInt
/* 814CC 800C6CCC 8FA4002C */   lw        $a0, 0x2C($sp)
/* 814D0 800C6CD0 8FA80028 */  lw         $t0, 0x28($sp)
/* 814D4 800C6CD4 2401FFFF */  addiu      $at, $zero, -0x1
/* 814D8 800C6CD8 11010004 */  beq        $t0, $at, .L800C6CEC
/* 814DC 800C6CDC 00000000 */   nop
/* 814E0 800C6CE0 00002025 */  or         $a0, $zero, $zero
/* 814E4 800C6CE4 0C031B40 */  jal        func_800C6D00
/* 814E8 800C6CE8 01002825 */   or        $a1, $t0, $zero
.L800C6CEC:
/* 814EC 800C6CEC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 814F0 800C6CF0 27BD0030 */  addiu      $sp, $sp, 0x30
/* 814F4 800C6CF4 03E00008 */  jr         $ra
/* 814F8 800C6CF8 00000000 */   nop
/* 814FC 800C6CFC 00000000 */  nop
