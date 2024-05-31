[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/ecp4su41)
# THIS DOCUMENT IS REQUIRED
## Group Info
Group members: William Haratsch and Logan Tom
Creative Team Name: Still Deciding

## Overview
Project layout:
    - Two aspects
<<<<<<< HEAD
        - (1) Image Steganography using a noise map for encrpytion and complexity tests to figure out where to store data


        - Modify data using noise map to further encrypt the data 
        - Check bitplane one and create changes to bits based on calculated complexity
        - First, use the least significant bit method to encode the data into the lowest bitplane. Then, combine the bit planes and get a new image. 
=======
        - (1) Image Steganography using a noise map and BPCS 
    Option 1:
        - Easier and simpler to implement. More freedom. 
        - Use surrounding pixels to determine complexity of a pixel
        - if pixel is within complexity threshold (changing it wont change visibly) input data into pixel
        - Use random seed of perlin noise map to further encrypt the data
>>>>>>> Logans

## Instructions
