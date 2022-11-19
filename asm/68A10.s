.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800AE210
/* 68A10 800AE210 3C0E801D */  lui        $t6, %hi(D_801D7A08)
/* 68A14 800AE214 8DCE7A08 */  lw         $t6, %lo(D_801D7A08)($t6)
/* 68A18 800AE218 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 68A1C 800AE21C AFBF0014 */  sw         $ra, 0x14($sp)
/* 68A20 800AE220 11C0005E */  beqz       $t6, .L800AE39C
/* 68A24 800AE224 00802825 */   or        $a1, $a0, $zero
/* 68A28 800AE228 3C0F801A */  lui        $t7, %hi(D_801982F0)
/* 68A2C 800AE22C 8DEF82F0 */  lw         $t7, %lo(D_801982F0)($t7)
/* 68A30 800AE230 3C0142C0 */  lui        $at, (0x42C00000 >> 16)
/* 68A34 800AE234 3C18801D */  lui        $t8, %hi(D_801D7A04)
/* 68A38 800AE238 548F0059 */  bnel       $a0, $t7, .L800AE3A0
/* 68A3C 800AE23C 00056080 */   sll       $t4, $a1, 2
/* 68A40 800AE240 8F187A04 */  lw         $t8, %lo(D_801D7A04)($t8)
/* 68A44 800AE244 3C09801D */  lui        $t1, %hi(D_801CF060)
/* 68A48 800AE248 2529F060 */  addiu      $t1, $t1, %lo(D_801CF060)
/* 68A4C 800AE24C 0018C880 */  sll        $t9, $t8, 2
/* 68A50 800AE250 0338C823 */  subu       $t9, $t9, $t8
/* 68A54 800AE254 0019C900 */  sll        $t9, $t9, 4
/* 68A58 800AE258 0338C823 */  subu       $t9, $t9, $t8
/* 68A5C 800AE25C 0019C880 */  sll        $t9, $t9, 2
/* 68A60 800AE260 03291021 */  addu       $v0, $t9, $t1
/* 68A64 800AE264 C4440024 */  lwc1       $f4, 0x24($v0)
/* 68A68 800AE268 44810000 */  mtc1       $at, $f0
/* 68A6C 800AE26C 3C01801D */  lui        $at, %hi(D_801D79C8)
/* 68A70 800AE270 E42479C8 */  swc1       $f4, %lo(D_801D79C8)($at)
/* 68A74 800AE274 C4460028 */  lwc1       $f6, 0x28($v0)
/* 68A78 800AE278 3C01801D */  lui        $at, %hi(D_801D79CC)
/* 68A7C 800AE27C 3C07801D */  lui        $a3, %hi(D_801D79E0)
/* 68A80 800AE280 E42679CC */  swc1       $f6, %lo(D_801D79CC)($at)
/* 68A84 800AE284 C448002C */  lwc1       $f8, 0x2C($v0)
/* 68A88 800AE288 3C01801D */  lui        $at, %hi(D_801D79D0)
/* 68A8C 800AE28C 24E779E0 */  addiu      $a3, $a3, %lo(D_801D79E0)
/* 68A90 800AE290 E42879D0 */  swc1       $f8, %lo(D_801D79D0)($at)
/* 68A94 800AE294 C44A0030 */  lwc1       $f10, 0x30($v0)
/* 68A98 800AE298 3C01801D */  lui        $at, %hi(D_801D79E4)
/* 68A9C 800AE29C 3C08801D */  lui        $t0, %hi(D_801D79E8)
/* 68AA0 800AE2A0 E4EA0000 */  swc1       $f10, 0x0($a3)
/* 68AA4 800AE2A4 C4500034 */  lwc1       $f16, 0x34($v0)
/* 68AA8 800AE2A8 250879E8 */  addiu      $t0, $t0, %lo(D_801D79E8)
/* 68AAC 800AE2AC 3C04801D */  lui        $a0, %hi(D_801D79C0)
/* 68AB0 800AE2B0 E43079E4 */  swc1       $f16, %lo(D_801D79E4)($at)
/* 68AB4 800AE2B4 C4520038 */  lwc1       $f18, 0x38($v0)
/* 68AB8 800AE2B8 3C01801D */  lui        $at, %hi(D_801D79EC)
/* 68ABC 800AE2BC 248479C0 */  addiu      $a0, $a0, %lo(D_801D79C0)
/* 68AC0 800AE2C0 E5120000 */  swc1       $f18, 0x0($t0)
/* 68AC4 800AE2C4 C4440038 */  lwc1       $f4, 0x38($v0)
/* 68AC8 800AE2C8 000550C0 */  sll        $t2, $a1, 3
/* 68ACC 800AE2CC 01455023 */  subu       $t2, $t2, $a1
/* 68AD0 800AE2D0 46002187 */  neg.s      $f6, $f4
/* 68AD4 800AE2D4 3C06801D */  lui        $a2, %hi(D_801D79FC)
/* 68AD8 800AE2D8 E42679EC */  swc1       $f6, %lo(D_801D79EC)($at)
/* 68ADC 800AE2DC C4480034 */  lwc1       $f8, 0x34($v0)
/* 68AE0 800AE2E0 3C01801D */  lui        $at, %hi(D_801D79F0)
/* 68AE4 800AE2E4 000A50C0 */  sll        $t2, $t2, 3
/* 68AE8 800AE2E8 E42879F0 */  swc1       $f8, %lo(D_801D79F0)($at)
/* 68AEC 800AE2EC C44A0030 */  lwc1       $f10, 0x30($v0)
/* 68AF0 800AE2F0 3C01801D */  lui        $at, %hi(D_801D79F4)
/* 68AF4 800AE2F4 24C679FC */  addiu      $a2, $a2, %lo(D_801D79FC)
/* 68AF8 800AE2F8 E42A79F4 */  swc1       $f10, %lo(D_801D79F4)($at)
/* 68AFC 800AE2FC C4F20000 */  lwc1       $f18, 0x0($a3)
/* 68B00 800AE300 C4500064 */  lwc1       $f16, 0x64($v0)
/* 68B04 800AE304 3C01801D */  lui        $at, %hi(D_801D79BC)
/* 68B08 800AE308 46120102 */  mul.s      $f4, $f0, $f18
/* 68B0C 800AE30C 01455021 */  addu       $t2, $t2, $a1
/* 68B10 800AE310 000A50C0 */  sll        $t2, $t2, 3
/* 68B14 800AE314 01455023 */  subu       $t2, $t2, $a1
/* 68B18 800AE318 000A5080 */  sll        $t2, $t2, 2
/* 68B1C 800AE31C 01455021 */  addu       $t2, $t2, $a1
/* 68B20 800AE320 3C0B801D */  lui        $t3, %hi(D_801D0798)
/* 68B24 800AE324 46048180 */  add.s      $f6, $f16, $f4
/* 68B28 800AE328 256B0798 */  addiu      $t3, $t3, %lo(D_801D0798)
/* 68B2C 800AE32C 000A5080 */  sll        $t2, $t2, 2
/* 68B30 800AE330 014B1821 */  addu       $v1, $t2, $t3
/* 68B34 800AE334 E42679BC */  swc1       $f6, %lo(D_801D79BC)($at)
/* 68B38 800AE338 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* 68B3C 800AE33C 44815000 */  mtc1       $at, $f10
/* 68B40 800AE340 C4480068 */  lwc1       $f8, 0x68($v0)
/* 68B44 800AE344 C5040000 */  lwc1       $f4, 0x0($t0)
/* 68B48 800AE348 3C01801D */  lui        $at, %hi(D_801D79C4)
/* 68B4C 800AE34C 460A4481 */  sub.s      $f18, $f8, $f10
/* 68B50 800AE350 46040182 */  mul.s      $f6, $f0, $f4
/* 68B54 800AE354 44805000 */  mtc1       $zero, $f10
/* 68B58 800AE358 E4920000 */  swc1       $f18, 0x0($a0)
/* 68B5C 800AE35C C450006C */  lwc1       $f16, 0x6C($v0)
/* 68B60 800AE360 44809000 */  mtc1       $zero, $f18
/* 68B64 800AE364 46068200 */  add.s      $f8, $f16, $f6
/* 68B68 800AE368 E42879C4 */  swc1       $f8, %lo(D_801D79C4)($at)
/* 68B6C 800AE36C 3C01801D */  lui        $at, %hi(D_801D79DC)
/* 68B70 800AE370 E42A79DC */  swc1       $f10, %lo(D_801D79DC)($at)
/* 68B74 800AE374 3C01801D */  lui        $at, %hi(D_801D7A0C)
/* 68B78 800AE378 AC207A0C */  sw         $zero, %lo(D_801D7A0C)($at)
/* 68B7C 800AE37C E4D20000 */  swc1       $f18, 0x0($a2)
/* 68B80 800AE380 C4C40000 */  lwc1       $f4, 0x0($a2)
/* 68B84 800AE384 3C01801D */  lui        $at, %hi(D_801D79F8)
/* 68B88 800AE388 E42479F8 */  swc1       $f4, %lo(D_801D79F8)($at)
/* 68B8C 800AE38C AC601C54 */  sw         $zero, 0x1C54($v1)
/* 68B90 800AE390 3C01801D */  lui        $at, %hi(D_801D7A10)
/* 68B94 800AE394 1000009B */  b          .L800AE604
/* 68B98 800AE398 AC207A10 */   sw        $zero, %lo(D_801D7A10)($at)
.L800AE39C:
/* 68B9C 800AE39C 00056080 */  sll        $t4, $a1, 2
.L800AE3A0:
/* 68BA0 800AE3A0 01856023 */  subu       $t4, $t4, $a1
/* 68BA4 800AE3A4 000C60C0 */  sll        $t4, $t4, 3
/* 68BA8 800AE3A8 01856023 */  subu       $t4, $t4, $a1
/* 68BAC 800AE3AC 000C60C0 */  sll        $t4, $t4, 3
/* 68BB0 800AE3B0 01856021 */  addu       $t4, $t4, $a1
/* 68BB4 800AE3B4 000C6080 */  sll        $t4, $t4, 2
/* 68BB8 800AE3B8 01856023 */  subu       $t4, $t4, $a1
/* 68BBC 800AE3BC 3C0D8019 */  lui        $t5, %hi(D_80192690)
/* 68BC0 800AE3C0 25AD2690 */  addiu      $t5, $t5, %lo(D_80192690)
/* 68BC4 800AE3C4 000C60C0 */  sll        $t4, $t4, 3
/* 68BC8 800AE3C8 018D1021 */  addu       $v0, $t4, $t5
/* 68BCC 800AE3CC C4500044 */  lwc1       $f16, 0x44($v0)
/* 68BD0 800AE3D0 3C01801D */  lui        $at, %hi(D_801D79BC)
/* 68BD4 800AE3D4 3C04801D */  lui        $a0, %hi(D_801D79C0)
/* 68BD8 800AE3D8 E43079BC */  swc1       $f16, %lo(D_801D79BC)($at)
/* 68BDC 800AE3DC 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 68BE0 800AE3E0 44814000 */  mtc1       $at, $f8
/* 68BE4 800AE3E4 C4460048 */  lwc1       $f6, 0x48($v0)
/* 68BE8 800AE3E8 C452004C */  lwc1       $f18, 0x4C($v0)
/* 68BEC 800AE3EC 248479C0 */  addiu      $a0, $a0, %lo(D_801D79C0)
/* 68BF0 800AE3F0 46083281 */  sub.s      $f10, $f6, $f8
/* 68BF4 800AE3F4 3C01801D */  lui        $at, %hi(D_801D79C4)
/* 68BF8 800AE3F8 3C07801D */  lui        $a3, %hi(D_801D79E0)
/* 68BFC 800AE3FC 24E779E0 */  addiu      $a3, $a3, %lo(D_801D79E0)
/* 68C00 800AE400 E48A0000 */  swc1       $f10, 0x0($a0)
/* 68C04 800AE404 E43279C4 */  swc1       $f18, %lo(D_801D79C4)($at)
/* 68C08 800AE408 C4440B78 */  lwc1       $f4, 0xB78($v0)
/* 68C0C 800AE40C 3C01801D */  lui        $at, %hi(D_801D79C8)
/* 68C10 800AE410 3C08801D */  lui        $t0, %hi(D_801D79E8)
/* 68C14 800AE414 E42479C8 */  swc1       $f4, %lo(D_801D79C8)($at)
/* 68C18 800AE418 C4500B7C */  lwc1       $f16, 0xB7C($v0)
/* 68C1C 800AE41C 3C01801D */  lui        $at, %hi(D_801D79CC)
/* 68C20 800AE420 250879E8 */  addiu      $t0, $t0, %lo(D_801D79E8)
/* 68C24 800AE424 E43079CC */  swc1       $f16, %lo(D_801D79CC)($at)
/* 68C28 800AE428 C4460B80 */  lwc1       $f6, 0xB80($v0)
/* 68C2C 800AE42C 3C01801D */  lui        $at, %hi(D_801D79D0)
/* 68C30 800AE430 AFA2001C */  sw         $v0, 0x1C($sp)
/* 68C34 800AE434 E42679D0 */  swc1       $f6, %lo(D_801D79D0)($at)
/* 68C38 800AE438 C448006C */  lwc1       $f8, 0x6C($v0)
/* 68C3C 800AE43C C44A0070 */  lwc1       $f10, 0x70($v0)
/* 68C40 800AE440 3C01801D */  lui        $at, %hi(D_801D79E4)
/* 68C44 800AE444 E4E80000 */  swc1       $f8, 0x0($a3)
/* 68C48 800AE448 E42A79E4 */  swc1       $f10, %lo(D_801D79E4)($at)
/* 68C4C 800AE44C C4440084 */  lwc1       $f4, 0x84($v0)
/* 68C50 800AE450 C4520074 */  lwc1       $f18, 0x74($v0)
/* 68C54 800AE454 3C01801D */  lui        $at, %hi(D_801D79EC)
/* 68C58 800AE458 46002407 */  neg.s      $f16, $f4
/* 68C5C 800AE45C E5120000 */  swc1       $f18, 0x0($t0)
/* 68C60 800AE460 E43079EC */  swc1       $f16, %lo(D_801D79EC)($at)
/* 68C64 800AE464 C4460088 */  lwc1       $f6, 0x88($v0)
/* 68C68 800AE468 3C01801D */  lui        $at, %hi(D_801D79F0)
/* 68C6C 800AE46C AFA50048 */  sw         $a1, 0x48($sp)
/* 68C70 800AE470 46003207 */  neg.s      $f8, $f6
/* 68C74 800AE474 E42879F0 */  swc1       $f8, %lo(D_801D79F0)($at)
/* 68C78 800AE478 C44A008C */  lwc1       $f10, 0x8C($v0)
/* 68C7C 800AE47C 3C01801D */  lui        $at, %hi(D_801D79F4)
/* 68C80 800AE480 46005487 */  neg.s      $f18, $f10
/* 68C84 800AE484 E43279F4 */  swc1       $f18, %lo(D_801D79F4)($at)
/* 68C88 800AE488 C4500050 */  lwc1       $f16, 0x50($v0)
/* 68C8C 800AE48C C4441618 */  lwc1       $f4, 0x1618($v0)
/* 68C90 800AE490 C4480054 */  lwc1       $f8, 0x54($v0)
/* 68C94 800AE494 C446161C */  lwc1       $f6, 0x161C($v0)
/* 68C98 800AE498 46102001 */  sub.s      $f0, $f4, $f16
/* 68C9C 800AE49C C4520058 */  lwc1       $f18, 0x58($v0)
/* 68CA0 800AE4A0 C44A1620 */  lwc1       $f10, 0x1620($v0)
/* 68CA4 800AE4A4 46083081 */  sub.s      $f2, $f6, $f8
/* 68CA8 800AE4A8 46000102 */  mul.s      $f4, $f0, $f0
/* 68CAC 800AE4AC 46125381 */  sub.s      $f14, $f10, $f18
/* 68CB0 800AE4B0 46021402 */  mul.s      $f16, $f2, $f2
/* 68CB4 800AE4B4 46102180 */  add.s      $f6, $f4, $f16
/* 68CB8 800AE4B8 460E7202 */  mul.s      $f8, $f14, $f14
/* 68CBC 800AE4BC 0C031C04 */  jal        func_800C7010
/* 68CC0 800AE4C0 46083300 */   add.s     $f12, $f6, $f8
/* 68CC4 800AE4C4 8FA2001C */  lw         $v0, 0x1C($sp)
/* 68CC8 800AE4C8 3C01801D */  lui        $at, %hi(D_801D79DC)
/* 68CCC 800AE4CC E42079DC */  swc1       $f0, %lo(D_801D79DC)($at)
/* 68CD0 800AE4D0 944E16E0 */  lhu        $t6, 0x16E0($v0)
/* 68CD4 800AE4D4 3C01801D */  lui        $at, %hi(D_801D7A0C)
/* 68CD8 800AE4D8 3C0F801D */  lui        $t7, %hi(D_801D7A14)
/* 68CDC 800AE4DC AC2E7A0C */  sw         $t6, %lo(D_801D7A0C)($at)
/* 68CE0 800AE4E0 C44A0BF0 */  lwc1       $f10, 0xBF0($v0)
/* 68CE4 800AE4E4 3C01801D */  lui        $at, %hi(D_801D79F8)
/* 68CE8 800AE4E8 8DEF7A14 */  lw         $t7, %lo(D_801D7A14)($t7)
/* 68CEC 800AE4EC E42A79F8 */  swc1       $f10, %lo(D_801D79F8)($at)
/* 68CF0 800AE4F0 C4520BF4 */  lwc1       $f18, 0xBF4($v0)
/* 68CF4 800AE4F4 3C04801D */  lui        $a0, %hi(D_801D79C0)
/* 68CF8 800AE4F8 3C01801D */  lui        $at, %hi(D_801D79FC)
/* 68CFC 800AE4FC 248479C0 */  addiu      $a0, $a0, %lo(D_801D79C0)
/* 68D00 800AE500 8FA50048 */  lw         $a1, 0x48($sp)
/* 68D04 800AE504 11E00027 */  beqz       $t7, .L800AE5A4
/* 68D08 800AE508 E43279FC */   swc1      $f18, %lo(D_801D79FC)($at)
/* 68D0C 800AE50C 44802000 */  mtc1       $zero, $f4
/* 68D10 800AE510 C4500C4C */  lwc1       $f16, 0xC4C($v0)
/* 68D14 800AE514 3C01801D */  lui        $at, %hi(D_801D79BC)
/* 68D18 800AE518 4610203C */  c.lt.s     $f4, $f16
/* 68D1C 800AE51C 00000000 */  nop
/* 68D20 800AE520 45020021 */  bc1fl      .L800AE5A8
/* 68D24 800AE524 000550C0 */   sll       $t2, $a1, 3
/* 68D28 800AE528 C42C79BC */  lwc1       $f12, %lo(D_801D79BC)($at)
/* 68D2C 800AE52C 3C01801D */  lui        $at, %hi(D_801D79C4)
/* 68D30 800AE530 C42E79C4 */  lwc1       $f14, %lo(D_801D79C4)($at)
/* 68D34 800AE534 AFA2001C */  sw         $v0, 0x1C($sp)
/* 68D38 800AE538 0C0134C3 */  jal        func_8004D30C
/* 68D3C 800AE53C AFA50048 */   sw        $a1, 0x48($sp)
/* 68D40 800AE540 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 68D44 800AE544 44813000 */  mtc1       $at, $f6
/* 68D48 800AE548 3C04801D */  lui        $a0, %hi(D_801D79C0)
/* 68D4C 800AE54C 248479C0 */  addiu      $a0, $a0, %lo(D_801D79C0)
/* 68D50 800AE550 46060200 */  add.s      $f8, $f0, $f6
/* 68D54 800AE554 C48A0000 */  lwc1       $f10, 0x0($a0)
/* 68D58 800AE558 8FA50048 */  lw         $a1, 0x48($sp)
/* 68D5C 800AE55C 8FA2001C */  lw         $v0, 0x1C($sp)
/* 68D60 800AE560 460A403C */  c.lt.s     $f8, $f10
/* 68D64 800AE564 0005C0C0 */  sll        $t8, $a1, 3
/* 68D68 800AE568 0305C023 */  subu       $t8, $t8, $a1
/* 68D6C 800AE56C 0018C0C0 */  sll        $t8, $t8, 3
/* 68D70 800AE570 4500000C */  bc1f       .L800AE5A4
/* 68D74 800AE574 0305C021 */   addu      $t8, $t8, $a1
/* 68D78 800AE578 0018C0C0 */  sll        $t8, $t8, 3
/* 68D7C 800AE57C 0305C023 */  subu       $t8, $t8, $a1
/* 68D80 800AE580 0018C080 */  sll        $t8, $t8, 2
/* 68D84 800AE584 0305C021 */  addu       $t8, $t8, $a1
/* 68D88 800AE588 3C19801D */  lui        $t9, %hi(D_801D0798)
/* 68D8C 800AE58C 27390798 */  addiu      $t9, $t9, %lo(D_801D0798)
/* 68D90 800AE590 0018C080 */  sll        $t8, $t8, 2
/* 68D94 800AE594 03191821 */  addu       $v1, $t8, $t9
/* 68D98 800AE598 24090001 */  addiu      $t1, $zero, 0x1
/* 68D9C 800AE59C 1000000E */  b          .L800AE5D8
/* 68DA0 800AE5A0 AC691C54 */   sw        $t1, 0x1C54($v1)
.L800AE5A4:
/* 68DA4 800AE5A4 000550C0 */  sll        $t2, $a1, 3
.L800AE5A8:
/* 68DA8 800AE5A8 01455023 */  subu       $t2, $t2, $a1
/* 68DAC 800AE5AC 000A50C0 */  sll        $t2, $t2, 3
/* 68DB0 800AE5B0 01455021 */  addu       $t2, $t2, $a1
/* 68DB4 800AE5B4 000A50C0 */  sll        $t2, $t2, 3
/* 68DB8 800AE5B8 01455023 */  subu       $t2, $t2, $a1
/* 68DBC 800AE5BC 000A5080 */  sll        $t2, $t2, 2
/* 68DC0 800AE5C0 01455021 */  addu       $t2, $t2, $a1
/* 68DC4 800AE5C4 3C0B801D */  lui        $t3, %hi(D_801D0798)
/* 68DC8 800AE5C8 256B0798 */  addiu      $t3, $t3, %lo(D_801D0798)
/* 68DCC 800AE5CC 000A5080 */  sll        $t2, $t2, 2
/* 68DD0 800AE5D0 014B1821 */  addu       $v1, $t2, $t3
/* 68DD4 800AE5D4 AC601C54 */  sw         $zero, 0x1C54($v1)
.L800AE5D8:
/* 68DD8 800AE5D8 944C16CC */  lhu        $t4, 0x16CC($v0)
/* 68DDC 800AE5DC 3C01801D */  lui        $at, %hi(D_801D7A10)
/* 68DE0 800AE5E0 3C0D801D */  lui        $t5, %hi(D_801D7A10)
/* 68DE4 800AE5E4 AC2C7A10 */  sw         $t4, %lo(D_801D7A10)($at)
/* 68DE8 800AE5E8 8DAD7A10 */  lw         $t5, %lo(D_801D7A10)($t5)
/* 68DEC 800AE5EC 11A00005 */  beqz       $t5, .L800AE604
/* 68DF0 800AE5F0 3C014000 */   lui       $at, (0x40000000 >> 16)
/* 68DF4 800AE5F4 44812000 */  mtc1       $at, $f4
/* 68DF8 800AE5F8 C4920000 */  lwc1       $f18, 0x0($a0)
/* 68DFC 800AE5FC 46049400 */  add.s      $f16, $f18, $f4
/* 68E00 800AE600 E4900000 */  swc1       $f16, 0x0($a0)
.L800AE604:
/* 68E04 800AE604 3C01801D */  lui        $at, %hi(D_801D79C8)
/* 68E08 800AE608 C42079C8 */  lwc1       $f0, %lo(D_801D79C8)($at)
/* 68E0C 800AE60C 3C01801D */  lui        $at, %hi(D_801D79CC)
/* 68E10 800AE610 C42279CC */  lwc1       $f2, %lo(D_801D79CC)($at)
/* 68E14 800AE614 46000182 */  mul.s      $f6, $f0, $f0
/* 68E18 800AE618 3C01801D */  lui        $at, %hi(D_801D79D0)
/* 68E1C 800AE61C C42E79D0 */  lwc1       $f14, %lo(D_801D79D0)($at)
/* 68E20 800AE620 46021202 */  mul.s      $f8, $f2, $f2
/* 68E24 800AE624 AFA30020 */  sw         $v1, 0x20($sp)
/* 68E28 800AE628 460E7482 */  mul.s      $f18, $f14, $f14
/* 68E2C 800AE62C 46083280 */  add.s      $f10, $f6, $f8
/* 68E30 800AE630 0C031C04 */  jal        func_800C7010
/* 68E34 800AE634 46125300 */   add.s     $f12, $f10, $f18
/* 68E38 800AE638 8FA30020 */  lw         $v1, 0x20($sp)
/* 68E3C 800AE63C 3C01801D */  lui        $at, %hi(D_801D79D4)
/* 68E40 800AE640 E42079D4 */  swc1       $f0, %lo(D_801D79D4)($at)
/* 68E44 800AE644 8C6E1C54 */  lw         $t6, 0x1C54($v1)
/* 68E48 800AE648 3C04801D */  lui        $a0, %hi(D_801D79C0)
/* 68E4C 800AE64C 248479C0 */  addiu      $a0, $a0, %lo(D_801D79C0)
/* 68E50 800AE650 15C00014 */  bnez       $t6, .L800AE6A4
/* 68E54 800AE654 3C01801D */   lui       $at, %hi(D_801D79BC)
/* 68E58 800AE658 C42C79BC */  lwc1       $f12, %lo(D_801D79BC)($at)
/* 68E5C 800AE65C 3C01801D */  lui        $at, %hi(D_801D79C4)
/* 68E60 800AE660 C42E79C4 */  lwc1       $f14, %lo(D_801D79C4)($at)
/* 68E64 800AE664 0C0134C3 */  jal        func_8004D30C
/* 68E68 800AE668 AFA30020 */   sw        $v1, 0x20($sp)
/* 68E6C 800AE66C 3C02801D */  lui        $v0, %hi(D_801D7A00)
/* 68E70 800AE670 24427A00 */  addiu      $v0, $v0, %lo(D_801D7A00)
/* 68E74 800AE674 3C04801D */  lui        $a0, %hi(D_801D79C0)
/* 68E78 800AE678 248479C0 */  addiu      $a0, $a0, %lo(D_801D79C0)
/* 68E7C 800AE67C E4400000 */  swc1       $f0, 0x0($v0)
/* 68E80 800AE680 C4440000 */  lwc1       $f4, 0x0($v0)
/* 68E84 800AE684 C4900000 */  lwc1       $f16, 0x0($a0)
/* 68E88 800AE688 8FA30020 */  lw         $v1, 0x20($sp)
/* 68E8C 800AE68C 4604803E */  c.le.s     $f16, $f4
/* 68E90 800AE690 00000000 */  nop
/* 68E94 800AE694 45000011 */  bc1f       .L800AE6DC
/* 68E98 800AE698 00000000 */   nop
/* 68E9C 800AE69C 1000000F */  b          .L800AE6DC
/* 68EA0 800AE6A0 AC601C58 */   sw        $zero, 0x1C58($v1)
.L800AE6A4:
/* 68EA4 800AE6A4 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 68EA8 800AE6A8 44814000 */  mtc1       $at, $f8
/* 68EAC 800AE6AC C4860000 */  lwc1       $f6, 0x0($a0)
/* 68EB0 800AE6B0 3C014140 */  lui        $at, (0x41400000 >> 16)
/* 68EB4 800AE6B4 44812000 */  mtc1       $at, $f4
/* 68EB8 800AE6B8 46083281 */  sub.s      $f10, $f6, $f8
/* 68EBC 800AE6BC 3C02801D */  lui        $v0, %hi(D_801D7A00)
/* 68EC0 800AE6C0 24427A00 */  addiu      $v0, $v0, %lo(D_801D7A00)
/* 68EC4 800AE6C4 240F0001 */  addiu      $t7, $zero, 0x1
/* 68EC8 800AE6C8 E48A0000 */  swc1       $f10, 0x0($a0)
/* 68ECC 800AE6CC C4920000 */  lwc1       $f18, 0x0($a0)
/* 68ED0 800AE6D0 AC6F1C58 */  sw         $t7, 0x1C58($v1)
/* 68ED4 800AE6D4 46049400 */  add.s      $f16, $f18, $f4
/* 68ED8 800AE6D8 E4500000 */  swc1       $f16, 0x0($v0)
.L800AE6DC:
/* 68EDC 800AE6DC 3C01801D */  lui        $at, %hi(D_801D79EC)
/* 68EE0 800AE6E0 C42079EC */  lwc1       $f0, %lo(D_801D79EC)($at)
/* 68EE4 800AE6E4 3C01801D */  lui        $at, %hi(D_801D79F4)
/* 68EE8 800AE6E8 C42279F4 */  lwc1       $f2, %lo(D_801D79F4)($at)
/* 68EEC 800AE6EC 46000182 */  mul.s      $f6, $f0, $f0
/* 68EF0 800AE6F0 00000000 */  nop
/* 68EF4 800AE6F4 46021202 */  mul.s      $f8, $f2, $f2
/* 68EF8 800AE6F8 0C031C04 */  jal        func_800C7010
/* 68EFC 800AE6FC 46083300 */   add.s     $f12, $f6, $f8
/* 68F00 800AE700 44805000 */  mtc1       $zero, $f10
/* 68F04 800AE704 00000000 */  nop
/* 68F08 800AE708 4600503C */  c.lt.s     $f10, $f0
/* 68F0C 800AE70C 00000000 */  nop
/* 68F10 800AE710 4500001C */  bc1f       .L800AE784
/* 68F14 800AE714 3C01801D */   lui       $at, %hi(D_801D79EC)
/* 68F18 800AE718 C43279EC */  lwc1       $f18, %lo(D_801D79EC)($at)
/* 68F1C 800AE71C 3C01801D */  lui        $at, %hi(D_801D79F4)
/* 68F20 800AE720 C42479F4 */  lwc1       $f4, %lo(D_801D79F4)($at)
/* 68F24 800AE724 46009083 */  div.s      $f2, $f18, $f0
/* 68F28 800AE728 3C01801D */  lui        $at, %hi(D_801D79C8)
/* 68F2C 800AE72C C43079C8 */  lwc1       $f16, %lo(D_801D79C8)($at)
/* 68F30 800AE730 3C01801D */  lui        $at, %hi(D_801D79D0)
/* 68F34 800AE734 C42879D0 */  lwc1       $f8, %lo(D_801D79D0)($at)
/* 68F38 800AE738 3C02801D */  lui        $v0, %hi(D_801D79D8)
/* 68F3C 800AE73C 244279D8 */  addiu      $v0, $v0, %lo(D_801D79D8)
/* 68F40 800AE740 46002303 */  div.s      $f12, $f4, $f0
/* 68F44 800AE744 44802000 */  mtc1       $zero, $f4
/* 68F48 800AE748 46028182 */  mul.s      $f6, $f16, $f2
/* 68F4C 800AE74C 00000000 */  nop
/* 68F50 800AE750 460C4282 */  mul.s      $f10, $f8, $f12
/* 68F54 800AE754 460A3480 */  add.s      $f18, $f6, $f10
/* 68F58 800AE758 E4520000 */  swc1       $f18, 0x0($v0)
/* 68F5C 800AE75C C44E0000 */  lwc1       $f14, 0x0($v0)
/* 68F60 800AE760 460E203E */  c.le.s     $f4, $f14
/* 68F64 800AE764 00000000 */  nop
/* 68F68 800AE768 45000003 */  bc1f       .L800AE778
/* 68F6C 800AE76C 00000000 */   nop
/* 68F70 800AE770 10000010 */  b          .L800AE7B4
/* 68F74 800AE774 E44E0000 */   swc1      $f14, 0x0($v0)
.L800AE778:
/* 68F78 800AE778 46007407 */  neg.s      $f16, $f14
/* 68F7C 800AE77C 1000000D */  b          .L800AE7B4
/* 68F80 800AE780 E4500000 */   swc1      $f16, 0x0($v0)
.L800AE784:
/* 68F84 800AE784 3C01801D */  lui        $at, %hi(D_801D79C8)
/* 68F88 800AE788 C42079C8 */  lwc1       $f0, %lo(D_801D79C8)($at)
/* 68F8C 800AE78C 3C01801D */  lui        $at, %hi(D_801D79D0)
/* 68F90 800AE790 C42E79D0 */  lwc1       $f14, %lo(D_801D79D0)($at)
/* 68F94 800AE794 46000202 */  mul.s      $f8, $f0, $f0
/* 68F98 800AE798 00000000 */  nop
/* 68F9C 800AE79C 460E7182 */  mul.s      $f6, $f14, $f14
/* 68FA0 800AE7A0 0C031C04 */  jal        func_800C7010
/* 68FA4 800AE7A4 46064300 */   add.s     $f12, $f8, $f6
/* 68FA8 800AE7A8 3C02801D */  lui        $v0, %hi(D_801D79D8)
/* 68FAC 800AE7AC 244279D8 */  addiu      $v0, $v0, %lo(D_801D79D8)
/* 68FB0 800AE7B0 E4400000 */  swc1       $f0, 0x0($v0)
.L800AE7B4:
/* 68FB4 800AE7B4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 68FB8 800AE7B8 27BD0048 */  addiu      $sp, $sp, 0x48
/* 68FBC 800AE7BC 03E00008 */  jr         $ra
/* 68FC0 800AE7C0 00000000 */   nop

glabel func_800AE7C4
/* 68FC4 800AE7C4 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 68FC8 800AE7C8 3C02800E */  lui        $v0, %hi(D_800E6DB4)
/* 68FCC 800AE7CC 24426DB4 */  addiu      $v0, $v0, %lo(D_800E6DB4)
/* 68FD0 800AE7D0 8C4E0000 */  lw         $t6, 0x0($v0)
/* 68FD4 800AE7D4 AFBF003C */  sw         $ra, 0x3C($sp)
/* 68FD8 800AE7D8 AFBE0038 */  sw         $fp, 0x38($sp)
/* 68FDC 800AE7DC AFB70034 */  sw         $s7, 0x34($sp)
/* 68FE0 800AE7E0 AFB60030 */  sw         $s6, 0x30($sp)
/* 68FE4 800AE7E4 AFB5002C */  sw         $s5, 0x2C($sp)
/* 68FE8 800AE7E8 AFB40028 */  sw         $s4, 0x28($sp)
/* 68FEC 800AE7EC AFB30024 */  sw         $s3, 0x24($sp)
/* 68FF0 800AE7F0 AFB20020 */  sw         $s2, 0x20($sp)
/* 68FF4 800AE7F4 AFB1001C */  sw         $s1, 0x1C($sp)
/* 68FF8 800AE7F8 11C00002 */  beqz       $t6, .L800AE804
/* 68FFC 800AE7FC AFB00018 */   sw        $s0, 0x18($sp)
/* 69000 800AE800 AC400000 */  sw         $zero, 0x0($v0)
.L800AE804:
/* 69004 800AE804 3C0F801A */  lui        $t7, %hi(D_801982F0)
/* 69008 800AE808 8DEF82F0 */  lw         $t7, %lo(D_801982F0)($t7)
/* 6900C 800AE80C 3C14801D */  lui        $s4, %hi(D_801D0790)
/* 69010 800AE810 26940790 */  addiu      $s4, $s4, %lo(D_801D0790)
/* 69014 800AE814 0C07B4B8 */  jal        func_801ED2E0
/* 69018 800AE818 AE8F0000 */   sw        $t7, 0x0($s4)
/* 6901C 800AE81C 3C02801D */  lui        $v0, %hi(D_801D7B28)
/* 69020 800AE820 3C03801D */  lui        $v1, %hi(D_801D7B30)
/* 69024 800AE824 24637B30 */  addiu      $v1, $v1, %lo(D_801D7B30)
/* 69028 800AE828 24427B28 */  addiu      $v0, $v0, %lo(D_801D7B28)
/* 6902C 800AE82C 24180000 */  addiu      $t8, $zero, 0x0
/* 69030 800AE830 24190000 */  addiu      $t9, $zero, 0x0
/* 69034 800AE834 AC590004 */  sw         $t9, 0x4($v0)
/* 69038 800AE838 AC790004 */  sw         $t9, 0x4($v1)
/* 6903C 800AE83C AC580000 */  sw         $t8, 0x0($v0)
/* 69040 800AE840 AC780000 */  sw         $t8, 0x0($v1)
/* 69044 800AE844 3C01801D */  lui        $at, %hi(D_801D7B20)
/* 69048 800AE848 AC387B20 */  sw         $t8, %lo(D_801D7B20)($at)
/* 6904C 800AE84C AC397B24 */  sw         $t9, %lo(D_801D7B24)($at)
/* 69050 800AE850 3C04801D */  lui        $a0, %hi(D_801D7B48)
/* 69054 800AE854 3C05801D */  lui        $a1, %hi(D_801D7B50)
/* 69058 800AE858 24A57B50 */  addiu      $a1, $a1, %lo(D_801D7B50)
/* 6905C 800AE85C 24847B48 */  addiu      $a0, $a0, %lo(D_801D7B48)
/* 69060 800AE860 240E0000 */  addiu      $t6, $zero, 0x0
/* 69064 800AE864 240F0000 */  addiu      $t7, $zero, 0x0
/* 69068 800AE868 AC8F0004 */  sw         $t7, 0x4($a0)
/* 6906C 800AE86C ACAF0004 */  sw         $t7, 0x4($a1)
/* 69070 800AE870 AC8E0000 */  sw         $t6, 0x0($a0)
/* 69074 800AE874 ACAE0000 */  sw         $t6, 0x0($a1)
/* 69078 800AE878 3C01801D */  lui        $at, %hi(D_801D7B40)
/* 6907C 800AE87C AC2E7B40 */  sw         $t6, %lo(D_801D7B40)($at)
/* 69080 800AE880 AC2F7B44 */  sw         $t7, %lo(D_801D7B44)($at)
/* 69084 800AE884 3C01801D */  lui        $at, %hi(D_801D7B58)
/* 69088 800AE888 24190000 */  addiu      $t9, $zero, 0x0
/* 6908C 800AE88C 24180000 */  addiu      $t8, $zero, 0x0
/* 69090 800AE890 AC387B58 */  sw         $t8, %lo(D_801D7B58)($at)
/* 69094 800AE894 AC397B5C */  sw         $t9, %lo(D_801D7B5C)($at)
/* 69098 800AE898 3C01801D */  lui        $at, %hi(D_801D7B60)
/* 6909C 800AE89C AC207B60 */  sw         $zero, %lo(D_801D7B60)($at)
/* 690A0 800AE8A0 3C01801D */  lui        $at, %hi(D_801D7B68)
/* 690A4 800AE8A4 3C07801D */  lui        $a3, %hi(D_801D7A04)
/* 690A8 800AE8A8 3C08801D */  lui        $t0, %hi(D_801D7A08)
/* 690AC 800AE8AC AC207B68 */  sw         $zero, %lo(D_801D7B68)($at)
/* 690B0 800AE8B0 25087A08 */  addiu      $t0, $t0, %lo(D_801D7A08)
/* 690B4 800AE8B4 24E77A04 */  addiu      $a3, $a3, %lo(D_801D7A04)
/* 690B8 800AE8B8 ACE00000 */  sw         $zero, 0x0($a3)
/* 690BC 800AE8BC AD000000 */  sw         $zero, 0x0($t0)
/* 690C0 800AE8C0 3C06800E */  lui        $a2, %hi(D_800D8170)
/* 690C4 800AE8C4 8CC68170 */  lw         $a2, %lo(D_800D8170)($a2)
/* 690C8 800AE8C8 24090001 */  addiu      $t1, $zero, 0x1
/* 690CC 800AE8CC 00002825 */  or         $a1, $zero, $zero
/* 690D0 800AE8D0 14C00013 */  bnez       $a2, .L800AE920
/* 690D4 800AE8D4 240A0003 */   addiu     $t2, $zero, 0x3
/* 690D8 800AE8D8 3C02801D */  lui        $v0, %hi(D_801CF060)
/* 690DC 800AE8DC AD090000 */  sw         $t1, 0x0($t0)
/* 690E0 800AE8E0 2442F060 */  addiu      $v0, $v0, %lo(D_801CF060)
/* 690E4 800AE8E4 2404001E */  addiu      $a0, $zero, 0x1E
/* 690E8 800AE8E8 24030006 */  addiu      $v1, $zero, 0x6
.L800AE8EC:
/* 690EC 800AE8EC 8C4F0000 */  lw         $t7, 0x0($v0)
/* 690F0 800AE8F0 546F0004 */  bnel       $v1, $t7, .L800AE904
/* 690F4 800AE8F4 24A50001 */   addiu     $a1, $a1, 0x1
/* 690F8 800AE8F8 10000004 */  b          .L800AE90C
/* 690FC 800AE8FC ACE50000 */   sw        $a1, 0x0($a3)
/* 69100 800AE900 24A50001 */  addiu      $a1, $a1, 0x1
.L800AE904:
/* 69104 800AE904 14A4FFF9 */  bne        $a1, $a0, .L800AE8EC
/* 69108 800AE908 244200BC */   addiu     $v0, $v0, 0xBC
.L800AE90C:
/* 6910C 800AE90C 8E820000 */  lw         $v0, 0x0($s4)
/* 69110 800AE910 28410004 */  slti       $at, $v0, 0x4
/* 69114 800AE914 10200002 */  beqz       $at, .L800AE920
/* 69118 800AE918 24580001 */   addiu     $t8, $v0, 0x1
/* 6911C 800AE91C AE980000 */  sw         $t8, 0x0($s4)
.L800AE920:
/* 69120 800AE920 00CA0019 */  multu      $a2, $t2
/* 69124 800AE924 3C0E800E */  lui        $t6, %hi(D_800E6D90)
/* 69128 800AE928 25CE6D90 */  addiu      $t6, $t6, %lo(D_800E6D90)
/* 6912C 800AE92C 3C01800E */  lui        $at, %hi(D_800E6D84)
/* 69130 800AE930 24090001 */  addiu      $t1, $zero, 0x1
/* 69134 800AE934 0000C812 */  mflo       $t9
/* 69138 800AE938 032E1821 */  addu       $v1, $t9, $t6
/* 6913C 800AE93C 906F0000 */  lbu        $t7, 0x0($v1)
/* 69140 800AE940 AC2F6D84 */  sw         $t7, %lo(D_800E6D84)($at)
/* 69144 800AE944 90780001 */  lbu        $t8, 0x1($v1)
/* 69148 800AE948 3C01800E */  lui        $at, %hi(D_800E6D88)
/* 6914C 800AE94C AC386D88 */  sw         $t8, %lo(D_800E6D88)($at)
/* 69150 800AE950 90790002 */  lbu        $t9, 0x2($v1)
/* 69154 800AE954 3C01800E */  lui        $at, %hi(D_800E6D8C)
/* 69158 800AE958 AC396D8C */  sw         $t9, %lo(D_800E6D8C)($at)
/* 6915C 800AE95C 2CC10008 */  sltiu      $at, $a2, 0x8
/* 69160 800AE960 1020000A */  beqz       $at, L800AE98C
/* 69164 800AE964 8E820000 */   lw        $v0, 0x0($s4)
/* 69168 800AE968 00067080 */  sll        $t6, $a2, 2
/* 6916C 800AE96C 3C01800F */  lui        $at, %hi(jtbl_800EBB50_main)
/* 69170 800AE970 002E0821 */  addu       $at, $at, $t6
/* 69174 800AE974 8C2EBB50 */  lw         $t6, %lo(jtbl_800EBB50_main)($at)
/* 69178 800AE978 01C00008 */  jr         $t6
/* 6917C 800AE97C 00000000 */   nop
glabel L800AE980
/* 69180 800AE980 3C01801D */  lui        $at, %hi(D_801D7A14)
/* 69184 800AE984 10000003 */  b          .L800AE994
/* 69188 800AE988 AC297A14 */   sw        $t1, %lo(D_801D7A14)($at)
glabel L800AE98C
/* 6918C 800AE98C 3C01801D */  lui        $at, %hi(D_801D7A14)
/* 69190 800AE990 AC207A14 */  sw         $zero, %lo(D_801D7A14)($at)
.L800AE994:
/* 69194 800AE994 1840001F */  blez       $v0, .L800AEA14
/* 69198 800AE998 00009025 */   or        $s2, $zero, $zero
/* 6919C 800AE99C 3C11801D */  lui        $s1, %hi(D_801D0798)
/* 691A0 800AE9A0 3C0B800E */  lui        $t3, %hi(D_800E6D60)
/* 691A4 800AE9A4 256B6D60 */  addiu      $t3, $t3, %lo(D_800E6D60)
/* 691A8 800AE9A8 26310798 */  addiu      $s1, $s1, %lo(D_801D0798)
/* 691AC 800AE9AC AD710000 */  sw         $s1, 0x0($t3)
.L800AE9B0:
/* 691B0 800AE9B0 24020FC0 */  addiu      $v0, $zero, 0xFC0
.L800AE9B4:
/* 691B4 800AE9B4 8D6F0000 */  lw         $t7, 0x0($t3)
/* 691B8 800AE9B8 01E2C021 */  addu       $t8, $t7, $v0
/* 691BC 800AE9BC 2442FFC0 */  addiu      $v0, $v0, -0x40
/* 691C0 800AE9C0 0441FFFC */  bgez       $v0, .L800AE9B4
/* 691C4 800AE9C4 AF000038 */   sw        $zero, 0x38($t8)
/* 691C8 800AE9C8 240209D8 */  addiu      $v0, $zero, 0x9D8
.L800AE9CC:
/* 691CC 800AE9CC 8D790000 */  lw         $t9, 0x0($t3)
/* 691D0 800AE9D0 03227021 */  addu       $t6, $t9, $v0
/* 691D4 800AE9D4 2442FFD8 */  addiu      $v0, $v0, -0x28
/* 691D8 800AE9D8 0441FFFC */  bgez       $v0, .L800AE9CC
/* 691DC 800AE9DC ADC01020 */   sw        $zero, 0x1020($t6)
/* 691E0 800AE9E0 24020078 */  addiu      $v0, $zero, 0x78
.L800AE9E4:
/* 691E4 800AE9E4 8D6F0000 */  lw         $t7, 0x0($t3)
/* 691E8 800AE9E8 01E2C021 */  addu       $t8, $t7, $v0
/* 691EC 800AE9EC 2442FFD8 */  addiu      $v0, $v0, -0x28
/* 691F0 800AE9F0 0441FFFC */  bgez       $v0, .L800AE9E4
/* 691F4 800AE9F4 AF001A20 */   sw        $zero, 0x1A20($t8)
/* 691F8 800AE9F8 8E820000 */  lw         $v0, 0x0($s4)
/* 691FC 800AE9FC 26520001 */  addiu      $s2, $s2, 0x1
/* 69200 800AEA00 26311C74 */  addiu      $s1, $s1, 0x1C74
/* 69204 800AEA04 0242082A */  slt        $at, $s2, $v0
/* 69208 800AEA08 5420FFE9 */  bnel       $at, $zero, .L800AE9B0
/* 6920C 800AEA0C AD710000 */   sw        $s1, 0x0($t3)
/* 69210 800AEA10 00009025 */  or         $s2, $zero, $zero
.L800AEA14:
/* 69214 800AEA14 18400144 */  blez       $v0, .L800AEF28
/* 69218 800AEA18 3C11801D */   lui       $s1, %hi(D_801D0798)
/* 6921C 800AEA1C 3C13801D */  lui        $s3, %hi(D_801D7A00)
/* 69220 800AEA20 26737A00 */  addiu      $s3, $s3, %lo(D_801D7A00)
/* 69224 800AEA24 26310798 */  addiu      $s1, $s1, %lo(D_801D0798)
/* 69228 800AEA28 24100008 */  addiu      $s0, $zero, 0x8
/* 6922C 800AEA2C 02402025 */  or         $a0, $s2, $zero
.L800AEA30:
/* 69230 800AEA30 00002825 */  or         $a1, $zero, $zero
/* 69234 800AEA34 0C02B884 */  jal        func_800AE210
/* 69238 800AEA38 AFA0005C */   sw        $zero, 0x5C($sp)
/* 6923C 800AEA3C 44806000 */  mtc1       $zero, $f12
/* 69240 800AEA40 3C0B800E */  lui        $t3, %hi(D_800E6D60)
/* 69244 800AEA44 256B6D60 */  addiu      $t3, $t3, %lo(D_800E6D60)
/* 69248 800AEA48 8FA5005C */  lw         $a1, 0x5C($sp)
/* 6924C 800AEA4C AD710000 */  sw         $s1, 0x0($t3)
/* 69250 800AEA50 E62C1C68 */  swc1       $f12, 0x1C68($s1)
/* 69254 800AEA54 8D6E0000 */  lw         $t6, 0x0($t3)
/* 69258 800AEA58 3C06801D */  lui        $a2, %hi(D_801D79C0)
/* 6925C 800AEA5C 24C679C0 */  addiu      $a2, $a2, %lo(D_801D79C0)
/* 69260 800AEA60 E5CC1C6C */  swc1       $f12, 0x1C6C($t6)
/* 69264 800AEA64 8D6F0000 */  lw         $t7, 0x0($t3)
/* 69268 800AEA68 3C03800E */  lui        $v1, %hi(D_800E6D7C)
/* 6926C 800AEA6C 3C07801D */  lui        $a3, %hi(D_801D79BC)
/* 69270 800AEA70 ADE01C3C */  sw         $zero, 0x1C3C($t7)
/* 69274 800AEA74 C4C60000 */  lwc1       $f6, 0x0($a2)
/* 69278 800AEA78 C6640000 */  lwc1       $f4, 0x0($s3)
/* 6927C 800AEA7C 3C08801D */  lui        $t0, %hi(D_801D79C4)
/* 69280 800AEA80 44801000 */  mtc1       $zero, $f2
/* 69284 800AEA84 4604303E */  c.le.s     $f6, $f4
/* 69288 800AEA88 250879C4 */  addiu      $t0, $t0, %lo(D_801D79C4)
/* 6928C 800AEA8C 24E779BC */  addiu      $a3, $a3, %lo(D_801D79BC)
/* 69290 800AEA90 24636D7C */  addiu      $v1, $v1, %lo(D_800E6D7C)
/* 69294 800AEA94 24090001 */  addiu      $t1, $zero, 0x1
/* 69298 800AEA98 240A0003 */  addiu      $t2, $zero, 0x3
/* 6929C 800AEA9C 45000002 */  bc1f       .L800AEAA8
/* 692A0 800AEAA0 00002025 */   or        $a0, $zero, $zero
/* 692A4 800AEAA4 24040001 */  addiu      $a0, $zero, 0x1
.L800AEAA8:
/* 692A8 800AEAA8 8D780000 */  lw         $t8, 0x0($t3)
/* 692AC 800AEAAC AF041C30 */  sw         $a0, 0x1C30($t8)
/* 692B0 800AEAB0 8D790000 */  lw         $t9, 0x0($t3)
/* 692B4 800AEAB4 AF241C2C */  sw         $a0, 0x1C2C($t9)
/* 692B8 800AEAB8 8D6E0000 */  lw         $t6, 0x0($t3)
/* 692BC 800AEABC ADC01C48 */  sw         $zero, 0x1C48($t6)
/* 692C0 800AEAC0 8D620000 */  lw         $v0, 0x0($t3)
/* 692C4 800AEAC4 8C441C48 */  lw         $a0, 0x1C48($v0)
/* 692C8 800AEAC8 AC441C44 */  sw         $a0, 0x1C44($v0)
/* 692CC 800AEACC 8D6F0000 */  lw         $t7, 0x0($t3)
/* 692D0 800AEAD0 ADE41C40 */  sw         $a0, 0x1C40($t7)
/* 692D4 800AEAD4 8D780000 */  lw         $t8, 0x0($t3)
/* 692D8 800AEAD8 AF001C38 */  sw         $zero, 0x1C38($t8)
/* 692DC 800AEADC 8D790000 */  lw         $t9, 0x0($t3)
/* 692E0 800AEAE0 AF201C50 */  sw         $zero, 0x1C50($t9)
/* 692E4 800AEAE4 8D6E0000 */  lw         $t6, 0x0($t3)
/* 692E8 800AEAE8 ADC01C58 */  sw         $zero, 0x1C58($t6)
/* 692EC 800AEAEC 8D620000 */  lw         $v0, 0x0($t3)
/* 692F0 800AEAF0 8C4F1C58 */  lw         $t7, 0x1C58($v0)
/* 692F4 800AEAF4 AC4F1C54 */  sw         $t7, 0x1C54($v0)
/* 692F8 800AEAF8 8D780000 */  lw         $t8, 0x0($t3)
/* 692FC 800AEAFC AF001C60 */  sw         $zero, 0x1C60($t8)
/* 69300 800AEB00 8D620000 */  lw         $v0, 0x0($t3)
/* 69304 800AEB04 8C591C60 */  lw         $t9, 0x1C60($v0)
/* 69308 800AEB08 AC591C5C */  sw         $t9, 0x1C5C($v0)
/* 6930C 800AEB0C 8D6E0000 */  lw         $t6, 0x0($t3)
/* 69310 800AEB10 25CF1AA0 */  addiu      $t7, $t6, 0x1AA0
/* 69314 800AEB14 AC6F0000 */  sw         $t7, 0x0($v1)
/* 69318 800AEB18 24A50004 */  addiu      $a1, $a1, 0x4
/* 6931C 800AEB1C 10B00080 */  beq        $a1, $s0, .L800AED20
/* 69320 800AEB20 8C780000 */   lw        $t8, 0x0($v1)
.L800AEB24:
/* 69324 800AEB24 AF090024 */  sw         $t1, 0x24($t8)
/* 69328 800AEB28 8C790000 */  lw         $t9, 0x0($v1)
/* 6932C 800AEB2C 24A50004 */  addiu      $a1, $a1, 0x4
/* 69330 800AEB30 AF200028 */  sw         $zero, 0x28($t9)
/* 69334 800AEB34 C4E80000 */  lwc1       $f8, 0x0($a3)
/* 69338 800AEB38 8C6E0000 */  lw         $t6, 0x0($v1)
/* 6933C 800AEB3C E5C8000C */  swc1       $f8, 0xC($t6)
/* 69340 800AEB40 8C620000 */  lw         $v0, 0x0($v1)
/* 69344 800AEB44 C44A000C */  lwc1       $f10, 0xC($v0)
/* 69348 800AEB48 E44A0000 */  swc1       $f10, 0x0($v0)
/* 6934C 800AEB4C C4D00000 */  lwc1       $f16, 0x0($a2)
/* 69350 800AEB50 8C6F0000 */  lw         $t7, 0x0($v1)
/* 69354 800AEB54 E5F00010 */  swc1       $f16, 0x10($t7)
/* 69358 800AEB58 8C620000 */  lw         $v0, 0x0($v1)
/* 6935C 800AEB5C C4520010 */  lwc1       $f18, 0x10($v0)
/* 69360 800AEB60 E4520004 */  swc1       $f18, 0x4($v0)
/* 69364 800AEB64 C5040000 */  lwc1       $f4, 0x0($t0)
/* 69368 800AEB68 8C780000 */  lw         $t8, 0x0($v1)
/* 6936C 800AEB6C E7040014 */  swc1       $f4, 0x14($t8)
/* 69370 800AEB70 8C620000 */  lw         $v0, 0x0($v1)
/* 69374 800AEB74 C4460014 */  lwc1       $f6, 0x14($v0)
/* 69378 800AEB78 E4460008 */  swc1       $f6, 0x8($v0)
/* 6937C 800AEB7C 8C790000 */  lw         $t9, 0x0($v1)
/* 69380 800AEB80 E7220020 */  swc1       $f2, 0x20($t9)
/* 69384 800AEB84 8C620000 */  lw         $v0, 0x0($v1)
/* 69388 800AEB88 C4400020 */  lwc1       $f0, 0x20($v0)
/* 6938C 800AEB8C E440001C */  swc1       $f0, 0x1C($v0)
/* 69390 800AEB90 8C6E0000 */  lw         $t6, 0x0($v1)
/* 69394 800AEB94 E5C00018 */  swc1       $f0, 0x18($t6)
/* 69398 800AEB98 8C6F0000 */  lw         $t7, 0x0($v1)
/* 6939C 800AEB9C 25F80030 */  addiu      $t8, $t7, 0x30
/* 693A0 800AEBA0 AC780000 */  sw         $t8, 0x0($v1)
/* 693A4 800AEBA4 AF090024 */  sw         $t1, 0x24($t8)
/* 693A8 800AEBA8 8C6E0000 */  lw         $t6, 0x0($v1)
/* 693AC 800AEBAC ADC00028 */  sw         $zero, 0x28($t6)
/* 693B0 800AEBB0 C4E80000 */  lwc1       $f8, 0x0($a3)
/* 693B4 800AEBB4 8C6F0000 */  lw         $t7, 0x0($v1)
/* 693B8 800AEBB8 E5E8000C */  swc1       $f8, 0xC($t7)
/* 693BC 800AEBBC 8C620000 */  lw         $v0, 0x0($v1)
/* 693C0 800AEBC0 C44A000C */  lwc1       $f10, 0xC($v0)
/* 693C4 800AEBC4 E44A0000 */  swc1       $f10, 0x0($v0)
/* 693C8 800AEBC8 C4D00000 */  lwc1       $f16, 0x0($a2)
/* 693CC 800AEBCC 8C780000 */  lw         $t8, 0x0($v1)
/* 693D0 800AEBD0 E7100010 */  swc1       $f16, 0x10($t8)
/* 693D4 800AEBD4 8C620000 */  lw         $v0, 0x0($v1)
/* 693D8 800AEBD8 C4520010 */  lwc1       $f18, 0x10($v0)
/* 693DC 800AEBDC E4520004 */  swc1       $f18, 0x4($v0)
/* 693E0 800AEBE0 C5040000 */  lwc1       $f4, 0x0($t0)
/* 693E4 800AEBE4 8C790000 */  lw         $t9, 0x0($v1)
/* 693E8 800AEBE8 E7240014 */  swc1       $f4, 0x14($t9)
/* 693EC 800AEBEC 8C620000 */  lw         $v0, 0x0($v1)
/* 693F0 800AEBF0 C4460014 */  lwc1       $f6, 0x14($v0)
/* 693F4 800AEBF4 E4460008 */  swc1       $f6, 0x8($v0)
/* 693F8 800AEBF8 8C6E0000 */  lw         $t6, 0x0($v1)
/* 693FC 800AEBFC E5C20020 */  swc1       $f2, 0x20($t6)
/* 69400 800AEC00 8C620000 */  lw         $v0, 0x0($v1)
/* 69404 800AEC04 C4400020 */  lwc1       $f0, 0x20($v0)
/* 69408 800AEC08 E440001C */  swc1       $f0, 0x1C($v0)
/* 6940C 800AEC0C 8C6F0000 */  lw         $t7, 0x0($v1)
/* 69410 800AEC10 E5E00018 */  swc1       $f0, 0x18($t7)
/* 69414 800AEC14 8C780000 */  lw         $t8, 0x0($v1)
/* 69418 800AEC18 27190030 */  addiu      $t9, $t8, 0x30
/* 6941C 800AEC1C AC790000 */  sw         $t9, 0x0($v1)
/* 69420 800AEC20 AF290024 */  sw         $t1, 0x24($t9)
/* 69424 800AEC24 8C6F0000 */  lw         $t7, 0x0($v1)
/* 69428 800AEC28 ADE00028 */  sw         $zero, 0x28($t7)
/* 6942C 800AEC2C C4E80000 */  lwc1       $f8, 0x0($a3)
/* 69430 800AEC30 8C780000 */  lw         $t8, 0x0($v1)
/* 69434 800AEC34 E708000C */  swc1       $f8, 0xC($t8)
/* 69438 800AEC38 8C620000 */  lw         $v0, 0x0($v1)
/* 6943C 800AEC3C C44A000C */  lwc1       $f10, 0xC($v0)
/* 69440 800AEC40 E44A0000 */  swc1       $f10, 0x0($v0)
/* 69444 800AEC44 C4D00000 */  lwc1       $f16, 0x0($a2)
/* 69448 800AEC48 8C790000 */  lw         $t9, 0x0($v1)
/* 6944C 800AEC4C E7300010 */  swc1       $f16, 0x10($t9)
/* 69450 800AEC50 8C620000 */  lw         $v0, 0x0($v1)
/* 69454 800AEC54 C4520010 */  lwc1       $f18, 0x10($v0)
/* 69458 800AEC58 E4520004 */  swc1       $f18, 0x4($v0)
/* 6945C 800AEC5C C5040000 */  lwc1       $f4, 0x0($t0)
/* 69460 800AEC60 8C6E0000 */  lw         $t6, 0x0($v1)
/* 69464 800AEC64 E5C40014 */  swc1       $f4, 0x14($t6)
/* 69468 800AEC68 8C620000 */  lw         $v0, 0x0($v1)
/* 6946C 800AEC6C C4460014 */  lwc1       $f6, 0x14($v0)
/* 69470 800AEC70 E4460008 */  swc1       $f6, 0x8($v0)
/* 69474 800AEC74 8C6F0000 */  lw         $t7, 0x0($v1)
/* 69478 800AEC78 E5E20020 */  swc1       $f2, 0x20($t7)
/* 6947C 800AEC7C 8C620000 */  lw         $v0, 0x0($v1)
/* 69480 800AEC80 C4400020 */  lwc1       $f0, 0x20($v0)
/* 69484 800AEC84 E440001C */  swc1       $f0, 0x1C($v0)
/* 69488 800AEC88 8C780000 */  lw         $t8, 0x0($v1)
/* 6948C 800AEC8C E7000018 */  swc1       $f0, 0x18($t8)
/* 69490 800AEC90 8C790000 */  lw         $t9, 0x0($v1)
/* 69494 800AEC94 272E0030 */  addiu      $t6, $t9, 0x30
/* 69498 800AEC98 AC6E0000 */  sw         $t6, 0x0($v1)
/* 6949C 800AEC9C ADC90024 */  sw         $t1, 0x24($t6)
/* 694A0 800AECA0 8C780000 */  lw         $t8, 0x0($v1)
/* 694A4 800AECA4 AF000028 */  sw         $zero, 0x28($t8)
/* 694A8 800AECA8 C4E80000 */  lwc1       $f8, 0x0($a3)
/* 694AC 800AECAC 8C790000 */  lw         $t9, 0x0($v1)
/* 694B0 800AECB0 E728000C */  swc1       $f8, 0xC($t9)
/* 694B4 800AECB4 8C620000 */  lw         $v0, 0x0($v1)
/* 694B8 800AECB8 C44A000C */  lwc1       $f10, 0xC($v0)
/* 694BC 800AECBC E44A0000 */  swc1       $f10, 0x0($v0)
/* 694C0 800AECC0 C4D00000 */  lwc1       $f16, 0x0($a2)
/* 694C4 800AECC4 8C6E0000 */  lw         $t6, 0x0($v1)
/* 694C8 800AECC8 E5D00010 */  swc1       $f16, 0x10($t6)
/* 694CC 800AECCC 8C620000 */  lw         $v0, 0x0($v1)
/* 694D0 800AECD0 C4520010 */  lwc1       $f18, 0x10($v0)
/* 694D4 800AECD4 E4520004 */  swc1       $f18, 0x4($v0)
/* 694D8 800AECD8 C5040000 */  lwc1       $f4, 0x0($t0)
/* 694DC 800AECDC 8C6F0000 */  lw         $t7, 0x0($v1)
/* 694E0 800AECE0 E5E40014 */  swc1       $f4, 0x14($t7)
/* 694E4 800AECE4 8C620000 */  lw         $v0, 0x0($v1)
/* 694E8 800AECE8 C4460014 */  lwc1       $f6, 0x14($v0)
/* 694EC 800AECEC E4460008 */  swc1       $f6, 0x8($v0)
/* 694F0 800AECF0 8C780000 */  lw         $t8, 0x0($v1)
/* 694F4 800AECF4 E7020020 */  swc1       $f2, 0x20($t8)
/* 694F8 800AECF8 8C620000 */  lw         $v0, 0x0($v1)
/* 694FC 800AECFC C4400020 */  lwc1       $f0, 0x20($v0)
/* 69500 800AED00 E440001C */  swc1       $f0, 0x1C($v0)
/* 69504 800AED04 8C790000 */  lw         $t9, 0x0($v1)
/* 69508 800AED08 E7200018 */  swc1       $f0, 0x18($t9)
/* 6950C 800AED0C 8C6E0000 */  lw         $t6, 0x0($v1)
/* 69510 800AED10 25CF0030 */  addiu      $t7, $t6, 0x30
/* 69514 800AED14 AC6F0000 */  sw         $t7, 0x0($v1)
/* 69518 800AED18 14B0FF82 */  bne        $a1, $s0, .L800AEB24
/* 6951C 800AED1C 8C780000 */   lw        $t8, 0x0($v1)
.L800AED20:
/* 69520 800AED20 AF090024 */  sw         $t1, 0x24($t8)
/* 69524 800AED24 8C790000 */  lw         $t9, 0x0($v1)
/* 69528 800AED28 AF200028 */  sw         $zero, 0x28($t9)
/* 6952C 800AED2C 8C6E0000 */  lw         $t6, 0x0($v1)
/* 69530 800AED30 C4E80000 */  lwc1       $f8, 0x0($a3)
/* 69534 800AED34 E5C8000C */  swc1       $f8, 0xC($t6)
/* 69538 800AED38 8C620000 */  lw         $v0, 0x0($v1)
/* 6953C 800AED3C C44A000C */  lwc1       $f10, 0xC($v0)
/* 69540 800AED40 E44A0000 */  swc1       $f10, 0x0($v0)
/* 69544 800AED44 8C6F0000 */  lw         $t7, 0x0($v1)
/* 69548 800AED48 C4D00000 */  lwc1       $f16, 0x0($a2)
/* 6954C 800AED4C E5F00010 */  swc1       $f16, 0x10($t7)
/* 69550 800AED50 8C620000 */  lw         $v0, 0x0($v1)
/* 69554 800AED54 C4520010 */  lwc1       $f18, 0x10($v0)
/* 69558 800AED58 E4520004 */  swc1       $f18, 0x4($v0)
/* 6955C 800AED5C 8C780000 */  lw         $t8, 0x0($v1)
/* 69560 800AED60 C5040000 */  lwc1       $f4, 0x0($t0)
/* 69564 800AED64 E7040014 */  swc1       $f4, 0x14($t8)
/* 69568 800AED68 8C620000 */  lw         $v0, 0x0($v1)
/* 6956C 800AED6C C4460014 */  lwc1       $f6, 0x14($v0)
/* 69570 800AED70 E4460008 */  swc1       $f6, 0x8($v0)
/* 69574 800AED74 8C790000 */  lw         $t9, 0x0($v1)
/* 69578 800AED78 E7220020 */  swc1       $f2, 0x20($t9)
/* 6957C 800AED7C 8C620000 */  lw         $v0, 0x0($v1)
/* 69580 800AED80 C4400020 */  lwc1       $f0, 0x20($v0)
/* 69584 800AED84 E440001C */  swc1       $f0, 0x1C($v0)
/* 69588 800AED88 8C6E0000 */  lw         $t6, 0x0($v1)
/* 6958C 800AED8C E5C00018 */  swc1       $f0, 0x18($t6)
/* 69590 800AED90 8C6F0000 */  lw         $t7, 0x0($v1)
/* 69594 800AED94 25F80030 */  addiu      $t8, $t7, 0x30
/* 69598 800AED98 AC780000 */  sw         $t8, 0x0($v1)
/* 6959C 800AED9C AF090024 */  sw         $t1, 0x24($t8)
/* 695A0 800AEDA0 8C6E0000 */  lw         $t6, 0x0($v1)
/* 695A4 800AEDA4 ADC00028 */  sw         $zero, 0x28($t6)
/* 695A8 800AEDA8 8C6F0000 */  lw         $t7, 0x0($v1)
/* 695AC 800AEDAC C4E80000 */  lwc1       $f8, 0x0($a3)
/* 695B0 800AEDB0 E5E8000C */  swc1       $f8, 0xC($t7)
/* 695B4 800AEDB4 8C620000 */  lw         $v0, 0x0($v1)
/* 695B8 800AEDB8 C44A000C */  lwc1       $f10, 0xC($v0)
/* 695BC 800AEDBC E44A0000 */  swc1       $f10, 0x0($v0)
/* 695C0 800AEDC0 8C780000 */  lw         $t8, 0x0($v1)
/* 695C4 800AEDC4 C4D00000 */  lwc1       $f16, 0x0($a2)
/* 695C8 800AEDC8 E7100010 */  swc1       $f16, 0x10($t8)
/* 695CC 800AEDCC 8C620000 */  lw         $v0, 0x0($v1)
/* 695D0 800AEDD0 C4520010 */  lwc1       $f18, 0x10($v0)
/* 695D4 800AEDD4 E4520004 */  swc1       $f18, 0x4($v0)
/* 695D8 800AEDD8 8C790000 */  lw         $t9, 0x0($v1)
/* 695DC 800AEDDC C5040000 */  lwc1       $f4, 0x0($t0)
/* 695E0 800AEDE0 E7240014 */  swc1       $f4, 0x14($t9)
/* 695E4 800AEDE4 8C620000 */  lw         $v0, 0x0($v1)
/* 695E8 800AEDE8 C4460014 */  lwc1       $f6, 0x14($v0)
/* 695EC 800AEDEC E4460008 */  swc1       $f6, 0x8($v0)
/* 695F0 800AEDF0 8C6E0000 */  lw         $t6, 0x0($v1)
/* 695F4 800AEDF4 E5C20020 */  swc1       $f2, 0x20($t6)
/* 695F8 800AEDF8 8C620000 */  lw         $v0, 0x0($v1)
/* 695FC 800AEDFC C4400020 */  lwc1       $f0, 0x20($v0)
/* 69600 800AEE00 E440001C */  swc1       $f0, 0x1C($v0)
/* 69604 800AEE04 8C6F0000 */  lw         $t7, 0x0($v1)
/* 69608 800AEE08 E5E00018 */  swc1       $f0, 0x18($t7)
/* 6960C 800AEE0C 8C780000 */  lw         $t8, 0x0($v1)
/* 69610 800AEE10 27190030 */  addiu      $t9, $t8, 0x30
/* 69614 800AEE14 AC790000 */  sw         $t9, 0x0($v1)
/* 69618 800AEE18 AF290024 */  sw         $t1, 0x24($t9)
/* 6961C 800AEE1C 8C6F0000 */  lw         $t7, 0x0($v1)
/* 69620 800AEE20 ADE00028 */  sw         $zero, 0x28($t7)
/* 69624 800AEE24 8C780000 */  lw         $t8, 0x0($v1)
/* 69628 800AEE28 C4E80000 */  lwc1       $f8, 0x0($a3)
/* 6962C 800AEE2C E708000C */  swc1       $f8, 0xC($t8)
/* 69630 800AEE30 8C620000 */  lw         $v0, 0x0($v1)
/* 69634 800AEE34 C44A000C */  lwc1       $f10, 0xC($v0)
/* 69638 800AEE38 E44A0000 */  swc1       $f10, 0x0($v0)
/* 6963C 800AEE3C 8C790000 */  lw         $t9, 0x0($v1)
/* 69640 800AEE40 C4D00000 */  lwc1       $f16, 0x0($a2)
/* 69644 800AEE44 E7300010 */  swc1       $f16, 0x10($t9)
/* 69648 800AEE48 8C620000 */  lw         $v0, 0x0($v1)
/* 6964C 800AEE4C C4520010 */  lwc1       $f18, 0x10($v0)
/* 69650 800AEE50 E4520004 */  swc1       $f18, 0x4($v0)
/* 69654 800AEE54 8C6E0000 */  lw         $t6, 0x0($v1)
/* 69658 800AEE58 C5040000 */  lwc1       $f4, 0x0($t0)
/* 6965C 800AEE5C E5C40014 */  swc1       $f4, 0x14($t6)
/* 69660 800AEE60 8C620000 */  lw         $v0, 0x0($v1)
/* 69664 800AEE64 C4460014 */  lwc1       $f6, 0x14($v0)
/* 69668 800AEE68 E4460008 */  swc1       $f6, 0x8($v0)
/* 6966C 800AEE6C 8C6F0000 */  lw         $t7, 0x0($v1)
/* 69670 800AEE70 E5E20020 */  swc1       $f2, 0x20($t7)
/* 69674 800AEE74 8C620000 */  lw         $v0, 0x0($v1)
/* 69678 800AEE78 C4400020 */  lwc1       $f0, 0x20($v0)
/* 6967C 800AEE7C E440001C */  swc1       $f0, 0x1C($v0)
/* 69680 800AEE80 8C780000 */  lw         $t8, 0x0($v1)
/* 69684 800AEE84 E7000018 */  swc1       $f0, 0x18($t8)
/* 69688 800AEE88 8C790000 */  lw         $t9, 0x0($v1)
/* 6968C 800AEE8C 272E0030 */  addiu      $t6, $t9, 0x30
/* 69690 800AEE90 AC6E0000 */  sw         $t6, 0x0($v1)
/* 69694 800AEE94 ADC90024 */  sw         $t1, 0x24($t6)
/* 69698 800AEE98 8C780000 */  lw         $t8, 0x0($v1)
/* 6969C 800AEE9C AF000028 */  sw         $zero, 0x28($t8)
/* 696A0 800AEEA0 8C790000 */  lw         $t9, 0x0($v1)
/* 696A4 800AEEA4 C4E80000 */  lwc1       $f8, 0x0($a3)
/* 696A8 800AEEA8 E728000C */  swc1       $f8, 0xC($t9)
/* 696AC 800AEEAC 8C620000 */  lw         $v0, 0x0($v1)
/* 696B0 800AEEB0 C44A000C */  lwc1       $f10, 0xC($v0)
/* 696B4 800AEEB4 E44A0000 */  swc1       $f10, 0x0($v0)
/* 696B8 800AEEB8 8C6E0000 */  lw         $t6, 0x0($v1)
/* 696BC 800AEEBC C4D00000 */  lwc1       $f16, 0x0($a2)
/* 696C0 800AEEC0 E5D00010 */  swc1       $f16, 0x10($t6)
/* 696C4 800AEEC4 8C620000 */  lw         $v0, 0x0($v1)
/* 696C8 800AEEC8 C4520010 */  lwc1       $f18, 0x10($v0)
/* 696CC 800AEECC E4520004 */  swc1       $f18, 0x4($v0)
/* 696D0 800AEED0 8C6F0000 */  lw         $t7, 0x0($v1)
/* 696D4 800AEED4 C5040000 */  lwc1       $f4, 0x0($t0)
/* 696D8 800AEED8 E5E40014 */  swc1       $f4, 0x14($t7)
/* 696DC 800AEEDC 8C620000 */  lw         $v0, 0x0($v1)
/* 696E0 800AEEE0 C4460014 */  lwc1       $f6, 0x14($v0)
/* 696E4 800AEEE4 E4460008 */  swc1       $f6, 0x8($v0)
/* 696E8 800AEEE8 8C780000 */  lw         $t8, 0x0($v1)
/* 696EC 800AEEEC E7020020 */  swc1       $f2, 0x20($t8)
/* 696F0 800AEEF0 8C620000 */  lw         $v0, 0x0($v1)
/* 696F4 800AEEF4 C4400020 */  lwc1       $f0, 0x20($v0)
/* 696F8 800AEEF8 E440001C */  swc1       $f0, 0x1C($v0)
/* 696FC 800AEEFC 8C790000 */  lw         $t9, 0x0($v1)
/* 69700 800AEF00 E7200018 */  swc1       $f0, 0x18($t9)
/* 69704 800AEF04 8C6E0000 */  lw         $t6, 0x0($v1)
/* 69708 800AEF08 25CF0030 */  addiu      $t7, $t6, 0x30
/* 6970C 800AEF0C AC6F0000 */  sw         $t7, 0x0($v1)
/* 69710 800AEF10 8E980000 */  lw         $t8, 0x0($s4)
/* 69714 800AEF14 26520001 */  addiu      $s2, $s2, 0x1
/* 69718 800AEF18 26311C74 */  addiu      $s1, $s1, 0x1C74
/* 6971C 800AEF1C 0258082A */  slt        $at, $s2, $t8
/* 69720 800AEF20 5420FEC3 */  bnel       $at, $zero, .L800AEA30
/* 69724 800AEF24 02402025 */   or        $a0, $s2, $zero
.L800AEF28:
/* 69728 800AEF28 3C19801A */  lui        $t9, %hi(D_80198368)
/* 6972C 800AEF2C 27398368 */  addiu      $t9, $t9, %lo(D_80198368)
/* 69730 800AEF30 44806000 */  mtc1       $zero, $f12
/* 69734 800AEF34 AFB90040 */  sw         $t9, 0x40($sp)
/* 69738 800AEF38 0000A825 */  or         $s5, $zero, $zero
/* 6973C 800AEF3C 241308BC */  addiu      $s3, $zero, 0x8BC
/* 69740 800AEF40 2412FEC4 */  addiu      $s2, $zero, -0x13C
/* 69744 800AEF44 24110002 */  addiu      $s1, $zero, 0x2
/* 69748 800AEF48 24100007 */  addiu      $s0, $zero, 0x7
/* 6974C 800AEF4C 241F003F */  addiu      $ra, $zero, 0x3F
/* 69750 800AEF50 240D00C0 */  addiu      $t5, $zero, 0xC0
/* 69754 800AEF54 240C0954 */  addiu      $t4, $zero, 0x954
/* 69758 800AEF58 240B03C0 */  addiu      $t3, $zero, 0x3C0
/* 6975C 800AEF5C 2408F800 */  addiu      $t0, $zero, -0x800
/* 69760 800AEF60 24070FC0 */  addiu      $a3, $zero, 0xFC0
/* 69764 800AEF64 240607C0 */  addiu      $a2, $zero, 0x7C0
/* 69768 800AEF68 240400FF */  addiu      $a0, $zero, 0xFF
.L800AEF6C:
/* 6976C 800AEF6C 8FA30040 */  lw         $v1, 0x40($sp)
/* 69770 800AEF70 34018DC0 */  ori        $at, $zero, 0x8DC0
/* 69774 800AEF74 0000A025 */  or         $s4, $zero, $zero
/* 69778 800AEF78 0061B821 */  addu       $s7, $v1, $at
/* 6977C 800AEF7C 340191C0 */  ori        $at, $zero, 0x91C0
/* 69780 800AEF80 0061F021 */  addu       $fp, $v1, $at
/* 69784 800AEF84 247651C0 */  addiu      $s6, $v1, 0x51C0
.L800AEF88:
/* 69788 800AEF88 02C01025 */  or         $v0, $s6, $zero
/* 6978C 800AEF8C 00002825 */  or         $a1, $zero, $zero
.L800AEF90:
/* 69790 800AEF90 00AA001A */  div        $zero, $a1, $t2
/* 69794 800AEF94 15400002 */  bnez       $t2, .L800AEFA0
/* 69798 800AEF98 00000000 */   nop
/* 6979C 800AEF9C 0007000D */  break      7
.L800AEFA0:
/* 697A0 800AEFA0 2401FFFF */  addiu      $at, $zero, -0x1
/* 697A4 800AEFA4 15410004 */  bne        $t2, $at, .L800AEFB8
/* 697A8 800AEFA8 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 697AC 800AEFAC 14A10002 */  bne        $a1, $at, .L800AEFB8
/* 697B0 800AEFB0 00000000 */   nop
/* 697B4 800AEFB4 0006000D */  break      6
.L800AEFB8:
/* 697B8 800AEFB8 24A50001 */  addiu      $a1, $a1, 0x1
/* 697BC 800AEFBC 00001810 */  mfhi       $v1
/* 697C0 800AEFC0 28A100C0 */  slti       $at, $a1, 0xC0
/* 697C4 800AEFC4 14600004 */  bnez       $v1, .L800AEFD8
/* 697C8 800AEFC8 00000000 */   nop
/* 697CC 800AEFCC A44B0008 */  sh         $t3, 0x8($v0)
/* 697D0 800AEFD0 10000008 */  b          .L800AEFF4
/* 697D4 800AEFD4 A44C000A */   sh        $t4, 0xA($v0)
.L800AEFD8:
/* 697D8 800AEFD8 54690005 */  bnel       $v1, $t1, .L800AEFF0
/* 697DC 800AEFDC A4530008 */   sh        $s3, 0x8($v0)
/* 697E0 800AEFE0 A4520008 */  sh         $s2, 0x8($v0)
/* 697E4 800AEFE4 10000003 */  b          .L800AEFF4
/* 697E8 800AEFE8 A440000A */   sh        $zero, 0xA($v0)
/* 697EC 800AEFEC A4530008 */  sh         $s3, 0x8($v0)
.L800AEFF0:
/* 697F0 800AEFF0 A440000A */  sh         $zero, 0xA($v0)
.L800AEFF4:
/* 697F4 800AEFF4 A4400006 */  sh         $zero, 0x6($v0)
/* 697F8 800AEFF8 A044000C */  sb         $a0, 0xC($v0)
/* 697FC 800AEFFC A044000D */  sb         $a0, 0xD($v0)
/* 69800 800AF000 A044000E */  sb         $a0, 0xE($v0)
/* 69804 800AF004 1420FFE2 */  bnez       $at, .L800AEF90
/* 69808 800AF008 24420010 */   addiu     $v0, $v0, 0x10
/* 6980C 800AF00C 1680007E */  bnez       $s4, .L800AF208
/* 69810 800AF010 26D60C00 */   addiu     $s6, $s6, 0xC00
/* 69814 800AF014 3401B2F0 */  ori        $at, $zero, 0xB2F0
/* 69818 800AF018 02A10019 */  multu      $s5, $at
/* 6981C 800AF01C 340181C0 */  ori        $at, $zero, 0x81C0
/* 69820 800AF020 3C18801A */  lui        $t8, %hi(D_80198368)
/* 69824 800AF024 27188368 */  addiu      $t8, $t8, %lo(D_80198368)
/* 69828 800AF028 00002825 */  or         $a1, $zero, $zero
/* 6982C 800AF02C 00007012 */  mflo       $t6
/* 69830 800AF030 01C17821 */  addu       $t7, $t6, $at
/* 69834 800AF034 01F81021 */  addu       $v0, $t7, $t8
.L800AF038:
/* 69838 800AF038 00AA001A */  div        $zero, $a1, $t2
/* 6983C 800AF03C 00001810 */  mfhi       $v1
/* 69840 800AF040 24B90001 */  addiu      $t9, $a1, 0x1
/* 69844 800AF044 15400002 */  bnez       $t2, .L800AF050
/* 69848 800AF048 00000000 */   nop
/* 6984C 800AF04C 0007000D */  break      7
.L800AF050:
/* 69850 800AF050 2401FFFF */  addiu      $at, $zero, -0x1
/* 69854 800AF054 15410004 */  bne        $t2, $at, .L800AF068
/* 69858 800AF058 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 6985C 800AF05C 14A10002 */  bne        $a1, $at, .L800AF068
/* 69860 800AF060 00000000 */   nop
/* 69864 800AF064 0006000D */  break      6
.L800AF068:
/* 69868 800AF068 24AE0002 */  addiu      $t6, $a1, 0x2
/* 6986C 800AF06C 14600004 */  bnez       $v1, .L800AF080
/* 69870 800AF070 24AF0003 */   addiu     $t7, $a1, 0x3
/* 69874 800AF074 A4400008 */  sh         $zero, 0x8($v0)
/* 69878 800AF078 10000008 */  b          .L800AF09C
/* 6987C 800AF07C A446000A */   sh        $a2, 0xA($v0)
.L800AF080:
/* 69880 800AF080 54690005 */  bnel       $v1, $t1, .L800AF098
/* 69884 800AF084 A4400008 */   sh        $zero, 0x8($v0)
/* 69888 800AF088 A4470008 */  sh         $a3, 0x8($v0)
/* 6988C 800AF08C 10000003 */  b          .L800AF09C
/* 69890 800AF090 A446000A */   sh        $a2, 0xA($v0)
/* 69894 800AF094 A4400008 */  sh         $zero, 0x8($v0)
.L800AF098:
/* 69898 800AF098 A448000A */  sh         $t0, 0xA($v0)
.L800AF09C:
/* 6989C 800AF09C 032A001A */  div        $zero, $t9, $t2
/* 698A0 800AF0A0 00001810 */  mfhi       $v1
/* 698A4 800AF0A4 A4400006 */  sh         $zero, 0x6($v0)
/* 698A8 800AF0A8 A044000C */  sb         $a0, 0xC($v0)
/* 698AC 800AF0AC A044000D */  sb         $a0, 0xD($v0)
/* 698B0 800AF0B0 A044000E */  sb         $a0, 0xE($v0)
/* 698B4 800AF0B4 24420010 */  addiu      $v0, $v0, 0x10
/* 698B8 800AF0B8 15400002 */  bnez       $t2, .L800AF0C4
/* 698BC 800AF0BC 00000000 */   nop
/* 698C0 800AF0C0 0007000D */  break      7
.L800AF0C4:
/* 698C4 800AF0C4 2401FFFF */  addiu      $at, $zero, -0x1
/* 698C8 800AF0C8 15410004 */  bne        $t2, $at, .L800AF0DC
/* 698CC 800AF0CC 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 698D0 800AF0D0 17210002 */  bne        $t9, $at, .L800AF0DC
/* 698D4 800AF0D4 00000000 */   nop
/* 698D8 800AF0D8 0006000D */  break      6
.L800AF0DC:
/* 698DC 800AF0DC 14600004 */  bnez       $v1, .L800AF0F0
/* 698E0 800AF0E0 00000000 */   nop
/* 698E4 800AF0E4 A4400008 */  sh         $zero, 0x8($v0)
/* 698E8 800AF0E8 10000008 */  b          .L800AF10C
/* 698EC 800AF0EC A446000A */   sh        $a2, 0xA($v0)
.L800AF0F0:
/* 698F0 800AF0F0 54690005 */  bnel       $v1, $t1, .L800AF108
/* 698F4 800AF0F4 A4400008 */   sh        $zero, 0x8($v0)
/* 698F8 800AF0F8 A4470008 */  sh         $a3, 0x8($v0)
/* 698FC 800AF0FC 10000003 */  b          .L800AF10C
/* 69900 800AF100 A446000A */   sh        $a2, 0xA($v0)
/* 69904 800AF104 A4400008 */  sh         $zero, 0x8($v0)
.L800AF108:
/* 69908 800AF108 A448000A */  sh         $t0, 0xA($v0)
.L800AF10C:
/* 6990C 800AF10C 01CA001A */  div        $zero, $t6, $t2
/* 69910 800AF110 00001810 */  mfhi       $v1
/* 69914 800AF114 A4400006 */  sh         $zero, 0x6($v0)
/* 69918 800AF118 A044000C */  sb         $a0, 0xC($v0)
/* 6991C 800AF11C A044000D */  sb         $a0, 0xD($v0)
/* 69920 800AF120 A044000E */  sb         $a0, 0xE($v0)
/* 69924 800AF124 24420010 */  addiu      $v0, $v0, 0x10
/* 69928 800AF128 15400002 */  bnez       $t2, .L800AF134
/* 6992C 800AF12C 00000000 */   nop
/* 69930 800AF130 0007000D */  break      7
.L800AF134:
/* 69934 800AF134 2401FFFF */  addiu      $at, $zero, -0x1
/* 69938 800AF138 15410004 */  bne        $t2, $at, .L800AF14C
/* 6993C 800AF13C 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 69940 800AF140 15C10002 */  bne        $t6, $at, .L800AF14C
/* 69944 800AF144 00000000 */   nop
/* 69948 800AF148 0006000D */  break      6
.L800AF14C:
/* 6994C 800AF14C 24A50004 */  addiu      $a1, $a1, 0x4
/* 69950 800AF150 14600004 */  bnez       $v1, .L800AF164
/* 69954 800AF154 00000000 */   nop
/* 69958 800AF158 A4400008 */  sh         $zero, 0x8($v0)
/* 6995C 800AF15C 10000008 */  b          .L800AF180
/* 69960 800AF160 A446000A */   sh        $a2, 0xA($v0)
.L800AF164:
/* 69964 800AF164 54690005 */  bnel       $v1, $t1, .L800AF17C
/* 69968 800AF168 A4400008 */   sh        $zero, 0x8($v0)
/* 6996C 800AF16C A4470008 */  sh         $a3, 0x8($v0)
/* 69970 800AF170 10000003 */  b          .L800AF180
/* 69974 800AF174 A446000A */   sh        $a2, 0xA($v0)
/* 69978 800AF178 A4400008 */  sh         $zero, 0x8($v0)
.L800AF17C:
/* 6997C 800AF17C A448000A */  sh         $t0, 0xA($v0)
.L800AF180:
/* 69980 800AF180 01EA001A */  div        $zero, $t7, $t2
/* 69984 800AF184 00001810 */  mfhi       $v1
/* 69988 800AF188 A4400006 */  sh         $zero, 0x6($v0)
/* 6998C 800AF18C A044000C */  sb         $a0, 0xC($v0)
/* 69990 800AF190 A044000D */  sb         $a0, 0xD($v0)
/* 69994 800AF194 A044000E */  sb         $a0, 0xE($v0)
/* 69998 800AF198 24420010 */  addiu      $v0, $v0, 0x10
/* 6999C 800AF19C 15400002 */  bnez       $t2, .L800AF1A8
/* 699A0 800AF1A0 00000000 */   nop
/* 699A4 800AF1A4 0007000D */  break      7
.L800AF1A8:
/* 699A8 800AF1A8 2401FFFF */  addiu      $at, $zero, -0x1
/* 699AC 800AF1AC 15410004 */  bne        $t2, $at, .L800AF1C0
/* 699B0 800AF1B0 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 699B4 800AF1B4 15E10002 */  bne        $t7, $at, .L800AF1C0
/* 699B8 800AF1B8 00000000 */   nop
/* 699BC 800AF1BC 0006000D */  break      6
.L800AF1C0:
/* 699C0 800AF1C0 14600004 */  bnez       $v1, .L800AF1D4
/* 699C4 800AF1C4 00000000 */   nop
/* 699C8 800AF1C8 A4400008 */  sh         $zero, 0x8($v0)
/* 699CC 800AF1CC 10000008 */  b          .L800AF1F0
/* 699D0 800AF1D0 A446000A */   sh        $a2, 0xA($v0)
.L800AF1D4:
/* 699D4 800AF1D4 54690005 */  bnel       $v1, $t1, .L800AF1EC
/* 699D8 800AF1D8 A4400008 */   sh        $zero, 0x8($v0)
/* 699DC 800AF1DC A4470008 */  sh         $a3, 0x8($v0)
/* 699E0 800AF1E0 10000003 */  b          .L800AF1F0
/* 699E4 800AF1E4 A446000A */   sh        $a2, 0xA($v0)
/* 699E8 800AF1E8 A4400008 */  sh         $zero, 0x8($v0)
.L800AF1EC:
/* 699EC 800AF1EC A448000A */  sh         $t0, 0xA($v0)
.L800AF1F0:
/* 699F0 800AF1F0 A4400006 */  sh         $zero, 0x6($v0)
/* 699F4 800AF1F4 A044000C */  sb         $a0, 0xC($v0)
/* 699F8 800AF1F8 A044000D */  sb         $a0, 0xD($v0)
/* 699FC 800AF1FC A044000E */  sb         $a0, 0xE($v0)
/* 69A00 800AF200 14ADFF8D */  bne        $a1, $t5, .L800AF038
/* 69A04 800AF204 24420010 */   addiu     $v0, $v0, 0x10
.L800AF208:
/* 69A08 800AF208 02E01025 */  or         $v0, $s7, $zero
/* 69A0C 800AF20C 00002825 */  or         $a1, $zero, $zero
.L800AF210:
/* 69A10 800AF210 04A10004 */  bgez       $a1, .L800AF224
/* 69A14 800AF214 30A30003 */   andi      $v1, $a1, 0x3
/* 69A18 800AF218 10600002 */  beqz       $v1, .L800AF224
/* 69A1C 800AF21C 00000000 */   nop
/* 69A20 800AF220 2463FFFC */  addiu      $v1, $v1, -0x4
.L800AF224:
/* 69A24 800AF224 14600004 */  bnez       $v1, .L800AF238
/* 69A28 800AF228 24A50001 */   addiu     $a1, $a1, 0x1
/* 69A2C 800AF22C A4400008 */  sh         $zero, 0x8($v0)
/* 69A30 800AF230 1000000D */  b          .L800AF268
/* 69A34 800AF234 A446000A */   sh        $a2, 0xA($v0)
.L800AF238:
/* 69A38 800AF238 14690004 */  bne        $v1, $t1, .L800AF24C
/* 69A3C 800AF23C 00000000 */   nop
/* 69A40 800AF240 A4460008 */  sh         $a2, 0x8($v0)
/* 69A44 800AF244 10000008 */  b          .L800AF268
/* 69A48 800AF248 A446000A */   sh        $a2, 0xA($v0)
.L800AF24C:
/* 69A4C 800AF24C 54710005 */  bnel       $v1, $s1, .L800AF264
/* 69A50 800AF250 A4400008 */   sh        $zero, 0x8($v0)
/* 69A54 800AF254 A4460008 */  sh         $a2, 0x8($v0)
/* 69A58 800AF258 10000003 */  b          .L800AF268
/* 69A5C 800AF25C A440000A */   sh        $zero, 0xA($v0)
/* 69A60 800AF260 A4400008 */  sh         $zero, 0x8($v0)
.L800AF264:
/* 69A64 800AF264 A440000A */  sh         $zero, 0xA($v0)
.L800AF268:
/* 69A68 800AF268 28A10010 */  slti       $at, $a1, 0x10
/* 69A6C 800AF26C A4400006 */  sh         $zero, 0x6($v0)
/* 69A70 800AF270 A044000C */  sb         $a0, 0xC($v0)
/* 69A74 800AF274 A044000D */  sb         $a0, 0xD($v0)
/* 69A78 800AF278 A044000E */  sb         $a0, 0xE($v0)
/* 69A7C 800AF27C A044000F */  sb         $a0, 0xF($v0)
/* 69A80 800AF280 1420FFE3 */  bnez       $at, .L800AF210
/* 69A84 800AF284 24420010 */   addiu     $v0, $v0, 0x10
/* 69A88 800AF288 03C01025 */  or         $v0, $fp, $zero
/* 69A8C 800AF28C 00002825 */  or         $a1, $zero, $zero
.L800AF290:
/* 69A90 800AF290 30B80001 */  andi       $t8, $a1, 0x1
/* 69A94 800AF294 53000004 */  beql       $t8, $zero, .L800AF2A8
/* 69A98 800AF298 A4460008 */   sh        $a2, 0x8($v0)
/* 69A9C 800AF29C 10000002 */  b          .L800AF2A8
/* 69AA0 800AF2A0 A4400008 */   sh        $zero, 0x8($v0)
/* 69AA4 800AF2A4 A4460008 */  sh         $a2, 0x8($v0)
.L800AF2A8:
/* 69AA8 800AF2A8 04A10003 */  bgez       $a1, .L800AF2B8
/* 69AAC 800AF2AC 0005C843 */   sra       $t9, $a1, 1
/* 69AB0 800AF2B0 24A10001 */  addiu      $at, $a1, 0x1
/* 69AB4 800AF2B4 0001C843 */  sra        $t9, $at, 1
.L800AF2B8:
/* 69AB8 800AF2B8 033F0019 */  multu      $t9, $ra
/* 69ABC 800AF2BC 24A50001 */  addiu      $a1, $a1, 0x1
/* 69AC0 800AF2C0 A4400006 */  sh         $zero, 0x6($v0)
/* 69AC4 800AF2C4 A044000C */  sb         $a0, 0xC($v0)
/* 69AC8 800AF2C8 A044000D */  sb         $a0, 0xD($v0)
/* 69ACC 800AF2CC A044000E */  sb         $a0, 0xE($v0)
/* 69AD0 800AF2D0 A044000F */  sb         $a0, 0xF($v0)
/* 69AD4 800AF2D4 24420010 */  addiu      $v0, $v0, 0x10
/* 69AD8 800AF2D8 00007012 */  mflo       $t6
/* 69ADC 800AF2DC 00000000 */  nop
/* 69AE0 800AF2E0 00000000 */  nop
/* 69AE4 800AF2E4 01D0001A */  div        $zero, $t6, $s0
/* 69AE8 800AF2E8 16000002 */  bnez       $s0, .L800AF2F4
/* 69AEC 800AF2EC 00000000 */   nop
/* 69AF0 800AF2F0 0007000D */  break      7
.L800AF2F4:
/* 69AF4 800AF2F4 2401FFFF */  addiu      $at, $zero, -0x1
/* 69AF8 800AF2F8 16010004 */  bne        $s0, $at, .L800AF30C
/* 69AFC 800AF2FC 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 69B00 800AF300 15C10002 */  bne        $t6, $at, .L800AF30C
/* 69B04 800AF304 00000000 */   nop
/* 69B08 800AF308 0006000D */  break      6
.L800AF30C:
/* 69B0C 800AF30C 00007812 */  mflo       $t7
/* 69B10 800AF310 28A10010 */  slti       $at, $a1, 0x10
/* 69B14 800AF314 000FC180 */  sll        $t8, $t7, 6
/* 69B18 800AF318 1420FFDD */  bnez       $at, .L800AF290
/* 69B1C 800AF31C A458FFFA */   sh        $t8, -0x6($v0)
/* 69B20 800AF320 26940100 */  addiu      $s4, $s4, 0x100
/* 69B24 800AF324 2A810400 */  slti       $at, $s4, 0x400
/* 69B28 800AF328 26F70100 */  addiu      $s7, $s7, 0x100
/* 69B2C 800AF32C 1420FF16 */  bnez       $at, .L800AEF88
/* 69B30 800AF330 27DE0100 */   addiu     $fp, $fp, 0x100
/* 69B34 800AF334 8FB90040 */  lw         $t9, 0x40($sp)
/* 69B38 800AF338 3401B2F0 */  ori        $at, $zero, 0xB2F0
/* 69B3C 800AF33C 26B50001 */  addiu      $s5, $s5, 0x1
/* 69B40 800AF340 03217021 */  addu       $t6, $t9, $at
/* 69B44 800AF344 2AA10002 */  slti       $at, $s5, 0x2
/* 69B48 800AF348 1420FF08 */  bnez       $at, .L800AEF6C
/* 69B4C 800AF34C AFAE0040 */   sw        $t6, 0x40($sp)
/* 69B50 800AF350 3C02801D */  lui        $v0, %hi(D_801D7A18)
/* 69B54 800AF354 3C03801D */  lui        $v1, %hi(D_801D7AD8)
/* 69B58 800AF358 24637AD8 */  addiu      $v1, $v1, %lo(D_801D7AD8)
/* 69B5C 800AF35C 24427A18 */  addiu      $v0, $v0, %lo(D_801D7A18)
.L800AF360:
/* 69B60 800AF360 24420018 */  addiu      $v0, $v0, 0x18
/* 69B64 800AF364 0043082B */  sltu       $at, $v0, $v1
/* 69B68 800AF368 1420FFFD */  bnez       $at, .L800AF360
/* 69B6C 800AF36C AC40FFE8 */   sw        $zero, -0x18($v0)
/* 69B70 800AF370 3C03801D */  lui        $v1, %hi(D_801D7ADC)
/* 69B74 800AF374 24637ADC */  addiu      $v1, $v1, %lo(D_801D7ADC)
/* 69B78 800AF378 3C04801D */  lui        $a0, %hi(D_801D7AE8)
/* 69B7C 800AF37C AC600000 */  sw         $zero, 0x0($v1)
/* 69B80 800AF380 3C01801D */  lui        $at, %hi(D_801D7AD8)
/* 69B84 800AF384 24847AE8 */  addiu      $a0, $a0, %lo(D_801D7AE8)
/* 69B88 800AF388 AC207AD8 */  sw         $zero, %lo(D_801D7AD8)($at)
/* 69B8C 800AF38C E48C0000 */  swc1       $f12, 0x0($a0)
/* 69B90 800AF390 C4880000 */  lwc1       $f8, 0x0($a0)
/* 69B94 800AF394 3C06801D */  lui        $a2, %hi(D_801D7AE4)
/* 69B98 800AF398 24C67AE4 */  addiu      $a2, $a2, %lo(D_801D7AE4)
/* 69B9C 800AF39C E4C80000 */  swc1       $f8, 0x0($a2)
/* 69BA0 800AF3A0 C4CA0000 */  lwc1       $f10, 0x0($a2)
/* 69BA4 800AF3A4 3C01801D */  lui        $at, %hi(D_801D7AE0)
/* 69BA8 800AF3A8 3C03801D */  lui        $v1, %hi(D_801D7B10)
/* 69BAC 800AF3AC 3C02801D */  lui        $v0, %hi(D_801D7AF0)
/* 69BB0 800AF3B0 24427AF0 */  addiu      $v0, $v0, %lo(D_801D7AF0)
/* 69BB4 800AF3B4 24637B10 */  addiu      $v1, $v1, %lo(D_801D7B10)
/* 69BB8 800AF3B8 E42A7AE0 */  swc1       $f10, %lo(D_801D7AE0)($at)
.L800AF3BC:
/* 69BBC 800AF3BC 24420010 */  addiu      $v0, $v0, 0x10
/* 69BC0 800AF3C0 AC40FFF0 */  sw         $zero, -0x10($v0)
/* 69BC4 800AF3C4 E44CFFFC */  swc1       $f12, -0x4($v0)
/* 69BC8 800AF3C8 E44CFFF8 */  swc1       $f12, -0x8($v0)
/* 69BCC 800AF3CC 1443FFFB */  bne        $v0, $v1, .L800AF3BC
/* 69BD0 800AF3D0 E44CFFF4 */   swc1      $f12, -0xC($v0)
/* 69BD4 800AF3D4 8FBF003C */  lw         $ra, 0x3C($sp)
/* 69BD8 800AF3D8 3C01801D */  lui        $at, %hi(D_801D7B10)
/* 69BDC 800AF3DC 8FB00018 */  lw         $s0, 0x18($sp)
/* 69BE0 800AF3E0 8FB1001C */  lw         $s1, 0x1C($sp)
/* 69BE4 800AF3E4 8FB20020 */  lw         $s2, 0x20($sp)
/* 69BE8 800AF3E8 8FB30024 */  lw         $s3, 0x24($sp)
/* 69BEC 800AF3EC 8FB40028 */  lw         $s4, 0x28($sp)
/* 69BF0 800AF3F0 8FB5002C */  lw         $s5, 0x2C($sp)
/* 69BF4 800AF3F4 8FB60030 */  lw         $s6, 0x30($sp)
/* 69BF8 800AF3F8 8FB70034 */  lw         $s7, 0x34($sp)
/* 69BFC 800AF3FC 8FBE0038 */  lw         $fp, 0x38($sp)
/* 69C00 800AF400 AC207B10 */  sw         $zero, %lo(D_801D7B10)($at)
/* 69C04 800AF404 03E00008 */  jr         $ra
/* 69C08 800AF408 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_800AF40C
/* 69C0C 800AF40C 240E0004 */  addiu      $t6, $zero, 0x4
/* 69C10 800AF410 3C01801D */  lui        $at, %hi(D_801D7ADC)
/* 69C14 800AF414 AC2E7ADC */  sw         $t6, %lo(D_801D7ADC)($at)
/* 69C18 800AF418 3C01801D */  lui        $at, %hi(D_801D7AE0)
/* 69C1C 800AF41C E42C7AE0 */  swc1       $f12, %lo(D_801D7AE0)($at)
/* 69C20 800AF420 AFA60008 */  sw         $a2, 0x8($sp)
/* 69C24 800AF424 3C01801D */  lui        $at, %hi(D_801D7AE4)
/* 69C28 800AF428 C7A40008 */  lwc1       $f4, 0x8($sp)
/* 69C2C 800AF42C E42E7AE4 */  swc1       $f14, %lo(D_801D7AE4)($at)
/* 69C30 800AF430 3C01801D */  lui        $at, %hi(D_801D7AE8)
/* 69C34 800AF434 03E00008 */  jr         $ra
/* 69C38 800AF438 E4247AE8 */   swc1      $f4, %lo(D_801D7AE8)($at)

glabel func_800AF43C
/* 69C3C 800AF43C 3C03801D */  lui        $v1, %hi(D_801D7B10)
/* 69C40 800AF440 24637B10 */  addiu      $v1, $v1, %lo(D_801D7B10)
/* 69C44 800AF444 8C6E0000 */  lw         $t6, 0x0($v1)
/* 69C48 800AF448 3C18801D */  lui        $t8, %hi(D_801D7AF0)
/* 69C4C 800AF44C 27187AF0 */  addiu      $t8, $t8, %lo(D_801D7AF0)
/* 69C50 800AF450 000E7900 */  sll        $t7, $t6, 4
/* 69C54 800AF454 AFA60008 */  sw         $a2, 0x8($sp)
/* 69C58 800AF458 01F81021 */  addu       $v0, $t7, $t8
/* 69C5C 800AF45C 24190004 */  addiu      $t9, $zero, 0x4
/* 69C60 800AF460 AC590000 */  sw         $t9, 0x0($v0)
/* 69C64 800AF464 E44C0004 */  swc1       $f12, 0x4($v0)
/* 69C68 800AF468 E44E0008 */  swc1       $f14, 0x8($v0)
/* 69C6C 800AF46C C7A40008 */  lwc1       $f4, 0x8($sp)
/* 69C70 800AF470 E444000C */  swc1       $f4, 0xC($v0)
/* 69C74 800AF474 8C680000 */  lw         $t0, 0x0($v1)
/* 69C78 800AF478 25090001 */  addiu      $t1, $t0, 0x1
/* 69C7C 800AF47C 01205025 */  or         $t2, $t1, $zero
/* 69C80 800AF480 AC690000 */  sw         $t1, 0x0($v1)
/* 69C84 800AF484 05410004 */  bgez       $t2, .L800AF498
/* 69C88 800AF488 314B0001 */   andi      $t3, $t2, 0x1
/* 69C8C 800AF48C 11600002 */  beqz       $t3, .L800AF498
/* 69C90 800AF490 00000000 */   nop
/* 69C94 800AF494 256BFFFE */  addiu      $t3, $t3, -0x2
.L800AF498:
/* 69C98 800AF498 03E00008 */  jr         $ra
/* 69C9C 800AF49C AC6B0000 */   sw        $t3, 0x0($v1)

glabel func_800AF4A0
/* 69CA0 800AF4A0 3C03801D */  lui        $v1, %hi(D_801D7AD8)
/* 69CA4 800AF4A4 24637AD8 */  addiu      $v1, $v1, %lo(D_801D7AD8)
/* 69CA8 800AF4A8 8C6E0000 */  lw         $t6, 0x0($v1)
/* 69CAC 800AF4AC 3C18801D */  lui        $t8, %hi(D_801D7A18)
/* 69CB0 800AF4B0 27187A18 */  addiu      $t8, $t8, %lo(D_801D7A18)
/* 69CB4 800AF4B4 000E7880 */  sll        $t7, $t6, 2
/* 69CB8 800AF4B8 01EE7823 */  subu       $t7, $t7, $t6
/* 69CBC 800AF4BC 000F78C0 */  sll        $t7, $t7, 3
/* 69CC0 800AF4C0 AFA60008 */  sw         $a2, 0x8($sp)
/* 69CC4 800AF4C4 AFA7000C */  sw         $a3, 0xC($sp)
/* 69CC8 800AF4C8 01F81021 */  addu       $v0, $t7, $t8
/* 69CCC 800AF4CC 24190001 */  addiu      $t9, $zero, 0x1
/* 69CD0 800AF4D0 AC590000 */  sw         $t9, 0x0($v0)
/* 69CD4 800AF4D4 AC400004 */  sw         $zero, 0x4($v0)
/* 69CD8 800AF4D8 E44C0008 */  swc1       $f12, 0x8($v0)
/* 69CDC 800AF4DC E44E000C */  swc1       $f14, 0xC($v0)
/* 69CE0 800AF4E0 C7A40008 */  lwc1       $f4, 0x8($sp)
/* 69CE4 800AF4E4 E4440010 */  swc1       $f4, 0x10($v0)
/* 69CE8 800AF4E8 C7A6000C */  lwc1       $f6, 0xC($sp)
/* 69CEC 800AF4EC E4460014 */  swc1       $f6, 0x14($v0)
/* 69CF0 800AF4F0 8C680000 */  lw         $t0, 0x0($v1)
/* 69CF4 800AF4F4 25090001 */  addiu      $t1, $t0, 0x1
/* 69CF8 800AF4F8 01205025 */  or         $t2, $t1, $zero
/* 69CFC 800AF4FC AC690000 */  sw         $t1, 0x0($v1)
/* 69D00 800AF500 05410004 */  bgez       $t2, .L800AF514
/* 69D04 800AF504 314B0007 */   andi      $t3, $t2, 0x7
/* 69D08 800AF508 11600002 */  beqz       $t3, .L800AF514
/* 69D0C 800AF50C 00000000 */   nop
/* 69D10 800AF510 256BFFF8 */  addiu      $t3, $t3, -0x8
.L800AF514:
/* 69D14 800AF514 03E00008 */  jr         $ra
/* 69D18 800AF518 AC6B0000 */   sw        $t3, 0x0($v1)

glabel func_800AF51C
/* 69D1C 800AF51C 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 69D20 800AF520 AFB00044 */  sw         $s0, 0x44($sp)
/* 69D24 800AF524 3C10801D */  lui        $s0, %hi(D_801D7ADC)
/* 69D28 800AF528 26107ADC */  addiu      $s0, $s0, %lo(D_801D7ADC)
/* 69D2C 800AF52C 8E020000 */  lw         $v0, 0x0($s0)
/* 69D30 800AF530 AFBF004C */  sw         $ra, 0x4C($sp)
/* 69D34 800AF534 AFB10048 */  sw         $s1, 0x48($sp)
/* 69D38 800AF538 F7BE0038 */  sdc1       $f30, 0x38($sp)
/* 69D3C 800AF53C F7BC0030 */  sdc1       $f28, 0x30($sp)
/* 69D40 800AF540 F7BA0028 */  sdc1       $f26, 0x28($sp)
/* 69D44 800AF544 F7B80020 */  sdc1       $f24, 0x20($sp)
/* 69D48 800AF548 F7B60018 */  sdc1       $f22, 0x18($sp)
/* 69D4C 800AF54C 1840002B */  blez       $v0, .L800AF5FC
/* 69D50 800AF550 F7B40010 */   sdc1      $f20, 0x10($sp)
/* 69D54 800AF554 3C014200 */  lui        $at, (0x42000000 >> 16)
/* 69D58 800AF558 4481F000 */  mtc1       $at, $f30
/* 69D5C 800AF55C 244EFFFF */  addiu      $t6, $v0, -0x1
/* 69D60 800AF560 AE0E0000 */  sw         $t6, 0x0($s0)
/* 69D64 800AF564 0C07B4CE */  jal        func_801ED338
/* 69D68 800AF568 4600F306 */   mov.s     $f12, $f30
/* 69D6C 800AF56C 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 69D70 800AF570 44816000 */  mtc1       $at, $f12
/* 69D74 800AF574 0C07B4CE */  jal        func_801ED338
/* 69D78 800AF578 46000606 */   mov.s     $f24, $f0
/* 69D7C 800AF57C 46000506 */  mov.s      $f20, $f0
/* 69D80 800AF580 0C07B4CE */  jal        func_801ED338
/* 69D84 800AF584 4600F306 */   mov.s     $f12, $f30
/* 69D88 800AF588 3C014180 */  lui        $at, (0x41800000 >> 16)
/* 69D8C 800AF58C 4481D000 */  mtc1       $at, $f26
/* 69D90 800AF590 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 69D94 800AF594 4481E000 */  mtc1       $at, $f28
/* 69D98 800AF598 3C01801D */  lui        $at, %hi(D_801D7AE0)
/* 69D9C 800AF59C C4247AE0 */  lwc1       $f4, %lo(D_801D7AE0)($at)
/* 69DA0 800AF5A0 8E0F0000 */  lw         $t7, 0x0($s0)
/* 69DA4 800AF5A4 3C01801D */  lui        $at, %hi(D_801D7AE4)
/* 69DA8 800AF5A8 461A2181 */  sub.s      $f6, $f4, $f26
/* 69DAC 800AF5AC C4287AE4 */  lwc1       $f8, %lo(D_801D7AE4)($at)
/* 69DB0 800AF5B0 3C01801D */  lui        $at, %hi(D_801D7AE8)
/* 69DB4 800AF5B4 C4307AE8 */  lwc1       $f16, %lo(D_801D7AE8)($at)
/* 69DB8 800AF5B8 4606C300 */  add.s      $f12, $f24, $f6
/* 69DBC 800AF5BC 448F3000 */  mtc1       $t7, $f6
/* 69DC0 800AF5C0 3C01800F */  lui        $at, %hi(D_800EBB70)
/* 69DC4 800AF5C4 461C4281 */  sub.s      $f10, $f8, $f28
/* 69DC8 800AF5C8 46803220 */  cvt.s.w    $f8, $f6
/* 69DCC 800AF5CC 460AA380 */  add.s      $f14, $f20, $f10
/* 69DD0 800AF5D0 C42ABB70 */  lwc1       $f10, %lo(D_800EBB70)($at)
/* 69DD4 800AF5D4 3C01800F */  lui        $at, %hi(D_800EBB74)
/* 69DD8 800AF5D8 461A8481 */  sub.s      $f18, $f16, $f26
/* 69DDC 800AF5DC 460A4402 */  mul.s      $f16, $f8, $f10
/* 69DE0 800AF5E0 46120100 */  add.s      $f4, $f0, $f18
/* 69DE4 800AF5E4 C432BB74 */  lwc1       $f18, %lo(D_800EBB74)($at)
/* 69DE8 800AF5E8 44062000 */  mfc1       $a2, $f4
/* 69DEC 800AF5EC 46128100 */  add.s      $f4, $f16, $f18
/* 69DF0 800AF5F0 44072000 */  mfc1       $a3, $f4
/* 69DF4 800AF5F4 0C02BD28 */  jal        func_800AF4A0
/* 69DF8 800AF5F8 00000000 */   nop
.L800AF5FC:
/* 69DFC 800AF5FC 3C014180 */  lui        $at, (0x41800000 >> 16)
/* 69E00 800AF600 4481D000 */  mtc1       $at, $f26
/* 69E04 800AF604 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 69E08 800AF608 4481E000 */  mtc1       $at, $f28
/* 69E0C 800AF60C 3C014200 */  lui        $at, (0x42000000 >> 16)
/* 69E10 800AF610 3C10801D */  lui        $s0, %hi(D_801D7AF0)
/* 69E14 800AF614 3C11801D */  lui        $s1, %hi(D_801D7B10)
/* 69E18 800AF618 4481F000 */  mtc1       $at, $f30
/* 69E1C 800AF61C 26317B10 */  addiu      $s1, $s1, %lo(D_801D7B10)
/* 69E20 800AF620 26107AF0 */  addiu      $s0, $s0, %lo(D_801D7AF0)
/* 69E24 800AF624 8E020000 */  lw         $v0, 0x0($s0)
.L800AF628:
/* 69E28 800AF628 1840001E */  blez       $v0, .L800AF6A4
/* 69E2C 800AF62C 2458FFFF */   addiu     $t8, $v0, -0x1
/* 69E30 800AF630 AE180000 */  sw         $t8, 0x0($s0)
/* 69E34 800AF634 0C07B4CE */  jal        func_801ED338
/* 69E38 800AF638 4600F306 */   mov.s     $f12, $f30
/* 69E3C 800AF63C 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 69E40 800AF640 44816000 */  mtc1       $at, $f12
/* 69E44 800AF644 0C07B4CE */  jal        func_801ED338
/* 69E48 800AF648 46000586 */   mov.s     $f22, $f0
/* 69E4C 800AF64C 46000606 */  mov.s      $f24, $f0
/* 69E50 800AF650 0C07B4CE */  jal        func_801ED338
/* 69E54 800AF654 4600F306 */   mov.s     $f12, $f30
/* 69E58 800AF658 46000506 */  mov.s      $f20, $f0
/* 69E5C 800AF65C 0C07B4CE */  jal        func_801ED338
/* 69E60 800AF660 4600E306 */   mov.s     $f12, $f28
/* 69E64 800AF664 C6060004 */  lwc1       $f6, 0x4($s0)
/* 69E68 800AF668 C612000C */  lwc1       $f18, 0xC($s0)
/* 69E6C 800AF66C C60A0008 */  lwc1       $f10, 0x8($s0)
/* 69E70 800AF670 461A3201 */  sub.s      $f8, $f6, $f26
/* 69E74 800AF674 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 69E78 800AF678 461A9101 */  sub.s      $f4, $f18, $f26
/* 69E7C 800AF67C 4608B300 */  add.s      $f12, $f22, $f8
/* 69E80 800AF680 44814000 */  mtc1       $at, $f8
/* 69E84 800AF684 461C5401 */  sub.s      $f16, $f10, $f28
/* 69E88 800AF688 4604A180 */  add.s      $f6, $f20, $f4
/* 69E8C 800AF68C 46080280 */  add.s      $f10, $f0, $f8
/* 69E90 800AF690 44063000 */  mfc1       $a2, $f6
/* 69E94 800AF694 4610C380 */  add.s      $f14, $f24, $f16
/* 69E98 800AF698 44075000 */  mfc1       $a3, $f10
/* 69E9C 800AF69C 0C02BD28 */  jal        func_800AF4A0
/* 69EA0 800AF6A0 00000000 */   nop
.L800AF6A4:
/* 69EA4 800AF6A4 26100010 */  addiu      $s0, $s0, 0x10
/* 69EA8 800AF6A8 0211082B */  sltu       $at, $s0, $s1
/* 69EAC 800AF6AC 5420FFDE */  bnel       $at, $zero, .L800AF628
/* 69EB0 800AF6B0 8E020000 */   lw        $v0, 0x0($s0)
/* 69EB4 800AF6B4 3C02801D */  lui        $v0, %hi(D_801D7A18)
/* 69EB8 800AF6B8 3C04801D */  lui        $a0, %hi(D_801D7AD8)
/* 69EBC 800AF6BC 24847AD8 */  addiu      $a0, $a0, %lo(D_801D7AD8)
/* 69EC0 800AF6C0 24427A18 */  addiu      $v0, $v0, %lo(D_801D7A18)
/* 69EC4 800AF6C4 8C590000 */  lw         $t9, 0x0($v0)
.L800AF6C8:
/* 69EC8 800AF6C8 24430018 */  addiu      $v1, $v0, 0x18
/* 69ECC 800AF6CC 53200008 */  beql       $t9, $zero, .L800AF6F0
/* 69ED0 800AF6D0 8C4B0018 */   lw        $t3, 0x18($v0)
/* 69ED4 800AF6D4 8C480004 */  lw         $t0, 0x4($v0)
/* 69ED8 800AF6D8 25090001 */  addiu      $t1, $t0, 0x1
/* 69EDC 800AF6DC 29210008 */  slti       $at, $t1, 0x8
/* 69EE0 800AF6E0 14200002 */  bnez       $at, .L800AF6EC
/* 69EE4 800AF6E4 AC490004 */   sw        $t1, 0x4($v0)
/* 69EE8 800AF6E8 AC400000 */  sw         $zero, 0x0($v0)
.L800AF6EC:
/* 69EEC 800AF6EC 8C4B0018 */  lw         $t3, 0x18($v0)
.L800AF6F0:
/* 69EF0 800AF6F0 51600008 */  beql       $t3, $zero, .L800AF714
/* 69EF4 800AF6F4 8C4F0030 */   lw        $t7, 0x30($v0)
/* 69EF8 800AF6F8 8C6C0004 */  lw         $t4, 0x4($v1)
/* 69EFC 800AF6FC 258D0001 */  addiu      $t5, $t4, 0x1
/* 69F00 800AF700 29A10008 */  slti       $at, $t5, 0x8
/* 69F04 800AF704 14200002 */  bnez       $at, .L800AF710
/* 69F08 800AF708 AC6D0004 */   sw        $t5, 0x4($v1)
/* 69F0C 800AF70C AC600000 */  sw         $zero, 0x0($v1)
.L800AF710:
/* 69F10 800AF710 8C4F0030 */  lw         $t7, 0x30($v0)
.L800AF714:
/* 69F14 800AF714 24430030 */  addiu      $v1, $v0, 0x30
/* 69F18 800AF718 51E00008 */  beql       $t7, $zero, .L800AF73C
/* 69F1C 800AF71C 8C490048 */   lw        $t1, 0x48($v0)
/* 69F20 800AF720 8C780004 */  lw         $t8, 0x4($v1)
/* 69F24 800AF724 27190001 */  addiu      $t9, $t8, 0x1
/* 69F28 800AF728 2B210008 */  slti       $at, $t9, 0x8
/* 69F2C 800AF72C 14200002 */  bnez       $at, .L800AF738
/* 69F30 800AF730 AC790004 */   sw        $t9, 0x4($v1)
/* 69F34 800AF734 AC600000 */  sw         $zero, 0x0($v1)
.L800AF738:
/* 69F38 800AF738 8C490048 */  lw         $t1, 0x48($v0)
.L800AF73C:
/* 69F3C 800AF73C 24430048 */  addiu      $v1, $v0, 0x48
/* 69F40 800AF740 51200008 */  beql       $t1, $zero, .L800AF764
/* 69F44 800AF744 24420060 */   addiu     $v0, $v0, 0x60
/* 69F48 800AF748 8C6A0004 */  lw         $t2, 0x4($v1)
/* 69F4C 800AF74C 254B0001 */  addiu      $t3, $t2, 0x1
/* 69F50 800AF750 29610008 */  slti       $at, $t3, 0x8
/* 69F54 800AF754 14200002 */  bnez       $at, .L800AF760
/* 69F58 800AF758 AC6B0004 */   sw        $t3, 0x4($v1)
/* 69F5C 800AF75C AC600000 */  sw         $zero, 0x0($v1)
.L800AF760:
/* 69F60 800AF760 24420060 */  addiu      $v0, $v0, 0x60
.L800AF764:
/* 69F64 800AF764 5444FFD8 */  bnel       $v0, $a0, .L800AF6C8
/* 69F68 800AF768 8C590000 */   lw        $t9, 0x0($v0)
/* 69F6C 800AF76C 8FBF004C */  lw         $ra, 0x4C($sp)
/* 69F70 800AF770 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 69F74 800AF774 D7B60018 */  ldc1       $f22, 0x18($sp)
/* 69F78 800AF778 D7B80020 */  ldc1       $f24, 0x20($sp)
/* 69F7C 800AF77C D7BA0028 */  ldc1       $f26, 0x28($sp)
/* 69F80 800AF780 D7BC0030 */  ldc1       $f28, 0x30($sp)
/* 69F84 800AF784 D7BE0038 */  ldc1       $f30, 0x38($sp)
/* 69F88 800AF788 8FB00044 */  lw         $s0, 0x44($sp)
/* 69F8C 800AF78C 8FB10048 */  lw         $s1, 0x48($sp)
/* 69F90 800AF790 03E00008 */  jr         $ra
/* 69F94 800AF794 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_800AF798
/* 69F98 800AF798 27BDFEC0 */  addiu      $sp, $sp, -0x140
/* 69F9C 800AF79C AFBF007C */  sw         $ra, 0x7C($sp)
/* 69FA0 800AF7A0 AFBE0078 */  sw         $fp, 0x78($sp)
/* 69FA4 800AF7A4 AFB70074 */  sw         $s7, 0x74($sp)
/* 69FA8 800AF7A8 AFB60070 */  sw         $s6, 0x70($sp)
/* 69FAC 800AF7AC AFB5006C */  sw         $s5, 0x6C($sp)
/* 69FB0 800AF7B0 AFB40068 */  sw         $s4, 0x68($sp)
/* 69FB4 800AF7B4 AFB30064 */  sw         $s3, 0x64($sp)
/* 69FB8 800AF7B8 AFB20060 */  sw         $s2, 0x60($sp)
/* 69FBC 800AF7BC AFB1005C */  sw         $s1, 0x5C($sp)
/* 69FC0 800AF7C0 AFB00058 */  sw         $s0, 0x58($sp)
/* 69FC4 800AF7C4 F7BA0050 */  sdc1       $f26, 0x50($sp)
/* 69FC8 800AF7C8 F7B80048 */  sdc1       $f24, 0x48($sp)
/* 69FCC 800AF7CC F7B60040 */  sdc1       $f22, 0x40($sp)
/* 69FD0 800AF7D0 F7B40038 */  sdc1       $f20, 0x38($sp)
/* 69FD4 800AF7D4 AFA40140 */  sw         $a0, 0x140($sp)
/* 69FD8 800AF7D8 8C900000 */  lw         $s0, 0x0($a0)
/* 69FDC 800AF7DC 3C0F0600 */  lui        $t7, (0x6000000 >> 16)
/* 69FE0 800AF7E0 3C180105 */  lui        $t8, %hi(D_10514D0)
/* 69FE4 800AF7E4 02001025 */  or         $v0, $s0, $zero
/* 69FE8 800AF7E8 26100008 */  addiu      $s0, $s0, 0x8
/* 69FEC 800AF7EC AC4F0000 */  sw         $t7, 0x0($v0)
/* 69FF0 800AF7F0 271814D0 */  addiu      $t8, $t8, %lo(D_10514D0)
/* 69FF4 800AF7F4 02001825 */  or         $v1, $s0, $zero
/* 69FF8 800AF7F8 AC580004 */  sw         $t8, 0x4($v0)
/* 69FFC 800AF7FC 26100008 */  addiu      $s0, $s0, 0x8
/* 6A000 800AF800 3C19FC12 */  lui        $t9, (0xFC129825 >> 16)
/* 6A004 800AF804 3C08FF33 */  lui        $t0, (0xFF33FFFF >> 16)
/* 6A008 800AF808 3508FFFF */  ori        $t0, $t0, (0xFF33FFFF & 0xFFFF)
/* 6A00C 800AF80C 37399825 */  ori        $t9, $t9, (0xFC129825 & 0xFFFF)
/* 6A010 800AF810 02002825 */  or         $a1, $s0, $zero
/* 6A014 800AF814 3C09B900 */  lui        $t1, (0xB900031D >> 16)
/* 6A018 800AF818 AC790000 */  sw         $t9, 0x0($v1)
/* 6A01C 800AF81C AC680004 */  sw         $t0, 0x4($v1)
/* 6A020 800AF820 3529031D */  ori        $t1, $t1, (0xB900031D & 0xFFFF)
/* 6A024 800AF824 3C0A0050 */  lui        $t2, (0x504B50 >> 16)
/* 6A028 800AF828 354A4B50 */  ori        $t2, $t2, (0x504B50 & 0xFFFF)
/* 6A02C 800AF82C ACA90000 */  sw         $t1, 0x0($a1)
/* 6A030 800AF830 26100008 */  addiu      $s0, $s0, 0x8
/* 6A034 800AF834 ACAA0004 */  sw         $t2, 0x4($a1)
/* 6A038 800AF838 02003025 */  or         $a2, $s0, $zero
/* 6A03C 800AF83C 3C0BFB00 */  lui        $t3, (0xFB000000 >> 16)
/* 6A040 800AF840 ACCB0000 */  sw         $t3, 0x0($a2)
/* 6A044 800AF844 3C0F800E */  lui        $t7, %hi(D_800E6D88)
/* 6A048 800AF848 8DEF6D88 */  lw         $t7, %lo(D_800E6D88)($t7)
/* 6A04C 800AF84C 3C09800E */  lui        $t1, %hi(D_800E6D8C)
/* 6A050 800AF850 3C0C800E */  lui        $t4, %hi(D_800E6D84)
/* 6A054 800AF854 8D8D6D84 */  lw         $t5, %lo(D_800E6D84)($t4)
/* 6A058 800AF858 8D296D8C */  lw         $t1, %lo(D_800E6D8C)($t1)
/* 6A05C 800AF85C 31F800FF */  andi       $t8, $t7, 0xFF
/* 6A060 800AF860 0018CC00 */  sll        $t9, $t8, 16
/* 6A064 800AF864 000D7600 */  sll        $t6, $t5, 24
/* 6A068 800AF868 312A00FF */  andi       $t2, $t1, 0xFF
/* 6A06C 800AF86C 000A5A00 */  sll        $t3, $t2, 8
/* 6A070 800AF870 01D94025 */  or         $t0, $t6, $t9
/* 6A074 800AF874 010B6025 */  or         $t4, $t0, $t3
/* 6A078 800AF878 358D00FF */  ori        $t5, $t4, 0xFF
/* 6A07C 800AF87C ACCD0004 */  sw         $t5, 0x4($a2)
/* 6A080 800AF880 3C0F800E */  lui        $t7, %hi(D_800DAB2C)
/* 6A084 800AF884 8DEFAB2C */  lw         $t7, %lo(D_800DAB2C)($t7)
/* 6A088 800AF888 3C12801D */  lui        $s2, %hi(D_801D7A18)
/* 6A08C 800AF88C 26100008 */  addiu      $s0, $s0, 0x8
/* 6A090 800AF890 15E0000C */  bnez       $t7, .L800AF8C4
/* 6A094 800AF894 26527A18 */   addiu     $s2, $s2, %lo(D_801D7A18)
/* 6A098 800AF898 3C188022 */  lui        $t8, %hi(D_80223930)
/* 6A09C 800AF89C 8F183930 */  lw         $t8, %lo(D_80223930)($t8)
/* 6A0A0 800AF8A0 3C198022 */  lui        $t9, %hi(D_80227C80)
/* 6A0A4 800AF8A4 27397C80 */  addiu      $t9, $t9, %lo(D_80227C80)
/* 6A0A8 800AF8A8 00187100 */  sll        $t6, $t8, 4
/* 6A0AC 800AF8AC 01D87021 */  addu       $t6, $t6, $t8
/* 6A0B0 800AF8B0 000E7080 */  sll        $t6, $t6, 2
/* 6A0B4 800AF8B4 01D87023 */  subu       $t6, $t6, $t8
/* 6A0B8 800AF8B8 000E7080 */  sll        $t6, $t6, 2
/* 6A0BC 800AF8BC 1000000B */  b          .L800AF8EC
/* 6A0C0 800AF8C0 01D99821 */   addu      $s3, $t6, $t9
.L800AF8C4:
/* 6A0C4 800AF8C4 3C098022 */  lui        $t1, %hi(D_80223934)
/* 6A0C8 800AF8C8 8D293934 */  lw         $t1, %lo(D_80223934)($t1)
/* 6A0CC 800AF8CC 3C088022 */  lui        $t0, %hi(D_80227C80)
/* 6A0D0 800AF8D0 25087C80 */  addiu      $t0, $t0, %lo(D_80227C80)
/* 6A0D4 800AF8D4 00095100 */  sll        $t2, $t1, 4
/* 6A0D8 800AF8D8 01495021 */  addu       $t2, $t2, $t1
/* 6A0DC 800AF8DC 000A5080 */  sll        $t2, $t2, 2
/* 6A0E0 800AF8E0 01495023 */  subu       $t2, $t2, $t1
/* 6A0E4 800AF8E4 000A5080 */  sll        $t2, $t2, 2
/* 6A0E8 800AF8E8 01489821 */  addu       $s3, $t2, $t0
.L800AF8EC:
/* 6A0EC 800AF8EC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 6A0F0 800AF8F0 3C17801D */  lui        $s7, %hi(D_801D7AD8)
/* 6A0F4 800AF8F4 3C160500 */  lui        $s6, %hi(D_5000000)
/* 6A0F8 800AF8F8 3C15801B */  lui        $s5, %hi(D_801AE948)
/* 6A0FC 800AF8FC 3C11801B */  lui        $s1, %hi(D_801AE950)
/* 6A100 800AF900 4481D000 */  mtc1       $at, $f26
/* 6A104 800AF904 4480B000 */  mtc1       $zero, $f22
/* 6A108 800AF908 2631E950 */  addiu      $s1, $s1, %lo(D_801AE950)
/* 6A10C 800AF90C 26B5E948 */  addiu      $s5, $s5, %lo(D_801AE948)
/* 6A110 800AF910 26D60000 */  addiu      $s6, $s6, %lo(D_5000000)
/* 6A114 800AF914 26F77AD8 */  addiu      $s7, $s7, %lo(D_801D7AD8)
/* 6A118 800AF918 27BE00D8 */  addiu      $fp, $sp, 0xD8
/* 6A11C 800AF91C 8E4B0000 */  lw         $t3, 0x0($s2)
.L800AF920:
/* 6A120 800AF920 03C02825 */  or         $a1, $fp, $zero
/* 6A124 800AF924 51600096 */  beql       $t3, $zero, .L800AFB80
/* 6A128 800AF928 26520018 */   addiu     $s2, $s2, 0x18
/* 6A12C 800AF92C C6500008 */  lwc1       $f16, 0x8($s2)
/* 6A130 800AF930 C664004C */  lwc1       $f4, 0x4C($s3)
/* 6A134 800AF934 C652000C */  lwc1       $f18, 0xC($s2)
/* 6A138 800AF938 C6660050 */  lwc1       $f6, 0x50($s3)
/* 6A13C 800AF93C 46102301 */  sub.s      $f12, $f4, $f16
/* 6A140 800AF940 C6540010 */  lwc1       $f20, 0x10($s2)
/* 6A144 800AF944 C6680054 */  lwc1       $f8, 0x54($s3)
/* 6A148 800AF948 3C140105 */  lui        $s4, %hi(D_1051580)
/* 6A14C 800AF94C 46166032 */  c.eq.s     $f12, $f22
/* 6A150 800AF950 26941580 */  addiu      $s4, $s4, %lo(D_1051580)
/* 6A154 800AF954 46123601 */  sub.s      $f24, $f6, $f18
/* 6A158 800AF958 45000005 */  bc1f       .L800AF970
/* 6A15C 800AF95C 46144381 */   sub.s     $f14, $f8, $f20
/* 6A160 800AF960 46167032 */  c.eq.s     $f14, $f22
/* 6A164 800AF964 00000000 */  nop
/* 6A168 800AF968 45030005 */  bc1tl      .L800AF980
/* 6A16C 800AF96C 4600B006 */   mov.s     $f0, $f22
.L800AF970:
/* 6A170 800AF970 4600D006 */  mov.s      $f0, $f26
/* 6A174 800AF974 10000003 */  b          .L800AF984
/* 6A178 800AF978 4600B086 */   mov.s     $f2, $f22
/* 6A17C 800AF97C 4600B006 */  mov.s      $f0, $f22
.L800AF980:
/* 6A180 800AF980 4600D086 */  mov.s      $f2, $f26
.L800AF984:
/* 6A184 800AF984 8E2D0000 */  lw         $t5, 0x0($s1)
/* 6A188 800AF988 8EAC0000 */  lw         $t4, 0x0($s5)
/* 6A18C 800AF98C 44066000 */  mfc1       $a2, $f12
/* 6A190 800AF990 000D7980 */  sll        $t7, $t5, 6
/* 6A194 800AF994 4407C000 */  mfc1       $a3, $f24
/* 6A198 800AF998 018F2021 */  addu       $a0, $t4, $t7
/* 6A19C 800AF99C 24844140 */  addiu      $a0, $a0, 0x4140
/* 6A1A0 800AF9A0 E7AE0010 */  swc1       $f14, 0x10($sp)
/* 6A1A4 800AF9A4 E7B60014 */  swc1       $f22, 0x14($sp)
/* 6A1A8 800AF9A8 E7A00018 */  swc1       $f0, 0x18($sp)
/* 6A1AC 800AF9AC E7A2001C */  swc1       $f2, 0x1C($sp)
/* 6A1B0 800AF9B0 E7B00020 */  swc1       $f16, 0x20($sp)
/* 6A1B4 800AF9B4 E7B20024 */  swc1       $f18, 0x24($sp)
/* 6A1B8 800AF9B8 0C012215 */  jal        func_80048854
/* 6A1BC 800AF9BC E7B40028 */   swc1      $f20, 0x28($sp)
/* 6A1C0 800AF9C0 3C180102 */  lui        $t8, (0x1020040 >> 16)
/* 6A1C4 800AF9C4 37180040 */  ori        $t8, $t8, (0x1020040 & 0xFFFF)
/* 6A1C8 800AF9C8 02001025 */  or         $v0, $s0, $zero
/* 6A1CC 800AF9CC AC580000 */  sw         $t8, 0x0($v0)
/* 6A1D0 800AF9D0 8E2E0000 */  lw         $t6, 0x0($s1)
/* 6A1D4 800AF9D4 26100008 */  addiu      $s0, $s0, 0x8
/* 6A1D8 800AF9D8 000EC980 */  sll        $t9, $t6, 6
/* 6A1DC 800AF9DC 02D94821 */  addu       $t1, $s6, $t9
/* 6A1E0 800AF9E0 252A4140 */  addiu      $t2, $t1, 0x4140
/* 6A1E4 800AF9E4 AC4A0004 */  sw         $t2, 0x4($v0)
/* 6A1E8 800AF9E8 8E280000 */  lw         $t0, 0x0($s1)
/* 6A1EC 800AF9EC C6400014 */  lwc1       $f0, 0x14($s2)
/* 6A1F0 800AF9F0 8EAD0000 */  lw         $t5, 0x0($s5)
/* 6A1F4 800AF9F4 250B0001 */  addiu      $t3, $t0, 0x1
/* 6A1F8 800AF9F8 000B7980 */  sll        $t7, $t3, 6
/* 6A1FC 800AF9FC 44050000 */  mfc1       $a1, $f0
/* 6A200 800AFA00 44060000 */  mfc1       $a2, $f0
/* 6A204 800AFA04 44070000 */  mfc1       $a3, $f0
/* 6A208 800AFA08 01AF2021 */  addu       $a0, $t5, $t7
/* 6A20C 800AFA0C AE2B0000 */  sw         $t3, 0x0($s1)
/* 6A210 800AFA10 0C07BA5F */  jal        func_801EE97C
/* 6A214 800AFA14 24844140 */   addiu     $a0, $a0, 0x4140
/* 6A218 800AFA18 3C180100 */  lui        $t8, (0x1000040 >> 16)
/* 6A21C 800AFA1C 37180040 */  ori        $t8, $t8, (0x1000040 & 0xFFFF)
/* 6A220 800AFA20 02001025 */  or         $v0, $s0, $zero
/* 6A224 800AFA24 AC580000 */  sw         $t8, 0x0($v0)
/* 6A228 800AFA28 8E2E0000 */  lw         $t6, 0x0($s1)
/* 6A22C 800AFA2C 26100008 */  addiu      $s0, $s0, 0x8
/* 6A230 800AFA30 000EC980 */  sll        $t9, $t6, 6
/* 6A234 800AFA34 02D94821 */  addu       $t1, $s6, $t9
/* 6A238 800AFA38 252A4140 */  addiu      $t2, $t1, 0x4140
/* 6A23C 800AFA3C AC4A0004 */  sw         $t2, 0x4($v0)
/* 6A240 800AFA40 8E4C0004 */  lw         $t4, 0x4($s2)
/* 6A244 800AFA44 8E280000 */  lw         $t0, 0x0($s1)
/* 6A248 800AFA48 258DFFFF */  addiu      $t5, $t4, -0x1
/* 6A24C 800AFA4C 2DA10007 */  sltiu      $at, $t5, 0x7
/* 6A250 800AFA50 250B0001 */  addiu      $t3, $t0, 0x1
/* 6A254 800AFA54 10200007 */  beqz       $at, L800AFA74
/* 6A258 800AFA58 AE2B0000 */   sw        $t3, 0x0($s1)
/* 6A25C 800AFA5C 000D6880 */  sll        $t5, $t5, 2
/* 6A260 800AFA60 3C01800F */  lui        $at, %hi(jtbl_800EBB78_main)
/* 6A264 800AFA64 002D0821 */  addu       $at, $at, $t5
/* 6A268 800AFA68 8C2DBB78 */  lw         $t5, %lo(jtbl_800EBB78_main)($at)
/* 6A26C 800AFA6C 01A00008 */  jr         $t5
/* 6A270 800AFA70 00000000 */   nop
glabel L800AFA74
/* 6A274 800AFA74 3C060105 */  lui        $a2, %hi(D_1049C80)
/* 6A278 800AFA78 10000012 */  b          .L800AFAC4
/* 6A27C 800AFA7C 24C69C80 */   addiu     $a2, $a2, %lo(D_1049C80)
glabel L800AFA80
/* 6A280 800AFA80 3C060105 */  lui        $a2, %hi(D_104A488)
/* 6A284 800AFA84 1000000F */  b          .L800AFAC4
/* 6A288 800AFA88 24C6A488 */   addiu     $a2, $a2, %lo(D_104A488)
glabel L800AFA8C
/* 6A28C 800AFA8C 3C060105 */  lui        $a2, %hi(D_104AC90)
/* 6A290 800AFA90 1000000C */  b          .L800AFAC4
/* 6A294 800AFA94 24C6AC90 */   addiu     $a2, $a2, %lo(D_104AC90)
glabel L800AFA98
/* 6A298 800AFA98 3C060105 */  lui        $a2, %hi(D_104B498)
/* 6A29C 800AFA9C 10000009 */  b          .L800AFAC4
/* 6A2A0 800AFAA0 24C6B498 */   addiu     $a2, $a2, %lo(D_104B498)
glabel L800AFAA4
/* 6A2A4 800AFAA4 3C060105 */  lui        $a2, %hi(D_104BCA0)
/* 6A2A8 800AFAA8 10000006 */  b          .L800AFAC4
/* 6A2AC 800AFAAC 24C6BCA0 */   addiu     $a2, $a2, %lo(D_104BCA0)
glabel L800AFAB0
/* 6A2B0 800AFAB0 3C060105 */  lui        $a2, %hi(D_104C4A8)
/* 6A2B4 800AFAB4 10000003 */  b          .L800AFAC4
/* 6A2B8 800AFAB8 24C6C4A8 */   addiu     $a2, $a2, %lo(D_104C4A8)
glabel L800AFABC
/* 6A2BC 800AFABC 3C060105 */  lui        $a2, %hi(D_104CCB0)
/* 6A2C0 800AFAC0 24C6CCB0 */  addiu      $a2, $a2, %lo(D_104CCB0)
.L800AFAC4:
/* 6A2C4 800AFAC4 02001025 */  or         $v0, $s0, $zero
/* 6A2C8 800AFAC8 26100008 */  addiu      $s0, $s0, 0x8
/* 6A2CC 800AFACC 02001825 */  or         $v1, $s0, $zero
/* 6A2D0 800AFAD0 3C0FFD70 */  lui        $t7, (0xFD700000 >> 16)
/* 6A2D4 800AFAD4 AC4F0000 */  sw         $t7, 0x0($v0)
/* 6A2D8 800AFAD8 26100008 */  addiu      $s0, $s0, 0x8
/* 6A2DC 800AFADC AC460004 */  sw         $a2, 0x4($v0)
/* 6A2E0 800AFAE0 02002025 */  or         $a0, $s0, $zero
/* 6A2E4 800AFAE4 3C18F570 */  lui        $t8, (0xF5700000 >> 16)
/* 6A2E8 800AFAE8 3C0E0700 */  lui        $t6, (0x7000000 >> 16)
/* 6A2EC 800AFAEC AC6E0004 */  sw         $t6, 0x4($v1)
/* 6A2F0 800AFAF0 AC780000 */  sw         $t8, 0x0($v1)
/* 6A2F4 800AFAF4 26100008 */  addiu      $s0, $s0, 0x8
/* 6A2F8 800AFAF8 3C19E600 */  lui        $t9, (0xE6000000 >> 16)
/* 6A2FC 800AFAFC AC990000 */  sw         $t9, 0x0($a0)
/* 6A300 800AFB00 02002825 */  or         $a1, $s0, $zero
/* 6A304 800AFB04 AC800004 */  sw         $zero, 0x4($a0)
/* 6A308 800AFB08 26100008 */  addiu      $s0, $s0, 0x8
/* 6A30C 800AFB0C 3C0A073F */  lui        $t2, (0x73FF100 >> 16)
/* 6A310 800AFB10 354AF100 */  ori        $t2, $t2, (0x73FF100 & 0xFFFF)
/* 6A314 800AFB14 02003825 */  or         $a3, $s0, $zero
/* 6A318 800AFB18 3C09F300 */  lui        $t1, (0xF3000000 >> 16)
/* 6A31C 800AFB1C ACA90000 */  sw         $t1, 0x0($a1)
/* 6A320 800AFB20 26100008 */  addiu      $s0, $s0, 0x8
/* 6A324 800AFB24 ACAA0004 */  sw         $t2, 0x4($a1)
/* 6A328 800AFB28 02001025 */  or         $v0, $s0, $zero
/* 6A32C 800AFB2C 3C08E700 */  lui        $t0, (0xE7000000 >> 16)
/* 6A330 800AFB30 ACE80000 */  sw         $t0, 0x0($a3)
/* 6A334 800AFB34 26100008 */  addiu      $s0, $s0, 0x8
/* 6A338 800AFB38 ACE00004 */  sw         $zero, 0x4($a3)
/* 6A33C 800AFB3C 3C0BF570 */  lui        $t3, (0xF5701000 >> 16)
/* 6A340 800AFB40 356B1000 */  ori        $t3, $t3, (0xF5701000 & 0xFFFF)
/* 6A344 800AFB44 02001825 */  or         $v1, $s0, $zero
/* 6A348 800AFB48 26100008 */  addiu      $s0, $s0, 0x8
/* 6A34C 800AFB4C AC4B0000 */  sw         $t3, 0x0($v0)
/* 6A350 800AFB50 AC400004 */  sw         $zero, 0x4($v0)
/* 6A354 800AFB54 3C0D0007 */  lui        $t5, (0x7C07C >> 16)
/* 6A358 800AFB58 35ADC07C */  ori        $t5, $t5, (0x7C07C & 0xFFFF)
/* 6A35C 800AFB5C 3C0CF200 */  lui        $t4, (0xF2000000 >> 16)
/* 6A360 800AFB60 02002025 */  or         $a0, $s0, $zero
/* 6A364 800AFB64 AC6C0000 */  sw         $t4, 0x0($v1)
/* 6A368 800AFB68 AC6D0004 */  sw         $t5, 0x4($v1)
/* 6A36C 800AFB6C 3C0F0600 */  lui        $t7, (0x6000000 >> 16)
/* 6A370 800AFB70 AC8F0000 */  sw         $t7, 0x0($a0)
/* 6A374 800AFB74 AC940004 */  sw         $s4, 0x4($a0)
/* 6A378 800AFB78 26100008 */  addiu      $s0, $s0, 0x8
/* 6A37C 800AFB7C 26520018 */  addiu      $s2, $s2, 0x18
.L800AFB80:
/* 6A380 800AFB80 5657FF67 */  bnel       $s2, $s7, .L800AF920
/* 6A384 800AFB84 8E4B0000 */   lw        $t3, 0x0($s2)
/* 6A388 800AFB88 8FB80140 */  lw         $t8, 0x140($sp)
/* 6A38C 800AFB8C AF100000 */  sw         $s0, 0x0($t8)
/* 6A390 800AFB90 8FBF007C */  lw         $ra, 0x7C($sp)
/* 6A394 800AFB94 8FBE0078 */  lw         $fp, 0x78($sp)
/* 6A398 800AFB98 8FB70074 */  lw         $s7, 0x74($sp)
/* 6A39C 800AFB9C 8FB60070 */  lw         $s6, 0x70($sp)
/* 6A3A0 800AFBA0 8FB5006C */  lw         $s5, 0x6C($sp)
/* 6A3A4 800AFBA4 8FB40068 */  lw         $s4, 0x68($sp)
/* 6A3A8 800AFBA8 8FB30064 */  lw         $s3, 0x64($sp)
/* 6A3AC 800AFBAC 8FB20060 */  lw         $s2, 0x60($sp)
/* 6A3B0 800AFBB0 8FB1005C */  lw         $s1, 0x5C($sp)
/* 6A3B4 800AFBB4 8FB00058 */  lw         $s0, 0x58($sp)
/* 6A3B8 800AFBB8 D7BA0050 */  ldc1       $f26, 0x50($sp)
/* 6A3BC 800AFBBC D7B80048 */  ldc1       $f24, 0x48($sp)
/* 6A3C0 800AFBC0 D7B60040 */  ldc1       $f22, 0x40($sp)
/* 6A3C4 800AFBC4 D7B40038 */  ldc1       $f20, 0x38($sp)
/* 6A3C8 800AFBC8 03E00008 */  jr         $ra
/* 6A3CC 800AFBCC 27BD0140 */   addiu     $sp, $sp, 0x140

glabel func_800AFBD0
/* 6A3D0 800AFBD0 27BDFF18 */  addiu      $sp, $sp, -0xE8
/* 6A3D4 800AFBD4 3C0E800E */  lui        $t6, %hi(D_800E6D60)
/* 6A3D8 800AFBD8 8DCE6D60 */  lw         $t6, %lo(D_800E6D60)($t6)
/* 6A3DC 800AFBDC AFBF0084 */  sw         $ra, 0x84($sp)
/* 6A3E0 800AFBE0 AFBE0080 */  sw         $fp, 0x80($sp)
/* 6A3E4 800AFBE4 AFB7007C */  sw         $s7, 0x7C($sp)
/* 6A3E8 800AFBE8 AFB60078 */  sw         $s6, 0x78($sp)
/* 6A3EC 800AFBEC AFB50074 */  sw         $s5, 0x74($sp)
/* 6A3F0 800AFBF0 AFB40070 */  sw         $s4, 0x70($sp)
/* 6A3F4 800AFBF4 AFB3006C */  sw         $s3, 0x6C($sp)
/* 6A3F8 800AFBF8 AFB20068 */  sw         $s2, 0x68($sp)
/* 6A3FC 800AFBFC AFB10064 */  sw         $s1, 0x64($sp)
/* 6A400 800AFC00 AFB00060 */  sw         $s0, 0x60($sp)
/* 6A404 800AFC04 F7BE0058 */  sdc1       $f30, 0x58($sp)
/* 6A408 800AFC08 F7BC0050 */  sdc1       $f28, 0x50($sp)
/* 6A40C 800AFC0C F7BA0048 */  sdc1       $f26, 0x48($sp)
/* 6A410 800AFC10 F7B80040 */  sdc1       $f24, 0x40($sp)
/* 6A414 800AFC14 F7B60038 */  sdc1       $f22, 0x38($sp)
/* 6A418 800AFC18 F7B40030 */  sdc1       $f20, 0x30($sp)
/* 6A41C 800AFC1C AFA400E8 */  sw         $a0, 0xE8($sp)
/* 6A420 800AFC20 ADC01C20 */  sw         $zero, 0x1C20($t6)
/* 6A424 800AFC24 8FAF00E8 */  lw         $t7, 0xE8($sp)
/* 6A428 800AFC28 3C0D800E */  lui        $t5, %hi(D_800E6D68)
/* 6A42C 800AFC2C 8DAD6D68 */  lw         $t5, %lo(D_800E6D68)($t5)
/* 6A430 800AFC30 3C19801B */  lui        $t9, %hi(D_801AE948)
/* 6A434 800AFC34 8F39E948 */  lw         $t9, %lo(D_801AE948)($t9)
/* 6A438 800AFC38 000FC080 */  sll        $t8, $t7, 2
/* 6A43C 800AFC3C 3C12800E */  lui        $s2, %hi(D_800E6D64)
/* 6A440 800AFC40 030FC023 */  subu       $t8, $t8, $t7
/* 6A444 800AFC44 26526D64 */  addiu      $s2, $s2, %lo(D_800E6D64)
/* 6A448 800AFC48 0018C280 */  sll        $t8, $t8, 10
/* 6A44C 800AFC4C 25AE0FC0 */  addiu      $t6, $t5, 0xFC0
/* 6A450 800AFC50 AE4E0000 */  sw         $t6, 0x0($s2)
/* 6A454 800AFC54 3C01800F */  lui        $at, %hi(D_800EBB94)
/* 6A458 800AFC58 03388021 */  addu       $s0, $t9, $t8
/* 6A45C 800AFC5C 4480E000 */  mtc1       $zero, $f28
/* 6A460 800AFC60 261051C0 */  addiu      $s0, $s0, 0x51C0
/* 6A464 800AFC64 AFB80098 */  sw         $t8, 0x98($sp)
/* 6A468 800AFC68 C43EBB94 */  lwc1       $f30, %lo(D_800EBB94)($at)
/* 6A46C 800AFC6C 2414003F */  addiu      $s4, $zero, 0x3F
/* 6A470 800AFC70 241500FF */  addiu      $s5, $zero, 0xFF
/* 6A474 800AFC74 24160018 */  addiu      $s6, $zero, 0x18
/* 6A478 800AFC78 27B700A8 */  addiu      $s7, $sp, 0xA8
/* 6A47C 800AFC7C 27BE00A4 */  addiu      $fp, $sp, 0xA4
.L800AFC80:
/* 6A480 800AFC80 8E510000 */  lw         $s1, 0x0($s2)
/* 6A484 800AFC84 3C0D801D */  lui        $t5, %hi(D_801D7A08)
/* 6A488 800AFC88 8E2F0038 */  lw         $t7, 0x38($s1)
/* 6A48C 800AFC8C 51E00091 */  beql       $t7, $zero, .L800AFED4
/* 6A490 800AFC90 2694FFFF */   addiu     $s4, $s4, -0x1
/* 6A494 800AFC94 8E39003C */  lw         $t9, 0x3C($s1)
/* 6A498 800AFC98 8FAE00E8 */  lw         $t6, 0xE8($sp)
/* 6A49C 800AFC9C 3C0F801A */  lui        $t7, %hi(D_801982F0)
/* 6A4A0 800AFCA0 03360019 */  multu      $t9, $s6
/* 6A4A4 800AFCA4 0000C012 */  mflo       $t8
/* 6A4A8 800AFCA8 02B89823 */  subu       $s3, $s5, $t8
/* 6A4AC 800AFCAC 06610002 */  bgez       $s3, .L800AFCB8
/* 6A4B0 800AFCB0 00000000 */   nop
/* 6A4B4 800AFCB4 00009825 */  or         $s3, $zero, $zero
.L800AFCB8:
/* 6A4B8 800AFCB8 8DAD7A08 */  lw         $t5, %lo(D_801D7A08)($t5)
/* 6A4BC 800AFCBC C6340030 */  lwc1       $f20, 0x30($s1)
/* 6A4C0 800AFCC0 51A00006 */  beql       $t5, $zero, .L800AFCDC
/* 6A4C4 800AFCC4 C636000C */   lwc1      $f22, 0xC($s1)
/* 6A4C8 800AFCC8 8DEF82F0 */  lw         $t7, %lo(D_801982F0)($t7)
/* 6A4CC 800AFCCC 55CF0003 */  bnel       $t6, $t7, .L800AFCDC
/* 6A4D0 800AFCD0 C636000C */   lwc1      $f22, 0xC($s1)
/* 6A4D4 800AFCD4 4614A500 */  add.s      $f20, $f20, $f20
/* 6A4D8 800AFCD8 C636000C */  lwc1       $f22, 0xC($s1)
.L800AFCDC:
/* 6A4DC 800AFCDC C6380010 */  lwc1       $f24, 0x10($s1)
/* 6A4E0 800AFCE0 C63A0014 */  lwc1       $f26, 0x14($s1)
/* 6A4E4 800AFCE4 4616B102 */  mul.s      $f4, $f22, $f22
/* 6A4E8 800AFCE8 00000000 */  nop
/* 6A4EC 800AFCEC 4618C182 */  mul.s      $f6, $f24, $f24
/* 6A4F0 800AFCF0 46062200 */  add.s      $f8, $f4, $f6
/* 6A4F4 800AFCF4 461AD282 */  mul.s      $f10, $f26, $f26
/* 6A4F8 800AFCF8 0C031C04 */  jal        func_800C7010
/* 6A4FC 800AFCFC 460A4300 */   add.s     $f12, $f8, $f10
/* 6A500 800AFD00 4600E03C */  c.lt.s     $f28, $f0
/* 6A504 800AFD04 00000000 */  nop
/* 6A508 800AFD08 45000004 */  bc1f       .L800AFD1C
/* 6A50C 800AFD0C 00000000 */   nop
/* 6A510 800AFD10 4600B583 */  div.s      $f22, $f22, $f0
/* 6A514 800AFD14 4600C603 */  div.s      $f24, $f24, $f0
/* 6A518 800AFD18 4600D683 */  div.s      $f26, $f26, $f0
.L800AFD1C:
/* 6A51C 800AFD1C 461EA002 */  mul.s      $f0, $f20, $f30
/* 6A520 800AFD20 8E590000 */  lw         $t9, 0x0($s2)
/* 6A524 800AFD24 3C02801D */  lui        $v0, %hi(D_801D796C)
/* 6A528 800AFD28 4407B000 */  mfc1       $a3, $f22
/* 6A52C 800AFD2C C7240000 */  lwc1       $f4, 0x0($t9)
/* 6A530 800AFD30 27AF00A0 */  addiu      $t7, $sp, 0xA0
/* 6A534 800AFD34 26100010 */  addiu      $s0, $s0, 0x10
/* 6A538 800AFD38 46160182 */  mul.s      $f6, $f0, $f22
/* 6A53C 800AFD3C 46062200 */  add.s      $f8, $f4, $f6
/* 6A540 800AFD40 46180182 */  mul.s      $f6, $f0, $f24
/* 6A544 800AFD44 4600428D */  trunc.w.s  $f10, $f8
/* 6A548 800AFD48 440D5000 */  mfc1       $t5, $f10
/* 6A54C 800AFD4C 00000000 */  nop
/* 6A550 800AFD50 A60DFFF0 */  sh         $t5, -0x10($s0)
/* 6A554 800AFD54 8E4E0000 */  lw         $t6, 0x0($s2)
/* 6A558 800AFD58 C5C40004 */  lwc1       $f4, 0x4($t6)
/* 6A55C 800AFD5C 46062200 */  add.s      $f8, $f4, $f6
/* 6A560 800AFD60 461A0182 */  mul.s      $f6, $f0, $f26
/* 6A564 800AFD64 4600428D */  trunc.w.s  $f10, $f8
/* 6A568 800AFD68 44195000 */  mfc1       $t9, $f10
/* 6A56C 800AFD6C 00000000 */  nop
/* 6A570 800AFD70 A619FFF2 */  sh         $t9, -0xE($s0)
/* 6A574 800AFD74 8E580000 */  lw         $t8, 0x0($s2)
/* 6A578 800AFD78 C7040008 */  lwc1       $f4, 0x8($t8)
/* 6A57C 800AFD7C A213FFFF */  sb         $s3, -0x1($s0)
/* 6A580 800AFD80 46062200 */  add.s      $f8, $f4, $f6
/* 6A584 800AFD84 4600428D */  trunc.w.s  $f10, $f8
/* 6A588 800AFD88 440E5000 */  mfc1       $t6, $f10
/* 6A58C 800AFD8C 00000000 */  nop
/* 6A590 800AFD90 A60EFFF4 */  sh         $t6, -0xC($s0)
/* 6A594 800AFD94 8C42796C */  lw         $v0, %lo(D_801D796C)($v0)
/* 6A598 800AFD98 8E510000 */  lw         $s1, 0x0($s2)
/* 6A59C 800AFD9C C446004C */  lwc1       $f6, 0x4C($v0)
/* 6A5A0 800AFDA0 C6240000 */  lwc1       $f4, 0x0($s1)
/* 6A5A4 800AFDA4 C44A0050 */  lwc1       $f10, 0x50($v0)
/* 6A5A8 800AFDA8 C6280004 */  lwc1       $f8, 0x4($s1)
/* 6A5AC 800AFDAC 46062301 */  sub.s      $f12, $f4, $f6
/* 6A5B0 800AFDB0 C4460054 */  lwc1       $f6, 0x54($v0)
/* 6A5B4 800AFDB4 C6240008 */  lwc1       $f4, 0x8($s1)
/* 6A5B8 800AFDB8 460A4381 */  sub.s      $f14, $f8, $f10
/* 6A5BC 800AFDBC AFAF0020 */  sw         $t7, 0x20($sp)
/* 6A5C0 800AFDC0 AFBE001C */  sw         $fp, 0x1C($sp)
/* 6A5C4 800AFDC4 46062201 */  sub.s      $f8, $f4, $f6
/* 6A5C8 800AFDC8 AFB70018 */  sw         $s7, 0x18($sp)
/* 6A5CC 800AFDCC E7BA0014 */  swc1       $f26, 0x14($sp)
/* 6A5D0 800AFDD0 E7B80010 */  swc1       $f24, 0x10($sp)
/* 6A5D4 800AFDD4 44064000 */  mfc1       $a2, $f8
/* 6A5D8 800AFDD8 0C07B6B8 */  jal        func_801EDAE0
/* 6A5DC 800AFDDC 00000000 */   nop
/* 6A5E0 800AFDE0 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 6A5E4 800AFDE4 44815000 */  mtc1       $at, $f10
/* 6A5E8 800AFDE8 C7A400A8 */  lwc1       $f4, 0xA8($sp)
/* 6A5EC 800AFDEC 8E590000 */  lw         $t9, 0x0($s2)
/* 6A5F0 800AFDF0 460AA002 */  mul.s      $f0, $f20, $f10
/* 6A5F4 800AFDF4 3C02800E */  lui        $v0, %hi(D_800E6D60)
/* 6A5F8 800AFDF8 C7260000 */  lwc1       $f6, 0x0($t9)
/* 6A5FC 800AFDFC 26100020 */  addiu      $s0, $s0, 0x20
/* 6A600 800AFE00 46040402 */  mul.s      $f16, $f0, $f4
/* 6A604 800AFE04 46068200 */  add.s      $f8, $f16, $f6
/* 6A608 800AFE08 4600428D */  trunc.w.s  $f10, $f8
/* 6A60C 800AFE0C 440D5000 */  mfc1       $t5, $f10
/* 6A610 800AFE10 00000000 */  nop
/* 6A614 800AFE14 A60DFFE0 */  sh         $t5, -0x20($s0)
/* 6A618 800AFE18 C7A400A4 */  lwc1       $f4, 0xA4($sp)
/* 6A61C 800AFE1C 8E4E0000 */  lw         $t6, 0x0($s2)
/* 6A620 800AFE20 46040482 */  mul.s      $f18, $f0, $f4
/* 6A624 800AFE24 C5C60004 */  lwc1       $f6, 0x4($t6)
/* 6A628 800AFE28 46069200 */  add.s      $f8, $f18, $f6
/* 6A62C 800AFE2C 4600428D */  trunc.w.s  $f10, $f8
/* 6A630 800AFE30 44195000 */  mfc1       $t9, $f10
/* 6A634 800AFE34 00000000 */  nop
/* 6A638 800AFE38 A619FFE2 */  sh         $t9, -0x1E($s0)
/* 6A63C 800AFE3C C7A400A0 */  lwc1       $f4, 0xA0($sp)
/* 6A640 800AFE40 8E580000 */  lw         $t8, 0x0($s2)
/* 6A644 800AFE44 46040582 */  mul.s      $f22, $f0, $f4
/* 6A648 800AFE48 C7060008 */  lwc1       $f6, 0x8($t8)
/* 6A64C 800AFE4C A213FFEF */  sb         $s3, -0x11($s0)
/* 6A650 800AFE50 4606B200 */  add.s      $f8, $f22, $f6
/* 6A654 800AFE54 4600428D */  trunc.w.s  $f10, $f8
/* 6A658 800AFE58 440E5000 */  mfc1       $t6, $f10
/* 6A65C 800AFE5C 00000000 */  nop
/* 6A660 800AFE60 A60EFFE4 */  sh         $t6, -0x1C($s0)
/* 6A664 800AFE64 8E4F0000 */  lw         $t7, 0x0($s2)
/* 6A668 800AFE68 C5E40000 */  lwc1       $f4, 0x0($t7)
/* 6A66C 800AFE6C 46102181 */  sub.s      $f6, $f4, $f16
/* 6A670 800AFE70 4600320D */  trunc.w.s  $f8, $f6
/* 6A674 800AFE74 44184000 */  mfc1       $t8, $f8
/* 6A678 800AFE78 00000000 */  nop
/* 6A67C 800AFE7C A618FFF0 */  sh         $t8, -0x10($s0)
/* 6A680 800AFE80 8E4D0000 */  lw         $t5, 0x0($s2)
/* 6A684 800AFE84 C5AA0004 */  lwc1       $f10, 0x4($t5)
/* 6A688 800AFE88 46125101 */  sub.s      $f4, $f10, $f18
/* 6A68C 800AFE8C 4600218D */  trunc.w.s  $f6, $f4
/* 6A690 800AFE90 440F3000 */  mfc1       $t7, $f6
/* 6A694 800AFE94 00000000 */  nop
/* 6A698 800AFE98 A60FFFF2 */  sh         $t7, -0xE($s0)
/* 6A69C 800AFE9C 8E590000 */  lw         $t9, 0x0($s2)
/* 6A6A0 800AFEA0 C7280008 */  lwc1       $f8, 0x8($t9)
/* 6A6A4 800AFEA4 A213FFFF */  sb         $s3, -0x1($s0)
/* 6A6A8 800AFEA8 46164281 */  sub.s      $f10, $f8, $f22
/* 6A6AC 800AFEAC 4600510D */  trunc.w.s  $f4, $f10
/* 6A6B0 800AFEB0 440D2000 */  mfc1       $t5, $f4
/* 6A6B4 800AFEB4 00000000 */  nop
/* 6A6B8 800AFEB8 A60DFFF4 */  sh         $t5, -0xC($s0)
/* 6A6BC 800AFEBC 8C426D60 */  lw         $v0, %lo(D_800E6D60)($v0)
/* 6A6C0 800AFEC0 8C4E1C20 */  lw         $t6, 0x1C20($v0)
/* 6A6C4 800AFEC4 25CF0001 */  addiu      $t7, $t6, 0x1
/* 6A6C8 800AFEC8 AC4F1C20 */  sw         $t7, 0x1C20($v0)
/* 6A6CC 800AFECC 8E510000 */  lw         $s1, 0x0($s2)
/* 6A6D0 800AFED0 2694FFFF */  addiu      $s4, $s4, -0x1
.L800AFED4:
/* 6A6D4 800AFED4 2639FFC0 */  addiu      $t9, $s1, -0x40
/* 6A6D8 800AFED8 0681FF69 */  bgez       $s4, .L800AFC80
/* 6A6DC 800AFEDC AE590000 */   sw        $t9, 0x0($s2)
/* 6A6E0 800AFEE0 3C18800E */  lui        $t8, %hi(D_800DAB28)
/* 6A6E4 800AFEE4 8F18AB28 */  lw         $t8, %lo(D_800DAB28)($t8)
/* 6A6E8 800AFEE8 24010002 */  addiu      $at, $zero, 0x2
/* 6A6EC 800AFEEC 3C0D801B */  lui        $t5, %hi(D_801AE948)
/* 6A6F0 800AFEF0 1701009A */  bne        $t8, $at, .L800B015C
/* 6A6F4 800AFEF4 8FAE0098 */   lw        $t6, 0x98($sp)
/* 6A6F8 800AFEF8 3C0F800E */  lui        $t7, %hi(D_800E6D68)
/* 6A6FC 800AFEFC 8DADE948 */  lw         $t5, %lo(D_801AE948)($t5)
/* 6A700 800AFF00 8DEF6D68 */  lw         $t7, %lo(D_800E6D68)($t7)
/* 6A704 800AFF04 2414003F */  addiu      $s4, $zero, 0x3F
/* 6A708 800AFF08 01AE8021 */  addu       $s0, $t5, $t6
/* 6A70C 800AFF0C 25F90FC0 */  addiu      $t9, $t7, 0xFC0
/* 6A710 800AFF10 261069C0 */  addiu      $s0, $s0, 0x69C0
/* 6A714 800AFF14 AE590000 */  sw         $t9, 0x0($s2)
.L800AFF18:
/* 6A718 800AFF18 8E510000 */  lw         $s1, 0x0($s2)
/* 6A71C 800AFF1C 8E380038 */  lw         $t8, 0x38($s1)
/* 6A720 800AFF20 5300008B */  beql       $t8, $zero, .L800B0150
/* 6A724 800AFF24 2694FFFF */   addiu     $s4, $s4, -0x1
/* 6A728 800AFF28 8E2D003C */  lw         $t5, 0x3C($s1)
/* 6A72C 800AFF2C 01B60019 */  multu      $t5, $s6
/* 6A730 800AFF30 00007012 */  mflo       $t6
/* 6A734 800AFF34 02AE9823 */  subu       $s3, $s5, $t6
/* 6A738 800AFF38 06630003 */  bgezl      $s3, .L800AFF48
/* 6A73C 800AFF3C C6340030 */   lwc1      $f20, 0x30($s1)
/* 6A740 800AFF40 00009825 */  or         $s3, $zero, $zero
/* 6A744 800AFF44 C6340030 */  lwc1       $f20, 0x30($s1)
.L800AFF48:
/* 6A748 800AFF48 A213000F */  sb         $s3, 0xF($s0)
/* 6A74C 800AFF4C 8E510000 */  lw         $s1, 0x0($s2)
/* 6A750 800AFF50 C636000C */  lwc1       $f22, 0xC($s1)
/* 6A754 800AFF54 C6380010 */  lwc1       $f24, 0x10($s1)
/* 6A758 800AFF58 C63A0014 */  lwc1       $f26, 0x14($s1)
/* 6A75C 800AFF5C 4616B182 */  mul.s      $f6, $f22, $f22
/* 6A760 800AFF60 00000000 */  nop
/* 6A764 800AFF64 4618C202 */  mul.s      $f8, $f24, $f24
/* 6A768 800AFF68 46083280 */  add.s      $f10, $f6, $f8
/* 6A76C 800AFF6C 461AD102 */  mul.s      $f4, $f26, $f26
/* 6A770 800AFF70 0C031C04 */  jal        func_800C7010
/* 6A774 800AFF74 46045300 */   add.s     $f12, $f10, $f4
/* 6A778 800AFF78 4600E03C */  c.lt.s     $f28, $f0
/* 6A77C 800AFF7C 00000000 */  nop
/* 6A780 800AFF80 45000004 */  bc1f       .L800AFF94
/* 6A784 800AFF84 00000000 */   nop
/* 6A788 800AFF88 4600B583 */  div.s      $f22, $f22, $f0
/* 6A78C 800AFF8C 4600C603 */  div.s      $f24, $f24, $f0
/* 6A790 800AFF90 4600D683 */  div.s      $f26, $f26, $f0
.L800AFF94:
/* 6A794 800AFF94 461EA002 */  mul.s      $f0, $f20, $f30
/* 6A798 800AFF98 8E4F0000 */  lw         $t7, 0x0($s2)
/* 6A79C 800AFF9C 3C02801D */  lui        $v0, %hi(D_801D7970)
/* 6A7A0 800AFFA0 4407B000 */  mfc1       $a3, $f22
/* 6A7A4 800AFFA4 C5E60000 */  lwc1       $f6, 0x0($t7)
/* 6A7A8 800AFFA8 27AE00A0 */  addiu      $t6, $sp, 0xA0
/* 6A7AC 800AFFAC 26100010 */  addiu      $s0, $s0, 0x10
/* 6A7B0 800AFFB0 46160202 */  mul.s      $f8, $f0, $f22
/* 6A7B4 800AFFB4 46083280 */  add.s      $f10, $f6, $f8
/* 6A7B8 800AFFB8 46180202 */  mul.s      $f8, $f0, $f24
/* 6A7BC 800AFFBC 4600510D */  trunc.w.s  $f4, $f10
/* 6A7C0 800AFFC0 44182000 */  mfc1       $t8, $f4
/* 6A7C4 800AFFC4 00000000 */  nop
/* 6A7C8 800AFFC8 A618FFF0 */  sh         $t8, -0x10($s0)
/* 6A7CC 800AFFCC 8E4D0000 */  lw         $t5, 0x0($s2)
/* 6A7D0 800AFFD0 C5A60004 */  lwc1       $f6, 0x4($t5)
/* 6A7D4 800AFFD4 46083280 */  add.s      $f10, $f6, $f8
/* 6A7D8 800AFFD8 461A0202 */  mul.s      $f8, $f0, $f26
/* 6A7DC 800AFFDC 4600510D */  trunc.w.s  $f4, $f10
/* 6A7E0 800AFFE0 440F2000 */  mfc1       $t7, $f4
/* 6A7E4 800AFFE4 00000000 */  nop
/* 6A7E8 800AFFE8 A60FFFF2 */  sh         $t7, -0xE($s0)
/* 6A7EC 800AFFEC 8E590000 */  lw         $t9, 0x0($s2)
/* 6A7F0 800AFFF0 C7260008 */  lwc1       $f6, 0x8($t9)
/* 6A7F4 800AFFF4 A213FFFF */  sb         $s3, -0x1($s0)
/* 6A7F8 800AFFF8 46083280 */  add.s      $f10, $f6, $f8
/* 6A7FC 800AFFFC 4600510D */  trunc.w.s  $f4, $f10
/* 6A800 800B0000 440D2000 */  mfc1       $t5, $f4
/* 6A804 800B0004 00000000 */  nop
/* 6A808 800B0008 A60DFFF4 */  sh         $t5, -0xC($s0)
/* 6A80C 800B000C 8C427970 */  lw         $v0, %lo(D_801D7970)($v0)
/* 6A810 800B0010 8E510000 */  lw         $s1, 0x0($s2)
/* 6A814 800B0014 C448004C */  lwc1       $f8, 0x4C($v0)
/* 6A818 800B0018 C6260000 */  lwc1       $f6, 0x0($s1)
/* 6A81C 800B001C C4440050 */  lwc1       $f4, 0x50($v0)
/* 6A820 800B0020 C62A0004 */  lwc1       $f10, 0x4($s1)
/* 6A824 800B0024 46083301 */  sub.s      $f12, $f6, $f8
/* 6A828 800B0028 C4480054 */  lwc1       $f8, 0x54($v0)
/* 6A82C 800B002C C6260008 */  lwc1       $f6, 0x8($s1)
/* 6A830 800B0030 46045381 */  sub.s      $f14, $f10, $f4
/* 6A834 800B0034 AFAE0020 */  sw         $t6, 0x20($sp)
/* 6A838 800B0038 AFBE001C */  sw         $fp, 0x1C($sp)
/* 6A83C 800B003C 46083281 */  sub.s      $f10, $f6, $f8
/* 6A840 800B0040 AFB70018 */  sw         $s7, 0x18($sp)
/* 6A844 800B0044 E7BA0014 */  swc1       $f26, 0x14($sp)
/* 6A848 800B0048 E7B80010 */  swc1       $f24, 0x10($sp)
/* 6A84C 800B004C 44065000 */  mfc1       $a2, $f10
/* 6A850 800B0050 0C07B6B8 */  jal        func_801EDAE0
/* 6A854 800B0054 00000000 */   nop
/* 6A858 800B0058 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 6A85C 800B005C 44812000 */  mtc1       $at, $f4
/* 6A860 800B0060 C7A800A8 */  lwc1       $f8, 0xA8($sp)
/* 6A864 800B0064 8E4F0000 */  lw         $t7, 0x0($s2)
/* 6A868 800B0068 4604A002 */  mul.s      $f0, $f20, $f4
/* 6A86C 800B006C 26100020 */  addiu      $s0, $s0, 0x20
/* 6A870 800B0070 C5E60000 */  lwc1       $f6, 0x0($t7)
/* 6A874 800B0074 46080282 */  mul.s      $f10, $f0, $f8
/* 6A878 800B0078 460A3100 */  add.s      $f4, $f6, $f10
/* 6A87C 800B007C 4600220D */  trunc.w.s  $f8, $f4
/* 6A880 800B0080 44184000 */  mfc1       $t8, $f8
/* 6A884 800B0084 00000000 */  nop
/* 6A888 800B0088 A618FFE0 */  sh         $t8, -0x20($s0)
/* 6A88C 800B008C C7AA00A4 */  lwc1       $f10, 0xA4($sp)
/* 6A890 800B0090 8E4D0000 */  lw         $t5, 0x0($s2)
/* 6A894 800B0094 460A0102 */  mul.s      $f4, $f0, $f10
/* 6A898 800B0098 C5A60004 */  lwc1       $f6, 0x4($t5)
/* 6A89C 800B009C 46043200 */  add.s      $f8, $f6, $f4
/* 6A8A0 800B00A0 4600428D */  trunc.w.s  $f10, $f8
/* 6A8A4 800B00A4 440F5000 */  mfc1       $t7, $f10
/* 6A8A8 800B00A8 00000000 */  nop
/* 6A8AC 800B00AC A60FFFE2 */  sh         $t7, -0x1E($s0)
/* 6A8B0 800B00B0 C7A400A0 */  lwc1       $f4, 0xA0($sp)
/* 6A8B4 800B00B4 8E590000 */  lw         $t9, 0x0($s2)
/* 6A8B8 800B00B8 46040202 */  mul.s      $f8, $f0, $f4
/* 6A8BC 800B00BC C7260008 */  lwc1       $f6, 0x8($t9)
/* 6A8C0 800B00C0 A213FFEF */  sb         $s3, -0x11($s0)
/* 6A8C4 800B00C4 46083280 */  add.s      $f10, $f6, $f8
/* 6A8C8 800B00C8 4600510D */  trunc.w.s  $f4, $f10
/* 6A8CC 800B00CC 440D2000 */  mfc1       $t5, $f4
/* 6A8D0 800B00D0 00000000 */  nop
/* 6A8D4 800B00D4 A60DFFE4 */  sh         $t5, -0x1C($s0)
/* 6A8D8 800B00D8 C7A800A8 */  lwc1       $f8, 0xA8($sp)
/* 6A8DC 800B00DC 8E4E0000 */  lw         $t6, 0x0($s2)
/* 6A8E0 800B00E0 46080282 */  mul.s      $f10, $f0, $f8
/* 6A8E4 800B00E4 C5C60000 */  lwc1       $f6, 0x0($t6)
/* 6A8E8 800B00E8 460A3101 */  sub.s      $f4, $f6, $f10
/* 6A8EC 800B00EC 4600220D */  trunc.w.s  $f8, $f4
/* 6A8F0 800B00F0 44194000 */  mfc1       $t9, $f8
/* 6A8F4 800B00F4 00000000 */  nop
/* 6A8F8 800B00F8 A619FFF0 */  sh         $t9, -0x10($s0)
/* 6A8FC 800B00FC C7AA00A4 */  lwc1       $f10, 0xA4($sp)
/* 6A900 800B0100 8E580000 */  lw         $t8, 0x0($s2)
/* 6A904 800B0104 460A0102 */  mul.s      $f4, $f0, $f10
/* 6A908 800B0108 C7060004 */  lwc1       $f6, 0x4($t8)
/* 6A90C 800B010C 46043201 */  sub.s      $f8, $f6, $f4
/* 6A910 800B0110 4600428D */  trunc.w.s  $f10, $f8
/* 6A914 800B0114 440E5000 */  mfc1       $t6, $f10
/* 6A918 800B0118 00000000 */  nop
/* 6A91C 800B011C A60EFFF2 */  sh         $t6, -0xE($s0)
/* 6A920 800B0120 C7A400A0 */  lwc1       $f4, 0xA0($sp)
/* 6A924 800B0124 8E4F0000 */  lw         $t7, 0x0($s2)
/* 6A928 800B0128 46040202 */  mul.s      $f8, $f0, $f4
/* 6A92C 800B012C C5E60008 */  lwc1       $f6, 0x8($t7)
/* 6A930 800B0130 A213FFFF */  sb         $s3, -0x1($s0)
/* 6A934 800B0134 46083281 */  sub.s      $f10, $f6, $f8
/* 6A938 800B0138 4600510D */  trunc.w.s  $f4, $f10
/* 6A93C 800B013C 44182000 */  mfc1       $t8, $f4
/* 6A940 800B0140 00000000 */  nop
/* 6A944 800B0144 A618FFF4 */  sh         $t8, -0xC($s0)
/* 6A948 800B0148 8E510000 */  lw         $s1, 0x0($s2)
/* 6A94C 800B014C 2694FFFF */  addiu      $s4, $s4, -0x1
.L800B0150:
/* 6A950 800B0150 262DFFC0 */  addiu      $t5, $s1, -0x40
/* 6A954 800B0154 0681FF70 */  bgez       $s4, .L800AFF18
/* 6A958 800B0158 AE4D0000 */   sw        $t5, 0x0($s2)
.L800B015C:
/* 6A95C 800B015C 3C0E800E */  lui        $t6, %hi(D_800E6D60)
/* 6A960 800B0160 8DCE6D60 */  lw         $t6, %lo(D_800E6D60)($t6)
/* 6A964 800B0164 3C19800D */  lui        $t9, %hi(D_800D48DC)
/* 6A968 800B0168 3C04800E */  lui        $a0, %hi(D_800E6D6C)
/* 6A96C 800B016C ADC01C24 */  sw         $zero, 0x1C24($t6)
/* 6A970 800B0170 8F3948DC */  lw         $t9, %lo(D_800D48DC)($t9)
/* 6A974 800B0174 8FAF00E8 */  lw         $t7, 0xE8($sp)
/* 6A978 800B0178 3C09800E */  lui        $t1, %hi(D_800E6D74)
/* 6A97C 800B017C 24846D6C */  addiu      $a0, $a0, %lo(D_800E6D6C)
/* 6A980 800B0180 15F9006A */  bne        $t7, $t9, .L800B032C
/* 6A984 800B0184 25296D74 */   addiu     $t1, $t1, %lo(D_800E6D74)
/* 6A988 800B0188 3C18800E */  lui        $t8, %hi(D_800E6D70)
/* 6A98C 800B018C 8F186D70 */  lw         $t8, %lo(D_800E6D70)($t8)
/* 6A990 800B0190 3C10801B */  lui        $s0, %hi(D_801AE948)
/* 6A994 800B0194 8E10E948 */  lw         $s0, %lo(D_801AE948)($s0)
/* 6A998 800B0198 340181C0 */  ori        $at, $zero, 0x81C0
/* 6A99C 800B019C 3C0B801D */  lui        $t3, %hi(D_801D7994)
/* 6A9A0 800B01A0 3C0A801D */  lui        $t2, %hi(D_801D7990)
/* 6A9A4 800B01A4 3C08801D */  lui        $t0, %hi(D_801D798C)
/* 6A9A8 800B01A8 3C07801D */  lui        $a3, %hi(D_801D7988)
/* 6A9AC 800B01AC 3C06801D */  lui        $a2, %hi(D_801D7984)
/* 6A9B0 800B01B0 3C05801D */  lui        $a1, %hi(D_801D7980)
/* 6A9B4 800B01B4 270D09D8 */  addiu      $t5, $t8, 0x9D8
/* 6A9B8 800B01B8 AC8D0000 */  sw         $t5, 0x0($a0)
/* 6A9BC 800B01BC 24A57980 */  addiu      $a1, $a1, %lo(D_801D7980)
/* 6A9C0 800B01C0 24C67984 */  addiu      $a2, $a2, %lo(D_801D7984)
/* 6A9C4 800B01C4 24E77988 */  addiu      $a3, $a3, %lo(D_801D7988)
/* 6A9C8 800B01C8 2508798C */  addiu      $t0, $t0, %lo(D_801D798C)
/* 6A9CC 800B01CC 254A7990 */  addiu      $t2, $t2, %lo(D_801D7990)
/* 6A9D0 800B01D0 256B7994 */  addiu      $t3, $t3, %lo(D_801D7994)
/* 6A9D4 800B01D4 2414003F */  addiu      $s4, $zero, 0x3F
/* 6A9D8 800B01D8 02018021 */  addu       $s0, $s0, $at
.L800B01DC:
/* 6A9DC 800B01DC 8C830000 */  lw         $v1, 0x0($a0)
/* 6A9E0 800B01E0 2694FFFF */  addiu      $s4, $s4, -0x1
/* 6A9E4 800B01E4 8C6E0020 */  lw         $t6, 0x20($v1)
/* 6A9E8 800B01E8 51C0004E */  beql       $t6, $zero, .L800B0324
/* 6A9EC 800B01EC 246EFFD8 */   addiu     $t6, $v1, -0x28
/* 6A9F0 800B01F0 8C6F0024 */  lw         $t7, 0x24($v1)
/* 6A9F4 800B01F4 C4740018 */  lwc1       $f20, 0x18($v1)
/* 6A9F8 800B01F8 000FC940 */  sll        $t9, $t7, 5
/* 6A9FC 800B01FC 02B99823 */  subu       $s3, $s5, $t9
/* 6AA00 800B0200 06630003 */  bgezl      $s3, .L800B0210
/* 6AA04 800B0204 C4620000 */   lwc1      $f2, 0x0($v1)
/* 6AA08 800B0208 00009825 */  or         $s3, $zero, $zero
/* 6AA0C 800B020C C4620000 */  lwc1       $f2, 0x0($v1)
.L800B0210:
/* 6AA10 800B0210 3C02800E */  lui        $v0, %hi(D_800E6D60)
/* 6AA14 800B0214 26100030 */  addiu      $s0, $s0, 0x30
/* 6AA18 800B0218 4600118D */  trunc.w.s  $f6, $f2
/* 6AA1C 800B021C 440D3000 */  mfc1       $t5, $f6
/* 6AA20 800B0220 00000000 */  nop
/* 6AA24 800B0224 A60DFFD0 */  sh         $t5, -0x30($s0)
/* 6AA28 800B0228 8C8E0000 */  lw         $t6, 0x0($a0)
/* 6AA2C 800B022C C5CC0004 */  lwc1       $f12, 0x4($t6)
/* 6AA30 800B0230 4600620D */  trunc.w.s  $f8, $f12
/* 6AA34 800B0234 44194000 */  mfc1       $t9, $f8
/* 6AA38 800B0238 00000000 */  nop
/* 6AA3C 800B023C A619FFD2 */  sh         $t9, -0x2E($s0)
/* 6AA40 800B0240 8C980000 */  lw         $t8, 0x0($a0)
/* 6AA44 800B0244 C70E0008 */  lwc1       $f14, 0x8($t8)
/* 6AA48 800B0248 A213FFDF */  sb         $s3, -0x21($s0)
/* 6AA4C 800B024C 4600728D */  trunc.w.s  $f10, $f14
/* 6AA50 800B0250 440E5000 */  mfc1       $t6, $f10
/* 6AA54 800B0254 00000000 */  nop
/* 6AA58 800B0258 A60EFFD4 */  sh         $t6, -0x2C($s0)
/* 6AA5C 800B025C C4A40000 */  lwc1       $f4, 0x0($a1)
/* 6AA60 800B0260 46142182 */  mul.s      $f6, $f4, $f20
/* 6AA64 800B0264 46023200 */  add.s      $f8, $f6, $f2
/* 6AA68 800B0268 4600428D */  trunc.w.s  $f10, $f8
/* 6AA6C 800B026C 44195000 */  mfc1       $t9, $f10
/* 6AA70 800B0270 00000000 */  nop
/* 6AA74 800B0274 A619FFE0 */  sh         $t9, -0x20($s0)
/* 6AA78 800B0278 C4C40000 */  lwc1       $f4, 0x0($a2)
/* 6AA7C 800B027C 46142182 */  mul.s      $f6, $f4, $f20
/* 6AA80 800B0280 460C3200 */  add.s      $f8, $f6, $f12
/* 6AA84 800B0284 4600428D */  trunc.w.s  $f10, $f8
/* 6AA88 800B0288 440D5000 */  mfc1       $t5, $f10
/* 6AA8C 800B028C 00000000 */  nop
/* 6AA90 800B0290 A60DFFE2 */  sh         $t5, -0x1E($s0)
/* 6AA94 800B0294 C4E40000 */  lwc1       $f4, 0x0($a3)
/* 6AA98 800B0298 A213FFEF */  sb         $s3, -0x11($s0)
/* 6AA9C 800B029C 46142182 */  mul.s      $f6, $f4, $f20
/* 6AAA0 800B02A0 460E3200 */  add.s      $f8, $f6, $f14
/* 6AAA4 800B02A4 4600428D */  trunc.w.s  $f10, $f8
/* 6AAA8 800B02A8 440F5000 */  mfc1       $t7, $f10
/* 6AAAC 800B02AC 00000000 */  nop
/* 6AAB0 800B02B0 A60FFFE4 */  sh         $t7, -0x1C($s0)
/* 6AAB4 800B02B4 C5040000 */  lwc1       $f4, 0x0($t0)
/* 6AAB8 800B02B8 46142182 */  mul.s      $f6, $f4, $f20
/* 6AABC 800B02BC 46023200 */  add.s      $f8, $f6, $f2
/* 6AAC0 800B02C0 4600428D */  trunc.w.s  $f10, $f8
/* 6AAC4 800B02C4 44185000 */  mfc1       $t8, $f10
/* 6AAC8 800B02C8 00000000 */  nop
/* 6AACC 800B02CC A618FFF0 */  sh         $t8, -0x10($s0)
/* 6AAD0 800B02D0 C5440000 */  lwc1       $f4, 0x0($t2)
/* 6AAD4 800B02D4 46142182 */  mul.s      $f6, $f4, $f20
/* 6AAD8 800B02D8 460C3200 */  add.s      $f8, $f6, $f12
/* 6AADC 800B02DC 4600428D */  trunc.w.s  $f10, $f8
/* 6AAE0 800B02E0 440E5000 */  mfc1       $t6, $f10
/* 6AAE4 800B02E4 00000000 */  nop
/* 6AAE8 800B02E8 A60EFFF2 */  sh         $t6, -0xE($s0)
/* 6AAEC 800B02EC C5640000 */  lwc1       $f4, 0x0($t3)
/* 6AAF0 800B02F0 A213FFFF */  sb         $s3, -0x1($s0)
/* 6AAF4 800B02F4 46142182 */  mul.s      $f6, $f4, $f20
/* 6AAF8 800B02F8 460E3200 */  add.s      $f8, $f6, $f14
/* 6AAFC 800B02FC 4600428D */  trunc.w.s  $f10, $f8
/* 6AB00 800B0300 44195000 */  mfc1       $t9, $f10
/* 6AB04 800B0304 00000000 */  nop
/* 6AB08 800B0308 A619FFF4 */  sh         $t9, -0xC($s0)
/* 6AB0C 800B030C 8C426D60 */  lw         $v0, %lo(D_800E6D60)($v0)
/* 6AB10 800B0310 8C581C24 */  lw         $t8, 0x1C24($v0)
/* 6AB14 800B0314 270D0001 */  addiu      $t5, $t8, 0x1
/* 6AB18 800B0318 AC4D1C24 */  sw         $t5, 0x1C24($v0)
/* 6AB1C 800B031C 8C830000 */  lw         $v1, 0x0($a0)
/* 6AB20 800B0320 246EFFD8 */  addiu      $t6, $v1, -0x28
.L800B0324:
/* 6AB24 800B0324 0681FFAD */  bgez       $s4, .L800B01DC
/* 6AB28 800B0328 AC8E0000 */   sw        $t6, 0x0($a0)
.L800B032C:
/* 6AB2C 800B032C 8FAC00E8 */  lw         $t4, 0xE8($sp)
/* 6AB30 800B0330 3C19801B */  lui        $t9, %hi(D_801AE948)
/* 6AB34 800B0334 8F39E948 */  lw         $t9, %lo(D_801AE948)($t9)
/* 6AB38 800B0338 3C03800E */  lui        $v1, %hi(D_800E6D78)
/* 6AB3C 800B033C 000C7A00 */  sll        $t7, $t4, 8
/* 6AB40 800B0340 24636D78 */  addiu      $v1, $v1, %lo(D_800E6D78)
/* 6AB44 800B0344 34018DC0 */  ori        $at, $zero, 0x8DC0
/* 6AB48 800B0348 032F8021 */  addu       $s0, $t9, $t7
/* 6AB4C 800B034C 8C780000 */  lw         $t8, 0x0($v1)
/* 6AB50 800B0350 02018021 */  addu       $s0, $s0, $at
/* 6AB54 800B0354 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 6AB58 800B0358 3C05801D */  lui        $a1, %hi(D_801D7980)
/* 6AB5C 800B035C 3C06801D */  lui        $a2, %hi(D_801D7984)
/* 6AB60 800B0360 3C07801D */  lui        $a3, %hi(D_801D7988)
/* 6AB64 800B0364 3C08801D */  lui        $t0, %hi(D_801D798C)
/* 6AB68 800B0368 3C0A801D */  lui        $t2, %hi(D_801D7990)
/* 6AB6C 800B036C 3C0B801D */  lui        $t3, %hi(D_801D7994)
/* 6AB70 800B0370 44818000 */  mtc1       $at, $f16
/* 6AB74 800B0374 256B7994 */  addiu      $t3, $t3, %lo(D_801D7994)
/* 6AB78 800B0378 254A7990 */  addiu      $t2, $t2, %lo(D_801D7990)
/* 6AB7C 800B037C 2508798C */  addiu      $t0, $t0, %lo(D_801D798C)
/* 6AB80 800B0380 24E77988 */  addiu      $a3, $a3, %lo(D_801D7988)
/* 6AB84 800B0384 24C67984 */  addiu      $a2, $a2, %lo(D_801D7984)
/* 6AB88 800B0388 24A57980 */  addiu      $a1, $a1, %lo(D_801D7980)
/* 6AB8C 800B038C 01E06025 */  or         $t4, $t7, $zero
/* 6AB90 800B0390 0000A025 */  or         $s4, $zero, $zero
/* 6AB94 800B0394 AD380000 */  sw         $t8, 0x0($t1)
.L800B0398:
/* 6AB98 800B0398 8D220000 */  lw         $v0, 0x0($t1)
/* 6AB9C 800B039C 26940001 */  addiu      $s4, $s4, 0x1
/* 6ABA0 800B03A0 2A810004 */  slti       $at, $s4, 0x4
/* 6ABA4 800B03A4 8C4D0020 */  lw         $t5, 0x20($v0)
/* 6ABA8 800B03A8 3C0E801D */  lui        $t6, %hi(D_801D7A08)
/* 6ABAC 800B03AC 51A00070 */  beql       $t5, $zero, .L800B0570
/* 6ABB0 800B03B0 24590028 */   addiu     $t9, $v0, 0x28
/* 6ABB4 800B03B4 8DCE7A08 */  lw         $t6, %lo(D_801D7A08)($t6)
/* 6ABB8 800B03B8 C4420000 */  lwc1       $f2, 0x0($v0)
/* 6ABBC 800B03BC C44C0004 */  lwc1       $f12, 0x4($v0)
/* 6ABC0 800B03C0 C44E0008 */  lwc1       $f14, 0x8($v0)
/* 6ABC4 800B03C4 11C00007 */  beqz       $t6, .L800B03E4
/* 6ABC8 800B03C8 C4540018 */   lwc1      $f20, 0x18($v0)
/* 6ABCC 800B03CC 3C19801A */  lui        $t9, %hi(D_801982F0)
/* 6ABD0 800B03D0 8F3982F0 */  lw         $t9, %lo(D_801982F0)($t9)
/* 6ABD4 800B03D4 8FAF00E8 */  lw         $t7, 0xE8($sp)
/* 6ABD8 800B03D8 55F90003 */  bnel       $t7, $t9, .L800B03E8
/* 6ABDC 800B03DC 4610A003 */   div.s     $f0, $f20, $f16
/* 6ABE0 800B03E0 4614A500 */  add.s      $f20, $f20, $f20
.L800B03E4:
/* 6ABE4 800B03E4 4610A003 */  div.s      $f0, $f20, $f16
.L800B03E8:
/* 6ABE8 800B03E8 C4A40000 */  lwc1       $f4, 0x0($a1)
/* 6ABEC 800B03EC C5060000 */  lwc1       $f6, 0x0($t0)
/* 6ABF0 800B03F0 26100040 */  addiu      $s0, $s0, 0x40
/* 6ABF4 800B03F4 46062200 */  add.s      $f8, $f4, $f6
/* 6ABF8 800B03F8 C5460000 */  lwc1       $f6, 0x0($t2)
/* 6ABFC 800B03FC C4C40000 */  lwc1       $f4, 0x0($a2)
/* 6AC00 800B0400 46080282 */  mul.s      $f10, $f0, $f8
/* 6AC04 800B0404 46062200 */  add.s      $f8, $f4, $f6
/* 6AC08 800B0408 C5660000 */  lwc1       $f6, 0x0($t3)
/* 6AC0C 800B040C C4E40000 */  lwc1       $f4, 0x0($a3)
/* 6AC10 800B0410 460A1081 */  sub.s      $f2, $f2, $f10
/* 6AC14 800B0414 46080282 */  mul.s      $f10, $f0, $f8
/* 6AC18 800B0418 46062200 */  add.s      $f8, $f4, $f6
/* 6AC1C 800B041C 4600110D */  trunc.w.s  $f4, $f2
/* 6AC20 800B0420 460A6301 */  sub.s      $f12, $f12, $f10
/* 6AC24 800B0424 46080282 */  mul.s      $f10, $f0, $f8
/* 6AC28 800B0428 440D2000 */  mfc1       $t5, $f4
/* 6AC2C 800B042C 00000000 */  nop
/* 6AC30 800B0430 A60DFFC0 */  sh         $t5, -0x40($s0)
/* 6AC34 800B0434 4600618D */  trunc.w.s  $f6, $f12
/* 6AC38 800B0438 460A7381 */  sub.s      $f14, $f14, $f10
/* 6AC3C 800B043C 440F3000 */  mfc1       $t7, $f6
/* 6AC40 800B0440 4600720D */  trunc.w.s  $f8, $f14
/* 6AC44 800B0444 A60FFFC2 */  sh         $t7, -0x3E($s0)
/* 6AC48 800B0448 44184000 */  mfc1       $t8, $f8
/* 6AC4C 800B044C 00000000 */  nop
/* 6AC50 800B0450 A618FFC4 */  sh         $t8, -0x3C($s0)
/* 6AC54 800B0454 C4AA0000 */  lwc1       $f10, 0x0($a1)
/* 6AC58 800B0458 460AA102 */  mul.s      $f4, $f20, $f10
/* 6AC5C 800B045C 46022180 */  add.s      $f6, $f4, $f2
/* 6AC60 800B0460 4600320D */  trunc.w.s  $f8, $f6
/* 6AC64 800B0464 440E4000 */  mfc1       $t6, $f8
/* 6AC68 800B0468 00000000 */  nop
/* 6AC6C 800B046C A60EFFD0 */  sh         $t6, -0x30($s0)
/* 6AC70 800B0470 C4CA0000 */  lwc1       $f10, 0x0($a2)
/* 6AC74 800B0474 460AA102 */  mul.s      $f4, $f20, $f10
/* 6AC78 800B0478 460C2180 */  add.s      $f6, $f4, $f12
/* 6AC7C 800B047C 4600320D */  trunc.w.s  $f8, $f6
/* 6AC80 800B0480 44194000 */  mfc1       $t9, $f8
/* 6AC84 800B0484 00000000 */  nop
/* 6AC88 800B0488 A619FFD2 */  sh         $t9, -0x2E($s0)
/* 6AC8C 800B048C C4EA0000 */  lwc1       $f10, 0x0($a3)
/* 6AC90 800B0490 460AA102 */  mul.s      $f4, $f20, $f10
/* 6AC94 800B0494 460E2180 */  add.s      $f6, $f4, $f14
/* 6AC98 800B0498 4600320D */  trunc.w.s  $f8, $f6
/* 6AC9C 800B049C 440D4000 */  mfc1       $t5, $f8
/* 6ACA0 800B04A0 00000000 */  nop
/* 6ACA4 800B04A4 A60DFFD4 */  sh         $t5, -0x2C($s0)
/* 6ACA8 800B04A8 C5040000 */  lwc1       $f4, 0x0($t0)
/* 6ACAC 800B04AC C4AA0000 */  lwc1       $f10, 0x0($a1)
/* 6ACB0 800B04B0 46045180 */  add.s      $f6, $f10, $f4
/* 6ACB4 800B04B4 46143202 */  mul.s      $f8, $f6, $f20
/* 6ACB8 800B04B8 46024280 */  add.s      $f10, $f8, $f2
/* 6ACBC 800B04BC 4600510D */  trunc.w.s  $f4, $f10
/* 6ACC0 800B04C0 440F2000 */  mfc1       $t7, $f4
/* 6ACC4 800B04C4 00000000 */  nop
/* 6ACC8 800B04C8 A60FFFE0 */  sh         $t7, -0x20($s0)
/* 6ACCC 800B04CC C5480000 */  lwc1       $f8, 0x0($t2)
/* 6ACD0 800B04D0 C4C60000 */  lwc1       $f6, 0x0($a2)
/* 6ACD4 800B04D4 46083280 */  add.s      $f10, $f6, $f8
/* 6ACD8 800B04D8 46145102 */  mul.s      $f4, $f10, $f20
/* 6ACDC 800B04DC 460C2180 */  add.s      $f6, $f4, $f12
/* 6ACE0 800B04E0 4600320D */  trunc.w.s  $f8, $f6
/* 6ACE4 800B04E4 44184000 */  mfc1       $t8, $f8
/* 6ACE8 800B04E8 00000000 */  nop
/* 6ACEC 800B04EC A618FFE2 */  sh         $t8, -0x1E($s0)
/* 6ACF0 800B04F0 C5640000 */  lwc1       $f4, 0x0($t3)
/* 6ACF4 800B04F4 C4EA0000 */  lwc1       $f10, 0x0($a3)
/* 6ACF8 800B04F8 46045180 */  add.s      $f6, $f10, $f4
/* 6ACFC 800B04FC 46143202 */  mul.s      $f8, $f6, $f20
/* 6AD00 800B0500 460E4280 */  add.s      $f10, $f8, $f14
/* 6AD04 800B0504 4600510D */  trunc.w.s  $f4, $f10
/* 6AD08 800B0508 440E2000 */  mfc1       $t6, $f4
/* 6AD0C 800B050C 00000000 */  nop
/* 6AD10 800B0510 A60EFFE4 */  sh         $t6, -0x1C($s0)
/* 6AD14 800B0514 C5060000 */  lwc1       $f6, 0x0($t0)
/* 6AD18 800B0518 4606A202 */  mul.s      $f8, $f20, $f6
/* 6AD1C 800B051C 46024280 */  add.s      $f10, $f8, $f2
/* 6AD20 800B0520 4600510D */  trunc.w.s  $f4, $f10
/* 6AD24 800B0524 44192000 */  mfc1       $t9, $f4
/* 6AD28 800B0528 00000000 */  nop
/* 6AD2C 800B052C A619FFF0 */  sh         $t9, -0x10($s0)
/* 6AD30 800B0530 C5460000 */  lwc1       $f6, 0x0($t2)
/* 6AD34 800B0534 4606A202 */  mul.s      $f8, $f20, $f6
/* 6AD38 800B0538 460C4280 */  add.s      $f10, $f8, $f12
/* 6AD3C 800B053C 4600510D */  trunc.w.s  $f4, $f10
/* 6AD40 800B0540 440D2000 */  mfc1       $t5, $f4
/* 6AD44 800B0544 00000000 */  nop
/* 6AD48 800B0548 A60DFFF2 */  sh         $t5, -0xE($s0)
/* 6AD4C 800B054C C5660000 */  lwc1       $f6, 0x0($t3)
/* 6AD50 800B0550 4606A202 */  mul.s      $f8, $f20, $f6
/* 6AD54 800B0554 460E4280 */  add.s      $f10, $f8, $f14
/* 6AD58 800B0558 4600510D */  trunc.w.s  $f4, $f10
/* 6AD5C 800B055C 440F2000 */  mfc1       $t7, $f4
/* 6AD60 800B0560 00000000 */  nop
/* 6AD64 800B0564 A60FFFF4 */  sh         $t7, -0xC($s0)
/* 6AD68 800B0568 8D220000 */  lw         $v0, 0x0($t1)
/* 6AD6C 800B056C 24590028 */  addiu      $t9, $v0, 0x28
.L800B0570:
/* 6AD70 800B0570 1420FF89 */  bnez       $at, .L800B0398
/* 6AD74 800B0574 AD390000 */   sw        $t9, 0x0($t1)
/* 6AD78 800B0578 3C0D800E */  lui        $t5, %hi(D_800DAB28)
/* 6AD7C 800B057C 8DADAB28 */  lw         $t5, %lo(D_800DAB28)($t5)
/* 6AD80 800B0580 3C18801B */  lui        $t8, %hi(D_801AE948)
/* 6AD84 800B0584 8F18E948 */  lw         $t8, %lo(D_801AE948)($t8)
/* 6AD88 800B0588 24010002 */  addiu      $at, $zero, 0x2
/* 6AD8C 800B058C 15A10084 */  bne        $t5, $at, .L800B07A0
/* 6AD90 800B0590 030C1021 */   addu      $v0, $t8, $t4
/* 6AD94 800B0594 8C6E0000 */  lw         $t6, 0x0($v1)
/* 6AD98 800B0598 34018FC0 */  ori        $at, $zero, 0x8FC0
/* 6AD9C 800B059C 3C03801D */  lui        $v1, %hi(D_801D79A4)
/* 6ADA0 800B05A0 3C08801D */  lui        $t0, %hi(D_801D79B8)
/* 6ADA4 800B05A4 3C07801D */  lui        $a3, %hi(D_801D79AC)
/* 6ADA8 800B05A8 3C06801D */  lui        $a2, %hi(D_801D79B4)
/* 6ADAC 800B05AC 3C05801D */  lui        $a1, %hi(D_801D79A8)
/* 6ADB0 800B05B0 3C04801D */  lui        $a0, %hi(D_801D79B0)
/* 6ADB4 800B05B4 00418021 */  addu       $s0, $v0, $at
/* 6ADB8 800B05B8 248479B0 */  addiu      $a0, $a0, %lo(D_801D79B0)
/* 6ADBC 800B05BC 24A579A8 */  addiu      $a1, $a1, %lo(D_801D79A8)
/* 6ADC0 800B05C0 24C679B4 */  addiu      $a2, $a2, %lo(D_801D79B4)
/* 6ADC4 800B05C4 24E779AC */  addiu      $a3, $a3, %lo(D_801D79AC)
/* 6ADC8 800B05C8 250879B8 */  addiu      $t0, $t0, %lo(D_801D79B8)
/* 6ADCC 800B05CC 246379A4 */  addiu      $v1, $v1, %lo(D_801D79A4)
/* 6ADD0 800B05D0 0000A025 */  or         $s4, $zero, $zero
/* 6ADD4 800B05D4 240A0004 */  addiu      $t2, $zero, 0x4
/* 6ADD8 800B05D8 AD2E0000 */  sw         $t6, 0x0($t1)
.L800B05DC:
/* 6ADDC 800B05DC 8D220000 */  lw         $v0, 0x0($t1)
/* 6ADE0 800B05E0 26940001 */  addiu      $s4, $s4, 0x1
/* 6ADE4 800B05E4 8C4F0020 */  lw         $t7, 0x20($v0)
/* 6ADE8 800B05E8 51E00068 */  beql       $t7, $zero, .L800B078C
/* 6ADEC 800B05EC 244F0028 */   addiu     $t7, $v0, 0x28
/* 6ADF0 800B05F0 C4540018 */  lwc1       $f20, 0x18($v0)
/* 6ADF4 800B05F4 C4660000 */  lwc1       $f6, 0x0($v1)
/* 6ADF8 800B05F8 C4880000 */  lwc1       $f8, 0x0($a0)
/* 6ADFC 800B05FC 4610A003 */  div.s      $f0, $f20, $f16
/* 6AE00 800B0600 C4420000 */  lwc1       $f2, 0x0($v0)
/* 6AE04 800B0604 C44C0004 */  lwc1       $f12, 0x4($v0)
/* 6AE08 800B0608 C44E0008 */  lwc1       $f14, 0x8($v0)
/* 6AE0C 800B060C 46083280 */  add.s      $f10, $f6, $f8
/* 6AE10 800B0610 C4C80000 */  lwc1       $f8, 0x0($a2)
/* 6AE14 800B0614 C4A60000 */  lwc1       $f6, 0x0($a1)
/* 6AE18 800B0618 26100040 */  addiu      $s0, $s0, 0x40
/* 6AE1C 800B061C 460A0102 */  mul.s      $f4, $f0, $f10
/* 6AE20 800B0620 46083280 */  add.s      $f10, $f6, $f8
/* 6AE24 800B0624 C5080000 */  lwc1       $f8, 0x0($t0)
/* 6AE28 800B0628 C4E60000 */  lwc1       $f6, 0x0($a3)
/* 6AE2C 800B062C 46041081 */  sub.s      $f2, $f2, $f4
/* 6AE30 800B0630 460A0102 */  mul.s      $f4, $f0, $f10
/* 6AE34 800B0634 46083280 */  add.s      $f10, $f6, $f8
/* 6AE38 800B0638 4600118D */  trunc.w.s  $f6, $f2
/* 6AE3C 800B063C 46046301 */  sub.s      $f12, $f12, $f4
/* 6AE40 800B0640 460A0102 */  mul.s      $f4, $f0, $f10
/* 6AE44 800B0644 44183000 */  mfc1       $t8, $f6
/* 6AE48 800B0648 00000000 */  nop
/* 6AE4C 800B064C A618FFC0 */  sh         $t8, -0x40($s0)
/* 6AE50 800B0650 4600620D */  trunc.w.s  $f8, $f12
/* 6AE54 800B0654 46047381 */  sub.s      $f14, $f14, $f4
/* 6AE58 800B0658 440E4000 */  mfc1       $t6, $f8
/* 6AE5C 800B065C 4600728D */  trunc.w.s  $f10, $f14
/* 6AE60 800B0660 A60EFFC2 */  sh         $t6, -0x3E($s0)
/* 6AE64 800B0664 44195000 */  mfc1       $t9, $f10
/* 6AE68 800B0668 00000000 */  nop
/* 6AE6C 800B066C A619FFC4 */  sh         $t9, -0x3C($s0)
/* 6AE70 800B0670 C4640000 */  lwc1       $f4, 0x0($v1)
/* 6AE74 800B0674 4604A182 */  mul.s      $f6, $f20, $f4
/* 6AE78 800B0678 46023200 */  add.s      $f8, $f6, $f2
/* 6AE7C 800B067C 4600428D */  trunc.w.s  $f10, $f8
/* 6AE80 800B0680 440D5000 */  mfc1       $t5, $f10
/* 6AE84 800B0684 00000000 */  nop
/* 6AE88 800B0688 A60DFFD0 */  sh         $t5, -0x30($s0)
/* 6AE8C 800B068C C4A40000 */  lwc1       $f4, 0x0($a1)
/* 6AE90 800B0690 4604A182 */  mul.s      $f6, $f20, $f4
/* 6AE94 800B0694 460C3200 */  add.s      $f8, $f6, $f12
/* 6AE98 800B0698 4600428D */  trunc.w.s  $f10, $f8
/* 6AE9C 800B069C 440F5000 */  mfc1       $t7, $f10
/* 6AEA0 800B06A0 00000000 */  nop
/* 6AEA4 800B06A4 A60FFFD2 */  sh         $t7, -0x2E($s0)
/* 6AEA8 800B06A8 C4E40000 */  lwc1       $f4, 0x0($a3)
/* 6AEAC 800B06AC 4604A182 */  mul.s      $f6, $f20, $f4
/* 6AEB0 800B06B0 460E3200 */  add.s      $f8, $f6, $f14
/* 6AEB4 800B06B4 4600428D */  trunc.w.s  $f10, $f8
/* 6AEB8 800B06B8 44185000 */  mfc1       $t8, $f10
/* 6AEBC 800B06BC 00000000 */  nop
/* 6AEC0 800B06C0 A618FFD4 */  sh         $t8, -0x2C($s0)
/* 6AEC4 800B06C4 C4860000 */  lwc1       $f6, 0x0($a0)
/* 6AEC8 800B06C8 C4640000 */  lwc1       $f4, 0x0($v1)
/* 6AECC 800B06CC 46062200 */  add.s      $f8, $f4, $f6
/* 6AED0 800B06D0 46144282 */  mul.s      $f10, $f8, $f20
/* 6AED4 800B06D4 46025100 */  add.s      $f4, $f10, $f2
/* 6AED8 800B06D8 4600218D */  trunc.w.s  $f6, $f4
/* 6AEDC 800B06DC 440E3000 */  mfc1       $t6, $f6
/* 6AEE0 800B06E0 00000000 */  nop
/* 6AEE4 800B06E4 A60EFFE0 */  sh         $t6, -0x20($s0)
/* 6AEE8 800B06E8 C4CA0000 */  lwc1       $f10, 0x0($a2)
/* 6AEEC 800B06EC C4A80000 */  lwc1       $f8, 0x0($a1)
/* 6AEF0 800B06F0 460A4100 */  add.s      $f4, $f8, $f10
/* 6AEF4 800B06F4 46142182 */  mul.s      $f6, $f4, $f20
/* 6AEF8 800B06F8 460C3200 */  add.s      $f8, $f6, $f12
/* 6AEFC 800B06FC 4600428D */  trunc.w.s  $f10, $f8
/* 6AF00 800B0700 44195000 */  mfc1       $t9, $f10
/* 6AF04 800B0704 00000000 */  nop
/* 6AF08 800B0708 A619FFE2 */  sh         $t9, -0x1E($s0)
/* 6AF0C 800B070C C5060000 */  lwc1       $f6, 0x0($t0)
/* 6AF10 800B0710 C4E40000 */  lwc1       $f4, 0x0($a3)
/* 6AF14 800B0714 46062200 */  add.s      $f8, $f4, $f6
/* 6AF18 800B0718 46144282 */  mul.s      $f10, $f8, $f20
/* 6AF1C 800B071C 460E5100 */  add.s      $f4, $f10, $f14
/* 6AF20 800B0720 4600218D */  trunc.w.s  $f6, $f4
/* 6AF24 800B0724 440D3000 */  mfc1       $t5, $f6
/* 6AF28 800B0728 00000000 */  nop
/* 6AF2C 800B072C A60DFFE4 */  sh         $t5, -0x1C($s0)
/* 6AF30 800B0730 C4880000 */  lwc1       $f8, 0x0($a0)
/* 6AF34 800B0734 4608A282 */  mul.s      $f10, $f20, $f8
/* 6AF38 800B0738 46025100 */  add.s      $f4, $f10, $f2
/* 6AF3C 800B073C 4600218D */  trunc.w.s  $f6, $f4
/* 6AF40 800B0740 440F3000 */  mfc1       $t7, $f6
/* 6AF44 800B0744 00000000 */  nop
/* 6AF48 800B0748 A60FFFF0 */  sh         $t7, -0x10($s0)
/* 6AF4C 800B074C C4C80000 */  lwc1       $f8, 0x0($a2)
/* 6AF50 800B0750 4608A282 */  mul.s      $f10, $f20, $f8
/* 6AF54 800B0754 460C5100 */  add.s      $f4, $f10, $f12
/* 6AF58 800B0758 4600218D */  trunc.w.s  $f6, $f4
/* 6AF5C 800B075C 44183000 */  mfc1       $t8, $f6
/* 6AF60 800B0760 00000000 */  nop
/* 6AF64 800B0764 A618FFF2 */  sh         $t8, -0xE($s0)
/* 6AF68 800B0768 C5080000 */  lwc1       $f8, 0x0($t0)
/* 6AF6C 800B076C 4608A282 */  mul.s      $f10, $f20, $f8
/* 6AF70 800B0770 460E5100 */  add.s      $f4, $f10, $f14
/* 6AF74 800B0774 4600218D */  trunc.w.s  $f6, $f4
/* 6AF78 800B0778 440E3000 */  mfc1       $t6, $f6
/* 6AF7C 800B077C 00000000 */  nop
/* 6AF80 800B0780 A60EFFF4 */  sh         $t6, -0xC($s0)
/* 6AF84 800B0784 8D220000 */  lw         $v0, 0x0($t1)
/* 6AF88 800B0788 244F0028 */  addiu      $t7, $v0, 0x28
.L800B078C:
/* 6AF8C 800B078C 168AFF93 */  bne        $s4, $t2, .L800B05DC
/* 6AF90 800B0790 AD2F0000 */   sw        $t7, 0x0($t1)
/* 6AF94 800B0794 3C19801B */  lui        $t9, %hi(D_801AE948)
/* 6AF98 800B0798 8F39E948 */  lw         $t9, %lo(D_801AE948)($t9)
/* 6AF9C 800B079C 032C1021 */  addu       $v0, $t9, $t4
.L800B07A0:
/* 6AFA0 800B07A0 340191C0 */  ori        $at, $zero, 0x91C0
/* 6AFA4 800B07A4 00418021 */  addu       $s0, $v0, $at
/* 6AFA8 800B07A8 3C02800E */  lui        $v0, %hi(D_800E6D7C)
/* 6AFAC 800B07AC 3C07800E */  lui        $a3, %hi(D_800E6D80)
/* 6AFB0 800B07B0 24E76D80 */  addiu      $a3, $a3, %lo(D_800E6D80)
/* 6AFB4 800B07B4 24426D7C */  addiu      $v0, $v0, %lo(D_800E6D7C)
/* 6AFB8 800B07B8 24140007 */  addiu      $s4, $zero, 0x7
/* 6AFBC 800B07BC 240800DF */  addiu      $t0, $zero, 0xDF
/* 6AFC0 800B07C0 24060030 */  addiu      $a2, $zero, 0x30
/* 6AFC4 800B07C4 240500FF */  addiu      $a1, $zero, 0xFF
.L800B07C8:
/* 6AFC8 800B07C8 3C18800E */  lui        $t8, %hi(D_800E6D60)
/* 6AFCC 800B07CC 8F186D60 */  lw         $t8, %lo(D_800E6D60)($t8)
/* 6AFD0 800B07D0 8CF90000 */  lw         $t9, 0x0($a3)
/* 6AFD4 800B07D4 26100020 */  addiu      $s0, $s0, 0x20
/* 6AFD8 800B07D8 8F0D1C38 */  lw         $t5, 0x1C38($t8)
/* 6AFDC 800B07DC 01B42021 */  addu       $a0, $t5, $s4
/* 6AFE0 800B07E0 04810004 */  bgez       $a0, .L800B07F4
/* 6AFE4 800B07E4 308E0007 */   andi      $t6, $a0, 0x7
/* 6AFE8 800B07E8 11C00002 */  beqz       $t6, .L800B07F4
/* 6AFEC 800B07EC 00000000 */   nop
/* 6AFF0 800B07F0 25CEFFF8 */  addiu      $t6, $t6, -0x8
.L800B07F4:
/* 6AFF4 800B07F4 01C60019 */  multu      $t6, $a2
/* 6AFF8 800B07F8 2694FFFF */  addiu      $s4, $s4, -0x1
/* 6AFFC 800B07FC 00007812 */  mflo       $t7
/* 6B000 800B0800 01F9C021 */  addu       $t8, $t7, $t9
/* 6B004 800B0804 AC580000 */  sw         $t8, 0x0($v0)
/* 6B008 800B0808 C7080000 */  lwc1       $f8, 0x0($t8)
/* 6B00C 800B080C 4600428D */  trunc.w.s  $f10, $f8
/* 6B010 800B0810 44195000 */  mfc1       $t9, $f10
/* 6B014 800B0814 00000000 */  nop
/* 6B018 800B0818 A619FFE0 */  sh         $t9, -0x20($s0)
/* 6B01C 800B081C 8C580000 */  lw         $t8, 0x0($v0)
/* 6B020 800B0820 C7040004 */  lwc1       $f4, 0x4($t8)
/* 6B024 800B0824 4600218D */  trunc.w.s  $f6, $f4
/* 6B028 800B0828 440E3000 */  mfc1       $t6, $f6
/* 6B02C 800B082C 00000000 */  nop
/* 6B030 800B0830 A60EFFE2 */  sh         $t6, -0x1E($s0)
/* 6B034 800B0834 8C4F0000 */  lw         $t7, 0x0($v0)
/* 6B038 800B0838 C5E80008 */  lwc1       $f8, 0x8($t7)
/* 6B03C 800B083C A205FFEF */  sb         $a1, -0x11($s0)
/* 6B040 800B0840 4600428D */  trunc.w.s  $f10, $f8
/* 6B044 800B0844 44185000 */  mfc1       $t8, $f10
/* 6B048 800B0848 00000000 */  nop
/* 6B04C 800B084C A618FFE4 */  sh         $t8, -0x1C($s0)
/* 6B050 800B0850 8C4D0000 */  lw         $t5, 0x0($v0)
/* 6B054 800B0854 C5A4000C */  lwc1       $f4, 0xC($t5)
/* 6B058 800B0858 4600218D */  trunc.w.s  $f6, $f4
/* 6B05C 800B085C 440F3000 */  mfc1       $t7, $f6
/* 6B060 800B0860 00000000 */  nop
/* 6B064 800B0864 A60FFFF0 */  sh         $t7, -0x10($s0)
/* 6B068 800B0868 8C590000 */  lw         $t9, 0x0($v0)
/* 6B06C 800B086C C7280010 */  lwc1       $f8, 0x10($t9)
/* 6B070 800B0870 4600428D */  trunc.w.s  $f10, $f8
/* 6B074 800B0874 440D5000 */  mfc1       $t5, $f10
/* 6B078 800B0878 00000000 */  nop
/* 6B07C 800B087C A60DFFF2 */  sh         $t5, -0xE($s0)
/* 6B080 800B0880 8C4E0000 */  lw         $t6, 0x0($v0)
/* 6B084 800B0884 C5C40014 */  lwc1       $f4, 0x14($t6)
/* 6B088 800B0888 A205FFFF */  sb         $a1, -0x1($s0)
/* 6B08C 800B088C 4600218D */  trunc.w.s  $f6, $f4
/* 6B090 800B0890 44193000 */  mfc1       $t9, $f6
/* 6B094 800B0894 00000000 */  nop
/* 6B098 800B0898 A619FFF4 */  sh         $t9, -0xC($s0)
/* 6B09C 800B089C 8C430000 */  lw         $v1, 0x0($v0)
/* 6B0A0 800B08A0 8C780028 */  lw         $t8, 0x28($v1)
/* 6B0A4 800B08A4 270D0001 */  addiu      $t5, $t8, 0x1
/* 6B0A8 800B08A8 0681FFC7 */  bgez       $s4, .L800B07C8
/* 6B0AC 800B08AC AC6D0028 */   sw        $t5, 0x28($v1)
/* 6B0B0 800B08B0 8FBF0084 */  lw         $ra, 0x84($sp)
/* 6B0B4 800B08B4 D7B40030 */  ldc1       $f20, 0x30($sp)
/* 6B0B8 800B08B8 D7B60038 */  ldc1       $f22, 0x38($sp)
/* 6B0BC 800B08BC D7B80040 */  ldc1       $f24, 0x40($sp)
/* 6B0C0 800B08C0 D7BA0048 */  ldc1       $f26, 0x48($sp)
/* 6B0C4 800B08C4 D7BC0050 */  ldc1       $f28, 0x50($sp)
/* 6B0C8 800B08C8 D7BE0058 */  ldc1       $f30, 0x58($sp)
/* 6B0CC 800B08CC 8FB00060 */  lw         $s0, 0x60($sp)
/* 6B0D0 800B08D0 8FB10064 */  lw         $s1, 0x64($sp)
/* 6B0D4 800B08D4 8FB20068 */  lw         $s2, 0x68($sp)
/* 6B0D8 800B08D8 8FB3006C */  lw         $s3, 0x6C($sp)
/* 6B0DC 800B08DC 8FB40070 */  lw         $s4, 0x70($sp)
/* 6B0E0 800B08E0 8FB50074 */  lw         $s5, 0x74($sp)
/* 6B0E4 800B08E4 8FB60078 */  lw         $s6, 0x78($sp)
/* 6B0E8 800B08E8 8FB7007C */  lw         $s7, 0x7C($sp)
/* 6B0EC 800B08EC 8FBE0080 */  lw         $fp, 0x80($sp)
/* 6B0F0 800B08F0 03E00008 */  jr         $ra
/* 6B0F4 800B08F4 27BD00E8 */   addiu     $sp, $sp, 0xE8

glabel func_800B08F8
/* 6B0F8 800B08F8 27BDFE60 */  addiu      $sp, $sp, -0x1A0
/* 6B0FC 800B08FC 3C0E800D */  lui        $t6, %hi(D_800D48DC)
/* 6B100 800B0900 8DCE48DC */  lw         $t6, %lo(D_800D48DC)($t6)
/* 6B104 800B0904 AFB00060 */  sw         $s0, 0x60($sp)
/* 6B108 800B0908 AFBF0084 */  sw         $ra, 0x84($sp)
/* 6B10C 800B090C 008E8026 */  xor        $s0, $a0, $t6
/* 6B110 800B0910 2E100001 */  sltiu      $s0, $s0, 0x1
/* 6B114 800B0914 AFBE0080 */  sw         $fp, 0x80($sp)
/* 6B118 800B0918 AFB7007C */  sw         $s7, 0x7C($sp)
/* 6B11C 800B091C AFB60078 */  sw         $s6, 0x78($sp)
/* 6B120 800B0920 AFB50074 */  sw         $s5, 0x74($sp)
/* 6B124 800B0924 AFB40070 */  sw         $s4, 0x70($sp)
/* 6B128 800B0928 AFB3006C */  sw         $s3, 0x6C($sp)
/* 6B12C 800B092C AFB20068 */  sw         $s2, 0x68($sp)
/* 6B130 800B0930 AFB10064 */  sw         $s1, 0x64($sp)
/* 6B134 800B0934 F7BE0058 */  sdc1       $f30, 0x58($sp)
/* 6B138 800B0938 F7BC0050 */  sdc1       $f28, 0x50($sp)
/* 6B13C 800B093C F7BA0048 */  sdc1       $f26, 0x48($sp)
/* 6B140 800B0940 F7B80040 */  sdc1       $f24, 0x40($sp)
/* 6B144 800B0944 F7B60038 */  sdc1       $f22, 0x38($sp)
/* 6B148 800B0948 1600000B */  bnez       $s0, .L800B0978
/* 6B14C 800B094C F7B40030 */   sdc1      $f20, 0x30($sp)
/* 6B150 800B0950 3C10800E */  lui        $s0, %hi(D_800DAB28)
/* 6B154 800B0954 8E10AB28 */  lw         $s0, %lo(D_800DAB28)($s0)
/* 6B158 800B0958 3C18800D */  lui        $t8, %hi(D_800D48E0)
/* 6B15C 800B095C 3A0F0002 */  xori       $t7, $s0, 0x2
/* 6B160 800B0960 2DF00001 */  sltiu      $s0, $t7, 0x1
/* 6B164 800B0964 52000005 */  beql       $s0, $zero, .L800B097C
/* 6B168 800B0968 AFB0016C */   sw        $s0, 0x16C($sp)
/* 6B16C 800B096C 8F1848E0 */  lw         $t8, %lo(D_800D48E0)($t8)
/* 6B170 800B0970 00988026 */  xor        $s0, $a0, $t8
/* 6B174 800B0974 2E100001 */  sltiu      $s0, $s0, 0x1
.L800B0978:
/* 6B178 800B0978 AFB0016C */  sw         $s0, 0x16C($sp)
.L800B097C:
/* 6B17C 800B097C 3C10800E */  lui        $s0, %hi(D_800DAB28)
/* 6B180 800B0980 8E10AB28 */  lw         $s0, %lo(D_800DAB28)($s0)
/* 6B184 800B0984 3C01801D */  lui        $at, %hi(D_801D79BC)
/* 6B188 800B0988 3A190002 */  xori       $t9, $s0, 0x2
/* 6B18C 800B098C 2F300001 */  sltiu      $s0, $t9, 0x1
/* 6B190 800B0990 12000005 */  beqz       $s0, .L800B09A8
/* 6B194 800B0994 3C11801D */   lui       $s1, %hi(D_801CE638)
/* 6B198 800B0998 2631E638 */  addiu      $s1, $s1, %lo(D_801CE638)
/* 6B19C 800B099C 8E300000 */  lw         $s0, 0x0($s1)
/* 6B1A0 800B09A0 3A0B0001 */  xori       $t3, $s0, 0x1
/* 6B1A4 800B09A4 2D700001 */  sltiu      $s0, $t3, 0x1
.L800B09A8:
/* 6B1A8 800B09A8 3C11801D */  lui        $s1, %hi(D_801CE638)
/* 6B1AC 800B09AC 2631E638 */  addiu      $s1, $s1, %lo(D_801CE638)
/* 6B1B0 800B09B0 8E220000 */  lw         $v0, 0x0($s1)
/* 6B1B4 800B09B4 02009825 */  or         $s3, $s0, $zero
/* 6B1B8 800B09B8 38500004 */  xori       $s0, $v0, 0x4
/* 6B1BC 800B09BC 2E100001 */  sltiu      $s0, $s0, 0x1
/* 6B1C0 800B09C0 16000003 */  bnez       $s0, .L800B09D0
/* 6B1C4 800B09C4 00000000 */   nop
/* 6B1C8 800B09C8 3850000A */  xori       $s0, $v0, 0xA
/* 6B1CC 800B09CC 2E100001 */  sltiu      $s0, $s0, 0x1
.L800B09D0:
/* 6B1D0 800B09D0 3C02801D */  lui        $v0, %hi(D_801D7968)
/* 6B1D4 800B09D4 8C427968 */  lw         $v0, %lo(D_801D7968)($v0)
/* 6B1D8 800B09D8 C42479BC */  lwc1       $f4, %lo(D_801D79BC)($at)
/* 6B1DC 800B09DC 3C01801D */  lui        $at, %hi(D_801D79C0)
/* 6B1E0 800B09E0 C446004C */  lwc1       $f6, 0x4C($v0)
/* 6B1E4 800B09E4 C42879C0 */  lwc1       $f8, %lo(D_801D79C0)($at)
/* 6B1E8 800B09E8 C44A0050 */  lwc1       $f10, 0x50($v0)
/* 6B1EC 800B09EC 46062581 */  sub.s      $f22, $f4, $f6
/* 6B1F0 800B09F0 3C01801D */  lui        $at, %hi(D_801D79C4)
/* 6B1F4 800B09F4 C42479C4 */  lwc1       $f4, %lo(D_801D79C4)($at)
/* 6B1F8 800B09F8 460A4701 */  sub.s      $f28, $f8, $f10
/* 6B1FC 800B09FC 4616B202 */  mul.s      $f8, $f22, $f22
/* 6B200 800B0A00 C4460054 */  lwc1       $f6, 0x54($v0)
/* 6B204 800B0A04 0200B025 */  or         $s6, $s0, $zero
/* 6B208 800B0A08 461CE282 */  mul.s      $f10, $f28, $f28
/* 6B20C 800B0A0C AFA401A0 */  sw         $a0, 0x1A0($sp)
/* 6B210 800B0A10 46062501 */  sub.s      $f20, $f4, $f6
/* 6B214 800B0A14 4614A182 */  mul.s      $f6, $f20, $f20
/* 6B218 800B0A18 460A4100 */  add.s      $f4, $f8, $f10
/* 6B21C 800B0A1C 0C031C04 */  jal        func_800C7010
/* 6B220 800B0A20 46062300 */   add.s     $f12, $f4, $f6
/* 6B224 800B0A24 3C02800E */  lui        $v0, %hi(D_800E6D60)
/* 6B228 800B0A28 24426D60 */  addiu      $v0, $v0, %lo(D_800E6D60)
/* 6B22C 800B0A2C 8C4C0000 */  lw         $t4, 0x0($v0)
/* 6B230 800B0A30 00009025 */  or         $s2, $zero, $zero
/* 6B234 800B0A34 12600006 */  beqz       $s3, .L800B0A50
/* 6B238 800B0A38 AD801C4C */   sw        $zero, 0x1C4C($t4)
/* 6B23C 800B0A3C 8C4E0000 */  lw         $t6, 0x0($v0)
/* 6B240 800B0A40 240D0001 */  addiu      $t5, $zero, 0x1
/* 6B244 800B0A44 24120001 */  addiu      $s2, $zero, 0x1
/* 6B248 800B0A48 10000061 */  b          .L800B0BD0
/* 6B24C 800B0A4C ADCD1C4C */   sw        $t5, 0x1C4C($t6)
.L800B0A50:
/* 6B250 800B0A50 3C014448 */  lui        $at, (0x44480000 >> 16)
/* 6B254 800B0A54 44814000 */  mtc1       $at, $f8
/* 6B258 800B0A58 3C014180 */  lui        $at, (0x41800000 >> 16)
/* 6B25C 800B0A5C 4608003C */  c.lt.s     $f0, $f8
/* 6B260 800B0A60 00000000 */  nop
/* 6B264 800B0A64 4500005A */  bc1f       .L800B0BD0
/* 6B268 800B0A68 00000000 */   nop
/* 6B26C 800B0A6C 44815000 */  mtc1       $at, $f10
/* 6B270 800B0A70 24010002 */  addiu      $at, $zero, 0x2
/* 6B274 800B0A74 3C0F800E */  lui        $t7, %hi(D_800DAB28)
/* 6B278 800B0A78 4600503C */  c.lt.s     $f10, $f0
/* 6B27C 800B0A7C 00000000 */  nop
/* 6B280 800B0A80 45000053 */  bc1f       .L800B0BD0
/* 6B284 800B0A84 00000000 */   nop
/* 6B288 800B0A88 8DEFAB28 */  lw         $t7, %lo(D_800DAB28)($t7)
/* 6B28C 800B0A8C 4600B583 */  div.s      $f22, $f22, $f0
/* 6B290 800B0A90 4600E703 */  div.s      $f28, $f28, $f0
/* 6B294 800B0A94 11E10012 */  beq        $t7, $at, .L800B0AE0
/* 6B298 800B0A98 4600A503 */   div.s     $f20, $f20, $f0
/* 6B29C 800B0A9C 3C01800F */  lui        $at, %hi(D_800EBB98)
/* 6B2A0 800B0AA0 C424BB98 */  lwc1       $f4, %lo(D_800EBB98)($at)
/* 6B2A4 800B0AA4 3C01801D */  lui        $at, %hi(D_801D7974)
/* 6B2A8 800B0AA8 C4267974 */  lwc1       $f6, %lo(D_801D7974)($at)
/* 6B2AC 800B0AAC 3C01801D */  lui        $at, %hi(D_801D7978)
/* 6B2B0 800B0AB0 C42A7978 */  lwc1       $f10, %lo(D_801D7978)($at)
/* 6B2B4 800B0AB4 4606B202 */  mul.s      $f8, $f22, $f6
/* 6B2B8 800B0AB8 3C01801D */  lui        $at, %hi(D_801D797C)
/* 6B2BC 800B0ABC 460AE182 */  mul.s      $f6, $f28, $f10
/* 6B2C0 800B0AC0 46064280 */  add.s      $f10, $f8, $f6
/* 6B2C4 800B0AC4 C428797C */  lwc1       $f8, %lo(D_801D797C)($at)
/* 6B2C8 800B0AC8 4608A182 */  mul.s      $f6, $f20, $f8
/* 6B2CC 800B0ACC 46065200 */  add.s      $f8, $f10, $f6
/* 6B2D0 800B0AD0 4608203C */  c.lt.s     $f4, $f8
/* 6B2D4 800B0AD4 00000000 */  nop
/* 6B2D8 800B0AD8 4500003D */  bc1f       .L800B0BD0
/* 6B2DC 800B0ADC 00000000 */   nop
.L800B0AE0:
/* 6B2E0 800B0AE0 8C590000 */  lw         $t9, 0x0($v0)
/* 6B2E4 800B0AE4 24180001 */  addiu      $t8, $zero, 0x1
/* 6B2E8 800B0AE8 16000012 */  bnez       $s0, .L800B0B34
/* 6B2EC 800B0AEC AF381C4C */   sw        $t8, 0x1C4C($t9)
/* 6B2F0 800B0AF0 3C0B800E */  lui        $t3, %hi(D_800DAB28)
/* 6B2F4 800B0AF4 8D6BAB28 */  lw         $t3, %lo(D_800DAB28)($t3)
/* 6B2F8 800B0AF8 24010001 */  addiu      $at, $zero, 0x1
/* 6B2FC 800B0AFC 8FAC01A0 */  lw         $t4, 0x1A0($sp)
/* 6B300 800B0B00 1561001F */  bne        $t3, $at, .L800B0B80
/* 6B304 800B0B04 3C0D800D */   lui       $t5, %hi(D_800D48DC)
/* 6B308 800B0B08 8DAD48DC */  lw         $t5, %lo(D_800D48DC)($t5)
/* 6B30C 800B0B0C 000C70C0 */  sll        $t6, $t4, 3
/* 6B310 800B0B10 01CC7023 */  subu       $t6, $t6, $t4
/* 6B314 800B0B14 158D001A */  bne        $t4, $t5, .L800B0B80
/* 6B318 800B0B18 000E7100 */   sll       $t6, $t6, 4
/* 6B31C 800B0B1C 01CC7023 */  subu       $t6, $t6, $t4
/* 6B320 800B0B20 000E70C0 */  sll        $t6, $t6, 3
/* 6B324 800B0B24 3C0F801C */  lui        $t7, %hi(D_801C2C2C)
/* 6B328 800B0B28 01EE7821 */  addu       $t7, $t7, $t6
/* 6B32C 800B0B2C 8DEF2C2C */  lw         $t7, %lo(D_801C2C2C)($t7)
/* 6B330 800B0B30 11E00013 */  beqz       $t7, .L800B0B80
.L800B0B34:
/* 6B334 800B0B34 3C014348 */   lui       $at, (0x43480000 >> 16)
/* 6B338 800B0B38 44815000 */  mtc1       $at, $f10
/* 6B33C 800B0B3C 3C0143C8 */  lui        $at, (0x43C80000 >> 16)
/* 6B340 800B0B40 460A003C */  c.lt.s     $f0, $f10
/* 6B344 800B0B44 00000000 */  nop
/* 6B348 800B0B48 45020004 */  bc1fl      .L800B0B5C
/* 6B34C 800B0B4C 44813000 */   mtc1      $at, $f6
/* 6B350 800B0B50 1000001F */  b          .L800B0BD0
/* 6B354 800B0B54 24120003 */   addiu     $s2, $zero, 0x3
/* 6B358 800B0B58 44813000 */  mtc1       $at, $f6
.L800B0B5C:
/* 6B35C 800B0B5C 00000000 */  nop
/* 6B360 800B0B60 4606003C */  c.lt.s     $f0, $f6
/* 6B364 800B0B64 00000000 */  nop
/* 6B368 800B0B68 45000003 */  bc1f       .L800B0B78
/* 6B36C 800B0B6C 00000000 */   nop
/* 6B370 800B0B70 10000017 */  b          .L800B0BD0
/* 6B374 800B0B74 24120002 */   addiu     $s2, $zero, 0x2
.L800B0B78:
/* 6B378 800B0B78 10000015 */  b          .L800B0BD0
/* 6B37C 800B0B7C 24120001 */   addiu     $s2, $zero, 0x1
.L800B0B80:
/* 6B380 800B0B80 3C014348 */  lui        $at, (0x43480000 >> 16)
/* 6B384 800B0B84 44812000 */  mtc1       $at, $f4
/* 6B388 800B0B88 00000000 */  nop
/* 6B38C 800B0B8C 4604003C */  c.lt.s     $f0, $f4
/* 6B390 800B0B90 00000000 */  nop
/* 6B394 800B0B94 45010005 */  bc1t       .L800B0BAC
/* 6B398 800B0B98 00000000 */   nop
/* 6B39C 800B0B9C 8E380000 */  lw         $t8, 0x0($s1)
/* 6B3A0 800B0BA0 3C0143C8 */  lui        $at, (0x43C80000 >> 16)
/* 6B3A4 800B0BA4 57000004 */  bnel       $t8, $zero, .L800B0BB8
/* 6B3A8 800B0BA8 44814000 */   mtc1      $at, $f8
.L800B0BAC:
/* 6B3AC 800B0BAC 10000008 */  b          .L800B0BD0
/* 6B3B0 800B0BB0 24120002 */   addiu     $s2, $zero, 0x2
/* 6B3B4 800B0BB4 44814000 */  mtc1       $at, $f8
.L800B0BB8:
/* 6B3B8 800B0BB8 00000000 */  nop
/* 6B3BC 800B0BBC 4608003C */  c.lt.s     $f0, $f8
/* 6B3C0 800B0BC0 00000000 */  nop
/* 6B3C4 800B0BC4 45000002 */  bc1f       .L800B0BD0
/* 6B3C8 800B0BC8 00000000 */   nop
/* 6B3CC 800B0BCC 24120001 */  addiu      $s2, $zero, 0x1
.L800B0BD0:
/* 6B3D0 800B0BD0 12000002 */  beqz       $s0, .L800B0BDC
/* 6B3D4 800B0BD4 3C19801D */   lui       $t9, %hi(D_801D7A08)
/* 6B3D8 800B0BD8 24120003 */  addiu      $s2, $zero, 0x3
.L800B0BDC:
/* 6B3DC 800B0BDC 8F397A08 */  lw         $t9, %lo(D_801D7A08)($t9)
/* 6B3E0 800B0BE0 4480B000 */  mtc1       $zero, $f22
/* 6B3E4 800B0BE4 13200009 */  beqz       $t9, .L800B0C0C
/* 6B3E8 800B0BE8 3C0D801A */   lui       $t5, %hi(D_801982F0)
/* 6B3EC 800B0BEC 8DAD82F0 */  lw         $t5, %lo(D_801982F0)($t5)
/* 6B3F0 800B0BF0 8FAB01A0 */  lw         $t3, 0x1A0($sp)
/* 6B3F4 800B0BF4 2A410002 */  slti       $at, $s2, 0x2
/* 6B3F8 800B0BF8 156D0004 */  bne        $t3, $t5, .L800B0C0C
/* 6B3FC 800B0BFC 00000000 */   nop
/* 6B400 800B0C00 10200002 */  beqz       $at, .L800B0C0C
/* 6B404 800B0C04 00000000 */   nop
/* 6B408 800B0C08 24120002 */  addiu      $s2, $zero, 0x2
.L800B0C0C:
/* 6B40C 800B0C0C 3C01801D */  lui        $at, %hi(D_801D79C8)
/* 6B410 800B0C10 C43479C8 */  lwc1       $f20, %lo(D_801D79C8)($at)
/* 6B414 800B0C14 4614B032 */  c.eq.s     $f22, $f20
/* 6B418 800B0C18 00000000 */  nop
/* 6B41C 800B0C1C 45000007 */  bc1f       .L800B0C3C
/* 6B420 800B0C20 3C01801D */   lui       $at, %hi(D_801D79D0)
/* 6B424 800B0C24 C42A79D0 */  lwc1       $f10, %lo(D_801D79D0)($at)
/* 6B428 800B0C28 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 6B42C 800B0C2C 460AB032 */  c.eq.s     $f22, $f10
/* 6B430 800B0C30 00000000 */  nop
/* 6B434 800B0C34 45030015 */  bc1tl      .L800B0C8C
/* 6B438 800B0C38 44813000 */   mtc1      $at, $f6
.L800B0C3C:
/* 6B43C 800B0C3C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 6B440 800B0C40 4481D000 */  mtc1       $at, $f26
/* 6B444 800B0C44 3C01801D */  lui        $at, %hi(D_801D79CC)
/* 6B448 800B0C48 3C06801D */  lui        $a2, %hi(D_801D79D0)
/* 6B44C 800B0C4C 4407B000 */  mfc1       $a3, $f22
/* 6B450 800B0C50 27AC00CC */  addiu      $t4, $sp, 0xCC
/* 6B454 800B0C54 27AE00C8 */  addiu      $t6, $sp, 0xC8
/* 6B458 800B0C58 27AF00C4 */  addiu      $t7, $sp, 0xC4
/* 6B45C 800B0C5C AFAF0020 */  sw         $t7, 0x20($sp)
/* 6B460 800B0C60 AFAE001C */  sw         $t6, 0x1C($sp)
/* 6B464 800B0C64 AFAC0018 */  sw         $t4, 0x18($sp)
/* 6B468 800B0C68 8CC679D0 */  lw         $a2, %lo(D_801D79D0)($a2)
/* 6B46C 800B0C6C C42E79CC */  lwc1       $f14, %lo(D_801D79CC)($at)
/* 6B470 800B0C70 4600A306 */  mov.s      $f12, $f20
/* 6B474 800B0C74 E7B60014 */  swc1       $f22, 0x14($sp)
/* 6B478 800B0C78 0C07B6B8 */  jal        func_801EDAE0
/* 6B47C 800B0C7C E7BA0010 */   swc1      $f26, 0x10($sp)
/* 6B480 800B0C80 10000006 */  b          .L800B0C9C
/* 6B484 800B0C84 00000000 */   nop
/* 6B488 800B0C88 44813000 */  mtc1       $at, $f6
.L800B0C8C:
/* 6B48C 800B0C8C 4481D000 */  mtc1       $at, $f26
/* 6B490 800B0C90 E7B600C4 */  swc1       $f22, 0xC4($sp)
/* 6B494 800B0C94 E7B600C8 */  swc1       $f22, 0xC8($sp)
/* 6B498 800B0C98 E7A600CC */  swc1       $f6, 0xCC($sp)
.L800B0C9C:
/* 6B49C 800B0C9C 3C01801D */  lui        $at, %hi(D_801D79EC)
/* 6B4A0 800B0CA0 C42079EC */  lwc1       $f0, %lo(D_801D79EC)($at)
/* 6B4A4 800B0CA4 3C01801D */  lui        $at, %hi(D_801D79F4)
/* 6B4A8 800B0CA8 C42279F4 */  lwc1       $f2, %lo(D_801D79F4)($at)
/* 6B4AC 800B0CAC 46000102 */  mul.s      $f4, $f0, $f0
/* 6B4B0 800B0CB0 00000000 */  nop
/* 6B4B4 800B0CB4 46021202 */  mul.s      $f8, $f2, $f2
/* 6B4B8 800B0CB8 0C031C04 */  jal        func_800C7010
/* 6B4BC 800B0CBC 46082300 */   add.s     $f12, $f4, $f8
/* 6B4C0 800B0CC0 3C01801D */  lui        $at, %hi(D_801D79E0)
/* 6B4C4 800B0CC4 C42E79E0 */  lwc1       $f14, %lo(D_801D79E0)($at)
/* 6B4C8 800B0CC8 3C01801D */  lui        $at, %hi(D_801D79E8)
/* 6B4CC 800B0CCC C43479E8 */  lwc1       $f20, %lo(D_801D79E8)($at)
/* 6B4D0 800B0CD0 460E7282 */  mul.s      $f10, $f14, $f14
/* 6B4D4 800B0CD4 00000000 */  nop
/* 6B4D8 800B0CD8 4614A182 */  mul.s      $f6, $f20, $f20
/* 6B4DC 800B0CDC 0C031C04 */  jal        func_800C7010
/* 6B4E0 800B0CE0 46065300 */   add.s     $f12, $f10, $f6
/* 6B4E4 800B0CE4 4600B03C */  c.lt.s     $f22, $f0
/* 6B4E8 800B0CE8 46000086 */  mov.s      $f2, $f0
/* 6B4EC 800B0CEC 45000009 */  bc1f       .L800B0D14
/* 6B4F0 800B0CF0 3C01801D */   lui       $at, %hi(D_801D79E0)
/* 6B4F4 800B0CF4 C42479E0 */  lwc1       $f4, %lo(D_801D79E0)($at)
/* 6B4F8 800B0CF8 3C01801D */  lui        $at, %hi(D_801D79E8)
/* 6B4FC 800B0CFC C42A79E8 */  lwc1       $f10, %lo(D_801D79E8)($at)
/* 6B500 800B0D00 46002203 */  div.s      $f8, $f4, $f0
/* 6B504 800B0D04 46005183 */  div.s      $f6, $f10, $f0
/* 6B508 800B0D08 E7A800DC */  swc1       $f8, 0xDC($sp)
/* 6B50C 800B0D0C 10000003 */  b          .L800B0D1C
/* 6B510 800B0D10 E7A600D8 */   swc1      $f6, 0xD8($sp)
.L800B0D14:
/* 6B514 800B0D14 E7B600D8 */  swc1       $f22, 0xD8($sp)
/* 6B518 800B0D18 E7B600DC */  swc1       $f22, 0xDC($sp)
.L800B0D1C:
/* 6B51C 800B0D1C 3C01801D */  lui        $at, %hi(D_801D79C8)
/* 6B520 800B0D20 C43479C8 */  lwc1       $f20, %lo(D_801D79C8)($at)
/* 6B524 800B0D24 3C01801D */  lui        $at, %hi(D_801D79D0)
/* 6B528 800B0D28 C42079D0 */  lwc1       $f0, %lo(D_801D79D0)($at)
/* 6B52C 800B0D2C 4614A102 */  mul.s      $f4, $f20, $f20
/* 6B530 800B0D30 E7A2015C */  swc1       $f2, 0x15C($sp)
/* 6B534 800B0D34 46000202 */  mul.s      $f8, $f0, $f0
/* 6B538 800B0D38 0C031C04 */  jal        func_800C7010
/* 6B53C 800B0D3C 46082300 */   add.s     $f12, $f4, $f8
/* 6B540 800B0D40 C7A2015C */  lwc1       $f2, 0x15C($sp)
/* 6B544 800B0D44 3C0A801D */  lui        $t2, %hi(D_801D79D4)
/* 6B548 800B0D48 4480F000 */  mtc1       $zero, $f30
/* 6B54C 800B0D4C 4602B03C */  c.lt.s     $f22, $f2
/* 6B550 800B0D50 3C11800E */  lui        $s1, %hi(D_800E6D64)
/* 6B554 800B0D54 254A79D4 */  addiu      $t2, $t2, %lo(D_801D79D4)
/* 6B558 800B0D58 3C03800E */  lui        $v1, %hi(D_800E6D60)
/* 6B55C 800B0D5C 45000012 */  bc1f       .L800B0DA8
/* 6B560 800B0D60 26316D64 */   addiu     $s1, $s1, %lo(D_800E6D64)
/* 6B564 800B0D64 4600B03C */  c.lt.s     $f22, $f0
/* 6B568 800B0D68 3C01801D */  lui        $at, %hi(D_801D79E0)
/* 6B56C 800B0D6C 4502000F */  bc1fl      .L800B0DAC
/* 6B570 800B0D70 E7BA0140 */   swc1      $f26, 0x140($sp)
/* 6B574 800B0D74 C42A79E0 */  lwc1       $f10, %lo(D_801D79E0)($at)
/* 6B578 800B0D78 3C01801D */  lui        $at, %hi(D_801D79C8)
/* 6B57C 800B0D7C C42679C8 */  lwc1       $f6, %lo(D_801D79C8)($at)
/* 6B580 800B0D80 3C01801D */  lui        $at, %hi(D_801D79E8)
/* 6B584 800B0D84 C42879E8 */  lwc1       $f8, %lo(D_801D79E8)($at)
/* 6B588 800B0D88 46065102 */  mul.s      $f4, $f10, $f6
/* 6B58C 800B0D8C 3C01801D */  lui        $at, %hi(D_801D79D0)
/* 6B590 800B0D90 C42A79D0 */  lwc1       $f10, %lo(D_801D79D0)($at)
/* 6B594 800B0D94 460A4182 */  mul.s      $f6, $f8, $f10
/* 6B598 800B0D98 46062200 */  add.s      $f8, $f4, $f6
/* 6B59C 800B0D9C 46024283 */  div.s      $f10, $f8, $f2
/* 6B5A0 800B0DA0 10000003 */  b          .L800B0DB0
/* 6B5A4 800B0DA4 46005303 */   div.s     $f12, $f10, $f0
.L800B0DA8:
/* 6B5A8 800B0DA8 E7BA0140 */  swc1       $f26, 0x140($sp)
.L800B0DAC:
/* 6B5AC 800B0DAC C7AC0140 */  lwc1       $f12, 0x140($sp)
.L800B0DB0:
/* 6B5B0 800B0DB0 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 6B5B4 800B0DB4 44811000 */  mtc1       $at, $f2
/* 6B5B8 800B0DB8 C5400000 */  lwc1       $f0, 0x0($t2)
/* 6B5BC 800B0DBC 44807000 */  mtc1       $zero, $f14
/* 6B5C0 800B0DC0 3C09801D */  lui        $t1, %hi(D_801D79E0)
/* 6B5C4 800B0DC4 4602003C */  c.lt.s     $f0, $f2
/* 6B5C8 800B0DC8 3C08801D */  lui        $t0, %hi(D_801D79F4)
/* 6B5CC 800B0DCC 250879F4 */  addiu      $t0, $t0, %lo(D_801D79F4)
/* 6B5D0 800B0DD0 252979E0 */  addiu      $t1, $t1, %lo(D_801D79E0)
/* 6B5D4 800B0DD4 4500000C */  bc1f       .L800B0E08
/* 6B5D8 800B0DD8 2415003F */   addiu     $s5, $zero, 0x3F
/* 6B5DC 800B0DDC 46001601 */  sub.s      $f24, $f2, $f0
/* 6B5E0 800B0DE0 3C01801D */  lui        $at, %hi(D_801D79DC)
/* 6B5E4 800B0DE4 C42479DC */  lwc1       $f4, %lo(D_801D79DC)($at)
/* 6B5E8 800B0DE8 46182182 */  mul.s      $f6, $f4, $f24
/* 6B5EC 800B0DEC 460C3200 */  add.s      $f8, $f6, $f12
/* 6B5F0 800B0DF0 4608D03C */  c.lt.s     $f26, $f8
/* 6B5F4 800B0DF4 E7A80134 */  swc1       $f8, 0x134($sp)
/* 6B5F8 800B0DF8 45020005 */  bc1fl      .L800B0E10
/* 6B5FC 800B0DFC 460CF03E */   c.le.s    $f30, $f12
/* 6B600 800B0E00 10000002 */  b          .L800B0E0C
/* 6B604 800B0E04 E7BA0134 */   swc1      $f26, 0x134($sp)
.L800B0E08:
/* 6B608 800B0E08 E7AC0134 */  swc1       $f12, 0x134($sp)
.L800B0E0C:
/* 6B60C 800B0E0C 460CF03E */  c.le.s     $f30, $f12
.L800B0E10:
/* 6B610 800B0E10 3C07801D */  lui        $a3, %hi(D_801D79EC)
/* 6B614 800B0E14 3C06801D */  lui        $a2, %hi(D_801D79C0)
/* 6B618 800B0E18 24C679C0 */  addiu      $a2, $a2, %lo(D_801D79C0)
/* 6B61C 800B0E1C 45000003 */  bc1f       .L800B0E2C
/* 6B620 800B0E20 24E779EC */   addiu     $a3, $a3, %lo(D_801D79EC)
/* 6B624 800B0E24 10000003 */  b          .L800B0E34
/* 6B628 800B0E28 E7AC0138 */   swc1      $f12, 0x138($sp)
.L800B0E2C:
/* 6B62C 800B0E2C 46006287 */  neg.s      $f10, $f12
/* 6B630 800B0E30 E7AA0138 */  swc1       $f10, 0x138($sp)
.L800B0E34:
/* 6B634 800B0E34 8C636D60 */  lw         $v1, %lo(D_800E6D60)($v1)
/* 6B638 800B0E38 3C1E800E */  lui        $fp, %hi(D_800E6D7C)
/* 6B63C 800B0E3C 240500FF */  addiu      $a1, $zero, 0xFF
/* 6B640 800B0E40 8C781C2C */  lw         $t8, 0x1C2C($v1)
/* 6B644 800B0E44 27DE6D7C */  addiu      $fp, $fp, %lo(D_800E6D7C)
/* 6B648 800B0E48 1600000F */  bnez       $s0, .L800B0E88
/* 6B64C 800B0E4C AC781C30 */   sw        $t8, 0x1C30($v1)
/* 6B650 800B0E50 3C01801D */  lui        $at, %hi(D_801D7A00)
/* 6B654 800B0E54 C4247A00 */  lwc1       $f4, %lo(D_801D7A00)($at)
/* 6B658 800B0E58 3C01801D */  lui        $at, %hi(D_801D79C0)
/* 6B65C 800B0E5C C42679C0 */  lwc1       $f6, %lo(D_801D79C0)($at)
/* 6B660 800B0E60 0000C825 */  or         $t9, $zero, $zero
/* 6B664 800B0E64 3C0B800E */  lui        $t3, %hi(D_800E6D60)
/* 6B668 800B0E68 4604303E */  c.le.s     $f6, $f4
/* 6B66C 800B0E6C 00000000 */  nop
/* 6B670 800B0E70 45000002 */  bc1f       .L800B0E7C
/* 6B674 800B0E74 00000000 */   nop
/* 6B678 800B0E78 24190001 */  addiu      $t9, $zero, 0x1
.L800B0E7C:
/* 6B67C 800B0E7C 8D6B6D60 */  lw         $t3, %lo(D_800E6D60)($t3)
/* 6B680 800B0E80 10000005 */  b          .L800B0E98
/* 6B684 800B0E84 AD791C2C */   sw        $t9, 0x1C2C($t3)
.L800B0E88:
/* 6B688 800B0E88 3C0C800E */  lui        $t4, %hi(D_800E6D60)
/* 6B68C 800B0E8C 8D8C6D60 */  lw         $t4, %lo(D_800E6D60)($t4)
/* 6B690 800B0E90 240D0001 */  addiu      $t5, $zero, 0x1
/* 6B694 800B0E94 AD8D1C2C */  sw         $t5, 0x1C2C($t4)
.L800B0E98:
/* 6B698 800B0E98 3C03800E */  lui        $v1, %hi(D_800E6D60)
/* 6B69C 800B0E9C 8C636D60 */  lw         $v1, %lo(D_800E6D60)($v1)
/* 6B6A0 800B0EA0 3C0B800E */  lui        $t3, %hi(D_800E6D68)
/* 6B6A4 800B0EA4 8C701C30 */  lw         $s0, 0x1C30($v1)
/* 6B6A8 800B0EA8 2E0E0001 */  sltiu      $t6, $s0, 0x1
/* 6B6AC 800B0EAC 11C00004 */  beqz       $t6, .L800B0EC0
/* 6B6B0 800B0EB0 01C08025 */   or        $s0, $t6, $zero
/* 6B6B4 800B0EB4 8C701C2C */  lw         $s0, 0x1C2C($v1)
/* 6B6B8 800B0EB8 0010782B */  sltu       $t7, $zero, $s0
/* 6B6BC 800B0EBC 01E08025 */  or         $s0, $t7, $zero
.L800B0EC0:
/* 6B6C0 800B0EC0 AC701C34 */  sw         $s0, 0x1C34($v1)
/* 6B6C4 800B0EC4 3C03800E */  lui        $v1, %hi(D_800E6D60)
/* 6B6C8 800B0EC8 8C636D60 */  lw         $v1, %lo(D_800E6D60)($v1)
/* 6B6CC 800B0ECC 8C781C2C */  lw         $t8, 0x1C2C($v1)
/* 6B6D0 800B0ED0 53000004 */  beql       $t8, $zero, .L800B0EE4
/* 6B6D4 800B0ED4 8C621C3C */   lw        $v0, 0x1C3C($v1)
/* 6B6D8 800B0ED8 10000006 */  b          .L800B0EF4
/* 6B6DC 800B0EDC AC601C3C */   sw        $zero, 0x1C3C($v1)
/* 6B6E0 800B0EE0 8C621C3C */  lw         $v0, 0x1C3C($v1)
.L800B0EE4:
/* 6B6E4 800B0EE4 28417FFF */  slti       $at, $v0, 0x7FFF
/* 6B6E8 800B0EE8 10200002 */  beqz       $at, .L800B0EF4
/* 6B6EC 800B0EEC 24590001 */   addiu     $t9, $v0, 0x1
/* 6B6F0 800B0EF0 AC791C3C */  sw         $t9, 0x1C3C($v1)
.L800B0EF4:
/* 6B6F4 800B0EF4 3C014180 */  lui        $at, (0x41800000 >> 16)
/* 6B6F8 800B0EF8 4481D000 */  mtc1       $at, $f26
/* 6B6FC 800B0EFC 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 6B700 800B0F00 4481C000 */  mtc1       $at, $f24
/* 6B704 800B0F04 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 6B708 800B0F08 4481B000 */  mtc1       $at, $f22
/* 6B70C 800B0F0C 44818000 */  mtc1       $at, $f16
/* 6B710 800B0F10 8D6B6D68 */  lw         $t3, %lo(D_800E6D68)($t3)
/* 6B714 800B0F14 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 6B718 800B0F18 44811000 */  mtc1       $at, $f2
/* 6B71C 800B0F1C 3C014300 */  lui        $at, (0x43000000 >> 16)
/* 6B720 800B0F20 256D0FC0 */  addiu      $t5, $t3, 0xFC0
/* 6B724 800B0F24 44810000 */  mtc1       $at, $f0
/* 6B728 800B0F28 AE2D0000 */  sw         $t5, 0x0($s1)
.L800B0F2C:
/* 6B72C 800B0F2C 8E220000 */  lw         $v0, 0x0($s1)
/* 6B730 800B0F30 26B5FFFF */  addiu      $s5, $s5, -0x1
/* 6B734 800B0F34 8C4C0038 */  lw         $t4, 0x38($v0)
/* 6B738 800B0F38 51800077 */  beql       $t4, $zero, .L800B1118
/* 6B73C 800B0F3C 244BFFC0 */   addiu     $t3, $v0, -0x40
/* 6B740 800B0F40 8C43003C */  lw         $v1, 0x3C($v0)
/* 6B744 800B0F44 00037080 */  sll        $t6, $v1, 2
/* 6B748 800B0F48 01C37023 */  subu       $t6, $t6, $v1
/* 6B74C 800B0F4C 000E70C0 */  sll        $t6, $t6, 3
/* 6B750 800B0F50 00AE2023 */  subu       $a0, $a1, $t6
/* 6B754 800B0F54 04810002 */  bgez       $a0, .L800B0F60
/* 6B758 800B0F58 246F0001 */   addiu     $t7, $v1, 0x1
/* 6B75C 800B0F5C 00002025 */  or         $a0, $zero, $zero
.L800B0F60:
/* 6B760 800B0F60 AC4F003C */  sw         $t7, 0x3C($v0)
/* 6B764 800B0F64 8E220000 */  lw         $v0, 0x0($s1)
/* 6B768 800B0F68 C4480030 */  lwc1       $f8, 0x30($v0)
/* 6B76C 800B0F6C C44A0034 */  lwc1       $f10, 0x34($v0)
/* 6B770 800B0F70 460A4100 */  add.s      $f4, $f8, $f10
/* 6B774 800B0F74 E4440030 */  swc1       $f4, 0x30($v0)
/* 6B778 800B0F78 8E220000 */  lw         $v0, 0x0($s1)
/* 6B77C 800B0F7C C4460030 */  lwc1       $f6, 0x30($v0)
/* 6B780 800B0F80 4606003C */  c.lt.s     $f0, $f6
/* 6B784 800B0F84 00000000 */  nop
/* 6B788 800B0F88 45020004 */  bc1fl      .L800B0F9C
/* 6B78C 800B0F8C C4480020 */   lwc1      $f8, 0x20($v0)
/* 6B790 800B0F90 E4400030 */  swc1       $f0, 0x30($v0)
/* 6B794 800B0F94 8E220000 */  lw         $v0, 0x0($s1)
/* 6B798 800B0F98 C4480020 */  lwc1       $f8, 0x20($v0)
.L800B0F9C:
/* 6B79C 800B0F9C C44A002C */  lwc1       $f10, 0x2C($v0)
/* 6B7A0 800B0FA0 3C01801D */  lui        $at, %hi(D_801D79BC)
/* 6B7A4 800B0FA4 3C03801D */  lui        $v1, %hi(D_801D79E8)
/* 6B7A8 800B0FA8 460A4100 */  add.s      $f4, $f8, $f10
/* 6B7AC 800B0FAC 246379E8 */  addiu      $v1, $v1, %lo(D_801D79E8)
/* 6B7B0 800B0FB0 3C18800E */  lui        $t8, %hi(D_800E6D60)
/* 6B7B4 800B0FB4 E4440020 */  swc1       $f4, 0x20($v0)
/* 6B7B8 800B0FB8 8E220000 */  lw         $v0, 0x0($s1)
/* 6B7BC 800B0FBC C4E80000 */  lwc1       $f8, 0x0($a3)
/* 6B7C0 800B0FC0 C42479BC */  lwc1       $f4, %lo(D_801D79BC)($at)
/* 6B7C4 800B0FC4 C4460018 */  lwc1       $f6, 0x18($v0)
/* 6B7C8 800B0FC8 3C01801D */  lui        $at, %hi(D_801D79C4)
/* 6B7CC 800B0FCC 46083282 */  mul.s      $f10, $f6, $f8
/* 6B7D0 800B0FD0 C4480020 */  lwc1       $f8, 0x20($v0)
/* 6B7D4 800B0FD4 46045180 */  add.s      $f6, $f10, $f4
/* 6B7D8 800B0FD8 C52A0000 */  lwc1       $f10, 0x0($t1)
/* 6B7DC 800B0FDC 460A4102 */  mul.s      $f4, $f8, $f10
/* 6B7E0 800B0FE0 46043200 */  add.s      $f8, $f6, $f4
/* 6B7E4 800B0FE4 E4480000 */  swc1       $f8, 0x0($v0)
/* 6B7E8 800B0FE8 8E220000 */  lw         $v0, 0x0($s1)
/* 6B7EC 800B0FEC C5060000 */  lwc1       $f6, 0x0($t0)
/* 6B7F0 800B0FF0 C42879C4 */  lwc1       $f8, %lo(D_801D79C4)($at)
/* 6B7F4 800B0FF4 C44A0018 */  lwc1       $f10, 0x18($v0)
/* 6B7F8 800B0FF8 3C01801D */  lui        $at, %hi(D_801D7A00)
/* 6B7FC 800B0FFC 46065102 */  mul.s      $f4, $f10, $f6
/* 6B800 800B1000 C4460020 */  lwc1       $f6, 0x20($v0)
/* 6B804 800B1004 46082280 */  add.s      $f10, $f4, $f8
/* 6B808 800B1008 C4640000 */  lwc1       $f4, 0x0($v1)
/* 6B80C 800B100C 46043202 */  mul.s      $f8, $f6, $f4
/* 6B810 800B1010 46085180 */  add.s      $f6, $f10, $f8
/* 6B814 800B1014 E4460008 */  swc1       $f6, 0x8($v0)
/* 6B818 800B1018 8E220000 */  lw         $v0, 0x0($s1)
/* 6B81C 800B101C C4EA0000 */  lwc1       $f10, 0x0($a3)
/* 6B820 800B1020 C4440024 */  lwc1       $f4, 0x24($v0)
/* 6B824 800B1024 C446002C */  lwc1       $f6, 0x2C($v0)
/* 6B828 800B1028 460A2202 */  mul.s      $f8, $f4, $f10
/* 6B82C 800B102C C52A0000 */  lwc1       $f10, 0x0($t1)
/* 6B830 800B1030 46103102 */  mul.s      $f4, $f6, $f16
/* 6B834 800B1034 00000000 */  nop
/* 6B838 800B1038 460A2182 */  mul.s      $f6, $f4, $f10
/* 6B83C 800B103C 46064100 */  add.s      $f4, $f8, $f6
/* 6B840 800B1040 E444000C */  swc1       $f4, 0xC($v0)
/* 6B844 800B1044 8E220000 */  lw         $v0, 0x0($s1)
/* 6B848 800B1048 C5080000 */  lwc1       $f8, 0x0($t0)
/* 6B84C 800B104C C44A0024 */  lwc1       $f10, 0x24($v0)
/* 6B850 800B1050 C444002C */  lwc1       $f4, 0x2C($v0)
/* 6B854 800B1054 46085182 */  mul.s      $f6, $f10, $f8
/* 6B858 800B1058 C4680000 */  lwc1       $f8, 0x0($v1)
/* 6B85C 800B105C 46102282 */  mul.s      $f10, $f4, $f16
/* 6B860 800B1060 00000000 */  nop
/* 6B864 800B1064 46085102 */  mul.s      $f4, $f10, $f8
/* 6B868 800B1068 46043280 */  add.s      $f10, $f6, $f4
/* 6B86C 800B106C E44A0014 */  swc1       $f10, 0x14($v0)
/* 6B870 800B1070 8F186D60 */  lw         $t8, %lo(D_800E6D60)($t8)
/* 6B874 800B1074 8F191C54 */  lw         $t9, 0x1C54($t8)
/* 6B878 800B1078 1320000C */  beqz       $t9, .L800B10AC
/* 6B87C 800B107C 00000000 */   nop
/* 6B880 800B1080 C4C80000 */  lwc1       $f8, 0x0($a2)
/* 6B884 800B1084 8E220000 */  lw         $v0, 0x0($s1)
/* 6B888 800B1088 46184180 */  add.s      $f6, $f8, $f24
/* 6B88C 800B108C C4440034 */  lwc1       $f4, 0x34($v0)
/* 6B890 800B1090 46043281 */  sub.s      $f10, $f6, $f4
/* 6B894 800B1094 E44A0004 */  swc1       $f10, 0x4($v0)
/* 6B898 800B1098 8E220000 */  lw         $v0, 0x0($s1)
/* 6B89C 800B109C C4480010 */  lwc1       $f8, 0x10($v0)
/* 6B8A0 800B10A0 46164181 */  sub.s      $f6, $f8, $f22
/* 6B8A4 800B10A4 10000005 */  b          .L800B10BC
/* 6B8A8 800B10A8 E4460010 */   swc1      $f6, 0x10($v0)
.L800B10AC:
/* 6B8AC 800B10AC 8E220000 */  lw         $v0, 0x0($s1)
/* 6B8B0 800B10B0 C4440010 */  lwc1       $f4, 0x10($v0)
/* 6B8B4 800B10B4 46022281 */  sub.s      $f10, $f4, $f2
/* 6B8B8 800B10B8 E44A0010 */  swc1       $f10, 0x10($v0)
.L800B10BC:
/* 6B8BC 800B10BC C4267A00 */  lwc1       $f6, %lo(D_801D7A00)($at)
/* 6B8C0 800B10C0 8E220000 */  lw         $v0, 0x0($s1)
/* 6B8C4 800B10C4 461A3101 */  sub.s      $f4, $f6, $f26
/* 6B8C8 800B10C8 C4480004 */  lwc1       $f8, 0x4($v0)
/* 6B8CC 800B10CC 4604403C */  c.lt.s     $f8, $f4
/* 6B8D0 800B10D0 00000000 */  nop
/* 6B8D4 800B10D4 45020007 */  bc1fl      .L800B10F4
/* 6B8D8 800B10D8 C4460010 */   lwc1      $f6, 0x10($v0)
/* 6B8DC 800B10DC C44A0010 */  lwc1       $f10, 0x10($v0)
/* 6B8E0 800B10E0 460E503C */  c.lt.s     $f10, $f14
/* 6B8E4 800B10E4 00000000 */  nop
/* 6B8E8 800B10E8 45030009 */  bc1tl      .L800B1110
/* 6B8EC 800B10EC AC400038 */   sw        $zero, 0x38($v0)
/* 6B8F0 800B10F0 C4460010 */  lwc1       $f6, 0x10($v0)
.L800B10F4:
/* 6B8F4 800B10F4 460E303E */  c.le.s     $f6, $f14
/* 6B8F8 800B10F8 00000000 */  nop
/* 6B8FC 800B10FC 45030004 */  bc1tl      .L800B1110
/* 6B900 800B1100 AC400038 */   sw        $zero, 0x38($v0)
/* 6B904 800B1104 54800004 */  bnel       $a0, $zero, .L800B1118
/* 6B908 800B1108 244BFFC0 */   addiu     $t3, $v0, -0x40
/* 6B90C 800B110C AC400038 */  sw         $zero, 0x38($v0)
.L800B1110:
/* 6B910 800B1110 8E220000 */  lw         $v0, 0x0($s1)
/* 6B914 800B1114 244BFFC0 */  addiu      $t3, $v0, -0x40
.L800B1118:
/* 6B918 800B1118 06A1FF84 */  bgez       $s5, .L800B0F2C
/* 6B91C 800B111C AE2B0000 */   sw        $t3, 0x0($s1)
/* 6B920 800B1120 3C0C800D */  lui        $t4, %hi(D_800D48DC)
/* 6B924 800B1124 8D8C48DC */  lw         $t4, %lo(D_800D48DC)($t4)
/* 6B928 800B1128 8FAD01A0 */  lw         $t5, 0x1A0($sp)
/* 6B92C 800B112C 3C03800E */  lui        $v1, %hi(D_800E6D74)
/* 6B930 800B1130 24636D74 */  addiu      $v1, $v1, %lo(D_800E6D74)
/* 6B934 800B1134 15AC003A */  bne        $t5, $t4, .L800B1220
/* 6B938 800B1138 3C0E800E */   lui       $t6, %hi(D_800E6D70)
/* 6B93C 800B113C 8DCE6D70 */  lw         $t6, %lo(D_800E6D70)($t6)
/* 6B940 800B1140 3C14800E */  lui        $s4, %hi(D_800E6D6C)
/* 6B944 800B1144 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 6B948 800B1148 26946D6C */  addiu      $s4, $s4, %lo(D_800E6D6C)
/* 6B94C 800B114C 3C06801D */  lui        $a2, %hi(D_801D7A00)
/* 6B950 800B1150 3C05801D */  lui        $a1, %hi(D_801D79FC)
/* 6B954 800B1154 3C04801D */  lui        $a0, %hi(D_801D79F8)
/* 6B958 800B1158 25CF09D8 */  addiu      $t7, $t6, 0x9D8
/* 6B95C 800B115C 4481E000 */  mtc1       $at, $f28
/* 6B960 800B1160 AE8F0000 */  sw         $t7, 0x0($s4)
/* 6B964 800B1164 248479F8 */  addiu      $a0, $a0, %lo(D_801D79F8)
/* 6B968 800B1168 24A579FC */  addiu      $a1, $a1, %lo(D_801D79FC)
/* 6B96C 800B116C 24C67A00 */  addiu      $a2, $a2, %lo(D_801D7A00)
/* 6B970 800B1170 2415003F */  addiu      $s5, $zero, 0x3F
.L800B1174:
/* 6B974 800B1174 8E820000 */  lw         $v0, 0x0($s4)
/* 6B978 800B1178 26B5FFFF */  addiu      $s5, $s5, -0x1
/* 6B97C 800B117C 8C580020 */  lw         $t8, 0x20($v0)
/* 6B980 800B1180 53000025 */  beql       $t8, $zero, .L800B1218
/* 6B984 800B1184 244DFFD8 */   addiu     $t5, $v0, -0x28
/* 6B988 800B1188 8C590024 */  lw         $t9, 0x24($v0)
/* 6B98C 800B118C 272B0001 */  addiu      $t3, $t9, 0x1
/* 6B990 800B1190 AC4B0024 */  sw         $t3, 0x24($v0)
/* 6B994 800B1194 8E820000 */  lw         $v0, 0x0($s4)
/* 6B998 800B1198 C4840000 */  lwc1       $f4, 0x0($a0)
/* 6B99C 800B119C C448000C */  lwc1       $f8, 0xC($v0)
/* 6B9A0 800B11A0 C4460000 */  lwc1       $f6, 0x0($v0)
/* 6B9A4 800B11A4 46044280 */  add.s      $f10, $f8, $f4
/* 6B9A8 800B11A8 460A3200 */  add.s      $f8, $f6, $f10
/* 6B9AC 800B11AC E4480000 */  swc1       $f8, 0x0($v0)
/* 6B9B0 800B11B0 8E820000 */  lw         $v0, 0x0($s4)
/* 6B9B4 800B11B4 C4440004 */  lwc1       $f4, 0x4($v0)
/* 6B9B8 800B11B8 C4460010 */  lwc1       $f6, 0x10($v0)
/* 6B9BC 800B11BC 46062280 */  add.s      $f10, $f4, $f6
/* 6B9C0 800B11C0 E44A0004 */  swc1       $f10, 0x4($v0)
/* 6B9C4 800B11C4 8E820000 */  lw         $v0, 0x0($s4)
/* 6B9C8 800B11C8 C4C40000 */  lwc1       $f4, 0x0($a2)
/* 6B9CC 800B11CC C4480004 */  lwc1       $f8, 0x4($v0)
/* 6B9D0 800B11D0 4604403C */  c.lt.s     $f8, $f4
/* 6B9D4 800B11D4 00000000 */  nop
/* 6B9D8 800B11D8 45020004 */  bc1fl      .L800B11EC
/* 6B9DC 800B11DC C4460014 */   lwc1      $f6, 0x14($v0)
/* 6B9E0 800B11E0 AC400020 */  sw         $zero, 0x20($v0)
/* 6B9E4 800B11E4 8E820000 */  lw         $v0, 0x0($s4)
/* 6B9E8 800B11E8 C4460014 */  lwc1       $f6, 0x14($v0)
.L800B11EC:
/* 6B9EC 800B11EC C4AA0000 */  lwc1       $f10, 0x0($a1)
/* 6B9F0 800B11F0 C4440008 */  lwc1       $f4, 0x8($v0)
/* 6B9F4 800B11F4 460A3200 */  add.s      $f8, $f6, $f10
/* 6B9F8 800B11F8 46082180 */  add.s      $f6, $f4, $f8
/* 6B9FC 800B11FC E4460008 */  swc1       $f6, 0x8($v0)
/* 6BA00 800B1200 8E820000 */  lw         $v0, 0x0($s4)
/* 6BA04 800B1204 C44A0010 */  lwc1       $f10, 0x10($v0)
/* 6BA08 800B1208 461C5101 */  sub.s      $f4, $f10, $f28
/* 6BA0C 800B120C E4440010 */  swc1       $f4, 0x10($v0)
/* 6BA10 800B1210 8E820000 */  lw         $v0, 0x0($s4)
/* 6BA14 800B1214 244DFFD8 */  addiu      $t5, $v0, -0x28
.L800B1218:
/* 6BA18 800B1218 06A1FFD6 */  bgez       $s5, .L800B1174
/* 6BA1C 800B121C AE8D0000 */   sw        $t5, 0x0($s4)
.L800B1220:
/* 6BA20 800B1220 3C0C800E */  lui        $t4, %hi(D_800E6D78)
/* 6BA24 800B1224 8D8C6D78 */  lw         $t4, %lo(D_800E6D78)($t4)
/* 6BA28 800B1228 3C04801D */  lui        $a0, %hi(D_801D79F8)
/* 6BA2C 800B122C 3C05801D */  lui        $a1, %hi(D_801D79FC)
/* 6BA30 800B1230 3C14800E */  lui        $s4, %hi(D_800E6D6C)
/* 6BA34 800B1234 258E0078 */  addiu      $t6, $t4, 0x78
/* 6BA38 800B1238 26946D6C */  addiu      $s4, $s4, %lo(D_800E6D6C)
/* 6BA3C 800B123C 24A579FC */  addiu      $a1, $a1, %lo(D_801D79FC)
/* 6BA40 800B1240 248479F8 */  addiu      $a0, $a0, %lo(D_801D79F8)
/* 6BA44 800B1244 AC6E0000 */  sw         $t6, 0x0($v1)
/* 6BA48 800B1248 24150003 */  addiu      $s5, $zero, 0x3
.L800B124C:
/* 6BA4C 800B124C 8C620000 */  lw         $v0, 0x0($v1)
/* 6BA50 800B1250 26B5FFFF */  addiu      $s5, $s5, -0x1
/* 6BA54 800B1254 8C4F0020 */  lw         $t7, 0x20($v0)
/* 6BA58 800B1258 51E0001F */  beql       $t7, $zero, .L800B12D8
/* 6BA5C 800B125C 244DFFD8 */   addiu     $t5, $v0, -0x28
/* 6BA60 800B1260 C448000C */  lwc1       $f8, 0xC($v0)
/* 6BA64 800B1264 C4860000 */  lwc1       $f6, 0x0($a0)
/* 6BA68 800B1268 C4440000 */  lwc1       $f4, 0x0($v0)
/* 6BA6C 800B126C 46064280 */  add.s      $f10, $f8, $f6
/* 6BA70 800B1270 460A2200 */  add.s      $f8, $f4, $f10
/* 6BA74 800B1274 E4480000 */  swc1       $f8, 0x0($v0)
/* 6BA78 800B1278 8C620000 */  lw         $v0, 0x0($v1)
/* 6BA7C 800B127C C4460004 */  lwc1       $f6, 0x4($v0)
/* 6BA80 800B1280 C4440010 */  lwc1       $f4, 0x10($v0)
/* 6BA84 800B1284 46043280 */  add.s      $f10, $f6, $f4
/* 6BA88 800B1288 E44A0004 */  swc1       $f10, 0x4($v0)
/* 6BA8C 800B128C 8C620000 */  lw         $v0, 0x0($v1)
/* 6BA90 800B1290 C4A60000 */  lwc1       $f6, 0x0($a1)
/* 6BA94 800B1294 C4480014 */  lwc1       $f8, 0x14($v0)
/* 6BA98 800B1298 C44A0008 */  lwc1       $f10, 0x8($v0)
/* 6BA9C 800B129C 46064100 */  add.s      $f4, $f8, $f6
/* 6BAA0 800B12A0 46045200 */  add.s      $f8, $f10, $f4
/* 6BAA4 800B12A4 E4480008 */  swc1       $f8, 0x8($v0)
/* 6BAA8 800B12A8 8C620000 */  lw         $v0, 0x0($v1)
/* 6BAAC 800B12AC 8C580024 */  lw         $t8, 0x24($v0)
/* 6BAB0 800B12B0 27190001 */  addiu      $t9, $t8, 0x1
/* 6BAB4 800B12B4 AC590024 */  sw         $t9, 0x24($v0)
/* 6BAB8 800B12B8 8C620000 */  lw         $v0, 0x0($v1)
/* 6BABC 800B12BC 8C4B0024 */  lw         $t3, 0x24($v0)
/* 6BAC0 800B12C0 29610008 */  slti       $at, $t3, 0x8
/* 6BAC4 800B12C4 54200004 */  bnel       $at, $zero, .L800B12D8
/* 6BAC8 800B12C8 244DFFD8 */   addiu     $t5, $v0, -0x28
/* 6BACC 800B12CC AC400020 */  sw         $zero, 0x20($v0)
/* 6BAD0 800B12D0 8C620000 */  lw         $v0, 0x0($v1)
/* 6BAD4 800B12D4 244DFFD8 */  addiu      $t5, $v0, -0x28
.L800B12D8:
/* 6BAD8 800B12D8 06A1FFDC */  bgez       $s5, .L800B124C
/* 6BADC 800B12DC AC6D0000 */   sw        $t5, 0x0($v1)
/* 6BAE0 800B12E0 3C04800E */  lui        $a0, %hi(D_800E6D80)
/* 6BAE4 800B12E4 3C03800E */  lui        $v1, %hi(D_800E6D60)
/* 6BAE8 800B12E8 24636D60 */  addiu      $v1, $v1, %lo(D_800E6D60)
/* 6BAEC 800B12EC 24846D80 */  addiu      $a0, $a0, %lo(D_800E6D80)
/* 6BAF0 800B12F0 24150007 */  addiu      $s5, $zero, 0x7
/* 6BAF4 800B12F4 24050030 */  addiu      $a1, $zero, 0x30
.L800B12F8:
/* 6BAF8 800B12F8 8C6C0000 */  lw         $t4, 0x0($v1)
/* 6BAFC 800B12FC 8C990000 */  lw         $t9, 0x0($a0)
/* 6BB00 800B1300 8D8E1C38 */  lw         $t6, 0x1C38($t4)
/* 6BB04 800B1304 01D5B821 */  addu       $s7, $t6, $s5
/* 6BB08 800B1308 06E10004 */  bgez       $s7, .L800B131C
/* 6BB0C 800B130C 32EF0007 */   andi      $t7, $s7, 0x7
/* 6BB10 800B1310 11E00002 */  beqz       $t7, .L800B131C
/* 6BB14 800B1314 00000000 */   nop
/* 6BB18 800B1318 25EFFFF8 */  addiu      $t7, $t7, -0x8
.L800B131C:
/* 6BB1C 800B131C 01E50019 */  multu      $t7, $a1
/* 6BB20 800B1320 26B5FFFF */  addiu      $s5, $s5, -0x1
/* 6BB24 800B1324 0000C012 */  mflo       $t8
/* 6BB28 800B1328 03195821 */  addu       $t3, $t8, $t9
/* 6BB2C 800B132C AFCB0000 */  sw         $t3, 0x0($fp)
/* 6BB30 800B1330 8D6D0028 */  lw         $t5, 0x28($t3)
/* 6BB34 800B1334 25AC0001 */  addiu      $t4, $t5, 0x1
/* 6BB38 800B1338 AD6C0028 */  sw         $t4, 0x28($t3)
/* 6BB3C 800B133C 8FC20000 */  lw         $v0, 0x0($fp)
/* 6BB40 800B1340 C4460000 */  lwc1       $f6, 0x0($v0)
/* 6BB44 800B1344 C44A0018 */  lwc1       $f10, 0x18($v0)
/* 6BB48 800B1348 460A3100 */  add.s      $f4, $f6, $f10
/* 6BB4C 800B134C E4440000 */  swc1       $f4, 0x0($v0)
/* 6BB50 800B1350 8FC20000 */  lw         $v0, 0x0($fp)
/* 6BB54 800B1354 C4480008 */  lwc1       $f8, 0x8($v0)
/* 6BB58 800B1358 C4460020 */  lwc1       $f6, 0x20($v0)
/* 6BB5C 800B135C 46064280 */  add.s      $f10, $f8, $f6
/* 6BB60 800B1360 E44A0008 */  swc1       $f10, 0x8($v0)
/* 6BB64 800B1364 8FC20000 */  lw         $v0, 0x0($fp)
/* 6BB68 800B1368 C444000C */  lwc1       $f4, 0xC($v0)
/* 6BB6C 800B136C C4480018 */  lwc1       $f8, 0x18($v0)
/* 6BB70 800B1370 46082180 */  add.s      $f6, $f4, $f8
/* 6BB74 800B1374 E446000C */  swc1       $f6, 0xC($v0)
/* 6BB78 800B1378 8FC20000 */  lw         $v0, 0x0($fp)
/* 6BB7C 800B137C C44A0014 */  lwc1       $f10, 0x14($v0)
/* 6BB80 800B1380 C4440020 */  lwc1       $f4, 0x20($v0)
/* 6BB84 800B1384 46045200 */  add.s      $f8, $f10, $f4
/* 6BB88 800B1388 06A1FFDB */  bgez       $s5, .L800B12F8
/* 6BB8C 800B138C E4480014 */   swc1      $f8, 0x14($v0)
/* 6BB90 800B1390 12C00016 */  beqz       $s6, .L800B13EC
/* 6BB94 800B1394 E7AC0140 */   swc1      $f12, 0x140($sp)
/* 6BB98 800B1398 3C014120 */  lui        $at, (0x41200000 >> 16)
/* 6BB9C 800B139C 44811000 */  mtc1       $at, $f2
/* 6BBA0 800B13A0 C5400000 */  lwc1       $f0, 0x0($t2)
/* 6BBA4 800B13A4 3C01800F */  lui        $at, %hi(D_800EBB9C)
/* 6BBA8 800B13A8 4602003C */  c.lt.s     $f0, $f2
/* 6BBAC 800B13AC 00000000 */  nop
/* 6BBB0 800B13B0 45020008 */  bc1fl      .L800B13D4
/* 6BBB4 800B13B4 46020281 */   sub.s     $f10, $f0, $f2
/* 6BBB8 800B13B8 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* 6BBBC 800B13BC 44813000 */  mtc1       $at, $f6
/* 6BBC0 800B13C0 00000000 */  nop
/* 6BBC4 800B13C4 46060482 */  mul.s      $f18, $f0, $f6
/* 6BBC8 800B13C8 1000001C */  b          .L800B143C
/* 6BBCC 800B13CC 00000000 */   nop
/* 6BBD0 800B13D0 46020281 */  sub.s      $f10, $f0, $f2
.L800B13D4:
/* 6BBD4 800B13D4 C424BB9C */  lwc1       $f4, %lo(D_800EBB9C)($at)
/* 6BBD8 800B13D8 3C014248 */  lui        $at, (0x42480000 >> 16)
/* 6BBDC 800B13DC 44813000 */  mtc1       $at, $f6
/* 6BBE0 800B13E0 46045202 */  mul.s      $f8, $f10, $f4
/* 6BBE4 800B13E4 10000015 */  b          .L800B143C
/* 6BBE8 800B13E8 46064480 */   add.s     $f18, $f8, $f6
.L800B13EC:
/* 6BBEC 800B13EC 3C014120 */  lui        $at, (0x41200000 >> 16)
/* 6BBF0 800B13F0 44811000 */  mtc1       $at, $f2
/* 6BBF4 800B13F4 C5400000 */  lwc1       $f0, 0x0($t2)
/* 6BBF8 800B13F8 3C01800F */  lui        $at, %hi(D_800EBBA0)
/* 6BBFC 800B13FC 4602003C */  c.lt.s     $f0, $f2
/* 6BC00 800B1400 00000000 */  nop
/* 6BC04 800B1404 45020008 */  bc1fl      .L800B1428
/* 6BC08 800B1408 46020101 */   sub.s     $f4, $f0, $f2
/* 6BC0C 800B140C 3C014040 */  lui        $at, (0x40400000 >> 16)
/* 6BC10 800B1410 44815000 */  mtc1       $at, $f10
/* 6BC14 800B1414 00000000 */  nop
/* 6BC18 800B1418 460A0482 */  mul.s      $f18, $f0, $f10
/* 6BC1C 800B141C 10000007 */  b          .L800B143C
/* 6BC20 800B1420 00000000 */   nop
/* 6BC24 800B1424 46020101 */  sub.s      $f4, $f0, $f2
.L800B1428:
/* 6BC28 800B1428 C428BBA0 */  lwc1       $f8, %lo(D_800EBBA0)($at)
/* 6BC2C 800B142C 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 6BC30 800B1430 44815000 */  mtc1       $at, $f10
/* 6BC34 800B1434 46082182 */  mul.s      $f6, $f4, $f8
/* 6BC38 800B1438 460A3480 */  add.s      $f18, $f6, $f10
.L800B143C:
/* 6BC3C 800B143C 16C00005 */  bnez       $s6, .L800B1454
/* 6BC40 800B1440 3C04800E */   lui       $a0, %hi(D_800E6D60)
/* 6BC44 800B1444 8FAE016C */  lw         $t6, 0x16C($sp)
/* 6BC48 800B1448 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 6BC4C 800B144C 55C00004 */  bnel       $t6, $zero, .L800B1460
/* 6BC50 800B1450 44812000 */   mtc1      $at, $f4
.L800B1454:
/* 6BC54 800B1454 1000000F */  b          .L800B1494
/* 6BC58 800B1458 46007306 */   mov.s     $f12, $f14
/* 6BC5C 800B145C 44812000 */  mtc1       $at, $f4
.L800B1460:
/* 6BC60 800B1460 3C0140F0 */  lui        $at, (0x40F00000 >> 16)
/* 6BC64 800B1464 44813000 */  mtc1       $at, $f6
/* 6BC68 800B1468 46002201 */  sub.s      $f8, $f4, $f0
/* 6BC6C 800B146C 3C01801D */  lui        $at, %hi(D_801D79DC)
/* 6BC70 800B1470 C42479DC */  lwc1       $f4, %lo(D_801D79DC)($at)
/* 6BC74 800B1474 46064282 */  mul.s      $f10, $f8, $f6
/* 6BC78 800B1478 00000000 */  nop
/* 6BC7C 800B147C 46045302 */  mul.s      $f12, $f10, $f4
/* 6BC80 800B1480 460E603C */  c.lt.s     $f12, $f14
/* 6BC84 800B1484 00000000 */  nop
/* 6BC88 800B1488 45000002 */  bc1f       .L800B1494
/* 6BC8C 800B148C 00000000 */   nop
/* 6BC90 800B1490 46007306 */  mov.s      $f12, $f14
.L800B1494:
/* 6BC94 800B1494 24846D60 */  addiu      $a0, $a0, %lo(D_800E6D60)
/* 6BC98 800B1498 8C830000 */  lw         $v1, 0x0($a0)
/* 6BC9C 800B149C 3C01801D */  lui        $at, %hi(D_801D79D8)
/* 6BCA0 800B14A0 C4621C68 */  lwc1       $f2, 0x1C68($v1)
/* 6BCA4 800B14A4 4600103E */  c.le.s     $f2, $f0
/* 6BCA8 800B14A8 00000000 */  nop
/* 6BCAC 800B14AC 45020004 */  bc1fl      .L800B14C0
/* 6BCB0 800B14B0 46020501 */   sub.s     $f20, $f0, $f2
/* 6BCB4 800B14B4 10000003 */  b          .L800B14C4
/* 6BCB8 800B14B8 46020501 */   sub.s     $f20, $f0, $f2
/* 6BCBC 800B14BC 46020501 */  sub.s      $f20, $f0, $f2
.L800B14C0:
/* 6BCC0 800B14C0 4600A507 */  neg.s      $f20, $f20
.L800B14C4:
/* 6BCC4 800B14C4 C42079D8 */  lwc1       $f0, %lo(D_801D79D8)($at)
/* 6BCC8 800B14C8 3C013FC0 */  lui        $at, (0x3FC00000 >> 16)
/* 6BCCC 800B14CC 44814000 */  mtc1       $at, $f8
/* 6BCD0 800B14D0 46000100 */  add.s      $f4, $f0, $f0
/* 6BCD4 800B14D4 3C014248 */  lui        $at, (0x42480000 >> 16)
/* 6BCD8 800B14D8 4608A182 */  mul.s      $f6, $f20, $f8
/* 6BCDC 800B14DC 46123280 */  add.s      $f10, $f6, $f18
/* 6BCE0 800B14E0 46045200 */  add.s      $f8, $f10, $f4
/* 6BCE4 800B14E4 44812000 */  mtc1       $at, $f4
/* 6BCE8 800B14E8 460C4180 */  add.s      $f6, $f8, $f12
/* 6BCEC 800B14EC E4661C64 */  swc1       $f6, 0x1C64($v1)
/* 6BCF0 800B14F0 8C830000 */  lw         $v1, 0x0($a0)
/* 6BCF4 800B14F4 C5460000 */  lwc1       $f6, 0x0($t2)
/* 6BCF8 800B14F8 C46A1C64 */  lwc1       $f10, 0x1C64($v1)
/* 6BCFC 800B14FC E4661C68 */  swc1       $f6, 0x1C68($v1)
/* 6BD00 800B1500 8C830000 */  lw         $v1, 0x0($a0)
/* 6BD04 800B1504 46045203 */  div.s      $f8, $f10, $f4
/* 6BD08 800B1508 8C6F1C2C */  lw         $t7, 0x1C2C($v1)
/* 6BD0C 800B150C 46184082 */  mul.s      $f2, $f8, $f24
/* 6BD10 800B1510 51E00005 */  beql       $t7, $zero, .L800B1528
/* 6BD14 800B1514 AC601C44 */   sw        $zero, 0x1C44($v1)
/* 6BD18 800B1518 8C781C4C */  lw         $t8, 0x1C4C($v1)
/* 6BD1C 800B151C 57000006 */  bnel       $t8, $zero, .L800B1538
/* 6BD20 800B1520 8C791C34 */   lw        $t9, 0x1C34($v1)
/* 6BD24 800B1524 AC601C44 */  sw         $zero, 0x1C44($v1)
.L800B1528:
/* 6BD28 800B1528 46007086 */  mov.s      $f2, $f14
/* 6BD2C 800B152C 10000043 */  b          .L800B163C
/* 6BD30 800B1530 8C830000 */   lw        $v1, 0x0($a0)
/* 6BD34 800B1534 8C791C34 */  lw         $t9, 0x1C34($v1)
.L800B1538:
/* 6BD38 800B1538 3C01801D */  lui        $at, %hi(D_801D79CC)
/* 6BD3C 800B153C 53200021 */  beql       $t9, $zero, .L800B15C4
/* 6BD40 800B1540 44806000 */   mtc1      $zero, $f12
/* 6BD44 800B1544 C42079CC */  lwc1       $f0, %lo(D_801D79CC)($at)
/* 6BD48 800B1548 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 6BD4C 800B154C 44815000 */  mtc1       $at, $f10
/* 6BD50 800B1550 4600F03E */  c.le.s     $f30, $f0
/* 6BD54 800B1554 3C01801D */  lui        $at, %hi(D_801D79CC)
/* 6BD58 800B1558 45020004 */  bc1fl      .L800B156C
/* 6BD5C 800B155C 46000507 */   neg.s     $f20, $f0
/* 6BD60 800B1560 10000002 */  b          .L800B156C
/* 6BD64 800B1564 46000506 */   mov.s     $f20, $f0
/* 6BD68 800B1568 46000507 */  neg.s      $f20, $f0
.L800B156C:
/* 6BD6C 800B156C 4614503C */  c.lt.s     $f10, $f20
/* 6BD70 800B1570 00000000 */  nop
/* 6BD74 800B1574 45020013 */  bc1fl      .L800B15C4
/* 6BD78 800B1578 44806000 */   mtc1      $zero, $f12
/* 6BD7C 800B157C AC601C40 */  sw         $zero, 0x1C40($v1)
/* 6BD80 800B1580 C42479CC */  lwc1       $f4, %lo(D_801D79CC)($at)
/* 6BD84 800B1584 44804000 */  mtc1       $zero, $f8
/* 6BD88 800B1588 46021080 */  add.s      $f2, $f2, $f2
/* 6BD8C 800B158C 4608203C */  c.lt.s     $f4, $f8
/* 6BD90 800B1590 00000000 */  nop
/* 6BD94 800B1594 45020006 */  bc1fl      .L800B15B0
/* 6BD98 800B1598 8C8E0000 */   lw        $t6, 0x0($a0)
/* 6BD9C 800B159C 8C8D0000 */  lw         $t5, 0x0($a0)
/* 6BDA0 800B15A0 240B0004 */  addiu      $t3, $zero, 0x4
/* 6BDA4 800B15A4 10000004 */  b          .L800B15B8
/* 6BDA8 800B15A8 ADAB1C44 */   sw        $t3, 0x1C44($t5)
/* 6BDAC 800B15AC 8C8E0000 */  lw         $t6, 0x0($a0)
.L800B15B0:
/* 6BDB0 800B15B0 240C0002 */  addiu      $t4, $zero, 0x2
/* 6BDB4 800B15B4 ADCC1C44 */  sw         $t4, 0x1C44($t6)
.L800B15B8:
/* 6BDB8 800B15B8 10000020 */  b          .L800B163C
/* 6BDBC 800B15BC 8C830000 */   lw        $v1, 0x0($a0)
/* 6BDC0 800B15C0 44806000 */  mtc1       $zero, $f12
.L800B15C4:
/* 6BDC4 800B15C4 C4601C70 */  lwc1       $f0, 0x1C70($v1)
/* 6BDC8 800B15C8 3C01801D */  lui        $at, %hi(D_801D79CC)
/* 6BDCC 800B15CC 460C003C */  c.lt.s     $f0, $f12
/* 6BDD0 800B15D0 00000000 */  nop
/* 6BDD4 800B15D4 4502000B */  bc1fl      .L800B1604
/* 6BDD8 800B15D8 4600603C */   c.lt.s    $f12, $f0
/* 6BDDC 800B15DC C42679CC */  lwc1       $f6, %lo(D_801D79CC)($at)
/* 6BDE0 800B15E0 240F0002 */  addiu      $t7, $zero, 0x2
/* 6BDE4 800B15E4 4606603C */  c.lt.s     $f12, $f6
/* 6BDE8 800B15E8 00000000 */  nop
/* 6BDEC 800B15EC 45020005 */  bc1fl      .L800B1604
/* 6BDF0 800B15F0 4600603C */   c.lt.s    $f12, $f0
/* 6BDF4 800B15F4 AC6F1C40 */  sw         $t7, 0x1C40($v1)
/* 6BDF8 800B15F8 10000010 */  b          .L800B163C
/* 6BDFC 800B15FC 8C830000 */   lw        $v1, 0x0($a0)
/* 6BE00 800B1600 4600603C */  c.lt.s     $f12, $f0
.L800B1604:
/* 6BE04 800B1604 3C01801D */  lui        $at, %hi(D_801D79CC)
/* 6BE08 800B1608 4502000D */  bc1fl      .L800B1640
/* 6BE0C 800B160C 8C781C54 */   lw        $t8, 0x1C54($v1)
/* 6BE10 800B1610 C42A79CC */  lwc1       $f10, %lo(D_801D79CC)($at)
/* 6BE14 800B1614 3C01800F */  lui        $at, %hi(D_800EBBA4)
/* 6BE18 800B1618 460C503C */  c.lt.s     $f10, $f12
/* 6BE1C 800B161C 00000000 */  nop
/* 6BE20 800B1620 45020007 */  bc1fl      .L800B1640
/* 6BE24 800B1624 8C781C54 */   lw        $t8, 0x1C54($v1)
/* 6BE28 800B1628 C424BBA4 */  lwc1       $f4, %lo(D_800EBBA4)($at)
/* 6BE2C 800B162C AC601C40 */  sw         $zero, 0x1C40($v1)
/* 6BE30 800B1630 8C830000 */  lw         $v1, 0x0($a0)
/* 6BE34 800B1634 46041082 */  mul.s      $f2, $f2, $f4
/* 6BE38 800B1638 00000000 */  nop
.L800B163C:
/* 6BE3C 800B163C 8C781C54 */  lw         $t8, 0x1C54($v1)
.L800B1640:
/* 6BE40 800B1640 3C014180 */  lui        $at, (0x41800000 >> 16)
/* 6BE44 800B1644 4481D000 */  mtc1       $at, $f26
/* 6BE48 800B1648 1300001A */  beqz       $t8, .L800B16B4
/* 6BE4C 800B164C 00000000 */   nop
/* 6BE50 800B1650 8FB901A0 */  lw         $t9, 0x1A0($sp)
/* 6BE54 800B1654 3C01800F */  lui        $at, %hi(D_800EBBA8)
/* 6BE58 800B1658 3C0B801A */  lui        $t3, %hi(D_801982F0)
/* 6BE5C 800B165C C428BBA8 */  lwc1       $f8, %lo(D_800EBBA8)($at)
/* 6BE60 800B1660 8D6B82F0 */  lw         $t3, %lo(D_801982F0)($t3)
/* 6BE64 800B1664 00196880 */  sll        $t5, $t9, 2
/* 6BE68 800B1668 46081082 */  mul.s      $f2, $f2, $f8
/* 6BE6C 800B166C 032B082A */  slt        $at, $t9, $t3
/* 6BE70 800B1670 10200010 */  beqz       $at, .L800B16B4
/* 6BE74 800B1674 01B96823 */   subu      $t5, $t5, $t9
/* 6BE78 800B1678 000D68C0 */  sll        $t5, $t5, 3
/* 6BE7C 800B167C 01B96823 */  subu       $t5, $t5, $t9
/* 6BE80 800B1680 000D68C0 */  sll        $t5, $t5, 3
/* 6BE84 800B1684 01B96821 */  addu       $t5, $t5, $t9
/* 6BE88 800B1688 000D6880 */  sll        $t5, $t5, 2
/* 6BE8C 800B168C 01B96823 */  subu       $t5, $t5, $t9
/* 6BE90 800B1690 000D68C0 */  sll        $t5, $t5, 3
/* 6BE94 800B1694 3C0C8019 */  lui        $t4, %hi(D_801932F6)
/* 6BE98 800B1698 018D6021 */  addu       $t4, $t4, $t5
/* 6BE9C 800B169C 958C32F6 */  lhu        $t4, %lo(D_801932F6)($t4)
/* 6BEA0 800B16A0 240E0001 */  addiu      $t6, $zero, 0x1
/* 6BEA4 800B16A4 11800003 */  beqz       $t4, .L800B16B4
/* 6BEA8 800B16A8 00000000 */   nop
/* 6BEAC 800B16AC AC6E1C44 */  sw         $t6, 0x1C44($v1)
/* 6BEB0 800B16B0 8C830000 */  lw         $v1, 0x0($a0)
.L800B16B4:
/* 6BEB4 800B16B4 3C01801D */  lui        $at, %hi(D_801D79CC)
/* 6BEB8 800B16B8 C42679CC */  lwc1       $f6, %lo(D_801D79CC)($at)
/* 6BEBC 800B16BC E4661C70 */  swc1       $f6, 0x1C70($v1)
/* 6BEC0 800B16C0 8C830000 */  lw         $v1, 0x0($a0)
/* 6BEC4 800B16C4 8C621C40 */  lw         $v0, 0x1C40($v1)
/* 6BEC8 800B16C8 10400006 */  beqz       $v0, .L800B16E4
/* 6BECC 800B16CC 3C013F00 */   lui       $at, (0x3F000000 >> 16)
/* 6BED0 800B16D0 44815000 */  mtc1       $at, $f10
/* 6BED4 800B16D4 244FFFFF */  addiu      $t7, $v0, -0x1
/* 6BED8 800B16D8 AC6F1C40 */  sw         $t7, 0x1C40($v1)
/* 6BEDC 800B16DC 460A1082 */  mul.s      $f2, $f2, $f10
/* 6BEE0 800B16E0 8C830000 */  lw         $v1, 0x0($a0)
.L800B16E4:
/* 6BEE4 800B16E4 1660000A */  bnez       $s3, .L800B1710
/* 6BEE8 800B16E8 C7B80140 */   lwc1      $f24, 0x140($sp)
/* 6BEEC 800B16EC 2A410002 */  slti       $at, $s2, 0x2
/* 6BEF0 800B16F0 10200007 */  beqz       $at, .L800B1710
/* 6BEF4 800B16F4 3C18800D */   lui       $t8, %hi(D_800D4B00)
/* 6BEF8 800B16F8 8F184B00 */  lw         $t8, %lo(D_800D4B00)($t8)
/* 6BEFC 800B16FC 330B0001 */  andi       $t3, $t8, 0x1
/* 6BF00 800B1700 11600003 */  beqz       $t3, .L800B1710
/* 6BF04 800B1704 00000000 */   nop
/* 6BF08 800B1708 1000000A */  b          .L800B1734
/* 6BF0C 800B170C 00008025 */   or        $s0, $zero, $zero
.L800B1710:
/* 6BF10 800B1710 12600007 */  beqz       $s3, .L800B1730
/* 6BF14 800B1714 3C19800D */   lui       $t9, %hi(D_800D4B00)
/* 6BF18 800B1718 8F394B00 */  lw         $t9, %lo(D_800D4B00)($t9)
/* 6BF1C 800B171C 332D0001 */  andi       $t5, $t9, 0x1
/* 6BF20 800B1720 51A00004 */  beql       $t5, $zero, .L800B1734
/* 6BF24 800B1724 24100001 */   addiu     $s0, $zero, 0x1
/* 6BF28 800B1728 10000002 */  b          .L800B1734
/* 6BF2C 800B172C 00008025 */   or        $s0, $zero, $zero
.L800B1730:
/* 6BF30 800B1730 24100001 */  addiu      $s0, $zero, 0x1
.L800B1734:
/* 6BF34 800B1734 8C6C1C34 */  lw         $t4, 0x1C34($v1)
/* 6BF38 800B1738 4618C002 */  mul.s      $f0, $f24, $f24
/* 6BF3C 800B173C 1580000A */  bnez       $t4, .L800B1768
/* 6BF40 800B1740 3C01801D */   lui       $at, %hi(D_801D79C0)
/* 6BF44 800B1744 C42479C0 */  lwc1       $f4, %lo(D_801D79C0)($at)
/* 6BF48 800B1748 3C01801D */  lui        $at, %hi(D_801D7A00)
/* 6BF4C 800B174C C4287A00 */  lwc1       $f8, %lo(D_801D7A00)($at)
/* 6BF50 800B1750 461A4181 */  sub.s      $f6, $f8, $f26
/* 6BF54 800B1754 4606203C */  c.lt.s     $f4, $f6
/* 6BF58 800B1758 00000000 */  nop
/* 6BF5C 800B175C 45020003 */  bc1fl      .L800B176C
/* 6BF60 800B1760 3C013F80 */   lui       $at, (0x3F800000 >> 16)
/* 6BF64 800B1764 00008025 */  or         $s0, $zero, $zero
.L800B1768:
/* 6BF68 800B1768 3C013F80 */  lui        $at, (0x3F800000 >> 16)
.L800B176C:
/* 6BF6C 800B176C 4481B000 */  mtc1       $at, $f22
/* 6BF70 800B1770 E7A20114 */  swc1       $f2, 0x114($sp)
/* 6BF74 800B1774 4616003C */  c.lt.s     $f0, $f22
/* 6BF78 800B1778 00000000 */  nop
/* 6BF7C 800B177C 45020006 */  bc1fl      .L800B1798
/* 6BF80 800B1780 44801000 */   mtc1      $zero, $f2
/* 6BF84 800B1784 0C031C04 */  jal        func_800C7010
/* 6BF88 800B1788 4600B301 */   sub.s     $f12, $f22, $f0
/* 6BF8C 800B178C 10000003 */  b          .L800B179C
/* 6BF90 800B1790 46000086 */   mov.s     $f2, $f0
/* 6BF94 800B1794 44801000 */  mtc1       $zero, $f2
.L800B1798:
/* 6BF98 800B1798 00000000 */  nop
.L800B179C:
/* 6BF9C 800B179C 3C01801D */  lui        $at, %hi(D_801D79E8)
/* 6BFA0 800B17A0 C43479E8 */  lwc1       $f20, %lo(D_801D79E8)($at)
/* 6BFA4 800B17A4 3C01801D */  lui        $at, %hi(D_801D79E0)
/* 6BFA8 800B17A8 C42E79E0 */  lwc1       $f14, %lo(D_801D79E0)($at)
/* 6BFAC 800B17AC 3C01801D */  lui        $at, %hi(D_801D79C8)
/* 6BFB0 800B17B0 C42A79C8 */  lwc1       $f10, %lo(D_801D79C8)($at)
/* 6BFB4 800B17B4 3C01801D */  lui        $at, %hi(D_801D79D0)
/* 6BFB8 800B17B8 C42479D0 */  lwc1       $f4, %lo(D_801D79D0)($at)
/* 6BFBC 800B17BC 460AA202 */  mul.s      $f8, $f20, $f10
/* 6BFC0 800B17C0 44805000 */  mtc1       $zero, $f10
/* 6BFC4 800B17C4 46047182 */  mul.s      $f6, $f14, $f4
/* 6BFC8 800B17C8 46064001 */  sub.s      $f0, $f8, $f6
/* 6BFCC 800B17CC 4600503E */  c.le.s     $f10, $f0
/* 6BFD0 800B17D0 00000000 */  nop
/* 6BFD4 800B17D4 45000007 */  bc1f       .L800B17F4
/* 6BFD8 800B17D8 3C013F00 */   lui       $at, (0x3F000000 >> 16)
/* 6BFDC 800B17DC 44812000 */  mtc1       $at, $f4
/* 6BFE0 800B17E0 44813000 */  mtc1       $at, $f6
/* 6BFE4 800B17E4 46041202 */  mul.s      $f8, $f2, $f4
/* 6BFE8 800B17E8 46064280 */  add.s      $f10, $f8, $f6
/* 6BFEC 800B17EC 10000007 */  b          .L800B180C
/* 6BFF0 800B17F0 E7AA012C */   swc1      $f10, 0x12C($sp)
.L800B17F4:
/* 6BFF4 800B17F4 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 6BFF8 800B17F8 44810000 */  mtc1       $at, $f0
/* 6BFFC 800B17FC 00000000 */  nop
/* 6C000 800B1800 46001102 */  mul.s      $f4, $f2, $f0
/* 6C004 800B1804 46040201 */  sub.s      $f8, $f0, $f4
/* 6C008 800B1808 E7A8012C */  swc1       $f8, 0x12C($sp)
.L800B180C:
/* 6C00C 800B180C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 6C010 800B1810 C7B2012C */  lwc1       $f18, 0x12C($sp)
/* 6C014 800B1814 44813000 */  mtc1       $at, $f6
/* 6C018 800B1818 C7AC0114 */  lwc1       $f12, 0x114($sp)
/* 6C01C 800B181C 3C01800F */  lui        $at, %hi(D_800EBBAC)
/* 6C020 800B1820 46123401 */  sub.s      $f16, $f6, $f18
/* 6C024 800B1824 46126002 */  mul.s      $f0, $f12, $f18
/* 6C028 800B1828 C42ABBAC */  lwc1       $f10, %lo(D_800EBBAC)($at)
/* 6C02C 800B182C 46106082 */  mul.s      $f2, $f12, $f16
/* 6C030 800B1830 E7B000AC */  swc1       $f16, 0xAC($sp)
/* 6C034 800B1834 460C503C */  c.lt.s     $f10, $f12
/* 6C038 800B1838 46000580 */  add.s      $f22, $f0, $f0
/* 6C03C 800B183C 46021600 */  add.s      $f24, $f2, $f2
/* 6C040 800B1840 E7B60110 */  swc1       $f22, 0x110($sp)
/* 6C044 800B1844 45000199 */  bc1f       .L800B1EAC
/* 6C048 800B1848 E7B8010C */   swc1      $f24, 0x10C($sp)
/* 6C04C 800B184C 12000197 */  beqz       $s0, .L800B1EAC
/* 6C050 800B1850 00000000 */   nop
/* 6C054 800B1854 12400195 */  beqz       $s2, .L800B1EAC
/* 6C058 800B1858 8FAE01A0 */   lw        $t6, 0x1A0($sp)
/* 6C05C 800B185C 16600008 */  bnez       $s3, .L800B1880
/* 6C060 800B1860 3C0F800D */   lui       $t7, %hi(D_800D48DC)
/* 6C064 800B1864 24010003 */  addiu      $at, $zero, 0x3
/* 6C068 800B1868 16410003 */  bne        $s2, $at, .L800B1878
/* 6C06C 800B186C 00000000 */   nop
/* 6C070 800B1870 10000004 */  b          .L800B1884
/* 6C074 800B1874 24120006 */   addiu     $s2, $zero, 0x6
.L800B1878:
/* 6C078 800B1878 10000002 */  b          .L800B1884
/* 6C07C 800B187C 24120004 */   addiu     $s2, $zero, 0x4
.L800B1880:
/* 6C080 800B1880 24120004 */  addiu      $s2, $zero, 0x4
.L800B1884:
/* 6C084 800B1884 8DEF48DC */  lw         $t7, %lo(D_800D48DC)($t7)
/* 6C088 800B1888 3C18800E */  lui        $t8, %hi(D_800DAB28)
/* 6C08C 800B188C 51CF0009 */  beql       $t6, $t7, .L800B18B4
/* 6C090 800B1890 3C014080 */   lui       $at, (0x40800000 >> 16)
/* 6C094 800B1894 8F18AB28 */  lw         $t8, %lo(D_800DAB28)($t8)
/* 6C098 800B1898 24010002 */  addiu      $at, $zero, 0x2
/* 6C09C 800B189C 3C0B800D */  lui        $t3, %hi(D_800D48E0)
/* 6C0A0 800B18A0 1701003D */  bne        $t8, $at, .L800B1998
/* 6C0A4 800B18A4 00000000 */   nop
/* 6C0A8 800B18A8 8D6B48E0 */  lw         $t3, %lo(D_800D48E0)($t3)
/* 6C0AC 800B18AC 15CB003A */  bne        $t6, $t3, .L800B1998
/* 6C0B0 800B18B0 3C014080 */   lui       $at, (0x40800000 >> 16)
.L800B18B4:
/* 6C0B4 800B18B4 44810000 */  mtc1       $at, $f0
/* 6C0B8 800B18B8 3C03800E */  lui        $v1, %hi(D_800E6D60)
/* 6C0BC 800B18BC 8C636D60 */  lw         $v1, %lo(D_800E6D60)($v1)
/* 6C0C0 800B18C0 4616003C */  c.lt.s     $f0, $f22
/* 6C0C4 800B18C4 3C013E00 */  lui        $at, (0x3E000000 >> 16)
/* 6C0C8 800B18C8 3C19800E */  lui        $t9, %hi(D_800E6D60)
/* 6C0CC 800B18CC 45020012 */  bc1fl      .L800B1918
/* 6C0D0 800B18D0 AC601C5C */   sw        $zero, 0x1C5C($v1)
/* 6C0D4 800B18D4 44812000 */  mtc1       $at, $f4
/* 6C0D8 800B18D8 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
/* 6C0DC 800B18DC 44813000 */  mtc1       $at, $f6
/* 6C0E0 800B18E0 4604B202 */  mul.s      $f8, $f22, $f4
/* 6C0E4 800B18E4 3C0C800E */  lui        $t4, %hi(D_800E6D60)
/* 6C0E8 800B18E8 46064282 */  mul.s      $f10, $f8, $f6
/* 6C0EC 800B18EC 4600510D */  trunc.w.s  $f4, $f10
/* 6C0F0 800B18F0 44022000 */  mfc1       $v0, $f4
/* 6C0F4 800B18F4 00000000 */  nop
/* 6C0F8 800B18F8 28410080 */  slti       $at, $v0, 0x80
/* 6C0FC 800B18FC 14200006 */  bnez       $at, .L800B1918
/* 6C100 800B1900 AC621C5C */   sw        $v0, 0x1C5C($v1)
/* 6C104 800B1904 8D8C6D60 */  lw         $t4, %lo(D_800E6D60)($t4)
/* 6C108 800B1908 240D007F */  addiu      $t5, $zero, 0x7F
/* 6C10C 800B190C 10000002 */  b          .L800B1918
/* 6C110 800B1910 AD8D1C5C */   sw        $t5, 0x1C5C($t4)
/* 6C114 800B1914 AC601C5C */  sw         $zero, 0x1C5C($v1)
.L800B1918:
/* 6C118 800B1918 4618003C */  c.lt.s     $f0, $f24
/* 6C11C 800B191C 3C013E00 */  lui        $at, (0x3E000000 >> 16)
/* 6C120 800B1920 45000017 */  bc1f       .L800B1980
/* 6C124 800B1924 00000000 */   nop
/* 6C128 800B1928 44814000 */  mtc1       $at, $f8
/* 6C12C 800B192C 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
/* 6C130 800B1930 44815000 */  mtc1       $at, $f10
/* 6C134 800B1934 4608C182 */  mul.s      $f6, $f24, $f8
/* 6C138 800B1938 3C18800E */  lui        $t8, %hi(D_800E6D60)
/* 6C13C 800B193C 8F186D60 */  lw         $t8, %lo(D_800E6D60)($t8)
/* 6C140 800B1940 3C0B800E */  lui        $t3, %hi(D_800E6D60)
/* 6C144 800B1944 460A3102 */  mul.s      $f4, $f6, $f10
/* 6C148 800B1948 4600220D */  trunc.w.s  $f8, $f4
/* 6C14C 800B194C 44024000 */  mfc1       $v0, $f8
/* 6C150 800B1950 00000000 */  nop
/* 6C154 800B1954 28410080 */  slti       $at, $v0, 0x80
/* 6C158 800B1958 14200004 */  bnez       $at, .L800B196C
/* 6C15C 800B195C AF021C60 */   sw        $v0, 0x1C60($t8)
/* 6C160 800B1960 8D6B6D60 */  lw         $t3, %lo(D_800E6D60)($t3)
/* 6C164 800B1964 240E007F */  addiu      $t6, $zero, 0x7F
/* 6C168 800B1968 AD6E1C60 */  sw         $t6, 0x1C60($t3)
.L800B196C:
/* 6C16C 800B196C 3C01801D */  lui        $at, %hi(D_801D79E0)
/* 6C170 800B1970 C42E79E0 */  lwc1       $f14, %lo(D_801D79E0)($at)
/* 6C174 800B1974 3C01801D */  lui        $at, %hi(D_801D79E8)
/* 6C178 800B1978 10000007 */  b          .L800B1998
/* 6C17C 800B197C C43479E8 */   lwc1      $f20, %lo(D_801D79E8)($at)
.L800B1980:
/* 6C180 800B1980 8F396D60 */  lw         $t9, %lo(D_800E6D60)($t9)
/* 6C184 800B1984 3C01801D */  lui        $at, %hi(D_801D79E0)
/* 6C188 800B1988 AF201C60 */  sw         $zero, 0x1C60($t9)
/* 6C18C 800B198C C42E79E0 */  lwc1       $f14, %lo(D_801D79E0)($at)
/* 6C190 800B1990 3C01801D */  lui        $at, %hi(D_801D79E8)
/* 6C194 800B1994 C43479E8 */  lwc1       $f20, %lo(D_801D79E8)($at)
.L800B1998:
/* 6C198 800B1998 0C07B455 */  jal        func_801ED154
/* 6C19C 800B199C 4600A306 */   mov.s     $f12, $f20
/* 6C1A0 800B19A0 2A410003 */  slti       $at, $s2, 0x3
/* 6C1A4 800B19A4 14200007 */  bnez       $at, .L800B19C4
/* 6C1A8 800B19A8 264DFFFE */   addiu     $t5, $s2, -0x2
/* 6C1AC 800B19AC 3C0142B4 */  lui        $at, (0x42B40000 >> 16)
/* 6C1B0 800B19B0 44811000 */  mtc1       $at, $f2
/* 6C1B4 800B19B4 00000000 */  nop
/* 6C1B8 800B19B8 46020181 */  sub.s      $f6, $f0, $f2
/* 6C1BC 800B19BC 10000007 */  b          .L800B19DC
/* 6C1C0 800B19C0 E7A60104 */   swc1      $f6, 0x104($sp)
.L800B19C4:
/* 6C1C4 800B19C4 3C014287 */  lui        $at, (0x42870000 >> 16)
/* 6C1C8 800B19C8 44815000 */  mtc1       $at, $f10
/* 6C1CC 800B19CC 3C0142B4 */  lui        $at, (0x42B40000 >> 16)
/* 6C1D0 800B19D0 44811000 */  mtc1       $at, $f2
/* 6C1D4 800B19D4 460A0101 */  sub.s      $f4, $f0, $f10
/* 6C1D8 800B19D8 E7A40104 */  swc1       $f4, 0x104($sp)
.L800B19DC:
/* 6C1DC 800B19DC 2A410003 */  slti       $at, $s2, 0x3
/* 6C1E0 800B19E0 54200008 */  bnel       $at, $zero, .L800B1A04
/* 6C1E4 800B19E4 E7A20100 */   swc1      $f2, 0x100($sp)
/* 6C1E8 800B19E8 448D4000 */  mtc1       $t5, $f8
/* 6C1EC 800B19EC 00000000 */  nop
/* 6C1F0 800B19F0 468041A0 */  cvt.s.w    $f6, $f8
/* 6C1F4 800B19F4 46061283 */  div.s      $f10, $f2, $f6
/* 6C1F8 800B19F8 10000002 */  b          .L800B1A04
/* 6C1FC 800B19FC E7AA0100 */   swc1      $f10, 0x100($sp)
/* 6C200 800B1A00 E7A20100 */  swc1       $f2, 0x100($sp)
.L800B1A04:
/* 6C204 800B1A04 3C014200 */  lui        $at, (0x42000000 >> 16)
/* 6C208 800B1A08 44816000 */  mtc1       $at, $f12
/* 6C20C 800B1A0C 0C07B4CE */  jal        func_801ED338
/* 6C210 800B1A10 00000000 */   nop
/* 6C214 800B1A14 3C014180 */  lui        $at, (0x41800000 >> 16)
/* 6C218 800B1A18 44814000 */  mtc1       $at, $f8
/* 6C21C 800B1A1C C7A40104 */  lwc1       $f4, 0x104($sp)
/* 6C220 800B1A20 3C0C800E */  lui        $t4, %hi(D_800E6D68)
/* 6C224 800B1A24 46080181 */  sub.s      $f6, $f0, $f8
/* 6C228 800B1A28 8D8C6D68 */  lw         $t4, %lo(D_800E6D68)($t4)
/* 6C22C 800B1A2C C7A80110 */  lwc1       $f8, 0x110($sp)
/* 6C230 800B1A30 00009825 */  or         $s3, $zero, $zero
/* 6C234 800B1A34 46062280 */  add.s      $f10, $f4, $f6
/* 6C238 800B1A38 258F0FC0 */  addiu      $t7, $t4, 0xFC0
/* 6C23C 800B1A3C AE2F0000 */  sw         $t7, 0x0($s1)
/* 6C240 800B1A40 2415003F */  addiu      $s5, $zero, 0x3F
/* 6C244 800B1A44 E7AA0104 */  swc1       $f10, 0x104($sp)
/* 6C248 800B1A48 E7A80114 */  swc1       $f8, 0x114($sp)
.L800B1A4C:
/* 6C24C 800B1A4C 8E220000 */  lw         $v0, 0x0($s1)
/* 6C250 800B1A50 C7A00114 */  lwc1       $f0, 0x114($sp)
/* 6C254 800B1A54 240E0001 */  addiu      $t6, $zero, 0x1
/* 6C258 800B1A58 8C580038 */  lw         $t8, 0x38($v0)
/* 6C25C 800B1A5C 57000110 */  bnel       $t8, $zero, .L800B1EA0
/* 6C260 800B1A60 26B5FFFF */   addiu     $s5, $s5, -0x1
/* 6C264 800B1A64 AC4E0038 */  sw         $t6, 0x38($v0)
/* 6C268 800B1A68 8E2B0000 */  lw         $t3, 0x0($s1)
/* 6C26C 800B1A6C AD60003C */  sw         $zero, 0x3C($t3)
/* 6C270 800B1A70 06410003 */  bgez       $s2, .L800B1A80
/* 6C274 800B1A74 00128043 */   sra       $s0, $s2, 1
/* 6C278 800B1A78 26410001 */  addiu      $at, $s2, 0x1
/* 6C27C 800B1A7C 00018043 */  sra        $s0, $at, 1
.L800B1A80:
/* 6C280 800B1A80 3C01800F */  lui        $at, %hi(D_800EBBB0)
/* 6C284 800B1A84 C424BBB0 */  lwc1       $f4, %lo(D_800EBBB0)($at)
/* 6C288 800B1A88 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 6C28C 800B1A8C 44815000 */  mtc1       $at, $f10
/* 6C290 800B1A90 C7A80134 */  lwc1       $f8, 0x134($sp)
/* 6C294 800B1A94 2619FFFF */  addiu      $t9, $s0, -0x1
/* 6C298 800B1A98 44993000 */  mtc1       $t9, $f6
/* 6C29C 800B1A9C 46085081 */  sub.s      $f2, $f10, $f8
/* 6C2A0 800B1AA0 46040702 */  mul.s      $f28, $f0, $f4
/* 6C2A4 800B1AA4 3C014180 */  lui        $at, (0x41800000 >> 16)
/* 6C2A8 800B1AA8 44812000 */  mtc1       $at, $f4
/* 6C2AC 800B1AAC 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 6C2B0 800B1AB0 44815000 */  mtc1       $at, $f10
/* 6C2B4 800B1AB4 3C01800F */  lui        $at, %hi(D_800EBBB4)
/* 6C2B8 800B1AB8 46803420 */  cvt.s.w    $f16, $f6
/* 6C2BC 800B1ABC 46041182 */  mul.s      $f6, $f2, $f4
/* 6C2C0 800B1AC0 C428BBB4 */  lwc1       $f8, %lo(D_800EBBB4)($at)
/* 6C2C4 800B1AC4 3C01800F */  lui        $at, %hi(D_800EBBB8)
/* 6C2C8 800B1AC8 02136823 */  subu       $t5, $s0, $s3
/* 6C2CC 800B1ACC 25ACFFFF */  addiu      $t4, $t5, -0x1
/* 6C2D0 800B1AD0 02707823 */  subu       $t7, $s3, $s0
/* 6C2D4 800B1AD4 46080103 */  div.s      $f4, $f0, $f8
/* 6C2D8 800B1AD8 3C0B800E */  lui        $t3, %hi(D_800E6D60)
/* 6C2DC 800B1ADC 460A3782 */  mul.s      $f30, $f6, $f10
/* 6C2E0 800B1AE0 C426BBB8 */  lwc1       $f6, %lo(D_800EBBB8)($at)
/* 6C2E4 800B1AE4 3C013FC0 */  lui        $at, (0x3FC00000 >> 16)
/* 6C2E8 800B1AE8 44815000 */  mtc1       $at, $f10
/* 6C2EC 800B1AEC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 6C2F0 800B1AF0 460A0203 */  div.s      $f8, $f0, $f10
/* 6C2F4 800B1AF4 46062602 */  mul.s      $f24, $f4, $f6
/* 6C2F8 800B1AF8 C7A60138 */  lwc1       $f6, 0x138($sp)
/* 6C2FC 800B1AFC 44812000 */  mtc1       $at, $f4
/* 6C300 800B1B00 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 6C304 800B1B04 E7B800E8 */  swc1       $f24, 0xE8($sp)
/* 6C308 800B1B08 46062281 */  sub.s      $f10, $f4, $f6
/* 6C30C 800B1B0C E7A80098 */  swc1       $f8, 0x98($sp)
/* 6C310 800B1B10 44812000 */  mtc1       $at, $f4
/* 6C314 800B1B14 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 6C318 800B1B18 46005202 */  mul.s      $f8, $f10, $f0
/* 6C31C 800B1B1C 44815000 */  mtc1       $at, $f10
/* 6C320 800B1B20 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 6C324 800B1B24 46044182 */  mul.s      $f6, $f8, $f4
/* 6C328 800B1B28 44812000 */  mtc1       $at, $f4
/* 6C32C 800B1B2C 3C01C0C0 */  lui        $at, (0xC0C00000 >> 16)
/* 6C330 800B1B30 460A1202 */  mul.s      $f8, $f2, $f10
/* 6C334 800B1B34 44815000 */  mtc1       $at, $f10
/* 6C338 800B1B38 0270082A */  slt        $at, $s3, $s0
/* 6C33C 800B1B3C E7A60094 */  swc1       $f6, 0x94($sp)
/* 6C340 800B1B40 46044182 */  mul.s      $f6, $f8, $f4
/* 6C344 800B1B44 460A3680 */  add.s      $f26, $f6, $f10
/* 6C348 800B1B48 C7AA00AC */  lwc1       $f10, 0xAC($sp)
/* 6C34C 800B1B4C C7A6012C */  lwc1       $f6, 0x12C($sp)
/* 6C350 800B1B50 10200004 */  beqz       $at, .L800B1B64
/* 6C354 800B1B54 4600D506 */   mov.s     $f20, $f26
/* 6C358 800B1B58 448C4000 */  mtc1       $t4, $f8
/* 6C35C 800B1B5C 10000004 */  b          .L800B1B70
/* 6C360 800B1B60 468040A0 */   cvt.s.w   $f2, $f8
.L800B1B64:
/* 6C364 800B1B64 448F2000 */  mtc1       $t7, $f4
/* 6C368 800B1B68 00000000 */  nop
/* 6C36C 800B1B6C 468020A0 */  cvt.s.w    $f2, $f4
.L800B1B70:
/* 6C370 800B1B70 460A303C */  c.lt.s     $f6, $f10
/* 6C374 800B1B74 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 6C378 800B1B78 46101303 */  div.s      $f12, $f2, $f16
/* 6C37C 800B1B7C 4481B000 */  mtc1       $at, $f22
/* 6C380 800B1B80 45000003 */  bc1f       .L800B1B90
/* 6C384 800B1B84 C7B000AC */   lwc1      $f16, 0xAC($sp)
/* 6C388 800B1B88 10000001 */  b          .L800B1B90
/* 6C38C 800B1B8C 46003406 */   mov.s     $f16, $f6
.L800B1B90:
/* 6C390 800B1B90 46166201 */  sub.s      $f8, $f12, $f22
/* 6C394 800B1B94 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 6C398 800B1B98 44815000 */  mtc1       $at, $f10
/* 6C39C 800B1B9C 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 6C3A0 800B1BA0 46104002 */  mul.s      $f0, $f8, $f16
/* 6C3A4 800B1BA4 C7A80114 */  lwc1       $f8, 0x114($sp)
/* 6C3A8 800B1BA8 8E380000 */  lw         $t8, 0x0($s1)
/* 6C3AC 800B1BAC 46000100 */  add.s      $f4, $f0, $f0
/* 6C3B0 800B1BB0 46162380 */  add.s      $f14, $f4, $f22
/* 6C3B4 800B1BB4 460A7180 */  add.s      $f6, $f14, $f10
/* 6C3B8 800B1BB8 44815000 */  mtc1       $at, $f10
/* 6C3BC 800B1BBC 3C014200 */  lui        $at, (0x42000000 >> 16)
/* 6C3C0 800B1BC0 46083102 */  mul.s      $f4, $f6, $f8
/* 6C3C4 800B1BC4 44814000 */  mtc1       $at, $f8
/* 6C3C8 800B1BC8 3C014180 */  lui        $at, (0x41800000 >> 16)
/* 6C3CC 800B1BCC 460A2180 */  add.s      $f6, $f4, $f10
/* 6C3D0 800B1BD0 44812000 */  mtc1       $at, $f4
/* 6C3D4 800B1BD4 0270082A */  slt        $at, $s3, $s0
/* 6C3D8 800B1BD8 46047282 */  mul.s      $f10, $f14, $f4
/* 6C3DC 800B1BDC E7060030 */  swc1       $f6, 0x30($t8)
/* 6C3E0 800B1BE0 8E2E0000 */  lw         $t6, 0x0($s1)
/* 6C3E4 800B1BE4 E5DC0034 */  swc1       $f28, 0x34($t6)
/* 6C3E8 800B1BE8 C7A40098 */  lwc1       $f4, 0x98($sp)
/* 6C3EC 800B1BEC 460A4181 */  sub.s      $f6, $f8, $f10
/* 6C3F0 800B1BF0 460E2202 */  mul.s      $f8, $f4, $f14
/* 6C3F4 800B1BF4 461E3081 */  sub.s      $f2, $f6, $f30
/* 6C3F8 800B1BF8 10200005 */  beqz       $at, .L800B1C10
/* 6C3FC 800B1BFC 46001486 */   mov.s     $f18, $f2
/* 6C400 800B1C00 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 6C404 800B1C04 4481B000 */  mtc1       $at, $f22
/* 6C408 800B1C08 10000005 */  b          .L800B1C20
/* 6C40C 800B1C0C 3C014100 */   lui       $at, (0x41000000 >> 16)
.L800B1C10:
/* 6C410 800B1C10 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 6C414 800B1C14 4481B000 */  mtc1       $at, $f22
/* 6C418 800B1C18 00000000 */  nop
/* 6C41C 800B1C1C 3C014100 */  lui        $at, (0x41000000 >> 16)
.L800B1C20:
/* 6C420 800B1C20 44815000 */  mtc1       $at, $f10
/* 6C424 800B1C24 C7A40094 */  lwc1       $f4, 0x94($sp)
/* 6C428 800B1C28 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 6C42C 800B1C2C 460A4180 */  add.s      $f6, $f8, $f10
/* 6C430 800B1C30 C7AA0134 */  lwc1       $f10, 0x134($sp)
/* 6C434 800B1C34 C7A80140 */  lwc1       $f8, 0x140($sp)
/* 6C438 800B1C38 46043000 */  add.s      $f0, $f6, $f4
/* 6C43C 800B1C3C 460A4032 */  c.eq.s     $f8, $f10
/* 6C440 800B1C40 46000706 */  mov.s      $f28, $f0
/* 6C444 800B1C44 45010004 */  bc1t       .L800B1C58
/* 6C448 800B1C48 00000000 */   nop
/* 6C44C 800B1C4C 44813000 */  mtc1       $at, $f6
/* 6C450 800B1C50 00000000 */  nop
/* 6C454 800B1C54 4606D500 */  add.s      $f20, $f26, $f6
.L800B1C58:
/* 6C458 800B1C58 8D6B6D60 */  lw         $t3, %lo(D_800E6D60)($t3)
/* 6C45C 800B1C5C 3C013D00 */  lui        $at, (0x3D000000 >> 16)
/* 6C460 800B1C60 8D791C54 */  lw         $t9, 0x1C54($t3)
/* 6C464 800B1C64 1320000A */  beqz       $t9, .L800B1C90
/* 6C468 800B1C68 00000000 */   nop
/* 6C46C 800B1C6C 44812000 */  mtc1       $at, $f4
/* 6C470 800B1C70 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
/* 6C474 800B1C74 44815000 */  mtc1       $at, $f10
/* 6C478 800B1C78 4604C202 */  mul.s      $f8, $f24, $f4
/* 6C47C 800B1C7C 3C014040 */  lui        $at, (0x40400000 >> 16)
/* 6C480 800B1C80 44813000 */  mtc1       $at, $f6
/* 6C484 800B1C84 460A0703 */  div.s      $f28, $f0, $f10
/* 6C488 800B1C88 E7A800E8 */  swc1       $f8, 0xE8($sp)
/* 6C48C 800B1C8C 4606A503 */  div.s      $f20, $f20, $f6
.L800B1C90:
/* 6C490 800B1C90 52C0000E */  beql       $s6, $zero, .L800B1CCC
/* 6C494 800B1C94 3C0140C0 */   lui       $at, (0x40C00000 >> 16)
/* 6C498 800B1C98 8E220000 */  lw         $v0, 0x0($s1)
/* 6C49C 800B1C9C 3C014160 */  lui        $at, (0x41600000 >> 16)
/* 6C4A0 800B1CA0 44814000 */  mtc1       $at, $f8
/* 6C4A4 800B1CA4 C4440030 */  lwc1       $f4, 0x30($v0)
/* 6C4A8 800B1CA8 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 6C4AC 800B1CAC 46082280 */  add.s      $f10, $f4, $f8
/* 6C4B0 800B1CB0 44812000 */  mtc1       $at, $f4
/* 6C4B4 800B1CB4 E44A0030 */  swc1       $f10, 0x30($v0)
/* 6C4B8 800B1CB8 8E2D0000 */  lw         $t5, 0x0($s1)
/* 6C4BC 800B1CBC C7A60114 */  lwc1       $f6, 0x114($sp)
/* 6C4C0 800B1CC0 46041481 */  sub.s      $f18, $f2, $f4
/* 6C4C4 800B1CC4 E5A60034 */  swc1       $f6, 0x34($t5)
/* 6C4C8 800B1CC8 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
.L800B1CCC:
/* 6C4CC 800B1CCC 44810000 */  mtc1       $at, $f0
/* 6C4D0 800B1CD0 8E2C0000 */  lw         $t4, 0x0($s1)
/* 6C4D4 800B1CD4 3C03801D */  lui        $v1, %hi(D_801D79EC)
/* 6C4D8 800B1CD8 46007202 */  mul.s      $f8, $f14, $f0
/* 6C4DC 800B1CDC 246379EC */  addiu      $v1, $v1, %lo(D_801D79EC)
/* 6C4E0 800B1CE0 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 6C4E4 800B1CE4 44811000 */  mtc1       $at, $f2
/* 6C4E8 800B1CE8 3C01801D */  lui        $at, %hi(D_801D79BC)
/* 6C4EC 800B1CEC 3C05801D */  lui        $a1, %hi(D_801D79E0)
/* 6C4F0 800B1CF0 24A579E0 */  addiu      $a1, $a1, %lo(D_801D79E0)
/* 6C4F4 800B1CF4 46004280 */  add.s      $f10, $f8, $f0
/* 6C4F8 800B1CF8 3C04801D */  lui        $a0, %hi(D_801D79F4)
/* 6C4FC 800B1CFC 248479F4 */  addiu      $a0, $a0, %lo(D_801D79F4)
/* 6C500 800B1D00 3C06801D */  lui        $a2, %hi(D_801D79E8)
/* 6C504 800B1D04 46165182 */  mul.s      $f6, $f10, $f22
/* 6C508 800B1D08 24C679E8 */  addiu      $a2, $a2, %lo(D_801D79E8)
/* 6C50C 800B1D0C E5860018 */  swc1       $f6, 0x18($t4)
/* 6C510 800B1D10 8E2F0000 */  lw         $t7, 0x0($s1)
/* 6C514 800B1D14 E5F20020 */  swc1       $f18, 0x20($t7)
/* 6C518 800B1D18 8E220000 */  lw         $v0, 0x0($s1)
/* 6C51C 800B1D1C C4680000 */  lwc1       $f8, 0x0($v1)
/* 6C520 800B1D20 C42679BC */  lwc1       $f6, %lo(D_801D79BC)($at)
/* 6C524 800B1D24 C4440018 */  lwc1       $f4, 0x18($v0)
/* 6C528 800B1D28 3C01801D */  lui        $at, %hi(D_801D79C4)
/* 6C52C 800B1D2C 46082282 */  mul.s      $f10, $f4, $f8
/* 6C530 800B1D30 C4480020 */  lwc1       $f8, 0x20($v0)
/* 6C534 800B1D34 46065100 */  add.s      $f4, $f10, $f6
/* 6C538 800B1D38 C4AA0000 */  lwc1       $f10, 0x0($a1)
/* 6C53C 800B1D3C 460A4182 */  mul.s      $f6, $f8, $f10
/* 6C540 800B1D40 46062200 */  add.s      $f8, $f4, $f6
/* 6C544 800B1D44 E4480000 */  swc1       $f8, 0x0($v0)
/* 6C548 800B1D48 8E220000 */  lw         $v0, 0x0($s1)
/* 6C54C 800B1D4C C4840000 */  lwc1       $f4, 0x0($a0)
/* 6C550 800B1D50 C42879C4 */  lwc1       $f8, %lo(D_801D79C4)($at)
/* 6C554 800B1D54 C44A0018 */  lwc1       $f10, 0x18($v0)
/* 6C558 800B1D58 3C01801D */  lui        $at, %hi(D_801D79C0)
/* 6C55C 800B1D5C 46045182 */  mul.s      $f6, $f10, $f4
/* 6C560 800B1D60 C4440020 */  lwc1       $f4, 0x20($v0)
/* 6C564 800B1D64 46083280 */  add.s      $f10, $f6, $f8
/* 6C568 800B1D68 C4C60000 */  lwc1       $f6, 0x0($a2)
/* 6C56C 800B1D6C 46062202 */  mul.s      $f8, $f4, $f6
/* 6C570 800B1D70 46085100 */  add.s      $f4, $f10, $f8
/* 6C574 800B1D74 E4440008 */  swc1       $f4, 0x8($v0)
/* 6C578 800B1D78 C42679C0 */  lwc1       $f6, %lo(D_801D79C0)($at)
/* 6C57C 800B1D7C 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 6C580 800B1D80 44815000 */  mtc1       $at, $f10
/* 6C584 800B1D84 C7A40114 */  lwc1       $f4, 0x114($sp)
/* 6C588 800B1D88 8E380000 */  lw         $t8, 0x0($s1)
/* 6C58C 800B1D8C 460A3200 */  add.s      $f8, $f6, $f10
/* 6C590 800B1D90 3C01800F */  lui        $at, %hi(D_800EBBBC)
/* 6C594 800B1D94 46044181 */  sub.s      $f6, $f8, $f4
/* 6C598 800B1D98 E7060004 */  swc1       $f6, 0x4($t8)
/* 6C59C 800B1D9C C7AA00E8 */  lwc1       $f10, 0xE8($sp)
/* 6C5A0 800B1DA0 8E2E0000 */  lw         $t6, 0x0($s1)
/* 6C5A4 800B1DA4 46165202 */  mul.s      $f8, $f10, $f22
/* 6C5A8 800B1DA8 E5C80024 */  swc1       $f8, 0x24($t6)
/* 6C5AC 800B1DAC C424BBBC */  lwc1       $f4, %lo(D_800EBBBC)($at)
/* 6C5B0 800B1DB0 8E2B0000 */  lw         $t3, 0x0($s1)
/* 6C5B4 800B1DB4 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 6C5B8 800B1DB8 4604A182 */  mul.s      $f6, $f20, $f4
/* 6C5BC 800B1DBC 44816000 */  mtc1       $at, $f12
/* 6C5C0 800B1DC0 E566002C */  swc1       $f6, 0x2C($t3)
/* 6C5C4 800B1DC4 8E220000 */  lw         $v0, 0x0($s1)
/* 6C5C8 800B1DC8 C4680000 */  lwc1       $f8, 0x0($v1)
/* 6C5CC 800B1DCC C44A0024 */  lwc1       $f10, 0x24($v0)
/* 6C5D0 800B1DD0 C446002C */  lwc1       $f6, 0x2C($v0)
/* 6C5D4 800B1DD4 46085102 */  mul.s      $f4, $f10, $f8
/* 6C5D8 800B1DD8 C4A80000 */  lwc1       $f8, 0x0($a1)
/* 6C5DC 800B1DDC 46023282 */  mul.s      $f10, $f6, $f2
/* 6C5E0 800B1DE0 00000000 */  nop
/* 6C5E4 800B1DE4 46085182 */  mul.s      $f6, $f10, $f8
/* 6C5E8 800B1DE8 46062280 */  add.s      $f10, $f4, $f6
/* 6C5EC 800B1DEC E44A000C */  swc1       $f10, 0xC($v0)
/* 6C5F0 800B1DF0 8E220000 */  lw         $v0, 0x0($s1)
/* 6C5F4 800B1DF4 C4840000 */  lwc1       $f4, 0x0($a0)
/* 6C5F8 800B1DF8 C4480024 */  lwc1       $f8, 0x24($v0)
/* 6C5FC 800B1DFC C44A002C */  lwc1       $f10, 0x2C($v0)
/* 6C600 800B1E00 46044182 */  mul.s      $f6, $f8, $f4
/* 6C604 800B1E04 C4C40000 */  lwc1       $f4, 0x0($a2)
/* 6C608 800B1E08 46025202 */  mul.s      $f8, $f10, $f2
/* 6C60C 800B1E0C 00000000 */  nop
/* 6C610 800B1E10 46044282 */  mul.s      $f10, $f8, $f4
/* 6C614 800B1E14 460A3200 */  add.s      $f8, $f6, $f10
/* 6C618 800B1E18 0C07B4CE */  jal        func_801ED338
/* 6C61C 800B1E1C E4480014 */   swc1      $f8, 0x14($v0)
/* 6C620 800B1E20 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 6C624 800B1E24 44812000 */  mtc1       $at, $f4
/* 6C628 800B1E28 8E390000 */  lw         $t9, 0x0($s1)
/* 6C62C 800B1E2C 26730001 */  addiu      $s3, $s3, 0x1
/* 6C630 800B1E30 46040180 */  add.s      $f6, $f0, $f4
/* 6C634 800B1E34 0272082A */  slt        $at, $s3, $s2
/* 6C638 800B1E38 461C3282 */  mul.s      $f10, $f6, $f28
/* 6C63C 800B1E3C 1020001B */  beqz       $at, .L800B1EAC
/* 6C640 800B1E40 E72A0010 */   swc1      $f10, 0x10($t9)
/* 6C644 800B1E44 16700011 */  bne        $s3, $s0, .L800B1E8C
/* 6C648 800B1E48 C7AA0104 */   lwc1      $f10, 0x104($sp)
/* 6C64C 800B1E4C 3C0142B4 */  lui        $at, (0x42B40000 >> 16)
/* 6C650 800B1E50 44812000 */  mtc1       $at, $f4
/* 6C654 800B1E54 C7A80104 */  lwc1       $f8, 0x104($sp)
/* 6C658 800B1E58 C7AA010C */  lwc1       $f10, 0x10C($sp)
/* 6C65C 800B1E5C 24010002 */  addiu      $at, $zero, 0x2
/* 6C660 800B1E60 46044180 */  add.s      $f6, $f8, $f4
/* 6C664 800B1E64 E7AA0114 */  swc1       $f10, 0x114($sp)
/* 6C668 800B1E68 16410006 */  bne        $s2, $at, .L800B1E84
/* 6C66C 800B1E6C E7A60104 */   swc1      $f6, 0x104($sp)
/* 6C670 800B1E70 3C014234 */  lui        $at, (0x42340000 >> 16)
/* 6C674 800B1E74 44814000 */  mtc1       $at, $f8
/* 6C678 800B1E78 00000000 */  nop
/* 6C67C 800B1E7C 46083100 */  add.s      $f4, $f6, $f8
/* 6C680 800B1E80 E7A40104 */  swc1       $f4, 0x104($sp)
.L800B1E84:
/* 6C684 800B1E84 10000005 */  b          .L800B1E9C
/* 6C688 800B1E88 8E220000 */   lw        $v0, 0x0($s1)
.L800B1E8C:
/* 6C68C 800B1E8C C7A60100 */  lwc1       $f6, 0x100($sp)
/* 6C690 800B1E90 8E220000 */  lw         $v0, 0x0($s1)
/* 6C694 800B1E94 46065200 */  add.s      $f8, $f10, $f6
/* 6C698 800B1E98 E7A80104 */  swc1       $f8, 0x104($sp)
.L800B1E9C:
/* 6C69C 800B1E9C 26B5FFFF */  addiu      $s5, $s5, -0x1
.L800B1EA0:
/* 6C6A0 800B1EA0 244DFFC0 */  addiu      $t5, $v0, -0x40
/* 6C6A4 800B1EA4 06A1FEE9 */  bgez       $s5, .L800B1A4C
/* 6C6A8 800B1EA8 AE2D0000 */   sw        $t5, 0x0($s1)
.L800B1EAC:
/* 6C6AC 800B1EAC 3C0F800D */  lui        $t7, %hi(D_800D48DC)
/* 6C6B0 800B1EB0 8DEF48DC */  lw         $t7, %lo(D_800D48DC)($t7)
/* 6C6B4 800B1EB4 8FAC01A0 */  lw         $t4, 0x1A0($sp)
/* 6C6B8 800B1EB8 3C18800E */  lui        $t8, %hi(D_800DAB28)
/* 6C6BC 800B1EBC 158F010C */  bne        $t4, $t7, .L800B22F0
/* 6C6C0 800B1EC0 00000000 */   nop
/* 6C6C4 800B1EC4 8F18AB28 */  lw         $t8, %lo(D_800DAB28)($t8)
/* 6C6C8 800B1EC8 24010001 */  addiu      $at, $zero, 0x1
/* 6C6CC 800B1ECC 17010108 */  bne        $t8, $at, .L800B22F0
/* 6C6D0 800B1ED0 3C01801D */   lui       $at, %hi(D_801D79E8)
/* 6C6D4 800B1ED4 C42C79E8 */  lwc1       $f12, %lo(D_801D79E8)($at)
/* 6C6D8 800B1ED8 3C01801D */  lui        $at, %hi(D_801D79E0)
/* 6C6DC 800B1EDC 0C07B455 */  jal        func_801ED154
/* 6C6E0 800B1EE0 C42E79E0 */   lwc1      $f14, %lo(D_801D79E0)($at)
/* 6C6E4 800B1EE4 240E0007 */  addiu      $t6, $zero, 0x7
/* 6C6E8 800B1EE8 448E2000 */  mtc1       $t6, $f4
/* 6C6EC 800B1EEC 3C168015 */  lui        $s6, %hi(D_80154350)
/* 6C6F0 800B1EF0 E7A00108 */  swc1       $f0, 0x108($sp)
/* 6C6F4 800B1EF4 468022A0 */  cvt.s.w    $f10, $f4
/* 6C6F8 800B1EF8 26D64350 */  addiu      $s6, $s6, %lo(D_80154350)
/* 6C6FC 800B1EFC 0000B825 */  or         $s7, $zero, $zero
/* 6C700 800B1F00 E7AA009C */  swc1       $f10, 0x9C($sp)
.L800B1F04:
/* 6C704 800B1F04 16E0000E */  bnez       $s7, .L800B1F40
/* 6C708 800B1F08 C7AA010C */   lwc1      $f10, 0x10C($sp)
/* 6C70C 800B1F0C 3C0142B4 */  lui        $at, (0x42B40000 >> 16)
/* 6C710 800B1F10 C7A60110 */  lwc1       $f6, 0x110($sp)
/* 6C714 800B1F14 44812000 */  mtc1       $at, $f4
/* 6C718 800B1F18 C7A80108 */  lwc1       $f8, 0x108($sp)
/* 6C71C 800B1F1C 3C014234 */  lui        $at, (0x42340000 >> 16)
/* 6C720 800B1F20 E7A60114 */  swc1       $f6, 0x114($sp)
/* 6C724 800B1F24 46044281 */  sub.s      $f10, $f8, $f4
/* 6C728 800B1F28 C7A8009C */  lwc1       $f8, 0x9C($sp)
/* 6C72C 800B1F2C 44813000 */  mtc1       $at, $f6
/* 6C730 800B1F30 E7AA0104 */  swc1       $f10, 0x104($sp)
/* 6C734 800B1F34 46083103 */  div.s      $f4, $f6, $f8
/* 6C738 800B1F38 1000000C */  b          .L800B1F6C
/* 6C73C 800B1F3C E7A40100 */   swc1      $f4, 0x100($sp)
.L800B1F40:
/* 6C740 800B1F40 3C0142B4 */  lui        $at, (0x42B40000 >> 16)
/* 6C744 800B1F44 44814000 */  mtc1       $at, $f8
/* 6C748 800B1F48 C7A60108 */  lwc1       $f6, 0x108($sp)
/* 6C74C 800B1F4C E7AA0114 */  swc1       $f10, 0x114($sp)
/* 6C750 800B1F50 3C01C234 */  lui        $at, (0xC2340000 >> 16)
/* 6C754 800B1F54 46083100 */  add.s      $f4, $f6, $f8
/* 6C758 800B1F58 C7A6009C */  lwc1       $f6, 0x9C($sp)
/* 6C75C 800B1F5C 44815000 */  mtc1       $at, $f10
/* 6C760 800B1F60 E7A40104 */  swc1       $f4, 0x104($sp)
/* 6C764 800B1F64 46065203 */  div.s      $f8, $f10, $f6
/* 6C768 800B1F68 E7A80100 */  swc1       $f8, 0x100($sp)
.L800B1F6C:
/* 6C76C 800B1F6C 3C014040 */  lui        $at, (0x40400000 >> 16)
/* 6C770 800B1F70 44815000 */  mtc1       $at, $f10
/* 6C774 800B1F74 C7A40114 */  lwc1       $f4, 0x114($sp)
/* 6C778 800B1F78 3C01800F */  lui        $at, %hi(D_800EBBC0)
/* 6C77C 800B1F7C 00001025 */  or         $v0, $zero, $zero
/* 6C780 800B1F80 4604503E */  c.le.s     $f10, $f4
/* 6C784 800B1F84 C7A60138 */  lwc1       $f6, 0x138($sp)
/* 6C788 800B1F88 45000002 */  bc1f       .L800B1F94
/* 6C78C 800B1F8C 00000000 */   nop
/* 6C790 800B1F90 24020001 */  addiu      $v0, $zero, 0x1
.L800B1F94:
/* 6C794 800B1F94 1040000F */  beqz       $v0, .L800B1FD4
/* 6C798 800B1F98 00408025 */   or        $s0, $v0, $zero
/* 6C79C 800B1F9C C428BBC0 */  lwc1       $f8, %lo(D_800EBBC0)($at)
/* 6C7A0 800B1FA0 3C03800E */  lui        $v1, %hi(D_800E6D60)
/* 6C7A4 800B1FA4 8C636D60 */  lw         $v1, %lo(D_800E6D60)($v1)
/* 6C7A8 800B1FA8 4608303C */  c.lt.s     $f6, $f8
/* 6C7AC 800B1FAC 00000000 */  nop
/* 6C7B0 800B1FB0 45020006 */  bc1fl      .L800B1FCC
/* 6C7B4 800B1FB4 8C701C34 */   lw        $s0, 0x1C34($v1)
/* 6C7B8 800B1FB8 8C701C50 */  lw         $s0, 0x1C50($v1)
/* 6C7BC 800B1FBC 0010582B */  sltu       $t3, $zero, $s0
/* 6C7C0 800B1FC0 15600004 */  bnez       $t3, .L800B1FD4
/* 6C7C4 800B1FC4 01608025 */   or        $s0, $t3, $zero
/* 6C7C8 800B1FC8 8C701C34 */  lw         $s0, 0x1C34($v1)
.L800B1FCC:
/* 6C7CC 800B1FCC 0010C82B */  sltu       $t9, $zero, $s0
/* 6C7D0 800B1FD0 03208025 */  or         $s0, $t9, $zero
.L800B1FD4:
/* 6C7D4 800B1FD4 1200000A */  beqz       $s0, .L800B2000
/* 6C7D8 800B1FD8 3C03800E */   lui       $v1, %hi(D_800E6D60)
/* 6C7DC 800B1FDC 8C636D60 */  lw         $v1, %lo(D_800E6D60)($v1)
/* 6C7E0 800B1FE0 8C621C50 */  lw         $v0, 0x1C50($v1)
/* 6C7E4 800B1FE4 10400006 */  beqz       $v0, .L800B2000
/* 6C7E8 800B1FE8 00000000 */   nop
/* 6C7EC 800B1FEC 8C6D1C34 */  lw         $t5, 0x1C34($v1)
/* 6C7F0 800B1FF0 244CFFFF */  addiu      $t4, $v0, -0x1
/* 6C7F4 800B1FF4 15A00002 */  bnez       $t5, .L800B2000
/* 6C7F8 800B1FF8 00000000 */   nop
/* 6C7FC 800B1FFC AC6C1C50 */  sw         $t4, 0x1C50($v1)
.L800B2000:
/* 6C800 800B2000 1600000F */  bnez       $s0, .L800B2040
/* 6C804 800B2004 3C19800E */   lui       $t9, %hi(D_800E6D70)
/* 6C808 800B2008 3C03800E */  lui        $v1, %hi(D_800E6D60)
/* 6C80C 800B200C 8C636D60 */  lw         $v1, %lo(D_800E6D60)($v1)
/* 6C810 800B2010 240B0018 */  addiu      $t3, $zero, 0x18
/* 6C814 800B2014 8C6F1C50 */  lw         $t7, 0x1C50($v1)
/* 6C818 800B2018 25F80001 */  addiu      $t8, $t7, 0x1
/* 6C81C 800B201C AC781C50 */  sw         $t8, 0x1C50($v1)
/* 6C820 800B2020 3C03800E */  lui        $v1, %hi(D_800E6D60)
/* 6C824 800B2024 8C636D60 */  lw         $v1, %lo(D_800E6D60)($v1)
/* 6C828 800B2028 8C6E1C50 */  lw         $t6, 0x1C50($v1)
/* 6C82C 800B202C 29C10019 */  slti       $at, $t6, 0x19
/* 6C830 800B2030 542000AC */  bnel       $at, $zero, .L800B22E4
/* 6C834 800B2034 26F70001 */   addiu     $s7, $s7, 0x1
/* 6C838 800B2038 100000A9 */  b          .L800B22E0
/* 6C83C 800B203C AC6B1C50 */   sw        $t3, 0x1C50($v1)
.L800B2040:
/* 6C840 800B2040 8F396D70 */  lw         $t9, %lo(D_800E6D70)($t9)
/* 6C844 800B2044 00009825 */  or         $s3, $zero, $zero
/* 6C848 800B2048 2415003F */  addiu      $s5, $zero, 0x3F
/* 6C84C 800B204C 272D09D8 */  addiu      $t5, $t9, 0x9D8
/* 6C850 800B2050 AE8D0000 */  sw         $t5, 0x0($s4)
.L800B2054:
/* 6C854 800B2054 8E820000 */  lw         $v0, 0x0($s4)
/* 6C858 800B2058 C7A20114 */  lwc1       $f2, 0x114($sp)
/* 6C85C 800B205C 240F0001 */  addiu      $t7, $zero, 0x1
/* 6C860 800B2060 8C4C0020 */  lw         $t4, 0x20($v0)
/* 6C864 800B2064 3C014040 */  lui        $at, (0x40400000 >> 16)
/* 6C868 800B2068 55800099 */  bnel       $t4, $zero, .L800B22D0
/* 6C86C 800B206C 8E8C0000 */   lw        $t4, 0x0($s4)
/* 6C870 800B2070 44812000 */  mtc1       $at, $f4
/* 6C874 800B2074 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 6C878 800B2078 44815000 */  mtc1       $at, $f10
/* 6C87C 800B207C 3C0141C0 */  lui        $at, (0x41C00000 >> 16)
/* 6C880 800B2080 44813000 */  mtc1       $at, $f6
/* 6C884 800B2084 AC4F0020 */  sw         $t7, 0x20($v0)
/* 6C888 800B2088 3C014200 */  lui        $at, (0x42000000 >> 16)
/* 6C88C 800B208C 8E980000 */  lw         $t8, 0x0($s4)
/* 6C890 800B2090 44814000 */  mtc1       $at, $f8
/* 6C894 800B2094 46041303 */  div.s      $f12, $f2, $f4
/* 6C898 800B2098 AF000024 */  sw         $zero, 0x24($t8)
/* 6C89C 800B209C C7A400DC */  lwc1       $f4, 0xDC($sp)
/* 6C8A0 800B20A0 3C01800F */  lui        $at, %hi(D_800EBBC8)
/* 6C8A4 800B20A4 46024000 */  add.s      $f0, $f8, $f2
/* 6C8A8 800B20A8 460A1602 */  mul.s      $f24, $f2, $f10
/* 6C8AC 800B20AC C7A800D8 */  lwc1       $f8, 0xD8($sp)
/* 6C8B0 800B20B0 46023700 */  add.s      $f28, $f6, $f2
/* 6C8B4 800B20B4 46002782 */  mul.s      $f30, $f4, $f0
/* 6C8B8 800B20B8 D426BBC8 */  ldc1       $f6, %lo(D_800EBBC8)($at)
/* 6C8BC 800B20BC 240E0003 */  addiu      $t6, $zero, 0x3
/* 6C8C0 800B20C0 46004102 */  mul.s      $f4, $f8, $f0
/* 6C8C4 800B20C4 460012A1 */  cvt.d.s    $f10, $f2
/* 6C8C8 800B20C8 46021680 */  add.s      $f26, $f2, $f2
/* 6C8CC 800B20CC 46265583 */  div.d      $f22, $f10, $f6
/* 6C8D0 800B20D0 448E5000 */  mtc1       $t6, $f10
/* 6C8D4 800B20D4 E7A40098 */  swc1       $f4, 0x98($sp)
/* 6C8D8 800B20D8 0C07B4CE */  jal        func_801ED338
/* 6C8DC 800B20DC 46805520 */   cvt.s.w   $f20, $f10
/* 6C8E0 800B20E0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 6C8E4 800B20E4 44813000 */  mtc1       $at, $f6
/* 6C8E8 800B20E8 8E8B0000 */  lw         $t3, 0x0($s4)
/* 6C8EC 800B20EC 44802000 */  mtc1       $zero, $f4
/* 6C8F0 800B20F0 46060200 */  add.s      $f8, $f0, $f6
/* 6C8F4 800B20F4 2A610004 */  slti       $at, $s3, 0x4
/* 6C8F8 800B20F8 240D0003 */  addiu      $t5, $zero, 0x3
/* 6C8FC 800B20FC 01B36023 */  subu       $t4, $t5, $s3
/* 6C900 800B2100 E5680018 */  swc1       $f8, 0x18($t3)
/* 6C904 800B2104 8E990000 */  lw         $t9, 0x0($s4)
/* 6C908 800B2108 266FFFFC */  addiu      $t7, $s3, -0x4
/* 6C90C 800B210C 10200004 */  beqz       $at, .L800B2120
/* 6C910 800B2110 E724001C */   swc1      $f4, 0x1C($t9)
/* 6C914 800B2114 448C5000 */  mtc1       $t4, $f10
/* 6C918 800B2118 10000004 */  b          .L800B212C
/* 6C91C 800B211C 468050A0 */   cvt.s.w   $f2, $f10
.L800B2120:
/* 6C920 800B2120 448F3000 */  mtc1       $t7, $f6
/* 6C924 800B2124 00000000 */  nop
/* 6C928 800B2128 468030A0 */  cvt.s.w    $f2, $f6
.L800B212C:
/* 6C92C 800B212C C7A8012C */  lwc1       $f8, 0x12C($sp)
/* 6C930 800B2130 C7A400AC */  lwc1       $f4, 0xAC($sp)
/* 6C934 800B2134 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 6C938 800B2138 44819000 */  mtc1       $at, $f18
/* 6C93C 800B213C 4604403C */  c.lt.s     $f8, $f4
/* 6C940 800B2140 C7B000AC */  lwc1       $f16, 0xAC($sp)
/* 6C944 800B2144 46141383 */  div.s      $f14, $f2, $f20
/* 6C948 800B2148 45000003 */  bc1f       .L800B2158
/* 6C94C 800B214C 00000000 */   nop
/* 6C950 800B2150 10000001 */  b          .L800B2158
/* 6C954 800B2154 46004406 */   mov.s     $f16, $f8
.L800B2158:
/* 6C958 800B2158 46127281 */  sub.s      $f10, $f14, $f18
/* 6C95C 800B215C 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 6C960 800B2160 44812000 */  mtc1       $at, $f4
/* 6C964 800B2164 3C0143B4 */  lui        $at, (0x43B40000 >> 16)
/* 6C968 800B2168 46105002 */  mul.s      $f0, $f10, $f16
/* 6C96C 800B216C C7AA0104 */  lwc1       $f10, 0x104($sp)
/* 6C970 800B2170 8E8D0000 */  lw         $t5, 0x0($s4)
/* 6C974 800B2174 46000180 */  add.s      $f6, $f0, $f0
/* 6C978 800B2178 46123380 */  add.s      $f14, $f6, $f18
/* 6C97C 800B217C 44813000 */  mtc1       $at, $f6
/* 6C980 800B2180 3C014580 */  lui        $at, (0x45800000 >> 16)
/* 6C984 800B2184 46047202 */  mul.s      $f8, $f14, $f4
/* 6C988 800B2188 46065103 */  div.s      $f4, $f10, $f6
/* 6C98C 800B218C 4608E501 */  sub.s      $f20, $f28, $f8
/* 6C990 800B2190 44814000 */  mtc1       $at, $f8
/* 6C994 800B2194 3C01801D */  lui        $at, %hi(D_801D79BC)
/* 6C998 800B2198 46082282 */  mul.s      $f10, $f4, $f8
/* 6C99C 800B219C 4600518D */  trunc.w.s  $f6, $f10
/* 6C9A0 800B21A0 C42A79BC */  lwc1       $f10, %lo(D_801D79BC)($at)
/* 6C9A4 800B21A4 44103000 */  mfc1       $s0, $f6
/* 6C9A8 800B21A8 461E5181 */  sub.s      $f6, $f10, $f30
/* 6C9AC 800B21AC 260E0400 */  addiu      $t6, $s0, 0x400
/* 6C9B0 800B21B0 31CB0FFF */  andi       $t3, $t6, 0xFFF
/* 6C9B4 800B21B4 000BC880 */  sll        $t9, $t3, 2
/* 6C9B8 800B21B8 02D98821 */  addu       $s1, $s6, $t9
/* 6C9BC 800B21BC C6240000 */  lwc1       $f4, 0x0($s1)
/* 6C9C0 800B21C0 46142202 */  mul.s      $f8, $f4, $f20
/* 6C9C4 800B21C4 46064100 */  add.s      $f4, $f8, $f6
/* 6C9C8 800B21C8 E5A40000 */  swc1       $f4, 0x0($t5)
/* 6C9CC 800B21CC 0C07B4CE */  jal        func_801ED338
/* 6C9D0 800B21D0 C7AC0114 */   lwc1      $f12, 0x114($sp)
/* 6C9D4 800B21D4 3C01801D */  lui        $at, %hi(D_801D79C0)
/* 6C9D8 800B21D8 C42A79C0 */  lwc1       $f10, %lo(D_801D79C0)($at)
/* 6C9DC 800B21DC 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 6C9E0 800B21E0 44814000 */  mtc1       $at, $f8
/* 6C9E4 800B21E4 8E8C0000 */  lw         $t4, 0x0($s4)
/* 6C9E8 800B21E8 320F0FFF */  andi       $t7, $s0, 0xFFF
/* 6C9EC 800B21EC 46085180 */  add.s      $f6, $f10, $f8
/* 6C9F0 800B21F0 000FC080 */  sll        $t8, $t7, 2
/* 6C9F4 800B21F4 3C01801D */  lui        $at, %hi(D_801D79C4)
/* 6C9F8 800B21F8 02D89021 */  addu       $s2, $s6, $t8
/* 6C9FC 800B21FC 46060100 */  add.s      $f4, $f0, $f6
/* 6CA00 800B2200 4600C306 */  mov.s      $f12, $f24
/* 6CA04 800B2204 461A2280 */  add.s      $f10, $f4, $f26
/* 6CA08 800B2208 E58A0004 */  swc1       $f10, 0x4($t4)
/* 6CA0C 800B220C C7A60098 */  lwc1       $f6, 0x98($sp)
/* 6CA10 800B2210 C42879C4 */  lwc1       $f8, %lo(D_801D79C4)($at)
/* 6CA14 800B2214 C64A0000 */  lwc1       $f10, 0x0($s2)
/* 6CA18 800B2218 8E8E0000 */  lw         $t6, 0x0($s4)
/* 6CA1C 800B221C 46064101 */  sub.s      $f4, $f8, $f6
/* 6CA20 800B2220 46145202 */  mul.s      $f8, $f10, $f20
/* 6CA24 800B2224 46044180 */  add.s      $f6, $f8, $f4
/* 6CA28 800B2228 0C07B4CE */  jal        func_801ED338
/* 6CA2C 800B222C E5C60008 */   swc1      $f6, 0x8($t6)
/* 6CA30 800B2230 46000506 */  mov.s      $f20, $f0
/* 6CA34 800B2234 0C07B4CE */  jal        func_801ED338
/* 6CA38 800B2238 4600C306 */   mov.s     $f12, $f24
/* 6CA3C 800B223C C62A0000 */  lwc1       $f10, 0x0($s1)
/* 6CA40 800B2240 3C01800F */  lui        $at, %hi(D_800EBBD0)
/* 6CA44 800B2244 D422BBD0 */  ldc1       $f2, %lo(D_800EBBD0)($at)
/* 6CA48 800B2248 46145202 */  mul.s      $f8, $f10, $f20
/* 6CA4C 800B224C 3C01801D */  lui        $at, %hi(D_801D79C8)
/* 6CA50 800B2250 C42679C8 */  lwc1       $f6, %lo(D_801D79C8)($at)
/* 6CA54 800B2254 8E8B0000 */  lw         $t3, 0x0($s4)
/* 6CA58 800B2258 3C01801D */  lui        $at, %hi(D_801D79D0)
/* 6CA5C 800B225C 26730001 */  addiu      $s3, $s3, 0x1
/* 6CA60 800B2260 460032A1 */  cvt.d.s    $f10, $f6
/* 6CA64 800B2264 46004121 */  cvt.d.s    $f4, $f8
/* 6CA68 800B2268 46225202 */  mul.d      $f8, $f10, $f2
/* 6CA6C 800B226C 46282180 */  add.d      $f6, $f4, $f8
/* 6CA70 800B2270 46000121 */  cvt.d.s    $f4, $f0
/* 6CA74 800B2274 462032A0 */  cvt.s.d    $f10, $f6
/* 6CA78 800B2278 46362200 */  add.d      $f8, $f4, $f22
/* 6CA7C 800B227C E56A000C */  swc1       $f10, 0xC($t3)
/* 6CA80 800B2280 8E990000 */  lw         $t9, 0x0($s4)
/* 6CA84 800B2284 462041A0 */  cvt.s.d    $f6, $f8
/* 6CA88 800B2288 E7260010 */  swc1       $f6, 0x10($t9)
/* 6CA8C 800B228C C64A0000 */  lwc1       $f10, 0x0($s2)
/* 6CA90 800B2290 C42679D0 */  lwc1       $f6, %lo(D_801D79D0)($at)
/* 6CA94 800B2294 8E8D0000 */  lw         $t5, 0x0($s4)
/* 6CA98 800B2298 46145102 */  mul.s      $f4, $f10, $f20
/* 6CA9C 800B229C 460032A1 */  cvt.d.s    $f10, $f6
/* 6CAA0 800B22A0 2A610008 */  slti       $at, $s3, 0x8
/* 6CAA4 800B22A4 46002221 */  cvt.d.s    $f8, $f4
/* 6CAA8 800B22A8 46225102 */  mul.d      $f4, $f10, $f2
/* 6CAAC 800B22AC 46244180 */  add.d      $f6, $f8, $f4
/* 6CAB0 800B22B0 462032A0 */  cvt.s.d    $f10, $f6
/* 6CAB4 800B22B4 E5AA0014 */  swc1       $f10, 0x14($t5)
/* 6CAB8 800B22B8 C7A80104 */  lwc1       $f8, 0x104($sp)
/* 6CABC 800B22BC C7A40100 */  lwc1       $f4, 0x100($sp)
/* 6CAC0 800B22C0 46044180 */  add.s      $f6, $f8, $f4
/* 6CAC4 800B22C4 10200006 */  beqz       $at, .L800B22E0
/* 6CAC8 800B22C8 E7A60104 */   swc1      $f6, 0x104($sp)
/* 6CACC 800B22CC 8E8C0000 */  lw         $t4, 0x0($s4)
.L800B22D0:
/* 6CAD0 800B22D0 26B5FFFF */  addiu      $s5, $s5, -0x1
/* 6CAD4 800B22D4 258FFFD8 */  addiu      $t7, $t4, -0x28
/* 6CAD8 800B22D8 06A1FF5E */  bgez       $s5, .L800B2054
/* 6CADC 800B22DC AE8F0000 */   sw        $t7, 0x0($s4)
.L800B22E0:
/* 6CAE0 800B22E0 26F70001 */  addiu      $s7, $s7, 0x1
.L800B22E4:
/* 6CAE4 800B22E4 24010002 */  addiu      $at, $zero, 0x2
/* 6CAE8 800B22E8 16E1FF06 */  bne        $s7, $at, .L800B1F04
/* 6CAEC 800B22EC 00000000 */   nop
.L800B22F0:
/* 6CAF0 800B22F0 3C03800E */  lui        $v1, %hi(D_800E6D60)
/* 6CAF4 800B22F4 8C636D60 */  lw         $v1, %lo(D_800E6D60)($v1)
/* 6CAF8 800B22F8 C7AE0114 */  lwc1       $f14, 0x114($sp)
/* 6CAFC 800B22FC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 6CB00 800B2300 8C651C44 */  lw         $a1, 0x1C44($v1)
/* 6CB04 800B2304 50A000BD */  beql       $a1, $zero, .L800B25FC
/* 6CB08 800B2308 3C014200 */   lui       $at, (0x42000000 >> 16)
/* 6CB0C 800B230C 4481A000 */  mtc1       $at, $f20
/* 6CB10 800B2310 00000000 */  nop
/* 6CB14 800B2314 460EA03C */  c.lt.s     $f20, $f14
/* 6CB18 800B2318 00000000 */  nop
/* 6CB1C 800B231C 450200B7 */  bc1fl      .L800B25FC
/* 6CB20 800B2320 3C014200 */   lui       $at, (0x42000000 >> 16)
/* 6CB24 800B2324 8C781C4C */  lw         $t8, 0x1C4C($v1)
/* 6CB28 800B2328 24AEFFFF */  addiu      $t6, $a1, -0x1
/* 6CB2C 800B232C 530000B3 */  beql       $t8, $zero, .L800B25FC
/* 6CB30 800B2330 3C014200 */   lui       $at, (0x42000000 >> 16)
/* 6CB34 800B2334 AC6E1C44 */  sw         $t6, 0x1C44($v1)
/* 6CB38 800B2338 3C03800E */  lui        $v1, %hi(D_800E6D60)
/* 6CB3C 800B233C 8C636D60 */  lw         $v1, %lo(D_800E6D60)($v1)
/* 6CB40 800B2340 3C04800E */  lui        $a0, %hi(D_800E6D78)
/* 6CB44 800B2344 3C18800E */  lui        $t8, %hi(D_800E6D60)
/* 6CB48 800B2348 8C621C48 */  lw         $v0, 0x1C48($v1)
/* 6CB4C 800B234C 244B0001 */  addiu      $t3, $v0, 0x1
/* 6CB50 800B2350 AC6B1C48 */  sw         $t3, 0x1C48($v1)
/* 6CB54 800B2354 3C03800E */  lui        $v1, %hi(D_800E6D60)
/* 6CB58 800B2358 8C636D60 */  lw         $v1, %lo(D_800E6D60)($v1)
/* 6CB5C 800B235C 0040A825 */  or         $s5, $v0, $zero
/* 6CB60 800B2360 00158080 */  sll        $s0, $s5, 2
/* 6CB64 800B2364 8C791C48 */  lw         $t9, 0x1C48($v1)
/* 6CB68 800B2368 02158021 */  addu       $s0, $s0, $s5
/* 6CB6C 800B236C 001080C0 */  sll        $s0, $s0, 3
/* 6CB70 800B2370 07210004 */  bgez       $t9, .L800B2384
/* 6CB74 800B2374 332D0003 */   andi      $t5, $t9, 0x3
/* 6CB78 800B2378 11A00002 */  beqz       $t5, .L800B2384
/* 6CB7C 800B237C 00000000 */   nop
/* 6CB80 800B2380 25ADFFFC */  addiu      $t5, $t5, -0x4
.L800B2384:
/* 6CB84 800B2384 AC6D1C48 */  sw         $t5, 0x1C48($v1)
/* 6CB88 800B2388 8C846D78 */  lw         $a0, %lo(D_800E6D78)($a0)
/* 6CB8C 800B238C 00906021 */  addu       $t4, $a0, $s0
/* 6CB90 800B2390 8D8F0020 */  lw         $t7, 0x20($t4)
/* 6CB94 800B2394 55E00099 */  bnel       $t7, $zero, .L800B25FC
/* 6CB98 800B2398 3C014200 */   lui       $at, (0x42000000 >> 16)
/* 6CB9C 800B239C 8F186D60 */  lw         $t8, %lo(D_800E6D60)($t8)
/* 6CBA0 800B23A0 3C0B801D */  lui        $t3, %hi(D_801D7A10)
/* 6CBA4 800B23A4 3C013E80 */  lui        $at, (0x3E800000 >> 16)
/* 6CBA8 800B23A8 8F0E1C54 */  lw         $t6, 0x1C54($t8)
/* 6CBAC 800B23AC 51C00005 */  beql       $t6, $zero, .L800B23C4
/* 6CBB0 800B23B0 46147281 */   sub.s     $f10, $f14, $f20
/* 6CBB4 800B23B4 8D6B7A10 */  lw         $t3, %lo(D_801D7A10)($t3)
/* 6CBB8 800B23B8 55600090 */  bnel       $t3, $zero, .L800B25FC
/* 6CBBC 800B23BC 3C014200 */   lui       $at, (0x42000000 >> 16)
/* 6CBC0 800B23C0 46147281 */  sub.s      $f10, $f14, $f20
.L800B23C4:
/* 6CBC4 800B23C4 44814000 */  mtc1       $at, $f8
/* 6CBC8 800B23C8 3C02800E */  lui        $v0, %hi(D_800E6D74)
/* 6CBCC 800B23CC 24426D74 */  addiu      $v0, $v0, %lo(D_800E6D74)
/* 6CBD0 800B23D0 46085602 */  mul.s      $f24, $f10, $f8
/* 6CBD4 800B23D4 0204C821 */  addu       $t9, $s0, $a0
/* 6CBD8 800B23D8 AC590000 */  sw         $t9, 0x0($v0)
/* 6CBDC 800B23DC 240D0001 */  addiu      $t5, $zero, 0x1
/* 6CBE0 800B23E0 AF2D0020 */  sw         $t5, 0x20($t9)
/* 6CBE4 800B23E4 8C4F0000 */  lw         $t7, 0x0($v0)
/* 6CBE8 800B23E8 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 6CBEC 800B23EC 4618A03C */  c.lt.s     $f20, $f24
/* 6CBF0 800B23F0 4481F000 */  mtc1       $at, $f30
/* 6CBF4 800B23F4 ADE00024 */  sw         $zero, 0x24($t7)
/* 6CBF8 800B23F8 45020003 */  bc1fl      .L800B2408
/* 6CBFC 800B23FC 8C580000 */   lw        $t8, 0x0($v0)
/* 6CC00 800B2400 4600A606 */  mov.s      $f24, $f20
/* 6CC04 800B2404 8C580000 */  lw         $t8, 0x0($v0)
.L800B2408:
/* 6CC08 800B2408 4618F302 */  mul.s      $f12, $f30, $f24
/* 6CC0C 800B240C 0C07B4CE */  jal        func_801ED338
/* 6CC10 800B2410 E718001C */   swc1      $f24, 0x1C($t8)
/* 6CC14 800B2414 3C014240 */  lui        $at, (0x42400000 >> 16)
/* 6CC18 800B2418 44812000 */  mtc1       $at, $f4
/* 6CC1C 800B241C 3C0E800E */  lui        $t6, %hi(D_800E6D74)
/* 6CC20 800B2420 8DCE6D74 */  lw         $t6, %lo(D_800E6D74)($t6)
/* 6CC24 800B2424 46182182 */  mul.s      $f6, $f4, $f24
/* 6CC28 800B2428 3C0B800E */  lui        $t3, %hi(D_800E6D60)
/* 6CC2C 800B242C 3C014140 */  lui        $at, (0x41400000 >> 16)
/* 6CC30 800B2430 46060280 */  add.s      $f10, $f0, $f6
/* 6CC34 800B2434 E5CA0018 */  swc1       $f10, 0x18($t6)
/* 6CC38 800B2438 8D6B6D60 */  lw         $t3, %lo(D_800E6D60)($t3)
/* 6CC3C 800B243C 8D791C54 */  lw         $t9, 0x1C54($t3)
/* 6CC40 800B2440 53200010 */  beql       $t9, $zero, .L800B2484
/* 6CC44 800B2444 4481D000 */   mtc1      $at, $f26
/* 6CC48 800B2448 3C014180 */  lui        $at, (0x41800000 >> 16)
/* 6CC4C 800B244C 44816000 */  mtc1       $at, $f12
/* 6CC50 800B2450 0C07B4CE */  jal        func_801ED338
/* 6CC54 800B2454 00000000 */   nop
/* 6CC58 800B2458 3C01C100 */  lui        $at, (0xC1000000 >> 16)
/* 6CC5C 800B245C 44814000 */  mtc1       $at, $f8
/* 6CC60 800B2460 3C01C210 */  lui        $at, (0xC2100000 >> 16)
/* 6CC64 800B2464 44818000 */  mtc1       $at, $f16
/* 6CC68 800B2468 46080100 */  add.s      $f4, $f0, $f8
/* 6CC6C 800B246C 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 6CC70 800B2470 4481B000 */  mtc1       $at, $f22
/* 6CC74 800B2474 46182082 */  mul.s      $f2, $f4, $f24
/* 6CC78 800B2478 10000027 */  b          .L800B2518
/* 6CC7C 800B247C 00000000 */   nop
/* 6CC80 800B2480 4481D000 */  mtc1       $at, $f26
.L800B2484:
/* 6CC84 800B2484 0C07B4CE */  jal        func_801ED338
/* 6CC88 800B2488 4600D306 */   mov.s     $f12, $f26
/* 6CC8C 800B248C 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 6CC90 800B2490 4481E000 */  mtc1       $at, $f28
/* 6CC94 800B2494 46000506 */  mov.s      $f20, $f0
/* 6CC98 800B2498 0C07B4CE */  jal        func_801ED338
/* 6CC9C 800B249C 4600E306 */   mov.s     $f12, $f28
/* 6CCA0 800B24A0 4614F181 */  sub.s      $f6, $f30, $f20
/* 6CCA4 800B24A4 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 6CCA8 800B24A8 46183282 */  mul.s      $f10, $f6, $f24
/* 6CCAC 800B24AC 44813000 */  mtc1       $at, $f6
/* 6CCB0 800B24B0 2A010050 */  slti       $at, $s0, 0x50
/* 6CCB4 800B24B4 460AD200 */  add.s      $f8, $f26, $f10
/* 6CCB8 800B24B8 46080100 */  add.s      $f4, $f0, $f8
/* 6CCBC 800B24BC 46062301 */  sub.s      $f12, $f4, $f6
/* 6CCC0 800B24C0 14200002 */  bnez       $at, .L800B24CC
/* 6CCC4 800B24C4 46006086 */   mov.s     $f2, $f12
/* 6CCC8 800B24C8 46006087 */  neg.s      $f2, $f12
.L800B24CC:
/* 6CCCC 800B24CC 3C014180 */  lui        $at, (0x41800000 >> 16)
/* 6CCD0 800B24D0 44816000 */  mtc1       $at, $f12
/* 6CCD4 800B24D4 0C07B4CE */  jal        func_801ED338
/* 6CCD8 800B24D8 E7A2015C */   swc1      $f2, 0x15C($sp)
/* 6CCDC 800B24DC 46000506 */  mov.s      $f20, $f0
/* 6CCE0 800B24E0 0C07B4CE */  jal        func_801ED338
/* 6CCE4 800B24E4 4600E306 */   mov.s     $f12, $f28
/* 6CCE8 800B24E8 4614F200 */  add.s      $f8, $f30, $f20
/* 6CCEC 800B24EC 3C01C180 */  lui        $at, (0xC1800000 >> 16)
/* 6CCF0 800B24F0 44815000 */  mtc1       $at, $f10
/* 6CCF4 800B24F4 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 6CCF8 800B24F8 46184102 */  mul.s      $f4, $f8, $f24
/* 6CCFC 800B24FC C7A2015C */  lwc1       $f2, 0x15C($sp)
/* 6CD00 800B2500 46045181 */  sub.s      $f6, $f10, $f4
/* 6CD04 800B2504 461AC102 */  mul.s      $f4, $f24, $f26
/* 6CD08 800B2508 44815000 */  mtc1       $at, $f10
/* 6CD0C 800B250C 46060200 */  add.s      $f8, $f0, $f6
/* 6CD10 800B2510 461C2580 */  add.s      $f22, $f4, $f28
/* 6CD14 800B2514 460A4401 */  sub.s      $f16, $f8, $f10
.L800B2518:
/* 6CD18 800B2518 3C01800F */  lui        $at, %hi(D_800EBBD8)
/* 6CD1C 800B251C C420BBD8 */  lwc1       $f0, %lo(D_800EBBD8)($at)
/* 6CD20 800B2520 3C01801D */  lui        $at, %hi(D_801D79EC)
/* 6CD24 800B2524 C42679EC */  lwc1       $f6, %lo(D_801D79EC)($at)
/* 6CD28 800B2528 3C06801D */  lui        $a2, %hi(D_801D79BC)
/* 6CD2C 800B252C 24C679BC */  addiu      $a2, $a2, %lo(D_801D79BC)
/* 6CD30 800B2530 46061202 */  mul.s      $f8, $f2, $f6
/* 6CD34 800B2534 C4CA0000 */  lwc1       $f10, 0x0($a2)
/* 6CD38 800B2538 3C01801D */  lui        $at, %hi(D_801D79E0)
/* 6CD3C 800B253C C42679E0 */  lwc1       $f6, %lo(D_801D79E0)($at)
/* 6CD40 800B2540 3C02800E */  lui        $v0, %hi(D_800E6D74)
/* 6CD44 800B2544 24426D74 */  addiu      $v0, $v0, %lo(D_800E6D74)
/* 6CD48 800B2548 8C4D0000 */  lw         $t5, 0x0($v0)
/* 6CD4C 800B254C 460A4100 */  add.s      $f4, $f8, $f10
/* 6CD50 800B2550 46068202 */  mul.s      $f8, $f16, $f6
/* 6CD54 800B2554 3C01801D */  lui        $at, %hi(D_801D79F0)
/* 6CD58 800B2558 3C05801D */  lui        $a1, %hi(D_801D79C0)
/* 6CD5C 800B255C 24A579C0 */  addiu      $a1, $a1, %lo(D_801D79C0)
/* 6CD60 800B2560 3C07801D */  lui        $a3, %hi(D_801D79C4)
/* 6CD64 800B2564 24E779C4 */  addiu      $a3, $a3, %lo(D_801D79C4)
/* 6CD68 800B2568 46082280 */  add.s      $f10, $f4, $f8
/* 6CD6C 800B256C E5AA0000 */  swc1       $f10, 0x0($t5)
/* 6CD70 800B2570 C42679F0 */  lwc1       $f6, %lo(D_801D79F0)($at)
/* 6CD74 800B2574 C4A80000 */  lwc1       $f8, 0x0($a1)
/* 6CD78 800B2578 3C01801D */  lui        $at, %hi(D_801D79E4)
/* 6CD7C 800B257C 46061102 */  mul.s      $f4, $f2, $f6
/* 6CD80 800B2580 C42679E4 */  lwc1       $f6, %lo(D_801D79E4)($at)
/* 6CD84 800B2584 8C4C0000 */  lw         $t4, 0x0($v0)
/* 6CD88 800B2588 3C01801D */  lui        $at, %hi(D_801D79F4)
/* 6CD8C 800B258C 46082280 */  add.s      $f10, $f4, $f8
/* 6CD90 800B2590 46068102 */  mul.s      $f4, $f16, $f6
/* 6CD94 800B2594 46045200 */  add.s      $f8, $f10, $f4
/* 6CD98 800B2598 46164180 */  add.s      $f6, $f8, $f22
/* 6CD9C 800B259C E5860004 */  swc1       $f6, 0x4($t4)
/* 6CDA0 800B25A0 C42A79F4 */  lwc1       $f10, %lo(D_801D79F4)($at)
/* 6CDA4 800B25A4 C4E80000 */  lwc1       $f8, 0x0($a3)
/* 6CDA8 800B25A8 3C01801D */  lui        $at, %hi(D_801D79E8)
/* 6CDAC 800B25AC 460A1102 */  mul.s      $f4, $f2, $f10
/* 6CDB0 800B25B0 C42A79E8 */  lwc1       $f10, %lo(D_801D79E8)($at)
/* 6CDB4 800B25B4 8C4F0000 */  lw         $t7, 0x0($v0)
/* 6CDB8 800B25B8 3C01801D */  lui        $at, %hi(D_801D79C8)
/* 6CDBC 800B25BC 46082180 */  add.s      $f6, $f4, $f8
/* 6CDC0 800B25C0 460A8102 */  mul.s      $f4, $f16, $f10
/* 6CDC4 800B25C4 46043200 */  add.s      $f8, $f6, $f4
/* 6CDC8 800B25C8 E5E80008 */  swc1       $f8, 0x8($t7)
/* 6CDCC 800B25CC C42A79C8 */  lwc1       $f10, %lo(D_801D79C8)($at)
/* 6CDD0 800B25D0 8C580000 */  lw         $t8, 0x0($v0)
/* 6CDD4 800B25D4 3C01801D */  lui        $at, %hi(D_801D79D0)
/* 6CDD8 800B25D8 46005182 */  mul.s      $f6, $f10, $f0
/* 6CDDC 800B25DC E706000C */  swc1       $f6, 0xC($t8)
/* 6CDE0 800B25E0 8C4E0000 */  lw         $t6, 0x0($v0)
/* 6CDE4 800B25E4 E5D80010 */  swc1       $f24, 0x10($t6)
/* 6CDE8 800B25E8 C42479D0 */  lwc1       $f4, %lo(D_801D79D0)($at)
/* 6CDEC 800B25EC 8C4B0000 */  lw         $t3, 0x0($v0)
/* 6CDF0 800B25F0 46002202 */  mul.s      $f8, $f4, $f0
/* 6CDF4 800B25F4 E5680014 */  swc1       $f8, 0x14($t3)
/* 6CDF8 800B25F8 3C014200 */  lui        $at, (0x42000000 >> 16)
.L800B25FC:
/* 6CDFC 800B25FC 44816000 */  mtc1       $at, $f12
/* 6CE00 800B2600 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 6CE04 800B2604 4481A000 */  mtc1       $at, $f20
/* 6CE08 800B2608 C7AE0114 */  lwc1       $f14, 0x114($sp)
/* 6CE0C 800B260C 3C014180 */  lui        $at, (0x41800000 >> 16)
/* 6CE10 800B2610 4481D000 */  mtc1       $at, $f26
/* 6CE14 800B2614 46147281 */  sub.s      $f10, $f14, $f20
/* 6CE18 800B2618 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* 6CE1C 800B261C 44813000 */  mtc1       $at, $f6
/* 6CE20 800B2620 3C05801D */  lui        $a1, %hi(D_801D79C0)
/* 6CE24 800B2624 3C06801D */  lui        $a2, %hi(D_801D79BC)
/* 6CE28 800B2628 46065103 */  div.s      $f4, $f10, $f6
/* 6CE2C 800B262C 3C07801D */  lui        $a3, %hi(D_801D79C4)
/* 6CE30 800B2630 3C03800E */  lui        $v1, %hi(D_800E6D60)
/* 6CE34 800B2634 3C08800E */  lui        $t0, %hi(D_800E6D80)
/* 6CE38 800B2638 3C04801D */  lui        $a0, %hi(D_801D79FC)
/* 6CE3C 800B263C 24E779C4 */  addiu      $a3, $a3, %lo(D_801D79C4)
/* 6CE40 800B2640 24C679BC */  addiu      $a2, $a2, %lo(D_801D79BC)
/* 6CE44 800B2644 24A579C0 */  addiu      $a1, $a1, %lo(D_801D79C0)
/* 6CE48 800B2648 8C636D60 */  lw         $v1, %lo(D_800E6D60)($v1)
/* 6CE4C 800B264C 3C01801D */  lui        $at, %hi(D_801D7A00)
/* 6CE50 800B2650 25086D80 */  addiu      $t0, $t0, %lo(D_800E6D80)
/* 6CE54 800B2654 248479FC */  addiu      $a0, $a0, %lo(D_801D79FC)
/* 6CE58 800B2658 24150007 */  addiu      $s5, $zero, 0x7
/* 6CE5C 800B265C 460C2082 */  mul.s      $f2, $f4, $f12
/* 6CE60 800B2660 4602603C */  c.lt.s     $f12, $f2
/* 6CE64 800B2664 00000000 */  nop
/* 6CE68 800B2668 45020003 */  bc1fl      .L800B2678
/* 6CE6C 800B266C C4601C6C */   lwc1      $f0, 0x1C6C($v1)
/* 6CE70 800B2670 46006086 */  mov.s      $f2, $f12
/* 6CE74 800B2674 C4601C6C */  lwc1       $f0, 0x1C6C($v1)
.L800B2678:
/* 6CE78 800B2678 4602003C */  c.lt.s     $f0, $f2
/* 6CE7C 800B267C 00000000 */  nop
/* 6CE80 800B2680 45000012 */  bc1f       .L800B26CC
/* 6CE84 800B2684 00000000 */   nop
/* 6CE88 800B2688 8C791C2C */  lw         $t9, 0x1C2C($v1)
/* 6CE8C 800B268C 1320000F */  beqz       $t9, .L800B26CC
/* 6CE90 800B2690 00000000 */   nop
/* 6CE94 800B2694 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 6CE98 800B2698 44814000 */  mtc1       $at, $f8
/* 6CE9C 800B269C 00000000 */  nop
/* 6CEA0 800B26A0 46080280 */  add.s      $f10, $f0, $f8
/* 6CEA4 800B26A4 E46A1C6C */  swc1       $f10, 0x1C6C($v1)
/* 6CEA8 800B26A8 3C03800E */  lui        $v1, %hi(D_800E6D60)
/* 6CEAC 800B26AC 8C636D60 */  lw         $v1, %lo(D_800E6D60)($v1)
/* 6CEB0 800B26B0 C4661C6C */  lwc1       $f6, 0x1C6C($v1)
/* 6CEB4 800B26B4 4606103C */  c.lt.s     $f2, $f6
/* 6CEB8 800B26B8 00000000 */  nop
/* 6CEBC 800B26BC 4502001A */  bc1fl      .L800B2728
/* 6CEC0 800B26C0 8D0D0000 */   lw        $t5, 0x0($t0)
/* 6CEC4 800B26C4 10000017 */  b          .L800B2724
/* 6CEC8 800B26C8 E4621C6C */   swc1      $f2, 0x1C6C($v1)
.L800B26CC:
/* 6CECC 800B26CC C4247A00 */  lwc1       $f4, %lo(D_801D7A00)($at)
/* 6CED0 800B26D0 C4A80000 */  lwc1       $f8, 0x0($a1)
/* 6CED4 800B26D4 4608203C */  c.lt.s     $f4, $f8
/* 6CED8 800B26D8 00000000 */  nop
/* 6CEDC 800B26DC 45020005 */  bc1fl      .L800B26F4
/* 6CEE0 800B26E0 46140181 */   sub.s     $f6, $f0, $f20
/* 6CEE4 800B26E4 46140281 */  sub.s      $f10, $f0, $f20
/* 6CEE8 800B26E8 10000003 */  b          .L800B26F8
/* 6CEEC 800B26EC E46A1C6C */   swc1      $f10, 0x1C6C($v1)
/* 6CEF0 800B26F0 46140181 */  sub.s      $f6, $f0, $f20
.L800B26F4:
/* 6CEF4 800B26F4 E4661C6C */  swc1       $f6, 0x1C6C($v1)
.L800B26F8:
/* 6CEF8 800B26F8 3C03800E */  lui        $v1, %hi(D_800E6D60)
/* 6CEFC 800B26FC 8C636D60 */  lw         $v1, %lo(D_800E6D60)($v1)
/* 6CF00 800B2700 44804000 */  mtc1       $zero, $f8
/* 6CF04 800B2704 C4641C6C */  lwc1       $f4, 0x1C6C($v1)
/* 6CF08 800B2708 4608203C */  c.lt.s     $f4, $f8
/* 6CF0C 800B270C 00000000 */  nop
/* 6CF10 800B2710 45020005 */  bc1fl      .L800B2728
/* 6CF14 800B2714 8D0D0000 */   lw        $t5, 0x0($t0)
/* 6CF18 800B2718 44805000 */  mtc1       $zero, $f10
/* 6CF1C 800B271C 00000000 */  nop
/* 6CF20 800B2720 E46A1C6C */  swc1       $f10, 0x1C6C($v1)
.L800B2724:
/* 6CF24 800B2724 8D0D0000 */  lw         $t5, 0x0($t0)
.L800B2728:
/* 6CF28 800B2728 3C03801D */  lui        $v1, %hi(D_801D79F8)
/* 6CF2C 800B272C 246379F8 */  addiu      $v1, $v1, %lo(D_801D79F8)
/* 6CF30 800B2730 AFCD0000 */  sw         $t5, 0x0($fp)
.L800B2734:
/* 6CF34 800B2734 8FC20000 */  lw         $v0, 0x0($fp)
/* 6CF38 800B2738 C4640000 */  lwc1       $f4, 0x0($v1)
/* 6CF3C 800B273C 26B5FFFF */  addiu      $s5, $s5, -0x1
/* 6CF40 800B2740 C4460000 */  lwc1       $f6, 0x0($v0)
/* 6CF44 800B2744 46043200 */  add.s      $f8, $f6, $f4
/* 6CF48 800B2748 E4480000 */  swc1       $f8, 0x0($v0)
/* 6CF4C 800B274C 8FC20000 */  lw         $v0, 0x0($fp)
/* 6CF50 800B2750 C4860000 */  lwc1       $f6, 0x0($a0)
/* 6CF54 800B2754 C44A0008 */  lwc1       $f10, 0x8($v0)
/* 6CF58 800B2758 46065100 */  add.s      $f4, $f10, $f6
/* 6CF5C 800B275C E4440008 */  swc1       $f4, 0x8($v0)
/* 6CF60 800B2760 8FC20000 */  lw         $v0, 0x0($fp)
/* 6CF64 800B2764 C46A0000 */  lwc1       $f10, 0x0($v1)
/* 6CF68 800B2768 C448000C */  lwc1       $f8, 0xC($v0)
/* 6CF6C 800B276C 460A4180 */  add.s      $f6, $f8, $f10
/* 6CF70 800B2770 E446000C */  swc1       $f6, 0xC($v0)
/* 6CF74 800B2774 8FC20000 */  lw         $v0, 0x0($fp)
/* 6CF78 800B2778 C4880000 */  lwc1       $f8, 0x0($a0)
/* 6CF7C 800B277C C4440014 */  lwc1       $f4, 0x14($v0)
/* 6CF80 800B2780 46082280 */  add.s      $f10, $f4, $f8
/* 6CF84 800B2784 E44A0014 */  swc1       $f10, 0x14($v0)
/* 6CF88 800B2788 8FCC0000 */  lw         $t4, 0x0($fp)
/* 6CF8C 800B278C 258F0030 */  addiu      $t7, $t4, 0x30
/* 6CF90 800B2790 06A1FFE8 */  bgez       $s5, .L800B2734
/* 6CF94 800B2794 AFCF0000 */   sw        $t7, 0x0($fp)
/* 6CF98 800B2798 3C03800E */  lui        $v1, %hi(D_800E6D60)
/* 6CF9C 800B279C 8C636D60 */  lw         $v1, %lo(D_800E6D60)($v1)
/* 6CFA0 800B27A0 44809000 */  mtc1       $zero, $f18
/* 6CFA4 800B27A4 8FAB01A0 */  lw         $t3, 0x1A0($sp)
/* 6CFA8 800B27A8 C4601C6C */  lwc1       $f0, 0x1C6C($v1)
/* 6CFAC 800B27AC 3C19801A */  lui        $t9, %hi(D_801982F0)
/* 6CFB0 800B27B0 3C0D801D */  lui        $t5, %hi(D_801D7A10)
/* 6CFB4 800B27B4 4600903C */  c.lt.s     $f18, $f0
/* 6CFB8 800B27B8 00000000 */  nop
/* 6CFBC 800B27BC 4502000C */  bc1fl      .L800B27F0
/* 6CFC0 800B27C0 46009086 */   mov.s     $f2, $f18
/* 6CFC4 800B27C4 8C781C54 */  lw         $t8, 0x1C54($v1)
/* 6CFC8 800B27C8 C7A60138 */  lwc1       $f6, 0x138($sp)
/* 6CFCC 800B27CC 57000008 */  bnel       $t8, $zero, .L800B27F0
/* 6CFD0 800B27D0 46009086 */   mov.s     $f2, $f18
/* 6CFD4 800B27D4 4606A101 */  sub.s      $f4, $f20, $f6
/* 6CFD8 800B27D8 3C0141B4 */  lui        $at, (0x41B40000 >> 16)
/* 6CFDC 800B27DC 44815000 */  mtc1       $at, $f10
/* 6CFE0 800B27E0 460C2202 */  mul.s      $f8, $f4, $f12
/* 6CFE4 800B27E4 10000002 */  b          .L800B27F0
/* 6CFE8 800B27E8 460A4080 */   add.s     $f2, $f8, $f10
/* 6CFEC 800B27EC 46009086 */  mov.s      $f2, $f18
.L800B27F0:
/* 6CFF0 800B27F0 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 6CFF4 800B27F4 44813000 */  mtc1       $at, $f6
/* 6CFF8 800B27F8 C7AA0140 */  lwc1       $f10, 0x140($sp)
/* 6CFFC 800B27FC 3C013E80 */  lui        $at, (0x3E800000 >> 16)
/* 6D000 800B2800 4606003C */  c.lt.s     $f0, $f6
/* 6D004 800B2804 461A5182 */  mul.s      $f6, $f10, $f26
/* 6D008 800B2808 3C0E801D */  lui        $t6, %hi(D_801D7A08)
/* 6D00C 800B280C 45020008 */  bc1fl      .L800B2830
/* 6D010 800B2810 461A3380 */   add.s     $f14, $f6, $f26
/* 6D014 800B2814 44812000 */  mtc1       $at, $f4
/* 6D018 800B2818 00000000 */  nop
/* 6D01C 800B281C 46040202 */  mul.s      $f8, $f0, $f4
/* 6D020 800B2820 00000000 */  nop
/* 6D024 800B2824 46081082 */  mul.s      $f2, $f2, $f8
/* 6D028 800B2828 00000000 */  nop
/* 6D02C 800B282C 461A3380 */  add.s      $f14, $f6, $f26
.L800B2830:
/* 6D030 800B2830 8DCE7A08 */  lw         $t6, %lo(D_801D7A08)($t6)
/* 6D034 800B2834 11C0000F */  beqz       $t6, .L800B2874
/* 6D038 800B2838 46007406 */   mov.s     $f16, $f14
/* 6D03C 800B283C 8F3982F0 */  lw         $t9, %lo(D_801982F0)($t9)
/* 6D040 800B2840 3C01801D */  lui        $at, %hi(D_801D7A00)
/* 6D044 800B2844 1579000B */  bne        $t3, $t9, .L800B2874
/* 6D048 800B2848 00000000 */   nop
/* 6D04C 800B284C C4AC0000 */  lwc1       $f12, 0x0($a1)
/* 6D050 800B2850 C4207A00 */  lwc1       $f0, %lo(D_801D7A00)($at)
/* 6D054 800B2854 46021080 */  add.s      $f2, $f2, $f2
/* 6D058 800B2858 46006586 */  mov.s      $f22, $f12
/* 6D05C 800B285C 460C003C */  c.lt.s     $f0, $f12
/* 6D060 800B2860 00000000 */  nop
/* 6D064 800B2864 4502001A */  bc1fl      .L800B28D0
/* 6D068 800B2868 461A0200 */   add.s     $f8, $f0, $f26
/* 6D06C 800B286C 10000017 */  b          .L800B28CC
/* 6D070 800B2870 46000586 */   mov.s     $f22, $f0
.L800B2874:
/* 6D074 800B2874 8DAD7A10 */  lw         $t5, %lo(D_801D7A10)($t5)
/* 6D078 800B2878 3C01801D */  lui        $at, %hi(D_801D7A00)
/* 6D07C 800B287C 11A0000A */  beqz       $t5, .L800B28A8
/* 6D080 800B2880 00000000 */   nop
/* 6D084 800B2884 3C01801D */  lui        $at, %hi(D_801D7A00)
/* 6D088 800B2888 C4207A00 */  lwc1       $f0, %lo(D_801D7A00)($at)
/* 6D08C 800B288C C4AC0000 */  lwc1       $f12, 0x0($a1)
/* 6D090 800B2890 460C003C */  c.lt.s     $f0, $f12
/* 6D094 800B2894 46006586 */  mov.s      $f22, $f12
/* 6D098 800B2898 4502000D */  bc1fl      .L800B28D0
/* 6D09C 800B289C 461A0200 */   add.s     $f8, $f0, $f26
/* 6D0A0 800B28A0 1000000A */  b          .L800B28CC
/* 6D0A4 800B28A4 46000586 */   mov.s     $f22, $f0
.L800B28A8:
/* 6D0A8 800B28A8 C4207A00 */  lwc1       $f0, %lo(D_801D7A00)($at)
/* 6D0AC 800B28AC C4AC0000 */  lwc1       $f12, 0x0($a1)
/* 6D0B0 800B28B0 46000586 */  mov.s      $f22, $f0
/* 6D0B4 800B28B4 4600603C */  c.lt.s     $f12, $f0
/* 6D0B8 800B28B8 00000000 */  nop
/* 6D0BC 800B28BC 45020004 */  bc1fl      .L800B28D0
/* 6D0C0 800B28C0 461A0200 */   add.s     $f8, $f0, $f26
/* 6D0C4 800B28C4 460C0101 */  sub.s      $f4, $f0, $f12
/* 6D0C8 800B28C8 46047400 */  add.s      $f16, $f14, $f4
.L800B28CC:
/* 6D0CC 800B28CC 461A0200 */  add.s      $f8, $f0, $f26
.L800B28D0:
/* 6D0D0 800B28D0 460C403C */  c.lt.s     $f8, $f12
/* 6D0D4 800B28D4 00000000 */  nop
/* 6D0D8 800B28D8 45020003 */  bc1fl      .L800B28E8
/* 6D0DC 800B28DC 460C003C */   c.lt.s    $f0, $f12
/* 6D0E0 800B28E0 46009086 */  mov.s      $f2, $f18
/* 6D0E4 800B28E4 460C003C */  c.lt.s     $f0, $f12
.L800B28E8:
/* 6D0E8 800B28E8 00000000 */  nop
/* 6D0EC 800B28EC 4502000A */  bc1fl      .L800B2918
/* 6D0F0 800B28F0 3C013F40 */   lui       $at, (0x3F400000 >> 16)
/* 6D0F4 800B28F4 46006281 */  sub.s      $f10, $f12, $f0
/* 6D0F8 800B28F8 3C013D80 */  lui        $at, (0x3D800000 >> 16)
/* 6D0FC 800B28FC 44812000 */  mtc1       $at, $f4
/* 6D100 800B2900 460AD181 */  sub.s      $f6, $f26, $f10
/* 6D104 800B2904 46043202 */  mul.s      $f8, $f6, $f4
/* 6D108 800B2908 00000000 */  nop
/* 6D10C 800B290C 46081082 */  mul.s      $f2, $f2, $f8
/* 6D110 800B2910 00000000 */  nop
/* 6D114 800B2914 3C013F40 */  lui        $at, (0x3F400000 >> 16)
.L800B2918:
/* 6D118 800B2918 44815000 */  mtc1       $at, $f10
/* 6D11C 800B291C 8C6C1C38 */  lw         $t4, 0x1C38($v1)
/* 6D120 800B2920 C7A400CC */  lwc1       $f4, 0xCC($sp)
/* 6D124 800B2924 460A1082 */  mul.s      $f2, $f2, $f10
/* 6D128 800B2928 8D180000 */  lw         $t8, 0x0($t0)
/* 6D12C 800B292C 000C7880 */  sll        $t7, $t4, 2
/* 6D130 800B2930 01EC7823 */  subu       $t7, $t7, $t4
/* 6D134 800B2934 000F7900 */  sll        $t7, $t7, 4
/* 6D138 800B2938 01F87021 */  addu       $t6, $t7, $t8
/* 6D13C 800B293C C4C60000 */  lwc1       $f6, 0x0($a2)
/* 6D140 800B2940 46041202 */  mul.s      $f8, $f2, $f4
/* 6D144 800B2944 AFCE0000 */  sw         $t6, 0x0($fp)
/* 6D148 800B2948 3C01801D */  lui        $at, %hi(D_801D79E0)
/* 6D14C 800B294C C42479E0 */  lwc1       $f4, %lo(D_801D79E0)($at)
/* 6D150 800B2950 3C01801D */  lui        $at, %hi(D_801D79E8)
/* 6D154 800B2954 3C03800E */  lui        $v1, %hi(D_800E6D60)
/* 6D158 800B2958 46083281 */  sub.s      $f10, $f6, $f8
/* 6D15C 800B295C 46048182 */  mul.s      $f6, $f16, $f4
/* 6D160 800B2960 46065201 */  sub.s      $f8, $f10, $f6
/* 6D164 800B2964 E5C80000 */  swc1       $f8, 0x0($t6)
/* 6D168 800B2968 8FD90000 */  lw         $t9, 0x0($fp)
/* 6D16C 800B296C E7360004 */  swc1       $f22, 0x4($t9)
/* 6D170 800B2970 C7AA00C4 */  lwc1       $f10, 0xC4($sp)
/* 6D174 800B2974 C4E40000 */  lwc1       $f4, 0x0($a3)
/* 6D178 800B2978 8FCD0000 */  lw         $t5, 0x0($fp)
/* 6D17C 800B297C 460A1182 */  mul.s      $f6, $f2, $f10
/* 6D180 800B2980 C42A79E8 */  lwc1       $f10, %lo(D_801D79E8)($at)
/* 6D184 800B2984 3C01801D */  lui        $at, %hi(D_801D79E0)
/* 6D188 800B2988 46062201 */  sub.s      $f8, $f4, $f6
/* 6D18C 800B298C 460A8102 */  mul.s      $f4, $f16, $f10
/* 6D190 800B2990 46044181 */  sub.s      $f6, $f8, $f4
/* 6D194 800B2994 E5A60008 */  swc1       $f6, 0x8($t5)
/* 6D198 800B2998 C7AA00CC */  lwc1       $f10, 0xCC($sp)
/* 6D19C 800B299C C4C40000 */  lwc1       $f4, 0x0($a2)
/* 6D1A0 800B29A0 8FCC0000 */  lw         $t4, 0x0($fp)
/* 6D1A4 800B29A4 460A1202 */  mul.s      $f8, $f2, $f10
/* 6D1A8 800B29A8 C42A79E0 */  lwc1       $f10, %lo(D_801D79E0)($at)
/* 6D1AC 800B29AC 3C01801D */  lui        $at, %hi(D_801D79E8)
/* 6D1B0 800B29B0 46044180 */  add.s      $f6, $f8, $f4
/* 6D1B4 800B29B4 460A8202 */  mul.s      $f8, $f16, $f10
/* 6D1B8 800B29B8 46083101 */  sub.s      $f4, $f6, $f8
/* 6D1BC 800B29BC E584000C */  swc1       $f4, 0xC($t4)
/* 6D1C0 800B29C0 8FCF0000 */  lw         $t7, 0x0($fp)
/* 6D1C4 800B29C4 E5F60010 */  swc1       $f22, 0x10($t7)
/* 6D1C8 800B29C8 C7AA00C4 */  lwc1       $f10, 0xC4($sp)
/* 6D1CC 800B29CC C4E80000 */  lwc1       $f8, 0x0($a3)
/* 6D1D0 800B29D0 8FD80000 */  lw         $t8, 0x0($fp)
/* 6D1D4 800B29D4 460A1182 */  mul.s      $f6, $f2, $f10
/* 6D1D8 800B29D8 C42A79E8 */  lwc1       $f10, %lo(D_801D79E8)($at)
/* 6D1DC 800B29DC 3C01801D */  lui        $at, %hi(D_801D79C8)
/* 6D1E0 800B29E0 46083100 */  add.s      $f4, $f6, $f8
/* 6D1E4 800B29E4 460A8182 */  mul.s      $f6, $f16, $f10
/* 6D1E8 800B29E8 46062201 */  sub.s      $f8, $f4, $f6
/* 6D1EC 800B29EC E7080014 */  swc1       $f8, 0x14($t8)
/* 6D1F0 800B29F0 C42A79C8 */  lwc1       $f10, %lo(D_801D79C8)($at)
/* 6D1F4 800B29F4 3C01800F */  lui        $at, %hi(D_800EBBDC)
/* 6D1F8 800B29F8 C424BBDC */  lwc1       $f4, %lo(D_800EBBDC)($at)
/* 6D1FC 800B29FC 8FCE0000 */  lw         $t6, 0x0($fp)
/* 6D200 800B2A00 3C01801D */  lui        $at, %hi(D_801D79CC)
/* 6D204 800B2A04 46045182 */  mul.s      $f6, $f10, $f4
/* 6D208 800B2A08 E5C60018 */  swc1       $f6, 0x18($t6)
/* 6D20C 800B2A0C C42879CC */  lwc1       $f8, %lo(D_801D79CC)($at)
/* 6D210 800B2A10 3C01800F */  lui        $at, %hi(D_800EBBE0)
/* 6D214 800B2A14 C42ABBE0 */  lwc1       $f10, %lo(D_800EBBE0)($at)
/* 6D218 800B2A18 8FCB0000 */  lw         $t3, 0x0($fp)
/* 6D21C 800B2A1C 3C01801D */  lui        $at, %hi(D_801D79D0)
/* 6D220 800B2A20 460A4102 */  mul.s      $f4, $f8, $f10
/* 6D224 800B2A24 E564001C */  swc1       $f4, 0x1C($t3)
/* 6D228 800B2A28 C42679D0 */  lwc1       $f6, %lo(D_801D79D0)($at)
/* 6D22C 800B2A2C 3C01800F */  lui        $at, %hi(D_800EBBE4)
/* 6D230 800B2A30 C428BBE4 */  lwc1       $f8, %lo(D_800EBBE4)($at)
/* 6D234 800B2A34 8FD90000 */  lw         $t9, 0x0($fp)
/* 6D238 800B2A38 46083282 */  mul.s      $f10, $f6, $f8
/* 6D23C 800B2A3C E72A0020 */  swc1       $f10, 0x20($t9)
/* 6D240 800B2A40 8C636D60 */  lw         $v1, %lo(D_800E6D60)($v1)
/* 6D244 800B2A44 8C6D1C38 */  lw         $t5, 0x1C38($v1)
/* 6D248 800B2A48 25AC0001 */  addiu      $t4, $t5, 0x1
/* 6D24C 800B2A4C AC6C1C38 */  sw         $t4, 0x1C38($v1)
/* 6D250 800B2A50 3C03800E */  lui        $v1, %hi(D_800E6D60)
/* 6D254 800B2A54 8C636D60 */  lw         $v1, %lo(D_800E6D60)($v1)
/* 6D258 800B2A58 8C6F1C38 */  lw         $t7, 0x1C38($v1)
/* 6D25C 800B2A5C 05E10004 */  bgez       $t7, .L800B2A70
/* 6D260 800B2A60 31F80007 */   andi      $t8, $t7, 0x7
/* 6D264 800B2A64 13000002 */  beqz       $t8, .L800B2A70
/* 6D268 800B2A68 00000000 */   nop
/* 6D26C 800B2A6C 2718FFF8 */  addiu      $t8, $t8, -0x8
.L800B2A70:
/* 6D270 800B2A70 AC781C38 */  sw         $t8, 0x1C38($v1)
/* 6D274 800B2A74 8FBF0084 */  lw         $ra, 0x84($sp)
/* 6D278 800B2A78 8FBE0080 */  lw         $fp, 0x80($sp)
/* 6D27C 800B2A7C 8FB7007C */  lw         $s7, 0x7C($sp)
/* 6D280 800B2A80 8FB60078 */  lw         $s6, 0x78($sp)
/* 6D284 800B2A84 8FB50074 */  lw         $s5, 0x74($sp)
/* 6D288 800B2A88 8FB40070 */  lw         $s4, 0x70($sp)
/* 6D28C 800B2A8C 8FB3006C */  lw         $s3, 0x6C($sp)
/* 6D290 800B2A90 8FB20068 */  lw         $s2, 0x68($sp)
/* 6D294 800B2A94 8FB10064 */  lw         $s1, 0x64($sp)
/* 6D298 800B2A98 8FB00060 */  lw         $s0, 0x60($sp)
/* 6D29C 800B2A9C D7BE0058 */  ldc1       $f30, 0x58($sp)
/* 6D2A0 800B2AA0 D7BC0050 */  ldc1       $f28, 0x50($sp)
/* 6D2A4 800B2AA4 D7BA0048 */  ldc1       $f26, 0x48($sp)
/* 6D2A8 800B2AA8 D7B80040 */  ldc1       $f24, 0x40($sp)
/* 6D2AC 800B2AAC D7B60038 */  ldc1       $f22, 0x38($sp)
/* 6D2B0 800B2AB0 D7B40030 */  ldc1       $f20, 0x30($sp)
/* 6D2B4 800B2AB4 03E00008 */  jr         $ra
/* 6D2B8 800B2AB8 27BD01A0 */   addiu     $sp, $sp, 0x1A0

glabel func_800B2ABC
/* 6D2BC 800B2ABC 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 6D2C0 800B2AC0 AFBF0054 */  sw         $ra, 0x54($sp)
/* 6D2C4 800B2AC4 AFBE0050 */  sw         $fp, 0x50($sp)
/* 6D2C8 800B2AC8 AFB7004C */  sw         $s7, 0x4C($sp)
/* 6D2CC 800B2ACC AFB60048 */  sw         $s6, 0x48($sp)
/* 6D2D0 800B2AD0 AFB50044 */  sw         $s5, 0x44($sp)
/* 6D2D4 800B2AD4 AFB40040 */  sw         $s4, 0x40($sp)
/* 6D2D8 800B2AD8 AFB3003C */  sw         $s3, 0x3C($sp)
/* 6D2DC 800B2ADC AFB20038 */  sw         $s2, 0x38($sp)
/* 6D2E0 800B2AE0 AFB10034 */  sw         $s1, 0x34($sp)
/* 6D2E4 800B2AE4 0C03163C */  jal        func_800C58F0
/* 6D2E8 800B2AE8 AFB00030 */   sw        $s0, 0x30($sp)
/* 6D2EC 800B2AEC 3C0E8022 */  lui        $t6, %hi(D_80223930)
/* 6D2F0 800B2AF0 8DCE3930 */  lw         $t6, %lo(D_80223930)($t6)
/* 6D2F4 800B2AF4 3C01801D */  lui        $at, %hi(D_801D7B18)
/* 6D2F8 800B2AF8 3C188022 */  lui        $t8, %hi(D_80227C80)
/* 6D2FC 800B2AFC 000E7900 */  sll        $t7, $t6, 4
/* 6D300 800B2B00 01EE7821 */  addu       $t7, $t7, $t6
/* 6D304 800B2B04 000F7880 */  sll        $t7, $t7, 2
/* 6D308 800B2B08 01EE7823 */  subu       $t7, $t7, $t6
/* 6D30C 800B2B0C 3C13801D */  lui        $s3, %hi(D_801D7968)
/* 6D310 800B2B10 000F7880 */  sll        $t7, $t7, 2
/* 6D314 800B2B14 27187C80 */  addiu      $t8, $t8, %lo(D_80227C80)
/* 6D318 800B2B18 26737968 */  addiu      $s3, $s3, %lo(D_801D7968)
/* 6D31C 800B2B1C AC227B18 */  sw         $v0, %lo(D_801D7B18)($at)
/* 6D320 800B2B20 AC237B1C */  sw         $v1, %lo(D_801D7B1C)($at)
/* 6D324 800B2B24 01F88021 */  addu       $s0, $t7, $t8
/* 6D328 800B2B28 AE700000 */  sw         $s0, 0x0($s3)
/* 6D32C 800B2B2C 3C08801D */  lui        $t0, %hi(D_801D7978)
/* 6D330 800B2B30 3C09801D */  lui        $t1, %hi(D_801D797C)
/* 6D334 800B2B34 2529797C */  addiu      $t1, $t1, %lo(D_801D797C)
/* 6D338 800B2B38 25087978 */  addiu      $t0, $t0, %lo(D_801D7978)
/* 6D33C 800B2B3C 8E06006C */  lw         $a2, 0x6C($s0)
/* 6D340 800B2B40 C60E0068 */  lwc1       $f14, 0x68($s0)
/* 6D344 800B2B44 C60C0064 */  lwc1       $f12, 0x64($s0)
/* 6D348 800B2B48 3C07801D */  lui        $a3, %hi(D_801D7974)
/* 6D34C 800B2B4C 24E77974 */  addiu      $a3, $a3, %lo(D_801D7974)
/* 6D350 800B2B50 AFA90014 */  sw         $t1, 0x14($sp)
/* 6D354 800B2B54 0C07B6F5 */  jal        func_801EDBD4
/* 6D358 800B2B58 AFA80010 */   sw        $t0, 0x10($sp)
/* 6D35C 800B2B5C 8E700000 */  lw         $s0, 0x0($s3)
/* 6D360 800B2B60 44800000 */  mtc1       $zero, $f0
/* 6D364 800B2B64 3C11801D */  lui        $s1, %hi(D_801D7980)
/* 6D368 800B2B68 C60C0064 */  lwc1       $f12, 0x64($s0)
/* 6D36C 800B2B6C 3C12801D */  lui        $s2, %hi(D_801D7984)
/* 6D370 800B2B70 3C14801D */  lui        $s4, %hi(D_801D7988)
/* 6D374 800B2B74 460C0032 */  c.eq.s     $f0, $f12
/* 6D378 800B2B78 26947988 */  addiu      $s4, $s4, %lo(D_801D7988)
/* 6D37C 800B2B7C 26527984 */  addiu      $s2, $s2, %lo(D_801D7984)
/* 6D380 800B2B80 26317980 */  addiu      $s1, $s1, %lo(D_801D7980)
/* 6D384 800B2B84 45000006 */  bc1f       .L800B2BA0
/* 6D388 800B2B88 3C013F80 */   lui       $at, (0x3F800000 >> 16)
/* 6D38C 800B2B8C C604006C */  lwc1       $f4, 0x6C($s0)
/* 6D390 800B2B90 46040032 */  c.eq.s     $f0, $f4
/* 6D394 800B2B94 00000000 */  nop
/* 6D398 800B2B98 45030021 */  bc1tl      .L800B2C20
/* 6D39C 800B2B9C 3C013F80 */   lui       $at, (0x3F800000 >> 16)
.L800B2BA0:
/* 6D3A0 800B2BA0 C60E0068 */  lwc1       $f14, 0x68($s0)
/* 6D3A4 800B2BA4 8E06006C */  lw         $a2, 0x6C($s0)
/* 6D3A8 800B2BA8 44813000 */  mtc1       $at, $f6
/* 6D3AC 800B2BAC 44070000 */  mfc1       $a3, $f0
/* 6D3B0 800B2BB0 AFB40020 */  sw         $s4, 0x20($sp)
/* 6D3B4 800B2BB4 AFB2001C */  sw         $s2, 0x1C($sp)
/* 6D3B8 800B2BB8 AFB10018 */  sw         $s1, 0x18($sp)
/* 6D3BC 800B2BBC E7A00014 */  swc1       $f0, 0x14($sp)
/* 6D3C0 800B2BC0 0C07B6B8 */  jal        func_801EDAE0
/* 6D3C4 800B2BC4 E7A60010 */   swc1      $f6, 0x10($sp)
/* 6D3C8 800B2BC8 8E700000 */  lw         $s0, 0x0($s3)
/* 6D3CC 800B2BCC 3C0A801D */  lui        $t2, %hi(D_801D798C)
/* 6D3D0 800B2BD0 3C0B801D */  lui        $t3, %hi(D_801D7990)
/* 6D3D4 800B2BD4 C6080068 */  lwc1       $f8, 0x68($s0)
/* 6D3D8 800B2BD8 8E070064 */  lw         $a3, 0x64($s0)
/* 6D3DC 800B2BDC 3C0C801D */  lui        $t4, %hi(D_801D7994)
/* 6D3E0 800B2BE0 E7A80010 */  swc1       $f8, 0x10($sp)
/* 6D3E4 800B2BE4 C60A006C */  lwc1       $f10, 0x6C($s0)
/* 6D3E8 800B2BE8 258C7994 */  addiu      $t4, $t4, %lo(D_801D7994)
/* 6D3EC 800B2BEC 256B7990 */  addiu      $t3, $t3, %lo(D_801D7990)
/* 6D3F0 800B2BF0 254A798C */  addiu      $t2, $t2, %lo(D_801D798C)
/* 6D3F4 800B2BF4 AFAA0018 */  sw         $t2, 0x18($sp)
/* 6D3F8 800B2BF8 AFAB001C */  sw         $t3, 0x1C($sp)
/* 6D3FC 800B2BFC AFAC0020 */  sw         $t4, 0x20($sp)
/* 6D400 800B2C00 C62C0000 */  lwc1       $f12, 0x0($s1)
/* 6D404 800B2C04 C64E0000 */  lwc1       $f14, 0x0($s2)
/* 6D408 800B2C08 8E860000 */  lw         $a2, 0x0($s4)
/* 6D40C 800B2C0C 0C07B6B8 */  jal        func_801EDAE0
/* 6D410 800B2C10 E7AA0014 */   swc1      $f10, 0x14($sp)
/* 6D414 800B2C14 10000014 */  b          .L800B2C68
/* 6D418 800B2C18 00000000 */   nop
/* 6D41C 800B2C1C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
.L800B2C20:
/* 6D420 800B2C20 44818000 */  mtc1       $at, $f16
/* 6D424 800B2C24 3C11801D */  lui        $s1, %hi(D_801D7980)
/* 6D428 800B2C28 3C12801D */  lui        $s2, %hi(D_801D7984)
/* 6D42C 800B2C2C 3C14801D */  lui        $s4, %hi(D_801D7988)
/* 6D430 800B2C30 26947988 */  addiu      $s4, $s4, %lo(D_801D7988)
/* 6D434 800B2C34 26527984 */  addiu      $s2, $s2, %lo(D_801D7984)
/* 6D438 800B2C38 26317980 */  addiu      $s1, $s1, %lo(D_801D7980)
/* 6D43C 800B2C3C E6400000 */  swc1       $f0, 0x0($s2)
/* 6D440 800B2C40 E6800000 */  swc1       $f0, 0x0($s4)
/* 6D444 800B2C44 3C01801D */  lui        $at, %hi(D_801D798C)
/* 6D448 800B2C48 E6300000 */  swc1       $f16, 0x0($s1)
/* 6D44C 800B2C4C E420798C */  swc1       $f0, %lo(D_801D798C)($at)
/* 6D450 800B2C50 3C01801D */  lui        $at, %hi(D_801D7990)
/* 6D454 800B2C54 E4207990 */  swc1       $f0, %lo(D_801D7990)($at)
/* 6D458 800B2C58 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 6D45C 800B2C5C 44819000 */  mtc1       $at, $f18
/* 6D460 800B2C60 3C01801D */  lui        $at, %hi(D_801D7994)
/* 6D464 800B2C64 E4327994 */  swc1       $f18, %lo(D_801D7994)($at)
.L800B2C68:
/* 6D468 800B2C68 3C0D800E */  lui        $t5, %hi(D_800DAB28)
/* 6D46C 800B2C6C 8DADAB28 */  lw         $t5, %lo(D_800DAB28)($t5)
/* 6D470 800B2C70 24010002 */  addiu      $at, $zero, 0x2
/* 6D474 800B2C74 3C0E8022 */  lui        $t6, %hi(D_80223934)
/* 6D478 800B2C78 15A10057 */  bne        $t5, $at, .L800B2DD8
/* 6D47C 800B2C7C 3C188022 */   lui       $t8, %hi(D_80227C80)
/* 6D480 800B2C80 8DCE3934 */  lw         $t6, %lo(D_80223934)($t6)
/* 6D484 800B2C84 27187C80 */  addiu      $t8, $t8, %lo(D_80227C80)
/* 6D488 800B2C88 3C08801D */  lui        $t0, %hi(D_801D799C)
/* 6D48C 800B2C8C 000E7900 */  sll        $t7, $t6, 4
/* 6D490 800B2C90 01EE7821 */  addu       $t7, $t7, $t6
/* 6D494 800B2C94 000F7880 */  sll        $t7, $t7, 2
/* 6D498 800B2C98 01EE7823 */  subu       $t7, $t7, $t6
/* 6D49C 800B2C9C 000F7880 */  sll        $t7, $t7, 2
/* 6D4A0 800B2CA0 01F88021 */  addu       $s0, $t7, $t8
/* 6D4A4 800B2CA4 AE700000 */  sw         $s0, 0x0($s3)
/* 6D4A8 800B2CA8 3C09801D */  lui        $t1, %hi(D_801D79A0)
/* 6D4AC 800B2CAC 252979A0 */  addiu      $t1, $t1, %lo(D_801D79A0)
/* 6D4B0 800B2CB0 8E06006C */  lw         $a2, 0x6C($s0)
/* 6D4B4 800B2CB4 C60E0068 */  lwc1       $f14, 0x68($s0)
/* 6D4B8 800B2CB8 C60C0064 */  lwc1       $f12, 0x64($s0)
/* 6D4BC 800B2CBC 2508799C */  addiu      $t0, $t0, %lo(D_801D799C)
/* 6D4C0 800B2CC0 3C07801D */  lui        $a3, %hi(D_801D7998)
/* 6D4C4 800B2CC4 24E77998 */  addiu      $a3, $a3, %lo(D_801D7998)
/* 6D4C8 800B2CC8 AFA80010 */  sw         $t0, 0x10($sp)
/* 6D4CC 800B2CCC 0C07B6F5 */  jal        func_801EDBD4
/* 6D4D0 800B2CD0 AFA90014 */   sw        $t1, 0x14($sp)
/* 6D4D4 800B2CD4 8E700000 */  lw         $s0, 0x0($s3)
/* 6D4D8 800B2CD8 44800000 */  mtc1       $zero, $f0
/* 6D4DC 800B2CDC 3C11801D */  lui        $s1, %hi(D_801D79A4)
/* 6D4E0 800B2CE0 C60C0064 */  lwc1       $f12, 0x64($s0)
/* 6D4E4 800B2CE4 3C12801D */  lui        $s2, %hi(D_801D79A8)
/* 6D4E8 800B2CE8 3C14801D */  lui        $s4, %hi(D_801D79AC)
/* 6D4EC 800B2CEC 460C0032 */  c.eq.s     $f0, $f12
/* 6D4F0 800B2CF0 269479AC */  addiu      $s4, $s4, %lo(D_801D79AC)
/* 6D4F4 800B2CF4 265279A8 */  addiu      $s2, $s2, %lo(D_801D79A8)
/* 6D4F8 800B2CF8 263179A4 */  addiu      $s1, $s1, %lo(D_801D79A4)
/* 6D4FC 800B2CFC 45000006 */  bc1f       .L800B2D18
/* 6D500 800B2D00 3C013F80 */   lui       $at, (0x3F800000 >> 16)
/* 6D504 800B2D04 C604006C */  lwc1       $f4, 0x6C($s0)
/* 6D508 800B2D08 46040032 */  c.eq.s     $f0, $f4
/* 6D50C 800B2D0C 00000000 */  nop
/* 6D510 800B2D10 45030021 */  bc1tl      .L800B2D98
/* 6D514 800B2D14 3C013F80 */   lui       $at, (0x3F800000 >> 16)
.L800B2D18:
/* 6D518 800B2D18 C60E0068 */  lwc1       $f14, 0x68($s0)
/* 6D51C 800B2D1C 8E06006C */  lw         $a2, 0x6C($s0)
/* 6D520 800B2D20 44813000 */  mtc1       $at, $f6
/* 6D524 800B2D24 44070000 */  mfc1       $a3, $f0
/* 6D528 800B2D28 AFB40020 */  sw         $s4, 0x20($sp)
/* 6D52C 800B2D2C AFB2001C */  sw         $s2, 0x1C($sp)
/* 6D530 800B2D30 AFB10018 */  sw         $s1, 0x18($sp)
/* 6D534 800B2D34 E7A00014 */  swc1       $f0, 0x14($sp)
/* 6D538 800B2D38 0C07B6B8 */  jal        func_801EDAE0
/* 6D53C 800B2D3C E7A60010 */   swc1      $f6, 0x10($sp)
/* 6D540 800B2D40 8E700000 */  lw         $s0, 0x0($s3)
/* 6D544 800B2D44 3C0A801D */  lui        $t2, %hi(D_801D79B0)
/* 6D548 800B2D48 3C0B801D */  lui        $t3, %hi(D_801D79B4)
/* 6D54C 800B2D4C C6080068 */  lwc1       $f8, 0x68($s0)
/* 6D550 800B2D50 8E070064 */  lw         $a3, 0x64($s0)
/* 6D554 800B2D54 3C0C801D */  lui        $t4, %hi(D_801D79B8)
/* 6D558 800B2D58 E7A80010 */  swc1       $f8, 0x10($sp)
/* 6D55C 800B2D5C C60A006C */  lwc1       $f10, 0x6C($s0)
/* 6D560 800B2D60 258C79B8 */  addiu      $t4, $t4, %lo(D_801D79B8)
/* 6D564 800B2D64 256B79B4 */  addiu      $t3, $t3, %lo(D_801D79B4)
/* 6D568 800B2D68 254A79B0 */  addiu      $t2, $t2, %lo(D_801D79B0)
/* 6D56C 800B2D6C AFAA0018 */  sw         $t2, 0x18($sp)
/* 6D570 800B2D70 AFAB001C */  sw         $t3, 0x1C($sp)
/* 6D574 800B2D74 AFAC0020 */  sw         $t4, 0x20($sp)
/* 6D578 800B2D78 C62C0000 */  lwc1       $f12, 0x0($s1)
/* 6D57C 800B2D7C C64E0000 */  lwc1       $f14, 0x0($s2)
/* 6D580 800B2D80 8E860000 */  lw         $a2, 0x0($s4)
/* 6D584 800B2D84 0C07B6B8 */  jal        func_801EDAE0
/* 6D588 800B2D88 E7AA0014 */   swc1      $f10, 0x14($sp)
/* 6D58C 800B2D8C 10000012 */  b          .L800B2DD8
/* 6D590 800B2D90 00000000 */   nop
/* 6D594 800B2D94 3C013F80 */  lui        $at, (0x3F800000 >> 16)
.L800B2D98:
/* 6D598 800B2D98 44811000 */  mtc1       $at, $f2
/* 6D59C 800B2D9C 3C11801D */  lui        $s1, %hi(D_801D79A4)
/* 6D5A0 800B2DA0 3C12801D */  lui        $s2, %hi(D_801D79A8)
/* 6D5A4 800B2DA4 3C14801D */  lui        $s4, %hi(D_801D79AC)
/* 6D5A8 800B2DA8 269479AC */  addiu      $s4, $s4, %lo(D_801D79AC)
/* 6D5AC 800B2DAC 265279A8 */  addiu      $s2, $s2, %lo(D_801D79A8)
/* 6D5B0 800B2DB0 263179A4 */  addiu      $s1, $s1, %lo(D_801D79A4)
/* 6D5B4 800B2DB4 E6400000 */  swc1       $f0, 0x0($s2)
/* 6D5B8 800B2DB8 E6800000 */  swc1       $f0, 0x0($s4)
/* 6D5BC 800B2DBC 3C01801D */  lui        $at, %hi(D_801D79B0)
/* 6D5C0 800B2DC0 E6220000 */  swc1       $f2, 0x0($s1)
/* 6D5C4 800B2DC4 E42079B0 */  swc1       $f0, %lo(D_801D79B0)($at)
/* 6D5C8 800B2DC8 3C01801D */  lui        $at, %hi(D_801D79B4)
/* 6D5CC 800B2DCC E42079B4 */  swc1       $f0, %lo(D_801D79B4)($at)
/* 6D5D0 800B2DD0 3C01801D */  lui        $at, %hi(D_801D79B8)
/* 6D5D4 800B2DD4 E42279B8 */  swc1       $f2, %lo(D_801D79B8)($at)
.L800B2DD8:
/* 6D5D8 800B2DD8 3C0D801D */  lui        $t5, %hi(D_801D0790)
/* 6D5DC 800B2DDC 8DAD0790 */  lw         $t5, %lo(D_801D0790)($t5)
/* 6D5E0 800B2DE0 3C11801D */  lui        $s1, %hi(D_801D0798)
/* 6D5E4 800B2DE4 26310798 */  addiu      $s1, $s1, %lo(D_801D0798)
/* 6D5E8 800B2DE8 19A0005E */  blez       $t5, .L800B2F64
/* 6D5EC 800B2DEC 00008025 */   or        $s0, $zero, $zero
/* 6D5F0 800B2DF0 3C17800E */  lui        $s7, %hi(D_800E6D80)
/* 6D5F4 800B2DF4 3C16800E */  lui        $s6, %hi(D_800E6D78)
/* 6D5F8 800B2DF8 3C15800E */  lui        $s5, %hi(D_800E6D70)
/* 6D5FC 800B2DFC 3C14800E */  lui        $s4, %hi(D_800E6D68)
/* 6D600 800B2E00 3C12800E */  lui        $s2, %hi(D_800E6D60)
/* 6D604 800B2E04 26526D60 */  addiu      $s2, $s2, %lo(D_800E6D60)
/* 6D608 800B2E08 26946D68 */  addiu      $s4, $s4, %lo(D_800E6D68)
/* 6D60C 800B2E0C 26B56D70 */  addiu      $s5, $s5, %lo(D_800E6D70)
/* 6D610 800B2E10 26D66D78 */  addiu      $s6, $s6, %lo(D_800E6D78)
/* 6D614 800B2E14 26F76D80 */  addiu      $s7, $s7, %lo(D_800E6D80)
/* 6D618 800B2E18 241E0001 */  addiu      $fp, $zero, 0x1
/* 6D61C 800B2E1C 262E1000 */  addiu      $t6, $s1, 0x1000
.L800B2E20:
/* 6D620 800B2E20 262F1A00 */  addiu      $t7, $s1, 0x1A00
/* 6D624 800B2E24 26381AA0 */  addiu      $t8, $s1, 0x1AA0
/* 6D628 800B2E28 AE510000 */  sw         $s1, 0x0($s2)
/* 6D62C 800B2E2C AE910000 */  sw         $s1, 0x0($s4)
/* 6D630 800B2E30 AEAE0000 */  sw         $t6, 0x0($s5)
/* 6D634 800B2E34 AECF0000 */  sw         $t7, 0x0($s6)
/* 6D638 800B2E38 AEF80000 */  sw         $t8, 0x0($s7)
/* 6D63C 800B2E3C 0C02B884 */  jal        func_800AE210
/* 6D640 800B2E40 02002025 */   or        $a0, $s0, $zero
/* 6D644 800B2E44 3C02800E */  lui        $v0, %hi(D_800DAB28)
/* 6D648 800B2E48 8C42AB28 */  lw         $v0, %lo(D_800DAB28)($v0)
/* 6D64C 800B2E4C 24010002 */  addiu      $at, $zero, 0x2
/* 6D650 800B2E50 3C088022 */  lui        $t0, %hi(D_80223930)
/* 6D654 800B2E54 13C20006 */  beq        $fp, $v0, .L800B2E70
/* 6D658 800B2E58 3C0A8022 */   lui       $t2, %hi(D_80227C80)
/* 6D65C 800B2E5C 14410018 */  bne        $v0, $at, .L800B2EC0
/* 6D660 800B2E60 3C19800D */   lui       $t9, %hi(D_800D48E0)
/* 6D664 800B2E64 8F3948E0 */  lw         $t9, %lo(D_800D48E0)($t9)
/* 6D668 800B2E68 12190015 */  beq        $s0, $t9, .L800B2EC0
/* 6D66C 800B2E6C 00000000 */   nop
.L800B2E70:
/* 6D670 800B2E70 8D083930 */  lw         $t0, %lo(D_80223930)($t0)
/* 6D674 800B2E74 254A7C80 */  addiu      $t2, $t2, %lo(D_80227C80)
/* 6D678 800B2E78 3C0B8022 */  lui        $t3, %hi(D_80223934)
/* 6D67C 800B2E7C 00084900 */  sll        $t1, $t0, 4
/* 6D680 800B2E80 01284821 */  addu       $t1, $t1, $t0
/* 6D684 800B2E84 00094880 */  sll        $t1, $t1, 2
/* 6D688 800B2E88 01284823 */  subu       $t1, $t1, $t0
/* 6D68C 800B2E8C 00094880 */  sll        $t1, $t1, 2
/* 6D690 800B2E90 012A1021 */  addu       $v0, $t1, $t2
/* 6D694 800B2E94 AE620000 */  sw         $v0, 0x0($s3)
/* 6D698 800B2E98 8D6B3934 */  lw         $t3, %lo(D_80223934)($t3)
/* 6D69C 800B2E9C 3C0D8022 */  lui        $t5, %hi(D_80227C80)
/* 6D6A0 800B2EA0 25AD7C80 */  addiu      $t5, $t5, %lo(D_80227C80)
/* 6D6A4 800B2EA4 000B6100 */  sll        $t4, $t3, 4
/* 6D6A8 800B2EA8 018B6021 */  addu       $t4, $t4, $t3
/* 6D6AC 800B2EAC 000C6080 */  sll        $t4, $t4, 2
/* 6D6B0 800B2EB0 018B6023 */  subu       $t4, $t4, $t3
/* 6D6B4 800B2EB4 000C6080 */  sll        $t4, $t4, 2
/* 6D6B8 800B2EB8 10000016 */  b          .L800B2F14
/* 6D6BC 800B2EBC 018D1821 */   addu      $v1, $t4, $t5
.L800B2EC0:
/* 6D6C0 800B2EC0 3C0E8022 */  lui        $t6, %hi(D_80223934)
/* 6D6C4 800B2EC4 8DCE3934 */  lw         $t6, %lo(D_80223934)($t6)
/* 6D6C8 800B2EC8 3C188022 */  lui        $t8, %hi(D_80227C80)
/* 6D6CC 800B2ECC 27187C80 */  addiu      $t8, $t8, %lo(D_80227C80)
/* 6D6D0 800B2ED0 000E7900 */  sll        $t7, $t6, 4
/* 6D6D4 800B2ED4 01EE7821 */  addu       $t7, $t7, $t6
/* 6D6D8 800B2ED8 000F7880 */  sll        $t7, $t7, 2
/* 6D6DC 800B2EDC 01EE7823 */  subu       $t7, $t7, $t6
/* 6D6E0 800B2EE0 000F7880 */  sll        $t7, $t7, 2
/* 6D6E4 800B2EE4 01F81821 */  addu       $v1, $t7, $t8
/* 6D6E8 800B2EE8 AE630000 */  sw         $v1, 0x0($s3)
/* 6D6EC 800B2EEC 3C198022 */  lui        $t9, %hi(D_80223930)
/* 6D6F0 800B2EF0 8F393930 */  lw         $t9, %lo(D_80223930)($t9)
/* 6D6F4 800B2EF4 3C098022 */  lui        $t1, %hi(D_80227C80)
/* 6D6F8 800B2EF8 25297C80 */  addiu      $t1, $t1, %lo(D_80227C80)
/* 6D6FC 800B2EFC 00194100 */  sll        $t0, $t9, 4
/* 6D700 800B2F00 01194021 */  addu       $t0, $t0, $t9
/* 6D704 800B2F04 00084080 */  sll        $t0, $t0, 2
/* 6D708 800B2F08 01194023 */  subu       $t0, $t0, $t9
/* 6D70C 800B2F0C 00084080 */  sll        $t0, $t0, 2
/* 6D710 800B2F10 01091021 */  addu       $v0, $t0, $t1
.L800B2F14:
/* 6D714 800B2F14 3C01801D */  lui        $at, %hi(D_801D796C)
/* 6D718 800B2F18 AC22796C */  sw         $v0, %lo(D_801D796C)($at)
/* 6D71C 800B2F1C 3C0A801D */  lui        $t2, %hi(D_801CE624)
/* 6D720 800B2F20 854AE624 */  lh         $t2, %lo(D_801CE624)($t2)
/* 6D724 800B2F24 3C01801D */  lui        $at, %hi(D_801D7970)
/* 6D728 800B2F28 AC237970 */  sw         $v1, %lo(D_801D7970)($at)
/* 6D72C 800B2F2C 2401FFFF */  addiu      $at, $zero, -0x1
/* 6D730 800B2F30 15410003 */  bne        $t2, $at, .L800B2F40
/* 6D734 800B2F34 00000000 */   nop
/* 6D738 800B2F38 0C02C23E */  jal        func_800B08F8
/* 6D73C 800B2F3C 02002025 */   or        $a0, $s0, $zero
.L800B2F40:
/* 6D740 800B2F40 0C02BEF4 */  jal        func_800AFBD0
/* 6D744 800B2F44 02002025 */   or        $a0, $s0, $zero
/* 6D748 800B2F48 3C0B801D */  lui        $t3, %hi(D_801D0790)
/* 6D74C 800B2F4C 8D6B0790 */  lw         $t3, %lo(D_801D0790)($t3)
/* 6D750 800B2F50 26100001 */  addiu      $s0, $s0, 0x1
/* 6D754 800B2F54 26311C74 */  addiu      $s1, $s1, 0x1C74
/* 6D758 800B2F58 020B082A */  slt        $at, $s0, $t3
/* 6D75C 800B2F5C 5420FFB0 */  bnel       $at, $zero, .L800B2E20
/* 6D760 800B2F60 262E1000 */   addiu     $t6, $s1, 0x1000
.L800B2F64:
/* 6D764 800B2F64 0C03163C */  jal        func_800C58F0
/* 6D768 800B2F68 00000000 */   nop
/* 6D76C 800B2F6C 3C07801D */  lui        $a3, %hi(D_801D7B18)
/* 6D770 800B2F70 24E77B18 */  addiu      $a3, $a3, %lo(D_801D7B18)
/* 6D774 800B2F74 8CED0004 */  lw         $t5, 0x4($a3)
/* 6D778 800B2F78 3C04801D */  lui        $a0, %hi(D_801D7B28)
/* 6D77C 800B2F7C 8CEC0000 */  lw         $t4, 0x0($a3)
/* 6D780 800B2F80 24847B28 */  addiu      $a0, $a0, %lo(D_801D7B28)
/* 6D784 800B2F84 8C890004 */  lw         $t1, 0x4($a0)
/* 6D788 800B2F88 006D082B */  sltu       $at, $v1, $t5
/* 6D78C 800B2F8C 006D7823 */  subu       $t7, $v1, $t5
/* 6D790 800B2F90 004C7023 */  subu       $t6, $v0, $t4
/* 6D794 800B2F94 8C880000 */  lw         $t0, 0x0($a0)
/* 6D798 800B2F98 01C17023 */  subu       $t6, $t6, $at
/* 6D79C 800B2F9C 012F6821 */  addu       $t5, $t1, $t7
/* 6D7A0 800B2FA0 3C05801D */  lui        $a1, %hi(D_801D7B30)
/* 6D7A4 800B2FA4 01AF082B */  sltu       $at, $t5, $t7
/* 6D7A8 800B2FA8 24A57B30 */  addiu      $a1, $a1, %lo(D_801D7B30)
/* 6D7AC 800B2FAC ACEF0004 */  sw         $t7, 0x4($a3)
/* 6D7B0 800B2FB0 AFAF005C */  sw         $t7, 0x5C($sp)
/* 6D7B4 800B2FB4 8CAF0004 */  lw         $t7, 0x4($a1)
/* 6D7B8 800B2FB8 00286021 */  addu       $t4, $at, $t0
/* 6D7BC 800B2FBC ACEE0000 */  sw         $t6, 0x0($a3)
/* 6D7C0 800B2FC0 3C06801D */  lui        $a2, %hi(D_801D7B20)
/* 6D7C4 800B2FC4 018E6021 */  addu       $t4, $t4, $t6
/* 6D7C8 800B2FC8 AFAE0058 */  sw         $t6, 0x58($sp)
/* 6D7CC 800B2FCC 8CAE0000 */  lw         $t6, 0x0($a1)
/* 6D7D0 800B2FD0 24C67B20 */  addiu      $a2, $a2, %lo(D_801D7B20)
/* 6D7D4 800B2FD4 8CC80000 */  lw         $t0, 0x0($a2)
/* 6D7D8 800B2FD8 8FAA0058 */  lw         $t2, 0x58($sp)
/* 6D7DC 800B2FDC 25F90001 */  addiu      $t9, $t7, 0x1
/* 6D7E0 800B2FE0 2F210001 */  sltiu      $at, $t9, 0x1
/* 6D7E4 800B2FE4 01C1C021 */  addu       $t8, $t6, $at
/* 6D7E8 800B2FE8 0148082B */  sltu       $at, $t2, $t0
/* 6D7EC 800B2FEC AC8C0000 */  sw         $t4, 0x0($a0)
/* 6D7F0 800B2FF0 AC8D0004 */  sw         $t5, 0x4($a0)
/* 6D7F4 800B2FF4 ACB80000 */  sw         $t8, 0x0($a1)
/* 6D7F8 800B2FF8 ACB90004 */  sw         $t9, 0x4($a1)
/* 6D7FC 800B2FFC 8CC90004 */  lw         $t1, 0x4($a2)
/* 6D800 800B3000 14200008 */  bnez       $at, .L800B3024
/* 6D804 800B3004 8FAB005C */   lw        $t3, 0x5C($sp)
/* 6D808 800B3008 010A082B */  sltu       $at, $t0, $t2
/* 6D80C 800B300C 14200003 */  bnez       $at, .L800B301C
/* 6D810 800B3010 012B082B */   sltu      $at, $t1, $t3
/* 6D814 800B3014 10200003 */  beqz       $at, .L800B3024
/* 6D818 800B3018 00000000 */   nop
.L800B301C:
/* 6D81C 800B301C ACCA0000 */  sw         $t2, 0x0($a2)
/* 6D820 800B3020 ACCB0004 */  sw         $t3, 0x4($a2)
.L800B3024:
/* 6D824 800B3024 0C02BD47 */  jal        func_800AF51C
/* 6D828 800B3028 00000000 */   nop
/* 6D82C 800B302C 8FBF0054 */  lw         $ra, 0x54($sp)
/* 6D830 800B3030 8FB00030 */  lw         $s0, 0x30($sp)
/* 6D834 800B3034 8FB10034 */  lw         $s1, 0x34($sp)
/* 6D838 800B3038 8FB20038 */  lw         $s2, 0x38($sp)
/* 6D83C 800B303C 8FB3003C */  lw         $s3, 0x3C($sp)
/* 6D840 800B3040 8FB40040 */  lw         $s4, 0x40($sp)
/* 6D844 800B3044 8FB50044 */  lw         $s5, 0x44($sp)
/* 6D848 800B3048 8FB60048 */  lw         $s6, 0x48($sp)
/* 6D84C 800B304C 8FB7004C */  lw         $s7, 0x4C($sp)
/* 6D850 800B3050 8FBE0050 */  lw         $fp, 0x50($sp)
/* 6D854 800B3054 03E00008 */  jr         $ra
/* 6D858 800B3058 27BD0078 */   addiu     $sp, $sp, 0x78

glabel func_800B305C
/* 6D85C 800B305C 27BDFE60 */  addiu      $sp, $sp, -0x1A0
/* 6D860 800B3060 AFBF003C */  sw         $ra, 0x3C($sp)
/* 6D864 800B3064 AFB1001C */  sw         $s1, 0x1C($sp)
/* 6D868 800B3068 00808825 */  or         $s1, $a0, $zero
/* 6D86C 800B306C AFBE0038 */  sw         $fp, 0x38($sp)
/* 6D870 800B3070 AFB70034 */  sw         $s7, 0x34($sp)
/* 6D874 800B3074 AFB60030 */  sw         $s6, 0x30($sp)
/* 6D878 800B3078 AFB5002C */  sw         $s5, 0x2C($sp)
/* 6D87C 800B307C AFB40028 */  sw         $s4, 0x28($sp)
/* 6D880 800B3080 AFB30024 */  sw         $s3, 0x24($sp)
/* 6D884 800B3084 AFB20020 */  sw         $s2, 0x20($sp)
/* 6D888 800B3088 0C03163C */  jal        func_800C58F0
/* 6D88C 800B308C AFB00018 */   sw        $s0, 0x18($sp)
/* 6D890 800B3090 3C01801D */  lui        $at, %hi(D_801D7B38)
/* 6D894 800B3094 AC227B38 */  sw         $v0, %lo(D_801D7B38)($at)
/* 6D898 800B3098 AC237B3C */  sw         $v1, %lo(D_801D7B3C)($at)
/* 6D89C 800B309C 8E250000 */  lw         $a1, 0x0($s1)
/* 6D8A0 800B30A0 3C080600 */  lui        $t0, (0x6000000 >> 16)
/* 6D8A4 800B30A4 3C0E801B */  lui        $t6, %hi(D_801AE94C)
/* 6D8A8 800B30A8 ACA80000 */  sw         $t0, 0x0($a1)
/* 6D8AC 800B30AC 3C0F801B */  lui        $t7, %hi(D_801AE948)
/* 6D8B0 800B30B0 8DEFE948 */  lw         $t7, %lo(D_801AE948)($t7)
/* 6D8B4 800B30B4 8DCEE94C */  lw         $t6, %lo(D_801AE94C)($t6)
/* 6D8B8 800B30B8 3C100500 */  lui        $s0, %hi(D_5000000)
/* 6D8BC 800B30BC 26100000 */  addiu      $s0, $s0, %lo(D_5000000)
/* 6D8C0 800B30C0 01CFC023 */  subu       $t8, $t6, $t7
/* 6D8C4 800B30C4 0018C8C2 */  srl        $t9, $t8, 3
/* 6D8C8 800B30C8 001970C0 */  sll        $t6, $t9, 3
/* 6D8CC 800B30CC 020E7821 */  addu       $t7, $s0, $t6
/* 6D8D0 800B30D0 ACAF0004 */  sw         $t7, 0x4($a1)
/* 6D8D4 800B30D4 24A40008 */  addiu      $a0, $a1, 0x8
/* 6D8D8 800B30D8 AE240000 */  sw         $a0, 0x0($s1)
/* 6D8DC 800B30DC 3C18801B */  lui        $t8, %hi(D_801AE94C)
/* 6D8E0 800B30E0 8F18E94C */  lw         $t8, %lo(D_801AE94C)($t8)
/* 6D8E4 800B30E4 3C0E0105 */  lui        $t6, %hi(D_10514D0)
/* 6D8E8 800B30E8 25CE14D0 */  addiu      $t6, $t6, %lo(D_10514D0)
/* 6D8EC 800B30EC AFB80170 */  sw         $t8, 0x170($sp)
/* 6D8F0 800B30F0 27190008 */  addiu      $t9, $t8, 0x8
/* 6D8F4 800B30F4 AFB90170 */  sw         $t9, 0x170($sp)
/* 6D8F8 800B30F8 3C07800E */  lui        $a3, %hi(D_800DAB28)
/* 6D8FC 800B30FC AF0E0004 */  sw         $t6, 0x4($t8)
/* 6D900 800B3100 AF080000 */  sw         $t0, 0x0($t8)
/* 6D904 800B3104 8CE7AB28 */  lw         $a3, %lo(D_800DAB28)($a3)
/* 6D908 800B3108 3C1F800E */  lui        $ra, %hi(D_800DAB2C)
/* 6D90C 800B310C 8FFFAB2C */  lw         $ra, %lo(D_800DAB2C)($ra)
/* 6D910 800B3110 38F80002 */  xori       $t8, $a3, 0x2
/* 6D914 800B3114 2F070001 */  sltiu      $a3, $t8, 0x1
/* 6D918 800B3118 001F7840 */  sll        $t7, $ra, 1
/* 6D91C 800B311C 10E00005 */  beqz       $a3, .L800B3134
/* 6D920 800B3120 01E0F825 */   or        $ra, $t7, $zero
/* 6D924 800B3124 3C07801D */  lui        $a3, %hi(D_801CE638)
/* 6D928 800B3128 8CE7E638 */  lw         $a3, %lo(D_801CE638)($a3)
/* 6D92C 800B312C 38F90001 */  xori       $t9, $a3, 0x1
/* 6D930 800B3130 2F270001 */  sltiu      $a3, $t9, 0x1
.L800B3134:
/* 6D934 800B3134 8FAE0170 */  lw         $t6, 0x170($sp)
/* 6D938 800B3138 AFA70194 */  sw         $a3, 0x194($sp)
/* 6D93C 800B313C 3C18FC12 */  lui        $t8, (0xFC129825 >> 16)
/* 6D940 800B3140 25CF0008 */  addiu      $t7, $t6, 0x8
/* 6D944 800B3144 AFAF0170 */  sw         $t7, 0x170($sp)
/* 6D948 800B3148 3C19FF33 */  lui        $t9, (0xFF33FFFF >> 16)
/* 6D94C 800B314C 3739FFFF */  ori        $t9, $t9, (0xFF33FFFF & 0xFFFF)
/* 6D950 800B3150 37189825 */  ori        $t8, $t8, (0xFC129825 & 0xFFFF)
/* 6D954 800B3154 ADD80000 */  sw         $t8, 0x0($t6)
/* 6D958 800B3158 ADD90004 */  sw         $t9, 0x4($t6)
/* 6D95C 800B315C 8FAE0170 */  lw         $t6, 0x170($sp)
/* 6D960 800B3160 3C190050 */  lui        $t9, (0x504B50 >> 16)
/* 6D964 800B3164 3C18B900 */  lui        $t8, (0xB900031D >> 16)
/* 6D968 800B3168 25CF0008 */  addiu      $t7, $t6, 0x8
/* 6D96C 800B316C AFAF0170 */  sw         $t7, 0x170($sp)
/* 6D970 800B3170 3718031D */  ori        $t8, $t8, (0xB900031D & 0xFFFF)
/* 6D974 800B3174 37394B50 */  ori        $t9, $t9, (0x504B50 & 0xFFFF)
/* 6D978 800B3178 ADD90004 */  sw         $t9, 0x4($t6)
/* 6D97C 800B317C ADD80000 */  sw         $t8, 0x0($t6)
/* 6D980 800B3180 8FAE0170 */  lw         $t6, 0x170($sp)
/* 6D984 800B3184 3C180102 */  lui        $t8, (0x1020040 >> 16)
/* 6D988 800B3188 3C190200 */  lui        $t9, %hi(D_2000A40)
/* 6D98C 800B318C 25CF0008 */  addiu      $t7, $t6, 0x8
/* 6D990 800B3190 AFAF0170 */  sw         $t7, 0x170($sp)
/* 6D994 800B3194 27390A40 */  addiu      $t9, $t9, %lo(D_2000A40)
/* 6D998 800B3198 37180040 */  ori        $t8, $t8, (0x1020040 & 0xFFFF)
/* 6D99C 800B319C 3C02801D */  lui        $v0, %hi(D_801D0790)
/* 6D9A0 800B31A0 ADD80000 */  sw         $t8, 0x0($t6)
/* 6D9A4 800B31A4 ADD90004 */  sw         $t9, 0x4($t6)
/* 6D9A8 800B31A8 8C420790 */  lw         $v0, %lo(D_801D0790)($v0)
/* 6D9AC 800B31AC 0000A025 */  or         $s4, $zero, $zero
/* 6D9B0 800B31B0 584000C8 */  blezl      $v0, .L800B34D4
/* 6D9B4 800B31B4 3C0BBF00 */   lui       $t3, (0xBF000000 >> 16)
/* 6D9B8 800B31B8 3C1E0105 */  lui        $fp, %hi(D_1048468)
/* 6D9BC 800B31BC 3C170105 */  lui        $s7, %hi(D_1048C70)
/* 6D9C0 800B31C0 3C160105 */  lui        $s6, %hi(D_1049478)
/* 6D9C4 800B31C4 3C150008 */  lui        $s5, (0x80200 >> 16)
/* 6D9C8 800B31C8 3C120708 */  lui        $s2, (0x7080200 >> 16)
/* 6D9CC 800B31CC 3C0C0400 */  lui        $t4, (0x400062F >> 16)
/* 6D9D0 800B31D0 3C0A800E */  lui        $t2, %hi(D_800E6D68)
/* 6D9D4 800B31D4 3C06800E */  lui        $a2, %hi(D_800E6D64)
/* 6D9D8 800B31D8 24C66D64 */  addiu      $a2, $a2, %lo(D_800E6D64)
/* 6D9DC 800B31DC 254A6D68 */  addiu      $t2, $t2, %lo(D_800E6D68)
/* 6D9E0 800B31E0 358C062F */  ori        $t4, $t4, (0x400062F & 0xFFFF)
/* 6D9E4 800B31E4 36520200 */  ori        $s2, $s2, (0x7080200 & 0xFFFF)
/* 6D9E8 800B31E8 36B50200 */  ori        $s5, $s5, (0x80200 & 0xFFFF)
/* 6D9EC 800B31EC 26D69478 */  addiu      $s6, $s6, %lo(D_1049478)
/* 6D9F0 800B31F0 26F78C70 */  addiu      $s7, $s7, %lo(D_1048C70)
/* 6D9F4 800B31F4 27DE8468 */  addiu      $fp, $fp, %lo(D_1048468)
/* 6D9F8 800B31F8 2413050A */  addiu      $s3, $zero, 0x50A
/* 6D9FC 800B31FC 24110004 */  addiu      $s1, $zero, 0x4
/* 6DA00 800B3200 8FAD0178 */  lw         $t5, 0x178($sp)
/* 6DA04 800B3204 3C0BBF00 */  lui        $t3, (0xBF000000 >> 16)
/* 6DA08 800B3208 8FAE0194 */  lw         $t6, 0x194($sp)
.L800B320C:
/* 6DA0C 800B320C 3C03800E */  lui        $v1, %hi(D_800E6D60)
/* 6DA10 800B3210 3C0F800E */  lui        $t7, %hi(D_800DAB2C)
/* 6DA14 800B3214 11C00003 */  beqz       $t6, .L800B3224
/* 6DA18 800B3218 24636D60 */   addiu     $v1, $v1, %lo(D_800E6D60)
/* 6DA1C 800B321C 8DEFAB2C */  lw         $t7, %lo(D_800DAB2C)($t7)
/* 6DA20 800B3220 128F00A5 */  beq        $s4, $t7, .L800B34B8
.L800B3224:
/* 6DA24 800B3224 0014C0C0 */   sll       $t8, $s4, 3
/* 6DA28 800B3228 0314C023 */  subu       $t8, $t8, $s4
/* 6DA2C 800B322C 0018C0C0 */  sll        $t8, $t8, 3
/* 6DA30 800B3230 0314C021 */  addu       $t8, $t8, $s4
/* 6DA34 800B3234 0018C0C0 */  sll        $t8, $t8, 3
/* 6DA38 800B3238 0314C023 */  subu       $t8, $t8, $s4
/* 6DA3C 800B323C 0018C080 */  sll        $t8, $t8, 2
/* 6DA40 800B3240 0314C021 */  addu       $t8, $t8, $s4
/* 6DA44 800B3244 3C19801D */  lui        $t9, %hi(D_801D0798)
/* 6DA48 800B3248 27390798 */  addiu      $t9, $t9, %lo(D_801D0798)
/* 6DA4C 800B324C 0018C080 */  sll        $t8, $t8, 2
/* 6DA50 800B3250 03197021 */  addu       $t6, $t8, $t9
/* 6DA54 800B3254 8FB80170 */  lw         $t8, 0x170($sp)
/* 6DA58 800B3258 AC6E0000 */  sw         $t6, 0x0($v1)
/* 6DA5C 800B325C AD4E0000 */  sw         $t6, 0x0($t2)
/* 6DA60 800B3260 27190008 */  addiu      $t9, $t8, 0x8
/* 6DA64 800B3264 AFB90170 */  sw         $t9, 0x170($sp)
/* 6DA68 800B3268 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
/* 6DA6C 800B326C AF0E0000 */  sw         $t6, 0x0($t8)
/* 6DA70 800B3270 AF000004 */  sw         $zero, 0x4($t8)
/* 6DA74 800B3274 8C6F0000 */  lw         $t7, 0x0($v1)
/* 6DA78 800B3278 8FA20170 */  lw         $v0, 0x170($sp)
/* 6DA7C 800B327C 8FB90170 */  lw         $t9, 0x170($sp)
/* 6DA80 800B3280 8DF81C58 */  lw         $t8, 0x1C58($t7)
/* 6DA84 800B3284 3C0FFB00 */  lui        $t7, (0xFB000000 >> 16)
/* 6DA88 800B3288 24070001 */  addiu      $a3, $zero, 0x1
/* 6DA8C 800B328C 13000009 */  beqz       $t8, .L800B32B4
/* 6DA90 800B3290 244E0008 */   addiu     $t6, $v0, 0x8
/* 6DA94 800B3294 272E0008 */  addiu      $t6, $t9, 0x8
/* 6DA98 800B3298 3C18EBE3 */  lui        $t8, (0xEBE3D1FF >> 16)
/* 6DA9C 800B329C 3718D1FF */  ori        $t8, $t8, (0xEBE3D1FF & 0xFFFF)
/* 6DAA0 800B32A0 AFAE0170 */  sw         $t6, 0x170($sp)
/* 6DAA4 800B32A4 3C0FFB00 */  lui        $t7, (0xFB000000 >> 16)
/* 6DAA8 800B32A8 AF2F0000 */  sw         $t7, 0x0($t9)
/* 6DAAC 800B32AC 10000012 */  b          .L800B32F8
/* 6DAB0 800B32B0 AF380004 */   sw        $t8, 0x4($t9)
.L800B32B4:
/* 6DAB4 800B32B4 AFAE0170 */  sw         $t6, 0x170($sp)
/* 6DAB8 800B32B8 AC4F0000 */  sw         $t7, 0x0($v0)
/* 6DABC 800B32BC 3C0F800E */  lui        $t7, %hi(D_800E6D88)
/* 6DAC0 800B32C0 3C18800E */  lui        $t8, %hi(D_800E6D84)
/* 6DAC4 800B32C4 8F196D84 */  lw         $t9, %lo(D_800E6D84)($t8)
/* 6DAC8 800B32C8 8DEF6D88 */  lw         $t7, %lo(D_800E6D88)($t7)
/* 6DACC 800B32CC 00197600 */  sll        $t6, $t9, 24
/* 6DAD0 800B32D0 31F800FF */  andi       $t8, $t7, 0xFF
/* 6DAD4 800B32D4 0018CC00 */  sll        $t9, $t8, 16
/* 6DAD8 800B32D8 3C18800E */  lui        $t8, %hi(D_800E6D8C)
/* 6DADC 800B32DC 8F186D8C */  lw         $t8, %lo(D_800E6D8C)($t8)
/* 6DAE0 800B32E0 01D97825 */  or         $t7, $t6, $t9
/* 6DAE4 800B32E4 330E00FF */  andi       $t6, $t8, 0xFF
/* 6DAE8 800B32E8 000ECA00 */  sll        $t9, $t6, 8
/* 6DAEC 800B32EC 01F9C025 */  or         $t8, $t7, $t9
/* 6DAF0 800B32F0 370E00FF */  ori        $t6, $t8, 0xFF
/* 6DAF4 800B32F4 AC4E0004 */  sw         $t6, 0x4($v0)
.L800B32F8:
/* 6DAF8 800B32F8 24010001 */  addiu      $at, $zero, 0x1
.L800B32FC:
/* 6DAFC 800B32FC 10E1000A */  beq        $a3, $at, .L800B3328
/* 6DB00 800B3300 00004825 */   or        $t1, $zero, $zero
/* 6DB04 800B3304 24010002 */  addiu      $at, $zero, 0x2
/* 6DB08 800B3308 10E1000A */  beq        $a3, $at, .L800B3334
/* 6DB0C 800B330C 24010003 */   addiu     $at, $zero, 0x3
/* 6DB10 800B3310 10E1000A */  beq        $a3, $at, .L800B333C
/* 6DB14 800B3314 00000000 */   nop
/* 6DB18 800B3318 50F1000B */  beql       $a3, $s1, .L800B3348
/* 6DB1C 800B331C 02C06825 */   or        $t5, $s6, $zero
/* 6DB20 800B3320 1000000A */  b          .L800B334C
/* 6DB24 800B3324 8FAF0170 */   lw        $t7, 0x170($sp)
.L800B3328:
/* 6DB28 800B3328 3C0D0104 */  lui        $t5, %hi(D_1047C60)
/* 6DB2C 800B332C 10000006 */  b          .L800B3348
/* 6DB30 800B3330 25AD7C60 */   addiu     $t5, $t5, %lo(D_1047C60)
.L800B3334:
/* 6DB34 800B3334 10000004 */  b          .L800B3348
/* 6DB38 800B3338 03C06825 */   or        $t5, $fp, $zero
.L800B333C:
/* 6DB3C 800B333C 10000002 */  b          .L800B3348
/* 6DB40 800B3340 02E06825 */   or        $t5, $s7, $zero
/* 6DB44 800B3344 02C06825 */  or         $t5, $s6, $zero
.L800B3348:
/* 6DB48 800B3348 8FAF0170 */  lw         $t7, 0x170($sp)
.L800B334C:
/* 6DB4C 800B334C 3C18FD70 */  lui        $t8, (0xFD700000 >> 16)
/* 6DB50 800B3350 24010005 */  addiu      $at, $zero, 0x5
/* 6DB54 800B3354 25F90008 */  addiu      $t9, $t7, 0x8
/* 6DB58 800B3358 AFB90170 */  sw         $t9, 0x170($sp)
/* 6DB5C 800B335C ADED0004 */  sw         $t5, 0x4($t7)
/* 6DB60 800B3360 ADF80000 */  sw         $t8, 0x0($t7)
/* 6DB64 800B3364 8FAE0170 */  lw         $t6, 0x170($sp)
/* 6DB68 800B3368 3C19F570 */  lui        $t9, (0xF5700000 >> 16)
/* 6DB6C 800B336C 2405003F */  addiu      $a1, $zero, 0x3F
/* 6DB70 800B3370 25CF0008 */  addiu      $t7, $t6, 0x8
/* 6DB74 800B3374 AFAF0170 */  sw         $t7, 0x170($sp)
/* 6DB78 800B3378 ADD20004 */  sw         $s2, 0x4($t6)
/* 6DB7C 800B337C ADD90000 */  sw         $t9, 0x0($t6)
/* 6DB80 800B3380 8FB80170 */  lw         $t8, 0x170($sp)
/* 6DB84 800B3384 3C0FE600 */  lui        $t7, (0xE6000000 >> 16)
/* 6DB88 800B3388 24040FC0 */  addiu      $a0, $zero, 0xFC0
/* 6DB8C 800B338C 270E0008 */  addiu      $t6, $t8, 0x8
/* 6DB90 800B3390 AFAE0170 */  sw         $t6, 0x170($sp)
/* 6DB94 800B3394 AF000004 */  sw         $zero, 0x4($t8)
/* 6DB98 800B3398 AF0F0000 */  sw         $t7, 0x0($t8)
/* 6DB9C 800B339C 8FB90170 */  lw         $t9, 0x170($sp)
/* 6DBA0 800B33A0 3C0F073F */  lui        $t7, (0x73FF100 >> 16)
/* 6DBA4 800B33A4 35EFF100 */  ori        $t7, $t7, (0x73FF100 & 0xFFFF)
/* 6DBA8 800B33A8 27380008 */  addiu      $t8, $t9, 0x8
/* 6DBAC 800B33AC AFB80170 */  sw         $t8, 0x170($sp)
/* 6DBB0 800B33B0 3C0EF300 */  lui        $t6, (0xF3000000 >> 16)
/* 6DBB4 800B33B4 AF2E0000 */  sw         $t6, 0x0($t9)
/* 6DBB8 800B33B8 AF2F0004 */  sw         $t7, 0x4($t9)
/* 6DBBC 800B33BC 8FB90170 */  lw         $t9, 0x170($sp)
/* 6DBC0 800B33C0 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
/* 6DBC4 800B33C4 27380008 */  addiu      $t8, $t9, 0x8
/* 6DBC8 800B33C8 AFB80170 */  sw         $t8, 0x170($sp)
/* 6DBCC 800B33CC AF200004 */  sw         $zero, 0x4($t9)
/* 6DBD0 800B33D0 AF2E0000 */  sw         $t6, 0x0($t9)
/* 6DBD4 800B33D4 8FAF0170 */  lw         $t7, 0x170($sp)
/* 6DBD8 800B33D8 3C18F570 */  lui        $t8, (0xF5701000 >> 16)
/* 6DBDC 800B33DC 37181000 */  ori        $t8, $t8, (0xF5701000 & 0xFFFF)
/* 6DBE0 800B33E0 25F90008 */  addiu      $t9, $t7, 0x8
/* 6DBE4 800B33E4 AFB90170 */  sw         $t9, 0x170($sp)
/* 6DBE8 800B33E8 ADF50004 */  sw         $s5, 0x4($t7)
/* 6DBEC 800B33EC ADF80000 */  sw         $t8, 0x0($t7)
/* 6DBF0 800B33F0 8FAE0170 */  lw         $t6, 0x170($sp)
/* 6DBF4 800B33F4 3C180007 */  lui        $t8, (0x7C07C >> 16)
/* 6DBF8 800B33F8 3718C07C */  ori        $t8, $t8, (0x7C07C & 0xFFFF)
/* 6DBFC 800B33FC 25CF0008 */  addiu      $t7, $t6, 0x8
/* 6DC00 800B3400 AFAF0170 */  sw         $t7, 0x170($sp)
/* 6DC04 800B3404 3C19F200 */  lui        $t9, (0xF2000000 >> 16)
/* 6DC08 800B3408 ADD90000 */  sw         $t9, 0x0($t6)
/* 6DC0C 800B340C ADD80004 */  sw         $t8, 0x4($t6)
.L800B3410:
/* 6DC10 800B3410 8D430000 */  lw         $v1, 0x0($t2)
/* 6DC14 800B3414 0005C980 */  sll        $t9, $a1, 6
/* 6DC18 800B3418 00647021 */  addu       $t6, $v1, $a0
/* 6DC1C 800B341C 8DCF0038 */  lw         $t7, 0x38($t6)
/* 6DC20 800B3420 0323C021 */  addu       $t8, $t9, $v1
/* 6DC24 800B3424 51E0001D */  beql       $t7, $zero, .L800B349C
/* 6DC28 800B3428 24A5FFFF */   addiu     $a1, $a1, -0x1
/* 6DC2C 800B342C ACD80000 */  sw         $t8, 0x0($a2)
/* 6DC30 800B3430 8F0F003C */  lw         $t7, 0x3C($t8)
/* 6DC34 800B3434 01E51021 */  addu       $v0, $t7, $a1
/* 6DC38 800B3438 30590003 */  andi       $t9, $v0, 0x3
/* 6DC3C 800B343C 27220001 */  addiu      $v0, $t9, 0x1
/* 6DC40 800B3440 10470003 */  beq        $v0, $a3, .L800B3450
/* 6DC44 800B3444 029F7821 */   addu      $t7, $s4, $ra
/* 6DC48 800B3448 10000013 */  b          .L800B3498
/* 6DC4C 800B344C 25290003 */   addiu     $t1, $t1, 0x3
.L800B3450:
/* 6DC50 800B3450 8FA20170 */  lw         $v0, 0x170($sp)
/* 6DC54 800B3454 000FC880 */  sll        $t9, $t7, 2
/* 6DC58 800B3458 032FC823 */  subu       $t9, $t9, $t7
/* 6DC5C 800B345C 244E0008 */  addiu      $t6, $v0, 0x8
/* 6DC60 800B3460 AFAE0170 */  sw         $t6, 0x170($sp)
/* 6DC64 800B3464 0019CA80 */  sll        $t9, $t9, 10
/* 6DC68 800B3468 0219C021 */  addu       $t8, $s0, $t9
/* 6DC6C 800B346C 00097100 */  sll        $t6, $t1, 4
/* 6DC70 800B3470 030E7821 */  addu       $t7, $t8, $t6
/* 6DC74 800B3474 25F951C0 */  addiu      $t9, $t7, 0x51C0
/* 6DC78 800B3478 AC590004 */  sw         $t9, 0x4($v0)
/* 6DC7C 800B347C AC4C0000 */  sw         $t4, 0x0($v0)
/* 6DC80 800B3480 8FB80170 */  lw         $t8, 0x170($sp)
/* 6DC84 800B3484 25290003 */  addiu      $t1, $t1, 0x3
/* 6DC88 800B3488 270E0008 */  addiu      $t6, $t8, 0x8
/* 6DC8C 800B348C AFAE0170 */  sw         $t6, 0x170($sp)
/* 6DC90 800B3490 AF130004 */  sw         $s3, 0x4($t8)
/* 6DC94 800B3494 AF0B0000 */  sw         $t3, 0x0($t8)
.L800B3498:
/* 6DC98 800B3498 24A5FFFF */  addiu      $a1, $a1, -0x1
.L800B349C:
/* 6DC9C 800B349C 04A1FFDC */  bgez       $a1, .L800B3410
/* 6DCA0 800B34A0 2484FFC0 */   addiu     $a0, $a0, -0x40
/* 6DCA4 800B34A4 24E70001 */  addiu      $a3, $a3, 0x1
/* 6DCA8 800B34A8 54E1FF94 */  bnel       $a3, $at, .L800B32FC
/* 6DCAC 800B34AC 24010001 */   addiu     $at, $zero, 0x1
/* 6DCB0 800B34B0 3C02801D */  lui        $v0, %hi(D_801D0790)
/* 6DCB4 800B34B4 8C420790 */  lw         $v0, %lo(D_801D0790)($v0)
.L800B34B8:
/* 6DCB8 800B34B8 26940001 */  addiu      $s4, $s4, 0x1
/* 6DCBC 800B34BC 0282082A */  slt        $at, $s4, $v0
/* 6DCC0 800B34C0 5420FF52 */  bnel       $at, $zero, .L800B320C
/* 6DCC4 800B34C4 8FAE0194 */   lw        $t6, 0x194($sp)
/* 6DCC8 800B34C8 0000A025 */  or         $s4, $zero, $zero
/* 6DCCC 800B34CC AFAD0178 */  sw         $t5, 0x178($sp)
/* 6DCD0 800B34D0 3C0BBF00 */  lui        $t3, (0xBF000000 >> 16)
.L800B34D4:
/* 6DCD4 800B34D4 8FAD0178 */  lw         $t5, 0x178($sp)
/* 6DCD8 800B34D8 184000AE */  blez       $v0, .L800B3794
/* 6DCDC 800B34DC 2413050A */   addiu     $s3, $zero, 0x50A
/* 6DCE0 800B34E0 3C0F801D */  lui        $t7, %hi(D_801D0798)
/* 6DCE4 800B34E4 25EF0798 */  addiu      $t7, $t7, %lo(D_801D0798)
/* 6DCE8 800B34E8 3C1E0105 */  lui        $fp, %hi(D_104C4A8)
/* 6DCEC 800B34EC 3C170105 */  lui        $s7, %hi(D_104CCB0)
/* 6DCF0 800B34F0 3C150F00 */  lui        $s5, (0xF00050A >> 16)
/* 6DCF4 800B34F4 3C120400 */  lui        $s2, (0x400083F >> 16)
/* 6DCF8 800B34F8 3C110105 */  lui        $s1, %hi(D_1049C80)
/* 6DCFC 800B34FC 3C0A800E */  lui        $t2, %hi(D_800E6D78)
/* 6DD00 800B3500 254A6D78 */  addiu      $t2, $t2, %lo(D_800E6D78)
/* 6DD04 800B3504 26319C80 */  addiu      $s1, $s1, %lo(D_1049C80)
/* 6DD08 800B3508 3652083F */  ori        $s2, $s2, (0x400083F & 0xFFFF)
/* 6DD0C 800B350C 36B5050A */  ori        $s5, $s5, (0xF00050A & 0xFFFF)
/* 6DD10 800B3510 26F7CCB0 */  addiu      $s7, $s7, %lo(D_104CCB0)
/* 6DD14 800B3514 27DEC4A8 */  addiu      $fp, $fp, %lo(D_104C4A8)
/* 6DD18 800B3518 AFAF0068 */  sw         $t7, 0x68($sp)
/* 6DD1C 800B351C 241600A0 */  addiu      $s6, $zero, 0xA0
/* 6DD20 800B3520 3C0CB500 */  lui        $t4, (0xB5000000 >> 16)
.L800B3524:
/* 6DD24 800B3524 8FB90068 */  lw         $t9, 0x68($sp)
/* 6DD28 800B3528 8FAF0170 */  lw         $t7, 0x170($sp)
/* 6DD2C 800B352C 3C03800E */  lui        $v1, %hi(D_800E6D60)
/* 6DD30 800B3530 24636D60 */  addiu      $v1, $v1, %lo(D_800E6D60)
/* 6DD34 800B3534 AC790000 */  sw         $t9, 0x0($v1)
/* 6DD38 800B3538 272E1A00 */  addiu      $t6, $t9, 0x1A00
/* 6DD3C 800B353C 25F90008 */  addiu      $t9, $t7, 0x8
/* 6DD40 800B3540 AD4E0000 */  sw         $t6, 0x0($t2)
/* 6DD44 800B3544 AFB90170 */  sw         $t9, 0x170($sp)
/* 6DD48 800B3548 3C18E700 */  lui        $t8, (0xE7000000 >> 16)
/* 6DD4C 800B354C ADF80000 */  sw         $t8, 0x0($t7)
/* 6DD50 800B3550 ADE00004 */  sw         $zero, 0x4($t7)
/* 6DD54 800B3554 8C6E0000 */  lw         $t6, 0x0($v1)
/* 6DD58 800B3558 8FA20170 */  lw         $v0, 0x170($sp)
/* 6DD5C 800B355C 00004025 */  or         $t0, $zero, $zero
/* 6DD60 800B3560 8DCF1C58 */  lw         $t7, 0x1C58($t6)
/* 6DD64 800B3564 3C0EFB00 */  lui        $t6, (0xFB000000 >> 16)
/* 6DD68 800B3568 00003825 */  or         $a3, $zero, $zero
/* 6DD6C 800B356C 11E0000A */  beqz       $t7, .L800B3598
/* 6DD70 800B3570 24580008 */   addiu     $t8, $v0, 0x8
/* 6DD74 800B3574 8FB90170 */  lw         $t9, 0x170($sp)
/* 6DD78 800B3578 3C0FEBE3 */  lui        $t7, (0xEBE3D1FF >> 16)
/* 6DD7C 800B357C 35EFD1FF */  ori        $t7, $t7, (0xEBE3D1FF & 0xFFFF)
/* 6DD80 800B3580 27380008 */  addiu      $t8, $t9, 0x8
/* 6DD84 800B3584 AFB80170 */  sw         $t8, 0x170($sp)
/* 6DD88 800B3588 3C0EFB00 */  lui        $t6, (0xFB000000 >> 16)
/* 6DD8C 800B358C AF2E0000 */  sw         $t6, 0x0($t9)
/* 6DD90 800B3590 10000012 */  b          .L800B35DC
/* 6DD94 800B3594 AF2F0004 */   sw        $t7, 0x4($t9)
.L800B3598:
/* 6DD98 800B3598 AFB80170 */  sw         $t8, 0x170($sp)
/* 6DD9C 800B359C AC4E0000 */  sw         $t6, 0x0($v0)
/* 6DDA0 800B35A0 3C0E800E */  lui        $t6, %hi(D_800E6D88)
/* 6DDA4 800B35A4 3C0F800E */  lui        $t7, %hi(D_800E6D84)
/* 6DDA8 800B35A8 8DF96D84 */  lw         $t9, %lo(D_800E6D84)($t7)
/* 6DDAC 800B35AC 8DCE6D88 */  lw         $t6, %lo(D_800E6D88)($t6)
/* 6DDB0 800B35B0 0019C600 */  sll        $t8, $t9, 24
/* 6DDB4 800B35B4 31CF00FF */  andi       $t7, $t6, 0xFF
/* 6DDB8 800B35B8 000FCC00 */  sll        $t9, $t7, 16
/* 6DDBC 800B35BC 3C0F800E */  lui        $t7, %hi(D_800E6D8C)
/* 6DDC0 800B35C0 8DEF6D8C */  lw         $t7, %lo(D_800E6D8C)($t7)
/* 6DDC4 800B35C4 03197025 */  or         $t6, $t8, $t9
/* 6DDC8 800B35C8 31F800FF */  andi       $t8, $t7, 0xFF
/* 6DDCC 800B35CC 0018CA00 */  sll        $t9, $t8, 8
/* 6DDD0 800B35D0 01D97825 */  or         $t7, $t6, $t9
/* 6DDD4 800B35D4 35F800FF */  ori        $t8, $t7, 0xFF
/* 6DDD8 800B35D8 AC580004 */  sw         $t8, 0x4($v0)
.L800B35DC:
/* 6DDDC 800B35DC 8D4E0000 */  lw         $t6, 0x0($t2)
.L800B35E0:
/* 6DDE0 800B35E0 00147A00 */  sll        $t7, $s4, 8
/* 6DDE4 800B35E4 020FC021 */  addu       $t8, $s0, $t7
/* 6DDE8 800B35E8 01C71021 */  addu       $v0, $t6, $a3
/* 6DDEC 800B35EC 8C590020 */  lw         $t9, 0x20($v0)
/* 6DDF0 800B35F0 001F7200 */  sll        $t6, $ra, 8
/* 6DDF4 800B35F4 00087900 */  sll        $t7, $t0, 4
/* 6DDF8 800B35F8 1320005A */  beqz       $t9, .L800B3764
/* 6DDFC 800B35FC 34018DC0 */   ori       $at, $zero, 0x8DC0
/* 6DE00 800B3600 030EC821 */  addu       $t9, $t8, $t6
/* 6DE04 800B3604 8C580024 */  lw         $t8, 0x24($v0)
/* 6DE08 800B3608 032F4821 */  addu       $t1, $t9, $t7
/* 6DE0C 800B360C 01214821 */  addu       $t1, $t1, $at
/* 6DE10 800B3610 270EFFFF */  addiu      $t6, $t8, -0x1
/* 6DE14 800B3614 2DC10007 */  sltiu      $at, $t6, 0x7
/* 6DE18 800B3618 10200016 */  beqz       $at, L800B3674
/* 6DE1C 800B361C 000E7080 */   sll       $t6, $t6, 2
/* 6DE20 800B3620 3C01800F */  lui        $at, %hi(jtbl_800EBBE8_main)
/* 6DE24 800B3624 002E0821 */  addu       $at, $at, $t6
/* 6DE28 800B3628 8C2EBBE8 */  lw         $t6, %lo(jtbl_800EBBE8_main)($at)
/* 6DE2C 800B362C 01C00008 */  jr         $t6
/* 6DE30 800B3630 00000000 */   nop
glabel L800B3634
/* 6DE34 800B3634 10000010 */  b          .L800B3678
/* 6DE38 800B3638 02206825 */   or        $t5, $s1, $zero
glabel L800B363C
/* 6DE3C 800B363C 3C0D0105 */  lui        $t5, %hi(D_104A488)
/* 6DE40 800B3640 1000000D */  b          .L800B3678
/* 6DE44 800B3644 25ADA488 */   addiu     $t5, $t5, %lo(D_104A488)
glabel L800B3648
/* 6DE48 800B3648 3C0D0105 */  lui        $t5, %hi(D_104AC90)
/* 6DE4C 800B364C 1000000A */  b          .L800B3678
/* 6DE50 800B3650 25ADAC90 */   addiu     $t5, $t5, %lo(D_104AC90)
glabel L800B3654
/* 6DE54 800B3654 3C0D0105 */  lui        $t5, %hi(D_104B498)
/* 6DE58 800B3658 10000007 */  b          .L800B3678
/* 6DE5C 800B365C 25ADB498 */   addiu     $t5, $t5, %lo(D_104B498)
glabel L800B3660
/* 6DE60 800B3660 3C0D0105 */  lui        $t5, %hi(D_104BCA0)
/* 6DE64 800B3664 10000004 */  b          .L800B3678
/* 6DE68 800B3668 25ADBCA0 */   addiu     $t5, $t5, %lo(D_104BCA0)
glabel L800B366C
/* 6DE6C 800B366C 10000002 */  b          .L800B3678
/* 6DE70 800B3670 03C06825 */   or        $t5, $fp, $zero
glabel L800B3674
/* 6DE74 800B3674 02E06825 */  or         $t5, $s7, $zero
.L800B3678:
/* 6DE78 800B3678 8FB90170 */  lw         $t9, 0x170($sp)
/* 6DE7C 800B367C 3C18FD70 */  lui        $t8, (0xFD700000 >> 16)
/* 6DE80 800B3680 25080004 */  addiu      $t0, $t0, 0x4
/* 6DE84 800B3684 272F0008 */  addiu      $t7, $t9, 0x8
/* 6DE88 800B3688 AFAF0170 */  sw         $t7, 0x170($sp)
/* 6DE8C 800B368C AF2D0004 */  sw         $t5, 0x4($t9)
/* 6DE90 800B3690 AF380000 */  sw         $t8, 0x0($t9)
/* 6DE94 800B3694 8FAE0170 */  lw         $t6, 0x170($sp)
/* 6DE98 800B3698 3C180700 */  lui        $t8, (0x7000000 >> 16)
/* 6DE9C 800B369C 3C0FF570 */  lui        $t7, (0xF5700000 >> 16)
/* 6DEA0 800B36A0 25D90008 */  addiu      $t9, $t6, 0x8
/* 6DEA4 800B36A4 AFB90170 */  sw         $t9, 0x170($sp)
/* 6DEA8 800B36A8 ADD80004 */  sw         $t8, 0x4($t6)
/* 6DEAC 800B36AC ADCF0000 */  sw         $t7, 0x0($t6)
/* 6DEB0 800B36B0 8FAE0170 */  lw         $t6, 0x170($sp)
/* 6DEB4 800B36B4 3C0FE600 */  lui        $t7, (0xE6000000 >> 16)
/* 6DEB8 800B36B8 25D90008 */  addiu      $t9, $t6, 0x8
/* 6DEBC 800B36BC AFB90170 */  sw         $t9, 0x170($sp)
/* 6DEC0 800B36C0 ADC00004 */  sw         $zero, 0x4($t6)
/* 6DEC4 800B36C4 ADCF0000 */  sw         $t7, 0x0($t6)
/* 6DEC8 800B36C8 8FB80170 */  lw         $t8, 0x170($sp)
/* 6DECC 800B36CC 3C0F073F */  lui        $t7, (0x73FF100 >> 16)
/* 6DED0 800B36D0 35EFF100 */  ori        $t7, $t7, (0x73FF100 & 0xFFFF)
/* 6DED4 800B36D4 270E0008 */  addiu      $t6, $t8, 0x8
/* 6DED8 800B36D8 AFAE0170 */  sw         $t6, 0x170($sp)
/* 6DEDC 800B36DC 3C19F300 */  lui        $t9, (0xF3000000 >> 16)
/* 6DEE0 800B36E0 AF190000 */  sw         $t9, 0x0($t8)
/* 6DEE4 800B36E4 AF0F0004 */  sw         $t7, 0x4($t8)
/* 6DEE8 800B36E8 8FB80170 */  lw         $t8, 0x170($sp)
/* 6DEEC 800B36EC 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
/* 6DEF0 800B36F0 270E0008 */  addiu      $t6, $t8, 0x8
/* 6DEF4 800B36F4 AFAE0170 */  sw         $t6, 0x170($sp)
/* 6DEF8 800B36F8 AF000004 */  sw         $zero, 0x4($t8)
/* 6DEFC 800B36FC AF190000 */  sw         $t9, 0x0($t8)
/* 6DF00 800B3700 8FAF0170 */  lw         $t7, 0x170($sp)
/* 6DF04 800B3704 3C0EF570 */  lui        $t6, (0xF5701000 >> 16)
/* 6DF08 800B3708 35CE1000 */  ori        $t6, $t6, (0xF5701000 & 0xFFFF)
/* 6DF0C 800B370C 25F80008 */  addiu      $t8, $t7, 0x8
/* 6DF10 800B3710 AFB80170 */  sw         $t8, 0x170($sp)
/* 6DF14 800B3714 ADE00004 */  sw         $zero, 0x4($t7)
/* 6DF18 800B3718 ADEE0000 */  sw         $t6, 0x0($t7)
/* 6DF1C 800B371C 8FB90170 */  lw         $t9, 0x170($sp)
/* 6DF20 800B3720 3C0E0007 */  lui        $t6, (0x7C07C >> 16)
/* 6DF24 800B3724 35CEC07C */  ori        $t6, $t6, (0x7C07C & 0xFFFF)
/* 6DF28 800B3728 272F0008 */  addiu      $t7, $t9, 0x8
/* 6DF2C 800B372C AFAF0170 */  sw         $t7, 0x170($sp)
/* 6DF30 800B3730 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
/* 6DF34 800B3734 AF380000 */  sw         $t8, 0x0($t9)
/* 6DF38 800B3738 AF2E0004 */  sw         $t6, 0x4($t9)
/* 6DF3C 800B373C 8FB90170 */  lw         $t9, 0x170($sp)
/* 6DF40 800B3740 272F0008 */  addiu      $t7, $t9, 0x8
/* 6DF44 800B3744 AFAF0170 */  sw         $t7, 0x170($sp)
/* 6DF48 800B3748 AF290004 */  sw         $t1, 0x4($t9)
/* 6DF4C 800B374C AF320000 */  sw         $s2, 0x0($t9)
/* 6DF50 800B3750 8FB80170 */  lw         $t8, 0x170($sp)
/* 6DF54 800B3754 270E0008 */  addiu      $t6, $t8, 0x8
/* 6DF58 800B3758 AFAE0170 */  sw         $t6, 0x170($sp)
/* 6DF5C 800B375C AF150004 */  sw         $s5, 0x4($t8)
/* 6DF60 800B3760 AF0C0000 */  sw         $t4, 0x0($t8)
.L800B3764:
/* 6DF64 800B3764 24E70028 */  addiu      $a3, $a3, 0x28
/* 6DF68 800B3768 54F6FF9D */  bnel       $a3, $s6, .L800B35E0
/* 6DF6C 800B376C 8D4E0000 */   lw        $t6, 0x0($t2)
/* 6DF70 800B3770 3C18801D */  lui        $t8, %hi(D_801D0790)
/* 6DF74 800B3774 8F180790 */  lw         $t8, %lo(D_801D0790)($t8)
/* 6DF78 800B3778 8FB90068 */  lw         $t9, 0x68($sp)
/* 6DF7C 800B377C 26940001 */  addiu      $s4, $s4, 0x1
/* 6DF80 800B3780 0298082A */  slt        $at, $s4, $t8
/* 6DF84 800B3784 272F1C74 */  addiu      $t7, $t9, 0x1C74
/* 6DF88 800B3788 1420FF66 */  bnez       $at, .L800B3524
/* 6DF8C 800B378C AFAF0068 */   sw        $t7, 0x68($sp)
/* 6DF90 800B3790 0000A025 */  or         $s4, $zero, $zero
.L800B3794:
/* 6DF94 800B3794 8FAE0170 */  lw         $t6, 0x170($sp)
/* 6DF98 800B3798 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
/* 6DF9C 800B379C 3C07800D */  lui        $a3, %hi(D_800D4B00)
/* 6DFA0 800B37A0 25D90008 */  addiu      $t9, $t6, 0x8
/* 6DFA4 800B37A4 AFB90170 */  sw         $t9, 0x170($sp)
/* 6DFA8 800B37A8 ADC00004 */  sw         $zero, 0x4($t6)
/* 6DFAC 800B37AC ADCF0000 */  sw         $t7, 0x0($t6)
/* 6DFB0 800B37B0 8FA30170 */  lw         $v1, 0x170($sp)
/* 6DFB4 800B37B4 3C19FB00 */  lui        $t9, (0xFB000000 >> 16)
/* 6DFB8 800B37B8 3C0F800E */  lui        $t7, %hi(D_800E6D84)
/* 6DFBC 800B37BC 246E0008 */  addiu      $t6, $v1, 0x8
/* 6DFC0 800B37C0 AFAE0170 */  sw         $t6, 0x170($sp)
/* 6DFC4 800B37C4 AC790000 */  sw         $t9, 0x0($v1)
/* 6DFC8 800B37C8 3C19800E */  lui        $t9, %hi(D_800E6D88)
/* 6DFCC 800B37CC 8F396D88 */  lw         $t9, %lo(D_800E6D88)($t9)
/* 6DFD0 800B37D0 8DF86D84 */  lw         $t8, %lo(D_800E6D84)($t7)
/* 6DFD4 800B37D4 3C0CB500 */  lui        $t4, (0xB5000000 >> 16)
/* 6DFD8 800B37D8 332F00FF */  andi       $t7, $t9, 0xFF
/* 6DFDC 800B37DC 00187600 */  sll        $t6, $t8, 24
/* 6DFE0 800B37E0 000FC400 */  sll        $t8, $t7, 16
/* 6DFE4 800B37E4 3C0F800E */  lui        $t7, %hi(D_800E6D8C)
/* 6DFE8 800B37E8 8DEF6D8C */  lw         $t7, %lo(D_800E6D8C)($t7)
/* 6DFEC 800B37EC 01D8C825 */  or         $t9, $t6, $t8
/* 6DFF0 800B37F0 24010001 */  addiu      $at, $zero, 0x1
/* 6DFF4 800B37F4 31EE00FF */  andi       $t6, $t7, 0xFF
/* 6DFF8 800B37F8 000EC200 */  sll        $t8, $t6, 8
/* 6DFFC 800B37FC 03387825 */  or         $t7, $t9, $t8
/* 6E000 800B3800 35EE00FF */  ori        $t6, $t7, 0xFF
/* 6E004 800B3804 AC6E0004 */  sw         $t6, 0x4($v1)
/* 6E008 800B3808 8CE74B00 */  lw         $a3, %lo(D_800D4B00)($a3)
/* 6E00C 800B380C 8FB80170 */  lw         $t8, 0x170($sp)
/* 6E010 800B3810 3C0EFD70 */  lui        $t6, (0xFD700000 >> 16)
/* 6E014 800B3814 30F90003 */  andi       $t9, $a3, 0x3
/* 6E018 800B3818 13200009 */  beqz       $t9, .L800B3840
/* 6E01C 800B381C 270F0008 */   addiu     $t7, $t8, 0x8
/* 6E020 800B3820 1321000A */  beq        $t9, $at, .L800B384C
/* 6E024 800B3824 24010002 */   addiu     $at, $zero, 0x2
/* 6E028 800B3828 1321000B */  beq        $t9, $at, .L800B3858
/* 6E02C 800B382C 24010003 */   addiu     $at, $zero, 0x3
/* 6E030 800B3830 1321000C */  beq        $t9, $at, .L800B3864
/* 6E034 800B3834 00000000 */   nop
/* 6E038 800B3838 1000000D */  b          .L800B3870
/* 6E03C 800B383C AFAF0170 */   sw        $t7, 0x170($sp)
.L800B3840:
/* 6E040 800B3840 3C0D0105 */  lui        $t5, %hi(D_104D4B8)
/* 6E044 800B3844 10000009 */  b          .L800B386C
/* 6E048 800B3848 25ADD4B8 */   addiu     $t5, $t5, %lo(D_104D4B8)
.L800B384C:
/* 6E04C 800B384C 3C0D0105 */  lui        $t5, %hi(D_104E4C0)
/* 6E050 800B3850 10000006 */  b          .L800B386C
/* 6E054 800B3854 25ADE4C0 */   addiu     $t5, $t5, %lo(D_104E4C0)
.L800B3858:
/* 6E058 800B3858 3C0D0105 */  lui        $t5, %hi(D_104F4C8)
/* 6E05C 800B385C 10000003 */  b          .L800B386C
/* 6E060 800B3860 25ADF4C8 */   addiu     $t5, $t5, %lo(D_104F4C8)
.L800B3864:
/* 6E064 800B3864 3C0D0105 */  lui        $t5, %hi(D_10504D0)
/* 6E068 800B3868 25AD04D0 */  addiu      $t5, $t5, %lo(D_10504D0)
.L800B386C:
/* 6E06C 800B386C AFAF0170 */  sw         $t7, 0x170($sp)
.L800B3870:
/* 6E070 800B3870 AF0D0004 */  sw         $t5, 0x4($t8)
/* 6E074 800B3874 AF0E0000 */  sw         $t6, 0x0($t8)
/* 6E078 800B3878 8FB90170 */  lw         $t9, 0x170($sp)
/* 6E07C 800B387C 3C0E0700 */  lui        $t6, (0x7000000 >> 16)
/* 6E080 800B3880 3C0FF570 */  lui        $t7, (0xF5700000 >> 16)
/* 6E084 800B3884 27380008 */  addiu      $t8, $t9, 0x8
/* 6E088 800B3888 AFB80170 */  sw         $t8, 0x170($sp)
/* 6E08C 800B388C AF2E0004 */  sw         $t6, 0x4($t9)
/* 6E090 800B3890 AF2F0000 */  sw         $t7, 0x0($t9)
/* 6E094 800B3894 8FB90170 */  lw         $t9, 0x170($sp)
/* 6E098 800B3898 3C0FE600 */  lui        $t7, (0xE6000000 >> 16)
/* 6E09C 800B389C 3C02801D */  lui        $v0, %hi(D_801D0790)
/* 6E0A0 800B38A0 27380008 */  addiu      $t8, $t9, 0x8
/* 6E0A4 800B38A4 AFB80170 */  sw         $t8, 0x170($sp)
/* 6E0A8 800B38A8 AF200004 */  sw         $zero, 0x4($t9)
/* 6E0AC 800B38AC AF2F0000 */  sw         $t7, 0x0($t9)
/* 6E0B0 800B38B0 8FAE0170 */  lw         $t6, 0x170($sp)
/* 6E0B4 800B38B4 3C0F077F */  lui        $t7, (0x77FF100 >> 16)
/* 6E0B8 800B38B8 35EFF100 */  ori        $t7, $t7, (0x77FF100 & 0xFFFF)
/* 6E0BC 800B38BC 25D90008 */  addiu      $t9, $t6, 0x8
/* 6E0C0 800B38C0 AFB90170 */  sw         $t9, 0x170($sp)
/* 6E0C4 800B38C4 3C18F300 */  lui        $t8, (0xF3000000 >> 16)
/* 6E0C8 800B38C8 ADD80000 */  sw         $t8, 0x0($t6)
/* 6E0CC 800B38CC ADCF0004 */  sw         $t7, 0x4($t6)
/* 6E0D0 800B38D0 8FAE0170 */  lw         $t6, 0x170($sp)
/* 6E0D4 800B38D4 3C18E700 */  lui        $t8, (0xE7000000 >> 16)
/* 6E0D8 800B38D8 3C151914 */  lui        $s5, (0x19141E23 >> 16)
/* 6E0DC 800B38DC 25D90008 */  addiu      $t9, $t6, 0x8
/* 6E0E0 800B38E0 AFB90170 */  sw         $t9, 0x170($sp)
/* 6E0E4 800B38E4 ADC00004 */  sw         $zero, 0x4($t6)
/* 6E0E8 800B38E8 ADD80000 */  sw         $t8, 0x0($t6)
/* 6E0EC 800B38EC 8FAF0170 */  lw         $t7, 0x170($sp)
/* 6E0F0 800B38F0 3C19F570 */  lui        $t9, (0xF5701000 >> 16)
/* 6E0F4 800B38F4 37391000 */  ori        $t9, $t9, (0xF5701000 & 0xFFFF)
/* 6E0F8 800B38F8 25EE0008 */  addiu      $t6, $t7, 0x8
/* 6E0FC 800B38FC AFAE0170 */  sw         $t6, 0x170($sp)
/* 6E100 800B3900 ADE00004 */  sw         $zero, 0x4($t7)
/* 6E104 800B3904 ADF90000 */  sw         $t9, 0x0($t7)
/* 6E108 800B3908 8FB80170 */  lw         $t8, 0x170($sp)
/* 6E10C 800B390C 3C190007 */  lui        $t9, (0x7C0FC >> 16)
/* 6E110 800B3910 3739C0FC */  ori        $t9, $t9, (0x7C0FC & 0xFFFF)
/* 6E114 800B3914 270F0008 */  addiu      $t7, $t8, 0x8
/* 6E118 800B3918 AFAF0170 */  sw         $t7, 0x170($sp)
/* 6E11C 800B391C 3C0EF200 */  lui        $t6, (0xF2000000 >> 16)
/* 6E120 800B3920 AF0E0000 */  sw         $t6, 0x0($t8)
/* 6E124 800B3924 AF190004 */  sw         $t9, 0x4($t8)
/* 6E128 800B3928 8C420790 */  lw         $v0, %lo(D_801D0790)($v0)
/* 6E12C 800B392C 3C120F0A */  lui        $s2, (0xF0A1419 >> 16)
/* 6E130 800B3930 36521419 */  ori        $s2, $s2, (0xF0A1419 & 0xFFFF)
/* 6E134 800B3934 18400071 */  blez       $v0, .L800B3AFC
/* 6E138 800B3938 36B51E23 */   ori       $s5, $s5, (0x19141E23 & 0xFFFF)
/* 6E13C 800B393C 3C110500 */  lui        $s1, (0x5000A0F >> 16)
/* 6E140 800B3940 3C0D0400 */  lui        $t5, (0x40020FF >> 16)
/* 6E144 800B3944 35AD20FF */  ori        $t5, $t5, (0x40020FF & 0xFFFF)
/* 6E148 800B3948 36310A0F */  ori        $s1, $s1, (0x5000A0F & 0xFFFF)
/* 6E14C 800B394C 341F91C0 */  ori        $ra, $zero, 0x91C0
/* 6E150 800B3950 8FB80194 */  lw         $t8, 0x194($sp)
.L800B3954:
/* 6E154 800B3954 3C0F800E */  lui        $t7, %hi(D_800DAB2C)
/* 6E158 800B3958 53000005 */  beql       $t8, $zero, .L800B3970
/* 6E15C 800B395C 8FA20170 */   lw        $v0, 0x170($sp)
/* 6E160 800B3960 8DEFAB2C */  lw         $t7, %lo(D_800DAB2C)($t7)
/* 6E164 800B3964 528F0061 */  beql       $s4, $t7, .L800B3AEC
/* 6E168 800B3968 26940001 */   addiu     $s4, $s4, 0x1
/* 6E16C 800B396C 8FA20170 */  lw         $v0, 0x170($sp)
.L800B3970:
/* 6E170 800B3970 0014C200 */  sll        $t8, $s4, 8
/* 6E174 800B3974 02187821 */  addu       $t7, $s0, $t8
/* 6E178 800B3978 24590008 */  addiu      $t9, $v0, 0x8
/* 6E17C 800B397C AFB90170 */  sw         $t9, 0x170($sp)
/* 6E180 800B3980 01FF7021 */  addu       $t6, $t7, $ra
/* 6E184 800B3984 AC4E0004 */  sw         $t6, 0x4($v0)
/* 6E188 800B3988 AC4D0000 */  sw         $t5, 0x0($v0)
/* 6E18C 800B398C 8FB90170 */  lw         $t9, 0x170($sp)
/* 6E190 800B3990 24050003 */  addiu      $a1, $zero, 0x3
/* 6E194 800B3994 00051040 */  sll        $v0, $a1, 1
/* 6E198 800B3998 27380008 */  addiu      $t8, $t9, 0x8
/* 6E19C 800B399C AFB80170 */  sw         $t8, 0x170($sp)
/* 6E1A0 800B39A0 AF310004 */  sw         $s1, 0x4($t9)
/* 6E1A4 800B39A4 AF2C0000 */  sw         $t4, 0x0($t9)
/* 6E1A8 800B39A8 8FAF0170 */  lw         $t7, 0x170($sp)
/* 6E1AC 800B39AC 25EE0008 */  addiu      $t6, $t7, 0x8
/* 6E1B0 800B39B0 AFAE0170 */  sw         $t6, 0x170($sp)
/* 6E1B4 800B39B4 ADF20004 */  sw         $s2, 0x4($t7)
/* 6E1B8 800B39B8 ADEC0000 */  sw         $t4, 0x0($t7)
/* 6E1BC 800B39BC 8FB90170 */  lw         $t9, 0x170($sp)
/* 6E1C0 800B39C0 27380008 */  addiu      $t8, $t9, 0x8
/* 6E1C4 800B39C4 AFB80170 */  sw         $t8, 0x170($sp)
/* 6E1C8 800B39C8 AF350004 */  sw         $s5, 0x4($t9)
/* 6E1CC 800B39CC AF2C0000 */  sw         $t4, 0x0($t9)
/* 6E1D0 800B39D0 0002C880 */  sll        $t9, $v0, 2
/* 6E1D4 800B39D4 0322C821 */  addu       $t9, $t9, $v0
/* 6E1D8 800B39D8 8FA30170 */  lw         $v1, 0x170($sp)
/* 6E1DC 800B39DC 03201025 */  or         $v0, $t9, $zero
/* 6E1E0 800B39E0 2724000A */  addiu      $a0, $t9, 0xA
/* 6E1E4 800B39E4 2726000F */  addiu      $a2, $t9, 0xF
/* 6E1E8 800B39E8 272F0005 */  addiu      $t7, $t9, 0x5
/* 6E1EC 800B39EC 333900FF */  andi       $t9, $t9, 0xFF
/* 6E1F0 800B39F0 246E0008 */  addiu      $t6, $v1, 0x8
/* 6E1F4 800B39F4 AFAE0170 */  sw         $t6, 0x170($sp)
/* 6E1F8 800B39F8 0019C400 */  sll        $t8, $t9, 16
/* 6E1FC 800B39FC 000F7600 */  sll        $t6, $t7, 24
/* 6E200 800B3A00 01D87825 */  or         $t7, $t6, $t8
/* 6E204 800B3A04 309900FF */  andi       $t9, $a0, 0xFF
/* 6E208 800B3A08 00197200 */  sll        $t6, $t9, 8
/* 6E20C 800B3A0C 01EEC025 */  or         $t8, $t7, $t6
/* 6E210 800B3A10 30D900FF */  andi       $t9, $a2, 0xFF
/* 6E214 800B3A14 03197825 */  or         $t7, $t8, $t9
/* 6E218 800B3A18 AC6F0004 */  sw         $t7, 0x4($v1)
/* 6E21C 800B3A1C AC6C0000 */  sw         $t4, 0x0($v1)
/* 6E220 800B3A20 8FA30170 */  lw         $v1, 0x170($sp)
/* 6E224 800B3A24 308E00FF */  andi       $t6, $a0, 0xFF
/* 6E228 800B3A28 00197E00 */  sll        $t7, $t9, 24
/* 6E22C 800B3A2C 24780008 */  addiu      $t8, $v1, 0x8
/* 6E230 800B3A30 AFB80170 */  sw         $t8, 0x170($sp)
/* 6E234 800B3A34 000EC400 */  sll        $t8, $t6, 16
/* 6E238 800B3A38 24470014 */  addiu      $a3, $v0, 0x14
/* 6E23C 800B3A3C 30EE00FF */  andi       $t6, $a3, 0xFF
/* 6E240 800B3A40 01F8C825 */  or         $t9, $t7, $t8
/* 6E244 800B3A44 000E7A00 */  sll        $t7, $t6, 8
/* 6E248 800B3A48 24480019 */  addiu      $t0, $v0, 0x19
/* 6E24C 800B3A4C 310E00FF */  andi       $t6, $t0, 0xFF
/* 6E250 800B3A50 032FC025 */  or         $t8, $t9, $t7
/* 6E254 800B3A54 030EC825 */  or         $t9, $t8, $t6
/* 6E258 800B3A58 AC790004 */  sw         $t9, 0x4($v1)
/* 6E25C 800B3A5C AC6C0000 */  sw         $t4, 0x0($v1)
/* 6E260 800B3A60 8FA30170 */  lw         $v1, 0x170($sp)
/* 6E264 800B3A64 30EF00FF */  andi       $t7, $a3, 0xFF
/* 6E268 800B3A68 000ECE00 */  sll        $t9, $t6, 24
/* 6E26C 800B3A6C 24780008 */  addiu      $t8, $v1, 0x8
/* 6E270 800B3A70 AFB80170 */  sw         $t8, 0x170($sp)
/* 6E274 800B3A74 000FC400 */  sll        $t8, $t7, 16
/* 6E278 800B3A78 2449001E */  addiu      $t1, $v0, 0x1E
/* 6E27C 800B3A7C 312F00FF */  andi       $t7, $t1, 0xFF
/* 6E280 800B3A80 03387025 */  or         $t6, $t9, $t8
/* 6E284 800B3A84 000FCA00 */  sll        $t9, $t7, 8
/* 6E288 800B3A88 244A0023 */  addiu      $t2, $v0, 0x23
/* 6E28C 800B3A8C 314F00FF */  andi       $t7, $t2, 0xFF
/* 6E290 800B3A90 01D9C025 */  or         $t8, $t6, $t9
/* 6E294 800B3A94 030F7025 */  or         $t6, $t8, $t7
/* 6E298 800B3A98 AC6E0004 */  sw         $t6, 0x4($v1)
/* 6E29C 800B3A9C AC6C0000 */  sw         $t4, 0x0($v1)
/* 6E2A0 800B3AA0 8FA30170 */  lw         $v1, 0x170($sp)
/* 6E2A4 800B3AA4 313900FF */  andi       $t9, $t1, 0xFF
/* 6E2A8 800B3AA8 000F7600 */  sll        $t6, $t7, 24
/* 6E2AC 800B3AAC 24780008 */  addiu      $t8, $v1, 0x8
/* 6E2B0 800B3AB0 AFB80170 */  sw         $t8, 0x170($sp)
/* 6E2B4 800B3AB4 0019C400 */  sll        $t8, $t9, 16
/* 6E2B8 800B3AB8 01D87825 */  or         $t7, $t6, $t8
/* 6E2BC 800B3ABC 24590028 */  addiu      $t9, $v0, 0x28
/* 6E2C0 800B3AC0 332E00FF */  andi       $t6, $t9, 0xFF
/* 6E2C4 800B3AC4 000EC200 */  sll        $t8, $t6, 8
/* 6E2C8 800B3AC8 01F8C825 */  or         $t9, $t7, $t8
/* 6E2CC 800B3ACC 244E002D */  addiu      $t6, $v0, 0x2D
/* 6E2D0 800B3AD0 31CF00FF */  andi       $t7, $t6, 0xFF
/* 6E2D4 800B3AD4 032FC025 */  or         $t8, $t9, $t7
/* 6E2D8 800B3AD8 3C02801D */  lui        $v0, %hi(D_801D0790)
/* 6E2DC 800B3ADC AC780004 */  sw         $t8, 0x4($v1)
/* 6E2E0 800B3AE0 AC6C0000 */  sw         $t4, 0x0($v1)
/* 6E2E4 800B3AE4 8C420790 */  lw         $v0, %lo(D_801D0790)($v0)
/* 6E2E8 800B3AE8 26940001 */  addiu      $s4, $s4, 0x1
.L800B3AEC:
/* 6E2EC 800B3AEC 0282082A */  slt        $at, $s4, $v0
/* 6E2F0 800B3AF0 5420FF98 */  bnel       $at, $zero, .L800B3954
/* 6E2F4 800B3AF4 8FB80194 */   lw        $t8, 0x194($sp)
/* 6E2F8 800B3AF8 0000A025 */  or         $s4, $zero, $zero
.L800B3AFC:
/* 6E2FC 800B3AFC 8FAE0170 */  lw         $t6, 0x170($sp)
/* 6E300 800B3B00 3C07E700 */  lui        $a3, (0xE7000000 >> 16)
/* 6E304 800B3B04 3C02801D */  lui        $v0, %hi(D_801D0790)
/* 6E308 800B3B08 25D90008 */  addiu      $t9, $t6, 0x8
/* 6E30C 800B3B0C AFB90170 */  sw         $t9, 0x170($sp)
/* 6E310 800B3B10 ADC00004 */  sw         $zero, 0x4($t6)
/* 6E314 800B3B14 ADC70000 */  sw         $a3, 0x0($t6)
/* 6E318 800B3B18 8FAF0170 */  lw         $t7, 0x170($sp)
/* 6E31C 800B3B1C 3C0EB900 */  lui        $t6, (0xB900031D >> 16)
/* 6E320 800B3B20 3C190050 */  lui        $t9, (0x504340 >> 16)
/* 6E324 800B3B24 25F80008 */  addiu      $t8, $t7, 0x8
/* 6E328 800B3B28 AFB80170 */  sw         $t8, 0x170($sp)
/* 6E32C 800B3B2C 37394340 */  ori        $t9, $t9, (0x504340 & 0xFFFF)
/* 6E330 800B3B30 35CE031D */  ori        $t6, $t6, (0xB900031D & 0xFFFF)
/* 6E334 800B3B34 ADEE0000 */  sw         $t6, 0x0($t7)
/* 6E338 800B3B38 ADF90004 */  sw         $t9, 0x4($t7)
/* 6E33C 800B3B3C 8FAF0170 */  lw         $t7, 0x170($sp)
/* 6E340 800B3B40 3C190104 */  lui        $t9, %hi(D_1047458)
/* 6E344 800B3B44 27397458 */  addiu      $t9, $t9, %lo(D_1047458)
/* 6E348 800B3B48 25F80008 */  addiu      $t8, $t7, 0x8
/* 6E34C 800B3B4C AFB80170 */  sw         $t8, 0x170($sp)
/* 6E350 800B3B50 3C0EFD10 */  lui        $t6, (0xFD100000 >> 16)
/* 6E354 800B3B54 ADEE0000 */  sw         $t6, 0x0($t7)
/* 6E358 800B3B58 ADF90004 */  sw         $t9, 0x4($t7)
/* 6E35C 800B3B5C 8FAF0170 */  lw         $t7, 0x170($sp)
/* 6E360 800B3B60 3C190700 */  lui        $t9, (0x7000000 >> 16)
/* 6E364 800B3B64 3C0EF510 */  lui        $t6, (0xF5100000 >> 16)
/* 6E368 800B3B68 25F80008 */  addiu      $t8, $t7, 0x8
/* 6E36C 800B3B6C AFB80170 */  sw         $t8, 0x170($sp)
/* 6E370 800B3B70 ADF90004 */  sw         $t9, 0x4($t7)
/* 6E374 800B3B74 ADEE0000 */  sw         $t6, 0x0($t7)
/* 6E378 800B3B78 8FAF0170 */  lw         $t7, 0x170($sp)
/* 6E37C 800B3B7C 3C0EE600 */  lui        $t6, (0xE6000000 >> 16)
/* 6E380 800B3B80 3C16800D */  lui        $s6, %hi(D_800D48DC)
/* 6E384 800B3B84 25F80008 */  addiu      $t8, $t7, 0x8
/* 6E388 800B3B88 AFB80170 */  sw         $t8, 0x170($sp)
/* 6E38C 800B3B8C ADE00004 */  sw         $zero, 0x4($t7)
/* 6E390 800B3B90 ADEE0000 */  sw         $t6, 0x0($t7)
/* 6E394 800B3B94 8FB90170 */  lw         $t9, 0x170($sp)
/* 6E398 800B3B98 3C0E073F */  lui        $t6, (0x73FF100 >> 16)
/* 6E39C 800B3B9C 35CEF100 */  ori        $t6, $t6, (0x73FF100 & 0xFFFF)
/* 6E3A0 800B3BA0 272F0008 */  addiu      $t7, $t9, 0x8
/* 6E3A4 800B3BA4 AFAF0170 */  sw         $t7, 0x170($sp)
/* 6E3A8 800B3BA8 3C18F300 */  lui        $t8, (0xF3000000 >> 16)
/* 6E3AC 800B3BAC AF380000 */  sw         $t8, 0x0($t9)
/* 6E3B0 800B3BB0 AF2E0004 */  sw         $t6, 0x4($t9)
/* 6E3B4 800B3BB4 8FB90170 */  lw         $t9, 0x170($sp)
/* 6E3B8 800B3BB8 3C12003C */  lui        $s2, (0x3C4146 >> 16)
/* 6E3BC 800B3BBC 36524146 */  ori        $s2, $s2, (0x3C4146 & 0xFFFF)
/* 6E3C0 800B3BC0 272F0008 */  addiu      $t7, $t9, 0x8
/* 6E3C4 800B3BC4 AFAF0170 */  sw         $t7, 0x170($sp)
/* 6E3C8 800B3BC8 AF200004 */  sw         $zero, 0x4($t9)
/* 6E3CC 800B3BCC AF270000 */  sw         $a3, 0x0($t9)
/* 6E3D0 800B3BD0 8FB80170 */  lw         $t8, 0x170($sp)
/* 6E3D4 800B3BD4 3C19F510 */  lui        $t9, (0xF5101000 >> 16)
/* 6E3D8 800B3BD8 37391000 */  ori        $t9, $t9, (0xF5101000 & 0xFFFF)
/* 6E3DC 800B3BDC 270E0008 */  addiu      $t6, $t8, 0x8
/* 6E3E0 800B3BE0 AFAE0170 */  sw         $t6, 0x170($sp)
/* 6E3E4 800B3BE4 AF000004 */  sw         $zero, 0x4($t8)
/* 6E3E8 800B3BE8 AF190000 */  sw         $t9, 0x0($t8)
/* 6E3EC 800B3BEC 8FAF0170 */  lw         $t7, 0x170($sp)
/* 6E3F0 800B3BF0 3C190007 */  lui        $t9, (0x7C07C >> 16)
/* 6E3F4 800B3BF4 3739C07C */  ori        $t9, $t9, (0x7C07C & 0xFFFF)
/* 6E3F8 800B3BF8 25F80008 */  addiu      $t8, $t7, 0x8
/* 6E3FC 800B3BFC AFB80170 */  sw         $t8, 0x170($sp)
/* 6E400 800B3C00 3C0EF200 */  lui        $t6, (0xF2000000 >> 16)
/* 6E404 800B3C04 ADEE0000 */  sw         $t6, 0x0($t7)
/* 6E408 800B3C08 ADF90004 */  sw         $t9, 0x4($t7)
/* 6E40C 800B3C0C 8C420790 */  lw         $v0, %lo(D_801D0790)($v0)
/* 6E410 800B3C10 26D648DC */  addiu      $s6, $s6, %lo(D_800D48DC)
/* 6E414 800B3C14 3C150400 */  lui        $s5, (0x4000000 >> 16)
/* 6E418 800B3C18 18400160 */  blez       $v0, .L800B419C
/* 6E41C 800B3C1C 3C11002D */   lui       $s1, (0x2D3237 >> 16)
/* 6E420 800B3C20 3C10001E */  lui        $s0, (0x1E2328 >> 16)
/* 6E424 800B3C24 3C1F000F */  lui        $ra, (0xF1419 >> 16)
/* 6E428 800B3C28 3C0D0400 */  lui        $t5, (0x4001EEF >> 16)
/* 6E42C 800B3C2C 35AD1EEF */  ori        $t5, $t5, (0x4001EEF & 0xFFFF)
/* 6E430 800B3C30 37FF1419 */  ori        $ra, $ra, (0xF1419 & 0xFFFF)
/* 6E434 800B3C34 36102328 */  ori        $s0, $s0, (0x1E2328 & 0xFFFF)
/* 6E438 800B3C38 36313237 */  ori        $s1, $s1, (0x2D3237 & 0xFFFF)
/* 6E43C 800B3C3C 8ECF0000 */  lw         $t7, 0x0($s6)
.L800B3C40:
/* 6E440 800B3C40 3C03800E */  lui        $v1, %hi(D_800E6D60)
/* 6E444 800B3C44 24636D60 */  addiu      $v1, $v1, %lo(D_800E6D60)
/* 6E448 800B3C48 168F0150 */  bne        $s4, $t7, .L800B418C
/* 6E44C 800B3C4C 0014C0C0 */   sll       $t8, $s4, 3
/* 6E450 800B3C50 0314C023 */  subu       $t8, $t8, $s4
/* 6E454 800B3C54 0018C0C0 */  sll        $t8, $t8, 3
/* 6E458 800B3C58 0314C021 */  addu       $t8, $t8, $s4
/* 6E45C 800B3C5C 0018C0C0 */  sll        $t8, $t8, 3
/* 6E460 800B3C60 0314C023 */  subu       $t8, $t8, $s4
/* 6E464 800B3C64 0018C080 */  sll        $t8, $t8, 2
/* 6E468 800B3C68 0314C021 */  addu       $t8, $t8, $s4
/* 6E46C 800B3C6C 3C0E801D */  lui        $t6, %hi(D_801D0798)
/* 6E470 800B3C70 25CE0798 */  addiu      $t6, $t6, %lo(D_801D0798)
/* 6E474 800B3C74 0018C080 */  sll        $t8, $t8, 2
/* 6E478 800B3C78 030EC821 */  addu       $t9, $t8, $t6
/* 6E47C 800B3C7C AC790000 */  sw         $t9, 0x0($v1)
/* 6E480 800B3C80 8F381C58 */  lw         $t8, 0x1C58($t9)
/* 6E484 800B3C84 3C0A0501 */  lui        $t2, %hi(D_50081C0)
/* 6E488 800B3C88 254A81C0 */  addiu      $t2, $t2, %lo(D_50081C0)
/* 6E48C 800B3C8C 1300000A */  beqz       $t8, .L800B3CB8
/* 6E490 800B3C90 8FA20170 */   lw        $v0, 0x170($sp)
/* 6E494 800B3C94 8FAE0170 */  lw         $t6, 0x170($sp)
/* 6E498 800B3C98 3C18EBE3 */  lui        $t8, (0xEBE3D1FF >> 16)
/* 6E49C 800B3C9C 3718D1FF */  ori        $t8, $t8, (0xEBE3D1FF & 0xFFFF)
/* 6E4A0 800B3CA0 25D90008 */  addiu      $t9, $t6, 0x8
/* 6E4A4 800B3CA4 AFB90170 */  sw         $t9, 0x170($sp)
/* 6E4A8 800B3CA8 3C0FFB00 */  lui        $t7, (0xFB000000 >> 16)
/* 6E4AC 800B3CAC ADCF0000 */  sw         $t7, 0x0($t6)
/* 6E4B0 800B3CB0 10000014 */  b          .L800B3D04
/* 6E4B4 800B3CB4 ADD80004 */   sw        $t8, 0x4($t6)
.L800B3CB8:
/* 6E4B8 800B3CB8 24590008 */  addiu      $t9, $v0, 0x8
/* 6E4BC 800B3CBC AFB90170 */  sw         $t9, 0x170($sp)
/* 6E4C0 800B3CC0 3C0FFB00 */  lui        $t7, (0xFB000000 >> 16)
/* 6E4C4 800B3CC4 AC4F0000 */  sw         $t7, 0x0($v0)
/* 6E4C8 800B3CC8 3C0F800E */  lui        $t7, %hi(D_800E6D88)
/* 6E4CC 800B3CCC 3C18800E */  lui        $t8, %hi(D_800E6D84)
/* 6E4D0 800B3CD0 8F0E6D84 */  lw         $t6, %lo(D_800E6D84)($t8)
/* 6E4D4 800B3CD4 8DEF6D88 */  lw         $t7, %lo(D_800E6D88)($t7)
/* 6E4D8 800B3CD8 000ECE00 */  sll        $t9, $t6, 24
/* 6E4DC 800B3CDC 31F800FF */  andi       $t8, $t7, 0xFF
/* 6E4E0 800B3CE0 00187400 */  sll        $t6, $t8, 16
/* 6E4E4 800B3CE4 3C18800E */  lui        $t8, %hi(D_800E6D8C)
/* 6E4E8 800B3CE8 8F186D8C */  lw         $t8, %lo(D_800E6D8C)($t8)
/* 6E4EC 800B3CEC 032E7825 */  or         $t7, $t9, $t6
/* 6E4F0 800B3CF0 331900FF */  andi       $t9, $t8, 0xFF
/* 6E4F4 800B3CF4 00197200 */  sll        $t6, $t9, 8
/* 6E4F8 800B3CF8 01EEC025 */  or         $t8, $t7, $t6
/* 6E4FC 800B3CFC 371900FF */  ori        $t9, $t8, 0xFF
/* 6E500 800B3D00 AC590004 */  sw         $t9, 0x4($v0)
.L800B3D04:
/* 6E504 800B3D04 3C0F800E */  lui        $t7, %hi(D_800E6D60)
/* 6E508 800B3D08 8DEF6D60 */  lw         $t7, %lo(D_800E6D60)($t7)
/* 6E50C 800B3D0C 24010005 */  addiu      $at, $zero, 0x5
/* 6E510 800B3D10 00003825 */  or         $a3, $zero, $zero
/* 6E514 800B3D14 8DE21C24 */  lw         $v0, 0x1C24($t7)
/* 6E518 800B3D18 0041001A */  div        $zero, $v0, $at
/* 6E51C 800B3D1C 00004812 */  mflo       $t1
/* 6E520 800B3D20 24010005 */  addiu      $at, $zero, 0x5
/* 6E524 800B3D24 112000AA */  beqz       $t1, .L800B3FD0
/* 6E528 800B3D28 00000000 */   nop
/* 6E52C 800B3D2C 192000A8 */  blez       $t1, .L800B3FD0
/* 6E530 800B3D30 00002825 */   or        $a1, $zero, $zero
/* 6E534 800B3D34 31260003 */  andi       $a2, $t1, 0x3
/* 6E538 800B3D38 10C00024 */  beqz       $a2, .L800B3DCC
/* 6E53C 800B3D3C 00C06025 */   or        $t4, $a2, $zero
.L800B3D40:
/* 6E540 800B3D40 8FAE0170 */  lw         $t6, 0x170($sp)
/* 6E544 800B3D44 24A50001 */  addiu      $a1, $a1, 0x1
/* 6E548 800B3D48 25D80008 */  addiu      $t8, $t6, 0x8
/* 6E54C 800B3D4C AFB80170 */  sw         $t8, 0x170($sp)
/* 6E550 800B3D50 ADCA0004 */  sw         $t2, 0x4($t6)
/* 6E554 800B3D54 ADCD0000 */  sw         $t5, 0x0($t6)
/* 6E558 800B3D58 8FB90170 */  lw         $t9, 0x170($sp)
/* 6E55C 800B3D5C 254A00F0 */  addiu      $t2, $t2, 0xF0
/* 6E560 800B3D60 272F0008 */  addiu      $t7, $t9, 0x8
/* 6E564 800B3D64 AFAF0170 */  sw         $t7, 0x170($sp)
/* 6E568 800B3D68 AF330004 */  sw         $s3, 0x4($t9)
/* 6E56C 800B3D6C AF2B0000 */  sw         $t3, 0x0($t9)
/* 6E570 800B3D70 8FAE0170 */  lw         $t6, 0x170($sp)
/* 6E574 800B3D74 25D80008 */  addiu      $t8, $t6, 0x8
/* 6E578 800B3D78 AFB80170 */  sw         $t8, 0x170($sp)
/* 6E57C 800B3D7C ADDF0004 */  sw         $ra, 0x4($t6)
/* 6E580 800B3D80 ADCB0000 */  sw         $t3, 0x0($t6)
/* 6E584 800B3D84 8FB90170 */  lw         $t9, 0x170($sp)
/* 6E588 800B3D88 272F0008 */  addiu      $t7, $t9, 0x8
/* 6E58C 800B3D8C AFAF0170 */  sw         $t7, 0x170($sp)
/* 6E590 800B3D90 AF300004 */  sw         $s0, 0x4($t9)
/* 6E594 800B3D94 AF2B0000 */  sw         $t3, 0x0($t9)
/* 6E598 800B3D98 8FAE0170 */  lw         $t6, 0x170($sp)
/* 6E59C 800B3D9C 25D80008 */  addiu      $t8, $t6, 0x8
/* 6E5A0 800B3DA0 AFB80170 */  sw         $t8, 0x170($sp)
/* 6E5A4 800B3DA4 ADD10004 */  sw         $s1, 0x4($t6)
/* 6E5A8 800B3DA8 ADCB0000 */  sw         $t3, 0x0($t6)
/* 6E5AC 800B3DAC 8FB90170 */  lw         $t9, 0x170($sp)
/* 6E5B0 800B3DB0 272F0008 */  addiu      $t7, $t9, 0x8
/* 6E5B4 800B3DB4 AFAF0170 */  sw         $t7, 0x170($sp)
/* 6E5B8 800B3DB8 AF320004 */  sw         $s2, 0x4($t9)
/* 6E5BC 800B3DBC 1585FFE0 */  bne        $t4, $a1, .L800B3D40
/* 6E5C0 800B3DC0 AF2B0000 */   sw        $t3, 0x0($t9)
/* 6E5C4 800B3DC4 10A9007F */  beq        $a1, $t1, .L800B3FC4
/* 6E5C8 800B3DC8 00000000 */   nop
.L800B3DCC:
/* 6E5CC 800B3DCC 8FAE0170 */  lw         $t6, 0x170($sp)
/* 6E5D0 800B3DD0 24A50004 */  addiu      $a1, $a1, 0x4
/* 6E5D4 800B3DD4 25D80008 */  addiu      $t8, $t6, 0x8
/* 6E5D8 800B3DD8 AFB80170 */  sw         $t8, 0x170($sp)
/* 6E5DC 800B3DDC ADCA0004 */  sw         $t2, 0x4($t6)
/* 6E5E0 800B3DE0 ADCD0000 */  sw         $t5, 0x0($t6)
/* 6E5E4 800B3DE4 8FB90170 */  lw         $t9, 0x170($sp)
/* 6E5E8 800B3DE8 254A00F0 */  addiu      $t2, $t2, 0xF0
/* 6E5EC 800B3DEC 272F0008 */  addiu      $t7, $t9, 0x8
/* 6E5F0 800B3DF0 AFAF0170 */  sw         $t7, 0x170($sp)
/* 6E5F4 800B3DF4 AF330004 */  sw         $s3, 0x4($t9)
/* 6E5F8 800B3DF8 AF2B0000 */  sw         $t3, 0x0($t9)
/* 6E5FC 800B3DFC 8FAE0170 */  lw         $t6, 0x170($sp)
/* 6E600 800B3E00 25D80008 */  addiu      $t8, $t6, 0x8
/* 6E604 800B3E04 AFB80170 */  sw         $t8, 0x170($sp)
/* 6E608 800B3E08 ADDF0004 */  sw         $ra, 0x4($t6)
/* 6E60C 800B3E0C ADCB0000 */  sw         $t3, 0x0($t6)
/* 6E610 800B3E10 8FB90170 */  lw         $t9, 0x170($sp)
/* 6E614 800B3E14 272F0008 */  addiu      $t7, $t9, 0x8
/* 6E618 800B3E18 AFAF0170 */  sw         $t7, 0x170($sp)
/* 6E61C 800B3E1C AF300004 */  sw         $s0, 0x4($t9)
/* 6E620 800B3E20 AF2B0000 */  sw         $t3, 0x0($t9)
/* 6E624 800B3E24 8FAE0170 */  lw         $t6, 0x170($sp)
/* 6E628 800B3E28 25D80008 */  addiu      $t8, $t6, 0x8
/* 6E62C 800B3E2C AFB80170 */  sw         $t8, 0x170($sp)
/* 6E630 800B3E30 ADD10004 */  sw         $s1, 0x4($t6)
/* 6E634 800B3E34 ADCB0000 */  sw         $t3, 0x0($t6)
/* 6E638 800B3E38 8FB90170 */  lw         $t9, 0x170($sp)
/* 6E63C 800B3E3C 272F0008 */  addiu      $t7, $t9, 0x8
/* 6E640 800B3E40 AFAF0170 */  sw         $t7, 0x170($sp)
/* 6E644 800B3E44 AF320004 */  sw         $s2, 0x4($t9)
/* 6E648 800B3E48 AF2B0000 */  sw         $t3, 0x0($t9)
/* 6E64C 800B3E4C 8FAE0170 */  lw         $t6, 0x170($sp)
/* 6E650 800B3E50 25D80008 */  addiu      $t8, $t6, 0x8
/* 6E654 800B3E54 AFB80170 */  sw         $t8, 0x170($sp)
/* 6E658 800B3E58 ADCA0004 */  sw         $t2, 0x4($t6)
/* 6E65C 800B3E5C ADCD0000 */  sw         $t5, 0x0($t6)
/* 6E660 800B3E60 8FB90170 */  lw         $t9, 0x170($sp)
/* 6E664 800B3E64 254A00F0 */  addiu      $t2, $t2, 0xF0
/* 6E668 800B3E68 272F0008 */  addiu      $t7, $t9, 0x8
/* 6E66C 800B3E6C AFAF0170 */  sw         $t7, 0x170($sp)
/* 6E670 800B3E70 AF330004 */  sw         $s3, 0x4($t9)
/* 6E674 800B3E74 AF2B0000 */  sw         $t3, 0x0($t9)
/* 6E678 800B3E78 8FAE0170 */  lw         $t6, 0x170($sp)
/* 6E67C 800B3E7C 25D80008 */  addiu      $t8, $t6, 0x8
/* 6E680 800B3E80 AFB80170 */  sw         $t8, 0x170($sp)
/* 6E684 800B3E84 ADDF0004 */  sw         $ra, 0x4($t6)
/* 6E688 800B3E88 ADCB0000 */  sw         $t3, 0x0($t6)
/* 6E68C 800B3E8C 8FB90170 */  lw         $t9, 0x170($sp)
/* 6E690 800B3E90 272F0008 */  addiu      $t7, $t9, 0x8
/* 6E694 800B3E94 AFAF0170 */  sw         $t7, 0x170($sp)
/* 6E698 800B3E98 AF300004 */  sw         $s0, 0x4($t9)
/* 6E69C 800B3E9C AF2B0000 */  sw         $t3, 0x0($t9)
/* 6E6A0 800B3EA0 8FAE0170 */  lw         $t6, 0x170($sp)
/* 6E6A4 800B3EA4 25D80008 */  addiu      $t8, $t6, 0x8
/* 6E6A8 800B3EA8 AFB80170 */  sw         $t8, 0x170($sp)
/* 6E6AC 800B3EAC ADD10004 */  sw         $s1, 0x4($t6)
/* 6E6B0 800B3EB0 ADCB0000 */  sw         $t3, 0x0($t6)
/* 6E6B4 800B3EB4 8FB90170 */  lw         $t9, 0x170($sp)
/* 6E6B8 800B3EB8 272F0008 */  addiu      $t7, $t9, 0x8
/* 6E6BC 800B3EBC AFAF0170 */  sw         $t7, 0x170($sp)
/* 6E6C0 800B3EC0 AF320004 */  sw         $s2, 0x4($t9)
/* 6E6C4 800B3EC4 AF2B0000 */  sw         $t3, 0x0($t9)
/* 6E6C8 800B3EC8 8FAE0170 */  lw         $t6, 0x170($sp)
/* 6E6CC 800B3ECC 25D80008 */  addiu      $t8, $t6, 0x8
/* 6E6D0 800B3ED0 AFB80170 */  sw         $t8, 0x170($sp)
/* 6E6D4 800B3ED4 ADCA0004 */  sw         $t2, 0x4($t6)
/* 6E6D8 800B3ED8 ADCD0000 */  sw         $t5, 0x0($t6)
/* 6E6DC 800B3EDC 8FB90170 */  lw         $t9, 0x170($sp)
/* 6E6E0 800B3EE0 254A00F0 */  addiu      $t2, $t2, 0xF0
/* 6E6E4 800B3EE4 272F0008 */  addiu      $t7, $t9, 0x8
/* 6E6E8 800B3EE8 AFAF0170 */  sw         $t7, 0x170($sp)
/* 6E6EC 800B3EEC AF330004 */  sw         $s3, 0x4($t9)
/* 6E6F0 800B3EF0 AF2B0000 */  sw         $t3, 0x0($t9)
/* 6E6F4 800B3EF4 8FAE0170 */  lw         $t6, 0x170($sp)
/* 6E6F8 800B3EF8 25D80008 */  addiu      $t8, $t6, 0x8
/* 6E6FC 800B3EFC AFB80170 */  sw         $t8, 0x170($sp)
/* 6E700 800B3F00 ADDF0004 */  sw         $ra, 0x4($t6)
/* 6E704 800B3F04 ADCB0000 */  sw         $t3, 0x0($t6)
/* 6E708 800B3F08 8FB90170 */  lw         $t9, 0x170($sp)
/* 6E70C 800B3F0C 272F0008 */  addiu      $t7, $t9, 0x8
/* 6E710 800B3F10 AFAF0170 */  sw         $t7, 0x170($sp)
/* 6E714 800B3F14 AF300004 */  sw         $s0, 0x4($t9)
/* 6E718 800B3F18 AF2B0000 */  sw         $t3, 0x0($t9)
/* 6E71C 800B3F1C 8FAE0170 */  lw         $t6, 0x170($sp)
/* 6E720 800B3F20 25D80008 */  addiu      $t8, $t6, 0x8
/* 6E724 800B3F24 AFB80170 */  sw         $t8, 0x170($sp)
/* 6E728 800B3F28 ADD10004 */  sw         $s1, 0x4($t6)
/* 6E72C 800B3F2C ADCB0000 */  sw         $t3, 0x0($t6)
/* 6E730 800B3F30 8FB90170 */  lw         $t9, 0x170($sp)
/* 6E734 800B3F34 272F0008 */  addiu      $t7, $t9, 0x8
/* 6E738 800B3F38 AFAF0170 */  sw         $t7, 0x170($sp)
/* 6E73C 800B3F3C AF320004 */  sw         $s2, 0x4($t9)
/* 6E740 800B3F40 AF2B0000 */  sw         $t3, 0x0($t9)
/* 6E744 800B3F44 8FAE0170 */  lw         $t6, 0x170($sp)
/* 6E748 800B3F48 25D80008 */  addiu      $t8, $t6, 0x8
/* 6E74C 800B3F4C AFB80170 */  sw         $t8, 0x170($sp)
/* 6E750 800B3F50 ADCA0004 */  sw         $t2, 0x4($t6)
/* 6E754 800B3F54 ADCD0000 */  sw         $t5, 0x0($t6)
/* 6E758 800B3F58 8FB90170 */  lw         $t9, 0x170($sp)
/* 6E75C 800B3F5C 254A00F0 */  addiu      $t2, $t2, 0xF0
/* 6E760 800B3F60 272F0008 */  addiu      $t7, $t9, 0x8
/* 6E764 800B3F64 AFAF0170 */  sw         $t7, 0x170($sp)
/* 6E768 800B3F68 AF330004 */  sw         $s3, 0x4($t9)
/* 6E76C 800B3F6C AF2B0000 */  sw         $t3, 0x0($t9)
/* 6E770 800B3F70 8FAE0170 */  lw         $t6, 0x170($sp)
/* 6E774 800B3F74 25D80008 */  addiu      $t8, $t6, 0x8
/* 6E778 800B3F78 AFB80170 */  sw         $t8, 0x170($sp)
/* 6E77C 800B3F7C ADDF0004 */  sw         $ra, 0x4($t6)
/* 6E780 800B3F80 ADCB0000 */  sw         $t3, 0x0($t6)
/* 6E784 800B3F84 8FB90170 */  lw         $t9, 0x170($sp)
/* 6E788 800B3F88 272F0008 */  addiu      $t7, $t9, 0x8
/* 6E78C 800B3F8C AFAF0170 */  sw         $t7, 0x170($sp)
/* 6E790 800B3F90 AF300004 */  sw         $s0, 0x4($t9)
/* 6E794 800B3F94 AF2B0000 */  sw         $t3, 0x0($t9)
/* 6E798 800B3F98 8FAE0170 */  lw         $t6, 0x170($sp)
/* 6E79C 800B3F9C 25D80008 */  addiu      $t8, $t6, 0x8
/* 6E7A0 800B3FA0 AFB80170 */  sw         $t8, 0x170($sp)
/* 6E7A4 800B3FA4 ADD10004 */  sw         $s1, 0x4($t6)
/* 6E7A8 800B3FA8 ADCB0000 */  sw         $t3, 0x0($t6)
/* 6E7AC 800B3FAC 8FB90170 */  lw         $t9, 0x170($sp)
/* 6E7B0 800B3FB0 272F0008 */  addiu      $t7, $t9, 0x8
/* 6E7B4 800B3FB4 AFAF0170 */  sw         $t7, 0x170($sp)
/* 6E7B8 800B3FB8 AF320004 */  sw         $s2, 0x4($t9)
/* 6E7BC 800B3FBC 14A9FF83 */  bne        $a1, $t1, .L800B3DCC
/* 6E7C0 800B3FC0 AF2B0000 */   sw        $t3, 0x0($t9)
.L800B3FC4:
/* 6E7C4 800B3FC4 3C0E800E */  lui        $t6, %hi(D_800E6D60)
/* 6E7C8 800B3FC8 8DCE6D60 */  lw         $t6, %lo(D_800E6D60)($t6)
/* 6E7CC 800B3FCC 8DC21C24 */  lw         $v0, 0x1C24($t6)
.L800B3FD0:
/* 6E7D0 800B3FD0 0041001A */  div        $zero, $v0, $at
/* 6E7D4 800B3FD4 00004810 */  mfhi       $t1
/* 6E7D8 800B3FD8 00091880 */  sll        $v1, $t1, 2
/* 6E7DC 800B3FDC 11200069 */  beqz       $t1, .L800B4184
/* 6E7E0 800B3FE0 8FA20170 */   lw        $v0, 0x170($sp)
/* 6E7E4 800B3FE4 00691823 */  subu       $v1, $v1, $t1
/* 6E7E8 800B3FE8 00037A40 */  sll        $t7, $v1, 9
/* 6E7EC 800B3FEC 00037100 */  sll        $t6, $v1, 4
/* 6E7F0 800B3FF0 24590008 */  addiu      $t9, $v0, 0x8
/* 6E7F4 800B3FF4 AFB90170 */  sw         $t9, 0x170($sp)
/* 6E7F8 800B3FF8 01EEC021 */  addu       $t8, $t7, $t6
/* 6E7FC 800B3FFC 2719FFFF */  addiu      $t9, $t8, -0x1
/* 6E800 800B4000 332FFFFF */  andi       $t7, $t9, 0xFFFF
/* 6E804 800B4004 01F57025 */  or         $t6, $t7, $s5
/* 6E808 800B4008 AC4E0000 */  sw         $t6, 0x0($v0)
/* 6E80C 800B400C AC4A0004 */  sw         $t2, 0x4($v0)
/* 6E810 800B4010 1920005C */  blez       $t1, .L800B4184
/* 6E814 800B4014 00002825 */   or        $a1, $zero, $zero
/* 6E818 800B4018 31260003 */  andi       $a2, $t1, 0x3
/* 6E81C 800B401C 10C00017 */  beqz       $a2, .L800B407C
/* 6E820 800B4020 00C04025 */   or        $t0, $a2, $zero
/* 6E824 800B4024 00001080 */  sll        $v0, $zero, 2
/* 6E828 800B4028 24430005 */  addiu      $v1, $v0, 0x5
/* 6E82C 800B402C 2444000A */  addiu      $a0, $v0, 0xA
.L800B4030:
/* 6E830 800B4030 8FA60170 */  lw         $a2, 0x170($sp)
/* 6E834 800B4034 307800FF */  andi       $t8, $v1, 0xFF
/* 6E838 800B4038 304F00FF */  andi       $t7, $v0, 0xFF
/* 6E83C 800B403C 24D90008 */  addiu      $t9, $a2, 0x8
/* 6E840 800B4040 AFB90170 */  sw         $t9, 0x170($sp)
/* 6E844 800B4044 0018CA00 */  sll        $t9, $t8, 8
/* 6E848 800B4048 000F7400 */  sll        $t6, $t7, 16
/* 6E84C 800B404C 01D97825 */  or         $t7, $t6, $t9
/* 6E850 800B4050 309800FF */  andi       $t8, $a0, 0xFF
/* 6E854 800B4054 01F87025 */  or         $t6, $t7, $t8
/* 6E858 800B4058 24A50001 */  addiu      $a1, $a1, 0x1
/* 6E85C 800B405C 2484000F */  addiu      $a0, $a0, 0xF
/* 6E860 800B4060 2442000F */  addiu      $v0, $v0, 0xF
/* 6E864 800B4064 2463000F */  addiu      $v1, $v1, 0xF
/* 6E868 800B4068 24E70003 */  addiu      $a3, $a3, 0x3
/* 6E86C 800B406C ACCE0004 */  sw         $t6, 0x4($a2)
/* 6E870 800B4070 1505FFEF */  bne        $t0, $a1, .L800B4030
/* 6E874 800B4074 ACCB0000 */   sw        $t3, 0x0($a2)
/* 6E878 800B4078 10A90042 */  beq        $a1, $t1, .L800B4184
.L800B407C:
/* 6E87C 800B407C 00071080 */   sll       $v0, $a3, 2
/* 6E880 800B4080 00471021 */  addu       $v0, $v0, $a3
/* 6E884 800B4084 24430005 */  addiu      $v1, $v0, 0x5
/* 6E888 800B4088 2444000A */  addiu      $a0, $v0, 0xA
.L800B408C:
/* 6E88C 800B408C 8FA60170 */  lw         $a2, 0x170($sp)
/* 6E890 800B4090 307900FF */  andi       $t9, $v1, 0xFF
/* 6E894 800B4094 305800FF */  andi       $t8, $v0, 0xFF
/* 6E898 800B4098 24CF0008 */  addiu      $t7, $a2, 0x8
/* 6E89C 800B409C AFAF0170 */  sw         $t7, 0x170($sp)
/* 6E8A0 800B40A0 00197A00 */  sll        $t7, $t9, 8
/* 6E8A4 800B40A4 00187400 */  sll        $t6, $t8, 16
/* 6E8A8 800B40A8 01CFC025 */  or         $t8, $t6, $t7
/* 6E8AC 800B40AC 309900FF */  andi       $t9, $a0, 0xFF
/* 6E8B0 800B40B0 03197025 */  or         $t6, $t8, $t9
/* 6E8B4 800B40B4 ACCE0004 */  sw         $t6, 0x4($a2)
/* 6E8B8 800B40B8 ACCB0000 */  sw         $t3, 0x0($a2)
/* 6E8BC 800B40BC 8FA60170 */  lw         $a2, 0x170($sp)
/* 6E8C0 800B40C0 2463000F */  addiu      $v1, $v1, 0xF
/* 6E8C4 800B40C4 306F00FF */  andi       $t7, $v1, 0xFF
/* 6E8C8 800B40C8 24D80008 */  addiu      $t8, $a2, 0x8
/* 6E8CC 800B40CC AFB80170 */  sw         $t8, 0x170($sp)
/* 6E8D0 800B40D0 2442000F */  addiu      $v0, $v0, 0xF
/* 6E8D4 800B40D4 305900FF */  andi       $t9, $v0, 0xFF
/* 6E8D8 800B40D8 000FC200 */  sll        $t8, $t7, 8
/* 6E8DC 800B40DC 00197400 */  sll        $t6, $t9, 16
/* 6E8E0 800B40E0 2484000F */  addiu      $a0, $a0, 0xF
/* 6E8E4 800B40E4 308F00FF */  andi       $t7, $a0, 0xFF
/* 6E8E8 800B40E8 01D8C825 */  or         $t9, $t6, $t8
/* 6E8EC 800B40EC 032F7025 */  or         $t6, $t9, $t7
/* 6E8F0 800B40F0 ACCE0004 */  sw         $t6, 0x4($a2)
/* 6E8F4 800B40F4 ACCB0000 */  sw         $t3, 0x0($a2)
/* 6E8F8 800B40F8 8FA60170 */  lw         $a2, 0x170($sp)
/* 6E8FC 800B40FC 2463000F */  addiu      $v1, $v1, 0xF
/* 6E900 800B4100 307800FF */  andi       $t8, $v1, 0xFF
/* 6E904 800B4104 24D90008 */  addiu      $t9, $a2, 0x8
/* 6E908 800B4108 AFB90170 */  sw         $t9, 0x170($sp)
/* 6E90C 800B410C 2442000F */  addiu      $v0, $v0, 0xF
/* 6E910 800B4110 304F00FF */  andi       $t7, $v0, 0xFF
/* 6E914 800B4114 0018CA00 */  sll        $t9, $t8, 8
/* 6E918 800B4118 000F7400 */  sll        $t6, $t7, 16
/* 6E91C 800B411C 2484000F */  addiu      $a0, $a0, 0xF
/* 6E920 800B4120 309800FF */  andi       $t8, $a0, 0xFF
/* 6E924 800B4124 01D97825 */  or         $t7, $t6, $t9
/* 6E928 800B4128 01F87025 */  or         $t6, $t7, $t8
/* 6E92C 800B412C ACCE0004 */  sw         $t6, 0x4($a2)
/* 6E930 800B4130 ACCB0000 */  sw         $t3, 0x0($a2)
/* 6E934 800B4134 8FA60170 */  lw         $a2, 0x170($sp)
/* 6E938 800B4138 2463000F */  addiu      $v1, $v1, 0xF
/* 6E93C 800B413C 307900FF */  andi       $t9, $v1, 0xFF
/* 6E940 800B4140 24CF0008 */  addiu      $t7, $a2, 0x8
/* 6E944 800B4144 AFAF0170 */  sw         $t7, 0x170($sp)
/* 6E948 800B4148 2442000F */  addiu      $v0, $v0, 0xF
/* 6E94C 800B414C 305800FF */  andi       $t8, $v0, 0xFF
/* 6E950 800B4150 00197A00 */  sll        $t7, $t9, 8
/* 6E954 800B4154 00187400 */  sll        $t6, $t8, 16
/* 6E958 800B4158 2484000F */  addiu      $a0, $a0, 0xF
/* 6E95C 800B415C 309900FF */  andi       $t9, $a0, 0xFF
/* 6E960 800B4160 01CFC025 */  or         $t8, $t6, $t7
/* 6E964 800B4164 03197025 */  or         $t6, $t8, $t9
/* 6E968 800B4168 24A50004 */  addiu      $a1, $a1, 0x4
/* 6E96C 800B416C 2484000F */  addiu      $a0, $a0, 0xF
/* 6E970 800B4170 2442000F */  addiu      $v0, $v0, 0xF
/* 6E974 800B4174 2463000F */  addiu      $v1, $v1, 0xF
/* 6E978 800B4178 ACCE0004 */  sw         $t6, 0x4($a2)
/* 6E97C 800B417C 14A9FFC3 */  bne        $a1, $t1, .L800B408C
/* 6E980 800B4180 ACCB0000 */   sw        $t3, 0x0($a2)
.L800B4184:
/* 6E984 800B4184 3C02801D */  lui        $v0, %hi(D_801D0790)
/* 6E988 800B4188 8C420790 */  lw         $v0, %lo(D_801D0790)($v0)
.L800B418C:
/* 6E98C 800B418C 26940001 */  addiu      $s4, $s4, 0x1
/* 6E990 800B4190 0282082A */  slt        $at, $s4, $v0
/* 6E994 800B4194 5420FEAA */  bnel       $at, $zero, .L800B3C40
/* 6E998 800B4198 8ECF0000 */   lw        $t7, 0x0($s6)
.L800B419C:
/* 6E99C 800B419C 3C16800D */  lui        $s6, %hi(D_800D48DC)
/* 6E9A0 800B41A0 26D648DC */  addiu      $s6, $s6, %lo(D_800D48DC)
/* 6E9A4 800B41A4 0C02BDE6 */  jal        func_800AF798
/* 6E9A8 800B41A8 27A40170 */   addiu     $a0, $sp, 0x170
/* 6E9AC 800B41AC 8FAF0170 */  lw         $t7, 0x170($sp)
/* 6E9B0 800B41B0 3C19B800 */  lui        $t9, (0xB8000000 >> 16)
/* 6E9B4 800B41B4 3C01801B */  lui        $at, %hi(D_801AE94C)
/* 6E9B8 800B41B8 25F80008 */  addiu      $t8, $t7, 0x8
/* 6E9BC 800B41BC AFB80170 */  sw         $t8, 0x170($sp)
/* 6E9C0 800B41C0 ADE00004 */  sw         $zero, 0x4($t7)
/* 6E9C4 800B41C4 ADF90000 */  sw         $t9, 0x0($t7)
/* 6E9C8 800B41C8 8FAE0170 */  lw         $t6, 0x170($sp)
/* 6E9CC 800B41CC 0C03163C */  jal        func_800C58F0
/* 6E9D0 800B41D0 AC2EE94C */   sw        $t6, %lo(D_801AE94C)($at)
/* 6E9D4 800B41D4 3C18801D */  lui        $t8, %hi(D_801D7B38)
/* 6E9D8 800B41D8 3C19801D */  lui        $t9, %hi(D_801D7B3C)
/* 6E9DC 800B41DC 8F397B3C */  lw         $t9, %lo(D_801D7B3C)($t9)
/* 6E9E0 800B41E0 8F187B38 */  lw         $t8, %lo(D_801D7B38)($t8)
/* 6E9E4 800B41E4 3C04801D */  lui        $a0, %hi(D_801D7B48)
/* 6E9E8 800B41E8 0079082B */  sltu       $at, $v1, $t9
/* 6E9EC 800B41EC 00587023 */  subu       $t6, $v0, $t8
/* 6E9F0 800B41F0 01C17023 */  subu       $t6, $t6, $at
/* 6E9F4 800B41F4 3C01801D */  lui        $at, %hi(D_801D7B3C)
/* 6E9F8 800B41F8 00797823 */  subu       $t7, $v1, $t9
/* 6E9FC 800B41FC AC2F7B3C */  sw         $t7, %lo(D_801D7B3C)($at)
/* 6EA00 800B4200 AC2E7B38 */  sw         $t6, %lo(D_801D7B38)($at)
/* 6EA04 800B4204 24847B48 */  addiu      $a0, $a0, %lo(D_801D7B48)
/* 6EA08 800B4208 3C19801D */  lui        $t9, %hi(D_801D7B3C)
/* 6EA0C 800B420C 8F397B3C */  lw         $t9, %lo(D_801D7B3C)($t9)
/* 6EA10 800B4210 8C8F0004 */  lw         $t7, 0x4($a0)
/* 6EA14 800B4214 3C18801D */  lui        $t8, %hi(D_801D7B38)
/* 6EA18 800B4218 8F187B38 */  lw         $t8, %lo(D_801D7B38)($t8)
/* 6EA1C 800B421C 8C8E0000 */  lw         $t6, 0x0($a0)
/* 6EA20 800B4220 01F97821 */  addu       $t7, $t7, $t9
/* 6EA24 800B4224 3C05801D */  lui        $a1, %hi(D_801D7B50)
/* 6EA28 800B4228 01F9082B */  sltu       $at, $t7, $t9
/* 6EA2C 800B422C 24A57B50 */  addiu      $a1, $a1, %lo(D_801D7B50)
/* 6EA30 800B4230 AFB90054 */  sw         $t9, 0x54($sp)
/* 6EA34 800B4234 8CB90004 */  lw         $t9, 0x4($a1)
/* 6EA38 800B4238 002E7021 */  addu       $t6, $at, $t6
/* 6EA3C 800B423C 01D87021 */  addu       $t6, $t6, $t8
/* 6EA40 800B4240 AFB80050 */  sw         $t8, 0x50($sp)
/* 6EA44 800B4244 8CB80000 */  lw         $t8, 0x0($a1)
/* 6EA48 800B4248 AC8F0004 */  sw         $t7, 0x4($a0)
/* 6EA4C 800B424C 272F0001 */  addiu      $t7, $t9, 0x1
/* 6EA50 800B4250 AC8E0000 */  sw         $t6, 0x0($a0)
/* 6EA54 800B4254 2DE10001 */  sltiu      $at, $t7, 0x1
/* 6EA58 800B4258 03017021 */  addu       $t6, $t8, $at
/* 6EA5C 800B425C 3C06801D */  lui        $a2, %hi(D_801D7B40)
/* 6EA60 800B4260 24C67B40 */  addiu      $a2, $a2, %lo(D_801D7B40)
/* 6EA64 800B4264 ACAE0000 */  sw         $t6, 0x0($a1)
/* 6EA68 800B4268 8FAE0050 */  lw         $t6, 0x50($sp)
/* 6EA6C 800B426C 8CD80000 */  lw         $t8, 0x0($a2)
/* 6EA70 800B4270 ACAF0004 */  sw         $t7, 0x4($a1)
/* 6EA74 800B4274 8FAF0054 */  lw         $t7, 0x54($sp)
/* 6EA78 800B4278 01D8082B */  sltu       $at, $t6, $t8
/* 6EA7C 800B427C 14200008 */  bnez       $at, .L800B42A0
/* 6EA80 800B4280 8CD90004 */   lw        $t9, 0x4($a2)
/* 6EA84 800B4284 030E082B */  sltu       $at, $t8, $t6
/* 6EA88 800B4288 14200003 */  bnez       $at, .L800B4298
/* 6EA8C 800B428C 032F082B */   sltu      $at, $t9, $t7
/* 6EA90 800B4290 10200003 */  beqz       $at, .L800B42A0
/* 6EA94 800B4294 00000000 */   nop
.L800B4298:
/* 6EA98 800B4298 ACCE0000 */  sw         $t6, 0x0($a2)
/* 6EA9C 800B429C ACCF0004 */  sw         $t7, 0x4($a2)
.L800B42A0:
/* 6EAA0 800B42A0 3C19801D */  lui        $t9, %hi(D_801D7B1C)
/* 6EAA4 800B42A4 8F397B1C */  lw         $t9, %lo(D_801D7B1C)($t9)
/* 6EAA8 800B42A8 8FAF0054 */  lw         $t7, 0x54($sp)
/* 6EAAC 800B42AC 3C18801D */  lui        $t8, %hi(D_801D7B18)
/* 6EAB0 800B42B0 8F187B18 */  lw         $t8, %lo(D_801D7B18)($t8)
/* 6EAB4 800B42B4 8FAE0050 */  lw         $t6, 0x50($sp)
/* 6EAB8 800B42B8 032FC821 */  addu       $t9, $t9, $t7
/* 6EABC 800B42BC 032F082B */  sltu       $at, $t9, $t7
/* 6EAC0 800B42C0 3C02801D */  lui        $v0, %hi(D_801D7B58)
/* 6EAC4 800B42C4 0038C021 */  addu       $t8, $at, $t8
/* 6EAC8 800B42C8 24427B58 */  addiu      $v0, $v0, %lo(D_801D7B58)
/* 6EACC 800B42CC 030EC021 */  addu       $t8, $t8, $t6
/* 6EAD0 800B42D0 8C4E0000 */  lw         $t6, 0x0($v0)
/* 6EAD4 800B42D4 AFB80048 */  sw         $t8, 0x48($sp)
/* 6EAD8 800B42D8 8C4F0004 */  lw         $t7, 0x4($v0)
/* 6EADC 800B42DC 030E082B */  sltu       $at, $t8, $t6
/* 6EAE0 800B42E0 14200008 */  bnez       $at, .L800B4304
/* 6EAE4 800B42E4 AFB9004C */   sw        $t9, 0x4C($sp)
/* 6EAE8 800B42E8 01D8082B */  sltu       $at, $t6, $t8
/* 6EAEC 800B42EC 14200003 */  bnez       $at, .L800B42FC
/* 6EAF0 800B42F0 01F9082B */   sltu      $at, $t7, $t9
/* 6EAF4 800B42F4 50200004 */  beql       $at, $zero, .L800B4308
/* 6EAF8 800B42F8 8ECE0000 */   lw        $t6, 0x0($s6)
.L800B42FC:
/* 6EAFC 800B42FC AC580000 */  sw         $t8, 0x0($v0)
/* 6EB00 800B4300 AC590004 */  sw         $t9, 0x4($v0)
.L800B4304:
/* 6EB04 800B4304 8ECE0000 */  lw         $t6, 0x0($s6)
.L800B4308:
/* 6EB08 800B4308 3C03801D */  lui        $v1, %hi(D_801D7B60)
/* 6EB0C 800B430C 3C02801D */  lui        $v0, %hi(D_801D23B8)
/* 6EB10 800B4310 000E78C0 */  sll        $t7, $t6, 3
/* 6EB14 800B4314 01EE7823 */  subu       $t7, $t7, $t6
/* 6EB18 800B4318 000F78C0 */  sll        $t7, $t7, 3
/* 6EB1C 800B431C 01EE7821 */  addu       $t7, $t7, $t6
/* 6EB20 800B4320 000F78C0 */  sll        $t7, $t7, 3
/* 6EB24 800B4324 01EE7823 */  subu       $t7, $t7, $t6
/* 6EB28 800B4328 000F7880 */  sll        $t7, $t7, 2
/* 6EB2C 800B432C 01EE7821 */  addu       $t7, $t7, $t6
/* 6EB30 800B4330 000F7880 */  sll        $t7, $t7, 2
/* 6EB34 800B4334 24637B60 */  addiu      $v1, $v1, %lo(D_801D7B60)
/* 6EB38 800B4338 004F1021 */  addu       $v0, $v0, $t7
/* 6EB3C 800B433C 8C4223B8 */  lw         $v0, %lo(D_801D23B8)($v0)
/* 6EB40 800B4340 8C780000 */  lw         $t8, 0x0($v1)
/* 6EB44 800B4344 3C04801D */  lui        $a0, %hi(D_801D7B68)
/* 6EB48 800B4348 3C0E801B */  lui        $t6, %hi(D_801AE948)
/* 6EB4C 800B434C 0302082A */  slt        $at, $t8, $v0
/* 6EB50 800B4350 50200003 */  beql       $at, $zero, .L800B4360
/* 6EB54 800B4354 8FB90170 */   lw        $t9, 0x170($sp)
/* 6EB58 800B4358 AC620000 */  sw         $v0, 0x0($v1)
/* 6EB5C 800B435C 8FB90170 */  lw         $t9, 0x170($sp)
.L800B4360:
/* 6EB60 800B4360 8DCEE948 */  lw         $t6, %lo(D_801AE948)($t6)
/* 6EB64 800B4364 24847B68 */  addiu      $a0, $a0, %lo(D_801D7B68)
/* 6EB68 800B4368 3C03801D */  lui        $v1, %hi(D_801D7B64)
/* 6EB6C 800B436C 032E7823 */  subu       $t7, $t9, $t6
/* 6EB70 800B4370 8C990000 */  lw         $t9, 0x0($a0)
/* 6EB74 800B4374 000FC0C3 */  sra        $t8, $t7, 3
/* 6EB78 800B4378 24637B64 */  addiu      $v1, $v1, %lo(D_801D7B64)
/* 6EB7C 800B437C 0338082A */  slt        $at, $t9, $t8
/* 6EB80 800B4380 10200002 */  beqz       $at, .L800B438C
/* 6EB84 800B4384 AC780000 */   sw        $t8, 0x0($v1)
/* 6EB88 800B4388 AC980000 */  sw         $t8, 0x0($a0)
.L800B438C:
/* 6EB8C 800B438C 8FBF003C */  lw         $ra, 0x3C($sp)
/* 6EB90 800B4390 8FB00018 */  lw         $s0, 0x18($sp)
/* 6EB94 800B4394 8FB1001C */  lw         $s1, 0x1C($sp)
/* 6EB98 800B4398 8FB20020 */  lw         $s2, 0x20($sp)
/* 6EB9C 800B439C 8FB30024 */  lw         $s3, 0x24($sp)
/* 6EBA0 800B43A0 8FB40028 */  lw         $s4, 0x28($sp)
/* 6EBA4 800B43A4 8FB5002C */  lw         $s5, 0x2C($sp)
/* 6EBA8 800B43A8 8FB60030 */  lw         $s6, 0x30($sp)
/* 6EBAC 800B43AC 8FB70034 */  lw         $s7, 0x34($sp)
/* 6EBB0 800B43B0 8FBE0038 */  lw         $fp, 0x38($sp)
/* 6EBB4 800B43B4 03E00008 */  jr         $ra
/* 6EBB8 800B43B8 27BD01A0 */   addiu     $sp, $sp, 0x1A0

glabel func_800B43BC
/* 6EBBC 800B43BC 27BDFF28 */  addiu      $sp, $sp, -0xD8
/* 6EBC0 800B43C0 AFBF0034 */  sw         $ra, 0x34($sp)
/* 6EBC4 800B43C4 AFA400D8 */  sw         $a0, 0xD8($sp)
/* 6EBC8 800B43C8 AFA500DC */  sw         $a1, 0xDC($sp)
/* 6EBCC 800B43CC AFA600E0 */  sw         $a2, 0xE0($sp)
/* 6EBD0 800B43D0 AFA700E4 */  sw         $a3, 0xE4($sp)
/* 6EBD4 800B43D4 8C820000 */  lw         $v0, 0x0($a0)
/* 6EBD8 800B43D8 3C180105 */  lui        $t8, %hi(D_10514D0)
/* 6EBDC 800B43DC 271814D0 */  addiu      $t8, $t8, %lo(D_10514D0)
/* 6EBE0 800B43E0 00401825 */  or         $v1, $v0, $zero
/* 6EBE4 800B43E4 24420008 */  addiu      $v0, $v0, 0x8
/* 6EBE8 800B43E8 AC780004 */  sw         $t8, 0x4($v1)
/* 6EBEC 800B43EC 3C0F0600 */  lui        $t7, (0x6000000 >> 16)
/* 6EBF0 800B43F0 00402825 */  or         $a1, $v0, $zero
/* 6EBF4 800B43F4 AC6F0000 */  sw         $t7, 0x0($v1)
/* 6EBF8 800B43F8 24420008 */  addiu      $v0, $v0, 0x8
/* 6EBFC 800B43FC 3C19FC12 */  lui        $t9, (0xFC129825 >> 16)
/* 6EC00 800B4400 3C09FF33 */  lui        $t1, (0xFF33FFFF >> 16)
/* 6EC04 800B4404 3529FFFF */  ori        $t1, $t1, (0xFF33FFFF & 0xFFFF)
/* 6EC08 800B4408 37399825 */  ori        $t9, $t9, (0xFC129825 & 0xFFFF)
/* 6EC0C 800B440C 00403025 */  or         $a2, $v0, $zero
/* 6EC10 800B4410 3C0B0050 */  lui        $t3, (0x504B50 >> 16)
/* 6EC14 800B4414 ACB90000 */  sw         $t9, 0x0($a1)
/* 6EC18 800B4418 ACA90004 */  sw         $t1, 0x4($a1)
/* 6EC1C 800B441C 356B4B50 */  ori        $t3, $t3, (0x504B50 & 0xFFFF)
/* 6EC20 800B4420 3C0AB900 */  lui        $t2, (0xB900031D >> 16)
/* 6EC24 800B4424 354A031D */  ori        $t2, $t2, (0xB900031D & 0xFFFF)
/* 6EC28 800B4428 ACCB0004 */  sw         $t3, 0x4($a2)
/* 6EC2C 800B442C 24420008 */  addiu      $v0, $v0, 0x8
/* 6EC30 800B4430 ACCA0000 */  sw         $t2, 0x0($a2)
/* 6EC34 800B4434 00403825 */  or         $a3, $v0, $zero
/* 6EC38 800B4438 3C0CFB00 */  lui        $t4, (0xFB000000 >> 16)
/* 6EC3C 800B443C ACEC0000 */  sw         $t4, 0x0($a3)
/* 6EC40 800B4440 3C18800E */  lui        $t8, %hi(D_800E6D88)
/* 6EC44 800B4444 8F186D88 */  lw         $t8, %lo(D_800E6D88)($t8)
/* 6EC48 800B4448 3C0B800E */  lui        $t3, %hi(D_800E6D8C)
/* 6EC4C 800B444C 3C0D800E */  lui        $t5, %hi(D_800E6D84)
/* 6EC50 800B4450 8DAE6D84 */  lw         $t6, %lo(D_800E6D84)($t5)
/* 6EC54 800B4454 8D6B6D8C */  lw         $t3, %lo(D_800E6D8C)($t3)
/* 6EC58 800B4458 331900FF */  andi       $t9, $t8, 0xFF
/* 6EC5C 800B445C 00194C00 */  sll        $t1, $t9, 16
/* 6EC60 800B4460 000E7E00 */  sll        $t7, $t6, 24
/* 6EC64 800B4464 316C00FF */  andi       $t4, $t3, 0xFF
/* 6EC68 800B4468 000C6A00 */  sll        $t5, $t4, 8
/* 6EC6C 800B446C 01E95025 */  or         $t2, $t7, $t1
/* 6EC70 800B4470 014D7025 */  or         $t6, $t2, $t5
/* 6EC74 800B4474 35D800FF */  ori        $t8, $t6, 0xFF
/* 6EC78 800B4478 ACF80004 */  sw         $t8, 0x4($a3)
/* 6EC7C 800B447C 3C198022 */  lui        $t9, %hi(D_80223930)
/* 6EC80 800B4480 8F393930 */  lw         $t9, %lo(D_80223930)($t9)
/* 6EC84 800B4484 3C098022 */  lui        $t1, %hi(D_80227C80)
/* 6EC88 800B4488 25297C80 */  addiu      $t1, $t1, %lo(D_80227C80)
/* 6EC8C 800B448C 00197900 */  sll        $t7, $t9, 4
/* 6EC90 800B4490 01F97821 */  addu       $t7, $t7, $t9
/* 6EC94 800B4494 000F7880 */  sll        $t7, $t7, 2
/* 6EC98 800B4498 01F97823 */  subu       $t7, $t7, $t9
/* 6EC9C 800B449C 000F7880 */  sll        $t7, $t7, 2
/* 6ECA0 800B44A0 01E94021 */  addu       $t0, $t7, $t1
/* 6ECA4 800B44A4 C504004C */  lwc1       $f4, 0x4C($t0)
/* 6ECA8 800B44A8 C7A600DC */  lwc1       $f6, 0xDC($sp)
/* 6ECAC 800B44AC 44806000 */  mtc1       $zero, $f12
/* 6ECB0 800B44B0 C5080050 */  lwc1       $f8, 0x50($t0)
/* 6ECB4 800B44B4 46062381 */  sub.s      $f14, $f4, $f6
/* 6ECB8 800B44B8 C7AA00E0 */  lwc1       $f10, 0xE0($sp)
/* 6ECBC 800B44BC C7A600E4 */  lwc1       $f6, 0xE4($sp)
/* 6ECC0 800B44C0 C5040054 */  lwc1       $f4, 0x54($t0)
/* 6ECC4 800B44C4 460C7032 */  c.eq.s     $f14, $f12
/* 6ECC8 800B44C8 24420008 */  addiu      $v0, $v0, 0x8
/* 6ECCC 800B44CC 460A4481 */  sub.s      $f18, $f8, $f10
/* 6ECD0 800B44D0 45000005 */  bc1f       .L800B44E8
/* 6ECD4 800B44D4 46062401 */   sub.s     $f16, $f4, $f6
/* 6ECD8 800B44D8 460C8032 */  c.eq.s     $f16, $f12
/* 6ECDC 800B44DC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 6ECE0 800B44E0 45030006 */  bc1tl      .L800B44FC
/* 6ECE4 800B44E4 44811000 */   mtc1      $at, $f2
.L800B44E8:
/* 6ECE8 800B44E8 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 6ECEC 800B44EC 44810000 */  mtc1       $at, $f0
/* 6ECF0 800B44F0 10000003 */  b          .L800B4500
/* 6ECF4 800B44F4 46006086 */   mov.s     $f2, $f12
/* 6ECF8 800B44F8 44811000 */  mtc1       $at, $f2
.L800B44FC:
/* 6ECFC 800B44FC 46006006 */  mov.s      $f0, $f12
.L800B4500:
/* 6ED00 800B4500 3C03801B */  lui        $v1, %hi(D_801AE950)
/* 6ED04 800B4504 2463E950 */  addiu      $v1, $v1, %lo(D_801AE950)
/* 6ED08 800B4508 8C6C0000 */  lw         $t4, 0x0($v1)
/* 6ED0C 800B450C 3C0B801B */  lui        $t3, %hi(D_801AE948)
/* 6ED10 800B4510 8D6BE948 */  lw         $t3, %lo(D_801AE948)($t3)
/* 6ED14 800B4514 C7A800DC */  lwc1       $f8, 0xDC($sp)
/* 6ED18 800B4518 C7AA00E0 */  lwc1       $f10, 0xE0($sp)
/* 6ED1C 800B451C C7A400E4 */  lwc1       $f4, 0xE4($sp)
/* 6ED20 800B4520 000C5180 */  sll        $t2, $t4, 6
/* 6ED24 800B4524 44067000 */  mfc1       $a2, $f14
/* 6ED28 800B4528 44079000 */  mfc1       $a3, $f18
/* 6ED2C 800B452C 016A2021 */  addu       $a0, $t3, $t2
/* 6ED30 800B4530 24844140 */  addiu      $a0, $a0, 0x4140
/* 6ED34 800B4534 27A50074 */  addiu      $a1, $sp, 0x74
/* 6ED38 800B4538 E7B00010 */  swc1       $f16, 0x10($sp)
/* 6ED3C 800B453C E7AC0014 */  swc1       $f12, 0x14($sp)
/* 6ED40 800B4540 E7A00018 */  swc1       $f0, 0x18($sp)
/* 6ED44 800B4544 E7A2001C */  swc1       $f2, 0x1C($sp)
/* 6ED48 800B4548 AFA200B8 */  sw         $v0, 0xB8($sp)
/* 6ED4C 800B454C E7A80020 */  swc1       $f8, 0x20($sp)
/* 6ED50 800B4550 E7AA0024 */  swc1       $f10, 0x24($sp)
/* 6ED54 800B4554 0C012215 */  jal        func_80048854
/* 6ED58 800B4558 E7A40028 */   swc1      $f4, 0x28($sp)
/* 6ED5C 800B455C 8FA800B8 */  lw         $t0, 0xB8($sp)
/* 6ED60 800B4560 3C0D0102 */  lui        $t5, (0x1020040 >> 16)
/* 6ED64 800B4564 C7A000E8 */  lwc1       $f0, 0xE8($sp)
/* 6ED68 800B4568 3C03801B */  lui        $v1, %hi(D_801AE950)
/* 6ED6C 800B456C 35AD0040 */  ori        $t5, $t5, (0x1020040 & 0xFFFF)
/* 6ED70 800B4570 2463E950 */  addiu      $v1, $v1, %lo(D_801AE950)
/* 6ED74 800B4574 AD0D0000 */  sw         $t5, 0x0($t0)
/* 6ED78 800B4578 8C6E0000 */  lw         $t6, 0x0($v1)
/* 6ED7C 800B457C 3C0F0500 */  lui        $t7, %hi(D_5000000)
/* 6ED80 800B4580 25EF0000 */  addiu      $t7, $t7, %lo(D_5000000)
/* 6ED84 800B4584 000EC180 */  sll        $t8, $t6, 6
/* 6ED88 800B4588 27194140 */  addiu      $t9, $t8, 0x4140
/* 6ED8C 800B458C 032F4821 */  addu       $t1, $t9, $t7
/* 6ED90 800B4590 AD090004 */  sw         $t1, 0x4($t0)
/* 6ED94 800B4594 8C6C0000 */  lw         $t4, 0x0($v1)
/* 6ED98 800B4598 3C0A801B */  lui        $t2, %hi(D_801AE948)
/* 6ED9C 800B459C 25020008 */  addiu      $v0, $t0, 0x8
/* 6EDA0 800B45A0 258B0001 */  addiu      $t3, $t4, 0x1
/* 6EDA4 800B45A4 AC6B0000 */  sw         $t3, 0x0($v1)
/* 6EDA8 800B45A8 8D4AE948 */  lw         $t2, %lo(D_801AE948)($t2)
/* 6EDAC 800B45AC 000B7180 */  sll        $t6, $t3, 6
/* 6EDB0 800B45B0 44050000 */  mfc1       $a1, $f0
/* 6EDB4 800B45B4 44060000 */  mfc1       $a2, $f0
/* 6EDB8 800B45B8 44070000 */  mfc1       $a3, $f0
/* 6EDBC 800B45BC 014E2021 */  addu       $a0, $t2, $t6
/* 6EDC0 800B45C0 24844140 */  addiu      $a0, $a0, 0x4140
/* 6EDC4 800B45C4 0C07BA5F */  jal        func_801EE97C
/* 6EDC8 800B45C8 AFA200B8 */   sw        $v0, 0xB8($sp)
/* 6EDCC 800B45CC 8FA200B8 */  lw         $v0, 0xB8($sp)
/* 6EDD0 800B45D0 3C180100 */  lui        $t8, (0x1000040 >> 16)
/* 6EDD4 800B45D4 3C03801B */  lui        $v1, %hi(D_801AE950)
/* 6EDD8 800B45D8 37180040 */  ori        $t8, $t8, (0x1000040 & 0xFFFF)
/* 6EDDC 800B45DC 00402025 */  or         $a0, $v0, $zero
/* 6EDE0 800B45E0 2463E950 */  addiu      $v1, $v1, %lo(D_801AE950)
/* 6EDE4 800B45E4 AC980000 */  sw         $t8, 0x0($a0)
/* 6EDE8 800B45E8 8C790000 */  lw         $t9, 0x0($v1)
/* 6EDEC 800B45EC 3C0C0500 */  lui        $t4, %hi(D_5000000)
/* 6EDF0 800B45F0 258C0000 */  addiu      $t4, $t4, %lo(D_5000000)
/* 6EDF4 800B45F4 00197980 */  sll        $t7, $t9, 6
/* 6EDF8 800B45F8 25E94140 */  addiu      $t1, $t7, 0x4140
/* 6EDFC 800B45FC 012C5821 */  addu       $t3, $t1, $t4
/* 6EE00 800B4600 AC8B0004 */  sw         $t3, 0x4($a0)
/* 6EE04 800B4604 8C6D0000 */  lw         $t5, 0x0($v1)
/* 6EE08 800B4608 8FAE00EC */  lw         $t6, 0xEC($sp)
/* 6EE0C 800B460C 24420008 */  addiu      $v0, $v0, 0x8
/* 6EE10 800B4610 25AA0001 */  addiu      $t2, $t5, 0x1
/* 6EE14 800B4614 2DC10007 */  sltiu      $at, $t6, 0x7
/* 6EE18 800B4618 10200007 */  beqz       $at, L800B4638
/* 6EE1C 800B461C AC6A0000 */   sw        $t2, 0x0($v1)
/* 6EE20 800B4620 000E7080 */  sll        $t6, $t6, 2
/* 6EE24 800B4624 3C01800F */  lui        $at, %hi(jtbl_800EBC04_main)
/* 6EE28 800B4628 002E0821 */  addu       $at, $at, $t6
/* 6EE2C 800B462C 8C2EBC04 */  lw         $t6, %lo(jtbl_800EBC04_main)($at)
/* 6EE30 800B4630 01C00008 */  jr         $t6
/* 6EE34 800B4634 00000000 */   nop
glabel L800B4638
/* 6EE38 800B4638 3C070105 */  lui        $a3, %hi(D_1049C80)
/* 6EE3C 800B463C 10000012 */  b          .L800B4688
/* 6EE40 800B4640 24E79C80 */   addiu     $a3, $a3, %lo(D_1049C80)
glabel L800B4644
/* 6EE44 800B4644 3C070105 */  lui        $a3, %hi(D_104A488)
/* 6EE48 800B4648 1000000F */  b          .L800B4688
/* 6EE4C 800B464C 24E7A488 */   addiu     $a3, $a3, %lo(D_104A488)
glabel L800B4650
/* 6EE50 800B4650 3C070105 */  lui        $a3, %hi(D_104AC90)
/* 6EE54 800B4654 1000000C */  b          .L800B4688
/* 6EE58 800B4658 24E7AC90 */   addiu     $a3, $a3, %lo(D_104AC90)
glabel L800B465C
/* 6EE5C 800B465C 3C070105 */  lui        $a3, %hi(D_104B498)
/* 6EE60 800B4660 10000009 */  b          .L800B4688
/* 6EE64 800B4664 24E7B498 */   addiu     $a3, $a3, %lo(D_104B498)
glabel L800B4668
/* 6EE68 800B4668 3C070105 */  lui        $a3, %hi(D_104BCA0)
/* 6EE6C 800B466C 10000006 */  b          .L800B4688
/* 6EE70 800B4670 24E7BCA0 */   addiu     $a3, $a3, %lo(D_104BCA0)
glabel L800B4674
/* 6EE74 800B4674 3C070105 */  lui        $a3, %hi(D_104C4A8)
/* 6EE78 800B4678 10000003 */  b          .L800B4688
/* 6EE7C 800B467C 24E7C4A8 */   addiu     $a3, $a3, %lo(D_104C4A8)
glabel L800B4680
/* 6EE80 800B4680 3C070105 */  lui        $a3, %hi(D_104CCB0)
/* 6EE84 800B4684 24E7CCB0 */  addiu      $a3, $a3, %lo(D_104CCB0)
.L800B4688:
/* 6EE88 800B4688 00401825 */  or         $v1, $v0, $zero
/* 6EE8C 800B468C 24440008 */  addiu      $a0, $v0, 0x8
/* 6EE90 800B4690 3C18FD70 */  lui        $t8, (0xFD700000 >> 16)
/* 6EE94 800B4694 AC780000 */  sw         $t8, 0x0($v1)
/* 6EE98 800B4698 AC670004 */  sw         $a3, 0x4($v1)
/* 6EE9C 800B469C 3C19F570 */  lui        $t9, (0xF5700000 >> 16)
/* 6EEA0 800B46A0 3C0F0700 */  lui        $t7, (0x7000000 >> 16)
/* 6EEA4 800B46A4 AC8F0004 */  sw         $t7, 0x4($a0)
/* 6EEA8 800B46A8 AC990000 */  sw         $t9, 0x0($a0)
/* 6EEAC 800B46AC 24820008 */  addiu      $v0, $a0, 0x8
/* 6EEB0 800B46B0 24460008 */  addiu      $a2, $v0, 0x8
/* 6EEB4 800B46B4 3C09E600 */  lui        $t1, (0xE6000000 >> 16)
/* 6EEB8 800B46B8 AC490000 */  sw         $t1, 0x0($v0)
/* 6EEBC 800B46BC AC400004 */  sw         $zero, 0x4($v0)
/* 6EEC0 800B46C0 3C0B073F */  lui        $t3, (0x73FF100 >> 16)
/* 6EEC4 800B46C4 356BF100 */  ori        $t3, $t3, (0x73FF100 & 0xFFFF)
/* 6EEC8 800B46C8 24C80008 */  addiu      $t0, $a2, 0x8
/* 6EECC 800B46CC 3C0CF300 */  lui        $t4, (0xF3000000 >> 16)
/* 6EED0 800B46D0 ACCC0000 */  sw         $t4, 0x0($a2)
/* 6EED4 800B46D4 ACCB0004 */  sw         $t3, 0x4($a2)
/* 6EED8 800B46D8 25030008 */  addiu      $v1, $t0, 0x8
/* 6EEDC 800B46DC 3C0DE700 */  lui        $t5, (0xE7000000 >> 16)
/* 6EEE0 800B46E0 AD0D0000 */  sw         $t5, 0x0($t0)
/* 6EEE4 800B46E4 AD000004 */  sw         $zero, 0x4($t0)
/* 6EEE8 800B46E8 3C0AF570 */  lui        $t2, (0xF5701000 >> 16)
/* 6EEEC 800B46EC 354A1000 */  ori        $t2, $t2, (0xF5701000 & 0xFFFF)
/* 6EEF0 800B46F0 24640008 */  addiu      $a0, $v1, 0x8
/* 6EEF4 800B46F4 AC6A0000 */  sw         $t2, 0x0($v1)
/* 6EEF8 800B46F8 AC600004 */  sw         $zero, 0x4($v1)
/* 6EEFC 800B46FC 3C180007 */  lui        $t8, (0x7C07C >> 16)
/* 6EF00 800B4700 3718C07C */  ori        $t8, $t8, (0x7C07C & 0xFFFF)
/* 6EF04 800B4704 3C0EF200 */  lui        $t6, (0xF2000000 >> 16)
/* 6EF08 800B4708 AC8E0000 */  sw         $t6, 0x0($a0)
/* 6EF0C 800B470C AC980004 */  sw         $t8, 0x4($a0)
/* 6EF10 800B4710 24850008 */  addiu      $a1, $a0, 0x8
/* 6EF14 800B4714 3C0F0105 */  lui        $t7, %hi(D_1051580)
/* 6EF18 800B4718 25EF1580 */  addiu      $t7, $t7, %lo(D_1051580)
/* 6EF1C 800B471C 3C190600 */  lui        $t9, (0x6000000 >> 16)
/* 6EF20 800B4720 ACB90000 */  sw         $t9, 0x0($a1)
/* 6EF24 800B4724 ACAF0004 */  sw         $t7, 0x4($a1)
/* 6EF28 800B4728 8FA900D8 */  lw         $t1, 0xD8($sp)
/* 6EF2C 800B472C 24A20008 */  addiu      $v0, $a1, 0x8
/* 6EF30 800B4730 AD220000 */  sw         $v0, 0x0($t1)
/* 6EF34 800B4734 8FBF0034 */  lw         $ra, 0x34($sp)
/* 6EF38 800B4738 27BD00D8 */  addiu      $sp, $sp, 0xD8
/* 6EF3C 800B473C 03E00008 */  jr         $ra
/* 6EF40 800B4740 00000000 */   nop
/* 6EF44 800B4744 00000000 */  nop
/* 6EF48 800B4748 00000000 */  nop
/* 6EF4C 800B474C 00000000 */  nop
