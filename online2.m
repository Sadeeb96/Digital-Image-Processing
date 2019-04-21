g=imread('C:\Users\Student\Desktop\DIP Lab 3\Noise Filtering-Images\coins.png');
h=g;
[M,N]=size(h);
t=1:256;
n=0:255;
count=0;
n=0:255;
Nk=zeros(256);

for i=1:M
    for j=1:N
        x=Nk(h(i,j))+1;
        Nk(h(i,j))=x;
    end
end
figure;
plot(n,Nk);
grid on;
ylabel('no. of pixels');
xlabel('intensity');
title('Histogram of image 1');

Pk=zeros(256);
for i=1:256
    Pk(i)=Nk(i)/(M*N);
end

CDF =zeros(256);
for i=2:256
    CDF(i)=CDF(i-1)+Pk(i);
end
figure;
plot(n,CDF);
grid on;
ylabel('no. of pixels');
xlabel('intensity');
title('CDF');

Pk2=zeros(257);
P2(1:49)=9/6250;
P2(50:99)=9/6250;
P2(100:149)=27/6250;
P2(150:199)=18/3125;
P2(200:255)=0.005;

CDF2 =zeros(256);
for i=2:255
    CDF2(i)=CDF2(i-1)+P2(i);
end
M=zeros(256,1,'uint8');
cdf1=CDF(1:256,1);
cdf2=CDF2(1:256,1);
for idx=1:256
    diff=abs(cdf1(idx)-cdf2);
    [~,ind]=min(diff);
    M(idx)=ind-1;
end
out =M(double(h));
imshow(out);

h=out;
[M,N]=size(h);
t=1:256;
n=0:255;
count=0;
n=0:255;
Nk=zeros(256);

for i=1:M
    for j=1:N
        x=Nk(h(i,j)+1)+1;
        Nk(h(i,j)+1)=x;
    end
end
figure;
plot(n,Nk);
grid on;
ylabel('no. of pixels');
xlabel('intensity');
title('Histogram of result image');
    


