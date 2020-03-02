+HEADER 
CORREL   CRTN 
DATABASE 14OCT19XA 
SESSNAME AUST55 
UTSTART  1600 
DURATION 24 
DOY      292-293 
CORRTIME 2015/01/27 2015/01/28 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            77%             - 
   0              7%             - 
 4-1,A-H,N       16%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART12 (Hb/L): One small clock break noted at 0002

 KATH12M  (Ke/i): Ok. 

 WARK12M  (Ww/W): Did not observe. Scheduled as tag-along. 

 YARRA12M (Yg/e): Ok. 

+DROP_CHANNELS
 Hb 
 Ke 
 Ww 
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
  HB          -13.19         0.00   56636.7588889
  KE           -9.87        -0.00   56948.0000000
  YG          -10.95         0.00   56948.0000000


+QCODES

Qcod  0 1 2 3 4   5   6  7   8    9 A B C D E F G H   N -  Tot 
------------------------------------------------------------------
Li:X  2 0 0 0 0  41  47 23  12  527 0 0 0 0 0 0 0 0   7 0  659 
Li:S117 0 0 0 0   1   0  5  59  470 0 0 0 0 0 0 0 0   7 0  659 
Le:X  3 0 0 0 0  38  42 19  13  537 0 0 0 0 0 0 0 0   0 0  652 
Le:S 97 0 0 0 0   0   2  5 154  385 0 0 0 0 0 0 9 0   0 0  652 
LW:X  0 0 0 0 0   0   0  0   0    0 0 0 0 0 0 0 0 0 120 0  120 
LW:S  0 0 0 0 0   0   0  0   0    0 0 0 0 0 0 0 0 0 120 0  120 
ie:X  0 0 0 0 0  35  40 26  21  527 0 0 0 0 0 0 0 0   7 0  656 
ie:S 97 0 0 0 0   0   1  0   5  546 0 0 0 0 0 0 0 0   7 0  656 
iW:X  0 0 0 0 0   0   0  0   0    0 0 0 0 0 0 0 0 0 117 0  117 
iW:S  0 0 0 0 0   0   0  0   0    0 0 0 0 0 0 0 0 0 117 0  117 
eW:X  0 0 0 0 0   0   0  0   0    0 0 0 0 0 0 0 0 0 109 0  109 
eW:S  0 0 0 0 0   0   0  0   0    0 0 0 0 0 0 0 0 0 109 0  109 
------------------------------------------------------------------
Tot 316 0 0 0 0 115 132 78 264 2992 0 0 0 0 0 0 9 0 720 0 4626 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1295

 ...by baseline, over all sources:

 bl     X     n       S     n

 Li    0.99  650     0.91  534
 Le    1.09  649     0.97  548
 LW    0.00    0     0.00    0
 ie    1.18  649     0.94  543
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

* ref Ke/i --> just for book keeping

   if station L and f_group S
   pc_phases abcdef -0.8 -0.4 -1.3 1.2 -0.7  1.0
   if station L and f_group X
   pc_phases ghijklmn -1.4 5.1 -0.5 -4.1 5.6  -7.5 2.7  1.1

   if station e and f_group S
   pc_phases abcdef -2.5   -6.7    0.7   15.4   -5.4   -3.2
   if station e and f_group X
   pc_phases ghijklmn -5.3   10.7    1.3    0.6   -5.1   -3.9   -0.8    3.2

Regards,
 Jamie 

+END
