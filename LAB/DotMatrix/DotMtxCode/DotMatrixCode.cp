#line 1 "E:/4-2/MicroController/LAB/DotMatrix/DotMtxCode/DotMatrixCode.c"










void MSDelay(unsigned char Time)
{
 unsigned char y,z;
 for(y=0;y<Time;y++)
 for(z=0;z<20;z++);
}
void main()
 {
 TRISC = 0x00;
 TRISD = 0x00;
 while(1)
 {
 PORTD = 0x80;
 PORTC = 0x00;
 MSDelay(10);

 PORTD = 0x40;
 PORTC = 0xff;
 MSDelay(10);

 PORTD = 0x20;
 PORTC = 0xff;
 MSDelay(10);

 PORTD = 0x10;
 PORTC = 0xdb;
 MSDelay(10);

 PORTD = 0x08;
 PORTC = 0xdb;
 MSDelay(10);

 PORTD = 0x04;
 PORTC = 0xdb;
 MSDelay(10);

 PORTD = 0x02;
 PORTC = 0xc3;
 MSDelay(10);

 PORTD = 0x01;
 PORTC = 0x00;
 MSDelay(10);
 }
}
