+HEADER 
CORREL   CRTN 
DATABASE 14DEC07XA 
SESSNAME AUST68 
OBSTIME  2014/12/07 2014/12/07 
UTSTART  0000 
DURATION 24 
DOY      341 
CORRTIME 2015/03/03 2015/03/04 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            58%             - 
   0             14%             - 
 4-1,A-H,N       28%             - 
 Removed          -              - 

+CORRELATOR_NOTES
The schedule was updated shortly before the experiment and the new version
was not sent to Hart in time. 

+STATION_NOTES

 HART15M  (Ht/g): Hart15 observed the original schedule, leading to few
  useful observations. 

 HOBART12 (Hb/L): Small clock break noted at 0805.

 KATH12M  (Ke/i): Small clock break noted at 0446

 WARK12M  (Ww/W): Manual pcal. 

 YARRA12M (Yg/e): Ok. 

+DROP_CHANNELS
 Ht 
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
  HB          -12.69         0.00   56990.0000000
  HT           -2.08        -0.00   56998.0000000
  KE           -9.87        -0.00   56997.0000000
  YG          -11.19         0.00   56997.0000000
  WW            2.36         0.00   56998.0000000


+QCODES

Qcod   0 1 2 3 4 5 6  7   8    9 A B C D E F  G H    N -  Tot 
-----------------------------------------------------------------
gL:X 153 0 0 0 0 0 0  0   0   29 0 0 0 0 0 0  0 0  365 0  547 
gL:S 153 0 0 0 0 0 0  0   0   28 0 0 0 0 0 0  1 0  365 0  547 
gi:X 171 0 0 0 0 0 0  0   0   31 0 0 0 0 0 0  0 0  319 0  521 
gi:S 175 0 0 0 0 0 0  0   1   26 0 0 0 0 0 0  0 0  319 0  521 
ge:X 178 0 0 0 0 0 0  0   2   34 0 0 0 0 0 0  0 0  362 0  576 
ge:S 176 0 0 0 0 0 0  0   1   37 0 0 0 0 0 0  0 0  362 0  576 
gW:X  11 0 0 0 0 0 0  0   0    1 0 0 0 0 0 0  0 0   20 0   32 
gW:S  11 0 0 0 0 0 0  0   1    0 0 0 0 0 0 0  0 0   20 0   32 
Li:X   5 0 0 0 2 1 0  2  12  637 0 0 0 0 0 0  0 0    1 0  660 
Li:S   2 0 0 0 1 1 3  4  44  604 0 0 0 0 0 0  0 0    1 0  660 
Le:X   4 0 0 0 0 0 1  1  16  625 0 0 0 0 0 0  0 0    0 0  647 
Le:S   3 0 0 1 1 0 1  9 147  470 0 0 0 0 0 0 15 0    0 0  647 
LW:X   1 0 0 0 0 0 0  0   0   60 0 0 0 0 0 0  0 0    1 0   62 
LW:S   0 0 0 0 0 0 1  2  10   46 0 0 0 0 0 0  2 0    1 0   62 
ie:X   0 0 0 0 0 0 0  2  25  639 0 0 0 0 0 0  0 0    0 0  666 
ie:S   0 0 0 0 1 0 0  1  44  619 0 0 0 0 0 0  1 0    0 0  666 
iW:X   2 0 0 0 0 0 0  1   0   58 0 0 0 0 0 0  0 0    1 0   62 
iW:S   0 0 0 0 0 0 0  0   2   59 0 0 0 0 0 0  0 0    1 0   62 
eW:X   3 0 0 0 0 0 0  1   1   47 0 0 0 0 0 0  0 0    0 0   52 
eW:S   0 0 0 0 0 0 0  1  15   36 0 0 0 0 0 0  0 0    0 0   52 
-----------------------------------------------------------------
Tot 1048 0 0 1 5 2 6 24 321 4086 0 0 0 0 0 0 19 0 2138 0 7650 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1308

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.57   28     0.69   29
 gi    0.62   31     0.73   27
 ge    0.65   36     0.72   38
 gW    0.69    1     0.88    1
 Li    1.03  654     0.88  656
 Le    1.19  643     1.01  644
 LW    0.97   59     0.87   61
 ie    1.42  666     1.05  666
 iW    1.10   59     0.93   61
 We    1.23   49     1.10   52


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
    pc_phases abcdef -95.1  147.8   15.9    6.7  330.7  335.9

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn -93.3   37.5   64.2  342.6  323.8 11.0 4.9 87.1

* ref Yg/e --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -3.2   9.6   0.3    -9.2   4.8   2.3
   if station g and f_group X
   pc_phases ghijklmn -0.2 -11.1 -0.6 16.8 13.2 3.6 -3.8 -6.7

   if station i and f_group S
   pc_phases abcdef -0.1 8.2 2.3   -14.3  4.7 4.3
   if station i and f_group X
   pc_phases ghijklmn 3.0 -10.0 0.6 1.6 5.6 3.1 0.7 -3.7

   if station L and f_group S
   pc_phases abcdef 2.1   7.4    -3.0   -13.5   4.7  12.1
   if station L and f_group X
   pc_phases ghijklmn 3.2 -5.7 -1.4 -4.3 12.4 -4.4 4.9 -3.4 

Regards,
 Jamie 

+END
