.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800BF370
/* 79B70 800BF370 3C0E800E */  lui        $t6, %hi(D_800E7C94)
/* 79B74 800BF374 81CE7C94 */  lb         $t6, %lo(D_800E7C94)($t6)
/* 79B78 800BF378 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 79B7C 800BF37C 2401000B */  addiu      $at, $zero, 0xB
/* 79B80 800BF380 15C10003 */  bne        $t6, $at, .L800BF390
/* 79B84 800BF384 AFBF0014 */   sw        $ra, 0x14($sp)
/* 79B88 800BF388 0C03102C */  jal        func_800C40B0
/* 79B8C 800BF38C 00000000 */   nop
.L800BF390:
/* 79B90 800BF390 3C0F800E */  lui        $t7, %hi(D_800E7CE0)
/* 79B94 800BF394 8DEF7CE0 */  lw         $t7, %lo(D_800E7CE0)($t7)
/* 79B98 800BF398 11E00003 */  beqz       $t7, .L800BF3A8
/* 79B9C 800BF39C 00000000 */   nop
/* 79BA0 800BF3A0 0C02FE59 */  jal        func_800BF964
/* 79BA4 800BF3A4 00000000 */   nop
.L800BF3A8:
/* 79BA8 800BF3A8 3C03800E */  lui        $v1, %hi(D_800E7CDC)
/* 79BAC 800BF3AC 24637CDC */  addiu      $v1, $v1, %lo(D_800E7CDC)
/* 79BB0 800BF3B0 8C620000 */  lw         $v0, 0x0($v1)
/* 79BB4 800BF3B4 10400007 */  beqz       $v0, .L800BF3D4
/* 79BB8 800BF3B8 2458FFFF */   addiu     $t8, $v0, -0x1
/* 79BBC 800BF3BC 17000005 */  bnez       $t8, .L800BF3D4
/* 79BC0 800BF3C0 AC780000 */   sw        $t8, 0x0($v1)
/* 79BC4 800BF3C4 3C04801D */  lui        $a0, %hi(D_801D7DCC)
/* 79BC8 800BF3C8 8C847DCC */  lw         $a0, %lo(D_801D7DCC)($a0)
/* 79BCC 800BF3CC 0C030572 */  jal        func_800C15C8
/* 79BD0 800BF3D0 2405000A */   addiu     $a1, $zero, 0xA
.L800BF3D4:
/* 79BD4 800BF3D4 3C03800E */  lui        $v1, %hi(D_800E7CE4)
/* 79BD8 800BF3D8 24637CE4 */  addiu      $v1, $v1, %lo(D_800E7CE4)
/* 79BDC 800BF3DC 8C620000 */  lw         $v0, 0x0($v1)
/* 79BE0 800BF3E0 10400006 */  beqz       $v0, .L800BF3FC
/* 79BE4 800BF3E4 2448FFFF */   addiu     $t0, $v0, -0x1
/* 79BE8 800BF3E8 15000004 */  bnez       $t0, .L800BF3FC
/* 79BEC 800BF3EC AC680000 */   sw        $t0, 0x0($v1)
/* 79BF0 800BF3F0 3C04801D */  lui        $a0, %hi(D_801D7E1C)
/* 79BF4 800BF3F4 0C030DDF */  jal        func_800C377C
/* 79BF8 800BF3F8 8C847E1C */   lw        $a0, %lo(D_801D7E1C)($a0)
.L800BF3FC:
/* 79BFC 800BF3FC 3C0A800E */  lui        $t2, %hi(D_800E7C94)
/* 79C00 800BF400 814A7C94 */  lb         $t2, %lo(D_800E7C94)($t2)
/* 79C04 800BF404 1540001D */  bnez       $t2, .L800BF47C
/* 79C08 800BF408 00000000 */   nop
/* 79C0C 800BF40C 0C02FE32 */  jal        func_800BF8C8
/* 79C10 800BF410 00000000 */   nop
/* 79C14 800BF414 3C028004 */  lui        $v0, %hi(D_8003FE64)
/* 79C18 800BF418 8C42FE64 */  lw         $v0, %lo(D_8003FE64)($v0)
/* 79C1C 800BF41C 3C0B8004 */  lui        $t3, %hi(D_80044688)
/* 79C20 800BF420 256B4688 */  addiu      $t3, $t3, %lo(D_80044688)
/* 79C24 800BF424 104B0015 */  beq        $v0, $t3, .L800BF47C
/* 79C28 800BF428 00000000 */   nop
/* 79C2C 800BF42C 80430058 */  lb         $v1, 0x58($v0)
/* 79C30 800BF430 2401FFFF */  addiu      $at, $zero, -0x1
/* 79C34 800BF434 3C040601 */  lui        $a0, (0x6010B00 >> 16)
/* 79C38 800BF438 10610010 */  beq        $v1, $at, .L800BF47C
/* 79C3C 800BF43C 34840B00 */   ori       $a0, $a0, (0x6010B00 & 0xFFFF)
/* 79C40 800BF440 2405FFFF */  addiu      $a1, $zero, -0x1
/* 79C44 800BF444 0C0314F5 */  jal        func_800C53D4
/* 79C48 800BF448 AFA30018 */   sw        $v1, 0x18($sp)
/* 79C4C 800BF44C 8FA30018 */  lw         $v1, 0x18($sp)
/* 79C50 800BF450 2401000E */  addiu      $at, $zero, 0xE
/* 79C54 800BF454 54610005 */  bnel       $v1, $at, .L800BF46C
/* 79C58 800BF458 24010001 */   addiu     $at, $zero, 0x1
/* 79C5C 800BF45C 0C0252AF */  jal        func_80094ABC
/* 79C60 800BF460 AFA30018 */   sw        $v1, 0x18($sp)
/* 79C64 800BF464 8FA30018 */  lw         $v1, 0x18($sp)
/* 79C68 800BF468 24010001 */  addiu      $at, $zero, 0x1
.L800BF46C:
/* 79C6C 800BF46C 14610003 */  bne        $v1, $at, .L800BF47C
/* 79C70 800BF470 00000000 */   nop
/* 79C74 800BF474 0C0274C8 */  jal        func_8009D320
/* 79C78 800BF478 00000000 */   nop
.L800BF47C:
/* 79C7C 800BF47C 3C02800E */  lui        $v0, %hi(D_800E7CB0)
/* 79C80 800BF480 8C427CB0 */  lw         $v0, %lo(D_800E7CB0)($v0)
/* 79C84 800BF484 1040000F */  beqz       $v0, .L800BF4C4
/* 79C88 800BF488 304C000F */   andi      $t4, $v0, 0xF
/* 79C8C 800BF48C 1580000A */  bnez       $t4, .L800BF4B8
/* 79C90 800BF490 3C040100 */   lui       $a0, (0x1000500 >> 16)
/* 79C94 800BF494 34840500 */  ori        $a0, $a0, (0x1000500 & 0xFFFF)
/* 79C98 800BF498 0C0314E3 */  jal        func_800C538C
/* 79C9C 800BF49C 3C053F80 */   lui       $a1, (0x3F800000 >> 16)
/* 79CA0 800BF4A0 24040005 */  addiu      $a0, $zero, 0x5
/* 79CA4 800BF4A4 2405000A */  addiu      $a1, $zero, 0xA
/* 79CA8 800BF4A8 0C02FFFB */  jal        func_800BFFEC
/* 79CAC 800BF4AC 2406007F */   addiu     $a2, $zero, 0x7F
/* 79CB0 800BF4B0 3C02800E */  lui        $v0, %hi(D_800E7CB0)
/* 79CB4 800BF4B4 8C427CB0 */  lw         $v0, %lo(D_800E7CB0)($v0)
.L800BF4B8:
/* 79CB8 800BF4B8 244DFFFF */  addiu      $t5, $v0, -0x1
/* 79CBC 800BF4BC 3C01800E */  lui        $at, %hi(D_800E7CB0)
/* 79CC0 800BF4C0 AC2D7CB0 */  sw         $t5, %lo(D_800E7CB0)($at)
.L800BF4C4:
/* 79CC4 800BF4C4 3C0E800E */  lui        $t6, %hi(D_800E7CC4)
/* 79CC8 800BF4C8 8DCE7CC4 */  lw         $t6, %lo(D_800E7CC4)($t6)
/* 79CCC 800BF4CC 3C03800E */  lui        $v1, %hi(D_800E7CE8)
/* 79CD0 800BF4D0 24637CE8 */  addiu      $v1, $v1, %lo(D_800E7CE8)
/* 79CD4 800BF4D4 15C0006D */  bnez       $t6, .L800BF68C
/* 79CD8 800BF4D8 3C04F100 */   lui       $a0, (0xF1000000 >> 16)
/* 79CDC 800BF4DC 8C620000 */  lw         $v0, 0x0($v1)
/* 79CE0 800BF4E0 10400002 */  beqz       $v0, .L800BF4EC
/* 79CE4 800BF4E4 244FFFFF */   addiu     $t7, $v0, -0x1
/* 79CE8 800BF4E8 AC6F0000 */  sw         $t7, 0x0($v1)
.L800BF4EC:
/* 79CEC 800BF4EC 3C03800E */  lui        $v1, %hi(D_800E7CD8)
/* 79CF0 800BF4F0 24637CD8 */  addiu      $v1, $v1, %lo(D_800E7CD8)
/* 79CF4 800BF4F4 8C620000 */  lw         $v0, 0x0($v1)
/* 79CF8 800BF4F8 1040000B */  beqz       $v0, .L800BF528
/* 79CFC 800BF4FC 2458FFFF */   addiu     $t8, $v0, -0x1
/* 79D00 800BF500 17000009 */  bnez       $t8, .L800BF528
/* 79D04 800BF504 AC780000 */   sw        $t8, 0x0($v1)
/* 79D08 800BF508 3C08800E */  lui        $t0, %hi(D_800E7C98)
/* 79D0C 800BF50C 8D087C98 */  lw         $t0, %lo(D_800E7C98)($t0)
/* 79D10 800BF510 3C04801D */  lui        $a0, %hi(D_801D7DCC)
/* 79D14 800BF514 00002825 */  or         $a1, $zero, $zero
/* 79D18 800BF518 11000003 */  beqz       $t0, .L800BF528
/* 79D1C 800BF51C 00003025 */   or        $a2, $zero, $zero
/* 79D20 800BF520 0C030550 */  jal        func_800C1540
/* 79D24 800BF524 8C847DCC */   lw        $a0, %lo(D_801D7DCC)($a0)
.L800BF528:
/* 79D28 800BF528 3C03800E */  lui        $v1, %hi(D_800E7CF0)
/* 79D2C 800BF52C 24637CF0 */  addiu      $v1, $v1, %lo(D_800E7CF0)
/* 79D30 800BF530 8C620000 */  lw         $v0, 0x0($v1)
/* 79D34 800BF534 10400005 */  beqz       $v0, .L800BF54C
/* 79D38 800BF538 2449FFFF */   addiu     $t1, $v0, -0x1
/* 79D3C 800BF53C 15200003 */  bnez       $t1, .L800BF54C
/* 79D40 800BF540 AC690000 */   sw        $t1, 0x0($v1)
/* 79D44 800BF544 3C01800E */  lui        $at, %hi(D_800E7CF4)
/* 79D48 800BF548 AC207CF4 */  sw         $zero, %lo(D_800E7CF4)($at)
.L800BF54C:
/* 79D4C 800BF54C 3C03800E */  lui        $v1, %hi(D_800E7C9C)
/* 79D50 800BF550 24637C9C */  addiu      $v1, $v1, %lo(D_800E7C9C)
/* 79D54 800BF554 8C620000 */  lw         $v0, 0x0($v1)
/* 79D58 800BF558 10400005 */  beqz       $v0, .L800BF570
/* 79D5C 800BF55C 244BFFFF */   addiu     $t3, $v0, -0x1
/* 79D60 800BF560 15600003 */  bnez       $t3, .L800BF570
/* 79D64 800BF564 AC6B0000 */   sw        $t3, 0x0($v1)
/* 79D68 800BF568 0C0306E6 */  jal        func_800C1B98
/* 79D6C 800BF56C 00000000 */   nop
.L800BF570:
/* 79D70 800BF570 3C03800E */  lui        $v1, %hi(D_800E7CD4)
/* 79D74 800BF574 24637CD4 */  addiu      $v1, $v1, %lo(D_800E7CD4)
/* 79D78 800BF578 8C620000 */  lw         $v0, 0x0($v1)
/* 79D7C 800BF57C 3C0D800E */  lui        $t5, %hi(D_800E7CC4)
/* 79D80 800BF580 1040002D */  beqz       $v0, .L800BF638
/* 79D84 800BF584 00000000 */   nop
/* 79D88 800BF588 8DAD7CC4 */  lw         $t5, %lo(D_800E7CC4)($t5)
/* 79D8C 800BF58C 244EFFFF */  addiu      $t6, $v0, -0x1
/* 79D90 800BF590 3C0F801D */  lui        $t7, %hi(D_801D7DC0)
/* 79D94 800BF594 15A00003 */  bnez       $t5, .L800BF5A4
/* 79D98 800BF598 00000000 */   nop
/* 79D9C 800BF59C AC6E0000 */  sw         $t6, 0x0($v1)
/* 79DA0 800BF5A0 01C01025 */  or         $v0, $t6, $zero
.L800BF5A4:
/* 79DA4 800BF5A4 14400024 */  bnez       $v0, .L800BF638
/* 79DA8 800BF5A8 00000000 */   nop
/* 79DAC 800BF5AC 8DEF7DC0 */  lw         $t7, %lo(D_801D7DC0)($t7)
/* 79DB0 800BF5B0 3C02801D */  lui        $v0, %hi(D_801D7DFA)
/* 79DB4 800BF5B4 15E00020 */  bnez       $t7, .L800BF638
/* 79DB8 800BF5B8 00000000 */   nop
/* 79DBC 800BF5BC 80427DFA */  lb         $v0, %lo(D_801D7DFA)($v0)
/* 79DC0 800BF5C0 24010003 */  addiu      $at, $zero, 0x3
/* 79DC4 800BF5C4 3C048004 */  lui        $a0, %hi(D_8004562C)
/* 79DC8 800BF5C8 10400005 */  beqz       $v0, .L800BF5E0
/* 79DCC 800BF5CC 00000000 */   nop
/* 79DD0 800BF5D0 1041000B */  beq        $v0, $at, .L800BF600
/* 79DD4 800BF5D4 3C048004 */   lui       $a0, %hi(D_8004562C)
/* 79DD8 800BF5D8 10000011 */  b          .L800BF620
/* 79DDC 800BF5DC 3C048004 */   lui       $a0, %hi(D_8004562C)
.L800BF5E0:
/* 79DE0 800BF5E0 8C84562C */  lw         $a0, %lo(D_8004562C)($a0)
/* 79DE4 800BF5E4 2405005A */  addiu      $a1, $zero, 0x5A
/* 79DE8 800BF5E8 2406003C */  addiu      $a2, $zero, 0x3C
/* 79DEC 800BF5EC 30980001 */  andi       $t8, $a0, 0x1
/* 79DF0 800BF5F0 0C030CC8 */  jal        func_800C3320
/* 79DF4 800BF5F4 27040024 */   addiu     $a0, $t8, 0x24
/* 79DF8 800BF5F8 1000000F */  b          .L800BF638
/* 79DFC 800BF5FC 00000000 */   nop
.L800BF600:
/* 79E00 800BF600 8C84562C */  lw         $a0, %lo(D_8004562C)($a0)
/* 79E04 800BF604 2405005A */  addiu      $a1, $zero, 0x5A
/* 79E08 800BF608 2406003C */  addiu      $a2, $zero, 0x3C
/* 79E0C 800BF60C 30990001 */  andi       $t9, $a0, 0x1
/* 79E10 800BF610 0C030CC8 */  jal        func_800C3320
/* 79E14 800BF614 27240027 */   addiu     $a0, $t9, 0x27
/* 79E18 800BF618 10000007 */  b          .L800BF638
/* 79E1C 800BF61C 00000000 */   nop
.L800BF620:
/* 79E20 800BF620 8C84562C */  lw         $a0, %lo(D_8004562C)($a0)
/* 79E24 800BF624 2405005A */  addiu      $a1, $zero, 0x5A
/* 79E28 800BF628 2406003C */  addiu      $a2, $zero, 0x3C
/* 79E2C 800BF62C 30880001 */  andi       $t0, $a0, 0x1
/* 79E30 800BF630 0C030CC8 */  jal        func_800C3320
/* 79E34 800BF634 2504002A */   addiu     $a0, $t0, 0x2A
.L800BF638:
/* 79E38 800BF638 0C030D25 */  jal        func_800C3494
/* 79E3C 800BF63C 00000000 */   nop
/* 79E40 800BF640 3C03800E */  lui        $v1, %hi(D_800E7CEC)
/* 79E44 800BF644 24637CEC */  addiu      $v1, $v1, %lo(D_800E7CEC)
/* 79E48 800BF648 8C620000 */  lw         $v0, 0x0($v1)
/* 79E4C 800BF64C 3C09800E */  lui        $t1, %hi(D_800E7C98)
/* 79E50 800BF650 10400010 */  beqz       $v0, .L800BF694
/* 79E54 800BF654 00000000 */   nop
/* 79E58 800BF658 8D297C98 */  lw         $t1, %lo(D_800E7C98)($t1)
/* 79E5C 800BF65C 244AFFFF */  addiu      $t2, $v0, -0x1
/* 79E60 800BF660 1120000C */  beqz       $t1, .L800BF694
/* 79E64 800BF664 00000000 */   nop
/* 79E68 800BF668 1540000A */  bnez       $t2, .L800BF694
/* 79E6C 800BF66C AC6A0000 */   sw        $t2, 0x0($v1)
/* 79E70 800BF670 3C04801D */  lui        $a0, %hi(D_801D7DCC)
/* 79E74 800BF674 8C847DCC */  lw         $a0, %lo(D_801D7DCC)($a0)
/* 79E78 800BF678 24050078 */  addiu      $a1, $zero, 0x78
/* 79E7C 800BF67C 0C030550 */  jal        func_800C1540
/* 79E80 800BF680 24060001 */   addiu     $a2, $zero, 0x1
/* 79E84 800BF684 10000003 */  b          .L800BF694
/* 79E88 800BF688 00000000 */   nop
.L800BF68C:
/* 79E8C 800BF68C 0C0314EC */  jal        func_800C53B0
/* 79E90 800BF690 00002825 */   or        $a1, $zero, $zero
.L800BF694:
/* 79E94 800BF694 0C031501 */  jal        func_800C5404
/* 79E98 800BF698 00000000 */   nop
/* 79E9C 800BF69C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 79EA0 800BF6A0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 79EA4 800BF6A4 03E00008 */  jr         $ra
/* 79EA8 800BF6A8 00000000 */   nop

glabel func_800BF6AC
/* 79EAC 800BF6AC 3C0E800E */  lui        $t6, %hi(D_800E7C94)
/* 79EB0 800BF6B0 81CE7C94 */  lb         $t6, %lo(D_800E7C94)($t6)
/* 79EB4 800BF6B4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 79EB8 800BF6B8 24010007 */  addiu      $at, $zero, 0x7
/* 79EBC 800BF6BC AFBF0014 */  sw         $ra, 0x14($sp)
/* 79EC0 800BF6C0 15C1002C */  bne        $t6, $at, .L800BF774
/* 79EC4 800BF6C4 AFA50024 */   sw        $a1, 0x24($sp)
/* 79EC8 800BF6C8 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
/* 79ECC 800BF6CC 44812000 */  mtc1       $at, $f4
/* 79ED0 800BF6D0 3C040100 */  lui        $a0, (0x1000700 >> 16)
/* 79ED4 800BF6D4 3C014180 */  lui        $at, (0x41800000 >> 16)
/* 79ED8 800BF6D8 460C203E */  c.le.s     $f4, $f12
/* 79EDC 800BF6DC 34840700 */  ori        $a0, $a0, (0x1000700 & 0xFFFF)
/* 79EE0 800BF6E0 3C053F80 */  lui        $a1, (0x3F800000 >> 16)
/* 79EE4 800BF6E4 45030024 */  bc1tl      .L800BF778
/* 79EE8 800BF6E8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 79EEC 800BF6EC 44813000 */  mtc1       $at, $f6
/* 79EF0 800BF6F0 00000000 */  nop
/* 79EF4 800BF6F4 4606603E */  c.le.s     $f12, $f6
/* 79EF8 800BF6F8 00000000 */  nop
/* 79EFC 800BF6FC 45020004 */  bc1fl      .L800BF710
/* 79F00 800BF700 4600620D */   trunc.w.s $f8, $f12
/* 79F04 800BF704 10000006 */  b          .L800BF720
/* 79F08 800BF708 2402007F */   addiu     $v0, $zero, 0x7F
/* 79F0C 800BF70C 4600620D */  trunc.w.s  $f8, $f12
.L800BF710:
/* 79F10 800BF710 2419007F */  addiu      $t9, $zero, 0x7F
/* 79F14 800BF714 44184000 */  mfc1       $t8, $f8
/* 79F18 800BF718 00000000 */  nop
/* 79F1C 800BF71C 03381023 */  subu       $v0, $t9, $t8
.L800BF720:
/* 79F20 800BF720 0C0314E3 */  jal        func_800C538C
/* 79F24 800BF724 AFA2001C */   sw        $v0, 0x1C($sp)
/* 79F28 800BF728 3C040600 */  lui        $a0, (0x6000700 >> 16)
/* 79F2C 800BF72C 34840700 */  ori        $a0, $a0, (0x6000700 & 0xFFFF)
/* 79F30 800BF730 0C0314F5 */  jal        func_800C53D4
/* 79F34 800BF734 2405FFFF */   addiu     $a1, $zero, -0x1
/* 79F38 800BF738 8FA2001C */  lw         $v0, 0x1C($sp)
/* 79F3C 800BF73C 3C040600 */  lui        $a0, (0x6000701 >> 16)
/* 79F40 800BF740 34840701 */  ori        $a0, $a0, (0x6000701 & 0xFFFF)
/* 79F44 800BF744 00022E00 */  sll        $a1, $v0, 24
/* 79F48 800BF748 00054603 */  sra        $t0, $a1, 24
/* 79F4C 800BF74C 0C0314F5 */  jal        func_800C53D4
/* 79F50 800BF750 01002825 */   or        $a1, $t0, $zero
/* 79F54 800BF754 3C040600 */  lui        $a0, (0x6000702 >> 16)
/* 79F58 800BF758 34840702 */  ori        $a0, $a0, (0x6000702 & 0xFFFF)
/* 79F5C 800BF75C 0C0314F5 */  jal        func_800C53D4
/* 79F60 800BF760 83A50027 */   lb        $a1, 0x27($sp)
/* 79F64 800BF764 3C040600 */  lui        $a0, (0x6000700 >> 16)
/* 79F68 800BF768 34840700 */  ori        $a0, $a0, (0x6000700 & 0xFFFF)
/* 79F6C 800BF76C 0C0314F5 */  jal        func_800C53D4
/* 79F70 800BF770 24050014 */   addiu     $a1, $zero, 0x14
.L800BF774:
/* 79F74 800BF774 8FBF0014 */  lw         $ra, 0x14($sp)
.L800BF778:
/* 79F78 800BF778 27BD0020 */  addiu      $sp, $sp, 0x20
/* 79F7C 800BF77C 03E00008 */  jr         $ra
/* 79F80 800BF780 00000000 */   nop

glabel func_800BF784
/* 79F84 800BF784 3C0E800E */  lui        $t6, %hi(D_800E7C94)
/* 79F88 800BF788 81CE7C94 */  lb         $t6, %lo(D_800E7C94)($t6)
/* 79F8C 800BF78C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 79F90 800BF790 24010007 */  addiu      $at, $zero, 0x7
/* 79F94 800BF794 AFBF0014 */  sw         $ra, 0x14($sp)
/* 79F98 800BF798 15C10026 */  bne        $t6, $at, .L800BF834
/* 79F9C 800BF79C AFA5001C */   sw        $a1, 0x1C($sp)
/* 79FA0 800BF7A0 3C014300 */  lui        $at, (0x43000000 >> 16)
/* 79FA4 800BF7A4 44811000 */  mtc1       $at, $f2
/* 79FA8 800BF7A8 3C014140 */  lui        $at, (0x41400000 >> 16)
/* 79FAC 800BF7AC 3C040100 */  lui        $a0, (0x1000700 >> 16)
/* 79FB0 800BF7B0 460C103E */  c.le.s     $f2, $f12
/* 79FB4 800BF7B4 00000000 */  nop
/* 79FB8 800BF7B8 4503001F */  bc1tl      .L800BF838
/* 79FBC 800BF7BC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 79FC0 800BF7C0 44812000 */  mtc1       $at, $f4
/* 79FC4 800BF7C4 3C0142E8 */  lui        $at, (0x42E80000 >> 16)
/* 79FC8 800BF7C8 4604603E */  c.le.s     $f12, $f4
/* 79FCC 800BF7CC 00000000 */  nop
/* 79FD0 800BF7D0 45020006 */  bc1fl      .L800BF7EC
/* 79FD4 800BF7D4 460C1181 */   sub.s     $f6, $f2, $f12
/* 79FD8 800BF7D8 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 79FDC 800BF7DC 44810000 */  mtc1       $at, $f0
/* 79FE0 800BF7E0 10000006 */  b          .L800BF7FC
/* 79FE4 800BF7E4 44050000 */   mfc1      $a1, $f0
/* 79FE8 800BF7E8 460C1181 */  sub.s      $f6, $f2, $f12
.L800BF7EC:
/* 79FEC 800BF7EC 44814000 */  mtc1       $at, $f8
/* 79FF0 800BF7F0 00000000 */  nop
/* 79FF4 800BF7F4 46083003 */  div.s      $f0, $f6, $f8
/* 79FF8 800BF7F8 44050000 */  mfc1       $a1, $f0
.L800BF7FC:
/* 79FFC 800BF7FC 0C0314E3 */  jal        func_800C538C
/* 7A000 800BF800 34840700 */   ori       $a0, $a0, (0x1000700 & 0xFFFF)
/* 7A004 800BF804 3C040600 */  lui        $a0, (0x6000701 >> 16)
/* 7A008 800BF808 34840701 */  ori        $a0, $a0, (0x6000701 & 0xFFFF)
/* 7A00C 800BF80C 0C0314F5 */  jal        func_800C53D4
/* 7A010 800BF810 2405007F */   addiu     $a1, $zero, 0x7F
/* 7A014 800BF814 3C040600 */  lui        $a0, (0x6000702 >> 16)
/* 7A018 800BF818 34840702 */  ori        $a0, $a0, (0x6000702 & 0xFFFF)
/* 7A01C 800BF81C 0C0314F5 */  jal        func_800C53D4
/* 7A020 800BF820 83A5001F */   lb        $a1, 0x1F($sp)
/* 7A024 800BF824 3C040600 */  lui        $a0, (0x6000700 >> 16)
/* 7A028 800BF828 34840700 */  ori        $a0, $a0, (0x6000700 & 0xFFFF)
/* 7A02C 800BF82C 0C0314F5 */  jal        func_800C53D4
/* 7A030 800BF830 24050015 */   addiu     $a1, $zero, 0x15
.L800BF834:
/* 7A034 800BF834 8FBF0014 */  lw         $ra, 0x14($sp)
.L800BF838:
/* 7A038 800BF838 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7A03C 800BF83C 03E00008 */  jr         $ra
/* 7A040 800BF840 00000000 */   nop

glabel func_800BF844
/* 7A044 800BF844 3C0E8004 */  lui        $t6, %hi(D_8004562C)
/* 7A048 800BF848 8DCE562C */  lw         $t6, %lo(D_8004562C)($t6)
/* 7A04C 800BF84C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7A050 800BF850 AFA40020 */  sw         $a0, 0x20($sp)
/* 7A054 800BF854 31CF7000 */  andi       $t7, $t6, 0x7000
/* 7A058 800BF858 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7A05C 800BF85C AFA50024 */  sw         $a1, 0x24($sp)
/* 7A060 800BF860 000FC302 */  srl        $t8, $t7, 12
/* 7A064 800BF864 3C040600 */  lui        $a0, (0x6000700 >> 16)
/* 7A068 800BF868 AFB8001C */  sw         $t8, 0x1C($sp)
/* 7A06C 800BF86C 34840700 */  ori        $a0, $a0, (0x6000700 & 0xFFFF)
/* 7A070 800BF870 0C0314F5 */  jal        func_800C53D4
/* 7A074 800BF874 2405FFFF */   addiu     $a1, $zero, -0x1
/* 7A078 800BF878 3C040600 */  lui        $a0, (0x6000701 >> 16)
/* 7A07C 800BF87C 34840701 */  ori        $a0, $a0, (0x6000701 & 0xFFFF)
/* 7A080 800BF880 0C0314F5 */  jal        func_800C53D4
/* 7A084 800BF884 83A50023 */   lb        $a1, 0x23($sp)
/* 7A088 800BF888 3C040600 */  lui        $a0, (0x6000702 >> 16)
/* 7A08C 800BF88C 34840702 */  ori        $a0, $a0, (0x6000702 & 0xFFFF)
/* 7A090 800BF890 0C0314F5 */  jal        func_800C53D4
/* 7A094 800BF894 83A50027 */   lb        $a1, 0x27($sp)
/* 7A098 800BF898 3C040600 */  lui        $a0, (0x6000703 >> 16)
/* 7A09C 800BF89C 34840703 */  ori        $a0, $a0, (0x6000703 & 0xFFFF)
/* 7A0A0 800BF8A0 0C0314F5 */  jal        func_800C53D4
/* 7A0A4 800BF8A4 83A5001F */   lb        $a1, 0x1F($sp)
/* 7A0A8 800BF8A8 3C040600 */  lui        $a0, (0x6000700 >> 16)
/* 7A0AC 800BF8AC 34840700 */  ori        $a0, $a0, (0x6000700 & 0xFFFF)
/* 7A0B0 800BF8B0 0C0314F5 */  jal        func_800C53D4
/* 7A0B4 800BF8B4 00002825 */   or        $a1, $zero, $zero
/* 7A0B8 800BF8B8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7A0BC 800BF8BC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7A0C0 800BF8C0 03E00008 */  jr         $ra
/* 7A0C4 800BF8C4 00000000 */   nop

glabel func_800BF8C8
/* 7A0C8 800BF8C8 3C028004 */  lui        $v0, %hi(D_8004562C)
/* 7A0CC 800BF8CC 8C42562C */  lw         $v0, %lo(D_8004562C)($v0)
/* 7A0D0 800BF8D0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7A0D4 800BF8D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7A0D8 800BF8D8 3043000F */  andi       $v1, $v0, 0xF
/* 7A0DC 800BF8DC 1460001D */  bnez       $v1, .L800BF954
/* 7A0E0 800BF8E0 00037080 */   sll       $t6, $v1, 2
/* 7A0E4 800BF8E4 305807F0 */  andi       $t8, $v0, 0x7F0
/* 7A0E8 800BF8E8 30487000 */  andi       $t0, $v0, 0x7000
/* 7A0EC 800BF8EC 25CF003C */  addiu      $t7, $t6, 0x3C
/* 7A0F0 800BF8F0 0018C902 */  srl        $t9, $t8, 4
/* 7A0F4 800BF8F4 00084B02 */  srl        $t1, $t0, 12
/* 7A0F8 800BF8F8 3C040600 */  lui        $a0, (0x6000700 >> 16)
/* 7A0FC 800BF8FC AFAF0024 */  sw         $t7, 0x24($sp)
/* 7A100 800BF900 AFB90020 */  sw         $t9, 0x20($sp)
/* 7A104 800BF904 AFA9001C */  sw         $t1, 0x1C($sp)
/* 7A108 800BF908 34840700 */  ori        $a0, $a0, (0x6000700 & 0xFFFF)
/* 7A10C 800BF90C 0C0314F5 */  jal        func_800C53D4
/* 7A110 800BF910 2405FFFF */   addiu     $a1, $zero, -0x1
/* 7A114 800BF914 3C040600 */  lui        $a0, (0x6000701 >> 16)
/* 7A118 800BF918 34840701 */  ori        $a0, $a0, (0x6000701 & 0xFFFF)
/* 7A11C 800BF91C 0C0314F5 */  jal        func_800C53D4
/* 7A120 800BF920 83A50027 */   lb        $a1, 0x27($sp)
/* 7A124 800BF924 3C040600 */  lui        $a0, (0x6000702 >> 16)
/* 7A128 800BF928 34840702 */  ori        $a0, $a0, (0x6000702 & 0xFFFF)
/* 7A12C 800BF92C 0C0314F5 */  jal        func_800C53D4
/* 7A130 800BF930 83A50023 */   lb        $a1, 0x23($sp)
/* 7A134 800BF934 3C040600 */  lui        $a0, (0x6000703 >> 16)
/* 7A138 800BF938 34840703 */  ori        $a0, $a0, (0x6000703 & 0xFFFF)
/* 7A13C 800BF93C 0C0314F5 */  jal        func_800C53D4
/* 7A140 800BF940 83A5001F */   lb        $a1, 0x1F($sp)
/* 7A144 800BF944 3C040600 */  lui        $a0, (0x6000700 >> 16)
/* 7A148 800BF948 34840700 */  ori        $a0, $a0, (0x6000700 & 0xFFFF)
/* 7A14C 800BF94C 0C0314F5 */  jal        func_800C53D4
/* 7A150 800BF950 00002825 */   or        $a1, $zero, $zero
.L800BF954:
/* 7A154 800BF954 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7A158 800BF958 27BD0028 */  addiu      $sp, $sp, 0x28
/* 7A15C 800BF95C 03E00008 */  jr         $ra
/* 7A160 800BF960 00000000 */   nop

glabel func_800BF964
/* 7A164 800BF964 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 7A168 800BF968 3C0E8004 */  lui        $t6, %hi(D_8003FF48)
/* 7A16C 800BF96C 8DCEFF48 */  lw         $t6, %lo(D_8003FF48)($t6)
/* 7A170 800BF970 AFBF0034 */  sw         $ra, 0x34($sp)
/* 7A174 800BF974 AFB40030 */  sw         $s4, 0x30($sp)
/* 7A178 800BF978 000E7FC2 */  srl        $t7, $t6, 31
/* 7A17C 800BF97C AFB3002C */  sw         $s3, 0x2C($sp)
/* 7A180 800BF980 AFB20028 */  sw         $s2, 0x28($sp)
/* 7A184 800BF984 AFB10024 */  sw         $s1, 0x24($sp)
/* 7A188 800BF988 AFB00020 */  sw         $s0, 0x20($sp)
/* 7A18C 800BF98C 15E00005 */  bnez       $t7, .L800BF9A4
/* 7A190 800BF990 F7B40018 */   sdc1      $f20, 0x18($sp)
/* 7A194 800BF994 3C02800E */  lui        $v0, %hi(D_800E7CE0)
/* 7A198 800BF998 24427CE0 */  addiu      $v0, $v0, %lo(D_800E7CE0)
/* 7A19C 800BF99C 1000001D */  b          .L800BFA14
/* 7A1A0 800BF9A0 AC400000 */   sw        $zero, 0x0($v0)
.L800BF9A4:
/* 7A1A4 800BF9A4 3C118004 */  lui        $s1, %hi(D_8003FCC8)
/* 7A1A8 800BF9A8 3C01800F */  lui        $at, %hi(D_800EC360)
/* 7A1AC 800BF9AC 3C128004 */  lui        $s2, %hi(D_80044688)
/* 7A1B0 800BF9B0 26524688 */  addiu      $s2, $s2, %lo(D_80044688)
/* 7A1B4 800BF9B4 C434C360 */  lwc1       $f20, %lo(D_800EC360)($at)
/* 7A1B8 800BF9B8 2631FCC8 */  addiu      $s1, $s1, %lo(D_8003FCC8)
/* 7A1BC 800BF9BC 00008025 */  or         $s0, $zero, $zero
/* 7A1C0 800BF9C0 24140010 */  addiu      $s4, $zero, 0x10
/* 7A1C4 800BF9C4 3C130402 */  lui        $s3, (0x4020000 >> 16)
.L800BF9C8:
/* 7A1C8 800BF9C8 8E2202B0 */  lw         $v0, 0x2B0($s1)
/* 7A1CC 800BF9CC 5052000A */  beql       $v0, $s2, .L800BF9F8
/* 7A1D0 800BF9D0 26100001 */   addiu     $s0, $s0, 0x1
/* 7A1D4 800BF9D4 C4440030 */  lwc1       $f4, 0x30($v0)
/* 7A1D8 800BF9D8 321800FF */  andi       $t8, $s0, 0xFF
/* 7A1DC 800BF9DC 0018CA00 */  sll        $t9, $t8, 8
/* 7A1E0 800BF9E0 46142182 */  mul.s      $f6, $f4, $f20
/* 7A1E4 800BF9E4 03332025 */  or         $a0, $t9, $s3
/* 7A1E8 800BF9E8 44053000 */  mfc1       $a1, $f6
/* 7A1EC 800BF9EC 0C0314E3 */  jal        func_800C538C
/* 7A1F0 800BF9F0 00000000 */   nop
/* 7A1F4 800BF9F4 26100001 */  addiu      $s0, $s0, 0x1
.L800BF9F8:
/* 7A1F8 800BF9F8 1614FFF3 */  bne        $s0, $s4, .L800BF9C8
/* 7A1FC 800BF9FC 26310004 */   addiu     $s1, $s1, 0x4
/* 7A200 800BFA00 3C02800E */  lui        $v0, %hi(D_800E7CE0)
/* 7A204 800BFA04 24427CE0 */  addiu      $v0, $v0, %lo(D_800E7CE0)
/* 7A208 800BFA08 8C480000 */  lw         $t0, 0x0($v0)
/* 7A20C 800BFA0C 2509FFFF */  addiu      $t1, $t0, -0x1
/* 7A210 800BFA10 AC490000 */  sw         $t1, 0x0($v0)
.L800BFA14:
/* 7A214 800BFA14 8FBF0034 */  lw         $ra, 0x34($sp)
/* 7A218 800BFA18 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 7A21C 800BFA1C 8FB00020 */  lw         $s0, 0x20($sp)
/* 7A220 800BFA20 8FB10024 */  lw         $s1, 0x24($sp)
/* 7A224 800BFA24 8FB20028 */  lw         $s2, 0x28($sp)
/* 7A228 800BFA28 8FB3002C */  lw         $s3, 0x2C($sp)
/* 7A22C 800BFA2C 8FB40030 */  lw         $s4, 0x30($sp)
/* 7A230 800BFA30 03E00008 */  jr         $ra
/* 7A234 800BFA34 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_800BFA38
/* 7A238 800BFA38 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7A23C 800BFA3C AFA5001C */  sw         $a1, 0x1C($sp)
/* 7A240 800BFA40 308E00FF */  andi       $t6, $a0, 0xFF
/* 7A244 800BFA44 30A800FF */  andi       $t0, $a1, 0xFF
/* 7A248 800BFA48 00062E00 */  sll        $a1, $a2, 24
/* 7A24C 800BFA4C 000E7C00 */  sll        $t7, $t6, 16
/* 7A250 800BFA50 3C010800 */  lui        $at, (0x8000000 >> 16)
/* 7A254 800BFA54 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7A258 800BFA58 01E1C025 */  or         $t8, $t7, $at
/* 7A25C 800BFA5C 00055603 */  sra        $t2, $a1, 24
/* 7A260 800BFA60 00084A00 */  sll        $t1, $t0, 8
/* 7A264 800BFA64 03092025 */  or         $a0, $t8, $t1
/* 7A268 800BFA68 0C0314F5 */  jal        func_800C53D4
/* 7A26C 800BFA6C 01402825 */   or        $a1, $t2, $zero
/* 7A270 800BFA70 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7A274 800BFA74 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7A278 800BFA78 03E00008 */  jr         $ra
/* 7A27C 800BFA7C 00000000 */   nop

glabel func_800BFA80
/* 7A280 800BFA80 30CE00FF */  andi       $t6, $a2, 0xFF
/* 7A284 800BFA84 448E2000 */  mtc1       $t6, $f4
/* 7A288 800BFA88 3C0142C8 */  lui        $at, (0x42C80000 >> 16)
/* 7A28C 800BFA8C 44814000 */  mtc1       $at, $f8
/* 7A290 800BFA90 468021A0 */  cvt.s.w    $f6, $f4
/* 7A294 800BFA94 00047880 */  sll        $t7, $a0, 2
/* 7A298 800BFA98 01E47821 */  addu       $t7, $t7, $a0
/* 7A29C 800BFA9C 3C188004 */  lui        $t8, %hi(D_8003FCC8)
/* 7A2A0 800BFAA0 2718FCC8 */  addiu      $t8, $t8, %lo(D_8003FCC8)
/* 7A2A4 800BFAA4 000F7980 */  sll        $t7, $t7, 6
/* 7A2A8 800BFAA8 46083283 */  div.s      $f10, $f6, $f8
/* 7A2AC 800BFAAC 01F81021 */  addu       $v0, $t7, $t8
/* 7A2B0 800BFAB0 C4420018 */  lwc1       $f2, 0x18($v0)
/* 7A2B4 800BFAB4 AFA60008 */  sw         $a2, 0x8($sp)
/* 7A2B8 800BFAB8 A4400010 */  sh         $zero, 0x10($v0)
/* 7A2BC 800BFABC E4420020 */  swc1       $f2, 0x20($v0)
/* 7A2C0 800BFAC0 46025002 */  mul.s      $f0, $f10, $f2
/* 7A2C4 800BFAC4 54A00004 */  bnel       $a1, $zero, .L800BFAD8
/* 7A2C8 800BFAC8 44859000 */   mtc1      $a1, $f18
/* 7A2CC 800BFACC 03E00008 */  jr         $ra
/* 7A2D0 800BFAD0 E4400018 */   swc1      $f0, 0x18($v0)
/* 7A2D4 800BFAD4 44859000 */  mtc1       $a1, $f18
.L800BFAD8:
/* 7A2D8 800BFAD8 46020401 */  sub.s      $f16, $f0, $f2
/* 7A2DC 800BFADC A0400001 */  sb         $zero, 0x1($v0)
/* 7A2E0 800BFAE0 A4450010 */  sh         $a1, 0x10($v0)
/* 7A2E4 800BFAE4 46809120 */  cvt.s.w    $f4, $f18
/* 7A2E8 800BFAE8 46048183 */  div.s      $f6, $f16, $f4
/* 7A2EC 800BFAEC E446001C */  swc1       $f6, 0x1C($v0)
/* 7A2F0 800BFAF0 03E00008 */  jr         $ra
/* 7A2F4 800BFAF4 00000000 */   nop

glabel func_800BFAF8
/* 7A2F8 800BFAF8 00047080 */  sll        $t6, $a0, 2
/* 7A2FC 800BFAFC 01C47021 */  addu       $t6, $t6, $a0
/* 7A300 800BFB00 3C0F8004 */  lui        $t7, %hi(D_8003FCC8)
/* 7A304 800BFB04 25EFFCC8 */  addiu      $t7, $t7, %lo(D_8003FCC8)
/* 7A308 800BFB08 000E7180 */  sll        $t6, $t6, 6
/* 7A30C 800BFB0C 01CF1021 */  addu       $v0, $t6, $t7
/* 7A310 800BFB10 14A00004 */  bnez       $a1, .L800BFB24
/* 7A314 800BFB14 A4400010 */   sh        $zero, 0x10($v0)
/* 7A318 800BFB18 C4440020 */  lwc1       $f4, 0x20($v0)
/* 7A31C 800BFB1C 03E00008 */  jr         $ra
/* 7A320 800BFB20 E4440018 */   swc1      $f4, 0x18($v0)
.L800BFB24:
/* 7A324 800BFB24 44858000 */  mtc1       $a1, $f16
/* 7A328 800BFB28 C4460020 */  lwc1       $f6, 0x20($v0)
/* 7A32C 800BFB2C C4480018 */  lwc1       $f8, 0x18($v0)
/* 7A330 800BFB30 468084A0 */  cvt.s.w    $f18, $f16
/* 7A334 800BFB34 A0400001 */  sb         $zero, 0x1($v0)
/* 7A338 800BFB38 A4450010 */  sh         $a1, 0x10($v0)
/* 7A33C 800BFB3C 46083281 */  sub.s      $f10, $f6, $f8
/* 7A340 800BFB40 46125103 */  div.s      $f4, $f10, $f18
/* 7A344 800BFB44 E444001C */  swc1       $f4, 0x1C($v0)
/* 7A348 800BFB48 03E00008 */  jr         $ra
/* 7A34C 800BFB4C 00000000 */   nop

glabel func_800BFB50
/* 7A350 800BFB50 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 7A354 800BFB54 44810000 */  mtc1       $at, $f0
/* 7A358 800BFB58 3C01801D */  lui        $at, %hi(D_801D7E20)
/* 7A35C 800BFB5C 240E0040 */  addiu      $t6, $zero, 0x40
/* 7A360 800BFB60 E4207E20 */  swc1       $f0, %lo(D_801D7E20)($at)
/* 7A364 800BFB64 3C01801D */  lui        $at, %hi(D_801D7E24)
/* 7A368 800BFB68 E4207E24 */  swc1       $f0, %lo(D_801D7E24)($at)
/* 7A36C 800BFB6C 3C01801D */  lui        $at, %hi(D_801D7E28)
/* 7A370 800BFB70 A02E7E28 */  sb         $t6, %lo(D_801D7E28)($at)
/* 7A374 800BFB74 3C01801D */  lui        $at, %hi(D_801D7E29)
/* 7A378 800BFB78 240F0010 */  addiu      $t7, $zero, 0x10
/* 7A37C 800BFB7C 03E00008 */  jr         $ra
/* 7A380 800BFB80 A02F7E29 */   sb        $t7, %lo(D_801D7E29)($at)

glabel func_800BFB84
/* 7A384 800BFB84 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 7A388 800BFB88 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7A38C 800BFB8C C4C60000 */  lwc1       $f6, 0x0($a2)
/* 7A390 800BFB90 C4E40000 */  lwc1       $f4, 0x0($a3)
/* 7A394 800BFB94 46062201 */  sub.s      $f8, $f4, $f6
/* 7A398 800BFB98 E7A80030 */  swc1       $f8, 0x30($sp)
/* 7A39C 800BFB9C C4C40008 */  lwc1       $f4, 0x8($a2)
/* 7A3A0 800BFBA0 C4EA0008 */  lwc1       $f10, 0x8($a3)
/* 7A3A4 800BFBA4 46045181 */  sub.s      $f6, $f10, $f4
/* 7A3A8 800BFBA8 E7A6002C */  swc1       $f6, 0x2C($sp)
/* 7A3AC 800BFBAC C48A0000 */  lwc1       $f10, 0x0($a0)
/* 7A3B0 800BFBB0 C4A80000 */  lwc1       $f8, 0x0($a1)
/* 7A3B4 800BFBB4 C4860008 */  lwc1       $f6, 0x8($a0)
/* 7A3B8 800BFBB8 C4A40008 */  lwc1       $f4, 0x8($a1)
/* 7A3BC 800BFBBC 460A4481 */  sub.s      $f18, $f8, $f10
/* 7A3C0 800BFBC0 46062001 */  sub.s      $f0, $f4, $f6
/* 7A3C4 800BFBC4 46129202 */  mul.s      $f8, $f18, $f18
/* 7A3C8 800BFBC8 E7B20028 */  swc1       $f18, 0x28($sp)
/* 7A3CC 800BFBCC 46000282 */  mul.s      $f10, $f0, $f0
/* 7A3D0 800BFBD0 E7A00024 */  swc1       $f0, 0x24($sp)
/* 7A3D4 800BFBD4 0C031C04 */  jal        func_800C7010
/* 7A3D8 800BFBD8 460A4300 */   add.s     $f12, $f8, $f10
/* 7A3DC 800BFBDC C7B20028 */  lwc1       $f18, 0x28($sp)
/* 7A3E0 800BFBE0 C7A40030 */  lwc1       $f4, 0x30($sp)
/* 7A3E4 800BFBE4 C7A60024 */  lwc1       $f6, 0x24($sp)
/* 7A3E8 800BFBE8 C7A8002C */  lwc1       $f8, 0x2C($sp)
/* 7A3EC 800BFBEC 46049080 */  add.s      $f2, $f18, $f4
/* 7A3F0 800BFBF0 E7A00018 */  swc1       $f0, 0x18($sp)
/* 7A3F4 800BFBF4 46083380 */  add.s      $f14, $f6, $f8
/* 7A3F8 800BFBF8 46021282 */  mul.s      $f10, $f2, $f2
/* 7A3FC 800BFBFC 00000000 */  nop
/* 7A400 800BFC00 460E7102 */  mul.s      $f4, $f14, $f14
/* 7A404 800BFC04 0C031C04 */  jal        func_800C7010
/* 7A408 800BFC08 46045300 */   add.s     $f12, $f10, $f4
/* 7A40C 800BFC0C C7B00018 */  lwc1       $f16, 0x18($sp)
/* 7A410 800BFC10 3C014396 */  lui        $at, (0x43960000 >> 16)
/* 7A414 800BFC14 44817000 */  mtc1       $at, $f14
/* 7A418 800BFC18 46008301 */  sub.s      $f12, $f16, $f0
/* 7A41C 800BFC1C 3C0143B4 */  lui        $at, (0x43B40000 >> 16)
/* 7A420 800BFC20 44810000 */  mtc1       $at, $f0
/* 7A424 800BFC24 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
/* 7A428 800BFC28 460C703C */  c.lt.s     $f14, $f12
/* 7A42C 800BFC2C 240E0010 */  addiu      $t6, $zero, 0x10
/* 7A430 800BFC30 45020003 */  bc1fl      .L800BFC40
/* 7A434 800BFC34 4600803E */   c.le.s    $f16, $f0
/* 7A438 800BFC38 46007306 */  mov.s      $f12, $f14
/* 7A43C 800BFC3C 4600803E */  c.le.s     $f16, $f0
.L800BFC40:
/* 7A440 800BFC40 00000000 */  nop
/* 7A444 800BFC44 45020009 */  bc1fl      .L800BFC6C
/* 7A448 800BFC48 44811000 */   mtc1      $at, $f2
/* 7A44C 800BFC4C 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
/* 7A450 800BFC50 44811000 */  mtc1       $at, $f2
/* 7A454 800BFC54 3C01801D */  lui        $at, %hi(D_801D7E29)
/* 7A458 800BFC58 44807000 */  mtc1       $zero, $f14
/* 7A45C 800BFC5C A02E7E29 */  sb         $t6, %lo(D_801D7E29)($at)
/* 7A460 800BFC60 10000019 */  b          .L800BFCC8
/* 7A464 800BFC64 46001006 */   mov.s     $f0, $f2
/* 7A468 800BFC68 44811000 */  mtc1       $at, $f2
.L800BFC6C:
/* 7A46C 800BFC6C 3C01800F */  lui        $at, %hi(D_800EC364)
/* 7A470 800BFC70 C426C364 */  lwc1       $f6, %lo(D_800EC364)($at)
/* 7A474 800BFC74 44807000 */  mtc1       $zero, $f14
/* 7A478 800BFC78 3C01801D */  lui        $at, %hi(D_801D7E29)
/* 7A47C 800BFC7C 46103203 */  div.s      $f8, $f6, $f16
/* 7A480 800BFC80 460C703C */  c.lt.s     $f14, $f12
/* 7A484 800BFC84 46008401 */  sub.s      $f16, $f16, $f0
/* 7A488 800BFC88 46081281 */  sub.s      $f10, $f2, $f8
/* 7A48C 800BFC8C 4600510D */  trunc.w.s  $f4, $f10
/* 7A490 800BFC90 44182000 */  mfc1       $t8, $f4
/* 7A494 800BFC94 45000007 */  bc1f       .L800BFCB4
/* 7A498 800BFC98 A0387E29 */   sb        $t8, %lo(D_801D7E29)($at)
/* 7A49C 800BFC9C 3C014190 */  lui        $at, (0x41900000 >> 16)
/* 7A4A0 800BFCA0 44813000 */  mtc1       $at, $f6
/* 7A4A4 800BFCA4 00000000 */  nop
/* 7A4A8 800BFCA8 46068203 */  div.s      $f8, $f16, $f6
/* 7A4AC 800BFCAC 10000006 */  b          .L800BFCC8
/* 7A4B0 800BFCB0 46081001 */   sub.s     $f0, $f2, $f8
.L800BFCB4:
/* 7A4B4 800BFCB4 3C013D80 */  lui        $at, (0x3D800000 >> 16)
/* 7A4B8 800BFCB8 44815000 */  mtc1       $at, $f10
/* 7A4BC 800BFCBC 00000000 */  nop
/* 7A4C0 800BFCC0 460A8102 */  mul.s      $f4, $f16, $f10
/* 7A4C4 800BFCC4 46041001 */  sub.s      $f0, $f2, $f4
.L800BFCC8:
/* 7A4C8 800BFCC8 46020003 */  div.s      $f0, $f0, $f2
/* 7A4CC 800BFCCC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 7A4D0 800BFCD0 44811000 */  mtc1       $at, $f2
/* 7A4D4 800BFCD4 3C0143C8 */  lui        $at, (0x43C80000 >> 16)
/* 7A4D8 800BFCD8 44813000 */  mtc1       $at, $f6
/* 7A4DC 800BFCDC 00000000 */  nop
/* 7A4E0 800BFCE0 46066203 */  div.s      $f8, $f12, $f6
/* 7A4E4 800BFCE4 460E003C */  c.lt.s     $f0, $f14
/* 7A4E8 800BFCE8 00000000 */  nop
/* 7A4EC 800BFCEC 45020003 */  bc1fl      .L800BFCFC
/* 7A4F0 800BFCF0 46081281 */   sub.s     $f10, $f2, $f8
/* 7A4F4 800BFCF4 46007006 */  mov.s      $f0, $f14
/* 7A4F8 800BFCF8 46081281 */  sub.s      $f10, $f2, $f8
.L800BFCFC:
/* 7A4FC 800BFCFC 3C01800F */  lui        $at, %hi(D_800EC368)
/* 7A500 800BFD00 C426C368 */  lwc1       $f6, %lo(D_800EC368)($at)
/* 7A504 800BFD04 3C01801D */  lui        $at, %hi(D_801D7E20)
/* 7A508 800BFD08 460A1103 */  div.s      $f4, $f2, $f10
/* 7A50C 800BFD0C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7A510 800BFD10 93B9004B */  lbu        $t9, 0x4B($sp)
/* 7A514 800BFD14 27BD0038 */  addiu      $sp, $sp, 0x38
/* 7A518 800BFD18 46062200 */  add.s      $f8, $f4, $f6
/* 7A51C 800BFD1C E4287E20 */  swc1       $f8, %lo(D_801D7E20)($at)
/* 7A520 800BFD20 3C01801D */  lui        $at, %hi(D_801D7E24)
/* 7A524 800BFD24 E4207E24 */  swc1       $f0, %lo(D_801D7E24)($at)
/* 7A528 800BFD28 3C01801D */  lui        $at, %hi(D_801D7E28)
/* 7A52C 800BFD2C 03E00008 */  jr         $ra
/* 7A530 800BFD30 A0397E28 */   sb        $t9, %lo(D_801D7E28)($at)

glabel func_800BFD34
/* 7A534 800BFD34 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7A538 800BFD38 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7A53C 800BFD3C 240E0001 */  addiu      $t6, $zero, 0x1
/* 7A540 800BFD40 3C01800E */  lui        $at, %hi(D_800E7CBC)
/* 7A544 800BFD44 3C040600 */  lui        $a0, (0x6000004 >> 16)
/* 7A548 800BFD48 AC2E7CBC */  sw         $t6, %lo(D_800E7CBC)($at)
/* 7A54C 800BFD4C 34840004 */  ori        $a0, $a0, (0x6000004 & 0xFFFF)
/* 7A550 800BFD50 0C0314F5 */  jal        func_800C53D4
/* 7A554 800BFD54 2405FFFF */   addiu     $a1, $zero, -0x1
/* 7A558 800BFD58 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7A55C 800BFD5C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7A560 800BFD60 03E00008 */  jr         $ra
/* 7A564 800BFD64 00000000 */   nop

glabel func_800BFD68
/* 7A568 800BFD68 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7A56C 800BFD6C AFBF0014 */  sw         $ra, 0x14($sp)
/* 7A570 800BFD70 240E0001 */  addiu      $t6, $zero, 0x1
/* 7A574 800BFD74 3C01800E */  lui        $at, %hi(D_800E7CC0)
/* 7A578 800BFD78 3C040600 */  lui        $a0, (0x6000304 >> 16)
/* 7A57C 800BFD7C AC2E7CC0 */  sw         $t6, %lo(D_800E7CC0)($at)
/* 7A580 800BFD80 34840304 */  ori        $a0, $a0, (0x6000304 & 0xFFFF)
/* 7A584 800BFD84 0C0314F5 */  jal        func_800C53D4
/* 7A588 800BFD88 2405FFFF */   addiu     $a1, $zero, -0x1
/* 7A58C 800BFD8C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7A590 800BFD90 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7A594 800BFD94 03E00008 */  jr         $ra
/* 7A598 800BFD98 00000000 */   nop

glabel func_800BFD9C
/* 7A59C 800BFD9C 24020001 */  addiu      $v0, $zero, 0x1
/* 7A5A0 800BFDA0 A080001D */  sb         $zero, 0x1D($a0)
/* 7A5A4 800BFDA4 A0820007 */  sb         $v0, 0x7($a0)
/* 7A5A8 800BFDA8 A0820003 */  sb         $v0, 0x3($a0)
/* 7A5AC 800BFDAC A0800008 */  sb         $zero, 0x8($a0)
/* 7A5B0 800BFDB0 A0800009 */  sb         $zero, 0x9($a0)
/* 7A5B4 800BFDB4 A0800013 */  sb         $zero, 0x13($a0)
/* 7A5B8 800BFDB8 A0800012 */  sb         $zero, 0x12($a0)
/* 7A5BC 800BFDBC A0800011 */  sb         $zero, 0x11($a0)
/* 7A5C0 800BFDC0 A0800004 */  sb         $zero, 0x4($a0)
/* 7A5C4 800BFDC4 A0800006 */  sb         $zero, 0x6($a0)
/* 7A5C8 800BFDC8 03E00008 */  jr         $ra
/* 7A5CC 800BFDCC A0800019 */   sb        $zero, 0x19($a0)

glabel func_800BFDD0
/* 7A5D0 800BFDD0 3C01800E */  lui        $at, %hi(D_800E7CBC)
/* 7A5D4 800BFDD4 AC207CBC */  sw         $zero, %lo(D_800E7CBC)($at)
/* 7A5D8 800BFDD8 3C01800E */  lui        $at, %hi(D_800E7CE8)
/* 7A5DC 800BFDDC 240E0190 */  addiu      $t6, $zero, 0x190
/* 7A5E0 800BFDE0 AC2E7CE8 */  sw         $t6, %lo(D_800E7CE8)($at)
/* 7A5E4 800BFDE4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7A5E8 800BFDE8 3C01800E */  lui        $at, %hi(D_800E7CAC)
/* 7A5EC 800BFDEC AC207CAC */  sw         $zero, %lo(D_800E7CAC)($at)
/* 7A5F0 800BFDF0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7A5F4 800BFDF4 AFA40018 */  sw         $a0, 0x18($sp)
/* 7A5F8 800BFDF8 3C01801D */  lui        $at, %hi(D_801D7DD8)
/* 7A5FC 800BFDFC AC207DD8 */  sw         $zero, %lo(D_801D7DD8)($at)
/* 7A600 800BFE00 3C040100 */  lui        $a0, (0x1000000 >> 16)
/* 7A604 800BFE04 0C0314E3 */  jal        func_800C538C
/* 7A608 800BFE08 3C053F80 */   lui       $a1, (0x3F800000 >> 16)
/* 7A60C 800BFE0C 3C040100 */  lui        $a0, (0x1000200 >> 16)
/* 7A610 800BFE10 34840200 */  ori        $a0, $a0, (0x1000200 & 0xFFFF)
/* 7A614 800BFE14 0C0314E3 */  jal        func_800C538C
/* 7A618 800BFE18 3C053F80 */   lui       $a1, (0x3F800000 >> 16)
/* 7A61C 800BFE1C 3C053DCC */  lui        $a1, (0x3DCCCCCD >> 16)
/* 7A620 800BFE20 34A5CCCD */  ori        $a1, $a1, (0x3DCCCCCD & 0xFFFF)
/* 7A624 800BFE24 0C0314E3 */  jal        func_800C538C
/* 7A628 800BFE28 3C040400 */   lui       $a0, (0x4000000 >> 16)
/* 7A62C 800BFE2C 3C040600 */  lui        $a0, (0x6000000 >> 16)
/* 7A630 800BFE30 0C0314F5 */  jal        func_800C53D4
/* 7A634 800BFE34 24050001 */   addiu     $a1, $zero, 0x1
/* 7A638 800BFE38 0C02FF67 */  jal        func_800BFD9C
/* 7A63C 800BFE3C 8FA40018 */   lw        $a0, 0x18($sp)
/* 7A640 800BFE40 44802000 */  mtc1       $zero, $f4
/* 7A644 800BFE44 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7A648 800BFE48 3C02801D */  lui        $v0, %hi(D_801D7DF8)
/* 7A64C 800BFE4C 3C01800E */  lui        $at, %hi(D_800E7CC8)
/* 7A650 800BFE50 24427DF8 */  addiu      $v0, $v0, %lo(D_801D7DF8)
/* 7A654 800BFE54 E4247CC8 */  swc1       $f4, %lo(D_800E7CC8)($at)
/* 7A658 800BFE58 240FFFFF */  addiu      $t7, $zero, -0x1
/* 7A65C 800BFE5C A0400000 */  sb         $zero, 0x0($v0)
/* 7A660 800BFE60 A0400001 */  sb         $zero, 0x1($v0)
/* 7A664 800BFE64 A04F0003 */  sb         $t7, 0x3($v0)
/* 7A668 800BFE68 03E00008 */  jr         $ra
/* 7A66C 800BFE6C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800BFE70
/* 7A670 800BFE70 3C0E801D */  lui        $t6, %hi(D_801D7DC4)
/* 7A674 800BFE74 8DCE7DC4 */  lw         $t6, %lo(D_801D7DC4)($t6)
/* 7A678 800BFE78 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7A67C 800BFE7C AFBF0014 */  sw         $ra, 0x14($sp)
/* 7A680 800BFE80 11C00005 */  beqz       $t6, .L800BFE98
/* 7A684 800BFE84 00803025 */   or        $a2, $a0, $zero
/* 7A688 800BFE88 0C02FFBE */  jal        func_800BFEF8
/* 7A68C 800BFE8C 00000000 */   nop
/* 7A690 800BFE90 10000016 */  b          .L800BFEEC
/* 7A694 800BFE94 8FBF0014 */   lw        $ra, 0x14($sp)
.L800BFE98:
/* 7A698 800BFE98 3C01800E */  lui        $at, %hi(D_800E7CBC)
/* 7A69C 800BFE9C AC207CBC */  sw         $zero, %lo(D_800E7CBC)($at)
/* 7A6A0 800BFEA0 3C01800E */  lui        $at, %hi(D_800E7CAC)
/* 7A6A4 800BFEA4 240F0001 */  addiu      $t7, $zero, 0x1
/* 7A6A8 800BFEA8 3C040100 */  lui        $a0, (0x1000200 >> 16)
/* 7A6AC 800BFEAC AC2F7CAC */  sw         $t7, %lo(D_800E7CAC)($at)
/* 7A6B0 800BFEB0 34840200 */  ori        $a0, $a0, (0x1000200 & 0xFFFF)
/* 7A6B4 800BFEB4 3C053F80 */  lui        $a1, (0x3F800000 >> 16)
/* 7A6B8 800BFEB8 0C0314E3 */  jal        func_800C538C
/* 7A6BC 800BFEBC AFA60018 */   sw        $a2, 0x18($sp)
/* 7A6C0 800BFEC0 0C02FF67 */  jal        func_800BFD9C
/* 7A6C4 800BFEC4 8FA40018 */   lw        $a0, 0x18($sp)
/* 7A6C8 800BFEC8 44802000 */  mtc1       $zero, $f4
/* 7A6CC 800BFECC 3C02801D */  lui        $v0, %hi(D_801D7DF8)
/* 7A6D0 800BFED0 3C01800E */  lui        $at, %hi(D_800E7CC8)
/* 7A6D4 800BFED4 24427DF8 */  addiu      $v0, $v0, %lo(D_801D7DF8)
/* 7A6D8 800BFED8 E4247CC8 */  swc1       $f4, %lo(D_800E7CC8)($at)
/* 7A6DC 800BFEDC 2418FFFF */  addiu      $t8, $zero, -0x1
/* 7A6E0 800BFEE0 A0400000 */  sb         $zero, 0x0($v0)
/* 7A6E4 800BFEE4 A0580003 */  sb         $t8, 0x3($v0)
/* 7A6E8 800BFEE8 8FBF0014 */  lw         $ra, 0x14($sp)
.L800BFEEC:
/* 7A6EC 800BFEEC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7A6F0 800BFEF0 03E00008 */  jr         $ra
/* 7A6F4 800BFEF4 00000000 */   nop

glabel func_800BFEF8
/* 7A6F8 800BFEF8 3C0E801D */  lui        $t6, %hi(D_801D7DC0)
/* 7A6FC 800BFEFC 8DCE7DC0 */  lw         $t6, %lo(D_801D7DC0)($t6)
/* 7A700 800BFF00 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7A704 800BFF04 24010002 */  addiu      $at, $zero, 0x2
/* 7A708 800BFF08 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7A70C 800BFF0C 11C10023 */  beq        $t6, $at, .L800BFF9C
/* 7A710 800BFF10 AFA40018 */   sw        $a0, 0x18($sp)
/* 7A714 800BFF14 3C01800E */  lui        $at, %hi(D_800E7CC0)
/* 7A718 800BFF18 AC207CC0 */  sw         $zero, %lo(D_800E7CC0)($at)
/* 7A71C 800BFF1C 3C01801D */  lui        $at, %hi(D_801D7DDC)
/* 7A720 800BFF20 3C040100 */  lui        $a0, (0x1000300 >> 16)
/* 7A724 800BFF24 AC207DDC */  sw         $zero, %lo(D_801D7DDC)($at)
/* 7A728 800BFF28 34840300 */  ori        $a0, $a0, (0x1000300 & 0xFFFF)
/* 7A72C 800BFF2C 0C0314E3 */  jal        func_800C538C
/* 7A730 800BFF30 3C053F80 */   lui       $a1, (0x3F800000 >> 16)
/* 7A734 800BFF34 3C040400 */  lui        $a0, (0x4000300 >> 16)
/* 7A738 800BFF38 3C053DCC */  lui        $a1, (0x3DCCCCCD >> 16)
/* 7A73C 800BFF3C 34A5CCCD */  ori        $a1, $a1, (0x3DCCCCCD & 0xFFFF)
/* 7A740 800BFF40 0C0314E3 */  jal        func_800C538C
/* 7A744 800BFF44 34840300 */   ori       $a0, $a0, (0x4000300 & 0xFFFF)
/* 7A748 800BFF48 3C040600 */  lui        $a0, (0x6000300 >> 16)
/* 7A74C 800BFF4C 34840300 */  ori        $a0, $a0, (0x6000300 & 0xFFFF)
/* 7A750 800BFF50 0C0314F5 */  jal        func_800C53D4
/* 7A754 800BFF54 24050001 */   addiu     $a1, $zero, 0x1
/* 7A758 800BFF58 3C040100 */  lui        $a0, (0x1000200 >> 16)
/* 7A75C 800BFF5C 34840200 */  ori        $a0, $a0, (0x1000200 & 0xFFFF)
/* 7A760 800BFF60 0C0314E3 */  jal        func_800C538C
/* 7A764 800BFF64 3C053F80 */   lui       $a1, (0x3F800000 >> 16)
/* 7A768 800BFF68 0C02FF67 */  jal        func_800BFD9C
/* 7A76C 800BFF6C 8FA40018 */   lw        $a0, 0x18($sp)
/* 7A770 800BFF70 44800000 */  mtc1       $zero, $f0
/* 7A774 800BFF74 3C02801D */  lui        $v0, %hi(D_801D7E00)
/* 7A778 800BFF78 24427E00 */  addiu      $v0, $v0, %lo(D_801D7E00)
/* 7A77C 800BFF7C 3C03800E */  lui        $v1, %hi(D_800E7CC8)
/* 7A780 800BFF80 24637CC8 */  addiu      $v1, $v1, %lo(D_800E7CC8)
/* 7A784 800BFF84 240FFFFF */  addiu      $t7, $zero, -0x1
/* 7A788 800BFF88 A0400000 */  sb         $zero, 0x0($v0)
/* 7A78C 800BFF8C A04F0003 */  sb         $t7, 0x3($v0)
/* 7A790 800BFF90 A0400001 */  sb         $zero, 0x1($v0)
/* 7A794 800BFF94 E4600004 */  swc1       $f0, 0x4($v1)
/* 7A798 800BFF98 E4600008 */  swc1       $f0, 0x8($v1)
.L800BFF9C:
/* 7A79C 800BFF9C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7A7A0 800BFFA0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7A7A4 800BFFA4 03E00008 */  jr         $ra
/* 7A7A8 800BFFA8 00000000 */   nop

glabel func_800BFFAC
/* 7A7AC 800BFFAC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7A7B0 800BFFB0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7A7B4 800BFFB4 0C02FFBE */  jal        func_800BFEF8
/* 7A7B8 800BFFB8 00000000 */   nop
/* 7A7BC 800BFFBC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7A7C0 800BFFC0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7A7C4 800BFFC4 03E00008 */  jr         $ra
/* 7A7C8 800BFFC8 00000000 */   nop

glabel func_800BFFCC
/* 7A7CC 800BFFCC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7A7D0 800BFFD0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7A7D4 800BFFD4 0C02FF5A */  jal        func_800BFD68
/* 7A7D8 800BFFD8 AFA40018 */   sw        $a0, 0x18($sp)
/* 7A7DC 800BFFDC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7A7E0 800BFFE0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7A7E4 800BFFE4 03E00008 */  jr         $ra
/* 7A7E8 800BFFE8 00000000 */   nop

glabel func_800BFFEC
/* 7A7EC 800BFFEC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7A7F0 800BFFF0 AFA40020 */  sw         $a0, 0x20($sp)
/* 7A7F4 800BFFF4 93AF0023 */  lbu        $t7, 0x23($sp)
/* 7A7F8 800BFFF8 AFA50024 */  sw         $a1, 0x24($sp)
/* 7A7FC 800BFFFC 00062E00 */  sll        $a1, $a2, 24
/* 7A800 800C0000 3C010600 */  lui        $at, (0x6000005 >> 16)
/* 7A804 800C0004 000FC200 */  sll        $t8, $t7, 8
/* 7A808 800C0008 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7A80C 800C000C 03013825 */  or         $a3, $t8, $at
/* 7A810 800C0010 00054603 */  sra        $t0, $a1, 24
/* 7A814 800C0014 AFA60028 */  sw         $a2, 0x28($sp)
/* 7A818 800C0018 01002825 */  or         $a1, $t0, $zero
/* 7A81C 800C001C 34E40005 */  ori        $a0, $a3, (0x6000005 & 0xFFFF)
/* 7A820 800C0020 0C0314F5 */  jal        func_800C53D4
/* 7A824 800C0024 AFA7001C */   sw        $a3, 0x1C($sp)
/* 7A828 800C0028 8FA4001C */  lw         $a0, 0x1C($sp)
/* 7A82C 800C002C 0C0314F5 */  jal        func_800C53D4
/* 7A830 800C0030 83A50027 */   lb        $a1, 0x27($sp)
/* 7A834 800C0034 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7A838 800C0038 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7A83C 800C003C 03E00008 */  jr         $ra
/* 7A840 800C0040 00000000 */   nop

glabel func_800C0044
/* 7A844 800C0044 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7A848 800C0048 00803825 */  or         $a3, $a0, $zero
/* 7A84C 800C004C AFA50024 */  sw         $a1, 0x24($sp)
/* 7A850 800C0050 30E200FF */  andi       $v0, $a3, 0xFF
/* 7A854 800C0054 00027A00 */  sll        $t7, $v0, 8
/* 7A858 800C0058 00062E00 */  sll        $a1, $a2, 24
/* 7A85C 800C005C 3C010600 */  lui        $at, (0x6000006 >> 16)
/* 7A860 800C0060 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7A864 800C0064 AFA40020 */  sw         $a0, 0x20($sp)
/* 7A868 800C0068 01E11025 */  or         $v0, $t7, $at
/* 7A86C 800C006C 0005CE03 */  sra        $t9, $a1, 24
/* 7A870 800C0070 AFA60028 */  sw         $a2, 0x28($sp)
/* 7A874 800C0074 03202825 */  or         $a1, $t9, $zero
/* 7A878 800C0078 34440006 */  ori        $a0, $v0, (0x6000006 & 0xFFFF)
/* 7A87C 800C007C 0C0314F5 */  jal        func_800C53D4
/* 7A880 800C0080 AFA2001C */   sw        $v0, 0x1C($sp)
/* 7A884 800C0084 8FA2001C */  lw         $v0, 0x1C($sp)
/* 7A888 800C0088 83A50027 */  lb         $a1, 0x27($sp)
/* 7A88C 800C008C 0C0314F5 */  jal        func_800C53D4
/* 7A890 800C0090 34440001 */   ori       $a0, $v0, 0x1
/* 7A894 800C0094 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7A898 800C0098 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7A89C 800C009C 03E00008 */  jr         $ra
/* 7A8A0 800C00A0 00000000 */   nop

glabel func_800C00A4
/* 7A8A4 800C00A4 AFA40000 */  sw         $a0, 0x0($sp)
/* 7A8A8 800C00A8 03E00008 */  jr         $ra
/* 7A8AC 800C00AC AFA50004 */   sw        $a1, 0x4($sp)

glabel func_800C00B0
/* 7A8B0 800C00B0 44856000 */  mtc1       $a1, $f12
/* 7A8B4 800C00B4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7A8B8 800C00B8 AFA40018 */  sw         $a0, 0x18($sp)
/* 7A8BC 800C00BC AFBF0014 */  sw         $ra, 0x14($sp)
/* 7A8C0 800C00C0 3C040400 */  lui        $a0, (0x4000300 >> 16)
/* 7A8C4 800C00C4 44056000 */  mfc1       $a1, $f12
/* 7A8C8 800C00C8 0C0314E3 */  jal        func_800C538C
/* 7A8CC 800C00CC 34840300 */   ori       $a0, $a0, (0x4000300 & 0xFFFF)
/* 7A8D0 800C00D0 83AE001B */  lb         $t6, 0x1B($sp)
/* 7A8D4 800C00D4 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
/* 7A8D8 800C00D8 44814000 */  mtc1       $at, $f8
/* 7A8DC 800C00DC 448E2000 */  mtc1       $t6, $f4
/* 7A8E0 800C00E0 3C040100 */  lui        $a0, (0x1000300 >> 16)
/* 7A8E4 800C00E4 34840300 */  ori        $a0, $a0, (0x1000300 & 0xFFFF)
/* 7A8E8 800C00E8 468021A0 */  cvt.s.w    $f6, $f4
/* 7A8EC 800C00EC 46083283 */  div.s      $f10, $f6, $f8
/* 7A8F0 800C00F0 44055000 */  mfc1       $a1, $f10
/* 7A8F4 800C00F4 0C0314E3 */  jal        func_800C538C
/* 7A8F8 800C00F8 00000000 */   nop
/* 7A8FC 800C00FC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7A900 800C0100 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7A904 800C0104 03E00008 */  jr         $ra
/* 7A908 800C0108 00000000 */   nop

glabel func_800C010C
/* 7A90C 800C010C 3C02800E */  lui        $v0, %hi(D_800E7C94)
/* 7A910 800C0110 80427C94 */  lb         $v0, %lo(D_800E7C94)($v0)
/* 7A914 800C0114 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 7A918 800C0118 AFB00018 */  sw         $s0, 0x18($sp)
/* 7A91C 800C011C 24010004 */  addiu      $at, $zero, 0x4
/* 7A920 800C0120 00808025 */  or         $s0, $a0, $zero
/* 7A924 800C0124 AFBF001C */  sw         $ra, 0x1C($sp)
/* 7A928 800C0128 14410011 */  bne        $v0, $at, .L800C0170
/* 7A92C 800C012C AFA50064 */   sw        $a1, 0x64($sp)
/* 7A930 800C0130 820E0018 */  lb         $t6, 0x18($s0)
/* 7A934 800C0134 83AF0067 */  lb         $t7, 0x67($sp)
/* 7A938 800C0138 11C0040F */  beqz       $t6, .L800C1178
/* 7A93C 800C013C 29E10002 */   slti      $at, $t7, 0x2
/* 7A940 800C0140 1020040D */  beqz       $at, .L800C1178
/* 7A944 800C0144 93A70057 */   lbu       $a3, 0x57($sp)
/* 7A948 800C0148 00EF0019 */  multu      $a3, $t7
/* 7A94C 800C014C 24050001 */  addiu      $a1, $zero, 0x1
/* 7A950 800C0150 2406007F */  addiu      $a2, $zero, 0x7F
/* 7A954 800C0154 00002012 */  mflo       $a0
/* 7A958 800C0158 24840002 */  addiu      $a0, $a0, 0x2
/* 7A95C 800C015C 309800FF */  andi       $t8, $a0, 0xFF
/* 7A960 800C0160 0C02FFFB */  jal        func_800BFFEC
/* 7A964 800C0164 03002025 */   or        $a0, $t8, $zero
/* 7A968 800C0168 10000403 */  b          .L800C1178
/* 7A96C 800C016C A2000018 */   sb        $zero, 0x18($s0)
.L800C0170:
/* 7A970 800C0170 24010007 */  addiu      $at, $zero, 0x7
/* 7A974 800C0174 14410400 */  bne        $v0, $at, .L800C1178
/* 7A978 800C0178 3C03801D */   lui       $v1, %hi(D_801D7DC0)
/* 7A97C 800C017C 8C637DC0 */  lw         $v1, %lo(D_801D7DC0)($v1)
/* 7A980 800C0180 24010001 */  addiu      $at, $zero, 0x1
/* 7A984 800C0184 14600049 */  bnez       $v1, .L800C02AC
/* 7A988 800C0188 00000000 */   nop
/* 7A98C 800C018C 83B90067 */  lb         $t9, 0x67($sp)
/* 7A990 800C0190 3C0B800E */  lui        $t3, %hi(D_800E7CE8)
/* 7A994 800C0194 57200053 */  bnel       $t9, $zero, .L800C02E4
/* 7A998 800C0198 24080003 */   addiu     $t0, $zero, 0x3
/* 7A99C 800C019C 8D6B7CE8 */  lw         $t3, %lo(D_800E7CE8)($t3)
/* 7A9A0 800C01A0 5560003C */  bnel       $t3, $zero, .L800C0294
/* 7A9A4 800C01A4 82020019 */   lb        $v0, 0x19($s0)
/* 7A9A8 800C01A8 82020019 */  lb         $v0, 0x19($s0)
/* 7A9AC 800C01AC 8203001A */  lb         $v1, 0x1A($s0)
/* 7A9B0 800C01B0 0043082A */  slt        $at, $v0, $v1
/* 7A9B4 800C01B4 5020001C */  beql       $at, $zero, .L800C0228
/* 7A9B8 800C01B8 0062082A */   slt       $at, $v1, $v0
/* 7A9BC 800C01BC 0C0307AE */  jal        func_800C1EB8
/* 7A9C0 800C01C0 2404000C */   addiu     $a0, $zero, 0xC
/* 7A9C4 800C01C4 3C028004 */  lui        $v0, %hi(D_8004562C)
/* 7A9C8 800C01C8 8C42562C */  lw         $v0, %lo(D_8004562C)($v0)
/* 7A9CC 800C01CC 24010030 */  addiu      $at, $zero, 0x30
/* 7A9D0 800C01D0 24050014 */  addiu      $a1, $zero, 0x14
/* 7A9D4 800C01D4 304C0030 */  andi       $t4, $v0, 0x30
/* 7A9D8 800C01D8 1581000A */  bne        $t4, $at, .L800C0204
/* 7A9DC 800C01DC 30440003 */   andi      $a0, $v0, 0x3
/* 7A9E0 800C01E0 820D0019 */  lb         $t5, 0x19($s0)
/* 7A9E4 800C01E4 240E0049 */  addiu      $t6, $zero, 0x49
/* 7A9E8 800C01E8 24050014 */  addiu      $a1, $zero, 0x14
/* 7A9EC 800C01EC 24060046 */  addiu      $a2, $zero, 0x46
/* 7A9F0 800C01F0 2407001E */  addiu      $a3, $zero, 0x1E
/* 7A9F4 800C01F4 0C030CF2 */  jal        func_800C33C8
/* 7A9F8 800C01F8 01CD2023 */   subu      $a0, $t6, $t5
/* 7A9FC 800C01FC 10000006 */  b          .L800C0218
/* 7AA00 800C0200 240F0064 */   addiu     $t7, $zero, 0x64
.L800C0204:
/* 7AA04 800C0204 24840042 */  addiu      $a0, $a0, 0x42
/* 7AA08 800C0208 24060046 */  addiu      $a2, $zero, 0x46
/* 7AA0C 800C020C 0C030CF2 */  jal        func_800C33C8
/* 7AA10 800C0210 2407001E */   addiu     $a3, $zero, 0x1E
/* 7AA14 800C0214 240F0064 */  addiu      $t7, $zero, 0x64
.L800C0218:
/* 7AA18 800C0218 3C01800E */  lui        $at, %hi(D_800E7CE8)
/* 7AA1C 800C021C 1000001C */  b          .L800C0290
/* 7AA20 800C0220 AC2F7CE8 */   sw        $t7, %lo(D_800E7CE8)($at)
/* 7AA24 800C0224 0062082A */  slt        $at, $v1, $v0
.L800C0228:
/* 7AA28 800C0228 5020001A */  beql       $at, $zero, .L800C0294
/* 7AA2C 800C022C 82020019 */   lb        $v0, 0x19($s0)
/* 7AA30 800C0230 0C0307AE */  jal        func_800C1EB8
/* 7AA34 800C0234 2404000D */   addiu     $a0, $zero, 0xD
/* 7AA38 800C0238 3C028004 */  lui        $v0, %hi(D_8004562C)
/* 7AA3C 800C023C 8C42562C */  lw         $v0, %lo(D_8004562C)($v0)
/* 7AA40 800C0240 24010030 */  addiu      $at, $zero, 0x30
/* 7AA44 800C0244 24050014 */  addiu      $a1, $zero, 0x14
/* 7AA48 800C0248 30580030 */  andi       $t8, $v0, 0x30
/* 7AA4C 800C024C 17010009 */  bne        $t8, $at, .L800C0274
/* 7AA50 800C0250 30440001 */   andi      $a0, $v0, 0x1
/* 7AA54 800C0254 82040019 */  lb         $a0, 0x19($s0)
/* 7AA58 800C0258 24050014 */  addiu      $a1, $zero, 0x14
/* 7AA5C 800C025C 2406003C */  addiu      $a2, $zero, 0x3C
/* 7AA60 800C0260 2407001E */  addiu      $a3, $zero, 0x1E
/* 7AA64 800C0264 0C030CF2 */  jal        func_800C33C8
/* 7AA68 800C0268 2484004C */   addiu     $a0, $a0, 0x4C
/* 7AA6C 800C026C 10000006 */  b          .L800C0288
/* 7AA70 800C0270 24190064 */   addiu     $t9, $zero, 0x64
.L800C0274:
/* 7AA74 800C0274 2484004B */  addiu      $a0, $a0, 0x4B
/* 7AA78 800C0278 2406003C */  addiu      $a2, $zero, 0x3C
/* 7AA7C 800C027C 0C030CF2 */  jal        func_800C33C8
/* 7AA80 800C0280 2407001E */   addiu     $a3, $zero, 0x1E
/* 7AA84 800C0284 24190064 */  addiu      $t9, $zero, 0x64
.L800C0288:
/* 7AA88 800C0288 3C01800E */  lui        $at, %hi(D_800E7CE8)
/* 7AA8C 800C028C AC397CE8 */  sw         $t9, %lo(D_800E7CE8)($at)
.L800C0290:
/* 7AA90 800C0290 82020019 */  lb         $v0, 0x19($s0)
.L800C0294:
/* 7AA94 800C0294 3C01801D */  lui        $at, %hi(D_801D7DC8)
/* 7AA98 800C0298 3C03801D */  lui        $v1, %hi(D_801D7DC0)
/* 7AA9C 800C029C A202001A */  sb         $v0, 0x1A($s0)
/* 7AAA0 800C02A0 8C637DC0 */  lw         $v1, %lo(D_801D7DC0)($v1)
/* 7AAA4 800C02A4 1000000E */  b          .L800C02E0
/* 7AAA8 800C02A8 AC227DC8 */   sw        $v0, %lo(D_801D7DC8)($at)
.L800C02AC:
/* 7AAAC 800C02AC 1461000C */  bne        $v1, $at, .L800C02E0
/* 7AAB0 800C02B0 83AB0067 */   lb        $t3, 0x67($sp)
/* 7AAB4 800C02B4 5560000B */  bnel       $t3, $zero, .L800C02E4
/* 7AAB8 800C02B8 24080003 */   addiu     $t0, $zero, 0x3
/* 7AABC 800C02BC 3C0E801D */  lui        $t6, %hi(D_801D7DFA)
/* 7AAC0 800C02C0 81CE7DFA */  lb         $t6, %lo(D_801D7DFA)($t6)
/* 7AAC4 800C02C4 820C0019 */  lb         $t4, 0x19($s0)
/* 7AAC8 800C02C8 518E0006 */  beql       $t4, $t6, .L800C02E4
/* 7AACC 800C02CC 24080003 */   addiu     $t0, $zero, 0x3
/* 7AAD0 800C02D0 0C0307AE */  jal        func_800C1EB8
/* 7AAD4 800C02D4 2404000C */   addiu     $a0, $zero, 0xC
/* 7AAD8 800C02D8 3C03801D */  lui        $v1, %hi(D_801D7DC0)
/* 7AADC 800C02DC 8C637DC0 */  lw         $v1, %lo(D_801D7DC0)($v1)
.L800C02E0:
/* 7AAE0 800C02E0 24080003 */  addiu      $t0, $zero, 0x3
.L800C02E4:
/* 7AAE4 800C02E4 11030007 */  beq        $t0, $v1, .L800C0304
/* 7AAE8 800C02E8 3C09801D */   lui       $t1, %hi(D_801D7DF8)
/* 7AAEC 800C02EC 54600008 */  bnel       $v1, $zero, .L800C0310
/* 7AAF0 800C02F0 83AF0067 */   lb        $t7, 0x67($sp)
/* 7AAF4 800C02F4 3C0D801D */  lui        $t5, %hi(D_801D7DC4)
/* 7AAF8 800C02F8 8DAD7DC4 */  lw         $t5, %lo(D_801D7DC4)($t5)
/* 7AAFC 800C02FC 55A00004 */  bnel       $t5, $zero, .L800C0310
/* 7AB00 800C0300 83AF0067 */   lb        $t7, 0x67($sp)
.L800C0304:
/* 7AB04 800C0304 A208000E */  sb         $t0, 0xE($s0)
/* 7AB08 800C0308 A2080009 */  sb         $t0, 0x9($s0)
/* 7AB0C 800C030C 83AF0067 */  lb         $t7, 0x67($sp)
.L800C0310:
/* 7AB10 800C0310 55E0000D */  bnel       $t7, $zero, .L800C0348
/* 7AB14 800C0314 83AE0067 */   lb        $t6, 0x67($sp)
/* 7AB18 800C0318 82180019 */  lb         $t8, 0x19($s0)
/* 7AB1C 800C031C 25297DF8 */  addiu      $t1, $t1, %lo(D_801D7DF8)
/* 7AB20 800C0320 812B0003 */  lb         $t3, 0x3($t1)
/* 7AB24 800C0324 A1380002 */  sb         $t8, 0x2($t1)
/* 7AB28 800C0328 81390002 */  lb         $t9, 0x2($t1)
/* 7AB2C 800C032C 00003825 */  or         $a3, $zero, $zero
/* 7AB30 800C0330 240CFFFF */  addiu      $t4, $zero, -0x1
/* 7AB34 800C0334 532B0013 */  beql       $t9, $t3, .L800C0384
/* 7AB38 800C0338 820B0015 */   lb        $t3, 0x15($s0)
/* 7AB3C 800C033C 10000010 */  b          .L800C0380
/* 7AB40 800C0340 A12C0003 */   sb        $t4, 0x3($t1)
/* 7AB44 800C0344 83AE0067 */  lb         $t6, 0x67($sp)
.L800C0348:
/* 7AB48 800C0348 24010001 */  addiu      $at, $zero, 0x1
/* 7AB4C 800C034C 24070003 */  addiu      $a3, $zero, 0x3
/* 7AB50 800C0350 55C1000C */  bnel       $t6, $at, .L800C0384
/* 7AB54 800C0354 820B0015 */   lb        $t3, 0x15($s0)
/* 7AB58 800C0358 820D0019 */  lb         $t5, 0x19($s0)
/* 7AB5C 800C035C 3C0A801D */  lui        $t2, %hi(D_801D7E00)
/* 7AB60 800C0360 254A7E00 */  addiu      $t2, $t2, %lo(D_801D7E00)
/* 7AB64 800C0364 A14D0002 */  sb         $t5, 0x2($t2)
/* 7AB68 800C0368 814F0002 */  lb         $t7, 0x2($t2)
/* 7AB6C 800C036C 81580003 */  lb         $t8, 0x3($t2)
/* 7AB70 800C0370 51F80004 */  beql       $t7, $t8, .L800C0384
/* 7AB74 800C0374 820B0015 */   lb        $t3, 0x15($s0)
/* 7AB78 800C0378 2419FFFF */  addiu      $t9, $zero, -0x1
/* 7AB7C 800C037C A1590003 */  sb         $t9, 0x3($t2)
.L800C0380:
/* 7AB80 800C0380 820B0015 */  lb         $t3, 0x15($s0)
.L800C0384:
/* 7AB84 800C0384 3C09801D */  lui        $t1, %hi(D_801D7DF8)
/* 7AB88 800C0388 3C0A801D */  lui        $t2, %hi(D_801D7E00)
/* 7AB8C 800C038C 254A7E00 */  addiu      $t2, $t2, %lo(D_801D7E00)
/* 7AB90 800C0390 11600002 */  beqz       $t3, .L800C039C
/* 7AB94 800C0394 25297DF8 */   addiu     $t1, $t1, %lo(D_801D7DF8)
/* 7AB98 800C0398 A2000004 */  sb         $zero, 0x4($s0)
.L800C039C:
/* 7AB9C 800C039C 820C0000 */  lb         $t4, 0x0($s0)
/* 7ABA0 800C03A0 2981001E */  slti       $at, $t4, 0x1E
/* 7ABA4 800C03A4 50200004 */  beql       $at, $zero, .L800C03B8
/* 7ABA8 800C03A8 82020008 */   lb        $v0, 0x8($s0)
/* 7ABAC 800C03AC 240E0046 */  addiu      $t6, $zero, 0x46
/* 7ABB0 800C03B0 A20E0008 */  sb         $t6, 0x8($s0)
/* 7ABB4 800C03B4 82020008 */  lb         $v0, 0x8($s0)
.L800C03B8:
/* 7ABB8 800C03B8 82030001 */  lb         $v1, 0x1($s0)
/* 7ABBC 800C03BC 0043082A */  slt        $at, $v0, $v1
/* 7ABC0 800C03C0 50200006 */  beql       $at, $zero, .L800C03DC
/* 7ABC4 800C03C4 0062082A */   slt       $at, $v1, $v0
/* 7ABC8 800C03C8 244D0001 */  addiu      $t5, $v0, 0x1
/* 7ABCC 800C03CC A20D0008 */  sb         $t5, 0x8($s0)
/* 7ABD0 800C03D0 10000007 */  b          .L800C03F0
/* 7ABD4 800C03D4 82020008 */   lb        $v0, 0x8($s0)
/* 7ABD8 800C03D8 0062082A */  slt        $at, $v1, $v0
.L800C03DC:
/* 7ABDC 800C03DC 10200004 */  beqz       $at, .L800C03F0
/* 7ABE0 800C03E0 00000000 */   nop
/* 7ABE4 800C03E4 244FFFFF */  addiu      $t7, $v0, -0x1
/* 7ABE8 800C03E8 A20F0008 */  sb         $t7, 0x8($s0)
/* 7ABEC 800C03EC 82020008 */  lb         $v0, 0x8($s0)
.L800C03F0:
/* 7ABF0 800C03F0 0048001A */  div        $zero, $v0, $t0
/* 7ABF4 800C03F4 0000C012 */  mflo       $t8
/* 7ABF8 800C03F8 27190060 */  addiu      $t9, $t8, 0x60
/* 7ABFC 800C03FC AFB90058 */  sw         $t9, 0x58($sp)
/* 7AC00 800C0400 820B0000 */  lb         $t3, 0x0($s0)
/* 7AC04 800C0404 15000002 */  bnez       $t0, .L800C0410
/* 7AC08 800C0408 00000000 */   nop
/* 7AC0C 800C040C 0007000D */  break      7
.L800C0410:
/* 7AC10 800C0410 2401FFFF */  addiu      $at, $zero, -0x1
/* 7AC14 800C0414 15010004 */  bne        $t0, $at, .L800C0428
/* 7AC18 800C0418 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 7AC1C 800C041C 14410002 */  bne        $v0, $at, .L800C0428
/* 7AC20 800C0420 00000000 */   nop
/* 7AC24 800C0424 0006000D */  break      6
.L800C0428:
/* 7AC28 800C0428 AFAB005C */  sw         $t3, 0x5C($sp)
/* 7AC2C 800C042C 82030007 */  lb         $v1, 0x7($s0)
/* 7AC30 800C0430 10600004 */  beqz       $v1, .L800C0444
/* 7AC34 800C0434 00000000 */   nop
/* 7AC38 800C0438 A600000A */  sh         $zero, 0xA($s0)
/* 7AC3C 800C043C 1000000D */  b          .L800C0474
/* 7AC40 800C0440 82030007 */   lb        $v1, 0x7($s0)
.L800C0444:
/* 7AC44 800C0444 3C0C801D */  lui        $t4, %hi(D_801D7DC0)
/* 7AC48 800C0448 8D8C7DC0 */  lw         $t4, %lo(D_801D7DC0)($t4)
/* 7AC4C 800C044C 24010002 */  addiu      $at, $zero, 0x2
/* 7AC50 800C0450 83AE0067 */  lb         $t6, 0x67($sp)
/* 7AC54 800C0454 11810007 */  beq        $t4, $at, .L800C0474
/* 7AC58 800C0458 29C10002 */   slti      $at, $t6, 0x2
/* 7AC5C 800C045C 50200006 */  beql       $at, $zero, .L800C0478
/* 7AC60 800C0460 82020003 */   lb        $v0, 0x3($s0)
/* 7AC64 800C0464 860D000A */  lh         $t5, 0xA($s0)
/* 7AC68 800C0468 82030007 */  lb         $v1, 0x7($s0)
/* 7AC6C 800C046C 25AF0001 */  addiu      $t7, $t5, 0x1
/* 7AC70 800C0470 A60F000A */  sh         $t7, 0xA($s0)
.L800C0474:
/* 7AC74 800C0474 82020003 */  lb         $v0, 0x3($s0)
.L800C0478:
/* 7AC78 800C0478 50620052 */  beql       $v1, $v0, .L800C05C4
/* 7AC7C 800C047C 820C000F */   lb        $t4, 0xF($s0)
/* 7AC80 800C0480 1040004C */  beqz       $v0, .L800C05B4
/* 7AC84 800C0484 00001825 */   or        $v1, $zero, $zero
/* 7AC88 800C0488 28410065 */  slti       $at, $v0, 0x65
/* 7AC8C 800C048C 1420000F */  bnez       $at, .L800C04CC
/* 7AC90 800C0490 24E40002 */   addiu     $a0, $a3, 0x2
/* 7AC94 800C0494 309800FF */  andi       $t8, $a0, 0xFF
/* 7AC98 800C0498 03002025 */  or         $a0, $t8, $zero
/* 7AC9C 800C049C 2405000B */  addiu      $a1, $zero, 0xB
/* 7ACA0 800C04A0 04410003 */  bgez       $v0, .L800C04B0
/* 7ACA4 800C04A4 00023043 */   sra       $a2, $v0, 1
/* 7ACA8 800C04A8 24410001 */  addiu      $at, $v0, 0x1
/* 7ACAC 800C04AC 00013043 */  sra        $a2, $at, 1
.L800C04B0:
/* 7ACB0 800C04B0 24C6003C */  addiu      $a2, $a2, 0x3C
/* 7ACB4 800C04B4 30D900FF */  andi       $t9, $a2, 0xFF
/* 7ACB8 800C04B8 03203025 */  or         $a2, $t9, $zero
/* 7ACBC 800C04BC 0C02FFFB */  jal        func_800BFFEC
/* 7ACC0 800C04C0 A3A70057 */   sb        $a3, 0x57($sp)
/* 7ACC4 800C04C4 10000035 */  b          .L800C059C
/* 7ACC8 800C04C8 93A70057 */   lbu       $a3, 0x57($sp)
.L800C04CC:
/* 7ACCC 800C04CC 28410051 */  slti       $at, $v0, 0x51
/* 7ACD0 800C04D0 1420000F */  bnez       $at, .L800C0510
/* 7ACD4 800C04D4 24E40002 */   addiu     $a0, $a3, 0x2
/* 7ACD8 800C04D8 308B00FF */  andi       $t3, $a0, 0xFF
/* 7ACDC 800C04DC 01602025 */  or         $a0, $t3, $zero
/* 7ACE0 800C04E0 2405000C */  addiu      $a1, $zero, 0xC
/* 7ACE4 800C04E4 04410003 */  bgez       $v0, .L800C04F4
/* 7ACE8 800C04E8 00023043 */   sra       $a2, $v0, 1
/* 7ACEC 800C04EC 24410001 */  addiu      $at, $v0, 0x1
/* 7ACF0 800C04F0 00013043 */  sra        $a2, $at, 1
.L800C04F4:
/* 7ACF4 800C04F4 24C6004B */  addiu      $a2, $a2, 0x4B
/* 7ACF8 800C04F8 30CC00FF */  andi       $t4, $a2, 0xFF
/* 7ACFC 800C04FC 01803025 */  or         $a2, $t4, $zero
/* 7AD00 800C0500 0C02FFFB */  jal        func_800BFFEC
/* 7AD04 800C0504 A3A70057 */   sb        $a3, 0x57($sp)
/* 7AD08 800C0508 10000024 */  b          .L800C059C
/* 7AD0C 800C050C 93A70057 */   lbu       $a3, 0x57($sp)
.L800C0510:
/* 7AD10 800C0510 28410029 */  slti       $at, $v0, 0x29
/* 7AD14 800C0514 10200007 */  beqz       $at, .L800C0534
/* 7AD18 800C0518 24E40002 */   addiu     $a0, $a3, 0x2
/* 7AD1C 800C051C 2841000B */  slti       $at, $v0, 0xB
/* 7AD20 800C0520 54200013 */  bnel       $at, $zero, .L800C0570
/* 7AD24 800C0524 2841000B */   slti      $at, $v0, 0xB
/* 7AD28 800C0528 820E001F */  lb         $t6, 0x1F($s0)
/* 7AD2C 800C052C 29C1001F */  slti       $at, $t6, 0x1F
/* 7AD30 800C0530 1420000E */  bnez       $at, .L800C056C
.L800C0534:
/* 7AD34 800C0534 308D00FF */   andi      $t5, $a0, 0xFF
/* 7AD38 800C0538 01A02025 */  or         $a0, $t5, $zero
/* 7AD3C 800C053C 2405000D */  addiu      $a1, $zero, 0xD
/* 7AD40 800C0540 04410003 */  bgez       $v0, .L800C0550
/* 7AD44 800C0544 00023043 */   sra       $a2, $v0, 1
/* 7AD48 800C0548 24410001 */  addiu      $at, $v0, 0x1
/* 7AD4C 800C054C 00013043 */  sra        $a2, $at, 1
.L800C0550:
/* 7AD50 800C0550 24C60056 */  addiu      $a2, $a2, 0x56
/* 7AD54 800C0554 30CF00FF */  andi       $t7, $a2, 0xFF
/* 7AD58 800C0558 01E03025 */  or         $a2, $t7, $zero
/* 7AD5C 800C055C 0C02FFFB */  jal        func_800BFFEC
/* 7AD60 800C0560 A3A70057 */   sb        $a3, 0x57($sp)
/* 7AD64 800C0564 1000000D */  b          .L800C059C
/* 7AD68 800C0568 93A70057 */   lbu       $a3, 0x57($sp)
.L800C056C:
/* 7AD6C 800C056C 2841000B */  slti       $at, $v0, 0xB
.L800C0570:
/* 7AD70 800C0570 1420000A */  bnez       $at, .L800C059C
/* 7AD74 800C0574 24E40002 */   addiu     $a0, $a3, 0x2
/* 7AD78 800C0578 24460050 */  addiu      $a2, $v0, 0x50
/* 7AD7C 800C057C 30D900FF */  andi       $t9, $a2, 0xFF
/* 7AD80 800C0580 309800FF */  andi       $t8, $a0, 0xFF
/* 7AD84 800C0584 03002025 */  or         $a0, $t8, $zero
/* 7AD88 800C0588 03203025 */  or         $a2, $t9, $zero
/* 7AD8C 800C058C 2405000E */  addiu      $a1, $zero, 0xE
/* 7AD90 800C0590 0C02FFFB */  jal        func_800BFFEC
/* 7AD94 800C0594 A3A70057 */   sb        $a3, 0x57($sp)
/* 7AD98 800C0598 93A70057 */  lbu        $a3, 0x57($sp)
.L800C059C:
/* 7AD9C 800C059C 240B0001 */  addiu      $t3, $zero, 0x1
/* 7ADA0 800C05A0 A20B0003 */  sb         $t3, 0x3($s0)
/* 7ADA4 800C05A4 AFA70030 */  sw         $a3, 0x30($sp)
/* 7ADA8 800C05A8 240300FF */  addiu      $v1, $zero, 0xFF
/* 7ADAC 800C05AC 10000002 */  b          .L800C05B8
/* 7ADB0 800C05B0 82020003 */   lb        $v0, 0x3($s0)
.L800C05B4:
/* 7ADB4 800C05B4 AFA70030 */  sw         $a3, 0x30($sp)
.L800C05B8:
/* 7ADB8 800C05B8 10000009 */  b          .L800C05E0
/* 7ADBC 800C05BC A2020007 */   sb        $v0, 0x7($s0)
/* 7ADC0 800C05C0 820C000F */  lb         $t4, 0xF($s0)
.L800C05C4:
/* 7ADC4 800C05C4 240D007F */  addiu      $t5, $zero, 0x7F
/* 7ADC8 800C05C8 AFA70030 */  sw         $a3, 0x30($sp)
/* 7ADCC 800C05CC 05810003 */  bgez       $t4, .L800C05DC
/* 7ADD0 800C05D0 000C7083 */   sra       $t6, $t4, 2
/* 7ADD4 800C05D4 25810003 */  addiu      $at, $t4, 0x3
/* 7ADD8 800C05D8 00017083 */  sra        $t6, $at, 2
.L800C05DC:
/* 7ADDC 800C05DC 01AE1823 */  subu       $v1, $t5, $t6
.L800C05E0:
/* 7ADE0 800C05E0 8FA40030 */  lw         $a0, 0x30($sp)
/* 7ADE4 800C05E4 3C010600 */  lui        $at, (0x6000006 >> 16)
/* 7ADE8 800C05E8 00032E00 */  sll        $a1, $v1, 24
/* 7ADEC 800C05EC 308F00FF */  andi       $t7, $a0, 0xFF
/* 7ADF0 800C05F0 000FC200 */  sll        $t8, $t7, 8
/* 7ADF4 800C05F4 0301C825 */  or         $t9, $t8, $at
/* 7ADF8 800C05F8 00056603 */  sra        $t4, $a1, 24
/* 7ADFC 800C05FC 01802825 */  or         $a1, $t4, $zero
/* 7AE00 800C0600 0C0314F5 */  jal        func_800C53D4
/* 7AE04 800C0604 37240006 */   ori       $a0, $t9, (0x6000006 & 0xFFFF)
/* 7AE08 800C0608 820D0007 */  lb         $t5, 0x7($s0)
/* 7AE0C 800C060C 55A00008 */  bnel       $t5, $zero, .L800C0630
/* 7AE10 800C0610 82020004 */   lb        $v0, 0x4($s0)
/* 7AE14 800C0614 8FAE0058 */  lw         $t6, 0x58($sp)
/* 7AE18 800C0618 8FB8005C */  lw         $t8, 0x5C($sp)
/* 7AE1C 800C061C 25CF0010 */  addiu      $t7, $t6, 0x10
/* 7AE20 800C0620 27190020 */  addiu      $t9, $t8, 0x20
/* 7AE24 800C0624 AFAF0058 */  sw         $t7, 0x58($sp)
/* 7AE28 800C0628 AFB9005C */  sw         $t9, 0x5C($sp)
/* 7AE2C 800C062C 82020004 */  lb         $v0, 0x4($s0)
.L800C0630:
/* 7AE30 800C0630 5040003B */  beql       $v0, $zero, .L800C0720
/* 7AE34 800C0634 240D00FF */   addiu     $t5, $zero, 0xFF
/* 7AE38 800C0638 820B0006 */  lb         $t3, 0x6($s0)
/* 7AE3C 800C063C 240C0004 */  addiu      $t4, $zero, 0x4
/* 7AE40 800C0640 5560002E */  bnel       $t3, $zero, .L800C06FC
/* 7AE44 800C0644 92030005 */   lbu       $v1, 0x5($s0)
/* 7AE48 800C0648 A20C0005 */  sb         $t4, 0x5($s0)
/* 7AE4C 800C064C 83AD0067 */  lb         $t5, 0x67($sp)
/* 7AE50 800C0650 29A10002 */  slti       $at, $t5, 0x2
/* 7AE54 800C0654 10200026 */  beqz       $at, .L800C06F0
/* 7AE58 800C0658 00000000 */   nop
/* 7AE5C 800C065C 82020000 */  lb         $v0, 0x0($s0)
/* 7AE60 800C0660 3C0E800E */  lui        $t6, %hi(D_800E7CA0)
/* 7AE64 800C0664 14400017 */  bnez       $v0, .L800C06C4
/* 7AE68 800C0668 2841001E */   slti      $at, $v0, 0x1E
/* 7AE6C 800C066C 8DCE7CA0 */  lw         $t6, %lo(D_800E7CA0)($t6)
/* 7AE70 800C0670 3C0F800E */  lui        $t7, %hi(D_800E7CAC)
/* 7AE74 800C0674 15C00013 */  bnez       $t6, .L800C06C4
/* 7AE78 800C0678 00000000 */   nop
/* 7AE7C 800C067C 8DEF7CAC */  lw         $t7, %lo(D_800E7CAC)($t7)
/* 7AE80 800C0680 8FA40030 */  lw         $a0, 0x30($sp)
/* 7AE84 800C0684 2405000F */  addiu      $a1, $zero, 0xF
/* 7AE88 800C0688 15E0000E */  bnez       $t7, .L800C06C4
/* 7AE8C 800C068C 24840002 */   addiu     $a0, $a0, 0x2
/* 7AE90 800C0690 309800FF */  andi       $t8, $a0, 0xFF
/* 7AE94 800C0694 03002025 */  or         $a0, $t8, $zero
/* 7AE98 800C0698 0C02FFFB */  jal        func_800BFFEC
/* 7AE9C 800C069C 2406007F */   addiu     $a2, $zero, 0x7F
/* 7AEA0 800C06A0 83AB0067 */  lb         $t3, 0x67($sp)
/* 7AEA4 800C06A4 3C01801D */  lui        $at, %hi(D_801D7DD8)
/* 7AEA8 800C06A8 24190001 */  addiu      $t9, $zero, 0x1
/* 7AEAC 800C06AC 000B6080 */  sll        $t4, $t3, 2
/* 7AEB0 800C06B0 002C0821 */  addu       $at, $at, $t4
/* 7AEB4 800C06B4 AC397DD8 */  sw         $t9, %lo(D_801D7DD8)($at)
/* 7AEB8 800C06B8 240D001D */  addiu      $t5, $zero, 0x1D
/* 7AEBC 800C06BC 1000000C */  b          .L800C06F0
/* 7AEC0 800C06C0 A20D001D */   sb        $t5, 0x1D($s0)
.L800C06C4:
/* 7AEC4 800C06C4 10200003 */  beqz       $at, .L800C06D4
/* 7AEC8 800C06C8 240E0014 */   addiu     $t6, $zero, 0x14
/* 7AECC 800C06CC 10000008 */  b          .L800C06F0
/* 7AED0 800C06D0 A20E001D */   sb        $t6, 0x1D($s0)
.L800C06D4:
/* 7AED4 800C06D4 28410032 */  slti       $at, $v0, 0x32
/* 7AED8 800C06D8 10200004 */  beqz       $at, .L800C06EC
/* 7AEDC 800C06DC 24180004 */   addiu     $t8, $zero, 0x4
/* 7AEE0 800C06E0 240F0008 */  addiu      $t7, $zero, 0x8
/* 7AEE4 800C06E4 10000002 */  b          .L800C06F0
/* 7AEE8 800C06E8 A20F001D */   sb        $t7, 0x1D($s0)
.L800C06EC:
/* 7AEEC 800C06EC A218001D */  sb         $t8, 0x1D($s0)
.L800C06F0:
/* 7AEF0 800C06F0 10000006 */  b          .L800C070C
/* 7AEF4 800C06F4 82020004 */   lb        $v0, 0x4($s0)
/* 7AEF8 800C06F8 92030005 */  lbu        $v1, 0x5($s0)
.L800C06FC:
/* 7AEFC 800C06FC 10600003 */  beqz       $v1, .L800C070C
/* 7AF00 800C0700 246BFFFF */   addiu     $t3, $v1, -0x1
/* 7AF04 800C0704 A20B0005 */  sb         $t3, 0x5($s0)
/* 7AF08 800C0708 82020004 */  lb         $v0, 0x4($s0)
.L800C070C:
/* 7AF0C 800C070C 83B90067 */  lb         $t9, 0x67($sp)
/* 7AF10 800C0710 00196080 */  sll        $t4, $t9, 2
/* 7AF14 800C0714 10000007 */  b          .L800C0734
/* 7AF18 800C0718 AFAC0028 */   sw        $t4, 0x28($sp)
/* 7AF1C 800C071C 240D00FF */  addiu      $t5, $zero, 0xFF
.L800C0720:
/* 7AF20 800C0720 A20D0005 */  sb         $t5, 0x5($s0)
/* 7AF24 800C0724 83AE0067 */  lb         $t6, 0x67($sp)
/* 7AF28 800C0728 82020004 */  lb         $v0, 0x4($s0)
/* 7AF2C 800C072C 000E7880 */  sll        $t7, $t6, 2
/* 7AF30 800C0730 AFAF0028 */  sw         $t7, 0x28($sp)
.L800C0734:
/* 7AF34 800C0734 8218001C */  lb         $t8, 0x1C($s0)
/* 7AF38 800C0738 A2020006 */  sb         $v0, 0x6($s0)
/* 7AF3C 800C073C 13000017 */  beqz       $t8, .L800C079C
/* 7AF40 800C0740 3C0B800E */   lui       $t3, %hi(D_800E7CAC)
/* 7AF44 800C0744 8D6B7CAC */  lw         $t3, %lo(D_800E7CAC)($t3)
/* 7AF48 800C0748 3C068004 */  lui        $a2, %hi(D_8004562C)
/* 7AF4C 800C074C 24040005 */  addiu      $a0, $zero, 0x5
/* 7AF50 800C0750 1560000F */  bnez       $t3, .L800C0790
/* 7AF54 800C0754 2405000A */   addiu     $a1, $zero, 0xA
/* 7AF58 800C0758 8CC6562C */  lw         $a2, %lo(D_8004562C)($a2)
/* 7AF5C 800C075C 8FA40030 */  lw         $a0, 0x30($sp)
/* 7AF60 800C0760 2405000F */  addiu      $a1, $zero, 0xF
/* 7AF64 800C0764 30CC001F */  andi       $t4, $a2, 0x1F
/* 7AF68 800C0768 25860060 */  addiu      $a2, $t4, 0x60
/* 7AF6C 800C076C 24840002 */  addiu      $a0, $a0, 0x2
/* 7AF70 800C0770 309900FF */  andi       $t9, $a0, 0xFF
/* 7AF74 800C0774 30CD00FF */  andi       $t5, $a2, 0xFF
/* 7AF78 800C0778 01A03025 */  or         $a2, $t5, $zero
/* 7AF7C 800C077C 0C02FFFB */  jal        func_800BFFEC
/* 7AF80 800C0780 03202025 */   or        $a0, $t9, $zero
/* 7AF84 800C0784 240E001D */  addiu      $t6, $zero, 0x1D
/* 7AF88 800C0788 10000003 */  b          .L800C0798
/* 7AF8C 800C078C A20E001D */   sb        $t6, 0x1D($s0)
.L800C0790:
/* 7AF90 800C0790 0C02FFFB */  jal        func_800BFFEC
/* 7AF94 800C0794 2406007F */   addiu     $a2, $zero, 0x7F
.L800C0798:
/* 7AF98 800C0798 A200001C */  sb         $zero, 0x1C($s0)
.L800C079C:
/* 7AF9C 800C079C 83AF0067 */  lb         $t7, 0x67($sp)
/* 7AFA0 800C07A0 29E10002 */  slti       $at, $t7, 0x2
/* 7AFA4 800C07A4 5020000F */  beql       $at, $zero, .L800C07E4
/* 7AFA8 800C07A8 82180004 */   lb        $t8, 0x4($s0)
/* 7AFAC 800C07AC 82020009 */  lb         $v0, 0x9($s0)
/* 7AFB0 800C07B0 50400005 */  beql       $v0, $zero, .L800C07C8
/* 7AFB4 800C07B4 8204000E */   lb        $a0, 0xE($s0)
/* 7AFB8 800C07B8 8204000E */  lb         $a0, 0xE($s0)
/* 7AFBC 800C07BC 50800008 */  beql       $a0, $zero, .L800C07E0
/* 7AFC0 800C07C0 A2040009 */   sb        $a0, 0x9($s0)
/* 7AFC4 800C07C4 8204000E */  lb         $a0, 0xE($s0)
.L800C07C8:
/* 7AFC8 800C07C8 50820005 */  beql       $a0, $v0, .L800C07E0
/* 7AFCC 800C07CC A2040009 */   sb        $a0, 0x9($s0)
/* 7AFD0 800C07D0 0C030DBE */  jal        func_800C36F8
/* 7AFD4 800C07D4 00000000 */   nop
/* 7AFD8 800C07D8 8204000E */  lb         $a0, 0xE($s0)
/* 7AFDC 800C07DC A2040009 */  sb         $a0, 0x9($s0)
.L800C07E0:
/* 7AFE0 800C07E0 82180004 */  lb         $t8, 0x4($s0)
.L800C07E4:
/* 7AFE4 800C07E4 83AB0067 */  lb         $t3, 0x67($sp)
/* 7AFE8 800C07E8 5300000F */  beql       $t8, $zero, .L800C0828
/* 7AFEC 800C07EC 44801000 */   mtc1      $zero, $f2
/* 7AFF0 800C07F0 8204000E */  lb         $a0, 0xE($s0)
/* 7AFF4 800C07F4 24010005 */  addiu      $at, $zero, 0x5
/* 7AFF8 800C07F8 14810003 */  bne        $a0, $at, .L800C0808
/* 7AFFC 800C07FC 3C01800F */   lui       $at, %hi(D_800EC36C)
/* 7B000 800C0800 1000000A */  b          .L800C082C
/* 7B004 800C0804 C422C36C */   lwc1      $f2, %lo(D_800EC36C)($at)
.L800C0808:
/* 7B008 800C0808 44842000 */  mtc1       $a0, $f4
/* 7B00C 800C080C 3C01800F */  lui        $at, %hi(D_800EC370)
/* 7B010 800C0810 C428C370 */  lwc1       $f8, %lo(D_800EC370)($at)
/* 7B014 800C0814 468021A0 */  cvt.s.w    $f6, $f4
/* 7B018 800C0818 46083082 */  mul.s      $f2, $f6, $f8
/* 7B01C 800C081C 10000003 */  b          .L800C082C
/* 7B020 800C0820 00000000 */   nop
/* 7B024 800C0824 44801000 */  mtc1       $zero, $f2
.L800C0828:
/* 7B028 800C0828 00000000 */  nop
.L800C082C:
/* 7B02C 800C082C 55600005 */  bnel       $t3, $zero, .L800C0844
/* 7B030 800C0830 83AC0067 */   lb        $t4, 0x67($sp)
/* 7B034 800C0834 8219000E */  lb         $t9, 0xE($s0)
/* 7B038 800C0838 3C01801D */  lui        $at, %hi(D_801D7DFC)
/* 7B03C 800C083C A0397DFC */  sb         $t9, %lo(D_801D7DFC)($at)
/* 7B040 800C0840 83AC0067 */  lb         $t4, 0x67($sp)
.L800C0844:
/* 7B044 800C0844 24010001 */  addiu      $at, $zero, 0x1
/* 7B048 800C0848 55810005 */  bnel       $t4, $at, .L800C0860
/* 7B04C 800C084C 8FAE005C */   lw        $t6, 0x5C($sp)
/* 7B050 800C0850 820D000E */  lb         $t5, 0xE($s0)
/* 7B054 800C0854 3C01801D */  lui        $at, %hi(D_801D7E04)
/* 7B058 800C0858 A02D7E04 */  sb         $t5, %lo(D_801D7E04)($at)
/* 7B05C 800C085C 8FAE005C */  lw         $t6, 0x5C($sp)
.L800C0860:
/* 7B060 800C0860 05C30003 */  bgezl      $t6, .L800C0870
/* 7B064 800C0864 8FAF0058 */   lw        $t7, 0x58($sp)
/* 7B068 800C0868 AFA0005C */  sw         $zero, 0x5C($sp)
/* 7B06C 800C086C 8FAF0058 */  lw         $t7, 0x58($sp)
.L800C0870:
/* 7B070 800C0870 8FA4005C */  lw         $a0, 0x5C($sp)
/* 7B074 800C0874 05E10002 */  bgez       $t7, .L800C0880
/* 7B078 800C0878 28810064 */   slti      $at, $a0, 0x64
/* 7B07C 800C087C AFA00058 */  sw         $zero, 0x58($sp)
.L800C0880:
/* 7B080 800C0880 14200002 */  bnez       $at, .L800C088C
/* 7B084 800C0884 8FB80058 */   lw        $t8, 0x58($sp)
/* 7B088 800C0888 24040063 */  addiu      $a0, $zero, 0x63
.L800C088C:
/* 7B08C 800C088C 2B010080 */  slti       $at, $t8, 0x80
/* 7B090 800C0890 14200002 */  bnez       $at, .L800C089C
/* 7B094 800C0894 240B007F */   addiu     $t3, $zero, 0x7F
/* 7B098 800C0898 AFAB0058 */  sw         $t3, 0x58($sp)
.L800C089C:
/* 7B09C 800C089C 8202001D */  lb         $v0, 0x1D($s0)
/* 7B0A0 800C08A0 10400018 */  beqz       $v0, .L800C0904
/* 7B0A4 800C08A4 00026023 */   negu      $t4, $v0
/* 7B0A8 800C08A8 3C0D800E */  lui        $t5, %hi(D_800E7F75)
/* 7B0AC 800C08AC 01AC6821 */  addu       $t5, $t5, $t4
/* 7B0B0 800C08B0 81AD7F75 */  lb         $t5, %lo(D_800E7F75)($t5)
/* 7B0B4 800C08B4 2419007F */  addiu      $t9, $zero, 0x7F
/* 7B0B8 800C08B8 3C03800E */  lui        $v1, %hi(D_800E7DC8)
/* 7B0BC 800C08BC AFB90058 */  sw         $t9, 0x58($sp)
/* 7B0C0 800C08C0 24637DC8 */  addiu      $v1, $v1, %lo(D_800E7DC8)
/* 7B0C4 800C08C4 0002C880 */  sll        $t9, $v0, 2
/* 7B0C8 800C08C8 3C01800E */  lui        $at, %hi(D_800E7F78)
/* 7B0CC 800C08CC 000D7080 */  sll        $t6, $t5, 2
/* 7B0D0 800C08D0 006E7821 */  addu       $t7, $v1, $t6
/* 7B0D4 800C08D4 00390821 */  addu       $at, $at, $t9
/* 7B0D8 800C08D8 C5E00000 */  lwc1       $f0, 0x0($t7)
/* 7B0DC 800C08DC C4307F78 */  lwc1       $f16, %lo(D_800E7F78)($at)
/* 7B0E0 800C08E0 0004C080 */  sll        $t8, $a0, 2
/* 7B0E4 800C08E4 00785821 */  addu       $t3, $v1, $t8
/* 7B0E8 800C08E8 46100482 */  mul.s      $f18, $f0, $f16
/* 7B0EC 800C08EC C56A0000 */  lwc1       $f10, 0x0($t3)
/* 7B0F0 800C08F0 244CFFFF */  addiu      $t4, $v0, -0x1
/* 7B0F4 800C08F4 A20C001D */  sb         $t4, 0x1D($s0)
/* 7B0F8 800C08F8 460A1080 */  add.s      $f2, $f2, $f10
/* 7B0FC 800C08FC 10000007 */  b          .L800C091C
/* 7B100 800C0900 46121080 */   add.s     $f2, $f2, $f18
.L800C0904:
/* 7B104 800C0904 3C03800E */  lui        $v1, %hi(D_800E7DC8)
/* 7B108 800C0908 24637DC8 */  addiu      $v1, $v1, %lo(D_800E7DC8)
/* 7B10C 800C090C 00046880 */  sll        $t5, $a0, 2
/* 7B110 800C0910 006D7021 */  addu       $t6, $v1, $t5
/* 7B114 800C0914 C5C40000 */  lwc1       $f4, 0x0($t6)
/* 7B118 800C0918 46041080 */  add.s      $f2, $f2, $f4
.L800C091C:
/* 7B11C 800C091C 8FAF0028 */  lw         $t7, 0x28($sp)
/* 7B120 800C0920 3C18800E */  lui        $t8, %hi(D_800E7CC8)
/* 7B124 800C0924 27187CC8 */  addiu      $t8, $t8, %lo(D_800E7CC8)
/* 7B128 800C0928 01F85821 */  addu       $t3, $t7, $t8
/* 7B12C 800C092C AFAB0024 */  sw         $t3, 0x24($sp)
/* 7B130 800C0930 C5600000 */  lwc1       $f0, 0x0($t3)
/* 7B134 800C0934 3C014020 */  lui        $at, (0x40200000 >> 16)
/* 7B138 800C0938 44814000 */  mtc1       $at, $f8
/* 7B13C 800C093C 46001181 */  sub.s      $f6, $f2, $f0
/* 7B140 800C0940 3C01800F */  lui        $at, %hi(D_800EC374)
/* 7B144 800C0944 46083283 */  div.s      $f10, $f6, $f8
/* 7B148 800C0948 46005080 */  add.s      $f2, $f10, $f0
/* 7B14C 800C094C E5620000 */  swc1       $f2, 0x0($t3)
/* 7B150 800C0950 C430C374 */  lwc1       $f16, %lo(D_800EC374)($at)
/* 7B154 800C0954 4610103C */  c.lt.s     $f2, $f16
/* 7B158 800C0958 00000000 */  nop
/* 7B15C 800C095C 4500000B */  bc1f       .L800C098C
/* 7B160 800C0960 3C040600 */   lui       $a0, (0x6000005 >> 16)
/* 7B164 800C0964 34840005 */  ori        $a0, $a0, (0x6000005 & 0xFFFF)
/* 7B168 800C0968 2405FFFD */  addiu      $a1, $zero, -0x3
/* 7B16C 800C096C 0C0314F5 */  jal        func_800C53D4
/* 7B170 800C0970 E7A2003C */   swc1      $f2, 0x3C($sp)
/* 7B174 800C0974 3C01800F */  lui        $at, %hi(D_800EC378)
/* 7B178 800C0978 C432C378 */  lwc1       $f18, %lo(D_800EC378)($at)
/* 7B17C 800C097C C7A2003C */  lwc1       $f2, 0x3C($sp)
/* 7B180 800C0980 46121082 */  mul.s      $f2, $f2, $f18
/* 7B184 800C0984 10000017 */  b          .L800C09E4
/* 7B188 800C0988 83B90067 */   lb        $t9, 0x67($sp)
.L800C098C:
/* 7B18C 800C098C 3C01800F */  lui        $at, %hi(D_800EC37C)
/* 7B190 800C0990 C424C37C */  lwc1       $f4, %lo(D_800EC37C)($at)
/* 7B194 800C0994 3C040600 */  lui        $a0, (0x6000005 >> 16)
/* 7B198 800C0998 34840005 */  ori        $a0, $a0, (0x6000005 & 0xFFFF)
/* 7B19C 800C099C 4602203C */  c.lt.s     $f4, $f2
/* 7B1A0 800C09A0 00002825 */  or         $a1, $zero, $zero
/* 7B1A4 800C09A4 4500000B */  bc1f       .L800C09D4
/* 7B1A8 800C09A8 00000000 */   nop
/* 7B1AC 800C09AC 3C040600 */  lui        $a0, (0x6000005 >> 16)
/* 7B1B0 800C09B0 34840005 */  ori        $a0, $a0, (0x6000005 & 0xFFFF)
/* 7B1B4 800C09B4 24050003 */  addiu      $a1, $zero, 0x3
/* 7B1B8 800C09B8 0C0314F5 */  jal        func_800C53D4
/* 7B1BC 800C09BC E7A2003C */   swc1      $f2, 0x3C($sp)
/* 7B1C0 800C09C0 3C01800F */  lui        $at, %hi(D_800EC380)
/* 7B1C4 800C09C4 C426C380 */  lwc1       $f6, %lo(D_800EC380)($at)
/* 7B1C8 800C09C8 C7A2003C */  lwc1       $f2, 0x3C($sp)
/* 7B1CC 800C09CC 10000004 */  b          .L800C09E0
/* 7B1D0 800C09D0 46061083 */   div.s     $f2, $f2, $f6
.L800C09D4:
/* 7B1D4 800C09D4 0C0314F5 */  jal        func_800C53D4
/* 7B1D8 800C09D8 E7A2003C */   swc1      $f2, 0x3C($sp)
/* 7B1DC 800C09DC C7A2003C */  lwc1       $f2, 0x3C($sp)
.L800C09E0:
/* 7B1E0 800C09E0 83B90067 */  lb         $t9, 0x67($sp)
.L800C09E4:
/* 7B1E4 800C09E4 13200008 */  beqz       $t9, .L800C0A08
/* 7B1E8 800C09E8 24010001 */   addiu     $at, $zero, 0x1
/* 7B1EC 800C09EC 13210022 */  beq        $t9, $at, .L800C0A78
/* 7B1F0 800C09F0 3C0F8004 */   lui       $t7, %hi(D_8004562C)
/* 7B1F4 800C09F4 24010002 */  addiu      $at, $zero, 0x2
/* 7B1F8 800C09F8 1321003C */  beq        $t9, $at, .L800C0AEC
/* 7B1FC 800C09FC 00000000 */   nop
/* 7B200 800C0A00 10000063 */  b          .L800C0B90
/* 7B204 800C0A04 82020011 */   lb        $v0, 0x11($s0)
.L800C0A08:
/* 7B208 800C0A08 3C0C8004 */  lui        $t4, %hi(D_8004562C)
/* 7B20C 800C0A0C 8D8C562C */  lw         $t4, %lo(D_8004562C)($t4)
/* 7B210 800C0A10 3C01800F */  lui        $at, %hi(D_800EC384)
/* 7B214 800C0A14 C430C384 */  lwc1       $f16, %lo(D_800EC384)($at)
/* 7B218 800C0A18 318D000F */  andi       $t5, $t4, 0xF
/* 7B21C 800C0A1C 448D4000 */  mtc1       $t5, $f8
/* 7B220 800C0A20 3C01800F */  lui        $at, %hi(D_800EC388)
/* 7B224 800C0A24 C424C388 */  lwc1       $f4, %lo(D_800EC388)($at)
/* 7B228 800C0A28 468042A0 */  cvt.s.w    $f10, $f8
/* 7B22C 800C0A2C 3C040400 */  lui        $a0, (0x4000000 >> 16)
/* 7B230 800C0A30 46105482 */  mul.s      $f18, $f10, $f16
/* 7B234 800C0A34 46049000 */  add.s      $f0, $f18, $f4
/* 7B238 800C0A38 46001182 */  mul.s      $f6, $f2, $f0
/* 7B23C 800C0A3C 44053000 */  mfc1       $a1, $f6
/* 7B240 800C0A40 0C0314E3 */  jal        func_800C538C
/* 7B244 800C0A44 00000000 */   nop
/* 7B248 800C0A48 8FAE0058 */  lw         $t6, 0x58($sp)
/* 7B24C 800C0A4C 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
/* 7B250 800C0A50 44818000 */  mtc1       $at, $f16
/* 7B254 800C0A54 448E4000 */  mtc1       $t6, $f8
/* 7B258 800C0A58 3C040100 */  lui        $a0, (0x1000000 >> 16)
/* 7B25C 800C0A5C 468042A0 */  cvt.s.w    $f10, $f8
/* 7B260 800C0A60 46105483 */  div.s      $f18, $f10, $f16
/* 7B264 800C0A64 44059000 */  mfc1       $a1, $f18
/* 7B268 800C0A68 0C0314E3 */  jal        func_800C538C
/* 7B26C 800C0A6C 00000000 */   nop
/* 7B270 800C0A70 10000047 */  b          .L800C0B90
/* 7B274 800C0A74 82020011 */   lb        $v0, 0x11($s0)
.L800C0A78:
/* 7B278 800C0A78 8DEF562C */  lw         $t7, %lo(D_8004562C)($t7)
/* 7B27C 800C0A7C 3C01800F */  lui        $at, %hi(D_800EC38C)
/* 7B280 800C0A80 C428C38C */  lwc1       $f8, %lo(D_800EC38C)($at)
/* 7B284 800C0A84 31F8000F */  andi       $t8, $t7, 0xF
/* 7B288 800C0A88 44982000 */  mtc1       $t8, $f4
/* 7B28C 800C0A8C 3C01800F */  lui        $at, %hi(D_800EC390)
/* 7B290 800C0A90 C430C390 */  lwc1       $f16, %lo(D_800EC390)($at)
/* 7B294 800C0A94 468021A0 */  cvt.s.w    $f6, $f4
/* 7B298 800C0A98 3C040400 */  lui        $a0, (0x4000300 >> 16)
/* 7B29C 800C0A9C 34840300 */  ori        $a0, $a0, (0x4000300 & 0xFFFF)
/* 7B2A0 800C0AA0 46083282 */  mul.s      $f10, $f6, $f8
/* 7B2A4 800C0AA4 46105000 */  add.s      $f0, $f10, $f16
/* 7B2A8 800C0AA8 46001482 */  mul.s      $f18, $f2, $f0
/* 7B2AC 800C0AAC 44059000 */  mfc1       $a1, $f18
/* 7B2B0 800C0AB0 0C0314E3 */  jal        func_800C538C
/* 7B2B4 800C0AB4 00000000 */   nop
/* 7B2B8 800C0AB8 8FAB0058 */  lw         $t3, 0x58($sp)
/* 7B2BC 800C0ABC 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
/* 7B2C0 800C0AC0 44814000 */  mtc1       $at, $f8
/* 7B2C4 800C0AC4 448B2000 */  mtc1       $t3, $f4
/* 7B2C8 800C0AC8 3C040100 */  lui        $a0, (0x1000300 >> 16)
/* 7B2CC 800C0ACC 34840300 */  ori        $a0, $a0, (0x1000300 & 0xFFFF)
/* 7B2D0 800C0AD0 468021A0 */  cvt.s.w    $f6, $f4
/* 7B2D4 800C0AD4 46083283 */  div.s      $f10, $f6, $f8
/* 7B2D8 800C0AD8 44055000 */  mfc1       $a1, $f10
/* 7B2DC 800C0ADC 0C0314E3 */  jal        func_800C538C
/* 7B2E0 800C0AE0 00000000 */   nop
/* 7B2E4 800C0AE4 1000002A */  b          .L800C0B90
/* 7B2E8 800C0AE8 82020011 */   lb        $v0, 0x11($s0)
.L800C0AEC:
/* 7B2EC 800C0AEC 3C01801D */  lui        $at, %hi(D_801D7E20)
/* 7B2F0 800C0AF0 C4307E20 */  lwc1       $f16, %lo(D_801D7E20)($at)
/* 7B2F4 800C0AF4 83A4005B */  lb         $a0, 0x5B($sp)
/* 7B2F8 800C0AF8 46101482 */  mul.s      $f18, $f2, $f16
/* 7B2FC 800C0AFC 44059000 */  mfc1       $a1, $f18
/* 7B300 800C0B00 0C03002C */  jal        func_800C00B0
/* 7B304 800C0B04 00000000 */   nop
/* 7B308 800C0B08 3C01801D */  lui        $at, %hi(D_801D7E24)
/* 7B30C 800C0B0C C4247E24 */  lwc1       $f4, %lo(D_801D7E24)($at)
/* 7B310 800C0B10 3C01800F */  lui        $at, %hi(D_800EC394)
/* 7B314 800C0B14 C426C394 */  lwc1       $f6, %lo(D_800EC394)($at)
/* 7B318 800C0B18 3C040100 */  lui        $a0, (0x1000300 >> 16)
/* 7B31C 800C0B1C 34840300 */  ori        $a0, $a0, (0x1000300 & 0xFFFF)
/* 7B320 800C0B20 46062202 */  mul.s      $f8, $f4, $f6
/* 7B324 800C0B24 44054000 */  mfc1       $a1, $f8
/* 7B328 800C0B28 0C0314E3 */  jal        func_800C538C
/* 7B32C 800C0B2C 00000000 */   nop
/* 7B330 800C0B30 3C040100 */  lui        $a0, (0x1000500 >> 16)
/* 7B334 800C0B34 3C05801D */  lui        $a1, %hi(D_801D7E24)
/* 7B338 800C0B38 8CA57E24 */  lw         $a1, %lo(D_801D7E24)($a1)
/* 7B33C 800C0B3C 0C0314E3 */  jal        func_800C538C
/* 7B340 800C0B40 34840500 */   ori       $a0, $a0, (0x1000500 & 0xFFFF)
/* 7B344 800C0B44 3C040300 */  lui        $a0, (0x3000300 >> 16)
/* 7B348 800C0B48 3C05801D */  lui        $a1, %hi(D_801D7E28)
/* 7B34C 800C0B4C 80A57E28 */  lb         $a1, %lo(D_801D7E28)($a1)
/* 7B350 800C0B50 0C0314F5 */  jal        func_800C53D4
/* 7B354 800C0B54 34840300 */   ori       $a0, $a0, (0x3000300 & 0xFFFF)
/* 7B358 800C0B58 3C040300 */  lui        $a0, (0x3000500 >> 16)
/* 7B35C 800C0B5C 3C05801D */  lui        $a1, %hi(D_801D7E28)
/* 7B360 800C0B60 80A57E28 */  lb         $a1, %lo(D_801D7E28)($a1)
/* 7B364 800C0B64 0C0314F5 */  jal        func_800C53D4
/* 7B368 800C0B68 34840500 */   ori       $a0, $a0, (0x3000500 & 0xFFFF)
/* 7B36C 800C0B6C 3C19801D */  lui        $t9, %hi(D_801D7DE8)
/* 7B370 800C0B70 97397DE8 */  lhu        $t9, %lo(D_801D7DE8)($t9)
/* 7B374 800C0B74 3C040500 */  lui        $a0, (0x5000300 >> 16)
/* 7B378 800C0B78 34840300 */  ori        $a0, $a0, (0x5000300 & 0xFFFF)
/* 7B37C 800C0B7C 17200003 */  bnez       $t9, .L800C0B8C
/* 7B380 800C0B80 3C05801D */   lui       $a1, %hi(D_801D7E29)
/* 7B384 800C0B84 0C0314F5 */  jal        func_800C53D4
/* 7B388 800C0B88 80A57E29 */   lb        $a1, %lo(D_801D7E29)($a1)
.L800C0B8C:
/* 7B38C 800C0B8C 82020011 */  lb         $v0, 0x11($s0)
.L800C0B90:
/* 7B390 800C0B90 28410064 */  slti       $at, $v0, 0x64
/* 7B394 800C0B94 10200011 */  beqz       $at, .L800C0BDC
/* 7B398 800C0B98 3C0C800E */   lui       $t4, %hi(D_800E7CAC)
/* 7B39C 800C0B9C 8D8C7CAC */  lw         $t4, %lo(D_800E7CAC)($t4)
/* 7B3A0 800C0BA0 24010001 */  addiu      $at, $zero, 0x1
/* 7B3A4 800C0BA4 5581000E */  bnel       $t4, $at, .L800C0BE0
/* 7B3A8 800C0BA8 28410032 */   slti      $at, $v0, 0x32
/* 7B3AC 800C0BAC 820D0000 */  lb         $t5, 0x0($s0)
/* 7B3B0 800C0BB0 3C0E8004 */  lui        $t6, %hi(D_8004562C)
/* 7B3B4 800C0BB4 29A10015 */  slti       $at, $t5, 0x15
/* 7B3B8 800C0BB8 54200009 */  bnel       $at, $zero, .L800C0BE0
/* 7B3BC 800C0BBC 28410032 */   slti      $at, $v0, 0x32
/* 7B3C0 800C0BC0 8DCE562C */  lw         $t6, %lo(D_8004562C)($t6)
/* 7B3C4 800C0BC4 240B0001 */  addiu      $t3, $zero, 0x1
/* 7B3C8 800C0BC8 A20B0010 */  sb         $t3, 0x10($s0)
/* 7B3CC 800C0BCC 31CF000F */  andi       $t7, $t6, 0xF
/* 7B3D0 800C0BD0 25F80064 */  addiu      $t8, $t7, 0x64
/* 7B3D4 800C0BD4 A2180011 */  sb         $t8, 0x11($s0)
/* 7B3D8 800C0BD8 82020011 */  lb         $v0, 0x11($s0)
.L800C0BDC:
/* 7B3DC 800C0BDC 28410032 */  slti       $at, $v0, 0x32
.L800C0BE0:
/* 7B3E0 800C0BE0 50200003 */  beql       $at, $zero, .L800C0BF0
/* 7B3E4 800C0BE4 82190007 */   lb        $t9, 0x7($s0)
/* 7B3E8 800C0BE8 A2000011 */  sb         $zero, 0x11($s0)
/* 7B3EC 800C0BEC 82190007 */  lb         $t9, 0x7($s0)
.L800C0BF0:
/* 7B3F0 800C0BF0 57200003 */  bnel       $t9, $zero, .L800C0C00
/* 7B3F4 800C0BF4 83AC0067 */   lb        $t4, 0x67($sp)
/* 7B3F8 800C0BF8 A2000011 */  sb         $zero, 0x11($s0)
/* 7B3FC 800C0BFC 83AC0067 */  lb         $t4, 0x67($sp)
.L800C0C00:
/* 7B400 800C0C00 24010002 */  addiu      $at, $zero, 0x2
/* 7B404 800C0C04 55810003 */  bnel       $t4, $at, .L800C0C14
/* 7B408 800C0C08 82020011 */   lb        $v0, 0x11($s0)
/* 7B40C 800C0C0C A2000011 */  sb         $zero, 0x11($s0)
/* 7B410 800C0C10 82020011 */  lb         $v0, 0x11($s0)
.L800C0C14:
/* 7B414 800C0C14 1040003E */  beqz       $v0, .L800C0D10
/* 7B418 800C0C18 244DFFCE */   addiu     $t5, $v0, -0x32
/* 7B41C 800C0C1C A20D0011 */  sb         $t5, 0x11($s0)
/* 7B420 800C0C20 8FA30030 */  lw         $v1, 0x30($sp)
/* 7B424 800C0C24 82020011 */  lb         $v0, 0x11($s0)
/* 7B428 800C0C28 24630002 */  addiu      $v1, $v1, 0x2
/* 7B42C 800C0C2C 28410029 */  slti       $at, $v0, 0x29
/* 7B430 800C0C30 14200005 */  bnez       $at, .L800C0C48
/* 7B434 800C0C34 306700FF */   andi      $a3, $v1, 0xFF
/* 7B438 800C0C38 00027040 */  sll        $t6, $v0, 1
/* 7B43C 800C0C3C 25CFFFE2 */  addiu      $t7, $t6, -0x1E
/* 7B440 800C0C40 10000007 */  b          .L800C0C60
/* 7B444 800C0C44 A20F0011 */   sb        $t7, 0x11($s0)
.L800C0C48:
/* 7B448 800C0C48 04410003 */  bgez       $v0, .L800C0C58
/* 7B44C 800C0C4C 0002C043 */   sra       $t8, $v0, 1
/* 7B450 800C0C50 24410001 */  addiu      $at, $v0, 0x1
/* 7B454 800C0C54 0001C043 */  sra        $t8, $at, 1
.L800C0C58:
/* 7B458 800C0C58 270B0014 */  addiu      $t3, $t8, 0x14
/* 7B45C 800C0C5C A20B0011 */  sb         $t3, 0x11($s0)
.L800C0C60:
/* 7B460 800C0C60 820D0000 */  lb         $t5, 0x0($s0)
/* 7B464 800C0C64 306400FF */  andi       $a0, $v1, 0xFF
/* 7B468 800C0C68 0004CA00 */  sll        $t9, $a0, 8
/* 7B46C 800C0C6C 448D5000 */  mtc1       $t5, $f10
/* 7B470 800C0C70 3C010400 */  lui        $at, (0x4000000 >> 16)
/* 7B474 800C0C74 03212025 */  or         $a0, $t9, $at
/* 7B478 800C0C78 46805420 */  cvt.s.w    $f16, $f10
/* 7B47C 800C0C7C 3C0142C8 */  lui        $at, (0x42C80000 >> 16)
/* 7B480 800C0C80 44819000 */  mtc1       $at, $f18
/* 7B484 800C0C84 3C01800F */  lui        $at, %hi(D_800EC398)
/* 7B488 800C0C88 C426C398 */  lwc1       $f6, %lo(D_800EC398)($at)
/* 7B48C 800C0C8C AFA70028 */  sw         $a3, 0x28($sp)
/* 7B490 800C0C90 46128103 */  div.s      $f4, $f16, $f18
/* 7B494 800C0C94 46062200 */  add.s      $f8, $f4, $f6
/* 7B498 800C0C98 44054000 */  mfc1       $a1, $f8
/* 7B49C 800C0C9C 0C0314E3 */  jal        func_800C538C
/* 7B4A0 800C0CA0 00000000 */   nop
/* 7B4A4 800C0CA4 3C02801D */  lui        $v0, %hi(D_801D7DC4)
/* 7B4A8 800C0CA8 8C427DC4 */  lw         $v0, %lo(D_801D7DC4)($v0)
/* 7B4AC 800C0CAC 24010003 */  addiu      $at, $zero, 0x3
/* 7B4B0 800C0CB0 8FA70028 */  lw         $a3, 0x28($sp)
/* 7B4B4 800C0CB4 10410007 */  beq        $v0, $at, .L800C0CD4
/* 7B4B8 800C0CB8 24010006 */   addiu     $at, $zero, 0x6
/* 7B4BC 800C0CBC 10410005 */  beq        $v0, $at, .L800C0CD4
/* 7B4C0 800C0CC0 3C028004 */   lui       $v0, %hi(D_8004562C)
/* 7B4C4 800C0CC4 8C42562C */  lw         $v0, %lo(D_8004562C)($v0)
/* 7B4C8 800C0CC8 304E0003 */  andi       $t6, $v0, 0x3
/* 7B4CC 800C0CCC 10000008 */  b          .L800C0CF0
/* 7B4D0 800C0CD0 000E1080 */   sll       $v0, $t6, 2
.L800C0CD4:
/* 7B4D4 800C0CD4 3C028004 */  lui        $v0, %hi(D_8004562C)
/* 7B4D8 800C0CD8 8C42562C */  lw         $v0, %lo(D_8004562C)($v0)
/* 7B4DC 800C0CDC 24010005 */  addiu      $at, $zero, 0x5
/* 7B4E0 800C0CE0 0041001B */  divu       $zero, $v0, $at
/* 7B4E4 800C0CE4 0000C010 */  mfhi       $t8
/* 7B4E8 800C0CE8 00181080 */  sll        $v0, $t8, 2
/* 7B4EC 800C0CEC 00000000 */  nop
.L800C0CF0:
/* 7B4F0 800C0CF0 82190010 */  lb         $t9, 0x10($s0)
/* 7B4F4 800C0CF4 30E400FF */  andi       $a0, $a3, 0xFF
/* 7B4F8 800C0CF8 92060011 */  lbu        $a2, 0x11($s0)
/* 7B4FC 800C0CFC 03222821 */  addu       $a1, $t9, $v0
/* 7B500 800C0D00 30AC00FF */  andi       $t4, $a1, 0xFF
/* 7B504 800C0D04 0C030011 */  jal        func_800C0044
/* 7B508 800C0D08 01802825 */   or        $a1, $t4, $zero
/* 7B50C 800C0D0C A2000011 */  sb         $zero, 0x11($s0)
.L800C0D10:
/* 7B510 800C0D10 860D000C */  lh         $t5, 0xC($s0)
/* 7B514 800C0D14 29A10005 */  slti       $at, $t5, 0x5
/* 7B518 800C0D18 54200007 */  bnel       $at, $zero, .L800C0D38
/* 7B51C 800C0D1C 82180012 */   lb        $t8, 0x12($s0)
/* 7B520 800C0D20 820E0016 */  lb         $t6, 0x16($s0)
/* 7B524 800C0D24 820F0012 */  lb         $t7, 0x12($s0)
/* 7B528 800C0D28 55CF0003 */  bnel       $t6, $t7, .L800C0D38
/* 7B52C 800C0D2C 82180012 */   lb        $t8, 0x12($s0)
/* 7B530 800C0D30 A2000013 */  sb         $zero, 0x13($s0)
/* 7B534 800C0D34 82180012 */  lb         $t8, 0x12($s0)
.L800C0D38:
/* 7B538 800C0D38 24010002 */  addiu      $at, $zero, 0x2
/* 7B53C 800C0D3C 17010006 */  bne        $t8, $at, .L800C0D58
/* 7B540 800C0D40 3C040600 */   lui       $a0, (0x6000700 >> 16)
/* 7B544 800C0D44 34840700 */  ori        $a0, $a0, (0x6000700 & 0xFFFF)
/* 7B548 800C0D48 0C0314F5 */  jal        func_800C53D4
/* 7B54C 800C0D4C 24050013 */   addiu     $a1, $zero, 0x13
/* 7B550 800C0D50 A2000013 */  sb         $zero, 0x13($s0)
/* 7B554 800C0D54 A2000012 */  sb         $zero, 0x12($s0)
.L800C0D58:
/* 7B558 800C0D58 82030013 */  lb         $v1, 0x13($s0)
/* 7B55C 800C0D5C 8602000C */  lh         $v0, 0xC($s0)
/* 7B560 800C0D60 106000C0 */  beqz       $v1, .L800C1064
/* 7B564 800C0D64 00000000 */   nop
/* 7B568 800C0D68 5440001D */  bnel       $v0, $zero, .L800C0DE0
/* 7B56C 800C0D6C 8202001F */   lb        $v0, 0x1F($s0)
/* 7B570 800C0D70 8202001F */  lb         $v0, 0x1F($s0)
/* 7B574 800C0D74 28410024 */  slti       $at, $v0, 0x24
/* 7B578 800C0D78 54200009 */  bnel       $at, $zero, .L800C0DA0
/* 7B57C 800C0D7C 28410010 */   slti      $at, $v0, 0x10
/* 7B580 800C0D80 04610003 */  bgez       $v1, .L800C0D90
/* 7B584 800C0D84 00035883 */   sra       $t3, $v1, 2
/* 7B588 800C0D88 24610003 */  addiu      $at, $v1, 0x3
/* 7B58C 800C0D8C 00015883 */  sra        $t3, $at, 2
.L800C0D90:
/* 7B590 800C0D90 25790060 */  addiu      $t9, $t3, 0x60
/* 7B594 800C0D94 1000002B */  b          .L800C0E44
/* 7B598 800C0D98 A2190013 */   sb        $t9, 0x13($s0)
/* 7B59C 800C0D9C 28410010 */  slti       $at, $v0, 0x10
.L800C0DA0:
/* 7B5A0 800C0DA0 14200008 */  bnez       $at, .L800C0DC4
/* 7B5A4 800C0DA4 00000000 */   nop
/* 7B5A8 800C0DA8 04610003 */  bgez       $v1, .L800C0DB8
/* 7B5AC 800C0DAC 00036083 */   sra       $t4, $v1, 2
/* 7B5B0 800C0DB0 24610003 */  addiu      $at, $v1, 0x3
/* 7B5B4 800C0DB4 00016083 */  sra        $t4, $at, 2
.L800C0DB8:
/* 7B5B8 800C0DB8 258D0040 */  addiu      $t5, $t4, 0x40
/* 7B5BC 800C0DBC 10000021 */  b          .L800C0E44
/* 7B5C0 800C0DC0 A20D0013 */   sb        $t5, 0x13($s0)
.L800C0DC4:
/* 7B5C4 800C0DC4 04610003 */  bgez       $v1, .L800C0DD4
/* 7B5C8 800C0DC8 00037043 */   sra       $t6, $v1, 1
/* 7B5CC 800C0DCC 24610001 */  addiu      $at, $v1, 0x1
/* 7B5D0 800C0DD0 00017043 */  sra        $t6, $at, 1
.L800C0DD4:
/* 7B5D4 800C0DD4 1000001B */  b          .L800C0E44
/* 7B5D8 800C0DD8 A20E0013 */   sb        $t6, 0x13($s0)
/* 7B5DC 800C0DDC 8202001F */  lb         $v0, 0x1F($s0)
.L800C0DE0:
/* 7B5E0 800C0DE0 28410024 */  slti       $at, $v0, 0x24
/* 7B5E4 800C0DE4 54200009 */  bnel       $at, $zero, .L800C0E0C
/* 7B5E8 800C0DE8 28410010 */   slti      $at, $v0, 0x10
/* 7B5EC 800C0DEC 04610003 */  bgez       $v1, .L800C0DFC
/* 7B5F0 800C0DF0 00037883 */   sra       $t7, $v1, 2
/* 7B5F4 800C0DF4 24610003 */  addiu      $at, $v1, 0x3
/* 7B5F8 800C0DF8 00017883 */  sra        $t7, $at, 2
.L800C0DFC:
/* 7B5FC 800C0DFC 25F80030 */  addiu      $t8, $t7, 0x30
/* 7B600 800C0E00 10000010 */  b          .L800C0E44
/* 7B604 800C0E04 A2180013 */   sb        $t8, 0x13($s0)
/* 7B608 800C0E08 28410010 */  slti       $at, $v0, 0x10
.L800C0E0C:
/* 7B60C 800C0E0C 14200008 */  bnez       $at, .L800C0E30
/* 7B610 800C0E10 00000000 */   nop
/* 7B614 800C0E14 04610003 */  bgez       $v1, .L800C0E24
/* 7B618 800C0E18 00035883 */   sra       $t3, $v1, 2
/* 7B61C 800C0E1C 24610003 */  addiu      $at, $v1, 0x3
/* 7B620 800C0E20 00015883 */  sra        $t3, $at, 2
.L800C0E24:
/* 7B624 800C0E24 25790020 */  addiu      $t9, $t3, 0x20
/* 7B628 800C0E28 10000006 */  b          .L800C0E44
/* 7B62C 800C0E2C A2190013 */   sb        $t9, 0x13($s0)
.L800C0E30:
/* 7B630 800C0E30 04610003 */  bgez       $v1, .L800C0E40
/* 7B634 800C0E34 00036083 */   sra       $t4, $v1, 2
/* 7B638 800C0E38 24610003 */  addiu      $at, $v1, 0x3
/* 7B63C 800C0E3C 00016083 */  sra        $t4, $at, 2
.L800C0E40:
/* 7B640 800C0E40 A20C0013 */  sb         $t4, 0x13($s0)
.L800C0E44:
/* 7B644 800C0E44 82020012 */  lb         $v0, 0x12($s0)
/* 7B648 800C0E48 8FA40030 */  lw         $a0, 0x30($sp)
/* 7B64C 800C0E4C 2401001C */  addiu      $at, $zero, 0x1C
/* 7B650 800C0E50 1441000D */  bne        $v0, $at, .L800C0E88
/* 7B654 800C0E54 24840002 */   addiu     $a0, $a0, 0x2
/* 7B658 800C0E58 3C0F801D */  lui        $t7, %hi(D_801D7E08)
/* 7B65C 800C0E5C 8DEF7E08 */  lw         $t7, %lo(D_801D7E08)($t7)
/* 7B660 800C0E60 820E0014 */  lb         $t6, 0x14($s0)
/* 7B664 800C0E64 308D00FF */  andi       $t5, $a0, 0xFF
/* 7B668 800C0E68 01A02025 */  or         $a0, $t5, $zero
/* 7B66C 800C0E6C 01CF2821 */  addu       $a1, $t6, $t7
/* 7B670 800C0E70 30B800FF */  andi       $t8, $a1, 0xFF
/* 7B674 800C0E74 03002825 */  or         $a1, $t8, $zero
/* 7B678 800C0E78 0C02FFFB */  jal        func_800BFFEC
/* 7B67C 800C0E7C 92060013 */   lbu       $a2, 0x13($s0)
/* 7B680 800C0E80 10000030 */  b          .L800C0F44
/* 7B684 800C0E84 82020012 */   lb        $v0, 0x12($s0)
.L800C0E88:
/* 7B688 800C0E88 24010040 */  addiu      $at, $zero, 0x40
/* 7B68C 800C0E8C 54410012 */  bnel       $v0, $at, .L800C0ED8
/* 7B690 800C0E90 24010041 */   addiu     $at, $zero, 0x41
/* 7B694 800C0E94 820B0007 */  lb         $t3, 0x7($s0)
/* 7B698 800C0E98 8FA40030 */  lw         $a0, 0x30($sp)
/* 7B69C 800C0E9C 3C0D801D */  lui        $t5, %hi(D_801D7E0C)
/* 7B6A0 800C0EA0 11600028 */  beqz       $t3, .L800C0F44
/* 7B6A4 800C0EA4 24840002 */   addiu     $a0, $a0, 0x2
/* 7B6A8 800C0EA8 820C0014 */  lb         $t4, 0x14($s0)
/* 7B6AC 800C0EAC 8DAD7E0C */  lw         $t5, %lo(D_801D7E0C)($t5)
/* 7B6B0 800C0EB0 309900FF */  andi       $t9, $a0, 0xFF
/* 7B6B4 800C0EB4 03202025 */  or         $a0, $t9, $zero
/* 7B6B8 800C0EB8 018D2821 */  addu       $a1, $t4, $t5
/* 7B6BC 800C0EBC 30AE00FF */  andi       $t6, $a1, 0xFF
/* 7B6C0 800C0EC0 01C02825 */  or         $a1, $t6, $zero
/* 7B6C4 800C0EC4 0C02FFFB */  jal        func_800BFFEC
/* 7B6C8 800C0EC8 92060013 */   lbu       $a2, 0x13($s0)
/* 7B6CC 800C0ECC 1000001D */  b          .L800C0F44
/* 7B6D0 800C0ED0 82020012 */   lb        $v0, 0x12($s0)
/* 7B6D4 800C0ED4 24010041 */  addiu      $at, $zero, 0x41
.L800C0ED8:
/* 7B6D8 800C0ED8 14410010 */  bne        $v0, $at, .L800C0F1C
/* 7B6DC 800C0EDC 8FA40030 */   lw        $a0, 0x30($sp)
/* 7B6E0 800C0EE0 3C02801D */  lui        $v0, %hi(D_801D7E10)
/* 7B6E4 800C0EE4 8C427E10 */  lw         $v0, %lo(D_801D7E10)($v0)
/* 7B6E8 800C0EE8 8FA40030 */  lw         $a0, 0x30($sp)
/* 7B6EC 800C0EEC 1040005B */  beqz       $v0, .L800C105C
/* 7B6F0 800C0EF0 24840002 */   addiu     $a0, $a0, 0x2
/* 7B6F4 800C0EF4 82180014 */  lb         $t8, 0x14($s0)
/* 7B6F8 800C0EF8 308F00FF */  andi       $t7, $a0, 0xFF
/* 7B6FC 800C0EFC 01E02025 */  or         $a0, $t7, $zero
/* 7B700 800C0F00 03022821 */  addu       $a1, $t8, $v0
/* 7B704 800C0F04 30AB00FF */  andi       $t3, $a1, 0xFF
/* 7B708 800C0F08 01602825 */  or         $a1, $t3, $zero
/* 7B70C 800C0F0C 0C02FFFB */  jal        func_800BFFEC
/* 7B710 800C0F10 92060013 */   lbu       $a2, 0x13($s0)
/* 7B714 800C0F14 1000000B */  b          .L800C0F44
/* 7B718 800C0F18 82020012 */   lb        $v0, 0x12($s0)
.L800C0F1C:
/* 7B71C 800C0F1C 820C0014 */  lb         $t4, 0x14($s0)
/* 7B720 800C0F20 24840002 */  addiu      $a0, $a0, 0x2
/* 7B724 800C0F24 309900FF */  andi       $t9, $a0, 0xFF
/* 7B728 800C0F28 004C2821 */  addu       $a1, $v0, $t4
/* 7B72C 800C0F2C 30AD00FF */  andi       $t5, $a1, 0xFF
/* 7B730 800C0F30 01A02825 */  or         $a1, $t5, $zero
/* 7B734 800C0F34 03202025 */  or         $a0, $t9, $zero
/* 7B738 800C0F38 0C02FFFB */  jal        func_800BFFEC
/* 7B73C 800C0F3C 92060013 */   lbu       $a2, 0x13($s0)
/* 7B740 800C0F40 82020012 */  lb         $v0, 0x12($s0)
.L800C0F44:
/* 7B744 800C0F44 24010014 */  addiu      $at, $zero, 0x14
/* 7B748 800C0F48 1441003E */  bne        $v0, $at, .L800C1044
/* 7B74C 800C0F4C 83AE0067 */   lb        $t6, 0x67($sp)
/* 7B750 800C0F50 15C0000A */  bnez       $t6, .L800C0F7C
/* 7B754 800C0F54 3C0C800E */   lui       $t4, %hi(D_800E7CB4)
/* 7B758 800C0F58 820F0013 */  lb         $t7, 0x13($s0)
/* 7B75C 800C0F5C 24180001 */  addiu      $t8, $zero, 0x1
/* 7B760 800C0F60 29E10065 */  slti       $at, $t7, 0x65
/* 7B764 800C0F64 14200005 */  bnez       $at, .L800C0F7C
/* 7B768 800C0F68 3C01800E */   lui       $at, %hi(D_800E7CB4)
/* 7B76C 800C0F6C AC387CB4 */  sw         $t8, %lo(D_800E7CB4)($at)
/* 7B770 800C0F70 820B0014 */  lb         $t3, 0x14($s0)
/* 7B774 800C0F74 3C01801D */  lui        $at, %hi(D_801D7DE0)
/* 7B778 800C0F78 AC2B7DE0 */  sw         $t3, %lo(D_801D7DE0)($at)
.L800C0F7C:
/* 7B77C 800C0F7C 83B90067 */  lb         $t9, 0x67($sp)
/* 7B780 800C0F80 24010002 */  addiu      $at, $zero, 0x2
/* 7B784 800C0F84 1721002D */  bne        $t9, $at, .L800C103C
/* 7B788 800C0F88 00000000 */   nop
/* 7B78C 800C0F8C 8D8C7CB4 */  lw         $t4, %lo(D_800E7CB4)($t4)
/* 7B790 800C0F90 3C02801D */  lui        $v0, %hi(D_801D7DE0)
/* 7B794 800C0F94 11800029 */  beqz       $t4, .L800C103C
/* 7B798 800C0F98 00000000 */   nop
/* 7B79C 800C0F9C 8C427DE0 */  lw         $v0, %lo(D_801D7DE0)($v0)
/* 7B7A0 800C0FA0 24010001 */  addiu      $at, $zero, 0x1
/* 7B7A4 800C0FA4 3C0F8004 */  lui        $t7, %hi(D_8004562C)
/* 7B7A8 800C0FA8 5040000C */  beql       $v0, $zero, .L800C0FDC
/* 7B7AC 800C0FAC 820D001B */   lb        $t5, 0x1B($s0)
/* 7B7B0 800C0FB0 10410019 */  beq        $v0, $at, .L800C1018
/* 7B7B4 800C0FB4 3C188004 */   lui       $t8, %hi(D_8004562C)
/* 7B7B8 800C0FB8 24010002 */  addiu      $at, $zero, 0x2
/* 7B7BC 800C0FBC 1041000E */  beq        $v0, $at, .L800C0FF8
/* 7B7C0 800C0FC0 3C0C8004 */   lui       $t4, %hi(D_8004562C)
/* 7B7C4 800C0FC4 24010003 */  addiu      $at, $zero, 0x3
/* 7B7C8 800C0FC8 50410014 */  beql       $v0, $at, .L800C101C
/* 7B7CC 800C0FCC 820F001B */   lb        $t7, 0x1B($s0)
/* 7B7D0 800C0FD0 10000012 */  b          .L800C101C
/* 7B7D4 800C0FD4 820F001B */   lb        $t7, 0x1B($s0)
/* 7B7D8 800C0FD8 820D001B */  lb         $t5, 0x1B($s0)
.L800C0FDC:
/* 7B7DC 800C0FDC 8DEF562C */  lw         $t7, %lo(D_8004562C)($t7)
/* 7B7E0 800C0FE0 000D7080 */  sll        $t6, $t5, 2
/* 7B7E4 800C0FE4 31F80001 */  andi       $t8, $t7, 0x1
/* 7B7E8 800C0FE8 0C030C90 */  jal        func_800C3240
/* 7B7EC 800C0FEC 01D82021 */   addu      $a0, $t6, $t8
/* 7B7F0 800C0FF0 10000010 */  b          .L800C1034
/* 7B7F4 800C0FF4 00000000 */   nop
.L800C0FF8:
/* 7B7F8 800C0FF8 820B001B */  lb         $t3, 0x1B($s0)
/* 7B7FC 800C0FFC 8D8C562C */  lw         $t4, %lo(D_8004562C)($t4)
/* 7B800 800C1000 000BC880 */  sll        $t9, $t3, 2
/* 7B804 800C1004 318D0001 */  andi       $t5, $t4, 0x1
/* 7B808 800C1008 0C030C9C */  jal        func_800C3270
/* 7B80C 800C100C 032D2021 */   addu      $a0, $t9, $t5
/* 7B810 800C1010 10000008 */  b          .L800C1034
/* 7B814 800C1014 00000000 */   nop
.L800C1018:
/* 7B818 800C1018 820F001B */  lb         $t7, 0x1B($s0)
.L800C101C:
/* 7B81C 800C101C 8F18562C */  lw         $t8, %lo(D_8004562C)($t8)
/* 7B820 800C1020 00002025 */  or         $a0, $zero, $zero
/* 7B824 800C1024 000F7080 */  sll        $t6, $t7, 2
/* 7B828 800C1028 330B0001 */  andi       $t3, $t8, 0x1
/* 7B82C 800C102C 0C030C5F */  jal        func_800C317C
/* 7B830 800C1030 01CB2821 */   addu      $a1, $t6, $t3
.L800C1034:
/* 7B834 800C1034 3C01800E */  lui        $at, %hi(D_800E7CB4)
/* 7B838 800C1038 AC207CB4 */  sw         $zero, %lo(D_800E7CB4)($at)
.L800C103C:
/* 7B83C 800C103C 10000004 */  b          .L800C1050
/* 7B840 800C1040 82020012 */   lb        $v0, 0x12($s0)
.L800C1044:
/* 7B844 800C1044 3C01800E */  lui        $at, %hi(D_800E7CB4)
/* 7B848 800C1048 AC207CB4 */  sw         $zero, %lo(D_800E7CB4)($at)
/* 7B84C 800C104C 82020012 */  lb         $v0, 0x12($s0)
.L800C1050:
/* 7B850 800C1050 240C0008 */  addiu      $t4, $zero, 0x8
/* 7B854 800C1054 A2020016 */  sb         $v0, 0x16($s0)
/* 7B858 800C1058 A60C000C */  sh         $t4, 0xC($s0)
.L800C105C:
/* 7B85C 800C105C A2000013 */  sb         $zero, 0x13($s0)
/* 7B860 800C1060 8602000C */  lh         $v0, 0xC($s0)
.L800C1064:
/* 7B864 800C1064 10400002 */  beqz       $v0, .L800C1070
/* 7B868 800C1068 2459FFFF */   addiu     $t9, $v0, -0x1
/* 7B86C 800C106C A619000C */  sh         $t9, 0xC($s0)
.L800C1070:
/* 7B870 800C1070 820D0017 */  lb         $t5, 0x17($s0)
/* 7B874 800C1074 55A0001E */  bnel       $t5, $zero, .L800C10F0
/* 7B878 800C1078 82020015 */   lb        $v0, 0x15($s0)
/* 7B87C 800C107C 83AF0067 */  lb         $t7, 0x67($sp)
/* 7B880 800C1080 29E10002 */  slti       $at, $t7, 0x2
/* 7B884 800C1084 5020001A */  beql       $at, $zero, .L800C10F0
/* 7B888 800C1088 82020015 */   lb        $v0, 0x15($s0)
/* 7B88C 800C108C 82020015 */  lb         $v0, 0x15($s0)
/* 7B890 800C1090 24010001 */  addiu      $at, $zero, 0x1
/* 7B894 800C1094 50400016 */  beql       $v0, $zero, .L800C10F0
/* 7B898 800C1098 82020015 */   lb        $v0, 0x15($s0)
/* 7B89C 800C109C 1441000B */  bne        $v0, $at, .L800C10CC
/* 7B8A0 800C10A0 3C0B8004 */   lui       $t3, %hi(D_8004562C)
/* 7B8A4 800C10A4 8218001B */  lb         $t8, 0x1B($s0)
/* 7B8A8 800C10A8 8D6B562C */  lw         $t3, %lo(D_8004562C)($t3)
/* 7B8AC 800C10AC 01E02025 */  or         $a0, $t7, $zero
/* 7B8B0 800C10B0 00187080 */  sll        $t6, $t8, 2
/* 7B8B4 800C10B4 316C0001 */  andi       $t4, $t3, 0x1
/* 7B8B8 800C10B8 01CC2821 */  addu       $a1, $t6, $t4
/* 7B8BC 800C10BC 0C030C5F */  jal        func_800C317C
/* 7B8C0 800C10C0 24A50002 */   addiu     $a1, $a1, 0x2
/* 7B8C4 800C10C4 1000000A */  b          .L800C10F0
/* 7B8C8 800C10C8 82020015 */   lb        $v0, 0x15($s0)
.L800C10CC:
/* 7B8CC 800C10CC 3C0F8004 */  lui        $t7, %hi(D_8004562C)
/* 7B8D0 800C10D0 8DEF562C */  lw         $t7, %lo(D_8004562C)($t7)
/* 7B8D4 800C10D4 8219001B */  lb         $t9, 0x1B($s0)
/* 7B8D8 800C10D8 83A40067 */  lb         $a0, 0x67($sp)
/* 7B8DC 800C10DC 31F80001 */  andi       $t8, $t7, 0x1
/* 7B8E0 800C10E0 00196880 */  sll        $t5, $t9, 2
/* 7B8E4 800C10E4 0C030C5F */  jal        func_800C317C
/* 7B8E8 800C10E8 01B82821 */   addu      $a1, $t5, $t8
/* 7B8EC 800C10EC 82020015 */  lb         $v0, 0x15($s0)
.L800C10F0:
/* 7B8F0 800C10F0 24010002 */  addiu      $at, $zero, 0x2
/* 7B8F4 800C10F4 14410004 */  bne        $v0, $at, .L800C1108
/* 7B8F8 800C10F8 A2020017 */   sb        $v0, 0x17($s0)
/* 7B8FC 800C10FC 240B0001 */  addiu      $t3, $zero, 0x1
/* 7B900 800C1100 3C01800E */  lui        $at, %hi(D_800E7CA4)
/* 7B904 800C1104 AC2B7CA4 */  sw         $t3, %lo(D_800E7CA4)($at)
.L800C1108:
/* 7B908 800C1108 820E0018 */  lb         $t6, 0x18($s0)
/* 7B90C 800C110C 51C00019 */  beql       $t6, $zero, .L800C1174
/* 7B910 800C1110 82180000 */   lb        $t8, 0x0($s0)
/* 7B914 800C1114 8FAC0024 */  lw         $t4, 0x24($sp)
/* 7B918 800C1118 3C19800E */  lui        $t9, %hi(D_800E7CD0)
/* 7B91C 800C111C 27397CD0 */  addiu      $t9, $t9, %lo(D_800E7CD0)
/* 7B920 800C1120 0199082B */  sltu       $at, $t4, $t9
/* 7B924 800C1124 10200012 */  beqz       $at, .L800C1170
/* 7B928 800C1128 8FA40030 */   lw        $a0, 0x30($sp)
/* 7B92C 800C112C 24840002 */  addiu      $a0, $a0, 0x2
/* 7B930 800C1130 308F00FF */  andi       $t7, $a0, 0xFF
/* 7B934 800C1134 01E02025 */  or         $a0, $t7, $zero
/* 7B938 800C1138 24050001 */  addiu      $a1, $zero, 0x1
/* 7B93C 800C113C 0C02FFFB */  jal        func_800BFFEC
/* 7B940 800C1140 2406007F */   addiu     $a2, $zero, 0x7F
/* 7B944 800C1144 3C048004 */  lui        $a0, %hi(D_8004562C)
/* 7B948 800C1148 8C84562C */  lw         $a0, %lo(D_8004562C)($a0)
/* 7B94C 800C114C 24010003 */  addiu      $at, $zero, 0x3
/* 7B950 800C1150 2405000A */  addiu      $a1, $zero, 0xA
/* 7B954 800C1154 0081001B */  divu       $zero, $a0, $at
/* 7B958 800C1158 00006810 */  mfhi       $t5
/* 7B95C 800C115C 25A40050 */  addiu      $a0, $t5, 0x50
/* 7B960 800C1160 24060050 */  addiu      $a2, $zero, 0x50
/* 7B964 800C1164 0C030CF2 */  jal        func_800C33C8
/* 7B968 800C1168 24070028 */   addiu     $a3, $zero, 0x28
/* 7B96C 800C116C A2000018 */  sb         $zero, 0x18($s0)
.L800C1170:
/* 7B970 800C1170 82180000 */  lb         $t8, 0x0($s0)
.L800C1174:
/* 7B974 800C1174 A218001F */  sb         $t8, 0x1F($s0)
.L800C1178:
/* 7B978 800C1178 8FBF001C */  lw         $ra, 0x1C($sp)
/* 7B97C 800C117C 8FB00018 */  lw         $s0, 0x18($sp)
/* 7B980 800C1180 27BD0060 */  addiu      $sp, $sp, 0x60
/* 7B984 800C1184 03E00008 */  jr         $ra
/* 7B988 800C1188 00000000 */   nop

glabel func_800C118C
/* 7B98C 800C118C 3C0E800E */  lui        $t6, %hi(D_800E7CBC)
/* 7B990 800C1190 8DCE7CBC */  lw         $t6, %lo(D_800E7CBC)($t6)
/* 7B994 800C1194 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7B998 800C1198 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7B99C 800C119C 11C00005 */  beqz       $t6, .L800C11B4
/* 7B9A0 800C11A0 3C0F800E */   lui       $t7, %hi(D_800E7C94)
/* 7B9A4 800C11A4 81EF7C94 */  lb         $t7, %lo(D_800E7C94)($t7)
/* 7B9A8 800C11A8 24010004 */  addiu      $at, $zero, 0x4
/* 7B9AC 800C11AC 55E10004 */  bnel       $t7, $at, .L800C11C0
/* 7B9B0 800C11B0 8FBF0014 */   lw        $ra, 0x14($sp)
.L800C11B4:
/* 7B9B4 800C11B4 0C030043 */  jal        func_800C010C
/* 7B9B8 800C11B8 00002825 */   or        $a1, $zero, $zero
/* 7B9BC 800C11BC 8FBF0014 */  lw         $ra, 0x14($sp)
.L800C11C0:
/* 7B9C0 800C11C0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7B9C4 800C11C4 03E00008 */  jr         $ra
/* 7B9C8 800C11C8 00000000 */   nop

glabel func_800C11CC
/* 7B9CC 800C11CC 3C0E800E */  lui        $t6, %hi(D_800E7CC0)
/* 7B9D0 800C11D0 8DCE7CC0 */  lw         $t6, %lo(D_800E7CC0)($t6)
/* 7B9D4 800C11D4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7B9D8 800C11D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7B9DC 800C11DC 11C00004 */  beqz       $t6, .L800C11F0
/* 7B9E0 800C11E0 3C0F800E */   lui       $t7, %hi(D_800E7C94)
/* 7B9E4 800C11E4 81EF7C94 */  lb         $t7, %lo(D_800E7C94)($t7)
/* 7B9E8 800C11E8 24010004 */  addiu      $at, $zero, 0x4
/* 7B9EC 800C11EC 15E1000F */  bne        $t7, $at, .L800C122C
.L800C11F0:
/* 7B9F0 800C11F0 3C02800E */   lui       $v0, %hi(D_800E7C90)
/* 7B9F4 800C11F4 80427C90 */  lb         $v0, %lo(D_800E7C90)($v0)
/* 7B9F8 800C11F8 24010001 */  addiu      $at, $zero, 0x1
/* 7B9FC 800C11FC 10400005 */  beqz       $v0, .L800C1214
/* 7BA00 800C1200 00000000 */   nop
/* 7BA04 800C1204 10410007 */  beq        $v0, $at, .L800C1224
/* 7BA08 800C1208 00000000 */   nop
/* 7BA0C 800C120C 10000008 */  b          .L800C1230
/* 7BA10 800C1210 8FBF0014 */   lw        $ra, 0x14($sp)
.L800C1214:
/* 7BA14 800C1214 0C030043 */  jal        func_800C010C
/* 7BA18 800C1218 24050002 */   addiu     $a1, $zero, 0x2
/* 7BA1C 800C121C 10000004 */  b          .L800C1230
/* 7BA20 800C1220 8FBF0014 */   lw        $ra, 0x14($sp)
.L800C1224:
/* 7BA24 800C1224 0C030043 */  jal        func_800C010C
/* 7BA28 800C1228 24050001 */   addiu     $a1, $zero, 0x1
.L800C122C:
/* 7BA2C 800C122C 8FBF0014 */  lw         $ra, 0x14($sp)
.L800C1230:
/* 7BA30 800C1230 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7BA34 800C1234 03E00008 */  jr         $ra
/* 7BA38 800C1238 00000000 */   nop

glabel func_800C123C
/* 7BA3C 800C123C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 7BA40 800C1240 44812000 */  mtc1       $at, $f4
/* 7BA44 800C1244 24020001 */  addiu      $v0, $zero, 0x1
/* 7BA48 800C1248 240E003F */  addiu      $t6, $zero, 0x3F
/* 7BA4C 800C124C A0820004 */  sb         $v0, 0x4($a0)
/* 7BA50 800C1250 A0820005 */  sb         $v0, 0x5($a0)
/* 7BA54 800C1254 A0800006 */  sb         $zero, 0x6($a0)
/* 7BA58 800C1258 A08E0007 */  sb         $t6, 0x7($a0)
/* 7BA5C 800C125C A0800008 */  sb         $zero, 0x8($a0)
/* 7BA60 800C1260 03E00008 */  jr         $ra
/* 7BA64 800C1264 E4840000 */   swc1      $f4, 0x0($a0)

glabel func_800C1268
/* 7BA68 800C1268 3C0E800E */  lui        $t6, %hi(D_800E7C94)
/* 7BA6C 800C126C 81CE7C94 */  lb         $t6, %lo(D_800E7C94)($t6)
/* 7BA70 800C1270 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7BA74 800C1274 24010007 */  addiu      $at, $zero, 0x7
/* 7BA78 800C1278 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7BA7C 800C127C 15C10047 */  bne        $t6, $at, .L800C139C
/* 7BA80 800C1280 00803825 */   or        $a3, $a0, $zero
/* 7BA84 800C1284 3C0F801D */  lui        $t7, %hi(D_801D7DC4)
/* 7BA88 800C1288 8DEF7DC4 */  lw         $t7, %lo(D_801D7DC4)($t7)
/* 7BA8C 800C128C 55E00044 */  bnel       $t7, $zero, .L800C13A0
/* 7BA90 800C1290 8FBF0014 */   lw        $ra, 0x14($sp)
/* 7BA94 800C1294 80820005 */  lb         $v0, 0x5($a0)
/* 7BA98 800C1298 80980004 */  lb         $t8, 0x4($a0)
/* 7BA9C 800C129C 24010001 */  addiu      $at, $zero, 0x1
/* 7BAA0 800C12A0 53020012 */  beql       $t8, $v0, .L800C12EC
/* 7BAA4 800C12A4 80E20008 */   lb        $v0, 0x8($a3)
/* 7BAA8 800C12A8 14410008 */  bne        $v0, $at, .L800C12CC
/* 7BAAC 800C12AC 24040005 */   addiu     $a0, $zero, 0x5
/* 7BAB0 800C12B0 24040005 */  addiu      $a0, $zero, 0x5
/* 7BAB4 800C12B4 24050009 */  addiu      $a1, $zero, 0x9
/* 7BAB8 800C12B8 2406007F */  addiu      $a2, $zero, 0x7F
/* 7BABC 800C12BC 0C02FFFB */  jal        func_800BFFEC
/* 7BAC0 800C12C0 AFA70018 */   sw        $a3, 0x18($sp)
/* 7BAC4 800C12C4 10000006 */  b          .L800C12E0
/* 7BAC8 800C12C8 8FA70018 */   lw        $a3, 0x18($sp)
.L800C12CC:
/* 7BACC 800C12CC 24050008 */  addiu      $a1, $zero, 0x8
/* 7BAD0 800C12D0 2406007F */  addiu      $a2, $zero, 0x7F
/* 7BAD4 800C12D4 0C02FFFB */  jal        func_800BFFEC
/* 7BAD8 800C12D8 AFA70018 */   sw        $a3, 0x18($sp)
/* 7BADC 800C12DC 8FA70018 */  lw         $a3, 0x18($sp)
.L800C12E0:
/* 7BAE0 800C12E0 80F90005 */  lb         $t9, 0x5($a3)
/* 7BAE4 800C12E4 A0F90004 */  sb         $t9, 0x4($a3)
/* 7BAE8 800C12E8 80E20008 */  lb         $v0, 0x8($a3)
.L800C12EC:
/* 7BAEC 800C12EC 3C08801D */  lui        $t0, %hi(D_801D7DC0)
/* 7BAF0 800C12F0 5040000B */  beql       $v0, $zero, .L800C1320
/* 7BAF4 800C12F4 3C014080 */   lui       $at, (0x40800000 >> 16)
/* 7BAF8 800C12F8 8D087DC0 */  lw         $t0, %lo(D_801D7DC0)($t0)
/* 7BAFC 800C12FC 24040005 */  addiu      $a0, $zero, 0x5
/* 7BB00 800C1300 304500FF */  andi       $a1, $v0, 0xFF
/* 7BB04 800C1304 15000005 */  bnez       $t0, .L800C131C
/* 7BB08 800C1308 2406007F */   addiu     $a2, $zero, 0x7F
/* 7BB0C 800C130C 0C02FFFB */  jal        func_800BFFEC
/* 7BB10 800C1310 AFA70018 */   sw        $a3, 0x18($sp)
/* 7BB14 800C1314 8FA70018 */  lw         $a3, 0x18($sp)
/* 7BB18 800C1318 A0E00008 */  sb         $zero, 0x8($a3)
.L800C131C:
/* 7BB1C 800C131C 3C014080 */  lui        $at, (0x40800000 >> 16)
.L800C1320:
/* 7BB20 800C1320 44812000 */  mtc1       $at, $f4
/* 7BB24 800C1324 C4E00000 */  lwc1       $f0, 0x0($a3)
/* 7BB28 800C1328 3C0143FE */  lui        $at, (0x43FE0000 >> 16)
/* 7BB2C 800C132C 2402007F */  addiu      $v0, $zero, 0x7F
/* 7BB30 800C1330 4600203C */  c.lt.s     $f4, $f0
/* 7BB34 800C1334 00000000 */  nop
/* 7BB38 800C1338 45000008 */  bc1f       .L800C135C
/* 7BB3C 800C133C 00000000 */   nop
/* 7BB40 800C1340 44813000 */  mtc1       $at, $f6
/* 7BB44 800C1344 00000000 */  nop
/* 7BB48 800C1348 46003203 */  div.s      $f8, $f6, $f0
/* 7BB4C 800C134C 4600428D */  trunc.w.s  $f10, $f8
/* 7BB50 800C1350 44025000 */  mfc1       $v0, $f10
/* 7BB54 800C1354 10000002 */  b          .L800C1360
/* 7BB58 800C1358 44828000 */   mtc1      $v0, $f16
.L800C135C:
/* 7BB5C 800C135C 44828000 */  mtc1       $v0, $f16
.L800C1360:
/* 7BB60 800C1360 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
/* 7BB64 800C1364 44812000 */  mtc1       $at, $f4
/* 7BB68 800C1368 468084A0 */  cvt.s.w    $f18, $f16
/* 7BB6C 800C136C 3C040100 */  lui        $a0, (0x1000500 >> 16)
/* 7BB70 800C1370 34840500 */  ori        $a0, $a0, (0x1000500 & 0xFFFF)
/* 7BB74 800C1374 AFA70018 */  sw         $a3, 0x18($sp)
/* 7BB78 800C1378 46049183 */  div.s      $f6, $f18, $f4
/* 7BB7C 800C137C 44053000 */  mfc1       $a1, $f6
/* 7BB80 800C1380 0C0314E3 */  jal        func_800C538C
/* 7BB84 800C1384 00000000 */   nop
/* 7BB88 800C1388 8FA70018 */  lw         $a3, 0x18($sp)
/* 7BB8C 800C138C 3C040300 */  lui        $a0, (0x3000500 >> 16)
/* 7BB90 800C1390 34840500 */  ori        $a0, $a0, (0x3000500 & 0xFFFF)
/* 7BB94 800C1394 0C0314F5 */  jal        func_800C53D4
/* 7BB98 800C1398 80E50007 */   lb        $a1, 0x7($a3)
.L800C139C:
/* 7BB9C 800C139C 8FBF0014 */  lw         $ra, 0x14($sp)
.L800C13A0:
/* 7BBA0 800C13A0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7BBA4 800C13A4 03E00008 */  jr         $ra
/* 7BBA8 800C13A8 00000000 */   nop

glabel func_800C13AC
/* 7BBAC 800C13AC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7BBB0 800C13B0 3C018004 */  lui        $at, %hi(D_8003FCCF)
/* 7BBB4 800C13B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7BBB8 800C13B8 A024FCCF */  sb         $a0, %lo(D_8003FCCF)($at)
/* 7BBBC 800C13BC 3C048200 */  lui        $a0, (0x82000000 >> 16)
/* 7BBC0 800C13C0 0C0314EC */  jal        func_800C53B0
/* 7BBC4 800C13C4 00002825 */   or        $a1, $zero, $zero
/* 7BBC8 800C13C8 0C031501 */  jal        func_800C5404
/* 7BBCC 800C13CC 00000000 */   nop
/* 7BBD0 800C13D0 3C04800F */  lui        $a0, %hi(D_800E85F8)
/* 7BBD4 800C13D4 8C8485F8 */  lw         $a0, %lo(D_800E85F8)($a0)
/* 7BBD8 800C13D8 27A50018 */  addiu      $a1, $sp, 0x18
/* 7BBDC 800C13DC 0C031718 */  jal        func_800C5C60
/* 7BBE0 800C13E0 24060001 */   addiu     $a2, $zero, 0x1
/* 7BBE4 800C13E4 3C04800F */  lui        $a0, %hi(D_800E85F8)
/* 7BBE8 800C13E8 8C8485F8 */  lw         $a0, %lo(D_800E85F8)($a0)
/* 7BBEC 800C13EC 27A50018 */  addiu      $a1, $sp, 0x18
/* 7BBF0 800C13F0 0C031718 */  jal        func_800C5C60
/* 7BBF4 800C13F4 24060001 */   addiu     $a2, $zero, 0x1
/* 7BBF8 800C13F8 3C04800F */  lui        $a0, %hi(D_800E85F8)
/* 7BBFC 800C13FC 8C8485F8 */  lw         $a0, %lo(D_800E85F8)($a0)
/* 7BC00 800C1400 27A50018 */  addiu      $a1, $sp, 0x18
/* 7BC04 800C1404 0C031718 */  jal        func_800C5C60
/* 7BC08 800C1408 24060001 */   addiu     $a2, $zero, 0x1
/* 7BC0C 800C140C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7BC10 800C1410 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7BC14 800C1414 03E00008 */  jr         $ra
/* 7BC18 800C1418 00000000 */   nop

glabel func_800C141C
/* 7BC1C 800C141C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7BC20 800C1420 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7BC24 800C1424 3C048200 */  lui        $a0, (0x82000200 >> 16)
/* 7BC28 800C1428 34840200 */  ori        $a0, $a0, (0x82000200 & 0xFFFF)
/* 7BC2C 800C142C 0C0314EC */  jal        func_800C53B0
/* 7BC30 800C1430 00002825 */   or        $a1, $zero, $zero
/* 7BC34 800C1434 0C031501 */  jal        func_800C5404
/* 7BC38 800C1438 00000000 */   nop
/* 7BC3C 800C143C 3C04800F */  lui        $a0, %hi(D_800E85F8)
/* 7BC40 800C1440 8C8485F8 */  lw         $a0, %lo(D_800E85F8)($a0)
/* 7BC44 800C1444 27A5001C */  addiu      $a1, $sp, 0x1C
/* 7BC48 800C1448 0C031718 */  jal        func_800C5C60
/* 7BC4C 800C144C 24060001 */   addiu     $a2, $zero, 0x1
/* 7BC50 800C1450 3C04800F */  lui        $a0, %hi(D_800E85F8)
/* 7BC54 800C1454 8C8485F8 */  lw         $a0, %lo(D_800E85F8)($a0)
/* 7BC58 800C1458 27A5001C */  addiu      $a1, $sp, 0x1C
/* 7BC5C 800C145C 0C031718 */  jal        func_800C5C60
/* 7BC60 800C1460 24060001 */   addiu     $a2, $zero, 0x1
/* 7BC64 800C1464 3C04800F */  lui        $a0, %hi(D_800E85F8)
/* 7BC68 800C1468 8C8485F8 */  lw         $a0, %lo(D_800E85F8)($a0)
/* 7BC6C 800C146C 27A5001C */  addiu      $a1, $sp, 0x1C
/* 7BC70 800C1470 0C031718 */  jal        func_800C5C60
/* 7BC74 800C1474 24060001 */   addiu     $a2, $zero, 0x1
/* 7BC78 800C1478 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7BC7C 800C147C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7BC80 800C1480 03E00008 */  jr         $ra
/* 7BC84 800C1484 00000000 */   nop

glabel func_800C1488
/* 7BC88 800C1488 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7BC8C 800C148C AFBF0014 */  sw         $ra, 0x14($sp)
/* 7BC90 800C1490 3C048300 */  lui        $a0, (0x83000000 >> 16)
/* 7BC94 800C1494 0C0314EC */  jal        func_800C53B0
/* 7BC98 800C1498 00002825 */   or        $a1, $zero, $zero
/* 7BC9C 800C149C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7BCA0 800C14A0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7BCA4 800C14A4 03E00008 */  jr         $ra
/* 7BCA8 800C14A8 00000000 */   nop

glabel func_800C14AC
/* 7BCAC 800C14AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7BCB0 800C14B0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7BCB4 800C14B4 3C048300 */  lui        $a0, (0x83000000 >> 16)
/* 7BCB8 800C14B8 0C0314EC */  jal        func_800C53B0
/* 7BCBC 800C14BC 240500B4 */   addiu     $a1, $zero, 0xB4
/* 7BCC0 800C14C0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7BCC4 800C14C4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7BCC8 800C14C8 03E00008 */  jr         $ra
/* 7BCCC 800C14CC 00000000 */   nop

glabel func_800C14D0
/* 7BCD0 800C14D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7BCD4 800C14D4 308400FF */  andi       $a0, $a0, 0xFF
/* 7BCD8 800C14D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7BCDC 800C14DC 00047200 */  sll        $t6, $a0, 8
/* 7BCE0 800C14E0 3C018100 */  lui        $at, (0x81000000 >> 16)
/* 7BCE4 800C14E4 01C12025 */  or         $a0, $t6, $at
/* 7BCE8 800C14E8 0C0314EC */  jal        func_800C53B0
/* 7BCEC 800C14EC 00002825 */   or        $a1, $zero, $zero
/* 7BCF0 800C14F0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7BCF4 800C14F4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7BCF8 800C14F8 03E00008 */  jr         $ra
/* 7BCFC 800C14FC 00000000 */   nop

glabel func_800C1500
/* 7BD00 800C1500 308400FF */  andi       $a0, $a0, 0xFF
/* 7BD04 800C1504 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7BD08 800C1508 00047200 */  sll        $t6, $a0, 8
/* 7BD0C 800C150C 3C018201 */  lui        $at, (0x82010001 >> 16)
/* 7BD10 800C1510 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7BD14 800C1514 01C17825 */  or         $t7, $t6, $at
/* 7BD18 800C1518 0C0314EC */  jal        func_800C53B0
/* 7BD1C 800C151C 35E40001 */   ori       $a0, $t7, (0x82010001 & 0xFFFF)
/* 7BD20 800C1520 3C053F0C */  lui        $a1, (0x3F0CCCCD >> 16)
/* 7BD24 800C1524 34A5CCCD */  ori        $a1, $a1, (0x3F0CCCCD & 0xFFFF)
/* 7BD28 800C1528 0C0314E3 */  jal        func_800C538C
/* 7BD2C 800C152C 3C044101 */   lui       $a0, (0x41010000 >> 16)
/* 7BD30 800C1530 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7BD34 800C1534 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7BD38 800C1538 03E00008 */  jr         $ra
/* 7BD3C 800C153C 00000000 */   nop

glabel func_800C1540
/* 7BD40 800C1540 3C018004 */  lui        $at, %hi(D_8003FF4F)
/* 7BD44 800C1544 A026FF4F */  sb         $a2, %lo(D_8003FF4F)($at)
/* 7BD48 800C1548 308400FF */  andi       $a0, $a0, 0xFF
/* 7BD4C 800C154C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7BD50 800C1550 00047200 */  sll        $t6, $a0, 8
/* 7BD54 800C1554 3C018202 */  lui        $at, (0x82020001 >> 16)
/* 7BD58 800C1558 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7BD5C 800C155C 01C17825 */  or         $t7, $t6, $at
/* 7BD60 800C1560 0C0314EC */  jal        func_800C53B0
/* 7BD64 800C1564 35E40001 */   ori       $a0, $t7, (0x82020001 & 0xFFFF)
/* 7BD68 800C1568 3C053F0C */  lui        $a1, (0x3F0CCCCD >> 16)
/* 7BD6C 800C156C 34A5CCCD */  ori        $a1, $a1, (0x3F0CCCCD & 0xFFFF)
/* 7BD70 800C1570 0C0314E3 */  jal        func_800C538C
/* 7BD74 800C1574 3C044102 */   lui       $a0, (0x41020000 >> 16)
/* 7BD78 800C1578 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7BD7C 800C157C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7BD80 800C1580 03E00008 */  jr         $ra
/* 7BD84 800C1584 00000000 */   nop

glabel func_800C1588
/* 7BD88 800C1588 308400FF */  andi       $a0, $a0, 0xFF
/* 7BD8C 800C158C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7BD90 800C1590 00047200 */  sll        $t6, $a0, 8
/* 7BD94 800C1594 3C018202 */  lui        $at, (0x82020001 >> 16)
/* 7BD98 800C1598 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7BD9C 800C159C 01C17825 */  or         $t7, $t6, $at
/* 7BDA0 800C15A0 0C0314EC */  jal        func_800C53B0
/* 7BDA4 800C15A4 35E40001 */   ori       $a0, $t7, (0x82020001 & 0xFFFF)
/* 7BDA8 800C15A8 3C053F0C */  lui        $a1, (0x3F0CCCCD >> 16)
/* 7BDAC 800C15AC 34A5CCCD */  ori        $a1, $a1, (0x3F0CCCCD & 0xFFFF)
/* 7BDB0 800C15B0 0C0314E3 */  jal        func_800C538C
/* 7BDB4 800C15B4 3C044102 */   lui       $a0, (0x41020000 >> 16)
/* 7BDB8 800C15B8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7BDBC 800C15BC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7BDC0 800C15C0 03E00008 */  jr         $ra
/* 7BDC4 800C15C4 00000000 */   nop

glabel func_800C15C8
/* 7BDC8 800C15C8 308400FF */  andi       $a0, $a0, 0xFF
/* 7BDCC 800C15CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7BDD0 800C15D0 00047200 */  sll        $t6, $a0, 8
/* 7BDD4 800C15D4 3C018203 */  lui        $at, (0x82030001 >> 16)
/* 7BDD8 800C15D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7BDDC 800C15DC 01C17825 */  or         $t7, $t6, $at
/* 7BDE0 800C15E0 0C0314EC */  jal        func_800C53B0
/* 7BDE4 800C15E4 35E40001 */   ori       $a0, $t7, (0x82030001 & 0xFFFF)
/* 7BDE8 800C15E8 3C053F33 */  lui        $a1, (0x3F333333 >> 16)
/* 7BDEC 800C15EC 34A53333 */  ori        $a1, $a1, (0x3F333333 & 0xFFFF)
/* 7BDF0 800C15F0 0C0314E3 */  jal        func_800C538C
/* 7BDF4 800C15F4 3C044103 */   lui       $a0, (0x41030000 >> 16)
/* 7BDF8 800C15F8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7BDFC 800C15FC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7BE00 800C1600 03E00008 */  jr         $ra
/* 7BE04 800C1604 00000000 */   nop

glabel func_800C1608
/* 7BE08 800C1608 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7BE0C 800C160C AFBF0014 */  sw         $ra, 0x14($sp)
/* 7BE10 800C1610 00802825 */  or         $a1, $a0, $zero
/* 7BE14 800C1614 0C0314EC */  jal        func_800C53B0
/* 7BE18 800C1618 3C048303 */   lui       $a0, (0x83030000 >> 16)
/* 7BE1C 800C161C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7BE20 800C1620 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7BE24 800C1624 03E00008 */  jr         $ra
/* 7BE28 800C1628 00000000 */   nop

glabel func_800C162C
/* 7BE2C 800C162C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7BE30 800C1630 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7BE34 800C1634 00802825 */  or         $a1, $a0, $zero
/* 7BE38 800C1638 0C0314EC */  jal        func_800C53B0
/* 7BE3C 800C163C 3C048300 */   lui       $a0, (0x83000000 >> 16)
/* 7BE40 800C1640 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7BE44 800C1644 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7BE48 800C1648 03E00008 */  jr         $ra
/* 7BE4C 800C164C 00000000 */   nop

glabel func_800C1650
/* 7BE50 800C1650 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7BE54 800C1654 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7BE58 800C1658 00802825 */  or         $a1, $a0, $zero
/* 7BE5C 800C165C 0C0314EC */  jal        func_800C53B0
/* 7BE60 800C1660 3C048301 */   lui       $a0, (0x83010000 >> 16)
/* 7BE64 800C1664 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7BE68 800C1668 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7BE6C 800C166C 03E00008 */  jr         $ra
/* 7BE70 800C1670 00000000 */   nop

glabel func_800C1674
/* 7BE74 800C1674 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7BE78 800C1678 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7BE7C 800C167C 00802825 */  or         $a1, $a0, $zero
/* 7BE80 800C1680 0C0314EC */  jal        func_800C53B0
/* 7BE84 800C1684 3C048302 */   lui       $a0, (0x83020000 >> 16)
/* 7BE88 800C1688 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7BE8C 800C168C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7BE90 800C1690 03E00008 */  jr         $ra
/* 7BE94 800C1694 00000000 */   nop

glabel func_800C1698
/* 7BE98 800C1698 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7BE9C 800C169C AFB20020 */  sw         $s2, 0x20($sp)
/* 7BEA0 800C16A0 AFB1001C */  sw         $s1, 0x1C($sp)
/* 7BEA4 800C16A4 AFB00018 */  sw         $s0, 0x18($sp)
/* 7BEA8 800C16A8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 7BEAC 800C16AC 00008025 */  or         $s0, $zero, $zero
/* 7BEB0 800C16B0 3C118300 */  lui        $s1, (0x83000000 >> 16)
/* 7BEB4 800C16B4 24120004 */  addiu      $s2, $zero, 0x4
/* 7BEB8 800C16B8 320E00FF */  andi       $t6, $s0, 0xFF
.L800C16BC:
/* 7BEBC 800C16BC 000E7C00 */  sll        $t7, $t6, 16
/* 7BEC0 800C16C0 01F12025 */  or         $a0, $t7, $s1
/* 7BEC4 800C16C4 0C0314EC */  jal        func_800C53B0
/* 7BEC8 800C16C8 00002825 */   or        $a1, $zero, $zero
/* 7BECC 800C16CC 26100001 */  addiu      $s0, $s0, 0x1
/* 7BED0 800C16D0 5612FFFA */  bnel       $s0, $s2, .L800C16BC
/* 7BED4 800C16D4 320E00FF */   andi      $t6, $s0, 0xFF
/* 7BED8 800C16D8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 7BEDC 800C16DC 8FB00018 */  lw         $s0, 0x18($sp)
/* 7BEE0 800C16E0 8FB1001C */  lw         $s1, 0x1C($sp)
/* 7BEE4 800C16E4 8FB20020 */  lw         $s2, 0x20($sp)
/* 7BEE8 800C16E8 03E00008 */  jr         $ra
/* 7BEEC 800C16EC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800C16F0
/* 7BEF0 800C16F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7BEF4 800C16F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7BEF8 800C16F8 3C04F200 */  lui        $a0, (0xF2000000 >> 16)
/* 7BEFC 800C16FC 0C0314EC */  jal        func_800C53B0
/* 7BF00 800C1700 00002825 */   or        $a1, $zero, $zero
/* 7BF04 800C1704 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7BF08 800C1708 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7BF0C 800C170C 03E00008 */  jr         $ra
/* 7BF10 800C1710 00000000 */   nop

glabel func_800C1714
/* 7BF14 800C1714 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7BF18 800C1718 AFA40020 */  sw         $a0, 0x20($sp)
/* 7BF1C 800C171C AFBF0014 */  sw         $ra, 0x14($sp)
/* 7BF20 800C1720 3C04800F */  lui        $a0, %hi(D_800E8604)
/* 7BF24 800C1724 8C848604 */  lw         $a0, %lo(D_800E8604)($a0)
/* 7BF28 800C1728 27A5001C */  addiu      $a1, $sp, 0x1C
/* 7BF2C 800C172C 0C031718 */  jal        func_800C5C60
/* 7BF30 800C1730 00003025 */   or        $a2, $zero, $zero
/* 7BF34 800C1734 3C04800F */  lui        $a0, %hi(D_800E8600)
/* 7BF38 800C1738 8C848600 */  lw         $a0, %lo(D_800E8600)($a0)
/* 7BF3C 800C173C 8FA50020 */  lw         $a1, 0x20($sp)
/* 7BF40 800C1740 0C0315E8 */  jal        func_800C57A0
/* 7BF44 800C1744 00003025 */   or        $a2, $zero, $zero
/* 7BF48 800C1748 3C04800F */  lui        $a0, %hi(D_800E8604)
/* 7BF4C 800C174C 8C848604 */  lw         $a0, %lo(D_800E8604)($a0)
/* 7BF50 800C1750 27A5001C */  addiu      $a1, $sp, 0x1C
/* 7BF54 800C1754 0C031718 */  jal        func_800C5C60
/* 7BF58 800C1758 24060001 */   addiu     $a2, $zero, 0x1
/* 7BF5C 800C175C 8FAE001C */  lw         $t6, 0x1C($sp)
/* 7BF60 800C1760 8FAF0020 */  lw         $t7, 0x20($sp)
/* 7BF64 800C1764 3C04800F */  lui        $a0, %hi(D_800E8604)
/* 7BF68 800C1768 27A5001C */  addiu      $a1, $sp, 0x1C
/* 7BF6C 800C176C 11CF0003 */  beq        $t6, $t7, .L800C177C
/* 7BF70 800C1770 24060001 */   addiu     $a2, $zero, 0x1
/* 7BF74 800C1774 0C031718 */  jal        func_800C5C60
/* 7BF78 800C1778 8C848604 */   lw        $a0, %lo(D_800E8604)($a0)
.L800C177C:
/* 7BF7C 800C177C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7BF80 800C1780 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7BF84 800C1784 03E00008 */  jr         $ra
/* 7BF88 800C1788 00000000 */   nop

glabel func_800C178C
/* 7BF8C 800C178C 3C0E8004 */  lui        $t6, %hi(D_8003FF48)
/* 7BF90 800C1790 8DCEFF48 */  lw         $t6, %lo(D_8003FF48)($t6)
/* 7BF94 800C1794 3C038004 */  lui        $v1, %hi(D_8003FCC8)
/* 7BF98 800C1798 2463FCC8 */  addiu      $v1, $v1, %lo(D_8003FCC8)
/* 7BF9C 800C179C 000E7FC2 */  srl        $t7, $t6, 31
/* 7BFA0 800C17A0 11E00017 */  beqz       $t7, .L800C1800
/* 7BFA4 800C17A4 3C058004 */   lui       $a1, %hi(D_8003FD08)
/* 7BFA8 800C17A8 3C048004 */  lui        $a0, %hi(D_80044688)
/* 7BFAC 800C17AC 24844688 */  addiu      $a0, $a0, %lo(D_80044688)
/* 7BFB0 800C17B0 24A5FD08 */  addiu      $a1, $a1, %lo(D_8003FD08)
/* 7BFB4 800C17B4 8C6202B0 */  lw         $v0, 0x2B0($v1)
.L800C17B8:
/* 7BFB8 800C17B8 50440003 */  beql       $v0, $a0, .L800C17C8
/* 7BFBC 800C17BC 8C6202B4 */   lw        $v0, 0x2B4($v1)
/* 7BFC0 800C17C0 E44C0030 */  swc1       $f12, 0x30($v0)
/* 7BFC4 800C17C4 8C6202B4 */  lw         $v0, 0x2B4($v1)
.L800C17C8:
/* 7BFC8 800C17C8 50440003 */  beql       $v0, $a0, .L800C17D8
/* 7BFCC 800C17CC 8C6202B8 */   lw        $v0, 0x2B8($v1)
/* 7BFD0 800C17D0 E44C0030 */  swc1       $f12, 0x30($v0)
/* 7BFD4 800C17D4 8C6202B8 */  lw         $v0, 0x2B8($v1)
.L800C17D8:
/* 7BFD8 800C17D8 50440003 */  beql       $v0, $a0, .L800C17E8
/* 7BFDC 800C17DC 8C6202BC */   lw        $v0, 0x2BC($v1)
/* 7BFE0 800C17E0 E44C0030 */  swc1       $f12, 0x30($v0)
/* 7BFE4 800C17E4 8C6202BC */  lw         $v0, 0x2BC($v1)
.L800C17E8:
/* 7BFE8 800C17E8 24630010 */  addiu      $v1, $v1, 0x10
/* 7BFEC 800C17EC 10440002 */  beq        $v0, $a0, .L800C17F8
/* 7BFF0 800C17F0 00000000 */   nop
/* 7BFF4 800C17F4 E44C0030 */  swc1       $f12, 0x30($v0)
.L800C17F8:
/* 7BFF8 800C17F8 5465FFEF */  bnel       $v1, $a1, .L800C17B8
/* 7BFFC 800C17FC 8C6202B0 */   lw        $v0, 0x2B0($v1)
.L800C1800:
/* 7C000 800C1800 03E00008 */  jr         $ra
/* 7C004 800C1804 00000000 */   nop

glabel func_800C1808
/* 7C008 800C1808 3C0E8004 */  lui        $t6, %hi(D_8003FF48)
/* 7C00C 800C180C 8DCEFF48 */  lw         $t6, %lo(D_8003FF48)($t6)
/* 7C010 800C1810 3C038004 */  lui        $v1, %hi(D_8003FCC8)
/* 7C014 800C1814 2463FCC8 */  addiu      $v1, $v1, %lo(D_8003FCC8)
/* 7C018 800C1818 000E7FC2 */  srl        $t7, $t6, 31
/* 7C01C 800C181C 11E00017 */  beqz       $t7, .L800C187C
/* 7C020 800C1820 3C058004 */   lui       $a1, %hi(D_8003FD08)
/* 7C024 800C1824 3C048004 */  lui        $a0, %hi(D_80044688)
/* 7C028 800C1828 24844688 */  addiu      $a0, $a0, %lo(D_80044688)
/* 7C02C 800C182C 24A5FD08 */  addiu      $a1, $a1, %lo(D_8003FD08)
/* 7C030 800C1830 8C6202B0 */  lw         $v0, 0x2B0($v1)
.L800C1834:
/* 7C034 800C1834 50440003 */  beql       $v0, $a0, .L800C1844
/* 7C038 800C1838 8C6202B4 */   lw        $v0, 0x2B4($v1)
/* 7C03C 800C183C E44C0020 */  swc1       $f12, 0x20($v0)
/* 7C040 800C1840 8C6202B4 */  lw         $v0, 0x2B4($v1)
.L800C1844:
/* 7C044 800C1844 50440003 */  beql       $v0, $a0, .L800C1854
/* 7C048 800C1848 8C6202B8 */   lw        $v0, 0x2B8($v1)
/* 7C04C 800C184C E44C0020 */  swc1       $f12, 0x20($v0)
/* 7C050 800C1850 8C6202B8 */  lw         $v0, 0x2B8($v1)
.L800C1854:
/* 7C054 800C1854 50440003 */  beql       $v0, $a0, .L800C1864
/* 7C058 800C1858 8C6202BC */   lw        $v0, 0x2BC($v1)
/* 7C05C 800C185C E44C0020 */  swc1       $f12, 0x20($v0)
/* 7C060 800C1860 8C6202BC */  lw         $v0, 0x2BC($v1)
.L800C1864:
/* 7C064 800C1864 24630010 */  addiu      $v1, $v1, 0x10
/* 7C068 800C1868 10440002 */  beq        $v0, $a0, .L800C1874
/* 7C06C 800C186C 00000000 */   nop
/* 7C070 800C1870 E44C0020 */  swc1       $f12, 0x20($v0)
.L800C1874:
/* 7C074 800C1874 5465FFEF */  bnel       $v1, $a1, .L800C1834
/* 7C078 800C1878 8C6202B0 */   lw        $v0, 0x2B0($v1)
.L800C187C:
/* 7C07C 800C187C 03E00008 */  jr         $ra
/* 7C080 800C1880 00000000 */   nop

glabel func_800C1884
/* 7C084 800C1884 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 7C088 800C1888 3C038004 */  lui        $v1, %hi(D_8003FCC8)
/* 7C08C 800C188C 3C068004 */  lui        $a2, %hi(D_8003FD08)
/* 7C090 800C1890 3C058004 */  lui        $a1, %hi(D_80044688)
/* 7C094 800C1894 44810000 */  mtc1       $at, $f0
/* 7C098 800C1898 24A54688 */  addiu      $a1, $a1, %lo(D_80044688)
/* 7C09C 800C189C 24C6FD08 */  addiu      $a2, $a2, %lo(D_8003FD08)
/* 7C0A0 800C18A0 2463FCC8 */  addiu      $v1, $v1, %lo(D_8003FCC8)
.L800C18A4:
/* 7C0A4 800C18A4 8C6202B0 */  lw         $v0, 0x2B0($v1)
/* 7C0A8 800C18A8 50450003 */  beql       $v0, $a1, .L800C18B8
/* 7C0AC 800C18AC E4400020 */   swc1      $f0, 0x20($v0)
/* 7C0B0 800C18B0 A0440008 */  sb         $a0, 0x8($v0)
/* 7C0B4 800C18B4 E4400020 */  swc1       $f0, 0x20($v0)
.L800C18B8:
/* 7C0B8 800C18B8 8C6202B4 */  lw         $v0, 0x2B4($v1)
/* 7C0BC 800C18BC 50450003 */  beql       $v0, $a1, .L800C18CC
/* 7C0C0 800C18C0 E4400020 */   swc1      $f0, 0x20($v0)
/* 7C0C4 800C18C4 A0440008 */  sb         $a0, 0x8($v0)
/* 7C0C8 800C18C8 E4400020 */  swc1       $f0, 0x20($v0)
.L800C18CC:
/* 7C0CC 800C18CC 8C6202B8 */  lw         $v0, 0x2B8($v1)
/* 7C0D0 800C18D0 50450003 */  beql       $v0, $a1, .L800C18E0
/* 7C0D4 800C18D4 E4400020 */   swc1      $f0, 0x20($v0)
/* 7C0D8 800C18D8 A0440008 */  sb         $a0, 0x8($v0)
/* 7C0DC 800C18DC E4400020 */  swc1       $f0, 0x20($v0)
.L800C18E0:
/* 7C0E0 800C18E0 8C6202BC */  lw         $v0, 0x2BC($v1)
/* 7C0E4 800C18E4 24630010 */  addiu      $v1, $v1, 0x10
/* 7C0E8 800C18E8 10450002 */  beq        $v0, $a1, .L800C18F4
/* 7C0EC 800C18EC 00000000 */   nop
/* 7C0F0 800C18F0 A0440008 */  sb         $a0, 0x8($v0)
.L800C18F4:
/* 7C0F4 800C18F4 1466FFEB */  bne        $v1, $a2, .L800C18A4
/* 7C0F8 800C18F8 E4400020 */   swc1      $f0, 0x20($v0)
/* 7C0FC 800C18FC 03E00008 */  jr         $ra
/* 7C100 800C1900 00000000 */   nop

glabel func_800C1904
/* 7C104 800C1904 3C03801D */  lui        $v1, %hi(D_801D7DE8)
/* 7C108 800C1908 24637DE8 */  addiu      $v1, $v1, %lo(D_801D7DE8)
/* 7C10C 800C190C 946E0000 */  lhu        $t6, 0x0($v1)
/* 7C110 800C1910 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7C114 800C1914 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7C118 800C1918 15C00011 */  bnez       $t6, .L800C1960
/* 7C11C 800C191C 3C0A801D */   lui       $t2, %hi(D_801D7DC0)
/* 7C120 800C1920 3C028004 */  lui        $v0, %hi(D_80038110)
/* 7C124 800C1924 24428110 */  addiu      $v0, $v0, %lo(D_80038110)
/* 7C128 800C1928 944F0110 */  lhu        $t7, 0x110($v0)
/* 7C12C 800C192C 3C18801D */  lui        $t8, %hi(D_801D7DC4)
/* 7C130 800C1930 8F187DC4 */  lw         $t8, %lo(D_801D7DC4)($t8)
/* 7C134 800C1934 3C01801D */  lui        $at, %hi(D_801D7DE6)
/* 7C138 800C1938 A42F7DE6 */  sh         $t7, %lo(D_801D7DE6)($at)
/* 7C13C 800C193C 24010003 */  addiu      $at, $zero, 0x3
/* 7C140 800C1940 17010004 */  bne        $t8, $at, .L800C1954
/* 7C144 800C1944 24090001 */   addiu     $t1, $zero, 0x1
/* 7C148 800C1948 241961FF */  addiu      $t9, $zero, 0x61FF
/* 7C14C 800C194C 10000003 */  b          .L800C195C
/* 7C150 800C1950 A4590110 */   sh        $t9, 0x110($v0)
.L800C1954:
/* 7C154 800C1954 24085FFF */  addiu      $t0, $zero, 0x5FFF
/* 7C158 800C1958 A4480110 */  sh         $t0, 0x110($v0)
.L800C195C:
/* 7C15C 800C195C A4690000 */  sh         $t1, 0x0($v1)
.L800C1960:
/* 7C160 800C1960 8D4A7DC0 */  lw         $t2, %lo(D_801D7DC0)($t2)
/* 7C164 800C1964 24010001 */  addiu      $at, $zero, 0x1
/* 7C168 800C1968 24050066 */  addiu      $a1, $zero, 0x66
/* 7C16C 800C196C 11410011 */  beq        $t2, $at, .L800C19B4
/* 7C170 800C1970 00000000 */   nop
/* 7C174 800C1974 0C0314F5 */  jal        func_800C53D4
/* 7C178 800C1978 3C040500 */   lui       $a0, (0x5000000 >> 16)
/* 7C17C 800C197C 3C040500 */  lui        $a0, (0x5000200 >> 16)
/* 7C180 800C1980 34840200 */  ori        $a0, $a0, (0x5000200 & 0xFFFF)
/* 7C184 800C1984 0C0314F5 */  jal        func_800C53D4
/* 7C188 800C1988 24050066 */   addiu     $a1, $zero, 0x66
/* 7C18C 800C198C 3C040500 */  lui        $a0, (0x5000300 >> 16)
/* 7C190 800C1990 34840300 */  ori        $a0, $a0, (0x5000300 & 0xFFFF)
/* 7C194 800C1994 0C0314F5 */  jal        func_800C53D4
/* 7C198 800C1998 24050066 */   addiu     $a1, $zero, 0x66
/* 7C19C 800C199C 3C040500 */  lui        $a0, (0x5000500 >> 16)
/* 7C1A0 800C19A0 34840500 */  ori        $a0, $a0, (0x5000500 & 0xFFFF)
/* 7C1A4 800C19A4 0C0314F5 */  jal        func_800C53D4
/* 7C1A8 800C19A8 24050066 */   addiu     $a1, $zero, 0x66
/* 7C1AC 800C19AC 10000019 */  b          .L800C1A14
/* 7C1B0 800C19B0 8FBF0014 */   lw        $ra, 0x14($sp)
.L800C19B4:
/* 7C1B4 800C19B4 1480000C */  bnez       $a0, .L800C19E8
/* 7C1B8 800C19B8 24050066 */   addiu     $a1, $zero, 0x66
/* 7C1BC 800C19BC 3C040500 */  lui        $a0, (0x5000000 >> 16)
/* 7C1C0 800C19C0 0C0314F5 */  jal        func_800C53D4
/* 7C1C4 800C19C4 24050066 */   addiu     $a1, $zero, 0x66
/* 7C1C8 800C19C8 3C040500 */  lui        $a0, (0x5000200 >> 16)
/* 7C1CC 800C19CC 34840200 */  ori        $a0, $a0, (0x5000200 & 0xFFFF)
/* 7C1D0 800C19D0 0C0314F5 */  jal        func_800C53D4
/* 7C1D4 800C19D4 24050066 */   addiu     $a1, $zero, 0x66
/* 7C1D8 800C19D8 240B0001 */  addiu      $t3, $zero, 0x1
/* 7C1DC 800C19DC 3C01801D */  lui        $at, %hi(D_801D7DEC)
/* 7C1E0 800C19E0 1000000B */  b          .L800C1A10
/* 7C1E4 800C19E4 A42B7DEC */   sh        $t3, %lo(D_801D7DEC)($at)
.L800C19E8:
/* 7C1E8 800C19E8 3C040500 */  lui        $a0, (0x5000300 >> 16)
/* 7C1EC 800C19EC 0C0314F5 */  jal        func_800C53D4
/* 7C1F0 800C19F0 34840300 */   ori       $a0, $a0, (0x5000300 & 0xFFFF)
/* 7C1F4 800C19F4 3C040500 */  lui        $a0, (0x5000500 >> 16)
/* 7C1F8 800C19F8 34840500 */  ori        $a0, $a0, (0x5000500 & 0xFFFF)
/* 7C1FC 800C19FC 0C0314F5 */  jal        func_800C53D4
/* 7C200 800C1A00 24050066 */   addiu     $a1, $zero, 0x66
/* 7C204 800C1A04 240C0001 */  addiu      $t4, $zero, 0x1
/* 7C208 800C1A08 3C01801D */  lui        $at, %hi(D_801D7DEE)
/* 7C20C 800C1A0C A42C7DEE */  sh         $t4, %lo(D_801D7DEE)($at)
.L800C1A10:
/* 7C210 800C1A10 8FBF0014 */  lw         $ra, 0x14($sp)
.L800C1A14:
/* 7C214 800C1A14 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7C218 800C1A18 03E00008 */  jr         $ra
/* 7C21C 800C1A1C 00000000 */   nop

glabel func_800C1A20
/* 7C220 800C1A20 3C0E801D */  lui        $t6, %hi(D_801D7DE8)
/* 7C224 800C1A24 95CE7DE8 */  lhu        $t6, %lo(D_801D7DE8)($t6)
/* 7C228 800C1A28 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7C22C 800C1A2C AFBF0014 */  sw         $ra, 0x14($sp)
/* 7C230 800C1A30 11C0003B */  beqz       $t6, .L800C1B20
/* 7C234 800C1A34 3C0F801D */   lui       $t7, %hi(D_801D7DC0)
/* 7C238 800C1A38 8DEF7DC0 */  lw         $t7, %lo(D_801D7DC0)($t7)
/* 7C23C 800C1A3C 24010001 */  addiu      $at, $zero, 0x1
/* 7C240 800C1A40 24050010 */  addiu      $a1, $zero, 0x10
/* 7C244 800C1A44 11E10012 */  beq        $t7, $at, .L800C1A90
/* 7C248 800C1A48 00000000 */   nop
/* 7C24C 800C1A4C 0C0314F5 */  jal        func_800C53D4
/* 7C250 800C1A50 3C040500 */   lui       $a0, (0x5000000 >> 16)
/* 7C254 800C1A54 3C040500 */  lui        $a0, (0x5000200 >> 16)
/* 7C258 800C1A58 34840200 */  ori        $a0, $a0, (0x5000200 & 0xFFFF)
/* 7C25C 800C1A5C 0C0314F5 */  jal        func_800C53D4
/* 7C260 800C1A60 24050010 */   addiu     $a1, $zero, 0x10
/* 7C264 800C1A64 3C040500 */  lui        $a0, (0x5000300 >> 16)
/* 7C268 800C1A68 34840300 */  ori        $a0, $a0, (0x5000300 & 0xFFFF)
/* 7C26C 800C1A6C 0C0314F5 */  jal        func_800C53D4
/* 7C270 800C1A70 24050010 */   addiu     $a1, $zero, 0x10
/* 7C274 800C1A74 3C040500 */  lui        $a0, (0x5000500 >> 16)
/* 7C278 800C1A78 34840500 */  ori        $a0, $a0, (0x5000500 & 0xFFFF)
/* 7C27C 800C1A7C 0C0314F5 */  jal        func_800C53D4
/* 7C280 800C1A80 24050010 */   addiu     $a1, $zero, 0x10
/* 7C284 800C1A84 3C01801D */  lui        $at, %hi(D_801D7DE8)
/* 7C288 800C1A88 1000001D */  b          .L800C1B00
/* 7C28C 800C1A8C A4207DE8 */   sh        $zero, %lo(D_801D7DE8)($at)
.L800C1A90:
/* 7C290 800C1A90 1480000B */  bnez       $a0, .L800C1AC0
/* 7C294 800C1A94 24050010 */   addiu     $a1, $zero, 0x10
/* 7C298 800C1A98 0C0314F5 */  jal        func_800C53D4
/* 7C29C 800C1A9C 3C040500 */   lui       $a0, (0x5000000 >> 16)
/* 7C2A0 800C1AA0 3C040500 */  lui        $a0, (0x5000200 >> 16)
/* 7C2A4 800C1AA4 34840200 */  ori        $a0, $a0, (0x5000200 & 0xFFFF)
/* 7C2A8 800C1AA8 0C0314F5 */  jal        func_800C53D4
/* 7C2AC 800C1AAC 24050010 */   addiu     $a1, $zero, 0x10
/* 7C2B0 800C1AB0 3C02801D */  lui        $v0, %hi(D_801D7DEC)
/* 7C2B4 800C1AB4 24427DEC */  addiu      $v0, $v0, %lo(D_801D7DEC)
/* 7C2B8 800C1AB8 1000000C */  b          .L800C1AEC
/* 7C2BC 800C1ABC A4400000 */   sh        $zero, 0x0($v0)
.L800C1AC0:
/* 7C2C0 800C1AC0 3C040500 */  lui        $a0, (0x5000300 >> 16)
/* 7C2C4 800C1AC4 34840300 */  ori        $a0, $a0, (0x5000300 & 0xFFFF)
/* 7C2C8 800C1AC8 0C0314F5 */  jal        func_800C53D4
/* 7C2CC 800C1ACC 24050010 */   addiu     $a1, $zero, 0x10
/* 7C2D0 800C1AD0 3C040500 */  lui        $a0, (0x5000500 >> 16)
/* 7C2D4 800C1AD4 34840500 */  ori        $a0, $a0, (0x5000500 & 0xFFFF)
/* 7C2D8 800C1AD8 0C0314F5 */  jal        func_800C53D4
/* 7C2DC 800C1ADC 24050010 */   addiu     $a1, $zero, 0x10
/* 7C2E0 800C1AE0 3C02801D */  lui        $v0, %hi(D_801D7DEC)
/* 7C2E4 800C1AE4 24427DEC */  addiu      $v0, $v0, %lo(D_801D7DEC)
/* 7C2E8 800C1AE8 A4400002 */  sh         $zero, 0x2($v0)
.L800C1AEC:
/* 7C2EC 800C1AEC 94580002 */  lhu        $t8, 0x2($v0)
/* 7C2F0 800C1AF0 94590000 */  lhu        $t9, 0x0($v0)
/* 7C2F4 800C1AF4 3C01801D */  lui        $at, %hi(D_801D7DE8)
/* 7C2F8 800C1AF8 03194021 */  addu       $t0, $t8, $t9
/* 7C2FC 800C1AFC A4287DE8 */  sh         $t0, %lo(D_801D7DE8)($at)
.L800C1B00:
/* 7C300 800C1B00 3C09801D */  lui        $t1, %hi(D_801D7DE8)
/* 7C304 800C1B04 95297DE8 */  lhu        $t1, %lo(D_801D7DE8)($t1)
/* 7C308 800C1B08 3C0A801D */  lui        $t2, %hi(D_801D7DE6)
/* 7C30C 800C1B0C 55200005 */  bnel       $t1, $zero, .L800C1B24
/* 7C310 800C1B10 8FBF0014 */   lw        $ra, 0x14($sp)
/* 7C314 800C1B14 954A7DE6 */  lhu        $t2, %lo(D_801D7DE6)($t2)
/* 7C318 800C1B18 3C018004 */  lui        $at, %hi(D_80038220)
/* 7C31C 800C1B1C A42A8220 */  sh         $t2, %lo(D_80038220)($at)
.L800C1B20:
/* 7C320 800C1B20 8FBF0014 */  lw         $ra, 0x14($sp)
.L800C1B24:
/* 7C324 800C1B24 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7C328 800C1B28 03E00008 */  jr         $ra
/* 7C32C 800C1B2C 00000000 */   nop

glabel func_800C1B30
/* 7C330 800C1B30 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7C334 800C1B34 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7C338 800C1B38 3C040600 */  lui        $a0, (0x6000700 >> 16)
/* 7C33C 800C1B3C 34840700 */  ori        $a0, $a0, (0x6000700 & 0xFFFF)
/* 7C340 800C1B40 0C0314F5 */  jal        func_800C53D4
/* 7C344 800C1B44 24050010 */   addiu     $a1, $zero, 0x10
/* 7C348 800C1B48 24040010 */  addiu      $a0, $zero, 0x10
/* 7C34C 800C1B4C 0C030DFD */  jal        func_800C37F4
/* 7C350 800C1B50 00002825 */   or        $a1, $zero, $zero
/* 7C354 800C1B54 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7C358 800C1B58 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7C35C 800C1B5C 03E00008 */  jr         $ra
/* 7C360 800C1B60 00000000 */   nop

glabel func_800C1B64
/* 7C364 800C1B64 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7C368 800C1B68 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7C36C 800C1B6C 240E0005 */  addiu      $t6, $zero, 0x5
/* 7C370 800C1B70 3C01800E */  lui        $at, %hi(D_800E7C9C)
/* 7C374 800C1B74 3C040600 */  lui        $a0, (0x6000700 >> 16)
/* 7C378 800C1B78 AC2E7C9C */  sw         $t6, %lo(D_800E7C9C)($at)
/* 7C37C 800C1B7C 34840700 */  ori        $a0, $a0, (0x6000700 & 0xFFFF)
/* 7C380 800C1B80 0C0314F5 */  jal        func_800C53D4
/* 7C384 800C1B84 24050011 */   addiu     $a1, $zero, 0x11
/* 7C388 800C1B88 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7C38C 800C1B8C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7C390 800C1B90 03E00008 */  jr         $ra
/* 7C394 800C1B94 00000000 */   nop

glabel func_800C1B98
/* 7C398 800C1B98 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7C39C 800C1B9C AFBF0014 */  sw         $ra, 0x14($sp)
/* 7C3A0 800C1BA0 3C01800E */  lui        $at, %hi(D_800E7C9C)
/* 7C3A4 800C1BA4 3C040600 */  lui        $a0, (0x6000700 >> 16)
/* 7C3A8 800C1BA8 AC207C9C */  sw         $zero, %lo(D_800E7C9C)($at)
/* 7C3AC 800C1BAC 34840700 */  ori        $a0, $a0, (0x6000700 & 0xFFFF)
/* 7C3B0 800C1BB0 0C0314F5 */  jal        func_800C53D4
/* 7C3B4 800C1BB4 2405FFFF */   addiu     $a1, $zero, -0x1
/* 7C3B8 800C1BB8 3C040600 */  lui        $a0, (0x6000704 >> 16)
/* 7C3BC 800C1BBC 34840704 */  ori        $a0, $a0, (0x6000704 & 0xFFFF)
/* 7C3C0 800C1BC0 0C0314F5 */  jal        func_800C53D4
/* 7C3C4 800C1BC4 2405FFFF */   addiu     $a1, $zero, -0x1
/* 7C3C8 800C1BC8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7C3CC 800C1BCC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7C3D0 800C1BD0 03E00008 */  jr         $ra
/* 7C3D4 800C1BD4 00000000 */   nop

glabel func_800C1BD8
/* 7C3D8 800C1BD8 3C0E800E */  lui        $t6, %hi(D_800E7C9C)
/* 7C3DC 800C1BDC 8DCE7C9C */  lw         $t6, %lo(D_800E7C9C)($t6)
/* 7C3E0 800C1BE0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7C3E4 800C1BE4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7C3E8 800C1BE8 11C00069 */  beqz       $t6, .L800C1D90
/* 7C3EC 800C1BEC E7AE0024 */   swc1      $f14, 0x24($sp)
/* 7C3F0 800C1BF0 3C014380 */  lui        $at, (0x43800000 >> 16)
/* 7C3F4 800C1BF4 44811000 */  mtc1       $at, $f2
/* 7C3F8 800C1BF8 3C03801D */  lui        $v1, %hi(D_801D7DEC)
/* 7C3FC 800C1BFC 3C014240 */  lui        $at, (0x42400000 >> 16)
/* 7C400 800C1C00 460C103E */  c.le.s     $f2, $f12
/* 7C404 800C1C04 3C0F801D */  lui        $t7, %hi(D_801D7DC0)
/* 7C408 800C1C08 3C18801D */  lui        $t8, %hi(D_801D7DE8)
/* 7C40C 800C1C0C 24637DEC */  addiu      $v1, $v1, %lo(D_801D7DEC)
/* 7C410 800C1C10 45020005 */  bc1fl      .L800C1C28
/* 7C414 800C1C14 44812000 */   mtc1      $at, $f4
/* 7C418 800C1C18 44800000 */  mtc1       $zero, $f0
/* 7C41C 800C1C1C 1000000F */  b          .L800C1C5C
/* 7C420 800C1C20 00000000 */   nop
/* 7C424 800C1C24 44812000 */  mtc1       $at, $f4
.L800C1C28:
/* 7C428 800C1C28 3C014350 */  lui        $at, (0x43500000 >> 16)
/* 7C42C 800C1C2C 4604603E */  c.le.s     $f12, $f4
/* 7C430 800C1C30 00000000 */  nop
/* 7C434 800C1C34 45020006 */  bc1fl      .L800C1C50
/* 7C438 800C1C38 460C1181 */   sub.s     $f6, $f2, $f12
/* 7C43C 800C1C3C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 7C440 800C1C40 44810000 */  mtc1       $at, $f0
/* 7C444 800C1C44 10000005 */  b          .L800C1C5C
/* 7C448 800C1C48 00000000 */   nop
/* 7C44C 800C1C4C 460C1181 */  sub.s      $f6, $f2, $f12
.L800C1C50:
/* 7C450 800C1C50 44814000 */  mtc1       $at, $f8
/* 7C454 800C1C54 00000000 */  nop
/* 7C458 800C1C58 46083003 */  div.s      $f0, $f6, $f8
.L800C1C5C:
/* 7C45C 800C1C5C 8DEF7DC0 */  lw         $t7, %lo(D_801D7DC0)($t7)
/* 7C460 800C1C60 24040001 */  addiu      $a0, $zero, 0x1
/* 7C464 800C1C64 508F000F */  beql       $a0, $t7, .L800C1CA4
/* 7C468 800C1C68 94790002 */   lhu       $t9, 0x2($v1)
/* 7C46C 800C1C6C 97187DE8 */  lhu        $t8, %lo(D_801D7DE8)($t8)
/* 7C470 800C1C70 3C040100 */  lui        $a0, (0x1000700 >> 16)
/* 7C474 800C1C74 3C01800F */  lui        $at, %hi(D_800EC39C)
/* 7C478 800C1C78 13000004 */  beqz       $t8, .L800C1C8C
/* 7C47C 800C1C7C 34840700 */   ori       $a0, $a0, (0x1000700 & 0xFFFF)
/* 7C480 800C1C80 C42AC39C */  lwc1       $f10, %lo(D_800EC39C)($at)
/* 7C484 800C1C84 460A0002 */  mul.s      $f0, $f0, $f10
/* 7C488 800C1C88 00000000 */  nop
.L800C1C8C:
/* 7C48C 800C1C8C 44050000 */  mfc1       $a1, $f0
/* 7C490 800C1C90 0C0314E3 */  jal        func_800C538C
/* 7C494 800C1C94 E7A0001C */   swc1      $f0, 0x1C($sp)
/* 7C498 800C1C98 10000025 */  b          .L800C1D30
/* 7C49C 800C1C9C C7A0001C */   lwc1      $f0, 0x1C($sp)
/* 7C4A0 800C1CA0 94790002 */  lhu        $t9, 0x2($v1)
.L800C1CA4:
/* 7C4A4 800C1CA4 94690000 */  lhu        $t1, 0x0($v1)
/* 7C4A8 800C1CA8 24050040 */  addiu      $a1, $zero, 0x40
/* 7C4AC 800C1CAC 00194040 */  sll        $t0, $t9, 1
/* 7C4B0 800C1CB0 01091021 */  addu       $v0, $t0, $t1
/* 7C4B4 800C1CB4 10400019 */  beqz       $v0, .L800C1D1C
/* 7C4B8 800C1CB8 00000000 */   nop
/* 7C4BC 800C1CBC 10440008 */  beq        $v0, $a0, .L800C1CE0
/* 7C4C0 800C1CC0 3C01800F */   lui       $at, %hi(D_800EC3A0)
/* 7C4C4 800C1CC4 24010002 */  addiu      $at, $zero, 0x2
/* 7C4C8 800C1CC8 1041000A */  beq        $v0, $at, .L800C1CF4
/* 7C4CC 800C1CCC 24010003 */   addiu     $at, $zero, 0x3
/* 7C4D0 800C1CD0 1041000E */  beq        $v0, $at, .L800C1D0C
/* 7C4D4 800C1CD4 00000000 */   nop
/* 7C4D8 800C1CD8 10000010 */  b          .L800C1D1C
/* 7C4DC 800C1CDC 00000000 */   nop
.L800C1CE0:
/* 7C4E0 800C1CE0 C430C3A0 */  lwc1       $f16, %lo(D_800EC3A0)($at)
/* 7C4E4 800C1CE4 24050020 */  addiu      $a1, $zero, 0x20
/* 7C4E8 800C1CE8 46100002 */  mul.s      $f0, $f0, $f16
/* 7C4EC 800C1CEC 1000000C */  b          .L800C1D20
/* 7C4F0 800C1CF0 3C040300 */   lui       $a0, (0x3000700 >> 16)
.L800C1CF4:
/* 7C4F4 800C1CF4 3C01800F */  lui        $at, %hi(D_800EC3A4)
/* 7C4F8 800C1CF8 C432C3A4 */  lwc1       $f18, %lo(D_800EC3A4)($at)
/* 7C4FC 800C1CFC 24050060 */  addiu      $a1, $zero, 0x60
/* 7C500 800C1D00 46120002 */  mul.s      $f0, $f0, $f18
/* 7C504 800C1D04 10000006 */  b          .L800C1D20
/* 7C508 800C1D08 3C040300 */   lui       $a0, (0x3000700 >> 16)
.L800C1D0C:
/* 7C50C 800C1D0C 3C01800F */  lui        $at, %hi(D_800EC3A8)
/* 7C510 800C1D10 C424C3A8 */  lwc1       $f4, %lo(D_800EC3A8)($at)
/* 7C514 800C1D14 46040002 */  mul.s      $f0, $f0, $f4
/* 7C518 800C1D18 00000000 */  nop
.L800C1D1C:
/* 7C51C 800C1D1C 3C040300 */  lui        $a0, (0x3000700 >> 16)
.L800C1D20:
/* 7C520 800C1D20 34840700 */  ori        $a0, $a0, (0x3000700 & 0xFFFF)
/* 7C524 800C1D24 0C0314F5 */  jal        func_800C53D4
/* 7C528 800C1D28 E7A0001C */   swc1      $f0, 0x1C($sp)
/* 7C52C 800C1D2C C7A0001C */  lwc1       $f0, 0x1C($sp)
.L800C1D30:
/* 7C530 800C1D30 3C040100 */  lui        $a0, (0x1000700 >> 16)
/* 7C534 800C1D34 44050000 */  mfc1       $a1, $f0
/* 7C538 800C1D38 0C0314E3 */  jal        func_800C538C
/* 7C53C 800C1D3C 34840700 */   ori       $a0, $a0, (0x1000700 & 0xFFFF)
/* 7C540 800C1D40 44803000 */  mtc1       $zero, $f6
/* 7C544 800C1D44 C7A80024 */  lwc1       $f8, 0x24($sp)
/* 7C548 800C1D48 3C040400 */  lui        $a0, (0x4000700 >> 16)
/* 7C54C 800C1D4C 34840700 */  ori        $a0, $a0, (0x4000700 & 0xFFFF)
/* 7C550 800C1D50 4608303C */  c.lt.s     $f6, $f8
/* 7C554 800C1D54 3C053F75 */  lui        $a1, (0x3F75C28F >> 16)
/* 7C558 800C1D58 45000007 */  bc1f       .L800C1D78
/* 7C55C 800C1D5C 00000000 */   nop
/* 7C560 800C1D60 3C040400 */  lui        $a0, (0x4000700 >> 16)
/* 7C564 800C1D64 34840700 */  ori        $a0, $a0, (0x4000700 & 0xFFFF)
/* 7C568 800C1D68 0C0314E3 */  jal        func_800C538C
/* 7C56C 800C1D6C 3C053F80 */   lui       $a1, (0x3F800000 >> 16)
/* 7C570 800C1D70 10000004 */  b          .L800C1D84
/* 7C574 800C1D74 240A0005 */   addiu     $t2, $zero, 0x5
.L800C1D78:
/* 7C578 800C1D78 0C0314E3 */  jal        func_800C538C
/* 7C57C 800C1D7C 34A5C28F */   ori       $a1, $a1, (0x3F75C28F & 0xFFFF)
/* 7C580 800C1D80 240A0005 */  addiu      $t2, $zero, 0x5
.L800C1D84:
/* 7C584 800C1D84 3C01800E */  lui        $at, %hi(D_800E7C9C)
/* 7C588 800C1D88 10000003 */  b          .L800C1D98
/* 7C58C 800C1D8C AC2A7C9C */   sw        $t2, %lo(D_800E7C9C)($at)
.L800C1D90:
/* 7C590 800C1D90 0C0306E6 */  jal        func_800C1B98
/* 7C594 800C1D94 00000000 */   nop
.L800C1D98:
/* 7C598 800C1D98 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7C59C 800C1D9C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7C5A0 800C1DA0 03E00008 */  jr         $ra
/* 7C5A4 800C1DA4 00000000 */   nop

glabel func_800C1DA8
/* 7C5A8 800C1DA8 3C0E800E */  lui        $t6, %hi(D_800E7C94)
/* 7C5AC 800C1DAC 81CE7C94 */  lb         $t6, %lo(D_800E7C94)($t6)
/* 7C5B0 800C1DB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7C5B4 800C1DB4 24010007 */  addiu      $at, $zero, 0x7
/* 7C5B8 800C1DB8 15C10008 */  bne        $t6, $at, .L800C1DDC
/* 7C5BC 800C1DBC AFBF0014 */   sw        $ra, 0x14($sp)
/* 7C5C0 800C1DC0 240F0005 */  addiu      $t7, $zero, 0x5
/* 7C5C4 800C1DC4 3C01800E */  lui        $at, %hi(D_800E7C9C)
/* 7C5C8 800C1DC8 3C040600 */  lui        $a0, (0x6000700 >> 16)
/* 7C5CC 800C1DCC AC2F7C9C */  sw         $t7, %lo(D_800E7C9C)($at)
/* 7C5D0 800C1DD0 34840700 */  ori        $a0, $a0, (0x6000700 & 0xFFFF)
/* 7C5D4 800C1DD4 0C0314F5 */  jal        func_800C53D4
/* 7C5D8 800C1DD8 24050012 */   addiu     $a1, $zero, 0x12
.L800C1DDC:
/* 7C5DC 800C1DDC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7C5E0 800C1DE0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7C5E4 800C1DE4 03E00008 */  jr         $ra
/* 7C5E8 800C1DE8 00000000 */   nop

glabel func_800C1DEC
/* 7C5EC 800C1DEC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7C5F0 800C1DF0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7C5F4 800C1DF4 0C0306E6 */  jal        func_800C1B98
/* 7C5F8 800C1DF8 00000000 */   nop
/* 7C5FC 800C1DFC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7C600 800C1E00 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7C604 800C1E04 03E00008 */  jr         $ra
/* 7C608 800C1E08 00000000 */   nop

glabel func_800C1E0C
/* 7C60C 800C1E0C 3C0E800E */  lui        $t6, %hi(D_800E7C9C)
/* 7C610 800C1E10 8DCE7C9C */  lw         $t6, %lo(D_800E7C9C)($t6)
/* 7C614 800C1E14 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7C618 800C1E18 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7C61C 800C1E1C 11C00020 */  beqz       $t6, .L800C1EA0
/* 7C620 800C1E20 3C014248 */   lui       $at, (0x42480000 >> 16)
/* 7C624 800C1E24 44811000 */  mtc1       $at, $f2
/* 7C628 800C1E28 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 7C62C 800C1E2C 3C040100 */  lui        $a0, (0x1000700 >> 16)
/* 7C630 800C1E30 460C103E */  c.le.s     $f2, $f12
/* 7C634 800C1E34 00000000 */  nop
/* 7C638 800C1E38 45020005 */  bc1fl      .L800C1E50
/* 7C63C 800C1E3C 44812000 */   mtc1      $at, $f4
/* 7C640 800C1E40 44800000 */  mtc1       $zero, $f0
/* 7C644 800C1E44 10000010 */  b          .L800C1E88
/* 7C648 800C1E48 44050000 */   mfc1      $a1, $f0
/* 7C64C 800C1E4C 44812000 */  mtc1       $at, $f4
.L800C1E50:
/* 7C650 800C1E50 3C014240 */  lui        $at, (0x42400000 >> 16)
/* 7C654 800C1E54 4604603E */  c.le.s     $f12, $f4
/* 7C658 800C1E58 00000000 */  nop
/* 7C65C 800C1E5C 45020006 */  bc1fl      .L800C1E78
/* 7C660 800C1E60 460C1181 */   sub.s     $f6, $f2, $f12
/* 7C664 800C1E64 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 7C668 800C1E68 44810000 */  mtc1       $at, $f0
/* 7C66C 800C1E6C 10000006 */  b          .L800C1E88
/* 7C670 800C1E70 44050000 */   mfc1      $a1, $f0
/* 7C674 800C1E74 460C1181 */  sub.s      $f6, $f2, $f12
.L800C1E78:
/* 7C678 800C1E78 44814000 */  mtc1       $at, $f8
/* 7C67C 800C1E7C 00000000 */  nop
/* 7C680 800C1E80 46083003 */  div.s      $f0, $f6, $f8
/* 7C684 800C1E84 44050000 */  mfc1       $a1, $f0
.L800C1E88:
/* 7C688 800C1E88 0C0314E3 */  jal        func_800C538C
/* 7C68C 800C1E8C 34840700 */   ori       $a0, $a0, (0x1000700 & 0xFFFF)
/* 7C690 800C1E90 240F0005 */  addiu      $t7, $zero, 0x5
/* 7C694 800C1E94 3C01800E */  lui        $at, %hi(D_800E7C9C)
/* 7C698 800C1E98 10000003 */  b          .L800C1EA8
/* 7C69C 800C1E9C AC2F7C9C */   sw        $t7, %lo(D_800E7C9C)($at)
.L800C1EA0:
/* 7C6A0 800C1EA0 0C03077B */  jal        func_800C1DEC
/* 7C6A4 800C1EA4 00000000 */   nop
.L800C1EA8:
/* 7C6A8 800C1EA8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7C6AC 800C1EAC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7C6B0 800C1EB0 03E00008 */  jr         $ra
/* 7C6B4 800C1EB4 00000000 */   nop

glabel func_800C1EB8
/* 7C6B8 800C1EB8 3C02801D */  lui        $v0, %hi(D_801D7E05)
/* 7C6BC 800C1EBC 90427E05 */  lbu        $v0, %lo(D_801D7E05)($v0)
/* 7C6C0 800C1EC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7C6C4 800C1EC4 240100FF */  addiu      $at, $zero, 0xFF
/* 7C6C8 800C1EC8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7C6CC 800C1ECC 10410014 */  beq        $v0, $at, .L800C1F20
/* 7C6D0 800C1ED0 00803025 */   or        $a2, $a0, $zero
/* 7C6D4 800C1ED4 10800005 */  beqz       $a0, .L800C1EEC
/* 7C6D8 800C1ED8 24010001 */   addiu     $at, $zero, 0x1
/* 7C6DC 800C1EDC 10810003 */  beq        $a0, $at, .L800C1EEC
/* 7C6E0 800C1EE0 24010002 */   addiu     $at, $zero, 0x2
/* 7C6E4 800C1EE4 14810009 */  bne        $a0, $at, .L800C1F0C
/* 7C6E8 800C1EE8 00062E00 */   sll       $a1, $a2, 24
.L800C1EEC:
/* 7C6EC 800C1EEC 00462821 */  addu       $a1, $v0, $a2
/* 7C6F0 800C1EF0 00057600 */  sll        $t6, $a1, 24
/* 7C6F4 800C1EF4 3C040600 */  lui        $a0, (0x6000B00 >> 16)
/* 7C6F8 800C1EF8 34840B00 */  ori        $a0, $a0, (0x6000B00 & 0xFFFF)
/* 7C6FC 800C1EFC 0C0314F5 */  jal        func_800C53D4
/* 7C700 800C1F00 000E2E03 */   sra       $a1, $t6, 24
/* 7C704 800C1F04 10000007 */  b          .L800C1F24
/* 7C708 800C1F08 8FBF0014 */   lw        $ra, 0x14($sp)
.L800C1F0C:
/* 7C70C 800C1F0C 3C040600 */  lui        $a0, (0x6000B00 >> 16)
/* 7C710 800C1F10 0005C603 */  sra        $t8, $a1, 24
/* 7C714 800C1F14 03002825 */  or         $a1, $t8, $zero
/* 7C718 800C1F18 0C0314F5 */  jal        func_800C53D4
/* 7C71C 800C1F1C 34840B00 */   ori       $a0, $a0, (0x6000B00 & 0xFFFF)
.L800C1F20:
/* 7C720 800C1F20 8FBF0014 */  lw         $ra, 0x14($sp)
.L800C1F24:
/* 7C724 800C1F24 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7C728 800C1F28 03E00008 */  jr         $ra
/* 7C72C 800C1F2C 00000000 */   nop

glabel func_800C1F30
/* 7C730 800C1F30 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7C734 800C1F34 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7C738 800C1F38 0C0306E6 */  jal        func_800C1B98
/* 7C73C 800C1F3C 00000000 */   nop
/* 7C740 800C1F40 0C02FF4D */  jal        func_800BFD34
/* 7C744 800C1F44 00000000 */   nop
/* 7C748 800C1F48 0C02FF5A */  jal        func_800BFD68
/* 7C74C 800C1F4C 00000000 */   nop
/* 7C750 800C1F50 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7C754 800C1F54 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7C758 800C1F58 03E00008 */  jr         $ra
/* 7C75C 800C1F5C 00000000 */   nop

glabel func_800C1F60
/* 7C760 800C1F60 3C01800E */  lui        $at, %hi(D_800E7CD8)
/* 7C764 800C1F64 AC207CD8 */  sw         $zero, %lo(D_800E7CD8)($at)
/* 7C768 800C1F68 3C01800E */  lui        $at, %hi(D_800E7CDC)
/* 7C76C 800C1F6C AC207CDC */  sw         $zero, %lo(D_800E7CDC)($at)
/* 7C770 800C1F70 3C0E800E */  lui        $t6, %hi(D_800E7C94)
/* 7C774 800C1F74 81CE7C94 */  lb         $t6, %lo(D_800E7C94)($t6)
/* 7C778 800C1F78 3C01800E */  lui        $at, %hi(D_800E7CEC)
/* 7C77C 800C1F7C AC207CEC */  sw         $zero, %lo(D_800E7CEC)($at)
/* 7C780 800C1F80 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7C784 800C1F84 24010007 */  addiu      $at, $zero, 0x7
/* 7C788 800C1F88 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7C78C 800C1F8C 15C10021 */  bne        $t6, $at, .L800C2014
/* 7C790 800C1F90 AFA40018 */   sw        $a0, 0x18($sp)
/* 7C794 800C1F94 0C0307CC */  jal        func_800C1F30
/* 7C798 800C1F98 AFA40018 */   sw        $a0, 0x18($sp)
/* 7C79C 800C1F9C 3C040100 */  lui        $a0, (0x1000200 >> 16)
/* 7C7A0 800C1FA0 34840200 */  ori        $a0, $a0, (0x1000200 & 0xFFFF)
/* 7C7A4 800C1FA4 0C0314E3 */  jal        func_800C538C
/* 7C7A8 800C1FA8 24050000 */   addiu     $a1, $zero, 0x0
/* 7C7AC 800C1FAC 3C040100 */  lui        $a0, (0x1000500 >> 16)
/* 7C7B0 800C1FB0 34840500 */  ori        $a0, $a0, (0x1000500 & 0xFFFF)
/* 7C7B4 800C1FB4 0C0314E3 */  jal        func_800C538C
/* 7C7B8 800C1FB8 24050000 */   addiu     $a1, $zero, 0x0
/* 7C7BC 800C1FBC 3C040100 */  lui        $a0, (0x1000700 >> 16)
/* 7C7C0 800C1FC0 34840700 */  ori        $a0, $a0, (0x1000700 & 0xFFFF)
/* 7C7C4 800C1FC4 0C0314E3 */  jal        func_800C538C
/* 7C7C8 800C1FC8 24050000 */   addiu     $a1, $zero, 0x0
/* 7C7CC 800C1FCC 8FAF0018 */  lw         $t7, 0x18($sp)
/* 7C7D0 800C1FD0 24010004 */  addiu      $at, $zero, 0x4
/* 7C7D4 800C1FD4 11E10006 */  beq        $t7, $at, .L800C1FF0
/* 7C7D8 800C1FD8 24010006 */   addiu     $at, $zero, 0x6
/* 7C7DC 800C1FDC 11E10004 */  beq        $t7, $at, .L800C1FF0
/* 7C7E0 800C1FE0 3C040100 */   lui       $a0, (0x1000C00 >> 16)
/* 7C7E4 800C1FE4 34840C00 */  ori        $a0, $a0, (0x1000C00 & 0xFFFF)
/* 7C7E8 800C1FE8 0C0314E3 */  jal        func_800C538C
/* 7C7EC 800C1FEC 24050000 */   addiu     $a1, $zero, 0x0
.L800C1FF0:
/* 7C7F0 800C1FF0 0C030688 */  jal        func_800C1A20
/* 7C7F4 800C1FF4 00002025 */   or        $a0, $zero, $zero
/* 7C7F8 800C1FF8 3C18801D */  lui        $t8, %hi(D_801D7DC0)
/* 7C7FC 800C1FFC 8F187DC0 */  lw         $t8, %lo(D_801D7DC0)($t8)
/* 7C800 800C2000 24050001 */  addiu      $a1, $zero, 0x1
/* 7C804 800C2004 14B80003 */  bne        $a1, $t8, .L800C2014
/* 7C808 800C2008 00000000 */   nop
/* 7C80C 800C200C 0C030688 */  jal        func_800C1A20
/* 7C810 800C2010 00A02025 */   or        $a0, $a1, $zero
.L800C2014:
/* 7C814 800C2014 3C02800E */  lui        $v0, %hi(D_800E7C94)
/* 7C818 800C2018 8FA40018 */  lw         $a0, 0x18($sp)
/* 7C81C 800C201C 80427C94 */  lb         $v0, %lo(D_800E7C94)($v0)
/* 7C820 800C2020 3C03801D */  lui        $v1, %hi(D_801D7DF4)
/* 7C824 800C2024 24050001 */  addiu      $a1, $zero, 0x1
/* 7C828 800C2028 14820004 */  bne        $a0, $v0, .L800C203C
/* 7C82C 800C202C 24637DF4 */   addiu     $v1, $v1, %lo(D_801D7DF4)
/* 7C830 800C2030 1085006C */  beq        $a0, $a1, L800C21E4
/* 7C834 800C2034 2401000A */   addiu     $at, $zero, 0xA
/* 7C838 800C2038 1081006A */  beq        $a0, $at, L800C21E4
.L800C203C:
/* 7C83C 800C203C 3C01800E */   lui       $at, %hi(D_800E7CE4)
/* 7C840 800C2040 AC207CE4 */  sw         $zero, %lo(D_800E7CE4)($at)
/* 7C844 800C2044 3C01801D */  lui        $at, %hi(D_801D7DF2)
/* 7C848 800C2048 A0207DF2 */  sb         $zero, %lo(D_801D7DF2)($at)
/* 7C84C 800C204C 2C81000D */  sltiu      $at, $a0, 0xD
/* 7C850 800C2050 A0600002 */  sb         $zero, 0x2($v1)
/* 7C854 800C2054 10200063 */  beqz       $at, L800C21E4
/* 7C858 800C2058 A0600003 */   sb        $zero, 0x3($v1)
/* 7C85C 800C205C 0004C880 */  sll        $t9, $a0, 2
/* 7C860 800C2060 3C01800F */  lui        $at, %hi(jtbl_800EC3AC_main)
/* 7C864 800C2064 00390821 */  addu       $at, $at, $t9
/* 7C868 800C2068 8C39C3AC */  lw         $t9, %lo(jtbl_800EC3AC_main)($at)
/* 7C86C 800C206C 03200008 */  jr         $t9
/* 7C870 800C2070 00000000 */   nop
glabel L800C2074
/* 7C874 800C2074 3C01800E */  lui        $at, %hi(D_800E7CB8)
/* 7C878 800C2078 AC207CB8 */  sw         $zero, %lo(D_800E7CB8)($at)
/* 7C87C 800C207C 0C030594 */  jal        func_800C1650
/* 7C880 800C2080 240400A0 */   addiu     $a0, $zero, 0xA0
/* 7C884 800C2084 0C03059D */  jal        func_800C1674
/* 7C888 800C2088 240400A0 */   addiu     $a0, $zero, 0xA0
/* 7C88C 800C208C 0C030582 */  jal        func_800C1608
/* 7C890 800C2090 240400A0 */   addiu     $a0, $zero, 0xA0
/* 7C894 800C2094 10000054 */  b          .L800C21E8
/* 7C898 800C2098 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L800C209C
/* 7C89C 800C209C 14400003 */  bnez       $v0, .L800C20AC
/* 7C8A0 800C20A0 00000000 */   nop
/* 7C8A4 800C20A4 0C030594 */  jal        func_800C1650
/* 7C8A8 800C20A8 240400A0 */   addiu     $a0, $zero, 0xA0
.L800C20AC:
/* 7C8AC 800C20AC 3C08801D */  lui        $t0, %hi(D_801D7DCC)
/* 7C8B0 800C20B0 8D087DCC */  lw         $t0, %lo(D_801D7DCC)($t0)
/* 7C8B4 800C20B4 24010018 */  addiu      $at, $zero, 0x18
/* 7C8B8 800C20B8 5101004B */  beql       $t0, $at, .L800C21E8
/* 7C8BC 800C20BC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 7C8C0 800C20C0 0C03059D */  jal        func_800C1674
/* 7C8C4 800C20C4 240400A0 */   addiu     $a0, $zero, 0xA0
/* 7C8C8 800C20C8 10000047 */  b          .L800C21E8
/* 7C8CC 800C20CC 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L800C20D0
/* 7C8D0 800C20D0 2401000A */  addiu      $at, $zero, 0xA
/* 7C8D4 800C20D4 50410044 */  beql       $v0, $at, .L800C21E8
/* 7C8D8 800C20D8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 7C8DC 800C20DC 0C030594 */  jal        func_800C1650
/* 7C8E0 800C20E0 240400A0 */   addiu     $a0, $zero, 0xA0
/* 7C8E4 800C20E4 0C03059D */  jal        func_800C1674
/* 7C8E8 800C20E8 240400A0 */   addiu     $a0, $zero, 0xA0
/* 7C8EC 800C20EC 0C030582 */  jal        func_800C1608
/* 7C8F0 800C20F0 240400A0 */   addiu     $a0, $zero, 0xA0
/* 7C8F4 800C20F4 1000003C */  b          .L800C21E8
/* 7C8F8 800C20F8 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L800C20FC
/* 7C8FC 800C20FC 0C03059D */  jal        func_800C1674
/* 7C900 800C2100 240400A0 */   addiu     $a0, $zero, 0xA0
/* 7C904 800C2104 0C030582 */  jal        func_800C1608
/* 7C908 800C2108 240400A0 */   addiu     $a0, $zero, 0xA0
/* 7C90C 800C210C 10000036 */  b          .L800C21E8
/* 7C910 800C2110 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L800C2114
/* 7C914 800C2114 3C09801D */  lui        $t1, %hi(D_801D7DC8)
/* 7C918 800C2118 8D297DC8 */  lw         $t1, %lo(D_801D7DC8)($t1)
/* 7C91C 800C211C 24010004 */  addiu      $at, $zero, 0x4
/* 7C920 800C2120 55210031 */  bnel       $t1, $at, .L800C21E8
/* 7C924 800C2124 8FBF0014 */   lw        $ra, 0x14($sp)
/* 7C928 800C2128 0C03059D */  jal        func_800C1674
/* 7C92C 800C212C 24040140 */   addiu     $a0, $zero, 0x140
/* 7C930 800C2130 1000002D */  b          .L800C21E8
/* 7C934 800C2134 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L800C2138
/* 7C938 800C2138 0C030582 */  jal        func_800C1608
/* 7C93C 800C213C 24040046 */   addiu     $a0, $zero, 0x46
/* 7C940 800C2140 0C03059D */  jal        func_800C1674
/* 7C944 800C2144 2404000A */   addiu     $a0, $zero, 0xA
/* 7C948 800C2148 10000027 */  b          .L800C21E8
/* 7C94C 800C214C 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L800C2150
/* 7C950 800C2150 0C03058B */  jal        func_800C162C
/* 7C954 800C2154 2404008C */   addiu     $a0, $zero, 0x8C
/* 7C958 800C2158 0C030594 */  jal        func_800C1650
/* 7C95C 800C215C 2404008C */   addiu     $a0, $zero, 0x8C
/* 7C960 800C2160 10000021 */  b          .L800C21E8
/* 7C964 800C2164 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L800C2168
/* 7C968 800C2168 50A2001F */  beql       $a1, $v0, .L800C21E8
/* 7C96C 800C216C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 7C970 800C2170 0C030594 */  jal        func_800C1650
/* 7C974 800C2174 240400A0 */   addiu     $a0, $zero, 0xA0
/* 7C978 800C2178 0C03059D */  jal        func_800C1674
/* 7C97C 800C217C 240400A0 */   addiu     $a0, $zero, 0xA0
/* 7C980 800C2180 0C030582 */  jal        func_800C1608
/* 7C984 800C2184 240400A0 */   addiu     $a0, $zero, 0xA0
/* 7C988 800C2188 10000017 */  b          .L800C21E8
/* 7C98C 800C218C 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L800C2190
/* 7C990 800C2190 0C03058B */  jal        func_800C162C
/* 7C994 800C2194 24040258 */   addiu     $a0, $zero, 0x258
/* 7C998 800C2198 0C030594 */  jal        func_800C1650
/* 7C99C 800C219C 24040258 */   addiu     $a0, $zero, 0x258
/* 7C9A0 800C21A0 0C03059D */  jal        func_800C1674
/* 7C9A4 800C21A4 24040258 */   addiu     $a0, $zero, 0x258
/* 7C9A8 800C21A8 0C030582 */  jal        func_800C1608
/* 7C9AC 800C21AC 24040258 */   addiu     $a0, $zero, 0x258
/* 7C9B0 800C21B0 1000000D */  b          .L800C21E8
/* 7C9B4 800C21B4 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L800C21B8
/* 7C9B8 800C21B8 24010005 */  addiu      $at, $zero, 0x5
/* 7C9BC 800C21BC 5441000A */  bnel       $v0, $at, .L800C21E8
/* 7C9C0 800C21C0 8FBF0014 */   lw        $ra, 0x14($sp)
/* 7C9C4 800C21C4 0C03058B */  jal        func_800C162C
/* 7C9C8 800C21C8 2404012C */   addiu     $a0, $zero, 0x12C
/* 7C9CC 800C21CC 0C030594 */  jal        func_800C1650
/* 7C9D0 800C21D0 2404012C */   addiu     $a0, $zero, 0x12C
/* 7C9D4 800C21D4 0C03059D */  jal        func_800C1674
/* 7C9D8 800C21D8 2404012C */   addiu     $a0, $zero, 0x12C
/* 7C9DC 800C21DC 0C030582 */  jal        func_800C1608
/* 7C9E0 800C21E0 2404012C */   addiu     $a0, $zero, 0x12C
glabel L800C21E4
/* 7C9E4 800C21E4 8FBF0014 */  lw         $ra, 0x14($sp)
.L800C21E8:
/* 7C9E8 800C21E8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7C9EC 800C21EC 03E00008 */  jr         $ra
/* 7C9F0 800C21F0 00000000 */   nop

glabel func_800C21F4
/* 7C9F4 800C21F4 3C01800E */  lui        $at, %hi(D_800E7CE0)
/* 7C9F8 800C21F8 AC207CE0 */  sw         $zero, %lo(D_800E7CE0)($at)
/* 7C9FC 800C21FC 3C01800E */  lui        $at, %hi(D_800E7CD8)
/* 7CA00 800C2200 AC207CD8 */  sw         $zero, %lo(D_800E7CD8)($at)
/* 7CA04 800C2204 3C01800E */  lui        $at, %hi(D_800E7CDC)
/* 7CA08 800C2208 AC207CDC */  sw         $zero, %lo(D_800E7CDC)($at)
/* 7CA0C 800C220C 3C01800E */  lui        $at, %hi(D_800E7CD4)
/* 7CA10 800C2210 AC207CD4 */  sw         $zero, %lo(D_800E7CD4)($at)
/* 7CA14 800C2214 3C01800E */  lui        $at, %hi(D_800E7CA0)
/* 7CA18 800C2218 AC207CA0 */  sw         $zero, %lo(D_800E7CA0)($at)
/* 7CA1C 800C221C 3C01800E */  lui        $at, %hi(D_800E7CEC)
/* 7CA20 800C2220 AC207CEC */  sw         $zero, %lo(D_800E7CEC)($at)
/* 7CA24 800C2224 3C01800E */  lui        $at, %hi(D_800E7CA8)
/* 7CA28 800C2228 AC207CA8 */  sw         $zero, %lo(D_800E7CA8)($at)
/* 7CA2C 800C222C 3C01801D */  lui        $at, %hi(D_801D7DD0)
/* 7CA30 800C2230 AC207DD0 */  sw         $zero, %lo(D_801D7DD0)($at)
/* 7CA34 800C2234 3C01800E */  lui        $at, %hi(D_800E7CF0)
/* 7CA38 800C2238 AC207CF0 */  sw         $zero, %lo(D_800E7CF0)($at)
/* 7CA3C 800C223C 3C01800E */  lui        $at, %hi(D_800E7CF4)
/* 7CA40 800C2240 3C02801D */  lui        $v0, %hi(D_801D7DF4)
/* 7CA44 800C2244 AC207CF4 */  sw         $zero, %lo(D_800E7CF4)($at)
/* 7CA48 800C2248 24427DF4 */  addiu      $v0, $v0, %lo(D_801D7DF4)
/* 7CA4C 800C224C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7CA50 800C2250 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7CA54 800C2254 A0400002 */  sb         $zero, 0x2($v0)
/* 7CA58 800C2258 A0400003 */  sb         $zero, 0x3($v0)
/* 7CA5C 800C225C 3C01800E */  lui        $at, %hi(D_800E7CB0)
/* 7CA60 800C2260 AFA50024 */  sw         $a1, 0x24($sp)
/* 7CA64 800C2264 AC207CB0 */  sw         $zero, %lo(D_800E7CB0)($at)
/* 7CA68 800C2268 0C0305BC */  jal        func_800C16F0
/* 7CA6C 800C226C AFA40020 */   sw        $a0, 0x20($sp)
/* 7CA70 800C2270 3C02800E */  lui        $v0, %hi(D_800E7C94)
/* 7CA74 800C2274 8FA40020 */  lw         $a0, 0x20($sp)
/* 7CA78 800C2278 80427C94 */  lb         $v0, %lo(D_800E7C94)($v0)
/* 7CA7C 800C227C 24060001 */  addiu      $a2, $zero, 0x1
/* 7CA80 800C2280 14820004 */  bne        $a0, $v0, .L800C2294
/* 7CA84 800C2284 00000000 */   nop
/* 7CA88 800C2288 10860314 */  beq        $a0, $a2, .L800C2EDC
/* 7CA8C 800C228C 2401000A */   addiu     $at, $zero, 0xA
/* 7CA90 800C2290 10810312 */  beq        $a0, $at, .L800C2EDC
.L800C2294:
/* 7CA94 800C2294 3C01800E */   lui       $at, %hi(D_800E7C94)
/* 7CA98 800C2298 A0247C94 */  sb         $a0, %lo(D_800E7C94)($at)
/* 7CA9C 800C229C 24060001 */  addiu      $a2, $zero, 0x1
/* 7CAA0 800C22A0 3C01800E */  lui        $at, %hi(D_800E7CBC)
/* 7CAA4 800C22A4 AC267CBC */  sw         $a2, %lo(D_800E7CBC)($at)
/* 7CAA8 800C22A8 3C01800E */  lui        $at, %hi(D_800E7CC0)
/* 7CAAC 800C22AC AC267CC0 */  sw         $a2, %lo(D_800E7CC0)($at)
/* 7CAB0 800C22B0 2881000D */  slti       $at, $a0, 0xD
/* 7CAB4 800C22B4 14200006 */  bnez       $at, .L800C22D0
/* 7CAB8 800C22B8 00401825 */   or        $v1, $v0, $zero
/* 7CABC 800C22BC 240100FF */  addiu      $at, $zero, 0xFF
/* 7CAC0 800C22C0 108102F0 */  beq        $a0, $at, .L800C2E84
/* 7CAC4 800C22C4 00000000 */   nop
/* 7CAC8 800C22C8 100002F0 */  b          .L800C2E8C
/* 7CACC 800C22CC 00000000 */   nop
.L800C22D0:
/* 7CAD0 800C22D0 2C81000D */  sltiu      $at, $a0, 0xD
/* 7CAD4 800C22D4 102002ED */  beqz       $at, .L800C2E8C
/* 7CAD8 800C22D8 00047080 */   sll       $t6, $a0, 2
/* 7CADC 800C22DC 3C01800F */  lui        $at, %hi(jtbl_800EC3E0_main)
/* 7CAE0 800C22E0 002E0821 */  addu       $at, $at, $t6
/* 7CAE4 800C22E4 8C2EC3E0 */  lw         $t6, %lo(jtbl_800EC3E0_main)($at)
/* 7CAE8 800C22E8 01C00008 */  jr         $t6
/* 7CAEC 800C22EC 00000000 */   nop
glabel L800C22F0
/* 7CAF0 800C22F0 0C0305A6 */  jal        func_800C1698
/* 7CAF4 800C22F4 AFA3001C */   sw        $v1, 0x1C($sp)
/* 7CAF8 800C22F8 8FA3001C */  lw         $v1, 0x1C($sp)
/* 7CAFC 800C22FC 50600004 */  beql       $v1, $zero, .L800C2310
/* 7CB00 800C2300 3C044601 */   lui       $a0, (0x46010000 >> 16)
/* 7CB04 800C2304 0C0305C5 */  jal        func_800C1714
/* 7CB08 800C2308 00002025 */   or        $a0, $zero, $zero
/* 7CB0C 800C230C 3C044601 */  lui        $a0, (0x46010000 >> 16)
.L800C2310:
/* 7CB10 800C2310 0C0314F5 */  jal        func_800C53D4
/* 7CB14 800C2314 24050012 */   addiu     $a1, $zero, 0x12
/* 7CB18 800C2318 0C0304EB */  jal        func_800C13AC
/* 7CB1C 800C231C 00002025 */   or        $a0, $zero, $zero
/* 7CB20 800C2320 3C040300 */  lui        $a0, (0x3000000 >> 16)
/* 7CB24 800C2324 0C0314F5 */  jal        func_800C53D4
/* 7CB28 800C2328 24050040 */   addiu     $a1, $zero, 0x40
/* 7CB2C 800C232C 3C040300 */  lui        $a0, (0x3000100 >> 16)
/* 7CB30 800C2330 34840100 */  ori        $a0, $a0, (0x3000100 & 0xFFFF)
/* 7CB34 800C2334 0C0314F5 */  jal        func_800C53D4
/* 7CB38 800C2338 24050040 */   addiu     $a1, $zero, 0x40
/* 7CB3C 800C233C 3C040300 */  lui        $a0, (0x3000200 >> 16)
/* 7CB40 800C2340 34840200 */  ori        $a0, $a0, (0x3000200 & 0xFFFF)
/* 7CB44 800C2344 0C0314F5 */  jal        func_800C53D4
/* 7CB48 800C2348 24050040 */   addiu     $a1, $zero, 0x40
/* 7CB4C 800C234C 3C040300 */  lui        $a0, (0x3000300 >> 16)
/* 7CB50 800C2350 34840300 */  ori        $a0, $a0, (0x3000300 & 0xFFFF)
/* 7CB54 800C2354 0C0314F5 */  jal        func_800C53D4
/* 7CB58 800C2358 24050040 */   addiu     $a1, $zero, 0x40
/* 7CB5C 800C235C 3C040300 */  lui        $a0, (0x3000400 >> 16)
/* 7CB60 800C2360 34840400 */  ori        $a0, $a0, (0x3000400 & 0xFFFF)
/* 7CB64 800C2364 0C0314F5 */  jal        func_800C53D4
/* 7CB68 800C2368 24050040 */   addiu     $a1, $zero, 0x40
/* 7CB6C 800C236C 3C040300 */  lui        $a0, (0x3000500 >> 16)
/* 7CB70 800C2370 34840500 */  ori        $a0, $a0, (0x3000500 & 0xFFFF)
/* 7CB74 800C2374 0C0314F5 */  jal        func_800C53D4
/* 7CB78 800C2378 24050040 */   addiu     $a1, $zero, 0x40
/* 7CB7C 800C237C 24040003 */  addiu      $a0, $zero, 0x3
/* 7CB80 800C2380 0C030540 */  jal        func_800C1500
/* 7CB84 800C2384 00002825 */   or        $a1, $zero, $zero
/* 7CB88 800C2388 3C040100 */  lui        $a0, (0x1000200 >> 16)
/* 7CB8C 800C238C 34840200 */  ori        $a0, $a0, (0x1000200 & 0xFFFF)
/* 7CB90 800C2390 0C0314E3 */  jal        func_800C538C
/* 7CB94 800C2394 24050000 */   addiu     $a1, $zero, 0x0
/* 7CB98 800C2398 3C040100 */  lui        $a0, (0x1000500 >> 16)
/* 7CB9C 800C239C 34840500 */  ori        $a0, $a0, (0x1000500 & 0xFFFF)
/* 7CBA0 800C23A0 0C0314E3 */  jal        func_800C538C
/* 7CBA4 800C23A4 24050000 */   addiu     $a1, $zero, 0x0
/* 7CBA8 800C23A8 3C01800E */  lui        $at, %hi(D_800E7C90)
/* 7CBAC 800C23AC A0207C90 */  sb         $zero, %lo(D_800E7C90)($at)
/* 7CBB0 800C23B0 3C01801D */  lui        $at, %hi(D_801D7E05)
/* 7CBB4 800C23B4 240F00FF */  addiu      $t7, $zero, 0xFF
/* 7CBB8 800C23B8 A02F7E05 */  sb         $t7, %lo(D_801D7E05)($at)
/* 7CBBC 800C23BC 3C01801D */  lui        $at, %hi(D_801D7DC0)
/* 7CBC0 800C23C0 AC207DC0 */  sw         $zero, %lo(D_801D7DC0)($at)
/* 7CBC4 800C23C4 3C01801D */  lui        $at, %hi(D_801D7DC4)
/* 7CBC8 800C23C8 AC207DC4 */  sw         $zero, %lo(D_801D7DC4)($at)
/* 7CBCC 800C23CC 3C01801D */  lui        $at, %hi(D_801D7DCC)
/* 7CBD0 800C23D0 24180003 */  addiu      $t8, $zero, 0x3
/* 7CBD4 800C23D4 0C02FED4 */  jal        func_800BFB50
/* 7CBD8 800C23D8 AC387DCC */   sw        $t8, %lo(D_801D7DCC)($at)
/* 7CBDC 800C23DC 100002AB */  b          .L800C2E8C
/* 7CBE0 800C23E0 00000000 */   nop
glabel L800C23E4
/* 7CBE4 800C23E4 3C19801D */  lui        $t9, %hi(D_801D7DCC)
/* 7CBE8 800C23E8 8F397DCC */  lw         $t9, %lo(D_801D7DCC)($t9)
/* 7CBEC 800C23EC 24010018 */  addiu      $at, $zero, 0x18
/* 7CBF0 800C23F0 24040018 */  addiu      $a0, $zero, 0x18
/* 7CBF4 800C23F4 132102A5 */  beq        $t9, $at, .L800C2E8C
/* 7CBF8 800C23F8 00000000 */   nop
/* 7CBFC 800C23FC 0C030562 */  jal        func_800C1588
/* 7CC00 800C2400 24050028 */   addiu     $a1, $zero, 0x28
/* 7CC04 800C2404 24080018 */  addiu      $t0, $zero, 0x18
/* 7CC08 800C2408 3C01801D */  lui        $at, %hi(D_801D7DCC)
/* 7CC0C 800C240C 1000029F */  b          .L800C2E8C
/* 7CC10 800C2410 AC287DCC */   sw        $t0, %lo(D_801D7DCC)($at)
glabel L800C2414
/* 7CC14 800C2414 2401000A */  addiu      $at, $zero, 0xA
/* 7CC18 800C2418 5061001D */  beql       $v1, $at, .L800C2490
/* 7CC1C 800C241C 2404000D */   addiu     $a0, $zero, 0xD
/* 7CC20 800C2420 0C030522 */  jal        func_800C1488
/* 7CC24 800C2424 00000000 */   nop
/* 7CC28 800C2428 0C0304EB */  jal        func_800C13AC
/* 7CC2C 800C242C 24040001 */   addiu     $a0, $zero, 0x1
/* 7CC30 800C2430 0C030582 */  jal        func_800C1608
/* 7CC34 800C2434 240400A0 */   addiu     $a0, $zero, 0xA0
/* 7CC38 800C2438 24040004 */  addiu      $a0, $zero, 0x4
/* 7CC3C 800C243C 0C030562 */  jal        func_800C1588
/* 7CC40 800C2440 24050050 */   addiu     $a1, $zero, 0x50
/* 7CC44 800C2444 3C040100 */  lui        $a0, (0x1000200 >> 16)
/* 7CC48 800C2448 34840200 */  ori        $a0, $a0, (0x1000200 & 0xFFFF)
/* 7CC4C 800C244C 0C0314E3 */  jal        func_800C538C
/* 7CC50 800C2450 24050000 */   addiu     $a1, $zero, 0x0
/* 7CC54 800C2454 3C040100 */  lui        $a0, (0x1000500 >> 16)
/* 7CC58 800C2458 34840500 */  ori        $a0, $a0, (0x1000500 & 0xFFFF)
/* 7CC5C 800C245C 0C0314E3 */  jal        func_800C538C
/* 7CC60 800C2460 24050000 */   addiu     $a1, $zero, 0x0
/* 7CC64 800C2464 3C040100 */  lui        $a0, (0x1000700 >> 16)
/* 7CC68 800C2468 34840700 */  ori        $a0, $a0, (0x1000700 & 0xFFFF)
/* 7CC6C 800C246C 0C0314E3 */  jal        func_800C538C
/* 7CC70 800C2470 24050000 */   addiu     $a1, $zero, 0x0
/* 7CC74 800C2474 8FAA0024 */  lw         $t2, 0x24($sp)
/* 7CC78 800C2478 240900FF */  addiu      $t1, $zero, 0xFF
/* 7CC7C 800C247C 3C01801D */  lui        $at, %hi(D_801D7E05)
/* 7CC80 800C2480 A0297E05 */  sb         $t1, %lo(D_801D7E05)($at)
/* 7CC84 800C2484 3C01801D */  lui        $at, %hi(D_801D7DC0)
/* 7CC88 800C2488 AC2A7DC0 */  sw         $t2, %lo(D_801D7DC0)($at)
/* 7CC8C 800C248C 2404000D */  addiu      $a0, $zero, 0xD
.L800C2490:
/* 7CC90 800C2490 0C030DF0 */  jal        func_800C37C0
/* 7CC94 800C2494 2405000A */   addiu     $a1, $zero, 0xA
/* 7CC98 800C2498 1000027C */  b          .L800C2E8C
/* 7CC9C 800C249C 00000000 */   nop
glabel L800C24A0
/* 7CCA0 800C24A0 5066000C */  beql       $v1, $a2, .L800C24D4
/* 7CCA4 800C24A4 2404000C */   addiu     $a0, $zero, 0xC
/* 7CCA8 800C24A8 0C030522 */  jal        func_800C1488
/* 7CCAC 800C24AC 00000000 */   nop
/* 7CCB0 800C24B0 0C0304EB */  jal        func_800C13AC
/* 7CCB4 800C24B4 24040001 */   addiu     $a0, $zero, 0x1
/* 7CCB8 800C24B8 24040004 */  addiu      $a0, $zero, 0x4
/* 7CCBC 800C24BC 0C030562 */  jal        func_800C1588
/* 7CCC0 800C24C0 24050050 */   addiu     $a1, $zero, 0x50
/* 7CCC4 800C24C4 240B00FF */  addiu      $t3, $zero, 0xFF
/* 7CCC8 800C24C8 3C01801D */  lui        $at, %hi(D_801D7E05)
/* 7CCCC 800C24CC A02B7E05 */  sb         $t3, %lo(D_801D7E05)($at)
/* 7CCD0 800C24D0 2404000C */  addiu      $a0, $zero, 0xC
.L800C24D4:
/* 7CCD4 800C24D4 0C030DF0 */  jal        func_800C37C0
/* 7CCD8 800C24D8 2405000F */   addiu     $a1, $zero, 0xF
/* 7CCDC 800C24DC 1000026B */  b          .L800C2E8C
/* 7CCE0 800C24E0 00000000 */   nop
glabel L800C24E4
/* 7CCE4 800C24E4 0C030522 */  jal        func_800C1488
/* 7CCE8 800C24E8 00000000 */   nop
/* 7CCEC 800C24EC 0C0304EB */  jal        func_800C13AC
/* 7CCF0 800C24F0 00002025 */   or        $a0, $zero, $zero
/* 7CCF4 800C24F4 0C03059D */  jal        func_800C1674
/* 7CCF8 800C24F8 00002025 */   or        $a0, $zero, $zero
/* 7CCFC 800C24FC 0C030582 */  jal        func_800C1608
/* 7CD00 800C2500 00002025 */   or        $a0, $zero, $zero
/* 7CD04 800C2504 3C040300 */  lui        $a0, (0x3000000 >> 16)
/* 7CD08 800C2508 0C0314F5 */  jal        func_800C53D4
/* 7CD0C 800C250C 24050040 */   addiu     $a1, $zero, 0x40
/* 7CD10 800C2510 3C040300 */  lui        $a0, (0x3000100 >> 16)
/* 7CD14 800C2514 34840100 */  ori        $a0, $a0, (0x3000100 & 0xFFFF)
/* 7CD18 800C2518 0C0314F5 */  jal        func_800C53D4
/* 7CD1C 800C251C 24050040 */   addiu     $a1, $zero, 0x40
/* 7CD20 800C2520 3C040300 */  lui        $a0, (0x3000200 >> 16)
/* 7CD24 800C2524 34840200 */  ori        $a0, $a0, (0x3000200 & 0xFFFF)
/* 7CD28 800C2528 0C0314F5 */  jal        func_800C53D4
/* 7CD2C 800C252C 24050040 */   addiu     $a1, $zero, 0x40
/* 7CD30 800C2530 3C040300 */  lui        $a0, (0x3000300 >> 16)
/* 7CD34 800C2534 34840300 */  ori        $a0, $a0, (0x3000300 & 0xFFFF)
/* 7CD38 800C2538 0C0314F5 */  jal        func_800C53D4
/* 7CD3C 800C253C 24050040 */   addiu     $a1, $zero, 0x40
/* 7CD40 800C2540 3C040300 */  lui        $a0, (0x3000400 >> 16)
/* 7CD44 800C2544 34840400 */  ori        $a0, $a0, (0x3000400 & 0xFFFF)
/* 7CD48 800C2548 0C0314F5 */  jal        func_800C53D4
/* 7CD4C 800C254C 24050040 */   addiu     $a1, $zero, 0x40
/* 7CD50 800C2550 3C040300 */  lui        $a0, (0x3000500 >> 16)
/* 7CD54 800C2554 34840500 */  ori        $a0, $a0, (0x3000500 & 0xFFFF)
/* 7CD58 800C2558 0C0314F5 */  jal        func_800C53D4
/* 7CD5C 800C255C 24050040 */   addiu     $a1, $zero, 0x40
/* 7CD60 800C2560 3C040200 */  lui        $a0, (0x2000000 >> 16)
/* 7CD64 800C2564 0C0314E3 */  jal        func_800C538C
/* 7CD68 800C2568 24050000 */   addiu     $a1, $zero, 0x0
/* 7CD6C 800C256C 3C040200 */  lui        $a0, (0x2000300 >> 16)
/* 7CD70 800C2570 34840300 */  ori        $a0, $a0, (0x2000300 & 0xFFFF)
/* 7CD74 800C2574 0C0314E3 */  jal        func_800C538C
/* 7CD78 800C2578 24050000 */   addiu     $a1, $zero, 0x0
/* 7CD7C 800C257C 3C040100 */  lui        $a0, (0x1000200 >> 16)
/* 7CD80 800C2580 34840200 */  ori        $a0, $a0, (0x1000200 & 0xFFFF)
/* 7CD84 800C2584 0C0314E3 */  jal        func_800C538C
/* 7CD88 800C2588 24050000 */   addiu     $a1, $zero, 0x0
/* 7CD8C 800C258C 3C040100 */  lui        $a0, (0x1000500 >> 16)
/* 7CD90 800C2590 34840500 */  ori        $a0, $a0, (0x1000500 & 0xFFFF)
/* 7CD94 800C2594 0C0314E3 */  jal        func_800C538C
/* 7CD98 800C2598 24050000 */   addiu     $a1, $zero, 0x0
/* 7CD9C 800C259C 3C040100 */  lui        $a0, (0x1000700 >> 16)
/* 7CDA0 800C25A0 34840700 */  ori        $a0, $a0, (0x1000700 & 0xFFFF)
/* 7CDA4 800C25A4 0C0314E3 */  jal        func_800C538C
/* 7CDA8 800C25A8 24050000 */   addiu     $a1, $zero, 0x0
/* 7CDAC 800C25AC 3C01800E */  lui        $at, %hi(D_800E7C90)
/* 7CDB0 800C25B0 A0207C90 */  sb         $zero, %lo(D_800E7C90)($at)
/* 7CDB4 800C25B4 3C01801D */  lui        $at, %hi(D_801D7E05)
/* 7CDB8 800C25B8 240C00FF */  addiu      $t4, $zero, 0xFF
/* 7CDBC 800C25BC 0C02FED4 */  jal        func_800BFB50
/* 7CDC0 800C25C0 A02C7E05 */   sb        $t4, %lo(D_801D7E05)($at)
/* 7CDC4 800C25C4 8FAD0024 */  lw         $t5, 0x24($sp)
/* 7CDC8 800C25C8 8FA40024 */  lw         $a0, 0x24($sp)
/* 7CDCC 800C25CC 24010001 */  addiu      $at, $zero, 0x1
/* 7CDD0 800C25D0 15A1000C */  bne        $t5, $at, .L800C2604
/* 7CDD4 800C25D4 24840010 */   addiu     $a0, $a0, 0x10
/* 7CDD8 800C25D8 24040034 */  addiu      $a0, $zero, 0x34
/* 7CDDC 800C25DC 0C030DFD */  jal        func_800C37F4
/* 7CDE0 800C25E0 00002825 */   or        $a1, $zero, $zero
/* 7CDE4 800C25E4 24040011 */  addiu      $a0, $zero, 0x11
/* 7CDE8 800C25E8 0C030DF0 */  jal        func_800C37C0
/* 7CDEC 800C25EC 24050050 */   addiu     $a1, $zero, 0x50
/* 7CDF0 800C25F0 24040019 */  addiu      $a0, $zero, 0x19
/* 7CDF4 800C25F4 0C030540 */  jal        func_800C1500
/* 7CDF8 800C25F8 2405000A */   addiu     $a1, $zero, 0xA
/* 7CDFC 800C25FC 10000223 */  b          .L800C2E8C
/* 7CE00 800C2600 00000000 */   nop
.L800C2604:
/* 7CE04 800C2604 0C030DF0 */  jal        func_800C37C0
/* 7CE08 800C2608 24050014 */   addiu     $a1, $zero, 0x14
/* 7CE0C 800C260C 24040005 */  addiu      $a0, $zero, 0x5
/* 7CE10 800C2610 0C030540 */  jal        func_800C1500
/* 7CE14 800C2614 2405000A */   addiu     $a1, $zero, 0xA
/* 7CE18 800C2618 1000021C */  b          .L800C2E8C
/* 7CE1C 800C261C 00000000 */   nop
glabel L800C2620
/* 7CE20 800C2620 0C030522 */  jal        func_800C1488
/* 7CE24 800C2624 00000000 */   nop
/* 7CE28 800C2628 3C0E801D */  lui        $t6, %hi(D_801D7DC8)
/* 7CE2C 800C262C 8DCE7DC8 */  lw         $t6, %lo(D_801D7DC8)($t6)
/* 7CE30 800C2630 24010004 */  addiu      $at, $zero, 0x4
/* 7CE34 800C2634 24040016 */  addiu      $a0, $zero, 0x16
/* 7CE38 800C2638 15C10003 */  bne        $t6, $at, .L800C2648
/* 7CE3C 800C263C 00000000 */   nop
/* 7CE40 800C2640 0C030540 */  jal        func_800C1500
/* 7CE44 800C2644 24050028 */   addiu     $a1, $zero, 0x28
.L800C2648:
/* 7CE48 800C2648 0C0304EB */  jal        func_800C13AC
/* 7CE4C 800C264C 24040001 */   addiu     $a0, $zero, 0x1
/* 7CE50 800C2650 3C0F801D */  lui        $t7, %hi(D_801D7DC0)
/* 7CE54 800C2654 8DEF7DC0 */  lw         $t7, %lo(D_801D7DC0)($t7)
/* 7CE58 800C2658 8FB80024 */  lw         $t8, 0x24($sp)
/* 7CE5C 800C265C 15E0020B */  bnez       $t7, .L800C2E8C
/* 7CE60 800C2660 00000000 */   nop
/* 7CE64 800C2664 17000009 */  bnez       $t8, .L800C268C
/* 7CE68 800C2668 3C02801D */   lui       $v0, %hi(D_801D7DC8)
/* 7CE6C 800C266C 8C427DC8 */  lw         $v0, %lo(D_801D7DC8)($v0)
/* 7CE70 800C2670 24010005 */  addiu      $at, $zero, 0x5
/* 7CE74 800C2674 10410005 */  beq        $v0, $at, .L800C268C
/* 7CE78 800C2678 24440056 */   addiu     $a0, $v0, 0x56
/* 7CE7C 800C267C 0C030D49 */  jal        func_800C3524
/* 7CE80 800C2680 24050028 */   addiu     $a1, $zero, 0x28
/* 7CE84 800C2684 10000201 */  b          .L800C2E8C
/* 7CE88 800C2688 00000000 */   nop
.L800C268C:
/* 7CE8C 800C268C 2404005B */  addiu      $a0, $zero, 0x5B
/* 7CE90 800C2690 0C030D49 */  jal        func_800C3524
/* 7CE94 800C2694 24050028 */   addiu     $a1, $zero, 0x28
/* 7CE98 800C2698 100001FC */  b          .L800C2E8C
/* 7CE9C 800C269C 00000000 */   nop
glabel L800C26A0
/* 7CEA0 800C26A0 24040002 */  addiu      $a0, $zero, 0x2
/* 7CEA4 800C26A4 0C031491 */  jal        func_800C5244
/* 7CEA8 800C26A8 240500F0 */   addiu     $a1, $zero, 0xF0
/* 7CEAC 800C26AC 3C08801D */  lui        $t0, %hi(D_801D7DC4)
/* 7CEB0 800C26B0 8D087DC4 */  lw         $t0, %lo(D_801D7DC4)($t0)
/* 7CEB4 800C26B4 24190050 */  addiu      $t9, $zero, 0x50
/* 7CEB8 800C26B8 3C01800E */  lui        $at, %hi(D_800E7CE0)
/* 7CEBC 800C26BC 15000009 */  bnez       $t0, .L800C26E4
/* 7CEC0 800C26C0 AC397CE0 */   sw        $t9, %lo(D_800E7CE0)($at)
/* 7CEC4 800C26C4 3C09801D */  lui        $t1, %hi(D_801D7DC0)
/* 7CEC8 800C26C8 8D297DC0 */  lw         $t1, %lo(D_801D7DC0)($t1)
/* 7CECC 800C26CC 3C040100 */  lui        $a0, (0x1000C00 >> 16)
/* 7CED0 800C26D0 34840C00 */  ori        $a0, $a0, (0x1000C00 & 0xFFFF)
/* 7CED4 800C26D4 55200004 */  bnel       $t1, $zero, .L800C26E8
/* 7CED8 800C26D8 240A0004 */   addiu     $t2, $zero, 0x4
/* 7CEDC 800C26DC 0C0314E3 */  jal        func_800C538C
/* 7CEE0 800C26E0 24050000 */   addiu     $a1, $zero, 0x0
.L800C26E4:
/* 7CEE4 800C26E4 240A0004 */  addiu      $t2, $zero, 0x4
.L800C26E8:
/* 7CEE8 800C26E8 3C01801D */  lui        $at, %hi(D_801D7DC8)
/* 7CEEC 800C26EC 100001E7 */  b          .L800C2E8C
/* 7CEF0 800C26F0 AC2A7DC8 */   sw        $t2, %lo(D_801D7DC8)($at)
glabel L800C26F4
/* 7CEF4 800C26F4 24040017 */  addiu      $a0, $zero, 0x17
/* 7CEF8 800C26F8 0C030540 */  jal        func_800C1500
/* 7CEFC 800C26FC 2405000A */   addiu     $a1, $zero, 0xA
/* 7CF00 800C2700 2404001F */  addiu      $a0, $zero, 0x1F
/* 7CF04 800C2704 0C030D49 */  jal        func_800C3524
/* 7CF08 800C2708 24050046 */   addiu     $a1, $zero, 0x46
/* 7CF0C 800C270C 100001DF */  b          .L800C2E8C
/* 7CF10 800C2710 00000000 */   nop
glabel L800C2714
/* 7CF14 800C2714 8FA40024 */  lw         $a0, 0x24($sp)
/* 7CF18 800C2718 0C0305C5 */  jal        func_800C1714
/* 7CF1C 800C271C 24840001 */   addiu     $a0, $a0, 0x1
/* 7CF20 800C2720 8FA30024 */  lw         $v1, 0x24($sp)
/* 7CF24 800C2724 3C0B800E */  lui        $t3, %hi(D_800E7CF8)
/* 7CF28 800C2728 3C0C800E */  lui        $t4, %hi(D_800E7D04)
/* 7CF2C 800C272C 01635821 */  addu       $t3, $t3, $v1
/* 7CF30 800C2730 816B7CF8 */  lb         $t3, %lo(D_800E7CF8)($t3)
/* 7CF34 800C2734 01836021 */  addu       $t4, $t4, $v1
/* 7CF38 800C2738 818C7D04 */  lb         $t4, %lo(D_800E7D04)($t4)
/* 7CF3C 800C273C 3C01801D */  lui        $at, %hi(D_801D7E08)
/* 7CF40 800C2740 3C0D800E */  lui        $t5, %hi(D_800E7D10)
/* 7CF44 800C2744 01A36821 */  addu       $t5, $t5, $v1
/* 7CF48 800C2748 AC2B7E08 */  sw         $t3, %lo(D_801D7E08)($at)
/* 7CF4C 800C274C 81AD7D10 */  lb         $t5, %lo(D_800E7D10)($t5)
/* 7CF50 800C2750 3C01801D */  lui        $at, %hi(D_801D7E0C)
/* 7CF54 800C2754 3C02801D */  lui        $v0, %hi(D_801D7DC0)
/* 7CF58 800C2758 AC2C7E0C */  sw         $t4, %lo(D_801D7E0C)($at)
/* 7CF5C 800C275C 8C427DC0 */  lw         $v0, %lo(D_801D7DC0)($v0)
/* 7CF60 800C2760 3C01801D */  lui        $at, %hi(D_801D7E10)
/* 7CF64 800C2764 AC2D7E10 */  sw         $t5, %lo(D_801D7E10)($at)
/* 7CF68 800C2768 3C01801D */  lui        $at, %hi(D_801D7DC4)
/* 7CF6C 800C276C 1040000A */  beqz       $v0, .L800C2798
/* 7CF70 800C2770 AC237DC4 */   sw        $v1, %lo(D_801D7DC4)($at)
/* 7CF74 800C2774 24010001 */  addiu      $at, $zero, 0x1
/* 7CF78 800C2778 10410051 */  beq        $v0, $at, .L800C28C0
/* 7CF7C 800C277C 24010002 */   addiu     $at, $zero, 0x2
/* 7CF80 800C2780 10410082 */  beq        $v0, $at, .L800C298C
/* 7CF84 800C2784 24010003 */   addiu     $at, $zero, 0x3
/* 7CF88 800C2788 104100A8 */  beq        $v0, $at, .L800C2A2C
/* 7CF8C 800C278C 00000000 */   nop
/* 7CF90 800C2790 100000CB */  b          .L800C2AC0
/* 7CF94 800C2794 00000000 */   nop
.L800C2798:
/* 7CF98 800C2798 0C030522 */  jal        func_800C1488
/* 7CF9C 800C279C 00000000 */   nop
/* 7CFA0 800C27A0 0C0304EB */  jal        func_800C13AC
/* 7CFA4 800C27A4 00002025 */   or        $a0, $zero, $zero
/* 7CFA8 800C27A8 3C01800E */  lui        $at, %hi(D_800E7C90)
/* 7CFAC 800C27AC A0207C90 */  sb         $zero, %lo(D_800E7C90)($at)
/* 7CFB0 800C27B0 3C01801D */  lui        $at, %hi(D_801D7E05)
/* 7CFB4 800C27B4 240E0008 */  addiu      $t6, $zero, 0x8
/* 7CFB8 800C27B8 A02E7E05 */  sb         $t6, %lo(D_801D7E05)($at)
/* 7CFBC 800C27BC 3C040300 */  lui        $a0, (0x3000000 >> 16)
/* 7CFC0 800C27C0 0C0314F5 */  jal        func_800C53D4
/* 7CFC4 800C27C4 24050040 */   addiu     $a1, $zero, 0x40
/* 7CFC8 800C27C8 3C040300 */  lui        $a0, (0x3000100 >> 16)
/* 7CFCC 800C27CC 34840100 */  ori        $a0, $a0, (0x3000100 & 0xFFFF)
/* 7CFD0 800C27D0 0C0314F5 */  jal        func_800C53D4
/* 7CFD4 800C27D4 24050040 */   addiu     $a1, $zero, 0x40
/* 7CFD8 800C27D8 3C040300 */  lui        $a0, (0x3000200 >> 16)
/* 7CFDC 800C27DC 34840200 */  ori        $a0, $a0, (0x3000200 & 0xFFFF)
/* 7CFE0 800C27E0 0C0314F5 */  jal        func_800C53D4
/* 7CFE4 800C27E4 24050040 */   addiu     $a1, $zero, 0x40
/* 7CFE8 800C27E8 3C040300 */  lui        $a0, (0x3000300 >> 16)
/* 7CFEC 800C27EC 34840300 */  ori        $a0, $a0, (0x3000300 & 0xFFFF)
/* 7CFF0 800C27F0 0C0314F5 */  jal        func_800C53D4
/* 7CFF4 800C27F4 24050040 */   addiu     $a1, $zero, 0x40
/* 7CFF8 800C27F8 3C040300 */  lui        $a0, (0x3000400 >> 16)
/* 7CFFC 800C27FC 34840400 */  ori        $a0, $a0, (0x3000400 & 0xFFFF)
/* 7D000 800C2800 0C0314F5 */  jal        func_800C53D4
/* 7D004 800C2804 24050040 */   addiu     $a1, $zero, 0x40
/* 7D008 800C2808 3C040300 */  lui        $a0, (0x3000500 >> 16)
/* 7D00C 800C280C 34840500 */  ori        $a0, $a0, (0x3000500 & 0xFFFF)
/* 7D010 800C2810 0C0314F5 */  jal        func_800C53D4
/* 7D014 800C2814 24050040 */   addiu     $a1, $zero, 0x40
/* 7D018 800C2818 3C0F800E */  lui        $t7, %hi(D_800E7C98)
/* 7D01C 800C281C 8DEF7C98 */  lw         $t7, %lo(D_800E7C98)($t7)
/* 7D020 800C2820 8FB80024 */  lw         $t8, 0x24($sp)
/* 7D024 800C2824 11E00005 */  beqz       $t7, .L800C283C
/* 7D028 800C2828 27040006 */   addiu     $a0, $t8, 0x6
/* 7D02C 800C282C 3C02801D */  lui        $v0, %hi(D_801D7DCC)
/* 7D030 800C2830 24427DCC */  addiu      $v0, $v0, %lo(D_801D7DCC)
/* 7D034 800C2834 0C030534 */  jal        func_800C14D0
/* 7D038 800C2838 AC440000 */   sw        $a0, 0x0($v0)
.L800C283C:
/* 7D03C 800C283C 8FA80024 */  lw         $t0, 0x24($sp)
/* 7D040 800C2840 3C040200 */  lui        $a0, (0x2000300 >> 16)
/* 7D044 800C2844 34840300 */  ori        $a0, $a0, (0x2000300 & 0xFFFF)
/* 7D048 800C2848 1500000E */  bnez       $t0, .L800C2884
/* 7D04C 800C284C 00000000 */   nop
/* 7D050 800C2850 0C0314E3 */  jal        func_800C538C
/* 7D054 800C2854 24050000 */   addiu     $a1, $zero, 0x0
/* 7D058 800C2858 3C040200 */  lui        $a0, (0x2000500 >> 16)
/* 7D05C 800C285C 3C053F49 */  lui        $a1, (0x3F499326 >> 16)
/* 7D060 800C2860 34A59326 */  ori        $a1, $a1, (0x3F499326 & 0xFFFF)
/* 7D064 800C2864 0C0314E3 */  jal        func_800C538C
/* 7D068 800C2868 34840500 */   ori       $a0, $a0, (0x2000500 & 0xFFFF)
/* 7D06C 800C286C 24090008 */  addiu      $t1, $zero, 0x8
/* 7D070 800C2870 3C01800E */  lui        $at, %hi(D_800E7CD8)
/* 7D074 800C2874 AC297CD8 */  sw         $t1, %lo(D_800E7CD8)($at)
/* 7D078 800C2878 3C01801D */  lui        $at, %hi(D_801D7E05)
/* 7D07C 800C287C 10000090 */  b          .L800C2AC0
/* 7D080 800C2880 A0207E05 */   sb        $zero, %lo(D_801D7E05)($at)
.L800C2884:
/* 7D084 800C2884 0C0307AE */  jal        func_800C1EB8
/* 7D088 800C2888 24040010 */   addiu     $a0, $zero, 0x10
/* 7D08C 800C288C 0C02FED4 */  jal        func_800BFB50
/* 7D090 800C2890 00000000 */   nop
/* 7D094 800C2894 8FAA0024 */  lw         $t2, 0x24($sp)
/* 7D098 800C2898 24010007 */  addiu      $at, $zero, 0x7
/* 7D09C 800C289C 8FA40024 */  lw         $a0, 0x24($sp)
/* 7D0A0 800C28A0 15410003 */  bne        $t2, $at, .L800C28B0
/* 7D0A4 800C28A4 00000000 */   nop
/* 7D0A8 800C28A8 10000001 */  b          .L800C28B0
/* 7D0AC 800C28AC 24040009 */   addiu     $a0, $zero, 0x9
.L800C28B0:
/* 7D0B0 800C28B0 0C030D49 */  jal        func_800C3524
/* 7D0B4 800C28B4 2405000F */   addiu     $a1, $zero, 0xF
/* 7D0B8 800C28B8 10000081 */  b          .L800C2AC0
/* 7D0BC 800C28BC 00000000 */   nop
.L800C28C0:
/* 7D0C0 800C28C0 0C030522 */  jal        func_800C1488
/* 7D0C4 800C28C4 00000000 */   nop
/* 7D0C8 800C28C8 0C0304EB */  jal        func_800C13AC
/* 7D0CC 800C28CC 24040001 */   addiu     $a0, $zero, 0x1
/* 7D0D0 800C28D0 240B0001 */  addiu      $t3, $zero, 0x1
/* 7D0D4 800C28D4 3C01800E */  lui        $at, %hi(D_800E7C90)
/* 7D0D8 800C28D8 A02B7C90 */  sb         $t3, %lo(D_800E7C90)($at)
/* 7D0DC 800C28DC 3C01801D */  lui        $at, %hi(D_801D7E05)
/* 7D0E0 800C28E0 240C0004 */  addiu      $t4, $zero, 0x4
/* 7D0E4 800C28E4 A02C7E05 */  sb         $t4, %lo(D_801D7E05)($at)
/* 7D0E8 800C28E8 3C040300 */  lui        $a0, (0x3000000 >> 16)
/* 7D0EC 800C28EC 0C0314F5 */  jal        func_800C53D4
/* 7D0F0 800C28F0 00002825 */   or        $a1, $zero, $zero
/* 7D0F4 800C28F4 3C040300 */  lui        $a0, (0x3000100 >> 16)
/* 7D0F8 800C28F8 34840100 */  ori        $a0, $a0, (0x3000100 & 0xFFFF)
/* 7D0FC 800C28FC 0C0314F5 */  jal        func_800C53D4
/* 7D100 800C2900 00002825 */   or        $a1, $zero, $zero
/* 7D104 800C2904 3C040300 */  lui        $a0, (0x3000200 >> 16)
/* 7D108 800C2908 34840200 */  ori        $a0, $a0, (0x3000200 & 0xFFFF)
/* 7D10C 800C290C 0C0314F5 */  jal        func_800C53D4
/* 7D110 800C2910 00002825 */   or        $a1, $zero, $zero
/* 7D114 800C2914 3C040300 */  lui        $a0, (0x3000300 >> 16)
/* 7D118 800C2918 34840300 */  ori        $a0, $a0, (0x3000300 & 0xFFFF)
/* 7D11C 800C291C 0C0314F5 */  jal        func_800C53D4
/* 7D120 800C2920 2405007F */   addiu     $a1, $zero, 0x7F
/* 7D124 800C2924 3C040300 */  lui        $a0, (0x3000400 >> 16)
/* 7D128 800C2928 34840400 */  ori        $a0, $a0, (0x3000400 & 0xFFFF)
/* 7D12C 800C292C 0C0314F5 */  jal        func_800C53D4
/* 7D130 800C2930 2405007F */   addiu     $a1, $zero, 0x7F
/* 7D134 800C2934 3C040300 */  lui        $a0, (0x3000500 >> 16)
/* 7D138 800C2938 34840500 */  ori        $a0, $a0, (0x3000500 & 0xFFFF)
/* 7D13C 800C293C 0C0314F5 */  jal        func_800C53D4
/* 7D140 800C2940 2405007F */   addiu     $a1, $zero, 0x7F
/* 7D144 800C2944 3C040200 */  lui        $a0, (0x2000300 >> 16)
/* 7D148 800C2948 3C053EF1 */  lui        $a1, (0x3EF1E3C8 >> 16)
/* 7D14C 800C294C 34A5E3C8 */  ori        $a1, $a1, (0x3EF1E3C8 & 0xFFFF)
/* 7D150 800C2950 0C0314E3 */  jal        func_800C538C
/* 7D154 800C2954 34840300 */   ori       $a0, $a0, (0x2000300 & 0xFFFF)
/* 7D158 800C2958 0C0307AE */  jal        func_800C1EB8
/* 7D15C 800C295C 24040002 */   addiu     $a0, $zero, 0x2
/* 7D160 800C2960 3C0D800E */  lui        $t5, %hi(D_800E7C98)
/* 7D164 800C2964 8DAD7C98 */  lw         $t5, %lo(D_800E7C98)($t5)
/* 7D168 800C2968 8FAE0024 */  lw         $t6, 0x24($sp)
/* 7D16C 800C296C 11A00054 */  beqz       $t5, .L800C2AC0
/* 7D170 800C2970 25C40006 */   addiu     $a0, $t6, 0x6
/* 7D174 800C2974 3C02801D */  lui        $v0, %hi(D_801D7DCC)
/* 7D178 800C2978 24427DCC */  addiu      $v0, $v0, %lo(D_801D7DCC)
/* 7D17C 800C297C 0C030534 */  jal        func_800C14D0
/* 7D180 800C2980 AC440000 */   sw        $a0, 0x0($v0)
/* 7D184 800C2984 1000004E */  b          .L800C2AC0
/* 7D188 800C2988 00000000 */   nop
.L800C298C:
/* 7D18C 800C298C 0C030522 */  jal        func_800C1488
/* 7D190 800C2990 00000000 */   nop
/* 7D194 800C2994 0C0304EB */  jal        func_800C13AC
/* 7D198 800C2998 24040001 */   addiu     $a0, $zero, 0x1
/* 7D19C 800C299C 3C01800E */  lui        $at, %hi(D_800E7C90)
/* 7D1A0 800C29A0 A0207C90 */  sb         $zero, %lo(D_800E7C90)($at)
/* 7D1A4 800C29A4 3C01801D */  lui        $at, %hi(D_801D7E05)
/* 7D1A8 800C29A8 3C040200 */  lui        $a0, (0x2000300 >> 16)
/* 7D1AC 800C29AC A0207E05 */  sb         $zero, %lo(D_801D7E05)($at)
/* 7D1B0 800C29B0 34840300 */  ori        $a0, $a0, (0x2000300 & 0xFFFF)
/* 7D1B4 800C29B4 0C0314E3 */  jal        func_800C538C
/* 7D1B8 800C29B8 24050000 */   addiu     $a1, $zero, 0x0
/* 7D1BC 800C29BC 8FB80024 */  lw         $t8, 0x24($sp)
/* 7D1C0 800C29C0 3C040200 */  lui        $a0, (0x2000500 >> 16)
/* 7D1C4 800C29C4 3C053F49 */  lui        $a1, (0x3F499326 >> 16)
/* 7D1C8 800C29C8 17000009 */  bnez       $t8, .L800C29F0
/* 7D1CC 800C29CC 34840500 */   ori       $a0, $a0, (0x2000500 & 0xFFFF)
/* 7D1D0 800C29D0 3C040200 */  lui        $a0, (0x2000500 >> 16)
/* 7D1D4 800C29D4 34840500 */  ori        $a0, $a0, (0x2000500 & 0xFFFF)
/* 7D1D8 800C29D8 0C0314E3 */  jal        func_800C538C
/* 7D1DC 800C29DC 34A59326 */   ori       $a1, $a1, (0x3F499326 & 0xFFFF)
/* 7D1E0 800C29E0 24190008 */  addiu      $t9, $zero, 0x8
/* 7D1E4 800C29E4 3C01800E */  lui        $at, %hi(D_800E7CD8)
/* 7D1E8 800C29E8 10000003 */  b          .L800C29F8
/* 7D1EC 800C29EC AC397CD8 */   sw        $t9, %lo(D_800E7CD8)($at)
.L800C29F0:
/* 7D1F0 800C29F0 0C0314E3 */  jal        func_800C538C
/* 7D1F4 800C29F4 24050000 */   addiu     $a1, $zero, 0x0
.L800C29F8:
/* 7D1F8 800C29F8 0C0307AE */  jal        func_800C1EB8
/* 7D1FC 800C29FC 24040002 */   addiu     $a0, $zero, 0x2
/* 7D200 800C2A00 3C08800E */  lui        $t0, %hi(D_800E7C98)
/* 7D204 800C2A04 8D087C98 */  lw         $t0, %lo(D_800E7C98)($t0)
/* 7D208 800C2A08 8FA90024 */  lw         $t1, 0x24($sp)
/* 7D20C 800C2A0C 1100002C */  beqz       $t0, .L800C2AC0
/* 7D210 800C2A10 25240006 */   addiu     $a0, $t1, 0x6
/* 7D214 800C2A14 3C02801D */  lui        $v0, %hi(D_801D7DCC)
/* 7D218 800C2A18 24427DCC */  addiu      $v0, $v0, %lo(D_801D7DCC)
/* 7D21C 800C2A1C 0C030534 */  jal        func_800C14D0
/* 7D220 800C2A20 AC440000 */   sw        $a0, 0x0($v0)
/* 7D224 800C2A24 10000026 */  b          .L800C2AC0
/* 7D228 800C2A28 00000000 */   nop
.L800C2A2C:
/* 7D22C 800C2A2C 0C030522 */  jal        func_800C1488
/* 7D230 800C2A30 00000000 */   nop
/* 7D234 800C2A34 0C0304EB */  jal        func_800C13AC
/* 7D238 800C2A38 24040001 */   addiu     $a0, $zero, 0x1
/* 7D23C 800C2A3C 3C01800E */  lui        $at, %hi(D_800E7C90)
/* 7D240 800C2A40 A0207C90 */  sb         $zero, %lo(D_800E7C90)($at)
/* 7D244 800C2A44 3C01801D */  lui        $at, %hi(D_801D7E05)
/* 7D248 800C2A48 240B0004 */  addiu      $t3, $zero, 0x4
/* 7D24C 800C2A4C 3C040200 */  lui        $a0, (0x2000300 >> 16)
/* 7D250 800C2A50 A02B7E05 */  sb         $t3, %lo(D_801D7E05)($at)
/* 7D254 800C2A54 34840300 */  ori        $a0, $a0, (0x2000300 & 0xFFFF)
/* 7D258 800C2A58 0C0314E3 */  jal        func_800C538C
/* 7D25C 800C2A5C 24050000 */   addiu     $a1, $zero, 0x0
/* 7D260 800C2A60 8FAC0024 */  lw         $t4, 0x24($sp)
/* 7D264 800C2A64 3C040200 */  lui        $a0, (0x2000500 >> 16)
/* 7D268 800C2A68 3C053F49 */  lui        $a1, (0x3F499326 >> 16)
/* 7D26C 800C2A6C 15800007 */  bnez       $t4, .L800C2A8C
/* 7D270 800C2A70 34840500 */   ori       $a0, $a0, (0x2000500 & 0xFFFF)
/* 7D274 800C2A74 3C040200 */  lui        $a0, (0x2000500 >> 16)
/* 7D278 800C2A78 34840500 */  ori        $a0, $a0, (0x2000500 & 0xFFFF)
/* 7D27C 800C2A7C 0C0314E3 */  jal        func_800C538C
/* 7D280 800C2A80 34A59326 */   ori       $a1, $a1, (0x3F499326 & 0xFFFF)
/* 7D284 800C2A84 10000003 */  b          .L800C2A94
/* 7D288 800C2A88 00000000 */   nop
.L800C2A8C:
/* 7D28C 800C2A8C 0C0314E3 */  jal        func_800C538C
/* 7D290 800C2A90 24050000 */   addiu     $a1, $zero, 0x0
.L800C2A94:
/* 7D294 800C2A94 0C0307AE */  jal        func_800C1EB8
/* 7D298 800C2A98 24040002 */   addiu     $a0, $zero, 0x2
/* 7D29C 800C2A9C 3C0D800E */  lui        $t5, %hi(D_800E7C98)
/* 7D2A0 800C2AA0 8DAD7C98 */  lw         $t5, %lo(D_800E7C98)($t5)
/* 7D2A4 800C2AA4 8FAE0024 */  lw         $t6, 0x24($sp)
/* 7D2A8 800C2AA8 11A00005 */  beqz       $t5, .L800C2AC0
/* 7D2AC 800C2AAC 25C40006 */   addiu     $a0, $t6, 0x6
/* 7D2B0 800C2AB0 3C02801D */  lui        $v0, %hi(D_801D7DCC)
/* 7D2B4 800C2AB4 24427DCC */  addiu      $v0, $v0, %lo(D_801D7DCC)
/* 7D2B8 800C2AB8 0C030534 */  jal        func_800C14D0
/* 7D2BC 800C2ABC AC440000 */   sw        $a0, 0x0($v0)
.L800C2AC0:
/* 7D2C0 800C2AC0 0C030534 */  jal        func_800C14D0
/* 7D2C4 800C2AC4 2404001A */   addiu     $a0, $zero, 0x1A
/* 7D2C8 800C2AC8 100000F0 */  b          .L800C2E8C
/* 7D2CC 800C2ACC 00000000 */   nop
glabel L800C2AD0
/* 7D2D0 800C2AD0 241800FF */  addiu      $t8, $zero, 0xFF
/* 7D2D4 800C2AD4 3C01801D */  lui        $at, %hi(D_801D7E05)
/* 7D2D8 800C2AD8 A0387E05 */  sb         $t8, %lo(D_801D7E05)($at)
/* 7D2DC 800C2ADC 3C01801D */  lui        $at, %hi(D_801D7DD0)
/* 7D2E0 800C2AE0 AC267DD0 */  sw         $a2, %lo(D_801D7DD0)($at)
/* 7D2E4 800C2AE4 3C040200 */  lui        $a0, (0x2000000 >> 16)
/* 7D2E8 800C2AE8 0C0314E3 */  jal        func_800C538C
/* 7D2EC 800C2AEC 24050000 */   addiu     $a1, $zero, 0x0
/* 7D2F0 800C2AF0 3C040200 */  lui        $a0, (0x2000300 >> 16)
/* 7D2F4 800C2AF4 34840300 */  ori        $a0, $a0, (0x2000300 & 0xFFFF)
/* 7D2F8 800C2AF8 0C0314E3 */  jal        func_800C538C
/* 7D2FC 800C2AFC 24050000 */   addiu     $a1, $zero, 0x0
/* 7D300 800C2B00 3C040100 */  lui        $a0, (0x1000200 >> 16)
/* 7D304 800C2B04 34840200 */  ori        $a0, $a0, (0x1000200 & 0xFFFF)
/* 7D308 800C2B08 0C0314E3 */  jal        func_800C538C
/* 7D30C 800C2B0C 24050000 */   addiu     $a1, $zero, 0x0
/* 7D310 800C2B10 3C040100 */  lui        $a0, (0x1000500 >> 16)
/* 7D314 800C2B14 34840500 */  ori        $a0, $a0, (0x1000500 & 0xFFFF)
/* 7D318 800C2B18 0C0314E3 */  jal        func_800C538C
/* 7D31C 800C2B1C 24050000 */   addiu     $a1, $zero, 0x0
/* 7D320 800C2B20 3C040100 */  lui        $a0, (0x1000700 >> 16)
/* 7D324 800C2B24 34840700 */  ori        $a0, $a0, (0x1000700 & 0xFFFF)
/* 7D328 800C2B28 0C0314E3 */  jal        func_800C538C
/* 7D32C 800C2B2C 24050000 */   addiu     $a1, $zero, 0x0
/* 7D330 800C2B30 24040002 */  addiu      $a0, $zero, 0x2
/* 7D334 800C2B34 0C031491 */  jal        func_800C5244
/* 7D338 800C2B38 2405003C */   addiu     $a1, $zero, 0x3C
/* 7D33C 800C2B3C 3C02801D */  lui        $v0, %hi(D_801D7DC0)
/* 7D340 800C2B40 8C427DC0 */  lw         $v0, %lo(D_801D7DC0)($v0)
/* 7D344 800C2B44 8FB90024 */  lw         $t9, 0x24($sp)
/* 7D348 800C2B48 3C01801D */  lui        $at, %hi(D_801D7DCC)
/* 7D34C 800C2B4C 1040000C */  beqz       $v0, .L800C2B80
/* 7D350 800C2B50 2728FFFF */   addiu     $t0, $t9, -0x1
/* 7D354 800C2B54 24010001 */  addiu      $at, $zero, 0x1
/* 7D358 800C2B58 1041006B */  beq        $v0, $at, .L800C2D08
/* 7D35C 800C2B5C 240A0015 */   addiu     $t2, $zero, 0x15
/* 7D360 800C2B60 24010002 */  addiu      $at, $zero, 0x2
/* 7D364 800C2B64 10410045 */  beq        $v0, $at, .L800C2C7C
/* 7D368 800C2B68 8FA90024 */   lw        $t1, 0x24($sp)
/* 7D36C 800C2B6C 24010003 */  addiu      $at, $zero, 0x3
/* 7D370 800C2B70 50410043 */  beql       $v0, $at, .L800C2C80
/* 7D374 800C2B74 312A0001 */   andi      $t2, $t1, 0x1
/* 7D378 800C2B78 1000007E */  b          .L800C2D74
/* 7D37C 800C2B7C 8FB80024 */   lw        $t8, 0x24($sp)
.L800C2B80:
/* 7D380 800C2B80 2509000F */  addiu      $t1, $t0, 0xF
/* 7D384 800C2B84 AFA80024 */  sw         $t0, 0x24($sp)
/* 7D388 800C2B88 AC297DCC */  sw         $t1, %lo(D_801D7DCC)($at)
/* 7D38C 800C2B8C 2404000E */  addiu      $a0, $zero, 0xE
/* 7D390 800C2B90 2405007E */  addiu      $a1, $zero, 0x7E
/* 7D394 800C2B94 0C030CA8 */  jal        func_800C32A0
/* 7D398 800C2B98 24060014 */   addiu     $a2, $zero, 0x14
/* 7D39C 800C2B9C 2404000E */  addiu      $a0, $zero, 0xE
/* 7D3A0 800C2BA0 2405007E */  addiu      $a1, $zero, 0x7E
/* 7D3A4 800C2BA4 0C030CA8 */  jal        func_800C32A0
/* 7D3A8 800C2BA8 24060014 */   addiu     $a2, $zero, 0x14
/* 7D3AC 800C2BAC 8FAA0024 */  lw         $t2, 0x24($sp)
/* 7D3B0 800C2BB0 3C02801D */  lui        $v0, %hi(D_801D7DF8)
/* 7D3B4 800C2BB4 24427DF8 */  addiu      $v0, $v0, %lo(D_801D7DF8)
/* 7D3B8 800C2BB8 11400005 */  beqz       $t2, .L800C2BD0
/* 7D3BC 800C2BBC 24010004 */   addiu     $at, $zero, 0x4
/* 7D3C0 800C2BC0 11410012 */  beq        $t2, $at, .L800C2C0C
/* 7D3C4 800C2BC4 3C048004 */   lui       $a0, %hi(D_8004562C)
/* 7D3C8 800C2BC8 1000001F */  b          .L800C2C48
/* 7D3CC 800C2BCC 8FA40024 */   lw        $a0, 0x24($sp)
.L800C2BD0:
/* 7D3D0 800C2BD0 804B0001 */  lb         $t3, 0x1($v0)
/* 7D3D4 800C2BD4 2405007F */  addiu      $a1, $zero, 0x7F
/* 7D3D8 800C2BD8 24060014 */  addiu      $a2, $zero, 0x14
/* 7D3DC 800C2BDC 15600005 */  bnez       $t3, .L800C2BF4
/* 7D3E0 800C2BE0 2404000F */   addiu     $a0, $zero, 0xF
/* 7D3E4 800C2BE4 0C030CA8 */  jal        func_800C32A0
/* 7D3E8 800C2BE8 24040010 */   addiu     $a0, $zero, 0x10
/* 7D3EC 800C2BEC 10000004 */  b          .L800C2C00
/* 7D3F0 800C2BF0 240C001E */   addiu     $t4, $zero, 0x1E
.L800C2BF4:
/* 7D3F4 800C2BF4 0C030D49 */  jal        func_800C3524
/* 7D3F8 800C2BF8 24050028 */   addiu     $a1, $zero, 0x28
/* 7D3FC 800C2BFC 240C001E */  addiu      $t4, $zero, 0x1E
.L800C2C00:
/* 7D400 800C2C00 3C01800E */  lui        $at, %hi(D_800E7CDC)
/* 7D404 800C2C04 10000016 */  b          .L800C2C60
/* 7D408 800C2C08 AC2C7CDC */   sw        $t4, %lo(D_800E7CDC)($at)
.L800C2C0C:
/* 7D40C 800C2C0C 8C84562C */  lw         $a0, %lo(D_8004562C)($a0)
/* 7D410 800C2C10 2405007F */  addiu      $a1, $zero, 0x7F
/* 7D414 800C2C14 24060014 */  addiu      $a2, $zero, 0x14
/* 7D418 800C2C18 308D0001 */  andi       $t5, $a0, 0x1
/* 7D41C 800C2C1C 0C030CA8 */  jal        func_800C32A0
/* 7D420 800C2C20 25A40014 */   addiu     $a0, $t5, 0x14
/* 7D424 800C2C24 240E001B */  addiu      $t6, $zero, 0x1B
/* 7D428 800C2C28 3C01801D */  lui        $at, %hi(D_801D7DCC)
/* 7D42C 800C2C2C AC2E7DCC */  sw         $t6, %lo(D_801D7DCC)($at)
/* 7D430 800C2C30 3C01800E */  lui        $at, %hi(D_800E7CDC)
/* 7D434 800C2C34 240F001E */  addiu      $t7, $zero, 0x1E
/* 7D438 800C2C38 24180005 */  addiu      $t8, $zero, 0x5
/* 7D43C 800C2C3C AC2F7CDC */  sw         $t7, %lo(D_800E7CDC)($at)
/* 7D440 800C2C40 10000007 */  b          .L800C2C60
/* 7D444 800C2C44 AFB80024 */   sw        $t8, 0x24($sp)
.L800C2C48:
/* 7D448 800C2C48 24840010 */  addiu      $a0, $a0, 0x10
/* 7D44C 800C2C4C 0C030D49 */  jal        func_800C3524
/* 7D450 800C2C50 24050028 */   addiu     $a1, $zero, 0x28
/* 7D454 800C2C54 24190014 */  addiu      $t9, $zero, 0x14
/* 7D458 800C2C58 3C01800E */  lui        $at, %hi(D_800E7CDC)
/* 7D45C 800C2C5C AC397CDC */  sw         $t9, %lo(D_800E7CDC)($at)
.L800C2C60:
/* 7D460 800C2C60 24080008 */  addiu      $t0, $zero, 0x8
/* 7D464 800C2C64 3C01801D */  lui        $at, %hi(D_801D7E05)
/* 7D468 800C2C68 A0287E05 */  sb         $t0, %lo(D_801D7E05)($at)
/* 7D46C 800C2C6C 0C0307AE */  jal        func_800C1EB8
/* 7D470 800C2C70 2404000F */   addiu     $a0, $zero, 0xF
/* 7D474 800C2C74 1000003F */  b          .L800C2D74
/* 7D478 800C2C78 8FB80024 */   lw        $t8, 0x24($sp)
.L800C2C7C:
/* 7D47C 800C2C7C 312A0001 */  andi       $t2, $t1, 0x1
.L800C2C80:
/* 7D480 800C2C80 15400012 */  bnez       $t2, .L800C2CCC
/* 7D484 800C2C84 240F0011 */   addiu     $t7, $zero, 0x11
/* 7D488 800C2C88 240B0014 */  addiu      $t3, $zero, 0x14
/* 7D48C 800C2C8C 3C01801D */  lui        $at, %hi(D_801D7DCC)
/* 7D490 800C2C90 AC2B7DCC */  sw         $t3, %lo(D_801D7DCC)($at)
/* 7D494 800C2C94 0C030D40 */  jal        func_800C3500
/* 7D498 800C2C98 24040016 */   addiu     $a0, $zero, 0x16
/* 7D49C 800C2C9C 3C0C801D */  lui        $t4, %hi(D_801D7DC0)
/* 7D4A0 800C2CA0 8D8C7DC0 */  lw         $t4, %lo(D_801D7DC0)($t4)
/* 7D4A4 800C2CA4 24010003 */  addiu      $at, $zero, 0x3
/* 7D4A8 800C2CA8 240D000F */  addiu      $t5, $zero, 0xF
/* 7D4AC 800C2CAC 15810004 */  bne        $t4, $at, .L800C2CC0
/* 7D4B0 800C2CB0 240E0002 */   addiu     $t6, $zero, 0x2
/* 7D4B4 800C2CB4 3C01800E */  lui        $at, %hi(D_800E7CDC)
/* 7D4B8 800C2CB8 1000000B */  b          .L800C2CE8
/* 7D4BC 800C2CBC AC2D7CDC */   sw        $t5, %lo(D_800E7CDC)($at)
.L800C2CC0:
/* 7D4C0 800C2CC0 3C01800E */  lui        $at, %hi(D_800E7CDC)
/* 7D4C4 800C2CC4 10000008 */  b          .L800C2CE8
/* 7D4C8 800C2CC8 AC2E7CDC */   sw        $t6, %lo(D_800E7CDC)($at)
.L800C2CCC:
/* 7D4CC 800C2CCC 3C01801D */  lui        $at, %hi(D_801D7DCC)
/* 7D4D0 800C2CD0 AC2F7DCC */  sw         $t7, %lo(D_801D7DCC)($at)
/* 7D4D4 800C2CD4 0C030D40 */  jal        func_800C3500
/* 7D4D8 800C2CD8 24040014 */   addiu     $a0, $zero, 0x14
/* 7D4DC 800C2CDC 2418001E */  addiu      $t8, $zero, 0x1E
/* 7D4E0 800C2CE0 3C01800E */  lui        $at, %hi(D_800E7CDC)
/* 7D4E4 800C2CE4 AC387CDC */  sw         $t8, %lo(D_800E7CDC)($at)
.L800C2CE8:
/* 7D4E8 800C2CE8 8FB90024 */  lw         $t9, 0x24($sp)
/* 7D4EC 800C2CEC 24010080 */  addiu      $at, $zero, 0x80
/* 7D4F0 800C2CF0 240900A0 */  addiu      $t1, $zero, 0xA0
/* 7D4F4 800C2CF4 33280080 */  andi       $t0, $t9, 0x80
/* 7D4F8 800C2CF8 1501001D */  bne        $t0, $at, .L800C2D70
/* 7D4FC 800C2CFC 3C01800E */   lui       $at, %hi(D_800E7CB0)
/* 7D500 800C2D00 1000001B */  b          .L800C2D70
/* 7D504 800C2D04 AC297CB0 */   sw        $t1, %lo(D_800E7CB0)($at)
.L800C2D08:
/* 7D508 800C2D08 3C02801D */  lui        $v0, %hi(D_801D7DF8)
/* 7D50C 800C2D0C 3C01801D */  lui        $at, %hi(D_801D7DCC)
/* 7D510 800C2D10 24427DF8 */  addiu      $v0, $v0, %lo(D_801D7DF8)
/* 7D514 800C2D14 AC2A7DCC */  sw         $t2, %lo(D_801D7DCC)($at)
/* 7D518 800C2D18 804B0002 */  lb         $t3, 0x2($v0)
/* 7D51C 800C2D1C 15600003 */  bnez       $t3, .L800C2D2C
/* 7D520 800C2D20 00000000 */   nop
/* 7D524 800C2D24 804C0001 */  lb         $t4, 0x1($v0)
/* 7D528 800C2D28 11800008 */  beqz       $t4, .L800C2D4C
.L800C2D2C:
/* 7D52C 800C2D2C 3C02801D */   lui       $v0, %hi(D_801D7E00)
/* 7D530 800C2D30 24427E00 */  addiu      $v0, $v0, %lo(D_801D7E00)
/* 7D534 800C2D34 804D0002 */  lb         $t5, 0x2($v0)
/* 7D538 800C2D38 15A00008 */  bnez       $t5, .L800C2D5C
/* 7D53C 800C2D3C 00000000 */   nop
/* 7D540 800C2D40 804E0001 */  lb         $t6, 0x1($v0)
/* 7D544 800C2D44 15C00005 */  bnez       $t6, .L800C2D5C
/* 7D548 800C2D48 00000000 */   nop
.L800C2D4C:
/* 7D54C 800C2D4C 0C030D40 */  jal        func_800C3500
/* 7D550 800C2D50 24040010 */   addiu     $a0, $zero, 0x10
/* 7D554 800C2D54 10000004 */  b          .L800C2D68
/* 7D558 800C2D58 240F000A */   addiu     $t7, $zero, 0xA
.L800C2D5C:
/* 7D55C 800C2D5C 0C030D40 */  jal        func_800C3500
/* 7D560 800C2D60 2404000E */   addiu     $a0, $zero, 0xE
/* 7D564 800C2D64 240F000A */  addiu      $t7, $zero, 0xA
.L800C2D68:
/* 7D568 800C2D68 3C01800E */  lui        $at, %hi(D_800E7CDC)
/* 7D56C 800C2D6C AC2F7CDC */  sw         $t7, %lo(D_800E7CDC)($at)
.L800C2D70:
/* 7D570 800C2D70 8FB80024 */  lw         $t8, 0x24($sp)
.L800C2D74:
/* 7D574 800C2D74 3C01801D */  lui        $at, %hi(D_801D7DC8)
/* 7D578 800C2D78 3C04801D */  lui        $a0, %hi(D_801D7DCC)
/* 7D57C 800C2D7C 8C847DCC */  lw         $a0, %lo(D_801D7DCC)($a0)
/* 7D580 800C2D80 0C030534 */  jal        func_800C14D0
/* 7D584 800C2D84 AC387DC8 */   sw        $t8, %lo(D_801D7DC8)($at)
/* 7D588 800C2D88 10000040 */  b          .L800C2E8C
/* 7D58C 800C2D8C 00000000 */   nop
glabel L800C2D90
/* 7D590 800C2D90 3C044601 */  lui        $a0, (0x46010000 >> 16)
/* 7D594 800C2D94 0C0314F5 */  jal        func_800C53D4
/* 7D598 800C2D98 24050012 */   addiu     $a1, $zero, 0x12
/* 7D59C 800C2D9C 0C0304EB */  jal        func_800C13AC
/* 7D5A0 800C2DA0 00002025 */   or        $a0, $zero, $zero
/* 7D5A4 800C2DA4 10000039 */  b          .L800C2E8C
/* 7D5A8 800C2DA8 00000000 */   nop
glabel L800C2DAC
/* 7D5AC 800C2DAC 0C0305A6 */  jal        func_800C1698
/* 7D5B0 800C2DB0 00000000 */   nop
/* 7D5B4 800C2DB4 0C0305C5 */  jal        func_800C1714
/* 7D5B8 800C2DB8 2404000A */   addiu     $a0, $zero, 0xA
/* 7D5BC 800C2DBC 3C02801D */  lui        $v0, %hi(D_801CB338)
/* 7D5C0 800C2DC0 8C42B338 */  lw         $v0, %lo(D_801CB338)($v0)
/* 7D5C4 800C2DC4 24010001 */  addiu      $at, $zero, 0x1
/* 7D5C8 800C2DC8 8FB90024 */  lw         $t9, 0x24($sp)
/* 7D5CC 800C2DCC 50400008 */  beql       $v0, $zero, .L800C2DF0
/* 7D5D0 800C2DD0 24010004 */   addiu     $at, $zero, 0x4
/* 7D5D4 800C2DD4 10410005 */  beq        $v0, $at, .L800C2DEC
/* 7D5D8 800C2DD8 24010002 */   addiu     $at, $zero, 0x2
/* 7D5DC 800C2DDC 1041000D */  beq        $v0, $at, .L800C2E14
/* 7D5E0 800C2DE0 00000000 */   nop
/* 7D5E4 800C2DE4 1000000D */  b          .L800C2E1C
/* 7D5E8 800C2DE8 00000000 */   nop
.L800C2DEC:
/* 7D5EC 800C2DEC 24010004 */  addiu      $at, $zero, 0x4
.L800C2DF0:
/* 7D5F0 800C2DF0 17210005 */  bne        $t9, $at, .L800C2E08
/* 7D5F4 800C2DF4 24090001 */   addiu     $t1, $zero, 0x1
/* 7D5F8 800C2DF8 24080002 */  addiu      $t0, $zero, 0x2
/* 7D5FC 800C2DFC 3C01801D */  lui        $at, %hi(D_801D7DD4)
/* 7D600 800C2E00 10000006 */  b          .L800C2E1C
/* 7D604 800C2E04 AC287DD4 */   sw        $t0, %lo(D_801D7DD4)($at)
.L800C2E08:
/* 7D608 800C2E08 3C01801D */  lui        $at, %hi(D_801D7DD4)
/* 7D60C 800C2E0C 10000003 */  b          .L800C2E1C
/* 7D610 800C2E10 AC297DD4 */   sw        $t1, %lo(D_801D7DD4)($at)
.L800C2E14:
/* 7D614 800C2E14 3C01801D */  lui        $at, %hi(D_801D7DD4)
/* 7D618 800C2E18 AC207DD4 */  sw         $zero, %lo(D_801D7DD4)($at)
.L800C2E1C:
/* 7D61C 800C2E1C 0C030507 */  jal        func_800C141C
/* 7D620 800C2E20 00000000 */   nop
/* 7D624 800C2E24 3C01801D */  lui        $at, %hi(D_801D7E18)
/* 7D628 800C2E28 8FAA0024 */  lw         $t2, 0x24($sp)
/* 7D62C 800C2E2C AC207E18 */  sw         $zero, %lo(D_801D7E18)($at)
/* 7D630 800C2E30 3C01801D */  lui        $at, %hi(D_801D7E14)
/* 7D634 800C2E34 AC207E14 */  sw         $zero, %lo(D_801D7E14)($at)
/* 7D638 800C2E38 3C01801D */  lui        $at, %hi(D_801D7DC8)
/* 7D63C 800C2E3C 254BFFFF */  addiu      $t3, $t2, -0x1
/* 7D640 800C2E40 AC2B7DC8 */  sw         $t3, %lo(D_801D7DC8)($at)
/* 7D644 800C2E44 0C030534 */  jal        func_800C14D0
/* 7D648 800C2E48 2404001C */   addiu     $a0, $zero, 0x1C
/* 7D64C 800C2E4C 1000000F */  b          .L800C2E8C
/* 7D650 800C2E50 00000000 */   nop
glabel L800C2E54
/* 7D654 800C2E54 24010005 */  addiu      $at, $zero, 0x5
/* 7D658 800C2E58 1461000C */  bne        $v1, $at, .L800C2E8C
/* 7D65C 800C2E5C 00000000 */   nop
/* 7D660 800C2E60 0C0305A6 */  jal        func_800C1698
/* 7D664 800C2E64 00000000 */   nop
/* 7D668 800C2E68 0C0304EB */  jal        func_800C13AC
/* 7D66C 800C2E6C 00002025 */   or        $a0, $zero, $zero
/* 7D670 800C2E70 24040016 */  addiu      $a0, $zero, 0x16
/* 7D674 800C2E74 0C030540 */  jal        func_800C1500
/* 7D678 800C2E78 24050028 */   addiu     $a1, $zero, 0x28
/* 7D67C 800C2E7C 10000003 */  b          .L800C2E8C
/* 7D680 800C2E80 00000000 */   nop
.L800C2E84:
/* 7D684 800C2E84 0C0305A6 */  jal        func_800C1698
/* 7D688 800C2E88 00000000 */   nop
.L800C2E8C:
/* 7D68C 800C2E8C 3C02800E */  lui        $v0, %hi(D_800E7C94)
/* 7D690 800C2E90 80427C94 */  lb         $v0, %lo(D_800E7C94)($v0)
/* 7D694 800C2E94 24010007 */  addiu      $at, $zero, 0x7
/* 7D698 800C2E98 3C040600 */  lui        $a0, (0x6000C05 >> 16)
/* 7D69C 800C2E9C 10410008 */  beq        $v0, $at, .L800C2EC0
/* 7D6A0 800C2EA0 34840C05 */   ori       $a0, $a0, (0x6000C05 & 0xFFFF)
/* 7D6A4 800C2EA4 24010006 */  addiu      $at, $zero, 0x6
/* 7D6A8 800C2EA8 10410005 */  beq        $v0, $at, .L800C2EC0
/* 7D6AC 800C2EAC 2401000B */   addiu     $at, $zero, 0xB
/* 7D6B0 800C2EB0 10410003 */  beq        $v0, $at, .L800C2EC0
/* 7D6B4 800C2EB4 00000000 */   nop
/* 7D6B8 800C2EB8 14400005 */  bnez       $v0, .L800C2ED0
/* 7D6BC 800C2EBC 24050001 */   addiu     $a1, $zero, 0x1
.L800C2EC0:
/* 7D6C0 800C2EC0 0C0314F5 */  jal        func_800C53D4
/* 7D6C4 800C2EC4 00002825 */   or        $a1, $zero, $zero
/* 7D6C8 800C2EC8 10000005 */  b          .L800C2EE0
/* 7D6CC 800C2ECC 8FBF0014 */   lw        $ra, 0x14($sp)
.L800C2ED0:
/* 7D6D0 800C2ED0 3C040600 */  lui        $a0, (0x6000C05 >> 16)
/* 7D6D4 800C2ED4 0C0314F5 */  jal        func_800C53D4
/* 7D6D8 800C2ED8 34840C05 */   ori       $a0, $a0, (0x6000C05 & 0xFFFF)
.L800C2EDC:
/* 7D6DC 800C2EDC 8FBF0014 */  lw         $ra, 0x14($sp)
.L800C2EE0:
/* 7D6E0 800C2EE0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7D6E4 800C2EE4 03E00008 */  jr         $ra
/* 7D6E8 800C2EE8 00000000 */   nop

glabel func_800C2EEC
/* 7D6EC 800C2EEC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7D6F0 800C2EF0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7D6F4 800C2EF4 0C030522 */  jal        func_800C1488
/* 7D6F8 800C2EF8 00000000 */   nop
/* 7D6FC 800C2EFC 3C048200 */  lui        $a0, (0x82000100 >> 16)
/* 7D700 800C2F00 34840100 */  ori        $a0, $a0, (0x82000100 & 0xFFFF)
/* 7D704 800C2F04 0C0314EC */  jal        func_800C53B0
/* 7D708 800C2F08 00002825 */   or        $a1, $zero, $zero
/* 7D70C 800C2F0C 0C031501 */  jal        func_800C5404
/* 7D710 800C2F10 00000000 */   nop
/* 7D714 800C2F14 3C04800F */  lui        $a0, %hi(D_800E85F8)
/* 7D718 800C2F18 8C8485F8 */  lw         $a0, %lo(D_800E85F8)($a0)
/* 7D71C 800C2F1C 27A5001C */  addiu      $a1, $sp, 0x1C
/* 7D720 800C2F20 0C031718 */  jal        func_800C5C60
/* 7D724 800C2F24 24060001 */   addiu     $a2, $zero, 0x1
/* 7D728 800C2F28 3C04800F */  lui        $a0, %hi(D_800E85F8)
/* 7D72C 800C2F2C 8C8485F8 */  lw         $a0, %lo(D_800E85F8)($a0)
/* 7D730 800C2F30 27A5001C */  addiu      $a1, $sp, 0x1C
/* 7D734 800C2F34 0C031718 */  jal        func_800C5C60
/* 7D738 800C2F38 24060001 */   addiu     $a2, $zero, 0x1
/* 7D73C 800C2F3C 3C04800F */  lui        $a0, %hi(D_800E85F8)
/* 7D740 800C2F40 8C8485F8 */  lw         $a0, %lo(D_800E85F8)($a0)
/* 7D744 800C2F44 27A5001C */  addiu      $a1, $sp, 0x1C
/* 7D748 800C2F48 0C031718 */  jal        func_800C5C60
/* 7D74C 800C2F4C 24060001 */   addiu     $a2, $zero, 0x1
/* 7D750 800C2F50 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7D754 800C2F54 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7D758 800C2F58 03E00008 */  jr         $ra
/* 7D75C 800C2F5C 00000000 */   nop

glabel func_800C2F60
/* 7D760 800C2F60 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7D764 800C2F64 AFA40018 */  sw         $a0, 0x18($sp)
/* 7D768 800C2F68 00052E00 */  sll        $a1, $a1, 24
/* 7D76C 800C2F6C AFBF0014 */  sw         $ra, 0x14($sp)
/* 7D770 800C2F70 00057603 */  sra        $t6, $a1, 24
/* 7D774 800C2F74 3C040600 */  lui        $a0, (0x6000002 >> 16)
/* 7D778 800C2F78 AFA60020 */  sw         $a2, 0x20($sp)
/* 7D77C 800C2F7C 34840002 */  ori        $a0, $a0, (0x6000002 & 0xFFFF)
/* 7D780 800C2F80 0C0314F5 */  jal        func_800C53D4
/* 7D784 800C2F84 01C02825 */   or        $a1, $t6, $zero
/* 7D788 800C2F88 3C040600 */  lui        $a0, (0x6000001 >> 16)
/* 7D78C 800C2F8C 34840001 */  ori        $a0, $a0, (0x6000001 & 0xFFFF)
/* 7D790 800C2F90 0C0314F5 */  jal        func_800C53D4
/* 7D794 800C2F94 83A5001B */   lb        $a1, 0x1B($sp)
/* 7D798 800C2F98 3C040600 */  lui        $a0, (0x6000000 >> 16)
/* 7D79C 800C2F9C 0C0314F5 */  jal        func_800C53D4
/* 7D7A0 800C2FA0 83A50023 */   lb        $a1, 0x23($sp)
/* 7D7A4 800C2FA4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7D7A8 800C2FA8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7D7AC 800C2FAC 03E00008 */  jr         $ra
/* 7D7B0 800C2FB0 00000000 */   nop

glabel func_800C2FB4
/* 7D7B4 800C2FB4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7D7B8 800C2FB8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7D7BC 800C2FBC 3C040600 */  lui        $a0, (0x6000004 >> 16)
/* 7D7C0 800C2FC0 34840004 */  ori        $a0, $a0, (0x6000004 & 0xFFFF)
/* 7D7C4 800C2FC4 0C0314F5 */  jal        func_800C53D4
/* 7D7C8 800C2FC8 2405FFFF */   addiu     $a1, $zero, -0x1
/* 7D7CC 800C2FCC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7D7D0 800C2FD0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7D7D4 800C2FD4 03E00008 */  jr         $ra
/* 7D7D8 800C2FD8 00000000 */   nop

glabel func_800C2FDC
/* 7D7DC 800C2FDC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7D7E0 800C2FE0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7D7E4 800C2FE4 AFA40018 */  sw         $a0, 0x18($sp)
/* 7D7E8 800C2FE8 8FA50018 */  lw         $a1, 0x18($sp)
/* 7D7EC 800C2FEC 0C0314EC */  jal        func_800C53B0
/* 7D7F0 800C2FF0 3C04F000 */   lui       $a0, (0xF0000000 >> 16)
/* 7D7F4 800C2FF4 8FA40018 */  lw         $a0, 0x18($sp)
/* 7D7F8 800C2FF8 0C030DDF */  jal        func_800C377C
/* 7D7FC 800C2FFC 2484001A */   addiu     $a0, $a0, 0x1A
/* 7D800 800C3000 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7D804 800C3004 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7D808 800C3008 03E00008 */  jr         $ra
/* 7D80C 800C300C 00000000 */   nop

glabel func_800C3010
/* 7D810 800C3010 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7D814 800C3014 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7D818 800C3018 00802825 */  or         $a1, $a0, $zero
/* 7D81C 800C301C 0C0314EC */  jal        func_800C53B0
/* 7D820 800C3020 3C04F000 */   lui       $a0, (0xF0000000 >> 16)
/* 7D824 800C3024 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7D828 800C3028 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7D82C 800C302C 03E00008 */  jr         $ra
/* 7D830 800C3030 00000000 */   nop

glabel func_800C3034
/* 7D834 800C3034 240E0001 */  addiu      $t6, $zero, 0x1
/* 7D838 800C3038 3C01800E */  lui        $at, %hi(D_800E7C98)
/* 7D83C 800C303C 03E00008 */  jr         $ra
/* 7D840 800C3040 AC2E7C98 */   sw        $t6, %lo(D_800E7C98)($at)

glabel func_800C3044
/* 7D844 800C3044 3C01800E */  lui        $at, %hi(D_800E7C98)
/* 7D848 800C3048 03E00008 */  jr         $ra
/* 7D84C 800C304C AC207C98 */   sw        $zero, %lo(D_800E7C98)($at)

glabel func_800C3050
/* 7D850 800C3050 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7D854 800C3054 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7D858 800C3058 1880000C */  blez       $a0, .L800C308C
/* 7D85C 800C305C AFA40018 */   sw        $a0, 0x18($sp)
/* 7D860 800C3060 0C030594 */  jal        func_800C1650
/* 7D864 800C3064 24040040 */   addiu     $a0, $zero, 0x40
/* 7D868 800C3068 0C03059D */  jal        func_800C1674
/* 7D86C 800C306C 24040040 */   addiu     $a0, $zero, 0x40
/* 7D870 800C3070 8FA40018 */  lw         $a0, 0x18($sp)
/* 7D874 800C3074 24050040 */  addiu      $a1, $zero, 0x40
/* 7D878 800C3078 00003025 */  or         $a2, $zero, $zero
/* 7D87C 800C307C 0C030550 */  jal        func_800C1540
/* 7D880 800C3080 24840002 */   addiu     $a0, $a0, 0x2
/* 7D884 800C3084 10000007 */  b          .L800C30A4
/* 7D888 800C3088 8FB80018 */   lw        $t8, 0x18($sp)
.L800C308C:
/* 7D88C 800C308C 8FAF0018 */  lw         $t7, 0x18($sp)
/* 7D890 800C3090 55E00004 */  bnel       $t7, $zero, .L800C30A4
/* 7D894 800C3094 8FB80018 */   lw        $t8, 0x18($sp)
/* 7D898 800C3098 0C03059D */  jal        func_800C1674
/* 7D89C 800C309C 24040100 */   addiu     $a0, $zero, 0x100
/* 7D8A0 800C30A0 8FB80018 */  lw         $t8, 0x18($sp)
.L800C30A4:
/* 7D8A4 800C30A4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7D8A8 800C30A8 3C01801D */  lui        $at, %hi(D_801D7DCC)
/* 7D8AC 800C30AC 27190002 */  addiu      $t9, $t8, 0x2
/* 7D8B0 800C30B0 AC397DCC */  sw         $t9, %lo(D_801D7DCC)($at)
/* 7D8B4 800C30B4 03E00008 */  jr         $ra
/* 7D8B8 800C30B8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800C30BC
/* 7D8BC 800C30BC 3C0E800E */  lui        $t6, %hi(D_800E7C94)
/* 7D8C0 800C30C0 81CE7C94 */  lb         $t6, %lo(D_800E7C94)($t6)
/* 7D8C4 800C30C4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7D8C8 800C30C8 24010004 */  addiu      $at, $zero, 0x4
/* 7D8CC 800C30CC 15C10006 */  bne        $t6, $at, .L800C30E8
/* 7D8D0 800C30D0 AFBF0014 */   sw        $ra, 0x14($sp)
/* 7D8D4 800C30D4 0C030594 */  jal        func_800C1650
/* 7D8D8 800C30D8 00002025 */   or        $a0, $zero, $zero
/* 7D8DC 800C30DC 24040013 */  addiu      $a0, $zero, 0x13
/* 7D8E0 800C30E0 0C030572 */  jal        func_800C15C8
/* 7D8E4 800C30E4 00002825 */   or        $a1, $zero, $zero
.L800C30E8:
/* 7D8E8 800C30E8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7D8EC 800C30EC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7D8F0 800C30F0 03E00008 */  jr         $ra
/* 7D8F4 800C30F4 00000000 */   nop

glabel func_800C30F8
/* 7D8F8 800C30F8 3C0E800E */  lui        $t6, %hi(D_800E7C94)
/* 7D8FC 800C30FC 81CE7C94 */  lb         $t6, %lo(D_800E7C94)($t6)
/* 7D900 800C3100 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7D904 800C3104 24010004 */  addiu      $at, $zero, 0x4
/* 7D908 800C3108 15C10004 */  bne        $t6, $at, .L800C311C
/* 7D90C 800C310C AFBF0014 */   sw        $ra, 0x14($sp)
/* 7D910 800C3110 24040016 */  addiu      $a0, $zero, 0x16
/* 7D914 800C3114 0C030540 */  jal        func_800C1500
/* 7D918 800C3118 24050028 */   addiu     $a1, $zero, 0x28
.L800C311C:
/* 7D91C 800C311C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7D920 800C3120 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7D924 800C3124 03E00008 */  jr         $ra
/* 7D928 800C3128 00000000 */   nop

glabel func_800C312C
/* 7D92C 800C312C 3C0E801D */  lui        $t6, %hi(D_801D7DEC)
/* 7D930 800C3130 95CE7DEC */  lhu        $t6, %lo(D_801D7DEC)($t6)
/* 7D934 800C3134 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7D938 800C3138 24010001 */  addiu      $at, $zero, 0x1
/* 7D93C 800C313C 15C10007 */  bne        $t6, $at, .L800C315C
/* 7D940 800C3140 AFBF0014 */   sw        $ra, 0x14($sp)
/* 7D944 800C3144 3C040500 */  lui        $a0, (0x5000A00 >> 16)
/* 7D948 800C3148 34840A00 */  ori        $a0, $a0, (0x5000A00 & 0xFFFF)
/* 7D94C 800C314C 0C0314F5 */  jal        func_800C53D4
/* 7D950 800C3150 24050066 */   addiu     $a1, $zero, 0x66
/* 7D954 800C3154 10000006 */  b          .L800C3170
/* 7D958 800C3158 8FBF0014 */   lw        $ra, 0x14($sp)
.L800C315C:
/* 7D95C 800C315C 3C040500 */  lui        $a0, (0x5000A00 >> 16)
/* 7D960 800C3160 34840A00 */  ori        $a0, $a0, (0x5000A00 & 0xFFFF)
/* 7D964 800C3164 0C0314F5 */  jal        func_800C53D4
/* 7D968 800C3168 24050020 */   addiu     $a1, $zero, 0x20
/* 7D96C 800C316C 8FBF0014 */  lw         $ra, 0x14($sp)
.L800C3170:
/* 7D970 800C3170 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7D974 800C3174 03E00008 */  jr         $ra
/* 7D978 800C3178 00000000 */   nop

glabel func_800C317C
/* 7D97C 800C317C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7D980 800C3180 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7D984 800C3184 10800006 */  beqz       $a0, .L800C31A0
/* 7D988 800C3188 AFA50024 */   sw        $a1, 0x24($sp)
/* 7D98C 800C318C 24020001 */  addiu      $v0, $zero, 0x1
/* 7D990 800C3190 10820017 */  beq        $a0, $v0, .L800C31F0
/* 7D994 800C3194 3C18801D */   lui       $t8, %hi(D_801D7DEE)
/* 7D998 800C3198 10000026 */  b          .L800C3234
/* 7D99C 800C319C 8FBF0014 */   lw        $ra, 0x14($sp)
.L800C31A0:
/* 7D9A0 800C31A0 3C0E801D */  lui        $t6, %hi(D_801D7DC0)
/* 7D9A4 800C31A4 8DCE7DC0 */  lw         $t6, %lo(D_801D7DC0)($t6)
/* 7D9A8 800C31A8 24020001 */  addiu      $v0, $zero, 0x1
/* 7D9AC 800C31AC 544E0004 */  bnel       $v0, $t6, .L800C31C0
/* 7D9B0 800C31B0 00001025 */   or        $v0, $zero, $zero
/* 7D9B4 800C31B4 10000002 */  b          .L800C31C0
/* 7D9B8 800C31B8 24020001 */   addiu     $v0, $zero, 0x1
/* 7D9BC 800C31BC 00001025 */  or         $v0, $zero, $zero
.L800C31C0:
/* 7D9C0 800C31C0 0C030C4B */  jal        func_800C312C
/* 7D9C4 800C31C4 AFA2001C */   sw        $v0, 0x1C($sp)
/* 7D9C8 800C31C8 8FA2001C */  lw         $v0, 0x1C($sp)
/* 7D9CC 800C31CC 3C010600 */  lui        $at, (0x6000A00 >> 16)
/* 7D9D0 800C31D0 34210A00 */  ori        $at, $at, (0x6000A00 & 0xFFFF)
/* 7D9D4 800C31D4 304400FF */  andi       $a0, $v0, 0xFF
/* 7D9D8 800C31D8 00817825 */  or         $t7, $a0, $at
/* 7D9DC 800C31DC 01E02025 */  or         $a0, $t7, $zero
/* 7D9E0 800C31E0 0C0314F5 */  jal        func_800C53D4
/* 7D9E4 800C31E4 83A50027 */   lb        $a1, 0x27($sp)
/* 7D9E8 800C31E8 10000012 */  b          .L800C3234
/* 7D9EC 800C31EC 8FBF0014 */   lw        $ra, 0x14($sp)
.L800C31F0:
/* 7D9F0 800C31F0 97187DEE */  lhu        $t8, %lo(D_801D7DEE)($t8)
/* 7D9F4 800C31F4 3C040500 */  lui        $a0, (0x5000A00 >> 16)
/* 7D9F8 800C31F8 24050066 */  addiu      $a1, $zero, 0x66
/* 7D9FC 800C31FC 14580006 */  bne        $v0, $t8, .L800C3218
/* 7DA00 800C3200 34840A00 */   ori       $a0, $a0, (0x5000A00 & 0xFFFF)
/* 7DA04 800C3204 3C040500 */  lui        $a0, (0x5000A00 >> 16)
/* 7DA08 800C3208 0C0314F5 */  jal        func_800C53D4
/* 7DA0C 800C320C 34840A00 */   ori       $a0, $a0, (0x5000A00 & 0xFFFF)
/* 7DA10 800C3210 10000004 */  b          .L800C3224
/* 7DA14 800C3214 3C040600 */   lui       $a0, (0x6000A02 >> 16)
.L800C3218:
/* 7DA18 800C3218 0C0314F5 */  jal        func_800C53D4
/* 7DA1C 800C321C 24050020 */   addiu     $a1, $zero, 0x20
/* 7DA20 800C3220 3C040600 */  lui        $a0, (0x6000A02 >> 16)
.L800C3224:
/* 7DA24 800C3224 34840A02 */  ori        $a0, $a0, (0x6000A02 & 0xFFFF)
/* 7DA28 800C3228 0C0314F5 */  jal        func_800C53D4
/* 7DA2C 800C322C 83A50027 */   lb        $a1, 0x27($sp)
/* 7DA30 800C3230 8FBF0014 */  lw         $ra, 0x14($sp)
.L800C3234:
/* 7DA34 800C3234 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7DA38 800C3238 03E00008 */  jr         $ra
/* 7DA3C 800C323C 00000000 */   nop

glabel func_800C3240
/* 7DA40 800C3240 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7DA44 800C3244 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7DA48 800C3248 0C030C4B */  jal        func_800C312C
/* 7DA4C 800C324C AFA40018 */   sw        $a0, 0x18($sp)
/* 7DA50 800C3250 3C040600 */  lui        $a0, (0x6000A01 >> 16)
/* 7DA54 800C3254 34840A01 */  ori        $a0, $a0, (0x6000A01 & 0xFFFF)
/* 7DA58 800C3258 0C0314F5 */  jal        func_800C53D4
/* 7DA5C 800C325C 83A5001B */   lb        $a1, 0x1B($sp)
/* 7DA60 800C3260 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7DA64 800C3264 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7DA68 800C3268 03E00008 */  jr         $ra
/* 7DA6C 800C326C 00000000 */   nop

glabel func_800C3270
/* 7DA70 800C3270 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7DA74 800C3274 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7DA78 800C3278 0C030C4B */  jal        func_800C312C
/* 7DA7C 800C327C AFA40018 */   sw        $a0, 0x18($sp)
/* 7DA80 800C3280 3C040600 */  lui        $a0, (0x6000A02 >> 16)
/* 7DA84 800C3284 34840A02 */  ori        $a0, $a0, (0x6000A02 & 0xFFFF)
/* 7DA88 800C3288 0C0314F5 */  jal        func_800C53D4
/* 7DA8C 800C328C 83A5001B */   lb        $a1, 0x1B($sp)
/* 7DA90 800C3290 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7DA94 800C3294 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7DA98 800C3298 03E00008 */  jr         $ra
/* 7DA9C 800C329C 00000000 */   nop

glabel func_800C32A0
/* 7DAA0 800C32A0 3C03801D */  lui        $v1, %hi(D_801D7DF0)
/* 7DAA4 800C32A4 24637DF0 */  addiu      $v1, $v1, %lo(D_801D7DF0)
/* 7DAA8 800C32A8 90670002 */  lbu        $a3, 0x2($v1)
/* 7DAAC 800C32AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7DAB0 800C32B0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7DAB4 800C32B4 AFA40018 */  sw         $a0, 0x18($sp)
/* 7DAB8 800C32B8 AFA5001C */  sw         $a1, 0x1C($sp)
/* 7DABC 800C32BC 10E00007 */  beqz       $a3, .L800C32DC
/* 7DAC0 800C32C0 AFA60020 */   sw        $a2, 0x20($sp)
/* 7DAC4 800C32C4 906F0001 */  lbu        $t7, 0x1($v1)
/* 7DAC8 800C32C8 00AF082A */  slt        $at, $a1, $t7
/* 7DACC 800C32CC 50200004 */  beql       $at, $zero, .L800C32E0
/* 7DAD0 800C32D0 3C040600 */   lui       $a0, (0x6000C00 >> 16)
/* 7DAD4 800C32D4 1000000E */  b          .L800C3310
/* 7DAD8 800C32D8 00E01025 */   or        $v0, $a3, $zero
.L800C32DC:
/* 7DADC 800C32DC 3C040600 */  lui        $a0, (0x6000C00 >> 16)
.L800C32E0:
/* 7DAE0 800C32E0 34840C00 */  ori        $a0, $a0, (0x6000C00 & 0xFFFF)
/* 7DAE4 800C32E4 0C0314F5 */  jal        func_800C53D4
/* 7DAE8 800C32E8 83A5001B */   lb        $a1, 0x1B($sp)
/* 7DAEC 800C32EC 3C03801D */  lui        $v1, %hi(D_801D7DF0)
/* 7DAF0 800C32F0 8FB80018 */  lw         $t8, 0x18($sp)
/* 7DAF4 800C32F4 8FB9001C */  lw         $t9, 0x1C($sp)
/* 7DAF8 800C32F8 8FA80020 */  lw         $t0, 0x20($sp)
/* 7DAFC 800C32FC 24637DF0 */  addiu      $v1, $v1, %lo(D_801D7DF0)
/* 7DB00 800C3300 00001025 */  or         $v0, $zero, $zero
/* 7DB04 800C3304 A0780000 */  sb         $t8, 0x0($v1)
/* 7DB08 800C3308 A0790001 */  sb         $t9, 0x1($v1)
/* 7DB0C 800C330C A0680002 */  sb         $t0, 0x2($v1)
.L800C3310:
/* 7DB10 800C3310 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7DB14 800C3314 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7DB18 800C3318 03E00008 */  jr         $ra
/* 7DB1C 800C331C 00000000 */   nop

glabel func_800C3320
/* 7DB20 800C3320 3C0E801D */  lui        $t6, %hi(D_801D7DC4)
/* 7DB24 800C3324 8DCE7DC4 */  lw         $t6, %lo(D_801D7DC4)($t6)
/* 7DB28 800C3328 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7DB2C 800C332C AFBF0014 */  sw         $ra, 0x14($sp)
/* 7DB30 800C3330 AFA40018 */  sw         $a0, 0x18($sp)
/* 7DB34 800C3334 AFA5001C */  sw         $a1, 0x1C($sp)
/* 7DB38 800C3338 11C00010 */  beqz       $t6, .L800C337C
/* 7DB3C 800C333C AFA60020 */   sw        $a2, 0x20($sp)
/* 7DB40 800C3340 3C0F800E */  lui        $t7, %hi(D_800E7C94)
/* 7DB44 800C3344 81EF7C94 */  lb         $t7, %lo(D_800E7C94)($t7)
/* 7DB48 800C3348 24010007 */  addiu      $at, $zero, 0x7
/* 7DB4C 800C334C 55E1000C */  bnel       $t7, $at, .L800C3380
/* 7DB50 800C3350 8FBF0014 */   lw        $ra, 0x14($sp)
/* 7DB54 800C3354 0C030CA8 */  jal        func_800C32A0
/* 7DB58 800C3358 00000000 */   nop
/* 7DB5C 800C335C 10400007 */  beqz       $v0, .L800C337C
/* 7DB60 800C3360 00402825 */   or        $a1, $v0, $zero
/* 7DB64 800C3364 28410005 */  slti       $at, $v0, 0x5
/* 7DB68 800C3368 10200004 */  beqz       $at, .L800C337C
/* 7DB6C 800C336C 8FA40018 */   lw        $a0, 0x18($sp)
/* 7DB70 800C3370 8FA6001C */  lw         $a2, 0x1C($sp)
/* 7DB74 800C3374 0C030CF2 */  jal        func_800C33C8
/* 7DB78 800C3378 8FA70020 */   lw        $a3, 0x20($sp)
.L800C337C:
/* 7DB7C 800C337C 8FBF0014 */  lw         $ra, 0x14($sp)
.L800C3380:
/* 7DB80 800C3380 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7DB84 800C3384 03E00008 */  jr         $ra
/* 7DB88 800C3388 00000000 */   nop

glabel func_800C338C
/* 7DB8C 800C338C 3C02801D */  lui        $v0, %hi(D_801D7DF4)
/* 7DB90 800C3390 24427DF4 */  addiu      $v0, $v0, %lo(D_801D7DF4)
/* 7DB94 800C3394 904E0002 */  lbu        $t6, 0x2($v0)
/* 7DB98 800C3398 51C00006 */  beql       $t6, $zero, .L800C33B4
/* 7DB9C 800C339C A0440000 */   sb        $a0, 0x0($v0)
/* 7DBA0 800C33A0 904F0001 */  lbu        $t7, 0x1($v0)
/* 7DBA4 800C33A4 00CF082A */  slt        $at, $a2, $t7
/* 7DBA8 800C33A8 14200005 */  bnez       $at, .L800C33C0
/* 7DBAC 800C33AC 00000000 */   nop
/* 7DBB0 800C33B0 A0440000 */  sb         $a0, 0x0($v0)
.L800C33B4:
/* 7DBB4 800C33B4 A0460001 */  sb         $a2, 0x1($v0)
/* 7DBB8 800C33B8 A0450003 */  sb         $a1, 0x3($v0)
/* 7DBBC 800C33BC A0470002 */  sb         $a3, 0x2($v0)
.L800C33C0:
/* 7DBC0 800C33C0 03E00008 */  jr         $ra
/* 7DBC4 800C33C4 00000000 */   nop

glabel func_800C33C8
/* 7DBC8 800C33C8 3C0E801D */  lui        $t6, %hi(D_801D7DC4)
/* 7DBCC 800C33CC 8DCE7DC4 */  lw         $t6, %lo(D_801D7DC4)($t6)
/* 7DBD0 800C33D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7DBD4 800C33D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7DBD8 800C33D8 11C00007 */  beqz       $t6, .L800C33F8
/* 7DBDC 800C33DC 3C0F800E */   lui       $t7, %hi(D_800E7C94)
/* 7DBE0 800C33E0 81EF7C94 */  lb         $t7, %lo(D_800E7C94)($t7)
/* 7DBE4 800C33E4 24010007 */  addiu      $at, $zero, 0x7
/* 7DBE8 800C33E8 55E10004 */  bnel       $t7, $at, .L800C33FC
/* 7DBEC 800C33EC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 7DBF0 800C33F0 0C030CE3 */  jal        func_800C338C
/* 7DBF4 800C33F4 00000000 */   nop
.L800C33F8:
/* 7DBF8 800C33F8 8FBF0014 */  lw         $ra, 0x14($sp)
.L800C33FC:
/* 7DBFC 800C33FC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7DC00 800C3400 03E00008 */  jr         $ra
/* 7DC04 800C3404 00000000 */   nop

glabel func_800C3408
/* 7DC08 800C3408 3C0E801D */  lui        $t6, %hi(D_801D7DC0)
/* 7DC0C 800C340C 8DCE7DC0 */  lw         $t6, %lo(D_801D7DC0)($t6)
/* 7DC10 800C3410 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7DC14 800C3414 24010003 */  addiu      $at, $zero, 0x3
/* 7DC18 800C3418 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7DC1C 800C341C AFA40018 */  sw         $a0, 0x18($sp)
/* 7DC20 800C3420 AFA5001C */  sw         $a1, 0x1C($sp)
/* 7DC24 800C3424 15C1000B */  bne        $t6, $at, .L800C3454
/* 7DC28 800C3428 AFA60020 */   sw        $a2, 0x20($sp)
/* 7DC2C 800C342C 0C030CA8 */  jal        func_800C32A0
/* 7DC30 800C3430 00000000 */   nop
/* 7DC34 800C3434 10400007 */  beqz       $v0, .L800C3454
/* 7DC38 800C3438 00402825 */   or        $a1, $v0, $zero
/* 7DC3C 800C343C 28410005 */  slti       $at, $v0, 0x5
/* 7DC40 800C3440 10200004 */  beqz       $at, .L800C3454
/* 7DC44 800C3444 8FA40018 */   lw        $a0, 0x18($sp)
/* 7DC48 800C3448 8FA6001C */  lw         $a2, 0x1C($sp)
/* 7DC4C 800C344C 0C030CF2 */  jal        func_800C33C8
/* 7DC50 800C3450 8FA70020 */   lw        $a3, 0x20($sp)
.L800C3454:
/* 7DC54 800C3454 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7DC58 800C3458 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7DC5C 800C345C 03E00008 */  jr         $ra
/* 7DC60 800C3460 00000000 */   nop

glabel func_800C3464
/* 7DC64 800C3464 3C0E801D */  lui        $t6, %hi(D_801D7DC0)
/* 7DC68 800C3468 8DCE7DC0 */  lw         $t6, %lo(D_801D7DC0)($t6)
/* 7DC6C 800C346C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7DC70 800C3470 24010003 */  addiu      $at, $zero, 0x3
/* 7DC74 800C3474 15C10003 */  bne        $t6, $at, .L800C3484
/* 7DC78 800C3478 AFBF0014 */   sw        $ra, 0x14($sp)
/* 7DC7C 800C347C 0C030CE3 */  jal        func_800C338C
/* 7DC80 800C3480 00000000 */   nop
.L800C3484:
/* 7DC84 800C3484 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7DC88 800C3488 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7DC8C 800C348C 03E00008 */  jr         $ra
/* 7DC90 800C3490 00000000 */   nop

glabel func_800C3494
/* 7DC94 800C3494 3C03801D */  lui        $v1, %hi(D_801D7DF4)
/* 7DC98 800C3498 24637DF4 */  addiu      $v1, $v1, %lo(D_801D7DF4)
/* 7DC9C 800C349C 90620003 */  lbu        $v0, 0x3($v1)
/* 7DCA0 800C34A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7DCA4 800C34A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7DCA8 800C34A8 1040000B */  beqz       $v0, .L800C34D8
/* 7DCAC 800C34AC 244EFFFF */   addiu     $t6, $v0, -0x1
/* 7DCB0 800C34B0 31CF00FF */  andi       $t7, $t6, 0xFF
/* 7DCB4 800C34B4 15E00008 */  bnez       $t7, .L800C34D8
/* 7DCB8 800C34B8 A06E0003 */   sb        $t6, 0x3($v1)
/* 7DCBC 800C34BC 90640000 */  lbu        $a0, 0x0($v1)
/* 7DCC0 800C34C0 90650001 */  lbu        $a1, 0x1($v1)
/* 7DCC4 800C34C4 0C030CA8 */  jal        func_800C32A0
/* 7DCC8 800C34C8 90660002 */   lbu       $a2, 0x2($v1)
/* 7DCCC 800C34CC 3C03801D */  lui        $v1, %hi(D_801D7DF4)
/* 7DCD0 800C34D0 24637DF4 */  addiu      $v1, $v1, %lo(D_801D7DF4)
/* 7DCD4 800C34D4 A0620002 */  sb         $v0, 0x2($v1)
.L800C34D8:
/* 7DCD8 800C34D8 3C03801D */  lui        $v1, %hi(D_801D7DF0)
/* 7DCDC 800C34DC 24637DF0 */  addiu      $v1, $v1, %lo(D_801D7DF0)
/* 7DCE0 800C34E0 90620002 */  lbu        $v0, 0x2($v1)
/* 7DCE4 800C34E4 10400002 */  beqz       $v0, .L800C34F0
/* 7DCE8 800C34E8 2458FFFF */   addiu     $t8, $v0, -0x1
/* 7DCEC 800C34EC A0780002 */  sb         $t8, 0x2($v1)
.L800C34F0:
/* 7DCF0 800C34F0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7DCF4 800C34F4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7DCF8 800C34F8 03E00008 */  jr         $ra
/* 7DCFC 800C34FC 00000000 */   nop

glabel func_800C3500
/* 7DD00 800C3500 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7DD04 800C3504 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7DD08 800C3508 2405007D */  addiu      $a1, $zero, 0x7D
/* 7DD0C 800C350C 0C030CA8 */  jal        func_800C32A0
/* 7DD10 800C3510 2406000A */   addiu     $a2, $zero, 0xA
/* 7DD14 800C3514 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7DD18 800C3518 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7DD1C 800C351C 03E00008 */  jr         $ra
/* 7DD20 800C3520 00000000 */   nop

glabel func_800C3524
/* 7DD24 800C3524 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7DD28 800C3528 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7DD2C 800C352C 2406007D */  addiu      $a2, $zero, 0x7D
/* 7DD30 800C3530 0C030CE3 */  jal        func_800C338C
/* 7DD34 800C3534 2407000A */   addiu     $a3, $zero, 0xA
/* 7DD38 800C3538 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7DD3C 800C353C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7DD40 800C3540 03E00008 */  jr         $ra
/* 7DD44 800C3544 00000000 */   nop

glabel func_800C3548
/* 7DD48 800C3548 3C0E801D */  lui        $t6, %hi(D_801D7DD0)
/* 7DD4C 800C354C 8DCE7DD0 */  lw         $t6, %lo(D_801D7DD0)($t6)
/* 7DD50 800C3550 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7DD54 800C3554 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7DD58 800C3558 15C00012 */  bnez       $t6, .L800C35A4
/* 7DD5C 800C355C 3C028004 */   lui       $v0, %hi(D_8004562C)
/* 7DD60 800C3560 8C42562C */  lw         $v0, %lo(D_8004562C)($v0)
/* 7DD64 800C3564 24050020 */  addiu      $a1, $zero, 0x20
/* 7DD68 800C3568 2406001E */  addiu      $a2, $zero, 0x1E
/* 7DD6C 800C356C 304F0003 */  andi       $t7, $v0, 0x3
/* 7DD70 800C3570 0C030D02 */  jal        func_800C3408
/* 7DD74 800C3574 25E4006C */   addiu     $a0, $t7, 0x6C
/* 7DD78 800C3578 3C188004 */  lui        $t8, %hi(D_8004562C)
/* 7DD7C 800C357C 8F18562C */  lw         $t8, %lo(D_8004562C)($t8)
/* 7DD80 800C3580 33190001 */  andi       $t9, $t8, 0x1
/* 7DD84 800C3584 13200005 */  beqz       $t9, .L800C359C
/* 7DD88 800C3588 00000000 */   nop
/* 7DD8C 800C358C 0C0307AE */  jal        func_800C1EB8
/* 7DD90 800C3590 24040001 */   addiu     $a0, $zero, 0x1
/* 7DD94 800C3594 10000004 */  b          .L800C35A8
/* 7DD98 800C3598 8FBF0014 */   lw        $ra, 0x14($sp)
.L800C359C:
/* 7DD9C 800C359C 0C0307AE */  jal        func_800C1EB8
/* 7DDA0 800C35A0 00002025 */   or        $a0, $zero, $zero
.L800C35A4:
/* 7DDA4 800C35A4 8FBF0014 */  lw         $ra, 0x14($sp)
.L800C35A8:
/* 7DDA8 800C35A8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7DDAC 800C35AC 03E00008 */  jr         $ra
/* 7DDB0 800C35B0 00000000 */   nop

glabel func_800C35B4
/* 7DDB4 800C35B4 3C0E801D */  lui        $t6, %hi(D_801D7DD0)
/* 7DDB8 800C35B8 8DCE7DD0 */  lw         $t6, %lo(D_801D7DD0)($t6)
/* 7DDBC 800C35BC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7DDC0 800C35C0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7DDC4 800C35C4 15C00014 */  bnez       $t6, .L800C3618
/* 7DDC8 800C35C8 3C028004 */   lui       $v0, %hi(D_8004562C)
/* 7DDCC 800C35CC 8C42562C */  lw         $v0, %lo(D_8004562C)($v0)
/* 7DDD0 800C35D0 24010003 */  addiu      $at, $zero, 0x3
/* 7DDD4 800C35D4 24050020 */  addiu      $a1, $zero, 0x20
/* 7DDD8 800C35D8 0041001B */  divu       $zero, $v0, $at
/* 7DDDC 800C35DC 00007810 */  mfhi       $t7
/* 7DDE0 800C35E0 25E40066 */  addiu      $a0, $t7, 0x66
/* 7DDE4 800C35E4 0C030D02 */  jal        func_800C3408
/* 7DDE8 800C35E8 2406001E */   addiu     $a2, $zero, 0x1E
/* 7DDEC 800C35EC 3C188004 */  lui        $t8, %hi(D_8004562C)
/* 7DDF0 800C35F0 8F18562C */  lw         $t8, %lo(D_8004562C)($t8)
/* 7DDF4 800C35F4 33190001 */  andi       $t9, $t8, 0x1
/* 7DDF8 800C35F8 13200005 */  beqz       $t9, .L800C3610
/* 7DDFC 800C35FC 00000000 */   nop
/* 7DE00 800C3600 0C0307AE */  jal        func_800C1EB8
/* 7DE04 800C3604 24040013 */   addiu     $a0, $zero, 0x13
/* 7DE08 800C3608 10000004 */  b          .L800C361C
/* 7DE0C 800C360C 8FBF0014 */   lw        $ra, 0x14($sp)
.L800C3610:
/* 7DE10 800C3610 0C0307AE */  jal        func_800C1EB8
/* 7DE14 800C3614 24040002 */   addiu     $a0, $zero, 0x2
.L800C3618:
/* 7DE18 800C3618 8FBF0014 */  lw         $ra, 0x14($sp)
.L800C361C:
/* 7DE1C 800C361C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7DE20 800C3620 03E00008 */  jr         $ra
/* 7DE24 800C3624 00000000 */   nop

glabel func_800C3628
/* 7DE28 800C3628 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7DE2C 800C362C AFB00018 */  sw         $s0, 0x18($sp)
/* 7DE30 800C3630 00808025 */  or         $s0, $a0, $zero
/* 7DE34 800C3634 00102E00 */  sll        $a1, $s0, 24
/* 7DE38 800C3638 AFBF001C */  sw         $ra, 0x1C($sp)
/* 7DE3C 800C363C 00057603 */  sra        $t6, $a1, 24
/* 7DE40 800C3640 3C040600 */  lui        $a0, (0x6000F01 >> 16)
/* 7DE44 800C3644 34840F01 */  ori        $a0, $a0, (0x6000F01 & 0xFFFF)
/* 7DE48 800C3648 0C0314F5 */  jal        func_800C53D4
/* 7DE4C 800C364C 01C02825 */   or        $a1, $t6, $zero
/* 7DE50 800C3650 3C040600 */  lui        $a0, (0x6000F00 >> 16)
/* 7DE54 800C3654 34840F00 */  ori        $a0, $a0, (0x6000F00 & 0xFFFF)
/* 7DE58 800C3658 0C0314F5 */  jal        func_800C53D4
/* 7DE5C 800C365C 24050025 */   addiu     $a1, $zero, 0x25
/* 7DE60 800C3660 24010004 */  addiu      $at, $zero, 0x4
/* 7DE64 800C3664 16010005 */  bne        $s0, $at, .L800C367C
/* 7DE68 800C3668 24040064 */   addiu     $a0, $zero, 0x64
/* 7DE6C 800C366C 24050014 */  addiu      $a1, $zero, 0x14
/* 7DE70 800C3670 24060010 */  addiu      $a2, $zero, 0x10
/* 7DE74 800C3674 0C030D19 */  jal        func_800C3464
/* 7DE78 800C3678 2407000A */   addiu     $a3, $zero, 0xA
.L800C367C:
/* 7DE7C 800C367C 24010008 */  addiu      $at, $zero, 0x8
/* 7DE80 800C3680 16010005 */  bne        $s0, $at, .L800C3698
/* 7DE84 800C3684 24040069 */   addiu     $a0, $zero, 0x69
/* 7DE88 800C3688 24050014 */  addiu      $a1, $zero, 0x14
/* 7DE8C 800C368C 24060012 */  addiu      $a2, $zero, 0x12
/* 7DE90 800C3690 0C030D19 */  jal        func_800C3464
/* 7DE94 800C3694 2407000A */   addiu     $a3, $zero, 0xA
.L800C3698:
/* 7DE98 800C3698 2401000C */  addiu      $at, $zero, 0xC
/* 7DE9C 800C369C 16010005 */  bne        $s0, $at, .L800C36B4
/* 7DEA0 800C36A0 2404006A */   addiu     $a0, $zero, 0x6A
/* 7DEA4 800C36A4 24050014 */  addiu      $a1, $zero, 0x14
/* 7DEA8 800C36A8 24060014 */  addiu      $a2, $zero, 0x14
/* 7DEAC 800C36AC 0C030D19 */  jal        func_800C3464
/* 7DEB0 800C36B0 24070014 */   addiu     $a3, $zero, 0x14
.L800C36B4:
/* 7DEB4 800C36B4 3C0F801D */  lui        $t7, %hi(D_801D7DC4)
/* 7DEB8 800C36B8 8DEF7DC4 */  lw         $t7, %lo(D_801D7DC4)($t7)
/* 7DEBC 800C36BC 3C18800F */  lui        $t8, %hi(D_800E8430)
/* 7DEC0 800C36C0 2404006B */  addiu      $a0, $zero, 0x6B
/* 7DEC4 800C36C4 030FC021 */  addu       $t8, $t8, $t7
/* 7DEC8 800C36C8 83188430 */  lb         $t8, %lo(D_800E8430)($t8)
/* 7DECC 800C36CC 24050014 */  addiu      $a1, $zero, 0x14
/* 7DED0 800C36D0 24060020 */  addiu      $a2, $zero, 0x20
/* 7DED4 800C36D4 56180004 */  bnel       $s0, $t8, .L800C36E8
/* 7DED8 800C36D8 8FBF001C */   lw        $ra, 0x1C($sp)
/* 7DEDC 800C36DC 0C030D19 */  jal        func_800C3464
/* 7DEE0 800C36E0 2407001E */   addiu     $a3, $zero, 0x1E
/* 7DEE4 800C36E4 8FBF001C */  lw         $ra, 0x1C($sp)
.L800C36E8:
/* 7DEE8 800C36E8 8FB00018 */  lw         $s0, 0x18($sp)
/* 7DEEC 800C36EC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7DEF0 800C36F0 03E00008 */  jr         $ra
/* 7DEF4 800C36F4 00000000 */   nop

glabel func_800C36F8
/* 7DEF8 800C36F8 3C0E801D */  lui        $t6, %hi(D_801D7DC4)
/* 7DEFC 800C36FC 8DCE7DC4 */  lw         $t6, %lo(D_801D7DC4)($t6)
/* 7DF00 800C3700 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7DF04 800C3704 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7DF08 800C3708 11C00018 */  beqz       $t6, .L800C376C
/* 7DF0C 800C370C 00803025 */   or        $a2, $a0, $zero
/* 7DF10 800C3710 3C0F801D */  lui        $t7, %hi(D_801D7DC0)
/* 7DF14 800C3714 8DEF7DC0 */  lw         $t7, %lo(D_801D7DC0)($t7)
/* 7DF18 800C3718 24010003 */  addiu      $at, $zero, 0x3
/* 7DF1C 800C371C 11E10013 */  beq        $t7, $at, .L800C376C
/* 7DF20 800C3720 24010005 */   addiu     $at, $zero, 0x5
/* 7DF24 800C3724 14810006 */  bne        $a0, $at, .L800C3740
/* 7DF28 800C3728 24050036 */   addiu     $a1, $zero, 0x36
/* 7DF2C 800C372C 3C040600 */  lui        $a0, (0x6000F00 >> 16)
/* 7DF30 800C3730 34840F00 */  ori        $a0, $a0, (0x6000F00 & 0xFFFF)
/* 7DF34 800C3734 0C0314F5 */  jal        func_800C53D4
/* 7DF38 800C3738 AFA60018 */   sw        $a2, 0x18($sp)
/* 7DF3C 800C373C 8FA60018 */  lw         $a2, 0x18($sp)
.L800C3740:
/* 7DF40 800C3740 3C18800E */  lui        $t8, %hi(D_800E7CD8)
/* 7DF44 800C3744 8F187CD8 */  lw         $t8, %lo(D_800E7CD8)($t8)
/* 7DF48 800C3748 24010005 */  addiu      $at, $zero, 0x5
/* 7DF4C 800C374C 57000008 */  bnel       $t8, $zero, .L800C3770
/* 7DF50 800C3750 8FBF0014 */   lw        $ra, 0x14($sp)
/* 7DF54 800C3754 14C10005 */  bne        $a2, $at, .L800C376C
/* 7DF58 800C3758 2404005E */   addiu     $a0, $zero, 0x5E
/* 7DF5C 800C375C 2405001E */  addiu      $a1, $zero, 0x1E
/* 7DF60 800C3760 24060020 */  addiu      $a2, $zero, 0x20
/* 7DF64 800C3764 0C030CF2 */  jal        func_800C33C8
/* 7DF68 800C3768 2407001E */   addiu     $a3, $zero, 0x1E
.L800C376C:
/* 7DF6C 800C376C 8FBF0014 */  lw         $ra, 0x14($sp)
.L800C3770:
/* 7DF70 800C3770 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7DF74 800C3774 03E00008 */  jr         $ra
/* 7DF78 800C3778 00000000 */   nop

glabel func_800C377C
/* 7DF7C 800C377C 00803025 */  or         $a2, $a0, $zero
/* 7DF80 800C3780 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7DF84 800C3784 00062E00 */  sll        $a1, $a2, 24
/* 7DF88 800C3788 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7DF8C 800C378C 00057603 */  sra        $t6, $a1, 24
/* 7DF90 800C3790 3C040600 */  lui        $a0, (0x6000C01 >> 16)
/* 7DF94 800C3794 34840C01 */  ori        $a0, $a0, (0x6000C01 & 0xFFFF)
/* 7DF98 800C3798 0C0314F5 */  jal        func_800C53D4
/* 7DF9C 800C379C 01C02825 */   or        $a1, $t6, $zero
/* 7DFA0 800C37A0 3C040600 */  lui        $a0, (0x6000C00 >> 16)
/* 7DFA4 800C37A4 34840C00 */  ori        $a0, $a0, (0x6000C00 & 0xFFFF)
/* 7DFA8 800C37A8 0C0314F5 */  jal        func_800C53D4
/* 7DFAC 800C37AC 2405007F */   addiu     $a1, $zero, 0x7F
/* 7DFB0 800C37B0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7DFB4 800C37B4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7DFB8 800C37B8 03E00008 */  jr         $ra
/* 7DFBC 800C37BC 00000000 */   nop

glabel func_800C37C0
/* 7DFC0 800C37C0 3C01800E */  lui        $at, %hi(D_800E7CE4)
/* 7DFC4 800C37C4 AC257CE4 */  sw         $a1, %lo(D_800E7CE4)($at)
/* 7DFC8 800C37C8 3C01801D */  lui        $at, %hi(D_801D7E1C)
/* 7DFCC 800C37CC 03E00008 */  jr         $ra
/* 7DFD0 800C37D0 AC247E1C */   sw        $a0, %lo(D_801D7E1C)($at)

glabel func_800C37D4
/* 7DFD4 800C37D4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7DFD8 800C37D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7DFDC 800C37DC 0C030DDF */  jal        func_800C377C
/* 7DFE0 800C37E0 00000000 */   nop
/* 7DFE4 800C37E4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7DFE8 800C37E8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7DFEC 800C37EC 03E00008 */  jr         $ra
/* 7DFF0 800C37F0 00000000 */   nop

glabel func_800C37F4
/* 7DFF4 800C37F4 3C0E800E */  lui        $t6, %hi(D_800E7C94)
/* 7DFF8 800C37F8 81CE7C94 */  lb         $t6, %lo(D_800E7C94)($t6)
/* 7DFFC 800C37FC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 7E000 800C3800 24010007 */  addiu      $at, $zero, 0x7
/* 7E004 800C3804 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7E008 800C3808 00803025 */  or         $a2, $a0, $zero
/* 7E00C 800C380C 11C1000A */  beq        $t6, $at, L800C3838
/* 7E010 800C3810 00A03825 */   or        $a3, $a1, $zero
/* 7E014 800C3814 248FFFF6 */  addiu      $t7, $a0, -0xA
/* 7E018 800C3818 2DE1002C */  sltiu      $at, $t7, 0x2C
/* 7E01C 800C381C 10200006 */  beqz       $at, L800C3838
/* 7E020 800C3820 000F7880 */   sll       $t7, $t7, 2
/* 7E024 800C3824 3C01800F */  lui        $at, %hi(jtbl_800EC414_main)
/* 7E028 800C3828 002F0821 */  addu       $at, $at, $t7
/* 7E02C 800C382C 8C2FC414 */  lw         $t7, %lo(jtbl_800EC414_main)($at)
/* 7E030 800C3830 01E00008 */  jr         $t7
/* 7E034 800C3834 00000000 */   nop
glabel L800C3838
/* 7E038 800C3838 3C18801D */  lui        $t8, %hi(D_801D7DC0)
/* 7E03C 800C383C 8F187DC0 */  lw         $t8, %lo(D_801D7DC0)($t8)
/* 7E040 800C3840 24010003 */  addiu      $at, $zero, 0x3
/* 7E044 800C3844 3C040600 */  lui        $a0, (0x6000F00 >> 16)
/* 7E048 800C3848 1301001A */  beq        $t8, $at, .L800C38B4
/* 7E04C 800C384C 34840F00 */   ori       $a0, $a0, (0x6000F00 & 0xFFFF)
/* 7E050 800C3850 24010028 */  addiu      $at, $zero, 0x28
/* 7E054 800C3854 10C10004 */  beq        $a2, $at, .L800C3868
/* 7E058 800C3858 3C19801D */   lui       $t9, %hi(D_801D7DFC)
/* 7E05C 800C385C 24010029 */  addiu      $at, $zero, 0x29
/* 7E060 800C3860 54C10015 */  bnel       $a2, $at, .L800C38B8
/* 7E064 800C3864 00062E00 */   sll       $a1, $a2, 24
.L800C3868:
/* 7E068 800C3868 83397DFC */  lb         $t9, %lo(D_801D7DFC)($t9)
/* 7E06C 800C386C 30EA0080 */  andi       $t2, $a3, 0x80
/* 7E070 800C3870 3C0C801D */  lui        $t4, %hi(D_801D7E04)
/* 7E074 800C3874 13200006 */  beqz       $t9, .L800C3890
/* 7E078 800C3878 30ED0080 */   andi      $t5, $a3, 0x80
/* 7E07C 800C387C 15400004 */  bnez       $t2, .L800C3890
/* 7E080 800C3880 30EB000F */   andi      $t3, $a3, 0xF
/* 7E084 800C3884 11600002 */  beqz       $t3, .L800C3890
/* 7E088 800C3888 00000000 */   nop
/* 7E08C 800C388C 24060001 */  addiu      $a2, $zero, 0x1
.L800C3890:
/* 7E090 800C3890 818C7E04 */  lb         $t4, %lo(D_801D7E04)($t4)
/* 7E094 800C3894 24010080 */  addiu      $at, $zero, 0x80
/* 7E098 800C3898 51800007 */  beql       $t4, $zero, .L800C38B8
/* 7E09C 800C389C 00062E00 */   sll       $a1, $a2, 24
/* 7E0A0 800C38A0 15A10004 */  bne        $t5, $at, .L800C38B4
/* 7E0A4 800C38A4 30EE000F */   andi      $t6, $a3, 0xF
/* 7E0A8 800C38A8 51C00003 */  beql       $t6, $zero, .L800C38B8
/* 7E0AC 800C38AC 00062E00 */   sll       $a1, $a2, 24
/* 7E0B0 800C38B0 24060001 */  addiu      $a2, $zero, 0x1
.L800C38B4:
/* 7E0B4 800C38B4 00062E00 */  sll        $a1, $a2, 24
.L800C38B8:
/* 7E0B8 800C38B8 00057E03 */  sra        $t7, $a1, 24
/* 7E0BC 800C38BC 01E02825 */  or         $a1, $t7, $zero
/* 7E0C0 800C38C0 00C01025 */  or         $v0, $a2, $zero
/* 7E0C4 800C38C4 AFA60018 */  sw         $a2, 0x18($sp)
/* 7E0C8 800C38C8 0C0314F5 */  jal        func_800C53D4
/* 7E0CC 800C38CC AFA7003C */   sw        $a3, 0x3C($sp)
/* 7E0D0 800C38D0 3C18800E */  lui        $t8, %hi(D_800E7C94)
/* 7E0D4 800C38D4 83187C94 */  lb         $t8, %lo(D_800E7C94)($t8)
/* 7E0D8 800C38D8 3C04801D */  lui        $a0, %hi(D_801D7E00)
/* 7E0DC 800C38DC 3C09801D */  lui        $t1, %hi(D_801D7DF8)
/* 7E0E0 800C38E0 24010007 */  addiu      $at, $zero, 0x7
/* 7E0E4 800C38E4 25297DF8 */  addiu      $t1, $t1, %lo(D_801D7DF8)
/* 7E0E8 800C38E8 24847E00 */  addiu      $a0, $a0, %lo(D_801D7E00)
/* 7E0EC 800C38EC 8FA20018 */  lw         $v0, 0x18($sp)
/* 7E0F0 800C38F0 24050080 */  addiu      $a1, $zero, 0x80
/* 7E0F4 800C38F4 17010018 */  bne        $t8, $at, .L800C3958
/* 7E0F8 800C38F8 8FA7003C */   lw        $a3, 0x3C($sp)
/* 7E0FC 800C38FC 3C19800E */  lui        $t9, %hi(D_800E7CB8)
/* 7E100 800C3900 8F397CB8 */  lw         $t9, %lo(D_800E7CB8)($t9)
/* 7E104 800C3904 24010023 */  addiu      $at, $zero, 0x23
/* 7E108 800C3908 57200014 */  bnel       $t9, $zero, .L800C395C
/* 7E10C 800C390C 244EFFFF */   addiu     $t6, $v0, -0x1
/* 7E110 800C3910 1441000C */  bne        $v0, $at, .L800C3944
/* 7E114 800C3914 24080001 */   addiu     $t0, $zero, 0x1
/* 7E118 800C3918 240A000A */  addiu      $t2, $zero, 0xA
/* 7E11C 800C391C 3C01800E */  lui        $at, %hi(D_800E7CD8)
/* 7E120 800C3920 AC2A7CD8 */  sw         $t2, %lo(D_800E7CD8)($at)
/* 7E124 800C3924 3C01800E */  lui        $at, %hi(D_800E7CD4)
/* 7E128 800C3928 240B00B4 */  addiu      $t3, $zero, 0xB4
/* 7E12C 800C392C AC2B7CD4 */  sw         $t3, %lo(D_800E7CD4)($at)
/* 7E130 800C3930 3C01800E */  lui        $at, %hi(D_800E7CA0)
/* 7E134 800C3934 AC287CA0 */  sw         $t0, %lo(D_800E7CA0)($at)
/* 7E138 800C3938 3C01800E */  lui        $at, %hi(D_800E7CE8)
/* 7E13C 800C393C 240C0140 */  addiu      $t4, $zero, 0x140
/* 7E140 800C3940 AC2C7CE8 */  sw         $t4, %lo(D_800E7CE8)($at)
.L800C3944:
/* 7E144 800C3944 24010021 */  addiu      $at, $zero, 0x21
/* 7E148 800C3948 14410003 */  bne        $v0, $at, .L800C3958
/* 7E14C 800C394C 240D00A0 */   addiu     $t5, $zero, 0xA0
/* 7E150 800C3950 3C01800E */  lui        $at, %hi(D_800E7CE8)
/* 7E154 800C3954 AC2D7CE8 */  sw         $t5, %lo(D_800E7CE8)($at)
.L800C3958:
/* 7E158 800C3958 244EFFFF */  addiu      $t6, $v0, -0x1
.L800C395C:
/* 7E15C 800C395C 2DC10035 */  sltiu      $at, $t6, 0x35
/* 7E160 800C3960 1020011B */  beqz       $at, L800C3DD0
/* 7E164 800C3964 24080001 */   addiu     $t0, $zero, 0x1
/* 7E168 800C3968 000E7080 */  sll        $t6, $t6, 2
/* 7E16C 800C396C 3C01800F */  lui        $at, %hi(jtbl_800EC4C4_main)
/* 7E170 800C3970 002E0821 */  addu       $at, $at, $t6
/* 7E174 800C3974 8C2EC4C4 */  lw         $t6, %lo(jtbl_800EC4C4_main)($at)
/* 7E178 800C3978 01C00008 */  jr         $t6
/* 7E17C 800C397C 00000000 */   nop
glabel L800C3980
/* 7E180 800C3980 24040012 */  addiu      $a0, $zero, 0x12
/* 7E184 800C3984 0C0307AE */  jal        func_800C1EB8
/* 7E188 800C3988 AFA7003C */   sw        $a3, 0x3C($sp)
/* 7E18C 800C398C 3C03801D */  lui        $v1, %hi(D_801D7DC0)
/* 7E190 800C3990 8C637DC0 */  lw         $v1, %lo(D_801D7DC0)($v1)
/* 7E194 800C3994 24020002 */  addiu      $v0, $zero, 0x2
/* 7E198 800C3998 3C09801D */  lui        $t1, %hi(D_801D7DF8)
/* 7E19C 800C399C 25297DF8 */  addiu      $t1, $t1, %lo(D_801D7DF8)
/* 7E1A0 800C39A0 8FA7003C */  lw         $a3, 0x3C($sp)
/* 7E1A4 800C39A4 1443001C */  bne        $v0, $v1, .L800C3A18
/* 7E1A8 800C39A8 24080001 */   addiu     $t0, $zero, 0x1
/* 7E1AC 800C39AC 30EF0001 */  andi       $t7, $a3, 0x1
/* 7E1B0 800C39B0 150F0009 */  bne        $t0, $t7, .L800C39D8
/* 7E1B4 800C39B4 30F90002 */   andi      $t9, $a3, 0x2
/* 7E1B8 800C39B8 2418003D */  addiu      $t8, $zero, 0x3D
/* 7E1BC 800C39BC 3C040600 */  lui        $a0, (0x6000F00 >> 16)
/* 7E1C0 800C39C0 AFB80030 */  sw         $t8, 0x30($sp)
/* 7E1C4 800C39C4 34840F00 */  ori        $a0, $a0, (0x6000F00 & 0xFFFF)
/* 7E1C8 800C39C8 0C0314F5 */  jal        func_800C53D4
/* 7E1CC 800C39CC 24050039 */   addiu     $a1, $zero, 0x39
/* 7E1D0 800C39D0 1000000B */  b          .L800C3A00
/* 7E1D4 800C39D4 8FA40030 */   lw        $a0, 0x30($sp)
.L800C39D8:
/* 7E1D8 800C39D8 14590004 */  bne        $v0, $t9, .L800C39EC
/* 7E1DC 800C39DC 3C038004 */   lui       $v1, %hi(D_8004562C)
/* 7E1E0 800C39E0 240A002E */  addiu      $t2, $zero, 0x2E
/* 7E1E4 800C39E4 10000005 */  b          .L800C39FC
/* 7E1E8 800C39E8 AFAA0030 */   sw        $t2, 0x30($sp)
.L800C39EC:
/* 7E1EC 800C39EC 8C63562C */  lw         $v1, %lo(D_8004562C)($v1)
/* 7E1F0 800C39F0 306B0001 */  andi       $t3, $v1, 0x1
/* 7E1F4 800C39F4 256C003E */  addiu      $t4, $t3, 0x3E
/* 7E1F8 800C39F8 AFAC0030 */  sw         $t4, 0x30($sp)
.L800C39FC:
/* 7E1FC 800C39FC 8FA40030 */  lw         $a0, 0x30($sp)
.L800C3A00:
/* 7E200 800C3A00 2405001E */  addiu      $a1, $zero, 0x1E
/* 7E204 800C3A04 24060064 */  addiu      $a2, $zero, 0x64
/* 7E208 800C3A08 0C030CF2 */  jal        func_800C33C8
/* 7E20C 800C3A0C 24070028 */   addiu     $a3, $zero, 0x28
/* 7E210 800C3A10 100000F0 */  b          .L800C3DD4
/* 7E214 800C3A14 8FBF0014 */   lw        $ra, 0x14($sp)
.L800C3A18:
/* 7E218 800C3A18 1503001C */  bne        $t0, $v1, .L800C3A8C
/* 7E21C 800C3A1C 30E20080 */   andi      $v0, $a3, 0x80
/* 7E220 800C3A20 104000EB */  beqz       $v0, L800C3DD0
/* 7E224 800C3A24 3C0D800E */   lui       $t5, %hi(D_800E7CA8)
/* 7E228 800C3A28 8DAD7CA8 */  lw         $t5, %lo(D_800E7CA8)($t5)
/* 7E22C 800C3A2C 3C0E800E */  lui        $t6, %hi(D_800E7C98)
/* 7E230 800C3A30 55A000E8 */  bnel       $t5, $zero, .L800C3DD4
/* 7E234 800C3A34 8FBF0014 */   lw        $ra, 0x14($sp)
/* 7E238 800C3A38 8DCE7C98 */  lw         $t6, %lo(D_800E7C98)($t6)
/* 7E23C 800C3A3C 2404001A */  addiu      $a0, $zero, 0x1A
/* 7E240 800C3A40 11C00009 */  beqz       $t6, .L800C3A68
/* 7E244 800C3A44 00000000 */   nop
/* 7E248 800C3A48 0C030572 */  jal        func_800C15C8
/* 7E24C 800C3A4C 00002825 */   or        $a1, $zero, $zero
/* 7E250 800C3A50 0C03059D */  jal        func_800C1674
/* 7E254 800C3A54 2404000A */   addiu     $a0, $zero, 0xA
/* 7E258 800C3A58 240F0012 */  addiu      $t7, $zero, 0x12
/* 7E25C 800C3A5C 3C01800E */  lui        $at, %hi(D_800E7CEC)
/* 7E260 800C3A60 24080001 */  addiu      $t0, $zero, 0x1
/* 7E264 800C3A64 AC2F7CEC */  sw         $t7, %lo(D_800E7CEC)($at)
.L800C3A68:
/* 7E268 800C3A68 3C01800E */  lui        $at, %hi(D_800E7CA8)
/* 7E26C 800C3A6C AC287CA8 */  sw         $t0, %lo(D_800E7CA8)($at)
/* 7E270 800C3A70 2404003B */  addiu      $a0, $zero, 0x3B
/* 7E274 800C3A74 24050010 */  addiu      $a1, $zero, 0x10
/* 7E278 800C3A78 24060064 */  addiu      $a2, $zero, 0x64
/* 7E27C 800C3A7C 0C030CF2 */  jal        func_800C33C8
/* 7E280 800C3A80 24070028 */   addiu     $a3, $zero, 0x28
/* 7E284 800C3A84 100000D3 */  b          .L800C3DD4
/* 7E288 800C3A88 8FBF0014 */   lw        $ra, 0x14($sp)
.L800C3A8C:
/* 7E28C 800C3A8C 10400029 */  beqz       $v0, .L800C3B34
/* 7E290 800C3A90 3C18800E */   lui       $t8, %hi(D_800E7C98)
/* 7E294 800C3A94 8F187C98 */  lw         $t8, %lo(D_800E7C98)($t8)
/* 7E298 800C3A98 2404001A */  addiu      $a0, $zero, 0x1A
/* 7E29C 800C3A9C 00002825 */  or         $a1, $zero, $zero
/* 7E2A0 800C3AA0 5300000D */  beql       $t8, $zero, .L800C3AD8
/* 7E2A4 800C3AA4 81220002 */   lb        $v0, 0x2($t1)
/* 7E2A8 800C3AA8 0C030572 */  jal        func_800C15C8
/* 7E2AC 800C3AAC AFA7003C */   sw        $a3, 0x3C($sp)
/* 7E2B0 800C3AB0 0C03059D */  jal        func_800C1674
/* 7E2B4 800C3AB4 2404000A */   addiu     $a0, $zero, 0xA
/* 7E2B8 800C3AB8 3C09801D */  lui        $t1, %hi(D_801D7DF8)
/* 7E2BC 800C3ABC 24190012 */  addiu      $t9, $zero, 0x12
/* 7E2C0 800C3AC0 3C01800E */  lui        $at, %hi(D_800E7CEC)
/* 7E2C4 800C3AC4 25297DF8 */  addiu      $t1, $t1, %lo(D_801D7DF8)
/* 7E2C8 800C3AC8 8FA7003C */  lw         $a3, 0x3C($sp)
/* 7E2CC 800C3ACC 24080001 */  addiu      $t0, $zero, 0x1
/* 7E2D0 800C3AD0 AC397CEC */  sw         $t9, %lo(D_800E7CEC)($at)
/* 7E2D4 800C3AD4 81220002 */  lb         $v0, 0x2($t1)
.L800C3AD8:
/* 7E2D8 800C3AD8 00001825 */  or         $v1, $zero, $zero
/* 7E2DC 800C3ADC 240D0010 */  addiu      $t5, $zero, 0x10
/* 7E2E0 800C3AE0 14400004 */  bnez       $v0, .L800C3AF4
/* 7E2E4 800C3AE4 30EE0001 */   andi      $t6, $a3, 0x1
/* 7E2E8 800C3AE8 240A0039 */  addiu      $t2, $zero, 0x39
/* 7E2EC 800C3AEC 10000008 */  b          .L800C3B10
/* 7E2F0 800C3AF0 AFAA0030 */   sw        $t2, 0x30($sp)
.L800C3AF4:
/* 7E2F4 800C3AF4 24010004 */  addiu      $at, $zero, 0x4
/* 7E2F8 800C3AF8 14410004 */  bne        $v0, $at, .L800C3B0C
/* 7E2FC 800C3AFC 240C003B */   addiu     $t4, $zero, 0x3B
/* 7E300 800C3B00 240B003A */  addiu      $t3, $zero, 0x3A
/* 7E304 800C3B04 10000002 */  b          .L800C3B10
/* 7E308 800C3B08 AFAB0030 */   sw        $t3, 0x30($sp)
.L800C3B0C:
/* 7E30C 800C3B0C AFAC0030 */  sw         $t4, 0x30($sp)
.L800C3B10:
/* 7E310 800C3B10 150E002A */  bne        $t0, $t6, .L800C3BBC
/* 7E314 800C3B14 AFAD0024 */   sw        $t5, 0x24($sp)
/* 7E318 800C3B18 3C040600 */  lui        $a0, (0x6000F00 >> 16)
/* 7E31C 800C3B1C 34840F00 */  ori        $a0, $a0, (0x6000F00 & 0xFFFF)
/* 7E320 800C3B20 24050039 */  addiu      $a1, $zero, 0x39
/* 7E324 800C3B24 0C0314F5 */  jal        func_800C53D4
/* 7E328 800C3B28 AFA00034 */   sw        $zero, 0x34($sp)
/* 7E32C 800C3B2C 10000023 */  b          .L800C3BBC
/* 7E330 800C3B30 8FA30034 */   lw        $v1, 0x34($sp)
.L800C3B34:
/* 7E334 800C3B34 14E8000C */  bne        $a3, $t0, .L800C3B68
/* 7E338 800C3B38 3C038004 */   lui       $v1, %hi(D_8004562C)
/* 7E33C 800C3B3C 240F003D */  addiu      $t7, $zero, 0x3D
/* 7E340 800C3B40 2418001E */  addiu      $t8, $zero, 0x1E
/* 7E344 800C3B44 3C040600 */  lui        $a0, (0x6000F00 >> 16)
/* 7E348 800C3B48 AFAF0030 */  sw         $t7, 0x30($sp)
/* 7E34C 800C3B4C AFB80024 */  sw         $t8, 0x24($sp)
/* 7E350 800C3B50 34840F00 */  ori        $a0, $a0, (0x6000F00 & 0xFFFF)
/* 7E354 800C3B54 24050039 */  addiu      $a1, $zero, 0x39
/* 7E358 800C3B58 0C0314F5 */  jal        func_800C53D4
/* 7E35C 800C3B5C AFA00034 */   sw        $zero, 0x34($sp)
/* 7E360 800C3B60 10000016 */  b          .L800C3BBC
/* 7E364 800C3B64 8FA30034 */   lw        $v1, 0x34($sp)
.L800C3B68:
/* 7E368 800C3B68 8C63562C */  lw         $v1, %lo(D_8004562C)($v1)
/* 7E36C 800C3B6C 81220002 */  lb         $v0, 0x2($t1)
/* 7E370 800C3B70 240B001E */  addiu      $t3, $zero, 0x1E
/* 7E374 800C3B74 30790001 */  andi       $t9, $v1, 0x1
/* 7E378 800C3B78 14400003 */  bnez       $v0, .L800C3B88
/* 7E37C 800C3B7C 03201825 */   or        $v1, $t9, $zero
/* 7E380 800C3B80 1000000C */  b          .L800C3BB4
/* 7E384 800C3B84 2404002D */   addiu     $a0, $zero, 0x2D
.L800C3B88:
/* 7E388 800C3B88 24010003 */  addiu      $at, $zero, 0x3
/* 7E38C 800C3B8C 54410004 */  bnel       $v0, $at, .L800C3BA0
/* 7E390 800C3B90 812A0000 */   lb        $t2, 0x0($t1)
/* 7E394 800C3B94 10000007 */  b          .L800C3BB4
/* 7E398 800C3B98 24040030 */   addiu     $a0, $zero, 0x30
/* 7E39C 800C3B9C 812A0000 */  lb         $t2, 0x0($t1)
.L800C3BA0:
/* 7E3A0 800C3BA0 24040036 */  addiu      $a0, $zero, 0x36
/* 7E3A4 800C3BA4 11400003 */  beqz       $t2, .L800C3BB4
/* 7E3A8 800C3BA8 00000000 */   nop
/* 7E3AC 800C3BAC 10000001 */  b          .L800C3BB4
/* 7E3B0 800C3BB0 24040033 */   addiu     $a0, $zero, 0x33
.L800C3BB4:
/* 7E3B4 800C3BB4 AFAB0024 */  sw         $t3, 0x24($sp)
/* 7E3B8 800C3BB8 AFA40030 */  sw         $a0, 0x30($sp)
.L800C3BBC:
/* 7E3BC 800C3BBC 8FAC0030 */  lw         $t4, 0x30($sp)
/* 7E3C0 800C3BC0 8FA50024 */  lw         $a1, 0x24($sp)
/* 7E3C4 800C3BC4 24060064 */  addiu      $a2, $zero, 0x64
/* 7E3C8 800C3BC8 24070032 */  addiu      $a3, $zero, 0x32
/* 7E3CC 800C3BCC 0C030CF2 */  jal        func_800C33C8
/* 7E3D0 800C3BD0 01832021 */   addu      $a0, $t4, $v1
/* 7E3D4 800C3BD4 3C09801D */  lui        $t1, %hi(D_801D7DF8)
/* 7E3D8 800C3BD8 25297DF8 */  addiu      $t1, $t1, %lo(D_801D7DF8)
/* 7E3DC 800C3BDC 812D0002 */  lb         $t5, 0x2($t1)
/* 7E3E0 800C3BE0 A1200000 */  sb         $zero, 0x0($t1)
/* 7E3E4 800C3BE4 1000007A */  b          L800C3DD0
/* 7E3E8 800C3BE8 A12D0003 */   sb        $t5, 0x3($t1)
glabel L800C3BEC
/* 7E3EC 800C3BEC 812E0004 */  lb         $t6, 0x4($t1)
/* 7E3F0 800C3BF0 24020005 */  addiu      $v0, $zero, 0x5
/* 7E3F4 800C3BF4 30EF0080 */  andi       $t7, $a3, 0x80
/* 7E3F8 800C3BF8 504E0004 */  beql       $v0, $t6, .L800C3C0C
/* 7E3FC 800C3BFC 80980004 */   lb        $t8, 0x4($a0)
/* 7E400 800C3C00 11E00006 */  beqz       $t7, .L800C3C1C
/* 7E404 800C3C04 00000000 */   nop
/* 7E408 800C3C08 80980004 */  lb         $t8, 0x4($a0)
.L800C3C0C:
/* 7E40C 800C3C0C 30F90080 */  andi       $t9, $a3, 0x80
/* 7E410 800C3C10 50580070 */  beql       $v0, $t8, .L800C3DD4
/* 7E414 800C3C14 8FBF0014 */   lw        $ra, 0x14($sp)
/* 7E418 800C3C18 14B9006D */  bne        $a1, $t9, L800C3DD0
.L800C3C1C:
/* 7E41C 800C3C1C 3C038004 */   lui       $v1, %hi(D_8004562C)
/* 7E420 800C3C20 8C63562C */  lw         $v1, %lo(D_8004562C)($v1)
/* 7E424 800C3C24 2405000A */  addiu      $a1, $zero, 0xA
/* 7E428 800C3C28 24060014 */  addiu      $a2, $zero, 0x14
/* 7E42C 800C3C2C 306A0003 */  andi       $t2, $v1, 0x3
/* 7E430 800C3C30 0C030CC8 */  jal        func_800C3320
/* 7E434 800C3C34 25440061 */   addiu     $a0, $t2, 0x61
/* 7E438 800C3C38 10000066 */  b          .L800C3DD4
/* 7E43C 800C3C3C 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L800C3C40
/* 7E440 800C3C40 30E20080 */  andi       $v0, $a3, 0x80
/* 7E444 800C3C44 10400005 */  beqz       $v0, .L800C3C5C
/* 7E448 800C3C48 30E3000F */   andi      $v1, $a3, 0xF
/* 7E44C 800C3C4C 50450007 */  beql       $v0, $a1, .L800C3C6C
/* 7E450 800C3C50 A0880000 */   sb        $t0, 0x0($a0)
/* 7E454 800C3C54 10000006 */  b          .L800C3C70
/* 7E458 800C3C58 00000000 */   nop
.L800C3C5C:
/* 7E45C 800C3C5C A1280000 */  sb         $t0, 0x0($t1)
/* 7E460 800C3C60 10000003 */  b          .L800C3C70
/* 7E464 800C3C64 A1280001 */   sb        $t0, 0x1($t1)
/* 7E468 800C3C68 A0880000 */  sb         $t0, 0x0($a0)
.L800C3C6C:
/* 7E46C 800C3C6C A0880001 */  sb         $t0, 0x1($a0)
.L800C3C70:
/* 7E470 800C3C70 1060000A */  beqz       $v1, .L800C3C9C
/* 7E474 800C3C74 24050019 */   addiu     $a1, $zero, 0x19
/* 7E478 800C3C78 1068000A */  beq        $v1, $t0, .L800C3CA4
/* 7E47C 800C3C7C 24020002 */   addiu     $v0, $zero, 0x2
/* 7E480 800C3C80 1062000A */  beq        $v1, $v0, .L800C3CAC
/* 7E484 800C3C84 2404001A */   addiu     $a0, $zero, 0x1A
/* 7E488 800C3C88 3C048004 */  lui        $a0, %hi(D_8004562C)
/* 7E48C 800C3C8C 8C84562C */  lw         $a0, %lo(D_8004562C)($a0)
/* 7E490 800C3C90 308B0001 */  andi       $t3, $a0, 0x1
/* 7E494 800C3C94 10000005 */  b          .L800C3CAC
/* 7E498 800C3C98 2564001B */   addiu     $a0, $t3, 0x1B
.L800C3C9C:
/* 7E49C 800C3C9C 10000003 */  b          .L800C3CAC
/* 7E4A0 800C3CA0 24040022 */   addiu     $a0, $zero, 0x22
.L800C3CA4:
/* 7E4A4 800C3CA4 10000001 */  b          .L800C3CAC
/* 7E4A8 800C3CA8 24040019 */   addiu     $a0, $zero, 0x19
.L800C3CAC:
/* 7E4AC 800C3CAC 24060028 */  addiu      $a2, $zero, 0x28
/* 7E4B0 800C3CB0 0C030CF2 */  jal        func_800C33C8
/* 7E4B4 800C3CB4 24070028 */   addiu     $a3, $zero, 0x28
/* 7E4B8 800C3CB8 10000046 */  b          .L800C3DD4
/* 7E4BC 800C3CBC 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L800C3CC0
/* 7E4C0 800C3CC0 3C0C801D */  lui        $t4, %hi(D_801D7DC4)
/* 7E4C4 800C3CC4 8D8C7DC4 */  lw         $t4, %lo(D_801D7DC4)($t4)
/* 7E4C8 800C3CC8 30E3000F */  andi       $v1, $a3, 0xF
/* 7E4CC 800C3CCC 24020004 */  addiu      $v0, $zero, 0x4
/* 7E4D0 800C3CD0 15800003 */  bnez       $t4, .L800C3CE0
/* 7E4D4 800C3CD4 30ED0080 */   andi      $t5, $a3, 0x80
/* 7E4D8 800C3CD8 10000001 */  b          .L800C3CE0
/* 7E4DC 800C3CDC 24020008 */   addiu     $v0, $zero, 0x8
.L800C3CE0:
/* 7E4E0 800C3CE0 1443003B */  bne        $v0, $v1, L800C3DD0
/* 7E4E4 800C3CE4 24050014 */   addiu     $a1, $zero, 0x14
/* 7E4E8 800C3CE8 15A00006 */  bnez       $t5, .L800C3D04
/* 7E4EC 800C3CEC 24040020 */   addiu     $a0, $zero, 0x20
/* 7E4F0 800C3CF0 3C048004 */  lui        $a0, %hi(D_8004562C)
/* 7E4F4 800C3CF4 8C84562C */  lw         $a0, %lo(D_8004562C)($a0)
/* 7E4F8 800C3CF8 308E0001 */  andi       $t6, $a0, 0x1
/* 7E4FC 800C3CFC 10000001 */  b          .L800C3D04
/* 7E500 800C3D00 25C4001D */   addiu     $a0, $t6, 0x1D
.L800C3D04:
/* 7E504 800C3D04 0C030CC8 */  jal        func_800C3320
/* 7E508 800C3D08 24060028 */   addiu     $a2, $zero, 0x28
/* 7E50C 800C3D0C 10000031 */  b          .L800C3DD4
/* 7E510 800C3D10 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L800C3D14
/* 7E514 800C3D14 24E4000A */  addiu      $a0, $a3, 0xA
/* 7E518 800C3D18 2405005A */  addiu      $a1, $zero, 0x5A
/* 7E51C 800C3D1C 0C030CC8 */  jal        func_800C3320
/* 7E520 800C3D20 24060001 */   addiu     $a2, $zero, 0x1
/* 7E524 800C3D24 1000002B */  b          .L800C3DD4
/* 7E528 800C3D28 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L800C3D2C
/* 7E52C 800C3D2C 2404000A */  addiu      $a0, $zero, 0xA
/* 7E530 800C3D30 24050064 */  addiu      $a1, $zero, 0x64
/* 7E534 800C3D34 0C030CC8 */  jal        func_800C3320
/* 7E538 800C3D38 2406003C */   addiu     $a2, $zero, 0x3C
/* 7E53C 800C3D3C 10000025 */  b          .L800C3DD4
/* 7E540 800C3D40 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L800C3D44
/* 7E544 800C3D44 00002025 */  or         $a0, $zero, $zero
/* 7E548 800C3D48 2405007F */  addiu      $a1, $zero, 0x7F
/* 7E54C 800C3D4C 0C030CA8 */  jal        func_800C32A0
/* 7E550 800C3D50 24060014 */   addiu     $a2, $zero, 0x14
/* 7E554 800C3D54 1000001F */  b          .L800C3DD4
/* 7E558 800C3D58 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L800C3D5C
/* 7E55C 800C3D5C 3C038004 */  lui        $v1, %hi(D_8004562C)
/* 7E560 800C3D60 8C63562C */  lw         $v1, %lo(D_8004562C)($v1)
/* 7E564 800C3D64 24050018 */  addiu      $a1, $zero, 0x18
/* 7E568 800C3D68 24060014 */  addiu      $a2, $zero, 0x14
/* 7E56C 800C3D6C 306F0001 */  andi       $t7, $v1, 0x1
/* 7E570 800C3D70 0C030D02 */  jal        func_800C3408
/* 7E574 800C3D74 25E40040 */   addiu     $a0, $t7, 0x40
/* 7E578 800C3D78 10000016 */  b          .L800C3DD4
/* 7E57C 800C3D7C 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L800C3D80
/* 7E580 800C3D80 3C02800E */  lui        $v0, %hi(D_800E7CF4)
/* 7E584 800C3D84 24427CF4 */  addiu      $v0, $v0, %lo(D_800E7CF4)
/* 7E588 800C3D88 8C580000 */  lw         $t8, 0x0($v0)
/* 7E58C 800C3D8C 240A0064 */  addiu      $t2, $zero, 0x64
/* 7E590 800C3D90 3C01800E */  lui        $at, %hi(D_800E7CF0)
/* 7E594 800C3D94 27190001 */  addiu      $t9, $t8, 0x1
/* 7E598 800C3D98 AC590000 */  sw         $t9, 0x0($v0)
/* 7E59C 800C3D9C AC2A7CF0 */  sw         $t2, %lo(D_800E7CF0)($at)
/* 7E5A0 800C3DA0 8C430000 */  lw         $v1, 0x0($v0)
/* 7E5A4 800C3DA4 24010004 */  addiu      $at, $zero, 0x4
/* 7E5A8 800C3DA8 10610002 */  beq        $v1, $at, .L800C3DB4
/* 7E5AC 800C3DAC 2401000C */   addiu     $at, $zero, 0xC
/* 7E5B0 800C3DB0 14610007 */  bne        $v1, $at, L800C3DD0
.L800C3DB4:
/* 7E5B4 800C3DB4 3C038004 */   lui       $v1, %hi(D_8004562C)
/* 7E5B8 800C3DB8 8C63562C */  lw         $v1, %lo(D_8004562C)($v1)
/* 7E5BC 800C3DBC 2405007F */  addiu      $a1, $zero, 0x7F
/* 7E5C0 800C3DC0 2406003C */  addiu      $a2, $zero, 0x3C
/* 7E5C4 800C3DC4 306B0001 */  andi       $t3, $v1, 0x1
/* 7E5C8 800C3DC8 0C030CA8 */  jal        func_800C32A0
/* 7E5CC 800C3DCC 25640017 */   addiu     $a0, $t3, 0x17
glabel L800C3DD0
/* 7E5D0 800C3DD0 8FBF0014 */  lw         $ra, 0x14($sp)
.L800C3DD4:
/* 7E5D4 800C3DD4 27BD0038 */  addiu      $sp, $sp, 0x38
/* 7E5D8 800C3DD8 03E00008 */  jr         $ra
/* 7E5DC 800C3DDC 00000000 */   nop

glabel func_800C3DE0
/* 7E5E0 800C3DE0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7E5E4 800C3DE4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7E5E8 800C3DE8 24040020 */  addiu      $a0, $zero, 0x20
/* 7E5EC 800C3DEC 0C030DFD */  jal        func_800C37F4
/* 7E5F0 800C3DF0 00002825 */   or        $a1, $zero, $zero
/* 7E5F4 800C3DF4 3C04F100 */  lui        $a0, (0xF1000000 >> 16)
/* 7E5F8 800C3DF8 0C0314EC */  jal        func_800C53B0
/* 7E5FC 800C3DFC 00002825 */   or        $a1, $zero, $zero
/* 7E600 800C3E00 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7E604 800C3E04 240E0001 */  addiu      $t6, $zero, 0x1
/* 7E608 800C3E08 3C01800E */  lui        $at, %hi(D_800E7CC4)
/* 7E60C 800C3E0C AC2E7CC4 */  sw         $t6, %lo(D_800E7CC4)($at)
/* 7E610 800C3E10 03E00008 */  jr         $ra
/* 7E614 800C3E14 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800C3E18
/* 7E618 800C3E18 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7E61C 800C3E1C AFBF0014 */  sw         $ra, 0x14($sp)
/* 7E620 800C3E20 24040020 */  addiu      $a0, $zero, 0x20
/* 7E624 800C3E24 0C030DFD */  jal        func_800C37F4
/* 7E628 800C3E28 00002825 */   or        $a1, $zero, $zero
/* 7E62C 800C3E2C 3C04F200 */  lui        $a0, (0xF2000000 >> 16)
/* 7E630 800C3E30 0C0314EC */  jal        func_800C53B0
/* 7E634 800C3E34 00002825 */   or        $a1, $zero, $zero
/* 7E638 800C3E38 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7E63C 800C3E3C 3C01800E */  lui        $at, %hi(D_800E7CC4)
/* 7E640 800C3E40 AC207CC4 */  sw         $zero, %lo(D_800E7CC4)($at)
/* 7E644 800C3E44 03E00008 */  jr         $ra
/* 7E648 800C3E48 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800C3E4C
/* 7E64C 800C3E4C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7E650 800C3E50 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7E654 800C3E54 0C030D40 */  jal        func_800C3500
/* 7E658 800C3E58 2404005C */   addiu     $a0, $zero, 0x5C
/* 7E65C 800C3E5C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7E660 800C3E60 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7E664 800C3E64 03E00008 */  jr         $ra
/* 7E668 800C3E68 00000000 */   nop

glabel func_800C3E6C
/* 7E66C 800C3E6C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7E670 800C3E70 1080000B */  beqz       $a0, .L800C3EA0
/* 7E674 800C3E74 AFBF0014 */   sw        $ra, 0x14($sp)
/* 7E678 800C3E78 24010001 */  addiu      $at, $zero, 0x1
/* 7E67C 800C3E7C 1081000C */  beq        $a0, $at, .L800C3EB0
/* 7E680 800C3E80 24010002 */   addiu     $at, $zero, 0x2
/* 7E684 800C3E84 1081000E */  beq        $a0, $at, .L800C3EC0
/* 7E688 800C3E88 3C058004 */   lui       $a1, %hi(D_8004562C)
/* 7E68C 800C3E8C 24010003 */  addiu      $at, $zero, 0x3
/* 7E690 800C3E90 10810012 */  beq        $a0, $at, .L800C3EDC
/* 7E694 800C3E94 00000000 */   nop
/* 7E698 800C3E98 10000013 */  b          .L800C3EE8
/* 7E69C 800C3E9C 8FBF0014 */   lw        $ra, 0x14($sp)
.L800C3EA0:
/* 7E6A0 800C3EA0 0C030D40 */  jal        func_800C3500
/* 7E6A4 800C3EA4 24040018 */   addiu     $a0, $zero, 0x18
/* 7E6A8 800C3EA8 1000000F */  b          .L800C3EE8
/* 7E6AC 800C3EAC 8FBF0014 */   lw        $ra, 0x14($sp)
.L800C3EB0:
/* 7E6B0 800C3EB0 0C030D40 */  jal        func_800C3500
/* 7E6B4 800C3EB4 24040065 */   addiu     $a0, $zero, 0x65
/* 7E6B8 800C3EB8 1000000B */  b          .L800C3EE8
/* 7E6BC 800C3EBC 8FBF0014 */   lw        $ra, 0x14($sp)
.L800C3EC0:
/* 7E6C0 800C3EC0 8CA5562C */  lw         $a1, %lo(D_8004562C)($a1)
/* 7E6C4 800C3EC4 00002025 */  or         $a0, $zero, $zero
/* 7E6C8 800C3EC8 30AE0003 */  andi       $t6, $a1, 0x3
/* 7E6CC 800C3ECC 0C030C5F */  jal        func_800C317C
/* 7E6D0 800C3ED0 25C50008 */   addiu     $a1, $t6, 0x8
/* 7E6D4 800C3ED4 10000004 */  b          .L800C3EE8
/* 7E6D8 800C3ED8 8FBF0014 */   lw        $ra, 0x14($sp)
.L800C3EDC:
/* 7E6DC 800C3EDC 0C030DDF */  jal        func_800C377C
/* 7E6E0 800C3EE0 2404000B */   addiu     $a0, $zero, 0xB
/* 7E6E4 800C3EE4 8FBF0014 */  lw         $ra, 0x14($sp)
.L800C3EE8:
/* 7E6E8 800C3EE8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7E6EC 800C3EEC 03E00008 */  jr         $ra
/* 7E6F0 800C3EF0 00000000 */   nop

glabel func_800C3EF4
/* 7E6F4 800C3EF4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7E6F8 800C3EF8 28810002 */  slti       $at, $a0, 0x2
/* 7E6FC 800C3EFC 10200006 */  beqz       $at, .L800C3F18
/* 7E700 800C3F00 AFBF0014 */   sw        $ra, 0x14($sp)
/* 7E704 800C3F04 2881FFFF */  slti       $at, $a0, -0x1
/* 7E708 800C3F08 54200004 */  bnel       $at, $zero, .L800C3F1C
/* 7E70C 800C3F0C 28810002 */   slti      $at, $a0, 0x2
/* 7E710 800C3F10 10000007 */  b          .L800C3F30
/* 7E714 800C3F14 00001825 */   or        $v1, $zero, $zero
.L800C3F18:
/* 7E718 800C3F18 28810002 */  slti       $at, $a0, 0x2
.L800C3F1C:
/* 7E71C 800C3F1C 14200003 */  bnez       $at, .L800C3F2C
/* 7E720 800C3F20 24030001 */   addiu     $v1, $zero, 0x1
/* 7E724 800C3F24 10000002 */  b          .L800C3F30
/* 7E728 800C3F28 24030002 */   addiu     $v1, $zero, 0x2
.L800C3F2C:
/* 7E72C 800C3F2C 00042023 */  negu       $a0, $a0
.L800C3F30:
/* 7E730 800C3F30 3C0E800E */  lui        $t6, %hi(D_800E7C94)
/* 7E734 800C3F34 81CE7C94 */  lb         $t6, %lo(D_800E7C94)($t6)
/* 7E738 800C3F38 24010007 */  addiu      $at, $zero, 0x7
/* 7E73C 800C3F3C 55C1004B */  bnel       $t6, $at, .L800C406C
/* 7E740 800C3F40 8FBF0014 */   lw        $ra, 0x14($sp)
/* 7E744 800C3F44 1060000A */  beqz       $v1, .L800C3F70
/* 7E748 800C3F48 3C02801D */   lui       $v0, %hi(D_801D7DC0)
/* 7E74C 800C3F4C 24050001 */  addiu      $a1, $zero, 0x1
/* 7E750 800C3F50 10650013 */  beq        $v1, $a1, .L800C3FA0
/* 7E754 800C3F54 28810014 */   slti      $at, $a0, 0x14
/* 7E758 800C3F58 24010002 */  addiu      $at, $zero, 0x2
/* 7E75C 800C3F5C 10610019 */  beq        $v1, $at, .L800C3FC4
/* 7E760 800C3F60 3C02801D */   lui       $v0, (0x801D0000 >> 16)
/* 7E764 800C3F64 3C02801D */  lui        $v0, %hi(D_801D7DC0)
/* 7E768 800C3F68 1000001E */  b          .L800C3FE4
/* 7E76C 800C3F6C 8C427DC0 */   lw        $v0, %lo(D_801D7DC0)($v0)
.L800C3F70:
/* 7E770 800C3F70 8C427DC0 */  lw         $v0, %lo(D_801D7DC0)($v0)
/* 7E774 800C3F74 24050001 */  addiu      $a1, $zero, 0x1
/* 7E778 800C3F78 3C0F8004 */  lui        $t7, %hi(D_8004562C)
/* 7E77C 800C3F7C 54A2003B */  bnel       $a1, $v0, .L800C406C
/* 7E780 800C3F80 8FBF0014 */   lw        $ra, 0x14($sp)
/* 7E784 800C3F84 8DEF562C */  lw         $t7, %lo(D_8004562C)($t7)
/* 7E788 800C3F88 24010003 */  addiu      $at, $zero, 0x3
/* 7E78C 800C3F8C 01E1001B */  divu       $zero, $t7, $at
/* 7E790 800C3F90 0000C010 */  mfhi       $t8
/* 7E794 800C3F94 27190016 */  addiu      $t9, $t8, 0x16
/* 7E798 800C3F98 10000012 */  b          .L800C3FE4
/* 7E79C 800C3F9C AFB90018 */   sw        $t9, 0x18($sp)
.L800C3FA0:
/* 7E7A0 800C3FA0 14200005 */  bnez       $at, .L800C3FB8
/* 7E7A4 800C3FA4 3C02801D */   lui       $v0, %hi(D_801D7DC0)
/* 7E7A8 800C3FA8 24080015 */  addiu      $t0, $zero, 0x15
/* 7E7AC 800C3FAC AFA80018 */  sw         $t0, 0x18($sp)
/* 7E7B0 800C3FB0 10000002 */  b          .L800C3FBC
/* 7E7B4 800C3FB4 00001825 */   or        $v1, $zero, $zero
.L800C3FB8:
/* 7E7B8 800C3FB8 AFA40018 */  sw         $a0, 0x18($sp)
.L800C3FBC:
/* 7E7BC 800C3FBC 10000009 */  b          .L800C3FE4
/* 7E7C0 800C3FC0 8C427DC0 */   lw        $v0, %lo(D_801D7DC0)($v0)
.L800C3FC4:
/* 7E7C4 800C3FC4 28810014 */  slti       $at, $a0, 0x14
/* 7E7C8 800C3FC8 14200004 */  bnez       $at, .L800C3FDC
/* 7E7CC 800C3FCC 24090019 */   addiu     $t1, $zero, 0x19
/* 7E7D0 800C3FD0 AFA90018 */  sw         $t1, 0x18($sp)
/* 7E7D4 800C3FD4 10000002 */  b          .L800C3FE0
/* 7E7D8 800C3FD8 00001825 */   or        $v1, $zero, $zero
.L800C3FDC:
/* 7E7DC 800C3FDC AFA40018 */  sw         $a0, 0x18($sp)
.L800C3FE0:
/* 7E7E0 800C3FE0 8C427DC0 */  lw         $v0, %lo(D_801D7DC0)($v0)
.L800C3FE4:
/* 7E7E4 800C3FE4 10A20003 */  beq        $a1, $v0, .L800C3FF4
/* 7E7E8 800C3FE8 8FAA0018 */   lw        $t2, 0x18($sp)
/* 7E7EC 800C3FEC 24010015 */  addiu      $at, $zero, 0x15
/* 7E7F0 800C3FF0 1141001D */  beq        $t2, $at, .L800C4068
.L800C3FF4:
/* 7E7F4 800C3FF4 3C02801D */   lui       $v0, %hi(D_801D7DF0)
/* 7E7F8 800C3FF8 24427DF0 */  addiu      $v0, $v0, %lo(D_801D7DF0)
/* 7E7FC 800C3FFC 904B0002 */  lbu        $t3, 0x2($v0)
/* 7E800 800C4000 3C040600 */  lui        $a0, (0x6000C02 >> 16)
/* 7E804 800C4004 34840C02 */  ori        $a0, $a0, (0x6000C02 & 0xFFFF)
/* 7E808 800C4008 11600004 */  beqz       $t3, .L800C401C
/* 7E80C 800C400C 00032E00 */   sll       $a1, $v1, 24
/* 7E810 800C4010 904C0001 */  lbu        $t4, 0x1($v0)
/* 7E814 800C4014 29810051 */  slti       $at, $t4, 0x51
/* 7E818 800C4018 10200013 */  beqz       $at, .L800C4068
.L800C401C:
/* 7E81C 800C401C 00056E03 */   sra       $t5, $a1, 24
/* 7E820 800C4020 0C0314F5 */  jal        func_800C53D4
/* 7E824 800C4024 01A02825 */   or        $a1, $t5, $zero
/* 7E828 800C4028 3C040600 */  lui        $a0, (0x6000C01 >> 16)
/* 7E82C 800C402C 34840C01 */  ori        $a0, $a0, (0x6000C01 & 0xFFFF)
/* 7E830 800C4030 0C0314F5 */  jal        func_800C53D4
/* 7E834 800C4034 83A5001B */   lb        $a1, 0x1B($sp)
/* 7E838 800C4038 3C040600 */  lui        $a0, (0x6000C00 >> 16)
/* 7E83C 800C403C 34840C00 */  ori        $a0, $a0, (0x6000C00 & 0xFFFF)
/* 7E840 800C4040 0C0314F5 */  jal        func_800C53D4
/* 7E844 800C4044 2405007E */   addiu     $a1, $zero, 0x7E
/* 7E848 800C4048 3C02801D */  lui        $v0, %hi(D_801D7DF0)
/* 7E84C 800C404C 8FAE0018 */  lw         $t6, 0x18($sp)
/* 7E850 800C4050 24427DF0 */  addiu      $v0, $v0, %lo(D_801D7DF0)
/* 7E854 800C4054 240F0055 */  addiu      $t7, $zero, 0x55
/* 7E858 800C4058 24180032 */  addiu      $t8, $zero, 0x32
/* 7E85C 800C405C A04F0001 */  sb         $t7, 0x1($v0)
/* 7E860 800C4060 A0580002 */  sb         $t8, 0x2($v0)
/* 7E864 800C4064 A04E0000 */  sb         $t6, 0x0($v0)
.L800C4068:
/* 7E868 800C4068 8FBF0014 */  lw         $ra, 0x14($sp)
.L800C406C:
/* 7E86C 800C406C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7E870 800C4070 03E00008 */  jr         $ra
/* 7E874 800C4074 00000000 */   nop

glabel func_800C4078
/* 7E878 800C4078 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7E87C 800C407C AFBF0014 */  sw         $ra, 0x14($sp)
/* 7E880 800C4080 3C040600 */  lui        $a0, (0x6000B00 >> 16)
/* 7E884 800C4084 34840B00 */  ori        $a0, $a0, (0x6000B00 & 0xFFFF)
/* 7E888 800C4088 0C0314F5 */  jal        func_800C53D4
/* 7E88C 800C408C 00002825 */   or        $a1, $zero, $zero
/* 7E890 800C4090 3C040600 */  lui        $a0, (0x6000A00 >> 16)
/* 7E894 800C4094 34840A00 */  ori        $a0, $a0, (0x6000A00 & 0xFFFF)
/* 7E898 800C4098 0C0314F5 */  jal        func_800C53D4
/* 7E89C 800C409C 00002825 */   or        $a1, $zero, $zero
/* 7E8A0 800C40A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7E8A4 800C40A4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7E8A8 800C40A8 03E00008 */  jr         $ra
/* 7E8AC 800C40AC 00000000 */   nop

glabel func_800C40B0
/* 7E8B0 800C40B0 3C02801D */  lui        $v0, %hi(D_801D7DD4)
/* 7E8B4 800C40B4 8C427DD4 */  lw         $v0, %lo(D_801D7DD4)($v0)
/* 7E8B8 800C40B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7E8BC 800C40BC AFBF0014 */  sw         $ra, 0x14($sp)
/* 7E8C0 800C40C0 10400008 */  beqz       $v0, .L800C40E4
/* 7E8C4 800C40C4 24030001 */   addiu     $v1, $zero, 0x1
/* 7E8C8 800C40C8 104300D7 */  beq        $v0, $v1, .L800C4428
/* 7E8CC 800C40CC 24010002 */   addiu     $at, $zero, 0x2
/* 7E8D0 800C40D0 104101A5 */  beq        $v0, $at, .L800C4768
/* 7E8D4 800C40D4 3C03801D */   lui       $v1, %hi(D_801D7E14)
/* 7E8D8 800C40D8 3C03801D */  lui        $v1, %hi(D_801D7E14)
/* 7E8DC 800C40DC 100001E2 */  b          .L800C4868
/* 7E8E0 800C40E0 8C637E14 */   lw        $v1, %lo(D_801D7E14)($v1)
.L800C40E4:
/* 7E8E4 800C40E4 3C02801D */  lui        $v0, %hi(D_801D7DC8)
/* 7E8E8 800C40E8 8C427DC8 */  lw         $v0, %lo(D_801D7DC8)($v0)
/* 7E8EC 800C40EC 3C03801D */  lui        $v1, %hi(D_801D7E14)
/* 7E8F0 800C40F0 10400009 */  beqz       $v0, .L800C4118
/* 7E8F4 800C40F4 00000000 */   nop
/* 7E8F8 800C40F8 24030001 */  addiu      $v1, $zero, 0x1
/* 7E8FC 800C40FC 10430047 */  beq        $v0, $v1, .L800C421C
/* 7E900 800C4100 24010002 */   addiu     $at, $zero, 0x2
/* 7E904 800C4104 10410087 */  beq        $v0, $at, .L800C4324
/* 7E908 800C4108 3C03801D */   lui       $v1, %hi(D_801D7E14)
/* 7E90C 800C410C 3C03801D */  lui        $v1, %hi(D_801D7E14)
/* 7E910 800C4110 100001D5 */  b          .L800C4868
/* 7E914 800C4114 8C637E14 */   lw        $v1, %lo(D_801D7E14)($v1)
.L800C4118:
/* 7E918 800C4118 8C637E14 */  lw         $v1, %lo(D_801D7E14)($v1)
/* 7E91C 800C411C 240102EE */  addiu      $at, $zero, 0x2EE
/* 7E920 800C4120 10610009 */  beq        $v1, $at, .L800C4148
/* 7E924 800C4124 24010348 */   addiu     $at, $zero, 0x348
/* 7E928 800C4128 1061000C */  beq        $v1, $at, .L800C415C
/* 7E92C 800C412C 24010398 */   addiu     $at, $zero, 0x398
/* 7E930 800C4130 1061000F */  beq        $v1, $at, .L800C4170
/* 7E934 800C4134 240103CA */   addiu     $at, $zero, 0x3CA
/* 7E938 800C4138 50610015 */  beql       $v1, $at, .L800C4190
/* 7E93C 800C413C 28610349 */   slti      $at, $v1, 0x349
/* 7E940 800C4140 10000013 */  b          .L800C4190
/* 7E944 800C4144 28610349 */   slti      $at, $v1, 0x349
.L800C4148:
/* 7E948 800C4148 0C030594 */  jal        func_800C1650
/* 7E94C 800C414C 240404B0 */   addiu     $a0, $zero, 0x4B0
/* 7E950 800C4150 3C03801D */  lui        $v1, %hi(D_801D7E14)
/* 7E954 800C4154 1000000D */  b          .L800C418C
/* 7E958 800C4158 8C637E14 */   lw        $v1, %lo(D_801D7E14)($v1)
.L800C415C:
/* 7E95C 800C415C 0C030D40 */  jal        func_800C3500
/* 7E960 800C4160 00002025 */   or        $a0, $zero, $zero
/* 7E964 800C4164 3C03801D */  lui        $v1, %hi(D_801D7E14)
/* 7E968 800C4168 10000008 */  b          .L800C418C
/* 7E96C 800C416C 8C637E14 */   lw        $v1, %lo(D_801D7E14)($v1)
.L800C4170:
/* 7E970 800C4170 0C03101E */  jal        func_800C4078
/* 7E974 800C4174 00000000 */   nop
/* 7E978 800C4178 2404001D */  addiu      $a0, $zero, 0x1D
/* 7E97C 800C417C 0C030572 */  jal        func_800C15C8
/* 7E980 800C4180 00002825 */   or        $a1, $zero, $zero
/* 7E984 800C4184 3C03801D */  lui        $v1, %hi(D_801D7E14)
/* 7E988 800C4188 8C637E14 */  lw         $v1, %lo(D_801D7E14)($v1)
.L800C418C:
/* 7E98C 800C418C 28610349 */  slti       $at, $v1, 0x349
.L800C4190:
/* 7E990 800C4190 142001B5 */  bnez       $at, .L800C4868
/* 7E994 800C4194 28610398 */   slti      $at, $v1, 0x398
/* 7E998 800C4198 502001B4 */  beql       $at, $zero, .L800C486C
/* 7E99C 800C419C 24010014 */   addiu     $at, $zero, 0x14
/* 7E9A0 800C41A0 44833000 */  mtc1       $v1, $f6
/* 7E9A4 800C41A4 3C014466 */  lui        $at, (0x44660000 >> 16)
/* 7E9A8 800C41A8 44812000 */  mtc1       $at, $f4
/* 7E9AC 800C41AC 46803220 */  cvt.s.w    $f8, $f6
/* 7E9B0 800C41B0 3C0142A0 */  lui        $at, (0x42A00000 >> 16)
/* 7E9B4 800C41B4 44818000 */  mtc1       $at, $f16
/* 7E9B8 800C41B8 3C040100 */  lui        $a0, (0x1000B00 >> 16)
/* 7E9BC 800C41BC 34840B00 */  ori        $a0, $a0, (0x1000B00 & 0xFFFF)
/* 7E9C0 800C41C0 46082281 */  sub.s      $f10, $f4, $f8
/* 7E9C4 800C41C4 46105483 */  div.s      $f18, $f10, $f16
/* 7E9C8 800C41C8 44059000 */  mfc1       $a1, $f18
/* 7E9CC 800C41CC 0C0314E3 */  jal        func_800C538C
/* 7E9D0 800C41D0 00000000 */   nop
/* 7E9D4 800C41D4 3C0E801D */  lui        $t6, %hi(D_801D7E14)
/* 7E9D8 800C41D8 8DCE7E14 */  lw         $t6, %lo(D_801D7E14)($t6)
/* 7E9DC 800C41DC 3C014466 */  lui        $at, (0x44660000 >> 16)
/* 7E9E0 800C41E0 44813000 */  mtc1       $at, $f6
/* 7E9E4 800C41E4 448E2000 */  mtc1       $t6, $f4
/* 7E9E8 800C41E8 3C0142A0 */  lui        $at, (0x42A00000 >> 16)
/* 7E9EC 800C41EC 44818000 */  mtc1       $at, $f16
/* 7E9F0 800C41F0 46802220 */  cvt.s.w    $f8, $f4
/* 7E9F4 800C41F4 3C040100 */  lui        $a0, (0x1000A00 >> 16)
/* 7E9F8 800C41F8 34840A00 */  ori        $a0, $a0, (0x1000A00 & 0xFFFF)
/* 7E9FC 800C41FC 46083281 */  sub.s      $f10, $f6, $f8
/* 7EA00 800C4200 46105483 */  div.s      $f18, $f10, $f16
/* 7EA04 800C4204 44059000 */  mfc1       $a1, $f18
/* 7EA08 800C4208 0C0314E3 */  jal        func_800C538C
/* 7EA0C 800C420C 00000000 */   nop
/* 7EA10 800C4210 3C03801D */  lui        $v1, %hi(D_801D7E14)
/* 7EA14 800C4214 10000194 */  b          .L800C4868
/* 7EA18 800C4218 8C637E14 */   lw        $v1, %lo(D_801D7E14)($v1)
.L800C421C:
/* 7EA1C 800C421C 3C03801D */  lui        $v1, %hi(D_801D7E14)
/* 7EA20 800C4220 8C637E14 */  lw         $v1, %lo(D_801D7E14)($v1)
/* 7EA24 800C4224 2401028A */  addiu      $at, $zero, 0x28A
/* 7EA28 800C4228 10610009 */  beq        $v1, $at, .L800C4250
/* 7EA2C 800C422C 240102BC */   addiu     $at, $zero, 0x2BC
/* 7EA30 800C4230 1061000C */  beq        $v1, $at, .L800C4264
/* 7EA34 800C4234 240102E4 */   addiu     $at, $zero, 0x2E4
/* 7EA38 800C4238 1061000F */  beq        $v1, $at, .L800C4278
/* 7EA3C 800C423C 24010311 */   addiu     $at, $zero, 0x311
/* 7EA40 800C4240 50610015 */  beql       $v1, $at, .L800C4298
/* 7EA44 800C4244 2861026D */   slti      $at, $v1, 0x26D
/* 7EA48 800C4248 10000013 */  b          .L800C4298
/* 7EA4C 800C424C 2861026D */   slti      $at, $v1, 0x26D
.L800C4250:
/* 7EA50 800C4250 0C030594 */  jal        func_800C1650
/* 7EA54 800C4254 240403E8 */   addiu     $a0, $zero, 0x3E8
/* 7EA58 800C4258 3C03801D */  lui        $v1, %hi(D_801D7E14)
/* 7EA5C 800C425C 1000000D */  b          .L800C4294
/* 7EA60 800C4260 8C637E14 */   lw        $v1, %lo(D_801D7E14)($v1)
.L800C4264:
/* 7EA64 800C4264 0C030D40 */  jal        func_800C3500
/* 7EA68 800C4268 24040001 */   addiu     $a0, $zero, 0x1
/* 7EA6C 800C426C 3C03801D */  lui        $v1, %hi(D_801D7E14)
/* 7EA70 800C4270 10000008 */  b          .L800C4294
/* 7EA74 800C4274 8C637E14 */   lw        $v1, %lo(D_801D7E14)($v1)
.L800C4278:
/* 7EA78 800C4278 0C03101E */  jal        func_800C4078
/* 7EA7C 800C427C 00000000 */   nop
/* 7EA80 800C4280 2404001E */  addiu      $a0, $zero, 0x1E
/* 7EA84 800C4284 0C030572 */  jal        func_800C15C8
/* 7EA88 800C4288 00002825 */   or        $a1, $zero, $zero
/* 7EA8C 800C428C 3C03801D */  lui        $v1, %hi(D_801D7E14)
/* 7EA90 800C4290 8C637E14 */  lw         $v1, %lo(D_801D7E14)($v1)
.L800C4294:
/* 7EA94 800C4294 2861026D */  slti       $at, $v1, 0x26D
.L800C4298:
/* 7EA98 800C4298 14200173 */  bnez       $at, .L800C4868
/* 7EA9C 800C429C 286102E4 */   slti      $at, $v1, 0x2E4
/* 7EAA0 800C42A0 50200172 */  beql       $at, $zero, .L800C486C
/* 7EAA4 800C42A4 24010014 */   addiu     $at, $zero, 0x14
/* 7EAA8 800C42A8 44833000 */  mtc1       $v1, $f6
/* 7EAAC 800C42AC 3C01800F */  lui        $at, %hi(D_800EC598)
/* 7EAB0 800C42B0 C424C598 */  lwc1       $f4, %lo(D_800EC598)($at)
/* 7EAB4 800C42B4 46803220 */  cvt.s.w    $f8, $f6
/* 7EAB8 800C42B8 3C0142F0 */  lui        $at, (0x42F00000 >> 16)
/* 7EABC 800C42BC 44818000 */  mtc1       $at, $f16
/* 7EAC0 800C42C0 3C040100 */  lui        $a0, (0x1000B00 >> 16)
/* 7EAC4 800C42C4 34840B00 */  ori        $a0, $a0, (0x1000B00 & 0xFFFF)
/* 7EAC8 800C42C8 46082281 */  sub.s      $f10, $f4, $f8
/* 7EACC 800C42CC 46105483 */  div.s      $f18, $f10, $f16
/* 7EAD0 800C42D0 44059000 */  mfc1       $a1, $f18
/* 7EAD4 800C42D4 0C0314E3 */  jal        func_800C538C
/* 7EAD8 800C42D8 00000000 */   nop
/* 7EADC 800C42DC 3C0F801D */  lui        $t7, %hi(D_801D7E14)
/* 7EAE0 800C42E0 8DEF7E14 */  lw         $t7, %lo(D_801D7E14)($t7)
/* 7EAE4 800C42E4 3C01800F */  lui        $at, %hi(D_800EC59C)
/* 7EAE8 800C42E8 C426C59C */  lwc1       $f6, %lo(D_800EC59C)($at)
/* 7EAEC 800C42EC 448F2000 */  mtc1       $t7, $f4
/* 7EAF0 800C42F0 3C0142F0 */  lui        $at, (0x42F00000 >> 16)
/* 7EAF4 800C42F4 44818000 */  mtc1       $at, $f16
/* 7EAF8 800C42F8 46802220 */  cvt.s.w    $f8, $f4
/* 7EAFC 800C42FC 3C040100 */  lui        $a0, (0x1000A00 >> 16)
/* 7EB00 800C4300 34840A00 */  ori        $a0, $a0, (0x1000A00 & 0xFFFF)
/* 7EB04 800C4304 46083281 */  sub.s      $f10, $f6, $f8
/* 7EB08 800C4308 46105483 */  div.s      $f18, $f10, $f16
/* 7EB0C 800C430C 44059000 */  mfc1       $a1, $f18
/* 7EB10 800C4310 0C0314E3 */  jal        func_800C538C
/* 7EB14 800C4314 00000000 */   nop
/* 7EB18 800C4318 3C03801D */  lui        $v1, %hi(D_801D7E14)
/* 7EB1C 800C431C 10000152 */  b          .L800C4868
/* 7EB20 800C4320 8C637E14 */   lw        $v1, %lo(D_801D7E14)($v1)
.L800C4324:
/* 7EB24 800C4324 8C637E14 */  lw         $v1, %lo(D_801D7E14)($v1)
/* 7EB28 800C4328 24010258 */  addiu      $at, $zero, 0x258
/* 7EB2C 800C432C 10610009 */  beq        $v1, $at, .L800C4354
/* 7EB30 800C4330 240102A8 */   addiu     $at, $zero, 0x2A8
/* 7EB34 800C4334 1061000C */  beq        $v1, $at, .L800C4368
/* 7EB38 800C4338 240102D0 */   addiu     $at, $zero, 0x2D0
/* 7EB3C 800C433C 1061000F */  beq        $v1, $at, .L800C437C
/* 7EB40 800C4340 240102E4 */   addiu     $at, $zero, 0x2E4
/* 7EB44 800C4344 50610015 */  beql       $v1, $at, .L800C439C
/* 7EB48 800C4348 28610259 */   slti      $at, $v1, 0x259
/* 7EB4C 800C434C 10000013 */  b          .L800C439C
/* 7EB50 800C4350 28610259 */   slti      $at, $v1, 0x259
.L800C4354:
/* 7EB54 800C4354 0C030594 */  jal        func_800C1650
/* 7EB58 800C4358 240404B0 */   addiu     $a0, $zero, 0x4B0
/* 7EB5C 800C435C 3C03801D */  lui        $v1, %hi(D_801D7E14)
/* 7EB60 800C4360 1000000D */  b          .L800C4398
/* 7EB64 800C4364 8C637E14 */   lw        $v1, %lo(D_801D7E14)($v1)
.L800C4368:
/* 7EB68 800C4368 0C030D40 */  jal        func_800C3500
/* 7EB6C 800C436C 24040002 */   addiu     $a0, $zero, 0x2
/* 7EB70 800C4370 3C03801D */  lui        $v1, %hi(D_801D7E14)
/* 7EB74 800C4374 10000008 */  b          .L800C4398
/* 7EB78 800C4378 8C637E14 */   lw        $v1, %lo(D_801D7E14)($v1)
.L800C437C:
/* 7EB7C 800C437C 0C03101E */  jal        func_800C4078
/* 7EB80 800C4380 00000000 */   nop
/* 7EB84 800C4384 2404001F */  addiu      $a0, $zero, 0x1F
/* 7EB88 800C4388 0C030572 */  jal        func_800C15C8
/* 7EB8C 800C438C 00002825 */   or        $a1, $zero, $zero
/* 7EB90 800C4390 3C03801D */  lui        $v1, %hi(D_801D7E14)
/* 7EB94 800C4394 8C637E14 */  lw         $v1, %lo(D_801D7E14)($v1)
.L800C4398:
/* 7EB98 800C4398 28610259 */  slti       $at, $v1, 0x259
.L800C439C:
/* 7EB9C 800C439C 14200132 */  bnez       $at, .L800C4868
/* 7EBA0 800C43A0 286102D0 */   slti      $at, $v1, 0x2D0
/* 7EBA4 800C43A4 50200131 */  beql       $at, $zero, .L800C486C
/* 7EBA8 800C43A8 24010014 */   addiu     $at, $zero, 0x14
/* 7EBAC 800C43AC 44833000 */  mtc1       $v1, $f6
/* 7EBB0 800C43B0 3C014434 */  lui        $at, (0x44340000 >> 16)
/* 7EBB4 800C43B4 44812000 */  mtc1       $at, $f4
/* 7EBB8 800C43B8 46803220 */  cvt.s.w    $f8, $f6
/* 7EBBC 800C43BC 3C0142F0 */  lui        $at, (0x42F00000 >> 16)
/* 7EBC0 800C43C0 44818000 */  mtc1       $at, $f16
/* 7EBC4 800C43C4 3C040100 */  lui        $a0, (0x1000B00 >> 16)
/* 7EBC8 800C43C8 34840B00 */  ori        $a0, $a0, (0x1000B00 & 0xFFFF)
/* 7EBCC 800C43CC 46082281 */  sub.s      $f10, $f4, $f8
/* 7EBD0 800C43D0 46105483 */  div.s      $f18, $f10, $f16
/* 7EBD4 800C43D4 44059000 */  mfc1       $a1, $f18
/* 7EBD8 800C43D8 0C0314E3 */  jal        func_800C538C
/* 7EBDC 800C43DC 00000000 */   nop
/* 7EBE0 800C43E0 3C18801D */  lui        $t8, %hi(D_801D7E14)
/* 7EBE4 800C43E4 8F187E14 */  lw         $t8, %lo(D_801D7E14)($t8)
/* 7EBE8 800C43E8 3C014434 */  lui        $at, (0x44340000 >> 16)
/* 7EBEC 800C43EC 44813000 */  mtc1       $at, $f6
/* 7EBF0 800C43F0 44982000 */  mtc1       $t8, $f4
/* 7EBF4 800C43F4 3C0142F0 */  lui        $at, (0x42F00000 >> 16)
/* 7EBF8 800C43F8 44818000 */  mtc1       $at, $f16
/* 7EBFC 800C43FC 46802220 */  cvt.s.w    $f8, $f4
/* 7EC00 800C4400 3C040100 */  lui        $a0, (0x1000A00 >> 16)
/* 7EC04 800C4404 34840A00 */  ori        $a0, $a0, (0x1000A00 & 0xFFFF)
/* 7EC08 800C4408 46083281 */  sub.s      $f10, $f6, $f8
/* 7EC0C 800C440C 46105483 */  div.s      $f18, $f10, $f16
/* 7EC10 800C4410 44059000 */  mfc1       $a1, $f18
/* 7EC14 800C4414 0C0314E3 */  jal        func_800C538C
/* 7EC18 800C4418 00000000 */   nop
/* 7EC1C 800C441C 3C03801D */  lui        $v1, %hi(D_801D7E14)
/* 7EC20 800C4420 10000111 */  b          .L800C4868
/* 7EC24 800C4424 8C637E14 */   lw        $v1, %lo(D_801D7E14)($v1)
.L800C4428:
/* 7EC28 800C4428 3C02801D */  lui        $v0, %hi(D_801D7DC8)
/* 7EC2C 800C442C 8C427DC8 */  lw         $v0, %lo(D_801D7DC8)($v0)
/* 7EC30 800C4430 10400008 */  beqz       $v0, .L800C4454
/* 7EC34 800C4434 00000000 */   nop
/* 7EC38 800C4438 10430048 */  beq        $v0, $v1, .L800C455C
/* 7EC3C 800C443C 24010002 */   addiu     $at, $zero, 0x2
/* 7EC40 800C4440 10410088 */  beq        $v0, $at, .L800C4664
/* 7EC44 800C4444 3C03801D */   lui       $v1, %hi(D_801D7E14)
/* 7EC48 800C4448 3C03801D */  lui        $v1, %hi(D_801D7E14)
/* 7EC4C 800C444C 10000106 */  b          .L800C4868
/* 7EC50 800C4450 8C637E14 */   lw        $v1, %lo(D_801D7E14)($v1)
.L800C4454:
/* 7EC54 800C4454 3C03801D */  lui        $v1, %hi(D_801D7E14)
/* 7EC58 800C4458 8C637E14 */  lw         $v1, %lo(D_801D7E14)($v1)
/* 7EC5C 800C445C 240101B8 */  addiu      $at, $zero, 0x1B8
/* 7EC60 800C4460 10610009 */  beq        $v1, $at, .L800C4488
/* 7EC64 800C4464 240101EA */   addiu     $at, $zero, 0x1EA
/* 7EC68 800C4468 1061000C */  beq        $v1, $at, .L800C449C
/* 7EC6C 800C446C 2401024E */   addiu     $at, $zero, 0x24E
/* 7EC70 800C4470 1061000F */  beq        $v1, $at, .L800C44B0
/* 7EC74 800C4474 24010262 */   addiu     $at, $zero, 0x262
/* 7EC78 800C4478 50610015 */  beql       $v1, $at, .L800C44D0
/* 7EC7C 800C447C 28610191 */   slti      $at, $v1, 0x191
/* 7EC80 800C4480 10000013 */  b          .L800C44D0
/* 7EC84 800C4484 28610191 */   slti      $at, $v1, 0x191
.L800C4488:
/* 7EC88 800C4488 0C030594 */  jal        func_800C1650
/* 7EC8C 800C448C 24040708 */   addiu     $a0, $zero, 0x708
/* 7EC90 800C4490 3C03801D */  lui        $v1, %hi(D_801D7E14)
/* 7EC94 800C4494 1000000D */  b          .L800C44CC
/* 7EC98 800C4498 8C637E14 */   lw        $v1, %lo(D_801D7E14)($v1)
.L800C449C:
/* 7EC9C 800C449C 0C030D40 */  jal        func_800C3500
/* 7ECA0 800C44A0 00002025 */   or        $a0, $zero, $zero
/* 7ECA4 800C44A4 3C03801D */  lui        $v1, %hi(D_801D7E14)
/* 7ECA8 800C44A8 10000008 */  b          .L800C44CC
/* 7ECAC 800C44AC 8C637E14 */   lw        $v1, %lo(D_801D7E14)($v1)
.L800C44B0:
/* 7ECB0 800C44B0 0C03101E */  jal        func_800C4078
/* 7ECB4 800C44B4 00000000 */   nop
/* 7ECB8 800C44B8 2404001D */  addiu      $a0, $zero, 0x1D
/* 7ECBC 800C44BC 0C030572 */  jal        func_800C15C8
/* 7ECC0 800C44C0 00002825 */   or        $a1, $zero, $zero
/* 7ECC4 800C44C4 3C03801D */  lui        $v1, %hi(D_801D7E14)
/* 7ECC8 800C44C8 8C637E14 */  lw         $v1, %lo(D_801D7E14)($v1)
.L800C44CC:
/* 7ECCC 800C44CC 28610191 */  slti       $at, $v1, 0x191
.L800C44D0:
/* 7ECD0 800C44D0 142000E5 */  bnez       $at, .L800C4868
/* 7ECD4 800C44D4 2861024E */   slti      $at, $v1, 0x24E
/* 7ECD8 800C44D8 502000E4 */  beql       $at, $zero, .L800C486C
/* 7ECDC 800C44DC 24010014 */   addiu     $at, $zero, 0x14
/* 7ECE0 800C44E0 44833000 */  mtc1       $v1, $f6
/* 7ECE4 800C44E4 3C01800F */  lui        $at, %hi(D_800EC5A0)
/* 7ECE8 800C44E8 C424C5A0 */  lwc1       $f4, %lo(D_800EC5A0)($at)
/* 7ECEC 800C44EC 46803220 */  cvt.s.w    $f8, $f6
/* 7ECF0 800C44F0 3C01433E */  lui        $at, (0x433E0000 >> 16)
/* 7ECF4 800C44F4 44818000 */  mtc1       $at, $f16
/* 7ECF8 800C44F8 3C040100 */  lui        $a0, (0x1000B00 >> 16)
/* 7ECFC 800C44FC 34840B00 */  ori        $a0, $a0, (0x1000B00 & 0xFFFF)
/* 7ED00 800C4500 46082281 */  sub.s      $f10, $f4, $f8
/* 7ED04 800C4504 46105483 */  div.s      $f18, $f10, $f16
/* 7ED08 800C4508 44059000 */  mfc1       $a1, $f18
/* 7ED0C 800C450C 0C0314E3 */  jal        func_800C538C
/* 7ED10 800C4510 00000000 */   nop
/* 7ED14 800C4514 3C19801D */  lui        $t9, %hi(D_801D7E14)
/* 7ED18 800C4518 8F397E14 */  lw         $t9, %lo(D_801D7E14)($t9)
/* 7ED1C 800C451C 3C01800F */  lui        $at, %hi(D_800EC5A4)
/* 7ED20 800C4520 C426C5A4 */  lwc1       $f6, %lo(D_800EC5A4)($at)
/* 7ED24 800C4524 44992000 */  mtc1       $t9, $f4
/* 7ED28 800C4528 3C01433E */  lui        $at, (0x433E0000 >> 16)
/* 7ED2C 800C452C 44818000 */  mtc1       $at, $f16
/* 7ED30 800C4530 46802220 */  cvt.s.w    $f8, $f4
/* 7ED34 800C4534 3C040100 */  lui        $a0, (0x1000A00 >> 16)
/* 7ED38 800C4538 34840A00 */  ori        $a0, $a0, (0x1000A00 & 0xFFFF)
/* 7ED3C 800C453C 46083281 */  sub.s      $f10, $f6, $f8
/* 7ED40 800C4540 46105483 */  div.s      $f18, $f10, $f16
/* 7ED44 800C4544 44059000 */  mfc1       $a1, $f18
/* 7ED48 800C4548 0C0314E3 */  jal        func_800C538C
/* 7ED4C 800C454C 00000000 */   nop
/* 7ED50 800C4550 3C03801D */  lui        $v1, %hi(D_801D7E14)
/* 7ED54 800C4554 100000C4 */  b          .L800C4868
/* 7ED58 800C4558 8C637E14 */   lw        $v1, %lo(D_801D7E14)($v1)
.L800C455C:
/* 7ED5C 800C455C 3C03801D */  lui        $v1, %hi(D_801D7E14)
/* 7ED60 800C4560 8C637E14 */  lw         $v1, %lo(D_801D7E14)($v1)
/* 7ED64 800C4564 240101E0 */  addiu      $at, $zero, 0x1E0
/* 7ED68 800C4568 10610009 */  beq        $v1, $at, .L800C4590
/* 7ED6C 800C456C 24010208 */   addiu     $at, $zero, 0x208
/* 7ED70 800C4570 1061000C */  beq        $v1, $at, .L800C45A4
/* 7ED74 800C4574 24010244 */   addiu     $at, $zero, 0x244
/* 7ED78 800C4578 1061000F */  beq        $v1, $at, .L800C45B8
/* 7ED7C 800C457C 24010280 */   addiu     $at, $zero, 0x280
/* 7ED80 800C4580 50610015 */  beql       $v1, $at, .L800C45D8
/* 7ED84 800C4584 286101B9 */   slti      $at, $v1, 0x1B9
/* 7ED88 800C4588 10000013 */  b          .L800C45D8
/* 7ED8C 800C458C 286101B9 */   slti      $at, $v1, 0x1B9
.L800C4590:
/* 7ED90 800C4590 0C030594 */  jal        func_800C1650
/* 7ED94 800C4594 240403E8 */   addiu     $a0, $zero, 0x3E8
/* 7ED98 800C4598 3C03801D */  lui        $v1, %hi(D_801D7E14)
/* 7ED9C 800C459C 1000000D */  b          .L800C45D4
/* 7EDA0 800C45A0 8C637E14 */   lw        $v1, %lo(D_801D7E14)($v1)
.L800C45A4:
/* 7EDA4 800C45A4 0C030D40 */  jal        func_800C3500
/* 7EDA8 800C45A8 24040001 */   addiu     $a0, $zero, 0x1
/* 7EDAC 800C45AC 3C03801D */  lui        $v1, %hi(D_801D7E14)
/* 7EDB0 800C45B0 10000008 */  b          .L800C45D4
/* 7EDB4 800C45B4 8C637E14 */   lw        $v1, %lo(D_801D7E14)($v1)
.L800C45B8:
/* 7EDB8 800C45B8 0C03101E */  jal        func_800C4078
/* 7EDBC 800C45BC 00000000 */   nop
/* 7EDC0 800C45C0 2404001E */  addiu      $a0, $zero, 0x1E
/* 7EDC4 800C45C4 0C030572 */  jal        func_800C15C8
/* 7EDC8 800C45C8 00002825 */   or        $a1, $zero, $zero
/* 7EDCC 800C45CC 3C03801D */  lui        $v1, %hi(D_801D7E14)
/* 7EDD0 800C45D0 8C637E14 */  lw         $v1, %lo(D_801D7E14)($v1)
.L800C45D4:
/* 7EDD4 800C45D4 286101B9 */  slti       $at, $v1, 0x1B9
.L800C45D8:
/* 7EDD8 800C45D8 142000A3 */  bnez       $at, .L800C4868
/* 7EDDC 800C45DC 28610244 */   slti      $at, $v1, 0x244
/* 7EDE0 800C45E0 502000A2 */  beql       $at, $zero, .L800C486C
/* 7EDE4 800C45E4 24010014 */   addiu     $at, $zero, 0x14
/* 7EDE8 800C45E8 44833000 */  mtc1       $v1, $f6
/* 7EDEC 800C45EC 3C014411 */  lui        $at, (0x44110000 >> 16)
/* 7EDF0 800C45F0 44812000 */  mtc1       $at, $f4
/* 7EDF4 800C45F4 46803220 */  cvt.s.w    $f8, $f6
/* 7EDF8 800C45F8 3C01430C */  lui        $at, (0x430C0000 >> 16)
/* 7EDFC 800C45FC 44818000 */  mtc1       $at, $f16
/* 7EE00 800C4600 3C040100 */  lui        $a0, (0x1000B00 >> 16)
/* 7EE04 800C4604 34840B00 */  ori        $a0, $a0, (0x1000B00 & 0xFFFF)
/* 7EE08 800C4608 46082281 */  sub.s      $f10, $f4, $f8
/* 7EE0C 800C460C 46105483 */  div.s      $f18, $f10, $f16
/* 7EE10 800C4610 44059000 */  mfc1       $a1, $f18
/* 7EE14 800C4614 0C0314E3 */  jal        func_800C538C
/* 7EE18 800C4618 00000000 */   nop
/* 7EE1C 800C461C 3C08801D */  lui        $t0, %hi(D_801D7E14)
/* 7EE20 800C4620 8D087E14 */  lw         $t0, %lo(D_801D7E14)($t0)
/* 7EE24 800C4624 3C014411 */  lui        $at, (0x44110000 >> 16)
/* 7EE28 800C4628 44813000 */  mtc1       $at, $f6
/* 7EE2C 800C462C 44882000 */  mtc1       $t0, $f4
/* 7EE30 800C4630 3C01430C */  lui        $at, (0x430C0000 >> 16)
/* 7EE34 800C4634 44818000 */  mtc1       $at, $f16
/* 7EE38 800C4638 46802220 */  cvt.s.w    $f8, $f4
/* 7EE3C 800C463C 3C040100 */  lui        $a0, (0x1000A00 >> 16)
/* 7EE40 800C4640 34840A00 */  ori        $a0, $a0, (0x1000A00 & 0xFFFF)
/* 7EE44 800C4644 46083281 */  sub.s      $f10, $f6, $f8
/* 7EE48 800C4648 46105483 */  div.s      $f18, $f10, $f16
/* 7EE4C 800C464C 44059000 */  mfc1       $a1, $f18
/* 7EE50 800C4650 0C0314E3 */  jal        func_800C538C
/* 7EE54 800C4654 00000000 */   nop
/* 7EE58 800C4658 3C03801D */  lui        $v1, %hi(D_801D7E14)
/* 7EE5C 800C465C 10000082 */  b          .L800C4868
/* 7EE60 800C4660 8C637E14 */   lw        $v1, %lo(D_801D7E14)($v1)
.L800C4664:
/* 7EE64 800C4664 8C637E14 */  lw         $v1, %lo(D_801D7E14)($v1)
/* 7EE68 800C4668 24010208 */  addiu      $at, $zero, 0x208
/* 7EE6C 800C466C 10610009 */  beq        $v1, $at, .L800C4694
/* 7EE70 800C4670 24010226 */   addiu     $at, $zero, 0x226
/* 7EE74 800C4674 1061000C */  beq        $v1, $at, .L800C46A8
/* 7EE78 800C4678 24010258 */   addiu     $at, $zero, 0x258
/* 7EE7C 800C467C 1061000F */  beq        $v1, $at, .L800C46BC
/* 7EE80 800C4680 2401026C */   addiu     $at, $zero, 0x26C
/* 7EE84 800C4684 50610015 */  beql       $v1, $at, .L800C46DC
/* 7EE88 800C4688 286101E1 */   slti      $at, $v1, 0x1E1
/* 7EE8C 800C468C 10000013 */  b          .L800C46DC
/* 7EE90 800C4690 286101E1 */   slti      $at, $v1, 0x1E1
.L800C4694:
/* 7EE94 800C4694 0C030594 */  jal        func_800C1650
/* 7EE98 800C4698 24040320 */   addiu     $a0, $zero, 0x320
/* 7EE9C 800C469C 3C03801D */  lui        $v1, %hi(D_801D7E14)
/* 7EEA0 800C46A0 1000000D */  b          .L800C46D8
/* 7EEA4 800C46A4 8C637E14 */   lw        $v1, %lo(D_801D7E14)($v1)
.L800C46A8:
/* 7EEA8 800C46A8 0C030D40 */  jal        func_800C3500
/* 7EEAC 800C46AC 24040002 */   addiu     $a0, $zero, 0x2
/* 7EEB0 800C46B0 3C03801D */  lui        $v1, %hi(D_801D7E14)
/* 7EEB4 800C46B4 10000008 */  b          .L800C46D8
/* 7EEB8 800C46B8 8C637E14 */   lw        $v1, %lo(D_801D7E14)($v1)
.L800C46BC:
/* 7EEBC 800C46BC 0C03101E */  jal        func_800C4078
/* 7EEC0 800C46C0 00000000 */   nop
/* 7EEC4 800C46C4 2404001F */  addiu      $a0, $zero, 0x1F
/* 7EEC8 800C46C8 0C030572 */  jal        func_800C15C8
/* 7EECC 800C46CC 00002825 */   or        $a1, $zero, $zero
/* 7EED0 800C46D0 3C03801D */  lui        $v1, %hi(D_801D7E14)
/* 7EED4 800C46D4 8C637E14 */  lw         $v1, %lo(D_801D7E14)($v1)
.L800C46D8:
/* 7EED8 800C46D8 286101E1 */  slti       $at, $v1, 0x1E1
.L800C46DC:
/* 7EEDC 800C46DC 14200062 */  bnez       $at, .L800C4868
/* 7EEE0 800C46E0 28610258 */   slti      $at, $v1, 0x258
/* 7EEE4 800C46E4 50200061 */  beql       $at, $zero, .L800C486C
/* 7EEE8 800C46E8 24010014 */   addiu     $at, $zero, 0x14
/* 7EEEC 800C46EC 44833000 */  mtc1       $v1, $f6
/* 7EEF0 800C46F0 3C014416 */  lui        $at, (0x44160000 >> 16)
/* 7EEF4 800C46F4 44812000 */  mtc1       $at, $f4
/* 7EEF8 800C46F8 46803220 */  cvt.s.w    $f8, $f6
/* 7EEFC 800C46FC 3C0142F0 */  lui        $at, (0x42F00000 >> 16)
/* 7EF00 800C4700 44818000 */  mtc1       $at, $f16
/* 7EF04 800C4704 3C040100 */  lui        $a0, (0x1000B00 >> 16)
/* 7EF08 800C4708 34840B00 */  ori        $a0, $a0, (0x1000B00 & 0xFFFF)
/* 7EF0C 800C470C 46082281 */  sub.s      $f10, $f4, $f8
/* 7EF10 800C4710 46105483 */  div.s      $f18, $f10, $f16
/* 7EF14 800C4714 44059000 */  mfc1       $a1, $f18
/* 7EF18 800C4718 0C0314E3 */  jal        func_800C538C
/* 7EF1C 800C471C 00000000 */   nop
/* 7EF20 800C4720 3C09801D */  lui        $t1, %hi(D_801D7E14)
/* 7EF24 800C4724 8D297E14 */  lw         $t1, %lo(D_801D7E14)($t1)
/* 7EF28 800C4728 3C014416 */  lui        $at, (0x44160000 >> 16)
/* 7EF2C 800C472C 44813000 */  mtc1       $at, $f6
/* 7EF30 800C4730 44892000 */  mtc1       $t1, $f4
/* 7EF34 800C4734 3C0142F0 */  lui        $at, (0x42F00000 >> 16)
/* 7EF38 800C4738 44818000 */  mtc1       $at, $f16
/* 7EF3C 800C473C 46802220 */  cvt.s.w    $f8, $f4
/* 7EF40 800C4740 3C040100 */  lui        $a0, (0x1000A00 >> 16)
/* 7EF44 800C4744 34840A00 */  ori        $a0, $a0, (0x1000A00 & 0xFFFF)
/* 7EF48 800C4748 46083281 */  sub.s      $f10, $f6, $f8
/* 7EF4C 800C474C 46105483 */  div.s      $f18, $f10, $f16
/* 7EF50 800C4750 44059000 */  mfc1       $a1, $f18
/* 7EF54 800C4754 0C0314E3 */  jal        func_800C538C
/* 7EF58 800C4758 00000000 */   nop
/* 7EF5C 800C475C 3C03801D */  lui        $v1, %hi(D_801D7E14)
/* 7EF60 800C4760 10000041 */  b          .L800C4868
/* 7EF64 800C4764 8C637E14 */   lw        $v1, %lo(D_801D7E14)($v1)
.L800C4768:
/* 7EF68 800C4768 8C637E14 */  lw         $v1, %lo(D_801D7E14)($v1)
/* 7EF6C 800C476C 24010190 */  addiu      $at, $zero, 0x190
/* 7EF70 800C4770 10610009 */  beq        $v1, $at, .L800C4798
/* 7EF74 800C4774 240101E0 */   addiu     $at, $zero, 0x1E0
/* 7EF78 800C4778 1061000C */  beq        $v1, $at, .L800C47AC
/* 7EF7C 800C477C 24010208 */   addiu     $at, $zero, 0x208
/* 7EF80 800C4780 1061000F */  beq        $v1, $at, .L800C47C0
/* 7EF84 800C4784 2401026C */   addiu     $at, $zero, 0x26C
/* 7EF88 800C4788 50610015 */  beql       $v1, $at, .L800C47E0
/* 7EF8C 800C478C 28610169 */   slti      $at, $v1, 0x169
/* 7EF90 800C4790 10000013 */  b          .L800C47E0
/* 7EF94 800C4794 28610169 */   slti      $at, $v1, 0x169
.L800C4798:
/* 7EF98 800C4798 0C030594 */  jal        func_800C1650
/* 7EF9C 800C479C 24040320 */   addiu     $a0, $zero, 0x320
/* 7EFA0 800C47A0 3C03801D */  lui        $v1, %hi(D_801D7E14)
/* 7EFA4 800C47A4 1000000D */  b          .L800C47DC
/* 7EFA8 800C47A8 8C637E14 */   lw        $v1, %lo(D_801D7E14)($v1)
.L800C47AC:
/* 7EFAC 800C47AC 0C030D40 */  jal        func_800C3500
/* 7EFB0 800C47B0 24040003 */   addiu     $a0, $zero, 0x3
/* 7EFB4 800C47B4 3C03801D */  lui        $v1, %hi(D_801D7E14)
/* 7EFB8 800C47B8 10000008 */  b          .L800C47DC
/* 7EFBC 800C47BC 8C637E14 */   lw        $v1, %lo(D_801D7E14)($v1)
.L800C47C0:
/* 7EFC0 800C47C0 0C03101E */  jal        func_800C4078
/* 7EFC4 800C47C4 00000000 */   nop
/* 7EFC8 800C47C8 24040020 */  addiu      $a0, $zero, 0x20
/* 7EFCC 800C47CC 0C030572 */  jal        func_800C15C8
/* 7EFD0 800C47D0 00002825 */   or        $a1, $zero, $zero
/* 7EFD4 800C47D4 3C03801D */  lui        $v1, %hi(D_801D7E14)
/* 7EFD8 800C47D8 8C637E14 */  lw         $v1, %lo(D_801D7E14)($v1)
.L800C47DC:
/* 7EFDC 800C47DC 28610169 */  slti       $at, $v1, 0x169
.L800C47E0:
/* 7EFE0 800C47E0 14200021 */  bnez       $at, .L800C4868
/* 7EFE4 800C47E4 286101E0 */   slti      $at, $v1, 0x1E0
/* 7EFE8 800C47E8 50200020 */  beql       $at, $zero, .L800C486C
/* 7EFEC 800C47EC 24010014 */   addiu     $at, $zero, 0x14
/* 7EFF0 800C47F0 44833000 */  mtc1       $v1, $f6
/* 7EFF4 800C47F4 3C0143F0 */  lui        $at, (0x43F00000 >> 16)
/* 7EFF8 800C47F8 44812000 */  mtc1       $at, $f4
/* 7EFFC 800C47FC 46803220 */  cvt.s.w    $f8, $f6
/* 7F000 800C4800 3C0142F0 */  lui        $at, (0x42F00000 >> 16)
/* 7F004 800C4804 44818000 */  mtc1       $at, $f16
/* 7F008 800C4808 3C040100 */  lui        $a0, (0x1000B00 >> 16)
/* 7F00C 800C480C 34840B00 */  ori        $a0, $a0, (0x1000B00 & 0xFFFF)
/* 7F010 800C4810 46082281 */  sub.s      $f10, $f4, $f8
/* 7F014 800C4814 46105483 */  div.s      $f18, $f10, $f16
/* 7F018 800C4818 44059000 */  mfc1       $a1, $f18
/* 7F01C 800C481C 0C0314E3 */  jal        func_800C538C
/* 7F020 800C4820 00000000 */   nop
/* 7F024 800C4824 3C0A801D */  lui        $t2, %hi(D_801D7E14)
/* 7F028 800C4828 8D4A7E14 */  lw         $t2, %lo(D_801D7E14)($t2)
/* 7F02C 800C482C 3C0143F0 */  lui        $at, (0x43F00000 >> 16)
/* 7F030 800C4830 44813000 */  mtc1       $at, $f6
/* 7F034 800C4834 448A2000 */  mtc1       $t2, $f4
/* 7F038 800C4838 3C0142F0 */  lui        $at, (0x42F00000 >> 16)
/* 7F03C 800C483C 44818000 */  mtc1       $at, $f16
/* 7F040 800C4840 46802220 */  cvt.s.w    $f8, $f4
/* 7F044 800C4844 3C040100 */  lui        $a0, (0x1000A00 >> 16)
/* 7F048 800C4848 34840A00 */  ori        $a0, $a0, (0x1000A00 & 0xFFFF)
/* 7F04C 800C484C 46083281 */  sub.s      $f10, $f6, $f8
/* 7F050 800C4850 46105483 */  div.s      $f18, $f10, $f16
/* 7F054 800C4854 44059000 */  mfc1       $a1, $f18
/* 7F058 800C4858 0C0314E3 */  jal        func_800C538C
/* 7F05C 800C485C 00000000 */   nop
/* 7F060 800C4860 3C03801D */  lui        $v1, %hi(D_801D7E14)
/* 7F064 800C4864 8C637E14 */  lw         $v1, %lo(D_801D7E14)($v1)
.L800C4868:
/* 7F068 800C4868 24010014 */  addiu      $at, $zero, 0x14
.L800C486C:
/* 7F06C 800C486C 14610005 */  bne        $v1, $at, .L800C4884
/* 7F070 800C4870 2404001C */   addiu     $a0, $zero, 0x1C
/* 7F074 800C4874 0C030540 */  jal        func_800C1500
/* 7F078 800C4878 24050014 */   addiu     $a1, $zero, 0x14
/* 7F07C 800C487C 3C03801D */  lui        $v1, %hi(D_801D7E14)
/* 7F080 800C4880 8C637E14 */  lw         $v1, %lo(D_801D7E14)($v1)
.L800C4884:
/* 7F084 800C4884 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7F088 800C4888 246B0001 */  addiu      $t3, $v1, 0x1
/* 7F08C 800C488C 3C01801D */  lui        $at, %hi(D_801D7E14)
/* 7F090 800C4890 AC2B7E14 */  sw         $t3, %lo(D_801D7E14)($at)
/* 7F094 800C4894 03E00008 */  jr         $ra
/* 7F098 800C4898 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800C489C
/* 7F09C 800C489C 3C02801D */  lui        $v0, %hi(D_801D7DD4)
/* 7F0A0 800C48A0 8C427DD4 */  lw         $v0, %lo(D_801D7DD4)($v0)
/* 7F0A4 800C48A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7F0A8 800C48A8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7F0AC 800C48AC 10400007 */  beqz       $v0, .L800C48CC
/* 7F0B0 800C48B0 24030001 */   addiu     $v1, $zero, 0x1
/* 7F0B4 800C48B4 1043001C */  beq        $v0, $v1, .L800C4928
/* 7F0B8 800C48B8 24010002 */   addiu     $at, $zero, 0x2
/* 7F0BC 800C48BC 10410030 */  beq        $v0, $at, .L800C4980
/* 7F0C0 800C48C0 00000000 */   nop
/* 7F0C4 800C48C4 1000002E */  b          .L800C4980
/* 7F0C8 800C48C8 00000000 */   nop
.L800C48CC:
/* 7F0CC 800C48CC 3C02801D */  lui        $v0, %hi(D_801D7DC8)
/* 7F0D0 800C48D0 8C427DC8 */  lw         $v0, %lo(D_801D7DC8)($v0)
/* 7F0D4 800C48D4 24030001 */  addiu      $v1, $zero, 0x1
/* 7F0D8 800C48D8 10400007 */  beqz       $v0, .L800C48F8
/* 7F0DC 800C48DC 00000000 */   nop
/* 7F0E0 800C48E0 10430009 */  beq        $v0, $v1, .L800C4908
/* 7F0E4 800C48E4 24010002 */   addiu     $at, $zero, 0x2
/* 7F0E8 800C48E8 1041000B */  beq        $v0, $at, .L800C4918
/* 7F0EC 800C48EC 00000000 */   nop
/* 7F0F0 800C48F0 10000026 */  b          .L800C498C
/* 7F0F4 800C48F4 8FBF0014 */   lw        $ra, 0x14($sp)
.L800C48F8:
/* 7F0F8 800C48F8 0C030D40 */  jal        func_800C3500
/* 7F0FC 800C48FC 24040005 */   addiu     $a0, $zero, 0x5
/* 7F100 800C4900 10000022 */  b          .L800C498C
/* 7F104 800C4904 8FBF0014 */   lw        $ra, 0x14($sp)
.L800C4908:
/* 7F108 800C4908 0C030D40 */  jal        func_800C3500
/* 7F10C 800C490C 24040006 */   addiu     $a0, $zero, 0x6
/* 7F110 800C4910 1000001E */  b          .L800C498C
/* 7F114 800C4914 8FBF0014 */   lw        $ra, 0x14($sp)
.L800C4918:
/* 7F118 800C4918 0C030D40 */  jal        func_800C3500
/* 7F11C 800C491C 24040007 */   addiu     $a0, $zero, 0x7
/* 7F120 800C4920 1000001A */  b          .L800C498C
/* 7F124 800C4924 8FBF0014 */   lw        $ra, 0x14($sp)
.L800C4928:
/* 7F128 800C4928 3C02801D */  lui        $v0, %hi(D_801D7DC8)
/* 7F12C 800C492C 8C427DC8 */  lw         $v0, %lo(D_801D7DC8)($v0)
/* 7F130 800C4930 10400007 */  beqz       $v0, .L800C4950
/* 7F134 800C4934 00000000 */   nop
/* 7F138 800C4938 10430009 */  beq        $v0, $v1, .L800C4960
/* 7F13C 800C493C 24010002 */   addiu     $at, $zero, 0x2
/* 7F140 800C4940 1041000B */  beq        $v0, $at, .L800C4970
/* 7F144 800C4944 00000000 */   nop
/* 7F148 800C4948 10000010 */  b          .L800C498C
/* 7F14C 800C494C 8FBF0014 */   lw        $ra, 0x14($sp)
.L800C4950:
/* 7F150 800C4950 0C030D40 */  jal        func_800C3500
/* 7F154 800C4954 24040004 */   addiu     $a0, $zero, 0x4
/* 7F158 800C4958 1000000C */  b          .L800C498C
/* 7F15C 800C495C 8FBF0014 */   lw        $ra, 0x14($sp)
.L800C4960:
/* 7F160 800C4960 0C030D40 */  jal        func_800C3500
/* 7F164 800C4964 24040006 */   addiu     $a0, $zero, 0x6
/* 7F168 800C4968 10000008 */  b          .L800C498C
/* 7F16C 800C496C 8FBF0014 */   lw        $ra, 0x14($sp)
.L800C4970:
/* 7F170 800C4970 0C030D40 */  jal        func_800C3500
/* 7F174 800C4974 24040007 */   addiu     $a0, $zero, 0x7
/* 7F178 800C4978 10000004 */  b          .L800C498C
/* 7F17C 800C497C 8FBF0014 */   lw        $ra, 0x14($sp)
.L800C4980:
/* 7F180 800C4980 0C030D40 */  jal        func_800C3500
/* 7F184 800C4984 24040007 */   addiu     $a0, $zero, 0x7
/* 7F188 800C4988 8FBF0014 */  lw         $ra, 0x14($sp)
.L800C498C:
/* 7F18C 800C498C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7F190 800C4990 03E00008 */  jr         $ra
/* 7F194 800C4994 00000000 */   nop

glabel func_800C4998
/* 7F198 800C4998 240E0007 */  addiu      $t6, $zero, 0x7
/* 7F19C 800C499C 3C01800E */  lui        $at, %hi(D_800E7C94)
/* 7F1A0 800C49A0 3C18800E */  lui        $t8, %hi(D_800E7CF8)
/* 7F1A4 800C49A4 A02E7C94 */  sb         $t6, %lo(D_800E7C94)($at)
/* 7F1A8 800C49A8 0305C021 */  addu       $t8, $t8, $a1
/* 7F1AC 800C49AC 83187CF8 */  lb         $t8, %lo(D_800E7CF8)($t8)
/* 7F1B0 800C49B0 3C01800E */  lui        $at, %hi(D_800E7CB8)
/* 7F1B4 800C49B4 240F0001 */  addiu      $t7, $zero, 0x1
/* 7F1B8 800C49B8 3C19800E */  lui        $t9, %hi(D_800E7D04)
/* 7F1BC 800C49BC AC2F7CB8 */  sw         $t7, %lo(D_800E7CB8)($at)
/* 7F1C0 800C49C0 0325C821 */  addu       $t9, $t9, $a1
/* 7F1C4 800C49C4 83397D04 */  lb         $t9, %lo(D_800E7D04)($t9)
/* 7F1C8 800C49C8 3C01801D */  lui        $at, %hi(D_801D7E08)
/* 7F1CC 800C49CC 3C08800E */  lui        $t0, %hi(D_800E7D10)
/* 7F1D0 800C49D0 AC387E08 */  sw         $t8, %lo(D_801D7E08)($at)
/* 7F1D4 800C49D4 3C01801D */  lui        $at, %hi(D_801D7E0C)
/* 7F1D8 800C49D8 25087D10 */  addiu      $t0, $t0, %lo(D_800E7D10)
/* 7F1DC 800C49DC 00A81021 */  addu       $v0, $a1, $t0
/* 7F1E0 800C49E0 AC397E0C */  sw         $t9, %lo(D_801D7E0C)($at)
/* 7F1E4 800C49E4 80490000 */  lb         $t1, 0x0($v0)
/* 7F1E8 800C49E8 3C01801D */  lui        $at, %hi(D_801D7E10)
/* 7F1EC 800C49EC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7F1F0 800C49F0 AC297E10 */  sw         $t1, %lo(D_801D7E10)($at)
/* 7F1F4 800C49F4 3C01801D */  lui        $at, %hi(D_801D7DC0)
/* 7F1F8 800C49F8 AC247DC0 */  sw         $a0, %lo(D_801D7DC0)($at)
/* 7F1FC 800C49FC AFBF0014 */  sw         $ra, 0x14($sp)
/* 7F200 800C4A00 3C01801D */  lui        $at, %hi(D_801D7DC4)
/* 7F204 800C4A04 AC257DC4 */  sw         $a1, %lo(D_801D7DC4)($at)
/* 7F208 800C4A08 240400F0 */  addiu      $a0, $zero, 0xF0
/* 7F20C 800C4A0C AFA2001C */  sw         $v0, 0x1C($sp)
/* 7F210 800C4A10 0C030594 */  jal        func_800C1650
/* 7F214 800C4A14 AFA5002C */   sw        $a1, 0x2C($sp)
/* 7F218 800C4A18 0C030522 */  jal        func_800C1488
/* 7F21C 800C4A1C 00000000 */   nop
/* 7F220 800C4A20 0C0304EB */  jal        func_800C13AC
/* 7F224 800C4A24 00002025 */   or        $a0, $zero, $zero
/* 7F228 800C4A28 3C02801D */  lui        $v0, %hi(D_801D7DC0)
/* 7F22C 800C4A2C 8C427DC0 */  lw         $v0, %lo(D_801D7DC0)($v0)
/* 7F230 800C4A30 3C01800E */  lui        $at, %hi(D_800E7C90)
/* 7F234 800C4A34 240A0008 */  addiu      $t2, $zero, 0x8
/* 7F238 800C4A38 10400009 */  beqz       $v0, .L800C4A60
/* 7F23C 800C4A3C 3C040300 */   lui       $a0, (0x3000000 >> 16)
/* 7F240 800C4A40 24030001 */  addiu      $v1, $zero, 0x1
/* 7F244 800C4A44 1043003D */  beq        $v0, $v1, .L800C4B3C
/* 7F248 800C4A48 3C01800E */   lui       $at, %hi(D_800E7C90)
/* 7F24C 800C4A4C 24010003 */  addiu      $at, $zero, 0x3
/* 7F250 800C4A50 1041005E */  beq        $v0, $at, .L800C4BCC
/* 7F254 800C4A54 240E0004 */   addiu     $t6, $zero, 0x4
/* 7F258 800C4A58 10000076 */  b          .L800C4C34
/* 7F25C 800C4A5C 8FBF0014 */   lw        $ra, 0x14($sp)
.L800C4A60:
/* 7F260 800C4A60 A0207C90 */  sb         $zero, %lo(D_800E7C90)($at)
/* 7F264 800C4A64 3C01801D */  lui        $at, %hi(D_801D7E05)
/* 7F268 800C4A68 A02A7E05 */  sb         $t2, %lo(D_801D7E05)($at)
/* 7F26C 800C4A6C 0C0314F5 */  jal        func_800C53D4
/* 7F270 800C4A70 24050040 */   addiu     $a1, $zero, 0x40
/* 7F274 800C4A74 3C040300 */  lui        $a0, (0x3000100 >> 16)
/* 7F278 800C4A78 34840100 */  ori        $a0, $a0, (0x3000100 & 0xFFFF)
/* 7F27C 800C4A7C 0C0314F5 */  jal        func_800C53D4
/* 7F280 800C4A80 24050040 */   addiu     $a1, $zero, 0x40
/* 7F284 800C4A84 3C040300 */  lui        $a0, (0x3000200 >> 16)
/* 7F288 800C4A88 34840200 */  ori        $a0, $a0, (0x3000200 & 0xFFFF)
/* 7F28C 800C4A8C 0C0314F5 */  jal        func_800C53D4
/* 7F290 800C4A90 24050040 */   addiu     $a1, $zero, 0x40
/* 7F294 800C4A94 3C040300 */  lui        $a0, (0x3000300 >> 16)
/* 7F298 800C4A98 34840300 */  ori        $a0, $a0, (0x3000300 & 0xFFFF)
/* 7F29C 800C4A9C 0C0314F5 */  jal        func_800C53D4
/* 7F2A0 800C4AA0 24050040 */   addiu     $a1, $zero, 0x40
/* 7F2A4 800C4AA4 3C040300 */  lui        $a0, (0x3000400 >> 16)
/* 7F2A8 800C4AA8 34840400 */  ori        $a0, $a0, (0x3000400 & 0xFFFF)
/* 7F2AC 800C4AAC 0C0314F5 */  jal        func_800C53D4
/* 7F2B0 800C4AB0 24050040 */   addiu     $a1, $zero, 0x40
/* 7F2B4 800C4AB4 3C040300 */  lui        $a0, (0x3000500 >> 16)
/* 7F2B8 800C4AB8 34840500 */  ori        $a0, $a0, (0x3000500 & 0xFFFF)
/* 7F2BC 800C4ABC 0C0314F5 */  jal        func_800C53D4
/* 7F2C0 800C4AC0 24050040 */   addiu     $a1, $zero, 0x40
/* 7F2C4 800C4AC4 8FAB002C */  lw         $t3, 0x2C($sp)
/* 7F2C8 800C4AC8 3C040200 */  lui        $a0, (0x2000300 >> 16)
/* 7F2CC 800C4ACC 34840300 */  ori        $a0, $a0, (0x2000300 & 0xFFFF)
/* 7F2D0 800C4AD0 1560000B */  bnez       $t3, .L800C4B00
/* 7F2D4 800C4AD4 00000000 */   nop
/* 7F2D8 800C4AD8 0C0314E3 */  jal        func_800C538C
/* 7F2DC 800C4ADC 24050000 */   addiu     $a1, $zero, 0x0
/* 7F2E0 800C4AE0 3C040200 */  lui        $a0, (0x2000500 >> 16)
/* 7F2E4 800C4AE4 3C053F49 */  lui        $a1, (0x3F499326 >> 16)
/* 7F2E8 800C4AE8 34A59326 */  ori        $a1, $a1, (0x3F499326 & 0xFFFF)
/* 7F2EC 800C4AEC 0C0314E3 */  jal        func_800C538C
/* 7F2F0 800C4AF0 34840500 */   ori       $a0, $a0, (0x2000500 & 0xFFFF)
/* 7F2F4 800C4AF4 3C01801D */  lui        $at, %hi(D_801D7E05)
/* 7F2F8 800C4AF8 1000004D */  b          .L800C4C30
/* 7F2FC 800C4AFC A0207E05 */   sb        $zero, %lo(D_801D7E05)($at)
.L800C4B00:
/* 7F300 800C4B00 0C0307AE */  jal        func_800C1EB8
/* 7F304 800C4B04 24040010 */   addiu     $a0, $zero, 0x10
/* 7F308 800C4B08 0C02FED4 */  jal        func_800BFB50
/* 7F30C 800C4B0C 00000000 */   nop
/* 7F310 800C4B10 8FAC002C */  lw         $t4, 0x2C($sp)
/* 7F314 800C4B14 24010007 */  addiu      $at, $zero, 0x7
/* 7F318 800C4B18 8FA4002C */  lw         $a0, 0x2C($sp)
/* 7F31C 800C4B1C 15810003 */  bne        $t4, $at, .L800C4B2C
/* 7F320 800C4B20 00000000 */   nop
/* 7F324 800C4B24 10000001 */  b          .L800C4B2C
/* 7F328 800C4B28 24040009 */   addiu     $a0, $zero, 0x9
.L800C4B2C:
/* 7F32C 800C4B2C 0C030D49 */  jal        func_800C3524
/* 7F330 800C4B30 2405000F */   addiu     $a1, $zero, 0xF
/* 7F334 800C4B34 1000003F */  b          .L800C4C34
/* 7F338 800C4B38 8FBF0014 */   lw        $ra, 0x14($sp)
.L800C4B3C:
/* 7F33C 800C4B3C A0237C90 */  sb         $v1, %lo(D_800E7C90)($at)
/* 7F340 800C4B40 3C01801D */  lui        $at, %hi(D_801D7E05)
/* 7F344 800C4B44 240D0004 */  addiu      $t5, $zero, 0x4
/* 7F348 800C4B48 A02D7E05 */  sb         $t5, %lo(D_801D7E05)($at)
/* 7F34C 800C4B4C 3C040300 */  lui        $a0, (0x3000000 >> 16)
/* 7F350 800C4B50 0C0314F5 */  jal        func_800C53D4
/* 7F354 800C4B54 00002825 */   or        $a1, $zero, $zero
/* 7F358 800C4B58 3C040300 */  lui        $a0, (0x3000100 >> 16)
/* 7F35C 800C4B5C 34840100 */  ori        $a0, $a0, (0x3000100 & 0xFFFF)
/* 7F360 800C4B60 0C0314F5 */  jal        func_800C53D4
/* 7F364 800C4B64 00002825 */   or        $a1, $zero, $zero
/* 7F368 800C4B68 3C040300 */  lui        $a0, (0x3000200 >> 16)
/* 7F36C 800C4B6C 34840200 */  ori        $a0, $a0, (0x3000200 & 0xFFFF)
/* 7F370 800C4B70 0C0314F5 */  jal        func_800C53D4
/* 7F374 800C4B74 00002825 */   or        $a1, $zero, $zero
/* 7F378 800C4B78 3C040300 */  lui        $a0, (0x3000300 >> 16)
/* 7F37C 800C4B7C 34840300 */  ori        $a0, $a0, (0x3000300 & 0xFFFF)
/* 7F380 800C4B80 0C0314F5 */  jal        func_800C53D4
/* 7F384 800C4B84 2405007F */   addiu     $a1, $zero, 0x7F
/* 7F388 800C4B88 3C040300 */  lui        $a0, (0x3000400 >> 16)
/* 7F38C 800C4B8C 34840400 */  ori        $a0, $a0, (0x3000400 & 0xFFFF)
/* 7F390 800C4B90 0C0314F5 */  jal        func_800C53D4
/* 7F394 800C4B94 2405007F */   addiu     $a1, $zero, 0x7F
/* 7F398 800C4B98 3C040300 */  lui        $a0, (0x3000500 >> 16)
/* 7F39C 800C4B9C 34840500 */  ori        $a0, $a0, (0x3000500 & 0xFFFF)
/* 7F3A0 800C4BA0 0C0314F5 */  jal        func_800C53D4
/* 7F3A4 800C4BA4 2405007F */   addiu     $a1, $zero, 0x7F
/* 7F3A8 800C4BA8 3C040200 */  lui        $a0, (0x2000300 >> 16)
/* 7F3AC 800C4BAC 3C053EF1 */  lui        $a1, (0x3EF1E3C8 >> 16)
/* 7F3B0 800C4BB0 34A5E3C8 */  ori        $a1, $a1, (0x3EF1E3C8 & 0xFFFF)
/* 7F3B4 800C4BB4 0C0314E3 */  jal        func_800C538C
/* 7F3B8 800C4BB8 34840300 */   ori       $a0, $a0, (0x2000300 & 0xFFFF)
/* 7F3BC 800C4BBC 0C0307AE */  jal        func_800C1EB8
/* 7F3C0 800C4BC0 24040002 */   addiu     $a0, $zero, 0x2
/* 7F3C4 800C4BC4 1000001B */  b          .L800C4C34
/* 7F3C8 800C4BC8 8FBF0014 */   lw        $ra, 0x14($sp)
.L800C4BCC:
/* 7F3CC 800C4BCC 3C01800E */  lui        $at, %hi(D_800E7C90)
/* 7F3D0 800C4BD0 A0207C90 */  sb         $zero, %lo(D_800E7C90)($at)
/* 7F3D4 800C4BD4 3C01801D */  lui        $at, %hi(D_801D7E05)
/* 7F3D8 800C4BD8 3C040200 */  lui        $a0, (0x2000300 >> 16)
/* 7F3DC 800C4BDC A02E7E05 */  sb         $t6, %lo(D_801D7E05)($at)
/* 7F3E0 800C4BE0 34840300 */  ori        $a0, $a0, (0x2000300 & 0xFFFF)
/* 7F3E4 800C4BE4 0C0314E3 */  jal        func_800C538C
/* 7F3E8 800C4BE8 24050000 */   addiu     $a1, $zero, 0x0
/* 7F3EC 800C4BEC 8FAF001C */  lw         $t7, 0x1C($sp)
/* 7F3F0 800C4BF0 3C18800E */  lui        $t8, %hi(D_800E7D10)
/* 7F3F4 800C4BF4 27187D10 */  addiu      $t8, $t8, %lo(D_800E7D10)
/* 7F3F8 800C4BF8 15F80008 */  bne        $t7, $t8, .L800C4C1C
/* 7F3FC 800C4BFC 3C040200 */   lui       $a0, (0x2000500 >> 16)
/* 7F400 800C4C00 3C040200 */  lui        $a0, (0x2000500 >> 16)
/* 7F404 800C4C04 3C053F49 */  lui        $a1, (0x3F499326 >> 16)
/* 7F408 800C4C08 34A59326 */  ori        $a1, $a1, (0x3F499326 & 0xFFFF)
/* 7F40C 800C4C0C 0C0314E3 */  jal        func_800C538C
/* 7F410 800C4C10 34840500 */   ori       $a0, $a0, (0x2000500 & 0xFFFF)
/* 7F414 800C4C14 10000004 */  b          .L800C4C28
/* 7F418 800C4C18 00000000 */   nop
.L800C4C1C:
/* 7F41C 800C4C1C 34840500 */  ori        $a0, $a0, (0x2000500 & 0xFFFF)
/* 7F420 800C4C20 0C0314E3 */  jal        func_800C538C
/* 7F424 800C4C24 24050000 */   addiu     $a1, $zero, 0x0
.L800C4C28:
/* 7F428 800C4C28 0C0307AE */  jal        func_800C1EB8
/* 7F42C 800C4C2C 24040002 */   addiu     $a0, $zero, 0x2
.L800C4C30:
/* 7F430 800C4C30 8FBF0014 */  lw         $ra, 0x14($sp)
.L800C4C34:
/* 7F434 800C4C34 27BD0028 */  addiu      $sp, $sp, 0x28
/* 7F438 800C4C38 03E00008 */  jr         $ra
/* 7F43C 800C4C3C 00000000 */   nop

glabel func_800C4C40
/* 7F440 800C4C40 3C038004 */  lui        $v1, %hi(D_80045550)
/* 7F444 800C4C44 24635550 */  addiu      $v1, $v1, %lo(D_80045550)
/* 7F448 800C4C48 8C620000 */  lw         $v0, 0x0($v1)
/* 7F44C 800C4C4C 3C188004 */  lui        $t8, %hi(D_80045520)
/* 7F450 800C4C50 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 7F454 800C4C54 244E0001 */  addiu      $t6, $v0, 0x1
/* 7F458 800C4C58 AC6E0000 */  sw         $t6, 0x0($v1)
/* 7F45C 800C4C5C 8C6F0000 */  lw         $t7, 0x0($v1)
/* 7F460 800C4C60 87185520 */  lh         $t8, %lo(D_80045520)($t8)
/* 7F464 800C4C64 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7F468 800C4C68 3C04800F */  lui        $a0, %hi(D_800E85F8)
/* 7F46C 800C4C6C 01F8001A */  div        $zero, $t7, $t8
/* 7F470 800C4C70 0000C810 */  mfhi       $t9
/* 7F474 800C4C74 00003025 */  or         $a2, $zero, $zero
/* 7F478 800C4C78 17000002 */  bnez       $t8, .L800C4C84
/* 7F47C 800C4C7C 00000000 */   nop
/* 7F480 800C4C80 0007000D */  break      7
.L800C4C84:
/* 7F484 800C4C84 2401FFFF */  addiu      $at, $zero, -0x1
/* 7F488 800C4C88 17010004 */  bne        $t8, $at, .L800C4C9C
/* 7F48C 800C4C8C 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 7F490 800C4C90 15E10002 */  bne        $t7, $at, .L800C4C9C
/* 7F494 800C4C94 00000000 */   nop
/* 7F498 800C4C98 0006000D */  break      6
.L800C4C9C:
/* 7F49C 800C4C9C 13200003 */  beqz       $t9, .L800C4CAC
/* 7F4A0 800C4CA0 00000000 */   nop
/* 7F4A4 800C4CA4 100000F4 */  b          .L800C5078
/* 7F4A8 800C4CA8 00001025 */   or        $v0, $zero, $zero
.L800C4CAC:
/* 7F4AC 800C4CAC 8C8485F8 */  lw         $a0, %lo(D_800E85F8)($a0)
/* 7F4B0 800C4CB0 0C0315E8 */  jal        func_800C57A0
/* 7F4B4 800C4CB4 8C650000 */   lw        $a1, 0x0($v1)
/* 7F4B8 800C4CB8 24040003 */  addiu      $a0, $zero, 0x3
/* 7F4BC 800C4CBC 3C038004 */  lui        $v1, %hi(D_8004555C)
/* 7F4C0 800C4CC0 2463555C */  addiu      $v1, $v1, %lo(D_8004555C)
/* 7F4C4 800C4CC4 8C6C0000 */  lw         $t4, 0x0($v1)
/* 7F4C8 800C4CC8 3C058004 */  lui        $a1, %hi(D_80045558)
/* 7F4CC 800C4CCC 24A55558 */  addiu      $a1, $a1, %lo(D_80045558)
/* 7F4D0 800C4CD0 258D0001 */  addiu      $t5, $t4, 0x1
/* 7F4D4 800C4CD4 01A4001A */  div        $zero, $t5, $a0
/* 7F4D8 800C4CD8 00007810 */  mfhi       $t7
/* 7F4DC 800C4CDC 25F90001 */  addiu      $t9, $t7, 0x1
/* 7F4E0 800C4CE0 01A07025 */  or         $t6, $t5, $zero
/* 7F4E4 800C4CE4 0324001A */  div        $zero, $t9, $a0
/* 7F4E8 800C4CE8 8CAA0000 */  lw         $t2, 0x0($a1)
/* 7F4EC 800C4CEC AC6D0000 */  sw         $t5, 0x0($v1)
/* 7F4F0 800C4CF0 00003010 */  mfhi       $a2
/* 7F4F4 800C4CF4 394B0001 */  xori       $t3, $t2, 0x1
/* 7F4F8 800C4CF8 ACAB0000 */  sw         $t3, 0x0($a1)
/* 7F4FC 800C4CFC 14800002 */  bnez       $a0, .L800C4D08
/* 7F500 800C4D00 00000000 */   nop
/* 7F504 800C4D04 0007000D */  break      7
.L800C4D08:
/* 7F508 800C4D08 2401FFFF */  addiu      $at, $zero, -0x1
/* 7F50C 800C4D0C 14810004 */  bne        $a0, $at, .L800C4D20
/* 7F510 800C4D10 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 7F514 800C4D14 15C10002 */  bne        $t6, $at, .L800C4D20
/* 7F518 800C4D18 00000000 */   nop
/* 7F51C 800C4D1C 0006000D */  break      6
.L800C4D20:
/* 7F520 800C4D20 AC6F0000 */  sw         $t7, 0x0($v1)
/* 7F524 800C4D24 01E0C025 */  or         $t8, $t7, $zero
/* 7F528 800C4D28 14800002 */  bnez       $a0, .L800C4D34
/* 7F52C 800C4D2C 00000000 */   nop
/* 7F530 800C4D30 0007000D */  break      7
.L800C4D34:
/* 7F534 800C4D34 2401FFFF */  addiu      $at, $zero, -0x1
/* 7F538 800C4D38 14810004 */  bne        $a0, $at, .L800C4D4C
/* 7F53C 800C4D3C 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 7F540 800C4D40 17210002 */  bne        $t9, $at, .L800C4D4C
/* 7F544 800C4D44 00000000 */   nop
/* 7F548 800C4D48 0006000D */  break      6
.L800C4D4C:
/* 7F54C 800C4D4C AFA6004C */  sw         $a2, 0x4C($sp)
/* 7F550 800C4D50 0C032A54 */  jal        func_800CA950
/* 7F554 800C4D54 00000000 */   nop
/* 7F558 800C4D58 8FA6004C */  lw         $a2, 0x4C($sp)
/* 7F55C 800C4D5C 3C038004 */  lui        $v1, %hi(D_80045624)
/* 7F560 800C4D60 00025082 */  srl        $t2, $v0, 2
/* 7F564 800C4D64 00065840 */  sll        $t3, $a2, 1
/* 7F568 800C4D68 006B1821 */  addu       $v1, $v1, $t3
/* 7F56C 800C4D6C 84635624 */  lh         $v1, %lo(D_80045624)($v1)
/* 7F570 800C4D70 AFAA0054 */  sw         $t2, 0x54($sp)
/* 7F574 800C4D74 3C048004 */  lui        $a0, %hi(D_80045618)
/* 7F578 800C4D78 10600005 */  beqz       $v1, .L800C4D90
/* 7F57C 800C4D7C 00066080 */   sll       $t4, $a2, 2
/* 7F580 800C4D80 008C2021 */  addu       $a0, $a0, $t4
/* 7F584 800C4D84 8C845618 */  lw         $a0, %lo(D_80045618)($a0)
/* 7F588 800C4D88 0C032A58 */  jal        func_800CA960
/* 7F58C 800C4D8C 00032880 */   sll       $a1, $v1, 2
.L800C4D90:
/* 7F590 800C4D90 3C038004 */  lui        $v1, %hi(D_80045554)
/* 7F594 800C4D94 24635554 */  addiu      $v1, $v1, %lo(D_80045554)
/* 7F598 800C4D98 0C02E38D */  jal        func_800B8E34
/* 7F59C 800C4D9C AC600000 */   sw        $zero, 0x0($v1)
/* 7F5A0 800C4DA0 3C04800F */  lui        $a0, %hi(D_800E8600)
/* 7F5A4 800C4DA4 8C848600 */  lw         $a0, %lo(D_800E8600)($a0)
/* 7F5A8 800C4DA8 27A50038 */  addiu      $a1, $sp, 0x38
/* 7F5AC 800C4DAC 0C031718 */  jal        func_800C5C60
/* 7F5B0 800C4DB0 00003025 */   or        $a2, $zero, $zero
/* 7F5B4 800C4DB4 2401FFFF */  addiu      $at, $zero, -0x1
/* 7F5B8 800C4DB8 10410008 */  beq        $v0, $at, .L800C4DDC
/* 7F5BC 800C4DBC 3C188004 */   lui       $t8, %hi(D_8003ECB8)
/* 7F5C0 800C4DC0 8FAD0038 */  lw         $t5, 0x38($sp)
/* 7F5C4 800C4DC4 3C018004 */  lui        $at, %hi(D_8003ECB9)
/* 7F5C8 800C4DC8 3C0F8004 */  lui        $t7, %hi(D_8003ECB8)
/* 7F5CC 800C4DCC 25EFECB8 */  addiu      $t7, $t7, %lo(D_8003ECB8)
/* 7F5D0 800C4DD0 240E0005 */  addiu      $t6, $zero, 0x5
/* 7F5D4 800C4DD4 A02DECB9 */  sb         $t5, %lo(D_8003ECB9)($at)
/* 7F5D8 800C4DD8 A1EE0000 */  sb         $t6, 0x0($t7)
.L800C4DDC:
/* 7F5DC 800C4DDC 2718ECB8 */  addiu      $t8, $t8, %lo(D_8003ECB8)
/* 7F5E0 800C4DE0 93190000 */  lbu        $t9, 0x0($t8)
/* 7F5E4 800C4DE4 13200010 */  beqz       $t9, .L800C4E28
/* 7F5E8 800C4DE8 00000000 */   nop
/* 7F5EC 800C4DEC 0C02E120 */  jal        func_800B8480
/* 7F5F0 800C4DF0 00000000 */   nop
/* 7F5F4 800C4DF4 1440000C */  bnez       $v0, .L800C4E28
/* 7F5F8 800C4DF8 3C0A8004 */   lui       $t2, %hi(D_8003ECB8)
/* 7F5FC 800C4DFC 254AECB8 */  addiu      $t2, $t2, %lo(D_8003ECB8)
/* 7F600 800C4E00 914B0000 */  lbu        $t3, 0x0($t2)
/* 7F604 800C4E04 3C04800F */  lui        $a0, %hi(D_800E8604)
/* 7F608 800C4E08 3C058004 */  lui        $a1, %hi(D_8003ECB9)
/* 7F60C 800C4E0C 15600004 */  bnez       $t3, .L800C4E20
/* 7F610 800C4E10 00003025 */   or        $a2, $zero, $zero
/* 7F614 800C4E14 8C848604 */  lw         $a0, %lo(D_800E8604)($a0)
/* 7F618 800C4E18 0C0315E8 */  jal        func_800C57A0
/* 7F61C 800C4E1C 90A5ECB9 */   lbu       $a1, %lo(D_8003ECB9)($a1)
.L800C4E20:
/* 7F620 800C4E20 10000095 */  b          .L800C5078
/* 7F624 800C4E24 00001025 */   or        $v0, $zero, $zero
.L800C4E28:
/* 7F628 800C4E28 3C028004 */  lui        $v0, %hi(D_80045558)
/* 7F62C 800C4E2C 8C425558 */  lw         $v0, %lo(D_80045558)($v0)
/* 7F630 800C4E30 3C0D8004 */  lui        $t5, %hi(D_80045570)
/* 7F634 800C4E34 3C098004 */  lui        $t1, %hi(D_8004556C)
/* 7F638 800C4E38 00026080 */  sll        $t4, $v0, 2
/* 7F63C 800C4E3C 01826021 */  addu       $t4, $t4, $v0
/* 7F640 800C4E40 000C6100 */  sll        $t4, $t4, 4
/* 7F644 800C4E44 25AD5570 */  addiu      $t5, $t5, %lo(D_80045570)
/* 7F648 800C4E48 2529556C */  addiu      $t1, $t1, %lo(D_8004556C)
/* 7F64C 800C4E4C 018D7021 */  addu       $t6, $t4, $t5
/* 7F650 800C4E50 3C188004 */  lui        $t8, %hi(D_80045560)
/* 7F654 800C4E54 00027880 */  sll        $t7, $v0, 2
/* 7F658 800C4E58 AD2E0000 */  sw         $t6, 0x0($t1)
/* 7F65C 800C4E5C 030FC021 */  addu       $t8, $t8, $t7
/* 7F660 800C4E60 8F185560 */  lw         $t8, %lo(D_80045560)($t8)
/* 7F664 800C4E64 3C068004 */  lui        $a2, %hi(D_8004555C)
/* 7F668 800C4E68 8CC6555C */  lw         $a2, %lo(D_8004555C)($a2)
/* 7F66C 800C4E6C 3C058004 */  lui        $a1, %hi(D_80045520)
/* 7F670 800C4E70 3C018004 */  lui        $at, %hi(D_80045568)
/* 7F674 800C4E74 24A55520 */  addiu      $a1, $a1, %lo(D_80045520)
/* 7F678 800C4E78 3C0A8004 */  lui        $t2, %hi(D_80045618)
/* 7F67C 800C4E7C AC385568 */  sw         $t8, %lo(D_80045568)($at)
/* 7F680 800C4E80 84AE0006 */  lh         $t6, 0x6($a1)
/* 7F684 800C4E84 8FAF0054 */  lw         $t7, 0x54($sp)
/* 7F688 800C4E88 254A5618 */  addiu      $t2, $t2, %lo(D_80045618)
/* 7F68C 800C4E8C 0006C880 */  sll        $t9, $a2, 2
/* 7F690 800C4E90 032A3821 */  addu       $a3, $t9, $t2
/* 7F694 800C4E94 8CEB0000 */  lw         $t3, 0x0($a3)
/* 7F698 800C4E98 01CFC023 */  subu       $t8, $t6, $t7
/* 7F69C 800C4E9C 27190040 */  addiu      $t9, $t8, 0x40
/* 7F6A0 800C4EA0 3C0D8004 */  lui        $t5, %hi(D_80045624)
/* 7F6A4 800C4EA4 25AD5624 */  addiu      $t5, $t5, %lo(D_80045624)
/* 7F6A8 800C4EA8 332AFFF0 */  andi       $t2, $t9, 0xFFF0
/* 7F6AC 800C4EAC 00066040 */  sll        $t4, $a2, 1
/* 7F6B0 800C4EB0 AFAB0040 */  sw         $t3, 0x40($sp)
/* 7F6B4 800C4EB4 254B0010 */  addiu      $t3, $t2, 0x10
/* 7F6B8 800C4EB8 018D4021 */  addu       $t0, $t4, $t5
/* 7F6BC 800C4EBC A50B0000 */  sh         $t3, 0x0($t0)
/* 7F6C0 800C4EC0 85030000 */  lh         $v1, 0x0($t0)
/* 7F6C4 800C4EC4 84A4000A */  lh         $a0, 0xA($a1)
/* 7F6C8 800C4EC8 00003025 */  or         $a2, $zero, $zero
/* 7F6CC 800C4ECC 0064082A */  slt        $at, $v1, $a0
/* 7F6D0 800C4ED0 50200004 */  beql       $at, $zero, .L800C4EE4
/* 7F6D4 800C4ED4 84A20008 */   lh        $v0, 0x8($a1)
/* 7F6D8 800C4ED8 A5040000 */  sh         $a0, 0x0($t0)
/* 7F6DC 800C4EDC 85030000 */  lh         $v1, 0x0($t0)
/* 7F6E0 800C4EE0 84A20008 */  lh         $v0, 0x8($a1)
.L800C4EE4:
/* 7F6E4 800C4EE4 27A50034 */  addiu      $a1, $sp, 0x34
/* 7F6E8 800C4EE8 3C04800F */  lui        $a0, %hi(D_800E85FC)
/* 7F6EC 800C4EEC 0043082A */  slt        $at, $v0, $v1
/* 7F6F0 800C4EF0 10200002 */  beqz       $at, .L800C4EFC
/* 7F6F4 800C4EF4 00000000 */   nop
/* 7F6F8 800C4EF8 A5020000 */  sh         $v0, 0x0($t0)
.L800C4EFC:
/* 7F6FC 800C4EFC 8C8485FC */  lw         $a0, %lo(D_800E85FC)($a0)
/* 7F700 800C4F00 AFA70024 */  sw         $a3, 0x24($sp)
/* 7F704 800C4F04 0C031718 */  jal        func_800C5C60
/* 7F708 800C4F08 AFA8002C */   sw        $t0, 0x2C($sp)
/* 7F70C 800C4F0C 2401FFFF */  addiu      $at, $zero, -0x1
/* 7F710 800C4F10 10410005 */  beq        $v0, $at, .L800C4F28
/* 7F714 800C4F14 8FA8002C */   lw        $t0, 0x2C($sp)
/* 7F718 800C4F18 8FA40034 */  lw         $a0, 0x34($sp)
/* 7F71C 800C4F1C 0C03151F */  jal        func_800C547C
/* 7F720 800C4F20 AFA8002C */   sw        $t0, 0x2C($sp)
/* 7F724 800C4F24 8FA8002C */  lw         $t0, 0x2C($sp)
.L800C4F28:
/* 7F728 800C4F28 3C048004 */  lui        $a0, %hi(D_80045568)
/* 7F72C 800C4F2C 8C845568 */  lw         $a0, %lo(D_80045568)($a0)
/* 7F730 800C4F30 27A50050 */  addiu      $a1, $sp, 0x50
/* 7F734 800C4F34 8FA60040 */  lw         $a2, 0x40($sp)
/* 7F738 800C4F38 0C02D49F */  jal        func_800B527C
/* 7F73C 800C4F3C 85070000 */   lh        $a3, 0x0($t0)
/* 7F740 800C4F40 3C088004 */  lui        $t0, %hi(D_80045550)
/* 7F744 800C4F44 3C018004 */  lui        $at, %hi(D_80045568)
/* 7F748 800C4F48 AC225568 */  sw         $v0, %lo(D_80045568)($at)
/* 7F74C 800C4F4C 25085550 */  addiu      $t0, $t0, %lo(D_80045550)
/* 7F750 800C4F50 3C048004 */  lui        $a0, %hi(D_8004562C)
/* 7F754 800C4F54 8D0C0000 */  lw         $t4, 0x0($t0)
/* 7F758 800C4F58 2484562C */  addiu      $a0, $a0, %lo(D_8004562C)
/* 7F75C 800C4F5C 8C8D0000 */  lw         $t5, 0x0($a0)
/* 7F760 800C4F60 8D0F0000 */  lw         $t7, 0x0($t0)
/* 7F764 800C4F64 8FB90024 */  lw         $t9, 0x24($sp)
/* 7F768 800C4F68 018D7021 */  addu       $t6, $t4, $t5
/* 7F76C 800C4F6C 01CF0019 */  multu      $t6, $t7
/* 7F770 800C4F70 8D0B0000 */  lw         $t3, 0x0($t0)
/* 7F774 800C4F74 3C098004 */  lui        $t1, %hi(D_8004556C)
/* 7F778 800C4F78 2529556C */  addiu      $t1, $t1, %lo(D_8004556C)
/* 7F77C 800C4F7C 316C00FF */  andi       $t4, $t3, 0xFF
/* 7F780 800C4F80 000C6840 */  sll        $t5, $t4, 1
/* 7F784 800C4F84 8D2B0000 */  lw         $t3, 0x0($t1)
/* 7F788 800C4F88 3C068004 */  lui        $a2, %hi(D_80045558)
/* 7F78C 800C4F8C 3C05800D */  lui        $a1, %hi(func_800D22B0)
/* 7F790 800C4F90 24A522B0 */  addiu      $a1, $a1, %lo(func_800D22B0)
/* 7F794 800C4F94 0000C012 */  mflo       $t8
/* 7F798 800C4F98 AC980000 */  sw         $t8, 0x0($a0)
/* 7F79C 800C4F9C 8F2A0000 */  lw         $t2, 0x0($t9)
/* 7F7A0 800C4FA0 8C980000 */  lw         $t8, 0x0($a0)
/* 7F7A4 800C4FA4 3C07800F */  lui        $a3, %hi(D_800EEB10)
/* 7F7A8 800C4FA8 014D7021 */  addu       $t6, $t2, $t5
/* 7F7AC 800C4FAC 85CF0000 */  lh         $t7, 0x0($t6)
/* 7F7B0 800C4FB0 3C0D800D */  lui        $t5, %hi(func_800D2380)
/* 7F7B4 800C4FB4 25AD2380 */  addiu      $t5, $t5, %lo(func_800D2380)
/* 7F7B8 800C4FB8 01F8C821 */  addu       $t9, $t7, $t8
/* 7F7BC 800C4FBC AC990000 */  sw         $t9, 0x0($a0)
/* 7F7C0 800C4FC0 8CC65558 */  lw         $a2, %lo(D_80045558)($a2)
/* 7F7C4 800C4FC4 AD600040 */  sw         $zero, 0x40($t3)
/* 7F7C8 800C4FC8 8D2C0000 */  lw         $t4, 0x0($t1)
/* 7F7CC 800C4FCC 3C19800F */  lui        $t9, %hi(D_800EEDD0)
/* 7F7D0 800C4FD0 24E7EB10 */  addiu      $a3, $a3, %lo(D_800EEB10)
/* 7F7D4 800C4FD4 AD800044 */  sw         $zero, 0x44($t4)
/* 7F7D8 800C4FD8 8D230000 */  lw         $v1, 0x0($t1)
/* 7F7DC 800C4FDC 01A57023 */  subu       $t6, $t5, $a1
/* 7F7E0 800C4FE0 2739EDD0 */  addiu      $t9, $t9, %lo(D_800EEDD0)
/* 7F7E4 800C4FE4 240A0002 */  addiu      $t2, $zero, 0x2
/* 7F7E8 800C4FE8 03275823 */  subu       $t3, $t9, $a3
/* 7F7EC 800C4FEC 3C0F800D */  lui        $t7, %hi(D_800D37B0)
/* 7F7F0 800C4FF0 000B60C3 */  sra        $t4, $t3, 3
/* 7F7F4 800C4FF4 AC6A0000 */  sw         $t2, 0x0($v1)
/* 7F7F8 800C4FF8 AC6E000C */  sw         $t6, 0xC($v1)
/* 7F7FC 800C4FFC 25EF37B0 */  addiu      $t7, $t7, %lo(D_800D37B0)
/* 7F800 800C5000 24180800 */  addiu      $t8, $zero, 0x800
/* 7F804 800C5004 000C50C0 */  sll        $t2, $t4, 3
/* 7F808 800C5008 3C0E8004 */  lui        $t6, %hi(D_80045560)
/* 7F80C 800C500C 00066880 */  sll        $t5, $a2, 2
/* 7F810 800C5010 01CD7021 */  addu       $t6, $t6, $t5
/* 7F814 800C5014 AC600004 */  sw         $zero, 0x4($v1)
/* 7F818 800C5018 AC650008 */  sw         $a1, 0x8($v1)
/* 7F81C 800C501C AC6F0010 */  sw         $t7, 0x10($v1)
/* 7F820 800C5020 AC670018 */  sw         $a3, 0x18($v1)
/* 7F824 800C5024 AC780014 */  sw         $t8, 0x14($v1)
/* 7F828 800C5028 AC6A001C */  sw         $t2, 0x1C($v1)
/* 7F82C 800C502C AC600020 */  sw         $zero, 0x20($v1)
/* 7F830 800C5030 AC600024 */  sw         $zero, 0x24($v1)
/* 7F834 800C5034 AC600028 */  sw         $zero, 0x28($v1)
/* 7F838 800C5038 AC60002C */  sw         $zero, 0x2C($v1)
/* 7F83C 800C503C 8DCE5560 */  lw         $t6, %lo(D_80045560)($t6)
/* 7F840 800C5040 3C19800F */  lui        $t9, %hi(D_800E8690)
/* 7F844 800C5044 AC6E0030 */  sw         $t6, 0x30($v1)
/* 7F848 800C5048 8FAF0050 */  lw         $t7, 0x50($sp)
/* 7F84C 800C504C AC600038 */  sw         $zero, 0x38($v1)
/* 7F850 800C5050 AC60003C */  sw         $zero, 0x3C($v1)
/* 7F854 800C5054 000FC0C0 */  sll        $t8, $t7, 3
/* 7F858 800C5058 AC780034 */  sw         $t8, 0x34($v1)
/* 7F85C 800C505C 8FAB0050 */  lw         $t3, 0x50($sp)
/* 7F860 800C5060 8F398690 */  lw         $t9, %lo(D_800E8690)($t9)
/* 7F864 800C5064 032B082A */  slt        $at, $t9, $t3
/* 7F868 800C5068 10200002 */  beqz       $at, .L800C5074
/* 7F86C 800C506C 3C01800F */   lui       $at, %hi(D_800E8690)
/* 7F870 800C5070 AC2B8690 */  sw         $t3, %lo(D_800E8690)($at)
.L800C5074:
/* 7F874 800C5074 8D220000 */  lw         $v0, 0x0($t1)
.L800C5078:
/* 7F878 800C5078 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7F87C 800C507C 27BD0058 */  addiu      $sp, $sp, 0x58
/* 7F880 800C5080 03E00008 */  jr         $ra
/* 7F884 800C5084 00000000 */   nop

glabel func_800C5088
/* 7F888 800C5088 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7F88C 800C508C AFBF0014 */  sw         $ra, 0x14($sp)
/* 7F890 800C5090 90820000 */  lbu        $v0, 0x0($a0)
/* 7F894 800C5094 24010081 */  addiu      $at, $zero, 0x81
/* 7F898 800C5098 00803825 */  or         $a3, $a0, $zero
/* 7F89C 800C509C 10410011 */  beq        $v0, $at, .L800C50E4
/* 7F8A0 800C50A0 24050003 */   addiu     $a1, $zero, 0x3
/* 7F8A4 800C50A4 24010082 */  addiu      $at, $zero, 0x82
/* 7F8A8 800C50A8 10410012 */  beq        $v0, $at, .L800C50F4
/* 7F8AC 800C50AC 24010083 */   addiu     $at, $zero, 0x83
/* 7F8B0 800C50B0 1041001B */  beq        $v0, $at, .L800C5120
/* 7F8B4 800C50B4 24010088 */   addiu     $at, $zero, 0x88
/* 7F8B8 800C50B8 1041000E */  beq        $v0, $at, .L800C50F4
/* 7F8BC 800C50BC 240100F0 */   addiu     $at, $zero, 0xF0
/* 7F8C0 800C50C0 1041002D */  beq        $v0, $at, .L800C5178
/* 7F8C4 800C50C4 240100F1 */   addiu     $at, $zero, 0xF1
/* 7F8C8 800C50C8 1041002F */  beq        $v0, $at, .L800C5188
/* 7F8CC 800C50CC 3C038004 */   lui       $v1, %hi(D_8003FE08)
/* 7F8D0 800C50D0 240100F2 */  addiu      $at, $zero, 0xF2
/* 7F8D4 800C50D4 10410040 */  beq        $v0, $at, .L800C51D8
/* 7F8D8 800C50D8 3C038004 */   lui       $v1, %hi(D_8003FE08)
/* 7F8DC 800C50DC 10000056 */  b          .L800C5238
/* 7F8E0 800C50E0 8FBF0014 */   lw        $ra, 0x14($sp)
.L800C50E4:
/* 7F8E4 800C50E4 0C02E790 */  jal        func_800B9E40
/* 7F8E8 800C50E8 90E40002 */   lbu       $a0, 0x2($a3)
/* 7F8EC 800C50EC 10000052 */  b          .L800C5238
/* 7F8F0 800C50F0 8FBF0014 */   lw        $ra, 0x14($sp)
.L800C50F4:
/* 7F8F4 800C50F4 90E40001 */  lbu        $a0, 0x1($a3)
/* 7F8F8 800C50F8 90E50002 */  lbu        $a1, 0x2($a3)
/* 7F8FC 800C50FC 90E60003 */  lbu        $a2, 0x3($a3)
/* 7F900 800C5100 0C02E7CF */  jal        func_800B9F3C
/* 7F904 800C5104 AFA70018 */   sw        $a3, 0x18($sp)
/* 7F908 800C5108 8FA70018 */  lw         $a3, 0x18($sp)
/* 7F90C 800C510C 90E40001 */  lbu        $a0, 0x1($a3)
/* 7F910 800C5110 0C0314A3 */  jal        func_800C528C
/* 7F914 800C5114 8CE50004 */   lw        $a1, 0x4($a3)
/* 7F918 800C5118 10000047 */  b          .L800C5238
/* 7F91C 800C511C 8FBF0014 */   lw        $ra, 0x14($sp)
.L800C5120:
/* 7F920 800C5120 90E20001 */  lbu        $v0, 0x1($a3)
/* 7F924 800C5124 3C0F8004 */  lui        $t7, %hi(D_8003FCC8)
/* 7F928 800C5128 25EFFCC8 */  addiu      $t7, $t7, %lo(D_8003FCC8)
/* 7F92C 800C512C 00027080 */  sll        $t6, $v0, 2
/* 7F930 800C5130 01C27021 */  addu       $t6, $t6, $v0
/* 7F934 800C5134 000E7180 */  sll        $t6, $t6, 6
/* 7F938 800C5138 01CF2021 */  addu       $a0, $t6, $t7
/* 7F93C 800C513C 8C980000 */  lw         $t8, 0x0($a0)
/* 7F940 800C5140 0018CFC2 */  srl        $t9, $t8, 31
/* 7F944 800C5144 5320003C */  beql       $t9, $zero, .L800C5238
/* 7F948 800C5148 8FBF0014 */   lw        $ra, 0x14($sp)
/* 7F94C 800C514C 8CE50004 */  lw         $a1, 0x4($a3)
/* 7F950 800C5150 14A00005 */  bnez       $a1, .L800C5168
/* 7F954 800C5154 00000000 */   nop
/* 7F958 800C5158 0C02F3B8 */  jal        func_800BCEE0
/* 7F95C 800C515C 00000000 */   nop
/* 7F960 800C5160 10000035 */  b          .L800C5238
/* 7F964 800C5164 8FBF0014 */   lw        $ra, 0x14($sp)
.L800C5168:
/* 7F968 800C5168 0C031491 */  jal        func_800C5244
/* 7F96C 800C516C 00402025 */   or        $a0, $v0, $zero
/* 7F970 800C5170 10000031 */  b          .L800C5238
/* 7F974 800C5174 8FBF0014 */   lw        $ra, 0x14($sp)
.L800C5178:
/* 7F978 800C5178 8CE80004 */  lw         $t0, 0x4($a3)
/* 7F97C 800C517C 3C018004 */  lui        $at, %hi(D_8004554E)
/* 7F980 800C5180 1000002C */  b          .L800C5234
/* 7F984 800C5184 A028554E */   sb        $t0, %lo(D_8004554E)($at)
.L800C5188:
/* 7F988 800C5188 3C028004 */  lui        $v0, %hi(D_8003FCC8)
/* 7F98C 800C518C 904BFCC8 */  lbu        $t3, %lo(D_8003FCC8)($v0)
/* 7F990 800C5190 9068FE08 */  lbu        $t0, %lo(D_8003FE08)($v1)
/* 7F994 800C5194 3C048004 */  lui        $a0, %hi(D_8003FF48)
/* 7F998 800C5198 3C058004 */  lui        $a1, %hi(D_80040088)
/* 7F99C 800C519C 90AA0088 */  lbu        $t2, %lo(D_80040088)($a1)
/* 7F9A0 800C51A0 908EFF48 */  lbu        $t6, %lo(D_8003FF48)($a0)
/* 7F9A4 800C51A4 3C018004 */  lui        $at, %hi(D_8003FCC8)
/* 7F9A8 800C51A8 35620024 */  ori        $v0, $t3, 0x24
/* 7F9AC 800C51AC A022FCC8 */  sb         $v0, %lo(D_8003FCC8)($at)
/* 7F9B0 800C51B0 3C018004 */  lui        $at, %hi(D_8003FE08)
/* 7F9B4 800C51B4 35030024 */  ori        $v1, $t0, 0x24
/* 7F9B8 800C51B8 A023FE08 */  sb         $v1, %lo(D_8003FE08)($at)
/* 7F9BC 800C51BC 3C018004 */  lui        $at, %hi(D_8003FF48)
/* 7F9C0 800C51C0 35D80024 */  ori        $t8, $t6, 0x24
/* 7F9C4 800C51C4 A038FF48 */  sb         $t8, %lo(D_8003FF48)($at)
/* 7F9C8 800C51C8 3C018004 */  lui        $at, %hi(D_80040088)
/* 7F9CC 800C51CC 354C0024 */  ori        $t4, $t2, 0x24
/* 7F9D0 800C51D0 10000018 */  b          .L800C5234
/* 7F9D4 800C51D4 A02C0088 */   sb        $t4, %lo(D_80040088)($at)
.L800C51D8:
/* 7F9D8 800C51D8 3C028004 */  lui        $v0, %hi(D_8003FCC8)
/* 7F9DC 800C51DC 9042FCC8 */  lbu        $v0, %lo(D_8003FCC8)($v0)
/* 7F9E0 800C51E0 9063FE08 */  lbu        $v1, %lo(D_8003FE08)($v1)
/* 7F9E4 800C51E4 3C048004 */  lui        $a0, %hi(D_8003FF48)
/* 7F9E8 800C51E8 9084FF48 */  lbu        $a0, %lo(D_8003FF48)($a0)
/* 7F9EC 800C51EC 3C058004 */  lui        $a1, %hi(D_80040088)
/* 7F9F0 800C51F0 304FFFDF */  andi       $t7, $v0, 0xFFDF
/* 7F9F4 800C51F4 90A50088 */  lbu        $a1, %lo(D_80040088)($a1)
/* 7F9F8 800C51F8 3C018004 */  lui        $at, %hi(D_8003FCC8)
/* 7F9FC 800C51FC 35E20004 */  ori        $v0, $t7, 0x4
/* 7FA00 800C5200 A022FCC8 */  sb         $v0, %lo(D_8003FCC8)($at)
/* 7FA04 800C5204 306AFFDF */  andi       $t2, $v1, 0xFFDF
/* 7FA08 800C5208 35430004 */  ori        $v1, $t2, 0x4
/* 7FA0C 800C520C 3C018004 */  lui        $at, %hi(D_8003FE08)
/* 7FA10 800C5210 A023FE08 */  sb         $v1, %lo(D_8003FE08)($at)
/* 7FA14 800C5214 308FFFDF */  andi       $t7, $a0, 0xFFDF
/* 7FA18 800C5218 35F90004 */  ori        $t9, $t7, 0x4
/* 7FA1C 800C521C 3C018004 */  lui        $at, %hi(D_8003FF48)
/* 7FA20 800C5220 A039FF48 */  sb         $t9, %lo(D_8003FF48)($at)
/* 7FA24 800C5224 30AAFFDF */  andi       $t2, $a1, 0xFFDF
/* 7FA28 800C5228 354C0004 */  ori        $t4, $t2, 0x4
/* 7FA2C 800C522C 3C018004 */  lui        $at, %hi(D_80040088)
/* 7FA30 800C5230 A02C0088 */  sb         $t4, %lo(D_80040088)($at)
.L800C5234:
/* 7FA34 800C5234 8FBF0014 */  lw         $ra, 0x14($sp)
.L800C5238:
/* 7FA38 800C5238 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7FA3C 800C523C 03E00008 */  jr         $ra
/* 7FA40 800C5240 00000000 */   nop

glabel func_800C5244
/* 7FA44 800C5244 14A00002 */  bnez       $a1, .L800C5250
/* 7FA48 800C5248 00047080 */   sll       $t6, $a0, 2
/* 7FA4C 800C524C 24050001 */  addiu      $a1, $zero, 0x1
.L800C5250:
/* 7FA50 800C5250 44853000 */  mtc1       $a1, $f6
/* 7FA54 800C5254 01C47021 */  addu       $t6, $t6, $a0
/* 7FA58 800C5258 3C0F8004 */  lui        $t7, %hi(D_8003FCC8)
/* 7FA5C 800C525C 46803220 */  cvt.s.w    $f8, $f6
/* 7FA60 800C5260 25EFFCC8 */  addiu      $t7, $t7, %lo(D_8003FCC8)
/* 7FA64 800C5264 000E7180 */  sll        $t6, $t6, 6
/* 7FA68 800C5268 01CF1021 */  addu       $v0, $t6, $t7
/* 7FA6C 800C526C C4440018 */  lwc1       $f4, 0x18($v0)
/* 7FA70 800C5270 24180002 */  addiu      $t8, $zero, 0x2
/* 7FA74 800C5274 A0580001 */  sb         $t8, 0x1($v0)
/* 7FA78 800C5278 46082283 */  div.s      $f10, $f4, $f8
/* 7FA7C 800C527C A4450010 */  sh         $a1, 0x10($v0)
/* 7FA80 800C5280 46005407 */  neg.s      $f16, $f10
/* 7FA84 800C5284 03E00008 */  jr         $ra
/* 7FA88 800C5288 E450001C */   swc1      $f16, 0x1C($v0)

glabel func_800C528C
/* 7FA8C 800C528C 10A0000D */  beqz       $a1, .L800C52C4
/* 7FA90 800C5290 00047080 */   sll       $t6, $a0, 2
/* 7FA94 800C5294 01C47021 */  addu       $t6, $t6, $a0
/* 7FA98 800C5298 3C0F8004 */  lui        $t7, %hi(D_8003FCC8)
/* 7FA9C 800C529C 25EFFCC8 */  addiu      $t7, $t7, %lo(D_8003FCC8)
/* 7FAA0 800C52A0 000E7180 */  sll        $t6, $t6, 6
/* 7FAA4 800C52A4 01CF1021 */  addu       $v0, $t6, $t7
/* 7FAA8 800C52A8 44800000 */  mtc1       $zero, $f0
/* 7FAAC 800C52AC 24180001 */  addiu      $t8, $zero, 0x1
/* 7FAB0 800C52B0 A0580001 */  sb         $t8, 0x1($v0)
/* 7FAB4 800C52B4 A4450012 */  sh         $a1, 0x12($v0)
/* 7FAB8 800C52B8 A4450010 */  sh         $a1, 0x10($v0)
/* 7FABC 800C52BC E4400018 */  swc1       $f0, 0x18($v0)
/* 7FAC0 800C52C0 E440001C */  swc1       $f0, 0x1C($v0)
.L800C52C4:
/* 7FAC4 800C52C4 03E00008 */  jr         $ra
/* 7FAC8 800C52C8 00000000 */   nop

glabel func_800C52CC
/* 7FACC 800C52CC 3C01800F */  lui        $at, %hi(D_800E85F0)
/* 7FAD0 800C52D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7FAD4 800C52D4 A02085F0 */  sb         $zero, %lo(D_800E85F0)($at)
/* 7FAD8 800C52D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7FADC 800C52DC 3C01800F */  lui        $at, %hi(D_800E85F4)
/* 7FAE0 800C52E0 3C04800F */  lui        $a0, %hi(D_800E85F8)
/* 7FAE4 800C52E4 3C05801E */  lui        $a1, %hi(D_801D8690)
/* 7FAE8 800C52E8 A02085F4 */  sb         $zero, %lo(D_800E85F4)($at)
/* 7FAEC 800C52EC 24A58690 */  addiu      $a1, $a1, %lo(D_801D8690)
/* 7FAF0 800C52F0 8C8485F8 */  lw         $a0, %lo(D_800E85F8)($a0)
/* 7FAF4 800C52F4 0C0318C4 */  jal        func_800C6310
/* 7FAF8 800C52F8 24060001 */   addiu     $a2, $zero, 0x1
/* 7FAFC 800C52FC 3C04800F */  lui        $a0, %hi(D_800E85FC)
/* 7FB00 800C5300 3C05801E */  lui        $a1, %hi(D_801D8698)
/* 7FB04 800C5304 24A58698 */  addiu      $a1, $a1, %lo(D_801D8698)
/* 7FB08 800C5308 8C8485FC */  lw         $a0, %lo(D_800E85FC)($a0)
/* 7FB0C 800C530C 0C0318C4 */  jal        func_800C6310
/* 7FB10 800C5310 24060004 */   addiu     $a2, $zero, 0x4
/* 7FB14 800C5314 3C04800F */  lui        $a0, %hi(D_800E8600)
/* 7FB18 800C5318 3C05801E */  lui        $a1, %hi(D_801D86A8)
/* 7FB1C 800C531C 24A586A8 */  addiu      $a1, $a1, %lo(D_801D86A8)
/* 7FB20 800C5320 8C848600 */  lw         $a0, %lo(D_800E8600)($a0)
/* 7FB24 800C5324 0C0318C4 */  jal        func_800C6310
/* 7FB28 800C5328 24060001 */   addiu     $a2, $zero, 0x1
/* 7FB2C 800C532C 3C04800F */  lui        $a0, %hi(D_800E8604)
/* 7FB30 800C5330 3C05801E */  lui        $a1, %hi(D_801D86AC)
/* 7FB34 800C5334 24A586AC */  addiu      $a1, $a1, %lo(D_801D86AC)
/* 7FB38 800C5338 8C848604 */  lw         $a0, %lo(D_800E8604)($a0)
/* 7FB3C 800C533C 0C0318C4 */  jal        func_800C6310
/* 7FB40 800C5340 24060001 */   addiu     $a2, $zero, 0x1
/* 7FB44 800C5344 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7FB48 800C5348 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7FB4C 800C534C 03E00008 */  jr         $ra
/* 7FB50 800C5350 00000000 */   nop

glabel func_800C5354
/* 7FB54 800C5354 3C03800F */  lui        $v1, %hi(D_800E85F0)
/* 7FB58 800C5358 246385F0 */  addiu      $v1, $v1, %lo(D_800E85F0)
/* 7FB5C 800C535C 906F0000 */  lbu        $t7, 0x0($v1)
/* 7FB60 800C5360 3C19801D */  lui        $t9, %hi(D_801D7E90)
/* 7FB64 800C5364 27397E90 */  addiu      $t9, $t9, %lo(D_801D7E90)
/* 7FB68 800C5368 000FC0C0 */  sll        $t8, $t7, 3
/* 7FB6C 800C536C 03191021 */  addu       $v0, $t8, $t9
/* 7FB70 800C5370 AC440000 */  sw         $a0, 0x0($v0)
/* 7FB74 800C5374 8CA80000 */  lw         $t0, 0x0($a1)
/* 7FB78 800C5378 AC480004 */  sw         $t0, 0x4($v0)
/* 7FB7C 800C537C 90690000 */  lbu        $t1, 0x0($v1)
/* 7FB80 800C5380 252A0001 */  addiu      $t2, $t1, 0x1
/* 7FB84 800C5384 03E00008 */  jr         $ra
/* 7FB88 800C5388 A06A0000 */   sb        $t2, 0x0($v1)

glabel func_800C538C
/* 7FB8C 800C538C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7FB90 800C5390 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7FB94 800C5394 AFA5001C */  sw         $a1, 0x1C($sp)
/* 7FB98 800C5398 0C0314D5 */  jal        func_800C5354
/* 7FB9C 800C539C 27A5001C */   addiu     $a1, $sp, 0x1C
/* 7FBA0 800C53A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7FBA4 800C53A4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7FBA8 800C53A8 03E00008 */  jr         $ra
/* 7FBAC 800C53AC 00000000 */   nop

glabel func_800C53B0
/* 7FBB0 800C53B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7FBB4 800C53B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7FBB8 800C53B8 AFA5001C */  sw         $a1, 0x1C($sp)
/* 7FBBC 800C53BC 0C0314D5 */  jal        func_800C5354
/* 7FBC0 800C53C0 27A5001C */   addiu     $a1, $sp, 0x1C
/* 7FBC4 800C53C4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7FBC8 800C53C8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7FBCC 800C53CC 03E00008 */  jr         $ra
/* 7FBD0 800C53D0 00000000 */   nop

glabel func_800C53D4
/* 7FBD4 800C53D4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7FBD8 800C53D8 00A07025 */  or         $t6, $a1, $zero
/* 7FBDC 800C53DC AFBF0014 */  sw         $ra, 0x14($sp)
/* 7FBE0 800C53E0 AFA50024 */  sw         $a1, 0x24($sp)
/* 7FBE4 800C53E4 000E7E00 */  sll        $t7, $t6, 24
/* 7FBE8 800C53E8 AFAF001C */  sw         $t7, 0x1C($sp)
/* 7FBEC 800C53EC 0C0314D5 */  jal        func_800C5354
/* 7FBF0 800C53F0 27A5001C */   addiu     $a1, $sp, 0x1C
/* 7FBF4 800C53F4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7FBF8 800C53F8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7FBFC 800C53FC 03E00008 */  jr         $ra
/* 7FC00 800C5400 00000000 */   nop

glabel func_800C5404
/* 7FC04 800C5404 3C02800F */  lui        $v0, %hi(D_800E85F0)
/* 7FC08 800C5408 3C03800F */  lui        $v1, %hi(D_800E85F4)
/* 7FC0C 800C540C 906385F4 */  lbu        $v1, %lo(D_800E85F4)($v1)
/* 7FC10 800C5410 904285F0 */  lbu        $v0, %lo(D_800E85F0)($v0)
/* 7FC14 800C5414 3C0F800F */  lui        $t7, %hi(D_800E86B0)
/* 7FC18 800C5418 8DEF86B0 */  lw         $t7, %lo(D_800E86B0)($t7)
/* 7FC1C 800C541C 00432023 */  subu       $a0, $v0, $v1
/* 7FC20 800C5420 24840100 */  addiu      $a0, $a0, 0x100
/* 7FC24 800C5424 308E00FF */  andi       $t6, $a0, 0xFF
/* 7FC28 800C5428 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7FC2C 800C542C 01EE082A */  slt        $at, $t7, $t6
/* 7FC30 800C5430 10200003 */  beqz       $at, .L800C5440
/* 7FC34 800C5434 AFBF0014 */   sw        $ra, 0x14($sp)
/* 7FC38 800C5438 3C01800F */  lui        $at, %hi(D_800E86B0)
/* 7FC3C 800C543C AC2E86B0 */  sw         $t6, %lo(D_800E86B0)($at)
.L800C5440:
/* 7FC40 800C5440 307800FF */  andi       $t8, $v1, 0xFF
/* 7FC44 800C5444 0018CA00 */  sll        $t9, $t8, 8
/* 7FC48 800C5448 304800FF */  andi       $t0, $v0, 0xFF
/* 7FC4C 800C544C 3C04800F */  lui        $a0, %hi(D_800E85FC)
/* 7FC50 800C5450 03282825 */  or         $a1, $t9, $t0
/* 7FC54 800C5454 8C8485FC */  lw         $a0, %lo(D_800E85FC)($a0)
/* 7FC58 800C5458 0C0315E8 */  jal        func_800C57A0
/* 7FC5C 800C545C 00003025 */   or        $a2, $zero, $zero
/* 7FC60 800C5460 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7FC64 800C5464 3C09800F */  lui        $t1, %hi(D_800E85F0)
/* 7FC68 800C5468 912985F0 */  lbu        $t1, %lo(D_800E85F0)($t1)
/* 7FC6C 800C546C 3C01800F */  lui        $at, %hi(D_800E85F4)
/* 7FC70 800C5470 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7FC74 800C5474 03E00008 */  jr         $ra
/* 7FC78 800C5478 A02985F4 */   sb        $t1, %lo(D_800E85F4)($at)

glabel func_800C547C
/* 7FC7C 800C547C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 7FC80 800C5480 AFB20020 */  sw         $s2, 0x20($sp)
/* 7FC84 800C5484 AFB40028 */  sw         $s4, 0x28($sp)
/* 7FC88 800C5488 AFB30024 */  sw         $s3, 0x24($sp)
/* 7FC8C 800C548C 00809025 */  or         $s2, $a0, $zero
/* 7FC90 800C5490 AFBE0038 */  sw         $fp, 0x38($sp)
/* 7FC94 800C5494 AFB70034 */  sw         $s7, 0x34($sp)
/* 7FC98 800C5498 AFB60030 */  sw         $s6, 0x30($sp)
/* 7FC9C 800C549C AFB5002C */  sw         $s5, 0x2C($sp)
/* 7FCA0 800C54A0 AFB1001C */  sw         $s1, 0x1C($sp)
/* 7FCA4 800C54A4 00047202 */  srl        $t6, $a0, 8
/* 7FCA8 800C54A8 325800FF */  andi       $t8, $s2, 0xFF
/* 7FCAC 800C54AC 3C13801D */  lui        $s3, %hi(D_801D7E90)
/* 7FCB0 800C54B0 3C148004 */  lui        $s4, %hi(D_8003FCC8)
/* 7FCB4 800C54B4 AFBF003C */  sw         $ra, 0x3C($sp)
/* 7FCB8 800C54B8 AFB00018 */  sw         $s0, 0x18($sp)
/* 7FCBC 800C54BC 31D100FF */  andi       $s1, $t6, 0xFF
/* 7FCC0 800C54C0 2694FCC8 */  addiu      $s4, $s4, %lo(D_8003FCC8)
/* 7FCC4 800C54C4 26737E90 */  addiu      $s3, $s3, %lo(D_801D7E90)
/* 7FCC8 800C54C8 03009025 */  or         $s2, $t8, $zero
/* 7FCCC 800C54CC 24150140 */  addiu      $s5, $zero, 0x140
/* 7FCD0 800C54D0 24160041 */  addiu      $s6, $zero, 0x41
/* 7FCD4 800C54D4 24170046 */  addiu      $s7, $zero, 0x46
/* 7FCD8 800C54D8 241E0047 */  addiu      $fp, $zero, 0x47
/* 7FCDC 800C54DC 12510079 */  beq        $s2, $s1, .L800C56C4
/* 7FCE0 800C54E0 02201025 */   or        $v0, $s1, $zero
.L800C54E4:
/* 7FCE4 800C54E4 305900FF */  andi       $t9, $v0, 0xFF
/* 7FCE8 800C54E8 001940C0 */  sll        $t0, $t9, 3
/* 7FCEC 800C54EC 02688021 */  addu       $s0, $s3, $t0
/* 7FCF0 800C54F0 92050001 */  lbu        $a1, 0x1($s0)
/* 7FCF4 800C54F4 26310001 */  addiu      $s1, $s1, 0x1
/* 7FCF8 800C54F8 322900FF */  andi       $t1, $s1, 0xFF
/* 7FCFC 800C54FC 28A10004 */  slti       $at, $a1, 0x4
/* 7FD00 800C5500 1020006D */  beqz       $at, L800C56B8
/* 7FD04 800C5504 01208825 */   or        $s1, $t1, $zero
/* 7FD08 800C5508 00B50019 */  multu      $a1, $s5
/* 7FD0C 800C550C 92040000 */  lbu        $a0, 0x0($s0)
/* 7FD10 800C5510 308B0080 */  andi       $t3, $a0, 0x80
/* 7FD14 800C5514 308C0040 */  andi       $t4, $a0, 0x40
/* 7FD18 800C5518 00005012 */  mflo       $t2
/* 7FD1C 800C551C 028A1821 */  addu       $v1, $s4, $t2
/* 7FD20 800C5520 11600005 */  beqz       $t3, .L800C5538
/* 7FD24 800C5524 00000000 */   nop
/* 7FD28 800C5528 0C031422 */  jal        func_800C5088
/* 7FD2C 800C552C 02002025 */   or        $a0, $s0, $zero
/* 7FD30 800C5530 10000062 */  b          .L800C56BC
/* 7FD34 800C5534 02201025 */   or        $v0, $s1, $zero
.L800C5538:
/* 7FD38 800C5538 51800020 */  beql       $t4, $zero, .L800C55BC
/* 7FD3C 800C553C 8C6C0000 */   lw        $t4, 0x0($v1)
/* 7FD40 800C5540 5096000A */  beql       $a0, $s6, .L800C556C
/* 7FD44 800C5544 906E0000 */   lbu       $t6, 0x0($v1)
/* 7FD48 800C5548 50970017 */  beql       $a0, $s7, .L800C55A8
/* 7FD4C 800C554C 920A0003 */   lbu       $t2, 0x3($s0)
/* 7FD50 800C5550 109E000B */  beq        $a0, $fp, .L800C5580
/* 7FD54 800C5554 24010048 */   addiu     $at, $zero, 0x48
/* 7FD58 800C5558 50810010 */  beql       $a0, $at, .L800C559C
/* 7FD5C 800C555C 82080004 */   lb        $t0, 0x4($s0)
/* 7FD60 800C5560 10000056 */  b          .L800C56BC
/* 7FD64 800C5564 02201025 */   or        $v0, $s1, $zero
/* 7FD68 800C5568 906E0000 */  lbu        $t6, 0x0($v1)
.L800C556C:
/* 7FD6C 800C556C C6040004 */  lwc1       $f4, 0x4($s0)
/* 7FD70 800C5570 35CF0004 */  ori        $t7, $t6, 0x4
/* 7FD74 800C5574 A06F0000 */  sb         $t7, 0x0($v1)
/* 7FD78 800C5578 1000004F */  b          L800C56B8
/* 7FD7C 800C557C E4640028 */   swc1      $f4, 0x28($v1)
.L800C5580:
/* 7FD80 800C5580 8E180004 */  lw         $t8, 0x4($s0)
/* 7FD84 800C5584 0018C880 */  sll        $t9, $t8, 2
/* 7FD88 800C5588 0338C823 */  subu       $t9, $t9, $t8
/* 7FD8C 800C558C 0019C900 */  sll        $t9, $t9, 4
/* 7FD90 800C5590 10000049 */  b          L800C56B8
/* 7FD94 800C5594 A4790008 */   sh        $t9, 0x8($v1)
/* 7FD98 800C5598 82080004 */  lb         $t0, 0x4($s0)
.L800C559C:
/* 7FD9C 800C559C 10000046 */  b          L800C56B8
/* 7FDA0 800C55A0 A468000C */   sh        $t0, 0xC($v1)
/* 7FDA4 800C55A4 920A0003 */  lbu        $t2, 0x3($s0)
.L800C55A8:
/* 7FDA8 800C55A8 82090004 */  lb         $t1, 0x4($s0)
/* 7FDAC 800C55AC 006A5821 */  addu       $t3, $v1, $t2
/* 7FDB0 800C55B0 10000041 */  b          L800C56B8
/* 7FDB4 800C55B4 A1690007 */   sb        $t1, 0x7($t3)
/* 7FDB8 800C55B8 8C6C0000 */  lw         $t4, 0x0($v1)
.L800C55BC:
/* 7FDBC 800C55BC 000C6FC2 */  srl        $t5, $t4, 31
/* 7FDC0 800C55C0 51A0003E */  beql       $t5, $zero, .L800C56BC
/* 7FDC4 800C55C4 02201025 */   or        $v0, $s1, $zero
/* 7FDC8 800C55C8 92050002 */  lbu        $a1, 0x2($s0)
/* 7FDCC 800C55CC 28A10010 */  slti       $at, $a1, 0x10
/* 7FDD0 800C55D0 10200039 */  beqz       $at, L800C56B8
/* 7FDD4 800C55D4 00057080 */   sll       $t6, $a1, 2
/* 7FDD8 800C55D8 006E7821 */  addu       $t7, $v1, $t6
/* 7FDDC 800C55DC 8DE20030 */  lw         $v0, 0x30($t7)
/* 7FDE0 800C55E0 3C188004 */  lui        $t8, %hi(D_80044688)
/* 7FDE4 800C55E4 27184688 */  addiu      $t8, $t8, %lo(D_80044688)
/* 7FDE8 800C55E8 10580033 */  beq        $v0, $t8, L800C56B8
/* 7FDEC 800C55EC 2499FFFF */   addiu     $t9, $a0, -0x1
/* 7FDF0 800C55F0 2F210008 */  sltiu      $at, $t9, 0x8
/* 7FDF4 800C55F4 10200030 */  beqz       $at, L800C56B8
/* 7FDF8 800C55F8 0019C880 */   sll       $t9, $t9, 2
/* 7FDFC 800C55FC 3C01800F */  lui        $at, %hi(jtbl_800EC5B0_main)
/* 7FE00 800C5600 00390821 */  addu       $at, $at, $t9
/* 7FE04 800C5604 8C39C5B0 */  lw         $t9, %lo(jtbl_800EC5B0_main)($at)
/* 7FE08 800C5608 03200008 */  jr         $t9
/* 7FE0C 800C560C 00000000 */   nop
glabel L800C5610
/* 7FE10 800C5610 904A0001 */  lbu        $t2, 0x1($v0)
/* 7FE14 800C5614 C6060004 */  lwc1       $f6, 0x4($s0)
/* 7FE18 800C5618 35490040 */  ori        $t1, $t2, 0x40
/* 7FE1C 800C561C A0490001 */  sb         $t1, 0x1($v0)
/* 7FE20 800C5620 10000025 */  b          L800C56B8
/* 7FE24 800C5624 E4460020 */   swc1      $f6, 0x20($v0)
glabel L800C5628
/* 7FE28 800C5628 904C0001 */  lbu        $t4, 0x1($v0)
/* 7FE2C 800C562C C6080004 */  lwc1       $f8, 0x4($s0)
/* 7FE30 800C5630 358D0040 */  ori        $t5, $t4, 0x40
/* 7FE34 800C5634 A04D0001 */  sb         $t5, 0x1($v0)
/* 7FE38 800C5638 1000001F */  b          L800C56B8
/* 7FE3C 800C563C E4480024 */   swc1      $f8, 0x24($v0)
glabel L800C5640
/* 7FE40 800C5640 90580001 */  lbu        $t8, 0x1($v0)
/* 7FE44 800C5644 820E0004 */  lb         $t6, 0x4($s0)
/* 7FE48 800C5648 37190020 */  ori        $t9, $t8, 0x20
/* 7FE4C 800C564C A0590001 */  sb         $t9, 0x1($v0)
/* 7FE50 800C5650 10000019 */  b          L800C56B8
/* 7FE54 800C5654 A04E0009 */   sb        $t6, 0x9($v0)
glabel L800C5658
/* 7FE58 800C5658 904A0001 */  lbu        $t2, 0x1($v0)
/* 7FE5C 800C565C C60A0004 */  lwc1       $f10, 0x4($s0)
/* 7FE60 800C5660 35490080 */  ori        $t1, $t2, 0x80
/* 7FE64 800C5664 A0490001 */  sb         $t1, 0x1($v0)
/* 7FE68 800C5668 10000013 */  b          L800C56B8
/* 7FE6C 800C566C E44A0030 */   swc1      $f10, 0x30($v0)
glabel L800C5670
/* 7FE70 800C5670 820B0004 */  lb         $t3, 0x4($s0)
/* 7FE74 800C5674 10000010 */  b          L800C56B8
/* 7FE78 800C5678 A04B0004 */   sb        $t3, 0x4($v0)
glabel L800C567C
/* 7FE7C 800C567C 92030003 */  lbu        $v1, 0x3($s0)
/* 7FE80 800C5680 28610008 */  slti       $at, $v1, 0x8
/* 7FE84 800C5684 5020000D */  beql       $at, $zero, .L800C56BC
/* 7FE88 800C5688 02201025 */   or        $v0, $s1, $zero
/* 7FE8C 800C568C 820C0004 */  lb         $t4, 0x4($s0)
/* 7FE90 800C5690 00436821 */  addu       $t5, $v0, $v1
/* 7FE94 800C5694 10000008 */  b          L800C56B8
/* 7FE98 800C5698 A1AC0058 */   sb        $t4, 0x58($t5)
glabel L800C569C
/* 7FE9C 800C569C 820F0004 */  lb         $t7, 0x4($s0)
/* 7FEA0 800C56A0 90480000 */  lbu        $t0, 0x0($v0)
/* 7FEA4 800C56A4 000FC100 */  sll        $t8, $t7, 4
/* 7FEA8 800C56A8 33190010 */  andi       $t9, $t8, 0x10
/* 7FEAC 800C56AC 310AFFEF */  andi       $t2, $t0, 0xFFEF
/* 7FEB0 800C56B0 032A4825 */  or         $t1, $t9, $t2
/* 7FEB4 800C56B4 A0490000 */  sb         $t1, 0x0($v0)
glabel L800C56B8
/* 7FEB8 800C56B8 02201025 */  or         $v0, $s1, $zero
.L800C56BC:
/* 7FEBC 800C56BC 1651FF89 */  bne        $s2, $s1, .L800C54E4
/* 7FEC0 800C56C0 A2000000 */   sb        $zero, 0x0($s0)
.L800C56C4:
/* 7FEC4 800C56C4 8FBF003C */  lw         $ra, 0x3C($sp)
/* 7FEC8 800C56C8 8FB00018 */  lw         $s0, 0x18($sp)
/* 7FECC 800C56CC 8FB1001C */  lw         $s1, 0x1C($sp)
/* 7FED0 800C56D0 8FB20020 */  lw         $s2, 0x20($sp)
/* 7FED4 800C56D4 8FB30024 */  lw         $s3, 0x24($sp)
/* 7FED8 800C56D8 8FB40028 */  lw         $s4, 0x28($sp)
/* 7FEDC 800C56DC 8FB5002C */  lw         $s5, 0x2C($sp)
/* 7FEE0 800C56E0 8FB60030 */  lw         $s6, 0x30($sp)
/* 7FEE4 800C56E4 8FB70034 */  lw         $s7, 0x34($sp)
/* 7FEE8 800C56E8 8FBE0038 */  lw         $fp, 0x38($sp)
/* 7FEEC 800C56EC 03E00008 */  jr         $ra
/* 7FEF0 800C56F0 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_800C56F4
/* 7FEF4 800C56F4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7FEF8 800C56F8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7FEFC 800C56FC 0C0314B3 */  jal        func_800C52CC
/* 7FF00 800C5700 00000000 */   nop
/* 7FF04 800C5704 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7FF08 800C5708 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7FF0C 800C570C 03E00008 */  jr         $ra
/* 7FF10 800C5710 00000000 */   nop
/* 7FF14 800C5714 00000000 */  nop
/* 7FF18 800C5718 00000000 */  nop
/* 7FF1C 800C571C 00000000 */  nop
