#include "nulight.h"

u32 initialised = 0;
u32 maxlights = 3;
u32 numlights = 0;
s32 freelight = -1;
s32 alloclight = -1;
static s32 current_lights_stored = 0;
float buglight_distance;

struct nusyslight_s light[3];
struct _LIGHTLIST GS_LightList[3];
struct nulight_s* currentlight1;
struct nulight_s* currentlight2;
struct nulight_s* currentlight3;
struct numtl_s* NuLightAddMat;

//Ext var
s32 HazeValue = 0;
f32 NuRndrFogNear;
f32 NuRndrFogFar;
u32 NuRndrFogBlur;
u32 NuRndrFogCol;

void NuLightClose()
{
    initialised = 0;
    numlights = 0;
}

void NuLightFog(float pnear, float pfar, u32 colour, int blur, int haze)

{
    NuRndrFogCol = (colour & 0xff000000) + (colour & 0xff) * 0x10000 + (colour & 0xff00) +
        (colour >> 0x10 & 0xff);
    NuRndrFogBlur = blur << 0x18;
    HazeValue = (u32)haze >> 0x18;
    NuRndrFogNear = pnear;
    NuRndrFogFar = pfar;
    if (pfar == pnear) {
        GS_SetupFog(0, 0.0, 0.0, 0);
    }
    else {
        GS_SetupFog(1, pnear, pfar, NuRndrFogCol);
    }
    return;
}


void NuLightInit(void)

{
    int i;
    int iVar1;
    int* next;

    if (initialised != 0) {
        NuLightClose();
    }
    numlights = 0;
    maxlights = 3;
    memset(light, 0, 0x12c);
    light[0].last = -1;
    next = &light[1].next;
    light[0].next = 1;
    i = 1;
    do {
        iVar1 = i;
        i = iVar1 + 1;
        next[1] = iVar1 + -1;
        *next = i;
        next = next + 0x19;
    } while (i < 2);
    light[i].last = iVar1;
    light[i].next = -1;
    freelight = 0;
    alloclight = -1;
    initialised = 1;
    return;
}

struct nulight_s* NuLightCreate(void) {
    struct nusyslight_s* pnVar1;
    struct nusyslight_s* ret;
    s32 alloc;
    s32 free;

    alloc = alloclight;
    free = freelight;
    if (numlights < maxlights) {
        alloclight = freelight;
        pnVar1 = light + freelight;
        ret = light + freelight;
        freelight = pnVar1->next;
        light[pnVar1->next].last = -1;
        light[alloc].last = free;
        light[free].next = alloc;
        memset(ret, 0, 100);
        NuMtxSetIdentity(&light[free].light.mtx);
        numlights = numlights + 1;
    }
    else {
        ret = NULL;
    }
    return &ret->light;
}


void NuLightUpdate(struct nulight_s* l)

{
    int Index;
    struct _D3DLIGHT8 d3dlight;

    d3dlight.Direction.z = -(l->mtx).mtx[2][2];
    d3dlight.Diffuse.r = (l->diffuse).b;
    d3dlight.Diffuse.g = (l->diffuse).g;
    d3dlight.Direction.x = -(l->mtx).mtx[2][0];
    d3dlight.Diffuse.b = (l->diffuse).r;
    d3dlight.Direction.y = -(l->mtx).mtx[2][1];
    d3dlight.Ambient.r = (l->ambient).b;
    d3dlight.Ambient.g = (l->ambient).g;
    d3dlight.Ambient.b = (l->ambient).r;
    d3dlight.Position.x = (l->mtx).mtx[3][0];
    d3dlight.Position.y = (l->mtx).mtx[3][1];
    d3dlight.Position.z = (l->mtx).mtx[3][2];
    Index = (int)(l + 0x1741a7c) * -0x3d70a3d7 >> 2;
    d3dlight.Type = D3DLIGHT_DIRECTIONAL;
    d3dlight.Diffuse.a = 1.0;
    d3dlight.Specular.r = 0.0;
    d3dlight.Specular.g = 0.0;
    d3dlight.Specular.b = 0.0;
    d3dlight.Specular.a = 1.0;
    d3dlight.Ambient.a = 1.0;
    d3dlight.range = 1000.0;
    d3dlight.Phi = 0.0;
    d3dlight.falloff = 0.0;
    d3dlight.attenuation0 = 1.0;
    d3dlight.attenuation1 = 0.0;
    d3dlight.attenuation2 = 0.0;
    d3dlight.Theta = 0.0;
    if (((d3dlight.Direction.x == 0.0) && (d3dlight.Direction.y == 0.0)) &&
        (d3dlight.Direction.z == 0.0)) {
        d3dlight.Direction.x = 1.0;
    }
    GS_SetLight(Index, &d3dlight);
    GS_LightEnable(Index, 1);
    return;
}

struct nulight_s* NuLightGetLight(int index)

{
    if (numlights <= index) {
        return NULL;
    }
    return &light[index].light;
}

void NuLightSetAmbientLight(struct nuvec_s* c0)

{
    struct nulight_s* curr;

    curr = currentlight1;
    if (currentlight1 != NULL) {
        (currentlight1->ambient).r = c0->x;
        (curr->ambient).g = c0->y;
        (curr->ambient).b = c0->z;
    }
    curr = currentlight2;
    if (currentlight2 != NULL) {
        (currentlight2->ambient).r = c0->x;
        (curr->ambient).g = c0->y;
        (curr->ambient).b = c0->z;
    }
    curr = currentlight3;
    if (currentlight3 != NULL) {
        (currentlight3->ambient).r = c0->x;
        (curr->ambient).g = c0->y;
        (curr->ambient).b = c0->z;
    }
    current_lights_stored = 0;
    return;
}


void NuLightSetDirectionalLights(struct nuvec_s* d0, struct nucolour3_s* c0, struct nuvec_s* d1, struct nucolour3_s* c1, struct nuvec_s* d2, struct nucolour3_s* c2)
{
    f32 fVar1;
    f32 fVar2;
    struct nulight_s* curr;

    currentlight1 = NuLightCreate();

    if ((currentlight1 != NULL) || (currentlight1 != NULL))
    {
        curr = currentlight1;
        fVar1 = 1.0;
        (currentlight1->ambient).b = 0.6;
        (curr->ambient).r = 0.6;
        (curr->ambient).g = 0.6;
        fVar2 = c0->r;

        if (1.0 < c0->r) {
            fVar2 = fVar1;
        }
        (curr->diffuse).r = fVar2;
        fVar2 = c0->g;
        if (1.0 < c0->g) {
            fVar2 = fVar1;
        }
        (curr->diffuse).g = fVar2;
        fVar2 = c0->b;
        if (1.0 < c0->b) {
            fVar2 = fVar1;
        }

        (curr->diffuse).b = fVar2;
        NuMtxSetIdentity(&curr->mtx);
        NuMtxAlignZ(&currentlight1->mtx, d0);
    }

    currentlight2 = NuLightCreate();


    if ((currentlight2 != NULL) || (currentlight2 != NULL))
    {
        curr = currentlight2;
        fVar1 = 1.0;
        (currentlight2->ambient).b = 0.6;
        (curr->ambient).r = 0.6;
        (curr->ambient).g = 0.6;
        fVar2 = c1->r;
        if (1.0 < c1->r) {
            fVar2 = fVar1;
        }
        (curr->diffuse).r = fVar2;
        fVar2 = c1->g;
        if (1.0 < c1->g) {
            fVar2 = fVar1;
        }
        (curr->diffuse).g = fVar2;
        fVar2 = c1->b;
        if (1.0 < c1->b) {
            fVar2 = fVar1;
        }
        (curr->diffuse).b = fVar2;
        NuMtxSetIdentity(&curr->mtx);
        NuMtxAlignZ(&currentlight2->mtx, d1);
    }

    currentlight3 = NuLightCreate();

    if ((currentlight3 == NULL) && (currentlight3 == NULL)) 
    {
        current_lights_stored = 0;
            return;
    }
    curr = currentlight3;
        fVar1 = 1.0;
        (currentlight3->ambient).b = 0.6;
        (curr->ambient).r = 0.6;
        (curr->ambient).g = 0.6;
        fVar2 = c2->r;
        if (1.0 < c2->r) {
            fVar2 = fVar1;
        }
    (curr->diffuse).r = fVar2;
    fVar2 = c2->g;
    if (1.0 < c2->g) {
        fVar2 = fVar1;
    }
    (curr->diffuse).g = fVar2;
    fVar2 = c2->b;
    if (1.0 < c2->b) {
        fVar2 = fVar1;
    }
    (curr->diffuse).b = fVar2;
    NuMtxSetIdentity(&curr->mtx);
    NuMtxAlignZ(&currentlight3->mtx, d2);
    current_lights_stored = 0;
    return;

}


int NuLightStoreCurrentLights(void)

{
    s32 iVar1;
    struct nulight_s* pnVar2;
    struct nulight_s* pnVar3;
    struct nulight_s* pnVar4;
    s32 i;
    s32 iVar5;
    struct nulight_s* pnVar6;
    s32 lightsleft;

    if (1000 - num_stored_lights < 1) {
        /*NuErrorProlog("C:/source/crashwoc/code/nu3dx/nulight.c", 0x187);
        ("NuLight: Out of light storage space!");*/
    }
    if (current_lights_stored == 0) {
        lightsleft = 0;
        if (0 < numlights) {
            do {
                pnVar3 = NuLightGetLight(lightsleft);
                i = lightsleft + 1;
                iVar5 = 0x48;
                pnVar2 = StoredLights[num_stored_lights].light + lightsleft;
                do {
                    pnVar6 = pnVar3;
                    pnVar4 = pnVar2;
                    iVar5 = iVar5 + -0x18;
                    (pnVar4->ambient).r = (pnVar6->ambient).r;
                    (pnVar4->ambient).g = (pnVar6->ambient).g;
                    (pnVar4->ambient).b = (pnVar6->ambient).b;
                    (pnVar4->diffuse).r = (pnVar6->diffuse).r;
                    (pnVar4->diffuse).g = (pnVar6->diffuse).g;
                    (pnVar4->diffuse).b = (pnVar6->diffuse).b;
                    iVar1 = numlights;
                    pnVar2 = (struct nulight_s*)&pnVar4->mtx;
                    pnVar3 = (struct nulight_s*)&pnVar6->mtx;
                } while (iVar5 != 0);
                //NEED CORRECTION
                //(pnVar4->mtx).mtx[0] = (pnVar6->mtx).mtx[0];
                //(pnVar4->mtx).mtx[1] = (pnVar6->mtx).mtx[1];
                //(pnVar4->mtx).mtx[2] = (pnVar6->mtx).mtx[2];
                //(pnVar4->mtx).mtx[3] = (pnVar6->mtx).mtx[3];
                lightsleft = i;
            } while (i < iVar1);
        }
        current_lights_stored = 1;
        lightsleft = num_stored_lights;
        num_stored_lights = num_stored_lights + 1;
    }
    else {
        lightsleft = num_stored_lights + -1;
    }
    return lightsleft;
}


void NuLightSetStoredLights(s32 index)

{
    struct nulight_s* pnVar1;
    struct nulight_s* pnVar2;
    struct numtx_s* pnVar3;
    struct numtx_s* pnVar4;
    struct nulight_s* pnVar5;
    s32 iVar6;
    struct nulight_s* pnVar7;
    struct nulight_s* pnVar8;

    if (currentlight1 == NULL) {
        currentlight1 = NuLightCreate();
    }
    if (currentlight2 == NULL) {
        currentlight2 = NuLightCreate();
    }
    if (currentlight3 == NULL) {
        currentlight3 = NuLightCreate();
    }
    iVar6 = 0x48;
    pnVar4 = (struct numtx_s*)(StoredLights + index);
    pnVar1 = currentlight1;
    do {
        pnVar8 = pnVar1;
        pnVar3 = pnVar4;
        iVar6 = iVar6 + -0x18;
        (pnVar8->ambient).r = (((struct nulight_s*)pnVar3->mtx)->ambient).r;
        (pnVar8->ambient).g = (((struct nulight_s*)pnVar3->mtx)->ambient).g;
        (pnVar8->ambient).b = (((struct nulight_s*)pnVar3->mtx)->ambient).b;
        (pnVar8->diffuse).r = (((struct nulight_s*)pnVar3->mtx)->diffuse).r;
        (pnVar8->diffuse).g = (((struct nulight_s*)pnVar3->mtx)->diffuse).g;
        pnVar4 = &((struct nulight_s*)pnVar3->mtx)->mtx;
        (pnVar8->diffuse).b = (((struct nulight_s*)pnVar3->mtx)->diffuse).b;
        pnVar2 = currentlight1;
        pnVar1 = (struct nulight_s*)&pnVar8->mtx;
    } while (iVar6 != 0);
    
    //NEED CORRECTION
    /*
    (pnVar8->mtx).mtx[0] = pnVar4->mtx[0];
    (pnVar8->mtx).mtx[1] = pnVar3->mtx[1][3];
    (pnVar8->mtx).mtx[2] = pnVar3->mtx[2][0];
    (pnVar8->mtx).mtx[3] = pnVar3->mtx[2][1];*/
    NuLightUpdate(pnVar2);
    iVar6 = 0x48;
    pnVar1 = StoredLights[index].light + 1;
    pnVar2 = currentlight2;
    do {
        pnVar7 = pnVar2;
        pnVar5 = pnVar1;
        iVar6 = iVar6 + -0x18;
        (pnVar7->ambient).r = (pnVar5->ambient).r;
        (pnVar7->ambient).g = (pnVar5->ambient).g;
        (pnVar7->ambient).b = (pnVar5->ambient).b;
        (pnVar7->diffuse).r = (pnVar5->diffuse).r;
        (pnVar7->diffuse).g = (pnVar5->diffuse).g;
        (pnVar7->diffuse).b = (pnVar5->diffuse).b;
        pnVar8 = currentlight2;
        pnVar1 = (struct nulight_s*)&pnVar5->mtx;
        pnVar2 = (struct nulight_s*)&pnVar7->mtx;
    } while (iVar6 != 0);

    //NEED CORRECTION
    /*(pnVar7->mtx).mtx[0] = (pnVar5->mtx).mtx[0];
    (pnVar7->mtx).mtx[1] = (pnVar5->mtx).mtx[1];
    (pnVar7->mtx).mtx[2] = (pnVar5->mtx).mtx[2];
    (pnVar7->mtx).mtx[3] = (pnVar5->mtx).mtx[3];
    */
    NuLightUpdate(pnVar8);
    iVar6 = 0x48;
    pnVar1 = StoredLights[index].light + 2;
    pnVar2 = currentlight3;
    do {
        pnVar7 = pnVar2;
        pnVar5 = pnVar1;
        iVar6 = iVar6 + -0x18;
        (pnVar7->ambient).r = (pnVar5->ambient).r;
        (pnVar7->ambient).g = (pnVar5->ambient).g;
        (pnVar7->ambient).b = (pnVar5->ambient).b;
        (pnVar7->diffuse).r = (pnVar5->diffuse).r;
        (pnVar7->diffuse).g = (pnVar5->diffuse).g;
        (pnVar7->diffuse).b = (pnVar5->diffuse).b;
        pnVar8 = currentlight3;
        pnVar1 = (struct nulight_s*)&pnVar5->mtx;
        pnVar2 = (struct nulight_s*)&pnVar7->mtx;
    } while (iVar6 != 0);

    //NEED CORRECTION
    /*(pnVar7->mtx).mtx[0] = (pnVar5->mtx).mtx[0];
    (pnVar7->mtx).mtx[1] = (pnVar5->mtx).mtx[1];
    (pnVar7->mtx).mtx[2] = (pnVar5->mtx).mtx[2];
    (pnVar7->mtx).mtx[3] = (pnVar5->mtx).mtx[3];
    */
    NuLightUpdate(pnVar8);
    return;
}


s32 GS_SetLight(s32 Index, struct _D3DLIGHT8* pLight)
{
    struct _D3DLIGHT8* p_Var1;
    struct _D3DLIGHT8* p_Var2;
    struct _D3DLIGHT8* p_Var3;
    int size;

    size = 0x60;
    p_Var3 = &GS_LightList[Index].Light;
    do {
        p_Var2 = p_Var3;
        p_Var1 = pLight;
        size = size + -0x18;
        p_Var2->Type = p_Var1->Type;
        (p_Var2->Diffuse).r = (p_Var1->Diffuse).r;
        (p_Var2->Diffuse).g = (p_Var1->Diffuse).g;
        (p_Var2->Diffuse).b = (p_Var1->Diffuse).b;
        (p_Var2->Diffuse).a = (p_Var1->Diffuse).a;
        pLight = (struct _D3DLIGHT8*)&(p_Var1->Specular).g;
        (p_Var2->Specular).r = (p_Var1->Specular).r;
        p_Var3 = (struct _D3DLIGHT8*)&(p_Var2->Specular).g;
    } while (size != 0);
    *(float*)p_Var3 = *(float*)pLight;
    p_Var2->Specular.b = (p_Var1->Specular).b;
    return 0;
}

void NuLightClearStoredLights(void)

{
    current_lights_stored = 0;
    num_stored_lights = 0;
    return;
}

void NuLightAddSpotXSpanFade(struct nuvec_s* pos, float XSpan, float fade)

{
    buglight_distance = (2.0 / XSpan) * 3.0;
    return;
}

void NuLightMatInit(void)

{
    struct numtl_s* pnVar1;
    struct numtlattrib_s nVar2;

    pnVar1 = NuMtlCreate(1);
    nVar2 = pnVar1->attrib;
    NuLightAddMat = pnVar1;
    (pnVar1->diffuse).b = 1.0;
    pnVar1->alpha = 0.999;
    pnVar1->tid = 0;
    pnVar1->alpha_sort = 0x100;
    (pnVar1->diffuse).r = 1.0;
    (pnVar1->diffuse).g = 1.0;
    pnVar1->attrib = (struct numtlattrib_s)((u32)nVar2 & 0x3c00fff9 | 0x81660002);
    NuMtlUpdate();
    return;
}


s32 GS_LightEnable(s32 Index, s32 Enable)

{
    GS_LightList[Index].EnableLight = Enable;
    return 0;
}

void GS_SetupFog(int type, float startz, float endz, u32 colour)
{
    return 0;
}