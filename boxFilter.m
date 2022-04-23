clc
clear all

% read input image using imread() function
inImg1 = imread('Images\e14.tif');



% 1) ------------Linear Filter--------------------

% i)     --- 3*3 box filter ---
w = [1 1 1; 1 1 1; 1 1 1]/9;
I1 = imfilter(inImg1 , w);


%        --- 15*15 box filter --- 
w1 = fspecial('average', [15,15]);
I2 = imfilter(inImg1 , w1);


% ii)    --- 3*3 weighted averaging filter ---
w3 = [1 2 1; 2 4 2; 1 2 1]/16;
I3 = imfilter(inImg1 , w3);


%        --- 15*15 weighted averaging filter ---
w4 = fspecial('average', [15,15]);
I4 = imfilter(inImg1 , w4);



% 2) ---------------Non Linear Filter----------------------


%median Filter

inImg2 = imread('Images\e15.tif');
I5 = medfilt2(inImg2, [3,3]);


%----------------- Sharpning Filter---------------

% i) Lapacian Filter

inImg3 = imread('Images\e16.tif');
f2 = [0 1 0; 1 -4 1; 0 1 0];
I6 = imfilter(inImg3,f2);



% iii) gradian Filter

inImg5 = imread('Images\e18.tif');
f_unsharp = fspecial('unsharp');
I_sharp = imfilter(inImg5,f_unsharp);


% iv) High-Boost Filter

inImg6 = imread('Images\e18.tif');
f_hb = [0 -1 0; -1 5 -1; 0 -1 0];
I_sharp2 = imfilter(inImg6,f_hb);


% ii) gradian Filter

inImg4 = imread('Images\e17.tif');
[Gmag, Gdir] = imgradient(inImg4);





%Display input and output images in plot
% subplot(4,5,1);imshow(inImg1);title('Input Image of Linear Filter')
% subplot(4,5,2);imshow(I1);title('output of 3*3 box filter')
% subplot(4,5,3);imshow(I2);title('output of 15*15 box filter')
% subplot(4,5,4);imshow(I3);title('output of 3*3 weighted average filter')
% subplot(4,5,5);imshow(I4);title('output of 15*15 weighted average filter')
% subplot(4,5,6);imshow(inImg2);title('Input Image of non-linear filter')
% subplot(4,5,7);imshow(I5);title('output of 3*3 median filter')
% subplot(4,5,11);imshow(inImg3);title('Input Image of laplacian filter')
% subplot(4,5,12);imshow(I6);title('output of Laplacian filter')
% subplot(4,5,16);imshow(inImg4);title('Input Image of gradian filter')
% subplot(1,2,1);imshow(inImg5);title('Input Image of unsharping filter')
% subplot(1,2,2);imshow(I_sharp);title('output Image of unsharping filter')
% subplot(1,2,1);imshow(inImg6);title('Input Image of high-boost filter')
% subplot(1,2,2);imshow(I_sharp2);title('output Image of high-boost filter')

% figure
% imshowpair(Gmag, Gdir, 'montage').title('output of Gardian filter');