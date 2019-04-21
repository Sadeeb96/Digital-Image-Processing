

close all;
clc;
img=imread('C:\Users\User\Desktop\DIP Lab 2- Histogram_3\DIP Lab 2- Histogram\Necessary Images\cameraman.tif');
B=img;

[M,N]=size(B);
out = zeros(M,N)
out2=zeros(M,N)
for i=2:M-1
    for j=2:N-1
        out(i,j) = (B(i-1,j+1)-B(i-1,j-1)+(2*B(i,j+1))-(2*B(i,j-1))+B(i+1,j+1)-B(i+1,j-1));
        out2(i,j)=B(i-1,j-1)+(2*B(i-1,j))+B(i-1,j+1)-B(i+1,j-1)-(2*B(i+1,j))-B(i+1,j+1);
    end
end

out=out.^2
out2=out2.^2
out=out+out2
out=sqrt(out)


imshow(uint8(out))
figure;
        