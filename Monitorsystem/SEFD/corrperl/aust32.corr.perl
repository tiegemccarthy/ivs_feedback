+HEADER 
CORREL   CRTN 
DATABASE 14JUL13XA 
SESSNAME AUST32 
UTSTART  0000 
DURATION 24 
DOY      194-195 
CORRTIME 2014/09/20 2014/09/21 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            86%             - 
   0              5%             - 
 4-1,A-H,N        8%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART12 (Hb/L): Strong RFI in SR5U and SR6U.

 HART15M  (Ht/g): Manual phase cal applied. 

 KATH12M  (Ke/i): Channel XR5U dropped - DBBC configuration problem.  

 WARK12M  (Ww/W): Late start and early finish due to drive problems. Valid
  data between 0140 and 1300.

 YARRA12M (Yg/e): Low sensitivity in channels XR5U-X58U. Manual phase cal
  applied.

+DROP_CHANNELS
 Hb 
 Ht 
 Ke      XR5U  
 Ww 
 Yg 

+MANUAL PCAL Ww Yg Ht 

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
  HT           -5.51        -0.00   56850.0000000
  KE           -5.84         0.00   56851.0000000
  YG           -7.89         0.00   56850.0000000
  WW           16.31         0.00   56851.0000000


+QCODES

Qcod  0 1 2 3 4 5 6  7    8    9 A B C D E F  G H   N -  Tot 
----------------------------------------------------------------
gL:X 15 0 0 0 0 0 0  0    2  489 0 0 0 0 0 0  0 0   1 0  507 
gL:S 41 0 0 0 0 0 1  3  126  329 0 0 0 0 0 0  6 0   1 0  507 
gi:X 20 0 0 0 0 0 0  0   18  446 0 0 0 0 0 0  0 0   2 0  486 
gi:S 34 0 0 0 0 0 0  0   13  437 0 0 0 0 0 0  0 0   2 0  486 
ge:X 27 0 0 0 0 0 0  2  200  329 0 0 0 0 0 0  0 0   2 0  560 
ge:S 24 0 0 0 0 0 0  3   28  503 0 0 0 0 0 0  0 0   2 0  560 
gW:X 29 0 0 0 0 0 0  0    0   45 0 0 0 0 0 0  0 0  72 0  146 
gW:S 40 0 0 0 0 0 0  0    2   32 0 0 0 0 0 0  0 0  72 0  146 
Li:X  5 0 0 0 0 0 1  0   14  681 0 0 0 0 0 0  0 0   2 0  703 
Li:S  0 0 0 0 1 1 1  4   97  593 0 0 0 0 0 0  4 0   2 0  703 
Le:X  9 0 0 0 2 0 0  2  358  323 0 0 0 0 0 0  0 0   2 0  696 
Le:S  1 0 0 0 3 0 0 15  186  482 0 0 0 0 0 0  7 0   2 0  696 
LW:X 38 0 0 0 0 0 0  1    0   65 0 0 0 0 0 0  0 0  89 0  193 
LW:S 38 0 0 0 0 0 0  1   30   35 0 0 0 0 0 0  0 0  89 0  193 
ie:X  0 0 0 0 0 1 1  8  448  248 0 0 0 0 0 0  0 0   2 0  708 
ie:S  0 0 0 0 1 1 0  1   24  679 0 0 0 0 0 0  0 0   2 0  708 
iW:X 38 0 0 0 0 0 0  1    2   62 0 0 0 0 0 0  0 0  89 0  192 
iW:S 39 0 0 0 0 0 0  0    0   64 0 0 0 0 0 0  0 0  89 0  192 
eW:X 37 0 1 0 0 0 0  0   47   17 0 0 0 0 0 0  0 0  86 0  188 
eW:S 38 0 0 1 0 0 0  0    0   63 0 0 0 0 0 0  0 0  86 0  188 
----------------------------------------------------------------
Tot 473 0 1 1 7 3 4 41 1595 5922 0 0 0 0 0 0 17 0 694 0 8758 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1272

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.92  490     0.76  458
 gi    0.88  463     0.96  448
 ge    0.69  531     1.10  530
 gW    1.11   45     1.01   34
 Li    1.28  696     0.93  701
 Le    1.01  685     1.08  693
 LW    1.59   66     0.97   65
 ie    1.00  706     1.37  706
 iW    1.28   65     0.94   64
 We    1.00   65     1.26   63


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
* No detections in channel XR5U - DBBC problem.


  if station W and f_group S
    pc_mode manual
    pc_phases abcdef -179.7 -57.6 -285.2 -271.1 -257.4 -0.1

  if station W and f_group X
   pc_mode manual
 pc_phases ghijklmn 137.6 12.6 -258.4 -310.1 -214.6 -60.2 -19.8 -50.1

  if station e and f_group S
    pc_mode manual
    pc_phases abcdef -85.6  -346.6  -220.3  -225.5   -72.1  -228.0

  if station e and f_group X
   pc_mode manual
 pc_phases ghijklmn 103.6 80.6 64.3 58.8 -19.3 -184.9 40.1 61.3

  if station g and f_group S
    pc_mode manual
    pc_phases abcdef -42.5  -190.5  -349.3  -204.7  -200.0  -302.4

  if station g and f_group X
   pc_mode manual
 pc_phases ghijklmn -90.3  66.2 177.2 225.0 273.8 328.7 252.8 328.9


* ref Hb/L --> just for book keeping

*   if station g and f_group S
*   pc_phases abcdef -0.6    0.5    0.1    0.1   -1.3    0.7
*   if station g and f_group X
*   pc_phases ghijklmn -2.7    3.1    1.9    1.0    0.7    1.4    1.4   -2.0

   if station i and f_group S
   pc_phases abcdef -0.9   -0.5    1.3    0.6   -0.7   -0.7 
   if station i and f_group X
   pc_phases ghijlmn -1.1    1.1    1.1    0.7    0.2    0.6   -0.6


Regards,
 Jamie 

+END
