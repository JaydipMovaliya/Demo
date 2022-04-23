clc;
clear all;

% read input image using imread() function
inImg = imread('Images\e25.tif');

%appling image restoration using Median filter
outImg = medfilt2(inImg);

subplot(3,2,1), imshow(inImg), title('Input Image');

%ploting histogram of input image
subplot(3,2,2), imhist(inImg), title('Input Image Histogram');
  
subplot(3,2,3), imshow(outImg), title('Image Restoration using Median Filter');

%ploting histogram of output image
subplot(3,2,4), imhist(outImg), title('Output Image Histogram'); 
