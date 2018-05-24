
int x = 0;
int y=0;
snow[] snowballs = new snow[200];

PImage sprite;
PImage temp;

void setup() {
  size(500,500);
  frameRate(10);
  
  for (int i=0;i<200;i++)
  {
    snowballs[i] = new snow();
  }
}

void draw(){
  background(84+mouseX,207,204-mouseX); 
  
  fill(0+mouseX/2,0+mouseX,0+mouseX/2);
   rect(0,430,500,100);
   
   for (int i=0;i<200-mouseX;i++)
  {
    snowballs[i].snowappear();
    snowballs[i].snowfall(); 
  }
  
  path();
  sun();
  }
  
  
  void sun()
  {
   if(mouseX<50)
   {
   fill(255);
   }
   else
    fill(10+mouseX,0,201-mouseX);
    
    ellipse(350,100,50,50);
  }
  
  
  void path()
  {
    fill(0+mouseX,0+mouseX/5,0+mouseX);
    ellipse(x,395,10,10);
    //pushMatrix();
    ellipse(x,410,20,20);
   // popMatrix();
     ellipse(x+5,425,5,10);
      ellipse(x-5,425,5,10);
    
   }
   
   void keyPressed()
   {
     if(key =='z'| key =='x' )
     {
       x=x-3;
     }
     
    else
       x=x+3;
     
     
   }
