+HEADER 
CORREL   CRTN 
DATABASE 14JUL16XA
SESSNAME AUST33 
UTSTART  0700 
DURATION 24 
DOY      197-198 
CORRTIME 2014/10/01 2014/10/02 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            48%             - 
   0              5%             - 
 4-1,A-H,N       48%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART12 (Hb/L): Strong RFI in SR5U and SR6U. Weak channel threshold 
  reduced to 0.3 to avoid excessiver data loss. 

 KATH12M  (Ke/i): Clock breaks at 197/1235 and 197/1948 caused by integer
  second offsets in the recorder. No detection in channel XR5U due to DBBC
  problem.

 WARK12M  (Ww/W): No valid data recorded - mark5 error. 

 YARRA12M (Yg/e): Ok. 

+DROP_CHANNELS
 Hb 
 Ke      XR5U  
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
  HB          -10.19         0.00   56636.7588889
  YG           -7.89         0.00   56850.0000000


+QCODES

Qcod 0 1 2 3 4 5 6  7   8   9 A B C D E F G H   N -  Tot 
------------------------------------------------------------
Li:X15 0 0 0 0 0 0  6  20 114 0 0 0 0 0 0 0 0   5 0  160 
Li:S18 0 0 0 0 1 0  0  15 121 0 0 0 0 0 0 0 0   5 0  160 
Le:X10 0 0 0 0 1 2  4  26 139 0 0 0 0 0 0 0 0   6 0  188 
Le:S14 0 0 0 0 1 1  1  51 114 0 0 0 0 0 0 0 0   6 0  188 
LW:X 0 0 0 0 0 0 0  0   0   0 0 0 0 0 0 0 0 0 178 0  178 
LW:S 0 0 0 0 0 0 0  0   0   0 0 0 0 0 0 0 0 0 178 0  178 
ie:X13 0 0 0 0 0 0  2  10 160 0 0 0 0 0 0 0 0   8 0  193 
ie:S22 0 0 0 0 1 0  0   3 159 0 0 0 0 0 0 0 0   8 0  193 
iW:X 0 0 0 0 0 0 0  0   0   0 0 0 0 0 0 0 0 0 130 0  130 
iW:S 0 0 0 0 0 0 0  0   0   0 0 0 0 0 0 0 0 0 130 0  130 
eW:X 0 0 0 0 0 0 0  0   0   0 0 0 0 0 0 0 0 0 148 0  148 
eW:S 0 0 0 0 0 0 0  0   0   0 0 0 0 0 0 0 0 0 148 0  148 
------------------------------------------------------------
Tot 92 0 0 0 0 4 3 13 125 807 0 0 0 0 0 0 0 0 950 0 1994 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1273

 ...by baseline, over all sources:

 bl     X     n       S     n

 Li    1.40  140     0.90  137
 LW    0.00    0     0.00    0
 Le    1.43  172     1.13  168
 iW    0.00    0     0.00    0
 ie    1.52  172     1.32  163
 We    0.00    0     0.00    0


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
* Channel XR5U had config error, leading to many G-codes. 

*  if station W and f_group X
*    pc_mode manual
* pc_phases ghijklmn 0 0 0 0 0 0 0 0 

*  if station W and f_group S
*    pc_mode manual
*    pc_phases abcdef 0 0 0 0 0 0 

* ref Hb/L --> just for book keeping

*   if station g and f_group S
*   pc_phases abcdef 
*   if station g and f_group X
*   pc_phases ghijklmn 

   if station i and f_group S
   pc_phases abcdef -4.1    0.3    6.0   -1.9    1.1   -2.6
   if station i and f_group X
   pc_phases ghijlmn 4.2  -19.3   -3.9   15.9   45.2  -56.9  4.3

   if station e and f_group S
   pc_phases abcdef -2.4   -6.9    4.1   13.2   -3.4   -8.1
   if station e and f_group X
   pc_phases ghijklmn 3.9  -14.3   -6.0   11.1   13.1   37.6  -55.2 2.7

Regards,
 Jamie 

+END
