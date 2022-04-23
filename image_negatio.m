clc
clear all

% read input iname usin imread() function
Img = imread('Images\e7.tif');

%find number of rows and column of matrix of image
[row,col] = size(Img);

max = 0;


% s = (L-1)-r
% Here s = output image
%      L-1 = Maximimu pixel intensity of image
%      r = input image



% traverse loop to get maximum pixel intensity of image
for x=1:row
    for y=1:col
        if Img(x,y) > max
            max = Img(x,y);
        end
    end
end


% Apply formula
% here, r = Img and L-1 = max
s = max - Img;


%Display input and output images in plot
subplot(1,2,1);imshow(Img);title('Input Image')
subplot(1,2,2);imshow(s);title('Output Image')
        