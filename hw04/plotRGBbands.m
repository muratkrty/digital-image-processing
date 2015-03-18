function [] = plotRGBbands(img)
% Author: Murat Kirtay, Robotics Laboratory
% Date: 17/03/2015
% Description: plot rgb band of color image
% Input/s: img, color image
% Bugs: No known.

img_r = img(:, :, 1); % r band 
img_g = img(:, :, 2); % g band
img_b = img(:, :, 3); % b band

subplot(3, 1, 1)
imshow(img_r)
title('R band')

subplot(3, 1, 2)
imshow(img_b)
title('G band')

subplot(3, 1, 3)
imshow(img_g)
title('B band')

end