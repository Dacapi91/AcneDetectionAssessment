%% Development and evaluation of an automatic acne lesion detection program using digital image processing

% This stript performs the algorthim proposal presented on min2012 article
% for detecting acne. This code only performs the inflamatory acne lesion
% detections.

% Author: Msc David Castro Piñol
clc; clear; close all;

%% Parameters
% These parameters were not declared on the article. I set them based on
% some experiments I made. The article lacks from parameters values

AreaMin = 30; %minimun area to considered an acne(not taken from the paper)
% According to the article must be deleted areas less than 5mm, but it is not posible to determine in
% this images due to scale problems and calibration on our images.
binaryThreshold = 85; %85
DiskAverageSize = 4;% disk average filtering radius

%% Starting

im = imread('acne-face-1-10.jpg');
imshow(im); title('Original Image');

%% Performing a channel with a major influence of RED color

HR = abs(im(:,:,1)-im(:,:,3)) + abs(im(:,:,1)-im(:,:,2));

%% Disk average filtering
% Filtering with a disk average, this operation should be performed in
% order to smooth some minor details of the image.

h = fspecial('disk',DiskAverageSize);
blurred = imfilter(HR,h);
figure; imshow(blurred);title('Image filtered by Disk average');

%% Binarization 
% This section converts the image in a binary type for highlighting the
% regions of interest

BW = blurred > binaryThreshold;

%% Deleting small areas
% Removing small objects that cannot be acne.

BW = bwareaopen(BW,AreaMin);
figure; imshow(BW); title('Binary image');
%% Acne segmentation, drawing rectangle
% Preparing final results

maskedImage = im;
maskedImage(~BW) = 0;
figure; imshow(maskedImage);title('Acne detected');
CC = bwconncomp(BW);
stats = regionprops(CC,'BoundingBox');
figure; imshow(im); hold on;
for i=1:CC.NumObjects
    rectangle('Position',stats(i).BoundingBox,'EdgeColor','b',...
    'LineWidth',1);
end

%% Severity analysis

% In this section the amount of inflamatory acne lesions is counted and
% then the severity grade is shown. This computation is done by the first
% aproach of severity that only takes into account the quantity of acne
% lesions

print = strcat(num2str(CC.NumObjects),severity(CC.NumObjects));
disp(print);
title(['Severity is: ', severity(CC.NumObjects)]);

%%
% *Advantages*
 % Simple implementation and adaptation to other languages. Fast computation

%%
% *Drawbacks*
 % In the paper is not presented the value of parameters, I had to estimate
 % based on some minor experiments. 
 % The method is based on the red colour component for detecting
 % inflamatory acne. This could lead to some false positives when a person
 % has a face skin with high red components. 
 % The method depends too much on the binaryThreshold and this is not the
 % same for others images.
 % The article performs the method for images they took from their designed
 % enviroment(distance, light conditions etc) and camera.
 
 %% Conclusions 
 % I would recommend the method if only is calibrated with selfie images
 % from mobile photogragh with a constant distance. Nevertheless, the
 % method is not well-explained and there are bugs related to parameters
 % setting. The results on the example image are not siutable for the application
 
 

