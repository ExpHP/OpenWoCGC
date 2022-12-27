#include "nuscene.h"
#include"nu3dxtypes.h"
#include"nugobj.h"
#include"types.h"

// Since this project isn't trying to match the original code,
// I figured it would be nice to try and have the errors show the correct file/line,
// rather than manually entering it
#define NuError(msg) \
    error_func e = NuErrorProlog(__FILE__, __LINE__); \
    e(msg);


void ReadNuIFFTextureSet(filehandle handle,nuscene_s *scene)

{
  int count;
  short *tids;
  int imsize;
  int numtids;
  nutex_s nuTex;
  
  NuFileBeginBlkRead(handle,0HST);
  count = NuFileReadInt(handle);
  NuFileEndBlkRead(handle);
  scene->numtids = 0;
  if (count == 0) {
    scene->tids = (short *)0x0;
  }
  else {
    tids = (short *)NuMemAlloc(count << 1);
    scene->tids = tids;
    *tids = 0;
  }
  if (0 < count) {
    do {
      NuFileBeginBlkRead(handle,0MXT);
      nuTex.type = NuFileReadInt(handle);
      nuTex.width = NuFileReadInt(handle);
      nuTex.height = NuFileReadInt(handle);
      imsize = NuFileReadInt(handle);
      nuTex.pal = (int *)0x0;
      nuTex.bits = (void *)0x0;
      nuTex.decal = 0;
      nuTex.mmcnt = imsize;
      if ((nuTex.type & 0x80) == 0) {
        imsize = NuTexImgSize(nuTex.type,nuTex.width,nuTex.height);
      }
      nuTex.bits = malloc_x(imsize);
      NuFileRead(handle,nuTex.bits,imsize);
      imsize = NuTexPalSize(nuTex.type);
      if (imsize != 0) {
        nuTex.pal = (int *)malloc_x(imsize);
        NuFileRead(handle,nuTex.pal,imsize);
      }
      imsize = NuTexCreate(&nuTex);
      numtids = scene->numtids;
      scene->tids[numtids] = (short)imsize;
      scene->numtids = numtids + 1;
      if (nuTex.pal != (int *)0x0) {
        free_x(nuTex.pal);
        nuTex.pal = (int *)0x0;
      }
      if (nuTex.bits != (void *)0x0) {
        free_x(nuTex.bits);
        nuTex.bits = (void *)0x0;
      }
      NuFileEndBlkRead(handle);
      count = count + -1;
    } while (count != 0);
  }
  return;
}

void ReadNuIFFMaterialSet(filehandle handle,nuscene_s *nus)

{
  uint uVar1;
  int num_mtls;
  numtl_s *mtls;
  numtl_s *nextmtl;
  int iVar2;
  int *piVar3;
  int iVar3;
  int count;
  
  num_mtls = NuFileReadInt(handle);
  mtls = (numtl_s *)NuMemAlloc(num_mtls << 2);
  nus->mtls = mtls;
  nus->nummtls = num_mtls;
  if (0 < num_mtls) {
    iVar3 = 0;
    count = num_mtls;
    do {
      nextmtl = NuMtlRead(handle);
      *(numtl_s **)((int)&nus->mtls->next + iVar3) = nextmtl;
      iVar2 = *(int *)((int)&nus->mtls->next + iVar3);
      uVar1 = *(uint *)(iVar2 + 4);
      if (uVar1 >> 0x1e != 0) {
        *(uint *)(iVar2 + 4) = uVar1 & 0xfff3ffff | 0x40000;
      }
      iVar3 = iVar3 + 4;
      count = count + -1;
    } while (count != 0);
  }
  if (0 < num_mtls) {
    count = 0;
    do {
      piVar3 = *(int **)((int)&nus->mtls->next + count);
      if (*piVar3 < 1) {
        *piVar3 = 0;
      }
      else {
        iVar3 = *(int *)((int)nus->mtls + *piVar3 * 4 + -4);
        *piVar3 = iVar3;
        *(undefined *)(*(int *)((int)&nus->mtls->next + count) + 0x3e) =
             *(undefined *)(iVar3 + 0x3e);
      }
      count = count + 4;
      num_mtls = num_mtls + -1;
    } while (num_mtls != 0);
  }
  return;
}


void NuSceneMtlUpdate(nuscene_s *nus)

{
  numtl_s **ppnVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  
  iVar3 = 0;
  if (0 < nus->nummtls) {
    iVar4 = 0;
    do {
      iVar2 = *(int *)((int)&nus->mtls->next + iVar4);
      if (*(int *)(iVar2 + 0x38) == -1) {
        *(undefined4 *)(iVar2 + 0x38) = 0;
        *(undefined *)(*(int *)((int)&nus->mtls->next + iVar4) + 0x42) = 0;
      }
      else {
        *(int *)(iVar2 + 0x38) = (int)nus->tids[*(int *)(iVar2 + 0x38)];
        iVar2 = NuTexGetDecalInfo(*(int *)(*(int *)((int)&nus->mtls->next + iVar4) + 0x38));
        *(char *)(*(int *)((int)&nus->mtls->next + iVar4) + 0x42) = (char)iVar2;
      }
      iVar3 = iVar3 + 1;
      ppnVar1 = (numtl_s **)((int)&nus->mtls->next + iVar4);
      iVar4 = iVar4 + 4;
      NuMtlUpdate(*ppnVar1);
    } while (iVar3 < nus->nummtls);
  }
  return;
}




void ReadNuIFFAnimationLibrary(fileHandle handle, struct nugscn_s* scene)
{
    u8 i;

    u8 numAnim = NuFileReadChar(handle);
    scene->numinstanims = numAnim;

    if (numAnim > 0)
    {
        scene->instanimdata = NuMemAlloc(numAnim * sizeof(struct nuanimdata_s**));
        memset(scene->instanimdata, 0, numAnim * sizeof(struct nuanimdata_s**));

        for (i = 0; i < numAnim; i++)
        {
            if (NuFileReadChar(handle) != 0)
            {
                scene->instanimdata[i] = NuAnimDataRead(handle);
            }
        }
    }
}

void ReadNuIFFGSplineSet(filehandle handle,nugscn_s *scene)

{
  short *psVar1;
  int index;
  void *spline;
  nugspline_s *splineDataIndex;
  int iVar2;
  
  index = NuFileReadInt(handle);
  scene->numsplines = index;
  index = NuFileReadInt(handle);
  if (scene->numsplines != 0) {
    spline = NuMemAlloc(index);
    scene->splinedata = spline;
    NuFileRead(handle,spline,index);
    splineDataIndex = (nugspline_s *)NuMemAlloc(scene->numsplines * 0xc);
    index = 0;
    scene->splines = splineDataIndex;
    if (0 < scene->numsplines) {
      iVar2 = 0;
      do {
        index = index + 1;
        *(undefined2 *)((int)&scene->splines->len + iVar2) = *(undefined2 *)((int)spline + 2);
        *(char **)((int)&scene->splines->name + iVar2) =
             scene->nametable + *(short *)((int)spline + 6);
        *(int *)((int)&scene->splines->pts + iVar2) = (int)spline + 8;
        *(undefined2 *)((int)&scene->splines->ptsize + iVar2) = 0xc;
        psVar1 = (short *)((int)&scene->splines->len + iVar2);
        iVar2 = iVar2 + 0xc;
        spline = (void *)((int)spline + 8 + *psVar1 * 0xc);
      } while (index < scene->numsplines);
    }
  }
  return;
}


void ReadNuIFFGobjSet(fileHandle handle, struct nuscene_s* nus)
{
    s32 numGobj = NuFileReadInt(handle);

    if (nus->gobjs != NULL)
    {
        NuError("ReadNuIFFGobjSet : Object already defined!");
    }

    nus->gobjs = NuMemAlloc(numGobj * sizeof(struct nugobj_s*));
    memset(nus->gobjs, 0, numGobj * sizeof(struct nugobj_s*));
    nus->numgobjs = 0;

    while (numGobj-- > 0)
    {
        ReadNuIFFGeomDef(handle, nus);
    }
}

struct nugobj_s * ReadNuIFFGeom(filehandle handle,numtl_s **mtls)

{
  int ngobjs;
  nugobj_s *gobject;
  gobjtype_s type;
  int mtlid;
  NuFaceOnGeom *face;
  nugobj_s *first;
  nugobj_s *last;
  nugeom_s *geom;
  int i;
  int count;
  nuvec_s zero;
  
  memset(&zero,0,0xc);
  i = 0;
  last = NULL;
  ngobjs = NuFileReadInt(handle);
  if (0 < ngobjs) {
    do {
      gobject = NuGobjCreate();
      gobject->ignore = 0;
      if (i == 0) {
        gobject->ngobjs = ngobjs;
        first = gobject;
      }
      else {
        gobject->ngobjs = 0;
      }
      type = NuFileReadInt(handle);
      gobject->type = type;
      if (type == NUGOBJ_MESH) {
        NuFileRead(handle,&gobject->origin,0xc);
        count = NuFileReadInt(handle);
        if (0 < count) {
          do {
            geom = NuGeomCreate();
            mtlid = NuFileReadInt(handle);
            geom->mtl_id = mtlid;
            geom->mtls = mtls[mtlid];
            ReadNuIFFGeomVtx(handle,geom);
            ReadNuIFFGeomCntrl(handle);
            ReadNuIFFGeomPrim(handle,geom);
            ReadNuIFFGeomSkin(handle,geom);
            ReadNuIFFBlendShape(handle,geom);
            NuGobjAddGeom(gobject,geom);
            count = count + -1;
          } while (count != 0);
        }
      }
      else if ((type == NUGOBJ_FACEON) && (count = NuFileReadInt(handle), 0 < count)) {
        do {
          (gobject->origin).x = zero.x;
          (gobject->origin).y = zero.y;
          (gobject->origin).z = zero.z;
          face = NuFaceOnGeomCreate();
          mtlid = NuFileReadInt(handle);
          face->mtl_id = mtlid;
          face->mtl = mtls[mtlid];
          ReadNuIFFFaceOnGeom(handle,face);
          NuGobjAddFaceOnGeom(gobject,face);
          count = count + -1;
        } while (count != 0);
      }
      i = i + 1;
      NuPs2CreateSkin(gobject);
      NuGobjCalcDims(gobject);
      for (geom = gobject->geom; geom != (nugeom_s *)0x0; geom = geom->next) {
      }
      if (last != (nugobj_s *)0x0) {
        last->next_gobj = gobject;
      }
      last = gobject;
    } while (i < ngobjs);
  }
  return first;
}


void ReadNuIFFGeomDef(fileHandle handle, struct nuscene_s* nus)
{
    struct nugobj_s* gobj;
    s32 numgobjs;
    
    gobj = ReadNuIFFGeom(handle, &nus->mtls->next);
    numgobjs = nus->numgobjs;
    nus->gobjs[numgobjs] = gobj;
    nus->numgobjs = numgobjs + 1;
    return;
}

void ReadNuIFFGeomVtx(fileHandle handle, struct nugeom_s* geom)
{

    s32 vtxCount = NuFileReadInt(handle);
    geom->vtxcnt = vtxCount;
    
    if (vtxCount != 0)
    {
        NuGeomCreateVB(geom, vtxCount, NUVT_TC1, 0);
        
        if (geom->vb == NULL)
        {
            NuError("ReadNuIFFGeomVtx : Lock VB failed!");
        }
        
        NuFileRead(handle, geom->hVB, vtxCount * 0x24);
        GS_ARGBTORGBA(geom->hVB, vtxCount);
    }
}

void ReadNuIFFGeomCntrl(fileHandle handle, nugeom_s* geom)
{
    // Removed code???
    NuFileReadInt(handle);
    return;
}

void ReadNuIFFFaceOnGeom(filehandle handle,struct nufaceongeom_s *face)

{
  s32 nfaceons;
  struct nufaceontype_s type;
  struct nufaceon_s *faceon;
  f32 fVar1;
  
  nfaceons = NuFileReadInt(handle);
  face->nfaceons = nfaceons;
  type = NuFileReadInt(handle);
  face->faceon_type = type;
  fVar1 = NuFileReadFloat(handle);
  face->faceon_radius = fVar1;
  nfaceons = face->nfaceons * 0x18;
  faceon = (nufaceon_s *)NuMemAlloc(nfaceons);
  face->faceons = faceon;
  NuFileRead(handle,faceon,nfaceons);
  return;
}

void ReadNuIFFGeomPrim(fileHandle handle, struct nugeom_s* geom)

{
    int counter;
    enum nuprimtype_e type;

    counter = NuFileReadInt(handle);
    if ((counter != 0) && (0 < counter)) {
        do {
            type = NuFileReadInt(handle);
            if (type == NUPT_NDXTRI) {
                ReadNuIFFGeomTri(handle, geom, NUPT_NDXTRI);
            }
            else if (type == NUPT_NDXTRISTRIP) {
                ReadNuIFFGeomTri(handle, geom, NUPT_NDXTRISTRIP);
            }
            else {
                error = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nuscene.c", 0x2a7);
                (*error)("Unknown primitive type");
            }
            counter = counter + -1;
        } while (counter != 0);
    }
    return;
}

void ReadNuIFFGeomTri(fileHandle handle, struct nugeom_s* geom, enum nuprimtype_e type)
{
    struct nuprim_s *prim;
    s32 itemCount;

    itemCount = NuFileReadInt(handle);
    prim = NuPrimCreate(itemCount, type);
    NuFileRead(handle, (void*)prim->idxbuff, itemCount * 2);
    NuGeomAddPrim(geom, prim);
}

void ReadNuIFFGeomSkin(filehandle handle,nugeom_s *geom)

{
  int count;
  char index;
  struct NUVTXSKININFO_s *vtxskin_info;
  struct NuSkin *skin;
  int byteIndex;
  int *mtxid;
  int iVar1;
  float *data;
  int indx_;
  int cycleIndex;
  
  count = NuFileReadInt(handle);
  if (count != 0) {
    index = NuFileReadChar(handle);
    if (index == '\0') {
      indx_ = 0;
      if (0 < count) {
        do {
          cycleIndex = 0;
          skin = (struct NuSkin *)NuMemAlloc(0x18);
          indx_ = indx_ + 1;
          memset(skin,0,0x18);
          byteIndex = NuFileReadInt(handle);
          skin->vtxoffset = byteIndex;
          byteIndex = NuFileReadInt(handle);
          skin->vtxcnt = byteIndex;
          byteIndex = NuFileReadInt(handle);
          skin->mtxcnt = byteIndex;
          mtxid = (int *)NuMemAlloc(byteIndex << 2);
          skin->mtxid = mtxid;
          if (0 < skin->mtxcnt) {
            byteIndex = 0;
            do {
              cycleIndex = cycleIndex + 1;
              iVar1 = NuFileReadInt(handle);
              *(int *)(byteIndex + (int)skin->mtxid) = iVar1;
              byteIndex = byteIndex + 4;
            } while (cycleIndex < skin->mtxcnt);
          }
          byteIndex = skin->vtxcnt * skin->mtxcnt * 4;
          data = (float *)NuMemAlloc(byteIndex);
          skin->weights = data;
          NuFileRead(handle,data,byteIndex);
          NuGeomAddSkin(geom,skin);
        } while (indx_ < count);
      }
    }
    else {
      count = geom->vtxcount << 4;
      vtxskin_info = (struct NUVTXSKININFO_s *)NuMemAlloc(count);
      geom->vtxskininfo = vtxskin_info;
      NuFileRead(handle,vtxskin_info,count);
    }
  }
  return;
}


void ReadNuIFFBlendShape(filehandle handle,nugeom_s *geom)

{
  float fVar1;
  size_t __n;
  int vtx_count;
  int nblends;
  NuBlendShape *blendgeom;
  nuvec_s **offsets;
  int *next_ix;
  int size;
  nuvec_s *pnVar2;
  char cVar3;
  GS_Buffer *vtxBuf;
  int iVar4;
  int iVar5;
  int iVar6;
  double dVar7;
  double dVar8;
  double dVar9;
  
  nblends = NuFileReadInt(handle);
  if (nblends != 0) {
    __n = nblends << 2;
    blendgeom = (NuBlendShape *)NuMemAlloc(0x40);
    geom->blendgeom = blendgeom;
    vtx_count = 0;
    memset(blendgeom,0,0x40);
    geom->blendgeom->nblends = nblends;
    offsets = (nuvec_s **)NuMemAlloc(__n);
    geom->blendgeom->blend_offsets = offsets;
    memset(geom->blendgeom->blend_offsets,0,__n);
    next_ix = (int *)NuMemAlloc(__n);
    geom->blendgeom->ix = next_ix;
    NuFileRead(handle,geom->blendgeom->ix,__n);
    size = NuFileReadInt(handle);
    pnVar2 = (nuvec_s *)NuMemAlloc(size);
    geom->blendgeom->offsets = pnVar2;
    NuFileRead(handle,geom->blendgeom->offsets,size);
    if (0 < nblends) {
      iVar5 = 0;
      iVar4 = nblends;
      do {
        cVar3 = NuFileReadChar(handle);
        if (cVar3 != '\0') {
          *(nuvec_s **)(iVar5 + (int)geom->blendgeom->blend_offsets) =
               geom->blendgeom->offsets + vtx_count;
          vtx_count = vtx_count + geom->vtxcount;
        }
        iVar5 = iVar5 + 4;
        iVar4 = iVar4 + -1;
      } while (iVar4 != 0);
    }
    if (size == 0) {
      geom->blendgeom = (NuBlendShape *)0x0;
    }
    blendgeom = geom->blendgeom;
    if (blendgeom != (NuBlendShape *)0x0) {
      vtx_count = geom->vtxcount;
      size = 0;
      while (size < vtx_count) {
        if (0 < nblends) {
          iVar4 = 0;
          dVar8 = 0.0;
          vtx_count = nblends;
          do {
            iVar5 = *(int *)(iVar4 + (int)blendgeom->blend_offsets);
            if (iVar5 != 0) {
              iVar6 = size * 0xc;
              fVar1 = *(float *)(iVar6 + iVar5);
              dVar7 = (double)fVar1;
              NuFabs(fVar1);
              dVar9 = 9.999999747378752e-06;
              if (dVar7 < 9.999999747378752e-06) {
                *(float *)(iVar6 + *(int *)(iVar4 + (int)geom->blendgeom->blend_offsets)) =
                     (float)dVar8;
              }
              fVar1 = *(float *)(iVar6 + *(int *)(iVar4 + (int)geom->blendgeom->blend_offsets) + 4 );
              dVar7 = (double)fVar1;
              NuFabs(fVar1);
              if (dVar7 < dVar9) {
                *(float *)(iVar6 + *(int *)(iVar4 + (int)geom->blendgeom->blend_offsets) + 4) =
                     (float)dVar8;
              }
              fVar1 = *(float *)(iVar6 + *(int *)(iVar4 + (int)geom->blendgeom->blend_offsets) + 8 );
              dVar7 = (double)fVar1;
              NuFabs(fVar1);
              if (dVar7 < dVar9) {
                *(float *)(iVar6 + *(int *)(iVar4 + (int)geom->blendgeom->blend_offsets) + 8) =
                     (float)dVar8;
              }
              blendgeom = geom->blendgeom;
            }
            iVar4 = iVar4 + 4;
            vtx_count = vtx_count + -1;
          } while (vtx_count != 0);
        }
        size = size + 1;
        vtx_count = geom->vtxcount;
      }
      vtxBuf = GS_CreateBuffer(vtx_count * 0xc,3);
      geom->blendgeom->hVB = (int)vtxBuf;
    }
  }
  return;
}


void ReadNuIFFUnknown(fileHandle handle, u32 blockMagic)
{

        return;
}

int ReadNuIFFInstSet(filehandle handle,nuinstance_s *inst_data,void *param_3)

{
  undefined4 *puVar1;
  int iVar2;
  void *pvVar3;
  int iVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  int iVar7;
  undefined4 *puVar8;
  
  iVar2 = NuFileReadInt(handle);
  pvVar3 = NuMemAlloc(iVar2 * 0x50);
  (inst_data->matrix).mtx[0] = (float)pvVar3;
  NuFileRead(handle,pvVar3,iVar2 * 0x50);
  iVar4 = NuFileReadInt(handle);
  if (iVar4 != 0) {
    pvVar3 = NuMemAlloc(iVar4 * 0x60);
    NuFileRead(handle,pvVar3,iVar4 * 0x60);
    if (param_3 != (void *)0x0) {
      *(void **)param_3 = pvVar3;
    }
    iVar4 = 0;
    if (0 < iVar2) {
      do {
        iVar7 = iVar4 * 0x50;
        iVar4 = iVar4 + 1;
        puVar5 = (undefined4 *)((int)(inst_data->matrix).mtx[0] + iVar7);
        if (puVar5[0x12] != 0) {
          puVar5[0x12] = pvVar3;
          pvVar3 = (void *)((int)pvVar3 + 0x60);
          iVar7 = 0x30;
          puVar1 = (undefined4 *)puVar5[0x12];
          do {
            puVar8 = puVar5;
            puVar6 = puVar1;
            iVar7 = iVar7 + -0x18;
            *puVar6 = *puVar8;
            puVar6[1] = puVar8[1];
            puVar6[2] = puVar8[2];
            puVar6[3] = puVar8[3];
            puVar6[4] = puVar8[4];
            puVar6[5] = puVar8[5];
            puVar1 = puVar6 + 6;
            puVar5 = puVar8 + 6;
          } while (iVar7 != 0);
          puVar6[6] = puVar8[6];
          puVar6[7] = puVar8[7];
          puVar6[8] = puVar8[8];
          puVar6[9] = puVar8[9];
        }
      } while (iVar4 < iVar2);
    }
  }
  return iVar2;
}


void ReadNuIFFSpecialObjects(filehandle handle,nugscn_s *scene)

{
  int iVar1;
  void *data;
  nuspecial_s *pnVar2;
  int iVar3;
  int iVar4;
  nuinstance_s *pnVar5;
  nuinstance_s *pnVar6;
  nuspecial_s *pnVar7;
  
  iVar1 = NuFileReadInt(handle);
  scene->numspecial = iVar1;
  data = malloc_x(iVar1 * 0x50);
  NuFileRead(handle,data,scene->numspecial * 0x50);
  pnVar2 = (nuspecial_s *)NuMemAlloc(scene->numspecial * 0x50);
  iVar1 = 0;
  scene->specials = pnVar2;
  if (0 < scene->numspecial) {
    do {
      iVar3 = iVar1 + 1;
      iVar4 = 0x30;
      scene->specials[iVar1].instance = scene->instances + *(int *)((int)data + iVar1 * 0x50 + 0x4 0)
      ;
      pnVar6 = scene->specials[iVar1].instance;
      pnVar2 = scene->specials + iVar1;
      do {
        pnVar7 = pnVar2;
        pnVar5 = pnVar6;
        iVar4 = iVar4 + -0x18;
        (pnVar7->mtx).mtx[0] = (pnVar5->matrix).mtx[0];
        (pnVar7->mtx).mtx[1] = (pnVar5->matrix).mtx[1];
        (pnVar7->mtx).mtx[2] = (pnVar5->matrix).mtx[2];
        (pnVar7->mtx).mtx[3] = (pnVar5->matrix).mtx[3];
        (pnVar7->mtx).mtx[1][0] = (pnVar5->matrix).mtx[1][0];
        pnVar6 = (nuinstance_s *)((pnVar5->matrix).mtx[1] + 2);
        (pnVar7->mtx).mtx[1][1] = (pnVar5->matrix).mtx[1][1];
        pnVar2 = (nuspecial_s *)((pnVar7->mtx).mtx[1] + 2);
      } while (iVar4 != 0);
      (pnVar2->mtx).mtx[0] = (pnVar6->matrix).mtx[0];
      (pnVar7->mtx).mtx[1][3] = (pnVar5->matrix).mtx[1][3];
      (pnVar7->mtx).mtx[2][0] = (pnVar5->matrix).mtx[2][0];
      (pnVar7->mtx).mtx[2][1] = (pnVar5->matrix).mtx[2][1];
      scene->specials[iVar1].name = scene->nametable + *(int *)((int)data + iVar1 * 0x50 + 0x44);
      (scene->specials[iVar1].instance)->special_flag = '\x01';
      iVar1 = iVar3;
    } while (iVar3 < scene->numspecial);
  }
  free_x(data);
  return;
}

void NuSceneCalcCulling(nugscn_s *scene)

{
  float *pfVar1;
  int iVar2;
  float fVar3;
  float fVar4;
  int iVar5;
  void *__s;
  nuvec_s *v;
  int iVar6;
  int iVar7;
  int iVar8;
  float local_30;
  float local_2c;
  float local_28;
  
  iVar6 = scene->numgobj;
  iVar7 = scene->numinstance;
  __s = malloc_x(iVar6 << 2);
  memset(__s,0,iVar6 << 2);
  if (0 < iVar7) {
    iVar8 = 0;
    do {
      v = (nuvec_s *)((int)(scene->instances->matrix).mtx + iVar8);
      if (*(char *)((int)&v[6].y + 2) == '\0') {
        if (v[6].x != 0.0) goto LAB_800b9214;
        NuMtxGetScale((numtx_s *)&local_30,v);
        iVar5 = *(int *)(scene->instances->pad + iVar8 + -0xf);
        iVar2 = iVar5 * 4;
        fVar3 = local_30;
        if (local_30 < *(float *)((int)__s + iVar2)) {
          fVar3 = *(float *)((int)__s + iVar2);
        }
        *(float *)((int)__s + iVar2) = fVar3;
        fVar4 = local_2c;
        if (local_2c < fVar3) {
          fVar4 = fVar3;
        }
        *(float *)(iVar2 + (int)__s) = fVar4;
        fVar3 = local_28;
        if (local_28 < fVar4) {
          fVar3 = fVar4;
        }
        *(float *)((int)__s + iVar2) = fVar3;
        (&scene->gobjs->sysnext)[iVar5]->culltype = 0;
      }
      else {
LAB_800b9214:
        (&scene->gobjs->sysnext)[(int)v[5].y]->culltype = 1;
      }
      iVar8 = iVar8 + 0x50;
      iVar7 = iVar7 + -1;
    } while (iVar7 != 0);
  }
  if (0 < iVar6) {
    iVar7 = 0;
    do {
      iVar6 = iVar6 + -1;
      pfVar1 = (float *)(iVar7 + (int)__s);
      iVar8 = *(int *)((int)&scene->gobjs->sysnext + iVar7);
      iVar7 = iVar7 + 4;
      *(float *)(iVar8 + 0x40) = *(float *)(iVar8 + 0x40) * *pfVar1;
    } while (iVar6 != 0);
  }
  free_x(__s);
  return;
}


void ReadNuIFFGScene(filehandle handle,nugscn_s *gscene)
{
  int iVar1;
  char *NTBL_;
  int currentBlkType;
  int tasFileOffset;
  nuscene_s nus;
  
  tasFileOffset = -1;
  memset(&nus,0,0x3c);
  do {
    currentBlkType = NuFileBeginBlkRead(handle,0);
    if (currentBlkType == 0) {
      NuSceneMtlUpdate(&nus);
      gscene->mtls = nus.mtls;
      gscene->nummtl = nus.nummtls;
      gscene->numgobj = nus.numgobjs;
      gscene->gobjs = (nugobj_s *)nus.gobjs;
      gscene->numtid = nus.numtids;
      gscene->tids = (uint)nus.tids;
      NuSceneCalcCulling(gscene);
      if (tasFileOffset != -1) {
        NuFileSeek(handle,tasFileOffset,0);
        ReadNuIFFTexAnimSet(handle,gscene,nus.tids);
      }
      return;
    }
    if (currentBlkType == 0TST) {
      ReadNuIFFTextureSet(handle,&nus);
    }
    else if (currentBlkType < 0TSU) {
      if (currentBlkType == 0SAT) {
        tasFileOffset = NuFilePos(handle);
      }
      else if (currentBlkType < 0SAU) {
        if (currentBlkType == 00SM) {
          ReadNuIFFMaterialSet(handle,&nus);
        }
        else {
LAB_800b9478:
          ReadNuIFFUnknown(handle,currentBlkType);
        }
      }
      else if (currentBlkType == 0TSG) {
        ReadNuIFFGobjSet(handle,&nus);
      }
      else {
        if (currentBlkType != 0TSS) goto LAB_800b9478;
        ReadNuIFFGSplineSet(handle,gscene);
      }
    }
    else if (currentBlkType == CEPS) {
      ReadNuIFFSpecialObjects(handle,gscene);
    }
    else if (currentBlkType < CEPT) {
      if (currentBlkType != BILA) goto LAB_800b9478;
      ReadNuIFFAnimationLibrary(handle,gscene);
    }
    else if (currentBlkType == LBTN) {
      NTBL_ = (char *)ReadNuIFFNameTable(handle);
      gscene->nametable = NTBL_;
    }
    else {
      if (currentBlkType != TSNI) goto LAB_800b9478;
      iVar1 = ReadNuIFFInstSet(handle,(nuinstance_s *)&gscene->instances,&gscene->instanimblock);
      gscene->numinstance = iVar1;
    }
    NuFileEndBlkRead(handle);
  } while( true );
}

nuscene_s * NuSceneLoad(char *filename)

{
  nugeom_s **ppnVar1;
  size_t str_lenght;
  filehandle handle;
  int index;
  nugscn_s *gscn;
  NUERRORFUNC *error;
  int iVar2;
  nugeom_s *list_item;
  nugobj_s *pnVar3;
  nuscene_s *scene;
  char *__dest;
  char acStack_79 [105];
  int blk_cnt;
  
  __dest = acStack_79 + 1;
  strcpy(__dest,filename);
  scene = (nuscene_s *)0x0;
  str_lenght = strlen(acStack_79 + 1);
  __dest[str_lenght - 1] = 'x';
  strcpy(__dest,filename);
  handle = NuFileOpen(__dest,NUFILE_READ);
  if (handle == 0) {
    strlwr(filename);
  }
  else {
    strlwr(filename);
    scene = (nuscene_s *)NuMemAlloc(0x3c);
    memset(scene,0,0x3c);
    blk_cnt = blkcnt;
    index = NuFileBeginBlkRead(handle,0);
    if (index == 0CSG) {
      gscn = (nugscn_s *)NuMemAlloc(0x74);
      scene->gscene = gscn;
      memset(gscn,0,0x74);
      ReadNuIFFGScene(handle,scene->gscene);
      gscn = scene->gscene;
      index = 0;
      if (0 < gscn->numinstance) {
        do {
          iVar2 = index + 1;
          for (list_item = (&gscn->gobjs->sysnext)[gscn->instances[index].objid]->geom;
              list_item != (nugeom_s *)0x0; list_item = list_item->next) {
          }
          index = iVar2;
        } while (iVar2 < gscn->numinstance);
      }
      NuSceneAverageTextureSpaceVerts(scene);
      gscn = scene->gscene;
      index = 0;
      if (0 < gscn->numgobj) {
        do {
          pnVar3 = (&gscn->gobjs->sysnext)[index];
          index = index + 1;
          while (pnVar3 != (nugobj_s *)0x0) {
            ppnVar1 = &pnVar3->geom;
            pnVar3 = pnVar3->next_gobj;
            for (list_item = *ppnVar1; list_item != (nugeom_s *)0x0; list_item = list_item->next)  {
            }
          }
        } while (index < gscn->numgobj);
      }
      NuFileEndBlkRead(handle);
      NuFileClose(handle);
      if (blk_cnt != blkcnt) {
        blkcnt = blk_cnt;
      }
    }
    else {
      NuMemFree(scene);
      error = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nuscene.c",0x718);
      (*error)("Baaaaad file <%s>",filename);
      scene = (nuscene_s *)0x0;
    }
  }
  return scene;
}

s32 ReadNuIFFNameTable(fileHandle handle)
{
    s32 size = NuFileReadInt(handle);
    return NuFileRead(handle, NuMemAlloc(size), size);
}


void NuGSceneDestroy(nugscn_s *sc)

{
  numtl_s **ppnVar1;
  nugobj_s **ppnVar2;
  NuAnimData_s **ppNVar3;
  int iVar4;
  int iVar5;
  
  for (iVar5 = 0; iVar5 < (int)sc->numtid; iVar5 = iVar5 + 1) {
    NuTexDestroy((int)*(short *)(iVar5 * 2 + sc->tids));
  }
  iVar5 = 0;
  if (0 < sc->nummtl) {
    iVar4 = 0;
    do {
      iVar5 = iVar5 + 1;
      ppnVar1 = (numtl_s **)((int)&sc->mtls->next + iVar4);
      iVar4 = iVar4 + 4;
      NuMtlDestroy(*ppnVar1);
    } while (iVar5 < sc->nummtl);
  }
  iVar5 = 0;
  if (0 < sc->numgobj) {
    iVar4 = 0;
    do {
      iVar5 = iVar5 + 1;
      ppnVar2 = (nugobj_s **)((int)&sc->gobjs->sysnext + iVar4);
      iVar4 = iVar4 + 4;
      NuGobjDestroy(*ppnVar2);
    } while (iVar5 < sc->numgobj);
  }
  if ((sc->instanimdata != (NuAnimData_s **)0x0) && (iVar5 = 0, 0 < sc->numinstanims)) {
    iVar4 = 0;
    do {
      iVar5 = iVar5 + 1;
      ppNVar3 = (NuAnimData_s **)(iVar4 + (int)sc->instanimdata);
      iVar4 = iVar4 + 4;
      NuAnimDataDestroy(*ppNVar3);
    } while (iVar5 < sc->numinstanims);
  }
  return;
}

void NuSceneDestroy(nuscene_s *sc)

{
  numtl_s **ppnVar1;
  int iVar2;
  int iVar3;
  nugobj_s **Gobj;
  
  if (sc != (nuscene_s *)0x0) {
    if (sc->names != (char *)0x0) {
      NuMemFree(sc->names);
    }
    if (sc->nodes != (void *)0x0) {
      NuMemFree(sc->nodes);
    }
    if (sc->strings != (char *)0x0) {
      NuMemFree(sc->strings);
    }
    iVar3 = 0;
    if (0 < sc->numtids) {
      do {
        iVar2 = iVar3 + 1;
        NuTexDestroy((int)sc->tids[iVar3]);
        iVar3 = iVar2;
      } while (iVar2 < sc->numtids);
    }
    iVar3 = 0;
    if (0 < sc->nummtls) {
      iVar2 = 0;
      do {
        iVar3 = iVar3 + 1;
        ppnVar1 = (numtl_s **)((int)&sc->mtls->next + iVar2);
        iVar2 = iVar2 + 4;
        NuMtlDestroy(*ppnVar1);
      } while (iVar3 < sc->nummtls);
    }
    iVar3 = 0;
    if (0 < sc->numgobjs) {
      iVar2 = 0;
      do {
        iVar3 = iVar3 + 1;
        Gobj = (nugobj_s **)(iVar2 + (int)sc->gobjs);
        iVar2 = iVar2 + 4;
        NuGobjDestroy(*Gobj);
      } while (iVar3 < sc->numgobjs);
    }
    if (sc->gscene != (nugscn_s *)0x0) {
      NuGSceneDestroy(sc->gscene);
    }
  }
  return;
}