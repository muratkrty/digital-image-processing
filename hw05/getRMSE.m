function [error_vec] = getRMSE(gray_img, lpfied_c, lpfied_s, lpfied_d)
% Author: Murat Kirtay, Robotics Laboratory
% Date: 21/03/2015
% Description: get root mean square error for each filtered image
% Input/s: gray_img, lpfied_c, lpfied_s, lpfied_d
% Bugs: No known

[n, m] = size(gray_img);
size_rc = (1/(n*m));
error_vec = [];

error_vec(1,1) = sqrt(size_rc * sum(sum((gray_img - lpfied_c).^2)))
error_vec(1,2) = sqrt(size_rc * sum(sum((gray_img - lpfied_s).^2)))
error_vec(1,3) = sqrt(size_rc * sum(sum((gray_img - lpfied_d).^2)))

end