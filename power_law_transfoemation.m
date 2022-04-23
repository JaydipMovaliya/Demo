clc
clear all

% read input iname usin imread() function
inImg = imread('Images\e18.tif');

% s = c*r^G
% Here s = output image
%      G = gamma value
%      r = input image

%For c=1
%Apply formula for power law transformation
s1 = double(inImg).^1.2;
s2 = double(inImg).^1;
s3 = double(inImg).^0.8;

%Display input and output images in plot
subplot(2,2,1);imshow(inImg);title('Input Image')
subplot(2,2,2);imshow(uint8(s1));title('Output Image for G=1.2 (>1)')
subplot(2,2,3);imshow(uint8(s2));title('Output Image for G=1')
subplot(2,2,4);imshow(uint8(s3));title('Output Image for G=0.8 (<1)')
        