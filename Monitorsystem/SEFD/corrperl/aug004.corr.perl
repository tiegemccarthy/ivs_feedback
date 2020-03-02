+HEADER 
CORREL   CRTN 
DATABASE 15JAN24XA
SESSNAME AUG004 
UTSTART  0000 
DURATION 24 
DOY      024 
CORRTIME 2015/03/25 2015/03/26 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            67%             - 
   0             29%             - 
 4-1,A-H,N        4%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HART15M  (Ht/g): Ok. 

 HOBART12 (Hb/L): Ok. 

 KATH12M  (Ke/i): Ok.

 YARRA12M (Yg/e): No valid S-band data available to due DBBC error. 

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
  HB          -12.69         0.00   56990.0000000
  HT           -1.96         0.00   57046.0000000
  KE           -9.96        -0.00   57039.0000000
  YG          -11.72         0.00   57046.0000000


+QCODES

Qcod   0 1 2 3 4 5 6  7    8    9 A B C D E F  G H   N -  Tot 
-----------------------------------------------------------------
gL:X  41 0 0 0 0 0 0  0    4  494 0 0 0 0 0 0  0 0   0 0  539 
gL:S  43 0 0 0 0 0 0  4  100  382 0 0 0 0 0 0 10 0   0 0  539 
gi:X  34 0 0 0 0 0 0  0    9  432 0 0 0 0 0 0  0 0  43 0  518 
gi:S  40 0 0 0 0 0 0  0    7  428 0 0 0 0 0 0  0 0  43 0  518 
ge:X  29 0 0 0 0 0 1  5  257  302 0 0 0 0 0 0  1 0   1 0  596 
ge:S 594 0 0 0 0 0 0  0    0    1 0 0 0 0 0 0  0 0   1 0  596 
Li:X   8 0 0 0 0 0 1  1   20  614 0 0 0 0 0 0  0 0  52 0  696 
Li:S   8 0 0 0 0 1 0  9   93  527 0 0 0 0 0 0  6 0  52 0  696 
Le:X  10 0 0 0 1 1 1 13  437  222 0 0 0 0 0 0  0 0   1 0  686 
Le:S 680 0 0 3 0 0 1  0    0    1 0 0 0 0 0 0  0 0   1 0  686 
ie:X   2 0 0 0 0 1 3 16  420  212 0 0 0 0 0 0  0 0  52 0  706 
ie:S 650 0 0 1 0 0 0  1    1    1 0 0 0 0 0 0  0 0  52 0  706 
-----------------------------------------------------------------
Tot 2139 0 0 4 1 3 7 49 1348 3616 0 0 0 0 0 0 17 0 298 0 7482 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1318

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.83  498     0.89  493
 gi    0.83  437     0.88  433
 ge    0.76  565     0.00    0
 Li    1.07  636     0.97  635
 Le    1.01  675     3.04    4
 ie    1.07  652     0.84    4


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
    freqs g h i j l m n
    pc_freqs ghijklmn 9010 9010 9010 9010 9010 9010 9010 9010
* Channel XR5U appears weak inmost stations.

  if f_group S
    ref_freq 2225.99
    freqs a b c d e f 
    pc_freqs abcdef 3010 3010 3010 3010 3010 3010

* ref Hb/L --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -6.7    1.5    4.6    4.0   -1.8   -4.9
   if station g and f_group X
   pc_phases ghijklmn -7.6   -0.5    1.9   24.3   -1.3    6.5  -12.1   -1.8

   if station i and f_group S
   pc_phases abcdef -2.5   -0.0    4.5   -1.2    0.1   -0.8
   if station i and f_group X
   pc_phases ghijklmn -2.3    1.4    2.7    5.2   -8.0    1.9   -5.3    2.9

   if station e and f_group S
   pc_phases abcdef   0.3    3.2   -1.6   -0.5   -0.6   -1.4
   if station e and f_group X
   pc_phases ghijklmn -5.8   11.4    2.0    1.4  -20.7   -3.0   -6.4    8.6

Regards,
 Jamie 

+END
