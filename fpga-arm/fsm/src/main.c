#include "Fw_global_config.h"   // This defines application specific charactersitics

#include <stdio.h>
#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"
#include "timers.h"
#include "RtosTask.h"

/*    Include the generic headers required for QORC */
#include "eoss3_hal_gpio.h"
#include "eoss3_hal_rtc.h"
#include "eoss3_hal_timer.h"
#include "eoss3_hal_fpga_usbserial.h"
#include "ql_time.h"
#include "s3x_clock_hal.h"
#include "s3x_clock.h"
#include "s3x_pi.h"
#include "dbg_uart.h"

#include "cli.h"


extern const struct cli_cmd_entry my_main_menu[];


const char *SOFTWARE_VERSION_STR;


/*
 * Global variable definition
 */


extern void qf_hardwareSetup();
static void nvic_init(void);
#define GPIO_OUTPUT_MODE (1)
#define GPIO_INPUT_MODE (0)
void PyHal_GPIO_SetDir(uint8_t gpionum,uint8_t iomode);
int PyHal_GPIO_GetDir(uint8_t gpionum);
int PyHal_GPIO_Set(uint8_t gpionum, uint8_t gpioval);
int PyHal_GPIO_Get(uint8_t gpionum);


void sevenseg_setup(void);
void sevenseg(int a, int b, int c, int d, int e, int f, int g);
void disp(int num);

int main(void)
{
    uint32_t i=0,j=0,k=0;
    uint32_t q1=0,q2=0,q3=0,x=0,d1=0,d2=0,d3=0,y=1;
    uint32_t a,b,c,d,e,f,g;    
    SOFTWARE_VERSION_STR = "qorc-onion-apps/qf_hello-fpga-gpio-ctlr";
    
    qf_hardwareSetup();
    nvic_init();

    dbg_str("\n\n");
    dbg_str( "##########################\n");
    dbg_str( "Quicklogic QuickFeather FPGA GPIO CONTROLLER EXAMPLE\n");
    dbg_str( "SW Version: ");
    dbg_str( SOFTWARE_VERSION_STR );
    dbg_str( "\n" );
    dbg_str( DATE " " TIME "\n" );
    dbg_str( "##########################\n\n");

    dbg_str( "\n\nHello GPIO!!\n\n");  // <<<<<<<<<<<<<<<<<<<<<  Change me!

    CLI_start_task( my_main_menu );
  HAL_Delay_Init();

PyHal_GPIO_SetDir(12,0); //Input
PyHal_GPIO_Set(14,y);

while(1)
{
 PyHal_GPIO_Set(13,1);
 
x = PyHal_GPIO_Get(12);  
HAL_DelayUSec(1000000);
PyHal_GPIO_Set(13,0);
 HAL_DelayUSec(1000000);
d1 = (!q1&q2&q3&x);
d2 = (!q1&q2&!q3) | (!q1&!q2&q3&!x);
d3 = (!q2&!q3&!x) | (!q1&q2&!q3&x) | (!q1&q2&q3&!x);
y  = !d1;


q1 = d1;
q2 = d2;
q3 = d3;


a=(!q2&!q3&!x) | (!q1&q2&q3);
b=0;
c=(!q1&q2&!q3&!x) | (!q1&!q2&q3&!x);
d=a;
e=(!q2&!q3&!x) | (!q1&q2&x) | (!q1&q2&q3);
f=(!q2&!q3&!x) | (!q1&q2&!q3) | (!q1&q3&!x);
g=(!q2&!q3) | (!q1&!q2&x) | (!q1&q2&q3&!x);
     sevenseg_setup();    //Sevenseg ready for display
    sevenseg(a,b,c,d,e,f,g); 
    

    
}
//     disp(7);  //display the number

    /* Start the tasks and timer running. */
    vTaskStartScheduler();
    dbg_str("\n");

    while(1);
}

static void nvic_init(void)
 {
    // To initialize system, this interrupt should be triggered at main.
    // So, we will set its priority just before calling vTaskStartScheduler(), not the time of enabling each irq.
    NVIC_SetPriority(Ffe0_IRQn, configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITY);
    NVIC_SetPriority(SpiMs_IRQn, configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITY);
    NVIC_SetPriority(CfgDma_IRQn, configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITY);
    NVIC_SetPriority(Uart_IRQn, configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITY);
    NVIC_SetPriority(FbMsg_IRQn, configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITY);
 }    

void sevenseg(int a, int b, int c, int d, int e, int f, int g)

{
    //Seven Segment GPIO
    PyHal_GPIO_Set(4,a);//a
    PyHal_GPIO_Set(5,b);//b
    PyHal_GPIO_Set(6,c);//c
    PyHal_GPIO_Set(8,d);//d
    PyHal_GPIO_Set(9,e);//e
    PyHal_GPIO_Set(10,f);//f
    PyHal_GPIO_Set(11,g);//g
    
}

//needed for startup_EOSS3b.s asm file
void SystemInit(void)
{

}

//gpionum --> 0 --> 31 corresponding to the IO PADs
//gpioval --> 0 or 1
#define FGPIO_DIRECTION_REG (0x40024008)
#define FGPIO_OUTPUT_REG (0x40024004)
#define FGPIO_INPUT_REG (0x40024000)
//Set GPIO(=gpionum) Mode: Input(iomode = 0) or Output(iomode = 1)
//Before Set/Get GPIO value, the direction must be correctly set
void PyHal_GPIO_SetDir(uint8_t gpionum,uint8_t iomode)
{
    uint32_t tempscratch32;

    if (gpionum > 31)
        return;
tempscratch32 = *(uint32_t*)(FGPIO_DIRECTION_REG);
    if (iomode)
        *(uint32_t*)(FGPIO_DIRECTION_REG) = tempscratch32 | (0x1 << gpionum);
    else
        *(uint32_t*)(FGPIO_DIRECTION_REG) = tempscratch32 & (~(0x1 << gpionum));

}


//Get current GPIO(=gpionum) Mode: Input(iomode = 0) or Output(iomode = 1)
int PyHal_GPIO_GetDir(uint8_t gpionum)
{
    uint32_t tempscratch32;
    int result = 0;

    if (gpionum > 31)
        return -1;

    tempscratch32 = *(uint32_t*)(FGPIO_DIRECTION_REG);

    result = ((tempscratch32 & (0x1 << gpionum)) ? GPIO_OUTPUT_MODE : GPIO_INPUT_MODE);

    return result;
}

//Set GPIO(=gpionum) to 0 or 1 (= gpioval)
//The direction must be set as Output for this GPIO already
//Return value = 0, success OR -1 if error.
int PyHal_GPIO_Set(uint8_t gpionum, uint8_t gpioval)
{
    uint32_t tempscratch32;

    if (gpionum > 31)
        return -1;

    tempscratch32 = *(uint32_t*)(FGPIO_DIRECTION_REG);

    //Setting Direction moved out as separate API, we will only check
    //*(uint32_t*)(FGPIO_DIRECTION_REG) = tempscratch32 | (0x1 << gpionum);
    if (!(tempscratch32 & (0x1 << gpionum)))
    {
        //Direction not Set to Output
        return -1;
    }
    
    tempscratch32 = *(uint32_t*)(FGPIO_OUTPUT_REG);

    if(gpioval > 0)
    {
        *(uint32_t*)(FGPIO_OUTPUT_REG) = tempscratch32 | (0x1 << gpionum);
    }
    else
    {
        *(uint32_t*)(FGPIO_OUTPUT_REG) = tempscratch32 & ~(0x1 << gpionum);
    }    

    return 0;
}
//Get GPIO(=gpionum): 0 or 1 returned (or in erros -1)
//The direction must be set as Input for this GPIO already
int PyHal_GPIO_Get(uint8_t gpionum)
{
    uint32_t tempscratch32;
    uint32_t gpioval_input;

    if (gpionum > 31)
        return -1;

    tempscratch32 = *(uint32_t*)(FGPIO_INPUT_REG);
    gpioval_input = (tempscratch32 >> gpionum) & 0x1;

    return ((int)gpioval_input);
}



void sevenseg_setup(void)

{

    //Set GPIO direction
    PyHal_GPIO_SetDir(4,1);
    PyHal_GPIO_SetDir(5,1);
    PyHal_GPIO_SetDir(6,1);
    PyHal_GPIO_SetDir(8,1);    
    PyHal_GPIO_SetDir(9,1);
    PyHal_GPIO_SetDir(10,1);
    PyHal_GPIO_SetDir(11,1);
    PyHal_GPIO_SetDir(14,1);   
      
}

void disp(int num)
{
switch(num)
{
  case 0:
    sevenseg(0,0,0,0,0,0,1);
  break;
  case 1:
    sevenseg(1,0,0,1,1,1,1);
  break;
  case 2:
    sevenseg(0,0,1,0,0,1,0);
  break;
  case 3:
    sevenseg(0,0,0,0,1,1,0);
  break;
  case 4:
    sevenseg(1,0,0,1,1,0,0);
  break;
  case 5:
    sevenseg(0,1,0,0,1,0,0);
  break;
  case 6:
    sevenseg(0,1,0,0,0,0,0);
  break;
  case 7:
    sevenseg(0,0,0,1,1,1,1);
  break;
  case 8:
    sevenseg(0,0,0,0,0,0,0);
  break;
  case 9:
    sevenseg(0,0,0,0,1,0,0);
  break;
  default:
    sevenseg(0,1,1,0,0,0,0);
  break;
}
}
