+HEADER 
CORREL   CRTN 
DATABASE 14AUG30XA 
SESSNAME AUST44 
OBSTIME  2014/08/30 2014/08/30 
UTSTART  0000 
DURATION 24
DOY      242 
CORRTIME 2014/10/20 2014/10/21 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            95%             - 
   0              1%             - 
 4-1,A-H,N        4%             - 
 Removed          -              - 

+CORRELATOR_NOTES
Manual phase cal was applied for all stations, after noting loss of phase
cal at Yg.

+STATION_NOTES

 HOBART12 (Hb/L): Strong RFI in SR5U and SR6U. Small clock break apparent
  at 2005 

 KATH12M  (Ke/i): Manual pcal. Small clock breaks apparent at 0702 and 1208

 YARRA12M (Yg/e): Manual pcal. 

+DROP_CHANNELS
 Hb 
 Ke 
 Yg 

+MANUAL PCAL Yg Ke 

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
  KE           -5.90         0.00   56899.0000000
  YG           -7.69         0.00   56899.0000000


+QCODES

Qcod 0 1 2 3 4 5 6  7   8    9 A B C D E F G H   N -  Tot 
-------------------------------------------------------------
Li:X 7 0 0 0 0 0 5  4  21  655 0 0 0 0 0 0 0 0  42 0  734 
Li:S 9 0 0 0 0 0 0  7  72  604 0 0 0 0 0 0 0 0  42 0  734 
Le:X 9 0 0 0 0 0 0  8  36  639 0 0 0 0 0 0 0 0  42 0  734 
Le:S 9 0 0 0 0 0 0  9 138  531 0 0 0 0 0 0 5 0  42 0  734 
ie:X 0 0 0 0 0 1 0 17  65  652 0 0 0 0 0 0 0 0   0 0  735 
ie:S 0 0 0 0 0 0 0  4  16  715 0 0 0 0 0 0 0 0   0 0  735 
-------------------------------------------------------------
Tot 34 0 0 0 0 1 5 49 348 3796 0 0 0 0 0 0 5 0 168 0 4406 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1284

 ...by baseline, over all sources:

 bl     X     n       S     n

 Li    1.60  685     1.10  681
 Le    1.81  683     1.25  683
 ie    1.71  735     1.44  735


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

  if station e and f_group S
    pc_mode manual
    pc_phases abcdef -173.1  25.7  -125.8  -326.8  -334.5   -84.9

  if station e and f_group X
    pc_mode manual
 pc_phases ghijklmn -62.5 -310.2 -294.3 -41.7 -86.9 -233.0 -189.1 -76.4

  if station i and f_group S
    pc_mode manual
    pc_phases abcdef -1.4   -53.2  -115.1  -200.1    -3.8  -330.7

  if station i and f_group X
    pc_mode manual
 pc_phases ghijklmn -138.7 232.7 94.1 169.5 109.9 280.2 261.6 102.3

* ref Hb/L --> just for book keeping


Regards,
 Jamie 

+END
