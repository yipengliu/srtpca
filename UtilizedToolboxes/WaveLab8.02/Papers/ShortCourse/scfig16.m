% scfig16 -- Short Course 16: Noisy Differentiation by WVD in Wavelet Domain
%
% Here the procedure of Figure 16 is displayed in the Wavelet domain.
%
% The noise in the naive inversion grows rapidly in size 
% as we move to finer resolutions.
%
global w wb ws
%
	clf;
	subplot(221); PlotWaveCoeff(wb,5,0.); title('16 (a) WT[ Object ]')
	subplot(222); PlotWaveCoeff(w,5,0.); title('16 (b) WT[ Naive Recon. ]')
	subplot(223); PlotWaveCoeff(ws,5,0.); title('16 (c) WT[ WVD Reconstruction ]')
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
