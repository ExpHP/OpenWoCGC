#include "nugobj.h"

NuGobj* sysgobj;

void memset(void*, int, int, ...); // the crclr at 24 means memset takes varargs. why would a memset take varargs? no idea.
void* NuMemAlloc(int);



NuGobj* NuGobjCreate() {
  NuGobj* gobj = (NuGobj*)NuMemAlloc(sizeof(NuGobj)); \\0x64
  memset(gobj, 0, sizeof(NuGobj));

  if (sysgobj != NULL) {
    sysgobj->prev = gobj;
  }
  gobj->prev = NULL;
  gobj->next = sysgobj;
  gobj->__word_60 = 1;
  sysgobj = gobj;
  return gobj;
}

void NuGobjAddGeom(NuGobj *gobj, NuGeom *geom) {
  if (gobj->geoms == NULL) {
    gobj->geoms = geom;
    return;
  }

  NuGeom* last = gobj->geoms;
  while (last->next != NULL) {
    last = last->next;
  }
  last->next = geom;
  return;
}

void NuGobjAddFaceOnGeom(NuGobj *gobj, NuFaceOnGeom *geom) {
  if (gobj->face_ons == NULL) {
    gobj->face_ons = geom;
    return;
  }

  NuFaceOnGeom* last = gobj->face_ons;
  while (last->next != NULL) {
    last = last->next;
  }
  last->next = geom;
  return;
}

void NuGobjCalcDims(NuGobj *gobj) {
  if (gobj->__causes_calc_face_on_dims == 1) {
    NuGobjCalcFaceOnDims(gobj);
    return;
  }
  gobj->bounding_box_min.x = FLT_MAX;
  gobj->bounding_box_min.y = FLT_MAX;
  gobj->bounding_box_min.z = FLT_MAX;
  gobj->bounding_box_max.x = FLT_MIN;
  gobj->bounding_box_max.y = FLT_MIN;
  gobj->bounding_box_max.z = FLT_MIN;
  gobj->bounding_radius_sq = 0.0;
  for (NuGeom* geom = gobj->geom; geom != NULL; geom = geom->next) {
    int stride = NuVtxStride(geom->vertex_type);
    char* vertex_raw = geom->vertex_buffer;
    if (vertex_raw == NULL) {
	   //TBREV
	    error_func e = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nugobj.c",0x13b);
		e("NuGobjCalcDims : Lock VB failed!");
    }
    char* end = vertex_raw + stride * geom->__count_2__mebbe_count_actually_in_use;
    for (; vertex_raw < end; vertex_raw += stride) {
      NuVec* vertex = (NuVec*)vertex_raw;
      if (vertex->x < gobj->bounding_box_min.x) {
        gobj->bounding_box_min.x = vertex->x;
      }
      if (vertex->y < gobj->bounding_box_min.y) {
        gobj->bounding_box_min.y = vertex->y;
      }
      if (vertex->z < gobj->bounding_box_min.z) {
        gobj->bounding_box_min.z = vertex->z;
      }
      if (gobj->bounding_box_max.x < vertex->x) {
        gobj->bounding_box_max.x = vertex->x;
      }
      if (gobj->bounding_box_max.y < vertex->y) {
        gobj->bounding_box_max.y = vertex->y;
      }
      if (gobj->bounding_box_max.z < vertex->z) {
        gobj->bounding_box_max.z = vertex->z;
      }
      float rsq = vertex->z * vertex->z + vertex->x * vertex->x + vertex->y * vertex->y;
      if (gobj->bounding_rsq_from_origin < rsq) {
        gobj->bounding_rsq_from_origin = rsq;
      }
    }
  }
  gobj->bounding_radius = (float)sqrt((double)gobj->bounding_rsq_from_origin);

  gobj->bounding_box_center.x = (gobj->bounding_box_min.x + gobj->bounding_box_max.x) * 0.5;
  gobj->bounding_box_center.y = (gobj->bounding_box_min.y + gobj->bounding_box_max.y) * 0.5;
  gobj->bounding_box_center.z = (gobj->bounding_box_min.z + gobj->bounding_box_max.z) * 0.5;

  gobj->bounding_rsq_from_center = 0.0;
  for (NuGeom* geom = gobj->geom; geom != NULL; geom = geom->next) {
    int stride = NuVtxStride(geom->vertex_type);
    char* vertex_raw = geom->vertex_buffer;
    if (vertex_raw == NULL) {
      //TBREV
	  error_func e = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nugobj.c",0x157);
		e("NuGobjCalcDims : Lock VB failed!");
    }
    char* end = vertex_raw + stride * geom->__count_2__mebbe_count_actually_in_use;
    for (; vertex_raw < end; vertex_raw += stride) {
      NuVec* vertex = (NuVec*)vertex_raw;
      NuVec diff;
      NuVecSub(&diff, vertex, gobj->bounding_box_center);
      float rsq = diff.z * diff.z + diff.x * diff.x + diff.y * diff.y;
      if (gobj->bounding_rsq_from_center < rsq) {
        gobj->bounding_rsq_from_center = rsq;
      }
    }
  }
  gobj->bounding_radius_from_center = (float)sqrt((double)gobj->bounding_rsq_from_center);
  return;
}


void NuGobjClose(void)
{
  NuGobj* nextobj;
  
  if (sysinit && sysgobj) {
    do {
      nextobj = sysgobj->next;
      NuGobjDestroy(sysgobj);
      sysgobj = nextobj;
    } while (nextobj);
  }
  return;
}
//////////////////////////////TBREV/////////////////////////////////////////////////////////////////////////
void NuGobjDestroy(NuGobj *obj) 
{
    NuGobj *child_maybe;
    int *temp_r30;
    int **geometry;

    geometry = *(int ***)&obj->field_0xc;
    child_maybe = obj->unk4c;
    while (geometry != NULL)
    {
            temp_r30 = *geometry;
            NuGeomDestroy(geometry);
            geometry = (int **)temp_r30;
    }
  
    if (obj->prev != (NuGobj *)0x0) 
	{
        obj->prev->next = obj->next;
    }

    if (obj->next != (NuGobj *)0x0) {
        obj->next->prev = obj->prev;
    }
    if (child_maybe != NULL) {
        NuGobjDestroy(child_maybe);
    }

    return;
}


extern s32 sysinit;
extern f32 lbl_8011CD34;

void NuGobjInit(void) {
    f32 temp_f1;

    if ((s32) sysinit != 0) {
        NuGobjClose();
    }
    temp_f1 = lbl_8011CD34;
    sysgobj = 0;
    sysinit = 1;
    NuLightFog(0, 0, 0, temp_f1, temp_f1); \\GHIDRA: NuLightFog(0x3ff0000000000000,0x3ff0000000000000,0,0,0);

    return;
}


/////////////////////////////////////////NULIGHTFOG CALLED BY MAIN
          if ((Level == 2) && (VEHICLECONTROL != 1)) {
            NuLightFog(0,0,0x40000000,BLUR,0);
          }
          else {
            NuLightFog((double)*(float *)(LDATA + 0x44),(double)*(float *)(LDATA + 0x48),
                       level_fogcolour,BLUR,
                       (uint)*(byte *)(LDATA + 0x53) << 0x18 | (uint)*(byte *)(LDATA + 0x52) << 0x 10
                       | (uint)*(byte *)(LDATA + 0x51) << 8 | (uint)*(byte *)(LDATA + 0x50));
          }
//////////////////////////////////






////////////////////////////////////////NUGEOM STUFF////////////////////////////////////////////////////////////////

void NuGeomDestroyVB(NuGeom *geom)

{
	if(geom->buffer != (GS_Buffer *)0x0){
		GS_DeleteBuffer(geom->buffer);
		geom->buffer = (GS_Buffer *)0x0;
		}
	return;
}

void NuGeomDestroy(NuGeom *geom)
{

  GS_Buffer *buffer; \\0x14
  NuPrim *currPrim;
  NuPrim *nextPrim;
  
  currPrim = geom->primLinkedList;
  NuGeomDestroyVB(geom);
	while(currPrim != (NuPrim *)0x0){
		nextPrim = currPrim->next;
		NuPrimDestroy(currPrim);
		currPrim = nextPrim;
		}
		
		\\field_0x2c pointer to a unk struct
	if((*(int *)&geom->field_0x2c !=0) &&
		(buffer = *(GS_Buffer **)(*(int *)&geom->field_0x2c + 0x14), buffer != (GS_Buffer *)0x0)) {
		 GS_DeleteBuffer(buffer);
	}
	return;
}

NuGeom* NuFaceOnGeomCreate(void)
{
  NuGeom* ret = (NuGeom*)NuMemAlloc(sizeof(NuGeom)); \\0x30
  memset(ret, 0, sizeof(NuGeom));
  return ret;
}

-----------------------------------------------------------------------------------

int* GS_CreateBuffer(int, int);
extern void NuErrorFunction(char message[0x60], ...);
extern error_func NuErrorProlog(char* file, u32 line);

\\void NuGeomCreateVB(NuGeom* geom, s32 param_2, s32 vtxType, s32 param_4);
 

void NuGeomCreateVB(NuGeom* geom,int param_2,uint param_3) \\PARAM 1 ASSIGNED NuGeom* var \\PARAM2 MAXCLOUDSIZE FLOAT to INT

{
  undefined4 uVar2; \\NuGeom?
  int unaff_r29; \\NuGeom field?
  
  if (param_3 == 0x53) {
    unaff_r29 = param_2 * 0x1c;
    goto LAB_800b001c;
  }
  if (param_3 < 0x54) {
    if (param_3 == 0x11) {
      unaff_r29 = param_2 << 4;  \\maybe var_r29 = arg1 * 0x10;
      goto LAB_800b001c;
    }
    if (param_3 == 0x51) {
      unaff_r29 = param_2 * 0x18;
      goto LAB_800b001c;
    }
  }
  else {
    if (param_3 == 0x59) {
      unaff_r29 = param_2 * 0x24;
      goto LAB_800b001c;
    }
    if (param_3 == 0x5d) {
      unaff_r29 = param_2 * 0x38;
      goto LAB_800b001c;
    }
  }
error_func e = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nugobj.c",0x270);
		e("NuGeomCreateVB : Unknown vertex type!");
LAB_800b001c:
  if (*(int *)(geom + 0x18) != 0) {
    error_func e = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nugobj.c",0x274); 
		e("NuGeomCreateVB : geom already has VB");
  }

    uvar2 = GS_CreateBuffer(unaff_r29, 1);
    geom->unk0x14 = arg1;
    geom->unk0x18 = temp_r3;
    geom->unk0xC = arg2;
    geom->unk0x10 = arg1;

  return;
}

NuGeom* NuGeomCreate(void) 
{
    NuGeom* geom;

    geom = (NuGeom *)NuMemAlloc(0x30);
    memset(geom,0, 0x30);
    return geom;
}

void NuPrimDestroy(NuPrim* prim)

{
  if ((prim != 0) && (*(int *)(prim + 0x14) != 0)) {
    GS_DeleteBuffer();
    *(undefined4 *)(prim + 0x14) = 0;
  }
  return;
}
