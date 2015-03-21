% Author: Murat Kirtay, Robotics Laboratory
% Date: 21/03/2015
% Description: EE 521 Assignment#5
% 1- Select an arbitrary NxM image. Let N denote the size of the smaller
%    side of the image (usually the vertical side).
% 2- Find and display the luminance image (Y band) and its Fourier
%    transform (in the logarithm domain).
% 3- Apply an ideal low pass filter of circular shape with diameter N/4 in
%    the Fourier domain. Display the resulting image.
% 4- Apply an ideal low pass filter of square shape with the same support
%    area as in Step 3 in the Fourier domain. Display the resulting image.
% 5- Apply an ideal low pass filter of diamond shape with the same
%    support area as in Step 3 in the Fourier domain. Display the resulting
%    image.
% 6- Calculate the RMSE values between the original luminance image
%    and the images obtained in Steps 3, 4, and 5.
% 7- Compare the images obtained in Steps 3, 4, and 5, and the RMSE
%    values obtained in Step 6 and comment on their differences.

image = imread('obiwan.jpeg');
gray_img = rgb2gray(image);

conv_img = im2double(gray_img);
%log_domain_img = getLogDomainImg(conv_img)
[n, m] = size(image);
circular_lpf = getLPFcircular(n, m)


