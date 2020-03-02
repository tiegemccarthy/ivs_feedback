+HEADER 
CORREL   CRTN 
DATABASE 13MAR10XT 
SESSNAME P483A 
OBSTIME  2013/03/10 2013/03/10 
UTSTART  0100 
DURATION 13.5 
DOY      069 
CORRTIME 2013/10/10 2013/10/11 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            64%             - 
   0             35%             - 
 4-1,A-H,N        -              - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART26 (Ho/H):

          (Pk/ ):

 WARK12M  (Ww/W):

 HART15M  (Ht/g):

+DROP_CHANNELS
 Ho 
 Pk 
 Ww 
 Ht 

+MANUAL PCAL Ho Ww 

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
  HO            6.08         0.00   56361.0887847
  PA            1.54         0.00   56361.0887847
  HT           -4.53         0.00   56361.0887847
  WW            1.10         0.00   56361.0887847


+QCODES

Qcod  0 1 2 3 4 5 6  7  8   9 A B C D E F G H N - Tot 
---------------------------------------------------------
He:X  9 0 0 0 0 1 1  7  1  60 0 0 0 0 0 0 0 0 0 0  79 
He:S  7 0 0 0 1 2 4  5 21  39 0 0 0 0 0 0 0 0 0 0  79 
HW:X 33 0 0 0 0 0 0  0  3  85 0 0 0 0 0 0 0 0 0 0 121 
HW:S 70 0 0 0 0 0 0  3  4  44 0 0 0 0 0 0 0 0 0 0 121 
Hg:X 24 0 0 0 0 0 0  0  1  44 0 0 0 0 0 0 0 0 0 0  69 
Hg:S 22 0 0 0 0 0 0  0  3  44 0 0 0 0 0 0 0 0 0 0  69 
eW:X 14 0 0 0 0 0 0  1  4  67 0 0 0 0 0 0 0 0 0 0  86 
eW:S 37 0 0 0 0 0 2  1  9  36 0 0 0 0 0 0 1 0 0 0  86 
eg:X 12 0 0 0 0 0 0  0  1  37 0 0 0 0 0 0 0 0 0 0  50 
eg:S  9 0 0 0 0 0 1  7  5  28 0 0 0 0 0 0 0 0 0 0  50 
Wg:X 41 0 0 0 0 0 0  0  0  20 0 0 0 0 0 0 0 0 0 0  61 
Wg:S 51 0 0 0 0 0 0  0  0  10 0 0 0 0 0 0 0 0 0 0  61 
---------------------------------------------------------
Tot 329 0 0 0 1 3 8 24 52 514 0 0 0 0 0 0 1 0 0 0 932 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1234

 ...by baseline, over all sources:

 bl     X     n       S     n

 Hg    0.32   45     0.49   47
 ge    0.27   37     0.62   41
 gW    0.52   19     0.52   10
 He    0.68   69     1.08   71
 HW    0.78   88     0.75   49
 eW    0.62   70     0.73   48


+FOURFIT_CONTROL_FILE

* control file for exp. R1

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
    freqs g h i j
    pc_freqs ghij 9010 9010 9010 9010

  if f_group S
    ref_freq 2225.99
    pc_freqs abcdef 3010 3010 3010 3010 3010 3010

  if station H and f_group X
    pc_mode manual
    pc_phases ghij -11.0 -209.4  -28.9 -113.0 

  if station H and f_group S
    pc_mode manual
    pc_phases abcdef 115.0   35.3   63.6  198.7  189.7  184.1

  if station W and f_group X
    pc_mode manual
    pc_phases ghij -37.0  55.7   3.7 155.0

  if station W and f_group S
    pc_mode manual
    pc_phases abcdef -113.6  91.8 311.6 187.5  30.2 332.0

* ref PKS/e

   if station g and f_group S
   pc_phases abcdef 0.7    -3.3  24.0   -32.7    -6.6  22.5  
   if station g and f_group X
   pc_phases ghij 10.7    -9.0 -7.0 -3.9 



Regards,
 Jamie 

+END
