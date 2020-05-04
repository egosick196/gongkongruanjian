% red_edge.m

clear;
Pic = imread('.\pic\test1.jpg');

R = Pic(:, :, 1); %通道提取
G = Pic(:, :, 2);
B = Pic(:, :, 3);

cir_SE = strel('disk', 4); %圆形结构元素
R1 = imdilate(R, cir_SE); %膨胀

Pic2(:, :, 1) = R1;
Pic2(:, :, 2) = G;
Pic2(:, :, 3) = B;

imshow(Pic2);
imwrite(Pic2, 'Pic2.jpg');