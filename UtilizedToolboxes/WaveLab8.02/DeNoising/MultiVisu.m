function ws = MultiVisu(wc,L)
% MultiVisu -- Apply sqrt(2log(n)) Thresholding to Wavelet Coefficients
%  Usage
%    ws = MultiVisu(wc,L)
%  Inputs 
%    wc    Wavelet Transform of noisy sequence with N(0,1) noise
%    L     low-frequency cutoff for Wavelet Transform
%  Outputs 
%    ws    result of applying VisuThresh to each High Frequency
%          Dyadic Block
%
	[n,J] = dyadlength(wc);
	ws = wc;
	ws((2^(L)+1):n) = VisuThresh(wc((2^(L)+1):n)) ;

%
% Copyright (c) 1993-5.  Jonathan Buckheit, David Donoho and Iain Johnstone
%
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
