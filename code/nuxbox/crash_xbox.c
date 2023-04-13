#include "crash_xbox.h"

void AddQuad3DrotXYZ(nuvec_s *pos,nuvec_s *shape,numtl_s *mtl,nuangvec_s *a,float *uvs,uint colou r)

{
  int outcode;
  numtx_s mtx;
  nuvtx_tc1_s vtx [4];
  
  vtx[0].diffuse =
       (colour & 0xff000000) + (colour & 0xff) * 0x10000 + (colour & 0xff00) +
       (colour >> 0x10 & 0xff);
  outcode = NuCameraClipTestPoints(pos,1,NULL);
  if (outcode == 0) {
    NuMtxSetRotateXYZ(&mtx,a);
    NuMtxTranslate(&mtx,pos);
    vtx[0].pnt.x = shape->x;
    vtx[0].pnt.y = shape->y;
    vtx[0].pnt.z = shape->z;
    vtx[0].tc[1] = uvs[1];
    vtx[1].pnt.x = shape[1].x;
    vtx[1].pnt.y = shape[1].y;
    vtx[1].pnt.z = shape[1].z;
    vtx[1].tc[0] = uvs[2];
    vtx[1].tc[1] = uvs[3];
    vtx[2].pnt.x = shape[2].x;
    vtx[0].tc[0] = *uvs;
    vtx[2].pnt.y = shape[2].y;
    vtx[0].nrm.x = 1.0;
    vtx[0].nrm.y = 0.0;
    vtx[0].nrm.z = 0.0;
    vtx[1].nrm.x = 1.0;
    vtx[1].nrm.y = 0.0;
    vtx[1].nrm.z = 0.0;
    vtx[3].pnt.z = shape[3].z;
    vtx[3].tc[1] = uvs[7];
    vtx[2].pnt.z = shape[2].z;
    vtx[2].tc[0] = uvs[4];
    vtx[2].tc[1] = uvs[5];
    vtx[3].pnt.x = shape[3].x;
    vtx[3].pnt.y = shape[3].y;
    vtx[3].tc[0] = uvs[6];
    vtx[3].nrm.x = 1.0;
    vtx[3].nrm.z = 0.0;
    vtx[2].nrm.x = 1.0;
    vtx[2].nrm.y = 0.0;
    vtx[2].nrm.z = 0.0;
    vtx[3].nrm.y = 0.0;
    vtx[1].diffuse = vtx[0].diffuse;
    vtx[2].diffuse = vtx[0].diffuse;
    vtx[3].diffuse = vtx[0].diffuse;
    NuRndrTri3d(vtx,mtl,&mtx);
    NuRndrTri3d(vtx + 1,mtl,&mtx);
  }
  return;
}

void DrawMask(mask *mask)

{
	//TODO!
	return;
}


void * makenuvec(float x,float y,float z)

{
  tempvec.x = x;
  tempvec.y = y;
  tempvec.z = z;
  return &tempvec;
}

void * makenuvec4(float x,float y,float z,float w)

{
  tempvec4.x = x;
  tempvec4.y = y;
  tempvec4.z = z;
  tempvec4.w = w;
  return &tempvec4;
}

void LoadWaterCausticTextures(void)	//WIP

{
  void *mem;
  nutex_s *tex;
  int i;
  int *causticTx;
  int n;
  char bmpname [24];
  
  mem = malloc_x(0x1000);
  tex = (nutex_s *)malloc_x(0x1c);
  tex->height = 0x40;
  tex->decal = 0;
  tex->mmcnt = 1;
  causticTx = CausticTextures;
  tex->pal = NULL;
  tex->type = NUTEX_RGB24;
  tex->width = 0x40;
  tex->bits = mem;
  iss3cmp = 0x80c;
  i = 0;
  do {
    n = i + 1;
    sprintf(bmpname,"gfx\\caust%d.s3",i);
    NuFileLoadBuffer(bmpname,mem,0x80c);
    i = NuTexCreate(tex);
    *causticTx = i;
    causticTx = causticTx + 1;
    i = n;
  } while (n < 0x20);
  iss3cmp = 0;
  free_x(tex);
  free_x(mem);
  return;
}

void RemoveWaterCausticTextures(void)	//WIP

{
  int tid;
  int *piVar1;
  
  piVar1 = CausticTextures;
  do {
    tid = *piVar1;
    piVar1 = piVar1 + 1;
    NuTexDestroy(tid);
  } while ((int)piVar1 < -0x7fc375cf);
  return;
}


nuscene_s * NuSceneReader(variptr_u *buffer,variptr_u *buffend,char *filename)

{
  nuscene_s *data;
  
  if (buffer != NULL) {
    NuMemSetExternal(buffer,buffend);
  }
  data = InstSceneLoad(filename);
  if (buffer != NULL) {
    NuMemSetExternal(NULL,NULL);
  }
  return data;
}

nuscene_s * NuSceneReader2(variptr_u *buffer,variptr_u *buffend,char *file)

{
  nuscene_s *scene;
  
  if (buffer != NULL) {
    NuMemSetExternal(buffer,buffend);
  }
  scene = NuSceneLoad(file);
  if (buffer != NULL) {
    NuMemSetExternal(NULL,NULL);
  }
  return scene;
}