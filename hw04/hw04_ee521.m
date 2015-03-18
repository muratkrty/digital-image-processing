% Author: Murat Kirtay, Robotics Laboratory
% Date: 17/03/2015
% Description: EE 521 Assignment#4
%
% 1- Select an arbitrary color image.
% 2- Extract and display individual R, G, B bands.
% 3- Extract and display individual Y, U, V bands.
% 4- Keep Y band as is; low-pass filter each of U and V bands by a
%    factor of 4 in both horizontal and vertical directions, then combine
%    all three bands, and display the resulting color image.
% 5- Keep U band as is; low-pass filter each of Y and V bands by a
%    factor of 4 in both horizontal and vertical directions, then combine
%    all three bands, and display the resulting color image.
% 6- Keep V band as is; low-pass filter each of Y and V bands by a
%    factor of 4 in both horizontal and vertical directions, then combine
%    all three bands, and display the resulting color image.
% 7- Compare the images obtained in Steps 4, 5 and 6 and comment
%    on any differences.
%
% Bugs: OK. NO Known.

image = imread('starwars.jpg');

normalized_img = double(img)/255;

%plotRGBbands(normalized_img)
%plotYUVbands(normalized_img)
%plotLowPassedYband(normalized_img)
%plotLowPassedUband(normalized_img)
plotLowPassedVband(normalized_img)
