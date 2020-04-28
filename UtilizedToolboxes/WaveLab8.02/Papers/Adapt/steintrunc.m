function x = steintrunc(y,sig)
% steintrunc -- Perform Truncation
%  Usage
%    x = steintrunc(y,sig)
%

u = opttrunc(y ./sig);
t = min(u);
indmin = find(u==t);
x = y .* ((1:length(y)) <= indmin);
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
