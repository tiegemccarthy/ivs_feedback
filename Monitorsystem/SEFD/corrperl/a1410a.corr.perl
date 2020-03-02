+HEADER 
CORREL   CRTN 
DATABASE 14SEP16XT 
SESSNAME A1410A 
UTSTART  1900 
DURATION 24 
DOY      259-260 
CORRTIME 2014/12/22 2014/12/23 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            68%             - 
   0              9%             - 
 4-1,A-H,N       23%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HART15M  (Ht/g): Ok. 

 HOBART12 (Hb/L): Several small clock breaks noted (1917, 2045, 2115).

 KATH12M  (Ke/i): No data recorded between 2326-0116

 WARK12M  (Ww/W): Manual pcal. 

 YARRA12M (Yg/e): Manual pcal. No data recorded between 2301 and 0108.

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
  HT           -1.47         0.00   56916.7917245
  KE           -9.24        -0.00   56916.7917245
  YG          -10.77         0.00   56916.7917245
  WW           17.89         0.00   56916.7917245


+QCODES

Qcod  0 1 2 3 4 5 6  7   8    9 A B C D E F G H   N -  Tot 
--------------------------------------------------------------
gL:X  6 0 0 0 0 0 0  0   9   58 0 0 0 0 0 0 1 0  10 0   84 
gL:S  5 0 0 0 0 2 0  1  17   48 0 0 0 0 0 0 1 0  10 0   84 
ge:X  3 0 0 0 0 0 0  0  21   95 0 0 0 0 0 0 0 0  35 0  154 
ge:S  6 0 0 0 0 0 0  1  12  100 0 0 0 0 0 0 0 0  35 0  154 
gi:X 28 0 0 0 0 0 0  0   0   51 0 0 0 0 0 0 0 0  21 0  100 
gi:S 25 0 0 0 0 0 0  0   3   51 0 0 0 0 0 0 0 0  21 0  100 
gW:X  4 0 0 0 0 0 0  0   6   51 0 0 0 0 0 0 0 0   0 0   61 
gW:S  9 0 0 0 0 0 1  0   5   46 0 0 0 0 0 0 0 0   0 0   61 
Le:X  0 0 0 0 0 0 0  1   4   54 0 0 0 0 0 0 0 0  29 0   88 
Le:S  0 0 0 0 0 0 0  1  21   37 0 0 0 0 0 0 0 0  29 0   88 
Li:X 20 0 0 0 0 0 0  0   3   43 0 0 0 0 0 0 0 0  21 0   87 
Li:S 20 0 0 0 1 0 0  0   6   39 0 0 0 0 0 0 0 0  21 0   87 
LW:X  0 0 0 0 0 0 0  4  51   80 0 0 0 0 0 0 0 0  16 0  151 
LW:S  0 0 0 1 0 0 0  2  44   86 0 0 0 0 0 0 2 0  16 0  151 
ei:X  8 0 0 0 0 0 0  0   2   84 0 0 0 0 0 0 0 0  67 0  161 
ei:S  8 0 0 0 0 0 0  0   1   85 0 0 0 0 0 0 0 0  67 0  161 
eW:X  0 0 0 0 0 0 0  0   5   47 0 0 0 0 0 0 0 0  21 0   73 
eW:S  0 0 0 0 0 0 0  0   6   46 0 0 0 0 0 0 0 0  21 0   73 
iW:X 27 0 0 0 0 0 0  0   5   53 0 0 0 0 0 0 0 0  17 0  102 
iW:S 27 0 0 0 0 0 0  0   2   56 0 0 0 0 0 0 0 0  17 0  102 
--------------------------------------------------------------
Tot 196 0 0 1 1 2 1 10 223 1210 0 0 0 0 0 0 4 0 474 0 2122 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1251

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.76   68     0.79   69
 gi    0.88   51     0.90   53
 gW    1.08   57     0.91   52
 ge    1.00  116     1.08  113
 Li    1.20   46     0.89   45
 LW    1.64  135     1.08  135
 Le    1.30   59     0.99   59
 iW    1.47   58     1.04   58
 ie    1.64   86     1.11   86
 We    1.69   51     1.10   52


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
    pc_phases abcdef 0.7 -149.9 -303.5 -175.7 -70.0 -117.5

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn -175.9 324.3 35.7 26.6 65.1 173.8 100.9 218.2

  if station e and f_group S
    pc_mode manual
    pc_phases abcdef -36.5 -253.1 -89.1 -13.7 -154.9 -306.3

  if station e and f_group X
    pc_mode manual
 pc_phases ghijklmn 132.3 203.9 153.5 297.9 299.0 266.7 90.4 183.0

* ref Hb/L --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -9.1    2.9    5.9    7.2   -1.8  -10.1
   if station g and f_group X
   pc_phases ghijklmn 9.0  -24.7   -9.8   26.0   14.2   27.7  -18.6  -14.7

   if station i and f_group S
   pc_phases abcdef -7.7    2.7    4.0    1.5    2.4   -6.9
   if station i and f_group X
   pc_phases ghijklmn 10.5  -25.8   -7.6   14.5   19.2   47.1  -56.0   -3.9


Regards,
 Jamie 

+END
