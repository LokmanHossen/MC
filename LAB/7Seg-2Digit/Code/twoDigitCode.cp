#line 1 "E:/4-2/MicroController/LAB/7Seg-2Digit/Code/twoDigitCode.c"
char array[] = {0xBF, 0x86,0xDB,0xCF,0xE6,0xED,0xFD,0x87,0xFF,0xEF};

void main() {

 int i=0, left=0, right=0, j=0;

 TRISB = 0x00;
 TRISC = 0x00;
 TRISD = 0xff;

 portb = 0x00;
 portc = 0x00;

 while(1)
 {
 left=i/10;
 right=i%10;


 portb=array[left];
 portc.f0=0;
 delay_ms(10);
 portc.f0=1;

 portb=array[right];
 portc.f1=0;
 delay_ms(10);
 portc.f1=1;


 if(portd.f0==0)
 {
 delay_ms(100);
 if(portd.f0==0)
 {
 i=i+1;
 }
 }

 if(portd.f1==0)
 {
 delay_ms(100);
 if(portd.f1==0)
 {
 i=i+1;
 }
 }

 }

}
