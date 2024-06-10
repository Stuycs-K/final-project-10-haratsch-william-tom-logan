import java.util.Arrays;
int LINEAR = 0;
int SELECTIVE = 1;
int FILE = 2;
int NOISE = 3;
int MODE = LINEAR;
int fileSize = 125208;
int NOISE_SEED = 8;


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
  String messageToEncode = "hiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgd bans bvdqjdasi dhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgdhiidsjaoijdwaojdojsdlajsdiqjwdasdlkjqwoudhqwouhdaiushdoiuhlkjhawsiuyhdawibndawiuhdajhsdkjasbdiuawhgdwajbdawjhgd";
  parts = messageToArray(messageToEncode);
  //}
  //3. Write the MODIFY method.
  modifyImage(img, parts);
  ////save the modified image to disk.
  img.save("modifiedCat.png");
  //diff(0);
  show_red_bitplane(0);
  //image(img, 0, 0);
  // decode
  if (MODE == LINEAR|| MODE == SELECTIVE) {
    //print(MODE);
    //println(decode(toDecode));
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
//new work
int[] XORData(int[] data, int seed) {
  noiseSeed(seed);
  int[] encrypted = new int[data.length];
  for (int i = 0; i < data.length; i++) {
    encrypted[i] = (int)(noise(i)*250) | data[i];
  }


  return encrypted;
}
int[] deXORData(int[] encrypted, int seed) {
  noiseSeed(seed);
  int[] decrypted = new int[encrypted.length];
  for (int i = 0; i < encrypted.length; i++) {
    decrypted[i] = (int)(noise(i)*250) | encrypted[i];
  }
  return decrypted;
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
//void decodeNoise(PImage img) {
//  println("decoding");
//  String returns = "";
//  int[] parts = new int[img.pixels.length];
//  //extract seed from image
//  img.loadPixels();
//  String seed_binary = "";
//  for (int i = 0; i < 32; i++) {
//    seed_binary += (int)red(img.pixels[i]) % 2;
//  }
//  int seed = Integer.parseInt(seed_binary, 2);
//  noiseSeed(seed);
//  //use noise to get string out
//  for (int i = 32; i < 23636; i++) {
//    float val = noise(i);
//    if (val > .6) {
//      parts[i - 32] = (int)red(img.pixels[i]) % 4;
//    }
//    if (val > .5) {
//      parts[i - 32] = (int)blue(img.pixels[i]) % 4;
//    }
//    if (val > 0) {
//      parts[i - 32] = (int)green(img.pixels[i]) % 4;
//    }
//    //if (i >= 35 && parts[i - 35] == 3 && parts[i - 34] == 3 && parts[i - 33] == 3 && parts[i - 32] == 3) {
//    //  int terminationIndex = i - 3;
//    //  int[] truncatedMsgArray = Arrays.copyOf(parts, terminationIndex);
//    //  parts = truncatedMsgArray;
//    //  break;
//    //}
//  }

//  //turn int array into binary string
//  String bin = "";
//  for (int i = 0; i < parts.length; i++) {
//    if (parts[i] == 0) bin += "00";
//    if (parts[i] == 1) bin += "01";
//    if (parts[i] == 2) bin += "10";
//    if (parts[i] == 3) bin += "11";
//  }
//  //binary string to String
//  //for (int i = 0; i < bin.length(); i += 8) {
//  //  String temp = bin.substring(i, i + 8);
//  //  char letter = (char) Integer.parseInt(temp, 2);
//  //  returns += letter;
//  //}
//  print(returns);
//}



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
    for (int i = 0; i < messageArray.length + 32; i++) {
      color tmp = img.pixels[i];
      float red_val = red(tmp);
      float blue_val = blue(tmp);
      float green_val = green(tmp);
      if (i < 32) {
        float new_red = red_val - red_val % 2 + bin_seed[i];
        color c = color(new_red, green(tmp), blue(tmp));
        img.pixels[i] = c;
      } else if (noise(i) > .6) {
        float new_red = red_val - red_val % 4 + messageArray[i - 32];
        color c =color(new_red, green_val, blue_val);
        img.pixels[i] = c;
      } else if (noise(i) > .5) {
        float new_blue = blue_val - blue_val % 4 + messageArray[i - 32];
        color c =color(red_val, green_val, new_blue);
        img.pixels[i] = c;
      } else if (noise(i) > 0) {
        float new_green = green_val - green_val % 4 + messageArray[i- 32];
        color c =color(red_val, new_green, blue_val);
        img.pixels[i] = c;
      }
    }
    // store terminating thingy
    for (int i = messageArray.length; i < messageArray.length + 4; i++) {
      color tmp = img.pixels[i];
      float red_val = red(tmp);
      float new_red = red_val - red_val % 4 + 3;
      img.pixels[i] = color(new_red, green(tmp), blue(tmp));
    }
  }

  //write the pixel array back to the image.
  img.updatePixels();
}
