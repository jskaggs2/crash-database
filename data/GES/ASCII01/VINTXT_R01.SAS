*******************************************************************;
**              --     GESF94.SAS    ---                        ***;
**   SAS Program to convert 1999 GES Files to SAS Format        ***;
**      using SAS PC.                                           ***;
**                                                              ***;
*******************************************************************;
   FILENAME GESTPL  'R:\FILES\GES01\ANALYSIS\VINVEH.TXT';
   LIBNAME  GESDATA v6 'R:\FILES\GES01';
   LIBNAME  LIBRARY  'R:\GESFMTS\GES01';
   options nofmterr;

*******************************************************************;
**                                                              ***;
**  Note: The LIBRARY is needed only if GES Formats are made    ***;
**        part of the input statement (see end of program).     ***;
**                                                              ***;
*******************************************************************;

DATA gesdata.vinveh;
INFILE GESTPL;


INPUT            @1  CASENUM       10.      @11   VEHNO       2.
                 @13 VINTYPE        1.      @14  VIN_MAKE     2.
                 @16 NCIC_COD      $4.      @21  VINA_MOD    $3.
                 @24 SER_TR        $3.      @27  VINYR        4.
                 @31 PRICE          5.
                 @36 TIRE_SZE      $6.
                 @42 WHBAS          4.      @46  MAXWHBAS     4.
                 @50 BODYTYPE      $2.      @52  DISPLACE     4.
                 @56 CYLINDER       2.      @58  CARBUR      $1.
                 @59 FLDCD          1.      @60  GVWR         1.
                 @61 TRKTOTWH       1.      @62  DR_WHLS      1.
                 @63 TON_RAT       $2.
                 @65 SH_WGT         5.      @70  TRKWTVAR     2.
                 @72 MCYCL_DS       4.      @76  MCYCL_CY    $1.
                 @77 ABS            1.      @78  FRONT_WD     1.
                 @79 FOUR_WD        1.      @80  RESTRAIN     $2.;

LABEL
         CASENUM='Case Number'
         VEHNO='Vehicle Number'
         VINTYPE='Vehicle Type'
         VIN_MAKE='Vehicle Make'
         NCIC_COD='NCIC Vehicle Code'
         VINA_MOD='Vin Model'
         SER_TR='Truck Series Code'
         VINYR='Model Year (VIN Derived)'
         PRICE='List Price'
         TIRE_SZE='Original Tire Size'
         WHBAS='Wheel Base'
         MAXWHBAS='Longest Wheel Base'
         BODYTYPE='VIN Derived Body Type'
         DISPLACE='Cubic Inch Displacement'
         CYLINDER='Number of Cylinders'
         CARBUR='Carburetion'
         FLDCD='Fuel Code'
         GVWR='Gross Veh Weight'
         TRKTOTWH='Number of Wheels'
         DR_WHLS='# of Driving Wheels'
         TON_RAT='Truck Ton Rating'
         SH_WGT='Shipping Weight'
         TRKWTVAR='Shipping Weight Variance'
         MCYCL_DS='Motorcycle Engine Displacement'
         MCYCL_CY='Motorcycle Engine Cycles'
         ABS='AntiLock Braking System'
         FRONT_WD='Front Wheel Drive'
         FOUR_WD='Four Wheel Drive'
         RESTRAIN='Restraint Type';

FORMAT           VINTYPE     X1Z.       VIN_MAKE     X2Z.          NCIC_COD  $X3Z.
                 VINA_MOD   $X4Z.       SER_TR      $X5Z.          VINYR      X6Z.
                 PRICE       X7Z.        TIRE_SZE   $X8Z.           WHBAS     X9Z.
                 MAXWHBAS    X10Z.       BODYTYPE   $X11Z.          DISPLACE  X12Z.
                 CYLINDER      X13Z.      CARBUR     $X14Z.          FLDCD      X15Z.
                 GVWR        X16Z.      TRKTOTWH    X17Z.          DR_WHLS    X18Z.
                 TON_RAT    $X19Z.      SH_WGT      X21Z.
                 TRKWTVAR    X22Z.      MCYCL_DS    X23Z.          MCYCL_CY   $X24Z.
                 ABS         X25Z.      FRONT_WD    X26Z.          FOUR_WD    X27Z.
                 RESTRAIN    $X28Z.;
IF RESTRAIN='' THEN RESTRAIN=' 9';
if price eq . then price=99999;
if fldcd=. then fldcd=10;
RUN;

libname ges01 'r:\files\ges01';

proc sort data=gesdata.vinveh;
by casenum vehno;
run;

proc sort data=ges01.vehicle out=vehicle;
by casenum vehno;
run;

data test;
merge gesdata.vinveh vehicle;
by casenum vehno;
run;

proc freq data=gesdata.vinveh;
table fldcd;
run;

