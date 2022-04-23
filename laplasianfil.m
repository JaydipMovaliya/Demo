clc
clear all

% read input image using imread() function
inImg = imread('Images\e16.tif');

% intialize laplasian filter
f = [0 1 0; 1 -4 1; 0 1 0];

% Apply laplacian filter
outImg = imfilter(inImg,f);

% make sharp image of it
sharpImg = imsubtract(inImg,outImg);

%Display input and output images in plot
subplot(1,3,1);imshow(inImg);title('Input Image');
subplot(1,3,2);imshow(outImg);title('After Appling Laplacian filter');
subplot(1,3,3);imshow(sharpImg);title('Sharpened Image of input image');