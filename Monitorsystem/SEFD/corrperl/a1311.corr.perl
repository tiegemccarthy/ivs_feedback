+HEADER 
CORREL   CRTN 
DATABASE  
SESSNAME A1311 
UTSTART  1812 
DURATION 24 
DOY      344-345 
CORRTIME 2013/05/06 2013/05/07  
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            86%             - 
   0              7%             - 
 4-1,A-H,N        7%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART12 (Hb/L): Missing scans between 345-0105 and 345-0220 due to observatory checks. 

 HART15M  (Ht/g): Ok. 

 KATH12M  (Ke/i): Ok. 

 YARRA12M (Yg/x): Missing scans between 345-0405 and 345-0451 due to observatory checks.

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
  HB          -10.19         0.00   56636.7588889
  HT           -0.21        -0.00   56636.7588889
  KE           -8.79         0.00   56636.7588889
  YG           -7.41         0.00   56636.7588889
  WW            5.11         0.00   56636.7588889


+QCODES

Qcod  0 1 2 3 4 5  6  7   8    9 A B C D E F   G H   N -  Tot 
-----------------------------------------------------------------
gL:X 21 0 0 0 0 0  0  2   8  206 0 0 0 0 0 0   9 0  13 0  259 
gL:S 42 0 0 0 0 0  0  2  44  144 0 0 0 0 0 0  14 0  13 0  259 
gi:X 21 0 0 0 0 0  0  0   6  232 0 0 0 0 0 0   0 0   8 0  267 
gi:S 29 0 0 0 0 0  0  1   3  226 0 0 0 0 0 0   0 0   8 0  267 
gW:X 64 0 0 0 0 0  0  0   0  135 0 0 0 0 0 0   0 0   0 0  199 
gW:S 29 0 0 0 0 0  0  2  11  157 0 0 0 0 0 0   0 0   0 0  199 
gx:X 26 0 0 0 0 0  1  0  12  294 0 0 0 0 0 0   0 0  13 0  346 
gx:S 30 0 0 0 0 0  0  0  10  293 0 0 0 0 0 0   0 0  13 0  346 
Li:X 17 0 0 0 0 0  3  8  42  231 0 0 0 0 0 0  26 0  25 0  352 
Li:S  9 0 0 0 1 0  0  1  46  258 0 0 0 0 0 0  12 0  25 0  352 
LW:X 21 0 0 0 0 0  0  3  32  263 0 0 0 0 0 0  11 0  17 0  347 
LW:S  4 0 0 0 0 0  0  2  44  257 0 0 0 0 0 0  23 0  17 0  347 
Lx:X 12 0 0 0 0 0  5 10  36  234 0 0 0 0 0 0  14 0  32 0  343 
Lx:S 11 0 0 0 1 0  0  0  51  238 0 0 0 0 0 0  10 0  32 0  343 
iW:X 30 0 0 0 0 0  0  0   3  265 0 0 0 0 0 0   0 0   7 0  305 
iW:S  9 0 0 0 0 0  0  1   9  279 0 0 0 0 0 0   0 0   7 0  305 
ix:X  2 0 0 1 0 0  2 12  60  262 0 0 0 0 0 0   0 0  23 0  362 
ix:S  3 0 0 0 0 0  0  1   0  334 0 0 0 0 0 0   1 0  23 0  362 
Wx:X 15 0 0 0 0 0  0  0   3  243 0 0 0 0 0 0   0 0  13 0  274 
Wx:S  8 0 0 0 0 0  0  0   5  248 0 0 0 0 0 0   0 0  13 0  274 
-----------------------------------------------------------------
Tot 403 0 0 1 2 0 11 45 425 4799 0 0 0 0 0 0 120 0 302 0 6108 

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

 Lg    0.88  225     0.70  201
 gi    0.81  238     0.83  222
 gW    0.52  133     0.77  167
 gx    1.00  306     0.98  299
 Li    1.48  310     0.99  315
 LW    0.96  309     1.00  323
 Lx    1.72  299     1.09  299
 iW    0.81  268     1.09  287
 ix    1.67  337     1.39  335
 Wx    0.90  246     1.20  252


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
 pc_phases ghijklmn -174.0 241.5 255.7 231.1 234.5 139.8 207.9  74.1

  if station W and f_group S
    pc_mode manual
    pc_phases abcdef 77.2  -270.3  -255.2   -56.4   -96.2   -24.6 

* ref Hb/L --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -3.7    2.4    2.6    1.0   -2.0   -1.1
   if station g and f_group X
   pc_phases ghijklmn -9.4    4.4    4.9   21.9  -11.1   -2.1  -13.7    4.2

   if station i and f_group S
   pc_phases abcdef 1.4   -0.1    0.4   -4.5   -0.4    2.3
   if station i and f_group X
   pc_phases ghijklmn -1.4    0.5    4.2    2.9  -17.3    0.2   -2.3    3.5

   if station x and f_group S
   pc_phases abcdef -0.6   -7.5    1.2   14.3   -1.9   -8.6
   if station x and f_group X
   pc_phases ghijklmn 1.5    4.4   -1.0   -3.3  -31.8  -10.6   52.9   -7.8


Regards,
 Jamie  

+END
