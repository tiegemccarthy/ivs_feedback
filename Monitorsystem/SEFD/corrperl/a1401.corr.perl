+HEADER 
CORREL   CRTN 
DATABASE 14SEP04XA 
SESSNAME A1401 
UTSTART  0400 
DURATION 24 
DOY      247-248 
CORRTIME 2014/11/08 2014/11/09 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            92%             - 
   0              3%             - 
 4-1,A-H,N        5%             - 
 Removed          -              - 

+CORRELATOR_NOTES
Manual pcal used for all stations to deal with known clock break at Hobart,
absent pcal at Yarragadee and weak channels at Ke. 

+STATION_NOTES

 HART15M  (Ht/g): Ok. 

 HOBART12 (Hb/L): Manual pcal. Strong RFI in SR5U and SR6U. DBBC error 
  caused a clock break at 2057. Data between 2058 and 2312 should be 
  de-selected as it has a large clock drift.   

 KATH12M  (Ke/i): Manual pcal. Some G-codes in X-band due to weak channels
  (X1RU and XR8U). This affected the Ke-Yg baseline 

 WARK12M  (Ww/W): Manual pcal. 

 YARRA12M (Yg/e): Manual pcal. 

+DROP_CHANNELS
 Ht 
 Hb 
 Ke 
 Ww 
 Yg 

+MANUAL PCAL Ww Hb Hb Hb Ke Yg 

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
  HT           -1.50        -0.00   56904.1666667
  KE           -8.91         0.00   56900.0000000
  YG          -10.69         0.00   56900.0000000
  WW           17.01         0.00   56904.1666667


+QCODES

Qcod  0 1 2 3 4 5 6   7   8    9 A B C D E F  G H   N -  Tot 
----------------------------------------------------------------
Li:X  8 0 0 0 0 0 1  73  58   86 0 0 0 0 0 0 11 0  20 0  257 
Li:S  8 0 0 0 1 0 0   7  31  190 0 0 0 0 0 0  0 0  20 0  257 
Le:X  7 0 0 0 0 0 0   0  11  212 0 0 0 0 0 0  1 0  18 0  249 
Le:S  7 0 0 0 0 0 0   4  45  175 0 0 0 0 0 0  0 0  18 0  249 
Lg:X 12 0 0 0 0 0 0   0   8  174 0 0 0 0 0 0  0 0  14 0  208 
Lg:S 21 0 0 0 0 0 0   6  49  118 0 0 0 0 0 0  0 0  14 0  208 
LW:X 12 0 0 0 0 0 1   2  31  434 0 0 0 0 0 0  1 0  20 0  501 
LW:S 13 0 0 1 1 0 1  14 126  325 0 0 0 0 0 0  0 0  20 0  501 
ie:X  1 0 0 0 0 0 4 113 147  166 0 0 0 0 0 0 30 0  27 0  488 
ie:S  0 0 0 0 0 0 0   1  14  446 0 0 0 0 0 0  0 0  27 0  488 
ig:X 18 0 0 0 0 0 0  18  34  152 0 0 0 0 0 0  5 0  11 0  238 
ig:S 14 0 0 0 0 0 0   0  12  201 0 0 0 0 0 0  0 0  11 0  238 
iW:X  0 0 0 0 0 0 0  12  51  227 0 0 0 0 0 0  0 0   7 0  297 
iW:S  0 0 0 0 0 0 0   1  11  278 0 0 0 0 0 0  0 0   7 0  297 
eg:X  8 0 0 0 0 0 0   0   1  400 0 0 0 0 0 0  0 0  11 0  420 
eg:S 17 0 0 0 0 0 0   1  14  377 0 0 0 0 0 0  0 0  11 0  420 
eW:X  0 0 0 0 0 0 0   0   8  176 0 0 0 0 0 0  0 0   3 0  187 
eW:S  0 0 0 0 0 0 0   0   5  179 0 0 0 0 0 0  0 0   3 0  187 
gW:X 18 0 0 0 0 0 0   0   1  140 0 0 0 0 0 0  0 0   3 0  162 
gW:S 23 0 0 0 0 0 0   1  11  124 0 0 0 0 0 0  0 0   3 0  162 
----------------------------------------------------------------
Tot 187 0 0 1 2 0 7 253 668 4580 0 0 0 0 0 0 48 0 268 0 6014 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1241

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.90  182     0.75  173
 gi    0.77  209     0.93  210
 gW    0.99  140     0.92  133
 ge    1.03  401     1.05  389
 Li    1.07  229     0.91  228
 LW    1.67  468     1.03  468
 Le    1.40  224     0.98  223
 iW    1.18  290     1.11  290
 ie    1.17  460     1.19  461
 We    1.56  184     1.24  184


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

  if station W and f_group S
    pc_mode manual
    pc_phases abcdef -68.0 207.4 131.6 198.5 317.0 344.9

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn -4.2 33.6 159.7 5.5 118.2 216.6 65.3 86.3

* ref Ht/g --> just for book keeping

  if station L and f_group S and scan < 247-220400
    pc_mode manual
    pc_phases abcdef  -5.1  283.2  232.5  333.9   24.8   78.4

  if station L and f_group X and scan < 247-220400
    pc_mode manual
 pc_phases ghijklmn -156.9  183.4  234.2  301.6   65.3  263.7  115.5  156.6

  if station L and f_group S and scan 247-220400 to 247-231200
    pc_mode manual
    pc_phases abcdef -178.8   73.6  346.9   42.2   34.8   63.6

  if station L and f_group X and scan 247-220400 to 247-231200
    pc_mode manual
 pc_phases ghijklmn 58.2  -59.8 -293.6 -319.4 -172.7  -29.9  -38.8  -78.8

  if station L and f_group S and scan > 247-231200
    pc_mode manual
    pc_phases abcdef -116.9 -224.5 -311.8  -87.0 -150.4 -158.5

  if station L and f_group X and scan > 247-231200
    pc_mode manual
 pc_phases ghijklmn -59.6  -74.4 -323.0  -86.9 -296.9  -44.0 -172.6 -319.7


  if station i and f_group S
    pc_mode manual
    pc_phases abcdef -167.5   -71.1  -322.3  -332.4  -152.5  -261.5

  if station i and f_group X
    pc_mode manual
 pc_phases ghijklmn 105.9 -89.5 -14.5 -332.7 -337.2 -274.1 -151.2 -254.0

  if station e and f_group S
    pc_mode manual
    pc_phases abcdef  75.9 205.1 347.5 231.0 248.7  78.3

  if station e and f_group X
    pc_mode manual
 pc_phases ghijklmn 144.7 252.3 103.1 3.1 202.4 66.3 313.2 242.5


Regards,
 Jamie 

+END
