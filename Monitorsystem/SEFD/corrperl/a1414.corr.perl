+HEADER 
CORREL   CRTN 
DATABASE  
SESSNAME A1414 
UTSTART  0257 
DURATION 24 
DOY      263-264 
CORRTIME 2015/01/18 2015/01/19 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            86%             - 
   0              3%             - 
 4-1,A-H,N       11%             - 
 Removed          -              - 

+CORRELATOR_NOTES

Manual phase-cal used for all stations after poor results using pcal data.

+STATION_NOTES

 HART15M  (Ht/g): Manual pcal. Ok.

 HOBART12 (Hb/L): Manual pcal. Windstowed 0256-0436, 0527-0547.

 KATH12M  (Ke/i): Manual pcal. Ok. 

 WARK12M  (Ww/W): Manual pcal. Ok. 

 YARRA12M (Yg/e): Manual pcal. Windstowed 0058-0248

+DROP_CHANNELS
 Ht 
 Hb 
 Ke 
 Ww 
 Yg 

+MANUAL PCAL Ww Yg Ke Hb Ht 

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
  HT           -1.48         0.00   56920.1229861
  KE           -9.29        -0.00   56919.1257176
  YG          -10.77         0.00   56919.1257176
  WW           17.79         0.00   56915.1366319


+QCODES

Qcod  0 1 2 3 4 5 6  7   8    9 A B C D E F  G H   N -  Tot 
---------------------------------------------------------------
Li:X  1 0 0 0 0 0 0  0  66  170 0 0 0 0 0 0  3 0  16 0  256 
Li:S  1 0 0 0 1 0 1  2  26  208 0 0 0 0 0 0  1 0  16 0  256 
Le:X  3 0 0 0 0 0 0  3  26  176 0 0 0 0 0 0  0 0  40 0  248 
Le:S  2 0 0 0 0 0 0  7  78  112 0 0 0 0 0 0  9 0  40 0  248 
Lg:X  9 0 0 0 0 0 0  2  24  156 0 0 0 0 0 0  0 0  17 0  208 
Lg:S 14 0 0 0 0 0 1  8  57  108 0 0 0 0 0 0  3 0  17 0  208 
LW:X  0 0 0 0 0 0 0  7  48  363 0 0 0 0 0 0  1 0  82 0  501 
LW:S  1 0 0 0 0 0 1  9 132  271 0 0 0 0 0 0  5 0  82 0  501 
ie:X  8 0 0 0 0 0 0  5  30  396 0 0 0 0 0 0  0 0  49 0  488 
ie:S  8 0 0 0 0 0 0  3  39  389 0 0 0 0 0 0  0 0  49 0  488 
ig:X 21 0 0 0 0 0 0  0   2  215 0 0 0 0 0 0  0 0   0 0  238 
ig:S 26 0 0 0 0 0 0  0   6  206 0 0 0 0 0 0  0 0   0 0  238 
iW:X  0 0 0 0 0 0 1  3  21  242 0 0 0 0 0 0  0 0  30 0  297 
iW:S  0 0 0 0 0 0 0  1  10  256 0 0 0 0 0 0  0 0  30 0  297 
eg:X 17 0 0 0 0 0 0  2   7  358 0 0 0 0 0 0  0 0  36 0  420 
eg:S 18 0 0 0 0 0 0  3 116  246 0 0 0 0 0 0  1 0  36 0  420 
eW:X  2 0 0 0 0 0 1  6  14  139 0 0 0 0 0 0  0 0  25 0  187 
eW:S  2 0 0 0 0 0 0  0  52  108 0 0 0 0 0 0  0 0  25 0  187 
gW:X 18 0 0 0 0 0 0  0   4  116 0 0 0 0 0 0  0 0  24 0  162 
gW:S 15 0 0 0 0 0 0  0   8  115 0 0 0 0 0 0  0 0  24 0  162 
---------------------------------------------------------------
Tot 166 0 0 0 1 0 5 61 766 4350 0 0 0 0 0 0 23 0 638 0 6010 

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

 Lg    0.76  182     0.76  176
 gi    0.88  216     0.92  208
 gW    0.97  120     0.88  120
 ge    0.99  367     1.07  364
 Li    1.06  239     0.90  239
 LW    1.48  419     1.02  418
 Le    1.21  205     1.05  205
 iW    1.36  267     1.08  267
 ie    1.43  431     1.19  431
 We    1.56  160     1.29  160


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
    pc_phases abcdef -42.0   54.8  148.2  268.4  250.4   43.5

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn 73.1  242.5  260.6  163.8   14.4   76.2  308.5   14.3

  if station e and f_group S 
    pc_mode manual
    pc_phases abcdef  0 0 0 0 0 0 

  if station e and f_group X 
    pc_mode manual
 pc_phases ghijklmn  0 0 0 0 0 0 0 0 

  if station i and f_group S
    pc_mode manual
    pc_phases abcdef -60.2  -74.6  -85.7 -128.5  -63.5  -63.0

  if station i and f_group X
    pc_mode manual
 pc_phases ghijklmn 61.9   -7.2 -255.4 -301.5 -117.0 -208.5 -302.0 -355.7

  if station L and f_group S
    pc_mode manual
    pc_phases abcdef -121.4   63.0  238.8  126.1  340.7  189.0

  if station L and f_group X
    pc_mode manual
 pc_phases ghijklmn 46.6  338.7  236.5  141.9   70.3   75.2   40.7  212.1

  if station g and f_group S
    pc_mode manual
    pc_phases abcdef -89.1 -239.1  -35.0 -273.7   -5.9 -124.4

  if station g and f_group X
    pc_mode manual
 pc_phases ghijklmn 22.2  209.2  323.5    8.5  187.4 52.5 309.5 34.3


* ref Yg/e --> just for book keeping

*   if station g and f_group S
*  pc_phases abcdef 
*   if station g and f_group X
*   pc_phases ghijklmn 

*   if station L and f_group S
*   pc_phases abcdef 
*   if station L and f_group X
*   pc_phases ghijklmn 


Regards,
 Jamie 

+END
