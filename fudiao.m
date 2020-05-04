clear;
Pic = imread('.\pic\test1.jpg');
g = rgb2gray(Pic);

c_sobel = fspecial('sobel');
c_pre = fspecial('prewitt');
c_log = fspecial('log', 5, 0.8);
%ker = [6 6 6;0 0 0; -6 -6 -6]; %�Գ������и���Ч��������
g_pre = imfilter(g, 6 * c_pre, 'corr', 'replicate'); %ʹ��prewitt�����측������
g_sol = imfilter(g, 3 * c_sobel, 'corr', 'replicate'); %��sobel��ϵ��������ker
g_log = imfilter(g, 3 * c_log, 'corr', 'replicate'); 

imshow(g_pre+128);
imshow(g_sol+128);
imshow(255-g_log);