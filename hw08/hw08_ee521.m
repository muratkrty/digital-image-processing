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
shor_img = applySobelHorizontal(gray_img);

magnitude = sqrt(double(sver_img.^2 + shor_img.^2));
threshold = 0.4;
[grad_mag, thresholded] = applyGradientMagnitute(magnitude, threshold); 

% below lines are adapted from Matlab documentation
% http://www.mathworks.com/help/images/ref/hough.html;jsessionid=3876f9b27b501644bffd82adb555

% Extract edges.
BW = thresholded;
[H,T,R] = hough(BW,'RhoResolution',0.5,'Theta',-90:0.5:89.5);

imshow(imadjust(mat2gray(H)),'XData',T,'YData',R,...
      'InitialMagnification','fit');
title('Hough Transform of Thresholded Image');
xlabel('\theta'), ylabel('\rho');
axis on, axis normal, hold on;
colormap(hot);