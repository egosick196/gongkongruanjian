% erode

clear;
Pic = imread('.\pic\test1.jpg');
Gray = rgb2gray(Pic);

cir_SE = strel('disk', 5); %Բ�νṹԪ��
Pic_ero = imerode(Gray, cir_SE); %��ʴ

imshow(Pic_ero);
imwrite(Pic_ero, 'Pic_ero.jpg');

