+HEADER 
CORREL   CRTN 
DATABASE  
SESSNAME A1314 
UTSTART  1757 
DURATION 24 
DOY      348-349 
CORRTIME 2014/05/28 2014/05/29 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            86%             - 
   0              5%             - 
 4-1,A-H,N        9%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART12 (Hb/L): Ok.

 HART15M  (Ht/g): Ok

 KATH12M  (Ke/i): Ok.

 YARRA12M (Yg/x): Ok

 WARK12M  (Ww/W): Manual pcal. No data recorded before scan 348/2214. 

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
  WW            5.26         0.00   56639.7939931


+QCODES

Qcod  0 1 2 3 4 5  6  7   8    9 A B C D E F   G H   N -  Tot 
-----------------------------------------------------------------
gL:X 20 0 0 0 0 0  0  0   8  182 0 0 0 0 0 0   4 0   0 0  214 
gL:S 33 0 0 0 0 0  1  0  34  133 0 0 0 0 0 0  13 0   0 0  214 
gi:X 16 0 0 0 0 0  0  0   9  201 0 0 0 0 0 0   0 0   1 0  227 
gi:S 32 0 0 0 0 0  0  1   4  189 0 0 0 0 0 0   0 0   1 0  227 
gW:X 21 0 0 0 0 0  0  2   7  116 0 0 0 0 0 0   0 0  33 0  179 
gW:S 21 0 0 0 0 1  0  2   6  116 0 0 0 0 0 0   0 0  33 0  179 
gx:X 17 0 0 0 0 0  0  0  10  288 0 0 0 0 0 0   0 0   0 0  315 
gx:S 27 0 0 0 0 0  0  0  13  274 0 0 0 0 0 0   1 0   0 0  315 
Li:X  6 0 0 0 0 1  3  6  35  197 0 0 0 0 0 0  17 0   1 0  266 
Li:S  7 0 0 0 0 1  1  3  55  172 0 0 0 0 0 0  26 0   1 0  266 
LW:X  1 0 0 0 0 1  5  1  37  161 0 0 0 0 0 0   4 0  41 0  251 
LW:S  0 0 0 0 0 1  1  4  81   94 0 0 0 0 0 0  29 0  41 0  251 
Lx:X  8 0 0 0 0 0  0  5  27  187 0 0 0 0 0 0  24 0   0 0  251 
Lx:S 10 0 0 0 2 0  0  2  82  132 0 0 0 0 0 0  23 0   0 0  251 
iW:X  4 0 0 0 0 0  1  8  20  160 0 0 0 0 0 0   0 0  39 0  232 
iW:S  6 0 0 0 0 0  1  0   5  181 0 0 0 0 0 0   0 0  39 0  232 
ix:X  6 0 0 0 0 1  1  5  30  250 0 0 0 0 0 0   0 0   2 0  295 
ix:S  8 0 0 0 0 0  0  0   7  277 0 0 0 0 0 0   1 0   2 0  295 
Wx:X  2 0 0 0 0 0  1  3  23  153 0 0 0 0 0 0   0 0  36 0  218 
Wx:S  4 0 0 0 0 0  0  1   5  171 0 0 0 0 0 0   1 0  36 0  218 
-----------------------------------------------------------------
Tot 249 0 0 0 2 6 15 43 498 3634 0 0 0 0 0 0 143 0 306 0 4896 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1254

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    1.01  194     0.60  176
 gi    0.91  209     0.70  190
 gW    1.23  125     0.72  124
 gx    1.08  296     0.80  285
 Li    1.64  259     0.99  258
 LW    2.44  208     1.13  210
 Lx    1.85  243     1.08  241
 iW    1.99  188     1.18  187
 ix    1.87  287     1.39  285
 Wx    2.13  179     1.24  178


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
 pc_phases ghijklmn 139.5 -224.2 -63.8 -69.0  -183.4  -163.9  -237.9   -79.4

  if station W and f_group S
    pc_mode manual
    pc_phases abcdef 74.5   -22.8  -106.3  -238.0  -348.5   -31.3

* ref Hb/L --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -6.3    0.7    5.0    4.3   -0.9   -5.8
   if station g and f_group X
   pc_phases ghijklmn -9.3    2.3    5.4   23.0   -9.8    0.5  -12.6    2.0

   if station i and f_group S
   pc_phases abcdef 0.1   -0.2    1.8   -3.1   -1.5    2.5
   if station i and f_group X
   pc_phases ghijklmn -0.8   -0.3    4.0    3.1  -15.9    2.6   -2.1    1.9

   if station x and f_group S
   pc_phases abcdef -0.5   -6.8   -0.3   14.6   -2.7   -8.1
   if station x and f_group X
   pc_phases ghijklmn 2.4    3.7   -1.3   -5.5  -29.8   -7.6   52.7   -9.4

Regards,
 Jamie  

+END
