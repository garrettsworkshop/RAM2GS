EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 2
Title "GW4201D (RAM2GS II) - EPM240 / 5M240Z / AG256"
Date "2021-04-30"
Rev "2.0"
Comp "Garrett's Workshop"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_02x22_Counter_Clockwise J1
U 1 1 5C2DE7F9
P 1300 1800
F 0 "J1" H 1350 2950 50  0000 C BNN
F 1 "Memory Expansion" H 1350 2900 50  0000 C CNN
F 2 "stdpads:AppleIIgsMemoryExpansion_Edge" H 1300 1800 50  0001 C CNN
F 3 "" H 1300 1800 50  0001 C CNN
F 4 "DNP - edge connector" H 1300 1800 50  0001 C CNN "Notes"
	1    1300 1800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5C2DE899
P 1500 800
F 0 "#PWR0101" H 1500 550 50  0001 C CNN
F 1 "GND" V 1500 650 50  0000 R CNN
F 2 "" H 1500 800 50  0001 C CNN
F 3 "" H 1500 800 50  0001 C CNN
	1    1500 800 
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5C2DE8D0
P 1000 800
F 0 "#PWR0102" H 1000 550 50  0001 C CNN
F 1 "GND" V 1000 650 50  0000 R CNN
F 2 "" H 1000 800 50  0001 C CNN
F 3 "" H 1000 800 50  0001 C CNN
	1    1000 800 
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5C2DE8DF
P 1000 2900
F 0 "#PWR0103" H 1000 2650 50  0001 C CNN
F 1 "GND" V 1005 2772 50  0000 R CNN
F 2 "" H 1000 2900 50  0001 C CNN
F 3 "" H 1000 2900 50  0001 C CNN
	1    1000 2900
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5C2DE8F7
P 1500 2900
F 0 "#PWR0104" H 1500 2650 50  0001 C CNN
F 1 "GND" V 1505 2772 50  0000 R CNN
F 2 "" H 1500 2900 50  0001 C CNN
F 3 "" H 1500 2900 50  0001 C CNN
	1    1500 2900
	0    -1   1    0   
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 5C2DE94B
P 1500 900
F 0 "#PWR0105" H 1500 750 50  0001 C CNN
F 1 "+5V" V 1500 1050 50  0000 L CNN
F 2 "" H 1500 900 50  0001 C CNN
F 3 "" H 1500 900 50  0001 C CNN
	1    1500 900 
	0    1    -1   0   
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 5C2DE996
P 1000 900
F 0 "#PWR0106" H 1000 750 50  0001 C CNN
F 1 "+5V" V 1000 1050 50  0000 L CNN
F 2 "" H 1000 900 50  0001 C CNN
F 3 "" H 1000 900 50  0001 C CNN
	1    1000 900 
	0    -1   1    0   
$EndComp
$Comp
L power:+5V #PWR0107
U 1 1 5C2DE9CB
P 1500 2800
F 0 "#PWR0107" H 1500 2650 50  0001 C CNN
F 1 "+5V" V 1500 2950 50  0000 L CNN
F 2 "" H 1500 2800 50  0001 C CNN
F 3 "" H 1500 2800 50  0001 C CNN
	1    1500 2800
	0    1    -1   0   
$EndComp
$Comp
L power:+5V #PWR0108
U 1 1 5C2DE9E7
P 1000 2800
F 0 "#PWR0108" H 1000 2650 50  0001 C CNN
F 1 "+5V" V 1000 2950 50  0000 L CNN
F 2 "" H 1000 2800 50  0001 C CNN
F 3 "" H 1000 2800 50  0001 C CNN
	1    1000 2800
	0    -1   1    0   
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 5C2DEA25
P 1500 1800
F 0 "#PWR0109" H 1500 1650 50  0001 C CNN
F 1 "+5V" V 1500 1950 50  0000 L CNN
F 2 "" H 1500 1800 50  0001 C CNN
F 3 "" H 1500 1800 50  0001 C CNN
	1    1500 1800
	0    1    -1   0   
$EndComp
Text Label 1000 2700 2    50   ~ 0
FD0
Text Label 1000 1600 2    50   ~ 0
FD1
Text Label 1500 1200 0    50   ~ 0
FD2
Text Label 1000 1900 2    50   ~ 0
FD3
Text Label 1000 2300 2    50   ~ 0
FD4
Text Label 1000 2200 2    50   ~ 0
FD5
Text Label 1000 2400 2    50   ~ 0
FD6
Text Label 1500 2300 0    50   ~ 0
FD7
Text Label 1500 2700 0    50   ~ 0
~CROMSEL~
Text Label 1000 2600 2    50   ~ 0
~CSEL~
Text Label 1500 2500 0    50   ~ 0
CROW0
Text Label 1500 2600 0    50   ~ 0
CROW1
Text Label 1000 1700 2    50   ~ 0
~CRAS~
Text Label 1500 2400 0    50   ~ 0
~CCAS~
Text Label 1500 1900 0    50   ~ 0
~FWE~
Text Label 1000 2100 2    50   ~ 0
PH2
Text Label 1500 2000 0    50   ~ 0
FRA0
Text Label 1500 2200 0    50   ~ 0
FRA1
Text Label 1500 2100 0    50   ~ 0
FRA2
Text Label 1500 1400 0    50   ~ 0
FRA3
Text Label 1500 1500 0    50   ~ 0
FRA4
Text Label 1500 1600 0    50   ~ 0
FRA5
Text Label 1500 1300 0    50   ~ 0
FRA6
Text Label 1500 1700 0    50   ~ 0
FRA7
Text Label 1500 1100 0    50   ~ 0
FRA8
Text Label 1500 1000 0    50   ~ 0
FRA9
Text Label 1000 1500 2    50   ~ 0
FA10
Text Label 1000 1400 2    50   ~ 0
FA11
Text Label 1000 1300 2    50   ~ 0
FA12
Text Label 1000 1200 2    50   ~ 0
FA13
Text Label 1000 1100 2    50   ~ 0
FA14
Text Label 1000 1000 2    50   ~ 0
FA15
Text Label 1000 2000 2    50   ~ 0
ABORT
Text Label 1000 2500 2    50   ~ 0
MSIZE
$Comp
L power:GND #PWR0110
U 1 1 5C2DEB35
P 1000 1800
F 0 "#PWR0110" H 1000 1550 50  0001 C CNN
F 1 "GND" V 1005 1672 50  0000 R CNN
F 2 "" H 1000 1800 50  0001 C CNN
F 3 "" H 1000 1800 50  0001 C CNN
	1    1000 1800
	0    1    -1   0   
$EndComp
NoConn ~ 100  1800
$Comp
L Mechanical:MountingHole FID1
U 1 1 5CC9D7A4
P 650 3150
F 0 "FID1" H 750 3196 50  0000 L CNN
F 1 "Fiducial" H 750 3105 50  0000 L CNN
F 2 "stdpads:Fiducial" H 650 3150 50  0001 C CNN
F 3 "" H 650 3150 50  0001 C CNN
F 4 "DNP - SMT vision system fiducial" H 650 3150 50  0001 C CNN "Notes"
	1    650  3150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole FID2
U 1 1 5CC9DCA8
P 1150 3150
F 0 "FID2" H 1250 3196 50  0000 L CNN
F 1 "Fiducial" H 1250 3105 50  0000 L CNN
F 2 "stdpads:Fiducial" H 1150 3150 50  0001 C CNN
F 3 "" H 1150 3150 50  0001 C CNN
F 4 "DNP - SMT vision system fiducial" H 1150 3150 50  0001 C CNN "Notes"
	1    1150 3150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole FID3
U 1 1 5CC9DDC7
P 1650 3150
F 0 "FID3" H 1750 3196 50  0000 L CNN
F 1 "Fiducial" H 1750 3105 50  0000 L CNN
F 2 "stdpads:Fiducial" H 1650 3150 50  0001 C CNN
F 3 "" H 1650 3150 50  0001 C CNN
F 4 "DNP - SMT vision system fiducial" H 1650 3150 50  0001 C CNN "Notes"
	1    1650 3150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole FID4
U 1 1 5CC9DEF2
P 2150 3150
F 0 "FID4" H 2250 3196 50  0000 L CNN
F 1 "Fiducial" H 2250 3105 50  0000 L CNN
F 2 "stdpads:Fiducial" H 2150 3150 50  0001 C CNN
F 3 "" H 2150 3150 50  0001 C CNN
F 4 "DNP - SMT vision system fiducial" H 2150 3150 50  0001 C CNN "Notes"
	1    2150 3150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5CC9E186
P 650 3450
F 0 "H1" H 750 3501 50  0000 L CNN
F 1 " " H 750 3410 50  0000 L CNN
F 2 "stdpads:PasteHole_1.152mm_NPTH" H 650 3450 50  0001 C CNN
F 3 "" H 650 3450 50  0001 C CNN
F 4 "DNP - mounting hole for solder paste printing" H 650 3450 50  0001 C CNN "Notes"
	1    650  3450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5CC9E38C
P 1150 3450
F 0 "H2" H 1250 3501 50  0000 L CNN
F 1 " " H 1250 3410 50  0000 L CNN
F 2 "stdpads:PasteHole_1.152mm_NPTH" H 1150 3450 50  0001 C CNN
F 3 "" H 1150 3450 50  0001 C CNN
F 4 "DNP - mounting hole for solder paste printing" H 1150 3450 50  0001 C CNN "Notes"
	1    1150 3450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5CC9E7AD
P 1650 3450
F 0 "H3" H 1750 3501 50  0000 L CNN
F 1 " " H 1750 3410 50  0000 L CNN
F 2 "stdpads:PasteHole_1.1mm_PTH" H 1650 3450 50  0001 C CNN
F 3 "" H 1650 3450 50  0001 C CNN
F 4 "DNP - mounting hole" H 1650 3450 50  0001 C CNN "Notes"
	1    1650 3450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5CC9E939
P 2150 3450
F 0 "H4" H 2250 3501 50  0000 L CNN
F 1 " " H 2250 3410 50  0000 L CNN
F 2 "stdpads:PasteHole_1.152mm_NPTH" H 2150 3450 50  0001 C CNN
F 3 "" H 2150 3450 50  0001 C CNN
F 4 "DNP - mounting hole for solder paste printing" H 2150 3450 50  0001 C CNN "Notes"
	1    2150 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  3550 1150 3550
Connection ~ 2150 3550
Connection ~ 1150 3550
Wire Wire Line
	1150 3550 1650 3550
Connection ~ 1650 3550
Wire Wire Line
	1650 3550 2150 3550
$Comp
L Regulator_Linear:LD1117S33TR_SOT223 U8
U 1 1 5E983A08
P 1550 3850
F 0 "U8" H 1550 3900 50  0000 C TNN
F 1 "AZ1117CH-3.3TRG1" H 1550 3950 50  0000 C BNN
F 2 "stdpads:SOT-223" H 1550 4050 50  0001 C CNN
F 3 "" H 1650 3600 50  0001 C CNN
F 4 "C92102" H 1550 3850 50  0001 C CNN "LCSC Part"
F 5 "Diodes AZ1117CH-3.3TRG1, Diodes AZ1117EH-3.3TRG1" H 1550 3850 50  0001 C CNN "Mfg. Part Numbers"
F 6 "Most 1117-type 3.3V regulator in SOT-223 package is acceptable." H 1550 3850 50  0001 C CNN "Notes"
	1    1550 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0132
U 1 1 5E984DDB
P 1550 4150
F 0 "#PWR0132" H 1550 3900 50  0001 C CNN
F 1 "GND" H 1550 4000 50  0000 C CNN
F 2 "" H 1550 4150 50  0001 C CNN
F 3 "" H 1550 4150 50  0001 C CNN
	1    1550 4150
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0133
U 1 1 5E9850F8
P 2150 3850
F 0 "#PWR0133" H 2150 3700 50  0001 C CNN
F 1 "+3V3" H 2150 4000 50  0000 C CNN
F 2 "" H 2150 3850 50  0001 C CNN
F 3 "" H 2150 3850 50  0001 C CNN
	1    2150 3850
	1    0    0    -1  
$EndComp
$Sheet
S 5300 7200 500  150 
U 5EE767BF
F0 "Docs" 50
F1 "Docs.sch" 50
$EndSheet
$Comp
L GW_RAM:SDRAM-16Mx16-TSOP2-54 U2
U 1 1 5E96D9E1
P 9400 2900
F 0 "U2" H 9400 4050 50  0000 C CNN
F 1 "W9812G6KH-6" H 9400 1450 50  0000 C CNN
F 2 "stdpads:TSOP-II-54_22.2x10.16mm_P0.8mm" H 9400 1250 50  0001 C CIN
F 3 "" H 9400 2650 50  0001 C CNN
F 4 "C62379" H 9400 2900 50  0001 C CNN "LCSC Part"
F 5 "Winbond W9812G6KH-6, Winbond W9812G6KH-6I, Winbond W9825G6KH-6, Winbond W9825G6KH-6I, ISSI IS42S16160J-6TL, ISSI IS42S16160J-6TLI, Micron MT48LC16M16A2P-6A :G, Micron MT48LC16M16A2P-6A IT:G" H 9400 2900 50  0001 C CNN "Mfg. Part Numbers"
F 6 "Most 166 MHz 128/256 Mbit SDRAM is acceptable." H 9400 2900 50  0001 C CNN "Notes"
	1    9400 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0130
U 1 1 5E97E3BE
P 8900 4200
F 0 "#PWR0130" H 8900 3950 50  0001 C CNN
F 1 "GND" H 8900 4050 50  0000 C CNN
F 2 "" H 8900 4200 50  0001 C CNN
F 3 "" H 8900 4200 50  0001 C CNN
	1    8900 4200
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0131
U 1 1 5E97F038
P 8900 1900
F 0 "#PWR0131" H 8900 1750 50  0001 C CNN
F 1 "+3V3" H 8900 2050 50  0000 C CNN
F 2 "" H 8900 1900 50  0001 C CNN
F 3 "" H 8900 1900 50  0001 C CNN
	1    8900 1900
	1    0    0    -1  
$EndComp
Text Label 8900 3900 2    50   ~ 0
RClk
Text Label 5250 1900 2    50   ~ 0
AClk
Wire Wire Line
	8900 1900 8900 2000
Connection ~ 8900 1900
$Comp
L GW_PLD:5M240ZT100 U1
U 1 1 5E9D5897
P 6250 3300
F 0 "U1" H 6250 3350 50  0000 C CNN
F 1 "EPM240T100C5N" H 6250 3250 50  0000 C CNN
F 2 "stdpads:TQFP-100_14x14mm_P0.5mm" H 6250 3200 20  0001 C CNN
F 3 "" H 6250 3300 50  0001 C CNN
F 4 "C10041" H 6250 3300 50  0001 C CNN "LCSC Part"
F 5 "Altera EPM240T100C5N, Altera EPM240T100C4N, Altera EPM240T100C3N, Altera EPM240T100I5N, Altera EPM240T100I4N, Altera EPM240T100A5N, Altera EPM240T100A4N, AGM/Alta-Gate AG256SL100, AGM AG256SL100C3, AGM AG256SL100C4, AGM/Alta-Gate AG272SL100, AGM AG272SL100C3, AGM AG272SL100C4, AGM/Alta-Gate AG576SL100, AGM AG576SL100C3, AGM AG576SL100C4" H 6250 3300 50  0001 C CNN "Mfg. Part Numbers"
	1    6250 3300
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0135
U 1 1 5E9DE55C
P 6550 900
F 0 "#PWR0135" H 6550 750 50  0001 C CNN
F 1 "+3V3" H 6550 1050 50  0000 C CNN
F 2 "" H 6550 900 50  0001 C CNN
F 3 "" H 6550 900 50  0001 C CNN
	1    6550 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0136
U 1 1 5E9DF65F
P 6650 5700
F 0 "#PWR0136" H 6650 5450 50  0001 C CNN
F 1 "GND" H 6650 5550 50  0000 C CNN
F 2 "" H 6650 5700 50  0001 C CNN
F 3 "" H 6650 5700 50  0001 C CNN
	1    6650 5700
	-1   0    0    -1  
$EndComp
Text Label 8900 2200 2    50   ~ 0
RA0
Text Label 8900 2300 2    50   ~ 0
RA1
Text Label 8900 2400 2    50   ~ 0
RA2
Text Label 8900 2500 2    50   ~ 0
RA3
Text Label 8900 2600 2    50   ~ 0
RA4
Text Label 8900 2700 2    50   ~ 0
RA5
Text Label 8900 2800 2    50   ~ 0
RA6
Text Label 8900 2900 2    50   ~ 0
RA7
Text Label 8900 3000 2    50   ~ 0
RA8
Text Label 8900 3100 2    50   ~ 0
RA9
Text Label 8900 3200 2    50   ~ 0
RA10
Text Label 8900 3300 2    50   ~ 0
RA11
Text Label 8900 3500 2    50   ~ 0
BA0
Text Label 8900 3600 2    50   ~ 0
BA1
Text Label 8900 3800 2    50   ~ 0
CKE
Text Label 9900 1900 0    50   ~ 0
RD0
Text Label 9900 2000 0    50   ~ 0
RD1
Text Label 9900 2100 0    50   ~ 0
RD2
Text Label 9900 2200 0    50   ~ 0
RD3
Text Label 9900 2300 0    50   ~ 0
RD4
Text Label 9900 2400 0    50   ~ 0
RD5
Text Label 9900 2500 0    50   ~ 0
RD6
Text Label 9900 2600 0    50   ~ 0
RD7
Text Label 9900 3400 0    50   ~ 0
RD0
Text Label 9900 3300 0    50   ~ 0
RD1
Text Label 9900 3200 0    50   ~ 0
RD2
Text Label 9900 3100 0    50   ~ 0
RD3
Text Label 9900 3000 0    50   ~ 0
RD4
Text Label 9900 2900 0    50   ~ 0
RD5
Text Label 9900 2800 0    50   ~ 0
RD6
Text Label 9900 2700 0    50   ~ 0
RD7
Text Label 9900 3500 0    50   ~ 0
DQML
Text Label 9900 3600 0    50   ~ 0
DQMH
Text Label 9900 3900 0    50   ~ 0
R~CS~
Text Label 9900 4000 0    50   ~ 0
R~WE~
Text Label 9900 4100 0    50   ~ 0
R~CAS~
Text Label 9900 4200 0    50   ~ 0
R~RAS~
Text Label 5250 4500 2    50   ~ 0
Dout3
Text Label 5250 3300 2    50   ~ 0
Dout0
Text Label 5250 4300 2    50   ~ 0
Dout7
Text Label 5250 4400 2    50   ~ 0
Dout4
Text Label 5250 3400 2    50   ~ 0
Dout6
Text Label 5250 3000 2    50   ~ 0
Dout5
Text Label 5250 4200 2    50   ~ 0
Din0
Text Label 5250 3500 2    50   ~ 0
Din2
Text Label 5250 4000 2    50   ~ 0
Din7
Text Label 5250 3900 2    50   ~ 0
Din4
Text Label 5250 4100 2    50   ~ 0
Din6
Text Label 5250 3800 2    50   ~ 0
Din5
Text Label 5250 3700 2    50   ~ 0
Din3
Text Label 5250 3600 2    50   ~ 0
Din1
Text Label 7250 1800 0    50   ~ 0
Dout1
Text Label 7250 1700 0    50   ~ 0
Dout2
Text Label 5250 4600 2    50   ~ 0
~WE~in
Text Label 5250 4800 2    50   ~ 0
Ain2
Text Label 5250 4900 2    50   ~ 0
Ain1
Text Label 5250 4700 2    50   ~ 0
Ain0
Text Label 7250 1600 0    50   ~ 0
CROWin1
Text Label 7250 1500 0    50   ~ 0
CROWin0
Text Label 7250 1400 0    50   ~ 0
~CCAS~in
Text Label 7250 1300 0    50   ~ 0
PH2in
Text Label 7250 2400 0    50   ~ 0
~CRAS~in
Text Label 7250 2500 0    50   ~ 0
Ain7
Text Label 7250 2600 0    50   ~ 0
Ain5
Text Label 7250 2700 0    50   ~ 0
Ain4
Text Label 7250 2800 0    50   ~ 0
Ain3
Text Label 7250 2900 0    50   ~ 0
Ain6
Text Label 7250 3000 0    50   ~ 0
Ain8
Text Label 7250 3100 0    50   ~ 0
Ain9
Text Label 7250 4500 0    50   ~ 0
RD1
Text Label 7250 4400 0    50   ~ 0
RD2
Text Label 7250 5200 0    50   ~ 0
RD3
Text Label 7250 4700 0    50   ~ 0
RD4
Text Label 7250 4600 0    50   ~ 0
RD5
Text Label 7250 4800 0    50   ~ 0
RD6
Text Label 7250 5000 0    50   ~ 0
RD7
Text Label 7250 5100 0    50   ~ 0
DQML
Text Label 7250 5300 0    50   ~ 0
R~WE~
Text Label 5250 1200 2    50   ~ 0
DQMH
Text Label 5250 1400 2    50   ~ 0
R~CAS~
Text Label 5250 1800 2    50   ~ 0
CKE
Text Label 5250 1600 2    50   ~ 0
R~RAS~
Text Label 5250 1300 2    50   ~ 0
R~CS~
Text Label 5250 1500 2    50   ~ 0
BA0
Text Label 5250 1700 2    50   ~ 0
RA11
Text Label 5250 2000 2    50   ~ 0
BA1
Text Label 5250 2100 2    50   ~ 0
RA9
Text Label 5250 2200 2    50   ~ 0
RA10
Text Label 5250 2300 2    50   ~ 0
RA8
Text Label 5250 2400 2    50   ~ 0
RA0
Text Label 5250 2500 2    50   ~ 0
RA7
Text Label 5250 2600 2    50   ~ 0
RA1
Text Label 5250 2700 2    50   ~ 0
RA6
Text Label 5250 3200 2    50   ~ 0
RA2
Text Label 5250 2900 2    50   ~ 0
RA3
Text Label 5250 2800 2    50   ~ 0
RA4
Text Label 5250 3100 2    50   ~ 0
RA5
$Comp
L power:+3V3 #PWR0129
U 1 1 5E977CDB
P 10300 4950
F 0 "#PWR0129" H 10300 4800 50  0001 C CNN
F 1 "+3V3" H 10300 5100 50  0000 C CNN
F 2 "" H 10300 4950 50  0001 C CNN
F 3 "" H 10300 4950 50  0001 C CNN
	1    10300 4950
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0128
U 1 1 5E97780B
P 10300 5050
F 0 "#PWR0128" H 10300 4800 50  0001 C CNN
F 1 "GND" H 10300 4900 50  0000 C CNN
F 2 "" H 10300 5050 50  0001 C CNN
F 3 "" H 10300 5050 50  0001 C CNN
	1    10300 5050
	1    0    0    -1  
$EndComp
$Comp
L GW_Logic:Oscillator_4P U3
U 1 1 5E97642A
P 9950 5050
F 0 "U3" H 9950 5300 50  0000 C CNN
F 1 "60M" H 9950 4900 50  0000 C CNN
F 2 "stdpads:Crystal_SMD_7050-4Pin_7.0x5.0mm_SiTime" H 9950 5050 50  0001 C CNN
F 3 "" H 9950 5050 50  0001 C CNN
F 4 "C26255" H 9950 5050 50  0001 C CNN "LCSC Part"
F 5 "SiTime SIT1602AI-82-33E-60.000000Y, Shenzhen SCTF S7D60.000000B20F30T, Taiten OCETGLJTNF-60MHZ" H 9950 5050 50  0001 C CNN "Mfg. Part Numbers"
F 6 "Most 60-62.5 MHz 3.3V crystal oscillator or silicon oscillator is acceptable. Do not use crystal resonator or ceramic resonator." H 9950 5050 50  0001 C CNN "Notes"
	1    9950 5050
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 5EC8FA5E
P 9600 5150
F 0 "#PWR0127" H 9600 4900 50  0001 C CNN
F 1 "GND" H 9600 5000 50  0000 C CNN
F 2 "" H 9600 5150 50  0001 C CNN
F 3 "" H 9600 5150 50  0001 C CNN
	1    9600 5150
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0149
U 1 1 5EC960AF
P 9600 4950
F 0 "#PWR0149" H 9600 4800 50  0001 C CNN
F 1 "+3V3" H 9600 5100 50  0000 C CNN
F 2 "" H 9600 4950 50  0001 C CNN
F 3 "" H 9600 4950 50  0001 C CNN
	1    9600 4950
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J2
U 1 1 5ED04C0E
P 3700 7150
F 0 "J2" H 3750 7450 50  0000 C CNN
F 1 "JTAG" H 3750 6850 50  0000 C CNN
F 2 "Connector:Tag-Connect_TC2050-IDC-FP_2x05_P1.27mm_Vertical" H 3700 7150 50  0001 C CNN
F 3 "" H 3700 7150 50  0001 C CNN
F 4 "DNP - test pad connector" H 3700 7150 50  0001 C CNN "Notes"
	1    3700 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0150
U 1 1 5ED07B90
P 4000 7350
F 0 "#PWR0150" H 4000 7100 50  0001 C CNN
F 1 "GND" H 4000 7200 50  0000 C CNN
F 2 "" H 4000 7350 50  0001 C CNN
F 3 "" H 4000 7350 50  0001 C CNN
	1    4000 7350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0151
U 1 1 5ED07F60
P 4000 6950
F 0 "#PWR0151" H 4000 6700 50  0001 C CNN
F 1 "GND" H 4000 6800 50  0000 C CNN
F 2 "" H 4000 6950 50  0001 C CNN
F 3 "" H 4000 6950 50  0001 C CNN
	1    4000 6950
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR0152
U 1 1 5ED08D4E
P 4150 7050
F 0 "#PWR0152" H 4150 6900 50  0001 C CNN
F 1 "+3V3" H 4150 7200 50  0000 C CNN
F 2 "" H 4150 7050 50  0001 C CNN
F 3 "" H 4150 7050 50  0001 C CNN
	1    4150 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 7050 4000 7050
Text Label 3500 6950 2    50   ~ 0
TCK
Text Label 3500 7050 2    50   ~ 0
TDO
Text Label 3500 7150 2    50   ~ 0
TMS
Text Label 3500 7350 2    50   ~ 0
TDI
NoConn ~ 4000 7250
NoConn ~ 3500 7250
NoConn ~ 4000 7150
$Comp
L Device:R_Small R1
U 1 1 5ED6532D
P 4300 7350
F 0 "R1" H 4241 7396 50  0000 R CNN
F 1 "22k" H 4241 7305 50  0000 R CNN
F 2 "stdpads:R_0805" H 4300 7350 50  0001 C CNN
F 3 "" H 4300 7350 50  0001 C CNN
F 4 "C17560" H 4300 7350 50  0001 C CNN "LCSC Part"
F 5 "Any manufacturer's part is acceptable." H 4300 7350 50  0001 C CNN "Notes"
F 6 "Uniroyal 0805W8F2202T5E" H 4300 7350 50  0001 C CNN "Mfg. Part Numbers"
	1    4300 7350
	-1   0    0    -1  
$EndComp
Text Label 4300 7250 2    50   ~ 0
TCK
$Comp
L power:GND #PWR0153
U 1 1 5ED6FBE7
P 4300 7450
F 0 "#PWR0153" H 4300 7200 50  0001 C CNN
F 1 "GND" H 4300 7300 50  0000 C CNN
F 2 "" H 4300 7450 50  0001 C CNN
F 3 "" H 4300 7450 50  0001 C CNN
	1    4300 7450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5ED6FEA6
P 4700 7350
F 0 "R2" H 4759 7396 50  0000 L CNN
F 1 "22k" H 4759 7305 50  0000 L CNN
F 2 "stdpads:R_0805" H 4700 7350 50  0001 C CNN
F 3 "" H 4700 7350 50  0001 C CNN
F 4 "C17560" H 4700 7350 50  0001 C CNN "LCSC Part"
F 5 "Any manufacturer's part is acceptable." H 4700 7350 50  0001 C CNN "Notes"
F 6 "Uniroyal 0805W8F2202T5E" H 4700 7350 50  0001 C CNN "Mfg. Part Numbers"
	1    4700 7350
	1    0    0    -1  
$EndComp
Text Label 4700 7500 2    50   ~ 0
TMS
Wire Wire Line
	4700 7500 4700 7450
$Comp
L power:+3V3 #PWR0154
U 1 1 5ED72E0D
P 4700 7250
F 0 "#PWR0154" H 4700 7100 50  0001 C CNN
F 1 "+3V3" H 4700 7400 50  0000 C CNN
F 2 "" H 4700 7250 50  0001 C CNN
F 3 "" H 4700 7250 50  0001 C CNN
	1    4700 7250
	1    0    0    -1  
$EndComp
Text Label 5250 5200 2    50   ~ 0
TCK
Text Label 5250 5300 2    50   ~ 0
TDO
Text Label 5250 5000 2    50   ~ 0
TMS
Text Label 5250 5100 2    50   ~ 0
TDI
$Comp
L power:GND #PWR0155
U 1 1 5EDB5696
P 700 2500
F 0 "#PWR0155" H 700 2250 50  0001 C CNN
F 1 "GND" H 700 2350 50  0000 C CNN
F 2 "" H 700 2500 50  0001 C CNN
F 3 "" H 700 2500 50  0001 C CNN
	1    700  2500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	700  2500 1000 2500
$Comp
L Device:C_Small C5
U 1 1 5F26439F
P 1850 6050
F 0 "C5" H 1942 6096 50  0000 L CNN
F 1 "2u2" H 1942 6005 50  0000 L CNN
F 2 "stdpads:C_0603" H 1850 6050 50  0001 C CNN
F 3 "" H 1850 6050 50  0001 C CNN
F 4 "C23630" H 1850 6050 50  0001 C CNN "LCSC Part"
F 5 "Samsung CL10A225KO8NNNC" H 1850 6050 50  0001 C CNN "Mfg. Part Numbers"
F 6 "10V or higher. Any manufacturer's part is acceptable but Samsung, Murata, Yageo preferred." H 1850 6050 50  0001 C CNN "Notes"
	1    1850 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5F266E46
P 2250 6050
F 0 "C4" H 2342 6096 50  0000 L CNN
F 1 "10u" H 2342 6005 50  0000 L CNN
F 2 "stdpads:C_0805" H 2250 6050 50  0001 C CNN
F 3 "" H 2250 6050 50  0001 C CNN
F 4 "C15850" H 2250 6050 50  0001 C CNN "LCSC Part"
F 5 "Samsung CL21A106KAYNNNE" H 2250 6050 50  0001 C CNN "Mfg. Part Numbers"
F 6 "10V or higher. Any manufacturer's part is acceptable but Samsung, Murata, Yageo preferred." H 2250 6050 50  0001 C CNN "Notes"
	1    2250 6050
	1    0    0    -1  
$EndComp
Connection ~ 1850 6150
Wire Wire Line
	1850 6150 2250 6150
Wire Wire Line
	1450 6150 1850 6150
Connection ~ 1450 6150
Wire Wire Line
	1450 5950 1850 5950
Connection ~ 1450 5950
$Comp
L Device:C_Small C3
U 1 1 5F266E40
P 1450 6050
F 0 "C3" H 1542 6096 50  0000 L CNN
F 1 "10u" H 1542 6005 50  0000 L CNN
F 2 "stdpads:C_0805" H 1450 6050 50  0001 C CNN
F 3 "" H 1450 6050 50  0001 C CNN
F 4 "C15850" H 1450 6050 50  0001 C CNN "LCSC Part"
F 5 "Samsung CL21A106KAYNNNE" H 1450 6050 50  0001 C CNN "Mfg. Part Numbers"
F 6 "10V or higher. Any manufacturer's part is acceptable but Samsung, Murata, Yageo preferred." H 1450 6050 50  0001 C CNN "Notes"
	1    1450 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 6150 1450 6150
Wire Wire Line
	650  6150 1050 6150
Connection ~ 1050 6150
Wire Wire Line
	1050 5950 1450 5950
Wire Wire Line
	650  5950 1050 5950
Connection ~ 1050 5950
$Comp
L Device:C_Small C2
U 1 1 5F265FE4
P 1050 6050
F 0 "C2" H 1142 6096 50  0000 L CNN
F 1 "10u" H 1142 6005 50  0000 L CNN
F 2 "stdpads:C_0805" H 1050 6050 50  0001 C CNN
F 3 "" H 1050 6050 50  0001 C CNN
F 4 "C15850" H 1050 6050 50  0001 C CNN "LCSC Part"
F 5 "Samsung CL21A106KAYNNNE" H 1050 6050 50  0001 C CNN "Mfg. Part Numbers"
F 6 "10V or higher. Any manufacturer's part is acceptable but Samsung, Murata, Yageo preferred." H 1050 6050 50  0001 C CNN "Notes"
	1    1050 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5F26487C
P 650 6050
F 0 "C1" H 742 6096 50  0000 L CNN
F 1 "10u" H 742 6005 50  0000 L CNN
F 2 "stdpads:C_0805" H 650 6050 50  0001 C CNN
F 3 "" H 650 6050 50  0001 C CNN
F 4 "C15850" H 650 6050 50  0001 C CNN "LCSC Part"
F 5 "Samsung CL21A106KAYNNNE" H 650 6050 50  0001 C CNN "Mfg. Part Numbers"
F 6 "10V or higher. Any manufacturer's part is acceptable but Samsung, Murata, Yageo preferred." H 650 6050 50  0001 C CNN "Notes"
	1    650  6050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C25
U 1 1 5F262E6E
P 2250 7650
F 0 "C25" H 2342 7696 50  0000 L CNN
F 1 "2u2" H 2342 7605 50  0000 L CNN
F 2 "stdpads:C_0603" H 2250 7650 50  0001 C CNN
F 3 "" H 2250 7650 50  0001 C CNN
F 4 "C23630" H 2250 7650 50  0001 C CNN "LCSC Part"
F 5 "Samsung CL10A225KO8NNNC" H 2250 7650 50  0001 C CNN "Mfg. Part Numbers"
F 6 "10V or higher. Any manufacturer's part is acceptable but Samsung, Murata, Yageo preferred." H 2250 7650 50  0001 C CNN "Notes"
	1    2250 7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 7750 2250 7750
Connection ~ 1850 7750
Wire Wire Line
	1850 7550 2250 7550
Connection ~ 1850 7550
$Comp
L Device:C_Small C24
U 1 1 5F262E68
P 1850 7650
F 0 "C24" H 1942 7696 50  0000 L CNN
F 1 "2u2" H 1942 7605 50  0000 L CNN
F 2 "stdpads:C_0603" H 1850 7650 50  0001 C CNN
F 3 "" H 1850 7650 50  0001 C CNN
F 4 "C23630" H 1850 7650 50  0001 C CNN "LCSC Part"
F 5 "Samsung CL10A225KO8NNNC" H 1850 7650 50  0001 C CNN "Mfg. Part Numbers"
F 6 "10V or higher. Any manufacturer's part is acceptable but Samsung, Murata, Yageo preferred." H 1850 7650 50  0001 C CNN "Notes"
	1    1850 7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 7750 1850 7750
Connection ~ 1450 7750
Wire Wire Line
	1450 7550 1850 7550
Connection ~ 1450 7550
$Comp
L Device:C_Small C23
U 1 1 5F262E62
P 1450 7650
F 0 "C23" H 1542 7696 50  0000 L CNN
F 1 "2u2" H 1542 7605 50  0000 L CNN
F 2 "stdpads:C_0603" H 1450 7650 50  0001 C CNN
F 3 "" H 1450 7650 50  0001 C CNN
F 4 "C23630" H 1450 7650 50  0001 C CNN "LCSC Part"
F 5 "Samsung CL10A225KO8NNNC" H 1450 7650 50  0001 C CNN "Mfg. Part Numbers"
F 6 "10V or higher. Any manufacturer's part is acceptable but Samsung, Murata, Yageo preferred." H 1450 7650 50  0001 C CNN "Notes"
	1    1450 7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 7750 1450 7750
Wire Wire Line
	650  7750 1050 7750
Connection ~ 1050 7750
Wire Wire Line
	1050 7550 1450 7550
Wire Wire Line
	650  7550 1050 7550
Connection ~ 1050 7550
$Comp
L Device:C_Small C22
U 1 1 5F262E5C
P 1050 7650
F 0 "C22" H 1142 7696 50  0000 L CNN
F 1 "2u2" H 1142 7605 50  0000 L CNN
F 2 "stdpads:C_0603" H 1050 7650 50  0001 C CNN
F 3 "" H 1050 7650 50  0001 C CNN
F 4 "C23630" H 1050 7650 50  0001 C CNN "LCSC Part"
F 5 "Samsung CL10A225KO8NNNC" H 1050 7650 50  0001 C CNN "Mfg. Part Numbers"
F 6 "10V or higher. Any manufacturer's part is acceptable but Samsung, Murata, Yageo preferred." H 1050 7650 50  0001 C CNN "Notes"
	1    1050 7650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C21
U 1 1 5F262E56
P 650 7650
F 0 "C21" H 742 7696 50  0000 L CNN
F 1 "2u2" H 742 7605 50  0000 L CNN
F 2 "stdpads:C_0603" H 650 7650 50  0001 C CNN
F 3 "" H 650 7650 50  0001 C CNN
F 4 "C23630" H 650 7650 50  0001 C CNN "LCSC Part"
F 5 "Samsung CL10A225KO8NNNC" H 650 7650 50  0001 C CNN "Mfg. Part Numbers"
F 6 "10V or higher. Any manufacturer's part is acceptable but Samsung, Murata, Yageo preferred." H 650 7650 50  0001 C CNN "Notes"
	1    650  7650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C20
U 1 1 5F26081F
P 2250 7250
F 0 "C20" H 2342 7296 50  0000 L CNN
F 1 "2u2" H 2342 7205 50  0000 L CNN
F 2 "stdpads:C_0603" H 2250 7250 50  0001 C CNN
F 3 "" H 2250 7250 50  0001 C CNN
F 4 "C23630" H 2250 7250 50  0001 C CNN "LCSC Part"
F 5 "Samsung CL10A225KO8NNNC" H 2250 7250 50  0001 C CNN "Mfg. Part Numbers"
F 6 "10V or higher. Any manufacturer's part is acceptable but Samsung, Murata, Yageo preferred." H 2250 7250 50  0001 C CNN "Notes"
	1    2250 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 7350 2250 7350
Connection ~ 1850 7350
Wire Wire Line
	1850 7150 2250 7150
Connection ~ 1850 7150
$Comp
L Device:C_Small C19
U 1 1 5F260819
P 1850 7250
F 0 "C19" H 1942 7296 50  0000 L CNN
F 1 "2u2" H 1942 7205 50  0000 L CNN
F 2 "stdpads:C_0603" H 1850 7250 50  0001 C CNN
F 3 "" H 1850 7250 50  0001 C CNN
F 4 "C23630" H 1850 7250 50  0001 C CNN "LCSC Part"
F 5 "Samsung CL10A225KO8NNNC" H 1850 7250 50  0001 C CNN "Mfg. Part Numbers"
F 6 "10V or higher. Any manufacturer's part is acceptable but Samsung, Murata, Yageo preferred." H 1850 7250 50  0001 C CNN "Notes"
	1    1850 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 7350 1850 7350
Connection ~ 1450 7350
Wire Wire Line
	1450 7150 1850 7150
Connection ~ 1450 7150
$Comp
L Device:C_Small C18
U 1 1 5F260813
P 1450 7250
F 0 "C18" H 1542 7296 50  0000 L CNN
F 1 "2u2" H 1542 7205 50  0000 L CNN
F 2 "stdpads:C_0603" H 1450 7250 50  0001 C CNN
F 3 "" H 1450 7250 50  0001 C CNN
F 4 "C23630" H 1450 7250 50  0001 C CNN "LCSC Part"
F 5 "Samsung CL10A225KO8NNNC" H 1450 7250 50  0001 C CNN "Mfg. Part Numbers"
F 6 "10V or higher. Any manufacturer's part is acceptable but Samsung, Murata, Yageo preferred." H 1450 7250 50  0001 C CNN "Notes"
	1    1450 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 7350 1450 7350
Wire Wire Line
	650  7350 1050 7350
Connection ~ 1050 7350
Wire Wire Line
	1050 7150 1450 7150
Wire Wire Line
	650  7150 1050 7150
Connection ~ 1050 7150
$Comp
L Device:C_Small C17
U 1 1 5F26080D
P 1050 7250
F 0 "C17" H 1142 7296 50  0000 L CNN
F 1 "2u2" H 1142 7205 50  0000 L CNN
F 2 "stdpads:C_0603" H 1050 7250 50  0001 C CNN
F 3 "" H 1050 7250 50  0001 C CNN
F 4 "C23630" H 1050 7250 50  0001 C CNN "LCSC Part"
F 5 "Samsung CL10A225KO8NNNC" H 1050 7250 50  0001 C CNN "Mfg. Part Numbers"
F 6 "10V or higher. Any manufacturer's part is acceptable but Samsung, Murata, Yageo preferred." H 1050 7250 50  0001 C CNN "Notes"
	1    1050 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C16
U 1 1 5F260807
P 650 7250
F 0 "C16" H 742 7296 50  0000 L CNN
F 1 "2u2" H 742 7205 50  0000 L CNN
F 2 "stdpads:C_0603" H 650 7250 50  0001 C CNN
F 3 "" H 650 7250 50  0001 C CNN
F 4 "C23630" H 650 7250 50  0001 C CNN "LCSC Part"
F 5 "Samsung CL10A225KO8NNNC" H 650 7250 50  0001 C CNN "Mfg. Part Numbers"
F 6 "10V or higher. Any manufacturer's part is acceptable but Samsung, Murata, Yageo preferred." H 650 7250 50  0001 C CNN "Notes"
	1    650  7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C15
U 1 1 5F25E50B
P 2250 6850
F 0 "C15" H 2342 6896 50  0000 L CNN
F 1 "2u2" H 2342 6805 50  0000 L CNN
F 2 "stdpads:C_0603" H 2250 6850 50  0001 C CNN
F 3 "" H 2250 6850 50  0001 C CNN
F 4 "C23630" H 2250 6850 50  0001 C CNN "LCSC Part"
F 5 "Samsung CL10A225KO8NNNC" H 2250 6850 50  0001 C CNN "Mfg. Part Numbers"
F 6 "10V or higher. Any manufacturer's part is acceptable but Samsung, Murata, Yageo preferred." H 2250 6850 50  0001 C CNN "Notes"
	1    2250 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 6950 1450 6950
Connection ~ 1450 6950
Wire Wire Line
	1050 6750 1450 6750
Connection ~ 1450 6750
$Comp
L Device:C_Small C13
U 1 1 5F25E4FF
P 1450 6850
F 0 "C13" H 1542 6896 50  0000 L CNN
F 1 "2u2" H 1542 6805 50  0000 L CNN
F 2 "stdpads:C_0603" H 1450 6850 50  0001 C CNN
F 3 "" H 1450 6850 50  0001 C CNN
F 4 "C23630" H 1450 6850 50  0001 C CNN "LCSC Part"
F 5 "Samsung CL10A225KO8NNNC" H 1450 6850 50  0001 C CNN "Mfg. Part Numbers"
F 6 "10V or higher. Any manufacturer's part is acceptable but Samsung, Murata, Yageo preferred." H 1450 6850 50  0001 C CNN "Notes"
	1    1450 6850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C12
U 1 1 5F25E4F9
P 1050 6850
F 0 "C12" H 1142 6896 50  0000 L CNN
F 1 "2u2" H 1142 6805 50  0000 L CNN
F 2 "stdpads:C_0603" H 1050 6850 50  0001 C CNN
F 3 "" H 1050 6850 50  0001 C CNN
F 4 "C23630" H 1050 6850 50  0001 C CNN "LCSC Part"
F 5 "Samsung CL10A225KO8NNNC" H 1050 6850 50  0001 C CNN "Mfg. Part Numbers"
F 6 "10V or higher. Any manufacturer's part is acceptable but Samsung, Murata, Yageo preferred." H 1050 6850 50  0001 C CNN "Notes"
	1    1050 6850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C11
U 1 1 5F25E4F3
P 650 6850
F 0 "C11" H 742 6896 50  0000 L CNN
F 1 "2u2" H 742 6805 50  0000 L CNN
F 2 "stdpads:C_0603" H 650 6850 50  0001 C CNN
F 3 "" H 650 6850 50  0001 C CNN
F 4 "C23630" H 650 6850 50  0001 C CNN "LCSC Part"
F 5 "Samsung CL10A225KO8NNNC" H 650 6850 50  0001 C CNN "Mfg. Part Numbers"
F 6 "10V or higher. Any manufacturer's part is acceptable but Samsung, Murata, Yageo preferred." H 650 6850 50  0001 C CNN "Notes"
	1    650  6850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 5F2596EA
P 2250 6450
F 0 "C9" H 2342 6496 50  0000 L CNN
F 1 "2u2" H 2342 6405 50  0000 L CNN
F 2 "stdpads:C_0603" H 2250 6450 50  0001 C CNN
F 3 "" H 2250 6450 50  0001 C CNN
F 4 "C23630" H 2250 6450 50  0001 C CNN "LCSC Part"
F 5 "Samsung CL10A225KO8NNNC" H 2250 6450 50  0001 C CNN "Mfg. Part Numbers"
F 6 "10V or higher. Any manufacturer's part is acceptable but Samsung, Murata, Yageo preferred." H 2250 6450 50  0001 C CNN "Notes"
	1    2250 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5F2596E4
P 1450 6450
F 0 "C8" H 1542 6496 50  0000 L CNN
F 1 "2u2" H 1542 6405 50  0000 L CNN
F 2 "stdpads:C_0603" H 1450 6450 50  0001 C CNN
F 3 "" H 1450 6450 50  0001 C CNN
F 4 "C23630" H 1450 6450 50  0001 C CNN "LCSC Part"
F 5 "Samsung CL10A225KO8NNNC" H 1450 6450 50  0001 C CNN "Mfg. Part Numbers"
F 6 "10V or higher. Any manufacturer's part is acceptable but Samsung, Murata, Yageo preferred." H 1450 6450 50  0001 C CNN "Notes"
	1    1450 6450
	1    0    0    -1  
$EndComp
Connection ~ 1450 6550
Wire Wire Line
	1050 6550 1450 6550
Connection ~ 1450 6350
Wire Wire Line
	1050 6350 1450 6350
$Comp
L Device:C_Small C7
U 1 1 5F258D44
P 1050 6450
F 0 "C7" H 1142 6496 50  0000 L CNN
F 1 "2u2" H 1142 6405 50  0000 L CNN
F 2 "stdpads:C_0603" H 1050 6450 50  0001 C CNN
F 3 "" H 1050 6450 50  0001 C CNN
F 4 "C23630" H 1050 6450 50  0001 C CNN "LCSC Part"
F 5 "Samsung CL10A225KO8NNNC" H 1050 6450 50  0001 C CNN "Mfg. Part Numbers"
F 6 "10V or higher. Any manufacturer's part is acceptable but Samsung, Murata, Yageo preferred." H 1050 6450 50  0001 C CNN "Notes"
	1    1050 6450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0144
U 1 1 5F234A2F
P 2250 7350
F 0 "#PWR0144" H 2250 7100 50  0001 C CNN
F 1 "GND" H 2250 7200 50  0000 C CNN
F 2 "" H 2250 7350 50  0001 C CNN
F 3 "" H 2250 7350 50  0001 C CNN
	1    2250 7350
	-1   0    0    -1  
$EndComp
Connection ~ 1050 6950
Wire Wire Line
	650  6950 1050 6950
Connection ~ 1050 6750
Wire Wire Line
	650  6750 1050 6750
$Comp
L Device:C_Small C6
U 1 1 5F2517FD
P 650 6450
F 0 "C6" H 742 6496 50  0000 L CNN
F 1 "2u2" H 742 6405 50  0000 L CNN
F 2 "stdpads:C_0603" H 650 6450 50  0001 C CNN
F 3 "" H 650 6450 50  0001 C CNN
F 4 "C23630" H 650 6450 50  0001 C CNN "LCSC Part"
F 5 "Samsung CL10A225KO8NNNC" H 650 6450 50  0001 C CNN "Mfg. Part Numbers"
F 6 "10V or higher. Any manufacturer's part is acceptable but Samsung, Murata, Yageo preferred." H 650 6450 50  0001 C CNN "Notes"
	1    650  6450
	1    0    0    -1  
$EndComp
Connection ~ 1050 6550
Wire Wire Line
	650  6550 1050 6550
Connection ~ 1050 6350
Wire Wire Line
	650  6350 1050 6350
$Comp
L power:+3V3 #PWR0147
U 1 1 5F24323B
P 2250 5950
F 0 "#PWR0147" H 2250 5800 50  0001 C CNN
F 1 "+3V3" H 2250 6100 50  0000 C CNN
F 2 "" H 2250 5950 50  0001 C CNN
F 3 "" H 2250 5950 50  0001 C CNN
	1    2250 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0146
U 1 1 5F239F15
P 2250 7750
F 0 "#PWR0146" H 2250 7500 50  0001 C CNN
F 1 "GND" H 2250 7600 50  0000 C CNN
F 2 "" H 2250 7750 50  0001 C CNN
F 3 "" H 2250 7750 50  0001 C CNN
	1    2250 7750
	-1   0    0    -1  
$EndComp
Connection ~ 650  7550
$Comp
L power:+3V3 #PWR0145
U 1 1 5F239F0F
P 650 7550
F 0 "#PWR0145" H 650 7400 50  0001 C CNN
F 1 "+3V3" H 650 7700 50  0000 C CNN
F 2 "" H 650 7550 50  0001 C CNN
F 3 "" H 650 7550 50  0001 C CNN
	1    650  7550
	1    0    0    -1  
$EndComp
Connection ~ 650  7150
$Comp
L power:+3V3 #PWR0143
U 1 1 5F234A29
P 650 7150
F 0 "#PWR0143" H 650 7000 50  0001 C CNN
F 1 "+3V3" H 650 7300 50  0000 C CNN
F 2 "" H 650 7150 50  0001 C CNN
F 3 "" H 650 7150 50  0001 C CNN
	1    650  7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0142
U 1 1 5F23065E
P 2250 6950
F 0 "#PWR0142" H 2250 6700 50  0001 C CNN
F 1 "GND" H 2250 6800 50  0000 C CNN
F 2 "" H 2250 6950 50  0001 C CNN
F 3 "" H 2250 6950 50  0001 C CNN
	1    2250 6950
	-1   0    0    -1  
$EndComp
Connection ~ 650  6750
$Comp
L power:+3V3 #PWR0141
U 1 1 5F230658
P 650 6750
F 0 "#PWR0141" H 650 6600 50  0001 C CNN
F 1 "+3V3" H 650 6900 50  0000 C CNN
F 2 "" H 650 6750 50  0001 C CNN
F 3 "" H 650 6750 50  0001 C CNN
	1    650  6750
	1    0    0    -1  
$EndComp
Connection ~ 650  6350
$Comp
L power:+3V3 #PWR0139
U 1 1 5F212B2F
P 650 6350
F 0 "#PWR0139" H 650 6200 50  0001 C CNN
F 1 "+3V3" H 650 6500 50  0000 C CNN
F 2 "" H 650 6350 50  0001 C CNN
F 3 "" H 650 6350 50  0001 C CNN
	1    650  6350
	1    0    0    -1  
$EndComp
Connection ~ 650  5950
$Comp
L power:+5V #PWR0138
U 1 1 5F1F9E38
P 650 5950
F 0 "#PWR0138" H 650 5800 50  0001 C CNN
F 1 "+5V" H 650 6100 50  0000 C CNN
F 2 "" H 650 5950 50  0001 C CNN
F 3 "" H 650 5950 50  0001 C CNN
	1    650  5950
	-1   0    0    -1  
$EndComp
Connection ~ 2250 6150
$Comp
L power:GND #PWR0137
U 1 1 5F1F99E2
P 2650 6150
F 0 "#PWR0137" H 2650 5900 50  0001 C CNN
F 1 "GND" H 2650 6000 50  0000 C CNN
F 2 "" H 2650 6150 50  0001 C CNN
F 3 "" H 2650 6150 50  0001 C CNN
	1    2650 6150
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0119
U 1 1 5E959F1B
P 3900 4950
F 0 "#PWR0119" H 3900 4800 50  0001 C CNN
F 1 "+3V3" H 3850 5100 50  0000 C CNN
F 2 "" H 3900 4950 50  0001 C CNN
F 3 "" H 3900 4950 50  0001 C CNN
	1    3900 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 4650 4000 5050
$Comp
L Device:R_Pack04 RN5
U 1 1 5EDD8E07
P 4100 5750
F 0 "RN5" V 4300 5750 50  0000 C CNN
F 1 "4x33" V 4350 5750 50  0000 C TNN
F 2 "stdpads:R4_0402" V 4375 5750 50  0001 C CNN
F 3 "" H 4100 5750 50  0001 C CNN
F 4 "C25501" H 4100 5750 50  0001 C CNN "LCSC Part"
F 5 "Any manufacturer's part is acceptable." H 4100 5750 50  0001 C CNN "Notes"
F 6 "Uniroyal 4D02WGJ0330TCE" H 4100 5750 50  0001 C CNN "Mfg. Part Numbers"
	1    4100 5750
	0    1    1    0   
$EndComp
$Comp
L Device:R_Pack04 RN4
U 1 1 5EDD8E01
P 4100 5350
F 0 "RN4" V 3750 5350 50  0000 C BNN
F 1 "4x33" V 3800 5350 50  0000 C CNN
F 2 "stdpads:R4_0402" V 4375 5350 50  0001 C CNN
F 3 "" H 4100 5350 50  0001 C CNN
F 4 "C25501" H 4100 5350 50  0001 C CNN "LCSC Part"
F 5 "Any manufacturer's part is acceptable." H 4100 5350 50  0001 C CNN "Notes"
F 6 "Uniroyal 4D02WGJ0330TCE" H 4100 5350 50  0001 C CNN "Mfg. Part Numbers"
	1    4100 5350
	0    1    1    0   
$EndComp
Text Label 4300 5850 0    50   ~ 0
Ain9
Text Label 4300 5750 0    50   ~ 0
Ain8
Text Label 4300 5650 0    50   ~ 0
Ain6
Text Label 4300 5550 0    50   ~ 0
Ain3
Text Label 4300 5450 0    50   ~ 0
Ain4
Text Label 4300 5350 0    50   ~ 0
Ain5
Text Label 4300 5250 0    50   ~ 0
Ain7
Text Label 4300 5150 0    50   ~ 0
~CRAS~in
$Comp
L GW_Logic:74245 U6
U 1 1 5E9523D4
P 3500 4100
F 0 "U6" H 3500 4700 50  0000 C CNN
F 1 "74LVC245APW" H 3500 3500 50  0000 C CNN
F 2 "stdpads:TSSOP-20_4.4x6.5mm_P0.65mm" H 3500 3450 50  0001 C TNN
F 3 "" H 3500 4200 60  0001 C CNN
F 4 "C6082" H 3500 4100 50  0001 C CNN "LCSC Part"
F 5 "NXP 74LVC245APW, TI SN74LVC245APW" H 3500 4100 50  0001 C CNN "Mfg. Part Numbers"
	1    3500 4100
	1    0    0    -1  
$EndComp
Text Label 3900 3950 0    50   ~ 0
Ain0
Text Label 3900 2650 0    50   ~ 0
Din1
Text Label 3900 2750 0    50   ~ 0
Din3
Text Label 3100 2650 2    50   ~ 0
FD3
Text Label 3100 2550 2    50   ~ 0
FD1
Text Label 3100 2450 2    50   ~ 0
FD2
Text Label 3100 1650 2    50   ~ 0
FD3
Text Label 3100 1150 2    50   ~ 0
FD0
Text Label 3900 4550 0    50   ~ 0
CROWin1
Text Label 3900 4450 0    50   ~ 0
CROWin0
Text Label 3900 4350 0    50   ~ 0
~CCAS~in
Text Label 3900 4250 0    50   ~ 0
PH2in
Text Label 3900 4150 0    50   ~ 0
Ain1
Text Label 3900 4050 0    50   ~ 0
Ain2
Text Label 3900 3850 0    50   ~ 0
~WE~in
Text Label 3100 5750 2    50   ~ 0
FRA9
Text Label 3100 5650 2    50   ~ 0
FRA8
Text Label 3100 5550 2    50   ~ 0
FRA6
Text Label 3100 5450 2    50   ~ 0
FRA3
Text Label 3100 5350 2    50   ~ 0
FRA4
Text Label 3100 5250 2    50   ~ 0
FRA5
Text Label 3100 5150 2    50   ~ 0
FRA7
Text Label 3100 5050 2    50   ~ 0
~CRAS~
Text Label 3100 4450 2    50   ~ 0
CROW1
Text Label 3100 4350 2    50   ~ 0
CROW0
Text Label 3100 4250 2    50   ~ 0
~CCAS~
Text Label 3100 4150 2    50   ~ 0
PH2
Text Label 3100 4050 2    50   ~ 0
FRA1
Text Label 3100 3950 2    50   ~ 0
FRA2
Text Label 3100 3850 2    50   ~ 0
FRA0
Text Label 3100 3750 2    50   ~ 0
~FWE~
Text Label 3900 2850 0    50   ~ 0
Din5
Text Label 3900 3150 0    50   ~ 0
Din6
Text Label 3900 2950 0    50   ~ 0
Din4
Text Label 3900 3050 0    50   ~ 0
Din7
Text Label 3900 2550 0    50   ~ 0
Din2
Text Label 3900 3250 0    50   ~ 0
Din0
Text Label 3100 2750 2    50   ~ 0
FD5
Text Label 3100 3050 2    50   ~ 0
FD6
Text Label 3100 2850 2    50   ~ 0
FD4
Text Label 3100 2950 2    50   ~ 0
FD7
Text Label 3100 3150 2    50   ~ 0
FD0
Text Label 3900 1650 0    50   ~ 0
Dout5
Text Label 3900 1350 0    50   ~ 0
Dout6
Text Label 3900 1550 0    50   ~ 0
Dout4
Text Label 3900 1450 0    50   ~ 0
Dout7
Text Label 3900 1950 0    50   ~ 0
Dout2
Text Label 3900 1850 0    50   ~ 0
Dout1
Text Label 3900 1250 0    50   ~ 0
Dout0
Text Label 3900 1750 0    50   ~ 0
Dout3
Text Label 3100 1550 2    50   ~ 0
FD5
Text Label 3100 1250 2    50   ~ 0
FD6
Text Label 3100 1450 2    50   ~ 0
FD4
Text Label 3100 1350 2    50   ~ 0
FD7
Text Label 3100 1850 2    50   ~ 0
FD2
Text Label 3100 1750 2    50   ~ 0
FD1
Wire Wire Line
	4000 5050 3900 5050
Wire Wire Line
	4000 4650 4100 4650
$Comp
L power:GND #PWR0126
U 1 1 5E95EF63
P 4100 4650
F 0 "#PWR0126" H 4100 4400 50  0001 C CNN
F 1 "GND" H 4100 4500 50  0000 C CNN
F 2 "" H 4100 4650 50  0001 C CNN
F 3 "" H 4100 4650 50  0001 C CNN
	1    4100 4650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4000 2450 3900 2450
Wire Wire Line
	4000 2250 4100 2250
Wire Wire Line
	4000 2450 4000 2250
$Comp
L power:GND #PWR0125
U 1 1 5E95E0DE
P 4100 2250
F 0 "#PWR0125" H 4100 2000 50  0001 C CNN
F 1 "GND" H 4100 2100 50  0000 C CNN
F 2 "" H 4100 2250 50  0001 C CNN
F 3 "" H 4100 2250 50  0001 C CNN
	1    4100 2250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4000 3750 3900 3750
Wire Wire Line
	4000 3550 4100 3550
Wire Wire Line
	4000 3750 4000 3550
$Comp
L power:GND #PWR0124
U 1 1 5E95D664
P 4100 3550
F 0 "#PWR0124" H 4100 3300 50  0001 C CNN
F 1 "GND" H 4100 3400 50  0000 C CNN
F 2 "" H 4100 3550 50  0001 C CNN
F 3 "" H 4100 3550 50  0001 C CNN
	1    4100 3550
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0123
U 1 1 5E95C277
P 3100 3650
F 0 "#PWR0123" H 3100 3500 50  0001 C CNN
F 1 "+3V3" H 3100 3800 50  0000 C CNN
F 2 "" H 3100 3650 50  0001 C CNN
F 3 "" H 3100 3650 50  0001 C CNN
	1    3100 3650
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0122
U 1 1 5E95B2D8
P 3100 2350
F 0 "#PWR0122" H 3100 2200 50  0001 C CNN
F 1 "+3V3" H 3100 2500 50  0000 C CNN
F 2 "" H 3100 2350 50  0001 C CNN
F 3 "" H 3100 2350 50  0001 C CNN
	1    3100 2350
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0121
U 1 1 5E95ADF4
P 3900 2350
F 0 "#PWR0121" H 3900 2200 50  0001 C CNN
F 1 "+3V3" H 3900 2500 50  0000 C CNN
F 2 "" H 3900 2350 50  0001 C CNN
F 3 "" H 3900 2350 50  0001 C CNN
	1    3900 2350
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0120
U 1 1 5E95A913
P 3900 3650
F 0 "#PWR0120" H 3900 3500 50  0001 C CNN
F 1 "+3V3" H 3900 3800 50  0000 C CNN
F 2 "" H 3900 3650 50  0001 C CNN
F 3 "" H 3900 3650 50  0001 C CNN
	1    3900 3650
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0118
U 1 1 5E959593
P 3100 4950
F 0 "#PWR0118" H 3100 4800 50  0001 C CNN
F 1 "+3V3" H 3100 5100 50  0000 C CNN
F 2 "" H 3100 4950 50  0001 C CNN
F 3 "" H 3100 4950 50  0001 C CNN
	1    3100 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 850  3000 850 
Wire Wire Line
	3100 1050 3100 850 
$Comp
L power:GND #PWR0117
U 1 1 5E957E2A
P 3000 850
F 0 "#PWR0117" H 3000 600 50  0001 C CNN
F 1 "GND" H 3000 700 50  0000 C CNN
F 2 "" H 3000 850 50  0001 C CNN
F 3 "" H 3000 850 50  0001 C CNN
	1    3000 850 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5E95521F
P 3100 1950
F 0 "#PWR0115" H 3100 1700 50  0001 C CNN
F 1 "GND" H 3100 1800 50  0000 C CNN
F 2 "" H 3100 1950 50  0001 C CNN
F 3 "" H 3100 1950 50  0001 C CNN
	1    3100 1950
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5E954F76
P 3100 3250
F 0 "#PWR0114" H 3100 3000 50  0001 C CNN
F 1 "GND" H 3100 3100 50  0000 C CNN
F 2 "" H 3100 3250 50  0001 C CNN
F 3 "" H 3100 3250 50  0001 C CNN
	1    3100 3250
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5E954B70
P 3100 5850
F 0 "#PWR0112" H 3100 5600 50  0001 C CNN
F 1 "GND" H 3100 5700 50  0000 C CNN
F 2 "" H 3100 5850 50  0001 C CNN
F 3 "" H 3100 5850 50  0001 C CNN
	1    3100 5850
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5E954345
P 3100 4550
F 0 "#PWR0111" H 3100 4300 50  0001 C CNN
F 1 "GND" H 3100 4400 50  0000 C CNN
F 2 "" H 3100 4550 50  0001 C CNN
F 3 "" H 3100 4550 50  0001 C CNN
	1    3100 4550
	-1   0    0    -1  
$EndComp
$Comp
L GW_Logic:74245 U5
U 1 1 5E9514FC
P 3500 2800
F 0 "U5" H 3500 3400 50  0000 C CNN
F 1 "74LVC245APW" H 3500 2200 50  0000 C CNN
F 2 "stdpads:TSSOP-20_4.4x6.5mm_P0.65mm" H 3500 2150 50  0001 C TNN
F 3 "" H 3500 2900 60  0001 C CNN
F 4 "C6082" H 3500 2800 50  0001 C CNN "LCSC Part"
F 5 "NXP 74LVC245APW, TI SN74LVC245APW" H 3500 2800 50  0001 C CNN "Mfg. Part Numbers"
	1    3500 2800
	1    0    0    -1  
$EndComp
NoConn ~ 7250 3200
NoConn ~ 7250 3300
NoConn ~ 7250 3500
NoConn ~ 7250 3700
NoConn ~ 7250 3900
NoConn ~ 7250 4100
NoConn ~ 7250 4300
NoConn ~ 7250 1900
NoConn ~ 7250 2000
NoConn ~ 7250 2100
NoConn ~ 7250 2200
NoConn ~ 7250 2300
NoConn ~ 9550 4950
Wire Wire Line
	8700 5150 8750 5150
$Comp
L GW_Logic:741G04GW U10
U 1 1 5EBE653F
P 9200 5050
F 0 "U10" H 9200 5300 50  0000 C CNN
F 1 "74LVC1G04GW" H 9200 4800 50  0000 C CNN
F 2 "stdpads:SOT-353" H 9200 4750 50  0001 C TNN
F 3 "" H 9200 4850 60  0001 C CNN
F 4 "C10237" H 9200 5050 50  0001 C CNN "LCSC Part"
F 5 "NXP 74LVC1G04GW, TI SN74LVC1G04DCK" H 9200 5050 50  0001 C CNN "Mfg. Part Numbers"
	1    9200 5050
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0156
U 1 1 5EBEC19A
P 8800 4950
F 0 "#PWR0156" H 8800 4800 50  0001 C CNN
F 1 "+3V3" H 8800 5100 50  0000 C CNN
F 2 "" H 8800 4950 50  0001 C CNN
F 3 "" H 8800 4950 50  0001 C CNN
	1    8800 4950
	-1   0    0    -1  
$EndComp
Text Label 8500 5150 2    50   ~ 0
AClk
Text Label 8500 4850 2    50   ~ 0
RClk
$Comp
L power:GND #PWR0116
U 1 1 5EC2C162
P 4900 1150
F 0 "#PWR0116" H 4900 900 50  0001 C CNN
F 1 "GND" H 4900 1000 50  0000 C CNN
F 2 "" H 4900 1150 50  0001 C CNN
F 3 "" H 4900 1150 50  0001 C CNN
	1    4900 1150
	-1   0    0    -1  
$EndComp
$Comp
L GW_Logic:741G04GW U9
U 1 1 5EC2BBFE
P 4500 1050
F 0 "U9" H 4500 1050 50  0000 C CNN
F 1 "74LVC1G04GW" H 4500 800 50  0000 C CNN
F 2 "stdpads:SOT-353" H 4500 750 50  0001 C TNN
F 3 "" H 4500 850 60  0001 C CNN
F 4 "C10237" H 4500 1050 50  0001 C CNN "LCSC Part"
F 5 "NXP 74LVC1G04GW, TI SN74LVC1G04DCK" H 4500 1050 50  0001 C CNN "Mfg. Part Numbers"
	1    4500 1050
	-1   0    0    -1  
$EndComp
NoConn ~ 4850 950 
$Comp
L GW_Logic:74245 U7
U 1 1 5E9535D4
P 3500 5400
F 0 "U7" H 3500 6000 50  0000 C CNN
F 1 "74LVC245APW" H 3500 4800 50  0000 C CNN
F 2 "stdpads:TSSOP-20_4.4x6.5mm_P0.65mm" H 3500 4750 50  0001 C TNN
F 3 "" H 3500 5500 60  0001 C CNN
F 4 "C6082" H 3500 5400 50  0001 C CNN "LCSC Part"
F 5 "NXP 74LVC245APW, TI SN74LVC245APW" H 3500 5400 50  0001 C CNN "Mfg. Part Numbers"
	1    3500 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 900  5950 900 
Wire Wire Line
	5850 5700 5950 5700
Wire Wire Line
	6050 900  6150 900 
Connection ~ 6150 900 
Wire Wire Line
	6150 900  6250 900 
Connection ~ 6250 900 
Wire Wire Line
	6250 900  6350 900 
Connection ~ 6350 900 
Wire Wire Line
	6350 900  6450 900 
Connection ~ 6450 900 
Wire Wire Line
	6450 900  6550 900 
Connection ~ 6550 5700
Connection ~ 5950 5700
Wire Wire Line
	5950 5700 6050 5700
Connection ~ 6050 5700
Wire Wire Line
	6050 5700 6150 5700
Connection ~ 6150 5700
Wire Wire Line
	6150 5700 6250 5700
Connection ~ 6250 5700
Wire Wire Line
	6250 5700 6350 5700
Connection ~ 6350 5700
Wire Wire Line
	6350 5700 6450 5700
Connection ~ 6450 5700
Wire Wire Line
	6450 5700 6550 5700
Wire Wire Line
	8750 5150 8750 4850
Wire Wire Line
	8750 4850 8700 4850
Connection ~ 8750 5150
Wire Wire Line
	8750 5150 8800 5150
Text Label 4900 1050 0    50   ~ 0
~CSEL~
$Comp
L Mechanical:MountingHole_Pad H5
U 1 1 5F88103E
P 2650 3450
F 0 "H5" H 2750 3501 50  0000 L CNN
F 1 " " H 2750 3410 50  0000 L CNN
F 2 "stdpads:PasteHole_1.152mm_NPTH" H 2650 3450 50  0001 C CNN
F 3 "" H 2650 3450 50  0001 C CNN
F 4 "DNP - mounting hole for solder paste printing" H 2650 3450 50  0001 C CNN "Notes"
	1    2650 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5F881044
P 2650 3550
F 0 "#PWR0113" H 2650 3300 50  0001 C CNN
F 1 "GND" H 2655 3377 50  0000 C CNN
F 2 "" H 2650 3550 50  0001 C CNN
F 3 "" H 2650 3550 50  0001 C CNN
	1    2650 3550
	1    0    0    -1  
$EndComp
Connection ~ 2650 3550
Wire Wire Line
	2150 3550 2650 3550
Connection ~ 2250 6950
Connection ~ 2250 7350
Connection ~ 2250 7750
$Comp
L Device:C_Small C26
U 1 1 5F92777A
P 2650 6050
F 0 "C26" H 2742 6096 50  0000 L CNN
F 1 "10u" H 2742 6005 50  0000 L CNN
F 2 "stdpads:C_0805" H 2650 6050 50  0001 C CNN
F 3 "" H 2650 6050 50  0001 C CNN
F 4 "C15850" H 2650 6050 50  0001 C CNN "LCSC Part"
F 5 "Samsung CL21A106KAYNNNE" H 2650 6050 50  0001 C CNN "Mfg. Part Numbers"
F 6 "10V or higher. Any manufacturer's part is acceptable but Samsung, Murata, Yageo preferred." H 2650 6050 50  0001 C CNN "Notes"
	1    2650 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 6150 2650 6150
Wire Wire Line
	2650 5950 2250 5950
Connection ~ 2250 5950
Connection ~ 2650 6150
$Comp
L power:+3V3 #PWR0148
U 1 1 5F93EC7D
P 4100 950
F 0 "#PWR0148" H 4100 800 50  0001 C CNN
F 1 "+3V3" H 4100 1100 50  0000 C CNN
F 2 "" H 4100 950 50  0001 C CNN
F 3 "" H 4100 950 50  0001 C CNN
	1    4100 950 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0157
U 1 1 5F940CD5
P 3900 1050
F 0 "#PWR0157" H 3900 900 50  0001 C CNN
F 1 "+5V" H 3900 1200 50  0000 C CNN
F 2 "" H 3900 1050 50  0001 C CNN
F 3 "" H 3900 1050 50  0001 C CNN
	1    3900 1050
	1    0    0    -1  
$EndComp
$Comp
L GW_Logic:74245 U4
U 1 1 5E950437
P 3500 1500
F 0 "U4" H 3500 2100 50  0000 C CNN
F 1 "74AHCT245PW" H 3500 900 50  0000 C CNN
F 2 "stdpads:TSSOP-20_4.4x6.5mm_P0.65mm" H 3500 850 50  0001 C TNN
F 3 "" H 3500 1600 60  0001 C CNN
F 4 "C173388" H 3500 1500 50  0001 C CNN "LCSC Part"
F 5 "NXP 74AHCT245PW, TI SN74AHCT245PW" H 3500 1500 50  0001 C CNN "Mfg. Part Numbers"
	1    3500 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 4200 8900 4100
Connection ~ 8900 4200
$Comp
L power:GND #PWR0158
U 1 1 607C165A
P 8900 3400
F 0 "#PWR0158" H 8900 3150 50  0001 C CNN
F 1 "GND" H 8900 3250 50  0000 C CNN
F 2 "" H 8900 3400 50  0001 C CNN
F 3 "" H 8900 3400 50  0001 C CNN
	1    8900 3400
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0159
U 1 1 871A171C
P 1550 4950
F 0 "#PWR0159" H 1550 4700 50  0001 C CNN
F 1 "GND" H 1550 4800 50  0000 C CNN
F 2 "" H 1550 4950 50  0001 C CNN
F 3 "" H 1550 4950 50  0001 C CNN
	1    1550 4950
	-1   0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AP2127K-1.8 U11
U 1 1 8719FB68
P 1550 4650
F 0 "U11" H 1550 4650 50  0000 C CNN
F 1 "AP2127K-1.8TRG1" H 1550 4850 50  0000 C BNN
F 2 "stdpads:SOT-23-5" H 1550 4975 50  0001 C CNN
F 3 "" H 1550 4750 50  0001 C CNN
F 4 "C151375" H 1550 4650 50  0001 C CNN "LCSC Part"
F 5 "Diodes AP2127K-1.8TRG1, Torex XC6228D182VR" H 1550 4650 50  0001 C CNN "Mfg. Part Numbers"
	1    1550 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 4550 1950 4550
$Comp
L Device:C_Small C28
U 1 1 871B6E7B
P 2150 4650
F 0 "C28" H 2242 4696 50  0000 L CNN
F 1 "2u2" H 2242 4605 50  0000 L CNN
F 2 "stdpads:C_0603" H 2150 4650 50  0001 C CNN
F 3 "" H 2150 4650 50  0001 C CNN
F 4 "C23630" H 2150 4650 50  0001 C CNN "LCSC Part"
F 5 "Samsung CL10A225KO8NNNC" H 2150 4650 50  0001 C CNN "Mfg. Part Numbers"
F 6 "10V or higher. Any manufacturer's part is acceptable but Samsung, Murata, Yageo preferred." H 2150 4650 50  0001 C CNN "Notes"
	1    2150 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 4750 2150 4950
Wire Wire Line
	2150 4950 1550 4950
Connection ~ 1550 4950
$Comp
L power:+1V8 #PWR0160
U 1 1 871BC45D
P 2150 4550
F 0 "#PWR0160" H 2150 4400 50  0001 C CNN
F 1 "+1V8" H 2150 4700 50  0000 C CNN
F 2 "" H 2150 4550 50  0001 C CNN
F 3 "" H 2150 4550 50  0001 C CNN
	1    2150 4550
	1    0    0    -1  
$EndComp
Connection ~ 2150 4550
$Comp
L Device:R_Small R4
U 1 1 871C5B73
P 1950 4200
F 0 "R4" H 1891 4246 50  0000 R CNN
F 1 "0" H 1891 4155 50  0000 R CNN
F 2 "stdpads:R_0805" H 1950 4200 50  0001 C CNN
F 3 "" H 1950 4200 50  0001 C CNN
F 4 "C17477" H 1950 4200 50  0001 C CNN "LCSC Part"
F 5 "Uniroyal 0805W8F0000T5E" H 1950 4200 50  0001 C CNN "Mfg. Part Numbers"
F 6 "Any manufacturer's part is acceptable." H 1950 4200 50  0001 C CNN "Notes"
	1    1950 4200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6650 5700 6550 5700
Connection ~ 6650 5700
Connection ~ 6550 900 
$Comp
L power:+1V8 #PWR0161
U 1 1 871E812C
P 5850 900
F 0 "#PWR0161" H 5850 750 50  0001 C CNN
F 1 "+1V8" H 5850 1050 50  0000 C CNN
F 2 "" H 5850 900 50  0001 C CNN
F 3 "" H 5850 900 50  0001 C CNN
	1    5850 900 
	1    0    0    -1  
$EndComp
Connection ~ 5850 900 
$Comp
L power:GND #PWR0140
U 1 1 5F21322E
P 2650 6550
F 0 "#PWR0140" H 2650 6300 50  0001 C CNN
F 1 "GND" H 2650 6400 50  0000 C CNN
F 2 "" H 2650 6550 50  0001 C CNN
F 3 "" H 2650 6550 50  0001 C CNN
	1    2650 6550
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C27
U 1 1 5F944E67
P 1850 6450
F 0 "C27" H 1942 6496 50  0000 L CNN
F 1 "2u2" H 1942 6405 50  0000 L CNN
F 2 "stdpads:C_0603" H 1850 6450 50  0001 C CNN
F 3 "" H 1850 6450 50  0001 C CNN
F 4 "C23630" H 1850 6450 50  0001 C CNN "LCSC Part"
F 5 "Samsung CL10A225KO8NNNC" H 1850 6450 50  0001 C CNN "Mfg. Part Numbers"
F 6 "10V or higher. Any manufacturer's part is acceptable but Samsung, Murata, Yageo preferred." H 1850 6450 50  0001 C CNN "Notes"
	1    1850 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C14
U 1 1 5F25E505
P 2650 6450
F 0 "C14" H 2742 6496 50  0000 L CNN
F 1 "2u2" H 2742 6405 50  0000 L CNN
F 2 "stdpads:C_0603" H 2650 6450 50  0001 C CNN
F 3 "" H 2650 6450 50  0001 C CNN
F 4 "C23630" H 2650 6450 50  0001 C CNN "LCSC Part"
F 5 "Samsung CL10A225KO8NNNC" H 2650 6450 50  0001 C CNN "Mfg. Part Numbers"
F 6 "10V or higher. Any manufacturer's part is acceptable but Samsung, Murata, Yageo preferred." H 2650 6450 50  0001 C CNN "Notes"
	1    2650 6450
	1    0    0    -1  
$EndComp
Connection ~ 1850 6750
Wire Wire Line
	1850 6750 2250 6750
Connection ~ 1850 6950
Wire Wire Line
	1850 6950 2250 6950
Wire Wire Line
	1450 6550 1850 6550
Wire Wire Line
	1450 6350 1850 6350
Wire Wire Line
	1450 6950 1850 6950
Wire Wire Line
	1450 6750 1850 6750
$Comp
L Device:C_Small C10
U 1 1 5F25BCF6
P 1850 6850
F 0 "C10" H 1942 6896 50  0000 L CNN
F 1 "2u2" H 1942 6805 50  0000 L CNN
F 2 "stdpads:C_0603" H 1850 6850 50  0001 C CNN
F 3 "" H 1850 6850 50  0001 C CNN
F 4 "C23630" H 1850 6850 50  0001 C CNN "LCSC Part"
F 5 "Samsung CL10A225KO8NNNC" H 1850 6850 50  0001 C CNN "Mfg. Part Numbers"
F 6 "10V or higher. Any manufacturer's part is acceptable but Samsung, Murata, Yageo preferred." H 1850 6850 50  0001 C CNN "Notes"
	1    1850 6850
	1    0    0    -1  
$EndComp
Connection ~ 1850 6550
Wire Wire Line
	1850 6550 2250 6550
Wire Wire Line
	2250 6350 2650 6350
Connection ~ 2250 6550
Wire Wire Line
	2250 6550 2650 6550
Connection ~ 2650 6550
$Comp
L power:+1V8 #PWR0162
U 1 1 87222813
P 2250 6350
F 0 "#PWR0162" H 2250 6200 50  0001 C CNN
F 1 "+1V8" H 2250 6500 50  0000 C CNN
F 2 "" H 2250 6350 50  0001 C CNN
F 3 "" H 2250 6350 50  0001 C CNN
	1    2250 6350
	1    0    0    -1  
$EndComp
Connection ~ 2250 6350
Text Label 7250 3400 0    50   ~ 0
MISO
NoConn ~ 7250 3600
Text Label 7250 3800 0    50   ~ 0
MOSI
Text Label 7250 4000 0    50   ~ 0
SCK
Text Label 7250 4200 0    50   ~ 0
S~CS~
Wire Wire Line
	1950 4300 1950 4550
Connection ~ 1950 4550
Wire Wire Line
	1950 4550 2150 4550
Wire Wire Line
	1950 4100 1950 3850
Wire Wire Line
	2150 3850 1950 3850
Wire Wire Line
	1950 3850 1850 3850
Connection ~ 1950 3850
$Comp
L power:+5V #PWR0134
U 1 1 5E9856CC
P 1050 3850
F 0 "#PWR0134" H 1050 3700 50  0001 C CNN
F 1 "+5V" H 1050 4000 50  0000 C CNN
F 2 "" H 1050 3850 50  0001 C CNN
F 3 "" H 1050 3850 50  0001 C CNN
	1    1050 3850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1050 3850 1250 3850
Connection ~ 1050 3850
Wire Wire Line
	1050 4650 1050 4550
Wire Wire Line
	1250 4650 1050 4650
Connection ~ 1050 4550
Wire Wire Line
	1250 4550 1050 4550
Wire Wire Line
	1050 4550 1050 3850
Wire Wire Line
	4100 1150 3900 1150
$Comp
L Device:R_Small R3
U 1 1 60F771C1
P 8600 4850
F 0 "R3" V 8404 4850 50  0000 C CNN
F 1 "47" V 8495 4850 50  0000 C CNN
F 2 "stdpads:R_0603" H 8600 4850 50  0001 C CNN
F 3 "~" H 8600 4850 50  0001 C CNN
	1    8600 4850
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 60F76863
P 8600 5150
F 0 "R5" V 8404 5150 50  0000 C CNN
F 1 "47" V 8495 5150 50  0000 C CNN
F 2 "stdpads:R_0603" H 8600 5150 50  0001 C CNN
F 3 "~" H 8600 5150 50  0001 C CNN
	1    8600 5150
	0    1    1    0   
$EndComp
Text Label 7250 4900 0    50   ~ 0
RD0
$EndSCHEMATC
