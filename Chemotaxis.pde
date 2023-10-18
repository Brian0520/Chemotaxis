 Bacteria[] bob;  
 void setup()   
 {     
   size(500,500);
   bob = new Bacteria[100];
   for(int i = 0; i < bob.length; i++){
     bob[i] = new Bacteria();
 }   
 }
 void draw()   
 {    
   background(0);
   for(int i = 0; i < bob.length; i++){
   bob[i].show();
   bob[i].walk();
 }  
 }
 class Bacteria    
 {     
   int myX, myY, myColor;  
   Bacteria()
   {
      myX = myY = 250;
      myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
 }    
   void walk()
   {
     myX = myX + (int)(Math.random()*7)-3;
     myY = myY + (int)(Math.random()*7)-3;
   }
   void show()
   {
     fill(myColor);
     ellipse(myX,myY,30,30);
 
   }
   Bacteria(int x, int y){
   myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   myX = x;
   myY = y;
 }

 }
