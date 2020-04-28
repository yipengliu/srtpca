function [beta,alfa] = SAIDyadUp(afine,D,F,EF,t,j)
% SAIDyadUp -- SAI Dyad Up
%  Usage
%    [beta,alfa] = SAIDyadUp(afine,D,F,EF,t,j)
%

n = length(afine);
acoarse = (afine(1:2:(n-1)) + afine(2:2:n)) ./ 2;
ahat = SegRefine(acoarse,D,F,EF,t,j);
adif = afine - ahat;
alfa = sqrt(2) .* adif(2:2:n);
beta = sqrt(2) .* acoarse;
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
