% Author: Murat Kirtay, Robotics Laboratory
% Date: 11/05/2015
% Description: EE 521 Assignment#9
% 1- Select a monochrome image and display it.
% 2- Add 20 dB Gaussian noise to the image and display the result.
% 3- Use the following formula to obtain the noise variance:
% 
% 4- Filter the noisy image with the local LMMSE filter. Use a 3x3
%    window to find the local mean and variance. Display and
%    comment on the resulting image.
% 5- Repeat Step 3 with a 7x7 window.
% 6- Compare your results with MATLAB’s adaptive noise filter.

image = imread('yoda.jpg');
gray_img = im2double(rgb2gray(image));

variance = 0.1;
gnoise_img = imnoise(gray_img, 'gaussian', 0, variance);

filter_3by3 = 1.0/9.0 * ones(3);
filter_7by7 = 1.0/49.0 * ones(7);

%filtered_img = applyLLMSE(gnoise_img, filter_3by3, variance)
filtered_img = applyLLMSE(gnoise_img, filter_7by7, variance)
%imshow(filtered_img)

% apply adaptive filter
adaptive_3by3 = wiener2(gnoise_img, [3 3], variance)
adaptive_7by7 = wiener2(gnoise_img, [7 3], variance)
imshow(adaptive_7by7)
