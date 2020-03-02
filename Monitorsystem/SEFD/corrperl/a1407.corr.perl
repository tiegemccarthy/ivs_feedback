+HEADER 
CORREL   CRTN 
DATABASE 14SEP12XA 
SESSNAME A1407 
UTSTART  0328 
DURATION 24 
DOY      255-256 
CORRTIME 2014/11/22 2014/11/23 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            94%             - 
   0              2%             - 
 4-1,A-H,N        4%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HART15M  (Ht/g): Clock break at ~0550. Manual pcal, with separate 
  solutions each side of the break.  

 HOBART12 (Hb/L): Ok. 

 KATH12M  (Ke/i): Ok. 

 WARK12M  (Ww/W): Manual pcal. 

 YARRA12M (Yg/e): Manual pcal. 

+DROP_CHANNELS
 Ht 
 Hb 
 Ke 
 Ww 
 Yg 

+MANUAL PCAL Ww Yg Ht Ht 

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
  HT           -1.44        -0.00   56912.1448264
  KE           -9.15        -0.00   56912.1448264
  YG          -10.73         0.00   56911.1475579
  WW           17.59         0.00   56912.1448264


+QCODES

Qcod  0 1 2 3 4 5 6  7   8    9 A B C D E F  G H   N -  Tot 
---------------------------------------------------------------
Li:X  1 0 0 0 0 0 0  3  68  176 0 0 0 0 0 0  1 0   8 0  257 
Li:S  1 0 0 0 1 0 0  1  20  226 0 0 0 0 0 0  0 0   8 0  257 
Le:X  2 0 0 0 0 0 0  4 113  123 0 0 0 0 0 0  2 0   5 0  249 
Le:S  2 0 0 0 0 0 0  2  58  181 0 0 0 0 0 0  1 0   5 0  249 
Lg:X 11 0 0 0 0 0 0  6  33  142 0 0 0 0 0 0  5 0  11 0  208 
Lg:S 18 0 0 0 0 0 0  5  60  114 0 0 0 0 0 0  0 0  11 0  208 
LW:X  1 0 0 0 0 0 0 17 114  328 0 0 0 0 0 0  4 0  37 0  501 
LW:S  1 0 1 0 1 1 0  3 140  316 0 0 0 0 0 0  1 0  37 0  501 
ie:X  2 0 0 0 0 0 0  7  32  445 0 0 0 0 0 0  0 0   2 0  488 
ie:S  2 0 0 0 0 0 0  0   6  478 0 0 0 0 0 0  0 0   2 0  488 
ig:X 18 0 0 0 0 0 0  0   2  214 0 0 0 0 0 0  0 0   4 0  238 
ig:S 17 0 0 0 0 0 0  1  14  202 0 0 0 0 0 0  0 0   4 0  238 
iW:X  2 0 0 0 0 0 0  8  25  244 0 0 0 0 0 0  0 0  18 0  297 
iW:S  1 0 0 0 0 0 0  0   3  275 0 0 0 0 0 0  0 0  18 0  297 
eg:X  8 0 0 0 0 0 0  0  71  333 0 0 0 0 0 0  0 0   8 0  420 
eg:S 15 0 0 0 0 0 0  7  52  338 0 0 0 0 0 0  0 0   8 0  420 
eW:X  0 0 0 0 0 0 3  6  51  121 0 0 0 0 0 0  0 0   6 0  187 
eW:S  0 0 0 0 0 0 0  1  10  170 0 0 0 0 0 0  0 0   6 0  187 
gW:X 15 0 0 0 0 0 0  0   2  126 0 0 0 0 0 0  0 0  19 0  162 
gW:S 18 0 0 0 0 0 0  3  18  104 0 0 0 0 0 0  0 0  19 0  162 
---------------------------------------------------------------
Tot 135 0 1 0 2 1 3 74 892 4656 0 0 0 0 0 0 14 0 236 0 6014 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1247

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.76  184     0.76  177
 gi    0.87  216     0.88  216
 gW    0.96  128     0.91  121
 ge    1.00  404     1.04  392
 Li    1.04  248     0.88  248
 LW    1.46  463     1.04  463
 Le    1.17  242     1.00  241
 iW    1.33  277     1.07  278
 ie    1.45  484     1.12  484
 We    1.54  181     1.24  181


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
    pc_phases abcdef -16.0 -291.1 -213.1 -270.1 -127.4 -297.7

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn 130.7 -21.4 -322.8 -63.5 -200.6 -246.2 -44.6 -74.2

  if station e and f_group S
    pc_mode manual
    pc_phases abcdef -57.6  -297.9  -163.6  -128.9  -344.3  -178.4

  if station e and f_group X
    pc_mode manual
 pc_phases ghijklmn -125.5 185.8 262.3 40.6 64.3 283.8 52.3 153.8

  if station g and f_group S and scan < 255-061500
    pc_mode manual
    pc_phases abcdef 56.5 169.6 274.7 93.3 356.0 141.0

  if station g and f_group X and scan < 255-061500
    pc_mode manual
 pc_phases ghijklmn 20.2 -212.7 -278.0 -223.9 -212.0 -313.8 -27.8 -116.5

  if station g and f_group S and scan > 255-061500
    pc_mode manual
    pc_phases abcdef -147.2 -230.3 -304.9  -45.6 -274.5 -265.2

  if station g and f_group X and scan > 255-061500
    pc_mode manual
 pc_phases ghijklmn -45.3 -341.2 -224.3 -97.0 -42.9 -22.8 -34.6 -126.2

* ref Hb/L --> just for book keeping

   if station i and f_group S
   pc_phases abcdef -2.3   -0.1    1.4    2.1    3.2   -6.1
   if station i and f_group X
   pc_phases ghijklmn 10.5  -25.4   -8.5   12.3   18.2   47.1  -56.9   -4.0



Regards,
 Jamie 

+END
