.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800C7380
/* 81B80 800C7380 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 81B84 800C7384 AFBF0014 */  sw         $ra, 0x14($sp)
/* 81B88 800C7388 AFA5001C */  sw         $a1, 0x1C($sp)
/* 81B8C 800C738C AFA60020 */  sw         $a2, 0x20($sp)
/* 81B90 800C7390 AFA70024 */  sw         $a3, 0x24($sp)
/* 81B94 800C7394 0C033300 */  jal        func_800CCC00
/* 81B98 800C7398 AFA40018 */   sw        $a0, 0x18($sp)
/* 81B9C 800C739C C7A40020 */  lwc1       $f4, 0x20($sp)
/* 81BA0 800C73A0 C7A6001C */  lwc1       $f6, 0x1C($sp)
/* 81BA4 800C73A4 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 81BA8 800C73A8 44814000 */  mtc1       $at, $f8
/* 81BAC 800C73AC 46062001 */  sub.s      $f0, $f4, $f6
/* 81BB0 800C73B0 8FA20018 */  lw         $v0, 0x18($sp)
/* 81BB4 800C73B4 C7AE0028 */  lwc1       $f14, 0x28($sp)
/* 81BB8 800C73B8 C7B00030 */  lwc1       $f16, 0x30($sp)
/* 81BBC 800C73BC 46004283 */  div.s      $f10, $f8, $f0
/* 81BC0 800C73C0 C7B2002C */  lwc1       $f18, 0x2C($sp)
/* 81BC4 800C73C4 44813000 */  mtc1       $at, $f6
/* 81BC8 800C73C8 3C01C000 */  lui        $at, (0xC0000000 >> 16)
/* 81BCC 800C73CC 46128301 */  sub.s      $f12, $f16, $f18
/* 81BD0 800C73D0 00001825 */  or         $v1, $zero, $zero
/* 81BD4 800C73D4 24040004 */  addiu      $a0, $zero, 0x4
/* 81BD8 800C73D8 E44A0000 */  swc1       $f10, 0x0($v0)
/* 81BDC 800C73DC C7A40024 */  lwc1       $f4, 0x24($sp)
/* 81BE0 800C73E0 44815000 */  mtc1       $at, $f10
/* 81BE4 800C73E4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 81BE8 800C73E8 46047081 */  sub.s      $f2, $f14, $f4
/* 81BEC 800C73EC 460C5103 */  div.s      $f4, $f10, $f12
/* 81BF0 800C73F0 46023203 */  div.s      $f8, $f6, $f2
/* 81BF4 800C73F4 E4440028 */  swc1       $f4, 0x28($v0)
/* 81BF8 800C73F8 E4480014 */  swc1       $f8, 0x14($v0)
/* 81BFC 800C73FC C7A8001C */  lwc1       $f8, 0x1C($sp)
/* 81C00 800C7400 C7A60020 */  lwc1       $f6, 0x20($sp)
/* 81C04 800C7404 46083280 */  add.s      $f10, $f6, $f8
/* 81C08 800C7408 46005107 */  neg.s      $f4, $f10
/* 81C0C 800C740C 46002183 */  div.s      $f6, $f4, $f0
/* 81C10 800C7410 E4460030 */  swc1       $f6, 0x30($v0)
/* 81C14 800C7414 C7A80024 */  lwc1       $f8, 0x24($sp)
/* 81C18 800C7418 46087280 */  add.s      $f10, $f14, $f8
/* 81C1C 800C741C 46128200 */  add.s      $f8, $f16, $f18
/* 81C20 800C7420 46005107 */  neg.s      $f4, $f10
/* 81C24 800C7424 46004287 */  neg.s      $f10, $f8
/* 81C28 800C7428 46022183 */  div.s      $f6, $f4, $f2
/* 81C2C 800C742C 460C5103 */  div.s      $f4, $f10, $f12
/* 81C30 800C7430 E4460034 */  swc1       $f6, 0x34($v0)
/* 81C34 800C7434 44813000 */  mtc1       $at, $f6
/* 81C38 800C7438 00000000 */  nop
/* 81C3C 800C743C E446003C */  swc1       $f6, 0x3C($v0)
/* 81C40 800C7440 E4440038 */  swc1       $f4, 0x38($v0)
/* 81C44 800C7444 C7A00034 */  lwc1       $f0, 0x34($sp)
/* 81C48 800C7448 C4480000 */  lwc1       $f8, 0x0($v0)
/* 81C4C 800C744C 24630001 */  addiu      $v1, $v1, 0x1
/* 81C50 800C7450 C4520004 */  lwc1       $f18, 0x4($v0)
/* 81C54 800C7454 46004302 */  mul.s      $f12, $f8, $f0
/* 81C58 800C7458 C44E0008 */  lwc1       $f14, 0x8($v0)
/* 81C5C 800C745C 10640010 */  beq        $v1, $a0, .L800C74A0
/* 81C60 800C7460 C450000C */   lwc1      $f16, 0xC($v0)
.L800C7464:
/* 81C64 800C7464 46009282 */  mul.s      $f10, $f18, $f0
/* 81C68 800C7468 C4480010 */  lwc1       $f8, 0x10($v0)
/* 81C6C 800C746C C4520014 */  lwc1       $f18, 0x14($v0)
/* 81C70 800C7470 46007182 */  mul.s      $f6, $f14, $f0
/* 81C74 800C7474 C44E0018 */  lwc1       $f14, 0x18($v0)
/* 81C78 800C7478 24630001 */  addiu      $v1, $v1, 0x1
/* 81C7C 800C747C 46008102 */  mul.s      $f4, $f16, $f0
/* 81C80 800C7480 C450001C */  lwc1       $f16, 0x1C($v0)
/* 81C84 800C7484 E44C0000 */  swc1       $f12, 0x0($v0)
/* 81C88 800C7488 46004302 */  mul.s      $f12, $f8, $f0
/* 81C8C 800C748C E44A0004 */  swc1       $f10, 0x4($v0)
/* 81C90 800C7490 E4460008 */  swc1       $f6, 0x8($v0)
/* 81C94 800C7494 24420010 */  addiu      $v0, $v0, 0x10
/* 81C98 800C7498 1464FFF2 */  bne        $v1, $a0, .L800C7464
/* 81C9C 800C749C E444FFFC */   swc1      $f4, -0x4($v0)
.L800C74A0:
/* 81CA0 800C74A0 46009282 */  mul.s      $f10, $f18, $f0
/* 81CA4 800C74A4 24420010 */  addiu      $v0, $v0, 0x10
/* 81CA8 800C74A8 E44CFFF0 */  swc1       $f12, -0x10($v0)
/* 81CAC 800C74AC 46007182 */  mul.s      $f6, $f14, $f0
/* 81CB0 800C74B0 00000000 */  nop
/* 81CB4 800C74B4 46008102 */  mul.s      $f4, $f16, $f0
/* 81CB8 800C74B8 E44AFFF4 */  swc1       $f10, -0xC($v0)
/* 81CBC 800C74BC E446FFF8 */  swc1       $f6, -0x8($v0)
/* 81CC0 800C74C0 E444FFFC */  swc1       $f4, -0x4($v0)
/* 81CC4 800C74C4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 81CC8 800C74C8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 81CCC 800C74CC 03E00008 */  jr         $ra
/* 81CD0 800C74D0 00000000 */   nop

glabel func_800C74D4
/* 81CD4 800C74D4 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 81CD8 800C74D8 44856000 */  mtc1       $a1, $f12
/* 81CDC 800C74DC 44867000 */  mtc1       $a2, $f14
/* 81CE0 800C74E0 44878000 */  mtc1       $a3, $f16
/* 81CE4 800C74E4 C7A40078 */  lwc1       $f4, 0x78($sp)
/* 81CE8 800C74E8 C7A6007C */  lwc1       $f6, 0x7C($sp)
/* 81CEC 800C74EC C7A80080 */  lwc1       $f8, 0x80($sp)
/* 81CF0 800C74F0 C7AA0084 */  lwc1       $f10, 0x84($sp)
/* 81CF4 800C74F4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 81CF8 800C74F8 AFA40068 */  sw         $a0, 0x68($sp)
/* 81CFC 800C74FC 44056000 */  mfc1       $a1, $f12
/* 81D00 800C7500 44067000 */  mfc1       $a2, $f14
/* 81D04 800C7504 44078000 */  mfc1       $a3, $f16
/* 81D08 800C7508 27A40028 */  addiu      $a0, $sp, 0x28
/* 81D0C 800C750C E7A40010 */  swc1       $f4, 0x10($sp)
/* 81D10 800C7510 E7A60014 */  swc1       $f6, 0x14($sp)
/* 81D14 800C7514 E7A80018 */  swc1       $f8, 0x18($sp)
/* 81D18 800C7518 0C031CE0 */  jal        func_800C7380
/* 81D1C 800C751C E7AA001C */   swc1      $f10, 0x1C($sp)
/* 81D20 800C7520 27A40028 */  addiu      $a0, $sp, 0x28
/* 81D24 800C7524 0C0332C0 */  jal        func_800CCB00
/* 81D28 800C7528 8FA50068 */   lw        $a1, 0x68($sp)
/* 81D2C 800C752C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 81D30 800C7530 27BD0068 */  addiu      $sp, $sp, 0x68
/* 81D34 800C7534 03E00008 */  jr         $ra
/* 81D38 800C7538 00000000 */   nop
/* 81D3C 800C753C 00000000 */  nop
