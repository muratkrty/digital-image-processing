function [img_bitplane] = getImgBitPlane(image, bit_plane)
% Author: Murat Kirtay, Robotics Laboratory
% Date: 15/02/2015
% Description: Get bit plane of an image
% Input/s: image, a raw image
%          bit_plane, a specific bit plane 0,1,...,7
% Bugs: No known.

img_bitplane = mod(floor(image/power(2, bit_plane)), 2);

end