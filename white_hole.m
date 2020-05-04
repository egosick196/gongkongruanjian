clear;
Pic = imread('.\pic\test1.jpg');
g = rgb2gray(Pic);
g_d = double(g);

c_gau = fspecial('gaussian', [427 526], 80);  %ԭʼ��˹ģ��
c_ave = fspecial('average', 25);
c_lap = fspecial('laplacian', 0.8);
c_mask = imfilter(c_gau, c_gau, 'corr');  %��ģ�����ƽ��ƽ����ʹ���������
c_grad = imfilter(c_mask, c_lap, 'corr'); %��ģ�����ݶȣ����нϴ�ֵ�������γ�һ����

g_blur = g_d .* c_mask; %���
g_blurN = g_blur ./ max(max(g_blur));
g_cut = g_d .* c_grad; 
g_cutN = g_cut ./ max(max(g_cut));

imshow(g_blurN);
imshow(g_cutN);