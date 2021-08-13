/* THIS PROGRAM CREATES A FLAT FILE OF ALL THE EVENT LEVEL */
/* VARIABLES.   ALL FIELDS HAVE NUMERIC DATA. */

FILENAME EVENT 'd:\ges\ges2001\imputed01\EVENT.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET GES2001.EVENT;
     FILE EVENT;
     PUT CASENUM     1-9
         EVENTNUM    10-11
         VEHNUM      12-13
         GAD         14-15
         OBJCONT     16-18
         OBJGAD      19-20
         PSU         21-22
         PJ          23-25
         REGION      26
         STRATUM     27
         @ 29 WEIGHT 8.2 ;
RUN;
