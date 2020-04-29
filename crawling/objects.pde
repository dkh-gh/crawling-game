
// лапка
class lapka {
  float x = width/2, y = height/2, diam = 30;
  boolean drag = false, mimo = false;
  lapka(float X, float Y, float D) {
    x = X; y = Y; diam = D;
  }
  void update() {
    if(mousePressed) {
      if(dist(mouseX,mouseY, x,y) > diam/2) mimo = true;
      else if(!mimo) drag = true;
    }
    if(drag) {
      x = mouseX;
      y = mouseY;
    }
    if(!mousePressed) {
      drag = false;
      mimo = false;
    }
    circle(x, y, diam);
  }
}
