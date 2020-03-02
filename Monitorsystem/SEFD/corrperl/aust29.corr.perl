+HEADER 
CORREL   CRTN 
DATABASE 14JUN30XA 
SESSNAME AUST29 
UTSTART  0700 
DURATION 24 
DOY      181-182 
CORRTIME 2014/09/29 2014/09/30 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            94%             - 
   0              5%             - 
 4-1,A-H,N        1%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HART15M  (Ht/g): Ok.

 HOBART12 (Hb/L): Strong RFI in SR5U and SR6U. Weak channel threshold 
  reduced to 0.3 to avoid excessive data loss.

 KATH12M  (Ke/i): XR5U dropped - DBBC configuration error. 

 WARK12M  (Ww/W): Station reported that the maser temperature controller 
  failed at 182-0442. No obvious clock breaks, but large rates are likely.
  Manual phase cal.  

 YARRA12M (Yg/e): Ok. 

 HARTRAO  (Hh/x): Ok. 

+DROP_CHANNELS
 Ht 
 Hb 
 Ke      XR5U  
 Ww 
 Yg 
 Hh 

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
  HT            2.55        -0.00   56838.2916667
  HH            2.79        -0.00   56838.2916667
  KE           -5.79         0.00   56838.2916667
  YG           -7.96         0.00   56838.2916667
  WW           15.55         0.00   56838.2916667


+QCODES

Qcod  0 1 2 3 4  5   6  7   8    9 A B C D E F  G H  N -  Tot 
-----------------------------------------------------------------
gL:X 16 0 0 0 0  0   1  2  28  223 0 0 0 0 0 0  1 0  0 0  271 
gL:S 13 0 0 0 0  0   0  7  46  201 0 0 0 0 0 0  4 0  0 0  271 
gi:X 15 0 0 0 0  0   0  0   1  255 0 0 0 0 0 0  0 0  0 0  271 
gi:S 16 0 0 0 0  0   0  0   8  246 0 0 0 0 0 0  1 0  0 0  271 
gW:X 32 0 0 0 0  0   0  1  10  190 0 0 0 0 0 0  0 0  0 0  233 
gW:S 63 0 0 0 0  1   0  0  18  151 0 0 0 0 0 0  0 0  0 0  233 
ge:X 15 0 0 0 0  0   0  1   0  292 0 0 0 0 0 0  0 0  0 0  308 
ge:S 10 0 0 0 0  0   0  3   3  292 0 0 0 0 0 0  0 0  0 0  308 
gx:X  0 0 0 0 0  2 110  0   6    0 0 0 0 0 0 0  0 0  8 0  126 
gx:S  0 0 0 0 0  0   4  1   3  110 0 0 0 0 0 0  0 0  8 0  126 
Li:X  3 0 0 0 1  1   0  3  35  293 0 0 0 0 0 0  0 0  0 0  336 
Li:S  2 0 0 0 0  2   0  3  97  229 0 0 0 0 0 0  3 0  0 0  336 
LW:X 20 0 0 0 0  0   7 23  90  209 0 0 0 0 0 0  1 0  0 0  350 
LW:S 19 0 0 0 0  1   0 13  96  215 0 0 0 0 0 0  6 0  0 0  350 
Le:X  7 0 0 0 0  1   5  7  52  269 0 0 0 0 0 0  0 0  0 0  341 
Le:S  2 0 0 1 0  1   0  3 103  230 0 0 0 0 0 0  1 0  0 0  341 
Lx:X  1 0 0 0 1  6  41  1  44    6 0 0 0 0 0 0  0 0  7 0  107 
Lx:S  3 0 0 0 0  0   0  0   1   95 0 0 0 0 0 0  1 0  7 0  107 
iW:X 22 0 0 0 0  0   0  5  32  259 0 0 0 0 0 0  0 0  0 0  318 
iW:S 27 0 0 0 0  0   0  0  39  252 0 0 0 0 0 0  0 0  0 0  318 
ie:X  4 0 0 0 0  3   1  0   8  353 0 0 0 0 0 0  0 0  0 0  369 
ie:S  0 0 0 1 1  1   0  0   4  362 0 0 0 0 0 0  0 0  0 0  369 
ix:X  2 0 0 0 0  1  48  3  42   10 0 0 0 0 0 0  0 0  8 0  114 
ix:S  5 0 0 0 0  0   0  0   2   99 0 0 0 0 0 0  0 0  8 0  114 
We:X 18 0 0 0 0  0   0  6  29  254 0 0 0 0 0 0  0 0  0 0  307 
We:S 21 0 0 0 0  0   0  1  29  256 0 0 0 0 0 0  0 0  0 0  307 
Wx:X  3 0 0 0 0  1  12  1  26   40 0 0 0 0 0 0  0 0  6 0   89 
Wx:S 18 0 0 0 0  0   0  0   0   65 0 0 0 0 0 0  0 0  6 0   89 
ex:X  1 0 0 0 0  1  58  1  42   13 0 0 0 0 0 0  0 0  8 0  124 
ex:S  3 0 0 0 0  0   0  0   0  113 0 0 0 0 0 0  0 0  8 0  124 
-----------------------------------------------------------------
Tot 361 0 0 2 3 22 287 85 894 5582 0 0 0 0 0 0 18 0 74 0 7328 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1269

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.94  255     0.72  255
 gi    0.91  256     0.98  252
 gW    0.67  201     0.64  167
 ge    0.92  293     1.02  298
 xg    5.19   33     6.62   14
 Li    1.29  333     1.02  331
 LW    1.07  330     0.75  328
 Le    1.22  334     1.06  338
 Lx    1.01   99     0.78   96
 iW    0.90  296     0.76  288
 ie    1.29  365     1.37  367
 xi    0.92  104     0.96  101
 We    0.86  289     0.79  281
 xW    0.69   80     0.62   64
 xe    0.94  115     1.08  113


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

  if station i and f_group X
    freqs g h i j  l m n 
* No detections in channel XR5U, DBBC issue. 

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn 16.5  -70.5   28.9   -3.0   23.2   76.7   54.0 10.0

  if station W and f_group S
    pc_mode manual
    pc_phases abcdef 110.5  196.2  271.2   32.4   44.5  238.6 

* ref Yg/e --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -3.8   8.9   3.2   -12.8   1.7   4.1
   if station g and f_group X
   pc_phases ghijklmn -5.4    -3.7   2.1  19.1 10.0 0.2  -12.7 -1.8

   if station i and f_group S
   pc_phases abcdef 0.8   8.5   1.6   -18.8   5.8   4.3
   if station i and f_group X
   pc_phases ghijlmn  2.1    -8.2  1.5  3.0  3.6 -0.4 -1.7

   if station L and f_group S
   pc_phases abcdef 3.4   6.8    -2.9   -17.3   5.0   7.9
   if station L and f_group X
   pc_phases ghijklmn 2.7    -2.3 -1.7 -8.4  21.0  -16.4 47.2 -12.9

   if station x and f_group S
   pc_phases abcdef 1.9  11.0    -0.4   -19.3   4.2   5.1
   if station x and f_group X
   pc_phases ghijklmn -3.6    -0.1   8.8   3.0 -3.8  -23.8 131.0 -9.7

Regards,
 Jamie 

+END
