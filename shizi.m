% approxmate.m

Pic = imread('.\pic\test1.jpg');
[Ind, map]=rgb2ind(Pic,256);  %RGBת��Ϊ����ͼ
[Ind16,newmap]=imapprox(Ind,map,16);  

imshow(Ind16, newmap);
imwrite(Ind16, 'Ind16.jpg');