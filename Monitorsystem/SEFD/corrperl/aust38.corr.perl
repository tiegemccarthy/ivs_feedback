+HEADER 
CORREL   CRTN 
DATABASE 14AUG09XA 
SESSNAME AUST38 
OBSTIME  2014/08/09 2014/08/09 
UTSTART  0000 
DURATION 1 
DOY      221 
CORRTIME 2014/10/01 2014/10/02 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            44%             - 
   0              2%             - 
 4-1,A-H,N       54%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HART15M  (Ht/g): Ok. 

 HOBART12 (Hb/L): Apparent clock breaks at 1342 and 1752

 KATH12M  (Ke/i): Ok. 

 YARRA12M (Yg/e): All data lost due to module failure. 

+DROP_CHANNELS
 Ht 
 Hb 
 Ke 
 Yg 

+MANUAL PCAL 

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
  HT            0.78        -0.00   56878.0000000
  KE           -5.80         0.00   56878.0000000


+QCODES

Qcod  0 1 2 3 4 5 6  7   8    9 A B C D E F G H    N -  Tot 
---------------------------------------------------------------
gL:X 16 0 0 0 0 1 0  0   1  481 0 0 0 0 0 0 0 0    0 0  499 
gL:S 49 0 0 0 1 0 0  9 106  328 0 0 0 0 0 0 6 0    0 0  499 
gi:X 24 0 0 0 0 0 0  0   2  458 0 0 0 0 0 0 0 0    0 0  484 
gi:S 49 0 0 0 0 0 0  0   5  430 0 0 0 0 0 0 0 0    0 0  484 
ge:X  0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0 0 0  556 0  556 
ge:S  0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0 0 0  556 0  556 
Li:X  7 0 0 0 0 0 0  1  18  660 0 0 0 0 0 0 0 0    0 0  686 
Li:S  2 0 0 0 0 0 0  2  95  584 0 0 0 0 0 0 3 0    0 0  686 
Le:X  0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0 0 0  678 0  678 
Le:S  0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0 0 0  678 0  678 
ie:X  0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0 0 0  692 0  692 
ie:S  0 0 0 0 0 0 0  0   0    0 0 0 0 0 0 0 0 0  692 0  692 
---------------------------------------------------------------
Tot 147 0 0 0 1 1 0 12 227 2941 0 0 0 0 0 0 9 0 3852 0 7190 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1278

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.94  482     0.79  443
 gi    0.86  458     0.90  432
 ge    0.00    0     0.00    0
 Li    1.28  679     0.90  684
 Le    0.00    0     0.00    0
 ie    0.00    0     0.00    0


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

* ref Hb/L --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -10.6    2.0    7.8   10.7   -4.2  -10.1
   if station g and f_group X
   pc_phases ghijklmn -7.6   -1.0    2.7   22.9    0.2    4.6 -13.3 -1.2

   if station i and f_group S
   pc_phases abcdef  -2.2    1.3    2.8   -0.8    1.1   -2.0
   if station i and f_group X
   pc_phases ghijklmn 2.0   -8.3    0.1    5.8   -2.3    9.3   -1.4 -3.8


Regards,
 Jamie 

+END
