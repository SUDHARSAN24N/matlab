img =imread('peppers.png');
img=double(rgb2gray(img));
dct_img= blockproc(img,[8,8],@(b)idct2(b.data));
dct_img(abs(dct_img)<10)=0;
reconstructed=blockproc(dct_img,[8,8],@(b)idct2(b.data));

subplot(2,2,1),imshow(uint8(img)),title('gray Image');
subplot(2,2,3),imshow(uint8(reconstructed)),title('compressed');
subplot(2,2,2),imshow(uint8(dct_img)),title('compressed');


