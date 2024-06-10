
## Group Info
Group members: William Haratsch and Logan Tom

Team Name: Logan's Will, I am

## Overview
Project layout:\
    - Two aspects
        - (1) Image Steganography using a noise map for encrpytion and BPCS complexity tests to figure out where to store data\
        - First our program modifies data using noise map to further encrypt the data \
        - Then it uses bpcs to go through bitplanes, sectioning reigons into specific block sizes and create changes to bits based on the  calculated complexity of those blocks\
        - Then data is stored in the blocks 
Presentation link: FOO
Video link: FOO
### Disclaimer
We were not able to fully implement the decode due to some 
## Instructions
To run our project in the terminal you have to update the bashrc file. The code for which is below\
```
nano ~/.bashrc
export PATH=$PATH:[PATH-TO-PROCESSING-APPLICATION] 
source ~/.bashrc
processing-java --version
```
Note: The export should go at the end of the bashrc file. 
To run the project:\
```
cd ~/Documents/Processing/(Insert your sketch directory)
processing-java --sketch=$(pwd) --run
//To run with arguments
processing-java --sketch=/path/to/your/sketch --run --args arg1 arg2 arg3
```
Note: make sure the sketch and directory have the same name.
