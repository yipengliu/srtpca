function s = AutoTrunc(y,sig)
% AutoTrunc -- Perform Truncation
%  Usage
%    s = AutoTrunc(y,sig)
%
v = fft(y) ./ sqrt(length(y));
n = length(y);
hv = v(1:(n/2));
sv = steintrunc(hv,sig);
vv = [sv 0 conj(sv((n/2):-1:2))];
s = sqrt(length(y)) .* real(ifft(vv));
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
