+HEADER 
CORREL   CRTN 
DATABASE 14NOV02XA 
SESSNAME AUST57 
OBSTIME  2014/11/02 2014/11/02 
UTSTART  0000 
DURATION 24 
DOY      306 
CORRTIME 2015/02/02 2015/02/03 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            99%             - 
   0              1%             - 
 4-1,A-H,N        1%             - 
 Removed          -              - 

+CORRELATOR_NOTES
Manual pcal used for all stations after some problems with pcal. 

+STATION_NOTES

 HOBART12 (Hb/L): Manual pcal. Small clock breaks noted at 2145 and 2210

 KATH12M  (Ke/i): Ok. 

 WARK12M  (Ww/W): Manual pcal.

 YARRA12M (Yg/e): Manual pcal. 

+DROP_CHANNELS
 Hb 
 Ke 
 Ww 
 Yg 

+MANUAL PCAL Ww Hb Yg 

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
  KE          -10.23        -0.00   56962.0000000
  YG          -11.33         0.00   56962.0000000
  WW           21.04         0.00   56962.0000000


+QCODES

Qcod 0 1 2 3 4 5 6   7   8    9 A B C D E F  G H  N -  Tot 
--------------------------------------------------------------
Li:X 3 0 0 0 0 0 2   5  33  666 0 0 0 0 0 0  0 0  2 0  711 
Li:S 5 0 0 0 0 0 1  17  78  607 0 0 0 0 0 0  1 0  2 0  711 
LW:X 3 0 0 0 0 1 2  11  62  652 0 0 0 0 0 0  0 0  2 0  733 
LW:S 4 0 0 0 0 1 0   9 238  469 0 0 0 0 0 0 10 0  2 0  733 
Le:X 6 0 0 0 0 0 1   1  36  691 0 0 0 0 0 0  0 0  2 0  737 
Le:S 5 0 0 0 1 0 0  22 112  590 0 0 0 0 0 0  5 0  2 0  737 
iW:X 4 0 0 0 0 1 0  10  45  638 0 0 0 0 0 0  0 0  2 0  700 
iW:S 7 0 0 0 1 0 0   7  95  588 0 0 0 0 0 0  0 0  2 0  700 
ie:X 0 0 0 0 1 0 1   5  52  699 0 0 0 0 0 0  0 0  2 0  760 
ie:S 2 0 0 0 1 0 0   0   7  747 0 0 0 0 0 0  1 0  2 0  760 
We:X 4 0 0 1 0 0 0  10  37  634 0 0 0 0 0 0  1 0  2 0  689 
We:S11 0 0 2 0 0 0   8  60  605 0 0 0 0 0 0  1 0  2 0  689 
--------------------------------------------------------------
Tot 54 0 0 3 4 3 7 105 855 7586 0 0 0 0 0 0 19 0 24 0 8660 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1297

 ...by baseline, over all sources:

 bl     X     n       S     n

 Li    1.14  706     0.90  698
 LW    1.58  727     1.15  727
 Le    1.15  728     0.94  727
 iW    1.37  693     0.98  688
 ie    1.23  758     0.89  754
 We    1.40  683     1.02  675


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
    pc_phases abcdef -72.8   -66.6   -61.6  -244.2  -326.7  -232.0

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn -38.4 74.5 46.5 234.7 63.7 42.9 9.9 71.9

* ref Ke/i --> just for book keeping

  if station L and f_group S
    pc_mode manual
    pc_phases abcdef 16.9 -285.0 -231.1 -330.7 -314.3 -191.3

  if station L and f_group X
    pc_mode manual
 pc_phases ghijklmn 145.3  358.7  210.6 59.8 351.7 202.5 226.8 322.7

  if station e and f_group S
    pc_mode manual
    pc_phases abcdef 29.8 267.0 156.2 173.0 343.0 299.3

  if station e and f_group X
    pc_mode manual
 pc_phases ghijklmn -156.6 8.9 113.0 147.6 145.9 284.0 312.1 29.8

Regards,
 Jamie 

+END
