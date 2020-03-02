+HEADER 
CORREL   CRTN 
DATABASE 14NOV23XA 
SESSNAME AUST62 
OBSTIME  2014/11/23 2014/11/23 
UTSTART  0000 
DURATION 24 
DOY      327 
CORRTIME 2014/02/17 2014/02/18 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            89%             - 
   0              8%             - 
 4-1,A-H,N        3%             - 
 Removed          -              - 

+CORRELATOR_NOTES
Manual phase cal used for all stations.

+STATION_NOTES

 HOBART12 (Hb/L): Ok.

 KATH12M  (Ke/i): Large clock break at 1908, no data recorded between 1908
  and 1958. New pcal solution after the break. 

 WARK12M  (Ww/W): No detections after 1300. It's not clear what caused 
  this problem.

 YARRA12M (Yg/e): Ok. 

+DROP_CHANNELS
 Hb 
 Ke 
 Ww 
 Yg 

+MANUAL PCAL Ww Ke Ke Yg Hb 

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
  KE          -10.27        -0.00   56984.0000000
  YG          -11.56         0.00   56984.0000000
  WW            0.28         0.00   56976.0000000


+QCODES

Qcod  0 1 2 3 4 5 6  7   8    9 A B C D E F  G H   N -  Tot 
---------------------------------------------------------------
Li:X 16 0 0 0 0 0 0  0  21  859 0 0 0 0 0 0  0 0  28 0  924 
Li:S 33 0 0 0 0 1 0  5  75  782 0 0 0 0 0 0  0 0  28 0  924 
Le:X 17 0 0 0 1 1 1  6  18  870 0 0 0 0 0 0  1 0   8 0  923 
Le:S 28 0 0 0 1 0 0 34 189  635 0 0 0 0 0 0 28 0   8 0  923 
LW:X 57 0 0 0 0 0 0  0   0   63 0 0 0 0 0 0  0 0   2 0  122 
LW:S 57 0 0 0 0 0 0  2  21   35 0 0 0 0 0 0  5 0   2 0  122 
ie:X 26 0 0 0 1 0 0  9  30  837 0 0 0 0 0 0  0 0  20 0  923 
ie:S 41 0 0 1 0 0 0  0  22  838 0 0 0 0 0 0  1 0  20 0  923 
iW:X 55 0 0 0 0 0 0  0   0   62 0 0 0 0 0 0  0 0   5 0  122 
iW:S 54 0 0 0 0 0 0  0   0   63 0 0 0 0 0 0  0 0   5 0  122 
eW:X 60 0 0 0 0 0 0  0   0   62 0 0 0 0 0 0  0 0   0 0  122 
eW:S 60 0 0 0 0 0 0  1  15   46 0 0 0 0 0 0  0 0   0 0  122 
---------------------------------------------------------------
Tot 504 0 0 1 3 2 1 57 391 5152 0 0 0 0 0 0 35 0 126 0 6272 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1302

 ...by baseline, over all sources:

 bl     X     n       S     n

 Li    1.04  880     0.83  856
 Le    1.13  897     0.94  883
 LW    1.06   63     0.88   63
 ie    1.38  877     0.99  862
 iW    1.31   61     0.98   63
 We    1.38   62     1.14   62


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
    pc_phases abcdef -24.7   48.1  108.5  194.5  129.3  219.4

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn 83.3 -48.4 -107.6 -10.7 -48.2 -171.0 -40.7 -123.9

  if station i and f_group S and scan < 327-191000
    pc_mode manual
    pc_phases abcdef -95.0 -217.5 -349.7   -5.5 -340.3  -49.2

  if station i and f_group X and scan < 327-191000
    pc_mode manual
 pc_phases ghijklmn 128.9  -78.3 -289.8 -131.0 -136.9 -102.6 -133.1 -257.6

  if station i and f_group S and scan > 327-191000
   pc_mode manual
   pc_phases abcdef 11.6 -329.8 -323.1 -140.1 -178.8 -183.6

  if station i and f_group X and scan > 327-191000
    pc_mode manual
 pc_phases ghijklmn  158.4 -334.8  -10.5 -285.3  -16.0 -239.8  -38.3 -104.0


  if station e and f_group S
    pc_mode manual
    pc_phases abcdef 0 0 0 0 0 0

  if station e and f_group X
    pc_mode manual
 pc_phases ghijklmn 0 0 0 0 0 0 0 0

  if station L and f_group S
    pc_mode manual
    pc_phases abcdef 70.9  140.1  211.0  305.2  259.3  334.4

  if station L and f_group X
    pc_mode manual
 pc_phases ghijklmn 22.5 -96.4 -67.8 -236.4 -109.3 -117.9 -340.3 -44.2


* ref Yg/e --> just for book keeping


Regards,
 Jamie 

+END
