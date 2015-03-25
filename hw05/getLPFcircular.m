function [filter_mat] = getLPFcircular(n, m)
% Author: Murat Kirtay, Robotics Laboratory
% Date: 21/03/2015
% Description: get circular low pass filter
% Input/s: n, size(img,1)
%          m, size(img,2)
% Bugs: No known

filter_mat = zeros(n, m);

% set coords. radius
rx_vec = linspace(-m/2, m/2, m);
ry_vec = linspace(-n/2, n/2, n);

% obtain rectangular grid
[x_grid, y_grid] = meshgrid(rx_vec, ry_vec);

% desired diameter is n/4
pow_rad = n/8;

filter_mat(x_grid.^2 + y_grid.^2 < pow_rad^2) = 1;
%imshow(filter_mat);

end