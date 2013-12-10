int index = 1;
int oldTime = 0;
int threshold = 1000;
Raindrop[] r = new Raindrop[500];
Catcher catcher;
int score;
boolean start = false;

void setup() {
  size(500, 500);
  for (int i = 0; i < r.length; i++) {
    r[i] = new Raindrop();
  } 
  catcher = new Catcher();
}

void draw() {
  if (!start) {
    background(0);
    fill(random(255));
    ellipse(width/2, height/2, 100, 100);
  }
  else {
    background(200, 230, 255);
    textSize(50);
    fill(10);
    text(score, 10, 100);
    for (int i = 0; i < index; i++) {
      r[i].display();
      r[i].drop();
      if (catcher.catchDrop(r[i]) == true) {
        r[i].goAway();
        score++;
        threshold-=10;
      }
    }
    catcher.display();
    catcher.update();
    if (millis() - oldTime > threshold) {
      if (index < r.length) {
        index++;
        oldTime = millis();
      }
    }
  }
}

void mousePressed() {
  start = true;
}

