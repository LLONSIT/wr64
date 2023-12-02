#ifndef FUNCTIONS_H
#define FUNCTIONS_H
#include <ultra64.h>
#include "structs.h"

//0x800B
extern void func_800BF370(void);
void func_800AF43C(f32, f32, f32);
void func_800B4788(s32 source_id, f32 x_position, f32 y_position, f32 z_position, f32 x_velocity, f32 y_velocity, f32 z_velocity);


//0x8004
extern void func_8004A2B4(void);

//0x8007
extern void func_80071E70(void);
extern s32 func_80074264(f32 arg0, f32 arg1);
extern void func_800735EC(struct_801AEE20 **, s32);
extern void func_80073E6C(void);
extern void func_80074368(f32 arg0, f32 arg1, s32 *firstMatchIndex, s32 *lastMatchIndex);
extern void func_800744EC(void);
extern void func_80075274(void);
extern void func_80075310(void);
extern s32 func_80076240(f32 arg0, f32 arg1, f32 arg2, f32 arg3);
extern void func_800762D0(struct_800762D0 *arg0);

//0x8008
extern void func_80088488(s32 arg0);

//0x8009
extern void func_800988D8(s32 arg0);

//0x801F
extern void func_801FAEA8(void);

//?
extern void func_800C6DE0(void);
extern void func_8006C5D8(Gfx**);
extern void func_8006BE74(Gfx**);
extern void func_8006B334(Gfx**);
extern void func_8009ADA8(void);
extern void func_8009A460(s32, s32, s32, s32); //TODO: UNK TYPE here
extern void func_800C53D4(s32, s32);
extern void func_800C312C(void);

#endif /*FUNCTIONS_H*/
