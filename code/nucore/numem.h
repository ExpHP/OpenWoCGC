#ifndef NUMEM_H
#define NUMEM_H

#include "../types.h"
#include "nucoretypes.h"
#include <stdlib.h>
#include <memory.h>


//extern void* memexternal;
extern void* memext[2];
extern s32 highallocaddr;
extern s32 peakallocaddr;
extern s32 totalloc;
extern u32 malloced;



//void memset(void*, int, int, ...); // the crclr at 24 means memset takes varargs

// Set memory to be external, with a pointer and ending point.
void NuMemSetExternal(void* ptr, void* end);

// Allocate memory.
void* NuMemAlloc(size_t size);

// Free memory.
void NuMemFree(void* data);

// Allocate memory.
void* malloc_x(size_t size);

// Free memory.
void free_x(void* data);

#endif // !NUMEM_H