import java.util.Arrays;

int LINEAR = 0;
int SELECTIVE = 1;
int FILE = 2;
int DIFF = 3;
int BPCS_LINEAR = 4;
int BPCS_FILE = 5;
int MODE = BPCS_FILE;

//Note: for code that runs one time place all code in setup.
void setup() {
  size(1200, 600);
  //0. If you want to change the size to display the image you can print the dimensions here:
  
  //1. Add the cat.png file to the sketch before running.
  PImage img = loadImage("cat.png");
  println(img.width,img.height);
  //2. Write the MESSAGETOARRAY method
  //convert the string into an array of ints in the range 0-3
  int parts[];
  if(MODE == FILE){
    parts = fileToArray("OriginalGrumpy.png");
    println("Number of bytes:"+parts.length/4  );
    modifyImage(img, parts);
  }else if(MODE == BPCS_LINEAR){
     String messageToEncode = "This is a message encoded using LSBSteganography. There are two modes that can be selected. This text is getting longer but is just used to make more pixels different.";
     parts = messageToArray(messageToEncode);
     modifyImageBPCS(img, parts);
  }else if(MODE == BPCS_FILE){
    parts = fileToArray("OriginalGrumpy.png");
    println("Number of bytes:" + parts.length/4);
    modifyImageBPCS(img, parts);
  }
    else{
    String messageToEncode = "This is a message encoded using LSBSteganography. There are two modes that can be selected. This text is getting longer but is just used to make more pixels different.";
    parts = messageToArray(messageToEncode);
    modifyImage(img, parts);
  }
  /*
  println("message to array:\n");
  for(int part : parts){
    print(part);
  }
  */
  //3. Write the MODIFY method.
  //modifyImage(img, parts);
  //save the modified image to disk.
  img.save("modifiedCat.png");  
  diff(0);
  //println(imgTwo.width,imgTwo.height);
  }

int[] fileToArray(String filename) {
  byte[] b = loadBytes(filename);
  int[] parts = new int[b.length * 4];
  for (int i = 0; i < b.length; i++) {
    //0xFF is 0b11111111, ensures unsigned byte
    int unsignedByte = b[i] & 0xFF;
    parts[i * 4]     = (unsignedByte >> 6) & 0x03; 
    parts[i * 4 + 1] = (unsignedByte >> 4) & 0x03; 
    parts[i * 4 + 2] = (unsignedByte >> 2) & 0x03; 
    parts[i * 4 + 3] =  unsignedByte       & 0x03; 
  }
  return parts;
}

int [] messageToArray(String s) {
  int[]parts = new int[s.length() * 4]; //optionally include the terminating character here.
  char[] stringArray = s.toCharArray();
  String binaryString;
  int value;
  int index = 0;
  //calculate the array
  for(int i = 0; i < stringArray.length; i++){
    binaryString = String.format("%8s", Integer.toBinaryString(stringArray[i])).replace(' ', '0');
    for(int j = 0; j < 8; j += 2){
        String bits = binaryString.substring(j, j + 2);
        value = 0;
        if(bits.equals("00")){
           value = 0; 
        }
        else if(bits.equals("01")){
           value = 1; 
        }
        else if(bits.equals("10")){
           value = 2; 
        }
        else if(bits.equals("11")){
           value = 3; 
        }
        parts[index++] = value;
    }
  }
  /**Verify the contents of the array before you do more.
   'T' -> 01010100 -> 01 01 01 00 -> 1, 1, 1, 0
   'h' -> 01101000 -> 01 10 10 00 -> 1, 2, 2, 0
   'i' -> 01101001 -> 01 10 10 01 -> 1, 2, 2, 1
   's' -> 01110011 -> 01 11 00 11 -> 1, 3, 0, 3
   ...etc.
   So your data array would look like this:
   { 1, 1, 1, 0, 1, 2, 2, 0, 1, 2, 2, 1, 1, 3, 0, 3...}
   */
   /*
  print("Array before decode:\n");
  for(int k = 0; k < (s.length() * 4); k++){
    print(parts[k]);
  }
  */
  return parts;
}

void modifyImage(PImage img, int[]messageArray) {
  //load the image into an array of pixels.
  img.loadPixels();

  //You can use img.pixels[index] to access this array
  if (MODE == LINEAR || MODE == FILE) {
    //LINEAR mode :
    //Loop over the pixels in order. For each pixel:
    //-Take one array value and write it to the red channel of the pixel. 
    //-When there are no more letters, write a terminating character.
    //This means 4 pixels will store 1 char value from your String.
    //The terminating character is the value 255.
    //Note: (255 is 11111111b and 11b is just 3, make the termination 
    //pixel store {3,3,3,3}
     int index = 0;
     for(int i = 0; i < img.pixels.length; i++){
      if(index < messageArray.length){
        //0xff0000 is 0b111111110000000000000000
       //int red = (0xff0000 & img.pixels[i])>>16; 
       int red = (int) red(img.pixels[i]);
       //clears last two bits
       //0xFC is 0b11111100
       //red &= 0xFC;
       red = red / 4;
       red = red * 4;
       red |= messageArray[index];
       // 0xFF00FFFF is 0b11111111000000001111111111111111
       //img.pixels[i] = (img.pixels[i] | (red << 16));
       img.pixels[i] = color(red, green(img.pixels[i]), blue(img.pixels[i]));
       index++;
       } else{
         if(MODE != FILE){
           //add terminating character
          int red = (0xff0000 & img.pixels[i])>>16;
          //clears last two bits
          red = red / 4;
          red = red * 4;
          //0x03 is 0b11
          red |= 0x03;
          img.pixels[i] = (img.pixels[i] & 0x00ffff) | (red << 16);
         }
        }
       }
  } else if (MODE == SELECTIVE) {
    //SELECTIVE MODE:
    //when the red and green end in 00, modify the last 2 bits of blue with the bit value.
    //e.g.   if the pixel is r = 1100 ,g=1100 and blue=11xy, replace the xy in the blue with the next message value.
    //To terminate the message:
    //when no more message is left to encode, change all the remaining red values that end in 00 to 01.
    //This means the number of pixels that qualify for decoding will be a multiple of 4.
  }

  //write the pixel array back to the image.
  img.updatePixels();
}

void modifyImageBPCS(PImage img, int[] messageArray) {
    img.loadPixels();
    int index = 0; // Index for the messageArray
    color currentOldPixel;
    int redOldPixel;
    int greenOldPixel;
    int blueOldPixel;
    color currentNewPixel;
    int redNewPixel;
    int greenNewPixel;
    int blueNewPixel;
    for (int i = 0; i < img.pixels.length; i++) {
        // Only proceed if there is more message to encode
        if (index < messageArray.length) {
          if(i % img.pixels.length != 0 && i != (img.pixels.length - 1)){
              color currentPixel = img.pixels[i];
              int redPixel = (int) red(currentPixel);
              int greenPixel = (int) green(currentPixel);
              int bluePixel = (int) blue(currentPixel);
              currentOldPixel = img.pixels[i - 1];
              redOldPixel = (int) red(currentOldPixel);
              greenOldPixel = (int) green(currentOldPixel);
              blueOldPixel = (int) blue(currentOldPixel);
              currentNewPixel = img.pixels[i + 1];
              redNewPixel = (int) red(currentNewPixel);
              greenNewPixel = (int) green(currentNewPixel);
              blueNewPixel = (int) blue(currentNewPixel);
              if(redPixel != redOldPixel && redPixel != redNewPixel){
                // Modify the last two bits of the red channel
                redPixel = (redPixel & 0xFC) | messageArray[index]; // Clear the last two bits then OR with message bits
                index++;
                // Set the modified color back to the image
                img.pixels[i] = color(redPixel, greenPixel, bluePixel);
              }
              if(greenPixel != greenOldPixel && greenPixel != greenNewPixel){
                greenPixel = (greenPixel & 0xFC) | messageArray[index];
                index++;
                img.pixels[i] = color(redPixel, greenPixel, bluePixel);
              }
              if(bluePixel != blueOldPixel && bluePixel != blueNewPixel){
                bluePixel = (bluePixel & 0xFC) | messageArray[index];
                index++;
                img.pixels[i] = color(redPixel, greenPixel, bluePixel);
              }
          }
        }
    }
    img.updatePixels();
}
