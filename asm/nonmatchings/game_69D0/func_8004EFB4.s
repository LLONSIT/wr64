glabel func_8004EFB4
/* 97B4 8004EFB4 3C01800F */  lui        $at, %hi(D_800E92C0)
/* 97B8 8004EFB8 C42492C0 */  lwc1       $f4, %lo(D_800E92C0)($at)
/* 97BC 8004EFBC 24076000 */  addiu      $a3, $zero, 0x6000
/* 97C0 8004EFC0 240D0180 */  addiu      $t5, $zero, 0x180
/* 97C4 8004EFC4 460E2182 */  mul.s      $f6, $f4, $f14
/* 97C8 8004EFC8 460C3200 */  add.s      $f8, $f6, $f12
/* 97CC 8004EFCC 4600428D */  trunc.w.s  $f10, $f8
/* 97D0 8004EFD0 440F5000 */  mfc1       $t7, $f10
/* 97D4 8004EFD4 00000000 */  nop
/* 97D8 8004EFD8 01E7001A */  div        $zero, $t7, $a3
/* 97DC 8004EFDC 14E00002 */  bnez       $a3, .L8004EFE8
/* 97E0 8004EFE0 00000000 */   nop
/* 97E4 8004EFE4 0007000D */  break      7
.L8004EFE8:
/* 97E8 8004EFE8 2401FFFF */  addiu      $at, $zero, -0x1
/* 97EC 8004EFEC 14E10004 */  bne        $a3, $at, .L8004F000
/* 97F0 8004EFF0 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 97F4 8004EFF4 15E10002 */  bne        $t7, $at, .L8004F000
/* 97F8 8004EFF8 00000000 */   nop
/* 97FC 8004EFFC 0006000D */  break      6
.L8004F000:
/* 9800 8004F000 3C01800F */  lui        $at, %hi(D_800E92C4)
/* 9804 8004F004 C43092C4 */  lwc1       $f16, %lo(D_800E92C4)($at)
/* 9808 8004F008 00001010 */  mfhi       $v0
/* 980C 8004F00C 00022983 */  sra        $a1, $v0, 6
/* 9810 8004F010 460E8482 */  mul.s      $f18, $f16, $f14
/* 9814 8004F014 00057180 */  sll        $t6, $a1, 6
/* 9818 8004F018 004E7823 */  subu       $t7, $v0, $t6
/* 981C 8004F01C 30AB007F */  andi       $t3, $a1, 0x7F
/* 9820 8004F020 4600910D */  trunc.w.s  $f4, $f18
/* 9824 8004F024 44192000 */  mfc1       $t9, $f4
/* 9828 8004F028 00000000 */  nop
/* 982C 8004F02C 0327001A */  div        $zero, $t9, $a3
/* 9830 8004F030 14E00002 */  bnez       $a3, .L8004F03C
/* 9834 8004F034 00000000 */   nop
/* 9838 8004F038 0007000D */  break      7
.L8004F03C:
/* 983C 8004F03C 2401FFFF */  addiu      $at, $zero, -0x1
/* 9840 8004F040 14E10004 */  bne        $a3, $at, .L8004F054
/* 9844 8004F044 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 9848 8004F048 17210002 */  bne        $t9, $at, .L8004F054
/* 984C 8004F04C 00000000 */   nop
/* 9850 8004F050 0006000D */  break      6
.L8004F054:
/* 9854 8004F054 00001810 */  mfhi       $v1
/* 9858 8004F058 00032183 */  sra        $a0, $v1, 6
/* 985C 8004F05C 0004C180 */  sll        $t8, $a0, 6
/* 9860 8004F060 0078C823 */  subu       $t9, $v1, $t8
/* 9864 8004F064 01F9082A */  slt        $at, $t7, $t9
/* 9868 8004F068 1020001E */  beqz       $at, .L8004F0E4
/* 986C 8004F06C 3C038016 */   lui       $v1, %hi(D_80162420)
/* 9870 8004F070 2401FF80 */  addiu      $at, $zero, -0x80
/* 9874 8004F074 00A17024 */  and        $t6, $a1, $at
/* 9878 8004F078 008E5021 */  addu       $t2, $a0, $t6
/* 987C 8004F07C 25580601 */  addiu      $t8, $t2, 0x601
/* 9880 8004F080 240D0180 */  addiu      $t5, $zero, 0x180
/* 9884 8004F084 030D001A */  div        $zero, $t8, $t5
/* 9888 8004F088 00007810 */  mfhi       $t7
/* 988C 8004F08C 000FC9C0 */  sll        $t9, $t7, 7
/* 9890 8004F090 30AB007F */  andi       $t3, $a1, 0x7F
/* 9894 8004F094 032B7021 */  addu       $t6, $t9, $t3
/* 9898 8004F098 3C038016 */  lui        $v1, %hi(D_80162420)
/* 989C 8004F09C 24A70001 */  addiu      $a3, $a1, 0x1
/* 98A0 8004F0A0 24632420 */  addiu      $v1, $v1, %lo(D_80162420)
/* 98A4 8004F0A4 15A00002 */  bnez       $t5, .L8004F0B0
/* 98A8 8004F0A8 00000000 */   nop
/* 98AC 8004F0AC 0007000D */  break      7
.L8004F0B0:
/* 98B0 8004F0B0 2401FFFF */  addiu      $at, $zero, -0x1
/* 98B4 8004F0B4 15A10004 */  bne        $t5, $at, .L8004F0C8
/* 98B8 8004F0B8 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 98BC 8004F0BC 17010002 */  bne        $t8, $at, .L8004F0C8
/* 98C0 8004F0C0 00000000 */   nop
/* 98C4 8004F0C4 0006000D */  break      6
.L8004F0C8:
/* 98C8 8004F0C8 2401FF80 */  addiu      $at, $zero, -0x80
/* 98CC 8004F0CC 00E17824 */  and        $t7, $a3, $at
/* 98D0 8004F0D0 000EC080 */  sll        $t8, $t6, 2
/* 98D4 8004F0D4 00781021 */  addu       $v0, $v1, $t8
/* 98D8 8004F0D8 008F4021 */  addu       $t0, $a0, $t7
/* 98DC 8004F0DC 1000001A */  b          .L8004F148
/* 98E0 8004F0E0 30E9007F */   andi      $t1, $a3, 0x7F
.L8004F0E4:
/* 98E4 8004F0E4 24A70001 */  addiu      $a3, $a1, 0x1
/* 98E8 8004F0E8 2401FF80 */  addiu      $at, $zero, -0x80
/* 98EC 8004F0EC 00E1C824 */  and        $t9, $a3, $at
/* 98F0 8004F0F0 00994021 */  addu       $t0, $a0, $t9
/* 98F4 8004F0F4 250E0600 */  addiu      $t6, $t0, 0x600
/* 98F8 8004F0F8 01CD001A */  div        $zero, $t6, $t5
/* 98FC 8004F0FC 0000C010 */  mfhi       $t8
/* 9900 8004F100 001879C0 */  sll        $t7, $t8, 7
/* 9904 8004F104 30E9007F */  andi       $t1, $a3, 0x7F
/* 9908 8004F108 01E9C821 */  addu       $t9, $t7, $t1
/* 990C 8004F10C 24632420 */  addiu      $v1, $v1, %lo(D_80162420)
/* 9910 8004F110 15A00002 */  bnez       $t5, .L8004F11C
/* 9914 8004F114 00000000 */   nop
/* 9918 8004F118 0007000D */  break      7
.L8004F11C:
/* 991C 8004F11C 2401FFFF */  addiu      $at, $zero, -0x1
/* 9920 8004F120 15A10004 */  bne        $t5, $at, .L8004F134
/* 9924 8004F124 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 9928 8004F128 15C10002 */  bne        $t6, $at, .L8004F134
/* 992C 8004F12C 00000000 */   nop
/* 9930 8004F130 0006000D */  break      6
.L8004F134:
/* 9934 8004F134 2401FF80 */  addiu      $at, $zero, -0x80
/* 9938 8004F138 00A1C024 */  and        $t8, $a1, $at
/* 993C 8004F13C 00197080 */  sll        $t6, $t9, 2
/* 9940 8004F140 006E1021 */  addu       $v0, $v1, $t6
/* 9944 8004F144 00985021 */  addu       $t2, $a0, $t8
.L8004F148:
/* 9948 8004F148 250F0601 */  addiu      $t7, $t0, 0x601
/* 994C 8004F14C 01ED001A */  div        $zero, $t7, $t5
/* 9950 8004F150 0000C810 */  mfhi       $t9
/* 9954 8004F154 001971C0 */  sll        $t6, $t9, 7
/* 9958 8004F158 25590600 */  addiu      $t9, $t2, 0x600
/* 995C 8004F15C 032D001A */  div        $zero, $t9, $t5
/* 9960 8004F160 15A00002 */  bnez       $t5, .L8004F16C
/* 9964 8004F164 00000000 */   nop
/* 9968 8004F168 0007000D */  break      7
.L8004F16C:
/* 996C 8004F16C 2401FFFF */  addiu      $at, $zero, -0x1
/* 9970 8004F170 15A10004 */  bne        $t5, $at, .L8004F184
/* 9974 8004F174 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 9978 8004F178 15E10002 */  bne        $t7, $at, .L8004F184
/* 997C 8004F17C 00000000 */   nop
/* 9980 8004F180 0006000D */  break      6
.L8004F184:
/* 9984 8004F184 01C9C021 */  addu       $t8, $t6, $t1
/* 9988 8004F188 00187880 */  sll        $t7, $t8, 2
/* 998C 8004F18C 00007010 */  mfhi       $t6
/* 9990 8004F190 000EC1C0 */  sll        $t8, $t6, 7
/* 9994 8004F194 006F6021 */  addu       $t4, $v1, $t7
/* 9998 8004F198 030B7821 */  addu       $t7, $t8, $t3
/* 999C 8004F19C 00062200 */  sll        $a0, $a2, 8
/* 99A0 8004F1A0 A5840000 */  sh         $a0, 0x0($t4)
/* 99A4 8004F1A4 15A00002 */  bnez       $t5, .L8004F1B0
/* 99A8 8004F1A8 00000000 */   nop
/* 99AC 8004F1AC 0007000D */  break      7
.L8004F1B0:
/* 99B0 8004F1B0 2401FFFF */  addiu      $at, $zero, -0x1
/* 99B4 8004F1B4 15A10004 */  bne        $t5, $at, .L8004F1C8
/* 99B8 8004F1B8 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 99BC 8004F1BC 17210002 */  bne        $t9, $at, .L8004F1C8
/* 99C0 8004F1C0 00000000 */   nop
/* 99C4 8004F1C4 0006000D */  break      6
.L8004F1C8:
/* 99C8 8004F1C8 000FC880 */  sll        $t9, $t7, 2
/* 99CC 8004F1CC 00793821 */  addu       $a3, $v1, $t9
/* 99D0 8004F1D0 A4E40000 */  sh         $a0, 0x0($a3)
/* 99D4 8004F1D4 A4440000 */  sh         $a0, 0x0($v0)
/* 99D8 8004F1D8 A5800002 */  sh         $zero, 0x2($t4)
/* 99DC 8004F1DC 85850002 */  lh         $a1, 0x2($t4)
/* 99E0 8004F1E0 A4E50002 */  sh         $a1, 0x2($a3)
/* 99E4 8004F1E4 03E00008 */  jr         $ra
/* 99E8 8004F1E8 A4450002 */   sh        $a1, 0x2($v0)
