function sp = spectrum(x,n)
% spectrum -- Called by WLBrowser
%  Usage
%    sp = spectrum(x,n)
%
sp = abs(fft(x)).^2;
sp = sp(1:n);
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
