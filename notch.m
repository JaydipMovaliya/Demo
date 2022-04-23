clc
clear all

% read input image using imread() function
inImg = imread('Images\e14.tif');


[m,n] = size(inImg);

% 2d fourier transformation
f = fftshift(fft2(inImg));

% Defining the filter
H = ones(m,n);
H(uint8(m/2),uint8(n/2)) = 0;

% Appling notch filter
nf = H.*f;

% inverse 2d fourier transformation
outImg = abs(ifft2(nf));


%Display input and output images in plot
subplot(1,2,1);imshow(inImg);title('Input Image');
subplot(1,2,2);imshow(uint8(outImg));title('Output of notch filter');