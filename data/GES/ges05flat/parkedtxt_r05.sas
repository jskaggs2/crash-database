/* THIS PROGRAM CREATES A FLAT FILE OF ALL THE VEHICLE LEVEL */
/* VARIABLES.  ALL FIELDS ARE NUMERIC DATA EXCEPT THE VIN */

libname ges2005s 'c:\ruby2\ruby\ges\ges2005\final\send' ;
proc contents data=ges2005s.parked; run;

FILENAME PARKED 'c:\ruby2\ruby\ges\ges2005\flat_files\PARKED.TXT';
OPTION NOFMTERR; run;
DATA _NULL_;
     SET GES2005s.PARKED;
     FILE PARKED LRECL=200;
     PUT CASENUM     1-12
         PVEHNO      13-14
         PMAKE       15-16
         PMODEL      17-19
         PBODYTYP    20-21
         PMODELYR    22-25
         PVIN      $ 26-36
         PSP_USE     37-38
         PEM_USE     39
         POCCINVL    40-41
         PTRAILER    42
         PFIRE       43
         PVEH_SEV    44
         PTOWED      45
         PIMPACT     46-47
         PROLLOVR    48-49
         PCARIDNO  $ 50-58
         PAXLES      59-60
         PCARGTYP    61-62
         PHAZ_MAT    63
         PHAZM_NO    64-67
         PHAZMA_R    68
         PSU         69-70
         PJ          71-73
         REGION      74
         STRATUM     75
		 PNUMOCCS    76-78
		 PREL_RWY    79-80
		 PTYPE       81
         @ 83 WEIGHT 8.2;
RUN;
