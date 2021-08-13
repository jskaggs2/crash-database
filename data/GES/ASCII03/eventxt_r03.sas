/* THIS PROGRAM CREATES A FLAT FILE OF ALL THE EVENT LEVEL */
/* VARIABLES.   ALL FIELDS HAVE NUMERIC DATA. */

libname ges2003 'e:\ruby\ges\ges2003\ges2003final';
proc contents data=ges2003.event; run;

FILENAME EVENT 'e:\ruby\ges\ges2003\flat_files\EVENT.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET GES2003.EVENT;
     FILE EVENT;
     PUT CASENUM     1-12
         EVENTNUM    13-14
         VEHNUM      15-16
         GAD         17-18
         OBJCONT     19-21
         OBJGAD      22-23
         PSU         24-25
         PJ          26-28
         REGION      29
         STRATUM     30
		 E_ACTION    31
         @ 33 WEIGHT 8.2 ;
RUN;
