+HEADER 
CORREL   CRTN 
DATABASE 13DEC15XA
SESSNAME A1315 
UTSTART  1753 
DURATION 24 
DOY      349-350 
CORRTIME 2014/05/26 2014/05/27 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            82%             - 
   0              6%             - 
 4-1,A-H,N       12%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART12 (Hb/L): Ok. 

 HART15M  (Ht/g): Ok. 

 KATH12M  (Ke/i): Ok. 

 YARRA12M (Yg/x): OK. 

 WARK12M  (Ww/W): Manual pcal. Several groups of scans missed throughout 
    experiment while dealing with drive encoder issues. Scans on Ww baselines
    between 350-0317 and 359-0629 were re-fringed with a narrow mbd window 
    to deal with apparent subambuiguity problems. 
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
  WW            5.32         0.00   56641.7452315


+QCODES

Qcod  0 1 2 3 4 5  6  7   8    9 A B C D E F   G H   N -  Tot 
-----------------------------------------------------------------
gL:X 19 0 0 0 0 0  0  0   8  195 0 0 0 0 0 0   9 0   1 0  232 
gL:S 36 0 0 0 0 0  0  2  31  148 0 0 0 0 0 0  14 0   1 0  232 
gi:X 21 0 0 0 0 0  0  1   2  212 0 0 0 0 0 0   0 0   5 0  241 
gi:S 32 0 0 0 0 0  0  2   5  196 0 0 0 0 0 0   1 0   5 0  241 
gW:X 16 0 0 0 0 0  0  0   3  106 0 0 0 0 0 0   0 0  51 0  176 
gW:S 22 0 0 0 0 0  0  3  12   86 0 0 0 0 0 0   2 0  51 0  176 
gx:X 21 0 0 0 0 0  0  1   2  291 0 0 0 0 0 0   0 0   1 0  316 
gx:S 29 0 0 0 0 0  0  1   9  276 0 0 0 0 0 0   0 0   1 0  316 
Li:X 18 0 0 0 0 0  0  6  35  233 0 0 0 0 0 0  27 0   5 0  324 
Li:S  9 0 0 0 0 1  0  0  44  252 0 0 0 0 0 0  13 0   5 0  324 
LW:X  6 0 0 0 0 0  2  1  19  210 0 0 0 0 0 0   6 0  76 0  320 
LW:S 16 0 0 0 0 3  3 11  36  171 0 0 0 0 0 0   4 0  76 0  320 
Lx:X 12 0 0 0 0 0  2  3  26  261 0 0 0 0 0 0   9 0   1 0  314 
Lx:S  7 0 0 0 0 0  0  0  57  236 0 0 0 0 0 0  13 0   1 0  314 
iW:X 17 0 0 0 0 0  0  3  16  168 0 0 0 0 0 0   0 0  73 0  277 
iW:S 18 0 0 0 0 2  2  6  11  163 0 0 0 0 0 0   2 0  73 0  277 
ix:X  6 0 0 1 0 1  1  5  32  279 0 0 0 0 0 0   1 0   6 0  332 
ix:S  4 0 0 0 0 0  0  0   2  319 0 0 0 0 0 0   1 0   6 0  332 
Wx:X 10 0 0 0 0 0  0  3   8  159 0 0 0 0 0 0   0 0  69 0  249 
Wx:S 16 0 0 0 0 1  1  8   6  141 0 0 0 0 0 0   7 0  69 0  249 
-----------------------------------------------------------------
Tot 335 0 0 1 0 8 11 56 364 4102 0 0 0 0 0 0 109 0 576 0 5562 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1255

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.94  212     0.68  190
 gi    0.90  215     0.82  198
 gW    1.00  108     0.69   99
 gx    1.04  294     0.95  282
 Li    1.47  301     0.99  309
 LW    1.76  238     0.89  228
 Lx    1.61  301     1.05  306
 iW    1.51  187     0.96  188
 ix    1.62  320     1.36  322
 Wx    1.64  170     1.05  163


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

*  if station W and f_group X
*    freqs g h i j k l m n+ 
* Channel X8L has low amplitude, leading to many G-codes. 

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn 133.9 -282.7 -0.2 -103.0 -167.8 -229.1 -153.4 -167.2

  if station W and f_group S
    pc_mode manual
    pc_phases abcdef 164.3   -67.3  -293.1  -273.5   -25.8  -195.1

* ref Hb/L --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -6.2    1.0    4.6    3.8    0.1   -7.4
   if station g and f_group X
   pc_phases ghijklmn -9.4    2.5    6.2   23.5   -9.0   -2.0  -14.4    3.3

   if station i and f_group S
   pc_phases abcdef 1.9   -0.2    0.6   -4.6   -1.3    3.6
   if station i and f_group X
   pc_phases ghijklmn -0.5   -0.2    4.2    2.6  -18.3    2.7   -3.2    2.7

   if station x and f_group S
   pc_phases abcdef -0.7   -6.9   -0.0   13.0   -1.2   -6.9
   if station x and f_group X
   pc_phases ghijklmn  2.1    3.9   -1.6   -4.8  -27.9   -8.1   54.7   -9.6

Regards,
 Jamie 

+END
