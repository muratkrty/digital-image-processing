function [filter_mat] = getLPFdiamond(n, m)
% Author: Murat Kirtay, Robotics Laboratory
% Date: 21/03/2015
% Description: get diamond low pass filter
% Input/s: n, size(img,1)
%          m, size(img,2)
% Bugs: No known

filter_mat = zeros(n, m);

% desired diameter is n/4
pow_rad = (n/8)^2;

sup = round(sqrt(pi * pow_rad)); 

% get diamond morphological structure
diamond_morph = strel('diamond', round(sup/sqrt(2)));
conv_dia = double(diamond_morph.getnhood)
diamond_size = size(conv_dia, 1) - 1;

n_sup = (n-diamond_size)/2;
m_sup = (m-diamond_size)/2;

filter_mat(n_sup : n_sup + diamond_size, m_sup : m_sup + diamond_size) = conv_dia;

%imshow(filter_mat)
end