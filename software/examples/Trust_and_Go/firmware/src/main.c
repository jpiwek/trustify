/*******************************************************************************
* Title                 :   Main 
* Filename              :   main.c
* Author                :   Hai Nguyen
* Origin Date           :   19.05.2020
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
 *  @brief  this file contain the main application. This application shows user 
 *          the APIs and the procedure to read the root, signer and device 
 *          certificate out of the secure element. Then it shoes the user how to 
 *          verify the signer cert against the root cert and the device cert 
 *          against the signer cert.
 * 
 *          THIS APPLICATION IS DERIVED FROM THE TNG CERT EXAMPLE FROM HARMONY 3   
 *
 * 
 *  When building a secure application, the following preprocessor definitions 
 *  affect the linker script.
 *  SECURE (required): Use the memory layout for a secure application.
 *  BOOTPROT=size (optional): Defines the boot protections size in bytes. 
 *                            The default value is 0 if not provided.
 *  AS=size (recommended): Defines the flash application secure size, in bytes. 
 *                         Defaults to 50% of ROM is not provided.
 *  ANSC=size (recommended): Defines the flash application non-secure callable 
 *                           size, in bytes. Defaults to 0 if not provided.
 *  RS=size (recommended): Defines the size of secure RAM, in bytes. 
 *                         Defaults to 50% of RAM if not provided.
 * 
 *  This application is built following this configuration:
 *      AS = 63000  -- almost all of SAML11 Flash memory
 *      RS = 16000  -- almost all of SAML11 SRAM memory
 *      ANSC = 1024 -- modest non-secure  callable
 * 
 *  Command to add to the linker file: -DAS=65000,-DRS=16300,-DANSC=1024,
 */

/******************************************************************************
* Includes
*******************************************************************************/

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#include "cryptoauthlib.h"
#include "atcacert/atcacert_pem.h"
#include "atcacert/atcacert_host_hw.h"
#include "tng/tng_atca.h"
#include "tng/tng_atcacert_client.h"
#include "tng/tngtls_cert_def_1_signer.h"
#include "tng/tnglora_cert_def_1_signer.h"

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

/** \brief interface handler of atecc608 */
extern ATCAIfaceCfg atecc608a_0_init_data;

size_t g_signer_cert_size;
size_t g_device_cert_size;
uint8_t g_signer_cert[1024];
uint8_t g_device_cert[1024];
/******************************************************************************
* Function Prototypes
*******************************************************************************/
void EIC_Pin5Callback(uintptr_t context);
int main (void);
ATCA_STATUS print_cert_pem_format(uint8_t* g_cert, size_t g_cert_size);
ATCA_STATUS tng_get_signer_cert_def(const atcacert_def_t** cert_def);
ATCA_STATUS verify_chain_cert();

/******************************************************************************
* Function Definitions
*******************************************************************************/
int main (void)
{
    ATCA_STATUS status;
    uint8_t g_root_cert[1024];
    size_t g_root_cert_size;
    
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    
    //Start System tick to use delay function
    SYSTICK_TimerStart();
    
    //Register callback function for the switch
    EIC_CallbackRegister(EIC_PIN_5, EIC_Pin5Callback, 0);
    
    //Print fancy header
    printf("\n\n\n");
    printf("**************************************************************\n");
    printf("Trustify team: Janus, Mathias, and Hai\n\n");
    printf("Trust And Go Certificate application\n\n");
    printf("Version: %02d.%02d\n", VERSION, SUB_VERSION);
    printf("**************************************************************\n");
    
    printf("Starting TNG certificate Example\r\n\n");
    
    //init the interface to atecc608
    status = atcab_init(&atecc608a_0_init_data);
    do
    {
        // get and print the root certificate 
        tng_atcacert_root_cert_size(&g_root_cert_size);
        if((status = tng_atcacert_root_cert(g_root_cert, &g_root_cert_size)) != ATCACERT_E_SUCCESS)
        {
            printf("Root certificate loading failed with an error %d\r\n",status);
            break;
        }
        printf("Root Certificate loading from device\r\n");
        if(print_cert_pem_format(g_root_cert, g_root_cert_size) != ATCACERT_E_SUCCESS)
        {
            break;
        }

        // get and print the signer (intermediate) certificate 
        tng_atcacert_max_signer_cert_size(&g_signer_cert_size);
        if((status = tng_atcacert_read_signer_cert(g_signer_cert, &g_signer_cert_size)) != ATCACERT_E_SUCCESS)
        {
            printf("Signer Certificate loading failed with an error %d\r\n",status);
            break;
        }
        printf("Signer Certificate loading from device\r\n");
        if(print_cert_pem_format(g_signer_cert, g_signer_cert_size) != ATCACERT_E_SUCCESS)
        {
            break;
        }
        
        // get and print the device certificate 
        tng_atcacert_max_device_cert_size(&g_device_cert_size);
        if((status = tng_atcacert_read_device_cert(g_device_cert, &g_device_cert_size, g_signer_cert)) != ATCACERT_E_SUCCESS)
        {
            printf("Device Certificate loading failed with an error %d\r\n", status);
        }
        printf("Device Certificate loading from device\r\n");
        if(print_cert_pem_format(g_device_cert, g_device_cert_size) != ATCACERT_E_SUCCESS)
        {
            break;
        }

        printf("Verifying Chain of Trust:\r\n\n");
        verify_chain_cert();

    }while(0);
    
    // release resource
    atcab_release();
    
    while ( true )
    {
        //Maintain state machines of all polled MPLAB Harmony modules.
        SYS_Tasks ( );
    }
    
    /* Execution should not come here during normal operation */
    return ( EXIT_FAILURE );
}

void EIC_Pin5Callback(uintptr_t context)
{
    //doing nothing
}

ATCA_STATUS print_cert_pem_format(uint8_t* g_cert, size_t g_cert_size)
{
    ATCA_STATUS status;
    char g_cert_pem[1024];
    size_t g_cert_size_pem = 1024;
    status = atcacert_encode_pem_cert(g_cert, g_cert_size, g_cert_pem, &g_cert_size_pem);
    if (status != ATCACERT_E_SUCCESS)
    {
        printf("Encoding PEM certificate failed with an error %d\r\n",status);
        return status;
    }
    printf("%s\r\n",g_cert_pem);
    return status;
}

ATCA_STATUS tng_get_signer_cert_def(const atcacert_def_t** cert_def)
{
    ATCA_STATUS status;
    tng_type_t type;

    if(cert_def == NULL)
    {
        return ATCA_BAD_PARAM;
    }

    if((status = tng_get_type(&type)) != ATCA_SUCCESS)
    {
        return status;
    }

    if(type == TNGTYPE_LORA)
    {
        *cert_def = &g_tnglora_cert_def_1_signer;
    }
    else
    {
        *cert_def = &g_tngtls_cert_def_1_signer;
    }

    return ATCA_SUCCESS;
}

ATCA_STATUS verify_chain_cert()
{
    ATCA_STATUS status = ATCA_SUCCESS;
    uint8_t public_key[64];
    const atcacert_def_t* cert_def = NULL;
    
    // get public key from the root certificate
    tng_atcacert_root_public_key(public_key);

    //get the signer certificate definition
    if((status = tng_get_signer_cert_def(&cert_def)) != ATCA_SUCCESS)
    {
        return status;
    }
    
    //verify the signer certificate against the root certificate
    if((status = atcacert_verify_cert_hw(cert_def, g_signer_cert, g_signer_cert_size, public_key)) != ATCACERT_E_SUCCESS)
    {
        printf("Signer certificate is not verified against Signer CA, failed with an error %d\r\n",status);
        return status;
    }
    printf("Signer Certificate is validated against Signer CA certificate\r\n");

    // get the signer public key
    tng_atcacert_signer_public_key(public_key, g_signer_cert);
    
    //get the device certificate definition
    if((status = tng_get_device_cert_def(&cert_def)) != ATCA_SUCCESS)
    {
        return status;
    }
    
    //verify the device certificate against the signer certificate
    if((status = atcacert_verify_cert_hw(cert_def, g_device_cert, g_device_cert_size, public_key)) != ATCACERT_E_SUCCESS)
    {
        printf("Device Certificate is not verified against Signer Certificate, failed with an error %d\r\n",status);
        return status;
    }
    printf("Device Certificate is validated against Signer Certificate\r\n");

    return status;
}

/*******************************************************************************
 End of File
*/

