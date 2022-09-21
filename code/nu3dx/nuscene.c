#include "nuscene.h"
#include "nufile.h"

// Since this project isn't trying to match the original code,
// I figured it would be nice to try and have the errors show the correct file/line,
// rather than manually entering it
#define NuError(msg) \
    error_func e = NuErrorProlog(__FILE__, __LINE__); \
    e(msg);


/****** I don't know what headers these should go in ******/
//void GS_ARGBTORGBA(u32* colors, u32 count);
//NuAnimData* NuAnimDataRead(fileHandle handle);
/**************************************************************/
void ReadNuIFFTextureSet(fileHandle handle, NuSceneMtl* mtl);
void ReadNuIFFMaterialSet(fileHandle handle, NuSceneMtl* mtl);
void NuSceneMtlUpdate(NuSceneMtl* mtl);
void ReadNuIFFGeomCntrl(fileHandle handle, NuGeom* geom);

void ReadNuIFFAnimationLibrary(fileHandle handle, NuScene* scene)
{
    u8 i;

    u8 numAnim = NuFileReadChar(handle);
    scene->numAnim = numAnim;

    if (numAnim > 0)
    {
        scene->animData = NuMemAlloc(numAnim * sizeof(NuAnimData*));
        memset(scene->animData, 0, numAnim * sizeof(NuAnimData*));

        for (i = 0; i < numAnim; i++)
        {
            if (NuFileReadChar(handle) != 0)
            {
                scene->animData[i] = NuAnimDataRead(handle);
            }
        }
    }
}

void ReadNuIFFGSplineSet(fileHandle handle, NuScene* scene);

void ReadNuIFFGobjSet(fileHandle handle, NuSceneMtl* mtl)
{
    s32 numGobj = NuFileReadInt(handle);

    if (mtl->gobjSet != NULL)
    {
        NuError("ReadNuIFFGobjSet : Object already defined!");
    }

    mtl->gobjSet = NuMemAlloc(numGobj * sizeof(NuGobj*));
    memset(mtl->gobjSet, 0, numGobj * sizeof(NuGobj*));
    mtl->gobjCount = 0;

    while (numGobj-- > 0)
    {
        ReadNuIFFGeomDef(handle, mtl);
    }
}

NuGobj* ReadNuIFFGeom(fileHandle handle, UNKWORD param_2);

void ReadNuIFFGeomDef(fileHandle handle, NuSceneMtl* mtl)
{
    NuGobj* gobj;
    
    gobj = ReadNuIFFGeom(handle, mtl->WORD_0x1C);
    mtl->gobjSet[mtl->gobjCount++] = gobj;
}

void ReadNuIFFGeomVtx(fileHandle handle, NuGeom* geom)
{
    s32 val = NuFileReadInt(handle);
    geom->WORD_0x10 = val;
    
    if (val != 0)
    {
        NuGeomCreateVB(geom, val, 0x59, 0);
        
        if (geom->vb == NULL)
        {
            NuError("ReadNuIFFGeomVtx : Lock VB failed!");
        }
        
        NuFileRead(handle, geom->vb, val * 0x24);
        GS_ARGBTORGBA(geom->vb, val);
    }
}

void ReadNuIFFGeomCntrl(fileHandle handle, NuGeom* geom)
{
    // Removed code???
    NuFileReadInt(handle);
    return;
}

void ReadNuIFFFaceOnGeom(fileHandle handle, NuFaceOnGeom* face);
void ReadNuIFFGeomPrim(fileHandle handle, NuGeom* geom);

void ReadNuIFFGeomTri(fileHandle handle, NuGeom* geom, s32 param_3)
{
    NuPrim *prim;
    s32 size;

    size = NuFileReadInt(handle);
    prim = NuPrimCreate(size, param_3);
    NuFileRead(handle, prim->PTR_0x14, size * 2);
    NuGeomAddPrim(geom, prim);
}

void ReadNuIFFGeomSkin(fileHandle handle, NuGeom* geom);
void ReadNuIFFBlendShape(fileHandle handle, NuGeom* geom);

void ReadNuIFFUnknown(fileHandle handle, u32 blockMagic)
{
    
}

int ReadNuIFFInstSet(fileHandle handle, UNKTYPE* param_2, UNKTYPE* param_3);
void ReadNuIFFSpecialObjects(fileHandle handle, NuScene* scene);
void NuSceneCalcCulling(NuScene* scene);
void ReadNuIFFGScene(fileHandle handle, NuScene* scene);
NuScene* NuSceneLoad(const char *name);

size_t ReadNuIFFNameTable(fileHandle handle)
{
    s32 size = NuFileReadInt(handle);
    return NuFileRead(handle, NuMemAlloc(size), size);
}