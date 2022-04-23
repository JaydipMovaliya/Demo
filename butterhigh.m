clc
clear all

% read input image using imread() function
inImg = imread('Images\e14.tif');


[m,n] = size(inImg);

% set cut-off frequency
cf = 90;

% 2d fourier transformation
f = fftshift(fft2(inImg));


N = 1;
p = round(m/2);
q = round(n/2);

% Defining the filter
H = zeros(m,n);
for i = 1:m
    for j = 1:n
        d = (i-p).^2 + (j-q).^2;
        
        if d~=0
             H(i,j) = 1/(1+((cf*cf/d).^(2*N)));
        end
    end
end

% Appling the Butterworth high pass filter
bhp = f.*H;

% inverse 2d fourier transformation
outImg = abs(ifft2(bhp));


%Display input and output images in plot

%Display input and output images in plot
subplot(1,2,1);imshow(inImg);title('Input Image');
subplot(1,2,2);imshow(uint8(outImg));title('Output of Butterworth high pass filter');