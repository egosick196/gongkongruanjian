clear;
Pic = imread('.\pic\test1.jpg');
G = rgb2gray(Pic);
g = double(G);

c_mot = fspecial('motion',100,0);
g_mot = imfilter(g, c_mot, 'corr', 'replicate'); 
g_rot = ((g_mot ./ max(max(g_mot))) .* max(max(g))-50 + g) ./ (2 * max(max(g)));

imshow(g_rot);