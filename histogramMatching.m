clc
clear all

% read input image using imread() function
inImg1 = imread('Images\e12.tif');
inImg2 = imread('Images\e13.tif');

%Create matrix of 256*1 of all zeros
A = zeros(256,1,'uint8'); 

% Genrate histogram of both images
histImg1 = imhist(inImg1); 
histImg2 = imhist(inImg2);

% Calculate S for all no. of pixel of histogram
S1 = cumsum(histImg1) / numel(inImg1);
S2 = cumsum(histImg2) / numel(inImg2);


for i = 1 : 256
    [~,ind] = min(abs(S1(i) - S2));         %Calculate diff between each element of both image
    A(i) = ind-1;                           %Assign value to created matrix
end

%Genrate Output Image
outImg = A(double(inImg1)+1);

subplot(2,3,1),imshow(inImg1);title('Input Image-1');
subplot(2,3,2),imshow(inImg2);title('Input Image-2');
subplot(2,3,3),imshow(outImg);title('Histogram matched Image');
subplot(2,3,4),imhist(inImg1);title('Histogram of Image-1');
subplot(2,3,5),imhist(inImg2);title('Histogram of Image-2');
subplot(2,3,6),imhist(outImg);title('Histogram of matched image');