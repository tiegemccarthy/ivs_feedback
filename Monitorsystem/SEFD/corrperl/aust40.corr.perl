+HEADER 
CORREL   CRTN 
DATABASE 14AUG11XA 
SESSNAME AUST40 
UTSTART  0700 
DURATION 24 
DOY      223-224 
CORRTIME 2014/10/16 2014/10/17 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            91%             - 
   0              7%             - 
 4-1,A-H,N        2%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART12 (Hb/L): Ok. 

 KATH12M  (Ke/i): Ok. 

 WARK12M  (Ww/W): Manual phase cal.

 YARRA12M (Yg/e): Manual phase cal. Separate solution required after clock
  break at 224-0328.

+DROP_CHANNELS
 Hb 
 Ke 
 Ww 
 Yg 

+MANUAL PCAL Ww Yg Yg 

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
  KE           -5.82         0.00   56880.2916667
  YG           -7.63         0.00   56880.2916667
  WW           18.40         0.00   56880.2916667


+QCODES

Qcod 0 1 2 3 4 5 6  7   8   9 A B C D E F G H  N -  Tot 
-----------------------------------------------------------
ie:X 5 0 0 0 0 0 2  4  32  81 0 0 0 0 0 0 0 0  3 0  127 
ie:S14 0 0 0 0 0 0  1   3 106 0 0 0 0 0 0 0 0  3 0  127 
iL:X 1 0 0 0 0 0 0  5  30  65 0 0 0 0 0 0 0 0  1 0  102 
iL:S 8 0 0 0 0 0 0  0  17  76 0 0 0 0 0 0 0 0  1 0  102 
iW:X 9 0 0 0 0 0 0  6  19  54 0 0 0 0 0 0 0 0  1 0   89 
iW:S10 0 0 0 0 0 0  0   7  71 0 0 0 0 0 0 0 0  1 0   89 
eL:X 2 0 0 0 0 1 0  3  29  78 0 0 0 0 0 0 0 0  4 0  117 
eL:S10 0 0 0 0 1 1  3  24  74 0 0 0 0 0 0 0 0  4 0  117 
eW:X 9 0 0 0 0 0 0  7  25  52 0 0 0 0 0 0 0 0  3 0   96 
eW:S10 0 0 0 0 0 1  3  10  69 0 0 0 0 0 0 0 0  3 0   96 
LW:X 4 0 0 0 0 1 3 15  44  57 0 0 0 0 0 0 0 0  2 0  126 
LW:S13 0 0 0 0 3 2  5  36  64 0 0 0 0 0 0 1 0  2 0  126 
-----------------------------------------------------------
Tot 95 0 0 0 0 6 9 52 276 847 0 0 0 0 0 0 1 0 28 0 1314 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1280

 ...by baseline, over all sources:

 bl     X     n       S     n

 Li    1.77  100     1.00   93
 LW    2.04  120     1.19  111
 Le    1.91  111     1.19  103
 iW    1.58   79     1.08   78
 ie    1.84  119     1.42  110
 We    1.70   84     1.27   83


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
    pc_phases abcdef -126.2  34.6 203.1 102.9  83.8  16.1

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn -168.7 261.0 105.1 110.5  42.9 234.6 146.3 191.3

  if station e and f_group S and scan < 224-032800
    pc_mode manual
    pc_phases abcdef -37.7 229.2 149.4 236.6 338.1 332.1 

  if station e and f_group X and scan < 224-032800 
    pc_mode manual
 pc_phases ghijklmn 63.4  43.6 183.7 152.1 299.3 176.6  73.1 235.0

  if station e and f_group S and scan > 224-032800
    pc_mode manual
    pc_phases abcdef -173.4 105.4  47.7 151.4 180.8 162.7

  if station e and f_group X and scan > 224-032800
    pc_mode manual
 pc_phases ghijklmn -15.4 251.4 265.3 2.3 320.5 150.2 20.9 181.5


* ref Ke/i --> just for book keeping

   if station L and f_group S
   pc_phases abcdef 4.3    -4.1    -2.7   1.0   0.4   0.7
   if station L and f_group X
   pc_phases ghijklmn -1.8   7.3 -0.6    -4.9   3.0    -9.5   2.0   2.8

Regards,
 Jamie 

+END
