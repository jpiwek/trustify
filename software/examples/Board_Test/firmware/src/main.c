/*******************************************************************************
* Title                 :   Main 
* Filename              :   main.c
* Author                :   Hai Nguyen
* Origin Date           :   18.05.2020
* Version               :   1.0.0
* Compiler              :   XC32
* Target                :   ATSAML11E16A
* Notes                 :   None
*
* THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESSED
* OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
* OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
* IN NO EVENT SHALL BENINGO EMBEDDED OR ITS CONTRIBUTORS BE LIABLE FOR ANY
* DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
* (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
* SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
* HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
* STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
* IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF
* THE POSSIBILITY OF SUCH DAMAGE.
*
*******************************************************************************/
/*************** SOURCE REVISION LOG *****************************************
*
*  Date         Version     Author      Description 
*  18.05.2020   1.0.0       Hai N.      Initial Release.
*
*******************************************************************************/
/** @file   main.c
 *  @brief  this file contain the main application. This application serves as a 
 *          functional test for the Trustify board. It also shows the user how 
 *          to setup on board peripherals using Harmony Configurator. 
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
#define VERSION     00
#define SUB_VERSION 99

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


/******************************************************************************
* Function Definitions
*******************************************************************************/
int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    
    //Start System tick to use delay function
    SYSTICK_TimerStart();
    
    //Register callback function for the switch
    EIC_CallbackRegister(EIC_PIN_5, EIC_Pin5Callback, 0);
    
    //Print fancy header
    printf("\n\n\n");
    printf("**************************************************************\n");
    printf("Makers developed a secure platform during COVID-19 period to\n");
    printf("support communities and device manufacturers on re-thinking\n");
    printf("security strategies for their future product roadmap\n\n");
    printf("Trustify team: Janus, Mathias, and Hai\n\n");
    printf("Version: %02d.%02d\n", VERSION, SUB_VERSION);
    printf("**************************************************************\n");
    
    while ( true )
    {
        LED_Toggle();
        SYSTICK_DelayMs(1000);
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        SYS_Tasks ( );
    }
    /* Execution should not come here during normal operation */
    return ( EXIT_FAILURE );
}

void EIC_Pin5Callback(uintptr_t context)
{
    printf("switch is pressed!\n");
}

/*******************************************************************************
 End of File
*/

