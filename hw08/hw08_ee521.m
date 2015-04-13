% Author: Murat Kirtay, Robotics Laboratory
% Date: 28/03/2015
% Description: EE 521 Assignment#8
% 1- Select an image with a dominant edge in it. Display it.
% 2- Obtain gradient magnitude of its luminance channel. Use
%    Sobel operator for calculating the derivatives. Display the
%    horizontal and vertical gradient images.
% 3- Apply a threshold to the gradient magnitude image to
%    detect edge pixels. Display the gradient magnitude image
%    and its thresholded version. Pick an appropriate threshold
%    using trial and error.
% 4- Use Hough transform to identify the parameters of the
%    dominant edge. Display the Hough transformed image.
% 5- Comment on the performance of the above algorithm on
%    finding the dominant edge in the image.

image = imread('yoda.jpg');
gray_img = im2double(rgb2gray(image));

sver_img = applySobelVertical(gray_img);