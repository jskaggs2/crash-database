/* THIS PROGRAM CREATES A FLAT FILE OF ALL THE VEHICLE LEVEL */
/* VARIABLES.  ALL FIELDS ARE NUMERIC DATA EXCEPT THE VIN */

LIBNAME GES93 V604   'R:\FILES\GES93';
LIBNAME LIBRARY V608 'R:\GESFMTS\GES93';
FILENAME VEHICLE 'R:\FILES\GES93\ANALYSIS\VEHICLE.TXT';

DATA _NULL_;
     SET GES93.VEHICLE;
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
         FIRE        48
         VEH_SEV     49
         TOWED       50
         V_EVENT     51-52
         V_EVNT_H    53-54
         P_CRASH1    55-56
         MANEUV_I    57-58
         VEH_ROLE    59
         VROLE_I     60
         ACC_TYPE    61-62
         IMPACT      63-64
         IMPACT_H    65-66
         DAM_AREA    67-71
         P_CRASH2    72-73
         P_CRASH3    74-75
         P_CRASH4    76-77
         P_CRASH5    78-79
         ROLLOVER    80-81
         C_ID_NO     82-87
         AXLES       88-89
         CARG_TYP    90-91
         HAZ_MAT     92
         HAZM_NO     93-97
         HAZ_MA_R    98
         MAX_VSEV    99
         MXVSEV_I    100
         NUM_INJV    101-102
         NUMINJ_I    103-104
         VEH_ALCH    105
         V_ALCH_I    106
         DR_PRES     107
         VIOLATN     108-109
         VLTN_I      110-111
         VIS_OBSC    112-113
         DRMAN_AV    114-115
         DR_DSTRD    116-117
         DR_ZIP_C    118-122
         PSU         123-124
         PJ          125-126
         REGION      127
         STRATUM     128
         @ 129 WEIGHT 8.2;
RUN;
