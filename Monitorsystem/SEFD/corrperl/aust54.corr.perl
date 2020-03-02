+HEADER 
CORREL   CRTN 
DATABASE 14OCT18XA 
SESSNAME AUST54 
OBSTIME  2014/10/18 2014/10/18 
UTSTART  0000 
DURATION 1 
DOY      291 
CORRTIME 2014/01/30 2014/01/31 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            97%             - 
   0              -              - 
 4-1,A-H,N        3%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART12 (Hb/L): Ok. 

 KATH12M  (Ke/i): Ok. 

 WARK12M  (Ww/W): Manual pcal. 

 YARRA12M (Yg/e): Small clock breaks noted at 21:40, 2300.

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
  KE           -9.87        -0.00   56948.0000000
  YG          -10.95         0.00   56948.0000000
  WW           20.26         0.00   56948.0000000


+QCODES

Qcod 0 1 2 3 4 5 6  7   8    9 A B C D E F  G H   N -  Tot 
--------------------------------------------------------------
Li:X 4 0 0 0 0 0 1  1  21  883 0 0 0 0 0 0  1 0  28 0  939 
Li:S 2 0 0 0 0 1 0  7 120  776 0 0 0 0 0 0  5 0  28 0  939 
Le:X 4 0 0 0 0 0 0  3  30  872 0 0 0 0 0 0  1 0  28 0  938 
Le:S 5 0 0 1 0 0 0 26 240  615 0 0 0 0 0 0 23 0  28 0  938 
LW:X 4 0 0 0 0 0 0  0   1   62 0 0 0 0 0 0  0 0   5 0   72 
LW:S 0 0 0 0 0 0 2  7  43   10 0 0 0 0 0 0  5 0   5 0   72 
ie:X 0 0 0 0 0 2 0  2  20  915 0 0 0 0 0 0  0 0   0 0  939 
ie:S 0 0 0 1 0 0 0  0  13  924 0 0 0 0 0 0  1 0   0 0  939 
iW:X 2 0 0 0 0 0 0  0   1   66 0 0 0 0 0 0  0 0   3 0   72 
iW:S 0 0 0 0 0 0 0  1   3   65 0 0 0 0 0 0  0 0   3 0   72 
eW:X 5 0 0 0 0 0 0  0   0   63 0 0 0 0 0 0  0 0   3 0   71 
eW:S 0 0 0 0 0 0 0  1   6   61 0 0 0 0 0 0  0 0   3 0   71 
--------------------------------------------------------------
Tot 26 0 0 2 0 3 3 48 498 5312 0 0 0 0 0 0 36 0 134 0 6062 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1294

 ...by baseline, over all sources:

 bl     X     n       S     n

 Li    1.16  907     0.97  909
 Le    1.25  906     1.06  905
 LW    1.04   63     1.25   67
 ie    1.41  939     1.03  938
 iW    1.12   67     1.15   69
 We    1.22   63     1.40   68


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
    pc_phases abcdef -130.7   -69.7    -5.2   -97.2   -17.5  -218.5

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn -164.1 -254.0 -282.9 -235.5 -329.2 -282.2 -90.6 -309.9

* ref Ke/i --> just for book keeping

   if station L and f_group S
   pc_phases abcdef 1.4   0.3    -2.3   1.0    -2.4   2.2
   if station L and f_group X
   pc_phases ghijklmn  -1.4  5.5  -1.0 -3.6  5.5  -8.3  1.8 1.8

  if station e and f_group S
   pc_phases abcdef -2.0   -8.0   -0.2   17.6   -5.0   -5.4
   if station e and f_group X
   pc_phases ghijklmn -4.3   10.8    0.4   -1.1   -5.1   -4.3   -0.8    3.8

Regards,
 Jamie 

+END
