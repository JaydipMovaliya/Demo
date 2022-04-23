clc
clear all

% read input image using imread() function
inImg1 = imread('Images\Jaydip.jpg');
inImg2 = imread('Images\Jaydip1.jpg');


% Convert rgb image into gray
x = rgb2gray(inImg1);
y = rgb2gray(inImg2);


%Resize the image for bitwise operation
A = imresize(x,[256,256]);
B = imresize(y,[256,256]);

%Logical AND
and = bitand(A,B);

%Logical OR
or = bitor(A,B);

%Logical NOT
not1 = bitcmp(A);
not2 = bitcmp(B);

%Logical AND NOT
ans = bitand(A,not2);

%Logical AND XOR
xor = bitxor(A,B);

subplot(5,3,1),imshow(x);title('Input Image-1');
subplot(5,3,2),imshow(y);title('Input Image-2');
subplot(5,3,3),imshow(and);title('(Image-1) AND (Image-2)');
subplot(5,3,4),imshow(or);title('(Image-1) OR (Image-2)');
subplot(5,3,5),imshow(not1);title('NOT(Image-1)');
subplot(5,3,6),imshow(not2);title('NOT(Image-2)');
subplot(5,3,7),imshow(ans);title('(Image-1) AND (NOT(Image-2))');
subplot(5,3,8),imshow(xor);title('(Image-1) xor (Image-2)');