int i = 1;
int j = 1;
int BLACK = 1;
int WHITE = 0;
void draw() {
}
void show_red_bitplane(int plane) {
  PImage checking = loadImage("cat.png");
  PImage bitplane = createImage(checking.width, checking.height, RGB);
  checking.loadPixels();
  bitplane.loadPixels();
  if (plane == 0) {
    image(checking, 0, 0);
    text("Original", 800, 500);
  } else {
    for (int i = 0; i < checking.pixels.length; i++) {
      int current_bit = ((int)red(checking.pixels[i]) >> (8 - plane)) & 1;
      if (current_bit == WHITE) {
        bitplane.pixels[i] = color(255);
      } else {
        bitplane.pixels[i] = color(0);
      }
    }
    bitplane.updatePixels();
    image(bitplane, 0, 0);
    fill(255, 0, 0);
    textSize(50);
    text("Red Bitplane " + plane, 800, 500);
  }
}
void show_blue_bitplane(int plane) {
  PImage checking = loadImage("cat.png");
  PImage bitplane = createImage(checking.width, checking.height, RGB);
  checking.loadPixels();
  bitplane.loadPixels();
  if (plane == 0) {
    image(checking, 0, 0);
    text("Original", 800, 500);
  } else {
    for (int i = 0; i < checking.pixels.length; i++) {

      int current_bit = ((int)blue(checking.pixels[i]) >> (8 - plane)) & 1;
      if (current_bit == WHITE) {
        bitplane.pixels[i] = color(255);
      } else {
        bitplane.pixels[i] = color(0);
      }
    }
    bitplane.updatePixels();
    image(bitplane, 0, 0);
    fill(0, 0, 255);
    textSize(50);
    text("Blue Bitplane " + plane, 800, 500);
  }
}

void show_green_bitplane(int plane) {
  PImage checking = loadImage("cat.png");
  PImage bitplane = createImage(checking.width, checking.height, RGB);
  checking.loadPixels();
  bitplane.loadPixels();
  if (plane == 0) {
    image(checking, 0, 0);
    text("Original", 800, 500);
  } else {
    for (int i = 0; i < checking.pixels.length; i++) {

      int current_bit = ((int)green(checking.pixels[i]) >> (8 - plane)) & 1;
      if (current_bit == WHITE) {
        bitplane.pixels[i] = color(255);
      } else {
        bitplane.pixels[i] = color(0);
      }
    }
    bitplane.updatePixels();
    image(bitplane, 0, 0);
    fill(0, 255, 0);
    textSize(50);
    text("Green Bitplane " + plane, 800, 500);
  }
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
    fill(255);
    textSize(30);
    image(mod, 0, 0);
    text("MODIFIED", 1000, 500);
  } else if (i == 2) {
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
    text("DIFF", 800, 500);
  } else if (i == 3) {
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
    text("DIFF_R", 800, 500);
  } else if (i == 4) {
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
    text("DIFF_G", 800, 500);
  } else if (i == 5) {
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
    text("DIFF_B", 800, 500);
  } else if (i == 6) {
    compared.pixels = reg.pixels;
    fill(0);
    textSize(30);
    for (int x = 0; x < reg.pixels.length; x++) {
      if ((reg.pixels[x]) == (mod.pixels[x])) {
        compared.pixels[x] = reg.pixels[x];
      } else {
        compared.pixels[x] = color(225);
      }
    }
    compared.updatePixels();
    image(compared, 0, 0);
    text("DIFF on image", 800, 500);
  } else if (i == 7) {
    fill(0);
    textSize(30);
    for (int x = 0; x < reg.pixels.length; x++) {
      if (red(reg.pixels[x]) == red(mod.pixels[x])) {
        compared.pixels[x] = reg.pixels[x];
      } else {
        compared.pixels[x] = color(225);
      }
    }
    compared.updatePixels();
    image(compared, 0, 0);
    text("DIFF red on image", 800, 500);
  } else if (i == 8) {
    fill(0);
    textSize(30);
    for (int x = 0; x < reg.pixels.length; x++) {
      if (blue(reg.pixels[x]) == blue(mod.pixels[x])) {
        compared.pixels[x] = reg.pixels[x];
      } else {
        compared.pixels[x] = color(225);
      }
    }
    compared.updatePixels();
    image(compared, 0, 0);
    text("DIFF blue on image", 800, 500);
  } else if (i == 9) {
    fill(0);
    textSize(30);
    for (int x = 0; x < reg.pixels.length; x++) {
      if (green(reg.pixels[x]) == green(mod.pixels[x])) {
        compared.pixels[x] = reg.pixels[x];
      } else {
        compared.pixels[x] = color(225);
      }
    }
    compared.updatePixels();
    image(compared, 0, 0);
    text("DIFF green on image", 800, 500);
  }
}
void keyReleased() {
  if (key == ' ') {
    if (i < 10)
      diff(i++);
    else {
      i = 0;
      diff(i++);
    }
  }
  if (key == 'r') {
    if (j < 9) {
      show_red_bitplane(j++);
    } else {
      j = 0;
      show_red_bitplane(j++);
    }
  }
  if (key == 'g') {
    if (j < 9) {
      show_green_bitplane(j++);
    } else {
      j = 0;
      show_green_bitplane(j++);
    }
  }
  if (key == 'b') {
    if (j < 9) {
      show_blue_bitplane(j++);
    } else {
      j = 0;
      show_blue_bitplane(j++);
    }
  }
}
