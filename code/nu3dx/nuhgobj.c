#include "nuhgobj.h"
#include "nufile.h"


struct numtx_s mtx_arrayHGobj[256];

struct NUHGOBJ_s* NuHGobjCreate(void)
{
    struct NUHGOBJ_s *hgobj = (HGobj *)NuMemAlloc(sizeof(HGobj));
    memset(hgobj, 0, sizeof(HGobj));
    hgobj->tbrdist = 1.0f;
    
    return hgobj;
}

struct NUHGOBJ_s* NuHGobjLoad(const char* name)
{
    struct NUHGOBJ_s *hgobj = NULL;
    fileHandle handle = NuFileOpen(name, NUFILE_READ);
    
    if (handle != 0)
    {
        NuFileBeginBlkRead(handle, 'FOGH');
        struct NUHGOBJ_s* hgobj = NuHGobjCreate();
        ReadNuIFFHGobj(handle, hgobj);
        NuFileEndBlkRead(handle);
        NuFileClose(handle);
    }
    else
    {
        strlwr(name);
    }
    
    return hgobj;
}

struct NUHGOBJ_s* NuHGobjRead(union variptr_u* superbuf_ptr, char* name)

{
    struct NUHGOBJ_s* hgobj;

    if (superbuf_ptr != NULL) {
        NuMemSetExternal(superbuf_ptr, NULL);
    }
    hgobj = NuHGobjLoad(name);
    if (superbuf_ptr != NULL) {
        NuMemSetExternal(NULL, NULL);
    }
    return hgobj;
}

void NuHGobjDestroy(struct NUHGOBJ_s* hgobj)

{
    if (hgobj != NULL) {
        NuHGobjDestroyDynamic(hgobj);
    }
    return;
}

/*
void NuHGobjDestroyDynamic(NUHGOBJ_s *hgobj)

{
  numtl_s **ppnVar1;
  nugobj_s *gobj;
  NULAYERDATA_s *pNVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;

  if (hgobj->texanims != (nutexanim_s *)0x0) {
    NuTexAnimRemoveList();
  }
  if ((hgobj->layers != (NULAYERDATA_s *)0x0) && (iVar6 = 0, hgobj->num_layers != '\0')) {
    do {
      pNVar2 = hgobj->layers;
      iVar3 = iVar6 + 1;
      if ((pNVar2[iVar6].gobjs != (nugobj_s *)0x0) && (iVar5 = 0, hgobj->num_joints != '\0')) {
        iVar4 = 0;
        do {
          gobj = *(nugobj_s **)((int)&(hgobj->layers[iVar6].gobjs)->sysnext + iVar4);
          if (gobj != (nugobj_s *)0x0) {
            NuGobjDestroy(gobj);
          }
          iVar5 = iVar5 + 1;
          iVar4 = iVar4 + 4;
          pNVar2 = hgobj->layers;
        } while (iVar5 < (int)(uint)hgobj->num_joints);
      }
      if ((pNVar2[iVar6].blend_gobjs != (nugobj_s *)0x0) && (iVar5 = 0, hgobj->num_joints != '\0') )
      {
        iVar4 = 0;
        do {
          gobj = *(nugobj_s **)((int)&(hgobj->layers[iVar6].blend_gobjs)->sysnext + iVar4);
          if (gobj != (nugobj_s *)0x0) {
            NuGobjDestroy(gobj);
          }
          iVar5 = iVar5 + 1;
          iVar4 = iVar4 + 4;
        } while (iVar5 < (int)(uint)hgobj->num_joints);
      }
      gobj = hgobj->layers[iVar6].skin_gobj;
      if (gobj != (nugobj_s *)0x0) {
        NuGobjDestroy(gobj);
      }
      gobj = hgobj->layers[iVar6].blend_skin_gobj;
      if (gobj != (nugobj_s *)0x0) {
        NuGobjDestroy(gobj);
      }
      iVar6 = iVar3;
    } while (iVar3 < (int)(uint)hgobj->num_layers);
  }
  if ((hgobj->mtls != (numtl_s *)0x0) && (iVar6 = 0, 0 < hgobj->nummtl)) {
    iVar3 = 0;
    do {
      iVar6 = iVar6 + 1;
      ppnVar1 = (numtl_s **)((int)&hgobj->mtls->next + iVar3);
      iVar3 = iVar3 + 4;
      NuMtlDestroy(*ppnVar1);
    } while (iVar6 < hgobj->nummtl);
  }
  if ((hgobj->tids != (short *)0x0) && (iVar6 = 0, 0 < hgobj->numtid)) {
    do {
      iVar3 = iVar6 + 1;
      NuTexDestroy((int)hgobj->tids[iVar6]);
      iVar6 = iVar3;
    } while (iVar3 < hgobj->numtid);
  }
  if (hgobj->texanims != (nutexanim_s *)0x0) {
    NuTexAnimRemoveList();
  }
  return;
}

*/

void NuHGobjPOIMtx(struct NUHGOBJ_s* hgobj, u8 poi_id, struct numtx_s* world_mtx, struct numtx_s* mtx_array, struct numtx_s* mtx)

{
    struct NUPOINTOFINTEREST_s* p;

    //NuMtxMul(mtx, &hgobj->points_of_interest[hgobj->poi_ixs[CONCAT31(p._1_3_, poi_id)]].offset,
        //mtx_array +
        //hgobj->points_of_interest[hgobj->poi_ixs[CONCAT31(p._1_3_, poi_id)]].parent_joint_ix);
    //NuMtxMul(mtx, mtx, world_mtx);
    return;
}

/*
NUUPOINTOFINTEREST_s* NuHGobjGetPOI(NUHGOBJ_s* hgobj, uchar poi_id) {
    undefined3 in_register_00000010;

    if ((CONCAT31(in_register_00000010, poi_id) < (uint)hgobj->num_poi_ixs) &&
        (hgobj->poi_ixs[CONCAT31(in_register_00000010, poi_id)] != 0xff)) {
        return hgobj->points_of_interest + hgobj->poi_ixs[CONCAT31(in_register_00000010, poi_id)];
    }
    return (NUPOINTOFINTEREST_s*)0x0;
}*/

void ReadNuIFFHGobj(fileHandle handle, struct NUHGOBJ_s *hgobj)
{
    u32 magic;
    struct nuscene_s scene;
    struct nugscn_s gscn;
    
    memset(scene, 0, sizeof(struct nuscene_s));
    memset(gscn, 0, sizeof(struct nugscn_s));
    
    scene.mtls = (numtl_s*)0x0;
    scene.numtids = 0;
    scene.tids = (short*)0x0;
    scene.nummtls = 0;
    
    while ((magic = NuFileBeginBlkRead(handle, 0)) != 0)
    {
        switch(magic)
        {
            case '0SAT':
                gscn.nametable = hgobj->string_table;
                ReadNuIFFTexAnimSet(handle, &gscn, nuscn.tids);
                hgobj->texanim_tids = gscn.texanim_tids;
                hgobj->texanims = gscn.texanims;
                hgobj->numtexanims = gscn.numtexanims;
                break;
            case '00SM':
                ReadNuIFFMaterialSet(handle, &struct2);
                struct2.WORD_0x8 = scene.WORD_0x1C;
                struct2.WORD_0xC = scene.WORD_0x18;
                hgobj->WORD_0x8 = scene.WORD_0x1C;
                hgobj->WORD_0xC = scene.WORD_0x18;
                break;
            case '0OGH':
                ReadNuIFFHGobjSet(handle, hgobj);
                break;
            case '0TST':
                struct2.WORD_0x34 = hgobj->WORD_0x2C;
                ReadNuIFFTextureSet(handle, &struct2, scene.WORD_0x14);
                hgobj->WORD_0x74 = struct2.WORD_0x6C;
                hgobj->WORD_0x70 = struct2.WORD_0x68;
                hgobj->WORD_0x6C = struct2.WORD_0x64;
                break;
            case 'LBTN':
                hgobj->WORD_0x2C = ReadNuIFFNameTable(handle);
                break;
            default:
                ReadNuIFFUnknown(handle, magic);
                break;
        }
        
        NuFileEndBlkRead(handle);
    }
    
    NuSceneMtlUpdate(&scene);
}

/*
void ReadNuIFFHGobjSet(filehandle handle,NUHGOBJ_s *hgobj)

{
  void **ppvVar1;
  uchar num_joints;
  NUJOINTDATA_s *jointdata;
  numtx_s *mtx;
  char cVar8;
  int iVar2;
  uchar *poi_ixs;
  NULAYERDATA_s *layer_dat;
  nugobj_s *gobjs;
  nugobj_s *gobj;
  NUPOINTOFINTEREST_s *point_oi;
  NUSHADOWDATA_s *shadowdata;
  NUELLIPSOID_s *pNVar3;
  NUCYLINDERS_s *pNVar4;
  NUERRORFUNC *error;
  NUSHADOWMESH_s *pNVar5;
  int iVar6;
  void *pvVar7;
  int iVar9;
  int iVar10;
  int iVar11;
  int iVar12;
  float fVar13;
  float fVar14;
  size_t size;

  num_joints = NuFileReadChar(handle);
  hgobj->num_joints = num_joints;
  if (((int)(char)num_joints & 0xffU) != 0) {
    iVar9 = 0;
    jointdata = (NUJOINTDATA_s *)NuMemAlloc(((int)(char)num_joints & 0xffU) * 0x60);
    hgobj->joints = jointdata;
    memset(jointdata,0,(uint)hgobj->num_joints * 0x60);
    mtx = (numtx_s *)NuMemAlloc((uint)hgobj->num_joints << 6);
    hgobj->T = mtx;
    memset(mtx,0,(uint)hgobj->num_joints << 6);
    mtx = (numtx_s *)NuMemAlloc((uint)hgobj->num_joints << 6);
    hgobj->INV_WT = mtx;
    memset(mtx,0,(uint)hgobj->num_joints << 6);
    if (hgobj->num_joints != '\0') {
      iVar11 = 0;
      iVar12 = 0;
      do {
        NuFileRead(handle,hgobj->joints->pad + iVar12 + -1,1);
        NuFileRead(handle,(void *)((int)hgobj->T->mtx + iVar11),0x40);
        NuFileRead(handle,(void *)((int)hgobj->INV_WT->mtx + iVar11),0x40);
        NuFileRead(handle,(void *)((int)(hgobj->joints->orient).mtx + iVar12),0x40);
        NuFileRead(handle,hgobj->joints->pad + iVar12 + -0x15,0xc);
        cVar8 = NuFileReadChar(handle);
        *(int *)(hgobj->joints->pad + iVar12 + -5) = (int)cVar8;
        iVar2 = NuFileReadInt(handle);
        if (iVar2 != 0) {
          *(char **)(hgobj->joints->pad + iVar12 + -9) = hgobj->string_table + iVar2 + -1;
        }
        iVar9 = iVar9 + 1;
        iVar11 = iVar11 + 0x40;
        iVar12 = iVar12 + 0x60;
      } while (iVar9 < (int)(uint)hgobj->num_joints);
    }
    num_joints = NuFileReadChar(handle);
    hgobj->num_joint_ixs = num_joints;
    if (((int)(char)num_joints & 0xffU) != 0) {
      poi_ixs = (uchar *)NuMemAlloc((int)(char)num_joints & 0xffU);
      hgobj->joint_ixs = poi_ixs;
      NuFileRead(handle,poi_ixs,(uint)hgobj->num_joint_ixs);
    }
    num_joints = NuFileReadChar(handle);
    hgobj->num_poi_ixs = num_joints;
    if (((int)(char)num_joints & 0xffU) != 0) {
      poi_ixs = (uchar *)NuMemAlloc((int)(char)num_joints & 0xffU);
      hgobj->poi_ixs = poi_ixs;
      NuFileRead(handle,poi_ixs,(uint)hgobj->num_poi_ixs);
    }
    num_joints = NuFileReadChar(handle);
    hgobj->num_layers = num_joints;
    if (((int)(char)num_joints & 0xffU) != 0) {
      layer_dat = (NULAYERDATA_s *)NuMemAlloc(((int)(char)num_joints & 0xffU) * 0x14);
      hgobj->layers = layer_dat;
      memset(layer_dat,0,(uint)hgobj->num_layers * 0x14);
      iVar9 = 0;
      if (hgobj->num_layers != '\0') {
        do {
          iVar11 = NuFileReadInt(handle);
          if (iVar11 != 0) {
            hgobj->layers[iVar9].name = hgobj->string_table + iVar11 + -1;
          }
          iVar11 = iVar9 + 1;
          cVar8 = NuFileReadChar(handle);
          if (cVar8 != '\0') {
            iVar12 = 0;
            gobjs = (nugobj_s *)NuMemAlloc((uint)hgobj->num_joints << 2);
            hgobj->layers[iVar9].gobjs = gobjs;
            memset(hgobj->layers[iVar9].gobjs,0,(uint)hgobj->num_joints << 2);
            if (hgobj->num_joints != '\0') {
              iVar2 = 0;
              do {
                cVar8 = NuFileReadChar(handle);
                if (cVar8 != '\0') {
                  gobj = ReadNuIFFGeom(handle,&hgobj->mtls->next);
                  *(nugobj_s **)((int)&(hgobj->layers[iVar9].gobjs)->sysnext + iVar2) = gobj;
                }
                iVar12 = iVar12 + 1;
                iVar2 = iVar2 + 4;
              } while (iVar12 < (int)(uint)hgobj->num_joints);
            }
          }
          cVar8 = NuFileReadChar(handle);
          if (cVar8 != '\0') {
            gobjs = ReadNuIFFGeom(handle,&hgobj->mtls->next);
            hgobj->layers[iVar9].skin_gobj = gobjs;
          }
          cVar8 = NuFileReadChar(handle);
          if (cVar8 != '\0') {
            iVar12 = 0;
            gobjs = (nugobj_s *)NuMemAlloc((uint)hgobj->num_joints << 2);
            hgobj->layers[iVar9].blend_gobjs = gobjs;
            memset(hgobj->layers[iVar9].blend_gobjs,0,(uint)hgobj->num_joints << 2);
            if (hgobj->num_joints != '\0') {
              iVar2 = 0;
              do {
                cVar8 = NuFileReadChar(handle);
                if (cVar8 != '\0') {
                  gobjs = ReadNuIFFGeom(handle,&hgobj->mtls->next);
                  *(nugobj_s **)((int)&(hgobj->layers[iVar9].blend_gobjs)->sysnext + iVar2) = gobj s;
                }
                iVar12 = iVar12 + 1;
                iVar2 = iVar2 + 4;
              } while (iVar12 < (int)(uint)hgobj->num_joints);
            }
          }
          cVar8 = NuFileReadChar(handle);
          if (cVar8 != '\0') {
            gobjs = ReadNuIFFGeom(handle,&hgobj->mtls->next);
            hgobj->layers[iVar9].blend_skin_gobj = gobjs;
          }
          iVar9 = iVar11;
        } while (iVar11 < (int)(uint)hgobj->num_layers);
      }
    }
    num_joints = NuFileReadChar(handle);
    hgobj->num_points_of_interest = num_joints;
    if (((int)(char)num_joints & 0xffU) != 0) {
      iVar9 = 0;
      point_oi = (NUPOINTOFINTEREST_s *)NuMemAlloc(((int)(char)num_joints & 0xffU) * 0x50);
      hgobj->points_of_interest = point_oi;
      memset(point_oi,0,(uint)hgobj->num_points_of_interest * 0x50);
      if (hgobj->num_points_of_interest != '\0') {
        iVar11 = 0;
        do {
          num_joints = NuFileReadChar(handle);
          hgobj->points_of_interest->pad[iVar11 + -1] = num_joints;
          NuFileRead(handle,(void *)((int)(hgobj->points_of_interest->offset).mtx + iVar11),0x40);
          iVar12 = NuFileReadInt(handle);
          if (iVar12 != 0) {
            *(char **)(hgobj->points_of_interest->pad + iVar11 + -5) =
                 hgobj->string_table + iVar12 + -1;
          }
          iVar9 = iVar9 + 1;
          iVar11 = iVar11 + 0x50;
        } while (iVar9 < (int)(uint)hgobj->num_points_of_interest);
      }
    }
    cVar8 = NuFileReadChar(handle);
    iVar9 = (int)cVar8;
    if (iVar9 != 0) {
      size = (iVar9 + 1) * 0x10;
      shadowdata = (NUSHADOWDATA_s *)NuMemAlloc(size);
      hgobj->shadow_data = shadowdata;
      if (shadowdata == (NUSHADOWDATA_s *)0x0) {
        error = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nuhgobj.c",0x274);
        (*error)("failed to alloc shadow data");
      }
      iVar11 = 0;
      memset(hgobj->shadow_data,0,size);
      hgobj->shadow_data[iVar9].joint = 0xff;
      if (0 < iVar9) {
        do {
          shadowdata = hgobj->shadow_data;
          shadowdata[iVar11].ellipsoids = (NUELLIPSOID_s *)0x0;
          shadowdata[iVar11].shadow_meshes = (NUSHADOWMESH_s *)0x0;
          shadowdata[iVar11].cylinders = (NUCYLINDERS_s *)0x0;
          num_joints = NuFileReadChar(handle);
          shadowdata[iVar11].nellipsoids = num_joints;
          if (((int)(char)num_joints & 0xffU) != 0) {
            iVar12 = ((int)(char)num_joints & 0xffU) * 0x30;
            pNVar3 = (NUELLIPSOID_s *)NuMemAlloc(iVar12);
            shadowdata[iVar11].ellipsoids = pNVar3;
            if (pNVar3 == (NUELLIPSOID_s *)0x0) {
              error = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nuhgobj.c",0x289);
              (*error)("failed to alloc shadow ellipsoids");
            }
            NuFileRead(handle,shadowdata[iVar11].ellipsoids,iVar12);
          }
          num_joints = NuFileReadChar(handle);
          shadowdata[iVar11].ncylinders = num_joints;
          if (((int)(char)num_joints & 0xffU) != 0) {
            iVar12 = ((int)(char)num_joints & 0xffU) << 6;
            pNVar4 = (NUCYLINDERS_s *)NuMemAlloc(iVar12);
            shadowdata[iVar11].cylinders = pNVar4;
            if (pNVar4 == (NUCYLINDERS_s *)0x0) {
              error = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nuhgobj.c",0x294);
              (*error)("failed to alloc shadow cylinders");
            }
            NuFileRead(handle,shadowdata[iVar11].cylinders,iVar12);
          }
          iVar12 = iVar11 + 1;
          num_joints = NuFileReadChar(handle);
          shadowdata[iVar11].nshadow_meshes = num_joints;
          if (((int)(char)num_joints & 0xffU) != 0) {
            size = ((int)(char)num_joints & 0xffU) << 3;
            pNVar5 = (NUSHADOWMESH_s *)NuMemAlloc(size);
            shadowdata[iVar11].shadow_meshes = pNVar5;
            if (pNVar5 == (NUSHADOWMESH_s *)0x0) {
              error = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nuhgobj.c",0x29f);
              (*error)("failed to alloc shadow_meshes");
            }
            iVar2 = 0;
            memset(shadowdata[iVar11].shadow_meshes,0,size);
            if (shadowdata[iVar11].nshadow_meshes != '\0') {
              iVar10 = 0;
              do {
                iVar2 = iVar2 + 1;
                iVar6 = NuFileReadInt(handle);
                pvVar7 = NuMemAlloc(iVar6 << 4);
                *(void **)((int)&(shadowdata[iVar11].shadow_meshes)->normals + iVar10) = pvVar7;
                NuFileRead(handle,*(void **)((int)&(shadowdata[iVar11].shadow_meshes)->normals +
                                            iVar10),iVar6 << 4);
                iVar6 = NuFileReadInt(handle);
                pvVar7 = NuMemAlloc(iVar6 << 4);
                *(void **)((int)&(shadowdata[iVar11].shadow_meshes)->verts + iVar10) = pvVar7;
                ppvVar1 = (void **)((int)&(shadowdata[iVar11].shadow_meshes)->verts + iVar10);
                iVar10 = iVar10 + 8;
                NuFileRead(handle,*ppvVar1,iVar6 << 4);
              } while (iVar2 < (int)(uint)shadowdata[iVar11].nshadow_meshes);
            }
          }
          num_joints = NuFileReadChar(handle);
          shadowdata[iVar11].joint = num_joints;
          iVar11 = iVar12;
        } while (iVar12 < iVar9);
      }
    }
  }
  fVar13 = NuFileReadFloat(handle);
  hgobj->sphere_radius = fVar13;
  fVar13 = NuFileReadFloat(handle);
  hgobj->sphere_yoff = fVar13;
  fVar13 = NuFileReadFloat(handle);
  (hgobj->min).x = fVar13;
  fVar13 = NuFileReadFloat(handle);
  (hgobj->min).y = fVar13;
  fVar13 = NuFileReadFloat(handle);
  (hgobj->min).z = fVar13;
  fVar13 = NuFileReadFloat(handle);
  (hgobj->max).x = fVar13;
  fVar13 = NuFileReadFloat(handle);
  (hgobj->max).y = fVar13;
  fVar13 = NuFileReadFloat(handle);
  (hgobj->max).z = fVar13;
  fVar13 = NuFileReadFloat(handle);
  hgobj->cylinder_yoff = fVar13;
  fVar13 = NuFileReadFloat(handle);
  hgobj->cylinder_height = fVar13;
  fVar14 = NuFileReadFloat(handle);
  fVar13 = (hgobj->min).x;
  hgobj->cylinder_radius = fVar14;
  if (((fVar13 == 0.0) && ((hgobj->min).y == 0.0)) && ((hgobj->min).z == 0.0)) {
    (hgobj->min).x = -1.0;
    (hgobj->min).z = -1.0;
    (hgobj->min).y = -1.0;
  }
  if ((((hgobj->max).x == 0.0) && ((hgobj->max).y == 0.0)) && ((hgobj->max).z == 0.0)) {
    (hgobj->max).x = 1.0;
    (hgobj->max).z = 1.0;
    (hgobj->max).y = 1.0;
  }
  return;
}


*/

void ReadNuIFFGeomCntrl(filehandle handle, NuGeom geom)
{
  NuFileReadInt(handle);
  return;
}