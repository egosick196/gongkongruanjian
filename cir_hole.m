clear;
Pic = imread('.\pic\test1.jpg');
g = rgb2gray(Pic);
g_cut = g(:, 1:427); %�޼�ͼƬ��ȷ�����ʱ�߶�һ��

h = fspecial('disk',213); %���ɱ�ԵΪ0��Բ��ƽ������
g_cir = double(g_cut) .* h; %���
g_cirN = g_cir ./ max(max(g_cir));
imshow(g_cirN);