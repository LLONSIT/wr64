.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800B72F0
/* 71AF0 800B72F0 462C6002 */  mul.d      $f0, $f12, $f12
/* 71AF4 800B72F4 24C2FFF7 */  addiu      $v0, $a2, -0x9
/* 71AF8 800B72F8 44864000 */  mtc1       $a2, $f8
/* 71AFC 800B72FC 304E0001 */  andi       $t6, $v0, 0x1
/* 71B00 800B7300 304F0002 */  andi       $t7, $v0, 0x2
/* 71B04 800B7304 30580004 */  andi       $t8, $v0, 0x4
/* 71B08 800B7308 30590008 */  andi       $t9, $v0, 0x8
/* 71B0C 800B730C 468042A1 */  cvt.d.w    $f10, $f8
/* 71B10 800B7310 46200082 */  mul.d      $f2, $f0, $f0
/* 71B14 800B7314 00000000 */  nop
/* 71B18 800B7318 46221382 */  mul.d      $f14, $f2, $f2
/* 71B1C 800B731C 11C00003 */  beqz       $t6, .L800B732C
/* 71B20 800B7320 46207406 */   mov.d     $f16, $f14
/* 71B24 800B7324 462C7402 */  mul.d      $f16, $f14, $f12
/* 71B28 800B7328 00000000 */  nop
.L800B732C:
/* 71B2C 800B732C 11E00003 */  beqz       $t7, .L800B733C
/* 71B30 800B7330 00000000 */   nop
/* 71B34 800B7334 46208402 */  mul.d      $f16, $f16, $f0
/* 71B38 800B7338 00000000 */  nop
.L800B733C:
/* 71B3C 800B733C 13000003 */  beqz       $t8, .L800B734C
/* 71B40 800B7340 00000000 */   nop
/* 71B44 800B7344 46228402 */  mul.d      $f16, $f16, $f2
/* 71B48 800B7348 00000000 */  nop
.L800B734C:
/* 71B4C 800B734C 13200003 */  beqz       $t9, .L800B735C
/* 71B50 800B7350 00000000 */   nop
/* 71B54 800B7354 462E8402 */  mul.d      $f16, $f16, $f14
/* 71B58 800B7358 00000000 */  nop
.L800B735C:
/* 71B5C 800B735C 462C8102 */  mul.d      $f4, $f16, $f12
/* 71B60 800B7360 D7A60010 */  ldc1       $f6, 0x10($sp)
/* 71B64 800B7364 46305402 */  mul.d      $f16, $f10, $f16
/* 71B68 800B7368 46262081 */  sub.d      $f2, $f4, $f6
/* 71B6C 800B736C 46301483 */  div.d      $f18, $f2, $f16
/* 71B70 800B7370 03E00008 */  jr         $ra
/* 71B74 800B7374 46326001 */   sub.d     $f0, $f12, $f18

glabel func_800B7378
/* 71B78 800B7378 44802800 */  mtc1       $zero, $f5
/* 71B7C 800B737C 44802000 */  mtc1       $zero, $f4
/* 71B80 800B7380 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 71B84 800B7384 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 71B88 800B7388 46246032 */  c.eq.d     $f12, $f4
/* 71B8C 800B738C 3C013FF8 */  lui        $at, (0x3FF80000 >> 16)
/* 71B90 800B7390 AFB20040 */  sw         $s2, 0x40($sp)
/* 71B94 800B7394 F7B80030 */  sdc1       $f24, 0x30($sp)
/* 71B98 800B7398 4481A800 */  mtc1       $at, $f21
/* 71B9C 800B739C 4480A000 */  mtc1       $zero, $f20
/* 71BA0 800B73A0 46206606 */  mov.d      $f24, $f12
/* 71BA4 800B73A4 00C09025 */  or         $s2, $a2, $zero
/* 71BA8 800B73A8 AFBF0044 */  sw         $ra, 0x44($sp)
/* 71BAC 800B73AC AFB1003C */  sw         $s1, 0x3C($sp)
/* 71BB0 800B73B0 AFB00038 */  sw         $s0, 0x38($sp)
/* 71BB4 800B73B4 45000006 */  bc1f       .L800B73D0
/* 71BB8 800B73B8 F7B60028 */   sdc1      $f22, 0x28($sp)
/* 71BBC 800B73BC 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 71BC0 800B73C0 4481A800 */  mtc1       $at, $f21
/* 71BC4 800B73C4 4480A000 */  mtc1       $zero, $f20
/* 71BC8 800B73C8 10000018 */  b          .L800B742C
/* 71BCC 800B73CC 8FBF0044 */   lw        $ra, 0x44($sp)
.L800B73D0:
/* 71BD0 800B73D0 3C01800F */  lui        $at, %hi(D_800EBC20)
/* 71BD4 800B73D4 D436BC20 */  ldc1       $f22, %lo(D_800EBC20)($at)
/* 71BD8 800B73D8 00008025 */  or         $s0, $zero, $zero
/* 71BDC 800B73DC 24110040 */  addiu      $s1, $zero, 0x40
.L800B73E0:
/* 71BE0 800B73E0 4620A306 */  mov.d      $f12, $f20
/* 71BE4 800B73E4 02403025 */  or         $a2, $s2, $zero
/* 71BE8 800B73E8 0C02DCBC */  jal        func_800B72F0
/* 71BEC 800B73EC F7B80010 */   sdc1      $f24, 0x10($sp)
/* 71BF0 800B73F0 4634003C */  c.lt.d     $f0, $f20
/* 71BF4 800B73F4 26100001 */  addiu      $s0, $s0, 0x1
/* 71BF8 800B73F8 46340301 */  sub.d      $f12, $f0, $f20
/* 71BFC 800B73FC 45000002 */  bc1f       .L800B7408
/* 71C00 800B7400 46206086 */   mov.d     $f2, $f12
/* 71C04 800B7404 46206087 */  neg.d      $f2, $f12
.L800B7408:
/* 71C08 800B7408 4636103C */  c.lt.d     $f2, $f22
/* 71C0C 800B740C 00000000 */  nop
/* 71C10 800B7410 45000003 */  bc1f       .L800B7420
/* 71C14 800B7414 00000000 */   nop
/* 71C18 800B7418 10000003 */  b          .L800B7428
/* 71C1C 800B741C 46200506 */   mov.d     $f20, $f0
.L800B7420:
/* 71C20 800B7420 1611FFEF */  bne        $s0, $s1, .L800B73E0
/* 71C24 800B7424 46200506 */   mov.d     $f20, $f0
.L800B7428:
/* 71C28 800B7428 8FBF0044 */  lw         $ra, 0x44($sp)
.L800B742C:
/* 71C2C 800B742C 4620A006 */  mov.d      $f0, $f20
/* 71C30 800B7430 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 71C34 800B7434 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 71C38 800B7438 D7B80030 */  ldc1       $f24, 0x30($sp)
/* 71C3C 800B743C 8FB00038 */  lw         $s0, 0x38($sp)
/* 71C40 800B7440 8FB1003C */  lw         $s1, 0x3C($sp)
/* 71C44 800B7444 8FB20040 */  lw         $s2, 0x40($sp)
/* 71C48 800B7448 03E00008 */  jr         $ra
/* 71C4C 800B744C 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_800B7450
/* 71C50 800B7450 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 71C54 800B7454 AFB30044 */  sw         $s3, 0x44($sp)
/* 71C58 800B7458 F7BA0030 */  sdc1       $f26, 0x30($sp)
/* 71C5C 800B745C F7B80028 */  sdc1       $f24, 0x28($sp)
/* 71C60 800B7460 AFB60050 */  sw         $s6, 0x50($sp)
/* 71C64 800B7464 AFB1003C */  sw         $s1, 0x3C($sp)
/* 71C68 800B7468 AFB00038 */  sw         $s0, 0x38($sp)
/* 71C6C 800B746C AFB5004C */  sw         $s5, 0x4C($sp)
/* 71C70 800B7470 AFB40048 */  sw         $s4, 0x48($sp)
/* 71C74 800B7474 AFB20040 */  sw         $s2, 0x40($sp)
/* 71C78 800B7478 3C108004 */  lui        $s0, %hi(D_8003B548)
/* 71C7C 800B747C 3C118004 */  lui        $s1, %hi(D_80038548)
/* 71C80 800B7480 3C168004 */  lui        $s6, %hi(D_8003C548)
/* 71C84 800B7484 4480C000 */  mtc1       $zero, $f24
/* 71C88 800B7488 4480D000 */  mtc1       $zero, $f26
/* 71C8C 800B748C AFBF0054 */  sw         $ra, 0x54($sp)
/* 71C90 800B7490 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 71C94 800B7494 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 71C98 800B7498 AFA40058 */  sw         $a0, 0x58($sp)
/* 71C9C 800B749C 26D6C548 */  addiu      $s6, $s6, %lo(D_8003C548)
/* 71CA0 800B74A0 26318548 */  addiu      $s1, $s1, %lo(D_80038548)
/* 71CA4 800B74A4 2610B548 */  addiu      $s0, $s0, %lo(D_8003B548)
/* 71CA8 800B74A8 00009025 */  or         $s2, $zero, $zero
/* 71CAC 800B74AC 00001025 */  or         $v0, $zero, $zero
/* 71CB0 800B74B0 04A10003 */  bgez       $a1, .L800B74C0
/* 71CB4 800B74B4 000598C3 */   sra       $s3, $a1, 3
/* 71CB8 800B74B8 24A10007 */  addiu      $at, $a1, 0x7
/* 71CBC 800B74BC 000198C3 */  sra        $s3, $at, 3
.L800B74C0:
/* 71CC0 800B74C0 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 71CC4 800B74C4 4481D800 */  mtc1       $at, $f27
/* 71CC8 800B74C8 3C0140F0 */  lui        $at, (0x40F00000 >> 16)
/* 71CCC 800B74CC 4481C800 */  mtc1       $at, $f25
/* 71CD0 800B74D0 26740001 */  addiu      $s4, $s3, 0x1
/* 71CD4 800B74D4 2675FFFF */  addiu      $s5, $s3, -0x1
.L800B74D8:
/* 71CD8 800B74D8 16400002 */  bnez       $s2, .L800B74E4
/* 71CDC 800B74DC 02401025 */   or        $v0, $s2, $zero
/* 71CE0 800B74E0 24020001 */  addiu      $v0, $zero, 0x1
.L800B74E4:
/* 71CE4 800B74E4 44822000 */  mtc1       $v0, $f4
/* 71CE8 800B74E8 02A03025 */  or         $a2, $s5, $zero
/* 71CEC 800B74EC 46802521 */  cvt.d.w    $f20, $f4
/* 71CF0 800B74F0 0C02DCDE */  jal        func_800B7378
/* 71CF4 800B74F4 4620A306 */   mov.d     $f12, $f20
/* 71CF8 800B74F8 4634D583 */  div.d      $f22, $f26, $f20
/* 71CFC 800B74FC 02A03025 */  or         $a2, $s5, $zero
/* 71D00 800B7500 462001A0 */  cvt.s.d    $f6, $f0
/* 71D04 800B7504 E6260000 */  swc1       $f6, 0x0($s1)
/* 71D08 800B7508 0C02DCDE */  jal        func_800B7378
/* 71D0C 800B750C 4620B306 */   mov.d     $f12, $f22
/* 71D10 800B7510 46380202 */  mul.d      $f8, $f0, $f24
/* 71D14 800B7514 4620A306 */  mov.d      $f12, $f20
/* 71D18 800B7518 02603025 */  or         $a2, $s3, $zero
/* 71D1C 800B751C 462042A0 */  cvt.s.d    $f10, $f8
/* 71D20 800B7520 0C02DCDE */  jal        func_800B7378
/* 71D24 800B7524 E60A0000 */   swc1      $f10, 0x0($s0)
/* 71D28 800B7528 46200420 */  cvt.s.d    $f16, $f0
/* 71D2C 800B752C 4620B306 */  mov.d      $f12, $f22
/* 71D30 800B7530 02603025 */  or         $a2, $s3, $zero
/* 71D34 800B7534 0C02DCDE */  jal        func_800B7378
/* 71D38 800B7538 E6301000 */   swc1      $f16, 0x1000($s1)
/* 71D3C 800B753C 46380482 */  mul.d      $f18, $f0, $f24
/* 71D40 800B7540 4620A306 */  mov.d      $f12, $f20
/* 71D44 800B7544 02803025 */  or         $a2, $s4, $zero
/* 71D48 800B7548 46209120 */  cvt.s.d    $f4, $f18
/* 71D4C 800B754C 0C02DCDE */  jal        func_800B7378
/* 71D50 800B7550 E6041000 */   swc1      $f4, 0x1000($s0)
/* 71D54 800B7554 462001A0 */  cvt.s.d    $f6, $f0
/* 71D58 800B7558 4620B306 */  mov.d      $f12, $f22
/* 71D5C 800B755C 02803025 */  or         $a2, $s4, $zero
/* 71D60 800B7560 0C02DCDE */  jal        func_800B7378
/* 71D64 800B7564 E6262000 */   swc1      $f6, 0x2000($s1)
/* 71D68 800B7568 46380202 */  mul.d      $f8, $f0, $f24
/* 71D6C 800B756C 26100004 */  addiu      $s0, $s0, 0x4
/* 71D70 800B7570 26520020 */  addiu      $s2, $s2, 0x20
/* 71D74 800B7574 26310004 */  addiu      $s1, $s1, 0x4
/* 71D78 800B7578 462042A0 */  cvt.s.d    $f10, $f8
/* 71D7C 800B757C 1616FFD6 */  bne        $s0, $s6, .L800B74D8
/* 71D80 800B7580 E60A1FFC */   swc1      $f10, 0x1FFC($s0)
/* 71D84 800B7584 8FBF0054 */  lw         $ra, 0x54($sp)
/* 71D88 800B7588 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 71D8C 800B758C D7B60020 */  ldc1       $f22, 0x20($sp)
/* 71D90 800B7590 D7B80028 */  ldc1       $f24, 0x28($sp)
/* 71D94 800B7594 D7BA0030 */  ldc1       $f26, 0x30($sp)
/* 71D98 800B7598 8FB00038 */  lw         $s0, 0x38($sp)
/* 71D9C 800B759C 8FB1003C */  lw         $s1, 0x3C($sp)
/* 71DA0 800B75A0 8FB20040 */  lw         $s2, 0x40($sp)
/* 71DA4 800B75A4 8FB30044 */  lw         $s3, 0x44($sp)
/* 71DA8 800B75A8 8FB40048 */  lw         $s4, 0x48($sp)
/* 71DAC 800B75AC 8FB5004C */  lw         $s5, 0x4C($sp)
/* 71DB0 800B75B0 8FB60050 */  lw         $s6, 0x50($sp)
/* 71DB4 800B75B4 03E00008 */  jr         $ra
/* 71DB8 800B75B8 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_800B75BC
/* 71DBC 800B75BC 3C038004 */  lui        $v1, %hi(D_8003EB78)
/* 71DC0 800B75C0 3C028004 */  lui        $v0, %hi(D_8003EBB8)
/* 71DC4 800B75C4 2442EBB8 */  addiu      $v0, $v0, %lo(D_8003EBB8)
/* 71DC8 800B75C8 2463EB78 */  addiu      $v1, $v1, %lo(D_8003EB78)
.L800B75CC:
/* 71DCC 800B75CC 24630001 */  addiu      $v1, $v1, 0x1
/* 71DD0 800B75D0 0062082B */  sltu       $at, $v1, $v0
/* 71DD4 800B75D4 1420FFFD */  bnez       $at, .L800B75CC
/* 71DD8 800B75D8 A060FFFF */   sb        $zero, -0x1($v1)
/* 71DDC 800B75DC 3C038004 */  lui        $v1, %hi(D_8003EBB8)
/* 71DE0 800B75E0 3C028004 */  lui        $v0, %hi(D_8003ECB8)
/* 71DE4 800B75E4 2442ECB8 */  addiu      $v0, $v0, %lo(D_8003ECB8)
/* 71DE8 800B75E8 2463EBB8 */  addiu      $v1, $v1, %lo(D_8003EBB8)
.L800B75EC:
/* 71DEC 800B75EC 24630004 */  addiu      $v1, $v1, 0x4
/* 71DF0 800B75F0 A060FFFD */  sb         $zero, -0x3($v1)
/* 71DF4 800B75F4 A060FFFE */  sb         $zero, -0x2($v1)
/* 71DF8 800B75F8 A060FFFF */  sb         $zero, -0x1($v1)
/* 71DFC 800B75FC 1462FFFB */  bne        $v1, $v0, .L800B75EC
/* 71E00 800B7600 A060FFFC */   sb        $zero, -0x4($v1)
/* 71E04 800B7604 03E00008 */  jr         $ra
/* 71E08 800B7608 00000000 */   nop

glabel func_800B760C
/* 71E0C 800B760C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 71E10 800B7610 3C028004 */  lui        $v0, %hi(D_80045548)
/* 71E14 800B7614 8C425548 */  lw         $v0, %lo(D_80045548)($v0)
/* 71E18 800B7618 AFB50028 */  sw         $s5, 0x28($sp)
/* 71E1C 800B761C AFB2001C */  sw         $s2, 0x1C($sp)
/* 71E20 800B7620 0080A825 */  or         $s5, $a0, $zero
/* 71E24 800B7624 AFBF002C */  sw         $ra, 0x2C($sp)
/* 71E28 800B7628 AFB40024 */  sw         $s4, 0x24($sp)
/* 71E2C 800B762C AFB30020 */  sw         $s3, 0x20($sp)
/* 71E30 800B7630 AFB10018 */  sw         $s1, 0x18($sp)
/* 71E34 800B7634 AFB00014 */  sw         $s0, 0x14($sp)
/* 71E38 800B7638 18400024 */  blez       $v0, .L800B76CC
/* 71E3C 800B763C 00009025 */   or        $s2, $zero, $zero
/* 71E40 800B7640 3C148004 */  lui        $s4, %hi(D_80044760)
/* 71E44 800B7644 3C138004 */  lui        $s3, %hi(D_8003FCC0)
/* 71E48 800B7648 2673FCC0 */  addiu      $s3, $s3, %lo(D_8003FCC0)
/* 71E4C 800B764C 26944760 */  addiu      $s4, $s4, %lo(D_80044760)
/* 71E50 800B7650 00008825 */  or         $s1, $zero, $zero
.L800B7654:
/* 71E54 800B7654 8E6E0000 */  lw         $t6, 0x0($s3)
/* 71E58 800B7658 022E8021 */  addu       $s0, $s1, $t6
/* 71E5C 800B765C 920F00B2 */  lbu        $t7, 0xB2($s0)
/* 71E60 800B7660 56AF0017 */  bnel       $s5, $t7, .L800B76C0
/* 71E64 800B7664 26520001 */   addiu     $s2, $s2, 0x1
/* 71E68 800B7668 92180030 */  lbu        $t8, 0x30($s0)
/* 71E6C 800B766C 2B010002 */  slti       $at, $t8, 0x2
/* 71E70 800B7670 14200009 */  bnez       $at, .L800B7698
/* 71E74 800B7674 00000000 */   nop
/* 71E78 800B7678 8E020044 */  lw         $v0, 0x44($s0)
/* 71E7C 800B767C 90590000 */  lbu        $t9, 0x0($v0)
/* 71E80 800B7680 3328FF7F */  andi       $t0, $t9, 0xFF7F
/* 71E84 800B7684 A0480000 */  sb         $t0, 0x0($v0)
/* 71E88 800B7688 8E020044 */  lw         $v0, 0x44($s0)
/* 71E8C 800B768C 904A0000 */  lbu        $t2, 0x0($v0)
/* 71E90 800B7690 354B0040 */  ori        $t3, $t2, 0x40
/* 71E94 800B7694 A04B0000 */  sb         $t3, 0x0($v0)
.L800B7698:
/* 71E98 800B7698 0C02EAC6 */  jal        func_800BAB18
/* 71E9C 800B769C 02002025 */   or        $a0, $s0, $zero
/* 71EA0 800B76A0 0C02EDB7 */  jal        func_800BB6DC
/* 71EA4 800B76A4 02002025 */   or        $a0, $s0, $zero
/* 71EA8 800B76A8 02802025 */  or         $a0, $s4, $zero
/* 71EAC 800B76AC 0C02F3EB */  jal        func_800BCFAC
/* 71EB0 800B76B0 02002825 */   or        $a1, $s0, $zero
/* 71EB4 800B76B4 3C028004 */  lui        $v0, %hi(D_80045548)
/* 71EB8 800B76B8 8C425548 */  lw         $v0, %lo(D_80045548)($v0)
/* 71EBC 800B76BC 26520001 */  addiu      $s2, $s2, 0x1
.L800B76C0:
/* 71EC0 800B76C0 0242082A */  slt        $at, $s2, $v0
/* 71EC4 800B76C4 1420FFE3 */  bnez       $at, .L800B7654
/* 71EC8 800B76C8 263100C0 */   addiu     $s1, $s1, 0xC0
.L800B76CC:
/* 71ECC 800B76CC 8FBF002C */  lw         $ra, 0x2C($sp)
/* 71ED0 800B76D0 8FB00014 */  lw         $s0, 0x14($sp)
/* 71ED4 800B76D4 8FB10018 */  lw         $s1, 0x18($sp)
/* 71ED8 800B76D8 8FB2001C */  lw         $s2, 0x1C($sp)
/* 71EDC 800B76DC 8FB30020 */  lw         $s3, 0x20($sp)
/* 71EE0 800B76E0 8FB40024 */  lw         $s4, 0x24($sp)
/* 71EE4 800B76E4 8FB50028 */  lw         $s5, 0x28($sp)
/* 71EE8 800B76E8 03E00008 */  jr         $ra
/* 71EEC 800B76EC 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_800B76F0
/* 71EF0 800B76F0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 71EF4 800B76F4 AFB1001C */  sw         $s1, 0x1C($sp)
/* 71EF8 800B76F8 AFB00018 */  sw         $s0, 0x18($sp)
/* 71EFC 800B76FC AFB20020 */  sw         $s2, 0x20($sp)
/* 71F00 800B7700 3C108004 */  lui        $s0, %hi(D_8003FCC8)
/* 71F04 800B7704 3C118004 */  lui        $s1, %hi(D_800401C8)
/* 71F08 800B7708 00809025 */  or         $s2, $a0, $zero
/* 71F0C 800B770C AFBF0024 */  sw         $ra, 0x24($sp)
/* 71F10 800B7710 263101C8 */  addiu      $s1, $s1, %lo(D_800401C8)
/* 71F14 800B7714 2610FCC8 */  addiu      $s0, $s0, %lo(D_8003FCC8)
/* 71F18 800B7718 8E0E0000 */  lw         $t6, 0x0($s0)
.L800B771C:
/* 71F1C 800B771C 000E7FC2 */  srl        $t7, $t6, 31
/* 71F20 800B7720 51E00007 */  beql       $t7, $zero, .L800B7740
/* 71F24 800B7724 26100140 */   addiu     $s0, $s0, 0x140
/* 71F28 800B7728 92180004 */  lbu        $t8, 0x4($s0)
/* 71F2C 800B772C 56580004 */  bnel       $s2, $t8, .L800B7740
/* 71F30 800B7730 26100140 */   addiu     $s0, $s0, 0x140
/* 71F34 800B7734 0C02F3B8 */  jal        func_800BCEE0
/* 71F38 800B7738 02002025 */   or        $a0, $s0, $zero
/* 71F3C 800B773C 26100140 */  addiu      $s0, $s0, 0x140
.L800B7740:
/* 71F40 800B7740 5611FFF6 */  bnel       $s0, $s1, .L800B771C
/* 71F44 800B7744 8E0E0000 */   lw        $t6, 0x0($s0)
/* 71F48 800B7748 8FBF0024 */  lw         $ra, 0x24($sp)
/* 71F4C 800B774C 8FB00018 */  lw         $s0, 0x18($sp)
/* 71F50 800B7750 8FB1001C */  lw         $s1, 0x1C($sp)
/* 71F54 800B7754 8FB20020 */  lw         $s2, 0x20($sp)
/* 71F58 800B7758 03E00008 */  jr         $ra
/* 71F5C 800B775C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800B7760
/* 71F60 800B7760 8C860004 */  lw         $a2, 0x4($a0)
/* 71F64 800B7764 8C8F0000 */  lw         $t7, 0x0($a0)
/* 71F68 800B7768 8C980008 */  lw         $t8, 0x8($a0)
/* 71F6C 800B776C 24A2000F */  addiu      $v0, $a1, 0xF
/* 71F70 800B7770 2401FFF0 */  addiu      $at, $zero, -0x10
/* 71F74 800B7774 00417024 */  and        $t6, $v0, $at
/* 71F78 800B7778 00CE4021 */  addu       $t0, $a2, $t6
/* 71F7C 800B777C 01F8C821 */  addu       $t9, $t7, $t8
/* 71F80 800B7780 0328082B */  sltu       $at, $t9, $t0
/* 71F84 800B7784 1420000E */  bnez       $at, .L800B77C0
/* 71F88 800B7788 00C01825 */   or        $v1, $a2, $zero
/* 71F8C 800B778C 00CE4821 */  addu       $t1, $a2, $t6
/* 71F90 800B7790 00C9082B */  sltu       $at, $a2, $t1
/* 71F94 800B7794 AC890004 */  sw         $t1, 0x4($a0)
/* 71F98 800B7798 1020000B */  beqz       $at, .L800B77C8
/* 71F9C 800B779C 00C02825 */   or        $a1, $a2, $zero
/* 71FA0 800B77A0 A0A00000 */  sb         $zero, 0x0($a1)
.L800B77A4:
/* 71FA4 800B77A4 8C8B0004 */  lw         $t3, 0x4($a0)
/* 71FA8 800B77A8 24A50001 */  addiu      $a1, $a1, 0x1
/* 71FAC 800B77AC 00AB082B */  sltu       $at, $a1, $t3
/* 71FB0 800B77B0 5420FFFC */  bnel       $at, $zero, .L800B77A4
/* 71FB4 800B77B4 A0A00000 */   sb        $zero, 0x0($a1)
/* 71FB8 800B77B8 10000004 */  b          .L800B77CC
/* 71FBC 800B77BC 00601025 */   or        $v0, $v1, $zero
.L800B77C0:
/* 71FC0 800B77C0 03E00008 */  jr         $ra
/* 71FC4 800B77C4 00001025 */   or        $v0, $zero, $zero
.L800B77C8:
/* 71FC8 800B77C8 00601025 */  or         $v0, $v1, $zero
.L800B77CC:
/* 71FCC 800B77CC 03E00008 */  jr         $ra
/* 71FD0 800B77D0 00000000 */   nop

glabel func_800B77D4
/* 71FD4 800B77D4 24A2000F */  addiu      $v0, $a1, 0xF
/* 71FD8 800B77D8 2401FFF0 */  addiu      $at, $zero, -0x10
/* 71FDC 800B77DC 00417024 */  and        $t6, $v0, $at
/* 71FE0 800B77E0 AC8E0000 */  sw         $t6, 0x0($a0)
/* 71FE4 800B77E4 AC8E0004 */  sw         $t6, 0x4($a0)
/* 71FE8 800B77E8 AC860008 */  sw         $a2, 0x8($a0)
/* 71FEC 800B77EC 03E00008 */  jr         $ra
/* 71FF0 800B77F0 AC80000C */   sw        $zero, 0xC($a0)

glabel func_800B77F4
/* 71FF4 800B77F4 8C8E0004 */  lw         $t6, 0x4($a0)
/* 71FF8 800B77F8 AC800010 */  sw         $zero, 0x10($a0)
/* 71FFC 800B77FC AC800000 */  sw         $zero, 0x0($a0)
/* 72000 800B7800 03E00008 */  jr         $ra
/* 72004 800B7804 AC8E0008 */   sw        $t6, 0x8($a0)

glabel func_800B7808
/* 72008 800B7808 8C820004 */  lw         $v0, 0x4($a0)
/* 7200C 800B780C 8C8E000C */  lw         $t6, 0xC($a0)
/* 72010 800B7810 2403FFFF */  addiu      $v1, $zero, -0x1
/* 72014 800B7814 AC800010 */  sw         $zero, 0x10($a0)
/* 72018 800B7818 004E7821 */  addu       $t7, $v0, $t6
/* 7201C 800B781C AC800000 */  sw         $zero, 0x0($a0)
/* 72020 800B7820 AC8F0020 */  sw         $t7, 0x20($a0)
/* 72024 800B7824 AC83001C */  sw         $v1, 0x1C($a0)
/* 72028 800B7828 AC830028 */  sw         $v1, 0x28($a0)
/* 7202C 800B782C AC820008 */  sw         $v0, 0x8($a0)
/* 72030 800B7830 03E00008 */  jr         $ra
/* 72034 800B7834 AC820014 */   sw        $v0, 0x14($a0)

glabel func_800B7838
/* 72038 800B7838 8C8E0000 */  lw         $t6, 0x0($a0)
/* 7203C 800B783C AC80000C */  sw         $zero, 0xC($a0)
/* 72040 800B7840 03E00008 */  jr         $ra
/* 72044 800B7844 AC8E0004 */   sw        $t6, 0x4($a0)

glabel func_800B7848
/* 72048 800B7848 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7204C 800B784C 00803025 */  or         $a2, $a0, $zero
/* 72050 800B7850 AFBF0014 */  sw         $ra, 0x14($sp)
/* 72054 800B7854 3C048004 */  lui        $a0, %hi(D_8003E560)
/* 72058 800B7858 3C058000 */  lui        $a1, %hi(D_80001000)
/* 7205C 800B785C 24A51000 */  addiu      $a1, $a1, %lo(D_80001000)
/* 72060 800B7860 2484E560 */  addiu      $a0, $a0, %lo(D_8003E560)
/* 72064 800B7864 0C02DDF5 */  jal        func_800B77D4
/* 72068 800B7868 AFA60018 */   sw        $a2, 0x18($sp)
/* 7206C 800B786C 8FA70018 */  lw         $a3, 0x18($sp)
/* 72070 800B7870 3C0F800F */  lui        $t7, %hi(D_800EE2F8)
/* 72074 800B7874 8DEFE2F8 */  lw         $t7, %lo(D_800EE2F8)($t7)
/* 72078 800B7878 3C0E8000 */  lui        $t6, %hi(D_80001000)
/* 7207C 800B787C 25CE1000 */  addiu      $t6, $t6, %lo(D_80001000)
/* 72080 800B7880 3C048004 */  lui        $a0, %hi(D_8003E550)
/* 72084 800B7884 2484E550 */  addiu      $a0, $a0, %lo(D_8003E550)
/* 72088 800B7888 00EE2821 */  addu       $a1, $a3, $t6
/* 7208C 800B788C 0C02DDF5 */  jal        func_800B77D4
/* 72090 800B7890 01E73023 */   subu      $a2, $t7, $a3
/* 72094 800B7894 8FBF0014 */  lw         $ra, 0x14($sp)
/* 72098 800B7898 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7209C 800B789C 03E00008 */  jr         $ra
/* 720A0 800B78A0 00000000 */   nop

glabel func_800B78A4
/* 720A4 800B78A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 720A8 800B78A8 AFA40018 */  sw         $a0, 0x18($sp)
/* 720AC 800B78AC 3C048004 */  lui        $a0, %hi(D_8003E550)
/* 720B0 800B78B0 2484E550 */  addiu      $a0, $a0, %lo(D_8003E550)
/* 720B4 800B78B4 8C8E0000 */  lw         $t6, 0x0($a0)
/* 720B8 800B78B8 8FAF0018 */  lw         $t7, 0x18($sp)
/* 720BC 800B78BC AFBF0014 */  sw         $ra, 0x14($sp)
/* 720C0 800B78C0 AC8E0004 */  sw         $t6, 0x4($a0)
/* 720C4 800B78C4 0C02DDD8 */  jal        func_800B7760
/* 720C8 800B78C8 8DE50000 */   lw        $a1, 0x0($t7)
/* 720CC 800B78CC 8FB80018 */  lw         $t8, 0x18($sp)
/* 720D0 800B78D0 3C048004 */  lui        $a0, %hi(D_8003E570)
/* 720D4 800B78D4 2484E570 */  addiu      $a0, $a0, %lo(D_8003E570)
/* 720D8 800B78D8 00402825 */  or         $a1, $v0, $zero
/* 720DC 800B78DC 0C02DDF5 */  jal        func_800B77D4
/* 720E0 800B78E0 8F060000 */   lw        $a2, 0x0($t8)
/* 720E4 800B78E4 8FB90018 */  lw         $t9, 0x18($sp)
/* 720E8 800B78E8 3C048004 */  lui        $a0, %hi(D_8003E550)
/* 720EC 800B78EC 2484E550 */  addiu      $a0, $a0, %lo(D_8003E550)
/* 720F0 800B78F0 0C02DDD8 */  jal        func_800B7760
/* 720F4 800B78F4 8F25000C */   lw        $a1, 0xC($t9)
/* 720F8 800B78F8 8FA80018 */  lw         $t0, 0x18($sp)
/* 720FC 800B78FC 3C048004 */  lui        $a0, %hi(D_8003E5A0)
/* 72100 800B7900 2484E5A0 */  addiu      $a0, $a0, %lo(D_8003E5A0)
/* 72104 800B7904 00402825 */  or         $a1, $v0, $zero
/* 72108 800B7908 0C02DDF5 */  jal        func_800B77D4
/* 7210C 800B790C 8D06000C */   lw        $a2, 0xC($t0)
/* 72110 800B7910 8FBF0014 */  lw         $ra, 0x14($sp)
/* 72114 800B7914 27BD0018 */  addiu      $sp, $sp, 0x18
/* 72118 800B7918 03E00008 */  jr         $ra
/* 7211C 800B791C 00000000 */   nop

glabel func_800B7920
/* 72120 800B7920 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 72124 800B7924 AFA40018 */  sw         $a0, 0x18($sp)
/* 72128 800B7928 3C048004 */  lui        $a0, %hi(D_8003E5A0)
/* 7212C 800B792C 2484E5A0 */  addiu      $a0, $a0, %lo(D_8003E5A0)
/* 72130 800B7930 8C8E0000 */  lw         $t6, 0x0($a0)
/* 72134 800B7934 8FAF0018 */  lw         $t7, 0x18($sp)
/* 72138 800B7938 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7213C 800B793C AC8E0004 */  sw         $t6, 0x4($a0)
/* 72140 800B7940 0C02DDD8 */  jal        func_800B7760
/* 72144 800B7944 8DE50000 */   lw        $a1, 0x0($t7)
/* 72148 800B7948 8FB80018 */  lw         $t8, 0x18($sp)
/* 7214C 800B794C 3C048004 */  lui        $a0, %hi(D_8003E5B0)
/* 72150 800B7950 2484E5B0 */  addiu      $a0, $a0, %lo(D_8003E5B0)
/* 72154 800B7954 00402825 */  or         $a1, $v0, $zero
/* 72158 800B7958 0C02DDF5 */  jal        func_800B77D4
/* 7215C 800B795C 8F060000 */   lw        $a2, 0x0($t8)
/* 72160 800B7960 8FB90018 */  lw         $t9, 0x18($sp)
/* 72164 800B7964 3C048004 */  lui        $a0, %hi(D_8003E5A0)
/* 72168 800B7968 2484E5A0 */  addiu      $a0, $a0, %lo(D_8003E5A0)
/* 7216C 800B796C 0C02DDD8 */  jal        func_800B7760
/* 72170 800B7970 8F250004 */   lw        $a1, 0x4($t9)
/* 72174 800B7974 8FA80018 */  lw         $t0, 0x18($sp)
/* 72178 800B7978 3C048004 */  lui        $a0, %hi(D_8003E5C0)
/* 7217C 800B797C 2484E5C0 */  addiu      $a0, $a0, %lo(D_8003E5C0)
/* 72180 800B7980 00402825 */  or         $a1, $v0, $zero
/* 72184 800B7984 0C02DDF5 */  jal        func_800B77D4
/* 72188 800B7988 8D060004 */   lw        $a2, 0x4($t0)
/* 7218C 800B798C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 72190 800B7990 27BD0018 */  addiu      $sp, $sp, 0x18
/* 72194 800B7994 03E00008 */  jr         $ra
/* 72198 800B7998 00000000 */   nop

glabel func_800B799C
/* 7219C 800B799C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 721A0 800B79A0 AFB00018 */  sw         $s0, 0x18($sp)
/* 721A4 800B79A4 00808025 */  or         $s0, $a0, $zero
/* 721A8 800B79A8 3C048004 */  lui        $a0, %hi(D_8003E5B0)
/* 721AC 800B79AC 2484E5B0 */  addiu      $a0, $a0, %lo(D_8003E5B0)
/* 721B0 800B79B0 8C8E0000 */  lw         $t6, 0x0($a0)
/* 721B4 800B79B4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 721B8 800B79B8 AC8E0004 */  sw         $t6, 0x4($a0)
/* 721BC 800B79BC 0C02DDD8 */  jal        func_800B7760
/* 721C0 800B79C0 8E050000 */   lw        $a1, 0x0($s0)
/* 721C4 800B79C4 3C048004 */  lui        $a0, %hi(D_8003E5D4)
/* 721C8 800B79C8 2484E5D4 */  addiu      $a0, $a0, %lo(D_8003E5D4)
/* 721CC 800B79CC 00402825 */  or         $a1, $v0, $zero
/* 721D0 800B79D0 0C02DDF5 */  jal        func_800B77D4
/* 721D4 800B79D4 8E060000 */   lw        $a2, 0x0($s0)
/* 721D8 800B79D8 3C048004 */  lui        $a0, %hi(D_8003E5B0)
/* 721DC 800B79DC 2484E5B0 */  addiu      $a0, $a0, %lo(D_8003E5B0)
/* 721E0 800B79E0 0C02DDD8 */  jal        func_800B7760
/* 721E4 800B79E4 8E050004 */   lw        $a1, 0x4($s0)
/* 721E8 800B79E8 3C048004 */  lui        $a0, %hi(D_8003E7A4)
/* 721EC 800B79EC 2484E7A4 */  addiu      $a0, $a0, %lo(D_8003E7A4)
/* 721F0 800B79F0 00402825 */  or         $a1, $v0, $zero
/* 721F4 800B79F4 0C02DDF5 */  jal        func_800B77D4
/* 721F8 800B79F8 8E060004 */   lw        $a2, 0x4($s0)
/* 721FC 800B79FC 3C048004 */  lui        $a0, %hi(D_8003E5B0)
/* 72200 800B7A00 2484E5B0 */  addiu      $a0, $a0, %lo(D_8003E5B0)
/* 72204 800B7A04 0C02DDD8 */  jal        func_800B7760
/* 72208 800B7A08 8E050008 */   lw        $a1, 0x8($s0)
/* 7220C 800B7A0C 3C048004 */  lui        $a0, %hi(D_8003E974)
/* 72210 800B7A10 2484E974 */  addiu      $a0, $a0, %lo(D_8003E974)
/* 72214 800B7A14 00402825 */  or         $a1, $v0, $zero
/* 72218 800B7A18 0C02DDF5 */  jal        func_800B77D4
/* 7221C 800B7A1C 8E060008 */   lw        $a2, 0x8($s0)
/* 72220 800B7A20 3C048004 */  lui        $a0, %hi(D_8003E5D0)
/* 72224 800B7A24 0C02DDFD */  jal        func_800B77F4
/* 72228 800B7A28 2484E5D0 */   addiu     $a0, $a0, %lo(D_8003E5D0)
/* 7222C 800B7A2C 3C048004 */  lui        $a0, %hi(D_8003E7A0)
/* 72230 800B7A30 0C02DDFD */  jal        func_800B77F4
/* 72234 800B7A34 2484E7A0 */   addiu     $a0, $a0, %lo(D_8003E7A0)
/* 72238 800B7A38 3C048004 */  lui        $a0, %hi(D_8003E970)
/* 7223C 800B7A3C 0C02DDFD */  jal        func_800B77F4
/* 72240 800B7A40 2484E970 */   addiu     $a0, $a0, %lo(D_8003E970)
/* 72244 800B7A44 8FBF001C */  lw         $ra, 0x1C($sp)
/* 72248 800B7A48 8FB00018 */  lw         $s0, 0x18($sp)
/* 7224C 800B7A4C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 72250 800B7A50 03E00008 */  jr         $ra
/* 72254 800B7A54 00000000 */   nop

glabel func_800B7A58
/* 72258 800B7A58 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7225C 800B7A5C AFB00018 */  sw         $s0, 0x18($sp)
/* 72260 800B7A60 00808025 */  or         $s0, $a0, $zero
/* 72264 800B7A64 3C048004 */  lui        $a0, %hi(D_8003E5C0)
/* 72268 800B7A68 2484E5C0 */  addiu      $a0, $a0, %lo(D_8003E5C0)
/* 7226C 800B7A6C 8C8E0000 */  lw         $t6, 0x0($a0)
/* 72270 800B7A70 AFBF001C */  sw         $ra, 0x1C($sp)
/* 72274 800B7A74 AC8E0004 */  sw         $t6, 0x4($a0)
/* 72278 800B7A78 0C02DDD8 */  jal        func_800B7760
/* 7227C 800B7A7C 8E050000 */   lw        $a1, 0x0($s0)
/* 72280 800B7A80 3C048004 */  lui        $a0, %hi(D_8003E768)
/* 72284 800B7A84 2484E768 */  addiu      $a0, $a0, %lo(D_8003E768)
/* 72288 800B7A88 00402825 */  or         $a1, $v0, $zero
/* 7228C 800B7A8C 0C02DDF5 */  jal        func_800B77D4
/* 72290 800B7A90 8E060000 */   lw        $a2, 0x0($s0)
/* 72294 800B7A94 3C048004 */  lui        $a0, %hi(D_8003E5C0)
/* 72298 800B7A98 2484E5C0 */  addiu      $a0, $a0, %lo(D_8003E5C0)
/* 7229C 800B7A9C 0C02DDD8 */  jal        func_800B7760
/* 722A0 800B7AA0 8E050004 */   lw        $a1, 0x4($s0)
/* 722A4 800B7AA4 3C048004 */  lui        $a0, %hi(D_8003E938)
/* 722A8 800B7AA8 2484E938 */  addiu      $a0, $a0, %lo(D_8003E938)
/* 722AC 800B7AAC 00402825 */  or         $a1, $v0, $zero
/* 722B0 800B7AB0 0C02DDF5 */  jal        func_800B77D4
/* 722B4 800B7AB4 8E060004 */   lw        $a2, 0x4($s0)
/* 722B8 800B7AB8 3C048004 */  lui        $a0, %hi(D_8003E5C0)
/* 722BC 800B7ABC 2484E5C0 */  addiu      $a0, $a0, %lo(D_8003E5C0)
/* 722C0 800B7AC0 0C02DDD8 */  jal        func_800B7760
/* 722C4 800B7AC4 8E050008 */   lw        $a1, 0x8($s0)
/* 722C8 800B7AC8 3C048004 */  lui        $a0, %hi(D_8003EB08)
/* 722CC 800B7ACC 2484EB08 */  addiu      $a0, $a0, %lo(D_8003EB08)
/* 722D0 800B7AD0 00402825 */  or         $a1, $v0, $zero
/* 722D4 800B7AD4 0C02DDF5 */  jal        func_800B77D4
/* 722D8 800B7AD8 8E060008 */   lw        $a2, 0x8($s0)
/* 722DC 800B7ADC 3C048004 */  lui        $a0, %hi(D_8003E764)
/* 722E0 800B7AE0 0C02DE02 */  jal        func_800B7808
/* 722E4 800B7AE4 2484E764 */   addiu     $a0, $a0, %lo(D_8003E764)
/* 722E8 800B7AE8 3C048004 */  lui        $a0, %hi(D_8003E934)
/* 722EC 800B7AEC 0C02DE02 */  jal        func_800B7808
/* 722F0 800B7AF0 2484E934 */   addiu     $a0, $a0, %lo(D_8003E934)
/* 722F4 800B7AF4 3C048004 */  lui        $a0, %hi(D_8003EB04)
/* 722F8 800B7AF8 0C02DE02 */  jal        func_800B7808
/* 722FC 800B7AFC 2484EB04 */   addiu     $a0, $a0, %lo(D_8003EB04)
/* 72300 800B7B00 8FBF001C */  lw         $ra, 0x1C($sp)
/* 72304 800B7B04 8FB00018 */  lw         $s0, 0x18($sp)
/* 72308 800B7B08 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7230C 800B7B0C 03E00008 */  jr         $ra
/* 72310 800B7B10 00000000 */   nop

glabel func_800B7B14
/* 72314 800B7B14 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 72318 800B7B18 AFBF001C */  sw         $ra, 0x1C($sp)
/* 7231C 800B7B1C AFB10018 */  sw         $s1, 0x18($sp)
/* 72320 800B7B20 AFB00014 */  sw         $s0, 0x14($sp)
/* 72324 800B7B24 00808025 */  or         $s0, $a0, $zero
/* 72328 800B7B28 00C08825 */  or         $s1, $a2, $zero
/* 7232C 800B7B2C 8FBF0060 */  lw         $ra, 0x60($sp)
/* 72330 800B7B30 AFA50054 */  sw         $a1, 0x54($sp)
/* 72334 800B7B34 240C000C */  addiu      $t4, $zero, 0xC
/* 72338 800B7B38 240B0001 */  addiu      $t3, $zero, 0x1
/* 7233C 800B7B3C 24080002 */  addiu      $t0, $zero, 0x2
.L800B7B40:
/* 72340 800B7B40 14E00146 */  bnez       $a3, .L800B805C
/* 72344 800B7B44 8FAF0054 */   lw        $t7, 0x54($sp)
/* 72348 800B7B48 3C0E8004 */  lui        $t6, %hi(D_8003E5D0)
/* 7234C 800B7B4C 25CEE5D0 */  addiu      $t6, $t6, %lo(D_8003E5D0)
/* 72350 800B7B50 160E0006 */  bne        $s0, $t6, .L800B7B6C
/* 72354 800B7B54 26070194 */   addiu     $a3, $s0, 0x194
/* 72358 800B7B58 3C0F8004 */  lui        $t7, %hi(D_8003EBB8)
/* 7235C 800B7B5C 25EFEBB8 */  addiu      $t7, $t7, %lo(D_8003EBB8)
/* 72360 800B7B60 AFAF0034 */  sw         $t7, 0x34($sp)
/* 72364 800B7B64 10000009 */  b          .L800B7B8C
/* 72368 800B7B68 A3A00033 */   sb        $zero, 0x33($sp)
.L800B7B6C:
/* 7236C 800B7B6C 3C188004 */  lui        $t8, %hi(D_8003E7A0)
/* 72370 800B7B70 2718E7A0 */  addiu      $t8, $t8, %lo(D_8003E7A0)
/* 72374 800B7B74 16180005 */  bne        $s0, $t8, .L800B7B8C
/* 72378 800B7B78 3C0D8004 */   lui       $t5, %hi(D_8003EB78)
/* 7237C 800B7B7C 25ADEB78 */  addiu      $t5, $t5, %lo(D_8003EB78)
/* 72380 800B7B80 24190001 */  addiu      $t9, $zero, 0x1
/* 72384 800B7B84 A3B90033 */  sb         $t9, 0x33($sp)
/* 72388 800B7B88 AFAD0034 */  sw         $t5, 0x34($sp)
.L800B7B8C:
/* 7238C 800B7B8C 8CE6001C */  lw         $a2, 0x1C($a3)
/* 72390 800B7B90 3C0D8004 */  lui        $t5, %hi(D_8003EB78)
/* 72394 800B7B94 2401FFFF */  addiu      $at, $zero, -0x1
/* 72398 800B7B98 14C10003 */  bne        $a2, $at, .L800B7BA8
/* 7239C 800B7B9C 25ADEB78 */   addiu     $t5, $t5, %lo(D_8003EB78)
/* 723A0 800B7BA0 10000004 */  b          .L800B7BB4
/* 723A4 800B7BA4 00004825 */   or        $t1, $zero, $zero
.L800B7BA8:
/* 723A8 800B7BA8 8FAE0034 */  lw         $t6, 0x34($sp)
/* 723AC 800B7BAC 00CE7821 */  addu       $t7, $a2, $t6
/* 723B0 800B7BB0 91E90000 */  lbu        $t1, 0x0($t7)
.L800B7BB4:
/* 723B4 800B7BB4 8CE40028 */  lw         $a0, 0x28($a3)
/* 723B8 800B7BB8 2401FFFF */  addiu      $at, $zero, -0x1
/* 723BC 800B7BBC 8FB80034 */  lw         $t8, 0x34($sp)
/* 723C0 800B7BC0 14810003 */  bne        $a0, $at, .L800B7BD0
/* 723C4 800B7BC4 93AE0033 */   lbu       $t6, 0x33($sp)
/* 723C8 800B7BC8 10000003 */  b          .L800B7BD8
/* 723CC 800B7BCC 00005025 */   or        $t2, $zero, $zero
.L800B7BD0:
/* 723D0 800B7BD0 0098C821 */  addu       $t9, $a0, $t8
/* 723D4 800B7BD4 932A0000 */  lbu        $t2, 0x0($t9)
.L800B7BD8:
/* 723D8 800B7BD8 156E002C */  bne        $t3, $t6, .L800B7C8C
/* 723DC 800B7BDC AFAE0020 */   sw        $t6, 0x20($sp)
/* 723E0 800B7BE0 24040004 */  addiu      $a0, $zero, 0x4
/* 723E4 800B7BE4 14890012 */  bne        $a0, $t1, .L800B7C30
/* 723E8 800B7BE8 3C058004 */   lui       $a1, %hi(D_80045548)
/* 723EC 800B7BEC 8CA55548 */  lw         $a1, %lo(D_80045548)($a1)
/* 723F0 800B7BF0 00001825 */  or         $v1, $zero, $zero
/* 723F4 800B7BF4 3C028004 */  lui        $v0, %hi(D_8003FCC0)
/* 723F8 800B7BF8 18A00009 */  blez       $a1, .L800B7C20
/* 723FC 800B7BFC 24180003 */   addiu     $t8, $zero, 0x3
/* 72400 800B7C00 8C42FCC0 */  lw         $v0, %lo(D_8003FCC0)($v0)
.L800B7C04:
/* 72404 800B7C04 904F00B2 */  lbu        $t7, 0xB2($v0)
/* 72408 800B7C08 11E60005 */  beq        $t7, $a2, .L800B7C20
/* 7240C 800B7C0C 00000000 */   nop
/* 72410 800B7C10 24630001 */  addiu      $v1, $v1, 0x1
/* 72414 800B7C14 0065082A */  slt        $at, $v1, $a1
/* 72418 800B7C18 1420FFFA */  bnez       $at, .L800B7C04
/* 7241C 800B7C1C 244200C0 */   addiu     $v0, $v0, 0xC0
.L800B7C20:
/* 72420 800B7C20 14650003 */  bne        $v1, $a1, .L800B7C30
/* 72424 800B7C24 01A6C821 */   addu      $t9, $t5, $a2
/* 72428 800B7C28 A3380000 */  sb         $t8, 0x0($t9)
/* 7242C 800B7C2C 24090003 */  addiu      $t1, $zero, 0x3
.L800B7C30:
/* 72430 800B7C30 148A0016 */  bne        $a0, $t2, .L800B7C8C
/* 72434 800B7C34 3C058004 */   lui       $a1, %hi(D_80045548)
/* 72438 800B7C38 8CA55548 */  lw         $a1, %lo(D_80045548)($a1)
/* 7243C 800B7C3C 00001825 */  or         $v1, $zero, $zero
/* 72440 800B7C40 3C028004 */  lui        $v0, %hi(D_8003FCC0)
/* 72444 800B7C44 18A0000A */  blez       $a1, .L800B7C70
/* 72448 800B7C48 00000000 */   nop
/* 7244C 800B7C4C 8C42FCC0 */  lw         $v0, %lo(D_8003FCC0)($v0)
/* 72450 800B7C50 8CE40028 */  lw         $a0, 0x28($a3)
.L800B7C54:
/* 72454 800B7C54 904E00B2 */  lbu        $t6, 0xB2($v0)
/* 72458 800B7C58 11C40005 */  beq        $t6, $a0, .L800B7C70
/* 7245C 800B7C5C 00000000 */   nop
/* 72460 800B7C60 24630001 */  addiu      $v1, $v1, 0x1
/* 72464 800B7C64 0065082A */  slt        $at, $v1, $a1
/* 72468 800B7C68 1420FFFA */  bnez       $at, .L800B7C54
/* 7246C 800B7C6C 244200C0 */   addiu     $v0, $v0, 0xC0
.L800B7C70:
/* 72470 800B7C70 14650006 */  bne        $v1, $a1, .L800B7C8C
/* 72474 800B7C74 00000000 */   nop
/* 72478 800B7C78 8CF80028 */  lw         $t8, 0x28($a3)
/* 7247C 800B7C7C 240F0003 */  addiu      $t7, $zero, 0x3
/* 72480 800B7C80 240A0003 */  addiu      $t2, $zero, 0x3
/* 72484 800B7C84 01B8C821 */  addu       $t9, $t5, $t8
/* 72488 800B7C88 A32F0000 */  sb         $t7, 0x0($t9)
.L800B7C8C:
/* 7248C 800B7C8C 15200003 */  bnez       $t1, .L800B7C9C
/* 72490 800B7C90 01206825 */   or        $t5, $t1, $zero
/* 72494 800B7C94 10000077 */  b          .L800B7E74
/* 72498 800B7C98 ACE00000 */   sw        $zero, 0x0($a3)
.L800B7C9C:
/* 7249C 800B7C9C 15400004 */  bnez       $t2, .L800B7CB0
/* 724A0 800B7CA0 01404825 */   or        $t1, $t2, $zero
/* 724A4 800B7CA4 240E0001 */  addiu      $t6, $zero, 0x1
/* 724A8 800B7CA8 10000072 */  b          .L800B7E74
/* 724AC 800B7CAC ACEE0000 */   sw        $t6, 0x0($a3)
.L800B7CB0:
/* 724B0 800B7CB0 24020003 */  addiu      $v0, $zero, 0x3
/* 724B4 800B7CB4 144D0003 */  bne        $v0, $t5, .L800B7CC4
/* 724B8 800B7CB8 00000000 */   nop
/* 724BC 800B7CBC 5049006E */  beql       $v0, $t1, .L800B7E78
/* 724C0 800B7CC0 8CF90000 */   lw        $t9, 0x0($a3)
.L800B7CC4:
/* 724C4 800B7CC4 144D0003 */  bne        $v0, $t5, .L800B7CD4
/* 724C8 800B7CC8 00000000 */   nop
/* 724CC 800B7CCC 10000069 */  b          .L800B7E74
/* 724D0 800B7CD0 ACE00000 */   sw        $zero, 0x0($a3)
.L800B7CD4:
/* 724D4 800B7CD4 14490004 */  bne        $v0, $t1, .L800B7CE8
/* 724D8 800B7CD8 8FAF0020 */   lw        $t7, 0x20($sp)
/* 724DC 800B7CDC 24180001 */  addiu      $t8, $zero, 0x1
/* 724E0 800B7CE0 10000064 */  b          .L800B7E74
/* 724E4 800B7CE4 ACF80000 */   sw        $t8, 0x0($a3)
.L800B7CE8:
/* 724E8 800B7CE8 55E0002E */  bnel       $t7, $zero, .L800B7DA4
/* 724EC 800B7CEC 8FAF0020 */   lw        $t7, 0x20($sp)
/* 724F0 800B7CF0 150D0015 */  bne        $t0, $t5, .L800B7D48
/* 724F4 800B7CF4 3C028004 */   lui       $v0, %hi(D_8003FCC8)
/* 724F8 800B7CF8 3C038004 */  lui        $v1, %hi(D_800401C8)
/* 724FC 800B7CFC 246301C8 */  addiu      $v1, $v1, %lo(D_800401C8)
/* 72500 800B7D00 2442FCC8 */  addiu      $v0, $v0, %lo(D_8003FCC8)
/* 72504 800B7D04 8C590000 */  lw         $t9, 0x0($v0)
.L800B7D08:
/* 72508 800B7D08 001977C2 */  srl        $t6, $t9, 31
/* 7250C 800B7D0C 51C00006 */  beql       $t6, $zero, .L800B7D28
/* 72510 800B7D10 24420140 */   addiu     $v0, $v0, 0x140
/* 72514 800B7D14 90580004 */  lbu        $t8, 0x4($v0)
/* 72518 800B7D18 8CEF001C */  lw         $t7, 0x1C($a3)
/* 7251C 800B7D1C 130F0004 */  beq        $t8, $t7, .L800B7D30
/* 72520 800B7D20 00000000 */   nop
/* 72524 800B7D24 24420140 */  addiu      $v0, $v0, 0x140
.L800B7D28:
/* 72528 800B7D28 5443FFF7 */  bnel       $v0, $v1, .L800B7D08
/* 7252C 800B7D2C 8C590000 */   lw        $t9, 0x0($v0)
.L800B7D30:
/* 72530 800B7D30 3C198004 */  lui        $t9, %hi(D_800401C8)
/* 72534 800B7D34 273901C8 */  addiu      $t9, $t9, %lo(D_800401C8)
/* 72538 800B7D38 14590003 */  bne        $v0, $t9, .L800B7D48
/* 7253C 800B7D3C 00000000 */   nop
/* 72540 800B7D40 1000004C */  b          .L800B7E74
/* 72544 800B7D44 ACE00000 */   sw        $zero, 0x0($a3)
.L800B7D48:
/* 72548 800B7D48 15090040 */  bne        $t0, $t1, .L800B7E4C
/* 7254C 800B7D4C 3C028004 */   lui       $v0, %hi(D_8003FCC8)
/* 72550 800B7D50 3C038004 */  lui        $v1, %hi(D_800401C8)
/* 72554 800B7D54 246301C8 */  addiu      $v1, $v1, %lo(D_800401C8)
/* 72558 800B7D58 2442FCC8 */  addiu      $v0, $v0, %lo(D_8003FCC8)
/* 7255C 800B7D5C 8C4E0000 */  lw         $t6, 0x0($v0)
.L800B7D60:
/* 72560 800B7D60 000EC7C2 */  srl        $t8, $t6, 31
/* 72564 800B7D64 53000006 */  beql       $t8, $zero, .L800B7D80
/* 72568 800B7D68 24420140 */   addiu     $v0, $v0, 0x140
/* 7256C 800B7D6C 904F0004 */  lbu        $t7, 0x4($v0)
/* 72570 800B7D70 8CF90028 */  lw         $t9, 0x28($a3)
/* 72574 800B7D74 11F90004 */  beq        $t7, $t9, .L800B7D88
/* 72578 800B7D78 00000000 */   nop
/* 7257C 800B7D7C 24420140 */  addiu      $v0, $v0, 0x140
.L800B7D80:
/* 72580 800B7D80 5443FFF7 */  bnel       $v0, $v1, .L800B7D60
/* 72584 800B7D84 8C4E0000 */   lw        $t6, 0x0($v0)
.L800B7D88:
/* 72588 800B7D88 3C0E8004 */  lui        $t6, %hi(D_800401C8)
/* 7258C 800B7D8C 25CE01C8 */  addiu      $t6, $t6, %lo(D_800401C8)
/* 72590 800B7D90 144E002E */  bne        $v0, $t6, .L800B7E4C
/* 72594 800B7D94 24180001 */   addiu     $t8, $zero, 0x1
/* 72598 800B7D98 10000036 */  b          .L800B7E74
/* 7259C 800B7D9C ACF80000 */   sw        $t8, 0x0($a3)
/* 725A0 800B7DA0 8FAF0020 */  lw         $t7, 0x20($sp)
.L800B7DA4:
/* 725A4 800B7DA4 156F0029 */  bne        $t3, $t7, .L800B7E4C
/* 725A8 800B7DA8 00000000 */   nop
/* 725AC 800B7DAC 150D0013 */  bne        $t0, $t5, .L800B7DFC
/* 725B0 800B7DB0 3C058004 */   lui       $a1, %hi(D_80045548)
/* 725B4 800B7DB4 8CA55548 */  lw         $a1, %lo(D_80045548)($a1)
/* 725B8 800B7DB8 00001825 */  or         $v1, $zero, $zero
/* 725BC 800B7DBC 3C028004 */  lui        $v0, %hi(D_8003FCC0)
/* 725C0 800B7DC0 18A0000A */  blez       $a1, .L800B7DEC
/* 725C4 800B7DC4 00000000 */   nop
/* 725C8 800B7DC8 8C42FCC0 */  lw         $v0, %lo(D_8003FCC0)($v0)
/* 725CC 800B7DCC 8CE6001C */  lw         $a2, 0x1C($a3)
.L800B7DD0:
/* 725D0 800B7DD0 905900B2 */  lbu        $t9, 0xB2($v0)
/* 725D4 800B7DD4 13260005 */  beq        $t9, $a2, .L800B7DEC
/* 725D8 800B7DD8 00000000 */   nop
/* 725DC 800B7DDC 24630001 */  addiu      $v1, $v1, 0x1
/* 725E0 800B7DE0 0065082A */  slt        $at, $v1, $a1
/* 725E4 800B7DE4 1420FFFA */  bnez       $at, .L800B7DD0
/* 725E8 800B7DE8 244200C0 */   addiu     $v0, $v0, 0xC0
.L800B7DEC:
/* 725EC 800B7DEC 14650003 */  bne        $v1, $a1, .L800B7DFC
/* 725F0 800B7DF0 00000000 */   nop
/* 725F4 800B7DF4 1000001F */  b          .L800B7E74
/* 725F8 800B7DF8 ACE00000 */   sw        $zero, 0x0($a3)
.L800B7DFC:
/* 725FC 800B7DFC 15090013 */  bne        $t0, $t1, .L800B7E4C
/* 72600 800B7E00 3C058004 */   lui       $a1, %hi(D_80045548)
/* 72604 800B7E04 8CA55548 */  lw         $a1, %lo(D_80045548)($a1)
/* 72608 800B7E08 00001825 */  or         $v1, $zero, $zero
/* 7260C 800B7E0C 3C028004 */  lui        $v0, %hi(D_8003FCC0)
/* 72610 800B7E10 18A0000A */  blez       $a1, .L800B7E3C
/* 72614 800B7E14 24180001 */   addiu     $t8, $zero, 0x1
/* 72618 800B7E18 8C42FCC0 */  lw         $v0, %lo(D_8003FCC0)($v0)
/* 7261C 800B7E1C 8CE40028 */  lw         $a0, 0x28($a3)
.L800B7E20:
/* 72620 800B7E20 904E00B2 */  lbu        $t6, 0xB2($v0)
/* 72624 800B7E24 11C40005 */  beq        $t6, $a0, .L800B7E3C
/* 72628 800B7E28 00000000 */   nop
/* 7262C 800B7E2C 24630001 */  addiu      $v1, $v1, 0x1
/* 72630 800B7E30 0065082A */  slt        $at, $v1, $a1
/* 72634 800B7E34 1420FFFA */  bnez       $at, .L800B7E20
/* 72638 800B7E38 244200C0 */   addiu     $v0, $v0, 0xC0
.L800B7E3C:
/* 7263C 800B7E3C 14650003 */  bne        $v1, $a1, .L800B7E4C
/* 72640 800B7E40 00000000 */   nop
/* 72644 800B7E44 1000000B */  b          .L800B7E74
/* 72648 800B7E48 ACF80000 */   sw        $t8, 0x0($a3)
.L800B7E4C:
/* 7264C 800B7E4C 116D0003 */  beq        $t3, $t5, .L800B7E5C
/* 72650 800B7E50 00000000 */   nop
/* 72654 800B7E54 10000007 */  b          .L800B7E74
/* 72658 800B7E58 ACE00000 */   sw        $zero, 0x0($a3)
.L800B7E5C:
/* 7265C 800B7E5C 11690003 */  beq        $t3, $t1, .L800B7E6C
/* 72660 800B7E60 240F0001 */   addiu     $t7, $zero, 0x1
/* 72664 800B7E64 10000003 */  b          .L800B7E74
/* 72668 800B7E68 ACEF0000 */   sw        $t7, 0x0($a3)
.L800B7E6C:
/* 7266C 800B7E6C 100000A6 */  b          .L800B8108
/* 72670 800B7E70 00001025 */   or        $v0, $zero, $zero
.L800B7E74:
/* 72674 800B7E74 8CF90000 */  lw         $t9, 0x0($a3)
.L800B7E78:
/* 72678 800B7E78 2401FFFF */  addiu      $at, $zero, -0x1
/* 7267C 800B7E7C 8FAF0034 */  lw         $t7, 0x34($sp)
/* 72680 800B7E80 032C0019 */  multu      $t9, $t4
/* 72684 800B7E84 00007012 */  mflo       $t6
/* 72688 800B7E88 00EEC021 */  addu       $t8, $a3, $t6
/* 7268C 800B7E8C 8F02001C */  lw         $v0, 0x1C($t8)
/* 72690 800B7E90 50410012 */  beql       $v0, $at, .L800B7EDC
/* 72694 800B7E94 8CE40000 */   lw        $a0, 0x0($a3)
/* 72698 800B7E98 8FA50020 */  lw         $a1, 0x20($sp)
/* 7269C 800B7E9C 01E2C821 */  addu       $t9, $t7, $v0
/* 726A0 800B7EA0 A3200000 */  sb         $zero, 0x0($t9)
/* 726A4 800B7EA4 5565000D */  bnel       $t3, $a1, .L800B7EDC
/* 726A8 800B7EA8 8CE40000 */   lw        $a0, 0x0($a3)
/* 726AC 800B7EAC 8CEE0000 */  lw         $t6, 0x0($a3)
/* 726B0 800B7EB0 01CC0019 */  multu      $t6, $t4
/* 726B4 800B7EB4 0000C012 */  mflo       $t8
/* 726B8 800B7EB8 00F87821 */  addu       $t7, $a3, $t8
/* 726BC 800B7EBC 8DE4001C */  lw         $a0, 0x1C($t7)
/* 726C0 800B7EC0 AFBF0060 */  sw         $ra, 0x60($sp)
/* 726C4 800B7EC4 0C02DD83 */  jal        func_800B760C
/* 726C8 800B7EC8 AFA70028 */   sw        $a3, 0x28($sp)
/* 726CC 800B7ECC 8FA70028 */  lw         $a3, 0x28($sp)
/* 726D0 800B7ED0 240B0001 */  addiu      $t3, $zero, 0x1
/* 726D4 800B7ED4 8FBF0060 */  lw         $ra, 0x60($sp)
/* 726D8 800B7ED8 8CE40000 */  lw         $a0, 0x0($a3)
.L800B7EDC:
/* 726DC 800B7EDC 8FA50020 */  lw         $a1, 0x20($sp)
/* 726E0 800B7EE0 24010001 */  addiu      $at, $zero, 0x1
/* 726E4 800B7EE4 10800005 */  beqz       $a0, .L800B7EFC
/* 726E8 800B7EE8 26030198 */   addiu     $v1, $s0, 0x198
/* 726EC 800B7EEC 10810030 */  beq        $a0, $at, .L800B7FB0
/* 726F0 800B7EF0 26030198 */   addiu     $v1, $s0, 0x198
/* 726F4 800B7EF4 10000084 */  b          .L800B8108
/* 726F8 800B7EF8 00001025 */   or        $v0, $zero, $zero
.L800B7EFC:
/* 726FC 800B7EFC 8C790000 */  lw         $t9, 0x0($v1)
/* 72700 800B7F00 ACFF001C */  sw         $ra, 0x1C($a3)
/* 72704 800B7F04 ACF10018 */  sw         $s1, 0x18($a3)
/* 72708 800B7F08 ACF90014 */  sw         $t9, 0x14($a3)
/* 7270C 800B7F0C 8C6E0000 */  lw         $t6, 0x0($v1)
/* 72710 800B7F10 01D11021 */  addu       $v0, $t6, $s1
/* 72714 800B7F14 AC620004 */  sw         $v0, 0x4($v1)
/* 72718 800B7F18 8CF80020 */  lw         $t8, 0x20($a3)
/* 7271C 800B7F1C 8FAF0034 */  lw         $t7, 0x34($sp)
/* 72720 800B7F20 0302082B */  sltu       $at, $t8, $v0
/* 72724 800B7F24 5020001D */  beql       $at, $zero, .L800B7F9C
/* 72728 800B7F28 8CE30014 */   lw        $v1, 0x14($a3)
/* 7272C 800B7F2C 8CF90028 */  lw         $t9, 0x28($a3)
/* 72730 800B7F30 01F97021 */  addu       $t6, $t7, $t9
/* 72734 800B7F34 10A00005 */  beqz       $a1, .L800B7F4C
/* 72738 800B7F38 A1C00000 */   sb        $zero, 0x0($t6)
/* 7273C 800B7F3C 50AB000B */  beql       $a1, $t3, .L800B7F6C
/* 72740 800B7F40 8CE40028 */   lw        $a0, 0x28($a3)
/* 72744 800B7F44 1000000F */  b          .L800B7F84
/* 72748 800B7F48 2418FFFF */   addiu     $t8, $zero, -0x1
.L800B7F4C:
/* 7274C 800B7F4C 8CE40028 */  lw         $a0, 0x28($a3)
/* 72750 800B7F50 AFA70028 */  sw         $a3, 0x28($sp)
/* 72754 800B7F54 0C02DDBC */  jal        func_800B76F0
/* 72758 800B7F58 AFA30024 */   sw        $v1, 0x24($sp)
/* 7275C 800B7F5C 8FA30024 */  lw         $v1, 0x24($sp)
/* 72760 800B7F60 10000007 */  b          .L800B7F80
/* 72764 800B7F64 8FA70028 */   lw        $a3, 0x28($sp)
/* 72768 800B7F68 8CE40028 */  lw         $a0, 0x28($a3)
.L800B7F6C:
/* 7276C 800B7F6C AFA70028 */  sw         $a3, 0x28($sp)
/* 72770 800B7F70 0C02DD83 */  jal        func_800B760C
/* 72774 800B7F74 AFA30024 */   sw        $v1, 0x24($sp)
/* 72778 800B7F78 8FA30024 */  lw         $v1, 0x24($sp)
/* 7277C 800B7F7C 8FA70028 */  lw         $a3, 0x28($sp)
.L800B7F80:
/* 72780 800B7F80 2418FFFF */  addiu      $t8, $zero, -0x1
.L800B7F84:
/* 72784 800B7F84 ACF80028 */  sw         $t8, 0x28($a3)
/* 72788 800B7F88 8C790008 */  lw         $t9, 0x8($v1)
/* 7278C 800B7F8C 8C6F0000 */  lw         $t7, 0x0($v1)
/* 72790 800B7F90 01F97021 */  addu       $t6, $t7, $t9
/* 72794 800B7F94 ACEE0020 */  sw         $t6, 0x20($a3)
/* 72798 800B7F98 8CE30014 */  lw         $v1, 0x14($a3)
.L800B7F9C:
/* 7279C 800B7F9C 8CF80000 */  lw         $t8, 0x0($a3)
/* 727A0 800B7FA0 00601025 */  or         $v0, $v1, $zero
/* 727A4 800B7FA4 3B0F0001 */  xori       $t7, $t8, 0x1
/* 727A8 800B7FA8 10000057 */  b          .L800B8108
/* 727AC 800B7FAC ACEF0000 */   sw        $t7, 0x0($a3)
.L800B7FB0:
/* 727B0 800B7FB0 8C790000 */  lw         $t9, 0x0($v1)
/* 727B4 800B7FB4 8C6E0008 */  lw         $t6, 0x8($v1)
/* 727B8 800B7FB8 ACFF0028 */  sw         $ra, 0x28($a3)
/* 727BC 800B7FBC ACF10024 */  sw         $s1, 0x24($a3)
/* 727C0 800B7FC0 032EC021 */  addu       $t8, $t9, $t6
/* 727C4 800B7FC4 03117823 */  subu       $t7, $t8, $s1
/* 727C8 800B7FC8 25E2FFF0 */  addiu      $v0, $t7, -0x10
/* 727CC 800B7FCC ACE20020 */  sw         $v0, 0x20($a3)
/* 727D0 800B7FD0 8C6E0004 */  lw         $t6, 0x4($v1)
/* 727D4 800B7FD4 8FB80034 */  lw         $t8, 0x34($sp)
/* 727D8 800B7FD8 004E082B */  sltu       $at, $v0, $t6
/* 727DC 800B7FDC 1020001B */  beqz       $at, .L800B804C
/* 727E0 800B7FE0 00000000 */   nop
/* 727E4 800B7FE4 8CEF001C */  lw         $t7, 0x1C($a3)
/* 727E8 800B7FE8 030FC821 */  addu       $t9, $t8, $t7
/* 727EC 800B7FEC 10A00005 */  beqz       $a1, .L800B8004
/* 727F0 800B7FF0 A3200000 */   sb        $zero, 0x0($t9)
/* 727F4 800B7FF4 50AB000B */  beql       $a1, $t3, .L800B8024
/* 727F8 800B7FF8 8CE4001C */   lw        $a0, 0x1C($a3)
/* 727FC 800B7FFC 1000000F */  b          .L800B803C
/* 72800 800B8000 240EFFFF */   addiu     $t6, $zero, -0x1
.L800B8004:
/* 72804 800B8004 8CE4001C */  lw         $a0, 0x1C($a3)
/* 72808 800B8008 AFA70028 */  sw         $a3, 0x28($sp)
/* 7280C 800B800C 0C02DDBC */  jal        func_800B76F0
/* 72810 800B8010 AFA30024 */   sw        $v1, 0x24($sp)
/* 72814 800B8014 8FA30024 */  lw         $v1, 0x24($sp)
/* 72818 800B8018 10000007 */  b          .L800B8038
/* 7281C 800B801C 8FA70028 */   lw        $a3, 0x28($sp)
/* 72820 800B8020 8CE4001C */  lw         $a0, 0x1C($a3)
.L800B8024:
/* 72824 800B8024 AFA70028 */  sw         $a3, 0x28($sp)
/* 72828 800B8028 0C02DD83 */  jal        func_800B760C
/* 7282C 800B802C AFA30024 */   sw        $v1, 0x24($sp)
/* 72830 800B8030 8FA30024 */  lw         $v1, 0x24($sp)
/* 72834 800B8034 8FA70028 */  lw         $a3, 0x28($sp)
.L800B8038:
/* 72838 800B8038 240EFFFF */  addiu      $t6, $zero, -0x1
.L800B803C:
/* 7283C 800B803C ACEE001C */  sw         $t6, 0x1C($a3)
/* 72840 800B8040 8C780000 */  lw         $t8, 0x0($v1)
/* 72844 800B8044 AC780004 */  sw         $t8, 0x4($v1)
/* 72848 800B8048 8CE20020 */  lw         $v0, 0x20($a3)
.L800B804C:
/* 7284C 800B804C 1000FFD3 */  b          .L800B7F9C
/* 72850 800B8050 00401825 */   or        $v1, $v0, $zero
/* 72854 800B8054 1000002C */  b          .L800B8108
/* 72858 800B8058 00001025 */   or        $v0, $zero, $zero
.L800B805C:
/* 7285C 800B805C 01F10019 */  multu      $t7, $s1
/* 72860 800B8060 AFBF0060 */  sw         $ra, 0x60($sp)
/* 72864 800B8064 26040004 */  addiu      $a0, $s0, 0x4
/* 72868 800B8068 AFA7005C */  sw         $a3, 0x5C($sp)
/* 7286C 800B806C 00002812 */  mflo       $a1
/* 72870 800B8070 0C02DDD8 */  jal        func_800B7760
/* 72874 800B8074 00000000 */   nop
/* 72878 800B8078 8E190000 */  lw         $t9, 0x0($s0)
/* 7287C 800B807C 240C000C */  addiu      $t4, $zero, 0xC
/* 72880 800B8080 8FA7005C */  lw         $a3, 0x5C($sp)
/* 72884 800B8084 032C0019 */  multu      $t9, $t4
/* 72888 800B8088 8FBF0060 */  lw         $ra, 0x60($sp)
/* 7288C 800B808C 24080002 */  addiu      $t0, $zero, 0x2
/* 72890 800B8090 240B0001 */  addiu      $t3, $zero, 0x1
/* 72894 800B8094 00007012 */  mflo       $t6
/* 72898 800B8098 020EC021 */  addu       $t8, $s0, $t6
/* 7289C 800B809C 14400009 */  bnez       $v0, .L800B80C4
/* 728A0 800B80A0 AF020014 */   sw        $v0, 0x14($t8)
/* 728A4 800B80A4 10EB0005 */  beq        $a3, $t3, .L800B80BC
/* 728A8 800B80A8 00000000 */   nop
/* 728AC 800B80AC 54E80006 */  bnel       $a3, $t0, .L800B80C8
/* 728B0 800B80B0 8E0F0000 */   lw        $t7, 0x0($s0)
/* 728B4 800B80B4 1000FEA2 */  b          .L800B7B40
/* 728B8 800B80B8 00003825 */   or        $a3, $zero, $zero
.L800B80BC:
/* 728BC 800B80BC 10000012 */  b          .L800B8108
/* 728C0 800B80C0 00001025 */   or        $v0, $zero, $zero
.L800B80C4:
/* 728C4 800B80C4 8E0F0000 */  lw         $t7, 0x0($s0)
.L800B80C8:
/* 728C8 800B80C8 01EC0019 */  multu      $t7, $t4
/* 728CC 800B80CC 0000C812 */  mflo       $t9
/* 728D0 800B80D0 02197021 */  addu       $t6, $s0, $t9
/* 728D4 800B80D4 ADDF001C */  sw         $ra, 0x1C($t6)
/* 728D8 800B80D8 8E180000 */  lw         $t8, 0x0($s0)
/* 728DC 800B80DC 030C0019 */  multu      $t8, $t4
/* 728E0 800B80E0 00007812 */  mflo       $t7
/* 728E4 800B80E4 020FC821 */  addu       $t9, $s0, $t7
/* 728E8 800B80E8 AF310018 */  sw         $s1, 0x18($t9)
/* 728EC 800B80EC 8E030000 */  lw         $v1, 0x0($s0)
/* 728F0 800B80F0 006C0019 */  multu      $v1, $t4
/* 728F4 800B80F4 246F0001 */  addiu      $t7, $v1, 0x1
/* 728F8 800B80F8 00007012 */  mflo       $t6
/* 728FC 800B80FC 020EC021 */  addu       $t8, $s0, $t6
/* 72900 800B8100 8F020014 */  lw         $v0, 0x14($t8)
/* 72904 800B8104 AE0F0000 */  sw         $t7, 0x0($s0)
.L800B8108:
/* 72908 800B8108 8FBF001C */  lw         $ra, 0x1C($sp)
/* 7290C 800B810C 8FB00014 */  lw         $s0, 0x14($sp)
/* 72910 800B8110 8FB10018 */  lw         $s1, 0x18($sp)
/* 72914 800B8114 03E00008 */  jr         $ra
/* 72918 800B8118 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_800B811C
/* 7291C 800B811C 24080002 */  addiu      $t0, $zero, 0x2
.L800B8120:
/* 72920 800B8120 14A00011 */  bnez       $a1, .L800B8168
/* 72924 800B8124 00803825 */   or        $a3, $a0, $zero
/* 72928 800B8128 24830194 */  addiu      $v1, $a0, 0x194
/* 7292C 800B812C 8C6E001C */  lw         $t6, 0x1C($v1)
/* 72930 800B8130 240F0001 */  addiu      $t7, $zero, 0x1
/* 72934 800B8134 54CE0005 */  bnel       $a2, $t6, .L800B814C
/* 72938 800B8138 8C780028 */   lw        $t8, 0x28($v1)
/* 7293C 800B813C AC6F0000 */  sw         $t7, 0x0($v1)
/* 72940 800B8140 03E00008 */  jr         $ra
/* 72944 800B8144 8C620014 */   lw        $v0, 0x14($v1)
/* 72948 800B8148 8C780028 */  lw         $t8, 0x28($v1)
.L800B814C:
/* 7294C 800B814C 14D80004 */  bne        $a2, $t8, .L800B8160
/* 72950 800B8150 00000000 */   nop
/* 72954 800B8154 AC600000 */  sw         $zero, 0x0($v1)
/* 72958 800B8158 03E00008 */  jr         $ra
/* 7295C 800B815C 8C620020 */   lw        $v0, 0x20($v1)
.L800B8160:
/* 72960 800B8160 03E00008 */  jr         $ra
/* 72964 800B8164 00001025 */   or        $v0, $zero, $zero
.L800B8168:
/* 72968 800B8168 8C990000 */  lw         $t9, 0x0($a0)
/* 7296C 800B816C 00801025 */  or         $v0, $a0, $zero
/* 72970 800B8170 00001825 */  or         $v1, $zero, $zero
/* 72974 800B8174 1320000C */  beqz       $t9, .L800B81A8
/* 72978 800B8178 00000000 */   nop
/* 7297C 800B817C 8CE9001C */  lw         $t1, 0x1C($a3)
.L800B8180:
/* 72980 800B8180 54C90004 */  bnel       $a2, $t1, .L800B8194
/* 72984 800B8184 8C4A0000 */   lw        $t2, 0x0($v0)
/* 72988 800B8188 03E00008 */  jr         $ra
/* 7298C 800B818C 8CE20014 */   lw        $v0, 0x14($a3)
/* 72990 800B8190 8C4A0000 */  lw         $t2, 0x0($v0)
.L800B8194:
/* 72994 800B8194 24630001 */  addiu      $v1, $v1, 0x1
/* 72998 800B8198 24E7000C */  addiu      $a3, $a3, 0xC
/* 7299C 800B819C 006A082B */  sltu       $at, $v1, $t2
/* 729A0 800B81A0 5420FFF7 */  bnel       $at, $zero, .L800B8180
/* 729A4 800B81A4 8CE9001C */   lw        $t1, 0x1C($a3)
.L800B81A8:
/* 729A8 800B81A8 54A80004 */  bnel       $a1, $t0, .L800B81BC
/* 729AC 800B81AC 00001025 */   or        $v0, $zero, $zero
/* 729B0 800B81B0 1000FFDB */  b          .L800B8120
/* 729B4 800B81B4 00002825 */   or        $a1, $zero, $zero
/* 729B8 800B81B8 00001025 */  or         $v0, $zero, $zero
.L800B81BC:
/* 729BC 800B81BC 03E00008 */  jr         $ra
/* 729C0 800B81C0 00000000 */   nop

glabel func_800B81C4
/* 729C4 800B81C4 3C01800F */  lui        $at, %hi(D_800EBC28)
/* 729C8 800B81C8 C420BC28 */  lwc1       $f0, %lo(D_800EBC28)($at)
/* 729CC 800B81CC 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 729D0 800B81D0 27A40014 */  addiu      $a0, $sp, 0x14
/* 729D4 800B81D4 46007102 */  mul.s      $f4, $f14, $f0
/* 729D8 800B81D8 27A2002C */  addiu      $v0, $sp, 0x2C
/* 729DC 800B81DC 24C30004 */  addiu      $v1, $a2, 0x4
/* 729E0 800B81E0 46006182 */  mul.s      $f6, $f12, $f0
/* 729E4 800B81E4 00000000 */  nop
/* 729E8 800B81E8 460C7202 */  mul.s      $f8, $f14, $f12
/* 729EC 800B81EC E7A4000C */  swc1       $f4, 0xC($sp)
/* 729F0 800B81F0 E7A6002C */  swc1       $f6, 0x2C($sp)
/* 729F4 800B81F4 46004282 */  mul.s      $f10, $f8, $f0
/* 729F8 800B81F8 00000000 */  nop
/* 729FC 800B81FC 460C6402 */  mul.s      $f16, $f12, $f12
/* 72A00 800B8200 E7AA0010 */  swc1       $f10, 0x10($sp)
/* 72A04 800B8204 460E8480 */  add.s      $f18, $f16, $f14
/* 72A08 800B8208 46009102 */  mul.s      $f4, $f18, $f0
/* 72A0C 800B820C E7A40030 */  swc1       $f4, 0x30($sp)
.L800B8210:
/* 72A10 800B8210 C486FFFC */  lwc1       $f6, -0x4($a0)
/* 72A14 800B8214 C48AFFF8 */  lwc1       $f10, -0x8($a0)
/* 72A18 800B8218 240F0001 */  addiu      $t7, $zero, 0x1
/* 72A1C 800B821C 460C3202 */  mul.s      $f8, $f6, $f12
/* 72A20 800B8220 3C014F00 */  lui        $at, (0x4F000000 >> 16)
/* 72A24 800B8224 460A7402 */  mul.s      $f16, $f14, $f10
/* 72A28 800B8228 46104480 */  add.s      $f18, $f8, $f16
/* 72A2C 800B822C 444EF800 */  cfc1       $t6, $31
/* 72A30 800B8230 44CFF800 */  ctc1       $t7, $31
/* 72A34 800B8234 00000000 */  nop
/* 72A38 800B8238 46009124 */  cvt.w.s    $f4, $f18
/* 72A3C 800B823C 444FF800 */  cfc1       $t7, $31
/* 72A40 800B8240 00000000 */  nop
/* 72A44 800B8244 31EF0078 */  andi       $t7, $t7, 0x78
/* 72A48 800B8248 51E00013 */  beql       $t7, $zero, .L800B8298
/* 72A4C 800B824C 440F2000 */   mfc1      $t7, $f4
/* 72A50 800B8250 44812000 */  mtc1       $at, $f4
/* 72A54 800B8254 240F0001 */  addiu      $t7, $zero, 0x1
/* 72A58 800B8258 46049101 */  sub.s      $f4, $f18, $f4
/* 72A5C 800B825C 44CFF800 */  ctc1       $t7, $31
/* 72A60 800B8260 00000000 */  nop
/* 72A64 800B8264 46002124 */  cvt.w.s    $f4, $f4
/* 72A68 800B8268 444FF800 */  cfc1       $t7, $31
/* 72A6C 800B826C 00000000 */  nop
/* 72A70 800B8270 31EF0078 */  andi       $t7, $t7, 0x78
/* 72A74 800B8274 15E00005 */  bnez       $t7, .L800B828C
/* 72A78 800B8278 00000000 */   nop
/* 72A7C 800B827C 440F2000 */  mfc1       $t7, $f4
/* 72A80 800B8280 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 72A84 800B8284 10000007 */  b          .L800B82A4
/* 72A88 800B8288 01E17825 */   or        $t7, $t7, $at
.L800B828C:
/* 72A8C 800B828C 10000005 */  b          .L800B82A4
/* 72A90 800B8290 240FFFFF */   addiu     $t7, $zero, -0x1
/* 72A94 800B8294 440F2000 */  mfc1       $t7, $f4
.L800B8298:
/* 72A98 800B8298 00000000 */  nop
/* 72A9C 800B829C 05E0FFFB */  bltz       $t7, .L800B828C
/* 72AA0 800B82A0 00000000 */   nop
.L800B82A4:
/* 72AA4 800B82A4 A46F0000 */  sh         $t7, 0x0($v1)
/* 72AA8 800B82A8 44CEF800 */  ctc1       $t6, $31
/* 72AAC 800B82AC C486001C */  lwc1       $f6, 0x1C($a0)
/* 72AB0 800B82B0 C4880018 */  lwc1       $f8, 0x18($a0)
/* 72AB4 800B82B4 24190001 */  addiu      $t9, $zero, 0x1
/* 72AB8 800B82B8 460C3282 */  mul.s      $f10, $f6, $f12
/* 72ABC 800B82BC 24840004 */  addiu      $a0, $a0, 0x4
/* 72AC0 800B82C0 3C014F00 */  lui        $at, (0x4F000000 >> 16)
/* 72AC4 800B82C4 46087402 */  mul.s      $f16, $f14, $f8
/* 72AC8 800B82C8 46105480 */  add.s      $f18, $f10, $f16
/* 72ACC 800B82CC 4458F800 */  cfc1       $t8, $31
/* 72AD0 800B82D0 44D9F800 */  ctc1       $t9, $31
/* 72AD4 800B82D4 00000000 */  nop
/* 72AD8 800B82D8 46009124 */  cvt.w.s    $f4, $f18
/* 72ADC 800B82DC 4459F800 */  cfc1       $t9, $31
/* 72AE0 800B82E0 00000000 */  nop
/* 72AE4 800B82E4 33390078 */  andi       $t9, $t9, 0x78
/* 72AE8 800B82E8 53200013 */  beql       $t9, $zero, .L800B8338
/* 72AEC 800B82EC 44192000 */   mfc1      $t9, $f4
/* 72AF0 800B82F0 44812000 */  mtc1       $at, $f4
/* 72AF4 800B82F4 24190001 */  addiu      $t9, $zero, 0x1
/* 72AF8 800B82F8 46049101 */  sub.s      $f4, $f18, $f4
/* 72AFC 800B82FC 44D9F800 */  ctc1       $t9, $31
/* 72B00 800B8300 00000000 */  nop
/* 72B04 800B8304 46002124 */  cvt.w.s    $f4, $f4
/* 72B08 800B8308 4459F800 */  cfc1       $t9, $31
/* 72B0C 800B830C 00000000 */  nop
/* 72B10 800B8310 33390078 */  andi       $t9, $t9, 0x78
/* 72B14 800B8314 17200005 */  bnez       $t9, .L800B832C
/* 72B18 800B8318 00000000 */   nop
/* 72B1C 800B831C 44192000 */  mfc1       $t9, $f4
/* 72B20 800B8320 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 72B24 800B8324 10000007 */  b          .L800B8344
/* 72B28 800B8328 0321C825 */   or        $t9, $t9, $at
.L800B832C:
/* 72B2C 800B832C 10000005 */  b          .L800B8344
/* 72B30 800B8330 2419FFFF */   addiu     $t9, $zero, -0x1
/* 72B34 800B8334 44192000 */  mfc1       $t9, $f4
.L800B8338:
/* 72B38 800B8338 00000000 */  nop
/* 72B3C 800B833C 0720FFFB */  bltz       $t9, .L800B832C
/* 72B40 800B8340 00000000 */   nop
.L800B8344:
/* 72B44 800B8344 0082082B */  sltu       $at, $a0, $v0
/* 72B48 800B8348 44D8F800 */  ctc1       $t8, $31
/* 72B4C 800B834C 24630002 */  addiu      $v1, $v1, 0x2
/* 72B50 800B8350 1420FFAF */  bnez       $at, .L800B8210
/* 72B54 800B8354 A479000E */   sh        $t9, 0xE($v1)
/* 72B58 800B8358 00C01825 */  or         $v1, $a2, $zero
/* 72B5C 800B835C 27A4000C */  addiu      $a0, $sp, 0xC
/* 72B60 800B8360 27A2004C */  addiu      $v0, $sp, 0x4C
.L800B8364:
/* 72B64 800B8364 4448F800 */  cfc1       $t0, $31
/* 72B68 800B8368 24090001 */  addiu      $t1, $zero, 0x1
/* 72B6C 800B836C 44C9F800 */  ctc1       $t1, $31
/* 72B70 800B8370 C4860000 */  lwc1       $f6, 0x0($a0)
/* 72B74 800B8374 24840004 */  addiu      $a0, $a0, 0x4
/* 72B78 800B8378 3C014F00 */  lui        $at, (0x4F000000 >> 16)
/* 72B7C 800B837C 46003224 */  cvt.w.s    $f8, $f6
/* 72B80 800B8380 4449F800 */  cfc1       $t1, $31
/* 72B84 800B8384 00000000 */  nop
/* 72B88 800B8388 31290078 */  andi       $t1, $t1, 0x78
/* 72B8C 800B838C 51200013 */  beql       $t1, $zero, .L800B83DC
/* 72B90 800B8390 44094000 */   mfc1      $t1, $f8
/* 72B94 800B8394 44814000 */  mtc1       $at, $f8
/* 72B98 800B8398 24090001 */  addiu      $t1, $zero, 0x1
/* 72B9C 800B839C 46083201 */  sub.s      $f8, $f6, $f8
/* 72BA0 800B83A0 44C9F800 */  ctc1       $t1, $31
/* 72BA4 800B83A4 00000000 */  nop
/* 72BA8 800B83A8 46004224 */  cvt.w.s    $f8, $f8
/* 72BAC 800B83AC 4449F800 */  cfc1       $t1, $31
/* 72BB0 800B83B0 00000000 */  nop
/* 72BB4 800B83B4 31290078 */  andi       $t1, $t1, 0x78
/* 72BB8 800B83B8 15200005 */  bnez       $t1, .L800B83D0
/* 72BBC 800B83BC 00000000 */   nop
/* 72BC0 800B83C0 44094000 */  mfc1       $t1, $f8
/* 72BC4 800B83C4 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 72BC8 800B83C8 10000007 */  b          .L800B83E8
/* 72BCC 800B83CC 01214825 */   or        $t1, $t1, $at
.L800B83D0:
/* 72BD0 800B83D0 10000005 */  b          .L800B83E8
/* 72BD4 800B83D4 2409FFFF */   addiu     $t1, $zero, -0x1
/* 72BD8 800B83D8 44094000 */  mfc1       $t1, $f8
.L800B83DC:
/* 72BDC 800B83DC 00000000 */  nop
/* 72BE0 800B83E0 0520FFFB */  bltz       $t1, .L800B83D0
/* 72BE4 800B83E4 00000000 */   nop
.L800B83E8:
/* 72BE8 800B83E8 0082082B */  sltu       $at, $a0, $v0
/* 72BEC 800B83EC 44C8F800 */  ctc1       $t0, $31
/* 72BF0 800B83F0 24630002 */  addiu      $v1, $v1, 0x2
/* 72BF4 800B83F4 1420FFDB */  bnez       $at, .L800B8364
/* 72BF8 800B83F8 A469FFFE */   sh        $t1, -0x2($v1)
/* 72BFC 800B83FC 00001025 */  or         $v0, $zero, $zero
/* 72C00 800B8400 24420001 */  addiu      $v0, $v0, 0x1
.L800B8404:
/* 72C04 800B8404 28410008 */  slti       $at, $v0, 0x8
/* 72C08 800B8408 5420FFFE */  bnel       $at, $zero, .L800B8404
/* 72C0C 800B840C 24420001 */   addiu     $v0, $v0, 0x1
/* 72C10 800B8410 24020008 */  addiu      $v0, $zero, 0x8
/* 72C14 800B8414 24030010 */  addiu      $v1, $zero, 0x10
/* 72C18 800B8418 24420004 */  addiu      $v0, $v0, 0x4
.L800B841C:
/* 72C1C 800B841C 5443FFFF */  bnel       $v0, $v1, .L800B841C
/* 72C20 800B8420 24420004 */   addiu     $v0, $v0, 0x4
/* 72C24 800B8424 03E00008 */  jr         $ra
/* 72C28 800B8428 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_800B842C
/* 72C2C 800B842C 3C038004 */  lui        $v1, %hi(D_80038543)
/* 72C30 800B8430 80638543 */  lb         $v1, %lo(D_80038543)($v1)
/* 72C34 800B8434 3C0E8004 */  lui        $t6, %hi(D_80038110)
/* 72C38 800B8438 25C28110 */  addiu      $v0, $t6, %lo(D_80038110)
/* 72C3C 800B843C 1860000E */  blez       $v1, .L800B8478
/* 72C40 800B8440 00037940 */   sll       $t7, $v1, 5
/* 72C44 800B8444 01E37821 */  addu       $t7, $t7, $v1
/* 72C48 800B8448 000F78C0 */  sll        $t7, $t7, 3
/* 72C4C 800B844C 01E22021 */  addu       $a0, $t7, $v0
.L800B8450:
/* 72C50 800B8450 94430008 */  lhu        $v1, 0x8($v0)
/* 72C54 800B8454 24420108 */  addiu      $v0, $v0, 0x108
/* 72C58 800B8458 04610003 */  bgez       $v1, .L800B8468
/* 72C5C 800B845C 0003C083 */   sra       $t8, $v1, 2
/* 72C60 800B8460 24610003 */  addiu      $at, $v1, 0x3
/* 72C64 800B8464 0001C083 */  sra        $t8, $at, 2
.L800B8468:
/* 72C68 800B8468 0044082B */  sltu       $at, $v0, $a0
/* 72C6C 800B846C 0078C823 */  subu       $t9, $v1, $t8
/* 72C70 800B8470 1420FFF7 */  bnez       $at, .L800B8450
/* 72C74 800B8474 A459FF00 */   sh        $t9, -0x100($v0)
.L800B8478:
/* 72C78 800B8478 03E00008 */  jr         $ra
/* 72C7C 800B847C 00000000 */   nop

glabel func_800B8480
/* 72C80 800B8480 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 72C84 800B8484 AFB20020 */  sw         $s2, 0x20($sp)
/* 72C88 800B8488 3C128004 */  lui        $s2, %hi(D_8003ECB8)
/* 72C8C 800B848C 2652ECB8 */  addiu      $s2, $s2, %lo(D_8003ECB8)
/* 72C90 800B8490 924E0000 */  lbu        $t6, 0x0($s2)
/* 72C94 800B8494 AFBF0024 */  sw         $ra, 0x24($sp)
/* 72C98 800B8498 AFB1001C */  sw         $s1, 0x1C($sp)
/* 72C9C 800B849C 25CFFFFF */  addiu      $t7, $t6, -0x1
/* 72CA0 800B84A0 2DE10005 */  sltiu      $at, $t7, 0x5
/* 72CA4 800B84A4 1020007A */  beqz       $at, .L800B8690
/* 72CA8 800B84A8 AFB00018 */   sw        $s0, 0x18($sp)
/* 72CAC 800B84AC 000F7880 */  sll        $t7, $t7, 2
/* 72CB0 800B84B0 3C01800F */  lui        $at, %hi(jtbl_800EBC2C_main)
/* 72CB4 800B84B4 002F0821 */  addu       $at, $at, $t7
/* 72CB8 800B84B8 8C2FBC2C */  lw         $t7, %lo(jtbl_800EBC2C_main)($at)
/* 72CBC 800B84BC 01E00008 */  jr         $t7
/* 72CC0 800B84C0 00000000 */   nop
glabel L800B84C4
/* 72CC4 800B84C4 3C108004 */  lui        $s0, %hi(D_8003FCC8)
/* 72CC8 800B84C8 3C118004 */  lui        $s1, %hi(D_800401C8)
/* 72CCC 800B84CC 263101C8 */  addiu      $s1, $s1, %lo(D_800401C8)
/* 72CD0 800B84D0 2610FCC8 */  addiu      $s0, $s0, %lo(D_8003FCC8)
.L800B84D4:
/* 72CD4 800B84D4 0C02F3B8 */  jal        func_800BCEE0
/* 72CD8 800B84D8 02002025 */   or        $a0, $s0, $zero
/* 72CDC 800B84DC 26100140 */  addiu      $s0, $s0, 0x140
/* 72CE0 800B84E0 1611FFFC */  bne        $s0, $s1, .L800B84D4
/* 72CE4 800B84E4 00000000 */   nop
/* 72CE8 800B84E8 92420000 */  lbu        $v0, 0x0($s2)
/* 72CEC 800B84EC 3C088004 */  lui        $t0, %hi(D_8003ECBC)
/* 72CF0 800B84F0 2508ECBC */  addiu      $t0, $t0, %lo(D_8003ECBC)
/* 72CF4 800B84F4 24180004 */  addiu      $t8, $zero, 0x4
/* 72CF8 800B84F8 2459FFFF */  addiu      $t9, $v0, -0x1
/* 72CFC 800B84FC AD180000 */  sw         $t8, 0x0($t0)
/* 72D00 800B8500 10000063 */  b          .L800B8690
/* 72D04 800B8504 A2590000 */   sb        $t9, 0x0($s2)
glabel L800B8508
/* 72D08 800B8508 3C088004 */  lui        $t0, %hi(D_8003ECBC)
/* 72D0C 800B850C 2508ECBC */  addiu      $t0, $t0, %lo(D_8003ECBC)
/* 72D10 800B8510 8D020000 */  lw         $v0, 0x0($t0)
/* 72D14 800B8514 3C068004 */  lui        $a2, %hi(D_80045548)
/* 72D18 800B8518 10400005 */  beqz       $v0, .L800B8530
/* 72D1C 800B851C 2449FFFF */   addiu     $t1, $v0, -0x1
/* 72D20 800B8520 0C02E10B */  jal        func_800B842C
/* 72D24 800B8524 AD090000 */   sw        $t1, 0x0($t0)
/* 72D28 800B8528 1000005A */  b          .L800B8694
/* 72D2C 800B852C 924E0000 */   lbu       $t6, 0x0($s2)
.L800B8530:
/* 72D30 800B8530 8CC65548 */  lw         $a2, %lo(D_80045548)($a2)
/* 72D34 800B8534 00002025 */  or         $a0, $zero, $zero
/* 72D38 800B8538 00001825 */  or         $v1, $zero, $zero
/* 72D3C 800B853C 18C0001A */  blez       $a2, .L800B85A8
/* 72D40 800B8540 3C078004 */   lui       $a3, %hi(D_80045520)
/* 72D44 800B8544 3C058004 */  lui        $a1, %hi(D_8003FCC0)
/* 72D48 800B8548 24A5FCC0 */  addiu      $a1, $a1, %lo(D_8003FCC0)
/* 72D4C 800B854C 24E75520 */  addiu      $a3, $a3, %lo(D_80045520)
.L800B8550:
/* 72D50 800B8550 8CAA0000 */  lw         $t2, 0x0($a1)
/* 72D54 800B8554 24840001 */  addiu      $a0, $a0, 0x1
/* 72D58 800B8558 01431021 */  addu       $v0, $t2, $v1
/* 72D5C 800B855C 8C4B00B0 */  lw         $t3, 0xB0($v0)
/* 72D60 800B8560 000B67C2 */  srl        $t4, $t3, 31
/* 72D64 800B8564 5180000E */  beql       $t4, $zero, .L800B85A0
/* 72D68 800B8568 0086082A */   slt       $at, $a0, $a2
/* 72D6C 800B856C 904D0059 */  lbu        $t5, 0x59($v0)
/* 72D70 800B8570 51A0000B */  beql       $t5, $zero, .L800B85A0
/* 72D74 800B8574 0086082A */   slt       $at, $a0, $a2
/* 72D78 800B8578 C4E40018 */  lwc1       $f4, 0x18($a3)
/* 72D7C 800B857C 3C068004 */  lui        $a2, %hi(D_80045548)
/* 72D80 800B8580 E4440068 */  swc1       $f4, 0x68($v0)
/* 72D84 800B8584 8CAE0000 */  lw         $t6, 0x0($a1)
/* 72D88 800B8588 01C31021 */  addu       $v0, $t6, $v1
/* 72D8C 800B858C 904F0058 */  lbu        $t7, 0x58($v0)
/* 72D90 800B8590 35F80010 */  ori        $t8, $t7, 0x10
/* 72D94 800B8594 A0580058 */  sb         $t8, 0x58($v0)
/* 72D98 800B8598 8CC65548 */  lw         $a2, %lo(D_80045548)($a2)
/* 72D9C 800B859C 0086082A */  slt        $at, $a0, $a2
.L800B85A0:
/* 72DA0 800B85A0 1420FFEB */  bnez       $at, .L800B8550
/* 72DA4 800B85A4 246300C0 */   addiu     $v1, $v1, 0xC0
.L800B85A8:
/* 72DA8 800B85A8 92420000 */  lbu        $v0, 0x0($s2)
/* 72DAC 800B85AC 24190010 */  addiu      $t9, $zero, 0x10
/* 72DB0 800B85B0 AD190000 */  sw         $t9, 0x0($t0)
/* 72DB4 800B85B4 2449FFFF */  addiu      $t1, $v0, -0x1
/* 72DB8 800B85B8 10000035 */  b          .L800B8690
/* 72DBC 800B85BC A2490000 */   sb        $t1, 0x0($s2)
glabel L800B85C0
/* 72DC0 800B85C0 3C088004 */  lui        $t0, %hi(D_8003ECBC)
/* 72DC4 800B85C4 2508ECBC */  addiu      $t0, $t0, %lo(D_8003ECBC)
/* 72DC8 800B85C8 8D020000 */  lw         $v0, 0x0($t0)
/* 72DCC 800B85CC 3C038004 */  lui        $v1, %hi(D_80045618)
/* 72DD0 800B85D0 24635618 */  addiu      $v1, $v1, %lo(D_80045618)
/* 72DD4 800B85D4 10400006 */  beqz       $v0, .L800B85F0
/* 72DD8 800B85D8 3C068004 */   lui       $a2, %hi(D_80045624)
/* 72DDC 800B85DC 244AFFFF */  addiu      $t2, $v0, -0x1
/* 72DE0 800B85E0 0C02E10B */  jal        func_800B842C
/* 72DE4 800B85E4 AD0A0000 */   sw        $t2, 0x0($t0)
/* 72DE8 800B85E8 1000002A */  b          .L800B8694
/* 72DEC 800B85EC 924E0000 */   lbu       $t6, 0x0($s2)
.L800B85F0:
/* 72DF0 800B85F0 24C65624 */  addiu      $a2, $a2, %lo(D_80045624)
/* 72DF4 800B85F4 24040A00 */  addiu      $a0, $zero, 0xA00
/* 72DF8 800B85F8 00001025 */  or         $v0, $zero, $zero
.L800B85FC:
/* 72DFC 800B85FC 8C6B0000 */  lw         $t3, 0x0($v1)
/* 72E00 800B8600 01626021 */  addu       $t4, $t3, $v0
/* 72E04 800B8604 A5800000 */  sh         $zero, 0x0($t4)
/* 72E08 800B8608 8C6D0000 */  lw         $t5, 0x0($v1)
/* 72E0C 800B860C 01A27021 */  addu       $t6, $t5, $v0
/* 72E10 800B8610 A5C00002 */  sh         $zero, 0x2($t6)
/* 72E14 800B8614 8C6F0000 */  lw         $t7, 0x0($v1)
/* 72E18 800B8618 01E2C021 */  addu       $t8, $t7, $v0
/* 72E1C 800B861C A7000004 */  sh         $zero, 0x4($t8)
/* 72E20 800B8620 8C790000 */  lw         $t9, 0x0($v1)
/* 72E24 800B8624 03224821 */  addu       $t1, $t9, $v0
/* 72E28 800B8628 24420008 */  addiu      $v0, $v0, 0x8
/* 72E2C 800B862C 1444FFF3 */  bne        $v0, $a0, .L800B85FC
/* 72E30 800B8630 A5200006 */   sh        $zero, 0x6($t1)
/* 72E34 800B8634 24630004 */  addiu      $v1, $v1, 0x4
/* 72E38 800B8638 5466FFF0 */  bnel       $v1, $a2, .L800B85FC
/* 72E3C 800B863C 00001025 */   or        $v0, $zero, $zero
/* 72E40 800B8640 92420000 */  lbu        $v0, 0x0($s2)
/* 72E44 800B8644 240A0004 */  addiu      $t2, $zero, 0x4
/* 72E48 800B8648 AD0A0000 */  sw         $t2, 0x0($t0)
/* 72E4C 800B864C 244BFFFF */  addiu      $t3, $v0, -0x1
/* 72E50 800B8650 1000000F */  b          .L800B8690
/* 72E54 800B8654 A24B0000 */   sb        $t3, 0x0($s2)
glabel L800B8658
/* 72E58 800B8658 3C088004 */  lui        $t0, %hi(D_8003ECBC)
/* 72E5C 800B865C 2508ECBC */  addiu      $t0, $t0, %lo(D_8003ECBC)
/* 72E60 800B8660 8D020000 */  lw         $v0, 0x0($t0)
/* 72E64 800B8664 10400003 */  beqz       $v0, .L800B8674
/* 72E68 800B8668 244CFFFF */   addiu     $t4, $v0, -0x1
/* 72E6C 800B866C 10000008 */  b          .L800B8690
/* 72E70 800B8670 AD0C0000 */   sw        $t4, 0x0($t0)
.L800B8674:
/* 72E74 800B8674 92420000 */  lbu        $v0, 0x0($s2)
/* 72E78 800B8678 244DFFFF */  addiu      $t5, $v0, -0x1
/* 72E7C 800B867C 10000004 */  b          .L800B8690
/* 72E80 800B8680 A24D0000 */   sb        $t5, 0x0($s2)
glabel L800B8684
/* 72E84 800B8684 0C02E1B1 */  jal        func_800B86C4
/* 72E88 800B8688 00000000 */   nop
/* 72E8C 800B868C A2400000 */  sb         $zero, 0x0($s2)
.L800B8690:
/* 72E90 800B8690 924E0000 */  lbu        $t6, 0x0($s2)
.L800B8694:
/* 72E94 800B8694 8FB00018 */  lw         $s0, 0x18($sp)
/* 72E98 800B8698 8FBF0024 */  lw         $ra, 0x24($sp)
/* 72E9C 800B869C 29C10003 */  slti       $at, $t6, 0x3
/* 72EA0 800B86A0 50200004 */  beql       $at, $zero, .L800B86B4
/* 72EA4 800B86A4 24020001 */   addiu     $v0, $zero, 0x1
/* 72EA8 800B86A8 10000002 */  b          .L800B86B4
/* 72EAC 800B86AC 00001025 */   or        $v0, $zero, $zero
/* 72EB0 800B86B0 24020001 */  addiu      $v0, $zero, 0x1
.L800B86B4:
/* 72EB4 800B86B4 8FB1001C */  lw         $s1, 0x1C($sp)
/* 72EB8 800B86B8 8FB20020 */  lw         $s2, 0x20($sp)
/* 72EBC 800B86BC 03E00008 */  jr         $ra
/* 72EC0 800B86C0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800B86C4
/* 72EC4 800B86C4 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 72EC8 800B86C8 3C0E8004 */  lui        $t6, %hi(D_8003ECB9)
/* 72ECC 800B86CC 91CEECB9 */  lbu        $t6, %lo(D_8003ECB9)($t6)
/* 72ED0 800B86D0 3C18800F */  lui        $t8, %hi(D_800EC884)
/* 72ED4 800B86D4 AFB60030 */  sw         $s6, 0x30($sp)
/* 72ED8 800B86D8 2718C884 */  addiu      $t8, $t8, %lo(D_800EC884)
/* 72EDC 800B86DC 3C018004 */  lui        $at, %hi(D_800452F0)
/* 72EE0 800B86E0 000E7940 */  sll        $t7, $t6, 5
/* 72EE4 800B86E4 AFBF003C */  sw         $ra, 0x3C($sp)
/* 72EE8 800B86E8 AFBE0038 */  sw         $fp, 0x38($sp)
/* 72EEC 800B86EC AFB70034 */  sw         $s7, 0x34($sp)
/* 72EF0 800B86F0 AFB5002C */  sw         $s5, 0x2C($sp)
/* 72EF4 800B86F4 AFB40028 */  sw         $s4, 0x28($sp)
/* 72EF8 800B86F8 AFB30024 */  sw         $s3, 0x24($sp)
/* 72EFC 800B86FC AFB20020 */  sw         $s2, 0x20($sp)
/* 72F00 800B8700 AFB1001C */  sw         $s1, 0x1C($sp)
/* 72F04 800B8704 AFB00018 */  sw         $s0, 0x18($sp)
/* 72F08 800B8708 01F8B021 */  addu       $s6, $t7, $t8
/* 72F0C 800B870C AC2052F0 */  sw         $zero, %lo(D_800452F0)($at)
/* 72F10 800B8710 8ED90000 */  lw         $t9, 0x0($s6)
/* 72F14 800B8714 3C148004 */  lui        $s4, %hi(D_80045520)
/* 72F18 800B8718 26945520 */  addiu      $s4, $s4, %lo(D_80045520)
/* 72F1C 800B871C A6990002 */  sh         $t9, 0x2($s4)
/* 72F20 800B8720 0C032968 */  jal        func_800CA5A0
/* 72F24 800B8724 3324FFFF */   andi      $a0, $t9, 0xFFFF
/* 72F28 800B8728 A6820004 */  sh         $v0, 0x4($s4)
/* 72F2C 800B872C 3C0D8004 */  lui        $t5, %hi(D_80045614)
/* 72F30 800B8730 8DAD5614 */  lw         $t5, %lo(D_80045614)($t5)
/* 72F34 800B8734 96870002 */  lhu        $a3, 0x2($s4)
/* 72F38 800B8738 3C0C8004 */  lui        $t4, %hi(D_80045548)
/* 72F3C 800B873C 258C5548 */  addiu      $t4, $t4, %lo(D_80045548)
/* 72F40 800B8740 00ED001A */  div        $zero, $a3, $t5
/* 72F44 800B8744 00007012 */  mflo       $t6
/* 72F48 800B8748 25CF000F */  addiu      $t7, $t6, 0xF
/* 72F4C 800B874C 31F8FFF0 */  andi       $t8, $t7, 0xFFF0
/* 72F50 800B8750 A6980006 */  sh         $t8, 0x6($s4)
/* 72F54 800B8754 86830006 */  lh         $v1, 0x6($s4)
/* 72F58 800B8758 44873000 */  mtc1       $a3, $f6
/* 72F5C 800B875C 3C048004 */  lui        $a0, %hi(D_8003EB40)
/* 72F60 800B8760 24680010 */  addiu      $t0, $v1, 0x10
/* 72F64 800B8764 46803220 */  cvt.s.w    $f8, $f6
/* 72F68 800B8768 2479FFF0 */  addiu      $t9, $v1, -0x10
/* 72F6C 800B876C A699000A */  sh         $t9, 0xA($s4)
/* 72F70 800B8770 A6880008 */  sh         $t0, 0x8($s4)
/* 72F74 800B8774 3C128004 */  lui        $s2, %hi(D_80045544)
/* 72F78 800B8778 26525544 */  addiu      $s2, $s2, %lo(D_80045544)
/* 72F7C 800B877C 2484EB40 */  addiu      $a0, $a0, %lo(D_8003EB40)
/* 72F80 800B8780 15A00002 */  bnez       $t5, .L800B878C
/* 72F84 800B8784 00000000 */   nop
/* 72F88 800B8788 0007000D */  break      7
.L800B878C:
/* 72F8C 800B878C 2401FFFF */  addiu      $at, $zero, -0x1
/* 72F90 800B8790 15A10004 */  bne        $t5, $at, .L800B87A4
/* 72F94 800B8794 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 72F98 800B8798 14E10002 */  bne        $a3, $at, .L800B87A4
/* 72F9C 800B879C 00000000 */   nop
/* 72FA0 800B87A0 0006000D */  break      6
.L800B87A4:
/* 72FA4 800B87A4 240100A0 */  addiu      $at, $zero, 0xA0
/* 72FA8 800B87A8 0101001A */  div        $zero, $t0, $at
/* 72FAC 800B87AC 00006812 */  mflo       $t5
/* 72FB0 800B87B0 25AE0001 */  addiu      $t6, $t5, 0x1
/* 72FB4 800B87B4 A68E000C */  sh         $t6, 0xC($s4)
/* 72FB8 800B87B8 8686000C */  lh         $a2, 0xC($s4)
/* 72FBC 800B87BC 0066001A */  div        $zero, $v1, $a2
/* 72FC0 800B87C0 14C00002 */  bnez       $a2, .L800B87CC
/* 72FC4 800B87C4 00000000 */   nop
/* 72FC8 800B87C8 0007000D */  break      7
.L800B87CC:
/* 72FCC 800B87CC 2401FFFF */  addiu      $at, $zero, -0x1
/* 72FD0 800B87D0 14C10004 */  bne        $a2, $at, .L800B87E4
/* 72FD4 800B87D4 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 72FD8 800B87D8 14610002 */  bne        $v1, $at, .L800B87E4
/* 72FDC 800B87DC 00000000 */   nop
/* 72FE0 800B87E0 0006000D */  break      6
.L800B87E4:
/* 72FE4 800B87E4 3C0146FA */  lui        $at, (0x46FA0000 >> 16)
/* 72FE8 800B87E8 44812000 */  mtc1       $at, $f4
/* 72FEC 800B87EC 00007812 */  mflo       $t7
/* 72FF0 800B87F0 31F8FFF8 */  andi       $t8, $t7, 0xFFF8
/* 72FF4 800B87F4 46082283 */  div.s      $f10, $f4, $f8
/* 72FF8 800B87F8 A698000E */  sh         $t8, 0xE($s4)
/* 72FFC 800B87FC 8689000E */  lh         $t1, 0xE($s4)
/* 73000 800B8800 44868000 */  mtc1       $a2, $f16
/* 73004 800B8804 3C01800F */  lui        $at, %hi(D_800EBC40)
/* 73008 800B8808 25390008 */  addiu      $t9, $t1, 0x8
/* 7300C 800B880C 46808020 */  cvt.s.w    $f0, $f16
/* 73010 800B8810 252DFFF8 */  addiu      $t5, $t1, -0x8
/* 73014 800B8814 A6990010 */  sh         $t9, 0x10($s4)
/* 73018 800B8818 A68D0012 */  sh         $t5, 0x12($s4)
/* 7301C 800B881C 3C18800F */  lui        $t8, %hi(D_800EE2F0)
/* 73020 800B8820 240D0001 */  addiu      $t5, $zero, 0x1
/* 73024 800B8824 E68A0014 */  swc1       $f10, 0x14($s4)
/* 73028 800B8828 C432BC40 */  lwc1       $f18, %lo(D_800EBC40)($at)
/* 7302C 800B882C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 73030 800B8830 44812000 */  mtc1       $at, $f4
/* 73034 800B8834 46009183 */  div.s      $f6, $f18, $f0
/* 73038 800B8838 3C018004 */  lui        $at, %hi(D_80038540)
/* 7303C 800B883C 46002203 */  div.s      $f8, $f4, $f0
/* 73040 800B8840 E686001C */  swc1       $f6, 0x1C($s4)
/* 73044 800B8844 E6880018 */  swc1       $f8, 0x18($s4)
/* 73048 800B8848 92CE0005 */  lbu        $t6, 0x5($s6)
/* 7304C 800B884C AD8E0000 */  sw         $t6, 0x0($t4)
/* 73050 800B8850 96CF000C */  lhu        $t7, 0xC($s6)
/* 73054 800B8854 8718E2F0 */  lh         $t8, %lo(D_800EE2F0)($t8)
/* 73058 800B8858 A42F8540 */  sh         $t7, %lo(D_80038540)($at)
/* 7305C 800B885C 3C01800F */  lui        $at, %hi(D_800EBC44)
/* 73060 800B8860 C42ABC44 */  lwc1       $f10, %lo(D_800EBC44)($at)
/* 73064 800B8864 44989000 */  mtc1       $t8, $f18
/* 73068 800B8868 3C018004 */  lui        $at, %hi(D_80045610)
/* 7306C 800B886C 460A0402 */  mul.s      $f16, $f0, $f10
/* 73070 800B8870 C4285610 */  lwc1       $f8, %lo(D_80045610)($at)
/* 73074 800B8874 468091A0 */  cvt.s.w    $f6, $f18
/* 73078 800B8878 46068103 */  div.s      $f4, $f16, $f6
/* 7307C 800B887C 46082283 */  div.s      $f10, $f4, $f8
/* 73080 800B8880 4459F800 */  cfc1       $t9, $31
/* 73084 800B8884 44CDF800 */  ctc1       $t5, $31
/* 73088 800B8888 00000000 */  nop
/* 7308C 800B888C 460054A4 */  cvt.w.s    $f18, $f10
/* 73090 800B8890 444DF800 */  cfc1       $t5, $31
/* 73094 800B8894 00000000 */  nop
/* 73098 800B8898 31A10004 */  andi       $at, $t5, 0x4
/* 7309C 800B889C 31AD0078 */  andi       $t5, $t5, 0x78
/* 730A0 800B88A0 11A00012 */  beqz       $t5, .L800B88EC
/* 730A4 800B88A4 3C014F00 */   lui       $at, (0x4F000000 >> 16)
/* 730A8 800B88A8 44819000 */  mtc1       $at, $f18
/* 730AC 800B88AC 240D0001 */  addiu      $t5, $zero, 0x1
/* 730B0 800B88B0 46125481 */  sub.s      $f18, $f10, $f18
/* 730B4 800B88B4 44CDF800 */  ctc1       $t5, $31
/* 730B8 800B88B8 00000000 */  nop
/* 730BC 800B88BC 460094A4 */  cvt.w.s    $f18, $f18
/* 730C0 800B88C0 444DF800 */  cfc1       $t5, $31
/* 730C4 800B88C4 00000000 */  nop
/* 730C8 800B88C8 31AD0078 */  andi       $t5, $t5, 0x78
/* 730CC 800B88CC 15A00005 */  bnez       $t5, .L800B88E4
/* 730D0 800B88D0 00000000 */   nop
/* 730D4 800B88D4 440D9000 */  mfc1       $t5, $f18
/* 730D8 800B88D8 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 730DC 800B88DC 10000007 */  b          .L800B88FC
/* 730E0 800B88E0 01A16825 */   or        $t5, $t5, $at
.L800B88E4:
/* 730E4 800B88E4 10000005 */  b          .L800B88FC
/* 730E8 800B88E8 240DFFFF */   addiu     $t5, $zero, -0x1
.L800B88EC:
/* 730EC 800B88EC 440D9000 */  mfc1       $t5, $f18
/* 730F0 800B88F0 00000000 */  nop
/* 730F4 800B88F4 05A0FFFB */  bltz       $t5, .L800B88E4
/* 730F8 800B88F8 00000000 */   nop
.L800B88FC:
/* 730FC 800B88FC 3C018004 */  lui        $at, %hi(D_8004554C)
/* 73100 800B8900 A42D554C */  sh         $t5, %lo(D_8004554C)($at)
/* 73104 800B8904 92CE0004 */  lbu        $t6, 0x4($s6)
/* 73108 800B8908 86980008 */  lh         $t8, 0x8($s4)
/* 7310C 800B890C 44D9F800 */  ctc1       $t9, $31
/* 73110 800B8910 A68E0000 */  sh         $t6, 0x0($s4)
/* 73114 800B8914 86850000 */  lh         $a1, 0x0($s4)
/* 73118 800B8918 868D000A */  lh         $t5, 0xA($s4)
/* 7311C 800B891C 00650019 */  multu      $v1, $a1
/* 73120 800B8920 00007812 */  mflo       $t7
/* 73124 800B8924 A68F0006 */  sh         $t7, 0x6($s4)
/* 73128 800B8928 00000000 */  nop
/* 7312C 800B892C 03050019 */  multu      $t8, $a1
/* 73130 800B8930 8D980000 */  lw         $t8, 0x0($t4)
/* 73134 800B8934 0000C812 */  mflo       $t9
/* 73138 800B8938 A6990008 */  sh         $t9, 0x8($s4)
/* 7313C 800B893C 0018C900 */  sll        $t9, $t8, 4
/* 73140 800B8940 01A50019 */  multu      $t5, $a1
/* 73144 800B8944 00007012 */  mflo       $t6
/* 73148 800B8948 A68E000A */  sh         $t6, 0xA($s4)
/* 7314C 800B894C 00000000 */  nop
/* 73150 800B8950 00C50019 */  multu      $a2, $a1
/* 73154 800B8954 00007812 */  mflo       $t7
/* 73158 800B8958 A68F000C */  sh         $t7, 0xC($s4)
/* 7315C 800B895C 868D000C */  lh         $t5, 0xC($s4)
/* 73160 800B8960 92CF0006 */  lbu        $t7, 0x6($s6)
/* 73164 800B8964 032D0019 */  multu      $t9, $t5
/* 73168 800B8968 000FC140 */  sll        $t8, $t7, 5
/* 7316C 800B896C 00007012 */  mflo       $t6
/* 73170 800B8970 01D8C821 */  addu       $t9, $t6, $t8
/* 73174 800B8974 272D03C8 */  addiu      $t5, $t9, 0x3C8
/* 73178 800B8978 AE4D0000 */  sw         $t5, 0x0($s2)
/* 7317C 800B897C 8ECE0014 */  lw         $t6, 0x14($s6)
/* 73180 800B8980 8ECF0010 */  lw         $t7, 0x10($s6)
/* 73184 800B8984 8ED9001C */  lw         $t9, 0x1C($s6)
/* 73188 800B8988 8ED80018 */  lw         $t8, 0x18($s6)
/* 7318C 800B898C 3C0D8004 */  lui        $t5, %hi(D_8003E558)
/* 73190 800B8990 8DADE558 */  lw         $t5, %lo(D_8003E558)($t5)
/* 73194 800B8994 01EE8021 */  addu       $s0, $t7, $t6
/* 73198 800B8998 03198821 */  addu       $s1, $t8, $t9
/* 7319C 800B899C 02115021 */  addu       $t2, $s0, $s1
/* 731A0 800B89A0 01AA5823 */  subu       $t3, $t5, $t2
/* 731A4 800B89A4 256BFF00 */  addiu      $t3, $t3, -0x100
/* 731A8 800B89A8 AC8B0000 */  sw         $t3, 0x0($a0)
/* 731AC 800B89AC 0C02DE29 */  jal        func_800B78A4
/* 731B0 800B89B0 AC8A000C */   sw        $t2, 0xC($a0)
/* 731B4 800B89B4 3C048004 */  lui        $a0, %hi(D_8003EB50)
/* 731B8 800B89B8 2484EB50 */  addiu      $a0, $a0, %lo(D_8003EB50)
/* 731BC 800B89BC AC900000 */  sw         $s0, 0x0($a0)
/* 731C0 800B89C0 0C02DE48 */  jal        func_800B7920
/* 731C4 800B89C4 AC910004 */   sw        $s1, 0x4($a0)
/* 731C8 800B89C8 8ECF0010 */  lw         $t7, 0x10($s6)
/* 731CC 800B89CC 3C048004 */  lui        $a0, %hi(D_8003EB58)
/* 731D0 800B89D0 2484EB58 */  addiu      $a0, $a0, %lo(D_8003EB58)
/* 731D4 800B89D4 AC8F0000 */  sw         $t7, 0x0($a0)
/* 731D8 800B89D8 8ECE0014 */  lw         $t6, 0x14($s6)
/* 731DC 800B89DC AC800008 */  sw         $zero, 0x8($a0)
/* 731E0 800B89E0 0C02DE67 */  jal        func_800B799C
/* 731E4 800B89E4 AC8E0004 */   sw        $t6, 0x4($a0)
/* 731E8 800B89E8 8ED80018 */  lw         $t8, 0x18($s6)
/* 731EC 800B89EC 3C048004 */  lui        $a0, %hi(D_8003EB68)
/* 731F0 800B89F0 2484EB68 */  addiu      $a0, $a0, %lo(D_8003EB68)
/* 731F4 800B89F4 AC980000 */  sw         $t8, 0x0($a0)
/* 731F8 800B89F8 8ED9001C */  lw         $t9, 0x1C($s6)
/* 731FC 800B89FC AC800008 */  sw         $zero, 0x8($a0)
/* 73200 800B8A00 0C02DE96 */  jal        func_800B7A58
/* 73204 800B8A04 AC990004 */   sw        $t9, 0x4($a0)
/* 73208 800B8A08 0C02DD6F */  jal        func_800B75BC
/* 7320C 800B8A0C 00000000 */   nop
/* 73210 800B8A10 3C058004 */  lui        $a1, %hi(D_80045548)
/* 73214 800B8A14 8CA55548 */  lw         $a1, %lo(D_80045548)($a1)
/* 73218 800B8A18 3C138004 */  lui        $s3, %hi(D_8003E570)
/* 7321C 800B8A1C 2673E570 */  addiu      $s3, $s3, %lo(D_8003E570)
/* 73220 800B8A20 00056880 */  sll        $t5, $a1, 2
/* 73224 800B8A24 01A56823 */  subu       $t5, $t5, $a1
/* 73228 800B8A28 000D2980 */  sll        $a1, $t5, 6
/* 7322C 800B8A2C 0C02DDD8 */  jal        func_800B7760
/* 73230 800B8A30 02602025 */   or        $a0, $s3, $zero
/* 73234 800B8A34 3C018004 */  lui        $at, %hi(D_8003FCC0)
/* 73238 800B8A38 0C02EF47 */  jal        func_800BBD1C
/* 7323C 800B8A3C AC22FCC0 */   sw        $v0, %lo(D_8003FCC0)($at)
/* 73240 800B8A40 0C02ECD4 */  jal        func_800BB350
/* 73244 800B8A44 00000000 */   nop
/* 73248 800B8A48 3C0E8004 */  lui        $t6, %hi(D_80045548)
/* 7324C 800B8A4C 8DCE5548 */  lw         $t6, %lo(D_80045548)($t6)
/* 73250 800B8A50 868F000C */  lh         $t7, 0xC($s4)
/* 73254 800B8A54 02602025 */  or         $a0, $s3, $zero
/* 73258 800B8A58 01EE0019 */  multu      $t7, $t6
/* 7325C 800B8A5C 00002812 */  mflo       $a1
/* 73260 800B8A60 0005C100 */  sll        $t8, $a1, 4
/* 73264 800B8A64 0C02DDD8 */  jal        func_800B7760
/* 73268 800B8A68 03002825 */   or        $a1, $t8, $zero
/* 7326C 800B8A6C 3C018004 */  lui        $at, %hi(D_80038544)
/* 73270 800B8A70 3C108004 */  lui        $s0, %hi(D_80045560)
/* 73274 800B8A74 3C118004 */  lui        $s1, %hi(D_80045568)
/* 73278 800B8A78 AC228544 */  sw         $v0, %lo(D_80038544)($at)
/* 7327C 800B8A7C 26315568 */  addiu      $s1, $s1, %lo(D_80045568)
/* 73280 800B8A80 26105560 */  addiu      $s0, $s0, %lo(D_80045560)
.L800B8A84:
/* 73284 800B8A84 8E450000 */  lw         $a1, 0x0($s2)
/* 73288 800B8A88 02602025 */  or         $a0, $s3, $zero
/* 7328C 800B8A8C 0005C8C0 */  sll        $t9, $a1, 3
/* 73290 800B8A90 0C02DDD8 */  jal        func_800B7760
/* 73294 800B8A94 03202825 */   or        $a1, $t9, $zero
/* 73298 800B8A98 26100004 */  addiu      $s0, $s0, 0x4
/* 7329C 800B8A9C 1611FFF9 */  bne        $s0, $s1, .L800B8A84
/* 732A0 800B8AA0 AE02FFFC */   sw        $v0, -0x4($s0)
/* 732A4 800B8AA4 3C128004 */  lui        $s2, %hi(D_80038110)
/* 732A8 800B8AA8 3C028004 */  lui        $v0, %hi(D_80038530)
/* 732AC 800B8AAC 24428530 */  addiu      $v0, $v0, %lo(D_80038530)
/* 732B0 800B8AB0 26528110 */  addiu      $s2, $s2, %lo(D_80038110)
.L800B8AB4:
/* 732B4 800B8AB4 26520108 */  addiu      $s2, $s2, 0x108
/* 732B8 800B8AB8 0242082B */  sltu       $at, $s2, $v0
/* 732BC 800B8ABC 1420FFFD */  bnez       $at, .L800B8AB4
/* 732C0 800B8AC0 A240FEF9 */   sb        $zero, -0x107($s2)
/* 732C4 800B8AC4 92CD0006 */  lbu        $t5, 0x6($s6)
/* 732C8 800B8AC8 3C178004 */  lui        $s7, %hi(D_80038543)
/* 732CC 800B8ACC 26F78543 */  addiu      $s7, $s7, %lo(D_80038543)
/* 732D0 800B8AD0 A2ED0000 */  sb         $t5, 0x0($s7)
/* 732D4 800B8AD4 82EF0000 */  lb         $t7, 0x0($s7)
/* 732D8 800B8AD8 3C128004 */  lui        $s2, %hi(D_80038110)
/* 732DC 800B8ADC 26528110 */  addiu      $s2, $s2, %lo(D_80038110)
/* 732E0 800B8AE0 19E0005F */  blez       $t7, .L800B8C60
/* 732E4 800B8AE4 0000A825 */   or        $s5, $zero, $zero
/* 732E8 800B8AE8 241E0008 */  addiu      $fp, $zero, 0x8
/* 732EC 800B8AEC 8ECE0008 */  lw         $t6, 0x8($s6)
.L800B8AF0:
/* 732F0 800B8AF0 0015C080 */  sll        $t8, $s5, 2
/* 732F4 800B8AF4 02602025 */  or         $a0, $s3, $zero
/* 732F8 800B8AF8 01D81021 */  addu       $v0, $t6, $t8
/* 732FC 800B8AFC 90590001 */  lbu        $t9, 0x1($v0)
/* 73300 800B8B00 00196980 */  sll        $t5, $t9, 6
/* 73304 800B8B04 A64D0006 */  sh         $t5, 0x6($s2)
/* 73308 800B8B08 904F0000 */  lbu        $t7, 0x0($v0)
/* 7330C 800B8B0C 31A5FFFF */  andi       $a1, $t5, 0xFFFF
/* 73310 800B8B10 0005C040 */  sll        $t8, $a1, 1
/* 73314 800B8B14 A24F0004 */  sb         $t7, 0x4($s2)
/* 73318 800B8B18 944E0002 */  lhu        $t6, 0x2($v0)
/* 7331C 800B8B1C A25E0001 */  sb         $fp, 0x1($s2)
/* 73320 800B8B20 03002825 */  or         $a1, $t8, $zero
/* 73324 800B8B24 0C02DDD8 */  jal        func_800B7760
/* 73328 800B8B28 A64E0008 */   sh        $t6, 0x8($s2)
/* 7332C 800B8B2C 96450006 */  lhu        $a1, 0x6($s2)
/* 73330 800B8B30 AE420018 */  sw         $v0, 0x18($s2)
/* 73334 800B8B34 02602025 */  or         $a0, $s3, $zero
/* 73338 800B8B38 0005C840 */  sll        $t9, $a1, 1
/* 7333C 800B8B3C 0C02DDD8 */  jal        func_800B7760
/* 73340 800B8B40 03202825 */   or        $a1, $t9, $zero
/* 73344 800B8B44 92430004 */  lbu        $v1, 0x4($s2)
/* 73348 800B8B48 964D0006 */  lhu        $t5, 0x6($s2)
/* 7334C 800B8B4C 240F0002 */  addiu      $t7, $zero, 0x2
/* 73350 800B8B50 24010001 */  addiu      $at, $zero, 0x1
/* 73354 800B8B54 AE42001C */  sw         $v0, 0x1C($s2)
/* 73358 800B8B58 AE40000C */  sw         $zero, 0xC($s2)
/* 7335C 800B8B5C AE400010 */  sw         $zero, 0x10($s2)
/* 73360 800B8B60 A2400003 */  sb         $zero, 0x3($s2)
/* 73364 800B8B64 A24F0002 */  sb         $t7, 0x2($s2)
/* 73368 800B8B68 10610037 */  beq        $v1, $at, .L800B8C48
/* 7336C 800B8B6C AE4D0014 */   sw        $t5, 0x14($s2)
/* 73370 800B8B70 34188000 */  ori        $t8, $zero, 0x8000
/* 73374 800B8B74 0303001A */  div        $zero, $t8, $v1
/* 73378 800B8B78 240E0001 */  addiu      $t6, $zero, 0x1
/* 7337C 800B8B7C 0000C812 */  mflo       $t9
/* 73380 800B8B80 A24E0000 */  sb         $t6, 0x0($s2)
/* 73384 800B8B84 14600002 */  bnez       $v1, .L800B8B90
/* 73388 800B8B88 00000000 */   nop
/* 7338C 800B8B8C 0007000D */  break      7
.L800B8B90:
/* 73390 800B8B90 2401FFFF */  addiu      $at, $zero, -0x1
/* 73394 800B8B94 14610004 */  bne        $v1, $at, .L800B8BA8
/* 73398 800B8B98 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 7339C 800B8B9C 17010002 */  bne        $t8, $at, .L800B8BA8
/* 733A0 800B8BA0 00000000 */   nop
/* 733A4 800B8BA4 0006000D */  break      6
.L800B8BA8:
/* 733A8 800B8BA8 A659000A */  sh         $t9, 0xA($s2)
/* 733AC 800B8BAC 02602025 */  or         $a0, $s3, $zero
/* 733B0 800B8BB0 24050020 */  addiu      $a1, $zero, 0x20
/* 733B4 800B8BB4 0C02DDD8 */  jal        func_800B7760
/* 733B8 800B8BB8 00008825 */   or        $s1, $zero, $zero
/* 733BC 800B8BBC AE420020 */  sw         $v0, 0x20($s2)
/* 733C0 800B8BC0 02602025 */  or         $a0, $s3, $zero
/* 733C4 800B8BC4 0C02DDD8 */  jal        func_800B7760
/* 733C8 800B8BC8 24050020 */   addiu     $a1, $zero, 0x20
/* 733CC 800B8BCC AE420024 */  sw         $v0, 0x24($s2)
/* 733D0 800B8BD0 02602025 */  or         $a0, $s3, $zero
/* 733D4 800B8BD4 0C02DDD8 */  jal        func_800B7760
/* 733D8 800B8BD8 24050020 */   addiu     $a1, $zero, 0x20
/* 733DC 800B8BDC AE420028 */  sw         $v0, 0x28($s2)
/* 733E0 800B8BE0 02602025 */  or         $a0, $s3, $zero
/* 733E4 800B8BE4 0C02DDD8 */  jal        func_800B7760
/* 733E8 800B8BE8 24050020 */   addiu     $a1, $zero, 0x20
/* 733EC 800B8BEC 868D000C */  lh         $t5, 0xC($s4)
/* 733F0 800B8BF0 AE42002C */  sw         $v0, 0x2C($s2)
/* 733F4 800B8BF4 59A00015 */  blezl      $t5, .L800B8C4C
/* 733F8 800B8BF8 82F90000 */   lb        $t9, 0x0($s7)
/* 733FC 800B8BFC 02408025 */  or         $s0, $s2, $zero
/* 73400 800B8C00 02602025 */  or         $a0, $s3, $zero
.L800B8C04:
/* 73404 800B8C04 0C02DDD8 */  jal        func_800B7760
/* 73408 800B8C08 24050280 */   addiu     $a1, $zero, 0x280
/* 7340C 800B8C0C 244F0140 */  addiu      $t7, $v0, 0x140
/* 73410 800B8C10 AE020034 */  sw         $v0, 0x34($s0)
/* 73414 800B8C14 AE0F0038 */  sw         $t7, 0x38($s0)
/* 73418 800B8C18 02602025 */  or         $a0, $s3, $zero
/* 7341C 800B8C1C 0C02DDD8 */  jal        func_800B7760
/* 73420 800B8C20 24050280 */   addiu     $a1, $zero, 0x280
/* 73424 800B8C24 244E0140 */  addiu      $t6, $v0, 0x140
/* 73428 800B8C28 AE020098 */  sw         $v0, 0x98($s0)
/* 7342C 800B8C2C AE0E009C */  sw         $t6, 0x9C($s0)
/* 73430 800B8C30 8698000C */  lh         $t8, 0xC($s4)
/* 73434 800B8C34 26310001 */  addiu      $s1, $s1, 0x1
/* 73438 800B8C38 26100014 */  addiu      $s0, $s0, 0x14
/* 7343C 800B8C3C 0238082A */  slt        $at, $s1, $t8
/* 73440 800B8C40 5420FFF0 */  bnel       $at, $zero, .L800B8C04
/* 73444 800B8C44 02602025 */   or        $a0, $s3, $zero
.L800B8C48:
/* 73448 800B8C48 82F90000 */  lb         $t9, 0x0($s7)
.L800B8C4C:
/* 7344C 800B8C4C 26B50001 */  addiu      $s5, $s5, 0x1
/* 73450 800B8C50 26520108 */  addiu      $s2, $s2, 0x108
/* 73454 800B8C54 02B9082A */  slt        $at, $s5, $t9
/* 73458 800B8C58 5420FFA5 */  bnel       $at, $zero, .L800B8AF0
/* 7345C 800B8C5C 8ECE0008 */   lw        $t6, 0x8($s6)
.L800B8C60:
/* 73460 800B8C60 3C048004 */  lui        $a0, %hi(D_80045548)
/* 73464 800B8C64 0C02E491 */  jal        func_800B9244
/* 73468 800B8C68 8C845548 */   lw        $a0, %lo(D_80045548)($a0)
/* 7346C 800B8C6C 00002025 */  or         $a0, $zero, $zero
/* 73470 800B8C70 0C02DD14 */  jal        func_800B7450
/* 73474 800B8C74 8685000E */   lh        $a1, 0xE($s4)
/* 73478 800B8C78 0C0319D0 */  jal        func_800C6740
/* 7347C 800B8C7C 00000000 */   nop
/* 73480 800B8C80 8FBF003C */  lw         $ra, 0x3C($sp)
/* 73484 800B8C84 8FB00018 */  lw         $s0, 0x18($sp)
/* 73488 800B8C88 8FB1001C */  lw         $s1, 0x1C($sp)
/* 7348C 800B8C8C 8FB20020 */  lw         $s2, 0x20($sp)
/* 73490 800B8C90 8FB30024 */  lw         $s3, 0x24($sp)
/* 73494 800B8C94 8FB40028 */  lw         $s4, 0x28($sp)
/* 73498 800B8C98 8FB5002C */  lw         $s5, 0x2C($sp)
/* 7349C 800B8C9C 8FB60030 */  lw         $s6, 0x30($sp)
/* 734A0 800B8CA0 8FB70034 */  lw         $s7, 0x34($sp)
/* 734A4 800B8CA4 8FBE0038 */  lw         $fp, 0x38($sp)
/* 734A8 800B8CA8 03E00008 */  jr         $ra
/* 734AC 800B8CAC 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_800B8CB0
/* 734B0 800B8CB0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 734B4 800B8CB4 AFA40028 */  sw         $a0, 0x28($sp)
/* 734B8 800B8CB8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 734BC 800B8CBC AFA5002C */  sw         $a1, 0x2C($sp)
/* 734C0 800B8CC0 00A02025 */  or         $a0, $a1, $zero
/* 734C4 800B8CC4 AFA60030 */  sw         $a2, 0x30($sp)
/* 734C8 800B8CC8 0C0328B0 */  jal        func_800CA2C0
/* 734CC 800B8CCC 00C02825 */   or        $a1, $a2, $zero
/* 734D0 800B8CD0 8FAE002C */  lw         $t6, 0x2C($sp)
/* 734D4 800B8CD4 8FAF0030 */  lw         $t7, 0x30($sp)
/* 734D8 800B8CD8 3C188004 */  lui        $t8, %hi(D_80044DB8)
/* 734DC 800B8CDC 27184DB8 */  addiu      $t8, $t8, %lo(D_80044DB8)
/* 734E0 800B8CE0 3C048004 */  lui        $a0, %hi(D_80044DD8)
/* 734E4 800B8CE4 24844DD8 */  addiu      $a0, $a0, %lo(D_80044DD8)
/* 734E8 800B8CE8 AFB80018 */  sw         $t8, 0x18($sp)
/* 734EC 800B8CEC 24050001 */  addiu      $a1, $zero, 0x1
/* 734F0 800B8CF0 00003025 */  or         $a2, $zero, $zero
/* 734F4 800B8CF4 8FA70028 */  lw         $a3, 0x28($sp)
/* 734F8 800B8CF8 AFAE0010 */  sw         $t6, 0x10($sp)
/* 734FC 800B8CFC 0C0328DC */  jal        func_800CA370
/* 73500 800B8D00 AFAF0014 */   sw        $t7, 0x14($sp)
/* 73504 800B8D04 3C048004 */  lui        $a0, %hi(D_80044DB8)
/* 73508 800B8D08 24844DB8 */  addiu      $a0, $a0, %lo(D_80044DB8)
/* 7350C 800B8D0C 00002825 */  or         $a1, $zero, $zero
/* 73510 800B8D10 0C031718 */  jal        func_800C5C60
/* 73514 800B8D14 24060001 */   addiu     $a2, $zero, 0x1
/* 73518 800B8D18 8FBF0024 */  lw         $ra, 0x24($sp)
/* 7351C 800B8D1C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 73520 800B8D20 03E00008 */  jr         $ra
/* 73524 800B8D24 00000000 */   nop

glabel func_800B8D28
/* 73528 800B8D28 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7352C 800B8D2C AFA40028 */  sw         $a0, 0x28($sp)
/* 73530 800B8D30 AFBF0024 */  sw         $ra, 0x24($sp)
/* 73534 800B8D34 AFA5002C */  sw         $a1, 0x2C($sp)
/* 73538 800B8D38 00A02025 */  or         $a0, $a1, $zero
/* 7353C 800B8D3C AFA60030 */  sw         $a2, 0x30($sp)
/* 73540 800B8D40 AFA70034 */  sw         $a3, 0x34($sp)
/* 73544 800B8D44 0C0328B0 */  jal        func_800CA2C0
/* 73548 800B8D48 00C02825 */   or        $a1, $a2, $zero
/* 7354C 800B8D4C 8FAE002C */  lw         $t6, 0x2C($sp)
/* 73550 800B8D50 8FAF0030 */  lw         $t7, 0x30($sp)
/* 73554 800B8D54 8FB80034 */  lw         $t8, 0x34($sp)
/* 73558 800B8D58 8FA40038 */  lw         $a0, 0x38($sp)
/* 7355C 800B8D5C 00002825 */  or         $a1, $zero, $zero
/* 73560 800B8D60 00003025 */  or         $a2, $zero, $zero
/* 73564 800B8D64 8FA70028 */  lw         $a3, 0x28($sp)
/* 73568 800B8D68 AFAE0010 */  sw         $t6, 0x10($sp)
/* 7356C 800B8D6C AFAF0014 */  sw         $t7, 0x14($sp)
/* 73570 800B8D70 0C0328DC */  jal        func_800CA370
/* 73574 800B8D74 AFB80018 */   sw        $t8, 0x18($sp)
/* 73578 800B8D78 8FBF0024 */  lw         $ra, 0x24($sp)
/* 7357C 800B8D7C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 73580 800B8D80 03E00008 */  jr         $ra
/* 73584 800B8D84 00000000 */   nop

glabel func_800B8D88
/* 73588 800B8D88 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 7358C 800B8D8C AFBF002C */  sw         $ra, 0x2C($sp)
/* 73590 800B8D90 AFB00028 */  sw         $s0, 0x28($sp)
/* 73594 800B8D94 AFA40030 */  sw         $a0, 0x30($sp)
/* 73598 800B8D98 AFA50034 */  sw         $a1, 0x34($sp)
/* 7359C 800B8D9C AFA7003C */  sw         $a3, 0x3C($sp)
/* 735A0 800B8DA0 8CC20000 */  lw         $v0, 0x0($a2)
/* 735A4 800B8DA4 28411000 */  slti       $at, $v0, 0x1000
/* 735A8 800B8DA8 14200003 */  bnez       $at, .L800B8DB8
/* 735AC 800B8DAC 00408025 */   or        $s0, $v0, $zero
/* 735B0 800B8DB0 10000001 */  b          .L800B8DB8
/* 735B4 800B8DB4 24101000 */   addiu     $s0, $zero, 0x1000
.L800B8DB8:
/* 735B8 800B8DB8 00507023 */  subu       $t6, $v0, $s0
/* 735BC 800B8DBC ACCE0000 */  sw         $t6, 0x0($a2)
/* 735C0 800B8DC0 8FAF0034 */  lw         $t7, 0x34($sp)
/* 735C4 800B8DC4 02002825 */  or         $a1, $s0, $zero
/* 735C8 800B8DC8 0C0328B0 */  jal        func_800CA2C0
/* 735CC 800B8DCC 8DE40000 */   lw        $a0, 0x0($t7)
/* 735D0 800B8DD0 8FB80030 */  lw         $t8, 0x30($sp)
/* 735D4 800B8DD4 8FB90034 */  lw         $t9, 0x34($sp)
/* 735D8 800B8DD8 8FA9003C */  lw         $t1, 0x3C($sp)
/* 735DC 800B8DDC 8F070000 */  lw         $a3, 0x0($t8)
/* 735E0 800B8DE0 8F280000 */  lw         $t0, 0x0($t9)
/* 735E4 800B8DE4 AFB00014 */  sw         $s0, 0x14($sp)
/* 735E8 800B8DE8 8FA40040 */  lw         $a0, 0x40($sp)
/* 735EC 800B8DEC 00002825 */  or         $a1, $zero, $zero
/* 735F0 800B8DF0 00003025 */  or         $a2, $zero, $zero
/* 735F4 800B8DF4 AFA90018 */  sw         $t1, 0x18($sp)
/* 735F8 800B8DF8 0C0328DC */  jal        func_800CA370
/* 735FC 800B8DFC AFA80010 */   sw        $t0, 0x10($sp)
/* 73600 800B8E00 8FA30030 */  lw         $v1, 0x30($sp)
/* 73604 800B8E04 8FA20034 */  lw         $v0, 0x34($sp)
/* 73608 800B8E08 8C6A0000 */  lw         $t2, 0x0($v1)
/* 7360C 800B8E0C 01505821 */  addu       $t3, $t2, $s0
/* 73610 800B8E10 AC6B0000 */  sw         $t3, 0x0($v1)
/* 73614 800B8E14 8C4C0000 */  lw         $t4, 0x0($v0)
/* 73618 800B8E18 01906821 */  addu       $t5, $t4, $s0
/* 7361C 800B8E1C AC4D0000 */  sw         $t5, 0x0($v0)
/* 73620 800B8E20 8FBF002C */  lw         $ra, 0x2C($sp)
/* 73624 800B8E24 8FB00028 */  lw         $s0, 0x28($sp)
/* 73628 800B8E28 27BD0030 */  addiu      $sp, $sp, 0x30
/* 7362C 800B8E2C 03E00008 */  jr         $ra
/* 73630 800B8E30 00000000 */   nop

glabel func_800B8E34
/* 73634 800B8E34 3C058004 */  lui        $a1, %hi(D_800452F4)
/* 73638 800B8E38 24A552F4 */  addiu      $a1, $a1, %lo(D_800452F4)
/* 7363C 800B8E3C 8CA30000 */  lw         $v1, 0x0($a1)
/* 73640 800B8E40 3C048004 */  lui        $a0, %hi(D_80044DF0)
/* 73644 800B8E44 24844DF0 */  addiu      $a0, $a0, %lo(D_80044DF0)
/* 73648 800B8E48 10600018 */  beqz       $v1, .L800B8EAC
/* 7364C 800B8E4C 00001025 */   or        $v0, $zero, $zero
/* 73650 800B8E50 3C078004 */  lui        $a3, %hi(D_80045300)
/* 73654 800B8E54 3C068004 */  lui        $a2, %hi(D_80045502)
/* 73658 800B8E58 24C65502 */  addiu      $a2, $a2, %lo(D_80045502)
/* 7365C 800B8E5C 24E75300 */  addiu      $a3, $a3, %lo(D_80045300)
/* 73660 800B8E60 9083000E */  lbu        $v1, 0xE($a0)
.L800B8E64:
/* 73664 800B8E64 1060000B */  beqz       $v1, .L800B8E94
/* 73668 800B8E68 246EFFFF */   addiu     $t6, $v1, -0x1
/* 7366C 800B8E6C 31CF00FF */  andi       $t7, $t6, 0xFF
/* 73670 800B8E70 15E00008 */  bnez       $t7, .L800B8E94
/* 73674 800B8E74 A08E000E */   sb        $t6, 0xE($a0)
/* 73678 800B8E78 90C30000 */  lbu        $v1, 0x0($a2)
/* 7367C 800B8E7C 90D80000 */  lbu        $t8, 0x0($a2)
/* 73680 800B8E80 00E3C821 */  addu       $t9, $a3, $v1
/* 73684 800B8E84 A3220000 */  sb         $v0, 0x0($t9)
/* 73688 800B8E88 24680001 */  addiu      $t0, $v1, 0x1
/* 7368C 800B8E8C A0C80000 */  sb         $t0, 0x0($a2)
/* 73690 800B8E90 A098000D */  sb         $t8, 0xD($a0)
.L800B8E94:
/* 73694 800B8E94 8CA30000 */  lw         $v1, 0x0($a1)
/* 73698 800B8E98 24420001 */  addiu      $v0, $v0, 0x1
/* 7369C 800B8E9C 24840010 */  addiu      $a0, $a0, 0x10
/* 736A0 800B8EA0 0043082B */  sltu       $at, $v0, $v1
/* 736A4 800B8EA4 5420FFEF */  bnel       $at, $zero, .L800B8E64
/* 736A8 800B8EA8 9083000E */   lbu       $v1, 0xE($a0)
.L800B8EAC:
/* 736AC 800B8EAC 3C058004 */  lui        $a1, %hi(D_800452F0)
/* 736B0 800B8EB0 24A552F0 */  addiu      $a1, $a1, %lo(D_800452F0)
/* 736B4 800B8EB4 8CA90000 */  lw         $t1, 0x0($a1)
/* 736B8 800B8EB8 00601025 */  or         $v0, $v1, $zero
/* 736BC 800B8EBC 00035100 */  sll        $t2, $v1, 4
/* 736C0 800B8EC0 0069082B */  sltu       $at, $v1, $t1
/* 736C4 800B8EC4 1020001A */  beqz       $at, .L800B8F30
/* 736C8 800B8EC8 3C0B8004 */   lui       $t3, %hi(D_80044DF0)
/* 736CC 800B8ECC 256B4DF0 */  addiu      $t3, $t3, %lo(D_80044DF0)
/* 736D0 800B8ED0 3C078004 */  lui        $a3, %hi(D_80045400)
/* 736D4 800B8ED4 3C068004 */  lui        $a2, %hi(D_80045503)
/* 736D8 800B8ED8 24C65503 */  addiu      $a2, $a2, %lo(D_80045503)
/* 736DC 800B8EDC 24E75400 */  addiu      $a3, $a3, %lo(D_80045400)
/* 736E0 800B8EE0 014B2021 */  addu       $a0, $t2, $t3
/* 736E4 800B8EE4 9083000E */  lbu        $v1, 0xE($a0)
.L800B8EE8:
/* 736E8 800B8EE8 1060000B */  beqz       $v1, .L800B8F18
/* 736EC 800B8EEC 246CFFFF */   addiu     $t4, $v1, -0x1
/* 736F0 800B8EF0 318D00FF */  andi       $t5, $t4, 0xFF
/* 736F4 800B8EF4 15A00008 */  bnez       $t5, .L800B8F18
/* 736F8 800B8EF8 A08C000E */   sb        $t4, 0xE($a0)
/* 736FC 800B8EFC 90C30000 */  lbu        $v1, 0x0($a2)
/* 73700 800B8F00 90CE0000 */  lbu        $t6, 0x0($a2)
/* 73704 800B8F04 00E37821 */  addu       $t7, $a3, $v1
/* 73708 800B8F08 A1E20000 */  sb         $v0, 0x0($t7)
/* 7370C 800B8F0C 24780001 */  addiu      $t8, $v1, 0x1
/* 73710 800B8F10 A0D80000 */  sb         $t8, 0x0($a2)
/* 73714 800B8F14 A08E000D */  sb         $t6, 0xD($a0)
.L800B8F18:
/* 73718 800B8F18 8CB90000 */  lw         $t9, 0x0($a1)
/* 7371C 800B8F1C 24420001 */  addiu      $v0, $v0, 0x1
/* 73720 800B8F20 24840010 */  addiu      $a0, $a0, 0x10
/* 73724 800B8F24 0059082B */  sltu       $at, $v0, $t9
/* 73728 800B8F28 5420FFEF */  bnel       $at, $zero, .L800B8EE8
/* 7372C 800B8F2C 9083000E */   lbu       $v1, 0xE($a0)
.L800B8F30:
/* 73730 800B8F30 3C018004 */  lui        $at, %hi(D_800452F8)
/* 73734 800B8F34 03E00008 */  jr         $ra
/* 73738 800B8F38 AC2052F8 */   sw        $zero, %lo(D_800452F8)($at)

glabel func_800B8F3C
/* 7373C 800B8F3C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 73740 800B8F40 AFB10028 */  sw         $s1, 0x28($sp)
/* 73744 800B8F44 AFB00024 */  sw         $s0, 0x24($sp)
/* 73748 800B8F48 00A08025 */  or         $s0, $a1, $zero
/* 7374C 800B8F4C 00808825 */  or         $s1, $a0, $zero
/* 73750 800B8F50 AFBF002C */  sw         $ra, 0x2C($sp)
/* 73754 800B8F54 AFA70054 */  sw         $a3, 0x54($sp)
/* 73758 800B8F58 14C00009 */  bnez       $a2, .L800B8F80
/* 7375C 800B8F5C 00004825 */   or        $t1, $zero, $zero
/* 73760 800B8F60 3C0F8004 */  lui        $t7, %hi(D_800452F4)
/* 73764 800B8F64 8DEF52F4 */  lw         $t7, %lo(D_800452F4)($t7)
/* 73768 800B8F68 90E30000 */  lbu        $v1, 0x0($a3)
/* 7376C 800B8F6C 3C0C8004 */  lui        $t4, %hi(D_80044DF0)
/* 73770 800B8F70 258C4DF0 */  addiu      $t4, $t4, %lo(D_80044DF0)
/* 73774 800B8F74 006F082B */  sltu       $at, $v1, $t7
/* 73778 800B8F78 14200055 */  bnez       $at, .L800B90D0
/* 7377C 800B8F7C 00037100 */   sll       $t6, $v1, 4
.L800B8F80:
/* 73780 800B8F80 3C048004 */  lui        $a0, %hi(D_800452F4)
/* 73784 800B8F84 3C058004 */  lui        $a1, %hi(D_800452F0)
/* 73788 800B8F88 8CA552F0 */  lw         $a1, %lo(D_800452F0)($a1)
/* 7378C 800B8F8C 8C8452F4 */  lw         $a0, %lo(D_800452F4)($a0)
/* 73790 800B8F90 3C198004 */  lui        $t9, %hi(D_80044DF0)
/* 73794 800B8F94 27394DF0 */  addiu      $t9, $t9, %lo(D_80044DF0)
/* 73798 800B8F98 0085082B */  sltu       $at, $a0, $a1
/* 7379C 800B8F9C 10200034 */  beqz       $at, .L800B9070
/* 737A0 800B8FA0 0004C100 */   sll       $t8, $a0, 4
/* 737A4 800B8FA4 03191821 */  addu       $v1, $t8, $t9
.L800B8FA8:
/* 737A8 800B8FA8 8C6D0004 */  lw         $t5, 0x4($v1)
/* 737AC 800B8FAC 00604025 */  or         $t0, $v1, $zero
/* 737B0 800B8FB0 022D1023 */  subu       $v0, $s1, $t5
/* 737B4 800B8FB4 0442002A */  bltzl      $v0, .L800B9060
/* 737B8 800B8FB8 24840001 */   addiu     $a0, $a0, 0x1
/* 737BC 800B8FBC 946E000A */  lhu        $t6, 0xA($v1)
/* 737C0 800B8FC0 01D07823 */  subu       $t7, $t6, $s0
/* 737C4 800B8FC4 01E2082B */  sltu       $at, $t7, $v0
/* 737C8 800B8FC8 54200025 */  bnel       $at, $zero, .L800B9060
/* 737CC 800B8FCC 24840001 */   addiu     $a0, $a0, 0x1
/* 737D0 800B8FD0 9078000E */  lbu        $t8, 0xE($v1)
/* 737D4 800B8FD4 3C078004 */  lui        $a3, %hi(D_80045501)
/* 737D8 800B8FD8 24E75501 */  addiu      $a3, $a3, %lo(D_80045501)
/* 737DC 800B8FDC 17000016 */  bnez       $t8, .L800B9038
/* 737E0 800B8FE0 3C198004 */   lui       $t9, %hi(D_80045503)
/* 737E4 800B8FE4 90E50000 */  lbu        $a1, 0x0($a3)
/* 737E8 800B8FE8 93395503 */  lbu        $t9, %lo(D_80045503)($t9)
/* 737EC 800B8FEC 53250013 */  beql       $t9, $a1, .L800B903C
/* 737F0 800B8FF0 8FB90054 */   lw        $t9, 0x54($sp)
/* 737F4 800B8FF4 9066000D */  lbu        $a2, 0xD($v1)
/* 737F8 800B8FF8 3C0B8004 */  lui        $t3, %hi(D_80045400)
/* 737FC 800B8FFC 256B5400 */  addiu      $t3, $t3, %lo(D_80045400)
/* 73800 800B9000 10A6000B */  beq        $a1, $a2, .L800B9030
/* 73804 800B9004 01651021 */   addu      $v0, $t3, $a1
/* 73808 800B9008 904D0000 */  lbu        $t5, 0x0($v0)
/* 7380C 800B900C 01667021 */  addu       $t6, $t3, $a2
/* 73810 800B9010 3C0C8004 */  lui        $t4, %hi(D_80044DF0)
/* 73814 800B9014 A1CD0000 */  sb         $t5, 0x0($t6)
/* 73818 800B9018 90580000 */  lbu        $t8, 0x0($v0)
/* 7381C 800B901C 906F000D */  lbu        $t7, 0xD($v1)
/* 73820 800B9020 258C4DF0 */  addiu      $t4, $t4, %lo(D_80044DF0)
/* 73824 800B9024 0018C900 */  sll        $t9, $t8, 4
/* 73828 800B9028 01996821 */  addu       $t5, $t4, $t9
/* 7382C 800B902C A1AF000D */  sb         $t7, 0xD($t5)
.L800B9030:
/* 73830 800B9030 24AE0001 */  addiu      $t6, $a1, 0x1
/* 73834 800B9034 A0EE0000 */  sb         $t6, 0x0($a3)
.L800B9038:
/* 73838 800B9038 8FB90054 */  lw         $t9, 0x54($sp)
.L800B903C:
/* 7383C 800B903C 2418003C */  addiu      $t8, $zero, 0x3C
/* 73840 800B9040 A078000E */  sb         $t8, 0xE($v1)
/* 73844 800B9044 A3240000 */  sb         $a0, 0x0($t9)
/* 73848 800B9048 8C6F0000 */  lw         $t7, 0x0($v1)
/* 7384C 800B904C 8C6E0004 */  lw         $t6, 0x4($v1)
/* 73850 800B9050 01F16821 */  addu       $t5, $t7, $s1
/* 73854 800B9054 10000076 */  b          .L800B9230
/* 73858 800B9058 01AE1023 */   subu      $v0, $t5, $t6
/* 7385C 800B905C 24840001 */  addiu      $a0, $a0, 0x1
.L800B9060:
/* 73860 800B9060 0085082B */  sltu       $at, $a0, $a1
/* 73864 800B9064 1420FFD0 */  bnez       $at, .L800B8FA8
/* 73868 800B9068 24630010 */   addiu     $v1, $v1, 0x10
/* 7386C 800B906C AFA80040 */  sw         $t0, 0x40($sp)
.L800B9070:
/* 73870 800B9070 3C078004 */  lui        $a3, %hi(D_80045501)
/* 73874 800B9074 24E75501 */  addiu      $a3, $a3, %lo(D_80045501)
/* 73878 800B9078 3C188004 */  lui        $t8, %hi(D_80045503)
/* 7387C 800B907C 93185503 */  lbu        $t8, %lo(D_80045503)($t8)
/* 73880 800B9080 90E50000 */  lbu        $a1, 0x0($a3)
/* 73884 800B9084 8FA80040 */  lw         $t0, 0x40($sp)
/* 73888 800B9088 1305000E */  beq        $t8, $a1, .L800B90C4
/* 7388C 800B908C 00000000 */   nop
/* 73890 800B9090 10C0000C */  beqz       $a2, .L800B90C4
/* 73894 800B9094 3C0B8004 */   lui       $t3, %hi(D_80045400)
/* 73898 800B9098 256B5400 */  addiu      $t3, $t3, %lo(D_80045400)
/* 7389C 800B909C 0165C821 */  addu       $t9, $t3, $a1
/* 738A0 800B90A0 932A0000 */  lbu        $t2, 0x0($t9)
/* 738A4 800B90A4 3C0C8004 */  lui        $t4, %hi(D_80044DF0)
/* 738A8 800B90A8 258C4DF0 */  addiu      $t4, $t4, %lo(D_80044DF0)
/* 738AC 800B90AC 24AF0001 */  addiu      $t7, $a1, 0x1
/* 738B0 800B90B0 000A6900 */  sll        $t5, $t2, 4
/* 738B4 800B90B4 A0EF0000 */  sb         $t7, 0x0($a3)
/* 738B8 800B90B8 018D4021 */  addu       $t0, $t4, $t5
/* 738BC 800B90BC 24090001 */  addiu      $t1, $zero, 0x1
/* 738C0 800B90C0 AFAA0030 */  sw         $t2, 0x30($sp)
.L800B90C4:
/* 738C4 800B90C4 3C0C8004 */  lui        $t4, %hi(D_80044DF0)
/* 738C8 800B90C8 10000027 */  b          .L800B9168
/* 738CC 800B90CC 258C4DF0 */   addiu     $t4, $t4, %lo(D_80044DF0)
.L800B90D0:
/* 738D0 800B90D0 018E4021 */  addu       $t0, $t4, $t6
/* 738D4 800B90D4 8D040004 */  lw         $a0, 0x4($t0)
/* 738D8 800B90D8 02241023 */  subu       $v0, $s1, $a0
/* 738DC 800B90DC 04400022 */  bltz       $v0, .L800B9168
/* 738E0 800B90E0 00000000 */   nop
/* 738E4 800B90E4 9518000A */  lhu        $t8, 0xA($t0)
/* 738E8 800B90E8 0310C823 */  subu       $t9, $t8, $s0
/* 738EC 800B90EC 0322082B */  sltu       $at, $t9, $v0
/* 738F0 800B90F0 1420001D */  bnez       $at, .L800B9168
/* 738F4 800B90F4 00000000 */   nop
/* 738F8 800B90F8 910F000E */  lbu        $t7, 0xE($t0)
/* 738FC 800B90FC 3C058004 */  lui        $a1, %hi(D_80045500)
/* 73900 800B9100 24A55500 */  addiu      $a1, $a1, %lo(D_80045500)
/* 73904 800B9104 55E00013 */  bnel       $t7, $zero, .L800B9154
/* 73908 800B9108 8D0F0000 */   lw        $t7, 0x0($t0)
/* 7390C 800B910C 90A30000 */  lbu        $v1, 0x0($a1)
/* 73910 800B9110 9104000D */  lbu        $a0, 0xD($t0)
/* 73914 800B9114 3C068004 */  lui        $a2, %hi(D_80045300)
/* 73918 800B9118 24C65300 */  addiu      $a2, $a2, %lo(D_80045300)
/* 7391C 800B911C 10640009 */  beq        $v1, $a0, .L800B9144
/* 73920 800B9120 00C31021 */   addu      $v0, $a2, $v1
/* 73924 800B9124 904D0000 */  lbu        $t5, 0x0($v0)
/* 73928 800B9128 00C47021 */  addu       $t6, $a2, $a0
/* 7392C 800B912C A1CD0000 */  sb         $t5, 0x0($t6)
/* 73930 800B9130 90590000 */  lbu        $t9, 0x0($v0)
/* 73934 800B9134 9118000D */  lbu        $t8, 0xD($t0)
/* 73938 800B9138 00197900 */  sll        $t7, $t9, 4
/* 7393C 800B913C 018F6821 */  addu       $t5, $t4, $t7
/* 73940 800B9140 A1B8000D */  sb         $t8, 0xD($t5)
.L800B9144:
/* 73944 800B9144 246E0001 */  addiu      $t6, $v1, 0x1
/* 73948 800B9148 A0AE0000 */  sb         $t6, 0x0($a1)
/* 7394C 800B914C 8D040004 */  lw         $a0, 0x4($t0)
/* 73950 800B9150 8D0F0000 */  lw         $t7, 0x0($t0)
.L800B9154:
/* 73954 800B9154 24190002 */  addiu      $t9, $zero, 0x2
/* 73958 800B9158 A119000E */  sb         $t9, 0xE($t0)
/* 7395C 800B915C 01F1C021 */  addu       $t8, $t7, $s1
/* 73960 800B9160 10000033 */  b          .L800B9230
/* 73964 800B9164 03041023 */   subu      $v0, $t8, $a0
.L800B9168:
/* 73968 800B9168 1520000C */  bnez       $t1, .L800B919C
/* 7396C 800B916C 8FAA0030 */   lw        $t2, 0x30($sp)
/* 73970 800B9170 3C058004 */  lui        $a1, %hi(D_80045500)
/* 73974 800B9174 24A55500 */  addiu      $a1, $a1, %lo(D_80045500)
/* 73978 800B9178 90A30000 */  lbu        $v1, 0x0($a1)
/* 7397C 800B917C 3C068004 */  lui        $a2, %hi(D_80045300)
/* 73980 800B9180 24C65300 */  addiu      $a2, $a2, %lo(D_80045300)
/* 73984 800B9184 00C36821 */  addu       $t5, $a2, $v1
/* 73988 800B9188 91AA0000 */  lbu        $t2, 0x0($t5)
/* 7398C 800B918C 246E0001 */  addiu      $t6, $v1, 0x1
/* 73990 800B9190 A0AE0000 */  sb         $t6, 0x0($a1)
/* 73994 800B9194 000AC900 */  sll        $t9, $t2, 4
/* 73998 800B9198 01994021 */  addu       $t0, $t4, $t9
.L800B919C:
/* 7399C 800B919C 9502000A */  lhu        $v0, 0xA($t0)
/* 739A0 800B91A0 2401FFF0 */  addiu      $at, $zero, -0x10
/* 739A4 800B91A4 3C098004 */  lui        $t1, %hi(D_80045554)
/* 739A8 800B91A8 240F0002 */  addiu      $t7, $zero, 0x2
/* 739AC 800B91AC 02218024 */  and        $s0, $s1, $at
/* 739B0 800B91B0 25295554 */  addiu      $t1, $t1, %lo(D_80045554)
/* 739B4 800B91B4 A10F000E */  sb         $t7, 0xE($t0)
/* 739B8 800B91B8 AD100004 */  sw         $s0, 0x4($t0)
/* 739BC 800B91BC A5020008 */  sh         $v0, 0x8($t0)
/* 739C0 800B91C0 8D230000 */  lw         $v1, 0x0($t1)
/* 739C4 800B91C4 8D0E0000 */  lw         $t6, 0x0($t0)
/* 739C8 800B91C8 3C0D8004 */  lui        $t5, %hi(D_800448B8)
/* 739CC 800B91CC 0003C080 */  sll        $t8, $v1, 2
/* 739D0 800B91D0 3C198004 */  lui        $t9, %hi(D_800447A0)
/* 739D4 800B91D4 0303C021 */  addu       $t8, $t8, $v1
/* 739D8 800B91D8 0018C080 */  sll        $t8, $t8, 2
/* 739DC 800B91DC 273947A0 */  addiu      $t9, $t9, %lo(D_800447A0)
/* 739E0 800B91E0 25AD48B8 */  addiu      $t5, $t5, %lo(D_800448B8)
/* 739E4 800B91E4 246F0001 */  addiu      $t7, $v1, 0x1
/* 739E8 800B91E8 AD2F0000 */  sw         $t7, 0x0($t1)
/* 739EC 800B91EC 030D2021 */  addu       $a0, $t8, $t5
/* 739F0 800B91F0 AFB90018 */  sw         $t9, 0x18($sp)
/* 739F4 800B91F4 AFAA0030 */  sw         $t2, 0x30($sp)
/* 739F8 800B91F8 AFA80040 */  sw         $t0, 0x40($sp)
/* 739FC 800B91FC 02003825 */  or         $a3, $s0, $zero
/* 73A00 800B9200 00002825 */  or         $a1, $zero, $zero
/* 73A04 800B9204 00003025 */  or         $a2, $zero, $zero
/* 73A08 800B9208 AFA20014 */  sw         $v0, 0x14($sp)
/* 73A0C 800B920C 0C0328DC */  jal        func_800CA370
/* 73A10 800B9210 AFAE0010 */   sw        $t6, 0x10($sp)
/* 73A14 800B9214 8FAA0030 */  lw         $t2, 0x30($sp)
/* 73A18 800B9218 8FB80054 */  lw         $t8, 0x54($sp)
/* 73A1C 800B921C 8FA80040 */  lw         $t0, 0x40($sp)
/* 73A20 800B9220 02306823 */  subu       $t5, $s1, $s0
/* 73A24 800B9224 A30A0000 */  sb         $t2, 0x0($t8)
/* 73A28 800B9228 8D0E0000 */  lw         $t6, 0x0($t0)
/* 73A2C 800B922C 01AE1021 */  addu       $v0, $t5, $t6
.L800B9230:
/* 73A30 800B9230 8FBF002C */  lw         $ra, 0x2C($sp)
/* 73A34 800B9234 8FB00024 */  lw         $s0, 0x24($sp)
/* 73A38 800B9238 8FB10028 */  lw         $s1, 0x28($sp)
/* 73A3C 800B923C 03E00008 */  jr         $ra
/* 73A40 800B9240 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_800B9244
/* 73A44 800B9244 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 73A48 800B9248 AFB50028 */  sw         $s5, 0x28($sp)
/* 73A4C 800B924C 3C158004 */  lui        $s5, %hi(D_80045548)
/* 73A50 800B9250 26B55548 */  addiu      $s5, $s5, %lo(D_80045548)
/* 73A54 800B9254 AFA40038 */  sw         $a0, 0x38($sp)
/* 73A58 800B9258 8EA40000 */  lw         $a0, 0x0($s5)
/* 73A5C 800B925C AFB2001C */  sw         $s2, 0x1C($sp)
/* 73A60 800B9260 24120003 */  addiu      $s2, $zero, 0x3
/* 73A64 800B9264 00920019 */  multu      $a0, $s2
/* 73A68 800B9268 AFB30020 */  sw         $s3, 0x20($sp)
/* 73A6C 800B926C 3C138004 */  lui        $s3, %hi(D_80045520)
/* 73A70 800B9270 26735520 */  addiu      $s3, $s3, %lo(D_80045520)
/* 73A74 800B9274 86780000 */  lh         $t8, 0x0($s3)
/* 73A78 800B9278 AFB40024 */  sw         $s4, 0x24($sp)
/* 73A7C 800B927C 3C148004 */  lui        $s4, %hi(D_80045540)
/* 73A80 800B9280 AFB70030 */  sw         $s7, 0x30($sp)
/* 73A84 800B9284 AFB6002C */  sw         $s6, 0x2C($sp)
/* 73A88 800B9288 AFB10018 */  sw         $s1, 0x18($sp)
/* 73A8C 800B928C 00007812 */  mflo       $t7
/* 73A90 800B9290 26945540 */  addiu      $s4, $s4, %lo(D_80045540)
/* 73A94 800B9294 AFB00014 */  sw         $s0, 0x14($sp)
/* 73A98 800B9298 01F80019 */  multu      $t7, $t8
/* 73A9C 800B929C 240E02D0 */  addiu      $t6, $zero, 0x2D0
/* 73AA0 800B92A0 3C118004 */  lui        $s1, %hi(D_800452F0)
/* 73AA4 800B92A4 3C168004 */  lui        $s6, %hi(D_8003E570)
/* 73AA8 800B92A8 3C178004 */  lui        $s7, %hi(D_80044DF0)
/* 73AAC 800B92AC AFBF0034 */  sw         $ra, 0x34($sp)
/* 73AB0 800B92B0 AE8E0000 */  sw         $t6, 0x0($s4)
/* 73AB4 800B92B4 26F74DF0 */  addiu      $s7, $s7, %lo(D_80044DF0)
/* 73AB8 800B92B8 26D6E570 */  addiu      $s6, $s6, %lo(D_8003E570)
/* 73ABC 800B92BC 263152F0 */  addiu      $s1, $s1, %lo(D_800452F0)
/* 73AC0 800B92C0 0000C812 */  mflo       $t9
/* 73AC4 800B92C4 01C02825 */  or         $a1, $t6, $zero
/* 73AC8 800B92C8 1B200020 */  blez       $t9, .L800B934C
/* 73ACC 800B92CC 00008025 */   or        $s0, $zero, $zero
.L800B92D0:
/* 73AD0 800B92D0 0C02DDD8 */  jal        func_800B7760
/* 73AD4 800B92D4 02C02025 */   or        $a0, $s6, $zero
/* 73AD8 800B92D8 8E260000 */  lw         $a2, 0x0($s1)
/* 73ADC 800B92DC 00064100 */  sll        $t0, $a2, 4
/* 73AE0 800B92E0 02E81821 */  addu       $v1, $s7, $t0
/* 73AE4 800B92E4 14400004 */  bnez       $v0, .L800B92F8
/* 73AE8 800B92E8 AC620000 */   sw        $v0, 0x0($v1)
/* 73AEC 800B92EC 00008025 */  or         $s0, $zero, $zero
/* 73AF0 800B92F0 10000016 */  b          .L800B934C
/* 73AF4 800B92F4 8EA40000 */   lw        $a0, 0x0($s5)
.L800B92F8:
/* 73AF8 800B92F8 8EA40000 */  lw         $a0, 0x0($s5)
/* 73AFC 800B92FC 866B0000 */  lh         $t3, 0x0($s3)
/* 73B00 800B9300 8E850000 */  lw         $a1, 0x0($s4)
/* 73B04 800B9304 00920019 */  multu      $a0, $s2
/* 73B08 800B9308 26100001 */  addiu      $s0, $s0, 0x1
/* 73B0C 800B930C 24C90001 */  addiu      $t1, $a2, 0x1
/* 73B10 800B9310 AC600004 */  sw         $zero, 0x4($v1)
/* 73B14 800B9314 A4600008 */  sh         $zero, 0x8($v1)
/* 73B18 800B9318 A060000C */  sb         $zero, 0xC($v1)
/* 73B1C 800B931C A060000E */  sb         $zero, 0xE($v1)
/* 73B20 800B9320 AE290000 */  sw         $t1, 0x0($s1)
/* 73B24 800B9324 A465000A */  sh         $a1, 0xA($v1)
/* 73B28 800B9328 00005012 */  mflo       $t2
/* 73B2C 800B932C 00000000 */  nop
/* 73B30 800B9330 00000000 */  nop
/* 73B34 800B9334 014B0019 */  multu      $t2, $t3
/* 73B38 800B9338 00006012 */  mflo       $t4
/* 73B3C 800B933C 020C082A */  slt        $at, $s0, $t4
/* 73B40 800B9340 1420FFE3 */  bnez       $at, .L800B92D0
/* 73B44 800B9344 00000000 */   nop
/* 73B48 800B9348 00008025 */  or         $s0, $zero, $zero
.L800B934C:
/* 73B4C 800B934C 3C118004 */  lui        $s1, %hi(D_800452F0)
/* 73B50 800B9350 263152F0 */  addiu      $s1, $s1, %lo(D_800452F0)
/* 73B54 800B9354 8E260000 */  lw         $a2, 0x0($s1)
/* 73B58 800B9358 3C168004 */  lui        $s6, %hi(D_8003E570)
/* 73B5C 800B935C 3C178004 */  lui        $s7, %hi(D_80044DF0)
/* 73B60 800B9360 26F74DF0 */  addiu      $s7, $s7, %lo(D_80044DF0)
/* 73B64 800B9364 10C0000C */  beqz       $a2, .L800B9398
/* 73B68 800B9368 26D6E570 */   addiu     $s6, $s6, %lo(D_8003E570)
/* 73B6C 800B936C 3C028004 */  lui        $v0, %hi(D_80045300)
/* 73B70 800B9370 3C038004 */  lui        $v1, %hi(D_80044DF0)
/* 73B74 800B9374 24634DF0 */  addiu      $v1, $v1, %lo(D_80044DF0)
/* 73B78 800B9378 24425300 */  addiu      $v0, $v0, %lo(D_80045300)
.L800B937C:
/* 73B7C 800B937C A0500000 */  sb         $s0, 0x0($v0)
/* 73B80 800B9380 A070000D */  sb         $s0, 0xD($v1)
/* 73B84 800B9384 26100001 */  addiu      $s0, $s0, 0x1
/* 73B88 800B9388 0206082B */  sltu       $at, $s0, $a2
/* 73B8C 800B938C 24420001 */  addiu      $v0, $v0, 0x1
/* 73B90 800B9390 1420FFFA */  bnez       $at, .L800B937C
/* 73B94 800B9394 24630010 */   addiu     $v1, $v1, 0x10
.L800B9398:
/* 73B98 800B9398 28C10100 */  slti       $at, $a2, 0x100
/* 73B9C 800B939C 00C03825 */  or         $a3, $a2, $zero
/* 73BA0 800B93A0 1020000A */  beqz       $at, .L800B93CC
/* 73BA4 800B93A4 00C08025 */   or        $s0, $a2, $zero
/* 73BA8 800B93A8 3C0D8004 */  lui        $t5, %hi(D_80045300)
/* 73BAC 800B93AC 25AD5300 */  addiu      $t5, $t5, %lo(D_80045300)
/* 73BB0 800B93B0 3C038004 */  lui        $v1, %hi(D_80045400)
/* 73BB4 800B93B4 24635400 */  addiu      $v1, $v1, %lo(D_80045400)
/* 73BB8 800B93B8 020D1021 */  addu       $v0, $s0, $t5
.L800B93BC:
/* 73BBC 800B93BC 24420001 */  addiu      $v0, $v0, 0x1
/* 73BC0 800B93C0 0043082B */  sltu       $at, $v0, $v1
/* 73BC4 800B93C4 1420FFFD */  bnez       $at, .L800B93BC
/* 73BC8 800B93C8 A040FFFF */   sb        $zero, -0x1($v0)
.L800B93CC:
/* 73BCC 800B93CC 3C018004 */  lui        $at, %hi(D_80045500)
/* 73BD0 800B93D0 A0205500 */  sb         $zero, %lo(D_80045500)($at)
/* 73BD4 800B93D4 3C128004 */  lui        $s2, %hi(D_800452F4)
/* 73BD8 800B93D8 3C018004 */  lui        $at, %hi(D_80045502)
/* 73BDC 800B93DC 265252F4 */  addiu      $s2, $s2, %lo(D_800452F4)
/* 73BE0 800B93E0 A0265502 */  sb         $a2, %lo(D_80045502)($at)
/* 73BE4 800B93E4 240E0400 */  addiu      $t6, $zero, 0x400
/* 73BE8 800B93E8 AE460000 */  sw         $a2, 0x0($s2)
/* 73BEC 800B93EC AE8E0000 */  sw         $t6, 0x0($s4)
/* 73BF0 800B93F0 1880001A */  blez       $a0, .L800B945C
/* 73BF4 800B93F4 00008025 */   or        $s0, $zero, $zero
/* 73BF8 800B93F8 01C02825 */  or         $a1, $t6, $zero
.L800B93FC:
/* 73BFC 800B93FC 0C02DDD8 */  jal        func_800B7760
/* 73C00 800B9400 02C02025 */   or        $a0, $s6, $zero
/* 73C04 800B9404 8E260000 */  lw         $a2, 0x0($s1)
/* 73C08 800B9408 26100001 */  addiu      $s0, $s0, 0x1
/* 73C0C 800B940C 00067900 */  sll        $t7, $a2, 4
/* 73C10 800B9410 02EF1821 */  addu       $v1, $s7, $t7
/* 73C14 800B9414 14400003 */  bnez       $v0, .L800B9424
/* 73C18 800B9418 AC620000 */   sw        $v0, 0x0($v1)
/* 73C1C 800B941C 1000000F */  b          .L800B945C
/* 73C20 800B9420 00C03825 */   or        $a3, $a2, $zero
.L800B9424:
/* 73C24 800B9424 8EB90000 */  lw         $t9, 0x0($s5)
/* 73C28 800B9428 8E850000 */  lw         $a1, 0x0($s4)
/* 73C2C 800B942C 24D80001 */  addiu      $t8, $a2, 0x1
/* 73C30 800B9430 0219082A */  slt        $at, $s0, $t9
/* 73C34 800B9434 AC600004 */  sw         $zero, 0x4($v1)
/* 73C38 800B9438 A4600008 */  sh         $zero, 0x8($v1)
/* 73C3C 800B943C A060000C */  sb         $zero, 0xC($v1)
/* 73C40 800B9440 A060000E */  sb         $zero, 0xE($v1)
/* 73C44 800B9444 AE380000 */  sw         $t8, 0x0($s1)
/* 73C48 800B9448 1420FFEC */  bnez       $at, .L800B93FC
/* 73C4C 800B944C A465000A */   sh        $a1, 0xA($v1)
/* 73C50 800B9450 3C068004 */  lui        $a2, %hi(D_800452F0)
/* 73C54 800B9454 8CC652F0 */  lw         $a2, %lo(D_800452F0)($a2)
/* 73C58 800B9458 00C03825 */  or         $a3, $a2, $zero
.L800B945C:
/* 73C5C 800B945C 8E450000 */  lw         $a1, 0x0($s2)
/* 73C60 800B9460 3C098004 */  lui        $t1, %hi(D_80044DF0)
/* 73C64 800B9464 25294DF0 */  addiu      $t1, $t1, %lo(D_80044DF0)
/* 73C68 800B9468 00A6082B */  sltu       $at, $a1, $a2
/* 73C6C 800B946C 1020000F */  beqz       $at, .L800B94AC
/* 73C70 800B9470 00A08025 */   or        $s0, $a1, $zero
/* 73C74 800B9474 3C0A8004 */  lui        $t2, %hi(D_80045400)
/* 73C78 800B9478 254A5400 */  addiu      $t2, $t2, %lo(D_80045400)
/* 73C7C 800B947C 00104100 */  sll        $t0, $s0, 4
/* 73C80 800B9480 02051023 */  subu       $v0, $s0, $a1
/* 73C84 800B9484 004A2021 */  addu       $a0, $v0, $t2
/* 73C88 800B9488 01091821 */  addu       $v1, $t0, $t1
.L800B948C:
/* 73C8C 800B948C A0900000 */  sb         $s0, 0x0($a0)
/* 73C90 800B9490 26100001 */  addiu      $s0, $s0, 0x1
/* 73C94 800B9494 0206082B */  sltu       $at, $s0, $a2
/* 73C98 800B9498 A062000D */  sb         $v0, 0xD($v1)
/* 73C9C 800B949C 24420001 */  addiu      $v0, $v0, 0x1
/* 73CA0 800B94A0 24630010 */  addiu      $v1, $v1, 0x10
/* 73CA4 800B94A4 1420FFF9 */  bnez       $at, .L800B948C
/* 73CA8 800B94A8 24840001 */   addiu     $a0, $a0, 0x1
.L800B94AC:
/* 73CAC 800B94AC 28E10100 */  slti       $at, $a3, 0x100
/* 73CB0 800B94B0 1020000A */  beqz       $at, .L800B94DC
/* 73CB4 800B94B4 00C56023 */   subu      $t4, $a2, $a1
/* 73CB8 800B94B8 3C0B8004 */  lui        $t3, %hi(D_80045400)
/* 73CBC 800B94BC 256B5400 */  addiu      $t3, $t3, %lo(D_80045400)
/* 73CC0 800B94C0 3C038004 */  lui        $v1, %hi(D_80045500)
/* 73CC4 800B94C4 24635500 */  addiu      $v1, $v1, %lo(D_80045500)
/* 73CC8 800B94C8 00EB1021 */  addu       $v0, $a3, $t3
.L800B94CC:
/* 73CCC 800B94CC 24420001 */  addiu      $v0, $v0, 0x1
/* 73CD0 800B94D0 0043082B */  sltu       $at, $v0, $v1
/* 73CD4 800B94D4 1420FFFD */  bnez       $at, .L800B94CC
/* 73CD8 800B94D8 A045FFFF */   sb        $a1, -0x1($v0)
.L800B94DC:
/* 73CDC 800B94DC 8FBF0034 */  lw         $ra, 0x34($sp)
/* 73CE0 800B94E0 3C018004 */  lui        $at, %hi(D_80045501)
/* 73CE4 800B94E4 A0205501 */  sb         $zero, %lo(D_80045501)($at)
/* 73CE8 800B94E8 3C018004 */  lui        $at, %hi(D_80045503)
/* 73CEC 800B94EC 8FB00014 */  lw         $s0, 0x14($sp)
/* 73CF0 800B94F0 8FB10018 */  lw         $s1, 0x18($sp)
/* 73CF4 800B94F4 8FB2001C */  lw         $s2, 0x1C($sp)
/* 73CF8 800B94F8 8FB30020 */  lw         $s3, 0x20($sp)
/* 73CFC 800B94FC 8FB40024 */  lw         $s4, 0x24($sp)
/* 73D00 800B9500 8FB50028 */  lw         $s5, 0x28($sp)
/* 73D04 800B9504 8FB6002C */  lw         $s6, 0x2C($sp)
/* 73D08 800B9508 8FB70030 */  lw         $s7, 0x30($sp)
/* 73D0C 800B950C A02C5503 */  sb         $t4, %lo(D_80045503)($at)
/* 73D10 800B9510 03E00008 */  jr         $ra
/* 73D14 800B9514 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_800B9518
/* 73D18 800B9518 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 73D1C 800B951C AFBF001C */  sw         $ra, 0x1C($sp)
/* 73D20 800B9520 AFB00018 */  sw         $s0, 0x18($sp)
/* 73D24 800B9524 AFA40030 */  sw         $a0, 0x30($sp)
/* 73D28 800B9528 8C820000 */  lw         $v0, 0x0($a0)
/* 73D2C 800B952C 00A08025 */  or         $s0, $a1, $zero
/* 73D30 800B9530 10400034 */  beqz       $v0, .L800B9604
/* 73D34 800B9534 00453821 */   addu      $a3, $v0, $a1
/* 73D38 800B9538 AC870000 */  sw         $a3, 0x0($a0)
/* 73D3C 800B953C 90E40001 */  lbu        $a0, 0x1($a3)
/* 73D40 800B9540 00E01825 */  or         $v1, $a3, $zero
/* 73D44 800B9544 24080001 */  addiu      $t0, $zero, 0x1
/* 73D48 800B9548 1480000C */  bnez       $a0, .L800B957C
/* 73D4C 800B954C 24010080 */   addiu     $at, $zero, 0x80
/* 73D50 800B9550 8CEF0004 */  lw         $t7, 0x4($a3)
/* 73D54 800B9554 8C780008 */  lw         $t8, 0x8($v1)
/* 73D58 800B9558 8C79000C */  lw         $t9, 0xC($v1)
/* 73D5C 800B955C 01E63821 */  addu       $a3, $t7, $a2
/* 73D60 800B9560 AC670004 */  sw         $a3, 0x4($v1)
/* 73D64 800B9564 03053821 */  addu       $a3, $t8, $a1
/* 73D68 800B9568 AC670008 */  sw         $a3, 0x8($v1)
/* 73D6C 800B956C 03253821 */  addu       $a3, $t9, $a1
/* 73D70 800B9570 AC67000C */  sw         $a3, 0xC($v1)
/* 73D74 800B9574 10000023 */  b          .L800B9604
/* 73D78 800B9578 A0680001 */   sb        $t0, 0x1($v1)
.L800B957C:
/* 73D7C 800B957C 54810022 */  bnel       $a0, $at, .L800B9608
/* 73D80 800B9580 8FBF001C */   lw        $ra, 0x1C($sp)
/* 73D84 800B9584 8C690004 */  lw         $t1, 0x4($v1)
/* 73D88 800B9588 3C048004 */  lui        $a0, %hi(D_8003E570)
/* 73D8C 800B958C 8C650010 */  lw         $a1, 0x10($v1)
/* 73D90 800B9590 01263821 */  addu       $a3, $t1, $a2
/* 73D94 800B9594 AFA70028 */  sw         $a3, 0x28($sp)
/* 73D98 800B9598 AFA3002C */  sw         $v1, 0x2C($sp)
/* 73D9C 800B959C 0C02DDD8 */  jal        func_800B7760
/* 73DA0 800B95A0 2484E570 */   addiu     $a0, $a0, %lo(D_8003E570)
/* 73DA4 800B95A4 8FA3002C */  lw         $v1, 0x2C($sp)
/* 73DA8 800B95A8 8FA70028 */  lw         $a3, 0x28($sp)
/* 73DAC 800B95AC 14400005 */  bnez       $v0, .L800B95C4
/* 73DB0 800B95B0 00402825 */   or        $a1, $v0, $zero
/* 73DB4 800B95B4 240A0001 */  addiu      $t2, $zero, 0x1
/* 73DB8 800B95B8 AC670004 */  sw         $a3, 0x4($v1)
/* 73DBC 800B95BC 1000000B */  b          .L800B95EC
/* 73DC0 800B95C0 A06A0001 */   sb        $t2, 0x1($v1)
.L800B95C4:
/* 73DC4 800B95C4 8C660010 */  lw         $a2, 0x10($v1)
/* 73DC8 800B95C8 AFA50024 */  sw         $a1, 0x24($sp)
/* 73DCC 800B95CC AFA3002C */  sw         $v1, 0x2C($sp)
/* 73DD0 800B95D0 0C02E32C */  jal        func_800B8CB0
/* 73DD4 800B95D4 00E02025 */   or        $a0, $a3, $zero
/* 73DD8 800B95D8 8FA3002C */  lw         $v1, 0x2C($sp)
/* 73DDC 800B95DC 8FA50024 */  lw         $a1, 0x24($sp)
/* 73DE0 800B95E0 240B0081 */  addiu      $t3, $zero, 0x81
/* 73DE4 800B95E4 A06B0001 */  sb         $t3, 0x1($v1)
/* 73DE8 800B95E8 AC650004 */  sw         $a1, 0x4($v1)
.L800B95EC:
/* 73DEC 800B95EC 8C6C0008 */  lw         $t4, 0x8($v1)
/* 73DF0 800B95F0 8C6D000C */  lw         $t5, 0xC($v1)
/* 73DF4 800B95F4 01903821 */  addu       $a3, $t4, $s0
/* 73DF8 800B95F8 AC670008 */  sw         $a3, 0x8($v1)
/* 73DFC 800B95FC 01B03821 */  addu       $a3, $t5, $s0
/* 73E00 800B9600 AC67000C */  sw         $a3, 0xC($v1)
.L800B9604:
/* 73E04 800B9604 8FBF001C */  lw         $ra, 0x1C($sp)
.L800B9608:
/* 73E08 800B9608 8FB00018 */  lw         $s0, 0x18($sp)
/* 73E0C 800B960C 27BD0030 */  addiu      $sp, $sp, 0x30
/* 73E10 800B9610 03E00008 */  jr         $ra
/* 73E14 800B9614 00000000 */   nop

glabel func_800B9618
/* 73E18 800B9618 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 73E1C 800B961C AFBF0034 */  sw         $ra, 0x34($sp)
/* 73E20 800B9620 AFB70030 */  sw         $s7, 0x30($sp)
/* 73E24 800B9624 AFB6002C */  sw         $s6, 0x2C($sp)
/* 73E28 800B9628 AFB50028 */  sw         $s5, 0x28($sp)
/* 73E2C 800B962C AFB40024 */  sw         $s4, 0x24($sp)
/* 73E30 800B9630 AFB30020 */  sw         $s3, 0x20($sp)
/* 73E34 800B9634 AFB2001C */  sw         $s2, 0x1C($sp)
/* 73E38 800B9638 AFB10018 */  sw         $s1, 0x18($sp)
/* 73E3C 800B963C AFB00014 */  sw         $s0, 0x14($sp)
/* 73E40 800B9640 AFA60040 */  sw         $a2, 0x40($sp)
/* 73E44 800B9644 8C820000 */  lw         $v0, 0x0($a0)
/* 73E48 800B9648 00809825 */  or         $s3, $a0, $zero
/* 73E4C 800B964C 00A0A825 */  or         $s5, $a1, $zero
/* 73E50 800B9650 1040001C */  beqz       $v0, .L800B96C4
/* 73E54 800B9654 00E0B825 */   or        $s7, $a3, $zero
/* 73E58 800B9658 10E0001A */  beqz       $a3, .L800B96C4
/* 73E5C 800B965C 00447021 */   addu      $t6, $v0, $a0
/* 73E60 800B9660 AC8E0000 */  sw         $t6, 0x0($a0)
/* 73E64 800B9664 10E00017 */  beqz       $a3, .L800B96C4
/* 73E68 800B9668 00009025 */   or        $s2, $zero, $zero
/* 73E6C 800B966C 0000A025 */  or         $s4, $zero, $zero
/* 73E70 800B9670 24160001 */  addiu      $s6, $zero, 0x1
.L800B9674:
/* 73E74 800B9674 8E6F0000 */  lw         $t7, 0x0($s3)
/* 73E78 800B9678 01F41021 */  addu       $v0, $t7, $s4
/* 73E7C 800B967C 8C500000 */  lw         $s0, 0x0($v0)
/* 73E80 800B9680 1200000D */  beqz       $s0, .L800B96B8
/* 73E84 800B9684 02138021 */   addu      $s0, $s0, $s3
/* 73E88 800B9688 AC500000 */  sw         $s0, 0x0($v0)
/* 73E8C 800B968C 92180002 */  lbu        $t8, 0x2($s0)
/* 73E90 800B9690 02008825 */  or         $s1, $s0, $zero
/* 73E94 800B9694 26040004 */  addiu      $a0, $s0, 0x4
/* 73E98 800B9698 17000007 */  bnez       $t8, .L800B96B8
/* 73E9C 800B969C 02602825 */   or        $a1, $s3, $zero
/* 73EA0 800B96A0 0C02E546 */  jal        func_800B9518
/* 73EA4 800B96A4 02A03025 */   or        $a2, $s5, $zero
/* 73EA8 800B96A8 8E30000C */  lw         $s0, 0xC($s1)
/* 73EAC 800B96AC A2360002 */  sb         $s6, 0x2($s1)
/* 73EB0 800B96B0 0213C821 */  addu       $t9, $s0, $s3
/* 73EB4 800B96B4 AE39000C */  sw         $t9, 0xC($s1)
.L800B96B8:
/* 73EB8 800B96B8 26520001 */  addiu      $s2, $s2, 0x1
/* 73EBC 800B96BC 1657FFED */  bne        $s2, $s7, .L800B9674
/* 73EC0 800B96C0 26940004 */   addiu     $s4, $s4, 0x4
.L800B96C4:
/* 73EC4 800B96C4 8FA80040 */  lw         $t0, 0x40($sp)
/* 73EC8 800B96C8 24160001 */  addiu      $s6, $zero, 0x1
/* 73ECC 800B96CC 26720004 */  addiu      $s2, $s3, 0x4
/* 73ED0 800B96D0 1100001D */  beqz       $t0, .L800B9748
/* 73ED4 800B96D4 00084880 */   sll       $t1, $t0, 2
/* 73ED8 800B96D8 0133A021 */  addu       $s4, $t1, $s3
/* 73EDC 800B96DC 26940004 */  addiu      $s4, $s4, 0x4
/* 73EE0 800B96E0 8E420000 */  lw         $v0, 0x0($s2)
.L800B96E4:
/* 73EE4 800B96E4 10400015 */  beqz       $v0, .L800B973C
/* 73EE8 800B96E8 00535021 */   addu      $t2, $v0, $s3
/* 73EEC 800B96EC AE4A0000 */  sw         $t2, 0x0($s2)
/* 73EF0 800B96F0 914B0000 */  lbu        $t3, 0x0($t2)
/* 73EF4 800B96F4 01408825 */  or         $s1, $t2, $zero
/* 73EF8 800B96F8 25440008 */  addiu      $a0, $t2, 0x8
/* 73EFC 800B96FC 1560000F */  bnez       $t3, .L800B973C
/* 73F00 800B9700 02602825 */   or        $a1, $s3, $zero
/* 73F04 800B9704 0C02E546 */  jal        func_800B9518
/* 73F08 800B9708 02A03025 */   or        $a2, $s5, $zero
/* 73F0C 800B970C 26240010 */  addiu      $a0, $s1, 0x10
/* 73F10 800B9710 02602825 */  or         $a1, $s3, $zero
/* 73F14 800B9714 0C02E546 */  jal        func_800B9518
/* 73F18 800B9718 02A03025 */   or        $a2, $s5, $zero
/* 73F1C 800B971C 26240018 */  addiu      $a0, $s1, 0x18
/* 73F20 800B9720 02602825 */  or         $a1, $s3, $zero
/* 73F24 800B9724 0C02E546 */  jal        func_800B9518
/* 73F28 800B9728 02A03025 */   or        $a2, $s5, $zero
/* 73F2C 800B972C 8E300004 */  lw         $s0, 0x4($s1)
/* 73F30 800B9730 A2360000 */  sb         $s6, 0x0($s1)
/* 73F34 800B9734 02136021 */  addu       $t4, $s0, $s3
/* 73F38 800B9738 AE2C0004 */  sw         $t4, 0x4($s1)
.L800B973C:
/* 73F3C 800B973C 26520004 */  addiu      $s2, $s2, 0x4
/* 73F40 800B9740 5692FFE8 */  bnel       $s4, $s2, .L800B96E4
/* 73F44 800B9744 8E420000 */   lw        $v0, 0x0($s2)
.L800B9748:
/* 73F48 800B9748 8FBF0034 */  lw         $ra, 0x34($sp)
/* 73F4C 800B974C 8FB00014 */  lw         $s0, 0x14($sp)
/* 73F50 800B9750 8FB10018 */  lw         $s1, 0x18($sp)
/* 73F54 800B9754 8FB2001C */  lw         $s2, 0x1C($sp)
/* 73F58 800B9758 8FB30020 */  lw         $s3, 0x20($sp)
/* 73F5C 800B975C 8FB40024 */  lw         $s4, 0x24($sp)
/* 73F60 800B9760 8FB50028 */  lw         $s5, 0x28($sp)
/* 73F64 800B9764 8FB6002C */  lw         $s6, 0x2C($sp)
/* 73F68 800B9768 8FB70030 */  lw         $s7, 0x30($sp)
/* 73F6C 800B976C 03E00008 */  jr         $ra
/* 73F70 800B9770 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_800B9774
/* 73F74 800B9774 3C0E8004 */  lui        $t6, %hi(D_80045508)
/* 73F78 800B9778 8DCE5508 */  lw         $t6, %lo(D_80045508)($t6)
/* 73F7C 800B977C 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 73F80 800B9780 000418C0 */  sll        $v1, $a0, 3
/* 73F84 800B9784 AFBF0024 */  sw         $ra, 0x24($sp)
/* 73F88 800B9788 AFB10020 */  sw         $s1, 0x20($sp)
/* 73F8C 800B978C AFB0001C */  sw         $s0, 0x1C($sp)
/* 73F90 800B9790 01C31021 */  addu       $v0, $t6, $v1
/* 73F94 800B9794 8C500008 */  lw         $s0, 0x8($v0)
/* 73F98 800B9798 8C580004 */  lw         $t8, 0x4($v0)
/* 73F9C 800B979C 2401FFF0 */  addiu      $at, $zero, -0x10
/* 73FA0 800B97A0 2610001E */  addiu      $s0, $s0, 0x1E
/* 73FA4 800B97A4 00808825 */  or         $s1, $a0, $zero
/* 73FA8 800B97A8 02017824 */  and        $t7, $s0, $at
/* 73FAC 800B97AC 00A03825 */  or         $a3, $a1, $zero
/* 73FB0 800B97B0 25F0FFF0 */  addiu      $s0, $t7, -0x10
/* 73FB4 800B97B4 3C048004 */  lui        $a0, %hi(D_8003E7A0)
/* 73FB8 800B97B8 2484E7A0 */  addiu      $a0, $a0, %lo(D_8003E7A0)
/* 73FBC 800B97BC 02003025 */  or         $a2, $s0, $zero
/* 73FC0 800B97C0 24050001 */  addiu      $a1, $zero, 0x1
/* 73FC4 800B97C4 AFB10010 */  sw         $s1, 0x10($sp)
/* 73FC8 800B97C8 AFB10068 */  sw         $s1, 0x68($sp)
/* 73FCC 800B97CC AFA30030 */  sw         $v1, 0x30($sp)
/* 73FD0 800B97D0 0C02DEC5 */  jal        func_800B7B14
/* 73FD4 800B97D4 AFB80038 */   sw        $t8, 0x38($sp)
/* 73FD8 800B97D8 14400003 */  bnez       $v0, .L800B97E8
/* 73FDC 800B97DC 00408825 */   or        $s1, $v0, $zero
/* 73FE0 800B97E0 10000032 */  b          .L800B98AC
/* 73FE4 800B97E4 00001025 */   or        $v0, $zero, $zero
.L800B97E8:
/* 73FE8 800B97E8 8FA40038 */  lw         $a0, 0x38($sp)
/* 73FEC 800B97EC 27A50048 */  addiu      $a1, $sp, 0x48
/* 73FF0 800B97F0 0C02E32C */  jal        func_800B8CB0
/* 73FF4 800B97F4 24060010 */   addiu     $a2, $zero, 0x10
/* 73FF8 800B97F8 8FB90048 */  lw         $t9, 0x48($sp)
/* 73FFC 800B97FC 8FA8004C */  lw         $t0, 0x4C($sp)
/* 74000 800B9800 8FA40038 */  lw         $a0, 0x38($sp)
/* 74004 800B9804 02202825 */  or         $a1, $s1, $zero
/* 74008 800B9808 02003025 */  or         $a2, $s0, $zero
/* 7400C 800B980C AFB90044 */  sw         $t9, 0x44($sp)
/* 74010 800B9810 AFA80040 */  sw         $t0, 0x40($sp)
/* 74014 800B9814 0C02E32C */  jal        func_800B8CB0
/* 74018 800B9818 24840010 */   addiu     $a0, $a0, 0x10
/* 7401C 800B981C 3C098004 */  lui        $t1, %hi(D_8004550C)
/* 74020 800B9820 8D29550C */  lw         $t1, %lo(D_8004550C)($t1)
/* 74024 800B9824 8FAA0030 */  lw         $t2, 0x30($sp)
/* 74028 800B9828 8FB00044 */  lw         $s0, 0x44($sp)
/* 7402C 800B982C 02202025 */  or         $a0, $s1, $zero
/* 74030 800B9830 012A5821 */  addu       $t3, $t1, $t2
/* 74034 800B9834 8D650004 */  lw         $a1, 0x4($t3)
/* 74038 800B9838 8FA70040 */  lw         $a3, 0x40($sp)
/* 7403C 800B983C 0C02E586 */  jal        func_800B9618
/* 74040 800B9840 02003025 */   or        $a2, $s0, $zero
/* 74044 800B9844 8FA50068 */  lw         $a1, 0x68($sp)
/* 74048 800B9848 3C048004 */  lui        $a0, %hi(D_80045518)
/* 7404C 800B984C 24845518 */  addiu      $a0, $a0, %lo(D_80045518)
/* 74050 800B9850 8C8C0000 */  lw         $t4, 0x0($a0)
/* 74054 800B9854 00051880 */  sll        $v1, $a1, 2
/* 74058 800B9858 00651823 */  subu       $v1, $v1, $a1
/* 7405C 800B985C 00031880 */  sll        $v1, $v1, 2
/* 74060 800B9860 01836821 */  addu       $t5, $t4, $v1
/* 74064 800B9864 A1B00001 */  sb         $s0, 0x1($t5)
/* 74068 800B9868 8C8F0000 */  lw         $t7, 0x0($a0)
/* 7406C 800B986C 8FAE0040 */  lw         $t6, 0x40($sp)
/* 74070 800B9870 26390004 */  addiu      $t9, $s1, 0x4
/* 74074 800B9874 01E3C021 */  addu       $t8, $t7, $v1
/* 74078 800B9878 A30E0002 */  sb         $t6, 0x2($t8)
/* 7407C 800B987C 8C880000 */  lw         $t0, 0x0($a0)
/* 74080 800B9880 3C018004 */  lui        $at, %hi(D_8003EB78)
/* 74084 800B9884 240D0002 */  addiu      $t5, $zero, 0x2
/* 74088 800B9888 01034821 */  addu       $t1, $t0, $v1
/* 7408C 800B988C AD390004 */  sw         $t9, 0x4($t1)
/* 74090 800B9890 8C8B0000 */  lw         $t3, 0x0($a0)
/* 74094 800B9894 8E2A0000 */  lw         $t2, 0x0($s1)
/* 74098 800B9898 00250821 */  addu       $at, $at, $a1
/* 7409C 800B989C 01636021 */  addu       $t4, $t3, $v1
/* 740A0 800B98A0 AD8A0008 */  sw         $t2, 0x8($t4)
/* 740A4 800B98A4 A02DEB78 */  sb         $t5, %lo(D_8003EB78)($at)
/* 740A8 800B98A8 02201025 */  or         $v0, $s1, $zero
.L800B98AC:
/* 740AC 800B98AC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 740B0 800B98B0 8FB0001C */  lw         $s0, 0x1C($sp)
/* 740B4 800B98B4 8FB10020 */  lw         $s1, 0x20($sp)
/* 740B8 800B98B8 03E00008 */  jr         $ra
/* 740BC 800B98BC 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_800B98C0
/* 740C0 800B98C0 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 740C4 800B98C4 3C0E8004 */  lui        $t6, %hi(D_80045508)
/* 740C8 800B98C8 8DCE5508 */  lw         $t6, %lo(D_80045508)($t6)
/* 740CC 800B98CC 000478C0 */  sll        $t7, $a0, 3
/* 740D0 800B98D0 AFBF002C */  sw         $ra, 0x2C($sp)
/* 740D4 800B98D4 AFB20028 */  sw         $s2, 0x28($sp)
/* 740D8 800B98D8 AFB10024 */  sw         $s1, 0x24($sp)
/* 740DC 800B98DC AFB00020 */  sw         $s0, 0x20($sp)
/* 740E0 800B98E0 01CF1021 */  addu       $v0, $t6, $t7
/* 740E4 800B98E4 8C510008 */  lw         $s1, 0x8($v0)
/* 740E8 800B98E8 2401FFF0 */  addiu      $at, $zero, -0x10
/* 740EC 800B98EC 8C590004 */  lw         $t9, 0x4($v0)
/* 740F0 800B98F0 2631001E */  addiu      $s1, $s1, 0x1E
/* 740F4 800B98F4 00809025 */  or         $s2, $a0, $zero
/* 740F8 800B98F8 0221C024 */  and        $t8, $s1, $at
/* 740FC 800B98FC 00C08025 */  or         $s0, $a2, $zero
/* 74100 800B9900 00A03825 */  or         $a3, $a1, $zero
/* 74104 800B9904 2711FFF0 */  addiu      $s1, $t8, -0x10
/* 74108 800B9908 3C048004 */  lui        $a0, %hi(D_8003E7A0)
/* 7410C 800B990C 2484E7A0 */  addiu      $a0, $a0, %lo(D_8003E7A0)
/* 74110 800B9910 02203025 */  or         $a2, $s1, $zero
/* 74114 800B9914 24050001 */  addiu      $a1, $zero, 0x1
/* 74118 800B9918 AFB20010 */  sw         $s2, 0x10($sp)
/* 7411C 800B991C 0C02DEC5 */  jal        func_800B7B14
/* 74120 800B9920 AFB90040 */   sw        $t9, 0x40($sp)
/* 74124 800B9924 14400003 */  bnez       $v0, .L800B9934
/* 74128 800B9928 00404025 */   or        $t0, $v0, $zero
/* 7412C 800B992C 10000037 */  b          .L800B9A0C
/* 74130 800B9930 00001025 */   or        $v0, $zero, $zero
.L800B9934:
/* 74134 800B9934 8FA40040 */  lw         $a0, 0x40($sp)
/* 74138 800B9938 27A50050 */  addiu      $a1, $sp, 0x50
/* 7413C 800B993C 24060010 */  addiu      $a2, $zero, 0x10
/* 74140 800B9940 0C02E32C */  jal        func_800B8CB0
/* 74144 800B9944 AFA80044 */   sw        $t0, 0x44($sp)
/* 74148 800B9948 8FA80044 */  lw         $t0, 0x44($sp)
/* 7414C 800B994C 8FA40050 */  lw         $a0, 0x50($sp)
/* 74150 800B9950 8FA50054 */  lw         $a1, 0x54($sp)
/* 74154 800B9954 3C038004 */  lui        $v1, %hi(D_80045518)
/* 74158 800B9958 24635518 */  addiu      $v1, $v1, %lo(D_80045518)
/* 7415C 800B995C A2120006 */  sb         $s2, 0x6($s0)
/* 74160 800B9960 8C690000 */  lw         $t1, 0x0($v1)
/* 74164 800B9964 00121080 */  sll        $v0, $s2, 2
/* 74168 800B9968 00521023 */  subu       $v0, $v0, $s2
/* 7416C 800B996C 00021080 */  sll        $v0, $v0, 2
/* 74170 800B9970 01225021 */  addu       $t2, $t1, $v0
/* 74174 800B9974 A1440001 */  sb         $a0, 0x1($t2)
/* 74178 800B9978 8C6B0000 */  lw         $t3, 0x0($v1)
/* 7417C 800B997C 250D0004 */  addiu      $t5, $t0, 0x4
/* 74180 800B9980 24060001 */  addiu      $a2, $zero, 0x1
/* 74184 800B9984 01626021 */  addu       $t4, $t3, $v0
/* 74188 800B9988 A1850002 */  sb         $a1, 0x2($t4)
/* 7418C 800B998C 8C6E0000 */  lw         $t6, 0x0($v1)
/* 74190 800B9990 2605011C */  addiu      $a1, $s0, 0x11C
/* 74194 800B9994 01C27821 */  addu       $t7, $t6, $v0
/* 74198 800B9998 ADED0004 */  sw         $t5, 0x4($t7)
/* 7419C 800B999C 8C790000 */  lw         $t9, 0x0($v1)
/* 741A0 800B99A0 8D180000 */  lw         $t8, 0x0($t0)
/* 741A4 800B99A4 03224821 */  addu       $t1, $t9, $v0
/* 741A8 800B99A8 AD380008 */  sw         $t8, 0x8($t1)
/* 741AC 800B99AC AE080134 */  sw         $t0, 0x134($s0)
/* 741B0 800B99B0 8FAA0040 */  lw         $t2, 0x40($sp)
/* 741B4 800B99B4 AE11013C */  sw         $s1, 0x13C($s0)
/* 741B8 800B99B8 26110104 */  addiu      $s1, $s0, 0x104
/* 741BC 800B99BC 254B0010 */  addiu      $t3, $t2, 0x10
/* 741C0 800B99C0 AE0B0138 */  sw         $t3, 0x138($s0)
/* 741C4 800B99C4 02202025 */  or         $a0, $s1, $zero
/* 741C8 800B99C8 0C0318C4 */  jal        func_800C6310
/* 741CC 800B99CC AFA80044 */   sw        $t0, 0x44($sp)
/* 741D0 800B99D0 920E0000 */  lbu        $t6, 0x0($s0)
/* 741D4 800B99D4 260F0120 */  addiu      $t7, $s0, 0x120
/* 741D8 800B99D8 26040138 */  addiu      $a0, $s0, 0x138
/* 741DC 800B99DC 35CD0008 */  ori        $t5, $t6, 0x8
/* 741E0 800B99E0 A20D0000 */  sb         $t5, 0x0($s0)
/* 741E4 800B99E4 AFAF0010 */  sw         $t7, 0x10($sp)
/* 741E8 800B99E8 26050134 */  addiu      $a1, $s0, 0x134
/* 741EC 800B99EC 2606013C */  addiu      $a2, $s0, 0x13C
/* 741F0 800B99F0 0C02E362 */  jal        func_800B8D88
/* 741F4 800B99F4 02203825 */   or        $a3, $s1, $zero
/* 741F8 800B99F8 3C018004 */  lui        $at, %hi(D_8003EB78)
/* 741FC 800B99FC 00320821 */  addu       $at, $at, $s2
/* 74200 800B9A00 24190001 */  addiu      $t9, $zero, 0x1
/* 74204 800B9A04 8FA20044 */  lw         $v0, 0x44($sp)
/* 74208 800B9A08 A039EB78 */  sb         $t9, %lo(D_8003EB78)($at)
.L800B9A0C:
/* 7420C 800B9A0C 8FBF002C */  lw         $ra, 0x2C($sp)
/* 74210 800B9A10 8FB00020 */  lw         $s0, 0x20($sp)
/* 74214 800B9A14 8FB10024 */  lw         $s1, 0x24($sp)
/* 74218 800B9A18 8FB20028 */  lw         $s2, 0x28($sp)
/* 7421C 800B9A1C 03E00008 */  jr         $ra
/* 74220 800B9A20 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_800B9A24
/* 74224 800B9A24 3C0E8004 */  lui        $t6, %hi(D_80045504)
/* 74228 800B9A28 8DCE5504 */  lw         $t6, %lo(D_80045504)($t6)
/* 7422C 800B9A2C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 74230 800B9A30 0004C0C0 */  sll        $t8, $a0, 3
/* 74234 800B9A34 AFBF001C */  sw         $ra, 0x1C($sp)
/* 74238 800B9A38 AFA40030 */  sw         $a0, 0x30($sp)
/* 7423C 800B9A3C 01D81021 */  addu       $v0, $t6, $t8
/* 74240 800B9A40 8C460008 */  lw         $a2, 0x8($v0)
/* 74244 800B9A44 8C480004 */  lw         $t0, 0x4($v0)
/* 74248 800B9A48 00807825 */  or         $t7, $a0, $zero
/* 7424C 800B9A4C 2401FFF0 */  addiu      $at, $zero, -0x10
/* 74250 800B9A50 24C6001E */  addiu      $a2, $a2, 0x1E
/* 74254 800B9A54 00A03825 */  or         $a3, $a1, $zero
/* 74258 800B9A58 00C1C824 */  and        $t9, $a2, $at
/* 7425C 800B9A5C 3C048004 */  lui        $a0, %hi(D_8003E5D0)
/* 74260 800B9A60 03203025 */  or         $a2, $t9, $zero
/* 74264 800B9A64 2484E5D0 */  addiu      $a0, $a0, %lo(D_8003E5D0)
/* 74268 800B9A68 AFB9002C */  sw         $t9, 0x2C($sp)
/* 7426C 800B9A6C 24050001 */  addiu      $a1, $zero, 0x1
/* 74270 800B9A70 AFAF0010 */  sw         $t7, 0x10($sp)
/* 74274 800B9A74 0C02DEC5 */  jal        func_800B7B14
/* 74278 800B9A78 AFA80024 */   sw        $t0, 0x24($sp)
/* 7427C 800B9A7C 8FA6002C */  lw         $a2, 0x2C($sp)
/* 74280 800B9A80 14400003 */  bnez       $v0, .L800B9A90
/* 74284 800B9A84 00402825 */   or        $a1, $v0, $zero
/* 74288 800B9A88 1000000A */  b          .L800B9AB4
/* 7428C 800B9A8C 00001025 */   or        $v0, $zero, $zero
.L800B9A90:
/* 74290 800B9A90 8FA40024 */  lw         $a0, 0x24($sp)
/* 74294 800B9A94 0C02E32C */  jal        func_800B8CB0
/* 74298 800B9A98 AFA50028 */   sw        $a1, 0x28($sp)
/* 7429C 800B9A9C 8FAA0030 */  lw         $t2, 0x30($sp)
/* 742A0 800B9AA0 3C018004 */  lui        $at, %hi(D_8003EBB8)
/* 742A4 800B9AA4 24090002 */  addiu      $t1, $zero, 0x2
/* 742A8 800B9AA8 002A0821 */  addu       $at, $at, $t2
/* 742AC 800B9AAC 8FA20028 */  lw         $v0, 0x28($sp)
/* 742B0 800B9AB0 A029EBB8 */  sb         $t1, %lo(D_8003EBB8)($at)
.L800B9AB4:
/* 742B4 800B9AB4 8FBF001C */  lw         $ra, 0x1C($sp)
/* 742B8 800B9AB8 27BD0030 */  addiu      $sp, $sp, 0x30
/* 742BC 800B9ABC 03E00008 */  jr         $ra
/* 742C0 800B9AC0 00000000 */   nop

glabel func_800B9AC4
/* 742C4 800B9AC4 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 742C8 800B9AC8 3C0E8004 */  lui        $t6, %hi(D_80045504)
/* 742CC 800B9ACC 8DCE5504 */  lw         $t6, %lo(D_80045504)($t6)
/* 742D0 800B9AD0 000478C0 */  sll        $t7, $a0, 3
/* 742D4 800B9AD4 AFBF002C */  sw         $ra, 0x2C($sp)
/* 742D8 800B9AD8 AFB20028 */  sw         $s2, 0x28($sp)
/* 742DC 800B9ADC AFB10024 */  sw         $s1, 0x24($sp)
/* 742E0 800B9AE0 AFB00020 */  sw         $s0, 0x20($sp)
/* 742E4 800B9AE4 01CF1021 */  addu       $v0, $t6, $t7
/* 742E8 800B9AE8 8C500008 */  lw         $s0, 0x8($v0)
/* 742EC 800B9AEC 8C590004 */  lw         $t9, 0x4($v0)
/* 742F0 800B9AF0 00C08825 */  or         $s1, $a2, $zero
/* 742F4 800B9AF4 00809025 */  or         $s2, $a0, $zero
/* 742F8 800B9AF8 2401FFF0 */  addiu      $at, $zero, -0x10
/* 742FC 800B9AFC 2610001E */  addiu      $s0, $s0, 0x1E
/* 74300 800B9B00 00A03825 */  or         $a3, $a1, $zero
/* 74304 800B9B04 02013024 */  and        $a2, $s0, $at
/* 74308 800B9B08 3C048004 */  lui        $a0, %hi(D_8003E5D0)
/* 7430C 800B9B0C 00C08025 */  or         $s0, $a2, $zero
/* 74310 800B9B10 2484E5D0 */  addiu      $a0, $a0, %lo(D_8003E5D0)
/* 74314 800B9B14 24050001 */  addiu      $a1, $zero, 0x1
/* 74318 800B9B18 AFB20010 */  sw         $s2, 0x10($sp)
/* 7431C 800B9B1C AFB20048 */  sw         $s2, 0x48($sp)
/* 74320 800B9B20 0C02DEC5 */  jal        func_800B7B14
/* 74324 800B9B24 AFB9003C */   sw        $t9, 0x3C($sp)
/* 74328 800B9B28 14400003 */  bnez       $v0, .L800B9B38
/* 7432C 800B9B2C 00409025 */   or        $s2, $v0, $zero
/* 74330 800B9B30 10000028 */  b          .L800B9BD4
/* 74334 800B9B34 00001025 */   or        $v0, $zero, $zero
.L800B9B38:
/* 74338 800B9B38 2A010041 */  slti       $at, $s0, 0x41
/* 7433C 800B9B3C 1020000B */  beqz       $at, .L800B9B6C
/* 74340 800B9B40 8FA4003C */   lw        $a0, 0x3C($sp)
/* 74344 800B9B44 8FA4003C */  lw         $a0, 0x3C($sp)
/* 74348 800B9B48 02402825 */  or         $a1, $s2, $zero
/* 7434C 800B9B4C 0C02E32C */  jal        func_800B8CB0
/* 74350 800B9B50 02003025 */   or        $a2, $s0, $zero
/* 74354 800B9B54 8FA90048 */  lw         $t1, 0x48($sp)
/* 74358 800B9B58 3C018004 */  lui        $at, %hi(D_8003EBB8)
/* 7435C 800B9B5C 24080002 */  addiu      $t0, $zero, 0x2
/* 74360 800B9B60 00290821 */  addu       $at, $at, $t1
/* 74364 800B9B64 1000001A */  b          .L800B9BD0
/* 74368 800B9B68 A028EBB8 */   sb        $t0, %lo(D_8003EBB8)($at)
.L800B9B6C:
/* 7436C 800B9B6C 02402825 */  or         $a1, $s2, $zero
/* 74370 800B9B70 0C02E32C */  jal        func_800B8CB0
/* 74374 800B9B74 24060040 */   addiu     $a2, $zero, 0x40
/* 74378 800B9B78 262700D4 */  addiu      $a3, $s1, 0xD4
/* 7437C 800B9B7C 00E02025 */  or         $a0, $a3, $zero
/* 74380 800B9B80 AFA70034 */  sw         $a3, 0x34($sp)
/* 74384 800B9B84 262500EC */  addiu      $a1, $s1, 0xEC
/* 74388 800B9B88 0C0318C4 */  jal        func_800C6310
/* 7438C 800B9B8C 24060001 */   addiu     $a2, $zero, 0x1
/* 74390 800B9B90 922B0000 */  lbu        $t3, 0x0($s1)
/* 74394 800B9B94 8FA70034 */  lw         $a3, 0x34($sp)
/* 74398 800B9B98 262D00F0 */  addiu      $t5, $s1, 0xF0
/* 7439C 800B9B9C 356C0010 */  ori        $t4, $t3, 0x10
/* 743A0 800B9BA0 A22C0000 */  sb         $t4, 0x0($s1)
/* 743A4 800B9BA4 8FA4003C */  lw         $a0, 0x3C($sp)
/* 743A8 800B9BA8 AFAD0010 */  sw         $t5, 0x10($sp)
/* 743AC 800B9BAC 26450040 */  addiu      $a1, $s2, 0x40
/* 743B0 800B9BB0 2606FFC0 */  addiu      $a2, $s0, -0x40
/* 743B4 800B9BB4 0C02E34A */  jal        func_800B8D28
/* 743B8 800B9BB8 24840040 */   addiu     $a0, $a0, 0x40
/* 743BC 800B9BBC 8FAF0048 */  lw         $t7, 0x48($sp)
/* 743C0 800B9BC0 3C018004 */  lui        $at, %hi(D_8003EBB8)
/* 743C4 800B9BC4 240E0001 */  addiu      $t6, $zero, 0x1
/* 743C8 800B9BC8 002F0821 */  addu       $at, $at, $t7
/* 743CC 800B9BCC A02EEBB8 */  sb         $t6, %lo(D_8003EBB8)($at)
.L800B9BD0:
/* 743D0 800B9BD0 02401025 */  or         $v0, $s2, $zero
.L800B9BD4:
/* 743D4 800B9BD4 8FBF002C */  lw         $ra, 0x2C($sp)
/* 743D8 800B9BD8 8FB00020 */  lw         $s0, 0x20($sp)
/* 743DC 800B9BDC 8FB10024 */  lw         $s1, 0x24($sp)
/* 743E0 800B9BE0 8FB20028 */  lw         $s2, 0x28($sp)
/* 743E4 800B9BE4 03E00008 */  jr         $ra
/* 743E8 800B9BE8 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_800B9BEC
/* 743EC 800B9BEC 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 743F0 800B9BF0 AFBF003C */  sw         $ra, 0x3C($sp)
/* 743F4 800B9BF4 AFBE0038 */  sw         $fp, 0x38($sp)
/* 743F8 800B9BF8 AFB70034 */  sw         $s7, 0x34($sp)
/* 743FC 800B9BFC AFB60030 */  sw         $s6, 0x30($sp)
/* 74400 800B9C00 AFB5002C */  sw         $s5, 0x2C($sp)
/* 74404 800B9C04 AFB40028 */  sw         $s4, 0x28($sp)
/* 74408 800B9C08 AFB30024 */  sw         $s3, 0x24($sp)
/* 7440C 800B9C0C AFB20020 */  sw         $s2, 0x20($sp)
/* 74410 800B9C10 AFB1001C */  sw         $s1, 0x1C($sp)
/* 74414 800B9C14 AFB00018 */  sw         $s0, 0x18($sp)
/* 74418 800B9C18 ACC00000 */  sw         $zero, 0x0($a2)
/* 7441C 800B9C1C ACA00000 */  sw         $zero, 0x0($a1)
/* 74420 800B9C20 3C028004 */  lui        $v0, %hi(D_80045510)
/* 74424 800B9C24 8C425510 */  lw         $v0, %lo(D_80045510)($v0)
/* 74428 800B9C28 00047040 */  sll        $t6, $a0, 1
/* 7442C 800B9C2C 00C09825 */  or         $s3, $a2, $zero
/* 74430 800B9C30 004E7821 */  addu       $t7, $v0, $t6
/* 74434 800B9C34 95F10000 */  lhu        $s1, 0x0($t7)
/* 74438 800B9C38 00A0A025 */  or         $s4, $a1, $zero
/* 7443C 800B9C3C 0000F025 */  or         $fp, $zero, $zero
/* 74440 800B9C40 0222C021 */  addu       $t8, $s1, $v0
/* 74444 800B9C44 93120000 */  lbu        $s2, 0x0($t8)
/* 74448 800B9C48 26310001 */  addiu      $s1, $s1, 0x1
/* 7444C 800B9C4C 3239FFFF */  andi       $t9, $s1, 0xFFFF
/* 74450 800B9C50 12400027 */  beqz       $s2, .L800B9CF0
/* 74454 800B9C54 03208825 */   or        $s1, $t9, $zero
/* 74458 800B9C58 3C178004 */  lui        $s7, %hi(D_8003E7A0)
/* 7445C 800B9C5C 3C168004 */  lui        $s6, %hi(D_8003EB78)
/* 74460 800B9C60 26D6EB78 */  addiu      $s6, $s6, %lo(D_8003EB78)
/* 74464 800B9C64 26F7E7A0 */  addiu      $s7, $s7, %lo(D_8003E7A0)
/* 74468 800B9C68 24150001 */  addiu      $s5, $zero, 0x1
.L800B9C6C:
/* 7446C 800B9C6C 3C088004 */  lui        $t0, %hi(D_80045510)
/* 74470 800B9C70 8D085510 */  lw         $t0, %lo(D_80045510)($t0)
/* 74474 800B9C74 02E02025 */  or         $a0, $s7, $zero
/* 74478 800B9C78 24050002 */  addiu      $a1, $zero, 0x2
/* 7447C 800B9C7C 02284821 */  addu       $t1, $s1, $t0
/* 74480 800B9C80 91300000 */  lbu        $s0, 0x0($t1)
/* 74484 800B9C84 26310001 */  addiu      $s1, $s1, 0x1
/* 74488 800B9C88 322AFFFF */  andi       $t2, $s1, 0xFFFF
/* 7448C 800B9C8C 02D05821 */  addu       $t3, $s6, $s0
/* 74490 800B9C90 916C0000 */  lbu        $t4, 0x0($t3)
/* 74494 800B9C94 01408825 */  or         $s1, $t2, $zero
/* 74498 800B9C98 00001825 */  or         $v1, $zero, $zero
/* 7449C 800B9C9C 298D0002 */  slti       $t5, $t4, 0x2
/* 744A0 800B9CA0 39AD0001 */  xori       $t5, $t5, 0x1
/* 744A4 800B9CA4 16AD0005 */  bne        $s5, $t5, .L800B9CBC
/* 744A8 800B9CA8 00000000 */   nop
/* 744AC 800B9CAC 0C02E047 */  jal        func_800B811C
/* 744B0 800B9CB0 02003025 */   or        $a2, $s0, $zero
/* 744B4 800B9CB4 10000001 */  b          .L800B9CBC
/* 744B8 800B9CB8 00401825 */   or        $v1, $v0, $zero
.L800B9CBC:
/* 744BC 800B9CBC 14600006 */  bnez       $v1, .L800B9CD8
/* 744C0 800B9CC0 2652FFFF */   addiu     $s2, $s2, -0x1
/* 744C4 800B9CC4 8E6E0000 */  lw         $t6, 0x0($s3)
/* 744C8 800B9CC8 321E00FF */  andi       $fp, $s0, 0xFF
/* 744CC 800B9CCC 25CF0001 */  addiu      $t7, $t6, 0x1
/* 744D0 800B9CD0 10000004 */  b          .L800B9CE4
/* 744D4 800B9CD4 AE6F0000 */   sw        $t7, 0x0($s3)
.L800B9CD8:
/* 744D8 800B9CD8 8E980000 */  lw         $t8, 0x0($s4)
/* 744DC 800B9CDC 27190001 */  addiu      $t9, $t8, 0x1
/* 744E0 800B9CE0 AE990000 */  sw         $t9, 0x0($s4)
.L800B9CE4:
/* 744E4 800B9CE4 324800FF */  andi       $t0, $s2, 0xFF
/* 744E8 800B9CE8 1500FFE0 */  bnez       $t0, .L800B9C6C
/* 744EC 800B9CEC 01009025 */   or        $s2, $t0, $zero
.L800B9CF0:
/* 744F0 800B9CF0 8FBF003C */  lw         $ra, 0x3C($sp)
/* 744F4 800B9CF4 03C01025 */  or         $v0, $fp, $zero
/* 744F8 800B9CF8 8FBE0038 */  lw         $fp, 0x38($sp)
/* 744FC 800B9CFC 8FB00018 */  lw         $s0, 0x18($sp)
/* 74500 800B9D00 8FB1001C */  lw         $s1, 0x1C($sp)
/* 74504 800B9D04 8FB20020 */  lw         $s2, 0x20($sp)
/* 74508 800B9D08 8FB30024 */  lw         $s3, 0x24($sp)
/* 7450C 800B9D0C 8FB40028 */  lw         $s4, 0x28($sp)
/* 74510 800B9D10 8FB5002C */  lw         $s5, 0x2C($sp)
/* 74514 800B9D14 8FB60030 */  lw         $s6, 0x30($sp)
/* 74518 800B9D18 8FB70034 */  lw         $s7, 0x34($sp)
/* 7451C 800B9D1C 03E00008 */  jr         $ra
/* 74520 800B9D20 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_800B9D24
/* 74524 800B9D24 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 74528 800B9D28 AFB60030 */  sw         $s6, 0x30($sp)
/* 7452C 800B9D2C 3C168004 */  lui        $s6, %hi(D_80045510)
/* 74530 800B9D30 26D65510 */  addiu      $s6, $s6, %lo(D_80045510)
/* 74534 800B9D34 8EC20000 */  lw         $v0, 0x0($s6)
/* 74538 800B9D38 00047040 */  sll        $t6, $a0, 1
/* 7453C 800B9D3C AFBF0034 */  sw         $ra, 0x34($sp)
/* 74540 800B9D40 AFB5002C */  sw         $s5, 0x2C($sp)
/* 74544 800B9D44 AFB40028 */  sw         $s4, 0x28($sp)
/* 74548 800B9D48 AFB30024 */  sw         $s3, 0x24($sp)
/* 7454C 800B9D4C AFB20020 */  sw         $s2, 0x20($sp)
/* 74550 800B9D50 AFB1001C */  sw         $s1, 0x1C($sp)
/* 74554 800B9D54 AFB00018 */  sw         $s0, 0x18($sp)
/* 74558 800B9D58 AFA50044 */  sw         $a1, 0x44($sp)
/* 7455C 800B9D5C 004E7821 */  addu       $t7, $v0, $t6
/* 74560 800B9D60 95F10000 */  lhu        $s1, 0x0($t7)
/* 74564 800B9D64 3C158004 */  lui        $s5, %hi(D_8003E7A0)
/* 74568 800B9D68 26B5E7A0 */  addiu      $s5, $s5, %lo(D_8003E7A0)
/* 7456C 800B9D6C 0222C021 */  addu       $t8, $s1, $v0
/* 74570 800B9D70 93120000 */  lbu        $s2, 0x0($t8)
/* 74574 800B9D74 26310001 */  addiu      $s1, $s1, 0x1
/* 74578 800B9D78 3239FFFF */  andi       $t9, $s1, 0xFFFF
/* 7457C 800B9D7C 12400022 */  beqz       $s2, .L800B9E08
/* 74580 800B9D80 03208825 */   or        $s1, $t9, $zero
/* 74584 800B9D84 3C148004 */  lui        $s4, %hi(D_8003EB78)
/* 74588 800B9D88 2694EB78 */  addiu      $s4, $s4, %lo(D_8003EB78)
/* 7458C 800B9D8C 24130001 */  addiu      $s3, $zero, 0x1
.L800B9D90:
/* 74590 800B9D90 8EC80000 */  lw         $t0, 0x0($s6)
/* 74594 800B9D94 02A02025 */  or         $a0, $s5, $zero
/* 74598 800B9D98 24050002 */  addiu      $a1, $zero, 0x2
/* 7459C 800B9D9C 02284821 */  addu       $t1, $s1, $t0
/* 745A0 800B9DA0 91300000 */  lbu        $s0, 0x0($t1)
/* 745A4 800B9DA4 26310001 */  addiu      $s1, $s1, 0x1
/* 745A8 800B9DA8 322AFFFF */  andi       $t2, $s1, 0xFFFF
/* 745AC 800B9DAC 02905821 */  addu       $t3, $s4, $s0
/* 745B0 800B9DB0 916C0000 */  lbu        $t4, 0x0($t3)
/* 745B4 800B9DB4 01408825 */  or         $s1, $t2, $zero
/* 745B8 800B9DB8 00001825 */  or         $v1, $zero, $zero
/* 745BC 800B9DBC 298D0002 */  slti       $t5, $t4, 0x2
/* 745C0 800B9DC0 39AD0001 */  xori       $t5, $t5, 0x1
/* 745C4 800B9DC4 166D0005 */  bne        $s3, $t5, .L800B9DDC
/* 745C8 800B9DC8 00000000 */   nop
/* 745CC 800B9DCC 0C02E047 */  jal        func_800B811C
/* 745D0 800B9DD0 02003025 */   or        $a2, $s0, $zero
/* 745D4 800B9DD4 10000001 */  b          .L800B9DDC
/* 745D8 800B9DD8 00401825 */   or        $v1, $v0, $zero
.L800B9DDC:
/* 745DC 800B9DDC 14600004 */  bnez       $v1, .L800B9DF0
/* 745E0 800B9DE0 02002025 */   or        $a0, $s0, $zero
/* 745E4 800B9DE4 0C02E5DD */  jal        func_800B9774
/* 745E8 800B9DE8 24050002 */   addiu     $a1, $zero, 0x2
/* 745EC 800B9DEC 00401825 */  or         $v1, $v0, $zero
.L800B9DF0:
/* 745F0 800B9DF0 2652FFFF */  addiu      $s2, $s2, -0x1
/* 745F4 800B9DF4 324E00FF */  andi       $t6, $s2, 0xFF
/* 745F8 800B9DF8 15C0FFE5 */  bnez       $t6, .L800B9D90
/* 745FC 800B9DFC 01C09025 */   or        $s2, $t6, $zero
/* 74600 800B9E00 AFA3003C */  sw         $v1, 0x3C($sp)
/* 74604 800B9E04 AFB00038 */  sw         $s0, 0x38($sp)
.L800B9E08:
/* 74608 800B9E08 8FB00038 */  lw         $s0, 0x38($sp)
/* 7460C 800B9E0C 8FAF0044 */  lw         $t7, 0x44($sp)
/* 74610 800B9E10 8FA2003C */  lw         $v0, 0x3C($sp)
/* 74614 800B9E14 A1F00000 */  sb         $s0, 0x0($t7)
/* 74618 800B9E18 8FBF0034 */  lw         $ra, 0x34($sp)
/* 7461C 800B9E1C 8FB60030 */  lw         $s6, 0x30($sp)
/* 74620 800B9E20 8FB5002C */  lw         $s5, 0x2C($sp)
/* 74624 800B9E24 8FB40028 */  lw         $s4, 0x28($sp)
/* 74628 800B9E28 8FB30024 */  lw         $s3, 0x24($sp)
/* 7462C 800B9E2C 8FB20020 */  lw         $s2, 0x20($sp)
/* 74630 800B9E30 8FB1001C */  lw         $s1, 0x1C($sp)
/* 74634 800B9E34 8FB00018 */  lw         $s0, 0x18($sp)
/* 74638 800B9E38 03E00008 */  jr         $ra
/* 7463C 800B9E3C 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_800B9E40
/* 74640 800B9E40 3C0F8004 */  lui        $t7, %hi(D_80045514)
/* 74644 800B9E44 95EF5514 */  lhu        $t7, %lo(D_80045514)($t7)
/* 74648 800B9E48 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7464C 800B9E4C AFA5002C */  sw         $a1, 0x2C($sp)
/* 74650 800B9E50 30AE00FF */  andi       $t6, $a1, 0xFF
/* 74654 800B9E54 008F082B */  sltu       $at, $a0, $t7
/* 74658 800B9E58 01C02825 */  or         $a1, $t6, $zero
/* 7465C 800B9E5C AFBF0014 */  sw         $ra, 0x14($sp)
/* 74660 800B9E60 10200032 */  beqz       $at, .L800B9F2C
/* 74664 800B9E64 00803025 */   or        $a2, $a0, $zero
/* 74668 800B9E68 3C181971 */  lui        $t8, (0x19710515 >> 16)
/* 7466C 800B9E6C 3C19800F */  lui        $t9, %hi(D_800EE300)
/* 74670 800B9E70 2739E300 */  addiu      $t9, $t9, %lo(D_800EE300)
/* 74674 800B9E74 37180515 */  ori        $t8, $t8, (0x19710515 & 0xFFFF)
/* 74678 800B9E78 30A80002 */  andi       $t0, $a1, 0x2
/* 7467C 800B9E7C AF380000 */  sw         $t8, 0x0($t9)
/* 74680 800B9E80 11000008 */  beqz       $t0, .L800B9EA4
/* 74684 800B9E84 00A01825 */   or        $v1, $a1, $zero
/* 74688 800B9E88 00C02025 */  or         $a0, $a2, $zero
/* 7468C 800B9E8C 27A50023 */  addiu      $a1, $sp, 0x23
/* 74690 800B9E90 AFA3001C */  sw         $v1, 0x1C($sp)
/* 74694 800B9E94 0C02E749 */  jal        func_800B9D24
/* 74698 800B9E98 AFA60028 */   sw        $a2, 0x28($sp)
/* 7469C 800B9E9C 8FA3001C */  lw         $v1, 0x1C($sp)
/* 746A0 800B9EA0 8FA60028 */  lw         $a2, 0x28($sp)
.L800B9EA4:
/* 746A4 800B9EA4 30690001 */  andi       $t1, $v1, 0x1
/* 746A8 800B9EA8 1120001B */  beqz       $t1, .L800B9F18
/* 746AC 800B9EAC 3C0A8004 */   lui       $t2, %hi(D_8003EB78)
/* 746B0 800B9EB0 01465021 */  addu       $t2, $t2, $a2
/* 746B4 800B9EB4 914AEB78 */  lbu        $t2, %lo(D_8003EB78)($t2)
/* 746B8 800B9EB8 24010001 */  addiu      $at, $zero, 0x1
/* 746BC 800B9EBC 3C048004 */  lui        $a0, %hi(D_8003E5D0)
/* 746C0 800B9EC0 294B0002 */  slti       $t3, $t2, 0x2
/* 746C4 800B9EC4 396B0001 */  xori       $t3, $t3, 0x1
/* 746C8 800B9EC8 15610008 */  bne        $t3, $at, .L800B9EEC
/* 746CC 800B9ECC 00001825 */   or        $v1, $zero, $zero
/* 746D0 800B9ED0 2484E5D0 */  addiu      $a0, $a0, %lo(D_8003E5D0)
/* 746D4 800B9ED4 24050002 */  addiu      $a1, $zero, 0x2
/* 746D8 800B9ED8 0C02E047 */  jal        func_800B811C
/* 746DC 800B9EDC AFA60028 */   sw        $a2, 0x28($sp)
/* 746E0 800B9EE0 8FA60028 */  lw         $a2, 0x28($sp)
/* 746E4 800B9EE4 10000001 */  b          .L800B9EEC
/* 746E8 800B9EE8 00401825 */   or        $v1, $v0, $zero
.L800B9EEC:
/* 746EC 800B9EEC 1460000A */  bnez       $v1, .L800B9F18
/* 746F0 800B9EF0 00C02025 */   or        $a0, $a2, $zero
/* 746F4 800B9EF4 0C02E689 */  jal        func_800B9A24
/* 746F8 800B9EF8 24050002 */   addiu     $a1, $zero, 0x2
/* 746FC 800B9EFC 14400006 */  bnez       $v0, .L800B9F18
/* 74700 800B9F00 3C0C7655 */   lui       $t4, (0x76557364 >> 16)
/* 74704 800B9F04 3C0D800F */  lui        $t5, %hi(D_800EE300)
/* 74708 800B9F08 25ADE300 */  addiu      $t5, $t5, %lo(D_800EE300)
/* 7470C 800B9F0C 358C7364 */  ori        $t4, $t4, (0x76557364 & 0xFFFF)
/* 74710 800B9F10 10000006 */  b          .L800B9F2C
/* 74714 800B9F14 ADAC0000 */   sw        $t4, 0x0($t5)
.L800B9F18:
/* 74718 800B9F18 3C0E7655 */  lui        $t6, (0x76557364 >> 16)
/* 7471C 800B9F1C 3C0F800F */  lui        $t7, %hi(D_800EE300)
/* 74720 800B9F20 25EFE300 */  addiu      $t7, $t7, %lo(D_800EE300)
/* 74724 800B9F24 35CE7364 */  ori        $t6, $t6, (0x76557364 & 0xFFFF)
/* 74728 800B9F28 ADEE0000 */  sw         $t6, 0x0($t7)
.L800B9F2C:
/* 7472C 800B9F2C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 74730 800B9F30 27BD0028 */  addiu      $sp, $sp, 0x28
/* 74734 800B9F34 03E00008 */  jr         $ra
/* 74738 800B9F38 00000000 */   nop

glabel func_800B9F3C
/* 7473C 800B9F3C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 74740 800B9F40 14C00006 */  bnez       $a2, .L800B9F5C
/* 74744 800B9F44 AFBF0014 */   sw        $ra, 0x14($sp)
/* 74748 800B9F48 3C0E1971 */  lui        $t6, (0x19710515 >> 16)
/* 7474C 800B9F4C 3C0F800F */  lui        $t7, %hi(D_800EE300)
/* 74750 800B9F50 25EFE300 */  addiu      $t7, $t7, %lo(D_800EE300)
/* 74754 800B9F54 35CE0515 */  ori        $t6, $t6, (0x19710515 & 0xFFFF)
/* 74758 800B9F58 ADEE0000 */  sw         $t6, 0x0($t7)
.L800B9F5C:
/* 7475C 800B9F5C 0C02E7E4 */  jal        func_800B9F90
/* 74760 800B9F60 AFA60020 */   sw        $a2, 0x20($sp)
/* 74764 800B9F64 8FA60020 */  lw         $a2, 0x20($sp)
/* 74768 800B9F68 3C187655 */  lui        $t8, (0x76557364 >> 16)
/* 7476C 800B9F6C 37187364 */  ori        $t8, $t8, (0x76557364 & 0xFFFF)
/* 74770 800B9F70 14C00003 */  bnez       $a2, .L800B9F80
/* 74774 800B9F74 3C19800F */   lui       $t9, %hi(D_800EE300)
/* 74778 800B9F78 2739E300 */  addiu      $t9, $t9, %lo(D_800EE300)
/* 7477C 800B9F7C AF380000 */  sw         $t8, 0x0($t9)
.L800B9F80:
/* 74780 800B9F80 8FBF0014 */  lw         $ra, 0x14($sp)
/* 74784 800B9F84 27BD0018 */  addiu      $sp, $sp, 0x18
/* 74788 800B9F88 03E00008 */  jr         $ra
/* 7478C 800B9F8C 00000000 */   nop

glabel func_800B9F90
/* 74790 800B9F90 3C0F8004 */  lui        $t7, %hi(D_80045514)
/* 74794 800B9F94 95EF5514 */  lhu        $t7, %lo(D_80045514)($t7)
/* 74798 800B9F98 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 7479C 800B9F9C AFBF001C */  sw         $ra, 0x1C($sp)
/* 747A0 800B9FA0 00AF082B */  sltu       $at, $a1, $t7
/* 747A4 800B9FA4 AFB00018 */  sw         $s0, 0x18($sp)
/* 747A8 800B9FA8 AFA40040 */  sw         $a0, 0x40($sp)
/* 747AC 800B9FAC AFA50044 */  sw         $a1, 0x44($sp)
/* 747B0 800B9FB0 1020004E */  beqz       $at, .L800BA0EC
/* 747B4 800B9FB4 AFA60048 */   sw        $a2, 0x48($sp)
/* 747B8 800B9FB8 0004C880 */  sll        $t9, $a0, 2
/* 747BC 800B9FBC 0324C821 */  addu       $t9, $t9, $a0
/* 747C0 800B9FC0 3C088004 */  lui        $t0, %hi(D_8003FCC8)
/* 747C4 800B9FC4 2508FCC8 */  addiu      $t0, $t0, %lo(D_8003FCC8)
/* 747C8 800B9FC8 0019C980 */  sll        $t9, $t9, 6
/* 747CC 800B9FCC 03288021 */  addu       $s0, $t9, $t0
/* 747D0 800B9FD0 0C02F3B8 */  jal        func_800BCEE0
/* 747D4 800B9FD4 02002025 */   or        $a0, $s0, $zero
/* 747D8 800B9FD8 8FA90048 */  lw         $t1, 0x48($sp)
/* 747DC 800B9FDC 27A50028 */  addiu      $a1, $sp, 0x28
/* 747E0 800B9FE0 27A6002C */  addiu      $a2, $sp, 0x2C
/* 747E4 800B9FE4 11200018 */  beqz       $t1, .L800BA048
/* 747E8 800B9FE8 8FA40044 */   lw        $a0, 0x44($sp)
/* 747EC 800B9FEC AFA0002C */  sw         $zero, 0x2C($sp)
/* 747F0 800B9FF0 AFA00028 */  sw         $zero, 0x28($sp)
/* 747F4 800B9FF4 0C02E6FB */  jal        func_800B9BEC
/* 747F8 800B9FF8 8FA40044 */   lw        $a0, 0x44($sp)
/* 747FC 800B9FFC 8FAA002C */  lw         $t2, 0x2C($sp)
/* 74800 800BA000 24010001 */  addiu      $at, $zero, 0x1
/* 74804 800BA004 00402025 */  or         $a0, $v0, $zero
/* 74808 800BA008 15410009 */  bne        $t2, $at, .L800BA030
/* 7480C 800BA00C 26050005 */   addiu     $a1, $s0, 0x5
/* 74810 800BA010 24050002 */  addiu      $a1, $zero, 0x2
/* 74814 800BA014 02003025 */  or         $a2, $s0, $zero
/* 74818 800BA018 0C02E630 */  jal        func_800B98C0
/* 7481C 800BA01C AFA20024 */   sw        $v0, 0x24($sp)
/* 74820 800BA020 10400032 */  beqz       $v0, .L800BA0EC
/* 74824 800BA024 8FA40024 */   lw        $a0, 0x24($sp)
/* 74828 800BA028 1000000B */  b          .L800BA058
/* 7482C 800BA02C A2040005 */   sb        $a0, 0x5($s0)
.L800BA030:
/* 74830 800BA030 0C02E749 */  jal        func_800B9D24
/* 74834 800BA034 8FA40044 */   lw        $a0, 0x44($sp)
/* 74838 800BA038 54400008 */  bnel       $v0, $zero, .L800BA05C
/* 7483C 800BA03C 8FA60044 */   lw        $a2, 0x44($sp)
/* 74840 800BA040 1000002B */  b          .L800BA0F0
/* 74844 800BA044 8FBF001C */   lw        $ra, 0x1C($sp)
.L800BA048:
/* 74848 800BA048 0C02E749 */  jal        func_800B9D24
/* 7484C 800BA04C 26050005 */   addiu     $a1, $s0, 0x5
/* 74850 800BA050 50400027 */  beql       $v0, $zero, .L800BA0F0
/* 74854 800BA054 8FBF001C */   lw        $ra, 0x1C($sp)
.L800BA058:
/* 74858 800BA058 8FA60044 */  lw         $a2, 0x44($sp)
.L800BA05C:
/* 7485C 800BA05C 3C048004 */  lui        $a0, %hi(D_8003E5D0)
/* 74860 800BA060 2484E5D0 */  addiu      $a0, $a0, %lo(D_8003E5D0)
/* 74864 800BA064 24050002 */  addiu      $a1, $zero, 0x2
/* 74868 800BA068 0C02E047 */  jal        func_800B811C
/* 7486C 800BA06C A2060004 */   sb        $a2, 0x4($s0)
/* 74870 800BA070 14400013 */  bnez       $v0, .L800BA0C0
/* 74874 800BA074 00401825 */   or        $v1, $v0, $zero
/* 74878 800BA078 8E0B0000 */  lw         $t3, 0x0($s0)
/* 7487C 800BA07C 8FAE0048 */  lw         $t6, 0x48($sp)
/* 74880 800BA080 000B68C0 */  sll        $t5, $t3, 3
/* 74884 800BA084 05A2001A */  bltzl      $t5, .L800BA0F0
/* 74888 800BA088 8FBF001C */   lw        $ra, 0x1C($sp)
/* 7488C 800BA08C 11C00007 */  beqz       $t6, .L800BA0AC
/* 74890 800BA090 8FA40044 */   lw        $a0, 0x44($sp)
/* 74894 800BA094 8FA40044 */  lw         $a0, 0x44($sp)
/* 74898 800BA098 24050002 */  addiu      $a1, $zero, 0x2
/* 7489C 800BA09C 0C02E6B1 */  jal        func_800B9AC4
/* 748A0 800BA0A0 02003025 */   or        $a2, $s0, $zero
/* 748A4 800BA0A4 10000004 */  b          .L800BA0B8
/* 748A8 800BA0A8 00401825 */   or        $v1, $v0, $zero
.L800BA0AC:
/* 748AC 800BA0AC 0C02E689 */  jal        func_800B9A24
/* 748B0 800BA0B0 24050002 */   addiu     $a1, $zero, 0x2
/* 748B4 800BA0B4 00401825 */  or         $v1, $v0, $zero
.L800BA0B8:
/* 748B8 800BA0B8 5040000D */  beql       $v0, $zero, .L800BA0F0
/* 748BC 800BA0BC 8FBF001C */   lw        $ra, 0x1C($sp)
.L800BA0C0:
/* 748C0 800BA0C0 8FA40040 */  lw         $a0, 0x40($sp)
/* 748C4 800BA0C4 0C02FC4F */  jal        func_800BF13C
/* 748C8 800BA0C8 AFA3003C */   sw        $v1, 0x3C($sp)
/* 748CC 800BA0CC 8FA3003C */  lw         $v1, 0x3C($sp)
/* 748D0 800BA0D0 92180000 */  lbu        $t8, 0x0($s0)
/* 748D4 800BA0D4 A2000088 */  sb         $zero, 0x88($s0)
/* 748D8 800BA0D8 A600000E */  sh         $zero, 0xE($s0)
/* 748DC 800BA0DC 37190080 */  ori        $t9, $t8, 0x80
/* 748E0 800BA0E0 A2190000 */  sb         $t9, 0x0($s0)
/* 748E4 800BA0E4 AE030014 */  sw         $v1, 0x14($s0)
/* 748E8 800BA0E8 AE030070 */  sw         $v1, 0x70($s0)
.L800BA0EC:
/* 748EC 800BA0EC 8FBF001C */  lw         $ra, 0x1C($sp)
.L800BA0F0:
/* 748F0 800BA0F0 8FB00018 */  lw         $s0, 0x18($sp)
/* 748F4 800BA0F4 27BD0040 */  addiu      $sp, $sp, 0x40
/* 748F8 800BA0F8 03E00008 */  jr         $ra
/* 748FC 800BA0FC 00000000 */   nop

glabel func_800BA100
/* 74900 800BA100 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 74904 800BA104 3C0E800F */  lui        $t6, %hi(D_800EE300)
/* 74908 800BA108 AFBF001C */  sw         $ra, 0x1C($sp)
/* 7490C 800BA10C AFB10018 */  sw         $s1, 0x18($sp)
/* 74910 800BA110 AFB00014 */  sw         $s0, 0x14($sp)
/* 74914 800BA114 25CEE300 */  addiu      $t6, $t6, %lo(D_800EE300)
/* 74918 800BA118 ADC00000 */  sw         $zero, 0x0($t6)
/* 7491C 800BA11C 3C04800F */  lui        $a0, %hi(D_800EE2F8)
/* 74920 800BA120 8C84E2F8 */  lw         $a0, %lo(D_800EE2F8)($a0)
/* 74924 800BA124 00001025 */  or         $v0, $zero, $zero
/* 74928 800BA128 3C0A8004 */  lui        $t2, %hi(D_80045638)
/* 7492C 800BA12C 04810003 */  bgez       $a0, .L800BA13C
/* 74930 800BA130 000478C3 */   sra       $t7, $a0, 3
/* 74934 800BA134 24810007 */  addiu      $at, $a0, 0x7
/* 74938 800BA138 000178C3 */  sra        $t7, $at, 3
.L800BA13C:
/* 7493C 800BA13C 19E0000C */  blez       $t7, .L800BA170
/* 74940 800BA140 3C048004 */   lui       $a0, %hi(D_80038100)
/* 74944 800BA144 3C188000 */  lui        $t8, %hi(D_80001000)
/* 74948 800BA148 27021000 */  addiu      $v0, $t8, %lo(D_80001000)
/* 7494C 800BA14C 000FC8C0 */  sll        $t9, $t7, 3
/* 74950 800BA150 03221821 */  addu       $v1, $t9, $v0
.L800BA154:
/* 74954 800BA154 24420008 */  addiu      $v0, $v0, 0x8
/* 74958 800BA158 0043082B */  sltu       $at, $v0, $v1
/* 7495C 800BA15C 24080000 */  addiu      $t0, $zero, 0x0
/* 74960 800BA160 24090000 */  addiu      $t1, $zero, 0x0
/* 74964 800BA164 AC49FFFC */  sw         $t1, -0x4($v0)
/* 74968 800BA168 1420FFFA */  bnez       $at, .L800BA154
/* 7496C 800BA16C AC48FFF8 */   sw        $t0, -0x8($v0)
.L800BA170:
/* 74970 800BA170 24828100 */  addiu      $v0, $a0, %lo(D_80038100)
/* 74974 800BA174 254A5638 */  addiu      $t2, $t2, %lo(D_80045638)
/* 74978 800BA178 01421823 */  subu       $v1, $t2, $v0
/* 7497C 800BA17C 000380C2 */  srl        $s0, $v1, 3
/* 74980 800BA180 06000007 */  bltz       $s0, .L800BA1A0
.L800BA184:
/* 74984 800BA184 2610FFFF */   addiu     $s0, $s0, -0x1
/* 74988 800BA188 240C0000 */  addiu      $t4, $zero, 0x0
/* 7498C 800BA18C 240D0000 */  addiu      $t5, $zero, 0x0
/* 74990 800BA190 AC4D0004 */  sw         $t5, 0x4($v0)
/* 74994 800BA194 AC4C0000 */  sw         $t4, 0x0($v0)
/* 74998 800BA198 0601FFFA */  bgez       $s0, .L800BA184
/* 7499C 800BA19C 24420008 */   addiu     $v0, $v0, 0x8
.L800BA1A0:
/* 749A0 800BA1A0 3C028000 */  lui        $v0, %hi(D_80000300)
/* 749A4 800BA1A4 8C420300 */  lw         $v0, %lo(D_80000300)($v0)
/* 749A8 800BA1A8 10400007 */  beqz       $v0, .L800BA1C8
/* 749AC 800BA1AC 24010001 */   addiu     $at, $zero, 0x1
/* 749B0 800BA1B0 10410015 */  beq        $v0, $at, .L800BA208
/* 749B4 800BA1B4 24010002 */   addiu     $at, $zero, 0x2
/* 749B8 800BA1B8 1041000B */  beq        $v0, $at, .L800BA1E8
/* 749BC 800BA1BC 00000000 */   nop
/* 749C0 800BA1C0 10000011 */  b          .L800BA208
/* 749C4 800BA1C4 00000000 */   nop
.L800BA1C8:
/* 749C8 800BA1C8 3C01800F */  lui        $at, %hi(D_800EBC50)
/* 749CC 800BA1CC C424BC50 */  lwc1       $f4, %lo(D_800EBC50)($at)
/* 749D0 800BA1D0 3C018004 */  lui        $at, %hi(D_80045610)
/* 749D4 800BA1D4 240E0032 */  addiu      $t6, $zero, 0x32
/* 749D8 800BA1D8 E4245610 */  swc1       $f4, %lo(D_80045610)($at)
/* 749DC 800BA1DC 3C018004 */  lui        $at, %hi(D_80045614)
/* 749E0 800BA1E0 10000010 */  b          .L800BA224
/* 749E4 800BA1E4 AC2E5614 */   sw        $t6, %lo(D_80045614)($at)
.L800BA1E8:
/* 749E8 800BA1E8 3C01800F */  lui        $at, %hi(D_800EBC54)
/* 749EC 800BA1EC C426BC54 */  lwc1       $f6, %lo(D_800EBC54)($at)
/* 749F0 800BA1F0 3C018004 */  lui        $at, %hi(D_80045610)
/* 749F4 800BA1F4 240F003C */  addiu      $t7, $zero, 0x3C
/* 749F8 800BA1F8 E4265610 */  swc1       $f6, %lo(D_80045610)($at)
/* 749FC 800BA1FC 3C018004 */  lui        $at, %hi(D_80045614)
/* 74A00 800BA200 10000008 */  b          .L800BA224
/* 74A04 800BA204 AC2F5614 */   sw        $t7, %lo(D_80045614)($at)
.L800BA208:
/* 74A08 800BA208 3C01800F */  lui        $at, %hi(D_800EBC58)
/* 74A0C 800BA20C C428BC58 */  lwc1       $f8, %lo(D_800EBC58)($at)
/* 74A10 800BA210 3C018004 */  lui        $at, %hi(D_80045610)
/* 74A14 800BA214 2419003C */  addiu      $t9, $zero, 0x3C
/* 74A18 800BA218 E4285610 */  swc1       $f8, %lo(D_80045610)($at)
/* 74A1C 800BA21C 3C018004 */  lui        $at, %hi(D_80045614)
/* 74A20 800BA220 AC395614 */  sw         $t9, %lo(D_80045614)($at)
.L800BA224:
/* 74A24 800BA224 0C0315BD */  jal        func_800C56F4
/* 74A28 800BA228 00000000 */   nop
/* 74A2C 800BA22C 3C028004 */  lui        $v0, %hi(D_80045624)
/* 74A30 800BA230 3C048004 */  lui        $a0, %hi(D_8004562A)
/* 74A34 800BA234 2484562A */  addiu      $a0, $a0, %lo(D_8004562A)
/* 74A38 800BA238 24425624 */  addiu      $v0, $v0, %lo(D_80045624)
/* 74A3C 800BA23C 240300A0 */  addiu      $v1, $zero, 0xA0
.L800BA240:
/* 74A40 800BA240 24420002 */  addiu      $v0, $v0, 0x2
/* 74A44 800BA244 0044082B */  sltu       $at, $v0, $a0
/* 74A48 800BA248 1420FFFD */  bnez       $at, .L800BA240
/* 74A4C 800BA24C A443FFFE */   sh        $v1, -0x2($v0)
/* 74A50 800BA250 3C188004 */  lui        $t8, %hi(D_80045550)
/* 74A54 800BA254 27185550 */  addiu      $t8, $t8, %lo(D_80045550)
/* 74A58 800BA258 AF000000 */  sw         $zero, 0x0($t8)
/* 74A5C 800BA25C 3C018004 */  lui        $at, %hi(D_80045558)
/* 74A60 800BA260 AC205558 */  sw         $zero, %lo(D_80045558)($at)
/* 74A64 800BA264 3C018004 */  lui        $at, %hi(D_8004555C)
/* 74A68 800BA268 AC20555C */  sw         $zero, %lo(D_8004555C)($at)
/* 74A6C 800BA26C 3C018004 */  lui        $at, %hi(D_8004554E)
/* 74A70 800BA270 A020554E */  sb         $zero, %lo(D_8004554E)($at)
/* 74A74 800BA274 3C028004 */  lui        $v0, %hi(D_80045570)
/* 74A78 800BA278 3C018004 */  lui        $at, %hi(D_8004556C)
/* 74A7C 800BA27C 24425570 */  addiu      $v0, $v0, %lo(D_80045570)
/* 74A80 800BA280 AC20556C */  sw         $zero, %lo(D_8004556C)($at)
/* 74A84 800BA284 3C048004 */  lui        $a0, %hi(D_80044DB8)
/* 74A88 800BA288 3C058004 */  lui        $a1, %hi(D_80044DD0)
/* 74A8C 800BA28C AC400034 */  sw         $zero, 0x34($v0)
/* 74A90 800BA290 AC400084 */  sw         $zero, 0x84($v0)
/* 74A94 800BA294 24A54DD0 */  addiu      $a1, $a1, %lo(D_80044DD0)
/* 74A98 800BA298 24844DB8 */  addiu      $a0, $a0, %lo(D_80044DB8)
/* 74A9C 800BA29C 0C0318C4 */  jal        func_800C6310
/* 74AA0 800BA2A0 24060001 */   addiu     $a2, $zero, 0x1
/* 74AA4 800BA2A4 3C048004 */  lui        $a0, %hi(D_800447A0)
/* 74AA8 800BA2A8 3C058004 */  lui        $a1, %hi(D_800447B8)
/* 74AAC 800BA2AC 24A547B8 */  addiu      $a1, $a1, %lo(D_800447B8)
/* 74AB0 800BA2B0 248447A0 */  addiu      $a0, $a0, %lo(D_800447A0)
/* 74AB4 800BA2B4 0C0318C4 */  jal        func_800C6310
/* 74AB8 800BA2B8 24060040 */   addiu     $a2, $zero, 0x40
/* 74ABC 800BA2BC 3C018004 */  lui        $at, %hi(D_80045554)
/* 74AC0 800BA2C0 AC205554 */  sw         $zero, %lo(D_80045554)($at)
/* 74AC4 800BA2C4 3C018004 */  lui        $at, %hi(D_800452F0)
/* 74AC8 800BA2C8 3C04800F */  lui        $a0, %hi(D_800EE2FC)
/* 74ACC 800BA2CC AC2052F0 */  sw         $zero, %lo(D_800452F0)($at)
/* 74AD0 800BA2D0 0C02DE12 */  jal        func_800B7848
/* 74AD4 800BA2D4 8C84E2FC */   lw        $a0, %lo(D_800EE2FC)($a0)
/* 74AD8 800BA2D8 3C068004 */  lui        $a2, %hi(D_80045618)
/* 74ADC 800BA2DC 3C118004 */  lui        $s1, %hi(D_8003E560)
/* 74AE0 800BA2E0 2631E560 */  addiu      $s1, $s1, %lo(D_8003E560)
/* 74AE4 800BA2E4 24C65618 */  addiu      $a2, $a2, %lo(D_80045618)
/* 74AE8 800BA2E8 24100A00 */  addiu      $s0, $zero, 0xA00
/* 74AEC 800BA2EC 02202025 */  or         $a0, $s1, $zero
.L800BA2F0:
/* 74AF0 800BA2F0 24050A00 */  addiu      $a1, $zero, 0xA00
/* 74AF4 800BA2F4 0C02DDD8 */  jal        func_800B7760
/* 74AF8 800BA2F8 AFA6002C */   sw        $a2, 0x2C($sp)
/* 74AFC 800BA2FC 8FA6002C */  lw         $a2, 0x2C($sp)
/* 74B00 800BA300 3C198004 */  lui        $t9, %hi(D_80045624)
/* 74B04 800BA304 00001825 */  or         $v1, $zero, $zero
/* 74B08 800BA308 ACC20000 */  sw         $v0, 0x0($a2)
.L800BA30C:
/* 74B0C 800BA30C 8CC80000 */  lw         $t0, 0x0($a2)
/* 74B10 800BA310 01034821 */  addu       $t1, $t0, $v1
/* 74B14 800BA314 A5200000 */  sh         $zero, 0x0($t1)
/* 74B18 800BA318 8CCA0000 */  lw         $t2, 0x0($a2)
/* 74B1C 800BA31C 01435821 */  addu       $t3, $t2, $v1
/* 74B20 800BA320 A5600002 */  sh         $zero, 0x2($t3)
/* 74B24 800BA324 8CCC0000 */  lw         $t4, 0x0($a2)
/* 74B28 800BA328 01836821 */  addu       $t5, $t4, $v1
/* 74B2C 800BA32C A5A00004 */  sh         $zero, 0x4($t5)
/* 74B30 800BA330 8CCE0000 */  lw         $t6, 0x0($a2)
/* 74B34 800BA334 01C37821 */  addu       $t7, $t6, $v1
/* 74B38 800BA338 24630008 */  addiu      $v1, $v1, 0x8
/* 74B3C 800BA33C 1470FFF3 */  bne        $v1, $s0, .L800BA30C
/* 74B40 800BA340 A5E00006 */   sh        $zero, 0x6($t7)
/* 74B44 800BA344 24C60004 */  addiu      $a2, $a2, 0x4
/* 74B48 800BA348 27395624 */  addiu      $t9, $t9, %lo(D_80045624)
/* 74B4C 800BA34C 54D9FFE8 */  bnel       $a2, $t9, .L800BA2F0
/* 74B50 800BA350 02202025 */   or        $a0, $s1, $zero
/* 74B54 800BA354 3C018004 */  lui        $at, %hi(D_8003ECB9)
/* 74B58 800BA358 3C088004 */  lui        $t0, %hi(D_8003ECB8)
/* 74B5C 800BA35C A020ECB9 */  sb         $zero, %lo(D_8003ECB9)($at)
/* 74B60 800BA360 2508ECB8 */  addiu      $t0, $t0, %lo(D_8003ECB8)
/* 74B64 800BA364 24180001 */  addiu      $t8, $zero, 0x1
/* 74B68 800BA368 0C02E120 */  jal        func_800B8480
/* 74B6C 800BA36C A1180000 */   sb        $t8, 0x0($t0)
/* 74B70 800BA370 3C038004 */  lui        $v1, %hi(D_80045504)
/* 74B74 800BA374 24635504 */  addiu      $v1, $v1, %lo(D_80045504)
/* 74B78 800BA378 27A50048 */  addiu      $a1, $sp, 0x48
/* 74B7C 800BA37C 3C04007B */  lui        $a0, %hi(D_7AE8B0)
/* 74B80 800BA380 AC650000 */  sw         $a1, 0x0($v1)
/* 74B84 800BA384 2484E8B0 */  addiu      $a0, $a0, %lo(D_7AE8B0)
/* 74B88 800BA388 0C02E32C */  jal        func_800B8CB0
/* 74B8C 800BA38C 24060010 */   addiu     $a2, $zero, 0x10
/* 74B90 800BA390 3C0A8004 */  lui        $t2, %hi(D_80045504)
/* 74B94 800BA394 8D4A5504 */  lw         $t2, %lo(D_80045504)($t2)
/* 74B98 800BA398 3C028004 */  lui        $v0, %hi(D_80045514)
/* 74B9C 800BA39C 2401FFF0 */  addiu      $at, $zero, -0x10
/* 74BA0 800BA3A0 854B0002 */  lh         $t3, 0x2($t2)
/* 74BA4 800BA3A4 24425514 */  addiu      $v0, $v0, %lo(D_80045514)
/* 74BA8 800BA3A8 02202025 */  or         $a0, $s1, $zero
/* 74BAC 800BA3AC 3170FFFF */  andi       $s0, $t3, 0xFFFF
/* 74BB0 800BA3B0 001060C0 */  sll        $t4, $s0, 3
/* 74BB4 800BA3B4 01808025 */  or         $s0, $t4, $zero
/* 74BB8 800BA3B8 26100013 */  addiu      $s0, $s0, 0x13
/* 74BBC 800BA3BC 02012824 */  and        $a1, $s0, $at
/* 74BC0 800BA3C0 00A08025 */  or         $s0, $a1, $zero
/* 74BC4 800BA3C4 0C02DDD8 */  jal        func_800B7760
/* 74BC8 800BA3C8 A44B0000 */   sh        $t3, 0x0($v0)
/* 74BCC 800BA3CC 3C038004 */  lui        $v1, %hi(D_80045504)
/* 74BD0 800BA3D0 24635504 */  addiu      $v1, $v1, %lo(D_80045504)
/* 74BD4 800BA3D4 3C04007B */  lui        $a0, %hi(D_7AE8B0)
/* 74BD8 800BA3D8 AC620000 */  sw         $v0, 0x0($v1)
/* 74BDC 800BA3DC 2484E8B0 */  addiu      $a0, $a0, %lo(D_7AE8B0)
/* 74BE0 800BA3E0 00402825 */  or         $a1, $v0, $zero
/* 74BE4 800BA3E4 0C02E32C */  jal        func_800B8CB0
/* 74BE8 800BA3E8 02003025 */   or        $a2, $s0, $zero
/* 74BEC 800BA3EC 3C048004 */  lui        $a0, %hi(D_80045504)
/* 74BF0 800BA3F0 3C05007B */  lui        $a1, %hi(D_7AE8B0)
/* 74BF4 800BA3F4 24A5E8B0 */  addiu      $a1, $a1, %lo(D_7AE8B0)
/* 74BF8 800BA3F8 0C032A42 */  jal        func_800CA908
/* 74BFC 800BA3FC 8C845504 */   lw        $a0, %lo(D_80045504)($a0)
/* 74C00 800BA400 3C028004 */  lui        $v0, %hi(D_80045508)
/* 74C04 800BA404 24425508 */  addiu      $v0, $v0, %lo(D_80045508)
/* 74C08 800BA408 27A50048 */  addiu      $a1, $sp, 0x48
/* 74C0C 800BA40C 3C040041 */  lui        $a0, %hi(D_40B530)
/* 74C10 800BA410 AC450000 */  sw         $a1, 0x0($v0)
/* 74C14 800BA414 2484B530 */  addiu      $a0, $a0, %lo(D_40B530)
/* 74C18 800BA418 0C02E32C */  jal        func_800B8CB0
/* 74C1C 800BA41C 24060010 */   addiu     $a2, $zero, 0x10
/* 74C20 800BA420 3C0F8004 */  lui        $t7, %hi(D_80045508)
/* 74C24 800BA424 8DEF5508 */  lw         $t7, %lo(D_80045508)($t7)
/* 74C28 800BA428 2401FFF0 */  addiu      $at, $zero, -0x10
/* 74C2C 800BA42C 02202025 */  or         $a0, $s1, $zero
/* 74C30 800BA430 85E20002 */  lh         $v0, 0x2($t7)
/* 74C34 800BA434 000280C0 */  sll        $s0, $v0, 3
/* 74C38 800BA438 26100013 */  addiu      $s0, $s0, 0x13
/* 74C3C 800BA43C 00022880 */  sll        $a1, $v0, 2
/* 74C40 800BA440 0201C824 */  and        $t9, $s0, $at
/* 74C44 800BA444 00A22823 */  subu       $a1, $a1, $v0
/* 74C48 800BA448 03208025 */  or         $s0, $t9, $zero
/* 74C4C 800BA44C 0C02DDD8 */  jal        func_800B7760
/* 74C50 800BA450 00052880 */   sll       $a1, $a1, 2
/* 74C54 800BA454 3C018004 */  lui        $at, %hi(D_80045518)
/* 74C58 800BA458 AC225518 */  sw         $v0, %lo(D_80045518)($at)
/* 74C5C 800BA45C 02202025 */  or         $a0, $s1, $zero
/* 74C60 800BA460 0C02DDD8 */  jal        func_800B7760
/* 74C64 800BA464 02002825 */   or        $a1, $s0, $zero
/* 74C68 800BA468 3C038004 */  lui        $v1, %hi(D_80045508)
/* 74C6C 800BA46C 24635508 */  addiu      $v1, $v1, %lo(D_80045508)
/* 74C70 800BA470 3C040041 */  lui        $a0, %hi(D_40B530)
/* 74C74 800BA474 AC620000 */  sw         $v0, 0x0($v1)
/* 74C78 800BA478 2484B530 */  addiu      $a0, $a0, %lo(D_40B530)
/* 74C7C 800BA47C 00402825 */  or         $a1, $v0, $zero
/* 74C80 800BA480 0C02E32C */  jal        func_800B8CB0
/* 74C84 800BA484 02003025 */   or        $a2, $s0, $zero
/* 74C88 800BA488 3C048004 */  lui        $a0, %hi(D_80045508)
/* 74C8C 800BA48C 3C050041 */  lui        $a1, %hi(D_40B530)
/* 74C90 800BA490 24A5B530 */  addiu      $a1, $a1, %lo(D_40B530)
/* 74C94 800BA494 0C032A42 */  jal        func_800CA908
/* 74C98 800BA498 8C845508 */   lw        $a0, %lo(D_80045508)($a0)
/* 74C9C 800BA49C 3C028004 */  lui        $v0, %hi(D_8004550C)
/* 74CA0 800BA4A0 2442550C */  addiu      $v0, $v0, %lo(D_8004550C)
/* 74CA4 800BA4A4 27A50048 */  addiu      $a1, $sp, 0x48
/* 74CA8 800BA4A8 3C040043 */  lui        $a0, %hi(D_428C30)
/* 74CAC 800BA4AC AC450000 */  sw         $a1, 0x0($v0)
/* 74CB0 800BA4B0 24848C30 */  addiu      $a0, $a0, %lo(D_428C30)
/* 74CB4 800BA4B4 0C02E32C */  jal        func_800B8CB0
/* 74CB8 800BA4B8 24060010 */   addiu     $a2, $zero, 0x10
/* 74CBC 800BA4BC 3C088004 */  lui        $t0, %hi(D_8004550C)
/* 74CC0 800BA4C0 8D08550C */  lw         $t0, %lo(D_8004550C)($t0)
/* 74CC4 800BA4C4 2401FFF0 */  addiu      $at, $zero, -0x10
/* 74CC8 800BA4C8 02202025 */  or         $a0, $s1, $zero
/* 74CCC 800BA4CC 85100002 */  lh         $s0, 0x2($t0)
/* 74CD0 800BA4D0 001048C0 */  sll        $t1, $s0, 3
/* 74CD4 800BA4D4 01208025 */  or         $s0, $t1, $zero
/* 74CD8 800BA4D8 26100013 */  addiu      $s0, $s0, 0x13
/* 74CDC 800BA4DC 02012824 */  and        $a1, $s0, $at
/* 74CE0 800BA4E0 0C02DDD8 */  jal        func_800B7760
/* 74CE4 800BA4E4 00A08025 */   or        $s0, $a1, $zero
/* 74CE8 800BA4E8 3C038004 */  lui        $v1, %hi(D_8004550C)
/* 74CEC 800BA4EC 2463550C */  addiu      $v1, $v1, %lo(D_8004550C)
/* 74CF0 800BA4F0 3C040043 */  lui        $a0, %hi(D_428C30)
/* 74CF4 800BA4F4 AC620000 */  sw         $v0, 0x0($v1)
/* 74CF8 800BA4F8 24848C30 */  addiu      $a0, $a0, %lo(D_428C30)
/* 74CFC 800BA4FC 00402825 */  or         $a1, $v0, $zero
/* 74D00 800BA500 0C02E32C */  jal        func_800B8CB0
/* 74D04 800BA504 02003025 */   or        $a2, $s0, $zero
/* 74D08 800BA508 3C048004 */  lui        $a0, %hi(D_8004550C)
/* 74D0C 800BA50C 3C050043 */  lui        $a1, %hi(D_428C30)
/* 74D10 800BA510 24A58C30 */  addiu      $a1, $a1, %lo(D_428C30)
/* 74D14 800BA514 0C032A42 */  jal        func_800CA908
/* 74D18 800BA518 8C84550C */   lw        $a0, %lo(D_8004550C)($a0)
/* 74D1C 800BA51C 02202025 */  or         $a0, $s1, $zero
/* 74D20 800BA520 0C02DDD8 */  jal        func_800B7760
/* 74D24 800BA524 24050100 */   addiu     $a1, $zero, 0x100
/* 74D28 800BA528 3C038004 */  lui        $v1, %hi(D_80045510)
/* 74D2C 800BA52C 24635510 */  addiu      $v1, $v1, %lo(D_80045510)
/* 74D30 800BA530 3C04007C */  lui        $a0, %hi(D_7C4B70)
/* 74D34 800BA534 AC620000 */  sw         $v0, 0x0($v1)
/* 74D38 800BA538 24844B70 */  addiu      $a0, $a0, %lo(D_7C4B70)
/* 74D3C 800BA53C 00402825 */  or         $a1, $v0, $zero
/* 74D40 800BA540 0C02E32C */  jal        func_800B8CB0
/* 74D44 800BA544 24060100 */   addiu     $a2, $zero, 0x100
/* 74D48 800BA548 0C02FC7D */  jal        func_800BF1F4
/* 74D4C 800BA54C 00000000 */   nop
/* 74D50 800BA550 3C0B7655 */  lui        $t3, (0x76557364 >> 16)
/* 74D54 800BA554 3C0C800F */  lui        $t4, %hi(D_800EE300)
/* 74D58 800BA558 258CE300 */  addiu      $t4, $t4, %lo(D_800EE300)
/* 74D5C 800BA55C 356B7364 */  ori        $t3, $t3, (0x76557364 & 0xFFFF)
/* 74D60 800BA560 AD8B0000 */  sw         $t3, 0x0($t4)
/* 74D64 800BA564 8FBF001C */  lw         $ra, 0x1C($sp)
/* 74D68 800BA568 8FB10018 */  lw         $s1, 0x18($sp)
/* 74D6C 800BA56C 8FB00014 */  lw         $s0, 0x14($sp)
/* 74D70 800BA570 03E00008 */  jr         $ra
/* 74D74 800BA574 27BD0078 */   addiu     $sp, $sp, 0x78
/* 74D78 800BA578 00000000 */  nop
/* 74D7C 800BA57C 00000000 */  nop
