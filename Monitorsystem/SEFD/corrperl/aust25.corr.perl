+HEADER 
CORREL   CRTN 
DATABASE 14MAY26XA 
SESSNAME AUST25 
UTSTART  0700 
DURATION 24 
DOY      146-147 
CORRTIME 2014/08/31 2014/09/01 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            87%             - 
   0             12%             - 
 4-1,A-H,N        1%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HART15M  (Ht/g): Two clock breaks noted at 146-0726 and 146-1035. Separate
  phase cal solutions obtained on either side of this clock break.

 HOBART12 (Hb/L): Strong RFI in SR5U and SR6U. G-code threshold reduced to 
  0.3 to avoid excessive loss of data.

 KATH12M  (Ke/i): Clock break at 146-2000. Weak fringes in SR5U and upper
  X-band channels. G-code threshold reduced to 0.3 to avoid excessive loss
  of data.

 WARK12M  (Ww/W): Manual phase cal. 

 YARRA12M (Yg/e): Ok. 

+DROP_CHANNELS
 Ht 
 Hb 
 Ke 
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
  HT           -4.22        -0.00   56803.2916667
  YG           -8.00         0.00   56803.2916667
  WW           13.02         0.00   56803.2916667


+QCODES

Qcod  0 1 2 3 4 5 6  7   8    9 A B C D E F  G H N -  Tot 
-------------------------------------------------------------
gL:X 28 0 0 0 0 0 0  2  55  158 0 0 0 0 0 0  0 0 0 0  243 
gL:S 16 0 0 0 0 0 1  7  40  177 0 0 0 0 0 0  2 0 0 0  243 
gi:X 51 0 0 0 0 0 0  4  47  135 0 0 0 0 0 0  0 0 0 0  237 
gi:S 52 0 0 0 0 0 0  5  42  136 0 0 0 0 0 0  2 0 0 0  237 
gW:X 42 0 0 0 0 0 0  0  24  147 0 0 0 0 0 0  0 0 0 0  213 
gW:S 73 0 0 0 0 0 0  2  14  124 0 0 0 0 0 0  0 0 0 0  213 
ge:X 30 0 0 0 0 0 0  0  77  177 0 0 0 0 0 0  0 0 0 0  284 
ge:S  8 0 0 0 0 0 0  1   5  270 0 0 0 0 0 0  0 0 0 0  284 
Li:X 48 0 0 0 0 0 3  6  23  242 0 0 0 0 0 0  0 0 0 0  322 
Li:S 45 0 0 1 0 0 0 13  86  158 0 0 0 0 0 0 19 0 0 0  322 
LW:X 28 0 0 0 0 0 0  3   9  305 0 0 0 0 0 0  0 0 0 0  345 
LW:S  8 0 0 0 0 0 3 24  73  228 0 0 0 0 0 0  9 0 0 0  345 
Le:X 17 0 0 0 0 0 0  2  19  288 0 0 0 0 0 0  0 0 0 0  326 
Le:S  1 0 0 0 0 0 0  3  90  227 0 0 0 0 0 0  5 0 0 0  326 
iW:X 57 0 0 0 0 0 0  4  17  222 0 0 0 0 0 0  0 0 0 0  300 
iW:S 68 0 0 0 0 1 0  1  29  187 0 0 0 0 0 0 14 0 0 0  300 
ie:X 49 0 0 0 0 0 0  8  42  242 0 0 0 0 0 0  0 0 0 0  341 
ie:S 44 0 0 0 0 0 0  0 115  181 0 0 0 0 0 0  1 0 0 0  341 
We:X 31 0 0 0 0 0 0  1   9  253 0 0 0 0 0 0  0 0 0 0  294 
We:S 26 0 0 0 0 0 0  0  33  235 0 0 0 0 0 0  0 0 0 0  294 
-------------------------------------------------------------
Tot 722 0 0 1 0 1 7 86 849 4092 0 0 0 0 0 0 52 0 0 0 5810 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1265

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    1.06  215     0.78  223
 gi    0.96  186     0.98  180
 gW    0.75  171     0.76  135
 ge    1.02  254     1.11  276
 Li    1.27  274     0.90  277
 LW    1.18  317     0.77  334
 Le    1.39  309     1.14  322
 iW    0.93  243     0.72  228
 ie    1.23  292     1.20  297
 We    0.97  263     0.87  264


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


  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn 175.3  295.0 256.0 70.0  291.4  282.5  270.1  336.1

  if station W and f_group S
    pc_mode manual
    pc_phases abcdef 101.3    4.6 -105.9 -251.2 -346.1 -354.6 

* ref Yg/e --> just for book keeping

   if station g and f_group S and scan < 146-103500
   pc_phases abcdef -6.4 8.7  2.8  -9.2 2.3 0.6
   if station g and f_group X and scan < 146-103500
   pc_phases ghijklmn -5.4    -4.2   3.7 17.2 6.2 -1.5 -10.8 -1.5

   if station g and f_group S and scan > 146-103500
   pc_phases abcdef -8.5   8.8   4.1    -3.6    -0.2    -0.5
   if station g and f_group X and scan > 146-103500
   pc_phases ghijklmn -8.4 7.0 3.8 1.6 3.7 1.5 -127.6 6.3

   if station i and f_group S
   pc_phases abcdef -0.7   7.9   1.9 -13.9 9.9  2.9
   if station i and f_group X
   pc_phases ghijklmn 2.0    -7.1   0.5   0.1  11.3 2.0 -2.4 -2.3 

   if station L and f_group S
   pc_phases abcdef 0.7   7.8   -1.9   -13.6 5.5 5.9
   if station L and f_group X
   pc_phases ghijklmn 1.2 -1.2    -0.7    -4.1 8.3  -6.0  0.2  0.2

Regards,
 Jamie 

+END
