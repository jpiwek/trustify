#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-Trustify.mk)" "nbproject/Makefile-local-Trustify.mk"
include nbproject/Makefile-local-Trustify.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=Trustify
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/TrustZone_Bringup_NonSecure.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/TrustZone_Bringup_NonSecure.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../../NonSecure/firmware/src/config/Trustify/peripheral/sercom/usart/plib_sercom0_usart.c ../../../NonSecure/firmware/src/main.c ../../../NonSecure/firmware/src/config/Trustify/initialization.c ../../../NonSecure/firmware/src/config/Trustify/interrupts.c ../../../NonSecure/firmware/src/config/Trustify/exceptions.c ../../../NonSecure/firmware/src/config/Trustify/stdio/xc32_monitor.c ../../../NonSecure/firmware/src/config/Trustify/peripheral/port/plib_port.c ../../../NonSecure/firmware/src/config/Trustify/peripheral/systick/plib_systick.c ../../../NonSecure/firmware/src/config/Trustify/startup_xc32.c ../../../NonSecure/firmware/src/config/Trustify/libc_syscalls.c ../../../NonSecure/firmware/src/config/Trustify/peripheral/eic/plib_eic.c ../../../NonSecure/firmware/src/config/Trustify/bsp/bsp.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/551645671/plib_sercom0_usart.o ${OBJECTDIR}/_ext/1691900214/main.o ${OBJECTDIR}/_ext/443878228/initialization.o ${OBJECTDIR}/_ext/443878228/interrupts.o ${OBJECTDIR}/_ext/443878228/exceptions.o ${OBJECTDIR}/_ext/1743935334/xc32_monitor.o ${OBJECTDIR}/_ext/918730287/plib_port.o ${OBJECTDIR}/_ext/587460250/plib_systick.o ${OBJECTDIR}/_ext/443878228/startup_xc32.o ${OBJECTDIR}/_ext/443878228/libc_syscalls.o ${OBJECTDIR}/_ext/445289233/plib_eic.o ${OBJECTDIR}/_ext/2004903332/bsp.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/551645671/plib_sercom0_usart.o.d ${OBJECTDIR}/_ext/1691900214/main.o.d ${OBJECTDIR}/_ext/443878228/initialization.o.d ${OBJECTDIR}/_ext/443878228/interrupts.o.d ${OBJECTDIR}/_ext/443878228/exceptions.o.d ${OBJECTDIR}/_ext/1743935334/xc32_monitor.o.d ${OBJECTDIR}/_ext/918730287/plib_port.o.d ${OBJECTDIR}/_ext/587460250/plib_systick.o.d ${OBJECTDIR}/_ext/443878228/startup_xc32.o.d ${OBJECTDIR}/_ext/443878228/libc_syscalls.o.d ${OBJECTDIR}/_ext/445289233/plib_eic.o.d ${OBJECTDIR}/_ext/2004903332/bsp.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/551645671/plib_sercom0_usart.o ${OBJECTDIR}/_ext/1691900214/main.o ${OBJECTDIR}/_ext/443878228/initialization.o ${OBJECTDIR}/_ext/443878228/interrupts.o ${OBJECTDIR}/_ext/443878228/exceptions.o ${OBJECTDIR}/_ext/1743935334/xc32_monitor.o ${OBJECTDIR}/_ext/918730287/plib_port.o ${OBJECTDIR}/_ext/587460250/plib_systick.o ${OBJECTDIR}/_ext/443878228/startup_xc32.o ${OBJECTDIR}/_ext/443878228/libc_syscalls.o ${OBJECTDIR}/_ext/445289233/plib_eic.o ${OBJECTDIR}/_ext/2004903332/bsp.o

# Source Files
SOURCEFILES=../../../NonSecure/firmware/src/config/Trustify/peripheral/sercom/usart/plib_sercom0_usart.c ../../../NonSecure/firmware/src/main.c ../../../NonSecure/firmware/src/config/Trustify/initialization.c ../../../NonSecure/firmware/src/config/Trustify/interrupts.c ../../../NonSecure/firmware/src/config/Trustify/exceptions.c ../../../NonSecure/firmware/src/config/Trustify/stdio/xc32_monitor.c ../../../NonSecure/firmware/src/config/Trustify/peripheral/port/plib_port.c ../../../NonSecure/firmware/src/config/Trustify/peripheral/systick/plib_systick.c ../../../NonSecure/firmware/src/config/Trustify/startup_xc32.c ../../../NonSecure/firmware/src/config/Trustify/libc_syscalls.c ../../../NonSecure/firmware/src/config/Trustify/peripheral/eic/plib_eic.c ../../../NonSecure/firmware/src/config/Trustify/bsp/bsp.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${CMSIS_DIR}/CMSIS/Core/Include"



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-Trustify.mk dist/${CND_CONF}/${IMAGE_TYPE}/TrustZone_Bringup_NonSecure.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAML11E16A
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/551645671/plib_sercom0_usart.o: ../../../NonSecure/firmware/src/config/Trustify/peripheral/sercom/usart/plib_sercom0_usart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/551645671" 
	@${RM} ${OBJECTDIR}/_ext/551645671/plib_sercom0_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/551645671/plib_sercom0_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/551645671/plib_sercom0_usart.o.d" -o ${OBJECTDIR}/_ext/551645671/plib_sercom0_usart.o ../../../NonSecure/firmware/src/config/Trustify/peripheral/sercom/usart/plib_sercom0_usart.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/551645671/plib_sercom0_usart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1691900214/main.o: ../../../NonSecure/firmware/src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1691900214" 
	@${RM} ${OBJECTDIR}/_ext/1691900214/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1691900214/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1691900214/main.o.d" -o ${OBJECTDIR}/_ext/1691900214/main.o ../../../NonSecure/firmware/src/main.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1691900214/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/443878228/initialization.o: ../../../NonSecure/firmware/src/config/Trustify/initialization.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/443878228" 
	@${RM} ${OBJECTDIR}/_ext/443878228/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/443878228/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/443878228/initialization.o.d" -o ${OBJECTDIR}/_ext/443878228/initialization.o ../../../NonSecure/firmware/src/config/Trustify/initialization.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/443878228/initialization.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/443878228/interrupts.o: ../../../NonSecure/firmware/src/config/Trustify/interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/443878228" 
	@${RM} ${OBJECTDIR}/_ext/443878228/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/443878228/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/443878228/interrupts.o.d" -o ${OBJECTDIR}/_ext/443878228/interrupts.o ../../../NonSecure/firmware/src/config/Trustify/interrupts.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/443878228/interrupts.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/443878228/exceptions.o: ../../../NonSecure/firmware/src/config/Trustify/exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/443878228" 
	@${RM} ${OBJECTDIR}/_ext/443878228/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/443878228/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/443878228/exceptions.o.d" -o ${OBJECTDIR}/_ext/443878228/exceptions.o ../../../NonSecure/firmware/src/config/Trustify/exceptions.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/443878228/exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1743935334/xc32_monitor.o: ../../../NonSecure/firmware/src/config/Trustify/stdio/xc32_monitor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1743935334" 
	@${RM} ${OBJECTDIR}/_ext/1743935334/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1743935334/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1743935334/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1743935334/xc32_monitor.o ../../../NonSecure/firmware/src/config/Trustify/stdio/xc32_monitor.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1743935334/xc32_monitor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/918730287/plib_port.o: ../../../NonSecure/firmware/src/config/Trustify/peripheral/port/plib_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/918730287" 
	@${RM} ${OBJECTDIR}/_ext/918730287/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/918730287/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/918730287/plib_port.o.d" -o ${OBJECTDIR}/_ext/918730287/plib_port.o ../../../NonSecure/firmware/src/config/Trustify/peripheral/port/plib_port.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/918730287/plib_port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/587460250/plib_systick.o: ../../../NonSecure/firmware/src/config/Trustify/peripheral/systick/plib_systick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/587460250" 
	@${RM} ${OBJECTDIR}/_ext/587460250/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/587460250/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/587460250/plib_systick.o.d" -o ${OBJECTDIR}/_ext/587460250/plib_systick.o ../../../NonSecure/firmware/src/config/Trustify/peripheral/systick/plib_systick.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/587460250/plib_systick.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/443878228/startup_xc32.o: ../../../NonSecure/firmware/src/config/Trustify/startup_xc32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/443878228" 
	@${RM} ${OBJECTDIR}/_ext/443878228/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/443878228/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/443878228/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/443878228/startup_xc32.o ../../../NonSecure/firmware/src/config/Trustify/startup_xc32.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/443878228/startup_xc32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/443878228/libc_syscalls.o: ../../../NonSecure/firmware/src/config/Trustify/libc_syscalls.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/443878228" 
	@${RM} ${OBJECTDIR}/_ext/443878228/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/443878228/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/443878228/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/443878228/libc_syscalls.o ../../../NonSecure/firmware/src/config/Trustify/libc_syscalls.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/443878228/libc_syscalls.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/445289233/plib_eic.o: ../../../NonSecure/firmware/src/config/Trustify/peripheral/eic/plib_eic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/445289233" 
	@${RM} ${OBJECTDIR}/_ext/445289233/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/445289233/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/445289233/plib_eic.o.d" -o ${OBJECTDIR}/_ext/445289233/plib_eic.o ../../../NonSecure/firmware/src/config/Trustify/peripheral/eic/plib_eic.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/445289233/plib_eic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2004903332/bsp.o: ../../../NonSecure/firmware/src/config/Trustify/bsp/bsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2004903332" 
	@${RM} ${OBJECTDIR}/_ext/2004903332/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/2004903332/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2004903332/bsp.o.d" -o ${OBJECTDIR}/_ext/2004903332/bsp.o ../../../NonSecure/firmware/src/config/Trustify/bsp/bsp.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2004903332/bsp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/551645671/plib_sercom0_usart.o: ../../../NonSecure/firmware/src/config/Trustify/peripheral/sercom/usart/plib_sercom0_usart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/551645671" 
	@${RM} ${OBJECTDIR}/_ext/551645671/plib_sercom0_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/551645671/plib_sercom0_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/551645671/plib_sercom0_usart.o.d" -o ${OBJECTDIR}/_ext/551645671/plib_sercom0_usart.o ../../../NonSecure/firmware/src/config/Trustify/peripheral/sercom/usart/plib_sercom0_usart.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/551645671/plib_sercom0_usart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1691900214/main.o: ../../../NonSecure/firmware/src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1691900214" 
	@${RM} ${OBJECTDIR}/_ext/1691900214/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1691900214/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1691900214/main.o.d" -o ${OBJECTDIR}/_ext/1691900214/main.o ../../../NonSecure/firmware/src/main.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1691900214/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/443878228/initialization.o: ../../../NonSecure/firmware/src/config/Trustify/initialization.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/443878228" 
	@${RM} ${OBJECTDIR}/_ext/443878228/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/443878228/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/443878228/initialization.o.d" -o ${OBJECTDIR}/_ext/443878228/initialization.o ../../../NonSecure/firmware/src/config/Trustify/initialization.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/443878228/initialization.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/443878228/interrupts.o: ../../../NonSecure/firmware/src/config/Trustify/interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/443878228" 
	@${RM} ${OBJECTDIR}/_ext/443878228/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/443878228/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/443878228/interrupts.o.d" -o ${OBJECTDIR}/_ext/443878228/interrupts.o ../../../NonSecure/firmware/src/config/Trustify/interrupts.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/443878228/interrupts.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/443878228/exceptions.o: ../../../NonSecure/firmware/src/config/Trustify/exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/443878228" 
	@${RM} ${OBJECTDIR}/_ext/443878228/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/443878228/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/443878228/exceptions.o.d" -o ${OBJECTDIR}/_ext/443878228/exceptions.o ../../../NonSecure/firmware/src/config/Trustify/exceptions.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/443878228/exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1743935334/xc32_monitor.o: ../../../NonSecure/firmware/src/config/Trustify/stdio/xc32_monitor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1743935334" 
	@${RM} ${OBJECTDIR}/_ext/1743935334/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1743935334/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1743935334/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1743935334/xc32_monitor.o ../../../NonSecure/firmware/src/config/Trustify/stdio/xc32_monitor.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1743935334/xc32_monitor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/918730287/plib_port.o: ../../../NonSecure/firmware/src/config/Trustify/peripheral/port/plib_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/918730287" 
	@${RM} ${OBJECTDIR}/_ext/918730287/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/918730287/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/918730287/plib_port.o.d" -o ${OBJECTDIR}/_ext/918730287/plib_port.o ../../../NonSecure/firmware/src/config/Trustify/peripheral/port/plib_port.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/918730287/plib_port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/587460250/plib_systick.o: ../../../NonSecure/firmware/src/config/Trustify/peripheral/systick/plib_systick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/587460250" 
	@${RM} ${OBJECTDIR}/_ext/587460250/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/587460250/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/587460250/plib_systick.o.d" -o ${OBJECTDIR}/_ext/587460250/plib_systick.o ../../../NonSecure/firmware/src/config/Trustify/peripheral/systick/plib_systick.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/587460250/plib_systick.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/443878228/startup_xc32.o: ../../../NonSecure/firmware/src/config/Trustify/startup_xc32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/443878228" 
	@${RM} ${OBJECTDIR}/_ext/443878228/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/443878228/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/443878228/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/443878228/startup_xc32.o ../../../NonSecure/firmware/src/config/Trustify/startup_xc32.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/443878228/startup_xc32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/443878228/libc_syscalls.o: ../../../NonSecure/firmware/src/config/Trustify/libc_syscalls.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/443878228" 
	@${RM} ${OBJECTDIR}/_ext/443878228/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/443878228/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/443878228/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/443878228/libc_syscalls.o ../../../NonSecure/firmware/src/config/Trustify/libc_syscalls.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/443878228/libc_syscalls.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/445289233/plib_eic.o: ../../../NonSecure/firmware/src/config/Trustify/peripheral/eic/plib_eic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/445289233" 
	@${RM} ${OBJECTDIR}/_ext/445289233/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/445289233/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/445289233/plib_eic.o.d" -o ${OBJECTDIR}/_ext/445289233/plib_eic.o ../../../NonSecure/firmware/src/config/Trustify/peripheral/eic/plib_eic.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/445289233/plib_eic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2004903332/bsp.o: ../../../NonSecure/firmware/src/config/Trustify/bsp/bsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2004903332" 
	@${RM} ${OBJECTDIR}/_ext/2004903332/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/2004903332/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2004903332/bsp.o.d" -o ${OBJECTDIR}/_ext/2004903332/bsp.o ../../../NonSecure/firmware/src/config/Trustify/bsp/bsp.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2004903332/bsp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/TrustZone_Bringup_NonSecure.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/TrustZone_Bringup_NonSecure.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-L"../../../Secure/firmware/TrustZone_Bringup_Secure.X",-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",-DAS=0x8000,-DRS=0x2000,-DBOOTPROT=0x0,-DNONSECURE,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml,-l:TrustZone_Bringup_Secure_sg_veneer.lib -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/TrustZone_Bringup_NonSecure.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../../../Secure/firmware/TrustZone_Bringup_Secure.X/dist/Trustify/production/TrustZone_Bringup_Secure.X.production.hex
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/TrustZone_Bringup_NonSecure.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-L"../../../Secure/firmware/TrustZone_Bringup_Secure.X",-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",-DAS=0x8000,-DRS=0x2000,-DBOOTPROT=0x0,-DNONSECURE,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml,-l:TrustZone_Bringup_Secure_sg_veneer.lib -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/TrustZone_Bringup_NonSecure.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
	@echo "Creating unified hex file"
	@"C:/Program Files (x86)/Microchip/MPLABX/v5.40/mplab_platform/platform/../mplab_ide/modules/../../bin/hexmate" --edf="C:/Program Files (x86)/Microchip/MPLABX/v5.40/mplab_platform/platform/../mplab_ide/modules/../../dat/en_msgs.txt" dist/${CND_CONF}/${IMAGE_TYPE}/TrustZone_Bringup_NonSecure.X.${IMAGE_TYPE}.hex ../../../Secure/firmware/TrustZone_Bringup_Secure.X/dist/Trustify/production/TrustZone_Bringup_Secure.X.production.hex -odist/${CND_CONF}/production/TrustZone_Bringup_NonSecure.X.production.unified.hex

endif


# Subprojects
.build-subprojects:
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
	cd ../../../Secure/firmware/TrustZone_Bringup_Secure.X && ${MAKE}  -f Makefile CONF=Trustify TYPE_IMAGE=DEBUG_RUN
else
	cd ../../../Secure/firmware/TrustZone_Bringup_Secure.X && ${MAKE}  -f Makefile CONF=Trustify
endif


# Subprojects
.clean-subprojects:
	cd ../../../Secure/firmware/TrustZone_Bringup_Secure.X && rm -rf "build/Trustify" "dist/Trustify"

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/Trustify
	${RM} -r dist/Trustify

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
