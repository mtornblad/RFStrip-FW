COMPONENTS_PATH = ../../../../BitCloud/Components
APP_NAME = ZLLDemo
CONFIG_NAME = All_StdlinkSec_SamR21_Atsamr21g18a_Rf233_48MHz_Gcc
LIST_PATH = $(CONFIG_NAME)/List
EXE_PATH = $(CONFIG_NAME)/Exe
OBJ_PATH = $(CONFIG_NAME)/Obj

include ../../../../BitCloud/lib/Makerules_Atsamr21g18a_Gcc

DEFINES = \
  -DBOARD_SAMR21 \
  -DATSAMR21G18A \
  -D__ATMEL_BITCLOUD__ \
  -DSTDLINK_SECURITY_MODE \
  -DAT86RF233 \
  -DHAL_48MHz \
  -DSTACK_TYPE_ALL 

INCLUDES = \
  -I../.. \
  -I../../common/include \
  -I../../Light/include \
  -I../../ColorSceneRemote/include \
  -I../../Bridge/include \
  -I../../../../BitCloud/Components/ZLLPlatform \
  -I../../../../BitCloud/Components/ZLLPlatform/ZLL/N_AddressManager/include \
  -I../../../../BitCloud/Components/ZLLPlatform/ZLL/N_Beacon/include \
  -I../../../../BitCloud/Components/ZLLPlatform/ZLL/N_Binding/include \
  -I../../../../BitCloud/Components/ZLLPlatform/ZLL/N_Cmi/include \
  -I../../../../BitCloud/Components/ZLLPlatform/ZLL/N_Connection/include \
  -I../../../../BitCloud/Components/ZLLPlatform/ZLL/N_DeviceInfo/include \
  -I../../../../BitCloud/Components/ZLLPlatform/ZLL/N_InterPan/include \
  -I../../../../BitCloud/Components/ZLLPlatform/ZLL/N_LinkInitiator/include \
  -I../../../../BitCloud/Components/ZLLPlatform/ZLL/N_LinkTarget/include \
  -I../../../../BitCloud/Components/ZLLPlatform/ZLL/N_Radio/include \
  -I../../../../BitCloud/Components/ZLLPlatform/ZLL/N_Security/include \
  -I../../../../BitCloud/Components/ZLLPlatform/ZLL/N_Zdp/include \
  -I../../../../BitCloud/Components/ZLLPlatform/ZLL/S_Nv/include \
  -I../../../../BitCloud/Components/ZLLPlatform/ZLL/N_Zcl_Framework/include \
  -I../../../../BitCloud/Components/ZLLPlatform/ZLL/N_EndDeviceRobustness/include \
  -I../../../../BitCloud/Components/ZLLPlatform/ZLL/N_ReconnectHandler/include \
  -I../../../../BitCloud/Components/ZLLPlatform/Infrastructure/N_Address/include \
  -I../../../../BitCloud/Components/ZLLPlatform/Infrastructure/N_Beacon/include \
  -I../../../../BitCloud/Components/ZLLPlatform/Infrastructure/N_ErrH/include \
  -I../../../../BitCloud/Components/ZLLPlatform/Infrastructure/N_Fsm/include \
  -I../../../../BitCloud/Components/ZLLPlatform/Infrastructure/N_Log/include \
  -I../../../../BitCloud/Components/ZLLPlatform/Infrastructure/N_Memory/include \
  -I../../../../BitCloud/Components/ZLLPlatform/Infrastructure/N_Task/include \
  -I../../../../BitCloud/Components/ZLLPlatform/Infrastructure/N_Timer/include \
  -I../../../../BitCloud/Components/ZLLPlatform/Infrastructure/N_Types/include \
  -I../../../../BitCloud/Components/ZLLPlatform/Infrastructure/N_Util/include \
  -I../../../../BitCloud/Components/ZLLPlatform/Infrastructure/N_Init/include \
  -I../../../../BitCloud/Components/Security/SoftAes \
  -I../../../../BitCloud/Components/BSP/SAMR21/include \
  -I../../../../BitCloud/Components/SystemEnvironment/include \
  -I../../../../BitCloud/Components/ZCL/include/private \
  -I../../../../BitCloud/Components/ZCL/include \
  -I../../../../BitCloud/Components/ZCL/include/private \
  -I../../../../BitCloud/Components/ZCL/ZLL/include \
  -I../../../../BitCloud/lib \
  -I../../../../BitCloud/Components/HAL/include \
  -I../../../../BitCloud/Components/BSP \
  -I../../../../BitCloud/Components/BSP/include \
  -I../../../../BitCloud/Components/NWK/include \
  -I../../../../BitCloud/Components/NWK/include/private \
  -I../../../../BitCloud/Components/ZDO/include \
  -I../../../../BitCloud/Components/ZDO/include/private \
  -I../../../../BitCloud/Components/APS/include \
  -I../../../../BitCloud/Components/APS/include/private \
  -I../../../../BitCloud/Components/SystemEnvironment/include \
  -I../../../../BitCloud/Components/ConfigServer/include \
  -I../../../../BitCloud/Components/ConfigServer/include/private \
  -I../../../../BitCloud/Components/PersistDataServer/include \
  -I../../../../BitCloud/Components/PersistDataServer/std/include \
  -I../../../../BitCloud/Components/PersistDataServer/wl/include \
  -I../../../../BitCloud/Components/ZLLPlatform/Infrastructure/N_Types/include \
  -I../../../../BitCloud/Components/ZLLPlatform/Infrastructure/N_Util/include \
  -I../../../../BitCloud/Components/ZLLPlatform/Infrastructure/N_Timer/include \
  -I../../../../BitCloud/Components/ZLLPlatform/Infrastructure/N_Task/include \
  -I../../../../BitCloud/Components/ZLLPlatform/Infrastructure/N_ErrH/include \
  -I../../../../BitCloud/Components/ZLLPlatform/Infrastructure/N_Log/include \
  -I../../../../BitCloud/Components/ZLLPlatform/Infrastructure/N_Memory/include \
  -I../../../../BitCloud/Components/ZLLPlatform/Infrastructure/N_Init/include \
  -I../../../../BitCloud/Components/ZLLPlatform/ZLL/S_Nv/include \
  -I../../../../BitCloud/Components/ZLLPlatform/ZLL/S_XNv/include \
  -I../../../../BitCloud/Components/ZLLPlatform/ZLL/D_Nv/include \
  -I../../../../BitCloud/Components/ZLLPlatform/ZLL/D_XNv/include \
  -I../../../../BitCloud/Components/ZLLPlatform/ZLL/D_XNv/src \
  -I../../../../BitCloud/Components/ZLLPlatform/ZLL/S_XNv/src \
  -I../../../../BitCloud/Components/Security/TrustCentre/include \
  -I../../../../BitCloud/Components/Security/ServiceProvider/include \
  -I../../../../BitCloud/Components/HAL/drivers/include \
  -I../../../../BitCloud/Components/HAL/drivers/VCP/include \
  -I../../../../BitCloud/Components/HAL/cortexm0+/atsamr21/common/include \
  -I../../../../BitCloud/Components/MAC_PHY/include \
  -I../../../../BitCloud/Components/MAC_PHY/MAC_ENV/include \
  -I../../../../BitCloud/Components/MAC_PHY/MAC_HWI/include \
  -I../../../../BitCloud/Components/MAC_PHY/MAC_HWD_PHY/include \
  -I../../../../BitCloud/Components/MAC_PHY/MAC_HWD_PHY/RF231_RF212/PHY/include \
  -I../../../../BitCloud/Components/MAC_PHY/MAC_HWD_PHY/RF231_RF212/MAC_HWD/include \
  -I../../../../BitCloud/Components/MAC_PHY/MAC_HWD_PHY/RF231_RF212/MACHWD_ZGP/include 

LIBS = \
  ../../../../BitCloud/lib/libBc_All_StdlinkSec_Atsamr21g18a_Rf233_Gcc.a \
  ../../../../BitCloud/lib/libHAL_SamR21_Atsamr21g18a_48MHz_Gcc.a \
  ../../../../BitCloud/lib/lib_Touch_SAMR21_iar_5.0.3.a 

SRCS = \
  ../../Bridge/src/bridgeIdentifyCluster.c \
  ../../Bridge/src/bridgeLightsDiscovery.c \
  ../../Bridge/src/bridgeClusters.c \
  ../../Bridge/src/bridgeCommissioningCluster.c \
  ../../Bridge/src/bridgeGroupsCluster.c \
  ../../Bridge/src/bridgeLevelControlCluster.c \
  ../../Bridge/src/bridgeLinkInfoCluster.c \
  ../../Bridge/src/bridge.c \
  ../../Bridge/src/bridgeBasicCluster.c \
  ../../Bridge/src/bridgeScenesCluster.c \
  ../../Bridge/src/bridgeColorControlCluster.c \
  ../../Bridge/src/bridgeConsole.c \
  ../../Bridge/src/bridgeOnOffCluster.c \
  ../../Bridge/src/bridgeOtaCluster.c \
  ../../Light/src/LightScenesCluster.c \
  ../../Light/src/LightOnOffCluster.c \
  ../../Light/src/Light.c \
  ../../Light/src/LightCommissioningCluster.c \
  ../../Light/src/LightColorSchemesConversion.c \
  ../../Light/src/LightTesting.c \
  ../../Light/src/LightIdentifyCluster.c \
  ../../Light/src/LightPdt.c \
  ../../Light/src/LightClusters.c \
  ../../Light/src/lightOtaCluster.c \
  ../../Light/src/LightBasicCluster.c \
  ../../Light/src/LightGroupsCluster.c \
  ../../Light/src/LightConsole.c \
  ../../Light/src/LightColorControlCluster.c \
  ../../Light/src/LightLevelControlCluster.c \
  ../../ColorSceneRemote/src/colorSceneRemoteTesting.c \
  ../../ColorSceneRemote/src/colorSceneRemoteOtaCluster.c \
  ../../ColorSceneRemote/src/colorSceneRemoteCommissioningCluster.c \
  ../../ColorSceneRemote/src/buttonHandlers.c \
  ../../ColorSceneRemote/src/colorSceneRemoteColorControlCluster.c \
  ../../ColorSceneRemote/src/colorSceneRemoteFsm.c \
  ../../ColorSceneRemote/src/colorSceneRemoteClusters.c \
  ../../ColorSceneRemote/src/colorSceneRemoteOnOffCluster.c \
  ../../ColorSceneRemote/src/colorSceneRemoteGroupsCluster.c \
  ../../ColorSceneRemote/src/colorSceneRemoteLevelControlCluster.c \
  ../../ColorSceneRemote/src/colorSceneRemotePdt.c \
  ../../ColorSceneRemote/src/colorSceneRemoteScenesCluster.c \
  ../../ColorSceneRemote/src/colorSceneRemoteLinkInfoCluster.c \
  ../../ColorSceneRemote/src/colorSceneRemote.c \
  ../../ColorSceneRemote/src/colorSceneRemoteBasicCluster.c \
  ../../ColorSceneRemote/src/colorSceneRemoteConsole.c \
  ../../ColorSceneRemote/src/colorSceneRemoteIdentifyCluster.c \
  ../../common/src/commandManager.c \
  ../../common/src/console.c \
  ../../common/src/uartManager.c \
  ../../common/src/N_PacketDistributor.c \
  ../../common/src/errH.c \
  ../../common/src/debug.c \
  ../../common/src/networkJoining.c \
  ../../../../BitCloud/Components/PersistDataServer/std/src/stdPdsMemAccess.c \
  ../../../../BitCloud/Components/PersistDataServer/std/src/stdPdsTimer.c \
  ../../../../BitCloud/Components/PersistDataServer/std/src/stdPdsMem.c \
  ../../../../BitCloud/Components/PersistDataServer/std/src/stdPdsWriteData.c \
  ../../../../BitCloud/Components/PersistDataServer/std/src/stdPdsCrcService.c \
  ../../../../BitCloud/Components/PersistDataServer/std/src/stdPdsInit.c \
  ../../../../BitCloud/Components/PersistDataServer/std/src/stdPdsEvents.c \
  ../../../../BitCloud/Components/PersistDataServer/std/src/stdPdsDataServer.c \
  ../../../../BitCloud/Components/PersistDataServer/src/fakePds.c \
  ../../../../BitCloud/Components/PersistDataServer/wl/src/wlPdsTypesConverter.c \
  ../../../../BitCloud/Components/PersistDataServer/wl/src/wlPdsDataServer.c \
  ../../../../BitCloud/Components/PersistDataServer/wl/src/wlPdsSecurity.c \
  ../../../../BitCloud/Components/PersistDataServer/wl/src/wlPdsInit.c \
  ../../../../BitCloud/Components/PersistDataServer/wl/src/wlPdsTaskManager.c \
  ../../../../BitCloud/Components/ZLLPlatform/ZLL/S_Nv/src/S_Nv-SamR21.c \
  ../../../../BitCloud/Components/ZLLPlatform/ZLL/S_XNv/src/S_XNv.c \
  ../../../../BitCloud/Components/ZLLPlatform/ZLL/S_Nv/src/S_Nv-ATmega.c \
  ../../../../BitCloud/Components/ZLLPlatform/ZLL/D_XNv/src/D_XNv-SamR21.c \
  ../../../../BitCloud/Components/ZLLPlatform/ZLL/S_Nv/src/S_Nv-External.c \
  ../../../../BitCloud/Components/ZLLPlatform/ZLL/D_Nv/src/D_Nv.c \
  ../../../../BitCloud/Components/ZLLPlatform/ZLL/S_Nv/src/S_Nv_Stub.c \
  ../../../../BitCloud/Components/SystemEnvironment/src/sysIdleHandler.c \
  ../../../../BitCloud/Components/SystemEnvironment/src/sysSleep.c \
  ../../../../BitCloud/Components/SystemEnvironment/src/sysStat.c \
  ../../../../BitCloud/Components/SystemEnvironment/src/sysEventsHandler.c \
  ../../../../BitCloud/Components/SystemEnvironment/src/sysQueue.c \
  ../../../../BitCloud/Components/SystemEnvironment/src/sysUtils.c \
  ../../../../BitCloud/Components/SystemEnvironment/src/sysAssert.c \
  ../../../../BitCloud/Components/SystemEnvironment/src/sysDuplicateTable.c \
  ../../../../BitCloud/Components/SystemEnvironment/src/sysInit.c \
  ../../../../BitCloud/Components/SystemEnvironment/src/sysTaskManager.c \
  ../../../../BitCloud/Components/SystemEnvironment/src/sysTimer.c \
  ../../../../BitCloud/Components/SystemEnvironment/src/sysMutex.c \
  ../../../../BitCloud/Components/SystemEnvironment/src/dbg.c \
  ../../../../BitCloud/Components/ZLLPlatform/ZLL/N_Connection/src/N_Connection_ReconnectHandler.c \
  ../../../../BitCloud/Components/ZLLPlatform/ZLL/N_Connection/src/N_ConnectionAssociation.c \
  ../../../../BitCloud/Components/ZLLPlatform/ZLL/N_Connection/src/N_ConnectionCommon.c \
  ../../../../BitCloud/Components/ZLLPlatform/ZLL/N_Connection/src/N_ConnectionEnddevice.c \
  ../../../../BitCloud/Components/ZLLPlatform/ZLL/N_Connection/src/N_ConnectionRouter.c \
  ../../../../BitCloud/Components/ZLLPlatform/ZLL/N_EndDeviceRobustness/src/N_EndDeviceRobustness.c \
  ../../../../BitCloud/Components/ZLLPlatform/ZLL/N_Cmi/src/N_Cmi.c \
  ../../../../BitCloud/Components/ZLLPlatform/ZLL/N_InterPan/src/N_InterPan.c \
  ../../../../BitCloud/Components/ZLLPlatform/ZLL/N_InterPan/src/N_InterPanBuffers.c \
  ../../../../BitCloud/Components/ZLLPlatform/ZLL/N_Binding/src/N_Binding.c \
  ../../../../BitCloud/Components/ZLLPlatform/ZLL/N_DeviceInfo/src/N_DeviceInfo.c \
  ../../../../BitCloud/Components/ZLLPlatform/ZLL/N_Radio/src/N_Radio.c \
  ../../../../BitCloud/Components/ZLLPlatform/ZLL/N_Zdp/src/N_Zdp.c \
  ../../../../BitCloud/Components/ZLLPlatform/ZLL/N_Security/src/N_Security_Calc.c \
  ../../../../BitCloud/Components/ZLLPlatform/ZLL/N_Security/src/N_Security.c \
  ../../../../BitCloud/Components/ZLLPlatform/ZLL/N_ReconnectHandler/src/N_ReconnectHandler.c \
  ../../../../BitCloud/Components/ZLLPlatform/ZLL/N_AddressManager/src/N_AddressManager.c \
  ../../../../BitCloud/Components/ZLLPlatform/ZLL/N_LinkTarget/src/N_LinkTarget.c \
  ../../../../BitCloud/Components/ZLLPlatform/ZLL/N_LinkInitiator/src/N_LinkInitiator.c \
  ../../../../BitCloud/Components/ZLLPlatform/Infrastructure/N_Fsm/src/N_Fsm.c \
  ../../../../BitCloud/Components/ZLLPlatform/Infrastructure/N_Log/src/N_Log.c \
  ../../../../BitCloud/Components/ZLLPlatform/Infrastructure/N_Util/src/N_Util.c \
  ../../../../BitCloud/Components/ZLLPlatform/Infrastructure/N_Memory/src/N_Memory-Atmel.c \
  ../../../../BitCloud/Components/ZLLPlatform/Infrastructure/N_Task/src/N_Task-Internal-Atmel.c \
  ../../../../BitCloud/Components/ZLLPlatform/Infrastructure/N_Task/src/N_Task.c \
  ../../../../BitCloud/Components/ZLLPlatform/Infrastructure/N_Address/src/N_Address.c \
  ../../../../BitCloud/Components/ZLLPlatform/Infrastructure/N_Timer/src/N_Timer-Internal-Atmel.c \
  ../../../../BitCloud/Components/ZLLPlatform/Infrastructure/N_Timer/src/N_Timer.c \
  ../../../../BitCloud/Components/ZLLPlatform/Infrastructure/N_ErrH/src/N_ErrH.c \
  ../../../../BitCloud/Components/ZCL/src/zclOtauClientDiscovery.c \
  ../../../../BitCloud/Components/ZCL/src/zclOtauClientPdt.c \
  ../../../../BitCloud/Components/ZCL/src/zclSecurityManager.c \
  ../../../../BitCloud/Components/ZCL/src/zclParser.c \
  ../../../../BitCloud/Components/ZCL/src/zclOtauClientDownload.c \
  ../../../../BitCloud/Components/ZCL/src/zclTaskManager.c \
  ../../../../BitCloud/Components/ZCL/src/zclOtauClientQuery.c \
  ../../../../BitCloud/Components/ZCL/src/zclMemoryManager.c \
  ../../../../BitCloud/Components/ZCL/src/zclCommandAnalyzer.c \
  ../../../../BitCloud/Components/ZCL/src/zclOtauClientUpgrade.c \
  ../../../../BitCloud/Components/ZCL/src/zclOtauClient.c \
  ../../../../BitCloud/Components/ZCL/src/zclOtauManager.c \
  ../../../../BitCloud/Components/ZCL/src/zclAttributes.c \
  ../../../../BitCloud/Components/ZCL/src/zcl.c \
  ../../../../BitCloud/Components/ZCL/src/zclKeyEstablishmentCluster.c \
  ../../../../BitCloud/Components/ZCL/src/zclOtauServer.c \
  ../../../../BitCloud/Components/BSP/SAMR21/src/bspUsart.c \
  ../../../../BitCloud/Components/BSP/SAMR21/src/joyStick.c \
  ../../../../BitCloud/Components/BSP/SAMR21/src/bspTempSensor.c \
  ../../../../BitCloud/Components/BSP/SAMR21/src/buttons.c \
  ../../../../BitCloud/Components/BSP/SAMR21/src/bspAntDiversity.c \
  ../../../../BitCloud/Components/BSP/SAMR21/src/fakeBSP.c \
  ../../../../BitCloud/Components/BSP/SAMR21/src/bspUsbVbus.c \
  ../../../../BitCloud/Components/BSP/SAMR21/src/lcd.c \
  ../../../../BitCloud/Components/BSP/SAMR21/src/xyl2rgb.c \
  ../../../../BitCloud/Components/BSP/SAMR21/src/MaxL.c \
  ../../../../BitCloud/Components/BSP/SAMR21/src/qTouch.c \
  ../../../../BitCloud/Components/BSP/SAMR21/src/bspUid.c \
  ../../../../BitCloud/Components/BSP/SAMR21/src/bspI2c.c \
  ../../../../BitCloud/Components/BSP/SAMR21/src/bspVoltageSensor.c \
  ../../../../BitCloud/Components/BSP/SAMR21/src/bspTaskManager.c \
  ../../../../BitCloud/Components/BSP/SAMR21/src/hs2xy.c \
  ../../../../BitCloud/Components/BSP/SAMR21/src/leds.c \
  ../../../../BitCloud/Components/BSP/SAMR21/src/touch.c \
  ../../../../BitCloud/Components/BSP/SAMR21/src/bspSpi.c \
  ../../../../BitCloud/Components/ConfigServer/src/csPersistentMem.c \
  ../../../../BitCloud/Components/ConfigServer/src/csMem.c \
  ../../../../BitCloud/Components/ConfigServer/src/configServer.c 

PREINCLUDE = MakerulesBc_All_StdlinkSec_Atsamr21g18a_Rf233_Gcc.h

CSRCS = $(filter %.c, $(SRCS))
OBJS = $(addprefix $(OBJ_PATH)/, $(notdir %/$(subst .c,.o,$(CSRCS))))

ASM_FILE_EXT = s

ifneq (, $(findstring .$(ASM_FILE_EXT), $(SRCS)))
  ASRCS = $(filter %.$(ASM_FILE_EXT), $(SRCS))
  OBJS += $(addprefix $(OBJ_PATH)/, $(notdir %$(subst .$(ASM_FILE_EXT),.o,$(ASRCS))))
endif

CFLAGS += $(DEFINES)
CFLAGS += $(INCLUDES)
CFLAGS += --include $(PREINCLUDE)
CFLAGS += -g

ASFLAGS = $(INCLUDES)
ASFLAGS += $(filter -mcpu%,$(CFLAGS))

LD = $(CC)
LINKER_FLAGS = -Wl,-Map=$(LIST_PATH)/$(APP_NAME).map -Wl,--gc-sections
LINKER_FLAGS += -Wl,-T../../linkerScr/atsamr21g18a.ld
LINKER_FLAGS += -mthumb -nostartfiles
LINKER_FLAGS += $(filter -mcpu%,$(CFLAGS))

.PHONY: all directories clean size root_files images

images: $(EXE_PATH)/$(APP_NAME).elf $(EXE_PATH)/$(APP_NAME).hex $(EXE_PATH)/$(APP_NAME).srec $(EXE_PATH)/$(APP_NAME).bin

all: directories images root_files size

$(OBJ_PATH)/%.o: $(SRCS)
	$(CC) $(CFLAGS) $(filter %/$(subst .o,.c,$(notdir $@)), $(SRCS)) -o $@

$(OBJS): directories


$(EXE_PATH)/$(APP_NAME).elf: $(OBJS)
	$(LD) $(LINKER_FLAGS) $(OBJS) -Wl,-\( $(LIBS) -Wl,-\) -o $@

$(EXE_PATH)/$(APP_NAME).srec: $(EXE_PATH)/$(APP_NAME).elf
	$(OBJCOPY) -O srec --srec-len 128 -R .eeprom $^ $@

$(EXE_PATH)/$(APP_NAME).hex: $(EXE_PATH)/$(APP_NAME).elf
	$(OBJCOPY) -O ihex -R .eeprom $^ $@

$(EXE_PATH)/$(APP_NAME).bin: $(EXE_PATH)/$(APP_NAME).elf
	$(OBJCOPY) -O binary --strip-debug --strip-unneeded -R .eeprom $^ $@

root_files: images
	cp -f $(EXE_PATH)/*.* ./../../

clean:
	rm -rf $(CONFIG_NAME) ../../$(APP_NAME).elf ../../$(APP_NAME).hex ../../$(APP_NAME).srec ../../$(APP_NAME).bin

directories:
	@"mkdir" -p $(LIST_PATH)
	@"mkdir" -p $(EXE_PATH)
	@"mkdir" -p $(OBJ_PATH)

size: $(EXE_PATH)/$(APP_NAME).elf
	@echo
	@$(SIZE) -td $(EXE_PATH)/$(APP_NAME).elf

ifeq ($(MAKECMDGOALS), fresh)
directories: clean
endif
fresh: all

# eof Makefile
