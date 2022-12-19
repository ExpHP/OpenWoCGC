typedef unsigned char   undefined;

typedef unsigned char    bool;
typedef unsigned char    byte;
typedef unsigned int    dword;
typedef int    int3;
typedef long long    longlong;
typedef unsigned long long    qword;
typedef unsigned char    uchar;
typedef unsigned int    uint;
typedef unsigned long    ulong;
typedef unsigned long long    ulonglong;
typedef unsigned char    undefined1;
typedef unsigned short    undefined2;
typedef unsigned int    undefined3;
typedef unsigned int    undefined4;
typedef unsigned long long    undefined5;
typedef unsigned long long    undefined6;
typedef unsigned long long    undefined7;
typedef unsigned long long    undefined8;
typedef unsigned short    ushort;
typedef unsigned short    word;
typedef enum enum_1092 {
    LIO_WAIT=0,
    LIO_NOWAIT=1
} enum_1092;

typedef struct instNUGCUTCAM_s instNUGCUTCAM_s, *PinstNUGCUTCAM_s;

struct instNUGCUTCAM_s {
    uchar flags;
    uchar tgt_ix;
    char pad[2];
};

typedef struct instNUGCUTCAMSYS_s instNUGCUTCAMSYS_s, *PinstNUGCUTCAMSYS_s;

typedef struct NUGCUTCAMTGT_s NUGCUTCAMTGT_s, *PNUGCUTCAMTGT_s;

typedef struct nuvec_s nuvec_s, *Pnuvec_s;

struct nuvec_s {
    float x;
    float y;
    float z;
};

struct NUGCUTCAMTGT_s {
    struct nuvec_s * tgt;
    float frame;
    float nframes;
    char camid;
    char pad[3];
};

struct instNUGCUTCAMSYS_s {
    struct NUGCUTCAMTGT_s * tgts;
    struct instNUGCUTCAM_s * icutcams;
    uchar next_switch;
    char current_camera;
    uchar next_tgt_ix;
    uchar tgtarraysize;
    uchar ntgts;
    char pad[3];
};

typedef struct instNUGCUTCHAR_s instNUGCUTCHAR_s, *PinstNUGCUTCHAR_s;

struct instNUGCUTCHAR_s {
    void * character;
    float blend;
    float mtxblend;
    float frame1;
    float frame2;
    char flags;
    uchar prev_animix;
    uchar current_animix;
    uchar blendto_animix;
};

typedef struct instNUGCUTCHARSYS_s instNUGCUTCHARSYS_s, *PinstNUGCUTCHARSYS_s;

struct instNUGCUTCHARSYS_s {
    struct instNUGCUTCHAR_s * ichars;
};

typedef struct instNUGCUTLOCATOR_s instNUGCUTLOCATOR_s, *PinstNUGCUTLOCATOR_s;

struct instNUGCUTLOCATOR_s {
    float time;
    void * data;
};

typedef struct instNUGCUTLOCATORSYS_s instNUGCUTLOCATORSYS_s, *PinstNUGCUTLOCATORSYS_s;

struct instNUGCUTLOCATORSYS_s {
    struct instNUGCUTLOCATOR_s * ilocators;
};

typedef struct instNUGCUTRIGID_s instNUGCUTRIGID_s, *PinstNUGCUTRIGID_s;

typedef struct nuhspecial_s nuhspecial_s, *Pnuhspecial_s;

typedef struct nugscn_s nugscn_s, *Pnugscn_s;

typedef struct nuspecial_s nuspecial_s, *Pnuspecial_s;

typedef struct numtl_s numtl_s, *Pnumtl_s;

typedef struct nugobj_s nugobj_s, *Pnugobj_s;

typedef struct nuinstance_s nuinstance_s, *Pnuinstance_s;

typedef struct nugspline_s nugspline_s, *Pnugspline_s;

typedef struct nuinstanim_s nuinstanim_s, *Pnuinstanim_s;

typedef struct NuAnimData_s NuAnimData_s, *PNuAnimData_s;

typedef struct nutexanim_s nutexanim_s, *Pnutexanim_s;

typedef struct numtx_s numtx_s, *Pnumtx_s;

typedef struct nuspecialflags nuspecialflags, *Pnuspecialflags;

typedef struct numtlattrib_s numtlattrib_s, *Pnumtlattrib_s;

typedef struct nucolour3_s nucolour3_s, *Pnucolour3_s;

typedef union nufx_u nufx_u, *Pnufx_u;

typedef enum gobjtype_s {
    NUGOBJ_MESH=0,
    NUGOBJ_FACEON=1
} gobjtype_s;

typedef struct nugeom_s nugeom_s, *Pnugeom_s;

typedef struct NuFaceOnGeom NuFaceOnGeom, *PNuFaceOnGeom;

typedef struct nuinstflags_s nuinstflags_s, *Pnuinstflags_s;

typedef struct nuanimdatachunks_s nuanimdatachunks_s, *Pnuanimdatachunks_s;

typedef struct nutexanimenv_s nutexanimenv_s, *Pnutexanimenv_s;

typedef enum nuvtxtype_e {
    NUVT_PS=17,
    NUVT_LC1=81,
    NUVT_TLTC1=83,
    NUVT_TC1=89,
    NUVT_SK3TC1=93
} nuvtxtype_e;

typedef struct nuprim_s nuprim_s, *Pnuprim_s;

typedef struct NuSkin NuSkin, *PNuSkin;

typedef struct NUVTXSKININFO_s NUVTXSKININFO_s, *PNUVTXSKININFO_s;

typedef struct NuBlendShape NuBlendShape, *PNuBlendShape;

typedef enum nufaceontype_s {
    NUFACEON_FACEON=0,
    NUFACEON_FACEY=1
} nufaceontype_s;

typedef struct nufaceon_s nufaceon_s, *Pnufaceon_s;

typedef struct nuanimcurveset_s nuanimcurveset_s, *Pnuanimcurveset_s;

typedef struct nuanimkey_s nuanimkey_s, *Pnuanimkey_s;

typedef struct nuanimcurve_s nuanimcurve_s, *Pnuanimcurve_s;

typedef struct nutexanimprog_s nutexanimprog_s, *Pnutexanimprog_s;

typedef enum nuprimtype_e {
    NUPT_POINT=0,
    NUPT_LINE=1,
    NUPT_TRI=2,
    NUPT_TRISTRIP=3,
    NUPT_NDXLINE=4,
    NUPT_NDXTRI=5,
    NUPT_NDXTRISTRIP=6,
    NUPT_BEZPATCH=7,
    NUPT_BEZTRI=8,
    NUPT_FACEON=9,
    NUPT_QUADLIST=10
} nuprimtype_e;

typedef struct nuplane_s nuplane_s, *Pnuplane_s;

struct nugspline_s {
    short len;
    short ptsize;
    char * * name;
    char * pts;
};

struct nutexanimenv_s { /* NuTexAnimEnvCreate */
    struct nutexanimprog_s * prog;
    int pc;
    int rep_count[16];
    int rep_start[16];
    int rep_ix;
    int ra[16];
    int ra_ix;
    int pause;
    int pause_r;
    int pause_cnt;
    struct numtl_s * mtl;
    short * tids;
    int tex_ix;
    int dynalloc;
};

struct NuBlendShape {
    int nblends;
    struct nuvec_s * * blend_offsets;
    int * ix;
    struct nuvec_s * offsets;
    struct nuvec_s * ooffsets;
    int hVB; /* GS_Buffer * */
    int blendindex[10];
};

struct nuplane_s {
    float a;
    float b;
    float c;
    float d;
};

struct nufaceon_s {
    struct nuvec_s point;
    float width;
    float height;
    int colour;
};

struct numtx_s {
    float mtx[4][4];
};

struct nuinstflags_s {
    undefined field0_0x0;
    undefined field1_0x1;
    undefined field2_0x2;
    int isanimated:1;
    int visitest:1;
    int onscreen:1;
    int visible:1;
};

struct nuinstance_s {
    struct numtx_s matrix;
    int objid; /* Created by retype action */
    struct nuinstflags_s flags;
    struct nuinstanim_s * anim;
    short room_group;
    char special_flag;
    char pad[1];
};

struct nugscn_s { /* used in nusceneload */
    uint tids;
    uint numtid;
    struct numtl_s * mtls;
    int nummtl;
    int numgobj;
    struct nugobj_s * gobjs;
    int numinstance;
    struct nuinstance_s * instances;
    int numspecial;
    struct nuspecial_s * specials;
    void * splinedata;
    int numsplines;
    struct nugspline_s * splines;
    char * nametable;
    int numexspecials;
    struct nuspecial_s * exspecials;
    int exallocix;
    struct nuinstanim_s * instanimblock;
    struct NuAnimData_s * * instanimdata;
    int numinstanims;
    int numinstanceixs;
    short * instanceixs;
    short crossfade;
    short crossfaderate;
    int crossfadegobj;
    int crossfadefirst;
    int numtexanims;
    struct nutexanim_s * texanims;
    short * texanim_tids;
    short * instancelightix;
};

struct nuspecial_s {
    struct numtx_s mtx;
    struct nuinstance_s * instance;
    char * name;
    struct nuspecialflags * flags;
    int pad;
};

struct nuspecialflags {
    undefined field0_0x0;
    undefined field1_0x1;
    undefined field2_0x2;
    int ext_onscreen:1;
    int ext_vis:1;
    int ext:1;
};

struct nuhspecial_s {
    struct nugscn_s * scene;
    struct nuspecial_s * special;
};

struct instNUGCUTRIGID_s {
    struct nuhspecial_s special;
    char visibleframeix;
    char pad[3];
};

struct nuanimcurve_s {
    uint mask;
    struct nuanimkey_s * animkeys;
    uint numkeys;
    uint flags;
};

struct nutexanim_s {
    struct nutexanim_s * succ;
    struct nutexanim_s * prev;
    short * tids;
    short numtids;
    short dynalloc;
    struct numtl_s * mtl;
    struct nutexanimenv_s * env;
    char * ntaname;
    char * scriptname;
};

union nufx_u {
    void * voidptr;
};

struct nutexanimprog_s {
    struct nutexanimprog_s * succ;
    struct nutexanimprog_s * prev;
    char name[32];
    int on_sig[32];
    int off_sig[32];
    uint on_mask;
    uint off_mask;
    short xdef_ids[32];
    short xdef_addrs[32];
    int xdef_cnt;
    short eop;
    short dynalloc;
    short code;
};

struct nuanimcurveset_s {
    int flags;
    float * constants;
    struct nuanimcurve_s * set;
    char ncurves;
    char pad[3];
};

struct nucolour3_s {
    float r;
    float g;
    float b;
};

struct nugobj_s {
    struct nugobj_s * sysnext;
    struct nugobj_s * syslast;
    enum gobjtype_s type;
    struct nugeom_s * geom;
    struct NuFaceOnGeom * faceon_geom;
    float bounding_radius_from_origin;
    float bounding_rsq_from_origin;
    struct nuvec_s bounding_box_min;
    struct nuvec_s bounding_box_max;
    struct nuvec_s bounding_box_center;
    float bounding_radius_from_center;
    float bounding_rsq_from_center;
    int ngobjs;
    struct nugobj_s * next_gobj;
    struct nuvec_s origin;
    int ignore;
    int culltype;
};

struct numtlattrib_s {
    uint uvmode:1;
    uint afail:2;
    uint aref:8;
    uint atst:3;
    uint fill:1;
    uint colour:1;
    uint lighting:2;
    uint zmode:2;
    uint cull:2;
    uint vtc:2;
    uint utc:2;
    uint fx:2;
    uint filter:2;
    uint alpha:2;
};

struct NuFaceOnGeom {
    struct NuFaceOnGeom * next;
    struct numtl_s * mtl;
    int mtl_id;
    enum nufaceontype_s faceon_type;
    struct nufaceon_s * faceons;
    int nfaceons;
    float faceon_radius;
};

struct nuprim_s {
    struct nuprim_s * next;
    enum nuprimtype_e type;
    ushort vertexCount;
    ushort max;
    ushort * vid;
    struct nuplane_s * pln;
    int idxbuff; /* GS_Buffer * */
    int cached;
    short skinmtxlookup[16];
};

struct NUVTXSKININFO_s {
    float wts[3];
    uchar joint_ixs[3];
    uchar pad;
};

struct nuinstanim_s {
    struct numtx_s Mtx;
    float tfactor;
    float tfirst;
    float tinterval;
    float ltime;
    uint oscillate:1;
    uint repeating:1;
    uint backwards:1;
    uint waiting:1;
    uint playing:1;
    char ipad[8];
    uchar anim_ix;
    char pad[3];
};

struct NuSkin {
    struct NuSkin * next;
    int vtxoffset;
    int vtxcnt;
    int mtxcnt;
    int * mtxid;
    float * weights;
};

struct nugeom_s {
    struct nugeom_s * next;
    struct numtl_s * mtls;
    int mtl_id;
    enum nuvtxtype_e vertex_type;
    int vtxcount;
    int vtxmax;
    int hVB; /* GS_Buffer * */
    void * basisvbptr;
    struct nuprim_s * prim;
    struct NuSkin * skin;
    struct NUVTXSKININFO_s * vtxskininfo;
    struct NuBlendShape * blendgeom;
};

struct numtl_s {
    struct numtl_s * next;
    struct numtlattrib_s attrib;
    struct nucolour3_s ambient;
    struct nucolour3_s diffuse;
    union nufx_u fx1;
    union nufx_u fx2;
    union nufx_u fx3;
    union nufx_u fx4;
    float power;
    float alpha;
    int tid;
    short alpha_sort;
    uchar fxid;
    uchar special_id;
    short K;
    uchar L;
    uchar vanmmode:4;
    uchar uanmmode:4;
    float du;
    float dv;
    float su;
    float sv;
};

struct nuanimdatachunks_s {
    int numnodes;
    int num_valid_animcurvesets;
    struct nuanimcurveset_s * animcurveset;
    struct nuanimkey_s * keys;
    struct nuanimcurve_s * curves; /* b57c */
};

struct NuAnimData_s {
    float time;
    char * node_name;
    int nchunks;
    struct nuanimdatachunks_s * * chunks;
};

struct nuanimkey_s {
    float time;
    float dtime;
    float c;
    float d;
};

typedef struct instNUGCUTRIGIDSYS_s instNUGCUTRIGIDSYS_s, *PinstNUGCUTRIGIDSYS_s;

struct instNUGCUTRIGIDSYS_s {
    struct instNUGCUTRIGID_s * irigids;
};

typedef struct instNUGCUTSCENE_s instNUGCUTSCENE_s, *PinstNUGCUTSCENE_s;

typedef struct NUGCUTSCENE_s NUGCUTSCENE_s, *PNUGCUTSCENE_s;

typedef struct instNUGCUTTRIGGERSYS_s instNUGCUTTRIGGERSYS_s, *PinstNUGCUTTRIGGERSYS_s;

typedef struct NUGCUTCAMSYS_s NUGCUTCAMSYS_s, *PNUGCUTCAMSYS_s;

typedef struct NUGCUTRIGIDSYS_s NUGCUTRIGIDSYS_s, *PNUGCUTRIGIDSYS_s;

typedef struct NUGCUTCHARSYS_s NUGCUTCHARSYS_s, *PNUGCUTCHARSYS_s;

typedef struct NUGCUTLOCATORSYS_s NUGCUTLOCATORSYS_s, *PNUGCUTLOCATORSYS_s;

typedef struct NUGCUTBBOX_s NUGCUTBBOX_s, *PNUGCUTBBOX_s;

typedef struct NUGCUTTRIGGERSYS_S NUGCUTTRIGGERSYS_S, *PNUGCUTTRIGGERSYS_S;

typedef struct instNUGCUTTRIGGER_s instNUGCUTTRIGGER_s, *PinstNUGCUTTRIGGER_s;

typedef struct NUGCUTCAM_s NUGCUTCAM_s, *PNUGCUTCAM_s;

typedef struct nuanimdata2_s nuanimdata2_s, *Pnuanimdata2_s;

typedef struct NUSTATEANIM_s NUSTATEANIM_s, *PNUSTATEANIM_s;

typedef struct NUGCUTRIGID_s NUGCUTRIGID_s, *PNUGCUTRIGID_s;

typedef struct NUGCUTCHAR_s NUGCUTCHAR_s, *PNUGCUTCHAR_s;

typedef struct NUGCUTLOCATOR_s NUGCUTLOCATOR_s, *PNUGCUTLOCATOR_s;

typedef struct NUGCUTLOCATORTYPE_s NUGCUTLOCATORTYPE_s, *PNUGCUTLOCATORTYPE_s;

typedef struct NUGCUTTRIGGER_s NUGCUTTRIGGER_s, *PNUGCUTTRIGGER_s;

typedef enum direction {
    LOCATOR_NO_DIRECTION=0,
    LOCATOR_UP=1,
    LOCATOR_DOWN=2,
    LOCATOR_X=3,
    LOCATOR_NEGX=4,
    LOCATOR_Y=5,
    LOCATOR_NEGY=6,
    LOCATOR_Z=7,
    LOCATOR_NEGZ=8
} direction;

struct NUGCUTTRIGGER_s {
    short ix;
    short pad;
    char * triggername;
    struct NUSTATEANIM_s * enableflag1anim;
};

struct instNUGCUTTRIGGER_s {
    char next_ix;
    char pad[3];
};

struct NUGCUTSCENE_s {
    int version;
    int address_offset;
    float nframes;
    char * name_table;
    struct NUGCUTCAMSYS_s * cameras;
    struct NUGCUTRIGIDSYS_s * rigids;
    struct NUGCUTCHARSYS_s * chars;
    struct NUGCUTLOCATORSYS_s * locators;
    struct NUGCUTBBOX_s * bbox;
    struct NUGCUTTRIGGERSYS_S * triggersys;
};

struct nuanimdata2_s {
    float field0_0x0;
    short field1_0x4;
    short field2_0x6;
    short field3_0x8;
    short field4_0xa;
};

struct NUGCUTBBOX_s {
    struct nuvec_s min;
    struct nuvec_s max;
};

struct NUGCUTTRIGGERSYS_S {
    int ntriggers;
    struct NUGCUTTRIGGER_s * triggers;
};

struct NUGCUTCAMSYS_s {
    uint ncutcams;
    struct NUGCUTCAM_s * cutcams;
    struct nuanimdata2_s * camanim;
    struct NUSTATEANIM_s * camchanges;
    char initial_camid;
    char remap_table[10];
    uchar pad;
};

struct NUGCUTCHAR_s {
    struct numtx_s mtx;
    char * name;
    struct nuanimdata2_s * char_anim;
    struct nuanimdata2_s * joint_anim;
    struct nuanimdata2_s * face_anim;
    void * character;
    struct NUGCUTLOCATOR_s * locators;
    float animrate;
    uchar flags;
    uchar animix;
    uchar nlocators;
    uchar type;
    uchar first_locator;
    uchar blendframes;
    char pad[2];
};

struct NUSTATEANIM_s {
    int nchanges;
    float * frames;
    uchar * states;
};

struct instNUGCUTSCENE_s {
    struct instNUGCUTSCENE_s * next;
    struct instNUGCUTSCENE_s * prev;
    char name[16];
    struct numtx_s mtx;
    struct NUGCUTSCENE_s * cutscene;
    struct nuvec_s centre;
    float maxdistsqr;
    int is_visible:1;
    int checkmaxdist:1;
    int checkbboxclip:1;
    int has_mtx:1;
    int autostart:1;
    int looping:1;
    uint is_playing:1;
    int played_first_frame:1;
    int is_disabled:16;
    int been_updated_this_frame:1;
    float cframe;
    float rate;
    struct instNUGCUTCAMSYS_s * icameras;
    struct instNUGCUTRIGIDSYS_s * irigids;
    struct instNUGCUTCHARSYS_s * ichars;
    struct instNUGCUTLOCATORSYS_s * ilocators;
    struct instNUGCUTTRIGGERSYS_s * itriggersys;
    struct instNUGCUTSCENE_s * next_to_play;
    void * endfn;
};

struct instNUGCUTTRIGGERSYS_s {
    struct instNUGCUTTRIGGERSYS_s * itriggersys;
    struct instNUGCUTTRIGGER_s * itriggers;
};

struct NUGCUTLOCATORTYPE_s {
    char * name;
    uchar flags[2];
    ushort ix;
    char pad[4];
};

struct NUGCUTLOCATORSYS_s {
    struct NUGCUTLOCATOR_s * locators;
    struct NUGCUTLOCATORTYPE_s * locator_types;
    uchar nlocators;
    uchar ntypes;
    char pad[2];
};

struct NUGCUTRIGIDSYS_s {
    struct NUGCUTRIGID_s * rigids;
    ushort nrigids;
    char pad[2];
};

struct NUGCUTCAM_s {
    struct numtx_s mtx;
    uchar flags;
    uchar id;
    uchar anim_ix;
    uchar pad[13];
};

struct NUGCUTLOCATOR_s {
    struct numtx_s mtx;
    struct nuvec_s pivot;
    float rate;
    struct nuanimdata2_s * anim;
    enum direction direction;
    uchar flags;
    uchar locator_type;
    uchar joint_ix;
    char pad;
    float param1;
    float param2;
};

struct NUGCUTRIGID_s {
    struct numtx_s mtx;
    char * name;
    struct nuhspecial_s special;
    struct nuanimdata2_s * anim;
    struct NUSTATEANIM_s * visibiltyanim;
    struct NUGCUTLOCATOR_s * locators;
    uchar flags;
    uchar nlocators;
    uchar first_locator;
    char pad;
};

struct NUGCUTCHARSYS_s {
    struct NUGCUTCHAR_s * chars;
    ushort nchars;
    char pad[2];
};

typedef struct locdataFN locdataFN, *PlocdataFN;

struct locdataFN {
    struct instNUGCUTSCENE_s * field0_0x0;
    struct NUGCUTLOCATORSYS_s * field1_0x4;
    struct instNUGCUTLOCATOR_s * field2_0x8;
    struct NUGCUTLOCATOR_s * field3_0xc;
    float field4_0x10;
    struct numtx_s * field5_0x14;
};

typedef struct _D3DCOLORVALUE _D3DCOLORVALUE, *P_D3DCOLORVALUE;

struct _D3DCOLORVALUE {
    float r;
    float g;
    float b;
    float a;
};

typedef struct _D3DLIGHT8 _D3DLIGHT8, *P_D3DLIGHT8;

typedef enum _D3DLIGHTTYPE {
    D3DLIGHT_POINT=1,
    D3DLIGHT_SPOT=2,
    D3DLIGHT_DIRECTIONAL=3,
    _D3DLIGHTTYPE=255
} _D3DLIGHTTYPE;

struct _D3DLIGHT8 {
    enum _D3DLIGHTTYPE Type;
    struct _D3DCOLORVALUE Diffuse;
    struct _D3DCOLORVALUE Specular;
    struct _D3DCOLORVALUE Ambient;
    struct nuvec_s Position;
    struct nuvec_s Direction;
    float range;
    float falloff;
    float attenuation0;
    float attenuation1;
    float attenuation2;
    float Theta;
    float Phi;
};

typedef struct _GS_TEXTURE _GS_TEXTURE, *P_GS_TEXTURE;

typedef enum gs_texturetype_e {
    GS_TEX_RGB16=0,
    GS_TEX_RGBA16=1,
    GS_TEX_RGB24=2,
    GS_TEX_RGBA32=3,
    GS_TEX_PAL4=4,
    GS_TEX_PAL8=5,
    GS_TEX_PAL4_S=6,
    GS_TEX_PAL8_S=7,
    GS_TEX_DXT1=8,
    GS_TEX_DXT2=9,
    GS_TEX_DXT3=10,
    GS_TEX_DXT4=11,
    GS_TEX_DXT5=12,
    GS_TEX_BB=13,
    GS_TEX_RT8=14,
    GS_TEX_RTT8=15,
    GS_TEX_RT8H=16,
    GS_TEX_RT32=17,
    GS_TEX_RT24=18,
    GS_TEX_RT16=19,
    GS_TEX_RTT32=20,
    GS_TEX_RTT24=21,
    GS_TEX_RTT16=22,
    GS_TEX_RZT32=23,
    GS_TEX_RZT24=24,
    GS_TEX_RZT16=25,
    GS_TEX_NUMTEXTURETYPES=26
} gs_texturetype_e;

typedef struct _GXTexObj _GXTexObj, *P_GXTexObj;

typedef struct _GXTlutObj _GXTlutObj, *P_GXTlutObj;

struct _GXTexObj {
    ulong dummy[8];
};

struct _GXTlutObj {
    ulong dummy[3];
};

struct _GS_TEXTURE {
    uint Flags;
    enum gs_texturetype_e Format;
    uint Width;
    uint Height;
    uint TexBits;
    uint PalBits;
    uint NUID;
    uint Pad;
    struct _GXTexObj Tex;
    struct _GXTlutObj Tlut;
};

typedef struct _GS_VIEWPORT _GS_VIEWPORT, *P_GS_VIEWPORT;

struct _GS_VIEWPORT {
    ulong X;
    ulong Y;
    ulong width;
    ulong height;
    float MinZ;
    float MaxZ;
};

typedef struct _GXColor _GXColor, *P_GXColor;

struct _GXColor {
    uchar r;
    uchar g;
    uchar b;
    uchar a;
};

typedef struct _GXRenderModeObj _GXRenderModeObj, *P_GXRenderModeObj;

typedef enum viTVmode {
    VI_TVMODE_NTSC_INT=0,
    VI_TVMODE_NTSC_DS=1,
    VI_TVMODE_NTSC_PROG=2,
    VI_TVMODE_PAL_INT=3,
    VI_TVMODE_PAL_DS=4,
    VI_TVMODE_EURGB60_INT=5,
    VI_TVMODE_EURGB60_DS=6,
    VI_TVMODE_MPAL_INT=7,
    VI_TVMODE_MPAL_DS=8,
    VI_TVMODE_DEBUG_INT=9,
    VI_TVMODE_DEBUG_PAL_INT=16,
    VI_TVMODE_DEBUG_PAL_DS=17
} viTVmode;

typedef enum xFBmode {
    VI_XFBMODE_SF=0,
    VI_XFBMODE_DF=1
} xFBmode;

struct _GXRenderModeObj {
    enum viTVmode viTVmode;
    ushort fbWidth;
    ushort efbHeight;
    ushort xfbHeight;
    ushort viXOrigin;
    ushort viYOrigin;
    ushort viWidth;
    ushort viHeight;
    uchar unk[2];
    enum xFBmode xFBmode;
    uchar field_rendering;
    uchar aa;
    uchar sample_pattern[2][12];
    uchar vfilter[7];
    uchar unk2[3];
};

typedef struct _LIGHTLIST _LIGHTLIST, *P_LIGHTLIST;

struct _LIGHTLIST {
    int EnableLight;
    struct _D3DLIGHT8 Light;
};

typedef struct _sceDmaTag _sceDmaTag, *P_sceDmaTag;

struct _sceDmaTag {
    ushort qwc;
    uchar mark;
    uchar id;
    struct _sceDmaTag * next;
    uint p[2];
};

typedef struct _XINPUT_FEEDBACK _XINPUT_FEEDBACK, *P_XINPUT_FEEDBACK;

typedef struct _XINPUT_FEEDBACK_HEADER _XINPUT_FEEDBACK_HEADER, *P_XINPUT_FEEDBACK_HEADER;

struct _XINPUT_FEEDBACK_HEADER {
    uint dwStatus;
    void * hEvent;
    uchar Reserved[58];
    char unk[2];
};

struct _XINPUT_FEEDBACK {
    struct _XINPUT_FEEDBACK_HEADER header;
    char unk[4];
};

typedef struct _XINPUT_STATE _XINPUT_STATE, *P_XINPUT_STATE;

struct _XINPUT_STATE {
    uint dwPacketNumber;
    void * field1_0x4;
    void * field2_0x8;
    void * field3_0xc;
    void * field4_0x10;
    void * field5_0x14;
};

typedef enum Actions_ {
    ACT_ATTACK=0,
    ACT_ATTACK2=1,
    ACT_CRAWL=2,
    ACT_CROUCHDOWN=3,
    ACT_CROUCHIDLE=4,
    ACT_CROUCHUP=5,
    ACT_DIE=6,
    ACT_DIE2=7,
    ACT_DOWN=8,
    ACT_DROWN=9,
    ACT_EXPLODE=10,
    ACT_FALL=11,
    ACT_FILL=12,
    ACT_FLY=13,
    ACT_GETUP=14,
    ACT_HANG=15,
    ACT_HOP=16,
    ACT_IDLE=17,
    ACT_IDLE00=18,
    ACT_IDLE01=19,
    ACT_IDLE02=20,
    ACT_IDLE03=21,
    ACT_IDLE04=22,
    ACT_IDLE05=23,
    ACT_IDLE06=24,
    ACT_IDLE07=25,
    ACT_IN=26,
    ACT_JUMP=27,
    ACT_JUMP2=28,
    ACT_LAND=29,
    ACT_LAND2=30,
    ACT_LEFT=31,
    ACT_LOSE=32,
    ACT_OPEN=33,
    ACT_OUT=34,
    ACT_PULL=35,
    ACT_PUSH=36,
    ACT_RIGHT=37,
    ACT_RUN=38,
    ACT_RUN2=39,
    ACT_RUNNINGJUMP=40,
    ACT_SHAKE=41,
    ACT_SIT=42,
    ACT_SKATE=43,
    ACT_SKID=44,
    ACT_SLAM=45,
    ACT_SLEEP=46,
    ACT_SLIDE=47,
    ACT_SOMERSAULT=48,
    ACT_SPENT=49,
    ACT_SPIN=50,
    ACT_SPIN2=51,
    ACT_SPRINT=52,
    ACT_STARJUMP=53,
    ACT_SUPERSLAM=54,
    ACT_SWIM=55,
    ACT_SWING=56,
    ACT_TIPTOE=57,
    ACT_TRAPPED=58,
    ACT_TRAPPEDSHAKE=59,
    ACT_TURN=60,
    ACT_UP=61,
    ACT_WADE=62,
    ACT_WAIT=63,
    ACT_WALK=64,
    ACT_WIN=65,
    ACT_FLYZOFFA=66,
    MAXACTIONS=67
} Actions_;

typedef struct AI_s AI_s, *PAI_s;

struct AI_s {
    struct nuvec_s oldpos;
    struct nuvec_s newpos;
    struct nuvec_s wobblepos;
    float time;
    float duration;
    float spins;
    float speed;
    float radius;
    float distance;
    float height;
    float lateral;
    float scale;
    float wobble;
    ushort oldangle;
    ushort angle;
    ushort old_yrot;
    ushort movflags;
    ushort terflags;
    ushort rotflags;
    ushort rotspeed;
    ushort rotadjust;
    ushort wobble_ang;
    ushort wobble_speed;
    char direction;
    char i0;
    char i1;
    char idle_update;
    void * event_function[2];
    float event_distance[2];
    short event_branch[2];
    char event[2];
    char event_index[2];
    uchar event_flags[2];
    uchar event_occured[2];
    ushort attack_locator_bits;
    char pad1;
    char pad2;
    float attack_locator_radius;
    struct nuhspecial_s obj;
    char kill;
    char locator_kill;
    short force_action;
    short look_creature;
    uchar count;
    uchar hits;
};

typedef struct AIType AIType, *PAIType;

typedef struct creatcmd_s creatcmd_s, *Pcreatcmd_s;

struct creatcmd_s {
    int cmd;
    int i;
    float f;
};

struct AIType {
    short character;
    short points;
    struct creatcmd_s * cmd;
    char name[16];
    float delay;
};

typedef ushort angle;

typedef struct anim_s anim_s, *Panim_s;

struct anim_s {
    float anim_time;
    float blend_src_time;
    float blend_dst_time;
    short action;
    short oldaction;
    short newaction;
    short blend_src_action;
    short blend_dst_action;
    short blend_frame;
    short blend_frames;
    char blend;
    uchar flags;
};

typedef struct AnimList AnimList, *PAnimList;

struct AnimList {
    char * file;
    short action;
    uchar blend_in_frames;
    uchar blend_out_frames;
    float speed;
    ushort flags;
    char pad1;
    char pad2;
    ulonglong levbits;
};

typedef struct Anm_datachunk Anm_datachunk, *PAnm_datachunk;

struct Anm_datachunk {
    uint field0_0x0;
    uint field1_0x4;
    void * field2_0x8;
    uint field3_0xc;
    char field4_0x10[4];
};

/*****************************WIP******************************************/
typedef struct astruct_1_TERRAIN astruct_1_TERRAIN, *Pastruct_1_TERRAIN;

struct astruct_1_TERRAIN {
    float * struct_0x0;
    void * field1_0x4;
    char field2_0x8[64];
};
/******************************************************************************/

typedef struct BlockInfo BlockInfo, *PBlockInfo;

typedef struct nuiffhdr_s nuiffhdr_s, *Pnuiffhdr_s;

struct nuiffhdr_s {
    int blk;
    int size;
};

struct BlockInfo {
    struct nuiffhdr_s hdr;
    int pos;
};

typedef struct CamMtx CamMtx, *PCamMtx;

struct CamMtx {
    struct numtx_s m;
    struct numtx_s m0;
    struct nuvec_s vX;
    struct nuvec_s vY;
    struct nuvec_s vZ;
    struct nuvec_s pos;
    struct nuvec_s oldpos;
    struct nuvec_s newpos;
    struct nuvec_s pos2;
    struct nuvec_s seek;
    float distance;
    float ahead;
    float judder;
    float blend_time;
    float blend_duration;
    int xrot;
    int yrot;
    int zrot;
    ushort old_xrot;
    ushort new_xrot;
    ushort old_yrot;
    ushort new_yrot;
    ushort old_zrot;
    ushort new_zrot;
    ushort hdg_to_player;
    short route;
    short i0;
    short i1;
    char mode;
    char iRAIL;
    short iALONG;
    ushort angle;
    char vertical;
    char pad1;
};

typedef struct cdata_s cdata_s, *Pcdata_s;

struct cdata_s { /* CharacterData */
    char * path;
    char * file;
    char * name;
    struct AnimList * anim;
    float radius;
    struct nuvec_s min;
    struct nuvec_s max;
    float scale;
    float shadow_scale;
};

typedef struct CharacterModel CharacterModel, *PCharacterModel;

typedef struct NUHGOBJ_s NUHGOBJ_s, *PNUHGOBJ_s;

typedef struct NUPOINTOFINTEREST_s NUPOINTOFINTEREST_s, *PNUPOINTOFINTEREST_s;

typedef struct NUJOINTDATA_s NUJOINTDATA_s, *PNUJOINTDATA_s;

typedef struct NULAYERDATA_s NULAYERDATA_s, *PNULAYERDATA_s;

typedef struct NUSHADOWDATA_s NUSHADOWDATA_s, *PNUSHADOWDATA_s;

typedef struct NUCOLLISIONDATA_s NUCOLLISIONDATA_s, *PNUCOLLISIONDATA_s;

typedef struct NUELLIPSOID_s NUELLIPSOID_s, *PNUELLIPSOID_s;

typedef struct NUCYLINDERS_s NUCYLINDERS_s, *PNUCYLINDERS_s;

typedef struct NUSHADOWMESH_s NUSHADOWMESH_s, *PNUSHADOWMESH_s;

typedef struct NUCOLLISIONHDR_s NUCOLLISIONHDR_s, *PNUCOLLISIONHDR_s;

typedef struct nuvec4_s nuvec4_s, *Pnuvec4_s;

typedef enum NUCOLLISIONTYPES {
    NUCOLLISIONSPHERETYPE=1
} NUCOLLISIONTYPES;

struct NUELLIPSOID_s {
    struct nuvec_s centre;
    struct nuvec_s y_axis;
    struct nuvec_s x_axis;
    struct nuvec_s z_axis;
};

struct NUCOLLISIONHDR_s {
    enum NUCOLLISIONTYPES type;
    void * data;
};

struct nuvec4_s {
    float x;
    float y;
    float z;
    float w;
};

struct NUSHADOWDATA_s {
    struct NUELLIPSOID_s * ellipsoids;
    struct NUCYLINDERS_s * cylinders;
    struct NUSHADOWMESH_s * shadow_meshes;
    uchar nellipsoids;
    uchar ncylinders;
    uchar nshadow_meshes;
    uchar joint;
};

struct NULAYERDATA_s {
    char * name;
    struct nugobj_s * gobjs;
    struct nugobj_s * skin_gobj;
    struct nugobj_s * blend_gobjs;
    struct nugobj_s * blend_skin_gobj;
};

struct NUCOLLISIONDATA_s {
    uint nitems;
    struct NUCOLLISIONHDR_s * hdrs;
};

struct NUSHADOWMESH_s {
    struct nuvec4_s * normals;
    struct nuvec4_s * verts;
};

struct CharacterModel {
    struct NUHGOBJ_s * hobj;
    struct NuAnimData_s * anmdata[118];
    struct AnimList * animlist[118];
    struct NuAnimData_s * fanmdata[118];
    struct AnimList * fanimlist[118];
    int shadhdr;
    short character;
    char pad1;
    char pad2;
    struct NUPOINTOFINTEREST_s * pLOCATOR[16];
};

struct NUPOINTOFINTEREST_s {
    struct numtx_s offset;
    char * name;
    uchar parent_joint_ix;
    uchar pad[11];
};

struct NUHGOBJ_s {
    short * tids;
    int numtid;
    struct numtl_s * mtls;
    int nummtl;
    struct NUJOINTDATA_s * joints;
    struct numtx_s * T;
    struct numtx_s * INV_WT;
    uchar * joint_ixs;
    struct NULAYERDATA_s * layers;
    struct NUPOINTOFINTEREST_s * points_of_interest;
    uchar * poi_ixs;
    char * string_table;
    int string_table_size;
    float tbrdist;
    struct NUSHADOWDATA_s * shadow_data;
    float sphere_radius;
    float sphere_yoff;
    struct nuvec_s min;
    struct nuvec_s max;
    float cylinder_yoff;
    float cylinder_height;
    float cylinder_radius;
    struct NUCOLLISIONDATA_s * collision_data;
    int numtexanims;
    struct nutexanim_s * texanims;
    short * texanim_tids;
    uchar num_joints;
    uchar num_joint_ixs;
    uchar num_layers;
    uchar num_points_of_interest;
    uchar num_poi_ixs;
    uchar shadowoff;
    char pad[2];
};

struct NUJOINTDATA_s {
    struct numtx_s orient;
    struct nuvec_s locator_offset;
    char * name;
    int parent_ix;
    char flags;
    char pad[11];
};

struct NUCYLINDERS_s {
    struct nuvec_s centre;
    struct nuvec_s y_axis;
    struct nuvec4_s x_axis;
    struct nuvec4_s z_axis;
    char pad[8];
};

typedef struct chars chars, *Pchars;

struct chars {
    struct NUHGOBJ_s * obj;
    char * path;
    char * name;
};

typedef struct CocoMoveInfo CocoMoveInfo, *PCocoMoveInfo;

struct CocoMoveInfo {
    float IDLESPEED;
    float TIPTOESPEED;
    float WALKSPEED;
    float RUNSPEED;
    float SPRINTSPEED;
    float SLIDESPEED;
    float CRAWLSPEED;
    float DANGLESPEED;
    float WADESPEED;
    float JUMPHEIGHT;
    float DANGLEGAP;
    short JUMPFRAMES0;
    short JUMPFRAMES1;
    short JUMPFRAMES2;
    short STARJUMPFRAMES;
    short SOMERSAULTFRAMES;
    short SPINFRAMES;
    short SPINRESETFRAMES;
    short SUPERSPINFRAMES;
    short SUPERSPINWAITFRAMES;
    short SLAMWAITFRAMES;
    short SLIDEFRAMES;
    short CROUCHINGFRAMES;
    short JUMPLANDFRAMES;
    short spad;
};

typedef struct CrashMoveInfo CrashMoveInfo, *PCrashMoveInfo;

struct CrashMoveInfo {
    float IDLESPEED;
    float TIPTOESPEED;
    float WALKSPEED;
    float RUNSPEED;
    float SPRINTSPEED;
    float SLIDESPEED;
    float CRAWLSPEED;
    float DANGLESPEED;
    float WADESPEED;
    float JUMPHEIGHT;
    float DANGLEGAP;
    short JUMPFRAMES0;
    short JUMPFRAMES1;
    short JUMPFRAMES2;
    short STARJUMPFRAMES;
    short SOMERSAULTFRAMES;
    short SPINFRAMES;
    short SPINRESETFRAMES;
    short SUPERSPINFRAMES;
    short SUPERSPINWAITFRAMES;
    short SLAMWAITFRAMES;
    short SLIDEFRAMES;
    short CROUCHINGFRAMES;
    short JUMPLANDFRAMES;
    short spad;
};

typedef struct creature_s creature_s, *Pcreature_s;

typedef struct obj_s obj_s, *Pobj_s;

typedef struct NEWBUGGY NEWBUGGY, *PNEWBUGGY;

typedef struct Moveinfo_s Moveinfo_s, *PMoveinfo_s;

typedef struct Nearest_Light_s Nearest_Light_s, *PNearest_Light_s;

typedef struct rumble_s rumble_s, *Prumble_s;

typedef struct mask mask, *Pmask;

typedef struct RPos_s RPos_s, *PRPos_s;

typedef union type_s_name type_s_name, *Ptype_s_name;

typedef struct pdir_s pdir_s, *Ppdir_s;

struct pdir_s {
    int Index;
    struct nuvec_s Direction;
    struct nucolour3_s Colour;
    float Distance;
};

union type_s_name {
    uchar chrs;
    ushort all;
};

struct rumble_s {
    uchar buzz;
    uchar power;
    uchar frame;
    uchar frames;
};

struct Moveinfo_s {
    float IDLESPEED;
    float TIPTOESPEED;
    float WALKSPEED;
    float RUNSPEED;
    float SPRINTSPEED;
    float SLIDESPEED;
    float CRAWLSPEED;
    float DANGLESPEED;
    float WADESPEED;
    float JUMPHEIGHT;
    float DANGLEGAP;
    short JUMPFRAMES0;
    short JUMPFRAMES1;
    short JUMPFRAMES2;
    short STARJUMPFRAMES;
    short SOMERSAULTFRAMES;
    short SPINFRAMES;
    short SPINRESETFRAMES;
    short SUPERSPINFRAMES;
    short SUPERSPINWAITFRAMES;
    short SLAMWAITFRAMES;
    short SLIDEFRAMES;
    short CROUCHINGFRAMES;
    short JUMPLANDFRAMES;
    short spad;
};

struct RPos_s {
    char iRAIL;
    char vertical;
    short iALONG;
    short i1;
    short i2;
    float fALONG;
    float fACROSS;
    ushort angle;
    ushort cam_angle;
    uchar mode;
    char pad1;
    char pad2;
    char pad3;
    struct nuvec_s pos;
};

struct Nearest_Light_s {
    int AmbIndex;
    struct nuvec_s AmbCol;
    float ambientdist;
    int CurLoopIndex;
    struct pdir_s dir1;
    struct pdir_s dir2;
    struct pdir_s dir3;
    struct pdir_s * pDir1st;
    struct pdir_s * pDir2nd;
    struct pdir_s * pDir3rd;
    int glbambindex;
    int negativeindex;
    float negativedist;
    struct pdir_s glbdirectional;
};

struct mask {
    struct numtx_s mM;
    struct numtx_s mS;
    struct nuvec_s pos;
    struct nuvec_s newpos;
    struct Nearest_Light_s lights;
    struct anim_s anim;
    float scale;
    float shadow;
    short character;
    short active;
    short sfx;
    char pad1;
    char pad2;
    ushort xrot;
    ushort yrot;
    ushort angle;
    ushort surface_xrot;
    ushort surface_zrot;
    ushort wibble_ang[3];
    float idle_time;
    float idle_duration;
    char idle_mode;
    char reflect;
    uchar offset_frame;
    char hold;
};

struct obj_s {
    struct obj_s * parent;
    struct CharacterModel * model;
    struct mask * mask;
    void * contact;
    struct numtx_s * pLOCATOR;
    struct anim_s anim;
    short character;
    short vehicle;
    uint flags;
    uint frame;
    uint draw_frame;
    uint vehicle_frame;
    struct RPos_s RPos;
    struct nuvec_s pos;
    struct nuvec_s mom;
    struct nuvec_s oldpos;
    struct nuvec_s startpos;
    struct nuvec_s vSN;
    struct nuvec_s vLN;
    struct nuvec_s vRN;
    float shadow;
    float layer_shadow;
    float roof_y;
    float clearance;
    float forward;
    float abs_forward;
    float side;
    float abs_side;
    float xyz_distance;
    float xz_distance;
    float radius;
    struct nuvec_s min;
    struct nuvec_s max;
    float scale;
    float SCALE;
    float RADIUS;
    float old_SCALE;
    float objbot;
    float objtop;
    float bot;
    float top;
    float oldobjbot;
    float oldobjtop;
    float die_time;
    float die_duration;
    float reflect_y;
    float idle_gametime;
    float pad_speed;
    float pad_dx;
    float pad_dz;
    char i;
    char dead;
    ushort pad_angle;
    ushort attack;
    ushort vulnerable;
    short die_action;
    char old_ground;
    char finished;
    ushort xrot;
    ushort yrot;
    ushort zrot;
    ushort surface_xrot;
    ushort surface_zrot;
    ushort layer_xrot;
    ushort layer_zrot;
    ushort roof_xrot;
    ushort roof_zrot;
    short target_xrot;
    short target_yrot;
    short dyrot;
    union type_s_name gndflags;
    ushort hdg;
    ushort thdg;
    char ground;
    char surface_type;
    char layer_type;
    char roof_type;
    char invisible;
    uchar submerged;
    char transporting;
    char got_shadow;
    uchar boing;
    uchar contact_type;
    char die_model[2];
    uchar invincible;
    char pos_adjusted;
    char wade;
    char dangle;
    char ddsand;
    char ddsnow;
    char ddwater;
    char ddr;
    char ddg;
    char ddb;
    char last_ground;
    char direction;
    char kill_contact;
    uchar touch;
};

struct NEWBUGGY {
    void * a; /* struct TODO */
};

struct creature_s {
    char used;
    char on;
    char off_wait;
    char i_aitab;
    struct obj_s obj;
    struct AI_s ai;
    struct NEWBUGGY * Buggy;
    struct creatcmd_s * cmdtable;
    struct creatcmd_s * cmdcurr;
    struct Moveinfo_s * OnFootMoveInfo;
    struct numtx_s m;
    struct numtx_s mtxLOCATOR[16][2];
    struct nuvec_s momLOCATOR[16][2];
    struct Nearest_Light_s lights;
    struct rumble_s rumble;
    float idle_time;
    float idle_wait;
    short idle_action;
    short old_idle_action;
    char idle_mode;
    char idle_repeat;
    char jump;
    char jump_type;
    char jump_subtype;
    char ok_slam;
    char slam;
    char spin;
    char crawl;
    char crawl_lock;
    char tiptoe;
    char sprint;
    uchar somersault;
    uchar land;
    char pad_type;
    char jump_hack;
    uchar jump_hold;
    uchar allow_jump;
    short jump_frames;
    short jump_frame;
    short slam_wait;
    short spin_frames;
    short spin_frame;
    short spin_wait;
    short slide;
    short crouch_pos;
    ushort slam_frame;
    short fire_action;
    uchar fire;
    uchar tap;
    char target;
    char target_wait;
    char fire_lock;
    char idle_sigh;
    uchar hit_type;
    uchar freeze;
    char anim_processed;
    char pad1;
};

typedef struct Credit_s Credit_s, *PCredit_s;

struct Credit_s {
    char * txt;
    short colour;
    short size;
};

typedef struct csc_s csc_s, *Pcsc_s;

struct csc_s {
    struct NUHGOBJ_s * obj;
    char * path;
    char * name;
};

typedef struct Cursor Cursor, *PCursor;

typedef struct remember remember, *Premember;

struct remember {
    char x;
    char y;
};

struct Cursor {
    struct remember remember[48];
    char unk_60[8];
    uint menu_frame;
    uint item_frame;
    char x;
    char y;
    char x_min;
    char y_min;
    char x_max;
    char y_max;
    char menu; /* 0x76 */
    char new_menu; /* 0x77 */
    char new_level; /* 0x78 */
    uchar wait; /* 0x79 */
    uchar wait_frames; /* 0x7a */
    char wait_hack; /* 0x7b */
    char button_lock; /* 0x7c */
    char pad1;
    char pad2;
    char pad3;
};

typedef struct CutChar CutChar, *PCutChar;

struct CutChar {
    struct NUHGOBJ_s * HGobj;
    char * path;
    char * name;
};

typedef struct cutscenedesc_s cutscenedesc_s, *Pcutscenedesc_s;

struct cutscenedesc_s {
    char * gscname;
    char * cutname;
    int sfxid;
    int debgroup;
};

typedef struct D3DBaseTexture D3DBaseTexture, *PD3DBaseTexture;

struct D3DBaseTexture {
    int Common;
    int Data;
    int Lock;
    int Format;
    int Size;
};

typedef struct D3DSurface D3DSurface, *PD3DSurface;

struct D3DSurface {
    int Common;
    int Data;
    int Lock;
    int Format;
    int Size;
    struct D3DSurface * Parent;
};

typedef struct D3DTexture D3DTexture, *PD3DTexture;

struct D3DTexture {
    undefined field0_0x0;
    undefined field1_0x1;
    undefined field2_0x2;
    undefined field3_0x3;
};

typedef union data data, *Pdata;

typedef struct nuanimcurvedata_s nuanimcurvedata_s, *Pnuanimcurvedata_s;

union data {
    float constant;
    struct nuanimcurvedata_s * curvedata;
};

struct nuanimcurvedata_s {
    uint * mask;
    ushort * key_ixs;
    void * key_array;
};

typedef struct DatFile DatFile, *PDatFile;

typedef struct nudatinfo_s nudatinfo_s, *Pnudatinfo_s;

typedef struct nudfnode_s nudfnode_s, *Pnudfnode_s;

typedef int int32_t;

typedef int32_t filehandle;

struct DatFile {
    int ver;
    int nfiles;
    struct nudatinfo_s * finfo;
    int treecnt;
    struct nudfnode_s * filetree;
    int leafnames;
    int dfhandle;
    filehandle fh;
    short intalloc;
    short openmode;
    int start_lsn;
    void * memdataptr;
    char pad[4];
};

struct nudatinfo_s {
    int foffset;
    int flen;
    int uplen;
    int ppack;
};

struct nudfnode_s {
    short childix;
    short sibix;
    char * txt;
};

typedef struct DVDCommandBlock DVDCommandBlock, *PDVDCommandBlock;

typedef struct DVDDiskID DVDDiskID, *PDVDDiskID;

struct DVDDiskID {
    undefined field0_0x0;
    undefined field1_0x1;
    undefined field2_0x2;
    undefined field3_0x3;
    undefined field4_0x4;
    undefined field5_0x5;
    undefined field6_0x6;
    undefined field7_0x7;
    undefined field8_0x8;
    undefined field9_0x9;
    undefined field10_0xa;
    undefined field11_0xb;
    undefined field12_0xc;
    undefined field13_0xd;
    undefined field14_0xe;
    undefined field15_0xf;
    undefined field16_0x10;
    undefined field17_0x11;
    undefined field18_0x12;
    undefined field19_0x13;
    undefined field20_0x14;
    undefined field21_0x15;
    undefined field22_0x16;
    undefined field23_0x17;
    undefined field24_0x18;
    undefined field25_0x19;
    undefined field26_0x1a;
    undefined field27_0x1b;
    undefined field28_0x1c;
    undefined field29_0x1d;
    undefined field30_0x1e;
    undefined field31_0x1f;
};

struct DVDCommandBlock {
    struct DVDCommandBlock * next;
    struct DVDCommandBlock * prev;
    uint command;
    int state;
    uint offset;
    uint length;
    void * addr;
    uint currTransferSize;
    uint transferredSize;
    struct DVDDiskID * id;
    struct DVDCommandBlock * DVDCommandBlock; /* void(*callback)(int, DVDCommandBlock*) */
    void * userData;
};


/* WARNING! conflicting data type names: /auto_structs/DVDDiskID - /DVDDiskID */

typedef struct DVDFileInfo DVDFileInfo, *PDVDFileInfo;

struct DVDFileInfo {
    struct DVDCommandBlock cb;
    uint startAddr;
    uint length;
    struct DVDFileInfo * DVDFileInfo;
};

typedef enum eCrashVehicleType {
    Submarine=32,
    Glider=54,
    Gyro=59,
    Mech=68,
    Atlasphere=83,
    Jeep=99,
    Scooter=107,
    Dropship=129,
    Minecart=137,
    Mosquito=139,
    Offroader=153,
    Snowboard=160,
    Minetub=161,
    FireEngine=178
} eCrashVehicleType;

typedef struct fileinfo_s fileinfo_s, *Pfileinfo_s;

struct fileinfo_s {
    filehandle handle;
    int read_pos;
    int file_pos;
    int file_length;
    int buff_start;
    int buff_length;
    int use_buff;
    int buff;
};

typedef struct Font3DObjTab Font3DObjTab, *PFont3DObjTab;

struct Font3DObjTab {
    short i;
    uchar flags;
    char action;
    float anim_time;
    float scale;
};

typedef int fxi;

typedef struct Game_s Game_s, *PGame_s;

typedef struct Hub Hub, *PHub;

typedef struct level level, *Plevel;

typedef struct time time, *Ptime;

struct Hub {
    uchar flags;
    uchar crystals;
    char pad1;
    char pad2;
};

struct time {
    char name[4];
    uint itime;
};

struct level {
    ushort flags;
    char pad1;
    char pad2;
    struct time time[3];
};

struct Game_s {
    char name[9];
    uchar vibration;
    uchar surround;
    uchar sfx_volume;
    uchar music_volume;
    char screen_x;
    char screen_y;
    uchar language;
    struct Hub hub[6];
    struct level level[35];
    uchar lives;
    uchar wumpas;
    uchar mask;
    uchar percent;
    uchar crystals;
    uchar relics;
    uchar crate_gems;
    uchar bonus_gems;
    uchar gems;
    uchar gembits;
    uchar powerbits;
    uchar empty;
    uint cutbits;
    uchar year;
    uchar month;
    uchar day;
    uchar hours;
    uchar mins;
    uchar pad_[3];
};

typedef struct ghg_inst_s ghg_inst_s, *Pghg_inst_s;

struct ghg_inst_s {
    char * name;
    struct NUHGOBJ_s * scene;
};

typedef struct giftag giftag, *Pgiftag;

struct giftag {
    longlong NREG:4;
    longlong FLG:2;
    longlong PRIM:11;
    longlong PRE:1;
    longlong id:14;
    longlong pad16:16;
    longlong EOP:1;
    longlong NLOOP:15;
    longlong REGS15:4;
    longlong REGS14:4;
    longlong REGS13:4;
    longlong REGS12:4;
    longlong REGS11:4;
    longlong REGS10:4;
    longlong REGS9:4;
    longlong REGS8:4;
    longlong REGS7:4;
    longlong REGS6:4;
    longlong REGS5:4;
    longlong REGS4:4;
    longlong REGS3:4;
    longlong REGS2:4;
    longlong REGS1:4;
    longlong REGS0:4;
};

typedef struct GLIDERSTRUCT GLIDERSTRUCT, *PGLIDERSTRUCT;

struct GLIDERSTRUCT {
    struct creature_s * Cre;
    struct nuvec_s vel;
    int Dead;
    int CocoDead;
    float CocoDeadTimer;
    float CocoDeathSpinX;
    float CocoDeathSpinZ;
    float NextEngRum;
    float FixVelTimer;
    float ImmuneAsteroidsTimer;
    struct nuvec_s Position;
    struct nuvec_s OldPosition;
    struct nuvec_s Velocity;
    struct nuvec_s Resolved;
    struct nuvec_s RailPoint;
    float RailAngle;
    float field16_0x70;
    float field17_0x74;
    float field18_0x78;
    float field19_0x7c;
    float field20_0x80;
    float field21_0x84;
    float CamTiltX;
    float field23_0x8c;
    float field24_0x90;
    float field25_0x94;
    int field26_0x98;
    float field27_0x9c;
    float field28_0xa0;
    int field29_0xa4;
    int field30_0xa8;
    float field31_0xac;
    float field32_0xb0;
    int field33_0xb4;
    int field34_0xb8;
    int field35_0xbc;
    char field36_0xc0[16];
    float field37_0xd0[16];
    int field38_0x110;
    int field39_0x114;
    float field40_0x118;
    float field41_0x11c;
    float field42_0x120;
    struct nuvec_s ApparentPosition;
    struct nuvec_s ApparentVelocity;
    struct nuvec_s PositionStack[30];
    struct nuvec_s VelocityStack[30];
    int field47_0x40c;
    float Speed;
    float field49_0x414;
    float field50_0x418;
    float field51_0x41c;
    float field52_0x420;
    float field53_0x424;
    struct nuvec_s * MovingTargetPoint;
    struct nuvec_s * MovingTargetVel;
    int TargetOn;
    float field57_0x434;
    int field58_0x438;
    float field59_0x43c;
};

typedef struct GlobalTimer GlobalTimer, *PGlobalTimer;

struct GlobalTimer {
    uint frame;
    uint itime;
    uint isec;
    float ftime;
    float fsec;
};

typedef struct glowlight glowlight, *Pglowlight;

struct glowlight {
    struct nucolour3_s HighColour;
    struct nucolour3_s LowColour;
    struct nucolour3_s CurColour;
    struct nucolour3_s ColDiff;
    ushort Step;
    ushort CurAngle;
};

typedef struct GS_Buffer GS_Buffer, *PGS_Buffer;

struct GS_Buffer {
    uint size;
    uint type;
};

typedef struct GX GX, *PGX;

typedef ushort uint16_t;

typedef uint uint32_t;

typedef uchar uint8_t;

typedef struct GXTlutRegion GXTlutRegion, *PGXTlutRegion;

struct GXTlutRegion {
    uint padding;
};

struct GX {
    uint16_t field0_0x0;
    uint16_t field1_0x2;
    uint32_t field2_0x4;
    uint32_t field3_0x8;
    uint32_t field4_0xc;
    uint32_t field5_0x10;
    uint8_t field6_0x14;
    uint32_t field7_0x15;
    uint32_t field8_0x19;
    uint32_t field9_0x1d;
    uint8_t field10_0x21;
    uint32_t field11_0x22;
    uint32_t field12_0x26;
    uint32_t field13_0x2a;
    uint8_t field14_0x2e;
    uint32_t field15_0x2f;
    uint32_t field16_0x33;
    uint32_t field17_0x37;
    uint8_t field18_0x3b;
    uint32_t field19_0x3c;
    uint32_t field20_0x40;
    uint32_t field21_0x44;
    uint8_t field22_0x48;
    uint32_t field23_0x49;
    uint8_t field24_0x4d;
    uint32_t field25_0x4e;
    float field26_0x52;
    float field27_0x56;
    float field28_0x5a;
    float field29_0x5e;
    float field30_0x62;
    float field31_0x66;
    float field32_0x6a;
    float field33_0x6e;
    float field34_0x72;
    float field35_0x76;
    float field36_0x7a;
    float field37_0x7e;
    uint8_t field38_0x82;
    float field39_0x83;
    uint8_t field40_0x87;
    uint32_t field41_0x88;
    uint8_t field42_0x8c;
    uint8_t field43_0x8d;
    uint8_t field44_0x8e;
    uint8_t field45_0x8f;
    uint32_t field46_0x90;
    undefined field47_0x94;
    undefined field48_0x95;
    undefined field49_0x96;
    undefined field50_0x97;
    undefined field51_0x98;
    undefined field52_0x99;
    undefined field53_0x9a;
    undefined field54_0x9b;
    undefined field55_0x9c;
    undefined field56_0x9d;
    undefined field57_0x9e;
    undefined field58_0x9f;
    undefined field59_0xa0;
    undefined field60_0xa1;
    undefined field61_0xa2;
    undefined field62_0xa3;
    undefined field63_0xa4;
    undefined field64_0xa5;
    undefined field65_0xa6;
    undefined field66_0xa7;
    undefined field67_0xa8;
    undefined field68_0xa9;
    undefined field69_0xaa;
    undefined field70_0xab;
    undefined field71_0xac;
    undefined field72_0xad;
    undefined field73_0xae;
    undefined field74_0xaf;
    undefined field75_0xb0;
    undefined field76_0xb1;
    undefined field77_0xb2;
    undefined field78_0xb3;
    undefined field79_0xb4;
    undefined field80_0xb5;
    undefined field81_0xb6;
    undefined field82_0xb7;
    undefined field83_0xb8;
    undefined field84_0xb9;
    undefined field85_0xba;
    undefined field86_0xbb;
    undefined field87_0xbc;
    undefined field88_0xbd;
    undefined field89_0xbe;
    undefined field90_0xbf;
    undefined field91_0xc0;
    undefined field92_0xc1;
    undefined field93_0xc2;
    undefined field94_0xc3;
    undefined field95_0xc4;
    undefined field96_0xc5;
    undefined field97_0xc6;
    undefined field98_0xc7;
    undefined field99_0xc8;
    undefined field100_0xc9;
    undefined field101_0xca;
    undefined field102_0xcb;
    undefined field103_0xcc;
    undefined field104_0xcd;
    undefined field105_0xce;
    undefined field106_0xcf;
    undefined field107_0xd0;
    undefined field108_0xd1;
    undefined field109_0xd2;
    undefined field110_0xd3;
    undefined field111_0xd4;
    undefined field112_0xd5;
    undefined field113_0xd6;
    undefined field114_0xd7;
    undefined field115_0xd8;
    undefined field116_0xd9;
    undefined field117_0xda;
    undefined field118_0xdb;
    undefined field119_0xdc;
    undefined field120_0xdd;
    undefined field121_0xde;
    undefined field122_0xdf;
    undefined field123_0xe0;
    undefined field124_0xe1;
    undefined field125_0xe2;
    undefined field126_0xe3;
    undefined field127_0xe4;
    undefined field128_0xe5;
    undefined field129_0xe6;
    undefined field130_0xe7;
    undefined field131_0xe8;
    undefined field132_0xe9;
    undefined field133_0xea;
    undefined field134_0xeb;
    undefined field135_0xec;
    undefined field136_0xed;
    undefined field137_0xee;
    undefined field138_0xef;
    undefined field139_0xf0;
    undefined field140_0xf1;
    undefined field141_0xf2;
    undefined field142_0xf3;
    undefined field143_0xf4;
    undefined field144_0xf5;
    undefined field145_0xf6;
    undefined field146_0xf7;
    undefined field147_0xf8;
    undefined field148_0xf9;
    undefined field149_0xfa;
    undefined field150_0xfb;
    undefined field151_0xfc;
    undefined field152_0xfd;
    undefined field153_0xfe;
    undefined field154_0xff;
    undefined field155_0x100;
    undefined field156_0x101;
    undefined field157_0x102;
    undefined field158_0x103;
    undefined field159_0x104;
    undefined field160_0x105;
    undefined field161_0x106;
    undefined field162_0x107;
    undefined field163_0x108;
    undefined field164_0x109;
    undefined field165_0x10a;
    undefined field166_0x10b;
    undefined field167_0x10c;
    undefined field168_0x10d;
    undefined field169_0x10e;
    undefined field170_0x10f;
    undefined field171_0x110;
    undefined field172_0x111;
    undefined field173_0x112;
    undefined field174_0x113;
    undefined field175_0x114;
    undefined field176_0x115;
    undefined field177_0x116;
    undefined field178_0x117;
    undefined field179_0x118;
    undefined field180_0x119;
    undefined field181_0x11a;
    undefined field182_0x11b;
    undefined field183_0x11c;
    undefined field184_0x11d;
    undefined field185_0x11e;
    undefined field186_0x11f;
    undefined field187_0x120;
    undefined field188_0x121;
    undefined field189_0x122;
    undefined field190_0x123;
    undefined field191_0x124;
    undefined field192_0x125;
    undefined field193_0x126;
    undefined field194_0x127;
    undefined field195_0x128;
    undefined field196_0x129;
    undefined field197_0x12a;
    undefined field198_0x12b;
    undefined field199_0x12c;
    undefined field200_0x12d;
    undefined field201_0x12e;
    undefined field202_0x12f;
    undefined field203_0x130;
    undefined field204_0x131;
    undefined field205_0x132;
    undefined field206_0x133;
    undefined field207_0x134;
    undefined field208_0x135;
    undefined field209_0x136;
    undefined field210_0x137;
    undefined field211_0x138;
    undefined field212_0x139;
    undefined field213_0x13a;
    undefined field214_0x13b;
    undefined field215_0x13c;
    undefined field216_0x13d;
    undefined field217_0x13e;
    undefined field218_0x13f;
    undefined field219_0x140;
    undefined field220_0x141;
    undefined field221_0x142;
    undefined field222_0x143;
    undefined field223_0x144;
    undefined field224_0x145;
    undefined field225_0x146;
    undefined field226_0x147;
    undefined field227_0x148;
    undefined field228_0x149;
    undefined field229_0x14a;
    undefined field230_0x14b;
    undefined field231_0x14c;
    undefined field232_0x14d;
    undefined field233_0x14e;
    undefined field234_0x14f;
    undefined field235_0x150;
    undefined field236_0x151;
    undefined field237_0x152;
    undefined field238_0x153;
    undefined field239_0x154;
    undefined field240_0x155;
    undefined field241_0x156;
    undefined field242_0x157;
    undefined field243_0x158;
    undefined field244_0x159;
    undefined field245_0x15a;
    undefined field246_0x15b;
    undefined field247_0x15c;
    undefined field248_0x15d;
    undefined field249_0x15e;
    undefined field250_0x15f;
    undefined field251_0x160;
    undefined field252_0x161;
    undefined field253_0x162;
    undefined field254_0x163;
    undefined field255_0x164;
    undefined field256_0x165;
    undefined field257_0x166;
    undefined field258_0x167;
    undefined field259_0x168;
    undefined field260_0x169;
    undefined field261_0x16a;
    undefined field262_0x16b;
    undefined field263_0x16c;
    undefined field264_0x16d;
    undefined field265_0x16e;
    undefined field266_0x16f;
    undefined field267_0x170;
    undefined field268_0x171;
    undefined field269_0x172;
    undefined field270_0x173;
    undefined field271_0x174;
    undefined field272_0x175;
    undefined field273_0x176;
    undefined field274_0x177;
    undefined field275_0x178;
    undefined field276_0x179;
    undefined field277_0x17a;
    undefined field278_0x17b;
    undefined field279_0x17c;
    undefined field280_0x17d;
    undefined field281_0x17e;
    undefined field282_0x17f;
    undefined field283_0x180;
    undefined field284_0x181;
    undefined field285_0x182;
    undefined field286_0x183;
    undefined field287_0x184;
    undefined field288_0x185;
    undefined field289_0x186;
    undefined field290_0x187;
    undefined field291_0x188;
    undefined field292_0x189;
    undefined field293_0x18a;
    undefined field294_0x18b;
    undefined field295_0x18c;
    undefined field296_0x18d;
    undefined field297_0x18e;
    undefined field298_0x18f;
    undefined field299_0x190;
    undefined field300_0x191;
    undefined field301_0x192;
    undefined field302_0x193;
    undefined field303_0x194;
    undefined field304_0x195;
    undefined field305_0x196;
    undefined field306_0x197;
    undefined field307_0x198;
    undefined field308_0x199;
    undefined field309_0x19a;
    undefined field310_0x19b;
    undefined field311_0x19c;
    undefined field312_0x19d;
    undefined field313_0x19e;
    undefined field314_0x19f;
    undefined field315_0x1a0;
    undefined field316_0x1a1;
    undefined field317_0x1a2;
    undefined field318_0x1a3;
    undefined field319_0x1a4;
    undefined field320_0x1a5;
    undefined field321_0x1a6;
    undefined field322_0x1a7;
    undefined field323_0x1a8;
    undefined field324_0x1a9;
    undefined field325_0x1aa;
    undefined field326_0x1ab;
    undefined field327_0x1ac;
    undefined field328_0x1ad;
    undefined field329_0x1ae;
    undefined field330_0x1af;
    undefined field331_0x1b0;
    undefined field332_0x1b1;
    undefined field333_0x1b2;
    undefined field334_0x1b3;
    undefined field335_0x1b4;
    undefined field336_0x1b5;
    undefined field337_0x1b6;
    undefined field338_0x1b7;
    undefined field339_0x1b8;
    undefined field340_0x1b9;
    undefined field341_0x1ba;
    undefined field342_0x1bb;
    undefined field343_0x1bc;
    undefined field344_0x1bd;
    undefined field345_0x1be;
    undefined field346_0x1bf;
    undefined field347_0x1c0;
    undefined field348_0x1c1;
    undefined field349_0x1c2;
    undefined field350_0x1c3;
    undefined field351_0x1c4;
    undefined field352_0x1c5;
    undefined field353_0x1c6;
    undefined field354_0x1c7;
    undefined field355_0x1c8;
    undefined field356_0x1c9;
    undefined field357_0x1ca;
    undefined field358_0x1cb;
    undefined field359_0x1cc;
    undefined field360_0x1cd;
    undefined field361_0x1ce;
    undefined field362_0x1cf;
    undefined field363_0x1d0;
    undefined field364_0x1d1;
    undefined field365_0x1d2;
    undefined field366_0x1d3;
    undefined field367_0x1d4;
    undefined field368_0x1d5;
    undefined field369_0x1d6;
    undefined field370_0x1d7;
    undefined field371_0x1d8;
    undefined field372_0x1d9;
    undefined field373_0x1da;
    undefined field374_0x1db;
    undefined field375_0x1dc;
    undefined field376_0x1dd;
    undefined field377_0x1de;
    undefined field378_0x1df;
    undefined field379_0x1e0;
    undefined field380_0x1e1;
    undefined field381_0x1e2;
    undefined field382_0x1e3;
    undefined field383_0x1e4;
    undefined field384_0x1e5;
    undefined field385_0x1e6;
    undefined field386_0x1e7;
    undefined field387_0x1e8;
    undefined field388_0x1e9;
    undefined field389_0x1ea;
    undefined field390_0x1eb;
    undefined field391_0x1ec;
    undefined field392_0x1ed;
    undefined field393_0x1ee;
    undefined field394_0x1ef;
    undefined field395_0x1f0;
    undefined field396_0x1f1;
    undefined field397_0x1f2;
    undefined field398_0x1f3;
    undefined field399_0x1f4;
    undefined field400_0x1f5;
    undefined field401_0x1f6;
    undefined field402_0x1f7;
    undefined field403_0x1f8;
    undefined field404_0x1f9;
    undefined field405_0x1fa;
    undefined field406_0x1fb;
    undefined field407_0x1fc;
    undefined field408_0x1fd;
    undefined field409_0x1fe;
    undefined field410_0x1ff;
    undefined field411_0x200;
    undefined field412_0x201;
    undefined field413_0x202;
    undefined field414_0x203;
    uint field415_0x204;
    undefined field416_0x208;
    undefined field417_0x209;
    undefined field418_0x20a;
    undefined field419_0x20b;
    undefined field420_0x20c;
    undefined field421_0x20d;
    undefined field422_0x20e;
    undefined field423_0x20f;
    undefined field424_0x210;
    undefined field425_0x211;
    undefined field426_0x212;
    undefined field427_0x213;
    undefined field428_0x214;
    undefined field429_0x215;
    undefined field430_0x216;
    undefined field431_0x217;
    undefined field432_0x218;
    undefined field433_0x219;
    undefined field434_0x21a;
    undefined field435_0x21b;
    undefined field436_0x21c;
    undefined field437_0x21d;
    undefined field438_0x21e;
    undefined field439_0x21f;
    undefined field440_0x220;
    undefined field441_0x221;
    undefined field442_0x222;
    undefined field443_0x223;
    undefined field444_0x224;
    undefined field445_0x225;
    undefined field446_0x226;
    undefined field447_0x227;
    undefined field448_0x228;
    undefined field449_0x229;
    undefined field450_0x22a;
    undefined field451_0x22b;
    undefined field452_0x22c;
    undefined field453_0x22d;
    undefined field454_0x22e;
    undefined field455_0x22f;
    undefined field456_0x230;
    undefined field457_0x231;
    undefined field458_0x232;
    undefined field459_0x233;
    undefined field460_0x234;
    undefined field461_0x235;
    undefined field462_0x236;
    undefined field463_0x237;
    undefined field464_0x238;
    undefined field465_0x239;
    undefined field466_0x23a;
    undefined field467_0x23b;
    undefined field468_0x23c;
    undefined field469_0x23d;
    undefined field470_0x23e;
    undefined field471_0x23f;
    undefined field472_0x240;
    undefined field473_0x241;
    undefined field474_0x242;
    undefined field475_0x243;
    undefined field476_0x244;
    undefined field477_0x245;
    undefined field478_0x246;
    undefined field479_0x247;
    undefined field480_0x248;
    undefined field481_0x249;
    undefined field482_0x24a;
    undefined field483_0x24b;
    undefined field484_0x24c;
    undefined field485_0x24d;
    undefined field486_0x24e;
    undefined field487_0x24f;
    undefined field488_0x250;
    undefined field489_0x251;
    undefined field490_0x252;
    undefined field491_0x253;
    undefined field492_0x254;
    undefined field493_0x255;
    undefined field494_0x256;
    undefined field495_0x257;
    undefined field496_0x258;
    undefined field497_0x259;
    undefined field498_0x25a;
    undefined field499_0x25b;
    undefined field500_0x25c;
    undefined field501_0x25d;
    undefined field502_0x25e;
    undefined field503_0x25f;
    undefined field504_0x260;
    undefined field505_0x261;
    undefined field506_0x262;
    undefined field507_0x263;
    undefined field508_0x264;
    undefined field509_0x265;
    undefined field510_0x266;
    undefined field511_0x267;
    undefined field512_0x268;
    undefined field513_0x269;
    undefined field514_0x26a;
    undefined field515_0x26b;
    undefined field516_0x26c;
    undefined field517_0x26d;
    undefined field518_0x26e;
    undefined field519_0x26f;
    undefined field520_0x270;
    undefined field521_0x271;
    undefined field522_0x272;
    undefined field523_0x273;
    undefined field524_0x274;
    undefined field525_0x275;
    undefined field526_0x276;
    undefined field527_0x277;
    undefined field528_0x278;
    undefined field529_0x279;
    undefined field530_0x27a;
    undefined field531_0x27b;
    undefined field532_0x27c;
    undefined field533_0x27d;
    undefined field534_0x27e;
    undefined field535_0x27f;
    undefined field536_0x280;
    undefined field537_0x281;
    undefined field538_0x282;
    undefined field539_0x283;
    undefined field540_0x284;
    undefined field541_0x285;
    undefined field542_0x286;
    undefined field543_0x287;
    undefined field544_0x288;
    undefined field545_0x289;
    undefined field546_0x28a;
    undefined field547_0x28b;
    undefined field548_0x28c;
    undefined field549_0x28d;
    undefined field550_0x28e;
    undefined field551_0x28f;
    undefined field552_0x290;
    undefined field553_0x291;
    undefined field554_0x292;
    undefined field555_0x293;
    undefined field556_0x294;
    undefined field557_0x295;
    undefined field558_0x296;
    undefined field559_0x297;
    undefined field560_0x298;
    undefined field561_0x299;
    undefined field562_0x29a;
    undefined field563_0x29b;
    undefined field564_0x29c;
    undefined field565_0x29d;
    undefined field566_0x29e;
    undefined field567_0x29f;
    undefined field568_0x2a0;
    undefined field569_0x2a1;
    undefined field570_0x2a2;
    undefined field571_0x2a3;
    undefined field572_0x2a4;
    undefined field573_0x2a5;
    undefined field574_0x2a6;
    undefined field575_0x2a7;
    undefined field576_0x2a8;
    undefined field577_0x2a9;
    undefined field578_0x2aa;
    undefined field579_0x2ab;
    undefined field580_0x2ac;
    undefined field581_0x2ad;
    undefined field582_0x2ae;
    undefined field583_0x2af;
    undefined field584_0x2b0;
    undefined field585_0x2b1;
    undefined field586_0x2b2;
    undefined field587_0x2b3;
    undefined field588_0x2b4;
    undefined field589_0x2b5;
    undefined field590_0x2b6;
    undefined field591_0x2b7;
    undefined field592_0x2b8;
    undefined field593_0x2b9;
    undefined field594_0x2ba;
    undefined field595_0x2bb;
    undefined field596_0x2bc;
    undefined field597_0x2bd;
    undefined field598_0x2be;
    undefined field599_0x2bf;
    undefined field600_0x2c0;
    undefined field601_0x2c1;
    undefined field602_0x2c2;
    undefined field603_0x2c3;
    undefined field604_0x2c4;
    undefined field605_0x2c5;
    undefined field606_0x2c6;
    undefined field607_0x2c7;
    undefined field608_0x2c8;
    undefined field609_0x2c9;
    undefined field610_0x2ca;
    undefined field611_0x2cb;
    undefined field612_0x2cc;
    undefined field613_0x2cd;
    undefined field614_0x2ce;
    undefined field615_0x2cf;
    struct GXTlutRegion tlut_reg_2;
    undefined field617_0x2d4;
    undefined field618_0x2d5;
    undefined field619_0x2d6;
    undefined field620_0x2d7;
    undefined field621_0x2d8;
    undefined field622_0x2d9;
    undefined field623_0x2da;
    undefined field624_0x2db;
    undefined field625_0x2dc;
    undefined field626_0x2dd;
    undefined field627_0x2de;
    undefined field628_0x2df;
    undefined field629_0x2e0;
    undefined field630_0x2e1;
    undefined field631_0x2e2;
    undefined field632_0x2e3;
    undefined field633_0x2e4;
    undefined field634_0x2e5;
    undefined field635_0x2e6;
    undefined field636_0x2e7;
    undefined field637_0x2e8;
    undefined field638_0x2e9;
    undefined field639_0x2ea;
    undefined field640_0x2eb;
    undefined field641_0x2ec;
    undefined field642_0x2ed;
    undefined field643_0x2ee;
    undefined field644_0x2ef;
    undefined field645_0x2f0;
    undefined field646_0x2f1;
    undefined field647_0x2f2;
    undefined field648_0x2f3;
    undefined field649_0x2f4;
    undefined field650_0x2f5;
    undefined field651_0x2f6;
    undefined field652_0x2f7;
    undefined field653_0x2f8;
    undefined field654_0x2f9;
    undefined field655_0x2fa;
    undefined field656_0x2fb;
    undefined field657_0x2fc;
    undefined field658_0x2fd;
    undefined field659_0x2fe;
    undefined field660_0x2ff;
    undefined field661_0x300;
    undefined field662_0x301;
    undefined field663_0x302;
    undefined field664_0x303;
    undefined field665_0x304;
    undefined field666_0x305;
    undefined field667_0x306;
    undefined field668_0x307;
    undefined field669_0x308;
    undefined field670_0x309;
    undefined field671_0x30a;
    undefined field672_0x30b;
    undefined field673_0x30c;
    undefined field674_0x30d;
    undefined field675_0x30e;
    undefined field676_0x30f;
    undefined field677_0x310;
    undefined field678_0x311;
    undefined field679_0x312;
    undefined field680_0x313;
    undefined field681_0x314;
    undefined field682_0x315;
    undefined field683_0x316;
    undefined field684_0x317;
    undefined field685_0x318;
    undefined field686_0x319;
    undefined field687_0x31a;
    undefined field688_0x31b;
    undefined field689_0x31c;
    undefined field690_0x31d;
    undefined field691_0x31e;
    undefined field692_0x31f;
    undefined field693_0x320;
    undefined field694_0x321;
    undefined field695_0x322;
    undefined field696_0x323;
    undefined field697_0x324;
    undefined field698_0x325;
    undefined field699_0x326;
    undefined field700_0x327;
    undefined field701_0x328;
    undefined field702_0x329;
    undefined field703_0x32a;
    undefined field704_0x32b;
    undefined field705_0x32c;
    undefined field706_0x32d;
    undefined field707_0x32e;
    undefined field708_0x32f;
    undefined field709_0x330;
    undefined field710_0x331;
    undefined field711_0x332;
    undefined field712_0x333;
    undefined field713_0x334;
    undefined field714_0x335;
    undefined field715_0x336;
    undefined field716_0x337;
    undefined field717_0x338;
    undefined field718_0x339;
    undefined field719_0x33a;
    undefined field720_0x33b;
    undefined field721_0x33c;
    undefined field722_0x33d;
    undefined field723_0x33e;
    undefined field724_0x33f;
    undefined field725_0x340;
    undefined field726_0x341;
    undefined field727_0x342;
    undefined field728_0x343;
    undefined field729_0x344;
    undefined field730_0x345;
    undefined field731_0x346;
    undefined field732_0x347;
    undefined field733_0x348;
    undefined field734_0x349;
    undefined field735_0x34a;
    undefined field736_0x34b;
    undefined field737_0x34c;
    undefined field738_0x34d;
    undefined field739_0x34e;
    undefined field740_0x34f;
    undefined field741_0x350;
    undefined field742_0x351;
    undefined field743_0x352;
    undefined field744_0x353;
    undefined field745_0x354;
    undefined field746_0x355;
    undefined field747_0x356;
    undefined field748_0x357;
    undefined field749_0x358;
    undefined field750_0x359;
    undefined field751_0x35a;
    undefined field752_0x35b;
    undefined field753_0x35c;
    undefined field754_0x35d;
    undefined field755_0x35e;
    undefined field756_0x35f;
    undefined field757_0x360;
    undefined field758_0x361;
    undefined field759_0x362;
    undefined field760_0x363;
    undefined field761_0x364;
    undefined field762_0x365;
    undefined field763_0x366;
    undefined field764_0x367;
    undefined field765_0x368;
    undefined field766_0x369;
    undefined field767_0x36a;
    undefined field768_0x36b;
    undefined field769_0x36c;
    undefined field770_0x36d;
    undefined field771_0x36e;
    undefined field772_0x36f;
    undefined field773_0x370;
    undefined field774_0x371;
    undefined field775_0x372;
    undefined field776_0x373;
    undefined field777_0x374;
    undefined field778_0x375;
    undefined field779_0x376;
    undefined field780_0x377;
    undefined field781_0x378;
    undefined field782_0x379;
    undefined field783_0x37a;
    undefined field784_0x37b;
    undefined field785_0x37c;
    undefined field786_0x37d;
    undefined field787_0x37e;
    undefined field788_0x37f;
    undefined field789_0x380;
    undefined field790_0x381;
    undefined field791_0x382;
    undefined field792_0x383;
    undefined field793_0x384;
    undefined field794_0x385;
    undefined field795_0x386;
    undefined field796_0x387;
    undefined field797_0x388;
    undefined field798_0x389;
    undefined field799_0x38a;
    undefined field800_0x38b;
    undefined field801_0x38c;
    undefined field802_0x38d;
    undefined field803_0x38e;
    undefined field804_0x38f;
    undefined field805_0x390;
    undefined field806_0x391;
    undefined field807_0x392;
    undefined field808_0x393;
    undefined field809_0x394;
    undefined field810_0x395;
    undefined field811_0x396;
    undefined field812_0x397;
    undefined field813_0x398;
    undefined field814_0x399;
    undefined field815_0x39a;
    undefined field816_0x39b;
    undefined field817_0x39c;
    undefined field818_0x39d;
    undefined field819_0x39e;
    undefined field820_0x39f;
    undefined field821_0x3a0;
    undefined field822_0x3a1;
    undefined field823_0x3a2;
    undefined field824_0x3a3;
    undefined field825_0x3a4;
    undefined field826_0x3a5;
    undefined field827_0x3a6;
    undefined field828_0x3a7;
    undefined field829_0x3a8;
    undefined field830_0x3a9;
    undefined field831_0x3aa;
    undefined field832_0x3ab;
    undefined field833_0x3ac;
    undefined field834_0x3ad;
    undefined field835_0x3ae;
    undefined field836_0x3af;
    undefined field837_0x3b0;
    undefined field838_0x3b1;
    undefined field839_0x3b2;
    undefined field840_0x3b3;
    undefined field841_0x3b4;
    undefined field842_0x3b5;
    undefined field843_0x3b6;
    undefined field844_0x3b7;
    undefined field845_0x3b8;
    undefined field846_0x3b9;
    undefined field847_0x3ba;
    undefined field848_0x3bb;
    undefined field849_0x3bc;
    undefined field850_0x3bd;
    undefined field851_0x3be;
    undefined field852_0x3bf;
    undefined field853_0x3c0;
    undefined field854_0x3c1;
    undefined field855_0x3c2;
    undefined field856_0x3c3;
    undefined field857_0x3c4;
    undefined field858_0x3c5;
    undefined field859_0x3c6;
    undefined field860_0x3c7;
    undefined field861_0x3c8;
    undefined field862_0x3c9;
    undefined field863_0x3ca;
    undefined field864_0x3cb;
    undefined field865_0x3cc;
    undefined field866_0x3cd;
    undefined field867_0x3ce;
    undefined field868_0x3cf;
    struct GXTlutRegion * tlut_reg;
    undefined field870_0x3d4;
    undefined field871_0x3d5;
    undefined field872_0x3d6;
    undefined field873_0x3d7;
    undefined field874_0x3d8;
    undefined field875_0x3d9;
    undefined field876_0x3da;
    undefined field877_0x3db;
    undefined field878_0x3dc;
    undefined field879_0x3dd;
    undefined field880_0x3de;
    undefined field881_0x3df;
    undefined field882_0x3e0;
    undefined field883_0x3e1;
    undefined field884_0x3e2;
    undefined field885_0x3e3;
    undefined field886_0x3e4;
    undefined field887_0x3e5;
    undefined field888_0x3e6;
    undefined field889_0x3e7;
    undefined field890_0x3e8;
    undefined field891_0x3e9;
    undefined field892_0x3ea;
    undefined field893_0x3eb;
    undefined field894_0x3ec;
    undefined field895_0x3ed;
    undefined field896_0x3ee;
    undefined field897_0x3ef;
    undefined field898_0x3f0;
    undefined field899_0x3f1;
    undefined field900_0x3f2;
    undefined field901_0x3f3;
    undefined field902_0x3f4;
    undefined field903_0x3f5;
    undefined field904_0x3f6;
    undefined field905_0x3f7;
    undefined field906_0x3f8;
    undefined field907_0x3f9;
    undefined field908_0x3fa;
    undefined field909_0x3fb;
    undefined field910_0x3fc;
    undefined field911_0x3fd;
    undefined field912_0x3fe;
    undefined field913_0x3ff;
    undefined field914_0x400;
    undefined field915_0x401;
    undefined field916_0x402;
    undefined field917_0x403;
    undefined field918_0x404;
    undefined field919_0x405;
    undefined field920_0x406;
    undefined field921_0x407;
    undefined field922_0x408;
    undefined field923_0x409;
    undefined field924_0x40a;
    undefined field925_0x40b;
    undefined field926_0x40c;
    undefined field927_0x40d;
    undefined field928_0x40e;
    undefined field929_0x40f;
    undefined field930_0x410;
    undefined field931_0x411;
    undefined field932_0x412;
    undefined field933_0x413;
    undefined field934_0x414;
    undefined field935_0x415;
    undefined field936_0x416;
    undefined field937_0x417;
    undefined field938_0x418;
    undefined field939_0x419;
    undefined field940_0x41a;
    undefined field941_0x41b;
    undefined field942_0x41c;
    undefined field943_0x41d;
    undefined field944_0x41e;
    undefined field945_0x41f;
    undefined field946_0x420;
    undefined field947_0x421;
    undefined field948_0x422;
    undefined field949_0x423;
    undefined field950_0x424;
    undefined field951_0x425;
    undefined field952_0x426;
    undefined field953_0x427;
    undefined field954_0x428;
    undefined field955_0x429;
    undefined field956_0x42a;
    undefined field957_0x42b;
    undefined field958_0x42c;
    undefined field959_0x42d;
    undefined field960_0x42e;
    undefined field961_0x42f;
    undefined field962_0x430;
    undefined field963_0x431;
    undefined field964_0x432;
    undefined field965_0x433;
    undefined field966_0x434;
    undefined field967_0x435;
    undefined field968_0x436;
    undefined field969_0x437;
    undefined field970_0x438;
    undefined field971_0x439;
    undefined field972_0x43a;
    undefined field973_0x43b;
    undefined field974_0x43c;
    undefined field975_0x43d;
    undefined field976_0x43e;
    undefined field977_0x43f;
    undefined field978_0x440;
    undefined field979_0x441;
    undefined field980_0x442;
    undefined field981_0x443;
    undefined field982_0x444;
    undefined field983_0x445;
    undefined field984_0x446;
    undefined field985_0x447;
    undefined field986_0x448;
    undefined field987_0x449;
    undefined field988_0x44a;
    undefined field989_0x44b;
    undefined field990_0x44c;
    undefined field991_0x44d;
    undefined field992_0x44e;
    undefined field993_0x44f;
    undefined field994_0x450;
    undefined field995_0x451;
    undefined field996_0x452;
    undefined field997_0x453;
    undefined field998_0x454;
    undefined field999_0x455;
    undefined field1000_0x456;
    undefined field1001_0x457;
    undefined field1002_0x458;
    undefined field1003_0x459;
    undefined field1004_0x45a;
    undefined field1005_0x45b;
    undefined field1006_0x45c;
    undefined field1007_0x45d;
    undefined field1008_0x45e;
    undefined field1009_0x45f;
    undefined field1010_0x460;
    undefined field1011_0x461;
    undefined field1012_0x462;
    undefined field1013_0x463;
    undefined field1014_0x464;
    undefined field1015_0x465;
    undefined field1016_0x466;
    undefined field1017_0x467;
    undefined field1018_0x468;
    undefined field1019_0x469;
    undefined field1020_0x46a;
    undefined field1021_0x46b;
    undefined field1022_0x46c;
    undefined field1023_0x46d;
    undefined field1024_0x46e;
    undefined field1025_0x46f;
    undefined field1026_0x470;
    undefined field1027_0x471;
    undefined field1028_0x472;
    undefined field1029_0x473;
    undefined field1030_0x474;
    undefined field1031_0x475;
    undefined field1032_0x476;
    undefined field1033_0x477;
    undefined field1034_0x478;
    undefined field1035_0x479;
    undefined field1036_0x47a;
    undefined field1037_0x47b;
    undefined field1038_0x47c;
    undefined field1039_0x47d;
    undefined field1040_0x47e;
    undefined field1041_0x47f;
    undefined field1042_0x480;
    undefined field1043_0x481;
    undefined field1044_0x482;
    undefined field1045_0x483;
    undefined field1046_0x484;
    undefined field1047_0x485;
    undefined field1048_0x486;
    undefined field1049_0x487;
    undefined field1050_0x488;
    undefined field1051_0x489;
    undefined field1052_0x48a;
    undefined field1053_0x48b;
    undefined field1054_0x48c;
    undefined field1055_0x48d;
    undefined field1056_0x48e;
    undefined field1057_0x48f;
    undefined field1058_0x490;
    undefined field1059_0x491;
    undefined field1060_0x492;
    undefined field1061_0x493;
    undefined field1062_0x494;
    undefined field1063_0x495;
    undefined field1064_0x496;
    undefined field1065_0x497;
    undefined field1066_0x498;
    undefined field1067_0x499;
    undefined field1068_0x49a;
    undefined field1069_0x49b;
    undefined field1070_0x49c;
    undefined field1071_0x49d;
    undefined field1072_0x49e;
    undefined field1073_0x49f;
    undefined field1074_0x4a0;
    undefined field1075_0x4a1;
    undefined field1076_0x4a2;
    undefined field1077_0x4a3;
    undefined field1078_0x4a4;
    undefined field1079_0x4a5;
    undefined field1080_0x4a6;
    undefined field1081_0x4a7;
    undefined field1082_0x4a8;
    undefined field1083_0x4a9;
    undefined field1084_0x4aa;
    undefined field1085_0x4ab;
    undefined field1086_0x4ac;
    undefined field1087_0x4ad;
    undefined field1088_0x4ae;
    undefined field1089_0x4af;
    undefined field1090_0x4b0;
    undefined field1091_0x4b1;
    undefined field1092_0x4b2;
    undefined field1093_0x4b3;
    undefined field1094_0x4b4;
    undefined field1095_0x4b5;
    undefined field1096_0x4b6;
    undefined field1097_0x4b7;
    undefined field1098_0x4b8;
    undefined field1099_0x4b9;
    undefined field1100_0x4ba;
    undefined field1101_0x4bb;
    undefined field1102_0x4bc;
    undefined field1103_0x4bd;
    undefined field1104_0x4be;
    undefined field1105_0x4bf;
    undefined field1106_0x4c0;
    undefined field1107_0x4c1;
    undefined field1108_0x4c2;
    undefined field1109_0x4c3;
    undefined field1110_0x4c4;
    undefined field1111_0x4c5;
    undefined field1112_0x4c6;
    undefined field1113_0x4c7;
    undefined field1114_0x4c8;
    undefined field1115_0x4c9;
    undefined field1116_0x4ca;
    undefined field1117_0x4cb;
    undefined field1118_0x4cc;
    undefined field1119_0x4cd;
    undefined field1120_0x4ce;
    undefined field1121_0x4cf;
    undefined field1122_0x4d0;
    undefined field1123_0x4d1;
    undefined field1124_0x4d2;
    undefined field1125_0x4d3;
    undefined field1126_0x4d4;
    undefined field1127_0x4d5;
    undefined field1128_0x4d6;
    undefined field1129_0x4d7;
    undefined field1130_0x4d8;
    undefined field1131_0x4d9;
    undefined field1132_0x4da;
    undefined field1133_0x4db;
    undefined field1134_0x4dc;
    undefined field1135_0x4dd;
    undefined field1136_0x4de;
    undefined field1137_0x4df;
    undefined field1138_0x4e0;
    undefined field1139_0x4e1;
    undefined field1140_0x4e2;
    undefined field1141_0x4e3;
    undefined field1142_0x4e4;
    undefined field1143_0x4e5;
    undefined field1144_0x4e6;
    undefined field1145_0x4e7;
    undefined field1146_0x4e8;
    undefined field1147_0x4e9;
    undefined field1148_0x4ea;
    undefined field1149_0x4eb;
    undefined field1150_0x4ec;
    undefined field1151_0x4ed;
    undefined field1152_0x4ee;
    undefined field1153_0x4ef;
    undefined field1154_0x4f0;
    undefined field1155_0x4f1;
    undefined field1156_0x4f2;
    undefined field1157_0x4f3;
    uint field1158_0x4f4;
};

typedef struct GXColor GXColor, *PGXColor;

struct GXColor {
    uint8_t r;
    uint8_t g;
    uint8_t b;
    uint8_t a;
};

typedef struct GXFifoObj GXFifoObj, *PGXFifoObj;

struct GXFifoObj {
    uint8_t pad[25];
};

typedef struct GXLightObj GXLightObj, *PGXLightObj;

struct GXLightObj {
    float z;
    undefined field1_0x4;
    undefined field2_0x5;
    undefined field3_0x6;
    undefined field4_0x7;
    float x;
    float y;
};

typedef struct GXTexObj GXTexObj, *PGXTexObj;

struct GXTexObj {
    uint field0_0x0;
    uint field1_0x4;
    uint field2_0x8;
    uint field3_0xc;
    undefined field4_0x10;
    undefined field5_0x11;
    undefined field6_0x12;
    undefined field7_0x13;
    uint field8_0x14;
    undefined field9_0x18;
    undefined field10_0x19;
    undefined field11_0x1a;
    undefined field12_0x1b;
    ushort field13_0x1c;
    undefined field14_0x1e;
    byte field15_0x1f;
};

typedef struct GXTexRegion GXTexRegion, *PGXTexRegion;

struct GXTexRegion {
    char padding[14];
};

typedef struct LDATA LDATA, *PLDATA;

typedef struct pCHASE pCHASE, *PpCHASE;

typedef struct pSFX pSFX, *PpSFX;

struct pSFX {
    char name[16];
    ushort pitch;
    ushort volume;
    uchar buzz;
    uchar rumble;
    uchar delay;
    uchar wait;
    char * path;
    ushort frequency;
    ushort stream;
    char type;
    char pad1;
    ushort id;
    struct nuvec_s Pos;
};

struct pCHASE {
    char i;
    char i_last;
    char i_next;
    uchar cuboid;
    short character[6];
    short action[6];
    float scale[6];
    float duration;
};

struct LDATA {
    char * filepath;
    uchar * cList; /* modelList */
    struct pCHASE * pChase;
    uint time[3];
    short music[2];
    struct pSFX * pSFX;
    short nSFX;
    char pad1;
    char hub;
    ushort flags;
    short character;
    short vehicle;
    ushort farclip;
    struct nuvec_s vSTART;
    struct nuvec_s vBONUS;
    float fognear;
    float fogfar;
    uchar fogr;
    uchar fogg;
    uchar fogb;
    uchar foga;
    uchar hazer;
    uchar hazeg;
    uchar hazeb;
    uchar hazea;
    int totalsize;
};

typedef struct Lights Lights, *PLights;

struct Lights {
    int type;
    struct nuvec_s pos;
    struct nuvec_s radius_pos;
    float radius;
    uchar r;
    uchar g;
    uchar b;
    uchar glow;
    struct nucolour3_s colour;
    struct nuvec_s direction;
    uchar globalflag;
    uchar blendtype;
    uchar brightness;
    uchar pad1;
    struct glowlight * glowlight;
    char pad2[4];
};

typedef struct MaskFeathers MaskFeathers, *PMaskFeathers;

struct MaskFeathers {
    struct numtx_s mM;
    struct numtx_s mS;
    float time;
    float duration;
    float shadow;
    char pad1;
    char pad2;
    char pad3;
    char pad4;
};

typedef struct memexternal_s memexternal_s, *Pmemexternal_s;

typedef union variptr_u variptr_u, *Pvariptr_u;

typedef struct nuivec_s nuivec_s, *Pnuivec_s;

typedef struct nuivec4_s nuivec4_s, *Pnuivec4_s;

struct nuivec4_s {
    int x;
    int y;
    int z;
    int w;
};

struct nuivec_s {
    int x;
    int y;
    int z;
};

union variptr_u {
    void * voidptr;
    uchar * u8;
    ushort * u16;
    short * s16;
    uint * u32;
    longlong * u64;
    longlong * u128;
    float * f32;
    struct nuvec_s * vec3;
    struct nuvec4_s * vec4;
    struct nuivec_s * ivec3;
    struct nuivec4_s * ivec4;
    struct numtx_s * mtx44;
    uint * viftag;
    uint intaddr;
    struct _sceDmaTag * dmatag;
    struct giftag * gifTag;
};

struct memexternal_s {
    union variptr_u * ptr;
    union variptr_u * end;
};

typedef struct MemFile MemFile, *PMemFile;

typedef enum nufilemode_e {
    NUFILE_READ=0,
    NUFILE_WRITE=1,
    NUFILE_APPEND=2,
    NUFILE_MODE_CNT=3
} nufilemode_e;

struct MemFile {
    char * start;
    char * end;
    char * position;
    int unused;
    enum nufilemode_e open;
};

typedef struct MineCartMoveInfo MineCartMoveInfo, *PMineCartMoveInfo;

struct MineCartMoveInfo {
    float IDLESPEED;
    float TIPTOESPEED;
    float WALKSPEED;
    float RUNSPEED;
    float SPRINTSPEED;
    float SLIDESPEED;
    float CRAWLSPEED;
    float DANGLESPEED;
    float WADESPEED;
    float JUMPHEIGHT;
    float DANGLEGAP;
    short JUMPFRAMES0;
    short JUMPFRAMES1;
    short JUMPFRAMES2;
    short STARJUMPFRAMES;
    short SOMERSAULTFRAMES;
    short SPINFRAMES;
    short SPINRESETFRAMES;
    short SUPERSPINFRAMES;
    short SUPERSPINWAITFRAMES;
    short SLAMWAITFRAMES;
    short SLIDEFRAMES;
    short CROUCHINGFRAMES;
    short JUMPLANDFRAMES;
    short spad;
};

typedef struct MineTubMoveInfo MineTubMoveInfo, *PMineTubMoveInfo;

struct MineTubMoveInfo {
    float IDLESPEED;
    float TIPTOESPEED;
    float WALKSPEED;
    float RUNSPEED;
    float SPRINTSPEED;
    float SLIDESPEED;
    float CRAWLSPEED;
    float DANGLESPEED;
    float WADESPEED;
    float JUMPHEIGHT;
    float DANGLEGAP;
    short JUMPFRAMES0;
    short JUMPFRAMES1;
    short JUMPFRAMES2;
    short STARJUMPFRAMES;
    short SOMERSAULTFRAMES;
    short SPINFRAMES;
    short SPINRESETFRAMES;
    short SUPERSPINFRAMES;
    short SUPERSPINWAITFRAMES;
    short SLAMWAITFRAMES;
    short SLIDEFRAMES;
    short CROUCHINGFRAMES;
    short JUMPLANDFRAMES;
    short spad;
};

typedef struct MYSPLINE MYSPLINE, *PMYSPLINE;

struct MYSPLINE {
    struct nugspline_s * Spline;
    float Cur;
    float Nex;
    float Act;
    float Inc;
    struct nuvec_s CurPos;
    struct nuvec_s NexPos;
    float LookaheadDist;
};

typedef struct nuangvec_s nuangvec_s, *Pnuangvec_s;

struct nuangvec_s {
    int x;
    int y;
    int z;
};

typedef struct nuanimtime_s nuanimtime_s, *Pnuanimtime_s;

struct nuanimtime_s {
    float time;
    float time_offset;
    int chunk;
    uint time_mask;
    uint time_byte;
};

typedef struct nucamera_s nucamera_s, *Pnucamera_s;

struct nucamera_s {
    struct numtx_s mtx;
    float fov;
    float aspect;
    float nearclip;
    float farclip;
    uint portalnearclip;
    struct nuvec_s scale;
};

typedef enum nucamfxmode_s {
    NUCAMFX_NONE=0,
    NUCAMFX_REFLECT=1
} nucamfxmode_s;

typedef struct NUCUTSCENE_s NUCUTSCENE_s, *PNUCUTSCENE_s;

typedef struct NUCUTSCENECAMERA_s NUCUTSCENECAMERA_s, *PNUCUTSCENECAMERA_s;

typedef struct NUHINSTANCE_s NUHINSTANCE_s, *PNUHINSTANCE_s;

typedef struct NUCUTSCENEAUDIO_s NUCUTSCENEAUDIO_s, *PNUCUTSCENEAUDIO_s;

struct NUCUTSCENE_s { /* 0x1f13f */
    int * tids;
    int numtid;
    struct numtl_s * mtls;
    int nummtl;
    float length;
    char * string_table;
    struct NUCUTSCENECAMERA_s * cameras[10];
    struct NuAnimData_s * camera_anim;
    float * camera_change_times;
    uchar * camera_changes;
    int numgobj;
    struct nugobj_s * gobjs;
    int numinstance;
    struct nuinstance_s * instances;
    struct NuAnimData_s * instance_animdata;
    int numhgobj;
    struct NUHGOBJ_s * hgobj;
    int numhinstance;
    struct NUHINSTANCE_s * hinstances;
    struct NUCUTSCENEAUDIO_s * audio;
    float current_time;
    int flags;
    char audio_path[64];
    uchar num_camera_changes;
    uchar camera_change_ix;
    uchar camera_ix;
    uchar camera_anim_ix;
    uchar numaudio;
    uchar next_audioix;
    char pad[2];
};

struct NUHINSTANCE_s {
    struct numtx_s mtx;
    struct NUHGOBJ_s * hgobj;
    struct NuAnimData_s * animdata;
    struct NuAnimData_s * blendweightanimdata;
    char pad[4];
};

struct NUCUTSCENEAUDIO_s {
    float start_time;
    char * wav_time;
};

struct NUCUTSCENECAMERA_s {
    struct nucamera_s * camera;
};

typedef struct NuCutSceneCharacterCreateData NuCutSceneCharacterCreateData, *PNuCutSceneCharacterCreateData;

struct NuCutSceneCharacterCreateData {
    struct NUGCUTCHAR_s * field0_0x0;
    struct instNUGCUTCHAR_s * field1_0x4;
    union variptr_u * field2_0x8;
};

typedef struct nudathdr_s nudathdr_s, *Pnudathdr_s;

struct nudathdr_s {
    int ver;
    int nfiles;
    undefined field2_0x8;
    undefined field3_0x9;
    undefined field4_0xa;
    undefined field5_0xb;
    int treecnt;
    undefined field7_0x10;
    undefined field8_0x11;
    undefined field9_0x12;
    undefined field10_0x13;
    int leafnamesize;
    char * leafnames;
    int dfhandle;
    float fh;
    short intalloc;
    short openmode;
    int start_lsn;
    void * memdatptr;
};

typedef struct nufpar_s nufpar_s, *Pnufpar_s;

typedef struct nufpcomjmp_s nufpcomjmp_s, *Pnufpcomjmp_s;

struct nufpcomjmp_s {
    char * fname;
    void * func; /* struct */
};

struct nufpar_s {
    filehandle handle; /* fH */
    uchar buffer[4096]; /* fbuff */
    char textBuffer[256]; /* lbuff */
    char wordBuffer[260];
    int line_num;
    int linepos;
    int cpos;
    int buffstart;
    int buffend;
    struct nufpcomjmp_s * comstack[8];
    int compos;
    int size;
};

typedef struct nufparpos_s nufparpos_s, *Pnufparpos_s;

struct nufparpos_s {
    int line_num;
    int line_pos;
    int cpos;
    int buffstart;
    int buffend;
};

typedef struct NUGCUTLOCFNDATA_s NUGCUTLOCFNDATA_s, *PNUGCUTLOCFNDATA_s;

struct NUGCUTLOCFNDATA_s {
    char * name;
    struct locdataFN * void_fn;
};

typedef struct nugeomitem_s nugeomitem_s, *Pnugeomitem_s;

typedef struct nurndritem_s nurndritem_s, *Pnurndritem_s;

typedef enum nurndritemtype_s {
    NURNDRITEM_GEOM3D=0,
    NURNDRITEM_GEOM2D=1,
    NURNDRITEM_SKIN3D2=2,
    NURNDRITEM_GEOMFACE=3
} nurndritemtype_s;

struct nurndritem_s {
    struct nurndritem_s * next;
    enum nurndritemtype_s type;
    int flags;
    short lights_index;
    short field4_0xe;
};

struct nugeomitem_s {
    struct nurndritem_s hdr;
    struct numtx_s * mtx;
    struct nugeom_s * geom;
    float * * blendvals;
    short instancelights_index[3];
    short hShader;
};

typedef struct NUJOINTANIM_s NUJOINTANIM_s, *PNUJOINTANIM_s;

struct NUJOINTANIM_s {
    float rx;
    float ry;
    float rz;
    float tx;
    float ty;
    float tz;
    float sx;
    float sy;
    float sz;
    short max_rx;
    short max_ry;
    short max_rz;
    short min_rx;
    short min_ry;
    short min_rz;
    uchar joint_id;
    uchar flags;
    uchar pad[2];
};

typedef struct nulight_s nulight_s, *Pnulight_s;

struct nulight_s {
    struct nucolour3_s ambient;
    struct nucolour3_s diffuse;
    struct numtx_s mtx;
};

typedef struct nulights_s nulights_s, *Pnulights_s;

struct nulights_s {
    struct nulight_s light[3];
};

typedef struct nulnkhdr_s nulnkhdr_s, *Pnulnkhdr_s;

typedef struct nulsthdr_s nulsthdr_s, *Pnulsthdr_s;

struct nulsthdr_s {
    struct nulnkhdr_s * free;
    struct nulnkhdr_s * head;
    struct nulnkhdr_s * tail;
    short elcnt;
    short elsize;
};

struct nulnkhdr_s {
    struct nulsthdr_s * owner;
    struct nulnkhdr_s * succ;
    struct nulnkhdr_s * prev;
    ushort id;
    ushort used;
};

typedef struct nunrand_s nunrand_s, *Pnunrand_s;

struct nunrand_s {
    long idum;
};

typedef struct nuotitem_s nuotitem_s, *Pnuotitem_s;

typedef struct nusysmtl_s nusysmtl_s, *Pnusysmtl_s;

struct nusysmtl_s {
    struct numtl_s mtl;
    struct nurndritem_s * rndrlist;
    struct nugeomitem_s * geom2d;
    struct nugeomitem_s * geom3d;
    struct nusysmtl_s * next;
    struct nusysmtl_s * last;
    int hShader;
};

struct nuotitem_s {
    struct nuotitem_s * next;
    struct nurndritem_s * hdr;
    float dist;
    struct nusysmtl_s * mtl;
};

typedef struct nupad_s nupad_s, *Pnupad_s;

struct nupad_s {
    void * padhandle;
    struct _XINPUT_STATE xinputs;
    struct _XINPUT_STATE old_xinputs;
    struct _XINPUT_FEEDBACK feedback;
    int port;
    int slot;
    int stage;
    int id;
    int ldx;
    int ldy;
    int rdx;
    int rdy;
    float l_nx;
    float l_ny;
    float l_rx;
    float l_ry;
    float l_dx;
    float l_dy;
    float r_nx;
    float r_ny;
    float r_rx;
    float r_ry;
    float r_dx;
    float r_dy;
    uint paddata;
    uint old_paddata;
    uint paddata_db;
    int bit_;
    uint padvalue;
    uchar ok;
    uchar read_id;
    uchar buttons_hi;
    uchar buttons_lo;
    uchar r_alg_x;
    uchar r_alg_y;
    uchar l_alg_x;
    uchar l_alg_y;
    uchar l_algpad_r;
    uchar l_algpad_l;
    uchar l_algpad_u;
    uchar l_algpad_d;
    uchar r_algpad_u;
    uchar r_algpad_r;
    uchar r_algpad_d;
    uchar r_algpad_l;
    uchar l1_alg;
    uchar r1_alg;
    uchar l2_alg;
    uchar r2_alg;
};

typedef struct nureflect_s nureflect_s, *Pnureflect_s;

struct nureflect_s {
    float distortion;
    struct numtx_s mtx;
    struct numtx_s uvmtx;
};

typedef struct nuscene_s nuscene_s, *Pnuscene_s;

struct nuscene_s { /* Nus */
    int nnodes;
    char * names;
    void * nodes; /* 1b980 */
    char * strings;
    int numtids; /* tex_count? */
    short * tids;
    int nummtls;
    struct numtl_s * mtls;
    int numgobjs;
    struct nugobj_s * * gobjs;
    int numsplines;
    void * splines; /* 1b5c4 */
    struct nuvec_s * spline_cvs;
    void * root_node; /* 1b980 */
    struct nugscn_s * gscene;
};

typedef enum nustencilmode_e {
    NUSTENCIL_NOSTENCIL=0,
    NUSTENCIL_REPLACE_NODRAW=1
} nustencilmode_e;

typedef struct nustenitem_s nustenitem_s, *Pnustenitem_s;

struct nustenitem_s {
    struct nustenitem_s * next;
    struct nurndritem_s * hdr;
    struct nusysmtl_s * mtl;
    int type;
};

typedef struct nusyslight_s nusyslight_s, *Pnusyslight_s;

struct nusyslight_s {
    struct nulight_s light;
    int index;
    int next;
    int last;
};

typedef struct nusystex_s nusystex_s, *Pnusystex_s;

typedef struct nutex_s nutex_s, *Pnutex_s;

typedef enum nutextype_e {
    NUTEX_RGB16=0,
    NUTEX_RGBA16=1,
    NUTEX_RGB24=2,
    NUTEX_RGBA32=3,
    NUTEX_PAL4=4,
    NUTEX_PAL8=5,
    NUTEX_PAL4_S=6,
    NUTEX_PAL8_S=7,
    NUTEX_DXT1=8,
    NUTEX_DXT2=9,
    NUTEX_DXT3=10,
    NUTEX_DXT4=11,
    NUTEX_DXT5=12,
    NUTEX_BB=13,
    NUTEX_RT8=14,
    NUTEX_RTT8=15,
    NUTEX_RT8H=16,
    NUTEX_RT32=17,
    NUTEX_RT24=18,
    NUTEX_RT16=19,
    NUTEX_RTT32=20,
    NUTEX_RTT24=21,
    NUTEX_RTT16=22,
    NUTEX_RZT32=23,
    NUTEX_RZT24=24,
    NUTEX_RZT16=25,
    NUTEX_NUMTEXTURETYPES=26
} nutextype_e;

struct nutex_s {
    enum nutextype_e type;
    int width;
    int height;
    int mmcnt;
    void * bits;
    int * pal;
    short decal;
    short linear;
};

struct nusystex_s {
    struct nutex_s tex;
    struct D3DTexture * dds;
    int ref;
    int rtid;
};

typedef struct nutexanimlist_s nutexanimlist_s, *Pnutexanimlist_s;

struct nutexanimlist_s {
    struct nutexanim_s * nta;
    struct nutexanimlist_s * succ;
    struct nutexanimlist_s * prev;
};

typedef struct NUTRIGGERSYS_s NUTRIGGERSYS_s, *PNUTRIGGERSYS_s;

struct NUTRIGGERSYS_s {
    int ntriggers;
    struct NUGCUTTRIGGER_s triggers;
};

typedef struct nuviewport_s nuviewport_s, *Pnuviewport_s;

struct nuviewport_s {
    uint x;
    uint y;
    uint width;
    uint height;
    float zmin;
    float zmax;
    float centre_x;
    float centre_y;
    float clipmin_x;
    float clipmin_y;
    float clipmax_x;
    float clipmax_y;
    float clip_w;
    float clip_h;
    float scis_w;
    float scis_h;
};

typedef struct nuvtx_sk3tc1_s nuvtx_sk3tc1_s, *Pnuvtx_sk3tc1_s;

struct nuvtx_sk3tc1_s {
    struct nuvec_s pnt;
    float weights[2];
    float indexes[3];
    struct nuvec_s nrm;
    int diffuse;
    float tc[2];
};

typedef struct nuvtx_tc1_s nuvtx_tc1_s, *Pnuvtx_tc1_s;

struct nuvtx_tc1_s {
    struct nuvec_s pnt;
    struct nuvec_s nrm;
    int diffuse;
    float tc[2];
};

typedef struct nuwateritem_s nuwateritem_s, *Pnuwateritem_s;

struct nuwateritem_s {
    struct nuwateritem_s * next;
    struct nurndritem_s * hdr;
    struct nusysmtl_s * mtl;
};

typedef struct ObjTab ObjTab, *PObjTab;

struct ObjTab {
    struct nuhspecial_s obj;
    struct nugscn_s * * scene;
    char visible;
    char font3d_letter;
    char pad1;
    char pad2;
    char * name;
    char unk[4];
    ulonglong levbits; /* unk_type */
};

typedef struct PADStatus PADStatus, *PPADStatus;

struct PADStatus {
    uint button;
    short stickX;
    short stickY;
    short substickX;
    short substickY;
    uint triggerLeft;
    uint triggerRight;
    uint analogA;
    uint analogB;
    short err;
};

typedef struct PData PData, *PPData;

struct PData {
    uchar character;
    uchar font3d_letter;
    char pad1;
    char pad2;
    char * name;
    int * description;
};

typedef struct PlrEvent PlrEvent, *PPlrEvent;

struct PlrEvent {
    struct nugspline_s * spl;
    struct nuhspecial_s obj[16];
    struct nuvec_s pos;
    char played;
    char iRAIL;
    short iALONG;
    float fALONG;
};

typedef struct primdef_s primdef_s, *Pprimdef_s;

struct primdef_s {
    struct nuvtx_tc1_s vrts[3];
    int vid[3];
    float weights[15][3];
    int mtxid[15];
    int nummtx;
    int sorted;
    int baseid;
};

typedef struct pVTog pVTog, *PpVTog;

struct pVTog {
    struct nugspline_s * pTRIGGER;
    struct nugspline_s * pCAM;
    struct nugspline_s * pLOOK;
    struct numtx_s m;
    struct nuvec_s pos;
    struct anim_s anim;
    char type;
    char iRAIL;
    short iALONG;
    float fALONG;
    ushort xrot;
    ushort yrot;
    ushort zrot;
    char pad1;
    char pad2;
};

typedef struct Quat Quat, *PQuat;

struct Quat {
    struct nuvec_s v;
    float w;
};

typedef struct Rail Rail, *PRail;

struct Rail {
    struct nugspline_s * pINPLAT;
    struct nugspline_s * pINCAM;
    struct nugspline_s * pLEFT;
    struct nugspline_s * pCAM;
    struct nugspline_s * pRIGHT;
    struct nugspline_s * pOUTCAM;
    struct nugspline_s * pOUTPLAT;
    float in_distance;
    float out_distance;
    short edges;
    char type;
    char circuit;
};

typedef struct rendertargetlist_s rendertargetlist_s, *Prendertargetlist_s;

struct rendertargetlist_s {
    int next;
    int last;
    uint width;
    uint height;
    struct D3DSurface * pddsRenderTarget;
    struct D3DSurface * pddsZBuffer;
    struct D3DSurface * pddsStencilBuffer;
};

typedef struct s_CrateGroup s_CrateGroup, *Ps_CrateGroup;

struct s_CrateGroup {
    undefined field0_0x0;
    undefined field1_0x1;
    undefined field2_0x2;
    undefined field3_0x3;
    undefined field4_0x4;
    undefined field5_0x5;
    undefined field6_0x6;
    undefined field7_0x7;
    undefined field8_0x8;
    undefined field9_0x9;
    undefined field10_0xa;
    undefined field11_0xb;
    undefined field12_0xc;
    undefined field13_0xd;
    undefined field14_0xe;
    undefined field15_0xf;
    short field16_0x10;
    short field17_0x12;
    ushort tilt;
    undefined field19_0x16;
    undefined field20_0x17;
    undefined field21_0x18;
    undefined field22_0x19;
    undefined field23_0x1a;
    undefined field24_0x1b;
    undefined field25_0x1c;
    undefined field26_0x1d;
    undefined field27_0x1e;
    undefined field28_0x1f;
    undefined field29_0x20;
    undefined field30_0x21;
    undefined field31_0x22;
    undefined field32_0x23;
    undefined field33_0x24;
    undefined field34_0x25;
    undefined field35_0x26;
    undefined field36_0x27;
    undefined field37_0x28;
    undefined field38_0x29;
    undefined field39_0x2a;
    undefined field40_0x2b;
    undefined field41_0x2c;
    undefined field42_0x2d;
    undefined field43_0x2e;
    undefined field44_0x2f;
    undefined field45_0x30;
    undefined field46_0x31;
    undefined field47_0x32;
    undefined field48_0x33;
    undefined field49_0x34;
    undefined field50_0x35;
    undefined field51_0x36;
    undefined field52_0x37;
    undefined field53_0x38;
    undefined field54_0x39;
    undefined field55_0x3a;
    undefined field56_0x3b;
    undefined field57_0x3c;
    undefined field58_0x3d;
    undefined field59_0x3e;
    undefined field60_0x3f;
    undefined field61_0x40;
    undefined field62_0x41;
    undefined field63_0x42;
    undefined field64_0x43;
    undefined field65_0x44;
    undefined field66_0x45;
    undefined field67_0x46;
    undefined field68_0x47;
    undefined field69_0x48;
    undefined field70_0x49;
    undefined field71_0x4a;
    undefined field72_0x4b;
    undefined field73_0x4c;
    undefined field74_0x4d;
    undefined field75_0x4e;
    undefined field76_0x4f;
    undefined field77_0x50;
    undefined field78_0x51;
    undefined field79_0x52;
    undefined field80_0x53;
    undefined field81_0x54;
    undefined field82_0x55;
    undefined field83_0x56;
    undefined field84_0x57;
    undefined field85_0x58;
    undefined field86_0x59;
    undefined field87_0x5a;
    undefined field88_0x5b;
    undefined field89_0x5c;
    undefined field90_0x5d;
    undefined field91_0x5e;
    undefined field92_0x5f;
};

typedef struct scene_inst_s scene_inst_s, *Pscene_inst_s;

struct scene_inst_s {
    char * name;
    struct nugscn_s * scene;
};

typedef struct sceneinst_s sceneinst_s, *Psceneinst_s;

struct sceneinst_s {
    struct nuscene_s * nus;
    char name[256];
    int inst_cnt;
};

typedef struct space space, *Pspace;

struct space {
    int character;
    char unk[4];
    struct AnimList animlist[5];
};

typedef struct SplTab SplTab, *PSplTab;

struct SplTab {
    struct nugspline_s * spl;
    char * name;
    short min;
    short max;
    char unk[4];
    ulonglong levbits; /* unk_type */
};

typedef struct SwimmingMoveInfo SwimmingMoveInfo, *PSwimmingMoveInfo;

struct SwimmingMoveInfo {
    float IDLESPEED;
    float TIPTOESPEED;
    float WALKSPEED;
    float RUNSPEED;
    float SPRINTSPEED;
    float SLIDESPEED;
    float CRAWLSPEED;
    float DANGLESPEED;
    float WADESPEED;
    float JUMPHEIGHT;
    float DANGLEGAP;
    short JUMPFRAMES0;
    short JUMPFRAMES1;
    short JUMPFRAMES2;
    short STARJUMPFRAMES;
    short SOMERSAULTFRAMES;
    short SPINFRAMES;
    short SPINRESETFRAMES;
    short SUPERSPINFRAMES;
    short SUPERSPINWAITFRAMES;
    short SLAMWAITFRAMES;
    short SLIDEFRAMES;
    short CROUCHINGFRAMES;
    short JUMPLANDFRAMES;
    short spad;
};

typedef struct tagRECT tagRECT, *PtagRECT;

struct tagRECT {
    int left;
    int top;
    int right;
    int bottom;
};

typedef struct UNK2 UNK2, *PUNK2;

struct UNK2 { /* mtlgetbuffer2d */
    uint UNK_WORD_0;
    uint UNK_WORD_4;
    uint UNK_WORD_8;
    uint UNK_WORD_C;
    char __padding_10[20];
};

typedef struct visidata_s visidata_s, *Pvisidata_s;

struct visidata_s {
    struct nugscn_s * sc;
    void * * * vspline; /* unk_type */
    int binfosize;
    int curspline;
    int curknot;
};

typedef struct D3DDevice D3DDevice, *PD3DDevice;

struct D3DDevice { /* PlaceHolder Structure */
};

typedef struct HWND__ HWND__, *PHWND__;

struct HWND__ { /* PlaceHolder Structure */
};

typedef struct Elf32_Ehdr Elf32_Ehdr, *PElf32_Ehdr;

struct Elf32_Ehdr {
    byte e_ident_magic_num;
    char e_ident_magic_str[3];
    byte e_ident_class;
    byte e_ident_data;
    byte e_ident_version;
    byte e_ident_osabi;
    byte e_ident_abiversion;
    byte e_ident_pad[7];
    word e_type;
    word e_machine;
    dword e_version;
    dword e_entry;
    dword e_phoff;
    dword e_shoff;
    dword e_flags;
    word e_ehsize;
    word e_phentsize;
    word e_phnum;
    word e_shentsize;
    word e_shnum;
    word e_shstrndx;
};

typedef struct Elf32_Phdr Elf32_Phdr, *PElf32_Phdr;

typedef enum Elf_ProgramHeaderType_PPC {
    PT_NULL=0,
    PT_LOAD=1,
    PT_DYNAMIC=2,
    PT_INTERP=3,
    PT_NOTE=4,
    PT_SHLIB=5,
    PT_PHDR=6,
    PT_TLS=7,
    PT_GNU_EH_FRAME=1685382480,
    PT_GNU_STACK=1685382481,
    PT_GNU_RELRO=1685382482
} Elf_ProgramHeaderType_PPC;

struct Elf32_Phdr {
    enum Elf_ProgramHeaderType_PPC p_type;
    dword p_offset;
    dword p_vaddr;
    dword p_paddr;
    dword p_filesz;
    dword p_memsz;
    dword p_flags;
    dword p_align;
};

typedef struct Elf32_Shdr Elf32_Shdr, *PElf32_Shdr;

typedef enum Elf_SectionHeaderType_PPC {
    SHT_NULL=0,
    SHT_PROGBITS=1,
    SHT_SYMTAB=2,
    SHT_STRTAB=3,
    SHT_RELA=4,
    SHT_HASH=5,
    SHT_DYNAMIC=6,
    SHT_NOTE=7,
    SHT_NOBITS=8,
    SHT_REL=9,
    SHT_SHLIB=10,
    SHT_DYNSYM=11,
    SHT_INIT_ARRAY=14,
    SHT_FINI_ARRAY=15,
    SHT_PREINIT_ARRAY=16,
    SHT_GROUP=17,
    SHT_SYMTAB_SHNDX=18,
    SHT_ANDROID_REL=1610612737,
    SHT_ANDROID_RELA=1610612738,
    SHT_GNU_ATTRIBUTES=1879048181,
    SHT_GNU_HASH=1879048182,
    SHT_GNU_LIBLIST=1879048183,
    SHT_CHECKSUM=1879048184,
    SHT_SUNW_move=1879048186,
    SHT_SUNW_COMDAT=1879048187,
    SHT_SUNW_syminfo=1879048188,
    SHT_GNU_verdef=1879048189,
    SHT_GNU_verneed=1879048190,
    SHT_GNU_versym=1879048191
} Elf_SectionHeaderType_PPC;

struct Elf32_Shdr {
    dword sh_name;
    enum Elf_SectionHeaderType_PPC sh_type;
    dword sh_flags;
    dword sh_addr;
    dword sh_offset;
    dword sh_size;
    dword sh_link;
    dword sh_info;
    dword sh_addralign;
    dword sh_entsize;
};

typedef struct Elf32_Sym Elf32_Sym, *PElf32_Sym;

struct Elf32_Sym {
    dword st_name;
    dword st_value;
    dword st_size;
    byte st_info;
    byte st_other;
    word st_shndx;
};

typedef void _IO_lock_t;

typedef struct _IO_marker _IO_marker, *P_IO_marker;

typedef struct _IO_FILE _IO_FILE, *P_IO_FILE;

typedef long __off_t;

typedef longlong __quad_t;

typedef __quad_t __off64_t;

typedef ulong size_t;

struct _IO_marker {
    struct _IO_marker * _next;
    struct _IO_FILE * _sbuf;
    int _pos;
};

struct _IO_FILE {
    int _flags;
    char * _IO_read_ptr;
    char * _IO_read_end;
    char * _IO_read_base;
    char * _IO_write_base;
    char * _IO_write_ptr;
    char * _IO_write_end;
    char * _IO_buf_base;
    char * _IO_buf_end;
    char * _IO_save_base;
    char * _IO_backup_base;
    char * _IO_save_end;
    struct _IO_marker * _markers;
    struct _IO_FILE * _chain;
    int _fileno;
    int _flags2;
    __off_t _old_offset;
    ushort _cur_column;
    char _vtable_offset;
    char _shortbuf[1];
    _IO_lock_t * _lock;
    __off64_t _offset;
    void * __pad1;
    void * __pad2;
    void * __pad3;
    void * __pad4;
    size_t __pad5;
    int _mode;
    char _unused2[56];
};

typedef struct lconv lconv, *Plconv;

struct lconv {
    char * decimal_point;
    char * thousands_sep;
    char * grouping;
    char * int_curr_symbol;
    char * currency_symbol;
    char * mon_decimal_point;
    char * mon_thousands_sep;
    char * mon_grouping;
    char * positive_sign;
    char * negative_sign;
    char int_frac_digits;
    char frac_digits;
    char p_cs_precedes;
    char p_sep_by_space;
    char n_cs_precedes;
    char n_sep_by_space;
    char p_sign_posn;
    char n_sign_posn;
    char int_p_cs_precedes;
    char int_p_sep_by_space;
    char int_n_cs_precedes;
    char int_n_sep_by_space;
    char int_p_sign_posn;
    char int_n_sign_posn;
};

typedef void * __gnuc_va_list;

typedef int intptr_t;

typedef ulonglong uint64_t;

typedef uchar uint_fast8_t;

typedef struct _IO_FILE FILE;

typedef struct new new, *Pnew;

struct new {
};

typedef struct nufaceonitem_s nufaceonitem_s, *Pnufaceonitem_s;

struct nufaceonitem_s {
    struct nufaceonitem_s * next;
    struct nurndritem_s * hdr;
    struct nusysmtl_s * mtl;
};

typedef struct txanimscripts txanimscripts, *Ptxanimscripts;

struct txanimscripts {
    char * path;
    int pad1;
    ulonglong levbits;
};

typedef int __ssize_t;

typedef short int16_t;

typedef longlong int64_t;

typedef char int8_t;

typedef __ssize_t ssize_t;

typedef void * ARCallback;

typedef struct bootInfo bootInfo, *PbootInfo;

struct bootInfo { /* DVDInit */
    uint x0[8];
    uint boot_magic;
};

typedef struct DiskInfo DiskInfo, *PDiskInfo;

struct DiskInfo {
    struct DVDDiskID diskID;
    uint8_t filler20[32];
    void * FSTLocationInRam;
    uint FSTMaxLength;
};

typedef struct DVDQueue_sub DVDQueue_sub, *PDVDQueue_sub;

struct DVDQueue_sub {
    struct DVDQueue_sub * unk0;
    struct DVDQueue_sub * unk4;
};

typedef struct GS_FrameBufferCopy GS_FrameBufferCopy, *PGS_FrameBufferCopy;

struct GS_FrameBufferCopy {
    struct _GXTexObj tobj;
    uchar * data;
    int top;
    int left;
    int width;
    int height;
};

typedef enum GXAnisotropy {
    GX_ANISO_1=0,
    GX_ANISO_2=1,
    GX_ANISO_4=2,
    GX_MAX_ANISOTROPY=3
} GXAnisotropy;

typedef uint8_t GXBool;

typedef enum GXSpotFn {
    GX_SP_OFF=0,
    GX_SP_FLAT=1,
    GX_SP_COS=2,
    GX_SP_COS2=3,
    GX_SP_SHARP=4,
    GX_SP_RING1=5,
    GX_SP_RING2=6
} GXSpotFn;

typedef enum GXTexCacheSize {
    GX_TEXCACHE_32K=1,
    GX_TEXCACHE_128K=2,
    GX_TEXCACHE_512K=3,
    GX_TEXCACHE_NONE=4
} GXTexCacheSize;

typedef enum GXTexFilter {
    GX_NEAR=0,
    GX_LINEAR=1,
    GX_NEAR_MIP_NEAR=2,
    GX_LIN_MIP_NEAR=3,
    GX_NEAR_MIP_LIN=4,
    GX_LIN_MIP_LIN=5
} GXTexFilter;

typedef enum GXTexFmt {
    GX_TF_I4=0,
    GX_TF_I8=1,
    GX_TF_A8=2,
    GX_TF_IA4=3,
    GX_TF_IA8=4,
    GX_TF_RGB565=5,
    GX_TF_RGB5A3=6,
    GX_TF_RGBA8=7,
    GX_TF_CMPR=8,
    GX_TF_Z8=9,
    GX_TF_Z16=10,
    GX_TF_Z24X8=11,
    GX_CTF_R4=12,
    GX_CTF_RA4=13,
    GX_CTF_RA8=14,
    GX_CTF_A8=15,
    GX_CTF_R8=16,
    GX_CTF_G8=17,
    GX_CTF_B8=18,
    GX_CTF_RG8=19,
    GX_CTF_GB8=20,
    GX_CTF_Z4=21,
    GX_CTF_Z8M=22,
    GX_CTF_Z8L=23,
    GX_CTF_Z16L=24
} GXTexFmt;

typedef enum GXTexWrapMode {
    GX_CLAMP=0,
    GX_REPEAT=1,
    GX_MIRROR=2,
    GX_MAX_TEXWRAPMODE=3
} GXTexWrapMode;

typedef enum GXTlutSize {
    GX_TLUT_16=0,
    GX_TLUT_32=1,
    GX_TLUT_64=2,
    GX_TLUT_128=3,
    GX_TLUT_256=4,
    GX_TLUT_512=5,
    GX_TLUT_1K=6,
    GX_TLUT_2K=7,
    GX_TLUT_4K=8,
    GX_TLUT_8K=9,
    GX_TLUT_16K=10
} GXTlutSize;

typedef unsigned short    wchar16;
