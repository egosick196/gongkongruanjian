% color_dither.m

clear;
Pic = imread('.\pic\test1.jpg');
d = dither(Pic, jet);

imshow(d, jet);