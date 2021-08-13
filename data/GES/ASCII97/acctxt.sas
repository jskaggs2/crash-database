/* THIS PROGRAM CREATES A FLAT FILE OF ALL THE ACCIDENT LEVEL */
/* VARIABLES.   ALL FIELDS HAVE NUMERIC DATA. */

LIBNAME GES97     'R:\FILES\GES97';
FILENAME ACCIDENT 'R:\FILES\GES97\ANALYSIS\ACCIDENT.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET GES97.ACCIDENT(DROP=PSU_RCD PSUSTRAT);
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
         EVENT1      28-29
         EVENT1_I    30-31
         MAN_COL     32
         MANCOL_I    33
         INT_HWY     34
         REL_JCT     35-36
         RELJCT_I    37-38
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
         NO_INJ_I    69-70
         ALCOHOL     71
         ALCHL_I     72
         PSU         73-74
         PJ          75-77
         REGION      78
         STRATUM     79
         WRK_ZONE    80
         NHS_RWTP    81-82
         @ 83 WEIGHT 8.2 ;
RUN;
