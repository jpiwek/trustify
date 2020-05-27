/*******************************************************************************
* Title                 :   Veneer table
* Filename              :   veneer.c
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
/** @file   veneer.c
 *  @brief  this file contains the secure functions, which are allowed to be 
 *          used by the non-secure application
 */

#include "secure.h"    /* Header file with secure interface API */

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
/* None */

/******************************************************************************
* Function Prototypes
*******************************************************************************/
/* None */

/******************************************************************************
* Function Definitions
*******************************************************************************/

/* Non-secure callable (entry) function for add function */
int __attribute__((cmse_nonsecure_entry)) secure_add(int x, int y)
{
	return add(x, y);
}

/* Non-secure callable (entry) function for Toggle function */
void __attribute__((cmse_nonsecure_entry)) secure_Toggle(void)
{
    Toggle();
}

/* Non-secure callable (entry) function for Systick_Init function */
void __attribute__((cmse_nonsecure_entry)) secure_Systick_Init(void)
{
    Systick_Init();
}

/* Non-secure callable (entry) function for Systick_GetElapse function */
int __attribute__((cmse_nonsecure_entry)) secure_Systick_GetElapse(void)
{
    return Systick_GetElapse();
}