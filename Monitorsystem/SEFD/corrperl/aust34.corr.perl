+HEADER 
CORREL   CRTN 
DATABASE 14JUL19XA 
SESSNAME AUST34 
UTSTART  0000 
DURATION 24 
DOY      200-201 
CORRTIME 2014/09/28 2014/09/29 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            77%             - 
   0              -              - 
 4-1,A-H,N       22%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART12 (Hb/L): Ok.

 KATH12M  (Ke/i): No detections in XR5U - channel dropped.

 WARK12M  (Ww/W): Scheduled as tag-along, unable to observe. 

 YARRA12M (Yg/e): Small clock break (<1 ns) apparent at 2009.

+DROP_CHANNELS
 Hb 
 Ke      XR5U  
 Ww 
 Yg 

+MANUAL PCAL 

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
  KE           -5.90         0.00   56857.0000000
  YG           -7.89         0.00   56850.0000000


+QCODES

Qcod 0 1 2 3 4 5 6  7   8    9 A B C D E F  G H    N -  Tot 
---------------------------------------------------------------
Li:X 5 0 0 0 0 0 0  2 433  469 0 0 0 0 0 0  3 0   41 0  953 
Li:S 3 0 0 0 0 0 0  4  94  805 0 0 0 0 0 0  6 0   41 0  953 
Le:X10 0 0 0 0 0 0  4  87  840 0 0 0 0 0 0 12 0    0 0  953 
Le:S 2 0 0 0 0 0 0  5 187  749 0 0 0 0 0 0 10 0    0 0  953 
LW:X 0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0  0 0  231 0  231 
LW:S 0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0  0 0  231 0  231 
ie:X 1 0 0 0 0 0 0  4  15  893 0 0 0 0 0 0  0 0   41 0  954 
ie:S 1 0 1 0 0 0 1  0  11  899 0 0 0 0 0 0  0 0   41 0  954 
iW:X 0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0  0 0  230 0  230 
iW:S 0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0  0 0  230 0  230 
eW:X 0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0  0 0  231 0  231 
eW:S 0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0  0 0  231 0  231 
---------------------------------------------------------------
Tot 22 0 1 0 0 0 1 19 827 4655 0 0 0 0 0 0 31 0 1548 0 7104 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1274

 ...by baseline, over all sources:

 bl     X     n       S     n

 Li    0.99  907     0.86  909
 Le    0.97  943     0.94  950
 LW    0.00    0     0.00    0
 ie    1.13  912     1.23  912
 iW    0.00    0     0.00    0
 eW    0.00    0     0.00    0


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

  if station i and f_group X
    freqs g h i j l m n 
* Channel XR5U missing - DBBC problem.

*  if station i and f_group X
*    pc_mode manual
*    pc_phases ghijlmn 39.5   82.6 -114.7 -221.7 -109.0 -195.1 -159.3

*  if station i and f_group S
*    pc_mode manual
*    pc_phases abcdef -94.6  123.2  326.1  288.8  120.2  106.5

*  if station L and f_group X
*    pc_mode manual
*    pc_phases ghijklmn 54.3  279.7   84.3  189.1   12.8  233.8 262.1 31.2

*  if station L and f_group S
*    pc_mode manual
*    pc_phases abcdef -99.8  141.6    0.2   10.0   22.0  323.8


* ref Yg/e --> just for book keeping

   if station i and f_group S
   pc_phases abcdef 1.2  8.5    -0.2   -16.6   4.0   4.9
   if station i and f_group X
   pc_phases ghijlmn 4.3   -11.0    -1.1   3.0   6.7   3.1 -4.3

   if station L and f_group S
   pc_phases abcdef 2.9   6.6    -3.1   -15.5   4.5   8.7
   if station L and f_group X
   pc_phases ghijklmn -2.7  13.9   6.8   -12.1 -12.2 -38.4 55.1 -2.3

Regards,
 Jamie 

+END
