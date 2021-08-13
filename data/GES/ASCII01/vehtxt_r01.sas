/* THIS PROGRAM CREATES A FLAT FILE OF ALL THE VEHICLE LEVEL */
/* VARIABLES.  ALL FIELDS ARE NUMERIC DATA EXCEPT THE VIN */

FILENAME VEHICLE 'd:\ges\ges2001\imputed01\VEHICLE.TXT';
OPTION NOFMTERR;
DATA _NULL_;
     SET GES2001.VEHICLE;
     FILE VEHICLE LRECL=155;
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
         SPEED       47-49
         FACTOR      50-51
         TRAILER     52
         JACKNIFE    53
         FIRE        54
         VEH_SEV     55
         TOWED       56
         V_EVENT     57-58
         V_EVNT_H    59-60
         P_CRASH1    61-62
         MANEUV_I    63-64
         VEH_ROLE    65
         VROLE_I     66
         ACC_TYPE    67-68
         IMPACT      69-70
         IMPACT_H    71-72
         DAM_AREA    73-77
         P_CRASH2    78-80
         P_CRASH3    81-82
         PCRASH4     83-84
         PCRASH5     85-86
         ROLLOVER    87-88
         C_ID_NO     89-94
         AXLES       95-96
         CARG_TYP    97-98
         HAZ_MAT     99
         HAZM_NO     100-103
         HAZ_MA_R    104
         MAX_VSEV    105
         MXVSEV_I    106
         NUM_INJV    107-108
         NUMINJ_I    109-110
         VEH_ALCH    111
         V_ALCH_I    112
         DR_PRES     113
         VIOLATN     114-115
         VLTN_I      116-117
         VIS_OBSC    118-119
         DRMAN_AV    120-121
         DR_DSTRD    122-123
         DR_ZIP_C    124-128
         SPEEDREL    129
         PSU         130-131
         PJ          132-134
         REGION      135
         STRATUM     136
         MHENUM      137-138
         @ 139 WEIGHT 8.2;
RUN;
