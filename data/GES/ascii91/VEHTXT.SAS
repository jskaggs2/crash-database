/* THIS PROGRAM CREATES A FLAT FILE OF ALL THE VEHICLE LEVEL */
/* VARIABLES.  ALL FIELDS ARE NUMERIC DATA EXCEPT THE VIN */

FILENAME VEHICLE 'R:\FILES\GES91\ANALYSIS\VEHICLE.TXT';

DATA _NULL_;
     SET GES91.VEHICLE;
     FILE VEHICLE;
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
         SPEC_USE    37
         EMCY_USE    38
         OCC_INVL    39-40
         SPEED       41-42
         DEFECT      43-44
         TRAILER     45
         JACKNIFE    46
         ROLLOVER    47
         FIRE        48
         VEH_SEV     49
         TOWED       50
         V_EVENT     51-52
         V_EVNT_H    53-54
         MANEUVER    55-56
         MANEUV_I    57-58
         VEH_ROLE    59
         VROLE_I     60
         ACC_TYPE    61-62
         IMPACT      63-64
         IMPACT_H    65-66
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
         PSU         88-89
         PJ          90-91
         STRATUM     92
         REGION      93
         @ 94 WEIGHT 8.2;
RUN;
