+HEADER 
CORREL   CRTN 
DATABASE 14NOV24XA 
SESSNAME AUST63 
UTSTART  1600 
DURATION 24 
DOY      328-329 
CORRTIME 2015/02/23 2015/02/24 
CORRPASS 1
EXPORT   DONE 
 
+SUMMARY 
 Qcode      % of Total   % of Correlated 
                scans          scans     
 
  5-9            83%             - 
   0              9%             - 
 4-1,A-H,N        8%             - 
 Removed          -              - 

+CORRELATOR_NOTES

+STATION_NOTES

 HART15M  (Ht/g): Ok. 

 HOBART12 (Hb/L): Many windstows, with missing data 2120-2152, 0532-0553,
  0628-0704, 0720-00728, 0735-1115  . Small clock break apparent at 1228.

 KATH12M  (Ke/i): No data 0722-0937. Likely clock break in this interval. 

 WARK12M  (Ww/W): Manual pcal. 

 YARRA12M (Yg/e): Missed scans 0942-1112.

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
  HB          -13.19         0.00   56636.7588889
  HT           -2.37        -0.00   56985.6666667
  KE          -10.33        -0.00   56985.6666667
  YG          -11.56         0.00   56984.0000000
  WW            0.28         0.00   56976.0000000


+QCODES

Qcod  0 1 2 3 4 5  6  7   8    9 A B C D E F  G H   N -   Tot 
-----------------------------------------------------------------
gL:X 45 0 0 0 0 0  0  0   5  291 0 0 0 0 0 0  0 0  46 0   387 
gL:S 50 0 0 0 0 0  1  2  61  227 0 0 0 0 0 0  0 0  46 0   387 
gi:X 42 0 0 0 0 0  0  0   3  345 0 0 0 0 0 0  0 0  11 0   401 
gi:S 40 0 0 0 0 0  0  0   5  345 0 0 0 0 0 0  0 0  11 0   401 
gW:X 30 0 0 0 0 0  1  4   4  299 0 0 0 0 0 0  0 0   2 0   340 
gW:S 31 0 0 0 0 0  1  4   2  300 0 0 0 0 0 0  0 0   2 0   340 
ge:X 25 0 0 0 0 0  0  3   9  403 0 0 0 0 0 0  0 0  29 0   469 
ge:S 23 0 0 0 0 0  0  3   6  408 0 0 0 0 0 0  0 0  29 0   469 
Li:X 71 0 0 0 0 0  1  2  35  432 0 0 0 0 0 0  0 0  75 0   616 
Li:S 74 0 0 0 0 0  0  2  37  424 0 0 0 0 0 0  4 0  75 0   616 
LW:X 71 0 0 0 0 1  0 12  52  399 0 0 0 0 0 0  0 0  77 0   612 
LW:S 69 0 0 0 1 0  2  3 148  303 0 0 0 0 0 0  9 0  77 0   612 
Le:X 75 0 0 0 0 3  0 11  34  424 0 0 0 0 0 0  0 0  71 0   618 
Le:S 76 0 0 0 0 0  2  3 116  341 0 0 0 0 0 0  9 0  71 0   618 
iW:X 40 0 0 0 0 1  0  4  31  471 0 0 0 0 0 0  0 0  15 0   562 
iW:S 38 0 0 0 0 0  0  1   3  504 0 0 0 0 0 0  1 0  15 0   562 
ie:X 53 0 0 0 1 1  0 11  17  514 0 0 0 0 0 0  0 0  54 0   651 
ie:S 56 0 0 0 1 1  0  3  30  506 0 0 0 0 0 0  0 0  54 0   651 
We:X 11 0 0 0 0 2  0 11  33  436 0 0 0 0 0 0  0 0  32 0   525 
We:S 13 0 0 0 0 0  2  6  47  423 0 0 0 0 0 0  2 0  32 0   525 
-----------------------------------------------------------------
Tot 933 0 0 0 3 9 10 85 678 7795 0 0 0 0 0 0 25 0 824 0 10362 

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

MEAN RATIOS = Observed SNR / Predicted SNR  for exp no. 1303

 ...by baseline, over all sources:

 bl     X     n       S     n

 Lg    0.74  293     0.81  284
 gi    0.83  347     0.84  349
 gW    1.00  307     0.97  307
 ge    0.93  415     0.95  416
 Li    1.00  470     0.85  465
 LW    1.52  464     1.11  465
 Le    1.16  472     0.98  471
 iW    1.35  507     1.02  509
 ie    1.30  544     1.02  540
 We    1.48  482     1.19  480


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
    pc_phases abcdef -38.0  206.4   77.8   67.2   54.0   63.6

  if station W and f_group X
    pc_mode manual
 pc_phases ghijklmn 159.2   92.0 90.7 213.3 202.3 303.0 141.2 270.3

* ref Yg/e --> just for book keeping

   if station g and f_group S
   pc_phases abcdef -2.9  10.2   2.0   -14.5   3.3   4.1
   if station g and f_group X
   pc_phases ghijklmn -2.4 -9.2 -1.2 20.6 9.1 4.5 -9.7 -4.8

   if station i and f_group S
   pc_phases abcdef 2.2   9.3   0.9   -19.1   6.3   6.5
   if station i and f_group X
   pc_phases ghijklmn 4.3 -9.6 -1.1 0.7 3.3 3.3 -0.9 -1.9

   if station L and f_group S
   pc_phases abcdef 3.9   6.6    -2.9   -18.2   5.0  12.3
   if station L and f_group X
   pc_phases ghijklmn 2.6 -4.1 -2.3 -2.8 10.2 -4.7 2.3 -1.4

Regards,
 Jamie 

+END
