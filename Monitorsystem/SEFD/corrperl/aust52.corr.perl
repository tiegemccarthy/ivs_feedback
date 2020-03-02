+HEADER 
CORREL   CRTN 
DATABASE 14OCT12XA 
SESSNAME AUST52 
UTSTART  0000 
DURATION 24 
DOY      285-286 
CORRTIME 2015/01/18 2015/01/19 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            85%             - 
   0              2%             - 
 4-1,A-H,N       13%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART12 (Hb/L): Some small clock breaks apparent (1748, 1846, 1900).

 KATH12M  (Ke/i): Ok. 

 WARK12M  (Ww/W): Manual pcal. 

 YARRA12M (Yg/e): Ok. 

+DROP_CHANNELS
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
  HB          -13.19         0.00   56636.7588889
  KE           -9.75        -0.00   56941.0000000
  YG          -10.90         0.00   56938.7500000
  WW           19.77         0.00   56941.0000000


+QCODES

Qcod 0 1 2 3 4  5   6   7    8    9 A B C D E F  G H   N -  Tot 
-------------------------------------------------------------------
ie:X 0 0 0 0 0  1   2  26  446  127 0 0 0 0 0 0  0 0   3 0  605 
ie:S 0 0 0 1 0  0   1  15  120  465 0 0 0 0 0 0  0 0   3 0  605 
iL:X 9 0 0 0 0  0   0   0    9  290 0 0 0 0 0 0  0 0  13 0  321 
iL:S11 0 0 0 0  0   1   1   33  260 0 0 0 0 0 0  2 0  13 0  321 
iW:X 1 0 1 0 0  3 108  41  105   10 0 0 0 0 0 0  0 0  77 0  346 
iW:S 0 0 0 0 0  1   0   0   80  188 0 0 0 0 0 0  0 0  77 0  346 
eL:X11 0 0 0 0  0   0  10  218  112 0 0 0 0 0 0  0 0  17 0  368 
eL:S13 0 0 0 0  0   1  68   73  193 0 0 0 0 0 0  3 0  17 0  368 
eW:X 0 0 0 0 0  5 115  26   85    8 0 0 0 0 0 0  0 0  66 0  305 
eW:S 2 0 0 0 0  0   5  81   65   86 0 0 0 0 0 0  0 0  66 0  305 
LW:X22 0 0 0 2 15 228  82   75    4 0 0 0 0 0 0  0 0 150 0  578 
LW:S22 0 0 0 0  0   3  90  121  185 0 0 0 0 0 0  7 0 150 0  578 
-------------------------------------------------------------------
Tot 91 0 1 1 2 25 464 440 1430 1928 0 0 0 0 0 0 12 0 652 0 5046 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1292

 ...by baseline, over all sources:

 bl     X     n       S     n

 Li    1.14  299     0.97  297
 LW    1.34  406     1.46  406
 Le    1.24  340     1.11  338
 iW    1.15  268     1.29  269
 ie    1.31  602     1.05  602
 We    1.19  239     1.38  237


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

  if station W and f_group S
    pc_mode manual
    pc_phases abcdef 176.2 -55.7 65.0 239.4 57.8 322.7

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn 83.5 -91.7 -140.1 -55.3 -44.1 -240.1 -356.4 -75.3

* ref Ke/i --> just for book keeping

   if station L and f_group S
   pc_phases abcdef 1.6    -1.7    -1.6   1.8   0.1 -0.1
   if station L and f_group X
   pc_phases ghijklmn -1.5 5.7 -0.7 -3.7 3.9 -8.3 3.1 1.2

   if station e and f_group S
   pc_phases abcdef -2.4   -7.3   -0.3   17.7   -5.8   -6.6
   if station e and f_group X
   pc_phases ghijklmn -8.3 17.6 4.9 -1.4 -13.2 -16.1 16.8 2.5

Regards,
 Jamie 

+END
