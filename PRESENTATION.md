# BPCS 
## Bit planes
A bit plane is essentially one eighth of the image where you take off each bit using the 0 or 1 value for black and white and creating an image off those values. If the red value is 01100100 the bit plane values for this is
First: 0
Second: 1
Third: 1
Fourth: 0
Fifth: 0
Sixth: 1
Seventh: 0
Eighth: 0
and each plane is made up of these values for the color instead of the original 01100100. 
Below is a visual example
![Here is an image example](https://upload.wikimedia.org/wikipedia/commons/4/48/Lichtenstein_bitplanes.png)
As you can see in the example, the lower the bitplane number the more impact on the image and thus resembles the image more. The last few bit planes only add one to the colors so they appear more like noise and are random.
## How do we use them
The algorithm we used for this project is bit-plane complexity segmentation steganography (BPCS Steganography) and added noise maps to further encrypt our data. 
Essentially what BPCS steganography does is check each pixel and compare its color to its surrounding neighbors, computing a complexity value. If the pixel is complex enough the code marks it as elligible to store data and stores the data inside the pixel. This is because the change would not seem as drastic and would be harder to notice. Due to the way our brains see things changing complex sections of bit planes allows us to store more data within images compared to LSB only being able to alter 1/8th of each pixel.

# Noise Map encryption
Noise maps are functions which generate seemingly random values consistently given a seed. This lets us enocde and decode our data based off certain noise values. The encode algorithm should be something reversible given a key which the noise map generates for each pixel. We used a simple XOR function at first to do so. To solve the issue of not knowing the seed we stored the noise map seed in the first few pixels of the image. 
Below is an image of a noise map  
![ppp](https://blog.demofox.org/wp-content/uploads/2021/04/perlin_8.png)  
While this image seems very random it is actually replicable and with the correct seed the exact map is recreated.
# Our Project
Our project uses both BPCS steganography and Noise maps to encrypt data and saves it in an image file of your choosing. This data can be extracted and either printed or saved as an image. 
## Modifying images
Using the modify image method and passing the image to be modified, data(as file or String), and the noise map seed will convert the data into an array which is to be encrypted
Then it encrypts the data using the seed and stores the data in the image using BPCS.
What the user will see is a screen of the modified image. Then pressing space will allow you to go through the image checking the different pixels and either highlighting them or showing them as a black and white screen.
The modified image will be stored in modifiedImage.jpg and can be accessed there. 
You are also able to use r g and b to view the bit planes of those colors and try to see how much they were altered and where they were altered through the steganography
## Decoding images
To decode an image you have to give the modified file and whether or not the data was a file or string
This will either print a string in the terminal or save the encrypted image as a file


