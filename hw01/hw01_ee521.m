% Author: Murat Kirtay, Robotics Laboratory
% Date: 15/02/2015
% Description: EE 521 Assignment#1
%
% Assignment steps:
% 1- Select an arbitrary image.
% 2- Display the individual bit planes of the image.
% 3- Display the image obtained by combining Bit-8
%    and Bit-7 only.
% 4- Display the image obtained by combining Bits% 8,7,6, and 5 only.
% 5- Compare the original image with the images obtained in Steps 3 
%    and 4, and comment on the results.
%
% Bugs: OK. NO Known.

clear all;
clc;

bit_planes = [0:1:7];

% Step #1
original_image = imread('yoda.jpg');
grayscale_image = rgb2gray(original_image);
imwrite(grayscale_image, 'grayscale.jpg');
image = double(grayscale_image);

% Step #2
for i = bit_planes,
    img = getImgBitPlane(image, i);

    bitplanned_img = strcat(int2str(i),'.jpg');
    imwrite(img, bitplanned_img);
end


bit8 = getImgBitPlane(image, 7);
bit7 = getImgBitPlane(image, 6);
bit6 = getImgBitPlane(image, 5);
bit5 = getImgBitPlane(image, 4);

% Step #3
combined_img_78 = 2*( 2* bit8 + bit7);
imshow(combined_img_78)
img78 = strcat(int2str(78),'.jpg');
imwrite(combined_img_78, img78);

% Step #4
combined_img_5678 = 2*(2*(2*bit8+bit7)+bit6)+bit5;
imshow(combined_img_5678)
img5678 = strcat(int2str(5678),'.jpg')
imwrite(combined_img_5678, img5678)
