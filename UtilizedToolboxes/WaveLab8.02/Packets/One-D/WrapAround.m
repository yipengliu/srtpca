function indnew = WrapAround(ind, n)
% WrapAround -- Circular map onto 1:n
%  Usage
%    indnew = WrapAround(ind, n)
%  Inputs
%    ind     vector to wrap
%    n       length of wrap
%
%  Description
%    indnew = (ind <= n) .* ind + (ind > n) .* (ind - n);
%
indnew = (ind <= n) .* ind + (ind > n) .* (ind - n);
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
