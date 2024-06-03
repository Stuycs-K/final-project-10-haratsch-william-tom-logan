# BPCS 
The algorithm we used for this project is bit-plane complexity segmentation steganography (BPCS Steganography) and added noise maps to further encrypt our data. 
Essentially what BPCS steganography does is check each pixel and compare its color to its surrounding neighbors, computing a complexity value. If the pixel is complex enough the code marks it as elligible to store data and stores the data inside the pixel. This is because the change would not seem as drastic and would be harder to notice. This algorithm lets you store more data within images compared to LSB.

# Noise Map encryption
Noise maps are functions which generate seemingly random values consistently given a seed. This lets us enocde and decode our data based off certain noise values. The encode algorithm should be something reversible given a key which the noise map generates for each pixel. We used a simple XOR function at first to do so. To solve the issue of not knowing the seed we stored the noise map seed in the first few pixels of the image. 

# Our Project
Our project uses both BPCS steganography and Noise maps to encrypt data and saves it in an image file of your choosing. This data can be extracted and either printed or saved as an image. 
## Modifying images
Using the modify image method and passing the image to be modified, data(as file or String), and the noise map seed will convert the data into an array which is to be encrypted
Then it encrypts the data using the seed and stores the data in the image using BPCS.
What the user will see is a screen of the modified image. Then pressing space will allow you to go through the image checking the different pixels and either highlighting them or showing them as a black and white screen.
The modified image will be stored in modifiedImage.jpg and can be accessed there.
## Decoding images
To decode an image you have to give the modified file and whether or not the data was a file or string
This will either print a string in the terminal or save the encrypted image as a file
