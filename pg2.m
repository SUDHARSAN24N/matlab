p=imread('peppers.png');
% figure;
% imshow(p);
% title('orginal image');
% 
% figure;
gy=rgb2gray(p);
% imshow(gy);
% title('graY IMAGE');
% 
% figure;
% imhist(gy);
% title('histogram image');
%  
% figure;
 equalier=histeq(gy);
% imshow(equalier);
% title('equalier image');
% 
% figure;
% imhist(equalier);
% title('histogram eqaulization ');

% figure;
% subplot(3,2,1);
% imshow(p);
% title('orginal image');

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
