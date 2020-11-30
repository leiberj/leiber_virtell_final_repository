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
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/button_tempo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/button_tempo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=TouchScreen.c timer1.c ts_lcd.c ztimer.c main.c button_tempo_controller.c button_control.c screen_debouncer.c debouncer_tempo.c adc_intf.c Adafruit_2_4_LCD_Serial_Library/glcdfont.c Adafruit_2_4_LCD_Serial_Library/tft_gfx.c Adafruit_2_4_LCD_Serial_Library/tft_master.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/TouchScreen.o ${OBJECTDIR}/timer1.o ${OBJECTDIR}/ts_lcd.o ${OBJECTDIR}/ztimer.o ${OBJECTDIR}/main.o ${OBJECTDIR}/button_tempo_controller.o ${OBJECTDIR}/button_control.o ${OBJECTDIR}/screen_debouncer.o ${OBJECTDIR}/debouncer_tempo.o ${OBJECTDIR}/adc_intf.o ${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/glcdfont.o ${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/tft_gfx.o ${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/tft_master.o
POSSIBLE_DEPFILES=${OBJECTDIR}/TouchScreen.o.d ${OBJECTDIR}/timer1.o.d ${OBJECTDIR}/ts_lcd.o.d ${OBJECTDIR}/ztimer.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/button_tempo_controller.o.d ${OBJECTDIR}/button_control.o.d ${OBJECTDIR}/screen_debouncer.o.d ${OBJECTDIR}/debouncer_tempo.o.d ${OBJECTDIR}/adc_intf.o.d ${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/glcdfont.o.d ${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/tft_gfx.o.d ${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/tft_master.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/TouchScreen.o ${OBJECTDIR}/timer1.o ${OBJECTDIR}/ts_lcd.o ${OBJECTDIR}/ztimer.o ${OBJECTDIR}/main.o ${OBJECTDIR}/button_tempo_controller.o ${OBJECTDIR}/button_control.o ${OBJECTDIR}/screen_debouncer.o ${OBJECTDIR}/debouncer_tempo.o ${OBJECTDIR}/adc_intf.o ${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/glcdfont.o ${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/tft_gfx.o ${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/tft_master.o

# Source Files
SOURCEFILES=TouchScreen.c timer1.c ts_lcd.c ztimer.c main.c button_tempo_controller.c button_control.c screen_debouncer.c debouncer_tempo.c adc_intf.c Adafruit_2_4_LCD_Serial_Library/glcdfont.c Adafruit_2_4_LCD_Serial_Library/tft_gfx.c Adafruit_2_4_LCD_Serial_Library/tft_master.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/button_tempo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX250F128B
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
${OBJECTDIR}/TouchScreen.o: TouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TouchScreen.o.d 
	@${RM} ${OBJECTDIR}/TouchScreen.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TouchScreen.o.d" -o ${OBJECTDIR}/TouchScreen.o TouchScreen.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/TouchScreen.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/timer1.o: timer1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/timer1.o.d 
	@${RM} ${OBJECTDIR}/timer1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/timer1.o.d" -o ${OBJECTDIR}/timer1.o timer1.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/timer1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/ts_lcd.o: ts_lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ts_lcd.o.d 
	@${RM} ${OBJECTDIR}/ts_lcd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/ts_lcd.o.d" -o ${OBJECTDIR}/ts_lcd.o ts_lcd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/ts_lcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/ztimer.o: ztimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ztimer.o.d 
	@${RM} ${OBJECTDIR}/ztimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/ztimer.o.d" -o ${OBJECTDIR}/ztimer.o ztimer.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/ztimer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/button_tempo_controller.o: button_tempo_controller.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/button_tempo_controller.o.d 
	@${RM} ${OBJECTDIR}/button_tempo_controller.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/button_tempo_controller.o.d" -o ${OBJECTDIR}/button_tempo_controller.o button_tempo_controller.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/button_tempo_controller.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/button_control.o: button_control.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/button_control.o.d 
	@${RM} ${OBJECTDIR}/button_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/button_control.o.d" -o ${OBJECTDIR}/button_control.o button_control.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/button_control.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/screen_debouncer.o: screen_debouncer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/screen_debouncer.o.d 
	@${RM} ${OBJECTDIR}/screen_debouncer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/screen_debouncer.o.d" -o ${OBJECTDIR}/screen_debouncer.o screen_debouncer.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/screen_debouncer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/debouncer_tempo.o: debouncer_tempo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/debouncer_tempo.o.d 
	@${RM} ${OBJECTDIR}/debouncer_tempo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/debouncer_tempo.o.d" -o ${OBJECTDIR}/debouncer_tempo.o debouncer_tempo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/debouncer_tempo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/adc_intf.o: adc_intf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adc_intf.o.d 
	@${RM} ${OBJECTDIR}/adc_intf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/adc_intf.o.d" -o ${OBJECTDIR}/adc_intf.o adc_intf.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/adc_intf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/glcdfont.o: Adafruit_2_4_LCD_Serial_Library/glcdfont.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library" 
	@${RM} ${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/glcdfont.o.d 
	@${RM} ${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/glcdfont.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/glcdfont.o.d" -o ${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/glcdfont.o Adafruit_2_4_LCD_Serial_Library/glcdfont.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/glcdfont.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/tft_gfx.o: Adafruit_2_4_LCD_Serial_Library/tft_gfx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library" 
	@${RM} ${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/tft_gfx.o.d 
	@${RM} ${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/tft_gfx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/tft_gfx.o.d" -o ${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/tft_gfx.o Adafruit_2_4_LCD_Serial_Library/tft_gfx.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/tft_gfx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/tft_master.o: Adafruit_2_4_LCD_Serial_Library/tft_master.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library" 
	@${RM} ${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/tft_master.o.d 
	@${RM} ${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/tft_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/tft_master.o.d" -o ${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/tft_master.o Adafruit_2_4_LCD_Serial_Library/tft_master.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/tft_master.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/TouchScreen.o: TouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TouchScreen.o.d 
	@${RM} ${OBJECTDIR}/TouchScreen.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TouchScreen.o.d" -o ${OBJECTDIR}/TouchScreen.o TouchScreen.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/TouchScreen.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/timer1.o: timer1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/timer1.o.d 
	@${RM} ${OBJECTDIR}/timer1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/timer1.o.d" -o ${OBJECTDIR}/timer1.o timer1.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/timer1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/ts_lcd.o: ts_lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ts_lcd.o.d 
	@${RM} ${OBJECTDIR}/ts_lcd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/ts_lcd.o.d" -o ${OBJECTDIR}/ts_lcd.o ts_lcd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/ts_lcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/ztimer.o: ztimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ztimer.o.d 
	@${RM} ${OBJECTDIR}/ztimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/ztimer.o.d" -o ${OBJECTDIR}/ztimer.o ztimer.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/ztimer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/button_tempo_controller.o: button_tempo_controller.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/button_tempo_controller.o.d 
	@${RM} ${OBJECTDIR}/button_tempo_controller.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/button_tempo_controller.o.d" -o ${OBJECTDIR}/button_tempo_controller.o button_tempo_controller.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/button_tempo_controller.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/button_control.o: button_control.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/button_control.o.d 
	@${RM} ${OBJECTDIR}/button_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/button_control.o.d" -o ${OBJECTDIR}/button_control.o button_control.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/button_control.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/screen_debouncer.o: screen_debouncer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/screen_debouncer.o.d 
	@${RM} ${OBJECTDIR}/screen_debouncer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/screen_debouncer.o.d" -o ${OBJECTDIR}/screen_debouncer.o screen_debouncer.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/screen_debouncer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/debouncer_tempo.o: debouncer_tempo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/debouncer_tempo.o.d 
	@${RM} ${OBJECTDIR}/debouncer_tempo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/debouncer_tempo.o.d" -o ${OBJECTDIR}/debouncer_tempo.o debouncer_tempo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/debouncer_tempo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/adc_intf.o: adc_intf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adc_intf.o.d 
	@${RM} ${OBJECTDIR}/adc_intf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/adc_intf.o.d" -o ${OBJECTDIR}/adc_intf.o adc_intf.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/adc_intf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/glcdfont.o: Adafruit_2_4_LCD_Serial_Library/glcdfont.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library" 
	@${RM} ${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/glcdfont.o.d 
	@${RM} ${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/glcdfont.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/glcdfont.o.d" -o ${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/glcdfont.o Adafruit_2_4_LCD_Serial_Library/glcdfont.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/glcdfont.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/tft_gfx.o: Adafruit_2_4_LCD_Serial_Library/tft_gfx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library" 
	@${RM} ${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/tft_gfx.o.d 
	@${RM} ${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/tft_gfx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/tft_gfx.o.d" -o ${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/tft_gfx.o Adafruit_2_4_LCD_Serial_Library/tft_gfx.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/tft_gfx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/tft_master.o: Adafruit_2_4_LCD_Serial_Library/tft_master.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library" 
	@${RM} ${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/tft_master.o.d 
	@${RM} ${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/tft_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/tft_master.o.d" -o ${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/tft_master.o Adafruit_2_4_LCD_Serial_Library/tft_master.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/Adafruit_2_4_LCD_Serial_Library/tft_master.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/button_tempo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/button_tempo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  -D_SUPPRESS_PLIB_WARNING $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC00490:0x1FC00BEF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/button_tempo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/button_tempo.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  -D_SUPPRESS_PLIB_WARNING $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/button_tempo.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
