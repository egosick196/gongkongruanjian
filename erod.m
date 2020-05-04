% erode

clear;
Pic = imread('.\pic\test1.jpg');
Gray = rgb2gray(Pic);

cir_SE = strel('disk', 5); %圆形结构元素
Pic_ero = imerode(Gray, cir_SE); %腐蚀

imshow(Pic_ero);
imwrite(Pic_ero, 'Pic_ero.jpg');

