.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800C6770
/* 80F70 800C6770 3C0E800F */  lui        $t6, %hi(D_800E8F90)
/* 80F74 800C6774 8DCE8F90 */  lw         $t6, %lo(D_800E8F90)($t6)
/* 80F78 800C6778 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 80F7C 800C677C AFBF001C */  sw         $ra, 0x1C($sp)
/* 80F80 800C6780 15C00058 */  bnez       $t6, .L800C68E4
/* 80F84 800C6784 AFA40030 */   sw        $a0, 0x30($sp)
/* 80F88 800C6788 0C032CF4 */  jal        func_800CB3D0
/* 80F8C 800C678C 00000000 */   nop
/* 80F90 800C6790 3C04801E */  lui        $a0, %hi(D_801D9920)
/* 80F94 800C6794 3C05801E */  lui        $a1, %hi(D_801D9938)
/* 80F98 800C6798 24A59938 */  addiu      $a1, $a1, %lo(D_801D9938)
/* 80F9C 800C679C 24849920 */  addiu      $a0, $a0, %lo(D_801D9920)
/* 80FA0 800C67A0 0C0318C4 */  jal        osCreateMesgQueue
/* 80FA4 800C67A4 24060005 */   addiu     $a2, $zero, 0x5
/* 80FA8 800C67A8 3C01801E */  lui        $at, %hi(D_801D9950)
/* 80FAC 800C67AC 240F000D */  addiu      $t7, $zero, 0xD
/* 80FB0 800C67B0 A42F9950 */  sh         $t7, %lo(D_801D9950)($at)
/* 80FB4 800C67B4 A0209952 */  sb         $zero, %lo(D_801D9952)($at)
/* 80FB8 800C67B8 AC209954 */  sw         $zero, %lo(D_801D9954)($at)
/* 80FBC 800C67BC 3C01801E */  lui        $at, %hi(D_801D9968)
/* 80FC0 800C67C0 2418000E */  addiu      $t8, $zero, 0xE
/* 80FC4 800C67C4 3C05801E */  lui        $a1, %hi(D_801D9920)
/* 80FC8 800C67C8 3C06801E */  lui        $a2, %hi(D_801D9950)
/* 80FCC 800C67CC A4389968 */  sh         $t8, %lo(D_801D9968)($at)
/* 80FD0 800C67D0 A020996A */  sb         $zero, %lo(D_801D996A)($at)
/* 80FD4 800C67D4 AC20996C */  sw         $zero, %lo(D_801D996C)($at)
/* 80FD8 800C67D8 24C69950 */  addiu      $a2, $a2, %lo(D_801D9950)
/* 80FDC 800C67DC 24A59920 */  addiu      $a1, $a1, %lo(D_801D9920)
/* 80FE0 800C67E0 0C0318D0 */  jal        osSetEventMesg
/* 80FE4 800C67E4 24040007 */   addiu     $a0, $zero, 0x7
/* 80FE8 800C67E8 3C05801E */  lui        $a1, %hi(D_801D9920)
/* 80FEC 800C67EC 3C06801E */  lui        $a2, %hi(D_801D9968)
/* 80FF0 800C67F0 24C69968 */  addiu      $a2, $a2, %lo(D_801D9968)
/* 80FF4 800C67F4 24A59920 */  addiu      $a1, $a1, %lo(D_801D9920)
/* 80FF8 800C67F8 0C0318D0 */  jal        osSetEventMesg
/* 80FFC 800C67FC 24040003 */   addiu     $a0, $zero, 0x3
/* 81000 800C6800 2419FFFF */  addiu      $t9, $zero, -0x1
/* 81004 800C6804 AFB90028 */  sw         $t9, 0x28($sp)
/* 81008 800C6808 0C032FC8 */  jal        func_800CBF20
/* 8100C 800C680C 00002025 */   or        $a0, $zero, $zero
/* 81010 800C6810 AFA20024 */  sw         $v0, 0x24($sp)
/* 81014 800C6814 8FA80024 */  lw         $t0, 0x24($sp)
/* 81018 800C6818 8FA90030 */  lw         $t1, 0x30($sp)
/* 8101C 800C681C 0109082A */  slt        $at, $t0, $t1
/* 81020 800C6820 10200005 */  beqz       $at, .L800C6838
/* 81024 800C6824 00000000 */   nop
/* 81028 800C6828 AFA80028 */  sw         $t0, 0x28($sp)
/* 8102C 800C682C 00002025 */  or         $a0, $zero, $zero
/* 81030 800C6830 0C031B40 */  jal        func_800C6D00
/* 81034 800C6834 01202825 */   or        $a1, $t1, $zero
.L800C6838:
/* 81038 800C6838 0C032AB4 */  jal        __osDisableInt
/* 8103C 800C683C 00000000 */   nop
/* 81040 800C6840 3C01800F */  lui        $at, %hi(D_800E8F90)
/* 81044 800C6844 3C0C801E */  lui        $t4, %hi(D_801D9920)
/* 81048 800C6848 3C0B801E */  lui        $t3, %hi(D_801D8770)
/* 8104C 800C684C 258C9920 */  addiu      $t4, $t4, %lo(D_801D9920)
/* 81050 800C6850 240A0001 */  addiu      $t2, $zero, 0x1
/* 81054 800C6854 256B8770 */  addiu      $t3, $t3, %lo(D_801D8770)
/* 81058 800C6858 3C0D801E */  lui        $t5, %hi(D_801D8920)
/* 8105C 800C685C 8FAF0030 */  lw         $t7, 0x30($sp)
/* 81060 800C6860 AC2A8F90 */  sw         $t2, %lo(D_800E8F90)($at)
/* 81064 800C6864 AC2B8F94 */  sw         $t3, %lo(D_800E8F94)($at)
/* 81068 800C6868 AC2C8F98 */  sw         $t4, %lo(D_800E8F98)($at)
/* 8106C 800C686C AC2C8F9C */  sw         $t4, %lo(D_800E8F9C)($at)
/* 81070 800C6870 25AD8920 */  addiu      $t5, $t5, %lo(D_801D8920)
/* 81074 800C6874 3C01800F */  lui        $at, %hi(D_800E8FA0)
/* 81078 800C6878 25AE1000 */  addiu      $t6, $t5, 0x1000
/* 8107C 800C687C 3C06800C */  lui        $a2, %hi(func_800C68F4)
/* 81080 800C6880 3C07800F */  lui        $a3, %hi(D_800E8F90)
/* 81084 800C6884 AFA2002C */  sw         $v0, 0x2C($sp)
/* 81088 800C6888 AC208FA0 */  sw         $zero, %lo(D_800E8FA0)($at)
/* 8108C 800C688C AC208FA4 */  sw         $zero, %lo(D_800E8FA4)($at)
/* 81090 800C6890 24E78F90 */  addiu      $a3, $a3, %lo(D_800E8F90)
/* 81094 800C6894 24C668F4 */  addiu      $a2, $a2, %lo(func_800C68F4)
/* 81098 800C6898 AFAE0010 */  sw         $t6, 0x10($sp)
/* 8109C 800C689C 01602025 */  or         $a0, $t3, $zero
/* 810A0 800C68A0 00002825 */  or         $a1, $zero, $zero
/* 810A4 800C68A4 0C031908 */  jal        osCreateThread
/* 810A8 800C68A8 AFAF0014 */   sw        $t7, 0x14($sp)
/* 810AC 800C68AC 0C032DF4 */  jal        func_800CB7D0
/* 810B0 800C68B0 00000000 */   nop
/* 810B4 800C68B4 3C04801E */  lui        $a0, %hi(D_801D8770)
/* 810B8 800C68B8 0C03195C */  jal        func_800C6570
/* 810BC 800C68BC 24848770 */   addiu     $a0, $a0, %lo(D_801D8770)
/* 810C0 800C68C0 0C032ABC */  jal        __osRestoreInt
/* 810C4 800C68C4 8FA4002C */   lw        $a0, 0x2C($sp)
/* 810C8 800C68C8 8FB80028 */  lw         $t8, 0x28($sp)
/* 810CC 800C68CC 2401FFFF */  addiu      $at, $zero, -0x1
/* 810D0 800C68D0 13010004 */  beq        $t8, $at, .L800C68E4
/* 810D4 800C68D4 00000000 */   nop
/* 810D8 800C68D8 00002025 */  or         $a0, $zero, $zero
/* 810DC 800C68DC 0C031B40 */  jal        func_800C6D00
/* 810E0 800C68E0 03002825 */   or        $a1, $t8, $zero
.L800C68E4:
/* 810E4 800C68E4 8FBF001C */  lw         $ra, 0x1C($sp)
/* 810E8 800C68E8 27BD0030 */  addiu      $sp, $sp, 0x30
/* 810EC 800C68EC 03E00008 */  jr         $ra
/* 810F0 800C68F0 00000000 */   nop

glabel func_800C68F4
/* 810F4 800C68F4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 810F8 800C68F8 AFBF001C */  sw         $ra, 0x1C($sp)
/* 810FC 800C68FC AFA40038 */  sw         $a0, 0x38($sp)
/* 81100 800C6900 AFB00018 */  sw         $s0, 0x18($sp)
/* 81104 800C6904 AFA0002C */  sw         $zero, 0x2C($sp)
/* 81108 800C6908 0C032FD0 */  jal        func_800CBF40
/* 8110C 800C690C AFA00028 */   sw        $zero, 0x28($sp)
/* 81110 800C6910 AFA20034 */  sw         $v0, 0x34($sp)
/* 81114 800C6914 8FAE0034 */  lw         $t6, 0x34($sp)
/* 81118 800C6918 3C01801E */  lui        $at, %hi(D_801D997C)
/* 8111C 800C691C 95CF0002 */  lhu        $t7, 0x2($t6)
/* 81120 800C6920 15E00004 */  bnez       $t7, .L800C6934
/* 81124 800C6924 A42F997C */   sh        $t7, %lo(D_801D997C)($at)
/* 81128 800C6928 24180001 */  addiu      $t8, $zero, 0x1
/* 8112C 800C692C 3C01801E */  lui        $at, %hi(D_801D997C)
/* 81130 800C6930 A438997C */  sh         $t8, %lo(D_801D997C)($at)
.L800C6934:
/* 81134 800C6934 8FB90038 */  lw         $t9, 0x38($sp)
/* 81138 800C6938 AFB90030 */  sw         $t9, 0x30($sp)
.L800C693C:
/* 8113C 800C693C 8FA80030 */  lw         $t0, 0x30($sp)
/* 81140 800C6940 27A5002C */  addiu      $a1, $sp, 0x2C
/* 81144 800C6944 24060001 */  addiu      $a2, $zero, 0x1
/* 81148 800C6948 0C031718 */  jal        func_800C5C60
/* 8114C 800C694C 8D04000C */   lw        $a0, 0xC($t0)
/* 81150 800C6950 8FA9002C */  lw         $t1, 0x2C($sp)
/* 81154 800C6954 2401000D */  addiu      $at, $zero, 0xD
/* 81158 800C6958 95300000 */  lhu        $s0, 0x0($t1)
/* 8115C 800C695C 12010005 */  beq        $s0, $at, .L800C6974
/* 81160 800C6960 2401000E */   addiu     $at, $zero, 0xE
/* 81164 800C6964 12010047 */  beq        $s0, $at, .L800C6A84
/* 81168 800C6968 00000000 */   nop
/* 8116C 800C696C 1000FFF3 */  b          .L800C693C
/* 81170 800C6970 00000000 */   nop
.L800C6974:
/* 81174 800C6974 0C032FD4 */  jal        func_800CBF50
/* 81178 800C6978 00000000 */   nop
/* 8117C 800C697C 3C0A801E */  lui        $t2, %hi(D_801D997C)
/* 81180 800C6980 954A997C */  lhu        $t2, %lo(D_801D997C)($t2)
/* 81184 800C6984 3C01801E */  lui        $at, %hi(D_801D997C)
/* 81188 800C6988 254BFFFF */  addiu      $t3, $t2, -0x1
/* 8118C 800C698C 316CFFFF */  andi       $t4, $t3, 0xFFFF
/* 81190 800C6990 15800010 */  bnez       $t4, .L800C69D4
/* 81194 800C6994 A42B997C */   sh        $t3, %lo(D_801D997C)($at)
/* 81198 800C6998 0C032FD0 */  jal        func_800CBF40
/* 8119C 800C699C 00000000 */   nop
/* 811A0 800C69A0 AFA20034 */  sw         $v0, 0x34($sp)
/* 811A4 800C69A4 8FAD0034 */  lw         $t5, 0x34($sp)
/* 811A8 800C69A8 8DAE0010 */  lw         $t6, 0x10($t5)
/* 811AC 800C69AC 11C00005 */  beqz       $t6, .L800C69C4
/* 811B0 800C69B0 00000000 */   nop
/* 811B4 800C69B4 01C02025 */  or         $a0, $t6, $zero
/* 811B8 800C69B8 8DA50014 */  lw         $a1, 0x14($t5)
/* 811BC 800C69BC 0C0315E8 */  jal        func_800C57A0
/* 811C0 800C69C0 00003025 */   or        $a2, $zero, $zero
.L800C69C4:
/* 811C4 800C69C4 8FAF0034 */  lw         $t7, 0x34($sp)
/* 811C8 800C69C8 3C01801E */  lui        $at, %hi(D_801D997C)
/* 811CC 800C69CC 95F80002 */  lhu        $t8, 0x2($t7)
/* 811D0 800C69D0 A438997C */  sh         $t8, %lo(D_801D997C)($at)
.L800C69D4:
/* 811D4 800C69D4 3C19801E */  lui        $t9, %hi(D_801DAC5C)
/* 811D8 800C69D8 8F39AC5C */  lw         $t9, %lo(D_801DAC5C)($t9)
/* 811DC 800C69DC 8FA90028 */  lw         $t1, 0x28($sp)
/* 811E0 800C69E0 3C01801E */  lui        $at, %hi(D_801DAC5C)
/* 811E4 800C69E4 27280001 */  addiu      $t0, $t9, 0x1
/* 811E8 800C69E8 1120000C */  beqz       $t1, .L800C6A1C
/* 811EC 800C69EC AC28AC5C */   sw        $t0, %lo(D_801DAC5C)($at)
/* 811F0 800C69F0 0C032CF0 */  jal        osGetCount
/* 811F4 800C69F4 00000000 */   nop
/* 811F8 800C69F8 AFA20024 */  sw         $v0, 0x24($sp)
/* 811FC 800C69FC 8FAA0024 */  lw         $t2, 0x24($sp)
/* 81200 800C6A00 240C0000 */  addiu      $t4, $zero, 0x0
/* 81204 800C6A04 3C01801E */  lui        $at, %hi(D_801DAC50)
/* 81208 800C6A08 AC2CAC50 */  sw         $t4, %lo(D_801DAC50)($at)
/* 8120C 800C6A0C 3C01801E */  lui        $at, %hi(D_801DAC54)
/* 81210 800C6A10 01406825 */  or         $t5, $t2, $zero
/* 81214 800C6A14 AC2DAC54 */  sw         $t5, %lo(D_801DAC54)($at)
/* 81218 800C6A18 AFA00028 */  sw         $zero, 0x28($sp)
.L800C6A1C:
/* 8121C 800C6A1C 3C0B801E */  lui        $t3, %hi(__osBaseCounter)
/* 81220 800C6A20 8D6BAC58 */  lw         $t3, %lo(__osBaseCounter)($t3)
/* 81224 800C6A24 0C032CF0 */  jal        osGetCount
/* 81228 800C6A28 AFAB0024 */   sw        $t3, 0x24($sp)
/* 8122C 800C6A2C 3C01801E */  lui        $at, %hi(__osBaseCounter)
/* 81230 800C6A30 AC22AC58 */  sw         $v0, %lo(__osBaseCounter)($at)
/* 81234 800C6A34 3C0E801E */  lui        $t6, %hi(__osBaseCounter)
/* 81238 800C6A38 8DCEAC58 */  lw         $t6, %lo(__osBaseCounter)($t6)
/* 8123C 800C6A3C 8FAF0024 */  lw         $t7, 0x24($sp)
/* 81240 800C6A40 3C0B801E */  lui        $t3, %hi(D_801DAC54)
/* 81244 800C6A44 8D6BAC54 */  lw         $t3, %lo(D_801DAC54)($t3)
/* 81248 800C6A48 01CFC023 */  subu       $t8, $t6, $t7
/* 8124C 800C6A4C 03004825 */  or         $t1, $t8, $zero
/* 81250 800C6A50 3C0A801E */  lui        $t2, %hi(D_801DAC50)
/* 81254 800C6A54 012B6821 */  addu       $t5, $t1, $t3
/* 81258 800C6A58 8D4AAC50 */  lw         $t2, %lo(D_801DAC50)($t2)
/* 8125C 800C6A5C 24080000 */  addiu      $t0, $zero, 0x0
/* 81260 800C6A60 01AB082B */  sltu       $at, $t5, $t3
/* 81264 800C6A64 00286021 */  addu       $t4, $at, $t0
/* 81268 800C6A68 3C01801E */  lui        $at, %hi(D_801DAC50)
/* 8126C 800C6A6C 018A6021 */  addu       $t4, $t4, $t2
/* 81270 800C6A70 AC2CAC50 */  sw         $t4, %lo(D_801DAC50)($at)
/* 81274 800C6A74 3C01801E */  lui        $at, %hi(D_801DAC54)
/* 81278 800C6A78 AFB80024 */  sw         $t8, 0x24($sp)
/* 8127C 800C6A7C 1000FFAF */  b          .L800C693C
/* 81280 800C6A80 AC2DAC54 */   sw        $t5, %lo(D_801DAC54)($at)
.L800C6A84:
/* 81284 800C6A84 0C032D17 */  jal        func_800CB45C
/* 81288 800C6A88 00000000 */   nop
/* 8128C 800C6A8C 1000FFAB */  b          .L800C693C
/* 81290 800C6A90 00000000 */   nop
/* 81294 800C6A94 00000000 */  nop
/* 81298 800C6A98 00000000 */  nop
/* 8129C 800C6A9C 00000000 */  nop
/* 812A0 800C6AA0 00000000 */  nop
/* 812A4 800C6AA4 00000000 */  nop
/* 812A8 800C6AA8 00000000 */  nop
/* 812AC 800C6AAC 00000000 */  nop
/* 812B0 800C6AB0 8FBF001C */  lw         $ra, 0x1C($sp)
/* 812B4 800C6AB4 8FB00018 */  lw         $s0, 0x18($sp)
/* 812B8 800C6AB8 27BD0038 */  addiu      $sp, $sp, 0x38
/* 812BC 800C6ABC 03E00008 */  jr         $ra
/* 812C0 800C6AC0 00000000 */   nop
/* 812C4 800C6AC4 00000000 */  nop
/* 812C8 800C6AC8 00000000 */  nop
/* 812CC 800C6ACC 00000000 */  nop
