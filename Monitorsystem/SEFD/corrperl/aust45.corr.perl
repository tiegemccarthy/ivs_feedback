+HEADER 
CORREL   CRTN 
DATABASE 14AUG31XA 
SESSNAME AUST45 
UTSTART  0000 
DURATION 24 
DOY      243-244 
CORRTIME 2014/10/17 2014/10/18 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            99%             - 
   0              -              - 
 4-1,A-H,N        -              - 
 Removed          -              - 

+CORRELATOR_NOTES
Manual phase cal was applied for all stations, after noting loss of phase 
cal at Yg.  

+STATION_NOTES

 HOBART12 (Hb/L): Strong RFI in SR5U and SR6U. 

 KATH12M  (Ke/i): Small clock break apparent at 0632.

 YARRA12M (Yg/e): No usable phase cal. 

+DROP_CHANNELS
 Hb 
 Ke 
 Yg 

+MANUAL PCAL Hb Yg 

+CHANNELS
 Channels: XR1U = band|polarization|channel#|sideband

XR1U/L  BBC01 8212.99 
XR2U    BBC02 8252.99 
XR3U    BBC03 8352.99 
XR4U    BBC04 8512.99 
XR5U    BBC05 8732.99 
XR6U    BBC06 8852.99 
XR7U    BBC07 8912.99 
XR8U/L  BBC08 8932.99 
SR1U    BBC09 2225.99 
SR2U    BBC10 2245.99 
SR3U    BBC11 2265.99 
SR4U    BBC12 2295.99 
SR5U    BBC13 2345.99 
SR6U    BBC14 2365.99 

+CLOCKS

Clocks: Curtin

 Station      Offset     rate      Epoch
              [usec]     [sec/sec] [MJD]
  HB          -10.19         0.00   56636.7588889
  KE           -5.91         0.00   56900.0000000
  YG           -7.69         0.00   56900.0000000


+QCODES

Qcod 0 1 2 3 4 5 6  7   8    9 A B C D E F  G H N -  Tot 
------------------------------------------------------------
Li:X 2 0 0 0 0 0 2  2  11  722 0 0 0 0 0 0  0 0 0 0  739 
Li:S 6 0 0 0 0 0 1  5  98  628 0 0 0 0 0 0  1 0 0 0  739 
Le:X 3 0 0 0 0 0 2  1  30  703 0 0 0 0 0 0  0 0 1 0  740 
Le:S 7 0 0 0 0 0 0 16 135  570 0 0 0 0 0 0 11 0 1 0  740 
ie:X 0 0 0 0 0 1 1  1  42  693 0 0 0 0 0 0  0 0 1 0  739 
ie:S 1 0 0 0 0 0 0  0   6  731 0 0 0 0 0 0  0 0 1 0  739 
------------------------------------------------------------
Tot 19 0 0 0 0 1 6 25 322 4047 0 0 0 0 0 0 12 0 4 0 4436 

 Legend:
 QC = 0   Fringes not detected.
    = 1-9 Fringes detected, no error condition. Higher #, better quality.
    = B   Interpolation error in fourfit.
    = D   No data in one or more frequency channels.
    = E   Maximum fringe amplitude at edge of SBD, MBD, or rate window.
    = F   Fork problem in processing.
    = G   Fringe amp in a channel is <.5 times mean amp (only if SNR>20).
    = H   Low Phase-cal amplitude in one or more channels.
    = N   No valid correlator data.
  Tot     Total number of scans in schedule.
  Minus   Scans in original schedule file for which correlation was not
          attempted, usually because of known station problems.

+SNR_RATIOS

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1285

 ...by baseline, over all sources:

 bl     X     n       S     n

 Li    1.59  737     1.12  731
 Le    1.81  736     1.26  731
 ie    1.75  738     1.44  737


+FOURFIT_CONTROL_FILE

* control file for exp. AUST

*    max_parity  0.01
*    pc_mode normal 
*
start -2
* stop -30

   sb_win -256.0 256.0 mb_win -2.0 2.0 dr_win -300.e-4 300.e-4
*      sb_win -2.0 2.0 mb_win -2.0 2.0 dr_win -30.0e-5 30.0e-5
*
*    ...offset between VLBA-VLBA and MK4-VLBA ...

weak_channel 0.3 

  if f_group X
    ref_freq 8212.99
    freqs g h i j k l m n
    pc_freqs ghijklmn 9010 9010 9010 9010 9010 9010 9010 9010

  if f_group S
    ref_freq 2225.99
    freqs a b c d e f 
    pc_freqs abcdef 3010 3010 3010 3010 3010 3010

  if station L and f_group X
    pc_mode manual
 pc_phases ghijklmn 10.8  120.5   98.6  280.8  301.8  122.3  128.7  219.4

  if station L and f_group S
    pc_mode manual
    pc_phases abcdef 94.9  330.5  218.4  244.7  148.4  169.8

  if station e and f_group S
    pc_mode manual
    pc_phases abcdef 85.9 289.2 145.3 143.9 335.2 246.1

  if station e and f_group X
    pc_mode manual
 pc_phases ghijklmn -172.3   -62.0 271.3  93.7 342.2 123.2 154.9 230.6


* ref Ke/i --> just for book keeping


Regards,
 Jamie 

+END
