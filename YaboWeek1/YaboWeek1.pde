//Project 1 template

float t; //variable that changes the value of x and y (value of t is 0 by default)
float x;

void setup() {
  background(20); //gray background
  size(1000,1000);  //size of canvas
}


void draw() {
  stroke(random(255), random(255), random(255), random(255));   // the color of the point
  strokeWeight(10);  //the thickness of the point
  translate(width/2, height/2);  // the position of the point
  point(x(t), y(t));  //plots x and y on the canvas
  t++;   //increase t, (allows t to move along the canvas).
  
  stroke(random(255), random(255),8);
  translate(width/4, height/4);  // the position of the point
  point(x2(x), y2(x));  //plots x and y on the canvas
  x++;   //increase x, (allows x to move along the canvas).
  
  
}


float x(float t){   // parametic function for x, takes in t as a parameter
  return sin(t/10)*100- sin(t/5)*100; 
}


float y(float t) {    // parematic function for y, takes in t as a parameter
 return cos(t/10)*100; 
}




float x2(float x){   // parametic function for x, takes in t as a parameter
  return sin(x/10)*100 + sin(t/15)*100; 
}


float y2(float x) {    // parematic function for y, takes in t as a parameter
 return cos(x/10)*100; 
}





/*
NOTES ():
o Dividing t decreases the frequency
o Multipying t increases the frequency
o The coefficient inside of the sin wave increase the frequency, the coefficient
  outisde of the sin wave increase the amplitude 
*/

/*
parametric equations means you have a pair of equations.
one for  x and one for y. and you have a third variable t, which
is our parameter
*/
