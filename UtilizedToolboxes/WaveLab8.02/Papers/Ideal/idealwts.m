function wt = idealwts(x,sa)
% IdealWts -- Ideal weights for Diagonal Linear Estimates
% Usage:
%    wt = idealwts(x,sa)
% Inputs:
%    x      True Object
%    sa     Noise Std. Dev.
% Outputs:
%    wt      x.^2 ./(x.^2 + sa.^2)
wt = (x.^2)./(x.^2 + sa.^2);
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
