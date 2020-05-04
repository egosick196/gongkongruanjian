% erode_edge

clear;
Pic = imread('.\pic\test1.jpg');
Gray = rgb2gray(Pic);

cir_SE = strel('disk', 5); %Բ�νṹԪ��
Pic_inn = imerode(Gray, cir_SE);
prof = Gray - Pic_inn;

imshow(prof);
imwrite(prof, 'Prof.jpg');
