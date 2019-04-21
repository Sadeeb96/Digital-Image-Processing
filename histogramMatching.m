clc; clear all; close all;
g=imread('C:\Users\User\Desktop\DIP Lab 2- Histogram_3\DIP Lab 2- Histogram\Necessary Images\cameraman.tif');
h=g;
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
xlabel('intensity levels---->'); title('HISTOGRAM OF THE Coins IMAGE')

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

for i=2:256
    CDF(i)=CDF(i-1)+Pk(i);
end
figure;
plot(n,CDF);
grid on;
ylabel('no. of pixels with such intensity levels---->');
xlabel('intensity levels---->'); title('CDF')




%%%%%%%second image


g2=imread('C:\Users\User\Desktop\DIP Lab 2- Histogram_3\DIP Lab 2- Histogram\Necessary Images\circuit.tif');
h2=g2;
[M2,N2]=size(h2);

t2=1:256;
n2=0:255;
count2=0;
n2=0:255;
Nk2 = zeros(256);

for i = 1:M2
    for j= 1:N2
        x2=Nk2(h2(i,j))+1;
        Nk2(h2(i,j))=x2;
        
    end
end
plot(n2,Nk2); 
grid on;
ylabel('no. of pixels with such intensity levels---->');
xlabel('intensity levels---->'); title('HISTOGRAM OF THE Peppers IMAGE')

Pk2 = zeros(256);

for i=1:256
    Pk2(i)=Nk2(i)/(M2*N2);
end
figure;
plot(n2,Pk2) 
grid on;
ylabel('no. of pixels with such intensity levels---->');
xlabel('intensity levels---->'); title('Probability')

CDF2 = zeros(256);

for i=2:256
    CDF2(i)=CDF2(i-1)+Pk2(i);
end





M = zeros(256,1,'uint8'); 



cdf1 = CDF(1:256,1); 
cdf2 = CDF2(1:256,1); 
 
for idx = 1 : 256
    diff = abs(cdf1(idx) - cdf2);
    [~,ind] = min(diff);
    M(idx) = ind-1;
end
out = M(double(h));
imshow(out);





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
xlabel('intensity levels---->'); title('HISTOGRAM OF THE Matched IMAGE')