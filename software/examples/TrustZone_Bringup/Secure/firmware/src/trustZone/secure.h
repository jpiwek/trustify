/*******************************************************************************
* Title                 :   secure function header
* Filename              :   secure.h
* Author                :   Quang Hai Nguyen
* Origin Date           :   10.06.2020
* Version               :   1.0.0
*
*******************************************************************************/

/*************** INTERFACE CHANGE LIST *****************************************
*
*  Date         Version     Author          Description 
*  10.06.2020   1.0.0       Hai N.          Interface Created.
*
*******************************************************************************/
/** @file   secure.h
 *  @brief  secure API
 *  
 */

#ifndef SECURE_H_
#define SECURE_H_

/*******************************************************************************
* Includes
*******************************************************************************/

/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/
//None

/******************************************************************************
* Module Typedefs
*******************************************************************************/
//None

/******************************************************************************
* Module Variable Definitions
*******************************************************************************/
//None

/******************************************************************************
* Function Prototypes
*******************************************************************************/
extern int add(int x, int y);
extern void Toggle(void);
extern void Systick_Init(void);
extern int Systick_GetElapse(void);

#endif /* SECURE_H_ */