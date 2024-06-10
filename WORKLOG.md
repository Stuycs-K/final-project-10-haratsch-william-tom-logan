# Work Log

## William Haratsch

### May 22nd

Completed Project Outline Draft.

### May 28th
Planned out the utilization of layered noise maps, and fractals as a noise map.

### May 29th
Planned out implementation of BPCS steganography in Processing.

### May 30th
Wrote code for the modifyImageBPCS() method. It iterates through the pixels, checking for complexity. If the complexity is below a certain threshhold, the data will be written into the pixel.

At home: completed a simpler implementation of the modifyImageBPCS() method. Will then complexify the implementation/add use cases.

### June 5th
Rewrote the modifyImageBPCS() method, comparing the pixel before the pixel in question, the pixel after the pixel in question, and the pixel in question itself to determine whether to add the data to the pixel's channels. Tested an LSB implementation with red channel first, and then expanded it to all channels.

### June 7th
Added complexity algorithm, which calculates entropy values for each bit plane of each pixel. This will then be used to determine whether a bitplane is complex enough to store data.

### June 8th
Integrated the complexity algorithm with the modifyImageBPCS() method. modifyImageBPCS() now takes into account entropy of each bit plane within a block of the image using a predetermined mathematical formula to come up with an entropy value between 0 and 1, rather than simply checking if pixels are identical. 

* Logs are copied from William's branch

## Logan Tom

### May 23rd

Did research on perlin noise and thought about how to implement

### May 24th

Created simple implementations for noise to test difficulty of implementation and proof of concept

### May 28th
Discussed and determined how to complexify the algorithm

### May 29th 
Researched BPCS and talked about how to implement

### May 30th
Implement noise map into data encryption and theorized BPCS implementation

### June 3rd
Worked on functionality and presentation

### June 7th
Added bitplane viewing

### June 9th 
Worked on presentation and readme
