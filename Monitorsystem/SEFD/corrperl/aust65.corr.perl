+HEADER 
CORREL   CRTN 
DATABASE 14NOV29XT 
SESSNAME AUST65 
OBSTIME  2014/11/29 2014/11/29 
UTSTART  0000 
DURATION 1 
DOY      333 
CORRTIME 2015/01/19 2015/01/20 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            98%             - 
   0              -              - 
 4-1,A-H,N        2%             - 
 Removed          -              - 

+CORRELATOR_NOTES

Manual phase cal used for all stations after initial problems with phase
cal solutions. Ho-Hb baseline de-selected (short baseline strong affected 
by local RFI).

+STATION_NOTES

 HOBART26 (Ho/H): Manual pcal. Clock breaks at 1630 and 2023, 
  simultaneously with Hb (shared clock). Channels SR5U and SR6U both
  dropped after being badly affected by in-band RFI.

 HOBART12 (Hb/L): Manual pcal. Clock breaks at 1630 and 2023,
  simultaneously with Hb (shared clock).

 KATH12M  (Ke/i): Manual pcal.

 WARK12M  (Ww/W): Manual pcal.

 YARRA12M (Yg/e): Manual pcal.

+DROP_CHANNELS
 Ho SR5U SR6U   
 Hb 
 Ke 
 Ww 
 Yg 

+MANUAL PCAL Ww Hb Ho Ke Yg 

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
  HB          -12.69         0.00   56990.0000000
  HO           -1.91         0.00   56990.0000000
  KE           -9.85        -0.00   56990.0000000
  YG          -11.10         0.00   56990.0000000
  WW            1.77         0.00   56990.0000000


+QCODES

Qcod 0 1 2 3 4   5   6   7    8    9 A B C D E F   G H N -  Tot 
-------------------------------------------------------------------
LH:X 0 0 0 0 0   2  19  30  392    1 0 0 0 0 0 0  12 0 0 0  456 
LH:S 0 0 0 6 3 175  98  54   21   12 0 0 0 0 0 0  87 0 0 0  456 
Li:X 1 0 0 0 0   0   0   0    7  401 0 0 0 0 0 0   0 0 0 0  409 
Li:S 0 0 0 0 0   0   0   2   46  358 0 0 0 0 0 0   3 0 0 0  409 
LW:X 2 0 0 0 0   0   1   2   26  397 0 0 0 0 0 0   0 0 0 0  428 
LW:S 0 0 0 0 0   1   2  10   99  302 0 0 0 0 0 0  14 0 0 0  428 
Le:X 2 0 0 0 0   0   0   1    4  411 0 0 0 0 0 0   0 0 0 0  418 
Le:S 0 0 0 1 0   0   1   7  104  295 0 0 0 0 0 0  10 0 0 0  418 
Hi:X 2 0 0 0 0   0   0  11  371   24 0 0 0 0 0 0   0 0 0 0  408 
Hi:S 1 0 0 0 0   0   1  17  168  213 0 0 0 0 0 0   8 0 0 0  408 
HW:X 2 0 0 0 0   4  18 188  208    2 0 0 0 0 0 0   0 0 0 0  422 
HW:S 1 0 0 0 0   0   5  13  140  254 0 0 0 0 0 0   9 0 0 0  422 
He:X 3 0 0 0 0   0   2  26  366   19 0 0 0 0 0 0   0 0 0 0  416 
He:S 1 0 0 0 0   0   1  30  135  239 0 0 0 0 0 0  10 0 0 0  416 
iW:X 3 0 0 0 0   0   0   4   30  362 0 0 0 0 0 0   0 0 0 0  399 
iW:S 2 0 0 0 0   0   0   0   15  381 0 0 0 0 0 0   1 0 0 0  399 
ie:X 1 0 0 0 0   1   1   1   22  452 0 0 0 0 0 0   0 0 0 0  478 
ie:S 0 0 0 0 0   1   0   1   36  440 0 0 0 0 0 0   0 0 0 0  478 
We:X 2 0 0 0 0   0   0   6   27  353 0 0 0 0 0 0   0 0 0 0  388 
We:S 2 0 0 0 0   0   0   8   68  310 0 0 0 0 0 0   0 0 0 0  388 
-------------------------------------------------------------------
Tot 25 0 0 7 3 184 149 411 2285 5226 0 0 0 0 0 0 154 0 0 0 8444 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1305

 ...by baseline, over all sources:

 bl     X     n       S     n

 LH    1.80  456     4.90  395
 Li    1.04  407     0.82  409
 LW    1.53  426     1.04  428
 Le    1.15  416     0.92  417
 Hi    1.51  406     1.67  407
 HW    2.12  419     2.14  421
 He    1.56  413     1.85  415
 iW    1.52  396     1.02  397
 ie    1.26  477     0.92  477
 We    1.60  386     1.09  385


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

  if station H and f_group S
    freqs a b c d 
* Channels SR5U and SR6U have strong in-band RFI

  if station W and f_group S
    pc_mode manual
    pc_phases abcdef 98.9 185.6 261.9 11.4 306.4 33.5

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn -38.0 -59.3 -152.8 -248.6 -104.7 -198.4 -181.0 -192.6

  if station L and f_group S
    pc_mode manual
    pc_phases abcdef -61.0   39.7  142.1  292.8  290.3   17.5

  if station L and f_group X
    pc_mode manual
 pc_phases ghijklmn 88.2  126.7  236.3   38.3  232.0   18.2  101.1  133.8

  if station H and f_group S
    pc_mode manual
    pc_phases abcd -132.8  -55.0 -297.3 -343.8

  if station H and f_group X
    pc_mode manual
 pc_phases ghijklmn 66.1 -159.6  -17.2 -175.9  -31.9 -213.1 -346.3 -104.6

  if station i and f_group S
    pc_mode manual
    pc_phases abcdef 0 0 0 0 0 0

  if station i and f_group X
    pc_mode manual
 pc_phases ghijklmn 0 0 0 0 0 0 0 0

  if station e and f_group S
    pc_mode manual
    pc_phases abcdef 79.3 -6.8 -92.5 -225.8 -127.4 -235.6

  if station e and f_group X
    pc_mode manual
 pc_phases ghijklmn 9.7 -188.7 -266.9 -245.1 -299.8 -113.0 -330.4 -47.4


* ref Ke/i --> just for book keeping

*   if station g and f_group S
*   pc_phases abcdef 
*   if station g and f_group X
*   pc_phases ghijklmn 

*   if station i and f_group S
*   pc_phases abcdef 
*   if station i and f_group X
*   pc_phases ghijklmn 

*   if station e and f_group S
*   pc_phases abcdef 
*   if station e and f_group X
*   pc_phases ghijklmn 

Regards,
 Jamie 

+END
