% SOBEL_conv

clear;
Pic = imread('.\pic\te.jpg');
c_Sobel = [-1, 0, 1; -2, 0, 2; -1 0 1]; %SobelËã×Ó
Gray = rgb2gray(Pic);

side = imfilter(Gray, c_Sobel, 'conv', 'replicate'); %¾í»ý
imshow(side);



