/*
This has been generated by the overpass-turbo wizard.
The original search was:
“water in Enschede”
*/
[out:json][timeout:100];
// fetch area “Enschede” to search in
{{geocodeArea:Enschede}}->.searchArea;
// gather results
(
  // query part for: “water”
  way["natural"="water"]["covered"!="yes"]["building"!="yes"](area.searchArea);
  relation["natural"="water"]["covered"!="yes"](area.searchArea);
  way["landuse"="basin"](area.searchArea);
  relation["landuse"="basin"](area.searchArea);
);
// print results
out body;
>;
out skel qt;