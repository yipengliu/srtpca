function [n,J] = triadLength(x)
% triadLength -- Return length of triad
%  Usage
%    [n,J] = triadLength(x)
%
n = length(x);
m=1; J=0; while (m < n), m=3*m; J=J+1; end;
if m ~= n,
   fprintf('Warning n ~= 3^J\n')
end
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
