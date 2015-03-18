function [] = plotLowPassUband(img)
% Author: Murat Kirtay, Robotics Laboratory
% Date: 17/03/2015
% Description: apply low pass filter to YU chanels and extract figure
% Input/s: img, color image
% Bugs: No known.

% 4x4 filter
filter = fspecial('average', [4 4]);

img_r = img(:, :, 1); % r band 
img_g = img(:, :, 2); % g band
img_b = img(:, :, 3); % b band

% matrix multiplication can be used as well
img_y = 0.299 * img_r + 0.587 * img_g + 0.114 * img_b;
img_u = -0.14713 * img_r - 0.28886*img_g + 0.436 * img_b;
img_v = 0.615 * img_r - 0.51499 * img_g - 0.10001 *img_b;

filtered_y = imfilter(img_y, filter);
filtered_u = imfilter(img_u, filter);

filtered_rc = filtered_y + 1.13983 * img_v;
filtered_gc = filtered_y - 0.39465 * filtered_u - 0.58060 * img_v;
filtered_bc = filtered_y + 2.03211 * filtered_u;

img(:, :) = [filtered_rc filtered_gc filtered_bc];

imshow(img)
title('Filter applied on Y and U')

end