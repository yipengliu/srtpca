% mefig206 -- Wavelet Transforms w/o segmentation
%
	global Ramp Cusp Noise HeaviSine
	global E2 F2
	global swRamp awRamp
	global swCusp awCusp
	global swNoise awNoise
	global swHeavi awHeavi
%
	subplot(221) 
	C=4;D=2;
	awRamp  = FWT_AI(Ramp ,C,D,F2,E2);
	PlotWaveCoeff(awRamp,C,10); title('2.6a WT(Ramp) ')
	xlabel('t'); ylabel('dyad');
%
	subplot(222)
	awCusp  = FWT_AI(Cusp ,C,D,F2,E2); 
	PlotWaveCoeff(awCusp,C,150); title('2.6b WT(Cusp) ')
	xlabel('t'); ylabel('dyad');
%
	subplot(223)
	awNoise = FWT_AI(Noise,C,D,F2,E2); 
	PlotWaveCoeff(awNoise,C,.2); title('2.6c WT(Noise) ')
	xlabel('t'); ylabel('dyad');
%
	subplot(224)
	awHeavi = FWT_AI(HeaviSine,C,D,F2,E2);  
	PlotWaveCoeff(awHeavi,C,3); title('2.6d WT(HeaviSine)')
	xlabel('t'); ylabel('dyad');

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
    
