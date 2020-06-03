EESchema Schematic File Version 4
LIBS:CPU2908C3-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 10450 5000 2    50   Output ~ 0
D[0..31]
Text HLabel 800  2050 0    50   Input ~ 0
load
Text HLabel 1900 1750 0    50   Input ~ 0
update
Text HLabel 1950 650  0    50   Input ~ 0
OpeCode[0..7]
Text Label 3700 2850 0    50   ~ 0
A[0..15]
Wire Wire Line
	3800 950  4000 950 
Wire Wire Line
	3800 1050 4000 1050
Wire Wire Line
	3800 1150 4000 1150
Wire Wire Line
	3800 1250 4000 1250
Entry Wire Line
	4000 950  4100 1050
Entry Wire Line
	4000 1050 4100 1150
Entry Wire Line
	4000 1150 4100 1250
Entry Wire Line
	4000 1250 4100 1350
Text Label 3800 950  0    50   ~ 0
A0
Text Label 3800 1050 0    50   ~ 0
A1
Text Label 3800 1150 0    50   ~ 0
A2
Text Label 3800 1250 0    50   ~ 0
A3
Wire Wire Line
	3000 950  2800 950 
Wire Wire Line
	2800 950  2800 1050
Wire Wire Line
	3000 1050 2800 1050
Connection ~ 2800 1050
Wire Wire Line
	2800 1050 2800 1150
Wire Wire Line
	3000 1150 2800 1150
Connection ~ 2800 1150
Wire Wire Line
	2800 1150 2800 1250
Wire Wire Line
	3000 1250 2800 1250
$Comp
L power:GND #PWR037
U 1 1 5FE47C27
P 2650 1300
F 0 "#PWR037" H 2650 1050 50  0001 C CNN
F 1 "GND" H 2655 1127 50  0000 C CNN
F 2 "" H 2650 1300 50  0001 C CNN
F 3 "" H 2650 1300 50  0001 C CNN
	1    2650 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60A9429F
P 2750 7050
AR Path="/60A9429F" Ref="#PWR?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/60A9429F" Ref="#PWR040"  Part="1" 
F 0 "#PWR040" H 2750 6900 50  0001 C CNN
F 1 "+5V" H 2765 7223 50  0000 C CNN
F 2 "" H 2750 7050 50  0001 C CNN
F 3 "" H 2750 7050 50  0001 C CNN
	1    2750 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 7050 2750 7100
Wire Wire Line
	2750 7300 2750 7400
$Comp
L power:GND #PWR?
U 1 1 60A942A7
P 2750 7400
AR Path="/60A942A7" Ref="#PWR?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/60A942A7" Ref="#PWR041"  Part="1" 
F 0 "#PWR041" H 2750 7150 50  0001 C CNN
F 1 "GND" H 2755 7227 50  0000 C CNN
F 2 "" H 2750 7400 50  0001 C CNN
F 3 "" H 2750 7400 50  0001 C CNN
	1    2750 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60A942AD
P 2750 7200
AR Path="/60A942AD" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/60A942AD" Ref="C28"  Part="1" 
F 0 "C28" H 2842 7246 50  0000 L CNN
F 1 "0.1uF" H 2842 7155 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2750 7200 50  0001 C CNN
F 3 "~" H 2750 7200 50  0001 C CNN
	1    2750 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60A942B9
P 3150 7200
AR Path="/60A942B9" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/60A942B9" Ref="C30"  Part="1" 
F 0 "C30" H 3242 7246 50  0000 L CNN
F 1 "0.1uF" H 3242 7155 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3150 7200 50  0001 C CNN
F 3 "~" H 3150 7200 50  0001 C CNN
	1    3150 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60A942C5
P 3500 7200
AR Path="/60A942C5" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/60A942C5" Ref="C32"  Part="1" 
F 0 "C32" H 3592 7246 50  0000 L CNN
F 1 "0.1uF" H 3592 7155 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3500 7200 50  0001 C CNN
F 3 "~" H 3500 7200 50  0001 C CNN
	1    3500 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60A942D1
P 3850 7200
AR Path="/60A942D1" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/60A942D1" Ref="C34"  Part="1" 
F 0 "C34" H 3942 7246 50  0000 L CNN
F 1 "0.1uF" H 3942 7155 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3850 7200 50  0001 C CNN
F 3 "~" H 3850 7200 50  0001 C CNN
	1    3850 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60A942D7
P 4250 7200
AR Path="/60A942D7" Ref="C?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/60A942D7" Ref="C35"  Part="1" 
F 0 "C35" H 4342 7246 50  0000 L CNN
F 1 "0.1uF" H 4342 7155 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4250 7200 50  0001 C CNN
F 3 "~" H 4250 7200 50  0001 C CNN
	1    4250 7200
	1    0    0    -1  
$EndComp
Connection ~ 2750 7100
Connection ~ 3150 7100
Connection ~ 3500 7100
Connection ~ 3850 7100
Wire Wire Line
	3850 7100 4250 7100
Connection ~ 2750 7300
Connection ~ 3150 7300
Connection ~ 3500 7300
Connection ~ 3850 7300
Wire Wire Line
	3850 7300 4250 7300
Wire Wire Line
	4350 950  4700 950 
Wire Wire Line
	4700 1050 4350 1050
Wire Wire Line
	4700 1150 4350 1150
Wire Wire Line
	4700 1250 4350 1250
Wire Wire Line
	4700 1350 4350 1350
Wire Wire Line
	4700 1450 4350 1450
Wire Wire Line
	4700 1550 4350 1550
Wire Wire Line
	4700 1650 4350 1650
Entry Wire Line
	4250 850  4350 950 
Entry Wire Line
	4250 950  4350 1050
Entry Wire Line
	4250 1050 4350 1150
Entry Wire Line
	4250 1150 4350 1250
Entry Wire Line
	4250 1250 4350 1350
Entry Wire Line
	4250 1350 4350 1450
Entry Wire Line
	4250 1450 4350 1550
Entry Wire Line
	4250 1550 4350 1650
Wire Bus Line
	4250 650  1950 650 
Wire Wire Line
	3000 1950 2900 1950
Wire Wire Line
	2900 1950 2900 2350
Wire Wire Line
	2650 1250 2650 1300
Wire Wire Line
	2650 1250 2800 1250
Connection ~ 2800 1250
Wire Wire Line
	3000 1650 2850 1650
Wire Wire Line
	2850 1650 2850 1550
Wire Wire Line
	3000 1550 2850 1550
Connection ~ 2850 1550
Wire Wire Line
	2850 1550 2850 1400
$Comp
L power:+5V #PWR039
U 1 1 6103FDDA
P 2850 1400
F 0 "#PWR039" H 2850 1250 50  0001 C CNN
F 1 "+5V" H 2865 1573 50  0000 C CNN
F 2 "" H 2850 1400 50  0001 C CNN
F 3 "" H 2850 1400 50  0001 C CNN
	1    2850 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  2050 2800 2050
Wire Wire Line
	3000 1450 2800 1450
Wire Wire Line
	2800 1450 2800 2050
Wire Wire Line
	1250 2350 2900 2350
$Comp
L CPU2908CLocal:74HC161 U37
U 1 1 80CEC2E9
P 3400 1450
F 0 "U37" H 3400 2175 50  0000 C CNN
F 1 "TC74HC161" H 3400 2084 50  0000 C CNN
F 2 "digikey-footprints:SOIC-16_W7.5mm" H 3400 1450 50  0001 C CNN
F 3 "5.3mm" H 3400 1450 50  0001 C CNN
	1    3400 1450
	1    0    0    -1  
$EndComp
Text Label 5550 1250 0    50   ~ 0
A7
Text Label 5550 1150 0    50   ~ 0
A6
Text Label 5550 1050 0    50   ~ 0
A5
Text Label 5550 950  0    50   ~ 0
A4
Entry Wire Line
	5800 1150 5900 1250
Entry Wire Line
	5800 1050 5900 1150
Entry Wire Line
	5800 950  5900 1050
Wire Wire Line
	5500 1250 5800 1250
Wire Wire Line
	5500 1150 5800 1150
Wire Wire Line
	5500 1050 5800 1050
Wire Wire Line
	5500 950  5800 950 
Text Label 5550 1650 0    50   ~ 0
A11
Text Label 5550 1550 0    50   ~ 0
A10
Text Label 5550 1450 0    50   ~ 0
A9
Text Label 5550 1350 0    50   ~ 0
A8
Entry Wire Line
	5800 1650 5900 1750
Entry Wire Line
	5800 1550 5900 1650
Entry Wire Line
	5800 1450 5900 1550
Entry Wire Line
	5800 1350 5900 1450
Wire Wire Line
	5500 1650 5800 1650
Wire Wire Line
	5500 1550 5800 1550
Wire Wire Line
	5500 1450 5800 1450
Wire Wire Line
	5500 1350 5800 1350
$Comp
L CPU2908CLocal:LED_G D?
U 1 1 7132E9E3
P 9400 1100
AR Path="/5DC31740/7132E9E3" Ref="D?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/7132E9E3" Ref="D150"  Part="1" 
F 0 "D150" H 9150 1100 50  0000 C TNN
F 1 "LED_G" H 9600 1050 50  0000 C CNN
F 2 "LEDs:LED_0402" H 9400 1100 50  0001 C CNN
F 3 "~" H 9400 1100 50  0001 C CNN
	1    9400 1100
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D?
U 1 1 7132E9E9
P 9400 1000
AR Path="/5DC31740/7132E9E9" Ref="D?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/7132E9E9" Ref="D149"  Part="1" 
F 0 "D149" H 9150 1000 50  0000 C TNN
F 1 "LED_G" H 9600 950 50  0000 C CNN
F 2 "LEDs:LED_0402" H 9400 1000 50  0001 C CNN
F 3 "~" H 9400 1000 50  0001 C CNN
	1    9400 1000
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D?
U 1 1 7132E9EF
P 9400 900
AR Path="/5DC31740/7132E9EF" Ref="D?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/7132E9EF" Ref="D148"  Part="1" 
F 0 "D148" H 9150 900 50  0000 C TNN
F 1 "LED_G" H 9600 850 50  0000 C CNN
F 2 "LEDs:LED_0402" H 9400 900 50  0001 C CNN
F 3 "~" H 9400 900 50  0001 C CNN
	1    9400 900 
	-1   0    0    1   
$EndComp
Wire Wire Line
	9550 1100 9700 1100
Wire Wire Line
	9550 1000 9700 1000
Wire Wire Line
	9550 900  9700 900 
Wire Wire Line
	9250 900  8750 900 
Wire Wire Line
	9250 1000 8750 1000
Wire Wire Line
	9250 1100 8750 1100
Entry Wire Line
	8650 800  8750 900 
Entry Wire Line
	8650 900  8750 1000
Entry Wire Line
	8650 1000 8750 1100
Entry Wire Line
	8650 1100 8750 1200
Entry Wire Line
	8650 1300 8750 1400
Entry Wire Line
	8650 1400 8750 1500
Entry Wire Line
	8650 1500 8750 1600
Entry Wire Line
	8650 1600 8750 1700
Entry Wire Line
	8650 1800 8750 1900
Entry Wire Line
	8650 1900 8750 2000
Entry Wire Line
	8650 2000 8750 2100
Entry Wire Line
	8650 2100 8750 2200
Text Label 8850 900  0    50   ~ 0
A0
Text Label 8850 1000 0    50   ~ 0
A1
Text Label 8850 1100 0    50   ~ 0
A2
Text Label 8850 1200 0    50   ~ 0
A3
Text Label 8850 1400 0    50   ~ 0
A4
Text Label 8850 1500 0    50   ~ 0
A5
Text Label 8850 1600 0    50   ~ 0
A6
Text Label 8850 1700 0    50   ~ 0
A7
Text Label 8850 1900 0    50   ~ 0
A8
Text Label 8850 2000 0    50   ~ 0
A9
Text Label 8850 2100 0    50   ~ 0
A10
Text Label 8850 2200 0    50   ~ 0
A11
Wire Wire Line
	9250 2200 8750 2200
Wire Wire Line
	9250 2100 8750 2100
Wire Wire Line
	9250 2000 8750 2000
Wire Wire Line
	9250 1900 8750 1900
Wire Wire Line
	9250 1700 8750 1700
Wire Wire Line
	9250 1600 8750 1600
Wire Wire Line
	9250 1500 8750 1500
Wire Wire Line
	9250 1400 8750 1400
Wire Wire Line
	9250 1200 8750 1200
Wire Wire Line
	9550 1200 9700 1200
Wire Wire Line
	9550 1400 9700 1400
Wire Wire Line
	9550 1500 9700 1500
Wire Wire Line
	9550 1600 9700 1600
Wire Wire Line
	9550 1700 9700 1700
Wire Wire Line
	9550 1900 9700 1900
Wire Wire Line
	9550 2000 9700 2000
Wire Wire Line
	9550 2100 9700 2100
Wire Wire Line
	9550 2200 9700 2200
$Comp
L CPU2908CLocal:LED_G D?
U 1 1 7132E9DD
P 9400 1200
AR Path="/5DC31740/7132E9DD" Ref="D?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/7132E9DD" Ref="D151"  Part="1" 
F 0 "D151" H 9150 1200 50  0000 C TNN
F 1 "LED_G" H 9600 1150 50  0000 C CNN
F 2 "LEDs:LED_0402" H 9400 1200 50  0001 C CNN
F 3 "~" H 9400 1200 50  0001 C CNN
	1    9400 1200
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D?
U 1 1 71461D31
P 9400 1600
AR Path="/5DC31740/71461D31" Ref="D?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/71461D31" Ref="D154"  Part="1" 
F 0 "D154" H 9150 1600 50  0000 C TNN
F 1 "LED_G" H 9600 1550 50  0000 C CNN
F 2 "LEDs:LED_0402" H 9400 1600 50  0001 C CNN
F 3 "~" H 9400 1600 50  0001 C CNN
	1    9400 1600
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D?
U 1 1 71461D37
P 9400 1500
AR Path="/5DC31740/71461D37" Ref="D?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/71461D37" Ref="D153"  Part="1" 
F 0 "D153" H 9150 1500 50  0000 C TNN
F 1 "LED_G" H 9600 1450 50  0000 C CNN
F 2 "LEDs:LED_0402" H 9400 1500 50  0001 C CNN
F 3 "~" H 9400 1500 50  0001 C CNN
	1    9400 1500
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D?
U 1 1 71461D3D
P 9400 1400
AR Path="/5DC31740/71461D3D" Ref="D?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/71461D3D" Ref="D152"  Part="1" 
F 0 "D152" H 9150 1400 50  0000 C TNN
F 1 "LED_G" H 9600 1350 50  0000 C CNN
F 2 "LEDs:LED_0402" H 9400 1400 50  0001 C CNN
F 3 "~" H 9400 1400 50  0001 C CNN
	1    9400 1400
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D?
U 1 1 71461D47
P 9400 1700
AR Path="/5DC31740/71461D47" Ref="D?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/71461D47" Ref="D155"  Part="1" 
F 0 "D155" H 9150 1700 50  0000 C TNN
F 1 "LED_G" H 9600 1650 50  0000 C CNN
F 2 "LEDs:LED_0402" H 9400 1700 50  0001 C CNN
F 3 "~" H 9400 1700 50  0001 C CNN
	1    9400 1700
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D?
U 1 1 71496D48
P 9400 2100
AR Path="/5DC31740/71496D48" Ref="D?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/71496D48" Ref="D158"  Part="1" 
F 0 "D158" H 9150 2100 50  0000 C TNN
F 1 "LED_G" H 9600 2050 50  0000 C CNN
F 2 "LEDs:LED_0402" H 9400 2100 50  0001 C CNN
F 3 "~" H 9400 2100 50  0001 C CNN
	1    9400 2100
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D?
U 1 1 71496D4E
P 9400 2000
AR Path="/5DC31740/71496D4E" Ref="D?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/71496D4E" Ref="D157"  Part="1" 
F 0 "D157" H 9150 2000 50  0000 C TNN
F 1 "LED_G" H 9600 1950 50  0000 C CNN
F 2 "LEDs:LED_0402" H 9400 2000 50  0001 C CNN
F 3 "~" H 9400 2000 50  0001 C CNN
	1    9400 2000
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D?
U 1 1 71496D54
P 9400 1900
AR Path="/5DC31740/71496D54" Ref="D?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/71496D54" Ref="D156"  Part="1" 
F 0 "D156" H 9150 1900 50  0000 C TNN
F 1 "LED_G" H 9600 1850 50  0000 C CNN
F 2 "LEDs:LED_0402" H 9400 1900 50  0001 C CNN
F 3 "~" H 9400 1900 50  0001 C CNN
	1    9400 1900
	-1   0    0    1   
$EndComp
$Comp
L CPU2908CLocal:LED_G D?
U 1 1 71496D5E
P 9400 2200
AR Path="/5DC31740/71496D5E" Ref="D?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/71496D5E" Ref="D159"  Part="1" 
F 0 "D159" H 9150 2200 50  0000 C TNN
F 1 "LED_G" H 9600 2150 50  0000 C CNN
F 2 "LEDs:LED_0402" H 9400 2200 50  0001 C CNN
F 3 "~" H 9400 2200 50  0001 C CNN
	1    9400 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	10000 900  10100 900 
Wire Wire Line
	10000 1000 10100 1000
Wire Wire Line
	10000 1100 10100 1100
Wire Wire Line
	10000 1200 10100 1200
Wire Wire Line
	10100 900  10100 1000
Connection ~ 10100 1000
Wire Wire Line
	10100 1000 10100 1100
Connection ~ 10100 1100
Wire Wire Line
	10100 1100 10100 1200
Connection ~ 10100 1200
Wire Wire Line
	10100 1200 10100 1400
Wire Wire Line
	10000 1400 10100 1400
Wire Wire Line
	10000 1500 10100 1500
Wire Wire Line
	10000 1600 10100 1600
Wire Wire Line
	10000 1700 10100 1700
Wire Wire Line
	10100 1400 10100 1500
Connection ~ 10100 1500
Wire Wire Line
	10100 1500 10100 1600
Connection ~ 10100 1600
Wire Wire Line
	10100 1600 10100 1700
Connection ~ 10100 1700
Wire Wire Line
	10100 1700 10100 1900
Wire Wire Line
	10000 1900 10100 1900
Wire Wire Line
	10000 2000 10100 2000
Wire Wire Line
	10000 2100 10100 2100
Wire Wire Line
	10000 2200 10100 2200
Wire Wire Line
	10100 1900 10100 2000
Connection ~ 10100 2000
Wire Wire Line
	10100 2000 10100 2100
Connection ~ 10100 2100
Wire Wire Line
	10100 2100 10100 2200
Connection ~ 10100 2200
Wire Wire Line
	10100 2200 10100 2300
$Comp
L power:GND #PWR0114
U 1 1 715C0E7D
P 10100 2300
F 0 "#PWR0114" H 10100 2050 50  0001 C CNN
F 1 "GND" H 10105 2127 50  0000 C CNN
F 2 "" H 10100 2300 50  0001 C CNN
F 3 "" H 10100 2300 50  0001 C CNN
	1    10100 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 71CE142B
P 9850 1200
AR Path="/5DC31740/71CE142B" Ref="R?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/71CE142B" Ref="R178"  Part="1" 
F 0 "R178" V 9800 1400 50  0000 C CNN
F 1 "47K" V 9800 1550 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 9780 1200 50  0001 C CNN
F 3 "~" H 9850 1200 50  0001 C CNN
	1    9850 1200
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 71CE1431
P 9850 1100
AR Path="/5DC31740/71CE1431" Ref="R?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/71CE1431" Ref="R177"  Part="1" 
F 0 "R177" V 9800 1300 50  0000 C CNN
F 1 "47K" V 9800 1450 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 9780 1100 50  0001 C CNN
F 3 "~" H 9850 1100 50  0001 C CNN
	1    9850 1100
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 71CE1437
P 9850 1000
AR Path="/5DC31740/71CE1437" Ref="R?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/71CE1437" Ref="R176"  Part="1" 
F 0 "R176" V 9800 1200 50  0000 C CNN
F 1 "47K" V 9800 1350 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 9780 1000 50  0001 C CNN
F 3 "~" H 9850 1000 50  0001 C CNN
	1    9850 1000
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 71CE143D
P 9850 900
AR Path="/5DC31740/71CE143D" Ref="R?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/71CE143D" Ref="R175"  Part="1" 
F 0 "R175" V 9800 1100 50  0000 C CNN
F 1 "47K" V 9800 1250 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 9780 900 50  0001 C CNN
F 3 "~" H 9850 900 50  0001 C CNN
	1    9850 900 
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 71D143AE
P 9850 1700
AR Path="/5DC31740/71D143AE" Ref="R?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/71D143AE" Ref="R182"  Part="1" 
F 0 "R182" V 9800 1900 50  0000 C CNN
F 1 "47K" V 9800 2050 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 9780 1700 50  0001 C CNN
F 3 "~" H 9850 1700 50  0001 C CNN
	1    9850 1700
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 71D143B4
P 9850 1600
AR Path="/5DC31740/71D143B4" Ref="R?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/71D143B4" Ref="R181"  Part="1" 
F 0 "R181" V 9800 1800 50  0000 C CNN
F 1 "47K" V 9800 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 9780 1600 50  0001 C CNN
F 3 "~" H 9850 1600 50  0001 C CNN
	1    9850 1600
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 71D143BA
P 9850 1500
AR Path="/5DC31740/71D143BA" Ref="R?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/71D143BA" Ref="R180"  Part="1" 
F 0 "R180" V 9800 1700 50  0000 C CNN
F 1 "47K" V 9800 1850 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 9780 1500 50  0001 C CNN
F 3 "~" H 9850 1500 50  0001 C CNN
	1    9850 1500
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 71D143C0
P 9850 1400
AR Path="/5DC31740/71D143C0" Ref="R?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/71D143C0" Ref="R179"  Part="1" 
F 0 "R179" V 9800 1600 50  0000 C CNN
F 1 "47K" V 9800 1750 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 9780 1400 50  0001 C CNN
F 3 "~" H 9850 1400 50  0001 C CNN
	1    9850 1400
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 71DCAB97
P 9850 2200
AR Path="/5DC31740/71DCAB97" Ref="R?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/71DCAB97" Ref="R186"  Part="1" 
F 0 "R186" V 9800 2400 50  0000 C CNN
F 1 "47K" V 9800 2550 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 9780 2200 50  0001 C CNN
F 3 "~" H 9850 2200 50  0001 C CNN
	1    9850 2200
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 71DCAB9D
P 9850 2100
AR Path="/5DC31740/71DCAB9D" Ref="R?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/71DCAB9D" Ref="R185"  Part="1" 
F 0 "R185" V 9800 2300 50  0000 C CNN
F 1 "47K" V 9800 2450 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 9780 2100 50  0001 C CNN
F 3 "~" H 9850 2100 50  0001 C CNN
	1    9850 2100
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 71DCABA3
P 9850 2000
AR Path="/5DC31740/71DCABA3" Ref="R?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/71DCABA3" Ref="R184"  Part="1" 
F 0 "R184" V 9800 2200 50  0000 C CNN
F 1 "47K" V 9800 2350 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 9780 2000 50  0001 C CNN
F 3 "~" H 9850 2000 50  0001 C CNN
	1    9850 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 71DCABA9
P 9850 1900
AR Path="/5DC31740/71DCABA9" Ref="R?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/71DCABA9" Ref="R183"  Part="1" 
F 0 "R183" V 9800 2100 50  0000 C CNN
F 1 "47K" V 9800 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 9780 1900 50  0001 C CNN
F 3 "~" H 9850 1900 50  0001 C CNN
	1    9850 1900
	0    1    1    0   
$EndComp
Text Label 2050 2350 0    50   ~ 0
CounterReset
Text Label 2400 1750 0    50   ~ 0
CountUpdate
Wire Bus Line
	10450 5000 10350 5000
$Comp
L Switch:SW_DIP_x04 SW1
U 1 1 5DBBAB9C
P 2150 3650
F 0 "SW1" H 2150 4117 50  0000 C CNN
F 1 "SW_DIP_x04" H 2150 4026 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_DIP_x4_W7.62mm_Slide" H 2150 3650 50  0001 C CNN
F 3 "~" H 2150 3650 50  0001 C CNN
	1    2150 3650
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:AT27C1024-45JU U36
U 1 1 5E2BFDE0
P 7500 3400
F 0 "U36" H 8600 3787 60  0000 C CNN
F 1 "AT27C1024-45JU" H 8600 3681 60  0000 C CNN
F 2 "Sockets:PLCC44" H 8600 3640 60  0001 C CNN
F 3 "" H 7500 3400 60  0000 C CNN
	1    7500 3400
	1    0    0    -1  
$EndComp
NoConn ~ 4400 3400
NoConn ~ 4400 3500
NoConn ~ 6600 3600
NoConn ~ 6600 5500
NoConn ~ 6600 4500
NoConn ~ 7500 3400
NoConn ~ 7500 3500
NoConn ~ 9700 3600
NoConn ~ 9700 4500
NoConn ~ 9700 5500
Wire Bus Line
	4100 2850 6900 2850
Connection ~ 4100 2850
Wire Bus Line
	7100 6050 10350 6050
Wire Bus Line
	10350 6050 10350 5000
Wire Bus Line
	4000 6050 7100 6050
Connection ~ 7100 6050
Entry Wire Line
	4000 3600 4100 3700
Entry Wire Line
	4000 3700 4100 3800
Entry Wire Line
	4000 3800 4100 3900
Entry Wire Line
	4000 3900 4100 4000
Entry Wire Line
	4000 4000 4100 4100
Entry Wire Line
	4000 4100 4100 4200
Entry Wire Line
	4000 4200 4100 4300
Entry Wire Line
	4000 4300 4100 4400
Entry Wire Line
	4000 4600 4100 4700
Entry Wire Line
	4000 4700 4100 4800
Entry Wire Line
	4000 4800 4100 4900
Entry Wire Line
	4000 4900 4100 5000
Entry Wire Line
	4000 5000 4100 5100
Entry Wire Line
	4000 5100 4100 5200
Entry Wire Line
	4000 5200 4100 5300
Entry Wire Line
	4000 5300 4100 5400
Entry Wire Line
	7100 3600 7200 3700
Entry Wire Line
	7100 3700 7200 3800
Entry Wire Line
	7100 3800 7200 3900
Entry Wire Line
	7100 3900 7200 4000
Entry Wire Line
	7100 4000 7200 4100
Entry Wire Line
	7100 4100 7200 4200
Entry Wire Line
	7100 4200 7200 4300
Entry Wire Line
	7100 4600 7200 4700
Entry Wire Line
	7100 4700 7200 4800
Entry Wire Line
	7100 4800 7200 4900
Entry Wire Line
	7100 4900 7200 5000
Entry Wire Line
	7100 5000 7200 5100
Entry Wire Line
	7100 5100 7200 5200
Entry Wire Line
	7100 5200 7200 5300
Entry Wire Line
	9950 3700 10050 3800
Entry Wire Line
	9950 3800 10050 3900
Entry Wire Line
	9950 3900 10050 4000
Entry Wire Line
	9950 4000 10050 4100
Entry Wire Line
	9950 4100 10050 4200
Entry Wire Line
	9950 4200 10050 4300
Entry Wire Line
	9950 4300 10050 4400
Entry Wire Line
	9950 4600 10050 4700
Entry Wire Line
	9950 4700 10050 4800
Entry Wire Line
	9950 4800 10050 4900
Entry Wire Line
	9950 4900 10050 5000
Entry Wire Line
	9950 5000 10050 5100
Entry Wire Line
	9950 5100 10050 5200
Entry Wire Line
	9950 5200 10050 5300
Entry Wire Line
	9950 5300 10050 5400
Entry Wire Line
	9950 5400 10050 5500
Wire Wire Line
	6700 3400 6600 3400
Wire Wire Line
	6600 3500 6700 3500
Wire Wire Line
	6700 2700 6700 3400
Connection ~ 6700 3400
Wire Wire Line
	6700 3400 6700 3500
$Comp
L power:+5V #PWR038
U 1 1 5E44C2F0
P 6700 2700
F 0 "#PWR038" H 6700 2550 50  0001 C CNN
F 1 "+5V" H 6715 2873 50  0000 C CNN
F 2 "" H 6700 2700 50  0001 C CNN
F 3 "" H 6700 2700 50  0001 C CNN
	1    6700 2700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR042
U 1 1 5E44CD55
P 9800 2750
F 0 "#PWR042" H 9800 2600 50  0001 C CNN
F 1 "+5V" H 9815 2923 50  0000 C CNN
F 2 "" H 9800 2750 50  0001 C CNN
F 3 "" H 9800 2750 50  0001 C CNN
	1    9800 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 2750 9800 3400
Wire Wire Line
	9800 3400 9700 3400
Wire Wire Line
	9800 3400 9800 3500
Wire Wire Line
	9800 3500 9700 3500
Connection ~ 9800 3400
$Comp
L power:GND #PWR036
U 1 1 5E4615FF
P 4050 6250
F 0 "#PWR036" H 4050 6000 50  0001 C CNN
F 1 "GND" H 4055 6077 50  0000 C CNN
F 2 "" H 4050 6250 50  0001 C CNN
F 3 "" H 4050 6250 50  0001 C CNN
	1    4050 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 3700 9950 3700
Wire Wire Line
	9700 3800 9950 3800
Wire Wire Line
	9700 3900 9950 3900
Wire Wire Line
	9700 4000 9950 4000
Wire Wire Line
	9700 4100 9950 4100
Wire Wire Line
	9700 4200 9950 4200
Wire Wire Line
	9700 4300 9950 4300
Wire Wire Line
	9700 4600 9950 4600
Wire Wire Line
	9700 4700 9950 4700
Wire Wire Line
	9700 4800 9950 4800
Wire Wire Line
	9700 4900 9950 4900
Wire Wire Line
	9700 5000 9950 5000
Wire Wire Line
	9700 5100 9950 5100
Wire Wire Line
	9700 5200 9950 5200
Wire Wire Line
	9700 5300 9950 5300
Wire Wire Line
	9700 5400 9950 5400
Wire Wire Line
	7200 3700 7500 3700
Wire Wire Line
	7200 3800 7500 3800
Wire Wire Line
	7200 3900 7500 3900
Wire Wire Line
	7200 4000 7500 4000
Wire Wire Line
	7200 4100 7500 4100
Wire Wire Line
	7200 4200 7500 4200
Wire Wire Line
	7200 4300 7500 4300
Wire Wire Line
	7200 4400 7500 4400
Wire Wire Line
	7200 4700 7500 4700
Wire Wire Line
	7200 4800 7500 4800
Wire Wire Line
	7200 4900 7500 4900
Wire Wire Line
	7200 5000 7500 5000
Wire Wire Line
	7200 5100 7500 5100
Wire Wire Line
	7200 5200 7500 5200
Wire Wire Line
	7200 5300 7500 5300
Wire Wire Line
	7200 5400 7500 5400
Entry Wire Line
	7100 5300 7200 5400
Entry Wire Line
	7100 4300 7200 4400
Text Label 9700 3700 0    50   ~ 0
A15
Text Label 9700 3800 0    50   ~ 0
A14
Text Label 9700 3900 0    50   ~ 0
A13
Text Label 9700 4000 0    50   ~ 0
A12
Text Label 9700 4100 0    50   ~ 0
A11
Text Label 9700 4200 0    50   ~ 0
A10
Text Label 9700 4300 0    50   ~ 0
A9
Text Label 9700 5400 0    50   ~ 0
A0
Text Label 9700 4600 0    50   ~ 0
A8
Text Label 9700 4700 0    50   ~ 0
A7
Text Label 9700 4800 0    50   ~ 0
A6
Text Label 9700 4900 0    50   ~ 0
A5
Text Label 9700 5000 0    50   ~ 0
A4
Text Label 9700 5100 0    50   ~ 0
A3
Text Label 9700 5200 0    50   ~ 0
A2
Text Label 9700 5300 0    50   ~ 0
A1
Text Label 6650 3700 0    50   ~ 0
A15
Text Label 6650 3800 0    50   ~ 0
A14
Text Label 6650 3900 0    50   ~ 0
A13
Text Label 6650 4000 0    50   ~ 0
A12
Text Label 6650 4100 0    50   ~ 0
A11
Text Label 6650 4200 0    50   ~ 0
A10
Text Label 6650 4300 0    50   ~ 0
A9
Text Label 6650 5400 0    50   ~ 0
A0
Text Label 6650 4600 0    50   ~ 0
A8
Text Label 6650 4700 0    50   ~ 0
A7
Text Label 6650 4800 0    50   ~ 0
A6
Text Label 6650 4900 0    50   ~ 0
A5
Text Label 6650 5000 0    50   ~ 0
A4
Text Label 6650 5100 0    50   ~ 0
A3
Text Label 6650 5200 0    50   ~ 0
A2
Text Label 6650 5300 0    50   ~ 0
A1
Wire Wire Line
	6600 3700 6800 3700
Wire Wire Line
	6600 3800 6800 3800
Wire Wire Line
	6600 3900 6800 3900
Wire Wire Line
	6600 4000 6800 4000
Wire Wire Line
	6600 4100 6800 4100
Wire Wire Line
	6600 4200 6800 4200
Wire Wire Line
	6600 4300 6800 4300
Wire Wire Line
	6600 4600 6800 4600
Wire Wire Line
	6600 4700 6800 4700
Wire Wire Line
	6600 4800 6800 4800
Wire Wire Line
	6600 4900 6800 4900
Wire Wire Line
	6600 5000 6800 5000
Wire Wire Line
	6600 5100 6800 5100
Wire Wire Line
	6600 5200 6800 5200
Wire Wire Line
	6600 5300 6800 5300
Wire Wire Line
	6600 5400 6800 5400
Entry Wire Line
	6800 3700 6900 3800
Entry Wire Line
	6800 3800 6900 3900
Entry Wire Line
	6800 3900 6900 4000
Entry Wire Line
	6800 4000 6900 4100
Entry Wire Line
	6800 4100 6900 4200
Entry Wire Line
	6800 4200 6900 4300
Entry Wire Line
	6800 4300 6900 4400
Entry Wire Line
	6800 4600 6900 4700
Entry Wire Line
	6800 4700 6900 4800
Entry Wire Line
	6800 4800 6900 4900
Entry Wire Line
	6800 4900 6900 5000
Entry Wire Line
	6800 5000 6900 5100
Entry Wire Line
	6800 5100 6900 5200
Entry Wire Line
	6800 5200 6900 5300
Entry Wire Line
	6800 5300 6900 5400
Entry Wire Line
	6800 5400 6900 5500
Connection ~ 6900 2850
Wire Bus Line
	6900 2850 10050 2850
Wire Wire Line
	4050 6150 4050 6250
Text Label 4300 5400 2    50   ~ 0
D0
Text Label 4300 5300 2    50   ~ 0
D1
Text Label 4300 5200 2    50   ~ 0
D2
Text Label 4300 5100 2    50   ~ 0
D3
Text Label 4300 5000 2    50   ~ 0
D4
Text Label 4300 4900 2    50   ~ 0
D5
Text Label 4300 4800 2    50   ~ 0
D6
Text Label 4300 4700 2    50   ~ 0
D7
Text Label 4300 4400 2    50   ~ 0
D8
Text Label 4300 4300 2    50   ~ 0
D9
Text Label 4300 4200 2    50   ~ 0
D10
Text Label 4300 4100 2    50   ~ 0
D11
Text Label 4300 4000 2    50   ~ 0
D12
Text Label 4300 3900 2    50   ~ 0
D13
Text Label 4300 3800 2    50   ~ 0
D14
Text Label 4300 3700 2    50   ~ 0
D15
Wire Wire Line
	4100 3700 4400 3700
Wire Wire Line
	4100 3800 4400 3800
Wire Wire Line
	4100 3900 4400 3900
Wire Wire Line
	4100 4000 4400 4000
Wire Wire Line
	4100 4100 4400 4100
Wire Wire Line
	4100 4200 4400 4200
Wire Wire Line
	4100 4300 4400 4300
Wire Wire Line
	4100 4400 4400 4400
Wire Wire Line
	4100 4700 4400 4700
Wire Wire Line
	4100 4800 4400 4800
Wire Wire Line
	4100 4900 4400 4900
Wire Wire Line
	4100 5000 4400 5000
Wire Wire Line
	4100 5100 4400 5100
Wire Wire Line
	4100 5200 4400 5200
Wire Wire Line
	4100 5300 4400 5300
Wire Wire Line
	4100 5400 4400 5400
Wire Wire Line
	7450 3600 7450 4500
Wire Wire Line
	7450 3600 7500 3600
Wire Wire Line
	4050 6150 4350 6150
Wire Wire Line
	7500 4500 7450 4500
Connection ~ 7450 4500
Wire Wire Line
	7450 4500 7450 5500
Wire Wire Line
	7500 5500 7450 5500
Connection ~ 7450 5500
Wire Wire Line
	7450 5500 7450 6150
Wire Wire Line
	4400 3600 4350 3600
Wire Wire Line
	4350 3600 4350 4500
Connection ~ 4350 6150
Wire Wire Line
	4350 6150 6750 6150
Wire Wire Line
	4400 5500 4350 5500
Connection ~ 4350 5500
Wire Wire Line
	4350 5500 4350 6150
Wire Wire Line
	4400 4500 4350 4500
Connection ~ 4350 4500
Wire Wire Line
	4350 4500 4350 5500
Text Label 3350 3450 0    50   ~ 0
A12
Text Label 3350 3550 0    50   ~ 0
A13
Text Label 3350 3650 0    50   ~ 0
A14
Text Label 3350 3750 0    50   ~ 0
A15
Wire Bus Line
	3650 2850 4100 2850
Entry Wire Line
	3550 3450 3650 3550
Entry Wire Line
	3550 3550 3650 3650
Entry Wire Line
	3550 3650 3650 3750
Entry Wire Line
	3550 3750 3650 3850
Wire Wire Line
	3250 3450 3250 3350
$Comp
L CPU2908CLocal:R R150
U 1 1 5E7830BB
P 3250 3200
F 0 "R150" H 3320 3246 50  0000 L CNN
F 1 "10K" H 3320 3155 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" V 3180 3200 50  0001 C CNN
F 3 "~" H 3250 3200 50  0001 C CNN
	1    3250 3200
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:R R149
U 1 1 5E7833EC
P 3000 3200
F 0 "R149" H 3070 3246 50  0000 L CNN
F 1 "10K" H 3070 3155 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" V 2930 3200 50  0001 C CNN
F 3 "~" H 3000 3200 50  0001 C CNN
	1    3000 3200
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:R R148
U 1 1 5E78394C
P 2750 3200
F 0 "R148" H 2820 3246 50  0000 L CNN
F 1 "10K" H 2820 3155 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" V 2680 3200 50  0001 C CNN
F 3 "~" H 2750 3200 50  0001 C CNN
	1    2750 3200
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:R R129
U 1 1 5E783AAF
P 2500 3200
F 0 "R129" H 2570 3246 50  0000 L CNN
F 1 "10K" H 2570 3155 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" V 2430 3200 50  0001 C CNN
F 3 "~" H 2500 3200 50  0001 C CNN
	1    2500 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3550 3000 3350
Wire Wire Line
	2750 3350 2750 3650
Wire Wire Line
	2500 3750 2500 3350
Wire Wire Line
	2450 3450 3250 3450
Connection ~ 3250 3450
Wire Wire Line
	3250 3450 3550 3450
Wire Wire Line
	2450 3550 3000 3550
Connection ~ 3000 3550
Wire Wire Line
	3000 3550 3550 3550
Wire Wire Line
	2450 3650 2750 3650
Connection ~ 2750 3650
Wire Wire Line
	2750 3650 3550 3650
Wire Wire Line
	2450 3750 2500 3750
Connection ~ 2500 3750
Wire Wire Line
	2500 3750 3550 3750
Wire Wire Line
	1850 3450 1750 3450
Wire Wire Line
	1850 3550 1750 3550
Wire Wire Line
	1850 3650 1750 3650
Wire Wire Line
	1850 3750 1750 3750
Wire Wire Line
	1750 3450 1750 3550
Connection ~ 1750 3550
Wire Wire Line
	1750 3550 1750 3650
Connection ~ 1750 3650
Wire Wire Line
	1750 3650 1750 3750
Connection ~ 1750 3750
$Comp
L power:GND #PWR034
U 1 1 5E8B8AE7
P 1750 3950
F 0 "#PWR034" H 1750 3700 50  0001 C CNN
F 1 "GND" H 1755 3777 50  0000 C CNN
F 2 "" H 1750 3950 50  0001 C CNN
F 3 "" H 1750 3950 50  0001 C CNN
	1    1750 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 3750 1750 3950
Wire Wire Line
	2500 2950 2500 3050
Wire Wire Line
	2500 2950 2750 2950
Wire Wire Line
	2750 2950 2750 3050
Wire Wire Line
	2750 2950 3000 2950
Wire Wire Line
	3000 2950 3000 3050
Connection ~ 2750 2950
Wire Wire Line
	3000 2950 3250 2950
Wire Wire Line
	3250 2950 3250 3050
Connection ~ 3000 2950
Wire Wire Line
	3250 2950 3250 2800
Connection ~ 3250 2950
$Comp
L power:+5V #PWR035
U 1 1 5E94C1EA
P 3250 2800
F 0 "#PWR035" H 3250 2650 50  0001 C CNN
F 1 "+5V" H 3265 2973 50  0000 C CNN
F 2 "" H 3250 2800 50  0001 C CNN
F 3 "" H 3250 2800 50  0001 C CNN
	1    3250 2800
	1    0    0    -1  
$EndComp
Text Label 7400 5400 2    50   ~ 0
D16
Text Label 7400 5300 2    50   ~ 0
D17
Text Label 7400 5200 2    50   ~ 0
D18
Text Label 7400 5100 2    50   ~ 0
D19
Text Label 7400 5000 2    50   ~ 0
D20
Text Label 7400 4900 2    50   ~ 0
D21
Text Label 7400 4800 2    50   ~ 0
D22
Text Label 7400 4700 2    50   ~ 0
D23
Text Label 7400 4400 2    50   ~ 0
D24
Text Label 7400 4300 2    50   ~ 0
D25
Text Label 7400 4200 2    50   ~ 0
D26
Text Label 7400 4100 2    50   ~ 0
D27
Text Label 7400 4000 2    50   ~ 0
D28
Text Label 7400 3900 2    50   ~ 0
D29
Text Label 7400 3800 2    50   ~ 0
D30
Text Label 7400 3700 2    50   ~ 0
D31
Wire Wire Line
	9700 4400 9850 4400
Wire Wire Line
	9850 4400 9850 6150
Wire Wire Line
	9850 6150 7450 6150
Connection ~ 7450 6150
Wire Wire Line
	6600 4400 6750 4400
Wire Wire Line
	6750 4400 6750 6150
Connection ~ 6750 6150
Wire Wire Line
	6750 6150 7450 6150
Wire Wire Line
	1250 2350 1250 2250
$Comp
L power:+5V #PWR0127
U 1 1 5FC9EE22
P 1250 2250
F 0 "#PWR0127" H 1250 2100 50  0001 C CNN
F 1 "+5V" H 1265 2423 50  0000 C CNN
F 2 "" H 1250 2250 50  0001 C CNN
F 3 "" H 1250 2250 50  0001 C CNN
	1    1250 2250
	1    0    0    -1  
$EndComp
$Comp
L CPU2908CLocal:AT27C1024-45JU U124
U 1 1 5DBB9235
P 4400 3400
F 0 "U124" H 5500 3787 60  0000 C CNN
F 1 "AT27C1024-45JU" H 5500 3681 60  0000 C CNN
F 2 "Sockets:PLCC44" H 5500 3640 60  0001 C CNN
F 3 "" H 4400 3400 60  0000 C CNN
	1    4400 3400
	1    0    0    -1  
$EndComp
NoConn ~ 7500 4600
Wire Wire Line
	2750 7100 3150 7100
Wire Wire Line
	2750 7300 3150 7300
Wire Wire Line
	3150 7100 3500 7100
Wire Wire Line
	3150 7300 3500 7300
Wire Wire Line
	3500 7100 3850 7100
Wire Wire Line
	3500 7300 3850 7300
NoConn ~ 4400 4600
Entry Wire Line
	5800 1250 5900 1350
Wire Bus Line
	5900 2250 8650 2250
NoConn ~ 3800 1450
Wire Wire Line
	1900 1750 3000 1750
Wire Wire Line
	2800 2050 4550 2050
Wire Wire Line
	4550 1850 4700 1850
Connection ~ 2800 2050
$Comp
L power:GND #PWR043
U 1 1 5EBD0F7F
P 4600 2200
F 0 "#PWR043" H 4600 1950 50  0001 C CNN
F 1 "GND" H 4605 2027 50  0000 C CNN
F 2 "" H 4600 2200 50  0001 C CNN
F 3 "" H 4600 2200 50  0001 C CNN
	1    4600 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 1950 4600 2200
Wire Wire Line
	4700 1950 4600 1950
Wire Wire Line
	4550 2050 4550 1850
$Comp
L CPU2908CLocal:TC74HCT574 U?
U 1 1 5EAA5846
P 5100 1450
AR Path="/5DC31740/5EAA5846" Ref="U?"  Part="1" 
AR Path="/5DC31740/5FC8D90E/5EAA5846" Ref="U39"  Part="1" 
F 0 "U39" H 5100 2175 50  0000 C CNN
F 1 "SN74HCT574" H 5100 2084 50  0000 C CNN
F 2 "Footprints:SN74HCT574NSR" H 5100 1450 50  0001 C CNN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=18123&prodName=TC74VHC574F" H 5100 1450 50  0001 C CNN
	1    5100 1450
	1    0    0    -1  
$EndComp
Wire Bus Line
	3650 2850 3650 3850
Wire Bus Line
	4100 1000 4100 2850
Wire Bus Line
	5900 950  5900 2250
Wire Bus Line
	4250 650  4250 1650
Wire Bus Line
	8650 750  8650 2250
Wire Bus Line
	6900 2850 6900 5500
Wire Bus Line
	10050 2850 10050 5500
Wire Bus Line
	7100 3600 7100 6050
Wire Bus Line
	4000 3550 4000 6050
Text Label 4350 950  0    50   ~ 0
OpeCode0
Text Label 4350 1050 0    50   ~ 0
OpeCode1
Text Label 4350 1150 0    50   ~ 0
OpeCode2
Text Label 4350 1250 0    50   ~ 0
OpeCode3
Text Label 4350 1350 0    50   ~ 0
OpeCode4
Text Label 4350 1450 0    50   ~ 0
OpeCode5
Text Label 4350 1550 0    50   ~ 0
OpeCode6
Text Label 4350 1650 0    50   ~ 0
OpeCode7
$EndSCHEMATC
