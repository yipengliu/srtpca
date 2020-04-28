% mefig212 -- Segmented vs. Ordinary de-noising; object "Ramp"
%
% In this display we compare segmented de-noising of figure 2.11
% with traditional de-noising using periodized nearly-symmetric wavelets
% having 8 vanishing moments.
%
% De-noising in a non-segmented wavelet transform domain leads to
% serious Gibbs phenomena.  Such oscillation at discontinuities are
% avoided by de-noising with ideally-selected segmentation point.
%
	global x yRamp L SmoothRamp
	global Ramp % MRD 04/99
%
	qmf = MakeONFilter('Symmlet',8);
%
	wyRamp    = FWT_PO(yRamp,L,qmf);
	shRamp    = MultiVisu(wyRamp,L); 
	sbRamp    = IWT_PO(shRamp,L,qmf);
%
	clf;
	subplot(221)
	plot(x,sbRamp);  title('2.12a Ordinary DeNoise[yRamp] ')
%
	subplot(222)
	plot(x,SmoothRamp); title('2.12b Seg-DeNoise[yRamp]')
	sum((5*Ramp - SmoothRamp).^2)
	sum((5*Ramp - sbRamp).^2)
%
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
    
