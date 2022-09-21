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
	u8 tmp;
} NuMtl; // 0x6C.

typedef struct NuGobj {
	struct NuGobj* next;
	struct NuGobj* prev;
	u8 padding[0x60 - 0x8];
	s32 x60;
} NuGobj; // 0x64

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
    NuGobj** gobjSet; // 0x24
} NuSceneMtl; // 0x3C

typedef struct
{
    char UNK_0x0[0x10];
    s32 WORD_0x10;
    char UNK_0x14[0x4];
    void* vb; // 0x18
} NuGeom; // 0x30

// Could be NuGeom, not sure
/*typedef struct
{
    
} NuFaceOnGeom; // 0x30 */

typedef struct
{
    char UNK_0x0[0x14];
    void* PTR_0x14;
} NuPrim; // 0x3C

// Render data.
typedef struct
{
	u8 tmp;
} NuRndr; // 0x12. I am unsure of this.

#endif // !NU3DXTYPES_H