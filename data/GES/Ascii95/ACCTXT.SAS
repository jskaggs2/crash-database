
/* THIS PROGRAM CREATES A FLAT FILE OF ALL THE ACCIDENT LEVEL */
/* VARIABLES.   ALL FIELDS HAVE NUMERIC DATA. */

LIBNAME GES95   'c:\ges95q4u';
FILENAME ACCIDENT    'c:\ges95q4u\ACCIDENT.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET GES95.ACC95_hi(DROP=PSU_RCD PSUSTRAT);
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
         REL_JCT     37-38
         RELJCT_I    39-40
         REL_RWY     41
         TRAF_WAY    42
         NUM_LAN     43
         ALIGN       44
         ALIGN_I     45
         PROFILE     46
         PROFIL_I    47
         SUR_COND    48
         SURCON_I    49
         TRAF_CON    50-51
         TRFCON_I    52-53
         SPD_LIM     54-55
         SPDLIM_H    56-57
         LGHT_CON    58
         LGTCON_I    59
         WEATHER     60
         WEATHR_I    61
         SCHL_BUS    62
         PED_ACC     63-66
         MAX_SEV     67
         MAXSEV_I    68
         NUM_INJ     69-70
         NO_INJ_I    71-72
         ALCOHOL     73
         ALCHL_I     74
         PSU         75-76
         PJ          77-79
         REGION      80
         STRATUM     81
         WRK_ZONE    82
         NHS_RWTP    83-85         
         @ 86 WEIGHT 8.2 ;
RUN;
