img1=imread('peppers.png');
img2=imread('cameraman.tif');
if size(img1,3)==3
    img1=rgb2gray(img1);
end
if size(img2,3)==3
    img2=rgb2gray(img2);
end
if ~isequal(size(img1),size(img2))
    img2=imresize(img2,size(img1));
end

result=imsubtract(img1,img2);
imshow(result);
title('image subtraction Result');