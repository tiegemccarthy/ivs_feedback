+HEADER 
CORREL   CRTN 
DATABASE 14OCT08XA 
SESSNAME AUST50 
UTSTART  1800 
DURATION 24 
DOY      281-282 
CORRTIME 2014/01/04 2014/01/05 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            94%             - 
   0              2%             - 
 4-1,A-H,N        4%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HART15M  (Ht/g): Station reports probable clock break at 2042.

 HOBART12 (Hb/L): Late start, no data before 1803. Small clock break at 
  0343.

 KATH12M  (Ke/i): Late start, no data before 1830.

 WARK12M  (Ww/W): Manual pcal. 

 YARRA12M (Yg/e): Manual pcal. No data before 1906.

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
  HT           -1.59         0.00   56938.7500000
  KE           -9.70        -0.00   56938.7500000
  YG          -10.90         0.00   56938.7500000
  WW           19.59         0.00   56938.7500000


+QCODES

Qcod  0 1 2 3 4 5 6  7   8    9 A B C D E F  G H   N -  Tot 
---------------------------------------------------------------
LW:X  0 0 0 0 0 0 0  3  24  477 0 0 0 0 0 0  0 0  14 0  518 
LW:S  0 0 0 1 1 0 1 15 225  254 0 0 0 0 0 0  7 0  14 0  518 
Lg:X 12 0 0 0 0 0 0  0   2  210 0 0 0 0 0 0  0 0   6 0  230 
Lg:S 21 0 0 0 0 0 2  7  58  135 0 0 0 0 0 0  1 0   6 0  230 
Li:X  0 0 0 0 0 0 0  1  16  288 0 0 0 0 0 0  0 0  12 0  317 
Li:S  0 0 0 0 0 0 0  1  31  270 0 0 0 0 0 0  3 0  12 0  317 
Le:X  3 0 0 0 0 0 0  0   5  238 0 0 0 0 0 0  1 0  13 0  260 
Le:S  0 0 0 1 0 0 1  8  88  144 0 0 0 0 0 0  5 0  13 0  260 
Wg:X 18 0 0 0 0 0 0  0   0  178 0 0 0 0 0 0  0 0   1 0  197 
Wg:S 27 0 0 0 0 0 1  5  33  130 0 0 0 0 0 0  0 0   1 0  197 
Wi:X  2 0 0 0 0 0 0  1  21  292 0 0 0 0 0 0  0 0  10 0  326 
Wi:S  0 0 0 0 0 1 0  2  24  289 0 0 0 0 0 0  0 0  10 0  326 
We:X  0 0 0 0 0 0 0  0   8  189 0 0 0 0 0 0  0 0   7 0  204 
We:S  0 0 0 0 0 0 0  3  52  142 0 0 0 0 0 0  0 0   7 0  204 
gi:X 21 0 0 0 0 0 0  0   3  249 0 0 0 0 0 0  0 0   8 0  281 
gi:S 30 0 0 0 0 0 0  1  13  229 0 0 0 0 0 0  0 0   8 0  281 
ge:X  7 0 0 0 0 0 0  0   3  445 0 0 0 0 0 0  0 0  29 0  484 
ge:S 21 0 0 0 0 0 0  5  81  348 0 0 0 0 0 0  0 0  29 0  484 
ie:X  0 0 0 0 0 0 1  5  21  443 0 0 0 0 0 0  0 0  24 0  494 
ie:S  0 0 0 0 0 0 0  0  18  452 0 0 0 0 0 0  0 0  24 0  494 
---------------------------------------------------------------
Tot 162 0 0 2 1 1 6 57 726 5402 0 0 0 0 0 0 17 0 248 0 6622 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1290

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.79  212     0.78  200
 gi    0.88  250     0.88  240
 gW    0.98  178     1.06  167
 ge    0.96  445     0.96  430
 Li    1.10  305     0.92  304
 LW    1.61  504     1.48  504
 Le    1.18  244     1.09  247
 iW    1.39  314     1.29  316
 ie    1.37  470     1.07  470
 We    1.49  197     1.43  197


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
    pc_phases abcdef -172.0 -214.5 -263.3 -329.8 -218.0 -126.6

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn -127.1 55.4 169.3 233.9 38.4 193.2 252.6 352.1

  if station e and f_group S
    pc_mode manual
    pc_phases abcdef -88.9 172.6 83.5 151.0 6.3 66.4

  if station e and f_group X
    pc_mode manual
 pc_phases ghijklmn 87.6 -180.3 -92.6 -9.0 -270.0 -12.5 -290.8 -154.1


* ref Ke/i --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -6.2 4.0 3.1 2.2 -1.3 -3.2
   if station g and f_group X
   pc_phases ghijklmn -7.7 1.0 0.6 19.9 7.1 -0.3 -10.3 -2.0

   if station L and f_group S
   pc_phases abcdef 0.0 0.8 -2.0 2.8 -1.3 2.0
   if station L and f_group X
   pc_phases ghijklmn -1.4 5.0 -1.0 -3.8 7.0 -8.3 2.3 1.3


Regards,
 Jamie 

+END
