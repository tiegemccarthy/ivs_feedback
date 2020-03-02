+HEADER 
CORREL   CRTN 
DATABASE 14AUG17XA 
SESSNAME AUST42 
OBSTIME  2014/08/17 2014/08/17 
UTSTART  0000 
DURATION 24 
DOY      229 
CORRTIME 2014/10/23 2014/10/24 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            99%             - 
   0              -              - 
 4-1,A-H,N        1%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART12 (Hb/L): Strong RFI in SR5U and SR6U. Many clock breaks apparent
  in the data, usually of a few ns magnitude. Approximate times are 0929,
  1429, 1728 and 2148.

 KATH12M  (Ke/i): Small clock break apparent at 0645. 

 WARK12M  (Ww/W): Manual pcal. 

 YARRA12M (Yg/e): Manual pcal. 

+DROP_CHANNELS
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
  HB          -10.19         0.00   56636.7588889
  KE           -5.84         0.00   56885.0000000
  YG           -7.66         0.00   56885.0000000
  WW           38.75         0.00   56885.0000000


+QCODES

Qcod 0 1 2 3 4 5  6  7   8    9 A B C D E F  G H N -  Tot 
-------------------------------------------------------------
Li:X 1 0 0 0 0 2  0  1   3  661 0 0 0 0 0 0  0 0 0 0  668 
Li:S 2 0 0 0 0 0  1  5 131  520 0 0 0 0 0 0  9 0 0 0  668 
LW:X 2 0 0 0 0 2  1  1   6  680 0 0 0 0 0 0  0 0 0 0  692 
LW:S 2 0 0 0 1 0  1 20 258  378 0 0 0 0 0 0 32 0 0 0  692 
Le:X 3 0 0 0 0 1  0  6  42  635 0 0 0 0 0 0  0 0 0 0  687 
Le:S 1 0 0 0 0 0  1  7 186  483 0 0 0 0 0 0  9 0 0 0  687 
iW:X 3 0 0 0 0 0  1  0   7  647 0 0 0 0 0 0  0 0 0 0  658 
iW:S 2 0 0 0 0 1  1  6  71  577 0 0 0 0 0 0  0 0 0 0  658 
ie:X 0 0 0 0 0 0  3  9  55  648 0 0 0 0 0 0  0 0 0 0  715 
ie:S 0 0 0 0 0 0  0  1  16  698 0 0 0 0 0 0  0 0 0 0  715 
We:X 1 0 0 0 0 0  1  3  59  581 0 0 0 0 0 0  0 0 0 0  645 
We:S10 0 0 0 0 0  1 11 103  520 0 0 0 0 0 0  0 0 0 0  645 
-------------------------------------------------------------
Tot 27 0 0 0 1 6 11 70 937 7028 0 0 0 0 0 0 50 0 0 0 8130 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1282

 ...by baseline, over all sources:

 bl     X     n       S     n

 Li    1.26  667     0.87  665
 LW    1.75  690     0.98  690
 Le    1.29  684     0.94  686
 iW    1.42  655     1.08  656
 ie    1.28  715     1.18  715
 We    1.48  643     1.18  635


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
    pc_phases abcdef 4.2  -200.7   -57.7   -13.5  -256.0  -358.8

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn 150.9 241.4 117.1 135.4  98.5 325.9 227.0 259.9

  if station e and f_group S
    pc_mode manual
    pc_phases abcdef -142.5  -224.0  -305.2   -38.5  -237.4  -261.5

  if station e and f_group X
    pc_mode manual
 pc_phases ghijklmn 12.3 -100.0 -128.3 -76.8 -136.8 -258.9 -26.5 -208.6

* ref Hb/L --> just for book keeping

   if station i and f_group S
   pc_phases abcdef -1.3    0.7    2.6   -1.9    1.5   -2.0
   if station i and f_group X
   pc_phases ghijklmn -1.7   -2.3 4.2 5.7   -4.4    4.2   -7.3    1.6


Regards,
 Jamie 

+END
