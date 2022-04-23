clc
clear all

% read input iname usin imread() function
inImg = imread('Images\e8.tif');

img = im2double(inImg);

% s = c*log(1+r)
% Here s = output image
%      c = constant value
%      r = input image


%Apply formula for log transformation
% For 8 bit image we have to multiplie with 256
s1 = (1*log(1+img))*256;
s2 = (2*log(1+img))*256;
s3 = (3*log(1+img))*256;

%Display input and output images in plot
subplot(2,2,1);imshow(inImg);title('Input Image')
subplot(2,2,2);imshow(uint8(s1));title('Output Image for constant c=1')
subplot(2,2,3);imshow(uint8(s2));title('Output Image for constant c=2')
subplot(2,2,4);imshow(uint8(s3));title('Output Image for constant c=3')
        