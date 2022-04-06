# group10_project

![image](https://user-images.githubusercontent.com/90135381/158727737-2db68a11-9ee9-40e7-986e-71c8bb8369c7.png)





***IMAGE*** obtained from: https://lovepik.com/image-401202582/real-estate-investment.html

________________


 **General Topic: Real Estate in Canada**
 ________________________________

***OVERVIEW:***

The motivation for this project is to ultimately integrate all of the knowledge obtained and pertain it to real life situations utilizing statistics, data (pre)processing and Machine Learning (ML) procedures to create relevent and predictive models regarding this topic. The final model will be presented utilizing vizualizations for ease of conveying the aforementioned. A collaborative effort is being initiated to consider the topic of housing price indices, income, availability, and immigration across Canada, as this is a pertinent and essential topic among people in this day and age! 2011-2019

https://www.nbc.ca/content/dam/bnc/en/rates-and-analysis/economic-analysis/housing-affordability.pdf

## **Questions with data:**

- does immigration or population have a greater impact on housing prices provincially, in Canada?-2x linear regression

- Which province is the best province to purchase a house in for investment/personal purposes?-tableau

- How does household income determine housing selection and location?-linear reg/TBD

- How does immigration effect the residential property price index across Canada?TBD

## **Additional Questions:**

- How does crime rates effect provincial population/housing prices?

- How does secondary school availability effect population/house prices?

- How does provincial greenhouse gas effect population/house prices?

## **We chose this question because:**

- affordability concerns for first-time buyers/younger adults

- population alterations and migration trends across Canada

- municipal/national housing: trending if housing supply meets demands


________
***RESULTS:***

***DELIVERABLE/SEGMENT: 1***

The results for Deliverable 1 encompass team collaboration via slack and with the Teaching Staff, in order to accomplish the goals. GitHub establishment requirements will be met including: initialization of an appropriate repository, addition of all branches and a README. Additionally, cleaning and pre-processing the data will be considered. A 'mockup' database will be included, as well as a potential 'mockup' ML model. Lastly, an example ERD will be included for this submission to meet all requirements. A SCRUM method of approach will be contemplated in order to attain all goals with optimal results.

***DELIVERABLE/SEGMENT: 2***

For this Deliverable, there will be augmentations for 5 requirements:

**1) PRESENTATION:** with project outline, topic and why we chose the questions, data source, description of data exploration and analysis, google slides

- Link to presentation: https://docs.google.com/presentation/d/1u-Dq1I57YpX5nCJLc6dQAZWPwopah6UY30V5wysAfAc/edit#slide=id.g35f391192_065


<img width="1440" alt="Presentation" src="https://user-images.githubusercontent.com/90135381/161447429-2e0a0aee-741a-4c87-8e6d-433d6955d560.png">




Links to scribblemaps:

- Interactive Map of Ranked Provincial Populations (2015-2019)

https://www.scribblemaps.com/create/?gclid=CjwKCAjwuYWSBhByEiwAKd_n_mWpBTjhfwRO0qDbu9-bN8FImiDovtxHWmCMPVT0wdCKbbPEdYf9tBoCOXUQAvD_BwE#/id=lErWy8Ic1v&lat=56.70160853&lng=-98.30477881&z=4&t=custom_style

<img width="1440" alt="Interactive Provincial map with Populations (2015-2019)" src="https://user-images.githubusercontent.com/90135381/160724888-714fc065-a9e4-4c3c-8bc7-ab0301ed2039.png">


- Interactive Map of Provincial House Prices (2015-2019)


https://www.scribblemaps.com/create/?gclid=CjwKCAjwuYWSBhByEiwAKd_n_mWpBTjhfwRO0qDbu9-bN8FImiDovtxHWmCMPVT0wdCKbbPEdYf9tBoCOXUQAvD_BwE#/id=JCrtVfTC3R&lat=53.797534&lng=-94.67929053&z=4&t=custom_style


<img width="1440" alt="Screen Shot 2022-03-28 at 3 25 18 PM" src="https://user-images.githubusercontent.com/90135381/160724911-23a5784b-bb89-487e-8f81-6e1c6a9dcc80.png">



**2) GitHub:** working code for exploratory and ML updated README, communication protocols, project outline, branches/person with 4 commits per person. **Deliverable 2 difficulties:** actions to correct: request commits to be made on collaborator branches, with a pull request; avoid deleting files until permission is granted by file owner or grade has been obtained; only convey ownership of files completed by self; request README changes

**3) ML model:** preliminary preprocessing, feature engineering and feature description with decision-making process, train and test data description, model choice with limitations and benefits

## **ML Model**

 - Description of preliminary data preprocessing and analysis:

   - Data cleaning: Remove the irrelevant observations from collect data, including the null value and duplicate data.  
   - Data intergration: on database process, we combime all independent variable and dependent variables in one table.
     -	Independent variable: greenhouse emission, crime rate, immigrant population, Median Immigrant Wages, household income, provincial population.
     -	Dependent variable: house price 
   - Data reduction: reduce dimensionality using MinMaxScaler method.
   - Data type transfer: change string to float type.

- Description of preliminary feature engineering and preliminary feature selection, including their decision-making process 
   - We choose the most common features influent house prices using the multi variables regression model to predict the 2020 house price. Also, verify the accuracy and mes of the model.

- Description of how data was split into training and testing sets
   - 80% of indepedent variables data as the training set, and the remaining 20% are used as the test set, in order to predict the house price for 2020.
   
- Explanation of model choice, including limitations and benefits 
  - Model: multi-variables regression
  - Description: Collected data house prices are continuous data, and this model helps us directly predict the future year house price in a specific range (2015-2019). 
  -	Limitation
    -	The model can only show the effects of selected features and cannot analyze factors that were not selected.
    -	It is challenging to model nonlinear data or polynomial regression with the correlation between data features.
  -	Benefits
    -	Visually show the impact of each element on house prices
    -	Verify if these factors affect house prices to the same extent each year


<img width="819" alt="Import Dep:House DF" src="https://user-images.githubusercontent.com/90135381/161396483-77684cf1-c5ab-4cb3-9e9f-5ab0762e6498.png">

                      FIGURE: Imp Dep/House DF


<img width="752" alt="House DF" src="https://user-images.githubusercontent.com/90135381/161396488-3f952a1e-765e-426a-844a-ff5f6a95f375.png">

                     FIGURE: House DF


<img width="817" alt="Scatterplots" src="https://user-images.githubusercontent.com/90135381/161396504-0fc56a24-acf4-4537-b69c-5db80c16d228.png">

                    FIGURE: Scatterplots


<img width="638" alt="Train:Test:MSE:R2" src="https://user-images.githubusercontent.com/90135381/161396492-306d84d4-b0c4-4f1d-aa1f-2e70ce41fefc.png">

                   FIGURE: Train/Test/MSE/R2


**4) DB:** 

**UPDATED ERD**

This updated ERD depicts the relational ties between the nine tables cleaned and  created in a Database in preparation for analysis. With the common denominators being year and province, etc it will be determined how crime rate, greenhouse emmisions, number of post secondary educational institutions, household income, immigration income and population, as well as educational institution tuition help to shape the choice of where to live and the effects on housing prices per province. The nine tables are as follows:

1. avg_house_prices
2. crime_rate
3. educational_institutions
4. greenhouse
5. household_income
6. immigration_median_income
7. immigration_population
8. tuition?

<img width="1440" alt="Updated ERD" src="https://user-images.githubusercontent.com/90135381/160885882-59ffcdde-f6e9-4f93-884b-3c9ca2f7120d.png">
fully integrated DB connecting to the model, 1+ joins, one connection string, updated ERD (above) with the schema/queries below:

## **Database**

The DataBase was completed via Postgres and SQL, along with the ERD. Please refer to link below:
http://group10database.cakmngpixa6j.us-east-1.rds.amazonaws.com/


CREATE TABLE household_income (
	Year INT NOT NULL,
	Province VARCHAR(40) NOT NULL,
	Income INT NOT NULL
);

CREATE TABLE population_analysis (
	Year INT NOT NULL,
	Province VARCHAR(40) NOT NULL,
	population BIGINT NOT NULL
);
CREATE TABLE avg_house_price (
	Year INT NOT NULL,
	Province VARCHAR(40) NOT NULL,
	Avg_price BIGINT NOT NULL
);

CREATE TABLE crime_rate (
	Year INT NOT NULL,
	Province VARCHAR(40) NOT NULL,
	Avg_price BIGINT NOT NULL
);
CREATE TABLE educational_institutions (
	Province VARCHAR(40) NOT NULL,
	educational_institutions INT NOT NULL
);
CREATE TABLE immigration_median_income (
	Year INT NOT NULL,
	Province VARCHAR(40) NOT NULL,
	immigrant_median_income BIGINT NOT NULL
);

CREATE TABLE immigration_population (
	Year INT NOT NULL,
	Province VARCHAR(40) NOT NULL,
	immigrants BIGINT NOT NULL,
	refugees BIGINT NOT NULL
);
CREATE TABLE province_household_income (
	Year INT NOT NULL,
	Province VARCHAR(40) NOT NULL,
	income BIGINT NOT NULL,
);

CREATE TABLE tuition (
	Year INT NOT NULL,
	Province VARCHAR(40) NOT NULL,
	Population_type VARCHAR(40) NOT NULL,
	Education_type VARCHAR(40) NOT NULL,
	Tuition BIGINT NOT NULL
);


**5) DASHBOARD:**

blueprint, storyboard on GoogleSlides, tools and interactive slides description

<img width="1225" alt="Dashboard Blueprint" src="https://user-images.githubusercontent.com/90135381/161395739-6d1c9f81-a7e3-4922-8ddd-43dc7f50768f.png">


https://public.tableau.com/app/profile/tanya.czeban/viz/group10_project/Preliminarygroup10Dashboard?publish=yes

***DELIVERABLE/SEGMENT: 3***
1) PRESENTATION:with project outline, topic and why we chose the questions, data source, description of data exploration and analysis, google slides
ADD: a more thorough description of the analysis, technologies/languages/tools and algorithms with updated slides 

2) GitHub: working code for exploratory and ML updated README, communication protocols, project outline, branches/person with 4 commits per person
ADD: most of the code for ML, updated README with images/updated links, 4 commits per person

3) ML model: preliminary preprocessing, feature engineering and feature description with decision-making process, train and test data description, model choice with limitations and benefits
ADD: explanation in changes of model choice from last deliverable/segment, describe training/additional training, completion and description of accuracy score

4) DB: fully integrated DB connecting to the model, 1+ joins, one connection string, updated ERD 
ADD: ensure DB is connectable and up to date 

5) DASHBOARD: blueprint, storyboard on GoogleSlides, tools and interactive slides description
ADD: images/data from ML model, 1+ interative element(s)

6) EXTRA: Webpage (starter) file:///Users/tanyaczeban/Desktop/webpage/index.html


## **Vizualizations** 
Tableau, Scribblemaps, Google Slides, Python/Vsc, Pandas

Published Tableau blueprint @ https://public.tableau.com/app/profile/tanya.czeban/viz/group10_project/Preliminarygroup10Dashboard?publish=yes

## **Data Sources**

Datasets were predominantly obtained from statscan, as well as other information sources, via a team collaborative effort. Please refer to the updated Dataset list below:

- Residential property price index, quarterly 
https://www150.statcan.gc.ca/t1/tbl1/en/tv.action?pid=1810016901

- Components of population change by census metropolitan area and census agglomeration, 2016 boundaries https://www150.statcan.gc.ca/t1/tbl1/en/tv.action?pid=1710013601

- Total family income and characteristics of residential property owners by family type
https://www150.statcan.gc.ca/t1/tbl1/en/tv.action?pid=4610005101

- Analytical house prices indicators （country)
https://stats.oecd.org/Index.aspx?DataSetCode=HOUSE_PRICES#

- Income of Immigrant tax-filers, by immigrant admission category and tax year, for Canada and provinces, 2019 constant dollars
https://www150.statcan.gc.ca/t1/tbl1/en/tv.action?pid=4310002601

- Average house prices in Canada from 2014 to 2020 with a forecast up to 2022 with, by province https://www.statista.com/statistics/587661/average-house-prices-canada-by-province/

- National Price Map
https://www.crea.ca/housing-market-stats/national-price-map/

- Incident-based crime statistics, by detailed violations, Canada, provinces, territories and Census Metropolitan Areas https://www150.statcan.gc.ca/t1/tbl1/en/tv.action?pid=3510017701&pickMembers%5B0%5D=1.2&pickMembers%5B1%5D=2.1&cubeTimeFrame.startYear=2015&cubeTimeFrame.endYear=2019&referencePeriods=20150101%2C20190101

- Number of Provincial Educational Institutions
https://www.cicic.ca/869/RepertoireEtablissements.aspx?sortcode=2.25.26.26.27.28&p=1%2c2%2c3%2c4%2c5%2c6%2c7%2c13%2c8%2c9%2c10%2c11%2c12&t=1%2c2

- Physical flow account for greenhouse gas emissions, Frequency: Annual, Table: 38-10-0097-01 (formerly CANSIM 153-0114) Release date: 2021-12-13, Geography: Canada, Province or territory: 	https://www150.statcan.gc.ca/t1/tbl1/en/tv.action?pid=3810009701	



***DELIVERABLE/SEGMENT: 4***

-Final Details-group-TBD
________________
________________



## **Participant Names and roles**

- David Baek - Database

- Siddhant Arora - Machine learning model

- Zhiyi Chen - Machine learning model

- Dylan Ruff - Database 

- Tanya Czeban - Github, Dashboard, Google Slides, Webpage


