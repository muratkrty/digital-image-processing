function [sobel_horizontal] = applySobelHorizontal(img)
% Author: Murat Kirtay, Robotics Laboratory
% Date: 13/04/2015
% Description: Detect horizontal edges on a image via sobel filter
% Input/s: img, grayscale image
% Output/s: sobel_horizontal
% Bugs: No known

filter_mat = [1 2 1; 0 0 0; -1 -2 -1];
sobel_horizontal = imfilter(img, filter_mat);
%imshow(sobel_horizontal);

end
