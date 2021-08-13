/* THIS PROGRAM CREATES A FLAT FILE OF ALL THE VEHICLE LEVEL */
/* VARIABLES.  ALL FIELDS ARE NUMERIC DATA EXCEPT THE VIN */

FILENAME VEHICLE 'R:\FILES\GES92\ANALYSIS\VEHICLE.TXT';

DATA _NULL_;
     SET GES92.VEHICLE;
     FILE VEHICLE LRECL=138;
     PUT CASENUM     1-8
         VEHNO       9-10
         HIT_RUN     11
         HITRUN_I    12
         MAKE        13-14
         MODEL       15-17
         BODY_TYP    18-19
         BDYTYP_H    20-21
         MODEL_YR    22-23
         MDLYR_I     24-25
         VIN       $ 26-36
         SPEC_USE    37-38
         EMCY_USE    39
         OCC_INVL    40-41
         SPEED       42-43
         DEFECT      44-45
         TRAILER     46
         JACKNIFE    47
         FIRE        50
         VEH_SEV     51
         TOWED       52
         V_EVENT     53-54
         V_EVNT_H    55-56
         P_CRASH1    57-58
         MANEUV_I    59-60
         VEH_ROLE    61
         VROLE_I     62
         ACC_TYPE    63-64
         IMPACT      65-66
         IMPACT_H    67-68
         DAM_AREA    69-73
         P_CRASH2    74-75
         P_CRASH3    76-77
         P_CRASH4    78-79
         P_CRASH5    80-81
         ROLLOVER    82-83
         C_ID_NO     84-89
         AXLES       90-91
         CARG_TYP    92-93
         HAZ_MAT     94
         HAZM_NO     95-99
         HAZ_MA_R    100
         MAX_VSEV    101
         MXVSEV_I    102
         NUM_INJV    103-104
         NUMINJ_I    105-106
         VEH_ALCH    107
         V_ALCH_I    108
         DR_PRES     109
         VIOLATN     110-111
         VLTN_I      112-113
         VIS_OBSC    114-115
         DRMAN_AV    116-117
         DR_DSTRD    118-119
         DR_ZIP_C    120-124
         PSU         125-126
         PJ          127-128
         REGION      129
         STRATUM     130
         @ 131 WEIGHT 8.2;
RUN;
