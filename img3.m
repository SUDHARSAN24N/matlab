clc;
fprintf('Beginning to run %s.m...,\n',mfilename);
closeall;
clear;
workspace;
format long g;
format compact;
fontSize=15;
grayImage=im2double(imread('cameraman.tif'));
grayImage=imresize(grayImage,[688,688]);
subplot(2,3,1);
imshow(grayImage,[]);
impixelinto
axis('on','image')
title('orginal image',fontSize,'fontSize')
a=0.1;
b=a;
T=1;
[rows,columns]=size(grayImage);
h=zero(rows,columns);
for u=1:rows
    for v=1:columns
        rx=v-columns/2;
        ry=u-rows/2;
        h(u,v)=(T/(pi*(ry*a+rx*b)))*...
            sin(pi*(ry*a+rx*b))*...
            exp(-1i*pi*(ry*a+rx*b));
    end
end
absh=real(h);
fprintf('Max h=%f.\n',max(absh(:)))
subplot(2,3,2);
imshow(log(absh),[]);
impixelinto;
axis('on','image');
title('h frequenency domain filter','fontSize','fontSize');
fftorig=fftshift(fft2(grayImage);
subplot(2,3,3);
imshow9log(abs(fftorig)),[]);
impixelinto;
axis('on','image')
title('FFt of original Image','fontSize','fontSize');

cl=fftorig.*h;
rc=real(cl);
ic=imag(cl);
rc(isnan(rc))=0;
ic(isnan(ic))=0;
cl=rc+1i*ic;
subplot(2,3,4);
imshow(abs(log(cl)+1),[]);
title('Filtered spectrum''fontSize','fontSize')
clspatial=ifft2(ifftshit(cl));
subplot(2,3,5);
imshow(real(clspatial),[]);
title('Filtered Image','fontSize','fontSize');
g=gcf;
g.windowstate='maximized';


 