%% Read in image 
I = imread('NeptuneClaudia.jpg');
%% Convert to grayscale image
Igray = rgb2gray(I);
%% Add noise to image
% Gaussian 
% J = imnoise(I,'gaussian')
% Gaussian white noise with variance of 0.01 to grayscale image I.
% J = imnoise(I,'gaussian',m)
% adds Gaussian white noise with mean m and variance of 0.01.
% J = imnoise(I,'gaussian',m,var_gauss)
% adds Gaussian white noise with mean m and variance var_gauss.
% J = imnoise(I,'localvar',var_local)
% J = imnoise(I,'localvar',intensity_map,var_local)
% Gaussian white noise
Iguassian = imnoise(Igray, 'gaussian', 0.1, 0.015);
% Salt & pepper
% J = imnoise(I,'salt & pepper')
% adds salt and pepper noise, 
% with default noise density 0.05. 
% This affects approximately 5% of pixels.
% J = imnoise(I,'salt & pepper',d)
% adds salt and pepper noise, 
% where d is the noise density. 
% This affects approximately d*numel(I) pixels.
% salt & pepper noise
Islat_pepper = imnoise(Igray, 'salt & pepper', 0.15);
%% Operator
% Mean filter
% h = fspecial('average',hsize)
% an averaging filter h of size hsize
% hsize:positive integer | 2-element vector of positive integers
% h = fspecial('disk',radius)
% a circular averaging filter (pillbox) within the square matrix of size 2*radius+1.
% radius:5 (default) | positive number
% Mean filter Guassian white noise
Iav5ga = filter2(fspecial('average', 5), Iguassian);
Idi5ga = filter2(fspecial('disk', 5), Iguassian);
% Mean filter salt & pepper   
Iav5sap = filter2(fspecial('average', 5), Islat_pepper);
Idi5sap = filter2(fspecial('disk', 5), Islat_pepper);
%% Display the image 
subplot(2, 3, 1),imshow(Iguassian, []);
    title('Guassian white noise');
    xlabel('mean 0.1, variance 0.015');
subplot(2, 3, 2),imshow(Iav5ga, []);
    title('Averageing Guassian ');
    xlabel({'Averaging filter size 5','(mean 0.1, variance 0.015)'})  
subplot(2, 3, 3),imshow(Idi5ga, []);
    title('Circular averaging Guassian');
    xlabel({'Circular averaging filter size 5','(mean 0.1, variance 0.015)'}); 
subplot(2, 3, 4),imshow(Islat_pepper, []); 
    title('Slat & Pepper'); 
    xlabel('density 0.15');  
subplot(2, 3, 5),imshow(Iav5sap, []);
    title('Averageing slat & pepper ');
    xlabel({'Averaging filter size 5','(density 0.15)'}) 
subplot(2, 3, 6),imshow(Idi5sap, []);
    title('Circular averaging slat & pepper');
    xlabel({'Circular averaging filter size 5','(density 0.15)'});
                                                Circular averaging filter size 5slat & pepper,density 0.15) ');  
