
// создание лапки lapa
lapka[] lapa = new lapka[4]; 
zacepka[] zacepa = new zacepka[10]; 

float x, y;

void setup() {
  size(800, 600);
  for(int i = 0; i < 10; i++) {
    zacepa[i] = new zacepka(random(0,800), random(0,600));
  }
  for(int i = 0; i < 4; i++) {
    lapa[i] = new lapka(random(0,800), random(0,600));
  }
  x = width/2; y = height/2;
}


void draw() {
  background(190);
  
  float nX = 0, nY = 0;
  
  for(int i = 0; i < lapa.length; i++) {
    nX += lapa[i].x;
    nY += lapa[i].y;
  }
  nX /= lapa.length;
  nY /= lapa.length;
  
  x += (nX-x)/10;
  y += (nY-y)/10 + 20;
  
  for(int i = 0; i < 10; i++) zacepa[i].update();
  
  for(int i = 0; i < lapa.length; i++) {
    stroke(45);
    strokeWeight(20);
    line(x,y, lapa[i].x,lapa[i].y);
  }
  noStroke();
  fill(45);
  circle(x, y, 75);
  
  for(int i = 0; i < 4; i++) {
    if(!lapa[i].zacep) {
      lapa[i].x += (x - lapa[i].x)/20;
      lapa[i].y += (y - lapa[i].y)/20;
    }
    lapa[i].update();
  }
  
}
