#include "nutxanm.h"
#include "../system.h"


s32 nta_labels[64];
static struct nutexanimprog_s* parprog; 


void NuTexAnimProgSysInit(void)

{
  struct nutexanimlist_s **succ;
  struct nutexanimlist_s *nta;
  s32 n;
  
  sys_progs = NULL;
  nta = ntalsysbuff[63]; //0x803c85f0
  n = 0x3f;
  succ = &ntalsysbuff[0x3e].succ;
  do {
    *succ = nta;
    succ = succ + -3;
    nta = nta + -1;
    n = n + -1;
  } while (n != 0);
  ntal_free = ntalsysbuff;
  ntalsysbuff[63].succ = NULL;
  nta_sig_on = 0;
  ntal_first = NULL;
  xdeflabtabcnt = 0;
  nta_sig_old = 0;
  nta_sig_off = 0;
  return;
}


struct nutexanimprog_s * NuTexAnimProgFind(char *name)

{
  s32 cmp;
  nutexanimprog_s *rv;
  
  rv = sys_progs;
  while ((rv != NULL && (cmp = strcasecmp(name,rv->name), cmp != 0))) {
    rv = rv->succ;
  }
  return rv;
}

/*
void NuTexAnimProgInit(nutexanimprog_s *rv)	//TODO

{
  int iVar1;
  int n;
  
  if (rv == NULL) {
    return;
  }
  n = 0x20;
  iVar1 = 0;
  do {
    *(undefined4 *)((int)rv->off_sig + iVar1) = 0xffffffff;
    *(undefined4 *)((int)rv->on_sig + iVar1) = 0xffffffff;
    iVar1 = iVar1 + 4;
    n = n + -1;
  } while (n != 0);
  rv->eop = 0;
  rv->name[0] = '\0';
  rv->xdef_cnt = 0;
  rv->on_mask = 0;
  *(uint *)&rv->eop = *(uint *)&rv->eop & 0xffff7fff;
  rv->off_mask = 0;
  return;
}*/


/*void NuTexAnimProgAssembleEnd(nutexanimprog_s *p)		//TODO

{
  short sVar1;
  short sVar2;
  int iVar3;
  int iVar4;
  
  iVar3 = 0;
  if (p->eop < 1) {
    return;
  }
  do {
    sVar1 = p->xdef_addrs[iVar3 + 0x24];
    sVar2 = (short)iVar3;
    if (sVar1 == 8) {
LAB_800ba2fc:
      iVar4 = iVar3 + 1;
      sVar2 = sVar2 + 2;
LAB_800ba304:
      iVar3 = (int)sVar2;
      p->xdef_addrs[iVar4 + 0x24] =
           *(short *)((int)nta_labels + p->xdef_addrs[iVar4 + 0x24] * 4 + 2);
      goto LAB_800ba354;
    }
    if (sVar1 < 9) {
      if (sVar1 < 5) {
        if (sVar1 < 3) {
          if (sVar1 == 1) {
            sVar2 = sVar2 + 4;
          }
          else if (sVar1 < 2) {
            if (sVar1 != 0) goto LAB_800ba354;
LAB_800ba34c:
            sVar2 = sVar2 + 2;
          }
          else {
            sVar2 = sVar2 + 3;
          }
          goto LAB_800ba350;
        }
      }
      else {
        if (sVar1 == 5) {
          sVar2 = sVar2 + 3;
          goto LAB_800ba350;
        }
        if (sVar1 == 7) goto LAB_800ba2fc;
      }
    }
    else {
      if (sVar1 == 0xc) {
        sVar2 = sVar2 + 1;
      }
      else if (sVar1 < 0xd) {
        if (sVar1 == 10) {
          sVar2 = sVar2 + 1;
        }
        else {
          if (sVar1 < 0xb) {
            iVar4 = iVar3 + 3;
            sVar2 = sVar2 + 4;
            goto LAB_800ba304;
          }
          sVar2 = sVar2 + 3;
        }
      }
      else if (sVar1 == 0xe) {
        sVar2 = sVar2 + 1;
      }
      else {
        if (0xd < sVar1) {
          if (sVar1 == 0xf) goto LAB_800ba34c;
          goto LAB_800ba354;
        }
        sVar2 = sVar2 + 3;
      }
LAB_800ba350:
      iVar3 = (int)sVar2;
    }
LAB_800ba354:
    if (p->eop <= iVar3) {
      return;
    }
  } while( true );
}*/


nutexanimenv_s * NuTexAnimEnvCreate(variptr_u *buff,numtl_s *mtl,short *tids,nutexanimprog_s *p)

{
  s32 unk;
  nutexanimenv_s *rv;
  
  if (buff == NULL) {
    rv = (struct nutexanimenv_s *)NuMemAlloc(0xec);
  }
  else {
    //rv = (nutexanimenv_s *)((uint)((int)buff->mtx44->mtx44 + 3) & 0xfffffffc);	//CHECK
    buff->voidptr = rv + 1;
  }
  if (rv != NULL) {
    rv->prog = p;
    rv->mtl = mtl;
    rv->tids = tids;
    rv->tex_ix = 0;
    rv->pc = 0;
    rv->rep_ix = 0;
    rv->ra_ix = 0;
    rv->pause = 0;
    rv->pause_r = 0;
    rv->pause_cnt = 0;
    if (buff == NULL) {
        unk = *(uint *)&rv->field_0xe8 | 0x80000000;
    }
    else {
      unk = *(uint *)&rv->field_0xe8 & 0x7fffffff;
    }
    *(int *)&rv->field_0xe8 = unk;
  }
  return rv;
}



nutexanimprog_s * NuTexAnimProgReadScript(variptr_u *buff,char *fname)	//CHECK

{
  nutexanimprog_s *ptr;
  nufpar_s *fp;
  int lab;
  int parquit;
  char *txt;
  nutexanimprog_s *p;
  
  if (buff == NULL) {
    ptr = (nutexanimprog_s *)NuMemAlloc(0x400);
  }
  else {
    ptr = (uint)((int)&buff->mtx44->mtx + 3U) & 0xfffffffc;
  }
  memset(labtab,0,0x540);
  p = NULL;
  labtabcnt = 0;
  fp = NuFParCreate(fname);
  if (fp != NULL) {
    NuFParPushCom(fp,nutexanimcomtab);
    NuTexAnimProgInit(ptr);
    parprog = ptr;
    while( true ) {
      lab = NuFParGetLine(fp);
      if (lab == 0) break;
      lab = NuFParGetWord(fp);
      if (lab != 0) {
        parquit = NuFParInterpretWord(fp);
        if ((parquit == 0) && (fp->wordBuffer[1] != '\0')) {
          txt = fp->wordBuffer + 1;
          if (txt[lab + -1] == ':') {
            txt[lab + -1] = '\0';
            lab = LabTabFind(txt);
            nta_labels[lab] = (int)parprog->eop;
          }
        }
      }
    }
    if (buff != NULL) {
      buff->voidptr = ptr->xdef_addrs + ptr->eop + 0x24;
    }
    NuFParDestroy(fp);
    NuTexAnimProgAssembleEnd(ptr);
    ptr->succ = sys_progs;
    if (sys_progs != NULL) {
      sys_progs->prev = ptr;
    }
    ptr->prev = NULL;
    p = ptr;
    sys_progs = ptr;
  }
  return p;
}



void NuTexAnimXCall(int lid,nutexanimenv_s *ignore)

{
  short *psVar1;
  s32 iVar2;	//xdef_cnt?
  nutexanim_s *nta;
  s32 n;
  short *xdef_addrs;
  short *addrs;
  nutexanimprog_s *p;
  nutexanimenv_s *e;
  nutexanimlist_s *rv;
  short pc;
  
  rv = ntal_first;
  if (ntal_first == NULL) {
    return;
  }
  do {
    for (nta = rv->nta; nta != NULL; nta = nta->succ) {
      e = nta->env;
      if ((((e != NULL) && (e != ignore)) &&
          (p = e->prog, p != NULL)) && (iVar2 = p->xdef_cnt, iVar2 != 0)) {
        n = 0;
        if (0 < iVar2) {
          xdef_addrs = p->xdef_addrs;
          if (p->xdef_ids[0] == lid) {
            pc = p->xdef_addrs[0];
          }
          else {
            do {
              n = n + 1;
              addrs = xdef_addrs + 1;
              if (iVar2 <= n) goto LAB_800bb11c;
              psVar1 = xdef_addrs + -0x1f;
              xdef_addrs = addrs;
            } while (*psVar1 != lid);
            pc = *addrs;
          }
          e->rep_ix = 0;
          e->pc = (int)pc;
          e->pause_cnt = 0;
          e->ra_ix = 0;
        }
      }
LAB_800bb11c:
    }
    rv = rv->succ;
    if (rv == NULL) {
      return;
    }
  } while( true );
}


void NuTexAnimEnvProc(struct nutexanimenv_s *e)	//CHECK

{
  short sVar1;
  int iVar2;
  long lVar3;
  nutexanimprog_s *p;
  uint off;
  int n;
  int *sig;
  int iVar4;
  bool check;
  
  check = false;
  p = e->prog;
  if (p != NULL) {
    off = p->off_mask;
    if ((nta_sig_off & off) != 0) {
      n = 0;
      sig = p->off_sig;
      if ((nta_sig_off & 1 & off) == 0) {
        do {
          n = n + 1;
          sig = sig + 1;
          if (0x1f < n) goto LAB_800bb1dc;
        } while ((nta_sig_off & 1 << n & off) == 0);
        n = *sig;
        e->rep_ix = 0;
        e->pc = n;
        e->pause_cnt = 0;
        e->ra_ix = 0;
      }
      else {
        n = p->off_sig[0];
        e->pause_cnt = 0;
        e->pc = n;
        e->ra_ix = 0;
        e->rep_ix = 0;
      }
    }
LAB_800bb1dc:
    off = p->on_mask;
    if ((nta_sig_on & off) != 0) {
      n = 0;
      sig = p->on_sig;
      if ((nta_sig_on & 1 & off) == 0) {
        do {
          n = n + 1;
          sig = sig + 1;
          if (0x1f < n) goto LAB_800bb24c;
        } while ((nta_sig_on & 1 << n & off) == 0);
        n = *sig;
      }
      else {
        n = p->on_sig[0];
      }
      e->rep_ix = 0;
      e->pc = n;
      e->pause_cnt = 0;
      e->ra_ix = 0;
    }
LAB_800bb24c:
    if (e->pause_cnt == 0) {
      do {
        n = e->pc;
        sVar1 = p->xdef_addrs[n + 0x24];
        if (sVar1 == 9) {
          n = EvalVars((int)*(short *)(p[1].name + n * 2 + -8),e->tex_ix,
                       (int)*(short *)(p[1].name + n * 2 + -6));
          if (n != 0) {
            n = e->pc + 3;
LAB_800bb510:
            e->pc = (int)p->xdef_addrs[n + 0x24];
            goto LAB_800bb770;
          }
          n = e->pc + 4;
LAB_800bb76c:
          e->pc = n;
        }
        else if (sVar1 < 10) {
          if (sVar1 == 2) {
            e->pause_cnt = (int)*(short *)(p[1].name + n * 2 + -8);
            if (*(short *)(p[1].name + n * 2 + -6) != 0) {
              lVar3 = NuRand(0);
              e->pause_cnt = e->pause_cnt +
                             (lVar3 - (lVar3 / (int)*(short *)(p[1].name + e->pc * 2 + -6)) *
                                      (int)*(short *)(p[1].name + e->pc * 2 + -6));
            }
            check = true;
            n = e->pc + 3;
            goto LAB_800bb76c;
          }
          if (sVar1 < 3) {
            if (sVar1 == 0) {
              sVar1 = *(short *)(p[1].name + n * 2 + -8);
              e->tex_ix = (int)sVar1;
              e->mtl->tid = (int)e->tids[sVar1];
              n = e->pause;
              iVar4 = e->pause_r;
              iVar2 = e->pc + 2;
            }
            else {
              if (sVar1 != 1) goto LAB_800bb770;
              iVar2 = e->tex_ix + (int)*(short *)(p[1].name + n * 2 + -8);
              if (iVar2 < *(short *)(p[1].name + n * 2 + -6)) {
                iVar2 = (int)*(short *)(p[1].name + n * 2 + -6);
              }
              if (*(short *)(p[1].name + n * 2 + -4) < iVar2) {
                iVar2 = (int)*(short *)(p[1].name + n * 2 + -4);
              }
              e->tex_ix = iVar2;
              e->mtl->tid = (int)e->tids[iVar2];
              n = e->pause;
              iVar4 = e->pause_r;
              iVar2 = e->pc + 4;
            }
            e->pc = iVar2;
            e->pause_cnt = n;
            if (iVar4 != 0) {
              lVar3 = NuRand(0);
              e->pause_cnt = e->pause_cnt + (lVar3 - (lVar3 / e->pause_r) * e->pause_r);
            }
LAB_800bb748:
            check = true;
          }
          else {
            if (sVar1 == 7) {
              n = (int)*(short *)(p[1].name + n * 2 + -8);
              goto LAB_800bb76c;
            }
            if (7 < sVar1) {
              if (0xf < e->ra_ix) {
                e = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nutexanm.c",0x388);
                //(*error)("TexAnim Processor Alert: Call Stack Overflow at (%d)",e->pc);
              }
              n = e->ra_ix;
              e->ra[n] = e->pc + 2;
              e->ra_ix = n + 1;
              n = e->pc + 1;
              goto LAB_800bb510;
            }
            if (sVar1 == 5) {
              e->pause = (int)*(short *)(p[1].name + n * 2 + -8);
              sVar1 = *(short *)(p[1].name + n * 2 + -6);
              e->pc = n + 3;
              e->pause_r = (int)sVar1;
            }
          }
        }
        else if (sVar1 == 0xc) {
          if (e->rep_ix == 0) {
            e = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nutexanm.c",0x3a2);
            //(*error)("TexAnim Processor Alert: REPEND without REPEAT at (%d)",e->pc);
          }
          n = e->rep_ix;
          if (e->rep_count[n + -1] == 0) {
            e->rep_ix = n + -1;
            n = e->pc + 1;
            goto LAB_800bb76c;
          }
LAB_800bb730:
          e->pc = e->rep_start[n + -1];
          e->rep_count[n + -1] = e->rep_count[n + -1] + -1;
        }
        else if (sVar1 < 0xd) {
          if (sVar1 == 10) {
            if (e->ra_ix == 0) {
              e = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nutexanm.c",0x390);
              //(*error)("TexAnim Processor Alert: Call Stack Underflow at (%d)",e->pc);
            }
            n = e->ra_ix;
            e->ra_ix = n + -1;
            e->pc = e->ra[n + -1];
          }
          else if (sVar1 == 0xb) {
            if (0xf < e->rep_ix) {
              e = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nutexanm.c",0x398);
              //(*error)("TexAnim Processor Alert: Too Many Nested Repeat Loops at (%d)",e->pc);
            }
            e->rep_count[e->rep_ix] = (int)*(short *)(p[1].name + e->pc * 2 + -8);
            if (*(short *)(p[1].name + e->pc * 2 + -6) != 0) {
              lVar3 = NuRand(0);
              e->rep_count[e->rep_ix] =
                   e->rep_count[e->rep_ix] +
                   (lVar3 - (lVar3 / (int)*(short *)(p[1].name + e->pc * 2 + -6)) *
                            (int)*(short *)(p[1].name + e->pc * 2 + -6));
            }
            iVar2 = e->rep_ix;
            n = e->pc + 3;
            e->pc = n;
            e->rep_start[iVar2] = n;
            e->rep_ix = iVar2 + 1;
          }
        }
        else {
          if (sVar1 == 0xe) goto LAB_800bb748;
          if (sVar1 < 0xe) {
            if (e->rep_ix == 0) {
              e = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nutexanm.c",0x3b0);
              //(*error)("TexAnim Processor Alert: UNTILTEX without REPEAT at (%d)",e->pc);
            }
            n = EvalVars((int)*(short *)(p[1].name + e->pc * 2 + -8),e->tex_ix,
                         (int)*(short *)(p[1].name + e->pc * 2 + -6));
            if ((n == 0) && (n = e->rep_ix, e->rep_count[n + -1] != 0)) goto LAB_800bb730;
            e->pc = e->pc + 3;
            e->rep_ix = e->rep_ix + -1;
          }
          else if (sVar1 == 0xf) {
            NuTexAnimXCall((int)*(short *)(p[1].name + n * 2 + -8),e);
            n = e->pc + 2;
            goto LAB_800bb76c;
          }
        }
LAB_800bb770:
      } while (!check);
    }
    else {
      e->pause_cnt = e->pause_cnt + -1;
    }
  }
  return;
}


void NuTexAnimSetSignals(uint sig)

{
  uint nta;
  
  nta = nta_sig_old;
  nta_sig_old = sig;
  nta_sig_off = (sig ^ nta) & ~sig;
  nta_sig_on = (sig ^ nta) & sig;
  return;
}


void NuTexAnimProcessList(struct nutexanim_s *nta)

{
  if (nta != NULL) {
    do {
      if (nta->env != NULL) {
        NuTexAnimEnvProc(nta->env);
      }
      nta = nta->succ;
    } while (nta != NULL);
  }
  return;
}


void NuTexAnimAddList(struct nutexanim_s *nta)

{
  struct nutexanimlist_s *lst;
  struct nutexanimlist_s **prev;
  
  lst = ntal_free;
  if (ntal_free == NULL) {
    return;
  }
  prev = &ntal_free->prev;
  ntal_free = ntal_free->succ;
  *prev = NULL;
  lst->nta = nta;
  lst->succ = ntal_first;
  if (ntal_first != NULL) {
    ntal_first->prev = lst;
  }
  ntal_first = lst;
  return;
}


void NuTexAnimRemoveList(struct nutexanim_s *nta)

{
  struct nutexanimlist_s *rv;
  struct nutexanimlist_s **succ;
  
  rv = ntal_first;
  if (ntal_first == NULL) {
    return;
  }
  do {
    if (rv->nta == nta) {
      if (rv->succ != NULL) {
        rv->succ->prev = rv->prev;
      }
      if (rv->prev == NULL) {
        ntal_first = rv->succ;
      }
      else {
        rv->prev->succ = rv->succ;
      }
      rv->succ = ntal_free;
      ntal_free = rv;
      return;
    }
    succ = &rv->succ;
    rv = *succ;
  } while (*succ != NULL);
  return;
}



void NuTexAnimProcess(void)

{
  struct nutexanimlist_s *rv;
  
  rv = ntal_first;
  if (ntal_first != NULL) {
    do {
      NuTexAnimProcessList(rv->nta);
      rv = rv->succ;
    } while (rv != NULL);
  }
  return;
}


int EvalVars(int cc,int v0,int v1)

{
  
  if (cc == 2) {
    if (v0 <= v1) {
      return 0;
    }
    return 1;
  }
  if (cc < 3) {
    if (cc == 0) {
      if (v0 != v1) {
        return 0;
      }
      return 1;
    }
    if (cc == 1) {
      if (v1 <= v0) {
        return 0;
      }
      return 1;
    }
  }
  else {
    if (cc == 4) {
      if (v0 < v1) {
        return 0;
      }
      return 1;
    }
    if (cc < 4) {
      if (v1 < v0) {
        return 0;
      }
      return 1;
    }
    if (cc == 5) {
      if (v0 == v1) {
        return 0;
      }
      return 1;
    }
  }
  e = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nutexanm.c",0x17e);
  //(*error)("unknown condition code %d",cc);
  return 0;
}


int ParGetCC(nufpar_s *pf)

{
  int cc;
  char Wbuf;
  
  NuFParGetWord(pf);
  Wbuf = pf->wordBuffer[1];
  if (Wbuf == '<') {
    if (pf->wordBuffer[2] == '=') {
      return 3;
    }
    if (pf->wordBuffer[2] != '>') {
      return 1;
    }
LAB_800ba56c:
    cc = 5;
  }
  else {
    if (Wbuf < '=') {
      if (Wbuf == '!') goto LAB_800ba56c;
    }
    else {
      if (Wbuf == '=') {
        return 0;
      }
      if (Wbuf == '>') {
        if (pf->wordBuffer[2] != '=') {
          return 2;
        }
        return 4;
      }
    }
    e = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nutexanm.c",0x1ac);
    //(*error)("unknown condition \'%s\' at line %d",pf->wordBuffer + 1,pf->line_num);
  }
  return cc;
}

int LabTabFind(char *txt)

{
  size_t len;
  int cmp;
  NUERRORFUNC *error;
  char (*tab) [64];
  int i;
  
  len = strlen(txt);
  if (0x14 < len) {
    txt[0x14] = '\0';
  }
  i = 0;
  if (0 < labtabcnt) {
    tab = labtab;
    do {
      cmp = strcasecmp(tab,txt);
      if (cmp == 0) {
        return i;
      }
      i = i + 1;
      tab = (char (*) [64])((int)tab + 0x15);
    } while (i < labtabcnt);
  }
  if (0x3f < labtabcnt) {
    error = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nutexanm.c",0x1c9);
    (*error)("Tex Anim Assembler Fatal Error: too many labels");
  }
  i = labtabcnt * 0x15;
  labtabcnt = labtabcnt + 1;
  strcpy(labtab + i,txt);
  return labtabcnt + -1;
}


int XDefLabTabFind(char *txt)

{
  size_t lenght;
  int cmp;
  NUERRORFUNC *error;
  char *tab;
  int i;
  
  lenght = strlen(txt);
  if (0x14 < lenght) {
    txt[0x14] = '\0';
  }
  i = 0;
  if (0 < xdeflabtabcnt) {
    tab = &xdeflabtab;
    do {
      cmp = strcasecmp(tab,txt);
      if (cmp == 0) {
        return i;
      }
      i = i + 1;
      tab = tab + 0x15;
    } while (i < xdeflabtabcnt);
  }
  if (0xff < xdeflabtabcnt) {
    error = NuErrorProlog("C:/source/crashwoc/code/nu3dx/nutexanm.c",0x1de);
    (*error)("Tex Anim Assembler Fatal Error: too many global labels");
  }
  i = xdeflabtabcnt * 0x15;
  xdeflabtabcnt = xdeflabtabcnt + 1;
  strcpy(&xdeflabtab + i,txt);
  return xdeflabtabcnt + -1;
}



void pftaTex(nufpar_s *fp)

{
  int tid;
  short eop;
  nutexanimprog_s *prog;
  
  tid = NuFParGetInt(fp);
  prog = parprog;
  eop = parprog->eop;
  parprog->eop = eop + 1;
  prog->xdef_addrs[eop + 0x24] = 0;
  eop = prog->eop;
  prog->eop = eop + 1;
  prog->xdef_addrs[eop + 0x24] = (short)tid;
  return;
}

void pftaTexAdj(nufpar_s *fpar)

{
  int tid;
  int mi;
  int ma;
  short eop;
  nutexanimprog_s *prog;
  
  tid = NuFParGetInt(fpar);
  mi = NuFParGetInt(fpar);
  ma = NuFParGetInt(fpar);
  prog = parprog;
  eop = parprog->eop;
  parprog->eop = eop + 1;
  prog->xdef_addrs[eop + 0x24] = 1;
  eop = prog->eop;
  prog->eop = eop + 1;
  prog->xdef_addrs[eop + 0x24] = (short)tid;
  eop = prog->eop;
  prog->eop = eop + 1;
  prog->xdef_addrs[eop + 0x24] = (short)mi;
  eop = prog->eop;
  prog->eop = eop + 1;
  prog->xdef_addrs[eop + 0x24] = (short)ma;
  return;
}

void pftaWait(nufpar_s *fpar)

{
  int fcnt;
  int rcnt;
  short eop;
  nutexanimprog_s *prog;
  
  fcnt = NuFParGetInt(fpar);
  rcnt = NuFParGetInt(fpar);
  prog = parprog;
  eop = parprog->eop;
  parprog->eop = eop + 1;
  prog->xdef_addrs[eop + 0x24] = 2;
  eop = prog->eop;
  prog->eop = eop + 1;
  prog->xdef_addrs[eop + 0x24] = (short)fcnt;
  eop = prog->eop;
  prog->eop = eop + 1;
  prog->xdef_addrs[eop + 0x24] = (short)rcnt;
  return;
}

void pftaRate(nufpar_s *fpar)

{
  int fcnt;
  int rcnt;
  short eop;
  nutexanimprog_s *prog;
  
  fcnt = NuFParGetInt(fpar);
  rcnt = NuFParGetInt(fpar);
  prog = parprog;
  eop = parprog->eop;
  parprog->eop = eop + 1;
  prog->xdef_addrs[eop + 0x24] = 5;
  eop = prog->eop;
  prog->eop = eop + 1;
  prog->xdef_addrs[eop + 0x24] = (short)fcnt;
  eop = prog->eop;
  prog->eop = eop + 1;
  prog->xdef_addrs[eop + 0x24] = (short)rcnt;
  return;
}

void pftaOn(nufpar_s *fp)

{
  int sig;
  nutexanimprog_s *prog;
  
  sig = NuFParGetInt(fp);
  prog = parprog;
  parprog->on_sig[sig] = (int)parprog->eop;
  prog->on_mask = prog->on_mask | 1 << sig;
  return;
}

void pftaOff(nufpar_s *fp)

{
  int sig;
  nutexanimprog_s *prog;
  
  sig = NuFParGetInt(fp);
  prog = parprog;
  parprog->off_sig[sig] = (int)parprog->eop;
  prog->off_mask = prog->off_mask | 1 << sig;
  return;
}

void pftaLabel(nufpar_s *fpar)

{
  int lab;
  
  NuFParGetWord(fpar);
  lab = LabTabFind(fpar->wordBuffer + 1);
  nta_labels[lab] = (int)parprog->eop;
  return;
}

void pftaXDef(nufpar_s *fpar)

{
  int lab;
  nutexanimprog_s *prog;
  
  NuFParGetWord(fpar);
  lab = XDefLabTabFind(fpar->wordBuffer + 1);
  prog = parprog;
  parprog->xdef_ids[parprog->xdef_cnt] = (short)lab;
  prog->xdef_addrs[prog->xdef_cnt] = prog->eop;
  prog->xdef_cnt = prog->xdef_cnt + 1;
  return;
}

void pftaGoto(nufpar_s *fpar)

{
  int lab;
  short eop;
  nutexanimprog_s *prog;
  
  NuFParGetWord(fpar);
  lab = LabTabFind(fpar->wordBuffer + 1);
  prog = parprog;
  eop = parprog->eop;
  parprog->eop = eop + 1;
  prog->xdef_addrs[eop + 0x24] = 7;
  eop = prog->eop;
  prog->eop = eop + 1;
  prog->xdef_addrs[eop + 0x24] = (short)lab;
  return;
}


void pftaXRef(nufpar_s *fpar)

{
  int lab;
  short eop;
  nutexanimprog_s *prog;
  
  NuFParGetWord(fpar);
  lab = XDefLabTabFind(fpar->wordBuffer + 1);
  prog = parprog;
  eop = parprog->eop;
  parprog->eop = eop + 1;
  prog->xdef_addrs[eop + 0x24] = 0xf;
  eop = prog->eop;
  prog->eop = eop + 1;
  prog->xdef_addrs[eop + 0x24] = (short)lab;
  return;
}

void pftaBtex(nufpar_s *fpar)

{
  int cc;
  int tid;
  int lab;
  short eop;
  nutexanimprog_s *prog;
  
  cc = ParGetCC(fpar);
  tid = NuFParGetInt(fpar);
  NuFParGetWord(fpar);
  lab = LabTabFind(fpar->wordBuffer + 1);
  prog = parprog;
  eop = parprog->eop;
  parprog->eop = eop + 1;
  prog->xdef_addrs[eop + 0x24] = 9;
  eop = prog->eop;
  prog->eop = eop + 1;
  prog->xdef_addrs[eop + 0x24] = (short)cc;
  eop = prog->eop;
  prog->eop = eop + 1;
  prog->xdef_addrs[eop + 0x24] = (short)tid;
  eop = prog->eop;
  prog->eop = eop + 1;
  prog->xdef_addrs[eop + 0x24] = (short)lab;
  return;
}

void pftaGosub(nufpar_s *fpar)

{
  int lab;
  short eop;
  nutexanimprog_s *prog;
  
  NuFParGetWord(fpar);
  lab = LabTabFind(fpar->wordBuffer + 1);
  prog = parprog;
  eop = parprog->eop;
  parprog->eop = eop + 1;
  prog->xdef_addrs[eop + 0x24] = 8;
  eop = prog->eop;
  prog->eop = eop + 1;
  prog->xdef_addrs[eop + 0x24] = (short)lab;
  return;
}

void pftaRet(nufpar_s *fp)

{
  short eop;
  nutexanimprog_s *prog;
  
  prog = parprog;
  eop = parprog->eop;
  parprog->eop = eop + 1;
  prog->xdef_addrs[eop + 0x24] = 10;
  return;
}


void pftaRepeat(nufpar_s *fpar)

{
  int randval;
  int cnt;
  short eop;
  nutexanimprog_s *prog;
  
  randval = NuFParGetInt(fpar);
  if (randval == 0) {
    randval = 0xffff; //=-1
  }
  cnt = NuFParGetInt(fpar);
  prog = parprog;
  eop = parprog->eop;
  parprog->eop = eop + 1;
  prog->xdef_addrs[eop + 0x24] = 0xb;
  eop = prog->eop;
  prog->eop = eop + 1;
  prog->xdef_addrs[eop + 0x24] = (short)randval;
  eop = prog->eop;
  prog->eop = eop + 1;
  prog->xdef_addrs[eop + 0x24] = (short)cnt;
  return;
}

void pftaRepend(nufpar_s *fp)

{
  short eop;
  nutexanimprog_s *prog;
  
  prog = parprog;
  eop = parprog->eop;
  parprog->eop = eop + 1;
  prog->xdef_addrs[eop + 0x24] = 0xc;
  return;
}

void pftaUntiltex(nufpar_s *fpar)

{
  int cc;
  int tid;
  short eop;
  nutexanimprog_s *prog;
  
  cc = ParGetCC(fpar);
  tid = NuFParGetInt(fpar);
  prog = parprog;
  eop = parprog->eop;
  parprog->eop = eop + 1;
  prog->xdef_addrs[eop + 0x24] = 0xd;
  eop = prog->eop;
  prog->eop = eop + 1;
  prog->xdef_addrs[eop + 0x24] = (short)cc;
  eop = prog->eop;
  prog->eop = eop + 1;
  prog->xdef_addrs[eop + 0x24] = (short)tid;
  return;
}

void pftaEnd(nufpar_s *fp)

{
  short eop;
  nutexanimprog_s *prog;
  
  prog = parprog;
  eop = parprog->eop;
  parprog->eop = eop + 1;
  prog->xdef_addrs[eop + 0x24] = 0xe;
  return;
}

void pftaScriptname(nufpar_s *fpar)

{
  NuFParGetWord(fpar);
  fpar->wordBuffer[0x21] = '\0';
  strcpy(parprog->name,fpar->wordBuffer + 1);
  return;
}