/*******************************************************************************
* Title                 :   Secure Main 
* Filename              :   main.c
* Author                :   Hai Nguyen
* Origin Date           :   07.06.2020
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
 *  @brief  this file contains the secure main function, secure peripherals 
 *          initialization, which locate in the TrustZone
 */

/******************************************************************************
* Includes
*******************************************************************************/
#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes

/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/
#define VERSION     01
#define SUB_VERSION 00
#define TZ_START_NS 0x8000

/******************************************************************************
* Module Typedefs
*******************************************************************************/
/* typedef for non-secure callback functions */
typedef void (*funcptr_void) (void) __attribute__((cmse_nonsecure_call));

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
int main ( void )
{
    volatile funcptr_void NonSecure_ResetHandler;

    /* Initialize all modules */
    SYS_Initialize ( NULL );
    
    /* Set non-secure main stack (MSP_NS) */
    __TZ_set_MSP_NS(*((uint32_t *)(TZ_START_NS)));
    
    /* Get non-secure reset handler */
    NonSecure_ResetHandler = (funcptr_void)(*((uint32_t *)((TZ_START_NS) + 4U)));
    
    /* Start non-secure state software application */
    NonSecure_ResetHandler();

    /* Execution should not come here during normal operation */
    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

