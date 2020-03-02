+HEADER 
CORREL   CRTN 
DATABASE 14JUN11XA 
SESSNAME AUST27 
UTSTART  1800 
DURATION 24 
DOY      162-163 
CORRTIME 2014/10/22 2014/10/23 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            42%             - 
   0              5%             - 
 4-1,A-H,N       53%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART12 (Hb/L): Strong RFI in SR5U and SR6U. Small clock break apparent
  at 0519.

 KATH12M  (Ke/i): Manual phase cal applied. Clock break (integer second)
  at 1418. 

 WARK12M  (Ww/W): Manual phase cal. 

 YARRA12M (Yg/e): All data lost due to module failure. 

+DROP_CHANNELS
 Hb 
 Ke 
 Ww 
 Yg 

+MANUAL PCAL Ww Ke 

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
  WW           14.23         0.00   56819.7500000


+QCODES

Qcod 0 1 2 3 4 5 6  7   8   9 A B C D E F G H    N -  Tot 
-------------------------------------------------------------
Li:X 7 0 0 0 0 0 0  3  29 128 0 0 0 0 0 0 0 0    0 0  167 
Li:S14 0 0 0 0 0 0  1  25 126 0 0 0 0 0 0 1 0    0 0  167 
LW:X10 0 0 0 0 0 0  0  20 152 0 0 0 0 0 0 0 0    1 0  183 
LW:S17 0 0 0 1 0 0  3  24 136 0 0 0 0 0 0 1 0    1 0  183 
Le:X 0 0 0 0 0 0 0  0   0   0 0 0 0 0 0 0 0 0  192 0  192 
Le:S 0 0 0 0 0 0 0  0   0   0 0 0 0 0 0 0 0 0  192 0  192 
iW:X18 0 0 0 0 0 0  2   8 107 0 0 0 0 0 0 0 0    0 0  135 
iW:S32 0 0 0 0 0 0  1   4  97 0 0 0 0 0 0 1 0    0 0  135 
ie:X 0 0 0 0 0 0 0  0   0   0 0 0 0 0 0 0 0 0  196 0  196 
ie:S 0 0 0 0 0 0 0  0   0   0 0 0 0 0 0 0 0 0  196 0  196 
We:X 0 0 0 0 0 0 0  0   0   0 0 0 0 0 0 0 0 0  151 0  151 
We:S 0 0 0 0 0 0 0  0   0   0 0 0 0 0 0 0 0 0  151 0  151 
-------------------------------------------------------------
Tot 98 0 0 0 1 0 0 10 110 746 0 0 0 0 0 0 3 0 1080 0 2048 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1267

 ...by baseline, over all sources:

 bl     X     n       S     n

 Li    1.53  160     0.95  153
 LW    1.40  172     0.67  165
 Le    0.00    0     0.00    0
 iW    0.96  117     0.66  102
 ie    0.00    0     0.00    0
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

  if station W and f_group S
    pc_mode manual
    pc_phases abcdef 33.1   -70.3  -183.9  -329.9  -320.1  -294.2

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn -72.8 -160.6 -243.2 -248.1 -45.0 -351.5 -158.5 -53.5

  if station i and f_group S
    pc_mode manual
    pc_phases abcdef -175.6  17.5 212.3 141.2 81.3 24.1

  if station i and f_group X
    pc_mode manual
 pc_phases ghijklmn -80.0 113.8 146.4 47.0 101.3 323.0 323.3 71.4

* ref Hb/L --> just for book keeping


Regards,
 Jamie 

+END
