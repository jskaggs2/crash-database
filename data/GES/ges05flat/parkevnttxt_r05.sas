/* THIS PROGRAM CREATES A FLAT FILE OF ALL THE EVENT LEVEL */
/* VARIABLES.   ALL FIELDS HAVE NUMERIC DATA. */

libname ges2005s 'c:\ruby2\ruby\ges\ges2005\final\send' ;
proc contents data=ges2005s.parkevnt; run;

FILENAME PARKEVNT 'c:\ruby2\ruby\ges\ges2005\flat_files\PARKEVNT.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET GES2005s.PARKEVNT;
     FILE PARKEVNT;
     PUT CASENUM     1-12
         EVENTNUM    13-14
         PVEHNO      15-16
         PGAD        17-18
         PSU         19-20
         PJ          21-23
         REGION      24
         STRATUM     25
         @ 28 WEIGHT 8.2 ;
RUN;
