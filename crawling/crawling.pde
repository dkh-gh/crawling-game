
// создание лапки lapa
lapka[] lapa = new lapka[10]; 

void setup() {
  size(800, 600);
  for(int i = 0; i < 10; i++) {
    lapa[i] = new lapka(random(0,800), random(0,600), random(5, 100));
  }
}

void draw() {
  background(190);
  for(int i = 0; i < 10; i++) lapa[i].update();
}
