clc
clear all

% read input image using imread() function
inImg = imread('Images\e14.tif');

% appling gradient filter
outImg = imgradient(inImg);

%Display input and output images in plot
subplot(1,2,1);imshow(inImg);title('Input Image');
subplot(1,2,2);imshow(outImg);title('After Appling gradient filter');