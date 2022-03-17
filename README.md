# group10_project

MODULE 20

![image](https://user-images.githubusercontent.com/90135381/158727737-2db68a11-9ee9-40e7-986e-71c8bb8369c7.png)

IMAGE obtained from: https://lovepik.com/image-401202582/real-estate-investment.html

***Topic:*** Real Estate in Canada

How does population change (immigration) effect the residential property price index across Canada?

How does household income determine housing selection and location?

***We chose this question because:***

-affordability concerns for first-time buyers/younger adults

-population alterations and migration trends across Canada

-municipal/national housing: trending if housing supply meets demands

***Data Sources:*** Statistics Canada
Tables:

-Residential property price index, quarterly

-Components of population change by census metropolitan area and census agglomeration, 2016 boundaries

-Total family income and characteristics of residential property owners by family type



***ML Model:*** deep ML, as we do not know the prediction outcomes import dependencies and read the csv’s

Preprocessing of data:  

-value_counts, delete nulls, make appropriate DF’s

-Create OneHotEncoder

-Fit encoder and produce encoded DF

-Rename encoded columns

-Merge DF’s

-Standardize Data

-Deep neural network coding with hidden layers

-Elbow curve for cluster determination

-stats: mean, median, mode, SD, variance, accuracy

***Data Base:*** Postgres and SQL, AWS, S3 for joining tables and presenting post cleaning/preprocessing


***Vizualizations:*** Tableau, graphs, matrices, bootstrap, JavaScript, Google Slides, Python/Vsc, Pandas
________________
________________

# POTENTIAL OPTION #2 FOR SUPERVISED ML MODEL

Which varying house prices increase linearly with population across Canada?

***We chose this question because:***

-affordability concerns for first-time buyers/younger adults

-population alterations and migration trends across Canada

-municipal/national housing: trending if housing supply meets demands

***Data Sources/Features extraction:*** Statistics Canada Tables:

1. Residential property price index, quarterly

2. Components of population change by census metropolitan area and census agglomeration, 2016 boundaries

3. Total family income and characteristics of residential property owners by family type

***ML Model:*** Supervised ML, regressional relational model

-dependencies and read the csv’s

Preprocessing of data:  

-value_counts, delete nulls, make appropriate DF’s

-Rename encoded columns

-Merge DF’s

-split data to train/test

-Standardize Data: create and fit StandardScaler instance

-create an instance of the model

-train the model

-create predictions (that housing prices will increase linearly with population size, considering single family, condos, ...)

-scale/normalize data

-evaluate the model with stats: mean, median, mode, SD, variance, accuracy, precision, recall/sensitivity,F1 confusion matrix/classification report

***Data Base:*** Postgres and SQL, RStudio (stats), Pandas, Scikit_learn, Bootstrap, (AWS/S3 for joining tables and presenting post cleaning/preprocessing)

***Vizualizations:*** Tableau, graphs, matrices, bootstrap, JavaScript, Google Slides, Python/Vsc, Pandas

***Participant Names*** 

David Baek

Siddhant Arora

Zhiyi Chen

Tanya Czeban

Dylan Ruff
