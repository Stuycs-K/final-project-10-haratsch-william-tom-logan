[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/ecp4su41)
# THIS DOCUMENT IS REQUIRED
## Group Info
Group members: William Haratsch and Logan Tom
Creative Team Name: Still Deciding

## Overview
Project layout:
    - Two aspects
        - (1) Image Steganography using a noise map
        - (2) Image Steganography using fractals such as the Mandelbrot Set
    Option 1:
        - Easier and simpler to implement. More freedom. 
        - Modify each pixel by a random number in the range of [0, 1] (may modify range later). 
        - A random seed will determine how each pixel is modified. This random seed will serve as the key.
        - First, use the least significant bit method to encode the data into the noise map. Then, encode the filled noise map into the image (?). 
    Option 2:
        - Essentially a more complicated version of Option 1. Uses a fractal as a noise map, and is used as a key for the encrypted data. 
        - Steps: The fractal image is converted to a binary array, and the least significant bit method is used to encode the data into the fractal binary array. Then the filled fractal is embedded into the original image.
        - The challenging part of this is embedding the filled fractal into the original image, as it requires complicated algorithms.

## Instructions
