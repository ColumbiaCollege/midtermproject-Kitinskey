// Hopefully all that good code for the paddle
// should 1) create a paddle that moves along the x axis (Stationary Y axis) and has a boundry for the sides of the screen

// Variables are up first, just for the positions of the X & Y axis
class Paddle {
  int ypos = 800;
  float xpos = 250;

  // the visuals of the paddle, very basic, just fill and starting pos
  void display() {
    noStroke();
    fill(0);
    rectMode(CENTER);
    rect(xpos, ypos, 100, 15);
  }

  // this gets the paddle to move, with a buffer of 10 pixels on either side of the screen
  // also has the paddle following the mouse on the X axis
  void move() {
    xpos = mouseX;
    if (xpos > width-60) {
      xpos = width-60;
    }
    if (xpos < 60) {
      xpos = 60;
    }
  }
}