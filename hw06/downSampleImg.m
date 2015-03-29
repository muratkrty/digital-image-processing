function [downs_img ] = downSampleImg(img, factor)
% Author: Murat Kirtay, Robotics Laboratory
% Date: 28/03/2015
% Description: Down sample image by a given factor.
% Input/s: factor,
% Bugs: No known

downs_img = img(1: factor: end, 1: factor: end);

imshow(downs_img)

end

