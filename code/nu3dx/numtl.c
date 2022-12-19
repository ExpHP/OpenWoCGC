#include "numtl.h"

struct nusysmtl_s* smlist;
s32 nummtls = 0;
s32 wateritem_cnt;
s32 stenitem_cnt;
s32 otitem_cnt;
s32 faceonmtl_cnt;
s32 faceonitem_cnt;
s32 dynamic_glass_item_cnt;
f32 sinetime.246;
struct nustenitem_s stenitem[512];
struct nufaceonitem_s* faceonmtllist[50];
struct nuotitem_s dynamic_glass_items[64];
struct nuwateritem_s wateritem[512];

enum nustencilmode_e stencil_mode = NUSTENCIL_NOSTENCIL;

void NuMtlInit(void)

{
  if (initialised != 0) {
    NuMtlClose();
  }
  smlist = NULL;
  initialised = 1;
  NuMtlCreateDefault();
  return;
}

void NuMtlClose(void)

{
  struct numtl_s *list;
  struct numtl_s *next;
  
  if (initialised != 0) {
    list = &smlist->mtl;
    if (smlist != NULL) {
      do {
        next = (struct numtl_s *)list[1].ambient.g;
        NuMtlDestroy(list);
        list = next;
      } while (next != NULL);
    }
    initialised = 0;
  }
  return;
}


numtl_s * NuMtlCreate(s32 mode)

{
  struct numtl_s *next;
  struct numtl_s *ret;
  double alpha;
  
  if (0 < mode) {
    alpha = 1.0;
    next = NULL;
    do {
      ret = (struct numtl_s *)malloc_x(0x6c);
      memset(ret,0,0x6c);
      ret->alpha = (f32)alpha;
      ret->attrib = (numtlattrib_s)((uint)ret->attrib & 0xcfffffff | 0x20000000);
      NuMtlInsert(ret);
      mode = mode + -1;
      ret->next = next;
      nummtls = nummtls + 1;
      next = ret;
    } while (mode != 0);
  }
  return ret;
}


void NuMtlDestroy(struct numtl_s *mat)

{
  f32 fVar1;
  
  if (mat->tid != 0) {
    NuTexUnRef(mat->tid);
  }
  if (mat[1].attrib != (numtlattrib_s)0x0) {
    NuGeomDestroy(*(NuGeom **)((int)mat[1].attrib + 0x14));
  }
  fVar1 = mat[1].ambient.r;
  if (fVar1 != 0.0) {
    NuGeomDestroy(*(NuGeom **)((int)fVar1 + 0x14));
  }
  NuMtlRemove(mat);
  free_x(mat);
  nummtls = nummtls + -1;
  return;
}

int NuMtlNum(void)

{
  return nummtls;
}

struct nusysmtl_s * NuMtlGet(int id)

{
  struct nusysmtl_s *ret;
  
  ret = NULL;
  if ((id < nummtls) && (ret = smlist, 0 < id)) {
    do {
      ret = ret->next;
      id = id + -1;
    } while (id != 0);
  }
  return ret;
}


struct numtl_s * NuMtlRead(filehandle handle)

{
  struct numtl_s *data;
  
  data = NuMtlCreate(1);
  NuFileRead(handle,data,0x54);
  return data;
}


void NuMtlInsert(struct nusysmtl_s *mat)

{
  short sVar1;
  int iVar2;
  struct nusysmtl_s *next;
  struct nusysmtl_s *smlist_;
  _bool check;
  
  smlist_ = smlist;
  sVar1 = (mat->mtl).alpha_sort;
  iVar2 = (mat->mtl).tid;
  check = smlist == NULL;
  mat->next = NULL;
  mat->last = NULL;
  next = NULL;
  while ((!check &&
         (sVar1 * 0x10000 + iVar2 < (smlist_->mtl).alpha_sort * 0x10000 + (smlist_->mtl).tid))) {
    check = smlist_->next == NULL;
    next = smlist_;
    smlist_ = smlist_->next;
  }
  if (next == NULL) {
    mat->next = smlist;
    smlist = mat;
  }
  else {
    mat->last = next;
    mat->next = next->next;
    next->next = mat;
  }
  if (mat->next == NULL) {
    return;
  }
  mat->next->last = mat;
  return;
}


void NuMtlRemove(struct numtl_s *mat)

{
  f32 fVar1;
  
  fVar1 = mat[1].ambient.b;
  if (fVar1 == 0.0) {
    smlist = (struct nusysmtl_s *)mat[1].ambient.g;
  }
  else {
    *(float *)((int)fVar1 + 0x60) = mat[1].ambient.g;
  }
  fVar1 = mat[1].ambient.g;
  if (fVar1 == 0.0) {
    return;
  }
  *(f32 *)((s32)fVar1 + 100) = mat[1].ambient.b;
  return;
}

void NuMtlUpdate(void)

{
  return;
}


void NuMtlSetStencilRender(enum nustencilmode_e mode)

{
  stencil_mode = mode;
  return;
}

void NuMtlAddRndrItem(numtl_s *mtl,nurndritem_s *item)

{
  short sVar1;
  int iVar2;
  nustencilmode_e nVar3;
  int iVar4;
  nustenitem_s *pnVar5;
  nuwateritem_s *unaff_r30;
  double dVar6;
  bool check;
  
  nVar3 = stencil_mode;
  iVar2 = wateritem_cnt;
  iVar4 = stenitem_cnt;
  if (stencil_mode == NUSTENCIL_NOSTENCIL) {
    sVar1 = *(short *)((int)&item[2].next + 2);
    if ((sVar1 == 3) || (sVar1 == 0x21)) {
      NuMtlAddGlassItem(mtl,item);
    }
    else {
      if ((sVar1 != 1) && (sVar1 != 0x1b)) {
        if (((uint)mtl->attrib >> 0x1e == 0) &&
           (*(char *)(*(int *)(item[1].type + 4) + 0x3e) != '\x04')) {
          item->next = (nurndritem_s *)mtl[1].next;
          mtl[1].next = (numtl_s *)item;
          return;
        }
        iVar4 = otitem_cnt + -1;
        otitem_cnt = iVar4;
        otitem[iVar4].mtl = (nusysmtl_s *)mtl;
        otitem[iVar4].hdr = item;
        dVar6 = (double)NuRndrItemDist(item);
        otitem[iVar4].dist = (float)dVar6;
        NuMtlOTInsert(otitem + iVar4);
        return;
      }
      if (wateritem_cnt < 0x200) {
        unaff_r30 = wateritem + wateritem_cnt;
        wateritem[wateritem_cnt].hdr = item;
        wateritem[iVar2].mtl = (nusysmtl_s *)mtl;
      }
      else {
        e = NuErrorProlog("C:/source/crashwoc/code/nu3dx/numtl.c",0x2a7);
        //("NuMtlAddRndrItem: Exceeded maximum number of water items in render queue!");
      }
      if (wateritem_cnt != 0) {
        wateritem[wateritem_cnt + -1].next = unaff_r30;
      }
      wateritem_cnt = wateritem_cnt + 1;
    }
  }
  else {
    check = stenitem_cnt != 0;
    pnVar5 = stenitem + stenitem_cnt;
    stenitem[stenitem_cnt].hdr = item;
    stenitem[iVar4].mtl = (nusysmtl_s *)mtl;
    stenitem[iVar4].type = nVar3;
    if (check) {
      stenitem[iVar4 + -1].next = pnVar5;
    }
    stenitem_cnt = stenitem_cnt + 1;
  }
  return;
}


void NuMtlAddFaceonItem(numtl_s *mtl,nurndritem_s *item)

{
  nufaceonitem_s *pnVar1;
  NUERRORFUNC *errorcode;
  nufaceonitem_s **ppnVar2;
  int iVar3;
  int i;
  nufaceonitem_s *pnVar4;
  bool check;
  
  pnVar1 = faceonmtllist[0];
  ppnVar2 = faceonmtllist;
  iVar3 = faceonitem_cnt + -1;
  i = 0;
  check = faceonmtllist[0] != (nufaceonitem_s *)0x0;
  pnVar4 = faceonitem + iVar3;
  faceonitem_cnt = iVar3;
  faceonitem[iVar3].hdr = item;
  faceonitem[iVar3].mtl = (nusysmtl_s *)mtl;
  if (check) {
    if (pnVar1->mtl != (nusysmtl_s *)mtl) {
      do {
        if (0x31 < i) {
          errorcode = NuErrorProlog("C:/source/crashwoc/code/nu3dx/numtl.c",0x2f5);
          (*errorcode)("Out of room for face-ons in the list");
        }
        ppnVar2 = ppnVar2 + 1;
        i = i + 1;
        if (*ppnVar2 == (nufaceonitem_s *)0x0) goto LAB_800b3084;
      } while ((*ppnVar2)->mtl != faceonitem[iVar3].mtl);
    }
    pnVar1 = faceonmtllist[i];
    if (pnVar1 != (nufaceonitem_s *)0x0) {
      faceonmtllist[i] = pnVar4;
      pnVar4->next = pnVar1;
      return;
    }
  }
LAB_800b3084:
  faceonmtllist[i] = pnVar4;
  pnVar4->next = (nufaceonitem_s *)0x0;
  faceonmtl_cnt = faceonmtl_cnt + 1;
  return;
}


void NuMtlOTInsert(struct nuotitem_s *oti)

{
  int i;
  
  i = (int)(oti->mtl->mtl).alpha_sort;
  if (0x100 < i) {
    e = NuErrorProlog("C:/source/crashwoc/code/nu3dx/numtl.c",0x3e0);
    //(*e)("assert");
  }
  if (ot[i] == (nuotitem_s *)0x0) {
    ot[i] = oti;
    oti->next = (nuotitem_s *)0x0;
  }
  else {
    oti->next = ot[i];
    ot[i] = oti;
  }
  return;
}


/*
void NuMtlGet2dBuffer(numtl_s *mtl,nuprimtype_e pt,NuGeom **geomptr,NuPrim **primptr,variptr_u *pt r,
                     variptr_u *end)

{
  nuprimtype_e type;
  UNK2 *__s;
  NuGeom *uVar2;
  NuGeom *geom;
  NuPrim *prim;
  
  NuMemSetExternal(ptr,end);
  if (mtl[1].attrib == (numtlattrib_s)0x0) {
    __s = (UNK2 *)NuMemAlloc(0x24);
    mtl[1].attrib = (numtlattrib_s)__s;
    memset(__s,0,0x24);
    *(undefined4 *)((int)mtl[1].attrib + 4) = 1;
    *(undefined4 *)((int)mtl[1].attrib + 8) = 0;
    uVar2 = NuGeomCreate();
    *(NuGeom **)((int)mtl[1].attrib + 0x14) = uVar2;
    NuGeomCreateVB(*(NuGeom **)((int)mtl[1].attrib + 0x14),0x400,NUVT_TLTC1,1);
    *(undefined4 *)(*(int *)((int)mtl[1].attrib + 0x14) + 0x10) = 0;
  }
  geom = *(NuGeom **)((int)mtl[1].attrib + 0x14);
  prim = geom->prim;
  if (prim != (NuPrim *)0x0) {
    type = prim->type;
    while (type != pt) {
      prim = prim->next;
      if (prim == (NuPrim *)0x0) goto LAB_800b3234;
      type = prim->type;
    }
    if (prim != (NuPrim *)0x0) goto LAB_800b325c;
  }
LAB_800b3234:
  prim = NuPrimCreate(0x400,pt);
  NuGeomAddPrim(geom,prim);
  prim->vertexCount = 0;
LAB_800b325c:
  if (geom != (NuGeom *)0x0) {
    *geomptr = geom;
  }
  if (prim != (NuPrim *)0x0) {
    *primptr = prim;
  }
  NuMemSetExternal((variptr_u *)0x0,(variptr_u *)0x0);
  return;
}*/

/*
void NuMtlGet3dBuffer(numtl_s *mtl,nuprimtype_e pt,NuGeom **geomptr,NuPrim **primptr,variptr_u *pt r,
                     variptr_u *end)

{
  nuprimtype_e type_;
  UNK2 *UNK;
  NuGeom *geom_2;
  NuGeom *geom;
  NuPrim *prim;
  
  NuMemSetExternal(ptr,end);
  if (mtl[1].ambient.r == 0.0) {
    UNK = (UNK2 *)NuMemAlloc(0x24);
    mtl[1].ambient.r = (float)UNK;
    memset(UNK,0,0x24);
    *(undefined4 *)((int)mtl[1].ambient.r + 4) = 0;
    *(undefined4 *)((int)mtl[1].ambient.r + 8) = 0;
    geom_2 = NuGeomCreate();
    *(NuGeom **)((int)mtl[1].ambient.r + 0x14) = geom_2;
    NuGeomCreateVB(*(NuGeom **)((int)mtl[1].ambient.r + 0x14),0xc00,NUVT_TC1,1);
    *(undefined4 *)(*(int *)((int)mtl[1].ambient.r + 0x14) + 0x10) = 0;
  }
  geom = *(NuGeom **)((int)mtl[1].ambient.r + 0x14);
  prim = geom->prim;
  if (prim != (NuPrim *)0x0) {
    type_ = prim->type;
    while (type_ != pt) {
      prim = prim->next;
      if (prim == (NuPrim *)0x0) goto LAB_800b336c;
      type_ = prim->type;
    }
    if (prim != (NuPrim *)0x0) goto LAB_800b3394;
  }
LAB_800b336c:
  prim = NuPrimCreate(0xc00,pt);
  NuGeomAddPrim(geom,prim);
  prim->vertexCount = 0;
LAB_800b3394:
  if (geom != (NuGeom *)0x0) {
    *geomptr = geom;
  }
  if (prim != (NuPrim *)0x0) {
    *primptr = prim;
  }
  NuMemSetExternal((variptr_u *)0x0,(variptr_u *)0x0);
  return;
}*/

void NuMtlRender(void)

{
  DBTimerStart(0x13);
  NuMtlRender3d();
  DBTimerEnd(0x13);
  DBTimerStart(0x12);
  DBTimerEnd(0x12);
  DBTimerStart(0x11);
  DBTimerEnd(0x11);
  DBTimerStart(0x10);
  NuMtlRenderDynamic2d3d();
  DBTimerEnd(0x10);
  DBTimerStart(0xf);
  NuMtlRenderOT(0,10);
  DBTimerEnd(0xf);
  DBTimerStart(0xe);
  NuMtlRenderFaceOn();
  DBTimerEnd(0xe);
  DBTimerStart(0xc);
  NuMtlRenderSten();
  DBTimerEnd(0xc);
  DBTimerStart(0xb);
  NuMtlRenderGlass();
  DBTimerEnd(0xb);
  DBTimerStart(10);
  NuMtlRenderWater();
  DBTimerEnd(10);
  DBTimerStart(9);
  NuMtlRenderOT(0xb,0x100);
  DBTimerEnd(9);
  DBTimerStart(8);
  DrawStencilShadowQuad();
  DBTimerEnd(8);
  DBTimerStart(7);
  NuMtlRenderUpd();
  DBTimerEnd(7);
  return;
}

void NuMtlRender3d(void)

{
  nusysmtl_s *mat_;
  nurndritem_s *item;
  
  GS_SetAlphaCompare(7,0);
  for (mat_ = smlist; mat_ != (nusysmtl_s *)0x0; mat_ = mat_->next) {
    if (((mat_->mtl).L == '\0') && (mat_->rndrlist != (nurndritem_s *)0x0)) {
      NuTexSetTexture(0,(mat_->mtl).tid);
      NuMtlSetRenderStates(mat_);
      NuTexSetTextureStates(&mat_->mtl);
      for (item = mat_->rndrlist; item != (nurndritem_s *)0x0; item = item->next) {
        NuRndrItem(item);
      }
      mat_->rndrlist = (nurndritem_s *)0x0;
    }
  }
  GS_SetAlphaCompare(7,0);
  return;
}


void NuMtlRenderDynamic2d3d(void)

{
  NuPrim *pNVar1;
  nusysmtl_s *smlist_;
  nugeomitem_s *pnVar2;
  
  GS_SetAlphaCompare(7,0);
  smlist_ = smlist;
  GS_SetZCompare(1,0,3);
  for (; smlist_ != (nusysmtl_s *)0x0; smlist_ = smlist_->next) {
    if ((smlist_->geom3d != (nugeomitem_s *)0x0) && (smlist_->geom3d->geom->vtxcount != 0)) {
      NuTexSetTexture(0,(smlist_->mtl).tid);
      NuMtlSetRenderStates(smlist_);
      NuTexSetTextureStates(&smlist_->mtl);
      pnVar2 = smlist_->geom3d;
      NuRndrItem(&pnVar2->hdr);
      pnVar2->geom->vtxcount = 0;
      for (pNVar1 = pnVar2->geom->prim; pNVar1 != (NuPrim *)0x0; pNVar1 = pNVar1->next) {
        pNVar1->vertexCount = 0;
      }
    }
    if ((smlist_->geom2d != (nugeomitem_s *)0x0) && (smlist_->geom2d->geom->vtxcount != 0)) {
      NuTexSetTexture(0,(smlist_->mtl).tid);
      NuMtlSetRenderStates(smlist_);
      NuTexSetTextureStates(&smlist_->mtl);
      pnVar2 = smlist_->geom2d;
      GS_EnableLighting(0);
      GS_SetZCompare(1,0,3);
      GS_SetAlphaCompare(7,0);
      NuRndrItem(&pnVar2->hdr);
      pnVar2->geom->vtxcount = 0;
      for (pNVar1 = pnVar2->geom->prim; pNVar1 != (NuPrim *)0x0; pNVar1 = pNVar1->next) {
        pNVar1->vertexCount = 0;
      }
    }
  }
  return;
}


void NuMtlRenderOT(int begin,int end)

{
  nutex_s *iVar2;
  int iVar1;
  numtl_s *piVar3;
  
  GS_SetAlphaCompare(7,0);
  if (begin <= end) {
    do {
      iVar1 = begin + 1;
      for (piVar3 = (numtl_s *)ot[begin]; piVar3 != (numtl_s *)0x0; piVar3 = piVar3->next) {
        iVar2 = (nutex_s *)(piVar3->ambient).g;
        if (*(char *)((int)&iVar2[2].height + 2) == '\0') {
          NuTexSetTexture(0,iVar2[2].type);
          NuMtlSetRenderStates((piVar3->ambient).g);
          NuTexSetTextureStates((numtl_s *)(piVar3->ambient).g);
          NuRndrItem((nurndritem_s *)piVar3->attrib);
        }
        else {
          NuTexSetTexture(0,iVar2[2].type);
          NuMtlSetRenderStates((piVar3->ambient).g);
          NuTexSetTextureStates((numtl_s *)(piVar3->ambient).g);
          GS_SetZCompare(1,1,3);
          GS_SetAlphaCompare(3,0xf7);
          NuRndrItem((nurndritem_s *)piVar3->attrib);
        }
      }
      ot[begin] = (nuotitem_s *)0x0;
      begin = iVar1;
    } while (iVar1 <= end);
  }
  return;
}

/*
void NuMtlRenderFaceOn(void)

{
  nurndritem_s *pnVar1;
  float *pfVar2;
  nurndritem_s **ppnVar3;
  float fVar4;
  nusysmtl_s *pnVar5;
  nurndritem_s *pnVar6;
  int iVar7;
  nurndritem_s **ppnVar8;
  float *pfVar9;
  int iVar10;
  nurndritem_s *pnVar11;
  nufaceonitem_s *pnVar12;
  int *piVar13;
  nuvec_s *a;
  int iVar14;
  double dVar15;
  double dVar16;
  double dVar17;
  double dVar18;
  double dVar19;
  double dVar20;
  double dVar21;
  numtx_s local_1a8;
  nurndritem_s *local_168 [16];
  numtx_s mtx_dest;
  nuvec_s nStack_e8;
  nuvec_s nStack_d8;
  nuvec_s vec_a;
  nuvec_s local_b8 [6];
  
  ResetShaders();
  iVar14 = 0;
  SetVertexShader(0x142);
  GS_LoadWorldMatrixIdentity();
  if (0 < faceonmtl_cnt) {
    do {
      pnVar12 = faceonmtllist[iVar14];
      pnVar5 = pnVar12->mtl;
      if ((pnVar5->mtl).L == '\0') {
        NuTexSetTexture(0,(pnVar5->mtl).tid);
        NuMtlSetRenderStates(pnVar12->mtl);
        NuTexSetTextureStates(&pnVar12->mtl->mtl);
        GS_SetAlphaCompare(4,0);
        GS_SetZCompare(1,1,3);
      }
      else {
        NuTexSetTexture(0,(pnVar5->mtl).tid);
        NuMtlSetRenderStates(pnVar12->mtl);
        NuTexSetTextureStates(&pnVar12->mtl->mtl);
        GS_SetZCompare(1,0,3);
        GS_SetAlphaCompare(3,0xf7);
      }
      iVar10 = iVar14 + 1;
      iVar7 = 0x30;
      pnVar1 = pnVar12->hdr[1].next;
      ppnVar3 = local_168;
      do {
        ppnVar8 = ppnVar3;
        pnVar11 = pnVar1;
        iVar7 = iVar7 + -0x18;
        *ppnVar8 = pnVar11->next;
        ppnVar8[1] = (nurndritem_s *)pnVar11->type;
        ppnVar8[2] = (nurndritem_s *)pnVar11->flags;
        ppnVar8[3] = *(nurndritem_s **)&pnVar11->lights_index;
        ppnVar8[4] = pnVar11[1].next;
        ppnVar8[5] = (nurndritem_s *)pnVar11[1].type;
        pnVar1 = (nurndritem_s *)&pnVar11[1].flags;
        ppnVar3 = ppnVar8 + 6;
      } while (iVar7 != 0);
      ppnVar8[6] = (nurndritem_s *)pnVar11[1].flags;
      ppnVar8[7] = *(nurndritem_s **)&pnVar11[1].lights_index;
      ppnVar8[8] = pnVar11[2].next;
      ppnVar8[9] = (nurndritem_s *)pnVar11[2].type;
      if (pnVar12 != (nufaceonitem_s *)0x0) {
        dVar15 = 0.0;
        do {
          pnVar11 = pnVar12->hdr;
          iVar7 = 0x30;
          pnVar1 = pnVar11[1].next;
          pfVar2 = (float *)&local_1a8;
          do {
            pfVar9 = pfVar2;
            pnVar6 = pnVar1;
            iVar7 = iVar7 + -0x18;
            *pfVar9 = (float)pnVar6->next;
            pfVar9[1] = (float)pnVar6->type;
            pfVar9[2] = (float)pnVar6->flags;
            pfVar9[3] = (float)*(nurndritem_s **)&pnVar6->lights_index;
            (*(float (*) [4])(pfVar9 + 4))[0] = (float)pnVar6[1].next;
            pfVar9[5] = (float)pnVar6[1].type;
            pnVar1 = (nurndritem_s *)&pnVar6[1].flags;
            pfVar2 = pfVar9 + 6;
          } while (iVar7 != 0);
          pfVar9[6] = (float)pnVar6[1].flags;
          pfVar9[7] = (float)*(nurndritem_s **)&pnVar6[1].lights_index;
          pfVar9[8] = (float)pnVar6[2].next;
          pfVar9[9] = (float)pnVar6[2].type;
          local_1a8.mtx[3][0] = (float)dVar15;
          local_1a8.mtx[3][1] = (float)dVar15;
          local_1a8.mtx[3][2] = (float)dVar15;
          for (piVar13 = (int *)pnVar12->hdr[1].type; piVar13 != (int *)0x0;
              piVar13 = (int *)*piVar13) {
            iVar7 = piVar13[5];
            a = (nuvec_s *)piVar13[4];
            GS_DrawQuadListBeginBlock(iVar7 << 2,0);
            if (0 < iVar7) {
              dVar16 = 0.5;
              dVar17 = 0.0;
              do {
                dVar20 = (double)(float)((double)a[1].x * dVar16);
                dVar21 = (double)(float)((double)a[1].y * dVar16);
                NuVecMtxRotate(&nStack_d8,a,&local_1a8);
                dVar18 = -dVar20;
                dVar19 = -dVar21;
                NuVecAdd(&vec_a,&nStack_d8,(nuvec_s *)(pnVar11[1].next + 3));
                NuMtxCalcCheapFaceOn(&mtx_dest,&vec_a);
                local_b8[0].x = (float)dVar18;
                local_b8[0].y = (float)dVar21;
                local_b8[0].z = (float)dVar17;
                NuVecMtxTransform(&nStack_e8,local_b8,&mtx_dest);
                fVar4 = a[1].z;
                a = a + 2;
                GS_SetQuadListRGBA((uint)fVar4 >> 0x10 & 0xff,(uint)fVar4 >> 8 & 0xff,
                                   (uint)fVar4 & 0xff,(uint)fVar4 >> 0x18);
                GS_DrawQuadListSetVert(dVar17,dVar17,&nStack_e8);
                local_b8[0].x = (float)dVar20;
                local_b8[0].y = (float)dVar21;
                local_b8[0].z = (float)dVar17;
                NuVecMtxTransform(&nStack_e8,local_b8,&mtx_dest);
                GS_DrawQuadListSetVert(0x3ff0000000000000,dVar17,&nStack_e8);
                local_b8[0].x = (float)dVar20;
                local_b8[0].y = (float)dVar19;
                local_b8[0].z = (float)dVar17;
                NuVecMtxTransform(&nStack_e8,local_b8,&mtx_dest);
                GS_DrawQuadListSetVert(0x3ff0000000000000,0x3ff0000000000000,&nStack_e8);
                local_b8[0].x = (float)dVar18;
                local_b8[0].y = (float)dVar19;
                local_b8[0].z = (float)dVar17;
                NuVecMtxTransform(&nStack_e8,local_b8,&mtx_dest);
                GS_DrawQuadListSetVert(dVar17,0x3ff0000000000000,&nStack_e8);
                iVar7 = iVar7 + -1;
              } while (iVar7 != 0);
            }
            GS_DrawQuadListEndBlock();
          }
          pnVar12 = pnVar12->next;
        } while (pnVar12 != (nufaceonitem_s *)0x0);
      }
      iVar7 = faceonmtl_cnt;
      faceonmtllist[iVar14] = (nufaceonitem_s *)0x0;
      iVar14 = iVar10;
    } while (iVar10 < iVar7);
  }
  return;
}

*/


void NuMtlRenderGlass(void)

{
  int i;
  struct nuotitem_s *glass_itm;
  
  glass_itm = dynamic_glass_items;
  i = 0;
  if (0 < dynamic_glass_item_cnt) {
    NudxFw_MakeBackBufferCopy(force_glass_screencopy_enable);
    if (0 < dynamic_glass_item_cnt) {
      do {
        i = i + 1;
        NuTexSetTexture(0,(glass_itm->mtl->mtl).tid);
        NuMtlSetRenderStates(glass_itm->mtl);
        NuTexSetTextureStates(&glass_itm->mtl->mtl);
        NuRndrItem(glass_itm->hdr);
        glass_itm = glass_itm->next;
      } while (i < dynamic_glass_item_cnt);
    }
    NuMtlClearGlassList();
  }
  return;
}

void NuMtlRenderWater(void)

{
  int i;
  nustenitem_s *nustenitem;
  
  nustenitem = (nustenitem_s *)wateritem;
  if (0 < wateritem_cnt) {
    i = 0;
    NudxFw_MakeBackBufferCopy(1);
    if (0 < wateritem_cnt) {
      do {
        i = i + 1;
        NuTexSetTexture(0,(nustenitem->mtl->mtl).tid);
        NuMtlSetRenderStates(nustenitem->mtl);
        NuTexSetTextureStates(&nustenitem->mtl->mtl);
        NuRndrItem(nustenitem->hdr);
        nustenitem = nustenitem->next;
      } while (i < wateritem_cnt);
    }
  }
  wateritem_cnt = 0;
  return;
}

/*
void NuMtlRenderSten(void)

{
  nustenitem_s *pnVar1;
  int iVar2;
  
  pnVar1 = stenitem;
  GS_SetAlphaCompare(4,0);
  iVar2 = 0;
  NudxFw_SetRenderState(0x7d,1);
  NudxFw_SetRenderState(0x46,0x207);
  NudxFw_SetRenderState(0x44,0x1e00);
  NudxFw_SetRenderState(0x7e,0x1e00);
  NudxFw_SetRenderState(0x47,1);
  NudxFw_SetRenderState(0x48,0xffffffff);
  NudxFw_SetRenderState(0x49,0xffffffff);
  IsStencil = 1;
  if (0 < stenitem_cnt) {
    do {
      if (pnVar1->type == 1) {
        GS_EnableLighting(0);
        GS_SetMaterialSourceEmissive(1);
        NuTexSetTexture(0,0);
        GS_SetBlendSrc(1,1,0);
      }
      else {
        NuTexSetTexture(0,(pnVar1->mtl->mtl).tid);
        NuMtlSetRenderStates(pnVar1->mtl);
        NuTexSetTextureStates(&pnVar1->mtl->mtl);
      }
      if (pnVar1->type == 1) {
        NudxFw_SetRenderState(0x45,0x1e01);
        NuRndrItem(pnVar1->hdr);
      }
      iVar2 = iVar2 + 1;
      pnVar1 = pnVar1->next;
    } while (iVar2 < stenitem_cnt);
  }
  stenitem_cnt = 0;
  GS_EnableLighting(1);
  NudxFw_SetRenderState(0x7d,0);
  IsStencil = 0;
  return;
}

void NuMtlAddGlassItem(numtl_s *mtl,nurndritem_s *item)

{
  int iVar1;
  nuotitem_s *pnVar2;
  bool check;
  
  if (0x40 < dynamic_glass_item_cnt) {
    e = NuErrorProlog("C:/source/crashwoc/code/nu3dx/numtl.c",0x980);
    ("Too many dynamic glass items");
  }
  iVar1 = dynamic_glass_item_cnt;
  if (dynamic_glass_item_cnt < 0x40) {
    check = 0 < dynamic_glass_item_cnt;
    pnVar2 = dynamic_glass_items + dynamic_glass_item_cnt;
    dynamic_glass_items[dynamic_glass_item_cnt].hdr = item;
    dynamic_glass_items[iVar1].mtl = (nusysmtl_s *)mtl;
    dynamic_glass_items[iVar1].dist = 0.0;
    if (check) {
      dynamic_glass_items[iVar1 + -1].next = pnVar2;
    }
    dynamic_glass_item_cnt = dynamic_glass_item_cnt + 1;
  }
  return;
}*/

void NuMtlClearGlassList(void)

{
  memset(dynamic_glass_items,0,0x400);
  dynamic_glass_item_cnt = 0;
  return;
}

void NuMtlRenderUpd(void)

{
  faceonitem_cnt = 0x200;
  faceonmtl_cnt = 0;
  otitem_cnt = 0x7e8;
  NuTexSetTexture(0,0);
  return;
}

/*

void NuMtlSetRenderStates(numtl_s *mtl)

{
  bool bVar1;
  uint uVar2;
  undefined4 uVar3;
  float local_50;
  float local_4c;
  float local_48;
  float local_44;
  float local_40;
  float local_3c;
  float local_38;
  float local_34;
  float local_20;
  float local_1c;
  float local_18;
  float local_14;
  float local_10;
  
  local_44 = mtl->alpha;
  local_50 = (mtl->diffuse).r;
  local_4c = (mtl->diffuse).g;
  local_48 = (mtl->diffuse).b;
  local_40 = (mtl->ambient).r;
  local_3c = (mtl->ambient).g;
  local_38 = (mtl->ambient).b;
  local_20 = local_40;
  local_1c = local_3c;
  local_18 = local_38;
  if (((uint)mtl->attrib >> 0x10 & 3) == 2) {
    local_20 = local_50;
    local_1c = local_4c;
    local_18 = local_48;
  }
  local_10 = mtl->power;
  local_34 = local_44;
  local_14 = local_44;
  GS_SetMaterial(&local_50);
  uVar2 = (uint)mtl->attrib >> 0x1e;
  if (uVar2 == 0) {
    GS_SetBlendSrc(1,1,0);
    uVar3 = 7;
  }
  else {
    if (uVar2 == 1) {
      uVar3 = 5;
    }
    else {
      if (uVar2 != 2) {
        if (uVar2 == 3) {
          GS_SetBlendSrc(1,0,3);
          GS_SetAlphaCompare(4,0);
        }
        goto LAB_800b40dc;
      }
      uVar3 = 1;
    }
    GS_SetBlendSrc(1,4,uVar3);
    uVar3 = 4;
  }
  GS_SetAlphaCompare(uVar3,0);
LAB_800b40dc:
  GS_SetAlphaCompare(4,0);
  NudxFw_SetRenderState(0x80,0);
  if (((uint)mtl->attrib & 0xc0000) == 0) {
    GS_SetZCompare(1,1,3);
  }
  if (((uint)mtl->attrib >> 0x12 & 3) == 1) {
    GS_SetZCompare(1,0,3);
  }
  if (((uint)mtl->attrib >> 0x12 & 3) == 2) {
    GS_SetZCompare(1,1,7);
  }
  if (((uint)mtl->attrib >> 0x12 & 3) == 3) {
    GS_SetZCompare(0,0,7);
  }
  IsObjLit = 0;
  bVar1 = ((uint)mtl->attrib & 0x30000) == 0;
  if (bVar1) {
    GS_EnableLighting(1);
    GS_EnableSpecular(0);
  }
  IsObjLit = (uint)bVar1;
  if (((uint)mtl->attrib >> 0x10 & 3) == 1) {
    GS_EnableLighting(1);
    GS_EnableSpecular(1);
    IsObjLit = 2;
  }
  if (((uint)mtl->attrib >> 0x10 & 3) == 2) {
    GS_EnableLighting(0);
  }
  if (((uint)mtl->attrib & 0x8000) == 0) {
    GS_EnableColorVertex(0);
    GS_SetMaterialSourceAmbient(0);
    GS_SetMaterialSourceEmissive(0);
  }
  if (((uint)mtl->attrib & 0x8000) != 0) {
    GS_EnableColorVertex(1);
    GS_SetMaterialSourceAmbient(1);
    if (((uint)mtl->attrib >> 0x10 & 3) == 2) {
      GS_SetMaterialSourceEmissive(1);
    }
    else {
      GS_SetMaterialSourceEmissive(0);
    }
  }
  return;
}

*/

void NuMtlAnimate(float timestep)

{
  nusysmtl_s *mtl;
  uint uVar1;
  
  sinetime.246 = sinetime.246 + timestep;
  mtl = smlist;
  if (smlist == (nusysmtl_s *)0x0) {
    return;
  }
  do {
    uVar1 = *(uint *)&(mtl->mtl).K;
    if ((uVar1 & 0xff) != 0) {
      if ((uVar1 & 0xf0) == 0x20) {
        (mtl->mtl).du = (mtl->mtl).su * timestep;
      }
      if ((*(uint *)&(mtl->mtl).K & 0xf) == 2) {
        (mtl->mtl).dv = (mtl->mtl).sv * timestep;
      }
    }
    mtl = mtl->next;
  } while (mtl != (nusysmtl_s *)0x0);
  return;
}


/*

void NuMtlUVAnimation(nugobj_s *gobj)

{
  float fVar1;
  float fVar2;
  int count_2__;
  numtl_s *mtls;
  int buffer;
  NuGeom *geoms;
  
  geoms = gobj->geom;
  if (geoms == (NuGeom *)0x0) {
    return;
  }
  do {
    mtls = geoms->mtls;
    if ((*(uint *)&mtls->K & 0xf0) == 0x20) {
      fVar1 = mtls->du;
LAB_800b4334:
      fVar2 = 0.0;
      if ((*(uint *)&mtls->K & 0xf) == 2) {
        fVar2 = mtls->dv;
      }
      if ((fVar2 == 0.0) || (fVar1 == 0.0)) {
        if ((fVar2 == 0.0) && (fVar1 != 0.0)) {
          if (geoms->vertex_type == NUVT_TC1) {
            count_2__ = geoms->vtxcount;
            buffer = geoms->hVB;
            if (0 < count_2__) {
              do {
                *(float *)(buffer + 0x1c) = *(float *)(buffer + 0x1c) + fVar1 + fVar1;
                buffer = buffer + 0x24;
                count_2__ = count_2__ + -1;
              } while (count_2__ != 0);
            }
          }
        }
        else if (((fVar2 != 0.0) && (fVar1 == 0.0)) && (geoms->vertex_type == NUVT_TC1)) {
          count_2__ = geoms->vtxcount;
          buffer = geoms->hVB;
          if (0 < count_2__) {
            do {
              *(float *)(buffer + 0x20) = *(float *)(buffer + 0x20) + fVar2 + fVar2;
              buffer = buffer + 0x24;
              count_2__ = count_2__ + -1;
            } while (count_2__ != 0);
          }
        }
      }
      else if (geoms->vertex_type == NUVT_TC1) {
        count_2__ = geoms->vtxcount;
        buffer = geoms->hVB;
        if (0 < count_2__) {
          do {
            *(float *)(buffer + 0x1c) = *(float *)(buffer + 0x1c) + fVar1 + fVar1;
            *(float *)(buffer + 0x20) = *(float *)(buffer + 0x20) + fVar2 + fVar2;
            buffer = buffer + 0x24;
            count_2__ = count_2__ + -1;
          } while (count_2__ != 0);
        }
      }
    }
    else {
      fVar1 = 0.0;
      if ((*(uint *)&mtls->K & 0xf) == 2) goto LAB_800b4334;
    }
    geoms = geoms->next;
    if (geoms == (NuGeom *)0x0) {
      return;
    }
  } while( true );
}
*/

void NuMtlClearOt(void)

{
  memset(ot,0,0x404);
  return;
}