+HEADER 
CORREL   CRTN 
DATABASE 14NOV22XA 
SESSNAME AUST61 
OBSTIME  2014/11/22 2014/11/22 
UTSTART  0000 
DURATION 24 
DOY      326 
CORRTIME 2014/02/18 2014/02/19 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            71%             - 
   0             20%             - 
 4-1,A-H,N        9%             - 
 Removed          -              - 

+CORRELATOR_NOTES
Manual pcal used for all stations.

+STATION_NOTES

 HOBART12 (Hb/L): No data between 0820-0848 due to DBBC problem.

 KATH12M  (Ke/i): No useful data before 0844. Recorder and DBBC problems.

 WARK12M  (Ww/W): No data before 0800 - late start.

 YARRA12M (Yg/e): Ok. 

+DROP_CHANNELS
 Hb 
 Ke 
 Ww 
 Yg 

+MANUAL PCAL Ww Hb Ke Yg 

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
  KE          -10.27        -0.00   56983.0000000
  YG          -11.55         0.00   56983.0000000
  WW            0.28         0.00   56976.0000000


+QCODES

Qcod   0 1 2 3 4 5 6  7   8    9 A B C D E F  G H   N -  Tot 
----------------------------------------------------------------
Li:X 287 0 0 0 0 0 0  1   6  572 0 0 0 0 0 0  0 0  53 0  919 
Li:S 288 0 0 0 0 1 1  4  52  519 0 0 0 0 0 0  1 0  53 0  919 
Le:X  35 0 0 0 1 2 2  4  15  860 0 0 0 0 0 0  0 0   0 0  919 
Le:S  38 0 0 3 1 0 0 22 207  623 0 0 0 0 0 0 25 0   0 0  919 
LW:X   6 0 0 0 0 0 0  0   0   65 0 0 0 0 0 0  0 0  50 0  121 
LW:S   3 0 0 0 0 0 0  2   9   55 0 0 0 0 0 0  2 0  50 0  121 
ie:X 294 0 0 0 0 0 0  5   6  565 0 0 0 0 0 0  0 0  52 0  922 
ie:S 300 0 0 1 0 0 0  1  15  552 0 0 0 0 0 0  1 0  52 0  922 
iW:X   9 0 0 0 0 0 0  0   0   58 0 0 0 0 0 0  0 0  54 0  121 
iW:S   4 0 0 0 0 0 0  0   0   63 0 0 0 0 0 0  0 0  54 0  121 
eW:X   4 0 0 0 0 0 0  0   0   67 0 0 0 0 0 0  0 0  50 0  121 
eW:S   1 0 0 0 0 0 0  0  17   53 0 0 0 0 0 0  0 0  50 0  121 
----------------------------------------------------------------
Tot 1269 0 0 4 2 3 3 39 327 4052 0 0 0 0 0 0 29 0 518 0 6246 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1301

 ...by baseline, over all sources:

 bl     X     n       S     n

 Li    1.11  578     0.87  576
 Le    1.14  884     0.96  879
 LW    1.12   65     0.84   68
 ie    1.49  575     1.01  569
 iW    1.24   58     0.96   63
 We    1.35   66     1.02   70


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
    pc_phases abcdef -133.8 -191.2   99.5   -4.9   -1.4  -21.7

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn 90.9  -18.3  -15.8 -181.1  -82.6 -125.2 -313.1  -23.4

  if station L and f_group S
    pc_mode manual
    pc_phases abcdef -73.3  -58.7  -58.8  -46.8  117.3  139.6

  if station L and f_group X
    pc_mode manual
 pc_phases ghijklmn 102.2  -27.7  -21.8 -226.1 -143.8 -172.8  -50.8 -119.7

  if station i and f_group S
    pc_mode manual
    pc_phases abcdef 162.7   39.7  -84.7  -97.3  -63.1 -123.4

  if station i and f_group X
    pc_mode manual
 pc_phases ghijklmn 0.8 -119.0 -107.7 -305.9 -177.7 -231.3 -128.9 -206.4

  if station e and f_group S
    pc_mode manual
    pc_phases abcdef 0 0 0 0 0 0

  if station e and f_group X
    pc_mode manual
 pc_phases ghijklmn 0 0 0 0 0 0 0 0

* ref Yg/e --> just for book keeping


Regards,
 Jamie 

+END
