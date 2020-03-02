+HEADER 
CORREL   CRTN 
DATABASE  
SESSNAME A1312 
UTSTART  1808 
DURATION 24 
DOY      345-346 
CORRTIME 2014/05/07 2014/05/08 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            88%             - 
   0             10%             - 
 4-1,A-H,N        2%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART12 (Hb/L): Ok.

 HART15M  (Ht/g): Ok.

 KATH12M  (Ke/i): Ok. 

 YARRA12M (Yg/x): Ok. 

 WARK12M  (Ww/W): Manual pcal. Some non-detections near to start of experiment.

+DROP_CHANNELS
 Hb 
 Ht 
 Ke 
 Yg 
 Ww 

+MANUAL PCAL Ww 

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
  HT           -0.21        -0.00   56636.7588889
  KE           -8.79         0.00   56636.7588889
  YG           -7.41         0.00   56636.7588889
  WW            5.11         0.00   56636.7588889


+QCODES

Qcod  0 1 2 3 4 5 6  7   8    9 A B C D E F   G H N -  Tot 
--------------------------------------------------------------
gL:X 16 0 0 0 0 0 0  3  12  172 0 0 0 0 0 0  11 0 0 0  214 
gL:S 31 0 0 0 0 0 0  2  37  136 0 0 0 0 0 0   8 0 0 0  214 
gi:X 13 0 0 0 0 0 0  0   7  207 0 0 0 0 0 0   0 0 0 0  227 
gi:S 31 0 0 0 0 0 0  0   8  188 0 0 0 0 0 0   0 0 0 0  227 
gW:X120 0 0 0 0 0 0  0   0   58 0 0 0 0 0 0   1 0 0 0  179 
gW:S 31 0 0 0 0 0 0  1  10  137 0 0 0 0 0 0   0 0 0 0  179 
gx:X 16 0 0 0 0 0 0  1  11  287 0 0 0 0 0 0   0 0 0 0  315 
gx:S 22 0 0 0 0 0 0  1  15  277 0 0 0 0 0 0   0 0 0 0  315 
Li:X  4 0 0 0 0 0 0  9  37  200 0 0 0 0 0 0  16 0 0 0  266 
Li:S  7 0 0 0 1 0 1  4  60  174 0 0 0 0 0 0  19 0 0 0  266 
LW:X 44 0 0 0 0 0 0  1  18  184 0 0 0 0 0 0   4 0 0 0  251 
LW:S  1 0 0 0 0 1 0  2  96  138 0 0 0 0 0 0  13 0 0 0  251 
Lx:X  9 0 0 0 0 0 2  3  36  189 0 0 0 0 0 0  12 0 0 0  251 
Lx:S 10 0 0 0 1 0 1  2  74  142 0 0 0 0 0 0  21 0 0 0  251 
iW:X 55 0 0 0 0 0 0  0   3  174 0 0 0 0 0 0   0 0 0 0  232 
iW:S  9 0 0 0 0 0 0  2   5  216 0 0 0 0 0 0   0 0 0 0  232 
ix:X  3 0 0 0 0 1 1  5  23  262 0 0 0 0 0 0   0 0 0 0  295 
ix:S  3 0 0 0 0 0 0  0   2  290 0 0 0 0 0 0   0 0 0 0  295 
Wx:X 49 0 0 0 0 0 0  0   4  165 0 0 0 0 0 0   0 0 0 0  218 
Wx:S  8 0 0 0 0 0 0  1  10  198 0 0 0 0 0 0   1 0 0 0  218 
--------------------------------------------------------------
Tot 482 0 0 0 2 2 5 37 468 3794 0 0 0 0 0 0 106 0 0 0 4896 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1252

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.92  197     0.60  179
 gi    0.83  213     0.71  192
 gW    0.63   58     0.70  144
 gx    1.04  296     0.81  288
 Li    1.55  262     0.99  259
 LW    0.85  206     1.05  250
 Lx    1.86  242     1.09  239
 iW    0.70  176     1.09  223
 ix    1.84  292     1.40  292
 Wx    0.81  169     1.16  210


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


  if f_group X
    ref_freq 8212.99
    freqs g h i j k l m n
    pc_freqs ghijklmn 9010 9010 9010 9010 9010 9010 9010 9010

  if f_group S
    ref_freq 2225.99
    freqs a b c d e f 
    pc_freqs abcdef 3010 3010 3010 3010 3010 3010


  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn 119.1  -128.9 223.1  82.7 248.7 343.3 314.3  28.1 

  if station W and f_group S
    pc_mode manual
    pc_phases abcdef 111.9   -74.6  -261.6  -174.9  -165.1  -303.1

* ref Hb/L --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -10.0    0.3    7.0    7.4    0.9   -9.2
   if station g and f_group X
   pc_phases ghijklmn -9.0    2.3    6.0   23.2   -7.8   -2.0  -13.8    3.3

   if station i and f_group S
   pc_phases abcdef 0.5   -0.4    2.8   -2.9   -1.1    2.5
   if station i and f_group X
   pc_phases ghijklmn -1.9    0.3    4.7    3.4  -16.7    1.4   -1.6    2.5

   if station x and f_group S
   pc_phases abcdef -0.2   -7.3    0.5   14.9   -4.6   -6.3
   if station x and f_group X
   pc_phases ghijklmn 1.7    4.3   -1.5   -2.9  -28.6   -9.1   53.3   -8.9

Regards,
 Jamie 

+END
