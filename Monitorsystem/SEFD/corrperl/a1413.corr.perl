+HEADER 
CORREL   CRTN 
DATABASE 14SEP19XA 
SESSNAME A1413 
UTSTART  0301 
DURATION 24 
DOY      262-263 
CORRTIME 02/01/15 03/01/15 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            76%             - 
   0              2%             - 
 4-1,A-H,N       22%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HART15M  (Ht/g): Ok. 

 HOBART12 (Hb/L): Small clock break at 2153

 KATH12M  (Ke/i): Ok. 

 WARK12M  (Ww/W): Manual pcal. No data after 1600 UT, after data loss from
  module.

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
  HT           -1.48         0.00   56919.1257176
  KE           -9.29        -0.00   56919.1257176
  YG          -10.77         0.00   56919.1257176
  WW           17.79         0.00   56915.1366319


+QCODES

Qcod  0 1 2 3 4 5 6  7   8    9 A B C D E F  G H    N -  Tot 
----------------------------------------------------------------
Li:X  0 0 0 0 0 0 1  2  75  172 0 0 0 0 0 0  0 0    7 0  257 
Li:S  0 0 0 0 0 0 0  3  29  218 0 0 0 0 0 0  0 0    7 0  257 
Le:X  1 0 0 0 0 0 0  6  83  144 0 0 0 0 0 0  0 0   15 0  249 
Le:S  0 0 0 0 0 0 0  9  85  125 0 0 0 0 0 0 15 0   15 0  249 
Lg:X 12 0 0 0 0 0 0  0  30  158 0 0 0 0 0 0  1 0    7 0  208 
Lg:S 16 0 0 0 0 0 1  3  56  118 0 0 0 0 0 0  7 0    7 0  208 
LW:X  0 0 0 0 0 0 1 19 148  122 0 0 0 0 0 0  1 0  210 0  501 
LW:S  0 0 0 1 0 1 0  5  83  201 0 0 0 0 0 0  0 0  210 0  501 
ie:X  0 0 0 0 0 0 0  2  17  428 0 0 0 0 0 0  0 0   41 0  488 
ie:S  0 0 0 0 0 0 0  0  20  427 0 0 0 0 0 0  0 0   41 0  488 
ig:X 17 0 0 0 0 0 0  0   1  208 0 0 0 0 0 0  0 0   12 0  238 
ig:S 19 0 0 0 0 0 0  0   4  203 0 0 0 0 0 0  0 0   12 0  238 
iW:X  0 0 0 0 0 0 0  2  10  143 0 0 0 0 0 0  0 0  142 0  297 
iW:S  0 0 0 0 0 0 0  0   8  147 0 0 0 0 0 0  0 0  142 0  297 
eg:X  8 0 0 0 0 0 0  0   3  370 0 0 0 0 0 0  0 0   39 0  420 
eg:S 10 0 0 0 0 0 0  4 108  259 0 0 0 0 0 0  0 0   39 0  420 
eW:X  0 0 0 0 0 0 0  1   3   84 0 0 0 0 0 0  0 0   99 0  187 
eW:S  0 0 0 0 0 0 0  2  28   58 0 0 0 0 0 0  0 0   99 0  187 
gW:X 11 0 0 0 0 0 1  0   1   74 0 0 0 0 0 0  0 0   76 0  163 
gW:S 14 0 0 0 0 0 0  2  11   60 0 0 0 0 0 0  0 0   76 0  163 
----------------------------------------------------------------
Tot 108 0 0 1 0 1 4 60 803 3719 0 0 0 0 0 0 24 0 1296 0 6016 

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

 Lg    0.77  188     0.76  183
 gi    0.88  208     0.90  204
 gW    1.05   75     0.89   71
 ge    1.04  373     1.09  368
 Li    1.05  250     0.88  249
 LW    1.45  291     0.99  291
 Le    1.21  233     1.05  234
 iW    1.37  155     1.04  155
 ie    1.47  447     1.19  447
 We    1.62   88     1.29   88


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
   pc_phases abcdef -154.5 -155.1 -155.4 -351.0 -81.6 -332.0

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn 55.6 308.2 244.5 225.0 42.1 58.2 224.5 355.8

  if station e and f_group S
    pc_mode manual
   pc_phases abcdef 175.9 354.7 191.0 133.3 248.4 137.9

  if station e and f_group X
    pc_mode manual
 pc_phases ghijklmn -87.8 79.2 224.2 332.7 109.1 357.9 73.8 188.0


* ref Ke/i --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -7.4 3.1 4.3 5.9 -4.8 0.2
   if station g and f_group X
   pc_phases ghijklmn -1.8 0.6 -2.4 12.3 -4.7 -13.1 41.4 -13.9

   if station L and f_group S
   pc_phases abcdef 3.8 -1.4 -2.4 -1.5 -0.9 4.1
   if station L and f_group X
   pc_phases ghijklmn -11.3 26.3 8.9 -11.7 -20.9 -47.6 57.6 5.0

Regards,
 Jamie 

+END
