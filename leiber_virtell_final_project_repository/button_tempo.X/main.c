/* 
 * File:   main.c
 * Author: leibe
 *
 * Created on November 23, 2020, 12:25 PM
 */

#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>
#include <plib.h>

<<<<<<< Updated upstream
=======
<<<<<<< HEAD
#include "config.h"  //PRAGMAS...DO NOT FORGET PRAGMAS
=======
>>>>>>> Stashed changes

#include "ztimer.h"
#include "config.h"
#include "button_tempo_controller.h"
#include "screen_debouncer.h"
#include "debouncer_tempo.h"
#include "button_control.h"

#include "Adafruit_2_4_LCD_Serial_Library/tft_master.h"
#include "Adafruit_2_4_LCD_Serial_Library/tft_gfx.h"
#include "adc_intf.h"
#include "ts_lcd.h"


#define XM AN0
#define YP AN1
<<<<<<< Updated upstream
=======
>>>>>>> 1999389e80eb597938e2d55401f4daa4b1dfd22b
>>>>>>> Stashed changes

/*
 * 
 */
void main() {
    uint32_t button_elapsedTime = 75;
    uint32_t debounce_tempo_elapsedTime = 50;
    uint32_t dummy;
    uint8_t tempo_pressed;
    PORTSetPinsDigitalOut(IOPORT_B, BIT_4);
    
    //Touchscreen init
    configureADC();

    SYSTEMConfigPerformance(PBCLK);
    ts_lcd_init();
    
    
    //tempo button fsm
    init_button_fsm();
    
    
    
    //Init debouncer
    init_debounce_tempo_FSM();
    init_screen_debounce_FSM();
    
    //Init buttons
    init_buttons();
    
    
    INTEnableSystemMultiVectoredInt();
     
    zTimerSet(25);
    zTimerOn();
    
   
    
    
    while(1) {
        if(debounce_tempo_elapsedTime >= 50) {
            tempo_pressed = tickFct_debounce_tempo(!read_tempo_button());
            
            debounce_tempo_elapsedTime = 0;
        }
        
//        if(read_tempo_button()) {
//            PORTWrite(IOPORT_B, BIT_4);
//        }
//        else {
//            PORTClearBits(IOPORT_B, BIT_4);
//        }
        
        if(button_elapsedTime >= 75) {
            dummy = tickFct_button(tempo_pressed, zTimerReadms());
            
            button_elapsedTime = 0;
        }
        
        while(!zTimerReadFlag()){
            
        }
        
        button_elapsedTime += 25;
        debounce_tempo_elapsedTime += 25;
        
    }
    
}

