+HEADER 
CORREL   CRTN 
DATABASE 14APR09XA 
SESSNAME AUST23 
UTSTART  1800 
DURATION 240 
CORRTIME 2014/08/01 2014/08/02 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            78%             - 
   0              7%             - 
 4-1,A-H,N       15%             - 
 Removed          -              - 

+CORRELATOR_NOTES

Note that there are two distinct sub-arrays in this experiment (Ho-Hh and 
Hb-Ke-Yg-Ht-Ww). Two separate refernce stations were used (Yarragadee and
Hobart26) in the fringe-fitting process. 

+STATION_NOTES

 HART15M  (Ht/g): Ok. 

 HARTRAO  (Hh/x): Ok. 

 HOBART12 (Hb/L): Strong RFI in channelsSR5U and SR6U. G-code threshold
  reduced to 0.3 to avoid excessive data loss.

 HOBART26 (Ho/H): Manual phase cal. Windstowed for 30 minutes toward end
  of experiment. Strong RFI in channels SR5U and SR6U. G-code threshold 
  reduced to 0.3 to avoid excessive data loss.

 KATH12M  (Ke/i): First 40 minutes lost due to mark5 problem.

 WARK12M  (Ww/W): Manual phase cal. Scheduled in tag-along mode, and ended
  early at 100-0507 due to Azimuth motor problems. 

 YARRA12M (Yg/e): Ok. 

+DROP_CHANNELS
 Ht 
 Hh 
 Hb 
 Ho 
 Ke 
 Ww 
 Yg 

+MANUAL PCAL Ww Ho 

+CHANNELS
 Channels: XR1U = band|polarization|channel#|sideband


+CLOCKS

Clocks: Curtin

 Station      Offset     rate      Epoch
              [usec]     [sec/sec] [MJD]
  HB          -10.19         0.00   56636.7588889
  HT           -8.51        -0.00   56756.7500000
  KE           -9.16         0.00   56756.7500000
  YG           -7.85         0.00   56756.7500000
  WW           10.05         0.00   56756.7500000
  HO          -10.19         0.00   56756.7500000
  HH          -19.04         0.00   56757.0000000


+QCODES

Qcod  0 1 2 3 4 5  6   7   8    9 A B C D E F G H    N -  Tot 
-----------------------------------------------------------------
gL:X 22 0 0 0 0 0  1   0   2  248 0 0 0 0 0 0 0 0    1 0  274 
gL:S 13 0 0 0 0 0  0   3  59  197 0 0 0 0 0 0 1 0    1 0  274 
gi:X 19 0 0 0 0 0  1   2   4  239 0 0 0 0 0 0 0 0    8 0  273 
gi:S 12 0 0 0 0 0  0   1   5  247 0 0 0 0 0 0 0 0    8 0  273 
gW:X 40 0 0 0 0 0  0   1  31   80 0 0 0 0 0 0 0 0   93 0  245 
gW:S 36 0 0 0 0 0  0   1   3  112 0 0 0 0 0 0 0 0   93 0  245 
ge:X 25 0 0 0 0 0  1   3  10  284 0 0 0 0 0 0 0 0    1 0  324 
ge:S  9 1 0 0 1 0  0   1   9  302 0 0 0 0 0 0 0 0    1 0  324 
gx:X  0 0 0 0 0 0  0   0   0    0 0 0 0 0 0 0 0 0    0 0    0 
gx:S  0 0 0 0 0 0  0   0   0    0 0 0 0 0 0 0 0 0    0 0    0 
gH:X  0 0 0 0 0 0  0   0   0    0 0 0 0 0 0 0 0 0    0 0    0 
gH:S  0 0 0 0 0 0  0   0   0    0 0 0 0 0 0 0 0 0    0 0    0 
Li:X  5 0 0 0 2 0  0   1  18  296 0 0 0 0 0 0 0 0    9 0  331 
Li:S  1 0 0 0 3 1  0   2  88  227 0 0 0 0 0 0 0 0    9 0  331 
LW:X 41 0 0 0 0 0  1   7  76   82 0 0 0 0 0 0 0 0  138 0  345 
LW:S 40 0 0 0 1 0  0   4  74   85 0 0 0 0 0 0 3 0  138 0  345 
Le:X 13 0 0 0 0 0  0   0  17  298 0 0 0 0 0 0 0 0    1 0  329 
Le:S  1 0 0 0 0 0  0   2 102  219 0 0 0 0 0 0 4 0    1 0  329 
Lx:X  0 0 0 0 0 0  0   0   0    0 0 0 0 0 0 0 0 0    0 0    0 
Lx:S  0 0 0 0 0 0  0   0   0    0 0 0 0 0 0 0 0 0    0 0    0 
LH:X  0 0 0 0 0 0  0   0   0    0 0 0 0 0 0 0 0 0    0 0    0 
LH:S  0 0 0 0 0 0  0   0   0    0 0 0 0 0 0 0 0 0    0 0    0 
iW:X 42 0 0 0 0 0  2   8  39   89 0 0 0 0 0 0 0 0  130 0  310 
iW:S 36 0 0 0 0 0  1   1   3  139 0 0 0 0 0 0 0 0  130 0  310 
ie:X  9 0 0 0 0 0  0   2  28  298 0 0 0 0 0 0 0 0    9 0  346 
ie:S  1 0 0 1 0 0  0   0   2  333 0 0 0 0 0 0 0 0    9 0  346 
ix:X  0 0 0 0 0 0  0   0   0    0 0 0 0 0 0 0 0 0    0 0    0 
ix:S  0 0 0 0 0 0  0   0   0    0 0 0 0 0 0 0 0 0    0 0    0 
iH:X  0 0 0 0 0 0  0   0   0    0 0 0 0 0 0 0 0 0    0 0    0 
iH:S  0 0 0 0 0 0  0   0   0    0 0 0 0 0 0 0 0 0    0 0    0 
We:X 42 0 0 0 0 0  3   5  99   31 0 0 0 0 0 0 0 0  116 0  296 
We:S 33 0 0 0 0 0  0   1   3  143 0 0 0 0 0 0 0 0  116 0  296 
Wx:X  0 0 0 0 0 0  0   0   0    0 0 0 0 0 0 0 0 0    0 0    0 
Wx:S  0 0 0 0 0 0  0   0   0    0 0 0 0 0 0 0 0 0    0 0    0 
WH:X  0 0 0 0 0 0  0   0   0    0 0 0 0 0 0 0 0 0    0 0    0 
WH:S  0 0 0 0 0 0  0   0   0    0 0 0 0 0 0 0 0 0    0 0    0 
ex:X  0 0 0 0 0 0  0   0   0    0 0 0 0 0 0 0 0 0    0 0    0 
ex:S  0 0 0 0 0 0  0   0   0    0 0 0 0 0 0 0 0 0    0 0    0 
eH:X  0 0 0 0 0 0  0   0   0    0 0 0 0 0 0 0 0 0    0 0    0 
eH:S  0 0 0 0 0 0  0   0   0    0 0 0 0 0 0 0 0 0    0 0    0 
xH:X 32 0 0 0 0 0  2  65 161  184 0 0 0 0 0 0 0 0    1 0  445 
xH:S 31 0 0 0 0 0  3   3 110  297 0 0 0 0 0 0 0 0    1 0  445 
-----------------------------------------------------------------
Tot 503 1 0 1 7 1 15 113 943 4430 0 0 0 0 0 0 8 0 1014 0 7036 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1263

 ...by baseline, over all sources:

 bl     X     n       S     n

 gx    0.00    0     0.00    0
 Lg    1.12  251     0.84  259
 gH    0.00    0     0.00    0
 gi    1.03  245     1.07  252
 gW    1.20  112     1.11  115
 ge    0.91  298     1.09  313
 xL    0.00    0     0.00    0
 xH    1.22  412     1.12  403
 xi    0.00    0     0.00    0
 xW    0.00    0     0.00    0
 xe    0.00    0     0.00    0
 LH    0.00    0     0.00    0
 Li    1.39  317     1.21  321
 LW    1.98  166     1.45  167
 Le    1.25  315     1.16  327
 Hi    0.00    0     0.00    0
 HW    0.00    0     0.00    0
 He    0.00    0     0.00    0
 iW    1.52  138     1.33  144
 ie    1.19  328     1.50  336
 We    1.36  138     1.35  147


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

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn -169.0 -173.4 -124.8 -33.8 -11.8 -304.4 -96.0 -98.9

  if station W and f_group S
    pc_mode manual
    pc_phases abcdef -139.4   28.9  171.0   39.2  293.8  183.9

  if station H and f_group X
    pc_mode manual
 pc_phases ghijklmn 112.6 43.9   -13.4  -208.7 -10.4 -70.3 -169.4 -84.7

  if station H and f_group S
    pc_mode manual
    pc_phases abcdef -134.6 146.8 175.2 310.3 124.4 173.7



* ref Yg/e and Hh/x --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -4.3   9.1   2.5   -11.3   3.2   2.2
   if station g and f_group X
   pc_phases ghijklmn -2.6 -9.4 -2.4 22.6 12.1 3.3  -9.1 -6.4

   if station i and f_group S
   pc_phases abcdef 0.1   7.6   0.0   -16.8    -0.0 7.0
   if station i and f_group X
   pc_phases ghijklmn 3.6   -10.4 0.3 0.8 7.3 2.8  0.4 -4.1

   if station L and f_group S
   pc_phases abcdef 1.7   7.2    -3.0   -14.8  4.1  8.1
   if station L and f_group X
   pc_phases ghijklmn 4.4    -6.8    -2.6    -3.2 10.8 -2.3 3.9 -3.8

Regards,
 Jamie 

+END
