+HEADER 
CORREL   CRTN 
DATABASE 14SEP15XA 
SESSNAME A1410 
OBSTIME  2014/09/15 2014/09/15 
UTSTART  0316 
DURATION 1 
DOY      258 
CORRTIME 2014/12/21 2014/12/22 
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

 HART15M  (Ht/g): Station reports likely clock breaks at 0650 and 1235.  

 HOBART12 (Hb/L): ~3ns Clock break at 1243. Smaller clock breaks apparent
 at ~0957 and 1130.

 KATH12M  (Ke/i): Ok. 

 WARK12M  (Ww/W): Manual pcal. 

 YARRA12M (Yg/e): Manual pcal.

+DROP_CHANNELS
 Ht 
 Hb 
 Ke 
 Ww 
 Yg 

+MANUAL PCAL Ww Yg 

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
  HT           -1.48         0.00   56915.1366319
  KE           -9.18        -0.00   56914.1393634
  YG          -10.73         0.00   56911.1475579
  WW           17.79         0.00   56915.1366319


+QCODES

Qcod 0 1 2 3 4 5 6  7   8    9 A B C D E F G H  N -  Tot 
------------------------------------------------------------
Li:X 0 0 0 0 0 0 0  0  29  106 0 0 0 0 0 0 1 0  3 0  139 
Li:S 0 0 0 0 0 0 0  1  15  120 0 0 0 0 0 0 0 0  3 0  139 
Le:X 1 0 0 0 0 0 0  2  52   69 0 0 0 0 0 0 0 0  6 0  130 
Le:S 0 0 0 0 0 0 0  0  24   98 0 0 0 0 0 0 2 0  6 0  130 
Lg:X 5 0 0 0 0 0 0  2   7   84 0 0 0 0 0 0 0 0  0 0   98 
Lg:S12 0 0 0 0 2 0  2  31   51 0 0 0 0 0 0 0 0  0 0   98 
LW:X 0 0 0 0 0 0 0  1  45  239 0 0 0 0 0 0 0 0  1 0  286 
LW:S 0 0 0 1 0 0 1  5  92  184 0 0 0 0 0 0 2 0  1 0  286 
ie:X 0 0 0 0 0 0 0  2  16  225 0 0 0 0 0 0 0 0 15 0  258 
ie:S 2 0 0 0 0 0 0  1   6  234 0 0 0 0 0 0 0 0 15 0  258 
ig:X 6 0 0 1 0 0 0  0   0  100 0 0 0 0 0 0 0 0  0 0  107 
ig:S 9 0 0 0 0 0 0  0   4   94 0 0 0 0 0 0 0 0  0 0  107 
iW:X 0 0 0 0 0 0 1  0  15  137 0 0 0 0 0 0 0 0  1 0  154 
iW:S 0 0 0 0 0 0 0  0   4  149 0 0 0 0 0 0 0 0  1 0  154 
eg:X 6 0 1 0 0 0 0  1   4  191 0 0 0 0 0 0 0 0  8 0  211 
eg:S11 0 0 0 0 0 0  3   9  180 0 0 0 0 0 0 0 0  8 0  211 
eW:X 0 0 0 0 0 0 0  0   2   83 0 0 0 0 0 0 0 0  2 0   87 
eW:S 0 0 0 0 0 0 0  0   4   81 0 0 0 0 0 0 0 0  2 0   87 
gW:X10 0 0 0 0 0 0  1   2   72 0 0 0 0 0 0 0 0  1 0   86 
gW:S14 0 0 0 0 0 1  1  10   59 0 0 0 0 0 0 0 0  1 0   86 
------------------------------------------------------------
Tot 76 0 1 2 0 2 3 22 371 2556 0 0 0 0 0 0 5 0 74 0 3112 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1250

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.75   92     0.76   86
 gi    0.90  101     0.92   96
 gW    1.03   75     0.94   70
 ge    1.07  197     1.05  191
 Li    0.99  136     0.84  135
 LW    1.53  285     1.01  285
 Le    1.08  123     0.92  124
 iW    1.37  153     1.05  153
 ie    1.34  243     1.10  241
 We    1.63   85     1.26   85


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
    pc_phases abcdef -54.1 -1.8 -315.6 -75.4 -26.1 -232.8

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn 64.0 -187.3 -77.1 -312.3 -10.7 -92.2 -320.9 -78.8

  if station e and f_group S
    pc_mode manual
    pc_phases abcdef 163.4 117.5 88.9 228.5 315.8 329.6

  if station e and f_group X
    pc_mode manual
 pc_phases ghijklmn -65.6 -194.8 -237.5 -216.9 -300.3 -88.6 -208.7 -39.1

* ref Ke/i --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -6.5 3.2 6.6 1.7 -5.4 0.8 
   if station g and f_group X
   pc_phases ghijklmn -2.1 0.9 -3.3 11.6 -5.8 -12.7 42.2 -14.3

   if station L and f_group S
   pc_phases abcdef 2.1 -1.4 0.1 -1.3 -6.4 5.6
   if station L and f_group X
   pc_phases ghijklmn -11.2 25.4 8.3 -11.7 -18.4 -49.0 57.7 3.6

*   if station e and f_group S
*   pc_phases abcdef 
*   if station e and f_group X
*   pc_phases ghijklmn 

Regards,
 Jamie 

+END
