**Trustify** - [Link](https://)
====================================================

# Software

## Introduction
This folder contains the information about the software for the Trustify board.

 ## [BSP](https://github.com/jpiwek/trustify/tree/master/software/bsp)

 the bsp folder contains the Board Support Package, which is the pinout of the Trustify board. It contains also the xml configuration file, which is the peripheral setup for:

* Uart interface to FTDI chip
* I2C interface to the ATECC608 secure element
* GPIO for button and LED

Those setups is carried out using Microchip Harmony Configurator version 3 (MHC3), so installing HMC3 is a must.

* To install HMC3, please go [here]() for instructions
* To add BSP of the Trustify board to your project (and the configuration file), please go [here](https://github.com/jpiwek/trustify/blob/master/software/bsp/README.md) 

 ## [Example](https://github.com/jpiwek/trustify/tree/master/software/examples)

 The examples folder contains the example codes and use cases of the Trustify Board, which help you to setup, program, and run the board.

 The examples are created using MPLAB X IDE and Microchip Harmony Configurator version 3 (MHC3). Please go [here]() to read the guide how to install those toolchains.

## The End