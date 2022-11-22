#include "common.h"

void func_80051530(void) {
}

#if MIPS_TO_c
void *func_80051538(Gfx *gDisplayList) {
    
    if (D_800D47E0 == 0) {
        return arg0;
    }
    
    gSPDisplayList(gDisplayList, 0x10067408);
    gDPSetTextureImage(gDisplayList, G_IM_FMT_I, G_IM_SIZ_16b, 1, 0x10057408);
    gDPSetTile(gDisplayList, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 6, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 6, G_TX_NOLOD);
    gDPLoadSync(gDisplayList);
    gDPLoadBlock(gDisplayList, G_TX_LOADTILE, 0, 0, 2047, 256);
    gDPPipeSync(gDisplayList);
    gDPSetTile(gDisplayList, G_IM_FMT_I, G_IM_SIZ_8b, 8, 0x0000, G_TX_RENDERTILE, 1, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, 1, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPSetEnvColor(gDisplayList, D_800D47E8, D_800D47EC, D_800D47F0, D_800D47F4);
    
    if (D_800D47E0 == 1) {
    
    gDPSetRenderMode(gDisplayList, AA_EN | IM_RD | CVG_DST_WRAP | ZMODE_OPA | CVG_X_ALPHA | GBL_c1(G_BL_CLR_MEM, G_BL_0, G_BL_CLR_MEM, G_BL_1MA), AA_EN | IM_RD | CVG_DST_WRAP | ZMODE_OPA | CVG_X_ALPHA | GBL_c2(G_BL_CLR_MEM, G_BL_0, G_BL_CLR_MEM, G_BL_1MA));
    
    } else {
    
    gDPSetRenderMode(gDisplayList, G_RM_CLD_SURF, G_RM_CLD_SURF2);
    
    }
                            /* Describing the texture*/
    gTexRect(gDisplayList, qu102(144), qu102(321), qu102(310), qu102(218), G_TX_RENDERTILE);
    gDPHalf2(gDisplayList, 0x15);
    gSPModifyVertex(gDisplayList, 0, D_800D47FC, 0x04000400);   
}

#else

#pragma GLOBAL_ASM("asm/nonmatchings/game_BD30/func_80051538.s")


#endif