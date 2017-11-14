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
LIBS:led_driver-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 35 37
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Barrel_Jack J?
U 1 1 5A15F131
P 1750 1350
F 0 "J?" H 1750 1560 50  0000 C CNN
F 1 "Barrel_Jack" H 1750 1175 50  0000 C CNN
F 2 "Connectors:BARREL_JACK" H 1800 1310 50  0001 C CNN
F 3 "" H 1800 1310 50  0001 C CNN
	1    1750 1350
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5A0AC005
P 2600 1450
F 0 "D?" H 2600 1550 50  0000 C CNN
F 1 "LED" H 2600 1350 50  0000 C CNN
F 2 "LEDs:LED_0603" H 2600 1450 50  0001 C CNN
F 3 "http://katalog.we-online.de/led/datasheet/150060GS75000.pdf" H 2600 1450 50  0001 C CNN
F 4 "732-4971-1-ND" H 2600 1450 60  0001 C CNN "Digikey"
	1    2600 1450
	0    -1   -1   0   
$EndComp
Text Notes 3240 1670 0    60   ~ 0
Power Indicating LED V18\n----------------------\nV_F 	= 3.5 V (typical)\nI 	= 5 mA (desired)\nR 	= 2.96 k (appr. 3 k, E24) 
$Comp
L R R?
U 1 1 5A0AD655
P 2600 1810
F 0 "R?" V 2680 1810 50  0000 C CNN
F 1 "3k" V 2600 1810 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2530 1810 50  0001 C CNN
F 3 "" H 2600 1810 50  0001 C CNN
F 4 "311-3.0KGRCT-ND" V 2600 1810 60  0001 C CNN "Digikey"
	1    2600 1810
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A0AD8CE
P 2600 2020
F 0 "#PWR?" H 2600 1770 50  0001 C CNN
F 1 "GND" H 2600 1870 50  0000 C CNN
F 2 "" H 2600 2020 50  0001 C CNN
F 3 "" H 2600 2020 50  0001 C CNN
	1    2600 2020
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1960 2600 2020
Wire Wire Line
	2600 1660 2600 1600
Wire Wire Line
	2050 1250 2770 1250
Wire Wire Line
	2600 1250 2600 1300
Wire Wire Line
	2050 1350 2290 1350
Wire Wire Line
	2290 1350 2290 1990
Wire Wire Line
	2290 1990 2600 1990
Connection ~ 2600 1990
Wire Wire Line
	2050 1450 2290 1450
Connection ~ 2290 1450
Text GLabel 2770 1250 2    60   Output ~ 0
V18
Connection ~ 2600 1250
$Comp
L L L?
U 1 1 5A0AFB54
P 8185 2880
F 0 "L?" V 8135 2880 50  0000 C CNN
F 1 "L" V 8260 2880 50  0000 C CNN
F 2 "MyInductors:WE-PD2-SMD-Power-Inductor" H 8185 2880 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1920233.pdf" H 8185 2880 50  0001 C CNN
F 4 "732-1316-1-ND" V 8185 2880 60  0001 C CNN "Digikey"
	1    8185 2880
	0    -1   -1   0   
$EndComp
$Comp
L C C?
U 1 1 5A0B087F
P 8460 3150
F 0 "C?" H 8485 3250 50  0000 L CNN
F 1 "22u" H 8485 3050 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 8498 3000 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Samsung%20PDFs/CL21A226MQCLQNC_character.pdf" H 8460 3150 50  0001 C CNN
F 4 "1276-2412-1-ND" H 8460 3150 60  0001 C CNN "Digikey"
	1    8460 3150
	-1   0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A0B15B3
P 8735 3150
F 0 "C?" H 8760 3250 50  0000 L CNN
F 1 "22u" H 8760 3050 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 8773 3000 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Samsung%20PDFs/CL21A226MQCLQNC_character.pdf" H 8735 3150 50  0001 C CNN
F 4 "1276-2412-1-ND" H 8735 3150 60  0001 C CNN "Digikey"
	1    8735 3150
	-1   0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A0B64DA
P 7600 3080
F 0 "C?" H 7625 3180 50  0000 L CNN
F 1 "22n" H 7625 2980 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 7638 2930 50  0001 C CNN
F 3 "" H 7600 3080 50  0001 C CNN
F 4 "1276-1104-1-ND" H 7600 3080 60  0001 C CNN "Digikey"
	1    7600 3080
	0    1    -1   0   
$EndComp
$Comp
L TS30011/12/13 U?
U 1 1 5A0B688D
P 6535 2980
F 0 "U?" H 7185 2530 60  0000 C CNN
F 1 "TS30011/12/13" H 6135 2530 60  0000 C CNN
F 2 "QFN:QFN-16-1EP_3x3mm_Pitch0.5mm" H 6685 2980 60  0001 C CNN
F 3 "http://www.semtech.com/images/datasheet/ts30011_12_13.pdf" H 6685 2980 60  0001 C CNN
F 4 "TS30011-M050QFNRCT-ND" H 6535 2980 60  0001 C CNN "Digikey"
	1    6535 2980
	1    0    0    -1  
$EndComp
Wire Wire Line
	7385 2880 8035 2880
Wire Wire Line
	7450 3080 7385 3080
Wire Wire Line
	7750 3080 7835 3080
Wire Wire Line
	7835 3080 7835 2880
Connection ~ 7835 2880
Wire Wire Line
	8735 2880 8735 3000
Wire Wire Line
	8460 2880 8460 3000
Connection ~ 8460 2880
$Comp
L D_Schottky D?
U 1 1 5A0B72C0
P 7935 3150
F 0 "D?" V 7935 3275 50  0000 C CNN
F 1 "D_Schottky" V 7935 3425 50  0001 C CNN
F 2 "Diodes_SMD:D_SOD-123" H 7935 3150 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PMEG3020EGW.pdf" H 7935 3150 50  0001 C CNN
F 4 "1727-7332-1-ND" V 7935 3150 60  0001 C CNN "Digikey"
	1    7935 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	7935 3000 7935 2880
Connection ~ 7935 2880
Text GLabel 4650 2680 0    60   Input ~ 0
V18
Text GLabel 7385 3280 2    60   Input ~ 0
V18
$Comp
L GND #PWR?
U 1 1 5A0B8173
P 7935 3475
F 0 "#PWR?" H 7935 3225 50  0001 C CNN
F 1 "GND" H 7935 3325 50  0000 C CNN
F 2 "" H 7935 3475 50  0001 C CNN
F 3 "" H 7935 3475 50  0001 C CNN
	1    7935 3475
	1    0    0    -1  
$EndComp
Wire Wire Line
	7935 3300 7935 3475
Wire Wire Line
	8460 3300 8460 3405
Wire Wire Line
	7935 3405 8735 3405
Wire Wire Line
	8735 3405 8735 3300
Connection ~ 7935 3405
Connection ~ 8460 3405
Text GLabel 8735 2705 1    60   UnSpc ~ 0
FB
Connection ~ 8735 2880
Text GLabel 5785 3080 0    60   UnSpc ~ 0
FB
$Comp
L GND #PWR?
U 1 1 5A0B8CE5
P 7510 2695
F 0 "#PWR?" H 7510 2445 50  0001 C CNN
F 1 "GND" H 7510 2545 50  0000 C CNN
F 2 "" H 7510 2695 50  0001 C CNN
F 3 "" H 7510 2695 50  0001 C CNN
	1    7510 2695
	1    0    0    -1  
$EndComp
Wire Wire Line
	7510 2695 7510 2680
Wire Wire Line
	7510 2680 7385 2680
Wire Wire Line
	8735 2705 8735 2875
Wire Wire Line
	8335 2880 8935 2880
$Comp
L GND #PWR?
U 1 1 5A0BC4D5
P 4805 3475
F 0 "#PWR?" H 4805 3225 50  0001 C CNN
F 1 "GND" H 4805 3325 50  0000 C CNN
F 2 "" H 4805 3475 50  0001 C CNN
F 3 "" H 4805 3475 50  0001 C CNN
	1    4805 3475
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A0BC504
P 5355 3060
F 0 "C?" H 5380 3160 50  0000 L CNN
F 1 "10n" H 5380 2960 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 5393 2910 50  0001 C CNN
F 3 "" H 5355 3060 50  0001 C CNN
F 4 "311-1085-1-ND" H 5355 3060 60  0001 C CNN "Digikey"
	1    5355 3060
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A0BC63E
P 5080 3060
F 0 "C?" H 5105 3160 50  0000 L CNN
F 1 "100n" H 5105 2960 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 5118 2910 50  0001 C CNN
F 3 "" H 5080 3060 50  0001 C CNN
F 4 "311-1088-1-ND" H 5080 3060 60  0001 C CNN "Digikey"
	1    5080 3060
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A0BC687
P 4805 3060
F 0 "C?" H 4830 3160 50  0000 L CNN
F 1 "10u" H 4830 2960 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 4843 2910 50  0001 C CNN
F 3 "" H 4805 3060 50  0001 C CNN
F 4 "490-6403-6-ND" H 4805 3060 60  0001 C CNN "Digikey"
	1    4805 3060
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2680 5785 2680
Wire Wire Line
	4805 2680 4805 2910
Wire Wire Line
	5080 2910 5080 2680
Connection ~ 5080 2680
Wire Wire Line
	5355 2910 5355 2680
Connection ~ 5355 2680
Wire Wire Line
	5355 3400 5355 3210
Wire Wire Line
	4805 3400 5535 3400
Wire Wire Line
	4805 3210 4805 3475
Connection ~ 4805 3400
Wire Wire Line
	5080 3210 5080 3400
Connection ~ 5080 3400
Wire Wire Line
	5535 3400 5535 2880
Wire Wire Line
	5535 2880 5785 2880
Connection ~ 5355 3400
Connection ~ 4805 2680
Text GLabel 8935 2880 2    60   Output ~ 0
V5
Text Notes 7730 2410 0    60   ~ 0
A low ESR is required for the output capacitors. 
$Comp
L R R?
U 1 1 5A0C01F9
P 6860 3650
F 0 "R?" V 6940 3650 50  0000 C CNN
F 1 "10k" V 6860 3650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6790 3650 50  0001 C CNN
F 3 "" H 6860 3650 50  0001 C CNN
F 4 "311-10KGRCT-ND" V 6860 3650 60  0001 C CNN "Digikey"
	1    6860 3650
	0    1    -1   0   
$EndComp
Text GLabel 7080 3650 2    60   UnSpc ~ 0
V5
Wire Wire Line
	7080 3650 7010 3650
Wire Wire Line
	6710 3650 6585 3650
Wire Wire Line
	6585 3650 6585 3530
$Comp
L LED D?
U 1 1 5A0C1EDB
P 6360 4870
F 0 "D?" H 6360 4970 50  0000 C CNN
F 1 "LED" H 6360 4770 50  0000 C CNN
F 2 "LEDs:LED_0603" H 6360 4870 50  0001 C CNN
F 3 "http://katalog.we-online.de/led/datasheet/150060GS75000.pdf" H 6360 4870 50  0001 C CNN
F 4 "732-4971-1-ND" H 6360 4870 60  0001 C CNN "Digikey"
	1    6360 4870
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 5A0C1EE2
P 6360 5230
F 0 "R?" V 6440 5230 50  0000 C CNN
F 1 "300R" V 6360 5230 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6290 5230 50  0001 C CNN
F 3 "" H 6360 5230 50  0001 C CNN
F 4 "P300HCT-ND" V 6360 5230 60  0001 C CNN "Digikey"
	1    6360 5230
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A0C1EE8
P 6360 5440
F 0 "#PWR?" H 6360 5190 50  0001 C CNN
F 1 "GND" H 6360 5290 50  0000 C CNN
F 2 "" H 6360 5440 50  0001 C CNN
F 3 "" H 6360 5440 50  0001 C CNN
	1    6360 5440
	1    0    0    -1  
$EndComp
Wire Wire Line
	6360 5380 6360 5440
Wire Wire Line
	6360 5080 6360 5020
Wire Wire Line
	6360 4670 6360 4720
Text GLabel 6360 4670 1    60   UnSpc ~ 0
V5
Text Notes 6560 5000 0    60   ~ 0
Power Indicating LED V5\n----------------------\nV_F 	= 3.5 V (typical)\nI 	= 5 mA (desired)\nR 	= 300 R (E24) 
$EndSCHEMATC
