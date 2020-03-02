+HEADER 
CORREL   CRTN 
DATABASE  
SESSNAME A1305 
UTSTART  1836 
DURATION 24 
DOY      338-339 
CORRTIME 2013/02/16 2013/02/17 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            56%             - 
   0              4%             - 
 4-1,A-H,N       40%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART12 (Hb/L): Ok.

 HART15M  (Ht/g): Ok.

 KATH12M  (Ke/i): Ok.

 YARRA12M (Yg/x): Two clock breaks at 338-2115 and 339-1722. New pcals determined after each clock break.

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
  HT           -0.01         0.00   56630.7752778
  KE           -8.79         0.00   56625.2280440
  YG           -7.44         0.00   56630.7752778
  WW            4.97         0.00   56627.7939120


+QCODES

Qcod  0 1 2 3 4 5 6  7   8    9 A B C D E F  G H    N -  Tot 
----------------------------------------------------------------
gL:X 19 0 0 0 0 0 0  0  11  216 0 0 0 0 0 0  7 0    6 0  259 
gL:S 42 0 0 0 0 0 0  1  43  155 0 0 0 0 0 0 12 0    6 0  259 
gi:X 22 0 0 0 0 0 0  2   7  232 0 0 0 0 0 0  0 0    4 0  267 
gi:S 34 0 0 0 0 0 0  2   1  226 0 0 0 0 0 0  0 0    4 0  267 
gW:X  5 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0  0 0  194 0  199 
gW:S  5 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0  0 0  194 0  199 
gx:X 22 0 0 0 0 0 1  1  32  283 0 0 0 0 0 0  0 0    7 0  346 
gx:S 20 0 0 0 0 0 0  2   8  309 0 0 0 0 0 0  0 0    7 0  346 
Li:X 15 0 0 0 0 2 0 12  38  251 0 0 0 0 0 0 19 0   15 0  352 
Li:S 19 0 0 0 1 0 0  3  33  264 0 0 0 0 0 0 17 0   15 0  352 
LW:X  5 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0  0 0  342 0  347 
LW:S  5 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0  0 0  342 0  347 
Lx:X 11 0 0 0 0 2 3 17  88  199 0 0 0 0 0 0  4 0   19 0  343 
Lx:S 11 0 0 0 0 1 0  2  62  227 0 0 0 0 0 0 21 0   19 0  343 
iW:X  2 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0  0 0  303 0  305 
iW:S  2 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0  0 0  303 0  305 
ix:X  2 0 0 0 0 1 3 30  82  227 0 0 0 0 0 0  1 0   16 0  362 
ix:S  5 0 0 0 0 0 0  3  10  327 0 0 0 0 0 0  1 0   16 0  362 
Wx:X  3 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0  0 0  271 0  274 
Wx:S  3 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0  0 0  271 0  274 
----------------------------------------------------------------
Tot 252 0 0 0 1 6 7 75 415 2916 0 0 0 0 0 0 82 0 2354 0 6108 

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

 Lg    0.95  234     0.68  208
 gi    0.87  241     0.81  225
 gW    0.00    0     0.00    0
 gx    1.08  316     0.96  311
 Li    1.45  322     0.97  315
 LW    0.00    0     0.00    0
 Lx    1.67  313     1.06  311
 iW    0.00    0     0.00    0
 ix    1.63  344     1.36  341
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
   pc_phases abcdef -6.5    1.1    5.6    1.8    0.4   -5.0
   if station g and f_group X
   pc_phases ghijklmn -9.4    2.4    6.2   24.0   -9.9   -2.9  -14.5    4.1

   if station i and f_group S
   pc_phases abcdef 0.9   -0.8    2.0   -3.3   -0.3    1.9
   if station i and f_group X
   pc_phases ghijklmn -2.2    0.7    4.1    4.1  -16.1    0.3   -2.4    3.4

   if station x and f_group S and scan < 338-211500
   pc_phases abcdef -3.0   -9.5    8.1   14.1   -2.3  -10.2
   if station x and f_group X and scan < 338-211500
   pc_phases ghijklmn -4.1    5.5    3.9    5.4  -20.8    0.6    0.1    2.7

   if station x and f_group S and scan 338-211500 to 339-172200
   pc_phases abcdef -1.0   -7.7    1.0   16.8   -3.0   -7.9
   if station x and f_group X and scan 338-211500 to 339-172200
   pc_phases ghijklmn -10.7  -27.0   82.9    4.5   43.2   11.9  -21.1  -10.1

   if station x and f_group S and scan > 339-172200
   pc_phases abcdef -0.7   -6.2    2.2   13.8   -0.3  -13.6
   if station x and f_group X and scan > 339-172200
   pc_phases ghijklmn -2.7    7.3    1.1    1.5  -24.9  -10.6   53.8  -10.0

Regards,
 Jamie 

+END
