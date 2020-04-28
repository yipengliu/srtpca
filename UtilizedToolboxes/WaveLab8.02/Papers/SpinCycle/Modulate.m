function y=Modulate(x,freq)
y = x .* exp(sqrt(-1).*freq.*(0:(length(x)-1)));
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
