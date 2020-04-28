function [t,g] = LogoGram(ser)
% LogoGram -- Time Series Spectrum Estimation
%  Usage
%    [t,g] = LogoGram(ser)
%  Inputs
%    ser      zero-mean time series, dyadic length
%  Outputs
%    t        ordinate of logogram
%    g        abscissa of logogram
%
n = length(ser);
Ij = abs(fft(ser)).^2 ./ ( n);
Yj = log(Ij) + .57721;
Yj(1) = Yj(1) - .57721 + (log(2) + .57721)/pi ;
Yj(n/2+1) = Yj(n/2+1) - .57721 + (log(2) + .57721)/pi ;
g = Yj .* sqrt(6)/pi;
t = 2 * pi * (0: (n-1)) ./ n;

    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
