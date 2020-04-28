function Noisyim = GWNoisy2(im,sigma)
%  GWNoisy2- Addition of a 2D Gaussian White Noise
%  Usage
%    Noisyim = GWNoisy2(im,sigma)
%  Inputs
%    im        Input simage
%    sigma   s.d for additive GWN
%  Outputs
%    Noisyim    Noisy image
%

n=length(im);
Noise=GWN2(n,sigma);
Noisyim=im+Noise;

% Written by Maureen Clerc and Jerome Kalifa, 1997
% clerc@cmapx.polytechnique.fr, kalifa@cmapx.polytechnique.fr
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
