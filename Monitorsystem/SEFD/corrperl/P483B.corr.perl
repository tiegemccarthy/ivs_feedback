+HEADER 
CORREL   CRTN 
DATABASE  
SESSNAME P483B 
OBSTIME  2013// 2013// 
UTSTART  0050 
DURATION 1 
DOY      070 
CORRTIME 2013/10/10 2013/10/11 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            51%             - 
   0             38%             - 
 4-1,A-H,N       11%             - 
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

+MANUAL PCAL Ho Ho Ww Ww 

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

Qcod  0 1 2 3 4 5 6  7  8   9 A B C D E F G H  N - Tot 
----------------------------------------------------------
He:X 15 0 0 0 0 1 1  4  3  36 0 0 0 0 0 0 0 0  2 0  62 
He:S 20 0 0 0 1 2 3  1 12  21 0 0 0 0 0 0 0 0  2 0  62 
HW:X 23 0 0 0 0 0 0  0  0  48 0 0 0 0 0 0 0 0 15 0  86 
HW:S 43 0 0 0 0 0 0  1  4  23 0 0 0 0 0 0 0 0 15 0  86 
Hg:X 14 0 0 0 0 0 0  0  0  32 0 0 0 0 0 0 0 0  0 0  46 
Hg:S 12 0 0 0 0 0 0  1  5  28 0 0 0 0 0 0 0 0  0 0  46 
eW:X 14 0 0 0 0 0 0  1  2  33 0 0 0 0 0 0 0 0 16 0  66 
eW:S 25 0 0 0 0 0 1  2  8  14 0 0 0 0 0 0 0 0 16 0  66 
eg:X 11 0 0 0 0 0 0  0  0  18 0 0 0 0 0 0 0 0  4 0  33 
eg:S 15 0 0 0 0 0 0  1  4   9 0 0 0 0 0 0 0 0  4 0  33 
Wg:X 27 0 0 0 0 0 0  0  0  17 0 0 0 0 0 0 0 0  0 0  44 
Wg:S 39 0 0 0 0 0 0  0  0   5 0 0 0 0 0 0 0 0  0 0  44 
----------------------------------------------------------
Tot 258 0 0 0 1 3 5 11 38 284 0 0 0 0 0 0 0 0 74 0 674 

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

 Hg    0.32   30     0.46   33
 ge    0.26   18     0.58   14
 gW    0.53   17     0.54    5
 He    0.58   45     0.85   40
 HW    0.74   48     0.71   28
 eW    0.64   36     0.71   25


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
    freqs a b c d e f 
    pc_freqs abcdef 3010 3010 3010 3010 3010 3010

  if station H and f_group X and scan < 070-124800
    pc_mode manual
    pc_phases ghij  -147.3  121.6  357.5  308.3

  if station H and f_group S and scan < 070-124800
    pc_mode manual
    pc_phases abcdef  -78.3   72.4  325.4  296.0  310.2  174.2 

  if station H and f_group X and scan > 070-124800
    pc_mode manual
    pc_phases ghij   -80.0  132.6  236.2  330.0 

  if station H and f_group S and scan > 070-124800
    pc_mode manual
    pc_phases abcdef  25.8  177.9    2.4  263.3  225.1   62.0


  if station W and f_group X and scan < 070-124800
    pc_mode manual
    pc_phases ghij 92.7  -228.3  -230.6  -288.8

  if station W and f_group S and scan < 070-124800
    pc_mode manual
    pc_phases abcdef -42.7 307.2 316.2  78.1 264.8  18.6

  if station W and f_group X and scan > 070-124800
    pc_mode manual
    pc_phases ghij  9.5  40.2  195.0  89.8

  if station W and f_group S and scan > 070-124800
    pc_mode manual
    pc_phases abcdef 118.8 316.9  86.0  83.5  15.9 282.1


* ref PKS/e

   if station g and f_group S
   pc_phases abcdef -0.7   0.2  23.6   -42.9    -7.4  30.3
   if station g and f_group X
   pc_phases ghij 6.2   -10.2    -4.5   2.7


Regards,
 Jamie  

+END
