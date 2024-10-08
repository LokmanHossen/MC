char arraycc[]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
//char arrayca[]={0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};
void main() {
     int i = 0;
     trisb = 0x00;
     portb = 0xff;

     for(i=0; i<10; i++){
     portb = arraycc[i];
     delay_ms(100);
     }

//     for(i=9; i>=0; i--){
//     portb = arraycc[i];
//     delay_ms(50);
//     }
     
     // for Switch
     
  /*   int button;
     trisb = 0x00;
     while(1) {
     if(portc.f7==1)
     {
      if(portc.f7==1)
      {
       button++;
       if(button==10){
         button = 0;
       }

      }
      if(portc.f7 == 1){
            portb = arraycc[button];
            delay_ms(100);
      }
     }
    }        */

     
}