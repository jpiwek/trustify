**Trustify** - [Link](https://)
====================================================

# TrustZone Bringup Example

## Introduction
This example shows how to setup and running TrustZone in SAML11. This example underlines the following implemetation:

* The secured application provides two secured functions:
  * Toggle onboard LED
  * Get number of seconds elapsed in secure world (TrustZone)
* The non secure application implements the following:
  * Non-secured system tick generate an interrupt event, which toggles the LED thru the non-secured callable Toggle function
  * Display how many seconds elapsed in the secure world (using also the non-secure callable) by pressing the button   

## Prerequisite

### Software
* MPLAB X
* MPLAB Harmony Configurator version 3 (MHC v3)
* Terminal program (for example TeraTerm)
   
### Harware
* Trustify board
* MPLAB SNAP
* 2 micro USB cables

## Running the example

1. Connect the board to your PC.

2. Start MPLAB X and open BOTH secured and non-secured project

3. Build the secured project

4. Build and run the non-secure project 

5. Start terminal program with the following configuration

   * Baud: 115200
   * Data: 8 bits
   * Stop bits: 1 bit
   * Parity: none 

6. Press the reset button on the board (SW1). LED should be toggled. Number of seconds are displyed whenever the button is pressed.

## Note

If you are not familiar with using the toolchains, please refer [here]([link](https://github.com/jpiwek/trustify/tree/master/software/examples/Board_Test)) for setting up and running the board.

## Change log

### Version 1.0
* Intial version


## The End