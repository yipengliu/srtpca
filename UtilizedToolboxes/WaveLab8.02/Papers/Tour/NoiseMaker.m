function [x,y] = NoiseMaker(f,rho)
% NoiseMaker -- Add Noise to Signal
% Usage:
%   [x,y] = NoiseMaker(f,rho)
% Inputs:
%    f      True Underlying Signal, normalized
%    rho    Desired Signal-to-Noise ratio
% Outputs:
%    x      Scaled version of f
%    y      x + z, z i.i.d. N(0,1)
% Notes:
%    used to create artficial data with noise level 1
%    that shrinkage software expects
global MATLABVERSION
if MATLABVERSION == 3.5,
   sig = std(f(:));
   rand('normal')
   y = (rho/sig).* f + rand(size(f));
   x = (rho/sig).*f;
else
   sig = std(f(:));
   y = (rho/sig).* f + randn(size(f));
   x = (rho/sig).*f;
end
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
