clear;
Pic = imread('.\pic\te.jpg');
g = rgb2gray(Pic);

c_log = fspecial('log');
im_d = double(g);
grad = sqrt(imfilter(im_d, c_log, 'replicate').^2 + imfilter(im_d, c_log, 'replicate').^2);  %����ͼ���ݶȷ�ֵ

loc_min = imextendedmin(g, 30); %��ǰ����ǳɫ����0��������Ϊ1
p_loc = g;
p_loc(loc_min) = 0; %

lab_watshed = watershed(bwdist(loc_min)); %bwdist����0������ֵ�ľ��룬watershed��ǰ���ͱ�������ʵ�λ�û����߽�
ext_min = lab_watshed == 0;

g_refined = imimposemin(grad, loc_min | ext_min); %��ǰ�����Ʊ�������

ridge1 = watershed(g_refined);
g3 = g;
g3(ridge1 == 0) = 0;
imshow(g3);