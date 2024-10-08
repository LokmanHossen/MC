#line 1 "E:/4-2/MicroController/LAB/7-segment-1digit/7Seg-1digit-Code/SevenSegmentOneDigit.c"
char arraycc[]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};

void main() {
 int i = 0;
 trisb = 0x00;
 portb = 0xff;

 for(i=0; i<10; i++){
 portb = arraycc[i];
 delay_ms(50);
 }
#line 41 "E:/4-2/MicroController/LAB/7-segment-1digit/7Seg-1digit-Code/SevenSegmentOneDigit.c"
}
