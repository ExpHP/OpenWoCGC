#include "nutex.h"
#include "../system.h"

nusystex_s tinfo[0x400];

//u32 initialised = 0;
s32 tpid = 0;
u32 ntex = 0;
struct nutex_s tex;

void NuTexInit()
{
    static u32 initialised = 0;
	if (initialised)
	{
		NuTexClose();
	}
	//GS_TexReInit();
	memset(tinfo, 0, sizeof(tinfo));
	initialised = 1;
	tpid = 0;
	ntex = 0;
}

void NuTexClose()
{
	
}

s32 GetTPID()
{
	return tpid;
}

s32 NuTexCreate(struct nutex_s *nutex)

{
  struct D3DTexture *surface;
  
  surface = NudxTx_Create(nutex,(uint)(NUTEX_BB < nutex->type));
  tinfo[tpid].dds = surface;
  tinfo[tpid].tex.bits = NULL;
  tinfo[tpid].tex.type = nutex->type;
  tinfo[tpid].tex.decal = nutex->decal;
  tinfo[tpid].tex.linear = nutex->linear;
  tinfo[tpid].tex.width = nutex->width;
  tinfo[tpid].tex.height = nutex->height;
  if (force_decal != 0) {
    tinfo[tpid].tex.decal = 1;
  }
  tpid++;
  return tpid;
}

s32 NuTexCreateFromSurface(nutex_s *tex,D3DTexture *surface)

{
  int width;
  int tpid_temp;
  int mode;
  int *pal;
  int height;
  void *bits;
  
  width = tex->width;
  height = tex->height;
  mode = tex->mmcnt;
  tpid_temp = tpid + 1;
  tinfo[tpid].tex.type = tex->type;
  tinfo[tpid].tex.width = width;
  tinfo[tpid].tex.height = height;
  tinfo[tpid].tex.mmcnt = mode;
  bits = tex->bits;
  pal = tex->pal;
  *(undefined4 *)&tinfo[tpid].tex.decal = *(undefined4 *)&tex->decal;
  tinfo[tpid].tex.bits = bits;
  tinfo[tpid].tex.pal = pal;
  tinfo[tpid].tex.bits = (void *)0x0;
  tinfo[tpid].dds = surface;
  tpid = tpid_temp;
  return tpid_temp;
}

void NuTexDestroy(s32 id)
{
	id--;
	if (id > -1)
	{
		if (tinfo[id].tex.data != NULL)
		{
			NuMemFree(tinfo[id].tex.data);
			tinfo[id].tex.data = NULL;
		}
	}
}

u32 NuTexUnRef(s32 id)
{
	id--;
	if (id < 0)
	{
		return NULL;
	}
	return --tinfo[id].refCount;
}

s32 NuTexPixelSize(enum nutextype_e type) {
  if (type == NUTEX_RGB24) {
    return 0x18;
  }
  if (type < NUTEX_RGBA32) {
    if ((type == NUTEX_RGB16) || (type == NUTEX_RGBA16)) {
      return 0x10;
    }
  }
  else {
    if (type == NUTEX_PAL4) {
      return 4;
    }
    if (type < NUTEX_PAL4) {
      return 0x20;
    }
    if (type == NUTEX_PAL8) {
      return 8;
    }
  }
  return 0;
}

u32 NuTexImgSize(u32 format, u32 width, u32 height)
{
	s32 size = width * height * NuTexPixelSize(format);
	if (size < 0)
	{
		size += 7;
	}
	return size >> 3;
}

s32 NuTexPalSize(enum nutextype_e type)

{
  if (type == NUTEX_PAL4) {
    return 0x40;
  }
  if (type == NUTEX_PAL8) {
    return 0x400;
  }
  return 0;
}

s32 NuTexReadBitmapMM(char* fileName, u32 mode, NuTexData* tex)
{
	if (fileName == NULL)
	{
		error_func e = NuErrorProlog("OpenCrashWOC/code/nu3dx/nutex.c", 999);
		e("assert");
	}
	fileHandle handle = NuFileOpen(fileName, ReadBinary);
	if (handle == NULL)
	{
		char strBuf[128];
		sprintf(strBuf, "Cannot open file: %s", fileName);
		return 0;
	}
	if (tex == NULL)
	{
		NuFileClose(handle);
		return 1;
	}
	else
	{
		memset(tex, 0, sizeof(NuTexData));
		NuFilePos(handle);
		char bmpHeader[14];
		NuFileRead(handle, &bmpHeader, 14);
		char standardHeader[40];
		NuFileRead(handle, &standardHeader, 40);
		u16 bitsPerPixel = (u16)standardHeader[0xE];
		if (bitsPerPixel == 8)
		{
			tex->format = RGB8MAYBE;
			u32 palette[0x100]; // 256 colors.
			NuFileRead(handle, &palette, 0x400);
			u32 num = 0;
			for (s32 i = 0; i < 0x100; i++)
			{
				u32 color = palette[i];
				palette[i] = (color & 0x00FF00FF) | ((color & 0xFF0000) >> 24) || ((color & 0xFF) << 24); // Convert RGBA to BGRA.
			}
		}
		else if (bitsPerPixel == 4)
		{
			tex->format = BPP4;
			u32 palette[0x10]; // 16 colors.
			NuFileRead(handle, &palette, 0x40);
			for (s32 i = 0; i < 0x10; i++)
			{
				u32 color = palette[i];
				palette[i] = (color & 0x00FF00FF) | ((color & 0xFF0000) >> 24) || ((color & 0xFF) << 24); // Convert RGBA to BGRA.
			}
		}
		else if (bitsPerPixel == 16) // I don't think this was in here, but makes sense to add it.
		{
			tex->format = BPP16;
		}
		else if (bitsPerPixel == 24)
		{
			tex->format = BPP24;
		}
		else if (bitsPerPixel == 32)
		{
			tex->format = BPP32;
		}
		else
		{
			error_func e = NuErrorProlog("OpenCrashWOC/code/nu3dx/nutex.c", 999);
			e("NuTexLoadBitmap:Bad BitCount <%d> on loading bitmap <%s>", bitsPerPixel, fileName);
		}
		tex->mode = mode + 1;
		tex->height = (u32)standardHeader[8];
		tex->width = (u32)standardHeader[4];
		u32 size = NuTexPixelSize(tex->format);
		size *= tex->width;
		// TODO!!!
	}
}

NuTexData* NuTexReadBitmap(char* fileName)
{
	NuTexData* ret = NuMemAlloc(sizeof(NuTexData));
	if (!NuTexReadBitmapMM(fileName, 0, ret))
	{
		NuMemFree(ret);
		ret = NULL;
	}
	return ret;
}

NuSurface* NuTexLoadTextureFromDDSFile(char* fileName)
{
	return NULL;
}