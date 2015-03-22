function [filtered_img] = applyCircularLPF(circular_lpf, log_img)
% Author: Murat Kirtay, Robotics Laboratory
% Date: 21/03/2015
% Description: Apply circular lpf and display image
% Input/s: circular_lpf
% Bugs: No known

filtered_img = abs(ifft2(ifftshift(log_img .* circular_lpf)));
%imshow(filtered_img)

end