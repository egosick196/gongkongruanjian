% Image_registration.m

clear;
Pic1 = imread('.\pic\test1.jpg');
Pic2 = imread('.\pic\base.jpg');
Gray_face = rgb2gray(Pic1);
Gray_base = rgb2gray(Pic2);

cpselect(Gray_face, Gray_base);  %ѡȡ��׼�Ļ���
Tform = fitgeotrans( movingPoints,fixedPoints,'affine');  %���ݻ���������α任�ṹ��

P_transed = imwarp(Pic1, Tform);  %��׼
imshow(P_transed);
imwrite(P_transed, 'P_transed.jpg');