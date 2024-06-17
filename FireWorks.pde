ArrayList<Firework> fireworks;
PVector gravity = new PVector(0, 0.2);
float textAlpha = 0;

void setup() {
  size(1200, 700, P2D);
  fireworks = new ArrayList<Firework>();
  colorMode(HSB, 360, 100, 100);
  background(51);
  textAlign(CENTER);
  textSize(32);
}

void draw() {
  if (random(1) < 0.08) {
    fireworks.add(new Firework());
  }
  fill(51, 50);
  noStroke();
  rect(0, 0, width, height);

  for (int i = fireworks.size() - 1; i >= 0; i--) {
    Firework f = fireworks.get(i);
    f.run();
    if (f.done()) {
      fireworks.remove(i);
    }
  }

  if (textAlpha < 255) {
    textAlpha += 2;
  }

  fill(120, 255, 255, textAlpha);
  text("HRSD", width / 2.3, height / 2);

  fill(255, textAlpha);
  text("Eid Mubark From HRSD Member Shatha Alhakami <3", width / 2, height / 2);
}
