
## Group Info
Group members: William Haratsch and Logan Tom

Team Name: Logan's Will I am

## Overview
We implemented two Image Steganography encoding schemes. The first involves the utilization of a noise map to the hide the data in seemingly randomized locations throughout the image. The second encoding scheme we implemented is BPCS-Steganography, where BPCS is short for Bit-plane Complexity Segmentation. General information on BPCS-Steganography can be found [here](https://en.wikipedia.org/wiki/BPCS-steganography). A research paper detailing one of the first implementations of BPCS-Steganography can be found [here](https://citeseerx.ist.psu.edu/document?repid=rep1&type=pdf&doi=b701dfd8d262a64926ed05b6a29207fa3078116f).

Presentation link: https://github.com/Stuycs-K/final-project-10-haratsch-william-tom-logan/blob/main/PRESENTATION.md 

Video link: https://drive.google.com/file/d/12jblgbURnfogcX1eSsbnAQ5lsepJqLp2/view?usp=drive_link 

The video is 13:07 minutes long. Note that certain portions of the video had to be rerecorded due to missing audio in the original screen recordings.

### Disclaimer
We were not able to fully implement the decode due to its unexpected complexity and difficulty to implement. Due to how BPCS works it is not as easy to reverse the encoding as the complexity values after the data has been added are changed and there is no stored previous complexity value to go off of.
## Instructions
To run our project in the terminal you must have Processing installed and you must edit the `bashrc` file to allow Processing to be run from the terminal. The code for which is below (Note: these commands must be run on the terminal/command line).

Open the `bashrc` file in a text editor:
```
nano ~/.bashrc
```
Copy the following line of code to the end of the `bashrc` file:
```
export PATH=$PATH:[PATH-TO-PROCESSING-APPLICATION] 
```
Close the text editor and enter the following commands on the terminal:
```
source ~/.bashrc
processing-java --version
```
If done correctly, `processing-java --version` will list the version details of `processing-java`.

To run the project:
```
//Enter sketch directory
cd ~/(Insert the path to your sketch directory)/(Insert your sketch directory)
//To run with arguments
processing-java --sketch=/path/to/your/sketch --run --args arg0 arg1 arg2 arg3 arg4
```
`arg0` is the size of each block within the image (Must be integer value greater than 1 and factor of 1200). Larger block size = less image blocks.

`arg1` is the threshold value for embedding data (Integer value in range from 0 to 1).

`arg2` is the name of the file being embedded. No quotation marks.

`arg3` is an integer value determining whether or not to print a snippet of the entropy values for each bitplane. 0 being don't print and 1 being print.

`arg4` is the maximum bit plane in which data will be embedded (Integer value in range from 1 to 8).

Note: make sure the sketch and directory have the same name.
