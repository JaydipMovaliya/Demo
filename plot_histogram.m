clc
clear all

% read input iname usin imread() function
inImg = imread('Images\jaydip.jpg');


[rows, columns, numberOfColorChannels] = size(inImg);
counts = zeros(1, 256);
for col = 1 : columns
	for row = 1 : rows
		% Get the gray level.
		grayLevel = inImg(row, col);
		% Add 1 because graylevel zero goes into index 1 and so on.
		counts(grayLevel+ 1) = counts(grayLevel+1) + 1;
	end
end



% Plot the histogram.
subplot(2,2,1);imshow(inImg);title('Input Image')
grayLevels = 0 : 255;
bar(grayLevels, counts, 'BarWidth', 1, 'FaceColor', 'b');
xlabel('Gray Level', 'FontSize', 20);
ylabel('Pixel Count', 'FontSize', 20);
title('Histogram', 'FontSize', 20);
grid on;

subplot(2,2,2)
imshow(inImg)
title('Input Image')
