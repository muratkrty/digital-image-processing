function [] = plotHistograms(img_dark, img_bright)
% Author: Murat Kirtay, Robotics Laboratory
% Date: 02/03/2015
% Description: Calculate and display histogram of each image
% Input/s: img_dark, img_bright  raw images
% Bugs: No known.

subplot(1,2,1)
imhist(img_dark)
title('Dark image histogram')
grid on

subplot(1,2,2)
imhist(img_bright)
title('Bright image histogram')
grid on

end