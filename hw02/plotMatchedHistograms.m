function [] = plotMatchedHistograms(img_dark, img_bright)
% Author: Murat Kirtay, Robotics Laboratory
% Date: 02/03/2015
% Description: Modify the dark image so that its histogram matches that
%              of the bright image. Display the modified image and its
%              histrogram.
% Input/s: img_dark, img_bright  raw images
% Bugs: No known.

total_bright_hist = sum(hist(img_bright, 256),2);
matched_hist = histeq(img_dark, total_bright_hist);

subplot(1,2,1)
imshow(matched_hist)
title('Matched histogram image')
grid on

subplot(1,2,2)
imhist(matched_hist)
title('Matched histogram')
grid on

end