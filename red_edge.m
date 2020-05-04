% red_edge.m

clear;
Pic = imread('.\pic\test1.jpg');

R = Pic(:, :, 1); %ͨ����ȡ
G = Pic(:, :, 2);
B = Pic(:, :, 3);

cir_SE = strel('disk', 4); %Բ�νṹԪ��
R1 = imdilate(R, cir_SE); %����

Pic2(:, :, 1) = R1;
Pic2(:, :, 2) = G;
Pic2(:, :, 3) = B;

imshow(Pic2);
imwrite(Pic2, 'Pic2.jpg');