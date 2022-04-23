clc
clear all

% read input image using imread() function
inImg = imread('Images\e15.tif');

% appling min Filter of size 3*3
f = ones(3,3);
outImg = ordfilt2(inImg,1,f);

%Display input and output images in plot
subplot(1,2,1);imshow(inImg);title('Input Image');
subplot(1,2,2);imshow(outImg);title('After Appling Min Filter');