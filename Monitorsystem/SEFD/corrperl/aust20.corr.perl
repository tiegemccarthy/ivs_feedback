+HEADER 
CORREL   CRTN 
DATABASE 14MAR12XA
SESSNAME AUST20 
UTSTART  1730 
DURATION 24 
DOY      071-072 
CORRTIME 2014/07/28 2014/07/29 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            92%             - 
   0              6%             - 
 4-1,A-H,N        2%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HART15M  (Ht/g): Ok. 

 HOBART12 (Hb/L): Channels S5U and S6U affected by strong RFI. G-code 
  threshold was reduced to 0.3 to avoid excessive loss of data.

 KATH12M  (Ke/i): Ok. 

 WARK12M  (Ww/W): Manual phase cal. 

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
  KE           -9.01         0.00   56728.7291667
  YG           -7.74         0.00   56728.7291667
  WW            8.04         0.00   56728.7291667


+QCODES

Qcod  0 1 2 3 4 5  6  7   8    9 A B C D E F  G H  N -  Tot 
---------------------------------------------------------------
gL:X 28 0 0 0 0 0  2  0   6  138 0 0 0 0 0 0  0 0  0 0  174 
gL:S 32 0 0 0 2 0  1  7  15  117 0 0 0 0 0 0  0 0  0 0  174 
gi:X  1 0 0 0 0 0  0  0   5   67 0 0 0 0 0 0  0 0  0 0   73 
gi:S  0 0 0 0 0 0  0  0   0   73 0 0 0 0 0 0  0 0  0 0   73 
gW:X  0 0 0 0 0 0  0  0  15   45 0 0 0 0 0 0  0 0  1 0   61 
gW:S  4 0 0 0 0 0  0  0   1   55 0 0 0 0 0 0  0 0  1 0   61 
ge:X 28 0 0 0 0 0  0  1   7  134 0 0 0 0 0 0  0 0  1 0  171 
ge:S 18 0 0 0 1 0  0  3   8  140 0 0 0 0 0 0  0 0  1 0  171 
Li:X  1 0 0 0 0 0  1  4  20   96 0 0 0 0 0 0  1 0  0 0  123 
Li:S  1 0 0 0 0 0  0 11  30   80 0 0 0 0 0 0  1 0  0 0  123 
LW:X  0 0 0 0 0 0  1  9  49   42 0 0 0 0 0 0  1 0  1 0  103 
LW:S  0 0 0 0 0 3  0  7  48   38 0 0 0 0 0 0  6 0  1 0  103 
Le:X 15 0 0 0 0 1  2 13  42  144 0 0 0 0 0 0  0 0  1 0  218 
Le:S 14 0 0 0 1 2  7 17  57  100 0 0 0 0 0 0 19 0  1 0  218 
iW:X  0 0 0 0 0 0  1  5  33   46 0 0 0 0 0 0  0 0  1 0   86 
iW:S  0 0 0 0 0 0  0  0  12   73 0 0 0 0 0 0  0 0  1 0   86 
ie:X  2 0 0 0 0 1  3  7  29   77 0 0 0 0 0 0  0 0  0 0  119 
ie:S  0 0 0 0 0 0  0  0  10  109 0 0 0 0 0 0  0 0  0 0  119 
We:X  0 0 0 0 0 0  2  8  38   47 0 0 0 0 0 0  0 0  1 0   96 
We:S  0 0 0 0 0 0  0  3  31   61 0 0 0 0 0 0  0 0  1 0   96 
---------------------------------------------------------------
Tot 144 0 0 0 4 7 20 95 456 1682 0 0 0 0 0 0 28 0 12 0 2448 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1260

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    1.02  146     0.60  141
 gi    0.87   72     0.73   73
 gW    0.95   59     0.79   56
 ge    0.97  142     0.81  151
 Li    1.62  122     0.95  122
 LW    2.02  102     1.09  102
 Le    1.52  202     0.97  203
 iW    1.48   85     1.14   85
 ie    1.57  117     1.34  119
 We    1.44   95     1.17   95


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
 pc_phases ghijklmn -30.9 142.9 278.5 358.6 276.1 156.4 274.5 12.8

  if station W and f_group S
    pc_mode manual
    pc_phases abcdef -18.0  232.5  109.5  127.7  243.3  213.3

* ref Yg/e --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -5.3 6.9 3.8 -7.8 2.8 -0.1
   if station g and f_group X
   pc_phases ghijklmn -3.5 -4.6 2.1 15.8 -2.4 -13.2 36.6 -14.6

   if station i and f_group S
   pc_phases abcdef 0.9 6.6 0.0 -17.9 0.6 6.9
   if station i and f_group X
   pc_phases ghijklmn 2.4 -7.6 1.6 1.0 2.3 3.7 -1.6 -1.5

   if station L and f_group S
   pc_phases abcdef -1.0 5.7 1.6 -11.1 3.4 6.5
   if station L and f_group X
   pc_phases ghijklmn -3.2 1.4 2.4 1.9 9.0 -3.8 -5.6 0.8

Regards,
 Jamie 

+END
