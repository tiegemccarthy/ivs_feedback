+HEADER 
CORREL   CRTN 
DATABASE 14SEP21XA 
SESSNAME A1415 
UTSTART  0253 
DURATION 24 
DOY      264-265 
CORRTIME 03/01/15 04/01/15 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            61%             - 
   0             14%             - 
 4-1,A-H,N       25%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HART15M  (Ht/g): Ok. 

 HOBART12 (Hb/L): Several 30 minute blocks of missed scans, while 
  investigating LO unlock problem. Experiment finished early at 0215. 
  Clock breaks apparent at 1751 and serveral in ther interval 2030-2301. 

 KATH12M  (Ke/i): Small clock break at 1400. No data between ~0310 and 
  0530, with associated clock break.  

 WARK12M  (Ww/W): Manual pcal. No data after 2057 due to windstow. 

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
  HT           -1.50         0.00   56921.1202546
  KE           -9.33        -0.00   56921.1202546
  YG          -10.77         0.00   56919.1257176
  WW           18.27         0.00   56921.1202546


+QCODES

Qcod  0 1 2 3 4 5  6  7   8    9 A B C D E F G H    N -  Tot 
----------------------------------------------------------------
Li:X 36 0 0 0 0 0  0  1  59  121 0 0 0 0 0 0 0 0   40 0  257 
Li:S 38 0 0 0 0 0  0  1  17  161 0 0 0 0 0 0 0 0   40 0  257 
Le:X 47 0 0 0 0 0  1  3  78   89 0 0 0 0 0 0 1 0   30 0  249 
Le:S 46 0 0 0 0 0  2  3  73   93 0 0 0 0 0 0 2 0   30 0  249 
Lg:X 66 0 0 0 0 0  0  1  19  106 0 0 0 0 0 0 0 0   16 0  208 
Lg:S 66 0 0 0 0 0  2  5  41   77 0 0 0 0 0 0 1 0   16 0  208 
LW:X 95 0 0 0 0 0  0  1  16  117 0 0 0 0 0 0 0 0  271 0  500 
LW:S 94 0 0 0 0 0  0  3  45   86 0 0 0 0 0 0 1 0  271 0  500 
ie:X 23 0 0 0 0 0  2  4  35  412 0 0 0 0 0 0 0 0   12 0  488 
ie:S 23 0 0 0 0 0  0  1  31  421 0 0 0 0 0 0 0 0   12 0  488 
ig:X 20 0 0 0 0 0  0  0   2  214 0 0 0 0 0 0 0 0    2 0  238 
ig:S 21 0 0 0 0 0  0  0   6  209 0 0 0 0 0 0 0 0    2 0  238 
iW:X 59 0 0 0 0 0  0  0   5   75 0 0 0 0 0 0 0 0  158 0  297 
iW:S 58 0 0 0 0 0  0  0   1   80 0 0 0 0 0 0 0 0  158 0  297 
eg:X  4 0 0 0 0 0  1  0  14  397 0 0 0 0 0 0 0 0    4 0  420 
eg:S 11 0 0 0 0 1  3  5 128  268 0 0 0 0 0 0 0 0    4 0  420 
eW:X 34 0 0 0 0 0  0  2   6   39 0 0 0 0 0 0 0 0  106 0  187 
eW:S 33 0 0 0 0 0  0  0  14   34 0 0 0 0 0 0 0 0  106 0  187 
gW:X 26 0 0 0 0 0  1  0   0   29 0 0 0 0 0 0 0 0  106 0  162 
gW:S 28 0 0 0 0 0  0  0   1   27 0 0 0 0 0 0 0 0  106 0  162 
----------------------------------------------------------------
Tot 828 0 0 0 0 1 12 30 591 3055 0 0 0 0 0 0 5 0 1490 0 6012 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1256

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.77  126     0.78  124
 gi    0.89  215     0.91  210
 gW    0.94   30     0.80   28
 ge    0.92  411     1.09  403
 Li    1.06  181     0.90  179
 LW    1.59  134     1.05  135
 Le    1.09  172     1.08  173
 iW    1.34   80     1.08   81
 ie    1.30  453     1.17  453
 We    1.37   47     1.21   48


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
    pc_phases abcdef 2.4 -107.9 -230.4 -40.9 -102.8 -70.1

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn -53.3 163.0 336.0 114.5 23.6 239.4 333.9 59.7

  if station e and f_group S
    pc_mode manual
    pc_phases abcdef 58.9 132.0 216.5 351.1 196.1 324.9

  if station e and f_group X
    pc_mode manual
 pc_phases ghijklmn -63.2 -135.5 -227.9 -356.4 -91.0 -210.9 -136.3 -137.1


* ref Ke/i --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -4.8 1.5 3.5 4.3 -4.1 -0.9
   if station g and f_group X
   pc_phases ghijklmn -2.6 1.1 -2.2 12.2 -5.6 -13.5 41.9 -13.0

   if station L and f_group S
  pc_phases abcdef 3.4 -0.7 -4.1 -1.3 -1.2 5.0
  if station L and f_group X
  pc_phases ghijklmn -11.2 26.5 7.5 -12.7 -19.5 -47.3 57.3 4.5


Regards,
 Jamie 

+END
