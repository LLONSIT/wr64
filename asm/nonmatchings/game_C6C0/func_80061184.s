glabel func_80061184
/* 1B984 80061184 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1B988 80061188 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1B98C 8006118C 94830B56 */  lhu        $v1, 0xB56($a0)
/* 1B990 80061190 94850B50 */  lhu        $a1, 0xB50($a0)
/* 1B994 80061194 80870B52 */  lb         $a3, 0xB52($a0)
/* 1B998 80061198 808D0B53 */  lb         $t5, 0xB53($a0)
/* 1B99C 8006119C 0065C026 */  xor        $t8, $v1, $a1
/* 1B9A0 800611A0 03036024 */  and        $t4, $t8, $v1
/* 1B9A4 800611A4 0305C824 */  and        $t9, $t8, $a1
/* 1B9A8 800611A8 A4990B58 */  sh         $t9, 0xB58($a0)
/* 1B9AC 800611AC A48C0B5A */  sh         $t4, 0xB5A($a0)
/* 1B9B0 800611B0 3C09800D */  lui        $t1, %hi(D_800D49DC)
/* 1B9B4 800611B4 A4830B5C */  sh         $v1, 0xB5C($a0)
/* 1B9B8 800611B8 A4850B56 */  sh         $a1, 0xB56($a0)
/* 1B9BC 800611BC A0870B5E */  sb         $a3, 0xB5E($a0)
/* 1B9C0 800611C0 A08D0B5F */  sb         $t5, 0xB5F($a0)
/* 1B9C4 800611C4 8C8A0B60 */  lw         $t2, 0xB60($a0)
/* 1B9C8 800611C8 8D2949DC */  lw         $t1, %lo(D_800D49DC)($t1)
/* 1B9CC 800611CC 24850B56 */  addiu      $a1, $a0, 0xB56
/* 1B9D0 800611D0 00EA4023 */  subu       $t0, $a3, $t2
/* 1B9D4 800611D4 00095823 */  negu       $t3, $t1
/* 1B9D8 800611D8 010B082A */  slt        $at, $t0, $t3
/* 1B9DC 800611DC 50200004 */  beql       $at, $zero, .L800611F0
/* 1B9E0 800611E0 0128082A */   slt       $at, $t1, $t0
/* 1B9E4 800611E4 10000005 */  b          .L800611FC
/* 1B9E8 800611E8 01604025 */   or        $t0, $t3, $zero
/* 1B9EC 800611EC 0128082A */  slt        $at, $t1, $t0
.L800611F0:
/* 1B9F0 800611F0 50200003 */  beql       $at, $zero, .L80061200
/* 1B9F4 800611F4 01487021 */   addu      $t6, $t2, $t0
/* 1B9F8 800611F8 01204025 */  or         $t0, $t1, $zero
.L800611FC:
/* 1B9FC 800611FC 01487021 */  addu       $t6, $t2, $t0
.L80061200:
/* 1BA00 80061200 AC8E0B60 */  sw         $t6, 0xB60($a0)
/* 1BA04 80061204 94AF0000 */  lhu        $t7, 0x0($a1)
/* 1BA08 80061208 8C830C54 */  lw         $v1, 0xC54($a0)
/* 1BA0C 8006120C 24070017 */  addiu      $a3, $zero, 0x17
/* 1BA10 80061210 31F8A000 */  andi       $t8, $t7, 0xA000
/* 1BA14 80061214 10E30015 */  beq        $a3, $v1, .L8006126C
/* 1BA18 80061218 A4980C66 */   sh        $t8, 0xC66($a0)
/* 1BA1C 8006121C 94991608 */  lhu        $t9, 0x1608($a0)
/* 1BA20 80061220 24010007 */  addiu      $at, $zero, 0x7
/* 1BA24 80061224 57200012 */  bnel       $t9, $zero, .L80061270
/* 1BA28 80061228 A0A00009 */   sb        $zero, 0x9($a1)
/* 1BA2C 8006122C 14610005 */  bne        $v1, $at, .L80061244
/* 1BA30 80061230 00000000 */   nop
/* 1BA34 80061234 8C8C0C58 */  lw         $t4, 0xC58($a0)
/* 1BA38 80061238 29810038 */  slti       $at, $t4, 0x38
/* 1BA3C 8006123C 5420000C */  bnel       $at, $zero, .L80061270
/* 1BA40 80061240 A0A00009 */   sb        $zero, 0x9($a1)
.L80061244:
/* 1BA44 80061244 18600002 */  blez       $v1, .L80061250
/* 1BA48 80061248 28610007 */   slti      $at, $v1, 0x7
/* 1BA4C 8006124C 14200007 */  bnez       $at, .L8006126C
.L80061250:
/* 1BA50 80061250 3C02801D */   lui       $v0, %hi(D_801CE648)
/* 1BA54 80061254 8C42E648 */  lw         $v0, %lo(D_801CE648)($v0)
/* 1BA58 80061258 24060001 */  addiu      $a2, $zero, 0x1
/* 1BA5C 8006125C 50400004 */  beql       $v0, $zero, .L80061270
/* 1BA60 80061260 A0A00009 */   sb        $zero, 0x9($a1)
/* 1BA64 80061264 14C20018 */  bne        $a2, $v0, .L800612C8
/* 1BA68 80061268 24010018 */   addiu     $at, $zero, 0x18
.L8006126C:
/* 1BA6C 8006126C A0A00009 */  sb         $zero, 0x9($a1)
.L80061270:
/* 1BA70 80061270 80AD0009 */  lb         $t5, 0x9($a1)
/* 1BA74 80061274 24010007 */  addiu      $at, $zero, 0x7
/* 1BA78 80061278 240E0001 */  addiu      $t6, $zero, 0x1
/* 1BA7C 8006127C A0AD0008 */  sb         $t5, 0x8($a1)
/* 1BA80 80061280 8C830C54 */  lw         $v1, 0xC54($a0)
/* 1BA84 80061284 A4800C66 */  sh         $zero, 0xC66($a0)
/* 1BA88 80061288 A48015DC */  sh         $zero, 0x15DC($a0)
/* 1BA8C 8006128C 1061000A */  beq        $v1, $at, .L800612B8
/* 1BA90 80061290 00000000 */   nop
/* 1BA94 80061294 14E3000A */  bne        $a3, $v1, .L800612C0
/* 1BA98 80061298 00000000 */   nop
/* 1BA9C 8006129C C4840668 */  lwc1       $f4, 0x668($a0)
/* 1BAA0 800612A0 44803000 */  mtc1       $zero, $f6
/* 1BAA4 800612A4 00000000 */  nop
/* 1BAA8 800612A8 4606203C */  c.lt.s     $f4, $f6
/* 1BAAC 800612AC 00000000 */  nop
/* 1BAB0 800612B0 45000003 */  bc1f       .L800612C0
/* 1BAB4 800612B4 00000000 */   nop
.L800612B8:
/* 1BAB8 800612B8 1000002B */  b          .L80061368
/* 1BABC 800612BC A48E1444 */   sh        $t6, 0x1444($a0)
.L800612C0:
/* 1BAC0 800612C0 10000029 */  b          .L80061368
/* 1BAC4 800612C4 A4801444 */   sh        $zero, 0x1444($a0)
.L800612C8:
/* 1BAC8 800612C8 A48615DC */  sh         $a2, 0x15DC($a0)
/* 1BACC 800612CC 14610007 */  bne        $v1, $at, .L800612EC
/* 1BAD0 800612D0 A4801444 */   sh        $zero, 0x1444($a0)
/* 1BAD4 800612D4 3C01800F */  lui        $at, %hi(D_800E974C)
/* 1BAD8 800612D8 C42A974C */  lwc1       $f10, %lo(D_800E974C)($at)
/* 1BADC 800612DC C4881578 */  lwc1       $f8, 0x1578($a0)
/* 1BAE0 800612E0 460A4402 */  mul.s      $f16, $f8, $f10
/* 1BAE4 800612E4 10000020 */  b          .L80061368
/* 1BAE8 800612E8 E4901578 */   swc1      $f16, 0x1578($a0)
.L800612EC:
/* 1BAEC 800612EC 24010009 */  addiu      $at, $zero, 0x9
/* 1BAF0 800612F0 10610002 */  beq        $v1, $at, .L800612FC
/* 1BAF4 800612F4 24010011 */   addiu     $at, $zero, 0x11
/* 1BAF8 800612F8 14610006 */  bne        $v1, $at, .L80061314
.L800612FC:
/* 1BAFC 800612FC 3C01800F */   lui       $at, %hi(D_800E9750)
/* 1BB00 80061300 C4249750 */  lwc1       $f4, %lo(D_800E9750)($at)
/* 1BB04 80061304 C4921578 */  lwc1       $f18, 0x1578($a0)
/* 1BB08 80061308 46049182 */  mul.s      $f6, $f18, $f4
/* 1BB0C 8006130C 10000016 */  b          .L80061368
/* 1BB10 80061310 E4861578 */   swc1      $f6, 0x1578($a0)
.L80061314:
/* 1BB14 80061314 24010008 */  addiu      $at, $zero, 0x8
/* 1BB18 80061318 54610014 */  bnel       $v1, $at, .L8006136C
/* 1BB1C 8006131C 80A20008 */   lb        $v0, 0x8($a1)
/* 1BB20 80061320 80AF0008 */  lb         $t7, 0x8($a1)
/* 1BB24 80061324 3C01800F */  lui        $at, %hi(D_800E9754)
/* 1BB28 80061328 C4309754 */  lwc1       $f16, %lo(D_800E9754)($at)
/* 1BB2C 8006132C 448F4000 */  mtc1       $t7, $f8
/* 1BB30 80061330 AFA50018 */  sw         $a1, 0x18($sp)
/* 1BB34 80061334 AFA40030 */  sw         $a0, 0x30($sp)
/* 1BB38 80061338 468042A0 */  cvt.s.w    $f10, $f8
/* 1BB3C 8006133C 46105302 */  mul.s      $f12, $f10, $f16
/* 1BB40 80061340 0C011EF8 */  jal        func_80047BE0
/* 1BB44 80061344 00000000 */   nop
/* 1BB48 80061348 8FA50018 */  lw         $a1, 0x18($sp)
/* 1BB4C 8006134C 8FA40030 */  lw         $a0, 0x30($sp)
/* 1BB50 80061350 3C01800F */  lui        $at, %hi(D_800E9758)
/* 1BB54 80061354 A0A20008 */  sb         $v0, 0x8($a1)
/* 1BB58 80061358 C4249758 */  lwc1       $f4, %lo(D_800E9758)($at)
/* 1BB5C 8006135C C4921578 */  lwc1       $f18, 0x1578($a0)
/* 1BB60 80061360 46049182 */  mul.s      $f6, $f18, $f4
/* 1BB64 80061364 E4861578 */  swc1       $f6, 0x1578($a0)
.L80061368:
/* 1BB68 80061368 80A20008 */  lb         $v0, 0x8($a1)
.L8006136C:
/* 1BB6C 8006136C 3C038015 */  lui        $v1, %hi(D_80151960)
/* 1BB70 80061370 24631960 */  addiu      $v1, $v1, %lo(D_80151960)
/* 1BB74 80061374 2841FFF2 */  slti       $at, $v0, -0xE
/* 1BB78 80061378 50200005 */  beql       $at, $zero, .L80061390
/* 1BB7C 8006137C 2841000F */   slti      $at, $v0, 0xF
/* 1BB80 80061380 8C780000 */  lw         $t8, 0x0($v1)
/* 1BB84 80061384 10000007 */  b          .L800613A4
/* 1BB88 80061388 AC98159C */   sw        $t8, 0x159C($a0)
/* 1BB8C 8006138C 2841000F */  slti       $at, $v0, 0xF
.L80061390:
/* 1BB90 80061390 14200004 */  bnez       $at, .L800613A4
/* 1BB94 80061394 3C038015 */   lui       $v1, %hi(D_80151960)
/* 1BB98 80061398 24631960 */  addiu      $v1, $v1, %lo(D_80151960)
/* 1BB9C 8006139C 8C790000 */  lw         $t9, 0x0($v1)
/* 1BBA0 800613A0 AC9915A0 */  sw         $t9, 0x15A0($a0)
.L800613A4:
/* 1BBA4 800613A4 80A20009 */  lb         $v0, 0x9($a1)
/* 1BBA8 800613A8 3C038015 */  lui        $v1, %hi(D_80151960)
/* 1BBAC 800613AC 24631960 */  addiu      $v1, $v1, %lo(D_80151960)
/* 1BBB0 800613B0 2841FFF2 */  slti       $at, $v0, -0xE
/* 1BBB4 800613B4 5020000C */  beql       $at, $zero, .L800613E8
/* 1BBB8 800613B8 2841000F */   slti      $at, $v0, 0xF
/* 1BBBC 800613BC 8C6C0000 */  lw         $t4, 0x0($v1)
/* 1BBC0 800613C0 AC8C15A8 */  sw         $t4, 0x15A8($a0)
/* 1BBC4 800613C4 94AD0000 */  lhu        $t5, 0x0($a1)
/* 1BBC8 800613C8 31AEA000 */  andi       $t6, $t5, 0xA000
/* 1BBCC 800613CC 55C0000B */  bnel       $t6, $zero, .L800613FC
/* 1BBD0 800613D0 24850B50 */   addiu     $a1, $a0, 0xB50
/* 1BBD4 800613D4 8C6F0000 */  lw         $t7, 0x0($v1)
/* 1BBD8 800613D8 A4801600 */  sh         $zero, 0x1600($a0)
/* 1BBDC 800613DC 10000006 */  b          .L800613F8
/* 1BBE0 800613E0 AC8F15F0 */   sw        $t7, 0x15F0($a0)
/* 1BBE4 800613E4 2841000F */  slti       $at, $v0, 0xF
.L800613E8:
/* 1BBE8 800613E8 54200004 */  bnel       $at, $zero, .L800613FC
/* 1BBEC 800613EC 24850B50 */   addiu     $a1, $a0, 0xB50
/* 1BBF0 800613F0 8C780000 */  lw         $t8, 0x0($v1)
/* 1BBF4 800613F4 AC9815A4 */  sw         $t8, 0x15A4($a0)
.L800613F8:
/* 1BBF8 800613F8 24850B50 */  addiu      $a1, $a0, 0xB50
.L800613FC:
/* 1BBFC 800613FC 80A30002 */  lb         $v1, 0x2($a1)
/* 1BC00 80061400 00001025 */  or         $v0, $zero, $zero
/* 1BC04 80061404 2861FFC0 */  slti       $at, $v1, -0x40
/* 1BC08 80061408 10200004 */  beqz       $at, .L8006141C
/* 1BC0C 8006140C 24190001 */   addiu     $t9, $zero, 0x1
/* 1BC10 80061410 A4991600 */  sh         $t9, 0x1600($a0)
/* 1BC14 80061414 24020200 */  addiu      $v0, $zero, 0x200
/* 1BC18 80061418 80A30002 */  lb         $v1, 0x2($a1)
.L8006141C:
/* 1BC1C 8006141C 28610041 */  slti       $at, $v1, 0x41
/* 1BC20 80061420 14200004 */  bnez       $at, .L80061434
/* 1BC24 80061424 344C0100 */   ori       $t4, $v0, 0x100
/* 1BC28 80061428 240E0001 */  addiu      $t6, $zero, 0x1
/* 1BC2C 8006142C 3182FFFF */  andi       $v0, $t4, 0xFFFF
/* 1BC30 80061430 A48E1600 */  sh         $t6, 0x1600($a0)
.L80061434:
/* 1BC34 80061434 80A60003 */  lb         $a2, 0x3($a1)
/* 1BC38 80061438 8C830C54 */  lw         $v1, 0xC54($a0)
/* 1BC3C 8006143C 28C10041 */  slti       $at, $a2, 0x41
/* 1BC40 80061440 14200002 */  bnez       $at, .L8006144C
/* 1BC44 80061444 344F0800 */   ori       $t7, $v0, 0x800
/* 1BC48 80061448 31E2FFFF */  andi       $v0, $t7, 0xFFFF
.L8006144C:
/* 1BC4C 8006144C 28C1FFC0 */  slti       $at, $a2, -0x40
/* 1BC50 80061450 10200002 */  beqz       $at, .L8006145C
/* 1BC54 80061454 34590400 */   ori       $t9, $v0, 0x400
/* 1BC58 80061458 3322FFFF */  andi       $v0, $t9, 0xFFFF
.L8006145C:
/* 1BC5C 8006145C 948D15F6 */  lhu        $t5, 0x15F6($a0)
/* 1BC60 80061460 24010016 */  addiu      $at, $zero, 0x16
/* 1BC64 80061464 A48215F6 */  sh         $v0, 0x15F6($a0)
/* 1BC68 80061468 01A27026 */  xor        $t6, $t5, $v0
/* 1BC6C 8006146C 01C27824 */  and        $t7, $t6, $v0
/* 1BC70 80061470 10610004 */  beq        $v1, $at, .L80061484
/* 1BC74 80061474 A48F15F4 */   sh        $t7, 0x15F4($a0)
/* 1BC78 80061478 2401000F */  addiu      $at, $zero, 0xF
/* 1BC7C 8006147C 5461006C */  bnel       $v1, $at, .L80061630
/* 1BC80 80061480 A48015FA */   sh        $zero, 0x15FA($a0)
.L80061484:
/* 1BC84 80061484 94980C66 */  lhu        $t8, 0xC66($a0)
/* 1BC88 80061488 57000060 */  bnel       $t8, $zero, .L8006160C
/* 1BC8C 8006148C 949915FE */   lhu       $t9, 0x15FE($a0)
/* 1BC90 80061490 948315F4 */  lhu        $v1, 0x15F4($a0)
/* 1BC94 80061494 5060005D */  beql       $v1, $zero, .L8006160C
/* 1BC98 80061498 949915FE */   lhu       $t9, 0x15FE($a0)
/* 1BC9C 8006149C 948515F8 */  lhu        $a1, 0x15F8($a0)
/* 1BCA0 800614A0 14A00003 */  bnez       $a1, .L800614B0
/* 1BCA4 800614A4 24B90001 */   addiu     $t9, $a1, 0x1
/* 1BCA8 800614A8 10000025 */  b          .L80061540
/* 1BCAC 800614AC A49915F8 */   sh        $t9, 0x15F8($a0)
.L800614B0:
/* 1BCB0 800614B0 948215FC */  lhu        $v0, 0x15FC($a0)
/* 1BCB4 800614B4 24010100 */  addiu      $at, $zero, 0x100
/* 1BCB8 800614B8 306E0800 */  andi       $t6, $v1, 0x800
/* 1BCBC 800614BC 1041000F */  beq        $v0, $at, .L800614FC
/* 1BCC0 800614C0 24010200 */   addiu     $at, $zero, 0x200
/* 1BCC4 800614C4 10410019 */  beq        $v0, $at, .L8006152C
/* 1BCC8 800614C8 306C0400 */   andi      $t4, $v1, 0x400
/* 1BCCC 800614CC 24010400 */  addiu      $at, $zero, 0x400
/* 1BCD0 800614D0 10410010 */  beq        $v0, $at, .L80061514
/* 1BCD4 800614D4 30780100 */   andi      $t8, $v1, 0x100
/* 1BCD8 800614D8 24010800 */  addiu      $at, $zero, 0x800
/* 1BCDC 800614DC 14410018 */  bne        $v0, $at, .L80061540
/* 1BCE0 800614E0 306C0200 */   andi      $t4, $v1, 0x200
/* 1BCE4 800614E4 11800003 */  beqz       $t4, .L800614F4
/* 1BCE8 800614E8 24AD0001 */   addiu     $t5, $a1, 0x1
/* 1BCEC 800614EC 10000014 */  b          .L80061540
/* 1BCF0 800614F0 A48D15F8 */   sh        $t5, 0x15F8($a0)
.L800614F4:
/* 1BCF4 800614F4 10000012 */  b          .L80061540
/* 1BCF8 800614F8 A48015F8 */   sh        $zero, 0x15F8($a0)
.L800614FC:
/* 1BCFC 800614FC 11C00003 */  beqz       $t6, .L8006150C
/* 1BD00 80061500 24AF0001 */   addiu     $t7, $a1, 0x1
/* 1BD04 80061504 1000000E */  b          .L80061540
/* 1BD08 80061508 A48F15F8 */   sh        $t7, 0x15F8($a0)
.L8006150C:
/* 1BD0C 8006150C 1000000C */  b          .L80061540
/* 1BD10 80061510 A48015F8 */   sh        $zero, 0x15F8($a0)
.L80061514:
/* 1BD14 80061514 13000003 */  beqz       $t8, .L80061524
/* 1BD18 80061518 24B90001 */   addiu     $t9, $a1, 0x1
/* 1BD1C 8006151C 10000008 */  b          .L80061540
/* 1BD20 80061520 A49915F8 */   sh        $t9, 0x15F8($a0)
.L80061524:
/* 1BD24 80061524 10000006 */  b          .L80061540
/* 1BD28 80061528 A48015F8 */   sh        $zero, 0x15F8($a0)
.L8006152C:
/* 1BD2C 8006152C 11800003 */  beqz       $t4, .L8006153C
/* 1BD30 80061530 24AD0001 */   addiu     $t5, $a1, 0x1
/* 1BD34 80061534 10000002 */  b          .L80061540
/* 1BD38 80061538 A48D15F8 */   sh        $t5, 0x15F8($a0)
.L8006153C:
/* 1BD3C 8006153C A48015F8 */  sh         $zero, 0x15F8($a0)
.L80061540:
/* 1BD40 80061540 948515FA */  lhu        $a1, 0x15FA($a0)
/* 1BD44 80061544 14A00004 */  bnez       $a1, .L80061558
/* 1BD48 80061548 24AE0001 */   addiu     $t6, $a1, 0x1
/* 1BD4C 8006154C A48E15FA */  sh         $t6, 0x15FA($a0)
/* 1BD50 80061550 1000002A */  b          .L800615FC
/* 1BD54 80061554 948315F4 */   lhu       $v1, 0x15F4($a0)
.L80061558:
/* 1BD58 80061558 948215FC */  lhu        $v0, 0x15FC($a0)
/* 1BD5C 8006155C 948315F4 */  lhu        $v1, 0x15F4($a0)
/* 1BD60 80061560 24010100 */  addiu      $at, $zero, 0x100
/* 1BD64 80061564 10410011 */  beq        $v0, $at, .L800615AC
/* 1BD68 80061568 30790400 */   andi      $t9, $v1, 0x400
/* 1BD6C 8006156C 24010200 */  addiu      $at, $zero, 0x200
/* 1BD70 80061570 1041001C */  beq        $v0, $at, .L800615E4
/* 1BD74 80061574 306F0800 */   andi      $t7, $v1, 0x800
/* 1BD78 80061578 24010400 */  addiu      $at, $zero, 0x400
/* 1BD7C 8006157C 10410012 */  beq        $v0, $at, .L800615C8
/* 1BD80 80061580 306D0200 */   andi      $t5, $v1, 0x200
/* 1BD84 80061584 24010800 */  addiu      $at, $zero, 0x800
/* 1BD88 80061588 1441001C */  bne        $v0, $at, .L800615FC
/* 1BD8C 8006158C 306F0100 */   andi      $t7, $v1, 0x100
/* 1BD90 80061590 11E00003 */  beqz       $t7, .L800615A0
/* 1BD94 80061594 24B80001 */   addiu     $t8, $a1, 0x1
/* 1BD98 80061598 10000002 */  b          .L800615A4
/* 1BD9C 8006159C A49815FA */   sh        $t8, 0x15FA($a0)
.L800615A0:
/* 1BDA0 800615A0 A48015FA */  sh         $zero, 0x15FA($a0)
.L800615A4:
/* 1BDA4 800615A4 10000015 */  b          .L800615FC
/* 1BDA8 800615A8 948315F4 */   lhu       $v1, 0x15F4($a0)
.L800615AC:
/* 1BDAC 800615AC 13200003 */  beqz       $t9, .L800615BC
/* 1BDB0 800615B0 24AC0001 */   addiu     $t4, $a1, 0x1
/* 1BDB4 800615B4 10000002 */  b          .L800615C0
/* 1BDB8 800615B8 A48C15FA */   sh        $t4, 0x15FA($a0)
.L800615BC:
/* 1BDBC 800615BC A48015FA */  sh         $zero, 0x15FA($a0)
.L800615C0:
/* 1BDC0 800615C0 1000000E */  b          .L800615FC
/* 1BDC4 800615C4 948315F4 */   lhu       $v1, 0x15F4($a0)
.L800615C8:
/* 1BDC8 800615C8 11A00003 */  beqz       $t5, .L800615D8
/* 1BDCC 800615CC 24AE0001 */   addiu     $t6, $a1, 0x1
/* 1BDD0 800615D0 10000002 */  b          .L800615DC
/* 1BDD4 800615D4 A48E15FA */   sh        $t6, 0x15FA($a0)
.L800615D8:
/* 1BDD8 800615D8 A48015FA */  sh         $zero, 0x15FA($a0)
.L800615DC:
/* 1BDDC 800615DC 10000007 */  b          .L800615FC
/* 1BDE0 800615E0 948315F4 */   lhu       $v1, 0x15F4($a0)
.L800615E4:
/* 1BDE4 800615E4 11E00003 */  beqz       $t7, .L800615F4
/* 1BDE8 800615E8 24B80001 */   addiu     $t8, $a1, 0x1
/* 1BDEC 800615EC 10000002 */  b          .L800615F8
/* 1BDF0 800615F0 A49815FA */   sh        $t8, 0x15FA($a0)
.L800615F4:
/* 1BDF4 800615F4 A48015FA */  sh         $zero, 0x15FA($a0)
.L800615F8:
/* 1BDF8 800615F8 948315F4 */  lhu        $v1, 0x15F4($a0)
.L800615FC:
/* 1BDFC 800615FC A48315FC */  sh         $v1, 0x15FC($a0)
/* 1BE00 80061600 1000000C */  b          .L80061634
/* 1BE04 80061604 A48015FE */   sh        $zero, 0x15FE($a0)
/* 1BE08 80061608 949915FE */  lhu        $t9, 0x15FE($a0)
.L8006160C:
/* 1BE0C 8006160C 272C0001 */  addiu      $t4, $t9, 0x1
/* 1BE10 80061610 318DFFFF */  andi       $t5, $t4, 0xFFFF
/* 1BE14 80061614 29A10005 */  slti       $at, $t5, 0x5
/* 1BE18 80061618 14200006 */  bnez       $at, .L80061634
/* 1BE1C 8006161C A48C15FE */   sh        $t4, 0x15FE($a0)
/* 1BE20 80061620 A48015FA */  sh         $zero, 0x15FA($a0)
/* 1BE24 80061624 10000003 */  b          .L80061634
/* 1BE28 80061628 A48015F8 */   sh        $zero, 0x15F8($a0)
/* 1BE2C 8006162C A48015FA */  sh         $zero, 0x15FA($a0)
.L80061630:
/* 1BE30 80061630 A48015F8 */  sh         $zero, 0x15F8($a0)
.L80061634:
/* 1BE34 80061634 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1BE38 80061638 27BD0030 */  addiu      $sp, $sp, 0x30
/* 1BE3C 8006163C 03E00008 */  jr         $ra
/* 1BE40 80061640 00000000 */   nop
