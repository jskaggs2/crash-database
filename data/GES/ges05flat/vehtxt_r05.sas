/* THIS PROGRAM CREATES A FLAT FILE OF ALL THE VEHICLE LEVEL */
/* VARIABLES.  ALL FIELDS ARE NUMERIC DATA EXCEPT THE VIN */

libname ges2005s 'c:\ruby2\ruby\ges\ges2005\final\send' ;
proc contents data=ges2005s.vehicle; run;

FILENAME VEHICLE 'c:\ruby2\ruby\ges\ges2005\flat_files\VEHICLE.TXT';
OPTION NOFMTERR; run;
DATA _NULL_;
     SET GES2005s.VEHICLE (DROP= PSUSTRAT);
     FILE VEHICLE LRECL=200;
     PUT CASENUM     1-12
         VEHNO       13-14
         HIT_RUN     15
         HITRUN_I    16
         MAKE        17-18
         MODEL       19-21
         BODY_TYP    22-23
         BDYTYP_H    24-25
         MODEL_YR    26-29
         MDLYR_I     30-33
         VIN       $ 34-44
         SPEC_USE    45-46
         EMCY_USE    47
         OCC_INVL    48-49
         SPEED       50-52
         FACTOR      53-54
         TRAILER     55
         JACKNIFE    56
         FIRE        57
         VEH_SEV     58
         TOWED       59
         V_EVENT     60-61
         V_EVNT_H    62-63
         P_CRASH1    64-65
         MANEUV_I    66-67
         VEH_ROLE    68
         VROLE_I     69
         ACC_TYPE    70-71
         IMPACT      72-73
         IMPACT_H    74-75
         DAM_AREA    76-80
         P_CRASH2    81-82
         P_CRASH3    83-84
         PCRASH4     85-86
         PCRASH5     87-88
         ROLLOVER    89-90
         CARIDNUM  $ 91-99
         AXLES       100-101
         CARG_TYP    102-103
         HAZ_MAT     104
         HAZM_NO     105-108
         HAZ_MA_R    109
         MAX_VSEV    110
         MXVSEV_I    111
         NUM_INJV    112-113
         NUMINJ_I    114-115
         VEH_ALCH    116
         V_ALCH_I    117
         DR_PRES     118
         VIOLATN     119-120
         VLTN_I      121-122
         VIS_OBSC    123-124
         DRMAN_AV    125-126
         DR_DSTRD    127-128
         DZIPCODE $  129-133
         SPEEDREL    134
         PSU         135-136
         PJ          137-139
         REGION      140
         STRATUM     141
         MHENUM      142-143
		 NUMOCCS     144-146
		 VALIGN      147
		 VNUM_LAN    148
		 VPROFILE    149
		 VSPD_LIM    150-151
		 VSURCOND    152 
		 VTRAFCON    153-154
		 VTRAFWAY    155
         @ 156 WEIGHT 8.2;
RUN;
