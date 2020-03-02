+HEADER 
CORREL   CRTN 
DATABASE $14SEP05XA 
SESSNAME A1402 
UTSTART  0356 
DURATION 24 
DOY      248-249 
CORRTIME 2014/11/12 2014/11/13 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            97%             - 
   0              2%             - 
 4-1,A-H,N        1%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HART15M  (Ht/g): Ok. 

 HOBART12 (Hb/L): Small clock break (0.7 ns) at 1716.  

 KATH12M  (Ke/i): Ok. 

 WARK12M  (Ww/W): Manual pcal. 

 YARRA12M (Yg/e): Manual pcal. 

+DROP_CHANNELS
 Ht 
 Hb 
 Ke 
 Ww 
 Yg 

+MANUAL PCAL Yg Ww 

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
  HB          -13.19         0.00   56636.7588889
  HT           -1.52        -0.00   56905.1639352
  KE           -8.94        -0.00   56905.1639352
  YG          -10.71         0.00   56905.1639352
  WW           17.09         0.00   56905.1639352


+QCODES

Qcod  0 1 2 3 4 5 6  7   8    9 A B C D E F  G H  N -  Tot 
--------------------------------------------------------------
Li:X  0 0 0 0 0 0 0  0   3  253 0 0 0 0 0 0  0 0  1 0  257 
Li:S  1 0 0 0 1 0 0  1  39  214 0 0 0 0 0 0  0 0  1 0  257 
Le:X  1 0 0 0 0 0 0  2  61  184 0 0 0 0 0 0  0 0  1 0  249 
Le:S  1 0 0 0 0 0 0  3  64  177 0 0 0 0 0 0  3 0  1 0  249 
Lg:X 12 0 0 0 0 0 0  0  24  172 0 0 0 0 0 0  0 0  0 0  208 
Lg:S 21 0 0 0 0 0 0  4  67  115 0 0 0 0 0 0  1 0  0 0  208 
LW:X  1 0 0 0 0 0 0  9 141  343 0 0 0 0 0 0  3 0  4 0  501 
LW:S  2 0 0 2 0 0 1  9 159  323 0 0 0 0 0 0  1 0  4 0  501 
ie:X  0 0 0 0 0 1 1 15 208  252 0 0 0 0 0 0  9 0  2 0  488 
ie:S  0 0 0 0 0 0 0  1  10  475 0 0 0 0 0 0  0 0  2 0  488 
ig:X 19 0 0 0 0 1 0  0  32  185 0 0 0 0 0 0  1 0  0 0  238 
ig:S 16 0 0 0 0 0 0  0   6  216 0 0 0 0 0 0  0 0  0 0  238 
iW:X  0 0 0 0 0 0 0  7  58  226 0 0 0 0 0 0  3 0  3 0  297 
iW:S  0 0 0 0 0 0 0  0   9  285 0 0 0 0 0 0  0 0  3 0  297 
eg:X  7 0 0 0 0 0 0  0   6  407 0 0 0 0 0 0  0 0  0 0  420 
eg:S 16 0 0 0 0 0 0  1  17  386 0 0 0 0 0 0  0 0  0 0  420 
eW:X  1 0 0 0 0 1 0  4  34  145 0 0 0 0 0 0  0 0  2 0  187 
eW:S  0 0 0 0 0 0 0  0   9  176 0 0 0 0 0 0  0 0  2 0  187 
gW:X 15 0 0 0 0 0 0  0   8  138 0 0 0 0 0 0  0 0  2 0  163 
gW:S 21 0 0 0 0 0 0  0   7  133 0 0 0 0 0 0  0 0  2 0  163 
--------------------------------------------------------------
Tot 134 0 0 2 1 3 2 56 962 4805 0 0 0 0 0 0 21 0 30 0 6016 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1242

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.77  196     0.77  187
 gi    0.77  219     0.93  217
 gW    0.97  146     0.92  136
 ge    1.01  412     1.04  401
 Li    1.33  256     0.93  253
 LW    1.52  496     1.04  495
 Le    1.15  247     0.99  247
 iW    1.20  294     1.12  294
 ie    1.16  485     1.17  486
 We    1.50  184     1.24  185


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

*  if station W and f_group X
*    freqs g h i j k l m n+ 
* Channel X8L has low amplitude, leading to many G-codes. 

  if station e and f_group S
    pc_mode manual
    pc_phases abcdef -87.2  -286.6  -108.5    -7.4  -107.4  -236.1  

  if station e and f_group X
    pc_mode manual
 pc_phases ghijklmn -141.4 -117.1 -208.4 -125.1 -42.3 -318.8 -76.2 -299.4

  if station W and f_group S
    pc_mode manual
    pc_phases abcdef -130.7   -24.4  -285.3  -312.0  -121.0  -268.6 

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn 98.9 -1.7 -179.7 -87.2  -311.5  -217.3  -298.8  -303.0

* ref Hb/L --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -10.0    2.4    6.4    8.4   -2.6   -9.3
   if station g and f_group X
   pc_phases ghijklmn 4.6  -24.9   -9.7   26.5   24.5 44.0 -67.5 -5.4

   if station i and f_group S
   pc_phases abcdef -1.7    0.8    0.8   -0.1    3.9   -4.7
   if station i and f_group X
   pc_phases ghijklmn 3.0   -3.5    0.1    0.2  -15.2   -7.3   45.6  -11.8


Regards,
 Jamie 

+END
