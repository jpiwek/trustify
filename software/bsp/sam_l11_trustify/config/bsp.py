# coding: utf-8
"""*****************************************************************************
* Copyright (C) 2019 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
*****************************************************************************"""

def instantiateComponent(bspComponent):

    #Switch
    Database.setSymbolValue("core", "PIN_25_FUNCTION_TYPE", "EIC_EXTINT5")
    Database.setSymbolValue("core", "PIN_25_FUNCTION_NAME", "SWITCH")
    Database.setSymbolValue("core", "PIN_25_PULLEN", "True")
    Database.setSymbolValue("core", "PIN_25_LAT", "High")
    Database.setSymbolValue("core", "PIN_25_INEN", "True")

    #LED
    Database.setSymbolValue("core", "PIN_8_FUNCTION_TYPE", "LED_AL")
    Database.setSymbolValue("core", "PIN_8_FUNCTION_NAME", "LED")
    Database.setSymbolValue("core", "PIN_8_LAT", "High")
    Database.setSymbolValue("core", "PIN_8_DIR", "Out")

    #UART_FTDI
    Database.setSymbolValue("core", "PIN_24_FUNCTION_TYPE", "SERCOM0_PAD3")
    Database.setSymbolValue("core", "PIN_24_FUNCTION_NAME", "FTDI_UART_RX")
    Database.setSymbolValue("core", "PIN_24_PULLEN", "False")
    #Database.setSymbolValue("core", "PIN_24_LAT", "High")
    #Database.setSymbolValue("core", "PIN_24_INEN", "True")

    #UART_FTDI
    Database.setSymbolValue("core", "PIN_23_FUNCTION_TYPE", "SERCOM0_PAD2")
    Database.setSymbolValue("core", "PIN_23_FUNCTION_NAME", "FTDI_UART_TX")
    Database.setSymbolValue("core", "PIN_23_PULLEN", "False")
    #Database.setSymbolValue("core", "PIN_23_LAT", "High")
    #Database.setSymbolValue("core", "PIN_23_INEN", "True")

    #I2C_ATECC608
    Database.setSymbolValue("core", "PIN_17_FUNCTION_TYPE", "SERCOM1_PAD0")
    Database.setSymbolValue("core", "PIN_17_FUNCTION_NAME", "I2C_SDA")
    Database.setSymbolValue("core", "PIN_17_PULLEN", "False")
    #Database.setSymbolValue("core", "PIN_17_LAT", "High")
    #Database.setSymbolValue("core", "PIN_17_INEN", "True")

    #I2C_ATECC608
    Database.setSymbolValue("core", "PIN_18_FUNCTION_TYPE", "SERCOM1_PAD1")
    Database.setSymbolValue("core", "PIN_18_FUNCTION_NAME", "I2C_SCL")
    Database.setSymbolValue("core", "PIN_18_PULLEN", "False")
    #Database.setSymbolValue("core", "PIN_18_LAT", "High")
    #Database.setSymbolValue("core", "PIN_18_INEN", "True")

    BSP_NAME = "sam_l11_trustify"

    pinAttributes = [{"attrib":"type", "symbol":"BSP_CUSTOM_TYPE", "label":"Type Name"},
        {"attrib":"mode", "symbol":"BSP_CUSTOM_MODE", "label":"Mode"},
        {"attrib":"dir", "symbol":"BSP_CUSTOM_DIR", "label":"Direction"},
        {"attrib":"lat", "symbol":"BSP_CUSTOM_LAT", "label":"Initial Latch Value"},
        {"attrib":"pe", "symbol":"BSP_CUSTOM_PE", "label":"Pull Enable"},
        {"attrib":"ie", "symbol":"BSP_CUSTOM_IE", "label":"Input Enable"}]

    pinTypes = [{"type":"LED_AH", "mode":"DIGITAL", "dir":"OUT"},
            {"type":"LED_AL", "mode":"DIGITAL", "dir":"OUT", "lat":"High"},
            {"type":"SWITCH_AH", "mode":"DIGITAL", "ie":"True"},
            {"type":"SWITCH_AL", "mode":"DIGITAL", "ie":"True"}]

    execfile(Variables.get("__BSP_DIR") + "/boards/config/bsp_common.py")
