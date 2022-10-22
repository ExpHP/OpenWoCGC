#ifndef NU3DXTYPES_H
#define NU3DXTYPES_H

#include "../types.h"
#include "numath.h"
#include "../numath/numathtypes.h"


// Texture format
enum NuTexFormat
{
	UNKNOWN,
	BPP16,
	BPP24,
	BPP32,
	BPP4,
	RGB8MAYBE
};

// Camera.
typedef struct
{
	Mtx mtx;
	f32 v17;
	f32 v18;
	f32 v19;
	f32 v20;
	u32 v21;
	f32 v22;
	f32 v23;
	f32 v24;
} NuCamera; // 0x60.

// Light.
typedef struct
{
	u8 tmp;
} NuLight; // 0x19.

// Light collection.
typedef struct
{
	u8 tmp;
} NuLightCollection; //0x12C - 300.

// Texture.
typedef struct
{
	u32 format;
	u32 width;
	u32 height;
	u32 mode;
	u32 data;
	u32 palette;
	u16 decal;
} NuTexData;

// Surface.
typedef struct
{
	u8 tmp;
} NuSurface; // 0x18.

// Texture info.
typedef struct
{
	NuTexData tex;
	NuSurface* surface;
	u32 refCount;
	u32 d10;
} NuTex; // 0x28.


typedef struct
{
    char _padding_0[0x4];
    u32 __funny_flags_or_float;
    s32 __word_08;
    char _padding_C[0x8];
    float __float_14;
    float __float_18;
    float __float_1c;
    char _padding_20[0x14];
    float __float_34;
    struct NuMtl* __possibly_a_list_ptr;
    short __short_16;
    char _padding_3E[0xA];
	s32 __word_48;
    char _padding_4C[0x14];
    struct NuMtl* __another_list_ptr;
    struct NuMtl* __another_list_ptr_2;
    char _padding_68[0x4];
} NuMtl; // 0x6c


typedef struct
{
	char UNK;
} NuAnimData; // 0x10

// Scene.
typedef struct
{
	char UNK_0x0[0x48];
	NuAnimData** animData; // 0x48
	s32 numAnim; // 0x4C
} NuScene; // 0x80. This might be something else, I'm seeing 0x3C for scenes.

// !!Speculative name!!
typedef struct
{
    char UNK_0x0[0x1C];
    u32 WORD_0x1C;
    s32 gobjCount; // 0x20
    //NuGobj** gobjSet; // 0x24
} NuSceneMtl; // 0x3C

// Render data.
typedef struct
{
	u8 tmp;
} NuRndr; // 0x12. I am unsure of this.

#endif // !NU3DXTYPES_H