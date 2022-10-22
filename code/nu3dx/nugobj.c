#include "nugobj.h"


void NuGobjInit(void) {

    if ((s32) sysinit != 0) {
        NuGobjClose();
    }
    sysgobj = 0; //may be a pointer or counter
    sysinit = 1; //sysinit is a bool


    NuLightFog(0, 0, 0);
    //GHIDRA:NuLightFog(0x3ff0000000000000,0x3ff0000000000000,0,0,0);

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

//TBREV
void NuGobjDestroy(NuGobj *obj)

{
  NuGobj *child_maybe;
  NuGeom *next;
  NuGeom *prev;
  
  child_maybe = obj->__another_spooky_gobj; //field_0x4c
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
  NuGobj* gobj = (NuGobj*)NuMemAlloc(sizeof(NuGobj)); //0x64
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
	WIP
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



/**********************************************NUGEOM STUFF*************************************/

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
  NuGeomDestroyVB(geom);
  for (NuPrim* prim = geom->primLinkedList; prim != NULL; prim = prim->next) {
    NuPrimDestroy(prim);
  }

  NuBlendShape* blendShape;
  if (blendShape = geom->blendShape) {
    void* buffer;
    if (buffer = blendShape->vertexBuffer) {
      GS_DeleteBuffer(buffer);
    }
  }

  return;
}



//TBTESTED

// Create geometry vertex buffer
void NuGeomCreateVB(struct NuGeom* geom, u32 vtxCount, NU_VERTEX_TYPE vtxType, BOOL param_4) {
        // Boolean argument is unused
    #pragma unused(param_4);
    
    u32 vtxSize;
    GS_Buffer* vtxBuffer;
	
    switch(vtxType) {
		
			//determining the vertex buffer size (vertex count * sizeof(buffer_type_element)
		
    case 0x59:
        vtxSize = vtxCount * 0x24;
        break;
    case 0x51:
        vtxSize = vtxCount * 0x18;
        break;
    case 0x5D:
        vtxSize = vtxCount * 0x38;
        break;
    case 0x53:
        vtxSize = vtxCount * 0x1C;
        break;
    case 0x11:
        vtxSize = vtxCount * 0x10;
        break;        
    default:
        NuError("NuGeomCreateVB : Unknown vertex type!");
    }
    
    NuAssert(geom->vertex_buffer == NULL, "NuGeomCreateVB : geom already has VB");
    
    // Second argument is some vertex type
    vtxBuffer = GS_CreateBuffer(vtxSize, 1);
    
    geom->count_1 = vtxCount;
    geom->vertex_buffer = vtxBuffer;
    geom->vertex_type = vtxType;
    geom->count_2 = vtxCount;
	
	/*	why the vertex count is stored twice inside the NuGeom?
        maybe is:
		geom->vertex_buffer_size = vtxSize;
		geom->vertex_buffer = vtxBuffer;
		geom->vertex_type = vtxType;
		geom->vertex_count = vtxCount;
	*/
}

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

NuPrim* NuPrimCreate(s16 amount, u32 type) {
    s32* data;
    struct NuPrim *prim;

    prim = NuMemAlloc(0x3C);
    memset(prim,0,0x3C);
    prim->type = type;
    prim->amount = amount;
    prim->amount2Maybe = amount;
    if (type > 2U) {
        data = (s32*)(amount * 2);
        prim->data = NuMemAlloc((s32)data);
        prim->buffer = (byte*)GS_CreateBuffer((s32)data, 2);
    }
    return prim;
}


void NuPrimDestroy(NuPrim* prim) {
    if ((prim != NULL) && ((s32) prim->buffer != 0)) {
        GS_DeleteBuffer((s32)prim->buffer);
        prim->buffer = 0;
    }
	return;
}


//BufferTypes is uint[4], GS_BufferSize is uint 
void* GS_CreateBuffer (uint bufSize, uint bufferType){
	GS_Buffer *buf;
	
	buf = (GS_Buffer*)malloc(bufsize + 8);
	GS_BufferSize = GS_BufferSize + bufsize;
	BufferTypes[bufferType] = BufferTypes[bufferType] + bufsize;
	buf->size = bufsize;
	buf->type = bufferType;
	return buf + 1;
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

