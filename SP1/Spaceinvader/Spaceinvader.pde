SpaceShip[][] enemies = new SpaceShip[3][3];
ArrayList<Attack> attack = new ArrayList<Attack>();
Player player;
int playerX = 100;

void setup() {
  frameRate(30);
  size(400, 400);
  background(0);


  //Make the player object
  player = new Player(playerX, height-20);

  //Make enemy objects
  for (int i = 0; i < enemies.length; i++) {
    for (int j = 0; j < enemies.length; j++) {
      enemies[i][j] = new SpaceShip((j+1) * 100, (i+1) * 100, true);
      enemies[i][j].display();
      enemies[i][j].update();
    }
  }
}

void draw() {
  background(0);
  //Make use of the display- and update function for every enemy
  for (int i = 0; i < enemies.length; i++) {
    for (int j = 0; j < enemies.length; j++) {
      enemies[i][j].display();

      //Gør at fjender kun bevæger sig hvert 1/4 sekund
      if (frameCount % 7 == 0) {
        enemies[i][j].update();
      }
    }
  }


  //Make the player able to be seen and move
  player.display();
  player.move();

  //Make it possible to see attack
  for (int i = 0; i < attack.size(); i++) {
    attack.get(i).display();
  }
  //Remove attack from ArrayList attack if it reaches (x, 0)
  for (int i = 0; i < attack.size(); i++) {
    Attack currentAttack = attack.get(i);
    if (currentAttack.y <= 0) {
      attack.remove(i);
      i--;
    }
    whenAttackHit();
  }
}
//When mouse has been pressed and released
//make a new attack object an add it to attack arrayList
void mouseClicked() {
  attack.add(new Attack(player.x, player.y));
}
//Make a function to not display an enemy if its hit
void whenAttackHit() {
  for (int i = 0; i < attack.size(); i++) {
    Attack currentAttack = attack.get(i);
    for (int j = 0; j < enemies.length; j++) {
      for (int k = 0; k < enemies.length; k++) {
        SpaceShip thisEnemy = enemies[j][k];
        if (thisEnemy.alive && enemyHit(currentAttack, thisEnemy)) {
          thisEnemy.alive = false;
          attack.remove(i);
          i--;
        }
      }
    }
  }
}

//Check if enemy has been hit by attack
boolean enemyHit(Attack attack, SpaceShip enemy) {
  float distance = dist(attack.x, attack.y, enemy.x, enemy.y);
  //Is attack x and y cordinat inside the enemy x and y coordinat
  return (distance <= 20.0);
}
