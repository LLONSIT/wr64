#include "common.h"


#pragma GLOBAL_ASM("asm/nonmatchings/game_6EF50/func_800B4750.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_6EF50/func_800B4788.s")


//TODO: clarify more this
void create_obj(f32 source_id, f32 x_position, f32 y_position, f32 z_position, f32 x_velocity, f32 y_velocity) {
    s32 index;
                //Setting some objs
    for(index = 0 ; index != 8 ; index++) {
        func_800B4788(index, source_id, x_position, y_position, z_position, x_velocity, y_velocity);

   }
    func_800AF43C(source_id, x_position + 24.0f, y_position);
}
#pragma GLOBAL_ASM("asm/nonmatchings/game_6EF50/func_800B49C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_6EF50/func_800B4ABC.s")
