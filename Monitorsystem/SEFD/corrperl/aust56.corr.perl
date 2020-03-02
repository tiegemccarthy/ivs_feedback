+HEADER 
CORREL   CRTN 
DATABASE 14NOV01XA 
SESSNAME AUST56 
OBSTIME  2014/11/01 2014/11/01 
UTSTART  0000 
DURATION 1 
DOY      305 
CORRTIME 2015/01/27 2015/01/28 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            93%             - 
   0              1%             - 
 4-1,A-H,N        5%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART12 (Hb/L): Windstowed between 0258-0308, 0339-0409, 0517-0546, no 
  recorded data between 1930-2015. Clock breaks apparent at 0112, 1454 and
  2210. 

 KATH12M  (Ke/i): Ok.

 WARK12M  (Ww/W): Manual pcal. 

 YARRA12M (Yg/e): Ok. 

+DROP_CHANNELS
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
  HB          -13.19         0.00   56636.7588889
  KE          -10.23        -0.00   56962.0000000
  YG          -11.33         0.00   56962.0000000
  WW           21.04         0.00   56962.0000000


+QCODES

Qcod  0 1 2 3 4 5 6  7   8    9 A B C D E F  G H   N -  Tot 
---------------------------------------------------------------
Li:X 16 0 0 0 0 0 0  4  42  594 0 0 0 0 0 0  0 0  64 0  720 
Li:S 17 0 0 0 1 0 0  4  57  575 0 0 0 0 0 0  2 0  64 0  720 
LW:X 14 0 0 0 0 0 3  4  46  605 0 0 0 0 0 0  0 0  65 0  737 
LW:S 14 0 0 0 0 0 1 26 185  427 0 0 0 0 0 0 19 0  65 0  737 
Le:X 19 0 0 0 0 0 0  3  18  625 0 0 0 0 0 0  0 0  65 0  730 
Le:S 19 0 0 0 0 0 0  6  85  550 0 0 0 0 0 0  5 0  65 0  730 
iW:X  4 0 0 0 0 0 2  6  37  653 0 0 0 0 0 0  0 0   5 0  707 
iW:S  4 0 0 0 0 1 0  2  36  659 0 0 0 0 0 0  0 0   5 0  707 
ie:X  0 0 0 0 0 0 0  3  27  723 0 0 0 0 0 0  0 0   6 0  759 
ie:S  2 0 0 0 0 0 0  0   6  745 0 0 0 0 0 0  0 0   6 0  759 
We:X  2 0 0 0 0 0 1  7  17  661 0 0 0 0 0 0  0 0   6 0  694 
We:S  9 0 0 0 0 0 0  4  41  634 0 0 0 0 0 0  0 0   6 0  694 
---------------------------------------------------------------
Tot 120 0 0 0 1 1 7 69 597 7451 0 0 0 0 0 0 26 0 422 0 8694 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1296

 ...by baseline, over all sources:

 bl     X     n       S     n

 Li    1.12  640     0.89  636
 LW    1.58  658     1.13  658
 Le    1.16  645     0.90  646
 iW    1.41  698     0.98  697
 ie    1.25  753     0.87  751
 We    1.46  686     1.00  677


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
    pc_phases abcdef 172.6 128.3 78.2 173.1 325.2 16.1

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn -68.9 27.0 321.2 92.3 205.9 130.3 76.4 128.5

* ref Ke/i --> just for book keeping

   if station L and f_group S
   pc_phases abcdef -1.0    -0.3    -0.1   4.3    -2.1    -0.2
   if station L and f_group X
   pc_phases ghijklmn 0.3   1.3    -2.4    -2.9   8.0    -4.7   5.2    -2.0

   if station e and f_group S
   pc_phases abcdef -1.5   -7.1    1.7   14.9   -6.0   -2.9
   if station e and f_group X
   pc_phases ghijklmn  -1.0    5.4   -2.7   -1.0   -3.7    1.0    3.0   -0.4

Regards,
 Jamie 

+END
