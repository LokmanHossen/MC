char arraycc[]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
//char arrayca[]={0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};

void main() {
    int d_zero,d_one,d_two,d_three,i,j;
    Trisb=0x00;
    Trisc=0x00;
    portb=0x00;
    portc=0x00;

        while(1)
        {
               for(i=0;i<=9999;i++) //counting 0-9999
                {
                  d_zero=i/1000; // for first digit of display
                  d_one=((i/100)%10); // for second digit
                  d_two=((i/10)%10); // for third digit
                  d_three=i%10;

                for(j=0;j<=10;j++)
                {
                    portc.f0=0;
                    portb=arraycc[d_zero];//display
                    delay_ms(1);
                    portc.f0=1;

                    portc.f1=0;
                    portb=arraycc[d_one];//display
                    delay_ms(1);
                    portc.f1=1;

                    portc.f2=0;
                    portb=arraycc[d_two];//display
                    delay_ms(1);
                    portc.f2=1;

                    portc.f3=0;
                    portb=arraycc[d_three];//display
                    delay_ms(1);
                    portc.f3=1;

           }
         }
      }
   }



/*char arraycc[]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};

void main() {
     int bt_zero=0, bt_one=0, bt_two=0, bt_three=0;
     trisb = 0x00;
     trisc = 0x00;
     trisd = 0xff;
     
     portb = 0x00;
     portc = 0x00;
     
     while(1)
     {
          if(portd.f0 == 0)
          {
           delay_ms(150);
           if(portd.f0== 0)
           {
            bt_zero++;
            if(bt_zero == 10)
            {
             bt_zero = 0;
            }
           }
          }
            if(portd.f1 == 0)
          {
           delay_ms(150);
           if(portd.f1== 0)
           {
            bt_one++;
            if(bt_one == 10)
            {
             bt_one = 0;
            }
           }
          }
          if(portd.f2 == 0)
          {
           delay_ms(150);
           if(portd.f2== 0)
           {
            bt_two++;
            if(bt_two == 10)
            {
             bt_two = 0;
            }
           }
          }
          
          if(portd.f3 == 0)
          {
           delay_ms(150);
           if(portd.f3== 0)
           {
            bt_three++;
            if(bt_three == 10)
            {
             bt_three = 0;
            }
           }
          }
          
          portc.f0 = 0x00;
          portb  = arraycc[bt_zero];
          delay_ms(100);
          portc = 0xff;
          
          portc.f1 = 0x00;
          portb  = arraycc[bt_one];
          delay_ms(100);
          portc = 0xff;

          portc.f2 = 0x00;
          portb  = arraycc[bt_two];
          delay_ms(300);
          portc = 0xff;
          
          portc.f3 = 0x00;
          portb  = arraycc[bt_three];
          delay_ms(300);
          portc = 0xff;
     }

}      */