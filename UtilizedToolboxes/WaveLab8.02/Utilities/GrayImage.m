function GrayImage(img,ngray)
% GrayImage -- Standard gray-scale image display
%  Usage
%    GrayImage(img,ngray)
%  Inputs
%    img      a 2-d image, n by n
%    ngray    optional. number of gray levels in colormap, default 255
%
%  Side Effects
%    A gray scale presentation of img
%
        if nargin < 2,
          ngray =255;
        end
%
%       clg;
        image(img);
        axis('image');
        colormap(gray(ngray));
    
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
