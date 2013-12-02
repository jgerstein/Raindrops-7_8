//Because this timer is triggered when the difference
//is at least 2000 instead of exactly 200, it won't
//suffer from skipped numbers like modulo will

int oldTime = 0;
int currentTime = 0;
int timeChange = 0;

void setup() {
  size(500, 500);
  noStroke();
}

void draw() {
  ellipse(mouseX, mouseY, 30, 30);  //Draw a circle every frame
  currentTime = millis();           //Update currentTime with the current value of millis()
  timeChange = currentTime - oldTime;  //set timeChange to the difference between currentTime and oldTime
  if (timeChange >= 2000) {            //if the difference between the two times is at least 2000...
    fill(random(255), random(255), random(255),100);  //...change the fill color...
    oldTime = currentTime;                            //...and update oldTime with the value of currentTime so the timeChange value is reset to 0
  }
}

