+HEADER 
CORREL   CRTN 
DATABASE 14DEC06XA 
SESSNAME AUST67 
OBSTIME  2014/12/06 2014/12/06 
UTSTART  0000 
DURATION 24 
DOY      340 
CORRTIME 2015/03/01 2015/03/02 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            57%             - 
   0             16%             - 
 4-1,A-H,N       28%             - 
 Removed          -              - 

+CORRELATOR_NOTES
The schedule was updated shortly before the experiment and the new version
was not sent to Hart in time. 

+STATION_NOTES

 HART15M  (Ht/g): Hart15 observed the original schedule, leading to few
  useful observations. 

 HOBART12 (Hb/L): Small clock break noted at 0717. Disk recordings were
  starting chronically late (~6-10s after schedule) with corresponding
  decrease in effective integration time.

 KATH12M  (Ke/i): No data between 1536-1600.

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
  HT           -2.03        -0.00   56997.0000000
  KE           -9.87        -0.00   56997.0000000
  YG          -11.19         0.00   56997.0000000
  WW            1.77         0.00   56990.0000000


+QCODES

Qcod   0 1 2 3 4 5 6  7   8    9 A B C D E F  G H    N -  Tot 
-----------------------------------------------------------------
gL:X 169 0 0 0 0 0 0  0   0   27 0 0 0 0 0 0  0 0  346 0  542 
gL:S 169 0 0 0 0 0 0  0   4   23 0 0 0 0 0 0  0 0  346 0  542 
gi:X 193 0 0 0 0 0 0  0   0   23 0 0 0 0 0 0  0 0  307 0  523 
gi:S 190 0 0 0 0 0 0  0   0   26 0 0 0 0 0 0  0 0  307 0  523 
ge:X 208 0 0 0 0 0 0  0   0   31 0 0 0 0 0 0  0 0  344 0  583 
ge:S 208 0 0 0 0 0 0  0   0   31 0 0 0 0 0 0  0 0  344 0  583 
gW:X   7 0 0 0 0 0 0  0   0    3 0 0 0 0 0 0  0 0   22 0   32 
gW:S   7 0 0 0 0 0 0  0   1    2 0 0 0 0 0 0  0 0   22 0   32 
Li:X  13 0 0 0 0 2 0  0  12  621 0 0 0 0 0 0  0 0   14 0  662 
Li:S  11 0 0 0 1 1 0  3  52  580 0 0 0 0 0 0  0 0   14 0  662 
Le:X   4 0 0 0 0 0 1  1  10  623 0 0 0 0 0 0  0 0    1 0  640 
Le:S   1 0 0 3 0 0 1 13 118  482 0 0 0 0 0 0 21 0    1 0  640 
LW:X   2 0 0 0 0 0 0  0   2   58 0 0 0 0 0 0  0 0    0 0   62 
LW:S   1 0 0 0 0 0 0  0  14   44 0 0 0 0 0 0  3 0    0 0   62 
ie:X   8 0 0 0 0 0 0  1  15  630 0 0 0 0 0 0  0 0   14 0  668 
ie:S   8 0 0 0 0 0 0  0  57  589 0 0 0 0 0 0  0 0   14 0  668 
iW:X   3 0 0 0 0 0 0  0   2   58 0 0 0 0 0 0  0 0    0 0   63 
iW:S   2 0 0 0 0 0 0  0   4   57 0 0 0 0 0 0  0 0    0 0   63 
eW:X   2 0 0 0 0 0 0  0   2   50 0 0 0 0 0 0  0 0    0 0   54 
eW:S   1 0 0 0 0 0 0  0  16   37 0 0 0 0 0 0  0 0    0 0   54 
-----------------------------------------------------------------
Tot 1207 0 0 3 1 3 2 18 309 3995 0 0 0 0 0 0 24 0 2096 0 7658 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1307

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.56   26     0.70   25
 gi    0.58   22     0.80   25
 ge    0.66   31     0.78   31
 gW    1.18    3     0.88    3
 Li    1.05  633     0.89  636
 Le    1.20  635     1.00  638
 LW    0.96   60     0.86   61
 ie    1.41  645     1.04  646
 iW    1.07   60     0.97   61
 We    1.16   52     1.05   53


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
    pc_phases abcdef 46.8 -280.4 -273.2  -69.2 -110.4 -333.2

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn -139.7 -145.2 -277.3 -171.2 -38.4 -35.8 -67.3 -234.4

* ref Yg/e --> just for book keeping

   if station g and f_group S
   pc_phases abcdef  -4.9  10.8   3.4   -12.1  4.7  1.5
   if station g and f_group X
   pc_phases ghijklmn -3.0 -11.7 -0.5 23.5 16.2 0.9 -7.1 -7.5

   if station i and f_group S
   pc_phases abcdef -0.4   7.4   2.2   -14.6 6.1 2.9
   if station i and f_group X
   pc_phases ghijklmn 3.4 -10.2 -0.3 2.1 5.6 3.4 0.1 -3.6

   if station L and f_group S
   pc_phases abcdef 0.7   5.8    -1.4   -13.9   7.7  6.4 
   if station L and f_group X
   pc_phases ghijklmn 2.9 -5.9 -2.1 -2.3 12.9 -4.4 4.7 -3.7

Regards,
 Jamie 

+END
