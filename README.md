# utl-schdedule-automatic-daily-downloads-of-the-latest-COVID_19-daily-timeseries
Schdedule-automatic-daily-downloads of the latest COV-19 daily timeseries
     %let pgm=vus_100c19;
    %let dte=200401;

       github
       https://tinyurl.com/qny3yzm
       https://github.com/rogerjdeangelis/utl-schdedule-automatic-daily-downloads-of-the-latest-COVID_19-daily-timeseries

       Excel workbook (will not be updated)
       https://tinyurl.com/upte39g
       https://github.com/rogerjdeangelis/utl-schdedule-automatic-daily-downloads-of-the-latest-COVID_19-daily-timeseries/blob/master/vus_100c19200401Cases.xlsx

       Github site with data  (Johns Hopkins )

          https://github.com/CSSEGISandData/COVID-19

       Run the code below daily yo get the latest data on the COV-19 virus

       You will need this folder structure

         d:/vus
         d:/vus/csv
         d:/vus/xls


       Steps to get detail daily time series of COV-19 cases into SAS tables


          a. Location of CSV files
          b. proc http to download csvs to workstation
          c. Create five SAS tables
          d. Excel worlkbook with five sheets
          e. Normalize all five sas tables
          f. Verification and Validation of Death Table

    *_                   _
    (_)_ __  _ __  _   _| |_
    | | '_ \| '_ \| | | | __|
    | | | | | |_) | |_| | |_
    |_|_| |_| .__/ \__,_|\__|
            |_|
    ;
      Input arguments

       dte= Date of run ie 200401 (01APR2020)

       pgm=vus_100c19 - First Program in project (second program is vus_200tym,sas (time series plots))


        WEB LINK to CSV Files                WEB Raw CSV
        =====================                ============

     https://tinyurl.com/uynhaxd    time_series_covid19_confirmed_US.csv
     https://tinyurl.com/vxbdvgo    time_series_covid19_deaths_US.csv
     https://tinyurl.com/tsqkf7y    time_series_covid19_confirmed_global.csv
     https://tinyurl.com/rlssflz    time_series_covid19_deaths_global.csv
     https://tinyurl.com/vtcebxt    time_series_covid19_recovered_global.csv


    *            _               _
      ___  _   _| |_ _ __  _   _| |_
     / _ \| | | | __| '_ \| | | | __|
    | (_) | |_| | |_| |_) | |_| | |_
     \___/ \__,_|\__| .__/ \__,_|\__|
                    |_|
    ;

       I expect the key output will be the normalized table ,d:/vus/&pgm.&dte.deathsUsDte.sas7bdat,
       This dataset can be joined with any County level suplemental data.
       You do not ahve to change your program as new dates are added, amoung other advantages.

          ACS data
          Census data
          CMS data
          SAS Maps
          Censusn shape files

       d:/vus/&pgm.&dte.deathsUsDte.sas7bdat

        FIPS         Lat           Long         Combined_Key                    dtesas      deaths

         6037    34.30828379    -118.2282411    Los Angeles, California, US    29MAR2020       32
         6037    34.30828379    -118.2282411    Los Angeles, California, US    30MAR2020       44
         6037    34.30828379    -118.2282411    Los Angeles, California, US    31MAR2020       54
         6037    34.30828379    -118.2282411    Los Angeles, California, US    01APR2020       64
         6085    37.23104908    -121.6970462    Santa Clara, California, US    01APR2020       32
         9001    41.26809896     -73.3881171    Fairfield, Connecticut, US     31MAR2020       38


         Create SAS Tables

          Un-Normalized Tables (fat with days across)
          ============================================

           US
            d:/vus/&pgm.&dte.confirmUs.sas7bdat
            d:/vus/&pgm.&dte.deathsus.sas7bdat

           GLOBAL
            d:/vus/&pgm.&dte.confirmgbl.sas7bdat
            d:/vus/&pgm.&dte.deathsgbl.sas7bdat
            d:/vus/&pgm.&dte.recovergbl.sas7bdat


          Normalized Tables (long an skinny)
          ==================================

            d:/vus/&pgm.&dte.confirmGblDte.sas7bdat
            d:/vus/&pgm.&dte.deathsUsDte.sas7bdat

            d:/vus/&pgm.&dte.confirmUsDte.sas7bdat
            d:/vus/&pgm.&dte.recoverGblDte.sas7bdat
            d:/vus/&pgm.&dte.deathsGblDte.sas7bdat

          Excel Workbook
          ==============

             d:/vus/xls/&pgm.&dte.Cases.xlsx

              US
               sheet: &pgm.&dte.confirmUs
               sheet: &pgm.&dte.deathsUs

              Global
               sheet: &pgm.&dte.confirmGbl
               sheet: &pgm.&dte.deathsGbl
               sheet: &pgm.&dte.recoverGbl

    *                       _                         __ _ _
      __ _    __      _____| |__     ___ _____   __  / _(_) | ___  ___
     / _` |   \ \ /\ / / _ \ '_ \   / __/ __\ \ / / | |_| | |/ _ \/ __|
    | (_| |_   \ V  V /  __/ |_) | | (__\__ \\ V /  |  _| | |  __/\__ \
     \__,_(_)   \_/\_/ \___|_.__/   \___|___/ \_/   |_| |_|_|\___||___/

    ;
           *                             _ _       _
            _   _ ___    ___ _____   __ | (_)_ __ | | _____
           | | | / __|  / __/ __\ \ / / | | | '_ \| |/ / __|
           | |_| \__ \ | (__\__ \\ V /  | | | | | |   <\__ \
            \__,_|___/  \___|___/ \_/   |_|_|_| |_|_|\_\___/

           ;

               https://tinyurl.com/uynhaxd
               https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_US.csv


               https://tinyurl.com/vxbdvgo
               https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_deaths_US.csv

           *      _       _           _                    _ _       _
             __ _| | ___ | |__   __ _| |   ___ _____   __ | (_)_ __ | | _____
            / _` | |/ _ \| '_ \ / _` | |  / __/ __\ \ / / | | | '_ \| |/ / __|
           | (_| | | (_) | |_) | (_| | | | (__\__ \\ V /  | | | | | |   <\__ \
            \__, |_|\___/|_.__/ \__,_|_|  \___|___/ \_/   |_|_|_| |_|_|\_\___/
            |___/
           ;

               https://tinyurl.com/tsqkf7y
               https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_global.csv

               https://tinyurl.com/rlssflz
               https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_deaths_global.csv

               https://tinyurl.com/vtcebxt
               https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_recovered_global.csv

    *_                               _     _   _
    | |__     _ __  _ __ ___   ___  | |__ | |_| |_ _ __
    | '_ \   | '_ \| '__/ _ \ / __| | '_ \| __| __| '_ \
    | |_) |  | |_) | | | (_) | (__  | | | | |_| |_| |_) |
    |_.__(_) | .__/|_|  \___/ \___| |_| |_|\__|\__| .__/
             |_|                                  |_|
    ;
           *
            _   _ ___
           | | | / __|
           | |_| \__ \
            \__,_|___/

           ;


              filename out 'd:/vus/csv/time_series_19_covid_Confirmed_us.csv';
              proc http
                method = 'GET'
                url    = 'https://tinyurl.com/uynhaxd'
                out    =  out;
              run;quit;


              filename out 'd:/vus/csv/time_series_19_covid_Deaths_US.csv';
              proc http
                method = 'GET'
                url    = 'https://tinyurl.com/vxbdvgo'
                out    =  out;
              run;quit;

           *       _       _           _
              __ _| | ___ | |__   __ _| |
             / _` | |/ _ \| '_ \ / _` | |
            | (_| | | (_) | |_) | (_| | |
             \__, |_|\___/|_.__/ \__,_|_|
             |___/

           ;
             filename out 'd:/vus/csv/time_series_19_covid_Confirmed_global.csv';
             proc http
                method = 'GET'
                url    = 'https://tinyurl.com/tsqkf7y'
                out    =  out;
              run;quit;

              filename out 'd:/vus/csv/time_series_19_covid_Deaths_global.csv';
              proc http
                method = 'GET'
                url    = 'https://tinyurl.com/rlssflz'
                out    =  out;
              run;quit;

              filename out 'd:/vus/csv/time_series_19_covid_Recovered_global.csv';
              proc http
                method = 'GET'
                url    = 'https://tinyurl.com/vtcebxt'
                out    =  out;
              run;quit;
    *                         _        _     _
      ___     ___  __ _ ___  | |_ __ _| |__ | | ___  ___
     / __|   / __|/ _` / __| | __/ _` | '_ \| |/ _ \/ __|
    | (__ _  \__ \ (_| \__ \ | || (_| | |_) | |  __/\__ \
     \___(_) |___/\__,_|___/  \__\__,_|_.__/|_|\___||___/

    ;
            /*------------------------------------------*/
            /*  Create SAS Tables                       */
            /*                                          */
            /*    US                                    */
            /*     d:/vus/&pgm.&dte.ConfirmUs.sas7bdat  */
            /*     d:/vus/&pgm.&dte.Deathsus.sas7bdat   */
            /*                                          */
            /*    Global                                */
            /*     d:/vus/&pgm.&dte.Confirmgbl.sas7bdat */
            /*     d:/vus/&pgm.&dte.Deathsgbl.sas7bdat  */
            /*     d:/vus/&pgm.&dte.recovergbl.sas7bdat */
            /*                                          */
            /*------------------------------------------*/

            *              _        _     _
              _   _ ___   | |_ __ _| |__ | | ___  ___
             | | | / __|  | __/ _` | '_ \| |/ _ \/ __|
             | |_| \__ \  | || (_| | |_) | |  __/\__ \
              \__,_|___/   \__\__,_|_.__/|_|\___||___/
            ;

              * this converts the numeric date column names to valid SAS names;

              libname vus "d:/vus";

              options validvarname=v7;

              proc import datafile="d:/vus/csv/time_series_19_covid_Confirmed_us.csv"
                    out=vus.&pgm.&dte.ConfirmUs(label="added unique keys"  index=(combined_key/unique  uid/unique ))
                    dbms=csv replace;
              run;quit;
              /*

               VUS.VUS_100C19200401DEATHSUS total obs=3,253

                                                                                        Country_
                     UID  iso2  iso3  code3  FIPS  Admin2     Province_State             Region      Lat      Long_   Combined_Key                  Population

                      16   AS   ASM     16     60             American Samoa               US     -14.2710  -170.132  American Samoa, US                55641
                     316   GU   GUM    316     66             Guam                         US      13.4443   144.794  Guam, US                         164229
                     580   MP   MNP    580     69             Northern Mariana Islands     US      15.0979   145.674  Northern Mariana Islands, US      55144
                     630   PR   PRI    630     72             Puerto Rico                  US      18.2208   -66.590  Puerto Rico, US                 2933408
                     850   VI   VIR    850     78             Virgin Islands               US      18.3358   -64.896  Virgin Islands, US               107268
                84001001   US   USA    840   1001  Autauga    Alabama                      US      32.5395   -86.644  Autauga, Alabama, US              55869
                84001003   US   USA    840   1003  Baldwin    Alabama                      US      30.7277   -87.722  Baldwin, Alabama, US             223234
                84001005   US   USA    840   1005  Barbour    Alabama                      US      31.8683   -85.387  Barbour, Alabama, US              24686

                _1_22_20   .... _4_1_20

                    0               1
                    0               0
                    0               0
                    0               0
                    0               0
                    0               0
                    0               0
                    0               0
               */

              proc import datafile="d:/vus/csv/time_series_19_covid_Deaths_us.csv"
                   out=vus.&pgm.&dte.DeathsUs(label="added unique keys"  index=(combined_key/unique  uid/unique ))
                   dbms=csv replace;
              run;quit;
            *       _       _           _   _        _     _
               __ _| | ___ | |__   __ _| | | |_ __ _| |__ | | ___  ___
              / _` | |/ _ \| '_ \ / _` | | | __/ _` | '_ \| |/ _ \/ __|
             | (_| | | (_) | |_) | (_| | | | || (_| | |_) | |  __/\__ \
              \__, |_|\___/|_.__/ \__,_|_|  \__\__,_|_.__/|_|\___||___/
              |___/
            ;

              options validvarname=v7;

              proc datasets lib=work nolist;
                delete &pgm.&dte.Confirmgbl &pgm.&dte.Deathsgbl &pgm.&dte.recovergbl;
              run;quit;

              proc import datafile="d:/vus/csv/time_series_19_covid_Confirmed_global.csv" out=&pgm.&dte.Confirmgbl dbms=csv replace; run;quit;
              data vus.&pgm.&dte.ConfirmGblKey(label="added unique key"  index=(Region_Province/unique ));
                   length Region_Province $96;
                   set &pgm.&dte.Confirmgbl;
                   Region_Province=catx("@",Country_Region,Province_State);
              run;quit;

              proc import datafile="d:/vus/csv/time_series_19_covid_Deaths_global.csv"    out=&pgm.&dte.Deathsgbl    dbms=csv replace; run;quit;
              data vus.&pgm.&dte.DeathsGblKey(label="added unique key" index=(Region_Province/unique ));
                   length Region_Province $96;
                   set &pgm.&dte.Deathsgbl;
                   Region_Province=catx("@",Country_Region,Province_State);
              run;quit;

              proc import datafile="d:/vus/csv/time_series_19_covid_Recovered_global.csv" out=&pgm.&dte.recovergbl    dbms=csv replace; run;quit;
              data vus.&pgm.&dte.RecoverGblKey(label="added unique key" index=(Region_Province/unique ));
                   length Region_Province $96;
                   set &pgm.&dte.recovergbl;
                   Region_Province=catx("@",Country_Region,Province_State);
              run;quit;

    *    _                       _       _               _
      __| |     _____  _____ ___| |  ___| |__   ___  ___| |_ ___
     / _` |    / _ \ \/ / __/ _ \ | / __| '_ \ / _ \/ _ \ __/ __|
    | (_| |_  |  __/>  < (_|  __/ | \__ \ | | |  __/  __/ |_\__ \
     \__,_(_)  \___/_/\_\___\___|_| |___/_| |_|\___|\___|\__|___/

    ;
            *                              _
             _   _ ___    _____  _____ ___| |
            | | | / __|  / _ \ \/ / __/ _ \ |
            | |_| \__ \ |  __/>  < (_|  __/ |
             \__,_|___/  \___/_/\_\___\___|_|

            ;
            /*----------------------------------------*/
            /*  Create Excel Workbook                 */
            /*                                        */
            /*   d:/vus/xls/&pgm.&dte.Cases.xlsx      */
            /*                                        */
            /*    US                                  */
            /*     sheet: &pgm.&dte.ConfirmUs         */
            /*     sheet: &pgm.&dte.DeathsUs          */
            /*                                        */
            /*    Global                              */
            /*     sheet: &pgm.&dte.ConfirmGbl        */
            /*     sheet: &pgm.&dte.DeathsGbl         */
            /*     sheet: &pgm.&dte.recoverGbl        */
            /*                                        */
            /*----------------------------------------*/

             * this keeps the numeric date column names;

             options validvarname=any;

             %utlfkil(d:/vus/xls/&pgm.&dte.Cases.xlsx);
             libname xel "d:/vus/xls/&pgm.&dte.Cases.xlsx";

             proc import datafile="d:/vus/csv/time_series_19_covid_Confirmed_us.csv"
                   out=xel.&pgm.&dte.ConfirmUs
                   dbms=csv replace;
             run;quit;

             proc import datafile="d:/vus/csv/time_series_19_covid_Deaths_us.csv"
                  out=xel.&pgm.&dte.DeathsUs
                  dbms=csv replace;
             run;quit;

             * this keeps the numeric date columns names and adds unique key  'Region/Province'n ;

              proc import datafile="d:/vus/csv/time_series_19_covid_Confirmed_global.csv" out=&pgm.&dte.Confirmgbl dbms=csv replace; run;quit;
              data xel.&pgm.&dte.ConfirmGblKey;
                   length 'Region/Province'n $96;
                   set &pgm.&dte.Confirmgbl;
                   'Region/Province'n=catx('@','Country/Region'n,'Province/State'n);
              run;quit;

              proc import datafile="d:/vus/csv/time_series_19_covid_Deaths_global.csv"    out=&pgm.&dte.Deathsgbl    dbms=csv replace; run;quit;
              data xel.&pgm.&dte.DeathsGblKey;
                   length 'Region/Province'n $96;
                   set &pgm.&dte.Deathsgbl;
                   'Region/Province'n=catx('@','Country/Region'n,'Province/State'n);
              run;quit;

              proc import datafile="d:/vus/csv/time_series_19_covid_Recovered_global.csv" out=&pgm.&dte.recovergbl    dbms=csv replace; run;quit;
              data xel.&pgm.&dte.RecoverGblKey;
                   length 'Region/Province'n $96;
                   set &pgm.&dte.recovergbl;
                   'Region/Province'n=catx('@','Country/Region'n,'Province/State'n);
              run;quit;

              libname xel clear;
    *                                          _ _
      ___     _ __   ___  _ __ _ __ ___   __ _| (_)_______
     / _ \   | '_ \ / _ \| '__| '_ ` _ \ / _` | | |_  / _ \
    |  __/_  | | | | (_) | |  | | | | | | (_| | | |/ /  __/
     \___(_) |_| |_|\___/|_|  |_| |_| |_|\__,_|_|_/___\___|

                 _     _                    __ _
            __ _| |__ | |   ___ ___  _ __  / _(_)_ __ _ __ ___
           / _` | '_ \| |  / __/ _ \| '_ \| |_| | '__| '_ ` _ \
          | (_| | |_) | | | (_| (_) | | | |  _| | |  | | | | | |
           \__, |_.__/|_|  \___\___/|_| |_|_| |_|_|  |_| |_| |_|
           |___/
          ;

           proc datasets lib=work nolist;
           delete
               &pgm.&dte.ConfirmGblDte
               &pgm.&dte.deathsUsDte
               &pgm.&dte.ConfirmUsDte
               &pgm.&dte.recoverGblDte
               &pgm.&dte.deathsGblDte
            ;

            options validvarname=v7;

            proc transpose data=vus.&pgm.&dte.ConfirmGblKey out=&pgm.&dte.ConfirmGblDte(rename=(
                     _name_=dtec col1    = Confirmed
             ));
            by Region_Province Province_State Country_Region Lat Long notsorted;
            run;quit;

            /*
            Up to 40 obs VUS.VUS_100C19&dte.CONFIRMEDXPO total obs=26,334
                     Region_     Province_    Country_
              Obs    Province      State       Region     Lat    Long     Dec          confirmed
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

              data vus.&pgm.&dte.ConfirmGblDte;
                retain
                  Region_Province
                  Province_State
                  Country_Region
                  Lat
                  Long
                  dtec
                  dtesas ;
                  set &pgm.&dte.ConfirmGblDte;
                  format dteSAS date9.;
                  dtec=translate(substr(dtec,2),'/','_');
                  dteSAS=input(dtec,mmddyy10.);
              run;quit;

              /*
               Up to 40 obs VUS.VUS_100C19&dte.CONFIRMEDDTE total obs=26,334
                                                                                     aDDED sas DATE
                       Region_     Province_    Country_                             *********
                Obs    Province      State       Region     Lat    Long     dtec      dtesas    confirmed
                  1    Thailand                 Thailand     15     101    1/22/20     21936         2
                  2    Thailand                 Thailand     15     101    1/23/20     21937         3
                  3    Thailand                 Thailand     15     101    1/24/20     21938         5
                  4    Thailand                 Thailand     15     101    1/25/20     21939         7
                  5    Thailand                 Thailand     15     101    1/26/20     21940         8
              */

          *      _     _       _            _   _
            __ _| |__ | |   __| | ___  __ _| |_| |__  ___
           / _` | '_ \| |  / _` |/ _ \/ _` | __| '_ \/ __|
          | (_| | |_) | | | (_| |  __/ (_| | |_| | | \__ \
           \__, |_.__/|_|  \__,_|\___|\__,_|\__|_| |_|___/
           |___/
          ;

            options validvarname=v7;

            proc transpose data=vus.&pgm.&dte.deathsGblKey out=&pgm.&dte.deathsGblDte(rename=(
                     _name_=dtec col1    = Deaths
             ));
            by Region_Province Province_State Country_Region Lat Long notsorted;
            run;quit;

            /*
            Up to 40 obs VUS.VUS_100C19&dte.deathsXPO total obs=26,334
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
              data vus.&pgm.&dte.deathsGblDte;
                retain
                  Region_Province
                  Province_State
                  Country_Region
                  Lat
                  Long
                  dtec
                  dtesas ;
                  set &pgm.&dte.deathsGblDte;
                  format dteSAS date9.;
                  dtec=translate(substr(dtec,2),'/','_');
                  dteSAS=input(dtec,mmddyy10.);
              run;quit;

          *      _     _
            __ _| |__ | |  _ __ ___  ___ _____   _____ _ __
           / _` | '_ \| | | '__/ _ \/ __/ _ \ \ / / _ \ '__|
          | (_| | |_) | | | | |  __/ (_| (_) \ V /  __/ |
           \__, |_.__/|_| |_|  \___|\___\___/ \_/ \___|_|
           |___/
          ;

            options validvarname=v7;

            proc transpose data=vus.&pgm.&dte.recoverGblKey out=&pgm.&dte.recoverGblDte(rename=(
                     _name_=dtec col1    = Recover
             ));
            by Region_Province Province_State Country_Region Lat Long notsorted;
            run;quit;

            /*
            Up to 40 obs VUS.VUS_100C19&dte.deathsXPO total obs=26,334
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
              /*  Add SAS date                          */
              /*----------------------------------------*/

              data vus.&pgm.&dte.recoverGblDte;;
                retain
                  Region_Province
                  Province_State
                  Country_Region
                  Lat
                  Long
                  dtec
                  dtesas ;
                  set &pgm.&dte.recoverGblDte;
                  format dteSAS date9.;
                  dtec=translate(substr(dtec,2),'/','_');
                  dteSAS=input(dtec,mmddyy10.);
              run;quit;


          *                              __ _
           _   _ ___    ___ ___  _ __  / _(_)_ __ _ __ ___
          | | | / __|  / __/ _ \| '_ \| |_| | '__| '_ ` _ \
          | |_| \__ \ | (_| (_) | | | |  _| | |  | | | | | |
           \__,_|___/  \___\___/|_| |_|_| |_|_|  |_| |_| |_|

          ;

            options validvarname=any;

            proc transpose data=vus.&pgm.&dte.ConfirmUs out=&pgm.&dte.ConfirmUsDte(rename=(
                     _name_=dtec col1    = Confirmed
             ));
            by  UID
                iso2
                iso3
                code3
                FIPS
                Admin2
                Province_State
                Country_Region
                Lat
                Long_
                Combined_Key  notsorted;
            run;quit;

              /*

               VUS.VUS_100C19200401CONFIRMUSXPO total obs=224,457

                                                                                    Country_
                UID    iso2    iso3    code3    FIPS    Admin2    Province_State     Region       Lat        Long_        Combined_Key         dtec       Confirmed

                 16     AS     ASM       16      60               American Samoa       US       -14.271    -170.132    American Samoa, US    1/22/2020        0
                 16     AS     ASM       16      60               American Samoa       US       -14.271    -170.132    American Samoa, US    1/23/2020        0
                 16     AS     ASM       16      60               American Samoa       US       -14.271    -170.132    American Samoa, US    1/24/2020        0
                 16     AS     ASM       16      60               American Samoa       US       -14.271    -170.132    American Samoa, US    1/25/2020        0
                 16     AS     ASM       16      60               American Samoa       US       -14.271    -170.132    American Samoa, US    1/26/2020        0
                 16     AS     ASM       16      60               American Samoa       US       -14.271    -170.132    American Samoa, US    1/27/2020        0
                 16     AS     ASM       16      60               American Samoa       US       -14.271    -170.132    American Samoa, US    1/28/2020        0
                 16     AS     ASM       16      60               American Samoa       US       -14.271    -170.132    American Samoa, US    1/29/2020        0
               */

              /*----------------------------------------*/
              /*  Add SAS date                           */
              /*----------------------------------------*/

              data vus.&pgm.&dte.ConfirmUsDte;

                retain
                   UID
                   iso2
                   iso3
                   code3
                   FIPS
                   Admin2
                   Province_State
                   Country_Region
                   Lat
                   Long_
                   Combined_Key
                   dtesas ;

                  set &pgm.&dte.ConfirmUsDte;

                  format dteSAS date9.;
                  dtec=translate(substr(dtec,2),'/','_');
                  dteSAS=input(dtec,mmddyy10.);

              run;quit;


          *                _            _   _
           _   _ ___    __| | ___  __ _| |_| |__  ___
          | | | / __|  / _` |/ _ \/ _` | __| '_ \/ __|
          | |_| \__ \ | (_| |  __/ (_| | |_| | | \__ \
           \__,_|___/  \__,_|\___|\__,_|\__|_| |_|___/
          ;

            options validvarname=any;

            proc transpose data=vus.&pgm.&dte.deathsUs out=&pgm.&dte.deathsUsDte(rename=(
                     _name_=dtec col1    = deaths
             ));
            by  UID
                iso2
                iso3
                code3
                FIPS
                Admin2
                Province_State
                Country_Region
                Lat
                Long_
                Combined_Key population notsorted;
            run;quit;


              /*

               VUS.VUS_100C19200401deathsUSXPO total obs=224,457

                                                                                    Country_
                UID    iso2    iso3    code3    FIPS    Admin2    Province_State     Region       Lat        Long_        Combined_Key         dtec       deaths

                 16     AS     ASM       16      60               American Samoa       US       -14.271    -170.132    American Samoa, US    1/22/2020        0
                 16     AS     ASM       16      60               American Samoa       US       -14.271    -170.132    American Samoa, US    1/23/2020        0
                 16     AS     ASM       16      60               American Samoa       US       -14.271    -170.132    American Samoa, US    1/24/2020        0
                 16     AS     ASM       16      60               American Samoa       US       -14.271    -170.132    American Samoa, US    1/25/2020        0
                 16     AS     ASM       16      60               American Samoa       US       -14.271    -170.132    American Samoa, US    1/26/2020        0
                 16     AS     ASM       16      60               American Samoa       US       -14.271    -170.132    American Samoa, US    1/27/2020        0
                 16     AS     ASM       16      60               American Samoa       US       -14.271    -170.132    American Samoa, US    1/28/2020        0
                 16     AS     ASM       16      60               American Samoa       US       -14.271    -170.132    American Samoa, US    1/29/2020        0
               */

              /*----------------------------------------*/
              /*  Add SAS date                           */
              /*----------------------------------------*/

              data vus.&pgm.&dte.deathsUsDte;

                retain
                   UID
                   iso2
                   iso3
                   code3
                   FIPS
                   Admin2
                   Province_State
                   Country_Region
                   Lat
                   Long_
                   Combined_Key
                   population
                   dtesas ;

                  set &pgm.&dte.deathsUsDte;

                  format dteSAS date9.;
                  dtec=translate(substr(dtec,2),'/','_');
                  dteSAS=input(dtec,mmddyy10.);
                  format dteSAS date9.;

              run;quit;

              proc print data=vus.&pgm.&dte.deathsUsDte(where=(deaths>30)) width=min;
              format dtesas date9.;
              var  fips lat long_ combined_key dtesas deaths;
              run;quit;


    *    _
      __| | ___  _ __   ___
     / _` |/ _ \| '_ \ / _ \
    | (_| | (_) | | | |  __/
     \__,_|\___/|_| |_|\___|

    ;

    * __                         _
     / _|  __   _____   ___   __| | ___   ___
    | |_   \ \ / / _ \ / _ \ / _` |/ _ \ / _ \
    |  _|   \ V / (_) | (_) | (_| | (_) | (_) |
    |_|(_)   \_/ \___/ \___/ \__,_|\___/ \___/

    ;
    *               _     _       _  ___
      ___ _____   _(_) __| |     / |/ _ \
     / __/ _ \ \ / / |/ _` |_____| | (_) |
    | (_| (_) \ V /| | (_| |_____| |\__, |
     \___\___/ \_/ |_|\__,_|     |_|  /_/
                     _            _   _
     _   _ ___    __| | ___  __ _| |_| |__  ___
    | | | / __|  / _` |/ _ \/ _` | __| '_ \/ __|
    | |_| \__ \ | (_| |  __/ (_| | |_| | | \__ \
     \__,_|___/  \__,_|\___|\__,_|\__|_| |_|___/

     _        _     _
    | |_ __ _| |__ | | ___
    | __/ _` | '_ \| |/ _ \
    | || (_| | |_) | |  __/
     \__\__,_|_.__/|_|\___|

    ;


    options validvarname=v7;

    %utlvdoc
        (
        libname        = work        /* libname of input dataset */
        ,data          = march_2020_us_deaths_fat
        ,key           = combined_key          /* 0 or variable */
        ,ExtrmVal      = 10           /* display top and bottom 30 frequencies */
        ,UniPlot       = 1            /* 'true' enables ('false' disables) plot option on univariate output */
        ,UniVar        = 1            /* 'true' enables ('false' disables) plot option on univariate output */
        ,misspat       = 1            /* 0 or 1 missing patterns */
        ,chart         = 1            /* 0 or 1 line printer chart */
        ,taball        = combined_key deaths Province_State
        ,tabone        = Province_State '3/1/2020'n  '3/15/2020'n '3/30/2020'n   /* 0 or  variable vs all other variables          */
        ,mispop        = 1            /* 0 or 1  missing vs populated*/
        ,mispoptbl     = 1            /* 0 or 1  missing vs populated*/
        ,dupcol        = 1            /* 0 or 1  columns duplicated  */
        ,unqtwo        = combined_key deaths Province_State      /* 0 */
        ,vdocor        = 1            /* 0 or 1  correlation of numeric variables */
        ,oneone        = 1            /* 0 or 1  one to one - one to many - many to many */
        ,cramer        = 1            /* 0 or 1  association of character variables    */
        ,optlength     = 1
        ,maxmin        = 1
        ,unichr        = 1
        ,outlier       = 1
        ,printto       = d:\txt\vdo\&data..txt        /* file or output if output window */
        ,Cleanup       = 0           /* 0 or 1 delete intermediate datasets */
        );
    DATA VERIFICATION + VALIDATION FOR WORK.MARCH_2020_US_DEATHS In March


        Observations:        3253      Obs
        Variables:           42      Variables
        ----------------------------------------

        Variables by type:
        -------------------
           Numeric:       36
             Quantity:         36
             Date/Time:         0

           Character:      6
        =========================


        Missing or uniformly evaluated variables:
        ------------------------------------------
          - missing for all observations:      0
          - uniformly evaluated -- all:        1
              with one or more missing values:      0
              with no missing values:               1
        ==================================================


     #     Variable            Unique Values       Label                                   Type    Length  Format
    ---    --------            -------------       -----                                   ----    ------  ------

      Primary keys
      ============
      9    UID                        3,253                                                num       8     BEST12.
      2    Combined_Key               3,253                                                char     46     $46.

      4    FIPS                       3,251  * counties 2 dups (missings?)                 num       8     BEST12.

      1    Admin2                     1,893                                                char     21     $21.
      3    Country_Region                 1   US                                           char      2     $2.
      5    Lat                        3,149                                                num       8     BEST12.
      6    Long                       3,149                                                num       8     BEST12.

      7    Population                 3,095                                                num       8     BEST12.

      8    Province_State                58   * seems a little high states +terr           char     24     $24.

     21    d3_01_2020                     2   * unique counts increase day by day          num       8     BEST12.
     32    d3_02_2020                     3                                                num       8     BEST12.
     34    d3_03_2020                     3                                                num       8     BEST12.
     35    d3_04_2020                     3                                                num       8     BEST12.
     36    d3_05_2020                     3                                                num       8     BEST12.
     37    d3_06_2020                     3                                                num       8     BEST12.
     38    d3_07_2020                     3                                                num       8     BEST12.
     39    d3_08_2020                     3                                                num       8     BEST12.
     40    d3_09_2020                     3                                                num       8     BEST12.
     11    d3_10_2020                     3                                                num       8     BEST12.
     12    d3_11_2020                     3                                                num       8     BEST12.
     13    d3_12_2020                     4                                                num       8     BEST12.
     14    d3_13_2020                     4                                                num       8     BEST12.
     15    d3_14_2020                     4                                                num       8     BEST12.
     16    d3_15_2020                     5                                                num       8     BEST12.
     17    d3_16_2020                     7                                                num       8     BEST12.
     18    d3_17_2020                     8                                                num       8     BEST12.
     19    d3_18_2020                     7                                                num       8     BEST12.
     20    d3_19_2020                    10                                                num       8     BEST12.
     22    d3_20_2020                    11                                                num       8     BEST12.
     23    d3_21_2020                    12                                                num       8     BEST12.
     24    d3_22_2020                    14                                                num       8     BEST12.
     25    d3_23_2020                    17                                                num       8     BEST12.
     26    d3_24_2020                    17                                                num       8     BEST12.
     27    d3_25_2020                    23                                                num       8     BEST12.
     28    d3_26_2020                    26                                                num       8     BEST12.
     29    d3_27_2020                    27                                                num       8     BEST12.
     30    d3_28_2020                    28                                                num       8     BEST12.
     31    d3_29_2020                    30                                                num       8     BEST12.
     33    d3_30_2020                    31  0 + 1-30                                      num       8     BEST12.

     10    code3                          6                                                num       8     BEST12.
     41    iso2                           6                                                char      2     $2.
     42    iso3                           6                                                char      3     $3.


    The following variables are uniformly evaluated with NO missing values
    a single non-missing value is present for all observations

          #    Variable          Distinct
        ---    --------------    -------

          1    Country_Region    US


    CODE/DECODES
    ============
                                               e    Cumulative
    code3    iso2 iso3   Frequency     Percent       Percent
    ---------------------------------------------------------

      840    US   USA       97440       99.85         99.97

       16    AS   ASM          30        0.03          0.03
      316    GU   GUM          30        0.03          0.06
      580    MP   MNP          30        0.03          0.09
      630    PR   PRI          30        0.03          0.12
      850    VI   VIR          30        0.03        100.00


    ONE TO ONE  -- ONE TO MANY  --  MANY TO ONE -- MANY TO MANY
    =============================================================

                       Variables

       One to One      code3 to iso2
       One to One      code3 to iso3
       One to Many     code3 to Province_State
       One to One      dtesas to dtec
       One to One      iso2 to iso3
       One to Many     iso2 to Province_State
       One to Many     iso3 to Province_State


    PERFECT CORRELATION
    ===================

                Correlated    Correlation    Number    Spearman
    Variable       With           Coef       of Obs       P

    FIPS          UID             1.00000       97530     <.0001    ** very close relationship between FIPS and UID  UID = 840 + FIPS (99.97% of time)


     MAXIMUMS AND MINIMUMS
    ======================================================

    variable          min                              max

    iso2              AS                               VI
    iso3              ASM                              VIR
    Admin2            Abbeville                        Ziebach
    Province_State    Alabama                          Wyoming
    Country_Region    US                               US
    Combined_Key      Abbeville, South Carolina, US    Ziebach, South Dakota, US
    UID               16                               84099999
    code3             16                               850
    FIPS              60                               99999
    Lat               -14.271                          69.31479216
    Long_             -170.132                         145.6739
    Population        0                                10039107

    d3_1_2020         0                                1        * MAXIMUM DAILY VALUE
    d3_2_2020         0                                5
    d3_3_2020         0                                6
    d3_4_2020         0                                9
    d3_5_2020         0                                10
    d3_6_2020         0                                12
    d3_7_2020         0                                15
    d3_8_2020         0                                17
    d3_9_2020         0                                17
    d3_10_2020        0                                21
    d3_11_2020        0                                22
    d3_12_2020        0                                27
    d3_13_2020        0                                32
    d3_14_2020        0                                34
    d3_15_2020        0                                35
    d3_16_2020        0                                43
    d3_17_2020        0                                46
    d3_18_2020        0                                56
    d3_19_2020        0                                60
    d3_20_2020        0                                67
    d3_21_2020        0                                74
    d3_22_2020        0                                75
    d3_23_2020        0                                99
    d3_24_2020        0                                131
    d3_25_2020        0                                199
    d3_26_2020        0                                281
    d3_27_2020        0                                366
    d3_28_2020        0                                517
    d3_29_2020        0                                678
    d3_30_2020        0                                790


    MISSING PATTERN
    ================                    P  C
                                        r  o
                                        o  u        C
                                        v  n        o
                                        i  t        m  P                             d  d  d  d  d  d  d  d  d  d  d  d  d  d  d  d  d  d  d  d  d
                                        n  r        b  o  d  d  d  d  d  d  d  d  d  3  3  3  3  3  3  3  3  3  3  3  3  3  3  3  3  3  3  3  3  3
                                        c  y        i  p  3  3  3  3  3  3  3  3  3  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _
              P                         e  _        n  u  _  _  _  _  _  _  _  _  _  1  1  1  1  1  1  1  1  1  1  2  2  2  2  2  2  2  2  2  2  3  m
              E                      A  _  R        e  l  1  2  3  4  5  6  7  8  9  0  1  2  3  4  5  6  7  8  9  0  1  2  3  4  5  6  7  8  9  0  i
              R    G           c     d  S  e     L  d  a  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  _  s
         F    C    r     i  i  o  F  m  t  g     o  _  t  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  s
    O    r    E    o  U  s  s  d  I  i  a  i  L  n  K  i  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  i
    b    e    N    u  I  o  o  e  P  n  t  o  a  g  e  o  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  n
    s    q    T    p  D  2  3  3  S  2  e  n  t  _  y  n  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  g

    1  3244  99.7  1                                                                                                                                0 No missing
    2     7   0.2  2                 7                                                                                                              7 Missing
    3     2   0.1  3              2                                                                                                                 2 Missing




    Missing vs Populated Frequencies

                    Populated,  Missing and Missing Frequencies and Percents
                                                                                Missing#Pe
      Variable                                   Populated             Missing       rcent
      UID                                            3,253                   0      0.00%
      iso2                                           3,253                   0      0.00%
      iso3                                           3,253                   0      0.00%
      code3                                          3,253                   0      0.00%

      FIPS                                           3,251                   2      0.06%
      Admin2                                         3,246                   7      0.22%

      Province_State                                 3,253                   0      0.00%
      Country_Region                                 3,253                   0      0.00%
      Lat                                            3,253                   0      0.00%
      Long_                                          3,253                   0      0.00%
      Combined_Key                                   3,253                   0      0.00%




                                                Cumulative    Cumulative
                Lat    Frequency     Percent     Frequency      Percent
    --------------------------------------------------------------------
    Negative                  1        0.03             1         0.03
    Zero                    104        3.20           105         3.23
    Positive               3148       96.77          3253       100.00


                                                Cumulative    Cumulative
              Long     Frequency     Percent     Frequency      Percent
    --------------------------------------------------------------------
    Negative               3147       96.74          3147        96.74
    Zero                    104        3.20          3251        99.94
    Positive                  2        0.06          3253       100.00


                                                Cumulative    Cumulative
         Population    Frequency     Percent     Frequency      Percent
    --------------------------------------------------------------------
    Zero                    105        3.23           105         3.23
    Positive               3148       96.77          3253       100.00



    MOST FREQUENT TOP 10 COUNT LEVELS
    =================================

      Locality         Frequency
       Count     3/15    3/30    3/25   3/30

        0       3,233   3,157   3,027   2,807   * Counties   with 0 count

        1          15      69     136     223
        2           3      12      41      77
        3           1       6      16      33
        4           1       2       5      22
        5                   2       5      19
        6                   1       4      17
        7                   1       3      11
        8                   1       2       7
        9                   1       1       7


    Missing vs Populated Frequencies

                    Populated,  Missing and Missing Frequencies and Percents
                                                                                Missing#Pe
      Variable                                   Populated             Missing       rcent
      UID                                           97,590                   0      0.00%
      iso2                                          97,590                   0      0.00%
      iso3                                          97,590                   0      0.00%
      code3                                         97,590                   0      0.00%

      FIPS                                          97,530                  60      0.06%
      Admin2                                        97,380                 210      0.22%

      Province_State                                97,590                   0      0.00%
      Country_Region                                97,590                   0      0.00%
      Lat                                           97,590                   0      0.00%
      Long_                                         97,590                   0      0.00%
      Combined_Key                                  97,590                   0      0.00%
      population                                    97,590                   0      0.00%
      dtesas                                        97,590                   0      0.00%
      dtec                                          97,590                   0      0.00%
      deaths                                        97,590                   0      0.00%

    Cramer V
    ALL PAIRS OF VARIABLES WHERE MAX LEVELS IS 2000 AND MAX NUMBER OF VARIABLES IS 30
    dtec *

    Obs    Table                            Statistic     Value

      1    Table code3 * iso2               Cramer's V    1.0000   One to ones
      2    Table code3 * iso3               Cramer's V    1.0000
      3    Table iso2 * iso3                Cramer's V    1.0000
      4    Table code3 * Province_State     Cramer's V    1.0000
      5    Table iso2 * Province_State      Cramer's V    1.0000
      6    Table iso3 * Province_State      Cramer's V    1.0000
      7    Table dtesas * dtec              Cramer's V    1.0000

     
    istogram for character variable Province_State



    sixtee                                                                         Cum.              Cum.
                                                                             Freq  Freq  Percent  Percent
                       |
    Texas              |***************************************************   256   256     7.87     7.87     256 Localities
    Georgia            |********************************                      161   417     4.95    12.82
    Virginia           |***************************                           135   552     4.15    16.97
    Kentucky           |************************                              122   674     3.75    20.72
    Missouri           |************************                              118   792     3.63    24.35
    Kansas             |*********************                                 107   899     3.29    27.64
    Illinois           |*********************                                 104  1003     3.20    30.83
    North Carolina     |********************                                  102  1105     3.14    33.97
    Iowa               |********************                                  101  1206     3.10    37.07
    Tennessee          |*******************                                    97  1303     2.98    40.06
    Nebraska           |*******************                                    95  1398     2.92    42.98
    Indiana            |*******************                                    94  1492     2.89    45.87
    Ohio               |******************                                     90  1582     2.77    48.63
    Minnesota          |******************                                     89  1671     2.74    51.37
    Michigan           |*****************                                      85  1756     2.61    53.98
    Mississippi        |*****************                                      84  1840     2.58    56.56
    Oklahoma           |****************                                       79  1919     2.43    58.99
    Arkansas           |***************                                        77  1996     2.37    61.36
    Wisconsin          |***************                                        74  2070     2.27    63.63
    Pennsylvania       |**************                                         69  2139     2.12    65.75
    Florida            |**************                                         69  2208     2.12    67.88
    Alabama            |**************                                         69  2277     2.12    70.00
    South Dakota       |**************                                         68  2345     2.09    72.09
    Louisiana          |*************                                          66  2411     2.03    74.12
    Colorado           |*************                                          66  2477     2.03    76.15
    New York           |*************                                          64  2541     1.97    78.11
    California         |************                                           60  2601     1.84    79.96
    Montana            |************                                           58  2659     1.78    81.74
    West Virginia      |***********                                            57  2716     1.75    83.49
    North Dakota       |***********                                            55  2771     1.69    85.18
    South Carolina     |**********                                             48  2819     1.48    86.66
    Idaho              |*********                                              46  2865     1.41    88.07
    Washington         |********                                               41  2906     1.26    89.33
    Oregon             |********                                               38  2944     1.17    90.50
    New Mexico         |*******                                                35  2979     1.08    91.58
    Utah               |******                                                 31  3010     0.95    92.53
    Alaska             |******                                                 31  3041     0.95    93.48
    Maryland           |*****                                                  26  3067     0.80    94.28
    Wyoming            |*****                                                  25  3092     0.77    95.05
    New Jersey         |*****                                                  23  3115     0.71    95.76
    Nevada             |****                                                   19  3134     0.58    96.34
    Maine              |****                                                   18  3152     0.55    96.90
    Massachusetts      |***                                                    17  3169     0.52    97.42
    Arizona            |***                                                    17  3186     0.52    97.94
    Vermont            |***                                                    16  3202     0.49    98.43
    New Hampshire      |**                                                     12  3214     0.37    98.80
    Connecticut        |**                                                     10  3224     0.31    99.11
    Rhode Island       |*                                                       7  3231     0.22    99.32
    Hawaii             |*                                                       7  3238     0.22    99.54
    Delaware           |*                                                       5  3243     0.15    99.69
    District of Colu   |*                                                       3  3246     0.09    99.78
    Virgin Islands     |                                                        1  3247     0.03    99.82
    Puerto Rico        |                                                        1  3248     0.03    99.85
    Northern Mariana   |                                                        1  3249     0.03    99.88
    Guam               |                                                        1  3250     0.03    99.91
    Grand Princess     |                                                        1  3251     0.03    99.94
    Diamond Princess   |                                                        1  3252     0.03    99.97
    American Samoa     |                                                        1  3253     0.03   100.00
                       |
                       ----+---+---+---+---+---+---+---+---+---+---+---+---
                           20  40  60  80 100 120 140 160 180 200 220 240



    The FREQ Procedure

    Variable Correlations (Spearman)

                  Correlated    Correlation    Number    Spearman
    Variable         With           Coef       of Obs       P

    FIPS          UID             1.00000       97530     <.0001      * this is due to UID=840 + FIPS code for 99%


     10 most frequent values of Admin2           ( )

                  1,894 distinct values in total

     Rank     Value                                    Frequency
     ----     -----                                    ---------


       1    Unassigned                                    1,530

       2    Washington                                      930
       3    Jefferson                                       780
       4    Franklin                                        750
       5    Jackson                                         720
       6    Lincoln                                         720
       7    Madison                                         600
       8    Clay                                            540
       9    Montgomery                                      540
      10    Union                                           540


     10 most frequent values of Province_State   ( )

                      58 distinct values in total

      Rank     Value                                    Frequency
      ----     -----                                    ---------


        1    Texas                                         7,680     most granualar
        2    Georgia                                       4,830
        3    Virginia                                      4,050
        4    Kentucky                                      3,660
        5    Missouri                                      3,540
        6    Kansas                                        3,210
        7    Illinois                                      3,120
        8    North Carolina                                3,060
        9    Iowa                                          3,030
       10    Tennessee                                     2,910



    10 most frequent values of code3            ( )

                     6 distinct values in total

    Rank     Value                                    Frequency
    ----     -----                                    ---------


      1    840                                          97,440
      2    16                                               30
      3    316                                              30
      4    580                                              30
      5    630                                              30
      6    850                                              30

    10 most frequent values of FIPS             ( )

                  3,252 distinct values in total

     Rank     Value                                    Frequency
     ----     -----                                    ---------


       1    .                                                60
       2    60                                               30
       3    66                                               30
       4    69                                               30
       5    72                                               30
       6    78                                               30
       7    1001                                             30
       8    1003                                             30
       9    1005                                             30
      10    1007                                             30




    10 most frequent values of Lat              ( )

                 3,149 distinct values in total

    Rank     Value                                    Frequency
    ----     -----                                    ---------


      1    0                                             3,120
      2    41.40674725                                      60
      3    -14.271                                          30
      4    13.4443                                          30
      5    15.0979                                          30
      6    18.2208                                          30
      7    18.3358                                          30
      8    19.60121157                                      30
      9    20.86399628                                      30
     10    21.17882515                                      30


    10 most frequent values of deaths           ( )

                     75 distinct values in total

     Rank     Value                                    Frequency
     ----     -----                                    ---------


       1    0                                            94,594
       2    1                                             1,757
       3    2                                               459
       4    3                                               212
       5    4                                               139
       6    5                                                78
       7    6                                                78
       8    7                                                38
       9    8                                                28
      10    9                                                25


    10  least frequent values

      65    136                                               1
      66    141                                               1
      67    144                                               1
      68    159                                               1
      69    199                                               1
      70    281                                               1
      71    298                                               1
      72    366                                               1
      73    517                                               1
      74    678                                               1
      75    790                                               1


      10 most frequent values of population       (

                   3,095 distinct values in total

      Rank     Value                                    Frequency
      ----     -----                                    ---------


        1    0                                             3,150
        2    2530                                             90
        3    14651                                            90
        4    1794                                             60
        5    2013                                             60
        6    2216                                             60
        7    2274                                             60
        8    2299                                             60
        9    2356                                             60
       10    2879                                             60


      10  least frequent values

    3,085    2559903                                          30
    3,086    2635516                                          30
    3,087    2716940                                          30
    3,088    2933408                                          30
    3,089    3175692                                          30
    3,090    3338330                                          30
    3,091    4485414                                          30
    3,092    4713325                                          30
    3,093    5150233                                          30
    3,094    5803210                                          30
    3,095    10039107                                         30


     The MEANS Procedure

                               N
    Variable          N     Miss         Minimum         Maximum            Mean          Median         Std Dev             Sum

    deaths        97590        0               0     790.0000000       0.1473307               0       4.5930428        14378.00

    population    97590        0               0     10039107.00 CA    103356.49        24658.00       345679.84     10086559800
    ----------------------------------------------------------------------------------------------------------------------------


    Univariate distribution of dtesas (   ) values
    Distinct values: 30
    Format in dataset:  DATE9.
    -----------------------------------------------------------------

    n        97,590                              min       03/01/2020
    nmiss         0                              P1        03/01/2020
                                                 P5        03/02/2020
    mean                 03/15/2020              P10       03/03/2020
    std - days                    8.66           Q1        03/08/2020
    std - years                   0.02           median    03/15/2020
                                                 Q3        03/23/2020
    range - days                 29              P90       03/27/2020
    range - years                 0.08           P95       03/29/2020
                                                 P99       03/30/2020
    Q1-Q3 - days                 15              max       03/30/2020
    Q1-Q3 - years                 0.04

    The UNIVARIATE Procedure
    Variable:  deaths

                                Moments

    N                       97590    Sum Weights              97590
    Mean               0.14733067    Sum Observations         14378
    Std Deviation      4.59304282    Variance            21.0960424
    Skewness           114.130051    Kurtosis            16316.4806
    Uncorrected SS        2060860    Corrected SS        2058741.68
    Coeff Variation    3117.50625    Std Error Mean      0.01470273


                  Basic Statistical Measures

        Location                    Variability

    Mean     0.147331     Std Deviation            4.59304
    Median   0.000000     Variance                21.09604
    Mode     0.000000     Range                  790.00000
                          Interquartile Range            0


               Tests for Location: Mu0=0

    Test           -Statistic-    -----p Value------

    Student's t    t  10.02064    Pr > |t|    <.0001
    Sign           M      1498    Pr >= |M|   <.0001
    Signed Rank    S   2244753    Pr >= |S|   <.0001


    Quantiles (Definition 5)

    Level         Quantile

    100% Max           790
    99%                  2
    95%                  0
    90%                  0
    75% Q3               0
    50% Median           0
    25% Q1               0
    10%                  0
    5%                   0
    1%                   0
    0% Min               0

    DATA VERIFICATION + VALIDATION FOR WORK.MARCH_2020_US_DEATHS
    march_2020_us_deaths
    Univariate tabulations non-date/time/datetime Numeric variables
    includes only variables with TWO or more values

    The UNIVARIATE Procedure
    Variable:  deaths

            Extreme Observations

    ----Lowest----        ----Highest---

    Value      Obs        Value      Obs

        0    97578          298    97020
        0    97577          366    55917
        0    97576          517    55918
        0    97575          678    55919
        0    97574          790    55920


                              Histogram                          #  Boxplot                        Normal Probability Plot
        775+*                                                    1     *         775+                                                  *
           .                                                                        |
           .*                                                    1     *            |                                                  *
        625+                                                                     625+
           .                                                                        |
           .*                                                    1     *            |                                                  *
        475+                                                                     475+
           .                                                                        |
           .*                                                    1     *            |                                                  *
        325+                                                                     325+
           .*                                                    2     *            |                                                  *
           .                                                                        |
        175+*                                                    2     *         175+                                                  *
           .*                                                    8     *            |                                                  *
           .*                                                   21     *            |                                                  *
         25+************************************************ 97553  +--*--+       25+***************************************************
            ----+----+----+----+----+----+----+----+----+---                         +----+----+----+----+----+----+----+----+----+----+
            * may represent up to 2033 counts                                            -2        -1         0        +1        +2


    DATA VERIFICATION + VALIDATION FOR WORK.MARCH_2020_US_DEATHS
    march_2020_us_deaths
    Univariate tabulations non-date/time/datetime Numeric variables
    includes only variables with TWO or more values

    The UNIVARIATE Procedure
    Variable:  population

                                Moments

    N                       97590    Sum Weights              97590
    Mean               103356.489    Sum Observations    1.00866E10
    Std Deviation      345679.835    Variance            1.19495E11
    Skewness            13.165934    Kurtosis            274.961901
    Uncorrected SS     1.27039E16    Corrected SS        1.16614E16
    Coeff Variation    334.453925    Std Error Mean      1106.55088


                  Basic Statistical Measures

        Location                    Variability

    Mean     103356.5     Std Deviation             345680
    Median    24658.0     Variance              1.19495E11
    Mode          0.0     Range                   10039107
                          Interquartile Range        56719


               Tests for Location: Mu0=0

    Test           -Statistic-    -----p Value------

    Student's t    t  93.40419    Pr > |t|    <.0001
    Sign           M     47220    Pr >= |M|   <.0001
    Signed Rank    S  2.2298E9    Pr >= |S|   <.0001


    Quantiles (Definition 5)

    Level          Quantile

    100% Max       10039107
    99%             1273954
    95%              440059
    90%              209177
    75% Q3            66551
    50% Median        24658
    25% Q1             9832
    10%                3688
    5%                 1392
    1%                    0
    0% Min                0

    DATA VERIFICATION + VALIDATION FOR WORK.MARCH_2020_US_DEATHS
    march_2020_us_deaths
    Univariate tabulations non-date/time/datetime Numeric variables
    includes only variables with TWO or more values

    The UNIVARIATE Procedure
    Variable:  population

              Extreme Observations

    ----Lowest----        ------Highest-----

    Value      Obs            Value      Obs

        0    97590         10039107     6296
        0    97589         10039107     6297
        0    97588         10039107     6298
        0    97587         10039107     6299
        0    97586         10039107     6300


                              Histogram                          #  Boxplot                        Normal Probability Plot
    1.025E7+*                                                   30     *    10250000+                                                  *
           .                                                                        |
    9250000+                                                                 9250000+
           .                                                                        |
    8250000+                                                                 8250000+
           .                                                                        |
    7250000+                                                                 7250000+
           .                                                                        |
    6250000+                                                                 6250000+
           .*                                                   30     *            |                                                  *
    5250000+*                                                   30     *     5250000+                                                  *
           .*                                                   30     *            |                                                  *
    4250000+*                                                   30     *     4250000+                                                  *
           .                                                                        |
    3250000+*                                                   60     *     3250000+                                                  *
           .*                                                  120     *            |                                                  *
    2250000+*                                                  210     *     2250000+                                                  *
           .*                                                  210     *            |                                                 **
    1250000+*                                                  630     *     1250000+                                               ***
           .**                                                2850     *            |                                     +++++******+++
     250000+************************************************ 93360  +--0--+   250000+*******************************************
            ----+----+----+----+----+----+----+----+----+---                         +----+----+----+----+----+----+----+----+----+----+
            * may represent up to 1945 counts                                            -2        -1         0        +1        +2



    Primary keys

    Count of unique levels for combined_key deaths vs all  other variables in work.march_2020_us_deaths

    Obs    records    var1st          levels_1    var2nd            levels_2    unique

      7    97,590     COMBINED_KEY     3,253      dtesas                30      97,590
     15    97,590     COMBINED_KEY     3,253      dtec                  30      97,590



    Maximums and Minimums work.march_2020_us_deaths

    variable          min                              max

    iso2              AS                               VI
    iso3              ASM                              VIR
    Admin2            Abbeville                        Ziebach
    Province_State    Alabama                          Wyoming
    Country_Region    US                               US
    Combined_Key      Abbeville, South Carolina, US    Ziebach, South Dakota, US
    dtec              3/1/2020                         3/9/2020
    UID               16                               84099999      * has fips in it
    code3             16                               850
    FIPS              60                               99999
    Lat               -14.271                          69.31479216
    Long_             -170.132                         145.6739
    population        0                                10039107
    dtesas            21975                            22004
    deaths            0                                790




                                                                                Province_   Country_                 Combined_
    Obs    Freq   PERCENT   Group   UID   iso2   iso3   code3   FIPS   Admin2     State      Region    Lat   Long_      Key      population   dtesas   dtec   deaths   missing

     1    97320    99.7       1      X     X      X       X      X       X          X          X        X      X         X           X          X       X       X         0  (no miss

     2      210     0.2       2      X     X      X       X      X       .          X          X        X      X         X           X          X       X       X         1
     3       60     0.1       3      X     X      X       X      .       X          X          X        X      X         X           X          X       X       X         1

 












