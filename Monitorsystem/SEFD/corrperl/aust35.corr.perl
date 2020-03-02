+HEADER 
CORREL   CRTN 
DATABASE 14JUL20XA 
SESSNAME AUST35 
UTSTART  0000 
DURATION 24 
DOY      201-202 
CORRTIME  2014/09/29  2014/09/30 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            80%             - 
   0              1%             - 
 4-1,A-H,N       19%             - 
 Removed          -              - 

+CORRELATOR_NOTES

Two small clock breaks noted for Hb and Yg. Manual pcal was estimated and
applied to check if this was an artefact of the pcal with no apparent 
difference. Manual pcal was retained as the onlt station free of apparent 
clock breaks was Ke, which has a dropped channel. 

+STATION_NOTES

 HOBART12 (Hb/L): Manual pcal. Small clock break (< 1ns) apparent at 0348. 

 KATH12M  (Ke/i): Manual pcal applied.

 WARK12M  (Ww/W): Scheduled as tag-along, unable to observe.

 YARRA12M (Yg/e): Small clock break (<1 ns) apparent at 2157.

+DROP_CHANNELS
 Hb 
 Ke      XR5U  
 Ww 
 Yg 

+MANUAL PCAL Ke Hb 

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
  KE           -5.90         0.00   56857.0000000
  YG           -7.89         0.00   56850.0000000


+QCODES

Qcod 0 1 2 3 4 5 6  7   8    9 A B C D E F  G H    N -  Tot 
---------------------------------------------------------------
Li:X 8 0 0 0 0 0 0  0 122  819 0 0 0 0 0 0  0 0    1 0  950 
Li:S10 0 0 0 0 0 0 11 130  794 0 0 0 0 0 0  4 0    1 0  950 
Le:X12 0 0 0 0 0 0  5 122  810 0 0 0 0 0 0  0 0    1 0  950 
Le:S 6 0 1 0 0 0 2 14 200  709 0 0 0 0 0 0 17 0    1 0  950 
LW:X 0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0  0 0  221 0  221 
LW:S 0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0  0 0  221 0  221 
ie:X 1 0 0 0 0 0 0  1   8  941 0 0 0 0 0 0  0 0    1 0  952 
ie:S 1 0 0 2 1 0 1  0  15  929 0 0 0 0 0 0  2 0    1 0  952 
iW:X 0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0  0 0  221 0  221 
iW:S 0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0  0 0  221 0  221 
eW:X 0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0  0 0  221 0  221 
eW:S 0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0  0 0  221 0  221 
---------------------------------------------------------------
Tot 38 0 1 2 1 0 3 31 597 5002 0 0 0 0 0 0 23 0 1332 0 7030 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1275

 ...by baseline, over all sources:

 bl     X     n       S     n

 Li    0.93  941     0.86  938
 Le    0.91  933     0.93  941
 LW    0.00    0     0.00    0
 ie    1.14  950     1.23  950
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

  if station i and f_group X
    freqs g h i j l m n
* Channel XR5U missing - DBBC problem.

  if station i and f_group X
    pc_mode manual
    pc_phases ghijlmn 58.3   46.5 -297.3 -268.5 -281.7  -97.4  -86.1

  if station i and f_group S
    pc_mode manual
    pc_phases abcdef -63.5  135.0  316.6  237.2   62.7  322.3

  if station L and f_group X
    pc_mode manual
    pc_phases ghijklmn 95.1  342.2  166.3  328.8  215.2 114.4 165.7 303.2

  if station L and f_group S
    pc_mode manual
    pc_phases abcdef -57.0  188.5   69.9   75.2  116.0   73.5


* ref Yg/e --> just for book keeping

*   if station i and f_group S
*   pc_phases abcdef -2.1    1.3    2.5   -1.8    1.4   -1.7
*   if station i and f_group X
*   pc_phases ghijlmn 8.6  -22.7   -5.8   18.0   51.6  -48.5   -2.7

*   if station e and f_group S
*   pc_phases abcdef   -2.4   -6.5    2.9   13.5   -4.8   -8.0
*   if station e and f_group X
*   pc_phases ghijklmn 5.0  -14.7   -6.4   11.4   12.5 37.7 -57.1 2.8

Regards,
 Jamie 

+END
