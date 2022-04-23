clc
clear all

% read input image using imread() function
inImg = imread('Images\e14.tif');

% appling box filter size of 3*3
f = [1 1 1; 1 1 1; 1 1 1]/9;
outImg = imfilter(inImg , f);


%Display input and output images in plot
subplot(1,2,1);imshow(inImg);title('Input Image of Box Filter');
subplot(1,2,2);imshow(outImg);title('Output of Box filter');