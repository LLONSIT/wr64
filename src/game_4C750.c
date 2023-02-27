#include <ultra64.h>
#include <PR/os.h>
#include "macros.h"
#include "variables.h"
#include "functions.h"
#include "structs.h"
#include <PR/gbi.h> //for macros

#pragma GLOBAL_ASM("asm/nonmatchings/game_4C750/func_80091F50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_4C750/func_800922E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_4C750/func_800926F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_4C750/func_80092938.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_4C750/func_80092CF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_4C750/func_80093104.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_4C750/func_8009328C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_4C750/func_800933C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_4C750/func_8009345C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_4C750/func_80093AFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_4C750/func_80093C44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_4C750/func_80093DBC.s")

void *func_80093F78(Gfx* gDisplayListHead) {

    gSPClearGeometryMode(gDisplayListHead++, G_ZBUFFER | G_TEXTURE_ENABLE | G_SHADE | G_CULL_BOTH | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR | G_LOD | G_SHADING_SMOOTH | G_CLIPPING | 0xFF60CDF8);
    gSPTexture(gDisplayListHead++, 0, 0, 0, G_TX_RENDERTILE, G_OFF);
    gDPPipeSync(gDisplayListHead++);
    gDPSetCycleType(gDisplayListHead++, G_CYC_FILL);
    gDPSetCombineMode(gDisplayListHead++, G_CC_DECALRGBA, G_CC_DECALRGBA);
    gDPSetRenderMode(gDisplayListHead++, G_RM_NOOP, G_RM_NOOP2);
    gDPSetAlphaCompare(gDisplayListHead++, G_AC_NONE);
    gDPSetScissor(gDisplayListHead++, G_SC_NON_INTERLACE, 0, 0, 319, 239);
    gDPSetColorImage(gDisplayListHead++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 320, OS_PHYSICAL_TO_K0(D_801542C0[D_80151948]));
    gDPSetFillColor(gDisplayListHead++, 0x0010001);
    gDPFillRectangle(gDisplayListHead++, 0, 0, 319, 239);

    return gDisplayListHead;

}

#pragma GLOBAL_ASM("asm/nonmatchings/game_4C750/func_80094088.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_4C750/func_800940C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_4C750/func_800941D0.s")

//UNUSED
//This function may be using some kind of unused printing system with the function "func_801E9858"
#pragma GLOBAL_ASM("asm/nonmatchings/game_4C750/func_80094200.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_4C750/func_80094338.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_4C750/func_800948DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_4C750/func_800949B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_4C750/func_80094A44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_4C750/func_80094ABC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_4C750/func_80094ACC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_4C750/func_80094FE8.s")
