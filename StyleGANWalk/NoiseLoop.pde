

class NoiseLoop {
  float diameter = 0;
  float min = 0;
  float max = 0;
  float cx, cy;
  
  NoiseLoop(float diameter, float min, float max) {
    this.diameter = diameter;
    this.min = min;
    this.max = max;
    this.cx = random(1000);
    this.cy = random(1000);
  }

  float value(float a) {
    //float xoff = map(cos(a), -1, 1, this.cx, this.cx + this.diameter);
    //float yoff = map(sin(a), -1, 1, this.cy, this.cy + this.diameter);
    //float r = (float) osn.eval(xoff, yoff);
    //return map(r, -1, 1, this.min, this.max);
    
    float r = (float) osn.eval(this.cx + a, this.cy);
    return map(r, -1, 1, this.min, this.max); 
  }
}
