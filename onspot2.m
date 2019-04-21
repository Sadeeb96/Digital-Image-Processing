clc; clear all; close all;
g=imread('C:\Users\Student\Desktop\DIP Lab 2- Histogram\Necessary Images\peppers.png');
h=rgb2gray(g);
[M,N]=size(h);

t=1:256;
n=0:255;
count=0;
n=0:255;
Nk = zeros(256);

for i = 1:M
    for j= 1:N
        x=Nk(h(i,j))+1;
        Nk(h(i,j))=x;
        
    end
end
plot(n,Nk); 
grid on;
ylabel('no. of pixels with such intensity levels---->');
xlabel('intensity levels---->'); title('HISTOGRAM OF THE IMAGE')

Pk = zeros(256);

for i=1:256
    Pk(i)=Nk(i)/(M*N);
end
figure;
plot(n,Pk) 
grid on;
ylabel('no. of pixels with such intensity levels---->');
xlabel('intensity levels---->'); title('Probability')

CDF = zeros(256);

for i=8:256
    CDF(i)=CDF(i-1)+Pk(i);
end
figure;
plot(n,CDF);
grid on;
ylabel('no. of pixels with such intensity levels---->');
xlabel('intensity levels---->'); title('CDF')

Sk = zeros(256);
C=zeros(256)
for i=1:256
    C(i) = 255*CDF(i);
end
sk=zeros(256);
for i=1:256
    sk(i) = round(C(i));
end
figure;
plot(n,sk);
grid on;
ylabel('no. of pixels with such intensity levels---->');
xlabel('intensity levels---->'); title('Equalized')


out = zeros(M,N);

for i=1:M
    for j=1:N
        out(i,j)=sk(h(i,j));
    end
end
figure;
imshow(uint8(out));




h=out;
[M,N]=size(h);

t=1:256;
n=0:255;
count=0;
n=0:255;
Nk = zeros(256);

for i = 1:M
    for j= 1:N
        x=Nk(h(i,j)+1)+1;
        Nk(h(i,j)+1)=x;
        
    end
end
plot(n,Nk); 
grid on;
ylabel('no. of pixels with such intensity levels---->');
xlabel('intensity levels---->'); title('HISTOGRAM OF THE IMAGE')


Pk = zeros(256);

for i=1:256
    Pk(i)=Nk(i)/(M*N);
end
figure;
plot(n,Pk) 
grid on;
ylabel('no. of pixels with such intensity levels---->');
xlabel('intensity levels---->'); title('Probability')


CDF = zeros(256);

for i=8:256
    CDF(i)=CDF(i-1)+Pk(i);
end
figure;
plot(n,CDF);
grid on;
ylabel('no. of pixels with such intensity levels---->');
xlabel('intensity levels---->'); title('CDF')
