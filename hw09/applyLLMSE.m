function [filtered_img] = applyLLMSE(img, filter, variance)
% Author: Murat Kirtay, Robotics Laboratory
% Date: 11/05/2015
% Description: apply a given filter size to an image
% Input/s: filter, variance
% Output/s: filtered_img
% Bugs: No known



lmean = conv2(img, filter, 'same');
lvariance = conv2(img.^2, filter, 'same') - lmean.^2;

filtered_img = lmean + lvariance.*(img - lmean);

end