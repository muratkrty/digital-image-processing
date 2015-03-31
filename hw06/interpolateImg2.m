function [interpolated_img] = interpolateImg2(img, inter_factor)
% Author: Murat Kirtay, Robotics Laboratory
% Date: 28/03/2015
% Description: Interpolate decimated image by given factor
% Input/s: img, a grayscale image
%          inter_factor,
% Bugs: No known



[row, col] = size(img);
factoring_mat = zeros(inter_factor*row-1, inter_factor*col-1);
interpolated_img = uint8(factoring_mat);
interpolated_img(1: inter_factor: end, 1: inter_factor: end) = img;

filter_val = [-2: 1/inter_factor: 2];
% exclude last element
filter_val = sinc(filter_val(2:end-1));
filter_type = filter_val' * filter_val;
interpolated_img = imfilter(interpolated_img, filter_type);

%decimateImg(interpolated_img, inter_factor);

end