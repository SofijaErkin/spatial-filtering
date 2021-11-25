%% Read in image 
I = imread('yunannan.png');
% yunannan.png
% xiaoguan.png
% tangrenjie.png
% shilichongxiao.png
% guniang.png

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

%% Display the image 

subplot(2,2,1);
imshow(Igray); 
    title('Grayscale Image');
subplot(2,2,2);
imshow(abs(Lap1),[]);
    title('Lapacian 1');
    xlabel('[0 -1 0;-1 4 -1;0 -1 0]');
subplot(2,2,3);
imshow(abs(Lap2),[]);
    title('Lapacian 2');
    xlabel('[-1 -1 -1;-1 8 -1 ;-1 -1 -1]');
subplot(2,2,4);
imshow(abs(Lap3),[]);
    title('Lapacian 3');
    xlabel('[1 4 1;4 -20 4;1 4 1]');
