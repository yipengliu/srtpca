% aifig7 -- Noisy Differentiation
%
% Here we illustrate the use of wavelets for noisy differentiation.
% (Panel a) displays object Bumps, (panel b) its noisy cumulative, 
% and (Panel c) a naive inversion based on differencing. 
%
% The naive inversion is very noisy and displays only a hint of the 
% structure of the underlying function.
%
% We also display a wavelet-shrinkage reconstruction, in which noise is
% suppressed while the structure remains. 
%
% The wavelet-shrinkage reconstruction goes as follows
%
%       1.  Transform the naive reconstruction into the wavelet domain.
%       2.  Apply level-dependent thresholds which scale inversely with 
%           resolution.
%       3.  Return to the wavelet domain.
%
%  Coiflets with 3 vanishing moments are used.
%

	n = 2048;
	t = (.5:(n-.5)) ./ n;
	Bumps = MakeSignal('Bumps',n);
%
% Build Noisy Primitive
%
	zBumps = cumsum(Bumps);
	x      = zBumps + rand(size(zBumps));
%
%  Naive Reconstruction
%
	z = diff([0 x]);
%
% Wavelet Shrinkage
%
	QSymm6 = MakeONFilter('Symmlet',6);
	w      = FWT_PO(z, 5, QSymm6);
	ws     = InvShrink(w,5,4,1);
	zrec   = IWT_PO(ws,5,QSymm6);
%
% Display Results
%
	clf;
	subplot(221); plot(t,Bumps); title('7 (a) Object Bumps')
	subplot(222); plot(t,x);     title('7 (b) Noisy Primitive')
	subplot(223); plot(t,z);     title('7 (c) Naive Reconstruction via Differences')
	subplot(224); plot(t,zrec);  title('7 (d) Wavelet De-Noising Reconstruction')
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
