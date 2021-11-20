%% Read in image 
I = imread('xiaoguan.png');
% yunannan.png
% xiaoguan.png
% tangrenjie.png
% shilichongxiao.png
% guniang.png

%% Convert to grayscale image
Igray = rgb2gray(I);

%% Add noise to image
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
% Mean filter salt & pepper  
Iav5sap = filter2(fspecial('average', 5), Islat_pepper);
% median filter salt & pepper noise
Imedian = medfilt2(Islat_pepper, [5 5]);

%% Display the image 

subplot(1, 3, 1),imshow(Islat_pepper); 
    title('Slat & Pepper'); 
    xlabel('density 0.15');
subplot(1, 3, 2),imshow(Iav5sap, []);
    title('Averageing Filter');
    xlabel('size 5');
subplot(1, 3, 3),imshow(Imedian, []);
    title('Median Filter');
    xlabel('size 5');
