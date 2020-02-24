//Project 1 template

float pi = 3.1415926535;

float t = pi/2; //variable that changes the value of x and y (value of t is 0 by default)

void setup() {
  background(20); //gray background
  size(500,500);  //size of canvas
}

int s, c;

void draw() {
  // Gradually fade
  stroke(0);
  fill(color(20, 1));
  rect(0,0,500,500);
  // Add a star randomly
  if (s > c) {
    float x1 = random(500);
    float y1 = random(500);
    stroke(255);
    strokeWeight(1);
    point(x1,y1);
    s = 0;
    c = ceil(random(60))+20;
  }
  s++;
  // Calculate a rainbow color
  int r = floor(sin(t/3)*255);
  int g = floor(sin(t/3+2*pi/3)*255);
  int b = floor(sin(t/3+4*pi/3)*255);
  int clr = color(r,g,b);
  stroke(clr);   // the color of the point
  strokeWeight(5);  //the thickness of the point
  translate(width/2, height/2);  // the position of the point
  point(x(t)*100, y(t)*100);  //plots x and y on the canvas
  t += pi/300;   //increase t, (allows t to move along the canvas).
}

float x(float t){   // parametric function for x, takes in t as a parameter
  float phi = pi/2;
  float r = cos(t);
  r *= pow(max(cos(t+phi),0),0.2)+pow(max(cos(t+pi+phi),0),0.2);
  r *= 0.5*cos((t+pi/2)%pi)+1;
  r += 0.2*cos(t);
  return r; 
}

// Calculate a power while keeping the sign of b
float powsgn(float b, float e) {
  return pow(max(b,-b),e)*b/abs(b);
}

float y(float t) {    // parametric function for y, takes in t as a parameter
  float r = powsgn(sin(2*t),0.7);
  float p = 0.3;
  r *= p*powsgn(cos((t+pi/2)%pi),2)+1-p/2;
  r *= 1.2;
  return r;
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
