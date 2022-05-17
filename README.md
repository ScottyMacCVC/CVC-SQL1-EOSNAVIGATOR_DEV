# CVC-SQL1-EOSNAVIGATOR_DEV


# Presentation

## Sales Point
Our product is designed provide entry level construction database & reporting to small business concerns. This unique combination of web-based services can afford construction subcontractors the ability to store and use their data to make actionable decisions. Many construction software solutions are targeted at larger General Contractors, Owners, and Builders, but there is an opportunity to provide low-tech-subcontractors a proper way to store and use data generated from thier activities. We would like to help move an entire industry into web-based data storage & analytics. There is a litany of talented construction workers who would like to start a company, but are held back by running the office and their field at the same time. The product would help bring the office to the field by moving the data from a silo'd excel document to a web-based source, making their information systems dynamic enough to deploy in a commercial application. Operations can interact with data in real time instead of waiting on manual reporting methods so commonly employed in the industry.  There will be concern with upgrading to a new software and we need to answer, "How will it affect production?" Our built system would allow our customer to continue their current processes, but built to convert the information into more manageable and usable measurements. With Tableau, we can utilize the data, tell a story about the job's costs, and provide an in-depth view of construction by location.

We also seek to explore the effects of Covid on  labor productivity. The cost of construction and ultimately the house itself, has risen during Covid. The question is, "has the labor productivity rates changed?" We know there is a $/Hr rise, material $/units have been driven up by supply chain issues, but we have no definitive proof of labor rate changes. Our team will analyze the data for labor productivity trends associated with the Covid time frame.

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
7. Run 'Chow Test' to see if there is a satistically signifcant difference caused by COVID on labor prouctivity. 
8. Perform analysis based off regression results.  
```

- -UNSUPERVISED - LOGIT REGRESSION

## Database
### Team members present a provisional database that stands in for the final database and accomplishes the following: 
- Sample data that mimics the expected final database structure or schema (pgAdmin schema - https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/DB_schema.sql)
- **Extract** All data will be extracted from Concrete Value Corp's eCMS Database. eCMS is a comprehensive suite of software applications that help commercial contractors manage all aspects of their financials and operations. eCMS is specifically built for the construction industry delivering users business process automation and real-time access to critical integrated data. We will use Desktop Intelligence, a Crystal reporting software, to pull the data. 
- **Transform** Nulls, blanks, and unnecessary data is removed to improve functionality.

```
# Steps for Transform on _Orders Processed-DataPull.csv_ We only want to look at closed jobs. All WIP or Work In Progress jobs need to be removed. We also want to remove incomplete data. 
Table.SelectRows(#"Changed Type", each ([v_Responsible Person] <> ""))
Table.SelectRows(#"Changed Type", each ([v_Responsible Person] <> "") and ([v_Job Type Description] <> "COMMERCIAL WIP 1         " and [v_Job Type Description] <> "WIP                      "))

```
Link to Tableau - https://public.tableau.com/app/profile/scott.macfarlane2218/viz/OrdersPerSubJob/OrdersPerSub?publish=yes
![Orders in Tableau](https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/Images/4-Orders%20Processed.PNG)

```
# Steps for Transform _Addresses List_
Table.SelectRows(#"Changed Type", each ([Notes] <> ""))
Table.SplitColumn(#"Filtered Rows", "Name", Splitter.SplitTextByEachDelimiter({" "}, QuoteStyle.Csv, false), {"Job Number", "Job Name"})
Table.TransformColumnTypes(#"Split Column by Delimiter",{{"Job Number", type text}, {"Job Name", type text}})
```

- **Extract** All data is extracted to a CSV file. The CSV files will be loaded into Tableau. It would be very cool if we could load the data into PGAdmin, have it connect to AWS, and then our team could download the information or use the web-source to create reporting. 

![DB](https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/Images/1-Database%20Tables.PNG)
- Draft machine learning module is connected to the provisional database {TBD)



### Jandro Boado
-Tableau presentation 

Hi Jandro - I put together a handful of current CVC metrics. You can load up this csv (https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/Resources/01-Zip/csv.zip) and mess around with tableau. Good luck!!! Call me at 916 549 8012 if you run into any questions or metric issues. :)
```
Labor Speed Productivity Rate = <Quantity Budgeted - Cost>/(<Hours Other>+<Hours Overtime>+<Hours Regular>)
Hours per Lot = (<Hours Other>+<Hours Overtime>+<Hours Regular>)/<Lots>
$ per Unit = (<Committed - Total>+<P/O Received/Unapproved>+<Equip/GL>)/<Quantity Actual>
$ per Hour = (<Committed - Total>+<P/O Received/Unapproved>+<Equip/GL>)/(<Hours Regular>+<Hours Overtime>+<Hours Other>) 
```

Example Bid Board Tableau Report - https://public.tableau.com/app/profile/scott.macfarlane2218/viz/shared/976C2S46Z

Example Productivity & Margin Report - https://public.tableau.com/app/profile/scott.macfarlane2218/viz/Step1-TheStandard-Mapped-D15/MappedStepD15?publish=yes
![Tableau Productivity](https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/Images/5-Labor%20Productivity%20Tableau.png)

![Tableau Example](https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/Images/2-Example%20Tableau.png)
![Productivity Calc](https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/Images/3-Productivity%20Rate.png)


---

### Lorenzo-Gutierrez Map Concepts
-Map with information regarding the job. An example we did in class was the tectonic plates. The change would be we would want to use geo locations of our job (https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/Resources/01-Zip/addresses.zip), show data important to the location in a text box (similar to https://github.com/ScottyMacCVC/Mapping_Earthquakes/blob/main/Earthquake_Challenge/Images/Deliverable%202%20-Earthquake%20Data.JPG), and create a link to cloud repository (https://concretevalue.sharefile.com/home/shared/fobdd895-cc88-4d76-b78c-daf15b1ef46f). 

![dataOnMap](https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/Images/22.05.09-Data%20Shown%20on%20Map.png)

---

Additional CVC SQL Database Items
---
## Server\instance: CVC-SQL1\EOSNAVIGATOR_DEV
- Database: Navigator
### Tables: 
- Staging.CVC ContractInformationData
- Staging.CVC_JobInfoData
- Staging.CVC_LegalData
- Staging.CVC_JobSpecData
- Staging.CVC_JobCostData

### Below 3 tables doesn't have any data in the DB tables.

- Staging.CVC_LegalData
- Staging.CVC_JobSpecData
- Staging.CVC_JobCostData

### ![CVC_ERD](https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/CVC%20ERD%20for%20Estimating%20Universe4.png)


ERD INFO for quickDBD
CVC_ContractInformationData
-
JobNo Varchar pk fk - CVC_START.JobNo
SubJobNo Varchar pk fk - CVC_START.SubJobNo
Contract varchar FK >- CVC_Contracts.ContractNo

CVC_JobInfoData
-
JobNo Varchar pk FK >- CVC_START.JobNo

CVC_LegalData
----
JobNo Varchar pk FK >- CVC_Contracts.JobNo

CVC_JobSpecData
----
JobNo Varchar pk fk - CVC_START.JobNo
SubJobNo Varchar pk fk - CVC_START.SubJobNo

CVC_JobCostData
----
JobNo Varchar
SubJobNo Varchar pk

CVC_Contracts
----
JobNo Varchar FK - CVC_START.JobNo
ContractNo Varchar pk

CVC_RFA
----
JobNo Varchar FK - CVC_START.JobNo
ContractNo Varchar pk FK >- CVC_Contracts.ContractNo

CVC_PLP
----
JobNo Varchar FK - CVC_START.JobNo
SubJobNo Varchar pk FK >- CVC_START.SubJobNo

CVC_START
----
JobNo Varchar pk FK - CVC_JobCostData.JobNo
SubJobNo Varchar pk FK - CVC_JobCostData.SubJobNo

