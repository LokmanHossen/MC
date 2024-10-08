char arraycc[]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
//char arrayca[]={0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};
void main() {
//    int d_zero= 0,d_one,d_two,d_three,i,j;
    int bt_zero=0,bt_one=0,bt_two=0,bt_three=0;
        Trisb=0x00;
        Trisc=0x00;
        
        Trisd=1;
        
        portb=0x00;
        portc=0x00;

   while(1)
       {
        if(portd.f0==0)
          {
            delay_ms(150);
              if(portd.f0==0)
              {
                bt_zero++;
                if(bt_zero==10)
                  {
                  bt_zero=0;
                  }
               }
            }
            if(portd.f1==0)
            {
              delay_ms(150);
              if(portd.f1==0)
              {
                bt_one++;
                if(bt_one==10)
                {
                   bt_one=0;
                 }
              }
            }
            if(portd.f2==0)
            {
              delay_ms(150);
              if(portd.f2==0)
              {
                bt_two++;

                 if(bt_two==10)
                  {
                      bt_two=0;
                  }
                }
            }
            if(portd.f3==0)
            {
               delay_ms(150);
                if(portd.f3==0)
                 {
                    bt_three++;
                     if(bt_three==10)
                      {
                          bt_three=0;
                      }
                 }
            }

            portb=arraycc[bt_zero];//display
            portc.f0=0;
            delay_ms(10);
            portc.f0=1;
            

            portb=arraycc[bt_one];//display
            portc.f1=0;
            delay_ms(10);
            portc.f1=1;


            portb=arraycc[bt_two];//display
            portc.f2= 0;
            delay_ms(10);
            portc.f2=1;
            

            portb=arraycc[bt_three];//display
            portc.f3=0;
            delay_ms(10);
            portc.f3=1;
       }
       
   }