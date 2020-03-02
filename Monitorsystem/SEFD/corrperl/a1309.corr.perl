+HEADER 
CORREL   CRTN 
DATABASE  
SESSNAME A1309 
UTSTART  1820 
DURATION 24 
DOY      342-343 
CORRTIME 2013/05/06 2013/05/07 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            87%             - 
   0              6%             - 
 4-1,A-H,N        7%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART12 (Hb/L): Ok.

 HART15M  (Ht/g): Ok. A few scans missing between 343-1430 and 343-1445 due to module problems. 

 KATH12M  (Ke/i): Ok. A few scans missing between 342-1820 and 342-1845, and 343-0150 and 343-0221 due to module problems.

 YARRA12M (Yg/x): Two clock jumps at 342-222500 and 343-094500. Separate pcal solutions required after each clock jump. Missing scan at end of experiment (343-1748 to 343-1811). 

 WARK12M  (Ww/W): Manual pcal.

+DROP_CHANNELS
 Hb 
 Ht 
 Ke 
 Yg 
 Ww 

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
  HB          -10.19         0.00   56625.2280440
  HT            0.09         0.00   56627.7834722
  KE           -8.79         0.00   56625.2280440
  YG           -7.43         0.00   56627.7834722
  WW            4.97         0.00   56627.7939120


+QCODES

Qcod  0 1 2 3 4 5 6  7   8    9 A B C D E F   G H   N -  Tot 
----------------------------------------------------------------
gL:X 20 0 0 0 0 0 0  0   6  217 0 0 0 0 0 0  12 0   4 0  259 
gL:S 42 0 0 0 0 0 0  1  40  157 0 0 0 0 0 0  15 0   4 0  259 
gi:X 17 0 0 0 0 0 0  0   3  229 0 0 0 0 0 0   0 0  18 0  267 
gi:S 27 0 0 0 0 0 0  0   8  214 0 0 0 0 0 0   0 0  18 0  267 
gW:X 44 0 0 0 0 0 0  0   0  151 0 0 0 0 0 0   0 0   4 0  199 
gW:S 28 0 0 0 0 0 0  1  15  151 0 0 0 0 0 0   0 0   4 0  199 
gx:X 21 0 0 0 0 0 0  3  12  298 0 0 0 0 0 0   0 0  12 0  346 
gx:S 23 0 0 0 0 0 0  1   9  301 0 0 0 0 0 0   0 0  12 0  346 
Li:X 19 0 0 0 1 1 1  5  36  259 0 0 0 0 0 0  12 0  18 0  352 
Li:S 15 0 0 0 0 0 0  3  40  239 0 0 0 0 0 0  37 0  18 0  352 
LW:X 17 0 0 0 0 0 0  0  25  296 0 0 0 0 0 0   9 0   0 0  347 
LW:S  6 0 0 0 0 0 0  6  54  235 0 0 0 0 0 0  46 0   0 0  347 
Lx:X 12 0 0 0 0 0 1  7  50  259 0 0 0 0 0 0   5 0   9 0  343 
Lx:S  8 0 0 0 0 1 1  1  62  215 0 0 0 0 0 0  46 0   9 0  343 
iW:X 16 0 0 0 0 0 0  2   9  261 0 0 0 0 0 0   0 0  17 0  305 
iW:S  9 0 0 0 0 0 0  0   7  271 0 0 0 0 0 0   1 0  17 0  305 
ix:X  3 0 0 1 0 1 2  7  43  280 0 0 0 0 0 0   0 0  25 0  362 
ix:S  6 0 0 0 0 0 0  0   7  323 0 0 0 0 0 0   1 0  25 0  362 
Wx:X 11 0 0 0 0 0 0  2   9  244 0 0 0 0 0 0   1 0   7 0  274 
Wx:S  8 0 0 0 0 0 0  1  15  243 0 0 0 0 0 0   0 0   7 0  274 
----------------------------------------------------------------
Tot 352 0 0 1 1 3 5 40 450 4843 0 0 0 0 0 0 185 0 228 0 6108 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1249

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.94  235     0.69  207
 gi    0.87  232     0.80  218
 gW    0.69  150     0.78  165
 gx    1.08  312     0.95  308
 Li    1.50  315     0.99  316
 LW    1.20  330     0.99  340
 Lx    1.66  322     1.05  326
 iW    1.01  272     1.09  277
 ix    1.68  334     1.38  331
 Wx    1.12  255     1.17  259


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


  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn -62.9 -62.1 -189.5  -105.8  -194.6  -230.7  -321.5  -157.6

  if station W and f_group S
    pc_mode manual
    pc_phases abcdef 52.1 333.5 263.1 326.4  24.1   7.7

* ref Hb/L --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -4.5    0.8    4.7    1.9    0.7   -3.8
   if station g and f_group X
   pc_phases ghijklmn -8.1    1.8    4.7   22.5  -11.9   -1.4  -14.5    4.0

   if station i and f_group S
   pc_phases abcdef 0.2   -0.1    0.8   -2.1    0.2    1.2
   if station i and f_group X
   pc_phases ghijklmn -1.5    0.2    3.9    2.6  -16.4    2.5   -2.3    2.9

   if station x and f_group S and scan < 342-222500
   pc_phases abcdef -2.1   -9.1    3.9   18.0   -1.2   -8.9
   if station x and f_group X and scan < 342-222500
   pc_phases ghijklmn  -2.0    3.7    1.5    3.4  -20.6    1.8    1.5    2.3

   if station x and f_group S and scan 342-222500 to 343-094500
   pc_phases abcdef -0.4   -7.2   -0.2   14.0   -2.1   -9.3
   if station x and f_group X and scan 342-222500 to 343-094500
   pc_phases ghijklmn -2.3    0.1    4.5    2.7  -12.4    4.6  151.1   -5.5

   if station x and f_group S and scan > 343-094500
   pc_phases abcdef -1.0   -7.8    1.6   17.4   -0.9   -9.9
   if station x and f_group X and scan > 343-094500
   pc_phases ghijklmn  1.1    6.1   -1.4   -5.1  -28.6   -8.1   55.1   -9.2


Regards,
 Jamie 

+END
