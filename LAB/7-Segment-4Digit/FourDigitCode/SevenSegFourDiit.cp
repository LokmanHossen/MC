#line 1 "E:/4-2/MicroController/LAB/7-Segment-4Digit/FourDigitCode/SevenSegFourDiit.c"
char arraycc[]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};


void main() {
 int d_zero,d_one,d_two,d_three,i,j;
 Trisb=0x00;
 Trisc=0x00;
 portb=0x00;
 portc=0x00;

 while(1)
 {
 for(i=0;i<=9999;i++)
 {
 d_zero=i/1000;
 d_one=((i/100)%10);
 d_two=((i/10)%10);
 d_three=i%10;

 for(j=0;j<=10;j++)
 {
 portc.f0=0;
 portb=arraycc[d_zero];
 delay_ms(1);
 portc.f0=1;

 portc.f1=0;
 portb=arraycc[d_one];
 delay_ms(1);
 portc.f1=1;

 portc.f2=0;
 portb=arraycc[d_two];
 delay_ms(1);
 portc.f2=1;

 portc.f3=0;
 portb=arraycc[d_three];
 delay_ms(1);
 portc.f3=1;

 }
 }
 }
 }
