% mefig205 -- Four Test Functions
%
% We illustrate here four test functions, Ramp,
% Cusp, noise, and HeaviSine, for demonstration
% of segmented average-interpolation.
%
	global n x
	global Ramp Cusp Noise HeaviSine
%
	clf;
	subplot(221); plot(x,Ramp);      title('2.5a Ramp')
	subplot(222); plot(x,Cusp);      title('2.5b Cusp')
	subplot(223); plot(x,Noise);     title('2.5c Noise')
	subplot(224); plot(x,HeaviSine); title('2.5d Heavisine')

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
    
