sbit LCD_RS at  RB0_bit;
sbit LCD_EN at  RB1_bit;
sbit LCD_D4 at  RB2_bit;
sbit LCD_D5 at  RB3_bit;
sbit LCD_D6 at  RB4_bit;
sbit LCD_D7 at  RB5_bit;

sbit LCD_RS_DIRECTION at  TRISB0_bit;
sbit LCD_EN_DIRECTION at  TRISB1_bit;
sbit LCD_D4_DIRECTION at  TRISB2_bit;
sbit LCD_D5_DIRECTION at  TRISB3_bit;
sbit LCD_D6_DIRECTION at  TRISB4_bit;
sbit LCD_D7_DIRECTION at  TRISB5_bit;

char display[16]="";
void main()
{
      unsigned int result;
      float volt,temp;
      trisb=0x00;
      trisa=0xff;
      adcon1=0x80;
      lcd_init();
      lcd_cmd(_lcd_clear);
      lcd_cmd(_LCD_CURSOR_OFF);
   while(1)
            {
            result = adc_read(0);
            volt=result*4.88;
            temp=volt/10;
            lcd_out(1,1,"Temp = ");
            floattostr(temp,display);
            lcd_out_cp(display);
            lcd_chr(1,16,223); //print at pos(row=1,col=13) "°" =223 =0xdf
            lcd_out_cp(" C"); //celcius
      }
 }
/*int i ;
char text1[] = "Department of CSE";
char text2[] = "PABNA UNIVERSITY OF SCIENCE AND TECHNOLOGY";

void main() {
     Adcon1 = 0x06;
     Cmcon = 0x07;
     LCD_Init();
     LCD_cmd(_LCD_CLEAR);
     LCD_cmd(_LCD_CURSOR_OFF);
     LCD_out(1,1, text1);
     LCD_out(2,1,text2);
     
     while(1)
     {
       for(i = 0; i<15; i++)
       {
//        LCD_cmd(_LCD_SHIFT_LEFT);
        delay_ms(300);
       }
       
//        for(i = 0; i<15; i++)
//       {
//        LCD_cmd(_LCD_SHIFT_RIGHT);
//       }
     }

}       
*/