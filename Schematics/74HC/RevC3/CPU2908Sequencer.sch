EESchema Schematic File Version 4
LIBS:CPU2908C3-cache
EELAYER 29 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 2 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 850  2800 0    50   Input ~ 0
Q
Wire Wire Line
	850  2800 1200 2800
Text HLabel 15250 1600 2    50   Output ~ 0
RegCtrl[0..23]
Text HLabel 13550 6900 2    50   Output ~ 0
ExBusCtrl[0..3]
Text HLabel 10900 9100 2    50   Output ~ 0
DataOut_S[0..7]
Wire Bus Line
	13550 6900 13450 6900
Text HLabel 850  2700 0    50   Input ~ 0
nE
Text HLabel 850  2900 0    50   Input ~ 0
nQ
Wire Wire Line
	850  2700 1200 2700
Wire Wire Line
	850  2900 1200 2900
Text HLabel 850  3000 0    50   Input ~ 0
nReset
$Comp
L CPU2908CLocal:74HC21 U14
U 2 1 5FB47122
P 3250 9050
F 0 "U14" H 3250 9475 50  0000 C CNN
F 1 "74HC21" H 3250 9384 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 3050 9050 50  0001 C CNN
F 3 "" H 3050 9050 50  0000 C CNN
	2    3250 9050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 8250 2150 8250
Wire Wire Line
	2700 1600 3300 1600
Wire Wire Line
	2700 2000 3300 2000
Wire Wire Line
	2700 2200 3300 2200
Wire Wire Line
	2700 1800 3300 1800
Wire Wire Line
	1700 8150 2100 8150
Text HLabel 1100 6000 0    50   Input ~ 0
FlagIn[0..7]
Wire Wire Line
	2600 6650 2400 6650
Wire Wire Line
	2400 6650 2400 6850
Wire Wire Line
	2400 6850 2600 6850
Wire Wire Line
	2400 6850 2400 6950
Connection ~ 2400 6850
Wire Wire Line
	2600 6950 2400 6950
Wire Wire Line
	2600 7050 2400 7050
Wire Wire Line
	2600 7150 2400 7150
Wire Wire Line
	2600 7250 2400 7250
Wire Wire Line
	2400 6950 2400 7050
Connection ~ 2400 6950
Connection ~ 2400 7050
Wire Wire Line
	2400 7050 2400 7150
Connection ~ 2400 7150
Wire Wire Line
	2400 7150 2400 7250
Wire Wire Line
	2600 7450 2100 7450
Wire Wire Line
	1700 8050 2500 8050
Wire Wire Line
	2150 7550 2600 7550
Text Label 2000 6250 0    50   ~ 0
FlagIn0
Text Label 2000 6350 0    50   ~ 0
FlagIn3
Text Label 2000 6450 0    50   ~ 0
FlagIn6
Text Label 2000 6550 0    50   ~ 0
FlagIn7
Entry Wire Line
	1800 6150 1900 6250
Entry Wire Line
	1800 6250 1900 6350
Entry Wire Line
	1800 6350 1900 6450
Entry Wire Line
	1800 6450 1900 6550
$Comp
L CPU2908CLocal:74HC08 U13
U 3 1 5FBC01AB
P 5150 6900
F 0 "U13" H 5150 7225 50  0000 C CNN
F 1 "74HC08D" H 5150 7134 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 4950 6900 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT08.pdf" H 4950 6900 50  0001 C CNN
	3    5150 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 7250 2400 7300
Connection ~ 2400 7250
$Comp
L power:GND #PWR016
U 1 1 5FBC89AE
P 2400 7300
F 0 "#PWR016" H 2400 7050 50  0001 C CNN
F 1 "GND" H 2405 7127 50  0000 C CNN
F 2 "" H 2400 7300 50  0001 C CNN
F 3 "" H 2400 7300 50  0001 C CNN
	1    2400 7300
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC04 U12
U 4 1 5FBCF3E5
P 9600 10050
F 0 "U12" H 9300 10100 50  0000 C CNN
F 1 "TC74VHCT04AFT" H 9950 10150 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 9500 10050 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/toshiba/TC74VHCT04AFT.pdf" H 9500 10050 50  0001 C CNN
	4    9600 10050
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC04 U12
U 6 1 5FBD08C7
P 9600 10300
F 0 "U12" H 9300 10350 50  0000 C CNN
F 1 "TC74VHCT04AFT" H 9950 10350 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 9500 10300 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/toshiba/TC74VHCT04AFT.pdf" H 9500 10300 50  0001 C CNN
	6    9600 10300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 8250 3000 8200
Wire Wire Line
	3700 8050 3700 8100
Wire Wire Line
	3700 8100 3850 8100
Wire Wire Line
	3700 8350 3700 8300
Wire Wire Line
	3700 8300 3850 8300
Entry Wire Line
	1600 7950 1700 8050
Entry Wire Line
	1600 8050 1700 8150
Entry Wire Line
	1600 8150 1700 8250
Entry Wire Line
	1600 8250 1700 8350
Entry Wire Line
	1600 8750 1700 8850
Entry Wire Line
	1600 8850 1700 8950
Entry Wire Line
	1600 9050 1700 9150
Entry Wire Line
	1600 9150 1700 9250
Wire Bus Line
	1100 6000 1800 6000
Text Label 2450 6250 0    50   ~ 0
CY
Text Label 2550 6350 2    50   ~ 0
OV
Text Label 2450 6450 0    50   ~ 0
ZF
Text Label 2450 6550 0    50   ~ 0
SF
Wire Wire Line
	2100 7450 2100 8150
Wire Wire Line
	2150 7550 2150 8250
$Sheet
S 8450 1350 1300 900 
U 5FC8D90E
F0 "BROM" 50
F1 "BROM.sch" 50
F2 "load" I L 8450 1900 50 
F3 "update" I L 8450 2100 50 
F4 "OpeCode[0..7]" I L 8450 1650 50 
F5 "D[0..31]" O R 9750 1650 50 
$EndSheet
Wire Wire Line
	3300 2600 3200 2600
Wire Wire Line
	3200 2600 3200 2700
$Comp
L power:GND #PWR018
U 1 1 5FC94DF7
P 3200 2700
F 0 "#PWR018" H 3200 2450 50  0001 C CNN
F 1 "GND" H 3205 2527 50  0000 C CNN
F 2 "" H 3200 2700 50  0001 C CNN
F 3 "" H 3200 2700 50  0001 C CNN
	1    3200 2700
	1    0    0    -1  
$EndComp
Text HLabel 8750 2700 2    50   Output ~ 0
~resetOut
Wire Wire Line
	850  3000 1200 3000
Text Label 14400 1600 0    50   ~ 0
RegCtrl[0..23]
Entry Wire Line
	13350 6450 13450 6550
Entry Wire Line
	13350 6550 13450 6650
Entry Wire Line
	13350 6650 13450 6750
Entry Wire Line
	13350 6750 13450 6850
Text Label 12900 6450 0    50   ~ 0
ExBusCtrl0
Text Label 12900 6550 0    50   ~ 0
ExBusCtrl1
Text Label 12900 6650 0    50   ~ 0
ExBusCtrl2
Text Label 12900 6750 0    50   ~ 0
ExBusCtrl3
Entry Wire Line
	13250 1750 13350 1850
Entry Wire Line
	13250 1850 13350 1950
Entry Wire Line
	13250 1950 13350 2050
Entry Wire Line
	13250 2050 13350 2150
Entry Wire Line
	13250 2150 13350 2250
Entry Wire Line
	13250 2250 13350 2350
Entry Wire Line
	13250 2350 13350 2450
Entry Wire Line
	13250 3250 13350 3350
Entry Wire Line
	13250 3350 13350 3450
Entry Wire Line
	13250 3450 13350 3550
Entry Wire Line
	13250 3550 13350 3650
Entry Wire Line
	13250 3650 13350 3750
Entry Wire Line
	13250 3750 13350 3850
Entry Wire Line
	13250 3850 13350 3950
Entry Wire Line
	13250 4750 13350 4850
Entry Wire Line
	13250 4850 13350 4950
Entry Wire Line
	13250 4950 13350 5050
Entry Wire Line
	13250 5050 13350 5150
Entry Wire Line
	13250 5150 13350 5250
Entry Wire Line
	13250 5250 13350 5350
Entry Wire Line
	13250 5350 13350 5450
Text Label 10950 1650 0    50   ~ 0
D[0..31]
Text Label 12800 1750 0    50   ~ 0
RegCtrl0
Text Label 12800 1850 0    50   ~ 0
RegCtrl1
Text Label 12800 1950 0    50   ~ 0
RegCtrl2
Text Label 12800 2050 0    50   ~ 0
RegCtrl3
Text Label 12800 2150 0    50   ~ 0
RegCtrl4
Text Label 12800 2250 0    50   ~ 0
RegCtrl5
Text Label 12800 2350 0    50   ~ 0
RegCtrl6
Text Label 12800 2450 0    50   ~ 0
RegCtrl7
Text Label 12800 3250 0    50   ~ 0
RegCtrl8
Text Label 12800 3350 0    50   ~ 0
RegCtrl9
Text Label 12800 3450 0    50   ~ 0
RegCtrl10
Text Label 12800 3550 0    50   ~ 0
RegCtrl11
Text Label 12800 3650 0    50   ~ 0
RegCtrl12
Text Label 12800 3750 0    50   ~ 0
RegCtrl13
Text Label 12800 3850 0    50   ~ 0
RegCtrl14
Text Label 12800 3950 0    50   ~ 0
RegCtrl15
Text Label 12800 4750 0    50   ~ 0
RegCtrl16
Text Label 12800 4850 0    50   ~ 0
RegCtrl17
Text Label 12800 4950 0    50   ~ 0
RegCtrl18
Text Label 12800 5050 0    50   ~ 0
RegCtrl19
Text Label 12800 5150 0    50   ~ 0
RegCtrl20
Text Label 12800 5250 0    50   ~ 0
RegCtrl21
Text Label 12800 5350 0    50   ~ 0
RegCtrl22
Wire Bus Line
	13350 1600 13600 1600
Entry Wire Line
	11450 1650 11550 1750
Entry Wire Line
	11450 1750 11550 1850
Entry Wire Line
	11450 1850 11550 1950
Entry Wire Line
	11450 1950 11550 2050
Entry Wire Line
	11450 2050 11550 2150
Entry Wire Line
	11450 2150 11550 2250
Entry Wire Line
	11450 2250 11550 2350
Entry Wire Line
	11450 2350 11550 2450
Entry Wire Line
	11450 3250 11550 3350
Wire Wire Line
	11550 1750 11900 1750
Wire Wire Line
	11550 1850 11900 1850
Wire Wire Line
	11550 1950 11900 1950
Wire Wire Line
	11550 2050 11900 2050
Wire Wire Line
	11550 2150 11900 2150
Wire Wire Line
	11550 2250 11900 2250
Wire Wire Line
	11550 2350 11900 2350
Wire Wire Line
	11550 2450 11900 2450
Wire Wire Line
	11550 3350 11900 3350
Text Label 11600 1750 0    50   ~ 0
D0
Text Label 11600 1850 0    50   ~ 0
D1
Text Label 11600 1950 0    50   ~ 0
D2
Text Label 11600 2050 0    50   ~ 0
D3
Text Label 11600 2150 0    50   ~ 0
D4
Text Label 11600 2250 0    50   ~ 0
D5
Text Label 11600 2350 0    50   ~ 0
D6
Text Label 11600 2450 0    50   ~ 0
D7
Text Label 11600 3350 0    50   ~ 0
D9
Text Label 11600 4950 0    50   ~ 0
D18
Text Label 11600 5050 0    50   ~ 0
D19
Text Label 11600 5150 0    50   ~ 0
D20
Text Label 11600 5250 0    50   ~ 0
D21
Wire Wire Line
	11900 3250 11550 3250
Entry Wire Line
	11450 3150 11550 3250
Text Label 11600 3250 0    50   ~ 0
D8
Text Label 11600 4750 0    50   ~ 0
D16
Text Label 11600 3950 0    50   ~ 0
D15
Text Label 11600 3850 0    50   ~ 0
D14
Text Label 11600 3750 0    50   ~ 0
D13
Text Label 11600 3550 0    50   ~ 0
D11
Text Label 11600 3450 0    50   ~ 0
D10
Wire Wire Line
	11550 3950 11900 3950
Wire Wire Line
	11550 3850 11900 3850
Wire Wire Line
	11550 3750 11900 3750
Wire Wire Line
	11550 3550 11900 3550
Wire Wire Line
	11550 3450 11900 3450
Entry Wire Line
	11450 3850 11550 3950
Entry Wire Line
	11450 3750 11550 3850
Entry Wire Line
	11450 3650 11550 3750
Entry Wire Line
	11450 3450 11550 3550
Entry Wire Line
	11450 3350 11550 3450
Wire Wire Line
	11900 3650 11550 3650
Wire Wire Line
	11550 3650 11550 3600
Wire Wire Line
	11550 3600 11250 3600
Wire Wire Line
	11550 4850 11550 4800
Wire Wire Line
	11550 4800 11250 4800
Text Label 10850 1750 3    50   ~ 0
D12
Text Label 11100 1750 3    50   ~ 0
D17
Entry Wire Line
	10750 1650 10850 1750
Entry Wire Line
	11000 1650 11100 1750
Entry Wire Line
	10500 1650 10600 1750
Text Label 10600 1750 3    50   ~ 0
D23
Entry Wire Line
	13250 3950 13350 4050
Entry Wire Line
	13250 2450 13350 2550
Wire Wire Line
	12700 1750 13250 1750
Wire Wire Line
	12700 1850 13250 1850
Wire Wire Line
	12700 1950 13250 1950
Wire Wire Line
	12700 2050 13250 2050
Wire Wire Line
	12700 2150 13250 2150
Wire Wire Line
	12700 2250 13250 2250
Wire Wire Line
	12700 2350 13250 2350
Wire Wire Line
	12700 2450 13250 2450
Wire Wire Line
	12700 3250 13250 3250
Wire Wire Line
	12700 3350 13250 3350
Wire Wire Line
	12700 3450 13250 3450
Wire Wire Line
	12700 3550 13250 3550
Wire Wire Line
	12700 3650 13250 3650
Wire Wire Line
	12700 3750 13250 3750
Wire Wire Line
	12700 3850 13250 3850
Wire Wire Line
	12700 3950 13250 3950
$Comp
L CPU2908CLocal:74HC04 U19
U 2 1 60543544
P 4350 8650
F 0 "U19" H 4350 8511 50  0000 C CNN
F 1 "TC74VHCT04AFT" H 4350 8420 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 4250 8650 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/toshiba/TC74VHCT04AFT.pdf" H 4250 8650 50  0001 C CNN
	2    4350 8650
	1    0    0    -1  
$EndComp
Text Label 3600 9550 2    50   ~ 0
JL
NoConn ~ 3400 7050
Wire Wire Line
	2500 8050 2500 7650
Wire Wire Line
	2500 7650 3450 7650
Wire Wire Line
	3450 7650 3450 7450
Wire Wire Line
	4450 8200 4600 8200
Wire Wire Line
	4600 8200 4600 7300
Wire Wire Line
	4700 7000 4700 7400
Wire Wire Line
	4700 7000 4850 7000
Wire Wire Line
	4800 7550 5600 7550
Wire Wire Line
	3550 9050 4800 9050
Wire Wire Line
	3700 8350 3700 8650
Connection ~ 3700 8350
Wire Wire Line
	1700 8350 3700 8350
Text Label 2950 1600 0    50   ~ 0
DataIn0
Text Label 2950 1800 0    50   ~ 0
DataIn1
Text Label 2950 2000 0    50   ~ 0
DataIn2
Text Label 2950 2200 0    50   ~ 0
DataIn3
Wire Wire Line
	1900 6250 2600 6250
Wire Wire Line
	1900 6350 2600 6350
Wire Wire Line
	1900 6450 2600 6450
Wire Wire Line
	1900 6550 2600 6550
Wire Wire Line
	4700 8650 4700 7400
Connection ~ 4700 7400
Wire Wire Line
	2600 8050 2600 8150
$Comp
L CPU2908CLocal:74HC32 U24
U 1 1 611E5665
P 2650 3700
F 0 "U24" H 2650 4025 50  0000 C CNN
F 1 "74HC32" H 2650 3934 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 2650 3700 50  0001 C CNN
F 3 "" H 2650 3700 50  0000 C CNN
	1    2650 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 6900 5550 6900
Wire Wire Line
	6200 7450 6550 7450
Text Label 6550 7450 2    50   ~ 0
JUMP_OP
Wire Wire Line
	4900 7650 4900 8850
Wire Wire Line
	4900 8850 5650 8850
Wire Wire Line
	6250 8750 6350 8750
Wire Wire Line
	6250 9250 6350 9250
Wire Wire Line
	6350 9250 6350 8950
Text Label 8050 8950 2    50   ~ 0
DO_JUMP
Wire Wire Line
	4600 8200 5000 8200
Wire Wire Line
	5500 8650 5650 8650
Connection ~ 4600 8200
Wire Wire Line
	5500 8650 5500 9150
Wire Wire Line
	5500 9150 5650 9150
Connection ~ 5500 8650
Wire Wire Line
	5650 9250 5350 9250
Wire Wire Line
	5650 8750 5300 8750
Text Label 5350 9250 0    50   ~ 0
JG
Text Label 5300 8750 0    50   ~ 0
JL
Wire Wire Line
	7750 8950 8050 8950
Wire Wire Line
	5550 6900 5550 8350
Text Label 2950 2500 0    50   ~ 0
JUMP_OP
$Comp
L CPU2908CLocal:74HCT273 U32
U 1 1 613CDBC9
P 12300 2250
F 0 "U32" H 12300 2975 50  0000 C CNN
F 1 "74HCT273D" H 12300 2884 50  0000 C CNN
F 2 "digikey-footprints:SOIC-20_W7.5mm" H 12300 2250 50  0001 C CNN
F 3 "" H 12300 2250 50  0000 C CNN
	1    12300 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	11900 4250 11350 4250
Wire Wire Line
	11350 4250 11350 2750
Wire Wire Line
	11350 2750 11900 2750
Connection ~ 11350 4250
Text Label 11050 7250 0    50   ~ 0
nReset
Wire Wire Line
	11900 2650 11300 2650
Wire Wire Line
	11300 2650 11300 4150
Wire Wire Line
	11300 4150 11900 4150
Connection ~ 11300 4150
Text Label 11050 7150 0    50   ~ 0
nE
Wire Wire Line
	14100 1900 13700 1900
Wire Wire Line
	14800 1900 14900 1900
Wire Wire Line
	14100 2000 13700 2000
Wire Wire Line
	14800 2000 14900 2000
Wire Wire Line
	14100 2100 13700 2100
Wire Wire Line
	14800 2100 14900 2100
Wire Wire Line
	14100 2200 13700 2200
Wire Wire Line
	14800 2200 14900 2200
Wire Wire Line
	14100 2400 13700 2400
Wire Wire Line
	14800 2400 14900 2400
Wire Wire Line
	14100 2500 13700 2500
Wire Wire Line
	14800 2500 14900 2500
Wire Wire Line
	14100 2600 13700 2600
Wire Wire Line
	14800 2600 14900 2600
Wire Wire Line
	14100 2700 13700 2700
Wire Wire Line
	14800 2700 14900 2700
Wire Wire Line
	14100 2900 13700 2900
Wire Wire Line
	14800 2900 14900 2900
Wire Wire Line
	14100 3000 13700 3000
Wire Wire Line
	14800 3000 14900 3000
Wire Wire Line
	14100 3100 13700 3100
Wire Wire Line
	14800 3100 14900 3100
Wire Wire Line
	14100 3200 13700 3200
Wire Wire Line
	14800 3200 14900 3200
Wire Wire Line
	14100 3400 13700 3400
Wire Wire Line
	14800 3400 14900 3400
Wire Wire Line
	14100 3500 13700 3500
Wire Wire Line
	14800 3500 14900 3500
Wire Wire Line
	14100 3600 13700 3600
Wire Wire Line
	14800 3600 14900 3600
Wire Wire Line
	14100 3700 13700 3700
Wire Wire Line
	14800 3700 14900 3700
Wire Wire Line
	14100 3900 13700 3900
Wire Wire Line
	14800 3900 14900 3900
Wire Wire Line
	14100 4000 13700 4000
Wire Wire Line
	14800 4000 14900 4000
Wire Wire Line
	14100 4100 13700 4100
Wire Wire Line
	14800 4100 14900 4100
Wire Wire Line
	14100 4200 13700 4200
Wire Wire Line
	14800 4200 14900 4200
Wire Wire Line
	14100 4400 13700 4400
Wire Wire Line
	14800 4400 14900 4400
Wire Wire Line
	14100 4500 13700 4500
Wire Wire Line
	14800 4500 14900 4500
Wire Wire Line
	14100 4600 13700 4600
Wire Wire Line
	14800 4600 14900 4600
Wire Wire Line
	14100 5000 13700 5000
Wire Wire Line
	14800 5000 14900 5000
Wire Wire Line
	14100 5100 13700 5100
Wire Wire Line
	14800 5100 14900 5100
Wire Wire Line
	14100 5200 13700 5200
Wire Wire Line
	14800 5200 14900 5200
Wire Wire Line
	14100 5300 13700 5300
Wire Wire Line
	14800 5300 14900 5300
Entry Wire Line
	13600 1800 13700 1900
Entry Wire Line
	13600 1900 13700 2000
Entry Wire Line
	13600 2000 13700 2100
Entry Wire Line
	13600 2100 13700 2200
Entry Wire Line
	13600 2300 13700 2400
Entry Wire Line
	13600 2400 13700 2500
Entry Wire Line
	13600 2500 13700 2600
Entry Wire Line
	13600 2600 13700 2700
Entry Wire Line
	13600 2800 13700 2900
Entry Wire Line
	13600 2900 13700 3000
Entry Wire Line
	13600 3000 13700 3100
Entry Wire Line
	13600 3100 13700 3200
Entry Wire Line
	13600 3300 13700 3400
Entry Wire Line
	13600 3400 13700 3500
Entry Wire Line
	13600 3500 13700 3600
Entry Wire Line
	13600 3600 13700 3700
Entry Wire Line
	13600 3800 13700 3900
Entry Wire Line
	13600 3900 13700 4000
Entry Wire Line
	13600 4000 13700 4100
Entry Wire Line
	13600 4100 13700 4200
Entry Wire Line
	13600 4300 13700 4400
Entry Wire Line
	13600 4400 13700 4500
Entry Wire Line
	13600 4500 13700 4600
Entry Wire Line
	13600 4900 13700 5000
Entry Wire Line
	13600 5000 13700 5100
Entry Wire Line
	13600 5100 13700 5200
Entry Wire Line
	13600 5200 13700 5300
Wire Bus Line
	13450 5750 13600 5750
Connection ~ 13600 1600
Wire Bus Line
	13600 1600 15250 1600
Text Label 13700 1900 0    50   ~ 0
RegLED0
Text Label 13700 2000 0    50   ~ 0
RegLED1
Text Label 13700 2100 0    50   ~ 0
RegLED2
Text Label 13700 2200 0    50   ~ 0
RegLED3
Text Label 13750 2400 0    50   ~ 0
RegLED4
Text Label 13750 2500 0    50   ~ 0
RegLED5
Text Label 13750 2600 0    50   ~ 0
RegLED6
Text Label 13750 2700 0    50   ~ 0
RegLED7
Text Label 13750 2900 0    50   ~ 0
RegLED8
Text Label 13750 3000 0    50   ~ 0
RegLED9
Text Label 13750 3100 0    50   ~ 0
RegLED10
Text Label 13750 3200 0    50   ~ 0
RegLED11
Text Label 13750 3400 0    50   ~ 0
RegLED12
Text Label 13750 3500 0    50   ~ 0
RegLED13
Text Label 13750 3600 0    50   ~ 0
RegLED14
Text Label 13750 3700 0    50   ~ 0
RegLED15
Text Label 13750 3900 0    50   ~ 0
RegLED16
Text Label 13750 4000 0    50   ~ 0
RegLED17
Text Label 13750 4100 0    50   ~ 0
RegLED18
Text Label 13750 4200 0    50   ~ 0
RegLED19
Text Label 13750 4400 0    50   ~ 0
RegLED20
Text Label 13750 4500 0    50   ~ 0
RegLED21
Text Label 13750 4600 0    50   ~ 0
RegLED22
Text Label 13600 2850 1    50   ~ 0
RegLED[0..23]
Wire Wire Line
	14900 1900 14900 2000
Connection ~ 14900 2000
Wire Wire Line
	14900 2000 14900 2100
Connection ~ 14900 2100
Wire Wire Line
	14900 2100 14900 2200
Connection ~ 14900 2200
Wire Wire Line
	14900 2200 14900 2400
Connection ~ 14900 2400
Wire Wire Line
	14900 2400 14900 2500
Connection ~ 14900 2500
Wire Wire Line
	14900 2500 14900 2600
Connection ~ 14900 2600
Wire Wire Line
	14900 2600 14900 2700
Connection ~ 14900 2700
Wire Wire Line
	14900 2700 14900 2900
Connection ~ 14900 2900
Wire Wire Line
	14900 2900 14900 3000
Connection ~ 14900 3000
Wire Wire Line
	14900 3000 14900 3100
Connection ~ 14900 3100
Wire Wire Line
	14900 3100 14900 3200
Connection ~ 14900 3200
Wire Wire Line
	14900 3200 14900 3400
Connection ~ 14900 3400
Wire Wire Line
	14900 3400 14900 3500
Connection ~ 14900 3500
Wire Wire Line
	14900 3500 14900 3600
Connection ~ 14900 3600
Wire Wire Line
	14900 3600 14900 3700
Connection ~ 14900 3700
Connection ~ 14900 5000
Wire Wire Line
	14900 5000 14900 5100
Connection ~ 14900 5100
Wire Wire Line
	14900 5100 14900 5200
Connection ~ 14900 5200
Wire Wire Line
	14900 5200 14900 5300
Connection ~ 14900 5300
Wire Wire Line
	14900 5300 14900 5450
Text Label 13600 5550 1    50   ~ 0
BusLED[0..3]
Text Label 13700 5000 0    50   ~ 0
BusLED0
Text Label 13700 5100 0    50   ~ 0
BusLED1
Text Label 13700 5200 0    50   ~ 0
BusLED2
Text Label 13700 5300 0    50   ~ 0
BusLED3
Wire Wire Line
	2850 1900 2850 2100
$Comp
L power:+5V #PWR017
U 1 1 6183B21C
P 2850 1450
F 0 "#PWR017" H 2850 1300 50  0001 C CNN
F 1 "+5V" H 2865 1623 50  0000 C CNN
F 2 "" H 2850 1450 50  0001 C CNN
F 3 "" H 2850 1450 50  0001 C CNN
	1    2850 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 3300 9700 3300
Wire Wire Line
	9700 3300 9700 3200
Wire Wire Line
	9700 3200 9750 3200
Wire Wire Line
	9700 3200 9550 3200
Wire Wire Line
	9550 3200 9550 3400
Connection ~ 9700 3200
$Comp
L power:GND #PWR031
U 1 1 618D5DFE
P 9550 3400
F 0 "#PWR031" H 9550 3150 50  0001 C CNN
F 1 "GND" H 9555 3227 50  0000 C CNN
F 2 "" H 9550 3400 50  0001 C CNN
F 3 "" H 9550 3400 50  0001 C CNN
	1    9550 3400
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:NC7SZ58 U31
U 1 1 6194BB27
P 10050 2950
F 0 "U31" H 10050 3025 50  0000 C CNN
F 1 "NC7SZ58" H 10050 2934 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-363_SC-70-6_Handsoldering" H 10050 2950 50  0001 C CNN
F 3 "" H 10050 2950 50  0001 C CNN
	1    10050 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 3200 10500 3200
Wire Wire Line
	10500 3200 10500 2900
$Comp
L power:+5V #PWR032
U 1 1 6197512B
P 10500 2900
F 0 "#PWR032" H 10500 2750 50  0001 C CNN
F 1 "+5V" H 10515 3073 50  0000 C CNN
F 2 "" H 10500 2900 50  0001 C CNN
F 3 "" H 10500 2900 50  0001 C CNN
	1    10500 2900
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC21 U14
U 1 1 61B42154
P 2050 4700
F 0 "U14" V 2096 4447 50  0000 R CNN
F 1 "74HC21" V 2005 4447 50  0000 R CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 1850 4700 50  0001 C CNN
F 3 "" H 1850 4700 50  0000 C CNN
	1    2050 4700
	0    -1   -1   0   
$EndComp
Connection ~ 2100 8150
Connection ~ 2150 8250
Wire Wire Line
	2100 8150 2600 8150
Wire Wire Line
	2150 8250 3000 8250
Connection ~ 3450 7650
Wire Wire Line
	3450 7650 4900 7650
$Comp
L CPU2908CLocal:74HC04 U19
U 1 1 61CEE1D0
P 3850 7450
F 0 "U19" H 3850 7775 50  0000 C CNN
F 1 "TC74VHCT04AFT" H 3850 7684 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 3750 7450 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/toshiba/TC74VHCT04AFT.pdf" H 3750 7450 50  0001 C CNN
	1    3850 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 6450 4100 6700
Wire Wire Line
	4100 6700 4250 6700
Wire Wire Line
	3400 6450 4100 6450
$Comp
L CPU2908CLocal:74HC32 U15
U 2 1 61E27D9B
P 6650 8850
F 0 "U15" H 6650 9175 50  0000 C CNN
F 1 "74HC32" H 6650 9084 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 6650 8850 50  0001 C CNN
F 3 "" H 6650 8850 50  0000 C CNN
	2    6650 8850
	1    0    0    -1  
$EndComp
NoConn ~ 1800 5600
$Comp
L CPU2908CLocal:74HC08 U13
U 2 1 61E95201
P 2950 5550
F 0 "U13" H 2950 5235 50  0000 C CNN
F 1 "74HC08D" H 2950 5326 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 2750 5550 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT08.pdf" H 2750 5550 50  0001 C CNN
	2    2950 5550
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 5550 2300 5550
Wire Wire Line
	2300 5550 2300 5850
$Comp
L power:+5V #PWR013
U 1 1 61E94E8F
P 1000 5250
F 0 "#PWR013" H 1000 5100 50  0001 C CNN
F 1 "+5V" H 1015 5423 50  0000 C CNN
F 2 "" H 1000 5250 50  0001 C CNN
F 3 "" H 1000 5250 50  0001 C CNN
	1    1000 5250
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC04 U12
U 1 1 61EE2439
P 1800 5850
F 0 "U12" H 1800 5619 50  0000 C CNN
F 1 "TC74VHCT04AFT" H 1800 5710 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 1700 5850 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/toshiba/TC74VHCT04AFT.pdf" H 1700 5850 50  0001 C CNN
	1    1800 5850
	-1   0    0    1   
$EndComp
Wire Wire Line
	4000 5650 3250 5650
Wire Wire Line
	3250 5450 3950 5450
Wire Wire Line
	3950 5450 3950 5150
Wire Wire Line
	1100 5600 850  5600
Text Label 850  5600 0    50   ~ 0
E
Text HLabel 850  3100 0    50   Input ~ 0
IRQ
Wire Wire Line
	850  3100 1200 3100
Wire Wire Line
	1100 5500 850  5500
Text Label 850  5500 0    50   ~ 0
IRQ
Wire Wire Line
	2050 3800 2350 3800
Entry Wire Line
	4750 1800 4850 1900
Entry Wire Line
	4750 1900 4850 2000
Entry Wire Line
	3850 700  3950 800 
Entry Wire Line
	3950 700  4050 800 
Entry Wire Line
	4050 700  4150 800 
Entry Wire Line
	4150 700  4250 800 
Wire Wire Line
	4250 800  4250 1150
Entry Wire Line
	4750 1350 4850 1450
Entry Wire Line
	4750 1150 4850 1250
Entry Wire Line
	4750 1450 4850 1550
Entry Wire Line
	4750 1250 4850 1350
Wire Wire Line
	4150 800  4150 1250
Wire Wire Line
	4050 800  4050 1350
Wire Wire Line
	3950 800  3950 1450
Wire Bus Line
	4850 1000 5250 1000
Text Label 4550 1150 0    50   ~ 0
OP0
Text Label 4550 1250 0    50   ~ 0
OP1
Text Label 4550 1350 0    50   ~ 0
OP2
Text Label 4550 1450 0    50   ~ 0
OP3
Text Label 4550 1600 0    50   ~ 0
OP4
Text Label 4550 1800 0    50   ~ 0
OP6
Text Label 4550 1900 0    50   ~ 0
OP7
Text Label 4900 1000 0    50   ~ 0
OP[0..7]
Entry Wire Line
	5250 1150 5350 1250
Wire Wire Line
	5350 1250 5800 1250
Entry Wire Line
	5100 1250 5200 1350
Text Label 5450 1250 0    50   ~ 0
OP0
Text Label 5450 1450 0    50   ~ 0
OP1
Text Label 5450 1650 0    50   ~ 0
OP2
Text Label 5450 1850 0    50   ~ 0
OP3
Text Label 5450 2800 0    50   ~ 0
OP4
Text Label 5450 3000 0    50   ~ 0
OP5
Text Label 5450 3200 0    50   ~ 0
OP6
Text Label 5450 3400 0    50   ~ 0
OP7
Wire Wire Line
	5800 1450 5350 1450
Wire Wire Line
	5800 1650 5350 1650
Wire Wire Line
	5800 1850 5350 1850
Wire Wire Line
	5800 2800 5350 2800
Wire Wire Line
	5800 3000 5350 3000
Wire Wire Line
	5800 3200 5350 3200
Wire Wire Line
	5800 3400 5350 3400
Entry Wire Line
	5250 1350 5350 1450
Entry Wire Line
	5250 1550 5350 1650
Entry Wire Line
	5250 1750 5350 1850
Entry Wire Line
	5100 1450 5200 1550
Entry Wire Line
	5100 1650 5200 1750
Entry Wire Line
	5100 1850 5200 1950
Entry Wire Line
	5100 2800 5200 2900
Entry Wire Line
	5100 3000 5200 3100
Entry Wire Line
	5100 3200 5200 3300
Entry Wire Line
	5100 3400 5200 3500
Wire Wire Line
	5200 3500 5800 3500
Wire Wire Line
	5200 1950 5800 1950
Text Label 5100 2350 3    50   ~ 0
JOP[0..7]
Text Label 5400 1350 0    50   ~ 0
JOP0
Text Label 5400 1550 0    50   ~ 0
JOP1
Text Label 5400 1750 0    50   ~ 0
JOP2
Text Label 5400 1950 0    50   ~ 0
JOP3
Text Label 5400 2900 0    50   ~ 0
JOP4
Text Label 5400 3100 0    50   ~ 0
JOP5
Text Label 5400 3300 0    50   ~ 0
JOP6
Text Label 5400 3500 0    50   ~ 0
JOP7
Entry Wire Line
	5000 2900 5100 3000
Entry Wire Line
	5000 2800 5100 2900
Entry Wire Line
	5000 3000 5100 3100
Entry Wire Line
	5000 3100 5100 3200
Wire Wire Line
	5000 3100 4600 3100
Wire Wire Line
	4600 3000 5000 3000
Wire Wire Line
	4600 3200 5000 3200
Entry Wire Line
	5000 3200 5100 3300
Entry Wire Line
	5000 3300 5100 3400
Entry Wire Line
	5000 3400 5100 3500
Entry Wire Line
	5000 3500 5100 3600
Wire Wire Line
	4250 1150 4750 1150
Wire Wire Line
	4050 1350 4750 1350
Wire Wire Line
	4150 1250 4750 1250
Wire Wire Line
	3950 1450 4750 1450
Wire Wire Line
	4100 1800 4750 1800
Wire Wire Line
	4100 1900 4750 1900
Text Label 4750 2800 0    50   ~ 0
JOP0
Text Label 4750 2900 0    50   ~ 0
JOP1
Text Label 4750 3000 0    50   ~ 0
JOP2
Text Label 4750 3100 0    50   ~ 0
JOP3
Text Label 4750 3200 0    50   ~ 0
JOP4
Text Label 4750 3300 0    50   ~ 0
JOP5
Text Label 4750 3400 0    50   ~ 0
JOP6
Text Label 4750 3500 0    50   ~ 0
JOP7
Wire Wire Line
	6600 1350 7050 1350
Wire Wire Line
	6600 1450 7050 1450
Wire Wire Line
	6600 1550 7050 1550
Wire Wire Line
	6600 2800 7050 2800
Wire Wire Line
	6600 2900 7050 2900
Wire Wire Line
	6600 3000 7050 3000
Wire Wire Line
	6600 3100 7050 3100
Entry Wire Line
	7050 1250 7150 1350
Entry Wire Line
	7050 1350 7150 1450
Entry Wire Line
	7050 1450 7150 1550
Entry Wire Line
	7050 1550 7150 1650
Entry Wire Line
	7050 2800 7150 2900
Entry Wire Line
	7050 2900 7150 3000
Entry Wire Line
	7050 3000 7150 3100
Entry Wire Line
	7050 3100 7150 3200
Text Label 6650 1250 0    50   ~ 0
OpeCode0
Text Label 7400 1650 0    50   ~ 0
OpeCode[0..7]
Wire Wire Line
	6600 1250 7050 1250
Text Label 6650 1350 0    50   ~ 0
OpeCode1
Text Label 6650 1450 0    50   ~ 0
OpeCode2
Text Label 6650 1550 0    50   ~ 0
OpeCode3
Text Label 6650 2800 0    50   ~ 0
OpeCode4
Text Label 6650 2900 0    50   ~ 0
OpeCode5
Text Label 6650 3000 0    50   ~ 0
OpeCode6
Text Label 6650 3100 0    50   ~ 0
OpeCode7
Entry Wire Line
	5250 2700 5350 2800
Entry Wire Line
	5250 2900 5350 3000
Entry Wire Line
	5250 3100 5350 3200
Entry Wire Line
	5250 3300 5350 3400
Entry Wire Line
	10250 1650 10350 1750
Text Label 10350 1750 3    50   ~ 0
D31
Wire Wire Line
	5800 2150 5650 2150
$Comp
L power:GND #PWR022
U 1 1 62EAFBBC
P 5750 3900
F 0 "#PWR022" H 5750 3650 50  0001 C CNN
F 1 "GND" H 5755 3727 50  0000 C CNN
F 2 "" H 5750 3900 50  0001 C CNN
F 3 "" H 5750 3900 50  0001 C CNN
	1    5750 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2150 5650 3700
Connection ~ 5650 3700
Wire Wire Line
	5750 2250 5800 2250
Connection ~ 5750 3800
Wire Wire Line
	5750 3800 5800 3800
Wire Wire Line
	5750 3800 5750 3900
Wire Wire Line
	5750 2250 5750 3700
Wire Wire Line
	4450 3500 5000 3500
Wire Wire Line
	4450 3400 5000 3400
Wire Wire Line
	4450 3300 5000 3300
Wire Wire Line
	4450 3500 4450 3400
Connection ~ 4450 3300
Wire Wire Line
	4450 3300 4450 2650
Connection ~ 4450 3400
Wire Wire Line
	4450 3400 4450 3300
Wire Wire Line
	4600 3200 4600 3700
Wire Wire Line
	4600 3200 4600 3100
Connection ~ 4600 3200
Connection ~ 4600 3100
Wire Wire Line
	4600 3100 4600 3000
$Comp
L power:GND #PWR021
U 1 1 632ED98D
P 4600 3700
F 0 "#PWR021" H 4600 3450 50  0001 C CNN
F 1 "GND" H 4605 3527 50  0000 C CNN
F 2 "" H 4600 3700 50  0001 C CNN
F 3 "" H 4600 3700 50  0001 C CNN
	1    4600 3700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR020
U 1 1 632EDC90
P 4450 2650
F 0 "#PWR020" H 4450 2500 50  0001 C CNN
F 1 "+5V" H 4465 2823 50  0000 C CNN
F 2 "" H 4450 2650 50  0001 C CNN
F 3 "" H 4450 2650 50  0001 C CNN
	1    4450 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3700 5750 3800
Wire Wire Line
	4050 2800 5000 2800
Wire Wire Line
	3950 2900 5000 2900
Wire Wire Line
	4050 4600 4400 4600
Connection ~ 4050 4600
Wire Wire Line
	3950 4500 4400 4500
Connection ~ 3950 4500
Text HLabel 4400 4600 2    50   Output ~ 0
S0
Text HLabel 4400 4500 2    50   Output ~ 0
S1
Connection ~ 1950 5150
Wire Wire Line
	1950 5150 1950 5000
Text HLabel 1400 5150 0    50   Output ~ 0
IRQH
Wire Wire Line
	2900 5100 4600 5100
Wire Wire Line
	6250 5100 6250 6000
Wire Wire Line
	6250 6000 7300 6000
Wire Wire Line
	7300 6000 7300 5700
NoConn ~ 7200 5500
NoConn ~ 7200 4900
Wire Wire Line
	2250 3600 2350 3600
Wire Wire Line
	1650 3700 1550 3700
Wire Wire Line
	3900 3800 3800 3800
Wire Wire Line
	1500 3500 1650 3500
$Comp
L power:+5V #PWR023
U 1 1 639E0371
P 6200 4550
F 0 "#PWR023" H 6200 4400 50  0001 C CNN
F 1 "+5V" H 6215 4723 50  0000 C CNN
F 2 "" H 6200 4550 50  0001 C CNN
F 3 "" H 6200 4550 50  0001 C CNN
	1    6200 4550
	1    0    0    -1  
$EndComp
Text Label 6100 5700 0    50   ~ 0
nE
Text Label 6200 4900 0    50   ~ 0
Q
Wire Wire Line
	6100 5700 6500 5700
Text Label 6350 4350 3    50   ~ 0
D31B
Wire Wire Line
	7350 1900 8450 1900
Connection ~ 7150 1650
Wire Bus Line
	7150 1650 8450 1650
Wire Wire Line
	2250 5000 2250 5150
Wire Wire Line
	2250 5150 3950 5150
Connection ~ 3950 5150
Wire Wire Line
	3950 5150 3950 4500
Wire Wire Line
	3900 4600 3900 5050
Wire Wire Line
	3900 5050 2150 5050
Wire Wire Line
	2150 5050 2150 5000
Connection ~ 3900 4600
Wire Wire Line
	3900 4600 4050 4600
Text Label 6000 4700 0    50   ~ 0
nReset
Text Label 4950 6000 0    50   ~ 0
nReset
Wire Wire Line
	4950 6000 5250 6000
Text Label 5000 6200 0    50   ~ 0
nQ
Wire Wire Line
	4950 6200 5250 6200
$Comp
L CPU2908CLocal:74HC32 U24
U 3 1 63FF56B0
P 7900 2100
F 0 "U24" H 7900 1877 50  0000 C CNN
F 1 "74HC32" H 7900 1786 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 7900 2100 50  0001 C CNN
F 3 "" H 7900 2100 50  0000 C CNN
	3    7900 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 2200 7450 2200
Text Label 7500 2200 0    50   ~ 0
E
Wire Wire Line
	7350 1900 7350 4700
Wire Wire Line
	7400 2000 7600 2000
Wire Wire Line
	7400 2000 7400 6100
Wire Wire Line
	8200 2100 8450 2100
Wire Wire Line
	9650 2550 9650 3100
Wire Wire Line
	9650 3100 9750 3100
Wire Wire Line
	10400 3100 10350 3100
Wire Wire Line
	10600 1750 10600 1925
Wire Wire Line
	9600 2600 9600 3650
Wire Wire Line
	9600 3650 10550 3650
Wire Wire Line
	11100 1750 11100 1925
$Comp
L CPU2908CLocal:74HC32 U24
U 4 1 643D57AB
P 10850 3750
F 0 "U24" H 10850 4075 50  0000 C CNN
F 1 "74HC32" H 10850 3984 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 10850 3750 50  0001 C CNN
F 3 "" H 10850 3750 50  0000 C CNN
	4    10850 3750
	1    0    0    -1  
$EndComp
Connection ~ 10400 3100
Wire Wire Line
	11250 3300 11250 3600
Wire Wire Line
	10350 3300 11250 3300
Wire Wire Line
	11250 3750 11250 4800
Wire Wire Line
	11150 3750 11250 3750
$Comp
L CPU2908CLocal:74HC04 U12
U 2 1 64584A0A
P 2450 4250
F 0 "U12" H 2450 4550 50  0000 C CNN
F 1 "TC74VHCT04AFT" H 2450 4450 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 2350 4250 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/toshiba/TC74VHCT04AFT.pdf" H 2350 4250 50  0001 C CNN
	2    2450 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 3800 2050 4250
Connection ~ 2050 4250
Wire Wire Line
	2050 4250 2050 4400
Text Label 2550 5000 0    50   ~ 0
nReset
Wire Wire Line
	2550 5000 3000 5000
Wire Wire Line
	1850 5000 1850 5100
Entry Wire Line
	1800 6000 1900 6100
Text Label 2000 6100 0    50   ~ 0
FlagIn5
Wire Wire Line
	2400 5100 2400 6100
Wire Wire Line
	1900 6100 2400 6100
Wire Wire Line
	1850 5100 2400 5100
Wire Wire Line
	10400 3850 10550 3850
Wire Wire Line
	10400 3100 10400 3850
Text Label 4250 1150 1    50   ~ 0
DataIn4
Text Label 4150 1150 1    50   ~ 0
DataIn5
Text Label 4050 1150 1    50   ~ 0
DataIn6
Text Label 3950 1150 1    50   ~ 0
DataIn7
Entry Wire Line
	8600 6200 8700 6300
Entry Wire Line
	8600 6300 8700 6400
Entry Wire Line
	8600 6400 8700 6500
Entry Wire Line
	8600 6500 8700 6600
Entry Wire Line
	8600 6600 8700 6700
Entry Wire Line
	8600 6700 8700 6800
Entry Wire Line
	8600 6800 8700 6900
Entry Wire Line
	8600 6900 8700 7000
Text Label 8750 6300 0    50   ~ 0
DataIn0
Text Label 8750 6400 0    50   ~ 0
DataIn1
Text Label 8750 6500 0    50   ~ 0
DataIn2
Text Label 8750 6600 0    50   ~ 0
DataIn3
Text Label 8750 6700 0    50   ~ 0
DataIn4
Text Label 8750 6800 0    50   ~ 0
DataIn5
Text Label 8750 6900 0    50   ~ 0
DataIn6
Text Label 8750 7000 0    50   ~ 0
DataIn7
Wire Bus Line
	8100 6150 8600 6150
Text Label 8100 6150 0    50   ~ 0
DataIn[0..7]
Wire Wire Line
	9800 6300 10100 6300
Wire Wire Line
	9800 6400 10100 6400
Wire Wire Line
	9800 6500 10100 6500
Wire Wire Line
	9800 6600 10100 6600
Wire Wire Line
	9800 6700 10100 6700
Wire Wire Line
	9800 6800 10100 6800
Wire Wire Line
	9800 6900 10100 6900
Wire Wire Line
	9800 7000 10100 7000
Text Label 9850 6300 0    50   ~ 0
DO0
Text Label 9850 6400 0    50   ~ 0
DO1
Text Label 9850 6500 0    50   ~ 0
DO2
Text Label 9850 6600 0    50   ~ 0
DO3
Text Label 9850 6700 0    50   ~ 0
DO4
Text Label 9850 6800 0    50   ~ 0
DO5
Text Label 9850 6900 0    50   ~ 0
DO6
Text Label 9850 7000 0    50   ~ 0
DO7
Entry Wire Line
	10100 6300 10200 6400
Entry Wire Line
	10100 6400 10200 6500
Entry Wire Line
	10100 6500 10200 6600
Entry Wire Line
	10100 6600 10200 6700
Entry Wire Line
	10100 6700 10200 6800
Entry Wire Line
	10100 6800 10200 6900
Entry Wire Line
	10100 6900 10200 7000
Entry Wire Line
	10100 7000 10200 7100
Wire Bus Line
	10200 9100 10900 9100
Text Label 10400 9100 0    50   ~ 0
DO[0..7]
Entry Wire Line
	8600 4500 8700 4600
Entry Wire Line
	8600 4600 8700 4700
Entry Wire Line
	8600 4700 8700 4800
Entry Wire Line
	8600 4800 8700 4900
Entry Wire Line
	8600 4900 8700 5000
Entry Wire Line
	8600 5000 8700 5100
Entry Wire Line
	8600 5100 8700 5200
Entry Wire Line
	8600 5200 8700 5300
Entry Wire Line
	8500 5100 8600 5200
Wire Wire Line
	5000 8650 5500 8650
Wire Wire Line
	5000 8200 5000 8650
Wire Wire Line
	9000 7200 8750 7200
Text Label 8750 7200 0    50   ~ 0
nE
Wire Wire Line
	2150 9550 3600 9550
Wire Wire Line
	2150 9850 2300 9850
Connection ~ 2150 9850
Wire Wire Line
	2150 9850 2150 9550
Wire Wire Line
	2050 9850 2150 9850
$Comp
L CPU2908CLocal:74HC32 U15
U 1 1 5FC373D6
P 2600 9950
F 0 "U15" H 2600 10275 50  0000 C CNN
F 1 "74HC32" H 2600 10184 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 2600 9950 50  0001 C CNN
F 3 "" H 2600 9950 50  0000 C CNN
	1    2600 9950
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  10050 2300 10050
Wire Wire Line
	1300 9750 1450 9750
Wire Wire Line
	1300 9850 1300 9750
Wire Wire Line
	750  9950 1450 9950
Text Label 750  10050 0    50   ~ 0
ZF
Text Label 750  9850 0    50   ~ 0
OV
Text Label 750  9950 0    50   ~ 0
SF
Wire Wire Line
	750  9850 1300 9850
$Comp
L power:+5V #PWR?
U 1 1 660AF5EB
P 950 10450
AR Path="/660AF5EB" Ref="#PWR?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/660AF5EB" Ref="#PWR?"  Part="1" 
AR Path="/5DC31740/660AF5EB" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 950 10300 50  0001 C CNN
F 1 "+5V" H 965 10623 50  0000 C CNN
F 2 "" H 950 10450 50  0001 C CNN
F 3 "" H 950 10450 50  0001 C CNN
	1    950  10450
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  10750 950  10850
$Comp
L power:GND #PWR?
U 1 1 660AF5F3
P 950 10850
AR Path="/660AF5F3" Ref="#PWR?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/660AF5F3" Ref="#PWR?"  Part="1" 
AR Path="/5DC31740/660AF5F3" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 950 10600 50  0001 C CNN
F 1 "GND" H 955 10677 50  0000 C CNN
F 2 "" H 950 10850 50  0001 C CNN
F 3 "" H 950 10850 50  0001 C CNN
	1    950  10850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 660AF5F9
P 950 10650
AR Path="/660AF5F9" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/660AF5F9" Ref="C?"  Part="1" 
AR Path="/5DC31740/660AF5F9" Ref="C11"  Part="1" 
F 0 "C11" H 1042 10696 50  0000 L CNN
F 1 "0.1uF" H 1042 10605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 950 10650 50  0001 C CNN
F 3 "~" H 950 10650 50  0001 C CNN
	1    950  10650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 660AF5FF
P 1350 10650
AR Path="/660AF5FF" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/660AF5FF" Ref="C?"  Part="1" 
AR Path="/5DC31740/660AF5FF" Ref="C12"  Part="1" 
F 0 "C12" H 1442 10696 50  0000 L CNN
F 1 "0.1uF" H 1442 10605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 1350 10650 50  0001 C CNN
F 3 "~" H 1350 10650 50  0001 C CNN
	1    1350 10650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 660AF611
P 1750 10650
AR Path="/660AF611" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/660AF611" Ref="C?"  Part="1" 
AR Path="/5DC31740/660AF611" Ref="C15"  Part="1" 
F 0 "C15" H 1842 10696 50  0000 L CNN
F 1 "0.1uF" H 1842 10605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 1750 10650 50  0001 C CNN
F 3 "~" H 1750 10650 50  0001 C CNN
	1    1750 10650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 660AF617
P 2150 10650
AR Path="/660AF617" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/660AF617" Ref="C?"  Part="1" 
AR Path="/5DC31740/660AF617" Ref="C16"  Part="1" 
F 0 "C16" H 2242 10696 50  0000 L CNN
F 1 "0.1uF" H 2242 10605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2150 10650 50  0001 C CNN
F 3 "~" H 2150 10650 50  0001 C CNN
	1    2150 10650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 660AF61D
P 2550 10650
AR Path="/660AF61D" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/660AF61D" Ref="C?"  Part="1" 
AR Path="/5DC31740/660AF61D" Ref="C17"  Part="1" 
F 0 "C17" H 2642 10696 50  0000 L CNN
F 1 "0.1uF" H 2642 10605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2550 10650 50  0001 C CNN
F 3 "~" H 2550 10650 50  0001 C CNN
	1    2550 10650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 660AF623
P 2950 10650
AR Path="/660AF623" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/660AF623" Ref="C?"  Part="1" 
AR Path="/5DC31740/660AF623" Ref="C18"  Part="1" 
F 0 "C18" H 3042 10696 50  0000 L CNN
F 1 "0.1uF" H 3042 10605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2950 10650 50  0001 C CNN
F 3 "~" H 2950 10650 50  0001 C CNN
	1    2950 10650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 660AF629
P 3350 10650
AR Path="/660AF629" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/660AF629" Ref="C?"  Part="1" 
AR Path="/5DC31740/660AF629" Ref="C19"  Part="1" 
F 0 "C19" H 3442 10696 50  0000 L CNN
F 1 "0.1uF" H 3442 10605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3350 10650 50  0001 C CNN
F 3 "~" H 3350 10650 50  0001 C CNN
	1    3350 10650
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  10550 1350 10550
Connection ~ 1350 10550
Connection ~ 1750 10550
Wire Wire Line
	1750 10550 2150 10550
Connection ~ 2150 10550
Wire Wire Line
	2150 10550 2550 10550
Connection ~ 2550 10550
Wire Wire Line
	2550 10550 2950 10550
Connection ~ 2950 10550
Wire Wire Line
	2950 10550 3350 10550
Wire Wire Line
	950  10750 1350 10750
Connection ~ 950  10750
Connection ~ 1350 10750
Connection ~ 1750 10750
Wire Wire Line
	1750 10750 2150 10750
Connection ~ 2150 10750
Wire Wire Line
	2150 10750 2550 10750
Connection ~ 2550 10750
Wire Wire Line
	2550 10750 2950 10750
Connection ~ 2950 10750
Wire Wire Line
	2950 10750 3350 10750
$Comp
L Device:C_Small C?
U 1 1 6613683A
P 3750 10650
AR Path="/6613683A" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/6613683A" Ref="C?"  Part="1" 
AR Path="/5DC31740/6613683A" Ref="C20"  Part="1" 
F 0 "C20" H 3842 10696 50  0000 L CNN
F 1 "0.1uF" H 3842 10605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3750 10650 50  0001 C CNN
F 3 "~" H 3750 10650 50  0001 C CNN
	1    3750 10650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 66136840
P 4150 10650
AR Path="/66136840" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/66136840" Ref="C?"  Part="1" 
AR Path="/5DC31740/66136840" Ref="C21"  Part="1" 
F 0 "C21" H 4242 10696 50  0000 L CNN
F 1 "0.1uF" H 4242 10605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4150 10650 50  0001 C CNN
F 3 "~" H 4150 10650 50  0001 C CNN
	1    4150 10650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 66136846
P 4550 10650
AR Path="/66136846" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/66136846" Ref="C?"  Part="1" 
AR Path="/5DC31740/66136846" Ref="C22"  Part="1" 
F 0 "C22" H 4642 10696 50  0000 L CNN
F 1 "0.1uF" H 4642 10605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4550 10650 50  0001 C CNN
F 3 "~" H 4550 10650 50  0001 C CNN
	1    4550 10650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6613684C
P 4950 10650
AR Path="/6613684C" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/6613684C" Ref="C?"  Part="1" 
AR Path="/5DC31740/6613684C" Ref="C23"  Part="1" 
F 0 "C23" H 5042 10696 50  0000 L CNN
F 1 "0.1uF" H 5042 10605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4950 10650 50  0001 C CNN
F 3 "~" H 4950 10650 50  0001 C CNN
	1    4950 10650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 66136852
P 5350 10650
AR Path="/66136852" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/66136852" Ref="C?"  Part="1" 
AR Path="/5DC31740/66136852" Ref="C24"  Part="1" 
F 0 "C24" H 5442 10696 50  0000 L CNN
F 1 "0.1uF" H 5442 10605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5350 10650 50  0001 C CNN
F 3 "~" H 5350 10650 50  0001 C CNN
	1    5350 10650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 66136858
P 5750 10650
AR Path="/66136858" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/66136858" Ref="C?"  Part="1" 
AR Path="/5DC31740/66136858" Ref="C25"  Part="1" 
F 0 "C25" H 5842 10696 50  0000 L CNN
F 1 "0.1uF" H 5842 10605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5750 10650 50  0001 C CNN
F 3 "~" H 5750 10650 50  0001 C CNN
	1    5750 10650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6613685E
P 6150 10650
AR Path="/6613685E" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/6613685E" Ref="C?"  Part="1" 
AR Path="/5DC31740/6613685E" Ref="C26"  Part="1" 
F 0 "C26" H 6242 10696 50  0000 L CNN
F 1 "0.1uF" H 6242 10605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 6150 10650 50  0001 C CNN
F 3 "~" H 6150 10650 50  0001 C CNN
	1    6150 10650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 66136864
P 6550 10650
AR Path="/66136864" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/66136864" Ref="C?"  Part="1" 
AR Path="/5DC31740/66136864" Ref="C27"  Part="1" 
F 0 "C27" H 6642 10696 50  0000 L CNN
F 1 "0.1uF" H 6642 10605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 6550 10650 50  0001 C CNN
F 3 "~" H 6550 10650 50  0001 C CNN
	1    6550 10650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 10550 3750 10550
Connection ~ 3750 10550
Wire Wire Line
	3750 10550 4150 10550
Connection ~ 4150 10550
Wire Wire Line
	4150 10550 4550 10550
Connection ~ 4550 10550
Wire Wire Line
	4550 10550 4950 10550
Connection ~ 4950 10550
Wire Wire Line
	4950 10550 5350 10550
Connection ~ 5350 10550
Wire Wire Line
	5350 10550 5750 10550
Connection ~ 5750 10550
Wire Wire Line
	5750 10550 6150 10550
Connection ~ 6150 10550
Wire Wire Line
	6150 10550 6550 10550
Wire Wire Line
	3350 10750 3750 10750
Connection ~ 3750 10750
Wire Wire Line
	3750 10750 4150 10750
Connection ~ 4150 10750
Wire Wire Line
	4150 10750 4550 10750
Connection ~ 4550 10750
Wire Wire Line
	4550 10750 4950 10750
Connection ~ 4950 10750
Wire Wire Line
	4950 10750 5350 10750
Connection ~ 5350 10750
Wire Wire Line
	5350 10750 5750 10750
Connection ~ 5750 10750
Wire Wire Line
	5750 10750 6150 10750
Connection ~ 6150 10750
Wire Wire Line
	6150 10750 6550 10750
Connection ~ 3350 10550
Connection ~ 3350 10750
Wire Wire Line
	3450 7450 3600 7450
Wire Wire Line
	4100 6900 4250 6900
Wire Wire Line
	2650 8050 2600 8050
Wire Wire Line
	3150 8050 3700 8050
Wire Wire Line
	3000 8200 3150 8200
Wire Wire Line
	3650 8200 3850 8200
Wire Wire Line
	3700 8650 4100 8650
Wire Wire Line
	4600 8650 4700 8650
Wire Wire Line
	1700 8850 2250 8850
Wire Wire Line
	2900 9950 3000 9950
Wire Wire Line
	2050 5850 2300 5850
Wire Wire Line
	2050 4250 2200 4250
Wire Wire Line
	2700 4250 2950 4250
Wire Wire Line
	4100 1600 4750 1600
Wire Wire Line
	4100 1700 4750 1700
Text Label 4550 1700 0    50   ~ 0
OP5
Entry Wire Line
	4750 1700 4850 1800
Entry Wire Line
	4750 1600 4850 1700
$Comp
L CPU2908CLocal:74HC32 U15
U 3 1 A35D5545
P 7450 8950
F 0 "U15" H 7450 9275 50  0000 C CNN
F 1 "74HC32" H 7450 9184 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 7450 8950 50  0001 C CNN
F 3 "" H 7450 8950 50  0000 C CNN
	3    7450 8950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4100 5500 3700
Wire Wire Line
	5500 3700 5650 3700
Wire Wire Line
	5400 4100 5500 4100
Wire Wire Line
	4800 4000 3900 4000
Wire Wire Line
	4050 4200 4000 4200
Wire Wire Line
	4050 4200 4800 4200
Wire Wire Line
	5650 3700 5800 3700
Wire Wire Line
	9000 6500 8700 6500
Wire Wire Line
	9000 6600 8700 6600
Wire Wire Line
	9000 6700 8700 6700
Wire Wire Line
	9000 6800 8700 6800
Wire Wire Line
	9000 6900 8700 6900
Wire Wire Line
	9000 7000 8700 7000
Wire Wire Line
	8700 6300 9000 6300
Wire Wire Line
	8700 6400 9000 6400
$Comp
L CPU2908CLocal:74HC08 U13
U 4 1 5DA82C26
P 5900 7450
F 0 "U13" H 5900 7775 50  0000 C CNN
F 1 "74HC08D" H 5900 7684 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 5700 7450 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT08.pdf" H 5700 7450 50  0001 C CNN
	4    5900 7450
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC08 U21
U 1 1 5DBA5CCB
P 5550 6100
F 0 "U21" H 5550 6425 50  0000 C CNN
F 1 "74HC08D" H 5550 6334 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 5350 6100 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT08.pdf" H 5350 6100 50  0001 C CNN
	1    5550 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 9950 8100 10150
Wire Wire Line
	8100 9950 8350 9950
Wire Wire Line
	8350 10150 8100 10150
Connection ~ 8100 10150
Wire Wire Line
	8100 10150 8100 10450
Wire Wire Line
	8350 10450 8100 10450
Connection ~ 8100 10450
Wire Wire Line
	8100 10450 8100 10650
Wire Wire Line
	8350 10650 8100 10650
Connection ~ 8100 10650
Wire Wire Line
	8100 10650 8100 10850
NoConn ~ 8950 10050
NoConn ~ 8950 10550
$Comp
L power:GND #PWR024
U 1 1 6192434D
P 8100 10850
F 0 "#PWR024" H 8100 10600 50  0001 C CNN
F 1 "GND" H 8105 10677 50  0000 C CNN
F 2 "" H 8100 10850 50  0001 C CNN
F 3 "" H 8100 10850 50  0001 C CNN
	1    8100 10850
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC541 U28
U 1 1 5EC30D0B
P 9400 5100
F 0 "U28" H 9400 5825 50  0000 C CNN
F 1 "TC74VHCT541" H 9400 5734 50  0000 C CNN
F 2 "digikey-footprints:TSSOP-20_W4.4mm" H 9450 5100 50  0001 C CNN
F 3 "" H 9450 5100 50  0000 C CNN
	1    9400 5100
	1    0    0    -1  
$EndComp
Entry Wire Line
	10100 5300 10200 5400
Entry Wire Line
	10100 5200 10200 5300
Entry Wire Line
	10100 5100 10200 5200
Entry Wire Line
	10100 5000 10200 5100
Entry Wire Line
	10100 4900 10200 5000
Entry Wire Line
	10100 4800 10200 4900
Entry Wire Line
	10100 4700 10200 4800
Entry Wire Line
	10100 4600 10200 4700
Text Label 9850 5300 0    50   ~ 0
DO7
Text Label 9850 5200 0    50   ~ 0
DO6
Text Label 9850 5100 0    50   ~ 0
DO5
Text Label 9850 5000 0    50   ~ 0
DO4
Text Label 9850 4900 0    50   ~ 0
DO3
Text Label 9850 4800 0    50   ~ 0
DO2
Text Label 9850 4700 0    50   ~ 0
DO1
Text Label 9850 4600 0    50   ~ 0
DO0
Wire Wire Line
	9750 5300 10100 5300
Wire Wire Line
	9750 5200 10100 5200
Wire Wire Line
	9750 5100 10100 5100
Wire Wire Line
	9750 5000 10100 5000
Wire Wire Line
	9750 4900 10100 4900
Wire Wire Line
	9750 4800 10100 4800
Wire Wire Line
	9750 4700 10100 4700
Wire Wire Line
	9750 4600 10100 4600
$Comp
L CPU2908CLocal:74HC157 U22
U 1 1 5F3BB018
P 6200 1750
F 0 "U22" H 6200 2475 50  0000 C CNN
F 1 "74HC157" H 6200 2384 50  0000 C CNN
F 2 "Footprints:SN74HC157DR" H 6200 1750 50  0001 C CNN
F 3 "" H 6200 1750 50  0000 C CNN
	1    6200 1750
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC157 U23
U 1 1 5F3BCD3A
P 6200 3300
F 0 "U23" H 6200 4025 50  0000 C CNN
F 1 "74HC157" H 6200 3934 50  0000 C CNN
F 2 "Footprints:SN74HC157DR" H 6200 3300 50  0001 C CNN
F 3 "" H 6200 3300 50  0000 C CNN
	1    6200 3300
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC157 U18
U 1 1 5F3BD5A5
P 3700 2100
F 0 "U18" H 3700 2825 50  0000 C CNN
F 1 "74HC157" H 3700 2734 50  0000 C CNN
F 2 "Footprints:SN74HC157DR" H 3700 2100 50  0001 C CNN
F 3 "" H 3700 2100 50  0000 C CNN
	1    3700 2100
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC153 U?
U 1 1 66F0A5C4
P 3000 6950
AR Path="/5DC31E28/66F0A5C4" Ref="U?"  Part="1" 
AR Path="/5DC31740/66F0A5C4" Ref="U16"  Part="1" 
F 0 "U16" H 3000 7875 50  0000 C CNN
F 1 "74HC153" H 3000 7784 50  0000 C CNN
F 2 "SMD_Packages:SO-16-N" H 3000 6950 50  0001 C CNN
F 3 "" H 3000 6950 50  0000 C CNN
	1    3000 6950
	1    0    0    -1  
$EndComp
Connection ~ 14900 4400
Connection ~ 14900 4500
Connection ~ 14900 4600
Wire Wire Line
	14900 4600 14900 5000
Wire Wire Line
	14900 4400 14900 4500
Wire Wire Line
	14900 4500 14900 4600
Connection ~ 14900 3900
Connection ~ 14900 4000
Connection ~ 14900 4100
Connection ~ 14900 4200
Wire Wire Line
	14900 4200 14900 4400
Wire Wire Line
	14900 3700 14900 3900
Wire Wire Line
	14900 3900 14900 4000
Wire Wire Line
	14900 4000 14900 4100
Wire Wire Line
	14900 4100 14900 4200
$Comp
L CPU2908CLocal:LED_G D23
U 1 1 6B8D6C0C
P 14650 4600
F 0 "D23" H 14650 4700 50  0001 C TNN
F 1 "LED_G" H 14643 4436 50  0000 C CNN
F 2 "LEDs:LED_0402" H 14650 4600 50  0001 C CNN
F 3 "~" H 14650 4600 50  0001 C CNN
	1    14650 4600
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D22
U 1 1 6B8D6C06
P 14650 4500
F 0 "D22" H 14650 4600 50  0001 C TNN
F 1 "LED_G" H 14643 4336 50  0000 C CNN
F 2 "LEDs:LED_0402" H 14650 4500 50  0001 C CNN
F 3 "~" H 14650 4500 50  0001 C CNN
	1    14650 4500
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D21
U 1 1 6B8D6C00
P 14650 4400
F 0 "D21" H 14650 4500 50  0001 C TNN
F 1 "LED_G" H 14643 4236 50  0000 C CNN
F 2 "LEDs:LED_0402" H 14650 4400 50  0001 C CNN
F 3 "~" H 14650 4400 50  0001 C CNN
	1    14650 4400
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D20
U 1 1 6B8D6BFA
P 14650 4200
F 0 "D20" H 14650 4300 50  0001 C TNN
F 1 "LED_G" H 14643 4036 50  0000 C CNN
F 2 "LEDs:LED_0402" H 14650 4200 50  0001 C CNN
F 3 "~" H 14650 4200 50  0001 C CNN
	1    14650 4200
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D19
U 1 1 6B8D6BF4
P 14650 4100
F 0 "D19" H 14650 4200 50  0001 C TNN
F 1 "LED_G" H 14643 3936 50  0000 C CNN
F 2 "LEDs:LED_0402" H 14650 4100 50  0001 C CNN
F 3 "~" H 14650 4100 50  0001 C CNN
	1    14650 4100
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D18
U 1 1 6B8D6BEE
P 14650 4000
F 0 "D18" H 14650 4100 50  0001 C TNN
F 1 "LED_G" H 14643 3836 50  0000 C CNN
F 2 "LEDs:LED_0402" H 14650 4000 50  0001 C CNN
F 3 "~" H 14650 4000 50  0001 C CNN
	1    14650 4000
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D17
U 1 1 6B8D6BE8
P 14650 3900
F 0 "D17" H 14650 4000 50  0001 C TNN
F 1 "LED_G" H 14643 3736 50  0000 C CNN
F 2 "LEDs:LED_0402" H 14650 3900 50  0001 C CNN
F 3 "~" H 14650 3900 50  0001 C CNN
	1    14650 3900
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D16
U 1 1 6B8D6BE2
P 14650 3700
F 0 "D16" H 14650 3800 50  0001 C TNN
F 1 "LED_G" H 14643 3536 50  0000 C CNN
F 2 "LEDs:LED_0402" H 14650 3700 50  0001 C CNN
F 3 "~" H 14650 3700 50  0001 C CNN
	1    14650 3700
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D15
U 1 1 6B8D6BDC
P 14650 3600
F 0 "D15" H 14650 3700 50  0001 C TNN
F 1 "LED_G" H 14643 3436 50  0000 C CNN
F 2 "LEDs:LED_0402" H 14650 3600 50  0001 C CNN
F 3 "~" H 14650 3600 50  0001 C CNN
	1    14650 3600
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D14
U 1 1 6B8D6BD6
P 14650 3500
F 0 "D14" H 14650 3600 50  0001 C TNN
F 1 "LED_G" H 14643 3336 50  0000 C CNN
F 2 "LEDs:LED_0402" H 14650 3500 50  0001 C CNN
F 3 "~" H 14650 3500 50  0001 C CNN
	1    14650 3500
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D13
U 1 1 6B8D6BD0
P 14650 3400
F 0 "D13" H 14650 3500 50  0001 C TNN
F 1 "LED_G" H 14643 3236 50  0000 C CNN
F 2 "LEDs:LED_0402" H 14650 3400 50  0001 C CNN
F 3 "~" H 14650 3400 50  0001 C CNN
	1    14650 3400
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D12
U 1 1 6B841847
P 14650 3200
F 0 "D12" H 14650 3300 50  0001 C TNN
F 1 "LED_G" H 14850 3150 50  0000 C CNN
F 2 "LEDs:LED_0402" H 14650 3200 50  0001 C CNN
F 3 "~" H 14650 3200 50  0001 C CNN
	1    14650 3200
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D11
U 1 1 6B841841
P 14650 3100
F 0 "D11" H 14650 3200 50  0001 C TNN
F 1 "LED_G" H 14850 3050 50  0000 C CNN
F 2 "LEDs:LED_0402" H 14650 3100 50  0001 C CNN
F 3 "~" H 14650 3100 50  0001 C CNN
	1    14650 3100
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D10
U 1 1 6B84183B
P 14650 3000
F 0 "D10" H 14650 3100 50  0001 C TNN
F 1 "LED_G" H 14850 2950 50  0000 C CNN
F 2 "LEDs:LED_0402" H 14650 3000 50  0001 C CNN
F 3 "~" H 14650 3000 50  0001 C CNN
	1    14650 3000
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D9
U 1 1 6B841835
P 14650 2900
F 0 "D9" H 14650 3000 50  0001 C TNN
F 1 "LED_G" H 14850 2850 50  0000 C CNN
F 2 "LEDs:LED_0402" H 14650 2900 50  0001 C CNN
F 3 "~" H 14650 2900 50  0001 C CNN
	1    14650 2900
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D8
U 1 1 6B7AE416
P 14650 2700
F 0 "D8" H 14650 2800 50  0001 C TNN
F 1 "LED_G" H 14850 2650 50  0000 C CNN
F 2 "LEDs:LED_0402" H 14650 2700 50  0001 C CNN
F 3 "~" H 14650 2700 50  0001 C CNN
	1    14650 2700
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D7
U 1 1 6B7AE410
P 14650 2600
F 0 "D7" H 14650 2700 50  0001 C TNN
F 1 "LED_G" H 14850 2550 50  0000 C CNN
F 2 "LEDs:LED_0402" H 14650 2600 50  0001 C CNN
F 3 "~" H 14650 2600 50  0001 C CNN
	1    14650 2600
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D6
U 1 1 6B7AE40A
P 14650 2500
F 0 "D6" H 14650 2600 50  0001 C TNN
F 1 "LED_G" H 14850 2450 50  0000 C CNN
F 2 "LEDs:LED_0402" H 14650 2500 50  0001 C CNN
F 3 "~" H 14650 2500 50  0001 C CNN
	1    14650 2500
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D5
U 1 1 6B7AE404
P 14650 2400
F 0 "D5" H 14650 2500 50  0001 C TNN
F 1 "LED_G" H 14850 2350 50  0000 C CNN
F 2 "LEDs:LED_0402" H 14650 2400 50  0001 C CNN
F 3 "~" H 14650 2400 50  0001 C CNN
	1    14650 2400
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D4
U 1 1 6B71A70B
P 14650 2200
F 0 "D4" H 14650 2300 50  0001 C TNN
F 1 "LED_G" H 14850 2150 50  0000 C CNN
F 2 "LEDs:LED_0402" H 14650 2200 50  0001 C CNN
F 3 "~" H 14650 2200 50  0001 C CNN
	1    14650 2200
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D3
U 1 1 6B71A705
P 14650 2100
F 0 "D3" H 14650 2200 50  0001 C TNN
F 1 "LED_G" H 14850 2050 50  0000 C CNN
F 2 "LEDs:LED_0402" H 14650 2100 50  0001 C CNN
F 3 "~" H 14650 2100 50  0001 C CNN
	1    14650 2100
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D2
U 1 1 6B71A6FF
P 14650 2000
F 0 "D2" H 14650 2100 50  0001 C TNN
F 1 "LED_G" H 14850 1950 50  0000 C CNN
F 2 "LEDs:LED_0402" H 14650 2000 50  0001 C CNN
F 3 "~" H 14650 2000 50  0001 C CNN
	1    14650 2000
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D1
U 1 1 6B71A6F9
P 14650 1900
F 0 "D1" H 14350 1900 50  0000 C TNN
F 1 "LED_G" H 14850 1850 50  0000 C CNN
F 2 "LEDs:LED_0402" H 14650 1900 50  0001 C CNN
F 3 "~" H 14650 1900 50  0001 C CNN
	1    14650 1900
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D27
U 1 1 6B685F71
P 14650 5300
F 0 "D27" H 14650 5400 50  0001 C TNN
F 1 "LED_G" H 14643 5424 50  0000 C CNN
F 2 "LEDs:LED_0402" H 14650 5300 50  0001 C CNN
F 3 "~" H 14650 5300 50  0001 C CNN
	1    14650 5300
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D26
U 1 1 6B685DB3
P 14650 5200
F 0 "D26" H 14650 5300 50  0001 C TNN
F 1 "LED_G" H 14643 5036 50  0000 C CNN
F 2 "LEDs:LED_0402" H 14650 5200 50  0001 C CNN
F 3 "~" H 14650 5200 50  0001 C CNN
	1    14650 5200
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D25
U 1 1 6B685AA5
P 14650 5100
F 0 "D25" H 14650 5200 50  0001 C TNN
F 1 "LED_G" H 14643 4936 50  0000 C CNN
F 2 "LEDs:LED_0402" H 14650 5100 50  0001 C CNN
F 3 "~" H 14650 5100 50  0001 C CNN
	1    14650 5100
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D24
U 1 1 6B683BB3
P 14650 5000
F 0 "D24" H 14650 5100 50  0001 C TNN
F 1 "LED_G" H 14643 4836 50  0000 C CNN
F 2 "LEDs:LED_0402" H 14650 5000 50  0001 C CNN
F 3 "~" H 14650 5000 50  0001 C CNN
	1    14650 5000
	-1   0    0    1   
$EndComp
Wire Wire Line
	14400 5300 14500 5300
$Comp
L Device:R R27
U 1 1 61637EDC
P 14250 5300
F 0 "R27" V 14365 5300 50  0000 C CNN
F 1 "47K" V 14456 5300 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 14180 5300 50  0001 C CNN
F 3 "~" H 14250 5300 50  0001 C CNN
	1    14250 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	14400 5200 14500 5200
$Comp
L Device:R R26
U 1 1 61637ECD
P 14250 5200
F 0 "R26" V 14043 5200 50  0000 C CNN
F 1 "47K" V 14134 5200 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 14180 5200 50  0001 C CNN
F 3 "~" H 14250 5200 50  0001 C CNN
	1    14250 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	14400 5100 14500 5100
$Comp
L Device:R R25
U 1 1 61637EBE
P 14250 5100
F 0 "R25" V 14043 5100 50  0000 C CNN
F 1 "47K" V 14134 5100 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 14180 5100 50  0001 C CNN
F 3 "~" H 14250 5100 50  0001 C CNN
	1    14250 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	14400 5000 14500 5000
$Comp
L Device:R R24
U 1 1 61637EAF
P 14250 5000
F 0 "R24" V 14043 5000 50  0000 C CNN
F 1 "47K" V 14134 5000 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 14180 5000 50  0001 C CNN
F 3 "~" H 14250 5000 50  0001 C CNN
	1    14250 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	14400 4600 14500 4600
$Comp
L Device:R R23
U 1 1 61613B1F
P 14250 4600
F 0 "R23" V 14043 4600 50  0000 C CNN
F 1 "47K" V 14134 4600 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 14180 4600 50  0001 C CNN
F 3 "~" H 14250 4600 50  0001 C CNN
	1    14250 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	14400 4500 14500 4500
$Comp
L Device:R R22
U 1 1 61613B10
P 14250 4500
F 0 "R22" V 14043 4500 50  0000 C CNN
F 1 "47K" V 14134 4500 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 14180 4500 50  0001 C CNN
F 3 "~" H 14250 4500 50  0001 C CNN
	1    14250 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	14400 4400 14500 4400
$Comp
L Device:R R21
U 1 1 61613B01
P 14250 4400
F 0 "R21" V 14043 4400 50  0000 C CNN
F 1 "47K" V 14134 4400 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 14180 4400 50  0001 C CNN
F 3 "~" H 14250 4400 50  0001 C CNN
	1    14250 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	14400 4200 14500 4200
$Comp
L Device:R R20
U 1 1 61613AF2
P 14250 4200
F 0 "R20" V 14043 4200 50  0000 C CNN
F 1 "47K" V 14134 4200 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 14180 4200 50  0001 C CNN
F 3 "~" H 14250 4200 50  0001 C CNN
	1    14250 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	14400 4100 14500 4100
$Comp
L Device:R R19
U 1 1 61613AE3
P 14250 4100
F 0 "R19" V 14043 4100 50  0000 C CNN
F 1 "47K" V 14134 4100 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 14180 4100 50  0001 C CNN
F 3 "~" H 14250 4100 50  0001 C CNN
	1    14250 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	14400 4000 14500 4000
$Comp
L Device:R R18
U 1 1 61613AD4
P 14250 4000
F 0 "R18" V 14043 4000 50  0000 C CNN
F 1 "47K" V 14134 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 14180 4000 50  0001 C CNN
F 3 "~" H 14250 4000 50  0001 C CNN
	1    14250 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	14400 3900 14500 3900
$Comp
L Device:R R17
U 1 1 61613AC5
P 14250 3900
F 0 "R17" V 14043 3900 50  0000 C CNN
F 1 "47K" V 14134 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 14180 3900 50  0001 C CNN
F 3 "~" H 14250 3900 50  0001 C CNN
	1    14250 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	14400 3700 14500 3700
$Comp
L Device:R R16
U 1 1 615F1F44
P 14250 3700
F 0 "R16" V 14043 3700 50  0000 C CNN
F 1 "47K" V 14134 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 14180 3700 50  0001 C CNN
F 3 "~" H 14250 3700 50  0001 C CNN
	1    14250 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	14400 3600 14500 3600
$Comp
L Device:R R15
U 1 1 615F1F35
P 14250 3600
F 0 "R15" V 14043 3600 50  0000 C CNN
F 1 "47K" V 14134 3600 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 14180 3600 50  0001 C CNN
F 3 "~" H 14250 3600 50  0001 C CNN
	1    14250 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	14400 3500 14500 3500
$Comp
L Device:R R14
U 1 1 615F1F26
P 14250 3500
F 0 "R14" V 14043 3500 50  0000 C CNN
F 1 "47K" V 14134 3500 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 14180 3500 50  0001 C CNN
F 3 "~" H 14250 3500 50  0001 C CNN
	1    14250 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	14400 3400 14500 3400
$Comp
L Device:R R13
U 1 1 615F1F17
P 14250 3400
F 0 "R13" V 14043 3400 50  0000 C CNN
F 1 "47K" V 14134 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 14180 3400 50  0001 C CNN
F 3 "~" H 14250 3400 50  0001 C CNN
	1    14250 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	14400 3200 14500 3200
$Comp
L Device:R R12
U 1 1 615D7A9A
P 14250 3200
F 0 "R12" V 14043 3200 50  0000 C CNN
F 1 "47K" V 14134 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 14180 3200 50  0001 C CNN
F 3 "~" H 14250 3200 50  0001 C CNN
	1    14250 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	14400 3100 14500 3100
$Comp
L Device:R R11
U 1 1 615D7A8B
P 14250 3100
F 0 "R11" V 14043 3100 50  0000 C CNN
F 1 "47K" V 14134 3100 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 14180 3100 50  0001 C CNN
F 3 "~" H 14250 3100 50  0001 C CNN
	1    14250 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	14400 3000 14500 3000
$Comp
L Device:R R10
U 1 1 615D7A7C
P 14250 3000
F 0 "R10" V 14043 3000 50  0000 C CNN
F 1 "47K" V 14134 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 14180 3000 50  0001 C CNN
F 3 "~" H 14250 3000 50  0001 C CNN
	1    14250 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	14400 2900 14500 2900
$Comp
L Device:R R9
U 1 1 615D7A6D
P 14250 2900
F 0 "R9" V 14043 2900 50  0000 C CNN
F 1 "47K" V 14134 2900 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 14180 2900 50  0001 C CNN
F 3 "~" H 14250 2900 50  0001 C CNN
	1    14250 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	14400 2700 14500 2700
$Comp
L Device:R R8
U 1 1 615BEBA6
P 14250 2700
F 0 "R8" V 14043 2700 50  0000 C CNN
F 1 "47K" V 14134 2700 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 14180 2700 50  0001 C CNN
F 3 "~" H 14250 2700 50  0001 C CNN
	1    14250 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	14400 2600 14500 2600
$Comp
L Device:R R7
U 1 1 615BEB97
P 14250 2600
F 0 "R7" V 14043 2600 50  0000 C CNN
F 1 "47K" V 14134 2600 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 14180 2600 50  0001 C CNN
F 3 "~" H 14250 2600 50  0001 C CNN
	1    14250 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	14400 2500 14500 2500
$Comp
L Device:R R6
U 1 1 615BEB88
P 14250 2500
F 0 "R6" V 14043 2500 50  0000 C CNN
F 1 "47K" V 14134 2500 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 14180 2500 50  0001 C CNN
F 3 "~" H 14250 2500 50  0001 C CNN
	1    14250 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	14400 2400 14500 2400
$Comp
L Device:R R5
U 1 1 615BEB79
P 14250 2400
F 0 "R5" V 14043 2400 50  0000 C CNN
F 1 "47K" V 14134 2400 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 14180 2400 50  0001 C CNN
F 3 "~" H 14250 2400 50  0001 C CNN
	1    14250 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	14400 2200 14500 2200
$Comp
L Device:R R4
U 1 1 615A7660
P 14250 2200
F 0 "R4" V 14043 2200 50  0000 C CNN
F 1 "47K" V 14134 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 14180 2200 50  0001 C CNN
F 3 "~" H 14250 2200 50  0001 C CNN
	1    14250 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	14400 2100 14500 2100
$Comp
L Device:R R3
U 1 1 61592DF9
P 14250 2100
F 0 "R3" V 14043 2100 50  0000 C CNN
F 1 "47K" V 14134 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 14180 2100 50  0001 C CNN
F 3 "~" H 14250 2100 50  0001 C CNN
	1    14250 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	14400 2000 14500 2000
$Comp
L Device:R R2
U 1 1 6157E773
P 14250 2000
F 0 "R2" V 14043 2000 50  0000 C CNN
F 1 "47K" V 14134 2000 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 14180 2000 50  0001 C CNN
F 3 "~" H 14250 2000 50  0001 C CNN
	1    14250 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 61521583
P 14250 1900
F 0 "R1" V 14043 1900 50  0000 C CNN
F 1 "47K" V 14134 1900 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 14180 1900 50  0001 C CNN
F 3 "~" H 14250 1900 50  0001 C CNN
	1    14250 1900
	0    1    1    0   
$EndComp
$Comp
L CPU2908CLocal:74HC04 U19
U 6 1 6E387103
P 8450 5500
F 0 "U19" H 8350 5650 50  0000 L CNN
F 1 "TC74VHCT04AFT" H 8150 5350 50  0000 L CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 8350 5500 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/toshiba/TC74VHCT04AFT.pdf" H 8350 5500 50  0001 C CNN
	6    8450 5500
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC04 U26
U 3 1 6E536D34
P 2900 8050
F 0 "U26" H 2700 8200 50  0000 C CNN
F 1 "TC74VHCT04AFT" H 3150 8200 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 2800 8050 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/toshiba/TC74VHCT04AFT.pdf" H 2800 8050 50  0001 C CNN
	3    2900 8050
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC04 U26
U 4 1 6E5C4C14
P 9600 10800
F 0 "U26" H 9250 10850 50  0000 C CNN
F 1 "TC74VHCT04AFT" H 9950 10900 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 9500 10800 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/toshiba/TC74VHCT04AFT.pdf" H 9500 10800 50  0001 C CNN
	4    9600 10800
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC04 U26
U 6 1 6E652ADC
P 3400 8200
F 0 "U26" H 3200 8300 50  0000 C CNN
F 1 "TC74VHCT04AFT" H 3650 8300 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 3300 8200 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/toshiba/TC74VHCT04AFT.pdf" H 3300 8200 50  0001 C CNN
	6    3400 8200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 6EC6B6DC
P 9250 10950
F 0 "#PWR025" H 9250 10700 50  0001 C CNN
F 1 "GND" H 9255 10777 50  0000 C CNN
F 2 "" H 9250 10950 50  0001 C CNN
F 3 "" H 9250 10950 50  0001 C CNN
	1    9250 10950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 10050 9250 10050
Wire Wire Line
	9250 10050 9250 10300
Wire Wire Line
	9350 10300 9250 10300
Connection ~ 9250 10300
Wire Wire Line
	9250 10300 9250 10550
Wire Wire Line
	9350 10550 9250 10550
Connection ~ 9250 10550
NoConn ~ 9850 10050
NoConn ~ 9850 10300
NoConn ~ 9850 10800
Wire Wire Line
	4800 9050 4800 7550
Wire Wire Line
	1700 9150 2950 9150
Wire Wire Line
	1700 9250 2950 9250
Wire Wire Line
	2750 8850 2950 8850
Wire Wire Line
	1700 8950 2950 8950
Wire Wire Line
	6300 4600 6200 4600
Wire Wire Line
	6200 4600 6200 4550
Wire Wire Line
	6300 4600 6300 5000
Wire Wire Line
	5850 6100 6400 6100
$Comp
L CPU2908CLocal:74HC74 U25
U 1 1 72398860
P 6800 5600
F 0 "U25" H 6800 5950 50  0000 C CNN
F 1 "74HC74" H 6800 5850 50  0000 C CNN
F 2 "Footprints:MC74HC74ADG" H 6900 5500 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 6850 5883 50  0001 C CNN
	1    6800 5600
	1    0    0    -1  
$EndComp
Connection ~ 4050 4150
Wire Wire Line
	4050 4150 4050 4600
Wire Wire Line
	4050 2800 4050 4150
Wire Wire Line
	3900 4000 3900 3800
Wire Wire Line
	1550 4050 3900 4050
$Comp
L CPU2908CLocal:74HC74 U17
U 1 1 729F76D2
P 3500 3700
F 0 "U17" H 3550 4075 50  0000 C CNN
F 1 "MC74HC74A" H 3550 3984 50  0000 C CNN
F 2 "Footprints:MC74HC74ADG" H 3500 3700 50  0001 C CNN
F 3 "https://www.onsemi.jp/PowerSolutions/document/MC74HC74A-D.PDF" H 3500 3700 50  0001 C CNN
	1    3500 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4000 3900 4050
Connection ~ 3900 4000
Wire Wire Line
	1550 3700 1550 4050
Wire Wire Line
	1500 4150 4050 4150
Wire Wire Line
	1500 3500 1500 4150
$Comp
L CPU2908CLocal:74HC74 U17
U 2 1 730663F8
P 3450 4650
F 0 "U17" H 3500 5025 50  0000 C CNN
F 1 "MC74HC74A" H 3500 4934 50  0000 C CNN
F 2 "Footprints:MC74HC74ADG" H 3450 4650 50  0001 C CNN
F 3 "https://www.onsemi.jp/PowerSolutions/document/MC74HC74A-D.PDF" H 3450 4650 50  0001 C CNN
	2    3450 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 4650 2950 4650
Wire Wire Line
	2900 4750 3150 4750
Wire Wire Line
	3900 4550 3900 4600
Wire Wire Line
	2950 3700 3200 3700
Wire Wire Line
	2900 3800 3200 3800
$Comp
L power:+5V #PWR028
U 1 1 7378C4E4
P 3050 3350
F 0 "#PWR028" H 3050 3200 50  0001 C CNN
F 1 "+5V" H 3065 3523 50  0000 C CNN
F 2 "" H 3050 3350 50  0001 C CNN
F 3 "" H 3050 3350 50  0001 C CNN
	1    3050 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 5150 1950 5400
Wire Wire Line
	1400 5150 1950 5150
$Comp
L CPU2908CLocal:74HC74 U10
U 1 1 73CCC1A8
P 1400 5500
F 0 "U10" H 1200 5750 50  0000 C CNN
F 1 "MC74HC74A" H 1600 5750 50  0000 C CNN
F 2 "Footprints:MC74HC74ADG" H 1400 5500 50  0001 C CNN
F 3 "https://www.onsemi.jp/PowerSolutions/document/MC74HC74A-D.PDF" H 1400 5500 50  0001 C CNN
	1    1400 5500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR026
U 1 1 73E86EE0
P 10350 9800
F 0 "#PWR026" H 10350 9650 50  0001 C CNN
F 1 "+5V" H 10365 9973 50  0000 C CNN
F 2 "" H 10350 9800 50  0001 C CNN
F 3 "" H 10350 9800 50  0001 C CNN
	1    10350 9800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 10100 10350 10100
Connection ~ 10350 10100
Wire Wire Line
	10500 10200 10350 10200
Connection ~ 10350 10200
Wire Wire Line
	10350 10200 10350 10100
NoConn ~ 11200 10100
NoConn ~ 11200 10300
$Comp
L CPU2908CLocal:74HC74 U10
U 2 1 73FAEAEA
P 10800 10200
F 0 "U10" H 10600 10450 50  0000 C CNN
F 1 "MC74HC74A" H 11000 10450 50  0000 C CNN
F 2 "Footprints:MC74HC74ADG" H 10800 10200 50  0001 C CNN
F 3 "https://www.onsemi.jp/PowerSolutions/document/MC74HC74A-D.PDF" H 10800 10200 50  0001 C CNN
	2    10800 10200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 10200 10350 10300
$Comp
L CPU2908CLocal:74HC86 U11
U 2 1 74344EC1
P 4550 6800
F 0 "U11" H 4550 7125 50  0000 C CNN
F 1 "74HC86" H 4550 7034 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 4550 6800 50  0001 C CNN
F 3 "" H 4550 6800 50  0000 C CNN
	2    4550 6800
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC86 U11
U 1 1 743490C8
P 1750 9850
F 0 "U11" H 1750 10175 50  0000 C CNN
F 1 "74HC86" H 1750 10084 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 1750 9850 50  0001 C CNN
F 3 "" H 1750 9850 50  0000 C CNN
	1    1750 9850
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC86 U11
U 3 1 74349CE6
P 8650 10050
F 0 "U11" H 8650 10375 50  0000 C CNN
F 1 "74HC86" H 8650 10284 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 8650 10050 50  0001 C CNN
F 3 "" H 8650 10050 50  0000 C CNN
	3    8650 10050
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC86 U11
U 4 1 7434A944
P 8650 10550
F 0 "U11" H 8650 10875 50  0000 C CNN
F 1 "74HC86" H 8650 10784 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 8650 10550 50  0001 C CNN
F 3 "" H 8650 10550 50  0000 C CNN
	4    8650 10550
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC32 U24
U 2 1 744B4145
P 5100 4100
F 0 "U24" H 5100 4425 50  0000 C CNN
F 1 "74HC32" H 5100 4334 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 5100 4100 50  0001 C CNN
F 3 "" H 5100 4100 50  0000 C CNN
	2    5100 4100
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HCT273 U33
U 1 1 79FF3FB7
P 12300 3750
F 0 "U33" H 12300 4475 50  0000 C CNN
F 1 "74HCT273D" H 12300 4384 50  0000 C CNN
F 2 "digikey-footprints:SOIC-20_W7.5mm" H 12300 3750 50  0001 C CNN
F 3 "" H 12300 3750 50  0000 C CNN
	1    12300 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10850 1750 10850 1925
$Comp
L CPU2908CLocal:MC74ACT125 U118
U 3 1 7A5DEE8A
P 10850 2150
F 0 "U118" H 10850 2100 50  0000 L CNN
F 1 "MC74ACT125" H 10600 2050 50  0000 L CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 10750 2150 50  0001 C CNN
F 3 "" H 10750 2150 50  0000 C CNN
	3    10850 2150
	0    -1   1    0   
$EndComp
$Comp
L CPU2908CLocal:MC74ACT125 U118
U 2 1 7A5DF318
P 10600 2150
F 0 "U118" H 10600 2100 50  0000 L CNN
F 1 "MC74ACT125" H 10350 2050 50  0000 L CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 10500 2150 50  0001 C CNN
F 3 "" H 10500 2150 50  0000 C CNN
	2    10600 2150
	0    -1   1    0   
$EndComp
$Comp
L CPU2908CLocal:MC74ACT125 U118
U 1 1 7A5DF9B1
P 10350 2150
F 0 "U118" H 10350 2100 50  0000 L CNN
F 1 "MC74ACT125" H 10100 2050 50  0000 L CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 10250 2150 50  0001 C CNN
F 3 "" H 10250 2150 50  0000 C CNN
	1    10350 2150
	0    -1   1    0   
$EndComp
Wire Wire Line
	11100 2600 11100 2350
Wire Wire Line
	9600 2600 11100 2600
Wire Wire Line
	10400 3100 10600 3100
Wire Wire Line
	10600 3100 10600 2350
Wire Wire Line
	10350 1750 10350 1925
Wire Wire Line
	10350 2350 10350 2500
$Comp
L power:GND #PWR030
U 1 1 7AD78937
P 11250 2400
F 0 "#PWR030" H 11250 2150 50  0001 C CNN
F 1 "GND" H 11255 2227 50  0000 C CNN
F 2 "" H 11250 2400 50  0001 C CNN
F 3 "" H 11250 2400 50  0001 C CNN
	1    11250 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10850 2550 10850 2350
Wire Wire Line
	9650 2550 10850 2550
Wire Wire Line
	11000 2150 11000 2400
Wire Wire Line
	11000 2400 11250 2400
Connection ~ 11250 2400
Connection ~ 11000 2400
Wire Wire Line
	11250 2150 11250 2400
Text Label 10350 2500 1    50   ~ 0
D31B
Wire Wire Line
	10500 2150 10500 2400
Wire Wire Line
	10500 2400 10750 2400
Wire Wire Line
	10750 2150 10750 2400
Connection ~ 10750 2400
Wire Wire Line
	10750 2400 11000 2400
Text Label 10600 2650 1    50   ~ 0
D23B
Text Label 8200 5100 2    50   ~ 0
D23B
Text Notes 6850 8200 0    50   ~ 0
HCT1G
Text Notes 850  5850 0    50   ~ 0
TC7WH74FU
$Comp
L CPU2908CLocal:74HC11 U20
U 1 1 80C8D5FE
P 4150 8200
F 0 "U20" H 4150 8525 50  0000 C CNN
F 1 "SN74HC11D" H 4150 8434 50  0000 C CNN
F 2 "Footprints:SN74HC11D" H 3950 8200 50  0001 C CNN
F 3 "5.3mm" H 3950 8200 50  0001 C CNN
	1    4150 8200
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC11 U20
U 2 1 80C90576
P 5950 8750
F 0 "U20" H 5950 9075 50  0000 C CNN
F 1 "SN74HC11D" H 5950 8984 50  0000 C CNN
F 2 "Footprints:SN74HC11D" H 5750 8750 50  0001 C CNN
F 3 "5.3mm" H 5750 8750 50  0001 C CNN
	2    5950 8750
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC11 U20
U 3 1 80C923DB
P 5950 9250
F 0 "U20" H 5950 9575 50  0000 C CNN
F 1 "SN74HC11D" H 5950 9484 50  0000 C CNN
F 2 "Footprints:SN74HC11D" H 5750 9250 50  0001 C CNN
F 3 "5.3mm" H 5750 9250 50  0001 C CNN
	3    5950 9250
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:MC74ACT125 U118
U 4 1 8106341F
P 11100 2150
F 0 "U118" H 11100 2100 50  0000 L CNN
F 1 "MC74ACT125" H 10850 2050 50  0000 L CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 11000 2150 50  0001 C CNN
F 3 "" H 11000 2150 50  0000 C CNN
	4    11100 2150
	0    -1   1    0   
$EndComp
$Comp
L power:GNDD #PWR0101
U 1 1 810AB3F2
P 14900 5450
F 0 "#PWR0101" H 14900 5200 50  0001 C CNN
F 1 "GNDD" H 14904 5295 50  0000 C CNN
F 2 "" H 14900 5450 50  0001 C CNN
F 3 "" H 14900 5450 50  0001 C CNN
	1    14900 5450
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:TC74HCT574 U29
U 1 1 5DD38F4E
P 9400 6800
F 0 "U29" H 9400 7525 50  0000 C CNN
F 1 "SN74HCT574" H 9400 7434 50  0000 C CNN
F 2 "Footprints:SN74HCT574NSR" H 9400 6800 50  0001 C CNN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=18123&prodName=TC74VHC574F" H 9400 6800 50  0001 C CNN
	1    9400 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1650 2750 1700
Wire Wire Line
	2850 1450 2850 1900
Connection ~ 2850 1900
Connection ~ 2850 2100
Wire Wire Line
	2850 2100 2850 2300
Wire Wire Line
	2850 2300 3300 2300
Wire Wire Line
	2850 2100 3300 2100
Wire Wire Line
	2850 1900 3300 1900
Wire Wire Line
	2450 1650 2750 1650
Text Label 1950 900  0    50   ~ 0
DataIn[0..7]
Wire Bus Line
	2600 900  2600 700 
Connection ~ 2600 900 
Wire Bus Line
	1750 900  2600 900 
Text Label 1350 1650 0    50   ~ 0
DO_JUMP
Entry Wire Line
	2600 2100 2700 2200
Entry Wire Line
	2600 1900 2700 2000
Entry Wire Line
	2600 1700 2700 1800
Entry Wire Line
	2600 1500 2700 1600
Wire Wire Line
	850  2600 1200 2600
Text HLabel 850  2600 0    50   Input ~ 0
E
Text HLabel 1750 900  0    50   Input ~ 0
DataIn[0..7]
Wire Wire Line
	2750 1700 3300 1700
$Comp
L power:GNDD #PWR?
U 1 1 61280D2C
P 5650 5350
AR Path="/5DC31E28/67011706/61280D2C" Ref="#PWR?"  Part="1" 
AR Path="/60A8F51F/61280D2C" Ref="#PWR?"  Part="1" 
AR Path="/5DC31740/61280D2C" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 5650 5100 50  0001 C CNN
F 1 "GNDD" H 5654 5195 50  0000 C CNN
F 2 "" H 5650 5350 50  0001 C CNN
F 3 "" H 5650 5350 50  0001 C CNN
	1    5650 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R189
U 1 1 613C3402
P 5400 5300
AR Path="/5DC31740/613C3402" Ref="R189"  Part="1" 
AR Path="/5DC31E28/67011706/613C3402" Ref="R?"  Part="1" 
AR Path="/60A8F51F/613C3402" Ref="R?"  Part="1" 
F 0 "R189" V 5515 5300 50  0000 C CNN
F 1 "47K" V 5606 5300 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 5330 5300 50  0001 C CNN
F 3 "~" H 5400 5300 50  0001 C CNN
	1    5400 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 5300 5250 5300
$Comp
L CPU2908CLocal:LED_W D?
U 1 1 613C3409
P 4950 5300
AR Path="/5DC31E28/67011706/613C3409" Ref="D?"  Part="1" 
AR Path="/60A8F51F/613C3409" Ref="D?"  Part="1" 
AR Path="/5DC31740/613C3409" Ref="D184"  Part="1" 
F 0 "D184" H 4943 5423 50  0000 C CNN
F 1 "LED_W" H 4943 5514 50  0000 C CNN
F 2 "LEDs:LED_0402" H 4950 5300 50  0001 C CNN
F 3 "~" H 4950 5300 50  0001 C CNN
	1    4950 5300
	-1   0    0    1   
$EndComp
Wire Wire Line
	5550 5300 5650 5300
Wire Wire Line
	4800 5300 4600 5300
Wire Wire Line
	4600 5300 4600 5100
Connection ~ 4600 5100
Wire Wire Line
	4600 5100 6250 5100
Wire Wire Line
	5650 5300 5650 5350
$Comp
L power:GNDD #PWR?
U 1 1 61838774
P 7200 4200
AR Path="/5DC31E28/67011706/61838774" Ref="#PWR?"  Part="1" 
AR Path="/60A8F51F/61838774" Ref="#PWR?"  Part="1" 
AR Path="/5DC31740/61838774" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 7200 3950 50  0001 C CNN
F 1 "GNDD" H 7204 4045 50  0000 C CNN
F 2 "" H 7200 4200 50  0001 C CNN
F 3 "" H 7200 4200 50  0001 C CNN
	1    7200 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 4150 6800 4150
$Comp
L CPU2908CLocal:LED_W D?
U 1 1 61838781
P 6500 4150
AR Path="/5DC31E28/67011706/61838781" Ref="D?"  Part="1" 
AR Path="/60A8F51F/61838781" Ref="D?"  Part="1" 
AR Path="/5DC31740/61838781" Ref="D185"  Part="1" 
F 0 "D185" H 6493 3895 50  0000 C CNN
F 1 "LED_W" H 6493 3986 50  0000 C CNN
F 2 "LEDs:LED_0402" H 6500 4150 50  0001 C CNN
F 3 "~" H 6500 4150 50  0001 C CNN
	1    6500 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	7100 4150 7200 4150
Wire Wire Line
	7200 4150 7200 4200
$Comp
L power:GNDD #PWR?
U 1 1 619816C3
P 2800 2800
AR Path="/5DC31E28/67011706/619816C3" Ref="#PWR?"  Part="1" 
AR Path="/60A8F51F/619816C3" Ref="#PWR?"  Part="1" 
AR Path="/5DC31740/619816C3" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 2800 2550 50  0001 C CNN
F 1 "GNDD" H 2804 2645 50  0000 C CNN
F 2 "" H 2800 2800 50  0001 C CNN
F 3 "" H 2800 2800 50  0001 C CNN
	1    2800 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2750 2400 2750
$Comp
L CPU2908CLocal:LED_W D?
U 1 1 619816D0
P 2100 2750
AR Path="/5DC31E28/67011706/619816D0" Ref="D?"  Part="1" 
AR Path="/60A8F51F/619816D0" Ref="D?"  Part="1" 
AR Path="/5DC31740/619816D0" Ref="D183"  Part="1" 
F 0 "D183" H 2093 2873 50  0000 C CNN
F 1 "LED_W" H 2093 2964 50  0000 C CNN
F 2 "LEDs:LED_0402" H 2100 2750 50  0001 C CNN
F 3 "~" H 2100 2750 50  0001 C CNN
	1    2100 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	2700 2750 2800 2750
Wire Wire Line
	2800 2750 2800 2800
$Comp
L Device:R R187
U 1 1 61A25E44
P 2550 2650
AR Path="/5DC31740/61A25E44" Ref="R187"  Part="1" 
AR Path="/5DC31E28/67011706/61A25E44" Ref="R?"  Part="1" 
AR Path="/60A8F51F/61A25E44" Ref="R?"  Part="1" 
F 0 "R187" V 2350 2650 50  0000 C CNN
F 1 "47K" V 2450 2650 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 2480 2650 50  0001 C CNN
F 3 "~" H 2550 2650 50  0001 C CNN
	1    2550 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 2650 2400 2650
$Comp
L CPU2908CLocal:LED_W D?
U 1 1 61A25E4B
P 2100 2650
AR Path="/5DC31E28/67011706/61A25E4B" Ref="D?"  Part="1" 
AR Path="/60A8F51F/61A25E4B" Ref="D?"  Part="1" 
AR Path="/5DC31740/61A25E4B" Ref="D182"  Part="1" 
F 0 "D182" H 2093 2350 50  0000 C CNN
F 1 "LED_W" H 2093 2450 50  0000 C CNN
F 2 "LEDs:LED_0402" H 2100 2650 50  0001 C CNN
F 3 "~" H 2100 2650 50  0001 C CNN
	1    2100 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	2700 2650 2800 2650
Wire Wire Line
	2800 2650 2800 2750
Connection ~ 2800 2750
Wire Wire Line
	1750 2500 1750 2750
Wire Wire Line
	1750 2750 1950 2750
Wire Wire Line
	1750 2500 3300 2500
Wire Wire Line
	1950 2650 1800 2650
Wire Wire Line
	1800 2650 1800 1650
$Comp
L Device:R R188
U 1 1 619816C9
P 2550 2750
AR Path="/5DC31740/619816C9" Ref="R188"  Part="1" 
AR Path="/5DC31E28/67011706/619816C9" Ref="R?"  Part="1" 
AR Path="/60A8F51F/619816C9" Ref="R?"  Part="1" 
F 0 "R188" V 2665 2750 50  0000 C CNN
F 1 "47K" V 2756 2750 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 2480 2750 50  0001 C CNN
F 3 "~" H 2550 2750 50  0001 C CNN
	1    2550 2750
	0    1    1    0   
$EndComp
$Comp
L Device:R R190
U 1 1 748C2A6E
P 6950 4150
AR Path="/5DC31740/748C2A6E" Ref="R190"  Part="1" 
AR Path="/5DC31E28/67011706/748C2A6E" Ref="R?"  Part="1" 
AR Path="/60A8F51F/748C2A6E" Ref="R?"  Part="1" 
F 0 "R190" V 6743 4150 50  0000 C CNN
F 1 "47K" V 6834 4150 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 6880 4150 50  0001 C CNN
F 3 "~" H 6950 4150 50  0001 C CNN
	1    6950 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	8700 4600 9050 4600
Wire Wire Line
	9050 4700 8700 4700
Wire Wire Line
	9050 4800 8700 4800
Wire Wire Line
	9050 4900 8700 4900
Wire Wire Line
	9050 5000 8700 5000
Wire Wire Line
	9050 5100 8700 5100
Wire Wire Line
	9050 5200 8700 5200
Wire Wire Line
	9050 5300 8700 5300
Text Label 9050 4600 2    50   ~ 0
D10
Text Label 9050 4700 2    50   ~ 0
D11
Text Label 9050 4800 2    50   ~ 0
D12
Text Label 9050 4900 2    50   ~ 0
D13
Text Label 9050 5000 2    50   ~ 0
D14
Text Label 9050 5100 2    50   ~ 0
D15
Text Label 9050 5200 2    50   ~ 0
D16
Text Label 9050 5300 2    50   ~ 0
D17
Wire Wire Line
	4100 6900 4100 7450
$Comp
L CPU2908CLocal:74HC04 U19
U 3 1 78E1A0D3
P 2500 8850
F 0 "U19" H 2150 8950 50  0000 C CNN
F 1 "TC74VHCT04AFT" H 2800 8950 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 2400 8850 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/toshiba/TC74VHCT04AFT.pdf" H 2400 8850 50  0001 C CNN
	3    2500 8850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 4700 6500 4700
Wire Wire Line
	6500 4900 6200 4900
Wire Wire Line
	6350 4150 6350 4800
Wire Wire Line
	6500 5800 6400 5800
Wire Wire Line
	6400 5800 6400 6100
Connection ~ 6400 6100
Wire Wire Line
	6400 6100 7400 6100
Wire Wire Line
	6500 5000 6300 5000
Wire Wire Line
	7350 4700 7200 4700
Wire Wire Line
	6350 4800 6500 4800
Connection ~ 6350 4800
Wire Wire Line
	6350 5600 6500 5600
Wire Wire Line
	6350 4800 6350 5600
Wire Wire Line
	6300 5000 6300 5500
Wire Wire Line
	6300 5500 6500 5500
Connection ~ 6300 5000
Wire Wire Line
	7200 5700 7300 5700
Connection ~ 2900 4750
Wire Wire Line
	2900 4750 2900 5100
Wire Wire Line
	2900 3800 2900 4750
Wire Wire Line
	2950 4250 2950 4650
Wire Wire Line
	3050 3350 3050 3600
Wire Wire Line
	3050 3600 3200 3600
Wire Wire Line
	3050 4550 3150 4550
Connection ~ 3050 3600
Wire Wire Line
	3150 4850 3000 4850
Connection ~ 3000 4850
Wire Wire Line
	3000 4850 3000 5000
Wire Wire Line
	3050 3600 3050 4550
Wire Wire Line
	3200 3900 3000 3900
Wire Wire Line
	3000 3900 3000 4850
Wire Wire Line
	1100 5700 1100 5850
Wire Wire Line
	1100 5850 1550 5850
Wire Wire Line
	1100 5400 1000 5400
Wire Wire Line
	1000 5400 1000 5250
Wire Wire Line
	1800 5400 1950 5400
Wire Wire Line
	10500 10300 10350 10300
Connection ~ 10350 10300
Wire Wire Line
	10350 10300 10350 10400
Wire Wire Line
	10500 10400 10350 10400
Wire Wire Line
	10350 9800 10350 10100
Wire Wire Line
	3950 2900 3950 3600
Wire Wire Line
	3900 3600 3950 3600
Connection ~ 3950 3600
Wire Wire Line
	3950 3600 3950 4500
Wire Wire Line
	3850 4750 4000 4750
Wire Wire Line
	4000 4200 4000 4750
Wire Wire Line
	4000 4750 4000 5650
Connection ~ 4000 4750
Wire Wire Line
	3900 4550 3850 4550
$Comp
L CPU2908CLocal:74HC74 U25
U 2 1 6130188F
P 6800 4800
F 0 "U25" H 6850 5175 50  0000 C CNN
F 1 "74HC74" H 6850 5084 50  0000 C CNN
F 2 "Footprints:MC74HC74ADG" H 6800 4800 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 6800 4800 50  0001 C CNN
	2    6800 4800
	1    0    0    -1  
$EndComp
Wire Bus Line
	8600 4050 11450 4050
Connection ~ 11450 4050
Entry Wire Line
	11450 4650 11550 4750
Entry Wire Line
	11450 4850 11550 4950
Entry Wire Line
	11450 5150 11550 5250
Entry Wire Line
	11450 5050 11550 5150
Entry Wire Line
	11450 4950 11550 5050
NoConn ~ 11800 6850
Entry Wire Line
	11450 6750 11550 6850
NoConn ~ 11800 6350
Entry Wire Line
	11450 6250 11550 6350
NoConn ~ 11800 6250
Entry Wire Line
	11450 6150 11550 6250
Wire Wire Line
	12850 6550 13350 6550
Wire Wire Line
	12850 6450 13350 6450
NoConn ~ 12850 6350
NoConn ~ 12850 6250
NoConn ~ 12850 6950
NoConn ~ 12850 6850
Wire Wire Line
	12850 6750 13350 6750
Wire Wire Line
	12850 6650 13350 6650
Wire Wire Line
	12800 5050 13250 5050
Wire Wire Line
	11550 5050 12000 5050
Wire Wire Line
	11550 4950 12000 4950
Wire Wire Line
	12800 4950 13250 4950
Wire Wire Line
	12800 4850 13250 4850
Wire Wire Line
	12000 4850 11550 4850
Wire Wire Line
	11550 4750 12000 4750
Wire Wire Line
	12800 4750 13250 4750
NoConn ~ 12800 5450
Wire Wire Line
	12800 5350 13250 5350
Wire Wire Line
	12800 5250 13250 5250
Wire Wire Line
	11550 5250 12000 5250
Wire Wire Line
	11550 5150 12000 5150
Wire Wire Line
	12800 5150 13250 5150
Connection ~ 11300 7150
Wire Wire Line
	11300 7150 11050 7150
Connection ~ 11300 5650
Wire Wire Line
	11300 5650 11300 7150
Wire Wire Line
	11300 4150 11300 5650
Connection ~ 11350 7250
Wire Wire Line
	11350 7250 11050 7250
Connection ~ 11350 5750
Wire Wire Line
	11350 5750 11350 7250
Wire Wire Line
	11350 4250 11350 5750
Entry Wire Line
	11450 6650 11550 6750
Entry Wire Line
	11450 6550 11550 6650
Entry Wire Line
	11450 6450 11550 6550
$Comp
L CPU2908CLocal:74HCT273 U35
U 1 1 79FF517A
P 12450 6750
F 0 "U35" H 12450 7475 50  0000 C CNN
F 1 "74HCT273D" H 12450 7384 50  0000 C CNN
F 2 "digikey-footprints:SOIC-20_W7.5mm" H 12450 6750 50  0001 C CNN
F 3 "" H 12450 6750 50  0000 C CNN
	1    12450 6750
	1    0    0    -1  
$EndComp
Entry Wire Line
	11450 6350 11550 6450
$Comp
L CPU2908CLocal:74HCT273 U34
U 1 1 79FF4913
P 12400 5250
F 0 "U34" H 12400 5975 50  0000 C CNN
F 1 "74HCT273D" H 12400 5884 50  0000 C CNN
F 2 "digikey-footprints:SOIC-20_W7.5mm" H 12400 5250 50  0001 C CNN
F 3 "" H 12400 5250 50  0000 C CNN
	1    12400 5250
	1    0    0    -1  
$EndComp
Entry Wire Line
	11450 5250 11550 5350
$Comp
L power:GND #PWR0125
U 1 1 977A77BE
P 11900 7400
F 0 "#PWR0125" H 11900 7150 50  0001 C CNN
F 1 "GND" H 11905 7227 50  0000 C CNN
F 2 "" H 11900 7400 50  0001 C CNN
F 3 "" H 11900 7400 50  0001 C CNN
	1    11900 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	12050 6950 11900 6950
Wire Wire Line
	12050 6850 11900 6850
Wire Wire Line
	12050 6250 11900 6250
Wire Wire Line
	11300 7150 12050 7150
Wire Wire Line
	11300 5650 12000 5650
Wire Wire Line
	11350 7250 12050 7250
Wire Wire Line
	11350 5750 12000 5750
Text Label 11600 6850 0    50   ~ 0
D30
Text Label 11600 6750 0    50   ~ 0
D29
Text Label 11600 6650 0    50   ~ 0
D28
Text Label 11600 6550 0    50   ~ 0
D27
Text Label 11600 6450 0    50   ~ 0
D26
Text Label 11600 6350 0    50   ~ 0
D25
Text Label 11600 6250 0    50   ~ 0
D24
Text Label 11600 5350 0    50   ~ 0
D22
Wire Wire Line
	11550 6750 12050 6750
Wire Wire Line
	11550 6650 12050 6650
Wire Wire Line
	11550 6550 12050 6550
Wire Wire Line
	11550 6450 12050 6450
Wire Wire Line
	11550 5350 12000 5350
Wire Wire Line
	11900 5450 11900 6250
Wire Wire Line
	11900 5450 12000 5450
Connection ~ 11900 6250
Wire Wire Line
	11900 6350 11900 6250
Connection ~ 11900 6350
Wire Wire Line
	11900 6350 12050 6350
Wire Wire Line
	11900 6350 11900 6850
Connection ~ 11900 6850
Wire Wire Line
	11900 6850 11900 6950
Connection ~ 11900 6950
Wire Wire Line
	11900 6950 11900 7400
Wire Wire Line
	11550 6850 11800 6850
Wire Wire Line
	11550 6350 11800 6350
Wire Wire Line
	11550 6250 11800 6250
NoConn ~ 9850 10550
$Comp
L CPU2908CLocal:74HC04 U26
U 1 1 6F12C7EF
P 9600 10550
F 0 "U26" H 9300 10600 50  0000 C CNN
F 1 "TC74VHCT04AFT" H 9950 10650 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 9500 10550 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/toshiba/TC74VHCT04AFT.pdf" H 9500 10550 50  0001 C CNN
	1    9600 10550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 9700 9350 9700
NoConn ~ 9850 9700
Wire Wire Line
	9250 9700 9250 10050
Connection ~ 9250 10050
Wire Wire Line
	8950 5600 8950 5700
Wire Wire Line
	8950 5600 9050 5600
$Comp
L power:GND #PWR0126
U 1 1 5E9B433C
P 8950 5700
F 0 "#PWR0126" H 8950 5450 50  0001 C CNN
F 1 "GND" H 8955 5527 50  0000 C CNN
F 2 "" H 8950 5700 50  0001 C CNN
F 3 "" H 8950 5700 50  0001 C CNN
	1    8950 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 10550 9250 10800
Wire Wire Line
	9250 10800 9350 10800
Connection ~ 9250 10800
Wire Wire Line
	9250 10800 9250 10950
Wire Wire Line
	950  10450 950  10550
Connection ~ 950  10550
Wire Wire Line
	8750 2700 8650 2700
Wire Wire Line
	8650 2700 8650 2600
$Comp
L power:+5V #PWR0104
U 1 1 5F7A4074
P 8650 2600
F 0 "#PWR0104" H 8650 2450 50  0001 C CNN
F 1 "+5V" H 8665 2773 50  0000 C CNN
F 2 "" H 8650 2600 50  0001 C CNN
F 3 "" H 8650 2600 50  0001 C CNN
	1    8650 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 1650 1800 1650
$Comp
L CPU2908CLocal:74HC04 U26
U 2 1 6E5352A0
P 2200 1650
F 0 "U26" H 2200 1925 50  0000 C CNN
F 1 "TC74VHCT04AFT" H 2200 1834 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 2100 1650 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/toshiba/TC74VHCT04AFT.pdf" H 2100 1650 50  0001 C CNN
	2    2200 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1650 1800 1650
Connection ~ 1800 1650
Wire Wire Line
	1350 10550 1750 10550
Wire Wire Line
	1350 10750 1750 10750
Wire Wire Line
	7850 5100 7850 5500
Wire Wire Line
	7850 7300 9000 7300
Wire Wire Line
	7850 5100 8500 5100
Wire Bus Line
	1600 7900 950  7900
Text Label 950  7900 0    50   ~ 0
DataIn[0..7]
Text Label 1750 8050 0    50   ~ 0
DataIn0
Text Label 1750 8150 0    50   ~ 0
DataIn1
Text Label 1750 8250 0    50   ~ 0
DataIn2
Text Label 1750 8350 0    50   ~ 0
DataIn3
Text Label 1750 8850 0    50   ~ 0
DataIn4
Text Label 1750 8950 0    50   ~ 0
DataIn5
Text Label 1750 9150 0    50   ~ 0
DataIn6
Text Label 1750 9250 0    50   ~ 0
DataIn7
$Comp
L CPU2908CLocal:74HC04 U12
U 5 1 5E97AEAA
P 9600 9700
F 0 "U12" H 9250 9750 50  0000 C CNN
F 1 "TC74VHCT04AFT" H 9950 9750 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 9500 9700 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/toshiba/TC74VHCT04AFT.pdf" H 9500 9700 50  0001 C CNN
	5    9600 9700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 5500 9050 5500
Wire Wire Line
	8200 5500 7850 5500
Connection ~ 7850 5500
Wire Wire Line
	7850 5500 7850 7300
Wire Wire Line
	7000 9050 7150 9050
$Comp
L 74xGxx:74AHC1G04 U41
U 1 1 60111BB4
P 3200 9950
F 0 "U41" H 3175 10217 50  0000 C CNN
F 1 "74AHC1G04" H 3175 10126 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 3200 9950 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 3200 9950 50  0001 C CNN
	1    3200 9950
	1    0    0    -1  
$EndComp
Text Label 3600 9950 2    50   ~ 0
JG
Wire Wire Line
	3400 9950 3600 9950
$Comp
L CPU2908CLocal:74HC08 U13
U 1 1 61984C86
P 1950 3600
F 0 "U13" H 1950 3925 50  0000 C CNN
F 1 "74HC08D" H 1950 3834 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 1750 3600 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT08.pdf" H 1750 3600 50  0001 C CNN
	1    1950 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 8850 4900 9350
Wire Wire Line
	4900 9350 5000 9350
Connection ~ 4900 8850
$Comp
L 74xGxx:74AHC1G04 U42
U 1 1 5E782E2D
P 5200 9350
F 0 "U42" H 5175 9617 50  0000 C CNN
F 1 "74AHC1G04" H 5175 9526 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 5200 9350 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 5200 9350 50  0001 C CNN
	1    5200 9350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 9350 5650 9350
Wire Wire Line
	4600 7300 4900 7300
Wire Wire Line
	4700 7400 4900 7400
$Comp
L CPU2908C-rescue:74AHC1G32-74xGxx U?
U 1 1 5E44ED6F
P 5200 7350
AR Path="/5E44ED6F" Ref="U?"  Part="1" 
AR Path="/5DC31740/5E44ED6F" Ref="U43"  Part="1" 
F 0 "U43" H 5175 7617 50  0000 C CNN
F 1 "74AHC1G32" H 5175 7526 50  0000 C CNN
F 2 "Housings_SSOP:TSOP-5_1.65x3.05mm_Pitch0.95mm" H 5200 7350 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 5200 7350 50  0001 C CNN
	1    5200 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 7350 5600 7350
Wire Wire Line
	7000 8850 7000 9050
Wire Wire Line
	7000 8850 6950 8850
Wire Wire Line
	7150 8850 7100 8850
Wire Wire Line
	7100 8850 7100 8350
Wire Wire Line
	5550 8350 7100 8350
$Comp
L CPU2908CLocal:74HC32 U15
U 4 1 5E85925A
P 8650 9500
F 0 "U15" H 8650 9825 50  0000 C CNN
F 1 "74HC32" H 8650 9734 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 8650 9500 50  0001 C CNN
F 3 "" H 8650 9500 50  0000 C CNN
	4    8650 9500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 9400 8100 9400
Wire Wire Line
	8100 9400 8100 9600
Connection ~ 8100 9950
Wire Wire Line
	8350 9600 8100 9600
Connection ~ 8100 9600
Wire Wire Line
	8100 9600 8100 9950
NoConn ~ 8950 9500
Wire Wire Line
	14400 1900 14500 1900
Wire Wire Line
	5200 3300 5800 3300
Wire Wire Line
	5200 3100 5800 3100
Wire Wire Line
	5200 2900 5800 2900
Wire Wire Line
	5200 1750 5800 1750
Wire Wire Line
	5200 1550 5800 1550
Wire Wire Line
	5200 1350 5800 1350
Wire Bus Line
	7150 1650 7150 3550
Wire Bus Line
	7150 1200 7150 1650
Wire Bus Line
	2600 700  4700 700 
Wire Bus Line
	13600 4900 13600 5750
Wire Bus Line
	13450 5750 13450 6900
Wire Bus Line
	1800 6000 1800 6550
Wire Bus Line
	9750 1650 11450 1650
Wire Bus Line
	2600 900  2600 2200
Wire Bus Line
	8600 4050 8600 5300
Wire Bus Line
	8600 6150 8600 7000
Wire Bus Line
	5250 1000 5250 3550
Wire Bus Line
	1600 7900 1600 9250
Wire Bus Line
	11450 1650 11450 4050
Wire Bus Line
	4850 1000 4850 2650
Wire Bus Line
	5100 1250 5100 3650
Wire Bus Line
	11450 4050 11450 7050
Wire Bus Line
	13350 1600 13350 5600
Wire Bus Line
	13600 1600 13600 4700
Wire Bus Line
	10200 4550 10200 9100
$EndSCHEMATC
