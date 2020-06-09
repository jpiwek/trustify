/*******************************************************************************
* Title                 :   Secure Functions
* Filename              :   secure.c
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
/** @file   secure.c
 *  @brief  this file contains the secure functions, which must be isolated from 
 *          the non-secure side
 */

/******************************************************************************
* Includes
*******************************************************************************/
#include "secure.h"    /* Header file with secure interface API */
#include "definitions.h"

/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/

/******************************************************************************
* Module Typedefs
*******************************************************************************/
/* None */

/******************************************************************************
* Module Variable Definitions
*******************************************************************************/
/** \brief store number of secure system ticks*/
int count = 0;

/******************************************************************************
* Function Prototypes
*******************************************************************************/
void SystemTick_Callback(uintptr_t context);

/******************************************************************************
* Function Definitions
*******************************************************************************/

/******************************************************************************
* Function : add
*//** 
* \b Description:
*
* This function calculates sum of 2 integers
* 
* @param    x: (IN) first integer
* @param    y: (IN) second integer
* @return   sum of 2 integers
*
*******************************************************************************/
int add(int x, int y)
{
	return (x + y);
}

/******************************************************************************
* Function : Toggle
*//** 
* \b Description:
*
* This function toggles the on board LED 
* 
* @param    None
* @return   None
*
*******************************************************************************/
void Toggle(void)
{
    LED_Toggle();
}

/******************************************************************************
* Function : Toggle
*//** 
* \b Description:
*
* This function registers the callback function for the secure system timer and 
* start the timer
* 
* @param    None
* @return   None
*
*******************************************************************************/
void Systick_Init(void)
{
    //Register systick callback and start it
    SYSTICK_TimerCallbackSet(SystemTick_Callback, 0);
    SYSTICK_TimerStart();
}

/******************************************************************************
* Function : Toggle
*//** 
* \b Description:
*
* This function return how many seconds have passed in the secure world
* 
* @param    None
* @return   number of second has elapsed
*
*******************************************************************************/
int Systick_GetElapse(void)
{
    return count/10;
}

/******************************************************************************
* Function : Toggle
*//** 
* \b Description:
*
* Callback function of secure system timer interrupt. In the callback we 
* increase the count variable
* 
* @param    context: data passed to the callback, not used
* @return   None
*
*******************************************************************************/
void SystemTick_Callback(uintptr_t context)
{
    count++;
}

