// Barcelona PEV Simulation v0010
// for MIT Media Lab, Changing Place Group, CityScope Project

// by Udgam Goyal <udgam@mit.edu>
// Feb.8th.2015

class Path{
   ArrayList <Road> Roads;
   String roadPtFile;
   ArrayList <Node> allNodes;
   ArrayList <Node> pathOfNodes;

Path(){
  allNodes = new ArrayList <Node>();
  pathOfNodes = new ArrayList <Node>();
}

//Creating Nodes ArrayList for all Nodes

void addNodesToAllNodes(){
  for (Road road : Roads){
      for (float t = 0.0; t<=1.0-(1/road.roadPts.length); t+=(1/road.roadPts.length)){
        Node node1 = new Node(road.getPt(t), road.getNextPt(t), road);
        allNodes.add(node1);
      }

  }
}
void addNodeToAll(Node node) {
    allNodes.add(node);
  }

void addNodeToPath(Node node){
    pathOfNodes.add(node);
  }
  
 //void drawPath(ArrayList <Node> path) {
   // for (Node node : path) {
     // node.drawNode();
    //}

}