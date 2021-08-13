/* THIS PROGRAM CREATES A FLAT FILE OF ALL THE ACCIDENT LEVEL */
/* VARIABLES.   ALL FIELDS HAVE NUMERIC DATA. */

libname ges2002f 'e:\ruby\ges\ges2002\fromlanforflat'; run;
proc contents data=ges2002f.accident; run;
proc freq data=ges2002f.accident; run;

FILENAME ACCIDENT 'e:\ruby\ges\ges2002\fromlanforflat\ACCIDENT.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET GES2002f.ACCIDENT(DROP= PSUSTRAT);
     FILE ACCIDENT;
     PUT CASENUM     1-12
         MONTH       13-14
         YEAR        15-18
         WEEKDAY     19
         WKDY_I      20
         HOUR        21-22
         HOUR_I      23-24
         MINUTE      25-26
         MINUTE_I    27-28
         VEH_INVL    29-30
         NON_INVL    31-32
         LAND_USE    33
         EVENT1      34-35
         EVENT1_I    36-37
         MAN_COL     38
         MANCOL_I    39
         INT_HWY     40
         REL_JCT     41-42
         RELJCT_I    43-44
         REL_RWY     45-46
         TRAF_WAY    47
         NUM_LAN     48
         ALIGN       49
         ALIGN_I     50
         PROFILE     51
         PROFIL_I    52
         SUR_COND    53
         SURCON_I    54
         TRAF_CON    55-56
         TRFCON_I    57-58
         SPD_LIM     59-60
         SPDLIM_H    61-62
         LGHT_CON    63
         LGTCON_I    64
         WEATHER     65
         WEATHR_I    66
         SCHL_BUS    67
         PED_ACC     68-72
         WRK_ZONE    73
         MAX_SEV     74
         MAXSEV_I    75
         NUM_INJ     76-77
         NO_INJ_I    78-79
         ALCOHOL     80
         ALCHL_I     81
         PSU         82-83
         PJ          84-86
         REGION      87
         STRATUM     88
         @ 90 WEIGHT 8.2 ;
RUN;
