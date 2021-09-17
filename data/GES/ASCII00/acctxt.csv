/* THIS PROGRAM CREATES A FLAT FILE OF ALL THE ACCIDENT LEVEL */
/* VARIABLES.   ALL FIELDS HAVE NUMERIC DATA. */

FILENAME ACCIDENT 'd:\ges\ges2000\with revised format\ACCIDENT.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET GES2000.ACCIDENT(DROP= PSUSTRAT);
     FILE ACCIDENT;
     PUT CASENUM     1-8
         MONTH       10-11
         YEAR        12-15
         WEEKDAY     16
         WKDY_I      17
         HOUR        18-19
         HOUR_I      20-21
         MINUTE      22-23
         MINUTE_I    24-25
         VEH_INVL    26-27
         NON_INVL    28-29
         LAND_USE    30
         EVENT1      31-32
         EVENT1_I    33-34
         MAN_COL     35
         MANCOL_I    36
         INT_HWY     37
         REL_JCT     38-39
         RELJCT_I    40-41
         REL_RWY     42-43
         TRAF_WAY    44
         NUM_LAN     45
         ALIGN       46
         ALIGN_I     47
         PROFILE     48
         PROFIL_I    49
         SUR_COND    50
         SURCON_I    51
         TRAF_CON    52-53
         TRFCON_I    54-55
         SPD_LIM     56-57
         SPDLIM_H    58-59
         LGHT_CON    60
         LGTCON_I    61
         WEATHER     62
         WEATHR_I    63
         SCHL_BUS    64
         PED_ACC     65-68
         WRK_ZONE    69
         MAX_SEV     70
         MAXSEV_I    71
         NUM_INJ     72-73
         NO_INJ_I    74-75
         ALCOHOL     76
         ALCHL_I     77
         PSU         78-79
         PJ          80-82
         REGION      83
         STRATUM     84
         @ 85 WEIGHT 8.2 ;
RUN;
