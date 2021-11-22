%% Read in image 
I = imread('tangrenjie.png');

%% Convert to grayscale image
Igray = rgb2gray(I);

%% Add noise to image
Islat_pepper = imnoise(I, 'salt & pepper', 0.0001);

%% Operator
% Maximum filter salt & pepper noise  
Imax = imdilate(I, true(3));
%imshow(Imax, []);
%    title('Maxinum filter salt & pepper');
%   xlabel('density 0.15');
Imin = imerode(I, true(3));
%imshow(Imin, []);
%    title('Mininum filter salt & pepper');
%    xlabel('density 0.15');

%% Diaplay the image 

subplot(1, 3, 1),
imshow(I);
    title('salt & pepper'); 
    xlabel('density 0.01');
subplot(1, 3, 2),
imshow(Imax);
    title('Maxinum filter salt & pepper');
    xlabel('density 0.01');
subplot(1, 3, 3),
imshow(Imin);
    title('Mininum filter salt & pepper');
    xlabel('density 0.01');
