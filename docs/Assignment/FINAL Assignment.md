# Course assignment

<p style="text-align: right" ><img src="../images/ut-itc-logo-rgb.png" width="300"></p>

## Assignment objective

To create a 3D model including buildings at least LOD1 and surrounding
environment for a concrete area of interest (AOI).

## Background

The development of 3D city models at various levels of detail using commercial or open source solutions enables various local governments and decision makers to communicate efficiently and react on time in case of disaster. They also enable citizens to comment and propose alternatives, providing feedback to planning authorities.

Some 3D models are interactive, meaning that the users can look around freely, toggle on and off certain information. This interactive process makes the end user feel like that they have made a new discovery independently, they can lead to insights that are not possible in 2D, without interaction. 3D models can be of help for many applications (see Lecture slides). A study has been conducted were their application in 29 case studies was shown for more than 100 applications Biljecki, F., Ledoux, H., & Stoter, J. (2016). 

In the past 3D city models were used mainly for visualization, however, nowadays they are used in a number of domains for tasks much beyond the pure visualization. One of the simplest methods to construct a 3D city model is to extrude building footprints, to obtain “block- shaped” buildings. While the method is well-known and easy to implement, if the topological relationships between the footprints are not taken into account, the resulting city models will not necessarily be topologically consistent.

## Expected time investment

9 weeks

## Deliverables

For this assignment you are expected to submit:

1. **Word document** in the assignment dropbox on Canvas. This document should include a detailed description of the methods you have used for creating your model with supporting screenshots; pictures from the created visualisation, link to the model or video/animation and answers to the following questions:

   1) Why this method was selected? Write a motivation based on comparison with other methods.

   2) What LOD will be reached and why?

   3) What sensor information can be integrated to your 3D model to call it a Digital Twin model? Please provide examples and link them with a concrete application.

   4) What are the possible applications for the model you have created? A demonstration or link to the literature would be a plus

   5) Who can be a logical user of your model?

   6) If you had more time what could have been your next steps to improve your 3D model?

2. **Link to web scene/animation**
3. **Zip file** with all the data used to generate the 3D model for assesment.
4. **Video Presentation** showcasing your work and explaining the decisions made for the assignment. **Maximum 10 minutes**

## Methods & Software

During the course you will get familiar with different methods for creating 3D geometry, topology and semantics, analysis and reconstruction.

You are free to select which software or method to use. You can select the method that can be of help for your thesis in future for e.g. You can either focus on geo-visualization with available or provided data or create your
new design for future development of the concreate area of interest AOI. Just make sure you motivate your choice. Before you start define the aim (including LOD), description of the data you will use, methods and expected results. Because you will need to explain them in the report.

You can use for example:

* ArcGIS Pro, ArcScene, Sketchup, CityEngine
* QGIS/PostGIS and 3D spatial DBMS
* Blender, Unity or gaming software
* CityGML markup language
* Autodesk Revit (BIM), Autodesk Dynamo (BIM/Parametric Design)

Tip: For playing with visualisation you can experiment with Cities Skylines or Adobe After Effects

* Optional: If you select exploring the effect of 3D visualization you can export your model in *.obj format and try and focus on VR.
* Optional: You can create a link to DB and demonstrate analysis via queries (more knowledge on this will be provided during the third week of the course).
* Optional: You could think about storing files as vendor-neutral type; using CityGML (via FME/QGIS), XML/IFC formats (via Revit)

## Data

The idea of this assignment is to stimulate your creativity and to be of use for your future. Therefore quite a big freedom is given to you in terms of methodology, data etc.

**Option1**: If you have your own data or data for your thesis related to specific AOI it is allowed to be used if it is approved beforehand from the course coordinator (Mila Koeva).

**Option2**: To work on the city of Enschede, Netherlands. The area of interest AOI can be the whole city of Enschede or selected part of it. Some data that can be used will be provided to you such as:

### Images:

* Aerial image of the whole city of Enschede (30cm)
* Aerial image of Enschede (30 cm) – cropped (smaller AOI)
* Satellite images
* Enschede 2000 (IK), 2006 (QB), 2009 (RapidEye); Planet data 3m can be obtained for free.

### Open Source Data

Data for the whole Netherlands, if you decide using such, can be downloaded from the following links:

* [PDOK NL](https://www.pdok.nl/attenderingsservice-rss/-/asset_publisher/mvZkjafth739/content/basisregistratie-adressen-en-gebouwen-ba-1)
* TOPNL - Vector data in the GML format (in Dutch)
* TOPraster - Raster data in the GEO-TIFF format (in Dutch)
* [PDOK for QGIS](https://pdok-ngr.readthedocs.io/quickstart.html#qgis)
* Footprints of the buildings:
  * From this link you can download all the building footprints for the whole Netherlands
        [] https://geodata.nationaalgeoregister.nl/bag/wfs?request=GetCapabilities&service=wfs

* Data from open street view can also be provided to you

Hint: You can use Google street view as well

## **Assesment**

### Assignment Requirements & Criteria  

| Criteria                                          | Points | Comments                    |
|---------------------------------------------------|--------|------------------------------|
| **Document**                                      |        |                              |
| - Reporting (completeness, correctness, clarity)  | 10     |                              |
| - Well-described methods and their application    | 10     |                              |
| - Reflection on the questions (6 questions)       | 5      |                              |
| **Video**                            |        |                              |
| - Presentation style and content                  | 5      |                              |
| - 3D component clarity and demo                   | 10     |                              |
| ---                                               | ---    |                              |
| **REPORT AND PRESENTATION**                       | 40     |                              |
| **3D model**                                      |        |                              |
| - LOD reached and explained                       | 3      |                              |
| - Level of realism and visualization              | 10     |                              |
| - Explanation of scale                            | 5      |                              |
| - Methodological diagram                          | 15     |                              |
| - Visuals from all sides                          | 10     |                              |
| - Level of complexity                             | 7      |                              |
| - Innovativeness (nonstandard solution)           | 5      |                              |
| - Link to animation/video provided                | 5      |                              |   
| ---                                               | ---    | ---                          |
| **REPORT AND PRESENTATION**                       | 60     |                              |


Total points available: **100**  


### Examples  

* [Mt. St. Helens Web Scene](https://www.arcgis.com/home/webscene/viewer.html?webscene=b2f2143b43514e618c431e8bd9300840)  
* [Virtual Berlin](https://www.3dcitydb.org/3dcitydb-web-map/1.7/3dwebclient/index.html?title=Berlin_Demo&batchSize=1&latitude=52.517479728958044&longitude=13.411141287558161&height=534.3099172951087&heading=345.2992773976952&pitch=-44.26228062802528&roll=359.933888621294&layer_0=url%3Dhttps%253A%252F%252Fwww.3dcitydb.org%252F3dcitydb%252Ffileadmin%252Fmydata%252FBerlin_Demo%252FBerlin_Buildings_rgbTexture_ScaleFactor_0.3%252FBerlin_Buildings_rgbTexture_collada_MasterJSON.json%26name%3DBrlin_Buildings_rgbTexture%26active%3Dtrue%26spreadsheetUrl%3Dhttps%253A%252F%252Fwww.google.com%252Ffusiontables%252FDataSource%253Fdocid%253D19cuclDgIHMqrRQyBwLEztMLeGzP83IBWfEtKQA3B%2526pli%253D1%2523rows%253Aid%253D1%26cityobjectsJsonUrl%3D%26minLodPixels%3D100%26maxLodPixels%3D1.7976931348623157e%252B308%26maxSizeOfCachedTiles%3D200%26maxCountOfVisibleTiles%3D200)  
* [3D Models of London](https://www.accucities.com/3d-models-london/level-3-3d-models-london/)  

### References  

* [Biljecki, F., Ledoux, H., & Stoter, J. (2016). An improved LOD specification for 3D building models. Computers, Environment, and Urban Systems, 59, 25-37.](https://doi.org/10.1016/j.compenvurbsys.2016.04.005)
