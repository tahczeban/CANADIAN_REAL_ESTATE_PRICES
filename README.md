# group10_project

![image](https://user-images.githubusercontent.com/90135381/158727737-2db68a11-9ee9-40e7-986e-71c8bb8369c7.png)






***IMAGE*** obtained from: https://lovepik.com/image-401202582/real-estate-investment.html

________________


 **Predicting Housing Prices Per Province**
 ________________________________

***OVERVIEW:***

The motivation for this project is to ultimately integrate all of the knowledge obtained and pertain it to real life situations utilizing statistics, data (pre)processing and Machine Learning (ML) procedures to create relevent and predictive models regarding this topic. The final model will be presented utilizing vizualizations for ease of conveying the aforementioned. A collaborative effort is being initiated to consider the topic of housing price indices, income, availability, and immigration across Canada, as this is a pertinent and essential topic among people in this day and age! 2015-2019.

## **Questions with data:**

- does immigration or population have a greater impact on housing prices provincially, in Canada?

- Which province is the best province to purchase a house in for investment/personal purposes?

- How does household income determine housing selection and location?

- How does immigration effect the residential property price index across Canada?

## **Additional Questions:**

- How does crime rates effect provincial population/housing prices?

- How does secondary school availability effect population/house prices?

- How does provincial greenhouse gas effect population/house prices?

## **We chose this question because:**

- affordability concerns for first-time buyers/younger adults

- population alterations and migration trends across Canada

- municipal/national housing: trending if housing supply meets demands

________________
## **RESULTS:**

***DELIVERABLE 1***

The results for Deliverable 1 encompass team collaboration via slack and with the Teaching Staff, in order to accomplish the goals. GitHub establishment requirements will be met including: initialization of an appropriate repository, addition of all branches and a README. Additionally, cleaning and pre-processing the data will be considered. A 'mockup' database will be included, as well as a potential 'mockup' ML model. Lastly, an example ERD will be included for this submission to meet all requirements. A SCRUM method of approach will be contemplated in order to attain all goals with optimal results.

1) Presentation: outline with questions,mock models for DB and ML, visualizations

2) GitHub: working code for exploratory and ML updated README, communication protocols, project outline, branches/person with 4 commits per person

3) ML model: preliminary preprocessing, feature engineering and feature description with decision-making process, train and test data description, model choice with limitations and benefits

4) DB: fully integrated DB connecting to the model, 1+ joins, one connection string, updated ERD

5) DASHBOARD: blueprint, storyboard on GoogleSlides, tools and interactive slides description

***DELIVERABLE 2***

For this Deliverable, there will be augmentations for 5 requirements:

1) **PRESENTATION:** with project outline, topic and why we chose the questions, data source, description of data exploration and analysis, google slides

<img width="1384" alt="presentation" src="https://user-images.githubusercontent.com/90135381/162085451-7107296c-de76-4ea2-9b77-6c3ce5ab3bf6.png">


- Link to presentation: https://docs.google.com/presentation/d/1u-Dq1I57YpX5nCJLc6dQAZWPwopah6UY30V5wysAfAc/edit?usp=sharing
Links to scribblemaps:

2) **GitHub:** working code for exploratory and ML updated README, communication protocols, project outline, branches/person with 4 commits per person. Add updates, visualizations for ML, DB, presentaion, dashboard

3) **ML Model:**

 - Description of preliminary data preprocessing
   - Data cleaning: Remove the irrelevant observations from collect data, including the null value and duplicate data.  Check the outlier? (Box and whisker plot)
   - Data intergration: combime independent variable and dependent variable each year as one table (2015-2019)
     -	Independent variable: provincial population, crime rate, household income,   greenhouse emission, number of colleges
     -	Dependent variable: house price 
   - Data reduction: reduce dimensionality (reshape/scale)
   - Data type transfer: change string to float type

- Description of preliminary feature engineering and preliminary feature selection, including their decision-making process 
   - Take each line as a group, for a total of 50 groups. In 2015, 5 selected characteristics were analyzed to derive each characteristic's impact 		(correlation) on house prices. and list the corresponding graphs (heatmaps, scatterplots, histograms)

- Description of how data was split into training and testing sets
   - Two years of data are used as the training set, and the remaining three years are used as the test set. Check whether the impact of each year's 		characteristics on housing prices has changed significantly or remains at a stable level.
   
- Explanation of model choice, including limitations and benefits 
  - Model: multi-variable regression
  - Description: the outcome of the analysis is continuous by each year to figure out the different variables that affect the house price. Therefore, we 	use the supervised learning method. In addition, our team discovered ten provinces. Each province has 5 of the same factors that affect house 		prices each year, so multi-variable linear regression can help us analyze the results.
  -	Limitations:
    -	The model can only show the effects of selected features and cannot analyze factors that were not selected.
    -	It is challenging to model nonlinear data or polynomial regression with the correlation between data features.
  -	Benefits:
    -	Visually show the impact of each element on house prices
    -	Verify if these factors affect house prices to the same extent each year
    -	


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

<img width="1440" alt="Screen Shot 2022-04-06 at 5 45 04 PM" src="https://user-images.githubusercontent.com/90135381/162077174-79a86e50-0de4-4466-abbd-81009dd11bfd.png">


fully integrated DB connecting to the model, 1+ joins, one connection string, updated ERD (above) with the schema/queries below:

**Database Schema/Query**

The DataBase was completed via Postgres and SQL, along with the ERD. Please refer to link below:
group10database.cakmngpixa6j.us-east-1.rds.amazonaws.com



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

CREATE TABLE greenhouse (
	Year INT NOT NULL,
	Province VARCHAR(40) NOT NULL,
	Sector VARCHAR(40) NOT NULL,
	Kilotonnes bigint NOT NULL
);

CREATE TABLE household_income (
	Year INT NOT NULL,
	Province VARCHAR(40) NOT NULL,
	house_procies BIGINT NOT NULL,
	kilotonnes BIGINT NOT NULL,
	crime BIGINT NOT NULL,
	immigration_totals BIGINT NOT NULL,
	med_imm_wages BIGINT NOT NULL,
	household_income BIGINT NOT NULL,
	population BIGINT NOT NULL
);

CREATE TABLE household_income (
	Year INT NOT NULL,
	Province VARCHAR(40) NOT NULL,
	house_procies BIGINT NOT NULL,
	kilotonnes BIGINT NOT NULL,
	crime BIGINT NOT NULL,
	immigration_totals BIGINT NOT NULL,
	med_imm_wages BIGINT NOT NULL,
	household_income BIGINT NOT NULL,
	population BIGINT NOT NULL
);

CREATE TABLE data_by_year_prov_totals (
	year INT NOT NULL,
	province VARCHAR(40) NOT NULL,
	house_prices BIGINT NOT NULL,
	kilotonnes BIGINT NOT NULL,
	crime BIGINT NOT NULL,
	immigration_totals BIGINT NOT NULL,
	med_imm_wages BIGINT NOT NULL,
	household_income BIGINT NOT NULL,
	population BIGINT NOT NULL,
);

**5) DASHBOARD:**

blueprint, storyboard on GoogleSlides, tools and interactive slides description


https://public.tableau.com/app/profile/tanya.czeban/viz/group10_project/Preliminarygroup10Dashboard?publish=yes

***DELIVERABLE/SEGMENT: 3***
1) PRESENTATION:with project outline, topic and why we chose the questions, data source, description of data exploration and analysis, google slides
ADD: a more thorough description of the analysis, technologies/languages/tools and algorithms with updated slides. The slides were updated with the Revised ML Modelvia images with text descriptions.

2) GitHub: working code for exploratory and ML updated README, communication protocols, project outline, branches/person with 4 commits per person
ADD: most of the code for ML, updated README with images/updated links, 4 commits per person. Github was updated and organized with the ML model and Data revisions, including screenshots.

3) ML model: preliminary preprocessing, feature engineering and feature description with decision-making process, train and test data description, model choice with limitations and benefits
ADD: explanation in changes of model choice from last deliverable/segment, describe training/additional training, completion and description of accuracy score

REVISION TO INITIAL ML MODEL
 1. In the first step, a connection to the SQL DataBase was established:
 
 
                      FIGURE: 1. Connect SQL
		      
<img width="1313" alt="1  Connect SQL" src="https://user-images.githubusercontent.com/90135381/162636403-d236e0a8-7a3c-47d1-b591-4dae2d4f9f5e.png">




2. The preprocessing of the data was then initiated and the following was accomplished:

- the data was imported
- unrelated rows were dropped
- data types and null values were checked
- dummy data was obtained: .info(), .describe(), .value_counts()
- DFs were grouped by provinces
- lags were created for -1 and -2 shifts

                            FIGURES: 2. Preprocess      

<img width="914" alt="2a Preprocess" src="https://user-images.githubusercontent.com/90135381/162636415-0d380bec-8443-4553-9ba5-7e769b2dc4b5.png">


<img width="609" alt="2b Preprocess" src="https://user-images.githubusercontent.com/90135381/162636420-0707068d-40fa-4014-8d9e-27bbd8f92420.png">


<img width="604" alt="2c Preprocess" src="https://user-images.githubusercontent.com/90135381/162636424-8bd52dd7-17e2-498a-8907-a89e6a97d8d4.png">


3. A multi-variable Regression Model was created and Trained for 3 provinces via:

- NewFoundland data was checked
-2 019 row was dropped
- IV/DV were created
- Features (X) were separated from Target (y)
- the data was split into Training and Testing
- a Scaler instance was created and fitted
- multi linear regression was fit to the Training set
- Predictions for 2018 House Prices were established
- a Comparison was made to the 'Reality' Data
- then MSE/Correlation Matrix were created
- This process was repeated for Ontario and British Columbia

                   FIGURE: 3. Create/Train Multi-var Reg Model for 3 Provinces


<img width="606" alt="3 Create:Train multi var reg model 3 prov" src="https://user-images.githubusercontent.com/90135381/162636446-b1949bbe-c000-4e14-baf6-a6cf5be4cefa.png">



<img width="1034" alt="3b" src="https://user-images.githubusercontent.com/90135381/162636450-c088d5ff-fbf5-4d40-b9d0-4d04b65f4f5c.png">



<img width="607" alt="3c Ont" src="https://user-images.githubusercontent.com/90135381/162636451-1ca0e0c7-0076-4ff5-a162-160149c99686.png">


<img width="1032" alt="3d, ont contd" src="https://user-images.githubusercontent.com/90135381/162636452-c0542884-8b73-4a75-9b42-84eab5e8e183.png">



<img width="611" alt="3e bc" src="https://user-images.githubusercontent.com/90135381/162636455-2d74791f-93fb-444c-8cbb-7c5ddbea8fe1.png">



<img width="608" alt="3f" src="https://user-images.githubusercontent.com/90135381/162636460-6ffc6c55-c51b-438d-9f43-9be71c77ba8a.png">


This step included the predictions for future house prices. DF's  for different Provinces were utilized and lags were created for 1, 2 and 3 shifts.

                   FIGURE: 4. Predict
		   
		   
		   
<img width="607" alt="4  Prewdict1" src="https://user-images.githubusercontent.com/90135381/162636502-952c2160-dc44-4e51-a1cc-df272cca14e8.png">


This last step entailed calculating the R squared, creating a correlation matrix for the model and creating a heatmap for said correlation.		   
		   
		   FIGURE: 5. Model eval


<img width="911" alt="5  Model eval" src="https://user-images.githubusercontent.com/90135381/162636475-ead73413-8281-42b6-9bcd-02ab1c84adb0.png">






4) DB: fully integrated DB connecting to the model, 1+ joins, one connection string, updated ERD 
ADD: ensure DB is connectable and up to date 

5) DASHBOARD: blueprint, storyboard on GoogleSlides, tools and interactive slides description
ADD: images/data from ML model, 1+ interative element(s). Awaiting final completed ML Model to add to Dashboard for upcoming Presentation; however, revision made to original Blueprint.


<img width="1001" alt="Revised Dashboard" src="https://user-images.githubusercontent.com/90135381/162639238-b24ea0c8-c051-4051-8822-092c3728691b.png">


https://public.tableau.com/authoring/group10_Dashboard/Preliminarygroup10Dashboard#2

6) EXTRA: Webpage (starter) file:///Users/tanyaczeban/Desktop/webpage/index.html

***DELIVERABLE/SEGMENT: 4***
1) PRESENTATION: with project outline, topic and why we chose the questions, data source, description of data exploration and analysis, google slides
ADD: a more thorough description of the analysis, technologies/languages/tools and algorithms with updated slides/images. Live presentation: all present, realtime dashboard interactivity, within time limits (7 minutes present, 5 minutes questions), speaker notes flashcards or video of presentation rehearsal

2) GitHub: Augment readme model; production-ready code for exploratory and ML updated README, communication protocols, project outline, branches/person with 4 commits per person ADD: updated README with images/updated links, 4 commits per person, Requirements.txt file, link to dashboard and Google Slides, 16 commits in total for each team member, clean code/PEP 8

3) ML model: preliminary preprocessing, feature engineering and feature description with decision-making process, train and test data description, model choice with limitations and benefits. ADD: explanation in changes of model choice from last deliverable/segment, describe training/additional training, completion and description of confusion matrix with final accuracy score

Model Choice: multi regression, changes to shfit 1, -1, shift 2, -2, shift 3, -3
ML model limitations: have to do for each province, could not complete R2 due to UndefinedMetricWarning/only 1 feature requiring multiple shifts
ML Model Benefits: increase number of shifts increases accuracy

4) DB: fully integrated DB connecting to the model, 1+ joins, one connection string, updated ERD. ADD: ensure DB is connectable and up to date, holds statistic data, DB interfaces, includes 2 tables, includes 1+ join,  1 connection string (SQLAlchemy)

5) DASHBOARD: blueprint, storyboard on GoogleSlides, tools and interactive slides description. ADD: logical and easy to read, images/data from ML model, 1+ interative element(s), images or report from ML, published or screenshot.

6) EXTRA: Webpage (starter) file:///Users/tanyaczeban/Desktop/webpage/index.html

____________
## **SELF_ASSESSMENT/SUMMARY:**

SELF ASSESSMENT: Includes a cohesive written analysis describing: 
- role played/contribution
- how contributed to other roles via discussions, peer reviews, etc.
- greatest personal challenge and how overcame it

TEAM ASSESSMENT:Includes a cohesive written analysis describing: 
- teamwork
- communication protocol, challenges, resolutions and what would differently in future
- strengths as a team with tips and tricks for future cohorts

SUMMARY OF PROJECT: A 3-4 sentence summary of project (for profile, interview, etc) addressing:
- topic addressed
- machine module
- results of analysis

________
## **Vizualizations** 

Tableau, Scribblemaps, Google Slides, Python/Vsc, Pandas

Published Tableau blueprint @ https://public.tableau.com/app/profile/tanya.czeban/viz/group10_project/Preliminarygroup10Dashboard?publish=yes

_________
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

- https://www.nbc.ca/content/dam/bnc/en/rates-and-analysis/economic-analysis/housing-affordability.pdf

________________
## **Participant Names and roles**

- David Baek - Database

- Siddhant Arora - Machine learning model

- Zhiyi Chen - Machine learning model

- Dylan Ruff - Database 

- Tanya Czeban - Github maintain, dashboard, google slides, webpage






