/* THIS PROGRAM CREATES A FLAT FILE FOR ALL THE PERSON LEVEL */
/* VARIABLES.  ALL VARIABLES HAVE NUMERIC DATA. */

FILENAME PERSON 'd:\ges\ges2001\imputed01\PERSON.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET GES2001.PERSON;
     FILE PERSON;
     PUT CASENUM    1-9
         VEHNO      10-11
         PERNO      12-13
         PER_TYPE   14
         SEAT_POS   15-16
         SEAT_H     17-18
         EJECT      19
         EJECT_I    20
         AGE        21-23
         AGE_H      24-26
         SEX        27
         SEX_H      28
         INJ_SEV    29
         INJSEV_H   30
         HOSPITAL   31
         PER_ALCH   32
         PERALC_H   33
         LOCATN     34-35
         REST_SYS   36

         PER_DRUG   37
         IMPAIRMT   38-39
         ACTION     40-41
         SAF_EQMT   42
         AIRBAG     43
         STR_VEH    44-45
         PSU        46-47
         PJ         48-50
         REGION     51
         STRATUM    52
         @ 54 WEIGHT 8.2;
RUN;
