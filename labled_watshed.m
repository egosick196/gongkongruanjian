clear;
Pic = imread('.\pic\te.jpg');
g = rgb2gray(Pic);

c_log = fspecial('log');
im_d = double(g);
grad = sqrt(imfilter(im_d, c_log, 'replicate').^2 + imfilter(im_d, c_log, 'replicate').^2);  %计算图像梯度幅值

loc_min = imextendedmin(g, 30); %将前景（浅色）标0，背景标为1
p_loc = g;
p_loc(loc_min) = 0; %

lab_watshed = watershed(bwdist(loc_min)); %bwdist计算0到非零值的距离，watershed在前景和背景间合适的位置画出边界
ext_min = lab_watshed == 0;

g_refined = imimposemin(grad, loc_min | ext_min); %将前景上推背景下推

ridge1 = watershed(g_refined);
g3 = g;
g3(ridge1 == 0) = 0;
imshow(g3);