+HEADER 
CORREL   CRTN 
DATABASE $14JUL12XA 
SESSNAME AUST31 
OBSTIME  2014/07/12 2014/07/13 
UTSTART  0000 
DURATION 1 
DOY      193 
CORRTIME 2014/09/12 2014/09/13 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            93%             - 
   0              2%             - 
 4-1,A-H,N        5%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HART15M  (Ht/g): Ok. 

 HOBART12 (Hb/L): Strong RFI in SR5U and SR6U. G-code threshold reduced to
  0.3 to avoid excessive loss of data.

 KATH12M  (Ke/i): Integer second offset in recorded data corrected at 2210.
  Clock break at this time. No detections in XR5U - channel dropped.

 WARK12M  (Ww/W): Manual phase cal. 

 YARRA12M (Yg/e): Two small clock breaks at approximate 0200 and 1600. 
  Possibly a slow drift of a few ns over 30 min rather than a break. 

+DROP_CHANNELS
 Ht 
 Hb 
 Ke      XR5U  
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
  HT           -5.51        -0.00   56850.0000000
  YG           -7.89         0.00   56850.0000000
  WW           16.26         0.00   56850.0000000


+QCODES

Qcod  0 1 2 3 4 5 6  7    8    9 A B C D E F  G H   N -  Tot 
----------------------------------------------------------------
gL:X 13 0 0 0 0 0 0  0    1  487 0 0 0 0 0 0  0 0   0 0  501 
gL:S 41 0 0 0 1 0 0  9  122  324 0 0 0 0 0 0  4 0   0 0  501 
gi:X 18 0 0 0 0 0 0  0    1  465 0 0 0 0 0 0  0 0   0 0  484 
gi:S 33 0 0 0 0 0 0  0    9  442 0 0 0 0 0 0  0 0   0 0  484 
ge:X 19 0 0 0 0 0 0  2  186  279 0 0 0 0 0 0  0 0  63 0  549 
ge:S 24 0 0 0 0 0 0  0   12  450 0 0 0 0 0 0  0 0  63 0  549 
gW:X  7 0 0 0 0 0 0  0    1  145 0 0 0 0 0 0  0 0   0 0  153 
gW:S 22 0 0 0 0 0 0  0    3  128 0 0 0 0 0 0  0 0   0 0  153 
Li:X  8 0 0 1 0 0 0  1    8  694 0 0 0 0 0 0  1 0   0 0  713 
Li:S  4 0 0 0 0 1 1  4   65  637 0 0 0 0 0 0  1 0   0 0  713 
Le:X  8 0 0 0 1 0 0  3  336  295 0 0 0 0 0 0  0 0  63 0  706 
Le:S  3 0 0 2 1 0 0  3  149  481 0 0 0 0 0 0  4 0  63 0  706 
LW:X  0 0 0 0 0 0 0  0    7  199 0 0 0 0 0 0  1 0   0 0  207 
LW:S  1 0 0 0 1 0 0  4   64  136 0 0 0 0 0 0  1 0   0 0  207 
ie:X  0 0 0 0 0 0 0  2  392  252 0 0 0 0 0 0  0 0  65 0  711 
ie:S  0 1 0 1 0 0 0  1    9  634 0 0 0 0 0 0  0 0  65 0  711 
iW:X  0 0 0 0 0 0 0  1    9  197 0 0 0 0 0 0  0 0   0 0  207 
iW:S  1 0 0 0 0 0 0  0    4  202 0 0 0 0 0 0  0 0   0 0  207 
eW:X  0 0 0 0 0 0 0  3  114   72 0 0 0 0 0 0  0 0  14 0  203 
eW:S  1 0 0 0 0 0 0  0    5  183 0 0 0 0 0 0  0 0  14 0  203 
----------------------------------------------------------------
Tot 203 1 0 4 4 1 1 33 1497 6702 0 0 0 0 0 0 12 0 410 0 8868 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1271

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.97  487     0.83  456
 gi    0.92  466     1.01  449
 ge    0.75  465     1.22  461
 gW    1.21  145     0.96  130
 Li    1.33  705     0.98  709
 Le    1.07  634     1.15  640
 LW    2.04  207     1.14  204
 ie    1.05  646     1.44  645
 iW    1.55  207     1.07  206
 We    1.20  189     1.28  188


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
* Channel X5U has no detections, all scans to be flagged as G-codes.

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn 24.6 -65.9 -252.2 -177.3 -246.4 -356.2 -263.8 -273.7

  if station W and f_group S
    pc_mode manual
    pc_phases abcdef -36.9  -273.8  -159.7  -151.1  -164.5  -271.8

* ref Hb/L --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -8.6    3.8    5.0    6.0   -2.7   -7.6
   if station g and f_group X
   pc_phases ghijklmn -9.5    1.5    4.9   23.6    0.1    3.4  -16.4 0.7

   if station i and f_group S
   pc_phases abcdef -3.8    1.3    4.1    0.3    0.3   -2.9
   if station i and f_group X
   pc_phases ghijlmn -4.0    0.8    5.4    5.5    0.9  -10.0    2.7

   if station e and f_group S
   pc_phases abcdef -3.2   -6.0    3.0   14.4   -4.1   -7.6 
   if station e and f_group X
   pc_phases ghijklmn 2.0    4.7    1.5    3.2  -19.0    3.1    0.7 2.9


Regards,
 Jamie 

+END
