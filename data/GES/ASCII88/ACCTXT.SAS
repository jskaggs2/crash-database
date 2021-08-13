FILENAME ACCIDENT 'R:\FILES\GES88\ANALYSIS\ACCIDENT.TXT';

/* THIS PROGRAM CREATES A FLAT FILE OF ALL THE ACCIDENT LEVEL */
/* VARIABLES.   ALL FIELDS HAVE NUMERIC DATA. */

DATA _NULL_;
     SET GES88.ACCIDENT;
     FILE ACCIDENT;
     PUT CASENUM     1-8
         MONTH       9-10
         YEAR        11-12
         WEEKDAY     13
         WKDY_I      14
         HOUR        15-16
         HOUR_I      17-18
         MINUTE      19-20
         MINUTE_I    21-22
         VEH_INVL    23-24
         NON_INVL    25-26
         LAND_USE    27
         RUR_URB     28-29
         EVENT1      30-31
         EVENT1_I    32-33
         MAN_COL     34
         MANCOL_I    35
         INT_HWY     36
         REL_JCT     37
         RELJCT_I    38
         REL_RWY     39
         TRAF_WAY    40
         NUM_LAN     41
         ALIGN       42
         ALIGN_I     43
         PROFILE     44
         PROFIL_I    45
         SUR_COND    46
         SURCON_I    47
         TRAF_CON    48-49
         TRFCON_I    50-51
         SPD_LIM     52-53
         SPDLIM_H    54-55
         LGHT_CON    56
         LGTCON_I    57
         WEATHER     58
         WEATHR_I    59
         SCHL_BUS    60
         PED_ACC     61-64
         MAX_SEV     65
         MAXSEV_I    66
         NUM_INJ     67-68
         ALCOHOL     69
         ALCHL_I     70
         DEV_FUNC    71
         VEH_COD     72-73
         PER_INVL    74-75
         PER_COD     76-77
         NON_COD     78-79
         PSU         80-81
         PJ          82-83
         STRATUM     84
         REGION      85
         @ 86 WEIGHT 8.2 ;
RUN;
