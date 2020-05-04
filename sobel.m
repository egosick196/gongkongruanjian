% SOBEL_conv

clear;
Pic = imread('.\pic\te.jpg');
c_Sobel = [-1, 0, 1; -2, 0, 2; -1 0 1]; %Sobel����
Gray = rgb2gray(Pic);

side = imfilter(Gray, c_Sobel, 'conv', 'replicate'); %���
imshow(side);



