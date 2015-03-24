function [log_img] = getLogDomainImg(img)
% Author: Murat Kirtay, Robotics Laboratory
% Date: 021/03/2015
% Description: Get fourier transform in logarithm domain image
% Input/s: img, normalized grayscale image
% Bugs: No known

% apply discrete fourier transform 
disc_ftransform = fft2(img);

% Shift zero-frequency component to center of spectrum.
log_img = fftshift(disc_ftransform);

%imshow(log(1 + abs(log_img)))

end