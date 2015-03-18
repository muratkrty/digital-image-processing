function [] = plotYUVbands(img)
% Author: Murat Kirtay, Robotics Laboratory
% Date: 17/03/2015
% Description: plot rgb band of color image
% Input/s: img, color image
% Bugs: No known.

img_r = img(:, :, 1); % r band 
img_g = img(:, :, 2); % g band
img_b = img(:, :, 3); % b band

% matrix multiplication can be used as well
img_y = 0.299 * img_r + 0.587 * img_g + 0.114 * img_b;
img_u = -0.14713 * img_r - 0.28886*img_g + 0.436 * img_b;
img_v = 0.615 * img_r - 0.51499 * img_g - 0.10001 *img_b;

subplot(3, 1, 1)
imshow(img_y)
title('Y band')

subplot(3, 1, 2)
imshow(img_u)
title('U band')

subplot(3, 1, 3)
imshow(img_v)
title('V band')

end