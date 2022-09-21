#ifndef NUSCENE_H
#define NUSCENE_H

#include "../types.h"
#include <stdlib.h>
#include "nu3dxtypes.h"

/********** For data types that I don't know yet **********/
// unknown word data type
typedef int UNKWORD;
// unknown pointer data type
typedef void UNKTYPE;
/* unknown structures */


//Nuscene.h?
typedef struct
{
    char temp0[0x8];
    u32 WORD_0x8;
    u32 WORD_0xC;
    char temp1[0x24];
    u32 WORD_0x34;
    char temp2[0x2C];
    u32 WORD_0x64;
    u32 WORD_0x68;
    u32 WORD_0x6C;
    char temp3[0x4];
} Struct2; // 0x74

/**********************************************************/

/****** I don't know what headers these should go in ******/
\\void GS_ARGBTORGBA(u32* colors, u32 count);
\\NuAnimData* NuAnimDataRead(fileHandle handle);
/**********************************************************/

void ReadNuIFFTextureSet(fileHandle handle, NuSceneMtl* mtl);
void ReadNuIFFMaterialSet(fileHandle handle, NuSceneMtl* mtl);
void NuSceneMtlUpdate(NuSceneMtl* mtl);
void ReadNuIFFAnimationLibrary(fileHandle handle, NuScene* scene);
void ReadNuIFFGSplineSet(fileHandle handle, NuScene* scene);
void ReadNuIFFGobjSet(fileHandle handle, NuSceneMtl* mtl);
NuGobj* ReadNuIFFGeom(fileHandle handle, UNKWORD param_2);
void ReadNuIFFGeomDef(fileHandle handle, NuSceneMtl* mtl);
void ReadNuIFFGeomVtx(fileHandle handle, NuGeom* geom);
void ReadNuIFFGeomCntrl(fileHandle handle, NuGeom* geom);
void ReadNuIFFFaceOnGeom(fileHandle handle, NuFaceOnGeom* face);
void ReadNuIFFGeomPrim(fileHandle handle, NuGeom* geom);
void ReadNuIFFGeomTri(fileHandle handle, NuGeom* geom, s32 param_3);
void ReadNuIFFGeomSkin(fileHandle handle, NuGeom* geom);
void ReadNuIFFBlendShape(fileHandle handle, NuGeom* geom);
void ReadNuIFFUnknown(fileHandle handle, u32 blockMagic);
int ReadNuIFFInstSet(fileHandle handle, UNKTYPE* param_2, UNKTYPE* param_3);
void ReadNuIFFSpecialObjects(fileHandle handle, NuScene* scene);
void NuSceneCalcCulling(NuScene* scene);
void ReadNuIFFGScene(fileHandle handle, NuScene* scene);
NuScene* NuSceneLoad(const char *name);
size_t ReadNuIFFNameTable(fileHandle handle);

#endif // !NUSCENE_H