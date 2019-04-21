clc;
close all;
clear all;

g=imread('C:\Users\User\Desktop\DIP Lab 2- Histogram_3\DIP Lab 2- Histogram\Necessary Images\circbw.tif');
h=g;
imshow(h);
figure;
[M,N] = size(h);
out = zeros(M,N);
for i=2:M-1
    for j=2:N-1
        x=0
        if(h(i-1,j-1)==1)
            x=x+1;
        end
        
        if (h(i-1,j)==1)
            x=x+1;
        end
        
        if (h(i-1,j+1)==1)
            x=x+1;
        end
        
        if (h(i,j-1)==1)
            x=x+1;
        end
        
        if (h(i,j)==1)
            x=x+1;
        end
        
        if (h(i+1,j)==1)
            x=x+1;
        end
        
        if(x==6)
            out(i,j)=255;
        else
            out(i,j)=0;
        end
    end
end
imshow(out);
