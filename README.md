# STATESPACE
Predicting Cancer Morbidity using the State Space Model


proc import
datafile="I:\My Project\AllCancerIncidence.xlsx"
DBMS=excel REPLACE
out=project;
quit;
proc import
datafile="I:\My Project\AllCancerIncidence2.xlsx"
DBMS=excel REPLACE
out=project2;
quit;
proc import
datafile="I:\My Project\US.xlsx"
DBMS=excel REPLACE
out=US;
quit;
*need to combine the data*;
data combine;
set project project2;
by Leading_Cancer_Sites State Year;
run;quit;
proc print data=combine;
quit;
proc print data=US;
quit;


**********************************************US***********************************
******************;
title US;
*plots of cancer count by year**;
symbol1 interpol=join
value=dot;
ods html;
proc gplot data=US;
plot count*year;
by Leading_Cancer_Sites;
run;quit;
*STATESPACE*;
title2 STATESPACE;
proc statespace data=US out=forecastUS lead=5;
var count;
id year;
by Leading_Cancer_Sites;
run;quit;
proc print data=forecastUS;
run;quit;
title2 FORECAST;
proc gplot data=forecastUS;
plot count*year for1*year /overlay;
by Leading_Cancer_Sites;
run;quit;
proc univariate data=US;
qqplot count/ normal(mu=est sigma=est color=red l=2);
ods html close;


*************************************All Sites
Combined******************************************;
title All Cancer Sites;
data allcancersites;
set combine;
if leading_cancer_sites="All Sites Combined" then output;
run;quit;
proc print data=allcancersites;
run;quit;
*plots of cancer count by individual states for each year**;
symbol1 interpol=join
value=dot;
ods html;
proc gplot data=allcancersites;
plot count*year;
by state;
run;quit;
*STATESPACE*;
title2 STATESPACE;
proc statespace data=allcancersites out=forecastallcancer lead=5;
var count;
id year;
by state;
run;quit;
proc print data=forecastallcancer;
run;quit;
proc gplot data=forecastallcancer;
plot count*year for1*year /overlay;
by state;
run;quit;
ods html close;


*****************************Brain and other Nervous
System******************************************;
title Brain and other Nervous System;
data Brain;
set combine;
if leading_cancer_sites="Brain and Other Nervous System" then output;
run;quit;
proc print data=Brain;
run;quit;
*plots of cancer count by individual states for each year**;
symbol1 interpol=join
value=dot;
ods html;
proc gplot data=Brain;
plot count*year;
by state;
run;quit;


*STATESPACE*;
proc statespace data=Brain out=forecastBrain lead=5;
var count;
id year;
by state;
run;quit;
proc print data=forecastBrain;
run;quit;
proc gplot data=forecastBrain;
plot count*year for1*year /overlay;
by state;
run;quit;
ods html close;


****************************Breast*******************************************;
title Individual States;
title2 Breast Cancer;
data Breast;
set combine;
if leading_cancer_sites="Breast" then output;
run;quit;
proc print data=Breast;
run;quit;
*plots of cancer count by individual states for each year**;
symbol1 interpol=join
value=dot;
ods html;
proc gplot data=Breast;
plot count*year;
by state;
run;quit;


*STATESPACE*;
title3 STATESPACE;
proc statespace data=Breast out=forecastBreast lead=5;
var count;
id year;
by state;
run;quit;
proc print data=forecastBreast;
run;quit;
proc gplot data=forecastBreast;
plot count*year for1*year /overlay;
by state;
run;quit;
ods html close;

**********************************Colon and
Rectum***********
title Colon and Rectum;
data ColonRectum;
set combine;
if leading_cancer_sites="Colon and Rectum" then output;
run;quit;
proc print data=ColonRectum;
run;quit;
*plots of cancer count by individual states for each year**;
symbol1 interpol=join
value=dot;
ods html;
proc gplot data=ColonRectum;
plot count*year;
by state;
run;quit;


*STATESPACE*;
proc statespace data=ColonRectum out=forecastColonRectum lead=5;
var count;
id year;
by state;
run;quit;
proc print data=forecastColonRectum;
run;quit;
proc gplot data=forecastColonRectum;
plot count*year for1*year /overlay;
by state;
run;quit;
ods html close;
