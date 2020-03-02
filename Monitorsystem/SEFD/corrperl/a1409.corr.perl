+HEADER 
CORREL   CRTN 
DATABASE 14SEP14XA 
SESSNAME A1409 
UTSTART  0320 
DURATION 24 
DOY      257-258 
CORRTIME 21/12/14 22/12/14 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            95%             - 
   0              2%             - 
 4-1,A-H,N        3%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HART15M  (Ht/g): Ok.

 HOBART12 (Hb/L): Small clock break at 1328.

 KATH12M  (Ke/i): Ok. 

 WARK12M  (Ww/W): Manual pcal. 

 YARRA12M (Yg/e): Manual pcal. 

+DROP_CHANNELS
 Ht 
 Hb 
 Ke 
 Ww 
 Yg 

+MANUAL PCAL Ww Yg 

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
  HT           -1.46         0.00   56914.1393634
  KE           -9.18        -0.00   56914.1393634
  YG          -10.73         0.00   56911.1475579
  WW           17.70         0.00   56914.1393634


+QCODES

Qcod  0 1 2 3 4 5 6  7   8    9 A B C D E F  G H   N -  Tot 
---------------------------------------------------------------
Li:X  0 0 0 0 0 0 0  3  83  152 0 0 0 0 0 0  1 0  18 0  257 
Li:S  1 0 0 0 1 0 0  1  27  209 0 0 0 0 0 0  0 0  18 0  257 
Le:X  1 0 0 0 0 0 0  5 130   99 0 0 0 0 0 0  1 0  13 0  249 
Le:S  1 0 0 0 0 0 0  1  61  172 0 0 0 0 0 0  1 0  13 0  249 
Lg:X 11 0 0 0 0 0 0  0  19  162 0 0 0 0 0 0  2 0  14 0  208 
Lg:S 19 0 0 0 0 0 0  5  54  114 0 0 0 0 0 0  2 0  14 0  208 
LW:X  0 0 0 0 0 1 0  6  44  421 0 0 0 0 0 0  1 0  28 0  501 
LW:S  0 0 0 0 1 0 2  5 169  292 0 0 0 0 0 0  4 0  28 0  501 
ie:X  0 0 0 0 0 0 0  0  18  468 0 0 0 0 0 0  0 0   2 0  488 
ie:S  0 0 0 0 0 0 0  1   4  481 0 0 0 0 0 0  0 0   2 0  488 
ig:X 17 0 0 0 0 0 0  0   1  220 0 0 0 0 0 0  0 0   0 0  238 
ig:S 20 0 0 0 0 0 0  2   7  209 0 0 0 0 0 0  0 0   0 0  238 
iW:X  0 0 0 0 0 0 0  7  32  257 0 0 0 0 0 0  0 0   1 0  297 
iW:S  0 0 0 0 0 0 0  0   8  288 0 0 0 0 0 0  0 0   1 0  297 
eg:X  6 0 0 0 0 0 0  0   2  412 0 0 0 0 0 0  0 0   0 0  420 
eg:S 14 0 0 0 0 0 0  1  20  385 0 0 0 0 0 0  0 0   0 0  420 
eW:X  0 0 0 0 0 0 1  5  55  126 0 0 0 0 0 0  0 0   0 0  187 
eW:S  0 0 0 0 0 0 0  0  14  173 0 0 0 0 0 0  0 0   0 0  187 
gW:X 16 0 0 0 0 0 0  1  19  125 0 0 0 0 0 0  0 0   1 0  162 
gW:S 23 0 0 0 0 0 1  2  21  114 0 0 0 0 0 0  0 0   1 0  162 
---------------------------------------------------------------
Tot 129 0 0 0 2 1 4 45 788 4879 0 0 0 0 0 0 12 0 154 0 6014 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1249

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.76  183     0.76  172
 gi    0.89  221     0.92  215
 gW    0.99  145     0.92  137
 ge    1.03  414     1.04  403
 Li    1.07  239     0.90  236
 LW    1.57  473     1.04  473
 Le    1.19  235     0.99  235
 iW    1.41  296     1.10  295
 ie    1.49  486     1.15  486
 We    1.65  187     1.24  187


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
    pc_phases abcdef -147.5 -168.7 162.5 131.0 -168.1 -95.7

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn -152.4 157.3 290.7 231.8 113.1 4.9 178.4 17.0

  if station e and f_group S
    pc_mode manual
    pc_phases abcdef -8.7 -294.3 -203.0 -230.8 -190.1 -57.3

  if station e and f_group X
    pc_mode manual
 pc_phases ghijklmn -80.0 130.6 315.5 56.9 247.3 163.8 140.7 192.3


* ref Hb/L --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -7.4    1.8    6.0    4.3   -1.4   -5.6
   if station g and f_group X
   pc_phases ghijklmn 11.2  -25.4  -13.1   21.4   12.8 30.0 -17.1 -15.5

   if station i and f_group S
   pc_phases abcdef -2.7    0.6    2.8    1.1    2.1   -4.9
   if station i and f_group X
   pc_phases ghijklmn 10.4  -26.1   -9.1   12.5   19.5 46.5 -57.9 -3.5


Regards,
 Jamie 

+END
