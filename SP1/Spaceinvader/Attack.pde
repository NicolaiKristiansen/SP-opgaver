class Attack{
  float x;
  float y;
  
  Attack(float xpos, float ypos){
    x = xpos;
    y = ypos;
  }
  
  void display(){
    ellipse(x, y, 5, 5);
    y--;
  }
}
