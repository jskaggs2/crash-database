/* THIS PROGRAM CREATES A FLAT FILE FOR ALL THE PERSON LEVEL */
/* VARIABLES.  ALL VARIABLES HAVE NUMERIC DATA. */

FILENAME PERSON 'R:\FILES\GES94\ANALYSIS\PERSON.TXT';

DATA _NULL_;
     SET GES94.PERSON(DROP=PSU_RCD PSUSTRAT);
     FILE PERSON;
     PUT CASENUM    1-8
         VEHNO      9-10
         PERNO      11-12
         PER_TYPE   13
         SEAT_POS   14-15
         SEAT_H     16-17
         EJECT      18
         EJECT_I    19
         AGE        20-21
         AGE_H      22-23
         SEX        24
         SEX_H      25
         INJ_SEV    26
         INJSEV_H   27
         HOSPITAL   28
         PER_ALCH   29
         PERALC_H   30
         LOCATN     31-32
         REST_SYS   33
         REST_TYP   34
         PER_DRUG   35
         IMPAIRMT   36-37
         ACTION     38-39
         SAF_EQMT   40
         AIRBAG     41
         STR_VEH    42-43
         PSU        44-45
         PJ         46-47
         REGION     48
         STRATUM    49
         @ 50 WEIGHT 8.2;
RUN;
