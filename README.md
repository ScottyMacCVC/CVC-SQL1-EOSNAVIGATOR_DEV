# CVC-SQL1-EOSNAVIGATOR_DEV


# Presentation

## Sales Point
Our product is designed provide entry level construction database & reporting to small business concerns. This unique combination of web-based services can afford construction subcontractors the ability to store and use their data to make actionable decisions. Many construction software solutions are targeted at larger General Contractors, Owners, and Builders, but there is an opportunity to provide low-tech-subcontractors a proper way to store and use data generated from thier activities. We would like to help move an entire industry into web-based data storage & analytics. There is a litany of talented construction workers who would like to start a company, but are held back by running the office and their field at the same time. The product would help bring the office to the field by moving the data from a silo'd excel document to a web-based source, making their information systems dynamic enough to deploy in a commercial application. Operations can interact with data in real time instead of waiting on manual reporting methods so commonly employed in the industry.  There will be concern with upgrading to a new software and we need to answer, "How will it affect production?" Our built system would allow our customer to continue their current processes, but built to convert the information into more manageable and usable measurements. With Tableau, we can utilize the data, tell a story about the job's costs, and provide an in-depth view of construction by location.

We also seek to explore the effects of Covid on  labor productivity. The cost of construction and ultimately the house itself, has risen during Covid. The question is, "has the labor productivity rates changed?" We know there is a dollar per hour rise, material dollar per unit have been driven up by supply chain issues, but we have no definitive proof of labor rate changes. Our team will analyze the data for labor productivity trends associated with the Covid time frame.

### Team members have drafted their project, including the following: 
1. **Selected topic** - Predict a successful outcome for a Labor Productivity input in each of 3 geographic operating divisions (1-Sacramento, 5-Fresno, 6-Reno)
2. **Reason why we selected our topic** -  To determine the most signifcant factors for predicting labor productivity and utilize model feedback to support efficacy of human generated inputs.
3. **Description of our source of data** - data exported from source IBM database from 2016 to 2021 for completed projects. (https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/tree/main/Resources/01-Zip) & this is the query search 

![Query](https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/Images/QueryForDataAnalysis.png)

**Variables include:**
```
-   Job City
-   Distance Travelled - to be built	
-   Builder
-   Job Number	
-   Sub Job Number	
-   Complete Date - will be broken into 2 periods (0,1) and (1,2,3,4)
-   Job Quantity	
-   Cost Type	
-   Segment One	
-   Segment Two	
-   Hours Regular	
-   Hours Overtime
-   Hours Other	
-   Committed - Total	P/O Received/Unapproved	
-   Equip/GL	
-   Quantity Budgeted - Cost	
-   Quantity Actual
-   Size of house - sqft/lots aka job quantity / geographic area 1
-   Unit of Measurement (UoM)
-   Success Fail (Binary variable on speed Range)
```

**Questions they hope to answer with the data**
 - How do a number of operational conditions affect labor productivity and how significant are are their relative impacts?
 - Given a number of known variables, how likely is a user-defined input for labor productivity to be successful 70% of the time?


## GitHub
### Main Branch README.md must include: 
- Description of the communication protocols 
- Individual Branches - https://github.com/nasch147/CVC-SQL1-EOSNAVIGATOR_DEV & https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV & https://github.com/Lorenzo-Gutierrez/CVC-SQL1-EOSNAVIGATOR_DEV & https://github.com/Jandreezy/CVC-SQL1-EOSNAVIGATOR_DEV
- At least one branch for each team member
- Each team member has at least four commits from the duration of the first segment 
Note: The descriptions and explanations required in all other project deliverables should also be in your README.md as part of your outline, unless otherwise noted.

## Machine Learning Model
### Team members present a provisional machine learning model that stands in for the final machine learning model and accomplishes the following:
- Takes in data in from the provisional database 
- Outputs label(s) for input data
- - SUPERVISED - CONTINUOUS MODEL (OLS REGRESSION)
```
REGRESSION OUTLINE

1. Read in file 

2. Test for heterskedasticity in the dependent variables relative to the independent variable.
	- use Breusch-Pagan
	- plot each dependent variable for distribution. 

3. Select regression functional form. 
	1. logit regression
		a. a binary dependent variable allows for the testing of whether or not a selected labor productivity rate is likely to be met. 

4. Adress Autoregression and suprious correlation.
	1. Save and plot residuals
	2. conduct dickey fuller test
		a - lag the right or left side to compensate based on results of statistical testing
5. Data treatment
	1. for machine learning purposes, the follwing categorical data will need to be altered for their application into supervised machine learning
		1. Job City - Data will be somewhat focused based on selection of geographic area. once filtered, remaining sample will need to be coverted to numeric values.
		2. Builder - will need to be converted to numeric value
		3. Completion date - to adjust for seasonal trends, each observation will be grouped into one of two groups indicating winter and not winter
		4. USE GET DUMMIES
		5. can be done in pandas. 
6. Regress different models and assess output information
7. Run 'Chow Test' to see if there is a satistically signifcant difference caused by COVID on labor prouctivity. https://en.wikipedia.org/wiki/Chow_test
8. Perform analysis based off regression results.  
```
Machine learning using Pandas - https://github.com/dataprofessor/code/blob/master/python/pandas_exploratory_data_analysis.ipynb

![Machine Learning Model](https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/Images/6-Machine%20Learning%20Model.jpg)

- -UNSUPERVISED - LOGIT REGRESSION

## Database
### Team members present a provisional database that stands in for the final database and accomplishes the following: 
- Sample data that mimics the expected final database structure or schema - https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/Resources/01-Zip/DB_schema.sql
- **Extract** All data will be extracted from Concrete Value Corp's eCMS Database. eCMS is a comprehensive suite of software applications that help commercial contractors manage all aspects of their financials and operations. eCMS is specifically built for the construction industry delivering users business process automation and real-time access to critical integrated data. We will use Desktop Intelligence, a Crystal reporting software, to pull the data. 

- **Transform** Nulls, blanks, and unnecessary data to be removed to improve functionality. Our team has identified the issues with our dataset. Our Unit of Measurement creates an error because there are many entries that appear to be empty. When we would load the data, the system would tell us _ERROR: extra data after last expected column._ After further review, we discovered this was not a blank and was "   " or several spaces as a string. We replaced all entries in the Unit of Measurement column with "NA" for not applicable. The change allowed the tables to be built and we successfully added all items to the tables. 

![1.0-Transform20Data](https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/Images/1.0-Transform%20Data.PNG)
![1.0-Transform%20Data-Image%20of%20MIA%20UofM](https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/Images/1.0-Transform%20Data-Image%20of%20MIA%20UofM.png)

- **Load** Our team needs access to the data. We built a database, added the tables in PgAdmin, and then connected to our AWS Relational Database Service (RDS). The team was able top connect to the database and export the data to CSVs or directly into Pandas. Any and all changes made during the Extract and Transform will now automatically update for every team member and provide an efficient way to gather our data. 


![job_cost_data](https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/Images/1.1-Database%20Tables-job_cost_data.PNG)
![current_job_addresses](https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/Images/1.2-Database%20Tables-current_job_addresses.PNG)
![orders_processed](https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/Images/1.2-Database%20Tables-orders_processed.PNG)
![AWS Connect 1](https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/Images/1.3-Database%20Tables-AWS%20Connect%201.PNG)
![AWS Connect 2](https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/Images/1.3-Database%20Tables-AWS%20Connect%202.PNG)
![AWS Image](https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/Images/1.4-Database-AWS%20Image.PNG)
![AWS Image2](https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/Images/1.4-Database-AWS%20Image2.png)
![AWS Metrics](https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/Images/1.4-Database-AWS%20Metrics.png)
