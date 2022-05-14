# CVC-SQL1-EOSNAVIGATOR_DEV


# Presentation

## Sales Point
Our product will provide entry level construction database & reporting. The unique combination of web-based services can allow construction subcontractors to import existing data and receive a reasonably robust system. Most construction software is targeted at larger General Contractors, Owners, and Builders, but there is an opportunity to provide low-tech-subcontractors a proper way to store their data. We would like to help move an entire industry into web-based data storage & analytics. There are many examples of talented construction workers who would like to start a company, but are held back by running the office and their field at the same time. The product would help bring the office to the field by moving the data from a silo'd excel document to a web-based source. The field could interact with data in real time instead of waiting to go back to the office and interact with Excel or Quickbooks. These older programs are inefficient systems. There will be concern with upgrading to a new software and we need to answer, "How will it affect production?" Our built system would allow our customer to continue their current processes, but built to convert the information into more manageable and usable measurements. With Tableau, we can utilize the data, tell a story about the job's costs, and provide an in-depth view of construction by location.

We would like to explore the effects of Covid on our labor productivity. The cost of construction and ultimately the house itself, has risen during Covid. The question is, "has the labor productivity rates changed?" We know there is a $/Hr rise, material $/units have been driven up by supply chain issues, but we have no definitive proof of labor rate changes. Our team will analyze the data for labor productivity trends associated with the Covid time frame.

### Team members have drafted their project, including the following: 
1. **Selected topic** - Predict a successful outcome for a Labor Productivity input in each of 3 geographic operating divisions (1-Sacramento, 5-Fresno, 6-Reno)
2. **Reason why we selected our topic** -  To determine the most signifcant factors for predicting labor productivity and utilize model feedback to support efficacy of human generated inputs.
3. **Description of our source of data** - data exported from source IBM database from 2016 to 2021 for completed projects. (https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/txt.zip or https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/csv.zip & this is query search https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/Images/QueryForDataAnalysis.png)

**Variables include:**
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


**Questions they hope to answer with the data**
 - How do a number of operational conditions affect labor productivity and how significant are are their relative impacts?
 - Given a number of known variables, how likely is a user-defined input for labor productivity to be successful 70% of the time?

![sexPanther](https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/Images/sexPanther.jpg)


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
- -UNSUPERVISED - LOGIT REGRESSION

## Database
### Team members present a provisional database that stands in for the final database and accomplishes the following: 
- Sample data that mimics the expected final database structure or schema (pgAdmin schema - https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/DB_schema.sql)
- **Extract** All data will be extracted from Concrete Value Corp's eCMS Database. eCMS is a comprehensive suite of software applications that help commercial contractors manage all aspects of their financials and operations. eCMS is specifically built for the construction industry delivering users business process automation and real-time access to critical integrated data. We will use Desktop Intelligence, a Crystal reporting software, to pull the data. 
- **Transform** The data itself is relatively clean. There are some changes, but it's mostly for functionality

```
# Steps for Transform on _Orders Processed-DataPull-OrdersPerSubJob.csv_
Table.SelectRows(#"Changed Type", each ([Order Number] <> null))
Table.RemoveColumns(#"Filtered Rows",{"v_Responsible Person", "Invoice Number", "Warehouse", "Invoice Date"})
```

```
# Steps for Transform
```

- **Extract** All data is extracted to a CSV file. The CSV files will be loaded into Tableau. It would be very cool if we could load the data into PGAdmin, have it connect to AWS, and then our team could download the information or use the web-source to create reporting. 

![DB](https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/Images/1-Database%20Tables.PNG)
- Draft machine learning module is connected to the provisional database {TBD)



### Jandro Boado
-Tableau presentation 

Hi Jandro - I put together a handful of current CVC metrics. You can load up this csv (https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/csv.zip) and mess around with tableau. Good luck!!! Call me at 916 549 8012 if you run into any questions or metric issues. :)
```
Labor Speed Productivity Rate = <Quantity Budgeted - Cost>/(<Hours Other>+<Hours Overtime>+<Hours Regular>)
Hours per Lot = (<Hours Other>+<Hours Overtime>+<Hours Regular>)/<Lots>
$ per Unit = (<Committed - Total>+<P/O Received/Unapproved>+<Equip/GL>)/<Quantity Actual>
$ per Hour = (<Committed - Total>+<P/O Received/Unapproved>+<Equip/GL>)/(<Hours Regular>+<Hours Overtime>+<Hours Other>) 
```

![Tableau Example](https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/Images/2-Example%20Tableau.png)
![Productivity Calc](https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/Images/3-Productivity%20Rate.png)


---

### Lorenzo-Gutierrez Map Concepts
-Map with information regarding the job. An example we did in class was the tectonic plates. The change would be we would want to use geo locations of our job (https://github.com/ScottyMacCVC/CVC-SQL1-EOSNAVIGATOR_DEV/blob/main/Resources/Addresses%20List.csv), show data important to the location in a text box (similar to https://github.com/ScottyMacCVC/Mapping_Earthquakes/blob/main/Earthquake_Challenge/Images/Deliverable%202%20-Earthquake%20Data.JPG), and create a link to cloud repository (https://concretevalue.sharefile.com/home/shared/fobdd895-cc88-4d76-b78c-daf15b1ef46f). The coding would be based off this js (https://github.com/ScottyMacCVC/Mapping_Earthquakes/blob/main/Earthquake_Challenge/static/js/challenge_logic.js) and the specific section we need to use is:

```
// 7. Creating a GeoJSON layer with the retrieved data that adds a circle to the map 
  // sets the style of the circle, and displays the magnitude and location of the earthquake
  //  after the marker has been created and styled.
  L.geoJson(data, {
    pointToLayer: function(feature, latlng) {
      return L.circleMarker(latlng);
    },
    style: styleInfo,
    onEachFeature: function(feature, layer) {
      layer.bindPopup("Magnitude: " + feature.properties.mag + "<br>Location: " + feature.properties.place);
    }
  }).addTo(majorEarthquakes);
  // 8. Add the major earthquakes layer to the map.
  majorEarthquakes.addTo(map);
  // 9. Close the braces and parentheses for the major earthquake data.
  });

  // Here we create a legend control object.
  let legend = L.control({
    position: "bottomright"
  });

  // Then add all the details for the legend
  legend.onAdd = function() {
    let div = L.DomUtil.create("div", "info legend");
    const magnitudes = [0, 1, 2, 3, 4, 5];
    const colors = [
      "#98ee00",
      "#d4ee00",
      "#eecc00",
      "#ee9c00",
      "#ea822c",
      "#ea2c2c"
    ];

  // Looping through our intervals to generate a label with a colored square for each interval.
    for (var i = 0; i < magnitudes.length; i++) {
      console.log(colors[i]);
      div.innerHTML +=
        "<i style='background: " + colors[i] + "'></i> " +
        magnitudes[i] + (magnitudes[i + 1] ? "&ndash;" + magnitudes[i + 1] + "<br>" : "+");
      }
      return div;
    };

  // Finally, we add our legend to the map.
  legend.addTo(map);
```


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

