function [smooth,rough] = MedTriadDown(x)
% MedTriadDown -- Med Triad Down
%  Usage
%    [smooth,rough] = MedTriadDown(x)
%

n = length(x);
cx = reshape(x,3,n/3);
smooth = median(cx);
rough = cx - [ smooth ; smooth; smooth ];
rough = reshape(rough,1,n);
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
