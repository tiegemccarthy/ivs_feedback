+HEADER 
CORREL   CRTN 
DATABASE 14DEC13XA 
SESSNAME AUST69 
OBSTIME  2014/12/13 2014/12/13 
UTSTART  0000 
DURATION 24 
DOY      347 
CORRTIME 2015/03/04 2015/03/05 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            97%             - 
   0              1%             - 
 4-1,A-H,N        2%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART12 (Hb/L): Manual pcal. 

 KATH12M  (Ke/i): Manual pcal. 

 WARK12M  (Ww/W): Manual pcal. 

 YARRA12M (Yg/e): Maual pcal. 

+DROP_CHANNELS
 Hb 
 Ke 
 Ww 
 Yg 

+MANUAL PCAL Ww Yg Ke Hb 

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
  KE           -9.90        -0.00   57004.0000000
  YG          -11.28         0.00   57004.0000000
  WW            2.09         0.00   57004.0000000


+QCODES

Qcod 0 1 2 3 4 5 6  7   8    9 A B C D E F  G H  N -  Tot 
-------------------------------------------------------------
Li:X 4 0 0 0 0 0 0  1  26  890 0 0 0 0 0 0  3 0  5 0  929 
Li:S 4 0 0 0 0 0 0 31 152  732 0 0 0 0 0 0  5 0  5 0  929 
Le:X 2 0 0 0 0 0 0  1  25  898 0 0 0 0 0 0  3 0  0 0  929 
Le:S 3 0 0 1 0 0 0 20 253  619 0 0 0 0 0 0 33 0  0 0  929 
LW:X 7 0 0 0 0 0 0  0   0  113 0 0 0 0 0 0  0 0  3 0  123 
LW:S 5 0 0 0 0 0 0  5  56   41 0 0 0 0 0 0 13 0  3 0  123 
ie:X 1 0 0 1 0 2 1  3  28  889 0 0 0 0 0 0  0 0  5 0  930 
ie:S 1 0 0 0 1 2 0  0   8  913 0 0 0 0 0 0  0 0  5 0  930 
iW:X11 0 0 0 0 0 0  0   0  108 0 0 0 0 0 0  0 0  4 0  123 
iW:S 5 0 0 0 0 0 0  0   2  112 0 0 0 0 0 0  0 0  4 0  123 
eW:X10 0 0 0 0 0 0  0   3  106 0 0 0 0 0 0  0 0  3 0  122 
eW:S 5 0 0 0 0 0 0  1   9  104 0 0 0 0 0 0  0 0  3 0  122 
-------------------------------------------------------------
Tot 58 0 0 2 1 4 1 62 562 5525 0 0 0 0 0 0 57 0 40 0 6312 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1309

 ...by baseline, over all sources:

 bl     X     n       S     n

 Li    1.14  919     0.97  920
 Le    1.26  926     1.01  926
 LW    1.04  113     1.00  115
 ie    1.39  924     0.99  923
 iW    1.07  108     0.98  114
 We    1.18  109     1.04  114


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
    pc_phases abcdef 162.9  139.2  110.8   59.6  149.3  163.6

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn 97.5 -1.1 -278.1 -9.5 -292.7 -40.7 -258.6 -331.2

  if station e and f_group S
    pc_mode manual
    pc_phases abcdef 0 0 0 0 0 0

  if station e and f_group X
    pc_mode manual
 pc_phases ghijklmn 0 0 0 0 0 0 0 0

  if station i and f_group S
    pc_mode manual
    pc_phases abcdef -9.9  -41.4  -83.9 -153.7 -126.8 -164.3

  if station i and f_group X
    pc_mode manual
 pc_phases ghijklmn -51.3 -133.4 -348.4 -354.4 -11.3 -318.9 -170.2 -218.7

  if station L and f_group S
    pc_mode manual
    pc_phases abcdef 178.4  196.4  206.6  215.6   40.4   56.0

  if station L and f_group X
    pc_mode manual
 pc_phases ghijklmn -31.9  238.2  353.8  295.9   96.5 51.2 161.6 99.7

* ref Yg/e --> just for book keeping


Regards,
 Jamie 

+END
