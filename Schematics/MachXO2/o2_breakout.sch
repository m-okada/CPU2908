EESchema Schematic File Version 4
LIBS:o2_breakout-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
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
L power:PWR_FLAG #FLG02
U 1 1 5E9C3584
P 10850 900
F 0 "#FLG02" H 10850 975 50  0001 C CNN
F 1 "PWR_FLAG" H 10850 1073 50  0000 C CNN
F 2 "" H 10850 900 50  0001 C CNN
F 3 "~" H 10850 900 50  0001 C CNN
	1    10850 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10850 1000 10850 900 
$Comp
L power:GND #PWR03
U 1 1 5E9C4710
P 10850 1000
F 0 "#PWR03" H 10850 750 50  0001 C CNN
F 1 "GND" H 10855 827 50  0000 C CNN
F 2 "" H 10850 1000 50  0001 C CNN
F 3 "" H 10850 1000 50  0001 C CNN
	1    10850 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 900  10050 950 
Wire Wire Line
	10050 950  10400 950 
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5E9C2E25
P 10400 900
F 0 "#FLG01" H 10400 975 50  0001 C CNN
F 1 "PWR_FLAG" H 10400 1073 50  0000 C CNN
F 2 "" H 10400 900 50  0001 C CNN
F 3 "~" H 10400 900 50  0001 C CNN
	1    10400 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 900  10400 950 
$Comp
L power:GND #PWR0101
U 1 1 5DA9054A
P 2150 7100
F 0 "#PWR0101" H 2150 6850 50  0001 C CNN
F 1 "GND" H 2155 6927 50  0000 C CNN
F 2 "" H 2150 7100 50  0001 C CNN
F 3 "" H 2150 7100 50  0001 C CNN
	1    2150 7100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J2
U 1 1 5DAEDD63
P 10200 2750
F 0 "J2" H 10250 3867 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 10250 3776 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x20_Pitch2.54mm" H 10200 2750 50  0001 C CNN
F 3 "~" H 10200 2750 50  0001 C CNN
	1    10200 2750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5DAFD2DA
P 10100 6400
F 0 "H1" H 10200 6400 50  0000 L CNN
F 1 "MountingHole" H 10200 6355 50  0001 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 10100 6400 50  0001 C CNN
F 3 "~" H 10100 6400 50  0001 C CNN
	1    10100 6400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5DAFD937
P 10400 6400
F 0 "H2" H 10500 6400 50  0000 L CNN
F 1 "MountingHole" H 10500 6355 50  0001 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 10400 6400 50  0001 C CNN
F 3 "~" H 10400 6400 50  0001 C CNN
	1    10400 6400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5DAFDF24
P 10700 6400
F 0 "H3" H 10800 6400 50  0000 L CNN
F 1 "MountingHole" H 10800 6355 50  0001 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 10700 6400 50  0001 C CNN
F 3 "~" H 10700 6400 50  0001 C CNN
	1    10700 6400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5DAFE526
P 11000 6400
F 0 "H4" H 11100 6400 50  0000 L CNN
F 1 "MountingHole" H 11100 6355 50  0001 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 11000 6400 50  0001 C CNN
F 3 "~" H 11000 6400 50  0001 C CNN
	1    11000 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10950 1850 10950 1600
$Comp
L power:+3V3 #PWR0102
U 1 1 5E6A4328
P 10950 1500
F 0 "#PWR0102" H 10950 1350 50  0001 C CNN
F 1 "+3V3" H 10965 1673 50  0000 C CNN
F 2 "" H 10950 1500 50  0001 C CNN
F 3 "" H 10950 1500 50  0001 C CNN
	1    10950 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 5800 2150 5800
Wire Wire Line
	2150 5800 2150 6800
Wire Wire Line
	2300 4700 2150 4700
Wire Wire Line
	2300 3600 2150 3600
Wire Wire Line
	2150 3600 2150 4700
Wire Wire Line
	2150 2000 2150 3600
Connection ~ 2150 3600
Wire Wire Line
	2300 6400 2200 6400
Wire Wire Line
	2200 6400 2200 6000
Wire Wire Line
	2200 1000 5200 1000
Wire Wire Line
	5200 1000 5200 1500
Wire Wire Line
	5200 1500 5100 1500
Wire Wire Line
	5200 900  5200 1000
Connection ~ 5200 1000
NoConn ~ 5100 2600
Wire Wire Line
	5100 2200 5200 2200
Wire Wire Line
	5200 2200 5200 1500
Connection ~ 5200 1500
Wire Wire Line
	5250 2300 5250 3600
Wire Wire Line
	5250 6800 2150 6800
Connection ~ 2150 6800
Wire Wire Line
	2150 6800 2150 7100
Wire Wire Line
	5100 3600 5250 3600
Connection ~ 5250 3600
Wire Wire Line
	5250 3600 5250 4300
Wire Wire Line
	5100 4300 5250 4300
Wire Wire Line
	5100 5900 5250 5900
Wire Wire Line
	5250 5900 5250 6800
Connection ~ 5200 2200
Wire Wire Line
	5100 3500 5200 3500
Connection ~ 5200 3500
Wire Wire Line
	5200 3500 5200 2200
Wire Wire Line
	5100 4200 5200 4200
Wire Wire Line
	5200 4200 5200 3500
$Comp
L power:GND #PWR09
U 1 1 5DC5EC0E
P 8850 2100
F 0 "#PWR09" H 8850 1850 50  0001 C CNN
F 1 "GND" H 8855 1927 50  0000 C CNN
F 2 "" H 8850 2100 50  0001 C CNN
F 3 "" H 8850 2100 50  0001 C CNN
	1    8850 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 1950 8850 2000
Wire Wire Line
	9650 6050 9650 6150
$Comp
L o2_breakout-rescue:SG-8002CA-Oscillator X1
U 1 1 5DCCEBCB
P 6450 5800
F 0 "X1" H 6250 6050 50  0000 L CNN
F 1 "19.6608MHz" H 6500 5550 50  0000 L CNN
F 2 "Oscillators:Oscillator_SMD_EuroQuartz_XO53-4pin_5.0x3.2mm_HandSoldering" H 7150 5450 50  0001 C CNN
F 3 "https://support.epson.biz/td/api/doc_check.php?mode=dl&lang=en&Parts=SG-8002DC" H 6350 5800 50  0001 C CNN
	1    6450 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 5800 6100 5800
Wire Wire Line
	6100 5800 6100 5400
Wire Wire Line
	6100 5400 6450 5400
Wire Wire Line
	6450 5400 6450 5500
Wire Wire Line
	6450 5400 6450 5300
Connection ~ 6450 5400
$Comp
L power:GND #PWR013
U 1 1 5DCD58AA
P 6450 6200
F 0 "#PWR013" H 6450 5950 50  0001 C CNN
F 1 "GND" H 6455 6027 50  0000 C CNN
F 2 "" H 6450 6200 50  0001 C CNN
F 3 "" H 6450 6200 50  0001 C CNN
	1    6450 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 7050 3600 7100
Wire Wire Line
	3600 7400 3600 7500
$Comp
L power:+3V3 #PWR0106
U 1 1 5DC834F0
P 10050 900
F 0 "#PWR0106" H 10050 750 50  0001 C CNN
F 1 "+3V3" H 10065 1073 50  0000 C CNN
F 2 "" H 10050 900 50  0001 C CNN
F 3 "" H 10050 900 50  0001 C CNN
	1    10050 900 
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0108
U 1 1 5DC842F5
P 5200 900
F 0 "#PWR0108" H 5200 750 50  0001 C CNN
F 1 "+3V3" H 5215 1073 50  0000 C CNN
F 2 "" H 5200 900 50  0001 C CNN
F 3 "" H 5200 900 50  0001 C CNN
	1    5200 900 
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0109
U 1 1 5DC84AA7
P 6450 5300
F 0 "#PWR0109" H 6450 5150 50  0001 C CNN
F 1 "+3V3" H 6465 5473 50  0000 C CNN
F 2 "" H 6450 5300 50  0001 C CNN
F 3 "" H 6450 5300 50  0001 C CNN
	1    6450 5300
	1    0    0    -1  
$EndComp
$Sheet
S 8000 5250 850  1100
U 5DD58257
F0 "SDCARD" 50
F1 "SDCARD.sch" 50
F2 "SD_CLK" I R 8850 5400 50 
F3 "~SD_CS" I R 8850 5500 50 
F4 "SD_DI" I R 8850 5600 50 
F5 "SD_DO" I R 8850 5700 50 
F6 "~RTC_CS" I R 8850 5850 50 
F7 "~SD_CD" I R 8850 5950 50 
F8 "~PROM_CS" I R 8850 6150 50 
F9 "RTC_CLK" O R 8850 6050 50 
$EndSheet
$Comp
L Power_Supervisor:TCM809 U3
U 1 1 5DC41577
P 8950 1550
F 0 "U3" H 8720 1596 50  0000 R CNN
F 1 "TCM809" H 8720 1505 50  0000 R CNN
F 2 "digikey-footprints:SOT-23-3" H 8550 1700 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21661E.pdf" H 8650 1800 50  0001 C CNN
	1    8950 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5DD718E8
P 9650 6200
F 0 "#PWR011" H 9650 5950 50  0001 C CNN
F 1 "GND" H 9655 6027 50  0000 C CNN
F 2 "" H 9650 6200 50  0001 C CNN
F 3 "" H 9650 6200 50  0001 C CNN
	1    9650 6200
	1    0    0    -1  
$EndComp
$Comp
L o2_breakout-rescue:+3V6-power #PWR?
U 1 1 5DE300A4
P 9350 900
AR Path="/5E6A6650/5DE300A4" Ref="#PWR?"  Part="1" 
AR Path="/5DE300A4" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 9350 750 50  0001 C CNN
F 1 "+3V6" H 9365 1073 50  0000 C CNN
F 2 "" H 9350 900 50  0001 C CNN
F 3 "" H 9350 900 50  0001 C CNN
	1    9350 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 900  9350 950 
Wire Wire Line
	9350 950  9700 950 
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5DE900FE
P 9700 900
F 0 "#FLG0101" H 9700 975 50  0001 C CNN
F 1 "PWR_FLAG" H 9700 1073 50  0000 C CNN
F 2 "" H 9700 900 50  0001 C CNN
F 3 "~" H 9700 900 50  0001 C CNN
	1    9700 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 900  9700 950 
$Sheet
S 8000 3800 850  1150
U 5E6A6650
F0 "FT2232D" 50
F1 "FT2232D.sch" 50
F2 "nReset" I R 8850 4850 50 
F3 "TxD_FT" O R 8850 3950 50 
F4 "RxD_FT" I R 8850 4050 50 
F5 "TCK_FT" O R 8850 4350 50 
F6 "TDI_FT" O R 8850 4450 50 
F7 "TDO_FT" I R 8850 4550 50 
F8 "TMS_FT" O R 8850 4650 50 
F9 "~RTS_FT" O R 8850 4150 50 
F10 "~CTS_FT" I R 8850 4250 50 
$EndSheet
Text Label 10500 1450 2    50   ~ 0
nReset
$Comp
L sram:CY7C1010 U5
U 1 1 5DF577DD
P 7000 2600
F 0 "U5" H 7000 3665 50  0000 C CNN
F 1 "CY7C1010" H 7000 3574 50  0000 C CNN
F 2 "Package_SO:SOJ-36_10.16x23.49mm_P1.27mm" H 7000 2600 50  0001 C CNN
F 3 "" H 7000 2600 50  0001 C CNN
	1    7000 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2600 5750 2600
Wire Wire Line
	5750 2600 5750 1000
Wire Wire Line
	5750 1000 5200 1000
Wire Wire Line
	5750 1000 7800 1000
Wire Wire Line
	7800 1000 7800 2700
Wire Wire Line
	7800 2700 7550 2700
Connection ~ 5750 1000
Wire Wire Line
	7550 2600 7750 2600
Wire Wire Line
	7750 2600 7750 3850
Wire Wire Line
	7750 3850 6200 3850
Wire Wire Line
	6200 3850 6200 2700
Wire Wire Line
	6200 2700 6450 2700
$Comp
L power:GND #PWR0116
U 1 1 5DF8A597
P 6200 4000
F 0 "#PWR0116" H 6200 3750 50  0001 C CNN
F 1 "GND" H 6205 3827 50  0000 C CNN
F 2 "" H 6200 4000 50  0001 C CNN
F 3 "" H 6200 4000 50  0001 C CNN
	1    6200 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4000 6200 3850
Connection ~ 6200 3850
Wire Wire Line
	2300 1900 2200 1900
Connection ~ 2200 1900
Wire Wire Line
	2200 1900 2200 1000
Wire Wire Line
	2300 2500 2200 2500
Connection ~ 2200 2500
Wire Wire Line
	2200 2500 2200 1900
Wire Wire Line
	2300 3700 2200 3700
Connection ~ 2200 3700
Wire Wire Line
	2200 3700 2200 2500
Wire Wire Line
	2300 4000 2200 4000
Wire Wire Line
	2200 4000 2200 3700
Wire Wire Line
	2300 6000 2200 6000
Text Label 1850 3400 0    50   ~ 0
nReset
Wire Wire Line
	6450 1800 6150 1800
Wire Wire Line
	6450 1900 6150 1900
Wire Wire Line
	6450 2000 6150 2000
Wire Wire Line
	6450 2100 6150 2100
Wire Wire Line
	6450 2200 6150 2200
Wire Wire Line
	6450 2400 6100 2400
Wire Wire Line
	6450 2500 6100 2500
Wire Wire Line
	6450 2800 6100 2800
Wire Wire Line
	6450 2900 6100 2900
Wire Wire Line
	6450 3100 6150 3100
Wire Wire Line
	6450 3200 6150 3200
Wire Wire Line
	6450 3300 6150 3300
Wire Wire Line
	6450 3400 6150 3400
Wire Wire Line
	6450 3500 6150 3500
Text Label 6450 2200 2    50   ~ 0
A0
Text Label 6450 2100 2    50   ~ 0
A1
Text Label 6450 2000 2    50   ~ 0
A2
Text Label 6450 1800 2    50   ~ 0
A4
Text Label 7550 1900 0    50   ~ 0
A5
Text Label 7550 2000 0    50   ~ 0
A6
Text Label 7550 2100 0    50   ~ 0
A7
Text Label 7550 2200 0    50   ~ 0
A8
Text Label 7550 3000 0    50   ~ 0
A9
Text Label 7550 3100 0    50   ~ 0
A10
Text Label 7550 3200 0    50   ~ 0
A11
Text Label 7550 3300 0    50   ~ 0
A12
Text Label 6450 3500 2    50   ~ 0
A13
Text Label 6450 3400 2    50   ~ 0
A14
Text Label 6450 3300 2    50   ~ 0
A15
Text Label 6450 3200 2    50   ~ 0
A16
Text Label 6450 3100 2    50   ~ 0
A17
Wire Wire Line
	7550 1900 7850 1900
Wire Wire Line
	7550 2000 7850 2000
Wire Wire Line
	7550 2100 7850 2100
Wire Wire Line
	7550 2200 7850 2200
Wire Wire Line
	7550 2400 7900 2400
Wire Wire Line
	7550 2500 7900 2500
Wire Wire Line
	7550 2800 7900 2800
Wire Wire Line
	7550 2900 7900 2900
Wire Wire Line
	7550 3000 7850 3000
Wire Wire Line
	7550 3100 7850 3100
Wire Wire Line
	7550 3200 7850 3200
Wire Wire Line
	7550 3300 7850 3300
Text Label 6450 2400 2    50   ~ 0
IO0
Text Label 6450 2500 2    50   ~ 0
IO1
Text Label 6450 2800 2    50   ~ 0
IO2
Text Label 6450 2900 2    50   ~ 0
IO3
Text Label 7550 2900 0    50   ~ 0
IO4
Text Label 7550 2800 0    50   ~ 0
IO5
Text Label 7550 2500 0    50   ~ 0
IO6
Text Label 7550 2400 0    50   ~ 0
IO7
$Comp
L Device:C C5
U 1 1 5DD6B6DA
P 4700 7250
F 0 "C5" H 4815 7296 50  0000 L CNN
F 1 "0.1uF" H 4815 7205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4738 7100 50  0001 C CNN
F 3 "~" H 4700 7250 50  0001 C CNN
	1    4700 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 7500 5100 7500
Connection ~ 4700 7500
Wire Wire Line
	4250 7500 4700 7500
Wire Wire Line
	5850 7500 6200 7500
Connection ~ 5850 7500
Wire Wire Line
	5500 7500 5850 7500
Connection ~ 5500 7500
Connection ~ 5100 7500
Wire Wire Line
	5100 7500 5500 7500
Wire Wire Line
	5850 7050 6200 7050
Wire Wire Line
	6200 7400 6200 7500
Wire Wire Line
	6200 7050 6200 7100
Wire Wire Line
	3950 7500 3600 7500
Connection ~ 3950 7500
Wire Wire Line
	4250 7500 3950 7500
Wire Wire Line
	5500 7050 5850 7050
Connection ~ 5500 7050
Wire Wire Line
	5100 7050 5500 7050
Connection ~ 5100 7050
Wire Wire Line
	4700 7050 5100 7050
Connection ~ 4700 7050
Wire Wire Line
	3950 7050 4250 7050
Connection ~ 3950 7050
Wire Wire Line
	3600 7050 3950 7050
$Comp
L Device:C C3
U 1 1 5DCE3FA0
P 3600 7250
F 0 "C3" H 3715 7296 50  0000 L CNN
F 1 "0.1uF" H 3715 7205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3638 7100 50  0001 C CNN
F 3 "~" H 3600 7250 50  0001 C CNN
	1    3600 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 7400 3950 7500
$Comp
L Device:C C4
U 1 1 5DCE1D59
P 3950 7250
F 0 "C4" H 4065 7296 50  0000 L CNN
F 1 "0.1uF" H 4065 7205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3988 7100 50  0001 C CNN
F 3 "~" H 3950 7250 50  0001 C CNN
	1    3950 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 7050 3950 7100
Wire Wire Line
	5850 7400 5850 7500
$Comp
L Device:C C7
U 1 1 5DCDF85D
P 5850 7250
F 0 "C7" H 5965 7296 50  0000 L CNN
F 1 "0.1uF" H 5965 7205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5888 7100 50  0001 C CNN
F 3 "~" H 5850 7250 50  0001 C CNN
	1    5850 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 7050 5850 7100
Wire Wire Line
	5500 7400 5500 7500
$Comp
L Device:C C6
U 1 1 5DCDD8D4
P 5500 7250
F 0 "C6" H 5615 7296 50  0000 L CNN
F 1 "0.1uF" H 5615 7205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5538 7100 50  0001 C CNN
F 3 "~" H 5500 7250 50  0001 C CNN
	1    5500 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 7050 5500 7100
Wire Wire Line
	4700 7400 4700 7500
Wire Wire Line
	4700 7050 4700 7100
Connection ~ 4250 7500
Wire Wire Line
	4250 7400 4250 7500
$Comp
L Device:C C2
U 1 1 5E6D3B7A
P 4250 7250
F 0 "C2" H 4365 7296 50  0000 L CNN
F 1 "0.1uF" H 4365 7205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4288 7100 50  0001 C CNN
F 3 "~" H 4250 7250 50  0001 C CNN
	1    4250 7250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5E6BB335
P 6550 7550
F 0 "#PWR05" H 6550 7300 50  0001 C CNN
F 1 "GND" H 6555 7377 50  0000 C CNN
F 2 "" H 6550 7550 50  0001 C CNN
F 3 "" H 6550 7550 50  0001 C CNN
	1    6550 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 7500 6550 7550
Wire Wire Line
	5100 7400 5100 7500
$Comp
L power:+3V3 #PWR04
U 1 1 5E6B7BC6
P 6550 6950
F 0 "#PWR04" H 6550 6800 50  0001 C CNN
F 1 "+3V3" H 6565 7123 50  0000 C CNN
F 2 "" H 6550 6950 50  0001 C CNN
F 3 "" H 6550 6950 50  0001 C CNN
	1    6550 6950
	1    0    0    -1  
$EndComp
Connection ~ 4250 7050
Wire Wire Line
	6550 7050 6550 6950
$Comp
L Device:C C1
U 1 1 5E6B417C
P 5100 7250
F 0 "C1" H 5215 7296 50  0000 L CNN
F 1 "0.1uF" H 5215 7205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5138 7100 50  0001 C CNN
F 3 "~" H 5100 7250 50  0001 C CNN
	1    5100 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 7050 5100 7100
Wire Wire Line
	4250 7050 4700 7050
Wire Wire Line
	4250 7100 4250 7050
Connection ~ 5850 7050
$Comp
L o2_breakout-rescue:SW_DPST_x2-Switch SW2
U 2 1 5DEE7A37
P 8250 1300
F 0 "SW2" H 8250 1200 50  0000 C CNN
F 1 "Reset" H 8500 1200 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH_6mm" H 8250 1300 50  0001 C CNN
F 3 "~" H 8250 1300 50  0001 C CNN
	2    8250 1300
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR023
U 1 1 5DEF4502
P 8850 900
F 0 "#PWR023" H 8850 750 50  0001 C CNN
F 1 "+3V3" H 8865 1073 50  0000 C CNN
F 2 "" H 8850 900 50  0001 C CNN
F 3 "" H 8850 900 50  0001 C CNN
	1    8850 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 1600 8500 1100
$Comp
L Device:C C26
U 1 1 5DEF4510
P 8500 1750
F 0 "C26" H 8615 1796 50  0000 L CNN
F 1 "0.1uF" H 8615 1705 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 8538 1600 50  0001 C CNN
F 3 "~" H 8500 1750 50  0001 C CNN
	1    8500 1750
	1    0    0    -1  
$EndComp
Connection ~ 8500 1100
$Comp
L 74xGxx:74AHC1G08 U8
U 1 1 5DF79A42
P 9950 1450
F 0 "U8" H 9925 1717 50  0000 C CNN
F 1 "74AHC1G08" H 9925 1626 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-353_SC-70-5" H 9950 1450 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 9950 1450 50  0001 C CNN
	1    9950 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 1450 10200 1450
Wire Wire Line
	5100 1600 5600 1600
Wire Wire Line
	5100 1700 5600 1700
Wire Wire Line
	5100 1800 5600 1800
Wire Wire Line
	5100 2000 5600 2000
Wire Wire Line
	5100 2100 5600 2100
Wire Wire Line
	5100 2400 5600 2400
Wire Wire Line
	5100 2500 5600 2500
Wire Wire Line
	5100 2700 5600 2700
Wire Wire Line
	5100 2800 5600 2800
Wire Wire Line
	5100 2900 5600 2900
Wire Wire Line
	5100 3000 5600 3000
Wire Wire Line
	5100 3100 5600 3100
Wire Wire Line
	5100 3200 5600 3200
Wire Wire Line
	5100 3300 5600 3300
Wire Wire Line
	5100 3400 5600 3400
Wire Wire Line
	5100 3700 5600 3700
Wire Wire Line
	5100 3800 5600 3800
Wire Wire Line
	5100 3900 5600 3900
Wire Wire Line
	5100 4000 5600 4000
Wire Wire Line
	5100 4100 5600 4100
Wire Wire Line
	5100 4400 5600 4400
Wire Wire Line
	5100 4500 5600 4500
Wire Wire Line
	5100 4600 5600 4600
Wire Wire Line
	5100 4700 5600 4700
Wire Wire Line
	5100 5600 5600 5600
Wire Wire Line
	5100 5700 5600 5700
Wire Wire Line
	5100 6100 5600 6100
Wire Wire Line
	5100 6200 5600 6200
Wire Wire Line
	5100 6300 5600 6300
Wire Wire Line
	5100 6400 5600 6400
Wire Wire Line
	2300 1500 1800 1500
Wire Wire Line
	2300 1600 1800 1600
Wire Wire Line
	2300 1700 1800 1700
Wire Wire Line
	2300 1800 1800 1800
Wire Wire Line
	2300 2100 1800 2100
Wire Wire Line
	2300 2200 1800 2200
Wire Wire Line
	2300 2300 1800 2300
Wire Wire Line
	2300 2400 1800 2400
Wire Wire Line
	2300 2700 1800 2700
Wire Wire Line
	2300 2800 1800 2800
Wire Wire Line
	2300 3000 1800 3000
Wire Wire Line
	2300 3900 1800 3900
Wire Wire Line
	2300 4400 1800 4400
Wire Wire Line
	2300 4500 1800 4500
Wire Wire Line
	2300 4600 1800 4600
Wire Wire Line
	2300 4800 1800 4800
Wire Wire Line
	2300 4900 1800 4900
Wire Wire Line
	2300 5600 1800 5600
Wire Wire Line
	2300 6100 1800 6100
Wire Wire Line
	5100 2300 5250 2300
Wire Wire Line
	1800 3400 2300 3400
Wire Wire Line
	5100 5800 5600 5800
Wire Wire Line
	5100 6000 5200 6000
Wire Wire Line
	2300 6200 1800 6200
Wire Wire Line
	2300 6300 1800 6300
Wire Wire Line
	2150 2000 2300 2000
Text Label 1800 3000 0    50   ~ 0
~TSC
Text Label 5600 2000 2    50   ~ 0
JTAG_TDO
Text Label 5600 2100 2    50   ~ 0
JTAG_TDI
Text Label 5600 2400 2    50   ~ 0
JTAG_TCK
Text Label 5600 2500 2    50   ~ 0
JTAG_TMS
Wire Wire Line
	8850 4550 9350 4550
Wire Wire Line
	8850 4450 9350 4450
Wire Wire Line
	8850 4350 9350 4350
Wire Wire Line
	8850 4650 9350 4650
Text Label 9350 4550 2    50   ~ 0
JTAG_TDO
Text Label 9350 4450 2    50   ~ 0
JTAG_TDI
Text Label 9350 4350 2    50   ~ 0
JTAG_TCK
Text Label 9350 4650 2    50   ~ 0
JTAG_TMS
Entry Wire Line
	6050 1700 6150 1800
Entry Wire Line
	6050 1800 6150 1900
Entry Wire Line
	6050 1900 6150 2000
Entry Wire Line
	6050 2000 6150 2100
Entry Wire Line
	6050 2100 6150 2200
Entry Wire Line
	6000 2300 6100 2400
Entry Wire Line
	6000 2400 6100 2500
Entry Wire Line
	6000 2700 6100 2800
Entry Wire Line
	6000 2800 6100 2900
Entry Wire Line
	6050 3000 6150 3100
Entry Wire Line
	6050 3100 6150 3200
Entry Wire Line
	6050 3200 6150 3300
Entry Wire Line
	6050 3300 6150 3400
Entry Wire Line
	6050 3400 6150 3500
Entry Wire Line
	7850 1900 7950 2000
Entry Wire Line
	7850 2000 7950 2100
Entry Wire Line
	7850 2100 7950 2200
Entry Wire Line
	7850 2200 7950 2300
Entry Wire Line
	7900 2400 8000 2500
Entry Wire Line
	7900 2500 8000 2600
Entry Wire Line
	7900 2800 8000 2900
Entry Wire Line
	7900 2900 8000 3000
Entry Wire Line
	7850 3000 7950 3100
Entry Wire Line
	7850 3100 7950 3200
Entry Wire Line
	7850 3200 7950 3300
Entry Wire Line
	7850 3300 7950 3400
Wire Bus Line
	7950 1100 6050 1100
Text Label 6650 1100 0    50   ~ 0
A[0..20]
Text Label 6350 3000 0    50   ~ 0
~WE
Text Label 6350 2300 0    50   ~ 0
~CE
Text Label 5600 4700 2    50   ~ 0
A0
Text Label 5600 4600 2    50   ~ 0
A1
Text Label 5600 4500 2    50   ~ 0
A2
Text Label 5600 4400 2    50   ~ 0
A3
Text Label 5600 3800 2    50   ~ 0
A4
Text Label 5600 3900 2    50   ~ 0
A5
Text Label 5600 4000 2    50   ~ 0
A6
Text Label 5600 4100 2    50   ~ 0
A7
Text Label 5600 3400 2    50   ~ 0
A8
Text Label 5600 3300 2    50   ~ 0
A9
Text Label 5600 3200 2    50   ~ 0
A10
Text Label 5600 3100 2    50   ~ 0
A11
Text Label 5600 3000 2    50   ~ 0
A12
Text Label 5600 2900 2    50   ~ 0
A13
Text Label 5600 2800 2    50   ~ 0
A14
Text Label 5600 2700 2    50   ~ 0
A15
Text Label 5600 1900 2    50   ~ 0
A16
Text Label 5600 1800 2    50   ~ 0
A17
Text Label 5600 1700 2    50   ~ 0
A18
Text Label 5600 1600 2    50   ~ 0
A19
Text Label 1800 2400 0    50   ~ 0
IO0
Text Label 1800 2300 0    50   ~ 0
IO1
Text Label 1800 2200 0    50   ~ 0
IO2
Text Label 1800 2100 0    50   ~ 0
IO3
Text Label 1800 1800 0    50   ~ 0
IO4
Text Label 1800 1700 0    50   ~ 0
IO5
Text Label 1800 1600 0    50   ~ 0
IO6
Text Label 1800 1500 0    50   ~ 0
IO7
Text Label 7650 2300 2    50   ~ 0
~OE
Wire Wire Line
	6450 3000 6350 3000
Wire Wire Line
	7550 2300 7650 2300
Text Label 1800 3900 0    50   ~ 0
~WE
Text Label 5600 3700 2    50   ~ 0
~OE
Wire Bus Line
	6000 1200 8000 1200
Text Label 6500 1200 0    50   ~ 0
IO[0..7]
Wire Wire Line
	5100 1900 5600 1900
Text Label 5600 6100 2    50   ~ 0
SPI_CLK
Wire Wire Line
	9950 1350 9950 1150
Text Label 1800 4100 0    50   ~ 0
clkE
Text Label 1800 4200 0    50   ~ 0
clkQ
Text Label 5600 6200 2    50   ~ 0
SPI_MISO
Text Label 5600 6300 2    50   ~ 0
SPI_MOSI
Text Label 1800 6300 0    50   ~ 0
TxD
Text Label 5600 5600 2    50   ~ 0
SPI_CS2
Text Label 5600 5700 2    50   ~ 0
SPI_CS3
Text Label 5600 5800 2    50   ~ 0
SPI_CS4
Wire Wire Line
	8850 5400 9300 5400
Wire Wire Line
	8850 5500 9300 5500
Wire Wire Line
	8850 5600 9300 5600
Wire Wire Line
	8850 5700 9300 5700
Wire Wire Line
	8850 5850 9300 5850
Wire Wire Line
	8850 5950 9300 5950
Text Label 9300 5500 2    50   ~ 0
SPI_CS1
Text Label 9300 5850 2    50   ~ 0
SPI_CS2
Text Label 6100 2300 0    50   ~ 0
~CS0
Wire Wire Line
	6100 2300 6450 2300
Wire Wire Line
	8850 6150 9300 6150
Text Label 9300 6150 2    50   ~ 0
SPI_CS0
Text Label 9300 5400 2    50   ~ 0
SPI_CLK
Text Label 9300 5600 2    50   ~ 0
SPI_MOSI
Text Label 9300 5700 2    50   ~ 0
SPI_MISO
Text Label 10700 2150 2    50   ~ 0
A0
Wire Wire Line
	10500 2150 10700 2150
Wire Wire Line
	10500 2250 10700 2250
Wire Wire Line
	10500 2350 10700 2350
Wire Wire Line
	10500 2450 10700 2450
Wire Wire Line
	10500 2650 10700 2650
Wire Wire Line
	10500 2850 10700 2850
Wire Wire Line
	10500 2950 10700 2950
Wire Wire Line
	10500 3150 10700 3150
Wire Wire Line
	10500 3250 10700 3250
Text Label 9850 2150 0    50   ~ 0
A1
Wire Wire Line
	10000 3150 9850 3150
Wire Wire Line
	10000 2950 9850 2950
Wire Wire Line
	10000 2850 9850 2850
Wire Wire Line
	10000 2750 9850 2750
Wire Wire Line
	10000 2650 9850 2650
Wire Wire Line
	10000 2450 9850 2450
Wire Wire Line
	10000 2350 9850 2350
Wire Wire Line
	10000 2250 9850 2250
Wire Wire Line
	10000 2150 9850 2150
Text Label 10700 2250 2    50   ~ 0
A2
Text Label 6450 1900 2    50   ~ 0
A3
Text Label 9850 2250 0    50   ~ 0
A3
Text Label 10700 2350 2    50   ~ 0
A4
Text Label 9850 2350 0    50   ~ 0
A5
Text Label 10700 2450 2    50   ~ 0
A6
Text Label 9850 2450 0    50   ~ 0
A7
Text Label 10700 2650 2    50   ~ 0
A8
Text Label 9850 2650 0    50   ~ 0
A9
Text Label 10700 2750 2    50   ~ 0
A10
Text Label 9850 2750 0    50   ~ 0
A11
Text Label 10700 2850 2    50   ~ 0
A12
Text Label 9850 2850 0    50   ~ 0
A13
Text Label 10700 2950 2    50   ~ 0
A14
Text Label 9850 2950 0    50   ~ 0
A15
Text Label 10700 3150 2    50   ~ 0
A16
Text Label 9850 3150 0    50   ~ 0
A17
Text Label 10700 3250 2    50   ~ 0
A18
Text Label 9350 4050 2    50   ~ 0
TxD
Wire Wire Line
	8850 3950 9350 3950
Wire Wire Line
	8850 4050 9350 4050
Wire Wire Line
	8850 4150 9350 4150
Wire Wire Line
	8850 4250 9350 4250
Text Label 1800 2600 0    50   ~ 0
GCLK0
Wire Wire Line
	1800 2600 2300 2600
Text Label 7050 5800 2    50   ~ 0
GCLK0
Wire Wire Line
	9650 1950 10000 1950
Text Label 10900 1950 2    50   ~ 0
SPI_MOSI
Wire Wire Line
	10500 1950 10900 1950
Text Label 9650 1950 0    50   ~ 0
SPI_MISO
Wire Wire Line
	10500 4250 10700 4250
Wire Wire Line
	10500 5450 10750 5450
Text Label 10700 4250 2    50   ~ 0
clkE
Text Label 9800 4250 0    50   ~ 0
clkQ
Wire Wire Line
	10000 4250 9800 4250
Wire Wire Line
	10000 4350 9800 4350
Wire Wire Line
	10000 4450 9800 4450
Wire Wire Line
	10000 4550 9800 4550
Wire Wire Line
	10000 4650 9800 4650
Wire Wire Line
	10000 4850 9800 4850
Wire Wire Line
	10000 4950 9800 4950
Wire Wire Line
	10500 5050 10800 5050
Wire Wire Line
	8850 6050 9300 6050
Text Label 9300 6050 2    50   ~ 0
RTC_CLK
Text Label 1800 4800 0    50   ~ 0
RTC_CLK
Text Label 10900 2050 2    50   ~ 0
SPI_CLK
Wire Wire Line
	10500 2050 10900 2050
Text Label 9350 3950 2    50   ~ 0
RxD
Text Label 1800 6200 0    50   ~ 0
RxD
Text Label 9350 4150 2    50   ~ 0
~CTS
Text Label 1800 6100 0    50   ~ 0
~CTS
Text Label 9350 4250 2    50   ~ 0
~RTS
Text Label 5600 6400 2    50   ~ 0
~RTS
Text Label 10750 5450 2    50   ~ 0
GCLK1
Text Label 5600 5200 2    50   ~ 0
GCLK1
Text Label 5600 5100 2    50   ~ 0
~CS0
Text Label 5600 5500 2    50   ~ 0
SPI_CS1
Text Label 5600 5400 2    50   ~ 0
SPI_CS0
Wire Wire Line
	2300 5500 1800 5500
Wire Wire Line
	2300 5400 1800 5400
Wire Wire Line
	2300 5300 1800 5300
Wire Wire Line
	2300 5100 1800 5100
Wire Wire Line
	2300 5000 1800 5000
Wire Wire Line
	5100 5500 5600 5500
Wire Wire Line
	5100 5400 5600 5400
Wire Wire Line
	5100 5200 5600 5200
Wire Wire Line
	5100 5100 5600 5100
Connection ~ 2200 4000
Connection ~ 2200 6000
Wire Wire Line
	2200 6000 2200 4000
Connection ~ 5200 4200
Wire Wire Line
	5200 6000 5200 4200
Connection ~ 5250 5900
Connection ~ 5250 4300
Wire Wire Line
	5250 4300 5250 5900
Connection ~ 2150 5800
Connection ~ 2150 4700
Wire Wire Line
	2150 4700 2150 5800
$Comp
L o2_breakout-rescue:LCMXO2-2000HC-4TG100C-FPGA_Lattice U1
U 1 1 5DC03110
P 2300 1500
F 0 "U1" H 3650 1800 60  0000 C CNN
F 1 "LCMXO2-2000HC-4TG100C" H 3700 -3700 60  0000 C CNN
F 2 "digikey-footprints:TQFP-100_14x14mm" H 3700 1740 60  0001 C CNN
F 3 "" H 2300 1500 60  0000 C CNN
	1    2300 1500
	1    0    0    -1  
$EndComp
Text Label 1800 5500 0    50   ~ 0
~nAltRD
Text Label 1800 5600 0    50   ~ 0
~nAltWR
Text Label 1800 2700 0    50   ~ 0
S0
Text Label 1800 2800 0    50   ~ 0
S1
Text Label 9800 4350 0    50   ~ 0
~TSC
Wire Wire Line
	6200 7500 6550 7500
Wire Wire Line
	6200 7050 6550 7050
Wire Wire Line
	6550 7400 6550 7500
$Comp
L Device:C C31
U 1 1 5F063EB9
P 6550 7250
F 0 "C31" H 6665 7296 50  0000 L CNN
F 1 "0.1uF" H 6665 7205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 6588 7100 50  0001 C CNN
F 3 "~" H 6550 7250 50  0001 C CNN
	1    6550 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 7050 6550 7100
Text Label 10700 4350 2    50   ~ 0
S0
Wire Wire Line
	10500 4350 10700 4350
Text Label 9800 4450 0    50   ~ 0
S1
Connection ~ 10950 1850
Wire Wire Line
	10500 1850 10950 1850
Wire Wire Line
	10500 5150 10950 5150
Wire Wire Line
	10500 4550 10700 4550
Wire Wire Line
	10500 4850 10700 4850
Text Label 10800 5050 2    50   ~ 0
~nAltRD
Text Label 9750 5050 0    50   ~ 0
~nAltWR
Wire Wire Line
	9650 6050 9650 5950
Connection ~ 9650 6050
Wire Wire Line
	9650 6050 10000 6050
$Comp
L CPU2908CLocal:LED D?
U 1 1 5F60594B
P 1100 4350
AR Path="/5E6A6650/5F60594B" Ref="D?"  Part="1" 
AR Path="/5F60594B" Ref="D4"  Part="1" 
F 0 "D4" V 1139 4233 50  0000 R CNN
F 1 "LED" V 1048 4233 50  0000 R CNN
F 2 "Capacitors_SMD:C_0603" H 1100 4350 50  0001 C CNN
F 3 "~" H 1100 4350 50  0001 C CNN
	1    1100 4350
	0    -1   -1   0   
$EndComp
$Comp
L CPU2908CLocal:R R?
U 1 1 5F605951
P 1100 4700
AR Path="/5E6A6650/5F605951" Ref="R?"  Part="1" 
AR Path="/5F605951" Ref="R18"  Part="1" 
F 0 "R18" H 1170 4746 50  0000 L CNN
F 1 "47K" H 1170 4655 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" V 1030 4700 50  0001 C CNN
F 3 "~" H 1100 4700 50  0001 C CNN
	1    1100 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 4500 1100 4550
Wire Wire Line
	1100 4850 1100 4900
$Comp
L CPU2908CLocal:LED D?
U 1 1 5F630D6B
P 1450 4350
AR Path="/5E6A6650/5F630D6B" Ref="D?"  Part="1" 
AR Path="/5F630D6B" Ref="D6"  Part="1" 
F 0 "D6" V 1489 4233 50  0000 R CNN
F 1 "LED" V 1398 4233 50  0000 R CNN
F 2 "Capacitors_SMD:C_0603" H 1450 4350 50  0001 C CNN
F 3 "~" H 1450 4350 50  0001 C CNN
	1    1450 4350
	0    -1   -1   0   
$EndComp
$Comp
L CPU2908CLocal:R R?
U 1 1 5F630D71
P 1450 4700
AR Path="/5E6A6650/5F630D71" Ref="R?"  Part="1" 
AR Path="/5F630D71" Ref="R20"  Part="1" 
F 0 "R20" H 1520 4746 50  0000 L CNN
F 1 "47K" H 1520 4655 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" V 1380 4700 50  0001 C CNN
F 3 "~" H 1450 4700 50  0001 C CNN
	1    1450 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 4500 1450 4550
Wire Wire Line
	1450 4850 1450 4900
Wire Wire Line
	1100 4900 1450 4900
Wire Wire Line
	1100 4900 1100 5000
Connection ~ 1100 4900
$Comp
L power:GND #PWR029
U 1 1 5F6B389A
P 1100 5000
F 0 "#PWR029" H 1100 4750 50  0001 C CNN
F 1 "GND" H 1105 4827 50  0000 C CNN
F 2 "" H 1100 5000 50  0001 C CNN
F 3 "" H 1100 5000 50  0001 C CNN
	1    1100 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 4200 2300 4200
Wire Wire Line
	1100 4100 2300 4100
Wire Wire Line
	1100 4100 1100 4200
$Comp
L CPU2908CLocal:LED D?
U 1 1 5F7108B7
P 900 3450
AR Path="/5E6A6650/5F7108B7" Ref="D?"  Part="1" 
AR Path="/5F7108B7" Ref="D3"  Part="1" 
F 0 "D3" V 939 3333 50  0000 R CNN
F 1 "LED" V 848 3333 50  0000 R CNN
F 2 "Capacitors_SMD:C_0603" H 900 3450 50  0001 C CNN
F 3 "~" H 900 3450 50  0001 C CNN
	1    900  3450
	0    -1   -1   0   
$EndComp
$Comp
L CPU2908CLocal:R R?
U 1 1 5F7108BD
P 900 3800
AR Path="/5E6A6650/5F7108BD" Ref="R?"  Part="1" 
AR Path="/5F7108BD" Ref="R17"  Part="1" 
F 0 "R17" H 970 3846 50  0000 L CNN
F 1 "47K" H 970 3755 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" V 830 3800 50  0001 C CNN
F 3 "~" H 900 3800 50  0001 C CNN
	1    900  3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  3600 900  3650
Wire Wire Line
	900  3950 900  4000
$Comp
L CPU2908CLocal:LED D?
U 1 1 5F7108C5
P 1250 3450
AR Path="/5E6A6650/5F7108C5" Ref="D?"  Part="1" 
AR Path="/5F7108C5" Ref="D5"  Part="1" 
F 0 "D5" V 1289 3333 50  0000 R CNN
F 1 "LED" V 1198 3333 50  0000 R CNN
F 2 "Capacitors_SMD:C_0603" H 1250 3450 50  0001 C CNN
F 3 "~" H 1250 3450 50  0001 C CNN
	1    1250 3450
	0    -1   -1   0   
$EndComp
$Comp
L CPU2908CLocal:R R?
U 1 1 5F7108CB
P 1250 3800
AR Path="/5E6A6650/5F7108CB" Ref="R?"  Part="1" 
AR Path="/5F7108CB" Ref="R19"  Part="1" 
F 0 "R19" H 1320 3846 50  0000 L CNN
F 1 "47K" H 1320 3755 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" V 1180 3800 50  0001 C CNN
F 3 "~" H 1250 3800 50  0001 C CNN
	1    1250 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 3600 1250 3650
Wire Wire Line
	1250 3950 1250 4000
Wire Wire Line
	900  4000 1250 4000
Connection ~ 900  4000
Wire Wire Line
	900  3200 900  3300
Wire Wire Line
	900  3200 2300 3200
Wire Wire Line
	1250 3300 2300 3300
Wire Wire Line
	900  4900 1100 4900
Wire Wire Line
	900  4000 900  4900
Text Label 1400 3200 0    50   ~ 0
USER_LED1
Text Label 1400 3300 0    50   ~ 0
USER_LED2
Text Label 9700 5650 0    50   ~ 0
SPI_CS4
Wire Wire Line
	9700 5650 10000 5650
Text Label 11050 5650 2    50   ~ 0
SPI_CS3
NoConn ~ 10000 5750
NoConn ~ 10000 5550
NoConn ~ 10000 5450
NoConn ~ 10000 5350
NoConn ~ 10000 5250
NoConn ~ 10500 5250
NoConn ~ 10500 5350
NoConn ~ 10500 5750
Wire Wire Line
	10000 5950 9650 5950
Connection ~ 9650 5950
Wire Wire Line
	10700 5950 10700 6050
Wire Wire Line
	10700 6050 10500 6050
Wire Wire Line
	10700 6150 10700 6050
Connection ~ 9650 6150
Wire Wire Line
	9650 6150 9650 6200
Connection ~ 10700 6050
Wire Wire Line
	9650 3900 10850 3900
Connection ~ 9650 3900
NoConn ~ 2300 3500
NoConn ~ 2300 3100
NoConn ~ 5100 4800
NoConn ~ 2300 5700
NoConn ~ 2300 5900
NoConn ~ 2300 5200
NoConn ~ 2300 3800
Text Label 9850 3250 0    50   ~ 0
A19
Wire Wire Line
	9850 3250 10000 3250
Wire Wire Line
	10700 2750 10500 2750
Text Label 9300 5950 2    50   ~ 0
~SD_CD
Wire Wire Line
	9600 1400 9650 1400
Wire Wire Line
	8500 1100 9550 1100
Wire Wire Line
	9650 1500 9550 1500
Wire Wire Line
	9550 1500 9550 1100
Wire Wire Line
	8250 1100 8500 1100
Wire Wire Line
	9600 1400 9600 1550
Wire Wire Line
	8850 900  8850 700 
Connection ~ 8850 2000
Wire Wire Line
	8850 2000 8850 2100
Connection ~ 6200 7050
Connection ~ 6200 7500
Connection ~ 6550 7050
Connection ~ 6550 7500
$Comp
L power:+3V3 #PWR0121
U 1 1 5E562BDF
P 9950 1100
F 0 "#PWR0121" H 9950 950 50  0001 C CNN
F 1 "+3V3" H 9965 1273 50  0000 C CNN
F 2 "" H 9950 1100 50  0001 C CNN
F 3 "" H 9950 1100 50  0001 C CNN
	1    9950 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6089F76D
P 10900 5800
AR Path="/5E6A6650/6089F76D" Ref="#PWR?"  Part="1" 
AR Path="/6089F76D" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 10900 5650 50  0001 C CNN
F 1 "+5V" H 11000 5900 50  0000 C CNN
F 2 "" H 10900 5800 50  0001 C CNN
F 3 "" H 10900 5800 50  0001 C CNN
	1    10900 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10900 5800 10900 5850
Wire Wire Line
	10500 5850 10900 5850
Wire Wire Line
	10900 5850 10900 6250
Wire Wire Line
	10900 6250 9800 6250
Wire Wire Line
	9800 6250 9800 6150
Connection ~ 10900 5850
Wire Wire Line
	9800 6150 9800 5850
Wire Wire Line
	9800 5850 10000 5850
Wire Wire Line
	9650 6150 10700 6150
Wire Wire Line
	10000 4150 9850 4150
Wire Wire Line
	9850 4150 9850 3950
Wire Wire Line
	9850 3950 10950 3950
Connection ~ 10950 3950
Wire Wire Line
	10000 1850 9850 1850
Wire Wire Line
	9850 1850 9850 1600
Wire Wire Line
	9850 1600 10950 1600
Connection ~ 10950 1600
Wire Wire Line
	10950 1600 10950 1500
Text Label 5600 5000 2    50   ~ 0
Boot
$Comp
L CPU2908CLocal:R R?
U 1 1 60B0A184
P 5900 4800
AR Path="/5E6A6650/60B0A184" Ref="R?"  Part="1" 
AR Path="/60B0A184" Ref="R25"  Part="1" 
F 0 "R25" H 5970 4846 50  0000 L CNN
F 1 "10K" H 5970 4755 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" V 5830 4800 50  0001 C CNN
F 3 "~" H 5900 4800 50  0001 C CNN
	1    5900 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 5000 5900 4950
Wire Wire Line
	5100 5000 5900 5000
Wire Wire Line
	5900 4650 5900 4550
$Comp
L power:+3V3 #PWR0119
U 1 1 60B5B932
P 5900 4550
F 0 "#PWR0119" H 5900 4400 50  0001 C CNN
F 1 "+3V3" H 5915 4723 50  0000 C CNN
F 2 "" H 5900 4550 50  0001 C CNN
F 3 "" H 5900 4550 50  0001 C CNN
	1    5900 4550
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP2
U 1 1 60B5C787
P 5900 5200
F 0 "JP2" V 5854 5298 50  0000 L CNN
F 1 "Jumper_2_Open" V 5945 5298 50  0000 L CNN
F 2 "Wire_Connections_Bridges:WireConnection_0.80mmDrill" H 5900 5200 50  0001 C CNN
F 3 "~" H 5900 5200 50  0001 C CNN
	1    5900 5200
	0    1    1    0   
$EndComp
Connection ~ 5900 5000
$Comp
L power:GND #PWR0123
U 1 1 60B5D1DD
P 5900 5400
F 0 "#PWR0123" H 5900 5150 50  0001 C CNN
F 1 "GND" H 5905 5227 50  0000 C CNN
F 2 "" H 5900 5400 50  0001 C CNN
F 3 "" H 5900 5400 50  0001 C CNN
	1    5900 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 3950 9600 3950
Wire Wire Line
	9600 3950 9600 5150
Wire Wire Line
	9600 5150 10000 5150
Connection ~ 9850 3950
Wire Wire Line
	3250 7050 3250 7100
Wire Wire Line
	3250 7400 3250 7500
Wire Wire Line
	3600 7500 3250 7500
Wire Wire Line
	3250 7050 3600 7050
$Comp
L Device:C C35
U 1 1 5E3FFAA2
P 3250 7250
F 0 "C35" H 3365 7296 50  0000 L CNN
F 1 "0.1uF" H 3365 7205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3288 7100 50  0001 C CNN
F 3 "~" H 3250 7250 50  0001 C CNN
	1    3250 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 5050 9750 5050
Wire Wire Line
	10500 4950 10700 4950
Wire Wire Line
	11100 6150 10700 6150
Connection ~ 10700 6150
Wire Wire Line
	8250 1500 8250 2000
Wire Wire Line
	8250 2000 8500 2000
Connection ~ 8500 2000
Wire Wire Line
	8500 1900 8500 2000
Wire Wire Line
	6750 5800 7050 5800
Wire Wire Line
	6450 6100 6450 6200
$Comp
L Mechanical:MountingHole_Pad H5
U 1 1 5E208030
P 1050 7350
F 0 "H5" H 1150 7399 50  0000 L CNN
F 1 "GND" H 1150 7308 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch1.00mm" H 1050 7350 50  0001 C CNN
F 3 "~" H 1050 7350 50  0001 C CNN
	1    1050 7350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5E2082A6
P 1050 7500
F 0 "#PWR014" H 1050 7250 50  0001 C CNN
F 1 "GND" H 1055 7327 50  0000 C CNN
F 2 "" H 1050 7500 50  0001 C CNN
F 3 "" H 1050 7500 50  0001 C CNN
	1    1050 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 7450 1050 7500
Wire Wire Line
	5100 4900 5600 4900
Text Label 5600 4900 2    50   ~ 0
~CS2
Wire Wire Line
	10500 5550 10700 5550
Wire Wire Line
	10700 5550 10700 5950
Wire Wire Line
	10500 5950 10700 5950
Connection ~ 10700 5950
Wire Wire Line
	10500 5650 11050 5650
Wire Wire Line
	8500 2000 8850 2000
Wire Wire Line
	9250 1550 9350 1550
Text Label 9700 1700 2    50   ~ 0
FT_Reset
Text Label 9350 4850 2    50   ~ 0
FT_Reset
Wire Wire Line
	8850 4850 9350 4850
$Comp
L CPU2908CLocal:R R?
U 1 1 5E34444C
P 9350 1350
AR Path="/5E6A6650/5E34444C" Ref="R?"  Part="1" 
AR Path="/5E34444C" Ref="R12"  Part="1" 
F 0 "R12" H 9420 1396 50  0000 L CNN
F 1 "10K" H 9420 1305 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" V 9280 1350 50  0001 C CNN
F 3 "~" H 9350 1350 50  0001 C CNN
	1    9350 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 1500 9350 1550
Connection ~ 9350 1550
Wire Wire Line
	9350 1550 9600 1550
Wire Wire Line
	9350 1200 9350 1150
Wire Wire Line
	9350 1150 9950 1150
Connection ~ 9950 1150
Wire Wire Line
	9950 1150 9950 1100
Wire Wire Line
	9350 1550 9350 1700
Wire Wire Line
	9350 1700 9700 1700
Wire Wire Line
	5100 5300 5600 5300
Text Label 5600 5300 2    50   ~ 0
~SD_CD
Wire Wire Line
	10500 4150 11100 4150
Wire Wire Line
	7300 4700 7350 4700
$Comp
L CPU2908CLocal:R R?
U 1 1 5E37E0D9
P 7300 4450
AR Path="/5E6A6650/5E37E0D9" Ref="R?"  Part="1" 
AR Path="/5E37E0D9" Ref="R26"  Part="1" 
F 0 "R26" H 7370 4496 50  0000 L CNN
F 1 "10K" H 7370 4405 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" V 7230 4450 50  0001 C CNN
F 3 "~" H 7300 4450 50  0001 C CNN
	1    7300 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 4600 7300 4700
Wire Wire Line
	7300 4300 7300 4150
$Comp
L power:+3V3 #PWR0113
U 1 1 5E3CFF9E
P 7300 4150
F 0 "#PWR0113" H 7300 4000 50  0001 C CNN
F 1 "+3V3" H 7315 4323 50  0000 C CNN
F 2 "" H 7300 4150 50  0001 C CNN
F 3 "" H 7300 4150 50  0001 C CNN
	1    7300 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 4700 7200 4700
Wire Wire Line
	7200 4700 7200 4850
Connection ~ 7300 4700
$Comp
L power:GND #PWR0114
U 1 1 5E3FD413
P 7200 5350
F 0 "#PWR0114" H 7200 5100 50  0001 C CNN
F 1 "GND" H 7205 5177 50  0000 C CNN
F 2 "" H 7200 5350 50  0001 C CNN
F 3 "" H 7200 5350 50  0001 C CNN
	1    7200 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 5250 7200 5350
Wire Wire Line
	7350 5250 7200 5250
$Comp
L o2_breakout-rescue:SW_DPST_x2-Switch SW1
U 2 1 5E4ECDEF
P 7200 5050
F 0 "SW1" H 7350 4950 50  0000 C CNN
F 1 "USER" H 7100 4950 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH_6mm" H 7200 5050 50  0001 C CNN
F 3 "~" H 7200 5050 50  0001 C CNN
	2    7200 5050
	0    1    1    0   
$EndComp
$Comp
L o2_breakout-rescue:SW_DPST_x2-Switch SW2
U 1 1 5E5196BE
P 8600 3150
F 0 "SW2" H 8600 3385 50  0000 C CNN
F 1 "Reset" H 8600 3294 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH_6mm" H 8600 3150 50  0001 C CNN
F 3 "~" H 8600 3150 50  0001 C CNN
	1    8600 3150
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5E51A803
P 8600 3400
F 0 "#PWR0117" H 8600 3150 50  0001 C CNN
F 1 "GND" H 8605 3227 50  0000 C CNN
F 2 "" H 8600 3400 50  0001 C CNN
F 3 "" H 8600 3400 50  0001 C CNN
	1    8600 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3350 8600 3400
Connection ~ 7200 5250
$Comp
L o2_breakout-rescue:SW_DPST_x2-Switch SW1
U 1 1 5E5C905A
P 7200 6000
F 0 "SW1" H 7350 5900 50  0000 C CNN
F 1 "USER" H 7100 5900 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH_6mm" H 7200 6000 50  0001 C CNN
F 3 "~" H 7200 6000 50  0001 C CNN
	1    7200 6000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5E61E705
P 7200 6300
F 0 "#PWR019" H 7200 6050 50  0001 C CNN
F 1 "GND" H 7205 6127 50  0000 C CNN
F 2 "" H 7200 6300 50  0001 C CNN
F 3 "" H 7200 6300 50  0001 C CNN
	1    7200 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 6200 7200 6300
NoConn ~ 7200 5800
Wire Wire Line
	8600 2950 8600 2900
$Comp
L CPU2908CLocal:R R?
U 1 1 5E6CC7BD
P 8600 2750
AR Path="/5E6A6650/5E6CC7BD" Ref="R?"  Part="1" 
AR Path="/5E6CC7BD" Ref="R10"  Part="1" 
F 0 "R10" H 8670 2796 50  0000 L CNN
F 1 "10K" H 8670 2705 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" V 8530 2750 50  0001 C CNN
F 3 "~" H 8600 2750 50  0001 C CNN
	1    8600 2750
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR020
U 1 1 5E6CC7C3
P 8600 2550
F 0 "#PWR020" H 8600 2400 50  0001 C CNN
F 1 "+3V3" H 8615 2723 50  0000 C CNN
F 2 "" H 8600 2550 50  0001 C CNN
F 3 "" H 8600 2550 50  0001 C CNN
	1    8600 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 2550 8600 2600
Connection ~ 8850 900 
Wire Wire Line
	8850 900  8850 1150
Text Label 9650 2050 0    50   ~ 0
~SD_CD
Wire Wire Line
	9650 2050 10000 2050
Wire Wire Line
	10950 1850 10950 3950
Wire Wire Line
	9650 2550 10000 2550
Wire Wire Line
	10500 2550 11100 2550
Wire Wire Line
	11100 2550 11100 4150
Connection ~ 11100 4150
Wire Wire Line
	9650 2550 9650 3050
Wire Wire Line
	10500 3050 10850 3050
Wire Wire Line
	10850 3050 10850 3350
Wire Wire Line
	10000 3050 9650 3050
Connection ~ 9650 3050
Wire Wire Line
	9650 3050 9650 3350
Wire Wire Line
	10500 3350 10850 3350
Wire Wire Line
	10000 3350 9650 3350
Connection ~ 10850 3350
Wire Wire Line
	10850 3350 10850 3900
Connection ~ 9650 3350
Wire Wire Line
	9650 3350 9650 3900
Text Label 9850 3750 0    50   ~ 0
IO7
Wire Wire Line
	10000 3450 9850 3450
Wire Wire Line
	10000 3550 9850 3550
Wire Wire Line
	10000 3650 9850 3650
Wire Wire Line
	10000 3750 9850 3750
Wire Wire Line
	10500 3450 10700 3450
Wire Wire Line
	10500 3550 10700 3550
Wire Wire Line
	10500 3650 10700 3650
Wire Wire Line
	10500 3750 10700 3750
Text Label 10700 3750 2    50   ~ 0
IO6
Text Label 9850 3650 0    50   ~ 0
IO5
Text Label 10700 3650 2    50   ~ 0
IO4
Text Label 9850 3550 0    50   ~ 0
IO3
Text Label 10700 3550 2    50   ~ 0
IO2
Text Label 9850 3450 0    50   ~ 0
IO1
Text Label 10700 3450 2    50   ~ 0
IO0
Text Label 1800 4600 0    50   ~ 0
IO10
Text Label 1800 4900 0    50   ~ 0
IO11
Text Label 1800 5000 0    50   ~ 0
IO12
Text Label 1800 5100 0    50   ~ 0
IO13
Text Label 1800 5300 0    50   ~ 0
IO14
Text Label 1800 5400 0    50   ~ 0
IO15
Text Label 1800 4500 0    50   ~ 0
IO9
Text Label 1800 4400 0    50   ~ 0
IO8
Text Label 10700 4650 2    50   ~ 0
IO10
Text Label 9800 4650 0    50   ~ 0
IO11
Text Label 10700 4850 2    50   ~ 0
IO12
Text Label 9800 4850 0    50   ~ 0
IO13
Text Label 10700 4950 2    50   ~ 0
IO14
Text Label 9800 4950 0    50   ~ 0
IO15
Text Label 9800 4550 0    50   ~ 0
IO9
Text Label 10700 4550 2    50   ~ 0
IO8
Wire Wire Line
	10500 4650 10700 4650
Wire Wire Line
	9650 3900 9650 4750
Wire Wire Line
	9650 4750 10000 4750
Connection ~ 9650 4750
Wire Wire Line
	9650 4750 9650 5950
Wire Wire Line
	10950 3950 10950 5150
Wire Wire Line
	10500 4750 11100 4750
Connection ~ 11100 4750
Wire Wire Line
	11100 4750 11100 6150
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J1
U 1 1 5DAB02DA
P 10200 5050
F 0 "J1" H 10250 6167 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 10250 6076 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x20_Pitch2.54mm" H 10200 5050 50  0001 C CNN
F 3 "~" H 10200 5050 50  0001 C CNN
	1    10200 5050
	1    0    0    -1  
$EndComp
Text Label 1800 4300 0    50   ~ 0
~CS1
Wire Wire Line
	1800 4300 2300 4300
Text Label 10700 4450 2    50   ~ 0
~CS1
Wire Wire Line
	11100 4150 11100 4750
Wire Wire Line
	10500 4450 10700 4450
Wire Wire Line
	7350 5150 7350 5250
$Comp
L Device:C C38
U 1 1 5E3FD7EE
P 7350 5000
F 0 "C38" H 7465 5046 50  0000 L CNN
F 1 "0.1uF" H 7465 4955 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 7388 4850 50  0001 C CNN
F 3 "~" H 7350 5000 50  0001 C CNN
	1    7350 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 4700 7350 4850
Connection ~ 7350 4700
Text Label 1800 2900 0    50   ~ 0
USER
Wire Wire Line
	7350 4700 7650 4700
Wire Wire Line
	1800 2900 2300 2900
Wire Bus Line
	8000 1200 8000 3100
Wire Bus Line
	6000 1200 6000 2900
Wire Bus Line
	7950 1100 7950 3450
Wire Bus Line
	6050 1100 6050 3500
Text Label 7650 4700 2    50   ~ 0
USER
$EndSCHEMATC
