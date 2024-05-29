int i = 1;
void draw() {
}

void diff(int i) {
  PImage reg = loadImage("cat.png");
  PImage mod = loadImage("modifiedCat.png");
  PImage compared = createImage(reg.width, reg.height, RGB);
  ;
  reg.loadPixels();
  mod.loadPixels();
  compared.loadPixels();
  if (i == 0) {
    fill(255);
    textSize(30);
    image(reg, 0, 0);
    text("DEFAULT", 1000, 500);
  } else if (i == 1) {
    fill(0);
    textSize(30);
    for (int x = 0; x < reg.pixels.length; x++) {
      if (reg.pixels[x] == mod.pixels[x]) {
        compared.pixels[x] = color(255);
      } else {
        compared.pixels[x] = color(0);
      }
    }
    compared.updatePixels();
    image(compared, 0, 0);
    text("DIFF", 1000, 500);
  } else if (i == 2) {
    fill(0);
    textSize(30);
    for (int x = 0; x < reg.pixels.length; x++) {
      if (red(reg.pixels[x]) == red(mod.pixels[x])) {
        compared.pixels[x] = color(255);
      } else {
        compared.pixels[x] = color(0);
      }
    }
    compared.updatePixels();
    image(compared, 0, 0);
    text("DIFF_R", 1000, 500);
  } else if (i == 3) {
    fill(0);
    textSize(30);
    for (int x = 0; x < reg.pixels.length; x++) {
      if (green(reg.pixels[x]) == green(mod.pixels[x])) {
        compared.pixels[x] = color(255);
      } else {
        compared.pixels[x] = color(0);
      }
    }
    compared.updatePixels();
    image(compared, 0, 0);
    text("DIFF_G", 1000, 500);
  } else if (i == 4) {
    fill(0);
    textSize(30);
    for (int x = 0; x < reg.pixels.length; x++) {
      if (blue(reg.pixels[x]) == blue(mod.pixels[x])) {
        compared.pixels[x] = color(255);
      } else {
        compared.pixels[x] = color(0);
      }
    }
    compared.updatePixels();
    image(compared, 0, 0);
    text("DIFF_B", 1000, 500);
  }
}
void keyReleased() {
  if (key == ' ') {
    if (i < 5)
      diff(i++);
    else {
      i = 0;
      diff(i++);
    }
  }
}