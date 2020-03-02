+HEADER 
CORREL   CRTN 
DATABASE 14SEP24XA 
SESSNAME AUST47 
UTSTART  0700 
DURATION 24 
DOY      267-268 
CORRTIME 2014/01/08 2014/01/09 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            59%             - 
   0              2%             - 
 4-1,A-H,N       39%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HART15M  (Ht/g): Ok. 

 HOBART12 (Hb/L): Ok. 

 KATH12M  (Ke/i): Ok. 

 WARK12M  (Ww/W): No data available, module problem.

 YARRA12M (Yg/e): Manual pcal. 

+DROP_CHANNELS
 Ht 
 Hb 
 Ke 
 Ww 
 Yg 

+MANUAL PCAL Yg 

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
  HT           -1.57         0.00   56924.2916667
  KE           -9.40        -0.00   56924.2916667
  YG          -10.81         0.00   56924.2916667


+QCODES

Qcod  0 1 2 3 4 5  6  7   8    9 A B C D E F  G H    N -  Tot 
-----------------------------------------------------------------
gi:X 21 0 0 0 0 0  0  0   8  267 0 0 0 0 0 0  0 0    3 0  299 
gi:S 25 0 0 0 0 0  0  0   6  265 0 0 0 0 0 0  0 0    3 0  299 
ge:X 11 0 0 0 0 0  3  2  10  486 0 0 0 0 0 0  0 0    5 0  517 
ge:S 23 0 0 0 0 1  3  8 112  365 0 0 0 0 0 0  0 0    5 0  517 
gL:X 13 0 0 0 0 0  4  2  10  211 0 0 0 0 0 0  0 0    0 0  240 
gL:S 25 0 0 0 0 0  3  6  51  151 0 0 0 0 0 0  4 0    0 0  240 
gW:X  0 0 0 0 0 0  0  0   0    0 0 0 0 0 0 0  0 0  216 0  216 
gW:S  0 0 0 0 0 0  0  0   0    0 0 0 0 0 0 0  0 0  216 0  216 
ie:X  0 0 0 0 0 0  0  1  12  498 0 0 0 0 0 0  0 0    7 0  518 
ie:S  0 0 0 0 0 0  0  2  21  488 0 0 0 0 0 0  0 0    7 0  518 
iL:X  0 0 0 0 0 0  0  0   8  324 0 0 0 0 0 0  0 0    4 0  336 
iL:S  0 0 0 0 0 0  0  1  30  301 0 0 0 0 0 0  0 0    4 0  336 
iW:X  0 0 0 0 0 0  0  0   0    0 0 0 0 0 0 0  0 0  347 0  347 
iW:S  0 0 0 0 0 0  0  0   0    0 0 0 0 0 0 0  0 0  347 0  347 
eL:X  2 0 0 0 0 0  0  0   4  264 0 0 0 0 0 0  0 0    2 0  272 
eL:S  2 0 0 0 0 0  0  9  78  161 0 0 0 0 0 0 20 0    2 0  272 
eW:X  0 0 0 0 0 0  0  0   0    0 0 0 0 0 0 0  0 0  231 0  231 
eW:S  0 0 0 0 0 0  0  0   0    0 0 0 0 0 0 0  0 0  231 0  231 
LW:X  0 0 0 0 0 0  0  0   0    0 0 0 0 0 0 0  0 0  565 0  565 
LW:S  0 0 0 0 0 0  0  0   0    0 0 0 0 0 0 0  0 0  565 0  565 
-----------------------------------------------------------------
Tot 122 0 0 0 0 1 13 31 350 3781 0 0 0 0 0 0 24 0 2760 0 7082 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1287

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.88  226     0.70  213
 gi    0.89  275     0.89  267
 gW    0.00    0     0.00    0
 ge    1.03  501     1.05  488
 Li    1.21  332     0.82  330
 LW    0.00    0     0.00    0
 Le    1.41  268     1.03  268
 iW    0.00    0     0.00    0
 ie    1.45  511     1.19  511
 We    0.00    0     0.00    0


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

  if station e and f_group S
    pc_mode manual
    pc_phases abcdef -177.3 65.6 314.1 352.8 252.0 200.9

  if station e and f_group X
    pc_mode manual
 pc_phases ghijklmn -153.0 90.8 53.7 82.7 300.1 64.8 263.8 58.9


* ref Ke/i --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -7.8 3.6 5.6 7.4 -4.2 -2.2 
   if station g and f_group X
   pc_phases ghijklmn -6.6 0.8 1.1 19.7 4.0 -0.3 -8.6 -1.8

   if station L and f_group S
   pc_phases abcdef 0.4 -0.5 -0.1 0.6 -2.6 3.6
   if station L and f_group X
   pc_phases ghijklmn  -0.8 5.2 -1.6 -4.1 3.6 -7.1 3.3 1.1


Regards,
 Jamie 

+END
