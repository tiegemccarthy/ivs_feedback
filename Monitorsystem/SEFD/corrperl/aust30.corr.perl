+HEADER 
CORREL   CRTN 
DATABASE 14JUL03XA 
SESSNAME AUST30 
UTSTART  1900 
DURATION 24 
DOY      184-185 
CORRTIME 2014/09/20 2014/09/21 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            95%             - 
   0              5%             - 
 4-1,A-H,N        -              - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HART15M  (Ht/g): No data recorded after 185-1526.

 HOBART12 (Hb/L): Ok. 

 KATH12M  (Ke/i): Channel XR5U dropped - DBBC configuration problem. Manual
  pcal applied, with three separate solutions. Associated clock breaks at 
  185-0612 and 185-1010.

 WARK12M  (Ww/W): Manual phase cal. 

 YARRA12M (Yg/e): Manual phase cal applied. Solutions using pcal showed odd
  variability, especially on the Ke-Yg baseline. 

+DROP_CHANNELS
 Ht 
 Hb 
 Ke      XR5U  
 Ww 
 Yg 

+MANUAL PCAL Ww Ke Ke Ke Yg 

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
  HB          -10.19         0.00   56841.7925694
  HT           -5.18        -0.00   56841.7925694
  KE           -5.72         0.00   56841.7925694
  YG           -7.95         0.00   56841.7925694
  WW           15.71         0.00   56841.7925694


+QCODES

Qcod  0 1 2 3 4 5 6   7    8    9 A B C D E F  G H N -  Tot 
---------------------------------------------------------------
Li:X  3 0 0 0 0 0 0   2   75  485 0 0 0 0 0 0  0 0 0 0  565 
Li:S  3 0 0 0 0 0 0   5   89  465 0 0 0 0 0 0  3 0 0 0  565 
LW:X  0 0 0 0 0 0 1  16   95  452 0 0 0 0 0 0  0 0 0 0  564 
LW:S  0 0 0 0 3 0 0  14  242  294 0 0 0 0 0 0 11 0 0 0  564 
Le:X  7 0 0 1 0 0 0   1   43  509 0 0 0 0 0 0  0 0 0 0  561 
Le:S  2 0 0 0 1 0 1   4  135  417 0 0 0 0 0 0  1 0 0 0  561 
Lg:X 49 0 0 0 0 0 0   0   17  291 0 0 0 0 0 0  0 0 0 0  357 
Lg:S 63 0 0 0 0 0 0   1   81  209 0 0 0 0 0 0  3 0 0 0  357 
iW:X  4 0 0 0 0 0 0   7  115  383 0 0 0 0 0 0  0 0 0 0  509 
iW:S  1 0 0 0 1 0 1   1   87  418 0 0 0 0 0 0  0 0 0 0  509 
ie:X  0 0 0 0 0 0 1  43  225  335 0 0 0 0 0 0  2 0 0 0  606 
ie:S  0 0 0 0 0 0 0   1    2  603 0 0 0 0 0 0  0 0 0 0  606 
ig:X 64 0 0 0 0 0 0   1   22  286 0 0 0 0 0 0  0 0 0 0  373 
ig:S 70 0 0 0 0 0 0   0    7  296 0 0 0 0 0 0  0 0 0 0  373 
We:X  1 0 0 0 0 0 1  15  203  261 0 0 0 0 0 0  0 0 0 0  481 
We:S  1 0 0 0 0 0 0   0   41  439 0 0 0 0 0 0  0 0 0 0  481 
Wg:X 36 0 0 0 0 0 0   0    7  243 0 0 0 0 0 0  0 0 0 0  286 
Wg:S 49 0 0 0 0 0 0   2   59  176 0 0 0 0 0 0  0 0 0 0  286 
eg:X 63 0 0 0 0 0 0   0    0  370 0 0 0 0 0 0  0 0 0 0  433 
eg:S 66 0 0 0 0 0 0   0   10  356 0 0 0 0 0 0  1 0 0 0  433 
---------------------------------------------------------------
Tot 482 0 0 1 5 0 5 113 1555 7288 0 0 0 0 0 0 21 0 0 0 9470 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1270

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.87  308     0.74  292
 gi    0.75  309     0.92  302
 gW    1.06  249     0.91  236
 ge    0.85  370     1.01  362
 Li    1.10  562     0.93  562
 LW    1.80  564     1.08  564
 Le    1.17  554     1.03  558
 iW    1.28  505     1.11  508
 ie    0.99  606     1.26  606
 We    1.36  480     1.22  480


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

  if station i and f_group X
    freqs g h i j l m n
* No detections in channel XR5U - DBBC problem.


  if station W and f_group X
    pc_mode manual
* pc_phases ghijklmn  -97.7  173.9 2.2  107.8  290.8 29.7 56.5 24.2
   pc_phases ghijklmn 110.6 339.2 170.9 2.4 303.6 216.1 251.2 38.9 

  if station W and f_group S
    pc_mode manual
*    pc_phases abcdef -114.9  -42.6 -348.0  -81.1 -143.8 -325.9
    pc_phases abcdef 179.5  43.7 257.5 224.7 329.9 312.4


  if station i and f_group S and scan < 185-061000
    pc_mode manual
    pc_phases abcdef -8.5  -154.4   -36.1   -32.9  -149.4  -209.1

  if station i and f_group X and scan < 185-064400
    pc_mode manual
    pc_phases ghijlmn 9.7  16.5 292.0 161.7  79.7 147.1 239.1

  if station i and f_group S and scan 185-061000 to 185-100600
    pc_mode manual
    pc_phases abcdef  146.5   -29.0  65.4  35.4 299.0 125.3

  if station i and f_group X and scan 185-061000 to 185-100600
    pc_mode manual
    pc_phases ghijlmn 162.9  89.4  -182.7  95.5  89.9  38.7  95.0

  if station i and f_group S and scan > 185-100600
    pc_mode manual
    pc_phases abcdef 153.0  -152.9   -94.8  -191.5   -21.6  -238.9

  if station i and f_group X and scan > 185-100600
    pc_mode manual
    pc_phases ghijlmn -131.4 121.0  -238.7   -92.0   -26.6  -124.8 -92.8

  if station e and f_group S 
    pc_mode manual
    pc_phases abcdef 1.2 186.3  21.4 336.0 149.8  71.9

  if station e and f_group X 
    pc_mode manual
    pc_phases ghijklmn -176.7 -46.0 -358.8 -39.1 -356.5 -70.1 -60.9 -245.8


* ref Hb/L --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -11.8    2.8    6.8   11.5    0.8  -17.2 
   if station g and f_group X
   pc_phases ghijklmn  -8.2   -2.1    4.7   27.4 -7.4 14.8 -60.1 9.9

*   if station i and f_group S
*   pc_phases abcdef 0.7   8.7    -0.1   -16.2   4.7   4.0
*   if station i and f_group X
*   pc_phases ghijlmn  -1.8  9.2  5.2   -11.0   -52.5  87.4  -9.9

*   if station e and f_group S
*   pc_phases abcdef -1.5   -7.2    3.2   13.7   -5.3   -5.0
*   if station e and f_group X
*   pc_phases ghijklmn  -3.4    2.4    2.6 8.7 -18.4 15.6 -46.5 12.9

Regards,
 Jamie 

+END
