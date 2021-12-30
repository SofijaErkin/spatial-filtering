%% Read in image 
I = imread('MelindaŽaklina.jpg');
%% Convert to grayscale image
Igray = rgb2gray(I);
%% Operator
% Mean filter
% h = fspecial('average',hsize)
% an averaging filter h of size  hsize
% hsize:positive integer | 2-element vector of positive integers
% h = fspecial('disk',radius)
% a circular averaging filter (pillbox) within the square matrix of size 2*radius+1.
% radius:5 (default) | positive number
% Mean filter grayscale image 
Iav3 = filter2(fspecial('average', 3), Igray);
Iav5 = filter2(fspecial('average', 5), Igray);
Iav9 = filter2(fspecial('average', 9), Igray);
Iav15 = filter2(fspecial('average', 15), Igray);
Iav35 = filter2(fspecial('average', 35), Igray);  
%% Display the image 
subplot(2, 3, 1),imshow(Igray);
    title('Original Grayscale image');
subplot(2, 3, 2),imshow(Iav3, []);
    title('Mean filter 3*3');  
subplot(2, 3, 3),imshow(Iav5, []);
    title('Mean filter 5*5'); 
subplot(2, 3, 4),imshow(Iav9, []);
    title('Mean filter 9*9');  
subplot(2, 3, 5),imshow(Iav15, []);
    title('Mean filter 15*15'); 
subplot(2, 3, 6),imshow(Iav35, []);
    title('Mean filter 35*35');  
