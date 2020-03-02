+HEADER 
CORREL   CRTN 
DATABASE 14APR02XA 
SESSNAME AUST22 
UTSTART  0700 
DURATION 24 
DOY      092-093 
CORRTIME 2014/07/24 2014/07/25 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            86%             - 
   0             14%             - 
 4-1,A-H,N        -              - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HARTRAO  (Hh/x): Ok. 

 HOBART12 (Hb/L): Channels SR5U and SR6U badly affected by RFI. G-code 
  threshold reduced to 0.3 to avoid excessive flagging. 

 KATH12M  (Ke/i): Ok. 

 WARK12M  (Ww/W): Manual phase cal. Observed in tag-along mode with only a
  small number of scans. 

 YARRA12M (Yg/e): Ok. 

+DROP_CHANNELS
 Hh 
 Hb 
 Ke 
 Ww 
 Yg 

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
  HB          -10.19         0.00   56750.2457176
  KE           -9.09         0.00   56750.2457176
  YG           -7.83         0.00   56750.2457176
  WW            9.65         0.00   56750.2457176
  HH           -8.06         0.00   56750.2457176


+QCODES

Qcod  0 1 2 3 4 5 6  7   8    9 A B C D E F G H N -  Tot 
------------------------------------------------------------
xL:X 21 0 0 0 0 0 0  1   5   89 0 0 0 0 0 0 1 0 0 0  117 
xL:S 36 0 0 0 0 0 0  5   7   69 0 0 0 0 0 0 0 0 0 0  117 
xi:X 12 0 0 0 0 0 0  0   4   65 0 0 0 0 0 0 0 0 0 0   81 
xi:S 21 0 0 0 0 0 0  0   6   54 0 0 0 0 0 0 0 0 0 0   81 
xe:X 22 0 0 0 0 0 0  1  11  100 0 0 0 0 0 0 1 0 0 0  135 
xe:S 28 0 0 0 0 0 0  0   9   98 0 0 0 0 0 0 0 0 0 0  135 
xW:X  1 0 0 0 0 0 0  0   2    4 0 0 0 0 0 0 0 0 0 0    7 
xW:S  1 0 0 0 0 0 0  0   3    3 0 0 0 0 0 0 0 0 0 0    7 
Li:X  8 0 0 0 0 0 0  6  40  162 0 0 0 0 0 0 0 0 0 0  216 
Li:S 25 0 0 0 0 0 1  2  21  165 0 0 0 0 0 0 2 0 0 0  216 
Le:X 26 0 0 0 0 0 0  4  28  204 0 0 0 0 0 0 0 0 0 0  262 
Le:S 32 0 0 0 0 0 0 11  29  189 0 0 0 0 0 0 1 0 0 0  262 
LW:X  7 0 0 0 0 0 0  0   3   11 0 0 0 0 0 0 0 0 0 0   21 
LW:S  2 0 0 0 0 0 0  1   3   15 0 0 0 0 0 0 0 0 0 0   21 
ie:X 10 0 0 0 1 0 1  5  23  172 0 0 0 0 0 0 0 0 0 0  212 
ie:S 25 0 0 0 0 0 0  1   8  177 0 0 0 0 0 0 1 0 0 0  212 
iW:X  9 0 0 0 0 0 0  0   3    9 0 0 0 0 0 0 0 0 0 0   21 
iW:S  1 0 0 0 0 0 0  0   3   17 0 0 0 0 0 0 0 0 0 0   21 
eW:X  9 0 0 0 0 0 0  0   7    5 0 0 0 0 0 0 0 0 0 0   21 
eW:S  1 0 0 0 0 0 0  0   1   19 0 0 0 0 0 0 0 0 0 0   21 
------------------------------------------------------------
Tot 297 0 0 0 1 0 2 37 216 1627 0 0 0 0 0 0 6 0 0 0 2186 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1262

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lx    1.17   96     0.69   79
 xi    0.93   69     0.83   59
 xe    1.05  113     0.88  105
 xW    0.96    6     0.98    6
 Li    1.52  208     0.97  191
 Le    1.44  236     1.00  230
 LW    1.61   14     1.07   19
 ie    1.35  202     1.33  187
 iW    1.50   12     1.05   20
 We    1.20   12     1.04   20


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

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn 34.1  279.3  247.9  275.2  262.6    5.7  245.1    8.8

  if station W and f_group S
    pc_mode manual 
    pc_phases abcdef 90.4  338.2  253.1  289.1  151.1  128.3

* ref Yg/e --> just for book keeping

   if station L and f_group S
   pc_phases abcdef 1.4   7.0    -0.4   -13.9  4.6  6.1
   if station L and f_group X
   pc_phases ghijklmn 4.5    -8.1    -2.5 -1.7 13.0 -3.2 2.6 -4.1

   if station i and f_group S
   pc_phases abcdef 1.0  7.6  0.1   -19.0  0.3  8.5
   if station i and f_group X
   pc_phases ghijklmn 4.3   -11.3  -0.5 0.8 8.6 5.8 1.8 -6.1

   if station x and f_group S
   pc_phases abcdef -6.3   0.9   4.1   3.6   0.8    -7.8
   if station x and f_group X
   pc_phases ghijklmn -11.7   3.5  12.7  10.8   7.4 -9.3 -11.5 1.8

Regards,
 Jamie 

+END
