class Player {
  int health;
  int x;
  int y;

  Player(int startHealth, int startY) {
    health = startHealth;
    y = startY;
  }
//Update the x variable så player sprite bevæger sig efter mouseX position
  void move() {
    x = mouseX;
  }
  //Show the player sprite
  void display() {
    rectMode(CENTER);
    rect(x, y, 10, 20);
    ellipse(x, y+5, 20, 20);
  }
}
