% Author: Murat Kirtay, Robotics Laboratory
% Date: 02/03/2015
% Description: EE 521 Assignment#2
%
% Assignment steps:
% 1- Pick two images, one with low and the other with high
%    exposure (i.e., a dark and a bright image).
% 2- Calculate and display the histogram of each image.
% 3- Apply histogram equalization to each image and display
%    the resulting images and their histograms.
% 4- Modify the dark image so that its histogram matches that
%    of the bright image. Display the modified image and its
%    histrogram.
% 5- Comment on the results.
% Bugs: OK. NO Known.

clear all;
clc;

img_dark = imread('darth.jpg');
img_bright = imread('luke.jpg');

img_dark_gray = im2double(rgb2gray(img_dark));
img_bright_gray = im2double(rgb2gray(img_bright));

plotHistograms(img_dark_gray, img_bright_gray);
plotEqualizedHistogramImages(img_dark_gray, img_bright_gray);
plotEqualizedHistograms(img_dark_gray, img_bright_gray);
plotMatchedHistograms(img_dark_gray, img_bright_gray);