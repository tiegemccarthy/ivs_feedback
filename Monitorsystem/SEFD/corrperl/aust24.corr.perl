+HEADER 
CORREL   CRTN 
DATABASE 14MAY01XA 
SESSNAME AUST24 
UTSTART  0700 
DURATION 24 
DOY      121-122 
CORRTIME 2014/08/03 2014/08/04 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            88%             - 
   0              6%             - 
 4-1,A-H,N        5%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART12 (Hb/L): Strong RFI in channels SR5U and SR6U. G-code threshold 
  reduced to 0.3 to avoid excessive data loss. 

 KATH12M  (Ke/i): Small clock break noted at 121-112000

 WARK12M  (Ww/W): Manual phase cal. Station scheduled as tag-along, with 
  few scheduled scans. 

 YARRA12M (Yg/e): Station reported high Tsys but detected SNRs look ok. 

+DROP_CHANNELS
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
  KE           -6.87         0.00   56778.2916667
  YG           -7.90         0.00   56778.2916667
  WW           11.34         0.00   56778.2916667


+QCODES

Qcod  0 1 2 3 4 5 6  7   8    9 A B C D E F G H  N -  Tot 
-------------------------------------------------------------
ie:X 12 0 0 0 0 0 2  9  46  151 0 0 0 0 0 0 0 0 17 0  237 
ie:S 17 0 0 0 0 0 0  2   6  195 0 0 0 0 0 0 0 0 17 0  237 
iL:X  8 0 0 0 1 0 1  2  17  210 0 0 0 0 0 0 0 0  0 0  239 
iL:S 22 0 0 0 0 2 2  3  19  190 0 0 0 0 0 0 1 0  0 0  239 
iW:X  3 0 0 0 0 0 0  0   0   17 0 0 0 0 0 0 0 0  0 0   20 
iW:S  0 0 0 0 0 0 0  0   0   20 0 0 0 0 0 0 0 0  0 0   20 
eL:X 15 0 0 0 0 0 0  3  54  190 0 0 0 0 0 0 0 0 21 0  283 
eL:S 22 0 0 0 0 1 0  3  42  190 0 0 0 0 0 0 4 0 21 0  283 
eW:X  3 0 0 0 0 0 0  0   3   12 0 0 0 0 0 0 0 0  2 0   20 
eW:S  0 0 0 0 0 0 0  0   0   18 0 0 0 0 0 0 0 0  2 0   20 
LW:X  3 0 0 0 0 0 0  0   0   17 0 0 0 0 0 0 0 0  0 0   20 
LW:S  0 0 0 0 0 0 0  0   1   19 0 0 0 0 0 0 0 0  0 0   20 
-------------------------------------------------------------
Tot 105 0 0 0 1 3 5 22 188 1229 0 0 0 0 0 0 5 0 80 0 1638 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1264

 ...by baseline, over all sources:

 bl     X     n       S     n

 Li    1.63  231     0.99  217
 Le    1.47  247     1.05  240
 LW    2.31   17     0.98   20
 ie    1.36  208     1.27  202
 iW    1.86   17     1.03   20
 We    1.44   15     1.10   18


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

*  if station W and f_group X
*    freqs g h i j k l m n+ 
* Channel X8L has low amplitude, leading to many G-codes. 

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn 28.9 -322.0  -36.4 -221.4 -203.9 -326.0 -242.9  -30.9

  if station W and f_group S
    pc_mode manual
    pc_phases abcdef -43.8  284.5  254.8   13.9   48.3  135.9

* ref Yg/e --> just for book keeping

   if station i and f_group S
   pc_phases abcdef -1.2   7.4    -0.1   -12.9   4.6   2.2
   if station i and f_group X
   pc_phases ghijklmn 6.2   -12.3    -5.3   1.5  10.8   5.8   1.5    -7.1

   if station L and f_group S
   pc_phases abcdef 1.2   6.2    -2.7   -12.5   3.1   7.1
   if station L and f_group X
   pc_phases ghijklmn 4.3    -6.0    -3.7    -4.0  17.0    -2.8   2.8   -4.9

Regards,
 Jamie 

+END
