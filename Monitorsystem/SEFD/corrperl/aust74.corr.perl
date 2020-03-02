+HEADER 
CORREL   CRTN 
DATABASE 14DEC21XA
SESSNAME AUST74 
UTSTART  0000 
DURATION 24 
DOY      355-356 
CORRTIME 2015/03/23 2015/03/24 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            98%             - 
   0              -              - 
 4-1,A-H,N        2%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART12 (Hb/L): Manual pcal.

 KATH12M  (Ke/i): Manual pcal. Clock break at 1610.

 YARRA12M (Yg/e): Manual pcal. 

 WARK12M  (Ww/W): Manual pcal. 

+DROP_CHANNELS
 Hb 
 Ke 
 Yg 
 Ww 

+MANUAL PCAL Ww Yg Ke Ke Hb 

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
  YG          -11.36         0.00   57012.0000000
  WW            2.71         0.00   57012.0000000


+QCODES

Qcod 0 1 2 3 4 5 6   7   8    9 A B C D E F  G H  N -  Tot 
--------------------------------------------------------------
Li:X10 0 0 0 0 0 1  11 269  625 0 0 0 0 0 0  0 0 11 0  927 
Li:S 3 0 0 0 0 0 1  18 137  753 0 0 0 0 0 0  4 0 11 0  927 
Le:X 4 0 0 0 0 0 2   2  62  858 0 0 0 0 0 0  0 0  0 0  928 
Le:S 5 0 0 1 0 0 2  38 271  551 0 0 0 0 0 0 60 0  0 0  928 
LW:X 1 0 0 0 0 0 0   0   9  119 0 0 0 0 0 0  0 0  0 0  129 
LW:S 0 0 0 0 0 0 1  21  52   46 0 0 0 0 0 0  9 0  0 0  129 
ie:X 0 0 0 0 0 0 1   2  30  886 0 0 0 0 0 0  0 0 11 0  930 
ie:S 1 0 0 0 2 0 0   5  49  861 0 0 0 0 0 0  1 0 11 0  930 
iW:X 5 0 0 0 0 0 0   0   0  122 0 0 0 0 0 0  0 0  2 0  129 
iW:S 0 0 0 0 0 0 0   3  16  108 0 0 0 0 0 0  0 0  2 0  129 
eW:X 2 0 0 0 0 0 0   0   0  127 0 0 0 0 0 0  0 0  0 0  129 
eW:S 0 0 0 0 0 0 0   2  19  108 0 0 0 0 0 0  0 0  0 0  129 
--------------------------------------------------------------
Tot 31 0 0 1 2 0 8 102 914 5164 0 0 0 0 0 0 74 0 48 0 6344 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1314

 ...by baseline, over all sources:

 bl     X     n       S     n

 Li    1.11  906     0.94  912
 Le    1.23  924     1.05  923
 LW    1.26  128     1.03  129
 ie    1.34  919     1.03  918
 iW    1.28  122     1.00  127
 We    1.40  127     1.15  129


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
    pc_phases abcdef -17.1 -123.1 -241.7  -56.2 -158.4 -243.9

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn 89.0  -41.3  -31.2 -238.1 -357.4 -241.8 -163.9 -252.4

  if station e and f_group S
    pc_mode manual
    pc_phases abcdef 0 0 0 0 0 0

  if station e and f_group X
    pc_mode manual
 pc_phases ghijklmn 0 0 0 0 0 0 0 0

  if station i and f_group S and scan < 355-161200
    pc_mode manual
    pc_phases abcdef 129.8   21.7  -82.7 -255.4  -77.2 -170.9

  if station i and f_group X and scan < 355-161200
    pc_mode manual
 pc_phases ghijklmn -105.8 -355.3 -276.3 -243.3 -71.7 -138.8 -221.4 -354.9

  if station i and f_group S and scan > 355-161200
    pc_mode manual
    pc_phases abcdef -3.0   88.3  161.8  267.1  261.5  310.6

  if station i and f_group X and scan > 355-161200
    pc_mode manual
 pc_phases ghijklmn -31.9 -126.9  -40.6 -140.1 -164.4  -71.6 -254.4 -308.8

  if station L and f_group S
    pc_mode manual
    pc_phases abcdef -19.3   -1.5   14.0   31.1  221.5  242.3

  if station L and f_group X
    pc_mode manual
 pc_phases ghijklmn 95.3 -283.7  -48.7 -278.2 -260.6 -209.1  -50.5 -114.6

* ref Yg/e --> just for book keeping


Regards,
 Jamie 

+END
