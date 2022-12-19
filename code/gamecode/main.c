#include "../nu.h"

/*
  8004f584 0000bc 8004f584  4 InitTexAnimScripts 	Global
  8004f640 000168 8004f640  4 SetTexAnimSignals 	Global
  8004f7a8 000054 8004f7a8  4 LoadFont3D 	Global
  8004f7fc 00005c 8004f7fc  4 InitCreatureModels 	Global
  8004f858 000050 8004f858  4 InitCreatures 	Global
  8004f8a8 000010 8004f8a8  4 IsTitleScreen 	Global
  8004f8b8 00005c 8004f8b8  4 CreateFadeMtl 	Global
  8004f914 00009c 8004f914  4 UpdateFade 	Global
  8004f9b0 00005c 8004f9b0  4 DrawFade 	Global
  8004fa0c 0000e4 8004fa0c  4 InitParticleSystem 	Global
  8004faf0 0006a4 8004faf0  4 InitWorld 	Global
  80050194 0000d0 80050194  4 ResetSuperBuffer 	Global
  80050264 000128 80050264  4 ResetSuperBuffer2 	Global
  8005038c 000124 8005038c  4 MAHLoadingMessage 	Global
  800504b0 000240 800504b0  4 LoadLevel 	Global
  800506f0 0000a0 800506f0  4 DrawWorld 	Global
  80050790 000038 80050790  4 PauseRumble 	Global
  800507c8 000064 800507c8  4 PauseGame 	Global
  8005082c 000020 8005082c  4 ResumeGame 	Global
  8005084c 00042c 8005084c  4 DoInput 	Global
  80050c78 00006c 80050c78  4 TBCODESTART 	Global
  80050ce4 000040 80050ce4  4 TBCODEEND 	Global
  80050d24 000060 80050d24  4 TBDRAWSTART 	Global
  80050d84 000034 80050d84  4 TBDRAWEND 	Global
  80050db8 0000d8 80050db8  4 InitPauseRender 	Global
  80050e90 000048 80050e90  4 ClosePauseRender 	Global
  80050ed8 000158 80050ed8  4 HandlePauseRender 	Global
  80051030 0000ac 80051030  4 SetLevel 	Global
  800510dc 0000d8 800510dc  4 firstscreenfade 	Global
  800511b4 000084 800511b4  4 CopyFilesThreadProc 	Global
  80051238 000104 80051238  4 LoadGBABG 	Global
  8005133c 000068 8005133c  4 UnLoadGBABG 	Global
  800513a4 0000fc 800513a4  4 Reseter 	Global
  800514a0 000058 800514a0  4 Managememcard 	Global
  800514f8 0004d0 800514f8  4 firstscreens 	Global
  800519c8 001b04 800519c8  4 main 	Global
*/

int main()
{
}

union variptr_u superbuffer_base;
union variptr_u superbuffer_end;

/*void ResetSuperBuffer(void)	//TODO

{
  
  if ((double)CONCAT44(0x43300000,superbuffersize ^ 0x80000000) - 4503601774854144.0 != 6008340.48 )
  {
    if (superbuffer_base.voidptr != (void *)0x0) {
      NuMemFree(superbuffer_base.voidptr);
    }
    superbuffer_base.voidptr = NuMemAlloc(0x5bae14);
    superbuffer_end.voidptr = (void *)(superbuffer_base.intaddr + 0x5bae14);
    superbuffersize = 0x5bae14;
    superbuffer_reset_base.voidptr = superbuffer_base.voidptr;
    if (superbuffer_base.voidptr == (void *)0x0) {
      e = NuErrorProlog("C:/source/crashwoc/code/gamecode/main.c",0x5c5);
      //(*e)("unable to allocate super buffer");
    }
  }
  superbuffer_ptr = superbuffer_reset_base;
  return;
}*/

/*

int main(int argc,char **argv)

{
  bool bVar1;
  bool bVar2;
  float fVar3;
  short sVar4;
  uint uVar5;
  float fVar6;
  nucamera_s *pnVar7;
  mask *pmVar8;
  void *paused;
  int iVar9;
  int iVar10;
  char **in_r5;
  nucamera_s *pnVar11;
  nucamera_s *pnVar12;
  char *pcVar13;
  CamMtx *pCVar14;
  creature_s *plr;
  void *pause;
  byte in_cr0;
  byte in_cr1;
  byte in_cr2;
  byte in_cr3;
  byte unaff_cr4;
  byte in_cr5;
  byte in_cr6;
  byte in_cr7;
  CamMtx *GameCam_;
  double dVar15;
  double dVar16;
  double dVar17;
  float LODWORD;
  nuvec_s local_b0;
  int v155;
  int local_9c;
  uint local_98;
  int local_94;
  uint local_64;
  
  local_64 = (uint)(in_cr0 & 0xf) << 0x1c | (uint)(in_cr1 & 0xf) << 0x18 |
             (uint)(in_cr2 & 0xf) << 0x14 | (uint)(in_cr3 & 0xf) << 0x10 |
             (uint)(unaff_cr4 & 0xf) << 0xc | (uint)(in_cr5 & 0xf) << 8 | (uint)(in_cr6 & 0xf) <<  4
             | (uint)(in_cr7 & 0xf);
  __main(argc,argv,in_r5);
  v155 = 0;
  DEMOInit((_GXRenderModeObj *)0x0);
  GS_Init();
  SS_Init();
  MC_Init();
  NuFileInitEx(0,0);
  Version();
  PadData.dwPacketNumber = (uint)GS_FrameBufferCopydataptr;
  DefaultGame();
  ResetGame();
  NuPs2Init();
  DebrisMalloc();
  _LODWORD = (double)CONCAT44(0x43300000,SWIDTH ^ 0x80000000);
  Level = -1;
  Hub = -1;
  MAXVPSIZEX = SWIDTH;
  MAXVPSIZEY = SHEIGHT;
  MINVPSIZEX = (int)(((float)(_LODWORD - 4503601774854144.0) * 390.0) / 640.0);
  _LODWORD = (double)CONCAT44(0x43300000,SHEIGHT ^ 0x80000000);
  MINVPSIZEY = (int)(((float)(_LODWORD - 4503601774854144.0) * 244.0) / 480.0);
  _LODWORD = (double)(longlong)MINVPSIZEY;
  InitCutScenes();
  NuTrigInit();
  NuVpInit();
  NuTexInit();
  NuGobjInit();
  NuMtlInit();
  NuRndrInitEx(0x200000);
  NuLightInit();
  pNuCam = (nucamera_s *)NuCameraCreate();
  firstscreens();
  Pad[0] = NuPs2OpenPad(0,0);
  Pad[1] = NuPs2OpenPad(1,0);
  app_tbset = tbsetCreate((int *)0x0);
  if (Level == -1) {
    Level = 0x23;
  }
  else {
    NewGame();
    CalculateGamePercentage(&Game);
    Hub = HubFromLevel(Level);
  }
  last_level = Level;
LAB_80051ba4:
  srand(0);
  qseed = 0x3039;
  NuRandSeed(0);
  if (Level == 0x23) {
    NewGame();
    Hub = -1;
    NewMenu(&Cursor,-1,-1,-1);
    cutmovie = 0;
    Level = 0x25;
    Demo = 0;
  }
  SetLevel();
  highallocaddr = 0;
  NuTexInit();
  NuMtlInit();
  NuGobjInit();
  InstInit();
  NuSoundKillAllAudio();
  while (cutmovie != -1) {
    pad_play = 0;
    InitPadPlayRecord(PadRecordPath,0,0x13ec,(void *)PadData.dwPacketNumber);
    PlayCutMovie(cutmovie);
    NewMenu(&Cursor,-1,-1,-1);
    cutmovie = -1;
    logos_played = 1;
    NuSoundKillAllAudio();
  }
  SetLevel();
  InitCameraTargetMaterial();
  DebrisSetup();
  VehicleSetup();
  DebrisRegisterCutoffCameraVec((nuvec_s *)global_camera.mtx.mtx[3]);
  CreateFadeMtl();
  ResetSuperBuffer();
  CrateMat = (numtl_s *)0x0;
  CrateMat2 = (numtl_s *)0x0;
  LoadLevel();
  InitPauseRender();
  NuLgtSetArcMat(DebMat[5],0.5019531,0.7480469,0.5605469,0.9980469);
  Reset3DFontObjects();
  InitPlayerEvents();
  if (Level == 0x28) {
    GameMode = 1;
  }
  else if (Level == 0x26) {
    ResetTempCharacter(2,0x22);
    tempanim_nextaction = 0x73;
    gamesfx_channel = 4;
    GameSfx(0xb2,(nuvec_s *)0x0);
    tempanim_waitaudio = 1;
    cortex_gameover_i = -1;
  }
  else {
    if (((Level == 0x25) && ((Game.cutbits & 1) == 0)) && (force_menu == -1)) {
      iVar10 = 0;
    }
    else {
      if (just_continued == 0) {
LAB_80051e34:
        GameMode = 0;
        goto LAB_80051e38;
      }
      if (((Level == 0x25) && ((Game.level[21].flags & 0x800) != 0)) && ((Game.cutbits & 0x40) ==  0)
         ) {
        iVar10 = 6;
      }
      else {
        if (just_continued == 0) goto LAB_80051e34;
        if (((Level == 0x25) && ((Game.level[23].flags & 0x800) != 0)) &&
           ((Game.cutbits & 0x800) == 0)) {
          iVar10 = 0xb;
        }
        else {
          if ((((just_continued == 0) || (Level != 0x25)) || ((Game.level[22].flags & 0x800) == 0) )
             || ((Game.cutbits & 0x10000) != 0)) goto LAB_80051e34;
          iVar10 = 0x10;
        }
      }
    }
    NewCut(iVar10);
    GameMode = 1;
  }
LAB_80051e38:
  if (GameMode == 1) {
    if (Level == 0x25) {
      Hub = -1;
    }
    ResetTimer(&CutTimer);
  }
  just_continued = 0;
  if ((ForcePlayRecord == 0) && (pad_play = 0, Demo != 0)) {
    pad_play = (int)(pad_record == 0);
  }
  if (pad_record == 0) {
    if (pad_play == 0) {
      InitPadPlayRecord(PadRecordPath,0,0x13ec,(void *)PadData.dwPacketNumber);
      goto LAB_80051ef4;
    }
    iVar10 = 2;
  }
  else {
    iVar10 = 1;
  }
  InitPadPlayRecord(PadRecordPath,iVar10,0x13ec,(void *)PadData.dwPacketNumber);
LAB_80051ef4:
  ResetBonus();
  ResetDeath();
  ResetGemPath();
  game_music = -1;
  LostLife = 0;
  if ((Cursor.menu != '\x13') && (GameMode != 1)) {
    GameMusic((int)LDATA->music[0],0);
  }
  USELIGHTS = 1;
  musicvol_mul = 0.0;
  srand(0);
  qseed = 0x3039;
  NuRandSeed(0);
  do {
    NuSoundSetLevelAmbience();
    NuSoundUpdate();
    if (((Cursor.menu != '\x13') && (game_music != LDATA->music[0])) && (GameMode != 1)) {
      GameMusic((int)LDATA->music[0],0);
    }
    InitCrateExplosions();
    if (Bonus != 4) {
      ResetBonus();
    }
    ResetDeath();
    ResetTimeTrial();
    ResetCrates();
    ResetGemPath();
    ResetWumpa();
    NuSoundUpdate();
    ResetChases();
    ResetPlayerEvents();
    ResetGates();
    ResetRings();
    iVar10 = ResetMaskFeathers();
    ResetAI();
    NuSoundUpdate();
    InitGameMode(iVar10);
    ResetBug();
    ResetLevel();
    ResetVehicleControl((int)(player->obj).RPos.iRAIL,(int)(player->obj).RPos.iALONG,
                        (player->obj).RPos.fALONG);
    InitDeb3();
    NuSoundUpdate();
    ResetProjectiles();
    pause_dir = 0;
    Paused = 0;
    ResetPanelDebris();
    if (Pad[0] != (nupad_s *)0x0) {
      NuPs2PadSetMotors(Pad[0],0,0);
    }
    ResetGameSfx();
    local_98 = 0;
    local_94 = 0;
    vtog_time = 0.0;
    vtog_duration = 0.0;
    ResetGameCameras(&GameCam,1);
    in_finish_range = 0;
    ResetAwards();
    NuSoundUpdate();
    fade_rate = -8;
    frameout_count = nuvideo_global_vbcnt;
    frameout = local_98;
    NuInitFrameAdvance();
    dVar17 = 1.0;
    dVar15 = 0.5;
    while (((new_mode == -1 && (new_level == -1)) || ((fadeval < 0xff || (fadehack != 0))))) {
      DBTimerStart(1);
      tbslotBegin(app_tbset,0);
      if ((LDATA->fognear == LDATA->fogfar) || (pause_rndr_on != 0)) {
        level_clearcolour = 0;
        level_fogcolour = 0;
      }
      else {
        level_clearcolour =
             (uint)LDATA->foga << 0x18 | (uint)LDATA->fogr << 0x10 | (uint)LDATA->fogg << 8 |
             (uint)LDATA->fogb;
        level_fogcolour =
             (uint)LDATA->foga << 0x18 | (uint)LDATA->fogb << 0x10 | (uint)LDATA->fogg << 8 |
             (uint)LDATA->fogr;
      }
      bVar2 = 0x1e < v155;
      v155 = v155 + 1;
      if (bVar2) {
        v155 = 0;
        NuSoundSetLevelAmbience();
      }
      NuGetFrameAdvance();
      plr = player;
      FRAMES = 1;
      _LODWORD = (double)CONCAT44(0x43300000,(int)cufps ^ 0x80000000);
      fVar3 = (float)(_LODWORD - 4503601774854144.0);
      if (fVar3 < 59.0) {
        FRAMES = 2;
      }
      if (fVar3 < 29.0) {
        FRAMES = FRAMES + 1;
      }
      if (fVar3 < 19.0) {
        FRAMES = FRAMES + 1;
      }
      if (fVar3 < 14.0) {
        FRAMES = FRAMES + 1;
      }
      if (FRAMES == 0) {
        FRAMES = 1;
      }
      FRAME = 0;
      bVar2 = local_94 != 0;
      if (FRAMES != 0) {
        dVar16 = 5.0;
        do {
          if (FRAME == 0) {
            tbslotBegin(app_tbset,1);
          }
          ProcessGlass(Paused);
          if ((((((GameMode != 1) && (0xb3 < GameTimer.frame)) && (GlobalTimer.frame % 0x3c == 0x1 e)
                ) && ((fadeval == 0 && (iVar10 = NuSoundKeyStatus(0), iVar10 != 1)))) &&
              (Bonus != 1)) && (Bonus != 3)) {
            GameMusic(game_music,0);
          }
          if (mg_wumpatot != 0) {
            mg_wumpatot = mg_wumpatot + -1;
            plr_wumpas._0_2_ = plr_wumpas._0_2_ + 1;
          }
          if (((FRAME == 0) || (FRAMES == 1)) || ((Demo != 0 || (Level == 0x26)))) {
            DoInput();
          }
          if ((Demo != 0) &&
             (((pad_play != 0 && (iVar10 = NuPs2PadDemoEnd(), iVar10 != 0)) ||
              (20.0 <= GameTimer.ftime)))) {
            new_level = 0x23;
          }
          UpdateGameSfx();
          NuXboxSoundUpdate();
          DBTimerStart(2);
          if (Paused == 0) {
            crate_wumpa = Paused;
            mask_crates = Paused;
            RotateDirectionalLight(ldir,-0x2000,((GameTimer.frame % 0x1e0) * 0x10000) / 0x1e0);
            iVar10 = 9;
            pcVar13 = &Character[8].anim_processed;
            do {
              *pcVar13 = '\0';
              pcVar13 = pcVar13 + -0xce4;
              iVar10 = iVar10 + -1;
            } while (iVar10 != 0);
            SetLevelLights();
            SetTexAnimSignals();
            TBCODESTART(0,"Plats");
            if ((LDATA->flags & 8) != 0) {
              TerrainPlatformOldUpdate();
            }
            if (world_scene[0] != (nugscn_s *)0x0) {
              NuGScnUpdate(1.0,world_scene[0]);
            }
            edobjUpdateObjects(1.0);
            edanimUpdateObjects(1.0);
            NuRndrWaterRippleUpdate(1);
            NuBridgeUpdate(&Character[0].obj.pos);
            NuWindUpdate(&Character[0].obj.pos);
            if ((LDATA->flags & 8) != 0) {
              TerrainPlatformNewUpdate();
            }
            TBCODEEND(0);
            TBCODESTART(1,"Chars");
            if ((LDATA->flags & 1) != 0) {
              if (FRAME == 0) {
                tbslotBegin(app_tbset,5);
              }
              ManageCreatures();
              ProcessCreatures();
              if (FRAME == 0) {
                tbslotEnd(app_tbset,5);
              }
            }
            TBCODEEND(1);
            TBCODESTART(2,"Update");
            if (Cursor.menu == '\x13') {
              UpdateCutMovie();
            }
            if (level_part_2 == 0) {
              UpdateLevel();
              UpdateKabooms();
              UpdateWumpa();
              UpdateCrates();
              UpdateMaskFeathers();
              UpdateCrateExplosions();
              UpdateChases();
              UpdateProjectiles();
              UpdateBugLight(plr);
              UpdateGameCut();
            }
            ProcessVehicleLevel(Pad[0]);
            TBCODESTART(3,"Deb");
            ProcDeb3();
            if ((NODEBRIS == 0) &&
               ((Debris(0), GLASSPLAYER == 0 || (dVar16 <= (double)plr_invisibility_time)))) {
              local_b0.x = (player->obj).pos.x;
              local_b0.y = (float)((double)(((player->obj).bot + (player->obj).top) *
                                           (player->obj).SCALE) * dVar15 +
                                  (double)(player->obj).pos.y);
              local_b0.z = (player->obj).pos.z;
              iVar10 = DebrisCollisionCheck(&local_b0,(player->obj).RADIUS);
              if (iVar10 != -1) {
                KillPlayer(&player->obj,0x14);
              }
            }
            NuMtlAnimate(0.01666667);
            TBCODEEND(3);
            GameCam_ = (CamMtx *)UpdateTempCharacter();
            UpdateAwards();
            MoveGameCamera(GameCam_,&plr->obj);
            UpdateScreenWumpas();
            if (PLAYERCOUNT != 0) {
              UpdatePlayerStats(plr);
            }
            UpdatePanelDebris();
          }
          else {
            PauseRumble();
            iVar10 = 0x30;
            pnVar12 = pNuCam;
            GameCam_ = &GameCam;
            do {
              pCVar14 = GameCam_;
              pnVar11 = pnVar12;
              iVar10 = iVar10 + -0x18;
              (pnVar11->mtx).mtx[0] = (pCVar14->m).mtx[0];
              (pnVar11->mtx).mtx[1] = (pCVar14->m).mtx[1];
              (pnVar11->mtx).mtx[2] = (pCVar14->m).mtx[2];
              (pnVar11->mtx).mtx[3] = (pCVar14->m).mtx[3];
              (pnVar11->mtx).mtx[1][0] = (pCVar14->m).mtx[1][0];
              GameCam_ = (CamMtx *)((pCVar14->m).mtx[1] + 2);
              (pnVar11->mtx).mtx[1][1] = (pCVar14->m).mtx[1][1];
              pnVar7 = pNuCam;
              pnVar12 = (nucamera_s *)((pnVar11->mtx).mtx[1] + 2);
            } while (iVar10 != 0);
            (pnVar12->mtx).mtx[0] = (GameCam_->m).mtx[0];
            (pnVar11->mtx).mtx[1][3] = (pCVar14->m).mtx[1][3];
            (pnVar11->mtx).mtx[2][0] = (pCVar14->m).mtx[2][0];
            (pnVar11->mtx).mtx[2][1] = (pCVar14->m).mtx[2][1];
            NuCameraSet(pnVar7);
            if ((Pad[0] != (nupad_s *)0x0) && ((Pad[0]->old_paddata & 0xa0) != 0)) {
              pausestats_frame = (pausestats_frame / 0xb4) * 0xb4 + 0xb4;
              GameSfx(0x36,(nuvec_s *)0x0);
            }
          }
          if ((FRAME == FRAMES + -1) && (pause_rndr_on == 0)) {
            AddBugLight();
          }
          GameTiming();
          if (FRAME == 0) {
            ProcMenu(&Cursor,Pad[0]);
          }
          UpdateFade();
          if ((Level == 2) && (VEHICLECONTROL != 1)) {
            NuLightFog(0.0,0.0,0x40000000,BLUR,0);
          }
          else {
            NuLightFog(LDATA->fognear,LDATA->fogfar,level_fogcolour,BLUR,
                       (uint)LDATA->hazea << 0x18 | (uint)LDATA->hazeb << 0x10 |
                       (uint)LDATA->hazeg << 8 | (uint)LDATA->hazer);
          }
          if (FRAME == 0) {
            tbslotEnd(app_tbset,1);
          }
          DBTimerEnd(2);
          DBTimerStart(3);
          if ((((Level == 2) || (Level == 6)) || (Level == 0x18)) || (Level == 0x22)) {
            GS_SetAlphaCompareForce(1);
          }
          else {
            GS_SetAlphaCompareForce(0);
          }
          if (pause_rndr_on == 0) {
            if (FRAME == FRAMES + -1) {
              tbslotBegin(app_tbset,9);
              GS_Parallax = 1;
              pCam = &GameCam;
              iVar10 = NuRndrBeginScene(1);
              if (iVar10 != 0) {
                GameVP();
                NuRndrClear(0xf,level_clearcolour,1.0);
                if (level_part_2 == 0) {
                  DrawParallax();
                }
              }
              NuRndrEndScene();
              GS_Parallax = 0;
              NuRndrClear(10,0,1.0);
              local_9c = NuRndrBeginScene(1);
              pnVar12 = pNuCam;
              if (Level == 0x18) {
                (pNuCam->mtx).mtx[3][2] = (float)PadData.field1_0x4;
                NuCameraSet(pnVar12);
                DrawWorld();
                NuRndrEndScene();
                iVar10 = 0x30;
                GameCam_ = pCam;
                pnVar12 = pNuCam;
                do {
                  pnVar11 = pnVar12;
                  pCVar14 = GameCam_;
                  iVar10 = iVar10 + -0x18;
                  (pnVar11->mtx).mtx[0] = (pCVar14->m).mtx[0];
                  (pnVar11->mtx).mtx[1] = (pCVar14->m).mtx[1];
                  (pnVar11->mtx).mtx[2] = (pCVar14->m).mtx[2];
                  (pnVar11->mtx).mtx[3] = (pCVar14->m).mtx[3];
                  (pnVar11->mtx).mtx[1][0] = (pCVar14->m).mtx[1][0];
                  GameCam_ = (CamMtx *)((pCVar14->m).mtx[1] + 2);
                  (pnVar11->mtx).mtx[1][1] = (pCVar14->m).mtx[1][1];
                  pnVar7 = pNuCam;
                  pnVar12 = (nucamera_s *)((pnVar11->mtx).mtx[1] + 2);
                } while (iVar10 != 0);
                (pnVar12->mtx).mtx[0] = (GameCam_->m).mtx[0];
                (pnVar11->mtx).mtx[1][3] = (pCVar14->m).mtx[1][3];
                (pnVar11->mtx).mtx[2][0] = (pCVar14->m).mtx[2][0];
                (pnVar11->mtx).mtx[2][1] = (pCVar14->m).mtx[2][1];
                NuCameraSet(pnVar7);
                local_9c = NuRndrBeginScene(1);
              }
              if (FRAME == FRAMES + -1) {
                TBDRAWSTART(0,"Chars");
              }
            }
            bVar1 = FRAME == FRAMES + -1;
            local_98 = (uint)((plr->obj).dead == '\x02');
            uVar5 = ((uint)(byte)(bVar1 << 1) << 0x1c) >> 0x1d;
            if (bVar1) {
              tbslotBegin(app_tbset,0xc);
            }
            if ((((LDATA->flags & 1) == 0) || (DRAWCREATUREHACK == 0)) || (cut_on != 0)) {
LAB_80052b3c:
              if (FRAME == FRAMES + -1) {
                tbslotEnd(app_tbset,0xc);
              }
            }
            else {
              if (FRAME == FRAMES + -1) {
                TBDRAWSTART(1,"Crash");
              }
              if ((local_98 == 0) &&
                 (((GLASSPLAYER == 0 || (dVar16 <= (double)plr_invisibility_time)) ||
                  (Level == 0x17)))) {
                pCam = &GameCam;
                DrawCreatures(Character,1,uVar5,1);
              }
              if (FRAME == FRAMES + -1) {
                TBDRAWEND(1);
              }
              if ((level_part_2 == 0) && (DrawCreatures(Character + 1,8,uVar5,1), Level == 0x1c))  {
                DrawCreatures(&OppTubCreature,1,uVar5,0);
              }
              DrawNextVehicle(uVar5);
              if (FRAME == FRAMES + -1) {
                DrawExtraCreatures();
                goto LAB_80052b3c;
              }
            }
            if (cut_on == 0) {
              DrawChases(uVar5);
              DrawTempCharacter(uVar5);
              DrawTempCharacter2(uVar5);
            }
          }
          FRAME = FRAME + 1;
        } while (FRAME < FRAMES);
      }
      pause = (void *)Paused;
      if (screendump != 0) {
        pause = PadData.field2_0x8;
      }
      if ((pause_rndr_on == 0) && (local_9c != 0)) {
        if (pause == (void *)0x0) {
          fVar3 = 1.0;
        }
        else {
          fVar3 = 0.0;
        }
        NuWaterSpeed(fVar3);
        CurrentCausticTexture = (CurrentCausticTexture + 1) % 0x1f;
        TBDRAWSTART(2,"World");
        if ((LDATA->flags & 4) != 0) {
          tbslotBegin(app_tbset,10);
          if (world_vd == (visidata_s *)0x0) {
            ApplyVisiTable(world_scene[0],&pCam->pos);
          }
          else if (pVIS != (nugspline_s *)0x0) {
            visiSetSplineKnot(world_vd,((int)pVIS - (int)world_scene[0]->splines) * -0x55555555 >>  2
                              ,iVIS);
          }
          if ((DRAWWORLDHACK != 0) && (Level != 0x18)) {
            DrawWorld();
          }
          tbslotEnd(app_tbset,10);
        }
        TBDRAWEND(2);
        TBDRAWSTART(3,"Deb");
        if ((cut_on == 0) && (DrawVehicleTrail(), cut_on == 0)) {
          DrawDeb3();
          DrawProjectiles();
        }
        TBDRAWEND(3);
        if ((level_part_2 == 0) && (cut_on == 0)) {
          TBDRAWSTART(4,"Crates");
          DrawCrates();
          TBDRAWEND(4);
          TBDRAWSTART(5,"Wumpa");
          DrawWumpa();
          TBDRAWEND(5);
          TBDRAWSTART(6,"Misc");
          if ((LDATA->flags & 1) != 0) {
            if (((((plr->used != '\0') && (pmVar8 = (plr->obj).mask, pmVar8 != (mask *)0x0)) &&
                 (pmVar8->active != 0)) && ((LDATA->flags & 0xe00) == 0)) &&
               (((VEHICLECONTROL != 1 || ((LBIT._0_4_ & 0x10 | LBIT._4_4_ & 0x5042000) == 0)) &&
                ((Cursor.menu != '$' && (advice_wait == 0)))))) {
              DrawMask();
            }
            DrawMaskFeathers();
          }
          DrawKabooms();
          DrawTransporters();
          DrawAwards();
          DrawBug();
          DrawRings();
          DrawTarget();
          DrawLevel();
          DrawGameCut();
          if (Level == 0x1d) {
            DrawCarpet();
          }
          NuRndrShadPolys(ShadowMat);
          NuRndrWaterRip(DebMat[4]);
        }
        TBDRAWEND(6);
        if (Cursor.menu == '\x13') {
          DrawCutMovie();
        }
        if (cut_on == 0) {
          NuRndrFootPrints(DebMat[4],(float *)foot_u,(float *)foot_v);
        }
        tbslotEnd(app_tbset,9);
        NuWaterRender();
        NuRndrEndScene();
        paused = (void *)0x0;
        if (Cursor.menu != '\f') {
          paused = pause;
        }
        NuRndrFx((int)paused,&Character[0].obj.pos);
        tbslotBegin(app_tbset,0xe);
        NuRndrBeginScene(1);
        DrawCrateExplosions();
        NuGlassRenderStatic();
        NuRndrEndScene();
        force_glass_screencopy_enable = 1;
        tbslotEnd(app_tbset,0xe);
        tbslotBegin(app_tbset,2);
        NuRndrBeginScene(1);
        if ((((LBIT._4_4_ & 0x200000a1) != 0) && (cut_on == 0)) &&
           ((Level != 7 || ((sVar4 = (player->obj).RPos.iALONG, sVar4 < 0x67 || (0x91 < sVar4))))) )
        {
          if ((Level == 5) && ((sVar4 = (player->obj).RPos.iALONG, 0x6d < sVar4 && (sVar4 < 0x79)) ))
          {
            if (sVar4 == 0x6e) {
              PadData.field3_0xc = (void *)(float)(dVar17 - (double)(player->obj).RPos.fALONG);
              DoClouds(Paused);
            }
            if ((player->obj).RPos.iALONG == 0x78) {
              PadData.field3_0xc = (void *)(player->obj).RPos.fALONG;
              DoClouds(Paused);
            }
          }
          else {
            PadData.field3_0xc = (void *)(float)dVar17;
            DoClouds(Paused);
          }
        }
        if ((((LDATA->flags & 0x10) != 0) && (NODEBRIS == 0)) && (DRAWDEBRISHACK != 0)) {
          DebrisDraw((int)pause);
        }
        NuRndrEndScene();
        tbslotEnd(app_tbset,2);
      }
      GameVP();
      HandlePauseRender((int)pause);
      TBDRAWSTART(7,"Panel");
      iVar10 = NuRndrBeginScene(1);
      if (iVar10 != 0) {
        bVar1 = local_98 == 0;
        if ((bVar1) || (PLAYERCOUNT == 0)) {
          if (Cursor.menu == '\"') {
            _LODWORD = (double)CONCAT44(0x43300000,SHEIGHT << 3 ^ 0x80000000);
            iVar10 = (int)((float)(dVar17 - (double)(float)((double)(float)((double)(POWERTEXTY +
                                                                                    0.7) + dVar17)  *
                                                           dVar15)) *
                          (float)(_LODWORD - 4503601774854144.0));
            iVar9 = (int)((float)(dVar17 - (double)(float)((double)(float)((double)(POWERTEXTY -
                                                                                   0.75) + dVar17)  *
                                                          dVar15)) *
                         (float)(_LODWORD - 4503601774854144.0));
            _LODWORD = (double)(longlong)iVar9;
            NuRndrRect2di(0,iVar10,SWIDTH << 4,iVar9 - iVar10,0x18777777,fade_mtl);
          }
        }
        else {
          fVar3 = (plr->obj).die_duration;
          fVar6 = (plr->obj).die_time * 3.0;
          if (fVar3 < fVar6) {
            fVar6 = fVar3;
          }
          uVar5 = (uint)((fVar6 / fVar3) * 255.0);
          _LODWORD = (double)(longlong)(int)uVar5;
          NuRndrRect2di(0,0,SWIDTH << 4,SHEIGHT << 3,uVar5 | uVar5 << 8 | uVar5 << 0x10 | 0x800000 00
                        ,fade_mtl);
        }
        NuRndrClear(10,0,1.0);
        if (!bVar1) {
          DrawCreatures(Character,1,1,0);
        }
        if ((((((LDATA->flags & 1) != 0) && (plr->used != '\0')) &&
             ((pmVar8 = (plr->obj).mask, pmVar8 != (mask *)0x0 &&
              ((pmVar8->active != 0 && ((LDATA->flags & 0xe00) == 0)))))) &&
            ((VEHICLECONTROL != 1 || ((LBIT._0_4_ & 0x10 | LBIT._4_4_ & 0x5042000) == 0)))) &&
           ((Cursor.menu == '$' || (advice_wait != 0)))) {
          DrawMask();
        }
        DrawPanel();
        if ((new_mode != -1) || (new_level != -1)) {
          fade_rate = 8;
        }
        NuRndrEndScene();
      }
      iVar10 = NuRndrBeginScene(1);
      if (iVar10 != 0) {
        DrawFade();
        NuRndrEndScene();
      }
      TBDRAWEND(7);
      tbslotEnd(app_tbset,0);
      iVar10 = nuvideo_global_vbcnt - frameout_count;
      frameout_count = nuvideo_global_vbcnt;
      frameout = iVar10 + -1;
      if (frameout < 0) {
        frameout = 0;
      }
      if (bVar2) {
        frameout = 0;
        local_94 = local_94 + -1;
      }
      if (pause_rndr_on != 0) {
        local_94 = 2;
      }
      DBTimerEnd(3);
      DBTimerEnd(1);
      NuRndrSwapScreen(1);
      NuDynamicWaterUpdate(0);
      Reseter();
      GC_DiskErrorPoll();
    }
    pause_dir = 0;
    Paused = 0;
    if (((plr_died != 0) && (best_cRPos != (RPos_s *)0x0)) && (Rail[best_cRPos->iRAIL].type == '\0 ')
       ) {
      LostLife = 1;
    }
    plr_died = 0;
    iVar10 = 2;
    do {
      iVar9 = NuRndrBeginScene(1);
      if (iVar9 != 0) {
        NuRndrClear(0xb,0,1.0);
        NuRndrEndScene();
      }
      NuRndrSwapScreen(1);
      iVar9 = new_mode;
      iVar10 = iVar10 + -1;
    } while (0 < iVar10);
    if (new_mode == -1) break;
    PauseGameAudio(0);
    NuSoundStopStream(4);
    NuSoundUpdate();
    GameMode = new_mode;
  } while( true );
  NuSoundKillAllAudio();
  NuSoundUpdate();
  ClosePauseRender();
  if (Pad[0] != (nupad_s *)0x0) {
    NuPs2PadSetMotors(Pad[0],0,0);
  }
  if (Pad[1] != (nupad_s *)0x0) {
    NuPs2PadSetMotors(Pad[1],0,0);
  }
  ReleaseVisiTable();
  CloseCutMovie(0);
  CloseCreatures();
  CloseCrates();
  InstClose();
  CloseClouds();
  ResetBug();
  NuSceneDestroy(font3d_scene2);
  font3d_scene = (nugscn_s *)0x0;
  font3d_scene2 = (nuscene_s *)0x0;
  font3d_initialised = 0;
  CloseXboxEffectSystem();
  if (PLAYERCOUNT == 0) {
    last_character = iVar9;
  }
  else {
    last_character = (int)(plr->obj).character;
  }
  if (last_character != -1) {
    last_used_character = last_character;
  }
  last_level = Level;
  last_hub = HubFromLevel(Level);
  GetSpaceCut(last_level,new_level);
  Level = new_level;
  number_of_times_played = number_of_times_played + 1;
  goto LAB_80051ba4;
}



void InitTexAnimScripts(void)

{
  struct nudathdr_s *dfanim;
  char *ats_file;
  union variptr_u buff [2];
  
  NuTexAnimProgSysInit();
  ats_file = (char *)texanimscripts;
  NuDatSet(0);
  buff[0].voidptr = texanimbuff;
  memset(texanimbuff,0,0x8000);
  dfanim = (nudathdr_s *)texanimscripts[0].path;
  while (dfanim != (nudathdr_s *)0x0) {
    if (((uint)*(nudathdr_s **)((int)ats_file + 8) & LBIT._0_4_ |
        (uint)*(nudathdr_s **)((int)ats_file + 0xc) & LBIT._4_4_) != 0) {
      NuTexAnimProgReadScript(buff,(char *)*(nudathdr_s **)ats_file);
    }
    ats_file = (char *)((int)ats_file + 0x10);
    dfanim = *(nudathdr_s **)ats_file;
  }
  NuDatSet(0);
  return;
}

void InitCreatureModels(void)

{
  struct creature_s *Character_ptr;
  int iVar1;
  
  iVar1 = 9;
  Character_ptr = Character;
  do {
    Character_ptr->used = '\0';
    Character_ptr->on = '\0';
    Character_ptr->off_wait = '\0';
    Character_ptr = Character_ptr + 1;
    iVar1 = iVar1 + -1;
  } while (iVar1 != 0);
  GAMEOBJECTCOUNT = 0;
  InitSkinning(0);
  LoadCharacterModels();
  CloseSkinning();
  return;
}

*/