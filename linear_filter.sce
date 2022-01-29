clc;
clear all;
close all;
I = rgb2gray(imread('D:\back2.jpeg'));
I_noise=imnoise(I,'salt & pepper');
FilterSize = [3 3];
I_3x3 = imfilter ( I_noise , FilterSize ) ;
I_5x5 = imfilter ( I_noise ,[5 5]) ;
I_7x7 = imfilter ( I_noise ,[7 7]) ;
I_9x9 = imfilter ( I_noise ,[9 9]) ;
subplot(2,3,1);
title('original image')
imshow(I)
subplot(2,3,2);
title('noisy image')
imshow(I_noise)
subplot(2,3,3);
title('Filter size 3x3')
imshow(I_3x3)
subplot(2,3,4);
title('Filter size 5x5')
imshow(I_5x5)
