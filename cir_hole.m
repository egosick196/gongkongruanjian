clear;
Pic = imread('.\pic\test1.jpg');
g = rgb2gray(Pic);
g_cut = g(:, 1:427); %修剪图片，确保相乘时尺度一致

h = fspecial('disk',213); %生成边缘为0的圆形平均算子
g_cir = double(g_cut) .* h; %相乘
g_cirN = g_cir ./ max(max(g_cir));
imshow(g_cirN);