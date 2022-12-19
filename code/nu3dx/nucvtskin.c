#include "nucvtskin.h"


struct primdef_s* primdefs_sorted;
struct primdef_s* primdefs;
s32 stritot;
s32 totaldupes;
s32 totalpts;
s32 tritot;
s32 stats[15];

void InitSkinning(void) //makes primitive

{
  primdefs = (struct primdef_s *)NuMemAlloc(0xc7ce0); // 0xC7CE0 bytes can fit 0x3548 NuPrims perfectly
  primdefs_sorted = (struct primdef_s *)NuMemAlloc(0xc7ce0);
  return;
}


void CloseSkinning(void)

{
  NuMemFree(primdefs);
  NuMemFree(primdefs_sorted);
  primdefs_sorted = NULL;
  primdefs = NULL;
  return;
}


void NuPs2CreateSkin(NuGobj* gobj) {
    NuGeom* geom;

    geom = gobj->geoms;
    if ((geom != NULL) && ((s32) geom->prims->type == 5)) {
        NuPs2CreateSkinNorm(Gobj);
    }
return;
}



/********************************WIP*************************************************/

void CreateSkinGeom(NuGeom *geom,primdef_s *primdefs,int pdcnt)

{
  short sVar1;
  float sizebuf;
  NUERRORFUNC *error;
  int amount_prim;
  NuPrim *prim1;
  uint bufsize;
  GS_Buffer *buffer;
  primdef_s *ppVar2;
  uint uVar3;
  float fVar4;
  short *psVar5;
  int iVar6;
  int *vtx_count;
  nuprimtype_e prim_type;
  short *skinmtxlookup;
  int iVar7;
  int count;
  int buf;
  int iVar8;
  int iVar9;
  int amount_6;
  int iVar10;
  NuPrim *next;
  int iVar11;
  int vtxcount [300];
  NuPrim *prim3;
  undefined4 local_50;
  uint uStack_4c;
  NuPrim *prim2;
  
  if (geom->vertex_type != NUVT_TC1) {
    e = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nucvtskn.c",0x69);
    //("CreateSkinGeom : Unknown vertex type!");
  }
  amount_6 = primdefs->baseid;
  count = 1;
  memset(vtxcount,0,0x4b0);
  if (0 < pdcnt) {
    vtx_count = &primdefs->baseid;
    prim_type = NUPT_NDXLINE;
    do {
      amount_prim = *vtx_count;
      vtx_count = vtx_count + 0x5d;
      if (amount_prim != amount_6) {
        prim_type = prim_type + NUPT_NDXLINE;
        count = count + 1;
        amount_6 = amount_prim;
      }
      pdcnt = pdcnt + -1;
      *(int *)((int)vtxcount + prim_type) = *(int *)((int)vtxcount + prim_type) + 3;
    } while (pdcnt != 0);
  }
  prim3 = NuPrimCreate(vtxcount[1],NUPT_NDXTRI);
  amount_6 = 1;
  if (1 < count) {
    vtx_count = vtxcount + 2;
    prim2 = prim3;
    do {
      amount_prim = *vtx_count;
      amount_6 = amount_6 + 1;
      vtx_count = vtx_count + 1;
      prim1 = NuPrimCreate(amount_prim,NUPT_NDXTRI);
      prim2->next = prim1;
      prim2 = prim1;
    } while (amount_6 < count);
  }
  prim2 = prim3;
  bufsize = geom->vtxcount * 0x38;
  buffer = GS_CreateBuffer(bufsize,1);
  amount_6 = 0;
  if (0 < count) {
    do {
      amount_6 = amount_6 + 1;
      amount_prim = 0xf;
      skinmtxlookup = prim2->skinmtxlookup;
      psVar5 = (short *)((int)primdefs->mtxid + 2);
      do {
        sVar1 = *psVar5;
        psVar5 = psVar5 + 2;
        *skinmtxlookup = sVar1;
        skinmtxlookup = skinmtxlookup + 1;
        amount_prim = amount_prim + -1;
      } while (amount_prim != 0);
      amount_prim = 0;
      buf = prim2->idxbuff;
      ppVar2 = primdefs;
      if (prim2->vertexCount != 0) {
        do {
          iVar7 = amount_prim * 2 + buf;
          *(undefined2 *)(buf + amount_prim * 2) = *(undefined2 *)((int)ppVar2->vid + 2);
          amount_prim = amount_prim + 3;
          primdefs = ppVar2 + 1;
          *(undefined2 *)(iVar7 + 2) = *(undefined2 *)((int)ppVar2->vid + 6);
          *(undefined2 *)(iVar7 + 4) = *(undefined2 *)((int)ppVar2->vid + 10);
          iVar7 = 0;
          do {
            iVar6 = ppVar2->vid[iVar7];
            iVar8 = iVar7 + 1;
            iVar9 = iVar7 * 0x3c;
            sizebuf = ppVar2->vrts[iVar7].pnt.z;
            fVar4 = ppVar2->vrts[iVar7].pnt.y;
            iVar10 = 0;
            buffer[iVar6 * 7].size = (uint)ppVar2->vrts[iVar7].pnt.x;
            buffer[iVar6 * 7 + 1].size = (uint)sizebuf;
            buffer[iVar6 * 7].type = (uint)fVar4;
            iVar11 = 3;
            iVar6 = ppVar2->vid[iVar7];
            sizebuf = ppVar2->vrts[iVar7].nrm.z;
            fVar4 = ppVar2->vrts[iVar7].nrm.y;
            buffer[iVar6 * 7 + 4].size = (uint)ppVar2->vrts[iVar7].nrm.x;
            buffer[iVar6 * 7 + 5].size = (uint)sizebuf;
            buffer[iVar6 * 7 + 4].type = (uint)fVar4;
            buffer[ppVar2->vid[iVar7] * 7 + 5].type = ppVar2->vrts[iVar7].diffuse;
            buffer[ppVar2->vid[iVar7] * 7 + 6].size = (uint)ppVar2->vrts[iVar7].tc[0];
            buffer[ppVar2->vid[iVar7] * 7 + 6].type = (uint)ppVar2->vrts[iVar7].tc[1];
            do {
              *(undefined4 *)((int)&buffer[ppVar2->vid[iVar7] * 7 + 1].type + iVar10) = 0;
              *(undefined4 *)((int)&buffer[ppVar2->vid[iVar7] * 7 + 2].type + iVar10) = 0;
              iVar10 = iVar10 + 4;
              iVar11 = iVar11 + -1;
            } while (iVar11 != 0);
            uVar3 = 0;
            iVar6 = 0;
            iVar10 = 0;
            do {
              if (*(float *)((int)ppVar2->weights + iVar9) != 0.0) {
                uStack_4c = uVar3 ^ 0x80000000;
                local_50 = 0x43300000;
                *(float *)((int)&buffer[ppVar2->vid[iVar7] * 7 + 2].type + iVar10) =
                     (float)((double)CONCAT44(0x43300000,uStack_4c) - 4503601774854144.0);
                if (iVar6 < 2) {
                  *(undefined4 *)((int)&buffer[ppVar2->vid[iVar7] * 7 + 1].type + iVar10) =
                       *(undefined4 *)((int)ppVar2->weights + iVar9);
                }
                iVar10 = iVar10 + 4;
                iVar6 = iVar6 + 1;
              }
              uVar3 = uVar3 + 1;
              iVar9 = iVar9 + 4;
            } while (((int)uVar3 < 0xf) && (iVar6 < 3));
            iVar7 = iVar8;
          } while (iVar8 < 3);
          ppVar2 = primdefs;
        } while (amount_prim < (int)(uint)prim2->vertexCount);
      }
      prim2 = prim2->next;
    } while (amount_6 < count);
  }
  GS_DeleteBuffer((void *)geom->hVB);
  prim2 = geom->prim;
  while (prim2 != (NuPrim *)0x0) {
    next = prim2->next;
    NuPrimDestroy(prim2);
    prim2 = next;
  }
  geom->hVB = (int)buffer;
  geom->vertex_type = NUVT_SK3TC1;
  geom->prim = prim3;
  return;
}



// This function creates a skinned geometry. It does this by creating an array of
// primitives, setting vertex skin data, sorting the primitives and then creating a
// new geometry from the sorted primitive array. A better name for this function

/*void NuPs2CreateSkinNorm(struct nugobj_s *gobj)

{
  struct primdef_s *primdef_2;
  int iVar2;
  int *num_mtx;
  int pdcnt;
  struct nuprim_s *prims;
  int skinnedVtxCount;
  int iVar3;
  struct nuvtx_tc1_s *vtx_buf;
  struct nugeom_s *currgeom;
  struct primdef_s *pd;
  struct GS_Buffer *primsbuffer;
  int iVar4;
  
  memset(stats,0,0x3c);
  currgeom = gobj->geom;
  stritot = 0;
  totaldupes = 0;
  totalpts = 0;
  tritot = 0;
  pd = primdefs;
  for (; currgeom != NULL; currgeom = currgeom->next) {
    primdefs = pd;
    if ((currgeom->skin != NULL) || (currgeom->vtxskininfo != NULL)) {
      prims = currgeom->prim;
      pdcnt = 0;
      primsbuffer = (struct GS_Buffer *)prims->idxbuff;
      vtx_buf = (struct nuvtx_tc1_s *)currgeom->hVB;
      if (0x898 < prims->vertexCount / 3) {
        error = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nucvtskn.c",0x35e);
        (*error)("NuPs2CreateSkinNorm: TOO MANY PRIMS!");
      }
      skinnedVtxCount = 0;
      if (prims->vertexCount != 0) {
        do {
          memset(pd,0,0x174);
          memset(pd->mtxid,-1,0x3c);
          if (currgeom->vtxskininfo == (NUVTXSKININFO_s *)0x0) {
            SetVtxSkinData(pd,0,vtx_buf,(uint)*(ushort *)&primsbuffer->size,currgeom);
            SetVtxSkinData(pd,1,vtx_buf,(uint)*(ushort *)((int)&primsbuffer->size + 2),currgeom);
            SetVtxSkinData(pd,2,vtx_buf,(uint)*(ushort *)&primsbuffer->type,currgeom);
          }
          else {
            SetVtxSkinData2(pd,0,vtx_buf,(uint)*(ushort *)&primsbuffer->size,currgeom);
            SetVtxSkinData2(pd,1,vtx_buf,(uint)*(ushort *)((int)&primsbuffer->size + 2),currgeom);
            SetVtxSkinData2(pd,2,vtx_buf,(uint)*(ushort *)&primsbuffer->type,currgeom);
          }
          if (((pd->vid[0] == pd->vid[1]) || (pd->vid[1] == pd->vid[2])) ||
             (pd->vid[0] == pd->vid[2])) {
            pd = pd + -1;
            pdcnt = pdcnt + -1;
          }
          num_mtx = &pd->nummtx;
          skinnedVtxCount = skinnedVtxCount + 3;
          pd = pd + 1;
          pdcnt = pdcnt + 1;
          primsbuffer = (GS_Buffer *)((int)&primsbuffer->type + 2);
          stats[*num_mtx] = stats[*num_mtx] + 1;
        } while (skinnedVtxCount < (int)(uint)prims->vertexCount);
      }
      iVar3 = 0;
      SortPrimdefs(primdefs,pdcnt);
      num_mtx = stats;
      iVar4 = 0xf;
      skinnedVtxCount = 0;
      iVar2 = 0;
      do {
        if ((*num_mtx != 0) && (iVar2 < iVar3)) {
          iVar2 = iVar3;
        }
        if (stats[skinnedVtxCount] <= *num_mtx) {
          skinnedVtxCount = iVar3;
        }
        num_mtx = num_mtx + 1;
        iVar3 = iVar3 + 1;
        iVar4 = iVar4 + -1;
      } while (iVar4 != 0);
      CreateSkinGeom(currgeom,primdefs,pdcnt);
    }
    pd = primdefs;
  }
  primdefs = pd;
  return;
}*/




void NuPs2CreateSkinNorm(struct nugobj_s *gobj)
{
    memset(stats, NULL, sizeof(stats));
    
    nugeom_s* currGeom = gobj->geoms;
    stritot = 0;
    totaldupes = 0;
    totalpts = 0;
    
    for (tritot = 0; currGeom; currGeom = currGeom->next)
    {
        if (currGeom->primarySkinData == nullptr && !currGeom->secondSkinData) {
            continue;
        }
        
        struct nuprim_s* prims = currGeom->prims;
        
        // Maximum amount of faces is 2200
        if ((prims->vertexCount / 3) > 2200)
        {
            ASSERT_FILE_LINE_MSG("C:/source/crashwoc/code/nu3dx/nucvtskn.c",
                            862, "NuPs2CreateSkinNorm: TOO MANY PRIMS!");
        }
        
        if (prims->vertexCount) {
            int skinnedVtxCount = 0;
            for (; skinnedVtxCount < prims->vertexCount; skinnedVtxCount += 3)
            {
                memset(primdefs, NULL, sizeof(primdefs));
                memset(primdefs->_12C, -1, 60);
                
                if (currGeom->secondSkinData)
                {
                    SetVtxSkinData2(v4, 0, vertexBuffer, prims->buffer->vertIdx0, currGeom);
                    SetVtxSkinData2(v4, 1, vertexBuffer, prims->buffer->vertIdx1, currGeom);
                    SetVtxSkinData2(v4, 2, vertexBuffer, prims->buffer->vertIdx2, currGeom);
                }
                else
                {
                    SetVtxSkinData(v4, 0, vertexBuffer, prims->buffer->vertIdx0, currGeom);
                    SetVtxSkinData(v4, 1, vertexBuffer, prims->buffer->vertIdx1, currGeom);
                    SetVtxSkinData(v4, 2, vertexBuffer, prims->buffer->vertIdx2, currGeom);
                }
            }    
        }

			//TODO
    }
}




int FillFreeMatrixSlots(struct primdef_s *pd,int cnt,int start)

{
  bool bVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  struct primdef_s *ppVar6;
  int iVar7;
  int *piVar8;
  int iVar9;
  int iVar10;
  
  iVar3 = pd[start].nummtx;
  if (((start < cnt) && (iVar3 < 0xc)) && (iVar5 = start + 1, iVar5 < cnt)) {
    iVar2 = iVar5 * 0x174;
    iVar10 = iVar3 * 4 + 300;
    ppVar6 = pd + iVar5;
    do {
      if ((ppVar6->sorted != 1) && (iVar4 = 0, ppVar6->mtxid[0] != -1)) {
        iVar7 = 0;
        piVar8 = (int *)((int)pd[start].vrts[0].tc + iVar10 + -0x1c);
        do {
          iVar9 = *(int *)((int)pd->mtxid + iVar7 + iVar2 + 300 + -300);
          if (*(char *)((int)mtxused[0].mtx + iVar9) == '\0') {
            *piVar8 = iVar9;
            bVar1 = iVar3 == 0xb;
            piVar8 = piVar8 + 1;
            iVar10 = iVar10 + 4;
            iVar3 = iVar3 + 1;
            *(undefined *)
             ((int)mtxused[0].mtx + *(int *)((int)pd->mtxid + iVar7 + iVar2 + 300 + -300)) = 1;
            if (bVar1) {
              return 0xc;
            }
          }
          iVar4 = iVar4 + 1;
          iVar7 = iVar7 + 4;
        } while ((iVar4 < 0xc) && (*(int *)((int)pd->mtxid + iVar7 + iVar2) != -1));
      }
      iVar5 = iVar5 + 1;
      ppVar6 = ppVar6 + 1;
      iVar2 = iVar2 + 0x174;
    } while (iVar5 < cnt);
  }
  return iVar3;
}




/*int SortPrimdefs(primdef_s *primdef,int count)  //Loop

{
  int iVar1;
  float *pfVar2;
  NUERRORFUNC *errormsg;
  int iVar3;
  int iVar4;
  primdef_s *ppVar5;
  int iVar6;
  primdef_s *ppVar7;
  primdef_s *ppVar8;
  float *pfVar9;
  int iVar10;
  uint uVar11;
  int *piVar12;
  float (*pafVar13) [3];
  primdef_s *ppVar14;
  int iVar15;
  uint uVar16;
  undefined4 *puVar17;
  int *piVar18;
  int iVar19;
  int iVar20;
  int iVar21;
  primdef_s *ppVar22;
  primdef_s *ppVar23;
  int iVar24;
  int iVar25;
  int iVar26;
  int iVar27;
  float local_6830 [94];
  int local_66b8 [3000];
  undefined auStack_37d8 [12000];
  int aiStack_8f8 [150];
  int local_6a0 [400];
  int local_60;
  int local_5c;
  undefined *local_58;
  int local_54;
  int *local_50;
  float (*local_4c) [3];
  
  local_60 = count;
  iVar27 = 0;
  local_50 = aiStack_8f8;
  local_58 = auStack_37d8;
  iVar26 = 0;
  if (0 < count) {
    do {
      iVar19 = iVar26 + 1;
      if (iVar19 < count) {
        ppVar14 = primdef + iVar26;
        iVar26 = iVar19;
        do {
          iVar20 = iVar26 + 1;
          if (ppVar14->nummtx < primdef[iVar26].nummtx) {
            iVar15 = 0x168;
            pfVar2 = local_6830;
            ppVar22 = ppVar14;
            do {
              ppVar23 = ppVar22;
              pfVar9 = pfVar2;
              iVar15 = iVar15 + -0x18;
              *pfVar9 = ppVar23->vrts[0].pnt.x;
              pfVar9[1] = ppVar23->vrts[0].pnt.y;
              pfVar9[2] = ppVar23->vrts[0].pnt.z;
              pfVar9[3] = ppVar23->vrts[0].nrm.x;
              pfVar9[4] = ppVar23->vrts[0].nrm.y;
              ppVar22 = (primdef_s *)&ppVar23->vrts[0].diffuse;
              pfVar9[5] = ppVar23->vrts[0].nrm.z;
              pfVar2 = pfVar9 + 6;
            } while (iVar15 != 0);
            iVar15 = 0x168;
            pfVar9[6] = *(float *)ppVar22;
            pfVar9[7] = ppVar23->vrts[0].tc[0];
            pfVar9[8] = ppVar23->vrts[0].tc[1];
            ppVar22 = ppVar14;
            ppVar23 = primdef + iVar26;
            do {
              ppVar5 = ppVar23;
              ppVar8 = ppVar22;
              iVar15 = iVar15 + -0x18;
              ppVar8->vrts[0].pnt.x = ppVar5->vrts[0].pnt.x;
              ppVar8->vrts[0].pnt.y = ppVar5->vrts[0].pnt.y;
              ppVar8->vrts[0].pnt.z = ppVar5->vrts[0].pnt.z;
              ppVar8->vrts[0].nrm.x = ppVar5->vrts[0].nrm.x;
              ppVar8->vrts[0].nrm.y = ppVar5->vrts[0].nrm.y;
              ppVar23 = (primdef_s *)&ppVar5->vrts[0].diffuse;
              ppVar8->vrts[0].nrm.z = ppVar5->vrts[0].nrm.z;
              ppVar22 = (primdef_s *)&ppVar8->vrts[0].diffuse;
            } while (iVar15 != 0);
            iVar15 = 0x168;
            *(int *)ppVar22 = *(int *)ppVar23;
            ppVar8->vrts[0].tc[0] = ppVar5->vrts[0].tc[0];
            ppVar8->vrts[0].tc[1] = ppVar5->vrts[0].tc[1];
            ppVar22 = primdef + iVar26;
            pfVar2 = local_6830;
            do {
              pfVar9 = pfVar2;
              ppVar23 = ppVar22;
              iVar15 = iVar15 + -0x18;
              ppVar23->vrts[0].pnt.x = *pfVar9;
              ppVar23->vrts[0].pnt.y = pfVar9[1];
              ppVar23->vrts[0].pnt.z = pfVar9[2];
              ppVar23->vrts[0].nrm.x = pfVar9[3];
              ppVar23->vrts[0].nrm.y = pfVar9[4];
              ppVar23->vrts[0].nrm.z = pfVar9[5];
              ppVar22 = (primdef_s *)&ppVar23->vrts[0].diffuse;
              pfVar2 = pfVar9 + 6;
            } while (iVar15 != 0);
            *(float *)ppVar22 = pfVar9[6];
            ppVar23->vrts[0].tc[0] = pfVar9[7];
            ppVar23->vrts[0].tc[1] = pfVar9[8];
          }
          iVar26 = iVar20;
        } while (iVar20 < count);
      }
      iVar26 = iVar19;
    } while (iVar19 < count);
  }
  iVar26 = 0;
  iVar19 = iVar26;
  iVar20 = 0;
  if (0 < count) {
    do {
      iVar15 = iVar20 + 1;
      iVar26 = iVar19;
      if (primdef[iVar20].sorted == 0) {
        local_5c = iVar27 + 1;
        memset(mtxused,0,0x100);
        iVar26 = 0;
        iVar24 = iVar19 + 1;
        if (0 < primdef[iVar20].nummtx) {
          piVar12 = primdef[iVar20].mtxid;
          do {
            iVar10 = *piVar12;
            iVar26 = iVar26 + 1;
            piVar12 = piVar12 + 1;
            *(undefined *)((int)mtxused[0].mtx + iVar10) = 1;
          } while (iVar26 < primdef[iVar20].nummtx);
        }
        local_54 = iVar27 * 0x3c;
        iVar27 = FillFreeMatrixSlots(primdef,local_60,iVar20);
        ppVar14 = primdefs_sorted;
        ppVar22 = primdef + iVar20;
        ppVar22->nummtx = iVar27;
        iVar27 = 0x168;
        ppVar22->baseid = iVar19;
        ppVar14 = ppVar14 + iVar19;
        do {
          ppVar8 = ppVar22;
          ppVar23 = ppVar14;
          iVar27 = iVar27 + -0x18;
          ppVar23->vrts[0].pnt.x = ppVar8->vrts[0].pnt.x;
          ppVar23->vrts[0].pnt.y = ppVar8->vrts[0].pnt.y;
          ppVar23->vrts[0].pnt.z = ppVar8->vrts[0].pnt.z;
          ppVar23->vrts[0].nrm.x = ppVar8->vrts[0].nrm.x;
          ppVar23->vrts[0].nrm.y = ppVar8->vrts[0].nrm.y;
          ppVar22 = (primdef_s *)&ppVar8->vrts[0].diffuse;
          ppVar23->vrts[0].nrm.z = ppVar8->vrts[0].nrm.z;
          ppVar14 = (primdef_s *)&ppVar23->vrts[0].diffuse;
        } while (iVar27 != 0);
        *(int *)ppVar14 = *(int *)ppVar22;
        ppVar23->vrts[0].tc[0] = ppVar8->vrts[0].tc[0];
        ppVar23->vrts[0].tc[1] = ppVar8->vrts[0].tc[1];
        ppVar14 = primdefs_sorted;
        iVar26 = iVar24;
        if (iVar15 < local_60) {
          local_4c = primdefs_sorted->weights[10];
          iVar27 = iVar15;
          ppVar22 = primdefs_sorted + iVar24;
          iVar10 = iVar24 * 0x174;
          do {
            iVar21 = iVar27 + 1;
            ppVar23 = ppVar22;
            iVar25 = iVar10;
            if ((primdef[iVar27].sorted == 0) && (primdef[iVar27].nummtx <= primdef[iVar20].nummtx ))
            {
              iVar6 = 0;
              iVar3 = 0;
              if (0 < primdef[iVar27].nummtx) {
                iVar4 = 0;
                do {
                  iVar3 = iVar3 + 1;
                  piVar12 = (int *)((int)primdef[iVar27].mtxid + iVar4);
                  iVar4 = iVar4 + 4;
                  uVar11 = (int)*(char *)((int)mtxused[0].mtx + *piVar12) - 1;
                  uVar16 = (int)uVar11 >> 0x1f;
                  iVar6 = iVar6 + ((uVar16 ^ uVar11) - uVar16);
                } while (iVar3 < primdef[iVar27].nummtx);
              }
              if (iVar6 == 0) {
                primdef[iVar27].baseid = iVar19;
                iVar26 = 0x168;
                iVar25 = iVar10 + 0x174;
                ppVar23 = ppVar22 + 1;
                iVar24 = iVar24 + 1;
                ppVar8 = primdef + iVar27;
                do {
                  ppVar7 = ppVar8;
                  ppVar5 = ppVar22;
                  iVar26 = iVar26 + -0x18;
                  ppVar5->vrts[0].pnt.x = ppVar7->vrts[0].pnt.x;
                  ppVar5->vrts[0].pnt.y = ppVar7->vrts[0].pnt.y;
                  ppVar5->vrts[0].pnt.z = ppVar7->vrts[0].pnt.z;
                  ppVar5->vrts[0].nrm.x = ppVar7->vrts[0].nrm.x;
                  ppVar5->vrts[0].nrm.y = ppVar7->vrts[0].nrm.y;
                  ppVar8 = (primdef_s *)&ppVar7->vrts[0].diffuse;
                  ppVar5->vrts[0].nrm.z = ppVar7->vrts[0].nrm.z;
                  ppVar22 = (primdef_s *)&ppVar5->vrts[0].diffuse;
                } while (iVar26 != 0);
                *(int *)ppVar22 = *(int *)ppVar8;
                ppVar5->vrts[0].tc[0] = ppVar7->vrts[0].tc[0];
                puVar17 = (undefined4 *)((int)*local_4c + iVar10);
                ppVar5->vrts[0].tc[1] = ppVar7->vrts[0].tc[1];
                iVar26 = 0xf;
                primdef[iVar27].sorted = 1;
                do {
                  puVar17[0xf] = 0xffffffff;
                  puVar17[-0x1e] = 0;
                  puVar17[-0xf] = 0;
                  *puVar17 = 0;
                  puVar17 = puVar17 + 1;
                  iVar26 = iVar26 + -1;
                } while (iVar26 != 0);
                iVar3 = 0;
                iVar26 = iVar24;
                if (0 < primdef[iVar20].nummtx) {
                  do {
                    iVar6 = 0;
                    iVar4 = iVar3 + 1;
                    if (0 < primdef[iVar27].nummtx) {
                      iVar1 = iVar3 * 4;
                      pafVar13 = primdef[iVar27].weights[10];
                      do {
                        if (primdef[iVar20].mtxid[iVar3] == *(int *)pafVar13[5]) {
                          *(float *)((int)ppVar14->weights + iVar1 + iVar10) = pafVar13[-10][0];
                          *(float *)((int)ppVar14->weights[5] + iVar1 + iVar10) = pafVar13[-5][0];
                          *(float *)((int)ppVar14->weights[10] + iVar1 + iVar10) = (*pafVar13)[0];
                          *(int *)((int)ppVar14->mtxid + iVar1 + iVar10) =
                               primdef[iVar20].mtxid[iVar3];
                        }
                        iVar6 = iVar6 + 1;
                        pafVar13 = (float (*) [3])(*pafVar13 + 1);
                      } while (iVar6 < primdef[iVar27].nummtx);
                    }
                    iVar3 = iVar4;
                  } while (iVar4 < primdef[iVar20].nummtx);
                }
              }
            }
            iVar27 = iVar21;
            ppVar22 = ppVar23;
            iVar10 = iVar25;
          } while (iVar21 < local_60);
        }
        iVar20 = 0xf;
        piVar18 = (int *)((int)local_66b8 + local_54);
        piVar12 = primdefs_sorted[iVar19].mtxid;
        do {
          iVar27 = *piVar12;
          piVar12 = piVar12 + 1;
          *piVar18 = iVar27;
          piVar18 = piVar18 + 1;
          iVar20 = iVar20 + -1;
          iVar27 = local_5c;
        } while (iVar20 != 0);
      }
      iVar19 = iVar26;
      iVar20 = iVar15;
    } while (iVar15 < local_60);
  }
  iVar20 = 0;
  memset(local_50,0,0x258);
  iVar19 = -1;
  if (0 < iVar27) {
    do {
      iVar24 = iVar20 * 0x3c;
      iVar10 = 0xf;
      iVar20 = iVar20 + 1;
      iVar15 = iVar19;
      do {
        iVar25 = *(int *)((int)local_66b8 + iVar24);
        iVar19 = iVar15;
        if (iVar25 != -1) {
          local_50[iVar25] = local_50[iVar25] + 1;
          iVar19 = *(int *)((int)local_66b8 + iVar24);
          if (*(int *)((int)local_66b8 + iVar24) < iVar15) {
            iVar19 = iVar15;
          }
        }
        iVar24 = iVar24 + 4;
        iVar10 = iVar10 + -1;
        iVar15 = iVar19;
      } while (iVar10 != 0);
    } while (iVar20 < iVar27);
  }
  memset(local_58,-1,0x2ee0);
  do {
    iVar20 = 0;
    iVar24 = 0;
    iVar15 = *local_50;
    piVar12 = local_50;
    if (-1 < iVar19) {
      do {
        if (local_50[iVar20] < *piVar12) {
          iVar20 = iVar24;
          iVar15 = *piVar12;
        }
        iVar24 = iVar24 + 1;
        piVar12 = piVar12 + 1;
      } while (iVar24 <= iVar19);
    }
    if (iVar15 == 0) break;
    iVar24 = 0;
    if (0 < iVar27) {
      iVar25 = 0;
      iVar10 = 0;
      do {
        iVar6 = 0xf;
        iVar21 = 0;
        iVar3 = iVar10 + 1;
        piVar12 = (int *)((int)local_6a0 + iVar25 + 4);
        piVar18 = local_66b8 + iVar10 * 0xf;
        do {
          iVar4 = *piVar18;
          piVar18 = piVar18 + 1;
          if (iVar4 == iVar20) {
            piVar12[-1] = iVar10;
            iVar25 = iVar25 + 8;
            *piVar12 = iVar21;
            iVar24 = iVar24 + 1;
            piVar12 = piVar12 + 2;
          }
          iVar21 = iVar21 + 1;
          iVar6 = iVar6 + -1;
        } while (iVar6 != 0);
        iVar10 = iVar3;
      } while (iVar3 < iVar27);
    }
    iVar25 = 0;
    iVar10 = iVar25;
    if (iVar24 < 1) {
LAB_800ae5b0:
      if (0 < iVar24) {
        piVar12 = local_6a0;
        do {
          iVar10 = *piVar12;
          iVar24 = iVar24 + -1;
          piVar12 = piVar12 + 2;
          *(int *)(local_58 + (iVar25 + -1) * 4 + iVar10 * 0x3c) = iVar20;
          local_50[iVar20] = 0;
        } while (iVar24 != 0);
      }
    }
    else {
      do {
        iVar21 = 0;
        iVar25 = iVar10 + 1;
        if (0 < iVar24) {
          piVar12 = local_6a0;
          iVar3 = iVar24;
          do {
            iVar6 = *piVar12;
            piVar12 = piVar12 + 2;
            if (*(int *)(local_58 + iVar10 * 4 + iVar6 * 0x3c) == -1) {
              iVar21 = iVar21 + 1;
            }
            iVar3 = iVar3 + -1;
          } while (iVar3 != 0);
        }
        if (iVar24 <= iVar21) goto LAB_800ae5b0;
        iVar10 = iVar25;
      } while (iVar25 < 0xf);
      errormsg = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nucvtskn.c",0x232);
      (*errormsg)("SortPrimDefs: Unable to find a matching free slot in all batches!!");
    }
  } while (iVar15 != 0);
  ppVar14 = primdefs_sorted;
  iVar27 = 0;
  if (0 < local_60) {
    iVar20 = 0;
    iVar19 = 0;
    do {
      iVar15 = ppVar14[iVar19].baseid;
      if (iVar15 != iVar27) {
        iVar20 = iVar20 + 0x3c;
        iVar27 = iVar15;
      }
      iVar24 = iVar19 + 1;
      iVar15 = 0x168;
      ppVar22 = ppVar14 + iVar19;
      ppVar23 = primdef + iVar19;
      do {
        ppVar5 = ppVar23;
        ppVar8 = ppVar22;
        iVar15 = iVar15 + -0x18;
        ppVar5->vrts[0].pnt.x = ppVar8->vrts[0].pnt.x;
        ppVar5->vrts[0].pnt.y = ppVar8->vrts[0].pnt.y;
        ppVar5->vrts[0].pnt.z = ppVar8->vrts[0].pnt.z;
        ppVar5->vrts[0].nrm.x = ppVar8->vrts[0].nrm.x;
        ppVar5->vrts[0].nrm.y = ppVar8->vrts[0].nrm.y;
        ppVar22 = (primdef_s *)&ppVar8->vrts[0].diffuse;
        ppVar5->vrts[0].nrm.z = ppVar8->vrts[0].nrm.z;
        ppVar23 = (primdef_s *)&ppVar5->vrts[0].diffuse;
      } while (iVar15 != 0);
      pafVar13 = primdef[iVar19].weights[10];
      *(int *)ppVar23 = *(int *)ppVar22;
      iVar15 = 0xf;
      ppVar5->vrts[0].tc[0] = ppVar8->vrts[0].tc[0];
      ppVar5->vrts[0].tc[1] = ppVar8->vrts[0].tc[1];
      do {
        *(int *)pafVar13[5] = -1;
        pafVar13[-10][0] = 0.0;
        pafVar13[-5][0] = 0.0;
        (*pafVar13)[0] = 0.0;
        pafVar13 = (float (*) [3])(*pafVar13 + 1);
        iVar15 = iVar15 + -1;
      } while (iVar15 != 0);
      iVar15 = ppVar14[iVar27].nummtx;
      primdef[iVar19].baseid = iVar27;
      primdef[iVar19].nummtx = iVar15;
      iVar15 = 0;
      do {
        iVar10 = iVar15 + 1;
        piVar12 = ppVar14[iVar19].mtxid;
        iVar25 = *(int *)(local_58 + iVar15 * 4 + iVar20);
        iVar21 = 0xf;
        do {
          if (iVar25 == *piVar12) {
            primdef[iVar19].weights[iVar15] = (*(float (*) [3])(piVar12 + -0x2d))[0];
            primdef[iVar19].mtxid[iVar15 + -0x1e] = (int)(*(float (*) [3])(piVar12 + -0x1e))[0];
            primdef[iVar19].mtxid[iVar15 + -0xf] = (int)(*(float (*) [3])(piVar12 + -0xf))[0];
            primdef[iVar19].mtxid[iVar15] = *piVar12;
          }
          piVar12 = piVar12 + 1;
          iVar21 = iVar21 + -1;
        } while (iVar21 != 0);
        iVar15 = iVar10;
      } while (iVar10 < 0xf);
      iVar19 = iVar24;
    } while (iVar24 < local_60);
  }
  iVar19 = 0;
  iVar27 = -1;
  ppVar14 = primdefs_sorted;
  if (0 < iVar26) {
    do {
      if (ppVar14->baseid != iVar27) {
        iVar19 = iVar19 + ppVar14->nummtx;
        iVar27 = ppVar14->baseid;
      }
      iVar26 = iVar26 + -1;
      ppVar14 = ppVar14 + 1;
    } while (iVar26 != 0);
  }
  return iVar19;
}*/



int AddMtxToPrimDef(primdef_s *primdef,int mtxid)

{
  int iVar1;
  int iVar2;
  int *piVar3;
  
  iVar2 = 0;
  if (0 < primdef->nummtx) {
    piVar3 = primdef->mtxid;
    do {
      iVar1 = *piVar3;
      piVar3 = piVar3 + 1;
      if (iVar1 == mtxid) {
        return iVar2;
      }
      iVar2 = iVar2 + 1;
    } while (iVar2 < primdef->nummtx);
  }
  if (iVar2 < 0xf) {
    primdef->mtxid[iVar2] = mtxid;
    primdef->nummtx = primdef->nummtx + 1;
    return iVar2;
  }
  return 0;
}



void SetVtxSkinData(primdef_s *pd,int pdix,nuvtx_tc1_s *vb,int vid,NuGeom *currgeom)

{
  int iVar1;
  nuvtx_tc1_s *pnVar2;
  nuvtx_tc1_s *pnVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  nuvtx_tc1_s *pnVar7;
  nuvtx_tc1_s *pnVar8;
  float *pfVar9;
  int iVar10;
  int iVar11;
  NuSkin *skin_;
  
  iVar5 = 0x18;
  pnVar2 = pd->vrts + pdix;
  pnVar3 = vb + vid;
  do {
    pnVar8 = pnVar3;
    pnVar7 = pnVar2;
    iVar5 = iVar5 + -0x18;
    (pnVar7->pnt).x = (pnVar8->pnt).x;
    (pnVar7->pnt).y = (pnVar8->pnt).y;
    (pnVar7->pnt).z = (pnVar8->pnt).z;
    (pnVar7->nrm).x = (pnVar8->nrm).x;
    (pnVar7->nrm).y = (pnVar8->nrm).y;
    (pnVar7->nrm).z = (pnVar8->nrm).z;
    pnVar2 = (nuvtx_tc1_s *)&pnVar7->diffuse;
    pnVar3 = (nuvtx_tc1_s *)&pnVar8->diffuse;
  } while (iVar5 != 0);
  pnVar7->diffuse = pnVar8->diffuse;
  pnVar7->tc[0] = pnVar8->tc[0];
  pnVar7->tc[1] = pnVar8->tc[1];
  pd->vid[pdix] = vid;
  if (pdix < 3) {
    for (skin_ = currgeom->skin; skin_ != (NuSkin *)0x0; skin_ = skin_->next) {
      iVar5 = vid - skin_->vtxoffset;
      if ((-1 < iVar5) && (iVar5 < skin_->vtxcnt)) {
        iVar4 = skin_->mtxcnt;
        iVar10 = 0;
        pfVar9 = skin_->weights;
        if (iVar4 < 1) {
          return;
        }
        iVar11 = 0;
        do {
          iVar10 = iVar10 + 1;
          iVar6 = AddMtxToPrimDef(pd,*(int *)(iVar11 + (int)skin_->mtxid));
          iVar1 = iVar11 + iVar4 * iVar5 * 4;
          iVar11 = iVar11 + 4;
          pd->weights[pdix * 5][iVar6] = *(float *)((int)pfVar9 + iVar1);
        } while (iVar10 < skin_->mtxcnt);
        return;
      }
    }
  }
  return;
}



void SetVtxSkinData2(primdef_s *pd,int pdix,nuvtx_tc1_s *vertexbuf,int vid,NuGeom *currgeom)

{
  bool bVar1;
  nuvtx_tc1_s *pnVar2;
  nuvtx_tc1_s *pnVar3;
  nuvtx_tc1_s *pnVar4;
  int iVar5;
  nuvtx_tc1_s *pnVar6;
  NUVTXSKININFO_s *pNVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  double dVar11;
  
  iVar8 = 0x18;
  pnVar2 = pd->vrts + pdix;
  pnVar3 = vertexbuf + vid;
  do {
    pnVar6 = pnVar3;
    pnVar4 = pnVar2;
    iVar8 = iVar8 + -0x18;
    (pnVar4->pnt).x = (pnVar6->pnt).x;
    (pnVar4->pnt).y = (pnVar6->pnt).y;
    (pnVar4->pnt).z = (pnVar6->pnt).z;
    (pnVar4->nrm).x = (pnVar6->nrm).x;
    (pnVar4->nrm).y = (pnVar6->nrm).y;
    (pnVar4->nrm).z = (pnVar6->nrm).z;
    pnVar2 = (nuvtx_tc1_s *)&pnVar4->diffuse;
    pnVar3 = (nuvtx_tc1_s *)&pnVar6->diffuse;
  } while (iVar8 != 0);
  pnVar4->diffuse = pnVar6->diffuse;
  iVar8 = 0;
  dVar11 = 0.0;
  pnVar4->tc[0] = pnVar6->tc[0];
  pnVar4->tc[1] = pnVar6->tc[1];
  pd->vid[pdix] = vid;
  pNVar7 = currgeom->vtxskininfo + vid;
  if (pNVar7->wts[0] != 0.0) {
    iVar9 = 0;
    iVar10 = 0;
    do {
      iVar9 = iVar9 + 4;
      iVar5 = AddMtxToPrimDef(pd,(uint)pNVar7->joint_ixs[iVar8]);
      bVar1 = iVar8 == 2;
      pd->weights[pdix * 5][iVar5] = *(float *)((int)pNVar7->wts + iVar10);
      iVar10 = iVar10 + 4;
      iVar8 = iVar8 + 1;
      if (bVar1) {
        return;
      }
    } while ((double)*(float *)((int)pNVar7->wts + iVar9) != dVar11);
  }
  return;
}

