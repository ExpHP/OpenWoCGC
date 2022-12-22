#include "nurndr.h"
#include "../system.h"


void NuRndrInit(void)

{
  short *timer;
  int lp;
  
  lp = 0x20;
  NuRndrShadowCnt = 0;
  timer = &NuRndrWaterRipDat[0x1f].timer;
  do {
    *timer = 0;
    timer = timer + -0x12;
    lp = lp + -1;
  } while (lp != 0);
  return;
}


int NuRndrBeginScene(int hRT)

{
  uint bs;
  
  if (rndrmtx_cnt < rndrmtx_cnt_max) {
    rndrmtx_cnt_max = rndrmtx_cnt;
  }
  if (geomitem_cnt < geomitem_cnt_max) {
    geomitem_cnt_max = geomitem_cnt;
  }
  rndrmtx_cnt = 0x600;
  rndr_blend_shape_deformer_wt_cnt = 0x400;
  rndr_blend_shape_deformer_wt_ptrs_cnt = 0x800;
  geomitem_cnt = 0x800;
  NuMtlClearOt();
  bs = NudxFw_BeginScene(hRT);
  return ~bs >> 0x1f;
}

void NuRndrEndScene(void)

{
  if (GS_Parallax != 0) {
    GS_SetZCompare(0,0,0);
  }
  NuRndrFlush();
  GS_EndScene();
  return;
}


void NuRndrFlush(void)

{
  NuMtlRender();
  NuLightClearStoredLights();
  return;
}

void NuRndrClear(s32 flags,s32 colour,f32 depth)

{
  s32 fwf;
  
  fwf = 0;
  if ((flags & 1U) != 0) {
    fwf = 0xf0;
  }
  if ((flags & 2U) != 0) {
    fwf = fwf | 1;
  }
  if ((flags & 8U) != 0) {
    fwf = fwf | 2;
  }
  NudxFw_Clear(fwf,colour,depth);
  return;
}

void NuRndrSwapScreen(int hRT)

{
  NudxFw_SetBackBufferCopied(1);
  if (Pad[0] != (nupad_s *)0x0) {
    if (Pad[0]->old_paddata == 0) {
      padflag = 1;
    }
    if (padflag != 0) {
      if ((Pad[0]->old_paddata & 1) != 0) {
        NudxFw_FlipScreen(hRT,1);
        return;
      }
      NudxFw_FlipScreen(hRT,1);
      return;
    }
  }
  NudxFw_FlipScreen(hRT,0);
  return;
}


/*

int NuRndrGobj(nugobj_s *gobj,numtx_s *wm,float **blendvals)		//TODO!!

{
  numtl_s **ppnVar1;
  float *pfVar2;
  float *pfVar3;
  nugobj_s *nextgobj;
  int i;
  int currlgts;
  int iVar4;
  nuvec_s *min;
  short sVar6;
  numtl_s *mtl;
  int iVar5;
  nuvec_s *max;
  float *pfVar7;
  uint s_id;
  float *pfVar8;
  int iVar9;
  float *m;
  nugeom_s *geom;
  byte in_cr0;
  byte in_cr1;
  byte in_cr2;
  byte in_cr3;
  byte unaff_cr4;
  byte in_cr5;
  byte in_cr6;
  byte in_cr7;
  numtx_s mtx;
  nuvec_s bb_min;
  nuvec_s bb_max;
  uint local_4c;
  
  local_4c = (uint)(in_cr0 & 0xf) << 0x1c | (uint)(in_cr1 & 0xf) << 0x18 |
             (uint)(in_cr2 & 0xf) << 0x14 | (uint)(in_cr3 & 0xf) << 0x10 |
             (uint)(unaff_cr4 & 0xf) << 0xc | (uint)(in_cr5 & 0xf) << 8 | (uint)(in_cr6 & 0xf) <<  4
             | (uint)(in_cr7 & 0xf);
  nextgobj = gobj->next_gobj;
  iVar9 = -1;
  currlgts = NuLightStoreCurrentLights();
  if (gobj != (nugobj_s *)0x0) {
    do {
      if (gobj->culltype == 0) {
        iVar4 = NuCameraClipTestBoundingSphere
                          (&gobj->bounding_box_center,&gobj->bounding_radius_from_center,wm);
      }
      else {
        if ((((gobj->origin).x == 0.0) && ((gobj->origin).y == 0.0)) && ((gobj->origin).z == 0.0))  {
          min = &gobj->bounding_box_min;
          max = &gobj->bounding_box_max;
        }
        else {
          bb_min.x = (gobj->bounding_box_min).x;
          bb_min.y = (gobj->bounding_box_min).y;
          bb_min.z = (gobj->bounding_box_min).z;
          bb_max.x = (gobj->bounding_box_max).x;
          bb_max.y = (gobj->bounding_box_max).y;
          bb_max.z = (gobj->bounding_box_max).z;
          NuVecAdd(&bb_min,&gobj->bounding_box_min,&gobj->origin);
          NuVecAdd(&bb_max,&gobj->bounding_box_max,&gobj->origin);
          min = &bb_min;
          max = &bb_max;
        }
        iVar4 = NuCameraClipTestExtents(min,max,wm);
      }
      i = iVar4;
      if (iVar9 == -1) {
LAB_800b47d0:
        iVar9 = i;
        if (iVar4 != 0) {
          rndrmtx_cnt = rndrmtx_cnt + -1;
          if (rndrmtx_cnt < 0) {
            e = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nurndr.c",0x282);
            (*e)("NuRndrGobj : No free matrix slots!");
          }
          i = 0x30;
          m = (float *)(rndrmtx + rndrmtx_cnt);
          pfVar2 = m;
          pfVar3 = (float *)wm;
          do {
            pfVar8 = pfVar3;
            pfVar7 = pfVar2;
            i = i + -0x18;
            *pfVar7 = *pfVar8;
            pfVar7[1] = pfVar8[1];
            pfVar7[2] = pfVar8[2];
            pfVar7[3] = pfVar8[3];
            (*(float (*) [4])(pfVar7 + 4))[0] = (*(float (*) [4])(pfVar8 + 4))[0];
            pfVar7[5] = pfVar8[5];
            pfVar2 = pfVar7 + 6;
            pfVar3 = pfVar8 + 6;
          } while (i != 0);
          pfVar7[6] = pfVar8[6];
          pfVar7[7] = pfVar8[7];
          pfVar7[8] = pfVar8[8];
          pfVar7[9] = pfVar8[9];
          if (nextgobj != (nugobj_s *)0x0) {
            NuMtxSetIdentity(&mtx);
            mtx.mtx[3][0] = (gobj->origin).x;
            mtx.mtx[3][1] = (gobj->origin).y;
            mtx.mtx[3][2] = (gobj->origin).z;
            NuMtxMul((numtx_s *)m,&mtx,(numtx_s *)m);
          }
          geom = gobj->geom;
          if (geom != (nugeom_s *)0x0) {
            do {
              if (geomitem_cnt == 0) {
                e = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nurndr.c",0x2ba);
                (*e)("NuRndrGobj : No free geom item slots!");
              }
              else {
                i = geomitem_cnt + -1;
                geomitem_cnt = i;
                geomitem[i].hdr.type = NURNDRITEM_GEOM3D;
                geomitem[i].hdr.flags = 0;
                if (iVar4 == 1) {
                  geomitem[i].hdr.flags = 1;
                }
                geomitem[i].hdr.lights_index = (short)currlgts;
                geomitem[i].mtx = (numtx_s *)m;
                geomitem[i].geom = geom;
                geomitem[i].blendvals = blendvals;
                sVar6 = NuShaderAssignShader(geom);
                ppnVar1 = nurndr_forced_mtl_table;
                geomitem[i].hShader = sVar6;
                if ((ppnVar1 == (numtl_s **)0x0) || (s_id = (uint)geom->mtls->special_id, s_id ==  0)
                   ) {
                  mtl = nurndr_forced_mtl;
                  if (nurndr_forced_mtl == (numtl_s *)0x0) {
                    mtl = geom->mtls;
                  }
                }
                else {
                  mtl = ppnVar1[s_id];
                  if (mtl == (numtl_s *)0x0) goto LAB_800b4994;
                }
                NuMtlAddRndrItem(mtl,&geomitem[i].hdr);
              }
LAB_800b4994:
              geom = geom->next;
            } while (geom != (nugeom_s *)0x0);
          }
          geom = (nugeom_s *)gobj->faceon_geom;
          if (geom != (nugeom_s *)0x0) {
            if (geomitem_cnt == 0) {
              e = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nurndr.c",0x2dc);
              (*e)("NuRndrGobj : No free geom item slots!");
            }
            else {
              i = geomitem_cnt + -1;
              geomitem_cnt = i;
              geomitem[i].geom = geom;
              iVar5 = NuLightStoreCurrentLights();
              geomitem[i].hdr.lights_index = (short)iVar5;
              geomitem[i].hdr.type = NURNDRITEM_GEOMFACE;
              geomitem[i].hdr.flags = 0;
              if (iVar4 == 1) {
                geomitem[i].hdr.flags = 1;
              }
              geomitem[i].mtx = (numtx_s *)m;
              geomitem[i].blendvals = blendvals;
              NuMtlAddFaceonItem(geom->mtls,&geomitem[i].hdr);
            }
          }
        }
      }
      else {
        if ((iVar9 == 1) && (iVar4 != 1)) {
LAB_800b47cc:
          i = 2;
          goto LAB_800b47d0;
        }
        i = iVar9;
        if (iVar9 != 0) goto LAB_800b47d0;
        if (iVar4 != 0) goto LAB_800b47cc;
      }
      gobj = gobj->next_gobj;
    } while (gobj != (nugobj_s *)0x0);
  }
  return iVar9;
}


int NuRndrGrassGobj(nugobj_s *gobj,numtx_s *wm,float **blendvals)		//TODO!!!

{
  float fVar1;
  float fVar2;
  float fVar3;
  numtl_s **ppnVar4;
  float *pfVar5;
  float *pfVar6;
  int iVar8;
  short sVar9;
  numtl_s *mtl;
  float *pfVar10;
  uint uVar11;
  int iVar12;
  float *pfVar13;
  int iVar14;
  float *pfVar15;
  int iVar16;
  nugeom_s *pnVar17;
  byte in_cr0;
  byte in_cr1;
  byte in_cr2;
  byte in_cr3;
  byte unaff_cr4;
  byte in_cr5;
  byte in_cr6;
  byte in_cr7;
  double dVar18;
  nuvec_s local_70;
  nuvec_s local_60 [2];
  uint local_48;
  
  local_48 = (uint)(in_cr0 & 0xf) << 0x1c | (uint)(in_cr1 & 0xf) << 0x18 |
             (uint)(in_cr2 & 0xf) << 0x14 | (uint)(in_cr3 & 0xf) << 0x10 |
             (uint)(unaff_cr4 & 0xf) << 0xc | (uint)(in_cr5 & 0xf) << 8 | (uint)(in_cr6 & 0xf) <<  4
             | (uint)(in_cr7 & 0xf);
  iVar14 = -1;
  if (gobj != (nugobj_s *)0x0) {
    dVar18 = 100.0;
    do {
      local_70.x = (gobj->bounding_box_min).x;
      local_70.y = (gobj->bounding_box_min).y;
      local_70.z = (gobj->bounding_box_min).z;
      local_60[0].x = (gobj->bounding_box_max).x;
      local_60[0].y = (gobj->bounding_box_max).y;
      local_60[0].z = (gobj->bounding_box_max).z;
      NuVecAdd(&local_70,&gobj->bounding_box_min,&gobj->origin);
      NuVecAdd(local_60,&gobj->bounding_box_max,&gobj->origin);
      fVar1 = local_70.y - wm->mtx[3][1];
      fVar2 = local_70.x - wm->mtx[3][0];
      fVar3 = local_70.z - wm->mtx[3][2];
      if ((double)(fVar3 * fVar3 + fVar2 * fVar2 + fVar1 * fVar1) <= dVar18) {
        iVar16 = NuCameraClipTestBoundingSphere
                           (&gobj->bounding_box_center,&gobj->bounding_radius_from_center,wm);
      }
      else {
        iVar16 = 0;
      }
      iVar12 = iVar16;
      if (iVar14 == -1) {
LAB_800b4b88:
        iVar14 = iVar12;
        if (iVar16 != 0) {
          rndrmtx_cnt = rndrmtx_cnt + -1;
          if (rndrmtx_cnt < 0) {
            pNVar7 = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nurndr.c",0x316);
            (*pNVar7)("NuRndrGobj : No free matrix slots!");
          }
          iVar12 = 0x30;
          pfVar15 = (float *)(rndrmtx + rndrmtx_cnt);
          pfVar5 = pfVar15;
          pfVar6 = (float *)wm;
          do {
            pfVar13 = pfVar6;
            pfVar10 = pfVar5;
            iVar12 = iVar12 + -0x18;
            *pfVar10 = *pfVar13;
            pfVar10[1] = pfVar13[1];
            pfVar10[2] = pfVar13[2];
            pfVar10[3] = pfVar13[3];
            (*(float (*) [4])(pfVar10 + 4))[0] = (*(float (*) [4])(pfVar13 + 4))[0];
            pfVar10[5] = pfVar13[5];
            pfVar5 = pfVar10 + 6;
            pfVar6 = pfVar13 + 6;
          } while (iVar12 != 0);
          pfVar10[6] = pfVar13[6];
          pfVar10[7] = pfVar13[7];
          pfVar10[8] = pfVar13[8];
          pfVar10[9] = pfVar13[9];
          pnVar17 = gobj->geom;
          if (pnVar17 != (nugeom_s *)0x0) {
            do {
              if (geomitem_cnt == 0) {
                pNVar7 = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nurndr.c",0x344);
                (*pNVar7)("NuRndrGobj : No free geom item slots!");
              }
              else {
                iVar12 = geomitem_cnt + -1;
                geomitem_cnt = iVar12;
                geomitem[iVar12].hdr.type = NURNDRITEM_GEOM3D;
                geomitem[iVar12].hdr.flags = 0;
                if (iVar16 == 1) {
                  geomitem[iVar12].hdr.flags = 1;
                }
                iVar8 = NuLightStoreCurrentLights();
                geomitem[iVar12].hdr.lights_index = (short)iVar8;
                geomitem[iVar12].mtx = (numtx_s *)pfVar15;
                geomitem[iVar12].geom = pnVar17;
                geomitem[iVar12].blendvals = blendvals;
                sVar9 = NuShaderAssignShader(pnVar17);
                ppnVar4 = nurndr_forced_mtl_table;
                geomitem[iVar12].hShader = sVar9;
                if ((ppnVar4 == (numtl_s **)0x0) ||
                   (uVar11 = (uint)pnVar17->mtls->special_id, uVar11 == 0)) {
                  mtl = nurndr_forced_mtl;
                  if (nurndr_forced_mtl == (numtl_s *)0x0) {
                    mtl = pnVar17->mtls;
                  }
                }
                else {
                  mtl = ppnVar4[uVar11];
                  if (mtl == (numtl_s *)0x0) goto LAB_800b4d14;
                }
                NuMtlAddRndrItem(mtl,&geomitem[iVar12].hdr);
              }
LAB_800b4d14:
              pnVar17 = pnVar17->next;
            } while (pnVar17 != (nugeom_s *)0x0);
          }
        }
      }
      else {
        if ((iVar14 == 1) && (iVar16 != 1)) {
LAB_800b4b84:
          iVar12 = 2;
          goto LAB_800b4b88;
        }
        iVar12 = iVar14;
        if (iVar14 != 0) goto LAB_800b4b88;
        if (iVar16 != 0) goto LAB_800b4b84;
      }
      gobj = gobj->next_gobj;
    } while (gobj != (nugobj_s *)0x0);
  }
  return iVar14;
}


int NuRndrGobjSkin2(nugobj_s *gobj,int nummtx,numtx_s *wm,float **blendvals)		//TODO

{
  float *pfVar1;
  float *pfVar2;
  int iVar3;
  int cclip;
  NUERRORFUNC *e;
  int currlgt;
  short sVar4;
  numtl_s *mtl;
  float *pfVar5;
  uint uVar6;
  int iVar7;
  float *pfVar8;
  numtx_s *m;
  nugeom_s *geom;
  numtl_s **mtl_2;
  
  if (gobj->culltype == 0) {
    cclip = NuCameraClipTestBoundingSphere
                      (&gobj->bounding_box_center,&gobj->bounding_radius_from_center,wm);
  }
  else {
    cclip = NuCameraClipTestExtents(&gobj->bounding_box_min,&gobj->bounding_box_max,wm);
  }
  if (cclip != 0) {
    rndrmtx_cnt = rndrmtx_cnt - nummtx;
    if (rndrmtx_cnt < 0) {
      e = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nurndr.c",0x3c3);
      (*e)("NuRndrGobjSkin : No free matrix slots!");
    }
    m = rndrmtx + rndrmtx_cnt;
    iVar3 = 0;
    if (0 < nummtx) {
      do {
        currlgt = iVar3 + 1;
        iVar7 = 0x30;
        pfVar1 = (float *)(m + iVar3);
        pfVar2 = (float *)(wm + iVar3);
        do {
          pfVar8 = pfVar2;
          pfVar5 = pfVar1;
          iVar7 = iVar7 + -0x18;
          *pfVar5 = *pfVar8;
          pfVar5[1] = pfVar8[1];
          pfVar5[2] = pfVar8[2];
          pfVar5[3] = pfVar8[3];
          (*(float (*) [4])(pfVar5 + 4))[0] = (*(float (*) [4])(pfVar8 + 4))[0];
          pfVar5[5] = pfVar8[5];
          pfVar1 = pfVar5 + 6;
          pfVar2 = pfVar8 + 6;
        } while (iVar7 != 0);
        pfVar5[6] = pfVar8[6];
        pfVar5[7] = pfVar8[7];
        pfVar5[8] = pfVar8[8];
        pfVar5[9] = pfVar8[9];
        iVar3 = currlgt;
      } while (currlgt < nummtx);
    }
    geom = gobj->geom;
    if (geom != (nugeom_s *)0x0) {
      do {
        if (geomitem_cnt == 0) {
          e = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nurndr.c",0x3f3);
          (*e)("NuRndrGobjSkin : No free geom item slots!");
        }
        else {
          iVar3 = geomitem_cnt + -1;
          geomitem_cnt = iVar3;
          geomitem[iVar3].hdr.type = NURNDRITEM_SKIN3D2;
          geomitem[iVar3].hdr.flags = 0;
          if (cclip == 1) {
            geomitem[iVar3].hdr.flags = 1;
          }
          currlgt = NuLightStoreCurrentLights();
          geomitem[iVar3].hdr.lights_index = (short)currlgt;
          geomitem[iVar3].blendvals = blendvals;
          geomitem[iVar3].mtx = m;
          geomitem[iVar3].geom = geom;
          sVar4 = NuShaderAssignShader(geom);
          mtl_2 = nurndr_forced_mtl_table;
          geomitem[iVar3].hShader = sVar4;
          if ((mtl_2 == (numtl_s **)0x0) || (uVar6 = (uint)geom->mtls->special_id, uVar6 == 0)) {
            mtl = nurndr_forced_mtl;
            if (nurndr_forced_mtl == (numtl_s *)0x0) {
              mtl = geom->mtls;
            }
          }
          else {
            mtl = mtl_2[uVar6];
            if (mtl == (numtl_s *)0x0) goto LAB_800b4f6c;
          }
          NuMtlAddRndrItem(mtl,&geomitem[iVar3].hdr);
        }
LAB_800b4f6c:
        geom = geom->next;
      } while (geom != (nugeom_s *)0x0);
    }
  }
  return cclip;
}

*/


int NuRndrTri2d(nuvtx_tltc1_s *vtx,numtl_s *mtl)	//CHECK

{
  int stride;
  int buf;
  nuvtx_tltc1_s *vb;
  int i;
  nugeom_s *geom;
  nuprim_s *prim;
  float *tc;
  
  NuMtlGet2dBuffer(mtl,NUPT_NDXTRI,&geom,&prim,&superbuffer_ptr,&superbuffer_end);
  if (geom->vtxmax - geom->vtxcount < 3) {
    e = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nurndr.c",0x5c0);
    (*e)("NuRndrTri2d : Vertex buffer full!");
  }
  if ((int)((uint)prim->max - (uint)prim->vertexCount) < 3) {
    e = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nurndr.c",0x5c2);
    (*e)("NuRndrTri2d : Primitive buffer full!");
  }
  stride = NuVtxStride(geom->vertex_type);
  buf = geom->hVB;
  if (buf == 0) {
    e = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nurndr.c",0x5c9);
    (*e)("NuRndrTri2d : Lock VB failed!");
  }
  i = 3;
  vb = (nuvtx_tltc1_s *)(buf + stride * geom->vtxcount);
  do {
    (vb->pnt).x = (vtx->pnt).x;
    (vb->pnt).y = (vtx->pnt).y;
    (vb->pnt).z = (vtx->pnt).z;
    vb->rhw = vtx->rhw;
    vb->diffuse = vtx->diffuse;
    vb->tc[0] = vtx->tc[0];
    tc = vtx->tc;
    vtx = vtx + 1;
    vb->tc[1] = tc[1];
    vb = (nuvtx_tltc1_s *)((int)vb->tc + stride + -0x14);
    geom->vtxcount = geom->vtxcount + 1;
    i = i + -1;
  } while (i != 0);
  return 1;
}


int NuRndrTri3d(nuvtx_tc1_s *vtx,numtl_s *mtl,numtx_s *wm) //TODO

{
  NUERRORFUNC *e;
  int stride;
  float fVar1;
  float fVar2;
  int iVar3;
  int Hvb;
  nuvec_s *dest;
  nuvec_s *a;
  byte in_cr0;
  byte in_cr1;
  byte in_cr2;
  byte in_cr3;
  byte unaff_cr4;
  byte in_cr5;
  byte in_cr6;
  byte in_cr7;
  nugeom_s *geom;
  nuprim_s *prim;
  uint local_20;
  nuvec_s *v;
  
  local_20 = (uint)(in_cr0 & 0xf) << 0x1c | (uint)(in_cr1 & 0xf) << 0x18 |
             (uint)(in_cr2 & 0xf) << 0x14 | (uint)(in_cr3 & 0xf) << 0x10 |
             (uint)(unaff_cr4 & 0xf) << 0xc | (uint)(in_cr5 & 0xf) << 8 | (uint)(in_cr6 & 0xf) <<  4
             | (uint)(in_cr7 & 0xf);
  NuMtlGet3dBuffer(mtl,NUPT_TRI,&geom,&prim,&superbuffer_ptr,&superbuffer_end);
  if (geom->vtxmax - geom->vtxcount < 3) {
    e = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nurndr.c",0x5f0);
    (*e)("NuRndrTri3d : Vertex buffer full!");
  }
  if ((int)((uint)prim->max - (uint)prim->vertexCount) < 3) {
    e = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nurndr.c",0x5f2);
    (*e)("NuRndrTri3d : Primitive buffer full!");
  }
  stride = NuVtxStride(geom->vertex_type);
  Hvb = geom->hVB;
  if (Hvb == 0) {
    e = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nurndr.c",0x5f9);
    (*e)("NuRndrTri3d : Lock VB failed!");
  }
  iVar3 = 3;
  a = &vtx->nrm;
  dest = (nuvec_s *)(Hvb + stride * geom->vtxcount);
  do {
    if (wm == (numtx_s *)0x0) {
      fVar1 = a[-1].y;
      fVar2 = a[-1].z;
      dest->x = a[-1].x;
      dest->y = fVar1;
      dest->z = fVar2;
      fVar1 = a->y;
      fVar2 = a->z;
      dest[1].x = a->x;
      dest[1].y = fVar1;
      dest[1].z = fVar2;
    }
    else {
      NuVecMtxTransform(dest,&vtx->pnt,wm);
      NuVecMtxRotate(dest + 1,a,wm);
    }
    vtx = vtx + 1;
    iVar3 = iVar3 + -1;
    dest[2].x = a[1].x;
    dest[2].y = a[1].y;
    v = a + 1;
    a = a + 3;
    dest[2].z = v->z;
    dest = (nuvec_s *)((int)&dest->x + stride);
  } while (iVar3 != 0);
  geom->vtxcount = geom->vtxcount + 3;
  return 1;
}


float NuRndrItemDist(nurndritem_s *item)

{
  nuvec_s pnt;
  float dist;
  
  dist = 0.0;
  if (item->type == NURNDRITEM_GEOM3D) {
    NuCameraTransformClip(&pnt,(nuvec_s *)(item[1].next + 3),1,NULL);	//TODO
    dist = pnt.z;
  }
  return dist;
}

/*undefined4 NuRndrStrip3d(nuvec_s *param_1,numtl_s *mtl,undefined4 param_3,int param_4)

{
		//TODO!

}*/

void NuRndrItem(nurndritem_s *item)

{
  nurndritemtype_s type;
  
  type = item->type;
  if (type == NURNDRITEM_GEOM2D) {
    DBTimerStart(0x1e);
    NuRndr2dItem((nugeomitem_s *)item);
    DBTimerEnd(0x1e);
  }
  else if (type == NURNDRITEM_GEOM3D) {
    DBTimerStart(0x1f);
    NuRndrGeomItem((nugeomitem_s *)item);
    DBTimerEnd(0x1f);
  }
  else if (type == NURNDRITEM_SKIN3D2) {
    DBTimerStart(0x20);
    NuRndrSkinItem2((nugeomitem_s *)item);
    DBTimerEnd(0x20);
  }
  else if (type == NURNDRITEM_GEOMFACE) {
    DBTimerStart(0x22);
    NuRndrFaceItem((nugeomitem_s *)item);
    DBTimerEnd(0x22);
  }
  else {
    e = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nurndr.c",0xbff);
    //(*e)("NuRndrItem : Unknown render item type!");
  }
  return;
}


void NuRndr2dItem(nugeomitem_s *item)

{
  int stride;
  nugeom_s *geom;
  int vtxcnt;
  float *hVB;
  nuprim_s *prim;
  
  if (item->mtx == (numtx_s *)0x0) {
    GS_LoadWorldMatrixIdentity();
  }
  else {
    GS_SetWorldMatrix();
  }
  SetupShaders(item);
  for (prim = item->geom->prim; prim != (nuprim_s *)0x0; prim = prim->next) {
    geom = item->geom;
    vtxcnt = geom->vtxcount;
    hVB = (float *)geom->hVB;
    stride = NuVtxStride(geom->vertex_type);
    GS_DrawTriList(vtxcnt,hVB,stride);
  }
  return;
}


/*

void NuRndrFaceItem(nugeomitem_s *item)	//TODO

{
  float *pfVar1;
  float *pfVar2;
  numtx_s *pnVar3;
  int iVar4;
  float *pfVar5;
  float *pfVar6;
  nugeom_s *pnVar7;
  float fVar8;
  nuvec_s *a;
  double dVar9;
  double dVar10;
  double dVar11;
  double dVar12;
  double dVar13;
  double dVar14;
  double dVar15;
  nuvec_s nStack_258;
  float local_24c;
  float local_248;
  float local_244;
  float local_240;
  float local_23c;
  float local_238;
  nuvec_s nStack_234;
  float local_228;
  float local_224;
  float local_220;
  float local_21c;
  float local_218;
  float local_214;
  nuvec_s nStack_210;
  float local_204;
  float local_200;
  float local_1fc;
  float local_1f8;
  float local_1f4;
  float local_1f0;
  nuvec_s nStack_1ec;
  float local_1e0;
  float local_1dc;
  float local_1d8;
  float local_1d4;
  float local_1d0;
  float local_1cc;
  nuvec_s vec_a;
  nuvec_s local_1b8;
  numtx_s nStack_1a8;
  float local_168 [12];
  undefined4 local_138;
  undefined4 local_134;
  undefined4 local_130;
  nuvec_s nStack_128;
  numtx_s nStack_118;
  numtx_s mtx_dest;
  
  DBTimerStart(0x1c);
  SetupShaders(item);
  NuMtxSetIdentity(&nStack_118);
  NuMtxSetIdentity(&nStack_1a8);
  pnVar3 = item->mtx;
  nStack_1a8.mtx[3][0] = pnVar3->mtx[3][0];
  nStack_1a8.mtx[3][1] = pnVar3->mtx[3][1];
  nStack_1a8.mtx[3][2] = pnVar3->mtx[3][2];
  GS_LoadWorldMatrixIdentity();
  iVar4 = 0x30;
  pfVar1 = (float *)item->mtx;
  pfVar2 = local_168;
  do {
    pfVar6 = pfVar2;
    pfVar5 = pfVar1;
    iVar4 = iVar4 + -0x18;
    *pfVar6 = *pfVar5;
    pfVar6[1] = pfVar5[1];
    pfVar6[2] = pfVar5[2];
    pfVar6[3] = pfVar5[3];
    (*(float (*) [4])(pfVar6 + 4))[0] = (*(float (*) [4])(pfVar5 + 4))[0];
    pfVar6[5] = pfVar5[5];
    pfVar1 = pfVar5 + 6;
    pfVar2 = pfVar6 + 6;
  } while (iVar4 != 0);
  pfVar6[6] = pfVar5[6];
  pnVar7 = item->geom;
  pfVar6[7] = pfVar5[7];
  pfVar6[8] = pfVar5[8];
  pfVar6[9] = pfVar5[9];
  local_130 = 0;
  local_138 = 0;
  local_134 = 0;
  for (; pnVar7 != (nugeom_s *)0x0; pnVar7 = pnVar7->next) {
    iVar4 = pnVar7->vtxmax;
    a = (nuvec_s *)pnVar7->vtxcount;
    if (0 < iVar4) {
      dVar9 = 0.5;
      dVar11 = 0.0;
      dVar10 = 1.0;
      do {
        fVar8 = a[1].z;
        dVar14 = (double)(float)((double)a[1].x * dVar9);
        dVar15 = (double)(float)((double)a[1].y * dVar9);
        NuVecMtxRotate(&nStack_128,a,(numtx_s *)local_168);
        dVar12 = -dVar14;
        dVar13 = -dVar15;
        a = a + 2;
        NuVecAdd(&vec_a,&nStack_128,(nuvec_s *)item->mtx->mtx[3]);
        NuMtxCalcCheapFaceOn(&mtx_dest,&vec_a);
        local_1b8.x = (float)dVar12;
        local_1b8.y = (float)dVar15;
        local_1b8.z = (float)dVar11;
        NuVecMtxTransform(&nStack_258,&local_1b8,&mtx_dest);
        local_23c = (float)dVar11;
        local_238 = (float)dVar11;
        local_24c = (float)dVar10;
        local_248 = (float)dVar11;
        local_244 = (float)dVar11;
        local_1b8.x = (float)dVar14;
        local_1b8.y = (float)dVar15;
        local_1b8.z = (float)dVar11;
        local_240 = fVar8;
        NuVecMtxTransform(&nStack_234,&local_1b8,&mtx_dest);
        local_1b8.x = (float)dVar14;
        local_218 = (float)dVar10;
        local_214 = (float)dVar11;
        local_228 = (float)dVar10;
        local_224 = (float)dVar11;
        local_220 = (float)dVar11;
        local_1b8.y = (float)dVar13;
        local_1b8.z = (float)dVar11;
        local_21c = fVar8;
        NuVecMtxTransform(&nStack_210,&local_1b8,&mtx_dest);
        local_1b8.x = (float)dVar12;
        local_1b8.y = (float)dVar13;
        local_1f4 = (float)dVar10;
        local_1f0 = (float)dVar10;
        local_204 = (float)dVar10;
        local_200 = (float)dVar11;
        local_1fc = (float)dVar11;
        local_1b8.z = (float)dVar11;
        local_1f8 = fVar8;
        NuVecMtxTransform(&nStack_1ec,&local_1b8,&mtx_dest);
        local_1d0 = (float)dVar11;
        local_1cc = (float)dVar10;
        local_1e0 = (float)dVar10;
        local_1dc = (float)dVar11;
        local_1d8 = (float)dVar11;
        local_1d4 = fVar8;
        GS_DrawPrimitiveQuad(&nStack_258);
        iVar4 = iVar4 + -1;
      } while (iVar4 != 0);
    }
  }
  DBTimerStart(0x1c);
  return;
}


 oid NuRndrGeomItem(nugeomitem_s *item)

{
  ushort uVar1;
  nuprimtype_e nVar2;
  int iVar3;
  nugeom_s *pnVar4;
  int iVar5;
  int iVar6;
  float *vertlist;
  nuprim_s *pnVar7;
  
  DBTimerStart(6);
  if (item->mtx == (numtx_s *)0x0) {
    GS_LoadWorldMatrixIdentity();
  }
  else {
    GS_SetWorldMatrix();
  }
  SetupShaders(item);
  for (pnVar7 = item->geom->prim; pnVar7 != (nuprim_s *)0x0; pnVar7 = pnVar7->next) {
    nVar2 = pnVar7->type;
    if (nVar2 == NUPT_TRISTRIP) {
      pnVar4 = item->geom;
      iVar5 = pnVar4->vtxcount;
      iVar6 = pnVar4->hVB;
      iVar3 = NuVtxStride(pnVar4->vertex_type);
      GS_DrawTriStrip(iVar5,iVar6,iVar3);
    }
    else if (nVar2 < NUPT_NDXLINE) {
      if (nVar2 != NUPT_LINE) {
        if (nVar2 < NUPT_TRI) {
          pnVar4 = item->geom;
          iVar5 = pnVar4->vtxcount;
          iVar6 = pnVar4->hVB;
          iVar3 = NuVtxStride(pnVar4->vertex_type);
          GS_DrawPointList(iVar5,iVar6,iVar3);
        }
        else {
          pnVar4 = item->geom;
          iVar5 = pnVar4->vtxcount;
          vertlist = (float *)pnVar4->hVB;
          iVar3 = NuVtxStride(pnVar4->vertex_type);
          GS_DrawTriList(iVar5,vertlist,iVar3);
        }
      }
    }
    else if (nVar2 == NUPT_NDXTRISTRIP) {
      uVar1 = pnVar7->vertexCount;
      iVar6 = pnVar7->idxbuff;
      iVar5 = item->geom->hVB;
      iVar3 = NuVtxStride(item->geom->vertex_type);
      GS_DrawIndexedTriStrip(uVar1,iVar6,iVar5,iVar3);
    }
    else if (nVar2 < NUPT_BEZPATCH) {
      if (nVar2 == NUPT_NDXTRI) {
        uVar1 = pnVar7->vertexCount;
        iVar6 = pnVar7->idxbuff;
        iVar5 = item->geom->hVB;
        iVar3 = NuVtxStride(item->geom->vertex_type);
        GS_DrawIndexedTriList(uVar1,iVar6,iVar5,iVar3);
      }
    }
    else if (nVar2 == NUPT_QUADLIST) {
      pnVar4 = item->geom;
      iVar5 = pnVar4->vtxcount;
      iVar6 = pnVar4->hVB;
      iVar3 = NuVtxStride(pnVar4->vertex_type);
      GS_DrawQuadList(iVar5,iVar6,iVar3);
    }
  }
  DBTimerEnd(6);
  return;
}

void NuRndrSkinItem2(nugeomitem_s *item)

{
  nuprim_s *prim;
  
  if ((item->blendvals == (float **)0x0) || (item->geom->blendgeom == (NuBlendShape *)0x0)) {
    DBTimerStart(5);
    SetupShaders(item);
    GS_LoadWorldMatrixIdentity();
    GS_SetVertexSource((float *)item->geom->hVB);
    for (prim = item->geom->prim; prim != (nuprim_s *)0x0; prim = prim->next) {
      NuShaderSetSkinningConstants(item,prim);
      if (prim->type == NUPT_NDXTRI) {
        SkinnedShader((uint)prim->vertexCount,(short *)prim->idxbuff);
      }
      else if (prim->type != NUPT_NDXTRISTRIP) {
        e = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nurndr.c",0xf4e);
        (*e)("NuRndrGeomItem : Unknown primitive type!");
      }
    }
    DBTimerEnd(5);
  }
  else {
    NuRndrBlendedSkinItem(item);
  }
  return;
}

/*

void NuRndrBlendedSkinItem(nugeomitem_s *item)

{
  float fVar1;
  int iVar2;
  NUERRORFUNC *error;
  int iVar3;
  float *pfVar4;
  int iVar5;
  int iVar6;
  nugeom_s *pnVar7;
  float *pfVar8;
  int iVar9;
  NuBlendShape *pNVar10;
  nuprim_s *prim;
  
  pNVar10 = item->geom->blendgeom;
  DBTimerStart(4);
  DBTimerStart(0xd);
  PPCMtmmcr0(0x8b);
  PPCMtmmcr1(0x78400000);
  pnVar7 = item->geom;
  iVar6 = 0;
  pfVar8 = (float *)pnVar7->hVB;
  pfVar4 = (float *)pnVar7->blendgeom->hVB;
  if (0 < pnVar7->vtxcount) {
    do {
      iVar2 = 0;
      *pfVar4 = *pfVar8;
      iVar9 = iVar6 + 1;
      pfVar4[1] = pfVar8[1];
      pfVar4[2] = pfVar8[2];
      if (0 < pNVar10->nblends) {
        iVar6 = iVar6 * 0xc;
        iVar3 = 0;
        do {
          iVar5 = *(int *)(iVar3 + (int)pNVar10->blend_offsets);
          if ((iVar5 != 0) &&
             (fVar1 = (*item->blendvals)[*(int *)(iVar3 + (int)pNVar10->ix)], fVar1 != 0.0)) {
            *pfVar4 = *(float *)(iVar6 + iVar5) * fVar1 + *pfVar4;
            pfVar4[1] = *(float *)(iVar6 + *(int *)(iVar3 + (int)pNVar10->blend_offsets) + 4) *
                        fVar1 + pfVar4[1];
            pfVar4[2] = *(float *)(iVar6 + *(int *)(iVar3 + (int)pNVar10->blend_offsets) + 8) *
                        fVar1 + pfVar4[2];
          }
          iVar2 = iVar2 + 1;
          iVar3 = iVar3 + 4;
        } while (iVar2 < pNVar10->nblends);
      }
      pfVar4 = pfVar4 + 3;
      iVar6 = iVar9;
      pfVar8 = pfVar8 + 0xe;
    } while (iVar9 < item->geom->vtxcount);
  }
  PPCMtmmcr1(0);
  PPCMtmmcr0(0);
  DBTimerEnd(0xd);
  SetupShaders(item);
  GS_LoadWorldMatrixIdentity();
  GS_SetVertexSource((float *)item->geom->hVB);
  GS_SetBlendSource(item->geom->blendgeom->hVB);
  for (prim = item->geom->prim; prim != (nuprim_s *)0x0; prim = prim->next) {
    NuShaderSetSkinningConstants(item,prim);
    if (prim->type == NUPT_NDXTRI) {
      SkinnedShaderBlend(prim->vertexCount,prim->idxbuff);
    }
    else {
      error = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nurndr.c",0x1087);
      (*error)("NuRndrGeomItem : Unknown primitive type!");
    }
  }
  DBTimerEnd(4);
  return;
}
*/

/*
void NuRndrAnglesZX(nuvec_s *src,nuvec_s *rot)

{
  int a;
  angle aVar1;
  double dVar2;
  nuvec_s local_38 [2];
  double local_20;
  
  aVar1 = NuAtan2D(src->z,src->y);
  dVar2 = 4503601774854144.0;
  local_20 = (double)CONCAT44(0x43300000,aVar1 ^ 0x80000000);
  rot->x = (float)(local_20 - 4503601774854144.0);
  a = (int)-(float)(local_20 - 4503601774854144.0);
  local_20 = (double)(longlong)a;
  NuVecRotateX(local_38,src,a);
  aVar1 = NuAtan2D(local_38[0].x,local_38[0].y);
  local_20 = (double)CONCAT44(0x43300000,-(uint)aVar1 ^ 0x80000000);
  rot->z = (float)(local_20 - dVar2);
  return;
}


void NuRndrAddFootPrint(int rot,float sizex,float sizez,int brightness,nuvec_s *pos,nuvec_s *norm ,
                       int gfx,int unknown)

{
  float fVar1;
  float fVar2;
  int iVar3;
  uint uVar4;
  nuvec4_s local_c8;
  nuvec4_s local_b8;
  nuvec4_s local_a8;
  nuvec4_s local_98;
  nuvec_s terrrot;
  numtx_s m;
  longlong local_30;
  uint free;
  
  fVar1 = NuTrigTable[rot & 0xffff];
  fVar2 = *(float *)((int)NuTrigTable + ((rot + 0x4000) * 4 & 0x3fffcU));
  local_a8.z = fVar2 * -sizez;
  local_a8.x = fVar1 * -sizez;
  local_b8.z = -fVar1 * -sizex;
  local_c8.w = 0.0;
  local_b8.x = fVar2 * -sizex;
  local_98.x = local_b8.x + local_a8.x;
  local_98.y = 0.0;
  local_98.z = local_b8.z + local_a8.z;
  local_a8.y = 0.0;
  local_c8.z = -fVar1 * sizex;
  local_b8.y = 0.0;
  local_a8.z = local_c8.z + local_a8.z;
  local_c8.y = 0.0;
  local_a8.x = fVar2 * sizex + local_a8.x;
  local_b8.x = local_b8.x + fVar1 * sizez;
  local_b8.z = local_b8.z + fVar2 * sizez;
  local_c8.x = fVar2 * sizex + fVar1 * sizez;
  local_c8.z = local_c8.z + fVar2 * sizez;
  local_98.w = 0.0;
  local_a8.w = 0.0;
  local_b8.w = 0.0;
  NuRndrAnglesZX(norm,&terrrot);
  NuMtxSetIdentity(&m);
  local_30 = (longlong)(int)terrrot.z;
  NuMtxRotateZ(&m,(angle)(int)terrrot.z);
  local_30 = (longlong)(int)terrrot.x;
  NuMtxRotateX(&m,(angle)(int)terrrot.x);
  NuVec4MtxTransformVU0(&local_c8,&local_c8,&m);
  NuVec4MtxTransformVU0(&local_b8,&local_b8,&m);
  NuVec4MtxTransformVU0(&local_a8,&local_a8,&m);
  NuVec4MtxTransformVU0(&local_98,&local_98,&m);
  free = NuRndrFootFree & 0x3f;
  NuRndrFootData[free].pnts[0].x = local_c8.x + pos->x;
  NuRndrFootData[free].pnts[0].y = local_c8.y + pos->y;
  uVar4 = NuRndrFootFree + 1;
  NuRndrFootData[free].pnts[0].z = local_c8.z + pos->z;
  iVar3 = NuRndrFootFree + 9;
  NuRndrFootData[free].pnts[1].x = local_b8.x + pos->x;
  NuRndrFootData[free].pnts[1].y = local_b8.y + pos->y;
  NuRndrFootData[free].pnts[1].z = local_b8.z + pos->z;
  NuRndrFootData[free].pnts[2].x = local_a8.x + pos->x;
  NuRndrFootData[free].pnts[2].y = local_a8.y + pos->y;
  NuRndrFootData[free].pnts[2].z = local_a8.z + pos->z;
  NuRndrFootData[free].pnts[3].x = local_98.x + pos->x;
  NuRndrFootData[free].pnts[3].y = local_98.y + pos->y;
  NuRndrFootFree = uVar4;
  NuRndrFootData[free].pnts[3].z = local_98.z + pos->z;
  NuRndrFootData[free].brightness = (short)brightness;
  NuRndrFootData[free].gfx = (char)(gfx << 2);
  NuRndrFootData[free].timer = '\x10';
  for (; (int)uVar4 < iVar3; uVar4 = uVar4 + 1) {
    if ('\x0f' < NuRndrFootData[uVar4 & 0x3f].timer) {
      NuRndrFootData[uVar4 & 0x3f].timer = '\x0f';
    }
  }
  return;
}


void NuRndrFootPrints(numtl_s *mtl,float *u,float *v)

{
		//TODO!!!

}


*/


float * NuRndrCreateBlendShapeDeformerWeightsArray(int nweights)

{
  float *ptr;
  
  rndr_blend_shape_deformer_wt_cnt = rndr_blend_shape_deformer_wt_cnt - nweights;
  if (rndr_blend_shape_deformer_wt_cnt < 0) {
    e = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nurndr.c",0x11f4);
    //(*e)("No free blend shape deformer weights");
    ptr = NULL;
  }
  else {
    ptr = (float *)(&rndr_blend_shape_deformer_wts + rndr_blend_shape_deformer_wt_cnt * 4);
  }
  return ptr;
}


float ** NuRndrCreateBlendShapeDWAPointers(int size)

{
  float **ptr;
  NUERRORFUNC *e;
  
  rndr_blend_shape_deformer_wt_ptrs_cnt = rndr_blend_shape_deformer_wt_ptrs_cnt - size;
  if (rndr_blend_shape_deformer_wt_cnt < 0) {
    e = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nurndr.c",0x1206);
    (*e)("No free blend shape deformer weights");
    ptr = (float **)0x0;
  }
  else {
    ptr = (float **)(&rndr_blend_shape_deformer_wt_ptrs + rndr_blend_shape_deformer_wt_ptrs_cnt *  4)
    ;
  }
  return ptr;
}

void NuRndrInitWorld(void)

{
  char *timer;
  int lp;
  
  lp = 0x40;
  NuRndrShadMaskCount = 0;
  timer = &NuRndrFootData[0x3f].timer;
  do {
    *timer = '\0';
    timer = timer + -0x34;
    lp = lp + -1;
  } while (lp != 0);
  return;
}

void NuRndrFx(int paused,nuvec_s *playerpos)

{
  NuLgtArcLaserDraw(paused);
  return;
}


void NuRndrTrail(int trailpt,trail *trail,int TRAILCOUNT)

{
		//TODO!!!

}

void NuRndrWaterRip(numtl_s *mtl)	//TODO

{
  float fVar1;
  short sVar2;
  int iVar3;
  float fVar4;
  undefined4 *puVar5;
  float fVar6;
  short *psVar7;
  int iVar8;
  WaterDat *dat;
  double dVar9;
  double dVar10;
  double dVar11;
  double dVar12;
  double dVar13;
  
  iVar8 = 0;
  NuCameraGetMtx();
  NuRndrWaterRipCnt = 0;
  dat = NuRndrWaterRipDat;
  do {
    if ((dat->timer != 0) &&
       (iVar3 = NuCameraClipTestPoints(&dat->pos,1,(numtx_s *)0x0), iVar3 == 0)) {
      indexlist.272[NuRndrWaterRipCnt] = (short)iVar8;
      NuRndrWaterRipCnt = NuRndrWaterRipCnt + 1;
    }
    iVar8 = iVar8 + 1;
    dat = dat + 1;
  } while (iVar8 < 0x20);
  if (NuRndrWaterRipCnt != 0) {
    iVar8 = 4;
    puVar5 = &DAT_801e112c;
    do {
      puVar5[-2] = 0x3f800000;
      puVar5[-1] = 0;
      *puVar5 = 0;
      puVar5 = puVar5 + 9;
      iVar8 = iVar8 + -1;
    } while (iVar8 != 0);
    DAT_801e11b4 = &DAT_801e1184;
    vtx2.271 = &vtx.270;
    iVar8 = 0;
    DAT_801e11ac = &DAT_801e113c;
    DAT_801e11b0 = &DAT_801e1160;
    if (0 < NuRndrWaterRipCnt) {
      dVar9 = 0.1;
      dVar10 = 0.75;
      dVar11 = 0.25;
      dVar13 = 0.5;
      dVar12 = 1.0;
      psVar7 = indexlist.272;
      do {
        sVar2 = *psVar7;
        DAT_801e1134 = (float)dVar10;
        DAT_801e1138 = (float)dVar11;
        DAT_801e1158 = (float)dVar12;
        DAT_801e115c = (float)dVar11;
        DAT_801e117c = (float)dVar10;
        iVar8 = iVar8 + 1;
        DAT_801e1180 = (float)dVar13;
        psVar7 = psVar7 + 1;
        fVar6 = NuRndrWaterRipDat[sVar2].pos.x;
        fVar4 = NuRndrWaterRipDat[sVar2].pos.z;
        fVar1 = NuRndrWaterRipDat[sVar2].cursize;
        DAT_801e113c = fVar6 + fVar1;
        DAT_801e1168 = fVar4 + fVar1;
        DAT_801e111c = (float)((double)NuRndrWaterRipDat[sVar2].pos.y - dVar9);
        DAT_801e1130 = NuRndrWaterRipDat[sVar2].curshade + 0x80808080;
        vtx.270 = fVar6 - fVar1;
        DAT_801e1120 = fVar4 - fVar1;
        DAT_801e11a0 = (float)dVar12;
        DAT_801e11a4 = (float)dVar13;
        DAT_801e1140 = DAT_801e111c;
        DAT_801e1144 = DAT_801e1120;
        DAT_801e1154 = DAT_801e1130;
        DAT_801e1160 = vtx.270;
        DAT_801e1164 = DAT_801e111c;
        DAT_801e1178 = DAT_801e1130;
        DAT_801e1184 = DAT_801e113c;
        DAT_801e1188 = DAT_801e111c;
        DAT_801e118c = DAT_801e1168;
        DAT_801e119c = DAT_801e1130;
        NuRndrStrip3d((nuvec_s *)&vtx2.271,mtl,0,4);
      } while (iVar8 < NuRndrWaterRipCnt);
    }
  }
  return;
}

void NuRndrRectUV2di(int x,int y,int w,int h,float tx,float ty,float tw,float th,int col,
                    numtl_s *mtl)

{
  double dVar1;
  double dVar2;
  double dVar3;
  double dVar4;
  float local_118;
  float local_114;
  undefined4 local_110;
  undefined4 local_10c;
  int local_108;
  float local_104;
  float local_100;
  float local_fc;
  float local_f8;
  undefined4 local_f4;
  undefined4 local_f0;
  int local_ec;
  float local_e8;
  float local_e4;
  float local_e0;
  float local_dc;
  undefined4 local_d8;
  undefined4 local_d4;
  int local_d0;
  float local_cc;
  float local_c8;
  float local_c4;
  float local_c0;
  undefined4 local_bc;
  undefined4 local_b8;
  int local_b4;
  float local_b0;
  float local_ac;
  float local_a8;
  float local_a4;
  undefined4 local_a0;
  undefined4 local_9c;
  int local_98;
  float local_94;
  float local_90;
  float local_8c;
  float local_88;
  undefined4 local_84;
  undefined4 local_80;
  int local_7c;
  float local_78;
  float local_74;
  undefined4 local_48;
  uint uStack_44;
  
  dVar4 = (double)th;
  dVar3 = (double)tw;
  dVar2 = (double)ty;
  dVar1 = (double)tx;
  GS_SetOrthMatrix();
  uStack_44 = (y + h) - 1U ^ 0x80000000;
  local_118 = (float)((double)CONCAT44(0x43300000,x ^ 0x80000000) - 4503601774854144.0);
  local_114 = (float)((double)CONCAT44(0x43300000,y ^ 0x80000000) - 4503601774854144.0);
  local_e8 = (float)(dVar1 + dVar3);
  local_c8 = (float)(dVar2 + dVar4);
  local_48 = 0x43300000;
  local_fc = (float)((double)CONCAT44(0x43300000,(x + w) - 1U ^ 0x80000000) - 4503601774854144.0);
  local_ac = (float)dVar2;
  local_dc = (float)((double)CONCAT44(0x43300000,uStack_44) - 4503601774854144.0);
  local_110 = 0x358637bd;
  local_10c = 0x3f800000;
  local_f4 = 0x358637bd;
  local_f0 = 0x3f800000;
  local_d8 = 0x358637bd;
  local_d4 = 0x3f800000;
  local_bc = 0x358637bd;
  local_b8 = 0x3f800000;
  local_104 = (float)dVar1;
  local_100 = (float)dVar2;
  local_e4 = (float)dVar2;
  local_cc = (float)dVar1;
  local_a0 = 0x358637bd;
  local_84 = 0x358637bd;
  local_80 = 0x3f800000;
  local_78 = (float)dVar1;
  local_9c = 0x3f800000;
  local_108 = col;
  local_f8 = local_114;
  local_ec = col;
  local_e0 = local_118;
  local_d0 = col;
  local_c4 = local_fc;
  local_c0 = local_114;
  local_b4 = col;
  local_b0 = local_e8;
  local_a8 = local_fc;
  local_a4 = local_dc;
  local_98 = col;
  local_94 = local_e8;
  local_90 = local_c8;
  local_8c = local_118;
  local_88 = local_dc;
  local_7c = col;
  local_74 = local_c8;
  ResetShaders();
  NuTexSetTexture(0,0);
  NuMtlSetRenderStates(mtl);
  NuTexSetTextureStates(mtl);
  SetVertexShader(0x144);
  NuTexSetTexture(0,mtl->tid);
  GS_DrawTriListTTL(&local_118,6);
  return;
}


void NuRndrShadPolys(numtl_s *mtl)

{
  float fVar1;
  nuvec_s *pnVar2;
  float fVar3;
  undefined4 *puVar4;
  float fVar5;
  ShadPolDat *pSVar6;
  int iVar7;
  double dVar8;
  double dVar9;
  double dVar10;
  
  if (NuRndrShadowCnt != 0) {
    iVar7 = 4;
    puVar4 = &DAT_801e120c;
    do {
      puVar4[-2] = 0;
      puVar4[-1] = 0;
      *puVar4 = 0;
      puVar4 = puVar4 + 9;
      iVar7 = iVar7 + -1;
    } while (iVar7 != 0);
    DAT_801e1294 = &DAT_801e1264;
    vtx2.283 = &vtx.282;
    iVar7 = 0;
    DAT_801e128c = &DAT_801e121c;
    DAT_801e1290 = &DAT_801e1240;
    if (0 < NuRndrShadowCnt) {
      dVar8 = 0.009999999776482582;
      dVar9 = 0.0;
      dVar10 = 1.0;
      pSVar6 = NuRndrShadPolDat;
      do {
        fVar3 = (pSVar6->pos).x;
        pnVar2 = &pSVar6->pos;
        fVar5 = (pSVar6->pos).z;
        iVar7 = iVar7 + 1;
        fVar1 = pSVar6->size;
        pSVar6 = pSVar6 + 1;
        DAT_801e121c = fVar3 + fVar1;
        DAT_801e1248 = fVar5 + fVar1;
        DAT_801e127c = 0xff000000;
        DAT_801e11fc = (float)((double)pnVar2->y + dVar8);
        vtx.282 = fVar3 - fVar1;
        DAT_801e1200 = fVar5 - fVar1;
        DAT_801e1210 = 0xff000000;
        DAT_801e1234 = 0xff000000;
        DAT_801e1258 = 0xff000000;
        DAT_801e1214 = (float)dVar9;
        DAT_801e1218 = (float)dVar9;
        DAT_801e1238 = (float)dVar10;
        DAT_801e123c = (float)dVar9;
        DAT_801e125c = (float)dVar9;
        DAT_801e1260 = (float)dVar10;
        DAT_801e1280 = (float)dVar10;
        DAT_801e1284 = (float)dVar10;
        DAT_801e1220 = DAT_801e11fc;
        DAT_801e1224 = DAT_801e1200;
        DAT_801e1240 = vtx.282;
        DAT_801e1244 = DAT_801e11fc;
        DAT_801e1264 = DAT_801e121c;
        DAT_801e1268 = DAT_801e11fc;
        DAT_801e126c = DAT_801e1248;
        NuRndrStrip3d((nuvec_s *)&vtx2.283,mtl,0,4);
      } while (iVar7 < NuRndrShadowCnt);
    }
    NuRndrShadowCnt = 0;
  }
  return;
}


void NuRndrWaterRippleUpdate(int count)

{
  float fVar1;
  short sVar2;
  WaterDat *pWVar3;
  int iVar4;
  double dVar5;
  double local_8;
  
  iVar4 = 0x20;
  pWVar3 = NuRndrWaterRipDat;
  do {
    if (pWVar3->timer != 0) {
      sVar2 = pWVar3->timer - (short)count;
      pWVar3->timer = sVar2;
      if (sVar2 < 1) {
        pWVar3->timer = 0;
      }
      else {
        local_8 = (double)CONCAT44(0x43300000,(int)sVar2 ^ 0x80000000);
        dVar5 = local_8 - 4503601774854144.0;
        local_8 = (double)CONCAT44(0x43300000,(int)pWVar3->otimer ^ 0x80000000);
        fVar1 = (float)dVar5 / (float)(local_8 - 4503601774854144.0);
        pWVar3->cursize = (pWVar3->size - pWVar3->endsize) * fVar1 + pWVar3->endsize;
        if (fVar1 <= 0.75) {
          fVar1 = fVar1 * 1.333333;
        }
        else {
          fVar1 = (1.0 - fVar1) * 4.0;
        }
        local_8 = (double)CONCAT44(0x43300000,pWVar3->shade >> 0x18);
        pWVar3->curshade =
             (int)((float)(local_8 - 4503599627370496.0) * fVar1) * 0x1000000 +
             (pWVar3->shade & 0xffffff);
      }
    }
    pWVar3 = pWVar3 + 1;
    iVar4 = iVar4 + -1;
  } while (iVar4 != 0);
  return;
}


void NuRndrAddWaterRipple(nuvec_s *pos,float size,float endsize,int duration,int shade)

{
  float fVar1;
  float fVar2;
  WaterDat *pWVar3;
  float fVar4;
  int iVar5;
  
  iVar5 = 0x20;
  pWVar3 = NuRndrWaterRipDat;
  do {
    if (pWVar3->timer == 0) {
      fVar4 = pos->z;
      fVar2 = pos->x;
      pos->y = pos->y + 0.01;
      fVar1 = pos->y;
      pWVar3->otimer = (short)duration;
      (pWVar3->pos).x = fVar2;
      (pWVar3->pos).y = fVar1;
      (pWVar3->pos).z = fVar4;
      pWVar3->cursize = size;
      pWVar3->endsize = endsize;
      pWVar3->shade = shade;
      pWVar3->curshade = 0;
      pWVar3->size = size;
      pWVar3->timer = (short)duration;
      return;
    }
    pWVar3 = pWVar3 + 1;
    iVar5 = iVar5 + -1;
  } while (iVar5 != 0);
  return;
}


void NuRndrAddShadow(double param_1,nuvec_s *v,short param_3,short param_4,short param_5, short param_6) //TODO!!!

{
  float y;
  int iVar1;
  float z;
  
  iVar1 = NuCameraClipTestPoints(v,1,(numtx_s *)0x0);
  if ((iVar1 == 0) && (NuRndrShadowCnt < 0x80)) {
    z = v->z;
    v->y = v->y + 0.01;
    y = v->y;
    NuRndrShadPolDat[NuRndrShadowCnt].pos.x = v->x;
    NuRndrShadPolDat[NuRndrShadowCnt].pos.y = y;
    NuRndrShadPolDat[NuRndrShadowCnt].pos.z = z;
    NuRndrShadPolDat[NuRndrShadowCnt].size = (float)param_1;
    NuRndrShadPolDat[NuRndrShadowCnt].zrot = param_6;
    NuRndrShadPolDat[NuRndrShadowCnt].shade = param_3;
    NuRndrShadPolDat[NuRndrShadowCnt].xrot = param_4;
    NuRndrShadPolDat[NuRndrShadowCnt].yrot = param_5;
    NuRndrShadowCnt = NuRndrShadowCnt + 1;
  }
  return;
}


void NuRndrInitEx(int streambuffersize)

{
  NuRndrInit();
  return;
}

int NuRndrGScnObj(nugobj_s *gobj,numtx_s *wm)

{
  int ret;
  
  ret = NuRndrGobj(gobj,wm,(float **)0x0);
  return ret;
}

/*undefined NuRndrRect2di(int a,int b,int SWIDTH,int SHEIGHT,int fadecol,numtl_s *mtl)

{
  int fadecol;
  
  GS_DrawFade(fadecol);
  return;
}


void NuRndrParticleGroup(_sceDmaTag *data,setup_s *setup,numtl_s *mtl,float time,numtx_s *wm)

{
  int i;
  rdata_s *rdata;
  double dVar1;
  bool check;
  
  dVar1 = (double)time;
  setup->DmaHeader[3] = (int)time;
  check = false;
  i = 0;
  do {
    if (check) {
      return;
    }
    rdata = (rdata_s *)((rdata_s *)data)->dmadata[1];
    if (((rdata_s *)data)->dmadata[0] == 0) {
      if (rdata != (rdata_s *)0x0) {
        renderpsdma(0x20,(rdata_s *)data,setup,mtl,(float)dVar1,wm);
        data = (_sceDmaTag *)rdata;
      }
    }
    else {
      if (((rdata_s *)data)->dmadata[0] == 1) {
        renderpsdma(0x20,(rdata_s *)data,setup,mtl,(float)dVar1,wm);
      }
      check = true;
    }
    i = i + 1;
  } while (i < 0x101);
  return;
}

*/

