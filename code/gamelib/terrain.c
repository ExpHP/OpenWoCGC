#include "../nu.h"





int ReadTerrain(uchar *name2,int situ,short **store,TempTerr *Tempterr)

{
  int size;
  sceneptr *scnptr;
  int i;
  int c;
  int count;
  char LevName [108];
  WallSpl *wallspl;
  float x;
  float x2;
  float z;
  float z2;
  int c2;
  int k;
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
    for (c = 0; c < scnptr->count; c = c + 1) {
      type = scnptr->offlist[c].type;
      if (type < 2) {
        if (-1 < type) {
          Tempterr->terr[i].id = scnptr->offlist[c].id;
          Tempterr->terr[i].type = (int)scnptr->offlist[c].type;
          Tempterr->terr[i].info = scnptr->offlist[c].info;
          Tempterr->terr[i].Location.x = scnptr->offlist[c].translation.x;
          Tempterr->terr[i].Location.y = scnptr->offlist[c].translation.y;
          Tempterr->terr[i].Location.z = scnptr->offlist[c].translation.z;
          Tempterr->terr[i].model = *store;
          Tempterr->terr[i].flags.rot = scnptr->offlist[c].flags.rot;
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
      *store = *store + scnptr->offlist[c].offset;
    }
    for (wallspl = (WallSpl *)Tempterr->wallinfo; wallspl != (WallSpl *)0x0;
        wallspl = (WallSpl *)wallspl[-1].spl[0xfff].z) {
      for (c2 = 0; c2 < (int)(uint)wallspl->count; c2 = c2 + 0x10) {
        if (wallspl->spl[c2].y != 2.147484e+09) {
          if (c2 + 0xf < (int)(uint)wallspl->count) {
            x = wallspl->spl[c2].x;
            z = wallspl->spl[c2].z;
            x2 = x;
            z2 = z;
            size = c2;
            while (cnt = size, k = cnt + 1, k <= c2 + 0x10) {
              if (wallspl->spl[cnt + 1].x < x) {
                x = wallspl->spl[cnt + 1].x;
              }
              if (x2 < wallspl->spl[cnt + 1].x) {
                x2 = wallspl->spl[cnt + 1].x;
              }
              if (wallspl->spl[cnt + 1].z < z) {
                z = wallspl->spl[cnt + 1].z;
              }
              size = k;
              if (z2 < wallspl->spl[cnt + 1].z) {
                z2 = wallspl->spl[cnt + 1].z;
                size = k;
              }
            }
            wallspl->spl[c2].y = x;
            wallspl->spl[c2 + 1].y = x2;
            wallspl->spl[c2 + 2].y = z;
            wallspl->spl[c2 + 3].y = z2;
          }
          else {
            wallspl->spl[c2].y = 2.147484e+09;
          }
        }
      }
    }
  }
  return count;
}