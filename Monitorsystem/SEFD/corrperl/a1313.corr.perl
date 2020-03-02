+HEADER 
CORREL   CRTN 
DATABASE $13DEC13XA 
SESSNAME A1313 
UTSTART  1903 
DURATION 24 
DOY      347-348 
CORRTIME 2014/05/18 2014/05/19 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            57%             - 
   0              4%             - 
 4-1,A-H,N       38%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART12 (Hb/L): No useful data recordered between 347/2015 - 348/0020 and 
   348/0107 - 348/-203 due to drive error and repair work to correct the 
   problem.

 HART15M  (Ht/g): Ok. 

 KATH12M  (Ke/i): Due to a module failure, only data between 0845 and 
   1518 was available for correlation. 

 YARRA12M (Yg/x): Ok.

 WARK12M  (Ww/W): Manual phase cal. 

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

Qcod  0 1 2 3 4 5  6  7   8    9 A B C D E F  G H    N -  Tot 
-----------------------------------------------------------------
gL:X 17 0 0 0 0 0  1  1   7  164 0 0 0 0 0 0 10 0   45 0  245 
gL:S 34 0 0 0 0 0  0  3  35  120 0 0 0 0 0 0  8 0   45 0  245 
gi:X  6 0 0 0 0 0  0  0   2   65 0 0 0 0 0 0  0 0  180 0  253 
gi:S  9 0 0 0 0 0  0  1   1   62 0 0 0 0 0 0  0 0  180 0  253 
gW:X 20 0 0 0 0 0  0  0   4  162 0 0 0 0 0 0  0 0    3 0  189 
gW:S 29 0 0 0 0 0  2  1  14  137 0 0 0 0 0 0  3 0    3 0  189 
gx:X 21 0 0 0 0 0  0  1   8  299 0 0 0 0 0 0  0 0    0 0  329 
gx:S 28 0 0 0 0 0  0  1   7  293 0 0 0 0 0 0  0 0    0 0  329 
Li:X  6 0 0 0 0 0  0  3   4   73 0 0 0 0 0 0  4 0  245 0  335 
Li:S  7 0 0 0 0 0  0  0  10   71 0 0 0 0 0 0  2 0  245 0  335 
LW:X  6 0 0 0 0 0  1  2  24  213 0 0 0 0 0 0  5 0   79 0  330 
LW:S  8 0 0 0 0 0  0  2  53  178 0 0 0 0 0 0 10 0   79 0  330 
Lx:X 14 0 0 0 0 0  2  3  25  212 0 0 0 0 0 0  2 0   68 0  326 
Lx:S 13 0 0 0 1 0  0  2  54  177 0 0 0 0 0 0 11 0   68 0  326 
iW:X  7 0 0 0 0 0  0  1   4   71 0 0 0 0 0 0  0 0  207 0  290 
iW:S 10 0 0 0 0 0  0  0   1   72 0 0 0 0 0 0  0 0  207 0  290 
ix:X  4 0 0 0 0 0  0  1   7   82 0 0 0 0 0 0  0 0  252 0  346 
ix:S  4 0 0 0 0 0  0  0   1   87 0 0 0 0 0 0  2 0  252 0  346 
Wx:X  8 0 0 0 0 0  1  4  16  228 0 0 0 0 0 0  0 0    4 0  261 
Wx:S 10 0 0 0 0 0  5  6  14  219 0 0 0 0 0 0  3 0    4 0  261 
-----------------------------------------------------------------
Tot 261 0 0 0 1 0 12 32 291 2985 0 0 0 0 0 0 60 0 2166 0 5808 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1253

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.88  183     0.68  159
 gi    0.72   67     0.87   63
 gW    1.04  166     0.75  154
 gx    1.04  307     0.94  297
 Li    1.39   84     0.99   80
 LW    2.03  245     1.02  241
 Lx    1.65  244     1.05  245
 iW    1.63   76     1.20   73
 ix    1.66   90     1.30   90
 Wx    1.88  249     1.16  246


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
 pc_phases ghijklmn 84.7 55.7  -329.1  -345.8  -275.6  -263.7  -167.6  -165.4 

  if station W and f_group S
    pc_mode manual
    pc_phases abcdef 68.7  -170.5   -49.5   -49.2  -183.5   -10.3 

* ref Hb/L --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -4.4    0.6    3.9    4.3   -1.6   -4.4
   if station g and f_group X
   pc_phases ghijklmn -8.9    2.4    4.2   21.6   -8.7   -0.7  -11.9    2.9

   if station i and f_group S
   pc_phases abcdef 1.9   -0.3   -0.0   -1.1   -3.1    5.6
   if station i and f_group X
   pc_phases ghijklmn -0.7    0.3    2.9    1.8  -15.3    2.3   -1.9    2.7

   if station x and f_group S
   pc_phases abcdef -0.6   -7.1   -0.8   15.0   -2.4   -6.8
   if station x and f_group X
   pc_phases ghijklmn 0.9    5.0   -0.9   -3.3  -25.3   -7.8   55.2  -10.2

Regards,
 Jamie  

+END
