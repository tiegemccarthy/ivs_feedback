+HEADER 
CORREL   CRTN 
DATABASE 14AUG16XA 
SESSNAME AUST41 
OBSTIME  2014/08/16 2014/08/16 
UTSTART  0000 
DURATION 1 
DOY      228 
CORRTIME 2014/10/07 2014/10/08 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            96%             - 
   0              -              - 
 4-1,A-H,N        4%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART12 (Hb/L): Strong RFI in SR5U ands SR6U. Weak channel threshold 
  reduced to 0.3 to avoied excessive data loss. Small clock breaks 
  apparent at 0302, 1506 and 2005.

 KATH12M  (Ke/i): Missed first 40 minutes of schedule - late start.

 WARK12M  (Ww/W): Manual phase cal applied. 

 YARRA12M (Yg/e): Missed first 90 minutes of schedule - Windstowed. Small
  clock break apparent at 1239. No usable phase cal in this experiment.
  Manual phase cal used, with two epochs required. Small clock break 
  apparent at 1239 when the pcal solution required updating. 

+DROP_CHANNELS
 Hb 
 Ke 
 Ww 
 Yg 

+MANUAL PCAL Ww Yg Yg 

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
  KE           -5.84         0.00   56885.0000000
  YG           -7.66         0.00   56885.0000000
  WW           38.73         0.00   56885.0000000


+QCODES

Qcod 0 1 2 3 4 5 6  7   8    9 A B C D E F  G H   N -  Tot 
--------------------------------------------------------------
Li:X 0 0 0 0 0 0 1  4   8  628 0 0 0 0 0 0  0 0  14 0  655 
Li:S 0 0 0 0 0 0 0  3 103  533 0 0 0 0 0 0  2 0  14 0  655 
LW:X 1 0 0 0 0 1 1  2  10  671 0 0 0 0 0 0  1 0   0 0  687 
LW:S 0 0 0 0 1 0 0 12 268  391 0 0 0 0 0 0 15 0   0 0  687 
Le:X 2 0 0 0 0 0 0  1  16  613 0 0 0 0 0 0  0 0  41 0  673 
Le:S 1 0 0 0 0 0 0  6 175  443 0 0 0 0 0 0  7 0  41 0  673 
iW:X 3 0 0 0 0 0 1  2   7  624 0 0 0 0 0 0  0 0  13 0  650 
iW:S 2 0 0 0 0 0 0  2  72  560 0 0 0 0 0 0  1 0  13 0  650 
ie:X 0 0 0 0 0 0 0  5  20  639 0 0 0 0 0 0  0 0  42 0  706 
ie:S 0 0 0 0 0 0 0  1  11  651 0 0 0 0 0 0  1 0  42 0  706 
We:X 1 0 0 0 0 0 0  0  21  574 0 0 0 0 0 0  0 0  39 0  635 
We:S10 0 0 0 0 0 0  5 124  456 0 0 0 0 0 0  1 0  39 0  635 
--------------------------------------------------------------
Tot 20 0 0 0 1 1 3 43 835 6783 0 0 0 0 0 0 28 0 298 0 8012 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1281

 ...by baseline, over all sources:

 bl     X     n       S     n

 Li    1.26  641     0.86  641
 LW    1.74  686     0.97  687
 Le    1.38  630     0.96  630
 iW    1.42  634     1.06  635
 ie    1.33  664     1.18  664
 We    1.58  595     1.20  585


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
    pc_phases abcdef 15.0 -285.8 -230.3 -331.3 -87.1  -276.6

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn -123.9 135.6 -96.9 -89.5 -59.2 -26.8 -42.8 -77.9

  if station e and f_group S and scan < 228-123900
    pc_mode manual
    pc_phases abcdef -0.6   -72.8  -137.9  -219.3   -30.9   -55.3

  if station e and f_group X and scan < 228-123900
    pc_mode manual
 pc_phases ghijklmn 42.3 -31.1 -304.5 -77.9 -277.5 -308.6 -19.6 -177.6

  if station e and f_group S and scan > 228-123900
    pc_mode manual
    pc_phases abcdef -163.9  -242.5  39.4   -45.9  -220.9  -256.8

  if station e and f_group X and scan > 228-123900
    pc_mode manual
 pc_phases ghijklmn -2.7 -98.7 -64.1 -279.0 -211.1 -277.9 -6.7 -178.9


* ref Hb/L --> just for book keeping

   if station i and f_group S
   pc_phases abcdef -2.2    0.5    3.3   -1.5    2.5   -2.4
   if station i and f_group X
   pc_phases ghijklmn -1.9   -2.1 4.6 5.9 -6.0    4.2   -7.5    1.9

*   if station W and f_group S
*   pc_phases abcdef 1.7    5.1   -3.7   -6.4   -7.2   13.8
*   if station W and f_group X
*   pc_phases ghijklmn 1.0  -12.4   -3.5 32.1  -18.0   -1.7 -0.2 -0.5

Regards,
 Jamie 

+END
