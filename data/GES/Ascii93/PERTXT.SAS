/* THIS PROGRAM CREATES A FLAT FILE FOR ALL THE PERSON LEVEL */
/* VARIABLES.  ALL VARIABLES HAVE NUMERIC DATA. */

FILENAME PERSON 'R:\FILES\GES93\ANALYSIS\PERSON.TXT';

DATA _NULL_;
     SET GES93.PERSON;
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
         ALCH_H     30
         LOCATN     31-32
         REST_SYS   33
         REST_TYP   34
         PER_DRUG   35
         IMPAIRMT   36-37
         ACTION     38-39
         SAF_EQMT   40
         AIRBAG     41
         PSU        42-43
         PJ         44-45
         REGION     46
         STRATUM    47
         @ 48 WEIGHT 8.2;
RUN;
