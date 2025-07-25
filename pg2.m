p=imread('peppers.png');
gy=rgb2gray(p);
equalier=histeq(gy);

subplot(2,2,1);
imshow(gy);
title('graY IMAGE');

subplot(2,2,2);
imhist(gy);
title('histogram image');

subplot(2,2,3);
imshow(equalier);
title('equalier image');

subplot(2,2,4);
imhist(equalier);
title('histogram eqaulization ');
