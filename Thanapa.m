%% Automatic acne detection for Medical Treatment

% This stript performs the algorthim proposal presented on Thanapa2015 article
% for detecting acne. 

% Author: Msc David Castro Piñol
clc; clear all; close all;
%% Parameters user defined
% This section presents the parameters used in this method.

BTh = 0.75;
AreaMin = 30; % pixels areas to be removed, in the article says 20, I prefered 30
AreaMax = 6000; % huge areas will be removed also

% Reading the image example
im = imread('acne-face-1-10.jpg');
imshow(im); title('Original Image');

%% RGB to grayscale conversion

imG = rgb2gray(im);
figure; imshow(imG); title('RGB to grayscale');

%% Normalization

Maxim = max(imG(:));
Minim = min(imG(:));

imN = double(imG - Minim) ./ double(Maxim - Minim);
figure; imshow(imN,[]);title('Normalization');

%% Convert to HSV

imHsv = rgb2hsv(im);
V = imHsv(:,:,3); % brightness plane
V = double(V - min(V(:))) ./ double(max(V(:)) - min(V(:)));
figure; imshow(V,[]); title('Brightness V plane');

%% Subtraction for ROI

imGoff = (V - imN); 
imGoff = imadjust(imGoff);
figure; imshow(imGoff,[]); title('Subtraction Image Normalized');

%% Binary Threshold
% Converting the image into a logical image based on the binary threshold

imB = imGoff>BTh;
figure; imshow(imB);title('Binary image');

%% Spot and Region Removal

% Removing minum and maximum areas around the image. Use the morphological
% concept of convex component CC

imB = bwareaopen(imB,AreaMin);
CC = bwconncomp(imB); 
S = regionprops(CC);
L = labelmatrix(CC);
BW2 = ismember(L, find([S.Area] < AreaMax));
figure; imshow(BW2); title('Spot and Region Removal');

%% Final detection

% This section draw the Bounding Boxes over the acne lesions
CC = bwconncomp(BW2); 
S = regionprops(CC);

figure; imshow(im); hold on;
for i=1:CC.NumObjects
    rectangle('Position',S(i).BoundingBox,'EdgeColor','b',...
    'LineWidth',1);
end
%% Severity result

% In this section the amount of inflamatory acne lesions is counted and
% then the severity grade is shown. This computation is done by the first
% aproach of severity that only takes into account the quantity of acne
% lesions

print = strcat(num2str(CC.NumObjects),severity(CC.NumObjects));
disp(print);
title(['Severity is: ', severity(CC.NumObjects)]);

%% Conclusions

% This simple method was obtained from the article Automatic Acne Detection
% for Medical Treatment Thanapa2015. The method is original from the one
% presented on the paper just with few modifications in BTh and Areas.
% The main drawback is the binary threshold Bth that could change depending
% on image features. However, it was set to 0.75 after performing a  
% normalization operation with imadjust function. Personally, I think this
% way is better than the one presented on the paper. Owing to these cons, 
% I recommend to supervise the image scale on the selfie photograph using 
% a mask to localize the face and fix all parameters based on these
% images, if this algorithm would be taken. In order to clasify the nodules
% and cyst I suggest to calibrate the images and have a pixel measure
% equals to 5mm in real distance.





