function [img] = spimpalk_hw7_p6(f,p)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
A = imread(f);
A_doub = im2double(A);
for i=1:1:3
    rgb = A_doub(:,:,i);
    b = spimpalk_hw7_p5(rgb,p);
    img_double(:,:,i) = b;
end
img = uint8(img_double);
%imshow(img);
end

