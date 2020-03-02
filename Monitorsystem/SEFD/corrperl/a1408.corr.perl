+HEADER 
CORREL   CRTN 
DATABASE $14SEP13XA 
SESSNAME A1408 
UTSTART  0324 
DURATION 24 
DOY      256-257 
CORRTIME 2014/12/01 2014/12/02 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            94%             - 
   0              2%             - 
 4-1,A-H,N        4%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HART15M  (Ht/g): Ok. 

 HOBART12 (Hb/L): One small clock break noted at 0748

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
  HT           -1.48         0.00   56913.1420949
  KE           -9.15        -0.00   56912.1448264
  YG          -10.73         0.00   56911.1475579
  WW           17.63         0.00   56913.1420949


+QCODES

Qcod  0 1 2 3 4 5 6  7   8    9 A B C D E F  G H   N -  Tot 
---------------------------------------------------------------
Li:X  0 0 0 0 0 0 0  7  77  154 0 0 0 0 0 0  1 0  17 0  256 
Li:S  1 0 0 0 2 0 0  0  25  211 0 0 0 0 0 0  0 0  17 0  256 
Le:X  1 0 0 0 0 0 0  5 159   69 0 0 0 0 0 0 12 0   3 0  249 
Le:S  0 0 0 0 0 0 0  0  71  171 0 0 0 0 0 0  4 0   3 0  249 
Lg:X 11 0 0 0 0 0 0  0  26  170 0 0 0 0 0 0  1 0   0 0  208 
Lg:S 20 0 0 0 0 0 0  3  67  118 0 0 0 0 0 0  0 0   0 0  208 
LW:X  0 0 0 0 0 0 0  6  54  434 0 0 0 0 0 0  0 0   7 0  501 
LW:S  1 0 0 0 2 1 0  4 159  325 0 0 0 0 0 0  2 0   7 0  501 
ie:X  0 0 0 0 0 0 0  1  18  435 0 0 0 0 0 0  0 0  33 0  487 
ie:S  0 0 0 0 0 0 0  0   5  449 0 0 0 0 0 0  0 0  33 0  487 
ig:X 14 0 0 0 0 0 0  0   3  212 0 0 0 0 0 0  0 0   9 0  238 
ig:S 18 0 0 0 0 0 0  1   8  202 0 0 0 0 0 0  0 0   9 0  238 
iW:X  0 0 0 0 0 0 0  6  32  241 0 0 0 0 0 0  0 0  18 0  297 
iW:S  0 0 0 0 0 0 0  0   7  272 0 0 0 0 0 0  0 0  18 0  297 
eg:X 10 0 0 0 0 0 0  0   2  403 0 0 0 0 0 0  0 0   5 0  420 
eg:S 22 0 0 0 0 0 0  0  18  375 0 0 0 0 0 0  0 0   5 0  420 
eW:X  0 0 0 0 0 1 0  4  38  142 0 0 0 0 0 0  0 0   2 0  187 
eW:S  0 0 0 0 0 0 0  0  12  173 0 0 0 0 0 0  0 0   2 0  187 
gW:X 16 0 0 0 0 0 0  1   8  136 0 0 0 0 0 0  0 0   2 0  163 
gW:S 23 0 0 0 0 0 0  3   9  126 0 0 0 0 0 0  0 0   2 0  163 
---------------------------------------------------------------
Tot 137 0 0 0 4 2 0 41 798 4818 0 0 0 0 0 0 20 0 192 0 6012 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1248

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.76  197     0.79  187
 gi    0.88  214     0.91  211
 gW    0.99  145     0.93  136
 ge    1.04  405     1.06  391
 Li    1.08  239     0.92  238
 LW    1.50  494     1.05  493
 Le    1.17  245     1.01  246
 iW    1.38  279     1.10  279
 ie    1.50  454     1.14  454
 We    1.59  185     1.24  185


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
    pc_phases abcdef -164.7 144.8  84.5 -0.3 -25.0 -341.1

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn 47.8 320.8 12.2 177.8 238.2 25.3 151.4 344.4

  if station e and f_group S
    pc_mode manual
    pc_phases abcdef -164.7 -72.9 -321.0  -316.1  -216.6 -62.9

  if station e and f_group X
    pc_mode manual
 pc_phases ghijklmn 76.1 335.8 297.2 245.3 11.0 81.9 136.1 216.2

* ref Hb/L --> just for book keeping

   if station g and f_group S
   pc_phases abcdef  -7.5    2.6    3.9    3.1    4.3  -10.0
   if station g and f_group X
   pc_phases ghijklmn 8.7  -24.2  -12.6   22.2   10.5   31.4  -16.9  -16.2

   if station i and f_group S
   pc_phases abcdef -1.8    1.0    1.7   -0.2    3.7   -5.7
   if station i and f_group X
   pc_phases ghijklmn 11.3  -26.9  -11.1   13.9   19.3   46.8  -58.8   -5.3



Regards,
 Jamie  

+END
