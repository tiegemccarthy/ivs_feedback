+HEADER 
CORREL   CRTN 
DATABASE 14SEP18XA 
SESSNAME A1412 
UTSTART  0304 
DURATION 24 
DOY      261-262 
CORRTIME 01/01/15 02/01/15 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            97%             - 
   0              2%             - 
 4-1,A-H,N        1%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HART15M  (Ht/g): Ok. 

 HOBART12 (Hb/L): Two small clock breaks at 1157 and 1612.

 KATH12M  (Ke/i): Ok. 

 WARK12M  (Ww/W): Manual pcal. 

 YARRA12M (Yg/e): Manual pcal. 

+DROP_CHANNELS
 Ht 
 Hb 
 Ke 
 Ww 
 Yg 

+MANUAL PCAL Yg Ww 

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
  HT           -1.49         0.00   56918.1284375
  KE           -9.25        -0.00   56917.1311690
  YG          -10.75         0.00   56917.1311690
  WW           17.79         0.00   56915.1366319


+QCODES

Qcod  0 1 2 3 4 5  6  7   8    9 A B C D E F  G H  N -  Tot 
---------------------------------------------------------------
Li:X  0 0 0 0 0 0  1  4  95  152 0 0 0 0 0 0  1 0  4 0  257 
Li:S  0 0 0 0 0 0  0  1  23  229 0 0 0 0 0 0  0 0  4 0  257 
Le:X  1 0 0 0 0 0  1  2  40  201 0 0 0 0 0 0  0 0  4 0  249 
Le:S  0 0 0 0 0 0  0 13  82  145 0 0 0 0 0 0  5 0  4 0  249 
Lg:X 11 0 0 0 0 0  0  3  29  161 0 0 0 0 0 0  1 0  3 0  208 
Lg:S 16 0 0 0 0 0  1  7  53  125 0 0 0 0 0 0  3 0  3 0  208 
LW:X  0 0 0 1 0 1  2 13  92  384 0 0 0 0 0 0  0 0  8 0  501 
LW:S  1 0 0 0 1 1  1 10 151  324 0 0 0 0 0 0  4 0  8 0  501 
ie:X  0 0 0 0 0 0  2  3  30  451 0 0 0 0 0 0  0 0  2 0  488 
ie:S  0 0 0 0 0 0  0  1  32  453 0 0 0 0 0 0  0 0  2 0  488 
ig:X 17 0 0 0 0 0  0  0   2  219 0 0 0 0 0 0  0 0  0 0  238 
ig:S 21 0 0 0 0 0  0  1   3  213 0 0 0 0 0 0  0 0  0 0  238 
iW:X  0 0 0 0 0 1  2  5  30  259 0 0 0 0 0 0  0 0  0 0  297 
iW:S  0 0 0 0 0 0  0  0  10  287 0 0 0 0 0 0  0 0  0 0  297 
eg:X  6 0 0 0 0 0  1  0   7  406 0 0 0 0 0 0  0 0  0 0  420 
eg:S 13 0 0 0 0 0  3 10 116  278 0 0 0 0 0 0  0 0  0 0  420 
eW:X  1 0 0 0 0 0  2  4  15  165 0 0 0 0 0 0  0 0  0 0  187 
eW:S  0 0 0 0 0 0  0  5  54  128 0 0 0 0 0 0  0 0  0 0  187 
gW:X 19 0 0 0 0 0  0  0   5  138 0 0 0 0 0 0  0 0  1 0  163 
gW:S 26 0 0 0 0 0  1  1  16  118 0 0 0 0 0 0  0 0  1 0  163 
---------------------------------------------------------------
Tot 132 0 0 1 1 3 17 83 885 4836 0 0 0 0 0 0 14 0 44 0 6016 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1253

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.75  193     0.76  187
 gi    0.88  221     0.91  214
 gW    0.97  143     0.91  135
 ge    1.01  414     1.08  406
 Li    1.04  253     0.89  253
 LW    1.49  493     1.04  490
 Le    1.20  244     1.05  244
 iW    1.36  297     1.08  297
 ie    1.45  486     1.19  486
 We    1.61  186     1.31  187


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

  if station e and f_group S
    pc_mode manual
    pc_phases abcdef -60.9 151.8 24.6 23.6 233.8 158.4

  if station e and f_group X
    pc_mode manual
 pc_phases ghijklmn 25.7 249.1 144.4 62.9 93.8 95.1 234.4 4.9

  if station W and f_group S
    pc_mode manual
    pc_phases abcdef -26.1 -298.3 -214.9 -271.1 -130.1 -297.9

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn -151.4 -30.9 -262.2 -107.2 -134.1 -195.1 -56.9 -178.4

* ref Ke/i --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -6.6 2.8 3.8 3.9 -3.8 -0.7
   if station g and f_group X
   pc_phases ghijklmn -2.3 0.4 -3.3 12.3 -4.5 -14.2 42.2 -14.2

   if station L and f_group S
   pc_phases abcdef 2.3 0.8 -3.8 -2.6 -1.4 5.9
   if station L and f_group X
   pc_phases ghijklmn -11.5 26.5 9.4 -11.4 -20.7 -46.5 57.4 3.9


Regards,
 Jamie 

+END
