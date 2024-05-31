# BPCS 
The algorithm we used for this project is bit-plane complexity segmentation steganography (BPCS Steganography) and added noise maps to further encrypt our data. 
Essentially what BPCS steganography does is check each pixel and compare its color to its surrounding neighbors, computing a complexity value. If the pixel is complex enough the code marks it as elligible to store data and stores the data inside the pixel. This is because the change would not seem as drastic and would be harder to notice. This algorithm lets you store more data within images compared to LSB.

# Noise Map encryption
Noise maps are functions which generate seemingly random values consistently given a seed. This lets us enocde and decode our data based off certain noise values. The encode algorithm should be something reversible given a key which the noise map generates for each pixel. We used a simple XOR function at first to do so. To solve the issue of not knowing the seed we stored the noise map seed in the first few pixels of the image. 
