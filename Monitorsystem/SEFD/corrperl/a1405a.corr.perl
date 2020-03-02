+HEADER 
CORREL   CRTN 
DATABASE 14SEP10XA 
SESSNAME A1405A 
UTSTART  1900 
DURATION 24 
DOY      253-254 
CORRTIME 2014/11/16 2014/11/17 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            97%             - 
   0              2%             - 
 4-1,A-H,N        -              - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HART15M  (Ht/g): Ok. 

 HOBART12 (Hb/L): 3 clocks breaks apparent in the data at 0000, 0103 and 
  0214.

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
  HT           -1.50        -0.00   56910.7918634
  KE           -9.10        -0.00   56910.7918634
  YG          -10.71         0.00   56905.1639352
  WW           17.48         0.00   56910.7918634


+QCODES

Qcod 0 1 2 3 4 5 6  7   8    9 A B C D E F G H N -  Tot 
-----------------------------------------------------------
Li:X 0 0 0 0 0 1 0  1  44   46 0 0 0 0 0 0 0 0 0 0   92 
Li:S 1 0 0 0 1 0 0  0  11   79 0 0 0 0 0 0 0 0 0 0   92 
LW:X 0 0 0 0 0 1 1  8  53   92 0 0 0 0 0 0 2 0 0 0  157 
LW:S 0 0 0 1 0 0 0  2  57   97 0 0 0 0 0 0 0 0 0 0  157 
Lg:X 5 0 0 0 0 0 0  0  11   74 0 0 0 0 0 0 0 0 0 0   90 
Lg:S 5 0 0 0 0 0 0  1  27   57 0 0 0 0 0 0 0 0 0 0   90 
Le:X 0 0 0 0 0 0 0  3  46   45 0 0 0 0 0 0 0 0 0 0   94 
Le:S 0 0 0 0 0 0 0  5  21   64 0 0 0 0 0 0 4 0 0 0   94 
iW:X 0 0 0 0 0 1 0  1   7  101 0 0 0 0 0 0 0 0 0 0  110 
iW:S 1 0 0 0 0 0 0  0   2  107 0 0 0 0 0 0 0 0 0 0  110 
ig:X 9 0 0 0 0 0 0  0   0   94 0 0 0 0 0 0 0 0 0 0  103 
ig:S 7 0 0 0 0 0 0  0   3   93 0 0 0 0 0 0 0 0 0 0  103 
ie:X 0 0 0 0 0 0 0  0   2  166 0 0 0 0 0 0 0 0 0 0  168 
ie:S 0 0 0 0 0 0 0  1  13  154 0 0 0 0 0 0 0 0 0 0  168 
Wg:X 4 0 0 0 0 0 0  1   1   58 0 0 0 0 0 0 0 0 0 0   64 
Wg:S 8 0 0 0 0 0 0  0   5   51 0 0 0 0 0 0 0 0 0 0   64 
We:X 0 0 0 0 0 0 0  1  17   60 0 0 0 0 0 0 0 0 0 0   78 
We:S 1 0 0 0 0 0 0  0  13   64 0 0 0 0 0 0 0 0 0 0   78 
ge:X 3 0 0 0 0 0 0  0   2  156 0 0 0 0 0 0 0 0 0 0  161 
ge:S 6 0 0 0 0 0 0  0  21  134 0 0 0 0 0 0 0 0 0 0  161 
-----------------------------------------------------------
Tot 50 0 0 1 1 3 1 24 356 1792 0 0 0 0 0 0 6 0 0 0 2234 

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

 Lg    0.78   85     0.81   84
 gi    0.91   94     0.90   96
 gW    1.09   60     0.94   56
 ge    1.01  158     1.09  152
 Li    1.18   92     0.92   91
 LW    1.64  157     1.04  157
 Le    1.30   94     1.05   94
 iW    1.58  110     1.10  109
 ie    1.69  168     1.15  168
 We    1.77   78     1.25   77


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
    pc_phases abcdef -145.3  -322.1  -145.1   -61.2   -32.9  -102.4

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn -172.1 291.3 273.2 107.6 300.6 292.1 162.4 262.8

  if station e and f_group S
    pc_mode manual
    pc_phases abcdef 106.3  -181.0   -99.8  -137.5  -120.1   -16.0

  if station e and f_group X
    pc_mode manual
 pc_phases ghijklmn -109.6 61.0 175.1 135.5 141.5 316.6 244.0 281.0

* ref Hb/L --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -9.7    3.3    6.0    3.4   -0.6   -9.1
   if station g and f_group X
   pc_phases ghijklmn 3.9  -24.1   -9.1   27.9   24.3   44.4  -68.4   -5.1

   if station i and f_group S
   pc_phases abcdef -1.3    1.5    3.2   -0.6    1.2   -2.2
   if station i and f_group X
   pc_phases ghijklmn 10.2  -25.6   -8.1   11.4   19.0   45.4  -59.3   -2.5


Regards,
 Jamie 

+END
