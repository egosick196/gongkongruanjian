
clear;
Pic = imread('.\pic\te.jpg');
Gray = rgb2gray(Pic);

thre_val = graythresh(Gray);  %自适应求阈值
B = imbinarize(Gray,thre_val); %二值化

%imwrite(B, 'binary.jpg');