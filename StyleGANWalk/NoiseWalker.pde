

class NoiseWalker {
  float cx, dx;

  NoiseWalker(float dx) {
    this.cx = random(1000);
    this.dx = dx;
  }

  float value() {
    this.cx += this.dx;
    return (float) osn.eval(this.cx, 0) * 2;
  }
}
