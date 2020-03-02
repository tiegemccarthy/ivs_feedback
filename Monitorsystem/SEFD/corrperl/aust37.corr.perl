+HEADER 
CORREL   CRTN 
DATABASE 14AUG06XA 
SESSNAME AUST37 
UTSTART  0700 
DURATION 24 
DOY      218-219 
CORRTIME 2014/09/25 2014/09/26 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            95%             - 
   0              3%             - 
 4-1,A-H,N        2%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART12 (Hb/L): Strong RFI in SR5U and SR6U. Late start - Windstowed until 218-0815. Manual phase cal applied. Apparent clock breaks at 1147, 1300 and 1451. Cause unknown.

 HART15M  (Ht/g): Ok. 

 KATH12M  (Ke/i): Small clock breaks apparent at 218-2320 and 218-0530.

 WARK12M  (Ww/W): Manual phase cal. 

 YARRA12M (Yg/e): DBBC reconfigured  at 1030, with associated clock break. 

+DROP_CHANNELS
 Hb 
 Ht 
 Ke 
 Ww 
 Yg 

+MANUAL PCAL Ww Hb 

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
  HB          -10.19         0.00   56875.4582292
  HT            0.88        -0.00   56875.4582292
  KE           -5.79         0.00   56875.2916667
  YG           -7.63         0.00   56875.2916667
  WW           18.07         0.00   56875.4582292


+QCODES

Qcod  0 1 2 3 4 5  6  7   8    9 A B C D E F  G H   N -  Tot 
----------------------------------------------------------------
gL:X 13 0 0 0 0 0  0  0   5  346 0 0 0 0 0 0  0 0   6 0  370 
gL:S 35 0 0 0 0 0  0  2  86  240 0 0 0 0 0 0  1 0   6 0  370 
gi:X 12 0 0 0 0 0  0  0   1  363 0 0 0 0 0 0  0 0   0 0  376 
gi:S 32 0 0 0 0 0  0  0   1  343 0 0 0 0 0 0  0 0   0 0  376 
gW:X 14 0 0 0 0 0  0  0   0  292 0 0 0 0 0 0  0 0   0 0  306 
gW:S 42 0 0 0 0 0  0  1  44  219 0 0 0 0 0 0  0 0   0 0  306 
ge:X  8 0 0 1 0 0  0  0   1  419 0 0 0 0 0 0  0 0  11 0  440 
ge:S 15 0 0 0 1 0  0  1   4  408 0 0 0 0 0 0  0 0  11 0  440 
Li:X 17 0 0 0 1 0  2  3  44  496 0 0 0 0 0 0  0 0  10 0  573 
Li:S 16 0 0 0 0 0  0  4  64  478 0 0 0 0 0 0  1 0  10 0  573 
LW:X 17 0 0 0 0 1  2  9  55  479 0 0 0 0 0 0  0 0  11 0  574 
LW:S 17 0 0 0 0 0  2 10 231  297 0 0 0 0 0 0  6 0  11 0  574 
Le:X 18 0 0 0 1 0  3  5  51  468 0 0 0 0 0 0  0 0  30 0  576 
Le:S 18 0 0 0 0 0  1  2 130  393 0 0 0 0 0 0  2 0  30 0  576 
iW:X  3 0 0 0 0 0  0  4  23  501 0 0 0 0 0 0  0 0   1 0  532 
iW:S  2 0 0 0 0 1  0  0  26  502 0 0 0 0 0 0  0 0   1 0  532 
ie:X  0 0 0 0 1 0  0  2  23  561 0 0 0 0 0 0  0 0  22 0  609 
ie:S  0 0 0 0 0 2  0  0  10  575 0 0 0 0 0 0  0 0  22 0  609 
We:X  2 0 0 0 0 0  2  2  43  436 0 0 0 0 0 0  0 0  17 0  502 
We:S  1 0 0 0 0 0  0  0  47  437 0 0 0 0 0 0  0 0  17 0  502 
----------------------------------------------------------------
Tot 282 0 0 1 4 4 12 45 889 8253 0 0 0 0 0 0 10 0 216 0 9716 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1277

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.90  350     0.74  324
 gi    0.80  364     0.86  341
 gW    1.04  292     0.88  258
 ge    0.97  421     1.05  412
 Li    1.28  546     0.90  547
 LW    1.96  546     1.07  546
 Le    1.45  528     1.10  528
 iW    1.49  528     1.06  529
 ie    1.41  587     1.30  587
 We    1.66  483     1.30  484


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
 pc_phases ghijklmn -36.0 157.4 301.3  49.6 267.6  99.8 177.0 278.7

  if station W and f_group S
    pc_mode manual
    pc_phases abcdef -72.6 255.1 222.3 340.6 343.1 67.6

  if station L and f_group S
    pc_mode manual
    pc_phases abcdef -102.3 -135.2 -160.9  -14.6 -171.2 -106.1

  if station L and f_group X
    pc_mode manual
 pc_phases ghijklmn -166.8  144.3  203.3   18.4  339.5  344.8   96.4  224.1


* ref Ke/i --> just for book keeping

   if station g and f_group S
   pc_phases abcdef  -3.7   2.0   1.6   1.4    -0.5    -2.3
   if station g and f_group X
   pc_phases ghijklmn -9.8   7.0   3.0  18.7   2.3    -3.7   -13.2 2.9

   if station e and f_group S
   pc_phases abcdef 0.3   -7.4   -1.2   14.1   -5.4   -1.8
   if station e and f_group X
   pc_phases ghijklmn -5.5   12.8    1.3   -0.2   -8.9   -2.9   -1.1    3.9


Regards,
 Jamie 

+END
