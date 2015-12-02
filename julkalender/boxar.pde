
void boxes(){
int xPos = 70;
int yPos = 50;


  myBoxes = new int[24];
 for (int i = 0; i < myBoxes.length; i = i +1){
  
   
   fill(150);
   rect(xPos,yPos,100,100);
 println("hej " + i);
xPos = xPos + 120;
 if(xPos + 11 > width){
 xPos = 70;
 yPos = yPos + 120;}
 
 }

}