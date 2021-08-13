/* THIS PROGRAM CREATES A FLAT FILE OF ALL THE VEHICLE LEVEL */
/* VARIABLES.  ALL FIELDS ARE NUMERIC DATA EXCEPT THE VIN */

FILENAME VEHICLE 'd:\ges\ges99\ges1999flat\VEHICLE.TXT';
OPTION NOFMTERR;
DATA _NULL_;
     SET GES99.VEHICLE;
     FILE VEHICLE LRECL=143;
     PUT CASENUM     1-9
         VEHNO       10-11
         HIT_RUN     12
         HITRUN_I    13
         MAKE        14-15
         MODEL       16-18
         BODY_TYP    19-20
         BDYTYP_H    21-22
         MODEL_YR    23-26
         MDLYR_I     27-30
         VIN       $ 31-41
         SPEC_USE    42-43
         EMCY_USE    44
         OCC_INVL    45-46
         SPEED       47-48
         FACTOR      49-50
         TRAILER     51
         JACKNIFE    52
         FIRE        53
         VEH_SEV     54
         TOWED       55
         V_EVENT     56-57
         V_EVNT_H    58-59
         P_CRASH1    60-61
         MANEUV_I    62-63
         VEH_ROLE    64
         VROLE_I     65
         ACC_TYPE    66-67
         IMPACT      68-69
         IMPACT_H    70-71
         DAM_AREA    72-76
         P_CRASH2    77-79
         P_CRASH3    80-81
         PCRASH4     82-83
         PCRASH5     84-85
         ROLLOVER    86-87
         C_ID_NO     88-93
         AXLES       94-95
         CARG_TYP    96-97
         HAZ_MAT     98
         HAZM_NO     99-102
         HAZ_MA_R    103
         MAX_VSEV    104
         MXVSEV_I    105
         NUM_INJV    106-107
         NUMINJ_I    108-109
         VEH_ALCH    110
         V_ALCH_I    111
         DR_PRES     112
         VIOLATN     113-114
         VLTN_I      115-116
         VIS_OBSC    117-118
         DRMAN_AV    119-120
         DR_DSTRD    121-122
         DR_ZIP_C    123-127
         SPEEDREL    128
         PSU         129-130
         PJ          131-133
         REGION      134
         STRATUM     135
         @ 136 WEIGHT 8.2;
RUN;
