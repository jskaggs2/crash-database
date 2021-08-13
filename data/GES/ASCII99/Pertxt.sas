/* THIS PROGRAM CREATES A FLAT FILE FOR ALL THE PERSON LEVEL */
/* VARIABLES.  ALL VARIABLES HAVE NUMERIC DATA. */

FILENAME PERSON 'd:\ges\ges99\ges1999flat\PERSON.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET GES99.PERSON;
     FILE PERSON;
     PUT CASENUM    1-9
         VEHNO      10-11
         PERNO      12-13
         PER_TYPE   14
         SEAT_POS   15-16
         SEAT_H     17-18
         EJECT      19
         EJECT_I    20
         AGE        21-22
         AGE_H      23-24
         SEX        25
         SEX_H      26
         INJ_SEV    27
         INJSEV_H   28
         HOSPITAL   29
         PER_ALCH   30
         PERALC_H   31
         LOCATN     32-33
         REST_SYS   34

         PER_DRUG   36
         IMPAIRMT   37-38
         ACTION     39-40
         SAF_EQMT   41
         AIRBAG     42
         STR_VEH    43-44
         PSU        45-46
         PJ         47-49
         REGION     50
         STRATUM    51
         @ 52 WEIGHT 8.2;
RUN;
