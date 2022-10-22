#include "nuhgobj.h"
#include "nufile.h"

HGobj* NuHGobjCreate(void)
{
    HGobj *hgobj = (HGobj *)NuMemAlloc(sizeof(HGobj));
    memset(hgobj, 0, sizeof(HGobj));
    hgobj->FLOAT_0x34 = 1.0f;
    
    return hgobj;
}

HGobj* NuHGobjLoad(const char* name)
{
    HGobj hgobj = NULL;
    fileHandle handle = NuFileOpen(name, 0);
    
    if (handle != 0)
    {
        NuFileBeginBlkRead(handle, 'FOGH');
        HGobj* hgobj = NuHGobjCreate();
        ReadNuIFFHGobj(handle, hgobj);
        NuFileEndBlkRead(handle);
        NuFileClose(handle);
    }
    else
    {
        strlwr(name);
    }
    
    return hgobj;
}

void ReadNuIFFHGobj(fileHandle handle, HGobj *hgobj)
{
    u32 magic;
    NuScene scene;
    Struct2 struct2;
    
    memset(scene, 0, sizeof(NuScene));
    memset(struct2, 0, sizeof(Struct2));
    
    scene.WORD_0x1C = 0;
    scene.WORD_0x10 = 0;
    scene.WORD_0x14 = 0;
    scene.WORD_0x18 = 0;
    
    while ((magic = NuFileBeginBlkRead(handle, 0)) != 0)
    {
        switch(magic)
        {
            case '0SAT':
                scene.WORD_0x34 = hgobj->WORD_0x2C;
                ReadNuIFFTexAnimSet(handle, &struct2, scene.WORD_0x14);
                hgobj->WORD_0x74 = struct2.WORD_0x6C;
                hgobj->WORD_0x70 = struct2.WORD_0x68;
                hgobj->WORD_0x6C = struct2.WORD_0x64;
                break;
            case '00SM':
                ReadNuIFFMaterialSet(handle, &struct2);
                struct2.WORD_0x8 = scene.WORD_0x1C;
                struct2.WORD_0xC = scene.WORD_0x18;
                hgobj->WORD_0x8 = scene.WORD_0x1C;
                hgobj->WORD_0xC = scene.WORD_0x18;
                break;
            case '0OGH':
                ReadNuIFFHGobjSet(handle, hgobj);
                break;
            case '0TST':
                struct2.WORD_0x34 = hgobj->WORD_0x2C;
                ReadNuIFFTexAnimSet(handle, &struct2, scene.WORD_0x14);
                hgobj->WORD_0x74 = struct2.WORD_0x6C;
                hgobj->WORD_0x70 = struct2.WORD_0x68;
                hgobj->WORD_0x6C = struct2.WORD_0x64;
                break;
            case 'LBTN':
                hgobj->WORD_0x2C = ReadNuIFFNameTable(handle);
                break;
            default:
                ReadNuIFFUnknown(handle, magic);
                break;
        }
        
        NuFileEndBlkRead(handle);
    }
    
    NuSceneMtlUpdate(&scene);
}

void ReadNuIFFGeomCntrl(filehandle handle, NuGeom geom)
{
  NuFileReadInt(handle);
  return;
}