img = imread('cameraman.tif');
figure,imshow(img),title('original Image');
h=fspecial('average',[3,3]);
filtered_img=imfilter(img,h);
figure,imshow(filtered_img),title('filtered image(mean filter)');