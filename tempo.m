se_x = [1 1 ];
se_y = [1; 1];
x_dilate = imdilate(B, se_x);
x_erod = imerode(x_dilate, se_x);
y_dilate = imdilate(x_erod, se_y);
y_erod = imerode(y_dilate, se_y);