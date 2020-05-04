% Gau_blur.m

clear;
Pic = imread('.\pic\test1.jpg');
Gray = rgb2gray(Pic);

c_Gau = fspecial('Gaussian', 5, 5.5); %��˹����,��СΪ5*5����׼��Ϊ0.8
Blur = imfilter(Gray, c_Gau, 'corr', 'replicate'); %�˲�

imshow(Blur);
imwrite(Blur,'Blur.jpg');