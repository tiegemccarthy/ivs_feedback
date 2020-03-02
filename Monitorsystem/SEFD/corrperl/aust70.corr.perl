+HEADER 
CORREL   CRTN 
DATABASE 14DEC14XA 
SESSNAME AUST70 
OBSTIME  2014/12/14 2014/12/14 
UTSTART  0000 
DURATION 24 
DOY      348 
CORRTIME 2015/03/08 2015/03/09 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            97%             - 
   0              1%             - 
 4-1,A-H,N        2%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART12 (Hb/L): Manual pcal. 

 KATH12M  (Ke/i): No data 1622-1703 due to DBBC error. Large clock break
  at this time. Another small clock break noted at 1947.

 WARK12M  (Ww/W): Manual pcal. 

 YARRA12M (Yg/e): Manual pcal. 

+DROP_CHANNELS
 Hb 
 Ke 
 Ww 
 Yg 

+MANUAL PCAL Yg Hb Ke Ke Ke Ww 

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
  KE           -9.90        -0.00   57004.0000000
  YG          -11.28         0.00   57004.0000000
  WW            2.09         0.00   57004.0000000


+QCODES

Qcod 0 1 2 3 4 5 6  7   8    9 A B C D E F  G H  N -  Tot 
-------------------------------------------------------------
Li:X16 0 0 0 0 0 0  3  30  864 0 0 0 0 0 0  0 0 20 0  933 
Li:S15 0 0 0 0 0 1 18 153  715 0 0 0 0 0 0 11 0 20 0  933 
Le:X 5 0 0 0 1 0 1  6  18  900 0 0 0 0 0 0  0 0  1 0  932 
Le:S 4 0 0 0 1 0 2 16 239  632 0 0 0 0 0 0 37 0  1 0  932 
LW:X 0 0 0 0 0 0 0  0   0  129 0 0 0 0 0 0  0 0  0 0  129 
LW:S 0 0 0 0 0 0 0  5  80   34 0 0 0 0 0 0 10 0  0 0  129 
ie:X11 0 0 0 0 0 0  2  27  872 0 0 0 0 0 0  0 0 19 0  931 
ie:S10 0 0 0 0 0 0  0  18  884 0 0 0 0 0 0  0 0 19 0  931 
iW:X 4 0 0 0 0 0 0  0   3  118 0 0 0 0 0 0  0 0  4 0  129 
iW:S 1 0 0 0 0 0 0  0   2  122 0 0 0 0 0 0  0 0  4 0  129 
eW:X 1 0 0 0 0 0 0  0   1  127 0 0 0 0 0 0  0 0  0 0  129 
eW:S 0 0 0 0 0 0 0  0   5  124 0 0 0 0 0 0  0 0  0 0  129 
-------------------------------------------------------------
Tot 67 0 0 0 2 0 4 50 576 5521 0 0 0 0 0 0 58 0 88 0 6366 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1310

 ...by baseline, over all sources:

 bl     X     n       S     n

 Li    1.15  897     0.97  898
 Le    1.26  926     1.01  926
 LW    1.25  129     1.06  129
 ie    1.41  901     0.99  902
 iW    1.29  121     1.02  124
 We    1.36  128     1.11  129


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

  if station e and f_group S
    pc_mode manual
    pc_phases abcdef 0 0 0 0 0 0 

  if station e and f_group X
    pc_mode manual
 pc_phases ghijklmn 0 0 0 0 0 0 0 0

* ref Yg/e --> just for book keeping

  if station L and f_group S
    pc_mode manual
    pc_phases abcdef 46.0  116.5  181.8  273.9  232.3  310.6

  if station L and f_group X
    pc_mode manual
 pc_phases ghijklmn 129.7  182.5  269.4 21.1 191.9 188.1 135.1 133.0

  if station i and f_group S and scan < 348-170000
    pc_mode manual
    pc_phases abcdef 69.2  111.0  151.4  206.4   63.4   90.4

  if station i and f_group X and scan < 348-170000
    pc_mode manual
 pc_phases ghijklmn 115.3  151.6  214.9  301.1  192.2 218.2 176.8 184.9

  if station i and f_group S and scan 348-170000 to 348-195000
    pc_mode manual
    pc_phases abcdef -19.5  158.5  326.5  198.7    6.8  164.1

  if station i and f_group X and scan 348-170000 to 348-195000
    pc_mode manual
 pc_phases ghijklmn -147.9  103.2  -58.5 -269.9  -98.2 -283.5 -69.3 2.9

  if station i and f_group S and scan > 348-195000
    pc_mode manual
    pc_phases abcdef -34.2   42.5  109.6  207.7  268.1   16.2

  if station i and f_group X and scan > 348-195000
    pc_mode manual
 pc_phases ghijklmn 173.1 91.0 -32.7 -186.0 -298.0 -81.9 -204.6 -142.3 


  if station W and f_group S
    pc_mode manual
 pc_phases abcdef 145.8  225.2  302.9   47.1   40.6  160.2

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn 161.1  -60.8  256.4   38.6  349.8  238.1   21.0   68.5


Regards,
 Jamie 

+END
