Raindrop[] r = new Raindrop[10];
Catcher catcher;
int score;

void setup() {
  size(500, 700);
  for (int i = 0; i < r.length; i++) {
    r[i] = new Raindrop();
  } 
  catcher = new Catcher();
}

void draw() {
  background(200, 230, 255);
  textSize(50);
  fill(10);
  text(score, 10, 100);
  for (int i = 0; i < r.length; i++) {
    r[i].display();
    r[i].drop();
    if (r[i].loc.y > height + r[i].d) {
      r[i].reset();
    }
    if (catcher.catchDrop(r[i]) == true) {
      r[i].reset();
      score++;
    }
  }
  catcher.display();
  catcher.update();
}

