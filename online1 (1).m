I = imread('peppers_color.jpg');
figure;
imshow(I);

[row, col,ch] = size(I);
K = uint8(ones(row, col,ch));
for i = 1:row 
    for j = 1:col 
        K(i,j,1) = 255-I(i,j,1);
        K(i,j,2) = 255-I(i,j,2);
        K(i,j,3) = 255-I(i,j,3);
    end 
end
figure;
imshow(K);
