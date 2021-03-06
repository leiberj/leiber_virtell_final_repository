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
#include "dac4822.h"

// pragmas
#include "config.h"

/*
 * 
 */

#define SYSCLK	40000000UL
#define PBCLK	40000000UL

int main() {
    SYSTEMConfigPerformance(SYSCLK);
    CM1CON = 0; CM2CON = 0; ANSELA = 0; ANSELB = 0; // why disable comparators? not sure
    mPORTASetPinsDigitalOut(BIT_0);  // this was in Tahmid's example; not sure why
    dds_init();
    //write_dac4822(0, 4095);  // write channel A, gain = 1
    //write_dac4822(1, 3000);  // write channel B, gain = 1
    dds_on(1200);
    while (1) {
        // do nothing for now
    }
    return (EXIT_SUCCESS);
}

