function [interpolated_img] = interpolateImg(decimated_img, inter_factor)
% Author: Murat Kirtay, Robotics Laboratory
% Date: 28/03/2015
% Description: Interpolate decimated image by given factor
% Input/s: decimated_image, a decimated image by same factor 
%          inter_factor,
% Bugs: No known


[row, col] = size(decimated_img);
factoring_mat = zeros(inter_factor*row-1, inter_factor*col-1);
interpolated_img = uint8(factoring_mat);
interpolated_img(1: inter_factor: end, 1: inter_factor: end) = decimated_img;

filter_val = [-2: 1/inter_factor: 2];
% exclude last element
filter_val = sinc(filter_val(2:end-1));

filter_type = filter_val' * filter_val;

interpolated_img = imfilter(interpolated_img, filter_type);

%imshow(interpolated_img);

end