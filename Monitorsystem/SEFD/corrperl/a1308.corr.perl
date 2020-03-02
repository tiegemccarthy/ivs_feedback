+HEADER 
CORREL   CRTN 
DATABASE  
SESSNAME A1308 
UTSTART  1824 
DURATION 24 
DOY      341-342 
CORRTIME 2014/05/05 2014/05/06 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            67%             - 
   0              6%             - 
 4-1,A-H,N       27%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART12 (Hb/L): Some non-detections due to windstows.

 HART15M  (Ht/g): Ok.

 KATH12M  (Ke/i): Ok.

 YARRA12M (Yg/x): Ok. 

 WARK12M  (Ww/W): Manual phasecal. No data recorded after ~342-0400 due to recorder problems. Clock break at 342-0030, with separate pcal solutions required. 

+DROP_CHANNELS
 Hb 
 Ht 
 Ke 
 Yg 
 Ww 

+MANUAL PCAL Ww Ww 

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

Qcod  0 1 2 3 4 5 6  7   8    9 A B C D E F   G H    N -  Tot 
-----------------------------------------------------------------
gL:X 23 0 0 0 0 0 1  1  12  170 0 0 0 0 0 0   3 0    4 0  214 
gL:S 41 0 0 0 0 0 0  5  30  124 0 0 0 0 0 0  10 0    4 0  214 
gi:X 12 0 0 0 0 0 0  0   9  202 0 0 0 0 0 0   0 0    4 0  227 
gi:S 26 0 0 0 0 0 0  0   5  192 0 0 0 0 0 0   0 0    4 0  227 
gW:X 14 0 0 0 0 0 0  1   4   49 0 0 0 0 0 0   0 0  110 0  178 
gW:S 14 0 0 0 0 0 0  2   1   51 0 0 0 0 0 0   0 0  110 0  178 
gx:X 15 0 0 0 0 0 0  0   3  287 0 0 0 0 0 0   0 0   10 0  315 
gx:S 22 0 0 0 0 0 0  1  13  269 0 0 0 0 0 0   0 0   10 0  315 
Li:X 17 0 0 0 0 0 1 11  45  174 0 0 0 0 0 0   9 0    9 0  266 
Li:S 19 0 0 0 0 0 2  1  54  159 0 0 0 0 0 0  22 0    9 0  266 
LW:X  4 0 0 0 0 0 2  1  14   62 0 0 0 0 0 0   2 0  165 0  250 
LW:S  4 0 0 0 0 0 1  3  26   41 0 0 0 0 0 0  10 0  165 0  250 
Lx:X 21 0 0 0 0 0 1 11  39  157 0 0 0 0 0 0  14 0    8 0  251 
Lx:S 25 0 0 0 1 0 1  5  66  115 0 0 0 0 0 0  30 0    8 0  251 
iW:X  6 0 0 0 0 0 0  0   9   64 0 0 0 0 0 0   0 0  152 0  231 
iW:S 10 0 0 0 0 0 0  0   2   67 0 0 0 0 0 0   0 0  152 0  231 
ix:X  2 0 0 0 0 1 0  8  37  239 0 0 0 0 0 0   0 0    8 0  295 
ix:S  3 0 0 0 0 0 0  0   9  275 0 0 0 0 0 0   0 0    8 0  295 
Wx:X  6 0 0 0 0 0 0  2   9   57 0 0 0 0 0 0   0 0  143 0  217 
Wx:S  9 0 0 0 0 0 0  0   3   62 0 0 0 0 0 0   0 0  143 0  217 
-----------------------------------------------------------------
Tot 293 0 0 0 1 1 9 52 390 2816 0 0 0 0 0 0 100 0 1226 0 4888 

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

 Lg    0.96  187     0.57  169
 gi    0.90  211     0.70  192
 gW    0.85   52     0.64   53
 gx    1.12  289     0.79  282
 Li    1.55  240     0.97  237
 LW    1.57   81     1.06   81
 Lx    1.86  222     1.08  218
 iW    1.20   73     1.00   68
 ix    1.87  285     1.39  284
 Wx    1.37   68     1.12   65


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

*  if station W and f_group X
*    freqs g h i j k l m n+ 
* Channel X8L has low amplitude, leading to many G-codes. 

  if station W and f_group X and scan < 342-003000
    pc_mode manual
 pc_phases ghijklmn -125.6  50.4 152.7 184.3 104.8 201.4 176.7 250.6

  if station W and f_group S and scan < 342-003000
    pc_mode manual
    pc_phases abcdef 179.4  23.2  -129.6  -351.3  -179.6   -93.7 

  if station W and f_group X and scan >	  342-003000
    pc_mode manual
 pc_phases ghijklmn -88.4 159.9  85.7  55.3  27.6 350.7  86.7 186.4 

  if station W and f_group S and scan > 342-003000
    pc_mode manual
    pc_phases abcdef  21.2   -71.6  -166.2  -315.9  -129.4  -163.7


* ref Hb/L --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -9.1    0.7    7.0    5.6    1.1  -11.6
   if station g and f_group X
   pc_phases ghijklmn -9.3    2.1    4.4   25.2   -8.5   -0.9  -13.9    2.5

   if station i and f_group S
   pc_phases abcdef  0.5   -0.5    2.3   -3.0    0.5    0.4
   if station i and f_group X
   pc_phases ghijklmn -1.6   -0.0    4.5    3.1  -15.9    1.6   -1.9    2.8

   if station x and f_group S
   pc_phases abcdef -2.1   -7.7    2.2   16.1   -2.0  -10.6
   if station x and f_group X
   pc_phases ghijklmn -1.2    4.2    0.2    1.8  -20.7    2.7    1.9    2.0

Regards,
 Jamie 

+END
