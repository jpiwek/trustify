/*******************************************************************************
* Title                 :   Non-secure main 
* Filename              :   main.c
* Author                :   Hai Nguyen
* Origin Date           :   10.06.2020
* Version               :   01.00
* Compiler              :   XC32 v2.40
* IDE                   :   MPLAB X v5.40
* Other Toolchain       :   Harmony v3.50
* Target                :   ATSAML11E16A
* Notes                 :   None
*
*
*******************************************************************************/
/*************** SOURCE REVISION LOG *****************************************
*
*  Date         Version     Author      Description 
*  10.06.2020   01.00       Hai N.      Initial Release
*
*******************************************************************************/
/** @file   main.c
 *  @brief  this file contains application which runs in non-secure domain
 */


/******************************************************************************
* Includes
*******************************************************************************/

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#include "trustZone/veneer.h"

/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/
#define VERSION     01
#define SUB_VERSION 00

/******************************************************************************
* Module Typedefs
*******************************************************************************/

/******************************************************************************
* Module Variable Definitions
*******************************************************************************/

/******************************************************************************
* Function Prototypes
*******************************************************************************/
void EIC_Pin5Callback(uintptr_t context);
void SystemTick_Callback(uintptr_t context);

/******************************************************************************
* Function Definitions
*******************************************************************************/
int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    
    /* Print fancy header */
    printf("\n\n\n");
    printf("**************************************************************\n");
    printf("Makers developed a secure platform during COVID-19 period to\n");
    printf("support communities and device manufacturers on re-thinking\n");
    printf("security strategies for their future product roadmap\n\n");
    printf("Trustify team: Janus, Mathias, and Hai\n\n");
    printf("Board Test application\n\n");
    printf("Version: %02d.%02d\n", VERSION, SUB_VERSION);
    printf("**************************************************************\n");
    printf("Non_secure world\n");
    
    //Initialize the Secure systick
    secure_Systick_Init();
    
    //Initialize and Start non-secure Systick
    SYSTICK_TimerCallbackSet(SystemTick_Callback, 0);
    SYSTICK_TimerStart();
    
    //Register callback function for the switch
    EIC_CallbackRegister(EIC_PIN_5, EIC_Pin5Callback, 0);
    
    while ( true )
    {
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        SYS_Tasks ( );
    }
    
    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}

/******************************************************************************
* Function : EIC_Pin5Callback
*//** 
* \b Description:
*
* Callback function for the interrupt event when the on-board button is press
* 
* @param    context: (IN) data passed to the callback
* @return   None
*
*******************************************************************************/
void EIC_Pin5Callback(uintptr_t context)
{
    //Print message on terminal
    //Only demo, pls dont use printf in your interrupt code
    int count_s;
    count_s = secure_Systick_GetElapse();
    printf("%ds has elapsed in secure world\n", count_s);
}

/******************************************************************************
* Function : EIC_Pin5Callback
*//** 
* \b Description:
*
* Callback function for the non-secure system timer interrupt
* 
* @param    context: (IN) data passed to the callback (not used)
* @return   None
*
*******************************************************************************/
void SystemTick_Callback(uintptr_t context)
{
    //toggle LED
    secure_Toggle();
}

/*******************************************************************************
 End of File
*/

