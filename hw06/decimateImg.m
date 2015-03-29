function [dec_img ] = decimateImg(img, factor)
% Author: Murat Kirtay, Robotics Laboratory
% Date: 28/03/2015
% Description: decimate image by a given factor.
% Input/s: factor,
% Bugs: No known


filter_type = fspecial('average', factor);
filtered_img = imfilter(img, filter_type);
dec_img = filtered_img(1: factor: end, 1: factor: end);

imshow(dec_img)

end
