/* THIS PROGRAM CREATES A FLAT FILE OF ALL THE VEHICLE LEVEL */
/* VARIABLES.  ALL FIELDS ARE NUMERIC DATA EXCEPT THE VIN */

LIBNAME GES95   'c:\ges95q4u';
FILENAME VEHICLE    'c:\ges95q4u\VEHICLE.TXT';
OPTION NOFMTERR;
DATA _NULL_;
     SET GES95.VEH95_hi(DROP=PSU_RCD PSUSTRAT);
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
         P_CRASH2    72-74
         P_CRASH3    75-76
         P_CRASH4    77-78
         P_CRASH5    79-80
         ROLLOVER    81-82
         C_ID_NO     83-88
         AXLES       89-90
         CARG_TYP    91-92
         HAZ_MAT     93
         HAZM_NO     94-98
         HAZ_MA_R    99
         MAX_VSEV    100
         MXVSEV_I    101
         NUM_INJV    102-103
         NUMINJ_I    104-105
         VEH_ALCH    106
         V_ALCH_I    107
         DR_PRES     108
         VIOLATN     109-110
         VLTN_I      111-112
         VIS_OBSC    113-114
         DRMAN_AV    115-116
         DR_DSTRD    117-118
         DR_ZIP_C    119-123
         PSU         124-125
         PJ          126-128
         REGION      129
         STRATUM     130
         @ 131 WEIGHT 8.2;
RUN;
