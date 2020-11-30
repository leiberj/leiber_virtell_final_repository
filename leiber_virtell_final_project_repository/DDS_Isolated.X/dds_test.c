/* 
 * File:   dds_test.c - test DDS code
 * Author: John Nestor
 *
 * Created on October 27, 2020, 8:58 PM
 */

#include <stdio.h>
#include <stdlib.h>
#include <xc.h>
#include <plib.h>
#include "ztimer.h"
#include "dds.h"
#include "dds_fsm.h"

// pragmas
#include "config.h"

/*
 * 
 */

#define SYSCLK	40000000UL
#define PBCLK	40000000UL

uint8_t dds_pd = 10;

int main() {
    uint32_t dds_elapsedTime = dds_pd;
    uint32_t timerPeriod = 1;
    
    SYSTEMConfigPerformance(SYSCLK);
    CM1CON = 0; CM2CON = 0; ANSELA = 0; ANSELB = 0; // why disable comparators? not sure
    mPORTASetPinsDigitalOut(BIT_0);  // this was in Tahmid's example; not sure why
//    dds_init();
//    INTEnableSystemMultiVectoredInt();
//    dds_on(440);
    
    //Z timer init
    zTimerSet(timerPeriod);
    zTimerOn();
    
    init_dds_fsm();
    
    uint16_t count; 
    
    while (1) {
        count++;
        //if(dds_elapsedTime >= dds_pd) {
        
        if(count > 80){
            tickFct_dds(1);
            count = 0;
        }
           // dds_elapsedTime = 0;
        //}
        
       // while (!zTimerReadFlag()) {
       // }
        
       // dds_elapsedTime += timerPeriod;
        
        
    }
    return (EXIT_SUCCESS);
}

