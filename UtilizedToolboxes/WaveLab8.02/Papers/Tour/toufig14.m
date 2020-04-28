% toufig14 -- Tour Figure 14: Depict Deconvolution in Wavelet Domain
%
% The Figure depicts the wavelet deconvolution of Figure 2 in the 
% wavelet domain.
%
% Again, the noise is very large at high resolution. The resolution-
% dependent thresholds increase with the reciprocal of resolution 
% in an appropriate way,
%
global w wb ws
clf;
%
	subplot(221); 
	WaveCoeffLim(wb,0.,5,-.5,1.5); title('14 (a) WT[Object]')
%
	subplot(222); 
	WaveCoeffLim(w ,0.,5,-.5,1.5); title('14 (b) WT[Naive Reconstruction]')
%
	subplot(223); 
	WaveCoeffLim(ws,0.,5,-.5,1.5); title('14 (c) WT[ WVD Reconstruction ]')
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
