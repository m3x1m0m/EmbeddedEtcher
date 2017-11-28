EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:adapter_board-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Adapter Board to Connect LEDs"
Date "2017-11-28"
Rev "1.0"
Comp ""
Comment1 "Use this to connect LEDs to the extension board."
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Conn_02x32_Counter_Clockwise J1
U 1 1 5A1D2599
P 4650 3400
F 0 "J1" H 4700 5000 50  0000 C CNN
F 1 "Conn_02x32_Counter_Clockwise" H 4700 1700 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x32_Pitch2.54mm" H 4650 3400 50  0001 C CNN
F 3 "http://suddendocs.samtec.com/catalog_english/tsw_th.pdf" H 4650 3400 50  0001 C CNN
F 4 "TSW-132-07-G-D" H 4700 1400 60  0000 C CNN "Samtec"
	1    4650 3400
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x05_Odd_Even J2
U 1 1 5A1D278E
P 9900 2200
F 0 "J2" H 9950 2500 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 9950 1900 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch2.54mm" H 9900 2200 50  0001 C CNN
F 3 "http://suddendocs.samtec.com/catalog_english/tsw_th.pdf" H 9900 2200 50  0001 C CNN
F 4 "TSW-105-07-G-D" H 9950 1900 60  0000 C CNN "Samtec"
	1    9900 2200
	1    0    0    -1  
$EndComp
Text GLabel 9500 2000 0    60   Input ~ 0
V18
Wire Wire Line
	9500 2000 9700 2000
Wire Wire Line
	9600 1800 9600 2400
Wire Wire Line
	9600 1800 10300 1800
Wire Wire Line
	10300 1800 10300 2400
Wire Wire Line
	10300 2000 10200 2000
Connection ~ 9600 2000
Wire Wire Line
	10300 2400 10200 2400
Connection ~ 10300 2000
Wire Wire Line
	10200 2300 10300 2300
Connection ~ 10300 2300
Wire Wire Line
	10200 2200 10300 2200
Connection ~ 10300 2200
Wire Wire Line
	10200 2100 10300 2100
Connection ~ 10300 2100
Wire Wire Line
	9600 2400 9700 2400
Wire Wire Line
	9700 2100 9600 2100
Connection ~ 9600 2100
Wire Wire Line
	9700 2200 9600 2200
Connection ~ 9600 2200
Wire Wire Line
	9700 2300 9600 2300
Connection ~ 9600 2300
$Comp
L TEST TP1
U 1 1 5A1D2B87
P 4450 1900
F 0 "TP1" H 4450 2200 50  0000 C BNN
F 1 "TEST" H 4450 2150 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 4450 1900 50  0001 C CNN
F 3 "" H 4450 1900 50  0001 C CNN
	1    4450 1900
	1    0    0    -1  
$EndComp
$Comp
L TEST TP2
U 1 1 5A1D2F55
P 4250 1900
F 0 "TP2" H 4250 2200 50  0000 C BNN
F 1 "TEST" H 4250 2150 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 4250 1900 50  0001 C CNN
F 3 "" H 4250 1900 50  0001 C CNN
	1    4250 1900
	1    0    0    -1  
$EndComp
$Comp
L TEST TP3
U 1 1 5A1D2F7D
P 4050 1900
F 0 "TP3" H 4050 2200 50  0000 C BNN
F 1 "TEST" H 4050 2150 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 4050 1900 50  0001 C CNN
F 3 "" H 4050 1900 50  0001 C CNN
	1    4050 1900
	1    0    0    -1  
$EndComp
$Comp
L TEST TP4
U 1 1 5A1D2FA0
P 3850 1900
F 0 "TP4" H 3850 2200 50  0000 C BNN
F 1 "TEST" H 3850 2150 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 3850 1900 50  0001 C CNN
F 3 "" H 3850 1900 50  0001 C CNN
	1    3850 1900
	1    0    0    -1  
$EndComp
$Comp
L TEST TP5
U 1 1 5A1D2FC6
P 3650 1900
F 0 "TP5" H 3650 2200 50  0000 C BNN
F 1 "TEST" H 3650 2150 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 3650 1900 50  0001 C CNN
F 3 "" H 3650 1900 50  0001 C CNN
	1    3650 1900
	1    0    0    -1  
$EndComp
$Comp
L TEST TP6
U 1 1 5A1D2FEF
P 3450 1900
F 0 "TP6" H 3450 2200 50  0000 C BNN
F 1 "TEST" H 3450 2150 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 3450 1900 50  0001 C CNN
F 3 "" H 3450 1900 50  0001 C CNN
	1    3450 1900
	1    0    0    -1  
$EndComp
$Comp
L TEST TP7
U 1 1 5A1D3023
P 3250 1900
F 0 "TP7" H 3250 2200 50  0000 C BNN
F 1 "TEST" H 3250 2150 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 3250 1900 50  0001 C CNN
F 3 "" H 3250 1900 50  0001 C CNN
	1    3250 1900
	1    0    0    -1  
$EndComp
$Comp
L TEST TP8
U 1 1 5A1D3052
P 3050 1900
F 0 "TP8" H 3050 2200 50  0000 C BNN
F 1 "TEST" H 3050 2150 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 3050 1900 50  0001 C CNN
F 3 "" H 3050 1900 50  0001 C CNN
	1    3050 1900
	1    0    0    -1  
$EndComp
$Comp
L TEST TP32
U 1 1 5A1D3958
P 4450 5000
F 0 "TP32" H 4450 5300 50  0000 C BNN
F 1 "TEST" H 4450 5250 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 4450 5000 50  0001 C CNN
F 3 "" H 4450 5000 50  0001 C CNN
	1    4450 5000
	1    0    0    1   
$EndComp
$Comp
L TEST TP31
U 1 1 5A1D395E
P 4250 5000
F 0 "TP31" H 4250 5300 50  0000 C BNN
F 1 "TEST" H 4250 5250 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 4250 5000 50  0001 C CNN
F 3 "" H 4250 5000 50  0001 C CNN
	1    4250 5000
	1    0    0    1   
$EndComp
$Comp
L TEST TP30
U 1 1 5A1D3964
P 4050 5000
F 0 "TP30" H 4050 5300 50  0000 C BNN
F 1 "TEST" H 4050 5250 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 4050 5000 50  0001 C CNN
F 3 "" H 4050 5000 50  0001 C CNN
	1    4050 5000
	1    0    0    1   
$EndComp
$Comp
L TEST TP29
U 1 1 5A1D396A
P 3850 5000
F 0 "TP29" H 3850 5300 50  0000 C BNN
F 1 "TEST" H 3850 5250 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 3850 5000 50  0001 C CNN
F 3 "" H 3850 5000 50  0001 C CNN
	1    3850 5000
	1    0    0    1   
$EndComp
$Comp
L TEST TP28
U 1 1 5A1D3970
P 3650 5000
F 0 "TP28" H 3650 5300 50  0000 C BNN
F 1 "TEST" H 3650 5250 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 3650 5000 50  0001 C CNN
F 3 "" H 3650 5000 50  0001 C CNN
	1    3650 5000
	1    0    0    1   
$EndComp
$Comp
L TEST TP27
U 1 1 5A1D3976
P 3450 5000
F 0 "TP27" H 3450 5300 50  0000 C BNN
F 1 "TEST" H 3450 5250 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 3450 5000 50  0001 C CNN
F 3 "" H 3450 5000 50  0001 C CNN
	1    3450 5000
	1    0    0    1   
$EndComp
$Comp
L TEST TP26
U 1 1 5A1D397C
P 3250 5000
F 0 "TP26" H 3250 5300 50  0000 C BNN
F 1 "TEST" H 3250 5250 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 3250 5000 50  0001 C CNN
F 3 "" H 3250 5000 50  0001 C CNN
	1    3250 5000
	1    0    0    1   
$EndComp
$Comp
L TEST TP25
U 1 1 5A1D3982
P 3050 5000
F 0 "TP25" H 3050 5300 50  0000 C BNN
F 1 "TEST" H 3050 5250 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 3050 5000 50  0001 C CNN
F 3 "" H 3050 5000 50  0001 C CNN
	1    3050 5000
	1    0    0    1   
$EndComp
Wire Wire Line
	4250 1900 4250 2000
Wire Wire Line
	4250 2000 4450 2000
Wire Wire Line
	4450 2100 4050 2100
Wire Wire Line
	4050 2100 4050 1900
Wire Wire Line
	3850 1900 3850 2200
Wire Wire Line
	3850 2200 4450 2200
Wire Wire Line
	4450 2300 3650 2300
Wire Wire Line
	3650 2300 3650 1900
Wire Wire Line
	4450 2400 3450 2400
Wire Wire Line
	3450 2400 3450 1900
Wire Wire Line
	3250 1900 3250 2500
Wire Wire Line
	3250 2500 4450 2500
Wire Wire Line
	4450 2600 3050 2600
Wire Wire Line
	3050 2600 3050 1900
$Comp
L TEST TP9
U 1 1 5A1D47EF
P 2850 1900
F 0 "TP9" H 2850 2200 50  0000 C BNN
F 1 "TEST" H 2850 2150 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 2850 1900 50  0001 C CNN
F 3 "" H 2850 1900 50  0001 C CNN
	1    2850 1900
	1    0    0    -1  
$EndComp
$Comp
L TEST TP10
U 1 1 5A1D47F5
P 2650 1900
F 0 "TP10" H 2650 2200 50  0000 C BNN
F 1 "TEST" H 2650 2150 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 2650 1900 50  0001 C CNN
F 3 "" H 2650 1900 50  0001 C CNN
	1    2650 1900
	1    0    0    -1  
$EndComp
$Comp
L TEST TP11
U 1 1 5A1D47FB
P 2450 1900
F 0 "TP11" H 2450 2200 50  0000 C BNN
F 1 "TEST" H 2450 2150 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 2450 1900 50  0001 C CNN
F 3 "" H 2450 1900 50  0001 C CNN
	1    2450 1900
	1    0    0    -1  
$EndComp
$Comp
L TEST TP12
U 1 1 5A1D4801
P 2250 1900
F 0 "TP12" H 2250 2200 50  0000 C BNN
F 1 "TEST" H 2250 2150 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 2250 1900 50  0001 C CNN
F 3 "" H 2250 1900 50  0001 C CNN
	1    2250 1900
	1    0    0    -1  
$EndComp
$Comp
L TEST TP13
U 1 1 5A1D4807
P 2050 1900
F 0 "TP13" H 2050 2200 50  0000 C BNN
F 1 "TEST" H 2050 2150 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 2050 1900 50  0001 C CNN
F 3 "" H 2050 1900 50  0001 C CNN
	1    2050 1900
	1    0    0    -1  
$EndComp
$Comp
L TEST TP14
U 1 1 5A1D480D
P 1850 1900
F 0 "TP14" H 1850 2200 50  0000 C BNN
F 1 "TEST" H 1850 2150 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 1850 1900 50  0001 C CNN
F 3 "" H 1850 1900 50  0001 C CNN
	1    1850 1900
	1    0    0    -1  
$EndComp
$Comp
L TEST TP15
U 1 1 5A1D4813
P 1650 1900
F 0 "TP15" H 1650 2200 50  0000 C BNN
F 1 "TEST" H 1650 2150 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 1650 1900 50  0001 C CNN
F 3 "" H 1650 1900 50  0001 C CNN
	1    1650 1900
	1    0    0    -1  
$EndComp
$Comp
L TEST TP16
U 1 1 5A1D4819
P 1450 1900
F 0 "TP16" H 1450 2200 50  0000 C BNN
F 1 "TEST" H 1450 2150 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 1450 1900 50  0001 C CNN
F 3 "" H 1450 1900 50  0001 C CNN
	1    1450 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2700 2850 2700
Wire Wire Line
	2850 2700 2850 1900
Wire Wire Line
	2650 1900 2650 2800
Wire Wire Line
	2650 2800 4450 2800
Wire Wire Line
	4450 2900 2450 2900
Wire Wire Line
	2450 2900 2450 1900
Wire Wire Line
	2250 1900 2250 3000
Wire Wire Line
	2250 3000 4450 3000
Wire Wire Line
	4450 3100 2050 3100
Wire Wire Line
	2050 3100 2050 1900
Wire Wire Line
	1850 1900 1850 3200
Wire Wire Line
	1850 3200 4450 3200
Wire Wire Line
	4450 3300 1650 3300
Wire Wire Line
	1650 3300 1650 1900
Wire Wire Line
	4450 3400 1450 3400
Wire Wire Line
	1450 3400 1450 1900
$Comp
L TEST TP24
U 1 1 5A1D4F61
P 2850 5000
F 0 "TP24" H 2850 5300 50  0000 C BNN
F 1 "TEST" H 2850 5250 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 2850 5000 50  0001 C CNN
F 3 "" H 2850 5000 50  0001 C CNN
	1    2850 5000
	1    0    0    1   
$EndComp
$Comp
L TEST TP23
U 1 1 5A1D4F67
P 2650 5000
F 0 "TP23" H 2650 5300 50  0000 C BNN
F 1 "TEST" H 2650 5250 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 2650 5000 50  0001 C CNN
F 3 "" H 2650 5000 50  0001 C CNN
	1    2650 5000
	1    0    0    1   
$EndComp
$Comp
L TEST TP22
U 1 1 5A1D4F6D
P 2450 5000
F 0 "TP22" H 2450 5300 50  0000 C BNN
F 1 "TEST" H 2450 5250 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 2450 5000 50  0001 C CNN
F 3 "" H 2450 5000 50  0001 C CNN
	1    2450 5000
	1    0    0    1   
$EndComp
$Comp
L TEST TP21
U 1 1 5A1D4F73
P 2250 5000
F 0 "TP21" H 2250 5300 50  0000 C BNN
F 1 "TEST" H 2250 5250 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 2250 5000 50  0001 C CNN
F 3 "" H 2250 5000 50  0001 C CNN
	1    2250 5000
	1    0    0    1   
$EndComp
$Comp
L TEST TP20
U 1 1 5A1D4F79
P 2050 5000
F 0 "TP20" H 2050 5300 50  0000 C BNN
F 1 "TEST" H 2050 5250 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 2050 5000 50  0001 C CNN
F 3 "" H 2050 5000 50  0001 C CNN
	1    2050 5000
	1    0    0    1   
$EndComp
$Comp
L TEST TP19
U 1 1 5A1D4F7F
P 1850 5000
F 0 "TP19" H 1850 5300 50  0000 C BNN
F 1 "TEST" H 1850 5250 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 1850 5000 50  0001 C CNN
F 3 "" H 1850 5000 50  0001 C CNN
	1    1850 5000
	1    0    0    1   
$EndComp
$Comp
L TEST TP18
U 1 1 5A1D4F85
P 1650 5000
F 0 "TP18" H 1650 5300 50  0000 C BNN
F 1 "TEST" H 1650 5250 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 1650 5000 50  0001 C CNN
F 3 "" H 1650 5000 50  0001 C CNN
	1    1650 5000
	1    0    0    1   
$EndComp
$Comp
L TEST TP17
U 1 1 5A1D4F8B
P 1450 5000
F 0 "TP17" H 1450 5300 50  0000 C BNN
F 1 "TEST" H 1450 5250 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 1450 5000 50  0001 C CNN
F 3 "" H 1450 5000 50  0001 C CNN
	1    1450 5000
	1    0    0    1   
$EndComp
Wire Wire Line
	4450 4900 4250 4900
Wire Wire Line
	4250 4900 4250 5000
Wire Wire Line
	4450 4800 4050 4800
Wire Wire Line
	4050 4800 4050 5000
Wire Wire Line
	4450 4700 3850 4700
Wire Wire Line
	3850 4700 3850 5000
Wire Wire Line
	4450 4600 3650 4600
Wire Wire Line
	3650 4600 3650 5000
Wire Wire Line
	4450 4500 3450 4500
Wire Wire Line
	3450 4500 3450 5000
Wire Wire Line
	4450 4400 3250 4400
Wire Wire Line
	3250 4400 3250 5000
Wire Wire Line
	4450 4300 3050 4300
Wire Wire Line
	3050 4300 3050 5000
Wire Wire Line
	4450 4200 2850 4200
Wire Wire Line
	2850 4200 2850 5000
Wire Wire Line
	4450 4100 2650 4100
Wire Wire Line
	2650 4100 2650 5000
Wire Wire Line
	4450 4000 2450 4000
Wire Wire Line
	2450 4000 2450 5000
Wire Wire Line
	4450 3900 2250 3900
Wire Wire Line
	2250 3900 2250 5000
Wire Wire Line
	4450 3800 2050 3800
Wire Wire Line
	2050 3800 2050 5000
Wire Wire Line
	4450 3700 1850 3700
Wire Wire Line
	1850 3700 1850 5000
Wire Wire Line
	4450 3600 1650 3600
Wire Wire Line
	1650 3600 1650 5000
Wire Wire Line
	4450 3500 1450 3500
Wire Wire Line
	1450 3500 1450 5000
$Comp
L TEST TP64
U 1 1 5A1D670D
P 4950 1900
F 0 "TP64" H 4950 2200 50  0000 C BNN
F 1 "TEST" H 4950 2150 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 4950 1900 50  0001 C CNN
F 3 "" H 4950 1900 50  0001 C CNN
	1    4950 1900
	-1   0    0    -1  
$EndComp
$Comp
L TEST TP63
U 1 1 5A1D6713
P 5150 1900
F 0 "TP63" H 5150 2200 50  0000 C BNN
F 1 "TEST" H 5150 2150 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 5150 1900 50  0001 C CNN
F 3 "" H 5150 1900 50  0001 C CNN
	1    5150 1900
	-1   0    0    -1  
$EndComp
$Comp
L TEST TP62
U 1 1 5A1D6719
P 5350 1900
F 0 "TP62" H 5350 2200 50  0000 C BNN
F 1 "TEST" H 5350 2150 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 5350 1900 50  0001 C CNN
F 3 "" H 5350 1900 50  0001 C CNN
	1    5350 1900
	-1   0    0    -1  
$EndComp
$Comp
L TEST TP61
U 1 1 5A1D671F
P 5550 1900
F 0 "TP61" H 5550 2200 50  0000 C BNN
F 1 "TEST" H 5550 2150 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 5550 1900 50  0001 C CNN
F 3 "" H 5550 1900 50  0001 C CNN
	1    5550 1900
	-1   0    0    -1  
$EndComp
$Comp
L TEST TP60
U 1 1 5A1D6725
P 5750 1900
F 0 "TP60" H 5750 2200 50  0000 C BNN
F 1 "TEST" H 5750 2150 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 5750 1900 50  0001 C CNN
F 3 "" H 5750 1900 50  0001 C CNN
	1    5750 1900
	-1   0    0    -1  
$EndComp
$Comp
L TEST TP59
U 1 1 5A1D672B
P 5950 1900
F 0 "TP59" H 5950 2200 50  0000 C BNN
F 1 "TEST" H 5950 2150 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 5950 1900 50  0001 C CNN
F 3 "" H 5950 1900 50  0001 C CNN
	1    5950 1900
	-1   0    0    -1  
$EndComp
$Comp
L TEST TP58
U 1 1 5A1D6731
P 6150 1900
F 0 "TP58" H 6150 2200 50  0000 C BNN
F 1 "TEST" H 6150 2150 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 6150 1900 50  0001 C CNN
F 3 "" H 6150 1900 50  0001 C CNN
	1    6150 1900
	-1   0    0    -1  
$EndComp
$Comp
L TEST TP57
U 1 1 5A1D6737
P 6350 1900
F 0 "TP57" H 6350 2200 50  0000 C BNN
F 1 "TEST" H 6350 2150 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 6350 1900 50  0001 C CNN
F 3 "" H 6350 1900 50  0001 C CNN
	1    6350 1900
	-1   0    0    -1  
$EndComp
$Comp
L TEST TP33
U 1 1 5A1D673D
P 4950 5000
F 0 "TP33" H 4950 5300 50  0000 C BNN
F 1 "TEST" H 4950 5250 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 4950 5000 50  0001 C CNN
F 3 "" H 4950 5000 50  0001 C CNN
	1    4950 5000
	-1   0    0    1   
$EndComp
$Comp
L TEST TP34
U 1 1 5A1D6743
P 5150 5000
F 0 "TP34" H 5150 5300 50  0000 C BNN
F 1 "TEST" H 5150 5250 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 5150 5000 50  0001 C CNN
F 3 "" H 5150 5000 50  0001 C CNN
	1    5150 5000
	-1   0    0    1   
$EndComp
$Comp
L TEST TP35
U 1 1 5A1D6749
P 5350 5000
F 0 "TP35" H 5350 5300 50  0000 C BNN
F 1 "TEST" H 5350 5250 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 5350 5000 50  0001 C CNN
F 3 "" H 5350 5000 50  0001 C CNN
	1    5350 5000
	-1   0    0    1   
$EndComp
$Comp
L TEST TP36
U 1 1 5A1D674F
P 5550 5000
F 0 "TP36" H 5550 5300 50  0000 C BNN
F 1 "TEST" H 5550 5250 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 5550 5000 50  0001 C CNN
F 3 "" H 5550 5000 50  0001 C CNN
	1    5550 5000
	-1   0    0    1   
$EndComp
$Comp
L TEST TP37
U 1 1 5A1D6755
P 5750 5000
F 0 "TP37" H 5750 5300 50  0000 C BNN
F 1 "TEST" H 5750 5250 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 5750 5000 50  0001 C CNN
F 3 "" H 5750 5000 50  0001 C CNN
	1    5750 5000
	-1   0    0    1   
$EndComp
$Comp
L TEST TP38
U 1 1 5A1D675B
P 5950 5000
F 0 "TP38" H 5950 5300 50  0000 C BNN
F 1 "TEST" H 5950 5250 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 5950 5000 50  0001 C CNN
F 3 "" H 5950 5000 50  0001 C CNN
	1    5950 5000
	-1   0    0    1   
$EndComp
$Comp
L TEST TP39
U 1 1 5A1D6761
P 6150 5000
F 0 "TP39" H 6150 5300 50  0000 C BNN
F 1 "TEST" H 6150 5250 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 6150 5000 50  0001 C CNN
F 3 "" H 6150 5000 50  0001 C CNN
	1    6150 5000
	-1   0    0    1   
$EndComp
$Comp
L TEST TP40
U 1 1 5A1D6767
P 6350 5000
F 0 "TP40" H 6350 5300 50  0000 C BNN
F 1 "TEST" H 6350 5250 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 6350 5000 50  0001 C CNN
F 3 "" H 6350 5000 50  0001 C CNN
	1    6350 5000
	-1   0    0    1   
$EndComp
Wire Wire Line
	5150 1900 5150 2000
Wire Wire Line
	5150 2000 4950 2000
Wire Wire Line
	4950 2100 5350 2100
Wire Wire Line
	5350 2100 5350 1900
Wire Wire Line
	5550 1900 5550 2200
Wire Wire Line
	5550 2200 4950 2200
Wire Wire Line
	4950 2300 5750 2300
Wire Wire Line
	5750 2300 5750 1900
Wire Wire Line
	4950 2400 5950 2400
Wire Wire Line
	5950 2400 5950 1900
Wire Wire Line
	6150 1900 6150 2500
Wire Wire Line
	6150 2500 4950 2500
Wire Wire Line
	4950 2600 6350 2600
Wire Wire Line
	6350 2600 6350 1900
$Comp
L TEST TP56
U 1 1 5A1D677B
P 6550 1900
F 0 "TP56" H 6550 2200 50  0000 C BNN
F 1 "TEST" H 6550 2150 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 6550 1900 50  0001 C CNN
F 3 "" H 6550 1900 50  0001 C CNN
	1    6550 1900
	-1   0    0    -1  
$EndComp
$Comp
L TEST TP55
U 1 1 5A1D6781
P 6750 1900
F 0 "TP55" H 6750 2200 50  0000 C BNN
F 1 "TEST" H 6750 2150 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 6750 1900 50  0001 C CNN
F 3 "" H 6750 1900 50  0001 C CNN
	1    6750 1900
	-1   0    0    -1  
$EndComp
$Comp
L TEST TP54
U 1 1 5A1D6787
P 6950 1900
F 0 "TP54" H 6950 2200 50  0000 C BNN
F 1 "TEST" H 6950 2150 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 6950 1900 50  0001 C CNN
F 3 "" H 6950 1900 50  0001 C CNN
	1    6950 1900
	-1   0    0    -1  
$EndComp
$Comp
L TEST TP53
U 1 1 5A1D678D
P 7150 1900
F 0 "TP53" H 7150 2200 50  0000 C BNN
F 1 "TEST" H 7150 2150 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 7150 1900 50  0001 C CNN
F 3 "" H 7150 1900 50  0001 C CNN
	1    7150 1900
	-1   0    0    -1  
$EndComp
$Comp
L TEST TP52
U 1 1 5A1D6793
P 7350 1900
F 0 "TP52" H 7350 2200 50  0000 C BNN
F 1 "TEST" H 7350 2150 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 7350 1900 50  0001 C CNN
F 3 "" H 7350 1900 50  0001 C CNN
	1    7350 1900
	-1   0    0    -1  
$EndComp
$Comp
L TEST TP51
U 1 1 5A1D6799
P 7550 1900
F 0 "TP51" H 7550 2200 50  0000 C BNN
F 1 "TEST" H 7550 2150 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 7550 1900 50  0001 C CNN
F 3 "" H 7550 1900 50  0001 C CNN
	1    7550 1900
	-1   0    0    -1  
$EndComp
$Comp
L TEST TP50
U 1 1 5A1D679F
P 7750 1900
F 0 "TP50" H 7750 2200 50  0000 C BNN
F 1 "TEST" H 7750 2150 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 7750 1900 50  0001 C CNN
F 3 "" H 7750 1900 50  0001 C CNN
	1    7750 1900
	-1   0    0    -1  
$EndComp
$Comp
L TEST TP49
U 1 1 5A1D67A5
P 7950 1900
F 0 "TP49" H 7950 2200 50  0000 C BNN
F 1 "TEST" H 7950 2150 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 7950 1900 50  0001 C CNN
F 3 "" H 7950 1900 50  0001 C CNN
	1    7950 1900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4950 2700 6550 2700
Wire Wire Line
	6550 2700 6550 1900
Wire Wire Line
	6750 1900 6750 2800
Wire Wire Line
	6750 2800 4950 2800
Wire Wire Line
	4950 2900 6950 2900
Wire Wire Line
	6950 2900 6950 1900
Wire Wire Line
	7150 1900 7150 3000
Wire Wire Line
	7150 3000 4950 3000
Wire Wire Line
	4950 3100 7350 3100
Wire Wire Line
	7350 3100 7350 1900
Wire Wire Line
	7550 1900 7550 3200
Wire Wire Line
	7550 3200 4950 3200
Wire Wire Line
	4950 3300 7750 3300
Wire Wire Line
	7750 3300 7750 1900
Wire Wire Line
	4950 3400 7950 3400
Wire Wire Line
	7950 3400 7950 1900
$Comp
L TEST TP41
U 1 1 5A1D67BB
P 6550 5000
F 0 "TP41" H 6550 5300 50  0000 C BNN
F 1 "TEST" H 6550 5250 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 6550 5000 50  0001 C CNN
F 3 "" H 6550 5000 50  0001 C CNN
	1    6550 5000
	-1   0    0    1   
$EndComp
$Comp
L TEST TP42
U 1 1 5A1D67C1
P 6750 5000
F 0 "TP42" H 6750 5300 50  0000 C BNN
F 1 "TEST" H 6750 5250 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 6750 5000 50  0001 C CNN
F 3 "" H 6750 5000 50  0001 C CNN
	1    6750 5000
	-1   0    0    1   
$EndComp
$Comp
L TEST TP43
U 1 1 5A1D67C7
P 6950 5000
F 0 "TP43" H 6950 5300 50  0000 C BNN
F 1 "TEST" H 6950 5250 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 6950 5000 50  0001 C CNN
F 3 "" H 6950 5000 50  0001 C CNN
	1    6950 5000
	-1   0    0    1   
$EndComp
$Comp
L TEST TP44
U 1 1 5A1D67CD
P 7150 5000
F 0 "TP44" H 7150 5300 50  0000 C BNN
F 1 "TEST" H 7150 5250 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 7150 5000 50  0001 C CNN
F 3 "" H 7150 5000 50  0001 C CNN
	1    7150 5000
	-1   0    0    1   
$EndComp
$Comp
L TEST TP45
U 1 1 5A1D67D3
P 7350 5000
F 0 "TP45" H 7350 5300 50  0000 C BNN
F 1 "TEST" H 7350 5250 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 7350 5000 50  0001 C CNN
F 3 "" H 7350 5000 50  0001 C CNN
	1    7350 5000
	-1   0    0    1   
$EndComp
$Comp
L TEST TP46
U 1 1 5A1D67D9
P 7550 5000
F 0 "TP46" H 7550 5300 50  0000 C BNN
F 1 "TEST" H 7550 5250 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 7550 5000 50  0001 C CNN
F 3 "" H 7550 5000 50  0001 C CNN
	1    7550 5000
	-1   0    0    1   
$EndComp
$Comp
L TEST TP47
U 1 1 5A1D67DF
P 7750 5000
F 0 "TP47" H 7750 5300 50  0000 C BNN
F 1 "TEST" H 7750 5250 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 7750 5000 50  0001 C CNN
F 3 "" H 7750 5000 50  0001 C CNN
	1    7750 5000
	-1   0    0    1   
$EndComp
$Comp
L TEST TP48
U 1 1 5A1D67E5
P 7950 5000
F 0 "TP48" H 7950 5300 50  0000 C BNN
F 1 "TEST" H 7950 5250 50  0000 C CNN
F 2 "MyTestpoints:TP_SMD_2mmx5mm" H 7950 5000 50  0001 C CNN
F 3 "" H 7950 5000 50  0001 C CNN
	1    7950 5000
	-1   0    0    1   
$EndComp
Wire Wire Line
	4950 4900 5150 4900
Wire Wire Line
	5150 4900 5150 5000
Wire Wire Line
	4950 4800 5350 4800
Wire Wire Line
	5350 4800 5350 5000
Wire Wire Line
	4950 4700 5550 4700
Wire Wire Line
	5550 4700 5550 5000
Wire Wire Line
	4950 4600 5750 4600
Wire Wire Line
	5750 4600 5750 5000
Wire Wire Line
	4950 4500 5950 4500
Wire Wire Line
	5950 4500 5950 5000
Wire Wire Line
	4950 4400 6150 4400
Wire Wire Line
	6150 4400 6150 5000
Wire Wire Line
	4950 4300 6350 4300
Wire Wire Line
	6350 4300 6350 5000
Wire Wire Line
	4950 4200 6550 4200
Wire Wire Line
	6550 4200 6550 5000
Wire Wire Line
	4950 4100 6750 4100
Wire Wire Line
	6750 4100 6750 5000
Wire Wire Line
	4950 4000 6950 4000
Wire Wire Line
	6950 4000 6950 5000
Wire Wire Line
	4950 3900 7150 3900
Wire Wire Line
	7150 3900 7150 5000
Wire Wire Line
	4950 3800 7350 3800
Wire Wire Line
	7350 3800 7350 5000
Wire Wire Line
	4950 3700 7550 3700
Wire Wire Line
	7550 3700 7550 5000
Wire Wire Line
	4950 3600 7750 3600
Wire Wire Line
	7750 3600 7750 5000
Wire Wire Line
	4950 3500 7950 3500
Wire Wire Line
	7950 3500 7950 5000
$EndSCHEMATC
