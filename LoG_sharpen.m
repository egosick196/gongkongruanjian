clear;
Pic = imread('.\pic\test1.jpg');
Gray = rgb2gray(Pic);

c_log = fspecial('log', 5, 0.8); %LoG������,��СΪ5*5����׼��Ϊ0.8

E = imfilter(G_double, c_log, 'corr', 'replicate'); %�˲�
E_shp = uint8(abs(E));
G2 = 1*G + E_shp;

imshow(G2);
imwrite(G2);



