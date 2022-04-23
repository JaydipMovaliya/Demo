clc
clear all

% read input iname usin imread() function
img = imread('Images\Jaydip.jpg');

% convert rgb image to gray scale image
img = rgb2gray(img);

%find number of rows and column of matrix of image
[row,col] = size(img);

% Take shrinking factor from user
Z = input('Enter the Shrinking Factor = ');


% first we zoom image 
for i=1:row
    for j = 1:col
        for k = 1:Z
            zoomedImg((i-1)*Z+k,(j-1)*Z+k) = img(i,j);
        end
    end
end

% Now we shrink thezoomed image
for i=1:row
    for j = 1:col
        for k = 1:Z
            shrinkedImg(i,j) = zoomedImg((i-1)*Z+k,(j-1)*Z+k);
        end
    end
end


%Display input and output images in plot
subplot(1,2,1);imshow(zoomedImg);title('Input Image')
subplot(1,2,2);imshow(shrinkedImg);title('Output Image')
        