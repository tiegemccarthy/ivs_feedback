+HEADER 
CORREL   CRTN 
DATABASE 14SEP07XA 
SESSNAME A1404 
UTSTART  0348 
DURATION 24 
DOY      250-251 
CORRTIME 2014/11/14 2014/11/15 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            87%             - 
   0             10%             - 
 4-1,A-H,N        3%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HART15M  (Ht/g): Ok. 

 HOBART12 (Hb/L): Ok. 

 KATH12M  (Ke/i): Ok. 

 WARK12M  (Ww/W): Manual pcal. 

 YARRA12M (Yg/e): Manual pcal. Windstowed 1800-2200.

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
  HT           -1.52        -0.00   56907.1584722
  KE           -9.04        -0.00   56907.1584722
  YG          -10.71         0.00   56905.1639352
  WW           17.24         0.00   56907.1584722


+QCODES

Qcod  0 1 2 3 4 5 6  7   8    9 A B C D E F  G H   N -  Tot 
---------------------------------------------------------------
Li:X  0 0 0 0 0 1 0  1  63  188 0 0 0 0 0 0  1 0   3 0  257 
Li:S  1 0 0 0 1 0 1  2  30  218 0 0 0 0 0 0  1 0   3 0  257 
Le:X 47 0 0 0 0 0 0  8  83  106 0 0 0 0 0 0  2 0   2 0  248 
Le:S 48 0 0 0 0 0 0  1  54  137 0 0 0 0 0 0  6 0   2 0  248 
Lg:X 12 0 0 0 0 0 0  0  18  178 0 0 0 0 0 0  0 0   0 0  208 
Lg:S 17 0 0 0 0 0 1  2  61  127 0 0 0 0 0 0  0 0   0 0  208 
LW:X  0 0 0 0 0 1 0 23 121  334 0 0 0 0 0 0  3 0  19 0  501 
LW:S  0 0 0 0 2 0 1 14 156  301 0 0 0 0 0 0  8 0  19 0  501 
ie:X 78 0 0 0 0 0 2  8  40  348 0 0 0 0 0 0  0 0  11 0  487 
ie:S 78 0 0 0 0 0 0  0   3  395 0 0 0 0 0 0  0 0  11 0  487 
ig:X 13 0 0 0 0 0 0  0   0  222 0 0 0 0 0 0  0 0   3 0  238 
ig:S 20 0 0 0 0 0 0  0   2  213 0 0 0 0 0 0  0 0   3 0  238 
iW:X  0 0 0 0 0 0 1  0  18  265 0 0 0 0 0 0  0 0  13 0  297 
iW:S  1 0 0 0 0 0 0  1   7  275 0 0 0 0 0 0  0 0  13 0  297 
eg:X 84 0 0 0 0 0 0  0  10  322 0 0 0 0 0 0  0 0   4 0  420 
eg:S 90 0 0 0 0 0 0  0  14  312 0 0 0 0 0 0  0 0   4 0  420 
eW:X 36 0 0 0 0 0 0  6  47   92 0 0 0 0 0 0  0 0   6 0  187 
eW:S 35 0 0 0 0 0 0  0   5  141 0 0 0 0 0 0  0 0   6 0  187 
gW:X 17 0 0 0 0 0 0  0   2  139 0 0 0 0 0 0  0 0   5 0  163 
gW:S 19 0 0 0 0 0 0  0  10  129 0 0 0 0 0 0  0 0   5 0  163 
---------------------------------------------------------------
Tot 596 0 0 0 3 2 6 66 744 4442 0 0 0 0 0 0 21 0 132 0 6012 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1244

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.76  196     0.76  186
 gi    0.89  221     0.89  213
 gW    1.05  141     0.91  137
 ge    0.97  332     1.05  325
 Li    1.10  254     0.89  252
 LW    1.62  482     1.04  482
 Le    1.06  199     0.99  198
 iW    1.47  284     1.09  283
 ie    1.31  398     1.14  398
 We    1.50  145     1.24  146


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
    pc_phases abcdef 63.8  -246.1  -193.9  -294.0  -214.1 -71.8 

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn -174.0 -66.5 -248.8 -22.4 -332.0 -315.3 -257.2 -338.4

  if station e and f_group S
    pc_mode manual
    pc_phases abcdef 171.4 -81.9 -313.0 -282.9 -145.7 -345.0

  if station e and f_group X
    pc_mode manual
 pc_phases ghijklmn -114.0 192.7 263.3 29.3 29.6 246.8 11.4 113.5

* ref Hb/L --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -8.5    2.8    5.7    6.0   -3.4   -6.4
   if station g and f_group X
   pc_phases ghijklmn 4.0  -25.0   -9.8   29.2   23.8   43.3  -66.1   -5.5

   if station i and f_group S
   pc_phases abcdef -0.2    1.3   -0.6   -1.2    3.1   -3.9
   if station i and f_group X
   pc_phases ghijklmn 10.6  -25.3   -8.8   11.7   17.6   45.8  -58.1 -2.5


Regards,
 Jamie 

+END
