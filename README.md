# CVC-SQL1-EOSNAVIGATOR_DEV

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

### Presentation

Content 
Team members have drafted their project, including the following: 
- Selected topic - Forecasting Labor Productivity in 3 operating divisions (Sacramento, Reno, Fresno)
- Reason why they selected their topic -  determine the most signifcant factors for predicting labor productivity for estimating upcoming projects
- Description of their source of data - CSV exported from source IBM database from 2016 to 2021 for completed projects. 
-   Variables include
-   Job City	
-   Job Number	
-   Sub Job Number	
-   Complete Date
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


- Questions they hope to answer with the data
Note: The content does not yet need to be in the form of a presentation; text in the README.md works as well.

GitHub
Main Branch README.md must include: 
- Description of the communication protocols 
- Individual Branches
- At least one branch for each team member
- Each team member has at least four commits from the duration of the first segment 
Note: The descriptions and explanations required in all other project deliverables should also be in your README.md as part of your outline, unless otherwise noted.

Machine Learning Model
Team members present a provisional machine learning model that stands in for the final machine learning model and accomplishes the following:
- Takes in data in from the provisional database 
- Outputs label(s) for input data

Database
Team members present a provisional database that stands in for the final database and accomplishes the following: 
- Sample data that mimics the expected final database structure or schema 
- Draft machine learning module is connected to the provisional database
