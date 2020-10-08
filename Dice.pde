int sum;
void setup()
  {
      size(650, 550);   
      noLoop();
  }
  void draw()
  {
    background(255,105,97);
    fill(255);
    text("Sum of Dots: " + sum, 500, 500);
    resetSum();
    for(int x = 100; x <= 500; x += 100) 
    { 
      for(int y = 100; y <= 400; y += 100) 
    {
       Die mute = new Die(x, y);
       mute.show();
    }
   }
  }
  
  void resetSum() 
  {
   sum = 0; 
  }
  
  void mousePressed()
  {
    redraw();
  }
  class Die 
  {
      int myX, myY, ranRoll;
      Die(int x, int y) 
      {
        roll();
        myX = x;
        myY = y;
      }
      
      void roll() 
      {
        ranRoll = (int)(Math.random() * 6) + 1;
      }
     
      void allRgb() 
      {
        fill((int)(Math.random() * 255),  (int)(Math.random() * 255), (int)(Math.random() * 255));
      }
     
      void show()
      {
          
          fill(255);
          rect(myX, myY, 55, 55, 7);
          fill(0);
          if(ranRoll == 1) 
          {
            allRgb();
            ellipse(myX + 28, myY + 28, 10, 10);
            sum += 1;
          } else if(ranRoll == 2) 
          {
            allRgb();
            sum += 2;
            ellipse(myX + 15, myY + 15, 10, 10);
            ellipse(myX + 40, myY + 40, 10, 10);
          } else if(ranRoll == 3) 
          {
            allRgb();
            sum += 3;
            ellipse(myX + 15, myY + 15, 10, 10);
            ellipse(myX + 40, myY + 40, 10, 10);
            ellipse(myX + 28, myY + 28, 10, 10);
          } else if(ranRoll == 4)
          {
            allRgb();
            sum += 4;
            ellipse(myX + 15, myY + 15, 10, 10);
            ellipse(myX + 40, myY + 40, 10, 10);
            ellipse(myX + 40, myY + 15, 10, 10);
            ellipse(myX + 15, myY + 40, 10, 10);
          } else if(ranRoll == 5)
          {
            allRgb();
            sum += 5;
            ellipse(myX + 15, myY + 15, 10, 10);
            ellipse(myX + 40, myY + 40, 10, 10);
            ellipse(myX + 40, myY + 15, 10, 10);
            ellipse(myX + 15, myY + 40, 10, 10);
          } else if(ranRoll == 6) 
          {
            allRgb();
            sum += 6;
            ellipse(myX + 15, myY + 15, 10, 10);
            ellipse(myX + 28, myY + 15, 10, 10);
            ellipse(myX + 40, myY + 15, 10, 10);
            ellipse(myX + 15, myY + 40, 10, 10);
            ellipse(myX + 28, myY + 40, 10, 10);
            ellipse(myX + 40, myY + 40, 10, 10);
          }
      }
  }
