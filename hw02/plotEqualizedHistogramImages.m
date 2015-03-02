function [] = plotEqualizedHistogramImages(img_dark, img_bright)
% Author: Murat Kirtay, Robotics Laboratory
% Date: 02/03/2015
% Description: Calculate and display equalized histogram of each image
% Input/s: img_dark, img_bright  raw images
% Bugs: No known.


subplot(1,2,1)
histeq(img_dark)
title('Dark image after equalized histogram')
grid on

subplot(1,2,2)
histeq(img_bright)
title('Bright image after equalized histogram')
grid on

end
