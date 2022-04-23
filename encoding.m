clc
clear all;

inImg = imread("Images\prac5.bmp");

[row,col] = size(inImg);

rle = [];

rle(1) = row;
rle(2) = col;

Intensity = inImg(1,1);

k = 3;
count = 0;

for j = 1:col
    for i = 1:row
        
        if inImg(i,j) == Intensity
            count = count + 1;
        else
            rle(k) = Intensity;
            Intensity = inImg(i,j);
            rle(k+1) = count;
            count = 1;
            k = k+2;
        end
    end
end

rle(k) = Intensity;
rle(k+1) = count;

save("prac5Comp");

