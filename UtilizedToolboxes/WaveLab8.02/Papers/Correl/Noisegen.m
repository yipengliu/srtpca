function [x,y,zar] = Noisegen(f,rho,aa)

sig = std(f);
x = (rho/sig).*f;

z = randn( size(f) );

%aa = [ 1 .8 .8];
zar = filter(1, aa, z);

zar = zar/std(zar);

y = x + zar;
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
