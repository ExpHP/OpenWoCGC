#include "numem.h"
#include "nuerror.h"
#include "nucoretypes.h";

//void* memexternal = NULL;
void* memext[2];
s32 highallocaddr = 0;
s32 peakallocaddr = 0;
u32 totalloc = 0;
u32 malloced = 0;
ExternalMemory* memexternal;


#define NuError(msg)                                                           \
    error_func e = NuErrorProlog(__FILE__, __LINE__);                          \
    e(msg);

#define ROUND_UP(x, align) (((x) + (align)-1) & (-(align)))

void NuMemSetExternal(void* ptr, void* end)
{
	if (ptr != NULL)
	{
		memexternal = memext; // Is it the reference to it or not?
		memext[0] = ptr;
		memext[1] = end;
	}
	else
	{
		memexternal = ptr;
	}
}

//void memset(void*, s32, u32); 						//gcc2_compiled__N128
//void* malloc(u32);                                    //malloc /* extern */

void* NuMemAlloc(size_t size) {
    void* ret;
	
	// Alloc from main heap if possible
    if (memexternal != NULL) {
	
	
        *memexternal->start = (void*) ROUND_UP((s32) *memexternal->start, 16);
		
        if (memexternal->end != NULL && (s32)*memexternal->end - (s32)*memexternal->start < size) {
            return NULL;
        }
        ret = *memexternal->start;
        *memexternal->start = ((s8*)*memexternal->start) + size;
        return ret;
    } 
	// Main game heap is NULL, fallback on C malloc?
	else {
        s32 end;
		
		// Total used memory
        totalloc += size;
		
		// Attempt to allocate
        ret = malloc(size);
        if (ret == NULL) {
            NuError("NuMemAlloc : Failed to alloc %d bytes!", size);
			/*error_func e = NuErrorProlog("OpenCrashWOC/code/nucore/numem.c", 57);
			e("NuMemAlloc : Failed to alloc %d bytes!", size);*/
        }
		
		// Clear buffer
        memset(ret, 0, size); // gcc2_compiled__N128 
		
		// Resize heap?
        end = size + (s32)ret;
        if (end > highallocaddr) {
            highallocaddr = end;
        }
        if (end > peakallocaddr) {
            peakallocaddr = end;
        }
		
        return ret;
    }
}

void NuMemFree(void* data)
{
	free(data);
}

void* malloc_x(size_t size)
{
	malloced++;
	return malloc(size);
}

void free_x(void* data)
{
	malloced--;
	free(data);
}