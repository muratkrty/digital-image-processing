function [grad_mag, thresholded] = applyGradientMagnitute(magnitude, threshold)
% Author: Murat Kirtay, Robotics Laboratory
% Date: 13/04/2015
% Description: Detect horizontal edges on a image via sobel filter
% Input/s: img, grayscale image
% Output/s: sobel_horizontal
% Bugs: No known

grad_mag = magnitude;
thresholded = double(threshold < magnitude);

end