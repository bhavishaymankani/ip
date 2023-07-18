org_img=imread('cameraman.tif');

%Addition of salt and pepper noise 
SandP=imnoise(org_img,'salt & pepper',0.1);

%Defining the box and median filters
h1=1/9*ones(3,3);
h2=1/25*ones(5,5);
convfilter1=conv2(SandP,h1,'same');
convfilter2=conv2(SandP,h2,'same');
medfilter3=medfilt2(SandP,[3 3]);
medfilter4=medfilt2(SandP,[5 5]);

subplot(3,2,1);
imshow(org_img);
title('Original image');
subplot(3,2,2);
imshow(SandP);
title('Salt & pepper noise');
subplot(3,2,3);
imshow(uint8(convfilter1));
title('3 x 3 smoothing');
subplot(3,2,4);
imshow(uint8(convfilter2));
title('5 x 5 smoothing');
subplot(3,2,5);
imshow(uint8(medfilter3));
title('3x 3 Median filter');
subplot(3,2,6);
imshow(uint8(medfilter4));
title('5 x 5 Median filter');