/* THIS PROGRAM CREATES A FLAT FILE OF ALL THE VEHICLE LEVEL */
/* VARIABLES.  ALL FIELDS ARE NUMERIC DATA EXCEPT THE VIN */

FILENAME VEHICLE 'R:\FILES\GES88\ANALYSIS\VEHICLE.TXT';

DATA _NULL_;
     SET GES88.VEHICLE;
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
         OCC_COD     65-66
         DAM_AR_H    67
         DAM_AREA    68
         MAX_VSEV    69
         MXVSEV_I    70
         NUM_INJV    71-72
         VEH_ALCH    73
         DR_PRES     74
         VIOLATN     75-76
         VLTN_I      77-78
         VIS_OBSC    79-80
         DR_IMPMT    81-82
         DR_ACT      83-84
         OCC_COD     85-86
         PJ          87-88
         PSU         89-90
         STRATUM     91
         REGION      92
         @ 93 WEIGHT 8.2;
RUN;
