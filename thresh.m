
clear;
Pic = imread('.\pic\te.jpg');
Gray = rgb2gray(Pic);

thre_val = graythresh(Gray);  %����Ӧ����ֵ
B = imbinarize(Gray,thre_val); %��ֵ��

%imwrite(B, 'binary.jpg');