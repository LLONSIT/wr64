glabel func_80061FEC
/* 1C7EC 80061FEC 3C0E801A */  lui        $t6, %hi(D_801982F0)
/* 1C7F0 80061FF0 8DCE82F0 */  lw         $t6, %lo(D_801982F0)($t6)
/* 1C7F4 80061FF4 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 1C7F8 80061FF8 AFB30050 */  sw         $s3, 0x50($sp)
/* 1C7FC 80061FFC 000E7880 */  sll        $t7, $t6, 2
/* 1C800 80062000 01EE7823 */  subu       $t7, $t7, $t6
/* 1C804 80062004 000F78C0 */  sll        $t7, $t7, 3
/* 1C808 80062008 01EE7823 */  subu       $t7, $t7, $t6
/* 1C80C 8006200C 000F78C0 */  sll        $t7, $t7, 3
/* 1C810 80062010 01EE7821 */  addu       $t7, $t7, $t6
/* 1C814 80062014 000F7880 */  sll        $t7, $t7, 2
/* 1C818 80062018 3C048019 */  lui        $a0, %hi(D_80192690)
/* 1C81C 8006201C 01EE7823 */  subu       $t7, $t7, $t6
/* 1C820 80062020 24932690 */  addiu      $s3, $a0, %lo(D_80192690)
/* 1C824 80062024 000F78C0 */  sll        $t7, $t7, 3
/* 1C828 80062028 026F1821 */  addu       $v1, $s3, $t7
/* 1C82C 8006202C 2462D1D0 */  addiu      $v0, $v1, -0x2E30
/* 1C830 80062030 0053082B */  sltu       $at, $v0, $s3
/* 1C834 80062034 AFBF0064 */  sw         $ra, 0x64($sp)
/* 1C838 80062038 AFB70060 */  sw         $s7, 0x60($sp)
/* 1C83C 8006203C AFB6005C */  sw         $s6, 0x5C($sp)
/* 1C840 80062040 AFB50058 */  sw         $s5, 0x58($sp)
/* 1C844 80062044 AFB40054 */  sw         $s4, 0x54($sp)
/* 1C848 80062048 AFB2004C */  sw         $s2, 0x4C($sp)
/* 1C84C 8006204C AFB10048 */  sw         $s1, 0x48($sp)
/* 1C850 80062050 AFB00044 */  sw         $s0, 0x44($sp)
/* 1C854 80062054 F7BE0038 */  sdc1       $f30, 0x38($sp)
/* 1C858 80062058 F7BC0030 */  sdc1       $f28, 0x30($sp)
/* 1C85C 8006205C F7BA0028 */  sdc1       $f26, 0x28($sp)
/* 1C860 80062060 F7B80020 */  sdc1       $f24, 0x20($sp)
/* 1C864 80062064 F7B60018 */  sdc1       $f22, 0x18($sp)
/* 1C868 80062068 142000E3 */  bnez       $at, .L800623F8
/* 1C86C 8006206C F7B40010 */   sdc1      $f20, 0x10($sp)
/* 1C870 80062070 3C0141C0 */  lui        $at, (0x41C00000 >> 16)
/* 1C874 80062074 4481F000 */  mtc1       $at, $f30
/* 1C878 80062078 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1C87C 8006207C 4481E000 */  mtc1       $at, $f28
/* 1C880 80062080 3C014410 */  lui        $at, (0x44100000 >> 16)
/* 1C884 80062084 4481D000 */  mtc1       $at, $f26
/* 1C888 80062088 2464E8E8 */  addiu      $a0, $v1, -0x1718
.L8006208C:
/* 1C88C 8006208C 26771718 */  addiu      $s7, $s3, 0x1718
/* 1C890 80062090 0097082B */  sltu       $at, $a0, $s7
/* 1C894 80062094 142000D5 */  bnez       $at, .L800623EC
/* 1C898 80062098 02E09025 */   or        $s2, $s7, $zero
/* 1C89C 8006209C C6640044 */  lwc1       $f4, 0x44($s3)
.L800620A0:
/* 1C8A0 800620A0 C6460044 */  lwc1       $f6, 0x44($s2)
/* 1C8A4 800620A4 C668004C */  lwc1       $f8, 0x4C($s3)
/* 1C8A8 800620A8 C64A004C */  lwc1       $f10, 0x4C($s2)
/* 1C8AC 800620AC 46062501 */  sub.s      $f20, $f4, $f6
/* 1C8B0 800620B0 3C01800F */  lui        $at, %hi(D_800E975C)
/* 1C8B4 800620B4 C430975C */  lwc1       $f16, %lo(D_800E975C)($at)
/* 1C8B8 800620B8 460A4581 */  sub.s      $f22, $f8, $f10
/* 1C8BC 800620BC 4614A482 */  mul.s      $f18, $f20, $f20
/* 1C8C0 800620C0 2671160C */  addiu      $s1, $s3, 0x160C
/* 1C8C4 800620C4 26761678 */  addiu      $s6, $s3, 0x1678
/* 1C8C8 800620C8 4616B102 */  mul.s      $f4, $f22, $f22
/* 1C8CC 800620CC 02D1082B */  sltu       $at, $s6, $s1
/* 1C8D0 800620D0 46049180 */  add.s      $f6, $f18, $f4
/* 1C8D4 800620D4 4606803C */  c.lt.s     $f16, $f6
/* 1C8D8 800620D8 00000000 */  nop
/* 1C8DC 800620DC 450300BF */  bc1tl      .L800623DC
/* 1C8E0 800620E0 26521718 */   addiu     $s2, $s2, 0x1718
/* 1C8E4 800620E4 142000BC */  bnez       $at, .L800623D8
/* 1C8E8 800620E8 2655160C */   addiu     $s5, $s2, 0x160C
/* 1C8EC 800620EC 26541678 */  addiu      $s4, $s2, 0x1678
/* 1C8F0 800620F0 0295082B */  sltu       $at, $s4, $s5
.L800620F4:
/* 1C8F4 800620F4 142000A5 */  bnez       $at, .L8006238C
/* 1C8F8 800620F8 02A08025 */   or        $s0, $s5, $zero
/* 1C8FC 800620FC C6280000 */  lwc1       $f8, 0x0($s1)
.L80062100:
/* 1C900 80062100 C60A0000 */  lwc1       $f10, 0x0($s0)
/* 1C904 80062104 C6320008 */  lwc1       $f18, 0x8($s1)
/* 1C908 80062108 C6040008 */  lwc1       $f4, 0x8($s0)
/* 1C90C 8006210C 460A4501 */  sub.s      $f20, $f8, $f10
/* 1C910 80062110 46049581 */  sub.s      $f22, $f18, $f4
/* 1C914 80062114 4614A402 */  mul.s      $f16, $f20, $f20
/* 1C918 80062118 00000000 */  nop
/* 1C91C 8006211C 4616B182 */  mul.s      $f6, $f22, $f22
/* 1C920 80062120 46068000 */  add.s      $f0, $f16, $f6
/* 1C924 80062124 4600D03E */  c.le.s     $f26, $f0
/* 1C928 80062128 00000000 */  nop
/* 1C92C 8006212C 45010093 */  bc1t       .L8006237C
/* 1C930 80062130 00000000 */   nop
/* 1C934 80062134 C6280004 */  lwc1       $f8, 0x4($s1)
/* 1C938 80062138 C60A0004 */  lwc1       $f10, 0x4($s0)
/* 1C93C 8006213C 460A4601 */  sub.s      $f24, $f8, $f10
/* 1C940 80062140 4618C482 */  mul.s      $f18, $f24, $f24
/* 1C944 80062144 46120300 */  add.s      $f12, $f0, $f18
/* 1C948 80062148 460CD03E */  c.le.s     $f26, $f12
/* 1C94C 8006214C 00000000 */  nop
/* 1C950 80062150 4503008B */  bc1tl      .L80062380
/* 1C954 80062154 26100024 */   addiu     $s0, $s0, 0x24
/* 1C958 80062158 0C031C04 */  jal        sqrtf
/* 1C95C 8006215C 00000000 */   nop
/* 1C960 80062160 4600E083 */  div.s      $f2, $f28, $f0
/* 1C964 80062164 C604000C */  lwc1       $f4, 0xC($s0)
/* 1C968 80062168 C630000C */  lwc1       $f16, 0xC($s1)
/* 1C96C 8006216C C60A0010 */  lwc1       $f10, 0x10($s0)
/* 1C970 80062170 C6320010 */  lwc1       $f18, 0x10($s1)
/* 1C974 80062174 46102181 */  sub.s      $f6, $f4, $f16
/* 1C978 80062178 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 1C97C 8006217C 46125101 */  sub.s      $f4, $f10, $f18
/* 1C980 80062180 C6320014 */  lwc1       $f18, 0x14($s1)
/* 1C984 80062184 C60A0014 */  lwc1       $f10, 0x14($s0)
/* 1C988 80062188 4602A502 */  mul.s      $f20, $f20, $f2
/* 1C98C 8006218C 00000000 */  nop
/* 1C990 80062190 4602C602 */  mul.s      $f24, $f24, $f2
/* 1C994 80062194 00000000 */  nop
/* 1C998 80062198 4602B582 */  mul.s      $f22, $f22, $f2
/* 1C99C 8006219C 00000000 */  nop
/* 1C9A0 800621A0 46143202 */  mul.s      $f8, $f6, $f20
/* 1C9A4 800621A4 00000000 */  nop
/* 1C9A8 800621A8 4604C402 */  mul.s      $f16, $f24, $f4
/* 1C9AC 800621AC 46125101 */  sub.s      $f4, $f10, $f18
/* 1C9B0 800621B0 46104180 */  add.s      $f6, $f8, $f16
/* 1C9B4 800621B4 4604B202 */  mul.s      $f8, $f22, $f4
/* 1C9B8 800621B8 C6700C40 */  lwc1       $f16, 0xC40($s3)
/* 1C9BC 800621BC 46083300 */  add.s      $f12, $f6, $f8
/* 1C9C0 800621C0 460C803C */  c.lt.s     $f16, $f12
/* 1C9C4 800621C4 00000000 */  nop
/* 1C9C8 800621C8 45000005 */  bc1f       .L800621E0
/* 1C9CC 800621CC 00000000 */   nop
/* 1C9D0 800621D0 E66C0C40 */  swc1       $f12, 0xC40($s3)
/* 1C9D4 800621D4 E67415B4 */  swc1       $f20, 0x15B4($s3)
/* 1C9D8 800621D8 E67815B8 */  swc1       $f24, 0x15B8($s3)
/* 1C9DC 800621DC E67615BC */  swc1       $f22, 0x15BC($s3)
.L800621E0:
/* 1C9E0 800621E0 C64A0C40 */  lwc1       $f10, 0xC40($s2)
/* 1C9E4 800621E4 460C503C */  c.lt.s     $f10, $f12
/* 1C9E8 800621E8 00000000 */  nop
/* 1C9EC 800621EC 45020009 */  bc1fl      .L80062214
/* 1C9F0 800621F0 4600F201 */   sub.s     $f8, $f30, $f0
/* 1C9F4 800621F4 4600A487 */  neg.s      $f18, $f20
/* 1C9F8 800621F8 4600C107 */  neg.s      $f4, $f24
/* 1C9FC 800621FC 4600B187 */  neg.s      $f6, $f22
/* 1CA00 80062200 E64C0C40 */  swc1       $f12, 0xC40($s2)
/* 1CA04 80062204 E65215B4 */  swc1       $f18, 0x15B4($s2)
/* 1CA08 80062208 E64415B8 */  swc1       $f4, 0x15B8($s2)
/* 1CA0C 8006220C E64615BC */  swc1       $f6, 0x15BC($s2)
/* 1CA10 80062210 4600F201 */  sub.s      $f8, $f30, $f0
.L80062214:
/* 1CA14 80062214 44818000 */  mtc1       $at, $f16
/* 1CA18 80062218 8E220018 */  lw         $v0, 0x18($s1)
/* 1CA1C 8006221C 02602025 */  or         $a0, $s3, $zero
/* 1CA20 80062220 46104082 */  mul.s      $f2, $f8, $f16
/* 1CA24 80062224 C44A000C */  lwc1       $f10, 0xC($v0)
/* 1CA28 80062228 4602A502 */  mul.s      $f20, $f20, $f2
/* 1CA2C 8006222C 46145480 */  add.s      $f18, $f10, $f20
/* 1CA30 80062230 4602C602 */  mul.s      $f24, $f24, $f2
/* 1CA34 80062234 4405A000 */  mfc1       $a1, $f20
/* 1CA38 80062238 E452000C */  swc1       $f18, 0xC($v0)
/* 1CA3C 8006223C 8E220018 */  lw         $v0, 0x18($s1)
/* 1CA40 80062240 4602B582 */  mul.s      $f22, $f22, $f2
/* 1CA44 80062244 C4440010 */  lwc1       $f4, 0x10($v0)
/* 1CA48 80062248 4406C000 */  mfc1       $a2, $f24
/* 1CA4C 8006224C 46182180 */  add.s      $f6, $f4, $f24
/* 1CA50 80062250 4407B000 */  mfc1       $a3, $f22
/* 1CA54 80062254 E4460010 */  swc1       $f6, 0x10($v0)
/* 1CA58 80062258 8E220018 */  lw         $v0, 0x18($s1)
/* 1CA5C 8006225C C4480014 */  lwc1       $f8, 0x14($v0)
/* 1CA60 80062260 46164400 */  add.s      $f16, $f8, $f22
/* 1CA64 80062264 E4500014 */  swc1       $f16, 0x14($v0)
/* 1CA68 80062268 8E23001C */  lw         $v1, 0x1C($s1)
/* 1CA6C 8006226C C46A000C */  lwc1       $f10, 0xC($v1)
/* 1CA70 80062270 46145480 */  add.s      $f18, $f10, $f20
/* 1CA74 80062274 E472000C */  swc1       $f18, 0xC($v1)
/* 1CA78 80062278 8E23001C */  lw         $v1, 0x1C($s1)
/* 1CA7C 8006227C C4640010 */  lwc1       $f4, 0x10($v1)
/* 1CA80 80062280 46182180 */  add.s      $f6, $f4, $f24
/* 1CA84 80062284 E4660010 */  swc1       $f6, 0x10($v1)
/* 1CA88 80062288 8E23001C */  lw         $v1, 0x1C($s1)
/* 1CA8C 8006228C C4680014 */  lwc1       $f8, 0x14($v1)
/* 1CA90 80062290 46164400 */  add.s      $f16, $f8, $f22
/* 1CA94 80062294 E4700014 */  swc1       $f16, 0x14($v1)
/* 1CA98 80062298 8E220020 */  lw         $v0, 0x20($s1)
/* 1CA9C 8006229C C44A000C */  lwc1       $f10, 0xC($v0)
/* 1CAA0 800622A0 46145480 */  add.s      $f18, $f10, $f20
/* 1CAA4 800622A4 E452000C */  swc1       $f18, 0xC($v0)
/* 1CAA8 800622A8 8E220020 */  lw         $v0, 0x20($s1)
/* 1CAAC 800622AC C4440010 */  lwc1       $f4, 0x10($v0)
/* 1CAB0 800622B0 46182180 */  add.s      $f6, $f4, $f24
/* 1CAB4 800622B4 E4460010 */  swc1       $f6, 0x10($v0)
/* 1CAB8 800622B8 8E220020 */  lw         $v0, 0x20($s1)
/* 1CABC 800622BC C4480014 */  lwc1       $f8, 0x14($v0)
/* 1CAC0 800622C0 46164400 */  add.s      $f16, $f8, $f22
/* 1CAC4 800622C4 E4500014 */  swc1       $f16, 0x14($v0)
/* 1CAC8 800622C8 8E030018 */  lw         $v1, 0x18($s0)
/* 1CACC 800622CC C46A000C */  lwc1       $f10, 0xC($v1)
/* 1CAD0 800622D0 46145481 */  sub.s      $f18, $f10, $f20
/* 1CAD4 800622D4 E472000C */  swc1       $f18, 0xC($v1)
/* 1CAD8 800622D8 8E030018 */  lw         $v1, 0x18($s0)
/* 1CADC 800622DC C4640010 */  lwc1       $f4, 0x10($v1)
/* 1CAE0 800622E0 46182181 */  sub.s      $f6, $f4, $f24
/* 1CAE4 800622E4 E4660010 */  swc1       $f6, 0x10($v1)
/* 1CAE8 800622E8 8E030018 */  lw         $v1, 0x18($s0)
/* 1CAEC 800622EC C4680014 */  lwc1       $f8, 0x14($v1)
/* 1CAF0 800622F0 46164401 */  sub.s      $f16, $f8, $f22
/* 1CAF4 800622F4 E4700014 */  swc1       $f16, 0x14($v1)
/* 1CAF8 800622F8 8E08001C */  lw         $t0, 0x1C($s0)
/* 1CAFC 800622FC C50A000C */  lwc1       $f10, 0xC($t0)
/* 1CB00 80062300 46145481 */  sub.s      $f18, $f10, $f20
/* 1CB04 80062304 E512000C */  swc1       $f18, 0xC($t0)
/* 1CB08 80062308 8E08001C */  lw         $t0, 0x1C($s0)
/* 1CB0C 8006230C C5040010 */  lwc1       $f4, 0x10($t0)
/* 1CB10 80062310 46182181 */  sub.s      $f6, $f4, $f24
/* 1CB14 80062314 E5060010 */  swc1       $f6, 0x10($t0)
/* 1CB18 80062318 8E08001C */  lw         $t0, 0x1C($s0)
/* 1CB1C 8006231C C5080014 */  lwc1       $f8, 0x14($t0)
/* 1CB20 80062320 46164401 */  sub.s      $f16, $f8, $f22
/* 1CB24 80062324 E5100014 */  swc1       $f16, 0x14($t0)
/* 1CB28 80062328 8E020020 */  lw         $v0, 0x20($s0)
/* 1CB2C 8006232C C44A000C */  lwc1       $f10, 0xC($v0)
/* 1CB30 80062330 46145481 */  sub.s      $f18, $f10, $f20
/* 1CB34 80062334 E452000C */  swc1       $f18, 0xC($v0)
/* 1CB38 80062338 8E020020 */  lw         $v0, 0x20($s0)
/* 1CB3C 8006233C C4440010 */  lwc1       $f4, 0x10($v0)
/* 1CB40 80062340 46182181 */  sub.s      $f6, $f4, $f24
/* 1CB44 80062344 E4460010 */  swc1       $f6, 0x10($v0)
/* 1CB48 80062348 8E020020 */  lw         $v0, 0x20($s0)
/* 1CB4C 8006234C C4480014 */  lwc1       $f8, 0x14($v0)
/* 1CB50 80062350 46164401 */  sub.s      $f16, $f8, $f22
/* 1CB54 80062354 0C01890F */  jal        func_8006243C
/* 1CB58 80062358 E4500014 */   swc1      $f16, 0x14($v0)
/* 1CB5C 8006235C 4600A287 */  neg.s      $f10, $f20
/* 1CB60 80062360 4600C487 */  neg.s      $f18, $f24
/* 1CB64 80062364 4600B107 */  neg.s      $f4, $f22
/* 1CB68 80062368 44069000 */  mfc1       $a2, $f18
/* 1CB6C 8006236C 44072000 */  mfc1       $a3, $f4
/* 1CB70 80062370 44055000 */  mfc1       $a1, $f10
/* 1CB74 80062374 0C01890F */  jal        func_8006243C
/* 1CB78 80062378 02402025 */   or        $a0, $s2, $zero
.L8006237C:
/* 1CB7C 8006237C 26100024 */  addiu      $s0, $s0, 0x24
.L80062380:
/* 1CB80 80062380 0290082B */  sltu       $at, $s4, $s0
/* 1CB84 80062384 5020FF5E */  beql       $at, $zero, .L80062100
/* 1CB88 80062388 C6280000 */   lwc1      $f8, 0x0($s1)
.L8006238C:
/* 1CB8C 8006238C 26310024 */  addiu      $s1, $s1, 0x24
/* 1CB90 80062390 02D1082B */  sltu       $at, $s6, $s1
/* 1CB94 80062394 5020FF57 */  beql       $at, $zero, .L800620F4
/* 1CB98 80062398 0295082B */   sltu      $at, $s4, $s5
/* 1CB9C 8006239C 3C18801A */  lui        $t8, %hi(D_801982F0)
/* 1CBA0 800623A0 8F1882F0 */  lw         $t8, %lo(D_801982F0)($t8)
/* 1CBA4 800623A4 3C098019 */  lui        $t1, %hi(D_80192690)
/* 1CBA8 800623A8 25292690 */  addiu      $t1, $t1, %lo(D_80192690)
/* 1CBAC 800623AC 0018C880 */  sll        $t9, $t8, 2
/* 1CBB0 800623B0 0338C823 */  subu       $t9, $t9, $t8
/* 1CBB4 800623B4 0019C8C0 */  sll        $t9, $t9, 3
/* 1CBB8 800623B8 0338C823 */  subu       $t9, $t9, $t8
/* 1CBBC 800623BC 0019C8C0 */  sll        $t9, $t9, 3
/* 1CBC0 800623C0 0338C821 */  addu       $t9, $t9, $t8
/* 1CBC4 800623C4 0019C880 */  sll        $t9, $t9, 2
/* 1CBC8 800623C8 0338C823 */  subu       $t9, $t9, $t8
/* 1CBCC 800623CC 0019C8C0 */  sll        $t9, $t9, 3
/* 1CBD0 800623D0 03291821 */  addu       $v1, $t9, $t1
/* 1CBD4 800623D4 2464E8E8 */  addiu      $a0, $v1, -0x1718
.L800623D8:
/* 1CBD8 800623D8 26521718 */  addiu      $s2, $s2, 0x1718
.L800623DC:
/* 1CBDC 800623DC 0092082B */  sltu       $at, $a0, $s2
/* 1CBE0 800623E0 5020FF2F */  beql       $at, $zero, .L800620A0
/* 1CBE4 800623E4 C6640044 */   lwc1      $f4, 0x44($s3)
/* 1CBE8 800623E8 2462D1D0 */  addiu      $v0, $v1, -0x2E30
.L800623EC:
/* 1CBEC 800623EC 0057082B */  sltu       $at, $v0, $s7
/* 1CBF0 800623F0 1020FF26 */  beqz       $at, .L8006208C
/* 1CBF4 800623F4 02E09825 */   or        $s3, $s7, $zero
.L800623F8:
/* 1CBF8 800623F8 8FBF0064 */  lw         $ra, 0x64($sp)
/* 1CBFC 800623FC D7B40010 */  ldc1       $f20, 0x10($sp)
/* 1CC00 80062400 D7B60018 */  ldc1       $f22, 0x18($sp)
/* 1CC04 80062404 D7B80020 */  ldc1       $f24, 0x20($sp)
/* 1CC08 80062408 D7BA0028 */  ldc1       $f26, 0x28($sp)
/* 1CC0C 8006240C D7BC0030 */  ldc1       $f28, 0x30($sp)
/* 1CC10 80062410 D7BE0038 */  ldc1       $f30, 0x38($sp)
/* 1CC14 80062414 8FB00044 */  lw         $s0, 0x44($sp)
/* 1CC18 80062418 8FB10048 */  lw         $s1, 0x48($sp)
/* 1CC1C 8006241C 8FB2004C */  lw         $s2, 0x4C($sp)
/* 1CC20 80062420 8FB30050 */  lw         $s3, 0x50($sp)
/* 1CC24 80062424 8FB40054 */  lw         $s4, 0x54($sp)
/* 1CC28 80062428 8FB50058 */  lw         $s5, 0x58($sp)
/* 1CC2C 8006242C 8FB6005C */  lw         $s6, 0x5C($sp)
/* 1CC30 80062430 8FB70060 */  lw         $s7, 0x60($sp)
/* 1CC34 80062434 03E00008 */  jr         $ra
/* 1CC38 80062438 27BD0068 */   addiu     $sp, $sp, 0x68
