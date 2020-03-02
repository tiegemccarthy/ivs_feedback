+HEADER 
CORREL   CRTN 
DATABASE $14NOV15XA 
SESSNAME AUST59 
OBSTIME  2014/11/15 2014/11/15 
UTSTART  0000 
DURATION 1 
DOY      319 
CORRTIME 2014/02/10 2014/02/11 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            86%             - 
   0              7%             - 
 4-1,A-H,N        7%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HART15M  (Ht/g): No valid data between 0610-0819. Possible clock break in
  this interval.

 HOBART12 (Hb/L): Ok.

 KATH12M  (Ke/i): No data before 0038 - FS error.

 WARK12M  (Ww/W): Manual pcal. No data after 0815 due to severe weather.

 YARRA12M (Yg/e): Manual pcal.

+DROP_CHANNELS
 Ht 
 Hb 
 Ke 
 Ww 
 Yg 

+MANUAL PCAL Ww Yg 

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
  HT           -2.19        -0.00   56976.0000000
  KE          -10.32        -0.00   56976.0000000
  YG          -11.48         0.00   56976.0000000
  WW           21.95         0.00   56976.0000000


+QCODES

Qcod  0 1 2 3 4 5 6  7   8    9 A B C D E F  G H   N -  Tot 
---------------------------------------------------------------
gL:X 63 0 0 0 1 0 0  1   3  482 0 0 0 0 0 0  0 0  16 0  566 
gL:S 92 0 0 0 1 0 0  3  77  375 0 0 0 0 0 0  2 0  16 0  566 
gi:X 71 0 0 0 0 0 0  1   3  445 0 0 0 0 0 0  0 0  25 0  545 
gi:S 67 0 0 0 0 0 0  1   2  450 0 0 0 0 0 0  0 0  25 0  545 
ge:X 84 0 0 0 0 2 1  9   8  485 0 0 0 0 0 0  0 0  15 0  604 
ge:S 96 0 0 0 1 1 1  3  28  459 0 0 0 0 0 0  0 0  15 0  604 
gW:X  0 0 0 0 0 0 0  0   0    9 0 0 0 0 0 0  0 0  31 0   40 
gW:S  0 0 0 0 0 0 0  1   7    1 0 0 0 0 0 0  0 0  31 0   40 
Li:X  3 0 0 0 0 0 0  1  14  646 0 0 0 0 0 0  0 0  20 0  684 
Li:S  1 0 0 0 0 1 0  4  63  591 0 0 0 0 0 0  4 0  20 0  684 
Le:X 15 0 0 0 0 2 2  7  12  624 0 0 0 0 0 0  1 0   3 0  666 
Le:S 26 0 0 0 1 1 0 16 135  470 0 0 0 0 0 0 14 0   3 0  666 
LW:X  2 0 0 0 0 0 0  0   2   15 0 0 0 0 0 0  0 0  52 0   71 
LW:S  1 0 0 0 0 0 0  9   0    8 0 0 0 0 0 0  1 0  52 0   71 
ie:X 15 0 0 0 0 1 2 12  29  606 0 0 0 0 0 0  0 0  18 0  683 
ie:S 27 0 0 1 0 0 0  4  43  590 0 0 0 0 0 0  0 0  18 0  683 
iW:X  0 0 0 0 0 0 0  0   3   15 0 0 0 0 0 0  0 0  54 0   72 
iW:S  0 0 0 0 0 0 0  0   2   16 0 0 0 0 0 0  0 0  54 0   72 
eW:X  1 0 0 0 0 0 0  2   7    7 0 0 0 0 0 0  0 0  48 0   65 
eW:S  0 0 0 0 0 0 0  0   7   10 0 0 0 0 0 0  0 0  48 0   65 
---------------------------------------------------------------
Tot 564 0 0 1 4 8 6 74 445 6304 0 0 0 0 0 0 22 0 564 0 7992 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1299

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.75  487     0.80  451
 gi    0.88  449     0.87  441
 ge    0.95  504     0.95  492
 gW    1.10    9     1.22    9
 Li    1.09  661     0.87  662
 Le    1.23  647     0.97  635
 LW    1.27   17     1.09   18
 ie    1.40  648     1.02  638
 iW    1.11   18     1.07   18
 We    1.34   16     1.36   17


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
    pc_phases abcdef 92.3  -239.3  -214.7  -353.2   -15.1  -257.3 

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn 85.1 219.1 176.8 13.8 203.1 176.6 128.0 178.3

  if station e and f_group S
    pc_mode manual
    pc_phases abcdef -74.7 206.9 135.0 232.3 237.6 211.2

  if station e and f_group X
    pc_mode manual
 pc_phases ghijklmn 93.7 -217.7 -330.4 -281.5 -242.2 -188.4 -207.3 -131.0



* ref Ke/i --> just for book keeping

   if station g and f_group S
   pc_phases abcdef  -3.6   1.1   0.7   4.7  -2.7  -0.4
   if station g and f_group X
   pc_phases ghijklmn -4.1 -3.9 -2.4 19.3 9.3 2.9 -6.0 -5.0

   if station L and f_group S
   pc_phases abcdef 4.5 -1.2 -3.3  0.0 -4.6 7.0
   if station L and f_group X
   pc_phases ghijklmn 2.5 -0.6 -4.6 -5.3 9.1 -4.1 7.5 -3.3

*   if station e and f_group S
*   pc_phases abcdef -1.0   -8.1   -1.1   17.3   -7.0   -4.1
*   if station e and f_group X
*   pc_phases ghijklmn 0.8    2.1   -4.9   -0.6    0.2    2.9    6.2   -3.5

Regards,
 Jamie 

+END
