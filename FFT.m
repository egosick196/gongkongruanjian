% FFT_trans_int.m

clear;
Pic1 = imread('.\pic\test1.jpg');
Pic2 = imread('.\pic\cat.jpg');
Gray_face = rgb2gray(Pic1);
Gray_mask = rgb2gray(Pic2);

S_face = fft2(Gray_face);
S_mask = fft2(Gray_mask);
face_pha = angle(S_face);
mask_int = abs(S_mask);

masked = mask_int .* cos(face_pha) + mask_int .* sin(face_pha) .* 1i;
G_mas = abs(ifft2(masked));

imshow(G_mas, []);
imwrite(G_mas, 'G_mas.jpg');