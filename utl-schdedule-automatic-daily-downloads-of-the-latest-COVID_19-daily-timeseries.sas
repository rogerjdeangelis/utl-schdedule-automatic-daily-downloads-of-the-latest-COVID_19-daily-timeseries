Schdedule-automatic-daily-downloads of the latest COV-19 daily timeseries

%let pgm=vus_100c19;

   github
   https://tinyurl.com/qny3yzm
   https://github.com/rogerjdeangelis/utl-schdedule-automatic-daily-downloads-of-the-latest-COVID_19-daily-timeseries

   Github site with data  (Johns Hopkins )

      https://github.com/CSSEGISandData/COVID-19

   Run the code below daily yo get the latest data on the COV-19 virus

   You will need this folder structure

       d:/vus
       d;/vus/csv

   You will need this macro

       %macro dosubl(arg);
         %let rc=%qsysfunc(dosubl(&arg));
       %mend dosubl;


     Steps to get detail daily time series of COV-19 cases into SAS tables


        a. Run the sas copy code below which automatically downloads the three csv located at Johns Hopkins

        b. Convert the CSV Confirmed, Deaths and REcoverd csvs to SAS Tables

        c. Convert the SAS tables to excel sheets

        d. normalize


*                      _              _                     _                 _
  __ _      __ _ _   _| |_ ___     __| | _____      ___ __ | | ___   __ _  __| |
 / _` |    / _` | | | | __/ _ \   / _` |/ _ \ \ /\ / / '_ \| |/ _ \ / _` |/ _` |
| (_| |_  | (_| | |_| | || (_) | | (_| | (_) \ V  V /| | | | | (_) | (_| | (_| |
 \__,_(_)  \__,_|\__,_|\__\___/   \__,_|\___/ \_/\_/ |_| |_|_|\___/ \__,_|\__,_|
;


       q. Run the sas copy code below which automatically downloads the three csv located at

          https://tinyurl.com/rdhb7ns
          https://tinyurl.com/te9thtv
          https://tinyurl.com/rdfpe9n

          Long for for urls

          https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_19-covid-Confirmed.csv
          https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_19-covid-Deaths.csv
          https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_19-covid-Recovered.csv

          /*---------------------------------------------------------------------------------------------*/
          /*  Copy                                                                                       */
          /*   time_series_19-covid-Confirmed.csv ->  d;/vus/csv/time_series_19-covid-Confirmed.csv      */
          /*   time_series_19-covid-Deaths.csv    ->  d;/vus/csv/time_series_19-covid-Deaths.csv         */
          /*   time_series_19-covid-Confirmed,csv ->  d:/vus/csv/time_series_19-covid-Recovered.csv      */
          /*---------------------------------------------------------------------------------------------*/


          filename out 'd:/vus/csv/time_series_19-covid-Confirmed.csv';
          proc http
            method = 'GET'
            url    = 'https://tinyurl.com/rdhb7ns'
            out    =  out;
          run;quit;


          filename out 'd:/vus/csv/time_series_19-covid-Deaths.csv';
          proc http
            method = 'GET'
            url    = 'https://tinyurl.com/te9thtv'
            out    =  out;
          run;quit;


          filename out 'd:/vus/csv/time_series_19-covid-Recovered.csv';
          proc http
            method = 'GET'
            url    = 'https://tinyurl.com/rdfpe9n'
            out    =  out;
          run;quit;

*_                        _        _     _
| |__     ___  __ _ ___  | |_ __ _| |__ | | ___  ___
| '_ \   / __|/ _` / __| | __/ _` | '_ \| |/ _ \/ __|
| |_) |  \__ \ (_| \__ \ | || (_| | |_) | |  __/\__ \
|_.__(_) |___/\__,_|___/  \__\__,_|_.__/|_|\___||___/

;
          /*----------------------------------------*/
          /*  Create SAS Tables                     */
          /*        vus.&pgm.20200319Confirmrd      */
          /*        vus.&pgm.20200319Deaths         */
          /*        vus.&pgm.20200319Recoverd       */
          /*----------------------------------------*/

           /* unfortunatel this does not work
              libname cma csv "d:/vus/csv/time_series_19-covid-Confirmed.csv";
              ERROR: The CSV engine cannot be found.
           */

          libname vus "d:/vus";

          options validvarname=any;

          proc import datafile="d:/vus/csv/time_series_19-covid-Confirmed.csv" out=vus.&pgm.20200319Confirmed dbms=csv replace; run;quit;
          proc import datafile="d:/vus/csv/time_series_19-covid-Deaths.csv"    out=vus.&pgm.20200319Deaths    dbms=csv replace; run;quit;
          proc import datafile="d:/vus/csv/time_series_19-covid-Recovered.csv" out=vus.&pgm.20200319Recovered dbms=csv replace; run;quit;


          /*----------------------------------------*/
          /*  Contents                              */
          /*----------------------------------------*/


           The all have this structure


           p to 40 obs from VUS_100C1920200319CONFIRMED total obs=462

           bs  Region/Province               Country/Region             Lat          Long    1/22/20    1/23/20  ... 3/17/20    3/18/20

            1  Thailand                      Thailand                 15.0000     101.000       2          3            41         42
            2  Japan                         Japan                    36.0000     138.000       2          1           144        144
            3  Singapore                     Singapore                 1.2833     103.833       0          1           114        114
            4  Nepal                         Nepal                    28.1667      84.250       0          0             1          1
            5  Malaysia                      Malaysia                  2.5000     112.500       0          0            49         60
            6  Canada@British Columbia       Canada                   49.2827    -123.121       0          0             4          4
            7  Australia@New South Wales     Australia               -33.8688     151.209       0          0             4          4
            8  Australia@Victoria            Australia               -37.8136     144.963       0          0             8          8
            9  Australia@Queensland          Australia               -28.0167     153.400       0          0             8          8
           10  Cambodia                      Cambodia                 11.5500     104.917       0          0             1          1
           11  Sri Lanka                     Sri Lanka                 7.0000      81.000       0          0             1          1
           12  Germany                       Germany                  51.0000       9.000       0          0            67        105
           13  Finland                       Finland                  64.0000      26.000       0          0     ...    10         10
 *                           _
  ___      _____  _____ ___| |
 / __|    / _ \ \/ / __/ _ \ |
| (__ _  |  __/>  < (_|  __/ |
 \___(_)  \___/_/\_\___\___|_|

;
          /*----------------------------------------*/
          /*  Excel Files                            */
          /*----------------------------------------*/


          %utlfkil(d:/vus/xls/&pgm.20200319Cases.xlsx);

          libname vus "d:/vus";
          libname xel 'd:/vus/xls/&pgm.20200319Cases.xlsx';

          data xel.&pgm.20200319Confirmed vus.&pgm.20200319ConfirmedKey(label="added unique key" index=('Region/Province'n/unique ));
               length 'Region/Province'n $96;
               set vus.&pgm.20200319Confirmed;
               'Region/Province'n=catx('@','Country/Region'n,'Province/State'n);
          run;quit;

          data xel.&pgm.20200319Deaths vus.&pgm.20200319Deathskey(label="added unique key" index=('Region/Province'n/unique ));
               length 'Region/Province'n $96;
               set vus.&pgm.20200319Deaths;
               'Region/Province'n=catx('@','Country/Region'n,'Province/State'n);
          run;quit;

          data xel.&pgm.20200319Recovered vus.&pgm.20200319RecoverKey(label="added unique key" index=('Region/Province'n/unique ));
               length 'Region/Province'n $96;
               set vus.&pgm.20200319Recovered;
               'Region/Province'n=catx('@','Country/Region'n,'Province/State'n);
          run;quit;

          libname xel clear;

*    _                                      _ _
  __| |    _ __   ___  _ __ _ __ ___   __ _| (_)_______
 / _` |   | '_ \ / _ \| '__| '_ ` _ \ / _` | | |_  / _ \
| (_| |_  | | | | (_) | |  | | | | | | (_| | | |/ /  __/
 \__,_(_) |_| |_|\___/|_|  |_| |_| |_|\__,_|_|_/___\___|
                  __ _                         _
  ___ ___  _ __  / _(_)_ __ _ __ ___   ___  __| |
 / __/ _ \| '_ \| |_| | '__| '_ ` _ \ / _ \/ _` |
| (_| (_) | | | |  _| | |  | | | | | |  __/ (_| |
 \___\___/|_| |_|_| |_|_|  |_| |_| |_|\___|\__,_|

;


        options validvarname=any;

        proc transpose data=vus.&pgm.20200319ConfirmedKey out=vus.&pgm.20200319ConfirmedXpo(rename=(
                 _name_=dtec col1    = Confirmed
                  'Region/Province'n =  Region_Province
                  'Country/Region'n  =  Country_Region
                  'Province/State'n  =  Province_State
         ));
        by 'Region/Province'n 'Province/State'n 'Country/Region'n Lat Long notsorted;
        run;quit;

        /*
        Up to 40 obs VUS.VUS_100C1920200319CONFIRMEDXPO total obs=26,334

                 Region_     Province_    Country_
          Obs    Province      State       Region     Lat    Long     Dec          deaths

            1    Thailand                 Thailand     15     101    1/22/20         2
            2    Thailand                 Thailand     15     101    1/23/20         3
            3    Thailand                 Thailand     15     101    1/24/20         5
            4    Thailand                 Thailand     15     101    1/25/20         7
            5    Thailand                 Thailand     15     101    1/26/20         8
            6    Thailand                 Thailand     15     101    1/27/20         8
            7    Thailand                 Thailand     15     101    1/28/20        14
            8    Thailand                 Thailand     15     101    1/29/20        14
         */

          /*----------------------------------------*/
          /*  Add SAS date                           */
          /*----------------------------------------*/

          data vus.&pgm.20200319ConfirmedDte;
            retain
              Region_Province
              Province_State
              Country_Region
              Lat
              Long
              dtec
              dtesas ;
              set vus.&pgm.20200319ConfirmedXpo;
              format dteSAS date9.;
              dteSAS=input(dtec,mmddyy10.);
          run;quit;

          /*
           Up to 40 obs VUS.VUS_100C1920200319CONFIRMEDDTE total obs=26,334
                                                                                 aDDED sas DATE
                   Region_     Province_    Country_                             *********
            Obs    Province      State       Region     Lat    Long     dtec      dtesas    confirmed

              1    Thailand                 Thailand     15     101    1/22/20     21936         2
              2    Thailand                 Thailand     15     101    1/23/20     21937         3
              3    Thailand                 Thailand     15     101    1/24/20     21938         5
              4    Thailand                 Thailand     15     101    1/25/20     21939         7
              5    Thailand                 Thailand     15     101    1/26/20     21940         8
          */
     _            _   _
  __| | ___  __ _| |_| |__  ___
 / _` |/ _ \/ _` | __| '_ \/ __|
| (_| |  __/ (_| | |_| | | \__ \
 \__,_|\___|\__,_|\__|_| |_|___/

;

        options validvarname=any;

        proc transpose data=vus.&pgm.20200319deathsKey out=vus.&pgm.20200319deathsXpo(rename=(
                 _name_=dtec col1    = deaths
                  'Region/Province'n =  Region_Province
                  'Country/Region'n  =  Country_Region
                  'Province/State'n  =  Province_State
         ));
        by 'Region/Province'n 'Province/State'n 'Country/Region'n Lat Long notsorted;
        run;quit;

        /*
        Up to 40 obs VUS.VUS_100C1920200319deathsXPO total obs=26,334

                 Region_     Province_    Country_
          Obs    Province      State       Region     Lat    Long     Dec      deaths

            1    Thailand                 Thailand     15     101    1/22/20         0
            2    Thailand                 Thailand     15     101    1/23/20         0
            3    Thailand                 Thailand     15     101    1/24/20         0
            4    Thailand                 Thailand     15     101    1/25/20         0
            5    Thailand                 Thailand     15     101    1/26/20         0
            6    Thailand                 Thailand     15     101    1/27/20         8
            7    Thailand                 Thailand     15     101    1/28/20         0
            8    Thailand                 Thailand     15     101    1/29/20         0
         */

          /*----------------------------------------*/
          /*  Add SAS date                           */
          /*----------------------------------------*/

          data vus.&pgm.20200319deathsDte;
            retain
              Region_Province
              Province_State
              Country_Region
              Lat
              Long
              dtec
              dtesas ;
              set vus.&pgm.20200319deathsXpo;
              format dteSAS date9.;
              dteSAS=input(dtec,mmddyy10.);
          run;quit;

 *
 _ __ ___  ___ _____   _____ _ __
| '__/ _ \/ __/ _ \ \ / / _ \ '__|
| | |  __/ (_| (_) \ V /  __/ |
|_|  \___|\___\___/ \_/ \___|_|

;

        options validvarname=any;

        proc transpose data=vus.&pgm.20200319RECOVERKey out=vus.&pgm.20200319RECOVERXpo(rename=(
                 _name_=dtec col1    = RECOVER
                  'Region/Province'n =  Region_Province
                  'Country/Region'n  =  Country_Region
                  'Province/State'n  =  Province_State
         ));
        by 'Region/Province'n 'Province/State'n 'Country/Region'n Lat Long notsorted;
        run;quit;

        /*
        Up to 40 obs VUS.VUS_100C1920200319RECOVERXPO total obs=26,334

                 Region_     Province_    Country_
          Obs    Province      State       Region     Lat    Long     Dec      RECOVER

            1    Thailand                 Thailand     15     101    1/22/20         0
            2    Thailand                 Thailand     15     101    1/23/20         0
            3    Thailand                 Thailand     15     101    1/24/20         0
            4    Thailand                 Thailand     15     101    1/25/20         0
            5    Thailand                 Thailand     15     101    1/26/20         2
            6    Thailand                 Thailand     15     101    1/27/20         2
            7    Thailand                 Thailand     15     101    1/28/20         5
            8    Thailand                 Thailand     15     101    1/29/20         5
         */

          /*----------------------------------------*/
          /*  Add SAS date                           */
          /*----------------------------------------*/

          data vus.&pgm.20200319RECOVERDte;
            retain
              Region_Province
              Province_State
              Country_Region
              Lat
              Long
              dtec
              dtesas ;
              set vus.&pgm.20200319RECOVERXpo;
              format dteSAS date9.;
              dteSAS=input(dtec,mmddyy10.);
          run;quit;
*____   ___  _   _ _____
|  _ \ / _ \| \ | | ____|
| | | | | | |  \| |  _|
| |_| | |_| | |\  | |___
|____/ \___/|_| \_|_____|

;

