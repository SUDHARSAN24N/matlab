original = imread('cameraman.tif');
imshow(original); 
title('Original Image');
LEN = 20;
THETA = 45;
PSF = fspecial('motion', LEN, THETA);
blurred = imfilter(original, PSF, 'conv', 'circular');
figure, imshow(blurred), title('Blurred Image'); 
restored = deconvwnr(blurred, PSF);
figure
imshow(restored);
title('Restored Image (wiener Filtering)');
