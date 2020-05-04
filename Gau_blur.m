% Gau_blur.m

clear;
Pic = imread('.\pic\test1.jpg');
Gray = rgb2gray(Pic);

c_Gau = fspecial('Gaussian', 5, 5.5); %高斯算子,大小为5*5，标准差为0.8
Blur = imfilter(Gray, c_Gau, 'corr', 'replicate'); %滤波

imshow(Blur);
imwrite(Blur,'Blur.jpg');