+HEADER 
CORREL   CRTN 
DATABASE  
SESSNAME A1310 
UTSTART  1816 
DURATION 24 
DOY      343-344 
CORRTIME 2013/04/14 2013/04/15 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            86%             - 
   0             10%             - 
 4-1,A-H,N        5%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART12 (Hb/L): Ok.

 HART15M  (Ht/g): Ok.

 KATH12M  (Ke/i): Ok.

 YARRA12M (Yg/x): Ok.

 WARK12M  (Ww/W): Manual phasecal. Missing data between 343-2130 and 343-2310. Two clock breaks at 343-220000 and 344-064000 which required separate pcal solutions. 

+DROP_CHANNELS
 Hb 
 Ht 
 Ke 
 Yg 
 Ww 

+MANUAL PCAL Ww Ww Ww 

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
  HB          -10.19         0.00   56634.7643519
  HT           -0.13        -0.00   56634.7643519
  KE           -8.79         0.00   56634.7643519
  YG           -7.44         0.00   56634.7643519
  WW            5.16         0.00   56634.7643519


+QCODES

Qcod  0 1 2 3 4 5 6  7   8    9 A B C D E F   G H  N -  Tot 
---------------------------------------------------------------
gL:X 23 0 0 0 0 0 0  0   1  187 0 0 0 0 0 0   2 0  1 0  214 
gL:S 36 0 0 0 0 0 0  3  31  129 0 0 0 0 0 0  14 0  1 0  214 
gi:X 22 0 0 0 0 0 0  0   6  198 0 0 0 0 0 0   0 0  1 0  227 
gi:S 27 0 0 0 0 0 0  0   6  193 0 0 0 0 0 0   0 0  1 0  227 
gW:X 81 0 0 0 0 0 0  0   1   90 0 0 0 0 0 0   0 0  7 0  179 
gW:S 35 0 0 0 0 0 0  6  10  121 0 0 0 0 0 0   0 0  7 0  179 
gx:X 27 0 0 0 0 0 0  0   2  283 0 0 0 0 0 0   1 0  2 0  315 
gx:S 22 0 0 0 0 0 0  0  12  278 0 0 0 0 0 0   1 0  2 0  315 
Li:X  4 0 0 0 0 1 2  9  49  185 0 0 0 0 0 0  12 0  4 0  266 
Li:S  8 0 1 0 0 0 3  3  57  168 0 0 0 0 0 0  22 0  4 0  266 
LW:X 30 0 0 0 0 0 0  4  16  181 0 0 0 0 0 0  10 0 10 0  251 
LW:S 18 0 0 0 0 0 0  3  67  115 0 0 0 0 0 0  38 0 10 0  251 
Lx:X  8 0 0 0 0 0 0  7  36  181 0 0 0 0 0 0  16 0  3 0  251 
Lx:S  9 0 0 0 2 0 0  0  66  139 0 0 0 0 0 0  32 0  3 0  251 
iW:X 42 0 0 0 0 0 0  2   9  172 0 0 0 0 0 0   0 0  7 0  232 
iW:S 21 0 0 0 0 0 1  0   7  196 0 0 0 0 0 0   0 0  7 0  232 
ix:X  2 0 0 0 0 2 2  2  43  244 0 0 0 0 0 0   0 0  0 0  295 
ix:S  4 0 0 0 0 0 0  0  10  281 0 0 0 0 0 0   0 0  0 0  295 
Wx:X 34 0 0 0 0 0 0  0   5  171 0 0 0 0 0 0   0 0  8 0  218 
Wx:S 17 0 0 0 0 0 0  0   3  189 0 0 0 0 0 0   1 0  8 0  218 
---------------------------------------------------------------
Tot 470 0 1 0 2 3 8 39 437 3701 0 0 0 0 0 0 149 0 86 0 4896 

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

 Lg    0.88  190     0.60  175
 gi    0.76  204     0.71  193
 gW    0.68   88     0.70  134
 gx    0.97  286     0.81  288
 Li    1.54  258     0.99  254
 LW    1.21  210     1.04  222
 Lx    1.87  240     1.07  239
 iW    0.99  182     1.09  203
 ix    1.78  293     1.40  291
 Wx    1.14  176     1.18  192


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


  if station W and f_group X and scan < 343-220000
    pc_mode manual
 pc_phases ghijklmn -177.7  87.0   -98.9   -16.5   -77.7   -43.7   -99.7  -150.5

  if station W and f_group S and scan < 343-220000
    pc_mode manual
    pc_phases abcdef -59.5   -53.3   -35.2  -204.1  -292.7  -206.2 

  if station W and f_group X and scan 343-220000 to 344-064000
    pc_mode manual
 pc_phases ghijklmn -145.6   -35.9 234.4 327.0 310.7 305.9 231.4 264.2

  if station W and f_group S and scan 343-220000 to 344-064000
    pc_mode manual
    pc_phases abcdef -60.7  -277.6  -117.5   -71.7  -122.4  -277.3

  if station W and f_group X and scan >	344-064000
    pc_mode manual
 pc_phases ghijklmn 49.5 231.7   8.9  91.9 211.1 109.5 169.3 271.9

  if station W and f_group S and scan > 344-064000
    pc_mode manual
    pc_phases abcdef -57.7  -209.6  -358.6  -211.1  -110.8  -193.4


* ref Hb/L --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -8.2    0.6    5.9    7.2   -1.2   -8.8
   if station g and f_group X
   pc_phases ghijklmn -9.0    2.0    5.0   24.5   -8.8   -1.4  -14.2    3.3

   if station i and f_group S
   pc_phases abcdef -0.5   -0.2    2.4   -2.4   -0.9    1.9
   if station i and f_group X
   pc_phases ghijklmn -1.8    0.6    4.1    3.9  -15.5   -0.0   -2.3    3.3

   if station x and f_group S
   pc_phases abcdef -0.7   -7.1    0.5   14.0   -1.9   -8.1
   if station x and f_group X
   pc_phases ghijklmn 0.1    5.5    0.0   -2.8  -26.4   -9.3   53.6   -9.7

Regards,
 Jamie 

+END
