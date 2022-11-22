.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800C8C10
/* 83410 800C8C10 27BDFEB0 */  addiu      $sp, $sp, -0x150
/* 83414 800C8C14 AFBF002C */  sw         $ra, 0x2C($sp)
/* 83418 800C8C18 AFB50028 */  sw         $s5, 0x28($sp)
/* 8341C 800C8C1C AFB40024 */  sw         $s4, 0x24($sp)
/* 83420 800C8C20 AFB30020 */  sw         $s3, 0x20($sp)
/* 83424 800C8C24 AFB2001C */  sw         $s2, 0x1C($sp)
/* 83428 800C8C28 AFB10018 */  sw         $s1, 0x18($sp)
/* 8342C 800C8C2C AFB00014 */  sw         $s0, 0x14($sp)
/* 83430 800C8C30 AFA50154 */  sw         $a1, 0x154($sp)
/* 83434 800C8C34 8C8E0000 */  lw         $t6, 0x0($a0)
/* 83438 800C8C38 0080A025 */  or         $s4, $a0, $zero
/* 8343C 800C8C3C 31CF0001 */  andi       $t7, $t6, 0x1
/* 83440 800C8C40 15E00003 */  bnez       $t7, .L800C8C50
/* 83444 800C8C44 00008025 */   or        $s0, $zero, $zero
/* 83448 800C8C48 10000052 */  b          .L800C8D94
/* 8344C 800C8C4C 24020005 */   addiu     $v0, $zero, 0x5
.L800C8C50:
/* 83450 800C8C50 0C03375F */  jal        func_800CDD7C
/* 83454 800C8C54 02802025 */   or        $a0, $s4, $zero
/* 83458 800C8C58 24010002 */  addiu      $at, $zero, 0x2
/* 8345C 800C8C5C 14410003 */  bne        $v0, $at, .L800C8C6C
/* 83460 800C8C60 00000000 */   nop
/* 83464 800C8C64 1000004B */  b          .L800C8D94
/* 83468 800C8C68 24020002 */   addiu     $v0, $zero, 0x2
.L800C8C6C:
/* 8346C 800C8C6C 92980064 */  lbu        $t8, 0x64($s4)
/* 83470 800C8C70 00009825 */  or         $s3, $zero, $zero
/* 83474 800C8C74 1B000043 */  blez       $t8, .L800C8D84
/* 83478 800C8C78 24150080 */   addiu     $s5, $zero, 0x80
/* 8347C 800C8C7C 27B20148 */  addiu      $s2, $sp, 0x148
/* 83480 800C8C80 24110003 */  addiu      $s1, $zero, 0x3
.L800C8C84:
/* 83484 800C8C84 02802025 */  or         $a0, $s4, $zero
/* 83488 800C8C88 27A50048 */  addiu      $a1, $sp, 0x48
/* 8348C 800C8C8C 00003025 */  or         $a2, $zero, $zero
/* 83490 800C8C90 0C0337A5 */  jal        func_800CDE94
/* 83494 800C8C94 326700FF */   andi      $a3, $s3, 0xFF
/* 83498 800C8C98 10400003 */  beqz       $v0, .L800C8CA8
/* 8349C 800C8C9C 00000000 */   nop
/* 834A0 800C8CA0 1000003D */  b          .L800C8D98
/* 834A4 800C8CA4 8FBF002C */   lw        $ra, 0x2C($sp)
.L800C8CA8:
/* 834A8 800C8CA8 1A600003 */  blez       $s3, .L800C8CB8
/* 834AC 800C8CAC 00000000 */   nop
/* 834B0 800C8CB0 10000003 */  b          .L800C8CC0
/* 834B4 800C8CB4 24050001 */   addiu     $a1, $zero, 0x1
.L800C8CB8:
/* 834B8 800C8CB8 8E850060 */  lw         $a1, 0x60($s4)
/* 834BC 800C8CBC 00000000 */  nop
.L800C8CC0:
/* 834C0 800C8CC0 28A10080 */  slti       $at, $a1, 0x80
/* 834C4 800C8CC4 10200029 */  beqz       $at, .L800C8D6C
/* 834C8 800C8CC8 00A01825 */   or        $v1, $a1, $zero
/* 834CC 800C8CCC 02A53023 */  subu       $a2, $s5, $a1
/* 834D0 800C8CD0 30D90003 */  andi       $t9, $a2, 0x3
/* 834D4 800C8CD4 1320000C */  beqz       $t9, .L800C8D08
/* 834D8 800C8CD8 03252021 */   addu      $a0, $t9, $a1
/* 834DC 800C8CDC 00054040 */  sll        $t0, $a1, 1
/* 834E0 800C8CE0 27A90048 */  addiu      $t1, $sp, 0x48
/* 834E4 800C8CE4 01091021 */  addu       $v0, $t0, $t1
.L800C8CE8:
/* 834E8 800C8CE8 944A0000 */  lhu        $t2, 0x0($v0)
/* 834EC 800C8CEC 24630001 */  addiu      $v1, $v1, 0x1
/* 834F0 800C8CF0 162A0002 */  bne        $s1, $t2, .L800C8CFC
/* 834F4 800C8CF4 00000000 */   nop
/* 834F8 800C8CF8 26100001 */  addiu      $s0, $s0, 0x1
.L800C8CFC:
/* 834FC 800C8CFC 1483FFFA */  bne        $a0, $v1, .L800C8CE8
/* 83500 800C8D00 24420002 */   addiu     $v0, $v0, 0x2
/* 83504 800C8D04 10750019 */  beq        $v1, $s5, .L800C8D6C
.L800C8D08:
/* 83508 800C8D08 00035840 */   sll       $t3, $v1, 1
/* 8350C 800C8D0C 27AC0048 */  addiu      $t4, $sp, 0x48
/* 83510 800C8D10 016C1021 */  addu       $v0, $t3, $t4
.L800C8D14:
/* 83514 800C8D14 944D0000 */  lhu        $t5, 0x0($v0)
/* 83518 800C8D18 00000000 */  nop
/* 8351C 800C8D1C 162D0002 */  bne        $s1, $t5, .L800C8D28
/* 83520 800C8D20 00000000 */   nop
/* 83524 800C8D24 26100001 */  addiu      $s0, $s0, 0x1
.L800C8D28:
/* 83528 800C8D28 944E0002 */  lhu        $t6, 0x2($v0)
/* 8352C 800C8D2C 00000000 */  nop
/* 83530 800C8D30 162E0002 */  bne        $s1, $t6, .L800C8D3C
/* 83534 800C8D34 00000000 */   nop
/* 83538 800C8D38 26100001 */  addiu      $s0, $s0, 0x1
.L800C8D3C:
/* 8353C 800C8D3C 944F0004 */  lhu        $t7, 0x4($v0)
/* 83540 800C8D40 00000000 */  nop
/* 83544 800C8D44 162F0002 */  bne        $s1, $t7, .L800C8D50
/* 83548 800C8D48 00000000 */   nop
/* 8354C 800C8D4C 26100001 */  addiu      $s0, $s0, 0x1
.L800C8D50:
/* 83550 800C8D50 94580006 */  lhu        $t8, 0x6($v0)
/* 83554 800C8D54 24420008 */  addiu      $v0, $v0, 0x8
/* 83558 800C8D58 16380002 */  bne        $s1, $t8, .L800C8D64
/* 8355C 800C8D5C 00000000 */   nop
/* 83560 800C8D60 26100001 */  addiu      $s0, $s0, 0x1
.L800C8D64:
/* 83564 800C8D64 1452FFEB */  bne        $v0, $s2, .L800C8D14
/* 83568 800C8D68 00000000 */   nop
.L800C8D6C:
/* 8356C 800C8D6C 92880064 */  lbu        $t0, 0x64($s4)
/* 83570 800C8D70 26730001 */  addiu      $s3, $s3, 0x1
/* 83574 800C8D74 327900FF */  andi       $t9, $s3, 0xFF
/* 83578 800C8D78 0328082A */  slt        $at, $t9, $t0
/* 8357C 800C8D7C 1420FFC1 */  bnez       $at, .L800C8C84
/* 83580 800C8D80 03209825 */   or        $s3, $t9, $zero
.L800C8D84:
/* 83584 800C8D84 8FAA0154 */  lw         $t2, 0x154($sp)
/* 83588 800C8D88 00104A00 */  sll        $t1, $s0, 8
/* 8358C 800C8D8C 00001025 */  or         $v0, $zero, $zero
/* 83590 800C8D90 AD490000 */  sw         $t1, 0x0($t2)
.L800C8D94:
/* 83594 800C8D94 8FBF002C */  lw         $ra, 0x2C($sp)
.L800C8D98:
/* 83598 800C8D98 8FB00014 */  lw         $s0, 0x14($sp)
/* 8359C 800C8D9C 8FB10018 */  lw         $s1, 0x18($sp)
/* 835A0 800C8DA0 8FB2001C */  lw         $s2, 0x1C($sp)
/* 835A4 800C8DA4 8FB30020 */  lw         $s3, 0x20($sp)
/* 835A8 800C8DA8 8FB40024 */  lw         $s4, 0x24($sp)
/* 835AC 800C8DAC 8FB50028 */  lw         $s5, 0x28($sp)
/* 835B0 800C8DB0 03E00008 */  jr         $ra
/* 835B4 800C8DB4 27BD0150 */   addiu     $sp, $sp, 0x150
/* 835B8 800C8DB8 00000000 */  nop
/* 835BC 800C8DBC 00000000 */  nop
