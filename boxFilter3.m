clc
clear all

% read input iname usin imread() function
inImg = imread('Images\Jaydip.jpg');

inImg = rgb2gray(inImg);
[x,y]=size(inImg);
for i = 2:x-1
    for j = 2:y-1
        sum = 0;
        for ii = i-1:i+1  
            for jj = j-1:j+1
                sum = sum + inImg(ii,jj);
            end
        end
        I2(i,j) = ceil(sum/9);
    end
end

subplot(1,2,1);imshow(inImg);title('Input Image')
subplot(1,2,2);imshow(I2);title('Output')