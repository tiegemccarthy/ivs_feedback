+HEADER 
CORREL   CRTN 
DATABASE 14SEP17XT 
SESSNAME A1411 
UTSTART  0308 
DURATION 24 
DOY      260-261 
CORRTIME 2014/12/23 2014/12/24 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            95%             - 
   0              2%             - 
 4-1,A-H,N        3%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HART15M  (Ht/g): Ok. 

 HOBART12 (Hb/L): Many small clock breaks noted at 0734, 0851, 1105, 1244
  and 1845

 KATH12M  (Ke/i): Ok. 

 WARK12M  (Ww/W): Manual pcal applied.

 YARRA12M (Yg/e): Manual pcal applied. Two solutions were needed with an 
  apparent clock break at 1410

+DROP_CHANNELS
 Ht 
 Hb 
 Ke 
 Ww 
 Yg 

+MANUAL PCAL Ww Yg Yg 

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
  HT           -1.47         0.00   56917.1311690
  KE           -9.25        -0.00   56917.1311690
  YG          -10.75         0.00   56917.1311690
  WW           17.79         0.00   56915.1366319


+QCODES

Qcod  0 1 2 3 4 5 6  7   8    9 A B C D E F  G H   N -  Tot 
---------------------------------------------------------------
Li:X  0 0 0 0 0 1 0  0  84  169 0 0 0 0 0 0  1 0   2 0  257 
Li:S  0 0 0 0 0 1 0  3  18  233 0 0 0 0 0 0  0 0   2 0  257 
Le:X  1 0 0 0 1 0 0  5 138   95 0 0 0 0 0 0  0 0   9 0  249 
Le:S  0 0 0 0 0 0 1  4  66  165 0 0 0 0 0 0  4 0   9 0  249 
Lg:X 11 0 0 0 0 0 0  2  35  160 0 0 0 0 0 0  0 0   0 0  208 
Lg:S 20 0 0 0 0 1 2  6  58  118 0 0 0 0 0 0  3 0   0 0  208 
LW:X  0 0 0 0 0 0 1  3  36  446 0 0 0 0 0 0  1 0  14 0  501 
LW:S  0 0 0 0 1 1 2 11 146  323 0 0 0 0 0 0  3 0  14 0  501 
ie:X  0 0 0 0 0 0 0  1  16  458 0 0 0 0 0 0  0 0  13 0  488 
ie:S  0 0 0 0 0 0 0  1  24  450 0 0 0 0 0 0  0 0  13 0  488 
ig:X 14 0 0 0 0 0 0  0   1  223 0 0 0 0 0 0  0 0   0 0  238 
ig:S 21 0 0 0 0 0 0  0  12  205 0 0 0 0 0 0  0 0   0 0  238 
iW:X  1 0 0 0 0 0 0  2  13  274 0 0 0 0 0 0  0 0   7 0  297 
iW:S  1 0 0 0 0 0 0  1  12  276 0 0 0 0 0 0  0 0   7 0  297 
eg:X  7 0 0 0 0 0 0  0   3  397 0 0 0 0 0 0  0 0  13 0  420 
eg:S 12 0 0 0 0 0 1  8  84  302 0 0 0 0 0 0  0 0  13 0  420 
eW:X  1 0 0 0 0 0 0  0   4  176 0 0 0 0 0 0  0 0   6 0  187 
eW:S  0 0 0 0 0 0 1  9  37  134 0 0 0 0 0 0  0 0   6 0  187 
gW:X 17 0 0 0 0 0 0  0   4  137 0 0 0 0 0 0  0 0   5 0  163 
gW:S 24 0 0 0 0 0 1  3  18  112 0 0 0 0 0 0  0 0   5 0  163 
---------------------------------------------------------------
Tot 130 0 0 0 2 4 9 59 809 4853 0 0 0 0 0 0 12 0 138 0 6016 

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

 Lg    0.76  197     0.75  187
 gi    0.87  224     0.90  214
 gW    1.02  141     0.91  133
 ge    1.01  398     1.07  390
 Li    1.04  255     0.89  255
 LW    1.57  487     1.04  487
 Le    1.22  239     1.03  239
 iW    1.42  289     1.08  289
 ie    1.45  475     1.16  475
 We    1.66  180     1.27  181


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

  if station W and f_group S 
    pc_mode manual
    pc_phases abcdef 169.1 60.9 304.5 311.6 322.4 315.2

  if station W and f_group X 
    pc_mode manual
 pc_phases ghijklmn 144.1 275.4 263.7 128.7 10.9 12.1 357.1 71.2

  if station e and f_group S and scan > 260-141000
    pc_mode manual
    pc_phases abcdef 18.3 186.1 6.1 315.7 64.0 296.8

  if station e and f_group X and scan > 260-141000
    pc_mode manual
 pc_phases ghijklmn 137.8 230.3 173.5 318.2 26.1 11.0 328.6 34.9

  if station e and f_group S and scan < 260-141000
    pc_mode manual
    pc_phases abcdef 14.2 163.0 326.7 243.4 303.2 159.4

  if station e and f_group X and scan < 260-141000
    pc_mode manual
 pc_phases ghijklmn 74.2 144.8 6.7 11.0 200.5 59.2 295.1 332.6


* ref Ke/i --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -6.0 2.7 6.2 4.0 -5.6 0.4
   if station g and f_group X
   pc_phases ghijklmn -2.8 0.6 -1.8 12.5 -5.4 -13.5 41.6 -14.1

   if station L and f_group S
   pc_phases abcdef 3.9 0.1 -3.7 -3.5 -2.0 6.9
   if station L and f_group X
   pc_phases ghijklmn -10.9 25.4 8.6 -12.2 -19.2 -47.3 56.3 4.2


Regards,
 Jamie 

+END
