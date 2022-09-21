#ifndef NUGOBJ_H
#define NUGOBJ_H

#include "../types.h"
#include "nu3dxtypes.h"

/*
  800af700 000058 800af700  4 NuGobjInit 	Global
  800af758 000058 800af758  4 NuGobjClose 	Global
  800af7b0 000070 800af7b0  4 NuGobjCreate 	Global
  800af820 000084 800af820  4 NuGobjDestroy 	Global
  800af8a4 000038 800af8a4  4 NuGobjAddGeom 	Global
  800af8dc 000038 800af8dc  4 NuGobjAddFaceOnGeom 	Global
  800af914 0002c8 800af914  4 NuGobjCalcFaceOnDims 	Global
  800afbdc 0002a8 800afbdc  4 NuGobjCalcDims 	Global
  800afe84 000044 800afe84  4 NuGeomCreate 	Global
  800afec8 000044 800afec8  4 NuFaceOnGeomCreate 	Global
  800aff0c 00006c 800aff0c  4 NuGeomDestroy 	Global
  800aff78 00010c 800aff78  4 NuGeomCreateVB 	Global
  800b0084 000044 800b0084  4 NuGeomDestroyVB 	Global
  800b00c8 000038 800b00c8  4 NuGeomAddPrim 	Global
  800b0100 000038 800b0100  4 NuGeomAddSkin 	Global
  800b0138 000084 800b0138  4 NuPrimCreate 	Global
  800b01bc 000048 800b01bc  4 NuPrimDestroy 	Global
  800b0204 0000a8 800b0204  4 NuVtxStride 	Global
  800b02ac 000070 800b02ac  4 NuAnimUV 	Global
*/

typedef struct NuFaceOnGeom {
    struct NuFaceOnGeom* next;
    char _padding_4[0xC];
    struct NuVtx51* __vertices;
    char _padding_14[0x1C];
}; // 0x30

typedef struct NuGeom
{
    struct NuGeom* next;
    struct NuMtl* mtls;
    char _padding_8[0x4];
    enum NU_VERTEX_TYPE vertex_type;
    int32_t __count_2__mebbe_count_actually_in_use;
    int32_t __count_1__mebbe_count_in_allocation;
    void* vertex_buffer;
    char _padding_1C[0x4];
    struct NuPrim* prims;
    char _padding_24[0xC];
}; // 0x30

typedef struct NuGobj {
    struct NuGobj* next;
    struct NuGobj* prev;
    int32_t __causes_calc_face_on_dims;
    struct NuGeom* geoms;
    struct NuFaceOnGeom* face_ons;
    float bounding_radius_from_origin;
    float bounding_rsq_from_origin;
    struct NuVec bounding_box_min;
    struct NuVec bounding_box_max;
    struct NuVec bounding_box_center;
    float bounding_radius_from_center;
    float bounding_rsq_from_center;
    char _padding_48[0x4];
    struct NuGobj* __another_spooky_gobj;
    char _padding_50[0x14];
}; // 0x64

typedef struct NuMtl
{
    char _padding_0[0x4];
    uint32_t __funny_flags_or_float;
    int32_t __word_08;
    char _padding_C[0x8];
    float __float_14;
    float __float_18;
    float __float_1c;
    char _padding_20[0x14];
    float __float_34;
    struct NuMtl* __possibly_a_list_ptr;
    int16_t __short_16;
    char _padding_3E[0xA];
    int32_t __word_48;
    char _padding_4C[0x14];
    struct NuMtl* __another_list_ptr;
    struct NuMtl* __another_list_ptr_2;
    char _padding_68[0x4];
}; // 0x6c

typedef struct NuPrim
{
    struct NuPrim* next; \\0x20?
    int32_t __word_4;
    int16_t __short_8;
    int16_t __short_a;
    void* __another_ptr;
    char _padding_10[0x4];
    void* __ptr;
    char _padding_18[0x24];
}; // 0x3c

typedef struct NuVec {
    float x;
    float y;
    float z;
}; // 0xC

//---------------------------
// WIP NAMES

enum NU_VERTEX_TYPE : uint32_t
{
    VERTEX_TYPE_11 = 0x11,
    VERTEX_TYPE_51 = 0x51,
    VERTEX_TYPE_53 = 0x53,
    VERTEX_TYPE_59 = 0x59,
    VERTEX_TYPE_5D = 0x5d
};

typedef struct NuVtx11 {
    struct NuVec pos;
    char _padding_C[4];
}; // 0x10

typedef struct NuVtx51 {
    struct NuVec pos;
    char _padding_C[0xC];
}; // 0x18

typedef struct NuVtx53 {
    struct NuVec pos;
    char _padding_C[0x10];
}; // 0x1C

typedef struct NuVtx59 {
    struct NuVec pos;
    char _padding_C[0x18];
}; // 0x24

typedef struct NuVtx5d {
    struct NuVec pos;
    char _padding_C[0x2C];
}; // 0x38




void NuGeomCreateVB(NuGeom* geom, s32 param_2, s32 vtxType, s32 param_4);


#endif // !NUGOBJ_H