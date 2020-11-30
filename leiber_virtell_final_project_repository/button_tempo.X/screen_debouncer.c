#include <inttypes.h>
#include "screen_debouncer.h"

//Enumerated states
static enum DEBOUNCE_States{INIT_DEBOUNCE, NO_PUSH, MAYBE_PUSH, PUSHED, MAYBE_NO_PUSH}
	debounce_state;
    

void init_screen_debounce_FSM(){
    debounce_state = INIT_DEBOUNCE;
}

uint8_t tickFct_screen_debounce(uint8_t z){
    
	//Switch statement 1 for state transition
	switch(debounce_state){
		case INIT_DEBOUNCE:
			debounce_state = NO_PUSH;  //On initialization go directly to the no push state
		break;

		case NO_PUSH:
			//If you think you sense a button press, go to the next state, otherwise stay in this state
			if(z){
				debounce_state = MAYBE_PUSH;
			}else{
				debounce_state = NO_PUSH;
			}

		break;	

		case MAYBE_PUSH: 
			//If you still think you're pressing the button, go to the pushed state, otherwise go back to no push
			if(z){
				debounce_state = PUSHED;
			}else{
				debounce_state = NO_PUSH;
			}
		break;

		case PUSHED:
			//If the button is pressed down, stay in pushed, otherwise go to maybe not pushed
			if(z){
				debounce_state = PUSHED;
			}else{
				debounce_state = MAYBE_NO_PUSH;
			}

		break;

		case MAYBE_NO_PUSH:
			//If the button is pressed still, go back to PUSHED otherwise go back to not pushed
			if(z){
				debounce_state = PUSHED;
			}else{
				debounce_state = NO_PUSH;
			}
		break;
	}

	//Switch statement 2 for output (here the output is a global var)
	switch(debounce_state){
		case INIT_DEBOUNCE:
			debounce_state = NO_PUSH;  //On initialization go directly to the no push state
		break;

		case NO_PUSH:
			//If you think you sense a button press, go to the next state, otherwise stay in this state
			return 0x00;  //CHANGE THIS TO MATCH THE BUTTON IT IS CONTROLLING

		break;	

		case MAYBE_PUSH: 
			//If you still think you're pressing the button, go to the pushed state, otherwise go back to no push
			return 0x00;  //CHANGE THIS TO MATCH THE BUTTON IT IS CONTROLLING
		break;

		case PUSHED:
			//If the button is pressed down, stay in pushed, otherwise go to maybe not pushed
			return 0x01;  //CHANGE THIS TO MATCH THE BUTTON IT IS CONTROLLING
		break;

		case MAYBE_NO_PUSH:
			//If the button is pressed still, go back to PUSHED otherwise go back to not pushed
			return 0x00;  //CHANGE THIS TO MATCH THE BUTTON IT IS CONTROLLING
		break;
	}

}
