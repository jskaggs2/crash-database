/* THIS PROGRAM CREATES A FLAT FILE OF ALL THE VEHICLE LEVEL */
/* VARIABLES.  ALL FIELDS ARE NUMERIC DATA EXCEPT THE VIN */

libname ges2002f 'e:\ruby\ges\ges2002\fromlanforflat'; run;
proc contents data=ges2002f.vehicle; run;

FILENAME VEHICLE 'e:\ruby\ges\ges2002\fromlanforflat\VEHICLE.TXT';
OPTION NOFMTERR; run;
DATA _NULL_;
     SET GES2002f.VEHICLE (DROP= PSUSTRAT);
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
         CARIDNUM  $ 91-98
         AXLES       99-100
         CARG_TYP    101-102
         HAZ_MAT     103
         HAZM_NO     104-107
         HAZ_MA_R    108
         MAX_VSEV    109
         MXVSEV_I    110
         NUM_INJV    111-112
         NUMINJ_I    113-114
         VEH_ALCH    115
         V_ALCH_I    116
         DR_PRES     117
         VIOLATN     118-119
         VLTN_I      120-121
         VIS_OBSC    122-123
         DRMAN_AV    124-125
         DR_DSTRD    126-127
         DZIPCODE $  128-132
         SPEEDREL    133
         PSU         134-135
         PJ          136-138
         REGION      139
         STRATUM     140
         MHENUM      141-142
		 NUMOCCS     143-145
		 VALIGN      146
		 VNUM_LAN    147
		 VPROFILE    148
		 VSPD_LIM    149-150
		 VSURCOND    151 
		 VTRAFCON    152-153
		 VTRAFWAY    154
         @ 155 WEIGHT 8.2;
RUN;
