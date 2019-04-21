clc;clear all;close all;
g=imread('C:\Users\Student\Desktop\DIP Lab 3\Noise Filtering-Images\cameraman.tif');
h=g;
h=imnoise(h,'salt & pepper', 0.2);
imshow(h);
[M,N]=size(h);
for i=2:M-1
    for j=2:N-1
        list = [h(i-1,j) h(i+1,j) h(i,j+1) h(i,j-1) h(i-1,j-1) h(i-1,j+1) h(i+1,j+1) h(i+1,j-1) h(i,j)];
        list=sort(list);
        h(i,j) = list(5);
        
    end
end
disp(list)
imshow(h);