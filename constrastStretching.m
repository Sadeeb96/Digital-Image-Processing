clc; clear all; close all;
g=imread('C:\Users\User\Desktop\DIP Lab 2- Histogram_3\DIP Lab 2- Histogram\Necessary Images\circuit.tif');
imhist(g);
figure;
out = conStretch(g);
out=(uint8(out));
imhist(out);
figure;
imshow(out);



