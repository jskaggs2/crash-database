/* THIS PROGRAM CREATES A FLAT FILE OF ALL THE VEHICLE LEVEL */
/* VARIABLES.  ALL FIELDS ARE NUMERIC DATA EXCEPT THE VIN */

LIBNAME GES98    'R:\FILES\GES98';
FILENAME VEHICLE 'R:\FILES\GES98\ANALYSIS\VEHICLE.TXT';
OPTION NOFMTERR;
DATA _NULL_;
     SET GES98.VEHICLE(DROP=PSU_RCD PSUSTRAT);
     FILE VEHICLE LRECL=143;
     PUT CASENUM     1-8
         VEHNO       9-10
         HIT_RUN     11
         HITRUN_I    12
         MAKE        13-14
         MODEL       15-17
         BODY_TYP    18-19
         BDYTYP_H    20-21
         MODEL_YR    22-25
         MDLYR_I     26-29
         VIN       $ 30-40
         SPEC_USE    41-42
         EMCY_USE    43
         OCC_INVL    44-45
         SPEED       46-47
         FACTOR      48-49
         TRAILER     50
         JACKNIFE    51
         FIRE        52
         VEH_SEV     53
         TOWED       54
         V_EVENT     55-56
         V_EVNT_H    57-58
         P_CRASH1    59-60
         MANEUV_I    61-62
         VEH_ROLE    63
         VROLE_I     64
         ACC_TYPE    65-66
         IMPACT      67-68
         IMPACT_H    69-70
         DAM_AREA    71-75
         P_CRASH2    76-78
         P_CRASH3    79-80
         PCRASH4     81-82
         PCRASH5     83-84
         ROLLOVER    85-86
         C_ID_NO     87-92
         AXLES       93-94
         CARG_TYP    95-96
         HAZ_MAT     97
         HAZM_NO     98-102
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
