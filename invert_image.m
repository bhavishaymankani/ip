% MATLAB code for Intensity Transformation
img = imread('cameraman.tif');

% In case of 8 Bit image
L = 256;

% The below operation is equivalent to 255 - img
s = (L - 1) - img;
figure,imshow(s); title('Inverted Image')