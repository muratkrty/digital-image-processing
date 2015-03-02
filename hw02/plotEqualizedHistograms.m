function [] = plotEqualizedHistograms(img_dark, img_bright)
% Author: Murat Kirtay, Robotics Laboratory
% Date: 02/03/2015
% Description: Calculate and display equalized histogram of each image
% Input/s: img_dark, img_bright  raw images
% Bugs: No known.


subplot(1,2,1)
dark_histeq = histeq(img_dark);
imhist(dark_histeq)
title('Dark image equalized histogram')
grid on

subplot(1,2,2)
bright_histeq = histeq(img_bright);
imhist(bright_histeq)
title('Bright image equalized histogram')
grid on

end
