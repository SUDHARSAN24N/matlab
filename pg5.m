gray=imread('coins.png');
subplot(3,2,1);
imshow(gray);
title('Original Image');

% gray=rgb2gray(img);
% subplot(3,2,2);
% imshow(gray);
% title('gray image');

ed1=edge(gray,'sobel');
subplot(3,2,3);
imshow(ed1);
title('Sobel');

ed2=edge(gray,'canny');
subplot(3,2,4);
imshow(ed2);
title('canny');

ed3=edge(gray,'prewitt');
subplot(3,2,5);
imshow(ed3);
title('Prewitt');

ed4=edge(gray,'roberts');
subplot(3,2,6);
imshow(ed4);
title('Roberts');

