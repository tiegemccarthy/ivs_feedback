+HEADER 
CORREL   CRTN 
DATABASE 14MAR19XA 
SESSNAME AUST21 
UTSTART  0700 
DURATION 24 
DOY      078-079 
CORRTIME 2014/08/05 2014/08/06 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            92%             - 
   0              8%             - 
 4-1,A-H,N        -              - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HART15M  (Ht/g): Ok.

 HOBART12 (Hb/L): Low sensitivity in X5U and upper X-band generally. S5U 
  and S6U affected by strong RFI leading to low sensitivity. G-code 
  threshold reduced to 0.3 to avoid excessive loss of data.

 KATH12M  (Ke/i): Ok

 WARK12M  (Ww/W): Manual phase cal. No detections after 079-0446 due to a 
  drive problem.

 YARRA12M (Yg/e): Ok. 

+DROP_CHANNELS
 Ht 
 Hb 
 Ke 
 Ww 
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
  HT           -2.20        -0.00   56728.7291667
  KE           -9.09         0.00   56735.2916667
  YG           -7.82         0.00   56735.2916667
  WW            8.29         0.00   56735.2916667


+QCODES

Qcod  0 1 2 3 4  5  6   7    8    9 A B C D E F  G H N -  Tot 
-----------------------------------------------------------------
gL:X 23 0 0 0 0  0  1   6   25  200 0 0 0 0 0 0  0 0 0 0  255 
gL:S 14 0 0 0 0  0  1  18   31  189 0 0 0 0 0 0  2 0 0 0  255 
gi:X 19 0 0 0 0  2  1   2   22  199 0 0 0 0 0 0  0 0 0 0  245 
gi:S 23 0 0 0 0  0  0   5   28  189 0 0 0 0 0 0  0 0 0 0  245 
gW:X 40 0 0 0 0  2  1   8   38  125 0 0 0 0 0 0  0 0 0 0  214 
gW:S 38 0 0 0 0  0  1  11   21  143 0 0 0 0 0 0  0 0 0 0  214 
ge:X 27 0 0 0 0  1  2   5   22  238 0 0 0 0 0 0  0 0 0 0  295 
ge:S 18 0 0 0 0  0  0   3   40  233 0 0 0 0 0 0  1 0 0 0  295 
Li:X  5 0 0 0 0  0  3  12   67  228 0 0 0 0 0 0  0 0 0 0  315 
Li:S  0 0 0 0 0  1  0   1   75  237 0 0 0 0 0 0  1 0 0 0  315 
LW:X 32 0 0 0 0  0  3  19  237   49 0 0 0 0 0 0  0 0 0 0  340 
LW:S 29 0 0 0 0  0  0   2  130  174 0 0 0 0 0 0  5 0 0 0  340 
Le:X 12 0 0 0 0  1  0  12  156  135 0 0 0 0 0 0  1 0 0 0  317 
Le:S  2 0 0 0 0  0  0   2   81  229 0 0 0 0 0 0  3 0 0 0  317 
iW:X 45 0 0 0 1  0  2  19   89  142 0 0 0 0 0 0  0 0 0 0  298 
iW:S 27 0 0 0 0  0  0   0    4  267 0 0 0 0 0 0  0 0 0 0  298 
ie:X  8 0 0 0 0  0  2   9   50  279 0 0 0 0 0 0  0 0 0 0  348 
ie:S  0 0 0 0 0  1  0   4    9  334 0 0 0 0 0 0  0 0 0 0  348 
We:X 45 0 0 0 0  3  1  16  145   69 0 0 0 0 0 0  0 0 0 0  279 
We:S 31 0 0 0 0  0  0   0   16  232 0 0 0 0 0 0  0 0 0 0  279 
-----------------------------------------------------------------
Tot 438 0 0 0 1 11 18 154 1286 3891 0 0 0 0 0 0 13 0 0 0 5812 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1261

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    1.01  232     0.78  240
 gi    0.98  226     1.07  220
 gW    1.19  174     1.01  174
 ge    0.89  268     0.99  276
 Li    1.36  310     1.10  315
 LW    1.74  308     1.27  311
 Le    1.22  305     1.05  315
 iW    1.54  253     1.26  271
 ie    1.21  340     1.35  348
 We    1.39  234     1.22  248


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

*  if station W and f_group X
*    freqs g h i j k l m n+ 
* Channel X8L has low amplitude, leading to many G-codes. 

  if station W and f_group X
 pc_mode manual
 pc_phases ghijklmn -138.5 -16.2 -190.7 -314.0 -147.0 -59.4 -213.5 -313.5

  if station W and f_group S
    pc_mode manual
    pc_phases abcdef 124.7  211.0  276.7   26.6   91.8  254.4

* ref Yg/e --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -6.2  0.1  3.8  6.6  7.8   -10.3
   if station g and f_group X
   pc_phases ghijklmn -5.2 5.1 0.9  13.7 -9.2 -16.9 36.8 -9.4

   if station i and f_group S
   pc_phases abcdef 0.2   8.3    -1.0   -17.1   0.4   6.8
   if station i and f_group X
   pc_phases ghijklmn 3.5 -8.4    -0.6    -1.0  8.4  3.7 -2.0 -3.5

   if station L and f_group S
   pc_phases abcdef 0.8   6.5    -1.6   -11.9   2.5   5.7
   if station L and f_group X
   pc_phases ghijklmn 1.6   0.5    -1.3  -7.4 19.7 -15.6 40.3 -11.9

Regards,
 Jamie 

+END
