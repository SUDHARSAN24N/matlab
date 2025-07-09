ns=imread('F:\2msc\Downloads\iphone.jpg');
subplot(2,3,1);
imshow(ns);
title('orginal image');

gy=rgb2gray(ns);
subplot(2,3,2);
imshow(gy);
title('gray image');

br=ns+100;
subplot(2,3,3);
imshow(br);
title('bright-ness image');

ct=ns*1;
subplot(2,3,4);
imshow(ct);
title('contract image');


nt=256;
n1=(nt-1)-ns;
subplot(2,3,5);
imshow(nl);
title('negative');

