clear;
Pic = imread('.\pic\test1.jpg');
Gray = rgb2gray(Pic);

c_log = fspecial('log', 5, 0.8); %LoG锐化算子,大小为5*5，标准差为0.8

E = imfilter(G_double, c_log, 'corr', 'replicate'); %滤波
E_shp = uint8(abs(E));
G2 = 1*G + E_shp;

imshow(G2);
imwrite(G2);



