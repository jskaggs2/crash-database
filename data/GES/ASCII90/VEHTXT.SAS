/* THIS PROGRAM CREATES A FLAT FILE OF ALL THE VEHICLE LEVEL */
/* VARIABLES.  ALL FIELDS ARE NUMERIC DATA EXCEPT THE VIN */

FILENAME VEHICLE 'R:\FILES\GES90\ANALYSIS\VEHICLE.TXT';

DATA _NULL_;
     SET GES90.VEHICLE(DROP=PSUSTRAT PSU_RCD);
     FILE VEHICLE;
     PUT CASENUM     1-8
         VEHNO       9-10
         HIT_RUN     11
         HITRUN_I    12
         MAKE        15-16
         MODEL       17-19
         BODY_TYP    20-21
         BDYTYP_H    22-23
         MODEL_YR    24-25
         MDLYR_I     26-27
         VIN       $ 28-38
         SPEC_USE    39
         EMCY_USE    40
         OCC_INVL    41-42
         SPEED       43-44
         DEFECT      45-46
         TRAILER     47
         JACKNIFE    48
         ROLLOVER    49
         FIRE        50
         VEH_SEV     51
         TOWED       52
         V_EVENT     53-54
         V_EVNT_H    55-56
         MANEUVER    57-58
         MANEUV_I    59-60
         VEH_ROLE    61
         VROLE_I     62
         ACC_TYPE    63-64
         IMPACT      65
         IMPACT_H    66
         DAM_AREA    67-71
         MAX_VSEV    72
         MXVSEV_I    73
         NUM_INJV    74-75
         VEH_ALCH    76
         DR_PRES     77
         VIOLATN     78-79
         VLTN_I      80-81
         VIS_OBSC    82-83
         DRMAN_AV    84-85
         DR_DSTRD    86-87
         PJ          88-89
         PSU         90-91
         REGION      92
         @ 93 WEIGHT 8.2;
RUN;
