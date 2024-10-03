class SpaceShip {

  float x;
  float y;
  boolean alive;

  SpaceShip(float tempX, float tempY, boolean alive_) {
    x = tempX;
    y = tempY;
    alive = alive_;
  }
  void update() {
    if(alive){
    x = constrain((int)x, 0+20, width-20) + (int)random(-5, 5);
    }
  }

  void display() {
    if (alive) {
      rectMode(CENTER);
      noStroke();
      rect(x, y, 20, 10);
      rect(x, y+5, 10, 20);
    }
  }
}
