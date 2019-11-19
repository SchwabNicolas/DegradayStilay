int red = 0;
int green = 0;
int blue = 0;
boolean redB = true;
boolean greenB = false;
boolean blueB = false;

void setup() {
  fullScreen();
}

void draw() {
  background(red,green,blue);
  if(redB == true) {
   red += 1;
   if(red >= 255) {
     red = 255;
   }
  }
  if(redB == false) {
   red -= 1;
   if(red <= 0) {
    red = 0; 
   }
  }
  
  if(greenB == true) {
    green += 1;
    if(green >= 255) {
     green = 255;
    }
  }
  if(greenB == false) {
    green -= 1;
    if(green <= 0) {
     green = 0; 
    }
  }
  
  if(blueB == true) {
    blue += 1;
    if(green >= 255) {
     blue = 255;
    }
  }
  if(blueB == false) {
    blue -= 1;
    if(blue <= 0) {
     blue = 0; 
    }
  }
  
  if(red >= 255) {
   redB = false;
   greenB = true;
  }
  
  if(green >= 255) {
   greenB = false; 
   blueB = true;
  }
  
  if(blue >= 255) {
    blueB = false;
    redB = true;
  }
}
