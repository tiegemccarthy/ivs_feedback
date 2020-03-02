+HEADER 
CORREL   CRTN 
DATABASE 15JAN09XA
SESSNAME AUG001 
UTSTART  1900 
DURATION 24 
DOY      009-010 
CORRTIME 2015/03/23 2015/03/24 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            87%             - 
   0             10%             - 
 4-1,A-H,N        3%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HART15M  (Ht/g): Manual pcal. 

 HOBART12 (Hb/L): Manual pcal. No data collected during intervals
  0842-0856, 1033-1100, 1208-1229 due to other observing commitments.

 KATH12M  (Ke/i): Manual pcal. Small break noted at 0404,

 YARRA12M (Yg/e): Manual pcal. Large clock break at 0326. Residual delays
  seem to show a sub-ns periodic variation on a timescale of ~1 hour. 

+DROP_CHANNELS
 Ht 
 Hb 
 Ke 
 Yg 

+MANUAL PCAL Ht Yg Yg Ke Hb 

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
  HT           -2.59         0.00   57031.7916667
  KE           -9.96        -0.00   57039.0000000
  YG          -11.58         0.00   57031.7916667


+QCODES

Qcod  0 1 2 3 4  5  6  7   8    9 A B C D E F  G H  N -  Tot 
----------------------------------------------------------------
gL:X  0 0 0 0 0  0  0  2   0  108 0 0 0 0 0 0  0 0  3 0  113 
gL:S 10 0 0 0 0  0  0  7  33   59 0 0 0 0 0 0  1 0  3 0  113 
gi:X  0 0 0 0 0  0  0  3   4  101 0 0 0 0 0 0  0 0  0 0  108 
gi:S 13 0 0 0 0  1  0  0   3   91 0 0 0 0 0 0  0 0  0 0  108 
ge:X  1 0 0 0 0  0  0 11   9  169 0 0 0 0 0 0  0 0  0 0  190 
ge:S 29 0 0 0 0  1  0  1  17  142 0 0 0 0 0 0  0 0  0 0  190 
Li:X  1 0 0 0 0  0  0 15  23  481 0 0 0 0 0 0  1 0 22 0  543 
Li:S128 0 0 0 0  4  6  7  45  328 0 0 0 0 0 0  3 0 22 0  543 
Le:X  4 0 0 0 0  0  0 13  24  452 0 0 0 0 0 0  1 0 22 0  516 
Le:S104 0 0 0 5  3  3  9  92  274 0 0 0 0 0 0  4 0 22 0  516 
ie:X  1 0 0 0 0  0  0  9  26  483 0 0 0 0 0 0  0 0  0 0  519 
ie:S107 0 0 1 0  2  4  7  29  369 0 0 0 0 0 0  0 0  0 0  519 
----------------------------------------------------------------
Tot 398 0 0 1 5 11 13 84 305 3057 0 0 0 0 0 0 10 0 94 0 3978 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1315

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.79  109     0.85  100
 gi    0.77  108     0.81   95
 ge    0.88  189     0.87  160
 Li    0.92  519     0.85  393
 Le    0.97  490     0.90  387
 ie    1.10  518     0.90  409


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

  if station g and f_group S
    pc_mode manual
    pc_phases abcdef 140.2 290.1 72.6 295.1 257.4 26.2

  if station g and f_group X
    pc_mode manual
 pc_phases ghijklmn 161.2 2.9 179.0 341.7 217.8 185.1 174.9 263.5

  if station e and f_group S and scan < 010-032800
    pc_mode manual
    pc_phases abcdef 22.1 -0.9 -18.7 -41.0 -242.0 -269.6

  if station e and f_group X and scan < 010-032800
    pc_mode manual
 pc_phases ghijklmn -52.4 -17.4 122.0 1.8 88.5 140.2 28.4 88.1

  if station e and f_group S and scan > 010-032800
    pc_mode manual
    pc_phases abcdef -28.1 -90.8 -141.8 -211.0 -128.3 -198.7

  if station e and f_group X and scan > 010-032800
    pc_mode manual
 pc_phases ghijklmn -159.3 193.5 196.4 232.9 68.4 3.6 195.9 225.7



  if station i and f_group S
    pc_mode manual
    pc_phases abcdef -3.4 46.8 93.4 165.6 260.4 309.7

  if station i and f_group X
    pc_mode manual
 pc_phases ghijklmn -88.2 72.6 82.6 321.3 257.3 131.1 60.7 129.5

  if station L and f_group S
    pc_mode manual
    pc_phases abcdef 0 0 0 0 0 0

  if station L and f_group X
    pc_mode manual
 pc_phases ghijklmn 0 0 0 0 0 0 0 0



* ref Hb/L --> just for book keeping


Regards,
 Jamie 

+END
