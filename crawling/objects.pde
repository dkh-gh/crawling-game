
// лапка
class lapka {
  float x = width/2, y = height/2, diam = 30;
  int zacepus = -1, lastZacepus = -2;
  boolean drag = false, mimo = false, zacep = true;
  lapka(float Y, float X) {
    x = Y; y = X;
  }
  void update() {
    if(zacep) {
      if(zacepus >= 0) x = zacepa[zacepus].x;
      if(zacepus >= 0) y = zacepa[zacepus].y;
      if(y >= height-10) zacep = false;
    }
    if(mousePressed) {
      boolean someLapkaShvachena = false;
      for(int i = 0; i < lapa.length; i++) {
        if(lapa[i].drag) someLapkaShvachena = true;
      }
      if(dist(mouseX,mouseY, x,y) > diam/2) mimo = true;
      else if(!mimo && !someLapkaShvachena) drag = true;
    }
    if(drag) {
      x = mouseX;
      y = mouseY;
      if(zacepus >= 0) zacepa[zacepus].zanyato = false; 
      zacep = !true;
      zacepus = -1;
    }
    if(!mousePressed) {
      if(drag) {
        for(int i = 0; i < zacepa.length; i++) {
          if(dist(x,y, zacepa[i].x,zacepa[i].y) < 20 && !zacepa[i].zanyato) {
              x = zacepa[i].x;
              y = zacepa[i].y;
              zacepa[i].zanyato = true;
              zacepa[i].speed *= 1.5;
              zacepus = i;
              zacep = true;
              boolean ok = true;
              for(int j = 0; j < 4; j++) if(lapa[j].zacepus < 0) ok = false;
              if(ok) OK = true;
              if(OK) if(zacepus != lastZacepus) score++;
              lastZacepus = zacepus;
              break;
          }
        }
      }
      drag = false;
      mimo = false;
    }
    noStroke();
    fill(60);
    circle(x, y, diam);
  }
}

class zacepka {
  float x = width/2, y = height/2, speed = .25;
  boolean zanyato = false;
  zacepka(float X, float Y) {
    x = X; y = Y;
  }
  void update() {
    y += speed;
    if(y > height) {
      y = random(-100, 0);
      x = random(0, width);
    }
    noStroke();
    fill(100);
    ellipse(x, y, 40, 20);
    
  }
}
