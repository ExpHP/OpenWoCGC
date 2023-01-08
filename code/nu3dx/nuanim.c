#include "nuanim.h"
#include "../system.h"

struct nuanimdata_s* NuAnimDataLoadBuff(s8* file, struct variptr_u* buff, struct variptr_u* endbuff) {
    s32 temp_r0;
    s32 temp_r3_2;
    s32 mem;
    struct nuanimdata_s* data;
    void* temp_r30;

    mem = (s32) (buff->voidptr + 0xF) & 0xFFFFFFF0;
    buff->voidptr = (void* ) mem;
    temp_r3_2 = NuFileLoadBuffer(file, (void* ) mem, endbuff->voidptr - mem);
    if (temp_r3_2 == 0) {
        //NuErrorProlog("C:/source/crashwoc/code/nu3dx/nuanim.c", 0xB6E)
        //(""Could not read from <%s>, either file is not there or the buffer may be full"", file);
    }
    temp_r30 = buff->voidptr;
    buff->voidptr = temp_r30 + temp_r3_2;
    temp_r0 = temp_r30 - temp_r30->unk4;
    temp_r30->unk4 = temp_r0;
    data = NuAnimDataFixPtrs(temp_r30->unk8, temp_r0);
    temp_r30->unk8 = data;
    return data;
}

struct nuanimdata_s* NuAnimDataFixPtrs(struct nuanimdata_s* animdata, s32 address_offset) {
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r0_5;
    s32 temp_r0_6;
    s32 temp_r0_7;
    s32 temp_r0_8;
    s32 temp_r11;
    s32 temp_r11_2;
    s32 temp_r9_3;
    s32 temp_r9_4;
    s32 var_r10;
    s32 var_r10_2;
    s32 var_r11_2;
    s32 var_r11_3;
    s32 var_r11_4;
    s32 var_r7;
    s32 var_r8;
    s32 var_r8_2;
    s32 var_r8_3;
    s32 var_r9;
    s32 var_r9_2;
    s8* temp_r0;
    s8* var_r11;
    struct nuanimdata_s* var_r3;
    struct nuanimdatachunk_s** temp_r9;
    struct nuanimdatachunk_s** temp_r9_2;
    struct nuanimdatachunk_s** var_r0;
    void* temp_r10;
    void* temp_r6;
    void* temp_r9_5;

    if ((s32) isBitCountTable == 0) {
        buildBitCountTable();
    }
    var_r3 = NULL;
    if (animdata != NULL) {
        var_r3 = animdata + address_offset;
    }
    temp_r0 = var_r3->node_name;
    var_r11 = NULL;
    if (temp_r0 != NULL) {
        var_r11 = temp_r0 + address_offset;
    }
    temp_r9 = var_r3->chunks;
    var_r0 = NULL;
    var_r3->node_name = var_r11;
    if (temp_r9 != NULL) {
        var_r0 = temp_r9 + address_offset;
    }
    var_r3->chunks = var_r0;
    if (var_r0 != NULL) {
        var_r10 = 0;
        if ((s32) var_r3->nchunks > 0) {
            do {
                temp_r9_2 = var_r3->chunks;
                temp_r11 = var_r10 * 4;
                var_r8 = 0;
                temp_r0_2 = *(temp_r11 + temp_r9_2);
                if (temp_r0_2 != 0) {
                    var_r8 = temp_r0_2 + address_offset;
                }
                *(temp_r11 + temp_r9_2) = var_r8;
                temp_r6 = *(temp_r11 + var_r3->chunks);
                if (temp_r6 != NULL) {
                    temp_r0_3 = temp_r6->unk8;
                    var_r9 = 0;
                    if (temp_r0_3 != 0) {
                        var_r9 = temp_r0_3 + address_offset;
                    }
                    temp_r6->unk8 = var_r9;
                    if (var_r9 != 0) {
                        var_r8_2 = 0;
                        if ((s32) temp_r6->unk0 > 0) {
                            do {
                                temp_r9_3 = temp_r6->unk8;
                                temp_r11_2 = var_r8_2 * 4;
                                var_r10_2 = 0;
                                temp_r0_4 = *(temp_r11_2 + temp_r9_3);
                                if (temp_r0_4 != 0) {
                                    var_r10_2 = temp_r0_4 + address_offset;
                                }
                                *(temp_r11_2 + temp_r9_3) = var_r10_2;
                                temp_r10 = *(temp_r11_2 + temp_r6->unk8);
                                if (temp_r10 != NULL) {
                                    temp_r0_5 = temp_r10->unk4;
                                    var_r11_2 = 0;
                                    if (temp_r0_5 != 0) {
                                        var_r11_2 = temp_r0_5 + address_offset;
                                    }
                                    temp_r0_6 = temp_r10->unk8;
                                    var_r9_2 = 0;
                                    temp_r10->unk4 = var_r11_2;
                                    if (temp_r0_6 != 0) {
                                        var_r9_2 = temp_r0_6 + address_offset;
                                    }
                                    temp_r10->unk8 = var_r9_2;
                                    if (var_r9_2 != 0) {
                                        var_r7 = 0;
                                        if ((s8) temp_r10->unkC > 0) {
                                            var_r8_3 = 0;
                                            do {
                                                temp_r9_4 = temp_r10->unk8;
                                                var_r11_3 = 0;
                                                temp_r0_7 = *(var_r8_3 + temp_r9_4);
                                                if (temp_r0_7 != 0) {
                                                    var_r11_3 = temp_r0_7 + address_offset;
                                                }
                                                *(var_r8_3 + temp_r9_4) = var_r11_3;
                                                temp_r9_5 = *(var_r8_3 + temp_r10->unk8);
                                                if (temp_r9_5 != NULL) {
                                                    temp_r0_8 = temp_r9_5->unk4;
                                                    var_r11_4 = 0;
                                                    if (temp_r0_8 != 0) {
                                                        var_r11_4 = temp_r0_8 + address_offset;
                                                    }
                                                    temp_r9_5->unk4 = var_r11_4;
                                                }
                                                var_r7 += 1;
                                                var_r8_3 += 4;
                                            } while (var_r7 < (s8) temp_r10->unkC);
                                        }
                                    }
                                }
                                var_r8_2 += 1;
                            } while (var_r8_2 < (s32) temp_r6->unk0);
                        }
                    }
                }
                var_r10 += 1;
            } while (var_r10 < (s32) var_r3->nchunks);
        }
    }
    return var_r3;
}



nuAnimData_s * NuAnimDataRead(filehandle handle)		//WIP

{
  int nChunks;
  char *data;
  nuAnimData_s *ADat;
  nuanimdatachunk_s *chunk;
  nuanimkey_s *keys;
  nuanimcurve_s *curves;
  char nCurves;
  nuanimcurveset_s *crvset;
  int flags;
  nuanimcurveset_s **ptrCset;
  int j;
  int N;
  int i;
  int k;
  double time;
  float fVar1;
  uint *nKeys;
  
  if (isBitCountTable == 0) {
    buildBitCountTable();
  }
  nChunks = NuFileReadInt(handle);
  if (nChunks == 0) {
    data = (char *)0x0;
  }
  else {
    data = (char *)NuMemAlloc(nChunks);
    NuFileRead(handle,data,nChunks);
  }
  i = 0;
  fVar1 = NuFileReadFloat(handle);
  time = (double)fVar1;
  nChunks = NuFileReadInt(handle);
  ADat = NuAnimDataCreate(nChunks);
  ADat->time = (float)time;
  ADat->node_name = data;
  if (0 < ADat->nchunks) {
    do {
      nChunks = NuFileReadInt(handle);
      chunk = NuAnimDataChunkCreate(nChunks);
      ADat->chunks[i] = chunk;
      chunk->numnodes = nChunks;
      N = NuFileReadInt(handle);
      if (N == 0) {
        chunk->keys = (nuanimkey_s *)0x0;
      }
      else {
        keys = (nuanimkey_s *)NuMemAlloc(N << 4);
        chunk->keys = keys;
        NuFileRead(handle,keys,N << 4);
      }
      keys = chunk->keys;
      N = NuFileReadInt(handle);
      if (N == 0) {
        chunk->curves = (nuanimcurve_s *)0x0;
      }
      else {
        curves = (nuanimcurve_s *)NuMemAlloc(N << 4);
        chunk->curves = curves;
        NuFileRead(handle,curves,N << 4);
      }
      i = i + 1;
      N = 0;
      if (0 < nChunks) {
        do {
          j = N + 1;
          nCurves = NuFileReadChar(handle);
          if (nCurves != 0) {
            crvset = NuAnimCurveSetCreate((int)nCurves);
            k = 0;
            chunk->animcurveset[N] = crvset;
            flags = NuFileReadInt(handle);
            chunk->animcurveset[N]->flags = flags;
            if ('\0' < chunk->animcurveset[N]->ncurves) {
              flags = 0;
              do {
                k = k + 1;
                fVar1 = NuFileReadFloat(handle);
                *(float *)(flags + (int)chunk->animcurveset[N]->constants) = fVar1;
                flags = flags + 4;
              } while (k < chunk->animcurveset[N]->ncurves);
            }
          }
          N = j;
        } while (j < nChunks);
      }
      nChunks = 0;
      curves = chunk->curves;
      if (0 < chunk->numnodes) {
        do {
          ptrCset = chunk->animcurveset;
          N = nChunks + 1;
          if ((ptrCset[nChunks] != (nuanimcurveset_s *)0x0) &&
             (j = 0, '\0' < ptrCset[nChunks]->ncurves)) {
            flags = 0;
            do {
              if (*(float *)(flags + (int)ptrCset[nChunks]->constants) == 3.402823e+38) {
                *(nuanimcurve_s **)(ptrCset[nChunks]->set->pad + flags + -0xd) = curves;
                chunk->num_valid_animcurvesets = chunk->num_valid_animcurvesets + 1;
                curves->animkeys = keys;
                nKeys = &curves->numkeys;
                curves = curves + 1;
                keys = keys + *nKeys;
              }
              ptrCset = chunk->animcurveset;
              j = j + 1;
              flags = flags + 4;
            } while (j < ptrCset[nChunks]->ncurves);
          }
          nChunks = N;
        } while (N < chunk->numnodes);
      }
    } while (i < ADat->nchunks);
  }
  return ADat;
}