I=imread('cameraman.tif');
subplot(2,2,1);
imshow(I);
title('original image');
f=ones(3,3)/9;
h=imfilter(I,f,'circular');
subplot(2,2,2);
imshow(h);
title('averaged image');