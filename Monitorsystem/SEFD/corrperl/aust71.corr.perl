+HEADER 
CORREL   CRTN 
DATABASE 14DEC15XB
SESSNAME AUST71
UTSTART  0700 
DURATION 24 
DOY      349-350 
CORRTIME 2015/03/10 2015/03/11 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            96%             - 
   0              2%             - 
 4-1,A-H,N        1%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HART15M  (Ht/g): Manual pcal. Station reports possible clock break at
  1339.

 HOBART12 (Hb/L): Manual pcal. Windstowed 0336-0400.

 KATH12M  (Ke/i): Manual pcal. 

 WARK12M  (Ww/W): Manual pcal. High winds caused pointing errors around
  ~2200

 YARRA12M (Yg/e): Manual pcal. 

+DROP_CHANNELS
 Ht 
 Hb 
 Ke 
 Ww 
 Yg 

+MANUAL PCAL Ww Ke Ht Yg 

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
  HT           -2.23         0.00   57006.2916667
  KE           -9.83        -0.00   57006.2916667
  YG          -11.30         0.00   57006.2916667
  WW            2.09         0.00   57004.0000000


+QCODES

Qcod  0 1 2 3 4 5 6  7   8    9 A B C D E F  G H  N -   Tot 
---------------------------------------------------------------
gL:X 17 0 0 0 0 0 0  1   9  355 0 0 0 0 0 0  0 0  4 0   386 
gL:S 18 0 0 0 0 0 1  3  82  277 0 0 0 0 0 0  1 0  4 0   386 
gi:X 19 0 0 0 0 1 0  0   6  365 0 0 0 0 0 0  0 0  0 0   391 
gi:S 18 0 0 0 0 0 0  1  17  355 0 0 0 0 0 0  0 0  0 0   391 
gW:X 19 0 0 0 0 0 0  0   0  297 0 0 0 0 0 0  0 0  0 0   316 
gW:S 19 0 0 0 0 0 0  0   3  294 0 0 0 0 0 0  0 0  0 0   316 
ge:X 18 0 0 0 0 0 0  0   0  454 0 0 0 0 0 0  0 0  1 0   473 
ge:S 19 0 0 1 0 0 0  1  13  438 0 0 0 0 0 0  0 0  1 0   473 
Li:X  3 0 0 0 0 1 2  6  58  522 0 0 0 0 0 0  1 0 14 0   607 
Li:S  6 0 0 0 0 1 0  7  77  500 0 0 0 0 0 0  2 0 14 0   607 
LW:X  9 0 0 0 0 0 1  7  49  507 0 0 0 0 0 0  1 0 12 0   586 
LW:S  7 0 0 0 0 0 0 11 230  311 0 0 0 0 0 0 15 0 12 0   586 
Le:X  7 0 0 0 0 0 2  7  49  522 0 0 0 0 0 0  1 0 13 0   601 
Le:S  8 0 0 0 0 0 0  9 151  407 0 0 0 0 0 0 13 0 13 0   601 
iW:X  9 0 0 0 0 1 0  5  36  493 0 0 0 0 0 0  0 0  1 0   545 
iW:S  8 0 0 0 0 0 0  1  11  524 0 0 0 0 0 0  0 0  1 0   545 
ie:X  4 0 0 0 0 2 0  7  44  578 0 0 0 0 0 0  0 0  0 0   635 
ie:S  6 0 0 0 0 1 0  3  33  591 0 0 0 0 0 0  1 0  0 0   635 
We:X 11 0 0 0 0 0 0  1  23  470 0 0 0 0 0 0  0 0  0 0   505 
We:S 11 0 0 0 0 0 0  0  12  482 0 0 0 0 0 0  0 0  0 0   505 
---------------------------------------------------------------
Tot 236 0 0 1 0 7 6 70 903 8742 0 0 0 0 0 0 35 0 90 0 10090 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1311

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.81  365     0.93  362
 gi    0.84  370     0.87  371
 gW    1.01  296     0.98  297
 ge    0.96  454     0.96  452
 Li    1.11  590     0.93  587
 LW    1.61  565     1.23  567
 Le    1.23  581     1.03  579
 iW    1.44  535     1.02  536
 ie    1.39  631     0.97  629
 We    1.57  494     1.18  494


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
    pc_phases abcdef 8.3   -28.9   -61.4  -104.4   -95.9  -9.3

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn -44.1 -310.5 -249.0 -207.3 -44.9 -168.7 -83.1 -233.1

  if station i and f_group S
    pc_mode manual
    pc_phases abcdef 158.7 199.8 -102.4 -24.2 273.5 83.1

  if station i and f_group X
    pc_mode manual
 pc_phases ghijklmn -146.5 -171.2 -208.7 -273.1 -141.1 -234.1 -209.1 -236.9

  if station g and f_group S
    pc_mode manual
    pc_phases abcdef 152.9 23.1 -102.0 -272.4 -182.2 -255.8

  if station g and f_group X
    pc_mode manual
 pc_phases ghijklmn 154.1 295.7 3.3 341.8 154.6 318.2 311.0 19.2

  if station e and f_group S
    pc_mode manual
    pc_phases abcdef -61.1  -288.8  -149.1  -110.8  -358.2  -146.8

  if station e and f_group X
    pc_mode manual
 pc_phases ghijklmn -36.7 76.9 73.0 303.2 209.0 1.5 24.5 103.3


* ref Hb/L --> just for book keeping



Regards,
 Jamie 

+END
