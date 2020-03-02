+HEADER 
CORREL   CRTN 
DATABASE 14SEP06XA 
SESSNAME A1403 
UTSTART  0352 
DURATION 24 
DOY      249-250 
CORRTIME 2014/11/11 2014/11/12 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            94%             - 
   0              2%             - 
 4-1,A-H,N        3%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HART15M  (Ht/g): Ok. 

 HOBART12 (Hb/L): Clock break at ~0546.

 KATH12M  (Ke/i): Clock break at 0935. Manual pcal applied, with separate
  solutions either side of the break.  

 WARK12M  (Ww/W): Manual pcal. 

 YARRA12M (Yg/e): Manual pcal. 

+DROP_CHANNELS
 Ht 
 Hb 
 Ke 
 Ww 
 Yg 

+MANUAL PCAL Ww Yg Ke Ke 

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
  HT           -1.50        -0.00   56906.1612037
  KE           -8.99         0.00   56906.1612037
  YG          -10.72         0.00   56906.1612037
  WW           17.17         0.00   56906.1612037


+QCODES

Qcod  0 1 2 3 4 5 6   7    8    9 A B C D E F  G H   N -  Tot 
-----------------------------------------------------------------
Li:X  2 0 0 0 0 0 0  20   42  179 0 0 0 0 0 0  0 0  14 0  257 
Li:S  3 0 0 0 1 0 1   0   28  210 0 0 0 0 0 0  0 0  14 0  257 
Le:X  2 0 0 0 0 0 0   6  126  101 0 0 0 0 0 0  1 0  13 0  249 
Le:S  0 0 0 0 0 0 0   6   61  168 0 0 0 0 0 0  1 0  13 0  249 
Lg:X 14 0 0 0 0 0 0   0   33  154 0 0 0 0 0 0  1 0   6 0  208 
Lg:S 21 0 0 0 0 0 0   4   56  121 0 0 0 0 0 0  0 0   6 0  208 
LW:X  0 0 0 0 0 1 0  17  119  350 0 0 0 0 0 0  2 0  12 0  501 
LW:S  1 0 0 0 1 1 0   7  145  328 0 0 0 0 0 0  6 0  12 0  501 
ie:X  3 0 0 0 0 0 2   8   64  388 0 0 0 0 0 0  0 0  23 0  488 
ie:S  2 0 0 0 0 0 0   0   13  450 0 0 0 0 0 0  0 0  23 0  488 
ig:X 16 0 0 0 0 0 0   0   51  168 0 0 0 0 0 0  0 0   3 0  238 
ig:S 17 0 0 0 0 0 0   1   10  207 0 0 0 0 0 0  0 0   3 0  238 
iW:X  4 0 0 0 0 0 2  24  172   90 0 0 0 0 0 0  0 0   5 0  297 
iW:S  5 0 0 0 0 0 0   1   17  269 0 0 0 0 0 0  0 0   5 0  297 
eg:X  9 0 0 0 0 0 0   1    5  393 0 0 0 0 0 0  0 0  12 0  420 
eg:S 13 0 0 0 0 0 0   0   19  376 0 0 0 0 0 0  0 0  12 0  420 
eW:X  0 0 0 0 0 0 2   7   75   99 0 0 0 0 0 0  0 0   4 0  187 
eW:S  0 0 0 0 0 0 0   2   30  151 0 0 0 0 0 0  0 0   4 0  187 
gW:X 16 0 0 0 0 0 0   0    4  142 0 0 0 0 0 0  0 0   1 0  163 
gW:S 21 0 0 0 0 0 0   0   12  129 0 0 0 0 0 0  0 0   1 0  163 
-----------------------------------------------------------------
Tot 149 0 0 0 2 2 7 104 1082 4473 0 0 0 0 0 0 11 0 186 0 6016 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1243

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.78  188     0.75  179
 gi    0.85  217     0.88  215
 gW    1.01  146     0.91  137
 ge    0.96  398     1.04  392
 Li    1.14  241     0.88  240
 LW    1.58  489     1.03  488
 Le    1.09  234     0.99  236
 iW    1.33  288     1.08  287
 ie    1.27  462     1.14  463
 We    1.51  183     1.25  183


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
    pc_phases abcdef -4.3  -326.3  -289.5   -56.4   -27.6  -258.7

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn 23.1 -257.9 -149.0 -36.7 -137.1 -210.7 -193.9 -283.8

  if station e and f_group S
    pc_mode manual
    pc_phases abcdef 26.8  -167.4  -357.3  -248.5  -337.3  -107.7

  if station e and f_group X
    pc_mode manual
 pc_phases ghijklmn 146.4 -174.2 -220.5 -69.1 -257.9 -113.0 -201.7 -54.7

  if station i and f_group S and scan < 249-100000
    pc_mode manual
    pc_phases abcdef 165.4 122.6 76.2 200.5 19.8 104.1

  if station i and f_group X and scan < 249-100000
    pc_mode manual
 pc_phases ghijklmn -34.2 22.2 51.9 26.6 225.8 234.9 218.9 196.1

  if station i and f_group S and scan > 249-100000
    pc_mode manual
    pc_phases abcdef -12.4 286.7 224.4 306.3 334.7 7.6

  if station i and f_group X and scan > 249-100000
    pc_mode manual
 pc_phases ghijklmn -34.9 -143.3 -30.8 -142.7 -109.4 -67.2 -257.9 -5.2



* ref Hb/L --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -8.9    3.0    5.6    6.9   -3.7   -6.5
   if station g and f_group X
   pc_phases ghijklmn 5.2  -24.4   -9.8   27.3   24.0   43.2  -67.0 -4.5


Regards,
 Jamie 

+END
