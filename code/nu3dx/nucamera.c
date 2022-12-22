#include <nucore/numem.h>
#include "nucamera.h"

u32 clip_enable = 1;
Vec cam_axes = { 1.0f, 1.0f, 1.0f };

nucamera_s global_camera;
Mtx* vmtx;
Mtx pmtx;
Mtx vpcsmtx;

nucamera_s * NuCameraCreate(void)

{
  nucamera_s *cam = (nucamera_s *)NuMemAlloc(sizeof(nucamera_s));
  NuMtxSetIdentity(&cam->mtx);
  cam->nearclip = 0.3;
  cam->portalnearclip = 0;
  cam->farclip = 1000.0;
  cam->aspect = 0.75;
  (cam->scale).x = 1.0;
  cam->fov = 0.75;
  (cam->scale).z = 1.0;
  (cam->scale).y = 1.0;
  return cam;
}

Mtx* NuCameraGetMtx()
{
    return &global_camera.mtx;
}

Mtx* NuCameraGetViewMtx()
{
    return vmtx;
}

Mtx* NuCameraGetProjectionMtx()
{
    return &pmtx;
}

Mtx* NuCameraGetVPCSMtx()
{
    return &vpcsmtx;
}

f32 NuCameraDistSqr(Vec* point)
{
    return NuVecDistSqr(point, (Vec*)&global_camera.mtx.m41, NULL);
}

void FixAxes(Mtx* m)
{
    m->m11 *= cam_axes.x;
    m->m12 *= cam_axes.x;
    m->m13 *= cam_axes.x;
    m->m14 *= cam_axes.x;
    m->m21 *= cam_axes.y;
    m->m22 *= cam_axes.y;
    m->m23 *= cam_axes.y;
    m->m24 *= cam_axes.y;
    m->m31 *= cam_axes.z;
    m->m32 *= cam_axes.z;
    m->m33 *= cam_axes.z;
    m->m34 *= cam_axes.z;
}

void NuCameraEnableClipping(u32 enable)
{
    clip_enable = enable;
}



void NuCameraCalcFrustrumPlanes(void)	//CHECK

{
  double f;
  float fVar1;
  
  frustrumplanes[2].y = vpmtx.mtx[1][3] - vpmtx.mtx[1][0];
  frustrumplanes[2].x = vpmtx.mtx[0][3] - vpmtx.mtx[0][0];
  frustrumplanes[2].z = vpmtx.mtx[2][3] - vpmtx.mtx[2][0];
  frustrumplanes[2].w = vpmtx.mtx[3][3] - vpmtx.mtx[3][0];
  fVar1 = NuFsqrt(frustrumplanes[2].z * frustrumplanes[2].z +
                  frustrumplanes[2].x * frustrumplanes[2].x +
                  frustrumplanes[2].y * frustrumplanes[2].y);
  f = (double)fVar1;
  frustrumplanes[2].x = NuFpDiv(frustrumplanes[2].x,fVar1);
  frustrumplanes[2].y = NuFpDiv(frustrumplanes[2].y,(float)f);
  frustrumplanes[2].z = NuFpDiv(frustrumplanes[2].z,(float)f);
  frustrumplanes[2].w = NuFpDiv(frustrumplanes[2].w,(float)f);
  frustrumplanes[3].y = vpmtx.mtx[1][3] + vpmtx.mtx[1][0];
  frustrumplanes[3].x = vpmtx.mtx[0][3] + vpmtx.mtx[0][0];
  frustrumplanes[3].z = vpmtx.mtx[2][3] + vpmtx.mtx[2][0];
  frustrumplanes[3].w = vpmtx.mtx[3][3] + vpmtx.mtx[3][0];
  fVar1 = NuFsqrt(frustrumplanes[3].z * frustrumplanes[3].z +
                  frustrumplanes[3].x * frustrumplanes[3].x +
                  frustrumplanes[3].y * frustrumplanes[3].y);
  f = (double)fVar1;
  frustrumplanes[3].x = NuFpDiv(frustrumplanes[3].x,fVar1);
  frustrumplanes[3].y = NuFpDiv(frustrumplanes[3].y,(float)f);
  frustrumplanes[3].z = NuFpDiv(frustrumplanes[3].z,(float)f);
  frustrumplanes[3].w = NuFpDiv(frustrumplanes[3].w,(float)f);
  frustrumplanes[5].y = vpmtx.mtx[1][3] - vpmtx.mtx[1][1];
  frustrumplanes[5].x = vpmtx.mtx[0][3] - vpmtx.mtx[0][1];
  frustrumplanes[5].z = vpmtx.mtx[2][3] - vpmtx.mtx[2][1];
  frustrumplanes[5].w = vpmtx.mtx[3][3] - vpmtx.mtx[3][1];
  fVar1 = NuFsqrt(frustrumplanes[5].z * frustrumplanes[5].z +
                  frustrumplanes[5].x * frustrumplanes[5].x +
                  frustrumplanes[5].y * frustrumplanes[5].y);
  f = (double)fVar1;
  frustrumplanes[5].x = NuFpDiv(frustrumplanes[5].x,fVar1);
  frustrumplanes[5].y = NuFpDiv(frustrumplanes[5].y,(float)f);
  frustrumplanes[5].z = NuFpDiv(frustrumplanes[5].z,(float)f);
  frustrumplanes[5].w = NuFpDiv(frustrumplanes[5].w,(float)f);
  frustrumplanes[4].y = vpmtx.mtx[1][3] + vpmtx.mtx[1][1];
  frustrumplanes[4].x = vpmtx.mtx[0][3] + vpmtx.mtx[0][1];
  frustrumplanes[4].z = vpmtx.mtx[2][3] + vpmtx.mtx[2][1];
  frustrumplanes[4].w = vpmtx.mtx[3][3] + vpmtx.mtx[3][1];
  fVar1 = NuFsqrt(frustrumplanes[4].z * frustrumplanes[4].z +
                  frustrumplanes[4].x * frustrumplanes[4].x +
                  frustrumplanes[4].y * frustrumplanes[4].y);
  f = (double)fVar1;
  frustrumplanes[4].x = NuFpDiv(frustrumplanes[4].x,fVar1);
  frustrumplanes[4].y = NuFpDiv(frustrumplanes[4].y,(float)f);
  frustrumplanes[4].z = NuFpDiv(frustrumplanes[4].z,(float)f);
  frustrumplanes[4].w = NuFpDiv(frustrumplanes[4].w,(float)f);
  frustrumplanes[1].y = vpmtx.mtx[1][3] - vpmtx.mtx[1][2];
  frustrumplanes[1].x = vpmtx.mtx[0][3] - vpmtx.mtx[0][2];
  frustrumplanes[1].z = vpmtx.mtx[2][3] - vpmtx.mtx[2][2];
  frustrumplanes[1].w = vpmtx.mtx[3][3] - vpmtx.mtx[3][2];
  fVar1 = NuFsqrt(frustrumplanes[1].z * frustrumplanes[1].z +
                  frustrumplanes[1].x * frustrumplanes[1].x +
                  frustrumplanes[1].y * frustrumplanes[1].y);
  f = (double)fVar1;
  frustrumplanes[1].x = NuFpDiv(frustrumplanes[1].x,fVar1);
  frustrumplanes[1].y = NuFpDiv(frustrumplanes[1].y,(float)f);
  frustrumplanes[1].z = NuFpDiv(frustrumplanes[1].z,(float)f);
  frustrumplanes[1].w = NuFpDiv(frustrumplanes[1].w,(float)f);
  frustrumplanes[0].y = vpmtx.mtx[1][3] + vpmtx.mtx[1][2];
  frustrumplanes[0].x = vpmtx.mtx[0][3] + vpmtx.mtx[0][2];
  frustrumplanes[0].z = vpmtx.mtx[2][3] + vpmtx.mtx[2][2];
  frustrumplanes[0].w = vpmtx.mtx[3][3] + vpmtx.mtx[3][2];
  fVar1 = NuFsqrt(frustrumplanes[0].z * frustrumplanes[0].z +
                  frustrumplanes[0].x * frustrumplanes[0].x +
                  frustrumplanes[0].y * frustrumplanes[0].y);
  f = (double)fVar1;
  frustrumplanes[0].x = NuFpDiv(frustrumplanes[0].x,fVar1);
  frustrumplanes[0].y = NuFpDiv(frustrumplanes[0].y,(float)f);
  frustrumplanes[0].z = NuFpDiv(frustrumplanes[0].z,(float)f);
  frustrumplanes[0].w = NuFpDiv(frustrumplanes[0].w,(float)f);
  return;
}

void NuCameraSet(struct nucamera_s *camera) //CHECK

{
  int size;
  float *pfVar3;
  struct nucamera_s *glob_cam;
  struct numtx_s *pfVar2;
  float *pfVar4;
  struct numtx_s *uvmtx2;
  struct numtx_s *uvmtx;
  float *pfVar5;
  struct numtx_s *pfVar1;
  float *pfVar6;
  double dVar7;
  double dVar8;
  struct numtx_s mM;
  struct numtx_s minv;
  struct numtx_s m;
  struct nucamfxmode_s camfx_;
  float fov;
  
  size = 0x60;
  glob_cam = &global_camera;
  do {
    size = size + -0x18;
    (glob_cam->mtx).mtx[0] = (camera->mtx).mtx[0];
    (glob_cam->mtx).mtx[1] = (camera->mtx).mtx[1];
    (glob_cam->mtx).mtx[2] = (camera->mtx).mtx[2];
    (glob_cam->mtx).mtx[3] = (camera->mtx).mtx[3];
    (glob_cam->mtx).mtx[1][0] = (camera->mtx).mtx[1][0];
    uvmtx = &camera->mtx;
    camera = (nucamera_s *)((camera->mtx).mtx[1] + 2);
    (glob_cam->mtx).mtx[1][1] = uvmtx->mtx[1][1];
    glob_cam = (nucamera_s *)((glob_cam->mtx).mtx[1] + 2);
  } while (size != 0);
  FixAxes(&global_camera.mtx);
  if (camfx == NUCAMFX_NONE) {
    NuMtxInv(&vmtx,&global_camera.mtx);
    NuMtxScale(&vmtx,&global_camera.scale);
  }
  else {
    NuMtxSetIdentity(&m);
    m.mtx[1][1] = -1.0;
    NuMtxInv(&mM,&global_camera.mtx);
    NuMtxInv(&minv,&global_reflect.mtx);
    size = 0x30;
    pfVar4 = (float *)&vmtx;
    pfVar6 = (float *)&minv;
    do {
      pfVar1 = (numtx_s *)pfVar6;
      pfVar2 = (numtx_s *)pfVar4;
      size = size + -0x18;
      pfVar2->mtx[0] = pfVar1->mtx[0];
      pfVar2->mtx[1] = pfVar1->mtx[1];
      pfVar2->mtx[2] = pfVar1->mtx[2];
      pfVar2->mtx[3] = pfVar1->mtx[3];
      pfVar2->mtx[1][0] = pfVar1->mtx[1][0];
      pfVar6 = pfVar1->mtx[1] + 2;
      pfVar2->mtx[1][1] = pfVar1->mtx[1][1];
      camfx_ = camfx;
      pfVar4 = pfVar2->mtx[1] + 2;
    } while (size != 0);
    *pfVar4 = *pfVar6;
    pfVar2->mtx[1][3] = pfVar1->mtx[1][3];
    pfVar2->mtx[2][0] = pfVar1->mtx[2][0];
    pfVar2->mtx[2][1] = pfVar1->mtx[2][1];
    if (camfx_ == NUCAMFX_REFLECT) {
      NuMtxMul(&vmtx,&vmtx,&m);
    }
    NuMtxMul(&vmtx,&vmtx,&global_reflect.mtx);
    NuMtxMul(&vmtx,&vmtx,&mM);
  }
  SetProjectionMatrix(&pmtx,global_camera.fov,global_camera.aspect,global_camera.nearclip,
                      global_camera.farclip);
  NuVpGetClippingMtx(&cmtx);
  NuVpGetScalingMtx(&smtx);
  NuMtxMulH(&vpmtx,&vmtx,&pmtx);
  NuMtxMulH(&vpcmtx,&vpmtx,&cmtx);
  NuMtxMulH(&vpcsmtx,&vpcmtx,&smtx);
  NuMtxMulH(&csmtx,&cmtx,&smtx);
  NuMtxInvH(&icsmtx,&csmtx);
  NuMtxInvH(&ivpcsmtx,&vpcsmtx);
  size = 0x30;
  uvmtx = &global_reflect.uvmtx;
  pfVar4 = (float *)&vpcmtx;
  do {
    pfVar6 = pfVar4;
    uvmtx2 = uvmtx;
    size = size + -0x18;
    uvmtx2->mtx[0] = *pfVar6;
    uvmtx2->mtx[1] = pfVar6[1];
    uvmtx2->mtx[2] = pfVar6[2];
    uvmtx2->mtx[3] = pfVar6[3];
    uvmtx2->mtx[1][0] = (*(float (*) [4])(pfVar6 + 4))[0];
    uvmtx2->mtx[1][1] = pfVar6[5];
    uvmtx = (numtx_s *)(uvmtx2->mtx[1] + 2);
    pfVar4 = pfVar6 + 6;
  } while (size != 0);
  uvmtx->mtx[0] = pfVar6[6];
  size = 0x30;
  uvmtx2->mtx[1][3] = pfVar6[7];
  uvmtx2->mtx[2][0] = pfVar6[8];
  uvmtx2->mtx[2][1] = pfVar6[9];
  pfVar4 = (float *)&vpc_vport_mtx;
  pfVar6 = (float *)&vpcmtx;
  do {
    pfVar5 = pfVar6;
    pfVar3 = pfVar4;
    size = size + -0x18;
    *pfVar3 = *pfVar5;
    pfVar3[1] = pfVar5[1];
    pfVar3[2] = pfVar5[2];
    pfVar3[3] = pfVar5[3];
    (*(float (*) [4])(pfVar3 + 4))[0] = (*(float (*) [4])(pfVar5 + 4))[0];
    pfVar3[5] = pfVar5[5];
    pfVar4 = pfVar3 + 6;
    pfVar6 = pfVar5 + 6;
  } while (size != 0);
  pfVar3[6] = pfVar5[6];
  dVar8 = 0.5;
  pfVar3[7] = pfVar5[7];
  fov = global_camera.fov;
  pfVar3[8] = pfVar5[8];
  pfVar3[9] = pfVar5[9];
  dVar7 = tan((double)(fov * 0.5));
  zx = (float)dVar7 / global_camera.aspect;
  dVar7 = tan((double)(float)((double)global_camera.fov * dVar8));
  zy = (float)dVar7;
  GS_SetViewMatrix(&vmtx);
  GS_SetProjectionMatrix(&pmtx);
  NuCameraCalcFrustrumPlanes();
  return;
}

void NuCameraTransformView(struct nuvec_s *dest,struct nuvec_s *src,int n,struct numtx_s *w)	//CHECK

{
  struct nuvec_s *pnVar1;
  struct nuvec_s *pnVar2;
  struct nuvec_s *pfVar3;
  int size;
  struct nuvec_s *pfVar4;
  struct nuvec_s *end;
  struct numtx_s m;
  
  end = src + n;
  if (w == (numtx_s *)0x0) {
    size = 0x30;
    pnVar1 = (nuvec_s *)&vmtx;
    pnVar2 = (nuvec_s *)&m;
    do {
      pfVar4 = pnVar2;
      pfVar3 = pnVar1;
      size = size + -0x18;
      pfVar4->x = pfVar3->x;
      pfVar4->y = pfVar3->y;
      pfVar4->z = pfVar3->z;
      pfVar4[1].x = pfVar3[1].x;
      pfVar4[1].y = pfVar3[1].y;
      pfVar4[1].z = pfVar3[1].z;
      pnVar1 = pfVar3 + 2;
      pnVar2 = pfVar4 + 2;
    } while (size != 0);
    pfVar4[2].x = pfVar3[2].x;
    pfVar4[2].y = pfVar3[2].y;
    pfVar4[2].z = pfVar3[2].z;
    pfVar4[3].x = pfVar3[3].x;
  }
  else {
    NuMtxMulH(&m,w,&vmtx);
  }
  for (; src < end; src = src + 1) {
    NuVecMtxTransformH(dest,src,&m);
    dest = dest + 1;
  }
  return;
}


/*
void NuCameraTransformClip(nuvec_s *v,nuvec_s *b,int param_3,numtx_s *a)	//TODO

{
  float *pfVar1;
  float *pfVar2;
  float *pfVar3;
  int size;
  float *pfVar4;
  nuvec_s *pnVar5;
  numtx_s dest;
  
  pnVar5 = b + param_3;
  if (a == (numtx_s *)0x0) {
    size = 0x30;
    pfVar1 = (float *)&vpcmtx;
    pfVar2 = (float *)&dest;
    do {
      pfVar4 = pfVar2;
      pfVar3 = pfVar1;
      size = size + -0x18;
      *pfVar4 = *pfVar3;
      pfVar4[1] = pfVar3[1];
      pfVar4[2] = pfVar3[2];
      pfVar4[3] = pfVar3[3];
      (*(float (*) [4])(pfVar4 + 4))[0] = (*(float (*) [4])(pfVar3 + 4))[0];
      pfVar4[5] = pfVar3[5];
      pfVar1 = pfVar3 + 6;
      pfVar2 = pfVar4 + 6;
    } while (size != 0);
    pfVar4[6] = pfVar3[6];
    pfVar4[7] = pfVar3[7];
    pfVar4[8] = pfVar3[8];
    pfVar4[9] = pfVar3[9];
  }
  else {
    NuMtxMulH(&dest,a,&vpcmtx);
  }
  for (; b < pnVar5; b = b + 1) {
    NuVecMtxTransformH(v,b,&dest);
    v = v + 1;
  }
  return;
}


*/


void NuCameraTransformScreenClip(nuvec_s *dest,nuvec_s *src,int n,numtx_s *w)	//CHECK

{
  float *pfVar1;
  float *pfVar2;
  float *pfVar3;
  int size;
  float *pfVar4;
  nuvec_s *end;
  numtx_s m;
  
  end = src + n;
  if (w == (numtx_s *)0x0) {
    size = 0x30;
    pfVar1 = (float *)&vpc_vport_mtx;
    pfVar2 = (float *)&m;
    do {
      pfVar4 = pfVar2;
      pfVar3 = pfVar1;
      size = size + -0x18;
      *pfVar4 = *pfVar3;
      pfVar4[1] = pfVar3[1];
      pfVar4[2] = pfVar3[2];
      pfVar4[3] = pfVar3[3];
      (*(float (*) [4])(pfVar4 + 4))[0] = (*(float (*) [4])(pfVar3 + 4))[0];
      pfVar4[5] = pfVar3[5];
      pfVar1 = pfVar3 + 6;
      pfVar2 = pfVar4 + 6;
    } while (size != 0);
    pfVar4[6] = pfVar3[6];
    pfVar4[7] = pfVar3[7];
    pfVar4[8] = pfVar3[8];
    pfVar4[9] = pfVar3[9];
  }
  else {
    NuMtxMulH(&m,w,&vpc_vport_mtx);
  }
  for (; src < end; src = src + 1) {
    NuVecMtxTransformH(dest,src,&m);
    dest = dest + 1;
  }
  return;
}

/*

int NuCameraClipTestExtents(nuvec_s *min,nuvec_s *max,numtx_s *wm)		//TODO

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  nuvec_s *pnVar5;
  nuvec_s **ppnVar6;
  int iVar7;
  int iVar8;
  nuvec_s local_f0 [8];
  nuvec_s local_90 [8];
  nuvec_s *local_30 [2];
  byte local_28 [4];
  byte local_24;
  byte local_23;
  byte local_22;
  byte local_21;
  
  if (clip_enable == 0) {
    iVar1 = 1;
  }
  else {
    local_30[0] = min;
    local_30[1] = max;
    iVar4 = 0;
    iVar1 = 0;
    do {
      iVar2 = iVar1 + 1;
      iVar8 = 0;
      do {
        iVar7 = iVar4 * 0xc;
        iVar3 = iVar8 + 1;
        ppnVar6 = local_30;
        do {
          iVar4 = iVar4 + 1;
          *(float *)((int)&local_f0[0].x + iVar7) = local_30[iVar1]->x;
          *(float *)((int)&local_f0[0].y + iVar7) = local_30[iVar8]->y;
          pnVar5 = *ppnVar6;
          ppnVar6 = ppnVar6 + 1;
          *(float *)((int)&local_f0[0].z + iVar7) = pnVar5->z;
          iVar7 = iVar7 + 0xc;
        } while ((int)ppnVar6 <= (int)(local_30 + 1));
        iVar8 = iVar3;
      } while (iVar3 < 2);
      iVar1 = iVar2;
    } while (iVar2 < 2);
    NuCameraTransformView(local_90,local_f0,8,wm);
    memset(local_28,0,0x8);
    iVar8 = 8;
    iVar1 = 0;
    iVar4 = 0;
    do {
      if (*(float *)((int)&local_90[0].z + iVar4) < global_camera.nearclip) {
        local_28[iVar1] = local_28[iVar1] | 1;
      }
      if (global_camera.farclip < *(float *)((int)&local_90[0].z + iVar4)) {
        local_28[iVar1] = local_28[iVar1] | 2;
      }
      if (*(float *)((int)&local_90[0].x + iVar4) < -*(float *)((int)&local_90[0].z + iVar4) * zx)  {
        local_28[iVar1] = local_28[iVar1] | 4;
      }
      if (*(float *)((int)&local_90[0].z + iVar4) * zx < *(float *)((int)&local_90[0].x + iVar4))  {
        local_28[iVar1] = local_28[iVar1] | 8;
      }
      if (*(float *)((int)&local_90[0].y + iVar4) < -*(float *)((int)&local_90[0].z + iVar4) * zy)  {
        local_28[iVar1] = local_28[iVar1] | 0x20;
      }
      if (*(float *)((int)&local_90[0].z + iVar4) * zy < *(float *)((int)&local_90[0].y + iVar4))  {
        local_28[iVar1] = local_28[iVar1] | 0x10;
      }
      iVar4 = iVar4 + 0xc;
      iVar1 = iVar1 + 1;
      iVar8 = iVar8 + -1;
    } while (iVar8 != 0);
    if ((local_21 &
        local_22 & local_23 & local_24 & local_28[3] & local_28[2] & local_28[0] & local_28[1]) ==  0
       ) {
      iVar1 = 1;
      if ((byte)(local_21 |
                local_22 |
                local_23 | local_24 | local_28[3] | local_28[2] | local_28[0] | local_28[1]) != 0)  {
        iVar1 = 2;
      }
    }
    else {
      iVar1 = 0;
    }
  }
  return iVar1;
}


*/


int NuCameraClipTestBoundingSphere(nuvec_s *gobj_centre,float *radius,numtx_s *wm)		//CHECK

{
  nuvec4_s *frp;
  int distanceFromPlane;
  nuvec_s world_centre;
  
  if (clip_enable != 0) {
    if (wm == (numtx_s *)0x0) {
      world_centre.x = gobj_centre->x;
      world_centre.z = gobj_centre->z;
      world_centre.y = gobj_centre->y;
    }
    else {
      NuVecMtxTransform(&world_centre,gobj_centre,wm);
    }
    distanceFromPlane = 6;
    frp = frustrumplanes;
    do {
      if (frp->z * world_centre.z + frp->x * world_centre.x + frp->y * world_centre.y + frp->w +
          *radius < 0.0) {
        return 0;
      }
      frp = frp + 1;
      distanceFromPlane = distanceFromPlane + -1;
    } while (distanceFromPlane != 0);
  }
  return 1;
}


/*

int NuCameraClipTestPoints(nuvec_s *pnts,int cnt,numtx_s *wm)		//CHECK

{
  numtx_s *pnVar1;
  numtx_s *pnVar2;
  float uVar3;
  numtx_s *pfVar3;
  numtx_s *pfVar2;
  int iVar3;
  numtx_s *pfVar5;
  numtx_s *pfVar4;
  int uVar7;
  numtx_s m;
  nuvec_s v;
  
  if (wm == (numtx_s *)0x0) {
    iVar3 = 0x30;
    pnVar1 = &vmtx;
    pnVar2 = &m;
    do {
      pfVar5 = pnVar2;
      pfVar3 = pnVar1;
      iVar3 = iVar3 + -0x18;
      pfVar5->mtx[0] = pfVar3->mtx[0];
      pfVar5->mtx[1] = pfVar3->mtx[1];
      pfVar5->mtx[2] = pfVar3->mtx[2];
      pfVar5->mtx[3] = pfVar3->mtx[3];
      pfVar5->mtx[1][0] = pfVar3->mtx[1][0];
      pfVar2 = (numtx_s *)(pfVar3->mtx[1] + 2);
      pfVar5->mtx[1][1] = pfVar3->mtx[1][1];
      pfVar4 = (numtx_s *)(pfVar5->mtx[1] + 2);
      pnVar1 = pfVar2;
      pnVar2 = pfVar4;
    } while (iVar3 != 0);
    pfVar4->mtx[0] = pfVar2->mtx[0];
    pfVar5->mtx[1][3] = pfVar3->mtx[1][3];
    pfVar5->mtx[2][0] = pfVar3->mtx[2][0];
    pfVar5->mtx[2][1] = pfVar3->mtx[2][1];
  }
  else {
    NuMtxMulH(&m,wm,&vmtx);
  }
  uVar7 = -1;
  if (0 < cnt) {
    do {
      NuVecMtxTransform(&v,pnts,&m);
      uVar3 = (float)(uint)(v.z < global_camera.nearclip);
      if (global_camera.farclip < v.z) {
        uVar3 = (float)((uint)uVar3 | 2);
      }
      if (v.x < -v.z * zx) {
        uVar3 = (float)((uint)uVar3 | 4);
      }
      if (v.z * zx < v.x) {
        uVar3 = (float)((uint)uVar3 | 8);
      }
      if (v.y < -v.z * zy) {
        uVar3 = (float)((uint)uVar3 | 0x20);
      }
      if (v.z * zy < v.y) {
        uVar3 = (float)((uint)uVar3 | 0x10);
      }
      uVar7 = uVar7 & (uint)uVar3;
      pnts = pnts + 1;
      cnt = cnt + -1;
    } while (cnt != 0);
  }
  return uVar7;
}



void SetProjectionMatrix(numtx_s *mtx,float fFOV,float fAspect,float fNearPlane,float fFarPlane)	//TODO

{
  float f;
  double dVar1;
  double dVar2;
  double dVar3;
  double dVar4;
  double dVar5;
  double dVar6;
  double dVar7;
  double dVar8;
  
  dVar4 = (double)fFarPlane;
  dVar5 = (double)fNearPlane;
  dVar8 = (double)fAspect;
  dVar1 = (double)fFOV;
  f = (float)(dVar4 - dVar5);
  dVar7 = (double)f;
  dVar2 = (double)f;
  NuFabs(f);
  dVar6 = 0.009999999776482582;
  if (dVar2 <= 0.009999999776482582) {
    e = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nucamera.c",0x2a2);
    //("assert");
  }
  dVar1 = (double)(float)(dVar1 * 0.5);
  dVar2 = sin(dVar1);
  dVar3 = (double)(float)dVar2;
  NuFabs((float)dVar2);
  if (dVar3 <= dVar6) {
    e = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nucamera.c",0x2a3);
    //("assert");
  }
  dVar2 = cos(dVar1);
  dVar6 = (double)(float)(dVar4 / dVar7);
  dVar4 = sin(dVar1);
  dVar8 = (double)(float)(dVar8 * (double)(float)(dVar2 / dVar4));
  dVar2 = cos(dVar1);
  dVar1 = sin(dVar1);
  dVar1 = (double)(float)(dVar2 / dVar1);
  memset(mtx,0,0x40);
  mtx->mtx[3][2] = (float)(-dVar6 * dVar5);
  mtx->mtx[0] = (float)dVar8;
  mtx->mtx[1][1] = (float)dVar1;
  mtx->mtx[2][3] = 1.0;
  mtx->mtx[2][2] = (float)dVar6;
  return;
}



*/