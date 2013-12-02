color c = color(0);    //color c starts with a value of black
int waitTime = 2000;   //waitTime variable will control the time waited

void setup() {
  size(800, 100);
  textSize(50);
  textAlign(CENTER);
}

void draw() {
  background(c);    //draw background using color c
  //use the modulo operator to see what the remainder is when the value of millis() 
  //(which is the number of milliseconds the program has been running) is divided by
  //waitTime.  If this value is 0, assign c a new random color.  This will occur
  //after the number of milliseconds indicated by waitTime has elapsed.
  if (millis()%waitTime == 0) {    
    c = color(random(255), random(255), random(255));
  }

  text(millis()/1000.0, width/2, height*.75);
}

