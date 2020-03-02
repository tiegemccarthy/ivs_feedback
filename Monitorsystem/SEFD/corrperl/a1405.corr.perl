+HEADER 
CORREL   CRTN 
DATABASE 14SEP08XA 
SESSNAME A1405 
OBSTIME  2014/09/08 2014/09/08 
UTSTART  0344 
DURATION 1 
DOY      251 
CORRTIME 2014/11/15 2014/11/16 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            96%             - 
   0              2%             - 
 4-1,A-H,N        2%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HART15M  (Ht/g): Ok. 

 HOBART12 (Hb/L): Ok. 

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
  HT           -1.52        -0.00   56908.1557407
  KE           -9.04        -0.00   56907.1584722
  YG          -10.71         0.00   56905.1639352
  WW           17.30         0.00   56908.1557407


+QCODES

Qcod 0 1 2 3 4 5 6  7   8    9 A B C D E F G H  N -  Tot 
------------------------------------------------------------
Li:X 0 0 0 0 0 0 1  1  17  112 0 0 0 0 0 0 0 0  1 0  132 
Li:S 2 0 0 0 0 0 1  0  11  117 0 0 0 0 0 0 0 0  1 0  132 
Le:X 1 0 0 0 0 2 1  4  84   30 0 0 0 0 0 0 1 0  1 0  124 
Le:S 2 0 0 0 0 0 0  2  34   84 0 0 0 0 0 0 1 0  1 0  124 
Lg:X 5 0 0 0 0 0 0  0  10   75 0 0 0 0 0 0 0 0  2 0   92 
Lg:S10 0 0 0 0 0 0  0  27   52 0 0 0 0 0 0 1 0  2 0   92 
LW:X 3 0 0 0 0 0 0  9  74  187 0 0 0 0 0 0 2 0  1 0  276 
LW:S 4 0 0 0 1 0 1  1  84  180 0 0 0 0 0 0 4 0  1 0  276 
ie:X 0 0 0 0 0 0 0  2  32  212 0 0 0 0 0 0 0 0  3 0  249 
ie:S 0 0 0 0 0 0 0  0   8  238 0 0 0 0 0 0 0 0  3 0  249 
ig:X 4 0 0 0 0 0 0  0   0   94 0 0 0 0 0 0 0 0  4 0  102 
ig:S 8 0 0 0 0 0 0  0   5   85 0 0 0 0 0 0 0 0  4 0  102 
iW:X 0 0 0 0 0 0 0  0   6  139 0 0 0 0 0 0 0 0  0 0  145 
iW:S 0 0 0 0 0 0 0  0   2  143 0 0 0 0 0 0 0 0  0 0  145 
eg:X 3 0 0 0 0 0 0  1   1  185 0 0 0 0 0 0 0 0  8 0  198 
eg:S 7 0 0 0 0 0 1  0  20  162 0 0 0 0 0 0 0 0  8 0  198 
eW:X 0 0 0 0 0 0 0  0  24   60 0 0 0 0 0 0 0 0  0 0   84 
eW:S 0 0 0 0 0 0 0  0   7   77 0 0 0 0 0 0 0 0  0 0   84 
gW:X 9 0 0 0 0 0 0  0   2   68 0 0 0 0 0 0 0 0  2 0   81 
gW:S 9 0 0 0 0 0 0  0   5   65 0 0 0 0 0 0 0 0  2 0   81 
------------------------------------------------------------
Tot 67 0 0 0 1 2 5 20 453 2365 0 0 0 0 0 0 9 0 44 0 2966 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1245

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.74   85     0.77   79
 gi    0.94   94     0.95   90
 gW    1.06   70     0.94   69
 ge    1.08  187     1.05  180
 Li    1.01  131     0.84  129
 LW    1.48  272     1.01  271
 Le    1.05  122     0.93  121
 iW    1.42  145     1.03  145
 ie    1.35  246     1.10  246
 We    1.62   84     1.26   84


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
    pc_phases abcdef 150.6  -70.5  -297.7 -273.3  -353.3  -123.9

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn 122.0  33.0 -103.1 -314.2 -97.0 -315.8 -15.9 -12.5

  if station e and f_group S
    pc_mode manual
    pc_phases abcdef -80.0 -332.8 -225.8 -211.7 -104.3 -321.7

  if station e and f_group X
    pc_mode manual
 pc_phases ghijklmn 130.2 34.1 5.7 330.9 115.5 202.6 270.7 350.7


* ref Hb/L --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -7.8    2.0    3.8    7.5   -2.4   -5.7
   if station g and f_group X
   pc_phases ghijklmn 4.8  -24.4  -10.2   27.6   22.3   44.0  -67.3 -5.6

   if station i and f_group S
   pc_phases abcdef  1.0    1.1   -3.3    0.4    2.3   -2.8
   if station i and f_group X
   pc_phases ghijklmn 10.3  -26.0   -8.4   12.0   21.1   46.2  -58.6 -3.0


Regards,
 Jamie 

+END
