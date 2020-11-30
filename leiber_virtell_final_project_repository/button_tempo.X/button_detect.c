
char screen_pressed(uint8_t pressed, uint16_t x, uint16_t y) {
    if(pressed) {
        
        uint8_t count;
        for(count = 0; count < 20; count++) {
            if(x > xstart[count] && y > ystart[count] && x < xend[count] && y < yend[count]) {
                return button_chars[count];
            }
        }
    }
    return '$';
}
 