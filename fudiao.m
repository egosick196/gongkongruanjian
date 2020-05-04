clear;
Pic = imread('.\pic\test1.jpg');
g = rgb2gray(Pic);

c_sobel = fspecial('sobel');
c_pre = fspecial('prewitt');
c_log = fspecial('log', 5, 0.8);
%ker = [6 6 6;0 0 0; -6 -6 -6]; %试出来的有浮雕效果的算子
g_pre = imfilter(g, 6 * c_pre, 'corr', 'replicate'); %使用prewitt来构造浮雕算子
g_sol = imfilter(g, 3 * c_sobel, 'corr', 'replicate'); %用sobel乘系数来近似ker
g_log = imfilter(g, 3 * c_log, 'corr', 'replicate'); 

imshow(g_pre+128);
imshow(g_sol+128);
imshow(255-g_log);