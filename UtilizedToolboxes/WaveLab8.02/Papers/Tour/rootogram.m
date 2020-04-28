function [t,y] = rootogram(x,n)
% Rootogram -- compute rootogram of counts data
%  Usage
%    [t,y] = rootogram(x,n)
%  Inputs
%    x        sample of data, no need for dyadic length
%    n        number of bins, dyadic
%  Outputs
%    t        ordinate of rootogram
%    y        abscissa of rootogram
%
[t,y] = fasthist(x,n);
y = sqrt(y + .375);
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
