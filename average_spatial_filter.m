I = imread('cameraman.tif');
J = histeq(I);
subplot(2,2,1);
imshow( I );
subplot(2,2,2);
imhist(I)%This program is for Averaging spatial Filter
input_img=imread('cameraman.tif');

% Addition of noise to the input image
salt_pepper_noise=imnoise(input_img,'salt & pepper');
gaussian_noise=imnoise(input_img,'gaussian');
speckle_noise=imnoise(input_img,'speckle');

% Defining 3x3 and 5x5 kernel
h1=1/9*ones(3,3); 
h2=1/25*ones(5,5);

% Attempt to recover the image
salt_pepper_noise1=conv2(salt_pepper_noise,h1,'same');
salt_pepper_noise2=conv2(salt_pepper_noise,h2,'same');
gaussian_noise1=conv2(gaussian_noise,h1,'same');
gaussian_noise2=conv2(gaussian_noise,h2,'same');
speckle_noise1=conv2(speckle_noise,h1,'same');
speckle_noise2=conv2(speckle_noise,h2,'same');

% displaying the result figure,
subplot(4,4,1);
imshow(input_img);
title('Original Image');

subplot(4,4,2);
imshow(salt_pepper_noise);
title('Salt & Pepper noise');
subplot(4,4,3);
imshow(uint8(salt_pepper_noise1));
title('3 x 3 Averaging filter');
subplot(4,4,4);
imshow(uint8(salt_pepper_noise2));
title('5 x 5 Averaging filter');

%........................... figure,
subplot(4,4,5);
imshow(input_img);
title('Original Image');
subplot(4,4,6);
imshow(gaussian_noise);
title('Gaussian noise');
subplot(4,4,7);
imshow(uint8(gaussian_noise1));
title('3 x 3 Averaging filter');
subplot(4,4,8);
imshow(uint8(gaussian_noise2));
title('5 x 5 Averaging filter');

%.................. figure,
subplot(4,4,9);
imshow(input_img);
title('Original Image');
subplot(4,4,10);
imshow(d);
title('Speckle noise');
subplot(4,4,11);
imshow(uint8(speckle_noise1));
title('3 x 3 Averaging filter');
subplot(4,4,12);
imshow(uint8(speckle_noise2));
title('5 x 5 Averaging filter');

subplot(2,2,3);
imshow( J );
subplot(2,2,4);
imhist(J)