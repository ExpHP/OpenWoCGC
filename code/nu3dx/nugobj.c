#include "nugobj.h"

//void memset(void*, int, int, ...); // the crclr at 24 means memset takes varargs. why would a memset take varargs? no idea.
//void* NuMemAlloc(int);

void NuGobjInit(void) {
    f32 temp_f1;

    if ((s32) sysinit != 0) {
        NuGobjClose();
    }
    temp_f1 = lbl_8011CD34;
    sysgobj = 0;
    sysinit = 1;
    NuLightFog(0, 0, 0, temp_f1, temp_f1);
    //GHIDRA:NuLightFog(0x3ff0000000000000,0x3ff0000000000000,0,0,0);

    return;
}


/*///////////////////////////////////////NULIGHTFOG CALLED BY MAIN
          if ((Level == 2) && (VEHICLECONTROL != 1)) {
            NuLightFog(0,0,0x40000000,BLUR,0);
          }
          else {
            NuLightFog((double)*(float *)(LDATA + 0x44),(double)*(float *)(LDATA + 0x48),
                       level_fogcolour,BLUR,
                       (uint)*(byte *)(LDATA + 0x53) << 0x18 | (uint)*(byte *)(LDATA + 0x52) << 0x 10
                       | (uint)*(byte *)(LDATA + 0x51) << 8 | (uint)*(byte *)(LDATA + 0x50));
          }
////////////////////////////////*/




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

void NuGobjDestroy(NuGobj *obj)

{
  NuGobj *child_maybe;
  NuGeom *next;
  NuGeom *prev;
  
  child_maybe = *(NuGobj **)&obj->field_0x4c;
  prev = obj->geoms;
  while (prev != NULL) {
    next = prev->next;
    NuGeomDestroy(prev);
    prev = next;
  }
  if (obj->prev != NULL) {
    obj->prev->next = obj->next;
  }
  if (obj->next != NULL) {
    obj->next->prev = obj->prev;
  }
  if (child_maybe != NULL) {
    NuGobjDestroy(child_maybe);
  }
  return;
}

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

/*NuGobjCalcFaceOnDims(...)
{
	TODO
}
*/

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



/*//////////////////////////////////////NUGEOM STUFF//////////////////////////////////////////////////////////////*/

NuGeom* NuGeomCreate(void) 
{
    NuGeom* geom;

    geom = (NuGeom *)NuMemAlloc(0x30);
    memset(geom,0, 0x30);
    return geom;
}


NuFaceOnGeom* NuFaceOnGeomCreate(void)
{
  NuFaceOnGeom* ret = (NuFaceOnGeom*)NuMemAlloc(sizeof(NuFaceOnGeom)); \\0x30
  memset(ret, 0, sizeof(NuFaceOnGeom));
  return ret;
}

void NuGeomDestroy(NuGeom *geom)
{

  uint buffer;
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
	if ((*(int *)(geom->_padding_28 + 4) != 0) &&
		(buffer = *(uint *)(*(int *)(geom->_padding_28 + 4) + 0x14), buffer != 0)) {
		GS_DeleteBuffer(buffer);
	}
	return;
}

/*NuGeomCreateVB -TODO

	//void NuGeomCreateVB(NuGeom* geom, s32 param_2, s32 vtxType, s32 param_4);
  void NuGeomCreateVB(NuGeom *geom,int param_2,NU_VERTEX_TYPE vtxType) //PARAM2 MAXCLOUDSIZE FLOAT to INT? //4th parameter?
{
  GS_Buffer *v_buffer;
  
  //SWITCH?
  if (vtxType == 0x53) {
    v_buffer = (GS_Buffer*) (param_2 * 0x1c);
    goto LAB_800b001c;
  }
  if (vtxType < 0x54) {
    if (vtxType == 0x11) {
      v_buffer = (GS_Buffer*) (param_2 << 4);
      goto LAB_800b001c;
    }
    if (vtxType == 0x51) {
      v_buffer = (GS_Buffer*)(param_2 * 0x18);
      goto LAB_800b001c;
    }
  }
  else {
    if (vtxType == 0x59) {
      v_buffer = (GS_Buffer*)(param_2 * 0x24);
      goto LAB_800b001c;
    }
    if (vtxType == 0x5d) {
      v_buffer = (GS_Buffer*)(param_2 * 0x38);
      goto LAB_800b001c;
    }
  }
    //END
error_func e = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nugobj.c",0x270);
		e("NuGeomCreateVB : Unknown vertex type!");
LAB_800b001c:
  if (geom->vertex_buffer != (GS_Buffer *)0x0) {
    error_func e = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nugobj.c",0x274); 
		e("NuGeomCreateVB : geom already has VB");
  }
  v_buffer = GS_CreateBuffer((int *)v_buffer,1);
  geom->__count_1__mebbe_count_in_allocation = param_2;
  geom->vertex_buffer = v_buffer;
  geom->vertex_type = vtxType;
  geom->__count_2__mebbe_count_actually_in_use = param_2;
  return;
}
*/

void NuGeomDestroyVB(NuGeom *geom)

{
	if(geom->buffer != (GS_Buffer *)0x0){
		GS_DeleteBuffer(geom->buffer);
		geom->buffer = (GS_Buffer *)0x0;
		}
	return;
}


// Append prim to geom
void NuGeomAddPrim(struct NuGeom *geom, struct NuPrim *prim)
{
    struct NuPrim *head;
    struct NuPrim *tail;
    struct NuPrim *iter;

    head = geom->prims;
    tail = NULL;

    // When iter is NULL, tail will be the last non-NULL prim (list tail)
    for (iter = head; iter != NULL; iter = iter->next)
    {
        tail = iter;
    }

    // Append prim (NULL tail = empty list)
    if (tail != NULL)
    {
        tail->next = prim;
    }

    // I thought prims was the list head???
    // Not sure what's going on here
    geom->prims = prim;
}



// Append skin to geom
void NuGeomAddSkin(struct NuGeom *geom, struct NuSkin *skin)
{
    struct NuSkin *head;
    struct NuSkin *tail;
    struct NuSkin *iter;

    head = geom->skins;
    tail = NULL;

    // When iter is NULL, tail will be the last non-NULL skin (list tail)
    for (iter = head; iter != NULL; iter = iter->next)
    {
        tail = iter;
    }

    // Append skin (NULL tail = empty list)
    if (tail != NULL)
    {
        tail->next = skin;
    }

    // I thought skins was the list head???
    // Not sure what's going on here
    geom->skins = skin;
}

NuPrim * NuPrimCreate(int amount,uint type)
{
  NuPrim *ret;
  uint data;
  byte *buffer;
  
  ret = (NuPrim *)NuMemAlloc(0x3c);
  memset(ret,0,0x3c);
  ret->type = type;
  ret->amount = (short)amount;
  ret->amount2Maybe = (short)amount;
  if (2 < type) {
    data = NuMemAlloc(amount * 2);
    ret->data = data;
    buffer = (byte *)GS_CreateBuffer(amount * 2,2);
    ret->buffer = buffer;
  }
  return ret;
}

void NuPrimDestroy(NuPrim *prim)
{
  if ((prim != (NuPrim *)0x0) && (prim->buffer != (byte *)0x0)) {
    GS_DeleteBuffer((uint)prim->buffer);
    prim->buffer = (byte *)0x0;
  }
  return;
}

// Vertex stride = size of 1 vertex element
void NuVtxStride(NU_VERTEX_TYPE type)
{
    switch (type)
    {
    case 0x59:
        return 0x24;
    case 0x5D:
        return 0x38;
    case 0x53:
        return 0x1C;
    case 0x51:
        return 0x18;
    case 0x11:
        return 0x10;
    }

    NuError("NuVtxStride: Unknown vertex type");
}

// UV animation for all gobjs
void NuAnimUV(void)
{
    struct NuGobj *gobj;

    _timer++;

    // Equivalent to (timer % 2 == 0). 30 fps animation?
    if ((timer & 1) == 0)
    {
        if (!Paused && sysinit)
        {
            // Animate all gobjs
            for (gobj = sysgobj; gobj != NULL; gobj = gobj->next)
            {
                NuMtlUVAnimation(gobj);
            }
        }
    }
}


//BufferTypes is uint[4], GS_BufferSize is uint 
void GS_DeleteBuffer(u8* buffer)
{
  GS_Buffer* buf = (GS_Buffer*)(buffer - 2);
  GS_BufferSize -= buf->size;
  BufferTypes[buf->type] -= buf->size;
  free(buf);
}

