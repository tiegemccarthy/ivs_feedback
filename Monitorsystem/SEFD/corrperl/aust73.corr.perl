+HEADER 
CORREL   CRTN 
DATABASE 14DEC20XA
SESSNAME AUST73 
UTSTART  0000 
DURATION 24 
DOY      354 
CORRTIME 2015/03/23 2015/03/24 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            75%             - 
   0              1%             - 
 4-1,A-H,N       24%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART12 (Hb/L): Manual pcal. Late start - no data before 0520, Small
  clock breaks at 1307 and 1349. 

 KATH12M  (Ke/i): Manual pcal. Late start - no data before 0520.

 YARRA12M (Yg/e): Manual pcal. Late start - no data before 0520.

 WARK12M  (Ww/W): Manual pcal. 

+DROP_CHANNELS
 Hb 
 Ke 
 Yg 
 Ww 

+MANUAL PCAL Ww Ke Hb Yg 

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
  KE           -9.89        -0.00   57008.2916667
  YG          -11.35         0.00   57011.0000000
  WW            2.42         0.00   57008.2916667


+QCODES

Qcod 0 1 2 3 4 5 6  7   8    9 A B C D E F  G H    N -  Tot 
---------------------------------------------------------------
Li:X 7 0 0 0 0 0 0  0  18  696 0 0 0 0 0 0  0 0  212 0  933 
Li:S 8 0 0 0 0 1 4 31  82  592 0 0 0 0 0 0  3 0  212 0  933 
Le:X 8 0 0 0 0 0 0  0  24  689 0 0 0 0 0 0  0 0  213 0  934 
Le:S 2 0 0 0 0 0 2 36 206  452 0 0 0 0 0 0 23 0  213 0  934 
LW:X 1 0 0 0 0 0 0  0   1   88 0 0 0 0 0 0  0 0   34 0  124 
LW:S 0 0 0 0 0 1 1  9  37   39 0 0 0 0 0 0  3 0   34 0  124 
ie:X 6 0 0 0 0 0 0  2  16  696 0 0 0 0 0 0  0 0  215 0  935 
ie:S 5 0 0 0 0 0 0  7  67  641 0 0 0 0 0 0  0 0  215 0  935 
iW:X 3 0 0 0 0 0 0  0  42   45 0 0 0 0 0 0  0 0   34 0  124 
iW:S 0 0 0 0 0 0 0  3   6   81 0 0 0 0 0 0  0 0   34 0  124 
eW:X 2 0 0 0 0 0 0  0   6   81 0 0 0 0 0 0  0 0   35 0  124 
eW:S 0 0 0 0 0 0 1  1  20   67 0 0 0 0 0 0  0 0   35 0  124 
---------------------------------------------------------------
Tot 42 0 0 0 0 2 8 89 525 4167 0 0 0 0 0 0 29 0 1486 0 6348 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1312

 ...by baseline, over all sources:

 bl     X     n       S     n

 Li    1.16  714     0.96  713
 Le    1.28  713     1.04  719
 LW    1.30   89     1.00   90
 ie    1.41  714     1.04  715
 iW    1.23   87     1.03   90
 We    1.35   87     1.09   89


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
    pc_phases abcdef -88.6    8.1   97.1  215.3  223.0  353.3

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn -18.2 -180.0 -141.8 -238.7 -160.9 -226.9 -58.8 -23.8

  if station i and f_group S
    pc_mode manual
    pc_phases abcdef -129.9 -223.0 -334.0 -125.2 -291.1  -33.9

  if station i and f_group X
    pc_mode manual
 pc_phases ghijklmn 171.4 -78.7 -7.5 -342.6 -192.8 -263.0 -354.6 -129.9

  if station L and f_group S
    pc_mode manual
    pc_phases abcdef 19.5   32.1   43.8   61.9  237.9  273.1

  if station L and f_group X
    pc_mode manual
 pc_phases ghijklmn 6.5  304.5 102.2 110.8 316.6 274.9 26.5 318.8

  if station e and f_group S
    pc_mode manual
    pc_phases abcdef 0 0 0 0 0 0

  if station e and f_group X
    pc_mode manual
 pc_phases ghijklmn 0 0 0 0 0 0 0 0

* ref Yg/e --> just for book keeping


Regards,
 Jamie 

+END
