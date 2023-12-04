#ifndef STRUCTS_H
#define STRUCTS_H


//TODO: Some lazy names here

typedef struct  {
    f32 unk0;
    f32 unk4;
    f32 unk8;
    f32 unkC;
    f32 unk10;
    f32 unk14;
} f_struct; //Float Struct

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
    s8 pad1[0x1];
    s8 unk8;
    s8 unk9;
    s8 unkA;
} chr_struct; //char struct

typedef struct {
	s8 pad[0x30];
	s32 unk30;
	s8 fill[0x35];
	s32 unk6C;
} struct_801C3C58;

//Size: 0x10 bytes
typedef struct {
	f32 unk0;
	f32 unk4;
	f32 unk8;
	f32 unkC;
} struct_801C1F84;

// Size: 0x104 bytes - could be an array of a smaller struct
typedef struct {
	f32 pad[0x41];
} struct_801AEE20;

typedef struct {
	u8 pad00[0x19B];
	s32 unk19C;
	u8 pad1AC[0x124];
	s32 unk2C4;
	u8 pad2C8[0x24];
	s32 unk2EC;
	u8 pad2F0[0x3C];
	f32 unk32C;
} struct_800762D0;

#endif /* STRUCTS_H */
