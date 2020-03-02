+HEADER 
CORREL   CRTN 
DATABASE 15JAN31XA
SESSNAME AUG006 
UTSTART  0000 
DURATION 24 
DOY      031 
CORRTIME 2015/03/29 2015/03/30 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            25%             - 
   0              5%             - 
 4-1,A-H,N       70%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART12 (Hb/L): Manual pcal and late start - no data before 0047. 

 KATH12M  (Ke/i): No data - DBBC failure.

 YARRA12M (Yg/e): Manual pcal. Late start and many windstows. Low
  sensitivity in upper X-band channels, ;leading a number of G-codes. 

+DROP_CHANNELS
 Hb 
 Ke 
 Yg 

+MANUAL PCAL Hb Yg 

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
  YG          -11.81         0.00   57053.0000000


+QCODES

Qcod  0 1 2 3 4 5 6  7   8   9 A B C D E F  G H    N -  Tot 
---------------------------------------------------------------
Li:X  0 0 0 0 0 0 0  0   0   0 0 0 0 0 0 0  0 0  927 0  927 
Li:S  0 0 0 0 0 0 0  0   0   0 0 0 0 0 0 0  0 0  927 0  927 
Le:X120 0 0 0 0 0 5 66 413 208 0 0 0 0 0 0 32 0   82 0  926 
Le:S145 0 0 0 0 0 0  1  32 666 0 0 0 0 0 0  0 0   82 0  926 
ie:X  0 0 0 0 0 0 0  0   0   0 0 0 0 0 0 0  0 0  928 0  928 
ie:S  0 0 0 0 0 0 0  0   0   0 0 0 0 0 0 0  0 0  928 0  928 
---------------------------------------------------------------
Tot 265 0 0 0 0 0 5 67 445 874 0 0 0 0 0 0 32 0 3874 0 5562 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1320

 ...by baseline, over all sources:

 bl     X     n       S     n

 Li    0.00    0     0.00    0
 Le    0.98  724     0.71  688
 ie    0.00    0     0.00    0


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

* ref Yg/e --> just for book keeping

  if station L and f_group S
    pc_mode manual
    pc_phases abcdef 103.7   73.2   22.8   -4.9 -240.7 -269.3

  if station L and f_group X
    pc_mode manual
 pc_phases ghijklmn 177.8  -33.3 -213.7   -9.0  -59.2 -163.1  -53.5 -135.4

  if station e and f_group S
    pc_mode manual
    pc_phases abcdef 0 0 0 0 0 0

  if station e and f_group X
    pc_mode manual
 pc_phases ghijklmn 0 0 0 0 0 0 0 0 


Regards,
 Jamie 

+END
