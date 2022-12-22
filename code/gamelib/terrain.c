#include "../nu.h"





int ReadTerrain(uchar *name2,int situ,short **store,TempTerr *Tempterr)

{
  int size;
  sceneptr *scnptr;
  int i;
  int local_a4;
  int count;
  char LevName [108];
  WallSpl *wallspl;
  float x;
  float x2;
  float z;
  float z2;
  int local_18;
  int local_14;
  int cnt;
  short type;
  
  strcpy(LevName,(char *)name2);
  strcat(LevName,".ter");
  size = NuFileLoadBuffer(LevName,*store,0x7fffffff);
  if (size == 0) {
    count = -1;
  }
  else {
    scnptr = (sceneptr *)((int)*store + *(int *)*store * 2);
    scnptr->count = scnptr->count & 0xffff;
    *store = *store + 2;
    count = 0;
    Tempterr->wallinfo = (void *)0x0;
    crashdata = (void *)0x0;
    i = situ;
    for (local_a4 = 0; local_a4 < scnptr->count; local_a4 = local_a4 + 1) {
      type = scnptr->offlist[local_a4].type;
      if (type < 2) {
        if (-1 < type) {
          Tempterr->terr[i].id = scnptr->offlist[local_a4].id;
          Tempterr->terr[i].type = (int)scnptr->offlist[local_a4].type;
          Tempterr->terr[i].info = scnptr->offlist[local_a4].info;
          Tempterr->terr[i].Location.x = scnptr->offlist[local_a4].translation.x;
          Tempterr->terr[i].Location.y = scnptr->offlist[local_a4].translation.y;
          Tempterr->terr[i].Location.z = scnptr->offlist[local_a4].translation.z;
          Tempterr->terr[i].model = *store;
          Tempterr->terr[i].flags.rot = scnptr->offlist[local_a4].flags.rot;
          count = count + 1;
          i = i + 1;
        }
      }
      else if (type == 2) {
        if (*(int *)*store == 0x12345678) {
          *(void **)*store = Tempterr->wallinfo;
          Tempterr->wallinfo = *store + 2;
                    /* WARNING: Load size is inaccurate */
          *(short *)Tempterr->wallinfo = *Tempterr->wallinfo + -1;
        }
      }
      else if (type == 3) {
        crashdata = *store;
      }
      *store = *store + scnptr->offlist[local_a4].offset;
    }
    for (wallspl = (WallSpl *)Tempterr->wallinfo; wallspl != (WallSpl *)0x0;
        wallspl = (WallSpl *)wallspl[-1].spl[0xfff].z) {
      for (local_18 = 0; local_18 < (int)(uint)wallspl->count; local_18 = local_18 + 0x10) {
        if (wallspl->spl[local_18].y != 2.147484e+09) {
          if (local_18 + 0xf < (int)(uint)wallspl->count) {
            x = wallspl->spl[local_18].x;
            z = wallspl->spl[local_18].z;
            x2 = x;
            z2 = z;
            size = local_18;
            while (cnt = size, local_14 = cnt + 1, local_14 <= local_18 + 0x10) {
              if (wallspl->spl[cnt + 1].x < x) {
                x = wallspl->spl[cnt + 1].x;
              }
              if (x2 < wallspl->spl[cnt + 1].x) {
                x2 = wallspl->spl[cnt + 1].x;
              }
              if (wallspl->spl[cnt + 1].z < z) {
                z = wallspl->spl[cnt + 1].z;
              }
              size = local_14;
              if (z2 < wallspl->spl[cnt + 1].z) {
                z2 = wallspl->spl[cnt + 1].z;
                size = local_14;
              }
            }
            wallspl->spl[local_18].y = x;
            wallspl->spl[local_18 + 1].y = x2;
            wallspl->spl[local_18 + 2].y = z;
            wallspl->spl[local_18 + 3].y = z2;
          }
          else {
            wallspl->spl[local_18].y = 2.147484e+09;
          }
        }
      }
    }
  }
  return count;
}