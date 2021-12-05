%% Read in image 
I = imread('PenkaAlastair.jpg');
%% Convert to grayscale image
Igray = rgb2gray(I);
%% Options
% Sharpening filter
% Robert gradient
rw1 = [-1 0; 0 1];
rw2 = [0 -1;1 0];
Robertw1 = imfilter(Igray,rw1,'corr','replicate');
Robertw2 = imfilter(Igray,rw2,'corr','replicate');
Irobert = abs(Robertw1)+abs(Robertw2);
%% Display the image 
subplot(2,2,1);
    imshow(Igray); 
    title('Grayscale Image');
subplot(2,2,2);
    imshow(abs(Robertw1),[]),title('w1 filter'); 
subplot(2,2,3);
    imshow(abs(Robertw2),[]),title('w2 filter'); 
subplot(2,2,4);
    imshow(Irobert,[]),title('Robert gradient'); 
