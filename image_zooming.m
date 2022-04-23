clc
clear all

% read input iname usin imread() function
img = imread('Images\Jaydip.jpg');

% convert rgb image to gray scale image
img = rgb2gray(img);

%find number of rows and column of matrix of image
[row,col] = size(img);

% Take Zooming factor from user
Z = input('Enter the Zooming Factor = ');


% Apply image zooming using image replication method
for i=1:row
    for j = 1:col
        for k = 1:Z
            outImg((i-1)*Z+k,(j-1)*Z+k) = img(i,j);
        end
    end
end

%Display input and output images in plot
subplot(1,2,1);imshow(img);title('Input Image')
subplot(1,2,2);imshow(outImg);title('Output Image')
        