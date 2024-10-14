# GATHERING, VISUALIZING AND USING EXISTING DATA FROM AHN AND 3DBAG (THE NETHERLANDS)


### Learning aim
To use existing data as a basis for 3d modeling.
### Learning objectives
After this exercise you have to be are able to:
-	Gather data from AHN
-	Edit and use GeoTiff files
-	Gather data from 3DBAG
-	Edit and use OBJ files

### Expected time investment
2 hours

### Required material & Data
-	AHN
-	TerreSculptor
-	3DBAG
-	Blender

### Deliverables/products
No deliverable requested (you can show your result to the teacher if you want)

 
## Exercise content

* Gathering data from AHN
* Installing and getting to know TerreSculptor
* Editing and exporting GeoTiff data using TerreSculptor
* Gathering data from 3DBAG
* Installing and getting to know Blender
* Combining wavefront OBJ data in Blender

During the work on this tutorial, you are expected to keep your files organised on your computer.

____
____

## 1. Gathering data from AHN
The AHN provides height information for the entire Netherlands, these height information can be used as a base landscape for further 3d modelling work or combined with the geometric vector model of building for 3D city model generation. AHN data is acquired via LiDAR aerial survey. 
1.	Go to https://ahn.arcgisonline.nl/ahnviewer/ and to enable downloads, go to “List of Layers” or “lijst met lagen” and enable “AHN1, 2 en 3 – Downloads per kaartblad”
 
2.	Navigate to the University of Twente (campus) in Enschede (or the area of your interest) by either the search bar or by zooming in.
    ![List of layers text](./Images/Assignment%201-1.png)

3.	The University of Twente is right on the edge of two data blocks, however, for this tutorial, only the right part is used. This is the block with the name 34fn2. Download the file “AHN4 0,5 meter raster DSM”. This is a Digital Surface model terrain data.

    ![Selecting DSM 0.5 meter Raster](./Images/Assignment%201-2.png)

The data type for this file is GeoTiff and each pixel is 0.5m. Since the resolution of the entire file is 10000 x 12500, it covers an area of 5 x 6.25 km. You can download the original point cloud data format which is .LAZ file format. However, since this is very accurate data (many points per sq.m) this .LAZ files are quite big and require a lot of computational power to process. For future work you can download and either crop small area or reduced the point density. For the current tutorial, we will not be using this data type.

[comment]: # (@milankoeva I do not understand the need for Twinmotion for clipping the raster, can't it be done just with QGIS?)

## 2. Gathering data from 3DBAG
The terrain of the university campus is now complete, in this chapter the data of the existing buildings will be gathered.
1.	Go to https://3dbag.nl/en/download and click the button “Pick a tile”

2.	Move the map to the university campus of Enschede and you will see that the building data for the area of the campus that is in the previously created terrain, requires 3 tiles. These tiles are 2345, 5106 and 5107. For each of  these tiles, the next step has to be made.

    ![Select tiles 3D BAG](./Images/Assignment%201-3.png)

3.	Select a tile and click the “Confirm selection” button. In this exercise we will use the .OBJ format so download that file by clicking on it. OBJ files are supported by nearly all 3D softwares. Whereas the GeoPackage (GPKG) is used in GIS software like ArcGIS or QGIS, for more information about GPKG and how to use it visit: https://docs.3dbag.nl/en/delivery/gpkg/. The CityJSON file format is specifically made for 3D city models and more information can be found at: https://docs.3dbag.nl/en/delivery/cityjson/. Finally, CityJSON can also be imported into Blender using the following add-on, however, please keep in mind that this method is not 100% bug free: https://github.com/cityjson/Up3date 

4.	Now you should have 3 zip files, one for each of the tiles. Extract each of them and you will that for each tile you have 3 .obj models, each with a different LOD setting. Each of these models have a corresponding .mtl file which stores the material settings for the .obj model. Depending on the scale of the project and the graphical power of your computer, you can use any of the LOD’s, the remainder of this tutorial uses LOD2.2. For more information about the different LOD’s, visit: https://docs.3dbag.nl/en/schema/concepts/ 
 
## 3. Combining wavefront OBJ data in Blender
1.	Import the OBJ data using File -> Import -> Wavefront (.obj)
 
    ![Import object on Blender](./Images/Assignment%201-4.png)

2.	Navigate to one of the three folders containing the .obj files for the tile data from 3DBAG and select one of the LOD’s. I recommend using the lod22 version since it gives the most detail, but if your computer is unable to handle it, you could use a lower LOD. Under “Transform” make sure that the “Up” setting is set to Z Up and that under “Geometry”, “Split by Object” is turned off. When this is done, click the “Import OBJ” button. Do this for all three different tiles.

    ![alt text](./Images/Assignment%201-5.png)

3.	Because the objects are placed in Blender using real-world coordinates instead of centered around the origin, you should not be able to see them at the origin. The objects being far away from the origin causes them to flicker in Blender. Focus the camera on the objects by selecting them in the Scene Collection and pressing the “.” on the numPad when your mouse cursor hovers over viewport use View -> Frame Selected. You will now view the models, but you won’t be able to see anything.

4.	To fix that, press “N” on the keyboard to open up some additional settings. Go to View, and change the End setting from 1000 to 10000. This allows to camera to see 10km away instead of 1km. You should now be able to see the model, although it may flicker a lot.
 
    ![alt text](./Images/Assignment%201-6.png)
5.	With the three objects selected, press “ctrl” + “J” to join them together

6.	Now that you only have a single object, with that object selected, press the “tab” button To enter edit mode.a This might take a while. Make sure that everything is selected, you (de)select everything by pressing A. If everything that is selected is shown in orange.a
7.	In the window with extra setting that showed up at 4. go to Item and under Transform, set the X and Y and Z coordinates to 0 (note that it will not stay at 0).
 
    ![alt text](./Images/Assignment%201-7.png)

8.	After that is done, once again focus the camera on the object (step 3.) and now you should see the model just fine.

9.	Now to fix the orientation of the model, so to have North actually point North, in the properties tab, select Object Properties and set the Z rotation to 0
 
    ![alt text](./Images/Assignment%201-8.png)

10.	Finally, to allow for more flexibility in the future, we want to have each object separated instead of combined. So select the object, be sure that you are in edit mode, make sure everything is selected by pressing A and then everything should be orange. Then press P and select “By Loose Parts”. You can also use the toolbar, by pressing Mesh -> Separate -> By Loose Parts. Now you should have many objects in the Scene Collection. 
11.	The models can now be exported and used in another program.
Go to File -> Export -> Wavefront (.obj) and press the “Export OBJ” button.
