+HEADER 
CORREL   CRTN 
DATABASE 14JUN24XA
SESSNAME AUST28 
UTSTART  1730 
DURATION 24 
DOY      175-176 
CORRTIME 2014/09/22 2014/09/23 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            87%             - 
   0              8%             - 
 4-1,A-H,N        5%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HART15M  (Ht/g): Ok. 

 HOBART12 (Hb/L): Strong RFI in SR5U and SR6U. Windstowed between 176/0317
  and 0334.

 KATH12M  (Ke/i): Integer second offset applied from 176-1235 - recorder 
  problem. There is another small clock break apparent at 176-0949   

 WARK12M  (Ww/W): Manual phase cal. 

 YARRA12M (Yg/e): Late start - first scan 175-1934. Small clock break 
  apparent at 176-0107.

+DROP_CHANNELS
 Ht 
 Hb 
 Ke      XR5U  
 Ww 
 Yg 

+MANUAL PCAL Ww 

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
  YG           -8.01         0.00   56832.7291667
  WW           15.19         0.00   56832.7291667


+QCODES

Qcod  0 1 2 3 4 5 6  7   8    9 A B C D E F  G H   N -  Tot 
---------------------------------------------------------------
gL:X 26 0 0 0 0 0 0  3  14  218 0 0 0 0 0 0  0 0   4 0  265 
gL:S 23 0 0 0 0 0 0  2  45  189 0 0 0 0 0 0  2 0   4 0  265 
gi:X 19 0 0 0 0 0 0  0   0  235 0 0 0 0 0 0  0 0   3 0  257 
gi:S 19 0 0 0 0 0 0  0   3  232 0 0 0 0 0 0  0 0   3 0  257 
gW:X 49 0 0 0 0 0 1  3   3  172 0 0 0 0 0 0  0 0   1 0  229 
gW:S 82 0 0 0 0 0 0  0  21  125 0 0 0 0 0 0  0 0   1 0  229 
ge:X 27 0 0 0 0 0 0  0   1  250 0 0 0 0 0 0  0 0  23 0  301 
ge:S 11 0 0 0 0 0 0  0   7  260 0 0 0 0 0 0  0 0  23 0  301 
Li:X  9 0 0 0 0 1 0  2  18  284 0 0 0 0 0 0  2 0   4 0  320 
Li:S  6 0 0 0 0 0 0  0  56  252 0 0 0 0 0 0  2 0   4 0  320 
LW:X 34 0 0 0 0 0 8 14  70  217 0 0 0 0 0 0  1 0   5 0  349 
LW:S 18 0 0 0 0 0 0  9  97  219 0 0 0 0 0 0  1 0   5 0  349 
Le:X 19 0 0 0 0 0 0  4  29  241 0 0 0 0 0 0  2 0  31 0  326 
Le:S  6 0 0 0 0 0 0  4  69  213 0 0 0 0 0 0  3 0  31 0  326 
iW:X 32 0 0 0 0 0 0  5  14  254 0 0 0 0 0 0  0 0   4 0  309 
iW:S 34 0 0 0 0 0 0  0  33  238 0 0 0 0 0 0  0 0   4 0  309 
ie:X  3 0 0 0 0 0 0  0   2  317 0 0 0 0 0 0  0 0  32 0  354 
ie:S  0 0 0 1 0 0 0  0   0  321 0 0 0 0 0 0  0 0  32 0  354 
We:X 28 0 0 0 0 0 0  7  10  225 0 0 0 0 0 0  0 0  27 0  297 
We:S 29 0 1 0 0 0 0  0  27  213 0 0 0 0 0 0  0 0  27 0  297 
---------------------------------------------------------------
Tot 474 0 1 1 0 1 9 53 519 4675 0 0 0 0 0 0 13 0 268 0 6014 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1268

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.99  235     0.74  234
 gi    0.95  234     0.97  231
 gW    0.66  179     0.68  144
 ge    0.97  251     1.03  264
 Li    1.33  307     1.03  310
 LW    1.00  310     0.77  324
 Le    1.30  276     1.09  288
 iW    0.85  273     0.78  268
 ie    1.29  319     1.42  322
 We    0.82  242     0.84  235


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
    pc_phases abcdef 58.3   -52.2  -174.2  -336.0  -137.2  -147.3 

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn 69.2 297.4 118.0 314.6 286.8 244.9 308.0 112.1



* ref Hb/L --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -7.1    3.4    4.6    2.9    1.4   -9.0
   if station g and f_group X
   pc_phases ghijklmn -7.9   -3.0    5.0   27.8   -8.1   15.4  -60.9   10.4

   if station i and f_group S
   pc_phases abcdef -3.3    1.0    4.4   -1.0    1.2   -2.1
   if station i and f_group X
   pc_phases ghijlmn -3.3   -3.8    5.0   10.6   16.4  -52.2    9.8

   if station e and f_group S
   pc_phases abcdef -3.2   -5.9    4.2   13.4   -3.8   -6.9
   if station e and f_group X
   pc_phases ghijklmn -4.1    2.7    3.2    9.5  -18.5   15.6  -46.2   12.3

Regards,
 Jamie  

+END
