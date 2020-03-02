+HEADER 
CORREL   CRTN 
DATABASE 15JAN17XA 
SESSNAME AUG002 
UTSTART  0000 
DURATION 24 
DOY      017 
CORRTIME 2015/03/20 2015/03/21 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            77%             - 
   0              3%             - 
 4-1,A-H,N       20%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART12 (Hb/L): Manual pcal. Many windstows early in the experiment.
  Apparent clock breaks at 0230 and 0838. 

 KATH12M  (Ke/i): Manual pcal.

 WARK12M  (Ww/W): Manual pcal. No data before 0200.

 YARRA12M (Yg/e): Manual pcal. Clock break at 1030. Many G-codes due to
  low sensitivity in upper X-band channels caused by DBBC problem. 

+DROP_CHANNELS
 Hb 
 Ke 
 Ww 
 Yg 

+MANUAL PCAL Ww Ke Yg Yg Hb 

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
  KE           -9.96        -0.00   57039.0000000
  YG          -11.65         0.00   57039.0000000
  WW            5.60         0.00   57039.0000000


+QCODES

Qcod  0 1 2 3 4 5  6   7    8    9 A B C D E F   G H    N -  Tot 
--------------------------------------------------------------------
Li:X 45 0 0 0 0 0  0   6   58  424 0 0 0 0 0 0   0 0  186 0  719 
Li:S 49 0 0 0 0 0  0   5   56  419 0 0 0 0 0 0   4 0  186 0  719 
LW:X 41 0 0 0 0 0  0  15   71  411 0 0 0 0 0 0   0 0  200 0  738 
LW:S 42 0 0 0 0 0  1  14  196  270 0 0 0 0 0 0  15 0  200 0  738 
Le:X 51 0 0 0 0 0 29 129  151  106 0 0 0 0 0 0  82 0  186 0  734 
Le:S 48 0 0 0 0 0  1  12  135  347 0 0 0 0 0 0   5 0  186 0  734 
iW:X  4 0 0 0 0 0  0   5   33  616 0 0 0 0 0 0   0 0   53 0  711 
iW:S  2 0 0 0 0 0  0   0    8  648 0 0 0 0 0 0   0 0   53 0  711 
ie:X  1 0 0 0 0 1 35 187  226  189 0 0 0 0 0 0 119 0    1 0  759 
ie:S  3 0 0 0 1 0  0   2   18  734 0 0 0 0 0 0   0 0    1 0  759 
We:X  5 0 0 0 0 1 20 127  207  166 0 0 0 0 0 0 118 0   53 0  697 
We:S  4 0 0 0 0 0  0   2   24  613 0 0 0 0 0 0   1 0   53 0  697 
--------------------------------------------------------------------
Tot 295 0 0 0 1 2 86 504 1183 4943 0 0 0 0 0 0 344 0 1358 0 8716 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1316

 ...by baseline, over all sources:

 bl     X     n       S     n

 Li    1.26  487     0.94  484
 LW    1.78  496     1.21  496
 Le    0.95  496     0.96  498
 iW    1.59  654     1.05  656
 ie    1.03  757     0.96  755
 We    1.22  639     1.08  640


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
    pc_phases abcdef -136.2 -86.4 -50.1 8.9 147.9 236.2

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn 76.8 135.3 289.2 193.9 329.9 345.6 67.4 96.3

  if station i and f_group S
    pc_mode manual
    pc_phases abcdef 0 0 0 0 0 0

  if station i and f_group X
    pc_mode manual
 pc_phases ghijklmn 0 0 0 0 0 0 0 0

  if station e and f_group S and scan < 017-103000
    pc_mode manual
    pc_phases abcdef 44.8 66.9 107.1 162.8 151.6 175.7

  if station e and f_group X and scan < 017-103000
    pc_mode manual
 pc_phases ghijklmn 130.5 181.3 324.9 204.2 102.6 0.3 181.4 212.3

  if station e and f_group S and scan > 017-103000
    pc_mode manual
    pc_phases abcdef 91.1 84.5 81.5 90.3    -8.8   -14.1

  if station e and f_group X and scan > 017-103000
    pc_mode manual
 pc_phases ghijklmn 56.4 46.9 -279.2 -204.1 -200.8 -54.6 -300.4 -263.2

  if station L and f_group S
    pc_mode manual
    pc_phases abcdef 38.6   79.6  132.3  213.9    3.7   60.1

  if station L and f_group X
    pc_mode manual
 pc_phases ghijklmn -15.8   58.3  259.3  225.4  112.6  215.8  272.2  311.8

* ref Ke/i --> just for book keeping


Regards,
 Jamie  

+END
