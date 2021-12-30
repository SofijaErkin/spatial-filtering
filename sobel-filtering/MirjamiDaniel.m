%% Read in image 
I = imread('RostomParthenia.jpg');
%% Convert to grayscale image
Igray = rgb2gray(I);
%% Options
% Sharpening filter
% Robert gradient
% Sobel gradient
sw1 = fspecial('sobel');
sw2 = fspecial('sobel');
Horizontal = imfilter(Igray,sw1);
vertical = imfilter(Igray,sw2);
Isobel = abs(Horizontal)+abs(vertical);
%% Display the image 
subplot(2,2,1);
    imshow(Igray); 
    title('Grayscale Image');
subplot(2,2,2);
    imshow(Horizontal,[]),title('Horizontal sobel');  
subplot(2,2,3);
    imshow(vertical,[]),title('vertical sobel');
subplot(2,2,4);
    imshow(Isobel,[]),title('sobel');
