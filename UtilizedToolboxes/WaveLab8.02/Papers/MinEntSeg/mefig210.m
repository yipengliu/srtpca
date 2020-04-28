% mefig210 -- Compression numbers

	global swRamp awRamp
	global swCusp awCusp
	global swNoise awNoise
	global swHeavi awHeavi
	global L
%
	subplot(221)
	Compare2(swRamp,awRamp,L,'2.10a Ramp ')
	xlabel('n');ylabel('log(c_n)')
	subplot(222)
	Compare2(swCusp,awCusp,L,'2.10b Cusp ')
	xlabel('n');ylabel('log(c_n)')
	subplot(223)
	Compare2(swNoise,awNoise,L,'2.10c Noise ')
	xlabel('n');ylabel('log(c_n)')
	subplot(224)
	Compare2(swHeavi,awHeavi,L,'2.10d HeaviSine ')
	xlabel('n');ylabel('log(c_n)')

%  
% Prepared for the paper Minimum Entropy Segmentation 
% Copyright (c) 1994 David L. Donoho
%  
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
