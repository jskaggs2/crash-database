
LIBNAME GES2011 'R:\FILES\GES11';

options nofmterr;

PROC EXPORT DATA= GES2011.ACCIDENT 
            OUTFILE= "R:\FILES\GES11\FlatFile\ACCIDENT.TXT" 
            DBMS=TAB REPLACE;
RUN;

PROC EXPORT DATA= GES2011.vehicle 
            OUTFILE= "R:\FILES\GES11\FlatFile\VEHICLE.TXT" 
            DBMS=TAB REPLACE;
RUN;

PROC EXPORT DATA= GES2011.parkwork 
            OUTFILE= "R:\FILES\GES11\FlatFile\PARKWORK.TXT" 
            DBMS=TAB REPLACE;
RUN;

PROC EXPORT DATA= GES2011.person 
            OUTFILE= "R:\FILES\GES11\FlatFile\PERSON.TXT" 
            DBMS=TAB REPLACE;
RUN;

PROC EXPORT DATA= GES2011.cevent
            OUTFILE= "R:\FILES\GES11\FlatFile\CEVENT.TXT" 
            DBMS=TAB REPLACE;
RUN;

PROC EXPORT DATA= GES2011.vevent
            OUTFILE= "R:\FILES\GES11\FlatFile\VEVENT.TXT" 
            DBMS=TAB REPLACE;
RUN;

PROC EXPORT DATA= GES2011.Vsoe 
            OUTFILE= "R:\FILES\GES11\FlatFile\VSOE.TXT" 
            DBMS=TAB REPLACE;
RUN;

PROC EXPORT DATA= GES2011.distract
            OUTFILE= "R:\FILES\GES11\FlatFile\DISTRACT.TXT" 
            DBMS=TAB REPLACE;
RUN;

PROC EXPORT DATA= GES2011.factor
            OUTFILE= "R:\FILES\GES11\FlatFile\FACTOR.TXT" 
            DBMS=TAB REPLACE;
RUN;

PROC EXPORT DATA= GES2011.safetyeq 
            OUTFILE= "R:\FILES\GES11\FlatFile\SAFETYEQ.TXT" 
            DBMS=TAB REPLACE;
RUN;

PROC EXPORT DATA= GES2011.drimpair
            OUTFILE= "R:\FILES\GES11\FlatFile\DRIMPAIR.TXT" 
            DBMS=TAB REPLACE;
RUN;

PROC EXPORT DATA= GES2011.nmimpair
            OUTFILE= "R:\FILES\GES11\FlatFile\NMIMPAIR.TXT" 
            DBMS=TAB REPLACE;
RUN;

PROC EXPORT DATA= GES2011.nmcrash
            OUTFILE= "R:\FILES\GES11\FlatFile\NMCRASH.TXT" 
            DBMS=TAB REPLACE;
RUN;

PROC EXPORT DATA= GES2011.nmprior
            OUTFILE= "R:\FILES\GES11\FlatFile\NMPRIOR.TXT" 
            DBMS=TAB REPLACE;
RUN;

PROC EXPORT DATA= GES2011.maneuver
            OUTFILE= "R:\FILES\GES11\FlatFile\MANEUVER.TXT" 
            DBMS=TAB REPLACE;
RUN;

PROC EXPORT DATA= GES2011.violatn
            OUTFILE= "R:\FILES\GES11\FlatFile\VIOLATN.TXT" 
            DBMS=TAB REPLACE;
RUN;

PROC EXPORT DATA= GES2011.vision
            OUTFILE= "R:\FILES\GES11\FlatFile\VISION.TXT" 
            DBMS=TAB REPLACE;
RUN;

PROC EXPORT DATA=GES2011.pbtype
            OUTFILE = "R:\FILES\GES11\FlatFile\PBTYPE.TXT" 
            DBMS=TAB REPLACE;
RUN;
