/* THIS PROGRAM CREATES A FLAT FILE FOR ALL THE Multi-response files */
/* VARIABLES */

libname ges2005s 'c:\ruby2\ruby\ges\ges2005\final\send' ;
proc contents data=ges2005s.biketraf; run;
proc contents data=ges2005s.distract; run;
proc contents data=ges2005s.factor; run;
proc contents data=ges2005s.impair; run;
proc contents data=ges2005s.maneuver; run;
proc contents data=ges2005s.nmaction; run;
proc contents data=ges2005s.safetyeq; run;
proc contents data=ges2005s.trafcon; run;
proc contents data=ges2005s.violatn; run;
proc contents data=ges2005s.vision; run;

FILENAME BIKETRAF 'c:\ruby2\ruby\ges\ges2005\flat_files\BIKETRAF.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET ges2005s.BIKETRAF;
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

FILENAME DISTRACT 'c:\ruby2\ruby\ges\ges2005\flat_files\DISTRACT.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET ges2005s.DISTRACT;
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

FILENAME FACTOR 'c:\ruby2\ruby\ges\ges2005\flat_files\FACTOR.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET ges2005s.FACTOR;
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

FILENAME SAFETYEQ 'c:\ruby2\ruby\ges\ges2005\flat_files\SAFETYEQ.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET ges2005s.SAFETYEQ;
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

FILENAME IMPAIR 'c:\ruby2\ruby\ges\ges2005\flat_files\IMPAIR.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET ges2005s.IMPAIR;
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

FILENAME NMACTION 'c:\ruby2\ruby\ges\ges2005\flat_files\NMACTION.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET ges2005s.NMACTION;
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

FILENAME MANEUVER 'c:\ruby2\ruby\ges\ges2005\flat_files\MANEUVER.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET ges2005s.MANEUVER;
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

FILENAME TRAFCON 'c:\ruby2\ruby\ges\ges2005\flat_files\TRAFCON.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET ges2005s.TRAFCON;
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

FILENAME VIOLATN 'c:\ruby2\ruby\ges\ges2005\flat_files\VIOLATN.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET ges2005s.VIOLATN;
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

FILENAME VISION 'c:\ruby2\ruby\ges\ges2005\flat_files\VISION.TXT';
OPTION NOFMTERR;

DATA _NULL_;
     SET ges2005s.VISION;
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

