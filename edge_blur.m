clear;
Pic = imread('.\pic\test1.jpg');
g = rgb2gray(Pic);

c_log = fspecial('log', 5, 0.8); 
c_ave = fspecial('average', 1);
log_mask = imfilter(g, c_log, 'corr');
mask_blur = imfilter(log_mask*10, c_ave, 'corr');

g_blur = g .* (mask_blur); %ПаіЛ
g_blurN = g_blur ./ max(max(g_blur));
imshow(g_blurN+200);