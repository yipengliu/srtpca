function urisk = opttrunc(y)
% opttrunc -- Perform Truncation
%  Usage
%    urisk = opttrunc(y)
%

tails = reverse(cumsum(reverse(abs(y).^2)));
n = length(y);
penalty = (-n):2:(n-2);
urisk = tails + penalty;
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
