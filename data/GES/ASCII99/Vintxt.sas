/* THIS PROGRAM CREATES A FLAT FILE OF ALL THE VIN-DECODED*/
/* VEHICLE LEVEL VARIABLES.*/

FILENAME VINVEH  'd:\ges\ges99\ges1999flat\VINVEH.TXT';
OPTION NOFMTERR;

DATA _NULL_;
         SET GES99.VINVEH;
         FILE VINVEH LRECL=142;
         PUT     CASENUM     2-10
                 VEHNO       12-13
                 VINTYPE     14
                 VIN_MAKE    15-16
                 NCIC_COD    $17-20
                 VINA_MOD    $22-24
                 SER_TR      $25-27
                 VINYR       28-29
                 PRICE       30-34
                 TIRE_SZE    $35-40
                 WHBAS       41-44
                 MAXWHBAS    45-48
                 BODYTYPE    $49-50
                 DISPLACE    51-54
                 CYLINDER    55-56
                 CARBUR      $57
                 FLDCD       58
                 GVWR        59
                 TRKTOTWH    60
                 DR_WHLS     61
                 TON_RAT    $62-63
                 SH_WGT      64-68
                 TRKWTVAR    69-70
                 MCYCL_DS    71-74
                 MCYCL_CY    75
                 ABS         76
                 FRONT_WD    77
                 FOUR_WD     78
                 RESTRAIN    80;
RUN;
