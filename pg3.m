clc;
clear;
close all;

%% Step 1: Load an image
original = imread('cameraman.tif');      % Load a sample grayscale image
imshow(original), title('Original Image');

%% Step 2: Blur the image
psf = fspecial('motion', 15, 30);        % Create motion blur (length=15, angle=30 degrees)
blurred = imfilter(original, psf, 'conv', 'circular');  % Apply blur
figure, imshow(blurred), title('Blurred Image');

%% Step 3: Add noise (optional)
noisy_blurred = imnoise(blurred, 'gaussian', 0, 0.001);  % Add slight Gaussian noise
figure, imshow(noisy_blurred), title('Blurred + Noisy Image');

%% Step 4: Restore the image using Wiener filter
% Estimate noise-to-signal ratio (NSR)
nsr = 5;   % You can experiment with different values
restored = deconvwnr(noisy_blurred, psf, nsr);  % Apply Wiener deconvolution
figure, imshow(restored, []), title('Restored Image');

