# CVC-SQL1-EOSNAVIGATOR_DEV

## Exogenous Factors and Their Effects on Labor Productivity

How do external environmental variables, such as weather, geography, the customer, the size of a project, and most notably COVID, effect the productivity of labor in concrete construction? 

Should the presence of winter conditions be expected to result in less output given the same number of inputs?

Is labor productivity uniform across all business units?

Can a particular customer's policies and procedures affect productivity?

In this analysis we employed various regression techniques to analyze these exogenous variables and their statistical signifcance in affecting labor productivity.  Productivity is measured as square feet of concrete placed per hour.  This measure of productivity is agnostic to fluctuations in price level which is useful given that these measurements span across time.

Ultimately, are the enterprises systems, procedures and best pratices sufficient to reliably ensure that performance can be expected to be uniform under a variety of differing operating conditions?


4. **Description of our source of data** - data exported from source IBM database from 2016 to 2021 for completed projects. (https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/tree/main/Resources/01-Zip).


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

SUPERVISED - CONTINUOUS MODEL (OLS REGRESSION)

![Regression Steps](https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/Images/regression%20text.png)

![Machine Learning Model](https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/Images/6-Machine%20Learning%20Model.jpg)

## Database
### Team members present a provisional database that stands in for the final database and accomplishes the following: 
- Sample data that mimics the expected final database structure or schema - https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/Resources/01-Zip/DB_schema.sql
- **Extract** All data will be extracted from Concrete Value Corp's eCMS Database. eCMS is a comprehensive suite of software applications that help commercial contractors manage all aspects of their financials and operations. eCMS is specifically built for the construction industry delivering users business process automation and real-time access to critical integrated data. We will use Desktop Intelligence, a Crystal reporting software, to pull the data. We will use the query filter below and pull all data from 2016 to 2021. 

![Query](https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/Images/QueryForDataAnalysis.png)

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

## Visualization
### Tableau Map

Map was created by loading the entire 2016-2021 dataset into Tableau and plotting the map points using the Job City field. The following calculations were then added as tooltips to show when hovering over a map point:

$ Per Hour Calculation
(SUM([Committed - Total])+SUM([P/O Received/Unapproved])+SUM([Equip/GL]))/(SUM([Hours Other])+SUM([Hours Overtime])+SUM([Hours Regular]))

$ Per Unit
(SUM([Committed - Total])+SUM([P/O Received/Unapproved])+SUM([Equip/GL]))/SUM([Quantity Actual])

Hours per Lot
(SUM([Hours Other])+SUM([Hours Overtime])+SUM([Hours Regular]))/SUM([Lots])

Productivity Rate
SUM([Quantity Budgeted - Cost])/(SUM([Hours Other])+SUM([Hours Overtime])+SUM([Hours Regular]))

SF Cost
IF [Segment One] = 9 AND [Segment Two] = 20 THEN ([Committed - Total])/{FIXED: SUM([Quantity Actual])} END

### Website

The website was created using basic html and css. The Tableau map was embedded into the website using the code directly from Tableau Public. For the Machine Learning page, our Jupyter notebook was embedded using JupyterLite. 

