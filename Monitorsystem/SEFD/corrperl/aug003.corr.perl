+HEADER 
CORREL   CRTN 
DATABASE 15JAN18XA
SESSNAME AUG003 
UTSTART  0000 
DURATION 24 
DOY      018-019 
CORRTIME 2015/03/25 2015/03/26 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            92%             - 
   0              -              - 
 4-1,A-H,N        7%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART12 (Hb/L): Manual pcal. Possible small clock break at 0710.

 KATH12M  (Ke/i): Manual pcal. Possible small clock break at 0853. 

 WARK12M  (Ww/W): Manual pcal. 

 YARRA12M (Yg/e): Manual pcal. Large clock break at 0648. Many G-codes due
  to low sensitivity in upper X-band channels (DBBC problem).

+DROP_CHANNELS
 Hb 
 Ke 
 Ww 
 Yg 

+MANUAL PCAL Ww Ke Hb Yg Yg 

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
  HB          -12.69         0.00   56990.0000000
  KE           -9.96        -0.00   57039.0000000
  YG          -11.65         0.00   57039.0000000
  WW            5.60         0.00   57039.0000000


+QCODES

Qcod 0 1 2 3 4 5  6   7    8    9 A B C D E F   G H  N -  Tot 
-----------------------------------------------------------------
Li:X 2 0 0 0 0 0  0   3   34  671 0 0 0 0 0 0   0 0  0 0  710 
Li:S 0 0 0 0 0 0  2  13   95  593 0 0 0 0 0 0   7 0  0 0  710 
LW:X 4 0 0 0 0 0  0   9   51  666 0 0 0 0 0 0   0 0  6 0  736 
LW:S 1 0 0 0 0 0  2  26  290  375 0 0 0 0 0 0  36 0  6 0  736 
Le:X10 0 0 0 0 1 18 173  171  188 0 0 0 0 0 0 171 0  0 0  732 
Le:S 2 0 0 0 0 3  2  28  228  441 0 0 0 0 0 0  28 0  0 0  732 
iW:X 3 0 0 0 0 0  0   4   17  679 0 0 0 0 0 0   0 0  6 0  709 
iW:S 3 0 0 0 0 0  0   3   15  681 0 0 0 0 0 0   1 0  6 0  709 
ie:X 5 0 0 1 0 3 24 198  159  176 0 0 0 0 0 0 194 0  0 0  760 
ie:S 2 0 0 0 1 1  0   4   27  725 0 0 0 0 0 0   0 0  0 0  760 
We:X 7 0 0 0 0 0 10 147  174  188 0 0 0 0 0 0 161 0  6 0  693 
We:S 4 0 0 0 0 0  0   6   66  610 0 0 0 0 0 0   1 0  6 0  693 
-----------------------------------------------------------------
Tot 43 0 0 1 1 8 58 614 1327 5993 0 0 0 0 0 0 599 0 36 0 8680 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1317

 ...by baseline, over all sources:

 bl     X     n       S     n

 Li    1.22  708     0.92  710
 LW    1.77  726     1.20  729
 Le    0.96  722     1.04  730
 iW    1.59  700     1.05  698
 ie    1.00  755     1.01  758
 We    1.23  679     1.18  683


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

  if station W and f_group S
    pc_mode manual
    pc_phases abcdef -166.8 110.0   9.7  57.5  51.4   4.5 

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn -8.3 -194.0 -287.4 -270.7 -30.6 -19.5 -302.0 -35.6

  if station i and f_group S
    pc_mode manual
    pc_phases abcdef 0 0 0 0 0 0

  if station i and f_group X
    pc_mode manual
 pc_phases ghijklmn 0 0 0 0 0 0 0 0

  if station L and f_group S
    pc_mode manual
    pc_phases abcdef -42.8   -2.2   39.8  102.6  244.3  290.4

  if station L and f_group X
    pc_mode manual
 pc_phases ghijklmn -120.0  -68.4   68.8  -67.3   38.8   68.8 85.3 113.4

  if station e and f_group S and scan < 018-065000
    pc_mode manual
    pc_phases abcdef  -84.5  -125.9  -163.6  -209.6   -27.9   -61.5

  if station e and f_group X and scan < 018-065000
    pc_mode manual
 pc_phases ghijklmn 79.1 328.8 148.5 223.5 107.9 330.9 329.9 331.8

  if station e and f_group S and scan > 018-065000
    pc_mode manual
    pc_phases abcdef -165.5  -256.1  -332.7   -86.5   -18.6  -107.5

  if station e and f_group X and scan > 018-065000
    pc_mode manual
 pc_phases ghijklmn 152.9 -45.3 -104.4 -57.8 -307.1 -316.8 -95.3 -148.1


* ref Ke/i --> just for book keeping


Regards,
 Jamie 

+END
