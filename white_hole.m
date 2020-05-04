clear;
Pic = imread('.\pic\test1.jpg');
g = rgb2gray(Pic);
g_d = double(g);

c_gau = fspecial('gaussian', [427 526], 80);  %原始高斯模板
c_ave = fspecial('average', 25);
c_lap = fspecial('laplacian', 0.8);
c_mask = imfilter(c_gau, c_gau, 'corr');  %对模板进行平均平滑，使渐变更明显
c_grad = imfilter(c_mask, c_lap, 'corr'); %对模板求梯度，具有较大值的区域形成一个环

g_blur = g_d .* c_mask; %相乘
g_blurN = g_blur ./ max(max(g_blur));
g_cut = g_d .* c_grad; 
g_cutN = g_cut ./ max(max(g_cut));

imshow(g_blurN);
imshow(g_cutN);