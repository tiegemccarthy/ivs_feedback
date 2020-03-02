+HEADER 
CORREL   CRTN 
DATABASE  
SESSNAME A1307 
UTSTART  1829 
DURATION 24 
DOY      340-341 
CORRTIME 2013/05/05 2014/05/06 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            90%             - 
   0              6%             - 
 4-1,A-H,N        4%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART12 (Hb/L): Two missed scans at start. 

 HART15M  (Ht/g): Ok. 

 KATH12M  (Ke/i): Three missed scans at start.

    YARRA12M (Yg/x): Three missed scans at start. Two clock breaks at 341-105400 and 341-165100. Data in the interval between these times had unexpectedly low qcodes for all X-band data (typical qcode goes from ~9 to 6) after initial phase-cal estimation. Problem resolved by fitting each intervals phasecal separately. 

 WARK12M  (Ww/W): Manual phase-cal. 

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
  HB          -10.19         0.00   56632.7698148
  HT           -0.09        -0.00   56632.7698148
  KE           -8.79         0.00   56632.7698148
  YG           -7.44         0.00   56632.7698148
  WW            5.09         0.00   56632.7698148


+QCODES

Qcod  0 1 2 3 4 5 6  7   8    9 A B C D E F   G H   N -  Tot 
----------------------------------------------------------------
gL:X 22 0 0 0 0 0 0  0   6  216 0 0 0 0 0 0  12 0   3 0  259 
gL:S 44 0 0 0 0 0 0  2  43  155 0 0 0 0 0 0  12 0   3 0  259 
gi:X 16 0 0 0 0 0 0  0   2  239 0 0 0 0 0 0   0 0  10 0  267 
gi:S 28 0 0 0 0 0 0  1   2  226 0 0 0 0 0 0   0 0  10 0  267 
gW:X 31 0 0 0 0 0 0  0   3  161 0 0 0 0 0 0   0 0   4 0  199 
gW:S 28 0 0 0 0 0 0  0   9  158 0 0 0 0 0 0   0 0   4 0  199 
gx:X 23 0 0 0 0 0 1  0   3  316 0 0 0 0 0 0   0 0   3 0  346 
gx:S 28 0 0 0 0 0 0  0  22  292 0 0 0 0 0 0   1 0   3 0  346 
Li:X 18 0 0 0 1 0 1  6  29  277 0 0 0 0 0 0   9 0  11 0  352 
Li:S 16 0 0 0 1 0 1  0  51  257 0 0 0 0 0 0  15 0  11 0  352 
LW:X 12 0 0 0 0 0 0 11  38  273 0 0 0 0 0 0   8 0   5 0  347 
LW:S  7 0 0 0 0 0 0  3  70  238 0 0 0 0 0 0  24 0   5 0  347 
Lx:X 12 0 0 0 0 0 0  8  41  263 0 0 0 0 0 0  16 0   3 0  343 
Lx:S 13 0 0 0 1 0 0  4  67  225 0 0 0 0 0 0  30 0   3 0  343 
iW:X 10 0 0 0 0 0 2  4  30  246 0 0 0 0 0 0   0 0  13 0  305 
iW:S 13 0 0 0 0 0 0  0   7  271 0 0 0 0 0 0   1 0  13 0  305 
ix:X  3 0 0 0 1 0 0 11  42  293 0 0 0 0 0 0   0 0  12 0  362 
ix:S  4 0 0 0 0 0 0  1   4  338 0 0 0 0 0 0   3 0  12 0  362 
Wx:X  7 0 0 0 0 0 1  9  35  218 0 0 0 0 0 0   0 0   4 0  274 
Wx:S  8 0 0 0 0 0 0  0   8  253 0 0 0 0 0 0   1 0   4 0  274 
----------------------------------------------------------------
Tot 343 0 0 0 4 0 6 60 512 4915 0 0 0 0 0 0 132 0 136 0 6108 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1247

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.93  234     0.68  210
 gi    0.85  241     0.82  222
 gW    0.88  164     0.79  161
 gx    1.03  318     0.96  310
 Li    1.54  323     1.00  324
 LW    1.69  330     1.01  332
 Lx    1.72  328     1.08  326
 iW    1.42  282     1.11  277
 ix    1.72  347     1.38  346
 Wx    1.55  263     1.18  262


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
 pc_phases ghijklmn 139.0   2.1  -304.1   -63.7   -40.5  -143.1  -276.3  -358.3

  if station W and f_group S
    pc_mode manual
    pc_phases abcdef 177.4  -153.1  -116.6  -239.7  -125.2  -210.4

* ref Hb/L --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -5.2    1.0    5.0    4.3    0.0   -5.8
   if station g and f_group X
   pc_phases ghijklmn -8.2    1.9    3.6   23.2  -10.3   -1.6  -15.0    3.7

   if station i and f_group S
   pc_phases abcdef 0.8   -0.5    1.1   -3.5   -1.9    2.1
   if station i and f_group X
   pc_phases ghijklmn -1.7   -0.1    4.2    3.7  -15.8    2.1   -1.9    2.7

   if station x and f_group S and scan < 341-105400
   pc_phases abcdef -0.7   -7.0    0.1   13.8   -2.4   -8.8
   if station x and f_group X and scan < 341-105400
   pc_phases ghijklmn -0.5    4.1   -0.2    0.2  -22.4    3.0    1.0    2.4

   if station x and f_group S and scan 341-105400 to 341-165100
   pc_phases abcdef -0.5   -7.4    1.8   13.6   -1.3   -8.5
   if station x and f_group X and scan 341-105400 to 341-165100
   pc_phases ghijklmn -0.4    3.3    1.0    0.9  -15.7   -0.1  156.8   -5.4

   if station x and f_group S and scan > 341-165100
   pc_phases abcdef -1.0   -7.6    2.5   12.6    1.2  -10.1
   if station x and f_group X and scan  > 341-165100
   pc_phases ghijklmn  1.1    5.2   -0.4   -4.4  -29.6  -11.5   52.8   -7.8

Regards,
 Jamie 

+END
