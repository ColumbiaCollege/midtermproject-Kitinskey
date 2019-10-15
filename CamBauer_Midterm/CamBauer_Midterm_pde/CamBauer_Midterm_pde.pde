// Block Breaker Hues, coded by Cameron Bauer

// Let us all send out our thoughts and prayers with the intent that I have at least 3 braincells by the end of this program.
// This game should be simple; randomly colored blocks, in a simple grid, need to be broken by a bouncing ball, which is directed by a vertically stationary paddle.
// The paddle should also determine the color of the ball. A redBall can only break redBlocks. A yellowBall can only break a yellowBlock. A blueSphere can only break a blueBlock.
// And so forth.

//Necessary steps will be to 1) create a ball capable of responding to the bounds of the blocks, the paddle, and of the window; 
// 2) create a paddle that has a constant Y that follows the mouse;
// 3) Have the color of the ball correlate with the color of the paddle at the time of impact;
// 4) create an array of blocks, with random colors, that disappear after being hit with the ball of the right color;
// 5) endless? Maybe. I hope.

// I hope for a lot of things.

// Variables
Ball bouncing;
Paddle paddling;


//Screen size, background image/color, ect...
void setup(){
 size(500,900);
 bouncing = new Ball();
 paddling = new Paddle();
 
}

void draw(){
  background(255);
  bouncing.display();
  paddling.display();
  paddling.move();
  bouncing.move();
}