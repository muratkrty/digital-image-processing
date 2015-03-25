function [filter_mat] = getLPFsquare(n, m)
% Author: Murat Kirtay, Robotics Laboratory
% Date: 21/03/2015
% Description: get square low pass filter
% Input/s: n, size(img,1)
%          m, size(img,2)
% Bugs: No known

filter_mat = zeros(n, m);

% desired diameter is n/4
pow_rad = (n/8)^2;

sup = round(sqrt(pi * pow_rad)); 
n_sup = (n-sup)/2;
m_sup = (m-sup)/2;

filter_mat(n_sup : n_sup + sup, m_sup : m_sup + sup) = 1

%imshow(filter_mat)
end