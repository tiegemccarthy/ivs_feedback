+HEADER 
CORREL   CRTN 
DATABASE 14OCT04XA 
SESSNAME AUST48 
OBSTIME  2014/10/04 2014/10/04 
UTSTART  0000 
DURATION 1 
DOY      277 
CORRTIME 2014/01/11 2014/01/12 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            67%             - 
   0             20%             - 
 4-1,A-H,N       13%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HART15M  (Ht/g): Ok. 

 HOBART12 (Hb/L): Windstowed between 1200-2230.

 KATH12M  (Ke/i): Ok. 

 WARK12M  (Ww/W): Did not observe - Az motor issues.

 YARRA12M (Yg/e): Manual pcal. 

+DROP_CHANNELS
 Ht 
 Hb 
 Ke 
 Ww 
 Yg 

+MANUAL PCAL Yg 

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
  HB          -13.19         0.00   56636.7588889
  HT           -1.56         0.00   56934.0000000
  KE           -9.58        -0.00   56934.0000000
  YG          -10.85         0.00   56934.0000000


+QCODES

Qcod   0 1 2 3 4 5 6  7   8    9 A B C D E F  G H   N -  Tot 
----------------------------------------------------------------
ie:X   0 0 0 0 0 0 0  0  27  381 0 0 0 0 0 0  0 0   0 0  408 
ie:S   0 0 0 0 0 0 0  0  10  398 0 0 0 0 0 0  0 0   0 0  408 
ig:X  19 0 0 0 0 0 0  0   0  277 0 0 0 0 0 0  0 0   0 0  296 
ig:S  22 0 0 0 0 0 0  1   5  268 0 0 0 0 0 0  0 0   0 0  296 
iL:X 230 0 0 0 0 0 0  2  13  292 0 0 0 0 0 0  0 0   1 0  538 
iL:S 233 0 0 0 0 0 1  5  32  265 0 0 0 0 0 0  1 0   1 0  538 
iW:X   0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0  0 0  99 0   99 
iW:S   0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0  0 0  99 0   99 
eg:X   8 0 0 0 0 0 0  0   5  523 0 0 0 0 0 0  0 0   0 0  536 
eg:S  14 0 0 0 0 0 0  8  64  450 0 0 0 0 0 0  0 0   0 0  536 
eL:X 153 0 0 0 0 0 0  0   9  195 0 0 0 0 0 0  0 0   2 0  359 
eL:S 154 0 0 0 1 0 2  8  51  135 0 0 0 0 0 0  6 0   2 0  359 
eW:X   0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0  0 0  88 0   88 
eW:S   0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0  0 0  88 0   88 
gL:X 165 0 0 0 0 0 0  0   0  187 0 0 0 0 0 0  0 0   2 0  354 
gL:S 169 0 0 0 0 1 0  7  62  110 0 0 0 0 0 0  3 0   2 0  354 
gW:X   0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0  0 0  75 0   75 
gW:S   0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0  0 0  75 0   75 
LW:X   0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0  0 0  95 0   95 
LW:S   0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0  0 0  95 0   95 
----------------------------------------------------------------
Tot 1167 0 0 0 1 1 3 31 278 3481 0 0 0 0 0 0 10 0 724 0 5696 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1288

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.87  187     0.74  181
 gi    0.91  277     0.86  270
 ge    1.00  528     1.03  520
 gW    0.00    0     0.00    0
 Li    1.11  307     0.83  301
 Le    1.44  204     1.04  203
 LW    0.00    0     0.00    0
 ie    1.36  408     1.16  408
 iW    0.00    0     0.00    0
 eW    0.00    0     0.00    0


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

*  if station W and f_group S
*    pc_mode manual
*    pc_phases abcdef 0 0 0 0 0 0 

*  if station W and f_group X
*    pc_mode manual
* pc_phases ghijklmn 0 0 0 0 0 0 0 0

  if station e and f_group S
    pc_mode manual
    pc_phases abcdef -127.0 54.1 234.5 186.2 312.3 181.8

  if station e and f_group X
    pc_mode manual
 pc_phases ghijklmn 148.4 -80.2 -28.2 -78.9 -68.2 -212.1 -150.5 -48.5


* ref Ke/i --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -5.9 2.3 3.7 3.5 -1.1 -3.4
   if station g and f_group X
   pc_phases ghijklmn -6.7 2.1 0.1 18.6 6.4 -1.3 -8.8 -1.3

   if station L and f_group S
   pc_phases abcdef -0.3 -0.0 0.3 0.8 -4.5 3.7
   if station L and f_group X
   pc_phases ghijklmn -1.6 5.6 -1.1 -3.9 4.8 -8.6 2.2 2.1


Regards,
 Jamie 

+END
