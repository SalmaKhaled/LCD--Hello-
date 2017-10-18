#line 1 "Z:/lcd/task2.c"
sbit LCD_RS at RC4_bit;
sbit LCD_EN at RC5_bit;
sbit LCD_D7 at RC3_bit;
sbit LCD_D6 at RC2_bit;
sbit LCD_D5 at RC1_bit;
sbit LCD_D4 at RC0_bit;


sbit LCD_RS_Direction at TRISC4_bit;
sbit LCD_EN_Direction at TRISC5_bit;
sbit LCD_D7_Direction at TRISC3_bit;
sbit LCD_D6_Direction at TRISC2_bit;
sbit LCD_D5_Direction at TRISC1_bit;
sbit LCD_D4_Direction at TRISC0_bit;

int i,j;

void main() {
 Lcd_Init();
 Lcd_Cmd(_LCD_CURSOR_OFF);
 while(1){

 for(i=1;i<=16;i++){

 Lcd_Out(1,i,"Hello");
 Delay_ms(200);
 Lcd_Out(1,i," ");

 if(i==12)
 {
 Lcd_Out(2,16,"o");
 }
 if(i==13)
 {
 Lcd_Out(2,15,"l");
 }
 if(i==14)
 {
 Lcd_Out(2,14,"l");
 }
 if(i==15)
 {
 Lcd_Out(2,13,"e");
 }
 if(i==16)
 {
 Lcd_Out(2,12,"H");
 }



 }
 Lcd_Out(2,13,"     ");
#line 65 "Z:/lcd/task2.c"
 for(i=11;i>=-4;i--){
 Lcd_Out(2,i,"Hello");



 if(i==0)
 {
 Lcd_Out(1,1,"H");
 }
 if(i==-1)
 {
 Lcd_Out(1,2,"e");
 }
 if(i==-2)
 {
 Lcd_Out(1,3,"l");
 }
 if(i==-3)
 {
 Lcd_Out(1,4,"l");
 }
 if(i==-4)
 {
 Lcd_Out(1,5,"o");
 }
 Delay_ms(200);
 Lcd_Out(2,i+4,"  ");
 }
 Lcd_Out(2,1,"     ");


 }
}
