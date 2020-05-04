clear;
Pic = imread('.\pic\test1.jpg');
im = rgb2gray(Pic);

g = imadjust(im1, [0.3137 0.471], [0.039 0.98], 1.2);
imshow(g);