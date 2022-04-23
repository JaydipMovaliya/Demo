clc
clear all

% read input iname usin imread() function
inImg = imread('Images\Jaydip.jpg');

inImg=rgb2gray(inImg);
subplot(2,2,1);imshow(inImg);title('Input Image')

[x,y]=size(inImg);

r1=input('enter value r1: ');
r2=input('enter value r2: ');
   for i=1:1:x
        for j=1:1:y
            if inImg(i,j)>=r1 && inImg(i,j)<=r2
                outImg1(i,j)=255;
               outImg2(i,j)=255;
            else
                outImg1(i,j)=inImg(i,j);
               outImg2(i,j)=0;
            end
        end
   end    


% s1=uint8(s);
subplot(2,2,2);imshow(outImg1);title('Output Image 1')
subplot(2,2,3);imshow(outImg2);title('Output Image 2')