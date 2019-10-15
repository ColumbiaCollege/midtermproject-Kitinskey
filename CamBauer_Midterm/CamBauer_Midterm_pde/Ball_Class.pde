// In here should be everything the ball needs to function, including;
// 1) having the ball start in the center of the paddle
// 2) having the ball start to move after first click
// 3) having the ball change direction based on where it hits the paddle
// 4) having the ball change color based on the color of the paddle at impact

// First up are variables, as should be
class Ball {
  float xpos = 250;
  float ypos = 450;
  float ballRad = 20;
  float speed = 2.5;

  //the ball itself, starting at the declared variables above
  void display() {
    ellipseMode(CENTER);
    ellipse(xpos, ypos, ballRad, ballRad);
  }

  // the movement bit here keeps the ball in constant and consistant motion
  void move() {
    ypos = ypos + speed;

    if (xpos <= mouseX +50 && xpos >= mouseX-50 && ypos == 800 - ballRad) {
      speed = speed *-1;
      ypos = 800;
    } else if (ypos > height - ballRad) {
      speed = speed * -1;
      ypos = height- ballRad;
    } else if (ypos < ballRad) {
      speed = speed * -1;
      ypos = ballRad;
    }
  }
}