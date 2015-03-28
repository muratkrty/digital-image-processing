% Author: Murat Kirtay, Robotics Laboratory
% Date: 28/03/2015
% Description: EE 521 Assignment#5
% 1- Select an arbitrary image.
% 2- Downsample it by a factor of 8.
% 3- Decimate it by a factor of 8.
% 4- Decimate it by a factor of 4 and then interpolate by a factor of 4.
% 5- Interpolate it by a factor of 4 and then decimate by a factor of 4.
% 6- Compare the images obtained in Steps 2 and 3, and comment on their
%    differences.
% 7- Calculate the RMSE values between the original image and t

image = imread('yoda.jpg');
gray_img = rgb2gray(image);
factor = 8;
inter_factor = 4;


%downSampleImg(gray_img, factor)
decimated_img = decimateImg(gray_img, inter-factor);
interpolateImg(decimated_img, inter_factor)


%conv_img = im2double(gray_img);



