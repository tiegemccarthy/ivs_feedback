+HEADER 
CORREL   CRTN 
DATABASE 14AUG10XA 
SESSNAME AUST39 
OBSTIME  2014/08/10 2014/08/10 
UTSTART  0000 
DURATION 1 
DOY      222 
CORRTIME 2014/10/06 2014/10/07 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            43%             - 
   0              3%             - 
 4-1,A-H,N       55%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HART15M  (Ht/g): Ok. 

 HOBART12 (Hb/L): Two clock breaks (1558 and 2122) apparent in data.

 KATH12M  (Ke/i): Missing first 40 minutes.

 YARRA12M (Yg/e): All data lost due to module failure. 

+DROP_CHANNELS
 Ht 
 Hb 
 Ke 
 Yg 

+MANUAL PCAL 

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
  HT            0.78        -0.00   56878.0000000
  KE           -5.80         0.00   56878.0000000


+QCODES

Qcod  0 1 2 3 4 5 6 7   8    9 A B C D E F G H    N -  Tot 
--------------------------------------------------------------
gL:X 17 0 0 0 0 0 0 0   1  470 0 0 0 0 0 0 0 0   12 0  500 
gL:S 55 0 0 0 0 0 0 2  97  328 0 0 0 0 0 0 6 0   12 0  500 
gi:X 34 0 0 0 0 0 0 0   1  437 0 0 0 0 0 0 0 0   14 0  486 
gi:S 58 0 0 0 0 0 0 0   4  410 0 0 0 0 0 0 0 0   14 0  486 
ge:X  0 0 0 0 0 0 0 0   0    0 0 0 0 0 0 0 0 0  553 0  553 
ge:S  0 0 0 0 0 0 0 0   0    0 0 0 0 0 0 0 0 0  553 0  553 
Li:X 13 0 0 0 0 0 1 1  19  649 0 0 0 0 0 0 0 0   19 0  702 
Li:S 10 0 0 0 0 1 0 3  93  573 0 0 0 0 0 0 3 0   19 0  702 
Le:X  0 0 0 0 0 0 0 0   0    0 0 0 0 0 0 0 0 0  691 0  691 
Le:S  0 0 0 0 0 0 0 0   0    0 0 0 0 0 0 0 0 0  691 0  691 
ie:X  0 0 0 0 0 0 0 0   0    0 0 0 0 0 0 0 0 0  703 0  703 
ie:S  0 0 0 0 0 0 0 0   0    0 0 0 0 0 0 0 0 0  703 0  703 
--------------------------------------------------------------
Tot 187 0 0 0 0 1 1 6 215 2867 0 0 0 0 0 0 9 0 3984 0 7270 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1279

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.93  470     0.77  424
 gi    0.87  436     0.92  410
 ge    0.00    0     0.00    0
 Li    1.29  670     0.91  671
 Le    0.00    0     0.00    0
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

*  if station W and f_group X
*    freqs g h i j k l m n+ 
* Channel X8L has low amplitude, leading to many G-codes. 

*  if station W and f_group X
*    pc_mode manual
* pc_phases ghijklmn 0 0 0 0 0 0 0 0 

*  if station W and f_group S
*    pc_mode manual
*    pc_phases abcdef 0 0 0 0 0 0 

* ref Ke/i --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -9.0   0.7   5.0  11.4    -4.3    -6.3
   if station g and f_group X
   pc_phases ghijklmn -9.4 6.8 2.6 17.5 3.3    -3.8   -12.7   2.1

   if station L and f_group S
   pc_phases abcdef  2.3    -1.1    -2.3   1.0   0.1   1.2
   if station L and f_group X
   pc_phases ghijklmn -2.3   7.5    -0.0    -4.6   5.6 -8.5 2.0 2.0

*   if station e and f_group S
*   pc_phases abcdef 
*   if station e and f_group X
*   pc_phases ghijklmn 

Regards,
 Jamie 

+END
