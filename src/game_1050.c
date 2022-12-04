#include <ultra64.h>
#include <PR/gbi.h>
#include "variables.h"
#include "functions.h"
#include "structs.h"

#pragma GLOBAL_ASM("asm/nonmatchings/game_1050/func_80046850.s")

void func_800468AC(void) {
     s32 temp_t7;

    temp_t7 = D_80151950;
    D_80151950 = D_80151948;
    D_80151948 = D_8015194C;
    D_8015194C = temp_t7;
}


#pragma GLOBAL_ASM("asm/nonmatchings/game_1050/func_800468E0.s")

extern Gfx* D_80151944;

void func_80046BF4(void) {
gDPFullSync(D_80151944++);
gSPEndDisplayList(D_80151944++);
}


#pragma GLOBAL_ASM("asm/nonmatchings/game_1050/func_80046C30.s")

void func_80046CF8(s32 arg0) {
    D_801542B4 = arg0;
    func_800C57A0(&D_80154130, 0x15, 0);
}


#pragma GLOBAL_ASM("asm/nonmatchings/game_1050/func_80046D2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1050/func_80046DA0.s")
