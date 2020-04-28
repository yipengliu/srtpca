function sp = wl_spectrum(x,n)
% wl_spectrum -- Called by WLBrowser
%  Usage
%    sp = wl_spectrum(x,n)
% Inputs
%    x    time series
%    n    length of time series
% Outputs
%    sp    power spectrum of input data
%
% Description
%    Computes and returns power spectrum in conventional way.
%
sp = abs(fft(x)).^2;
sp = sp(1:n);
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
