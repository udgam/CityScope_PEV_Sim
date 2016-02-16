// Andorra PEV Simulation v0010
// for MIT Media Lab, Changing Place Group, CityScope Project

// by Udgam Goyal <udgam@mit.edu>
// Feb.8th.2015
class Spot {

  //int id; //PEV agent id
  int status; //0 - not picked up; 1 - being delivered; 2 - delivered;
  //int roadID; //the road the PEV is currently on
  Road road; //current road object
  float t; //t location of the current road;
  PVector locationPt; //location coordination on the canvas
  PVector locationTangent;
  float rotation; //rotation in radius on the canvas
  float speedT; //current speed; units: t per frame

  Spot(Road _road, float _t) {
    //id = _id;
    //roadID = _roadID;
    //road = roads.roads.get(roadID);
    road = _road;
    t = _t;
    status = 0;
    locationPt = road.getPt(t);
    speedT = maxSpeedMPS / road.roadLengthMeter / frameRate; //speedT unit: t per frame
  }

  
 }