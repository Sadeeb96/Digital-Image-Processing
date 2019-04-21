clc;clear all;close all;
g=imread('C:\Users\Student\Desktop\DIP Lab 3\Noise Filtering-Images\cameraman.tif');
h=g;
[M,N]=size(h);
out=zeros(size(h));
ma=0;
for i=1:M
    for j= 1:N
        if h(i,j)>ma
            ma=h(i,j);
        end
    end
end
       
for i=1:M
    for j=1:N
        out(i,j)=255-h(i,j);
    end
end
imshow(uint8(out))
