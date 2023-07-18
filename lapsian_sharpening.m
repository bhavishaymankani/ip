a=imread('cameraman.tif');
%Defining the laplacian filters
h1=[0 -1 0;-1 4 -1;0 -1 0];
h2=[-1 -1 -1;-1 8 -1; -1 -1 -1];
h3=[-1 -1 -1;-1 9 -1; -1 -1 -1];
c1=conv2(a,h1,'same');
c2=conv2(a,h2,'same');
c3=conv2(a,h3,'same');

subplot(2,2,1);
imshow(a);
title('Original image');
subplot(2,2,2);
imshow(uint8(c1));
title('Laplacian sharpening 4 at center');
subplot(2,2,3);
imshow(uint8(c2));
title('Laplacian sharpening 8 at center ');
subplot(2,2,4);
imshow(uint8(c3));
title(' Laplacian sharpening 9 at center');