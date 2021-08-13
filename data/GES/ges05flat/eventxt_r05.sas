/* THIS PROGRAM CREATES A FLAT FILE OF ALL THE EVENT LEVEL */
/* VARIABLES.   ALL FIELDS HAVE NUMERIC DATA. */

libname ges2005s 'c:\ruby2\ruby\ges\ges2005\final\send' ;
proc contents data=ges2005s.event; run;

FILENAME EVENT 'c:\ruby2\ruby\ges\ges2005\flat_files\EVENT.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET GES2005s.EVENT;
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
