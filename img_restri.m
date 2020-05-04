% Image_registration.m

clear;
Pic1 = imread('.\pic\test1.jpg');
Pic2 = imread('.\pic\base.jpg');
Gray_face = rgb2gray(Pic1);
Gray_base = rgb2gray(Pic2);

cpselect(Gray_face, Gray_base);  %选取配准的基点
Tform = fitgeotrans( movingPoints,fixedPoints,'affine');  %根据基点产生几何变换结构体

P_transed = imwarp(Pic1, Tform);  %配准
imshow(P_transed);
imwrite(P_transed, 'P_transed.jpg');