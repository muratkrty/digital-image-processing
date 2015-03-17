% Author: Murat Kirtay, Robotics Laboratory
% Date: 07/03/2015
% Description: EE 521 Assignment#2
%
% Assignment steps:
% 1- Pick an unsharp image.
% 2- Calculate and display an unsharp mask for the image.
%    You can use a 3x3 mean filter for this purpose.
% 3- Obtain and display the sharpened image.
% 4- Compare the original image with the image obtained in
%    Step 3 and comment on any improvements.
% 6- If using a color image, implement Steps 2 and 3 on all
%    three bands and then combine the sharpened bands.
%
% Bugs: OK. NO Known.


img = imread('darth.jpg');

img_gray = im2double(rgb2gray(img));
mean_filter = 1/9 * ones(3, 3);
blurred = imfilter(img_gray, mean_filter);
unsharped_mask = 2.*(img_gray-blurred);
unsharped_img = img_gray + unsharped_mask;
imshow(unsharped_img)
