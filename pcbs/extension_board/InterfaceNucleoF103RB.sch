EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:myopamps
LIBS:mydacs
LIBS:mydcdcs
LIBS:switches
LIBS:mytactilesw
LIBS:extension_board-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 36 37
Title "Interface to the Nucleo-F103RB"
Date "2017-11-16"
Rev ""
Comp "Uppsala University"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Conn_02x19_Odd_Even J6
U 1 1 5A0C4E25
P 2830 3565
F 0 "J6" H 2880 4565 50  0000 C CNN
F 1 "Conn_02x19_Odd_Even" H 2880 2565 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x19_Pitch2.54mm" H 2830 3565 50  0001 C CNN
F 3 "http://suddendocs.samtec.com/catalog_english/bcs.pdf" H 2830 3565 50  0001 C CNN
F 4 "BCS-119-F-D-TE" H 2880 2550 60  0000 C CNN "Samtec"
	1    2830 3565
	1    0    0    -1  
$EndComp
Text Notes 2275 2375 0    60   ~ 0
These connectors will be on the bottom so the pin assignments are mirrored on\nthe y axis.
Text GLabel 2630 3565 0    47   UnSpc ~ 0
GND
Text GLabel 2630 3665 0    47   UnSpc ~ 0
GND
Text GLabel 2630 2665 0    47   UnSpc ~ 0
PC11
Text GLabel 2630 2865 0    47   UnSpc ~ 0
E5V
Text GLabel 2630 2965 0    47   UnSpc ~ 0
GND
Text GLabel 2630 3365 0    47   UnSpc ~ 0
+3V3
Text GLabel 3130 3565 2    47   UnSpc ~ 0
GND
Text GLabel 3130 3665 2    47   UnSpc ~ 0
PB7
Text GLabel 3130 2665 2    47   UnSpc ~ 0
PC10
Text GLabel 3130 2765 2    47   UnSpc ~ 0
PC12
NoConn ~ 3130 3165
NoConn ~ 3130 3065
NoConn ~ 2630 3065
NoConn ~ 2630 3865
Text GLabel 4155 3565 0    47   UnSpc ~ 0
GND
Text GLabel 4155 2665 0    47   UnSpc ~ 0
PC8
Text GLabel 4655 3665 2    47   UnSpc ~ 0
PA9
Text GLabel 4655 2665 2    47   UnSpc ~ 0
PC9
Text GLabel 4655 3365 2    47   UnSpc ~ 0
PA7
Text GLabel 4655 3465 2    47   UnSpc ~ 0
PB6
Text GLabel 4655 3765 2    47   UnSpc ~ 0
PA8
Text GLabel 4655 4265 2    47   UnSpc ~ 0
PA10
NoConn ~ 4155 3065
NoConn ~ 4155 4465
NoConn ~ 4155 4365
Text GLabel 4655 3065 2    47   UnSpc ~ 0
GND
Text GLabel 4655 3165 2    47   UnSpc ~ 0
PA5
Text GLabel 8125 1095 0    47   UnSpc ~ 0
E5V
Text GLabel 8300 1095 2    47   UnSpc ~ 0
V5
Text Notes 7950 995  0    60   ~ 0
Powering the STM board with 5V.
Text Notes 7970 2405 0    60   ~ 0
Hook up I2C module 1 of the STM32F103RB.
Text GLabel 8145 2505 0    47   UnSpc ~ 0
PB7
Text GLabel 8320 2505 2    47   UnSpc ~ 0
I2C_SDA
Text GLabel 8145 2630 0    47   UnSpc ~ 0
PB6
Text GLabel 8320 2630 2    47   UnSpc ~ 0
I2C_SCL
$Comp
L R R202
U 1 1 5A0C91BF
P 8020 3250
F 0 "R202" V 8100 3250 50  0000 C CNN
F 1 "4.7k" V 8020 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7950 3250 50  0001 C CNN
F 3 "" H 8020 3250 50  0001 C CNN
F 4 "311-4.70KHRCT-ND" V 8020 3250 60  0001 C CNN "Digikey"
	1    8020 3250
	1    0    0    -1  
$EndComp
$Comp
L R R203
U 1 1 5A0C92CA
P 8320 3250
F 0 "R203" V 8400 3250 50  0000 C CNN
F 1 "4.7k" V 8320 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8250 3250 50  0001 C CNN
F 3 "" H 8320 3250 50  0001 C CNN
F 4 "311-4.70KHRCT-ND" V 8320 3250 60  0001 C CNN "Digikey"
	1    8320 3250
	1    0    0    -1  
$EndComp
Text GLabel 8320 3400 3    47   UnSpc ~ 0
I2C_SCL
Text GLabel 8020 3400 3    47   UnSpc ~ 0
I2C_SDA
Text GLabel 8185 1335 0    47   UnSpc ~ 0
+3V3
Text GLabel 8385 1335 2    47   UnSpc ~ 0
3V3
Text GLabel 8020 3100 1    47   UnSpc ~ 0
3V3
Text GLabel 8320 3100 1    47   UnSpc ~ 0
3V3
Wire Wire Line
	8125 1095 8300 1095
Wire Wire Line
	8145 2505 8320 2505
Wire Wire Line
	8145 2630 8320 2630
Wire Wire Line
	8185 1335 8385 1335
Text Notes 7970 2900 0    60   ~ 0
More I2C stuff.
Text Notes 7955 1260 0    60   ~ 0
Powering the extension board with the LDO output of the Nucleo.
Text Notes 4810 5415 0    60   ~ 0
Hook up SPI module 1 of the STM32F103RB.
Text GLabel 4985 5515 0    47   UnSpc ~ 0
PA5
Text GLabel 5160 5515 2    47   UnSpc ~ 0
SPI_CLK
Text GLabel 4985 5640 0    47   UnSpc ~ 0
PA6
Text GLabel 5160 5640 2    47   UnSpc ~ 0
SPI_MISO
Wire Wire Line
	4985 5515 5160 5515
Wire Wire Line
	4985 5640 5160 5640
Text Notes 2230 5475 0    60   ~ 0
Hook up user interface.
Text GLabel 2405 5575 0    47   UnSpc ~ 0
PA8
Text GLabel 2580 5575 2    47   UnSpc ~ 0
RES_OLED
Text GLabel 2405 5700 0    47   UnSpc ~ 0
PA9
Text GLabel 2580 5700 2    47   UnSpc ~ 0
DC_OLED
Wire Wire Line
	2405 5575 2580 5575
Wire Wire Line
	2405 5700 2580 5700
Text GLabel 2405 5825 0    47   UnSpc ~ 0
PA10
Text GLabel 2580 5825 2    47   UnSpc ~ 0
CS_OLED
Wire Wire Line
	2405 5825 2580 5825
Text GLabel 2405 5955 0    47   UnSpc ~ 0
PC8
Text GLabel 2580 5955 2    47   UnSpc ~ 0
UI_BUTTON
Text GLabel 2405 6080 0    47   UnSpc ~ 0
PC9
Text GLabel 2580 6080 2    47   UnSpc ~ 0
ROT_ENC_11
Wire Wire Line
	2405 5955 2580 5955
Wire Wire Line
	2405 6080 2580 6080
Text GLabel 2405 6205 0    47   UnSpc ~ 0
PC10
Text GLabel 2580 6205 2    47   UnSpc ~ 0
ROT_ENC_12
Text GLabel 2405 6330 0    47   UnSpc ~ 0
PC11
Text GLabel 2580 6330 2    47   UnSpc ~ 0
ROT_ENC_21
Wire Wire Line
	2405 6205 2580 6205
Wire Wire Line
	2405 6330 2580 6330
Text GLabel 2405 6460 0    47   UnSpc ~ 0
PC12
Text GLabel 2580 6460 2    47   UnSpc ~ 0
ROT_ENC_22
Wire Wire Line
	2405 6460 2580 6460
$Comp
L Conn_02x19_Odd_Even J7
U 1 1 5A0EDEA1
P 4355 3565
F 0 "J7" H 4405 4565 50  0000 C CNN
F 1 "Conn_02x19_Odd_Even" H 4405 2565 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x19_Pitch2.54mm" H 4355 3565 50  0001 C CNN
F 3 "http://suddendocs.samtec.com/catalog_english/bcs.pdf" H 4355 3565 50  0001 C CNN
F 4 "BCS-119-F-D-TE" H 4405 2550 60  0000 C CNN "Samtec"
	1    4355 3565
	1    0    0    -1  
$EndComp
$Comp
L TEST TP7
U 1 1 5A0F0DB2
P 8950 3350
F 0 "TP7" H 8950 3650 50  0000 C BNN
F 1 "I2C_SDA" H 8950 3600 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_quadr_1mm" H 8950 3350 50  0001 C CNN
F 3 "" H 8950 3350 50  0001 C CNN
	1    8950 3350
	1    0    0    -1  
$EndComp
Text GLabel 8950 3350 3    47   UnSpc ~ 0
I2C_SDA
$Comp
L TEST TP8
U 1 1 5A0F10F4
P 9400 3350
F 0 "TP8" H 9400 3650 50  0000 C BNN
F 1 "I2C_SCL" H 9400 3600 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_quadr_1mm" H 9400 3350 50  0001 C CNN
F 3 "" H 9400 3350 50  0001 C CNN
	1    9400 3350
	1    0    0    -1  
$EndComp
Text GLabel 9400 3350 3    47   UnSpc ~ 0
I2C_SCL
$Comp
L TEST TP6
U 1 1 5A0F1611
P 5675 6215
F 0 "TP6" H 5675 6515 50  0000 C BNN
F 1 "SPI_SCK" H 5675 6465 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_quadr_1mm" H 5675 6215 50  0001 C CNN
F 3 "" H 5675 6215 50  0001 C CNN
	1    5675 6215
	1    0    0    -1  
$EndComp
Text GLabel 4950 6215 3    47   UnSpc ~ 0
SPI_MOSI
$Comp
L TEST TP5
U 1 1 5A0F1618
P 4950 6215
F 0 "TP5" H 4950 6515 50  0000 C BNN
F 1 "SPI_MOSI" H 4950 6465 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_quadr_1mm" H 4950 6215 50  0001 C CNN
F 3 "" H 4950 6215 50  0001 C CNN
	1    4950 6215
	1    0    0    -1  
$EndComp
Text GLabel 5675 6215 3    47   UnSpc ~ 0
SPI_CLK
NoConn ~ 4155 4265
NoConn ~ 4155 4165
NoConn ~ 4155 4065
NoConn ~ 4155 3865
NoConn ~ 4155 3965
NoConn ~ 4155 3765
NoConn ~ 4155 3665
NoConn ~ 4655 3965
NoConn ~ 4655 4065
NoConn ~ 4655 4165
NoConn ~ 4655 4365
NoConn ~ 4655 4465
NoConn ~ 4655 3565
NoConn ~ 4155 3465
NoConn ~ 4155 3365
NoConn ~ 4155 3265
NoConn ~ 4155 3165
NoConn ~ 4155 2965
NoConn ~ 4155 2865
NoConn ~ 4155 2765
NoConn ~ 4655 2765
NoConn ~ 4655 2865
NoConn ~ 4655 2965
NoConn ~ 3130 3265
NoConn ~ 3130 3365
NoConn ~ 3130 3465
NoConn ~ 3130 2965
NoConn ~ 3130 2865
NoConn ~ 2630 3165
NoConn ~ 2630 3265
NoConn ~ 2630 3765
NoConn ~ 3130 3765
NoConn ~ 3130 3865
NoConn ~ 3130 4065
NoConn ~ 3130 4165
NoConn ~ 3130 4265
NoConn ~ 3130 4365
NoConn ~ 3130 4465
NoConn ~ 2630 4465
NoConn ~ 2630 4365
NoConn ~ 2630 4265
NoConn ~ 2630 4065
NoConn ~ 2630 4165
NoConn ~ 2630 3965
NoConn ~ 2630 3465
NoConn ~ 3130 3965
Text GLabel 2630 2765 0    47   UnSpc ~ 0
PD2
Text GLabel 2405 6590 0    47   UnSpc ~ 0
PD2
Text GLabel 2580 6590 2    47   UnSpc ~ 0
LIGHT_INT
Wire Wire Line
	2405 6590 2580 6590
Text GLabel 5325 6215 3    47   UnSpc ~ 0
SPI_MISO
$Comp
L TEST TP13
U 1 1 5A1C79EE
P 5325 6215
F 0 "TP13" H 5325 6515 50  0000 C BNN
F 1 "SPI_MISO" H 5325 6465 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_quadr_1mm" H 5325 6215 50  0001 C CNN
F 3 "" H 5325 6215 50  0001 C CNN
	1    5325 6215
	1    0    0    -1  
$EndComp
Text GLabel 4985 5770 0    47   UnSpc ~ 0
PA7
Text GLabel 5160 5770 2    47   UnSpc ~ 0
SPI_MOSI
Wire Wire Line
	4985 5770 5160 5770
Text GLabel 4655 3265 2    47   UnSpc ~ 0
PA6
Text GLabel 4655 3865 2    47   UnSpc ~ 0
PB10
$EndSCHEMATC
