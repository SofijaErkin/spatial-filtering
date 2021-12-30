%% Read in image 
I = imread('IsaasWat.jpg');
% yunannan.png
% xiaoguan.png
% tangrenjie.png
% shilichongxiao.png
% guniang.png
%% Convert to grayscale image
Igray = rgb2gray(I);    
%% Others
% mean filter 15*15 filtering grayscale image
Iav15 = filter2(fspecial('average', 15), Igray);
%  Thresholding
% Global Threshold
GT = imbinarize(Igray);
% Locally Adaptive Thresholding
LAT = imbinarize(Igray, 'adaptive');
%% Display the image
subplot(2, 2, 1),imshow(Igray);
    title('Original Grayscale Image');
subplot(2, 2, 2),imshow(Iav15, []);
    title('Mean filter 15*15');
%subplot(2, 2, 3),imshowpair(Igray, GT, 'montage');
%    title('Global Threshold');
%subplot(2, 2, 4),imshowpair(Igray, LAT, 'montage');
%    title('Locally Adaptive Thresholding');
subplot(2, 2, 3),imshow(GT);
    title('Global Threshold');
subplot(2, 2, 4),imshow(LAT);
    title('Locally Adaptive Thresholding');
