#include "nutex.h"
#include "../system.h"

nusystex_s tinfo[0x400];

//u32 initialised = 0;
s32 tpid = 0;
u32 ntex = 0;
struct nutex_s tex;

void NuTexInit()
{
    static s32 initialised = 0;
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

void NuTexClose(void)		\\CHECK

{
  int i;
  int *data;
  
  NudxFw_DestroyBackBufferCopy();
  i = 0x400;
  data = (int *)&tinfo[0].tex.bits;
  do {
    if ((void *)*data != NULL) {
      NuMemFree((void *)*data);
      *data = 0;
    }
    data = data + 10;
    i = i + -1;
  } while (i != 0);
  initialised = i;
  tpid = i;
  ntex = i;
  return;
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

s32 NuTexGetDecalInfo(s32 tid)

{
  return (s32)tinfo[tid + -1].tex.decal;
}

s32 NuTexCreateFromSurface(nutex_s *tex,D3DTexture *surface)	//CHECK

{
  s32 width;
  s32 cnt;
  s32 *pal;
  s32 height;
  void *bits;
  
  width = tex->width;
  height = tex->height;
  cnt = tex->mmcnt;
  tinfo[tpid].tex.type = tex->type;
  tinfo[tpid].tex.width = width;
  tinfo[tpid].tex.height = height;
  tinfo[tpid].tex.mmcnt = cnt;
  bits = tex->bits;
  pal = tex->pal;
  *(undefined4 *)&tinfo[tpid].tex.decal = *(undefined4 *)&tex->decal;
  tinfo[tpid].tex.bits = bits;
  tinfo[tpid].tex.pal = pal;
  tinfo[tpid].tex.bits = NULL;
  tinfo[tpid].dds = surface;
  return tpid++;
}

void NuTexDestroy(s32 id)
{
	id--;
	if (id > -1)
	{
		if (tinfo[id].tex.data != NULL)
		{
			NuMemFree(tinfo[id].tex.data);	//NuMemFree(tinfo[id].tex.bits);
			tinfo[id].tex.data = NULL;		//tinfo[id].tex.bits = NULL;
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
	return --tinfo[id].ref;
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

s32 NuTexImgSize(enum nutextype_e type, s32 width, s32 height)
{
	s32 size = width * height * NuTexPixelSize(type);
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


void NuTexSetTextureStates(numtl_s *mtl)

{
  uint flag_or_float;
  
  if (mtl->tid == 0) {
    NuTexSetTexture(0,0);
    NudxFw_SetTextureState(0,D3DTSS_COLOROP,1);
    NudxFw_SetTextureState(0,D3DTSS_ALPHAOP,1);
  }
  else {
    NudxFw_SetTextureState(0,D3DTSS_COLOROP,4);
    NudxFw_SetTextureState(0,D3DTSS_COLORARG1,2);
    NudxFw_SetTextureState(0,D3DTSS_COLORARG2,0);
    NudxFw_SetTextureState(0,D3DTSS_ALPHAARG1,2);
    NudxFw_SetTextureState(0,D3DTSS_ALPHAARG2,0);
    NudxFw_SetTextureState(0,D3DTSS_ALPHAOP,4);
    NudxFw_SetTextureState(0,D3DTSS_TEXCOORDINDEX,0);
    NudxFw_SetTextureState(0,D3DTSS_TEXTURETRANSFORMFLAGS,0);
    flag_or_float = (uint)mtl->attrib >> 0x18 & 3;
    if (flag_or_float == 0) {
      GS_TexSetWrapModes(0,1);
    }
    else if (flag_or_float == 2) {
      GS_TexSetWrapModes(0,2);
    }
    else if (flag_or_float == 3) {
      GS_TexSetWrapModes(0,0);
    }
    else {
      GS_TexSetWrapModes(0,0);
    }
    flag_or_float = (uint)mtl->attrib >> 0x16 & 3;
    if (flag_or_float == 0) {
      GS_TexSetWrapModet(0,1);
    }
    else if (flag_or_float == 2) {
      GS_TexSetWrapModet(0,2);
    }
    else if (flag_or_float == 3) {
      GS_TexSetWrapModet(0,0);
    }
    else {
      GS_TexSetWrapModet(0,0);
    }
    NudxFw_SetTextureState(0,D3DTSS_MAGFILTER,2);
    NudxFw_SetTextureState(0,D3DTSS_MINFILTER,2);
    NudxFw_SetTextureState(0,D3DTSS_MIPFILTER,2);
  }
  return;
}


s32 NuTexReadBitmapMM(char* fileName, s32 mode, nutex_s* tex)
{
	if (fileName == NULL)
	{
		error_func e = NuErrorProlog("OpenCrashWOC/code/nu3dx/nutex.c", 999);
		e("assert");
	}
	fileHandle handle = NuFileOpen(fileName, NUFILE_READ);
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
		memset(tex, 0, sizeof(nutex_s));
		NuFilePos(handle);
		char bmpHeader[14];
		NuFileRead(handle, &bmpHeader, 14);
		char standardHeader[40];
		NuFileRead(handle, &standardHeader, 40);
		s16 bitsPerPixel = (s16)standardHeader[0xE];
		if (bitsPerPixel == 8)
		{
			tex->type = NUTEX_PAL8;
			u32 palette[0x100]; // 256 colors.
			NuFileRead(handle, &palette, 0x400);
			u32 num = 0;
			for (s32 i = 0; i < 0x100; i++)
			{
				u32 color = palette[i];
				palette[i] = (color & 0x00FF00FF) | ((color & 0xFF0000) >> 24) || ((color & 0xFF) << 24); // Convert RGBA to BGRA.

				//palette[i] = (color >> 0x18) << 8 | (color >> 8) << 0x18 | color & 0xff00ff
			}
		}
		else if (bitsPerPixel == 4)
		{
			tex->type = NUTEX_PAL4;
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
			tex->type = NUTEX_RGBA16;
		}
		else if (bitsPerPixel == 24)
		{
			tex->type = NUTEX_RGB24;
		}
		else if (bitsPerPixel == 32)
		{
			tex->type = NUTEX_RGBA32;
		}
		else
		{
			error_func e = NuErrorProlog("OpenCrashWOC/code/nu3dx/nutex.c", 999);
			e("NuTexLoadBitmap:Bad BitCount <%d> on loading bitmap <%s>", bitsPerPixel, fileName);
		}
		tex->mmcnt = mode + 1;
		tex->height = (u32)standardHeader[8];
		tex->width = (u32)standardHeader[4];
		s32 size = NuTexPixelSize(tex->type);
		size *= tex->width;
		// TODO!!!
	}
}

void NuTexSetTexture(uint stage,int tid)

{
  if (tid < 1) {
    GS_TexSelect(stage,0);
  }
  else {
    GS_TexSelect(stage,tid);
  }
  return;
}

nutex_s * NuTexReadBitmap(char* fileName)
{
	nutex_s* ret = NuMemAlloc(sizeof(NuTexData));
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

void GS_TexSelect(int stage,int NUID)

{
  bool bVar1;
  int iVar2;
  uint uVar3;
  GXTexObj *GX_texobj;
  
  bVar1 = stage == 0;
  if (bVar1) {
    ShadowBodge = stage;
  }
  if (3 < stage) {
    DisplayErrorAndLockup("C:/source/crashwoc/code/system/gc/gstex.c",0x21c,"GS_TexSelect1");
  }
  TexStages[stage] = NUID;
  GX_texobj = (GXTexObj *)GS_TexList;
  if ((NUID == 0) || (NUID == 9999)) {
    GXSetNumTevStages('\x01');
    GXSetTevOrder(stage,GX_TEXCOORD_NULL,GX_TEXMAP_NULL,GX_COLOR0A0);
    GXSetTevOp(stage,GX_PASSCLR);
  }
  else {
    if (NUID == ShadowMatBodge) {
      ShadowBodge = 1;
    }
    if (maxstage.189 < stage) {
      maxstage.189 = stage;
    }
    if (bVar1) {
      maxstage.189 = stage;
    }
    if (NUID == 0x270e) {
      GS_SetFBCopyTexturePause();
    }
    GXSetNumTexGens((char)maxstage.189 + '\x01');
    GXSetNumTevStages((char)maxstage.189 + '\x01');
    GXSetTexCoordGen2(stage,GX_TG_MTX2x4,GX_TG_TEX0,0x3c,'\0',0x7d);
    GXSetTevOrder(stage,stage,stage,GX_COLOR0A0);
    iVar2 = 0;
    if (bVar1) {
      iVar2 = 10;
    }
    GXSetTevColorIn(stage,0xf,8,iVar2,0xf);
    GXSetTevColorOp((_GXTevStageID *)stage,0,0,0,1,0);
    iVar2 = 0;
    if (bVar1) {
      iVar2 = 5;
    }
    GXSetTevColorIn(stage,7,4,iVar2,7);
    GXSetTevAlphaOp(stage,0,0,0,1,0);
    if (1 < NUID - 0x270eU) {
      uVar3 = 0;
      if (GS_NumTextures != 0) {
        do {
          if (((_GS_TEXTURE *)GX_texobj)->NUID == NUID - 1U) {
            GXInitTexObjWrapMode
                      ((GXTexObj *)(_GXTexObj *)((int)GX_texobj + 0x20),
                       (GXTexWrapMode)(&GS_TexWrapMode_s)[stage],
                       (GXTexWrapMode)(&GS_TexWrapMode_t)[stage]);
            GXLoadTexObj((_GXTexObj *)((int)GX_texobj + 0x20),stage);
            return;
          }
          uVar3 = uVar3 + 1;
          GX_texobj = (GXTexObj *)((int)GX_texobj + 0x4c);
        } while (uVar3 < GS_NumTextures);
      }
      DisplayErrorAndLockup("C:/source/crashwoc/code/system/gc/gstex.c",0x281,"GS_TexSelect2");
      GXLoadTexObj(&GS_TexList->Tex,stage);
    }
  }
  return;
}