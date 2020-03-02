+HEADER 
CORREL   CRTN 
DATABASE 14DEC17XA
SESSNAME AUST72 
UTSTART  0700 
DURATION 24 
DOY      351-352 
CORRTIME 2015/03/17 2015/03/18 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            88%             - 
   0              2%             - 
 4-1,A-H,N       10%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART12 (Hb/L): Manual pcal. Small clock break noted at 1217.

 KATH12M  (Ke/i): Manual pcal. No data before 1010 - DBBC errors. Several
  large clock breaks noted at 0034, 0324, 0334 and 0549. Problems linked
  to power interruptions. 

 WARK12M  (Ww/W): Manual pcal. Late start - missed first 2.5 hours.

 YARRA12M (Yg/e): Manual pcal. 

+DROP_CHANNELS
 Hb 
 Ke 
 Ww 
 Yg 

+MANUAL PCAL Ww Hb Ke Yg 

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
  YG          -11.32         0.00   57008.2916667
  WW            2.42         0.00   57008.2916667


+QCODES

Qcod 0 1 2 3 4 5  6  7   8    9 A B C D E F  G H   N -  Tot 
---------------------------------------------------------------
iW:X 2 0 0 0 1 0  0  9  17   94 0 0 0 0 0 0  0 0  19 0  142 
iW:S11 0 0 0 0 0  0  0   2  110 0 0 0 0 0 0  0 0  19 0  142 
ie:X 0 0 0 0 0 0  1  9  29  140 0 0 0 0 0 0  2 0  24 0  205 
ie:S 1 0 0 0 0 0  0  1   8  171 0 0 0 0 0 0  0 0  24 0  205 
iL:X 1 0 0 0 0 0  2  4  25  104 0 0 0 0 0 0  1 0  17 0  154 
iL:S 5 0 0 0 0 0  2  3  20  106 0 0 0 0 0 0  1 0  17 0  154 
We:X 2 0 0 0 0 0  0  3  17  113 0 0 0 0 0 0  0 0  17 0  152 
We:S11 0 0 0 0 0  0  0   3  121 0 0 0 0 0 0  0 0  17 0  152 
WL:X 1 0 0 0 0 0  1 10  33  119 0 0 0 0 0 0  1 0  19 0  184 
WL:S 1 0 0 0 0 0  0  8  35  119 0 0 0 0 0 0  2 0  19 0  184 
eL:X 3 0 0 0 0 0  2  6  31  143 0 0 0 0 0 0  0 0   0 0  185 
eL:S 6 0 0 0 0 1  3  8  39  122 0 0 0 0 0 0  6 0   0 0  185 
---------------------------------------------------------------
Tot 44 0 0 0 1 1 11 61 259 1462 0 0 0 0 0 0 13 0 192 0 2044 

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

 Li    1.20  136     1.05  132
 LW    1.80  164     1.40  164
 Le    1.40  182     1.13  179
 iW    1.38  121     1.05  112
 ie    1.48  181     1.19  180
 We    1.64  133     1.07  124


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
    pc_phases abcdef 141.2   97.5   39.8  -51.9  -34.9  -44.4

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn -102.6 -187.7 -32.1 -12.6 -130.3 -154.8 -331.4 -12.8

  if station L and f_group S
    pc_mode manual
    pc_phases abcdef 65.3   97.1  139.2  179.0   65.1  104.7

  if station L and f_group X
    pc_mode manual
 pc_phases ghijklmn 48 -343.6 -114.4 -327.4 -256.6 -164.3 -343.7 -24

  if station i and f_group S
    pc_mode manual
    pc_phases abcdef -9.1  -26.9  -55.5 -100.9  -77.0  -93.1

  if station i and f_group X
    pc_mode manual
 pc_phases ghijklmn -157.8 -230.6 -105.6 -141.4 -27.7 -200.3 -332.2 -20.9

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
