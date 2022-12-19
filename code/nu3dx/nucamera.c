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