+HEADER 
CORREL   CRTN 
DATABASE 14NOV16XA 
SESSNAME AUST60 
OBSTIME  2014/11/16 2014/11/16 
UTSTART  0000 
DURATION 24 
DOY      320 
CORRTIME 2015/02/12 2015/02/13 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            95%             - 
   0              4%             - 
 4-1,A-H,N        1%             - 
 Removed          -              - 

+CORRELATOR_NOTES
Manual pcal applied for all stations. 

+STATION_NOTES

 HART15M  (Ht/g): Manual pcal. Ok. 

 HOBART12 (Hb/L): Manual pcal. Ok.

 KATH12M  (Ke/i): Manual pcal. Ok.

 WARK12M  (Ww/W): Manual pcal. Ok.

 YARRA12M (Yg/e): Manual pcal. Ok.

+DROP_CHANNELS
 Ht 
 Hb 
 Ke 
 Ww 
 Yg 

+MANUAL PCAL Ww Yg Hb Ke Ht 

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
  HT           -2.19        -0.00   56976.0000000
  KE          -10.32        -0.00   56976.0000000
  YG          -11.48         0.00   56976.0000000
  WW           21.95         0.00   56976.0000000


+QCODES

Qcod  0 1 2 3 4 5 6  7   8    9 A B C D E F  G H  N -  Tot 
--------------------------------------------------------------
gL:X 27 0 0 0 0 0 0  0   3  531 0 0 0 0 0 0  0 0  0 0  561 
gL:S 60 0 0 0 0 0 1  9  75  413 0 0 0 0 0 0  3 0  0 0  561 
gi:X 41 0 0 0 0 0 0  0  11  485 0 0 0 0 0 0  0 0  4 0  541 
gi:S 41 0 0 0 0 0 0  0  14  482 0 0 0 0 0 0  0 0  4 0  541 
ge:X 41 0 0 0 0 0 1  5   2  543 0 0 0 0 0 0  0 0  0 0  592 
ge:S 55 0 0 1 0 0 0  1  54  481 0 0 0 0 0 0  0 0  0 0  592 
gW:X  3 0 0 0 0 0 0  0   2   36 0 0 0 0 0 0  0 0  0 0   41 
gW:S  2 0 0 0 0 0 0  0   2   37 0 0 0 0 0 0  0 0  0 0   41 
Li:X  3 0 0 0 0 2 0 11 114  538 0 0 0 0 0 0  0 0  5 0  673 
Li:S  4 0 0 0 0 0 1  4  49  610 0 0 0 0 0 0  0 0  5 0  673 
Le:X  8 0 0 0 0 0 0 13  32  607 0 0 0 0 0 0  1 0  0 0  661 
Le:S 13 0 0 1 0 0 2 21 158  452 0 0 0 0 0 0 14 0  0 0  661 
LW:X  3 0 0 0 0 0 0  0   2   60 0 0 0 0 0 0  0 0  0 0   65 
LW:S  1 0 0 0 0 0 0  0  16   45 0 0 0 0 0 0  3 0  0 0   65 
ie:X  6 0 0 0 1 0 1 13  42  607 0 0 0 0 0 0  0 0  5 0  675 
ie:S 14 0 0 0 0 1 0  2  40  613 0 0 0 0 0 0  0 0  5 0  675 
iW:X  3 0 0 0 0 0 0  0   4   57 0 0 0 0 0 0  0 0  1 0   65 
iW:S  1 0 0 0 0 0 0  0   0   63 0 0 0 0 0 0  0 0  1 0   65 
eW:X  3 0 0 0 0 0 1  0   3   54 0 0 0 0 0 0  0 0  0 0   61 
eW:S  1 0 0 0 0 0 0  0   7   53 0 0 0 0 0 0  0 0  0 0   61 
--------------------------------------------------------------
Tot 330 0 0 2 1 3 7 79 630 6767 0 0 0 0 0 0 21 0 30 0 7870 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1300

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.74  532     0.78  491
 gi    0.89  496     0.83  485
 ge    0.95  549     0.90  531
 gW    1.42   37     1.20   39
 Li    1.05  664     0.85  663
 Le    1.19  653     0.93  646
 LW    1.03   62     0.87   64
 ie    1.36  664     0.96  656
 iW    1.15   61     0.93   63
 We    1.19   58     1.02   60


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
    pc_phases abcdef -99.6    6.7   89.0  207.8  152.3  318.8

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn -171.1 64.4 223.5 1.4 47.1 155.5 38.1 124.2

  if station e and f_group S
    pc_mode manual
    pc_phases abcdef 0 0 0 0 0 0

  if station e and f_group X
    pc_mode manual
 pc_phases ghijklmn 0 0 0 0 0 0 0 0

  if station L and f_group S
    pc_mode manual
    pc_phases abcdef 71.7  194.4  314.0  111.9  123.5  287.3

  if station L and f_group X
    pc_mode manual
     pc_phases ghijklmn 109.1 116.6 116.1 120.7 -172.2 138.8 72.4 77.1

  if station i and f_group S
    pc_mode manual
    pc_phases abcdef -16.1   22.5   58.7  103.8  160.5  251.3

  if station i and f_group X
    pc_mode manual
 pc_phases ghijklmn 48.0 -61.5 -268.2 -180.6 -126.9 -38.3 -226.0 -178.6

  if station g and f_group S
    pc_mode manual
    pc_phases abcdef 6.6  179.2  337.8  212.6  290.1   96.6

  if station g and f_group X
    pc_mode manual
 pc_phases ghijklmn 6.6 188.2 286.8 304.7 333.2 57.6 246.6 309.5

* ref Yg/e --> just for book keeping


Regards,
 Jamie 

+END
