function ws = MultiHybrid(wc,L)
% MultiHybrid -- Apply Shrinkage to Wavelet Coefficients
%  Usage 
%    ws = MultiHybrid(wc,L)
%  Inputs 
%    wc    Wavelet Transform of noisy sequence with N(0,1) noise
%    L     low-frequency cutoff for Wavelet Transform
%  Outputs 
%    ws    result of applying HybridThresh to each dyadic block
%
	[n,J] = dyadlength(wc);
	for j=(J-1):-1:L
	wc(dyad(j)) = HybridThresh(wc(dyad(j))) ;
	end
	ws = wc;

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
    
