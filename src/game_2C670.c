#include "common.h"

#pragma GLOBAL_ASM("asm/nonmatchings/game_2C670/func_80071E70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_2C670/func_800735EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_2C670/func_80073E6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_2C670/func_800741A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_2C670/func_80074264.s")

//16 bytes
typedef struct unk801C1F84 {
	f32 unk0;
	f32 unk4;
	f32 unk8;
	f32 unkC;
} unk801C1F84;
extern unk801C1F84 *D_801C1F84;
void func_80074368(f32 arg0, f32 arg1, s32 *arg2, s32 *arg3) {
    s32 firstMatchFound;
    s32 i;

    *arg3 = -1;
    *arg2 = -1;
    firstMatchFound = FALSE;
	for (i = 0; (D_801C1F84[i].unk0 != D_801C1F84[i].unk4); i++) {
		if (   (D_801C1F84[i].unk0 <= arg0) && (D_801C1F84[i].unk4 >= arg0)
			&& (D_801C1F84[i].unk8 <= arg1) && (D_801C1F84[i].unkC >= arg1)
		) {
			if (firstMatchFound == FALSE) {
				*arg2 = i;
				firstMatchFound = TRUE;
			} else {
				*arg3 = i;
			}
		}
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/game_2C670/func_80074448.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_2C670/func_800744EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_2C670/func_80075274.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_2C670/func_80075310.s")

s32 func_80076240(f32 arg0, f32 arg1, f32 arg2, f32 arg3) {
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    s32 sp18;

    func_80074368(arg0, arg1, &sp24, &sp20);
    func_80074368(arg2, arg3, &sp1C, &sp18);
    if ((sp24 != -1) && ((sp24 == sp1C) || (sp24 == sp18))) {
        return 1;
    }
    if ((sp20 != -1) && ((sp20 == sp1C) || (sp20 == sp18))) {
        return 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/game_2C670/func_800762D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_2C670/func_80076378.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_2C670/func_8007687C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_2C670/func_80077F5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_2C670/func_80078264.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_2C670/func_800783AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_2C670/func_80079528.s")
