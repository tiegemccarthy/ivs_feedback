+HEADER 
CORREL   CRTN 
DATABASE  
SESSNAME A1306 
UTSTART  1832 
DURATION 24 
DOY      339-340 
CORRTIME 2014/05/03 2014/05/04 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            58%             - 
   0              5%             - 
 4-1,A-H,N       38%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART12 (Hb/L): Ok 

 HART15M  (Ht/g): Ok 

 KATH12M  (Ke/i): Ok 

 YARRA12M (Yg/x): Ok 

 WARK12M  (Ww/W): All data lost due to corruption in transfer. Module reused before problem was discovered.

+DROP_CHANNELS
 Hb 
 Ht 
 Ke 
 Yg 
 Ww 

+MANUAL PCAL 

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
  HB          -10.19         0.00   56625.2280440
  HT           -0.01        -0.00   56630.7752778
  KE           -8.79         0.00   56625.2280440
  YG           -7.44         0.00   56630.7752778
  WW            4.97         0.00   56627.7939120


+QCODES

Qcod  0 1 2 3 4 5  6  7   8    9 A B C D E F  G H    N -  Tot 
-----------------------------------------------------------------
gL:X 18 0 0 0 0 0  0  0   5  173 0 0 0 0 0 0  5 0   13 0  214 
gL:S 35 0 0 0 0 0  0  3  33  122 0 0 0 0 0 0  8 0   13 0  214 
gi:X 12 0 0 0 0 0  0  0   2  213 0 0 0 0 0 0  0 0    0 0  227 
gi:S 30 0 0 0 0 0  0  1   6  190 0 0 0 0 0 0  0 0    0 0  227 
gW:X  8 0 0 0 0 0  0  0   0    0 0 0 0 0 0 0  0 0  170 0  178 
gW:S  8 0 0 0 0 0  0  0   0    0 0 0 0 0 0 0  0 0  170 0  178 
gx:X 14 0 0 0 0 0  0  1   9  291 0 0 0 0 0 0  0 0    0 0  315 
gx:S 28 0 0 0 0 0  0  0  14  273 0 0 0 0 0 0  0 0    0 0  315 
Li:X  4 0 0 0 0 0  2  9  39  192 0 0 0 0 0 0  6 0   14 0  266 
Li:S  5 0 0 0 1 0  2  1  56  176 0 0 0 0 0 0 11 0   14 0  266 
LW:X  6 0 0 0 0 0  0  0   0    0 0 0 0 0 0 0  0 0  244 0  250 
LW:S  6 0 0 0 0 0  0  0   0    0 0 0 0 0 0 0  0 0  244 0  250 
Lx:X  8 0 0 0 0 0  4 17  41  155 0 0 0 0 0 0 13 0   13 0  251 
Lx:S 13 0 0 0 1 0  0  0  83  123 0 0 0 0 0 0 18 0   13 0  251 
iW:X  3 0 0 0 0 0  0  0   0    0 0 0 0 0 0 0  0 0  228 0  231 
iW:S  3 0 0 0 0 0  0  0   0    0 0 0 0 0 0 0  0 0  228 0  231 
ix:X  2 0 0 0 0 2  4 16  50  219 0 0 0 0 0 0  1 0    1 0  295 
ix:S  2 0 0 0 0 0  0  1   7  284 0 0 0 0 0 0  0 0    1 0  295 
Wx:X  9 0 0 0 0 0  0  0   0    0 0 0 0 0 0 0  0 0  208 0  217 
Wx:S  9 0 0 0 0 0  0  0   0    0 0 0 0 0 0 0  0 0  208 0  217 
-----------------------------------------------------------------
Tot 223 0 0 0 2 2 12 49 345 2411 0 0 0 0 0 0 62 0 1782 0 4888 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1246

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    1.01  183     0.61  165
 gi    0.90  215     0.71  193
 gW    0.00    0     0.00    0
 gx    1.10  300     0.81  286
 Li    1.59  248     1.01  245
 LW    0.00    0     0.00    0
 Lx    1.76  229     1.10  225
 iW    0.00    0     0.00    0
 ix    1.81  292     1.39  291
 Wx    0.00    0     0.00    0


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


  if f_group X
    ref_freq 8212.99
    freqs g h i j k l m n
    pc_freqs ghijklmn 9010 9010 9010 9010 9010 9010 9010 9010

  if f_group S
    ref_freq 2225.99
    freqs a b c d e f 
    pc_freqs abcdef 3010 3010 3010 3010 3010 3010

* ref Hb/L --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -7.4    0.7    5.8    4.7    0.0   -8.7
   if station g and f_group X
   pc_phases ghijklmn -9.2    2.8    4.7   23.8   -7.4   -1.6  -14.0    2.1

   if station i and f_group S
   pc_phases abcdef 0.9   -0.2    1.5   -3.8   -0.1    2.3
   if station i and f_group X
   pc_phases ghijklmn -2.1   -0.1    4.5    3.7  -14.7    1.4   -2.1    2.8

   if station x and f_group S
   pc_phases abcdef -1.8   -7.3    0.9   16.9   -3.1  -10.6
   if station x and f_group X
   pc_phases ghijklmn -0.8    5.1   -0.1    0.4  -21.2    3.0    1.4    2.4

Regards,
 Jamie 

+END
