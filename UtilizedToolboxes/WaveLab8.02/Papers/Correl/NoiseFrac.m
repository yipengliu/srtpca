function [x,y,zz] = NoiseFrac(f,rho,alpha)

sig = std(f);
x = (rho/sig).*f;

zz = fbm(alpha,length(f));
zz = zz ./ std(zz);

y = x + zz;

    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
