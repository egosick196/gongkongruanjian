clear;
Pic = imread('.\pic\test1.jpg');
Gray = rgb2gray(Pic);

hist_equal = histeq(Gray); %ֱ��ͼ���⻯
imshow(hist_equal);
imwrite(hist_equal, 'hist_eq.jpg');