import java.util.Arrays;
int LINEAR = 0;
int SELECTIVE = 1;
int FILE = 2;
int NOISE = 3;
int MODE = LINEAR;
int fileSize = 125208;
int NOISE_SEED = 0;


//Note: for code that runs one time place all code in setup.
void setup() {
  size(1200, 600);
  //0. If you want to change the size to display the image you can print the dimensions here:
  //println(img.width,img.height);
  int[]parts;
  MODE=NOISE;
  //1. Add the cat.png file to the sketch before running.
  PImage img = loadImage("cat.png");
  PImage toDecode = loadImage("catWithMessage.png");
  PImage toExtract = loadImage("russ.hidden.png");
  //2. Write the MESSAGETOARRAY method
  //convert the string into an array of ints in the range 0-3
  //if (MODE== FILE) {
  //  parts=fileToArray("inputdata.png");
  //} else {
    String messageToEncode = "saoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawlidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawlidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawlidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawlidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawlidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawlidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawlidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawlidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawlidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawlidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawlidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawlidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawlidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawlidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawlidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawlidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawlidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawlidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawlidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlawsaoidjaoijdliajdljaslkdajsldjas lidajslidjasldjasldajlidwqujldjaslidjalwidjawljdlajdlaw";
    parts = messageToArray(messageToEncode);
  //}
  //3. Write the MODIFY method.
  modifyImage(img, parts);
  ////save the modified image to disk.
  img.save("modifiedCat.png");
  diff(0);
  //image(img, 0, 0);
  // decode
  if (MODE == LINEAR|| MODE == SELECTIVE) {
    println(decode(toDecode));
  } else {
    byte[] b = extractBytes(toExtract, fileSize);
    saveBytes("hiddenImage.png", b);
  }
}

int[] fileToArray(String filename) {
  byte[] b = loadBytes(filename);
  int[] parts = new int[b.length * 4];
  for (int i = 0; i < b.length; i ++) {
    //turn each byte into binary string
    String binaryString = String.format("%8s", (Integer.toBinaryString(b[i] & 0xFF))).replace(' ', '0');
    for (int j = 0; j < 8; j += 2) {
      //binary string to parts
      parts[i * 4 + j / 2] = Integer.parseInt(binaryString.substring(j, j +2));
    }
  }
  return parts;
}
int [] messageToArray(String s) {
  int[] parts = new int[(s.length() + 1) * 4];
  String binary = "";
  //turn array into character array
  char[] c = s.toCharArray();
  //turn characters into binary string
  for (char character : c) {
    binary += String.format("%8s", (Integer.toBinaryString(character))).replaceAll(" ", "0");
  }
  //loop through binary string and put int values into array
  for (int i = 0; i < binary.length(); i += 2) {
    int x = i/2;
    String curbit = binary.substring(i, i + 2);
    if (curbit.equals("11")) {
      parts[x] = 3;
    }
    if (curbit.equals("10")) {
      parts[x] = 2;
    }
    if (curbit.equals("01")) {
      parts[x] = 1;
    }
    if (curbit.equals("00")) {
      parts[x] = 0;
    }
  }
  for (int i = parts.length - 4; i < parts.length; i++) {
    parts[i] = 3;
  }
  return parts;
}
byte[] extractBytes(PImage img, int amtBytes) {
  img.loadPixels();

  byte[] decodedBytes = new byte[amtBytes];
  int bitIndex = 0;
  byte curByte = 0;

  // for every pixel, build up the byte 2 bits at a time
  for (int i = 0, j = 0; i < img.pixels.length && j < amtBytes; i++) {
    int redValue = (int) red(img.pixels[i]);
    //shift bit of value hidden in red to correct place
    curByte |= (redValue % 4) << (6 - bitIndex);
    bitIndex += 2;

    //if 8 bits gone through set next byte
    if (bitIndex == 8) {
      decodedBytes[j++] = curByte;
      curByte = 0;
      bitIndex = 0;
    }
  }

  return decodedBytes;
}
String decode(PImage img) {
  String returns = "";
  img.loadPixels();
  int[] msgArray = new int[img.pixels.length];
  //go through pixels
  for (int i = 0; i < img.pixels.length; i++) {
    int redValue = (int) red(img.pixels[i]);
    int message = redValue % 4;
    msgArray[i] = message;
    //stop loop after 4 3 in a row
    if (i >= 3 && msgArray[i - 3] == 3 && msgArray[i - 2] == 3 && msgArray[i - 1] == 3 && msgArray[i] == 3) {
      int terminationIndex = i - 3;
      int[] truncatedMsgArray = Arrays.copyOf(msgArray, terminationIndex);
      msgArray = truncatedMsgArray;
      break;
    }
  }
  //turn int array into binary string
  String bin = "";
  for (int i = 0; i < msgArray.length; i++) {
    if (msgArray[i] == 0) bin += "00";
    if (msgArray[i] == 1) bin += "01";
    if (msgArray[i] == 2) bin += "10";
    if (msgArray[i] == 3) bin += "11";
  }
  //binary string to String
  for (int i = 0; i < bin.length(); i += 8) {
    String temp = bin.substring(i, i + 8);
    char letter = (char) Integer.parseInt(temp, 2);
    returns += letter;
  }
  return returns;
}




void modifyImage(PImage img, int[]messageArray) {
  //load the image into an array of pixels.
  img.loadPixels();

  //You can use img.pixels[index] to access this array
  if (MODE == LINEAR) {
    //LINEAR mode :
    for (int i = 0; i < messageArray.length; i++) {
      color tmp = img.pixels[i];
      float red_val = red(tmp);
      float new_red = red_val - red_val % 4 + messageArray[i];
      color c =color(new_red, green(tmp), blue(tmp));
      img.pixels[i] = c;
      fill(tmp);
      ellipse(100, 100, 100, 100);
      fill(c);
      ellipse(200, 100, 100, 100);
    }
    //Loop over the pixels in order. For each pixel:
    //-Take one array value and write it to the red channel of the pixel.
    //-When there are no more letters, write a terminating character.
    //This means 4 pixels will store 1 char value from your String.
    //The terminating character is the value 255.
    //Note: (255 is 11111111b and 11b is just 3, make the termination
    //pixel store {3,3,3,3}
  } else if (MODE == NOISE) {
    //set seed of noise and turn the seed into an 8 bit binary to store in the image
    noiseSeed(NOISE_SEED);
    int temp_seed = NOISE_SEED;
    int[] bin_seed = new int[32];
    for (int j = 31; j > 0; j--) {
      bin_seed[j] = temp_seed % 2;
      temp_seed = temp_seed / 2;
    }
    for (int i = 0; i < messageArray.length; i++) {
      color tmp = img.pixels[i];
      float red_val = red(tmp);
      if (i < 8) {
        float new_red = red_val - red_val % 2 + bin_seed[i];
        color c = color(new_red, green(tmp), blue(tmp));
        img.pixels[i] = c;
      } else if (noise(i) > .5) {
        float new_red = red_val - red_val % 4 + messageArray[i];
        color c =color(new_red, green(tmp), blue(tmp));
        img.pixels[i] = c;
      }
    }
  }

  //write the pixel array back to the image.
  img.updatePixels();
}