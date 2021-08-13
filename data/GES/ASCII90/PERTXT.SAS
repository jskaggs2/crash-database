/* THIS PROGRAM CREATES A FLAT FILE FOR ALL THE PERSON LEVEL */
/* VARIABLES.  ALL FILES HAVE NUMERIC DATA. */

FILENAME PERSON 'R:\FILES\GES90\ANALYSIS\PERSON.TXT';

DATA _NULL_;
     SET GES90.PERSON(DROP=PSUSTRAT PSU_RCD);
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
         SEX        24-25
         SEX_H      26-27
         INJ_SEV    28
         INJSEV_H   29
         HOSPITAL   30
         PER_ALCH   31
         ALCH_H     32
         LOCATN     33-34
         REST_SYS   35
         REST_TYP   36
         PER_DRUG   37
         IMPAIRMT   38-39
         ACTION     40-41
         SAF_EQMT   42
         PJ         43-44
         PSU        45-46
         REGION     47
         @ 48 WEIGHT 8.2;
RUN;
