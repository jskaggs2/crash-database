/* THIS PROGRAM CREATES A FLAT FILE FOR ALL THE Multi-response files */
/* VARIABLES */

libname ges2002f 'e:\ruby\ges\ges2002\fromlanforflat'; run;
proc contents data=ges2002f.biketraf; run;
proc contents data=ges2002f.distract; run;
proc contents data=ges2002f.factor; run;
proc contents data=ges2002f.impair; run;
proc contents data=ges2002f.maneuver; run;
proc contents data=ges2002f.nmaction; run;
proc contents data=ges2002f.safetyeq; run;
proc contents data=ges2002f.trafcon; run;
proc contents data=ges2002f.violatn; run;
proc contents data=ges2002f.vision; run;

FILENAME BIKETRAF 'e:\ruby\ges\ges2002\fromlanforflat\BIKETRAF.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET GES2002f.BIKETRAF;
     FILE BIKETRAF;
     PUT CASENUM    1-12
         PERNO      13-14
         BTRAFCON   15-16
         PSU        17-18
         PJ         19-21
         REGION     22
         STRATUM    23
         @ 24 WEIGHT 8.2;
RUN;

FILENAME DISTRACT 'e:\ruby\ges\ges2002\fromlanforflat\DISTRACT.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET GES2002f.DISTRACT;
     FILE DISTRACT;
     PUT CASENUM    1-12
         VEHNO      13-14
         MDRDSTRD   15-16
         PSU        17-18
         PJ         19-21
         REGION     22
         STRATUM    23
         @ 24 WEIGHT 8.2;
RUN;

FILENAME FACTOR 'e:\ruby\ges\ges2002\fromlanforflat\FACTOR.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET GES2002f.FACTOR;
     FILE FACTOR;
     PUT CASENUM    1-12
         VEHNO      13-14
         MFACTOR    15-16
         PSU        17-18
         PJ         19-21
         REGION     22
         STRATUM    23
         @ 24 WEIGHT 8.2;
RUN;

FILENAME SAFETYEQ 'e:\ruby\ges\ges2002\fromlanforflat\SAFETYEQ.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET GES2002f.SAFETYEQ;
     FILE SAFETYEQ;
     PUT CASENUM    1-12
         PERNO      13-14
         MSAFEQMT   15-16
         PSU        17-18
         PJ         19-21
         REGION     22
         STRATUM    23
         @ 24 WEIGHT 8.2;
RUN;

FILENAME IMPAIR 'e:\ruby\ges\ges2002\fromlanforflat\IMPAIR.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET GES2002f.IMPAIR;
     FILE IMPAIR;
     PUT CASENUM    1-12
         VEHNO      13-14
		 PERNO      15-16
         MIMPAIR    17-18
         PSU        19-20
         PJ         21-23
         REGION     24
         STRATUM    25
         @ 26 WEIGHT 8.2;
RUN;

FILENAME NMACTION 'e:\ruby\ges\ges2002\fromlanforflat\NMACTION.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET GES2002f.NMACTION;
     FILE NMACTION;
     PUT CASENUM    1-12
         VEHNO      13-14
		 PERNO      15-16
         MACTION    17-18
         PSU        19-20
         PJ         21-23
         REGION     24
         STRATUM    25
         @ 26 WEIGHT 8.2;
RUN;

FILENAME MANEUVER 'e:\ruby\ges\ges2002\fromlanforflat\MANEUVER.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET GES2002f.MANEUVER;
     FILE MANEUVER;
     PUT CASENUM    1-12
         VEHNO      13-14
         MDRMANAV   15-16
         PSU        17-18
         PJ         19-21
         REGION     22
         STRATUM    23
         @ 24 WEIGHT 8.2;
RUN;

FILENAME TRAFCON 'e:\ruby\ges\ges2002\fromlanforflat\TRAFCON.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET GES2002f.TRAFCON;
     FILE TRAFCON;
     PUT CASENUM    1-12
         VEHNO      13-14
         MTRAFCON   15-16
         PSU        17-18
         PJ         19-21
         REGION     22
         STRATUM    23
         @ 24 WEIGHT 8.2;
RUN;

FILENAME VIOLATN 'e:\ruby\ges\ges2002\fromlanforflat\VIOLATN.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET GES2002f.VIOLATN;
     FILE VIOLATN;
     PUT CASENUM    1-12
         VEHNO      13-14
         MVIOLATN   15-16
         PSU        17-18
         PJ         19-21
         REGION     22
         STRATUM    23
         @ 24 WEIGHT 8.2;
RUN;

FILENAME VISION 'e:\ruby\ges\ges2002\fromlanforflat\VISION.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET GES2002f.VISION;
     FILE VISION;
     PUT CASENUM    1-12
         VEHNO      13-14
         MVISOBSC   15-16
         PSU        17-18
         PJ         19-21
         REGION     22
         STRATUM    23
         @ 24 WEIGHT 8.2;
RUN;

