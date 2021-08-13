/* THIS PROGRAM CREATES A FLAT FILE FOR ALL THE Multi-response files */
/* VARIABLES */

libname ges2003 'e:\ruby\ges\ges2003\ges2003final'; run;
proc contents data=ges2003.biketraf; run;
proc contents data=ges2003.distract; run;
proc contents data=ges2003.factor; run;
proc contents data=ges2003.impair; run;
proc contents data=ges2003.maneuver; run;
proc contents data=ges2003.nmaction; run;
proc contents data=ges2003.safetyeq; run;
proc contents data=ges2003.trafcon; run;
proc contents data=ges2003.violatn; run;
proc contents data=ges2003.vision; run;

FILENAME BIKETRAF 'e:\ruby\ges\ges2003\flat_files\BIKETRAF.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET GES2003.BIKETRAF;
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

FILENAME DISTRACT 'e:\ruby\ges\ges2003\flat_files\DISTRACT.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET GES2003.DISTRACT;
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

FILENAME FACTOR 'e:\ruby\ges\ges2003\flat_files\FACTOR.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET GES2003.FACTOR;
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

FILENAME SAFETYEQ 'e:\ruby\ges\ges2003\flat_files\SAFETYEQ.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET GES2003.SAFETYEQ;
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

FILENAME IMPAIR 'e:\ruby\ges\ges2003\flat_files\IMPAIR.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET GES2003.IMPAIR;
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

FILENAME NMACTION 'e:\ruby\ges\ges2003\flat_files\NMACTION.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET GES2003.NMACTION;
     FILE NMACTION;
     PUT CASENUM    1-12
         PERNO      13-14
		 MACTION    15-16
         PSU        17-18
         PJ         19-21
         REGION     22-23
         STRATUM    24
         @ 25 WEIGHT 8.2;
RUN;

FILENAME MANEUVER 'e:\ruby\ges\ges2003\flat_files\MANEUVER.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET GES2003.MANEUVER;
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

FILENAME TRAFCON 'e:\ruby\ges\ges2003\flat_files\TRAFCON.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET GES2003.TRAFCON;
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

FILENAME VIOLATN 'e:\ruby\ges\ges2003\flat_files\VIOLATN.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET GES2003.VIOLATN;
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

FILENAME VISION 'e:\ruby\ges\ges2003\flat_files\VISION.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET GES2003.VISION;
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

