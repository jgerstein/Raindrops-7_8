int index = 1;    //index will control which spot is the last spot we display
Raindrop[] drops = new Raindrop[500];

void setup() {
  size(500, 500);
  //IMPORTANT: Initialize EVERY Raindrop in the drops array
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Raindrop();
  }
}

void draw() {
  background(100, 200, 255);\
  //when displaying and moving the raindrops, only go from 0 through index
  for (int i = 0; i < index; i++) {
    drops[i].display();
    drops[i].drop();
  }
}

void mousePressed() {    //right now, index increases when the mouse is pressed.  how could you make it advance every 5 seconds?
  if (index < drops.length) {
    index++;
  }
}

