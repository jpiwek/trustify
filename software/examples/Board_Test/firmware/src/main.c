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
#include "cryptoauthlib.h"

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

/** \brief Holding interface configuration of atecc608 */
extern ATCAIfaceCfg atecc608a_0_init_data;

/** \brief holding the serial number of atecc608 */
uint8_t sernum[9];

/** \brief holding the serial number of atecc608 in hex format and ascii characters */
char displayStr[ATCA_SERIAL_NUM_SIZE * 3];

/** \brief holding the size of the ascii array */
size_t displen = sizeof(displayStr);

/******************************************************************************
* Function Prototypes
*******************************************************************************/
void EIC_Pin5Callback(uintptr_t context);


/******************************************************************************
* Function Definitions
*******************************************************************************/
int main ( void )
{
    ATCA_STATUS status;
    
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
    printf("Board Test application\n\n");
    printf("Version: %02d.%02d\n", VERSION, SUB_VERSION);
    printf("**************************************************************\n");
    
    //Print the usage
    printf("\n\nPlease verify if LED is blinking and you receive a seiral number from ATECC608\n");
    printf("\n\nPlease press SW2 to test switch functionality\n");
    
    //Testing ATECC608
    printf("\n\nTesting ATECC608\n");
    //Initialize the interface to ATECC608
    status = atcab_init(&atecc608a_0_init_data);
    if (ATCA_SUCCESS == status)
    {
        //If success, read serial number and convert to ascii to display on terminal
        status = atcab_read_serial_number(sernum);
        atcab_bin2hex(sernum, 9, displayStr, &displen);
        printf("Serial Number of the Device: %s\r\n\n", displayStr);
    }
    else
    {
        //Print error message when failed
        printf("ATECC608 could not be initialized\n");
    }
    
    //Release the device
    atcab_release();
    
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
    //Print message on terminal
    //Only demo, pls dont use printf on your real application!!!
    printf("switch is pressed!\n");
}

/*******************************************************************************
 End of File
*/

