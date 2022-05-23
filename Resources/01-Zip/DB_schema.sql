CREATE TABLE job_cost_data (
Department_Number varchar NULL,
Customer_Name varchar NULL,
Job_Type_Description varchar NULL,
Job_City varchar NULL,
Job_Number varchar NULL,	
Lots varchar NULL,	
Complete_Date varchar NULL,	
Job_Quantity decimal NULL,	
Cost_Type varchar NULL,	
Segment_One varchar NULL,	
Segment_Two varchar NULL,	
Hours_Regular varchar NULL,	
Hours_Overtime varchar NULL,	
Hours_Other varchar NULL,	
Committed_Total decimal NULL,
PO_ReceivedUnapproved decimal NULL,
Equip_GL decimal NULL,	
Quantity_Budgeted_Cost varchar NULL,	
Quantity_Actual varchar NULL,	
Unit_of_Measure varchar NULL);

DROP TABLE insertTable


CREATE TABLE orders_processed (
v_Responsible_Person varchar NULL,
v_Job_Type_Description varchar NULL,
v_Job_City varchar NULL,
Job_Number varchar NULL,	
Sub_Job varchar NULL,	
Invoice_Number varchar NULL,	
Order_Number decimal NULL,	
Warehouse varchar NULL,	
Invoice_Date varchar NULL);

CREATE TABLE current_job_addresses (
ID varchar NULL,
Addresses varchar NULL,
Job_Number varchar NULL,
Job_Name varchar NULL,	
Latitude varchar NULL,	
Longitude varchar NULL,	
Radius decimal NULL,	
Tags varchar NULL,
Notes varchar NULL,	
Types varchar NULL);