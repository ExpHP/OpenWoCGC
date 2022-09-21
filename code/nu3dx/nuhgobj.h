#ifndef NUHGOBJ_H
#define NUHGOBJ_H

#include "../types.h"
#include "nu3dxtypes.h"

/*
  800b06f8 000050 800b06f8  4 NuHGobjCreate 	Global
  800b0748 0001e0 800b0748  4 NuHGobjDestroyDynamic 	Global
  800b0928 000028 800b0928  4 NuHGobjDestroy 	Global
  800b0950 000080 800b0950  4 NuHGobjLoad 	Global
  800b09d0 00006c 800b09d0  4 NuHGobjRead 	Global
  800b0a3c 0001d0 800b0a3c  4 ReadNuIFFHGobj 	Global
  800b0c0c 000834 800b0c0c  4 ReadNuIFFHGobjSet 	Global
  800b1440 000068 800b1440  4 NuHGobjPOIMtx 	Global
  800b14a8 000034 800b14a8  4 NuHGobjGetPOI 	Global
*/

// sizeof(HGobj) = 0x80
typedef struct
{
    u32 WORD_0x8;
    u32 WORD_0xC;
    char temp0[0x1C];
    u32 WORD_0x2C;
    char temp1[0x4];
    float FLOAT_0x34;
    char temp2[0x34];
    u32 WORD_0x6C;
    u32 WORD_0x70;
    u32 WORD_0x74;
    char temp3[0x8]
} HGobj; // 0x80


HGobj* NuHGobjCreate(void);
HGobj* NuHGobjLoad(const char* name);
void ReadNuIFFHGobj(fileHandle handle, HGobj *hgobj);


#endif // !NUHGOBJ_H