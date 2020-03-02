+HEADER 
CORREL   CRTN 
DATABASE 14AUG27XA 
SESSNAME AUST43 
UTSTART  0700 
DURATION 24 
DOY      239-240 
CORRTIME 2014/10/29 2014/10/30 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            89%             - 
   0              6%             - 
 4-1,A-H,N        4%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HOBART12 (Hb/L): Ok. 

 KATH12M  (Ke/i): Very little usable data. The stations maser lost
  temperature control during this experiment, causing varge clock drifts
  and breaks until ~2100. There was a second clock break at 0115 linked
  to the DBBC.  

 YARRA12M (Yg/e): Manual phase cal applied. Small clock break (0.7 ns) apparent at 1953.

+DROP_CHANNELS
 Hb 
 Ke 
 Yg 

+MANUAL PCAL Yg 

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
  YG           -7.66         0.00   56885.0000000


+QCODES

Qcod 0 1 2 3 4  5  6  7   8   9 A B C D E F G H  N - Tot 
------------------------------------------------------------
ie:X 5 0 1 1 1  3  6 16  29  86 0 0 0 0 0 0 1 0  8 0 157 
ie:S20 0 0 0 0  1  0  3   8 117 0 0 0 0 0 0 0 0  8 0 157 
iL:X 3 0 1 1 0  3  3 15  29  88 0 0 0 0 0 0 2 0  8 0 153 
iL:S14 0 0 0 0  1  4  3  19 103 0 0 0 0 0 0 1 0  8 0 153 
eL:X 4 0 0 0 0  0  1  3  29 134 0 0 0 0 0 0 0 0  0 0 171 
eL:S15 0 0 0 0  2  3  1  37 111 0 0 0 0 0 0 2 0  0 0 171 
------------------------------------------------------------
Tot 61 0 2 2 1 10 17 41 151 639 0 0 0 0 0 0 6 0 32 0 962 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1283

 ...by baseline, over all sources:

 bl     X     n       S     n

 Li    1.56  142     0.92  131
 Le    1.95  167     1.03  155
 ie    1.69  144     1.20  129


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
    pc_phases abcdef -122.0 -84.2 -25.4 -109.8 -151.6 -53.1

  if station e and f_group X
    pc_mode manual
 pc_phases ghijklmn -150.9 43.1 92.3 322.9 213.3 320.3 311.6 290.5


* ref Hb/L --> just for book keeping

   if station i and f_group S
   pc_phases abcdef -2.3    2.1    2.9   -4.2    4.2   -2.5
   if station i and f_group X
   pc_phases ghijklmn -1.7   -1.1    4.0    4.7   -7.6    4.3   -7.8    2.1


Regards,
 Jamie 

+END
