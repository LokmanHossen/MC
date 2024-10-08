int counter = 0;
void main() {

     TRISB = 0x00;
     PORTB = 0x00;
     
     while(1){
     PORTB.RB3 = 1;
     Delay_ms(300);
     PORTB.RB3 = 0;
     PORTB.RB2 = 1;
     Delay_ms(300);
     PORTB.RB2 = 0;
     PORTB.RB1 = 1;
     Delay_ms(300);
     PORTB.RB1 = 0;
     PORTB.RB0 = 1;
     Delay_ms(300);
     PORTB.RB0 = 0;
     counter++;
     
     }
}