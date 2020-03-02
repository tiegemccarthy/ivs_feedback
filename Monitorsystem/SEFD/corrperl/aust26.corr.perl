+HEADER 
CORREL   CRTN 
DATABASE 14JUN04XA
SESSNAME AUST26 
UTSTART  0700 
DURATION 24 
DOY      155-156 
CORRTIME 2014/09/05 2014/09/06 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            82%             - 
   0             18%             - 
 4-1,A-H,N        -              - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HART15M  (Ht/g): Ok. 

 HOBART12 (Hb/L): Ok. 

 KATH12M  (Ke/i): Ok. 

 WARK12M  (Ww/W): Manual phase cal. No detections in XR5U-XR8U - channels 
  dropped. Weak detections in S-band, especially SR4U-SR6U. Problem likely
  due to DBBC configuration error. 

 YARRA12M (Yg/e): Ok. 

+DROP_CHANNELS
 Ht 
 Hb 
 Ke 
 Ww      XR5U XR6U XR7U XR8U/L  
 Yg 

+MANUAL PCAL Ww 

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
  HT           -4.44        -0.00   56812.2916667
  KE           -6.06         0.00   56812.2916667
  YG           -8.00         0.00   56803.2916667
  WW           13.62         0.00   56812.2916667


+QCODES

Qcod   0 1 2 3 4  5  6   7   8    9 A B C D E F  G H N -  Tot 
-----------------------------------------------------------------
gL:X  19 0 0 0 0  0  0   1  11  248 0 0 0 0 0 0  0 0 0 0  279 
gL:S  17 0 0 0 0  0  0   1  45  213 0 0 0 0 0 0  3 0 0 0  279 
gi:X  18 0 0 0 0  0  4   6  46  203 0 0 0 0 0 0  0 0 1 0  278 
gi:S  20 0 0 0 0  0  0   0   4  253 0 0 0 0 0 0  0 0 1 0  278 
gW:X  55 0 0 0 0  0  0   6  43  153 0 0 0 0 0 0  0 0 0 0  257 
gW:S 196 0 0 0 0  0  0   2   9   50 0 0 0 0 0 0  0 0 0 0  257 
ge:X  38 0 0 0 0  2  2   1  11  268 0 0 0 0 0 0  0 0 1 0  323 
ge:S  25 0 0 0 0  1  0   0   6  290 0 0 0 0 0 0  0 0 1 0  323 
Li:X   8 0 0 0 0  0  1   6  42  276 0 0 0 0 0 0  0 0 0 0  333 
Li:S   3 0 0 0 0  4  0   3  43  278 0 0 0 0 0 0  2 0 0 0  333 
LW:X  29 0 0 0 0  0  1  23 195  121 0 0 0 0 0 0  0 0 1 0  370 
LW:S 204 0 0 0 0  0  0  14  42  109 0 0 0 0 0 0  0 0 1 0  370 
Le:X   8 0 0 0 1  1  1   6   6  314 0 0 0 0 0 0  0 0 0 0  337 
Le:S   5 0 0 0 0  1  2   2  73  251 0 0 0 0 0 0  3 0 0 0  337 
iW:X  33 0 0 0 0  0  0  16 139  139 0 0 0 0 0 0  0 0 0 0  327 
iW:S 220 0 0 0 0  0  0   1   9   96 0 0 0 0 0 0  1 0 0 0  327 
ie:X  12 0 0 0 2  3  4   5  91  243 0 0 0 0 0 0  2 0 1 0  363 
ie:S   2 0 0 0 1  0  1   3   3  352 0 0 0 0 0 0  0 0 1 0  363 
We:X  30 0 0 0 0  0  0  20 126  136 0 0 0 0 0 0  0 0 0 0  312 
We:S 177 0 0 0 0  0  0   0  16  118 0 0 0 0 0 0  1 0 0 0  312 
-----------------------------------------------------------------
Tot 1119 0 0 0 4 12 16 116 960 4111 0 0 0 0 0 0 12 0 8 0 6358 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1266

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    1.02  260     0.74  259
 gi    0.82  259     0.94  253
 gW    0.57  197     0.43   54
 ge    0.94  284     1.06  294
 Li    1.20  325     0.98  327
 LW    0.87  339     0.42  158
 Le    1.34  329     1.09  332
 iW    0.69  293     0.39  102
 ie    1.10  350     1.32  359
 We    0.65  280     0.44  127


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

  if station W and f_group X
    freqs g h i j
* Channel X5U-X8U are all non-detections. 

  if station W and f_group X
    pc_mode manual
    pc_phases ghij 110.2   93.6   80.1    7.1

  if station W and f_group S
    pc_mode manual
    pc_phases abcdef 9.3  316.0  243.1  301.4  240.6  281.4
   

* ref Yg/e --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -5.7  10.1   2.1    -9.0   1.2 2.2
   if station g and f_group X
   pc_phases ghijklmn 6.9  38.6   -77.8 23.9 -53.8 -4.2   -3.7 20.3

   if station i and f_group S
   pc_phases abcdef 0.6   8.2   1.6   -16.7   4.6   4.1
   if station i and f_group X
   pc_phases ghijklmn -5.3  13.2  10.4   -8.3 -23.6 -41.2 110.9 -1.6

   if station L and f_group S
   pc_phases abcdef 1.6   6.4 -2.3   -12.0  3.8   4.8
   if station L and f_group X
   pc_phases ghijklmn 0.7 -1.5  0.2  -3.5 8.6 -6.1 1.5 -0.6

Regards,
 Jamie 

+END
