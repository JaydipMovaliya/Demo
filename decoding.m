close all;
clc;
clear all;

load("prac5Comp.mat");

row = rle(1);
col = rle(2);

outImg = zeros(row, col);

Intensity = rle(3);

count = rle(4);

k = 3;

[x,y] = size(rle);

for j = 1:col
    for i = 1:row
        outImg(i,j) = Intensity;
        count = count - 1;
        if count == 0
            k = k+2;
            if k > y
                break;
            end
            Intensity = rle(k);
            count = rle(k+1);
        end
    end
end

outImg = uint8(outImg);
subplot(1,2,1),imshow(inImg),title("Input");
subplot(1,2,2),imshow(outImg),title("Output");


