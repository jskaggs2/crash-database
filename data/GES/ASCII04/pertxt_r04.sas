/* THIS PROGRAM CREATES A FLAT FILE FOR ALL THE PERSON LEVEL */
/* VARIABLES.  ALL VARIABLES HAVE NUMERIC DATA. */

libname ges2004s 'c:\ruby2\ruby\ges\ges2004\ges_full_send' ;run;
proc contents data=ges2004s.person; run;

FILENAME PERSON 'c:\ruby2\ruby\ges\ges2004\flat_files\PERSON.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET GES2004s.PERSON;
     FILE PERSON;
     PUT CASENUM    1-12
         VEHNO      13-14
         PERNO      15-16
         PER_TYPE   17
         SEAT_POS   18-19
         SEAT_H     20-21
         EJECT      22
         EJECT_I    23
         AGE        24-26
         AGE_H      27-29
         SEX        30
         SEX_H      31
         INJ_SEV    32
         INJSEV_H   33
         HOSPITAL   34
         PER_ALCH   35
         PERALC_H   36
         LOCATN     37-38
         REST_SYS   39
         PER_DRUG   40
         IMPAIRMT   41-42
         ACTION     43-44
         SAF_EQMT   45
         AIRBAG     46
         STR_VEH    47-48
         PSU        49-50
         PJ         51-53
         REGION     54
         STRATUM    55
         @ 56 WEIGHT 8.2;
RUN;
