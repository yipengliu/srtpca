function x = MedTriadUp(smooth,rough)
% MedTriadUp -- Med Triad Up
%  Usage
%    MedTriadUp(smooth,rough)
%

n = length(rough);
cx = reshape(rough,3,n/3);
x = cx + [ smooth ; smooth; smooth ];
x = reshape(x,1,n);
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
