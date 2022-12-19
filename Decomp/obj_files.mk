INIT_O_FILES :=                                     \
    $(OBJ_DIR)/asm/sections/init.o

EXTAB_O_FILES :=                                    \
    $(OBJ_DIR)/asm/sections/extab.o

EXTABINDEX_O_FILES :=                               \
    $(OBJ_DIR)/asm/sections/extabindex.o

TEXT_O_FILES :=                                     \
    $(OBJ_DIR)/asm/gamecode/ai.o		    \
    $(OBJ_DIR)/asm/gamecode/bug.o	            \
    $(OBJ_DIR)/asm/gamecode/camera.o	            \
    $(OBJ_DIR)/asm/gamecode/chase.o                 \
    $(OBJ_DIR)/asm/gamecode/cloudfx.o               \
    $(OBJ_DIR)/asm/gamecode/crate.o	            \
    $(OBJ_DIR)/asm/gamecode/creature.o	            \
    $(OBJ_DIR)/asm/gamecode/credits.o	            \
    $(OBJ_DIR)/asm/gamecode/cut.o	            \
    $(OBJ_DIR)/asm/gamecode/deb3.o	            \
    $(OBJ_DIR)/asm/gamecode/font3d.o	            \
    $(OBJ_DIR)/asm/gamecode/game.o	            \
    $(OBJ_DIR)/asm/gamecode/game_deb.o	            \
    $(OBJ_DIR)/asm/gamecode/game_obj.o	            \
    $(OBJ_DIR)/asm/gamecode/inst.o	            \
    $(OBJ_DIR)/asm/gamecode/jeep.o	            \
    $(OBJ_DIR)/asm/gamecode/lights.o	            \
    $(OBJ_DIR)/asm/gamecode/listman.o	            \
    $(OBJ_DIR)/asm/gamecode/loadsave.o	            \
    $(OBJ_DIR)/asm/gamecode/main.o	            \
    $(OBJ_DIR)/asm/gamecode/move.o	            \
    $(OBJ_DIR)/asm/gamecode/panel.o	            \
    $(OBJ_DIR)/asm/gamecode/sfx.o	            \
    $(OBJ_DIR)/asm/gamecode/text.o	            \
    $(OBJ_DIR)/asm/gamecode/vehicle.o	            \
    $(OBJ_DIR)/asm/gamecode/vehsupp.o	            \
    $(OBJ_DIR)/asm/gamecode/vehterr.o	            \
    $(OBJ_DIR)/asm/gamecode/visi.o	            \
    $(OBJ_DIR)/asm/gamecode/visidat.o	            \
    $(OBJ_DIR)/asm/gamelib/debris.o	            \
    $(OBJ_DIR)/asm/gamelib/edanim.o	            \
    $(OBJ_DIR)/asm/gamelib/edbits.o	            \
    $(OBJ_DIR)/asm/gamelib/edfile.o	            \
    $(OBJ_DIR)/asm/gamelib/edgra.o	            \
    $(OBJ_DIR)/asm/gamelib/edobj.o	            \
    $(OBJ_DIR)/asm/gamelib/edptl.o	            \
    $(OBJ_DIR)/asm/gamelib/gcutscn.o	            \
    $(OBJ_DIR)/asm/gamelib/glutils.o	            \
    $(OBJ_DIR)/asm/gamelib/nubridge.o	            \
    $(OBJ_DIR)/asm/gamelib/nuwind.o	            \
    $(OBJ_DIR)/asm/gamelib/terrain.o	            \
    $(OBJ_DIR)/asm/nu3dx/nuanim.o	            \
    $(OBJ_DIR)/asm/nu3dx/nucamera.o	            \
    $(OBJ_DIR)/asm/nu3dx/nucvtskn.o	            \
    $(OBJ_DIR)/asm/nu3dx/nuglass.o	            \
    $(OBJ_DIR)/asm/nu3dx/nugobj.o	            \
    $(OBJ_DIR)/asm/nu3dx/nuhaze.o	            \
    $(OBJ_DIR)/asm/nu3dx/nuhgobj.o	            \
    $(OBJ_DIR)/asm/nu3dx/nulight.o	            \
    $(OBJ_DIR)/asm/nu3dx/numtl.o	            \
    $(OBJ_DIR)/asm/nu3dx/nurndr.o	            \
    $(OBJ_DIR)/asm/nu3dx/nuscene.o	            \
    $(OBJ_DIR)/asm/nu3dx/nutex.o	            \
    $(OBJ_DIR)/asm/nu3dx/nutexanm.o	            \
    $(OBJ_DIR)/asm/nu3dx/nuvport.o	            \
    $(OBJ_DIR)/asm/nu3dx/nuwater.o	            \
    $(OBJ_DIR)/asm/nucore/nuerror.o	            \
    $(OBJ_DIR)/asm/nucore/nufile.o	            \
    $(OBJ_DIR)/asm/nucore/nufpar.o	            \
    $(OBJ_DIR)/asm/nucore/numem.o	            \
    $(OBJ_DIR)/asm/numath/nu_asm.o	            \
    $(OBJ_DIR)/asm/numath/nufloat.o	            \
    $(OBJ_DIR)/asm/numath/numtx.o	            \
    $(OBJ_DIR)/asm/numath/nuplane.o	            \
    $(OBJ_DIR)/asm/numath/nuquat.o	            \
    $(OBJ_DIR)/asm/numath/nurand.o	            \
    $(OBJ_DIR)/asm/numath/nutrig.o	            \
    $(OBJ_DIR)/asm/numath/nuvec.o	            \
    $(OBJ_DIR)/asm/numath/nuvec4.o	            \
    $(OBJ_DIR)/asm/nuraster/dxframe.o	            \
    $(OBJ_DIR)/asm/nusound/NuSound.o	            \
    $(OBJ_DIR)/asm/nuxbox/crash_xbox.o	            \
    $(OBJ_DIR)/asm/nuxbox/dummyfunc.o	            \
    $(OBJ_DIR)/asm/nuxbox/ps2dma.o	            \
    $(OBJ_DIR)/asm/sections/text.o                  \
    $(OBJ_DIR)/asm/sections/text2.o

CTORSDTORSRODATA_O_FILES :=                         \
    $(OBJ_DIR)/asm/sections/ctorsDtorsRodata.o

DATA_O_FILES :=                                     \
    $(OBJ_DIR)/asm/sections/data.o

BSS_O_FILES :=                                      \
    $(OBJ_DIR)/asm/sections/bss.o

SDATA_O_FILES :=                                    \
    $(OBJ_DIR)/asm/sections/sdata.o

SBSS_O_FILES :=                                     \
    $(OBJ_DIR)/asm/sections/sbss.o

SDATA2_O_FILES :=                                   \
    $(OBJ_DIR)/asm/sections/sdata2.o