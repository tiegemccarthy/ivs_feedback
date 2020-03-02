+HEADER 
CORREL   CRTN 
DATABASE 14OCT15XA 
SESSNAME AUST53 
UTSTART  0700 
DURATION 24 
DOY      288-289 
CORRTIME 2015/01/22 2015/01/23 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            89%             - 
   0              2%             - 
 4-1,A-H,N        9%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HART15M  (Ht/g): Ok. 

 HOBART12 (Hb/L): Small clock break noted at 2235.

 KATH12M  (Ke/i): Ok. 

 WARK12M  (Ww/W): Manual pcal. 

 YARRA12M (Yg/e): Module failure caused loss of all data after 0253. 

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
  HB          -13.19         0.00   56636.7588889
  HT           -1.58         0.00   56945.2916667
  KE           -9.84        -0.00   56945.2916667
  YG          -10.94         0.00   56945.2916667
  WW           20.04         0.00   56945.2916667


+QCODES

Qcod  0 1 2 3 4 5 6  7   8    9 A B C D E F  G H   N -  Tot 
---------------------------------------------------------------
gi:X 20 0 0 0 0 2 1  0   2  243 0 0 0 0 0 0  0 0   1 0  269 
gi:S 27 0 0 0 0 0 1  1   6  233 0 0 0 0 0 0  0 0   1 0  269 
ge:X  8 0 0 0 0 1 0  2   6  367 0 0 0 0 0 0  0 0  90 0  474 
ge:S 16 0 0 0 0 0 0  2   3  363 0 0 0 0 0 0  0 0  90 0  474 
gL:X 19 0 0 0 0 0 0  0   5  213 0 0 0 0 0 0  0 0   0 0  237 
gL:S 20 0 0 0 0 0 0  5  43  168 0 0 0 0 0 0  1 0   0 0  237 
gW:X 16 0 0 0 0 0 0  0   4  181 0 0 0 0 0 0  0 0   0 0  201 
gW:S 28 0 0 0 0 0 0  3   7  163 0 0 0 0 0 0  0 0   0 0  201 
ie:X  0 0 0 0 0 0 0  2  13  363 0 0 0 0 0 0  0 0  91 0  469 
ie:S  0 0 0 0 0 0 0  0   7  371 0 0 0 0 0 0  0 0  91 0  469 
iL:X  0 0 0 0 0 0 0  2   8  319 0 0 0 0 0 0  0 0   2 0  331 
iL:S  0 0 0 0 0 0 0  2  39  286 0 0 0 0 0 0  2 0   2 0  331 
iW:X  0 0 0 0 0 1 1  5  15  296 0 0 0 0 0 0  0 0   0 0  318 
iW:S  0 0 0 1 0 0 1  1  14  301 0 0 0 0 0 0  0 0   0 0  318 
eL:X  1 0 0 0 0 1 0  0   4  221 0 0 0 0 0 0  0 0  58 0  285 
eL:S  0 0 0 0 0 0 0  5  65  155 0 0 0 0 0 0  2 0  58 0  285 
eW:X  0 0 0 0 0 1 0  0   3  159 0 0 0 0 0 0  0 0  42 0  205 
eW:S  1 0 0 0 0 0 0  2  11  149 0 0 0 0 0 0  0 0  42 0  205 
LW:X  0 0 0 0 0 1 0  3  16  471 0 0 0 0 0 0  0 0   1 0  492 
LW:S  0 0 0 0 0 0 1 21 212  247 0 0 0 0 0 0 10 0   1 0  492 
---------------------------------------------------------------
Tot 156 0 0 1 0 7 5 56 483 5269 0 0 0 0 0 0 15 0 570 0 6562 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1293

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.80  218     0.78  216
 gi    0.85  247     0.92  238
 gW    0.94  184     1.08  173
 ge    0.96  376     0.92  364
 Li    1.14  329     0.93  329
 LW    1.58  491     1.46  491
 Le    1.24  226     1.00  227
 iW    1.37  318     1.33  318
 ie    1.48  378     1.05  378
 We    1.44  163     1.38  162


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
    pc_phases abcdef -152.7 167.0 123.2 232.7 64.1 121.5

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn -42.9 -126.9 -130.6 -45.5 -89.0 -0.6 -159.5 -10.8

* ref Ke/i --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -6.2   2.3   3.4   4.8    -3.7    -1.2
   if station g and f_group X
   pc_phases ghijklmn -11.1   7.6   3.9  20.1   1.9    -5.8   -14.4 3.8

   if station L and f_group S
   pc_phases abcdef  4.0    -0.6    -4.2   0.9    -2.1   3.6
   if station L and f_group X
   pc_phases ghijklmn -1.3   5.3    -0.6    -4.2   4.9    -7.2   3.4   0.9

   if station e and f_group S
   pc_phases abcdef -1.0   -8.6   -1.6   17.1   -6.8   -3.9
   if station e and f_group X
   pc_phases ghijklmn -4.7   11.0    0.3   -0.4   -5.6   -3.4   -0.3    3.2

Regards,
 Jamie  

+END
