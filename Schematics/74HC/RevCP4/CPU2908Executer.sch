EESchema Schematic File Version 4
LIBS:CPU2908CP4-cache
EELAYER 29 0
EELAYER END
$Descr A2 23386 16535
encoding utf-8
Sheet 4 5
Title ""
Date "2019-08-28"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 22200 10350 2    50   Output ~ 0
DataOut_E[0..7]
Text HLabel 1050 5200 0    50   Input ~ 0
DataIn[0..7]
Text HLabel 15550 15950 2    50   Output ~ 0
AddrOut_E[0..15]
Wire Bus Line
	15550 15950 15250 15950
Text HLabel 850  900  0    50   Input ~ 0
Q
Text HLabel 850  700  0    50   Input ~ 0
E
Text HLabel 850  800  0    50   Input ~ 0
nE
Text HLabel 850  1000 0    50   Input ~ 0
nQ
Wire Wire Line
	850  800  1200 800 
Wire Wire Line
	850  1000 1200 1000
Text HLabel 1200 1300 0    50   Input ~ 0
RegCtrl[0..23]
Wire Wire Line
	21650 900  22050 900 
Wire Wire Line
	21650 1000 22050 1000
Wire Wire Line
	21650 1100 22050 1100
Wire Wire Line
	21650 1200 22050 1200
Wire Wire Line
	21650 1300 22050 1300
Wire Wire Line
	21650 1400 22050 1400
Wire Wire Line
	21650 1500 22050 1500
Wire Wire Line
	21650 1600 22050 1600
Text Label 21700 900  0    50   ~ 0
FlagOut0
Text Label 21700 1000 0    50   ~ 0
FlagOut1
Text Label 21700 1100 0    50   ~ 0
FlagOut2
Text Label 21700 1200 0    50   ~ 0
FlagOut3
Text Label 21700 1300 0    50   ~ 0
FlagOut4
Text Label 21700 1400 0    50   ~ 0
FlagOut5
Text Label 21700 1500 0    50   ~ 0
FlagOut6
Text Label 21700 1600 0    50   ~ 0
FlagOut7
Entry Wire Line
	22050 900  22150 1000
Entry Wire Line
	22050 1000 22150 1100
Entry Wire Line
	22050 1100 22150 1200
Entry Wire Line
	22050 1200 22150 1300
Entry Wire Line
	22050 1300 22150 1400
Entry Wire Line
	22050 1400 22150 1500
Entry Wire Line
	22050 1500 22150 1600
Entry Wire Line
	22050 1600 22150 1700
$Comp
L CPU2908CLocal:74HC157 U111
U 1 1 663C4A48
P 20050 1400
F 0 "U111" H 20050 2125 50  0000 C CNN
F 1 "74HC157" H 20050 2034 50  0000 C CNN
F 2 "Footprints:SN74HC157DR" H 20050 1400 50  0001 C CNN
F 3 "" H 20050 1400 50  0000 C CNN
	1    20050 1400
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC157 U112
U 1 1 663C4B23
P 20050 2800
F 0 "U112" H 20050 3525 50  0000 C CNN
F 1 "74HC157" H 20050 3434 50  0000 C CNN
F 2 "Footprints:SN74HC157DR" H 20050 2800 50  0001 C CNN
F 3 "" H 20050 2800 50  0000 C CNN
	1    20050 2800
	1    0    0    -1  
$EndComp
Entry Wire Line
	22150 900  22250 1000
Text Label 22700 1100 2    50   ~ 0
CarryFlag
Wire Wire Line
	20450 900  20850 900 
Wire Wire Line
	20450 1000 20850 1000
Wire Wire Line
	20450 2300 20600 2300
Wire Wire Line
	20600 2300 20600 1300
Wire Wire Line
	20600 1300 20850 1300
Wire Wire Line
	20650 1400 20850 1400
Wire Wire Line
	20700 1500 20850 1500
Wire Wire Line
	20750 1600 20850 1600
Entry Wire Line
	19200 2300 19300 2400
Entry Wire Line
	19200 2500 19300 2600
Entry Wire Line
	19200 2700 19300 2800
Wire Bus Line
	1200 1300 1350 1300
Wire Bus Line
	1350 1300 1350 1500
Wire Bus Line
	1350 1500 700  1500
Text Label 750  1500 0    50   ~ 0
RegCtrl[0..23]
Entry Wire Line
	700  1600 800  1700
Entry Wire Line
	700  1700 800  1800
Entry Wire Line
	700  1800 800  1900
Entry Wire Line
	700  1900 800  2000
Entry Wire Line
	700  2000 800  2100
Entry Wire Line
	700  2100 800  2200
Entry Wire Line
	700  2200 800  2300
Entry Wire Line
	700  2300 800  2400
Entry Wire Line
	700  2400 800  2500
Entry Wire Line
	700  2500 800  2600
Entry Wire Line
	700  2600 800  2700
Entry Wire Line
	700  2700 800  2800
Entry Wire Line
	700  2800 800  2900
Entry Wire Line
	700  2900 800  3000
Entry Wire Line
	700  3000 800  3100
Entry Wire Line
	700  3100 800  3200
Entry Wire Line
	700  3200 800  3300
Entry Wire Line
	700  3300 800  3400
Entry Wire Line
	700  3400 800  3500
Entry Wire Line
	700  3500 800  3600
Entry Wire Line
	700  3700 800  3800
Wire Wire Line
	800  1700 1700 1700
Wire Wire Line
	800  1800 1700 1800
Wire Wire Line
	800  1900 1700 1900
Wire Wire Line
	800  2000 1700 2000
Wire Wire Line
	800  2100 1700 2100
Wire Wire Line
	800  2200 1700 2200
Wire Wire Line
	800  2300 1700 2300
Wire Wire Line
	800  2400 1700 2400
Wire Wire Line
	800  2500 1700 2500
Wire Wire Line
	800  2600 1700 2600
Wire Wire Line
	800  2700 1700 2700
Wire Wire Line
	800  2800 1700 2800
Wire Wire Line
	800  2900 1700 2900
Wire Wire Line
	800  3000 1700 3000
Wire Wire Line
	800  3100 1700 3100
Wire Wire Line
	800  3200 1700 3200
Wire Wire Line
	800  3300 1700 3300
Wire Wire Line
	800  3400 1700 3400
Wire Wire Line
	800  3500 1700 3500
Wire Wire Line
	800  3600 1700 3600
Wire Wire Line
	800  3800 1700 3800
Text Label 800  1700 0    50   ~ 0
RegCtrl0
Text Label 800  1800 0    50   ~ 0
RegCtrl1
Text Label 800  1900 0    50   ~ 0
RegCtrl2
Text Label 800  2000 0    50   ~ 0
RegCtrl3
Text Label 800  2100 0    50   ~ 0
RegCtrl4
Text Label 800  2200 0    50   ~ 0
RegCtrl5
Text Label 800  2300 0    50   ~ 0
RegCtrl6
Text Label 800  2400 0    50   ~ 0
RegCtrl7
Text Label 800  2500 0    50   ~ 0
RegCtrl8
Text Label 800  2600 0    50   ~ 0
RegCtrl9
Text Label 800  2700 0    50   ~ 0
RegCtrl10
Text Label 800  2800 0    50   ~ 0
RegCtrl11
Text Label 800  2900 0    50   ~ 0
RegCtrl12
Text Label 800  3000 0    50   ~ 0
RegCtrl13
Text Label 800  3100 0    50   ~ 0
RegCtrl14
Text Label 800  3200 0    50   ~ 0
RegCtrl15
Text Label 800  3300 0    50   ~ 0
RegCtrl16
Text Label 800  3400 0    50   ~ 0
RegCtrl17
Text Label 800  3500 0    50   ~ 0
RegCtrl18
Text Label 800  3600 0    50   ~ 0
RegCtrl19
Text Label 800  3800 0    50   ~ 0
RegCtrl21
Text Label 800  3900 0    50   ~ 0
RegCtrl22
Entry Wire Line
	700  3800 800  3900
Wire Wire Line
	800  3900 1700 3900
Entry Wire Line
	1700 1700 1800 1800
Entry Wire Line
	1700 1800 1800 1900
Entry Wire Line
	1700 1900 1800 2000
Entry Wire Line
	1700 2000 1800 2100
Entry Wire Line
	1700 2100 1800 2200
Entry Wire Line
	1700 2200 1800 2300
Entry Wire Line
	1700 2700 1800 2800
Entry Wire Line
	1700 2800 1800 2900
Text Label 1300 1700 0    50   ~ 0
ALU_CY0
Text Label 1300 1800 0    50   ~ 0
ALU_CY1
Text Label 1300 1900 0    50   ~ 0
ALU_OP0
Text Label 1300 2000 0    50   ~ 0
ALU_OP1
Text Label 1300 2100 0    50   ~ 0
ALU_OP2
Text Label 1300 2200 0    50   ~ 0
ALU_OP3
Text Label 1300 2300 0    50   ~ 0
ALU_M
Text Label 1300 2400 0    50   ~ 0
BR_SEL0
Text Label 1300 2500 0    50   ~ 0
BR_SEL1
Text Label 1300 2600 0    50   ~ 0
BR_SEL2
Text Label 1300 2700 0    50   ~ 0
WR_SEL0
Text Label 1300 2800 0    50   ~ 0
WR_SEL1
Text Label 1300 2900 0    50   ~ 0
RegWBEn
Text Label 1300 3000 0    50   ~ 0
WB_SEL0
Text Label 1300 3100 0    50   ~ 0
WB_SEL1
Text Label 1300 3200 0    50   ~ 0
WB_SEL2
Text Label 1300 3300 0    50   ~ 0
STFR
Text Label 1300 3400 0    50   ~ 0
~FLatch
Text Label 1300 3500 0    50   ~ 0
BuffSel0
Text Label 1300 3600 0    50   ~ 0
BuffSel1
Text Label 1300 3800 0    50   ~ 0
MISC0
Text Label 1300 3900 0    50   ~ 0
MISC1
Wire Bus Line
	1800 1700 2200 1700
Wire Bus Line
	1800 2000 2200 2000
Wire Bus Line
	1800 2900 1800 2800
Wire Bus Line
	1800 2800 2200 2800
Text Label 1850 1700 0    50   ~ 0
ALU_CY[0..1]
Text Label 1850 2000 0    50   ~ 0
ALU_OP[0..3]
Text Label 1850 2800 0    50   ~ 0
WR_SEL[0..1]
Wire Wire Line
	3350 1100 3000 1100
Wire Wire Line
	3350 1200 3000 1200
Wire Wire Line
	3350 1300 3000 1300
Wire Wire Line
	3350 1400 3000 1400
Wire Wire Line
	3350 1500 3000 1500
Wire Wire Line
	3350 1600 3000 1600
Wire Wire Line
	3350 1700 3000 1700
Wire Wire Line
	3350 1800 3000 1800
Text Label 3050 1100 0    50   ~ 0
WB_DB0
Text Label 3050 1200 0    50   ~ 0
WB_DB1
Text Label 3050 1300 0    50   ~ 0
WB_DB2
Text Label 3050 1400 0    50   ~ 0
WB_DB3
Text Label 3050 1500 0    50   ~ 0
WB_DB4
Text Label 3050 1600 0    50   ~ 0
WB_DB5
Text Label 3050 1700 0    50   ~ 0
WB_DB6
Text Label 3050 1800 0    50   ~ 0
WB_DB7
Entry Wire Line
	2900 1000 3000 1100
Entry Wire Line
	2900 1100 3000 1200
Entry Wire Line
	2900 1200 3000 1300
Entry Wire Line
	2900 1300 3000 1400
Entry Wire Line
	2900 1400 3000 1500
Entry Wire Line
	2900 1500 3000 1600
Entry Wire Line
	2900 1600 3000 1700
Entry Wire Line
	2900 1700 3000 1800
Wire Wire Line
	3350 2500 3000 2500
Wire Wire Line
	3350 2600 3000 2600
Wire Wire Line
	3350 2700 3000 2700
Wire Wire Line
	3350 2800 3000 2800
Wire Wire Line
	3350 2900 3000 2900
Wire Wire Line
	3350 3000 3000 3000
Wire Wire Line
	3350 3100 3000 3100
Wire Wire Line
	3350 3200 3000 3200
Text Label 3050 2500 0    50   ~ 0
WB_DB0
Text Label 3050 2600 0    50   ~ 0
WB_DB1
Text Label 3050 2700 0    50   ~ 0
WB_DB2
Text Label 3050 2800 0    50   ~ 0
WB_DB3
Text Label 3050 2900 0    50   ~ 0
WB_DB4
Text Label 3050 3000 0    50   ~ 0
WB_DB5
Text Label 3050 3100 0    50   ~ 0
WB_DB6
Text Label 3050 3200 0    50   ~ 0
WB_DB7
Entry Wire Line
	2900 2400 3000 2500
Entry Wire Line
	2900 2500 3000 2600
Entry Wire Line
	2900 2600 3000 2700
Entry Wire Line
	2900 2700 3000 2800
Entry Wire Line
	2900 2800 3000 2900
Entry Wire Line
	2900 2900 3000 3000
Entry Wire Line
	2900 3000 3000 3100
Entry Wire Line
	2900 3100 3000 3200
Text Label 3500 4350 0    50   ~ 0
WB_DB[0..7]
$Comp
L 74xx_IEEE:74HC238 U44
U 1 1 6651CC77
P 1450 5800
F 0 "U44" H 1450 6316 50  0000 C CNN
F 1 "TC74HC238D" H 1450 6225 50  0000 C CNN
F 2 "Footprints:74HC238D" H 1450 5800 50  0001 C CNN
F 3 "" H 1450 5800 50  0001 C CNN
	1    1450 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	19300 2400 19650 2400
Wire Wire Line
	19300 2600 19650 2600
Wire Wire Line
	19300 2800 19650 2800
Wire Wire Line
	19300 3000 19650 3000
Text Label 19400 1000 0    50   ~ 0
WB_DB0
Text Label 19400 1200 0    50   ~ 0
WB_DB1
Text Label 19400 1400 0    50   ~ 0
WB_DB2
Text Label 19400 1600 0    50   ~ 0
WB_DB3
Text Label 19400 2400 0    50   ~ 0
WB_DB4
Text Label 19400 2600 0    50   ~ 0
WB_DB5
Text Label 19400 2800 0    50   ~ 0
WB_DB6
Text Label 19400 3000 0    50   ~ 0
WB_DB7
Text Label 19200 1150 3    50   ~ 0
WB_DB[0..7]
Text Label 550  5900 0    50   ~ 0
RegWBEn
Wire Wire Line
	550  5900 900  5900
Wire Wire Line
	750  5600 900  5600
Wire Wire Line
	900  5750 750  5750
Text Label 750  5600 0    50   ~ 0
nE
Text Label 750  5750 0    50   ~ 0
Q
Wire Wire Line
	3350 2000 2800 2000
Wire Wire Line
	2800 5600 2000 5600
Wire Wire Line
	2000 5700 2850 5700
Wire Wire Line
	2850 3400 3350 3400
Wire Wire Line
	2000 5800 2900 5800
Wire Wire Line
	2900 5800 2900 4450
Wire Wire Line
	2000 5900 2950 5900
Wire Wire Line
	2950 5900 2950 4500
Wire Wire Line
	2000 6000 2150 6000
Entry Wire Line
	3300 9250 3400 9350
Entry Wire Line
	3300 9350 3400 9450
Entry Wire Line
	3300 9450 3400 9550
Entry Wire Line
	3300 9550 3400 9650
Entry Wire Line
	3300 9650 3400 9750
Entry Wire Line
	3300 9750 3400 9850
Entry Wire Line
	3300 9850 3400 9950
Entry Wire Line
	3300 9950 3400 10050
Entry Wire Line
	1200 9250 1300 9350
Entry Wire Line
	1200 9350 1300 9450
Entry Wire Line
	1200 9450 1300 9550
Entry Wire Line
	1200 9550 1300 9650
Entry Wire Line
	1200 9650 1300 9750
Entry Wire Line
	1200 9750 1300 9850
Entry Wire Line
	1200 9850 1300 9950
Entry Wire Line
	1200 9950 1300 10050
Entry Wire Line
	3300 10850 3400 10950
Entry Wire Line
	3300 10950 3400 11050
Entry Wire Line
	3300 11050 3400 11150
Entry Wire Line
	3300 11150 3400 11250
Entry Wire Line
	3300 11250 3400 11350
Entry Wire Line
	3300 11350 3400 11450
Entry Wire Line
	3300 11450 3400 11550
Entry Wire Line
	3300 11550 3400 11650
Entry Wire Line
	3300 12400 3400 12500
Entry Wire Line
	3300 12500 3400 12600
Entry Wire Line
	3300 12600 3400 12700
Entry Wire Line
	3300 12700 3400 12800
Entry Wire Line
	3300 12800 3400 12900
Entry Wire Line
	3300 12900 3400 13000
Entry Wire Line
	3300 13000 3400 13100
Entry Wire Line
	3300 13100 3400 13200
Entry Wire Line
	3300 14000 3400 14100
Entry Wire Line
	3300 14100 3400 14200
Entry Wire Line
	3300 14200 3400 14300
Entry Wire Line
	3300 14300 3400 14400
Entry Wire Line
	3300 14400 3400 14500
Entry Wire Line
	3300 14500 3400 14600
Entry Wire Line
	3300 14600 3400 14700
Entry Wire Line
	3300 14700 3400 14800
Entry Wire Line
	1200 10850 1300 10950
Entry Wire Line
	1200 10950 1300 11050
Entry Wire Line
	1200 11050 1300 11150
Entry Wire Line
	1200 11150 1300 11250
Entry Wire Line
	1200 11250 1300 11350
Entry Wire Line
	1200 11350 1300 11450
Entry Wire Line
	1200 11450 1300 11550
Entry Wire Line
	1200 11550 1300 11650
Entry Wire Line
	1200 12400 1300 12500
Entry Wire Line
	1200 12500 1300 12600
Entry Wire Line
	1200 12600 1300 12700
Entry Wire Line
	1200 12700 1300 12800
Entry Wire Line
	1200 12800 1300 12900
Entry Wire Line
	1200 12900 1300 13000
Entry Wire Line
	1200 13000 1300 13100
Entry Wire Line
	1200 13100 1300 13200
Entry Wire Line
	1200 14000 1300 14100
Entry Wire Line
	1200 14100 1300 14200
Entry Wire Line
	1200 14200 1300 14300
Entry Wire Line
	1200 14300 1300 14400
Entry Wire Line
	1200 14400 1300 14500
Entry Wire Line
	1200 14500 1300 14600
Entry Wire Line
	1200 14600 1300 14700
Entry Wire Line
	1200 14700 1300 14800
Wire Wire Line
	2950 4500 5050 4500
Wire Wire Line
	2900 4450 5000 4450
Wire Wire Line
	5000 2000 5600 2000
Entry Wire Line
	10550 3050 10650 3150
Entry Wire Line
	10550 2950 10650 3050
Entry Wire Line
	10550 2850 10650 2950
Entry Wire Line
	10550 2750 10650 2850
Entry Wire Line
	10550 2650 10650 2750
Entry Wire Line
	10550 2550 10650 2650
Entry Wire Line
	10550 2450 10650 2550
Entry Wire Line
	10550 2350 10650 2450
Entry Wire Line
	10550 1550 10650 1650
Entry Wire Line
	10550 1450 10650 1550
Entry Wire Line
	10550 1350 10650 1450
Entry Wire Line
	10550 1250 10650 1350
Entry Wire Line
	10550 1150 10650 1250
Entry Wire Line
	10550 1050 10650 1150
Entry Wire Line
	10550 950  10650 1050
Entry Wire Line
	10550 850  10650 950 
Text Label 10700 1250 0    50   ~ 0
IDB7
Text Label 10700 1350 0    50   ~ 0
IDB6
Text Label 10700 1450 0    50   ~ 0
IDB5
Text Label 10700 1150 0    50   ~ 0
IDB4
Text Label 10700 1050 0    50   ~ 0
IDB3
Text Label 10700 1550 0    50   ~ 0
IDB2
Text Label 10700 1650 0    50   ~ 0
IDB1
Text Label 10700 950  0    50   ~ 0
IDB0
Entry Wire Line
	6850 1800 6950 1900
Entry Wire Line
	6850 1700 6950 1800
Entry Wire Line
	6850 1600 6950 1700
Entry Wire Line
	6850 1500 6950 1600
Entry Wire Line
	6850 1400 6950 1500
Entry Wire Line
	6850 1300 6950 1400
Entry Wire Line
	6850 1200 6950 1300
Entry Wire Line
	6850 1100 6950 1200
Entry Wire Line
	6850 3200 6950 3300
Entry Wire Line
	6850 3100 6950 3200
Entry Wire Line
	6850 3000 6950 3100
Entry Wire Line
	6850 2900 6950 3000
Entry Wire Line
	6850 2800 6950 2900
Entry Wire Line
	6850 2700 6950 2800
Entry Wire Line
	6850 2600 6950 2700
Entry Wire Line
	6850 2500 6950 2600
Entry Wire Line
	4650 3200 4750 3300
Entry Wire Line
	4650 3100 4750 3200
Entry Wire Line
	4650 3000 4750 3100
Entry Wire Line
	4650 2900 4750 3000
Entry Wire Line
	4650 2800 4750 2900
Entry Wire Line
	4650 2700 4750 2800
Entry Wire Line
	4650 2600 4750 2700
Entry Wire Line
	4650 2500 4750 2600
Entry Wire Line
	4650 1800 4750 1900
Entry Wire Line
	4650 1700 4750 1800
Entry Wire Line
	4650 1600 4750 1700
Entry Wire Line
	4650 1500 4750 1600
Entry Wire Line
	4650 1400 4750 1500
Entry Wire Line
	4650 1300 4750 1400
Entry Wire Line
	4650 1200 4750 1300
Entry Wire Line
	4650 1100 4750 1200
Entry Wire Line
	5150 3100 5250 3200
Entry Wire Line
	5150 3000 5250 3100
Entry Wire Line
	5150 2900 5250 3000
Entry Wire Line
	5150 2800 5250 2900
Entry Wire Line
	5150 2700 5250 2800
Entry Wire Line
	5150 2600 5250 2700
Entry Wire Line
	5150 2500 5250 2600
Entry Wire Line
	5150 2400 5250 2500
Text Label 5300 3200 0    50   ~ 0
WB_DB7
Text Label 5300 3100 0    50   ~ 0
WB_DB6
Text Label 5300 3000 0    50   ~ 0
WB_DB5
Text Label 5300 2900 0    50   ~ 0
WB_DB4
Text Label 5300 2800 0    50   ~ 0
WB_DB3
Text Label 5300 2700 0    50   ~ 0
WB_DB2
Text Label 5300 2600 0    50   ~ 0
WB_DB1
Text Label 5300 2500 0    50   ~ 0
WB_DB0
Wire Wire Line
	5600 3200 5250 3200
Wire Wire Line
	5600 3100 5250 3100
Wire Wire Line
	5600 3000 5250 3000
Wire Wire Line
	5600 2900 5250 2900
Wire Wire Line
	5600 2800 5250 2800
Wire Wire Line
	5600 2700 5250 2700
Wire Wire Line
	5600 2600 5250 2600
Wire Wire Line
	5600 2500 5250 2500
Entry Wire Line
	5150 1700 5250 1800
Entry Wire Line
	5150 1600 5250 1700
Entry Wire Line
	5150 1500 5250 1600
Entry Wire Line
	5150 1400 5250 1500
Entry Wire Line
	5150 1300 5250 1400
Entry Wire Line
	5150 1200 5250 1300
Entry Wire Line
	5150 1100 5250 1200
Entry Wire Line
	5150 1000 5250 1100
Text Label 5300 1800 0    50   ~ 0
WB_DB7
Text Label 5300 1700 0    50   ~ 0
WB_DB6
Text Label 5300 1600 0    50   ~ 0
WB_DB5
Text Label 5300 1500 0    50   ~ 0
WB_DB4
Text Label 5300 1400 0    50   ~ 0
WB_DB3
Text Label 5300 1300 0    50   ~ 0
WB_DB2
Text Label 5300 1200 0    50   ~ 0
WB_DB1
Text Label 5300 1100 0    50   ~ 0
WB_DB0
Wire Wire Line
	5600 1800 5250 1800
Wire Wire Line
	5600 1700 5250 1700
Wire Wire Line
	5600 1600 5250 1600
Wire Wire Line
	5600 1500 5250 1500
Wire Wire Line
	5600 1400 5250 1400
Wire Wire Line
	5600 1300 5250 1300
Wire Wire Line
	5600 1200 5250 1200
Wire Wire Line
	5600 1100 5250 1100
Text Label 4200 1100 0    50   ~ 0
L0
Text Label 4200 1200 0    50   ~ 0
L1
Text Label 4200 1300 0    50   ~ 0
L2
Text Label 4200 1400 0    50   ~ 0
L3
Text Label 4200 1500 0    50   ~ 0
L4
Text Label 4200 1600 0    50   ~ 0
L5
Text Label 4200 1700 0    50   ~ 0
L6
Text Label 4200 1800 0    50   ~ 0
L7
Text Label 4200 2500 0    50   ~ 0
L8
Text Label 4200 2600 0    50   ~ 0
L9
Text Label 4200 2700 0    50   ~ 0
L10
Text Label 4200 2800 0    50   ~ 0
L11
Text Label 4200 2900 0    50   ~ 0
L12
Text Label 4200 3000 0    50   ~ 0
L13
Text Label 4200 3100 0    50   ~ 0
L14
Text Label 4200 3200 0    50   ~ 0
L15
Text Label 6400 1100 0    50   ~ 0
L16
Text Label 6400 1200 0    50   ~ 0
L17
Text Label 6400 1300 0    50   ~ 0
L18
Text Label 6400 1400 0    50   ~ 0
L19
Text Label 6400 1500 0    50   ~ 0
L20
Text Label 6400 1600 0    50   ~ 0
L21
Text Label 6400 1700 0    50   ~ 0
L22
Text Label 6400 1800 0    50   ~ 0
L23
Text Label 6400 2500 0    50   ~ 0
L24
Text Label 6400 2600 0    50   ~ 0
L25
Text Label 6400 2700 0    50   ~ 0
L26
Text Label 6400 2800 0    50   ~ 0
L27
Text Label 6400 2900 0    50   ~ 0
L28
Text Label 6400 3000 0    50   ~ 0
L29
Text Label 6400 3100 0    50   ~ 0
L30
Text Label 6400 3200 0    50   ~ 0
L31
Entry Wire Line
	6350 7750 6450 7850
Entry Wire Line
	6350 7650 6450 7750
Entry Wire Line
	6350 7550 6450 7650
Entry Wire Line
	6350 7450 6450 7550
Entry Wire Line
	6350 7350 6450 7450
Entry Wire Line
	6350 7250 6450 7350
Entry Wire Line
	6350 7150 6450 7250
Entry Wire Line
	6350 7050 6450 7150
Entry Wire Line
	4600 7750 4700 7850
Entry Wire Line
	4600 7650 4700 7750
Entry Wire Line
	4600 7550 4700 7650
Entry Wire Line
	4600 7450 4700 7550
Entry Wire Line
	4600 7350 4700 7450
Entry Wire Line
	4600 7250 4700 7350
Entry Wire Line
	4600 7150 4700 7250
Entry Wire Line
	4600 7050 4700 7150
Text Label 2650 9350 0    50   ~ 0
L32
Text Label 2650 9450 0    50   ~ 0
L33
Text Label 2650 9550 0    50   ~ 0
L34
Text Label 2650 9650 0    50   ~ 0
L35
Text Label 2650 9750 0    50   ~ 0
L36
Text Label 2650 9850 0    50   ~ 0
L37
Text Label 2650 9950 0    50   ~ 0
L38
Text Label 2650 10050 0    50   ~ 0
L39
Text Label 4750 9350 0    50   ~ 0
L40
Text Label 4750 9450 0    50   ~ 0
L41
Text Label 4750 9550 0    50   ~ 0
L42
Text Label 4750 9650 0    50   ~ 0
L43
Text Label 4750 9750 0    50   ~ 0
L44
Text Label 4750 9850 0    50   ~ 0
L45
Text Label 4750 9950 0    50   ~ 0
L46
Text Label 4750 10050 0    50   ~ 0
L47
Text Label 2650 10950 0    50   ~ 0
L48
Text Label 2650 11050 0    50   ~ 0
L49
Text Label 2650 11150 0    50   ~ 0
L50
Text Label 2650 11250 0    50   ~ 0
L51
Text Label 2650 11350 0    50   ~ 0
L52
Text Label 2650 11450 0    50   ~ 0
L53
Text Label 2650 11550 0    50   ~ 0
L54
Text Label 2650 11650 0    50   ~ 0
L55
Text Label 4750 10950 0    50   ~ 0
L56
Text Label 4750 11050 0    50   ~ 0
L57
Text Label 4750 11150 0    50   ~ 0
L58
Text Label 4750 11250 0    50   ~ 0
L59
Text Label 4750 11350 0    50   ~ 0
L60
Text Label 4750 11450 0    50   ~ 0
L61
Text Label 4750 11550 0    50   ~ 0
L62
Text Label 4750 11650 0    50   ~ 0
L63
Text Label 2650 12500 0    50   ~ 0
L64
Text Label 2650 12600 0    50   ~ 0
L65
Text Label 2650 12700 0    50   ~ 0
L66
Text Label 2650 12800 0    50   ~ 0
L67
Text Label 2650 12900 0    50   ~ 0
L68
Text Label 2650 13000 0    50   ~ 0
L69
Text Label 2650 13100 0    50   ~ 0
L70
Text Label 2650 13200 0    50   ~ 0
L71
Text Label 4750 12500 0    50   ~ 0
L72
Text Label 4750 12600 0    50   ~ 0
L73
Text Label 4750 12700 0    50   ~ 0
L74
Text Label 4750 12800 0    50   ~ 0
L75
Text Label 4750 12900 0    50   ~ 0
L76
Text Label 4750 13000 0    50   ~ 0
L77
Text Label 4750 13100 0    50   ~ 0
L78
Text Label 4750 13200 0    50   ~ 0
L79
Text Label 2650 14100 0    50   ~ 0
L80
Text Label 2650 14200 0    50   ~ 0
L81
Text Label 2650 14300 0    50   ~ 0
L82
Text Label 2650 14400 0    50   ~ 0
L83
Text Label 2650 14500 0    50   ~ 0
L84
Text Label 2650 14600 0    50   ~ 0
L85
Text Label 2650 14700 0    50   ~ 0
L86
Text Label 2650 14800 0    50   ~ 0
L87
Text Label 4750 14100 0    50   ~ 0
L88
Text Label 4750 14200 0    50   ~ 0
L89
Text Label 4750 14300 0    50   ~ 0
L90
Text Label 4750 14400 0    50   ~ 0
L91
Text Label 4750 14500 0    50   ~ 0
L92
Text Label 4750 14600 0    50   ~ 0
L93
Text Label 4750 14700 0    50   ~ 0
L94
Text Label 4750 14800 0    50   ~ 0
L95
Wire Bus Line
	1250 4550 800  4550
Text Label 850  4550 0    50   ~ 0
L[0..95]
Wire Wire Line
	2000 6550 900  6550
Wire Wire Line
	900  6550 900  15000
Wire Wire Line
	900  15000 1650 15000
Wire Wire Line
	1650 15000 1650 15300
Wire Wire Line
	1650 15300 3800 15300
Wire Wire Line
	3800 15300 3800 15000
Wire Wire Line
	3800 15000 3900 15000
Connection ~ 1650 15000
Wire Wire Line
	1650 15000 1800 15000
Wire Wire Line
	3900 13400 3750 13400
Wire Wire Line
	3750 13400 3750 13700
Wire Wire Line
	1650 13700 1650 13400
Wire Wire Line
	1650 13400 1800 13400
Wire Wire Line
	1650 13400 950  13400
Connection ~ 1650 13400
Wire Wire Line
	3750 11850 3750 12150
Wire Wire Line
	3750 11850 3900 11850
Wire Wire Line
	1650 12150 1650 11850
Wire Wire Line
	1650 11850 1800 11850
Wire Wire Line
	1650 11850 1000 11850
Connection ~ 1650 11850
Wire Wire Line
	3900 10250 3750 10250
Wire Wire Line
	3750 10250 3750 10550
Wire Wire Line
	1650 10550 1650 10250
Wire Wire Line
	1650 10250 1800 10250
Wire Wire Line
	1650 10250 1050 10250
Connection ~ 1650 10250
Wire Wire Line
	950  6700 2050 6700
Wire Wire Line
	2050 6700 2050 6200
Wire Wire Line
	2050 6200 2000 6200
Wire Wire Line
	950  6700 950  13400
Wire Wire Line
	2000 6100 2100 6100
Wire Wire Line
	2100 6100 2100 6850
Wire Wire Line
	2100 6850 1000 6850
Text Label 600  6150 0    50   ~ 0
WB_SEL0
Text Label 600  6250 0    50   ~ 0
WB_SEL1
Text Label 600  6350 0    50   ~ 0
WB_SEL2
Wire Wire Line
	550  6150 900  6150
Wire Wire Line
	550  6250 900  6250
Wire Wire Line
	550  6350 900  6350
Wire Wire Line
	4700 7150 5000 7150
Wire Wire Line
	4700 7250 5000 7250
Wire Wire Line
	4700 7350 5000 7350
Wire Wire Line
	4700 7450 5000 7450
Wire Wire Line
	4700 7550 5000 7550
Wire Wire Line
	4700 7650 5000 7650
Wire Wire Line
	4700 7750 5000 7750
Wire Wire Line
	4700 7850 5000 7850
Text Label 4600 7900 3    50   ~ 0
WRO[0..15]
Wire Wire Line
	1650 10550 3750 10550
Wire Wire Line
	1650 12150 3750 12150
Wire Wire Line
	2600 9350 3150 9350
Entry Wire Line
	3150 9350 3250 9450
Entry Wire Line
	3150 9450 3250 9550
Entry Wire Line
	3150 9550 3250 9650
Entry Wire Line
	3150 9650 3250 9750
Entry Wire Line
	3150 9750 3250 9850
Entry Wire Line
	3150 9850 3250 9950
Entry Wire Line
	3150 9950 3250 10050
Entry Wire Line
	3150 10050 3250 10150
Wire Wire Line
	2600 10950 3150 10950
Entry Wire Line
	3150 10950 3250 11050
Entry Wire Line
	3150 11050 3250 11150
Entry Wire Line
	3150 11150 3250 11250
Entry Wire Line
	3150 11250 3250 11350
Entry Wire Line
	3150 11350 3250 11450
Entry Wire Line
	3150 11450 3250 11550
Entry Wire Line
	3150 11550 3250 11650
Entry Wire Line
	3150 11650 3250 11750
Wire Wire Line
	2600 10050 3150 10050
Wire Wire Line
	2600 9950 3150 9950
Wire Wire Line
	2600 9850 3150 9850
Wire Wire Line
	2600 9750 3150 9750
Wire Wire Line
	2600 9650 3150 9650
Wire Wire Line
	2600 9550 3150 9550
Wire Wire Line
	2600 9450 3150 9450
Wire Wire Line
	2600 11050 3150 11050
Wire Wire Line
	2600 11150 3150 11150
Wire Wire Line
	2600 11250 3150 11250
Wire Wire Line
	2600 11350 3150 11350
Wire Wire Line
	2600 11450 3150 11450
Wire Wire Line
	2600 11550 3150 11550
Wire Wire Line
	2600 11650 3150 11650
Wire Wire Line
	2600 12500 3150 12500
Entry Wire Line
	3150 12500 3250 12600
Entry Wire Line
	3150 12600 3250 12700
Entry Wire Line
	3150 12700 3250 12800
Entry Wire Line
	3150 12800 3250 12900
Entry Wire Line
	3150 12900 3250 13000
Entry Wire Line
	3150 13000 3250 13100
Entry Wire Line
	3150 13100 3250 13200
Entry Wire Line
	3150 13200 3250 13300
Wire Wire Line
	2600 12600 3150 12600
Wire Wire Line
	2600 12700 3150 12700
Wire Wire Line
	2600 12800 3150 12800
Wire Wire Line
	2600 12900 3150 12900
Wire Wire Line
	2600 13000 3150 13000
Wire Wire Line
	2600 13100 3150 13100
Wire Wire Line
	2600 13200 3150 13200
Wire Wire Line
	2600 14100 3150 14100
Entry Wire Line
	3150 14100 3250 14200
Entry Wire Line
	3150 14200 3250 14300
Entry Wire Line
	3150 14300 3250 14400
Entry Wire Line
	3150 14400 3250 14500
Entry Wire Line
	3150 14500 3250 14600
Entry Wire Line
	3150 14600 3250 14700
Entry Wire Line
	3150 14700 3250 14800
Entry Wire Line
	3150 14800 3250 14900
Wire Wire Line
	2600 14200 3150 14200
Wire Wire Line
	2600 14300 3150 14300
Wire Wire Line
	2600 14400 3150 14400
Wire Wire Line
	2600 14500 3150 14500
Wire Wire Line
	2600 14600 3150 14600
Wire Wire Line
	2600 14700 3150 14700
Wire Wire Line
	2600 14800 3150 14800
Wire Wire Line
	4150 2500 4650 2500
Wire Wire Line
	4150 2600 4650 2600
Wire Wire Line
	4150 2700 4650 2700
Wire Wire Line
	4150 2800 4650 2800
Wire Wire Line
	4150 2900 4650 2900
Wire Wire Line
	4150 3000 4650 3000
Wire Wire Line
	4150 3100 4650 3100
Wire Wire Line
	4150 3200 4650 3200
Wire Wire Line
	4150 1100 4650 1100
Wire Wire Line
	4150 1200 4650 1200
Wire Wire Line
	4150 1300 4650 1300
Wire Wire Line
	4150 1400 4650 1400
Wire Wire Line
	4150 1500 4650 1500
Wire Wire Line
	4150 1600 4650 1600
Wire Wire Line
	4150 1700 4650 1700
Wire Wire Line
	4150 1800 4650 1800
Text Label 4400 1100 0    50   ~ 0
RB0
Text Label 4400 1200 0    50   ~ 0
RB1
Text Label 4400 1300 0    50   ~ 0
RB2
Text Label 4400 1400 0    50   ~ 0
RB3
Text Label 4400 1500 0    50   ~ 0
RB4
Text Label 4400 1600 0    50   ~ 0
RB5
Text Label 4400 1700 0    50   ~ 0
RB6
Text Label 4400 1800 0    50   ~ 0
RB7
Text Label 4400 2500 0    50   ~ 0
RB8
Text Label 4400 2600 0    50   ~ 0
RB9
Text Label 4400 2700 0    50   ~ 0
RB10
Text Label 4400 2800 0    50   ~ 0
RB11
Text Label 4400 2900 0    50   ~ 0
RB12
Text Label 4400 3000 0    50   ~ 0
RB13
Text Label 4400 3100 0    50   ~ 0
RB14
Text Label 4400 3200 0    50   ~ 0
RB15
Text Label 6600 1100 0    50   ~ 0
RB16
Text Label 6600 1200 0    50   ~ 0
RB17
Text Label 6600 1300 0    50   ~ 0
RB18
Text Label 6600 1400 0    50   ~ 0
RB19
Text Label 6600 1500 0    50   ~ 0
RB20
Text Label 6600 1600 0    50   ~ 0
RB21
Text Label 6600 1700 0    50   ~ 0
RB22
Text Label 6600 1800 0    50   ~ 0
RB23
Text Label 6600 2500 0    50   ~ 0
RB24
Text Label 6600 2600 0    50   ~ 0
RB25
Text Label 6600 2700 0    50   ~ 0
RB26
Text Label 6600 2800 0    50   ~ 0
RB27
Text Label 6600 2900 0    50   ~ 0
RB28
Text Label 6600 3000 0    50   ~ 0
RB29
Text Label 6600 3100 0    50   ~ 0
RB30
Text Label 6600 3200 0    50   ~ 0
RB31
Text Label 5800 700  0    50   ~ 0
RB[0..31]
Text Label 2900 9350 0    50   ~ 0
WB0
Text Label 2900 9450 0    50   ~ 0
WB1
Text Label 2900 9550 0    50   ~ 0
WB2
Text Label 2900 9650 0    50   ~ 0
WB3
Text Label 2900 9750 0    50   ~ 0
WB4
Text Label 2900 9850 0    50   ~ 0
WB5
Text Label 2900 9950 0    50   ~ 0
WB6
Text Label 2900 10050 0    50   ~ 0
WB7
Text Label 2900 10950 0    50   ~ 0
WB8
Text Label 2900 11050 0    50   ~ 0
WB9
Text Label 2900 11150 0    50   ~ 0
WB10
Text Label 2900 11250 0    50   ~ 0
WB11
Text Label 2900 11350 0    50   ~ 0
WB12
Text Label 2900 11450 0    50   ~ 0
WB13
Text Label 2900 11550 0    50   ~ 0
WB14
Text Label 2900 11650 0    50   ~ 0
WB15
Text Label 2900 12500 0    50   ~ 0
WB16
Text Label 2900 12600 0    50   ~ 0
WB17
Text Label 2900 12700 0    50   ~ 0
WB18
Text Label 2900 12800 0    50   ~ 0
WB19
Text Label 2900 12900 0    50   ~ 0
WB20
Text Label 2900 13000 0    50   ~ 0
WB21
Text Label 2900 13100 0    50   ~ 0
WB22
Text Label 2900 13200 0    50   ~ 0
WB23
Text Label 2900 14100 0    50   ~ 0
WB24
Text Label 2900 14200 0    50   ~ 0
WB25
Text Label 2900 14300 0    50   ~ 0
WB26
Text Label 2900 14400 0    50   ~ 0
WB27
Text Label 2900 14500 0    50   ~ 0
WB28
Text Label 2900 14600 0    50   ~ 0
WB29
Text Label 2900 14700 0    50   ~ 0
WB30
Text Label 2900 14800 0    50   ~ 0
WB31
Text Label 5000 14800 0    50   ~ 0
WB63
Text Label 5000 14700 0    50   ~ 0
WB62
Text Label 5000 14600 0    50   ~ 0
WB61
Text Label 5000 14500 0    50   ~ 0
WB60
Text Label 5000 14400 0    50   ~ 0
WB59
Text Label 5000 14300 0    50   ~ 0
WB58
Text Label 5000 14200 0    50   ~ 0
WB57
Text Label 5000 14100 0    50   ~ 0
WB56
Text Label 5000 13200 0    50   ~ 0
WB55
Text Label 5000 13100 0    50   ~ 0
WB54
Text Label 5000 13000 0    50   ~ 0
WB53
Text Label 5000 12900 0    50   ~ 0
WB52
Text Label 5000 12800 0    50   ~ 0
WB51
Text Label 5000 12700 0    50   ~ 0
WB50
Text Label 5000 12600 0    50   ~ 0
WB49
Text Label 5000 12500 0    50   ~ 0
WB48
Text Label 5000 11650 0    50   ~ 0
WB47
Text Label 5000 11550 0    50   ~ 0
WB46
Text Label 5000 11450 0    50   ~ 0
WB45
Text Label 5000 11350 0    50   ~ 0
WB44
Text Label 5000 11250 0    50   ~ 0
WB43
Text Label 5000 11150 0    50   ~ 0
WB42
Text Label 5000 11050 0    50   ~ 0
WB41
Text Label 5000 10950 0    50   ~ 0
WB40
Text Label 5000 10050 0    50   ~ 0
WB39
Text Label 5000 9950 0    50   ~ 0
WB38
Text Label 5000 9850 0    50   ~ 0
WB37
Text Label 5000 9750 0    50   ~ 0
WB36
Text Label 5000 9650 0    50   ~ 0
WB35
Text Label 5000 9550 0    50   ~ 0
WB34
Text Label 5000 9450 0    50   ~ 0
WB33
Text Label 5000 9350 0    50   ~ 0
WB32
Wire Wire Line
	4700 14800 5250 14800
Wire Wire Line
	4700 14700 5250 14700
Wire Wire Line
	4700 14600 5250 14600
Wire Wire Line
	4700 14500 5250 14500
Wire Wire Line
	4700 14400 5250 14400
Wire Wire Line
	4700 14300 5250 14300
Wire Wire Line
	4700 14200 5250 14200
Entry Wire Line
	5250 14800 5350 14900
Entry Wire Line
	5250 14700 5350 14800
Entry Wire Line
	5250 14600 5350 14700
Entry Wire Line
	5250 14500 5350 14600
Entry Wire Line
	5250 14400 5350 14500
Entry Wire Line
	5250 14300 5350 14400
Entry Wire Line
	5250 14200 5350 14300
Entry Wire Line
	5250 14100 5350 14200
Wire Wire Line
	4700 14100 5250 14100
Wire Wire Line
	4700 13200 5250 13200
Wire Wire Line
	4700 13100 5250 13100
Wire Wire Line
	4700 13000 5250 13000
Wire Wire Line
	4700 12900 5250 12900
Wire Wire Line
	4700 12800 5250 12800
Wire Wire Line
	4700 12700 5250 12700
Wire Wire Line
	4700 12600 5250 12600
Entry Wire Line
	5250 13200 5350 13300
Entry Wire Line
	5250 13100 5350 13200
Entry Wire Line
	5250 13000 5350 13100
Entry Wire Line
	5250 12900 5350 13000
Entry Wire Line
	5250 12800 5350 12900
Entry Wire Line
	5250 12700 5350 12800
Entry Wire Line
	5250 12600 5350 12700
Entry Wire Line
	5250 12500 5350 12600
Wire Wire Line
	4700 12500 5250 12500
Wire Wire Line
	4700 11650 5250 11650
Wire Wire Line
	4700 11550 5250 11550
Wire Wire Line
	4700 11450 5250 11450
Wire Wire Line
	4700 11350 5250 11350
Wire Wire Line
	4700 11250 5250 11250
Wire Wire Line
	4700 11150 5250 11150
Wire Wire Line
	4700 11050 5250 11050
Wire Wire Line
	4700 9450 5250 9450
Wire Wire Line
	4700 9550 5250 9550
Wire Wire Line
	4700 9650 5250 9650
Wire Wire Line
	4700 9750 5250 9750
Wire Wire Line
	4700 9850 5250 9850
Wire Wire Line
	4700 9950 5250 9950
Wire Wire Line
	4700 10050 5250 10050
Entry Wire Line
	5250 11650 5350 11750
Entry Wire Line
	5250 11550 5350 11650
Entry Wire Line
	5250 11450 5350 11550
Entry Wire Line
	5250 11350 5350 11450
Entry Wire Line
	5250 11250 5350 11350
Entry Wire Line
	5250 11150 5350 11250
Entry Wire Line
	5250 11050 5350 11150
Entry Wire Line
	5250 10950 5350 11050
Wire Wire Line
	4700 10950 5250 10950
Entry Wire Line
	5250 10050 5350 10150
Entry Wire Line
	5250 9950 5350 10050
Entry Wire Line
	5250 9850 5350 9950
Entry Wire Line
	5250 9750 5350 9850
Entry Wire Line
	5250 9650 5350 9750
Entry Wire Line
	5250 9550 5350 9650
Entry Wire Line
	5250 9450 5350 9550
Entry Wire Line
	5250 9350 5350 9450
Wire Wire Line
	4700 9350 5250 9350
Wire Bus Line
	3250 8950 5350 8950
Text Label 3450 8950 0    50   ~ 0
WB[0..63]
Entry Wire Line
	5550 9150 5650 9250
Entry Wire Line
	5550 9250 5650 9350
Entry Wire Line
	5550 9350 5650 9450
Entry Wire Line
	5550 9450 5650 9550
Entry Wire Line
	5550 9750 5650 9850
Entry Wire Line
	5550 9850 5650 9950
Entry Wire Line
	5550 9950 5650 10050
Entry Wire Line
	5550 10050 5650 10150
Entry Wire Line
	5550 10750 5650 10850
Entry Wire Line
	5550 10850 5650 10950
Entry Wire Line
	5550 10950 5650 11050
Entry Wire Line
	5550 11050 5650 11150
Entry Wire Line
	5550 11350 5650 11450
Entry Wire Line
	5550 11450 5650 11550
Entry Wire Line
	5550 11550 5650 11650
Entry Wire Line
	5550 11650 5650 11750
Entry Wire Line
	5550 12350 5650 12450
Entry Wire Line
	5550 12450 5650 12550
Entry Wire Line
	5550 12550 5650 12650
Entry Wire Line
	5550 12650 5650 12750
Entry Wire Line
	5550 12950 5650 13050
Entry Wire Line
	5550 13050 5650 13150
Entry Wire Line
	5550 13150 5650 13250
Entry Wire Line
	5550 13250 5650 13350
Entry Wire Line
	5550 13950 5650 14050
Entry Wire Line
	5550 14050 5650 14150
Entry Wire Line
	5550 14150 5650 14250
Entry Wire Line
	5550 14250 5650 14350
Entry Wire Line
	5550 14550 5650 14650
Entry Wire Line
	5550 14650 5650 14750
Entry Wire Line
	5550 14750 5650 14850
Entry Wire Line
	5550 14850 5650 14950
Text Label 10700 2750 0    50   ~ 0
IDB7
Text Label 10700 2850 0    50   ~ 0
IDB6
Text Label 10700 2950 0    50   ~ 0
IDB5
Text Label 10700 2650 0    50   ~ 0
IDB4
Text Label 10700 2550 0    50   ~ 0
IDB3
Text Label 10700 3050 0    50   ~ 0
IDB2
Text Label 10700 3150 0    50   ~ 0
IDB1
Text Label 10700 2450 0    50   ~ 0
IDB0
Wire Wire Line
	10100 3400 10350 3400
Wire Wire Line
	10100 2800 10350 2800
Wire Wire Line
	10100 1750 10350 1750
Wire Wire Line
	10100 1150 10350 1150
Wire Wire Line
	8350 3400 8600 3400
Wire Wire Line
	8350 2800 8600 2800
Wire Wire Line
	8350 1750 8600 1750
Wire Wire Line
	8350 1150 8600 1150
Text Label 7500 5800 0    50   ~ 0
IDB7
Text Label 7500 5700 0    50   ~ 0
IDB6
Text Label 7500 5600 0    50   ~ 0
IDB5
Text Label 7500 5500 0    50   ~ 0
IDB4
Text Label 7500 5400 0    50   ~ 0
IDB3
Text Label 7500 5300 0    50   ~ 0
IDB2
Text Label 7500 5200 0    50   ~ 0
IDB1
Text Label 7500 5100 0    50   ~ 0
IDB0
Wire Wire Line
	7450 5800 7750 5800
Wire Wire Line
	7450 5700 7750 5700
Wire Wire Line
	7450 5600 7750 5600
Wire Wire Line
	7450 5500 7750 5500
Wire Wire Line
	7450 5400 7750 5400
Wire Wire Line
	7450 5300 7750 5300
Wire Wire Line
	7450 5200 7750 5200
Wire Wire Line
	7450 5100 7750 5100
Text Label 5750 5800 0    50   ~ 0
IDB7
Text Label 5750 5700 0    50   ~ 0
IDB6
Text Label 5750 5600 0    50   ~ 0
IDB5
Text Label 5750 5500 0    50   ~ 0
IDB4
Text Label 5750 5400 0    50   ~ 0
IDB3
Text Label 5750 5300 0    50   ~ 0
IDB2
Text Label 5750 5200 0    50   ~ 0
IDB1
Text Label 5750 5100 0    50   ~ 0
IDB0
Wire Wire Line
	5700 5800 6000 5800
Wire Wire Line
	5700 5700 6000 5700
Wire Wire Line
	5700 5600 6000 5600
Wire Wire Line
	5700 5500 6000 5500
Wire Wire Line
	5700 5400 6000 5400
Wire Wire Line
	5700 5300 6000 5300
Wire Wire Line
	5700 5200 6000 5200
Wire Wire Line
	5700 5100 6000 5100
Entry Wire Line
	6000 5100 6100 5200
Entry Wire Line
	6000 5200 6100 5300
Entry Wire Line
	6000 5300 6100 5400
Entry Wire Line
	6000 5400 6100 5500
Entry Wire Line
	6000 5500 6100 5600
Entry Wire Line
	6000 5600 6100 5700
Entry Wire Line
	6000 5700 6100 5800
Entry Wire Line
	6000 5800 6100 5900
Entry Wire Line
	7750 5100 7850 5200
Entry Wire Line
	7750 5200 7850 5300
Entry Wire Line
	7750 5300 7850 5400
Entry Wire Line
	7750 5400 7850 5500
Entry Wire Line
	7750 5500 7850 5600
Entry Wire Line
	7750 5600 7850 5700
Entry Wire Line
	7750 5700 7850 5800
Entry Wire Line
	7750 5800 7850 5900
Entry Wire Line
	8950 950  9050 1050
Entry Wire Line
	8950 1050 9050 1150
Entry Wire Line
	8950 1150 9050 1250
Entry Wire Line
	8950 1250 9050 1350
Entry Wire Line
	8950 1550 9050 1650
Entry Wire Line
	8950 1650 9050 1750
Entry Wire Line
	8950 1750 9050 1850
Entry Wire Line
	8950 1850 9050 1950
Entry Wire Line
	8950 2600 9050 2700
Entry Wire Line
	8950 2700 9050 2800
Entry Wire Line
	8950 2800 9050 2900
Entry Wire Line
	8950 2900 9050 3000
Entry Wire Line
	8950 3200 9050 3300
Entry Wire Line
	8950 3300 9050 3400
Entry Wire Line
	8950 3400 9050 3500
Entry Wire Line
	8950 3500 9050 3600
Wire Wire Line
	9050 1050 9300 1050
Wire Wire Line
	9050 1150 9300 1150
Wire Wire Line
	9050 1250 9300 1250
Wire Wire Line
	9050 1350 9300 1350
Wire Wire Line
	9050 1650 9300 1650
Wire Wire Line
	9050 1750 9300 1750
Wire Wire Line
	9050 1850 9300 1850
Wire Wire Line
	9050 1950 9300 1950
Wire Wire Line
	9050 2700 9300 2700
Wire Wire Line
	9050 2800 9300 2800
Wire Wire Line
	9050 2900 9300 2900
Wire Wire Line
	9050 3000 9300 3000
Wire Wire Line
	9050 3300 9300 3300
Wire Wire Line
	9050 3400 9300 3400
Wire Wire Line
	9050 3500 9300 3500
Wire Wire Line
	9050 3600 9300 3600
Entry Wire Line
	7200 950  7300 1050
Entry Wire Line
	7200 1050 7300 1150
Entry Wire Line
	7200 1150 7300 1250
Entry Wire Line
	7200 1250 7300 1350
Entry Wire Line
	7200 1550 7300 1650
Entry Wire Line
	7200 1650 7300 1750
Entry Wire Line
	7200 1750 7300 1850
Entry Wire Line
	7200 1850 7300 1950
Entry Wire Line
	7200 2600 7300 2700
Entry Wire Line
	7200 2700 7300 2800
Entry Wire Line
	7200 2800 7300 2900
Entry Wire Line
	7200 2900 7300 3000
Entry Wire Line
	7200 3200 7300 3300
Entry Wire Line
	7200 3300 7300 3400
Entry Wire Line
	7200 3400 7300 3500
Entry Wire Line
	7200 3500 7300 3600
Wire Wire Line
	7300 1050 7550 1050
Wire Wire Line
	7300 1150 7550 1150
Wire Wire Line
	7300 1250 7550 1250
Wire Wire Line
	7300 1350 7550 1350
Wire Wire Line
	7300 1650 7550 1650
Wire Wire Line
	7300 1750 7550 1750
Wire Wire Line
	7300 1850 7550 1850
Wire Wire Line
	7300 1950 7550 1950
Wire Wire Line
	7300 2700 7550 2700
Wire Wire Line
	7300 2800 7550 2800
Wire Wire Line
	7300 2900 7550 2900
Wire Wire Line
	7300 3000 7550 3000
Wire Wire Line
	7300 3300 7550 3300
Wire Wire Line
	7300 3400 7550 3400
Wire Wire Line
	7300 3500 7550 3500
Wire Wire Line
	7300 3600 7550 3600
Entry Wire Line
	8600 1150 8700 1250
Entry Wire Line
	8600 1750 8700 1850
Entry Wire Line
	8600 2800 8700 2900
Entry Wire Line
	8600 3400 8700 3500
Entry Wire Line
	10350 1150 10450 1250
Entry Wire Line
	10350 1750 10450 1850
Entry Wire Line
	10350 2800 10450 2900
Entry Wire Line
	10350 3400 10450 3500
Wire Bus Line
	6100 4500 7850 4500
Text Label 7500 7850 0    50   ~ 0
IDB7
Text Label 7500 7750 0    50   ~ 0
IDB6
Text Label 7500 7650 0    50   ~ 0
IDB5
Text Label 7500 7550 0    50   ~ 0
IDB4
Text Label 7500 7450 0    50   ~ 0
IDB3
Text Label 7500 7350 0    50   ~ 0
IDB2
Text Label 7500 7250 0    50   ~ 0
IDB1
Text Label 7500 7150 0    50   ~ 0
IDB0
Wire Wire Line
	7450 7850 7750 7850
Wire Wire Line
	7450 7750 7750 7750
Wire Wire Line
	7450 7650 7750 7650
Wire Wire Line
	7450 7550 7750 7550
Wire Wire Line
	7450 7450 7750 7450
Wire Wire Line
	7450 7350 7750 7350
Wire Wire Line
	7450 7250 7750 7250
Wire Wire Line
	7450 7150 7750 7150
Entry Wire Line
	7750 7150 7850 7250
Entry Wire Line
	7750 7250 7850 7350
Entry Wire Line
	7750 7350 7850 7450
Entry Wire Line
	7750 7450 7850 7550
Entry Wire Line
	7750 7550 7850 7650
Entry Wire Line
	7750 7650 7850 7750
Entry Wire Line
	7750 7750 7850 7850
Entry Wire Line
	7750 7850 7850 7950
Text Label 5750 7850 0    50   ~ 0
IDB7
Text Label 5750 7750 0    50   ~ 0
IDB6
Text Label 5750 7650 0    50   ~ 0
IDB5
Text Label 5750 7550 0    50   ~ 0
IDB4
Text Label 5750 7450 0    50   ~ 0
IDB3
Text Label 5750 7350 0    50   ~ 0
IDB2
Text Label 5750 7250 0    50   ~ 0
IDB1
Text Label 5750 7150 0    50   ~ 0
IDB0
Wire Wire Line
	5700 7850 6000 7850
Wire Wire Line
	5700 7750 6000 7750
Wire Wire Line
	5700 7650 6000 7650
Wire Wire Line
	5700 7550 6000 7550
Wire Wire Line
	5700 7450 6000 7450
Wire Wire Line
	5700 7350 6000 7350
Wire Wire Line
	5700 7250 6000 7250
Wire Wire Line
	5700 7150 6000 7150
Entry Wire Line
	6000 7150 6100 7250
Entry Wire Line
	6000 7250 6100 7350
Entry Wire Line
	6000 7350 6100 7450
Entry Wire Line
	6000 7450 6100 7550
Entry Wire Line
	6000 7550 6100 7650
Entry Wire Line
	6000 7650 6100 7750
Entry Wire Line
	6000 7750 6100 7850
Entry Wire Line
	6000 7850 6100 7950
Entry Wire Line
	7450 9150 7550 9250
Entry Wire Line
	7450 9250 7550 9350
Entry Wire Line
	7450 9350 7550 9450
Entry Wire Line
	7450 14850 7550 14950
Entry Wire Line
	7450 14750 7550 14850
Entry Wire Line
	7450 14650 7550 14750
Entry Wire Line
	7450 14550 7550 14650
Entry Wire Line
	7450 14250 7550 14350
Entry Wire Line
	7450 14150 7550 14250
Entry Wire Line
	7450 14050 7550 14150
Entry Wire Line
	7450 13950 7550 14050
Entry Wire Line
	7450 13250 7550 13350
Entry Wire Line
	7450 13150 7550 13250
Entry Wire Line
	7450 13050 7550 13150
Entry Wire Line
	7450 12950 7550 13050
Entry Wire Line
	7450 12650 7550 12750
Entry Wire Line
	7450 12550 7550 12650
Entry Wire Line
	7450 12450 7550 12550
Entry Wire Line
	7450 12350 7550 12450
Entry Wire Line
	7450 11650 7550 11750
Entry Wire Line
	7450 11550 7550 11650
Entry Wire Line
	7450 11450 7550 11550
Entry Wire Line
	7450 11350 7550 11450
Entry Wire Line
	7450 11050 7550 11150
Entry Wire Line
	7450 10950 7550 11050
Entry Wire Line
	7450 10850 7550 10950
Entry Wire Line
	7450 10750 7550 10850
Entry Wire Line
	7450 10050 7550 10150
Entry Wire Line
	7450 9950 7550 10050
Entry Wire Line
	7450 9850 7550 9950
Entry Wire Line
	7450 9750 7550 9850
Entry Wire Line
	7450 9450 7550 9550
Entry Wire Line
	9000 14850 9100 14950
Entry Wire Line
	9000 14250 9100 14350
Entry Wire Line
	9000 13250 9100 13350
Entry Wire Line
	9000 12650 9100 12750
Entry Wire Line
	9000 11650 9100 11750
Entry Wire Line
	9000 11050 9100 11150
Entry Wire Line
	9000 10050 9100 10150
Entry Wire Line
	9000 9450 9100 9550
Text Label 9400 5800 0    50   ~ 0
IDB7
Text Label 9400 5700 0    50   ~ 0
IDB6
Text Label 9400 5600 0    50   ~ 0
IDB5
Text Label 9400 5500 0    50   ~ 0
IDB4
Text Label 9400 5400 0    50   ~ 0
IDB3
Text Label 9400 5300 0    50   ~ 0
IDB2
Text Label 9400 5200 0    50   ~ 0
IDB1
Text Label 9400 5100 0    50   ~ 0
IDB0
Entry Wire Line
	9650 5100 9750 5200
Entry Wire Line
	9650 5200 9750 5300
Entry Wire Line
	9650 5300 9750 5400
Entry Wire Line
	9650 5400 9750 5500
Entry Wire Line
	9650 5500 9750 5600
Entry Wire Line
	9650 5600 9750 5700
Entry Wire Line
	9650 5700 9750 5800
Entry Wire Line
	9650 5800 9750 5900
Text Label 8350 1150 0    50   ~ 0
RO0
Text Label 8350 1750 0    50   ~ 0
RO1
Text Label 8350 2800 0    50   ~ 0
RO2
Text Label 8350 3400 0    50   ~ 0
RO3
Text Label 10100 1150 0    50   ~ 0
RO4
Text Label 10100 1750 0    50   ~ 0
RO5
Text Label 10100 2800 0    50   ~ 0
RO6
Text Label 10100 3400 0    50   ~ 0
RO7
Text Label 8950 4400 0    50   ~ 0
RO[0..7]
Entry Wire Line
	8300 5000 8400 5100
Entry Wire Line
	8300 5100 8400 5200
Entry Wire Line
	8300 5200 8400 5300
Entry Wire Line
	8300 5300 8400 5400
Entry Wire Line
	8300 5400 8400 5500
Entry Wire Line
	8300 5500 8400 5600
Entry Wire Line
	8300 5600 8400 5700
Entry Wire Line
	8300 5700 8400 5800
Text Label 8500 5100 0    50   ~ 0
RO0
Text Label 8500 5200 0    50   ~ 0
RO1
Text Label 8500 5300 0    50   ~ 0
RO2
Text Label 8500 5400 0    50   ~ 0
RO3
Text Label 8500 5500 0    50   ~ 0
RO4
Text Label 8500 5600 0    50   ~ 0
RO5
Text Label 8500 5700 0    50   ~ 0
RO6
Text Label 8500 5800 0    50   ~ 0
RO7
Wire Wire Line
	9300 1450 8900 1450
Wire Wire Line
	8900 1450 8900 2050
Wire Wire Line
	8900 2050 9300 2050
Wire Wire Line
	8900 2050 8900 3100
Wire Wire Line
	8900 3100 9300 3100
Connection ~ 8900 2050
Wire Wire Line
	8900 3700 9300 3700
Wire Wire Line
	8900 3100 8900 3700
Connection ~ 8900 3100
Wire Wire Line
	6400 1100 6850 1100
Wire Wire Line
	6400 1200 6850 1200
Wire Wire Line
	6400 1300 6850 1300
Wire Wire Line
	6400 1400 6850 1400
Wire Wire Line
	6400 1500 6850 1500
Wire Wire Line
	6400 1600 6850 1600
Wire Wire Line
	6400 1700 6850 1700
Wire Wire Line
	6400 1800 6850 1800
Wire Wire Line
	7550 1450 7150 1450
Wire Wire Line
	7150 1450 7150 2050
Wire Wire Line
	7150 2050 7550 2050
Wire Wire Line
	7150 2050 7150 3100
Wire Wire Line
	7150 3100 7550 3100
Connection ~ 7150 2050
Wire Wire Line
	7150 3700 7550 3700
Wire Wire Line
	7150 3100 7150 3700
Connection ~ 7150 3100
Wire Wire Line
	5600 2100 5500 2100
Wire Wire Line
	5500 2100 5500 2200
Wire Wire Line
	3250 2250 3250 2200
Wire Wire Line
	5450 3600 3200 3600
Wire Wire Line
	3200 3650 3200 3600
Wire Wire Line
	3200 3500 3350 3500
$Comp
L power:GND #PWR055
U 1 1 6D1E8D31
P 3200 3650
F 0 "#PWR055" H 3200 3400 50  0001 C CNN
F 1 "GND" H 3205 3477 50  0000 C CNN
F 2 "" H 3200 3650 50  0001 C CNN
F 3 "" H 3200 3650 50  0001 C CNN
	1    3200 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR056
U 1 1 6D1E922D
P 3250 2250
F 0 "#PWR056" H 3250 2000 50  0001 C CNN
F 1 "GND" H 3255 2077 50  0000 C CNN
F 2 "" H 3250 2250 50  0001 C CNN
F 3 "" H 3250 2250 50  0001 C CNN
	1    3250 2250
	1    0    0    -1  
$EndComp
Text Label 7350 1050 0    50   ~ 0
RB0
Text Label 7350 1650 0    50   ~ 0
RB1
Text Label 7350 2700 0    50   ~ 0
RB2
Text Label 7350 3300 0    50   ~ 0
RB3
Text Label 9100 1050 0    50   ~ 0
RB4
Text Label 9100 1650 0    50   ~ 0
RB5
Text Label 9100 2700 0    50   ~ 0
RB6
Text Label 9100 3300 0    50   ~ 0
RB7
Text Label 7350 1150 0    50   ~ 0
RB8
Text Label 7350 1750 0    50   ~ 0
RB9
Text Label 7350 2800 0    50   ~ 0
RB10
Text Label 7350 3400 0    50   ~ 0
RB11
Text Label 9100 1150 0    50   ~ 0
RB12
Text Label 9100 1750 0    50   ~ 0
RB13
Text Label 9100 2800 0    50   ~ 0
RB14
Text Label 9100 3400 0    50   ~ 0
RB15
Text Label 7350 1250 0    50   ~ 0
RB16
Text Label 7350 1850 0    50   ~ 0
RB17
Text Label 7350 2900 0    50   ~ 0
RB18
Text Label 7350 3500 0    50   ~ 0
RB19
Text Label 9100 1250 0    50   ~ 0
RB20
Text Label 9100 1850 0    50   ~ 0
RB21
Text Label 9100 2900 0    50   ~ 0
RB22
Text Label 9100 3500 0    50   ~ 0
RB23
Text Label 7350 1350 0    50   ~ 0
RB24
Text Label 7350 1950 0    50   ~ 0
RB25
Text Label 7350 3000 0    50   ~ 0
RB26
Text Label 7350 3600 0    50   ~ 0
RB27
Text Label 9100 1350 0    50   ~ 0
RB28
Text Label 9100 1950 0    50   ~ 0
RB29
Text Label 9100 3000 0    50   ~ 0
RB30
Text Label 9100 3600 0    50   ~ 0
RB31
Text Label 1150 5200 0    50   ~ 0
DataIn[0..7]
Text Label 4550 5800 0    50   ~ 0
DataIn7
Text Label 4550 5700 0    50   ~ 0
DataIn6
Text Label 4550 5600 0    50   ~ 0
DataIn5
Text Label 4550 5500 0    50   ~ 0
DataIn4
Text Label 4550 5400 0    50   ~ 0
DataIn3
Text Label 4550 5300 0    50   ~ 0
DataIn2
Text Label 4550 5200 0    50   ~ 0
DataIn1
Text Label 4550 5100 0    50   ~ 0
DataIn0
Entry Wire Line
	4350 5700 4450 5800
Entry Wire Line
	4350 5600 4450 5700
Entry Wire Line
	4350 5500 4450 5600
Entry Wire Line
	4350 5400 4450 5500
Entry Wire Line
	4350 5300 4450 5400
Entry Wire Line
	4350 5200 4450 5300
Entry Wire Line
	4350 5100 4450 5200
Entry Wire Line
	4350 5000 4450 5100
Wire Wire Line
	5000 5800 4450 5800
Wire Wire Line
	5000 5700 4450 5700
Wire Wire Line
	5000 5600 4450 5600
Wire Wire Line
	5000 5500 4450 5500
Wire Wire Line
	5000 5400 4450 5400
Wire Wire Line
	5000 5300 4450 5300
Wire Wire Line
	5000 5200 4450 5200
Wire Wire Line
	5000 5100 4450 5100
Entry Wire Line
	6300 5700 6400 5800
Entry Wire Line
	6300 5600 6400 5700
Entry Wire Line
	6300 5500 6400 5600
Entry Wire Line
	6300 5400 6400 5500
Entry Wire Line
	6300 5300 6400 5400
Entry Wire Line
	6300 5200 6400 5300
Entry Wire Line
	6300 5100 6400 5200
Entry Wire Line
	6300 5000 6400 5100
Wire Wire Line
	6400 3200 6850 3200
Wire Wire Line
	6400 3100 6850 3100
Wire Wire Line
	6400 3000 6850 3000
Wire Wire Line
	6400 2900 6850 2900
Wire Wire Line
	6400 2800 6850 2800
Wire Wire Line
	6400 2700 6850 2700
Wire Wire Line
	6400 2600 6850 2600
Wire Wire Line
	6400 2500 6850 2500
Wire Wire Line
	22250 1000 22700 1000
Text Label 22700 1000 2    50   ~ 0
FlagOut0
Text Label 11750 950  0    50   ~ 0
ALU_A0
Text Label 11750 1650 0    50   ~ 0
ALU_A1
Text Label 11750 1550 0    50   ~ 0
ALU_A2
Text Label 11750 1050 0    50   ~ 0
ALU_A3
Text Label 11750 1150 0    50   ~ 0
ALU_A4
Text Label 11750 1450 0    50   ~ 0
ALU_A5
Text Label 11750 1350 0    50   ~ 0
ALU_A6
Text Label 11750 1250 0    50   ~ 0
ALU_A7
Text Label 11750 2450 0    50   ~ 0
ALU_B0
Text Label 11750 3150 0    50   ~ 0
ALU_B1
Text Label 11750 3050 0    50   ~ 0
ALU_B2
Text Label 11750 2550 0    50   ~ 0
ALU_B3
Text Label 11750 2650 0    50   ~ 0
ALU_B4
Text Label 11750 2950 0    50   ~ 0
ALU_B5
Text Label 11750 2850 0    50   ~ 0
ALU_B6
Text Label 11750 2750 0    50   ~ 0
ALU_B7
Text Label 5700 9250 0    50   ~ 0
WB0
Text Label 5700 9850 0    50   ~ 0
WB1
Text Label 5700 10850 0    50   ~ 0
WB2
Text Label 5700 11450 0    50   ~ 0
WB3
Text Label 5700 12450 0    50   ~ 0
WB4
Text Label 5700 13050 0    50   ~ 0
WB5
Text Label 5700 14050 0    50   ~ 0
WB6
Text Label 5700 14650 0    50   ~ 0
WB7
Text Label 5700 9350 0    50   ~ 0
WB8
Text Label 5700 9950 0    50   ~ 0
WB9
Text Label 5700 10950 0    50   ~ 0
WB10
Text Label 5700 11550 0    50   ~ 0
WB11
Text Label 5700 12550 0    50   ~ 0
WB12
Text Label 5700 13150 0    50   ~ 0
WB13
Text Label 5700 14150 0    50   ~ 0
WB14
Text Label 5700 14750 0    50   ~ 0
WB15
Text Label 5700 9450 0    50   ~ 0
WB16
Text Label 5700 10050 0    50   ~ 0
WB17
Text Label 5700 11050 0    50   ~ 0
WB18
Text Label 5700 11650 0    50   ~ 0
WB19
Text Label 5700 12650 0    50   ~ 0
WB20
Text Label 5700 13250 0    50   ~ 0
WB21
Text Label 5700 14250 0    50   ~ 0
WB22
Text Label 5700 14850 0    50   ~ 0
WB23
Text Label 5700 9550 0    50   ~ 0
WB24
Text Label 5700 10150 0    50   ~ 0
WB25
Text Label 5700 11150 0    50   ~ 0
WB26
Text Label 5700 11750 0    50   ~ 0
WB27
Text Label 5700 12750 0    50   ~ 0
WB28
Text Label 5700 13350 0    50   ~ 0
WB29
Text Label 5700 14350 0    50   ~ 0
WB30
Text Label 5700 14950 0    50   ~ 0
WB31
Text Label 7600 9250 0    50   ~ 0
WB32
Text Label 7600 9850 0    50   ~ 0
WB33
Text Label 7600 10850 0    50   ~ 0
WB34
Text Label 7600 11450 0    50   ~ 0
WB35
Text Label 7600 12450 0    50   ~ 0
WB36
Text Label 7600 13050 0    50   ~ 0
WB37
Text Label 7600 14050 0    50   ~ 0
WB38
Text Label 7600 14650 0    50   ~ 0
WB39
Text Label 7600 9350 0    50   ~ 0
WB40
Text Label 7600 9950 0    50   ~ 0
WB41
Text Label 7600 10950 0    50   ~ 0
WB42
Text Label 7600 11550 0    50   ~ 0
WB43
Text Label 7600 12550 0    50   ~ 0
WB44
Text Label 7600 13150 0    50   ~ 0
WB45
Text Label 7600 14150 0    50   ~ 0
WB46
Text Label 7600 14750 0    50   ~ 0
WB47
Text Label 7600 9450 0    50   ~ 0
WB48
Text Label 7600 10050 0    50   ~ 0
WB49
Text Label 7600 11050 0    50   ~ 0
WB50
Text Label 7600 11650 0    50   ~ 0
WB51
Text Label 7600 12650 0    50   ~ 0
WB52
Text Label 7600 13250 0    50   ~ 0
WB53
Text Label 7600 14250 0    50   ~ 0
WB54
Text Label 7600 14850 0    50   ~ 0
WB55
Text Label 7600 9550 0    50   ~ 0
WB56
Text Label 7600 10150 0    50   ~ 0
WB57
Text Label 7600 11150 0    50   ~ 0
WB58
Text Label 7600 11750 0    50   ~ 0
WB59
Text Label 7600 12750 0    50   ~ 0
WB60
Text Label 7600 13350 0    50   ~ 0
WB61
Text Label 7600 14350 0    50   ~ 0
WB62
Text Label 7600 14950 0    50   ~ 0
WB63
Wire Wire Line
	6450 7150 6750 7150
Wire Wire Line
	6450 7250 6750 7250
Wire Wire Line
	6450 7350 6750 7350
Wire Wire Line
	6450 7450 6750 7450
Wire Wire Line
	6450 7550 6750 7550
Wire Wire Line
	6450 7650 6750 7650
Wire Wire Line
	6450 7850 6750 7850
Text Notes 7100 8300 0    50   ~ 0
AddrHi
$Comp
L CPU2908CLocal:74HC283 U96
U 1 1 710A22CC
P 14850 6600
F 0 "U96" H 14850 7325 50  0000 C CNN
F 1 "CD74HC283" H 14850 7234 50  0000 C CNN
F 2 "Footprints:CD74HC283M96" H 14850 6600 50  0001 C CNN
F 3 "" H 14850 6600 50  0000 C CNN
	1    14850 6600
	0    1    1    0   
$EndComp
Connection ~ 5350 8950
Connection ~ 6350 8900
Wire Bus Line
	1050 5200 4350 5200
Wire Wire Line
	3950 8750 6650 8750
Wire Wire Line
	6650 8150 6750 8150
Wire Wire Line
	2000 6300 2000 6550
Text Label 1500 7350 0    50   ~ 0
BR_SEL2
Wire Wire Line
	3550 7050 4000 7050
Wire Wire Line
	4000 7050 4000 8700
Wire Wire Line
	3550 7150 3950 7150
Wire Wire Line
	3950 7150 3950 8750
Wire Wire Line
	3900 6500 3900 7350
Wire Wire Line
	3900 7350 3550 7350
Wire Wire Line
	3900 6500 6500 6500
Wire Wire Line
	3850 7250 3550 7250
Wire Wire Line
	2800 2000 2800 5600
Wire Wire Line
	2850 3400 2850 5700
Connection ~ 3200 3600
Wire Wire Line
	3200 3500 3200 3600
Wire Wire Line
	5600 3500 5450 3500
Wire Wire Line
	5450 3500 5450 3600
Wire Wire Line
	5000 2000 5000 4450
Connection ~ 3250 2200
Wire Wire Line
	3250 2200 3250 2100
Wire Wire Line
	3250 2200 5500 2200
Wire Wire Line
	3250 2100 3350 2100
Wire Wire Line
	5050 3400 5600 3400
Wire Wire Line
	5050 3400 5050 4500
Connection ~ 5550 8950
Wire Bus Line
	5550 8950 7450 8950
Wire Bus Line
	5350 8950 5550 8950
Wire Wire Line
	5500 9650 5500 10250
Wire Wire Line
	7900 12850 7400 12850
Wire Wire Line
	7400 13450 7900 13450
Wire Wire Line
	7900 14450 7400 14450
Wire Wire Line
	7400 15050 7900 15050
Wire Wire Line
	7900 9650 7400 9650
Wire Wire Line
	7400 9650 7400 10250
Wire Wire Line
	7400 10250 7900 10250
Wire Wire Line
	7900 11250 7400 11250
Wire Wire Line
	7400 11850 7900 11850
Connection ~ 7400 10250
Wire Wire Line
	7400 10250 7400 11250
Connection ~ 7400 11250
Wire Wire Line
	7400 11250 7400 11850
Connection ~ 7400 11850
Wire Wire Line
	7400 11850 7400 12850
Connection ~ 7400 12850
Wire Wire Line
	7400 12850 7400 13450
Connection ~ 7400 13450
Wire Wire Line
	7400 13450 7400 14450
Connection ~ 7400 14450
Wire Wire Line
	7400 14450 7400 15050
Connection ~ 7400 15050
Wire Wire Line
	7400 15050 7400 15200
Wire Wire Line
	5500 10250 5500 11250
Connection ~ 5500 10250
Connection ~ 5500 11250
Wire Wire Line
	5500 11250 5500 11850
Connection ~ 5500 11850
Wire Wire Line
	5500 11850 5500 12850
Connection ~ 5500 12850
Wire Wire Line
	5500 12850 5500 13450
Connection ~ 5500 13450
Wire Wire Line
	5500 13450 5500 14450
Connection ~ 5500 14450
Wire Wire Line
	5500 14450 5500 15050
Connection ~ 5500 15050
$Comp
L power:GND #PWR059
U 1 1 766F1C0F
P 7400 15200
F 0 "#PWR059" H 7400 14950 50  0001 C CNN
F 1 "GND" H 7405 15027 50  0000 C CNN
F 2 "" H 7400 15200 50  0001 C CNN
F 3 "" H 7400 15200 50  0001 C CNN
	1    7400 15200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR057
U 1 1 766F270F
P 5500 15200
F 0 "#PWR057" H 5500 14950 50  0001 C CNN
F 1 "GND" H 5505 15027 50  0000 C CNN
F 2 "" H 5500 15200 50  0001 C CNN
F 3 "" H 5500 15200 50  0001 C CNN
	1    5500 15200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 15100 3850 15100
Wire Wire Line
	3850 15100 3850 15350
Wire Wire Line
	3850 15350 1750 15350
Wire Wire Line
	1800 15100 1750 15100
Wire Wire Line
	1750 15100 1750 15350
Connection ~ 1750 15350
Wire Wire Line
	1750 15350 1150 15350
Wire Wire Line
	3900 13500 3850 13500
Wire Wire Line
	3850 13500 3850 13750
Wire Wire Line
	1150 13750 1150 15350
Connection ~ 1150 15350
Wire Wire Line
	1800 13500 1750 13500
Wire Wire Line
	1750 13500 1750 13750
Wire Wire Line
	1750 13750 1150 13750
Wire Wire Line
	3900 11950 3850 11950
Wire Wire Line
	3850 11950 3850 12200
Wire Wire Line
	3850 12200 1750 12200
Wire Wire Line
	1800 11950 1750 11950
Wire Wire Line
	1750 11950 1750 12200
Connection ~ 1750 12200
Wire Wire Line
	1750 12200 1150 12200
Wire Wire Line
	3900 10350 3850 10350
Wire Wire Line
	3850 10350 3850 10600
Wire Wire Line
	1800 10350 1750 10350
Wire Wire Line
	1750 10350 1750 10600
Wire Wire Line
	1150 10600 1750 10600
Connection ~ 1750 10600
Wire Wire Line
	1750 10600 3850 10600
Wire Wire Line
	1150 10600 1150 12200
Connection ~ 1150 13750
Connection ~ 1150 12200
Wire Wire Line
	1150 12200 1150 13750
Wire Wire Line
	1000 15350 1000 15450
Wire Wire Line
	1000 15350 1150 15350
$Comp
L power:GND #PWR054
U 1 1 76F22C9C
P 1000 15450
F 0 "#PWR054" H 1000 15200 50  0001 C CNN
F 1 "GND" H 1005 15277 50  0000 C CNN
F 2 "" H 1000 15450 50  0001 C CNN
F 3 "" H 1000 15450 50  0001 C CNN
	1    1000 15450
	1    0    0    -1  
$EndComp
Text Label 4850 15650 0    50   ~ 0
WR_SEL0
Text Label 4850 15750 0    50   ~ 0
WR_SEL1
Wire Wire Line
	5500 15050 5500 15200
Wire Wire Line
	5900 15650 5900 15250
Wire Wire Line
	5900 15650 7300 15650
Wire Wire Line
	7750 15650 7750 15250
Wire Wire Line
	7750 15250 7900 15250
Connection ~ 5900 15650
Wire Wire Line
	7800 15750 7800 15350
Wire Wire Line
	7800 15350 7900 15350
Wire Wire Line
	5950 15350 5950 15750
Connection ~ 5950 15750
Wire Wire Line
	5950 15750 7350 15750
Wire Wire Line
	7900 13650 7300 13650
Wire Wire Line
	7900 13750 7350 13750
Wire Wire Line
	7900 12150 7350 12150
Wire Wire Line
	7900 10450 7300 10450
Wire Wire Line
	7900 10550 7350 10550
Wire Wire Line
	7350 10550 7350 12150
Connection ~ 7350 12150
Wire Wire Line
	7350 12150 7350 13750
Connection ~ 7350 13750
Wire Wire Line
	7350 13750 7350 15750
Connection ~ 7350 15750
Wire Wire Line
	7350 15750 7800 15750
Wire Wire Line
	7300 15650 7300 13650
Connection ~ 7300 15650
Wire Wire Line
	7300 15650 7750 15650
Connection ~ 7300 12050
Wire Wire Line
	7300 12050 7300 10450
Connection ~ 7300 13650
Wire Wire Line
	7300 13650 7300 12050
Wire Wire Line
	5400 13650 5400 15650
Wire Wire Line
	4850 15650 5400 15650
Connection ~ 5400 15650
Wire Wire Line
	5400 15650 5900 15650
Wire Wire Line
	5450 13750 5450 15750
Wire Wire Line
	4850 15750 5450 15750
Connection ~ 5450 15750
Wire Wire Line
	5450 15750 5950 15750
Wire Wire Line
	5450 13750 5450 12150
Connection ~ 5450 13750
Connection ~ 5450 12150
Wire Wire Line
	5450 12150 5450 10550
Wire Wire Line
	5400 10450 5400 12050
Connection ~ 5400 13650
Connection ~ 5400 12050
Wire Wire Line
	5400 12050 5400 13650
Wire Wire Line
	7300 12050 7900 12050
Wire Wire Line
	9750 14250 10100 14250
Wire Wire Line
	10100 14700 9750 14700
Wire Wire Line
	10100 15150 9750 15150
Wire Wire Line
	10100 15600 9750 15600
Entry Wire Line
	9650 14150 9750 14250
Entry Wire Line
	9650 14600 9750 14700
Entry Wire Line
	9650 15050 9750 15150
Entry Wire Line
	9650 15500 9750 15600
Wire Wire Line
	11150 14250 11450 14250
Entry Wire Line
	11050 14150 11150 14250
Entry Wire Line
	11050 14600 11150 14700
Entry Wire Line
	11050 15050 11150 15150
Entry Wire Line
	11050 15500 11150 15600
Wire Wire Line
	12500 14250 12850 14250
Wire Wire Line
	12850 14700 12500 14700
Wire Wire Line
	12850 15150 12500 15150
Wire Wire Line
	12850 15600 12500 15600
Entry Wire Line
	12400 14150 12500 14250
Entry Wire Line
	12400 14600 12500 14700
Entry Wire Line
	12400 15050 12500 15150
Entry Wire Line
	12400 15500 12500 15600
Entry Wire Line
	13800 14150 13900 14250
Entry Wire Line
	13800 14600 13900 14700
Entry Wire Line
	13800 15050 13900 15150
Entry Wire Line
	13800 15500 13900 15600
Wire Wire Line
	11450 14700 11150 14700
Wire Wire Line
	11450 15150 11150 15150
Wire Wire Line
	11450 15600 11150 15600
Connection ~ 11050 15850
Wire Bus Line
	11050 15850 12400 15850
Connection ~ 12400 15850
Wire Bus Line
	12400 15850 13800 15850
Wire Wire Line
	10700 14150 10900 14150
Wire Wire Line
	10700 14600 10900 14600
Wire Wire Line
	10900 15050 10700 15050
Wire Wire Line
	10900 15500 10700 15500
Entry Wire Line
	10900 14150 11000 14250
Entry Wire Line
	10900 14600 11000 14700
Entry Wire Line
	10900 15050 11000 15150
Entry Wire Line
	10900 15500 11000 15600
Wire Wire Line
	12050 14150 12250 14150
Wire Wire Line
	12050 14600 12250 14600
Wire Wire Line
	12250 15050 12050 15050
Wire Wire Line
	12250 15500 12050 15500
Entry Wire Line
	12250 14150 12350 14250
Entry Wire Line
	12250 14600 12350 14700
Entry Wire Line
	12250 15050 12350 15150
Entry Wire Line
	12250 15500 12350 15600
Wire Wire Line
	13450 14150 13650 14150
Wire Wire Line
	13450 14600 13650 14600
Wire Wire Line
	13650 15050 13450 15050
Wire Wire Line
	13650 15500 13450 15500
Entry Wire Line
	13650 14150 13750 14250
Entry Wire Line
	13650 14600 13750 14700
Entry Wire Line
	13650 15050 13750 15150
Entry Wire Line
	13650 15500 13750 15600
Wire Wire Line
	14900 14150 15100 14150
Wire Wire Line
	14900 14600 15100 14600
Wire Wire Line
	15100 15050 14900 15050
Wire Wire Line
	15100 15500 14900 15500
Entry Wire Line
	15100 14150 15200 14250
Entry Wire Line
	15100 14600 15200 14700
Entry Wire Line
	15100 15050 15200 15150
Entry Wire Line
	15100 15500 15200 15600
Wire Bus Line
	11000 15800 12350 15800
Connection ~ 12350 15800
Wire Bus Line
	12350 15800 13750 15800
Connection ~ 13750 15800
Wire Bus Line
	13750 15800 15200 15800
Text Label 10700 13750 0    50   ~ 0
AHO[0..15]
Text Label 7950 15750 0    50   ~ 0
ALU_OP3
Wire Wire Line
	14250 14050 14300 14050
Wire Wire Line
	14300 14500 14250 14500
Connection ~ 14250 14500
Wire Wire Line
	14250 14500 14250 14050
Wire Wire Line
	14300 14950 14250 14950
Connection ~ 14250 14950
Wire Wire Line
	14250 14950 14250 14500
Wire Wire Line
	14250 14950 14250 15400
Wire Wire Line
	14300 15400 14250 15400
Connection ~ 14250 15400
Wire Wire Line
	14250 15400 14250 15750
Wire Wire Line
	12850 15400 12800 15400
Wire Wire Line
	12800 14950 12850 14950
Wire Wire Line
	12850 14500 12800 14500
Wire Wire Line
	12800 14500 12800 14050
Wire Wire Line
	12800 14050 12850 14050
Wire Wire Line
	12800 14500 12800 14950
Connection ~ 12800 14500
Connection ~ 12800 15750
Wire Wire Line
	12800 15750 14250 15750
Connection ~ 12800 14950
Wire Wire Line
	12800 14950 12800 15400
Connection ~ 12800 15400
Wire Wire Line
	12800 15400 12800 15750
Wire Wire Line
	11450 14050 11400 14050
Wire Wire Line
	11400 14050 11400 14500
Wire Wire Line
	11400 14500 11450 14500
Wire Wire Line
	11450 14950 11400 14950
Wire Wire Line
	11400 15400 11450 15400
Wire Wire Line
	11400 14500 11400 14950
Connection ~ 11400 14500
Connection ~ 11400 14950
Wire Wire Line
	11400 14950 11400 15400
Connection ~ 11400 15400
Wire Wire Line
	11400 15400 11400 15700
Wire Wire Line
	10050 14050 10100 14050
Wire Wire Line
	10100 15400 10050 15400
Wire Wire Line
	10050 14050 10050 14500
Connection ~ 10050 15400
Wire Wire Line
	10050 15400 10050 15700
Wire Wire Line
	10100 14950 10050 14950
Connection ~ 10050 14950
Wire Wire Line
	10050 14950 10050 15400
Wire Wire Line
	10050 14500 10100 14500
Connection ~ 10050 14500
Wire Wire Line
	10050 14500 10050 14950
$Comp
L CPU2908CLocal:74HC283 U86
U 1 1 82ED29F5
P 13150 6600
F 0 "U86" H 13150 7325 50  0000 C CNN
F 1 "CD74HC283" H 13150 7234 50  0000 C CNN
F 2 "Footprints:CD74HC283M96" H 13150 6600 50  0001 C CNN
F 3 "" H 13150 6600 50  0000 C CNN
	1    13150 6600
	0    1    1    0   
$EndComp
NoConn ~ 12150 6100
Wire Wire Line
	11350 6300 11300 6300
$Comp
L power:+5V #PWR064
U 1 1 83B8C742
P 11300 5100
F 0 "#PWR064" H 11300 4950 50  0001 C CNN
F 1 "+5V" H 11315 5273 50  0000 C CNN
F 2 "" H 11300 5100 50  0001 C CNN
F 3 "" H 11300 5100 50  0001 C CNN
	1    11300 5100
	1    0    0    -1  
$EndComp
Text Label 10900 5300 0    50   ~ 0
CarryFlag
Wire Wire Line
	10900 5300 11350 5300
$Comp
L power:GND #PWR063
U 1 1 83B8CCFF
P 11200 6750
F 0 "#PWR063" H 11200 6500 50  0001 C CNN
F 1 "GND" H 11205 6577 50  0000 C CNN
F 2 "" H 11200 6750 50  0001 C CNN
F 3 "" H 11200 6750 50  0001 C CNN
	1    11200 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	11200 6200 11200 6750
Connection ~ 11200 6200
Wire Wire Line
	11350 6200 11200 6200
Wire Wire Line
	11200 6100 11200 6200
Connection ~ 11200 6100
Wire Wire Line
	11350 6100 11200 6100
Wire Wire Line
	11200 6000 11200 6100
Connection ~ 11200 6000
Wire Wire Line
	11350 6000 11200 6000
Wire Wire Line
	11200 5900 11200 6000
Wire Wire Line
	11200 5900 11350 5900
Wire Wire Line
	11300 6300 11300 5500
Wire Wire Line
	11350 5500 11300 5500
Connection ~ 11300 5500
Wire Wire Line
	11300 5500 11300 5100
Wire Wire Line
	11350 5600 11200 5600
Wire Wire Line
	11200 5600 11200 5700
Connection ~ 11200 5900
Wire Wire Line
	11350 5700 11200 5700
Connection ~ 11200 5700
Wire Wire Line
	11200 5700 11200 5900
Wire Wire Line
	11350 5400 10900 5400
Text Label 10900 5400 0    50   ~ 0
ALU_A7
Wire Wire Line
	10850 6600 11350 6600
Wire Wire Line
	10850 6500 11350 6500
Text Label 12650 3250 0    50   ~ 0
ALU_OP0
Text Label 12650 3350 0    50   ~ 0
ALU_OP1
Text Label 12650 3450 0    50   ~ 0
ALU_OP2
Text Label 12650 3550 0    50   ~ 0
ALU_OP3
Wire Wire Line
	13050 3550 13050 4100
Wire Wire Line
	13050 4100 13300 4100
Wire Wire Line
	14500 4100 14750 4100
Wire Wire Line
	14550 4000 14750 4000
Wire Wire Line
	14750 3900 14600 3900
Wire Wire Line
	14750 3800 14650 3800
Wire Wire Line
	13300 4000 13100 4000
Wire Wire Line
	13300 3900 13150 3900
Wire Wire Line
	13150 3900 13150 3350
Wire Wire Line
	13100 4000 13100 3450
Wire Wire Line
	13300 3800 13200 3800
Wire Wire Line
	13200 3800 13200 3250
Wire Wire Line
	15800 4100 16050 4100
Wire Wire Line
	15850 4000 16050 4000
Wire Wire Line
	16050 3900 15900 3900
Wire Wire Line
	16050 3800 15950 3800
Wire Wire Line
	17150 4100 17400 4100
Wire Wire Line
	17200 4000 17400 4000
Wire Wire Line
	17400 3900 17250 3900
Wire Wire Line
	17400 3800 17300 3800
Wire Wire Line
	15950 3250 17300 3250
Wire Wire Line
	15850 3450 17200 3450
Wire Wire Line
	15900 3350 17250 3350
Wire Wire Line
	17300 3800 17300 3250
Wire Wire Line
	17250 3900 17250 3350
Wire Wire Line
	17200 4000 17200 3450
Wire Wire Line
	17150 3550 17150 4100
Wire Wire Line
	15800 3550 17150 3550
Wire Wire Line
	13200 3250 14650 3250
Wire Wire Line
	13100 3450 14550 3450
Wire Wire Line
	13150 3350 14600 3350
Wire Wire Line
	13050 3550 14500 3550
Wire Wire Line
	15950 3800 15950 3250
Wire Wire Line
	15900 3900 15900 3350
Wire Wire Line
	15850 4000 15850 3450
Wire Wire Line
	15800 3550 15800 4100
Wire Wire Line
	14650 3800 14650 3250
Wire Wire Line
	14600 3900 14600 3350
Wire Wire Line
	14550 4000 14550 3450
Wire Wire Line
	14500 3550 14500 4100
Connection ~ 14650 3250
Wire Wire Line
	14650 3250 15950 3250
Connection ~ 14600 3350
Wire Wire Line
	14600 3350 15900 3350
Connection ~ 14550 3450
Wire Wire Line
	14550 3450 15850 3450
Connection ~ 14500 3550
Wire Wire Line
	14500 3550 15800 3550
Connection ~ 15800 3550
Connection ~ 15850 3450
Connection ~ 15900 3350
Connection ~ 15950 3250
Wire Wire Line
	13200 3250 12650 3250
Connection ~ 13200 3250
Wire Wire Line
	12650 3350 13150 3350
Connection ~ 13150 3350
Wire Wire Line
	12650 3450 13100 3450
Connection ~ 13100 3450
Wire Wire Line
	12650 3550 13050 3550
Connection ~ 13050 3550
Wire Wire Line
	13300 4200 13250 4200
Wire Wire Line
	14750 4200 14700 4200
Wire Wire Line
	17350 4200 17400 4200
Connection ~ 14700 5250
Wire Wire Line
	16050 4200 16000 4200
Connection ~ 16000 5250
Wire Wire Line
	13250 5250 13250 5300
Connection ~ 13250 5250
$Comp
L power:GND #PWR069
U 1 1 5F3B93B2
P 13250 5300
F 0 "#PWR069" H 13250 5050 50  0001 C CNN
F 1 "GND" H 13255 5127 50  0000 C CNN
F 2 "" H 13250 5300 50  0001 C CNN
F 3 "" H 13250 5300 50  0001 C CNN
	1    13250 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	13300 4400 13150 4400
Wire Wire Line
	13150 4400 13150 4500
Wire Wire Line
	13150 4500 13300 4500
Wire Wire Line
	13300 4600 13150 4600
Wire Wire Line
	13150 4600 13150 4500
Connection ~ 13150 4500
Wire Wire Line
	13300 4700 13150 4700
Wire Wire Line
	13150 4700 13150 4600
Connection ~ 13150 4600
Wire Wire Line
	13250 4200 13250 5250
Wire Wire Line
	13300 4800 13150 4800
Wire Wire Line
	13150 4800 13150 4700
Connection ~ 13150 4700
$Comp
L power:+5V #PWR068
U 1 1 60F83ECD
P 13150 4400
F 0 "#PWR068" H 13150 4250 50  0001 C CNN
F 1 "+5V" H 13165 4573 50  0000 C CNN
F 2 "" H 13150 4400 50  0001 C CNN
F 3 "" H 13150 4400 50  0001 C CNN
	1    13150 4400
	1    0    0    -1  
$EndComp
Connection ~ 13150 4400
Wire Wire Line
	14750 4400 14600 4400
Wire Wire Line
	14600 4400 14600 4500
Wire Wire Line
	14600 4500 14750 4500
Wire Wire Line
	14750 4600 14600 4600
Wire Wire Line
	14600 4600 14600 4500
Connection ~ 14600 4500
Wire Wire Line
	14750 4700 14600 4700
Wire Wire Line
	14600 4700 14600 4600
Connection ~ 14600 4600
Wire Wire Line
	14600 4800 14600 4700
Connection ~ 14600 4700
$Comp
L power:+5V #PWR072
U 1 1 60F85ED9
P 14600 4400
F 0 "#PWR072" H 14600 4250 50  0001 C CNN
F 1 "+5V" H 14615 4573 50  0000 C CNN
F 2 "" H 14600 4400 50  0001 C CNN
F 3 "" H 14600 4400 50  0001 C CNN
	1    14600 4400
	1    0    0    -1  
$EndComp
Connection ~ 14600 4400
Wire Wire Line
	16050 4400 15900 4400
Wire Wire Line
	15900 4400 15900 4500
Wire Wire Line
	15900 4500 16050 4500
Wire Wire Line
	16050 4600 15900 4600
Wire Wire Line
	15900 4600 15900 4500
Connection ~ 15900 4500
Wire Wire Line
	16050 4700 15900 4700
Wire Wire Line
	15900 4700 15900 4600
Connection ~ 15900 4600
Wire Wire Line
	15900 4800 15900 4700
Connection ~ 15900 4700
$Comp
L power:+5V #PWR074
U 1 1 610FA85D
P 15900 4400
F 0 "#PWR074" H 15900 4250 50  0001 C CNN
F 1 "+5V" H 15915 4573 50  0000 C CNN
F 2 "" H 15900 4400 50  0001 C CNN
F 3 "" H 15900 4400 50  0001 C CNN
	1    15900 4400
	1    0    0    -1  
$EndComp
Connection ~ 15900 4400
Wire Wire Line
	17400 4400 17250 4400
Wire Wire Line
	17250 4400 17250 4500
Wire Wire Line
	17250 4500 17400 4500
Wire Wire Line
	17400 4600 17250 4600
Wire Wire Line
	17250 4600 17250 4500
Connection ~ 17250 4500
Wire Wire Line
	17400 4700 17250 4700
Wire Wire Line
	17250 4700 17250 4600
Connection ~ 17250 4600
Wire Wire Line
	17250 4800 17250 4700
Connection ~ 17250 4700
$Comp
L power:+5V #PWR079
U 1 1 61272D94
P 17250 4400
F 0 "#PWR079" H 17250 4250 50  0001 C CNN
F 1 "+5V" H 17265 4573 50  0000 C CNN
F 2 "" H 17250 4400 50  0001 C CNN
F 3 "" H 17250 4400 50  0001 C CNN
	1    17250 4400
	1    0    0    -1  
$EndComp
Connection ~ 17250 4400
Wire Wire Line
	13300 5000 12950 5000
Wire Wire Line
	13300 5100 12950 5100
NoConn ~ 14100 4600
NoConn ~ 15550 4600
NoConn ~ 16850 4600
NoConn ~ 18200 4600
Wire Wire Line
	15400 5000 16050 5000
Wire Wire Line
	15400 5100 16050 5100
Wire Wire Line
	14100 5000 14750 5000
Wire Wire Line
	14100 5100 14750 5100
Wire Wire Line
	14100 4000 14450 4000
Wire Wire Line
	15550 4000 15750 4000
Wire Wire Line
	16850 4000 17100 4000
Wire Wire Line
	18200 4000 18300 4000
Text Label 12450 750  0    50   ~ 0
ALU_OP0
Text Label 12450 850  0    50   ~ 0
ALU_OP1
Text Label 12450 950  0    50   ~ 0
ALU_OP2
Text Label 12450 1050 0    50   ~ 0
ALU_OP3
Wire Wire Line
	12850 1050 12850 1600
Wire Wire Line
	12850 1600 13100 1600
Wire Wire Line
	13100 1500 12900 1500
Wire Wire Line
	13100 1400 12950 1400
Wire Wire Line
	12950 1400 12950 850 
Wire Wire Line
	12900 1500 12900 950 
Wire Wire Line
	13100 1300 13000 1300
Wire Wire Line
	13000 1300 13000 750 
Wire Wire Line
	15700 1600 15950 1600
Wire Wire Line
	15750 1500 15950 1500
Wire Wire Line
	15950 1400 15800 1400
Wire Wire Line
	15950 1300 15850 1300
Wire Wire Line
	17050 1600 17300 1600
Wire Wire Line
	17100 1500 17300 1500
Wire Wire Line
	17300 1400 17150 1400
Wire Wire Line
	17300 1300 17200 1300
Wire Wire Line
	15850 750  17200 750 
Wire Wire Line
	15750 950  17100 950 
Wire Wire Line
	15800 850  17150 850 
Wire Wire Line
	17200 1300 17200 750 
Wire Wire Line
	17150 1400 17150 850 
Wire Wire Line
	17100 1500 17100 950 
Wire Wire Line
	17050 1050 17050 1600
Wire Wire Line
	15700 1050 17050 1050
Wire Wire Line
	15850 1300 15850 750 
Wire Wire Line
	15800 1400 15800 850 
Wire Wire Line
	15750 1500 15750 950 
Wire Wire Line
	15700 1050 15700 1600
Wire Wire Line
	14500 1300 14500 750 
Wire Wire Line
	14450 1400 14450 850 
Wire Wire Line
	14400 1500 14400 950 
Wire Wire Line
	14350 1050 14350 1600
Connection ~ 14500 750 
Wire Wire Line
	14500 750  15850 750 
Connection ~ 14450 850 
Wire Wire Line
	14450 850  15800 850 
Connection ~ 14400 950 
Wire Wire Line
	14400 950  15750 950 
Connection ~ 14350 1050
Wire Wire Line
	14350 1050 15700 1050
Connection ~ 15700 1050
Connection ~ 15750 950 
Connection ~ 15800 850 
Connection ~ 15850 750 
Connection ~ 13000 750 
Connection ~ 12950 850 
Connection ~ 12900 950 
Connection ~ 12850 1050
Wire Wire Line
	13100 1700 13050 1700
Wire Wire Line
	17250 1700 17300 1700
Wire Wire Line
	15950 1700 15900 1700
Connection ~ 15900 2750
Wire Wire Line
	15900 2750 17250 2750
Wire Wire Line
	13050 2750 13050 2800
Connection ~ 13050 2750
$Comp
L power:GND #PWR067
U 1 1 636AF569
P 13050 2800
F 0 "#PWR067" H 13050 2550 50  0001 C CNN
F 1 "GND" H 13055 2627 50  0000 C CNN
F 2 "" H 13050 2800 50  0001 C CNN
F 3 "" H 13050 2800 50  0001 C CNN
	1    13050 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	13100 1900 12950 1900
Wire Wire Line
	12950 1900 12950 2000
Wire Wire Line
	12950 2000 13100 2000
Wire Wire Line
	13100 2100 12950 2100
Wire Wire Line
	12950 2100 12950 2000
Connection ~ 12950 2000
Wire Wire Line
	13100 2200 12950 2200
Wire Wire Line
	12950 2200 12950 2100
Connection ~ 12950 2100
Wire Wire Line
	13050 1700 13050 2750
Wire Wire Line
	13100 2300 12950 2300
Wire Wire Line
	12950 2300 12950 2200
Connection ~ 12950 2200
$Comp
L power:+5V #PWR066
U 1 1 636AF57C
P 12950 1900
F 0 "#PWR066" H 12950 1750 50  0001 C CNN
F 1 "+5V" H 12965 2073 50  0000 C CNN
F 2 "" H 12950 1900 50  0001 C CNN
F 3 "" H 12950 1900 50  0001 C CNN
	1    12950 1900
	1    0    0    -1  
$EndComp
Connection ~ 12950 1900
Wire Wire Line
	14450 1900 14450 2000
Wire Wire Line
	14450 2100 14450 2000
Connection ~ 14450 2000
Wire Wire Line
	14450 2200 14450 2100
Connection ~ 14450 2100
Wire Wire Line
	14450 2300 14450 2200
Connection ~ 14450 2200
$Comp
L power:+5V #PWR070
U 1 1 636AF58E
P 14450 1900
F 0 "#PWR070" H 14450 1750 50  0001 C CNN
F 1 "+5V" H 14465 2073 50  0000 C CNN
F 2 "" H 14450 1900 50  0001 C CNN
F 3 "" H 14450 1900 50  0001 C CNN
	1    14450 1900
	1    0    0    -1  
$EndComp
Connection ~ 14450 1900
Wire Wire Line
	15950 1900 15800 1900
Wire Wire Line
	15800 1900 15800 2000
Wire Wire Line
	15800 2000 15950 2000
Wire Wire Line
	15950 2100 15800 2100
Wire Wire Line
	15800 2100 15800 2000
Connection ~ 15800 2000
Wire Wire Line
	15950 2200 15800 2200
Wire Wire Line
	15800 2200 15800 2100
Connection ~ 15800 2100
Wire Wire Line
	15800 2300 15800 2200
Connection ~ 15800 2200
$Comp
L power:+5V #PWR073
U 1 1 636AF5A1
P 15800 1900
F 0 "#PWR073" H 15800 1750 50  0001 C CNN
F 1 "+5V" H 15815 2073 50  0000 C CNN
F 2 "" H 15800 1900 50  0001 C CNN
F 3 "" H 15800 1900 50  0001 C CNN
	1    15800 1900
	1    0    0    -1  
$EndComp
Connection ~ 15800 1900
Wire Wire Line
	17300 1900 17150 1900
Wire Wire Line
	17150 1900 17150 2000
Wire Wire Line
	17150 2000 17300 2000
Wire Wire Line
	17300 2100 17150 2100
Wire Wire Line
	17150 2100 17150 2000
Connection ~ 17150 2000
Wire Wire Line
	17300 2200 17150 2200
Wire Wire Line
	17150 2200 17150 2100
Connection ~ 17150 2100
Wire Wire Line
	17150 2300 17150 2200
Connection ~ 17150 2200
$Comp
L power:+5V #PWR078
U 1 1 636AF5B4
P 17150 1900
F 0 "#PWR078" H 17150 1750 50  0001 C CNN
F 1 "+5V" H 17165 2073 50  0000 C CNN
F 2 "" H 17150 1900 50  0001 C CNN
F 3 "" H 17150 1900 50  0001 C CNN
	1    17150 1900
	1    0    0    -1  
$EndComp
Connection ~ 17150 1900
NoConn ~ 13900 2100
NoConn ~ 16750 2100
NoConn ~ 18100 2100
Wire Wire Line
	16750 1500 17000 1500
Wire Wire Line
	18100 1500 18200 1500
$Comp
L CPU2908CLocal:74HC541 U100
U 1 1 656F7E9B
P 16250 9450
F 0 "U100" H 16250 10175 50  0000 C CNN
F 1 "TC74VHCT541" H 16250 10084 50  0000 C CNN
F 2 "digikey-footprints:TSSOP-20_W4.4mm" H 16250 9450 50  0001 C CNN
F 3 "" H 16250 9450 50  0000 C CNN
	1    16250 9450
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC541 U106
U 1 1 65A8C096
P 17900 9450
F 0 "U106" H 17900 10175 50  0000 C CNN
F 1 "TC74VHCT541" H 17900 10084 50  0000 C CNN
F 2 "digikey-footprints:TSSOP-20_W4.4mm" H 17900 9450 50  0001 C CNN
F 3 "" H 17900 9450 50  0000 C CNN
	1    17900 9450
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC541 U108
U 1 1 65A8DBB9
P 19550 9450
F 0 "U108" H 19550 10175 50  0000 C CNN
F 1 "TC74VHCT541" H 19550 10084 50  0000 C CNN
F 2 "digikey-footprints:TSSOP-20_W4.4mm" H 19550 9450 50  0001 C CNN
F 3 "" H 19550 9450 50  0000 C CNN
	1    19550 9450
	1    0    0    -1  
$EndComp
Text Label 14300 3050 1    50   ~ 0
ALU_L0
Text Label 15650 3050 1    50   ~ 0
ALU_L1
Text Label 17000 3050 1    50   ~ 0
ALU_L2
Text Label 18200 2800 3    50   ~ 0
ALU_L3
Text Label 14450 5550 1    50   ~ 0
ALU_L4
Text Label 15750 5550 1    50   ~ 0
ALU_L5
Text Label 17100 5550 1    50   ~ 0
ALU_L6
Text Label 18300 5250 3    50   ~ 0
ALU_L7
Entry Wire Line
	14300 3050 14400 3150
Entry Wire Line
	15650 3050 15750 3150
Entry Wire Line
	17000 3050 17100 3150
Entry Wire Line
	18200 3050 18300 3150
Entry Wire Line
	14450 5550 14550 5650
Entry Wire Line
	15750 5550 15850 5650
Entry Wire Line
	17100 5550 17200 5650
Entry Wire Line
	18300 5550 18400 5650
Wire Bus Line
	18400 3150 18400 3850
Wire Wire Line
	13100 2500 12750 2500
Wire Wire Line
	13100 2600 12750 2600
Text Label 12750 2500 0    50   ~ 0
ALU_A0
Text Label 15350 2500 0    50   ~ 0
ALU_A2
Text Label 16700 2500 0    50   ~ 0
ALU_A3
Text Label 12950 5000 0    50   ~ 0
ALU_A4
Text Label 14150 5000 0    50   ~ 0
ALU_A5
Text Label 15450 5000 0    50   ~ 0
ALU_A6
Text Label 16800 5000 0    50   ~ 0
ALU_A7
Text Label 12750 2600 0    50   ~ 0
ALU_B0
Text Label 15350 2600 0    50   ~ 0
ALU_B2
Text Label 16700 2600 0    50   ~ 0
ALU_B3
Text Label 12950 5100 0    50   ~ 0
ALU_B4
Text Label 14150 5100 0    50   ~ 0
ALU_B5
Text Label 15450 5100 0    50   ~ 0
ALU_B6
Text Label 16800 5100 0    50   ~ 0
ALU_B7
Wire Wire Line
	15750 4000 15750 5250
Wire Wire Line
	17100 4000 17100 5250
Wire Wire Line
	18300 4000 18300 5550
Wire Wire Line
	14300 1500 14300 3050
Wire Wire Line
	15650 1500 15650 3050
Wire Wire Line
	17000 1500 17000 3050
Wire Wire Line
	18200 1500 18200 3050
Wire Wire Line
	13900 1500 14300 1500
Wire Wire Line
	15800 2300 15900 2300
Wire Wire Line
	17150 2300 17250 2300
Wire Wire Line
	17250 4800 17350 4800
Wire Wire Line
	15900 4800 16000 4800
Wire Wire Line
	14600 4800 14700 4800
Wire Wire Line
	20450 1100 20850 1100
Wire Wire Line
	20450 1200 20850 1200
Wire Wire Line
	20450 2400 20650 2400
Wire Wire Line
	20650 2400 20650 1400
Wire Wire Line
	20450 2500 20700 2500
Wire Wire Line
	20700 2500 20700 1500
Wire Wire Line
	20450 2600 20750 2600
Wire Wire Line
	20750 2600 20750 1600
Wire Wire Line
	19200 4800 19050 4800
Wire Wire Line
	19050 4800 19050 4900
$Comp
L power:GND #PWR090
U 1 1 6B8476D9
P 19050 5250
F 0 "#PWR090" H 19050 5000 50  0001 C CNN
F 1 "GND" H 19055 5077 50  0000 C CNN
F 2 "" H 19050 5250 50  0001 C CNN
F 3 "" H 19050 5250 50  0001 C CNN
	1    19050 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	19200 4900 19050 4900
Connection ~ 19050 4900
Wire Wire Line
	19050 4900 19050 5000
Wire Wire Line
	19050 5000 19200 5000
Connection ~ 19050 5000
Wire Wire Line
	19050 5000 19050 5100
Wire Wire Line
	19200 5100 19050 5100
Connection ~ 19050 5100
Wire Wire Line
	19050 5100 19050 5250
Wire Wire Line
	19200 5200 19100 5200
Wire Wire Line
	19100 5200 19100 4100
$Comp
L power:+5V #PWR092
U 1 1 6BF45C4C
P 19100 4100
F 0 "#PWR092" H 19100 3950 50  0001 C CNN
F 1 "+5V" H 19115 4273 50  0000 C CNN
F 2 "" H 19100 4100 50  0001 C CNN
F 3 "" H 19100 4100 50  0001 C CNN
	1    19100 4100
	1    0    0    -1  
$EndComp
NoConn ~ 20000 5000
Wire Wire Line
	19050 4800 19050 4600
Wire Wire Line
	19050 4200 19200 4200
Connection ~ 19050 4800
Wire Wire Line
	19200 4300 19050 4300
Connection ~ 19050 4300
Wire Wire Line
	19050 4300 19050 4200
Wire Wire Line
	19650 900  19400 900 
Wire Wire Line
	19650 1000 19300 1000
Wire Wire Line
	19300 1200 19650 1200
Wire Wire Line
	19300 1400 19650 1400
Wire Wire Line
	19300 1600 19650 1600
Entry Wire Line
	19200 900  19300 1000
Entry Wire Line
	19200 1100 19300 1200
Entry Wire Line
	19200 1300 19300 1400
Entry Wire Line
	19200 1500 19300 1600
Text Label 19400 1100 0    50   ~ 0
Flag1
Text Label 19900 3450 2    50   ~ 0
Flag2
Text Label 21150 2550 0    50   ~ 0
FlagOut3
Text Label 19400 2300 0    50   ~ 0
Flag4
Text Label 19400 2500 0    50   ~ 0
Flag5
Text Label 21150 2750 0    50   ~ 0
FlagOut6
Text Label 19400 2900 0    50   ~ 0
Flag7
Text Label 20200 4400 2    50   ~ 0
Flag0
Text Label 21150 2450 0    50   ~ 0
FlagOut0
Wire Wire Line
	19650 1900 19600 1900
Wire Wire Line
	19600 1900 19600 1950
$Comp
L power:GND #PWR095
U 1 1 6D824E60
P 19600 1950
F 0 "#PWR095" H 19600 1700 50  0001 C CNN
F 1 "GND" H 19605 1777 50  0000 C CNN
F 2 "" H 19600 1950 50  0001 C CNN
F 3 "" H 19600 1950 50  0001 C CNN
	1    19600 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	19650 3300 19550 3300
Wire Wire Line
	19550 3300 19550 3450
Wire Wire Line
	19550 3450 19900 3450
Connection ~ 19550 3450
Wire Wire Line
	19550 3450 19550 3550
Wire Wire Line
	19550 3550 19900 3550
Wire Wire Line
	19550 3550 19550 3600
Connection ~ 19550 3550
$Comp
L power:GND #PWR094
U 1 1 6E1225B8
P 19550 3600
F 0 "#PWR094" H 19550 3350 50  0001 C CNN
F 1 "GND" H 19555 3427 50  0000 C CNN
F 2 "" H 19550 3600 50  0001 C CNN
F 3 "" H 19550 3600 50  0001 C CNN
	1    19550 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	19300 1100 19300 1050
Wire Wire Line
	19300 1050 19100 1050
Wire Wire Line
	19100 1050 19100 900 
Wire Wire Line
	19300 1100 19650 1100
$Comp
L power:+5V #PWR091
U 1 1 6E2F32B9
P 19100 900
F 0 "#PWR091" H 19100 750 50  0001 C CNN
F 1 "+5V" H 19115 1073 50  0000 C CNN
F 2 "" H 19100 900 50  0001 C CNN
F 3 "" H 19100 900 50  0001 C CNN
	1    19100 900 
	1    0    0    -1  
$EndComp
Text Label 19400 1300 0    50   ~ 0
Flag2
Text Label 19900 3550 2    50   ~ 0
Flag4
Text Notes 15550 6850 0    50   ~ 0
Lo
Wire Wire Line
	14650 7000 14650 7050
Wire Wire Line
	14650 7050 14200 7050
Wire Wire Line
	14200 7050 14200 6100
Wire Wire Line
	14200 6100 13650 6100
Wire Wire Line
	13650 6100 13650 6200
Wire Wire Line
	12950 7000 12950 7150
Wire Wire Line
	18500 4400 19200 4400
$Comp
L CPU2908CLocal:74HC283 U84
U 1 1 7078A6DA
P 11350 12800
F 0 "U84" H 11350 13525 50  0000 C CNN
F 1 "CD74HC283" H 11350 13434 50  0000 C CNN
F 2 "Footprints:CD74HC283M96" H 11350 12800 50  0001 C CNN
F 3 "" H 11350 12800 50  0000 C CNN
	1    11350 12800
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC157 U77
U 1 1 7078A6E0
P 10300 12800
F 0 "U77" H 10300 13525 50  0000 C CNN
F 1 "74HC157" H 10300 13434 50  0000 C CNN
F 2 "Footprints:SN74HC157DR" H 10300 12800 50  0001 C CNN
F 3 "" H 10300 12800 50  0000 C CNN
	1    10300 12800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10850 12300 10850 12500
Wire Wire Line
	10850 12500 10950 12500
Wire Wire Line
	10700 12300 10850 12300
Wire Wire Line
	10700 12400 10800 12400
Wire Wire Line
	10800 12600 10950 12600
Wire Wire Line
	10800 12400 10800 12600
Wire Wire Line
	10700 12500 10750 12500
Wire Wire Line
	10750 12500 10750 12700
Wire Wire Line
	10750 12700 10950 12700
Wire Wire Line
	10700 12600 10700 12800
Wire Wire Line
	10700 12800 10950 12800
$Comp
L CPU2908CLocal:74HC283 U94
U 1 1 7078A6FD
P 14200 12800
F 0 "U94" H 14200 13525 50  0000 C CNN
F 1 "CD74HC283" H 14200 13434 50  0000 C CNN
F 2 "Footprints:CD74HC283M96" H 14200 12800 50  0001 C CNN
F 3 "" H 14200 12800 50  0000 C CNN
	1    14200 12800
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC157 U88
U 1 1 7078A703
P 13150 12800
F 0 "U88" H 13150 13525 50  0000 C CNN
F 1 "74HC157" H 13150 13434 50  0000 C CNN
F 2 "Footprints:SN74HC157DR" H 13150 12800 50  0001 C CNN
F 3 "" H 13150 12800 50  0000 C CNN
	1    13150 12800
	1    0    0    -1  
$EndComp
Entry Wire Line
	13400 12900 13500 13000
Entry Wire Line
	13400 13000 13500 13100
Entry Wire Line
	13400 13100 13500 13200
Entry Wire Line
	13400 13200 13500 13300
Wire Wire Line
	13600 12500 13600 12700
Wire Wire Line
	13600 12700 13800 12700
Wire Wire Line
	13550 12600 13550 12800
Wire Wire Line
	13550 12800 13800 12800
Wire Wire Line
	13550 11100 13800 11100
Wire Wire Line
	13550 10900 13550 11100
Wire Wire Line
	13600 11000 13800 11000
Wire Wire Line
	13600 10800 13600 11000
Entry Wire Line
	13450 11500 13550 11600
Entry Wire Line
	13450 11400 13550 11500
Entry Wire Line
	13450 11300 13550 11400
Entry Wire Line
	13450 11200 13550 11300
$Comp
L CPU2908CLocal:74HC157 U87
U 1 1 705ADC41
P 13150 11100
F 0 "U87" H 13150 11825 50  0000 C CNN
F 1 "74HC157" H 13150 11734 50  0000 C CNN
F 2 "Footprints:SN74HC157DR" H 13150 11100 50  0001 C CNN
F 3 "" H 13150 11100 50  0000 C CNN
	1    13150 11100
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC283 U93
U 1 1 705ADC3B
P 14200 11100
F 0 "U93" H 14200 11825 50  0000 C CNN
F 1 "CD74HC283" H 14200 11734 50  0000 C CNN
F 2 "Footprints:CD74HC283M96" H 14200 11100 50  0001 C CNN
F 3 "" H 14200 11100 50  0000 C CNN
	1    14200 11100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 11100 10950 11100
Wire Wire Line
	10700 10900 10700 11100
Wire Wire Line
	10750 11000 10950 11000
Wire Wire Line
	10750 10800 10750 11000
Wire Wire Line
	10700 10800 10750 10800
Wire Wire Line
	10800 10700 10800 10900
Entry Wire Line
	10600 11500 10700 11600
Entry Wire Line
	10600 11400 10700 11500
Entry Wire Line
	10600 11300 10700 11400
Entry Wire Line
	10600 11200 10700 11300
Wire Wire Line
	10800 10900 10950 10900
Wire Wire Line
	10700 10700 10800 10700
Wire Wire Line
	10700 10600 10850 10600
Wire Wire Line
	10850 10800 10950 10800
Wire Wire Line
	10850 10600 10850 10800
$Comp
L CPU2908CLocal:74HC157 U76
U 1 1 804B07DB
P 10300 11100
F 0 "U76" H 10300 11825 50  0000 C CNN
F 1 "74HC157" H 10300 11734 50  0000 C CNN
F 2 "Footprints:SN74HC157DR" H 10300 11100 50  0001 C CNN
F 3 "" H 10300 11100 50  0000 C CNN
	1    10300 11100
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC283 U83
U 1 1 6FA5CB41
P 11350 11100
F 0 "U83" H 11350 11825 50  0000 C CNN
F 1 "CD74HC283" H 11350 11734 50  0000 C CNN
F 2 "Footprints:CD74HC283M96" H 11350 11100 50  0001 C CNN
F 3 "" H 11350 11100 50  0000 C CNN
	1    11350 11100
	1    0    0    -1  
$EndComp
Wire Wire Line
	13150 7000 13150 7250
Wire Wire Line
	13250 7000 13250 7250
Wire Wire Line
	13350 7000 13350 7250
Wire Wire Line
	13450 7000 13450 7250
Wire Wire Line
	14850 7000 14850 7250
Wire Wire Line
	14950 7000 14950 7250
Wire Wire Line
	15050 7000 15050 7250
Wire Wire Line
	15150 7000 15150 7250
Text Label 14850 7200 1    50   ~ 0
ALU7
Text Label 13450 7200 1    50   ~ 0
ALU0
Text Label 13350 7200 1    50   ~ 0
ALU1
Text Label 13250 7200 1    50   ~ 0
ALU2
Text Label 13150 7200 1    50   ~ 0
ALU3
Text Label 15150 7200 1    50   ~ 0
ALU4
Text Label 15050 7200 1    50   ~ 0
ALU5
Text Label 14950 7200 1    50   ~ 0
ALU6
Entry Wire Line
	12100 950  12200 1050
Entry Wire Line
	12100 1050 12200 1150
Entry Wire Line
	12100 1150 12200 1250
Entry Wire Line
	12100 1250 12200 1350
Entry Wire Line
	12100 1350 12200 1450
Entry Wire Line
	12100 1450 12200 1550
Entry Wire Line
	12100 1550 12200 1650
Entry Wire Line
	12100 1650 12200 1750
Wire Wire Line
	18500 4400 18500 5750
Wire Wire Line
	18500 5750 12500 5750
Entry Wire Line
	14250 5700 14350 5800
Entry Wire Line
	14350 5700 14450 5800
Entry Wire Line
	14450 5700 14550 5800
Entry Wire Line
	14550 5700 14650 5800
Entry Wire Line
	12550 5700 12650 5800
Entry Wire Line
	12650 5700 12750 5800
Entry Wire Line
	12750 5700 12850 5800
Entry Wire Line
	12850 5700 12950 5800
Wire Wire Line
	12650 5800 12650 6200
Wire Wire Line
	12750 5800 12750 6200
Wire Wire Line
	12850 5800 12850 6200
Wire Wire Line
	12950 5800 12950 6200
Wire Wire Line
	14350 5800 14350 6200
Wire Wire Line
	14450 5800 14450 6200
Wire Wire Line
	14550 5800 14550 6200
Wire Wire Line
	14650 5800 14650 6200
Entry Wire Line
	14750 5850 14850 5950
Entry Wire Line
	14850 5850 14950 5950
Entry Wire Line
	14950 5850 15050 5950
Entry Wire Line
	15050 5850 15150 5950
Wire Wire Line
	14850 5950 14850 6200
Wire Wire Line
	14950 5950 14950 6200
Wire Wire Line
	15050 5950 15050 6200
Wire Wire Line
	15150 5950 15150 6200
Entry Wire Line
	13050 5850 13150 5950
Entry Wire Line
	13150 5850 13250 5950
Entry Wire Line
	13250 5850 13350 5950
Entry Wire Line
	13350 5850 13450 5950
Wire Wire Line
	13150 5950 13150 6200
Wire Wire Line
	13250 5950 13250 6200
Wire Wire Line
	13350 5950 13350 6200
Wire Wire Line
	13450 5950 13450 6200
Connection ~ 14550 2750
Wire Wire Line
	14550 2750 15900 2750
NoConn ~ 15400 2100
Wire Wire Line
	15400 1500 15650 1500
Wire Wire Line
	14600 1300 14500 1300
Wire Wire Line
	14600 1400 14450 1400
Wire Wire Line
	14400 1500 14600 1500
Wire Wire Line
	14350 1600 14600 1600
Wire Wire Line
	14450 2300 14550 2300
Wire Wire Line
	14600 2200 14450 2200
Wire Wire Line
	14600 2100 14450 2100
Wire Wire Line
	14450 2000 14600 2000
Wire Wire Line
	14600 1900 14450 1900
Wire Wire Line
	14600 1700 14550 1700
Text Label 14000 2600 0    50   ~ 0
ALU_B1
Text Label 14000 2500 0    50   ~ 0
ALU_A1
Wire Wire Line
	13900 2600 14600 2600
Wire Wire Line
	13900 2500 14600 2500
Wire Wire Line
	15350 2600 15900 2600
Wire Wire Line
	16700 2500 17300 2500
Wire Wire Line
	16800 5000 17400 5000
Wire Wire Line
	16800 5100 17350 5100
Wire Wire Line
	14550 2300 14600 2300
Wire Wire Line
	15900 2300 15950 2300
Wire Wire Line
	15900 2600 15950 2600
Wire Wire Line
	17250 2300 17300 2300
Wire Wire Line
	17250 2600 17250 2750
Wire Wire Line
	13000 750  14500 750 
Wire Wire Line
	12950 850  14450 850 
Wire Wire Line
	12900 950  14400 950 
Wire Wire Line
	12850 1050 14350 1050
Wire Wire Line
	13050 2750 14550 2750
Wire Wire Line
	12450 750  13000 750 
Text Label 13450 6200 1    50   ~ 0
ALU_L0
Text Label 13350 6200 1    50   ~ 0
ALU_L1
Text Label 13250 6200 1    50   ~ 0
ALU_L2
Text Label 13150 6200 1    50   ~ 0
ALU_L3
Text Label 15150 6200 1    50   ~ 0
ALU_L4
Text Label 15050 6200 1    50   ~ 0
ALU_L5
Text Label 14950 6200 1    50   ~ 0
ALU_L6
Text Label 14850 6200 1    50   ~ 0
ALU_L7
Text Label 12950 6200 1    50   ~ 0
ALU_B0
Text Label 12850 6200 1    50   ~ 0
ALU_B1
Text Label 12750 6200 1    50   ~ 0
ALU_B2
Text Label 12650 6200 1    50   ~ 0
ALU_B3
Text Label 14650 6200 1    50   ~ 0
ALU_B4
Text Label 14550 6200 1    50   ~ 0
ALU_B5
Text Label 14450 6200 1    50   ~ 0
ALU_B6
Text Label 14350 6200 1    50   ~ 0
ALU_B7
Wire Wire Line
	12950 7150 12500 7150
Wire Wire Line
	12500 7150 12500 5750
Wire Wire Line
	14700 4800 14750 4800
Wire Wire Line
	16000 4800 16050 4800
Wire Wire Line
	17350 4800 17400 4800
Wire Wire Line
	17350 5100 17400 5100
Entry Wire Line
	13150 7250 13250 7350
Entry Wire Line
	13250 7250 13350 7350
Entry Wire Line
	13350 7250 13450 7350
Entry Wire Line
	13450 7250 13550 7350
Entry Wire Line
	14850 7250 14950 7350
Entry Wire Line
	14950 7250 15050 7350
Entry Wire Line
	15050 7250 15150 7350
Entry Wire Line
	15150 7250 15250 7350
Text Label 10850 6500 0    50   ~ 0
ALU_CY0
Text Label 10850 6600 0    50   ~ 0
ALU_CY1
Wire Wire Line
	13600 12500 13550 12500
Wire Wire Line
	13550 12400 13650 12400
Wire Wire Line
	13650 12400 13650 12600
Wire Wire Line
	13650 12600 13800 12600
Wire Wire Line
	13550 12300 13700 12300
Wire Wire Line
	13700 12300 13700 12500
Wire Wire Line
	13700 12500 13800 12500
Wire Wire Line
	13550 10800 13600 10800
Wire Wire Line
	13550 10700 13650 10700
Wire Wire Line
	13650 10700 13650 10900
Wire Wire Line
	13650 10900 13800 10900
Wire Wire Line
	13550 10600 13700 10600
Wire Wire Line
	13700 10600 13700 10800
Wire Wire Line
	13700 10800 13800 10800
Wire Wire Line
	11750 11300 12300 11300
Wire Wire Line
	12300 11300 12300 10350
Wire Wire Line
	12300 10350 13800 10350
Wire Wire Line
	13800 10350 13800 10600
Wire Wire Line
	14600 11300 14650 11300
Wire Wire Line
	14650 11300 14650 11850
Wire Wire Line
	10900 11850 10900 12300
Wire Wire Line
	10900 12300 10950 12300
Wire Wire Line
	11750 13000 12300 13000
Wire Wire Line
	12300 13000 12300 12000
Wire Wire Line
	13750 12000 13750 12300
Wire Wire Line
	13750 12300 13800 12300
NoConn ~ 14600 13000
Wire Wire Line
	10950 10600 10900 10600
Wire Wire Line
	10900 10600 10900 10450
Wire Wire Line
	10900 10450 10550 10450
Wire Wire Line
	21550 4200 21750 4200
Text Label 21750 4200 2    50   ~ 0
Flag6
Text Label 20500 4200 0    50   ~ 0
ALU0
Text Label 20500 4300 0    50   ~ 0
ALU1
Text Label 20500 4400 0    50   ~ 0
ALU2
Text Label 20500 4500 0    50   ~ 0
ALU3
Text Label 20500 4600 0    50   ~ 0
ALU4
Text Label 20500 4700 0    50   ~ 0
ALU5
Text Label 20500 4800 0    50   ~ 0
ALU6
Text Label 20500 4900 0    50   ~ 0
ALU7
Wire Wire Line
	20450 4200 20750 4200
Wire Wire Line
	20450 4300 20750 4300
Wire Wire Line
	20450 4400 20750 4400
Wire Wire Line
	20450 4500 20750 4500
Wire Wire Line
	20450 4600 20750 4600
Wire Wire Line
	20450 4700 20750 4700
Wire Wire Line
	20450 4800 20750 4800
Wire Wire Line
	20450 4900 20750 4900
Entry Wire Line
	20350 4100 20450 4200
Entry Wire Line
	20350 4200 20450 4300
Entry Wire Line
	20350 4300 20450 4400
Entry Wire Line
	20350 4400 20450 4500
Entry Wire Line
	20350 4500 20450 4600
Entry Wire Line
	20350 4600 20450 4700
Entry Wire Line
	20350 4700 20450 4800
Entry Wire Line
	20350 4800 20450 4900
Wire Bus Line
	18400 3850 20350 3850
Connection ~ 18400 3850
Wire Bus Line
	18400 3850 18400 5650
Wire Wire Line
	15750 5250 15750 5550
Wire Wire Line
	17100 5250 17100 5550
Wire Wire Line
	13250 5250 14450 5250
Wire Wire Line
	14700 5250 16000 5250
Wire Wire Line
	16000 5250 17350 5250
Wire Wire Line
	14700 4200 14700 5250
Wire Wire Line
	16000 4200 16000 5250
Wire Wire Line
	17350 4200 17350 5250
Wire Bus Line
	15150 5850 15150 5650
Connection ~ 15150 5650
Text Label 18800 4500 0    50   ~ 0
ALU0
Wire Wire Line
	18800 4500 19200 4500
Text Label 14250 7350 0    50   ~ 0
ALU[0..7]
Text Label 2000 15950 0    50   ~ 0
WB_AD[0..15]
Text Label 11800 10800 0    50   ~ 0
WB_AD0
Text Label 10550 10450 0    50   ~ 0
ALU_OP2
Wire Bus Line
	15200 13750 15200 11800
Text Label 10750 11300 0    50   ~ 0
AHO0
Text Label 10750 11400 0    50   ~ 0
AHO1
Text Label 10750 11500 0    50   ~ 0
AHO2
Text Label 10750 11600 0    50   ~ 0
AHO3
Text Label 13600 11300 0    50   ~ 0
AHO4
Text Label 13600 11400 0    50   ~ 0
AHO5
Text Label 13600 11500 0    50   ~ 0
AHO6
Text Label 13600 11600 0    50   ~ 0
AHO7
Wire Wire Line
	10700 11300 10950 11300
Wire Wire Line
	10700 11400 10950 11400
Wire Wire Line
	10700 11500 10950 11500
Wire Wire Line
	10700 11600 10950 11600
Wire Wire Line
	13550 11300 13800 11300
Wire Wire Line
	13550 11400 13800 11400
Wire Wire Line
	13550 11500 13800 11500
Wire Wire Line
	13550 11600 13800 11600
Text Label 10700 13000 0    50   ~ 0
AHO8
Text Label 10700 13100 0    50   ~ 0
AHO9
Text Label 10700 13200 0    50   ~ 0
AHO10
Text Label 10700 13300 0    50   ~ 0
AHO11
Text Label 13550 13000 0    50   ~ 0
AHO12
Text Label 13550 13100 0    50   ~ 0
AHO13
Text Label 13550 13200 0    50   ~ 0
AHO14
Text Label 13550 13300 0    50   ~ 0
AHO15
Wire Wire Line
	13500 13000 13800 13000
Wire Wire Line
	13500 13100 13800 13100
Wire Wire Line
	13500 13200 13800 13200
Wire Wire Line
	13500 13300 13800 13300
Connection ~ 13400 13750
Wire Bus Line
	13400 13750 15200 13750
Connection ~ 13450 11800
Wire Bus Line
	13450 11800 15200 11800
Wire Bus Line
	10600 11800 13450 11800
Wire Bus Line
	9100 15850 9650 15850
Wire Bus Line
	15200 13600 15200 13750
Connection ~ 15200 13750
Wire Wire Line
	11750 10900 12150 10900
Wire Wire Line
	11750 11000 12150 11000
Wire Wire Line
	11750 11100 12150 11100
Wire Wire Line
	14600 10800 15000 10800
Wire Wire Line
	14600 10900 15000 10900
Wire Wire Line
	14600 11000 15000 11000
Wire Wire Line
	14600 11100 15000 11100
Wire Wire Line
	14600 12500 15000 12500
Wire Wire Line
	14600 12600 15000 12600
Wire Wire Line
	14600 12700 15000 12700
Wire Wire Line
	14600 12800 15000 12800
Wire Wire Line
	11750 10800 12150 10800
Text Label 11800 10900 0    50   ~ 0
WB_AD1
Text Label 11800 11000 0    50   ~ 0
WB_AD2
Text Label 11800 11100 0    50   ~ 0
WB_AD3
Text Label 14650 10800 0    50   ~ 0
WB_AD4
Text Label 14650 10900 0    50   ~ 0
WB_AD5
Text Label 14650 11000 0    50   ~ 0
WB_AD6
Text Label 14650 11100 0    50   ~ 0
WB_AD7
Text Label 11800 12500 0    50   ~ 0
WB_AD8
Text Label 11800 12600 0    50   ~ 0
WB_AD9
Text Label 11800 12700 0    50   ~ 0
WB_AD10
Text Label 11800 12800 0    50   ~ 0
WB_AD11
Text Label 14650 12500 0    50   ~ 0
WB_AD12
Text Label 14650 12600 0    50   ~ 0
WB_AD13
Text Label 14650 12700 0    50   ~ 0
WB_AD14
Text Label 14650 12800 0    50   ~ 0
WB_AD15
Entry Wire Line
	12150 10800 12250 10900
Entry Wire Line
	12150 10900 12250 11000
Entry Wire Line
	12150 11000 12250 11100
Entry Wire Line
	12150 11100 12250 11200
Entry Wire Line
	15000 10800 15100 10900
Entry Wire Line
	15000 10900 15100 11000
Entry Wire Line
	15000 11000 15100 11100
Entry Wire Line
	15000 11100 15100 11200
Entry Wire Line
	15000 12500 15100 12600
Entry Wire Line
	15000 12600 15100 12700
Entry Wire Line
	15000 12700 15100 12800
Entry Wire Line
	15000 12800 15100 12900
Wire Bus Line
	15100 11750 12250 11750
Connection ~ 15100 11750
Wire Bus Line
	15100 13700 15250 13700
Wire Bus Line
	15250 13700 15250 15950
Connection ~ 15100 13700
Text Label 9250 9950 0    50   ~ 0
ALU_OP0
Text Label 9250 10150 0    50   ~ 0
ALU_OP1
Wire Wire Line
	10900 11850 12650 11850
Wire Wire Line
	12650 11500 12750 11500
Wire Wire Line
	12650 11850 14650 11850
Wire Wire Line
	12650 11500 12650 11900
Wire Wire Line
	9900 11600 9850 11600
Wire Wire Line
	9850 11600 9850 11700
Wire Wire Line
	9850 11700 12700 11700
Wire Wire Line
	12700 11700 12700 11600
Wire Wire Line
	12700 11600 12750 11600
Wire Wire Line
	10450 10050 10500 10050
Wire Wire Line
	10500 10050 10500 10250
Wire Wire Line
	12650 13200 12750 13200
Wire Wire Line
	9900 13200 9700 13200
Wire Wire Line
	9900 13300 9850 13300
Wire Wire Line
	9850 13300 9850 13400
Wire Wire Line
	9850 13400 12700 13400
Wire Wire Line
	12700 13400 12700 13300
Wire Wire Line
	12700 13300 12750 13300
Wire Wire Line
	11750 12800 12150 12800
Wire Wire Line
	11750 12700 12150 12700
Wire Wire Line
	11750 12600 12150 12600
Wire Wire Line
	11750 12500 12150 12500
Wire Wire Line
	10650 13300 10950 13300
Wire Wire Line
	10650 13200 10950 13200
Wire Wire Line
	10650 13100 10950 13100
Wire Wire Line
	10650 13000 10950 13000
Wire Bus Line
	12250 13700 15100 13700
Entry Wire Line
	12150 12800 12250 12900
Entry Wire Line
	12150 12700 12250 12800
Entry Wire Line
	12150 12600 12250 12700
Entry Wire Line
	12150 12500 12250 12600
Wire Bus Line
	10550 13750 13400 13750
Entry Wire Line
	10550 13200 10650 13300
Entry Wire Line
	10550 13100 10650 13200
Entry Wire Line
	10550 13000 10650 13100
Entry Wire Line
	10550 12900 10650 13000
Wire Wire Line
	9300 13600 9700 13600
Wire Wire Line
	9300 10250 9300 13600
Wire Wire Line
	9700 13200 9700 13600
Connection ~ 9700 13600
Wire Wire Line
	9700 13600 12650 13600
Wire Wire Line
	12650 13200 12650 13600
$Comp
L power:GND #PWR062
U 1 1 87E4809A
P 9850 13400
F 0 "#PWR062" H 9850 13150 50  0001 C CNN
F 1 "GND" H 9855 13227 50  0000 C CNN
F 2 "" H 9850 13400 50  0001 C CNN
F 3 "" H 9850 13400 50  0001 C CNN
	1    9850 13400
	1    0    0    -1  
$EndComp
Connection ~ 9850 13400
$Comp
L power:GND #PWR061
U 1 1 87E480DF
P 9850 11700
F 0 "#PWR061" H 9850 11450 50  0001 C CNN
F 1 "GND" H 9855 11527 50  0000 C CNN
F 2 "" H 9850 11700 50  0001 C CNN
F 3 "" H 9850 11700 50  0001 C CNN
	1    9850 11700
	1    0    0    -1  
$EndComp
Connection ~ 9850 11700
Wire Wire Line
	14550 1700 14550 2750
Wire Wire Line
	15900 1700 15900 2500
Wire Wire Line
	17250 1700 17250 2600
Wire Wire Line
	16700 2600 17300 2600
Wire Wire Line
	15350 2500 15950 2500
Wire Wire Line
	15900 2500 15900 2750
Connection ~ 9650 15850
Wire Bus Line
	9650 15850 11050 15850
Text Label 9600 10600 0    50   ~ 0
ALU_A0
Text Label 9600 10800 0    50   ~ 0
ALU_A1
Text Label 9600 11000 0    50   ~ 0
ALU_A2
Text Label 9600 11200 0    50   ~ 0
ALU_A3
Text Label 12400 10600 0    50   ~ 0
ALU_A4
Text Label 12400 10800 0    50   ~ 0
ALU_A5
Text Label 12400 11000 0    50   ~ 0
ALU_A6
Text Label 9200 9150 0    50   ~ 0
ALU_A7
Wire Wire Line
	12400 10600 12750 10600
Wire Wire Line
	12400 10800 12750 10800
Wire Wire Line
	12400 11000 12750 11000
Text Label 9600 12300 0    50   ~ 0
ALU_B0
Text Label 9600 12500 0    50   ~ 0
ALU_B1
Text Label 9600 12700 0    50   ~ 0
ALU_B2
Text Label 9600 12900 0    50   ~ 0
ALU_B3
Wire Wire Line
	9600 12500 9900 12500
Wire Wire Line
	9600 12700 9900 12700
Wire Wire Line
	9600 12900 9900 12900
Wire Wire Line
	9600 12300 9900 12300
Wire Wire Line
	9200 11500 9200 10150
Wire Wire Line
	9200 11500 9200 11900
Wire Wire Line
	9200 11500 9900 11500
Wire Wire Line
	9200 11900 12650 11900
Wire Wire Line
	9300 10250 10500 10250
$Comp
L CPU2908CLocal:74HC04 U120
U 2 1 8B0DCFE6
P 11600 9350
F 0 "U120" H 11600 9625 50  0000 C CNN
F 1 "TC74VHCT04AFT" H 11600 9534 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 11500 9350 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/toshiba/TC74VHCT04AFT.pdf" H 11500 9350 50  0001 C CNN
	2    11600 9350
	1    0    0    -1  
$EndComp
Wire Wire Line
	12300 12000 13750 12000
Text Label 12450 12300 0    50   ~ 0
ALU_B4
Text Label 12450 12500 0    50   ~ 0
ALU_B5
Text Label 12450 12700 0    50   ~ 0
ALU_B6
Text Label 12450 12900 0    50   ~ 0
ALU_B7
Wire Wire Line
	12450 12300 12750 12300
Wire Wire Line
	12450 12500 12750 12500
Wire Wire Line
	12450 12700 12750 12700
Wire Wire Line
	12450 12900 12750 12900
Text Label 12400 11200 0    50   ~ 0
ALU_A7
Wire Wire Line
	12400 11200 12750 11200
Wire Wire Line
	10550 9650 9650 9650
Wire Wire Line
	9650 9650 9650 9950
Connection ~ 9650 9950
Wire Wire Line
	9650 9950 9850 9950
Wire Wire Line
	9250 9950 9650 9950
Connection ~ 9200 10150
Wire Wire Line
	9200 10150 9850 10150
Wire Wire Line
	9200 9350 9950 9350
Wire Wire Line
	9200 9350 9200 10150
Text Label 12200 9350 2    50   ~ 0
tNL1
Wire Wire Line
	9700 10700 9900 10700
Wire Wire Line
	9700 10900 9900 10900
Wire Wire Line
	9700 11100 9900 11100
Wire Wire Line
	9700 11300 9900 11300
Wire Wire Line
	12550 10700 12750 10700
Wire Wire Line
	12550 10900 12750 10900
Wire Wire Line
	12550 11100 12750 11100
Wire Wire Line
	12550 11300 12750 11300
Wire Wire Line
	9700 12400 9900 12400
Text Label 9700 12400 0    50   ~ 0
tNL2
Wire Wire Line
	9700 12600 9900 12600
Text Label 9700 12600 0    50   ~ 0
tNL2
Wire Wire Line
	9700 12800 9900 12800
Text Label 9700 12800 0    50   ~ 0
tNL2
Wire Wire Line
	9700 13000 9900 13000
Text Label 9700 13000 0    50   ~ 0
tNL2
Wire Wire Line
	12550 12400 12750 12400
Text Label 12550 12400 0    50   ~ 0
tNL2
Wire Wire Line
	12550 12600 12750 12600
Text Label 12550 12600 0    50   ~ 0
tNL2
Wire Wire Line
	12550 12800 12750 12800
Text Label 12550 12800 0    50   ~ 0
tNL2
Wire Wire Line
	12550 13000 12750 13000
Text Label 12550 13000 0    50   ~ 0
tNL2
Wire Wire Line
	9450 9150 9200 9150
Wire Wire Line
	9600 10600 9900 10600
Wire Wire Line
	9600 10800 9900 10800
Wire Wire Line
	9600 11000 9900 11000
Wire Wire Line
	9600 11200 9900 11200
Wire Wire Line
	11850 9350 12200 9350
Wire Wire Line
	19400 1300 19650 1300
Wire Wire Line
	19400 1500 19650 1500
Wire Wire Line
	19400 2300 19650 2300
Wire Wire Line
	19400 2500 19650 2500
Wire Wire Line
	19400 2700 19650 2700
Text HLabel 22300 650  2    50   Output ~ 0
FlagOut[0..7]
Text Label 21600 650  0    50   ~ 0
FlagOut[0..7]
Wire Bus Line
	22150 650  22300 650 
Wire Wire Line
	22250 1000 22250 1100
Wire Wire Line
	22250 1100 22700 1100
Wire Bus Line
	21600 650  22150 650 
Connection ~ 22150 650 
Wire Wire Line
	20850 1900 20800 1900
Wire Wire Line
	20800 1900 20800 2150
Wire Wire Line
	20800 2150 21150 2150
Text Label 21150 2150 2    50   ~ 0
~FLatch
NoConn ~ 21550 4300
Text Label 21000 10300 2    50   ~ 0
FlagOut[0..7]
Text Label 20550 8950 0    50   ~ 0
FlagOut0
Text Label 20550 9050 0    50   ~ 0
FlagOut1
Text Label 20550 9150 0    50   ~ 0
FlagOut2
Text Label 20550 9250 0    50   ~ 0
FlagOut3
Text Label 20550 9350 0    50   ~ 0
FlagOut4
Text Label 20550 9450 0    50   ~ 0
FlagOut5
Text Label 20550 9550 0    50   ~ 0
FlagOut6
Text Label 20550 9650 0    50   ~ 0
FlagOut7
Wire Wire Line
	20900 9650 20550 9650
Wire Wire Line
	20900 8950 20550 8950
Wire Wire Line
	20900 9050 20550 9050
Wire Wire Line
	20900 9150 20550 9150
Wire Wire Line
	20900 9250 20550 9250
Wire Wire Line
	20900 9350 20550 9350
Wire Wire Line
	20900 9450 20550 9450
Wire Wire Line
	20900 9550 20550 9550
Entry Wire Line
	20450 8850 20550 8950
Entry Wire Line
	20450 8950 20550 9050
Entry Wire Line
	20450 9050 20550 9150
Entry Wire Line
	20450 9150 20550 9250
Entry Wire Line
	20450 9250 20550 9350
Entry Wire Line
	20450 9350 20550 9450
Entry Wire Line
	20450 9450 20550 9550
Entry Wire Line
	20450 9550 20550 9650
Wire Bus Line
	20450 10300 21000 10300
Text Label 16450 10350 0    50   ~ 0
WB_DB[0..7]
Text Label 21650 8950 0    50   ~ 0
WB_DB0
Text Label 21650 9050 0    50   ~ 0
WB_DB1
Text Label 21650 9150 0    50   ~ 0
WB_DB2
Text Label 21650 9250 0    50   ~ 0
WB_DB3
Text Label 21650 9350 0    50   ~ 0
WB_DB4
Text Label 21650 9450 0    50   ~ 0
WB_DB5
Text Label 21650 9550 0    50   ~ 0
WB_DB6
Text Label 21650 9650 0    50   ~ 0
WB_DB7
Wire Wire Line
	21600 8950 21950 8950
Wire Wire Line
	21600 9050 21950 9050
Wire Wire Line
	21600 9150 21950 9150
Wire Wire Line
	21600 9250 21950 9250
Wire Wire Line
	21600 9350 21950 9350
Wire Wire Line
	21600 9450 21950 9450
Wire Wire Line
	21600 9550 21950 9550
Wire Wire Line
	21600 9650 21950 9650
Entry Wire Line
	21950 8950 22050 9050
Entry Wire Line
	21950 9050 22050 9150
Entry Wire Line
	21950 9150 22050 9250
Entry Wire Line
	21950 9250 22050 9350
Entry Wire Line
	21950 9350 22050 9450
Entry Wire Line
	21950 9450 22050 9550
Entry Wire Line
	21950 9550 22050 9650
Entry Wire Line
	21950 9650 22050 9750
Text Label 19950 8950 0    50   ~ 0
WB_DB0
Text Label 19950 9050 0    50   ~ 0
WB_DB1
Text Label 19950 9150 0    50   ~ 0
WB_DB2
Text Label 19950 9250 0    50   ~ 0
WB_DB3
Text Label 19950 9350 0    50   ~ 0
WB_DB4
Text Label 19950 9450 0    50   ~ 0
WB_DB5
Text Label 19950 9550 0    50   ~ 0
WB_DB6
Text Label 19950 9650 0    50   ~ 0
WB_DB7
Wire Wire Line
	19900 8950 20250 8950
Wire Wire Line
	19900 9050 20250 9050
Wire Wire Line
	19900 9150 20250 9150
Wire Wire Line
	19900 9250 20250 9250
Wire Wire Line
	19900 9350 20250 9350
Wire Wire Line
	19900 9450 20250 9450
Wire Wire Line
	19900 9550 20250 9550
Wire Wire Line
	19900 9650 20250 9650
Entry Wire Line
	20250 8950 20350 9050
Entry Wire Line
	20250 9050 20350 9150
Entry Wire Line
	20250 9150 20350 9250
Entry Wire Line
	20250 9250 20350 9350
Entry Wire Line
	20250 9350 20350 9450
Entry Wire Line
	20250 9450 20350 9550
Entry Wire Line
	20250 9550 20350 9650
Entry Wire Line
	20250 9650 20350 9750
Text Label 18300 8950 0    50   ~ 0
WB_DB0
Text Label 18300 9050 0    50   ~ 0
WB_DB1
Text Label 18300 9150 0    50   ~ 0
WB_DB2
Text Label 18300 9250 0    50   ~ 0
WB_DB3
Text Label 18300 9350 0    50   ~ 0
WB_DB4
Text Label 18300 9450 0    50   ~ 0
WB_DB5
Text Label 18300 9550 0    50   ~ 0
WB_DB6
Text Label 18300 9650 0    50   ~ 0
WB_DB7
Wire Wire Line
	18250 8950 18600 8950
Wire Wire Line
	18250 9050 18600 9050
Wire Wire Line
	18250 9150 18600 9150
Wire Wire Line
	18250 9250 18600 9250
Wire Wire Line
	18250 9350 18600 9350
Wire Wire Line
	18250 9450 18600 9450
Wire Wire Line
	18250 9550 18600 9550
Wire Wire Line
	18250 9650 18600 9650
Entry Wire Line
	18600 8950 18700 9050
Entry Wire Line
	18600 9050 18700 9150
Entry Wire Line
	18600 9150 18700 9250
Entry Wire Line
	18600 9250 18700 9350
Entry Wire Line
	18600 9350 18700 9450
Entry Wire Line
	18600 9450 18700 9550
Entry Wire Line
	18600 9550 18700 9650
Entry Wire Line
	18600 9650 18700 9750
Text Label 16650 8950 0    50   ~ 0
WB_DB0
Text Label 16650 9050 0    50   ~ 0
WB_DB1
Text Label 16650 9150 0    50   ~ 0
WB_DB2
Text Label 16650 9250 0    50   ~ 0
WB_DB3
Text Label 16650 9350 0    50   ~ 0
WB_DB4
Text Label 16650 9450 0    50   ~ 0
WB_DB5
Text Label 16650 9550 0    50   ~ 0
WB_DB6
Text Label 16650 9650 0    50   ~ 0
WB_DB7
Wire Wire Line
	16600 8950 16950 8950
Wire Wire Line
	16600 9050 16950 9050
Wire Wire Line
	16600 9150 16950 9150
Wire Wire Line
	16600 9250 16950 9250
Wire Wire Line
	16600 9350 16950 9350
Wire Wire Line
	16600 9450 16950 9450
Wire Wire Line
	16600 9550 16950 9550
Wire Wire Line
	16600 9650 16950 9650
Entry Wire Line
	16950 8950 17050 9050
Entry Wire Line
	16950 9050 17050 9150
Entry Wire Line
	16950 9150 17050 9250
Entry Wire Line
	16950 9250 17050 9350
Entry Wire Line
	16950 9350 17050 9450
Entry Wire Line
	16950 9450 17050 9550
Entry Wire Line
	16950 9550 17050 9650
Entry Wire Line
	16950 9650 17050 9750
Connection ~ 17050 10350
Wire Bus Line
	17050 10350 18700 10350
Connection ~ 18700 10350
Wire Bus Line
	18700 10350 20350 10350
Connection ~ 20350 10350
Wire Bus Line
	20350 10350 22050 10350
Wire Bus Line
	16400 10350 17050 10350
Wire Bus Line
	4750 700  6950 700 
Wire Bus Line
	2900 4350 5150 4350
Connection ~ 5150 4350
Wire Bus Line
	5150 4350 6300 4350
Text Label 6450 4100 0    50   ~ 0
BR_SEL0
Text Label 6450 4200 0    50   ~ 0
BR_SEL1
Connection ~ 7200 700 
Connection ~ 8700 4400
Wire Bus Line
	8300 4400 8700 4400
Wire Bus Line
	8700 4400 10450 4400
Wire Bus Line
	7200 700  8950 700 
Wire Bus Line
	6950 700  7200 700 
Connection ~ 6950 700 
Wire Wire Line
	7550 2250 7000 2250
Wire Wire Line
	7000 2250 7000 3900
Wire Wire Line
	7550 3900 7000 3900
Connection ~ 7000 3900
Wire Wire Line
	7000 3900 7000 4100
Wire Wire Line
	7000 4100 8750 4100
Wire Wire Line
	8750 4100 8750 3900
Wire Wire Line
	8750 2250 9300 2250
Connection ~ 7000 4100
Wire Wire Line
	8750 3900 9300 3900
Connection ~ 8750 3900
Wire Wire Line
	8750 3900 8750 2250
Wire Wire Line
	7050 2350 7550 2350
Wire Wire Line
	7550 4000 7050 4000
Wire Wire Line
	7050 2350 7050 4000
Connection ~ 7050 4000
Wire Wire Line
	7050 4000 7050 4200
Wire Wire Line
	7050 4200 8800 4200
Wire Wire Line
	8800 2350 9300 2350
Connection ~ 7050 4200
Wire Wire Line
	9300 4000 8800 4000
Wire Wire Line
	8800 2350 8800 4000
Connection ~ 8800 4000
Wire Wire Line
	8800 4000 8800 4200
Wire Wire Line
	6450 4100 7000 4100
Wire Wire Line
	6450 4200 7050 4200
Text Label 2400 7050 0    50   ~ 0
BR_SEL0
Text Label 2400 7150 0    50   ~ 0
BR_SEL1
Wire Wire Line
	2400 7050 2750 7050
Wire Wire Line
	2400 7150 2750 7150
Text Label 6950 4500 0    50   ~ 0
IDB[0..7]
Text Label 16050 10400 2    50   ~ 0
IDB[0..7]
Text Label 15650 9650 0    50   ~ 0
IDB7
Text Label 15650 9550 0    50   ~ 0
IDB6
Text Label 15650 9450 0    50   ~ 0
IDB5
Text Label 15650 9350 0    50   ~ 0
IDB4
Text Label 15650 9250 0    50   ~ 0
IDB3
Text Label 15650 9150 0    50   ~ 0
IDB2
Text Label 15650 9050 0    50   ~ 0
IDB1
Text Label 15650 8950 0    50   ~ 0
IDB0
Wire Wire Line
	15600 9650 15900 9650
Wire Wire Line
	15600 9550 15900 9550
Wire Wire Line
	15600 9450 15900 9450
Wire Wire Line
	15600 9350 15900 9350
Wire Wire Line
	15600 9250 15900 9250
Wire Wire Line
	15600 9150 15900 9150
Wire Wire Line
	15600 9050 15900 9050
Wire Wire Line
	15600 8950 15900 8950
Entry Wire Line
	15500 8850 15600 8950
Entry Wire Line
	15500 8950 15600 9050
Entry Wire Line
	15500 9050 15600 9150
Entry Wire Line
	15500 9150 15600 9250
Entry Wire Line
	15500 9250 15600 9350
Entry Wire Line
	15500 9350 15600 9450
Entry Wire Line
	15500 9450 15600 9550
Entry Wire Line
	15500 9550 15600 9650
Wire Bus Line
	15500 10400 16050 10400
Wire Wire Line
	15850 9950 15900 9950
Wire Wire Line
	15750 9950 15750 10050
Wire Wire Line
	15750 10050 17450 10050
Wire Wire Line
	17450 9850 17550 9850
Wire Wire Line
	15700 10050 15700 10100
Wire Wire Line
	15700 10100 19100 10100
Wire Wire Line
	19100 9850 19200 9850
Wire Wire Line
	19200 9950 19150 9950
Wire Wire Line
	20800 9850 20900 9850
Wire Wire Line
	15400 10150 20800 10150
Wire Wire Line
	15400 9950 15750 9950
Wire Wire Line
	15400 10050 15700 10050
Text Label 18650 3850 0    50   ~ 0
ALU_L[0..7]
Text Label 17700 10300 2    50   ~ 0
ALU_L[0..7]
Wire Wire Line
	17550 8950 17250 8950
Text Label 17300 8950 0    50   ~ 0
ALU_L0
Wire Wire Line
	17250 9050 17550 9050
Wire Wire Line
	17250 9150 17550 9150
Wire Wire Line
	17250 9250 17550 9250
Wire Wire Line
	17250 9350 17550 9350
Wire Wire Line
	17250 9450 17550 9450
Wire Wire Line
	17250 9550 17550 9550
Wire Wire Line
	17250 9650 17550 9650
Wire Wire Line
	18900 9050 19200 9050
Wire Wire Line
	18900 9150 19200 9150
Wire Wire Line
	18900 9250 19200 9250
Wire Wire Line
	18900 9350 19200 9350
Wire Wire Line
	18900 9450 19200 9450
Wire Wire Line
	18900 9550 19200 9550
Wire Wire Line
	18900 9650 19200 9650
Wire Wire Line
	19200 8950 18900 8950
Entry Wire Line
	17150 8850 17250 8950
Entry Wire Line
	17150 8950 17250 9050
Entry Wire Line
	17150 9050 17250 9150
Entry Wire Line
	17150 9150 17250 9250
Entry Wire Line
	17150 9250 17250 9350
Entry Wire Line
	17150 9350 17250 9450
Entry Wire Line
	17150 9450 17250 9550
Entry Wire Line
	17150 9550 17250 9650
Entry Wire Line
	18800 8850 18900 8950
Entry Wire Line
	18800 8950 18900 9050
Entry Wire Line
	18800 9050 18900 9150
Entry Wire Line
	18800 9150 18900 9250
Entry Wire Line
	18800 9250 18900 9350
Entry Wire Line
	18800 9350 18900 9450
Entry Wire Line
	18800 9450 18900 9550
Entry Wire Line
	18800 9550 18900 9650
Text Label 17300 9050 0    50   ~ 0
ALU_L1
Text Label 17300 9150 0    50   ~ 0
ALU_L2
Text Label 17300 9250 0    50   ~ 0
ALU_L3
Text Label 17300 9350 0    50   ~ 0
ALU_L4
Text Label 17300 9450 0    50   ~ 0
ALU_L5
Text Label 17300 9550 0    50   ~ 0
ALU_L6
Text Label 17300 9650 0    50   ~ 0
ALU_L7
Wire Bus Line
	17150 10300 17700 10300
Wire Bus Line
	18800 10300 19400 10300
Text Label 11700 7650 0    50   ~ 0
ALU_OP0
Text Label 11700 7750 0    50   ~ 0
ALU_OP1
Text Label 11700 7850 0    50   ~ 0
ALU_OP2
Text Label 11700 7950 0    50   ~ 0
ALU_OP3
Wire Wire Line
	12500 7650 11700 7650
Wire Wire Line
	11700 7850 12500 7850
Wire Wire Line
	13100 7750 13150 7750
Wire Wire Line
	12400 7750 12400 7950
Wire Wire Line
	11700 7750 12400 7750
Wire Wire Line
	12300 7950 12300 8150
Wire Wire Line
	11700 7950 12300 7950
Wire Wire Line
	12400 7950 13850 7950
Wire Wire Line
	12300 8150 13850 8150
Wire Wire Line
	13650 7750 13750 7750
Wire Wire Line
	13750 7750 13750 8350
Wire Wire Line
	13750 8350 13850 8350
Connection ~ 13750 7750
Wire Wire Line
	13750 7750 13850 7750
Wire Wire Line
	14450 7850 14550 7850
Wire Wire Line
	16600 7850 16450 7850
Wire Wire Line
	16450 7850 16450 8050
Wire Wire Line
	16450 8250 14550 8250
Wire Wire Line
	14550 7850 14550 7750
Wire Wire Line
	14550 7750 16550 7750
Wire Wire Line
	14550 7850 14550 7950
Wire Wire Line
	14550 7950 14600 7950
Connection ~ 14550 7850
Wire Wire Line
	15150 8150 14550 8150
Wire Wire Line
	14550 8150 14550 8250
Connection ~ 14550 8250
Wire Wire Line
	14550 8250 14450 8250
$Comp
L CPU2908CLocal:74HC04 U27
U 5 1 AE9B8585
P 14850 7950
F 0 "U27" H 14850 8250 50  0000 C CNN
F 1 "TC74VHCT04AFT" H 14850 8150 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 14750 7950 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/toshiba/TC74VHCT04AFT.pdf" H 14750 7950 50  0001 C CNN
	5    14850 7950
	1    0    0    -1  
$EndComp
Wire Wire Line
	15100 7950 15150 7950
Wire Wire Line
	18600 5850 18600 5400
Wire Wire Line
	18600 5400 19200 5400
Wire Wire Line
	19200 5500 18700 5500
Text Label 18700 5500 0    50   ~ 0
ALU_M
Wire Wire Line
	16550 7750 16550 8000
Wire Wire Line
	16550 8000 17900 8000
Wire Wire Line
	17900 8000 17900 7750
Wire Wire Line
	17900 7750 18000 7750
Connection ~ 16550 7750
Wire Wire Line
	16550 7750 16600 7750
Wire Wire Line
	17950 7850 17950 8050
Wire Wire Line
	17950 8050 16450 8050
Connection ~ 16450 8050
Wire Wire Line
	16450 8050 16450 8250
Wire Wire Line
	17950 7850 18000 7850
Wire Wire Line
	17900 8000 19250 8000
Wire Wire Line
	19250 8000 19250 7750
Wire Wire Line
	19250 7750 19400 7750
Connection ~ 17900 8000
Wire Wire Line
	19400 7850 19300 7850
Wire Wire Line
	19300 7850 19300 8050
Wire Wire Line
	19300 8050 17950 8050
Connection ~ 17950 8050
Wire Wire Line
	19300 8050 20700 8050
Wire Wire Line
	20700 8050 20700 7850
Wire Wire Line
	20700 7850 20800 7850
Connection ~ 19300 8050
Wire Wire Line
	19250 8000 20650 8000
Wire Wire Line
	20650 8000 20650 7750
Wire Wire Line
	20650 7750 20800 7750
Connection ~ 19250 8000
Wire Wire Line
	15750 8050 15800 8050
Wire Wire Line
	15800 8050 15800 5850
Wire Wire Line
	15800 5850 18600 5850
Wire Wire Line
	15350 5500 15350 5950
Connection ~ 15350 5950
Wire Wire Line
	15350 5950 15350 6200
Wire Wire Line
	21600 7350 21650 7350
Wire Wire Line
	21600 6750 21750 6750
Wire Wire Line
	21750 6750 21750 8400
Text Label 17550 8350 1    50   ~ 0
ALU_O0
Text Label 17450 8350 1    50   ~ 0
ALU_O1
Text Label 18950 8350 1    50   ~ 0
ALU_O2
Text Label 18850 8350 1    50   ~ 0
ALU_O3
Text Label 20350 8350 1    50   ~ 0
ALU_O4
Text Label 20250 8350 1    50   ~ 0
ALU_O5
Text Label 21750 8350 1    50   ~ 0
ALU_O6
Text Label 21650 8350 1    50   ~ 0
ALU_O7
Wire Wire Line
	21650 7350 21650 8400
Entry Wire Line
	17450 8400 17550 8500
Entry Wire Line
	17550 8400 17650 8500
Entry Wire Line
	18850 8400 18950 8500
Entry Wire Line
	18950 8400 19050 8500
Entry Wire Line
	20250 8400 20350 8500
Entry Wire Line
	20350 8400 20450 8500
Entry Wire Line
	21650 8400 21750 8500
Entry Wire Line
	21750 8400 21850 8500
Connection ~ 18800 8500
Text Label 18950 8950 0    50   ~ 0
ALU_O0
Text Label 18950 9050 0    50   ~ 0
ALU_O1
Text Label 18950 9150 0    50   ~ 0
ALU_O2
Text Label 18950 9250 0    50   ~ 0
ALU_O3
Text Label 18950 9350 0    50   ~ 0
ALU_O4
Text Label 18950 9450 0    50   ~ 0
ALU_O5
Text Label 18950 9550 0    50   ~ 0
ALU_O6
Text Label 18950 9650 0    50   ~ 0
ALU_O7
Wire Wire Line
	15100 9000 15350 9000
Text Label 15350 9000 2    50   ~ 0
Flag3
Wire Wire Line
	14400 8900 14500 8900
Wire Wire Line
	13650 9400 14350 9400
Wire Wire Line
	14350 9400 14350 9100
Wire Wire Line
	14350 9100 14500 9100
Wire Wire Line
	13650 9000 13800 9000
Wire Wire Line
	13050 8900 12950 8900
Wire Wire Line
	12950 8900 12950 9300
Wire Wire Line
	12950 9300 13050 9300
Connection ~ 12950 8900
Wire Wire Line
	13800 8800 13650 8800
Wire Wire Line
	13650 8800 13650 8750
Wire Wire Line
	12600 8750 13650 8750
Text Label 12600 8750 0    50   ~ 0
ALU_OP3
Wire Wire Line
	12600 8900 12950 8900
Wire Wire Line
	12600 9100 13050 9100
Wire Wire Line
	12600 9500 13050 9500
Wire Wire Line
	22250 1300 22700 1300
Entry Wire Line
	22150 1200 22250 1300
Wire Wire Line
	22250 1300 22250 1400
Wire Wire Line
	22250 1400 22700 1400
Text Label 22700 1300 2    50   ~ 0
FlagOut5
Text Label 22700 1400 2    50   ~ 0
Flag5
Wire Wire Line
	20850 1800 20450 1800
Text Label 20450 1800 0    50   ~ 0
nQ
Wire Wire Line
	19650 1800 19100 1800
Wire Wire Line
	19650 3200 19100 3200
Wire Wire Line
	19100 3200 19100 1800
Text Label 19250 1800 0    50   ~ 0
STFR
Wire Wire Line
	19300 2900 19650 2900
Entry Wire Line
	12050 2450 12150 2550
Entry Wire Line
	12050 2550 12150 2650
Entry Wire Line
	12050 2650 12150 2750
Entry Wire Line
	12050 2750 12150 2850
Entry Wire Line
	12050 2850 12150 2950
Entry Wire Line
	12050 2950 12150 3050
Entry Wire Line
	12050 3050 12150 3150
Entry Wire Line
	12050 3150 12150 3250
Wire Wire Line
	11850 3550 10500 3550
Wire Wire Line
	10500 3550 10500 1950
Wire Wire Line
	10500 1950 10950 1950
Wire Wire Line
	10950 3450 10850 3450
Wire Wire Line
	10850 3450 10850 3600
Wire Wire Line
	10850 3600 11900 3600
Wire Wire Line
	10950 3350 10700 3350
Text Label 10700 3350 0    50   ~ 0
Q
Wire Wire Line
	10950 1850 10700 1850
Text Label 10700 1850 0    50   ~ 0
Q
$Comp
L power:GND #PWR065
U 1 1 C4A5BA7D
P 10800 4850
F 0 "#PWR065" H 10800 4600 50  0001 C CNN
F 1 "GND" H 10805 4677 50  0000 C CNN
F 2 "" H 10800 4850 50  0001 C CNN
F 3 "" H 10800 4850 50  0001 C CNN
	1    10800 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10900 3950 10600 3950
Text Label 10600 3950 0    50   ~ 0
BuffSel0
Text Label 10600 3850 0    50   ~ 0
BuffSel1
Wire Wire Line
	19200 4600 19050 4600
Connection ~ 19050 4600
Wire Wire Line
	19050 4600 19050 4300
Wire Wire Line
	14600 10150 14500 10150
Wire Wire Line
	14500 10150 14500 10250
$Comp
L power:GND #PWR071
U 1 1 C66747F4
P 14500 10250
F 0 "#PWR071" H 14500 10000 50  0001 C CNN
F 1 "GND" H 14505 10077 50  0000 C CNN
F 2 "" H 14500 10250 50  0001 C CNN
F 3 "" H 14500 10250 50  0001 C CNN
	1    14500 10250
	1    0    0    -1  
$EndComp
Text Label 14200 9850 0    50   ~ 0
MISC0
Text Label 14200 9950 0    50   ~ 0
MISC1
Wire Wire Line
	14200 9850 14600 9850
Wire Wire Line
	14200 9950 14600 9950
Text Label 12600 8900 0    50   ~ 0
ALU_A7
Text Label 12600 9100 0    50   ~ 0
ALU_B7
Text Label 12600 9500 0    50   ~ 0
ALU7
Wire Wire Line
	6400 5100 6750 5100
Wire Wire Line
	6400 5200 6750 5200
Wire Wire Line
	6400 5300 6750 5300
Wire Wire Line
	6400 5400 6750 5400
Wire Wire Line
	6400 5500 6750 5500
Wire Wire Line
	6400 5600 6750 5600
Wire Wire Line
	6400 5700 6750 5700
Wire Wire Line
	6400 5800 6750 5800
Text Label 6450 5100 0    50   ~ 0
WB_DB0
Text Label 6450 5200 0    50   ~ 0
WB_DB1
Text Label 6450 5300 0    50   ~ 0
WB_DB2
Text Label 6450 5400 0    50   ~ 0
WB_DB3
Text Label 6450 5500 0    50   ~ 0
WB_DB4
Text Label 6450 5600 0    50   ~ 0
WB_DB5
Text Label 6450 5700 0    50   ~ 0
WB_DB6
Text Label 6450 5800 0    50   ~ 0
WB_DB7
Connection ~ 15250 15950
Wire Bus Line
	22200 10350 22050 10350
Connection ~ 22050 10350
Wire Wire Line
	10550 9650 10550 9450
Wire Wire Line
	10550 9450 10650 9450
Wire Wire Line
	10550 9250 10650 9250
Wire Wire Line
	11250 9350 11350 9350
Connection ~ 9200 11500
Wire Wire Line
	7950 15750 8300 15750
$Comp
L CPU2908CLocal:74HC04 U27
U 6 1 623DE488
P 8650 15750
F 0 "U27" H 8650 16025 50  0000 C CNN
F 1 "TC74VHCT04AFT" H 8650 15934 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 8550 15750 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/toshiba/TC74VHCT04AFT.pdf" H 8550 15750 50  0001 C CNN
	6    8650 15750
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:TC74HC574 U50
U 1 1 61BE8DAC
P 3750 1600
F 0 "U50" H 3750 2325 50  0000 C CNN
F 1 "TC74VHC574F" H 3750 2234 50  0000 C CNN
F 2 "digikey-footprints:SOIC-20_W7.5mm" H 3750 1600 50  0001 C CNN
F 3 "TC74VHC574F_datasheet_ja_20190131.pdf" H 3750 1600 50  0001 C CNN
	1    3750 1600
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:TC74HC574 U58
U 1 1 61BE9B30
P 6000 1600
F 0 "U58" H 6000 2325 50  0000 C CNN
F 1 "TC74VHC574F" H 6000 2234 50  0000 C CNN
F 2 "digikey-footprints:SOIC-20_W7.5mm" H 6000 1600 50  0001 C CNN
F 3 "TC74VHC574F_datasheet_ja_20190131.pdf" H 6000 1600 50  0001 C CNN
	1    6000 1600
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:TC74HC574 U51
U 1 1 61BEA788
P 3750 3000
F 0 "U51" H 3750 3725 50  0000 C CNN
F 1 "TC74VHC574F" H 3750 3634 50  0000 C CNN
F 2 "digikey-footprints:SOIC-20_W7.5mm" H 3750 3000 50  0001 C CNN
F 3 "TC74VHC574F_datasheet_ja_20190131.pdf" H 3750 3000 50  0001 C CNN
	1    3750 3000
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:TC74HC574 U59
U 1 1 61BEB12F
P 6000 3000
F 0 "U59" H 6000 3725 50  0000 C CNN
F 1 "TC74VHC574F" H 6000 3634 50  0000 C CNN
F 2 "digikey-footprints:SOIC-20_W7.5mm" H 6000 3000 50  0001 C CNN
F 3 "TC74VHC574F_datasheet_ja_20190131.pdf" H 6000 3000 50  0001 C CNN
	1    6000 3000
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC541 U56
U 1 1 6241F2FF
P 5350 5600
F 0 "U56" H 5350 6325 50  0000 C CNN
F 1 "TC74VHCT541" H 5350 6234 50  0000 C CNN
F 2 "digikey-footprints:TSSOP-20_W4.4mm" H 5400 5600 50  0001 C CNN
F 3 "" H 5400 5600 50  0000 C CNN
	1    5350 5600
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC541 U64
U 1 1 62B435AC
P 7100 5600
F 0 "U64" H 7100 6325 50  0000 C CNN
F 1 "TC74VHCT541" H 7100 6234 50  0000 C CNN
F 2 "digikey-footprints:TSSOP-20_W4.4mm" H 7150 5600 50  0001 C CNN
F 3 "" H 7150 5600 50  0000 C CNN
	1    7100 5600
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC541 U57
U 1 1 62B44FFA
P 5350 7650
F 0 "U57" H 5350 8375 50  0000 C CNN
F 1 "TC74VHCT541" H 5350 8284 50  0000 C CNN
F 2 "digikey-footprints:TSSOP-20_W4.4mm" H 5400 7650 50  0001 C CNN
F 3 "" H 5400 7650 50  0000 C CNN
	1    5350 7650
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC541 U65
U 1 1 62B45AD9
P 7100 7650
F 0 "U65" H 7100 8375 50  0000 C CNN
F 1 "TC74VHCT541" H 7100 8284 50  0000 C CNN
F 2 "digikey-footprints:TSSOP-20_W4.4mm" H 7150 7650 50  0001 C CNN
F 3 "" H 7150 7650 50  0000 C CNN
	1    7100 7650
	1    0    0    -1  
$EndComp
Connection ~ 7850 4500
Wire Bus Line
	7850 4500 9750 4500
Connection ~ 9750 4500
Wire Bus Line
	9750 4500 10550 4500
Wire Bus Line
	4600 8900 6350 8900
Wire Wire Line
	4000 8700 4900 8700
$Comp
L CPU2908CLocal:74HC153 U68
U 1 1 65CE65A9
P 8300 9950
F 0 "U68" H 8300 10875 50  0000 C CNN
F 1 "74HC153" H 8300 10784 50  0000 C CNN
F 2 "SMD_Packages:SO-16-N" H 8300 9950 50  0001 C CNN
F 3 "" H 8300 9950 50  0000 C CNN
	1    8300 9950
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC153 U69
U 1 1 65CE6BB9
P 8300 11550
F 0 "U69" H 8300 12475 50  0000 C CNN
F 1 "74HC153" H 8300 12384 50  0000 C CNN
F 2 "SMD_Packages:SO-16-N" H 8300 11550 50  0001 C CNN
F 3 "" H 8300 11550 50  0000 C CNN
	1    8300 11550
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC153 U70
U 1 1 66069591
P 8300 13150
F 0 "U70" H 8300 14075 50  0000 C CNN
F 1 "74HC153" H 8300 13984 50  0000 C CNN
F 2 "SMD_Packages:SO-16-N" H 8300 13150 50  0001 C CNN
F 3 "" H 8300 13150 50  0000 C CNN
	1    8300 13150
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC153 U71
U 1 1 663EA93E
P 8300 14750
F 0 "U71" H 8300 15675 50  0000 C CNN
F 1 "74HC153" H 8300 15584 50  0000 C CNN
F 2 "SMD_Packages:SO-16-N" H 8300 14750 50  0001 C CNN
F 3 "" H 8300 14750 50  0000 C CNN
	1    8300 14750
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC153 U80
U 1 1 663EC66C
P 11750 6000
F 0 "U80" H 11750 6925 50  0000 C CNN
F 1 "74HC153" H 11750 6834 50  0000 C CNN
F 2 "SMD_Packages:SO-16-N" H 11750 6000 50  0001 C CNN
F 3 "" H 11750 6000 50  0000 C CNN
	1    11750 6000
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC153 U92
U 1 1 6676E00F
P 13700 4500
F 0 "U92" H 13700 5425 50  0000 C CNN
F 1 "74HC153" H 13700 5334 50  0000 C CNN
F 2 "SMD_Packages:SO-16-N" H 13700 4500 50  0001 C CNN
F 3 "" H 13700 4500 50  0000 C CNN
	1    13700 4500
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC153 U99
U 1 1 66E720FA
P 15150 4500
F 0 "U99" H 15150 5425 50  0000 C CNN
F 1 "74HC153" H 15150 5334 50  0000 C CNN
F 2 "SMD_Packages:SO-16-N" H 15150 4500 50  0001 C CNN
F 3 "" H 15150 4500 50  0000 C CNN
	1    15150 4500
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC153 U102
U 1 1 66E72D0E
P 16450 4500
F 0 "U102" H 16450 5425 50  0000 C CNN
F 1 "74HC153" H 16450 5334 50  0000 C CNN
F 2 "SMD_Packages:SO-16-N" H 16450 4500 50  0001 C CNN
F 3 "" H 16450 4500 50  0000 C CNN
	1    16450 4500
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC153 U105
U 1 1 66E732E8
P 17800 4500
F 0 "U105" H 17800 5425 50  0000 C CNN
F 1 "74HC153" H 17800 5334 50  0000 C CNN
F 2 "SMD_Packages:SO-16-N" H 17800 4500 50  0001 C CNN
F 3 "" H 17800 4500 50  0000 C CNN
	1    17800 4500
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC153 U109
U 1 1 66E73CE6
P 19600 4900
F 0 "U109" H 19600 5825 50  0000 C CNN
F 1 "74HC153" H 19600 5734 50  0000 C CNN
F 2 "SMD_Packages:SO-16-N" H 19600 4900 50  0001 C CNN
F 3 "" H 19600 4900 50  0000 C CNN
	1    19600 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	20000 4400 20200 4400
$Comp
L Device:R R?
U 1 1 693AB2A1
P 22000 2550
AR Path="/5DC31740/693AB2A1" Ref="R?"  Part="1" 
AR Path="/5DC31E28/693AB2A1" Ref="R29"  Part="1" 
F 0 "R29" V 21950 2750 50  0000 C CNN
F 1 "47K" V 21950 2900 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 21930 2550 50  0001 C CNN
F 3 "~" H 22000 2550 50  0001 C CNN
	1    22000 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	22450 2550 22550 2550
$Comp
L Device:R R?
U 1 1 693AB2B0
P 22000 2650
AR Path="/5DC31740/693AB2B0" Ref="R?"  Part="1" 
AR Path="/5DC31E28/693AB2B0" Ref="R30"  Part="1" 
F 0 "R30" V 21950 2850 50  0000 C CNN
F 1 "47K" V 21950 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 21930 2650 50  0001 C CNN
F 3 "~" H 22000 2650 50  0001 C CNN
	1    22000 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	22450 2650 22550 2650
$Comp
L Device:R R?
U 1 1 693AB2BF
P 22000 2750
AR Path="/5DC31740/693AB2BF" Ref="R?"  Part="1" 
AR Path="/5DC31E28/693AB2BF" Ref="R31"  Part="1" 
F 0 "R31" V 21950 2950 50  0000 C CNN
F 1 "47K" V 21950 3100 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 21930 2750 50  0001 C CNN
F 3 "~" H 22000 2750 50  0001 C CNN
	1    22000 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	22450 2750 22550 2750
$Comp
L Device:R R?
U 1 1 693AB2CE
P 22000 2850
AR Path="/5DC31740/693AB2CE" Ref="R?"  Part="1" 
AR Path="/5DC31E28/693AB2CE" Ref="R32"  Part="1" 
F 0 "R32" V 21950 3050 50  0000 C CNN
F 1 "47K" V 21950 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 21930 2850 50  0001 C CNN
F 3 "~" H 22000 2850 50  0001 C CNN
	1    22000 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	22450 2850 22550 2850
$Comp
L power:GND #PWR?
U 1 1 693AB2D7
P 22550 3000
AR Path="/5DC31740/693AB2D7" Ref="#PWR?"  Part="1" 
AR Path="/5DC31E28/693AB2D7" Ref="#PWR097"  Part="1" 
F 0 "#PWR097" H 22550 2750 50  0001 C CNN
F 1 "GND" H 22555 2827 50  0000 C CNN
F 2 "" H 22550 3000 50  0001 C CNN
F 3 "" H 22550 3000 50  0001 C CNN
	1    22550 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	22550 2550 22550 2650
Connection ~ 22550 2650
Wire Wire Line
	22550 2650 22550 2750
Connection ~ 22550 2750
Wire Wire Line
	22550 2750 22550 2850
Connection ~ 22550 2850
Wire Wire Line
	22550 2850 22550 3000
$Comp
L Device:R R?
U 1 1 6973B354
P 22000 2450
AR Path="/5DC31740/6973B354" Ref="R?"  Part="1" 
AR Path="/5DC31E28/6973B354" Ref="R28"  Part="1" 
F 0 "R28" V 21950 2650 50  0000 C CNN
F 1 "47K" V 21950 2800 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 21930 2450 50  0001 C CNN
F 3 "~" H 22000 2450 50  0001 C CNN
	1    22000 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	22450 2450 22550 2450
Wire Wire Line
	22550 2450 22550 2550
Text Label 19400 2700 0    50   ~ 0
Flag6
Text Label 21150 2650 0    50   ~ 0
FlagOut5
Text Label 21150 2850 0    50   ~ 0
FlagOut7
Entry Wire Line
	19200 2900 19300 3000
Wire Wire Line
	19300 2900 19300 3000
Text Label 19400 1500 0    50   ~ 0
Flag3
Text Label 19400 900  0    50   ~ 0
Flag0
$Comp
L CPU2908CLocal:LED_G D28
U 1 1 6B3EBB6B
P 22300 2450
F 0 "D28" H 22050 2450 50  0000 C TNN
F 1 "LED_G" H 22500 2400 50  0000 C CNN
F 2 "LEDs:LED_0402" H 22300 2450 50  0001 C CNN
F 3 "~" H 22300 2450 50  0001 C CNN
	1    22300 2450
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D29
U 1 1 6B3EDD75
P 22300 2550
F 0 "D29" H 22050 2550 50  0000 C TNN
F 1 "LED_G" H 22500 2500 50  0000 C CNN
F 2 "LEDs:LED_0402" H 22300 2550 50  0001 C CNN
F 3 "~" H 22300 2550 50  0001 C CNN
	1    22300 2550
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D30
U 1 1 6B3EDE07
P 22300 2650
F 0 "D30" H 22050 2650 50  0000 C TNN
F 1 "LED_G" H 22500 2600 50  0000 C CNN
F 2 "LEDs:LED_0402" H 22300 2650 50  0001 C CNN
F 3 "~" H 22300 2650 50  0001 C CNN
	1    22300 2650
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D31
U 1 1 6B3EDFE5
P 22300 2750
F 0 "D31" H 22050 2750 50  0000 C TNN
F 1 "LED_G" H 22500 2700 50  0000 C CNN
F 2 "LEDs:LED_0402" H 22300 2750 50  0001 C CNN
F 3 "~" H 22300 2750 50  0001 C CNN
	1    22300 2750
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D32
U 1 1 6B3EE041
P 22300 2850
F 0 "D32" H 22050 2850 50  0000 C TNN
F 1 "LED_G" H 22500 2800 50  0000 C CNN
F 2 "LEDs:LED_0402" H 22300 2850 50  0001 C CNN
F 3 "~" H 22300 2850 50  0001 C CNN
	1    22300 2850
	-1   0    0    1   
$EndComp
Text Label 19400 10300 2    50   ~ 0
ALU_O[0..7]
$Comp
L CPU2908CLocal:74HC153 U91
U 1 1 6C474731
P 13500 2000
F 0 "U91" H 13500 2950 50  0000 C CNN
F 1 "74HC153" H 13500 2850 50  0000 C CNN
F 2 "SMD_Packages:SO-16-N" H 13500 2000 50  0001 C CNN
F 3 "" H 13500 2000 50  0001 C CNN
	1    13500 2000
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC153 U97
U 1 1 6C80BC5B
P 15000 2000
F 0 "U97" H 15000 2950 50  0000 C CNN
F 1 "74HC153" H 15000 2850 50  0000 C CNN
F 2 "SMD_Packages:SO-16-N" H 15000 2000 50  0001 C CNN
F 3 "" H 15000 2000 50  0001 C CNN
	1    15000 2000
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC153 U101
U 1 1 6C80CEFE
P 16350 2000
F 0 "U101" H 16350 2950 50  0000 C CNN
F 1 "74HC153" H 16350 2850 50  0000 C CNN
F 2 "SMD_Packages:SO-16-N" H 16350 2000 50  0001 C CNN
F 3 "" H 16350 2000 50  0001 C CNN
	1    16350 2000
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC153 U104
U 1 1 6CBA8197
P 17700 2000
F 0 "U104" H 17700 2925 50  0000 C CNN
F 1 "74HC153" H 17700 2834 50  0000 C CNN
F 2 "SMD_Packages:SO-16-N" H 17700 2000 50  0001 C CNN
F 3 "" H 17700 2000 50  0001 C CNN
	1    17700 2000
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC541 U116
U 1 1 6CF43BC2
P 21250 9450
F 0 "U116" H 21250 10175 50  0000 C CNN
F 1 "TC74VHCT541" H 21250 10084 50  0000 C CNN
F 2 "digikey-footprints:TSSOP-20_W4.4mm" H 21250 9450 50  0001 C CNN
F 3 "" H 21250 9450 50  0000 C CNN
	1    21250 9450
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC08 U85
U 1 1 74905187
P 11750 14150
F 0 "U85" H 11750 14475 50  0000 C CNN
F 1 "74HC08D" H 11750 14384 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 11550 14150 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT08.pdf" H 11550 14150 50  0001 C CNN
	1    11750 14150
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC08 U85
U 2 1 74907EE1
P 11750 14600
F 0 "U85" H 11750 14925 50  0000 C CNN
F 1 "74HC08D" H 11750 14834 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 11550 14600 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT08.pdf" H 11550 14600 50  0001 C CNN
	2    11750 14600
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC08 U85
U 3 1 74908D8D
P 11750 15050
F 0 "U85" H 11750 15375 50  0000 C CNN
F 1 "74HC08D" H 11750 15284 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 11550 15050 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT08.pdf" H 11550 15050 50  0001 C CNN
	3    11750 15050
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC08 U85
U 4 1 7490997F
P 11750 15500
F 0 "U85" H 11750 15825 50  0000 C CNN
F 1 "74HC08D" H 11750 15734 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 11550 15500 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT08.pdf" H 11550 15500 50  0001 C CNN
	4    11750 15500
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC08 U78
U 1 1 757680EA
P 10400 14150
F 0 "U78" H 10400 14475 50  0000 C CNN
F 1 "74HC08D" H 10400 14384 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 10200 14150 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT08.pdf" H 10200 14150 50  0001 C CNN
	1    10400 14150
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC08 U78
U 2 1 757680F0
P 10400 14600
F 0 "U78" H 10400 14925 50  0000 C CNN
F 1 "74HC08D" H 10400 14834 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 10200 14600 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT08.pdf" H 10200 14600 50  0001 C CNN
	2    10400 14600
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC08 U78
U 3 1 757680F6
P 10400 15050
F 0 "U78" H 10400 15375 50  0000 C CNN
F 1 "74HC08D" H 10400 15284 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 10200 15050 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT08.pdf" H 10200 15050 50  0001 C CNN
	3    10400 15050
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC08 U78
U 4 1 757680FC
P 10400 15500
F 0 "U78" H 10400 15825 50  0000 C CNN
F 1 "74HC08D" H 10400 15734 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 10200 15500 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT08.pdf" H 10200 15500 50  0001 C CNN
	4    10400 15500
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC08 U89
U 1 1 76949B0C
P 13150 14150
F 0 "U89" H 13150 14475 50  0000 C CNN
F 1 "74HC08D" H 13150 14384 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 12950 14150 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT08.pdf" H 12950 14150 50  0001 C CNN
	1    13150 14150
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC08 U89
U 2 1 76949B12
P 13150 14600
F 0 "U89" H 13150 14925 50  0000 C CNN
F 1 "74HC08D" H 13150 14834 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 12950 14600 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT08.pdf" H 12950 14600 50  0001 C CNN
	2    13150 14600
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC08 U89
U 3 1 76949B18
P 13150 15050
F 0 "U89" H 13150 15375 50  0000 C CNN
F 1 "74HC08D" H 13150 15284 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 12950 15050 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT08.pdf" H 12950 15050 50  0001 C CNN
	3    13150 15050
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC08 U89
U 4 1 76949B1E
P 13150 15500
F 0 "U89" H 13150 15825 50  0000 C CNN
F 1 "74HC08D" H 13150 15734 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 12950 15500 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT08.pdf" H 12950 15500 50  0001 C CNN
	4    13150 15500
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC08 U95
U 1 1 76CDE276
P 14600 14150
F 0 "U95" H 14600 14475 50  0000 C CNN
F 1 "74HC08D" H 14600 14384 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 14400 14150 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT08.pdf" H 14400 14150 50  0001 C CNN
	1    14600 14150
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC08 U95
U 2 1 76CDE27C
P 14600 14600
F 0 "U95" H 14600 14925 50  0000 C CNN
F 1 "74HC08D" H 14600 14834 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 14400 14600 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT08.pdf" H 14400 14600 50  0001 C CNN
	2    14600 14600
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC08 U95
U 3 1 76CDE282
P 14600 15050
F 0 "U95" H 14600 15375 50  0000 C CNN
F 1 "74HC08D" H 14600 15284 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 14400 15050 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT08.pdf" H 14400 15050 50  0001 C CNN
	3    14600 15050
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC08 U95
U 4 1 76CDE288
P 14600 15500
F 0 "U95" H 14600 15825 50  0000 C CNN
F 1 "74HC08D" H 14600 15734 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 14400 15500 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT08.pdf" H 14400 15500 50  0001 C CNN
	4    14600 15500
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC08 U79
U 1 1 77075788
P 10950 9350
F 0 "U79" H 10950 9675 50  0000 C CNN
F 1 "74HC08D" H 10950 9584 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 10750 9350 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT08.pdf" H 10750 9350 50  0001 C CNN
	1    10950 9350
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC08 U79
U 2 1 7707578E
P 12800 7750
F 0 "U79" H 12800 8075 50  0000 C CNN
F 1 "74HC08D" H 12800 7984 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 12600 7750 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT08.pdf" H 12600 7750 50  0001 C CNN
	2    12800 7750
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC08 U79
U 4 1 77075794
P 15450 8050
F 0 "U79" H 15450 8450 50  0000 C CNN
F 1 "74HC08D" H 15450 8350 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 15250 8050 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT08.pdf" H 15250 8050 50  0001 C CNN
	4    15450 8050
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC08 U79
U 3 1 7707579A
P 14800 9000
F 0 "U79" H 14800 9325 50  0000 C CNN
F 1 "74HC08D" H 14800 9234 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 14600 9000 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT08.pdf" H 14600 9000 50  0001 C CNN
	3    14800 9000
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC86 U90
U 1 1 782541A6
P 13350 9400
F 0 "U90" H 13550 9700 50  0000 C CNN
F 1 "SN74AHC86" H 13300 10000 50  0000 C CNN
F 2 "Footprints:SN74AHC86D" H 13350 9400 50  0001 C CNN
F 3 "" H 13350 9400 50  0000 C CNN
	1    13350 9400
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC86 U90
U 2 1 785E8395
P 13350 9000
F 0 "U90" H 13350 8400 50  0000 C CNN
F 1 "SN74AHC86" H 13350 8300 50  0000 C CNN
F 2 "Footprints:SN74AHC86D" H 13350 9000 50  0001 C CNN
F 3 "" H 13350 9000 50  0000 C CNN
	2    13350 9000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 78D18BED
P 15800 15600
F 0 "#PWR029" H 15800 15350 50  0001 C CNN
F 1 "GND" H 15805 15427 50  0000 C CNN
F 2 "" H 15800 15600 50  0001 C CNN
F 3 "" H 15800 15600 50  0001 C CNN
	1    15800 15600
	1    0    0    -1  
$EndComp
Text Notes 5350 8300 0    50   ~ 0
AddrLo
Wire Wire Line
	14450 5250 14700 5250
Wire Wire Line
	12450 1050 12850 1050
Wire Wire Line
	12450 950  12900 950 
Wire Wire Line
	12450 850  12950 850 
Wire Wire Line
	14450 4000 14450 5550
Wire Wire Line
	20650 7450 20800 7450
Text Label 20400 6750 0    50   ~ 0
ALU7
Text Label 20400 7350 0    50   ~ 0
ALU7
Text Label 20400 6850 0    50   ~ 0
ALU6
Text Label 20400 7250 0    50   ~ 0
ALU4
Text Label 20400 6650 0    50   ~ 0
ALU3
Wire Wire Line
	20250 7350 20250 8400
Wire Wire Line
	20350 6750 20350 8400
Wire Wire Line
	20200 6750 20350 6750
Wire Wire Line
	20200 7350 20250 7350
Wire Wire Line
	20800 7350 20400 7350
Wire Wire Line
	20800 7250 20400 7250
Wire Wire Line
	20800 6850 20400 6850
Wire Wire Line
	20800 6750 20400 6750
Wire Wire Line
	20800 6650 20400 6650
Wire Wire Line
	20650 7150 20650 7450
Wire Wire Line
	20650 6550 20650 7150
Connection ~ 20650 7150
Wire Wire Line
	20650 7150 20800 7150
Wire Wire Line
	20650 6550 20800 6550
Connection ~ 20650 6550
Wire Wire Line
	20650 5950 20650 6550
$Comp
L power:GND #PWR096
U 1 1 B33D0889
P 20700 7550
F 0 "#PWR096" H 20700 7300 50  0001 C CNN
F 1 "GND" H 20705 7377 50  0000 C CNN
F 2 "" H 20700 7550 50  0001 C CNN
F 3 "" H 20700 7550 50  0001 C CNN
	1    20700 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	20700 7550 20800 7550
Connection ~ 20700 7550
Wire Wire Line
	20700 6950 20700 7550
Wire Wire Line
	20800 6950 20700 6950
$Comp
L CPU2908CLocal:74HC153 U114
U 1 1 5F81259D
P 21200 7250
F 0 "U114" H 21200 8175 50  0000 C CNN
F 1 "74HC153" H 21200 8084 50  0000 C CNN
F 2 "SMD_Packages:SO-16-N" H 21200 7250 50  0001 C CNN
F 3 "" H 21200 7250 50  0000 C CNN
	1    21200 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	16600 6950 16500 6950
Wire Wire Line
	16500 6950 16500 7250
Wire Wire Line
	16500 7550 16600 7550
$Comp
L power:GND #PWR077
U 1 1 B2D8B582
P 16500 7550
F 0 "#PWR077" H 16500 7300 50  0001 C CNN
F 1 "GND" H 16505 7377 50  0000 C CNN
F 2 "" H 16500 7550 50  0001 C CNN
F 3 "" H 16500 7550 50  0001 C CNN
	1    16500 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	18000 6950 17900 6950
Wire Wire Line
	17900 6950 17900 7550
Wire Wire Line
	17900 7550 18000 7550
Connection ~ 17900 7550
$Comp
L power:GND #PWR081
U 1 1 B2D8B8AB
P 17900 7550
F 0 "#PWR081" H 17900 7300 50  0001 C CNN
F 1 "GND" H 17905 7377 50  0000 C CNN
F 2 "" H 17900 7550 50  0001 C CNN
F 3 "" H 17900 7550 50  0001 C CNN
	1    17900 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	19400 6950 19300 6950
Wire Wire Line
	19300 6950 19300 7550
Wire Wire Line
	19300 7550 19400 7550
Connection ~ 19300 7550
$Comp
L power:GND #PWR093
U 1 1 B30ACEFF
P 19300 7550
F 0 "#PWR093" H 19300 7300 50  0001 C CNN
F 1 "GND" H 19305 7377 50  0000 C CNN
F 2 "" H 19300 7550 50  0001 C CNN
F 3 "" H 19300 7550 50  0001 C CNN
	1    19300 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	16600 7150 16450 7150
Wire Wire Line
	16450 7150 16450 6550
Wire Wire Line
	16450 6550 16600 6550
Connection ~ 16450 6550
Wire Wire Line
	15350 5950 16450 5950
Connection ~ 16450 5950
Wire Wire Line
	16450 5950 16450 6550
Wire Wire Line
	19400 7150 19250 7150
Wire Wire Line
	19250 7150 19250 6550
Wire Wire Line
	19400 6550 19250 6550
Wire Wire Line
	19250 5950 20650 5950
Connection ~ 19250 5950
Connection ~ 19250 6550
Wire Wire Line
	19250 6550 19250 5950
Wire Wire Line
	18000 7150 17850 7150
Wire Wire Line
	17850 7150 17850 6550
Wire Wire Line
	18000 6550 17850 6550
Wire Wire Line
	16450 5950 17850 5950
Wire Wire Line
	17850 5950 19250 5950
Connection ~ 17850 5950
Connection ~ 17850 6550
Wire Wire Line
	17850 6550 17850 5950
Wire Wire Line
	16600 6650 16200 6650
Wire Wire Line
	16600 6750 16200 6750
Wire Wire Line
	16600 6850 16200 6850
Wire Wire Line
	16600 7250 16500 7250
Wire Wire Line
	16600 7350 16200 7350
Wire Wire Line
	16600 7450 16200 7450
Wire Wire Line
	18000 6650 17650 6650
Wire Wire Line
	18000 7250 17600 7250
Wire Wire Line
	18000 7350 17600 7350
Wire Wire Line
	18000 7450 17600 7450
Wire Wire Line
	19400 6650 19000 6650
Wire Wire Line
	19400 6750 19000 6750
Wire Wire Line
	19400 6850 19000 6850
Wire Wire Line
	19400 7250 19000 7250
Wire Wire Line
	19400 7350 19000 7350
Wire Wire Line
	19400 7450 19000 7450
Wire Wire Line
	17550 6750 17550 8400
Wire Wire Line
	17400 7350 17450 7350
Wire Wire Line
	17400 6750 17550 6750
Wire Wire Line
	18800 7350 18850 7350
Wire Wire Line
	18800 6750 18950 6750
Wire Wire Line
	18950 6750 18950 8400
Wire Wire Line
	18850 7350 18850 8400
Wire Wire Line
	17450 7350 17450 8400
Text Label 17600 7250 0    50   ~ 0
ALU0
Text Label 19000 6650 0    50   ~ 0
ALU1
Text Label 19000 7250 0    50   ~ 0
ALU2
$Comp
L power:GND #PWR075
U 1 1 BB061CAE
P 16200 6650
F 0 "#PWR075" H 16200 6400 50  0001 C CNN
F 1 "GND" V 16205 6522 50  0000 R CNN
F 2 "" H 16200 6650 50  0001 C CNN
F 3 "" H 16200 6650 50  0001 C CNN
	1    16200 6650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR080
U 1 1 BB0626DE
P 17650 6650
F 0 "#PWR080" H 17650 6400 50  0001 C CNN
F 1 "GND" V 17655 6522 50  0000 R CNN
F 2 "" H 17650 6650 50  0001 C CNN
F 3 "" H 17650 6650 50  0001 C CNN
	1    17650 6650
	0    1    1    0   
$EndComp
Text Label 16200 6850 0    50   ~ 0
ALU0
Text Label 16200 7450 0    50   ~ 0
ALU1
Text Label 17600 6850 0    50   ~ 0
ALU2
Text Label 17600 7450 0    50   ~ 0
ALU3
Text Label 19000 6850 0    50   ~ 0
ALU4
Text Label 19000 7450 0    50   ~ 0
ALU5
Text Label 16200 6750 0    50   ~ 0
ALU1
Text Label 16200 7350 0    50   ~ 0
ALU2
Text Label 17600 6750 0    50   ~ 0
ALU3
Text Label 17600 7350 0    50   ~ 0
ALU4
Text Label 19000 6750 0    50   ~ 0
ALU5
Text Label 19000 7350 0    50   ~ 0
ALU6
Wire Wire Line
	17600 6750 18000 6750
Wire Wire Line
	17600 6850 18000 6850
Connection ~ 16500 7550
Connection ~ 16500 7250
Wire Wire Line
	16500 7250 16500 7550
$Comp
L CPU2908CLocal:74HC153 U110
U 1 1 5F811CFB
P 19800 7250
F 0 "U110" H 19800 8175 50  0000 C CNN
F 1 "74HC153" H 19800 8084 50  0000 C CNN
F 2 "SMD_Packages:SO-16-N" H 19800 7250 50  0001 C CNN
F 3 "" H 19800 7250 50  0000 C CNN
	1    19800 7250
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC153 U107
U 1 1 5F81142D
P 18400 7250
F 0 "U107" H 18400 8175 50  0000 C CNN
F 1 "74HC153" H 18400 8084 50  0000 C CNN
F 2 "SMD_Packages:SO-16-N" H 18400 7250 50  0001 C CNN
F 3 "" H 18400 7250 50  0000 C CNN
	1    18400 7250
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC153 U103
U 1 1 5F810063
P 17000 7250
F 0 "U103" H 17000 8175 50  0000 C CNN
F 1 "74HC153" H 17000 8084 50  0000 C CNN
F 2 "SMD_Packages:SO-16-N" H 17000 7250 50  0001 C CNN
F 3 "" H 17000 7250 50  0000 C CNN
	1    17000 7250
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC04 U27
U 1 1 7CC7DFFA
P 8650 15550
F 0 "U27" H 8650 15411 50  0000 C CNN
F 1 "TC74VHCT04AFT" H 8650 15320 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 8550 15550 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/toshiba/TC74VHCT04AFT.pdf" H 8550 15550 50  0001 C CNN
	1    8650 15550
	1    0    0    -1  
$EndComp
Wire Wire Line
	11850 9550 12200 9550
Text Label 12200 9550 2    50   ~ 0
tNL2
Text Label 9700 10700 0    50   ~ 0
tNL1
Text Label 9700 10900 0    50   ~ 0
tNL1
Text Label 9700 11100 0    50   ~ 0
tNL1
Text Label 9700 11300 0    50   ~ 0
tNL1
Text Label 12550 10700 0    50   ~ 0
tNL1
Text Label 12550 10900 0    50   ~ 0
tNL1
Text Label 12550 11100 0    50   ~ 0
tNL1
Text Label 12550 11300 0    50   ~ 0
tNL1
$Comp
L CPU2908CLocal:74HC377 U81
U 1 1 7E380754
P 11350 1450
F 0 "U81" H 11350 2175 50  0000 C CNN
F 1 "74HC377" H 11350 2084 50  0000 C CNN
F 2 "Footprints:SN74HC377NSR" H 11350 1450 50  0001 C CNN
F 3 "" H 11350 1450 50  0000 C CNN
F 4 "ALU-A" H 11750 950 50  0000 C CNN "フィールド4"
	1    11350 1450
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC377 U82
U 1 1 7E382519
P 11350 2950
F 0 "U82" H 11350 3675 50  0000 C CNN
F 1 "74HC377" H 11350 3584 50  0000 C CNN
F 2 "Footprints:SN74HC377NSR" H 11350 2950 50  0001 C CNN
F 3 "" H 11350 2950 50  0000 C CNN
F 4 "ALU-B" H 11750 2450 50  0000 C CNN "フィールド4"
	1    11350 2950
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC377 U98
U 1 1 7E384E8D
P 21250 1400
F 0 "U98" H 21250 2125 50  0000 C CNN
F 1 "74HC377" H 21250 2034 50  0000 C CNN
F 2 "Footprints:SN74HC377NSR" H 21250 1400 50  0001 C CNN
F 3 "" H 21250 1400 50  0000 C CNN
	1    21250 1400
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC4078 U113
U 1 1 8079720B
P 21150 4700
F 0 "U113" H 21150 5425 50  0000 C CNN
F 1 "TC74HC4078" H 21150 5334 50  0000 C CNN
F 2 "Footprints:SN74HC11D" H 21150 4600 60  0001 C CNN
F 3 "5.3mm" H 21150 4600 60  0001 C CNN
	1    21150 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	12150 5500 15350 5500
$Comp
L power:+5V #PWR?
U 1 1 85005191
P 15650 10700
AR Path="/85005191" Ref="#PWR?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85005191" Ref="#PWR?"  Part="1" 
AR Path="/5DC31740/85005191" Ref="#PWR?"  Part="1" 
AR Path="/5DC31E28/85005191" Ref="#PWR082"  Part="1" 
F 0 "#PWR082" H 15650 10550 50  0001 C CNN
F 1 "+5V" H 15665 10873 50  0000 C CNN
F 2 "" H 15650 10700 50  0001 C CNN
F 3 "" H 15650 10700 50  0001 C CNN
	1    15650 10700
	1    0    0    -1  
$EndComp
Wire Wire Line
	15650 10700 15650 10750
Wire Wire Line
	15650 10950 15650 11050
$Comp
L power:GND #PWR?
U 1 1 85005199
P 15650 11050
AR Path="/85005199" Ref="#PWR?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85005199" Ref="#PWR?"  Part="1" 
AR Path="/5DC31740/85005199" Ref="#PWR?"  Part="1" 
AR Path="/5DC31E28/85005199" Ref="#PWR083"  Part="1" 
F 0 "#PWR083" H 15650 10800 50  0001 C CNN
F 1 "GND" H 15655 10877 50  0000 C CNN
F 2 "" H 15650 11050 50  0001 C CNN
F 3 "" H 15650 11050 50  0001 C CNN
	1    15650 11050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 8500519F
P 15650 10850
AR Path="/8500519F" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/8500519F" Ref="C?"  Part="1" 
AR Path="/5DC31740/8500519F" Ref="C?"  Part="1" 
AR Path="/5DC31E28/8500519F" Ref="C38"  Part="1" 
F 0 "C38" H 15742 10896 50  0000 L CNN
F 1 "0.1uF" H 15742 10805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 15650 10850 50  0001 C CNN
F 3 "~" H 15650 10850 50  0001 C CNN
	1    15650 10850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 850051A5
P 16050 10850
AR Path="/850051A5" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/850051A5" Ref="C?"  Part="1" 
AR Path="/5DC31740/850051A5" Ref="C?"  Part="1" 
AR Path="/5DC31E28/850051A5" Ref="C42"  Part="1" 
F 0 "C42" H 16142 10896 50  0000 L CNN
F 1 "0.1uF" H 16142 10805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 16050 10850 50  0001 C CNN
F 3 "~" H 16050 10850 50  0001 C CNN
	1    16050 10850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 850051AB
P 16450 10850
AR Path="/850051AB" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/850051AB" Ref="C?"  Part="1" 
AR Path="/5DC31740/850051AB" Ref="C?"  Part="1" 
AR Path="/5DC31E28/850051AB" Ref="C46"  Part="1" 
F 0 "C46" H 16542 10896 50  0000 L CNN
F 1 "0.1uF" H 16542 10805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 16450 10850 50  0001 C CNN
F 3 "~" H 16450 10850 50  0001 C CNN
	1    16450 10850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 850051B1
P 16850 10850
AR Path="/850051B1" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/850051B1" Ref="C?"  Part="1" 
AR Path="/5DC31740/850051B1" Ref="C?"  Part="1" 
AR Path="/5DC31E28/850051B1" Ref="C50"  Part="1" 
F 0 "C50" H 16942 10896 50  0000 L CNN
F 1 "0.1uF" H 16942 10805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 16850 10850 50  0001 C CNN
F 3 "~" H 16850 10850 50  0001 C CNN
	1    16850 10850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 850051B7
P 17250 10850
AR Path="/850051B7" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/850051B7" Ref="C?"  Part="1" 
AR Path="/5DC31740/850051B7" Ref="C?"  Part="1" 
AR Path="/5DC31E28/850051B7" Ref="C54"  Part="1" 
F 0 "C54" H 17342 10896 50  0000 L CNN
F 1 "0.1uF" H 17342 10805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 17250 10850 50  0001 C CNN
F 3 "~" H 17250 10850 50  0001 C CNN
	1    17250 10850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 850051BD
P 17650 10850
AR Path="/850051BD" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/850051BD" Ref="C?"  Part="1" 
AR Path="/5DC31740/850051BD" Ref="C?"  Part="1" 
AR Path="/5DC31E28/850051BD" Ref="C58"  Part="1" 
F 0 "C58" H 17742 10896 50  0000 L CNN
F 1 "0.1uF" H 17742 10805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 17650 10850 50  0001 C CNN
F 3 "~" H 17650 10850 50  0001 C CNN
	1    17650 10850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 850051C3
P 18050 10850
AR Path="/850051C3" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/850051C3" Ref="C?"  Part="1" 
AR Path="/5DC31740/850051C3" Ref="C?"  Part="1" 
AR Path="/5DC31E28/850051C3" Ref="C63"  Part="1" 
F 0 "C63" H 18142 10896 50  0000 L CNN
F 1 "0.1uF" H 18142 10805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 18050 10850 50  0001 C CNN
F 3 "~" H 18050 10850 50  0001 C CNN
	1    18050 10850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 850051C9
P 18450 10850
AR Path="/850051C9" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/850051C9" Ref="C?"  Part="1" 
AR Path="/5DC31740/850051C9" Ref="C?"  Part="1" 
AR Path="/5DC31E28/850051C9" Ref="C68"  Part="1" 
F 0 "C68" H 18542 10896 50  0000 L CNN
F 1 "0.1uF" H 18542 10805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 18450 10850 50  0001 C CNN
F 3 "~" H 18450 10850 50  0001 C CNN
	1    18450 10850
	1    0    0    -1  
$EndComp
Wire Wire Line
	15650 10750 16050 10750
Connection ~ 15650 10750
Connection ~ 16050 10750
Wire Wire Line
	16050 10750 16450 10750
Connection ~ 16450 10750
Wire Wire Line
	16450 10750 16850 10750
Connection ~ 16850 10750
Wire Wire Line
	16850 10750 17250 10750
Connection ~ 17250 10750
Wire Wire Line
	17250 10750 17650 10750
Connection ~ 17650 10750
Wire Wire Line
	17650 10750 18050 10750
Connection ~ 18050 10750
Wire Wire Line
	18050 10750 18450 10750
Connection ~ 18450 10750
Wire Wire Line
	18450 10750 18850 10750
Wire Wire Line
	15650 10950 16050 10950
Connection ~ 15650 10950
Connection ~ 16050 10950
Wire Wire Line
	16050 10950 16450 10950
Connection ~ 16450 10950
Wire Wire Line
	16450 10950 16850 10950
Connection ~ 16850 10950
Wire Wire Line
	16850 10950 17250 10950
Connection ~ 17250 10950
Wire Wire Line
	17250 10950 17650 10950
Connection ~ 17650 10950
Wire Wire Line
	17650 10950 18050 10950
Connection ~ 18050 10950
Wire Wire Line
	18050 10950 18450 10950
Connection ~ 18450 10950
Wire Wire Line
	18450 10950 18850 10950
$Comp
L Device:C_Small C?
U 1 1 850051EF
P 18850 10850
AR Path="/850051EF" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/850051EF" Ref="C?"  Part="1" 
AR Path="/5DC31740/850051EF" Ref="C?"  Part="1" 
AR Path="/5DC31E28/850051EF" Ref="C73"  Part="1" 
F 0 "C73" H 18942 10896 50  0000 L CNN
F 1 "0.1uF" H 18942 10805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 18850 10850 50  0001 C CNN
F 3 "~" H 18850 10850 50  0001 C CNN
	1    18850 10850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 850051F5
P 19250 10850
AR Path="/850051F5" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/850051F5" Ref="C?"  Part="1" 
AR Path="/5DC31740/850051F5" Ref="C?"  Part="1" 
AR Path="/5DC31E28/850051F5" Ref="C78"  Part="1" 
F 0 "C78" H 19342 10896 50  0000 L CNN
F 1 "0.1uF" H 19342 10805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 19250 10850 50  0001 C CNN
F 3 "~" H 19250 10850 50  0001 C CNN
	1    19250 10850
	1    0    0    -1  
$EndComp
Connection ~ 18850 10750
Wire Wire Line
	18850 10750 19250 10750
Connection ~ 18850 10950
Wire Wire Line
	18850 10950 19250 10950
$Comp
L Device:C_Small C?
U 1 1 850051FF
P 19650 10850
AR Path="/850051FF" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/850051FF" Ref="C?"  Part="1" 
AR Path="/5DC31740/850051FF" Ref="C?"  Part="1" 
AR Path="/5DC31E28/850051FF" Ref="C83"  Part="1" 
F 0 "C83" H 19742 10896 50  0000 L CNN
F 1 "0.1uF" H 19742 10805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 19650 10850 50  0001 C CNN
F 3 "~" H 19650 10850 50  0001 C CNN
	1    19650 10850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 85005205
P 20050 10850
AR Path="/85005205" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85005205" Ref="C?"  Part="1" 
AR Path="/5DC31740/85005205" Ref="C?"  Part="1" 
AR Path="/5DC31E28/85005205" Ref="C88"  Part="1" 
F 0 "C88" H 20142 10896 50  0000 L CNN
F 1 "0.1uF" H 20142 10805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 20050 10850 50  0001 C CNN
F 3 "~" H 20050 10850 50  0001 C CNN
	1    20050 10850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 8500520B
P 20450 10850
AR Path="/8500520B" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/8500520B" Ref="C?"  Part="1" 
AR Path="/5DC31740/8500520B" Ref="C?"  Part="1" 
AR Path="/5DC31E28/8500520B" Ref="C93"  Part="1" 
F 0 "C93" H 20542 10896 50  0000 L CNN
F 1 "0.1uF" H 20542 10805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 20450 10850 50  0001 C CNN
F 3 "~" H 20450 10850 50  0001 C CNN
	1    20450 10850
	1    0    0    -1  
$EndComp
Wire Wire Line
	19250 10750 19650 10750
Connection ~ 19650 10750
Wire Wire Line
	19650 10750 20050 10750
Connection ~ 20050 10750
Wire Wire Line
	20050 10750 20450 10750
Connection ~ 20450 10750
Wire Wire Line
	20450 10750 20850 10750
Wire Wire Line
	19250 10950 19650 10950
Connection ~ 19650 10950
Wire Wire Line
	19650 10950 20050 10950
Connection ~ 20050 10950
Wire Wire Line
	20050 10950 20450 10950
Connection ~ 20450 10950
Wire Wire Line
	20450 10950 20850 10950
$Comp
L Device:C_Small C?
U 1 1 8500521F
P 20850 10850
AR Path="/8500521F" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/8500521F" Ref="C?"  Part="1" 
AR Path="/5DC31740/8500521F" Ref="C?"  Part="1" 
AR Path="/5DC31E28/8500521F" Ref="C98"  Part="1" 
F 0 "C98" H 20942 10896 50  0000 L CNN
F 1 "0.1uF" H 20942 10805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 20850 10850 50  0001 C CNN
F 3 "~" H 20850 10850 50  0001 C CNN
	1    20850 10850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 85005225
P 21250 10850
AR Path="/85005225" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85005225" Ref="C?"  Part="1" 
AR Path="/5DC31740/85005225" Ref="C?"  Part="1" 
AR Path="/5DC31E28/85005225" Ref="C103"  Part="1" 
F 0 "C103" H 21342 10896 50  0000 L CNN
F 1 "0.1uF" H 21342 10805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 21250 10850 50  0001 C CNN
F 3 "~" H 21250 10850 50  0001 C CNN
	1    21250 10850
	1    0    0    -1  
$EndComp
Connection ~ 20850 10750
Wire Wire Line
	20850 10750 21250 10750
Connection ~ 20850 10950
Wire Wire Line
	20850 10950 21250 10950
Connection ~ 19250 10750
Connection ~ 19250 10950
$Comp
L Device:C_Small C?
U 1 1 85005231
P 21650 10850
AR Path="/85005231" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85005231" Ref="C?"  Part="1" 
AR Path="/5DC31740/85005231" Ref="C?"  Part="1" 
AR Path="/5DC31E28/85005231" Ref="C108"  Part="1" 
F 0 "C108" H 21742 10896 50  0000 L CNN
F 1 "0.1uF" H 21742 10805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 21650 10850 50  0001 C CNN
F 3 "~" H 21650 10850 50  0001 C CNN
	1    21650 10850
	1    0    0    -1  
$EndComp
Wire Wire Line
	21250 10750 21650 10750
Connection ~ 21650 10750
Wire Wire Line
	21650 10750 22050 10750
Wire Wire Line
	21250 10950 21650 10950
Connection ~ 21650 10950
Wire Wire Line
	21650 10950 22050 10950
$Comp
L Device:C_Small C?
U 1 1 8500523D
P 22050 10850
AR Path="/8500523D" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/8500523D" Ref="C?"  Part="1" 
AR Path="/5DC31740/8500523D" Ref="C?"  Part="1" 
AR Path="/5DC31E28/8500523D" Ref="C113"  Part="1" 
F 0 "C113" H 22142 10896 50  0000 L CNN
F 1 "0.1uF" H 22142 10805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 22050 10850 50  0001 C CNN
F 3 "~" H 22050 10850 50  0001 C CNN
	1    22050 10850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 85005243
P 22450 10850
AR Path="/85005243" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85005243" Ref="C?"  Part="1" 
AR Path="/5DC31740/85005243" Ref="C?"  Part="1" 
AR Path="/5DC31E28/85005243" Ref="C118"  Part="1" 
F 0 "C118" H 22542 10896 50  0000 L CNN
F 1 "0.1uF" H 22542 10805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 22450 10850 50  0001 C CNN
F 3 "~" H 22450 10850 50  0001 C CNN
	1    22450 10850
	1    0    0    -1  
$EndComp
Connection ~ 22050 10750
Wire Wire Line
	22050 10750 22450 10750
Connection ~ 22050 10950
Wire Wire Line
	22050 10950 22450 10950
Connection ~ 21250 10750
Connection ~ 21250 10950
$Comp
L power:+5V #PWR?
U 1 1 8500524F
P 15650 11550
AR Path="/8500524F" Ref="#PWR?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/8500524F" Ref="#PWR?"  Part="1" 
AR Path="/5DC31740/8500524F" Ref="#PWR?"  Part="1" 
AR Path="/5DC31E28/8500524F" Ref="#PWR084"  Part="1" 
F 0 "#PWR084" H 15650 11400 50  0001 C CNN
F 1 "+5V" H 15665 11723 50  0000 C CNN
F 2 "" H 15650 11550 50  0001 C CNN
F 3 "" H 15650 11550 50  0001 C CNN
	1    15650 11550
	1    0    0    -1  
$EndComp
Wire Wire Line
	15650 11550 15650 11600
Wire Wire Line
	15650 11800 15650 11900
$Comp
L power:GND #PWR?
U 1 1 85005257
P 15650 11900
AR Path="/85005257" Ref="#PWR?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85005257" Ref="#PWR?"  Part="1" 
AR Path="/5DC31740/85005257" Ref="#PWR?"  Part="1" 
AR Path="/5DC31E28/85005257" Ref="#PWR085"  Part="1" 
F 0 "#PWR085" H 15650 11650 50  0001 C CNN
F 1 "GND" H 15655 11727 50  0000 C CNN
F 2 "" H 15650 11900 50  0001 C CNN
F 3 "" H 15650 11900 50  0001 C CNN
	1    15650 11900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 8500525D
P 15650 11700
AR Path="/8500525D" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/8500525D" Ref="C?"  Part="1" 
AR Path="/5DC31740/8500525D" Ref="C?"  Part="1" 
AR Path="/5DC31E28/8500525D" Ref="C39"  Part="1" 
F 0 "C39" H 15742 11746 50  0000 L CNN
F 1 "0.1uF" H 15742 11655 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 15650 11700 50  0001 C CNN
F 3 "~" H 15650 11700 50  0001 C CNN
	1    15650 11700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 85005263
P 16050 11700
AR Path="/85005263" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85005263" Ref="C?"  Part="1" 
AR Path="/5DC31740/85005263" Ref="C?"  Part="1" 
AR Path="/5DC31E28/85005263" Ref="C43"  Part="1" 
F 0 "C43" H 16142 11746 50  0000 L CNN
F 1 "0.1uF" H 16142 11655 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 16050 11700 50  0001 C CNN
F 3 "~" H 16050 11700 50  0001 C CNN
	1    16050 11700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 85005269
P 16450 11700
AR Path="/85005269" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85005269" Ref="C?"  Part="1" 
AR Path="/5DC31740/85005269" Ref="C?"  Part="1" 
AR Path="/5DC31E28/85005269" Ref="C47"  Part="1" 
F 0 "C47" H 16542 11746 50  0000 L CNN
F 1 "0.1uF" H 16542 11655 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 16450 11700 50  0001 C CNN
F 3 "~" H 16450 11700 50  0001 C CNN
	1    16450 11700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 8500526F
P 16850 11700
AR Path="/8500526F" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/8500526F" Ref="C?"  Part="1" 
AR Path="/5DC31740/8500526F" Ref="C?"  Part="1" 
AR Path="/5DC31E28/8500526F" Ref="C51"  Part="1" 
F 0 "C51" H 16942 11746 50  0000 L CNN
F 1 "0.1uF" H 16942 11655 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 16850 11700 50  0001 C CNN
F 3 "~" H 16850 11700 50  0001 C CNN
	1    16850 11700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 85005275
P 17250 11700
AR Path="/85005275" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85005275" Ref="C?"  Part="1" 
AR Path="/5DC31740/85005275" Ref="C?"  Part="1" 
AR Path="/5DC31E28/85005275" Ref="C55"  Part="1" 
F 0 "C55" H 17342 11746 50  0000 L CNN
F 1 "0.1uF" H 17342 11655 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 17250 11700 50  0001 C CNN
F 3 "~" H 17250 11700 50  0001 C CNN
	1    17250 11700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 8500527B
P 17650 11700
AR Path="/8500527B" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/8500527B" Ref="C?"  Part="1" 
AR Path="/5DC31740/8500527B" Ref="C?"  Part="1" 
AR Path="/5DC31E28/8500527B" Ref="C59"  Part="1" 
F 0 "C59" H 17742 11746 50  0000 L CNN
F 1 "0.1uF" H 17742 11655 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 17650 11700 50  0001 C CNN
F 3 "~" H 17650 11700 50  0001 C CNN
	1    17650 11700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 85005281
P 18050 11700
AR Path="/85005281" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85005281" Ref="C?"  Part="1" 
AR Path="/5DC31740/85005281" Ref="C?"  Part="1" 
AR Path="/5DC31E28/85005281" Ref="C64"  Part="1" 
F 0 "C64" H 18142 11746 50  0000 L CNN
F 1 "0.1uF" H 18142 11655 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 18050 11700 50  0001 C CNN
F 3 "~" H 18050 11700 50  0001 C CNN
	1    18050 11700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 85005287
P 18450 11700
AR Path="/85005287" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85005287" Ref="C?"  Part="1" 
AR Path="/5DC31740/85005287" Ref="C?"  Part="1" 
AR Path="/5DC31E28/85005287" Ref="C69"  Part="1" 
F 0 "C69" H 18542 11746 50  0000 L CNN
F 1 "0.1uF" H 18542 11655 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 18450 11700 50  0001 C CNN
F 3 "~" H 18450 11700 50  0001 C CNN
	1    18450 11700
	1    0    0    -1  
$EndComp
Wire Wire Line
	15650 11600 16050 11600
Connection ~ 15650 11600
Connection ~ 16050 11600
Wire Wire Line
	16050 11600 16450 11600
Connection ~ 16450 11600
Wire Wire Line
	16450 11600 16850 11600
Connection ~ 16850 11600
Wire Wire Line
	16850 11600 17250 11600
Connection ~ 17250 11600
Wire Wire Line
	17250 11600 17650 11600
Connection ~ 17650 11600
Wire Wire Line
	17650 11600 18050 11600
Connection ~ 18050 11600
Wire Wire Line
	18050 11600 18450 11600
Connection ~ 18450 11600
Wire Wire Line
	18450 11600 18850 11600
Wire Wire Line
	15650 11800 16050 11800
Connection ~ 15650 11800
Connection ~ 16050 11800
Wire Wire Line
	16050 11800 16450 11800
Connection ~ 16450 11800
Wire Wire Line
	16450 11800 16850 11800
Connection ~ 16850 11800
Wire Wire Line
	16850 11800 17250 11800
Connection ~ 17250 11800
Wire Wire Line
	17250 11800 17650 11800
Connection ~ 17650 11800
Wire Wire Line
	17650 11800 18050 11800
Connection ~ 18050 11800
Wire Wire Line
	18050 11800 18450 11800
Connection ~ 18450 11800
Wire Wire Line
	18450 11800 18850 11800
$Comp
L Device:C_Small C?
U 1 1 850052AD
P 18850 11700
AR Path="/850052AD" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/850052AD" Ref="C?"  Part="1" 
AR Path="/5DC31740/850052AD" Ref="C?"  Part="1" 
AR Path="/5DC31E28/850052AD" Ref="C74"  Part="1" 
F 0 "C74" H 18942 11746 50  0000 L CNN
F 1 "0.1uF" H 18942 11655 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 18850 11700 50  0001 C CNN
F 3 "~" H 18850 11700 50  0001 C CNN
	1    18850 11700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 850052B3
P 19250 11700
AR Path="/850052B3" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/850052B3" Ref="C?"  Part="1" 
AR Path="/5DC31740/850052B3" Ref="C?"  Part="1" 
AR Path="/5DC31E28/850052B3" Ref="C79"  Part="1" 
F 0 "C79" H 19342 11746 50  0000 L CNN
F 1 "0.1uF" H 19342 11655 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 19250 11700 50  0001 C CNN
F 3 "~" H 19250 11700 50  0001 C CNN
	1    19250 11700
	1    0    0    -1  
$EndComp
Connection ~ 18850 11600
Wire Wire Line
	18850 11600 19250 11600
Connection ~ 18850 11800
Wire Wire Line
	18850 11800 19250 11800
$Comp
L Device:C_Small C?
U 1 1 850052BD
P 19650 11700
AR Path="/850052BD" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/850052BD" Ref="C?"  Part="1" 
AR Path="/5DC31740/850052BD" Ref="C?"  Part="1" 
AR Path="/5DC31E28/850052BD" Ref="C84"  Part="1" 
F 0 "C84" H 19742 11746 50  0000 L CNN
F 1 "0.1uF" H 19742 11655 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 19650 11700 50  0001 C CNN
F 3 "~" H 19650 11700 50  0001 C CNN
	1    19650 11700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 850052C3
P 20050 11700
AR Path="/850052C3" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/850052C3" Ref="C?"  Part="1" 
AR Path="/5DC31740/850052C3" Ref="C?"  Part="1" 
AR Path="/5DC31E28/850052C3" Ref="C89"  Part="1" 
F 0 "C89" H 20142 11746 50  0000 L CNN
F 1 "0.1uF" H 20142 11655 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 20050 11700 50  0001 C CNN
F 3 "~" H 20050 11700 50  0001 C CNN
	1    20050 11700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 850052C9
P 20450 11700
AR Path="/850052C9" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/850052C9" Ref="C?"  Part="1" 
AR Path="/5DC31740/850052C9" Ref="C?"  Part="1" 
AR Path="/5DC31E28/850052C9" Ref="C94"  Part="1" 
F 0 "C94" H 20542 11746 50  0000 L CNN
F 1 "0.1uF" H 20542 11655 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 20450 11700 50  0001 C CNN
F 3 "~" H 20450 11700 50  0001 C CNN
	1    20450 11700
	1    0    0    -1  
$EndComp
Wire Wire Line
	19250 11600 19650 11600
Connection ~ 19650 11600
Wire Wire Line
	19650 11600 20050 11600
Connection ~ 20050 11600
Wire Wire Line
	20050 11600 20450 11600
Connection ~ 20450 11600
Wire Wire Line
	20450 11600 20850 11600
Wire Wire Line
	19250 11800 19650 11800
Connection ~ 19650 11800
Wire Wire Line
	19650 11800 20050 11800
Connection ~ 20050 11800
Wire Wire Line
	20050 11800 20450 11800
Connection ~ 20450 11800
Wire Wire Line
	20450 11800 20850 11800
$Comp
L Device:C_Small C?
U 1 1 850052DD
P 20850 11700
AR Path="/850052DD" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/850052DD" Ref="C?"  Part="1" 
AR Path="/5DC31740/850052DD" Ref="C?"  Part="1" 
AR Path="/5DC31E28/850052DD" Ref="C99"  Part="1" 
F 0 "C99" H 20942 11746 50  0000 L CNN
F 1 "0.1uF" H 20942 11655 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 20850 11700 50  0001 C CNN
F 3 "~" H 20850 11700 50  0001 C CNN
	1    20850 11700
	1    0    0    -1  
$EndComp
Connection ~ 20850 11600
Connection ~ 20850 11800
Connection ~ 19250 11600
Connection ~ 19250 11800
$Comp
L Device:C_Small C?
U 1 1 850052EF
P 21650 11700
AR Path="/850052EF" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/850052EF" Ref="C?"  Part="1" 
AR Path="/5DC31740/850052EF" Ref="C?"  Part="1" 
AR Path="/5DC31E28/850052EF" Ref="C109"  Part="1" 
F 0 "C109" H 21742 11746 50  0000 L CNN
F 1 "0.1uF" H 21742 11655 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 21650 11700 50  0001 C CNN
F 3 "~" H 21650 11700 50  0001 C CNN
	1    21650 11700
	1    0    0    -1  
$EndComp
Connection ~ 21650 11600
Wire Wire Line
	21650 11600 22050 11600
Connection ~ 21650 11800
Wire Wire Line
	21650 11800 22050 11800
$Comp
L Device:C_Small C?
U 1 1 850052FB
P 22050 11700
AR Path="/850052FB" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/850052FB" Ref="C?"  Part="1" 
AR Path="/5DC31740/850052FB" Ref="C?"  Part="1" 
AR Path="/5DC31E28/850052FB" Ref="C114"  Part="1" 
F 0 "C114" H 22142 11746 50  0000 L CNN
F 1 "0.1uF" H 22142 11655 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 22050 11700 50  0001 C CNN
F 3 "~" H 22050 11700 50  0001 C CNN
	1    22050 11700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 85005301
P 22450 11700
AR Path="/85005301" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85005301" Ref="C?"  Part="1" 
AR Path="/5DC31740/85005301" Ref="C?"  Part="1" 
AR Path="/5DC31E28/85005301" Ref="C119"  Part="1" 
F 0 "C119" H 22542 11746 50  0000 L CNN
F 1 "0.1uF" H 22542 11655 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 22450 11700 50  0001 C CNN
F 3 "~" H 22450 11700 50  0001 C CNN
	1    22450 11700
	1    0    0    -1  
$EndComp
Connection ~ 22050 11600
Wire Wire Line
	22050 11600 22450 11600
Connection ~ 22050 11800
Wire Wire Line
	22050 11800 22450 11800
$Comp
L power:+5V #PWR?
U 1 1 8500530D
P 15650 12400
AR Path="/8500530D" Ref="#PWR?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/8500530D" Ref="#PWR?"  Part="1" 
AR Path="/5DC31740/8500530D" Ref="#PWR?"  Part="1" 
AR Path="/5DC31E28/8500530D" Ref="#PWR086"  Part="1" 
F 0 "#PWR086" H 15650 12250 50  0001 C CNN
F 1 "+5V" H 15665 12573 50  0000 C CNN
F 2 "" H 15650 12400 50  0001 C CNN
F 3 "" H 15650 12400 50  0001 C CNN
	1    15650 12400
	1    0    0    -1  
$EndComp
Wire Wire Line
	15650 12400 15650 12450
Wire Wire Line
	15650 12650 15650 12750
$Comp
L power:GND #PWR?
U 1 1 85005315
P 15650 12750
AR Path="/85005315" Ref="#PWR?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85005315" Ref="#PWR?"  Part="1" 
AR Path="/5DC31740/85005315" Ref="#PWR?"  Part="1" 
AR Path="/5DC31E28/85005315" Ref="#PWR087"  Part="1" 
F 0 "#PWR087" H 15650 12500 50  0001 C CNN
F 1 "GND" H 15655 12577 50  0000 C CNN
F 2 "" H 15650 12750 50  0001 C CNN
F 3 "" H 15650 12750 50  0001 C CNN
	1    15650 12750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 8500531B
P 15650 12550
AR Path="/8500531B" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/8500531B" Ref="C?"  Part="1" 
AR Path="/5DC31740/8500531B" Ref="C?"  Part="1" 
AR Path="/5DC31E28/8500531B" Ref="C40"  Part="1" 
F 0 "C40" H 15742 12596 50  0000 L CNN
F 1 "0.1uF" H 15742 12505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 15650 12550 50  0001 C CNN
F 3 "~" H 15650 12550 50  0001 C CNN
	1    15650 12550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 85005321
P 16050 12550
AR Path="/85005321" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85005321" Ref="C?"  Part="1" 
AR Path="/5DC31740/85005321" Ref="C?"  Part="1" 
AR Path="/5DC31E28/85005321" Ref="C44"  Part="1" 
F 0 "C44" H 16142 12596 50  0000 L CNN
F 1 "0.1uF" H 16142 12505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 16050 12550 50  0001 C CNN
F 3 "~" H 16050 12550 50  0001 C CNN
	1    16050 12550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 85005327
P 16450 12550
AR Path="/85005327" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85005327" Ref="C?"  Part="1" 
AR Path="/5DC31740/85005327" Ref="C?"  Part="1" 
AR Path="/5DC31E28/85005327" Ref="C48"  Part="1" 
F 0 "C48" H 16542 12596 50  0000 L CNN
F 1 "0.1uF" H 16542 12505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 16450 12550 50  0001 C CNN
F 3 "~" H 16450 12550 50  0001 C CNN
	1    16450 12550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 8500532D
P 16850 12550
AR Path="/8500532D" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/8500532D" Ref="C?"  Part="1" 
AR Path="/5DC31740/8500532D" Ref="C?"  Part="1" 
AR Path="/5DC31E28/8500532D" Ref="C52"  Part="1" 
F 0 "C52" H 16942 12596 50  0000 L CNN
F 1 "0.1uF" H 16942 12505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 16850 12550 50  0001 C CNN
F 3 "~" H 16850 12550 50  0001 C CNN
	1    16850 12550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 85005333
P 17250 12550
AR Path="/85005333" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85005333" Ref="C?"  Part="1" 
AR Path="/5DC31740/85005333" Ref="C?"  Part="1" 
AR Path="/5DC31E28/85005333" Ref="C56"  Part="1" 
F 0 "C56" H 17342 12596 50  0000 L CNN
F 1 "0.1uF" H 17342 12505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 17250 12550 50  0001 C CNN
F 3 "~" H 17250 12550 50  0001 C CNN
	1    17250 12550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 8500533F
P 18050 12550
AR Path="/8500533F" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/8500533F" Ref="C?"  Part="1" 
AR Path="/5DC31740/8500533F" Ref="C?"  Part="1" 
AR Path="/5DC31E28/8500533F" Ref="C65"  Part="1" 
F 0 "C65" H 18142 12596 50  0000 L CNN
F 1 "0.1uF" H 18142 12505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 18050 12550 50  0001 C CNN
F 3 "~" H 18050 12550 50  0001 C CNN
	1    18050 12550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 85005345
P 18450 12550
AR Path="/85005345" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85005345" Ref="C?"  Part="1" 
AR Path="/5DC31740/85005345" Ref="C?"  Part="1" 
AR Path="/5DC31E28/85005345" Ref="C70"  Part="1" 
F 0 "C70" H 18542 12596 50  0000 L CNN
F 1 "0.1uF" H 18542 12505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 18450 12550 50  0001 C CNN
F 3 "~" H 18450 12550 50  0001 C CNN
	1    18450 12550
	1    0    0    -1  
$EndComp
Wire Wire Line
	15650 12450 16050 12450
Connection ~ 15650 12450
Connection ~ 16050 12450
Wire Wire Line
	16050 12450 16450 12450
Connection ~ 16450 12450
Wire Wire Line
	16450 12450 16850 12450
Connection ~ 16850 12450
Wire Wire Line
	16850 12450 17250 12450
Connection ~ 17250 12450
Connection ~ 18050 12450
Wire Wire Line
	18050 12450 18450 12450
Connection ~ 18450 12450
Wire Wire Line
	18450 12450 18850 12450
Wire Wire Line
	15650 12650 16050 12650
Connection ~ 15650 12650
Connection ~ 16050 12650
Wire Wire Line
	16050 12650 16450 12650
Connection ~ 16450 12650
Wire Wire Line
	16450 12650 16850 12650
Connection ~ 16850 12650
Wire Wire Line
	16850 12650 17250 12650
Connection ~ 17250 12650
Connection ~ 18050 12650
Wire Wire Line
	18050 12650 18450 12650
Connection ~ 18450 12650
Wire Wire Line
	18450 12650 18850 12650
$Comp
L Device:C_Small C?
U 1 1 8500536B
P 18850 12550
AR Path="/8500536B" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/8500536B" Ref="C?"  Part="1" 
AR Path="/5DC31740/8500536B" Ref="C?"  Part="1" 
AR Path="/5DC31E28/8500536B" Ref="C75"  Part="1" 
F 0 "C75" H 18942 12596 50  0000 L CNN
F 1 "0.1uF" H 18942 12505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 18850 12550 50  0001 C CNN
F 3 "~" H 18850 12550 50  0001 C CNN
	1    18850 12550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 85005371
P 19250 12550
AR Path="/85005371" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85005371" Ref="C?"  Part="1" 
AR Path="/5DC31740/85005371" Ref="C?"  Part="1" 
AR Path="/5DC31E28/85005371" Ref="C80"  Part="1" 
F 0 "C80" H 19342 12596 50  0000 L CNN
F 1 "0.1uF" H 19342 12505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 19250 12550 50  0001 C CNN
F 3 "~" H 19250 12550 50  0001 C CNN
	1    19250 12550
	1    0    0    -1  
$EndComp
Connection ~ 18850 12450
Wire Wire Line
	18850 12450 19250 12450
Connection ~ 18850 12650
Wire Wire Line
	18850 12650 19250 12650
$Comp
L Device:C_Small C?
U 1 1 8500537B
P 19650 12550
AR Path="/8500537B" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/8500537B" Ref="C?"  Part="1" 
AR Path="/5DC31740/8500537B" Ref="C?"  Part="1" 
AR Path="/5DC31E28/8500537B" Ref="C85"  Part="1" 
F 0 "C85" H 19742 12596 50  0000 L CNN
F 1 "0.1uF" H 19742 12505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 19650 12550 50  0001 C CNN
F 3 "~" H 19650 12550 50  0001 C CNN
	1    19650 12550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 85005381
P 20050 12550
AR Path="/85005381" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85005381" Ref="C?"  Part="1" 
AR Path="/5DC31740/85005381" Ref="C?"  Part="1" 
AR Path="/5DC31E28/85005381" Ref="C90"  Part="1" 
F 0 "C90" H 20142 12596 50  0000 L CNN
F 1 "0.1uF" H 20142 12505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 20050 12550 50  0001 C CNN
F 3 "~" H 20050 12550 50  0001 C CNN
	1    20050 12550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 85005387
P 20450 12550
AR Path="/85005387" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85005387" Ref="C?"  Part="1" 
AR Path="/5DC31740/85005387" Ref="C?"  Part="1" 
AR Path="/5DC31E28/85005387" Ref="C95"  Part="1" 
F 0 "C95" H 20542 12596 50  0000 L CNN
F 1 "0.1uF" H 20542 12505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 20450 12550 50  0001 C CNN
F 3 "~" H 20450 12550 50  0001 C CNN
	1    20450 12550
	1    0    0    -1  
$EndComp
Wire Wire Line
	19250 12450 19650 12450
Connection ~ 19650 12450
Wire Wire Line
	19650 12450 20050 12450
Connection ~ 20050 12450
Wire Wire Line
	20050 12450 20450 12450
Connection ~ 20450 12450
Wire Wire Line
	20450 12450 20850 12450
Wire Wire Line
	19250 12650 19650 12650
Connection ~ 19650 12650
Wire Wire Line
	19650 12650 20050 12650
Connection ~ 20050 12650
Wire Wire Line
	20050 12650 20450 12650
Connection ~ 20450 12650
Wire Wire Line
	20450 12650 20850 12650
$Comp
L Device:C_Small C?
U 1 1 8500539B
P 20850 12550
AR Path="/8500539B" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/8500539B" Ref="C?"  Part="1" 
AR Path="/5DC31740/8500539B" Ref="C?"  Part="1" 
AR Path="/5DC31E28/8500539B" Ref="C100"  Part="1" 
F 0 "C100" H 20942 12596 50  0000 L CNN
F 1 "0.1uF" H 20942 12505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 20850 12550 50  0001 C CNN
F 3 "~" H 20850 12550 50  0001 C CNN
	1    20850 12550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 850053A1
P 21250 12550
AR Path="/850053A1" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/850053A1" Ref="C?"  Part="1" 
AR Path="/5DC31740/850053A1" Ref="C?"  Part="1" 
AR Path="/5DC31E28/850053A1" Ref="C105"  Part="1" 
F 0 "C105" H 21342 12596 50  0000 L CNN
F 1 "0.1uF" H 21342 12505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 21250 12550 50  0001 C CNN
F 3 "~" H 21250 12550 50  0001 C CNN
	1    21250 12550
	1    0    0    -1  
$EndComp
Connection ~ 20850 12450
Wire Wire Line
	20850 12450 21250 12450
Connection ~ 20850 12650
Wire Wire Line
	20850 12650 21250 12650
Connection ~ 19250 12450
Connection ~ 19250 12650
$Comp
L Device:C_Small C?
U 1 1 850053AD
P 21650 12550
AR Path="/850053AD" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/850053AD" Ref="C?"  Part="1" 
AR Path="/5DC31740/850053AD" Ref="C?"  Part="1" 
AR Path="/5DC31E28/850053AD" Ref="C110"  Part="1" 
F 0 "C110" H 21742 12596 50  0000 L CNN
F 1 "0.1uF" H 21742 12505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 21650 12550 50  0001 C CNN
F 3 "~" H 21650 12550 50  0001 C CNN
	1    21650 12550
	1    0    0    -1  
$EndComp
Wire Wire Line
	21250 12450 21650 12450
Connection ~ 21650 12450
Wire Wire Line
	21650 12450 22050 12450
Wire Wire Line
	21250 12650 21650 12650
Connection ~ 21650 12650
Wire Wire Line
	21650 12650 22050 12650
$Comp
L Device:C_Small C?
U 1 1 850053B9
P 22050 12550
AR Path="/850053B9" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/850053B9" Ref="C?"  Part="1" 
AR Path="/5DC31740/850053B9" Ref="C?"  Part="1" 
AR Path="/5DC31E28/850053B9" Ref="C115"  Part="1" 
F 0 "C115" H 22142 12596 50  0000 L CNN
F 1 "0.1uF" H 22142 12505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 22050 12550 50  0001 C CNN
F 3 "~" H 22050 12550 50  0001 C CNN
	1    22050 12550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 850053BF
P 22450 12550
AR Path="/850053BF" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/850053BF" Ref="C?"  Part="1" 
AR Path="/5DC31740/850053BF" Ref="C?"  Part="1" 
AR Path="/5DC31E28/850053BF" Ref="C120"  Part="1" 
F 0 "C120" H 22542 12596 50  0000 L CNN
F 1 "0.1uF" H 22542 12505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 22450 12550 50  0001 C CNN
F 3 "~" H 22450 12550 50  0001 C CNN
	1    22450 12550
	1    0    0    -1  
$EndComp
Connection ~ 22050 12450
Wire Wire Line
	22050 12450 22450 12450
Connection ~ 22050 12650
Wire Wire Line
	22050 12650 22450 12650
Connection ~ 21250 12450
Connection ~ 21250 12650
$Comp
L power:+5V #PWR?
U 1 1 850053CB
P 15650 13250
AR Path="/850053CB" Ref="#PWR?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/850053CB" Ref="#PWR?"  Part="1" 
AR Path="/5DC31740/850053CB" Ref="#PWR?"  Part="1" 
AR Path="/5DC31E28/850053CB" Ref="#PWR088"  Part="1" 
F 0 "#PWR088" H 15650 13100 50  0001 C CNN
F 1 "+5V" H 15665 13423 50  0000 C CNN
F 2 "" H 15650 13250 50  0001 C CNN
F 3 "" H 15650 13250 50  0001 C CNN
	1    15650 13250
	1    0    0    -1  
$EndComp
Wire Wire Line
	15650 13250 15650 13300
Wire Wire Line
	15650 13500 15650 13600
$Comp
L power:GND #PWR?
U 1 1 850053D3
P 15650 13600
AR Path="/850053D3" Ref="#PWR?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/850053D3" Ref="#PWR?"  Part="1" 
AR Path="/5DC31740/850053D3" Ref="#PWR?"  Part="1" 
AR Path="/5DC31E28/850053D3" Ref="#PWR089"  Part="1" 
F 0 "#PWR089" H 15650 13350 50  0001 C CNN
F 1 "GND" H 15655 13427 50  0000 C CNN
F 2 "" H 15650 13600 50  0001 C CNN
F 3 "" H 15650 13600 50  0001 C CNN
	1    15650 13600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 850053D9
P 15650 13400
AR Path="/850053D9" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/850053D9" Ref="C?"  Part="1" 
AR Path="/5DC31740/850053D9" Ref="C?"  Part="1" 
AR Path="/5DC31E28/850053D9" Ref="C41"  Part="1" 
F 0 "C41" H 15742 13446 50  0000 L CNN
F 1 "0.1uF" H 15742 13355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 15650 13400 50  0001 C CNN
F 3 "~" H 15650 13400 50  0001 C CNN
	1    15650 13400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 850053DF
P 16050 13400
AR Path="/850053DF" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/850053DF" Ref="C?"  Part="1" 
AR Path="/5DC31740/850053DF" Ref="C?"  Part="1" 
AR Path="/5DC31E28/850053DF" Ref="C45"  Part="1" 
F 0 "C45" H 16142 13446 50  0000 L CNN
F 1 "0.1uF" H 16142 13355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 16050 13400 50  0001 C CNN
F 3 "~" H 16050 13400 50  0001 C CNN
	1    16050 13400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 850053E5
P 16450 13400
AR Path="/850053E5" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/850053E5" Ref="C?"  Part="1" 
AR Path="/5DC31740/850053E5" Ref="C?"  Part="1" 
AR Path="/5DC31E28/850053E5" Ref="C49"  Part="1" 
F 0 "C49" H 16542 13446 50  0000 L CNN
F 1 "0.1uF" H 16542 13355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 16450 13400 50  0001 C CNN
F 3 "~" H 16450 13400 50  0001 C CNN
	1    16450 13400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 850053EB
P 16850 13400
AR Path="/850053EB" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/850053EB" Ref="C?"  Part="1" 
AR Path="/5DC31740/850053EB" Ref="C?"  Part="1" 
AR Path="/5DC31E28/850053EB" Ref="C53"  Part="1" 
F 0 "C53" H 16942 13446 50  0000 L CNN
F 1 "0.1uF" H 16942 13355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 16850 13400 50  0001 C CNN
F 3 "~" H 16850 13400 50  0001 C CNN
	1    16850 13400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 850053F1
P 17250 13400
AR Path="/850053F1" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/850053F1" Ref="C?"  Part="1" 
AR Path="/5DC31740/850053F1" Ref="C?"  Part="1" 
AR Path="/5DC31E28/850053F1" Ref="C57"  Part="1" 
F 0 "C57" H 17342 13446 50  0000 L CNN
F 1 "0.1uF" H 17342 13355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 17250 13400 50  0001 C CNN
F 3 "~" H 17250 13400 50  0001 C CNN
	1    17250 13400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 850053F7
P 17650 13400
AR Path="/850053F7" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/850053F7" Ref="C?"  Part="1" 
AR Path="/5DC31740/850053F7" Ref="C?"  Part="1" 
AR Path="/5DC31E28/850053F7" Ref="C61"  Part="1" 
F 0 "C61" H 17742 13446 50  0000 L CNN
F 1 "0.1uF" H 17742 13355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 17650 13400 50  0001 C CNN
F 3 "~" H 17650 13400 50  0001 C CNN
	1    17650 13400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 850053FD
P 18050 13400
AR Path="/850053FD" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/850053FD" Ref="C?"  Part="1" 
AR Path="/5DC31740/850053FD" Ref="C?"  Part="1" 
AR Path="/5DC31E28/850053FD" Ref="C66"  Part="1" 
F 0 "C66" H 18142 13446 50  0000 L CNN
F 1 "0.1uF" H 18142 13355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 18050 13400 50  0001 C CNN
F 3 "~" H 18050 13400 50  0001 C CNN
	1    18050 13400
	1    0    0    -1  
$EndComp
Wire Wire Line
	15650 13300 16050 13300
Connection ~ 15650 13300
Connection ~ 16050 13300
Wire Wire Line
	16050 13300 16450 13300
Connection ~ 16450 13300
Wire Wire Line
	16450 13300 16850 13300
Connection ~ 16850 13300
Wire Wire Line
	16850 13300 17250 13300
Connection ~ 17250 13300
Wire Wire Line
	17250 13300 17650 13300
Connection ~ 17650 13300
Wire Wire Line
	17650 13300 18050 13300
Connection ~ 18050 13300
Wire Wire Line
	15650 13500 16050 13500
Connection ~ 15650 13500
Connection ~ 16050 13500
Wire Wire Line
	16050 13500 16450 13500
Connection ~ 16450 13500
Wire Wire Line
	16450 13500 16850 13500
Connection ~ 16850 13500
Wire Wire Line
	16850 13500 17250 13500
Connection ~ 17250 13500
Wire Wire Line
	17250 13500 17650 13500
Connection ~ 17650 13500
Wire Wire Line
	17650 13500 18050 13500
Connection ~ 18050 13500
$Comp
L Device:C_Small C?
U 1 1 85005429
P 18850 13400
AR Path="/85005429" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85005429" Ref="C?"  Part="1" 
AR Path="/5DC31740/85005429" Ref="C?"  Part="1" 
AR Path="/5DC31E28/85005429" Ref="C76"  Part="1" 
F 0 "C76" H 18942 13446 50  0000 L CNN
F 1 "0.1uF" H 18942 13355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 18850 13400 50  0001 C CNN
F 3 "~" H 18850 13400 50  0001 C CNN
	1    18850 13400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 8500542F
P 19250 13400
AR Path="/8500542F" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/8500542F" Ref="C?"  Part="1" 
AR Path="/5DC31740/8500542F" Ref="C?"  Part="1" 
AR Path="/5DC31E28/8500542F" Ref="C81"  Part="1" 
F 0 "C81" H 19342 13446 50  0000 L CNN
F 1 "0.1uF" H 19342 13355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 19250 13400 50  0001 C CNN
F 3 "~" H 19250 13400 50  0001 C CNN
	1    19250 13400
	1    0    0    -1  
$EndComp
Connection ~ 18850 13300
Wire Wire Line
	18850 13300 19250 13300
Connection ~ 18850 13500
Wire Wire Line
	18850 13500 19250 13500
$Comp
L Device:C_Small C?
U 1 1 85005439
P 19650 13400
AR Path="/85005439" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85005439" Ref="C?"  Part="1" 
AR Path="/5DC31740/85005439" Ref="C?"  Part="1" 
AR Path="/5DC31E28/85005439" Ref="C86"  Part="1" 
F 0 "C86" H 19742 13446 50  0000 L CNN
F 1 "0.1uF" H 19742 13355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 19650 13400 50  0001 C CNN
F 3 "~" H 19650 13400 50  0001 C CNN
	1    19650 13400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 8500543F
P 20050 13400
AR Path="/8500543F" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/8500543F" Ref="C?"  Part="1" 
AR Path="/5DC31740/8500543F" Ref="C?"  Part="1" 
AR Path="/5DC31E28/8500543F" Ref="C91"  Part="1" 
F 0 "C91" H 20142 13446 50  0000 L CNN
F 1 "0.1uF" H 20142 13355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 20050 13400 50  0001 C CNN
F 3 "~" H 20050 13400 50  0001 C CNN
	1    20050 13400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 85005445
P 20450 13400
AR Path="/85005445" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85005445" Ref="C?"  Part="1" 
AR Path="/5DC31740/85005445" Ref="C?"  Part="1" 
AR Path="/5DC31E28/85005445" Ref="C96"  Part="1" 
F 0 "C96" H 20542 13446 50  0000 L CNN
F 1 "0.1uF" H 20542 13355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 20450 13400 50  0001 C CNN
F 3 "~" H 20450 13400 50  0001 C CNN
	1    20450 13400
	1    0    0    -1  
$EndComp
Wire Wire Line
	19250 13300 19650 13300
Connection ~ 19650 13300
Wire Wire Line
	19650 13300 20050 13300
Connection ~ 20050 13300
Wire Wire Line
	20050 13300 20450 13300
Connection ~ 20450 13300
Wire Wire Line
	20450 13300 20850 13300
Wire Wire Line
	19250 13500 19650 13500
Connection ~ 19650 13500
Wire Wire Line
	19650 13500 20050 13500
Connection ~ 20050 13500
Wire Wire Line
	20050 13500 20450 13500
Connection ~ 20450 13500
Wire Wire Line
	20450 13500 20850 13500
$Comp
L Device:C_Small C?
U 1 1 85005459
P 20850 13400
AR Path="/85005459" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85005459" Ref="C?"  Part="1" 
AR Path="/5DC31740/85005459" Ref="C?"  Part="1" 
AR Path="/5DC31E28/85005459" Ref="C101"  Part="1" 
F 0 "C101" H 20942 13446 50  0000 L CNN
F 1 "0.1uF" H 20942 13355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 20850 13400 50  0001 C CNN
F 3 "~" H 20850 13400 50  0001 C CNN
	1    20850 13400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 8500545F
P 21250 13400
AR Path="/8500545F" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/8500545F" Ref="C?"  Part="1" 
AR Path="/5DC31740/8500545F" Ref="C?"  Part="1" 
AR Path="/5DC31E28/8500545F" Ref="C106"  Part="1" 
F 0 "C106" H 21342 13446 50  0000 L CNN
F 1 "0.1uF" H 21342 13355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 21250 13400 50  0001 C CNN
F 3 "~" H 21250 13400 50  0001 C CNN
	1    21250 13400
	1    0    0    -1  
$EndComp
Connection ~ 20850 13300
Wire Wire Line
	20850 13300 21250 13300
Connection ~ 20850 13500
Wire Wire Line
	20850 13500 21250 13500
Connection ~ 19250 13300
Connection ~ 19250 13500
$Comp
L Device:C_Small C?
U 1 1 8500546B
P 21650 13400
AR Path="/8500546B" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/8500546B" Ref="C?"  Part="1" 
AR Path="/5DC31740/8500546B" Ref="C?"  Part="1" 
AR Path="/5DC31E28/8500546B" Ref="C111"  Part="1" 
F 0 "C111" H 21742 13446 50  0000 L CNN
F 1 "0.1uF" H 21742 13355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 21650 13400 50  0001 C CNN
F 3 "~" H 21650 13400 50  0001 C CNN
	1    21650 13400
	1    0    0    -1  
$EndComp
Wire Wire Line
	21250 13300 21650 13300
Connection ~ 21650 13300
Wire Wire Line
	21650 13300 22050 13300
Wire Wire Line
	21250 13500 21650 13500
Connection ~ 21650 13500
Wire Wire Line
	21650 13500 22050 13500
$Comp
L Device:C_Small C?
U 1 1 85005477
P 22050 13400
AR Path="/85005477" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85005477" Ref="C?"  Part="1" 
AR Path="/5DC31740/85005477" Ref="C?"  Part="1" 
AR Path="/5DC31E28/85005477" Ref="C116"  Part="1" 
F 0 "C116" H 22142 13446 50  0000 L CNN
F 1 "0.1uF" H 22142 13355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 22050 13400 50  0001 C CNN
F 3 "~" H 22050 13400 50  0001 C CNN
	1    22050 13400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 8500547D
P 22450 13400
AR Path="/8500547D" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/8500547D" Ref="C?"  Part="1" 
AR Path="/5DC31740/8500547D" Ref="C?"  Part="1" 
AR Path="/5DC31E28/8500547D" Ref="C121"  Part="1" 
F 0 "C121" H 22542 13446 50  0000 L CNN
F 1 "0.1uF" H 22542 13355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 22450 13400 50  0001 C CNN
F 3 "~" H 22450 13400 50  0001 C CNN
	1    22450 13400
	1    0    0    -1  
$EndComp
Connection ~ 22050 13300
Wire Wire Line
	22050 13300 22450 13300
Connection ~ 22050 13500
Wire Wire Line
	22050 13500 22450 13500
Connection ~ 21250 13300
Connection ~ 21250 13500
$Comp
L power:+5V #PWR?
U 1 1 85B7F266
P 16850 13900
AR Path="/85B7F266" Ref="#PWR?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85B7F266" Ref="#PWR?"  Part="1" 
AR Path="/5DC31740/85B7F266" Ref="#PWR?"  Part="1" 
AR Path="/5DC31E28/85B7F266" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 16850 13750 50  0001 C CNN
F 1 "+5V" H 16865 14073 50  0000 C CNN
F 2 "" H 16850 13900 50  0001 C CNN
F 3 "" H 16850 13900 50  0001 C CNN
	1    16850 13900
	1    0    0    -1  
$EndComp
Wire Wire Line
	16850 13900 16850 13950
$Comp
L power:GND #PWR?
U 1 1 85B7F26E
P 16850 14200
AR Path="/85B7F26E" Ref="#PWR?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85B7F26E" Ref="#PWR?"  Part="1" 
AR Path="/5DC31740/85B7F26E" Ref="#PWR?"  Part="1" 
AR Path="/5DC31E28/85B7F26E" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 16850 13950 50  0001 C CNN
F 1 "GND" H 16855 14027 50  0000 C CNN
F 2 "" H 16850 14200 50  0001 C CNN
F 3 "" H 16850 14200 50  0001 C CNN
	1    16850 14200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 85B7F274
P 16850 14050
AR Path="/85B7F274" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85B7F274" Ref="C?"  Part="1" 
AR Path="/5DC31740/85B7F274" Ref="C?"  Part="1" 
AR Path="/5DC31E28/85B7F274" Ref="C62"  Part="1" 
F 0 "C62" H 16942 14096 50  0000 L CNN
F 1 "0.1uF" H 16942 14005 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 16850 14050 50  0001 C CNN
F 3 "~" H 16850 14050 50  0001 C CNN
	1    16850 14050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 85B7F27A
P 17250 14050
AR Path="/85B7F27A" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85B7F27A" Ref="C?"  Part="1" 
AR Path="/5DC31740/85B7F27A" Ref="C?"  Part="1" 
AR Path="/5DC31E28/85B7F27A" Ref="C67"  Part="1" 
F 0 "C67" H 17342 14096 50  0000 L CNN
F 1 "0.1uF" H 17342 14005 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 17250 14050 50  0001 C CNN
F 3 "~" H 17250 14050 50  0001 C CNN
	1    17250 14050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 85B7F280
P 17650 14050
AR Path="/85B7F280" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85B7F280" Ref="C?"  Part="1" 
AR Path="/5DC31740/85B7F280" Ref="C?"  Part="1" 
AR Path="/5DC31E28/85B7F280" Ref="C72"  Part="1" 
F 0 "C72" H 17742 14096 50  0000 L CNN
F 1 "0.1uF" H 17742 14005 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 17650 14050 50  0001 C CNN
F 3 "~" H 17650 14050 50  0001 C CNN
	1    17650 14050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 85B7F286
P 18050 14050
AR Path="/85B7F286" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85B7F286" Ref="C?"  Part="1" 
AR Path="/5DC31740/85B7F286" Ref="C?"  Part="1" 
AR Path="/5DC31E28/85B7F286" Ref="C77"  Part="1" 
F 0 "C77" H 18142 14096 50  0000 L CNN
F 1 "0.1uF" H 18142 14005 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 18050 14050 50  0001 C CNN
F 3 "~" H 18050 14050 50  0001 C CNN
	1    18050 14050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 85B7F28C
P 18450 14050
AR Path="/85B7F28C" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85B7F28C" Ref="C?"  Part="1" 
AR Path="/5DC31740/85B7F28C" Ref="C?"  Part="1" 
AR Path="/5DC31E28/85B7F28C" Ref="C82"  Part="1" 
F 0 "C82" H 18542 14096 50  0000 L CNN
F 1 "0.1uF" H 18542 14005 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 18450 14050 50  0001 C CNN
F 3 "~" H 18450 14050 50  0001 C CNN
	1    18450 14050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 85B7F292
P 18850 14050
AR Path="/85B7F292" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85B7F292" Ref="C?"  Part="1" 
AR Path="/5DC31740/85B7F292" Ref="C?"  Part="1" 
AR Path="/5DC31E28/85B7F292" Ref="C87"  Part="1" 
F 0 "C87" H 18942 14096 50  0000 L CNN
F 1 "0.1uF" H 18942 14005 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 18850 14050 50  0001 C CNN
F 3 "~" H 18850 14050 50  0001 C CNN
	1    18850 14050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 85B7F298
P 19250 14050
AR Path="/85B7F298" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85B7F298" Ref="C?"  Part="1" 
AR Path="/5DC31740/85B7F298" Ref="C?"  Part="1" 
AR Path="/5DC31E28/85B7F298" Ref="C92"  Part="1" 
F 0 "C92" H 19342 14096 50  0000 L CNN
F 1 "0.1uF" H 19342 14005 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 19250 14050 50  0001 C CNN
F 3 "~" H 19250 14050 50  0001 C CNN
	1    19250 14050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 85B7F29E
P 19650 14050
AR Path="/85B7F29E" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85B7F29E" Ref="C?"  Part="1" 
AR Path="/5DC31740/85B7F29E" Ref="C?"  Part="1" 
AR Path="/5DC31E28/85B7F29E" Ref="C97"  Part="1" 
F 0 "C97" H 19742 14096 50  0000 L CNN
F 1 "0.1uF" H 19742 14005 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 19650 14050 50  0001 C CNN
F 3 "~" H 19650 14050 50  0001 C CNN
	1    19650 14050
	1    0    0    -1  
$EndComp
Wire Wire Line
	16850 13950 17250 13950
Connection ~ 16850 13950
Connection ~ 17250 13950
Wire Wire Line
	17250 13950 17650 13950
Connection ~ 17650 13950
Wire Wire Line
	17650 13950 18050 13950
Connection ~ 18050 13950
Wire Wire Line
	18050 13950 18450 13950
Connection ~ 18450 13950
Wire Wire Line
	18450 13950 18850 13950
Connection ~ 18850 13950
Wire Wire Line
	18850 13950 19250 13950
Connection ~ 19250 13950
Wire Wire Line
	19250 13950 19650 13950
Connection ~ 19650 13950
Wire Wire Line
	19650 13950 20050 13950
Wire Wire Line
	16850 14150 17250 14150
Connection ~ 16850 14150
Connection ~ 17250 14150
Wire Wire Line
	17250 14150 17650 14150
Connection ~ 17650 14150
Wire Wire Line
	17650 14150 18050 14150
Connection ~ 18050 14150
Wire Wire Line
	18050 14150 18450 14150
Connection ~ 18450 14150
Wire Wire Line
	18450 14150 18850 14150
Connection ~ 18850 14150
Wire Wire Line
	18850 14150 19250 14150
Connection ~ 19250 14150
Wire Wire Line
	19250 14150 19650 14150
Connection ~ 19650 14150
Wire Wire Line
	19650 14150 20050 14150
$Comp
L Device:C_Small C?
U 1 1 85B7F2C4
P 20050 14050
AR Path="/85B7F2C4" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85B7F2C4" Ref="C?"  Part="1" 
AR Path="/5DC31740/85B7F2C4" Ref="C?"  Part="1" 
AR Path="/5DC31E28/85B7F2C4" Ref="C102"  Part="1" 
F 0 "C102" H 20142 14096 50  0000 L CNN
F 1 "0.1uF" H 20142 14005 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 20050 14050 50  0001 C CNN
F 3 "~" H 20050 14050 50  0001 C CNN
	1    20050 14050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 85B7F2CA
P 20450 14050
AR Path="/85B7F2CA" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85B7F2CA" Ref="C?"  Part="1" 
AR Path="/5DC31740/85B7F2CA" Ref="C?"  Part="1" 
AR Path="/5DC31E28/85B7F2CA" Ref="C107"  Part="1" 
F 0 "C107" H 20542 14096 50  0000 L CNN
F 1 "0.1uF" H 20542 14005 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 20450 14050 50  0001 C CNN
F 3 "~" H 20450 14050 50  0001 C CNN
	1    20450 14050
	1    0    0    -1  
$EndComp
Connection ~ 20050 13950
Wire Wire Line
	20050 13950 20450 13950
Connection ~ 20050 14150
Wire Wire Line
	20050 14150 20450 14150
$Comp
L Device:C_Small C?
U 1 1 85B7F2D4
P 20850 14050
AR Path="/85B7F2D4" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85B7F2D4" Ref="C?"  Part="1" 
AR Path="/5DC31740/85B7F2D4" Ref="C?"  Part="1" 
AR Path="/5DC31E28/85B7F2D4" Ref="C112"  Part="1" 
F 0 "C112" H 20942 14096 50  0000 L CNN
F 1 "0.1uF" H 20942 14005 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 20850 14050 50  0001 C CNN
F 3 "~" H 20850 14050 50  0001 C CNN
	1    20850 14050
	1    0    0    -1  
$EndComp
Wire Wire Line
	20450 13950 20850 13950
Connection ~ 20850 13950
Wire Wire Line
	20850 13950 21250 13950
Wire Wire Line
	20450 14150 20850 14150
Connection ~ 20850 14150
Wire Wire Line
	20850 14150 21250 14150
$Comp
L Device:C_Small C?
U 1 1 85B7F2E0
P 21250 14050
AR Path="/85B7F2E0" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85B7F2E0" Ref="C?"  Part="1" 
AR Path="/5DC31740/85B7F2E0" Ref="C?"  Part="1" 
AR Path="/5DC31E28/85B7F2E0" Ref="C117"  Part="1" 
F 0 "C117" H 21342 14096 50  0000 L CNN
F 1 "0.1uF" H 21342 14005 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 21250 14050 50  0001 C CNN
F 3 "~" H 21250 14050 50  0001 C CNN
	1    21250 14050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 85B7F2E6
P 21650 14050
AR Path="/85B7F2E6" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/85B7F2E6" Ref="C?"  Part="1" 
AR Path="/5DC31740/85B7F2E6" Ref="C?"  Part="1" 
AR Path="/5DC31E28/85B7F2E6" Ref="C122"  Part="1" 
F 0 "C122" H 21742 14096 50  0000 L CNN
F 1 "0.1uF" H 21742 14005 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 21650 14050 50  0001 C CNN
F 3 "~" H 21650 14050 50  0001 C CNN
	1    21650 14050
	1    0    0    -1  
$EndComp
Connection ~ 21250 13950
Connection ~ 21250 14150
$Comp
L CPU2908CLocal:74HC32 U?
U 2 1 609116F3
P 10250 9250
AR Path="/5DC31740/609116F3" Ref="U?"  Part="1" 
AR Path="/5DC31E28/609116F3" Ref="U75"  Part="2" 
F 0 "U75" H 10250 9575 50  0000 C CNN
F 1 "74HC32" H 10250 9484 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 10250 9250 50  0001 C CNN
F 3 "" H 10250 9250 50  0000 C CNN
	2    10250 9250
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC32 U?
U 1 1 60CF3A7E
P 10150 10050
AR Path="/5DC31740/60CF3A7E" Ref="U?"  Part="1" 
AR Path="/5DC31E28/60CF3A7E" Ref="U75"  Part="1" 
F 0 "U75" H 10150 10375 50  0000 C CNN
F 1 "74HC32" H 10150 10284 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 10150 10050 50  0001 C CNN
F 3 "" H 10150 10050 50  0000 C CNN
	1    10150 10050
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC32 U?
U 3 1 610D8216
P 14150 7850
AR Path="/5DC31740/610D8216" Ref="U?"  Part="1" 
AR Path="/5DC31E28/610D8216" Ref="U75"  Part="3" 
F 0 "U75" H 14150 8175 50  0000 C CNN
F 1 "74HC32" H 14150 8084 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 14150 7850 50  0001 C CNN
F 3 "" H 14150 7850 50  0000 C CNN
	3    14150 7850
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC32 U?
U 4 1 614BC88D
P 14150 8250
AR Path="/5DC31740/614BC88D" Ref="U?"  Part="1" 
AR Path="/5DC31E28/614BC88D" Ref="U75"  Part="4" 
F 0 "U75" H 14150 8575 50  0000 C CNN
F 1 "74HC32" H 14150 8484 50  0000 C CNN
F 2 "digikey-footprints:SOIC-14_W3.9mm" H 14150 8250 50  0001 C CNN
F 3 "" H 14150 8250 50  0000 C CNN
	4    14150 8250
	1    0    0    -1  
$EndComp
Text Label 750  4700 0    50   ~ 0
ALU_A[0..7]
Text Label 750  4850 0    50   ~ 0
ALU_B[0..7]
Wire Bus Line
	750  4700 1250 4700
Wire Bus Line
	750  4850 1250 4850
Text HLabel 1000 4150 2    50   Output ~ 0
IND
Wire Wire Line
	850  4150 1000 4150
Connection ~ 10050 15700
Wire Wire Line
	11400 15700 10050 15700
Wire Wire Line
	9000 15700 9000 15550
Wire Wire Line
	9000 15550 8900 15550
Wire Wire Line
	10050 15700 9000 15700
Wire Wire Line
	8900 15750 12800 15750
Wire Wire Line
	8400 15550 8300 15550
Wire Wire Line
	8300 15550 8300 15750
Connection ~ 8300 15750
Wire Wire Line
	8300 15750 8400 15750
$Comp
L CPU2908CLocal:74HC04 U120
U 1 1 663BF6A4
P 11600 9550
F 0 "U120" H 11600 9411 50  0000 C CNN
F 1 "TC74VHCT04AFT" H 11600 9320 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 11500 9550 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/toshiba/TC74VHCT04AFT.pdf" H 11500 9550 50  0001 C CNN
	1    11600 9550
	1    0    0    -1  
$EndComp
Wire Wire Line
	11350 9550 11250 9550
Wire Wire Line
	11250 9550 11250 9350
Connection ~ 11250 9350
$Comp
L CPU2908CLocal:74HC04 U120
U 3 1 667B0404
P 17150 15300
F 0 "U120" H 17450 15350 50  0000 C CNN
F 1 "TC74VHCT04AFT" H 17150 15484 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 17050 15300 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/toshiba/TC74VHCT04AFT.pdf" H 17050 15300 50  0001 C CNN
	3    17150 15300
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC04 U120
U 4 1 667B0BD2
P 17150 15500
F 0 "U120" H 17150 15361 50  0000 C CNN
F 1 "TC74VHCT04AFT" H 17150 15270 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 17050 15500 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/toshiba/TC74VHCT04AFT.pdf" H 17050 15500 50  0001 C CNN
	4    17150 15500
	1    0    0    -1  
$EndComp
Wire Wire Line
	15800 15550 16900 15550
Wire Wire Line
	16900 15550 16900 15500
Connection ~ 15800 15550
Wire Wire Line
	15800 15550 15800 15600
Connection ~ 16900 15300
Connection ~ 16900 15500
$Comp
L CPU2908CLocal:74HC04 U120
U 5 1 68740AA0
P 17150 15100
F 0 "U120" H 17500 15150 50  0000 C CNN
F 1 "TC74VHCT04AFT" H 16800 15200 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 17050 15100 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/toshiba/TC74VHCT04AFT.pdf" H 17050 15100 50  0001 C CNN
	5    17150 15100
	1    0    0    -1  
$EndComp
Wire Wire Line
	16900 15500 16900 15300
Wire Wire Line
	850  700  1500 700 
Wire Wire Line
	850  900  1500 900 
Wire Wire Line
	16500 14650 16700 14650
NoConn ~ 16700 14650
Connection ~ 22550 2550
Wire Wire Line
	17450 9850 17450 10050
Wire Wire Line
	17550 9950 17500 9950
Wire Wire Line
	17500 9950 17500 10200
Wire Wire Line
	19150 9950 19150 10200
Connection ~ 17500 10200
Wire Wire Line
	17500 10200 19150 10200
Wire Wire Line
	19150 10200 20850 10200
Wire Wire Line
	20850 10200 20850 9950
Connection ~ 19150 10200
Wire Wire Line
	20850 9950 20900 9950
Wire Wire Line
	20800 9850 20800 10150
Wire Wire Line
	19100 9850 19100 10100
Wire Wire Line
	15850 10200 17500 10200
$Comp
L power:GND #PWR?
U 1 1 6E645260
P 15850 10200
AR Path="/6E645260" Ref="#PWR?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/6E645260" Ref="#PWR?"  Part="1" 
AR Path="/5DC31740/6E645260" Ref="#PWR?"  Part="1" 
AR Path="/5DC31E28/6E645260" Ref="#PWR0122"  Part="1" 
F 0 "#PWR0122" H 15850 9950 50  0001 C CNN
F 1 "GND" H 15950 10150 50  0000 C CNN
F 2 "" H 15850 10200 50  0001 C CNN
F 3 "" H 15850 10200 50  0001 C CNN
	1    15850 10200
	1    0    0    -1  
$EndComp
Wire Wire Line
	15400 9850 15900 9850
Wire Wire Line
	15850 9950 15850 10200
Connection ~ 15850 10200
Wire Wire Line
	13900 15600 14300 15600
Wire Wire Line
	13900 15150 14300 15150
Wire Wire Line
	13900 14700 14300 14700
Wire Wire Line
	13900 14250 14300 14250
Wire Wire Line
	16850 14150 16850 14200
$Comp
L CPU2908CLocal:74HC04 U120
U 6 1 68740AA6
P 9700 9150
F 0 "U120" H 9700 9425 50  0000 C CNN
F 1 "TC74VHCT04AFT" H 9700 9334 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 9600 9150 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/toshiba/TC74VHCT04AFT.pdf" H 9600 9150 50  0001 C CNN
	6    9700 9150
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC04 U27
U 2 1 8DECD608
P 13400 7750
F 0 "U27" H 13350 7950 50  0000 C CNN
F 1 "TC74VHCT04AFT" H 13350 7850 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 13300 7750 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/toshiba/TC74VHCT04AFT.pdf" H 13300 7750 50  0001 C CNN
	2    13400 7750
	1    0    0    -1  
$EndComp
Wire Notes Line
	10050 4700 10050 8600
Wire Notes Line
	10050 8600 3800 8600
Wire Notes Line
	3800 8600 3800 4700
Wire Notes Line
	3800 4700 10050 4700
Text Notes 9050 8600 0    50   ~ 0
DataOut to Inner DataBus
Text Notes 4000 2150 0    50   ~ 0
R0
Text Notes 4000 3550 0    50   ~ 0
R1
Wire Wire Line
	1000 6850 1000 11850
Wire Wire Line
	2150 7000 2150 6000
Wire Wire Line
	1050 10250 1050 7000
Wire Wire Line
	1050 7000 2150 7000
Text Label 1400 6550 0    50   ~ 0
WB_SP
Text Label 1400 6700 0    50   ~ 0
WB_CP
Text Label 1400 6850 0    50   ~ 0
WB_A1
Text Label 1400 7000 0    50   ~ 0
WB_A0
Text Label 2100 5600 0    50   ~ 0
WB_R0
Text Label 2100 5700 0    50   ~ 0
WB_R1
Text Label 2100 5800 0    50   ~ 0
WB_R2
Text Label 2100 5900 0    50   ~ 0
WB_R3
Connection ~ 3300 15950
Wire Bus Line
	3300 15950 15250 15950
Wire Wire Line
	3750 13700 1650 13700
Wire Wire Line
	1750 13750 3850 13750
Connection ~ 1750 13750
$Comp
L CPU2908CLocal:TC74HC574 U48
U 1 1 6232B13C
P 2200 14600
F 0 "U48" H 2200 15325 50  0000 C CNN
F 1 "TC74VHC574F" H 2200 15234 50  0000 C CNN
F 2 "digikey-footprints:SOIC-20_W7.5mm" H 2200 14600 50  0001 C CNN
F 3 "TC74VHC574F_datasheet_ja_20190131.pdf" H 2200 14600 50  0001 C CNN
	1    2200 14600
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:TC74HC574 U55
U 1 1 6232A3F8
P 4300 14600
F 0 "U55" H 4300 15325 50  0000 C CNN
F 1 "TC74VHC574F" H 4300 15234 50  0000 C CNN
F 2 "digikey-footprints:SOIC-20_W7.5mm" H 4300 14600 50  0001 C CNN
F 3 "TC74VHC574F_datasheet_ja_20190131.pdf" H 4300 14600 50  0001 C CNN
	1    4300 14600
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:TC74HC574 U47
U 1 1 62329196
P 2200 13000
F 0 "U47" H 2200 13725 50  0000 C CNN
F 1 "TC74VHC574F" H 2200 13634 50  0000 C CNN
F 2 "digikey-footprints:SOIC-20_W7.5mm" H 2200 13000 50  0001 C CNN
F 3 "TC74VHC574F_datasheet_ja_20190131.pdf" H 2200 13000 50  0001 C CNN
	1    2200 13000
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:TC74HC574 U54
U 1 1 623299BF
P 4300 13000
F 0 "U54" H 4300 13725 50  0000 C CNN
F 1 "TC74VHC574F" H 4300 13634 50  0000 C CNN
F 2 "digikey-footprints:SOIC-20_W7.5mm" H 4300 13000 50  0001 C CNN
F 3 "TC74VHC574F_datasheet_ja_20190131.pdf" H 4300 13000 50  0001 C CNN
	1    4300 13000
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:TC74HC574 U46
U 1 1 623286C8
P 2200 11450
F 0 "U46" H 2200 12175 50  0000 C CNN
F 1 "TC74VHC574F" H 2200 12084 50  0000 C CNN
F 2 "digikey-footprints:SOIC-20_W7.5mm" H 2200 11450 50  0001 C CNN
F 3 "TC74VHC574F_datasheet_ja_20190131.pdf" H 2200 11450 50  0001 C CNN
	1    2200 11450
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:TC74HC574 U53
U 1 1 62327BBC
P 4300 11450
F 0 "U53" H 4300 12175 50  0000 C CNN
F 1 "TC74VHC574F" H 4300 12084 50  0000 C CNN
F 2 "digikey-footprints:SOIC-20_W7.5mm" H 4300 11450 50  0001 C CNN
F 3 "TC74VHC574F_datasheet_ja_20190131.pdf" H 4300 11450 50  0001 C CNN
	1    4300 11450
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:TC74HC574 U45
U 1 1 623263F8
P 2200 9850
F 0 "U45" H 2200 10575 50  0000 C CNN
F 1 "TC74VHC574F" H 2200 10484 50  0000 C CNN
F 2 "digikey-footprints:SOIC-20_W7.5mm" H 2200 9850 50  0001 C CNN
F 3 "TC74VHC574F_datasheet_ja_20190131.pdf" H 2200 9850 50  0001 C CNN
	1    2200 9850
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:TC74HC574 U52
U 1 1 623273A7
P 4300 9850
F 0 "U52" H 4300 10575 50  0000 C CNN
F 1 "TC74VHC574F" H 4300 10484 50  0000 C CNN
F 2 "digikey-footprints:SOIC-20_W7.5mm" H 4300 9850 50  0001 C CNN
F 3 "TC74VHC574F_datasheet_ja_20190131.pdf" H 4300 9850 50  0001 C CNN
	1    4300 9850
	1    0    0    -1  
$EndComp
Wire Bus Line
	1200 15950 3300 15950
$Comp
L power:GND #PWR0123
U 1 1 90E4C549
P 4700 6350
F 0 "#PWR0123" H 4700 6100 50  0001 C CNN
F 1 "GND" H 4705 6177 50  0000 C CNN
F 2 "" H 4700 6350 50  0001 C CNN
F 3 "" H 4700 6350 50  0001 C CNN
	1    4700 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 8400 6550 8400
Wire Wire Line
	6550 8400 6550 8150
Wire Wire Line
	4800 8400 4800 8500
Connection ~ 4800 8400
$Comp
L power:GND #PWR0124
U 1 1 927A3BA2
P 4800 8500
F 0 "#PWR0124" H 4800 8250 50  0001 C CNN
F 1 "GND" H 4805 8327 50  0000 C CNN
F 2 "" H 4800 8500 50  0001 C CNN
F 3 "" H 4800 8500 50  0001 C CNN
	1    4800 8500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 8050 5000 8050
Wire Wire Line
	4900 8050 4900 8700
Wire Wire Line
	5000 8150 4800 8150
Wire Wire Line
	4800 8150 4800 8400
Wire Wire Line
	6650 8150 6550 8150
Wire Wire Line
	6650 8050 6750 8050
Wire Wire Line
	6650 8050 6650 8750
Wire Wire Line
	4700 6300 6650 6300
Wire Wire Line
	4700 6300 4700 6350
Wire Wire Line
	3850 6000 3850 7250
Wire Wire Line
	3850 6000 5000 6000
Wire Wire Line
	6500 6000 6500 6500
Wire Wire Line
	6500 6000 6750 6000
Wire Wire Line
	5000 6100 4700 6100
Wire Wire Line
	4700 6100 4700 6300
Connection ~ 4700 6300
Wire Wire Line
	6750 6100 6650 6100
Wire Wire Line
	6650 6100 6650 6300
Text Notes 2250 10500 0    50   ~ 0
A0_Lo
Text Notes 4350 10500 0    50   ~ 0
A0_Hi
Text Label 1400 10250 0    50   ~ 0
WB_A0
Text Label 1400 11850 0    50   ~ 0
WB_A1
Text Label 1400 13400 0    50   ~ 0
WB_CP
Text Label 1400 15000 0    50   ~ 0
WB_SP
Wire Wire Line
	1300 9350 1800 9350
Text Label 1400 10050 0    50   ~ 0
WB_AD7
Text Label 1400 9950 0    50   ~ 0
WB_AD6
Text Label 1400 9850 0    50   ~ 0
WB_AD5
Text Label 1400 9750 0    50   ~ 0
WB_AD4
Text Label 1400 9650 0    50   ~ 0
WB_AD3
Text Label 1400 9550 0    50   ~ 0
WB_AD2
Text Label 1400 9450 0    50   ~ 0
WB_AD1
Text Label 1400 9350 0    50   ~ 0
WB_AD0
Wire Wire Line
	1300 9450 1800 9450
Wire Wire Line
	1300 9550 1800 9550
Wire Wire Line
	1300 9650 1800 9650
Wire Wire Line
	1300 9750 1800 9750
Wire Wire Line
	1300 9850 1800 9850
Wire Wire Line
	1300 9950 1800 9950
Wire Wire Line
	1300 10050 1800 10050
Wire Wire Line
	1300 10950 1800 10950
Text Label 1400 11650 0    50   ~ 0
WB_AD7
Text Label 1400 11550 0    50   ~ 0
WB_AD6
Text Label 1400 11450 0    50   ~ 0
WB_AD5
Text Label 1400 11350 0    50   ~ 0
WB_AD4
Text Label 1400 11250 0    50   ~ 0
WB_AD3
Text Label 1400 11150 0    50   ~ 0
WB_AD2
Text Label 1400 11050 0    50   ~ 0
WB_AD1
Text Label 1400 10950 0    50   ~ 0
WB_AD0
Wire Wire Line
	1300 11050 1800 11050
Wire Wire Line
	1300 11150 1800 11150
Wire Wire Line
	1300 11250 1800 11250
Wire Wire Line
	1300 11350 1800 11350
Wire Wire Line
	1300 11450 1800 11450
Wire Wire Line
	1300 11550 1800 11550
Wire Wire Line
	1300 11650 1800 11650
Wire Wire Line
	1300 12500 1800 12500
Text Label 1400 13200 0    50   ~ 0
WB_AD7
Text Label 1400 13100 0    50   ~ 0
WB_AD6
Text Label 1400 13000 0    50   ~ 0
WB_AD5
Text Label 1400 12900 0    50   ~ 0
WB_AD4
Text Label 1400 12800 0    50   ~ 0
WB_AD3
Text Label 1400 12700 0    50   ~ 0
WB_AD2
Text Label 1400 12600 0    50   ~ 0
WB_AD1
Text Label 1400 12500 0    50   ~ 0
WB_AD0
Wire Wire Line
	1300 12600 1800 12600
Wire Wire Line
	1300 12700 1800 12700
Wire Wire Line
	1300 12800 1800 12800
Wire Wire Line
	1300 12900 1800 12900
Wire Wire Line
	1300 13000 1800 13000
Wire Wire Line
	1300 13100 1800 13100
Wire Wire Line
	1300 13200 1800 13200
Wire Wire Line
	1300 14100 1800 14100
Text Label 1400 14800 0    50   ~ 0
WB_AD7
Text Label 1400 14700 0    50   ~ 0
WB_AD6
Text Label 1400 14600 0    50   ~ 0
WB_AD5
Text Label 1400 14500 0    50   ~ 0
WB_AD4
Text Label 1400 14400 0    50   ~ 0
WB_AD3
Text Label 1400 14300 0    50   ~ 0
WB_AD2
Text Label 1400 14200 0    50   ~ 0
WB_AD1
Text Label 1400 14100 0    50   ~ 0
WB_AD0
Wire Wire Line
	1300 14200 1800 14200
Wire Wire Line
	1300 14300 1800 14300
Wire Wire Line
	1300 14400 1800 14400
Wire Wire Line
	1300 14500 1800 14500
Wire Wire Line
	1300 14600 1800 14600
Wire Wire Line
	1300 14700 1800 14700
Wire Wire Line
	1300 14800 1800 14800
Text Label 3500 9350 0    50   ~ 0
WB_AD8
Text Label 3500 9450 0    50   ~ 0
WB_AD9
Text Label 3500 9550 0    50   ~ 0
WB_AD10
Text Label 3500 9650 0    50   ~ 0
WB_AD11
Text Label 3500 9750 0    50   ~ 0
WB_AD12
Text Label 3500 9850 0    50   ~ 0
WB_AD13
Text Label 3500 9950 0    50   ~ 0
WB_AD14
Text Label 3500 10050 0    50   ~ 0
WB_AD15
Wire Wire Line
	3400 9350 3900 9350
Wire Wire Line
	3400 9450 3900 9450
Wire Wire Line
	3400 9550 3900 9550
Wire Wire Line
	3400 9650 3900 9650
Wire Wire Line
	3400 9750 3900 9750
Wire Wire Line
	3400 9850 3900 9850
Wire Wire Line
	3400 9950 3900 9950
Wire Wire Line
	3400 10050 3900 10050
Text Label 3500 10950 0    50   ~ 0
WB_AD8
Text Label 3500 11050 0    50   ~ 0
WB_AD9
Text Label 3500 11150 0    50   ~ 0
WB_AD10
Text Label 3500 11250 0    50   ~ 0
WB_AD11
Text Label 3500 11350 0    50   ~ 0
WB_AD12
Text Label 3500 11450 0    50   ~ 0
WB_AD13
Text Label 3500 11550 0    50   ~ 0
WB_AD14
Text Label 3500 11650 0    50   ~ 0
WB_AD15
Wire Wire Line
	3400 10950 3900 10950
Wire Wire Line
	3400 11050 3900 11050
Wire Wire Line
	3400 11150 3900 11150
Wire Wire Line
	3400 11250 3900 11250
Wire Wire Line
	3400 11350 3900 11350
Wire Wire Line
	3400 11450 3900 11450
Wire Wire Line
	3400 11550 3900 11550
Wire Wire Line
	3400 11650 3900 11650
Text Label 3500 12500 0    50   ~ 0
WB_AD8
Text Label 3500 12600 0    50   ~ 0
WB_AD9
Text Label 3500 12700 0    50   ~ 0
WB_AD10
Text Label 3500 12800 0    50   ~ 0
WB_AD11
Text Label 3500 12900 0    50   ~ 0
WB_AD12
Text Label 3500 13000 0    50   ~ 0
WB_AD13
Text Label 3500 13100 0    50   ~ 0
WB_AD14
Text Label 3500 13200 0    50   ~ 0
WB_AD15
Wire Wire Line
	3400 12500 3900 12500
Wire Wire Line
	3400 12600 3900 12600
Wire Wire Line
	3400 12700 3900 12700
Wire Wire Line
	3400 12800 3900 12800
Wire Wire Line
	3400 12900 3900 12900
Wire Wire Line
	3400 13000 3900 13000
Wire Wire Line
	3400 13100 3900 13100
Wire Wire Line
	3400 13200 3900 13200
Text Label 3500 14100 0    50   ~ 0
WB_AD8
Text Label 3500 14200 0    50   ~ 0
WB_AD9
Text Label 3500 14300 0    50   ~ 0
WB_AD10
Text Label 3500 14400 0    50   ~ 0
WB_AD11
Text Label 3500 14500 0    50   ~ 0
WB_AD12
Text Label 3500 14600 0    50   ~ 0
WB_AD13
Text Label 3500 14700 0    50   ~ 0
WB_AD14
Text Label 3500 14800 0    50   ~ 0
WB_AD15
Wire Wire Line
	3400 14100 3900 14100
Wire Wire Line
	3400 14200 3900 14200
Wire Wire Line
	3400 14300 3900 14300
Wire Wire Line
	3400 14400 3900 14400
Wire Wire Line
	3400 14500 3900 14500
Wire Wire Line
	3400 14600 3900 14600
Wire Wire Line
	3400 14700 3900 14700
Wire Wire Line
	3400 14800 3900 14800
Wire Wire Line
	8700 9450 9000 9450
Wire Wire Line
	8700 10050 9000 10050
Wire Wire Line
	8700 11050 9000 11050
Wire Wire Line
	8700 11650 9000 11650
Wire Wire Line
	8700 12650 9000 12650
Wire Wire Line
	8700 13250 9000 13250
Wire Wire Line
	8700 14250 9000 14250
Wire Wire Line
	8700 14850 9000 14850
Wire Bus Line
	6350 8900 7250 8900
Wire Bus Line
	7250 8900 9100 8900
Connection ~ 7250 8900
Wire Wire Line
	6000 14050 5650 14050
Wire Wire Line
	6000 14150 5650 14150
Wire Wire Line
	6000 14250 5650 14250
Wire Wire Line
	6000 14350 5650 14350
Wire Wire Line
	6000 15350 5950 15350
Wire Wire Line
	5500 15050 6000 15050
Wire Wire Line
	5900 15250 6000 15250
Wire Wire Line
	6000 14950 5650 14950
Wire Wire Line
	6000 14850 5650 14850
Wire Wire Line
	6000 14750 5650 14750
Wire Wire Line
	6000 14650 5650 14650
Wire Wire Line
	6000 14450 5500 14450
Wire Wire Line
	6000 12450 5650 12450
Wire Wire Line
	6000 12550 5650 12550
Wire Wire Line
	6000 12650 5650 12650
Wire Wire Line
	6000 12750 5650 12750
Wire Wire Line
	6000 13750 5450 13750
Wire Wire Line
	5500 13450 6000 13450
Wire Wire Line
	6000 13650 5400 13650
Wire Wire Line
	6000 13350 5650 13350
Wire Wire Line
	6000 13250 5650 13250
Wire Wire Line
	6000 13150 5650 13150
Wire Wire Line
	6000 13050 5650 13050
Wire Wire Line
	6000 12850 5500 12850
Wire Wire Line
	6000 10850 5650 10850
Wire Wire Line
	6000 10950 5650 10950
Wire Wire Line
	6000 11050 5650 11050
Wire Wire Line
	6000 11150 5650 11150
Wire Wire Line
	6000 12150 5450 12150
Wire Wire Line
	5500 11850 6000 11850
Wire Wire Line
	6000 12050 5400 12050
Wire Wire Line
	6000 11750 5650 11750
Wire Wire Line
	6000 11650 5650 11650
Wire Wire Line
	6000 11550 5650 11550
Wire Wire Line
	6000 11450 5650 11450
Wire Wire Line
	6000 11250 5500 11250
Wire Wire Line
	6000 9250 5650 9250
Wire Wire Line
	6000 9350 5650 9350
Wire Wire Line
	6000 9450 5650 9450
Wire Wire Line
	6000 9550 5650 9550
Wire Wire Line
	6000 10550 5450 10550
Wire Wire Line
	5500 10250 6000 10250
Wire Wire Line
	6000 10450 5400 10450
Wire Wire Line
	6000 10150 5650 10150
Wire Wire Line
	6000 10050 5650 10050
Wire Wire Line
	6000 9950 5650 9950
Wire Wire Line
	6000 9850 5650 9850
Wire Wire Line
	6000 9650 5500 9650
Entry Wire Line
	7150 14850 7250 14950
$Comp
L CPU2908CLocal:74HC153 U63
U 1 1 663EB3CA
P 6400 14750
F 0 "U63" H 6400 15675 50  0000 C CNN
F 1 "74HC153" H 6400 15584 50  0000 C CNN
F 2 "SMD_Packages:SO-16-N" H 6400 14750 50  0001 C CNN
F 3 "" H 6400 14750 50  0000 C CNN
	1    6400 14750
	1    0    0    -1  
$EndComp
Entry Wire Line
	7150 14250 7250 14350
Entry Wire Line
	7150 13250 7250 13350
$Comp
L CPU2908CLocal:74HC153 U62
U 1 1 6606894B
P 6400 13150
F 0 "U62" H 6400 14075 50  0000 C CNN
F 1 "74HC153" H 6400 13984 50  0000 C CNN
F 2 "SMD_Packages:SO-16-N" H 6400 13150 50  0001 C CNN
F 3 "" H 6400 13150 50  0000 C CNN
	1    6400 13150
	1    0    0    -1  
$EndComp
Entry Wire Line
	7150 12650 7250 12750
Entry Wire Line
	7150 11650 7250 11750
$Comp
L CPU2908CLocal:74HC153 U61
U 1 1 65CE759E
P 6400 11550
F 0 "U61" H 6400 12475 50  0000 C CNN
F 1 "74HC153" H 6400 12384 50  0000 C CNN
F 2 "SMD_Packages:SO-16-N" H 6400 11550 50  0001 C CNN
F 3 "" H 6400 11550 50  0000 C CNN
	1    6400 11550
	1    0    0    -1  
$EndComp
Entry Wire Line
	7150 11050 7250 11150
Entry Wire Line
	7150 10050 7250 10150
$Comp
L CPU2908CLocal:74HC153 U60
U 1 1 65CE594B
P 6400 9950
F 0 "U60" H 6400 10875 50  0000 C CNN
F 1 "74HC153" H 6400 10784 50  0000 C CNN
F 2 "SMD_Packages:SO-16-N" H 6400 9950 50  0001 C CNN
F 3 "" H 6400 9950 50  0000 C CNN
	1    6400 9950
	1    0    0    -1  
$EndComp
Entry Wire Line
	7150 9450 7250 9550
Wire Wire Line
	6800 14850 7150 14850
Wire Wire Line
	6800 14250 7150 14250
Wire Wire Line
	6800 13250 7150 13250
Wire Wire Line
	6800 12650 7150 12650
Wire Wire Line
	6800 11650 7150 11650
Wire Wire Line
	6800 11050 7150 11050
Wire Wire Line
	6800 10050 7150 10050
Wire Wire Line
	6800 9450 7150 9450
Wire Wire Line
	7550 9250 7900 9250
Wire Wire Line
	7550 9350 7900 9350
Wire Wire Line
	7550 9450 7900 9450
Wire Wire Line
	7550 14950 7900 14950
Wire Wire Line
	7550 14850 7900 14850
Wire Wire Line
	7550 14750 7900 14750
Wire Wire Line
	7550 14650 7900 14650
Wire Wire Line
	7550 14350 7900 14350
Wire Wire Line
	7550 14250 7900 14250
Wire Wire Line
	7550 14150 7900 14150
Wire Wire Line
	7550 14050 7900 14050
Wire Wire Line
	7550 13350 7900 13350
Wire Wire Line
	7550 13250 7900 13250
Wire Wire Line
	7550 13150 7900 13150
Wire Wire Line
	7550 13050 7900 13050
Wire Wire Line
	7550 12750 7900 12750
Wire Wire Line
	7550 12650 7900 12650
Wire Wire Line
	7550 12550 7900 12550
Wire Wire Line
	7550 12450 7900 12450
Wire Wire Line
	7550 11750 7900 11750
Wire Wire Line
	7550 11650 7900 11650
Wire Wire Line
	7550 11550 7900 11550
Wire Wire Line
	7550 11450 7900 11450
Wire Wire Line
	7550 11150 7900 11150
Wire Wire Line
	7550 11050 7900 11050
Wire Wire Line
	7550 10950 7900 10950
Wire Wire Line
	7550 10850 7900 10850
Wire Wire Line
	7550 10150 7900 10150
Wire Wire Line
	7550 10050 7900 10050
Wire Wire Line
	7550 9950 7900 9950
Wire Wire Line
	7550 9850 7900 9850
Wire Wire Line
	7550 9550 7900 9550
Connection ~ 16900 15100
Wire Wire Line
	16900 15100 16900 15300
Wire Wire Line
	15800 14550 15900 14550
Wire Wire Line
	15900 14750 15800 14750
Connection ~ 15800 14750
Wire Wire Line
	15800 14750 15800 14550
Text Label 4750 7150 0    50   ~ 0
WRO0
Text Label 4750 7250 0    50   ~ 0
WRO1
Text Label 4750 7350 0    50   ~ 0
WRO2
Text Label 4750 7450 0    50   ~ 0
WRO3
Text Label 4750 7550 0    50   ~ 0
WRO4
Text Label 4750 7650 0    50   ~ 0
WRO5
Text Label 4750 7750 0    50   ~ 0
WRO6
Text Label 4750 7850 0    50   ~ 0
WRO7
Wire Wire Line
	6450 7750 6750 7750
Text Label 6500 7150 0    50   ~ 0
WRO8
Text Label 6500 7250 0    50   ~ 0
WRO9
Text Label 6500 7350 0    50   ~ 0
WRO10
Text Label 6500 7450 0    50   ~ 0
WRO11
Text Label 6500 7550 0    50   ~ 0
WRO12
Text Label 6500 7650 0    50   ~ 0
WRO13
Text Label 6500 7750 0    50   ~ 0
WRO14
Text Label 6500 7850 0    50   ~ 0
WRO15
Text Label 8700 9450 0    50   ~ 0
WRO8
Text Label 8700 10050 0    50   ~ 0
WRO9
Text Label 8700 11050 0    50   ~ 0
WRO10
Text Label 8700 11650 0    50   ~ 0
WRO11
Text Label 8700 12650 0    50   ~ 0
WRO12
Text Label 8700 13250 0    50   ~ 0
WRO13
Text Label 8700 14250 0    50   ~ 0
WRO14
Text Label 8700 14850 0    50   ~ 0
WRO15
Text Label 6800 9450 0    50   ~ 0
WRO0
Text Label 6800 10050 0    50   ~ 0
WRO1
Text Label 6800 11050 0    50   ~ 0
WRO2
Text Label 6800 11650 0    50   ~ 0
WRO3
Text Label 6800 12650 0    50   ~ 0
WRO4
Text Label 6800 13250 0    50   ~ 0
WRO5
Text Label 6800 14250 0    50   ~ 0
WRO6
Text Label 6800 14850 0    50   ~ 0
WRO7
Text Label 14900 15500 0    50   ~ 0
AHO15
Text Label 14900 15050 0    50   ~ 0
AHO14
Text Label 14900 14600 0    50   ~ 0
AHO13
Text Label 14900 14150 0    50   ~ 0
AHO12
Text Label 13450 15500 0    50   ~ 0
AHO11
Text Label 13450 15050 0    50   ~ 0
AHO10
Text Label 13450 14600 0    50   ~ 0
AHO9
Text Label 13450 14150 0    50   ~ 0
AHO8
Text Label 12050 15500 0    50   ~ 0
AHO7
Text Label 12050 15050 0    50   ~ 0
AHO6
Text Label 12050 14600 0    50   ~ 0
AHO5
Text Label 12050 14150 0    50   ~ 0
AHO4
Text Label 13950 15600 0    50   ~ 0
WRO15
Text Label 13950 15150 0    50   ~ 0
WRO14
Text Label 13950 14700 0    50   ~ 0
WRO13
Text Label 13950 14250 0    50   ~ 0
WRO12
Text Label 12550 15600 0    50   ~ 0
WRO11
Text Label 12550 15150 0    50   ~ 0
WRO10
Text Label 12550 14700 0    50   ~ 0
WRO9
Text Label 12550 14250 0    50   ~ 0
WRO8
Text Label 11200 15600 0    50   ~ 0
WRO7
Text Label 11200 15150 0    50   ~ 0
WRO6
Text Label 11200 14700 0    50   ~ 0
WRO5
Text Label 11200 14250 0    50   ~ 0
WRO4
Text Label 9800 15600 0    50   ~ 0
WRO3
Text Label 9800 15150 0    50   ~ 0
WRO2
Text Label 9800 14700 0    50   ~ 0
WRO1
Text Label 9800 14250 0    50   ~ 0
WRO0
Text Label 10700 15500 0    50   ~ 0
AHO3
Text Label 10700 15050 0    50   ~ 0
AHO2
Text Label 10700 14600 0    50   ~ 0
AHO1
Text Label 10700 14150 0    50   ~ 0
AHO0
Text Label 18800 5950 0    50   ~ 0
CarryIn
Connection ~ 20450 13950
Connection ~ 20450 14150
$Comp
L Device:C_Small C?
U 1 1 66A267E9
P 22000 14050
AR Path="/66A267E9" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/66A267E9" Ref="C?"  Part="1" 
AR Path="/5DC31740/66A267E9" Ref="C?"  Part="1" 
AR Path="/5DC31E28/66A267E9" Ref="C128"  Part="1" 
F 0 "C128" H 22092 14096 50  0000 L CNN
F 1 "0.1uF" H 22092 14005 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 22000 14050 50  0001 C CNN
F 3 "~" H 22000 14050 50  0001 C CNN
	1    22000 14050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 66A267F1
P 22400 14050
AR Path="/66A267F1" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/66A267F1" Ref="C?"  Part="1" 
AR Path="/5DC31740/66A267F1" Ref="C?"  Part="1" 
AR Path="/5DC31E28/66A267F1" Ref="C129"  Part="1" 
F 0 "C129" H 22492 14096 50  0000 L CNN
F 1 "0.1uF" H 22492 14005 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 22400 14050 50  0001 C CNN
F 3 "~" H 22400 14050 50  0001 C CNN
	1    22400 14050
	1    0    0    -1  
$EndComp
Wire Wire Line
	22000 13950 22400 13950
Wire Wire Line
	22000 14150 22400 14150
Connection ~ 22000 13950
Connection ~ 22000 14150
Wire Wire Line
	21250 13950 21650 13950
Wire Wire Line
	21250 14150 21650 14150
$Comp
L power:+5V #PWR?
U 1 1 67A025F2
P 18000 14500
AR Path="/67A025F2" Ref="#PWR?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/67A025F2" Ref="#PWR?"  Part="1" 
AR Path="/5DC31740/67A025F2" Ref="#PWR?"  Part="1" 
AR Path="/5DC31E28/67A025F2" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 18000 14350 50  0001 C CNN
F 1 "+5V" H 18015 14673 50  0000 C CNN
F 2 "" H 18000 14500 50  0001 C CNN
F 3 "" H 18000 14500 50  0001 C CNN
	1    18000 14500
	1    0    0    -1  
$EndComp
Wire Wire Line
	18000 14500 18000 14550
Wire Wire Line
	18000 14750 18000 14850
$Comp
L power:GND #PWR?
U 1 1 67A025FA
P 18000 14850
AR Path="/67A025FA" Ref="#PWR?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/67A025FA" Ref="#PWR?"  Part="1" 
AR Path="/5DC31740/67A025FA" Ref="#PWR?"  Part="1" 
AR Path="/5DC31E28/67A025FA" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 18000 14600 50  0001 C CNN
F 1 "GND" H 18005 14677 50  0000 C CNN
F 2 "" H 18000 14850 50  0001 C CNN
F 3 "" H 18000 14850 50  0001 C CNN
	1    18000 14850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 67A02600
P 18000 14650
AR Path="/67A02600" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/67A02600" Ref="C?"  Part="1" 
AR Path="/5DC31740/67A02600" Ref="C?"  Part="1" 
AR Path="/5DC31E28/67A02600" Ref="C130"  Part="1" 
F 0 "C130" H 18092 14696 50  0000 L CNN
F 1 "0.1uF" H 18092 14605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 18000 14650 50  0001 C CNN
F 3 "~" H 18000 14650 50  0001 C CNN
	1    18000 14650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 67A02606
P 18400 14650
AR Path="/67A02606" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/67A02606" Ref="C?"  Part="1" 
AR Path="/5DC31740/67A02606" Ref="C?"  Part="1" 
AR Path="/5DC31E28/67A02606" Ref="C131"  Part="1" 
F 0 "C131" H 18492 14696 50  0000 L CNN
F 1 "0.1uF" H 18492 14605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 18400 14650 50  0001 C CNN
F 3 "~" H 18400 14650 50  0001 C CNN
	1    18400 14650
	1    0    0    -1  
$EndComp
Wire Wire Line
	18000 14550 18400 14550
Connection ~ 18000 14550
Wire Wire Line
	18000 14750 18400 14750
Connection ~ 18000 14750
Connection ~ 21650 14150
Wire Wire Line
	21650 14150 22000 14150
Connection ~ 21650 13950
Wire Wire Line
	21650 13950 22000 13950
Wire Wire Line
	18050 13300 18850 13300
Wire Wire Line
	18050 13500 18850 13500
$Comp
L CD74HCxx:CD74HC253 U5
U 1 1 5E900DDB
P 7950 1650
F 0 "U5" H 7950 2516 50  0000 C CNN
F 1 "CD74HC253" H 7950 2425 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16W_5.3x10.2mm_Pitch1.27mm" H 7950 2425 50  0001 C CNN
F 3 "" H 7950 1600 50  0001 C CNN
	1    7950 1650
	1    0    0    -1  
$EndComp
$Comp
L CD74HCxx:CD74HC253 U38
U 1 1 61A38129
P 9700 1650
F 0 "U38" H 9700 2516 50  0000 C CNN
F 1 "CD74HC253" H 9700 2425 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16W_5.3x10.2mm_Pitch1.27mm" H 9700 2425 50  0001 C CNN
F 3 "" H 9700 1600 50  0001 C CNN
	1    9700 1650
	1    0    0    -1  
$EndComp
$Comp
L CD74HCxx:CD74HC253 U40
U 1 1 61A38999
P 9700 3300
F 0 "U40" H 9700 4166 50  0000 C CNN
F 1 "CD74HC253" H 9700 4075 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16W_5.3x10.2mm_Pitch1.27mm" H 9700 4075 50  0001 C CNN
F 3 "" H 9700 3250 50  0001 C CNN
	1    9700 3300
	1    0    0    -1  
$EndComp
$Comp
L CD74HCxx:CD74HC253 U30
U 1 1 61A39280
P 7950 3300
F 0 "U30" H 7950 4166 50  0000 C CNN
F 1 "CD74HC253" H 7950 4075 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16W_5.3x10.2mm_Pitch1.27mm" H 7950 4075 50  0001 C CNN
F 3 "" H 7950 3250 50  0001 C CNN
	1    7950 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	17250 12450 18050 12450
Wire Wire Line
	17250 12650 18050 12650
Text Label 6450 4300 0    50   ~ 0
BR_SEL2
Wire Wire Line
	7150 3700 7150 4300
Wire Wire Line
	7150 4300 6450 4300
Connection ~ 7150 3700
Wire Wire Line
	7150 4300 8900 4300
Wire Wire Line
	8900 4300 8900 3700
Connection ~ 7150 4300
Connection ~ 8900 3700
Wire Wire Line
	8400 5100 9650 5100
Wire Wire Line
	8400 5200 9650 5200
Wire Wire Line
	8400 5300 9650 5300
Wire Wire Line
	8400 5400 9650 5400
Wire Wire Line
	8400 5500 9650 5500
Wire Wire Line
	8400 5600 9650 5600
Wire Wire Line
	8400 5700 9650 5700
Wire Wire Line
	8400 5800 9650 5800
Wire Wire Line
	1500 7350 1900 7350
Wire Wire Line
	20850 11600 21650 11600
Wire Wire Line
	20850 11800 21650 11800
NoConn ~ 17400 14900
NoConn ~ 17400 15100
NoConn ~ 17400 15300
NoConn ~ 17400 15500
$Comp
L CPU2908CLocal:74HC04 U12
U 3 1 62E9F95A
P 17150 14900
F 0 "U12" H 17150 15175 50  0000 C CNN
F 1 "TC74VHCT04AFT" H 17150 15084 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 17050 14900 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/toshiba/TC74VHCT04AFT.pdf" H 17050 14900 50  0001 C CNN
	3    17150 14900
	1    0    0    -1  
$EndComp
Connection ~ 4350 5200
$Sheet
S 1250 4400 800  550 
U 67011706
F0 "REG_LED" 50
F1 "REG_LED.sch" 50
F2 "RegLED[0..95]" I L 1250 4550 50 
F3 "ALU_A[0..7]" I L 1250 4700 50 
F4 "ALU_B[0..7]" I L 1250 4850 50 
$EndSheet
Text Label 2400 7350 0    50   ~ 0
nBR_SEL2
$Comp
L CPU2908CLocal:74HC86 U90
U 3 1 785E8848
P 14100 8900
F 0 "U90" H 14100 9225 50  0000 C CNN
F 1 "SN74AHC86" H 14100 9134 50  0000 C CNN
F 2 "Footprints:SN74AHC86D" H 14100 8900 50  0001 C CNN
F 3 "" H 14100 8900 50  0000 C CNN
	3    14100 8900
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC86 U90
U 4 1 785E8DA3
P 16200 14650
F 0 "U90" H 16200 14975 50  0000 C CNN
F 1 "SN74AHC86" H 16200 14884 50  0000 C CNN
F 2 "Footprints:SN74AHC86D" H 16200 14650 50  0001 C CNN
F 3 "" H 16200 14650 50  0000 C CNN
	4    16200 14650
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC139 U115
U 2 1 7E722249
P 3150 7150
F 0 "U115" H 3150 7475 50  0000 C CNN
F 1 "74HC139" H 3150 7384 50  0000 C CNN
F 2 "Footprints:MC74HC139ADR2G" H 3150 7150 50  0001 C CNN
F 3 "" H 3150 7150 50  0000 C CNN
	2    3150 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	16900 14900 16900 15100
Wire Wire Line
	10800 4600 11050 4600
Wire Wire Line
	10800 4050 11100 4050
$Comp
L CPU2908CLocal:NC7SZ57 U66
U 1 1 5EC38E3F
P 11350 4350
F 0 "U66" H 11350 4425 50  0000 C CNN
F 1 "NC7SZ57" H 11350 4334 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-363_SC-70-6_Handsoldering" H 11350 4350 50  0001 C CNN
F 3 "" H 11350 4350 50  0001 C CNN
	1    11350 4350
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:NC7SZ57 U49
U 1 1 5EC39108
P 11400 3800
F 0 "U49" H 11400 3875 50  0000 C CNN
F 1 "NC7SZ57" H 11400 3784 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-363_SC-70-6_Handsoldering" H 11400 3800 50  0001 C CNN
F 3 "" H 11400 3800 50  0001 C CNN
	1    11400 3800
	1    0    0    -1  
$EndComp
Connection ~ 10800 4600
Wire Wire Line
	10800 4600 10800 4700
Wire Wire Line
	10800 4050 10800 4150
Wire Wire Line
	10800 4150 11100 4150
Connection ~ 10800 4150
Wire Wire Line
	10800 4150 10800 4600
Wire Wire Line
	10800 4700 11050 4700
Connection ~ 10800 4700
Wire Wire Line
	10800 4700 10800 4850
$Comp
L power:+5V #PWR08
U 1 1 60B0D6D3
P 12050 3850
F 0 "#PWR08" H 12050 3700 50  0001 C CNN
F 1 "+5V" H 12065 4023 50  0000 C CNN
F 2 "" H 12050 3850 50  0001 C CNN
F 3 "" H 12050 3850 50  0001 C CNN
	1    12050 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	11700 4050 12050 4050
Wire Wire Line
	12050 4050 12050 3850
Wire Wire Line
	12050 4050 12050 4600
Wire Wire Line
	12050 4600 11650 4600
Connection ~ 12050 4050
Wire Wire Line
	15800 14750 15800 15550
Wire Wire Line
	11850 4150 11700 4150
Wire Wire Line
	11850 3550 11850 4150
Wire Wire Line
	11900 4700 11650 4700
Wire Wire Line
	11900 3600 11900 4700
Text Label 11700 4150 0    50   ~ 0
~B-Active
Text Label 11650 4700 0    50   ~ 0
~A-Active
$Comp
L 74xGxx:74AHC1G04 U?
U 1 1 63C379AC
P 2100 7350
AR Path="/5DC31740/63C379AC" Ref="U?"  Part="1" 
AR Path="/5DC31E28/63C379AC" Ref="U67"  Part="1" 
F 0 "U67" H 2075 7617 50  0000 C CNN
F 1 "74AHC1G04" H 2075 7526 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 2100 7350 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 2100 7350 50  0001 C CNN
	1    2100 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 7350 2750 7350
Wire Wire Line
	10900 3950 10900 4400
Wire Wire Line
	10900 4400 11700 4400
Wire Wire Line
	11700 4400 11700 4500
Wire Wire Line
	11700 4500 11650 4500
Wire Wire Line
	10950 4500 11050 4500
Wire Wire Line
	10600 3850 10950 3850
Wire Wire Line
	10950 3850 11750 3850
Wire Wire Line
	11750 3850 11750 3950
Wire Wire Line
	11750 3950 11700 3950
Connection ~ 10950 3850
Wire Wire Line
	10950 3850 10950 4500
Wire Wire Line
	10900 3950 11100 3950
Connection ~ 10900 3950
Wire Wire Line
	10650 2450 10950 2450
Wire Wire Line
	10650 2550 10950 2550
Wire Wire Line
	10650 2650 10950 2650
Wire Wire Line
	10650 2750 10950 2750
Wire Wire Line
	10650 2850 10950 2850
Wire Wire Line
	10650 2950 10950 2950
Wire Wire Line
	10650 3050 10950 3050
Wire Wire Line
	10650 3150 10950 3150
Wire Wire Line
	11750 2450 12050 2450
Wire Wire Line
	11750 2550 12050 2550
Wire Wire Line
	11750 2650 12050 2650
Wire Wire Line
	11750 2750 12050 2750
Wire Wire Line
	11750 2850 12050 2850
Wire Wire Line
	11750 2950 12050 2950
Wire Wire Line
	11750 3050 12050 3050
Wire Wire Line
	11750 3150 12050 3150
Wire Wire Line
	10650 950  10950 950 
Wire Wire Line
	10650 1050 10950 1050
Wire Wire Line
	10650 1150 10950 1150
Wire Wire Line
	10650 1250 10950 1250
Wire Wire Line
	10650 1350 10950 1350
Wire Wire Line
	10650 1450 10950 1450
Wire Wire Line
	10650 1550 10950 1550
Wire Wire Line
	10650 1650 10950 1650
Wire Wire Line
	11750 950  12100 950 
Wire Wire Line
	11750 1050 12100 1050
Wire Wire Line
	11750 1150 12100 1150
Wire Wire Line
	11750 1250 12100 1250
Wire Wire Line
	11750 1350 12100 1350
Wire Wire Line
	11750 1450 12100 1450
Wire Wire Line
	11750 1550 12100 1550
Wire Wire Line
	11750 1650 12100 1650
$Comp
L CPU2908CLocal:74HC139 U72
U 1 1 5F4B6A62
P 15000 9950
F 0 "U72" H 15000 10275 50  0000 C CNN
F 1 "74HC139" H 15000 10184 50  0000 C CNN
F 2 "Footprints:MC74HC139ADR2G" H 15000 9950 50  0001 C CNN
F 3 "" H 15000 9950 50  0000 C CNN
	1    15000 9950
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:74HC139 U115
U 1 1 5F930A07
P 18150 15450
F 0 "U115" H 18150 15775 50  0000 C CNN
F 1 "74HC139" H 18150 15684 50  0000 C CNN
F 2 "Footprints:MC74HC139ADR2G" H 18150 15450 50  0001 C CNN
F 3 "" H 18150 15450 50  0000 C CNN
	1    18150 15450
	1    0    0    -1  
$EndComp
Wire Wire Line
	21150 2550 21850 2550
Wire Wire Line
	21150 2650 21850 2650
Wire Wire Line
	21150 2750 21850 2750
Wire Wire Line
	21150 2850 21850 2850
Wire Wire Line
	21150 2450 21850 2450
Wire Bus Line
	14450 5650 15150 5650
Wire Bus Line
	4350 5000 4350 5200
Wire Bus Line
	1800 1700 1800 1900
Wire Bus Line
	1800 2000 1800 2300
Wire Bus Line
	15150 5650 18400 5650
Wire Bus Line
	17400 8500 18800 8500
Wire Bus Line
	15100 11750 15100 13700
Wire Bus Line
	15100 10800 15100 11750
Wire Bus Line
	12250 10800 12250 11750
Wire Bus Line
	13400 12850 13400 13750
Wire Bus Line
	14250 3150 18400 3150
Wire Bus Line
	15200 13750 15200 15800
Wire Bus Line
	13750 14150 13750 15800
Wire Bus Line
	12350 14150 12350 15800
Wire Bus Line
	11000 14100 11000 15800
Wire Bus Line
	13800 14100 13800 15850
Wire Bus Line
	12400 14100 12400 15850
Wire Bus Line
	11050 14100 11050 15850
Wire Bus Line
	9650 14100 9650 15850
Wire Bus Line
	10450 1250 10450 4400
Wire Bus Line
	8700 1250 8700 4400
Wire Bus Line
	4350 5200 4350 5800
Wire Bus Line
	13450 11150 13450 11800
Wire Bus Line
	10600 11150 10600 11800
Wire Bus Line
	12250 12500 12250 13700
Wire Bus Line
	10550 12850 10550 13750
Wire Bus Line
	18800 8500 21900 8500
Wire Bus Line
	12150 2450 12150 3300
Wire Bus Line
	18800 8500 18800 10300
Wire Bus Line
	17150 8800 17150 10300
Wire Bus Line
	15500 8800 15500 10400
Wire Bus Line
	17050 8950 17050 10350
Wire Bus Line
	18700 8950 18700 10350
Wire Bus Line
	20350 8950 20350 10350
Wire Bus Line
	22050 8950 22050 10350
Wire Bus Line
	20450 8800 20450 10300
Wire Bus Line
	20350 3850 20350 4900
Wire Bus Line
	13150 7350 15400 7350
Wire Bus Line
	13050 5850 15150 5850
Wire Bus Line
	12200 5700 14650 5700
Wire Bus Line
	8300 4400 8300 5800
Wire Bus Line
	9750 4500 9750 5950
Wire Bus Line
	19200 850  19200 3600
Wire Bus Line
	22150 650  22150 1750
Wire Bus Line
	12200 950  12200 1850
Wire Bus Line
	6350 7000 6350 8900
Wire Bus Line
	4600 7000 4600 8900
Wire Bus Line
	9100 8900 9100 15850
Wire Bus Line
	6300 4350 6300 5800
Wire Bus Line
	7250 8900 7250 15000
Wire Bus Line
	7200 700  7200 3600
Wire Bus Line
	8950 700  8950 3600
Wire Bus Line
	7850 4500 7850 8000
Wire Bus Line
	6100 4500 6100 7950
Wire Bus Line
	2900 800  2900 4350
Wire Bus Line
	700  1500 700  3950
Wire Bus Line
	10550 750  10550 4500
Wire Bus Line
	6950 700  6950 3700
Wire Bus Line
	4750 700  4750 3350
Wire Bus Line
	5150 800  5150 4350
Wire Bus Line
	7450 8950 7450 14950
Wire Bus Line
	5550 8950 5550 14950
Wire Bus Line
	3250 8950 3250 14950
Wire Bus Line
	1200 9100 1200 15950
Wire Bus Line
	3300 9150 3300 15950
Wire Bus Line
	5350 8950 5350 14950
$EndSCHEMATC
