int zlength = 550;
int zfreq = 200;
int[] zx = new int[zlength];
int[] zy = new int[zlength];

void setup() {
  size(400, 400);
  smooth();
  noFill();
  background(130);
  for (int i=0 ; i<zlength ; i++) {
    zx[i] = -i%zfreq;
    zy[i] = i;
  }
  translate(275, -130);
  for (int j=0 ; j<20 ; j++) {
    translate(2, 3);
    for (int i=0 ; i<(zlength-1) ; i++) {
      float col = i*255/zlength;
      stroke(col);
      line(zx[i], zy[i], zx[i+1], zy[i+1]);
    }
  }
  save("Z.jpg");
}

