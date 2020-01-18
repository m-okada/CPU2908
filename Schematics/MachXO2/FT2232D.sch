EESchema Schematic File Version 4
LIBS:o2_breakout-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
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
L Interface_USB:FT2232D U?
U 1 1 5E6AAAB7
P 5800 3850
AR Path="/5E6AAAB7" Ref="U?"  Part="1" 
AR Path="/5E6A6650/5E6AAAB7" Ref="U2"  Part="1" 
F 0 "U2" H 5200 5650 50  0000 C CNN
F 1 "FT2232D" H 6350 2150 50  0000 C CNN
F 2 "digikey-footprints:TQFP-48_7x7mm" H 5800 3850 50  0001 C CNN
F 3 "http://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT2232D.pdf" H 5800 3850 50  0001 C CNN
	1    5800 3850
	1    0    0    -1  
$EndComp
$Comp
L o2_breakout-rescue:USB_B_Micro-Connector J3
U 1 1 5E6AAFE7
P 3450 1700
AR Path="/5E6AAFE7" Ref="J3"  Part="1" 
AR Path="/5E6A6650/5E6AAFE7" Ref="J3"  Part="1" 
F 0 "J3" H 3507 2167 50  0000 C CNN
F 1 "USB_B_Micro" H 3507 2076 50  0000 C CNN
F 2 "digikey-footprints:HRS_ZX62R-B-5P" H 3600 1650 50  0001 C CNN
F 3 "~" H 3600 1650 50  0001 C CNN
	1    3450 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5DC3B558
P 3400 2450
F 0 "#PWR0103" H 3400 2200 50  0001 C CNN
F 1 "GND" H 3405 2277 50  0000 C CNN
F 2 "" H 3400 2450 50  0001 C CNN
F 3 "" H 3400 2450 50  0001 C CNN
	1    3400 2450
	1    0    0    -1  
$EndComp
NoConn ~ 3900 1900
Wire Wire Line
	5600 1950 5600 1800
Wire Wire Line
	5700 1950 5700 1800
$Comp
L power:+5V #PWR07
U 1 1 5DC3F123
P 5700 1350
F 0 "#PWR07" H 5700 1200 50  0001 C CNN
F 1 "+5V" H 5715 1523 50  0000 C CNN
F 2 "" H 5700 1350 50  0001 C CNN
F 3 "" H 5700 1350 50  0001 C CNN
	1    5700 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 5650 6000 5850
Wire Wire Line
	6000 5850 5900 5850
Wire Wire Line
	5500 5850 5500 5650
Wire Wire Line
	5500 5850 5500 5950
Connection ~ 5500 5850
$Comp
L power:GND #PWR06
U 1 1 5DC3FBEF
P 5500 5950
F 0 "#PWR06" H 5500 5700 50  0001 C CNN
F 1 "GND" H 5505 5777 50  0000 C CNN
F 2 "" H 5500 5950 50  0001 C CNN
F 3 "" H 5500 5950 50  0001 C CNN
	1    5500 5950
	1    0    0    -1  
$EndComp
Connection ~ 5700 5850
Wire Wire Line
	5700 5850 5500 5850
Wire Wire Line
	5800 5650 5800 5850
Connection ~ 5800 5850
Wire Wire Line
	5800 5850 5700 5850
Wire Wire Line
	5700 5650 5700 5850
Wire Wire Line
	5900 5650 5900 5850
Connection ~ 5900 5850
Wire Wire Line
	5900 5850 5800 5850
Wire Wire Line
	4900 5150 4750 5150
Wire Wire Line
	4750 5150 4750 5850
Wire Wire Line
	4750 5850 5500 5850
Wire Wire Line
	4900 3750 4600 3750
Text HLabel 4600 3750 0    50   Input ~ 0
nReset
$Comp
L CPU2908CLocal:R R1
U 1 1 5DC786E9
P 5400 1750
F 0 "R1" V 5193 1750 50  0000 C CNN
F 1 "470" V 5284 1750 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" V 5330 1750 50  0001 C CNN
F 3 "~" H 5400 1750 50  0001 C CNN
	1    5400 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 1800 5700 1800
Connection ~ 5700 1800
Wire Wire Line
	5700 1350 5700 1500
Connection ~ 5700 1500
Wire Wire Line
	5700 1500 5700 1800
$Comp
L KUT_PowerIC:NJM12888 VR1
U 1 1 5DC7F4DF
P 8300 1600
F 0 "VR1" H 8300 1987 60  0000 C CNN
F 1 "NJM12888" H 8300 1881 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 8300 1200 60  0001 C CNN
F 3 "" H 8300 1100 60  0001 C CNN
	1    8300 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5DC7FD9A
P 8300 2050
F 0 "#PWR010" H 8300 1800 50  0001 C CNN
F 1 "GND" H 8305 1877 50  0000 C CNN
F 2 "" H 8300 2050 50  0001 C CNN
F 3 "" H 8300 2050 50  0001 C CNN
	1    8300 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 2050 8300 1900
Wire Wire Line
	7900 1700 7700 1700
$Comp
L Memory_EEPROM:93CxxA U4
U 1 1 5DC82A54
P 3950 4950
F 0 "U4" H 3950 5431 50  0000 C CNN
F 1 "93C56" H 3700 4650 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 3950 4950 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001749K.pdf" H 3950 4950 50  0001 C CNN
	1    3950 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5DC86D51
P 3950 5350
F 0 "#PWR0104" H 3950 5100 50  0001 C CNN
F 1 "GND" H 3955 5177 50  0000 C CNN
F 2 "" H 3950 5350 50  0001 C CNN
F 3 "" H 3950 5350 50  0001 C CNN
	1    3950 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4750 4900 4750
Wire Wire Line
	4350 4850 4900 4850
Wire Wire Line
	3400 4850 3550 4850
Wire Wire Line
	4350 4950 4850 4950
Wire Wire Line
	4350 5050 4450 5050
$Comp
L CPU2908CLocal:R R2
U 1 1 5DC98991
P 4450 4400
F 0 "R2" H 4520 4446 50  0000 L CNN
F 1 "10K" H 4520 4355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" V 4380 4400 50  0001 C CNN
F 3 "~" H 4450 4400 50  0001 C CNN
	1    4450 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 4550 4450 5050
Wire Wire Line
	4550 4600 3400 4600
Wire Wire Line
	4550 4600 4550 4750
Wire Wire Line
	3400 4600 3400 4850
$Comp
L CPU2908CLocal:R R3
U 1 1 5DCA0571
P 4650 5050
F 0 "R3" V 4750 4950 50  0000 C CNN
F 1 "2.2k" V 4850 4950 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" V 4580 5050 50  0001 C CNN
F 3 "~" H 4650 5050 50  0001 C CNN
	1    4650 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 5050 4850 5050
Wire Wire Line
	4850 5050 4850 4950
Connection ~ 4850 4950
Wire Wire Line
	4850 4950 4900 4950
Wire Wire Line
	4500 5050 4450 5050
Connection ~ 4450 5050
$Comp
L o2_breakout-rescue:SG-8002CA-Oscillator X?
U 1 1 5DC12BA3
P 3550 3850
AR Path="/5DC12BA3" Ref="X?"  Part="1" 
AR Path="/5E6A6650/5DC12BA3" Ref="X2"  Part="1" 
F 0 "X2" H 3894 3896 50  0000 L CNN
F 1 "6.00MHz" H 3894 3805 50  0000 L CNN
F 2 "Oscillators:Oscillator_SMD_SeikoEpson_SG8002LB-4pin_5.0x3.2mm_HandSoldering" H 4250 3500 50  0001 C CNN
F 3 "https://support.epson.biz/td/api/doc_check.php?mode=dl&lang=en&Parts=SG-8002DC" H 3450 3850 50  0001 C CNN
	1    3550 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3850 4750 3850
Wire Wire Line
	4750 3850 4750 4250
Wire Wire Line
	4750 4250 4900 4250
Wire Wire Line
	3550 4150 3550 4200
$Comp
L power:GND #PWR015
U 1 1 5DC1A4C5
P 3550 4200
F 0 "#PWR015" H 3550 3950 50  0001 C CNN
F 1 "GND" H 3555 4027 50  0000 C CNN
F 2 "" H 3550 4200 50  0001 C CNN
F 3 "" H 3550 4200 50  0001 C CNN
	1    3550 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3850 3150 3850
Wire Wire Line
	3150 3850 3150 3500
Wire Wire Line
	3150 3500 3550 3500
Wire Wire Line
	4450 3150 4900 3150
Wire Wire Line
	4450 2950 4900 2950
Wire Wire Line
	4150 2950 4100 2950
Wire Wire Line
	4050 3150 4150 3150
Wire Wire Line
	5400 1900 5400 1950
Wire Wire Line
	5400 1600 5400 1500
Wire Wire Line
	5400 1500 5700 1500
Wire Wire Line
	4100 1800 4100 2950
Wire Wire Line
	4050 1700 4050 3150
NoConn ~ 4900 4450
NoConn ~ 6700 5350
$Comp
L CPU2908CLocal:R R6
U 1 1 5DC44DC8
P 4450 3350
F 0 "R6" V 4400 3500 50  0000 C CNN
F 1 "1.5K" V 4350 3350 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" V 4380 3350 50  0001 C CNN
F 3 "~" H 4450 3350 50  0001 C CNN
	1    4450 3350
	-1   0    0    1   
$EndComp
Wire Wire Line
	4450 3550 4450 3500
Connection ~ 4450 3150
$Comp
L CPU2908CLocal:R R4
U 1 1 5DC205B4
P 4300 2950
F 0 "R4" V 4093 2950 50  0000 C CNN
F 1 "27" V 4184 2950 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" V 4230 2950 50  0001 C CNN
F 3 "~" H 4300 2950 50  0001 C CNN
	1    4300 2950
	0    1    1    0   
$EndComp
$Comp
L CPU2908CLocal:R R5
U 1 1 5DC208A7
P 4300 3150
F 0 "R5" V 4250 3000 50  0000 C CNN
F 1 "27" V 4200 3150 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" V 4230 3150 50  0001 C CNN
F 3 "~" H 4300 3150 50  0001 C CNN
	1    4300 3150
	0    1    1    0   
$EndComp
$Comp
L o2_breakout-rescue:Ferrite_Bead-Device FB1
U 1 1 5DC565F5
P 4650 1500
F 0 "FB1" V 4376 1500 50  0000 C CNN
F 1 "Ferrite_Bead" V 4467 1500 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" V 4580 1500 50  0001 C CNN
F 3 "~" H 4650 1500 50  0001 C CNN
	1    4650 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	5900 1950 5900 1850
Wire Wire Line
	5900 1850 6000 1850
Wire Wire Line
	6000 1850 6000 1950
Wire Wire Line
	6000 1850 6150 1850
Connection ~ 6000 1850
$Comp
L power:+3V3 #PWR016
U 1 1 5DC6D671
P 6150 1350
F 0 "#PWR016" H 6150 1200 50  0001 C CNN
F 1 "+3V3" H 6165 1523 50  0000 C CNN
F 2 "" H 6150 1350 50  0001 C CNN
F 3 "" H 6150 1350 50  0001 C CNN
	1    6150 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 1350 6150 1850
Wire Wire Line
	5050 7250 5100 7250
Wire Wire Line
	5050 6950 5100 6950
Wire Wire Line
	5050 6950 5050 6850
$Comp
L power:+3V3 #PWR017
U 1 1 5DC76305
P 5050 6850
F 0 "#PWR017" H 5050 6700 50  0001 C CNN
F 1 "+3V3" H 5065 7023 50  0000 C CNN
F 2 "" H 5050 6850 50  0001 C CNN
F 3 "" H 5050 6850 50  0001 C CNN
	1    5050 6850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5DC765C0
P 5050 7350
F 0 "#PWR018" H 5050 7100 50  0001 C CNN
F 1 "GND" H 5055 7177 50  0000 C CNN
F 2 "" H 5050 7350 50  0001 C CNN
F 3 "" H 5050 7350 50  0001 C CNN
	1    5050 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 7250 5050 7350
$Comp
L Device:C C8
U 1 1 5DC78BCB
P 5100 7100
F 0 "C8" H 5215 7146 50  0000 L CNN
F 1 "0.1uF" H 5215 7055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5138 6950 50  0001 C CNN
F 3 "~" H 5100 7100 50  0001 C CNN
	1    5100 7100
	1    0    0    -1  
$EndComp
Connection ~ 5100 6950
Connection ~ 5100 7250
Wire Wire Line
	5100 6950 5400 6950
Wire Wire Line
	5100 7250 5400 7250
$Comp
L Device:C C9
U 1 1 5DC7ADB3
P 5400 7100
F 0 "C9" H 5515 7146 50  0000 L CNN
F 1 "0.1uF" H 5515 7055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5438 6950 50  0001 C CNN
F 3 "~" H 5400 7100 50  0001 C CNN
	1    5400 7100
	1    0    0    -1  
$EndComp
Connection ~ 5400 6950
Wire Wire Line
	5400 6950 5750 6950
Connection ~ 5400 7250
Wire Wire Line
	5400 7250 5750 7250
$Comp
L Device:C C10
U 1 1 5DC7B0E0
P 5750 7100
F 0 "C10" H 5865 7146 50  0000 L CNN
F 1 "0.1uF" H 5865 7055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5788 6950 50  0001 C CNN
F 3 "~" H 5750 7100 50  0001 C CNN
	1    5750 7100
	1    0    0    -1  
$EndComp
Connection ~ 5750 6950
Wire Wire Line
	5750 6950 6050 6950
Connection ~ 5750 7250
Wire Wire Line
	5750 7250 6050 7250
$Comp
L Device:C C11
U 1 1 5DC7B3BB
P 6050 7100
F 0 "C11" H 6165 7146 50  0000 L CNN
F 1 "0.1uF" H 6165 7055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 6088 6950 50  0001 C CNN
F 3 "~" H 6050 7100 50  0001 C CNN
	1    6050 7100
	1    0    0    -1  
$EndComp
Connection ~ 6050 6950
Wire Wire Line
	6050 6950 6300 6950
Connection ~ 6050 7250
Wire Wire Line
	6050 7250 6300 7250
$Comp
L Device:C C12
U 1 1 5DC7B686
P 6300 7100
F 0 "C12" H 6415 7146 50  0000 L CNN
F 1 "0.1uF" H 6415 7055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 6338 6950 50  0001 C CNN
F 3 "~" H 6300 7100 50  0001 C CNN
	1    6300 7100
	1    0    0    -1  
$EndComp
Connection ~ 6300 6950
Wire Wire Line
	6300 6950 6500 6950
Connection ~ 6300 7250
Wire Wire Line
	6300 7250 6500 7250
$Comp
L Device:C C13
U 1 1 5DC7B966
P 6500 7100
F 0 "C13" H 6615 7146 50  0000 L CNN
F 1 "0.1uF" H 6615 7055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 6538 6950 50  0001 C CNN
F 3 "~" H 6500 7100 50  0001 C CNN
	1    6500 7100
	1    0    0    -1  
$EndComp
Connection ~ 6500 6950
Wire Wire Line
	6500 6950 6550 6950
Connection ~ 6500 7250
Wire Wire Line
	6500 7250 6550 7250
$Comp
L power:+3V3 #PWR0110
U 1 1 5DC7F581
P 9400 1200
F 0 "#PWR0110" H 9400 1050 50  0001 C CNN
F 1 "+3V3" H 9415 1373 50  0000 C CNN
F 2 "" H 9400 1200 50  0001 C CNN
F 3 "" H 9400 1200 50  0001 C CNN
	1    9400 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 1200 9400 1300
$Comp
L power:GND #PWR01
U 1 1 5DCA27BF
P 4350 2550
F 0 "#PWR01" H 4350 2300 50  0001 C CNN
F 1 "GND" H 4355 2377 50  0000 C CNN
F 2 "" H 4350 2550 50  0001 C CNN
F 3 "" H 4350 2550 50  0001 C CNN
	1    4350 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	6700 3850 7100 3850
Wire Wire Line
	6700 3950 7100 3950
Wire Wire Line
	6700 4050 7100 4050
Wire Wire Line
	6700 4150 7100 4150
Text HLabel 7100 3850 2    50   Output ~ 0
TxD_FT
Text HLabel 7100 3950 2    50   Input ~ 0
RxD_FT
Text HLabel 7100 4050 2    50   Output ~ 0
~RTS_FT
Text HLabel 7100 4150 2    50   Input ~ 0
~CTS_FT
Text HLabel 7300 2350 2    50   Output ~ 0
TCK_FT
Wire Wire Line
	7300 2350 7200 2350
NoConn ~ 6700 2750
NoConn ~ 6700 2850
NoConn ~ 6700 2950
NoConn ~ 6700 3050
NoConn ~ 6700 3250
NoConn ~ 6700 3350
NoConn ~ 6700 3450
NoConn ~ 6700 3550
NoConn ~ 6700 3650
NoConn ~ 6700 4250
NoConn ~ 6700 4350
NoConn ~ 6700 4450
NoConn ~ 6700 4550
NoConn ~ 6700 4750
NoConn ~ 6700 4850
NoConn ~ 6700 4950
NoConn ~ 6700 5050
NoConn ~ 6700 5150
Wire Wire Line
	2100 7300 2150 7300
Wire Wire Line
	2100 7000 2150 7000
$Comp
L power:GND #PWR08
U 1 1 5DD050F9
P 2100 7400
F 0 "#PWR08" H 2100 7150 50  0001 C CNN
F 1 "GND" H 2105 7227 50  0000 C CNN
F 2 "" H 2100 7400 50  0001 C CNN
F 3 "" H 2100 7400 50  0001 C CNN
	1    2100 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 7300 2100 7400
$Comp
L Device:C C15
U 1 1 5DD05100
P 2150 7150
F 0 "C15" H 2265 7196 50  0000 L CNN
F 1 "10uF" H 2265 7105 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2188 7000 50  0001 C CNN
F 3 "~" H 2150 7150 50  0001 C CNN
	1    2150 7150
	1    0    0    -1  
$EndComp
Connection ~ 2150 7000
Connection ~ 2150 7300
Wire Wire Line
	2150 7000 2450 7000
Wire Wire Line
	2150 7300 2450 7300
$Comp
L Device:C C16
U 1 1 5DD0510A
P 2450 7150
F 0 "C16" H 2565 7196 50  0000 L CNN
F 1 "0.1uF" H 2565 7105 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2488 7000 50  0001 C CNN
F 3 "~" H 2450 7150 50  0001 C CNN
	1    2450 7150
	1    0    0    -1  
$EndComp
Connection ~ 2450 7000
Wire Wire Line
	2450 7000 2800 7000
Connection ~ 2450 7300
Wire Wire Line
	2450 7300 2800 7300
$Comp
L Device:C C17
U 1 1 5DD05114
P 2800 7150
F 0 "C17" H 2915 7196 50  0000 L CNN
F 1 "0.1uF" H 2915 7105 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2838 7000 50  0001 C CNN
F 3 "~" H 2800 7150 50  0001 C CNN
	1    2800 7150
	1    0    0    -1  
$EndComp
Connection ~ 2800 7000
Wire Wire Line
	2800 7000 3100 7000
Connection ~ 2800 7300
Wire Wire Line
	2800 7300 3100 7300
$Comp
L Device:C C18
U 1 1 5DD0511E
P 3100 7150
F 0 "C18" H 3215 7196 50  0000 L CNN
F 1 "0.1uF" H 3215 7105 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3138 7000 50  0001 C CNN
F 3 "~" H 3100 7150 50  0001 C CNN
	1    3100 7150
	1    0    0    -1  
$EndComp
Connection ~ 3100 7000
Connection ~ 3100 7300
$Comp
L Device:C C20
U 1 1 5DD05132
P 3550 7150
F 0 "C20" H 3665 7196 50  0000 L CNN
F 1 "0.1uF" H 3665 7105 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3588 7000 50  0001 C CNN
F 3 "~" H 3550 7150 50  0001 C CNN
	1    3550 7150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 5DD0D268
P 2100 6800
F 0 "#PWR02" H 2100 6650 50  0001 C CNN
F 1 "+5V" H 2115 6973 50  0000 C CNN
F 2 "" H 2100 6800 50  0001 C CNN
F 3 "" H 2100 6800 50  0001 C CNN
	1    2100 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 6800 2100 7000
$Comp
L power:GND #PWR0112
U 1 1 5DDF2AA2
P 2450 3900
F 0 "#PWR0112" H 2450 3650 50  0001 C CNN
F 1 "GND" H 2455 3727 50  0000 C CNN
F 2 "" H 2450 3900 50  0001 C CNN
F 3 "" H 2450 3900 50  0001 C CNN
	1    2450 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 3500 3550 3550
$Comp
L Device:C C22
U 1 1 5DECDE29
P 2950 3650
F 0 "C22" H 3065 3696 50  0000 L CNN
F 1 "0.01uF" H 3065 3605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2988 3500 50  0001 C CNN
F 3 "~" H 2950 3650 50  0001 C CNN
	1    2950 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 5DC9F82A
P 4500 2550
F 0 "C14" H 4615 2596 50  0000 L CNN
F 1 "0.1uF" H 4615 2505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4538 2400 50  0001 C CNN
F 3 "~" H 4500 2550 50  0001 C CNN
	1    4500 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 2550 4900 2550
Text Label 4650 2550 0    50   ~ 0
3V3Out
Wire Wire Line
	8700 1700 8900 1700
Wire Wire Line
	8900 1700 8900 1750
$Comp
L Device:C C27
U 1 1 5E438408
P 8900 1900
F 0 "C27" H 9015 1946 50  0000 L CNN
F 1 "0.01uF" H 9015 1855 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8938 1750 50  0001 C CNN
F 3 "~" H 8900 1900 50  0001 C CNN
	1    8900 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 2050 8900 2050
Connection ~ 8300 2050
Text Label 3900 1500 0    50   ~ 0
VBus
$Comp
L Device:Polyfuse F?
U 1 1 5F0067B9
P 4250 1500
AR Path="/5DD58257/5F0067B9" Ref="F?"  Part="1" 
AR Path="/5E6A6650/5F0067B9" Ref="F2"  Part="1" 
F 0 "F2" V 4025 1500 50  0000 C CNN
F 1 "Polyfuse" V 4116 1500 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 4300 1300 50  0001 L CNN
F 3 "~" H 4250 1500 50  0001 C CNN
	1    4250 1500
	0    1    1    0   
$EndComp
Connection ~ 5400 1500
Wire Wire Line
	4800 1500 5400 1500
Wire Wire Line
	4400 1500 4500 1500
Wire Wire Line
	4450 3200 4450 3150
Wire Wire Line
	4450 3550 4900 3550
Text Label 4650 3550 0    50   ~ 0
RSTOUT
Text Label 4550 2950 0    50   ~ 0
USBDM
Text Label 4550 3150 0    50   ~ 0
USBDP
Text Label 4700 3750 0    50   ~ 0
~RESET
Text Label 4800 4250 0    50   ~ 0
XIN
Wire Notes Line
	4650 5050 4600 5050
Text Label 4600 4750 0    50   ~ 0
EECS
Text Label 4600 4850 0    50   ~ 0
EECLK
Text Label 4550 4950 0    50   ~ 0
EEDATA
Text Label 3900 1700 0    50   ~ 0
D+
Text Label 3900 1800 0    50   ~ 0
D-
$Comp
L Device:C C33
U 1 1 5F5C3884
P 9400 1900
F 0 "C33" H 9515 1946 50  0000 L CNN
F 1 "1uF" H 9515 1855 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9438 1750 50  0001 C CNN
F 3 "~" H 9400 1900 50  0001 C CNN
	1    9400 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 2050 9400 2050
Connection ~ 8900 2050
Wire Wire Line
	9400 1500 9400 1750
Connection ~ 9400 1500
Wire Wire Line
	8700 1500 9400 1500
$Comp
L CPU2908CLocal:LED D2
U 1 1 5F5D9B28
P 9800 1500
F 0 "D2" V 9839 1383 50  0000 R CNN
F 1 "LED" V 9748 1383 50  0000 R CNN
F 2 "Capacitors_SMD:C_0603" H 9800 1500 50  0001 C CNN
F 3 "~" H 9800 1500 50  0001 C CNN
	1    9800 1500
	0    -1   -1   0   
$EndComp
$Comp
L CPU2908CLocal:R R16
U 1 1 5F5DBCC6
P 9800 1850
F 0 "R16" H 9870 1896 50  0000 L CNN
F 1 "47K" H 9870 1805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" V 9730 1850 50  0001 C CNN
F 3 "~" H 9800 1850 50  0001 C CNN
	1    9800 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 1650 9800 1700
Wire Wire Line
	9800 1350 9800 1300
Wire Wire Line
	9800 1300 9400 1300
Connection ~ 9400 1300
Wire Wire Line
	9400 1300 9400 1500
Wire Wire Line
	9800 2000 9800 2050
Wire Wire Line
	9800 2050 9400 2050
Connection ~ 9400 2050
Text HLabel 7300 2650 2    50   Output ~ 0
TMS_FT
Text HLabel 7300 2550 2    50   Input ~ 0
TDO_FT
Text HLabel 7300 2450 2    50   Output ~ 0
TDI_FT
$Comp
L power:+3V3 #PWR028
U 1 1 5F7B05F7
P 7150 1800
F 0 "#PWR028" H 7150 1650 50  0001 C CNN
F 1 "+3V3" H 7165 1973 50  0000 C CNN
F 2 "" H 7150 1800 50  0001 C CNN
F 3 "" H 7150 1800 50  0001 C CNN
	1    7150 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1700 7700 1500
Connection ~ 7700 1500
Wire Wire Line
	7700 1500 7900 1500
Wire Wire Line
	5700 1500 7700 1500
$Comp
L power:GND #PWR030
U 1 1 5F7B804F
P 7200 3050
F 0 "#PWR030" H 7200 2800 50  0001 C CNN
F 1 "GND" H 7205 2877 50  0000 C CNN
F 2 "" H 7200 3050 50  0001 C CNN
F 3 "" H 7200 3050 50  0001 C CNN
	1    7200 3050
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:R R23
U 1 1 5F7B8905
P 7050 2050
F 0 "R23" H 7120 2096 50  0000 L CNN
F 1 "10K" H 7120 2005 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" V 6980 2050 50  0001 C CNN
F 3 "~" H 7050 2050 50  0001 C CNN
	1    7050 2050
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:R R22
U 1 1 5F7B94BC
P 6900 2050
F 0 "R22" H 6970 2096 50  0000 L CNN
F 1 "10K" H 6970 2005 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" V 6830 2050 50  0001 C CNN
F 3 "~" H 6900 2050 50  0001 C CNN
	1    6900 2050
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:R R21
U 1 1 5F7B96A2
P 6750 2050
F 0 "R21" H 6820 2096 50  0000 L CNN
F 1 "10K" H 6820 2005 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" V 6680 2050 50  0001 C CNN
F 3 "~" H 6750 2050 50  0001 C CNN
	1    6750 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 1900 6750 1800
Wire Wire Line
	6750 1800 6900 1800
Wire Wire Line
	7050 1900 7050 1800
Connection ~ 7050 1800
Wire Wire Line
	7050 1800 7150 1800
Wire Wire Line
	6900 1900 6900 1800
Connection ~ 6900 1800
Wire Wire Line
	6900 1800 7050 1800
$Comp
L CPU2908CLocal:R R24
U 1 1 5F7CD8BC
P 7200 2900
F 0 "R24" H 7270 2946 50  0000 L CNN
F 1 "10K" H 7270 2855 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" V 7130 2900 50  0001 C CNN
F 3 "~" H 7200 2900 50  0001 C CNN
	1    7200 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 2750 7200 2350
Connection ~ 7200 2350
Wire Wire Line
	7200 2350 6700 2350
Wire Wire Line
	7050 2200 7050 2450
Wire Wire Line
	6700 2450 7050 2450
Connection ~ 7050 2450
Wire Wire Line
	7050 2450 7300 2450
Wire Wire Line
	6900 2200 6900 2550
Wire Wire Line
	6700 2550 6900 2550
Connection ~ 6900 2550
Wire Wire Line
	6900 2550 7300 2550
Wire Wire Line
	6750 2200 6750 2650
Wire Wire Line
	6700 2650 6750 2650
Connection ~ 6750 2650
Wire Wire Line
	6750 2650 7300 2650
$Comp
L Device:C C36
U 1 1 5E536863
P 4750 7100
F 0 "C36" H 4865 7146 50  0000 L CNN
F 1 "10uF" H 4865 7055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4788 6950 50  0001 C CNN
F 3 "~" H 4750 7100 50  0001 C CNN
	1    4750 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 6950 5050 6950
Wire Wire Line
	4750 7250 5050 7250
Wire Wire Line
	4450 4250 3950 4250
Connection ~ 3950 4250
Wire Wire Line
	3950 4150 3950 4250
$Comp
L power:+5V #PWR0105
U 1 1 5DC87309
P 3950 4150
F 0 "#PWR0105" H 3950 4000 50  0001 C CNN
F 1 "+5V" H 3965 4323 50  0000 C CNN
F 2 "" H 3950 4150 50  0001 C CNN
F 3 "" H 3950 4150 50  0001 C CNN
	1    3950 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 3500 3150 3500
Connection ~ 3150 3500
Wire Wire Line
	2950 3800 2950 4150
Wire Wire Line
	2950 4150 3550 4150
Connection ~ 3550 4150
Wire Wire Line
	3950 5250 3950 5350
Wire Wire Line
	3950 4250 3950 4650
Wire Wire Line
	3400 2200 3400 2300
Wire Wire Line
	3400 2300 3300 2300
Wire Wire Line
	3300 2300 3300 2200
Connection ~ 3400 2300
Wire Wire Line
	3400 2300 3400 2450
Wire Wire Line
	3900 1800 4100 1800
Wire Wire Line
	3900 1700 4050 1700
Wire Wire Line
	3900 1500 4100 1500
$Comp
L Device:C C32
U 1 1 5F5AF340
P 2450 3650
F 0 "C32" H 2565 3696 50  0000 L CNN
F 1 "10uF" H 2565 3605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2488 3500 50  0001 C CNN
F 3 "~" H 2450 3650 50  0001 C CNN
	1    2450 3650
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0111
U 1 1 5E094554
P 2450 3400
F 0 "#PWR0111" H 2450 3250 50  0001 C CNN
F 1 "+3V3" H 2465 3573 50  0000 C CNN
F 2 "" H 2450 3400 50  0001 C CNN
F 3 "" H 2450 3400 50  0001 C CNN
	1    2450 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3400 2450 3500
Wire Wire Line
	2450 3800 2450 3900
Wire Wire Line
	2450 3400 2950 3400
Connection ~ 2450 3400
Connection ~ 2950 3500
Wire Wire Line
	2950 3400 2950 3500
Wire Wire Line
	3100 7000 3550 7000
Wire Wire Line
	3100 7300 3550 7300
$Comp
L Device:C C19
U 1 1 5E0034FB
P 4300 7100
F 0 "C19" H 4415 7146 50  0000 L CNN
F 1 "47uF" H 4415 7055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4338 6950 50  0001 C CNN
F 3 "~" H 4300 7100 50  0001 C CNN
	1    4300 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 6950 4750 6950
Connection ~ 4750 6950
Connection ~ 4750 7250
Wire Wire Line
	4300 7250 4750 7250
$Comp
L Mechanical:MountingHole H6
U 1 1 5E38DFA4
P 850 7300
F 0 "H6" H 950 7346 50  0001 L CNN
F 1 "MountingHole" H 950 7255 50  0001 L CNN
F 2 "digikey-footprints:MountingHole_1.2mm" H 850 7300 50  0001 C CNN
F 3 "~" H 850 7300 50  0001 C CNN
	1    850  7300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H7
U 1 1 5E38E870
P 850 7550
F 0 "H7" H 950 7596 50  0001 L CNN
F 1 "MountingHole" H 950 7505 50  0001 L CNN
F 2 "digikey-footprints:MountingHole_1.2mm" H 850 7550 50  0001 C CNN
F 3 "~" H 850 7550 50  0001 C CNN
	1    850  7550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
