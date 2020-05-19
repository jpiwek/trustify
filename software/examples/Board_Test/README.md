**Trustify** - [Link](https://)
====================================================

# Board Test example

## Introduction
This example is a short application to test the functionality of the board when you power it up for the first time. Additionally, it shows you how to initialize the on-board peripherals using MPLAB Harmony Configurator version 3.

## Prerequisite

### Software
* MPLAB X
* MPLAB Harmony Configurator version 3 (MHC v3)
* Terminal program (for example TeraTerm)
   
### Harware
* Trustify board
* MPLAB SNAP
* 2 micro USB cables

## Power-up the board for the first time

Connect the board as the following picture:

[place holder for picture](link)

Start MPLAB X and open this application

![open project](images/open_project.png?raw=true)

Compile and flash the application into the Trustify board

![compile_flash](images/compile_flash.png?raw=true)

Start terminal program with the following configuration

* Baud: 115200
* Data: 8 bits
* Stop bits: 1 bit
* Parity: none 

Press the reset button on the board (SW1), you should see the following message on the terminal:

![terminal 1](images/terminal_1.png?raw=true)

Press the user button (SW2), you should see the following message on the terminal

![terminal 2](images/terminal_2.png?raw=true)

You can observe that the LED should blink every one second

## Harmony Configurator

As mention in the introduction section. The peripherals on the board, which are LED, button, and the secure element are not initalized from scratch but using a code generator tool called Microchip Harmony Configurator verion 3.

To activate the tool, in MPLAB, choose Tools --> Embedded --> MBLAB Harmony 3 Configurator  

![MHC3_open](images/MHC3_open.png)


After the MHC v3 is opened, you see a component diagram. From the diagram, there are 3 groups handling the interrupt, the UART and the secure element

![component](images/component.png)


The interrupt is configured as follow:

![interrupt](images/interrupt.png)

The UART is configured as follow:

![UART](images/UART.png)

The secure element is configured as follow:

![SE](images/SE.png)

The pinout for the Trustify board is following:

![pinout](images/pinout.png)

Last but not least, we have to activate the system tick, in order to use the delay function and the interrupt service routine:

![systick](images/systick.png)

![picture](images/sys_interrupt.png)

## The End
