+HEADER 
CORREL   CRTN 
DATABASE 14SEP11XA
SESSNAME A1406 
UTSTART  0332 
DURATION 24 
DOY      254-255 
CORRTIME 2014/11/21 2014/11/22 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            91%             - 
   0              5%             - 
 4-1,A-H,N        4%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HART15M  (Ht/g): Possible clock break 0915.

 HOBART12 (Hb/L): Clock breaks at 1315, 1545 and 1808. 

 KATH12M  (Ke/i): Possible clock break at 1058.

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
  HT           -1.48        -0.00   56911.1475579
  KE           -9.13        -0.00   56911.1475579
  YG          -10.73         0.00   56911.1475579
  WW           17.52         0.00   56911.1475579


+QCODES

Qcod  0 1 2 3 4 5 6  7   8    9 A B C D E F  G H   N -  Tot 
---------------------------------------------------------------
Li:X 11 0 0 0 0 0 1  3  38  194 0 0 0 0 0 0  1 0   9 0  257 
Li:S 13 0 0 0 1 0 0  1  20  211 0 0 0 0 0 0  2 0   9 0  257 
Le:X  1 0 0 0 0 0 1  2  70  166 0 0 0 0 0 0  0 0   9 0  249 
Le:S  1 0 0 0 0 0 0  4  69  165 0 0 0 0 0 0  1 0   9 0  249 
Lg:X 18 0 0 0 0 0 0  0   7  176 0 0 0 0 0 0  0 0   7 0  208 
Lg:S 23 0 0 0 0 0 0  1  60  114 0 0 0 0 0 0  3 0   7 0  208 
LW:X  0 0 0 0 0 0 1 19 121  353 0 0 0 0 0 0  4 0   3 0  501 
LW:S  0 0 0 1 1 1 0  4 150  340 0 0 0 0 0 0  1 0   3 0  501 
ie:X 16 0 0 0 0 0 1  2  18  414 0 0 0 0 0 0  0 0  37 0  488 
ie:S 16 0 0 0 0 0 0  0   5  429 0 0 0 0 0 0  1 0  37 0  488 
ig:X 28 0 0 0 0 0 0  0   0  195 0 0 0 0 0 0  0 0  15 0  238 
ig:S 34 0 0 0 0 0 0  0  12  177 0 0 0 0 0 0  0 0  15 0  238 
iW:X 10 0 0 0 0 0 0  3  12  260 0 0 0 0 0 0  0 0  12 0  297 
iW:S 10 0 0 0 0 0 0  0   8  267 0 0 0 0 0 0  0 0  12 0  297 
eg:X 23 0 0 0 0 0 1  0   0  380 0 0 0 0 0 0  0 0  16 0  420 
eg:S 35 0 0 0 0 0 0  3  23  343 0 0 0 0 0 0  0 0  16 0  420 
eW:X  0 0 0 0 0 0 0  5  62  117 0 0 0 0 0 0  0 0   3 0  187 
eW:S  0 0 0 0 0 0 0  0  17  167 0 0 0 0 0 0  0 0   3 0  187 
gW:X 26 0 0 0 0 0 0  0   4  126 0 0 0 0 0 0  0 0   6 0  162 
gW:S 30 0 0 0 0 0 0  2   9  115 0 0 0 0 0 0  0 0   6 0  162 
---------------------------------------------------------------
Tot 295 0 0 1 2 1 5 49 705 4709 0 0 0 0 0 0 13 0 234 0 6014 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1246

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.84  182     0.77  175
 gi    0.88  195     0.90  186
 gW    0.98  130     0.93  123
 ge    1.02  381     1.06  367
 Li    1.09  237     0.90  235
 LW    1.53  498     1.04  497
 Le    1.20  239     1.01  239
 iW    1.37  275     1.07  275
 ie    1.48  435     1.12  435
 We    1.58  184     1.24  184


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

  if station e and f_group S
    pc_mode manual
    pc_phases abcdef 86.2  -119.9  -314.6  -229.6 -0.9  -165.5

  if station e and f_group X
    pc_mode manual
 pc_phases ghijklmn 113.1 -232.3 -337.1 -289.9 -244.7 -182.3 -310.9 -169.4

  if station W and f_group S
    pc_mode manual
    pc_phases abcdef -179.5   -88.0  -352.9   -35.8  -210.9   -15.1 

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn -88.0 -204.8 -55.1 -22.1 -321.0 -269.3 -11.7 -19.9

* ref Hb/L --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -8.8    3.4    6.5    6.9   -3.6   -6.5
   if station g and f_group X
   pc_phases ghijklmn  1.7  -21.3   -8.2   28.4   21.6   37.7  -72.7   -0.9


   if station i and f_group S
   pc_phases abcdef -3.1    0.9    3.5    2.0    0.9   -3.3
   if station i and f_group X
   pc_phases ghijklmn 9.8  -24.7   -8.3   12.9   19.9   46.4  -56.8   -3.2



Regards,
 Jamie 

+END
