%% Read in image 
I = imread('KayaMemphis.jpg');
%% Convert to grayscale image
Igray = rgb2gray(I);
%% Options
% Lapacian gradient
lapw1 = [0 -1 0;-1 4 -1;0 -1 0];
Lap1 = imfilter(Igray, lapw1,'corr','replicate');
lapw2 = [-1 -1 -1;-1 8 -1 ;-1 -1 -1];
Lap2 = imfilter(Igray, lapw2,'corr','replicate');
lapw3 = [1 4 1;4 -20 4;1 4 1];
Lap3 = imfilter(Igray, lapw3,'corr','replicate');
% Log gradient
h_log = fspecial('log',5,0.5);
I_log = imfilter(Igray,h_log,'corr','replicate');
h_log2 = fspecial('log',5,2);
I_log2 = imfilter(Igray,h_log2,'corr','replicate');
%% Display the image 
subplot(2,2,1);
imshow(Igray); 
    title('Grayscale Image');
subplot(2,2,2);
imshow(abs(Lap1),[]);
    title('Lapacian ');
    xlabel('[1 4 1;4 -20 4;1 4 1]');
subplot(2,2,3);
imshow(uint8(abs(I_log)),[]),title('LoG');
    xlabel('log,5,0.5');
subplot(2,2,4);
imshow(uint8(abs(I_log2)),[]),title('LoG2');
    xlabel('log,5,2');
