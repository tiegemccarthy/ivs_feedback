+HEADER 
CORREL   CRTN 
DATABASE 14NOV30XA 
SESSNAME AUST66 
OBSTIME  2014/11/30 2014/11/30 
UTSTART  0005 
DURATION 1 
DOY      334 
CORRTIME 2015/03/02 2015/03/03 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            91%             - 
   0              2%             - 
 4-1,A-H,N        8%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART12 (Hb/L): Small clock breaks noted at 1150 and 1617. 

 KATH12M  (Ke/i): No useful data between 0230 and 1220 due to power
  failure and a series of clock breaks. Data between 0900 and 1200 has a
  large and varying single-band delay offset. 

 WARK12M  (Ww/W): Manual pcal. 

 YARRA12M (Yg/e): No data 0912-0944.

+DROP_CHANNELS
 Hb 
 Ke 
 Ww 
 Yg 

+MANUAL PCAL Ww Ke Ke Hb Yg 

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
  KE           -9.85        -0.00   56990.0000000
  YG          -11.10         0.00   56990.0000000
  WW            1.77         0.00   56990.0000000


+QCODES

Qcod  0 1 2 3 4  5  6   7   8    9 A B C D E F  G H   N -  Tot 
------------------------------------------------------------------
Li:X  5 1 0 0 1  3  5  16  28  552 0 0 0 0 0 0  8 0  90 0  709 
Li:S 14 0 0 0 1  0  0   8  47  548 0 0 0 0 0 0  1 0  90 0  709 
LW:X  8 0 0 0 0  1  0  10  48  680 0 0 0 0 0 0  0 0   2 0  749 
LW:S 11 0 0 0 0  0  1  11 187  514 0 0 0 0 0 0 23 0   2 0  749 
Le:X  9 0 0 0 0  1  1   3  19  695 0 0 0 0 0 0  0 0   2 0  730 
Le:S 13 0 0 0 0  0  1  20 166  503 0 0 0 0 0 0 25 0   2 0  730 
iW:X 18 0 1 0 3  3  5  31  46  505 0 0 0 0 0 0  6 0  94 0  712 
iW:S 19 0 0 0 0  0  0   3  13  582 0 0 0 0 0 0  1 0  94 0  712 
ie:X 11 0 1 1 3 12 10  27  37  551 0 0 0 0 0 0 10 0  94 0  757 
ie:S 22 0 0 0 1  2  1   3  47  586 0 0 0 0 0 0  1 0  94 0  757 
We:X 11 0 0 0 0  1  1  14  50  620 0 0 0 0 0 0  0 0   3 0  700 
We:S 17 0 0 0 0  0  0   3 107  570 0 0 0 0 0 0  0 0   3 0  700 
------------------------------------------------------------------
Tot 158 1 2 1 9 23 25 149 795 6906 0 0 0 0 0 0 75 0 570 0 8714 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1306

 ...by baseline, over all sources:

 bl     X     n       S     n

 Li    0.90  614     0.82  604
 LW    1.44  738     1.06  736
 Le    1.07  719     0.95  714
 iW    1.30  600     0.94  597
 ie    1.15  652     0.90  638
 We    1.48  685     1.07  679


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
    pc_phases abcdef -127.4  168.6   89.5  141.8  274.2  236.6

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn -159.3  196.1  301.2  203.8 16.1 293.6 81.0 253.3

* ref Yg/e --> just for book keeping

  if station i and f_group S and scan < 334-090000
    pc_mode manual
    pc_phases abcdef -35.8  103.5  243.2   87.6  121.6  282.2

  if station i and f_group X and scan < 334-090000
    pc_mode manual
 pc_phases ghijklmn -102.7  188.8  137.3 126.1 335.7 64.0 59.8 182.6

  if station i and f_group S and scan > 334-090000 
    pc_mode manual
    pc_phases abcdef 149.8   54.9  327.2  354.8   28.1  301.4 

  if station i and f_group X and scan > 334-090000
    pc_mode manual
 pc_phases ghijklmn  177.1 -82.8 -79.8 -143.1 -218.3 -99.9 -86.2 -217.8



  if station L and f_group S
    pc_mode manual
    pc_phases abcdef 165.9   65.5  321.7  336.4   48.7  303.6 

  if station L and f_group X
    pc_mode manual
 pc_phases ghijklmn -14.6  341.3   98.0  357.9 179.7 132.6 248.3 52.5

  if station e and f_group S
    pc_mode manual
    pc_phases abcdef  0 0 0 0 0  0

  if station e and f_group X
    pc_mode manual
 pc_phases ghijklmn 0 0 0  0  0  0 0 0

Regards,
 Jamie 

+END
