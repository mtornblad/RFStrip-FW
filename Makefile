BITCLOUD_PATH = ./RFStamp-BitCloud/BitCloud
ZLL_DEMO_COMMON_PATH = ./RFStamp-BitCloud/Applications/ZLLDemo/common
APP_NAME = RFStrip-FW
CONFIG_NAME = build
LIST_PATH = $(CONFIG_NAME)/List
EXE_PATH = $(CONFIG_NAME)/Exe
OBJ_PATH = $(CONFIG_NAME)/Obj

include $(BITCLOUD_PATH)/lib/Makerules_Atsamr21g18a_Gcc

DEFINES = \
  -DBOARD_SAMR21 \
  -DATSAMR21G18A \
  -D__ATMEL_BITCLOUD__ \
  -DSTDLINK_SECURITY_MODE \
  -DAT86RF233 \
  -DHAL_48MHz \
  -DSTACK_TYPE_ALL 

INCLUDES = \
  -I./src \
  -I$(ZLL_DEMO_COMMON_PATH)/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/N_AddressManager/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/N_Beacon/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/N_Binding/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/N_Cmi/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/N_Connection/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/N_DeviceInfo/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/N_InterPan/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/N_LinkInitiator/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/N_LinkTarget/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/N_Radio/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/N_Security/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/N_Zdp/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/S_Nv/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/N_Zcl_Framework/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/N_EndDeviceRobustness/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/N_ReconnectHandler/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/Infrastructure/N_Address/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/Infrastructure/N_Beacon/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/Infrastructure/N_ErrH/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/Infrastructure/N_Fsm/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/Infrastructure/N_Log/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/Infrastructure/N_Memory/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/Infrastructure/N_Task/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/Infrastructure/N_Timer/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/Infrastructure/N_Types/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/Infrastructure/N_Util/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/Infrastructure/N_Init/include \
  -I$(BITCLOUD_PATH)/Components/Security/SoftAes \
  -I$(BITCLOUD_PATH)/Components/BSP/SAMR21/include \
  -I$(BITCLOUD_PATH)/Components/SystemEnvironment/include \
  -I$(BITCLOUD_PATH)/Components/ZCL/include/private \
  -I$(BITCLOUD_PATH)/Components/ZCL/include \
  -I$(BITCLOUD_PATH)/Components/ZCL/include/private \
  -I$(BITCLOUD_PATH)/Components/ZCL/ZLL/include \
  -I$(BITCLOUD_PATH)/lib \
  -I$(BITCLOUD_PATH)/Components/HAL/include \
  -I$(BITCLOUD_PATH)/Components/BSP \
  -I$(BITCLOUD_PATH)/Components/BSP/include \
  -I$(BITCLOUD_PATH)/Components/NWK/include \
  -I$(BITCLOUD_PATH)/Components/NWK/include/private \
  -I$(BITCLOUD_PATH)/Components/ZDO/include \
  -I$(BITCLOUD_PATH)/Components/ZDO/include/private \
  -I$(BITCLOUD_PATH)/Components/APS/include \
  -I$(BITCLOUD_PATH)/Components/APS/include/private \
  -I$(BITCLOUD_PATH)/Components/SystemEnvironment/include \
  -I$(BITCLOUD_PATH)/Components/ConfigServer/include \
  -I$(BITCLOUD_PATH)/Components/ConfigServer/include/private \
  -I$(BITCLOUD_PATH)/Components/PersistDataServer/include \
  -I$(BITCLOUD_PATH)/Components/PersistDataServer/std/include \
  -I$(BITCLOUD_PATH)/Components/PersistDataServer/wl/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/Infrastructure/N_Types/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/Infrastructure/N_Util/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/Infrastructure/N_Timer/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/Infrastructure/N_Task/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/Infrastructure/N_ErrH/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/Infrastructure/N_Log/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/Infrastructure/N_Memory/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/Infrastructure/N_Init/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/S_Nv/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/S_XNv/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/D_Nv/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/D_XNv/include \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/D_XNv/src \
  -I$(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/S_XNv/src \
  -I$(BITCLOUD_PATH)/Components/Security/TrustCentre/include \
  -I$(BITCLOUD_PATH)/Components/Security/ServiceProvider/include \
  -I$(BITCLOUD_PATH)/Components/HAL/drivers/include \
  -I$(BITCLOUD_PATH)/Components/HAL/drivers/VCP/include \
  -I$(BITCLOUD_PATH)/Components/HAL/cortexm0+/atsamr21/common/include \
  -I$(BITCLOUD_PATH)/Components/MAC_PHY/include \
  -I$(BITCLOUD_PATH)/Components/MAC_PHY/MAC_ENV/include \
  -I$(BITCLOUD_PATH)/Components/MAC_PHY/MAC_HWI/include \
  -I$(BITCLOUD_PATH)/Components/MAC_PHY/MAC_HWD_PHY/include \
  -I$(BITCLOUD_PATH)/Components/MAC_PHY/MAC_HWD_PHY/RF231_RF212/PHY/include \
  -I$(BITCLOUD_PATH)/Components/MAC_PHY/MAC_HWD_PHY/RF231_RF212/MAC_HWD/include \
  -I$(BITCLOUD_PATH)/Components/MAC_PHY/MAC_HWD_PHY/RF231_RF212/MACHWD_ZGP/include 

LIBS = \
  $(BITCLOUD_PATH)/lib/libBc_All_StdlinkSec_Atsamr21g18a_Rf233_Gcc.a \
  $(BITCLOUD_PATH)/lib/libHAL_SamR21_Atsamr21g18a_48MHz_Gcc.a \
  
SRCS = \
  ./src/LightScenesCluster.c \
  ./src/LightOnOffCluster.c \
  ./src/Light.c \
  ./src/LightCommissioningCluster.c \
  ./src/LightColorSchemesConversion.c \
  ./src/LightTesting.c \
  ./src/LightIdentifyCluster.c \
  ./src/LightPdt.c \
  ./src/LightClusters.c \
  ./src/lightOtaCluster.c \
  ./src/LightBasicCluster.c \
  ./src/LightGroupsCluster.c \
  ./src/LightConsole.c \
  ./src/LightColorControlCluster.c \
  ./src/LightLevelControlCluster.c \
  $(ZLL_DEMO_COMMON_PATH)/src/commandManager.c \
  $(ZLL_DEMO_COMMON_PATH)/src/console.c \
  $(ZLL_DEMO_COMMON_PATH)/src/uartManager.c \
  $(ZLL_DEMO_COMMON_PATH)/src/N_PacketDistributor.c \
  $(ZLL_DEMO_COMMON_PATH)/src/errH.c \
  $(ZLL_DEMO_COMMON_PATH)/src/debug.c \
  $(ZLL_DEMO_COMMON_PATH)/src/networkJoining.c \
  $(BITCLOUD_PATH)/Components/PersistDataServer/std/src/stdPdsMemAccess.c \
  $(BITCLOUD_PATH)/Components/PersistDataServer/std/src/stdPdsTimer.c \
  $(BITCLOUD_PATH)/Components/PersistDataServer/std/src/stdPdsMem.c \
  $(BITCLOUD_PATH)/Components/PersistDataServer/std/src/stdPdsWriteData.c \
  $(BITCLOUD_PATH)/Components/PersistDataServer/std/src/stdPdsCrcService.c \
  $(BITCLOUD_PATH)/Components/PersistDataServer/std/src/stdPdsInit.c \
  $(BITCLOUD_PATH)/Components/PersistDataServer/std/src/stdPdsEvents.c \
  $(BITCLOUD_PATH)/Components/PersistDataServer/std/src/stdPdsDataServer.c \
  $(BITCLOUD_PATH)/Components/PersistDataServer/src/fakePds.c \
  $(BITCLOUD_PATH)/Components/PersistDataServer/wl/src/wlPdsTypesConverter.c \
  $(BITCLOUD_PATH)/Components/PersistDataServer/wl/src/wlPdsDataServer.c \
  $(BITCLOUD_PATH)/Components/PersistDataServer/wl/src/wlPdsSecurity.c \
  $(BITCLOUD_PATH)/Components/PersistDataServer/wl/src/wlPdsInit.c \
  $(BITCLOUD_PATH)/Components/PersistDataServer/wl/src/wlPdsTaskManager.c \
  $(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/S_Nv/src/S_Nv-SamR21.c \
  $(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/S_XNv/src/S_XNv.c \
  $(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/S_Nv/src/S_Nv-ATmega.c \
  $(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/D_XNv/src/D_XNv-SamR21.c \
  $(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/S_Nv/src/S_Nv-External.c \
  $(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/D_Nv/src/D_Nv.c \
  $(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/S_Nv/src/S_Nv_Stub.c \
  $(BITCLOUD_PATH)/Components/SystemEnvironment/src/sysIdleHandler.c \
  $(BITCLOUD_PATH)/Components/SystemEnvironment/src/sysSleep.c \
  $(BITCLOUD_PATH)/Components/SystemEnvironment/src/sysStat.c \
  $(BITCLOUD_PATH)/Components/SystemEnvironment/src/sysEventsHandler.c \
  $(BITCLOUD_PATH)/Components/SystemEnvironment/src/sysQueue.c \
  $(BITCLOUD_PATH)/Components/SystemEnvironment/src/sysUtils.c \
  $(BITCLOUD_PATH)/Components/SystemEnvironment/src/sysAssert.c \
  $(BITCLOUD_PATH)/Components/SystemEnvironment/src/sysDuplicateTable.c \
  $(BITCLOUD_PATH)/Components/SystemEnvironment/src/sysInit.c \
  $(BITCLOUD_PATH)/Components/SystemEnvironment/src/sysTaskManager.c \
  $(BITCLOUD_PATH)/Components/SystemEnvironment/src/sysTimer.c \
  $(BITCLOUD_PATH)/Components/SystemEnvironment/src/sysMutex.c \
  $(BITCLOUD_PATH)/Components/SystemEnvironment/src/dbg.c \
  $(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/N_Connection/src/N_Connection_ReconnectHandler.c \
  $(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/N_Connection/src/N_ConnectionAssociation.c \
  $(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/N_Connection/src/N_ConnectionCommon.c \
  $(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/N_Connection/src/N_ConnectionEnddevice.c \
  $(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/N_Connection/src/N_ConnectionRouter.c \
  $(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/N_EndDeviceRobustness/src/N_EndDeviceRobustness.c \
  $(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/N_Cmi/src/N_Cmi.c \
  $(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/N_InterPan/src/N_InterPan.c \
  $(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/N_InterPan/src/N_InterPanBuffers.c \
  $(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/N_Binding/src/N_Binding.c \
  $(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/N_DeviceInfo/src/N_DeviceInfo.c \
  $(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/N_Radio/src/N_Radio.c \
  $(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/N_Zdp/src/N_Zdp.c \
  $(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/N_Security/src/N_Security_Calc.c \
  $(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/N_Security/src/N_Security.c \
  $(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/N_ReconnectHandler/src/N_ReconnectHandler.c \
  $(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/N_AddressManager/src/N_AddressManager.c \
  $(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/N_LinkTarget/src/N_LinkTarget.c \
  $(BITCLOUD_PATH)/Components/ZLLPlatform/ZLL/N_LinkInitiator/src/N_LinkInitiator.c \
  $(BITCLOUD_PATH)/Components/ZLLPlatform/Infrastructure/N_Fsm/src/N_Fsm.c \
  $(BITCLOUD_PATH)/Components/ZLLPlatform/Infrastructure/N_Log/src/N_Log.c \
  $(BITCLOUD_PATH)/Components/ZLLPlatform/Infrastructure/N_Util/src/N_Util.c \
  $(BITCLOUD_PATH)/Components/ZLLPlatform/Infrastructure/N_Memory/src/N_Memory-Atmel.c \
  $(BITCLOUD_PATH)/Components/ZLLPlatform/Infrastructure/N_Task/src/N_Task-Internal-Atmel.c \
  $(BITCLOUD_PATH)/Components/ZLLPlatform/Infrastructure/N_Task/src/N_Task.c \
  $(BITCLOUD_PATH)/Components/ZLLPlatform/Infrastructure/N_Address/src/N_Address.c \
  $(BITCLOUD_PATH)/Components/ZLLPlatform/Infrastructure/N_Timer/src/N_Timer-Internal-Atmel.c \
  $(BITCLOUD_PATH)/Components/ZLLPlatform/Infrastructure/N_Timer/src/N_Timer.c \
  $(BITCLOUD_PATH)/Components/ZLLPlatform/Infrastructure/N_ErrH/src/N_ErrH.c \
  $(BITCLOUD_PATH)/Components/ZCL/src/zclOtauClientDiscovery.c \
  $(BITCLOUD_PATH)/Components/ZCL/src/zclOtauClientPdt.c \
  $(BITCLOUD_PATH)/Components/ZCL/src/zclSecurityManager.c \
  $(BITCLOUD_PATH)/Components/ZCL/src/zclParser.c \
  $(BITCLOUD_PATH)/Components/ZCL/src/zclOtauClientDownload.c \
  $(BITCLOUD_PATH)/Components/ZCL/src/zclTaskManager.c \
  $(BITCLOUD_PATH)/Components/ZCL/src/zclOtauClientQuery.c \
  $(BITCLOUD_PATH)/Components/ZCL/src/zclMemoryManager.c \
  $(BITCLOUD_PATH)/Components/ZCL/src/zclCommandAnalyzer.c \
  $(BITCLOUD_PATH)/Components/ZCL/src/zclOtauClientUpgrade.c \
  $(BITCLOUD_PATH)/Components/ZCL/src/zclOtauClient.c \
  $(BITCLOUD_PATH)/Components/ZCL/src/zclOtauManager.c \
  $(BITCLOUD_PATH)/Components/ZCL/src/zclAttributes.c \
  $(BITCLOUD_PATH)/Components/ZCL/src/zcl.c \
  $(BITCLOUD_PATH)/Components/ZCL/src/zclKeyEstablishmentCluster.c \
  $(BITCLOUD_PATH)/Components/ZCL/src/zclOtauServer.c \
  $(BITCLOUD_PATH)/Components/BSP/SAMR21/src/bspUsart.c \
  $(BITCLOUD_PATH)/Components/BSP/SAMR21/src/joyStick.c \
  $(BITCLOUD_PATH)/Components/BSP/SAMR21/src/bspTempSensor.c \
  $(BITCLOUD_PATH)/Components/BSP/SAMR21/src/buttons.c \
  $(BITCLOUD_PATH)/Components/BSP/SAMR21/src/bspAntDiversity.c \
  $(BITCLOUD_PATH)/Components/BSP/SAMR21/src/fakeBSP.c \
  $(BITCLOUD_PATH)/Components/BSP/SAMR21/src/bspUsbVbus.c \
  $(BITCLOUD_PATH)/Components/BSP/SAMR21/src/lcd.c \
  $(BITCLOUD_PATH)/Components/BSP/SAMR21/src/xyl2rgb.c \
  $(BITCLOUD_PATH)/Components/BSP/SAMR21/src/MaxL.c \
  $(BITCLOUD_PATH)/Components/BSP/SAMR21/src/qTouch.c \
  $(BITCLOUD_PATH)/Components/BSP/SAMR21/src/bspUid.c \
  $(BITCLOUD_PATH)/Components/BSP/SAMR21/src/bspI2c.c \
  $(BITCLOUD_PATH)/Components/BSP/SAMR21/src/bspVoltageSensor.c \
  $(BITCLOUD_PATH)/Components/BSP/SAMR21/src/bspTaskManager.c \
  $(BITCLOUD_PATH)/Components/BSP/SAMR21/src/hs2xy.c \
  $(BITCLOUD_PATH)/Components/BSP/SAMR21/src/leds.c \
  $(BITCLOUD_PATH)/Components/BSP/SAMR21/src/touch.c \
  $(BITCLOUD_PATH)/Components/BSP/SAMR21/src/bspSpi.c \
  $(BITCLOUD_PATH)/Components/ConfigServer/src/csPersistentMem.c \
  $(BITCLOUD_PATH)/Components/ConfigServer/src/csMem.c \
  $(BITCLOUD_PATH)/Components/ConfigServer/src/configServer.c 

PREINCLUDE = MakerulesBc_All_StdlinkSec_Atsamr21g18a_Rf233_Gcc.h

CSRCS = $(filter %.c, $(SRCS))
OBJS = $(addprefix $(OBJ_PATH)/, $(notdir %/$(subst .c,.o,$(CSRCS))))

ASM_FILE_EXT = s

ifneq (, $(findstring .$(ASM_FILE_EXT), $(SRCS)))
  ASRCS = $(filter %.$(ASM_FILE_EXT), $(SRCS))
  OBJS += $(addprefix $(OBJ_PATH)/, $(notdir %$(subst .$(ASM_FILE_EXT),.o,$(ASRCS))))
endif

$(foreach src,$(SRCS),$(eval $(OBJ_PATH)/$(notdir $(src:.c=.o)): $(src)))

CFLAGS += $(DEFINES)
CFLAGS += $(INCLUDES)
CFLAGS += --include $(PREINCLUDE)
CFLAGS += -g

ASFLAGS = $(INCLUDES)
ASFLAGS += $(filter -mcpu%,$(CFLAGS))

LD = $(CC)
LINKER_FLAGS = -Wl,-Map=$(LIST_PATH)/$(APP_NAME).map -Wl,--gc-sections
LINKER_FLAGS += -Wl,-T./atsamr21g18a.ld
LINKER_FLAGS += -mthumb -nostartfiles
LINKER_FLAGS += $(filter -mcpu%,$(CFLAGS))

.PHONY: all directories clean size root_files images

images: $(EXE_PATH)/$(APP_NAME).elf $(EXE_PATH)/$(APP_NAME).hex $(EXE_PATH)/$(APP_NAME).srec $(EXE_PATH)/$(APP_NAME).bin

all: directories images size

$(OBJ_PATH)/%.o:
	$(CC) $(CFLAGS) $(filter %/$(subst .o,.c,$(notdir $@)), $(SRCS)) -o $@

$(EXE_PATH)/$(APP_NAME).elf: $(OBJS)
	$(LD) $(LINKER_FLAGS) $(OBJS) -Wl,-\( $(LIBS) -Wl,-\) -o $@

$(EXE_PATH)/$(APP_NAME).srec: $(EXE_PATH)/$(APP_NAME).elf
	$(OBJCOPY) -O srec --srec-len 128 -R .eeprom $^ $@

$(EXE_PATH)/$(APP_NAME).hex: $(EXE_PATH)/$(APP_NAME).elf
	$(OBJCOPY) -O ihex -R .eeprom $^ $@

$(EXE_PATH)/$(APP_NAME).bin: $(EXE_PATH)/$(APP_NAME).elf
	$(OBJCOPY) -O binary --strip-debug --strip-unneeded -R .eeprom $^ $@

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
