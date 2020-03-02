+HEADER 
CORREL   CRTN 
DATABASE 14JAN20XA 
SESSNAME AUST18 
UTSTART  0700 
DURATION 24 
DOY      020-021 
CORRTIME 2014/06/22 2014/06/23 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            55%             - 
   0             39%             - 
 4-1,A-H,N        6%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART12 (Hb/i): Some windstows with loss of scans between 021-0128 and 
  021-0246, 021-0340 to 021-0353

 HARTRAO  (Hh/L): Ok. 

 KATH12M  (Ke/x): Ok. 

 YARRA12M (Yg/z): Antenna stuck between 020-1235 and 020-2349 inclusive 
  with wind-stow and subsequent problems. No useful data recorded in this
  period.

 WARK12M  (Ww/W): Manual pcal with three separate solutions. Small clock
  break at ~021-0230. Warkworth experienced cyclonic winds with numerous
  windstows around 021-0000. Estimated time lost is ~5 hours.
  
+DROP_CHANNELS
 Hb 
 Hh 
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
  HB          -10.19         0.00   56636.7588889
  HH           -5.55        -0.00   56677.2916667
  KE           -8.86         0.00   56677.2916667
  YG           -7.65         0.00   56693.3262616
  WW            6.38         0.00   56677.2916667


+QCODES

Qcod   0 1 2 3 4 5  6  7   8    9 A B C D E F  G H   N -  Tot 
-----------------------------------------------------------------
ix:X  18 0 0 0 0 1  2 17  28  118 0 0 0 0 0 0  1 0   3 0  188 
ix:S  31 0 0 0 0 0  0  3  35  108 0 0 0 0 0 0  8 0   3 0  188 
iW:X  37 0 0 0 0 0  0 18  19   75 0 0 0 0 0 0  0 0  18 0  167 
iW:S  50 0 0 0 0 0  2  0  24   67 0 0 0 0 0 0  6 0  18 0  167 
iz:X 111 0 0 0 0 0  2 14  24   54 0 0 0 0 0 0  1 0   4 0  210 
iz:S 111 0 0 0 1 1  0  5  23   52 0 0 0 0 0 0 13 0   4 0  210 
iL:X  21 0 0 0 0 0  0  1   4   59 0 0 0 0 0 0  0 0   4 0   89 
iL:S  26 0 0 0 0 0  0  0   2   56 0 0 0 0 0 0  1 0   4 0   89 
xW:X  56 0 0 0 0 0  0  6  13   69 0 0 0 0 0 0  0 0  13 0  157 
xW:S  54 0 0 0 0 0  0  0   1   89 0 0 0 0 0 0  0 0  13 0  157 
xz:X  81 0 0 0 0 0  3 14  19   69 0 0 0 0 0 0  0 0   0 0  186 
xz:S  85 0 0 1 0 0  1  0   5   94 0 0 0 0 0 0  0 0   0 0  186 
xL:X  18 0 0 0 0 0  1  1   3   47 0 0 0 0 0 0  0 0   1 0   71 
xL:S  16 0 0 0 0 0  0  0   0   54 0 0 0 0 0 0  0 0   1 0   71 
Wz:X 101 0 0 0 0 0  0  5   9   34 0 0 0 0 0 0  0 0  16 0  165 
Wz:S  99 0 0 0 0 0  0  2   4   44 0 0 0 0 0 0  0 0  16 0  165 
WL:X  20 0 0 0 0 0  0  1   2   24 0 0 0 0 0 0  0 0   8 0   55 
WL:S  24 0 0 0 0 0  0  0   0   23 0 0 0 0 0 0  0 0   8 0   55 
zL:X  54 0 0 0 0 0  1  2   6   25 0 0 0 0 0 0  1 0   1 0   90 
zL:S  49 0 0 0 0 0  0  0   1   39 0 0 0 0 0 0  0 0   1 0   90 
-----------------------------------------------------------------
Tot 1062 0 0 1 1 2 12 89 222 1200 0 0 0 0 0 0 31 0 136 0 2756 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1258

 ...by baseline, over all sources:

 bl     X     n       S     n

 iL    1.24   64     0.63   58
 Lx    1.06   51     0.73   54
 LW    1.08   27     0.73   23
 Lz    1.30   35     0.92   38
 ix    1.42  167     1.10  154
 iW    1.56  112     1.01   99
 iz    1.40   95     1.25   95
 xW    1.33   88     1.03   90
 xz    1.33  105     1.67  101
 Wz    1.22   48     1.12   50


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

  if station W and f_group X and scan < 021-025200
    pc_mode manual
 pc_phases ghijklmn 92.3 229.4 227.6 76.6 238.6 326.4 219.8 340.8

  if station W and f_group S and scan < 021-025200
    pc_mode manual
    pc_phases abcdef -132.8 59.8 267.7 221.1 101.3 359.6

  if station W and f_group X and scan > 021-025200
    pc_mode manual
 pc_phases ghijklmn 116.6 -148.9 -56.8 -329.4 -325.7 -135.2 -195.1 -279.8

  if station W and f_group S and scan > 021-025200
    pc_mode manual
    pc_phases abcdef -39.9 321.7 326.6 154.5 207.2 275.4


* ref Hb/i --> just for book keeping

   if station z and f_group S
   pc_phases abcdef -0.5   -7.8   -0.3   14.3   -2.8   -7.7
   if station z and f_group X
   pc_phases ghijklmn -3.9    1.8 1.5 6.2 2.5 18.3 -53.6 11.3

   if station L and f_group S
   pc_phases abcdef -2.6    2.0    2.1   -1.6    4.5   -3.2
   if station L and f_group X
   pc_phases ghijklmn -12.2   -1.2   12.5   16.3 8.7 7.1 -66.7 12.3

   if station x and f_group S
   pc_phases abcdef 0.9   -0.0    1.2   -4.4   -0.5    0.5
   if station x and f_group X
   pc_phases ghijklmn -3.3   -3.6    6.2    8.5 4.0 16.7 -57.1 12.5

Regards,
 Jamie 

+END
