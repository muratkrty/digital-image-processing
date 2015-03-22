function [filtered_img] = applySquareLPF(square_lpf, log_img)
% Author: Murat Kirtay, Robotics Laboratory
% Date: 21/03/2015
% Description: Apply square lpf and display image
% Input/s: square_lpf, log_img
% Bugs: No known

filtered_img = abs(ifft2(ifftshift(log_img .* square_lpf)));
%imshow(filtered_img)
end