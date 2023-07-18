%Sharpening Filters
A=ones(200,200);
A(30:60,30:60)=0;
A(70:150,50:170)=0;
figure(1);
subplot(1,2,1);
imshow(A);
AM=[1 1 1;1 -8 1;1 1 1];
B=conv2(A,AM);
subplot(1,2,2);
imshow(B)