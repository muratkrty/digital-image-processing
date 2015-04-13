function [sobel_vertical] = applySobelVertical(img)
% Author: Murat Kirtay, Robotics Laboratory
% Date: 13/04/2015
% Description: Detect verticatl edges on a image via sobel filter
% Input/s: img, grayscale image
% Output/s: sobel_vertical
% Bugs: No known

filter_mat = [1 2 1; 0 0 0; -1 -2 -1];
sobel_vertical = imfilter(img, filter_mat);
%imshow(sobel_vertical);

end
