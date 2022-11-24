#ifndef STRUCTS_H
#define STRUCTS_H


typedef struct  {
    f32 unk0;
    f32 unk4;
    f32 unk8;
    f32 unkC;
    f32 unk10;
    f32 unk14;
} struct_8009852C;

typedef struct {
    s16 unk0;
    s16 unk2;
    s16 unk4;
} struct_80098548;


typedef struct {
    s8 unk0;
    s8 unk1;
    s8 unk2;
    s8 pad[0x1];
    s8 unk4;
    s8 unk5;
    s8 unk6;
} struct_80047F48;


typedef struct {

	s8 pad[0x30];
	s32 unk30;
	s8 fill[0x35];
	s32 unk6C;

} struct_801C3C58;

#endif /* STRUCTS_H */
