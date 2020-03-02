+HEADER 
CORREL   CRTN 
DATABASE 14SEP01XA 
SESSNAME AUST46 
UTSTART  0700 
DURATION 24 
DOY      244-245 
CORRTIME 2014/11/08 2014/11/09 
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

 HART15M  (Ht/g): Ok.

 HOBART12 (Hb/L): Strong RFI in upper S-band. Clock breaks noted at ~1230,
  1753 and 0003.

 KATH12M  (Ke/i): Ok. 

 YARRA12M (Yg/e): Manual phase cal used. Missing first 15 minutes due to
  late start.  

 HARTRAO  (Hh/x): Missed a small number of scans between 0726 and 0738,
  and 1048 and 1106. 

 HOBART26 (Ho/H): Manual phase cal used. Receiver cryogenics failed prior
  to experiment, leading to poor sensitivity  especially in X-band. Clock
  breaks noted at ~1230, 1753 and 0003.

+DROP_CHANNELS
 Ht 
 Hb 
 Ke 
 Yg 
 Hh 
 Ho 

+MANUAL PCAL Ho Yg 

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
  HO          -10.19         0.00   56636.7588889
  HT            1.49        -0.00   56901.2916667
  HH           -8.38        -0.00   56901.2916667
  KE           -5.91         0.00   56900.0000000
  YG           -7.69         0.00   56900.0000000


+QCODES

Qcod  0 1 2 3 4 5 6  7   8    9 A B C D E F G H   N -  Tot 
--------------------------------------------------------------
gL:X 14 0 0 0 0 0 0  1   2  512 0 0 0 0 0 0 0 0  14 0  543 
gL:S 49 0 0 0 0 0 0 12 110  356 0 0 0 0 0 0 2 0  14 0  543 
gi:X 24 0 0 0 0 0 0  2   3  475 0 0 0 0 0 0 0 0  10 0  514 
gi:S 44 0 0 0 0 0 0  1   8  451 0 0 0 0 0 0 0 0  10 0  514 
ge:X  4 0 0 0 0 0 0  0   2  557 0 0 0 0 0 0 0 0  17 0  580 
ge:S 22 0 0 0 0 0 0  2  33  506 0 0 0 0 0 0 0 0  17 0  580 
gx:X  0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0 0 0   0 0    0 
gx:S  0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0 0 0   0 0    0 
gH:X  0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0 0 0   0 0    0 
gH:S  0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0 0 0   0 0    0 
Li:X  3 0 0 0 0 0 0  2  24  670 0 0 0 0 0 0 0 0   2 0  701 
Li:S  6 0 0 0 0 0 2  4  60  625 0 0 0 0 0 0 2 0   2 0  701 
Le:X  4 0 0 0 0 0 0  0  21  655 0 0 0 0 0 0 0 0   8 0  688 
Le:S  2 0 0 0 0 0 0  6 108  564 0 0 0 0 0 0 0 0   8 0  688 
Lx:X  0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0 0 0   0 0    0 
Lx:S  0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0 0 0   0 0    0 
LH:X  0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0 0 0   0 0    0 
LH:S  0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0 0 0   0 0    0 
ie:X  1 0 0 0 0 0 1  2  34  641 0 0 0 0 0 0 0 0   9 0  688 
ie:S  1 0 0 0 0 0 0  0  17  661 0 0 0 0 0 0 0 0   9 0  688 
ix:X  0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0 0 0   0 0    0 
ix:S  0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0 0 0   0 0    0 
iH:X  0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0 0 0   0 0    0 
iH:S  0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0 0 0   0 0    0 
ex:X  0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0 0 0   0 0    0 
ex:S  0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0 0 0   0 0    0 
eH:X  0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0 0 0   0 0    0 
eH:S  0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0 0 0   0 0    0 
xH:X 39 0 0 0 2 0 3  3  93  428 0 0 0 0 0 0 0 0   2 0  570 
xH:S 64 0 0 0 0 1 1  2  76  424 0 0 0 0 0 0 0 0   2 0  570 
--------------------------------------------------------------
Tot 277 0 0 0 2 1 7 37 591 7525 0 0 0 0 0 0 4 0 124 0 8568 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1286

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.91  512     0.74  468
 gi    0.86  479     0.87  454
 ge    0.97  559     0.96  538
 gx    0.00    0     0.00    0
 gH    0.00    0     0.00    0
 Li    1.22  696     0.85  692
 Le    1.43  676     0.96  678
 Lx    0.00    0     0.00    0
 LH    0.00    0     0.00    0
 ie    1.40  678     1.16  678
 ix    0.00    0     0.00    0
 iH    0.00    0     0.00    0
 ex    0.00    0     0.00    0
 eH    0.00    0     0.00    0
 xH    0.71  524     0.73  500


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

  if station H and f_group S
    pc_mode manual
    pc_phases abcdef -109.1  -148.5   -60.6   -44.3 80.2 26.1

  if station H and f_group X
    pc_mode manual
 pc_phases ghijklmn 69.2 54.3 301.1 132.5 47.8 302.3 17.6 34.7

  if station e and f_group S
    pc_mode manual
    pc_phases abcdef -11.1 320.7 331.8 157.1 313.0 3.5

  if station e and f_group X
    pc_mode manual
 pc_phases ghijklmn 148.9 150.0 74.3 -101.8 -174.6 -296.9 -223.8 -350.7


* ref Ke/i & Hh/x --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -6.0   2.3   2.4   6.4    -4.3    -2.0
   if station g and f_group X
   pc_phases ghijklmn -5.6 0.2 -1.1 16.6 6.2 1.6 -7.2 -3.1

   if station L and f_group S
   pc_phases abcdef 2.0    -0.7    -2.0   -0.2    -2.9   4.2
   if station L and f_group X
   pc_phases ghijklmn 2.3   0.8 -4.8 -5.7 7.9 -3.3 8.2 -3.5 


Regards,
 Jamie  

+END
