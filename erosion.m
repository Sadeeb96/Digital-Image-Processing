function output = erosion( h )

[M,N] = size(h);
out = zeros(M,N);
for i=5:M-4
    for j=5:N-4
        x=0
       if(h(i-2,j)==255)
            x=x+1;
        end
        
        if(h(i-1,j-1)==255)
            x=x+1;
        end
        if(h(i-1,j)==255)
            x=x+1;
        end
        if(h(i-1,j+1)==255)
            x=x+1;
        end
        
        
     
        if(h(i,j-2)==255)
            x=x+1;
        end
        if(h(i,j-1)==255)
            x=x+1;
        end
        if(h(i,j)==255)
            x=x+1;
        end
        if(h(i,j+1)==255)
            x=x+1;
        end
        if(h(i,j+2)==255)
            x=x+1;
        end
        if(h(i+1,j-1)==255)
            x=x+1;
        end
        if(h(i+1,j)==255)
            x=x+1;
        end
        if(h(i+1,j+2)==255)
            x=x+1;
        end
        if(h(i+2,j)==255)
            x=x+1;
        end
        
        if(x==13)
            out(i,j)=255;
        else
            out(i,j)=0;
        end
    end
end
output=out;



end

