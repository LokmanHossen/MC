#line 1 "E:/4-2/MicroController/LAB/DC-Motor-Speed control-PMW/DC_Motor_Speep_PWM_Code/DcMotorSpeedCode.c"
void main()
{
 short duty = 0;
 TRISD = 0xFF;
 TRISB = 0x00;

 PORTB.F0=0xff;
 PORTB.F1=0x00;
 PWM1_Init(1000);
 PWM1_Start();
 PWM1_Set_Duty(duty);
 while (1)
 {
 if (RD0_bit && duty<250)
 {
 Delay_ms(100);
 if (RD0_bit && duty<250)
 {
 duty = duty + 10;
 PWM1_Set_Duty(duty);
 }
 }
 if (RD1_bit && duty >0)
 {
 Delay_ms(100);
 if (RD1_bit && duty >0)
 {
 duty = duty - 10;
 PWM1_Set_Duty(duty);
 }
 }
 Delay_ms(10);
 }
}
