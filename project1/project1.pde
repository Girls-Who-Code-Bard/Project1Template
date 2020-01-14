//Project 1 template

float t; //variable that changes the value of x and y (value of t is 0 by default)

void setup() {
  background(20); //gray background
  size(500,500);  //size of canvas
}


void draw() {
  stroke(255);   // the color of the point
  strokeWeight(5);  //the thickness of the point
  translate(width/2, height/2);  // the position of the point
  point(x(t), y(t));  //plots x and y on the canvas
  t++;   //increase t, (allows t to move along the canvas).
}


float x(float t){   // parametic function for x, takes in t as a parameter
  return sin(t/10)*100; 
}


float y(float t) {    // parematic function for y, takes in t as a parameter
 return cos(t/10)*100; 
}


/*
NOTES (line 31-37):
o Diving t decreases the frequency
o Multipying t increases the frequency
o The coefficient inside of the sin wave increase the frequency, the coefficient
  outisde of the sin wave increase the amplitude 
*/

/*
parametric equations means you have a pair of equations.
one for  x and one for y. and you have a third variable t, which
is our parameter

*/
