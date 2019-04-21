clc;
close all;
clear all;

g=imread('C:\Users\Student\Desktop\DIP Lab 5\Necessary Images\stars.jpg');
h=im2bw(g);
imshow(h);
figure;


out=dilation(h);

h=out;
out2=erosion(h);
imshow(out2);
figure;

out3=h-out2;
imshow(out3);