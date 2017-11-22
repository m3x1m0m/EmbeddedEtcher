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
LIBS:led_driver-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 35 37
Title "Power Connection and Regulation"
Date "2017-11-16"
Rev ""
Comp "Uppsala University"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Barrel_Jack J5
U 1 1 5A15F131
P 4240 2510
F 0 "J5" H 4240 2720 50  0000 C CNN
F 1 "Barrel_Jack" H 4240 2335 50  0000 C CNN
F 2 "Connectors:BARREL_JACK" H 4290 2470 50  0001 C CNN
F 3 "" H 4290 2470 50  0001 C CNN
	1    4240 2510
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 5A0AC005
P 5090 2610
F 0 "D1" H 5090 2710 50  0000 C CNN
F 1 "LED" H 5090 2510 50  0000 C CNN
F 2 "LEDs:LED_0603" H 5090 2610 50  0001 C CNN
F 3 "http://katalog.we-online.de/led/datasheet/150060GS75000.pdf" H 5090 2610 50  0001 C CNN
F 4 "732-4971-1-ND" H 5090 2610 60  0001 C CNN "Digikey"
	1    5090 2610
	0    -1   -1   0   
$EndComp
Text Notes 5730 2830 0    60   ~ 0
Power Indicating LED V18\n----------------------\nV_F 	= 3.2 V (typical)\nI 	= 5 mA (desired)\nR 	= 2.96 k (appr. 3 k, E24) 
$Comp
L R R199
U 1 1 5A0AD655
P 5090 2970
F 0 "R199" V 5170 2970 50  0000 C CNN
F 1 "3k" V 5090 2970 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5020 2970 50  0001 C CNN
F 3 "" H 5090 2970 50  0001 C CNN
F 4 "311-3.0KGRCT-ND" V 5090 2970 60  0001 C CNN "Digikey"
	1    5090 2970
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR0292
U 1 1 5A0AD8CE
P 5090 3180
F 0 "#PWR0292" H 5090 2930 50  0001 C CNN
F 1 "GND" H 5090 3030 50  0000 C CNN
F 2 "" H 5090 3180 50  0001 C CNN
F 3 "" H 5090 3180 50  0001 C CNN
	1    5090 3180
	1    0    0    -1  
$EndComp
Text GLabel 5260 2410 2    60   Output ~ 0
V18
$Comp
L L L1
U 1 1 5A0AFB54
P 5365 5345
F 0 "L1" V 5315 5345 50  0000 C CNN
F 1 "L" V 5440 5345 50  0000 C CNN
F 2 "MyInductors:WE-PD2-SMD-Power-Inductor" H 5365 5345 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1920233.pdf" H 5365 5345 50  0001 C CNN
F 4 "732-1316-1-ND" V 5365 5345 60  0001 C CNN "Digikey"
	1    5365 5345
	0    -1   -1   0   
$EndComp
$Comp
L C C136
U 1 1 5A0B087F
P 5640 5615
F 0 "C136" H 5665 5715 50  0000 L CNN
F 1 "22u" H 5665 5515 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 5678 5465 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Samsung%20PDFs/CL21A226MQCLQNC_character.pdf" H 5640 5615 50  0001 C CNN
F 4 "1276-2412-1-ND" H 5640 5615 60  0001 C CNN "Digikey"
	1    5640 5615
	-1   0    0    -1  
$EndComp
$Comp
L C C137
U 1 1 5A0B15B3
P 5915 5615
F 0 "C137" H 5940 5715 50  0000 L CNN
F 1 "22u" H 5940 5515 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 5953 5465 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Samsung%20PDFs/CL21A226MQCLQNC_character.pdf" H 5915 5615 50  0001 C CNN
F 4 "1276-2412-1-ND" H 5915 5615 60  0001 C CNN "Digikey"
	1    5915 5615
	-1   0    0    -1  
$EndComp
$Comp
L C C135
U 1 1 5A0B64DA
P 4780 5545
F 0 "C135" H 4805 5645 50  0000 L CNN
F 1 "22n" H 4805 5445 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 4818 5395 50  0001 C CNN
F 3 "" H 4780 5545 50  0001 C CNN
F 4 "1276-1104-1-ND" H 4780 5545 60  0001 C CNN "Digikey"
	1    4780 5545
	0    1    -1   0   
$EndComp
$Comp
L TS30011/12/13 U34
U 1 1 5A0B688D
P 3715 5445
F 0 "U34" H 4365 4995 60  0000 C CNN
F 1 "TS30011/12/13" H 3315 4995 60  0000 C CNN
F 2 "QFN:QFN-16-1EP_3x3mm_Pitch0.5mm" H 3865 5445 60  0001 C CNN
F 3 "http://www.semtech.com/images/datasheet/ts30011_12_13.pdf" H 3865 5445 60  0001 C CNN
F 4 "TS30011-M050QFNRCT-ND" H 3715 5445 60  0001 C CNN "Digikey"
	1    3715 5445
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D2
U 1 1 5A0B72C0
P 5115 5615
F 0 "D2" V 5115 5740 50  0000 C CNN
F 1 "D_Schottky" V 5115 5890 50  0001 C CNN
F 2 "Diodes_SMD:D_SOD-123" H 5115 5615 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PMEG3020EGW.pdf" H 5115 5615 50  0001 C CNN
F 4 "1727-7332-1-ND" V 5115 5615 60  0001 C CNN "Digikey"
	1    5115 5615
	0    1    1    0   
$EndComp
Text GLabel 1830 5145 0    60   Input ~ 0
V18
$Comp
L GND #PWR0293
U 1 1 5A0B8173
P 5115 5940
F 0 "#PWR0293" H 5115 5690 50  0001 C CNN
F 1 "GND" H 5115 5790 50  0000 C CNN
F 2 "" H 5115 5940 50  0001 C CNN
F 3 "" H 5115 5940 50  0001 C CNN
	1    5115 5940
	1    0    0    -1  
$EndComp
Text GLabel 5915 5170 1    60   UnSpc ~ 0
FB
Text GLabel 2965 5545 0    60   UnSpc ~ 0
FB
$Comp
L GND #PWR0294
U 1 1 5A0B8CE5
P 4690 5160
F 0 "#PWR0294" H 4690 4910 50  0001 C CNN
F 1 "GND" H 4690 5010 50  0000 C CNN
F 2 "" H 4690 5160 50  0001 C CNN
F 3 "" H 4690 5160 50  0001 C CNN
	1    4690 5160
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0295
U 1 1 5A0BC4D5
P 1985 5940
F 0 "#PWR0295" H 1985 5690 50  0001 C CNN
F 1 "GND" H 1985 5790 50  0000 C CNN
F 2 "" H 1985 5940 50  0001 C CNN
F 3 "" H 1985 5940 50  0001 C CNN
	1    1985 5940
	1    0    0    -1  
$EndComp
$Comp
L C C134
U 1 1 5A0BC504
P 2535 5525
F 0 "C134" H 2560 5625 50  0000 L CNN
F 1 "10n" H 2560 5425 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2573 5375 50  0001 C CNN
F 3 "" H 2535 5525 50  0001 C CNN
F 4 "311-1085-1-ND" H 2535 5525 60  0001 C CNN "Digikey"
	1    2535 5525
	1    0    0    -1  
$EndComp
$Comp
L C C133
U 1 1 5A0BC63E
P 2260 5525
F 0 "C133" H 2285 5625 50  0000 L CNN
F 1 "100n" H 2285 5425 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2298 5375 50  0001 C CNN
F 3 "" H 2260 5525 50  0001 C CNN
F 4 "311-1088-1-ND" H 2260 5525 60  0001 C CNN "Digikey"
	1    2260 5525
	1    0    0    -1  
$EndComp
$Comp
L C C132
U 1 1 5A0BC687
P 1985 5525
F 0 "C132" H 2010 5625 50  0000 L CNN
F 1 "10u" H 2010 5425 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2023 5375 50  0001 C CNN
F 3 "" H 1985 5525 50  0001 C CNN
F 4 "490-6403-6-ND" H 1985 5525 60  0001 C CNN "Digikey"
	1    1985 5525
	1    0    0    -1  
$EndComp
Text GLabel 6115 5345 2    60   Output ~ 0
V5
Text Notes 4910 4875 0    60   ~ 0
A low ESR is required for the output capacitors. 
$Comp
L R R197
U 1 1 5A0C01F9
P 4040 6395
F 0 "R197" V 4120 6395 50  0000 C CNN
F 1 "10k" V 4040 6395 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3970 6395 50  0001 C CNN
F 3 "" H 4040 6395 50  0001 C CNN
F 4 "311-10KGRCT-ND" V 4040 6395 60  0001 C CNN "Digikey"
	1    4040 6395
	0    1    -1   0   
$EndComp
Text GLabel 4260 6395 2    60   UnSpc ~ 0
3V3
$Comp
L LED D4
U 1 1 5A0C1EDB
P 8770 4200
F 0 "D4" H 8770 4300 50  0000 C CNN
F 1 "LED" H 8770 4100 50  0000 C CNN
F 2 "LEDs:LED_0603" H 8770 4200 50  0001 C CNN
F 3 "http://katalog.we-online.de/led/datasheet/150060GS75000.pdf" H 8770 4200 50  0001 C CNN
F 4 "732-4971-1-ND" H 8770 4200 60  0001 C CNN "Digikey"
	1    8770 4200
	0    -1   -1   0   
$EndComp
$Comp
L R R201
U 1 1 5A0C1EE2
P 8770 4560
F 0 "R201" V 8850 4560 50  0000 C CNN
F 1 "360R" V 8770 4560 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8700 4560 50  0001 C CNN
F 3 "" H 8770 4560 50  0001 C CNN
F 4 "311-360GRCT-ND" V 8770 4560 60  0001 C CNN "Digikey"
	1    8770 4560
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR0296
U 1 1 5A0C1EE8
P 8770 4770
F 0 "#PWR0296" H 8770 4520 50  0001 C CNN
F 1 "GND" H 8770 4620 50  0000 C CNN
F 2 "" H 8770 4770 50  0001 C CNN
F 3 "" H 8770 4770 50  0001 C CNN
	1    8770 4770
	1    0    0    -1  
$EndComp
Text GLabel 8770 3880 1    60   UnSpc ~ 0
V5
Text Notes 8970 4330 0    60   ~ 0
Power Indicating LED V5\n----------------------\nV_F 	= 3.2 V (typical)\nI 	= 5 mA (desired)\nR 	= 360 R (E24) 
$Comp
L R R198
U 1 1 5A0D7E56
P 4810 2410
F 0 "R198" V 4890 2410 50  0000 C CNN
F 1 "0R" V 4810 2410 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 4740 2410 50  0001 C CNN
F 3 "" H 4810 2410 50  0001 C CNN
F 4 "311-0.0ERCT-ND" V 4810 2410 60  0001 C CNN "Digikey"
	1    4810 2410
	0    1    1    0   
$EndComp
Text Notes 4065 1985 0    60   ~ 0
1206 resistor footprint for being able to solder in a switch (housing) in a\nlater revision.
$Comp
L TEST TP1
U 1 1 5A0DAD3B
P 3460 6395
F 0 "TP1" H 3460 6695 50  0000 C BNN
F 1 "PG" H 3460 6645 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_quadr_1mm" H 3460 6395 50  0001 C CNN
F 3 "" H 3460 6395 50  0001 C CNN
	1    3460 6395
	1    0    0    -1  
$EndComp
Wire Wire Line
	5090 3120 5090 3180
Wire Wire Line
	5090 2820 5090 2760
Wire Wire Line
	4565 5345 5215 5345
Wire Wire Line
	4630 5545 4565 5545
Wire Wire Line
	4930 5545 5015 5545
Wire Wire Line
	5015 5545 5015 5345
Connection ~ 5015 5345
Wire Wire Line
	5915 5170 5915 5465
Wire Wire Line
	5640 5345 5640 5465
Connection ~ 5640 5345
Wire Wire Line
	5115 5465 5115 5345
Connection ~ 5115 5345
Wire Wire Line
	5115 5765 5115 5940
Wire Wire Line
	5640 5765 5640 5870
Wire Wire Line
	5115 5870 5915 5870
Wire Wire Line
	5915 5870 5915 5765
Connection ~ 5115 5870
Connection ~ 5640 5870
Connection ~ 5915 5345
Wire Wire Line
	4690 5160 4690 5145
Wire Wire Line
	4690 5145 4565 5145
Wire Wire Line
	5515 5345 6115 5345
Wire Wire Line
	1830 5145 2965 5145
Wire Wire Line
	1985 5145 1985 5375
Wire Wire Line
	2260 5375 2260 5145
Connection ~ 2260 5145
Wire Wire Line
	2535 5375 2535 5145
Connection ~ 2535 5145
Wire Wire Line
	2535 5865 2535 5675
Wire Wire Line
	1985 5865 2715 5865
Wire Wire Line
	1985 5675 1985 5940
Connection ~ 1985 5865
Wire Wire Line
	2260 5675 2260 5865
Connection ~ 2260 5865
Wire Wire Line
	2715 5865 2715 5345
Wire Wire Line
	2715 5345 2965 5345
Connection ~ 2535 5865
Connection ~ 1985 5145
Wire Wire Line
	4260 6395 4190 6395
Wire Wire Line
	3765 6395 3765 5995
Wire Wire Line
	8770 4710 8770 4770
Wire Wire Line
	8770 4410 8770 4350
Wire Wire Line
	8770 3880 8770 4050
Wire Wire Line
	4540 2410 4660 2410
Wire Wire Line
	4680 3150 5090 3150
Wire Wire Line
	4680 2510 4540 2510
Connection ~ 5090 3150
Wire Wire Line
	4680 2510 4680 3150
Wire Wire Line
	4540 2610 4680 2610
Connection ~ 4680 2610
Wire Wire Line
	3460 6395 3890 6395
Connection ~ 3765 6395
$Comp
L TEST TP2
U 1 1 5A0DBBC6
P 5090 2385
F 0 "TP2" H 5090 2685 50  0000 C BNN
F 1 "V18" H 5090 2635 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_quadr_1mm" H 5090 2385 50  0001 C CNN
F 3 "" H 5090 2385 50  0001 C CNN
	1    5090 2385
	1    0    0    -1  
$EndComp
Wire Wire Line
	4960 2410 5260 2410
Connection ~ 5090 2410
Wire Wire Line
	5090 2385 5090 2460
NoConn ~ 4565 5745
$Comp
L TEST TP4
U 1 1 5A0DE668
P 8465 3925
F 0 "TP4" H 8465 4225 50  0000 C BNN
F 1 "V5" H 8465 4175 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_quadr_1mm" H 8465 3925 50  0001 C CNN
F 3 "" H 8465 3925 50  0001 C CNN
	1    8465 3925
	1    0    0    -1  
$EndComp
Wire Wire Line
	8770 3980 8465 3980
Wire Wire Line
	8465 3980 8465 3925
Connection ~ 8770 3980
Text GLabel 2100 2800 2    60   Output ~ 0
V18
$Comp
L Conn_02x05_Odd_Even J4
U 1 1 5A0E751D
P 1650 3000
F 0 "J4" H 1700 3300 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 1700 2700 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch2.54mm" H 1650 3000 50  0001 C CNN
F 3 "http://suddendocs.samtec.com/catalog_english/tsw_th.pdf" H 1650 3000 50  0001 C CNN
F 4 "TSW-105-07-G-D" H 1650 2700 60  0000 C CNN "Samtec"
	1    1650 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 2800 2100 2800
Wire Wire Line
	2050 2650 2050 3200
Wire Wire Line
	2050 3200 1950 3200
Connection ~ 2050 2800
Wire Wire Line
	1950 2900 2050 2900
Connection ~ 2050 2900
Wire Wire Line
	1950 3000 2050 3000
Connection ~ 2050 3000
Wire Wire Line
	1950 3100 2050 3100
Connection ~ 2050 3100
Wire Wire Line
	2050 2650 1350 2650
Wire Wire Line
	1350 2650 1350 3200
Wire Wire Line
	1350 3200 1450 3200
Wire Wire Line
	1450 3100 1350 3100
Connection ~ 1350 3100
Wire Wire Line
	1450 3000 1350 3000
Connection ~ 1350 3000
Wire Wire Line
	1450 2900 1350 2900
Connection ~ 1350 2900
Wire Wire Line
	1450 2800 1350 2800
Connection ~ 1350 2800
Text Notes 1000 2550 0    60   ~ 0
Power connector for extension board (LEDs).
Text Notes 1600 4865 0    60   ~ 0
With this step-down converter the STM board is powered.
$Comp
L LED D3
U 1 1 5A0EF3DB
P 8740 2330
F 0 "D3" H 8740 2430 50  0000 C CNN
F 1 "LED" H 8740 2230 50  0000 C CNN
F 2 "LEDs:LED_0603" H 8740 2330 50  0001 C CNN
F 3 "http://katalog.we-online.de/led/datasheet/150060GS75000.pdf" H 8740 2330 50  0001 C CNN
F 4 "732-4971-1-ND" H 8740 2330 60  0001 C CNN "Digikey"
	1    8740 2330
	0    -1   -1   0   
$EndComp
$Comp
L R R200
U 1 1 5A0EF3E2
P 8740 2690
F 0 "R200" V 8820 2690 50  0000 C CNN
F 1 "20R" V 8740 2690 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8670 2690 50  0001 C CNN
F 3 "" H 8740 2690 50  0001 C CNN
F 4 "1276-6153-1-ND" V 8740 2690 60  0001 C CNN "Digikey"
	1    8740 2690
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR0297
U 1 1 5A0EF3E8
P 8740 2900
F 0 "#PWR0297" H 8740 2650 50  0001 C CNN
F 1 "GND" H 8740 2750 50  0000 C CNN
F 2 "" H 8740 2900 50  0001 C CNN
F 3 "" H 8740 2900 50  0001 C CNN
	1    8740 2900
	1    0    0    -1  
$EndComp
Text GLabel 8740 2010 1    60   UnSpc ~ 0
3V3
Text Notes 8940 2460 0    60   ~ 0
Power Indicating LED 3V3\n----------------------\nV_F 	= 3.2 V (typical)\nI 	= 5 mA (desired)\nR 	= 20 R (E24) 
Wire Wire Line
	8740 2840 8740 2900
Wire Wire Line
	8740 2540 8740 2480
Wire Wire Line
	8740 2010 8740 2180
$Comp
L TEST TP3
U 1 1 5A0EF3F3
P 8435 2055
F 0 "TP3" H 8435 2355 50  0000 C BNN
F 1 "3V3" H 8435 2305 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_quadr_1mm" H 8435 2055 50  0001 C CNN
F 3 "" H 8435 2055 50  0001 C CNN
	1    8435 2055
	1    0    0    -1  
$EndComp
Wire Wire Line
	8740 2110 8435 2110
Wire Wire Line
	8435 2110 8435 2055
Connection ~ 8740 2110
Text GLabel 5025 3960 3    60   UnSpc ~ 0
3V3
$Comp
L PWR_FLAG #FLG0298
U 1 1 5A107991
P 5025 3960
F 0 "#FLG0298" H 5025 4035 50  0001 C CNN
F 1 "PWR_FLAG" H 5025 4110 50  0000 C CNN
F 2 "" H 5025 3960 50  0001 C CNN
F 3 "" H 5025 3960 50  0001 C CNN
	1    5025 3960
	1    0    0    -1  
$EndComp
Text GLabel 5475 3960 3    60   UnSpc ~ 0
V18
$Comp
L PWR_FLAG #FLG0299
U 1 1 5A107A22
P 5475 3960
F 0 "#FLG0299" H 5475 4035 50  0001 C CNN
F 1 "PWR_FLAG" H 5475 4110 50  0000 C CNN
F 2 "" H 5475 3960 50  0001 C CNN
F 3 "" H 5475 3960 50  0001 C CNN
	1    5475 3960
	1    0    0    -1  
$EndComp
Text Notes 4830 3720 0    60   ~ 0
Tell Kicad, that these voltages are externally driven.
Text Notes 4060 1605 0    60   ~ 0
Current Rating (IPC 2221)\n----------------------\nMax. Expected Current = 64 * 0.05 A = 3.2 A \nAbs. Max. Current (dT = 10 K, W = 1.6 mm) = 3.36 A 
$EndSCHEMATC
