+HEADER 
CORREL   CRTN 
DATABASE 14FEB05XA
SESSNAME AUST19 
UTSTART  0700 
DURATION 24 
DOY      036-037 
CORRTIME 2014/06/23 2014/06/24 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            59%             - 
   0             38%             - 
 4-1,A-H,N        3%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART12 (Hb/L): Ok. 

 HARTRAO  (Hh/g): Ok. 

 KATH12M  (Ke/i): Channel X8U dropped due to low sensiutivity, especially 
  on the Ke-Yg baseline. Two small clock breaks noted at 036/133000 and
  036-191200. Separate pcal solutions were obtained after each clock 
  break. 

 YARRA12M (Yg/x): Ok. 

 WARK12M  (Ww/W): Manual phase cal. Station reports tracking issues 
  throughout experiment with no detections after the first hour.

+DROP_CHANNELS
 Hb 
 Hh 
 Ke      XR8L  
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
  HT           -3.14        -0.00   56693.3262616
  KE           -8.82         0.00   56693.3262616
  YG           -7.65         0.00   56693.3262616
  WW            7.04         0.00   56639.7939931


+QCODES

Qcod   0 1 2 3 4  5   6  7    8    9 A B C D E F   G H  N -  Tot 
--------------------------------------------------------------------
gL:X   6 0 0 0 0  0   0  0   93  153 0 0 0 0 0 0   1 0  1 0  254 
gL:S  21 0 0 0 0  0   0  2   31  174 0 0 0 0 0 0  25 0  1 0  254 
gi:X   7 0 0 0 0  1  43  7  134   58 0 0 0 0 0 0   0 0  1 0  251 
gi:S  14 0 0 0 0  0   0  2   14  220 0 0 0 0 0 0   0 0  1 0  251 
gW:X 197 0 0 0 0  0   0  0    5    4 0 0 0 0 0 0   0 0  0 0  206 
gW:S 197 0 0 0 0  0   1  0    6    2 0 0 0 0 0 0   0 0  0 0  206 
gx:X   9 0 0 0 0  0   0  1   94  197 0 0 0 0 0 0   0 0  1 0  302 
gx:S  13 0 0 0 0  0   0  1   37  249 0 0 0 0 0 0   1 0  1 0  302 
Li:X   0 0 0 0 1 13 179  5  146   13 0 0 0 0 0 0   0 0  1 0  358 
Li:S   6 0 0 0 0  0   0  7   71  224 0 0 0 0 0 0  49 0  1 0  358 
LW:X 349 0 0 0 1  0   9  4    3    1 0 0 0 0 0 0   0 0  1 0  368 
LW:S 349 0 0 0 0  0   5  2    4    2 0 0 0 0 0 0   5 0  1 0  368 
Lx:X   2 0 0 0 0  1   0  2   27  327 0 0 0 0 0 0   1 0  1 0  361 
Lx:S   8 0 0 0 1  0   0 11   86  180 0 0 0 0 0 0  74 0  1 0  361 
iW:X 321 0 0 0 1  0   5  0    7    3 0 0 0 0 0 0   0 0  1 0  338 
iW:S 321 0 0 0 0  0   5  1    9    1 0 0 0 0 0 0   0 0  1 0  338 
ix:X   0 0 0 0 2 28 163 27  142   23 0 0 0 0 0 0  14 0  1 0  400 
ix:S   0 0 1 0 0  0   0  0   88  309 0 0 0 0 0 0   1 0  1 0  400 
Wx:X 299 0 0 0 0  0   6  0    3    4 0 0 0 0 0 0   0 0  1 0  313 
Wx:S 297 0 0 0 0  0   2  2    9    2 0 0 0 0 0 0   0 0  1 0  313 
--------------------------------------------------------------------
Tot 2416 0 1 0 6 43 418 74 1009 2146 0 0 0 0 0 0 171 0 18 0 6302 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1259

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    1.09  247     0.81  231
 gi    0.70  243     1.05  234
 gW    0.67    9     0.86    9
 gx    0.98  292     1.14  288
 Li    1.13  357     1.13  351
 LW    1.55   18     1.13   18
 Lx    1.51  358     1.24  352
 iW    0.97   16     1.19   16
 ix    0.98  399     1.57  399
 Wx    1.00   13     1.21   15


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

  if station i and f_group X
    freqs g h i j k l m n+ 
* Channel X8L has low amplitude, leading to many G-codes. 

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn 65.9 26.4 -26.1 -100.6 -272.3 -109.5 -113.5 -141.8 

  if station W and f_group S
    pc_mode manual
    pc_phases abcdef -127.3   -68.2  -347.7   -59.0  -199.2   -48.0

* ref Hb/L --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -7.6    1.8    6.4    5.0   -2.2   -8.5
   if station g and f_group X
   pc_phases ghijklmn -6.6   -3.7 2.2 23.9    1.8    5.1  -14.2   -1.1

   if station i and f_group S and scan < 036-133000
   pc_phases abcdef  0.1   -0.1    2.9   -1.7   -2.1    4.6
   if station i and f_group X and scan < 036-133000
   pc_phases ghijklmn -2.2    3.1 5.0   -0.8  -13.5   -6.4  145.1  -13.8

   if station i and f_group S and scan 036-133000 to 036-191200
   pc_phases abcdef 1.3   -0.6    1.2   -5.9    1.0    2.8
   if station i and f_group X and scan 036-133000 to 036-191200
   pc_phases ghijklmn -2.8    3.2 5.7 0.1  -13.6  -10.7  146.3  -11.3

   if station i and f_group S and scan > 036-191200
   pc_phases abcdef 1.2   -0.7    2.4   -5.5    1.0    2.6
   if station i and f_group X and scan > 036-191200
   pc_phases ghijklmn -0.2    2.9 4.7 -0.5  -14.7   -8.0  141.6  -15.7

   if station x and f_group S
   pc_phases abcdef -1.0   -6.4    0.1   13.0   -3.3   -6.7
   if station x and f_group X
   pc_phases ghijklmn -0.7 1.5 1.1    1.6   -8.8    6.5    0.6   -0.4

Regards,
 Jamie 

+END
