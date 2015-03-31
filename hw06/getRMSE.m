function [error_vec] = getRMSE(gray_img, interpolated_img, interpolated_img2)
% Author: Murat Kirtay, Robotics Laboratory
% Date: 21/03/2015
% Description: get root mean square error for each filtered image
% Input/s: gray_img, lpfied_c, lpfied_s, lpfied_d
% Bugs: No known

[n, m] = size(gray_img);
size_rc = (1/(n*m));
error_vec = [];

% eliminate error
%Integers can only be combined with integers of the same class, or scalar doubles.
error_vec(1,1) =  sqrt((1/(m*n))*sum(sum((double(gray_img - interpolated_img2)).^2)))
%sqrt(size_rc * sum(sum(double(gray_img - interpolated_img).^2)))
error_vec(1,2) = sqrt((1/(m*n))*sum(sum((double(gray_img - interpolated_img2).^2))))
%sqrt(size_rc * sum(sum(double(gray_img - interpolated_img2).^2)))

%error_vec(1,1) = sqrt((1/(m*n))*sum(sum((double(gray_img - lpfied_c)).^2)))
%error_vec(1,2) = sqrt((1/(m*n))*sum(sum((double(gray_img - lpfied_s).^2))))

end